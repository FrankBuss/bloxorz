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

typedef signed char int8_t;
typedef unsigned char uint8_t;

#define zergnd Reset0Ref
#define frwait Wait_Recal
#define intens Intensity_a
#define diffab Draw_Line_d
#define pack1x Draw_VLp_7F
#define joybit Joy_Digital
#define replay Init_Music_chk
#define reqout Do_Sound
__INLINE void positd (int8_t x, int8_t y)
{
{asm("; #ENR#[40]	Moveto_d_7F(y,x);");}
	Moveto_d_7F(y,x);
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

int8_t lineX0[120];
int8_t lineY0[120];
int8_t lineX1[120];
int8_t lineY1[120];
int8_t lineCount = 0;
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

enum GameState_t {
	BlockMovingToStart,
	BlockWaiting,
	BlockMoving,
	BlockFalling,
	BlockMovingAtEnd,
} gameState;

enum BlockDirection_t {
	Left, Up, Right, Down
};

char isField(char c)
{
{asm("; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');");}
	return (char)(c == '.' || c == 'a' || c == 'o');
}

int8_t x3d(int8_t x, int8_t y, int8_t z)
{
	// c * x - d * z
{asm("; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;");}
	x -= LEVEL_WIDTH / 2 - 4;
{asm("; #ENR#[183]	return 14 * x - 6 * z+0*y;");}
	return 14 * x - 6 * z+0*y;
}

int8_t y3d(int8_t x, int8_t y, int8_t z)
{
	// b * d * x + a * y + b * c * z
{asm("; #ENR#[189]	y -= LEVEL_HEIGHT / 2;");}
	y -= LEVEL_HEIGHT / 2;
{asm("; #ENR#[190]	return 3 * x + 13 * y + 8 * z;");}
	return 3 * x + 13 * y + 8 * z;
}

void addLine(int8_t x0, int8_t y0, int8_t x1, int8_t y1)
{
{asm("; #ENR#[195]	lineX0[lineCount] = x3d(x0, 0, y0);");}
	lineX0[lineCount] = x3d(x0, 0, y0);
{asm("; #ENR#[196]	lineY0[lineCount] = y3d(x0, 0, y0);");}
	lineY0[lineCount] = y3d(x0, 0, y0);
{asm("; #ENR#[197]	lineX1[lineCount] = x3d(x1, 0, y1);");}
	lineX1[lineCount] = x3d(x1, 0, y1);
{asm("; #ENR#[198]	lineY1[lineCount] = y3d(x1, 0, y1);");}
	lineY1[lineCount] = y3d(x1, 0, y1);
{asm("; #ENR#[199]	lineCount++;");}
	lineCount++;
}

void addTarget(int8_t x, int8_t y)
{
{asm("; #ENR#[204]	lineX0[lineCount] = x3d(x, 0, y);");}
	lineX0[lineCount] = x3d(x, 0, y);
{asm("; #ENR#[205]	lineY0[lineCount] = y3d(x, 0, y);");}
	lineY0[lineCount] = y3d(x, 0, y);
{asm("; #ENR#[206]	lineX1[lineCount] = x3d(x + 1, 0, y + 1);");}
	lineX1[lineCount] = x3d(x + 1, 0, y + 1);
{asm("; #ENR#[207]	lineY1[lineCount] = y3d(x + 1, 0, y + 1);");}
	lineY1[lineCount] = y3d(x + 1, 0, y + 1);
{asm("; #ENR#[208]	lineCount++;");}
	lineCount++;
{asm("; #ENR#[209]	lineX0[lineCount] = x3d(x + 1, 0, y);");}
	lineX0[lineCount] = x3d(x + 1, 0, y);
{asm("; #ENR#[210]	lineY0[lineCount] = y3d(x + 1, 0, y);");}
	lineY0[lineCount] = y3d(x + 1, 0, y);
{asm("; #ENR#[211]	lineX1[lineCount] = x3d(x, 0, y + 1);");}
	lineX1[lineCount] = x3d(x, 0, y + 1);
{asm("; #ENR#[212]	lineY1[lineCount] = y3d(x, 0, y + 1);");}
	lineY1[lineCount] = y3d(x, 0, y + 1);
{asm("; #ENR#[213]	lineCount++;");}
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
{asm("; #ENR#[228]	unsigned long int index;");}
	unsigned long int index;
{asm("; #ENR#[229]	int8_t x = 0;");}
	int8_t x = 0;
{asm("; #ENR#[230]	int8_t y = 0;");}
	int8_t y = 0;
{asm("; #ENR#[231]	for (y = 0; y < LEVEL_HEIGHT - 1; y++) {");}
	for (y = 0; y < LEVEL_HEIGHT - 1; y++) {
{asm("; #ENR#[232]		int8_t x0 = -1;");}
		int8_t x0 = -1;
{asm("; #ENR#[233]		int8_t x1 = -1;");}
		int8_t x1 = -1;
{asm("; #ENR#[234]		for (x = 0; x < LEVEL_WIDTH; x++) {");}
		for (x = 0; x < LEVEL_WIDTH; x++) {
//			char c0 = level[x + y * LEVEL_WIDTH];
{asm("; #ENR#[236]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;");}
			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
{asm("; #ENR#[237]			char c0 = level[index];");}
			char c0 = level[index];
			
{asm("; #ENR#[239]			if (c0 == 'o') {");}
			if (c0 == 'o') {
{asm("; #ENR#[240]				addTarget(x, y);");}
				addTarget(x, y);
{asm("; #ENR#[241]				endX = x;");}
				endX = x;
{asm("; #ENR#[242]				endY = y;");}
				endY = y;
			}
{asm("; #ENR#[244]			if (c0 == 'a') {");}
			if (c0 == 'a') {
{asm("; #ENR#[245]				startX = x;");}
				startX = x;
{asm("; #ENR#[246]				startY = y;");}
				startY = y;
			}
//			char c1 = level[x + (y + 1) * LEVEL_WIDTH];
{asm("; #ENR#[249]			index += LEVEL_WIDTH;");}
			index += LEVEL_WIDTH;
{asm("; #ENR#[250]			char c1 = level[index];");}
			char c1 = level[index];
{asm("; #ENR#[251]			if (isField(c0) || isField(c1)) {");}
			if (isField(c0) || isField(c1)) {
{asm("; #ENR#[252]				if (x0 < 0) x0 = x;");}
				if (x0 < 0) x0 = x;
{asm("; #ENR#[253]				x1 = x;");}
				x1 = x;
			} else {
{asm("; #ENR#[255]				if (x0 >= 0) {");}
				if (x0 >= 0) {
{asm("; #ENR#[256]					addLine(x0, y + 1, x1 + 1, y + 1);");}
					addLine(x0, y + 1, x1 + 1, y + 1);
{asm("; #ENR#[257]					x0 = -1;");}
					x0 = -1;
				}
			}
		}
	}
}

void setupY()
{
	//	int8_t c = 0;
{asm("; #ENR#[267]	unsigned long int index;");}
	unsigned long int index;
{asm("; #ENR#[268]	int8_t x = 0;");}
	int8_t x = 0;
{asm("; #ENR#[269]	int8_t y = 0;");}
	int8_t y = 0;
{asm("; #ENR#[270]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {");}
	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
{asm("; #ENR#[271]		int8_t y0 = -1;");}
		int8_t y0 = -1;
{asm("; #ENR#[272]		int8_t y1 = -1;");}
		int8_t y1 = -1;
{asm("; #ENR#[273]		for (y = 0; y < LEVEL_HEIGHT; y++) {");}
		for (y = 0; y < LEVEL_HEIGHT; y++) {

//			char c0 = level[x + y * LEVEL_WIDTH];
//			char c1 = level[x + 1 + y * LEVEL_WIDTH];

{asm("; #ENR#[278]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;");}
			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
{asm("; #ENR#[279]			char c0 = level[index];");}
			char c0 = level[index];
{asm("; #ENR#[280]			char c1 = level[index+1];");}
			char c1 = level[index+1];
{asm("; #ENR#[281]			if (isField(c0) || isField(c1)) {");}
			if (isField(c0) || isField(c1)) {
{asm("; #ENR#[282]				if (y0 < 0) y0 = y;");}
				if (y0 < 0) y0 = y;
{asm("; #ENR#[283]				y1 = y;");}
				y1 = y;
			} else {
{asm("; #ENR#[285]				if (y0 >= 0) {");}
				if (y0 >= 0) {
{asm("; #ENR#[286]					addLine(x + 1, y0, x + 1, y1 + 1);");}
					addLine(x + 1, y0, x + 1, y1 + 1);
{asm("; #ENR#[287]					y0 = -1;");}
					y0 = -1;
				}
			}
		}
	}
}

void changeMusic(const uint8_t* music)
{
{asm("; #ENR#[296]	tstat = 1;");}
	tstat = 1;
{asm("; #ENR#[297]	currentMusic = music;");}
	currentMusic = music;
}

void moveBlock(enum BlockDirection_t move)
{
{asm("; #ENR#[302]	blockAnimating = 1;");}
	blockAnimating = 1;
{asm("; #ENR#[303]	lastBlockDirection = move;");}
	lastBlockDirection = move;
{asm("; #ENR#[304]	switch (blockOrientation) {");}
	switch (blockOrientation) {
{asm("; #ENR#[305]		case Standing:");}
		case Standing:
{asm("; #ENR#[306]		switch (move) {");}
		switch (move) {
{asm("; #ENR#[307]			case Left:");}
			case Left:
{asm("; #ENR#[308]			blockAnimation = height2FallingLeft;");}
			blockAnimation = height2FallingLeft;
{asm("; #ENR#[309]			nextBlockAnimation = width2RollingFront;");}
			nextBlockAnimation = width2RollingFront;
{asm("; #ENR#[310]			nextBlockX = blockX - 2;");}
			nextBlockX = blockX - 2;
{asm("; #ENR#[311]			nextBlockY = blockY;");}
			nextBlockY = blockY;
{asm("; #ENR#[312]			blockOrientation = Horizontal;");}
			blockOrientation = Horizontal;
{asm("; #ENR#[313]			break;");}
			break;
{asm("; #ENR#[314]			case Right:");}
			case Right:
{asm("; #ENR#[315]			blockAnimation = height2FallingRight;");}
			blockAnimation = height2FallingRight;
{asm("; #ENR#[316]			nextBlockAnimation = width2RollingFront;");}
			nextBlockAnimation = width2RollingFront;
{asm("; #ENR#[317]			nextBlockX = blockX + 1;");}
			nextBlockX = blockX + 1;
{asm("; #ENR#[318]			nextBlockY = blockY;");}
			nextBlockY = blockY;
{asm("; #ENR#[319]			blockOrientation = Horizontal;");}
			blockOrientation = Horizontal;
{asm("; #ENR#[320]			break;");}
			break;
{asm("; #ENR#[321]			case Up:");}
			case Up:
{asm("; #ENR#[322]			blockAnimation = height2FallingBack;");}
			blockAnimation = height2FallingBack;
{asm("; #ENR#[323]			nextBlockAnimation = depth2RollingLeft;");}
			nextBlockAnimation = depth2RollingLeft;
{asm("; #ENR#[324]			nextBlockX = blockX;");}
			nextBlockX = blockX;
{asm("; #ENR#[325]			nextBlockY = blockY + 1;");}
			nextBlockY = blockY + 1;
{asm("; #ENR#[326]			blockOrientation = Vertical;");}
			blockOrientation = Vertical;
{asm("; #ENR#[327]			break;");}
			break;
{asm("; #ENR#[328]			case Down:");}
			case Down:
{asm("; #ENR#[329]			blockAnimation = height2FallingFront;");}
			blockAnimation = height2FallingFront;
{asm("; #ENR#[330]			nextBlockAnimation = depth2RollingLeft;");}
			nextBlockAnimation = depth2RollingLeft;
{asm("; #ENR#[331]			nextBlockX = blockX;");}
			nextBlockX = blockX;
{asm("; #ENR#[332]			nextBlockY = blockY - 2;");}
			nextBlockY = blockY - 2;
{asm("; #ENR#[333]			blockOrientation = Vertical;");}
			blockOrientation = Vertical;
{asm("; #ENR#[334]			break;");}
			break;
		}
{asm("; #ENR#[336]		break;");}
		break;
{asm("; #ENR#[337]		case Vertical:");}
		case Vertical:
{asm("; #ENR#[338]		switch (move) {");}
		switch (move) {
{asm("; #ENR#[339]			case Left:");}
			case Left:
{asm("; #ENR#[340]			blockAnimation = depth2RollingLeft;");}
			blockAnimation = depth2RollingLeft;
{asm("; #ENR#[341]			nextBlockAnimation = depth2RollingLeft;");}
			nextBlockAnimation = depth2RollingLeft;
{asm("; #ENR#[342]			nextBlockX = blockX - 1;");}
			nextBlockX = blockX - 1;
{asm("; #ENR#[343]			nextBlockY = blockY;");}
			nextBlockY = blockY;
{asm("; #ENR#[344]			break;");}
			break;
{asm("; #ENR#[345]			case Right:");}
			case Right:
{asm("; #ENR#[346]			blockAnimation = depth2RollingRight;");}
			blockAnimation = depth2RollingRight;
{asm("; #ENR#[347]			nextBlockAnimation = depth2RollingLeft;");}
			nextBlockAnimation = depth2RollingLeft;
{asm("; #ENR#[348]			nextBlockX = blockX + 1;");}
			nextBlockX = blockX + 1;
{asm("; #ENR#[349]			nextBlockY = blockY;");}
			nextBlockY = blockY;
{asm("; #ENR#[350]			break;");}
			break;
{asm("; #ENR#[351]			case Up:");}
			case Up:
{asm("; #ENR#[352]			blockAnimation = height2RisingBack;");}
			blockAnimation = height2RisingBack;
{asm("; #ENR#[353]			nextBlockAnimation = height2FallingFront;");}
			nextBlockAnimation = height2FallingFront;
{asm("; #ENR#[354]			nextBlockX = blockX;");}
			nextBlockX = blockX;
{asm("; #ENR#[355]			nextBlockY = blockY + 2;");}
			nextBlockY = blockY + 2;
{asm("; #ENR#[356]			blockOrientation = Standing;");}
			blockOrientation = Standing;
{asm("; #ENR#[357]			break;");}
			break;
{asm("; #ENR#[358]			case Down:");}
			case Down:
{asm("; #ENR#[359]			blockAnimation = height2RisingFront;");}
			blockAnimation = height2RisingFront;
{asm("; #ENR#[360]			nextBlockAnimation = height2FallingFront;");}
			nextBlockAnimation = height2FallingFront;
{asm("; #ENR#[361]			nextBlockX = blockX;");}
			nextBlockX = blockX;
{asm("; #ENR#[362]			nextBlockY = blockY - 1;");}
			nextBlockY = blockY - 1;
{asm("; #ENR#[363]			blockOrientation = Standing;");}
			blockOrientation = Standing;
{asm("; #ENR#[364]			break;");}
			break;
		}
{asm("; #ENR#[366]		break;");}
		break;
{asm("; #ENR#[367]		case Horizontal:");}
		case Horizontal:
{asm("; #ENR#[368]		switch (move) {");}
		switch (move) {
{asm("; #ENR#[369]			case Left:");}
			case Left:
{asm("; #ENR#[370]			blockAnimation = height2RisingLeft;");}
			blockAnimation = height2RisingLeft;
{asm("; #ENR#[371]			nextBlockAnimation = height2FallingRight;");}
			nextBlockAnimation = height2FallingRight;
{asm("; #ENR#[372]			nextBlockX = blockX - 1;");}
			nextBlockX = blockX - 1;
{asm("; #ENR#[373]			nextBlockY = blockY;");}
			nextBlockY = blockY;
{asm("; #ENR#[374]			blockOrientation = Standing;");}
			blockOrientation = Standing;
{asm("; #ENR#[375]			break;");}
			break;
{asm("; #ENR#[376]			case Right:");}
			case Right:
{asm("; #ENR#[377]			blockAnimation = height2RisingRight;");}
			blockAnimation = height2RisingRight;
{asm("; #ENR#[378]			nextBlockAnimation = height2FallingLeft;");}
			nextBlockAnimation = height2FallingLeft;
{asm("; #ENR#[379]			nextBlockX = blockX + 2;");}
			nextBlockX = blockX + 2;
{asm("; #ENR#[380]			nextBlockY = blockY;");}
			nextBlockY = blockY;
{asm("; #ENR#[381]			blockOrientation = Standing;");}
			blockOrientation = Standing;
{asm("; #ENR#[382]			break;");}
			break;
{asm("; #ENR#[383]			case Up:");}
			case Up:
{asm("; #ENR#[384]			blockAnimation = width2RollingBack;");}
			blockAnimation = width2RollingBack;
{asm("; #ENR#[385]			nextBlockAnimation = width2RollingBack;");}
			nextBlockAnimation = width2RollingBack;
{asm("; #ENR#[386]			nextBlockX = blockX;");}
			nextBlockX = blockX;
{asm("; #ENR#[387]			nextBlockY = blockY + 1;");}
			nextBlockY = blockY + 1;
{asm("; #ENR#[388]			break;");}
			break;
{asm("; #ENR#[389]			case Down:");}
			case Down:
{asm("; #ENR#[390]			blockAnimation = width2RollingFront;");}
			blockAnimation = width2RollingFront;
{asm("; #ENR#[391]			nextBlockAnimation = width2RollingBack;");}
			nextBlockAnimation = width2RollingBack;
{asm("; #ENR#[392]			nextBlockX = blockX;");}
			nextBlockX = blockX;
{asm("; #ENR#[393]			nextBlockY = blockY - 1;");}
			nextBlockY = blockY - 1;
{asm("; #ENR#[394]			break;");}
			break;
		}
{asm("; #ENR#[396]		break;");}
		break;
	}
}

void startBlockFalling()
{
{asm("; #ENR#[402]	gameState = BlockFalling;");}
	gameState = BlockFalling;
{asm("; #ENR#[403]	blockYOfs = 0;");}
	blockYOfs = 0;
{asm("; #ENR#[404]	moveBlock(lastBlockDirection);");}
	moveBlock(lastBlockDirection);
{asm("; #ENR#[405]	changeMusic(fallingMusic);");}
	changeMusic(fallingMusic);
}

void startLevel()
{
{asm("; #ENR#[410]	if (levelNumber == 0) {");}
	if (levelNumber == 0) {
{asm("; #ENR#[411]		level = level0;");}
		level = level0;
	} else if (levelNumber == 1) {
{asm("; #ENR#[413]		level = level1;");}
		level = level1;
	} else {
{asm("; #ENR#[415]		level = level2;");}
		level = level2;
	}
{asm("; #ENR#[417]	lineCount = 0;");}
	lineCount = 0;
{asm("; #ENR#[418]	setupX();");}
	setupX();
{asm("; #ENR#[419]	setupY();");}
	setupY();
{asm("; #ENR#[420]	blockX = startX;");}
	blockX = startX;
{asm("; #ENR#[421]	blockY = startY;");}
	blockY = startY;
{asm("; #ENR#[422]	blockAnimation = height2FallingLeft;");}
	blockAnimation = height2FallingLeft;
{asm("; #ENR#[423]	blockAnimationStep = 0;");}
	blockAnimationStep = 0;
{asm("; #ENR#[424]	blockAnimating = 0;");}
	blockAnimating = 0;
{asm("; #ENR#[425]	blockOrientation = Standing;");}
	blockOrientation = Standing;
{asm("; #ENR#[426]	blockYOfs = -30;");}
	blockYOfs = -30;
{asm("; #ENR#[427]	gameState = BlockMovingToStart;");}
	gameState = BlockMovingToStart;
{asm("; #ENR#[428]	changeMusic(startMusic);");}
	changeMusic(startMusic);
}

void __attribute__((noinline)) drawField()
{
	
	// set high intensity and beam position
{asm("; #ENR#[435]	intens(0x55);");}
	intens(0x55);
	
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
{asm("; #ENR#[481]	zergnd();");}
	zergnd();
{asm("; #ENR#[482]	intens(0x63);");}
	intens(0x63);
{asm("; #ENR#[483]	positd(0, yofs);");}
	positd(0, yofs);
	
{asm("; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));");}
	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
	//	pack1x(blockAnimation[blockAnimationStep], 0);
{asm("; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));");}
	pack1x((void*)(blockAnimation[blockAnimationStep]));
}

void blockMovingToStart()
{
{asm("; #ENR#[492]	drawField();");}
	drawField();
{asm("; #ENR#[493]	drawBlock(blockYOfs);");}
	drawBlock(blockYOfs);
{asm("; #ENR#[494]	blockYOfs++;");}
	blockYOfs++;
{asm("; #ENR#[495]	if (blockYOfs == 0) {");}
	if (blockYOfs == 0) {
{asm("; #ENR#[496]		gameState = BlockWaiting;");}
		gameState = BlockWaiting;
	}
}

void blockWaiting()
{
{asm("; #ENR#[502]	drawField();");}
	drawField();
{asm("; #ENR#[503]	drawBlock(0);");}
	drawBlock(0);
{asm("; #ENR#[504]	joybit();");}
	joybit();
{asm("; #ENR#[505]	if (pot0 < -10) {");}
	if (pot0 < -10) {
{asm("; #ENR#[506]		moveBlock(Left);");}
		moveBlock(Left);
{asm("; #ENR#[507]		gameState = BlockMoving;");}
		gameState = BlockMoving;
	} else if (pot0 > 10) {
{asm("; #ENR#[509]		moveBlock(Right);");}
		moveBlock(Right);
{asm("; #ENR#[510]		gameState = BlockMoving;");}
		gameState = BlockMoving;
	} else if (pot1 < -10) {
{asm("; #ENR#[512]		moveBlock(Down);");}
		moveBlock(Down);
{asm("; #ENR#[513]		gameState = BlockMoving;");}
		gameState = BlockMoving;
	} else if (pot1 > 10) {
{asm("; #ENR#[515]		moveBlock(Up);");}
		moveBlock(Up);
{asm("; #ENR#[516]		gameState = BlockMoving;");}
		gameState = BlockMoving;
	}
{asm("; #ENR#[518]	if (gameState == BlockMoving) {");}
	if (gameState == BlockMoving) {
{asm("; #ENR#[519]		changeMusic(movingMusic);");}
		changeMusic(movingMusic);
	}
}

void doBlockAnimation()
{
{asm("; #ENR#[525]	if (blockAnimating) {");}
	if (blockAnimating) {
{asm("; #ENR#[526]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {");}
		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
{asm("; #ENR#[527]			blockX = nextBlockX;");}
			blockX = nextBlockX;
{asm("; #ENR#[528]			blockY = nextBlockY;");}
			blockY = nextBlockY;
{asm("; #ENR#[529]			blockAnimationStep = 0;");}
			blockAnimationStep = 0;
{asm("; #ENR#[530]			blockAnimation = nextBlockAnimation;");}
			blockAnimation = nextBlockAnimation;
{asm("; #ENR#[531]			blockAnimating = 0;");}
			blockAnimating = 0;
		}
	}
}

void blockMoving()
{
{asm("; #ENR#[538]	drawField();");}
	drawField();
{asm("; #ENR#[539]	drawBlock(0);");}
	drawBlock(0);
{asm("; #ENR#[540]	doBlockAnimation();");}
	doBlockAnimation();
{asm("; #ENR#[541]	if (!blockAnimating) {");}
	if (!blockAnimating) {
		// check for out of field
		// char c0 = isField(level[blockX + blockY * LEVEL_WIDTH]);
		// char c1 = isField(level[blockX + 1 + blockY * LEVEL_WIDTH]);
		// char c2 = isField(level[blockX + (blockY + 1) * LEVEL_WIDTH]);
{asm("; #ENR#[546]		unsigned long int index = (unsigned long int )blockY * LEVEL_WIDTH + (unsigned long int)blockX;");}
		unsigned long int index = (unsigned long int )blockY * LEVEL_WIDTH + (unsigned long int)blockX;
{asm("; #ENR#[547]		char c0 = isField(level[index]);");}
		char c0 = isField(level[index]);
{asm("; #ENR#[548]		char c1 = isField(level[index+1]);");}
		char c1 = isField(level[index+1]);
{asm("; #ENR#[549]		char c2 = isField(level[index + LEVEL_WIDTH]);");}
		char c2 = isField(level[index + LEVEL_WIDTH]);
{asm("; #ENR#[550]		switch (blockOrientation) {");}
		switch (blockOrientation) {
{asm("; #ENR#[551]			case Standing:");}
			case Standing:
{asm("; #ENR#[552]			if (!c0) {");}
			if (!c0) {
{asm("; #ENR#[553]				startBlockFalling();");}
				startBlockFalling();
			}
{asm("; #ENR#[555]			break;");}
			break;
{asm("; #ENR#[556]			case Vertical:");}
			case Vertical:
{asm("; #ENR#[557]			if (!c0 || !c2) {");}
			if (!c0 || !c2) {
{asm("; #ENR#[558]				startBlockFalling();");}
				startBlockFalling();
			}
{asm("; #ENR#[560]			break;");}
			break;
{asm("; #ENR#[561]			case Horizontal:");}
			case Horizontal:
{asm("; #ENR#[562]			if (!c0 || ! c1) {");}
			if (!c0 || ! c1) {
{asm("; #ENR#[563]				startBlockFalling();");}
				startBlockFalling();
			}
{asm("; #ENR#[565]			break;");}
			break;
		}
		
		// check for block at target
{asm("; #ENR#[569]		if (blockOrientation == Standing && blockX == endX && blockY == endY) {");}
		if (blockOrientation == Standing && blockX == endX && blockY == endY) {
{asm("; #ENR#[570]			blockYOfs = 0;");}
			blockYOfs = 0;
{asm("; #ENR#[571]			gameState = BlockMovingAtEnd;");}
			gameState = BlockMovingAtEnd;
{asm("; #ENR#[572]			changeMusic(levelEndMusic);");}
			changeMusic(levelEndMusic);
		} else {
			// if not falling, wait for next joystick movement
{asm("; #ENR#[575]			if (gameState != BlockFalling) {");}
			if (gameState != BlockFalling) {
{asm("; #ENR#[576]				gameState = BlockWaiting;");}
				gameState = BlockWaiting;
			}
		}
	}
}

void blockFalling()
{
{asm("; #ENR#[584]	drawField();");}
	drawField();
{asm("; #ENR#[585]	blockYOfs++;");}
	blockYOfs++;
{asm("; #ENR#[586]	if (blockYOfs < 12) {");}
	if (blockYOfs < 12) {
{asm("; #ENR#[587]		drawBlock(-blockYOfs*blockYOfs);");}
		drawBlock(-blockYOfs*blockYOfs);
{asm("; #ENR#[588]		doBlockAnimation();");}
		doBlockAnimation();
	}
{asm("; #ENR#[590]	if (blockYOfs == 50) {");}
	if (blockYOfs == 50) {
{asm("; #ENR#[591]		startLevel();");}
		startLevel();
	}
}

void blockMovingAtEnd()
{
{asm("; #ENR#[597]	drawField();");}
	drawField();
{asm("; #ENR#[598]	drawBlock(blockYOfs);");}
	drawBlock(blockYOfs);
{asm("; #ENR#[599]	blockYOfs++;");}
	blockYOfs++;
{asm("; #ENR#[600]	if (blockYOfs == 30) {");}
	if (blockYOfs == 30) {
{asm("; #ENR#[601]		levelNumber++;");}
		levelNumber++;
{asm("; #ENR#[602]		if (levelNumber > 2) levelNumber = 0;");}
		if (levelNumber > 2) levelNumber = 0;
{asm("; #ENR#[603]		startLevel();");}
		startLevel();
	}
}

int main()
{
	//	int8_t i;
	//	int8_t dx, dy;
	
	// setup joystick read function to read only joystick 1
{asm("; #ENR#[613]	epot0 = 1;");}
	epot0 = 1;
{asm("; #ENR#[614]	epot1 = 3;");}
	epot1 = 3;
{asm("; #ENR#[615]	epot2 = 0;");}
	epot2 = 0;
{asm("; #ENR#[616]	epot3 = 0;");}
	epot3 = 0;
	
{asm("; #ENR#[618]	startLevel();");}
	startLevel();
{asm("; #ENR#[619]	while (1) {");}
	while (1) {
		// wait for frame boundary (one frame = 30,000 cyles = 50 Hz)
{asm("; #ENR#[621]		frwait();");}
		frwait();
		
{asm("; #ENR#[623]		switch (gameState) {");}
		switch (gameState) {
{asm("; #ENR#[624]			case BlockMovingToStart:");}
			case BlockMovingToStart:
{asm("; #ENR#[625]			blockMovingToStart();");}
			blockMovingToStart();
{asm("; #ENR#[626]			break;");}
			break;
{asm("; #ENR#[627]			case BlockWaiting:");}
			case BlockWaiting:
{asm("; #ENR#[628]			blockWaiting();");}
			blockWaiting();
{asm("; #ENR#[629]			break;");}
			break;
{asm("; #ENR#[630]			case BlockMoving:");}
			case BlockMoving:
{asm("; #ENR#[631]			blockMoving();");}
			blockMoving();
{asm("; #ENR#[632]			break;");}
			break;
{asm("; #ENR#[633]			case BlockFalling:");}
			case BlockFalling:
{asm("; #ENR#[634]			blockFalling();");}
			blockFalling();
{asm("; #ENR#[635]			break;");}
			break;
{asm("; #ENR#[636]			case BlockMovingAtEnd:");}
			case BlockMovingAtEnd:
{asm("; #ENR#[637]			blockMovingAtEnd();");}
			blockMovingAtEnd();
{asm("; #ENR#[638]			break;");}
			break;
		}
		
		// play next music note
{asm("; #ENR#[642]		DP_to_C8();");}
		DP_to_C8();
{asm("; #ENR#[643]		replay(currentMusic);");}
		replay(currentMusic);
{asm("; #ENR#[644]		DP_to_D0();");}
		DP_to_D0();
{asm("; #ENR#[645]		reqout();");}
		reqout();
	}
{asm("; #ENR#[647]	return 0;");}
	return 0;
}
