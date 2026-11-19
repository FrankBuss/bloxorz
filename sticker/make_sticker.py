# generates the Bloxorz sticker: the logo of logo.svg (the orange logo with the black outline
# from Bloxorz-New.pdf) on the left, "No." and a box for the serial number on the right
#
# output: sticker.svg for viewing and editing, and sticker.pdf for printing, a PDF/X-3 with
# CMYK colors (orange 0/60/100/0, black 0/0/0/100) and the output intent FOGRA39
#
# usage: python3 make_sticker.py
# needs: fontTools, shapely, reportlab, Ghostscript, the FOGRA39 profile (Debian: texlive-latex-extra)
import os
import re
import subprocess
import tempfile
import xml.etree.ElementTree as ET
from fontTools.ttLib import TTFont
from fontTools.pens.basePen import BasePen
from fontTools.pens.boundsPen import BoundsPen
from fontTools.pens.transformPen import TransformPen
from reportlab.lib.colors import CMYKColor
from reportlab.lib.units import mm
from reportlab.pdfgen import canvas
from reportlab.pdfgen.canvas import FILL_EVEN_ODD
from shapely.geometry import Polygon
from shapely.ops import unary_union

W, H = 65.0, 12.0      # sticker size in mm
MARGIN = 1.2           # margin in mm, left of the logo, and top, bottom and right of the box
BOX_W = 14.0           # box for the serial number
LINE = 0.4             # line width of the box
NO_GAP_LEFT = 1.6      # logo to "No."
NO_GAP_RIGHT = 1.0     # "No." to box
NO_CAP = 3.4           # cap height of "No."
FONT = '/usr/share/fonts/opentype/inter/Inter-Bold.otf'
ICC = '/usr/share/texlive/texmf-dist/tex/generic/colorprofiles/FOGRA39L_coated.icc'
DIR = os.path.dirname(os.path.abspath(__file__))
LOGO = os.path.join(DIR, 'logo.svg')
LOGO_BASELINE = 502.91  # bottom of the orange letters in logo.svg coordinates
SEAM = 1.5              # gaps in the black outline up to twice this size are closed, in logo units

# colors as CMYK, and as RGB for the SVG
ORANGE = ((0, 0.6, 1, 0), '#ff6600')
BLACK = ((0, 0, 0, 1), '#000000')

def fmt(v):
    s = '%.3f' % v
    return s.rstrip('0').rstrip('.') if '.' in s else s

# The black parts of logo.svg are the outline strokes of the letters, plus black shapes in the
# holes. They are merged to one shape, because the original has hairline gaps between the
# outlines of neighbor letters, which would be visible in print. Then the orange letters on top.
NS = '{http://www.w3.org/2000/svg}'
root = ET.parse(LOGO).getroot()
lx, ly, lw, lh = (float(v) for v in root.get('viewBox').split())

def rings(a):
    m = [1, 0, 0, 1, 0, 0]
    if 'transform' in a:
        m = [float(v) for v in re.findall(r'-?\d+(?:\.\d+)?', a['transform'])]
    out = []
    for sub in re.split(r'M', a['d'])[1:]:
        nums = [float(v) for v in re.findall(r'-?\d+(?:\.\d+)?', sub)]
        pts = [(m[0] * x + m[2] * y + m[4], m[1] * x + m[3] * y + m[5])
               for x, y in zip(nums[0::2], nums[1::2])]
        if len(pts) >= 3:
            out.append(pts)
    return out, m[0]

def evenodd(rs):
    shape = Polygon()
    for r in rs:
        shape = shape.symmetric_difference(Polygon(r))
    return shape

black = []
orange = []
for el in root.iter(NS + 'path'):
    a = dict(el.attrib)
    rs, scale = rings(a)
    if a.get('stroke') == '#000000':
        half = float(a['stroke-width']) / 2 * scale
        join = 'round' if a.get('stroke-linejoin') == 'round' else 'mitre'
        black.append(evenodd(rs).buffer(half, join_style=join, mitre_limit=4))
    elif a.get('fill') == '#ff6600':
        orange.append(rs)
outline = unary_union(black).buffer(SEAM, join_style='mitre').buffer(-SEAM, join_style='mitre')
outline_rings = []
for p in (outline.geoms if hasattr(outline, 'geoms') else [outline]):
    outline_rings += [list(r.coords[:-1]) for r in [p.exterior, *p.interiors]]

# "No." from the font, in font units
font = TTFont(FONT)
gs = font.getGlyphSet()
cmap = font.getBestCmap()
no_scale = NO_CAP / font['OS/2'].sCapHeight
no_glyphs = []
adv = 0
for ch in 'No.':
    name = cmap[ord(ch)]
    no_glyphs.append((name, adv))
    adv += gs[name].width
bp = BoundsPen(gs)
for name, ax in no_glyphs:
    gs[name].draw(TransformPen(bp, (1, 0, 0, 1, ax, 0)))
nx0, ny0, nx1, ny1 = bp.bounds
no_w = (nx1 - nx0) * no_scale

# layout from the right: box, "No.", then the logo fills the rest, vertically centered
box_x1 = W - MARGIN
box_x0 = box_x1 - BOX_W
no_x0 = box_x0 - NO_GAP_RIGHT - no_w
logo_w = no_x0 - NO_GAP_LEFT - MARGIN
k = logo_w / lw
logo_h = lh * k
logo_x = MARGIN
logo_y = (H - logo_h) / 2
baseline = logo_y + (LOGO_BASELINE - ly) * k

def logo_mm(rs):
    return [[(logo_x + (x - lx) * k, logo_y + (y - ly) * k) for x, y in r] for r in rs]

class Recorder(BasePen):
    # glyph outline as subpaths of ('M', p), ('L', p), ('C', p1, p2, p3), ('Z',)
    def __init__(self, glyphset):
        super().__init__(glyphset)
        self.ops = []
    def _moveTo(self, p):
        self.ops.append(('M', p))
    def _lineTo(self, p):
        self.ops.append(('L', p))
    def _curveToOne(self, p1, p2, p3):
        self.ops.append(('C', p1, p2, p3))
    def _closePath(self):
        self.ops.append(('Z',))

rec = Recorder(gs)
for name, ax in no_glyphs:
    gs[name].draw(TransformPen(rec, (no_scale, 0, 0, -no_scale,
                                     no_x0 + (ax - nx0) * no_scale, baseline)))

# the sticker in mm, y down: filled shapes (subpaths, color) with the even-odd rule, and the box
def ring_ops(rs):
    ops = []
    for r in rs:
        ops.append(('M', r[0]))
        ops += [('L', p) for p in r[1:]]
        ops.append(('Z',))
    return ops

shapes = [(ring_ops(logo_mm(outline_rings)), BLACK)]
shapes += [(ring_ops(logo_mm(rs)), ORANGE) for rs in orange]
shapes.append((rec.ops, BLACK))
half = LINE / 2
box = (box_x0 + half, MARGIN + half, BOX_W - LINE, H - 2 * MARGIN - LINE)

# SVG
def svg_d(ops):
    out = []
    for op in ops:
        if op[0] == 'Z':
            out.append('Z')
        else:
            out.append(op[0] + ' '.join('%s %s' % (fmt(x), fmt(y)) for x, y in op[1:]))
    return ' '.join(out)

svg = [f'<?xml version="1.0" encoding="UTF-8"?>',
       f'<svg xmlns="http://www.w3.org/2000/svg" width="{fmt(W)}mm" height="{fmt(H)}mm" viewBox="0 0 {fmt(W)} {fmt(H)}">',
       '  <title>Bloxorz sticker</title>']
for ops, color in shapes:
    svg.append(f'  <path d="{svg_d(ops)}" fill="{color[1]}" fill-rule="evenodd"/>')
svg.append(f'  <rect x="{fmt(box[0])}" y="{fmt(box[1])}" width="{fmt(box[2])}" height="{fmt(box[3])}"'
           f' fill="none" stroke="{BLACK[1]}" stroke-width="{fmt(LINE)}"/>')
svg.append('</svg>')
open(os.path.join(DIR, 'sticker.svg'), 'w').write('\n'.join(svg) + '\n')

# PDF with CMYK colors, then PDF/X-3 with Ghostscript, which adds the output intent and the TrimBox
with tempfile.TemporaryDirectory() as tmp:
    raw = os.path.join(tmp, 'raw.pdf')
    c = canvas.Canvas(raw, pagesize=(W * mm, H * mm), pageCompression=1)
    c.setTitle('Bloxorz sticker')
    c.transform(mm, 0, 0, -mm, 0, H * mm)
    for ops, color in shapes:
        p = c.beginPath()
        for op in ops:
            if op[0] == 'M':
                p.moveTo(*op[1])
            elif op[0] == 'L':
                p.lineTo(*op[1])
            elif op[0] == 'C':
                p.curveTo(*op[1], *op[2], *op[3])
            else:
                p.close()
        c.setFillColor(CMYKColor(*color[0]))
        c.drawPath(p, stroke=0, fill=1, fillMode=FILL_EVEN_ODD)
    c.setStrokeColor(CMYKColor(*BLACK[0]))
    c.setLineWidth(LINE)
    c.setLineJoin(0)
    c.rect(*box, stroke=1, fill=0)
    c.showPage()
    c.save()

    pdfx = os.path.join(tmp, 'pdfx.ps')
    open(pdfx, 'w').write(f'''
[ /GTS_PDFXVersion (PDF/X-3:2002) /Title (Bloxorz sticker) /Trapped /False /DOCINFO pdfmark
[/_objdef {{icc_PDFX}} /type /stream /OBJ pdfmark
[{{icc_PDFX}} << /N 4 >> /PUT pdfmark
[{{icc_PDFX}} ({ICC}) (r) file /PUT pdfmark
[/_objdef {{OutputIntent_PDFX}} /type /dict /OBJ pdfmark
[{{OutputIntent_PDFX}} <<
  /Type /OutputIntent
  /S /GTS_PDFX
  /OutputCondition (Coated FOGRA39)
  /Info (Coated FOGRA39 \\(ISO 12647-2:2004\\))
  /OutputConditionIdentifier (FOGRA39)
  /RegistryName (http://www.color.org)
  /DestOutputProfile {{icc_PDFX}}
>> /PUT pdfmark
[{{Catalog}} <</OutputIntents [ {{OutputIntent_PDFX}} ]>> /PUT pdfmark
''')
    subprocess.run(['gs', '-q', '-dPDFX=3', '-dBATCH', '-dNOPAUSE', '--permit-file-read=' + ICC,
                    '-sDEVICE=pdfwrite', '-sColorConversionStrategy=CMYK', '-sProcessColorModel=DeviceCMYK',
                    '-sOutputFile=' + os.path.join(DIR, 'sticker.pdf'), pdfx, raw], check=True)

print('logo %.2f x %.2f mm, margin above and below the logo %.2f mm, "No." %.2f mm wide'
      % (logo_w, logo_h, (H - logo_h) / 2, no_w))
print('written sticker.svg and sticker.pdf')
