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

#include <vectrex.h>

// PIC commands
#define CMD_VERSION 1
#define CMD_SET_EEPROM_ADR 2
#define CMD_EEPROM_WRITE 3
#define CMD_EEPROM_READ 4
#define CMD_SET_BANK 5

extern void* memcpy (void* dest, const void* src, long unsigned int len);

typedef unsigned long uint16_t;

typedef signed char int8_t;
typedef unsigned char uint8_t;

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

char infoText[10];

uint16_t moveCount;

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

#include "level.i"
#include "block.i"


#define MAX_LINES 80
uint8_t moveScale[MAX_LINES];
unsigned long int moveTo[MAX_LINES];

uint8_t lineScale[MAX_LINES];
int8_t lineX0[MAX_LINES];
int8_t lineY0[MAX_LINES];
int8_t lineX1[MAX_LINES];
int8_t lineY1[MAX_LINES];
uint8_t lineCount = 0;
int8_t startX = 0;
int8_t startY = 0;
int8_t endX = 0;
int8_t endY = 0;

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
const char* level;
int8_t levelNumber = 0;
uint16_t levelHighscore;

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
	itoa(levelHighscore, &infoText[6]);
}

char isField(char c)
{
	return (char)(c == '.' || c == 'a' || c == 'o');
}

int8_t x3d(int8_t x, int8_t y, int8_t z)
{
	// c * x - d * z
	x -= LEVEL_WIDTH / 2 - 4;
	return 14 * x - 6 * z+0*y;
}

int8_t y3d(int8_t x, int8_t y, int8_t z)
{
	// b * d * x + a * y + b * c * z
	y -= LEVEL_HEIGHT / 2;
	return 3 * x + 13 * y + 8 * z;
}

uint8_t scaleDown(uint8_t oldScale)
{
	return (uint8_t)(oldScale>>1);
}

unsigned long int toLong(int hi, int lo)
{
	unsigned long int t = (unsigned long int)hi;
	t = t << 8;
	unsigned long int t2 = (unsigned long int)lo;
	t2 = t2 & 0xff;
	t = t & 0xff00;
	t = t + t2;
	return t;
}


uint8_t correctScale(uint8_t s)
{
	if (s==0x80) return 0x80;
	if (s==0x40) return 0x40-1;
	if (s==0x20) return 0x20-2;
	return s;
}
#define DO_SCALE 1
void addLine(int8_t x0, int8_t y0, int8_t x1, int8_t y1)
{

	lineX0[lineCount] = x3d(x0, 0, y0);
	lineY0[lineCount] = y3d(x0, 0, y0);
	lineX1[lineCount] = x3d(x1, 0, y1);
	lineY1[lineCount] = y3d(x1, 0, y1);

	lineScale[lineCount] = 0x80;
	moveScale[lineCount] = 0x80;

	int xpos = lineX0[lineCount]; 
	int ypos = lineY0[lineCount]; 
#ifdef DO_SCALE	

	// Line	
	int difx = (lineX1[lineCount]-lineX0[lineCount]); 
	int dify = (lineY1[lineCount]-lineY0[lineCount]); 
	if (difx<0) difx = -difx;
	if (dify<0) dify = -dify;
	if ((difx<64) && (dify<64)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
	if ((difx<32) && (dify<32)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);

	// Move	
  	difx = lineX0[lineCount]; 
    	dify = lineY0[lineCount]; 
    	if (difx<0) difx = -difx;
    	if (dify<0) dify = -dify;
    	if ((difx<64) && (dify<64)) 
	{
		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
		xpos = xpos<<1;
		ypos = ypos<<1;
	}
    	if ((difx<32) && (dify<32)) 
	{
		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
		xpos = xpos<<1;
		ypos = ypos<<1;
	}

	
	lineScale[lineCount] = correctScale(lineScale[lineCount]);
	moveScale[lineCount] = correctScale(moveScale[lineCount]);
	
	
#endif
	
	moveTo[lineCount] =toLong(ypos, xpos);
	lineCount++;
}


void addTarget(int8_t x, int8_t y)
{
	lineX0[lineCount] = x3d(x, 0, y);
	lineY0[lineCount] = y3d(x, 0, y);
	lineX1[lineCount] = x3d(x + 1, 0, y + 1);
	lineY1[lineCount] = y3d(x + 1, 0, y + 1);

	lineScale[lineCount] = 0x80;
	moveScale[lineCount] = 0x80;
	int xpos = lineX0[lineCount]; 
	int ypos = lineY0[lineCount]; 

#ifdef DO_SCALE	
	// Line
	int difx = lineX1[lineCount] - lineX0[lineCount]; 
	int dify = lineY1[lineCount] - lineY0[lineCount]; 
	if (difx<0) difx = -difx;
	if (dify<0) dify = -dify;
	if ((difx<64) && (dify<64)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
	if ((difx<32) && (dify<32)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);

	// Move
	difx = lineX0[lineCount]; 
    	dify = lineY0[lineCount]; 
    	if (difx<0) difx = -difx;
    	if (dify<0) dify = -dify;

	if ((difx<64) && (dify<64)) 
	{
		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
		xpos = xpos<<1;
		ypos = ypos<<1;
	}
    	if ((difx<32) && (dify<32)) 
	{
		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
		xpos = xpos<<1;
		ypos = ypos<<1;
	}
	lineScale[lineCount] = correctScale(lineScale[lineCount]);
	moveScale[lineCount] = correctScale(moveScale[lineCount]);
#endif
	moveTo[lineCount] =toLong(ypos, xpos);
	lineCount++;



	lineX0[lineCount] = x3d(x + 1, 0, y);
	lineY0[lineCount] = y3d(x + 1, 0, y);
	lineX1[lineCount] = x3d(x, 0, y + 1);
	lineY1[lineCount] = y3d(x, 0, y + 1);
	
	lineScale[lineCount] = 0x80;
	moveScale[lineCount] = 0x80;

	xpos = lineX0[lineCount]; 
	ypos = lineY0[lineCount]; 
	
#ifdef DO_SCALE	
// Line	
	difx = lineX1[lineCount] - lineX0[lineCount]; 
	dify = lineY1[lineCount] - lineY0[lineCount]; 
	if (difx<0) difx = -difx;
	if (dify<0) dify = -dify;
	if ((difx<64) && (dify<64)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
	if ((difx<32) && (dify<32)) lineScale[lineCount] =  scaleDown(lineScale[lineCount]);

// Move
    	difx = lineX0[lineCount]; 
    	dify = lineY0[lineCount]; 
    	if (difx<0) difx = -difx;
    	if (dify<0) dify = -dify;

	if ((difx<64) && (dify<64)) 
	{
		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
		xpos = xpos<<1;
		ypos = ypos<<1;
	}
    	if ((difx<32) && (dify<32)) 
	{
		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
		xpos = xpos<<1;
		ypos = ypos<<1;
	}
	lineScale[lineCount] = correctScale(lineScale[lineCount]);
	moveScale[lineCount] = correctScale(moveScale[lineCount]);
#endif
	moveTo[lineCount] =toLong(ypos, xpos);
	lineCount++;
}

/*
  since gcc DEFAULT is int_8
  calculations for large array index with "just numbers" and Muls
  is dangerous, one has to watch out, that the array (with large numbers)
  is accessed right.
  The new variable "index" takes this into account!
*/


void setupX()
{
	//	int8_t c = 0;
	unsigned long int index;
	int8_t x = 0;
	int8_t y = 0;
	for (y = 0; y < LEVEL_HEIGHT - 1; y++) {
		int8_t x0 = -1;
		int8_t x1 = -1;
		for (x = 0; x < LEVEL_WIDTH; x++) {
//			char c0 = level[x + y * LEVEL_WIDTH];
			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
			char c0 = level[index];
			
			if (c0 == 'o') {
				addTarget(x, y);
				endX = x;
				endY = y;
			}
			if (c0 == 'a') {
				startX = x;
				startY = y;
			}
//			char c1 = level[x + (y + 1) * LEVEL_WIDTH];
			index += LEVEL_WIDTH;
			char c1 = level[index];
			if (isField(c0) || isField(c1)) {
				if (x0 < 0) x0 = x;
				x1 = x;
			} else {
				if (x0 >= 0) {
					addLine(x0, y + 1, x1 + 1, y + 1);
					x0 = -1;
				}
			}
		}
	}
}

void setupY()
{
	//	int8_t c = 0;
	unsigned long int index;
	int8_t x = 0;
	int8_t y = 0;
	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
		int8_t y0 = -1;
		int8_t y1 = -1;
		for (y = 0; y < LEVEL_HEIGHT; y++) {

//			char c0 = level[x + y * LEVEL_WIDTH];
//			char c1 = level[x + 1 + y * LEVEL_WIDTH];

			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
			char c0 = level[index];
			char c1 = level[index+1];
			if (isField(c0) || isField(c1)) {
				if (y0 < 0) y0 = y;
				y1 = y;
			} else {
				if (y0 >= 0) {
					addLine(x + 1, y0, x + 1, y1 + 1);
					y0 = -1;
				}
			}
		}
	}
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
}

void startLevel()
{
	if (levelNumber == 0) {
		level = level0;
	} else if (levelNumber == 1) {
		level = level1;
	} else {
		level = level2;
	}
//		level = level2;
	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
	if (levelHighscore == 0) levelHighscore = 999;
	lineCount = 0;
	setupX();
	setupY();
	blockX = startX;
	blockY = startY;
	blockAnimation = height2FallingLeft;
	blockAnimationStep = 0;
	blockAnimating = 0;
	blockOrientation = Standing;
	blockYOfs = -30;
	gameState = BlockMovingToStart;
	changeMusic(startMusic);
	moveCount = 0;
	updateInfoText();
}



extern void drawFieldAsmScale();
void __attribute__((noinline)) drawField()
{
	
	// set high intensity and beam position
	intens(0x55);
	drawFieldAsmScale();
}


void drawBlock(int8_t yofs)
{
	zergnd();
	intens(0x63);
	positd(0, yofs);
	
	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
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
		// char c0 = isField(level[blockX + blockY * LEVEL_WIDTH]);
		// char c1 = isField(level[blockX + 1 + blockY * LEVEL_WIDTH]);
		// char c2 = isField(level[blockX + (blockY + 1) * LEVEL_WIDTH]);
		unsigned long int index = (unsigned long int )blockY * LEVEL_WIDTH + (unsigned long int)blockX;
		char c0 = isField(level[index]);
		char c1 = isField(level[index+1]);
		char c2 = isField(level[index + LEVEL_WIDTH]);
		switch (blockOrientation) {
			case Standing:
			if (!c0) {
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
		} else {
			// if not falling, wait for next joystick movement
			if (gameState != BlockFalling) {
				gameState = BlockWaiting;
			}
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
		if (levelNumber > 2) levelNumber = 0;
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
	// check if PIC is available
	picAvailable = 0;
	sendCommand(CMD_VERSION, 0);
	sendCommand(CMD_VERSION, 0);
	if (sendCommand(CMD_VERSION, 0) == 4) {
		picAvailable = 1;
	}

	// initial info text for current and best move count
	memcpy(infoText, "001 / 999\x80", 10);
	
	// setup joystick read function to read only joystick 1
	epot0 = 1;
	epot1 = 3;
	epot2 = 0;
	epot3 = 0;
	
	gameState = MainMenu;

	while (1) {
		// wait for frame boundary (one frame = 30,000 cyles = 50 Hz)
		frwait();

		switch (gameState) {
			case MainMenu:
        			mainMenu();
        			break;
			case ClearMenu:
				clearMenu();
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
		DP_to_C8();
		replay(currentMusic);
		DP_to_D0();
		reqout();
	}
	return 0;
}
