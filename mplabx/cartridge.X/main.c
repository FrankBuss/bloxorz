
#define _XTAL_FREQ 32000000

#include "mcc.h"

int main()
{
    SYSTEM_Initialize();
    
    // test output on RC2
    while (1) {
        /*
        PORTC = 0b11111111;
        __delay_ms(50);
        PORTC = 0b11111011;
        __delay_ms(50);
         */
    } 

    return 0;
}
