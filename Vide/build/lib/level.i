# 1 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.c"
# 1 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.h" 1



# 1 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/stdint.h" 1



typedef unsigned long uint16_t;
typedef signed char int8_t;
typedef long int16_t;
typedef unsigned char uint8_t;
# 5 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.h" 2
# 13 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.h"
enum SwatchType {
    SWATCH_TYPE_S,
    SWATCH_TYPE_H,
    SWATCH_TYPE_V,
};

enum SwatchFieldAction {
    SWATCH_FIELD_ACTION_ONOFF,
    SWATCH_FIELD_ACTION_ON,
    SWATCH_FIELD_ACTION_OFF,
    SWATCH_FIELD_ACTION_SPLIT1,
    SWATCH_FIELD_ACTION_SPLIT2,
};

struct Point {
    const int8_t const x;
    const int8_t const y;
};

struct SwatchField {
    const enum SwatchFieldAction const action;
    const struct Point const position;
};

struct Swatch {
    const enum SwatchType type;
    const struct Point const position;
    const uint8_t fields_count;
    const struct SwatchField const* const fields[];
};

struct Level {
    const char* geometry;
    const struct Point const start;
    const uint8_t swatches_count;
    const struct Swatch const* const swatches[];
};

extern const struct Level* level;
extern uint8_t levelNumber;
extern int8_t startX;
extern int8_t startY;
extern int8_t endX;
extern int8_t endY;
extern const struct Level* const levels[];
extern const uint8_t levelCount;
extern const uint8_t levelOffset;
extern const uint8_t nextBank;


uint8_t isField(int8_t x, int8_t y);


char getField(int8_t x, int8_t y);

void initSwatches();
void swatchSwitch(int8_t x, int8_t y);

void initLevel();

int8_t x3d(int8_t x, int8_t z);

int8_t y3d(int8_t x, int8_t y, int8_t z);
# 2 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.c" 2
# 1 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.h" 1





enum BlockOrientation_t {
    Standing,
    Vertical,
    Horizontal
};

extern enum BlockOrientation_t blockOrientation;

extern int8_t blockYOfs;
extern int8_t lastBlockDirection;
extern int8_t blockAnimating;


extern uint8_t splitMode;


extern int8_t blockX;
extern int8_t blockY;


extern int8_t blockX2;
extern int8_t blockY2;

enum BlockDirection_t {
    Left, Up, Right, Down
};

void moveBlockImpl(enum BlockDirection_t move);

void startBlockFalling();

void drawBlock(int8_t yofs);

void doBlockAnimation();

void blockStartLevel();

void setSplitMode();

void testMerge();

void swapSplit();
# 3 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.c" 2


uint8_t swatchesOn[19];
int8_t lineX0[120];
int8_t lineY0[120];
int8_t lineX1[120];
int8_t lineY1[120];
uint8_t lineCount = 0;
int8_t endX = 0;
int8_t endY = 0;

const struct Level* level;
uint8_t levelNumber = 0;

extern void runtimeError(char* msg);





char getField(int8_t x, int8_t y)
{
    char c = 0;
    if (x >= 0 && y >= 0 && x < 10 && y < 15) {
        c = level->geometry[(long int) y*10 + (long int)x];
    }
    return c;
}

const uint8_t shifts[] = { 1, 2, 4, 8, 16, 32, 64, 128 };

uint8_t getShifts(uint8_t bit)
{
    return shifts[bit];
}

int isSwatchFieldOn(int8_t x, int8_t y)
{
    long int index = (long int) y*10 + (long int)x;
    uint8_t bit = (uint8_t) (index & 7);
    index >>= 3;
    return (swatchesOn[index] & getShifts(bit)) > 0;
}

void setSwatchField(int8_t x, int8_t y, int on)
{
    long int index = (long int) y*10 + (long int)x;
    uint8_t bit = (uint8_t) (index & 7);
    index >>= 3;
    if (on) {
        swatchesOn[index] |= getShifts(bit);
    } else {
        swatchesOn[index] &= ~getShifts(bit);
    }
}

uint8_t isField(int8_t x, int8_t y)
{
    char c = getField(x, y);


    if (c == 'l' || c == 'r' || c == 'k' || c == 'q') {
        if (isSwatchFieldOn(x, y)) {
            c = 'b';
        }
    }


    return (uint8_t) (c == 'b' || c == 'e' || c == 's' || c == 'h' || c == 'f' || c == 'v');
}

void swatchSwitch(int8_t x, int8_t y)
{
    for (uint8_t i = 0; i < level->swatches_count; i++) {
        const struct Swatch* swatch = level->swatches[i];
        if (swatch->position.x == x && swatch->position.y == y) {
            for (uint8_t j = 0; j < swatch->fields_count; j++) {
                const struct SwatchField* field = swatch->fields[j];
                int8_t xf = field->position.x;
                int8_t yf = field->position.y;
                switch (field->action) {
                case SWATCH_FIELD_ACTION_ONOFF:
                    setSwatchField(xf, yf, !isSwatchFieldOn(xf, yf));
                    break;
                case SWATCH_FIELD_ACTION_ON:
                    setSwatchField(xf, yf, 1);
                    break;
                case SWATCH_FIELD_ACTION_OFF:
                    setSwatchField(xf, yf, 0);
                    break;
                case SWATCH_FIELD_ACTION_SPLIT1:
                    blockX = xf;
                    blockY = yf;
                    setSplitMode();
                    break;
                case SWATCH_FIELD_ACTION_SPLIT2:
                    blockX2 = xf;
                    blockY2 = yf;
                    break;
                }
            }
        }
    }
    initLevel();
}

int8_t x3d(int8_t x, int8_t z)
{

    x -= 10 / 2 - 4;
    return 14 * x - 6 * z;
}

int8_t y3d(int8_t x, int8_t y, int8_t z)
{

    y -= 15 / 2;
    return 3 * x + 13 * y + 8 * z;
}

void addLineImpl(int8_t x0, int8_t y0, int8_t x1, int8_t y1, uint8_t half)
{
    lineX0[lineCount] = x3d(x0, y0);
    lineY0[lineCount] = y3d(x0, 0, y0);
    lineX1[lineCount] = x3d(x1, y1);
    lineY1[lineCount] = y3d(x1, 0, y1);
    if (half) {
        lineX0[lineCount] -= 1;
        lineY0[lineCount] += 4;
        lineX1[lineCount] -= 6;
        lineY1[lineCount] += 3;
    }

    lineCount++;
    if (lineCount >= 120) {
        runtimeError("TOO MANY LINES\x80");
    }
}

void addSplit(int8_t x0, int8_t y0)
{
    lineX0[lineCount] = x3d(x0, y0) + 6;
    lineY0[lineCount] = y3d(x0, 0, y0) + 3;
    lineX1[lineCount] = x3d(x0, y0 + 1) + 8;
    lineY1[lineCount] = y3d(x0, 0, y0 + 1) + 0;

    lineCount++;
    if (lineCount >= 120) {
        runtimeError("TOO MANY LINES\x80");
    }
}

void addLine(int8_t x0, int8_t y0, int8_t x1, int8_t y1, uint8_t half)
{
    int test = 5;
    while (x1 - x0 > test) {
        addLineImpl(x0, y0, x0 + test, y1, half);
        x0 += test;
    }
    while (y1 - y0 > test) {
        addLineImpl(x0, y0, x1, y0 + test, half);
        y0 += test;
    }
    addLineImpl(x0, y0, x1, y1, half);
}

void addTarget(int8_t x, int8_t y)
{
    lineX0[lineCount] = x3d(x, y);
    lineY0[lineCount] = y3d(x, 0, y);
    lineX1[lineCount] = x3d(x + 1, y + 1);
    lineY1[lineCount] = y3d(x + 1, 0, y + 1);
    lineCount++;

    lineX0[lineCount] = x3d(x + 1, y);
    lineY0[lineCount] = y3d(x + 1, 0, y);
    lineX1[lineCount] = x3d(x, y + 1);
    lineY1[lineCount] = y3d(x, 0, y + 1);
    lineCount++;
}
# 191 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.c"
void setupX()
{
    long int index;
    int8_t x = 0;
    int8_t y = 0;
    const char* geometry = level->geometry;
    for (y = -1; y < 15; y++) {
        int8_t x0 = -1;
        int8_t x1 = -1;
        for (x = 0; x <= 10; x++) {
            char c0 = 0;
            index = (long int) y*10 + (long int)x;
            if (y >= 0 && x < 10) {
                c0 = geometry[index];
            }
            if (c0 == 'e') {
                addTarget(x, y);
                endX = x;
                endY = y;
            } else if (c0 == 'v') {
                addSplit(x, y);
            } else if (c0 == 's') {
                addLine(x, y, x + 1, y + 1, 0);
            } else if (c0 == 'h') {
                addLine(x + 1, y, x, y + 1, 0);
            } else if (c0 == 'f') {
                addLine(x, y, x + 1, y, 1);
            }
            if (isField(x, y) || isField(x, y + 1)) {
                if (x0 < 0) x0 = x;
                x1 = x;
            } else {
                if (x0 >= 0) {
                    addLine(x0, y + 1, x1 + 1, y + 1, 0);
                    x0 = -1;
                }
            }
        }
    }
}

void setupY()
{
    int8_t x = 0;
    int8_t y = 0;
    for (x = -1; x < 10; x++) {
        int8_t y0 = -1;
        int8_t y1 = -1;
        for (y = 0; y <= 15; y++) {
            if (isField(x, y) || isField(x + 1, y)) {
                if (y0 < 0) y0 = y;
                y1 = y;
            } else {
                if (y0 >= 0) {
                    addLine(x + 1, y0, x + 1, y1 + 1, 0);
                    y0 = -1;
                }
            }
        }
    }
}

void initSwatches()
{
    for (uint8_t i = 0; i < sizeof(swatchesOn); i++) {
        swatchesOn[i] = 0;
    }

    long int index;
    int8_t x = 0;
    int8_t y = 0;
    const char* geometry = level->geometry;
    for (y = 0; y < 15; y++) {
        for (x = 0; x < 10; x++) {
            index = (long int) y*10 + (long int)x;
            char c0 = geometry[index];
            if (c0 == 'k' || c0 == 'q') {
                setSwatchField(x, y, 1);
            }
        }
    }
}

void initLevel()
{
    lineCount = 0;
    setupX();
    setupY();
}
