/**
  Generated Pin Manager File

  Company:
    Microchip Technology Inc.

  File Name:
    pin_manager.c

  Summary:
    This is the Pin Manager file generated using MPLAB(c) Code Configurator

  Description:
    This header file provides implementations for pin APIs for all pins selected in the GUI.
    Generation Information :
        Product Revision  :  MPLAB(c) Code Configurator - 4.15.5
        Device            :  PIC16F18323
        Driver Version    :  1.02
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.35
        MPLAB             :  MPLAB X 3.40

    Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.

    Microchip licenses to you the right to use, modify, copy and distribute
    Software only when embedded on a Microchip microcontroller or digital signal
    controller that is integrated into your product or third party product
    (pursuant to the sublicense terms in the accompanying license agreement).

    You should refer to the license agreement accompanying this Software for
    additional information regarding your rights and obligations.

    SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
    EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
    MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
    IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
    CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
    OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
    INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
    CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
    SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
    (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.

*/

#include <xc.h>
#include "pin_manager.h"
#include "stdbool.h"


void PIN_MANAGER_Initialize(void)
{
    /**
    LATx registers
    */   
    LATA = 0x00;    
    LATC = 0x00;    

    /**
    TRISx registers
    */    
    TRISA = 0x31;
    TRISC = 0x1C;

    /**
    ANSELx registers
    */   
    ANSELC = 0x00;
    ANSELA = 0x00;

    /**
    WPUx registers
    */ 
    WPUA = 0x08;
    WPUC = 0x10;

    /**
    ODx registers
    */   
    ODCONA = 0x00;
    ODCONC = 0x00;
    


   
    
    
    bool state = GIE;
    GIE = 0;
    PPSLOCK = 0x55;
    PPSLOCK = 0xAA;
    PPSLOCKbits.PPSLOCKED = 0x00; // unlock PPS

    RC1PPSbits.RC1PPS = 0x14;   //RC1->EUSART:TX;
    CLCIN1PPSbits.CLCIN1PPS = 0x04;   //RA4->CLC2:CLCIN1;
    RXPPSbits.RXPPS = 0x14;   //RC4->EUSART:RX;
    T1GPPSbits.T1GPPS = 0x13;   //RC3->TMR1:T1G;
    CLCIN0PPSbits.CLCIN0PPS = 0x00;   //RA0->CLC2:CLCIN0;
    CLCIN2PPSbits.CLCIN2PPS = 0x12;   //RC2->CLC2:CLCIN2;
    CLCIN3PPSbits.CLCIN3PPS = 0x13;   //RC3->CLC1:CLCIN3;
    RC5PPSbits.RC5PPS = 0x05;   //RC5->CLC2:CLC2OUT;

    PPSLOCK = 0x55;
    PPSLOCK = 0xAA;
    PPSLOCKbits.PPSLOCKED = 0x01; // lock PPS

    GIE = state;
}       

void PIN_MANAGER_IOC(void)
{   

}

/**
 End of File
*/