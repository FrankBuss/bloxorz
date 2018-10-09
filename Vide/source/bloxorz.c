/* BLOXORZ by Frank Buss
   Original homepage and more information can be found at: http://www.frank-buss.de/vectrex/

   Frank gave permission to include the sources in Vide as an example of "C" programming.

   Following changes were done to the original.
   Frank's C setup seems to default to 16 bit int. Since in nearly all cases he defined
   (u)int8_t and used it as such, nearly everything compiled out of the box.
   Only thing was the implicit assumption, that calculations involving "default" would be "long".
   This mainly involves access to arrays larger than 128 byte - since vide GCC defaults to  signed int.
   Large array index were "out of bounds". 
   Access of the "level" array has be changed to use long index.


   a) "defined" different names for the BIOS functions.
   b) here and there switched a int8_t to a uint8_t
   c) long index changes

   In general the original sources were just commented "out".


   This game compiles correctly with out without framepointers, and with any "-O2"... setting.

*/

#include "stdint.h"
#include <vectrex.h>
#include "level.h"
#include "block.i"

// PIC commands
#define CMD_VERSION 1
#define CMD_SET_EEPROM_ADR 2
#define CMD_EEPROM_WRITE 3
#define CMD_EEPROM_READ 4
#define CMD_SET_BANK 5

extern void* memcpy (void* dest, const void* src, long unsigned int len);

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

/*
void zergnd();
void frwait();
void positd(int8_t x, int8_t y);
void intens(int8_t i);
void diffab(int8_t x, int8_t y);
void pack1x(const int8_t* data, int8_t zskip);
void replay(const int8_t* data);
void reqout();
*/


#define tstat (*((volatile uint8_t *) 0xc856))

#define pot0 (*((volatile int8_t *) 0xc81b))
#define pot1 (*((volatile int8_t *) 0xc81c))
#define pot2 (*((volatile int8_t *) 0xc81d))
#define pot3 (*((volatile int8_t *) 0xc81e))

#define epot0 (*((volatile uint8_t *) 0xc81f))
#define epot1 (*((volatile uint8_t *) 0xc820))
#define epot2 (*((volatile uint8_t *) 0xc821))
#define epot3 (*((volatile uint8_t *) 0xc822))

#define t1lolc (*((volatile uint8_t *) 0xd004))

extern void picWrite(uint8_t b);
extern uint8_t picRead();
extern void delay10ms();

extern void musicInit();
extern void musicPlay();

char infoText[10];

uint16_t moveCount;

uint16_t levelHighscore;

uint8_t picAvailable;

const uint8_t startMusic[] = {
	0xFE,0xE8,   0xFE,0xB6,  // ADSR and twang address tables, in Vectrex ROM
	1,1,
	2,1,
	3,1,
	4,1,
	5,1,
	6,1,
	7,1,
	8,1,
	9,1,
	10,1,
	11,1,
	12,1,
	13,1,
	0, 0x80,  // music end marker
};

const uint8_t levelEndMusic[] = {
	0xFE,0xE8,   0xFE,0xB6,  // ADSR and twang address tables, in Vectrex ROM
	13,1,
	14,1,
	15,1,
	16,1,
	17,1,
	18,1,
	19,1,
	20,1,
	21,1,
	22,1,
	0, 0x80,  // music end marker
};

const uint8_t fallingMusic[] = {
	0xFE,0xE8,   0xFE,0xB6,  // ADSR and twang address tables, in Vectrex ROM
	13,2,
	12,2,
	11,2,
	10,2,
	9,2,
	8,2,
	7,2,
	6,2,
	5,2,
	4,2,
	3,2,
	2,2,
	1,2,
	0, 0x80,  // music end marker
};

const uint8_t movingMusic[] = {
	0xfd,0xc3,   0xFE,0xB6,  // ADSR and twang address tables, in Vectrex ROM
	0x01,5,
	0, 0x80,  // music end marker
};

const uint8_t* currentMusic = startMusic;

enum BlockOrientation_t {
	Standing,
	Vertical,
	Horizontal
};

enum BlockOrientation_t blockOrientation;
int8_t blockX;
int8_t blockY;

const int8_t** blockAnimation;
const int8_t** nextBlockAnimation;
int8_t blockAnimationStep;
int8_t blockAnimating;
int8_t nextBlockX;
int8_t nextBlockY;
int8_t lastBlockDirection;
int8_t blockYOfs;

uint8_t* vecx = (uint8_t*) 0x8000;

enum GameState_t {
	MainMenu,
	ClearMenu,
	BlockMovingToStart,
	BlockWaiting,
	BlockMoving,
	BlockFalling,
	BlockMovingAtEnd,
} gameState;

enum BlockDirection_t {
	Left, Up, Right, Down
};

void runtimeError(char* msg)
{
	while (1) {
		frwait();
         Intensity_a(0x5f);
         Vec_Text_Width = 90;
         Print_Str_d(-10, -110, msg);
	}
}

uint8_t sendCommand(uint8_t cmd, uint8_t arg)
{
	uint8_t result;
	picWrite('V');
	picWrite(cmd);
	picWrite(arg);
	result = picRead();
	delay10ms();
	return result;
}

void writeEeprom(uint8_t address, uint8_t data)
{
	if (picAvailable) {
	    	sendCommand(CMD_SET_EEPROM_ADR, address);
	    	sendCommand(CMD_EEPROM_WRITE, data);
	}
}

uint8_t readEeprom(uint8_t address)
{
	if (picAvailable) {
		return sendCommand(CMD_EEPROM_READ, address);
	} else {
		return 0xff;
	}
}


// converts a number to 4 digits and stores it in text, with leading zeros
void itoa(uint16_t number, char* text)
{
	uint16_t muls[] = { 100, 10, 1 };
	if (number > 999) number = 999;
	for (uint8_t i = 0; i < 3; i++) {
		uint8_t d = 0;
		while (number >= muls[i]) {
			d++;
			number -= muls[i];
		}
		text[i] = d + '0';
	}
}

void updateInfoText()
{
	itoa(moveCount, &infoText[0]);
//	itoa(levelHighscore, &infoText[6]);
	itoa(levelNumber + 1, &infoText[6]);
}

void changeMusic(const uint8_t* music)
{
	tstat = 1;
	currentMusic = music;
}

void moveBlock(enum BlockDirection_t move)
{
	blockAnimating = 1;
	lastBlockDirection = move;
	switch (blockOrientation) {
		case Standing:
        		switch (move) {
        			case Left:
            			blockAnimation = height2FallingLeft;
             			nextBlockAnimation = width2RollingFront;
             			nextBlockX = blockX - 2;
             			nextBlockY = blockY;
             			blockOrientation = Horizontal;
             			break;
        			case Right:
             			blockAnimation = height2FallingRight;
             			nextBlockAnimation = width2RollingFront;
             			nextBlockX = blockX + 1;
             			nextBlockY = blockY;
             			blockOrientation = Horizontal;
             			break;
        			case Up:
             			blockAnimation = height2FallingBack;
             			nextBlockAnimation = depth2RollingLeft;
             			nextBlockX = blockX;
             			nextBlockY = blockY + 1;
             			blockOrientation = Vertical;
             			break;
        			case Down:
             			blockAnimation = height2FallingFront;
             			nextBlockAnimation = depth2RollingLeft;
             			nextBlockX = blockX;
             			nextBlockY = blockY - 2;
             			blockOrientation = Vertical;
             			break;
        		}
        		break;
		case Vertical:
        		switch (move) {
        			case Left:
            			blockAnimation = depth2RollingLeft;
            			nextBlockAnimation = depth2RollingLeft;
            			nextBlockX = blockX - 1;
            			nextBlockY = blockY;
            			break;
        			case Right:
            			blockAnimation = depth2RollingRight;
            			nextBlockAnimation = depth2RollingLeft;
            			nextBlockX = blockX + 1;
            			nextBlockY = blockY;
            			break;
        			case Up:
            			blockAnimation = height2RisingBack;
            			nextBlockAnimation = height2FallingFront;
            			nextBlockX = blockX;
            			nextBlockY = blockY + 2;
            			blockOrientation = Standing;
            			break;
        			case Down:
            			blockAnimation = height2RisingFront;
            			nextBlockAnimation = height2FallingFront;
            			nextBlockX = blockX;
            			nextBlockY = blockY - 1;
            			blockOrientation = Standing;
            			break;
        		}
        		break;
		case Horizontal:
        		switch (move) {
        			case Left:
            			blockAnimation = height2RisingLeft;
            			nextBlockAnimation = height2FallingRight;
            			nextBlockX = blockX - 1;
            			nextBlockY = blockY;
            			blockOrientation = Standing;
            			break;
        			case Right:
            			blockAnimation = height2RisingRight;
            			nextBlockAnimation = height2FallingLeft;
            			nextBlockX = blockX + 2;
            			nextBlockY = blockY;
            			blockOrientation = Standing;
            			break;
        			case Up:
            			blockAnimation = width2RollingBack;
            			nextBlockAnimation = width2RollingBack;
            			nextBlockX = blockX;
            			nextBlockY = blockY + 1;
            			break;
        			case Down:
            			blockAnimation = width2RollingFront;
            			nextBlockAnimation = width2RollingBack;
            			nextBlockX = blockX;
            			nextBlockY = blockY - 1;
            			break;
        		}
        		break;
	}
	if (moveCount < 999) moveCount++;
	updateInfoText();
}

void startBlockFalling()
{
	gameState = BlockFalling;
	blockYOfs = 0;
	moveBlock(lastBlockDirection);
	changeMusic(fallingMusic);
	*vecx = 0;
}

void startLevel()
{
	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
	if (levelHighscore == 0) levelHighscore = 999;
    level = levels[levelNumber];
	initSwatches();
	initLevel();
	blockX = level->start.x;
	blockY = level->start.y;
	blockAnimation = height2FallingLeft;
	blockAnimationStep = 0;
	blockAnimating = 0;
	blockOrientation = Standing;
	blockYOfs = -30;
	gameState = BlockMovingToStart;
	changeMusic(startMusic);
	*vecx = 2;
	moveCount = 0;
	updateInfoText();
}

void __attribute__((noinline)) drawField()
{
	
	// set high intensity and beam position
	intens(0x35);
	
	// draw field lines
	/*
	for (int i = 0; i < lineCount; i++) {
		zergnd();
		positd(lineX0[i], lineY0[i]);
		int8_t dx = lineX1[i] - lineX0[i];
		int8_t dy = lineY1[i] - lineY0[i];
		diffab( dy, dx);
	}
	*/
	
	// hand optimized assembler of the previous C code
	asm("	pshs a, b, dp, x, u");
	asm("	lda #0xd0");
	asm("	tfr a, dp");
	asm("	ldx #0");
	asm("	ldb _lineCount");
	asm("drawFieldLoop:");
	asm("	pshs b");
	asm("	pshs x");
	asm("	jsr 0xf354");  // _zergnd
	asm("	puls x");
	asm("	lda _lineY0,x");
	asm("	ldb _lineX0,x");
	asm("	pshs x");
	asm("	jsr 0xf2fc");  // positd
	asm("	puls x");
	asm("	lda _lineY1,x");
	asm("	ldb _lineX1,x");
	asm("	suba _lineY0,x");
	asm("	subb _lineX0,x");
	asm("	pshs x");
	asm("	jsr 0xf3df");  // diffab
	asm("	puls x");
	asm("	lda ,x+");
	asm("	puls b");
	asm("	decb");
	asm("	bne drawFieldLoop");
	asm("	puls a, b, dp, x, u");

}

void drawBlock(int8_t yofs)
{
	zergnd();
	intens(0x63);
	positd(0, yofs);
	
	positd(x3d(blockX, blockY), y3d(blockX, 0, blockY));
	pack1x((void*)(blockAnimation[blockAnimationStep]));
}

void blockMovingToStart()
{
	drawField();
	drawBlock(blockYOfs);
	blockYOfs++;
	if (blockYOfs == 0) {
		gameState = BlockWaiting;
	}
}

void blockWaiting()
{
	drawField();
	drawBlock(0);
	joybit();
	if (pot0 < -10) {
		moveBlock(Left);
		gameState = BlockMoving;
	} else if (pot0 > 10) {
		moveBlock(Right);
		gameState = BlockMoving;
	} else if (pot1 < -10) {
		moveBlock(Down);
		gameState = BlockMoving;
	} else if (pot1 > 10) {
		moveBlock(Up);
		gameState = BlockMoving;
	}
	if (gameState == BlockMoving) {
		changeMusic(movingMusic);
		*vecx = 3;
	}

    	Read_Btns();
    	if (Vec_Buttons & 1) {
		levelNumber++;
		if (levelNumber >= levelCount) levelNumber = 0;
    		startLevel();
    	}
}

void doBlockAnimation()
{
	if (blockAnimating) {
		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
			blockX = nextBlockX;
			blockY = nextBlockY;
			blockAnimationStep = 0;
			blockAnimation = nextBlockAnimation;
			blockAnimating = 0;
		}
	}
}

void blockMoving()
{
	drawField();
	drawBlock(0);
	doBlockAnimation();
	if (!blockAnimating) {
		// check for out of field
		uint8_t c0 = isField(blockX, blockY);
		uint8_t c1 = isField(blockX + 1, blockY);
		uint8_t c2 = isField(blockX, blockY + 1);
		char f0 = getField(blockX, blockY);
		char f1 = getField(blockX + 1, blockY);
		char f2 = getField(blockX, blockY + 1);
		switch (blockOrientation) {
			case Standing:
			if (!c0 || f0 == 'f') {
				startBlockFalling();
			}
			break;
			case Vertical:
			if (!c0 || !c2) {
				startBlockFalling();
			}
			break;
			case Horizontal:
			if (!c0 || ! c1) {
				startBlockFalling();
			}
			break;
		}
		
		// check for block at target
		if (blockOrientation == Standing && blockX == endX && blockY == endY) {
			blockYOfs = 0;
			gameState = BlockMovingAtEnd;
			changeMusic(levelEndMusic);
			*vecx = 1;
		} else {
			// if not falling, wait for next joystick movement
			if (gameState != BlockFalling) {
				gameState = BlockWaiting;
			}
		}

		// check for swatch
		switch (blockOrientation) {
			case Standing:
			if (f0 == 's' || f0 == 'h') {
				swatchSwitch(blockX, blockY);
			}
			break;
			case Vertical:
			if (f0 == 's') {
				swatchSwitch(blockX, blockY);
			}
			if (f2 == 's') {
				swatchSwitch(blockX, blockY + 1);
			}
			break;
			case Horizontal:
			if (f0 == 's') {
				swatchSwitch(blockX, blockY);
			}
			if (f1 == 's') {
				swatchSwitch(blockX + 1, blockY);
			}
			break;
		}
		
	}
}

void blockFalling()
{
	drawField();
	blockYOfs++;
	if (blockYOfs < 12) {
		drawBlock(-blockYOfs*blockYOfs);
		doBlockAnimation();
	}
	if (blockYOfs == 50) {
		startLevel();
	}
}

void blockMovingAtEnd()
{
	drawField();
	drawBlock(blockYOfs);
	blockYOfs++;
	if (blockYOfs == 30) {
		if (moveCount < levelHighscore) {
			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
		}
		levelNumber++;
		if (levelNumber >= levelCount) levelNumber = 0;
		startLevel();
	}
}

void mainMenu()
{
	Read_Btns();
    Intensity_a(0x5f);
    Vec_Text_Width = 90;
    Print_Str_d(100, -70, "MAIN MENU\x80");
    Print_Str_d(50, -110, "1 START GAME\x80");
    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE\x80");
    Print_Str_d(-10, -110, "3 BANKING TEST\x80");
	if (Vec_Buttons & 1) {
		startLevel();
	}
	if (Vec_Buttons & 2) {
		gameState = ClearMenu;
	}
	if (Vec_Buttons & 4) {
		sendCommand(CMD_SET_BANK, 1);
		asm("	jmp 0xf000");
	}
}

void clearMenu()
{
	Read_Btns();
    Intensity_a(0x5f);
    Vec_Text_Width = 90;
    Print_Str_d(100, -80, "CLEAR SCORE?\x80");
    Print_Str_d(50, -110, "3 YES\x80");
    Print_Str_d(20, -110, "4 NO\x80");
	if (Vec_Buttons & 4) {
		for (uint8_t i = 0; i < 6; i++) {
			writeEeprom(i, 0xff);
		}
		gameState = MainMenu;
	}
	if (Vec_Buttons & 8) {
		gameState = MainMenu;
	}
}

const int8_t led8[] = {
	(int8_t) 255, 0, 5,
	(int8_t) 255, -5, 0,
	(int8_t) 255, 0, -5,
	(int8_t) 255, 5, 0,
	(int8_t) 255, 5, 0,
	(int8_t) 255, 0, 5,
	(int8_t) 255, -5, 0,
	1
};

void showInfo2()
{
	zergnd();
	intens(0x50);

	zergnd();
	positd(-50, 100);
	pack1x((void*)led8);

	zergnd();
	positd(-40, 110);
	pack1x((void*)led8);

	zergnd();
	positd(-30, 120);
	pack1x((void*)led8);

	zergnd();
	positd(0, 120);
	pack1x((void*)led8);

	zergnd();
	positd(10, 120);
	pack1x((void*)led8);

	zergnd();
	positd(20, 120);
	pack1x((void*)led8);
}

void showInfo()
{
    Intensity_a(0x5f);
    Vec_Text_Width = 100;
    Print_Str_d(100, -70, infoText);
}

int main()
{
	*vecx = 4;

	// check if PIC is available
	picAvailable = 0;
	sendCommand(CMD_VERSION, 0);
	sendCommand(CMD_VERSION, 0);
	if (sendCommand(CMD_VERSION, 0) == 4) {
		picAvailable = 1;
	}

	// initial info text for current and best move count
	memcpy(infoText, "001 - 999\x80", 10);
	
	// setup joystick read function to read only joystick 1
	epot0 = 1;
	epot1 = 3;
	epot2 = 0;
	epot3 = 0;
	
	gameState = MainMenu;
	startLevel();
	//musicInit();

	while (1) {
		// wait for frame boundary (one frame = 30,000 cyles = 50 Hz)
		frwait();

		switch (gameState) {
			case MainMenu:
        			mainMenu();
				//musicPlay();
        			break;
			case ClearMenu:
				clearMenu();
				//musicPlay();
				break;
			case BlockMovingToStart:
				showInfo();
        			blockMovingToStart();
        			break;
			case BlockWaiting:
				showInfo();
        			blockWaiting();
        			break;
			case BlockMoving:
				showInfo();
        			blockMoving();
        			break;
			case BlockFalling:
				showInfo();
        			blockFalling();
        			break;
			case BlockMovingAtEnd:
				showInfo();
        			blockMovingAtEnd();
        			break;
		}
		
		// play next music note
		if (gameState > ClearMenu) {
    			DP_to_C8();
    			replay(currentMusic);
    			DP_to_D0();
    			reqout();
		}
	}
	return 0;
}
