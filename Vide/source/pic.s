CNTRL = 0hd000	; ORB / IRB - Output Register B / Input Register B
DCNTRL = 0hd002	; DDRB      - Data Direction Register B

	.area .bss
data: .blkb   1
counter: .blkb   1
bit_counter: .blkb   1
 
	.area .text

	.globl  _picWrite
_picWrite:
	pshs    d,dp,x
	stb data

	lda #0hd0		; setup direct page to 0xd000
	tfr a, dp

	ldx #0xdf
	ldy #0x9f

	; start with low signal
	lda #0xdf
	sta *DCNTRL	; PB6 direction = output

	lda *CNTRL
	anda #0xbf
	sta *CNTRL
	
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

	puls d,dp,x,pc       ; restore registers from stack and return




	.globl  _picRead
_picRead:
	pshs    d,dp,x

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

; wait until PB6 is set to low from the PIC
	lda #0
	sta data
	ldb #0h40
wait_start:
	inca
	cmpa #255
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

timeout:

; return high time
	puls d,dp,x       ; restore registers from stack
	ldb data
	rts


; wait about 10 ms
	.globl  _delay10ms
_delay10ms:
	pshs    d,dp,x

    lda #12
d1:    ldb #0
d2:    decb
    bne d2
    deca
    bne d1

	puls d,dp,x,pc       ; restore registers from stack and return
