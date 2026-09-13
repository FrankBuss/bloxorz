
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

extern void *memcpy(void *dest, const void *src, long unsigned int len);

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

#define tstat (*((volatile uint8_t *)0xc856))

#define pot0 (*((volatile int8_t *)0xc81b))
#define pot1 (*((volatile int8_t *)0xc81c))
#define pot2 (*((volatile int8_t *)0xc81d))
#define pot3 (*((volatile int8_t *)0xc81e))

#define epot0 (*((volatile uint8_t *)0xc81f))
#define epot1 (*((volatile uint8_t *)0xc820))
#define epot2 (*((volatile uint8_t *)0xc821))
#define epot3 (*((volatile uint8_t *)0xc822))

#define t1lolc (*((volatile uint8_t *)0xd004))

extern void picWrite(uint8_t b);
extern uint8_t picRead();
extern void delay10ms();

extern void musicInit();
extern void musicPlay();
void musicTick(uint8_t restartTimer);

static char infoText[20];
static char highscoreText[10];
static uint8_t highscoreDisplayCounter;

uint16_t moveCount;

static uint16_t levelHighscore;

uint8_t picAvailable;

static uint8_t si = 0;
extern const char *const solutions[];

// attract mode: logo and demo playback of the levels, until a button or the joystick is used
static uint8_t attractMode;
static uint16_t frameCounter;

// level select
static uint8_t selectedLevel;
static uint16_t selectedHighscore;
static uint8_t joystickDelay;
static uint8_t highscorePending;

// cycles the frames took longer than the 30,000 cycles of Wait_Recal, for the music tempo
static uint16_t overrunCycles;

// number of the last level, which is the last level of the other bank
static uint8_t lastLevel;

// level data of the current bank, read with volatile, because it changes after a bank switch
#define currentLevelCount (*(volatile const uint8_t *)&levelCount)
#define currentLevelOffset (*(volatile const uint8_t *)&levelOffset)

const uint8_t startMusic[] = {
    0xFE, 0xE8, 0xFE, 0xB6, // ADSR and twang address tables, in Vectrex ROM
    1, 1,
    2, 1,
    3, 1,
    4, 1,
    5, 1,
    6, 1,
    7, 1,
    8, 1,
    9, 1,
    10, 1,
    11, 1,
    12, 1,
    13, 1,
    0, 0x80, // music end marker
};

const uint8_t levelEndMusic[] = {
    0xFE, 0xE8, 0xFE, 0xB6, // ADSR and twang address tables, in Vectrex ROM
    13, 1,
    14, 1,
    15, 1,
    16, 1,
    17, 1,
    18, 1,
    19, 1,
    20, 1,
    21, 1,
    22, 1,
    0, 0x80, // music end marker
};

const uint8_t fallingMusic[] = {
    0xFE, 0xE8, 0xFE, 0xB6, // ADSR and twang address tables, in Vectrex ROM
    13, 2,
    12, 2,
    11, 2,
    10, 2,
    9, 2,
    8, 2,
    7, 2,
    6, 2,
    5, 2,
    4, 2,
    3, 2,
    2, 2,
    1, 2,
    0, 0x80, // music end marker
};

const uint8_t movingMusic[] = {
    0xfd, 0xc3, 0xFE, 0xB6, // ADSR and twang address tables, in Vectrex ROM
    0x01, 5,
    0, 0x80, // music end marker
};

const uint8_t *currentMusic = startMusic;

// BLOXORZ logo, from the VecFever version, one Draw_VL_mode vector list per letter
#define LOGO_MOVE 0
#define LOGO_DRAW 2
#define LOGO_END 1
#define LOGO_UNIT 14
#define LOGO_HALF 7
#define LOGO_SCALE 0x3f
#define LOGO_Y 0

const int8_t logoB[] = {
    LOGO_MOVE, 0, 2 * LOGO_UNIT,
    LOGO_DRAW, LOGO_UNIT, LOGO_UNIT,
    LOGO_DRAW, LOGO_UNIT, 0,
    LOGO_DRAW, LOGO_UNIT, -LOGO_UNIT,
    LOGO_DRAW, LOGO_UNIT, LOGO_UNIT,
    LOGO_DRAW, LOGO_UNIT, 0,
    LOGO_DRAW, LOGO_UNIT, -LOGO_UNIT,
    LOGO_DRAW, 0, -2 * LOGO_UNIT,
    LOGO_MOVE, -LOGO_UNIT, LOGO_UNIT,
    LOGO_DRAW, 0, LOGO_UNIT,
    LOGO_DRAW, -LOGO_UNIT, 0,
    LOGO_MOVE, -2 * LOGO_UNIT, -LOGO_UNIT,
    LOGO_DRAW, 0, LOGO_UNIT,
    LOGO_DRAW, -LOGO_UNIT, 0,
    LOGO_END};

const int8_t logoL[] = {
    LOGO_MOVE, 0, 3 * LOGO_UNIT,
    LOGO_DRAW, LOGO_UNIT, 0,
    LOGO_DRAW, 0, -2 * LOGO_UNIT,
    LOGO_DRAW, 5 * LOGO_UNIT, 0,
    LOGO_DRAW, 0, -LOGO_UNIT,
    LOGO_END};

const int8_t logoO[] = {
    LOGO_MOVE, 0, 3 * LOGO_UNIT,
    LOGO_DRAW, 6 * LOGO_UNIT, 0,
    LOGO_DRAW, 0, -3 * LOGO_UNIT,
    LOGO_MOVE, -LOGO_UNIT, LOGO_UNIT,
    LOGO_DRAW, 0, LOGO_UNIT,
    LOGO_DRAW, -4 * LOGO_UNIT, 0,
    LOGO_END};

const int8_t logoX[] = {
    LOGO_MOVE, 0, LOGO_UNIT,
    LOGO_DRAW, 2 * LOGO_UNIT, LOGO_HALF,
    LOGO_MOVE, -2 * LOGO_UNIT, 3 * LOGO_HALF,
    LOGO_DRAW, 3 * LOGO_UNIT, -LOGO_UNIT,
    LOGO_DRAW, 3 * LOGO_UNIT, LOGO_UNIT,
    LOGO_DRAW, 0, -LOGO_UNIT,
    LOGO_MOVE, -2 * LOGO_UNIT, -LOGO_HALF,
    LOGO_DRAW, 2 * LOGO_UNIT, -LOGO_HALF,
    LOGO_DRAW, 0, -LOGO_UNIT,
    LOGO_END};

const int8_t logoR[] = {
    LOGO_MOVE, 0, LOGO_UNIT,
    LOGO_DRAW, 3 * LOGO_UNIT, 0,
    LOGO_MOVE, -3 * LOGO_UNIT, 2 * LOGO_UNIT,
    LOGO_DRAW, 3 * LOGO_UNIT, -LOGO_UNIT,
    LOGO_DRAW, LOGO_UNIT, LOGO_UNIT,
    LOGO_DRAW, LOGO_UNIT, 0,
    LOGO_DRAW, LOGO_UNIT, -LOGO_UNIT,
    LOGO_DRAW, 0, -2 * LOGO_UNIT,
    LOGO_MOVE, -LOGO_UNIT, LOGO_UNIT,
    LOGO_DRAW, 0, LOGO_UNIT,
    LOGO_DRAW, -LOGO_UNIT, 0,
    LOGO_END};

const int8_t logoZ[] = {
    LOGO_MOVE, 0, 3 * LOGO_UNIT,
    LOGO_DRAW, LOGO_UNIT, 0,
    LOGO_DRAW, 0, -2 * LOGO_UNIT,
    LOGO_DRAW, 4 * LOGO_UNIT, 2 * LOGO_UNIT,
    LOGO_DRAW, LOGO_UNIT, 0,
    LOGO_DRAW, 0, -3 * LOGO_UNIT,
    LOGO_END};

struct LogoLetter
{
    const int8_t *vectors;
    int8_t x;
};

// letter positions at scale 0x7f, one logo unit is 7 at this scale
const struct LogoLetter logo[] = {
    {logoB, -112},
    {logoL, -77},
    {logoO, -49},
    {logoX, -14},
    {logoO, 21},
    {logoR, 56},
    {logoZ, 84}};

enum GameState_t
{
    Logo,
    LevelSelect,
    ClearMenu,
    BlockMovingToStart,
    BlockWaiting,
    BlockMoving,
    BlockFalling,
    BlockMovingAtEnd,
} gameState;

// index into the memory at 0x8000
enum
{
    VECX_MUSIC = 0,
    VECX_PIC_RW = 1
};

// possible values for VECX_MUSIC
enum
{
    VECX_FALLING_MUSIC = 0,
    VECX_LEVEL_END_MUSIC = 1,
    VECX_START_MUSIC = 2,
    VECX_MOVING_MUSIC = 3,
    VECX_TITLE_MUSIC = 4,
};

static uint8_t *volatile vecx = (uint8_t *)0x8000;

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
    if (picAvailable)
    {
        result = sendPicCommand(cmd, arg);
    }
    else
    {
        result = sendVecxCommand(cmd, arg);
    }
    delay10ms();
    // keep the title music in time during EEPROM access and bank switching
    musicTick(1);
    return result;
}

static void setBank(uint8_t bank)
{
    sendCommand(CMD_SET_BANK, bank);
}

void runtimeError(char *msg)
{
    while (1)
    {
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

// converts a number to 2 digits and stores it in text, with leading zeros
void itoa2(uint16_t number, char *text)
{
    uint16_t muls[] = {10, 1};
    if (number > 99)
        number = 99;
    for (uint8_t i = 0; i < 2; i++)
    {
        uint8_t d = 0;
        while (number >= muls[i])
        {
            d++;
            number -= muls[i];
        }
        text[i] = d + '0';
    }
}

// converts a number to 3 digits and stores it in text, with leading zeros
void itoa3(uint16_t number, char *text)
{
    uint16_t muls[] = {100, 10, 1};
    if (number > 999)
        number = 999;
    for (uint8_t i = 0; i < 3; i++)
    {
        uint8_t d = 0;
        while (number >= muls[i])
        {
            d++;
            number -= muls[i];
        }
        text[i] = d + '0';
    }
}

void updateInfoText()
{
    memcpy(infoText, "001\x80", 4);
    itoa3(moveCount, &infoText[0]);
}

void changeMusic(const uint8_t *music)
{
    tstat = 1;
    currentMusic = music;
}

// starts a sound effect, but not in the demo, where the title music continues
static void playEffect(const uint8_t *music, uint8_t vecxMusic)
{
    if (!attractMode)
    {
        changeMusic(music);
        vecx[VECX_MUSIC] = vecxMusic;
    }
}

static void startTitleMusic()
{
    vecx[VECX_MUSIC] = VECX_TITLE_MUSIC;
    musicInit();
}

// EEPROM address of the highscore of a level, 2 bytes per level, level numbers start with 1
static uint8_t highscoreAddress(uint8_t number)
{
    return (uint8_t)((number - 1) * 2);
}

static uint16_t readHighscore(uint8_t number)
{
    uint8_t address = highscoreAddress(number);
    uint16_t highscore = readEeprom(address);
    highscore |= ((uint16_t)readEeprom((uint8_t)(address + 1))) << 8;
    return highscore;
}

// switches to the bank of a level and sets levelNumber, level numbers start with 1
static void selectLevel(uint8_t number)
{
    if (number < currentLevelOffset || number >= currentLevelOffset + currentLevelCount)
    {
        setBank(nextBank);
    }
    levelNumber = (uint8_t)(number - currentLevelOffset);
}

static void showLogo()
{
    attractMode = 1;
    frameCounter = 0;
    gameState = Logo;
}

static void showLevelSelect()
{
    attractMode = 0;
    frameCounter = 0;
    // don't scroll right away with the joystick movement which ended the demo
    joystickDelay = 10;
    selectedHighscore = readHighscore(selectedLevel);
    highscorePending = 0;
    gameState = LevelSelect;
}

void moveBlock(enum BlockDirection_t move)
{
    moveBlockImpl(move);
    if (moveCount < 999)
        moveCount++;
    updateInfoText();
}

void startBlockFalling()
{
    gameState = BlockFalling;
    blockYOfs = 0;
    moveBlock(lastBlockDirection);
    playEffect(fallingMusic, VECX_FALLING_MUSIC);
}

void loadHighscore()
{
    // get highscore from EEPROM
    uint8_t number = (uint8_t)(levelOffset + levelNumber);
    levelHighscore = readHighscore(number);
    if (levelHighscore == 0)
        levelHighscore = 999;

    // init text and update counter
    memcpy(highscoreText, "00 - 999\x80", 9);
    itoa2(number, &highscoreText[0]);
    itoa3(levelHighscore, &highscoreText[5]);
    highscoreDisplayCounter = 0;
}

void startLevel()
{
    level = levels[levelNumber];
    initSwatches();
    initLevel();
    blockX = level->start.x;
    blockY = level->start.y;
    blockStartLevel();
    blockYOfs = -30;
    gameState = BlockMovingToStart;
    playEffect(startMusic, VECX_START_MUSIC);
    moveCount = 0;
    updateInfoText();
    // no EEPROM access in the demo, the highscore is not shown and not saved there
    if (!attractMode)
    {
        loadHighscore();
    }
    si = 0;
}

// starts the demo playback of a random level
static void startDemo()
{
    attractMode = 1;
    selectLevel((uint8_t)(Random() % lastLevel + 1));
    startLevel();
}

#define ADD_WAITS                          \
    asm("	    pshs u,x,y,d,dp    ; 14"); \
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

    // the first move needs scale 0x7f in the timer 1 low latch, like the later full moves, which set it after
    // their draw. Don't rely on the code before, e.g. in the demo there is no info text which leaves it set.
    asm("LDA     #0x7f");
    asm("STA     *0xd004");

    // upon enter Zero is active!
    // hand optimized assembler of the previous C code
    asm("	pshs u");
    asm("	ldx #_lineYX_yx_s_dy_dx");
    asm("	ldu #0x98ce"); // prepare U register for later usage that does not spill A/B, this here is UNZERO
    asm("	ldd ,x");      // load current coordinates (move)

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
    asm("	    pshs u,x,y,d,dp    ; 14");
    asm("	    puls u,x,y,d,dp    ; 14 ");
    asm("	    pshs u,x,y,d,dp    ; 14");
    asm("	    puls u,x,y,d,dp    ; 14 ");
    asm("	    pshs u,x,y,d,dp    ; 14");
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

    asm("	STB *0xd00C ; reset 0");
    asm("	ldd ,x"); // load current coordinates (move)
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

    asm("	    pshs u,x,y,d,dp    ; 14");
    asm("	    puls u,x,y,d,dp    ; 14 ");
    asm("	    pshs u,x,y,d,dp    ; 14");
    asm("	    puls u,x,y,d,dp    ; 14 ");
    asm("	    pshs u,x,y,d,dp    ; 14");
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

    asm("	ldd ,x"); // load current coordinates (move)

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

    asm("	STB *0xd00C ; reset 0");
    asm("	ldd ,x"); // load current coordinates (move)
    asm("	lbne drawFieldLoop1");
    asm("	puls u, pc"); // exit

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
    if (blockYOfs == 0)
    {
        gameState = BlockWaiting;
    }
}

void nextLevel()
{
    levelNumber++;
    if (levelNumber >= levelCount)
    {
        levelNumber = 0;
        setBank(nextBank);
    }
    startLevel();
}

void blockWaiting()
{
    drawField();
    drawBlock(0);

    if (attractMode)
    {
        // demo playback with the solution of the level
        char move = solutions[levelNumber][si];
        si++;
        if (move == 'l')
        {
            moveBlock(Left);
            gameState = BlockMoving;
        }
        else if (move == 'r')
        {
            moveBlock(Right);
            gameState = BlockMoving;
        }
        else if (move == 'd')
        {
            moveBlock(Down);
            gameState = BlockMoving;
        }
        else if (move == 'u')
        {
            moveBlock(Up);
            gameState = BlockMoving;
        }
        else if (move == 's')
        {
            if (splitMode)
            {
                swapSplit();
            }
        }
        else
        {
            // end of the solution without reaching the target
            showLogo();
        }
        return;
    }

    joybit();
    if (pot0 < -10)
    {
        moveBlock(Left);
        gameState = BlockMoving;
    }
    else if (pot0 > 10)
    {
        moveBlock(Right);
        gameState = BlockMoving;
    }
    else if (pot1 < -10)
    {
        moveBlock(Down);
        gameState = BlockMoving;
    }
    else if (pot1 > 10)
    {
        moveBlock(Up);
        gameState = BlockMoving;
    }


    if (gameState == BlockMoving)
    {
        playEffect(movingMusic, VECX_MOVING_MUSIC);
    }

    Read_Btns();
    if (Vec_Buttons & 1)
    {
        if (splitMode)
        {
            swapSplit();
        }
    }

    if (Vec_Buttons & 2)
    {
        nextLevel();
    }
    if (Vec_Buttons & 4)
    {
        if (levelNumber > 0)
        {
            levelNumber--;
        }
        else
        {
            setBank(nextBank);
            levelNumber = levelCount - 1;
        }
        startLevel();
    }
    if (Vec_Buttons & 8)
    {
        selectedLevel = (uint8_t)(levelOffset + levelNumber);
        startTitleMusic();
        showLevelSelect();
    }
}

void blockMoving()
{
    drawField();
    drawBlock(0);
    doBlockAnimation();
    if (!blockAnimating)
    {
        // check for block merge in split mode
        if (splitMode)
        {
            testMerge();
        }

        // check for out of field
        uint8_t c0 = isField(blockX, blockY);
        uint8_t c1 = isField(blockX + 1, blockY);
        uint8_t c2 = isField(blockX, blockY + 1);
        char f0 = getField(blockX, blockY);
        char f1 = getField(blockX + 1, blockY);
        char f2 = getField(blockX, blockY + 1);
        if (splitMode)
        {
            if (!c0)
            {
                startBlockFalling();
            }
        }
        else
        {
            switch (blockOrientation)
            {
            case Standing:
                if (!c0 || f0 == 'f')
                {
                    startBlockFalling();
                }
                break;
            case Vertical:
                if (!c0 || !c2)
                {
                    startBlockFalling();
                }
                break;
            case Horizontal:
                if (!c0 || !c1)
                {
                    startBlockFalling();
                }
                break;
            }
        }

        // check for block at target
        if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode)
        {
            blockYOfs = 0;
            gameState = BlockMovingAtEnd;
            playEffect(levelEndMusic, VECX_LEVEL_END_MUSIC);
        }
        else
        {
            // if not falling, wait for next joystick movement
            if (gameState != BlockFalling)
            {
                gameState = BlockWaiting;
            }
        }

        // check for swatch
        if (splitMode)
        {
            if (f0 == 's')
            {
                swatchSwitch(blockX, blockY);
            }
        }
        else
        {
            switch (blockOrientation)
            {
            case Standing:
                if (f0 == 's' || f0 == 'h' || f0 == 'v')
                {
                    swatchSwitch(blockX, blockY);
                }
                break;
            case Vertical:
                if (f0 == 's')
                {
                    swatchSwitch(blockX, blockY);
                }
                if (f2 == 's')
                {
                    swatchSwitch(blockX, blockY + 1);
                }
                break;
            case Horizontal:
                if (f0 == 's')
                {
                    swatchSwitch(blockX, blockY);
                }
                if (f1 == 's')
                {
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
    if (blockYOfs < 12)
    {
        drawBlock(-blockYOfs * blockYOfs);
        doBlockAnimation();
    }
    if (blockYOfs == 50)
    {
        if (attractMode)
        {
            showLogo();
        }
        else
        {
            startLevel();
        }
    }
}

void blockMovingAtEnd()
{
    drawField();
    drawBlock(blockYOfs);
    blockYOfs++;
    if (blockYOfs == 30)
    {
        if (attractMode)
        {
            showLogo();
            return;
        }
        if (moveCount < levelHighscore)
        {
            uint8_t address = highscoreAddress((uint8_t)(levelOffset + levelNumber));
            writeEeprom(address, (uint8_t)(moveCount & 0xff));
            writeEeprom((uint8_t)(address + 1), (uint8_t)(moveCount >> 8));
        }
        nextLevel();
    }
}

static void drawLogo(uint8_t brightness)
{
    Intensity_a(brightness);
    for (uint8_t i = 0; i < 7; i++)
    {
        Reset0Ref();
        dp_VIA_t1_cnt_lo = 0x7f;
        Moveto_d(LOGO_Y, logo[i].x);
        dp_VIA_t1_cnt_lo = LOGO_SCALE;
        Draw_VL_mode((void *)logo[i].vectors);
    }
    Reset0Ref();
}

// logo fading in and out, then the demo playback of a random level
void logoScreen()
{
    uint8_t brightness = 100;
    if (frameCounter < 50)
    {
        brightness = (uint8_t)(2 * frameCounter);
    }
    else if (frameCounter > 150)
    {
        brightness = (uint8_t)(100 - 2 * (frameCounter - 150));
    }
    if (brightness)
    {
        drawLogo(brightness);
        Vec_Text_Width = 90;
        Print_Str_d(-30, -78, "FRANK BUSS\x80");
    }
    if (frameCounter >= 200)
    {
        startDemo();
    }
}

// list of the levels around the selected level, with the highscore of the selected level
void levelSelect()
{
    Read_Btns();
    joybit();

    // joystick down/up: next/previous level, right/left: 5 levels forward/back, repeated while held
    uint8_t horizontal = (uint8_t)(pot0 < -10 || pot0 > 10);
    uint8_t vertical = (uint8_t)(pot1 < -10 || pot1 > 10);
    if (!horizontal && !vertical)
    {
        joystickDelay = 0;
        // read the highscore only after scrolling, the EEPROM access takes longer than a frame
        if (highscorePending)
        {
            selectedHighscore = readHighscore(selectedLevel);
            highscorePending = 0;
        }
    }
    else if (joystickDelay)
    {
        joystickDelay--;
    }
    else
    {
        uint8_t forward = (uint8_t)(pot0 > 10 || (!horizontal && pot1 < -10));
        uint8_t steps = (uint8_t)(horizontal ? 5 : 1);
        for (uint8_t i = 0; i < steps; i++)
        {
            if (forward)
            {
                selectedLevel = (uint8_t)(selectedLevel >= lastLevel ? 1 : selectedLevel + 1);
            }
            else
            {
                selectedLevel = (uint8_t)(selectedLevel <= 1 ? lastLevel : selectedLevel - 1);
            }
        }
        selectedHighscore = 0;
        highscorePending = 1;
        joystickDelay = 10;
        frameCounter = 0;
    }

    Intensity_a(0x5f);
    Vec_Text_Width = 90;
    Print_Str_d(100, -80, "CHOOSE LEVEL\x80");
    int8_t y = 60;
    for (uint8_t i = 0; i < 5; i++)
    {
        uint8_t number = (uint8_t)(selectedLevel + i - 2);
        if (number >= 1 && number <= lastLevel)
        {
            if (i == 2)
            {
                memcpy(infoText, "> 00 (000)\x80", 11);
                itoa2(number, &infoText[2]);
                if (selectedHighscore > 0 && selectedHighscore <= 999)
                {
                    itoa3(selectedHighscore, &infoText[6]);
                }
                else
                {
                    infoText[4] = '\x80';
                }
                Intensity_a(0x7f);
            }
            else
            {
                memcpy(infoText, "  00\x80", 5);
                itoa2(number, &infoText[2]);
                Intensity_a(0x3f);
            }
            Print_Str_d(y, -60, infoText);
        }
        y = (int8_t)(y - 20);
    }
    Intensity_a(0x5f);
    Print_Str_d(-60, -110, "1 START GAME\x80");
    Print_Str_d(-90, -110, "2 CLEAR HIGHSCORE\x80");

    if (Vec_Buttons & 1)
    {
        selectLevel(selectedLevel);
        startLevel();
    }
    else if (Vec_Buttons & 2)
    {
        gameState = ClearMenu;
    }
    else if (Vec_Buttons)
    {
        frameCounter = 0;
    }
    else if (frameCounter > 500)
    {
        // back to the logo and the demo, when nothing was selected
        showLogo();
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
    if (Vec_Buttons & 4)
    {
        uint8_t end = highscoreAddress((uint8_t)(lastLevel + 1));
        for (uint8_t i = 0; i < end; i++)
        {
            writeEeprom(i, 0xff);
        }
        showLevelSelect();
    }
    if (Vec_Buttons & 8)
    {
        showLevelSelect();
    }
}

const int8_t led8[] = {
    (int8_t)255, 0, 5,
    (int8_t)255, -5, 0,
    (int8_t)255, 0, -5,
    (int8_t)255, 5, 0,
    (int8_t)255, 5, 0,
    (int8_t)255, 0, 5,
    (int8_t)255, -5, 0,
    1};

void showInfo2()
{
    zergnd();
    intens(0x50);

    zergnd();
    positd(-50, 100);
    pack1x((void *)led8);

    zergnd();
    positd(-40, 110);
    pack1x((void *)led8);

    zergnd();
    positd(-30, 120);
    pack1x((void *)led8);

    zergnd();
    positd(0, 120);
    pack1x((void *)led8);

    zergnd();
    positd(10, 120);
    pack1x((void *)led8);

    zergnd();
    positd(20, 120);
    pack1x((void *)led8);
}

void showInfo()
{
    // no move count and highscore in the demo
    if (attractMode)
    {
        return;
    }
    Intensity_a(0x5f);
    Vec_Text_Width = 100;
    if (highscoreDisplayCounter > 60)
    {
        Print_Str_d(100, -25, infoText);
    }
    else
    {
        Print_Str_d(100, -60, highscoreText);
    }
    highscoreDisplayCounter++;
    if (highscoreDisplayCounter > 240)
    {
        highscoreDisplayCounter = 0;
    }
}

// The music tempo depends on the frame rate. This plays the notes of the frames missed, when a frame
// takes longer than the 30,000 cycles of Wait_Recal. It is called at the end of each frame, and with
// restartTimer set during long calculations like initLevel, which restarts timer 2 like Wait_Recal, to
// measure more than one frame. After the timeout, timer 2 continues counting down from 0xffff. Only the
// high byte is read, because reading the low byte would clear the timeout flag Wait_Recal is waiting for.
void musicTick(uint8_t restartTimer)
{
    // only for the title music in the menus and in the demo, never during normal game play
    if (gameState > ClearMenu && !attractMode)
    {
        overrunCycles = 0;
        return;
    }
    if (!(VIA_int_flags & 0x20))
    {
        return;
    }
    uint16_t overrun = ((uint16_t)(0xff - VIA_t2_hi)) << 8;
    if (restartTimer)
    {
        // start the next frame like Wait_Recal, and play the note of the finished frame
        VIA_t2 = Vec_Rfrsh;
        musicPlay();
    }
    while (overrun >= 30000)
    {
        musicPlay();
        overrun -= 30000;
    }
    overrunCycles += overrun;
    if (overrunCycles >= 30000)
    {
        musicPlay();
        overrunCycles -= 30000;
    }
}

int main()
{
    // init the title music first, musicTick can already play it during the bank switching below
    musicInit();

    // check if PIC is available
    picAvailable = 0;
    sendPicCommand(CMD_VERSION, 0);
    sendPicCommand(CMD_VERSION, 0);
    if (sendPicCommand(CMD_VERSION, 0) == 4)
    {
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

    // number of the last level, which is the last level of the other bank
    setBank(nextBank);
    lastLevel = (uint8_t)(currentLevelOffset + currentLevelCount - 1);
    setBank(0);

    selectedLevel = 1;
    showLogo();

    while (1)
    {
        // wait for frame boundary (one frame = 30,000 cyles = 50 Hz)
        frwait();

        // any button or joystick movement ends the logo and the demo
        if (attractMode)
        {
            Read_Btns();
            joybit();
            if (Vec_Buttons || pot0 < -10 || pot0 > 10 || pot1 < -10 || pot1 > 10)
            {
                showLevelSelect();
            }
        }

        switch (gameState)
        {
        case Logo:
            logoScreen();
            break;
        case LevelSelect:
            levelSelect();
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

        // play next sound effect note, or the title music in the menus and in the demo
        if (gameState > ClearMenu && !attractMode)
        {
            DP_to_C8();
            replay(currentMusic);
            DP_to_D0();
            reqout();
        }
        else
        {
            musicPlay();
        }
        musicTick(0);
        frameCounter++;
    }
    return 0;
}
