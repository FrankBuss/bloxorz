#ifndef HARDWARE_H
#define HARDWARE_H

#include "stdint.h"
#include <vectrex.h>

#define zergnd Reset0Ref
#define frwait Wait_Recal
#define intens Intensity_a
#define diffab Draw_Line_d
#define pack1x Draw_VLp_80
#define joybit Joy_Digital
#define replay Init_Music_chk
#define reqout Do_Sound
__INLINE void positd (int8_t x, int8_t y)
{
    dp_VIA_t1_cnt_lo = 0x80;
    Moveto_d(y,x);
}
__INLINE void Draw_VLp_80(void* const x)
{
    dp_VIA_t1_cnt_lo = 0x80;
    Draw_VLp(x);
}

#endif
