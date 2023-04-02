#include "level.h"
#include "block.h"

#define MAX_LINES 110
uint8_t swatchesOn[19];
/*
int8_t lineX0[MAX_LINES];
int8_t lineY0[MAX_LINES];
int8_t lineX1[MAX_LINES];
int8_t lineY1[MAX_LINES];
*/

// 5 bytes per line
//
// list changed from absolut points to
// Y,X starting move (or delta)
// scale of the draw
// delta for the draw
//
// also if "scale" is negative, than the
// next draw of the list will not be reached via
// zeroing and move
// but with a delta move from the last draw end (and the scale) the draw was done with
int8_t lineYX_yx_s_dy_dx[((int16_t)MAX_LINES) * 5];

uint8_t lineCount = 0;
int8_t endX = 0;
int8_t endY = 0;

const struct Level *level;
volatile uint8_t levelNumber = 0;

extern void runtimeError(char *msg);

#define ASSERT(test, expr) \
    if (!(expr))           \
    runtimeError(test)

char getField(int8_t x, int8_t y)
{
    char c = 0;
    if (x >= 0 && y >= 0 && x < LEVEL_WIDTH && y < LEVEL_HEIGHT)
    {
        c = level->geometry[(long int)y * LEVEL_WIDTH + (long int)x];
    }
    return c;
}

const uint8_t shifts[] = {1, 2, 4, 8, 16, 32, 64, 128};

uint8_t getShifts(uint8_t bit)
{
    return shifts[bit];
}

int isSwatchFieldOn(int8_t x, int8_t y)
{
    long int index = (long int)y * LEVEL_WIDTH + (long int)x;
    uint8_t bit = (uint8_t)(index & 7);
    index >>= 3;
    return (swatchesOn[index] & getShifts(bit)) > 0;
}

void setSwatchField(int8_t x, int8_t y, int on)
{
    long int index = (long int)y * LEVEL_WIDTH + (long int)x;
    uint8_t bit = (uint8_t)(index & 7);
    index >>= 3;
    if (on)
    {
        swatchesOn[index] |= getShifts(bit);
    }
    else
    {
        swatchesOn[index] &= ~getShifts(bit);
    }
}

uint8_t isField(int8_t x, int8_t y)
{
    char c = getField(x, y);

    // swatches test
    if (c == 'l' || c == 'r' || c == 'k' || c == 'q')
    {
        if (isSwatchFieldOn(x, y))
        {
            c = 'b';
        }
    }

    // normal and split field test
    return (uint8_t)(c == 'b' || c == 'e' || c == 's' || c == 'h' || c == 'f' || c == 'v');
}

void swatchSwitch(int8_t x, int8_t y)
{
    for (uint8_t i = 0; i < level->swatches_count; i++)
    {
        const struct Swatch *swatch = level->swatches[i];
        if (swatch->position.x == x && swatch->position.y == y)
        {
            for (uint8_t j = 0; j < swatch->fields_count; j++)
            {
                const struct SwatchField *field = swatch->fields[j];
                int8_t xf = field->position.x;
                int8_t yf = field->position.y;
                switch (field->action)
                {
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
    // c * x - d * z
    x -= LEVEL_WIDTH / 2 - 4;
    return 14 * x - 6 * z;
}

int8_t y3d(int8_t x, int8_t y, int8_t z)
{
    // b * d * x + a * y + b * c * z
    y -= LEVEL_HEIGHT / 2;
    return 3 * x + 13 * y + 8 * z;
}
#define MAX_SPLIT ((int16_t)((levelNumber == 14) ? 64 : 40)) // optimimum would be 64 - but cranky vectrex don't like that!

#define ABS16(a) (((a) > 0) ? (a) : (-(a)))
#define ABS(a) ((int16_t)((((int8_t)(a))) > 0) ? ((int8_t)(a)) : (-((int8_t)(a))))
#define OK_TO_HALF                                                                       \
    (                                                                                    \
        (ABS(lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)]) < MAX_SPLIT) && \
        (ABS(lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)]) < MAX_SPLIT))
#define HALF_IF_POSSIBLE(c)                                                                                                                   \
    if (OK_TO_HALF)                                                                                                                           \
    {                                                                                                                                         \
        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)] = (lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)] << 1);       \
        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)] = (lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)] << 1);       \
        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 2)] = (lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 2)] >> 1) + (c); \
    }
#define USED_BOARD_SCALE (0x7f)
/*
#define REDUX1 (-1)
#define REDUX2 (-1)
#define REDUX3 (0)
*/

#define REDUX1 ((int8_t)(0))
#define REDUX2 ((int8_t)(0))
#define REDUX3 ((int8_t)(0))

#define HALF_1 (((int8_t)((USED_BOARD_SCALE) >> 1)) + REDUX1)
#define HALF_2 (((int8_t)(((HALF_1) >> 1))) + REDUX2)
#define HALF_3 (((int8_t)(((HALF_2) >> 1))) + REDUX3)

int8_t last_x = -1;
int8_t last_y = -1;
int8_t last_s = -1;

// this checks whether
// the move to this starting point
// instead of a zero ref and a move
// can be done instead with:
// - the same scale the last line was drawn with
// - and from the position the drawing ended (no zeroing than)
const int8_t useHalfling[40] =
    {
        0, // 0 none
        0, // 1 none
        0, // 2 none
        0, // 3 none
        3, // 4 none
        1, // 5 none
        0, // 6 none
        0, // 7 none
        0, // 8 none
        0, // 9 none
        0, // 10 none
        0, // 11 none
        0, // 12 none
        2, // 13 none
        0, // 14 none
        1, // 15 none
        0, // 16 none
        1, // 17 none
        1, // 18 none
        1, // 19 none
        1, // 20 none
        1, // 21 none
        1, // 22 none
        3, // 23 none
        0, // 24 none
        0, // 25 none
        0, // 26 none
        3, // 27 none
        0, // 28 none
        1, // 29 none
        3, // 30 none
        1, // 31 none
        0, // 32 none
        1, // 33 none
        0, // 34 none
};

void checkHalfling()
{
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 2)] = USED_BOARD_SCALE;

    if (useHalfling[levelOffset + levelNumber] == 0)
    {
        last_x = -1;
        last_y = -1;
        last_s = -1;
        return;
    }

    // save before scale changes
    int8_t this_x = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] + lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)];
    int8_t this_y = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] + lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)];

    HALF_IF_POSSIBLE(REDUX1)
    HALF_IF_POSSIBLE(REDUX2)
    HALF_IF_POSSIBLE(REDUX3)

    if (last_s != -1)
    {
        // check the scale of the last drawn line
        // if smaller than 0x7f - than check if our
        // new start is also reachable with that scale
        int oldSacle = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount - 1) * 5 + 2)];

        if ((oldSacle == HALF_1) && (useHalfling[levelOffset + levelNumber] > 0))
        {
            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] - last_y;
            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] - last_x;
            dy = dy << 1;
            dx = dx << 1;
            if ((ABS16(dy) < MAX_SPLIT * 2) && (ABS16(dx) < MAX_SPLIT * 2))
            {
                // yes, we can reach our next start point with
                // the scale of the last draw

                // old scale "negative"
                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount - 1) * 5 + 2)] = (int8_t)(((uint8_t)oldSacle) | 0x80);

                // move as delta
                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = (int8_t)dy;
                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = (int8_t)dx;
            }
        }
        else if ((oldSacle == HALF_2) && (useHalfling[levelOffset + levelNumber] > 1))
        {
            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] - last_y;
            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] - last_x;
            dy = dy << 1;
            dx = dx << 1;
            dy = dy << 1;
            dx = dx << 1;
            if ((ABS16(dy) < MAX_SPLIT * 2) && (ABS16(dx) < MAX_SPLIT * 2))
            {
                // yes, we can reach our next start point with
                // the scale of the last draw

                // old scale "negative"
                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount - 1) * 5 + 2)] = (int8_t)(((uint8_t)oldSacle) | 0x80);

                // move as delta
                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = (int8_t)dy;
                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = (int8_t)dx;
            }
        }
        else if ((oldSacle == HALF_3) && (useHalfling[levelOffset + levelNumber] > 2))
        {
            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] - last_y;
            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] - last_x;
            dy = dy << 1;
            dx = dx << 1;
            dy = dy << 1;
            dx = dx << 1;
            dy = dy << 1;
            dx = dx << 1;
            if ((ABS16(dy) < MAX_SPLIT * 2) && (ABS16(dx) < MAX_SPLIT * 2))
            {
                // yes, we can reach our next start point with
                // the scale of the last draw

                // old scale "negative"
                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount - 1) * 5 + 2)] = (int8_t)(((uint8_t)oldSacle) | 0x80);

                // move as delta
                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = (int8_t)dy;
                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = (int8_t)dx;
            }
        }
    }
    // scale saved after scale changes
    last_x = this_x;
    last_y = this_y;
    last_s = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 2)];
}

void addLineImpl(int8_t x0, int8_t y0, int8_t x1, int8_t y1, uint8_t half)
{
    if (half)
    {
        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = y3d(x0, 0, y0) + 4;
        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = x3d(x0, y0) - 1;
        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)] = y3d(x1, 0, y1) + 3 - (y3d(x0, 0, y0) + 4);
        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)] = x3d(x1, y1) - 6 - (x3d(x0, y0) - 1);
    }
    else
    {
        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = y3d(x0, 0, y0);
        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = x3d(x0, y0);
        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)] = y3d(x1, 0, y1) - y3d(x0, 0, y0);
        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)] = x3d(x1, y1) - x3d(x0, y0);
    }
    checkHalfling();

    lineCount++;
    if (lineCount >= MAX_LINES)
    {
        runtimeError("TOO MANY LINES\x80");
    }
}

void addSplit(int8_t x0, int8_t y0)
{
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = y3d(x0, 0, y0) + 3;
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = x3d(x0, y0) + 6;
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)] = y3d(x0, 0, y0 + 1) + 0 - (y3d(x0, 0, y0) + 3);
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)] = x3d(x0, y0 + 1) + 8 - (x3d(x0, y0) + 6);

    checkHalfling();
    lineCount++;
    if (lineCount >= MAX_LINES)
    {
        runtimeError("TOO MANY LINES\x80");
    }
}

void addLine(int8_t x0, int8_t y0, int8_t x1, int8_t y1, uint8_t half)
{
    int test = 8; // 9 is ok, 10 is too wide!
    while (x1 - x0 > test)
    {
        addLineImpl(x0, y0, x0 + test, y1, half);
        x0 += test;
    }
    while (y1 - y0 > test)
    {
        addLineImpl(x0, y0, x1, y0 + test, half);
        y0 += test;
    }
    addLineImpl(x0, y0, x1, y1, half);
}

void addTarget(int8_t x, int8_t y)
{

    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = y3d(x, 0, y);
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = x3d(x, y);
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)] = y3d(x + 1, 0, y + 1) - (y3d(x, 0, y));
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)] = x3d(x + 1, y + 1) - (x3d(x, y));
    checkHalfling();

    lineCount++;

    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = y3d(x + 1, 0, y);
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = x3d(x + 1, y);
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)] = y3d(x, 0, y + 1) - (y3d(x + 1, 0, y));
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)] = x3d(x, y + 1) - (x3d(x + 1, y));
    checkHalfling();

    lineCount++;
}

/*
  since gcc DEFAULT is int_8
  calculations for large array index with "just numbers" and Muls
  is dangerous, one has to watch out, that the array (with large numbers)
  is accessed right.
  The new variable "index" takes this into account!
*/
void setupX()
{
    long int index;
    int8_t x = 0;
    int8_t y = 0;
    const char *geometry = level->geometry;
    for (y = -1; y < LEVEL_HEIGHT; y++)
    {
        int8_t x0 = -1;
        int8_t x1 = -1;
        for (x = 0; x <= LEVEL_WIDTH; x++)
        {
            char c0 = 0;
            index = (long int)y * LEVEL_WIDTH + (long int)x;
            if (y >= 0 && x < LEVEL_WIDTH)
            {
                c0 = geometry[index];
            }
            if (c0 == 'e')
            {
                addTarget(x, y);
                endX = x;
                endY = y;
            }
            else if (c0 == 'v')
            {
                addSplit(x, y);
            }
            else if (c0 == 's')
            {
                addLine(x, y, x + 1, y + 1, 0);
            }
            else if (c0 == 'h')
            {
                addLine(x + 1, y, x, y + 1, 0);
            }
            else if (c0 == 'f')
            {
                addLine(x, y, x + 1, y, 1);
            }
            if (isField(x, y) || isField(x, y + 1))
            {
                if (x0 < 0)
                    x0 = x;
                x1 = x;
            }
            else
            {
                if (x0 >= 0)
                {
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
    for (x = -1; x < LEVEL_WIDTH; x++)
    {
        int8_t y0 = -1;
        int8_t y1 = -1;
        for (y = 0; y <= LEVEL_HEIGHT; y++)
        {
            if (isField(x, y) || isField(x + 1, y))
            {
                if (y0 < 0)
                    y0 = y;
                y1 = y;
            }
            else
            {
                if (y0 >= 0)
                {
                    addLine(x + 1, y0, x + 1, y1 + 1, 0);
                    y0 = -1;
                }
            }
        }
    }
}

void initSwatches()
{
    for (uint8_t i = 0; i < sizeof(swatchesOn); i++)
    {
        swatchesOn[i] = 0;
    }

    long int index;
    int8_t x = 0;
    int8_t y = 0;
    const char *geometry = level->geometry;
    for (y = 0; y < LEVEL_HEIGHT; y++)
    {
        for (x = 0; x < LEVEL_WIDTH; x++)
        {
            index = (long int)y * LEVEL_WIDTH + (long int)x;
            char c0 = geometry[index];
            if (c0 == 'k' || c0 == 'q')
            {
                setSwatchField(x, y, 1);
            }
        }
    }
}

void initLevel()
{
    last_x = -1;
    last_y = -1;
    last_s = -1;
    lineCount = 0;
    setupX();
    last_x = -1;
    last_y = -1;
    last_s = -1;

    setupY();
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = 0;
    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = 0;
}
