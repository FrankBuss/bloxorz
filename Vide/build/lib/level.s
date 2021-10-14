;;; gcc for m6809 : Sep 13 2017 10:25:42
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	level.enr.c
;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
;  -fno-time-report -I/home/frank/bin/Vide/C/PeerC/vectrex/include
;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
;  /home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c
;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
;  -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
;  -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
;  -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
;  -fpcc-struct-return -fpeephole -fsched-interblock -fsched-spec
;  -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
;  -fsplit-wide-types -ftoplevel-reorder -ftrapping-math -ftree-ccp
;  -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
;  -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
;  -ftree-ter -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
;  -fzero-initialized-in-bss
;  Compiler executable checksum: 2c98d3c5ec6c12badb1abdde57df156f
	.area .text
	.globl _getField
_getField:
	pshs	y,u	; 
	leas	-5,s	; ,,
	stb	4,s	;  x, x
	blt	L2	; 
	tst	11,s	;  y
	blt	L2	; 
	cmpb	#9	;cmpqi:	;  x,
	bgt	L2	; 
	ldb	11,s	; , y
	cmpb	#14	;cmpqi:	; ,
	bgt	L2	; 
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	ldb	4,s	; , x
	sex		;extendqihi2: R:b -> R:d	; ,
	tfr	d,y	; , x
	ldd	,s	; ,
	aslb	; 
	rola	; 
	std	2,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	ldu	2,s	; ,
	leax	d,u	;  tmp38, tmp37,
	exg	d,y	; , x
	leax	d,x	;  tmp39,, tmp39
	exg	d,y	; , x
	exg	d,x	; , tmp40
	addd	[_level]	; , <variable>.geometry
	exg	d,x	; , tmp40
	ldb	,x	;  c,
	bra	L3	; 
L2:
	clrb	;  c
L3:
	leas	5,s	; ,,
	puls	y,u,pc	; 
	.globl _getShifts
_getShifts:
;----- asm -----
;  52 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[51]    return shifts[bit];
;  0 "" 2
;--- end asm ---
	ldx	#_shifts	; 
	abx
	ldb	,x	;  tmp33
	rts
	.globl _isSwatchFieldOn
_isSwatchFieldOn:
	pshs	u	; 
	leas	-2,s	; ,,
	stb	,s	;  x, x
;----- asm -----
;  58 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[56]    long int index = (long int) y*LEVEL_WIDTH + (long int)x;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , y
	lda	#10	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp33
	ldb	,s	; , x
	sex		;extendqihi2: R:b -> R:d	; ,
	tfr	d,u	; , x
	exg	d,x	; , tmp33
	leau	d,u	;  index,, index
;----- asm -----
;  60 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[57]    uint8_t bit = (uint8_t) (index & 7);
;  0 "" 2
;  62 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[58]    index >>= 3;
;  0 "" 2
;  64 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[59]    return (swatchesOn[index] & getShifts(bit)) > 0;
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  index,
	asra	; 
	rorb	; 
	asra	; 
	rorb	; 
	asra	; 
	rorb	; 
	tfr	d,x	; , tmp35
	ldb	_swatchesOn,x	; , swatchesOn
	stb	1,s	; , D.1323
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  index, index
	andb	#7	;  tmp38,
	jsr	_getShifts	; 
	andb	1,s	;  tmp40, D.1323
	beq	L8	; 
	ldb	#1	;  tmp40,
L8:
	leas	2,s	; ,,
	puls	u,pc	; 
	.globl _setSwatchField
_setSwatchField:
	pshs	y	; 
	leas	-4,s	; ,,
	stb	,s	;  x, x
;----- asm -----
;  70 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[64]    long int index = (long int) y*LEVEL_WIDTH + (long int)x;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , y
	lda	#10	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp37
	ldb	,s	; , x
	sex		;extendqihi2: R:b -> R:d	; ,
; Applied peep: 4-2 (tfr exg 1=1, 2=2)
	tfr	d,y	; , x
; ORG>	tfr	d,y	; , x
; ORG>	exg	d,y	; , x
	leax	d,x	;  index,, index
;----- asm -----
;  72 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[65]    uint8_t bit = (uint8_t) (index & 7);
;  0 "" 2
;--- end asm ---
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  index, index
	andb	#7	;  index,
	stb	2,s	;  index, bit
;----- asm -----
;  74 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[66]    index >>= 3;
;  0 "" 2
;--- end asm ---
	tfr	x,d	;  index, index.64
	asra	; 
	rorb	; 
	asra	; 
	rorb	; 
	asra	; 
	rorb	; 
;----- asm -----
;  76 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[67]    if (on) {
;  0 "" 2
;--- end asm ---
	tst	9,s	;  on
	beq	L11	; 
;----- asm -----
;  78 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[68]        swatchesOn[index] |= getShifts(bit);
;  0 "" 2
;--- end asm ---
	ldx	#_swatchesOn	; ,
	leay	d,x	;  tmp41, index.64,
	ldb	,y	; , swatchesOn
	stb	1,s	; , D.1338
	ldb	2,s	; , bit
	jsr	_getShifts	; 
	orb	1,s	;  tmp44, D.1338
	stb	,y	;  tmp44, swatchesOn
	bra	L13	; 
L11:
;----- asm -----
;  81 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[70]        swatchesOn[index] &= ~getShifts(bit);
;  0 "" 2
;--- end asm ---
	ldx	#_swatchesOn	; ,
	leay	d,x	;  tmp46, index.64,
	ldb	,y	; , swatchesOn
	stb	3,s	; , temp.65
	ldb	2,s	; , bit
	jsr	_getShifts	; 
	comb	;  tmp49
	andb	3,s	;  tmp50, temp.65
	stb	,y	;  tmp50, swatchesOn
L13:
	leas	4,s	; ,,
	puls	y,pc	; 
	.globl _isField
_isField:
	leas	-2,s	; ,,
	stb	,s	;  x, x
;----- asm -----
;  88 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[76]    char c = getField(x, y);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , y
	pshs	b	; 
	ldb	1,s	; , x
	jsr	_getField	; 
	leas	1,s	; ,,
	stb	1,s	; , c
;----- asm -----
;  92 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[79]    if (c == 'l' || c == 'r' || c == 'k' || c == 'q') {
;  0 "" 2
;--- end asm ---
	cmpb	#108	;cmpqi:	; ,
	beq	L15	; 
	cmpb	#114	;cmpqi:	; ,
	beq	L15	; 
	cmpb	#107	;cmpqi:	; ,
	beq	L15	; 
	cmpb	#113	;cmpqi:	; ,
	bne	L16	; 
L15:
;----- asm -----
;  94 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[80]        if (isSwatchFieldOn(x, y)) {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , y
	pshs	b	; 
	ldb	1,s	; , x
	jsr	_isSwatchFieldOn	; 
	leas	1,s	; ,,
	tstb	;  D.1352
	beq	L16	; 
;----- asm -----
;  96 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[81]            c = 'b';
;  0 "" 2
;--- end asm ---
	ldb	#98	; ,
	stb	1,s	; , c
L16:
;----- asm -----
;  102 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[86]    return (uint8_t) (c == 'b' || c == 'e' || c == 's' || c == 'h' || c == 'f' || c == 'v');
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , c
	cmpb	#98	;cmpqi:	; ,
	beq	L17	; 
	cmpb	#101	;cmpqi:	; ,
	beq	L17	; 
	cmpb	#115	;cmpqi:	; ,
	beq	L17	; 
	cmpb	#104	;cmpqi:	; ,
	beq	L17	; 
	cmpb	#102	;cmpqi:	; ,
	beq	L17	; 
	cmpb	#118	;cmpqi:	; ,
	eorb	#118	;  tmp34,
	clra		;zero_extendqihi: R:b -> R:d	;  tmp34, tmp35
	addd	#-1	;  tmp36,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	bra	L19	; 
L17:
	ldb	#1	;  iftmp.5,
L19:
	leas	2,s	; ,,
	rts
	.globl _x3d
_x3d:
	pshs	u	; 
	leas	-2,s	; ,,
	stb	,s	;  x, x
;----- asm -----
;  171 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[127]    x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  173 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[128]    return 14 * x - 6 * z;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , z
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp31
	ldb	,s	;  tmp32, x
	decb	;  tmp32
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp33
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp31,
	stb	1,s	; ,
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp33, tmp35
	addb	1,s	;  tmp30,
	leas	2,s	; ,,
	puls	u,pc	; 
	.globl _y3d
_y3d:
	leas	-3,s	; ,,
	stb	2,s	;  x, x
;----- asm -----
;  180 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[134]    y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  182 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[135]    return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	5,s	;  tmp32, y
	addb	#-7	;  tmp32,
	lda	#13	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp33
	ldb	6,s	; , z
	aslb	; 
	aslb	; 
	aslb	; 
	stb	1,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp33, tmp36
	addb	1,s	;  tmp36,
	stb	,s	;  tmp36,
	ldb	2,s	;  tmp38, x
	aslb	;  tmp38
	addb	2,s	;  tmp39, x
	addb	,s	;  tmp31,
	leas	3,s	; ,,
	rts
	.globl _checkHalfling
_checkHalfling:
	pshs	y,u	; 
	leas	-41,s	; ,,
;----- asm -----
;  270 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[222]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+2)] = USED_BOARD_SCALE;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	11,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	ldu	11,s	; ,
	leax	d,u	;  tmp100, tmp99,
	ldb	#127	; ,
	stb	_lineYX_yx_s_dy_dx+2,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  273 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[224]    if (useHalfling[levelOffset + levelNumber] == 0) 
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	stb	13,s	; , levelNumber.11
	addb	_levelOffset	;  tmp103, levelOffset
	clra		;zero_extendqihi: R:b -> R:d	;  tmp103,
	tfr	d,x	; , tmp104
	tst	_useHalfling,x	;  useHalfling
	bne	L26	; 
;----- asm -----
;  276 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[226]        last_x = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	_last_x	; , last_x
;----- asm -----
;  278 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[227]        last_y = -1;
;  0 "" 2
;--- end asm ---
	stb	_last_y	; , last_y
;----- asm -----
;  280 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[228]        last_s = -1;
;  0 "" 2
;--- end asm ---
	stb	_last_s	; , last_s
;----- asm -----
;  282 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[229]        return;
;  0 "" 2
;--- end asm ---
	jmp	L70	; 
L26:
;----- asm -----
;  287 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[233]    int8_t this_x = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]+lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)];
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,u	; , temp.91
	ldy	#_lineYX_yx_s_dy_dx	;  tmp107,
	tfr	y,d	;  tmp107,
	leax	d,u	;  tmp108,, temp.91
	ldb	1,x	; , lineYX_yx_s_dy_dx
	stb	14,s	; , D.1432
	ldb	4,x	; , lineYX_yx_s_dy_dx
	stb	15,s	; , D.1434
;----- asm -----
;  289 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[234]    int8_t this_y = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]+lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)];
;  0 "" 2
;--- end asm ---
	ldb	,x	; , lineYX_yx_s_dy_dx
	stb	16,s	; , D.1435
	leau	3,u	;  D.1436,, temp.91
	tfr	y,d	;  tmp107,
	leax	d,u	;  tmp116,, D.1436
	ldb	,x	; , lineYX_yx_s_dy_dx
	stb	17,s	; , D.1437
;----- asm -----
;  292 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[236]    HALF_IF_POSSIBLE(REDUX1)
;  0 "" 2
;--- end asm ---
	ldx	#64	;  iftmp.12,
	ldb	13,s	; , levelNumber.11
	cmpb	#14	;cmpqi:	; ,
	beq	L29	; 
	ldx	#40	;  iftmp.12,
L29:
	ldb	17,s	;  D.1437, D.1437
	bge	L31	; 
	negb	;  D.1437
L31:
	sex		;extendqihi2: R:b -> R:d	;  D.1437, D.1437
	pshs	d	;cmphi: R:d with R:x	;  D.1437, iftmp.12
	cmpx	,s++	;cmphi:	;  iftmp.12
	ble	L30	; 
	ldx	#64	;  iftmp.13,
	ldb	13,s	; , levelNumber.11
	cmpb	#14	;cmpqi:	; ,
	beq	L33	; 
	ldx	#40	;  iftmp.13,
L33:
	ldb	15,s	;  D.1434, D.1434
	bge	L34	; 
	negb	;  D.1434
L34:
	sex		;extendqihi2: R:b -> R:d	;  D.1434, D.1434
	pshs	d	;cmphi: R:d with R:x	;  D.1434, iftmp.13
	cmpx	,s++	;cmphi:	;  iftmp.13
	ble	L30	; 
	ldb	17,s	; , D.1437
	aslb	; 
	stb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , tmp123
	asl	_lineYX_yx_s_dy_dx+4,x	;  lineYX_yx_s_dy_dx
	asr	_lineYX_yx_s_dy_dx+2,x	;  lineYX_yx_s_dy_dx
L30:
;----- asm -----
;  294 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[237]    HALF_IF_POSSIBLE(REDUX2)
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , temp.103
	leau	3,y	;  temp.104,, temp.103
	ldb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
	stb	28,s	; , temp.105
	ldb	_levelNumber	; , levelNumber
	stb	29,s	; , levelNumber.108
	ldx	#64	;  iftmp.14,
	cmpb	#14	;cmpqi:	; ,
	beq	L36	; 
	ldx	#40	;  iftmp.14,
L36:
	ldb	28,s	;  temp.105, temp.105
	bge	L38	; 
	negb	;  temp.105
L38:
	sex		;extendqihi2: R:b -> R:d	;  temp.105, temp.105
	pshs	d	;cmphi: R:d with R:x	;  temp.105, iftmp.14
	cmpx	,s++	;cmphi:	;  iftmp.14
	ble	L37	; 
	ldb	_lineYX_yx_s_dy_dx+4,y	; , lineYX_yx_s_dy_dx
	stb	4,s	; , temp.110
	ldx	#64	;  iftmp.15,
	ldb	29,s	; , levelNumber.108
	cmpb	#14	;cmpqi:	; ,
	beq	L40	; 
	ldx	#40	;  iftmp.15,
L40:
	ldb	4,s	;  temp.110, temp.110
	bge	L41	; 
	negb	;  temp.110
L41:
	sex		;extendqihi2: R:b -> R:d	;  temp.110, temp.110
	pshs	d	;cmphi: R:d with R:x	;  temp.110, iftmp.15
	cmpx	,s++	;cmphi:	;  iftmp.15
	ble	L37	; 
	ldb	28,s	; , temp.105
	aslb	; 
	stb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , tmp144
	asl	_lineYX_yx_s_dy_dx+4,x	;  lineYX_yx_s_dy_dx
	asr	_lineYX_yx_s_dy_dx+2,x	;  lineYX_yx_s_dy_dx
L37:
;----- asm -----
;  296 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[238]    HALF_IF_POSSIBLE(REDUX3)
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , temp.128
	leau	3,y	;  temp.129,, temp.128
	ldb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
	stb	30,s	; , temp.130
	ldb	_levelNumber	; , levelNumber
	stb	31,s	; , levelNumber.133
	ldx	#64	;  iftmp.16,
	cmpb	#14	;cmpqi:	; ,
	beq	L43	; 
	ldx	#40	;  iftmp.16,
L43:
	ldb	30,s	;  temp.130, temp.130
	bge	L45	; 
	negb	;  temp.130
L45:
	sex		;extendqihi2: R:b -> R:d	;  temp.130, temp.130
	pshs	d	;cmphi: R:d with R:x	;  temp.130, iftmp.16
	cmpx	,s++	;cmphi:	;  iftmp.16
	ble	L44	; 
	ldb	_lineYX_yx_s_dy_dx+4,y	; , lineYX_yx_s_dy_dx
	stb	4,s	; , temp.135
	ldx	#64	;  iftmp.17,
	ldb	31,s	; , levelNumber.133
	cmpb	#14	;cmpqi:	; ,
	beq	L47	; 
	ldx	#40	;  iftmp.17,
L47:
	ldb	4,s	;  temp.135, temp.135
	bge	L48	; 
	negb	;  temp.135
L48:
	sex		;extendqihi2: R:b -> R:d	;  temp.135, temp.135
	pshs	d	;cmphi: R:d with R:x	;  temp.135, iftmp.17
	cmpx	,s++	;cmphi:	;  iftmp.17
	ble	L44	; 
	ldb	30,s	; , temp.130
	aslb	; 
	stb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , tmp165
	asl	_lineYX_yx_s_dy_dx+4,x	;  lineYX_yx_s_dy_dx
	asr	_lineYX_yx_s_dy_dx+2,x	;  lineYX_yx_s_dy_dx
L44:
;----- asm -----
;  299 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[240]    if (last_s != -1)
;  0 "" 2
;--- end asm ---
	ldb	_last_s	; , last_s
	cmpb	#-1	;cmpqi:	; ,
	lbeq	L49	; 
;----- asm -----
;  305 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[245]        int oldSacle = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount-1)*5+2)];
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	32,s	; , lineCount.151
	decb	;  tmp175
	lda	#5	;umulqihi3	; 
	mul
	addd	#2	;  tmp176,
	std	18,s	;  tmp176, D.1456
	tfr	d,x	; ,
	ldb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
	stb	27,s	; , oldSacle
;----- asm -----
;  308 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[247]        if ((oldSacle ==  HALF_1) && (useHalfling[levelOffset + levelNumber] > 0) )
;  0 "" 2
;--- end asm ---
	cmpb	#63	;cmpqi:	; ,
	lbne	L50	; 
	ldb	_levelNumber	; , levelNumber
	stb	33,s	; , levelNumber.152
	addb	_levelOffset	;  tmp179, levelOffset
	clra		;zero_extendqihi: R:b -> R:d	;  tmp179,
	tfr	d,x	; , tmp180
	tst	_useHalfling,x	;  useHalfling
	lble	L50	; 
;----- asm -----
;  311 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[249]            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]-last_y;
;  0 "" 2
;--- end asm ---
	ldb	32,s	; , lineCount.151
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , temp.156
	leax	_lineYX_yx_s_dy_dx,x	;  tmp189,, temp.156
	ldb	,x+	;  tmp186, lineYX_yx_s_dy_dx
	subb	_last_y	;  tmp185, last_y
	sex		;extendqihi2: R:b -> R:d	;  tmp185,
	std	2,s	; , dy
;----- asm -----
;  313 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[250]            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]-last_x;
;  0 "" 2
;--- end asm ---
	ldb	,x	; , lineYX_yx_s_dy_dx
	stb	34,s	; , temp.159
	ldb	_last_x	; , last_x
	stb	20,s	; , last_x.20
;----- asm -----
;  315 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[251]            dy = dy <<1;
;  0 "" 2
;--- end asm ---
	ldd	2,s	; , dy
	aslb	; 
	rola	; 
	tfr	d,y	; , dy.160
;----- asm -----
;  317 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[252]            dx = dx <<1;
;  0 "" 2
;  319 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[253]            if ((ABS16(dy) < MAX_SPLIT*2) && (ABS16(dx) < MAX_SPLIT*2))
;  0 "" 2
;--- end asm ---
	ldu	#128	;  iftmp.21,
	ldb	33,s	; , levelNumber.152
	cmpb	#14	;cmpqi:	; ,
	beq	L52	; 
	ldu	#80	;  iftmp.21,
L52:
	leax	,y	;  dy.160, dy.160
	cmpy	#0	;  dy.160
	bge	L53	; 
	exg	d,x	;  dy.160
	nega
	negb
	sbca	#0
	exg	d,x	;  dy.160
L53:
	pshs	x	;cmphi: R:x with R:u	;  dy.160, iftmp.21
	cmpu	,s++	;cmphi:	;  iftmp.21
	lble	L49	; 
	ldx	#128	; ,
	stx	21,s	; , iftmp.22
	ldb	33,s	; , levelNumber.152
	cmpb	#14	;cmpqi:	; ,
	beq	L55	; 
	ldx	#80	; ,
	stx	21,s	; , iftmp.22
L55:
	ldb	34,s	;  tmp191, temp.159
	subb	20,s	;  tmp191, last_x.20
	sex		;extendqihi2: R:b -> R:d	;  tmp191, dx
	aslb	; 
	rola	; 
	tfr	d,u	;  dx, dx.161
	leax	,u	;  dx.161, dx.161
	cmpu	#0	;  dx.161
	bge	L56	; 
	exg	d,x	;  dx.161
	nega
	negb
	sbca	#0
	exg	d,x	;  dx.161
L56:
	cmpx	21,s	;cmphi:(R)	;  dx.161, iftmp.22
	lbge	L49	; 
;----- asm -----
;  326 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[259]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount-1)*5+2)] = (int8_t) (((uint8_t)oldSacle) | 0x80);
;  0 "" 2
;--- end asm ---
	ldb	#-65	; ,
	ldx	18,s	; , D.1456
	stb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  330 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[262]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = (int8_t)dy;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	9,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	addd	9,s	;  tmp199,
	addd	#_lineYX_yx_s_dy_dx	;  tmp199,
	std	,s	;  tmp199,
	tfr	y,d	;  dy.160,
	ldx	,s	; ,
	stb	,x+	;movlsbqihi: R:d -> ,x+	;  lineYX_yx_s_dy_dx,
;----- asm -----
;  332 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[263]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = (int8_t)dx;
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  dx.161,
	stb	,x	;movlsbqihi: R:d -> ,x	;  lineYX_yx_s_dy_dx,
	jmp	L49	; 
L50:
	ldb	27,s	; , oldSacle
	cmpb	#31	;cmpqi:	; ,
	lbne	L57	; 
	ldb	_levelNumber	; , levelNumber
	stb	35,s	; , levelNumber.169
	addb	_levelOffset	;  tmp208, levelOffset
	clra		;zero_extendqihi: R:b -> R:d	;  tmp208,
	tfr	d,x	; , tmp209
	ldb	_useHalfling,x	; , useHalfling
	cmpb	#1	;cmpqi:	; ,
	lble	L57	; 
;----- asm -----
;  340 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[270]            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]-last_y;
;  0 "" 2
;--- end asm ---
	ldb	32,s	; , lineCount.151
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , temp.173
	leax	_lineYX_yx_s_dy_dx,x	;  tmp218,, temp.173
	ldb	,x+	;  tmp215, lineYX_yx_s_dy_dx
	subb	_last_y	;  tmp214, last_y
	sex		;extendqihi2: R:b -> R:d	;  tmp214,
	std	2,s	; , dy
;----- asm -----
;  342 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[271]            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]-last_x;
;  0 "" 2
;--- end asm ---
	ldb	,x	; , lineYX_yx_s_dy_dx
	stb	36,s	; , temp.178
	ldb	_last_x	; , last_x
	stb	37,s	; , last_x.179
;----- asm -----
;  344 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[272]            dy = dy <<1;
;  0 "" 2
;--- end asm ---
	ldd	2,s	;  dy.181, dy
	aslb	; 
	rola	; 
;----- asm -----
;  346 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[273]            dx = dx <<1;
;  0 "" 2
;  348 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[274]            dy = dy <<1;
;  0 "" 2
;--- end asm ---
	aslb	; 
	rola	; 
	tfr	d,y	;  dy.181, dy.183
;----- asm -----
;  350 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[275]            dx = dx <<1;
;  0 "" 2
;  352 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[276]            if ((ABS16(dy) < MAX_SPLIT*2) && (ABS16(dx) < MAX_SPLIT*2))
;  0 "" 2
;--- end asm ---
	ldu	#128	;  iftmp.24,
	ldb	35,s	; , levelNumber.169
	cmpb	#14	;cmpqi:	; ,
	beq	L59	; 
	ldu	#80	;  iftmp.24,
L59:
	leax	,y	;  dy.183, dy.183
	cmpy	#0	;  dy.183
	bge	L60	; 
	exg	d,x	;  dy.183
	nega
	negb
	sbca	#0
	exg	d,x	;  dy.183
L60:
	pshs	x	;cmphi: R:x with R:u	;  dy.183, iftmp.24
	cmpu	,s++	;cmphi:	;  iftmp.24
	lble	L49	; 
	ldx	#128	; ,
	stx	23,s	; , iftmp.25
	ldb	35,s	; , levelNumber.169
	cmpb	#14	;cmpqi:	; ,
	beq	L62	; 
	ldx	#80	; ,
	stx	23,s	; , iftmp.25
L62:
	ldb	36,s	;  tmp220, temp.178
	subb	37,s	;  tmp220, last_x.179
	sex		;extendqihi2: R:b -> R:d	;  tmp220, dx
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	tfr	d,u	;  dx.182, dx.184
	leax	,u	;  dx.184, dx.184
	cmpu	#0	;  dx.184
	bge	L63	; 
	exg	d,x	;  dx.184
	nega
	negb
	sbca	#0
	exg	d,x	;  dx.184
L63:
	cmpx	23,s	;cmphi:(R)	;  dx.184, iftmp.25
	lbge	L49	; 
;----- asm -----
;  359 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[282]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount-1)*5+2)] = (int8_t) (((uint8_t)oldSacle) | 0x80);
;  0 "" 2
;--- end asm ---
	ldb	#-97	; ,
	ldx	18,s	; , D.1456
	stb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  363 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[285]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = (int8_t)dy;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	7,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	addd	7,s	;  tmp228,
	addd	#_lineYX_yx_s_dy_dx	;  tmp228,
	std	,s	;  tmp228,
	tfr	y,d	;  dy.183,
	ldx	,s	; ,
	stb	,x+	;movlsbqihi: R:d -> ,x+	;  lineYX_yx_s_dy_dx,
;----- asm -----
;  365 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[286]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = (int8_t)dx;
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  dx.184,
	stb	,x	;movlsbqihi: R:d -> ,x	;  lineYX_yx_s_dy_dx,
	jmp	L49	; 
L57:
	ldb	27,s	; , oldSacle
	cmpb	#15	;cmpqi:	; ,
	lbne	L49	; 
	ldb	_levelNumber	; , levelNumber
	stb	38,s	; , levelNumber.192
	addb	_levelOffset	;  tmp237, levelOffset
	clra		;zero_extendqihi: R:b -> R:d	;  tmp237,
	tfr	d,x	; , tmp238
	ldb	_useHalfling,x	; , useHalfling
	cmpb	#2	;cmpqi:	; ,
	lble	L49	; 
;----- asm -----
;  373 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[293]            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]-last_y;
;  0 "" 2
;--- end asm ---
	ldb	32,s	; , lineCount.151
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , temp.196
	leax	_lineYX_yx_s_dy_dx,x	;  tmp247,, temp.196
	ldb	,x+	;  tmp244, lineYX_yx_s_dy_dx
	subb	_last_y	;  tmp243, last_y
	sex		;extendqihi2: R:b -> R:d	;  tmp243,
	std	2,s	; , dy
;----- asm -----
;  375 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[294]            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]-last_x;
;  0 "" 2
;--- end asm ---
	ldb	,x	; , lineYX_yx_s_dy_dx
	stb	39,s	; , temp.201
	ldb	_last_x	; , last_x
	stb	40,s	; , last_x.202
;----- asm -----
;  377 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[295]            dy = dy <<1;
;  0 "" 2
;--- end asm ---
	ldd	2,s	;  dy.204, dy
	aslb	; 
	rola	; 
;----- asm -----
;  379 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[296]            dx = dx <<1;
;  0 "" 2
;  381 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[297]            dy = dy <<1;
;  0 "" 2
;--- end asm ---
	aslb	; 
	rola	; 
;----- asm -----
;  383 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[298]            dx = dx <<1;
;  0 "" 2
;  385 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[299]            dy = dy <<1;
;  0 "" 2
;--- end asm ---
	aslb	; 
	rola	; 
	tfr	d,y	;  dy.206, dy.208
;----- asm -----
;  387 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[300]            dx = dx <<1;
;  0 "" 2
;  389 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[301]            if ((ABS16(dy) < MAX_SPLIT*2) && (ABS16(dx) < MAX_SPLIT*2))
;  0 "" 2
;--- end asm ---
	ldu	#128	;  iftmp.26,
	ldb	38,s	; , levelNumber.192
	cmpb	#14	;cmpqi:	; ,
	beq	L65	; 
	ldu	#80	;  iftmp.26,
L65:
	leax	,y	;  dy.208, dy.208
	cmpy	#0	;  dy.208
	bge	L66	; 
	exg	d,x	;  dy.208
	nega
	negb
	sbca	#0
	exg	d,x	;  dy.208
L66:
	pshs	x	;cmphi: R:x with R:u	;  dy.208, iftmp.26
	cmpu	,s++	;cmphi:	;  iftmp.26
	lble	L49	; 
	ldx	#128	; ,
	stx	25,s	; , iftmp.27
	ldb	38,s	; , levelNumber.192
	cmpb	#14	;cmpqi:	; ,
	beq	L68	; 
	ldx	#80	; ,
	stx	25,s	; , iftmp.27
L68:
	ldb	39,s	;  tmp249, temp.201
	subb	40,s	;  tmp249, last_x.202
	sex		;extendqihi2: R:b -> R:d	;  tmp249, dx
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	tfr	d,u	;  dx.207, dx.209
	leax	,u	;  dx.209, dx.209
	cmpu	#0	;  dx.209
	bge	L69	; 
	exg	d,x	;  dx.209
	nega
	negb
	sbca	#0
	exg	d,x	;  dx.209
L69:
	cmpx	25,s	;cmphi:(R)	;  dx.209, iftmp.27
	bge	L49	; 
;----- asm -----
;  396 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[307]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount-1)*5+2)] = (int8_t) (((uint8_t)oldSacle) | 0x80);
;  0 "" 2
;--- end asm ---
	ldb	#-113	; ,
	ldx	18,s	; , D.1456
	stb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  400 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[310]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = (int8_t)dy;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	5,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	addd	5,s	;  tmp257,
	addd	#_lineYX_yx_s_dy_dx	;  tmp257,
	std	,s	;  tmp257,
	tfr	y,d	;  dy.208,
	ldx	,s	; ,
	stb	,x+	;movlsbqihi: R:d -> ,x+	;  lineYX_yx_s_dy_dx,
;----- asm -----
;  402 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[311]                lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = (int8_t)dx;
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  dx.209,
	stb	,x	;movlsbqihi: R:d -> ,x	;  lineYX_yx_s_dy_dx,
L49:
;----- asm -----
;  409 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[317]    last_x = this_x;
;  0 "" 2
;--- end asm ---
	ldb	15,s	; , D.1434
	addb	14,s	; , D.1432
	stb	_last_x	; , last_x
;----- asm -----
;  411 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[318]    last_y = this_y;
;  0 "" 2
;--- end asm ---
	ldb	17,s	; , D.1437
	addb	16,s	; , D.1435
	stb	_last_y	; , last_y
;----- asm -----
;  413 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[319]    last_s = lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+2)];
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	2,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
; Applied peep: bug1 (gcc does one exg to many)
	addd	2,s	; ,
 tfr d,x
; ORG>	tfr	d,x	; , tmp269
; ORG>	exg	d,x	; , tmp270
; ORG>	addd	2,s	; ,
; ORG>	exg	d,x	; , tmp270
	ldb	_lineYX_yx_s_dy_dx+2,x	; , lineYX_yx_s_dy_dx
	stb	_last_s	; , last_s
L70:
	leas	41,s	; ,,
	puls	y,u,pc	; 
	.globl _addTarget
_addTarget:
	pshs	y,u	; 
	leas	-12,s	; ,,
	stb	3,s	;  x, x
;----- asm -----
;  502 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[378]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x, 0, y);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , D.1571
	ldb	18,s	; , y
	pshs	b	; 
	clr	,-s	; 
	ldb	5,s	; , x
	jsr	_y3d	; 
	ldu	#_lineYX_yx_s_dy_dx	;  tmp51,
	stb	_lineYX_yx_s_dy_dx,y	;  D.1572, lineYX_yx_s_dy_dx
;----- asm -----
;  504 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[379]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x, y) ;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp53
	leay	1,y	;  D.1573,, tmp53
	ldb	20,s	; , y
	pshs	b	; 
	ldb	6,s	; , x
	jsr	_x3d	; 
	stb	3,s	; , D.1574
	tfr	u,d	;  tmp51,
	leax	d,y	;  tmp55,, D.1573
	ldb	3,s	; , D.1574
	stb	,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  506 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[380]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x+1, 0, y+1)- (y3d(x, 0, y));
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp56
	leay	3,y	;  D.1575,, tmp56
	ldb	21,s	; , y
	incb	; 
	stb	7,s	; , D.1576
	ldb	6,s	; , x
	incb	; 
	stb	8,s	; , D.1577
	ldb	7,s	; , D.1576
	pshs	b	; 
	clr	,-s	; 
	ldb	10,s	; , D.1577
	jsr	_y3d	; 
	stb	11,s	; , D.1578
	ldb	23,s	; , y
	pshs	b	; 
	clr	,-s	; 
	ldb	10,s	; , x
	jsr	_y3d	; 
	stb	7,s	; , D.1579
	tfr	u,d	;  tmp51,
	leax	d,y	;  tmp58,, D.1575
	ldb	13,s	;  tmp59, D.1578
	subb	7,s	;  tmp59, D.1579
	stb	,x	;  tmp59, lineYX_yx_s_dy_dx
;----- asm -----
;  508 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[381]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x+1, y+1)- (x3d(x, y)) ;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp60
	leay	4,y	;  D.1581,, tmp60
	ldb	11,s	; , D.1576
	pshs	b	; 
	ldb	13,s	; , D.1577
	jsr	_x3d	; 
	stb	15,s	; , D.1582
	leas	8,s	; ,,
	ldb	18,s	; , y
	pshs	b	; 
	ldb	4,s	; , x
	jsr	_x3d	; 
	stb	1,s	; , D.1583
	tfr	u,d	;  tmp51,
	leax	d,y	;  tmp62,, D.1581
	ldb	8,s	;  tmp63, D.1582
	subb	1,s	;  tmp63, D.1583
	stb	,x	;  tmp63, lineYX_yx_s_dy_dx
;----- asm -----
;  510 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[382]    checkHalfling();
;  0 "" 2
;--- end asm ---
	jsr	_checkHalfling	; 
;----- asm -----
;  513 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[384]    lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	incb	; 
	stb	9,s	; , lineCount.34
	stb	_lineCount	; , lineCount
;----- asm -----
;  517 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[387]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x+1, 0, y);
;  0 "" 2
;--- end asm ---
	ldb	19,s	; , y
	pshs	b	; 
	clr	,-s	; 
	ldb	8,s	; , D.1577
	jsr	_y3d	; 
	stb	12,s	; , D.1586
	ldb	11,s	; , lineCount.34
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	4,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	ldy	4,s	; ,
	leax	d,y	;  tmp68, tmp67,
	exg	d,u	; , tmp51
	leax	d,x	;  tmp69,, tmp69
	exg	d,u	; , tmp51
	ldb	12,s	; , D.1586
	stb	,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  519 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[388]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x+1, y) ;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp70
	leay	1,y	;  temp.242,, tmp70
	ldb	21,s	; , y
	pshs	b	; 
	ldb	9,s	; , D.1577
	jsr	_x3d	; 
	stb	4,s	; , D.1587
	tfr	u,d	;  tmp51,
	leax	d,y	;  tmp72,, temp.242
	ldb	4,s	; , D.1587
	stb	,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  521 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[389]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x, 0, y+1)- (y3d(x+1, 0, y));
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp73
	leay	3,y	;  temp.246,, tmp73
	ldb	8,s	; , D.1576
	pshs	b	; 
	clr	,-s	; 
	ldb	9,s	; , x
	jsr	_y3d	; 
	stb	16,s	; , D.1588
	ldb	24,s	; , y
	pshs	b	; 
	clr	,-s	; 
	ldb	13,s	; , D.1577
	jsr	_y3d	; 
	stb	8,s	; , D.1589
	tfr	u,d	;  tmp51,
	leax	d,y	;  tmp75,, temp.246
	ldb	18,s	;  tmp76, D.1588
	subb	8,s	;  tmp76, D.1589
	stb	,x	;  tmp76, lineYX_yx_s_dy_dx
;----- asm -----
;  523 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[390]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x, y+1)- (x3d(x+1, y))  ;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp77
	leay	4,y	;  temp.250,, tmp77
	leas	8,s	; ,,
	ldb	4,s	; , D.1576
	pshs	b	; 
	ldb	4,s	; , x
	jsr	_x3d	; 
	stb	12,s	; , D.1591
	ldb	19,s	; , y
	pshs	b	; 
	ldb	7,s	; , D.1577
	jsr	_x3d	; 
	stb	2,s	; , D.1592
	tfr	u,d	;  tmp51,
	leax	d,y	;  tmp79,, temp.250
	ldb	13,s	;  tmp80, D.1591
	subb	2,s	;  tmp80, D.1592
	stb	,x	;  tmp80, lineYX_yx_s_dy_dx
;----- asm -----
;  525 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[391]    checkHalfling();
;  0 "" 2
;--- end asm ---
	jsr	_checkHalfling	; 
;----- asm -----
;  528 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[393]    lineCount++;
;  0 "" 2
;--- end asm ---
	inc	_lineCount	;  lineCount
	leas	14,s	; ,,
	puls	y,u,pc	; 
	.globl _initSwatches
_initSwatches:
	pshs	y,u	; 
	leas	-2,s	; ,,
;----- asm -----
;  641 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[467]    for (uint8_t i = 0; i < sizeof(swatchesOn); i++) {
;  0 "" 2
;--- end asm ---
	ldx	#_swatchesOn	;  ivtmp.285,
L74:
;----- asm -----
;  643 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[468]        swatchesOn[i] = 0;
;  0 "" 2
;--- end asm ---
	clr	,x+	;  swatchesOn
	cmpx	#_swatchesOn+19	;cmphi:	;  ivtmp.285,
	bne	L74	; 
;----- asm -----
;  647 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[471]    long int index;
;  0 "" 2
;  649 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[472]    int8_t x = 0;
;  0 "" 2
;  651 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[473]    int8_t y = 0;
;  0 "" 2
;  653 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[474]    const char* geometry = level->geometry;
;  0 "" 2
;  655 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[475]    for (y = 0; y < LEVEL_HEIGHT; y++) {
;  0 "" 2
;--- end asm ---
	ldy	[_level]	;  ivtmp.277, <variable>.geometry
	clr	1,s	;  y
L78:
;----- asm -----
;  657 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[476]        for (x = 0; x < LEVEL_WIDTH; x++) {
;  0 "" 2
;--- end asm ---
	leau	,y	;  ivtmp.286, ivtmp.277
	clr	,s	;  x
L77:
;----- asm -----
;  659 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[477]            index = (long int) y*LEVEL_WIDTH + (long int)x;
;  0 "" 2
;  661 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[478]            char c0 = geometry[index];
;  0 "" 2
;--- end asm ---
	ldb	,u	;  c0,* ivtmp.286
;----- asm -----
;  663 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[479]            if (c0 == 'k' || c0 == 'q') {
;  0 "" 2
;--- end asm ---
	cmpb	#107	;cmpqi:	;  c0,
	beq	L75	; 
	cmpb	#113	;cmpqi:	;  c0,
	bne	L76	; 
L75:
;----- asm -----
;  665 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[480]                setSwatchField(x, y, 1);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	,-s	; ,
	ldb	2,s	; , y
	pshs	b	; 
	ldb	2,s	; , x
	jsr	_setSwatchField	; 
	leas	2,s	; ,,
L76:
	inc	,s	;  x
	leau	1,u	;  ivtmp.286,, ivtmp.286
	ldb	,s	; , x
	cmpb	#10	;cmpqi:	; ,
	bne	L77	; 
	inc	1,s	;  y
	leay	10,y	;  ivtmp.277,, ivtmp.277
	ldb	1,s	; , y
	cmpb	#15	;cmpqi:	; ,
	lbne	L78	; 
	leas	2,s	; ,,
	puls	y,u,pc	; 
LC0:
	.byte	0x54
	.byte	0x4F
	.byte	0x4F
	.byte	0x20
	.byte	0x4D
	.byte	0x41
	.byte	0x4E
	.byte	0x59
	.byte	0x20
	.byte	0x4C
	.byte	0x49
	.byte	0x4E
	.byte	0x45
	.byte	0x53
	.byte	0x80
	.byte	0x00
	.globl _addSplit
_addSplit:
	pshs	y,u	; 
	leas	-6,s	; ,,
	stb	1,s	;  x0, x0
;----- asm -----
;  457 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[349]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x0, 0, y0) + 3;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , D.1528
	ldb	12,s	; , y0
	pshs	b	; 
	clr	,-s	; 
	ldb	3,s	; , x0
	jsr	_y3d	; 
	ldu	#_lineYX_yx_s_dy_dx	;  tmp41,
	addb	#3	;  D.1529,
	stb	_lineYX_yx_s_dy_dx,y	;  D.1529, lineYX_yx_s_dy_dx
;----- asm -----
;  459 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[350]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x0, y0) + 6;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp43
	leay	1,y	;  D.1531,, tmp43
	ldb	14,s	; , y0
	pshs	b	; 
	ldb	4,s	; , x0
	jsr	_x3d	; 
	stb	3,s	; , D.1532
	tfr	u,d	;  tmp41,
	leax	d,y	;  tmp45,, D.1531
	ldb	3,s	; , D.1532
	addb	#6	; ,
	stb	,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  461 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[351]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x0, 0, y0 + 1)+0- (y3d(x0, 0, y0)+3);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp46
	leay	3,y	;  D.1534,, tmp46
	ldb	15,s	; , y0
	incb	; 
	stb	5,s	; , D.1535
	pshs	b	; 
	clr	,-s	; 
	ldb	6,s	; , x0
	jsr	_y3d	; 
	stb	8,s	; , D.1536
	ldb	17,s	; , y0
	pshs	b	; 
	clr	,-s	; 
	ldb	8,s	; , x0
	jsr	_y3d	; 
	stb	11,s	; , D.1537
	tfr	u,d	;  tmp41,
	leax	d,y	;  tmp48,, D.1534
	ldb	10,s	;  tmp49, D.1536
	addb	#-3	;  tmp49,
	subb	11,s	;  tmp50, D.1537
	stb	,x	;  tmp50, lineYX_yx_s_dy_dx
;----- asm -----
;  463 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[352]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x0, y0 + 1)+8- (x3d(x0, y0)+6);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp51
	leay	4,y	;  D.1540,, tmp51
	ldb	9,s	; , D.1535
	pshs	b	; 
	ldb	9,s	; , x0
	jsr	_x3d	; 
	stb	13,s	; , D.1541
	leas	8,s	; ,,
	ldb	12,s	; , y0
	pshs	b	; 
	ldb	2,s	; , x0
	jsr	_x3d	; 
	stb	1,s	; , D.1543
	tfr	u,d	;  tmp41,
	leax	d,y	;  tmp53,, D.1540
	ldb	6,s	;  tmp55, D.1541
	subb	1,s	;  tmp55, D.1543
	addb	#2	;  tmp55,
	stb	,x	;  tmp55, lineYX_yx_s_dy_dx
;----- asm -----
;  466 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[354]    checkHalfling();
;  0 "" 2
;--- end asm ---
	jsr	_checkHalfling	; 
;----- asm -----
;  468 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[355]    lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	;  lineCount.32, lineCount
	incb	;  lineCount.32
	stb	_lineCount	;  lineCount.32, lineCount
;----- asm -----
;  470 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[356]    if (lineCount >= MAX_LINES) {
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
	cmpb	#109	;cmpqi:	;  lineCount.32,
	bls	L85	; 
;----- asm -----
;  472 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[357]        runtimeError("TOO MANY LINES�");
;  0 "" 2
;--- end asm ---
	ldx	#LC0	; ,
	jsr	_runtimeError	; 
L85:
	leas	6,s	; ,,
	puls	y,u,pc	; 
	.globl _addLineImpl
_addLineImpl:
	pshs	y,u	; 
	leas	-6,s	; ,,
	stb	1,s	;  x0, x0
;----- asm -----
;  420 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[325]    if (half) 
;  0 "" 2
;--- end asm ---
	tst	15,s	;  half
	lbeq	L87	; 
;----- asm -----
;  423 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[327]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x0, 0, y0)+4;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , D.1495
	ldb	12,s	; , y0
	pshs	b	; 
	clr	,-s	; 
	ldb	3,s	; , x0
	jsr	_y3d	; 
	ldu	#_lineYX_yx_s_dy_dx	;  tmp53,
	addb	#4	;  D.1496,
	stb	_lineYX_yx_s_dy_dx,y	;  D.1496, lineYX_yx_s_dy_dx
;----- asm -----
;  425 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[328]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x0, y0)  -1;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp55
	leay	1,y	;  D.1498,, tmp55
	ldb	14,s	; , y0
	pshs	b	; 
	ldb	4,s	; , x0
	jsr	_x3d	; 
	stb	3,s	; , D.1499
	tfr	u,d	;  tmp53,
	leax	d,y	;  tmp57,, D.1498
	ldb	3,s	; , D.1499
	decb	; 
	stb	,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  427 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[329]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x1, 0, y1)+3- (y3d(x0, 0, y0)+4);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp58
	leay	3,y	;  D.1501,, tmp58
	ldb	17,s	; , y1
	pshs	b	; 
	clr	,-s	; 
	ldb	18,s	; , x1
	jsr	_y3d	; 
	stb	7,s	; , D.1502
	ldb	17,s	; , y0
	pshs	b	; 
	clr	,-s	; 
	ldb	8,s	; , x0
	jsr	_y3d	; 
	stb	7,s	; , D.1504
	tfr	u,d	;  tmp53,
	leax	d,y	;  tmp60,, D.1501
	ldb	7,s	;  tmp62, D.1504
	comb	;  tmp62
	addb	9,s	;  tmp62, D.1502
	stb	,x	;  tmp62, lineYX_yx_s_dy_dx
;----- asm -----
;  429 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[330]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x1, y1)-6- (x3d(x0, y0)-1);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp63
	leay	4,y	;  D.1507,, tmp63
	ldb	21,s	; , y1
	pshs	b	; 
	ldb	21,s	; , x1
	jsr	_x3d	; 
	stb	11,s	; , D.1508
	leas	8,s	; ,,
	ldb	12,s	; , y0
	pshs	b	; 
	ldb	2,s	; , x0
	jsr	_x3d	; 
	stb	1,s	; , D.1510
	tfr	u,d	;  tmp53,
	leax	d,y	;  tmp65,, D.1507
	ldb	4,s	;  tmp67, D.1508
	subb	1,s	;  tmp67, D.1510
	addb	#-5	;  tmp67,
	stb	,x	;  tmp67, lineYX_yx_s_dy_dx
	leas	1,s	; ,,
	jmp	L88	; 
L87:
;----- asm -----
;  434 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[334]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)] = y3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , temp.318
	ldb	12,s	; , y0
	pshs	b	; 
	clr	,-s	; 
	ldb	3,s	; , x0
	jsr	_y3d	; 
	ldu	#_lineYX_yx_s_dy_dx	;  tmp68,
	stb	_lineYX_yx_s_dy_dx,y	;  D.1513, lineYX_yx_s_dy_dx
;----- asm -----
;  436 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[335]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)] = x3d(x0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp70
	leay	1,y	;  temp.322,, tmp70
	ldb	14,s	; , y0
	pshs	b	; 
	ldb	4,s	; , x0
	jsr	_x3d	; 
	stb	3,s	; , D.1514
	tfr	u,d	;  tmp68,
	leax	d,y	;  tmp72,, temp.322
	ldb	3,s	; , D.1514
	stb	,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  438 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[336]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+3)] = y3d(x1, 0, y1)- y3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp73
	leay	3,y	;  temp.326,, tmp73
	ldb	17,s	; , y1
	pshs	b	; 
	clr	,-s	; 
	ldb	18,s	; , x1
	jsr	_y3d	; 
	stb	9,s	; , D.1515
	ldb	17,s	; , y0
	pshs	b	; 
	clr	,-s	; 
	ldb	8,s	; , x0
	jsr	_y3d	; 
	stb	7,s	; , D.1516
	tfr	u,d	;  tmp68,
	leax	d,y	;  tmp75,, temp.326
	ldb	11,s	;  tmp76, D.1515
	subb	7,s	;  tmp76, D.1516
	stb	,x	;  tmp76, lineYX_yx_s_dy_dx
;----- asm -----
;  440 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[337]        lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+4)] = x3d(x1, y1)- x3d(x0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp77
	leay	4,y	;  temp.330,, tmp77
	ldb	21,s	; , y1
	pshs	b	; 
	ldb	21,s	; , x1
	jsr	_x3d	; 
	stb	13,s	; , D.1518
	leas	8,s	; ,,
	ldb	12,s	; , y0
	pshs	b	; 
	ldb	2,s	; , x0
	jsr	_x3d	; 
	stb	1,s	; , D.1519
	tfr	u,d	;  tmp68,
	leax	d,y	;  tmp79,, temp.330
	ldb	6,s	;  tmp80, D.1518
	subb	1,s	;  tmp80, D.1519
	stb	,x	;  tmp80, lineYX_yx_s_dy_dx
	leas	1,s	; ,,
L88:
;----- asm -----
;  443 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[339]    checkHalfling();
;  0 "" 2
;--- end asm ---
	jsr	_checkHalfling	; 
;----- asm -----
;  446 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[341]    lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	;  lineCount.30, lineCount
	incb	;  lineCount.30
	stb	_lineCount	;  lineCount.30, lineCount
;----- asm -----
;  448 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[342]    if (lineCount >= MAX_LINES) {
;  0 "" 2
;--- end asm ---
	cmpb	#109	;cmpqi:	;  lineCount.30,
	bls	L90	; 
;----- asm -----
;  450 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[343]        runtimeError("TOO MANY LINES�");
;  0 "" 2
;--- end asm ---
	ldx	#LC0	; ,
	jsr	_runtimeError	; 
L90:
	leas	6,s	; ,,
	puls	y,u,pc	; 
	.globl _addLine
_addLine:
	leas	-5,s	; ,,
	stb	,s	;  x0, x0
;----- asm -----
;  479 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[363]    int test = 8; // 9 is ok, 10 is too wide!
;  0 "" 2
;  481 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[364]    while (x1 - x0 > test) {
;  0 "" 2
;--- end asm ---
	ldb	8,s	;  D.1562, x1
	subb	,s	;  D.1562, x0
	cmpb	#8	;cmpqi:	;  D.1562,
	ble	L92	; 
	stb	2,s	;  D.1562, ivtmp.352
L94:
;----- asm -----
;  483 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[365]        addLineImpl(x0, y0, x0 + test, y1, half);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , x0
	addb	#8	; ,
	stb	3,s	; , x0.353
	ldb	10,s	; , half
	pshs	b	; 
	ldb	10,s	; , y1
	pshs	b	; 
	ldb	5,s	; , x0.353
	pshs	b	; 
	ldb	10,s	; , y0
	pshs	b	; 
	ldb	4,s	; , x0
	jsr	_addLineImpl	; 
;----- asm -----
;  485 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[366]        x0 += test;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , ivtmp.352
	addb	#-8	; ,
	stb	6,s	; , ivtmp.352
	leas	4,s	; ,,
	cmpb	#8	;cmpqi:	; ,
	ble	L93	; 
	ldb	3,s	; , x0.353
	stb	,s	; , x0
	bra	L94	; 
L93:
	ldb	3,s	; , x0.353
	stb	,s	; , x0
L92:
;----- asm -----
;  488 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[368]    while (y1 - y0 > test) {
;  0 "" 2
;--- end asm ---
	ldb	9,s	;  D.1564, y1
	subb	7,s	;  D.1564, y0
	cmpb	#8	;cmpqi:	;  D.1564,
	ble	L95	; 
	stb	1,s	;  D.1564, ivtmp.344
L97:
;----- asm -----
;  490 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[369]        addLineImpl(x0, y0, x1, y0 + test, half);
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , y0
	addb	#8	; ,
	stb	4,s	; , y0.354
	ldb	10,s	; , half
	pshs	b	; 
	ldb	5,s	; , y0.354
	pshs	b	; 
	ldb	10,s	; , x1
	pshs	b	; 
	ldb	10,s	; , y0
	pshs	b	; 
	ldb	4,s	; , x0
	jsr	_addLineImpl	; 
;----- asm -----
;  492 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[370]        y0 += test;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , ivtmp.344
	addb	#-8	; ,
	stb	5,s	; , ivtmp.344
	leas	4,s	; ,,
	cmpb	#8	;cmpqi:	; ,
	ble	L96	; 
	ldb	4,s	; , y0.354
	stb	7,s	; , y0
	bra	L97	; 
L96:
	ldb	4,s	; , y0.354
	stb	7,s	; , y0
L95:
;----- asm -----
;  495 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[372]    addLineImpl(x0, y0, x1, y1, half);
;  0 "" 2
;--- end asm ---
	ldb	10,s	; , half
	pshs	b	; 
	ldb	10,s	; , y1
	pshs	b	; 
	ldb	10,s	; , x1
	pshs	b	; 
	ldb	10,s	; , y0
	pshs	b	; 
	ldb	4,s	; , x0
	jsr	_addLineImpl	; 
	leas	9,s	; ,,
	rts
	.globl _setupY
_setupY:
	leas	-5,s	; ,,
;----- asm -----
;  608 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[446]    int8_t x = 0;
;  0 "" 2
;  610 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[447]    int8_t y = 0;
;  0 "" 2
;  612 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[448]    for (x = -1; x < LEVEL_WIDTH; x++) {
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	1,s	; , x
L105:
;----- asm -----
;  614 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[449]        int8_t y0 = -1;
;  0 "" 2
;  616 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[450]        int8_t y1 = -1;
;  0 "" 2
;  618 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[451]        for (y = 0; y <= LEVEL_HEIGHT; y++) {
;  0 "" 2
;--- end asm ---
	clr	2,s	;  y
	ldb	#-1	; ,
	stb	3,s	; , y0
	stb	4,s	; , y1
L104:
;----- asm -----
;  620 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[452]            if (isField(x, y) || isField(x + 1, y)) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y
	pshs	b	; 
	ldb	2,s	; , x
	jsr	_isField	; 
	leas	1,s	; ,,
	tstb	;  D.1638
	bne	L100	; 
	ldb	1,s	; , x
	incb	; 
	stb	,s	; , D.1639
	ldb	2,s	; , y
	pshs	b	; 
	ldb	1,s	; , D.1639
	jsr	_isField	; 
	leas	1,s	; ,,
	tstb	;  D.1640
	beq	L101	; 
L100:
;----- asm -----
;  622 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[453]                if (y0 < 0) y0 = y;
;  0 "" 2
;--- end asm ---
	tst	3,s	;  y0
	bge	L102	; 
	ldb	2,s	; , y
	stb	3,s	; , y0
L102:
;----- asm -----
;  624 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[454]                y1 = y;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y
	stb	4,s	; , y1
	bra	L103	; 
L101:
;----- asm -----
;  627 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[456]                if (y0 >= 0) {
;  0 "" 2
;--- end asm ---
	tst	3,s	;  y0
	blt	L103	; 
;----- asm -----
;  629 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[457]                    addLine(x + 1, y0, x + 1, y1 + 1, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	5,s	; , y1
	incb	; 
	pshs	b	; 
	ldb	2,s	; , D.1639
	pshs	b	; 
	ldb	6,s	; , y0
	pshs	b	; 
	ldb	4,s	; , D.1639
	jsr	_addLine	; 
;----- asm -----
;  631 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[458]                    y0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	7,s	; , y0
	leas	4,s	; ,,
L103:
	inc	2,s	;  y
	ldb	2,s	; , y
	cmpb	#16	;cmpqi:	; ,
	lbne	L104	; 
	inc	1,s	;  x
	ldb	1,s	; , x
	cmpb	#10	;cmpqi:	; ,
	lbne	L105	; 
	leas	5,s	; ,,
	rts
	.globl _setupX
_setupX:
	pshs	y,u	; 
	leas	-7,s	; ,,
;----- asm -----
;  541 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[405]    long int index;
;  0 "" 2
;  543 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[406]    int8_t x = 0;
;  0 "" 2
;  545 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[407]    int8_t y = 0;
;  0 "" 2
;  547 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[408]    const char* geometry = level->geometry;
;  0 "" 2
;  549 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[409]    for (y = -1; y < LEVEL_HEIGHT; y++) {
;  0 "" 2
;--- end asm ---
	ldx	[_level]	; , <variable>.geometry
	leay	-10,x	;  ivtmp.399,,
	clr	6,s	;  ivtmp.393
L122:
	ldb	6,s	; , ivtmp.393
	decb	; 
	stb	2,s	; , y
;----- asm -----
;  551 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[410]        int8_t x0 = -1;
;  0 "" 2
;  553 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[411]        int8_t x1 = -1;
;  0 "" 2
;  555 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[412]        for (x = 0; x <= LEVEL_WIDTH; x++) {
;  0 "" 2
;--- end asm ---
	leau	,y	;  ivtmp.402, ivtmp.399
	ldb	#-1	; ,
	stb	3,s	; , x0
	stb	4,s	; , x1
	ldb	#1	; ,
	stb	5,s	; , ivtmp.391
L121:
	ldb	5,s	; , ivtmp.391
	decb	; 
	stb	1,s	; , x
;----- asm -----
;  557 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[413]            char c0 = 0;
;  0 "" 2
;  559 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[414]            index = (long int) y*LEVEL_WIDTH + (long int)x;
;  0 "" 2
;  561 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[415]            if (y >= 0 && x < LEVEL_WIDTH) {
;  0 "" 2
;--- end asm ---
	tst	2,s	;  y
	blt	L110	; 
	cmpb	#9	;cmpqi:	; ,
	bgt	L110	; 
;----- asm -----
;  563 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[416]                c0 = geometry[index];
;  0 "" 2
;--- end asm ---
	ldb	,u	;  c0,* ivtmp.402
	bra	L111	; 
L110:
	clrb	;  c0
L111:
;----- asm -----
;  566 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[418]            if (c0 == 'e') {
;  0 "" 2
;--- end asm ---
	cmpb	#101	;cmpqi:	;  c0,
	bne	L112	; 
;----- asm -----
;  568 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[419]                addTarget(x, y);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y
	pshs	b	; 
	ldb	2,s	; , x
	jsr	_addTarget	; 
;----- asm -----
;  570 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[420]                endX = x;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , x
	stb	_endX	; , endX
;----- asm -----
;  572 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[421]                endY = y;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , y
	stb	_endY	; , endY
	leas	1,s	; ,,
	jmp	L113	; 
L112:
	cmpb	#118	;cmpqi:	;  c0,
	bne	L114	; 
;----- asm -----
;  575 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[423]                addSplit(x, y);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y
	pshs	b	; 
	ldb	2,s	; , x
	jsr	_addSplit	; 
	leas	1,s	; ,,
	jmp	L113	; 
L114:
	cmpb	#115	;cmpqi:	;  c0,
	bne	L115	; 
;----- asm -----
;  578 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[425]                addLine(x, y, x + 1, y + 1, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	7,s	; , ivtmp.393
	pshs	b	; 
	ldb	7,s	; , ivtmp.391
	pshs	b	; 
	ldb	5,s	; , y
	pshs	b	; 
	ldb	5,s	; , x
	jsr	_addLine	; 
	leas	4,s	; ,,
	bra	L113	; 
L115:
	cmpb	#104	;cmpqi:	;  c0,
	bne	L116	; 
;----- asm -----
;  581 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[427]                addLine(x + 1, y, x, y + 1, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	7,s	; , ivtmp.393
	pshs	b	; 
	ldb	3,s	; , x
	pshs	b	; 
	ldb	5,s	; , y
	pshs	b	; 
	ldb	9,s	; , ivtmp.391
	jsr	_addLine	; 
	leas	4,s	; ,,
	bra	L113	; 
L116:
	cmpb	#102	;cmpqi:	;  c0,
	bne	L113	; 
;----- asm -----
;  584 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[429]                addLine(x, y, x + 1, y, 1);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	,-s	; ,
	ldb	3,s	; , y
	pshs	b	; 
	ldb	7,s	; , ivtmp.391
	pshs	b	; 
	ldb	5,s	; , y
	pshs	b	; 
	ldb	5,s	; , x
	jsr	_addLine	; 
	leas	4,s	; ,,
L113:
;----- asm -----
;  587 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[431]            if (isField(x, y) || isField(x, y + 1)) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y
	pshs	b	; 
	ldb	2,s	; , x
	jsr	_isField	; 
	leas	1,s	; ,,
	tstb	;  D.1620
	bne	L117	; 
	ldb	6,s	; , ivtmp.393
	stb	,s	; , D.1615
	pshs	b	; 
	ldb	2,s	; , x
	jsr	_isField	; 
	leas	1,s	; ,,
	tstb	;  D.1621
	beq	L118	; 
L117:
;----- asm -----
;  589 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[432]                if (x0 < 0) x0 = x;
;  0 "" 2
;--- end asm ---
	tst	3,s	;  x0
	bge	L119	; 
	ldb	1,s	; , x
	stb	3,s	; , x0
L119:
;----- asm -----
;  591 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[433]                x1 = x;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , x
	stb	4,s	; , x1
	bra	L120	; 
L118:
;----- asm -----
;  594 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[435]                if (x0 >= 0) {
;  0 "" 2
;--- end asm ---
	tst	3,s	;  x0
	blt	L120	; 
;----- asm -----
;  596 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[436]                    addLine(x0, y + 1, x1 + 1, y + 1, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	1,s	; , D.1615
	pshs	b	; 
	ldb	6,s	; , x1
	incb	; 
	pshs	b	; 
	ldb	3,s	; , D.1615
	pshs	b	; 
	ldb	7,s	; , x0
	jsr	_addLine	; 
;----- asm -----
;  598 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[437]                    x0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	7,s	; , x0
	leas	4,s	; ,,
L120:
	inc	5,s	;  ivtmp.391
	leau	1,u	;  ivtmp.402,, ivtmp.402
	ldb	5,s	; , ivtmp.391
	cmpb	#12	;cmpqi:	; ,
	lbne	L121	; 
	inc	6,s	;  ivtmp.393
	leay	10,y	;  ivtmp.399,, ivtmp.399
	ldb	6,s	; , ivtmp.393
	cmpb	#16	;cmpqi:	; ,
	lbne	L122	; 
	leas	7,s	; ,,
	puls	y,u,pc	; 
	.globl _initLevel
_initLevel:
	pshs	u	; 
;----- asm -----
;  674 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[488]    last_x=-1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	_last_x	; , last_x
;----- asm -----
;  676 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[489]    last_y=-1;
;  0 "" 2
;--- end asm ---
	stb	_last_y	; , last_y
;----- asm -----
;  678 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[490]    last_s=-1;
;  0 "" 2
;--- end asm ---
	stb	_last_s	; , last_s
;----- asm -----
;  680 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[491]    lineCount = 0;
;  0 "" 2
;--- end asm ---
	clr	_lineCount	;  lineCount
;----- asm -----
;  682 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[492]    setupX();
;  0 "" 2
;--- end asm ---
	jsr	_setupX	; 
;----- asm -----
;  684 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[493]    last_x=-1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	_last_x	; , last_x
;----- asm -----
;  686 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[494]    last_y=-1;
;  0 "" 2
;--- end asm ---
	stb	_last_y	; , last_y
;----- asm -----
;  688 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[495]    last_s=-1;
;  0 "" 2
;--- end asm ---
	stb	_last_s	; , last_s
;----- asm -----
;  692 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[498]    setupY();
;  0 "" 2
;--- end asm ---
	jsr	_setupY	; 
;----- asm -----
;  694 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[499]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+1)]=0;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , D.1672
	leax	_lineYX_yx_s_dy_dx,x	;  tmp29,, D.1672
	clr	1,x	;  lineYX_yx_s_dy_dx
;----- asm -----
;  696 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[500]    lineYX_yx_s_dy_dx[(uint16_t) ((uint16_t)(lineCount)*5+0)]=0;
;  0 "" 2
;--- end asm ---
	clr	,x	;  lineYX_yx_s_dy_dx
	puls	u,pc	; 
	.globl _swatchSwitch
_swatchSwitch:
	pshs	u	; 
	leas	-7,s	; ,,
	stb	2,s	;  x, x
;----- asm -----
;  108 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[91]    for (uint8_t i = 0; i < level->swatches_count; i++) {
;  0 "" 2
;--- end asm ---
	ldx	_level	;  level.6, level
	tst	4,x	;  <variable>.swatches_count
	lbeq	L129	; 
	clr	3,s	;  i
L140:
;----- asm -----
;  110 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[92]        const struct Swatch* swatch = level->swatches[i];
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , i
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	leax	d,x	;  tmp43, tmp42, level.6
	ldu	5,x	;  swatch, <variable>.swatches
;----- asm -----
;  112 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[93]        if (swatch->position.x == x && swatch->position.y == y) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , x
	cmpb	1,u	;cmpqi:(R)	; , <variable>.position.x
	lbne	L130	; 
	ldb	11,s	; , y
	cmpb	2,u	;cmpqi:(R)	; , <variable>.position.y
	lbne	L130	; 
;----- asm -----
;  114 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[94]            for (uint8_t j = 0; j < swatch->fields_count; j++) {
;  0 "" 2
;--- end asm ---
	tst	3,u	;  <variable>.fields_count
	lbeq	L130	; 
	clr	4,s	;  j
L139:
;----- asm -----
;  116 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[95]                const struct SwatchField* field = swatch->fields[j];
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , j
	clra		;zero_extendqihi: R:b -> R:d	; ,
	addd	#2	;  tmp46,
	aslb	; 
	rola	; 
	leax	d,u	;  tmp48, tmp47, swatch
	ldx	,x	;  field, <variable>.fields
;----- asm -----
;  118 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[96]                int8_t xf = field->position.x;
;  0 "" 2
;--- end asm ---
	ldb	1,x	; , <variable>.position.x
	stb	5,s	; , xf
;----- asm -----
;  120 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[97]                int8_t yf = field->position.y;
;  0 "" 2
;--- end asm ---
	ldb	2,x	; , <variable>.position.y
	stb	6,s	; , yf
;----- asm -----
;  122 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[98]                switch (field->action) {
;  0 "" 2
;--- end asm ---
	ldb	,x	; , <variable>.action
	cmpb	#4	;cmpqi:	; ,
	lbhi	L131	; 
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp51
	jmp	[L137,x]	; , tmp51
L137:
	.word L132
	.word L133
	.word L134
	.word L135
	.word L136
L132:
;----- asm -----
;  126 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[100]                    setSwatchField(xf, yf, !isSwatchFieldOn(xf, yf));
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , yf
	pshs	b	; 
	ldb	6,s	; , xf
	jsr	_isSwatchFieldOn	; 
	tstb	;  D.1386
	clra		;zero_extendqihi: R:b -> R:d	;  D.1386, tmp55
	addd	#-1	;  tmp56,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	pshs	b	;  tmp54
	ldb	8,s	; , yf
	pshs	b	; 
	ldb	8,s	; , xf
	jsr	_setSwatchField	; 
;----- asm -----
;  128 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[101]                    break;
;  0 "" 2
;--- end asm ---
	leas	3,s	; ,,
	jmp	L131	; 
L133:
;----- asm -----
;  132 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[103]                    setSwatchField(xf, yf, 1);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	,-s	; ,
	ldb	7,s	; , yf
	pshs	b	; 
	ldb	7,s	; , xf
	jsr	_setSwatchField	; 
;----- asm -----
;  134 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[104]                    break;
;  0 "" 2
;--- end asm ---
	leas	2,s	; ,,
	jmp	L131	; 
L134:
;----- asm -----
;  138 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[106]                    setSwatchField(xf, yf, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	7,s	; , yf
	pshs	b	; 
	ldb	7,s	; , xf
	jsr	_setSwatchField	; 
;----- asm -----
;  140 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[107]                    break;
;  0 "" 2
;--- end asm ---
	leas	2,s	; ,,
	bra	L131	; 
L135:
;----- asm -----
;  144 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[109]                    blockX = xf;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , xf
	stb	_blockX	; , blockX
;----- asm -----
;  146 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[110]                    blockY = yf;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , yf
	stb	_blockY	; , blockY
;----- asm -----
;  148 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[111]                    setSplitMode();
;  0 "" 2
;--- end asm ---
	jsr	_setSplitMode	; 
;----- asm -----
;  150 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[112]                    break;
;  0 "" 2
;--- end asm ---
	bra	L131	; 
L136:
;----- asm -----
;  154 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[114]                    blockX2 = xf;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , xf
	stb	_blockX2	; , blockX2
;----- asm -----
;  156 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[115]                    blockY2 = yf;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , yf
	stb	_blockY2	; , blockY2
;----- asm -----
;  158 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[116]                    break;
;  0 "" 2
;--- end asm ---
L131:
	inc	4,s	;  j
	ldb	4,s	; , j
	cmpb	3,u	;cmpqi:(R)	; , <variable>.fields_count
	lblo	L139	; 
L130:
	inc	3,s	;  i
	ldx	_level	;  level.6, level
	ldb	3,s	; , i
	cmpb	4,x	;cmpqi:(R)	; , <variable>.swatches_count
	lblo	L140	; 
L129:
;----- asm -----
;  164 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[121]    initLevel();
;  0 "" 2
;--- end asm ---
	jsr	_initLevel	; 
	leas	7,s	; ,,
	puls	u,pc	; 
	.globl _lineCount
	.area .data
_lineCount:
	.byte	0	;skip space
	.globl _endX
_endX:
	.byte	0	;skip space
	.globl _endY
_endY:
	.byte	0	;skip space
	.globl _levelNumber
_levelNumber:
	.byte	0	;skip space
	.globl _shifts
	.area .text
_shifts:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.globl _last_x
	.area .data
_last_x:
	.byte	-1
	.globl _last_y
_last_y:
	.byte	-1
	.globl _last_s
_last_s:
	.byte	-1
	.globl _useHalfling
	.area .text
_useHalfling:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	3
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.word	0	;skip space 5
	.word	0	;skip space 3
	.byte	0	;skip space
	.area .bss
	.globl	_level
_level:	.blkb	2
	.globl	_swatchesOn
_swatchesOn:	.blkb	19
	.globl	_lineYX_yx_s_dy_dx
_lineYX_yx_s_dy_dx:	.blkb	550
