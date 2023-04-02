#ifndef BLOCK_H
#define BLOCK_H

#include "stdint.h"

enum BlockOrientation_t
{
    Standing,
    Vertical,
    Horizontal
};

extern enum BlockOrientation_t blockOrientation;

extern int8_t blockYOfs;
extern int8_t lastBlockDirection;
extern int8_t blockAnimating;

// 1, if split mode is active
extern uint8_t splitMode;

// normal block position and first small block position in split mode
extern int8_t blockX;
extern int8_t blockY;

// second small block position in split mode
extern int8_t blockX2;
extern int8_t blockY2;

enum BlockDirection_t
{
    Left,
    Up,
    Right,
    Down
};

void moveBlockImpl(enum BlockDirection_t move);

void startBlockFalling();

void drawBlock(int8_t yofs);

void doBlockAnimation();

void blockStartLevel();

void setSplitMode();

void testMerge();

void swapSplit();

#endif
