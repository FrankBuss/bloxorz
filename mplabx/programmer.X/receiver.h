#ifndef RECEIVER_H
#define	RECEIVER_H

#include <stdint.h>

void writePortA(uint8_t data);
void writePortB(uint8_t data);
void writePortC(uint8_t data);
void writePortD(uint8_t data);
void writePortE(uint8_t data);
void writeTrisA(uint8_t data);
void writeTrisB(uint8_t data);
void writeTrisC(uint8_t data);
void writeTrisD(uint8_t data);
void writeTrisE(uint8_t data);
uint8_t readPortA(void);
uint8_t readPortB(void);
uint8_t readPortC(void);
uint8_t readPortD(void);
uint8_t readPortE(void);

void writeChar(uint8_t d);
void onData(uint8_t d);

#endif
