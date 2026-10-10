CNTRL = 0hd000	; ORB / IRB - Output Register B / Input Register B
DCNTRL = 0hd002	; DDRB      - Data Direction Register B

	.area .bss
data: .blkb   1
counter: .blkb   1
bit_counter: .blkb   1
	.globl  _midiBlock
_midiBlock: .blkb 32

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


; reads the fast reply of CMD_UART_READ_BLOCK into _midiBlock: a count byte, then that many bytes,
; each a low start bit, 8 data bits LSB first and a high stop bit, 24 us (36 cycles) per bit, back to back.
; The start bit is polled every 7 to 15 cycles, bit 0 is sampled 46 cycles after the poll that saw it,
; 31-41 us after the edge, and the next start bit is polled from 38 cycles after the last sample on,
; inside the stop bit. The cycle counts in the comments keep this timing.
; returns B = number of bytes, 0 on timeout
	.globl  _picReadBlock
_picReadBlock:
	pshs    a,dp,x,y,u
	lda #0hd0		; setup direct page to 0xd000
	tfr a, dp
	lda #0x9f
	sta *DCNTRL	; PB6 input, the PIC drives the line from here on
	ldy #_midiBlock
	ldb #0x40
; the count byte: wait up to 25 ms for its start bit
	ldx #1700
wait_count:
	bitb *CNTRL	; 4
	beq count_start	; 3
	bitb *CNTRL	; 4
	beq count_start	; 3
	leax -1,x	; 5
	bne wait_count	; 3
	bra block_done
count_start:
	bsr fast_byte	; 14 cycles after the last sample
	cmpb #32	; 2
	bls count_ok	; 3
	ldb #32		; never more than _midiBlock holds
count_ok:
	stb counter	; 5, bytes left
	beq block_done	; 3
	nop		; 2
	nop		; 2
next_byte:
	lda #30		; 2, about 380 us timeout
	ldb #0x40	; 2
wait_data:
	bitb *CNTRL	; 4
	beq data_start	; 3
	bitb *CNTRL	; 4
	beq data_start	; 3
	deca		; 2
	bne wait_data	; 3
	bra block_done
data_start:
	bsr fast_byte	; 14 cycles after the last sample
	stb ,y+		; 6
	dec counter	; 7
	bne next_byte	; 3
block_done:
	tfr y,d
	subd #_midiBlock
	puls a,dp,x,y,u
	rts

; samples 8 bits into B, LSB first, the first one 46 cycles after the poll that saw the start bit,
; then every 36 cycles; entered 10 cycles after that poll (beq, bsr)
fast_byte:
	ldb #0x80	; 2, shifted out into carry after the 8th bit
	lda #4		; 2
fast_delay:
	deca		; 2
	bne fast_delay	; 3, 20
	nop		; 2
	nop		; 2
	nop		; 2
	nop		; 2
fast_bit:
	lda *CNTRL	; 4, sample
	lsla		; 2
	lsla		; 2, carry = PB6
	rorb		; 2
	bcs fast_end	; 3
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop		; 20
	bra fast_bit	; 3, 36 cycles per bit
fast_end:
	rts		; 5

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
	lda #3
	sta bit_counter		; tries
switchTry:
	lda #0x56		; 'V'
	bsr sendByte
	lda #0x58		; 'X'
	bsr sendByte
	lda #5			; CMD_SET_BANK
	bsr sendByte
	lda counter
	bsr sendByte
	lda counter
	eora #0xa0		; check byte: command ^ argument ^ 0xa5
	bsr sendByte		; the PIC switches the bank after this byte
	lda #0x9f
	sta *DCNTRL		; PB6 input for the PIC's answer
; wait about 16 ms, the PIC's answer takes about 3.5 ms
	ldx #3000
waitAnswer:
	leax -1,x
	bne waitAnswer
; the switch failed when the title in the header is still the one of Bloxorz
	ldx #0x0011
	ldd ,x
	cmpd #0x424c		; "BL"
	bne coldStart
	ldd 2,x
	cmpd #0x4f58		; "OX"
	bne coldStart
	dec bit_counter
	bne switchTry
	bra coldStart		; Bloxorz again
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
