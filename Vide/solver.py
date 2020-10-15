#!/usr/bin/python3

import pickle
import datetime
import copy
from tkinter import Tk, Canvas
import pprint
from plevels import levels
import tkinter as tk
from enum import Enum
import sys
sys.setrecursionlimit(10000)

class BlockOrientation(Enum):
    Standing = 1
    Vertical = 2
    Horizontal = 3

class Move(Enum):
    Left = 1
    Right = 2
    Up = 3
    Down = 4
    SplitSwap = 5

LEVEL_WIDTH = 10
LEVEL_HEIGHT = 15

endX = 0
endY = 0

def start_timing():
    global t
    t = datetime.datetime.now()

def end_timing():
    d = datetime.datetime.now() - t
    print("seconds: %f" % d.total_seconds())

def x3d(x, z):
    # c * x - d * z
    x = x - (int(LEVEL_WIDTH / 2) - 4)
    return 14 * x - 6 * z

def y3d(x, y, z):
    # b * d * x + a * y + b * c * z
    y = y - int(LEVEL_HEIGHT / 2)
    return 3 * x + 13 * y + 8 * z
    
def draw_line(x0, y0, x1, y1, color="black"):
    global canvas, width, height
    s = 2
    canvas.create_line(x0*s + width / 2, -y0*s + height / 2,
        x1*s + width / 2, -y1*s + height / 2,
        fill=color, width=2)

def addLineImpl(x0, y0, x1, y1, half):
    lx0 = x3d(x0, y0)
    ly0 = y3d(x0, 0, y0)
    lx1 = x3d(x1, y1)
    ly1 = y3d(x1, 0, y1)
    if half:
        lx0 = lx0 - 1
        ly0 = ly0 + 4
        lx1 = lx1 - 6
        ly1 = ly1 + 3
    draw_line(lx0, ly0, lx1, ly1)

def addSplit(x0, y0):
    draw_line(x3d(x0, y0) + 6, y3d(x0, 0, y0) + 3,
        x3d(x0, y0 + 1) + 8, y3d(x0, 0, y0 + 1) + 0)

def addLine(x0, y0, x1, y1, half):
    test = 5
    while (x1 - x0 > test):
        addLineImpl(x0, y0, x0 + test, y1, half)
        x0 = x0 + test
    while (y1 - y0 > test):
        addLineImpl(x0, y0, x1, y0 + test, half)
        y0 = y0 + test
    addLineImpl(x0, y0, x1, y1, half)

def addTarget(x, y):
    draw_line(x3d(x, y), y3d(x, 0, y),
        x3d(x + 1, y + 1), y3d(x + 1, 0, y + 1))

    draw_line(x3d(x + 1, y), y3d(x + 1, 0, y),
        x3d(x, y + 1), y3d(x, 0, y + 1))

def getField(x, y):
    c = 0;
    if x >= 0 and y >= 0 and x < LEVEL_WIDTH and y < LEVEL_HEIGHT:
        c = level['geometry'][y][x]
    return c;

def isField(x, y):
    c = getField(x, y)

    # swatches test
    if c == 'l' or c == 'r' or c == 'k' or c == 'q':
        if state.swatchesOn[y][x]:
            c = 'b'

    # normal and split field test
    return c == 'b' or c == 'e' or c == 's' or c == 'h' or c == 'f' or c == 'v'

def setupX():
    x = 0
    y = 0
    geometry = level['geometry']
    for y in range(-1, LEVEL_HEIGHT):
        for x in range(0, LEVEL_WIDTH + 1):
            c0 = 0
            if (y >= 0 and x < LEVEL_WIDTH):
                c0 = geometry[y][x]
            if c0 == 'e':
                addTarget(x, y)
            if c0 == 'v':
                addSplit(x, y)
            if (c0 == 's'):
                addLine(x, y, x + 1, y + 1, 0)
            if (c0 == 'h'):
                addLine(x + 1, y, x, y + 1, 0)
            if (c0 == 'f'):
                addLine(x, y, x + 1, y, 1)
            if (isField(x, y) or isField(x, y + 1)):
                addLine(x, y + 1, x + 1, y + 1, 0)

def setupY():
    x = 0
    y = 0
    for x in range(-1, LEVEL_WIDTH):
        for y in range(0, LEVEL_HEIGHT + 1):
            if (isField(x, y) or isField(x + 1, y)):
                addLine(x + 1, y, x + 1, y + 1, 0)

def add_line3d(x0, y0, z0, x1, y1, z1):
    lx0 = x3d(x0, y0)
    ly0 = y3d(x0, z0, y0)
    lx1 = x3d(x1, y1)
    ly1 = y3d(x1, z1, y1)
    draw_line(lx0, ly0, lx1, ly1, "blue")

def draw_block_impl(x0, y0, x1, y1, x2, y2, x3, y3, height):
    # sides
    add_line3d(x0, y0, 0, x0, y0, height)
    add_line3d(x1, y1, 0, x1, y1, height)
    add_line3d(x2, y2, 0, x2, y2, height)
    add_line3d(x3, y3, 0, x3, y3, height)
    # top
    add_line3d(x0, y0, height, x1, y1, height)
    add_line3d(x1, y1, height, x2, y2, height)
    add_line3d(x2, y2, height, x3, y3, height)
    add_line3d(x3, y3, height, x0, y0, height)
    # bottom
    add_line3d(x0, y0, 0, x1, y1, 0)
    add_line3d(x1, y1, 0, x2, y2, 0)
    add_line3d(x2, y2, 0, x3, y3, 0)
    add_line3d(x3, y3, 0, x0, y0, 0)

def draw_block():
    x = state.blockX
    y = state.blockY
    x2 = state.blockX2
    y2 = state.blockY2
    if state.splitMode:
        draw_block_impl(x, y, x + 1, y, x + 1, y + 1, x, y + 1, 1)
        draw_block_impl(x2, y2, x2 + 1, y2, x2 + 1, y2 + 1, x2, y2 + 1, 1)
    else:
        if state.blockOrientation == BlockOrientation.Standing:
            draw_block_impl(x, y, x + 1, y, x + 1, y + 1, x, y + 1, 2)
        if state.blockOrientation == BlockOrientation.Horizontal:
            draw_block_impl(x, y, x + 2, y, x + 2, y + 1, x, y + 1, 1)
        if state.blockOrientation == BlockOrientation.Vertical:
            draw_block_impl(x, y, x + 1, y, x + 1, y + 2, x, y + 2, 1)

def draw_field():
    setupX()
    setupY()
    draw_block()

class State:
    def key(self):
        flat = [j for sub in self.swatchesOn for j in sub]
        x = self.blockX
        y = self.blockY
        x2 = self.blockX2
        y2 = self.blockY2
        #if x > x2 or y > y2:
        #    x, y, x2, y2 = x2, y2, x, y
        return (self.blockOrientation, x, y, x2, y2, self.splitMode, tuple(flat), self.game_over, self.game_won)
        
    def __init__(self):
        self.blockOrientation = BlockOrientation.Standing
        self.blockX = 0
        self.blockY = 0

        self.blockX2 = 0
        self.blockY2 = 0
        
        self.splitMode = False
        self.swatchesOn = []
        
        self.game_over = False
        self.game_won = False
 
    def init_by_level(self):
        global endX, endY
        self.blockX = level['start']['x']
        self.blockY = level['start']['y']
        self.swatchesOn = []
        for i in range(LEVEL_HEIGHT):
            self.swatchesOn.append([False] * LEVEL_WIDTH)
        geometry = level['geometry']
        for y in range(0, LEVEL_HEIGHT):
            for x in range(0, LEVEL_WIDTH):
                c0 = geometry[y][x]
                if c0 == 'k' or c0 == 'q':
                    state.swatchesOn[y][x] = True
                if c0 == 'e':
                    endX = x
                    endY = y

def swatchSwitch(x, y):
    if state.splitMode: return
    swatches = level["swatches"]
    for swatch in swatches:
        xs = swatch["position"]["x"]
        ys = swatch["position"]["y"]
        fields = swatch["fields"]
        if xs == x and ys == y:
            for field in fields:
                xf = field["position"]["x"]
                yf = field["position"]["y"]
                action = field["action"]
                if action == "onoff":
                    state.swatchesOn[yf][xf] = not state.swatchesOn[yf][xf]
                elif action == "on":
                    state.swatchesOn[yf][xf] = True
                elif action == "off":
                    state.swatchesOn[yf][xf] = False
                elif action == "split1":
                    state.blockX = xf
                    state.blockY = yf
                    state.splitMode = True
                elif action == "split2":
                    state.blockX2 = xf
                    state.blockY2 = yf

def move_block(move):
    # move block
    two = 2
    if state.splitMode: two = 1
    if state.blockOrientation == BlockOrientation.Standing:
        if move == Move.Left:
            state.blockX = state.blockX - two
            state.blockOrientation = BlockOrientation.Horizontal
        if move == Move.Right:
            state.blockX = state.blockX + 1
            state.blockOrientation = BlockOrientation.Horizontal
        if move == Move.Up:
            state.blockY = state.blockY + 1
            state.blockOrientation = BlockOrientation.Vertical
        if move == Move.Down:
            state.blockY = state.blockY - two
            state.blockOrientation = BlockOrientation.Vertical
    elif state.blockOrientation == BlockOrientation.Vertical:
        if move == Move.Left:
            state.blockX = state.blockX - 1
        if move == Move.Right:
            state.blockX = state.blockX + 1
        if move == Move.Up:
            state.blockY = state.blockY + two
            state.blockOrientation = BlockOrientation.Standing
        if move == Move.Down:
            state.blockY = state.blockY - 1
            state.blockOrientation = BlockOrientation.Standing
    elif state.blockOrientation == BlockOrientation.Horizontal:
        if move == Move.Left:
            state.blockX = state.blockX - 1
            state.blockOrientation = BlockOrientation.Standing
        if move == Move.Right:
            state.blockX = state.blockX + two
            state.blockOrientation = BlockOrientation.Standing
        if move == Move.Up:
            state.blockY = state.blockY + 1
        if move == Move.Down:
            state.blockY = state.blockY - 1
    
    if state.splitMode and move == Move.SplitSwap:
        state.blockX, state.blockY, state.blockX2, state.blockY2 = state.blockX2, state.blockY2, state.blockX, state.blockY
    
    # check for out of field
    c0 = isField(state.blockX, state.blockY)
    c1 = isField(state.blockX + 1, state.blockY)
    c2 = isField(state.blockX, state.blockY + 1)
    f0 = getField(state.blockX, state.blockY)
    f1 = getField(state.blockX + 1, state.blockY)
    f2 = getField(state.blockX, state.blockY + 1)
    if state.blockOrientation == BlockOrientation.Standing:
        if not c0 or f0 == 'f':
            state.game_over = True
    elif state.blockOrientation == BlockOrientation.Vertical:
        if not c0 or not c2:
            state.game_over = True
    elif state.blockOrientation == BlockOrientation.Horizontal:
        if not c0 or not c1:
            state.game_over = True
    
    # check for block at target
    if state.blockOrientation == BlockOrientation.Standing and state.blockX == endX and state.blockY == endY and not state.splitMode:
        state.game_won = True

    # check for swatch
    if state.blockOrientation == BlockOrientation.Standing:
        if f0 == 's' or f0 == 'h' or f0 == 'v':
            swatchSwitch(state.blockX, state.blockY)
    elif state.blockOrientation == BlockOrientation.Vertical:
        if f0 == 's':
            swatchSwitch(state.blockX, state.blockY)
        if f2 == 's':
            swatchSwitch(state.blockX, state.blockY + 1)
    elif state.blockOrientation == BlockOrientation.Horizontal:
        if f0 == 's':
            swatchSwitch(state.blockX, state.blockY)
        if f1 == 's':
            swatchSwitch(state.blockX + 1, state.blockY)
    
    # check for block merge in split mode
    if state.splitMode:
        if state.blockY == state.blockY2:
            if state.blockX == state.blockX2 + 1:
                state.blockOrientation = BlockOrientation.Horizontal
                state.blockX = state.blockX - 1
                state.splitMode = False
            elif state.blockX == state.blockX2 - 1:
                state.blockOrientation = BlockOrientation.Horizontal
                state.splitMode = False
        elif state.blockX == state.blockX2:
            if state.blockY == state.blockY2 + 1:
                state.blockOrientation = BlockOrientation.Vertical
                state.blockY = state.blockY - 1
                state.splitMode = False
            elif state.blockY == state.blockY2 - 1:
                state.blockOrientation = BlockOrientation.Vertical
                state.splitMode = False
        if not state.splitMode:
            state.blockX2 = 0
            state.blockY2 = 0

class Solver:
    def __init__(self):
        global canvas, width, height
        self.tk = tk = Tk()
        self.canvas = canvas = Canvas(tk, width=800,height=600)
        canvas.pack()
        width, height = tk.getint(canvas['width']), tk.getint(canvas['height'])
    
    def run(self):
        global moves
        while True:
            self.tk.after(400)
            self.canvas.delete("all")
            draw_field()
            draw_block()
            self.tk.update()
            
            if len(moves) > 0:
                move = moves[0]
                if move == "l":
                    move = Move.Left
                elif move == "r":
                    move = Move.Right
                elif move == "u":
                    move = Move.Up
                elif move == "d":
                    move = Move.Down
                elif move == "s":
                    move = Move.SplitSwap
                #print(move)
                move_block(move)
                moves = moves[1:]
            else:
                self.tk.destroy()
                break

def search_impl(move, moves):
    global state
    visited[state.key()] = len(moves)
    s2 = copy.deepcopy(state)
    move_block(move)
    moves.append(move)
    k = state.key()
    if k in visited:
        m2 = visited[k]
        if len(moves) < m2:
            del visited[k]
    if k not in visited:
        if state.game_won:
            wons.append(copy.copy(moves))
        else:
            if not state.game_over:
                search(moves)
    state = s2
    del moves[-1]
    
def search(moves):
    #print(moves_to_string(moves))
    search_impl(Move.Left, moves)
    search_impl(Move.Right, moves)
    search_impl(Move.Up, moves)
    search_impl(Move.Down, moves)
    if state.splitMode:
        search_impl(Move.SplitSwap, moves)

def moves_to_string(moves):
    result = ""
    for move in moves:
        if move == Move.Left:
            result = result + "l"
        elif move == Move.Right:
            result = result + "r"
        elif move == Move.Up:
            result = result + "u"
        elif move == Move.Down:
            result = result + "d"
        elif move == Move.SplitSwap:
            result = result + "s"
    return result

pp = pprint.PrettyPrinter(indent=4)

# solve levels
ln = [1]
#ln = [9]
#for level_number in range(len(levels)):
for level_number in ln:
    level = levels[level_number]
    #level = levels[15]

    state = State()
    state.init_by_level()

    # search for best moves
    visited = dict()
    wons = []

    #start_timing()
    search([])
    #end_timing()

    min = 1e9
    for i in wons:
        if len(i) < min:
            best = i
            min = len(i)
    if len(wons) == 0:
        print("level %i: no solution found" % (level_number + 1))
        # pp.pprint(level)
    else:
        moves = moves_to_string(best)
        print("level %i: %s" % (level_number + 1, moves))

# show result with Tk
state = State()
state.init_by_level()

solver = Solver()
solver.run()
