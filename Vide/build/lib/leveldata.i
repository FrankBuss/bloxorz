# 1 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/leveldata.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/leveldata.c"
# 1 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bank.h" 1
# 2 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/leveldata.c" 2


# 1 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/../leveldata0.c" 1
# 1 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/../source/level.h" 1



# 1 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/../source/stdint.h" 1



typedef unsigned long uint16_t;
typedef signed char int8_t;
typedef long int16_t;
typedef unsigned char uint8_t;
# 5 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/../source/level.h" 2
# 13 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/../source/level.h"
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
# 2 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/../leveldata0.c" 2

const uint8_t levelCount = 15;
const uint8_t levelOffset = 1;
const uint8_t nextBank = 1;

const struct Swatch const swatch_1_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 7, .y = 8 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 4, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 4, .y = 11 },
            },
        }
};

const struct Swatch const swatch_1_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 6, .y = 2 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 4, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 4, .y = 5 },
            },
        }
};

const struct Swatch const swatch_4_0 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 8, .y = 8 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 6 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 5 },
            },
        }
};

const struct Swatch const swatch_4_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 6, .y = 3 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 1, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 1, .y = 6 },
            },
        }
};

const struct Swatch const swatch_4_2 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 4, .y = 6 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 1, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 1, .y = 6 },
            },
        }
};

const struct Swatch const swatch_4_3 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 3, .y = 14 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 1, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 1, .y = 6 },
            },
        }
};

const struct Swatch const swatch_6_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 4, .y = 9 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 2, .y = 3 },
            },
        }
};

const struct Swatch const swatch_7_0 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 5, .y = 4 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 8, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 2, .y = 10 },
            },
        }
};

const struct Swatch const swatch_8_0 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 5, .y = 13 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 5, .y = 12 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 5, .y = 2 },
            },
        }
};

const struct Swatch const swatch_9_0 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 8, .y = 13 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 8, .y = 13 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 8, .y = 10 },
            },
        }
};

const struct Swatch const swatch_9_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 0, .y = 6 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 5 },
            },
        }
};

const struct Swatch const swatch_9_2 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 0, .y = 12 },
    .fields_count = 4,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 7 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 8 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 7, .y = 13 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 6, .y = 13 },
            },
        }
};

const struct Swatch const swatch_10_0 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 3, .y = 8 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 9, .y = 6 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 8, .y = 6 },
            },
        }
};

const struct Swatch const swatch_11_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 9, .y = 13 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 5, .y = 7 },
            },
        }
};

const struct Swatch const swatch_11_1 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 7, .y = 7 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 7, .y = 13 },
            },
        }
};

const struct Swatch const swatch_13_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 6, .y = 12 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 7, .y = 1 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 7, .y = 2 },
            },
        }
};

const struct Swatch const swatch_13_1 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 0, .y = 13 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 6, .y = 1 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 6, .y = 2 },
            },
        }
};

const struct Swatch const swatch_14_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 8, .y = 12 },
    .fields_count = 4,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 7, .y = 2 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 7, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 6 },
            },
        }
};

const struct Swatch const swatch_14_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 6, .y = 8 },
    .fields_count = 4,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 6 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 11 },
            },
        }
};

const struct Swatch const swatch_14_2 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 4, .y = 7 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 8, .y = 13 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 1, .y = 1 },
            },
        }
};

const struct Swatch const swatch_14_3 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 2, .y = 11 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 1, .y = 9 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 1, .y = 10 },
            },
        }
};

const struct Swatch const swatch_14_4 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 0, .y = 11 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 1, .y = 9 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 1, .y = 10 },
            },
        }
};

const struct Level const level0 =
{
    .geometry =
        "          "
        "          "
        "     bbb  "
        "    bbbb  "
        "    bbbb  "
        "    bbb   "
        "    bbb   "
        "   bbbb   "
        "  bbbb    "
        "  bebb    "
        "  bbbb    "
        "   bb     "
        "          "
        "          "
        "          "
    , .start = { .x = 6, .y = 3 }
    , .swatches_count = 0
};
const struct Level const level1 =
{
    .geometry =
        "   bbbbb  "
        "   bbbbb  "
        "   bbbsb  "
        "   bbbbb  "
        "    l     "
        "    r     "
        "   bbbbbb "
        "   bbbbbb "
        "   bbbbhb "
        "   bbbbbb "
        "    l     "
        "    r     "
        "    bbbbb "
        "    bbbeb "
        "    bbbbb "
    , .start = { .x = 4, .y = 1 }
    , .swatches_count = 2
    , .swatches =
    {
        &swatch_1_0,
        &swatch_1_1,
    },
};
const struct Level const level2 =
{
    .geometry =
        "   bbbb   "
        "   bbbb   "
        "   bbbb   "
        "   bbbb   "
        "     b    "
        "     b    "
        "     bbb  "
        "     bbb  "
        "     bbb  "
        "       b  "
        "       b  "
        "   bbbbb  "
        "  bbbbbb  "
        "  bbeb    "
        "  bbbb    "
    , .start = { .x = 4, .y = 1 }
    , .swatches_count = 0
};
const struct Level const level3 =
{
    .geometry =
        "  bbbbb   "
        "  bbbbb   "
        "  bbbbb   "
        "      bff "
        "       ff "
        "bbbb   ff "
        "bebb   ff "
        "bbbb   ff "
        "  bb   ff "
        "  ff  bff "
        "ffffbbb   "
        "ffffbbb   "
        "fbff      "
        "ffff      "
        "          "
    , .start = { .x = 3, .y = 1 }
    , .swatches_count = 0
};
const struct Level const level4 =
{
    .geometry =
        "bbb       "
        "beb  bbbb "
        "bbb  bbbb "
        "bb  bbsbb "
        " b  bbbbb "
        " k  b   k "
        " q  s   q "
        " b  b   b "
        " b  k   s "
        " b  q   b "
        " bbbb   b "
        " bbbb   bb"
        " bbbb  bbb"
        "  bb   bbb"
        "  bs   bbb"
    , .start = { .x = 8, .y = 13 }
    , .swatches_count = 4
    , .swatches =
    {
        &swatch_4_0,
        &swatch_4_1,
        &swatch_4_2,
        &swatch_4_3,
    },
};
const struct Level const level5 =
{
    .geometry =
        "      b   "
        "      b   "
        "      b   "
        "      b   "
        "    bbb   "
        "    bbbbbb"
        " bbbbb   b"
        "bbb      b"
        "bbb    bbb"
        "bbbb   bbb"
        " bbb   bbb"
        "     bbb  "
        "    bbbb  "
        "    beb   "
        "    bbb   "
    , .start = { .x = 6, .y = 0 }
    , .swatches_count = 0
};
const struct Level const level6 =
{
    .geometry =
        "   bbbb   "
        "  bbbbb   "
        " bbbbbb   "
        " bl  b    "
        " b   b    "
        " b   b    "
        " b   b    "
        " bbbbb    "
        "   bbbbbb "
        "   bh  bb "
        "       bb "
        "      bbb "
        "   bbbb   "
        "   bbeb   "
        "   bbbb   "
    , .start = { .x = 5, .y = 1 }
    , .swatches_count = 1
    , .swatches =
    {
        &swatch_6_0,
    },
};
const struct Level const level7 =
{
    .geometry =
        "    bbb   "
        "    bbb   "
        "    bbb   "
        "    bbb   "
        "    bvb   "
        "    bbb   "
        "          "
        "          "
        "          "
        " bbbbbbbbb"
        " bbbbbbbbb"
        " bbbbbbbbb"
        "    bbb   "
        "    beb   "
        "    bbb   "
    , .start = { .x = 5, .y = 1 }
    , .swatches_count = 1
    , .swatches =
    {
        &swatch_7_0,
    },
};
const struct Level const level8 =
{
    .geometry =
        "    bbb   "
        "    bbb   "
        "    bbb   "
        "    bbb   "
        "    b     "
        "    b     "
        "  bbb     "
        "  bebbb   "
        "  bbb     "
        "    b     "
        "    b     "
        "    bbb   "
        "    bbb   "
        "    bvb   "
        "    bbb   "
    , .start = { .x = 5, .y = 1 }
    , .swatches_count = 1
    , .swatches =
    {
        &swatch_8_0,
    },
};
const struct Level const level9 =
{
    .geometry =
        "          "
        "       bbb"
        "       beb"
        "       bbb"
        "        l "
        "bb      r "
        "sb      b "
        " b      l "
        " b      r "
        "bb     bbb"
        "b     bbbb"
        "b     bbbb"
        "hbb  bbbbb"
        "bbbbbbllvb"
        "        bb"
    , .start = { .x = 8, .y = 10 }
    , .swatches_count = 3
    , .swatches =
    {
        &swatch_9_0,
        &swatch_9_1,
        &swatch_9_2,
    },
};
const struct Level const level10 =
{
    .geometry =
        "          "
        "          "
        "    b     "
        "    bbbbbb"
        "    b  beb"
        "    b  bbb"
        "    b   kk"
        " bbbbbb   "
        " bbsbbb   "
        " bb   b   "
        "bbb   b   "
        "bb  bbb   "
        "bb  bbb   "
        " bbbb     "
        "          "
    , .start = { .x = 4, .y = 2 }
    , .swatches_count = 1
    , .swatches =
    {
        &swatch_10_0,
    },
};
const struct Level const level11 =
{
    .geometry =
        "          "
        "  bb      "
        "  bbb     "
        "  bbb     "
        "  bbbbb   "
        "    beb   "
        "bb  bbbbb "
        "bbb  lbhb "
        "bbb   bbb "
        "  b    b  "
        "  bbb  b  "
        "  bbbbbbb "
        "   bbbbbb "
        "   bb  lbh"
        "          "
    , .start = { .x = 3, .y = 3 }
    , .swatches_count = 2
    , .swatches =
    {
        &swatch_11_0,
        &swatch_11_1,
    },
};
const struct Level const level12 =
{
    .geometry =
        "          "
        "    bbbbbb"
        "    bbbbbb"
        "  bbbbb  b"
        "bbb  f   f"
        "bbb  f   b"
        "bfffff   b"
        " fffbbb  b"
        " fbfbeb  b"
        "bfffbbb  f"
        "bfff     b"
        " ffb    bb"
        "   bbbbbbb"
        "     bbbbb"
        "     bbb  "
    , .start = { .x = 6, .y = 13 }
    , .swatches_count = 0
};
const struct Level const level13 =
{
    .geometry =
        "  bbbbbb  "
        " bb   ll  "
        "bbb   rr  "
        "beb   bbb "
        "bbb   bbb "
        "      bbb "
        "       b  "
        "       b  "
        "bbbb   bbb"
        "bbbb   bbb"
        "bbbb   bbb"
        "b  b   b  "
        "b  bbbhb  "
        "h  bbbbb  "
        "          "
    , .start = { .x = 7, .y = 4 }
    , .swatches_count = 2
    , .swatches =
    {
        &swatch_13_0,
        &swatch_13_1,
    },
};
const struct Level const level14 =
{
    .geometry =
        "bbb  bbb  "
        "bbbbbbbb  "
        "bbb   bl  "
        " b    br  "
        " b    bbb "
        " b      k "
        "bbb     q "
        "bbbbv  bbb"
        "bbb   sbbb"
        " k     bbb"
        " q      l "
        "sbs     r "
        "beb    bhb"
        "bbb    bbb"
        "       bbb"
    , .start = { .x = 1, .y = 1 }
    , .swatches_count = 5
    , .swatches =
    {
        &swatch_14_0,
        &swatch_14_1,
        &swatch_14_2,
        &swatch_14_3,
        &swatch_14_4,
    },
};
const struct Level* const levels[] = {
    &level0,
    &level1,
    &level2,
    &level3,
    &level4,
    &level5,
    &level6,
    &level7,
    &level8,
    &level9,
    &level10,
    &level11,
    &level12,
    &level13,
    &level14,
};
# 5 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/leveldata.c" 2
