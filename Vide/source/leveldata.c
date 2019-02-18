#include "level.h"

const uint8_t levelCount = 33;

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

const struct Swatch const swatch_15_0 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 7, .y = 1 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 6, .y = 7 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 6, .y = 5 },
            },
        }
};

const struct Swatch const swatch_15_1 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 6, .y = 0 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 6, .y = 2 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 7, .y = 1 },
            },
        }
};

const struct Swatch const swatch_15_2 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 6, .y = 2 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 6, .y = 0 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 6, .y = 2 },
            },
        }
};

const struct Swatch const swatch_15_3 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 6, .y = 5 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 4 },
            },
        }
};

const struct Swatch const swatch_15_4 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 6, .y = 6 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 8 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 9 },
            },
        }
};

const struct Swatch const swatch_15_5 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 5, .y = 1 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 5, .y = 1 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 6, .y = 0 },
            },
        }
};

const struct Swatch const swatch_15_6 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 1, .y = 9 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 7, .y = 1 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 6, .y = 0 },
            },
        }
};

const struct Swatch const swatch_16_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 6, .y = 12 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 3, .y = 6 },
            },
        }
};

const struct Swatch const swatch_16_1 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 6, .y = 13 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 3, .y = 6 },
            },
        }
};

const struct Swatch const swatch_16_2 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 3, .y = 12 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 7, .y = 7 },
            },
        }
};

const struct Swatch const swatch_16_3 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 1, .y = 1 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 2, .y = 8 },
            },
        }
};

const struct Swatch const swatch_16_4 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 0, .y = 12 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 8, .y = 9 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 8 },
            },
        }
};

const struct Swatch const swatch_17_0 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 8, .y = 7 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 5, .y = 8 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 5, .y = 9 },
            },
        }
};

const struct Swatch const swatch_17_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 7, .y = 2 },
    .fields_count = 4,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 5, .y = 12 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 5, .y = 13 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 1 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 2 },
            },
        }
};

const struct Swatch const swatch_17_2 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 5, .y = 1 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 5, .y = 8 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 5, .y = 9 },
            },
        }
};

const struct Swatch const swatch_17_3 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 3, .y = 2 },
    .fields_count = 4,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 5, .y = 12 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 5, .y = 13 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 1 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 2 },
            },
        }
};

const struct Swatch const swatch_17_4 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 2, .y = 8 },
    .fields_count = 4,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 5, .y = 12 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 5, .y = 13 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 0, .y = 1 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 0, .y = 2 },
            },
        }
};

const struct Swatch const swatch_17_5 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 0, .y = 3 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 4, .y = 5 },
            },
        }
};

const struct Swatch const swatch_18_0 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 9, .y = 10 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 4, .y = 7 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 4, .y = 8 },
            },
        }
};

const struct Swatch const swatch_18_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 4, .y = 10 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 2 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 3 },
            },
        }
};

const struct Swatch const swatch_18_2 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 0, .y = 10 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 0, .y = 2 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 0, .y = 3 },
            },
        }
};

const struct Swatch const swatch_19_0 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 7, .y = 7 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 8, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 8, .y = 6 },
            },
        }
};

const struct Swatch const swatch_19_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 5, .y = 3 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 8, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 8, .y = 6 },
            },
        }
};

const struct Swatch const swatch_19_2 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 5, .y = 7 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 8, .y = 13 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 2, .y = 13 },
            },
        }
};

const struct Swatch const swatch_19_3 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 5, .y = 9 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 8, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 8, .y = 6 },
            },
        }
};

const struct Swatch const swatch_19_4 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 3, .y = 12 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 3, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 3, .y = 11 },
            },
        }
};

const struct Swatch const swatch_19_5 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 2, .y = 1 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 11 },
            },
        }
};

const struct Swatch const swatch_20_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 4, .y = 8 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 0, .y = 3 },
            },
        }
};

const struct Swatch const swatch_20_1 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 3, .y = 8 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 2, .y = 5 },
            },
        }
};

const struct Swatch const swatch_21_0 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 7, .y = 7 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 6, .y = 13 },
            },
        }
};

const struct Swatch const swatch_21_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 6, .y = 5 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 6, .y = 13 },
            },
        }
};

const struct Swatch const swatch_21_2 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 0, .y = 3 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 6, .y = 13 },
            },
        }
};

const struct Swatch const swatch_21_3 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 0, .y = 10 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 2, .y = 3 },
            },
        }
};

const struct Swatch const swatch_22_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 8, .y = 2 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 4 },
            },
        }
};

const struct Swatch const swatch_22_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 8, .y = 13 },
    .fields_count = 3,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 0, .y = 8 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 3, .y = 1 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 3, .y = 2 },
            },
        }
};

const struct Swatch const swatch_22_2 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 6, .y = 14 },
    .fields_count = 3,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 3, .y = 14 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 7, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 7, .y = 11 },
            },
        }
};

const struct Swatch const swatch_22_3 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 4, .y = 0 },
    .fields_count = 3,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 0 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 3, .y = 1 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 3, .y = 2 },
            },
        }
};

const struct Swatch const swatch_22_4 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 2, .y = 12 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 2, .y = 12 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 7, .y = 2 },
            },
        }
};

const struct Swatch const swatch_23_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 7, .y = 12 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 3 },
            },
        }
};

const struct Swatch const swatch_23_1 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 7, .y = 14 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 2, .y = 6 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 2, .y = 8 },
            },
        }
};

const struct Swatch const swatch_23_2 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 6, .y = 6 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 1, .y = 8 },
            },
        }
};

const struct Swatch const swatch_23_3 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 5, .y = 1 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 7, .y = 4 },
            },
        }
};

const struct Swatch const swatch_23_4 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 1, .y = 6 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 2, .y = 9 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 2, .y = 10 },
            },
        }
};

const struct Swatch const swatch_24_0 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 7, .y = 4 },
    .fields_count = 4,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 7, .y = 13 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 6, .y = 13 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 5, .y = 8 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 5, .y = 9 },
            },
        }
};

const struct Swatch const swatch_24_1 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 3, .y = 2 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 5, .y = 8 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 5, .y = 9 },
            },
        }
};

const struct Swatch const swatch_24_2 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 1, .y = 8 },
    .fields_count = 3,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 7 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 3, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 3, .y = 5 },
            },
        }
};

const struct Swatch const swatch_25_0 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 9, .y = 13 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 6, .y = 12 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 4, .y = 10 },
            },
        }
};

const struct Swatch const swatch_25_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 8, .y = 7 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 6, .y = 2 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 6, .y = 3 },
            },
        }
};

const struct Swatch const swatch_25_2 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 2, .y = 1 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 2, .y = 9 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 5, .y = 3 },
            },
        }
};

const struct Swatch const swatch_26_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 6, .y = 13 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 6 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 9 },
            },
        }
};

const struct Swatch const swatch_26_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 4, .y = 12 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 6 },
            },
        }
};

const struct Swatch const swatch_26_2 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 4, .y = 13 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 9 },
            },
        }
};

const struct Swatch const swatch_27_0 = {
    .type = SWATCH_TYPE_V,
    .position = { .x = 4, .y = 11 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT1, .position = { .x = 3, .y = 14 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_SPLIT2, .position = { .x = 0, .y = 12 },
            },
        }
};

const struct Swatch const swatch_27_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 2, .y = 11 },
    .fields_count = 4,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 9, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 9, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 8 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 9 },
            },
        }
};

const struct Swatch const swatch_28_0 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 9, .y = 2 },
    .fields_count = 4,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 9, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 9, .y = 11 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 3, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 3, .y = 11 },
            },
        }
};

const struct Swatch const swatch_28_1 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 9, .y = 12 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 4, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 3, .y = 5 },
            },
        }
};

const struct Swatch const swatch_28_2 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 6, .y = 0 },
    .fields_count = 4,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 1, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 1, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 0, .y = 11 },
            },
        }
};

const struct Swatch const swatch_28_3 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 6, .y = 14 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 0, .y = 3 },
            },
        }
};

const struct Swatch const swatch_28_4 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 3, .y = 12 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 1 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 2 },
            },
        }
};

const struct Swatch const swatch_28_5 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 0, .y = 12 },
    .fields_count = 8,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 12 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 13 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 3, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 3, .y = 11 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 9, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 9, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 9, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 9, .y = 11 },
            },
        }
};

const struct Swatch const swatch_29_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 7, .y = 14 },
    .fields_count = 4,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 6, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 6, .y = 11 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 3, .y = 9 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 3, .y = 12 },
            },
        }
};

const struct Swatch const swatch_29_1 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 4, .y = 1 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 6, .y = 11 },
            },
        }
};

const struct Swatch const swatch_29_2 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 2, .y = 12 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 2, .y = 14 },
            },
        }
};

const struct Swatch const swatch_30_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 8, .y = 8 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 7, .y = 9 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 7, .y = 10 },
            },
        }
};

const struct Swatch const swatch_30_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 5, .y = 6 },
    .fields_count = 8,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 7, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 7, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 7, .y = 9 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 7, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 9 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 10 },
            },
        }
};

const struct Swatch const swatch_30_2 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 2, .y = 7 },
    .fields_count = 8,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 7, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 7, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 7, .y = 9 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 7, .y = 10 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 9 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 10 },
            },
        }
};

const struct Swatch const swatch_30_3 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 1, .y = 2 },
    .fields_count = 5,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 7, .y = 14 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 8, .y = 14 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 9, .y = 14 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 7, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 7, .y = 5 },
            },
        }
};

const struct Swatch const swatch_30_4 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 1, .y = 6 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 2, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 2, .y = 5 },
            },
        }
};

const struct Swatch const swatch_31_0 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 9, .y = 14 },
    .fields_count = 4,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 2, .y = 4 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 8, .y = 6 },
            },
        }
};

const struct Swatch const swatch_31_1 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 7, .y = 12 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 1, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 1, .y = 4 },
            },
        }
};

const struct Swatch const swatch_31_2 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 2, .y = 6 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 7, .y = 5 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ONOFF, .position = { .x = 7, .y = 6 },
            },
        }
};

const struct Swatch const swatch_32_0 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 9, .y = 7 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
        }
};

const struct Swatch const swatch_32_1 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 7, .y = 5 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
        }
};

const struct Swatch const swatch_32_2 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 7, .y = 8 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
        }
};

const struct Swatch const swatch_32_3 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 6, .y = 9 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
        }
};

const struct Swatch const swatch_32_4 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 6, .y = 10 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
        }
};

const struct Swatch const swatch_32_5 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 6, .y = 13 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
        }
};

const struct Swatch const swatch_32_6 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 5, .y = 7 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
        }
};

const struct Swatch const swatch_32_7 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 5, .y = 10 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
        }
};

const struct Swatch const swatch_32_8 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 4, .y = 11 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
        }
};

const struct Swatch const swatch_32_9 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 3, .y = 11 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
        }
};

const struct Swatch const swatch_32_10 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 2, .y = 6 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
        }
};

const struct Swatch const swatch_32_11 = {
    .type = SWATCH_TYPE_S,
    .position = { .x = 2, .y = 13 },
    .fields_count = 2,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 3 },
            },
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_OFF, .position = { .x = 2, .y = 4 },
            },
        }
};

const struct Swatch const swatch_32_12 = {
    .type = SWATCH_TYPE_H,
    .position = { .x = 2, .y = 14 },
    .fields_count = 1,
    .fields =
        {
            &(const struct SwatchField) {
                .action = SWATCH_FIELD_ACTION_ON, .position = { .x = 8, .y = 11 },
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
const struct Level const level15 =
{
    .geometry = 
        "      v   "
        "     vbv  "
        "bbb   v   "
        "bbb   l   "
        "bbb   r   "
        " b    h   "
        " b    h   "
        " b    b   "
        "bbb   l   "
        "bvb   r   "
        "bbb  bbb  "
        "     beb  "
        "     bbb  "
        "          "
        "          "
    , .start = { .x = 1, .y = 3 }
    , .swatches_count = 7
    , .swatches =
    {
        &swatch_15_0,
        &swatch_15_1,
        &swatch_15_2,
        &swatch_15_3,
        &swatch_15_4,
        &swatch_15_5,
        &swatch_15_6,
    },
};
const struct Level const level16 =
{
    .geometry = 
        "bbbbbbbbbb"
        "bsbbbbbbbb"
        "bbbbbbbbbb"
        "  b     b "
        "  b     b "
        "  b     b "
        "  br    b "
        "  bb   rb "
        "  lb   bb "
        "   b   bl "
        "   b   b  "
        "bbbb   b  "
        "hbbh  hbb "
        "      heb "
        "      bbb "
    , .start = { .x = 8, .y = 1 }
    , .swatches_count = 5
    , .swatches =
    {
        &swatch_16_0,
        &swatch_16_1,
        &swatch_16_2,
        &swatch_16_3,
        &swatch_16_4,
    },
};
const struct Level const level17 =
{
    .geometry = 
        "bbbbbbbb  "
        "l  bbsbb  "
        "r  sbbbs  "
        "h  bbbbb  "
        "    bbb   "
        "    lb    "
        "     b    "
        "     bbbs "
        "  sbbl    "
        "     r    "
        "bb   b    "
        "bbb  b    "
        "bebbbl    "
        "bbb  r    "
        "     b    "
    , .start = { .x = 5, .y = 2 }
    , .swatches_count = 6
    , .swatches =
    {
        &swatch_17_0,
        &swatch_17_1,
        &swatch_17_2,
        &swatch_17_3,
        &swatch_17_4,
        &swatch_17_5,
    },
};
const struct Level const level18 =
{
    .geometry = 
        "  bbb     "
        "bbbeb    b"
        "kbbbb    b"
        "q        b"
        "b        b"
        "bbbbb  bbb"
        "bbbbb  bbb"
        "b   l    b"
        "b   r    b"
        "b   b    b"
        "s   s    s"
        "b   b    b"
        "b   b    b"
        "b   bbbbbb"
        "    bbbbbb"
    , .start = { .x = 9, .y = 1 }
    , .swatches_count = 3
    , .swatches =
    {
        &swatch_18_0,
        &swatch_18_1,
        &swatch_18_2,
    },
};
const struct Level const level19 =
{
    .geometry = 
        "  bb      "
        "  sb      "
        "   bbbbbb "
        "   bbsbbb "
        "    bbbbb "
        "        k "
        "        q "
        "   bbvbsb "
        "   bbbbbb "
        "   bbsbbb "
        "   l    l "
        "   r    r "
        "bbbs   bbb"
        "bebb   bbb"
        "bbbb   bbb"
    , .start = { .x = 7, .y = 8 }
    , .swatches_count = 6
    , .swatches =
    {
        &swatch_19_0,
        &swatch_19_1,
        &swatch_19_2,
        &swatch_19_3,
        &swatch_19_4,
        &swatch_19_5,
    },
};
const struct Level const level20 =
{
    .geometry = 
        "     bbb  "
        "    bbbb  "
        "  bbbbb   "
        "rbb  bb   "
        "bbb   bb  "
        "bbl   bb  "
        "b      b  "
        "b      bb "
        "bbbhhbbbbb"
        "bbbbb  bbb"
        "    b     "
        "    b     "
        "   bbb    "
        "   beb    "
        "   bbb    "
    , .start = { .x = 6, .y = 1 }
    , .swatches_count = 2
    , .swatches =
    {
        &swatch_20_0,
        &swatch_20_1,
    },
};
const struct Level const level21 =
{
    .geometry = 
        "          "
        "     bbb  "
        " bbbbbbb  "
        "hbl  bbb  "
        "      bbb "
        "      sbb "
        "       bbb"
        "       sbb"
        "      bbb "
        "      bbb "
        "hbq  bbb  "
        " bbbbbbb  "
        "     bbbbb"
        "      lbeb"
        "       bbb"
    , .start = { .x = 6, .y = 2 }
    , .swatches_count = 4
    , .swatches =
    {
        &swatch_21_0,
        &swatch_21_1,
        &swatch_21_2,
        &swatch_21_3,
    },
};
const struct Level const level22 =
{
    .geometry = 
        "   bsbr   "
        "   l  bbbb"
        "   r  bbhb"
        "bbbb  bbbb"
        "bbbbbbl   "
        "bbbb      "
        "bfff      "
        "bffffbbb  "
        "lffffbeb  "
        " ffffbbb  "
        " fff   k  "
        " bbb   q  "
        " bvb  bbbb"
        " bbb  bbsb"
        "   kbbsbbb"
    , .start = { .x = 2, .y = 4 }
    , .swatches_count = 5
    , .swatches =
    {
        &swatch_22_0,
        &swatch_22_1,
        &swatch_22_2,
        &swatch_22_3,
        &swatch_22_4,
    },
};
const struct Level const level23 =
{
    .geometry = 
        "          "
        "  bbbh    "
        "  bbbbb   "
        "  bb  l   "
        "   b  rr  "
        "   bbbbb  "
        " hb  bhb  "
        " bb   bb  "
        " lb    b  "
        "  l    b  "
        "  r    b  "
        " bbb  bbb "
        " beb  bhb "
        " bbbbbbbb "
        "      bvb "
    , .start = { .x = 6, .y = 2 }
    , .swatches_count = 5
    , .swatches =
    {
        &swatch_23_0,
        &swatch_23_1,
        &swatch_23_2,
        &swatch_23_3,
        &swatch_23_4,
    },
};
const struct Level const level24 =
{
    .geometry = 
        " bbb      "
        " bbbb     "
        " kkhb  bbb"
        "   b  bbbb"
        "   k  bsb "
        "   q  b   "
        " bbbbbb   "
        " bbbbbl   "
        " s   l    "
        " b   r    "
        " b   bbb  "
        "bbb  beb  "
        "bbb  bbb  "
        "bbb   ll  "
        "          "
    , .start = { .x = 2, .y = 1 }
    , .swatches_count = 3
    , .swatches =
    {
        &swatch_24_0,
        &swatch_24_1,
        &swatch_24_2,
    },
};
const struct Level const level25 =
{
    .geometry = 
        "    bbb   "
        "  hbbbb   "
        "    bbk   "
        "     lq   "
        "      bb  "
        "      bbbb"
        " bbbbbbbbb"
        " beb  bbsb"
        " bbb   bbb"
        "  l    bb "
        "    bbbbb "
        "     bb   "
        "      b   "
        "      bbbv"
        "          "
    , .start = { .x = 4, .y = 10 }
    , .swatches_count = 3
    , .swatches =
    {
        &swatch_25_0,
        &swatch_25_1,
        &swatch_25_2,
    },
};
const struct Level const level26 =
{
    .geometry = 
        "  bbb  bbb"
        "  beb  bbb"
        "  bbb  bbb"
        "  ff    b "
        "  ff    b "
        " ffff   b "
        "qffff   b "
        "bffff  bbb"
        "bffff  bbb"
        "kfffb   bb"
        " ff     bb"
        " ff      b"
        " bbbsbb  b"
        " bbbsbhbbb"
        " bbb  bbbb"
    , .start = { .x = 8, .y = 1 }
    , .swatches_count = 3
    , .swatches =
    {
        &swatch_26_0,
        &swatch_26_1,
        &swatch_26_2,
    },
};
const struct Level const level27 =
{
    .geometry = 
        "    ffff  "
        "  bbbfffbb"
        "bbbeb  bbb"
        "  bbb    k"
        "  b      q"
        "bbb    bbb"
        "bbb    bbb"
        "b     bbb "
        "k    bbb  "
        "q   bbb   "
        "bbbbbb    "
        "bbsbv     "
        "bbbb      "
        "  bb      "
        "  bb      "
    , .start = { .x = 7, .y = 2 }
    , .swatches_count = 2
    , .swatches =
    {
        &swatch_27_0,
        &swatch_27_1,
    },
};
const struct Level const level28 =
{
    .geometry = 
        "bbb   h   "
        "beb   l   "
        "bbb   r  s"
        "ll    b  k"
        " r    b  q"
        " bbrrbbbbb"
        "  bbbbbb  "
        "     bbb  "
        "     bbb  "
        "bbbbbbbbbb"
        "k  k  b  l"
        "q  q  b  r"
        "s  s  l  h"
        "      r   "
        "      h   "
    , .start = { .x = 6, .y = 7 }
    , .swatches_count = 6
    , .swatches =
    {
        &swatch_28_0,
        &swatch_28_1,
        &swatch_28_2,
        &swatch_28_3,
        &swatch_28_4,
        &swatch_28_5,
    },
};
const struct Level const level29 =
{
    .geometry = 
        " bff      "
        "ffffh     "
        "bfffbb    "
        "ffbff  bbb"
        "fff    beb"
        "ffb    bbb"
        " ff     bb"
        " ffbfff  b"
        "ffbbffb  f"
        "fffl  b  f"
        "ff    k  b"
        "ff    q  b"
        "bbhr  bffb"
        "  bb  bbbb"
        "  lbbbbh  "
    , .start = { .x = 5, .y = 2 }
    , .swatches_count = 3
    , .swatches =
    {
        &swatch_29_0,
        &swatch_29_1,
        &swatch_29_2,
    },
};
const struct Level const level30 =
{
    .geometry = 
        "qqq       "
        "bbb  fbbb "
        "bhbbffbbb "
        "bbb  fbbb "
        "  l    k  "
        "  r    q  "
        " hbbbsbb  "
        "  sbbbbb  "
        "  bbbbbbh "
        "  k    l  "
        "  q    r  "
        " bbbf  bbb"
        " bbbffbbeb"
        " bbbf  bbb"
        "       lll"
    , .start = { .x = 2, .y = 12 }
    , .swatches_count = 5
    , .swatches =
    {
        &swatch_30_0,
        &swatch_30_1,
        &swatch_30_2,
        &swatch_30_3,
        &swatch_30_4,
    },
};
const struct Level const level31 =
{
    .geometry = 
        "          "
        " bb       "
        " bb  bbb  "
        " ll  bebb "
        " rr  bbbb "
        " bbb   lk "
        " bhb   rq "
        " bbb   bb "
        " b    bbb "
        " b   bb   "
        " bbbbbb   "
        " bbbbbbb  "
        "      bhb "
        "       bbb"
        "       bbh"
    , .start = { .x = 3, .y = 11 }
    , .swatches_count = 3
    , .swatches =
    {
        &swatch_31_0,
        &swatch_31_1,
        &swatch_31_2,
    },
};
const struct Level const level32 =
{
    .geometry = 
        "bbbb  bb  "
        "bbeb  bb  "
        "bbbb  bb  "
        "  k   k   "
        "  q   q   "
        " bbbbbbsbb"
        " bsbbbbbbb"
        " bbbbsbbbs"
        "   bbbbsbb"
        "   bbbsbbb"
        "  bbbssbbb"
        " bbssbbbl "
        "bbbbbbbb  "
        "bbsbbbsb  "
        "bbhb      "
    , .start = { .x = 6, .y = 1 }
    , .swatches_count = 13
    , .swatches =
    {
        &swatch_32_0,
        &swatch_32_1,
        &swatch_32_2,
        &swatch_32_3,
        &swatch_32_4,
        &swatch_32_5,
        &swatch_32_6,
        &swatch_32_7,
        &swatch_32_8,
        &swatch_32_9,
        &swatch_32_10,
        &swatch_32_11,
        &swatch_32_12,
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
    &level15,
    &level16,
    &level17,
    &level18,
    &level19,
    &level20,
    &level21,
    &level22,
    &level23,
    &level24,
    &level25,
    &level26,
    &level27,
    &level28,
    &level29,
    &level30,
    &level31,
    &level32,
};
