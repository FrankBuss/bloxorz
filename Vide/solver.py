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

def isField(state, x, y):
    c = getField(x, y)

    # swatches test
    if c == 'l' or c == 'r' or c == 'k' or c == 'q':
        if state.swatchesOn[y][x]:
            c = 'b'

    # normal and split field test
    return c == 'b' or c == 'e' or c == 's' or c == 'h' or c == 'f' or c == 'v'

def setupX(state):
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
            if (isField(state, x, y) or isField(state, x, y + 1)):
                addLine(x, y + 1, x + 1, y + 1, 0)

def setupY(state):
    x = 0
    y = 0
    for x in range(-1, LEVEL_WIDTH):
        for y in range(0, LEVEL_HEIGHT + 1):
            if (isField(state, x, y) or isField(state, x + 1, y)):
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

def draw_block(state):
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

def draw_field(state):
    setupX(state)
    setupY(state)
    draw_block(state)

class State:
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

        self.moves = []
 
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
                    self.swatchesOn[y][x] = True
                if c0 == 'e':
                    endX = x
                    endY = y

    def swatchSwitch(self, x, y):
        #if self.splitMode: return
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
                        self.swatchesOn[yf][xf] = not self.swatchesOn[yf][xf]
                    elif action == "on":
                        self.swatchesOn[yf][xf] = True
                    elif action == "off":
                        self.swatchesOn[yf][xf] = False
                    elif action == "split1":
                        self.blockX = xf
                        self.blockY = yf
                        self.splitMode = True
                    elif action == "split2":
                        self.blockX2 = xf
                        self.blockY2 = yf

    def move_block(self, move):
        # move block
        self.moves.append(move)
        two = 2
        if self.splitMode: two = 1
        if self.blockOrientation == BlockOrientation.Standing:
            if move == Move.Left:
                self.blockX = self.blockX - two
                self.blockOrientation = BlockOrientation.Horizontal
            if move == Move.Right:
                self.blockX = self.blockX + 1
                self.blockOrientation = BlockOrientation.Horizontal
            if move == Move.Up:
                self.blockY = self.blockY + 1
                self.blockOrientation = BlockOrientation.Vertical
            if move == Move.Down:
                self.blockY = self.blockY - two
                self.blockOrientation = BlockOrientation.Vertical
        elif self.blockOrientation == BlockOrientation.Vertical:
            if move == Move.Left:
                self.blockX = self.blockX - 1
            if move == Move.Right:
                self.blockX = self.blockX + 1
            if move == Move.Up:
                self.blockY = self.blockY + two
                self.blockOrientation = BlockOrientation.Standing
            if move == Move.Down:
                self.blockY = self.blockY - 1
                self.blockOrientation = BlockOrientation.Standing
        elif self.blockOrientation == BlockOrientation.Horizontal:
            if move == Move.Left:
                self.blockX = self.blockX - 1
                self.blockOrientation = BlockOrientation.Standing
            if move == Move.Right:
                self.blockX = self.blockX + two
                self.blockOrientation = BlockOrientation.Standing
            if move == Move.Up:
                self.blockY = self.blockY + 1
            if move == Move.Down:
                self.blockY = self.blockY - 1
        
        if self.splitMode and move == Move.SplitSwap:
            self.blockX, self.blockY, self.blockX2, self.blockY2 = self.blockX2, self.blockY2, self.blockX, self.blockY
        
        # check for out of field
        c0 = isField(self, self.blockX, self.blockY)
        c1 = isField(self, self.blockX + 1, self.blockY)
        c2 = isField(self, self.blockX, self.blockY + 1)
        f0 = getField(self.blockX, self.blockY)
        f1 = getField(self.blockX + 1, self.blockY)
        f2 = getField(self.blockX, self.blockY + 1)
        if self.splitMode:
            if not c0:
                self.game_over = True
        else:
            if self.blockOrientation == BlockOrientation.Standing:
                if not c0 or f0 == 'f':
                    self.game_over = True
            elif self.blockOrientation == BlockOrientation.Vertical:
                if not c0 or not c2:
                    self.game_over = True
            elif self.blockOrientation == BlockOrientation.Horizontal:
                if not c0 or not c1:
                    self.game_over = True
        
        # check for block at target
        if self.blockOrientation == BlockOrientation.Standing and self.blockX == endX and self.blockY == endY and not self.splitMode:
            self.game_won = True

        # check for swatch
        #print(f0, self.blockX, self.blockY)
        if self.splitMode:
            if f0 == 's' or f0 == 'h':
                self.swatchSwitch(self.blockX, self.blockY)
        else:
            if self.blockOrientation == BlockOrientation.Standing:
                if f0 == 's' or f0 == 'h' or f0 == 'v':
                    self.swatchSwitch(self.blockX, self.blockY)
            elif self.blockOrientation == BlockOrientation.Vertical:
                if f0 == 's':
                    self.swatchSwitch(self.blockX, self.blockY)
                if f2 == 's':
                    self.swatchSwitch(self.blockX, self.blockY + 1)
            elif self.blockOrientation == BlockOrientation.Horizontal:
                if f0 == 's':
                    self.swatchSwitch(self.blockX, self.blockY)
                if f1 == 's':
                    self.swatchSwitch(self.blockX + 1, self.blockY)
        
        # check for block merge in split mode
        if self.splitMode:
            if self.blockY == self.blockY2:
                if self.blockX == self.blockX2 + 1:
                    self.blockOrientation = BlockOrientation.Horizontal
                    self.blockX = self.blockX - 1
                    self.splitMode = False
                elif self.blockX == self.blockX2 - 1:
                    self.blockOrientation = BlockOrientation.Horizontal
                    self.splitMode = False
            elif self.blockX == self.blockX2:
                if self.blockY == self.blockY2 + 1:
                    self.blockOrientation = BlockOrientation.Vertical
                    self.blockY = self.blockY - 1
                    self.splitMode = False
                elif self.blockY == self.blockY2 - 1:
                    self.blockOrientation = BlockOrientation.Vertical
                    self.splitMode = False
            if not self.splitMode:
                self.blockX2 = 0
                self.blockY2 = 0

    def key(self):
        flat = [j for sub in self.swatchesOn for j in sub]
        x = self.blockX
        y = self.blockY
        x2 = self.blockX2
        y2 = self.blockY2
        #if x > x2 or y > y2:
        #    x, y, x2, y2 = x2, y2, x, y
        return (self.blockOrientation, x, y, x2, y2, self.splitMode, tuple(flat), self.game_over, self.game_won)

class Solver:
    def __init__(self):
        global canvas, width, height

        self.state = State()
        self.state.init_by_level()

        self.tk = tk = Tk()
        self.canvas = canvas = Canvas(tk, width=800,height=600)

        tk.bind('<Left>', lambda e: self.move(Move.Left))
        tk.bind('<Right>', lambda e: self.move(Move.Right))
        tk.bind('<Up>', lambda e: self.move(Move.Up))
        tk.bind('<Down>', lambda e: self.move(Move.Down))
        tk.bind('<space>', lambda e: self.move(Move.SplitSwap))
        canvas.pack()
        width, height = tk.getint(canvas['width']), tk.getint(canvas['height'])
    
    def move(self, direction):
        self.state.move_block(direction)
        print(moves_to_string(self.state.moves))
        if self.state.game_won:
            print("won")
        if self.state.game_over:
            print("game over")
            self.state = State()
            self.state.init_by_level()

    def run(self):
        global moves
        while True:
            self.tk.after(100)
            self.canvas.delete("all")
            draw_field(self.state)
            self.tk.update()
            if len(moves) > 0:
                print(moves[0])
                move = string_to_move(moves[0])
                #print(move)
                self.move(move)
                moves = moves[1:]
            #else:
                #self.tk.destroy()
                #break

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

def string_to_move(move):
    if move == "l":
        return Move.Left
    elif move == "r":
        return Move.Right
    elif move == "u":
        return Move.Up
    elif move == "d":
        return Move.Down
    elif move == "s":
        return Move.SplitSwap
    return None

def try_move(state, move, states):
    # move
    s2 = copy.deepcopy(state)
    s2.move_block(move)

    # ignore move, if the same state happened already, but with less moves
    v = visited.get(s2.key())
    if v and v < len(s2.moves):
        return

    # add state to visited dict and states queue
    visited[s2.key()] = len(s2.moves)
    states.append(s2)
    
def search(state):
    states = [state]
    visited[state.key()] = 0
    while len(states):
        state = states.pop(0)
        if state.game_won:
            wons.append(state.moves)
            #print("solution:", moves_to_string(state.moves))
        else:
            if not state.game_over:
                try_move(state, Move.Left, states)
                try_move(state, Move.Right, states)
                try_move(state, Move.Up, states)
                try_move(state, Move.Down, states)
                if state.splitMode:
                    try_move(state, Move.SplitSwap, states)

# search for a solution and return the moves string, or None if no solution found
def find_solution(level_number):
    global level, visited, wons
    level = levels[level_number]
    state = State()
    state.init_by_level()

    # search for a solution
    visited = dict()
    wons = []

#    start_timing()
    search(state)
#    end_timing()

    min = 1e9
    for i in wons:
        if len(i) < min:
            best = i
            min = len(i)
    if len(wons) == 0:
        return None
    else:
        return moves_to_string(best)

pp = pprint.PrettyPrinter(indent=4)

# solve one level
#ln = [1]

# solve all levels
ln = [x for x in range(len(levels))]

solutions = []
for level_number in ln:
    solution = find_solution(level_number)
    if solution:
        print("solution found for level %d: %s" % (level_number, solution))
    if not solution:
        print("no solution found for level %d" % level_number)
        break
    solutions.append(solution)

# test solutions
solutions_all = [
    "ulluulu",
    "ruluuuurrluluurur",
    "rdluruuuurruuulllur",
    "rdruuruuuuuululllllurddddddl",
    "dddudddddlulluuuuluuuuddddldddddd",
    "uuullullulurdddrrdrrruuluurdlluullu",
    "ldruuuuuludrdddddlululuuurruldrurruuulululdr",
    "uulllllruru",
    "uluuuuuuruldddddrsluuuuul",
    "uudlllulllllddddrdddlruuuluuuslusrrurrrrddrdddddd",
    "uuuurdllluuuldrdddrruruulurdddlldddrrurrdluruld",
    "dluruldrurururuuullldrurrrddduuullldluruldrrruurldllldrurdrdddlld",
    "rrdlululdrrrrdddddddlllurdlullulluruuuuurdldrr",
    "uuuurddluuulllldddluruurrllddluluuddrddruuurrrrddddddruldddddlllulu",
    "uuuurrsrrrrruuurruuululrrsdddddddldddlllldruluuuuuuu",
    "uuuusulsursuuuu",
    "llllldruuuuuruuudddlddddrrrrrruuuuluuuuldrulruldrrulddrulddddrddddlllllluuuuruuullrdrdddldddrrrdruuuuuluuu",
    "ldruuuurrlldddlurddluruuullrrdddrdlurddlllluuddrrrruulurdllurdluruuuuulllurdllurdldru",
    "uuuuuuuulurddddddluruuuuullllldddddldruuuuuurdldddddlllluuuddddddrr",
    "ldluldrrurrdddlddrulldlldlrurrurruuuldlddddlllllsrdlsuuuul",
    "uldrdluruuruuurdlllrrruldddlddldrulurdlurdlullulluuurrllddrdluuurrrruuu",
    "uruuuulullldlrurrrdruldrdrddldddluruldlllulrdrrrurdlururuuuluuuur",
    "ulluruuuuurdlurdddrrdsrlluullluuurur",
    "lluurruruuuuulruuuu",
    "ruldruldruuuurdrddrudluullddddluuruuurruuuruldrruldruld",
    "rrdddldddluruurruuluuluurrsrrrddddddldddllllrrrruuuuulllluuusddrddddllllluud",
    "uuuuuruuulurdddlddddddlurddluruuuuudruuuullldllldddldrrrruldddddddrdllurddlurrdluurdlluurddrulddruldurdlurlurdllurdlurd",
    "dllluldrulluulluuurrrdrdrdrdluulululuuldlddrrrdrdrdrdddlruuuldrddldruuululululuddddllldddddrrdddlsdddddddrrdddr",
    "uldrdlurulluuddrrdlurdldrdrrdduulluluruldrurruuddlllllluuddrrrrdddddduuuuldruuuuuudddddrdlllldddlurdlurd",
    "lulluuruuluuuurlddddrdddlldruuuuurruruuurulllddldlurruldlddddrddlddrdldrurldluruluurdlldruuuuuuurdrrruuururdddddld",
    "rdlddrrrrlllluuurdlurrrrurdllurdldddllldllrrurrrddddlurdllllldrudruluruuruuluuurdlurrrrruld",
    "rrdlururuldurdldldruldrururulddllldlddrdluuurrrrruruurlddldlllllddddrudluuuurrrrruruurlddldllllldddruluurrruruurdldldlurddrdddddl",
    "uuuurdlldrurruululurddrululluldlluurlddrrurdrrdrdlurdddllldlddldr"
]
for level_number in range(len(solutions)):
    level = levels[level_number]
    state = State()
    state.init_by_level()
    solution = solutions[level_number]
    for move in solution:
        move = string_to_move(move)
        state.move_block(move)
        if state.game_over:
            print("level %d: failed, game over" % level_number)
            break
    if state.game_won:
        print("level %d: won" % level_number)
    else:
        if not state.game_over:
            print("level %d: failed, not won" % level_number)

# show move and play with Tk
moves = ""
level = levels[27]
pp.pprint(level)  # debug print of the current level
Solver().run()
