CNTRL = 0hd000	; ORB / IRB - Output Register B / Input Register B
DCNTRL = 0hd002	; DDRB      - Data Direction Register B

	.area .bss
data: .blkb   1
counter: .blkb   1
bit_counter: .blkb   1

	.area .text

	.globl  _picWrite
_picWrite:
	pshs    d,dp,x,y,u
	stb data

	lda #0hd0		; setup direct page to 0xd000
	tfr a, dp

	; start with low signal
	lda #0xdf
	sta *DCNTRL	; PB6 direction = output

	lda *CNTRL
	anda #0xbf
	sta *CNTRL

	; start condition: 40 us low
	ldb #12
startlow:
	decb
	bne startlow

	; byte transfer starts with high signal
	; 1 bit needs 45 cycles (= 30 us)
	; bit 0 = 4 us high
	; bit 1 = 9.3 us high
	ldb #8
loop:
	lda data
	bita #0x80
	beq loop2
	lda #0x9f
	sta *DCNTRL	; PB6 direction = input
	nop
	nop
	nop
	nop
	lda #0xdf
	sta *DCNTRL	; PB6 direction = output
	bra loop3
loop2:
	lda #0x9f
	sta *DCNTRL	; PB6 direction = input
	lda #0xdf
	sta *DCNTRL	; PB6 direction = output
	nop
	nop
	nop
	nop
	bra loop3
loop3:
	lsl data
	decb
	bne loop

; wait a bit at the end of the transfer
	ldb #10
loop4:
	decb
	bne loop4

	puls d,dp,x,y,u,pc       ; restore registers from stack and return




	.globl  _picRead
_picRead:
	pshs    d,dp,x,y,u

	lda #0hd0		; setup direct page to 0xd000
	tfr a, dp

; set PB6 to high
	lda #0x9f
	sta *DCNTRL	; PB6 direction = input

; wait a bit until the signal settles
	ldb #10
wh:
	decb
	bne wh

	lda #8
	sta bit_counter

; wait up to 25 ms until PB6 is set to low from the PIC, an EEPROM write delays the answer by 5 ms
	lda #0
	sta data
	ldb #0h40
	ldx #0
wait_start:
	leax 1,x
	cmpx #2000
	beq timeout
	bitb *CNTRL
	bne wait_start

; measure high time
next_bit:
	lda #0
	sta counter
	ldb #0h40
wait_start2:
	inca
	cmpa #255
	beq timeout
	bitb *CNTRL
	beq wait_start2
	lda #0
wait_start3:
	inca
	cmpa #255
	beq timeout
	inc counter
	bitb *CNTRL
	bne wait_start3

; test if it was a 0 or 1 bit
	ldb counter
	lda data
	asla
	cmpb #9
	blt less
	ora #1
less:
	sta data

	dec bit_counter
	bne next_bit

; wait until the PIC released the line after the last bit, so the next command can't collide with the reply
	lda #0
	ldb #0h40
wait_release:
	inca
	cmpa #255
	beq timeout
	bitb *CNTRL
	beq wait_release

timeout:

; return the byte
	puls d,dp,x,y,u       ; restore registers from stack
	ldb data
	rts


; wait about 10 ms
	.globl  _delay10ms
_delay10ms:
	pshs    d,dp,x,y,u

    lda #12
d1:    ldb #0
d2:    decb
    bne d2
    deca
    bne d1

	puls d,dp,x,y,u,pc       ; restore registers from stack and return


; switches the cartridge to another bank and cold starts the game in it, B = bank
; The command is sent from a copy in RAM, because the ROM changes under the CPU when the PIC switches
; the bank. The copy overwrites the level lines, which doesn't matter, the BIOS initializes the RAM again.
	.globl  _startCartridge
_startCartridge:
	ldx #cartridgeSwitch
	ldu #_lineYX_yx_s_dy_dx
copy:
	lda ,x+
	sta ,u+
	cmpx #cartridgeSwitchEnd
	bne copy
	jmp _lineYX_yx_s_dy_dx

; position independent, runs in RAM
cartridgeSwitch:
	stb counter
	lda #0hd0		; setup direct page to 0xd000
	tfr a, dp
	tst _picAvailable
	beq switchVecx
	lda #0x56		; 'V'
	bsr sendByte
	lda #5			; CMD_SET_BANK
	bsr sendByte
	lda counter
	bsr sendByte		; the PIC switches the bank after this byte
; wait about 16 ms, until the PIC sent its answer and released PB6
	ldx #3000
waitAnswer:
	leax -1,x
	bne waitAnswer
	bra coldStart
switchVecx:			; emulator, like sendVecxCommand in bloxorz.c
	lda #0x56
	sta 0x8001
	lda #5
	sta 0x8001
	lda counter
	sta 0x8001
coldStart:
	ldd #0
	std 0xcbfe		; Vec_Cold_Flag != 0x7321: the BIOS cold starts with the title of the new game
	jmp 0xf000

; like _picWrite, with the byte in A
sendByte:
	sta data
	lda #0xdf
	sta *DCNTRL	; PB6 direction = output
	lda *CNTRL
	anda #0xbf
	sta *CNTRL
	ldb #8
sendLoop:
	lda data
	bita #0x80
	beq send0
	lda #0x9f
	sta *DCNTRL	; PB6 direction = input
	nop
	nop
	nop
	nop
	lda #0xdf
	sta *DCNTRL	; PB6 direction = output
	bra sendNext
send0:
	lda #0x9f
	sta *DCNTRL	; PB6 direction = input
	lda #0xdf
	sta *DCNTRL	; PB6 direction = output
	nop
	nop
	nop
	nop
	bra sendNext
sendNext:
	lsl data
	decb
	bne sendLoop
	ldb #10
sendWait:
	decb
	bne sendWait
	rts
cartridgeSwitchEnd:
