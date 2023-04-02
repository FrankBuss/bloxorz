#include "stdint.h"
#include "hardware.h"
#include "block.i"
#include "block.h"

extern int8_t x3d(int8_t x, int8_t z);
extern int8_t y3d(int8_t x, int8_t y, int8_t z);

enum BlockOrientation_t blockOrientation;
int8_t blockX;
int8_t blockY;

int8_t blockX2;
int8_t blockY2;

uint8_t splitMode;

const int8_t **blockAnimation;
const int8_t **nextBlockAnimation;
int8_t blockAnimationStep;
int8_t blockAnimating;
int8_t nextBlockX;
int8_t nextBlockY;
int8_t lastBlockDirection;
int8_t blockYOfs;

void moveBlockImpl(enum BlockDirection_t move)
{
    blockAnimating = 1;
    lastBlockDirection = move;
    if (splitMode)
    {
        switch (blockOrientation)
        {
        case Standing:
            switch (move)
            {
            case Left:
                blockAnimation = height1FallingLeft;
                nextBlockAnimation = height1FallingLeft;
                nextBlockX = blockX - 1;
                nextBlockY = blockY;
                break;
            case Right:
                blockAnimation = height1FallingRight;
                nextBlockAnimation = height1FallingRight;
                nextBlockX = blockX + 1;
                nextBlockY = blockY;
                break;
            case Up:
                blockAnimation = height1FallingBack;
                nextBlockAnimation = height1FallingBack;
                nextBlockX = blockX;
                nextBlockY = blockY + 1;
                break;
            case Down:
                blockAnimation = height1FallingFront;
                nextBlockAnimation = height1FallingFront;
                nextBlockX = blockX;
                nextBlockY = blockY - 1;
                break;
            }
            break;
        default:
            break;
        }
    }
    else
    {
        switch (blockOrientation)
        {
        case Standing:
            switch (move)
            {
            case Left:
                blockAnimation = height2FallingLeft;
                nextBlockAnimation = width2RollingFront;
                nextBlockX = blockX - 2;
                nextBlockY = blockY;
                blockOrientation = Horizontal;
                break;
            case Right:
                blockAnimation = height2FallingRight;
                nextBlockAnimation = width2RollingFront;
                nextBlockX = blockX + 1;
                nextBlockY = blockY;
                blockOrientation = Horizontal;
                break;
            case Up:
                blockAnimation = height2FallingBack;
                nextBlockAnimation = depth2RollingLeft;
                nextBlockX = blockX;
                nextBlockY = blockY + 1;
                blockOrientation = Vertical;
                break;
            case Down:
                blockAnimation = height2FallingFront;
                nextBlockAnimation = depth2RollingLeft;
                nextBlockX = blockX;
                nextBlockY = blockY - 2;
                blockOrientation = Vertical;
                break;
            }
            break;
        case Vertical:
            switch (move)
            {
            case Left:
                blockAnimation = depth2RollingLeft;
                nextBlockAnimation = depth2RollingLeft;
                nextBlockX = blockX - 1;
                nextBlockY = blockY;
                break;
            case Right:
                blockAnimation = depth2RollingRight;
                nextBlockAnimation = depth2RollingLeft;
                nextBlockX = blockX + 1;
                nextBlockY = blockY;
                break;
            case Up:
                blockAnimation = height2RisingBack;
                nextBlockAnimation = height2FallingFront;
                nextBlockX = blockX;
                nextBlockY = blockY + 2;
                blockOrientation = Standing;
                break;
            case Down:
                blockAnimation = height2RisingFront;
                nextBlockAnimation = height2FallingFront;
                nextBlockX = blockX;
                nextBlockY = blockY - 1;
                blockOrientation = Standing;
                break;
            }
            break;
        case Horizontal:
            switch (move)
            {
            case Left:
                blockAnimation = height2RisingLeft;
                nextBlockAnimation = height2FallingRight;
                nextBlockX = blockX - 1;
                nextBlockY = blockY;
                blockOrientation = Standing;
                break;
            case Right:
                blockAnimation = height2RisingRight;
                nextBlockAnimation = height2FallingLeft;
                nextBlockX = blockX + 2;
                nextBlockY = blockY;
                blockOrientation = Standing;
                break;
            case Up:
                blockAnimation = width2RollingBack;
                nextBlockAnimation = width2RollingBack;
                nextBlockX = blockX;
                nextBlockY = blockY + 1;
                break;
            case Down:
                blockAnimation = width2RollingFront;
                nextBlockAnimation = width2RollingBack;
                nextBlockX = blockX;
                nextBlockY = blockY - 1;
                break;
            }
            break;
        }
    }
}

void Draw_VLpo(void *const x)
{
    (void)x;
    asm("                    LDD      1,X                          ;Get next coordinate pair  ");
    asm("shiftOff1:  ");
    asm("                    STA      *0xd001                  ;Send Y to A/D  ");
    asm("                    CLR      *0xd000                  ;Enable mux  ");
    asm("                    LDA      ,X                           ;Get pattern byte  ");
    asm("                    INC      *0xd000                  ;Disable mux  ");
    asm("                    STB      *0xd001                  ;Send X to A/D  ");
    asm("                    ldb      #0  ");
    asm("                    STA      *0xd00a               ;Store pattern in shift register  ");
    asm("                    STB      *0xd005               ;Clear T1H  ");

    asm("                    LEAX     3,X                          ;Advance to next point in list  ");

    asm("	    tfr a,a    ; 6 ");
    asm("	    tfr a,a    ; 6 ");
    asm("	    tfr a,a    ; 6 ");
    asm("	    tfr a,a    ; 6 ");

    asm("                    LDA      ,X                           ;Get next pattern byte  ");

    asm("                    bgt      macroEnd2  ");
    //    asm("                    STB      *0xd00a               ;Clear shift register (blank output)  ");
    asm("                    LDD      1,X                          ;Get next coordinate pair  ");
    asm("shiftOn1:  ");
    asm("                    STA      *0xd001                  ;Send Y to A/D  ");
    asm("                    CLR      *0xd000                  ;Enable mux  ");
    asm("                    LDA      ,X                           ;Get pattern byte  ");
    asm("                    INC      *0xd000                  ;Disable mux  ");
    asm("                    STB      *0xd001                  ;Send X to A/D  ");
    asm("                    ldb      #0  ");
    asm("                    STA      *0xd00a               ;Store pattern in shift register  ");
    asm("                    STB      *0xd005               ;Clear T1H  ");
    asm("                    LEAX     3,X                          ;Advance to next point in list  ");

    asm("                    LDD      1,X                          ;Get next coordinate pair  ");
    asm("	    tfr a,a    ; 6 ");
    asm("	    tfr a,a    ; 6 ");
    asm("	    tfr a,a    ; 6 ");
    asm("	    nop    ; 6 ");

    asm("                    tst      ,X  ");
    asm("                    beq      shiftOff1  ");
    asm("                    bmi      shiftOn1  ");
    asm("	    tfr a,a    ; 6 ");
    asm("                    ldb      #0  ");
    asm("                    STB      *0xd00a               ;Clear shift register (blank output)  ");
    asm("macroEnd2:  ");
}

void drawBlock(int8_t yofs)
{
    //    zergnd(); // filed draw is exited with zero
    intens(0x63);
    int8_t yy = y3d(blockX, 0, blockY);

    if (yofs < -30)
    {
        positd(0, yofs);
        positd(x3d(blockX, blockY), yy);
    }
    else
    {
        positd(x3d(blockX, blockY), yy + yofs);
    }

    dp_VIA_t1_cnt_lo = 0x7f / FACTOR; // scale
                                      //    pack1x((void*)(blockAnimation[blockAnimationStep]));
    Draw_VLpo((void *)(blockAnimation[blockAnimationStep]));

    // inactive block in split mode
    if (splitMode)
    {
        zergnd();
        intens(0x35);
        yy = y3d(blockX2, 0, blockY2);

        if (yofs < -50)
        {
            positd(0, yofs);
            positd(x3d(blockX2, blockY2), yy);
        }
        else
        {
            positd(x3d(blockX2, blockY2), yy + yofs);
        }

        dp_VIA_t1_cnt_lo = 0x7f / FACTOR; // scale
                                          //        pack1x((void*)(height1FallingLeft[0]));
        Draw_VLpo((void *)(height1FallingLeft[0]));
    }
}

void doBlockAnimation()
{
    if (blockAnimating)
    {
        if (++blockAnimationStep == BLOCK_STEPS_COUNT)
        {
            blockX = nextBlockX;
            blockY = nextBlockY;
            blockAnimationStep = 0;
            blockAnimation = nextBlockAnimation;
            blockAnimating = 0;
        }
    }
}

void blockStartLevel()
{
    blockAnimation = height2FallingLeft;
    blockAnimationStep = 0;
    blockAnimating = 0;
    blockOrientation = Standing;
    splitMode = 0;
}

void setSplitMode()
{
    blockAnimation = height1FallingLeft;
    blockOrientation = Standing;
    splitMode = 1;
}

void testMerge()
{
    if (blockY == blockY2)
    {
        if (blockX == blockX2 + 1)
        {
            blockAnimation = width2RollingFront;
            blockOrientation = Horizontal;
            blockX--;
            splitMode = 0;
        }
        else if (blockX == blockX2 - 1)
        {
            blockAnimation = width2RollingFront;
            blockOrientation = Horizontal;
            splitMode = 0;
        }
    }
    else if (blockX == blockX2)
    {
        if (blockY == blockY2 + 1)
        {
            blockAnimation = depth2RollingLeft;
            blockOrientation = Vertical;
            blockY--;
            splitMode = 0;
        }
        else if (blockY == blockY2 - 1)
        {
            blockAnimation = depth2RollingLeft;
            blockOrientation = Vertical;
            ;
            splitMode = 0;
        }
    }
}

void swapSplit()
{
    int8_t xt = blockX;
    int8_t yt = blockY;
    blockX = blockX2;
    blockY = blockY2;
    blockX2 = xt;
    blockY2 = yt;
}
