#ifndef LEVEL_H
#define LEVEL_H

#include "stdint.h"

#ifdef __cplusplus
extern "C" {
#endif

#define LEVEL_WIDTH 10
#define LEVEL_HEIGHT 15

enum SwatchType {
    SWATCH_TYPE_S,
    SWATCH_TYPE_H,
};

enum SwatchFieldAction {
    SWATCH_FIELD_ACTION_ONOFF,
    SWATCH_FIELD_ACTION_ON,
    SWATCH_FIELD_ACTION_OFF,
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

// returns true, if this is a field where the block can stand on
uint8_t isField(int8_t x, int8_t y);

// returns the defined field, including disabled swatch fields
char getField(int8_t x, int8_t y);

void initSwatches();
void swatchSwitch(int8_t x, int8_t y);

void initLevel();

int8_t x3d(int8_t x, int8_t z);

int8_t y3d(int8_t x, int8_t y, int8_t z);


#ifdef __cplusplus
}
#endif


#endif
