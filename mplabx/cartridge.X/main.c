#define _XTAL_FREQ 32000000

#include <stdint.h>
#include <pic16f18323.h>
#include "mcc.h"

// commands
#define CMD_VERSION 1
#define CMD_SET_EEPROM_ADR 2
#define CMD_EEPROM_WRITE 3
#define CMD_EEPROM_READ 4
#define CMD_SET_BANK 5
#define CMD_ENABLE_PROGRAMMER 6

// firmware version
#define VERSION 4

volatile uint8_t shift;
volatile uint8_t shiftCounter;
volatile uint8_t id;
volatile uint8_t cmd;
volatile uint8_t arg;
volatile uint16_t eepromAdr;
volatile uint8_t timeout;

uint8_t readByte()
{
    timeout = 0;
    TMR0L = 0;
    shiftCounter = 8;
  #asm
        ; STATUS bits
        C EQU 0
        Z EQU 2
        
        ; select bank for PORTC (bank 0)
        BANKSEL(PORTC)
                
        ; reset timer 1 and count pulse length
start_read:
        movlw 0
        movwf TMR0L
        movwf TMR1L
        movwf TMR1H
rwait1:
        BANKSEL(_timeout)
        btfsc _timeout, 0
        goto timeout_exit
        BANKSEL(PORTC)
        btfss PORTC, 3
        goto rwait1
        BANKSEL(PORTC)
        movlw 0
        movwf TMR0L
rwait0:                        
        BANKSEL(_timeout)
        btfsc _timeout, 0
        goto timeout_exit
        BANKSEL(PORTC)
        btfsc PORTC, 3
        goto rwait0

        ; test for 1 or 0 bit length
        movf TMR1L, W
        sublw 50
        btfss STATUS, C
        goto rbit1
rbit0:   movlw 0
        goto rbits
rbit1:   movlw 1
rbits:   BANKSEL(_shift)
        lslf BANKMASK(_shift), f
        iorwf _shift, f
                
        ; shift all bits
        BANKSEL(_shiftCounter)
        decfsz BANKMASK(_shiftCounter), f
        goto start_read

timeout_exit:
        BANKSEL(_shiftCounter)
                
    #endasm
    return shift;
}

void writeByte(uint8_t b)
{
    shiftCounter = 8;
    shift = b;
  #asm
        ; STATUS bits
        C EQU 0
        Z EQU 2
        
        ; select bank for PORTC (bank 0)
        BANKSEL(PORTC)
                
        ; wait for PB6 high
wait1:                        
        btfss PORTC, 3
        goto wait1
                        
        ; wait 201 us
        movlw 0
        movwf TMR0L
wait201:
        movf TMR0L, W
        sublw 201
        btfsc STATUS, C
        goto wait201

        ; wait 202 us
        movlw 0
        movwf TMR0L
wait202:
        movf TMR0L, W
        sublw 202
        btfsc STATUS, C
        goto wait202
        
        ; set PB6 low
        bcf PORTC, 3
        BANKSEL(TRISC)
        bcf BANKMASK(TRISC), 3
        BANKSEL(PORTC)

        ; wait 200 us
        movlw 0
        movwf TMR0L
wait200:
        movf TMR0L, W
        sublw 200
        btfsc STATUS, C
        goto wait200

start_write:
        bsf PORTC, 3
bits:   BANKSEL(_shift)
        btfss _shift, 7
        goto bit0

; send 1 bit: 80 us 1, 120 us pause
        BANKSEL(PORTC)
        movlw 0
        movwf TMR0L
wait160:
        movf TMR0L, W
        sublw 160
        btfsc STATUS, C
        goto wait160
        bcf PORTC, 3
        movlw 0
        movwf TMR0L
wait140:
        movf TMR0L, W
        sublw 140
        btfsc STATUS, C
        goto wait140
        goto write_end
        
; send 0 bit: 80 us 1, 220 us pause
bit0:
        BANKSEL(PORTC)
        movlw 0
        movwf TMR0L
wait80:
        movf TMR0L, W
        sublw 80
        btfsc STATUS, C
        goto wait80
        bcf PORTC, 3
        movlw 0
        movwf TMR0L
wait220:
        movf TMR0L, W
        sublw 220
        btfsc STATUS, C
        goto wait220

write_end:
        BANKSEL(_shift)
        lslf BANKMASK(_shift), f

; shift all bits
        BANKSEL(_shiftCounter)
        decfsz BANKMASK(_shiftCounter), f
        goto start_write

; set PB6 back to input
        BANKSEL(TRISC)
        bsf BANKMASK(TRISC), 3

    #endasm
}

void waitStart()
{
  #asm
        ; STATUS bits
        C EQU 0
        Z EQU 2
        
        ; select bank for PORTC (bank 0)
        BANKSEL(PORTC)
                
        ; wait for at least 5 us low on PB6
winit_wait:
        movlw 0
        movwf TMR0L
wait:
        btfsc PORTC, 3
        goto winit_wait
        movf TMR0L, W
        sublw 5
        btfsc STATUS, C
        goto wait
    #endasm
}

void readCommand()
{
    waitStart();
    id = readByte();
    if (timeout) return;
    cmd = readByte();
    if (timeout) return;
    arg = readByte();
    if (timeout) return;
    if (id =='V') {
        switch (cmd) {
            case CMD_VERSION:
                writeByte(VERSION);
                break;
            case CMD_SET_EEPROM_ADR:
                eepromAdr = 0xf000 + arg;
                writeByte(arg);
                break;
            case CMD_EEPROM_WRITE:
                DATAEE_WriteByte(eepromAdr, arg);
                writeByte(DATAEE_ReadByte(eepromAdr));
                break;
            case CMD_EEPROM_READ:
                writeByte(DATAEE_ReadByte(0xf000 + arg));
                break;
            case CMD_SET_BANK:
                if (arg & 1) {
                    PORTCbits.RC0 = 1;
                } else {
                    PORTCbits.RC0 = 0;
                }
                if (arg & 2) {
                    PORTAbits.RA2 = 1;
                } else {
                    PORTAbits.RA2 = 0;
                }
                if (arg & 4) {
                    PORTCbits.RC1 = 1;
                } else {
                    PORTCbits.RC1 = 0;
                }
                if (arg & 8) {
                    PORTAbits.RA1 = 1;
                } else {
                    PORTAbits.RA1 = 0;
                }
                writeByte(arg);
                break;
            case CMD_ENABLE_PROGRAMMER:
                if (arg) {
                    // LC2G1POL not_inverted; LC2G2POL not_inverted; LC2G3POL not_inverted; LC2G4POL not_inverted; LC2POL not_inverted; 
                    CLC2POL = 0x00;
                    // LC2G2D2N disabled; LC2G2D1N disabled; LC2G2D4N disabled; LC2G2D3N disabled; LC2G2D2T enabled; LC2G2D1T disabled; LC2G2D4T disabled; LC2G2D3T disabled; 
                    CLC2GLS1 = 0x08;
                } else {
                    // LC2G1POL not_inverted; LC2G2POL inverted; LC2G3POL not_inverted; LC2G4POL not_inverted; LC2POL not_inverted; 
                    CLC2POL = 0x02;
                    // LC2G2D2N disabled; LC2G2D1N disabled; LC2G2D4N disabled; LC2G2D3N disabled; LC2G2D2T disabled; LC2G2D1T disabled; LC2G2D4T disabled; LC2G2D3T disabled; 
                    CLC2GLS1 = 0x00;
                }
                writeByte(arg);
                break;
            default:
                writeByte(0);
                break;
        }
    }
}

void tmr0irq()
{
    timeout = 1;
}

int main()
{
    TMR0_InterruptHandler = tmr0irq;
    SYSTEM_Initialize();
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    __delay_ms(100);
    while (1) {
        readCommand();
    } 

    return 0;
}
