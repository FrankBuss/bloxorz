# generates the paper insert for a VHS library case with a clear sleeve, in the style of the
# original Vectrex game boxes: back with a short manual, spine, and front with the logo of
# ../sticker/logo.svg and a screen of the game (screen.txt, a frame of the attract demo)
#
# output: cover.pdf, a PDF/X-3 with CMYK colors and the output intent FOGRA39, on A4 landscape
# (A3 if the insert doesn't fit) with crop marks and fold marks for the spine; the TrimBox is the
# insert. Print it at 100 % ("actual size"), not fitted to the page.
#
# usage: python3 make_cover.py
# needs: shapely, reportlab, Ghostscript, Roboto (Debian: fonts-roboto-unhinted), the FOGRA39 profile
# (Debian: texlive-latex-extra)
import math
import os
import re
import subprocess
import tempfile
import xml.etree.ElementTree as ET
from reportlab.lib.colors import CMYKColor
from reportlab.lib.fonts import addMapping
from reportlab.lib.styles import ParagraphStyle
from reportlab.lib.units import mm
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.pdfgen import canvas
from reportlab.pdfgen.canvas import FILL_EVEN_ODD
from reportlab.platypus import Paragraph
from shapely.geometry import Polygon
from shapely.ops import unary_union

# size of the insert in mm, measured inside the clear sleeve of the case
HEIGHT = 197.0
PANEL = 114.2          # width of the front and of the back
SPINE = 28.6
BLEED = 2.0            # the background extends this far beyond the cut lines
WIDTH = 2 * PANEL + SPINE

GRID = 3.2             # background grid
GRID_LINE = 0.1

DIR = os.path.dirname(os.path.abspath(__file__))
LOGO = os.path.join(DIR, '..', 'sticker', 'logo.svg')
SCREEN = os.path.join(DIR, 'screen.txt')
ICC = '/usr/share/texlive/texmf-dist/tex/generic/colorprofiles/FOGRA39L_coated.icc'
FONTS = '/usr/share/fonts/truetype/roboto/unhinted/'
CAP = 1456 / 2048      # cap height of Roboto per font size

# CMYK colors
WHITE = (0, 0, 0, 0)
BLACK = (0, 0, 0, 1)
GRAY = (0, 0, 0, 0.3)
ORANGE = (0, 0.6, 1, 0)
SCREEN_BLACK = (0.6, 0.45, 0.4, 1)    # rich black for the large dark areas
FIELD = (0.25, 0.08, 0, 0.05)         # dim vector lines of the floor
BEAM = (0.04, 0, 0, 0)                # bright vector lines of the block

def cmyk(c):
    return CMYKColor(*c)

def mix(a, b, t):
    return tuple(x + (y - x) * t for x, y in zip(a, b))

for name, file in [('Roboto', 'RobotoTTF/Roboto-Regular.ttf'), ('Roboto-Bold', 'RobotoTTF/Roboto-Bold.ttf'),
                   ('Roboto-Italic', 'RobotoTTF/Roboto-Italic.ttf'),
                   ('Roboto-BoldItalic', 'RobotoTTF/Roboto-BoldItalic.ttf'),
                   ('Roboto-BlackItalic', 'RobotoTTF/Roboto-BlackItalic.ttf'),
                   ('RobotoCondensed-Bold', 'RobotoCondensed-Bold.ttf')]:
    pdfmetrics.registerFont(TTFont(name, FONTS + file))
addMapping('Roboto', 0, 0, 'Roboto')
addMapping('Roboto', 1, 0, 'Roboto-Bold')
addMapping('Roboto', 0, 1, 'Roboto-Italic')
addMapping('Roboto', 1, 1, 'Roboto-BoldItalic')

# ---------------------------------------------------------------------------------------------
# logo: the black outline merged to one shape, like in make_sticker.py, then the orange letters

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
outline = unary_union(black).buffer(1.5, join_style='mitre').buffer(-1.5, join_style='mitre')
outline_rings = []
for p in (outline.geoms if hasattr(outline, 'geoms') else [outline]):
    outline_rings += [list(r.coords[:-1]) for r in [p.exterior, *p.interiors]]
LOGO_ASPECT = lh / lw

def fill_rings(c, rs, color):
    p = c.beginPath()
    for r in rs:
        p.moveTo(*r[0])
        for q in r[1:]:
            p.lineTo(*q)
        p.close()
    c.setFillColor(cmyk(color))
    c.drawPath(p, stroke=0, fill=1, fillMode=FILL_EVEN_ODD)

def draw_logo(c, cx, cy, width):
    # logo centered at cx, cy
    k = width / lw
    c.saveState()
    c.translate(cx - width / 2, cy - lh * k / 2)
    c.scale(k, k)
    c.translate(-lx, -ly)
    fill_rings(c, outline_rings, BLACK)
    for rs in orange:
        fill_rings(c, rs, ORANGE)
    c.restoreState()

# ---------------------------------------------------------------------------------------------
# drawing helpers; the coordinates are mm from the top left corner of the insert, y down

def text(c, x, y, s, font, size, color=BLACK, anchor='left', space=0):
    # one line, y is the baseline
    w = pdfmetrics.stringWidth(s, font, size) + space * (len(s) - 1)
    if anchor == 'center':
        x -= w / 2
    elif anchor == 'right':
        x -= w
    c.saveState()
    c.translate(x, y)
    c.scale(1, -1)
    c.setFillColor(cmyk(color))
    c.setFont(font, size)
    c.drawString(0, 0, s, charSpace=space)
    c.restoreState()

def caps(c, x, y_center, s, font, cap, color=BLACK, anchor='center', space=0):
    # one line of capitals, vertically centered
    text(c, x, y_center + cap / 2, s, font, cap / CAP, color, anchor, space)

def rect(c, x, y, w, h, fill=None, stroke=None, width=0.3, radius=0):
    if fill:
        c.setFillColor(cmyk(fill))
    if stroke:
        c.setStrokeColor(cmyk(stroke))
        c.setLineWidth(width)
    if radius:
        c.roundRect(x, y, w, h, radius, stroke=1 if stroke else 0, fill=1 if fill else 0)
    else:
        c.rect(x, y, w, h, stroke=1 if stroke else 0, fill=1 if fill else 0)

def hline(c, x0, x1, y, width, color=BLACK):
    c.setStrokeColor(cmyk(color))
    c.setLineWidth(width)
    c.setLineCap(0)
    c.line(x0, y, x1, y)

# vector lines with a glow: the same lines drawn wide and dark first, then narrower and brighter,
# opaque colors mixed with the background, because PDF/X-3 has no transparency
GLOW = [(1.5, 0.12), (1.0, 0.25), (0.65, 0.45), (0.4, 0.75), (0.22, 1.0)]

def glow_lines(c, segs, color, scale=1.0, bg=SCREEN_BLACK):
    c.setLineCap(1)
    c.setLineJoin(1)
    for w, t in GLOW:
        c.setStrokeColor(cmyk(mix(bg, color, t)))
        c.setLineWidth(w * scale)
        p = c.beginPath()
        for x0, y0, x1, y1 in segs:
            p.moveTo(x0, y0)
            p.lineTo(x1, y1)
        c.drawPath(p, stroke=1, fill=0)

# paragraphs, sizes in mm
BODY = ParagraphStyle('body', fontName='Roboto', fontSize=2.45, leading=3.05, textColor=cmyk(BLACK))
BODY_WHITE = ParagraphStyle('white', parent=BODY, textColor=cmyk(WHITE))
SMALL = ParagraphStyle('small', parent=BODY, fontSize=1.9, leading=2.35)

def para(c, x, y, w, markup, style=BODY, draw=True):
    # paragraph with its top at y, returns its height
    p = Paragraph(markup, style)
    _, h = p.wrap(w, 1000)
    if draw:
        c.saveState()
        c.translate(x, y)
        c.scale(1, -1)
        p.drawOn(c, 0, -h)
        c.restoreState()
    return h

# ---------------------------------------------------------------------------------------------
# the screen of the game

def load_screen():
    segs = []
    for line in open(SCREEN):
        if not line.startswith('#'):
            x0, y0, x1, y1, i = map(int, line.split())
            segs.append((x0, y0, x1, y1, i))
    return segs

def draw_screen(c, x, y, w, h, margin):
    segs = load_screen()
    xs = [v for s in segs for v in (s[0], s[2])]
    ys = [v for s in segs for v in (s[1], s[3])]
    bx0, bx1, by0, by1 = min(xs), max(xs), min(ys), max(ys)
    k = min((w - 2 * margin) / (bx1 - bx0), (h - 2 * margin) / (by1 - by0))
    ox = x + w / 2 - (bx0 + bx1) / 2 * k
    oy = y + h / 2 - (by0 + by1) / 2 * k

    def tr(s):
        return (ox + s[0] * k, oy + s[1] * k, ox + s[2] * k, oy + s[3] * k)
    # the floor dim, the block bright and on top
    glow_lines(c, [tr(s) for s in segs if s[4] < 80], FIELD)
    glow_lines(c, [tr(s) for s in segs if s[4] >= 80], BEAM)

def glow_box(c, x, y, w, h, radius, size, color, steps=40):
    # soft colored glow around a box, from the color at the box to white
    for i in range(steps):
        d = size * (1 - i / steps)
        t = (i / steps) ** 1.6
        rect(c, x - d, y - d, w + 2 * d, h + 2 * d, fill=mix(WHITE, color, t), radius=radius + d)

def starburst(c, cx, cy, r_out, r_in, points, angle, lines, cap):
    p = c.beginPath()
    for i in range(2 * points):
        r = r_out if i % 2 == 0 else r_in
        a = math.pi * i / points
        q = (cx + r * math.cos(a), cy + r * math.sin(a))
        p.moveTo(*q) if i == 0 else p.lineTo(*q)
    p.close()
    c.setFillColor(cmyk(ORANGE))
    c.setStrokeColor(cmyk(BLACK))
    c.setLineWidth(0.3)
    c.setLineJoin(0)
    c.drawPath(p, stroke=1, fill=1)
    c.saveState()
    c.translate(cx, cy)
    c.rotate(angle)
    pitch = cap * 1.75
    for i, s in enumerate(lines):
        caps(c, 0, (i - (len(lines) - 1) / 2) * pitch, s, 'RobotoCondensed-Bold', cap)
    c.restoreState()

# ---------------------------------------------------------------------------------------------
# tile icons of the manual, in the projection of the game: edge vectors of a tile from the
# emulator, screen coordinates, y down

TILE_U = (1736, -372)
TILE_V = (720, 960)

def tile_segs(kind, x, y, width):
    k = width / (TILE_U[0] + TILE_V[0])
    u = (TILE_U[0] * k, TILE_U[1] * k)
    v = (TILE_V[0] * k, TILE_V[1] * k)
    y -= u[1]   # top left corner, so that the top corner is at y
    tl = (x, y)
    tr = (x + u[0], y + u[1])
    br = (x + u[0] + v[0], y + u[1] + v[1])
    bl = (x + v[0], y + v[1])
    cx, cy = (tl[0] + br[0]) / 2, (tl[1] + br[1]) / 2
    segs = [(*tl, *tr), (*tr, *br), (*br, *bl), (*bl, *tl)]
    if kind in ('target', 'switch2'):
        segs.append((*tl, *br))
    if kind in ('target', 'switch1'):
        segs.append((*tr, *bl))
    if kind == 'fragile':
        segs.append((cx - 0.3 * u[0], cy - 0.3 * u[1], cx + 0.3 * u[0], cy + 0.3 * u[1]))
    if kind == 'split':
        segs.append((cx - 0.3 * v[0], cy - 0.3 * v[1], cx + 0.3 * v[0], cy + 0.3 * v[1]))
    return segs, v[1] - u[1]

# ---------------------------------------------------------------------------------------------
# cards of the manual: white boxes with an orange title bar, or dark ones like the screen

PAD = 2.2
TITLE_H = 4.6

def card(c, x, y, w, title, items, dark=False, draw=True):
    # items: ('p', markup), ('keys', key width, [(key, markup)]), ('tiles', [(kind, markup)]), ('gap', mm)
    style = BODY_WHITE if dark else BODY
    iw = w - 2 * PAD
    cy = y + TITLE_H + PAD
    body = []
    for item in items:
        if item[0] == 'p':
            body.append((cy, item))
            cy += para(c, 0, 0, iw, item[1], style, draw=False) + 1.0
        elif item[0] == 'keys':
            body.append((cy, item))
            for key, markup in item[2]:
                cy += max(para(c, 0, 0, item[1], key, style, draw=False),
                          para(c, 0, 0, iw - item[1], markup, style, draw=False)) + 0.35
            cy += 1.0
        elif item[0] == 'tiles':
            body.append((cy, item))
            for kind, markup in item[1]:
                cy += max(5.2, para(c, 0, 0, iw - 11, markup, style, draw=False)) + 1.2
        elif item[0] == 'gap':
            cy += item[1]
    h = cy - 1.0 + PAD - y
    if not draw:
        return h
    rect(c, x, y, w, h, fill=SCREEN_BLACK if dark else WHITE, stroke=BLACK, width=0.3, radius=1.5)
    # title bar, square at the bottom
    c.setFillColor(cmyk(ORANGE))
    p = c.beginPath()
    r = 1.5
    inset = 0.15
    p.moveTo(x + inset, y + TITLE_H)
    p.lineTo(x + inset, y + r)
    p.arcTo(x + inset, y + inset, x + inset + 2 * (r - inset), y + inset + 2 * (r - inset), 180, 90)
    p.lineTo(x + w - r, y + inset)
    p.arcTo(x + w - inset - 2 * (r - inset), y + inset, x + w - inset, y + inset + 2 * (r - inset), 270, 90)
    p.lineTo(x + w - inset, y + TITLE_H)
    p.close()
    c.drawPath(p, stroke=0, fill=1)
    hline(c, x, x + w, y + TITLE_H, 0.3)
    caps(c, x + PAD, y + TITLE_H / 2 + 0.15, title, 'RobotoCondensed-Bold', 2.3, anchor='left', space=0.25)
    for top, item in body:
        if item[0] == 'p':
            para(c, x + PAD, top, iw, item[1], style)
        elif item[0] == 'keys':
            for key, markup in item[2]:
                h1 = para(c, x + PAD, top, item[1], key, style)
                h2 = para(c, x + PAD + item[1], top, iw - item[1], markup, style)
                top += max(h1, h2) + 0.35
        elif item[0] == 'tiles':
            for kind, markup in item[1]:
                th = para(c, 0, 0, iw - 11, markup, style, draw=False)
                row = max(5.2, th)
                segs, ih = tile_segs(kind, x + PAD + 0.6, top + (row - 4.3) / 2, 8)
                glow_lines(c, segs, BEAM, scale=0.55)
                para(c, x + PAD + 11, top + (row - th) / 2, iw - 11, markup, style)
                top += row + 1.2
    return h

# ---------------------------------------------------------------------------------------------
# the panels

def grid(c):
    c.setStrokeColor(cmyk(GRAY))
    c.setLineWidth(GRID_LINE)
    c.setLineCap(0)
    p = c.beginPath()
    n0 = -math.ceil(BLEED / GRID)
    for i in range(n0, math.ceil((WIDTH + BLEED) / GRID) + 1):
        p.moveTo(i * GRID, -BLEED)
        p.lineTo(i * GRID, HEIGHT + BLEED)
    for i in range(n0, math.ceil((HEIGHT + BLEED) / GRID) + 1):
        p.moveTo(-BLEED, i * GRID)
        p.lineTo(WIDTH + BLEED, i * GRID)
    c.drawPath(p, stroke=1, fill=0)

def band(c, x0, x1, y0, y1):
    # white band over the grid with black rules
    rect(c, x0, y0, x1 - x0, y1 - y0, fill=WHITE)
    hline(c, x0, x1, y0, 0.35)
    hline(c, x0, x1, y1, 0.35)

def front(c):
    x0 = PANEL + SPINE
    cx = x0 + PANEL / 2
    bx0, bx1 = x0, WIDTH + BLEED

    # top: VECTREX and the line below, like on the original boxes
    caps(c, cx, 10.5, 'VECTREX', 'Roboto-BlackItalic', 7.0, space=1.2)
    band(c, bx0, bx1, 17.0, 22.6)
    caps(c, cx, 19.8, 'ARCADE SYSTEM CARTRIDGE', 'Roboto-Bold', 2.5, space=0.7)

    # the logo
    band(c, bx0, bx1, 26.0, 48.0)
    draw_logo(c, cx, 37.0, PANEL - 14)

    # bottom text
    band(c, bx0, bx1, HEIGHT - 22.5, HEIGHT - 7.5)
    caps(c, cx, HEIGHT - 18.6, 'THIS PACKAGE INCLUDES ONE GAME CARTRIDGE', 'Roboto-Bold', 2.3, space=0.25)
    caps(c, cx, HEIGHT - 14.6, 'FOR USE WITH THE VECTREX ARCADE SYSTEM', 'Roboto-Bold', 2.3, space=0.25)
    caps(c, cx, HEIGHT - 10.6, 'BLOXORZ FOR THE VECTREX BY FRANK BUSS', 'Roboto', 1.5, space=0.2)

    # the screen between, in the aspect of the Vectrex screen, with an orange glow
    top, bottom = 48.0 + 9.0, HEIGHT - 22.5 - 9.0
    sh = bottom - top
    sw = min(PANEL - 26, sh * 33 / 41)
    sx = cx - sw / 2
    glow_box(c, sx, top, sw, sh, 4, 6.5, ORANGE)
    rect(c, sx, top, sw, sh, fill=SCREEN_BLACK, radius=4)
    draw_screen(c, sx, top, sw, sh, 7)

    # badge at the top right corner of the screen
    starburst(c, sx + sw - 4, top + 6, 13.0, 11.2, 16, -12,
              ['33 LEVELS', '14 MORE GAMES', 'MIDI PLAYER'], 1.9)

def spine(c):
    x0 = PANEL
    cx = x0 + SPINE / 2
    # text from top to bottom, the tops of the letters to the front
    c.saveState()
    c.translate(cx, 0)
    c.rotate(90)
    # now x runs down the spine, y from the front to the back, 0 in the middle
    band(c, -BLEED, HEIGHT + BLEED, -SPINE / 2 + 4, SPINE / 2 - 4)
    caps(c, 8, 0, 'VECTREX', 'Roboto-BlackItalic', 4.6, anchor='left', space=0.7)
    # the logo in the middle of the rest
    start = 8 + pdfmetrics.stringWidth('VECTREX', 'Roboto-BlackItalic', 4.6 / CAP) + 6 * 0.7
    logo_w = min(HEIGHT - start - 16, (SPINE - 13) / LOGO_ASPECT)
    draw_logo(c, (start + HEIGHT) / 2, 0, logo_w)
    c.restoreState()

GAMES = ('Armor Attack, Berzerk, Blitz, Cosmic Chasm, Fortress Narzod, Hyperchase, Karl Quappe, '
         'Pole Position, Rip-Off, Scramble, Solar Quest, Spike, Star Castle and Web Warp')

def back(c):
    m = 5.0
    x0 = m
    w = PANEL - 2 * m
    cx = PANEL / 2

    band(c, -BLEED, PANEL, 4.5, 18.5)
    draw_logo(c, cx, 11.5, 66)

    play = [
        ('p', 'Roll the block over the floor and stand it upright on the target. If it falls off, the '
              'level starts again. The cartridge saves your fewest moves for each of the 33 levels.'),
        ('keys', 15, [('<b>Joystick</b>', 'roll the block'),
                      ('<b>Button 1</b>', 'switch between the two halves of a split block'),
                      ('<b>Button 2</b>', 'skip to the next level'),
                      ('<b>Button 3</b>', 'back to the previous level'),
                      ('<b>Button 4</b>', 'back to the main menu')]),
    ]
    col = (w - 2.5) / 2
    tiles = [
        ('target', '<b>Target:</b> stand the block upright on it to finish the level'),
        ('switch1', '<b>Switch:</b> turns bridges on or off, any side of the block presses it'),
        ('switch2', '<b>Heavy switch:</b> only the standing block presses it'),
        ('fragile', '<b>Fragile:</b> the standing block falls through'),
        ('split', '<b>Split:</b> splits the block in two, button 1 switches between the halves'),
    ]
    menu = [
        ('p', 'Any button or the joystick ends the logo and the demo and shows the level list, with your '
              'fewest moves of the selected level in brackets. The joystick selects the level: down/up '
              'next/previous level, right/left 5 levels.'),
        ('keys', 4, [('<b>1</b>', 'start the game'),
                     ('<b>2</b>', 'clear all highscores, 3 yes, 4 no'),
                     ('<b>3</b>', 'other games'),
                     ('<b>4</b>', 'MIDI player')]),
        ('p', 'After 10 seconds without input the demo starts again.'),
    ]
    games = [
        ('p', f'The cartridge also holds 14 more games: {GAMES}. Choose one with the joystick, start it '
              'with button 1, button 4 returns to the main menu.'),
        ('p', '<b>Back to Bloxorz from another game:</b> hold down RESET on the Vectrex, press the red '
              'button on the cartridge, then release RESET.'),
    ]
    midi = [
        ('p', 'The DIN socket of the cartridge is a MIDI input, for a keyboard or the MIDI OUT of a '
              'computer interface. Choose 4 MIDI PLAYER in the main menu. Notes of any channel play on the '
              'three voices of the Vectrex sound chip, the velocity sets the volume. System exclusive '
              'messages write the sound chip registers, so a computer can play chip music: '
              # no line breaks inside the message and the formula
              '<b>F0\xa07D\xa0rr\xa0hh\xa0ll\xa0F7</b> sets register rr to hh\xa0&#215;\xa016\xa0+\xa0ll. '
              'The screen shows the notes of the three voices and the number of received bytes.'),
        ('keys', 15, [('<b>Button 1</b>', 'screen off, less hum'),
                      ('<b>Button 2</b>', 'screen on'),
                      ('<b>Button 3</b>', 'back to the main menu')]),
    ]
    credits = ('Bloxorz for the Vectrex by Frank Buss, after the Flash game Bloxorz by Damien Clarke '
               '(DX Interactive). Vector logo, attract demo and level select from the VecFever version, '
               'bank switching and field drawing by Malban. Title music by Luchs Soft, played by the '
               'Arkos Tracker 2 player. Karl Quappe by Malban, used with permission.')

    # the cards between the logo and the credits at the bottom, with equal gaps
    rows = [
        [(x0, w, 'HOW TO PLAY', play, False)],
        [(x0, col, 'TILES', [('tiles', tiles)], True), (x0 + col + 2.5, col, 'MAIN MENU', menu, False)],
        [(x0, w, 'OTHER GAMES', games, False)],
        [(x0, w, 'MIDI IN', midi, False)],
    ]
    heights = [max(card(c, x, 0, cw, t, items, dark, draw=False) for x, cw, t, items, dark in row) for row in rows]
    credits_h = para(c, 0, 0, w, credits, SMALL, draw=False) + 2.4
    credits_y = HEIGHT - 4.5 - credits_h
    top = 18.5
    gap = (credits_y - top - sum(heights)) / (len(rows) + 1)
    if gap < 1.5:
        print('warning: the manual is %.1f mm too long' % ((1.5 - gap) * (len(rows) + 1)))
    y = top + gap
    for row, h in zip(rows, heights):
        for x, cw, t, items, dark in row:
            card(c, x, y, cw, t, items, dark)
        y += h + gap
    band(c, -BLEED, PANEL, credits_y, credits_y + credits_h)
    para(c, x0, credits_y + 1.2, w, credits, SMALL)
    print('back: gaps between the cards %.1f mm' % gap)

# ---------------------------------------------------------------------------------------------
# page with crop marks and fold marks

def marks(c):
    c.setStrokeColor(cmyk(BLACK))
    c.setLineWidth(0.15)
    c.setLineCap(0)
    gap = BLEED + 1.0
    for x in (0, WIDTH):
        for y, d in ((0, -1), (HEIGHT, 1)):
            c.line(x, y + d * gap, x, y + d * (gap + 5))
    for y in (0, HEIGHT):
        for x, d in ((0, -1), (WIDTH, 1)):
            c.line(x + d * gap, y, x + d * (gap + 5), y)
    # folds of the spine, dashed
    c.setDash(0.8, 0.6)
    for x in (PANEL, PANEL + SPINE):
        for y, d in ((0, -1), (HEIGHT, 1)):
            c.line(x, y + d * gap, x, y + d * (gap + 5))
    c.setDash()

if WIDTH + 2 * (BLEED + 8) <= 297 and HEIGHT + 2 * (BLEED + 2) <= 210:
    PAGE = (297.0, 210.0)
else:
    PAGE = (420.0, 297.0)
OX = (PAGE[0] - WIDTH) / 2
OY = (PAGE[1] - HEIGHT) / 2

with tempfile.TemporaryDirectory() as tmp:
    raw = os.path.join(tmp, 'raw.pdf')
    c = canvas.Canvas(raw, pagesize=(PAGE[0] * mm, PAGE[1] * mm), pageCompression=1)
    c.setTitle('Bloxorz VHS case insert')
    c.setTrimBox((OX * mm, OY * mm, (OX + WIDTH) * mm, (OY + HEIGHT) * mm))
    c.setBleedBox(((OX - BLEED) * mm, (OY - BLEED) * mm, (OX + WIDTH + BLEED) * mm, (OY + HEIGHT + BLEED) * mm))
    # mm, y down, origin at the top left corner of the insert
    c.translate(OX * mm, (PAGE[1] - OY) * mm)
    c.scale(mm, -mm)
    c.saveState()
    p = c.beginPath()
    p.rect(-BLEED, -BLEED, WIDTH + 2 * BLEED, HEIGHT + 2 * BLEED)
    c.clipPath(p, stroke=0, fill=0)
    grid(c)
    back(c)
    spine(c)
    front(c)
    c.restoreState()
    marks(c)
    c.showPage()
    c.save()

    pdfx = os.path.join(tmp, 'pdfx.ps')
    open(pdfx, 'w').write(f'''
[ /GTS_PDFXVersion (PDF/X-3:2002) /Title (Bloxorz VHS case insert) /Trapped /False /DOCINFO pdfmark
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
                    '-sOutputFile=' + os.path.join(DIR, 'cover.pdf'), pdfx, raw], check=True)

print('insert %.1f x %.1f mm on %g x %g mm, written cover.pdf' % (WIDTH, HEIGHT, *PAGE))
