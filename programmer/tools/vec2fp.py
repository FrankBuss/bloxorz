#!/usr/bin/env python3
"""Convert vector artwork (PDF / AI / SVG) into a KiCad footprint - from the command line.

KiCad's own bitmap2component is GUI-only and traces a *bitmap*, so its output is
only as good as the raster you feed it. This goes straight from the vector
source, so the outline is exact at any size.

    ./vec2fp.py "~/data/bilder/logo/frank_buss.ai" out.kicad_mod \
        --name frank-buss-logo --width 19.7 --layer F.SilkS

Holes (the counters in A, R, B, the inside of the mark) are handled by splicing
each interior ring into the outer ring along a zero-width bridge, because a
KiCad fp_poly is a single closed outline with no hole support. That is the same
trick bitmap2component uses internally, and the bridge is invisible when filled.
"""

import argparse
import math
import os
import re
import subprocess
import sys
import tempfile
import uuid
import xml.etree.ElementTree as ET

from shapely.geometry import Polygon
from shapely.ops import unary_union

SVG_NS = "{http://www.w3.org/2000/svg}"


# ---------------------------------------------------------------- path parsing

def tokenize(d):
    return re.findall(r"[MmZzLlHhVvCcSsQqTtAa]|[-+]?[0-9]*\.?[0-9]+(?:[eE][-+]?[0-9]+)?", d)


def flatten_cubic(p0, p1, p2, p3, tol):
    """Adaptive subdivision until the control points are within `tol` of the chord."""
    def flat(a, b, c, d):
        ux, uy = 3 * b[0] - 2 * a[0] - d[0], 3 * b[1] - 2 * a[1] - d[1]
        vx, vy = 3 * c[0] - 2 * d[0] - a[0], 3 * c[1] - 2 * d[1] - a[1]
        return max(ux * ux, vx * vx) + max(uy * uy, vy * vy) < 16 * tol * tol

    out = []

    def rec(a, b, c, d, depth):
        if depth > 18 or flat(a, b, c, d):
            out.append(d)
            return
        ab = ((a[0] + b[0]) / 2, (a[1] + b[1]) / 2)
        bc = ((b[0] + c[0]) / 2, (b[1] + c[1]) / 2)
        cd = ((c[0] + d[0]) / 2, (c[1] + d[1]) / 2)
        abc = ((ab[0] + bc[0]) / 2, (ab[1] + bc[1]) / 2)
        bcd = ((bc[0] + cd[0]) / 2, (bc[1] + cd[1]) / 2)
        m = ((abc[0] + bcd[0]) / 2, (abc[1] + bcd[1]) / 2)
        rec(a, ab, abc, m, depth + 1)
        rec(m, bcd, cd, d, depth + 1)

    rec(p0, p1, p2, p3, 0)
    return out


def parse_path(d, tol):
    """Return a list of subpaths, each a list of (x, y)."""
    t = tokenize(d)
    i = 0
    cur = (0.0, 0.0)
    start = (0.0, 0.0)
    sub = []
    subs = []
    cmd = None
    prev_c2 = None

    def num():
        nonlocal i
        v = float(t[i])
        i += 1
        return v

    while i < len(t):
        if re.match(r"[A-Za-z]", t[i]):
            cmd = t[i]
            i += 1
        rel = cmd.islower()
        c = cmd.upper()

        if c == "M":
            x, y = num(), num()
            cur = (cur[0] + x, cur[1] + y) if rel else (x, y)
            if sub:
                subs.append(sub)
            sub = [cur]
            start = cur
            cmd = "l" if rel else "L"       # subsequent pairs are implicit lineto
            prev_c2 = None
        elif c == "L":
            x, y = num(), num()
            cur = (cur[0] + x, cur[1] + y) if rel else (x, y)
            sub.append(cur)
            prev_c2 = None
        elif c == "H":
            x = num()
            cur = (cur[0] + x, cur[1]) if rel else (x, cur[1])
            sub.append(cur)
            prev_c2 = None
        elif c == "V":
            y = num()
            cur = (cur[0], cur[1] + y) if rel else (cur[0], y)
            sub.append(cur)
            prev_c2 = None
        elif c in "CS":
            if c == "C":
                x1, y1 = num(), num()
                c1 = (cur[0] + x1, cur[1] + y1) if rel else (x1, y1)
            else:
                c1 = (2 * cur[0] - prev_c2[0], 2 * cur[1] - prev_c2[1]) if prev_c2 else cur
            x2, y2 = num(), num()
            c2 = (cur[0] + x2, cur[1] + y2) if rel else (x2, y2)
            x, y = num(), num()
            end = (cur[0] + x, cur[1] + y) if rel else (x, y)
            sub.extend(flatten_cubic(cur, c1, c2, end, tol))
            prev_c2 = c2
            cur = end
        elif c in "QT":
            if c == "Q":
                x1, y1 = num(), num()
                q = (cur[0] + x1, cur[1] + y1) if rel else (x1, y1)
            else:
                q = (2 * cur[0] - prev_c2[0], 2 * cur[1] - prev_c2[1]) if prev_c2 else cur
            x, y = num(), num()
            end = (cur[0] + x, cur[1] + y) if rel else (x, y)
            c1 = (cur[0] + 2 / 3 * (q[0] - cur[0]), cur[1] + 2 / 3 * (q[1] - cur[1]))
            c2 = (end[0] + 2 / 3 * (q[0] - end[0]), end[1] + 2 / 3 * (q[1] - end[1]))
            sub.extend(flatten_cubic(cur, c1, c2, end, tol))
            prev_c2 = q
            cur = end
        elif c == "A":
            # Arcs are rare in exported logo artwork; approximate with a line so
            # the shape stays closed rather than silently dropping a segment.
            num(); num(); num(); num(); num()
            x, y = num(), num()
            cur = (cur[0] + x, cur[1] + y) if rel else (x, y)
            sub.append(cur)
            prev_c2 = None
        elif c == "Z":
            if sub:
                sub.append(start)
                subs.append(sub)
                sub = []
            cur = start
            prev_c2 = None
        else:
            i += 1

    if sub:
        subs.append(sub)
    return subs


# ------------------------------------------------------------------ transforms

def parse_transform(s):
    m = [1.0, 0.0, 0.0, 1.0, 0.0, 0.0]
    for name, args in re.findall(r"(\w+)\s*\(([^)]*)\)", s or ""):
        v = [float(x) for x in re.findall(r"[-+]?[0-9]*\.?[0-9]+(?:[eE][-+]?[0-9]+)?", args)]
        if name == "matrix" and len(v) == 6:
            n = v
        elif name == "translate":
            n = [1, 0, 0, 1, v[0], v[1] if len(v) > 1 else 0]
        elif name == "scale":
            n = [v[0], 0, 0, v[1] if len(v) > 1 else v[0], 0, 0]
        elif name == "rotate":
            a = math.radians(v[0])
            n = [math.cos(a), math.sin(a), -math.sin(a), math.cos(a), 0, 0]
        else:
            continue
        m = [
            m[0] * n[0] + m[2] * n[1], m[1] * n[0] + m[3] * n[1],
            m[0] * n[2] + m[2] * n[3], m[1] * n[2] + m[3] * n[3],
            m[0] * n[4] + m[2] * n[5] + m[4], m[1] * n[4] + m[3] * n[5] + m[5],
        ]
    return m


def apply(m, p):
    return (m[0] * p[0] + m[2] * p[1] + m[4], m[1] * p[0] + m[3] * p[1] + m[5])


def collect(elem, m, tol, out):
    """Gather filled shapes as (rings, fill_rule) - one entry per fill operation.

    Each SVG path is filled independently, with its own fill-rule. Real artwork
    mixes them: in this logo the mark is drawn `evenodd` while the lettering is
    `nonzero`. Pooling every ring together and applying one global rule cannot
    render both, so shapes are kept per path.
    """
    m = [*m]
    t = elem.get("transform")
    if t:
        n = parse_transform(t)
        m = [
            m[0] * n[0] + m[2] * n[1], m[1] * n[0] + m[3] * n[1],
            m[0] * n[2] + m[2] * n[3], m[1] * n[2] + m[3] * n[3],
            m[0] * n[4] + m[2] * n[5] + m[4], m[1] * n[4] + m[3] * n[5] + m[5],
        ]
    tag = elem.tag.replace(SVG_NS, "")
    style = (elem.get("style") or "") + ";fill:" + (elem.get("fill") or "")
    flat = style.replace(" ", "")
    rule = "evenodd" if "fill-rule:evenodd" in flat else "nonzero"

    rings = []
    if tag == "path" and "fill:none" not in flat:
        for sub in parse_path(elem.get("d", ""), tol):
            if len(sub) >= 3:
                rings.append([apply(m, p) for p in sub])
    elif tag == "rect":
        x, y = float(elem.get("x", 0)), float(elem.get("y", 0))
        w, h = float(elem.get("width", 0)), float(elem.get("height", 0))
        if w and h:
            rings.append([apply(m, p) for p in
                          [(x, y), (x + w, y), (x + w, y + h), (x, y + h), (x, y)]])
    elif tag in ("polygon", "polyline"):
        v = [float(z) for z in re.findall(r"[-+]?[0-9]*\.?[0-9]+", elem.get("points", ""))]
        pts = list(zip(v[0::2], v[1::2]))
        if len(pts) >= 3:
            rings.append([apply(m, p) for p in pts])
    if rings:
        out.append((rings, rule))

    for child in elem:
        collect(child, m, tol, out)


# --------------------------------------------------------------------- shaping

def rings_to_polygons(rings, rule="nonzero"):
    """Turn raw rings into filled geometry.

    Illustrator-style artwork uses the **nonzero** winding rule and draws
    counters (the hole in an A, the cut-outs in the mark) wound opposite to
    their parent, so orientation tells us what is a hole. Classifying by
    nesting depth instead - the even-odd rule - deletes every letter that has
    a counter when the artwork also contains a large enclosing shape.
    """
    from shapely.geometry import LinearRing

    solid, holes = [], []
    for r in rings:
        try:
            lr = LinearRing(r)
            poly = Polygon(r)
            if not poly.is_valid:
                poly = poly.buffer(0)
            if poly.is_empty or poly.area <= 0:
                continue
            (solid if lr.is_ccw else holes).append(poly)
        except Exception:
            continue

    if rule == "evenodd":
        polys = solid + holes
        depth = []
        for i, pi in enumerate(polys):
            c = pi.representative_point()
            depth.append(sum(1 for j, pj in enumerate(polys) if i != j and pj.contains(c)))
        solid = [polys[i] for i in range(len(polys)) if depth[i] % 2 == 0]
        holes = [polys[i] for i in range(len(polys)) if depth[i] % 2 == 1]

    if not solid:
        return None
    shape = unary_union(solid)
    if holes:
        shape = shape.difference(unary_union(holes))
    return shape


def keyhole(exterior, interiors):
    """Splice each hole into the outer ring along a zero-width bridge."""
    ring = list(exterior)
    for hole in interiors:
        h = list(hole)
        if h[0] == h[-1]:
            h = h[:-1]
        best = None
        for i, a in enumerate(ring):
            for j, b in enumerate(h):
                d = (a[0] - b[0]) ** 2 + (a[1] - b[1]) ** 2
                if best is None or d < best[0]:
                    best = (d, i, j)
        _, i, j = best
        bridge = h[j:] + h[:j] + [h[j]]
        ring = ring[: i + 1] + bridge + ring[i:]
    return ring


# ---------------------------------------------------------------------- output

def emit(polys, name, layer, width_mm):
    xs = [p[0] for poly in polys for p in poly]
    ys = [p[1] for poly in polys for p in poly]
    w = max(xs) - min(xs)
    h = max(ys) - min(ys)
    s = width_mm / w
    cx, cy = (max(xs) + min(xs)) / 2, (max(ys) + min(ys)) / 2

    body = ""
    for poly in polys:
        pts = "\n".join("      (xy %.5f %.5f)" % ((x - cx) * s, (y - cy) * s) for x, y in poly)
        body += (
            "  (fp_poly\n    (pts\n%s\n    )\n"
            '    (stroke (width 0.000000) (type solid)) (fill solid) (layer "%s") (uuid %s))\n'
            % (pts, layer, uuid.uuid4())
        )

    return (
        '(footprint "%s" (version 20221018) (generator "vec2fp.py") (generator_version "9.0")\n'
        '  (layer "%s")\n'
        "  (attr exclude_from_pos_files exclude_from_bom)\n"
        '  (fp_text reference "G***" (at 0 %.3f) (layer "%s") hide\n'
        "      (effects (font (size 1 1) (thickness 0.15)))\n"
        "    (uuid %s)\n  )\n"
        '  (fp_text value "%s" (at 0 %.3f) (layer "F.Fab") hide\n'
        "      (effects (font (size 1 1) (thickness 0.15)))\n"
        "    (uuid %s)\n  )\n"
        "%s)\n"
        % (name, layer, -(h * s / 2 + 1.5), layer, uuid.uuid4(),
           name, h * s / 2 + 1.5, uuid.uuid4(), body)
    ), w * s, h * s


def to_svg(src):
    """PDF/AI -> SVG. .ai from Illustrator is a PDF, so pdftocairo handles it."""
    if src.lower().endswith(".svg"):
        return src, None
    tmp = tempfile.NamedTemporaryFile(suffix=".svg", delete=False)
    tmp.close()
    try:
        subprocess.run(["pdftocairo", "-svg", src, tmp.name], check=True,
                       capture_output=True)
    except (subprocess.CalledProcessError, FileNotFoundError):
        subprocess.run(["inkscape", src, "--export-type=svg", "--export-plain-svg",
                        "--export-filename=" + tmp.name], check=True, capture_output=True)
    return tmp.name, tmp.name


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("source", help="PDF, AI or SVG")
    ap.add_argument("output", help="destination .kicad_mod")
    ap.add_argument("--name", default=None, help="footprint name (default: file stem)")
    ap.add_argument("--width", type=float, default=20.0, help="target width in mm")
    ap.add_argument("--layer", default="F.SilkS")
    ap.add_argument("--rule", choices=("auto", "nonzero", "evenodd"), default="auto",
                    help="fill rule; auto honours each path's own fill-rule")
    ap.add_argument("--tol", type=float, default=0.02,
                    help="curve flattening tolerance in source units")
    args = ap.parse_args()

    src = os.path.expanduser(args.source)
    name = args.name or os.path.splitext(os.path.basename(args.output))[0]

    svg, tmp = to_svg(src)
    try:
        root = ET.parse(svg).getroot()
        shapes = []
        collect(root, [1, 0, 0, 1, 0, 0], args.tol, shapes)
    finally:
        if tmp:
            os.unlink(tmp)

    if not shapes:
        sys.exit("no filled paths found in " + src)

    built = []
    for rings, rule in shapes:
        g = rings_to_polygons(rings, rule if args.rule == "auto" else args.rule)
        if g is not None and not g.is_empty:
            built.append(g)
    if not built:
        sys.exit("nothing to draw after combining paths")
    shape = unary_union(built)

    parts = list(shape.geoms) if shape.geom_type == "MultiPolygon" else [shape]
    polys = []
    for p in parts:
        ext = list(p.exterior.coords)
        ints = [list(r.coords) for r in p.interiors]
        polys.append(keyhole(ext, ints) if ints else ext)

    text, w, h = emit(polys, name, args.layer, args.width)
    open(args.output, "w").write(text)
    pts = sum(len(p) for p in polys)
    print("%s: %d polygons, %d points, %.2f x %.2f mm, layer %s"
          % (args.output, len(polys), pts, w, h, args.layer))


if __name__ == "__main__":
    main()
