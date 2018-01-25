#define _XTAL_FREQ 16000000

#include <stdint.h>
#include <xc.h>
#include "receiver.h"

#define HALT 1
#define OE 2
#define CE 4
#define RW 1
#define CART 2
#define NMI 4
#define IRQ 0x40
#define PB6 0x80

// protocol

// request:
// '<'
// r for read, w for write, t for tris
// l: set address low, h: set address high, then 2 bytes hex and checksum
// f: flash 256 bytes: 256 * 2 bytes hex and checksum, address increment
//    return: 256 * (2 bytes read back + 2 bytes read back xor 0xff)
// v: validate (read) flash), then checksum, address increment
// a, b or c for the port
// 2 bytes hex value
// 2 bytes hex value, checksum (xor) of previous bytes, without '<'
// '>'

// response:
// '?' if a command was not recognized,
// or if there was a checksum error, otherwise:
// 2 bytes hex value of the port value which was read, or other value
// 2 bytes hex value of the inverted port value

enum State_t {
    STATE_IDLE,
    STATE_COMMAND,
    STATE_PORT,
    STATE_VALUE_HIGH_NIBBLE,
    STATE_VALUE_LOW_NIBBLE,
    STATE_CHECKSUM_HIGH_NIBBLE,
    STATE_CHECKSUM_LOW_NIBBLE,
    STATE_END
};

enum Command_t {
    COMMAND_READ,
    COMMAND_WRITE,
    COMMAND_TRIS,
    COMMAND_ADR_LOW,
    COMMAND_ADR_HIGH,
    COMMAND_FLASH,
    COMMAND_VERIFY,
    COMMAND_BANK,
};

enum Port_t {
    PORT_A,
    PORT_B,
    PORT_C,
    PORT_D,
    PORT_E
};

static uint8_t state = STATE_IDLE;
static uint8_t value;
static uint8_t checksum;
static uint8_t checksumCalculated;
static int8_t temp;
static uint8_t command;
static uint8_t port;
static uint16_t adr;
static uint8_t flashBuffer[256];
static uint16_t flashBufferIndex;
static uint8_t shiftCounter;
static uint8_t shift;

int8_t parseHex(uint8_t x)
{
    if (x >= '0' && x <= '9') {
        return x - '0';
    } else if (x >= 'a' && x <= 'f') {
        return x - 'a' + 10;
    }
    return -1;
}

void error()
{
    state = STATE_IDLE;
    writeChar('?');
}

char* hex = "0123456789abcdef";
void writeHex(uint8_t data)
{
    writeChar(hex[data >> 4]);
    writeChar(hex[data & 0xf]);
}

void readPort()
{
    if (port == PORT_A) {
        value = readPortA();
    } else if (port == PORT_B) {
        value = readPortB();
    } else if (port == PORT_C) {
        value = readPortC();
    } else if (port == PORT_D) {
        value = readPortD();
    } else if (port == PORT_E) {
        value = readPortE();
    }
}

uint16_t logicAddressToPhysical(uint16_t adr0)
{
    uint16_t padr = 0;
    if (adr0 & (1 << 0)) padr |= 1 << 0;
    if (adr0 & (1 << 1)) padr |= 1 << 12;
    if (adr0 & (1 << 2)) padr |= 1 << 13;
    if (adr0 & (1 << 3)) padr |= 1 << 14;
    if (adr0 & (1 << 4)) padr |= 1 << 10;
    if (adr0 & (1 << 5)) padr |= 1 << 2;
    if (adr0 & (1 << 6)) padr |= 1 << 3;
    if (adr0 & (1 << 7)) padr |= 1 << 11;
    if (adr0 & (1 << 8)) padr |= 1 << 8;
    if (adr0 & (1 << 9)) padr |= 1 << 6;
    if (adr0 & (1 << 10)) padr |= 1 << 1;
    if (adr0 & (1 << 11)) padr |= 1 << 7;
    if (adr0 & (1 << 12)) padr |= 1 << 4;
    if (adr0 & (1 << 13)) padr |= 1 << 5;
    if (adr0 & (1 << 14)) padr |= 1 << 9;
    if (adr0 & (1 << 15)) padr |= 1 << 15;
    return padr;
}

uint8_t logicDataToPhysical(uint8_t value0)
{
    uint8_t pvalue = 0;
    if (value0 & (1 << 0)) pvalue |= 1 << 3;
    if (value0 & (1 << 1)) pvalue |= 1 << 4;
    if (value0 & (1 << 2)) pvalue |= 1 << 2;
    if (value0 & (1 << 3)) pvalue |= 1 << 5;
    if (value0 & (1 << 4)) pvalue |= 1 << 1;
    if (value0 & (1 << 5)) pvalue |= 1 << 6;
    if (value0 & (1 << 6)) pvalue |= 1 << 0;
    if (value0 & (1 << 7)) pvalue |= 1 << 7;
    return pvalue;
}

void writeAddress(uint16_t adr, uint8_t value)
{
    writeTrisA(0);
    writePortA(value);
    writePortC(0xff);
    writePortB(adr & 0xff);
    writePortD((adr >> 8) & 0xff);

    // RW = 0 and CS = 0 (with HALT = 0)
    writePortE(CART | NMI);
    writePortC(OE | IRQ);
    
    // RW = 1 and CS = 1
    writePortC(0xff);
    writePortE(0xff);

    // data port back to input
    writeTrisA(0xff);
}

void writeAddressPhysical(uint16_t adr, uint8_t value)
{
    adr = logicAddressToPhysical(adr);
    value = logicDataToPhysical(value);
    writeAddress(adr, value);
}

uint8_t readAddress(uint16_t adr)
{
    uint8_t d;
    
    writePortC(0xff);
    writePortB(adr & 0xff);
    writePortD((adr >> 8) & 0xff);
    
    // CE = 0 (with HALT = 0) and OE = 0
    writePortC(IRQ);

    d = readPortA();
    
    writePortC(0xff);

    return d;
}

void writeByte(uint8_t b)
{
    shiftCounter = 8;
    shift = b;
    
  #asm
        ; STATUS bits
        ; C EQU 0
        Z EQU 2
        
        ; wait 21 us
        BANKSEL(_temp)
        movlw 21
        movwf _temp
wait21: decfsz BANKMASK(_temp), f
        goto wait21
        BANKSEL(PORTD)

start_write:
        bsf PORTD, 7
bits:   BANKSEL(_shift)
        btfss _shift, 7
        goto bit0

; send 1 bit: 10 us 1, 20 us pause
        ; wait 10 us
        BANKSEL(_temp)
        movlw 10
        movwf _temp
wait10: decfsz BANKMASK(_temp), f
        goto wait10
        nop
        BANKSEL(PORTD)
        bcf PORTD, 7
        ; wait 21 us
        BANKSEL(_temp)
        movlw 21
        movwf _temp
wait20: decfsz BANKMASK(_temp), f
        goto wait20
        nop
        nop
        BANKSEL(PORTD)
        goto write_end
        
; send 0 bit: 5 us 1, 25 us pause
bit0:
        BANKSEL(_temp)
        movlw 3
        movwf _temp
wait5: decfsz BANKMASK(_temp), f
        goto wait5
        nop
        nop
        BANKSEL(PORTD)
        bcf PORTD, 7
        BANKSEL(_temp)
        movlw 30
        movwf _temp
wait25: decfsz BANKMASK(_temp), f
        goto wait25
        BANKSEL(PORTD)

write_end:
        BANKSEL(_shift)
        rlncf BANKMASK(_shift), f

; shift all bits
        BANKSEL(_shiftCounter)
        decfsz BANKMASK(_shiftCounter), f
        goto start_write

; wait 100 us
        BANKSEL(_temp)
        movlw 100
        movwf _temp
wait100: decfsz BANKMASK(_temp), f
        goto wait100
        BANKSEL(PORTD)

    #endasm
}

void sendBankCommand(uint8_t bank)
{
    PORTDbits.RD7 = 0;
    TRISDbits.TRISD7 = 0;
    writeByte('V');
    writeByte(5);  // CMD_SET_BANK
    writeByte(bank);
    TRISDbits.TRISD7 = 1;
}

void onData(uint8_t d)
{
    switch (state) {
        case STATE_IDLE:
            if (d == '<') {
                state = STATE_COMMAND;
                checksumCalculated = 0;
            }
            break;
        case STATE_COMMAND:
            checksumCalculated ^= d;
            state = STATE_PORT;
            if (d == 'r') {
                command = COMMAND_READ;
            } else if (d == 'w') {
                command = COMMAND_WRITE;
            } else if (d == 't') {
                command = COMMAND_TRIS;
            } else if (d == 'l') {
                state = STATE_VALUE_HIGH_NIBBLE;
                command = COMMAND_ADR_LOW;
            } else if (d == 'h') {
                state = STATE_VALUE_HIGH_NIBBLE;
                command = COMMAND_ADR_HIGH;
            } else if (d == 'f') {
                state = STATE_VALUE_HIGH_NIBBLE;
                command = COMMAND_FLASH;
                flashBufferIndex = 0;
            } else if (d == 'v') {
                state = STATE_CHECKSUM_HIGH_NIBBLE;
                command = COMMAND_VERIFY;
            } else if (d == 'b') {
                state = STATE_VALUE_HIGH_NIBBLE;
                command = COMMAND_BANK;
            } else {
                error();
            }
            break;
        case STATE_PORT:
            checksumCalculated ^= d;
            if (command == COMMAND_READ) {
                state = STATE_CHECKSUM_HIGH_NIBBLE;
            } else {
                state = STATE_VALUE_HIGH_NIBBLE;
            }
            if (d == 'a') {
                port = PORT_A;
            } else if (d == 'b') {
                port = PORT_B;
            } else if (d == 'c') {
                port = PORT_C;
            } else if (d == 'd') {
                port = PORT_D;
            } else if (d == 'e') {
                port = PORT_E;
            } else {
                error();
            }
            break;
        case STATE_VALUE_HIGH_NIBBLE:
            checksumCalculated ^= d;
            temp = parseHex(d);
            if (temp < 0) {
                error();
            } else {
                state = STATE_VALUE_LOW_NIBBLE;
                value = (uint8_t) temp;
                value <<= 4;
            }
            break;
        case STATE_VALUE_LOW_NIBBLE:
            checksumCalculated ^= d;
            temp = parseHex(d);
            if (temp < 0) {
                error();
            } else {
                value |= (uint8_t) temp;
                state = STATE_CHECKSUM_HIGH_NIBBLE;
                if (command == COMMAND_FLASH) {
                    flashBuffer[flashBufferIndex] = value;
                    if (flashBufferIndex < 255) {
                        state = STATE_VALUE_HIGH_NIBBLE;
                    } else {
                        state = STATE_CHECKSUM_HIGH_NIBBLE;
                    }
                    flashBufferIndex++;
                }
            }
            break;
        case STATE_CHECKSUM_HIGH_NIBBLE:
            temp = parseHex(d);
            if (temp < 0) {
                error();
            } else {
                state = STATE_CHECKSUM_LOW_NIBBLE;
                checksum = (uint8_t) temp;
                checksum <<= 4;
            }
            break;
        case STATE_CHECKSUM_LOW_NIBBLE:
            temp = parseHex(d);
            if (temp < 0) {
                error();
            } else {
                state = STATE_END;
                checksum |= (uint8_t) temp;
            }
            break;
        case STATE_END:
            if (d == '>') {
                state = STATE_IDLE;
                if (checksumCalculated == checksum) {
                    if (command == COMMAND_READ) {
                        readPort();
                    } else if (command == COMMAND_WRITE) {
                        if (port == PORT_A) {
                            writePortA(value);
                        } else if (port == PORT_B) {
                            writePortB(value);
                        } else if (port == PORT_C) {
                            writePortC(value);
                        } else if (port == PORT_D) {
                            writePortD(value);
                        } else if (port == PORT_E) {
                            writePortE(value);
                        }
                        readPort();
                    } else if (command == COMMAND_TRIS) {
                        if (port == PORT_A) {
                            writeTrisA(value);
                        } else if (port == PORT_B) {
                            writeTrisB(value);
                        } else if (port == PORT_C) {
                            writeTrisC(value);
                        } else if (port == PORT_D) {
                            writeTrisD(value);
                        } else if (port == PORT_E) {
                            writeTrisE(value);
                        }
                        readPort();
                    } else if (command == COMMAND_ADR_LOW) {
                        adr = (adr & 0xff00) | value;
                    } else if (command == COMMAND_ADR_HIGH) {
                        adr &= 0xff;
                        adr |= (uint16_t) (value << 8);
                    } else if (command == COMMAND_FLASH) {
                        for (flashBufferIndex = 0; flashBufferIndex < 256; flashBufferIndex++) {
                            writeAddressPhysical(0x5555, 0xaa);
                            writeAddressPhysical(0x2aaa, 0x55);
                            writeAddressPhysical(0x5555, 0xa0);
                            writeAddress(adr, flashBuffer[flashBufferIndex]);
                            __delay_us(25);
                            value = readAddress(adr);
                            writeHex(value);
                            value ^= 0xff;
                            writeHex(value);
                            adr++;
                        }
                    } else if (command == COMMAND_VERIFY) {
                        value = readAddress(adr);
                        adr++;
                    } else if (command == COMMAND_BANK) {
                        sendBankCommand(value);
                    }
                    if (command != COMMAND_FLASH) {
                        writeHex(value);
                        value ^= 0xff;
                        writeHex(value);
                    }
                } else {
                    error();
                }
            } else {
                error();
            }
            break;
    }
}
