
/* BLOXORZ by Frank Buss
   Original homepage and more information can be found at: http://www.frank-buss.de/vectrex/

block.i - Factor
block.c ->void drawBlock(int8_t yofs)
level.c -> line implementation
bloxorz.c -> drawField()


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
#include "hardware.h"
#include "level.h"
#include "block.h"

// PIC commands
#define CMD_VERSION 1
#define CMD_SET_EEPROM_ADR 2
#define CMD_EEPROM_WRITE 3
#define CMD_EEPROM_READ 4
#define CMD_SET_BANK 5

extern void* memcpy (void* dest, const void* src, long unsigned int len);

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

static char infoText[20];
static char highscoreText[10];
static uint8_t highscoreDisplayCounter;

uint16_t moveCount;
uint16_t frames;

static uint16_t levelHighscore;

uint8_t picAvailable;

uint8_t arcadeMode;
uint8_t arcadeSelection;
uint8_t arcadeIndex;

static uint8_t si = 0;
extern const char* const solutions[];

static const uint8_t arcadeLevels[4][5] = {
    { 1, 2, 0 },
    { 4, 5, 6, 0 },
    { 7, 8, 9, 0 },
    { 10, 11, 12, 0 }
};

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

enum GameState_t {
    MainMenu,
    ArcadeMenu,
    ArcadeEnd,
    ClearMenu,
    BlockMovingToStart,
    BlockWaiting,
    BlockMoving,
    BlockFalling,
    BlockMovingAtEnd,
} gameState;

// index into the memory at 0x8000
enum {
    VECX_MUSIC = 0,
    VECX_PIC_RW = 1
};

// possible values for VECX_MUSIC
enum {
    VECX_FALLING_MUSIC = 0,
    VECX_LEVEL_END_MUSIC = 1,
    VECX_START_MUSIC = 2,
    VECX_MOVING_MUSIC = 3,
    VECX_TITLE_MUSIC = 4,
};

static uint8_t* volatile vecx = (uint8_t*) 0x8000;

static uint8_t sendPicCommand(uint8_t cmd, uint8_t arg)
{
    picWrite('V');
    picWrite(cmd);
    picWrite(arg);
    return picRead();
}

static uint8_t sendVecxCommand(uint8_t cmd, uint8_t arg)
{
    vecx[VECX_PIC_RW] = 'V';
    vecx[VECX_PIC_RW] = cmd;
    vecx[VECX_PIC_RW] = arg;
    return vecx[VECX_PIC_RW];
}

static uint8_t sendCommand(uint8_t cmd, uint8_t arg)
{
	uint8_t result = 0;
	if (picAvailable) {
        result = sendPicCommand(cmd, arg);
    } else {
        result = sendVecxCommand(cmd, arg);
    }
    delay10ms();
    return result;
}

static void setBank(uint8_t bank)
{
    sendCommand(CMD_SET_BANK, bank);
}

void runtimeError(char* msg)
{
    while (1) {
        frwait();
        Intensity_a(0x5f);
        Vec_Text_Width = 90;
        Print_Str_d(-10, -110, msg);
    }
}

void writeEeprom(uint8_t address, uint8_t data)
{
    sendCommand(CMD_SET_EEPROM_ADR, address);
    sendCommand(CMD_EEPROM_WRITE, data);
}

uint8_t readEeprom(uint8_t address)
{
    return sendCommand(CMD_EEPROM_READ, address);
}


// converts a number to 3 digits and stores it in text, with leading zeros
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
    memcpy(infoText, "001 - 999\x80", 10);
    itoa(moveCount, &infoText[0]);
    itoa(levelNumber + levelOffset, &infoText[6]);
}

void changeMusic(const uint8_t* music)
{
    tstat = 1;
    currentMusic = music;
}

void moveBlock(enum BlockDirection_t move)
{
    moveBlockImpl(move);
    if (!arcadeMode) {
        if (moveCount < 999) moveCount++;
        updateInfoText();
    }
}

void startBlockFalling()
{
    gameState = BlockFalling;
    blockYOfs = 0;
    moveBlock(lastBlockDirection);
    changeMusic(fallingMusic);
    vecx[VECX_MUSIC] = VECX_FALLING_MUSIC;
}

void startLevel()
{
    if (arcadeMode) {
        levelNumber = arcadeLevels[arcadeSelection][arcadeIndex] - 1;
    } else {
        // get highscore from EEPROM
        uint8_t index = (uint8_t) (levelOffset + levelNumber * 2);
        levelHighscore = readEeprom(index);
        levelHighscore |= ((uint16_t) readEeprom(index + 1)) << 8;
        if (levelHighscore == 0) levelHighscore = 999;

        // init text and update counter
        memcpy(highscoreText, "BEST  999\x80", 10);
        itoa(levelHighscore, &highscoreText[6]);
        highscoreDisplayCounter = 0;
    }
    level = levels[levelNumber];
    initSwatches();
    initLevel();
    blockX = level->start.x;
    blockY = level->start.y;
    blockStartLevel();
    blockYOfs = -30;
    gameState = BlockMovingToStart;
    changeMusic(startMusic);
    vecx[VECX_MUSIC] = VECX_START_MUSIC;
    if (!arcadeMode) {
        moveCount = 0;
        updateInfoText();
    }
    si = 0;
}


#define ADD_WAITS \
asm("	    pshs u,x,y,d,dp    ; 14") ; \
asm("	    puls u,x,y,d,dp    ; 14 ");

void __attribute__((noinline)) drawField()
{
    // this might look 
    // complicated - but rather is not.
    // it consists of several
    // MOVE 
    // and 
    // DRAW
    // implementations
    // several because there are different move options
    // a) ZERO and MOVE
    // b) DELTA MOVE
    // c) DRAW
    // and the combination of those
    // it saves a few cycles to respect the "combionations" and not do
    // a "general" routine
    
    // instead of the variable "lineCount"
    // we end, when both y,x of the position are 0,0

    // while we are in assembler mode anyway - might as well save 28 cycles
    // and set the intensity ourselfs
    asm("LDA     #0x35");
    asm("STA     *0xd001     ;Store intensity in D/A");
    asm("LDD     #0x0504          ;mux disabled channel 2");
    asm("STA     *0xd000");
    asm("STB     *0xd000     ;mux enabled channel 2");
    asm("STB     *0xd000     ;do it again just because");
    asm("LDB     #0x01");
    asm("STB     *0xd000     ;turn off mux");


    // upon enter Zero is active!
    // hand optimized assembler of the previous C code
    asm("	pshs u");
    asm("	ldx #_lineYX_yx_s_dy_dx");
    asm("	ldu #0x98ce");      // prepare U register for later usage that does not spill A/B, this here is UNZERO
    asm("	ldd ,x");           // load current coordinates (move)

    asm("drawFieldLoop1:");
/*
    asm("pshs d");
    asm("LDD     #0x0302");
    asm("CLR     *0xd001     ;clear D/A register");
    asm("STA     *0xd000     ;mux=1, disable mux");
    asm("STB     *0xd000     ;mux=1, enable mux");
    asm("STB     *0xd000     ;do it again");
    asm("LDB     #0x01");
    asm("STB     *0xd000    ;disable mux");
    asm("puls d");

    asm("	    nop ");
*/
// wait for zeroing to settle completely
    asm("	    nop ");
    asm("	    nop ");
    asm("	    nop ");
    asm("	    nop ");

    // full 0x7f move
    // MOVE BLOCK START
    asm("                    STA      *0xd001                  ;Store Y in D/A register ");
    asm("                    CLRA     ");
    asm("                    STA      *0xd000                  ;Enable mux ");
    asm("                    INCA ");
    // do not place the STU nearer to the timer start!
    asm("                    STU      *0xd00B                    ; ");
    asm("                    STD      *0xd000                  ;Store X in D/A register ");
    asm("                    DECA ");
    asm("                    STA      *0xd005               ;enable timer ");
    // MOVE BLOCK END - left todo is to wait for move to finish

    asm("	leax 2,x ; 5");
    asm("	lda ,x+ ; 6");
    asm("bmi scale_negative_7f; 3 - negative means, the next line is in offset to this line, not from 0,0");
    asm("	sta *0xd004 ; 4");
    asm("	ldu #0xff98 ; 3");
    asm("	ldd ,x ; 5");

    // this instead of a WAIT loop
    // this saves a couple of cycles and does not really need that much space
    // but we are talking about 100 moves per draw
    // so saving 10 cycles -> saves already 1000 cycles for a full board...
    // 26 cycles passed - 101 todo
    asm("	    pshs u,x,y,d,dp    ; 14") ;
    asm("	    puls u,x,y,d,dp    ; 14 ");
    asm("	    pshs u,x,y,d,dp    ; 14") ;
    asm("	    puls u,x,y,d,dp    ; 14 ");
    asm("	    pshs u,x,y,d,dp    ; 14") ;
    asm("	    puls u,x,y,d,dp    ; 14 ");
    asm("	    pshs u    ; 7 ");
    asm("	    puls u    ; 7 ");
    // 26 + 98 = 124 done, 3 todo - these might be in the followin STA

    // additional waits for the move to settle
    asm("	    nop ");
    asm("	    nop ");

    // DRAW BLOCK START
    asm("                    STA      *0xd001                  ;Store Y in D/A register ");
    asm("                    CLRA     ");
    asm("                    STA      *0xd000                  ;Enable mux ");
    asm("                    INCA ");
    asm("                    STD      *0xd000                  ;Store X in D/A register ");
    asm("                    DECA ");
    asm("                    stu      *0xd00a               ;unclear shift regigster ");
    asm("                    STA      *0xd005               ;enable timer ");

    asm("leax 2,x");
    asm("	ldb #0x7f");
    asm("	stb *0xd004");
    asm("	ldu #0x98ce");
    asm("	LDd     #0x40CC");
    // wait loop following
    asm("LF33D2_1:           BITA     *0xD00D               ;  ");
    asm("                    BEQ      LF33D2_1                        ;  ");
    asm("                    clra ");
    asm("                    sta      *0xd00a               ;clear shift regigster ");
    // DRAW BLOCK END

    asm("	STB *0xd00C ; reset 0" );
    asm("	ldd ,x");           // load current coordinates (move)
    asm("	bne drawFieldLoop1");
    asm("	puls u, pc"); // EXIT

// alternate MOVE wait
// we alreaady know that the NEXT move will not be with full 
// scale -> so no testing is needed later...
// and we can skip the zeroing after the draw...
////////////////////////////////////////////////
    asm("scale_negative_7f:");
    asm("anda #0x7f ; 2");
    asm("	sta *0xd004 ; 4");
    asm("	ldu #0xff98 ; 4");
    asm("	ldd ,x ; 5");
    // 29 cycles passed - 100 todo

    asm("	    pshs u,x,y,d,dp    ; 14") ;
    asm("	    puls u,x,y,d,dp    ; 14 ");
    asm("	    pshs u,x,y,d,dp    ; 14") ;
    asm("	    puls u,x,y,d,dp    ; 14 ");
    asm("	    pshs u,x,y,d,dp    ; 14") ;
    asm("	    puls u,x,y,d,dp    ; 14 ");
    asm("	    tfr a,a    ; 6 ");
    asm("	    tfr a,a    ; 6 ");
    asm("	    brn   scale_negative_7f ; 3 ");
    // 29 + 95 = 124 done, 3 todo - these might be in the followin STA
    // 4 additional waits for the move to settle

    // DRAW BLOCK START
    asm("	not_full_cont:");
    asm("                    STA      *0xd001                  ;Store Y in D/A register ");
    asm("                    CLRA     ");
    asm("                    STA      *0xd000                  ;Enable mux ");
    asm("                    INCA ");
    asm("                    STD      *0xd000                  ;Store X in D/A register ");
    asm("                    DECA ");
    asm("                    stu      *0xd00a               ;unclear shift regigster ");
    asm("                    STA      *0xd005               ;enable timer ");

    asm("	not_full_cont_after:");
    asm("leax 2,x");
    asm("	ldu #0x98ce");

    // stupid waits - but otherwise the timer seems to break to early, and some lines have a gap
    asm("nop");
    asm("brn LF33D2_3");
    // wait loop following
    // we do not really wait how long we draw ... because of that we have to check with the timer
    asm("                    LDb      #0x40                         ;  ");
    asm("LF33D2_3:           BITb     *0xD00D               ;  ");
    asm("                    BEQ      LF33D2_3                        ;  ");
    asm("                    sta      *0xd00a               ;clear shift regigster, a is still zero ");
    // DRAW BLOCK END
    // continue move with same scale without zeroing
    // also this NOT a 0x7f move

    asm("	ldd ,x");           // load current coordinates (move)

    // NOT full 0x7f move
    // MOVE BLOCK START
    asm("                    STA      *0xd001                  ;Store Y in D/A register ");
    asm("                    CLRA     ");
    asm("                    STA      *0xd000                  ;Enable mux ");
    asm("                    INCA ");
    asm("                    STD      *0xd000                  ;Store X in D/A register ");
    asm("                    DECA ");
    asm("                    STA      *0xd005               ;enable timer ");
    // MOVE BLOCK END - left todo is to wait for move to finish

    asm("	leax 2,x ; 5");
    asm("	lda ,x+ ; 6");
    asm("bmi scale_negative; next is also no full move");
    asm("	sta *0xd004 ; 4");
    asm("	ldu #0xff98 ; 4");

    // here we know, that the next move will be a "full 0x7f" move
    // zeroing and 0x7f loading will be done in the following 

    // wait loop following
    asm("                    LDa      #0x40                         ;  ");
    asm("LF33D2_4:           BITa     *0xD00D               ;  ");
    asm("                    BEQ      LF33D2_4                        ;  ");
    // Wait END

    // DRAW BLOCK START
    asm("	ldd ,x ; 4");
    asm("                    STA      *0xd001                  ;Store Y in D/A register ");
    asm("                    CLRA     ");
    asm("                    STA      *0xd000                  ;Enable mux ");
    asm("                    INCA ");
    asm("                    STD      *0xd000                  ;Store X in D/A register ");
    asm("                    DECA ");
    asm("                    stu      *0xd00a               ;unclear shift regigster ");
    asm("                    STA      *0xd005               ;enable timer ");

    asm("leax 2,x");
    asm("	ldb #0x7f");

    asm("	stb *0xd004");
    asm("	ldu #0x98ce");
    asm("	LDd #0x40CC");
    asm("LF33D2_5:           BITA     *0xD00D               ;  ");
    asm("                    BEQ      LF33D2_5                        ;  ");
    asm("                    clra ");
    asm("                    sta      *0xd00a               ;clear shift regigster ");
    // DRAW BLOCK END

    asm("	STB *0xd00C ; reset 0" );
    asm("	ldd ,x");           // load current coordinates (move)
    asm("	lbne drawFieldLoop1");
    asm("	puls u, pc");    // exit

    // next move will also be relative
    asm("scale_negative:");
    asm("anda #0x7f ; 2");
    asm("	sta *0xd004 ; 4");
    asm("	ldu #0xff98 ; 4");

    // wait loop following
    asm("                    LDA      #0x40                         ;  ");
    asm("LF33D2_6:           BITA     *0xD00D               ;  ");
    asm("                    BEQ      LF33D2_6                        ;  ");
    asm("	ldd ,x ; 5");

    // DRAW BLOCK START
    asm("                    STA      *0xd001                  ;Store Y in D/A register ");
    asm("                    CLRA     ");
    asm("                    STA      *0xd000                  ;Enable mux ");
    asm("                    INCA ");
    asm("                    STD      *0xd000                  ;Store X in D/A register ");
    asm("                    DECA ");
    asm("                    stu      *0xd00a               ;unclear shift regigster ");
    asm("                    STA      *0xd005               ;enable timer ");
    asm(" bra not_full_cont_after"); // save space and jump (the draw will be ended there)

    // we never reach the regular function end.
    // but the stack is clean, since we return with RTS (or rather "puls pc")
    // U register is also saved by us
    // y register is not used!
    // and no local variables need cleaning up!
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

void nextLevel()
{
    levelNumber++;
    if (levelNumber >= levelCount) {
        levelNumber = 0;
        setBank(nextBank);
    }
    startLevel();
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

#if 0
    char move = solutions[levelNumber][si];
    if (move == 0) {
        si = 0;
    } else {
        if (move == 'l') {
            moveBlock(Left);
            gameState = BlockMoving;
        } else if (move == 'r') {
            moveBlock(Right);
            gameState = BlockMoving;
        } else if (move == 'd') {
            moveBlock(Down);
            gameState = BlockMoving;
        } else if (move == 'u') {
            moveBlock(Up);
            gameState = BlockMoving;
        }
        if (move == 's') {
            if (splitMode) {
                swapSplit();
            }
        }
        si++;
    }
#endif

    if (gameState == BlockMoving) {
        changeMusic(movingMusic);
        vecx[VECX_MUSIC] = VECX_MOVING_MUSIC;
    }

    Read_Btns();
    if (Vec_Buttons & 1) {
        if (splitMode) {
            swapSplit();
        }
    }

    if ((Vec_Buttons & 2) && !arcadeMode) {
		nextLevel();
    }
    if ((Vec_Buttons & 4) && !arcadeMode) {
        if (levelNumber > 0) {
            levelNumber--;
        } else {
            setBank(nextBank);
            levelNumber = levelCount - 1;
        }
        startLevel();
    }
    if (Vec_Buttons & 8) {
        gameState = MainMenu;
    }
}

void blockMoving()
{
    drawField();
    drawBlock(0);
    doBlockAnimation();
    if (!blockAnimating) {
        // check for block merge in split mode
        if (splitMode) {
            testMerge();
        }

        // check for out of field
        uint8_t c0 = isField(blockX, blockY);
        uint8_t c1 = isField(blockX + 1, blockY);
        uint8_t c2 = isField(blockX, blockY + 1);
        char f0 = getField(blockX, blockY);
        char f1 = getField(blockX + 1, blockY);
        char f2 = getField(blockX, blockY + 1);
        if (splitMode) {
            if (!c0) {
                startBlockFalling();
            }
        } else {
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
        }

        // check for block at target
        if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
            blockYOfs = 0;
            gameState = BlockMovingAtEnd;
            changeMusic(levelEndMusic);
            vecx[VECX_MUSIC] = VECX_LEVEL_END_MUSIC;
        } else {
            // if not falling, wait for next joystick movement
            if (gameState != BlockFalling) {
                gameState = BlockWaiting;
            }
        }

        // check for swatch
        if (splitMode) {
            if (f0 == 's') {
                swatchSwitch(blockX, blockY);
            }
        } else {
            switch (blockOrientation) {
            case Standing:
                if (f0 == 's' || f0 == 'h' || f0 == 'v') {
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
            writeEeprom((uint8_t) (levelOffset + 2 * levelNumber), (uint8_t) (moveCount & 0xff));
            writeEeprom((uint8_t) (levelOffset + 2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
        }
        if (arcadeMode) {
            arcadeIndex++;
            levelNumber = arcadeLevels[arcadeSelection][arcadeIndex];
            if (levelNumber == 0) {
                gameState = ArcadeEnd;
                memcpy(infoText, "TIME: 000 SECONDS\x80", 18);
                itoa(moveCount, &infoText[6]);
                arcadeMode = 0;
            } else {
                startLevel();
            }
        } else {
		   nextLevel();
        }
    }
}

void mainMenu()
{
    Read_Btns();
    Intensity_a(0x5f);
    Vec_Text_Width = 90;
    Print_Str_d(100, -70, "MAIN MENU\x80");
    Print_Str_d(50, -110, "1 PUZZLE MODE\x80");
    Print_Str_d(20, -110, "2 ARCADE MODE\x80");
    Print_Str_d(-10, -110, "3 CLEAR HIGHSCORE\x80");
    if (Vec_Buttons & 1) {
        arcadeMode = 0;
        levelNumber = 0;
        startLevel();
    }
    if (Vec_Buttons & 2) {
        frames = 0;
        moveCount = 0;
        arcadeMode = 1;
        arcadeIndex = 0;
        gameState = ArcadeMenu;
    }
    if (Vec_Buttons & 4) {
        gameState = ClearMenu;
    }
}

void arcadeMenu()
{
    Read_Btns();
    Intensity_a(0x5f);
    Vec_Text_Width = 90;
    Print_Str_d(100, -70, "ARCADE MODE\x80");
    Print_Str_d(50, -110, "1 SET 1\x80");
    Print_Str_d(20, -110, "2 SET 2\x80");
    Print_Str_d(-10, -110, "3 SET 3\x80");
    Print_Str_d(-40, -110, "4 SET 4\x80");
    if (Vec_Buttons & 1) {
        arcadeSelection = 0;
        startLevel();
    }
    if (Vec_Buttons & 2) {
        arcadeSelection = 1;
        startLevel();
    }
    if (Vec_Buttons & 4) {
        arcadeSelection = 2;
        startLevel();
    }
    if (Vec_Buttons & 8) {
        arcadeSelection = 3;
        startLevel();
    }
}

void arcadeEnd()
{
    Read_Btns();
    Intensity_a(0x5f);
    Vec_Text_Width = 90;
    Print_Str_d(100, -70, "GAME OVER\x80");
    Print_Str_d(50, -110, infoText);
    if (Vec_Buttons & 1) {
        gameState = MainMenu;
    }
    if (Vec_Buttons & 2) {
        gameState = MainMenu;
    }
    if (Vec_Buttons & 4) {
        gameState = MainMenu;
    }
    if (Vec_Buttons & 8) {
        gameState = MainMenu;
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
    if (highscoreDisplayCounter > 180) {
        Print_Str_d(100, -70, highscoreText);
    } else {
        Print_Str_d(100, -70, infoText);
    }
    highscoreDisplayCounter++;
    if (highscoreDisplayCounter > 240) {
        highscoreDisplayCounter = 0;
    }
}

int main()
{
    // check if PIC is available
    picAvailable = 0;
    sendPicCommand(CMD_VERSION, 0);
    sendPicCommand(CMD_VERSION, 0);
    if (sendPicCommand(CMD_VERSION, 0) == 4) {
        picAvailable = 1;
    }

    // on reset, switch back to bank 0
    // for same code locations, switch to bank 0 when in bank 0 as well
    setBank(0);

    // start title music in emulator
    vecx[VECX_MUSIC] = VECX_TITLE_MUSIC;

    // setup joystick read function to read only joystick 1
    epot0 = 1;
    epot1 = 3;
    epot2 = 0;
    epot3 = 0;

    gameState = MainMenu;
    musicInit();

    while (1) {
        // wait for frame boundary (one frame = 30,000 cyles = 50 Hz)
        frwait();

        switch (gameState) {
        case MainMenu:
            mainMenu();
            musicPlay();
            break;
        case ClearMenu:
            clearMenu();
            musicPlay();
            break;
        case ArcadeMenu:
            arcadeMenu();
            musicPlay();
            break;
        case ArcadeEnd:
            arcadeEnd();
            musicPlay();
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

        // in arcade mode, moveCount is used for seconds
        if (arcadeMode) {
            frames++;
            if (frames == 50) {
                frames = 0;
                if (moveCount < 999) {
                    moveCount++;
                    updateInfoText();
                }
            }
        }
    }
    return 0;
}
