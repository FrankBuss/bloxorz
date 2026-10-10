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
#define CMD_UART_COUNT 7
#define CMD_UART_READ 8
#define CMD_UART_READ_BLOCK 9
#define CMD_GET_BANK 10

// firmware version
#define VERSION 5

// a frame is 'V', 'X', command, argument and this check byte, other frames are ignored
#define CHECK(cmd, arg) ((uint8_t)((cmd) ^ (arg) ^ 0xA5))

volatile uint8_t shift;
volatile uint8_t shiftCounter;
volatile uint8_t id1;
volatile uint8_t id2;
volatile uint8_t cmd;
volatile uint8_t arg;
volatile uint8_t check;
volatile uint16_t eepromAdr;
volatile uint8_t timeout;

// bytes received on the EUSART (MIDI in), ring buffer filled by the interrupt
#define RX_SIZE 128
#define BLOCK_MAX 32
volatile uint8_t rxBuf[RX_SIZE];
volatile uint8_t rxHead;
volatile uint8_t rxTail;

// moves a received byte from the EUSART into the ring buffer
#define RX_STORE() \
    if (RC1STAbits.OERR) { \
        RC1STAbits.CREN = 0; \
        RC1STAbits.CREN = 1; \
    } \
    rxByte = RC1REG; \
    if ((uint8_t)(rxHead - rxTail) < RX_SIZE) { \
        rxBuf[rxHead & (RX_SIZE - 1)] = rxByte; \
        rxHead++; \
    }

static void sendBlock(uint8_t limit);

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
                
        ; in the low phase after a pulse: reset the timeout and timer 1, which counts while PB6 is
        ; high, and forget older falling edges
start_read:
        movlw 0
        movwf TMR0L
        movwf TMR1L
        movwf TMR1H
        BANKSEL(IOCCF)
        bcf BANKMASK(IOCCF), 3
        ; wait for the falling edge at the end of the next pulse, latched in IOCCF3, so an interrupt
        ; that covers the whole pulse doesn't lose it
rwait:
        BANKSEL(_timeout)
        btfsc BANKMASK(_timeout), 0
        goto timeout_exit
        BANKSEL(IOCCF)
        btfss BANKMASK(IOCCF), 3
        goto rwait
        BANKSEL(PORTC)

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
    // the line must be released within 65 ms, else there is no reply
    uint8_t overflows = 0;
    timeout = 0;
    TMR0L = 0;
    while (!PORTCbits.RC3) {
        if (timeout) {
            timeout = 0;
            if (++overflows == 0) {
                return;
            }
        }
    }
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
                
        ; wait for at least 5 us low on PB6, or a falling edge of the cartridge button
winit_wait:
        movlw 0
        movwf TMR0L
wait:
        BANKSEL(IOCAF)
        btfsc BANKMASK(IOCAF), 3
        goto wstart_end
        BANKSEL(PORTC)
        btfsc PORTC, 3
        goto winit_wait
        movf TMR0L, W
        sublw 5
        btfsc STATUS, C
        goto wait
wstart_end:
    #endasm
}

// cartridge button: back to bank 0 when it is still pressed after 20 ms, so the Vectrex reset starts
// Bloxorz again; shorter pulses are bounces or noise
void button()
{
    uint8_t i;
    IOCAFbits.IOCAF3 = 0;
    for (i = 0; i < 20; i++) {
        __delay_ms(1);
        if (PORTAbits.RA3) {
            return;
        }
    }
    LATCbits.LATC0 = 0;
    LATAbits.LATA2 = 0;
    LATCbits.LATC1 = 0;
    LATAbits.LATA1 = 0;
}

void readCommand()
{
    id1 = readByte();
    if (timeout) return;
    id2 = readByte();
    if (timeout) return;
    cmd = readByte();
    if (timeout) return;
    arg = readByte();
    if (timeout) return;
    check = readByte();
    if (timeout) return;
    if (id1 == 'V' && id2 == 'X' && check == CHECK(cmd, arg)) {
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
            case CMD_UART_COUNT:
                writeByte((uint8_t)(rxHead - rxTail));
                break;
            case CMD_UART_READ:
                if (rxHead != rxTail) {
                    writeByte(rxBuf[rxTail % RX_SIZE]);
                    rxTail++;
                } else {
                    writeByte(0);
                }
                break;
            case CMD_UART_READ_BLOCK:
                sendBlock(arg);
                break;
            case CMD_GET_BANK:
                writeByte((uint8_t)(LATCbits.LATC0 | LATAbits.LATA2 << 1 | LATCbits.LATC1 << 2 | LATAbits.LATA1 << 3));
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

// one byte of a fast reply: start bit low, 8 data bits LSB first, stop bit high, 24 us per bit on TMR0;
// runs with interrupts off and stores a received MIDI byte in the stop bit
static void fastByte(uint8_t b)
{
    uint8_t rxByte;
    uint8_t i;
    uint8_t t = 24;
    TMR0L = 0;
    LATCbits.LATC3 = 0;
    for (i = 0; i < 8; i++) {
        while (TMR0L < t) {
        }
        LATCbits.LATC3 = b & 1;
        b >>= 1;
        t += 24;
    }
    while (TMR0L < t) {
    }
    LATCbits.LATC3 = 1;
    if (PIR1bits.RCIF) {
        RX_STORE();
    }
    while (TMR0L < 240) {
    }
}

// fast reply of up to BLOCK_MAX received bytes: the count, then the bytes
static void sendBlock(uint8_t limit)
{
    uint8_t n = (uint8_t)(rxHead - rxTail);
    if (n > limit) {
        n = limit;
    }
    if (n > BLOCK_MAX) {
        n = BLOCK_MAX;
    }
    // the Vectrex releases the line right after its request, give up after 255 us
    timeout = 0;
    TMR0L = 0;
    while (!PORTCbits.RC3 && !timeout) {
    }
    if (timeout) {
        return;
    }
    // an interrupt would shift the bit edges by its length
    INTCONbits.GIE = 0;
    LATCbits.LATC3 = 1;
    TRISCbits.TRISC3 = 0;
    TMR0L = 0;
    while (TMR0L < 60) {
    }
    fastByte(n);
    while (n) {
        fastByte(rxBuf[rxTail % RX_SIZE]);
        rxTail++;
        n--;
    }
    TRISCbits.TRISC3 = 1;
    INTCONbits.GIE = 1;
}

void interrupt isr(void)
{
    uint8_t rxByte;
    if (PIR1bits.RCIF) {
        RX_STORE();
    } else if (PIR0bits.TMR0IF) {
        PIR0bits.TMR0IF = 0;
        timeout = 1;
    }
}

int main()
{
    SYSTEM_Initialize();
    PIE1bits.RCIE = 1;
    // falling edges of the cartridge button and of PB6 are only latched in IOCAF3 and IOCCF3,
    // without interrupt
    IOCANbits.IOCAN3 = 1;
    IOCCNbits.IOCCN3 = 1;
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    __delay_ms(100);
    IOCAFbits.IOCAF3 = 0;
    while (1) {
        waitStart();
        if (IOCAFbits.IOCAF3) {
            button();
        } else {
            readCommand();
        }
    } 

    return 0;
}
