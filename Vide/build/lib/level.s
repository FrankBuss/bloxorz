;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	level.enr.c
;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
; 	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.2.
;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
;  -fno-time-report -IC:\data\Vide\C\PeerC\vectrex\include -D__RUM_INLINE=1
;  -DOMMIT_FRAMEPOINTER=1 C:\data\Vide\..\bloxorz\Vide\source\level.enr.c
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
;  Compiler executable checksum: c38122f302f7072aed6a431d27122065
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
;  53 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[52]    return shifts[bit];
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
;  59 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[57]    long int index = (long int)y * LEVEL_WIDTH + (long int)x;
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
;  61 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[58]    uint8_t bit = (uint8_t)(index & 7);
;  0 "" 2
;  63 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[59]    index >>= 3;
;  0 "" 2
;  65 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[60]    return (swatchesOn[index] & getShifts(bit)) > 0;
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
	stb	1,s	; , D.1308
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  index, index
	andb	#7	;  tmp38,
	jsr	_getShifts	; 
	andb	1,s	;  tmp40, D.1308
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
;  71 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[65]    long int index = (long int)y * LEVEL_WIDTH + (long int)x;
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
;  73 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[66]    uint8_t bit = (uint8_t)(index & 7);
;  0 "" 2
;--- end asm ---
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  index, index
	andb	#7	;  index,
	stb	2,s	;  index, bit
;----- asm -----
;  75 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[67]    index >>= 3;
;  0 "" 2
;--- end asm ---
	tfr	x,d	;  index, index.79
	asra	; 
	rorb	; 
	asra	; 
	rorb	; 
	asra	; 
	rorb	; 
;----- asm -----
;  77 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[68]    if (on)
;  0 "" 2
;--- end asm ---
	tst	9,s	;  on
	beq	L11	; 
;----- asm -----
;  80 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[70]        swatchesOn[index] |= getShifts(bit);
;  0 "" 2
;--- end asm ---
	ldx	#_swatchesOn	; ,
	leay	d,x	;  tmp41, index.79,
	ldb	,y	; , swatchesOn
	stb	1,s	; , D.1323
	ldb	2,s	; , bit
	jsr	_getShifts	; 
	orb	1,s	;  tmp44, D.1323
	stb	,y	;  tmp44, swatchesOn
	bra	L13	; 
L11:
;----- asm -----
;  85 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[74]        swatchesOn[index] &= ~getShifts(bit);
;  0 "" 2
;--- end asm ---
	ldx	#_swatchesOn	; ,
	leay	d,x	;  tmp46, index.79,
	ldb	,y	; , swatchesOn
	stb	3,s	; , temp.80
	ldb	2,s	; , bit
	jsr	_getShifts	; 
	comb	;  tmp49
	andb	3,s	;  tmp50, temp.80
	stb	,y	;  tmp50, swatchesOn
L13:
	leas	4,s	; ,,
	puls	y,pc	; 
	.globl _isField
_isField:
	leas	-2,s	; ,,
	stb	,s	;  x, x
;----- asm -----
;  92 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[80]    char c = getField(x, y);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , y
	pshs	b	; 
	ldb	1,s	; , x
	jsr	_getField	; 
	leas	1,s	; ,,
	stb	1,s	; , c
;----- asm -----
;  96 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[83]    if (c == 'l' || c == 'r' || c == 'k' || c == 'q')
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
;  99 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[85]        if (isSwatchFieldOn(x, y))
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , y
	pshs	b	; 
	ldb	1,s	; , x
	jsr	_isSwatchFieldOn	; 
	leas	1,s	; ,,
	tstb	;  D.1337
	beq	L16	; 
;----- asm -----
;  102 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[87]            c = 'b';
;  0 "" 2
;--- end asm ---
	ldb	#98	; ,
	stb	1,s	; , c
L16:
;----- asm -----
;  108 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[92]    return (uint8_t)(c == 'b' || c == 'e' || c == 's' || c == 'h' || c == 'f' || c == 'v');
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
;  181 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[137]    x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  183 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[138]    return 14 * x - 6 * z;
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
;  190 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[144]    y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  192 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[145]    return 3 * x + 13 * y + 8 * z;
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
	leas	-36,s	; ,,
;----- asm -----
;  276 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[228]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 2)] = USED_BOARD_SCALE;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	10,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	ldu	10,s	; ,
	leax	d,u	;  tmp110, tmp109,
	ldb	#127	; ,
	stb	_lineYX_yx_s_dy_dx+2,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  279 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[230]    if (useHalfling[levelOffset + levelNumber] == 0)
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.11, levelNumber
	addb	_levelOffset	;  tmp113, levelOffset
	clra		;zero_extendqihi: R:b -> R:d	;  tmp113,
	tfr	d,x	; , tmp114
	tst	_useHalfling,x	;  useHalfling
	bne	L26	; 
;----- asm -----
;  282 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[232]        last_x = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	_last_x	; , last_x
;----- asm -----
;  284 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[233]        last_y = -1;
;  0 "" 2
;--- end asm ---
	stb	_last_y	; , last_y
;----- asm -----
;  286 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[234]        last_s = -1;
;  0 "" 2
;--- end asm ---
	stb	_last_s	; , last_s
;----- asm -----
;  288 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[235]        return;
;  0 "" 2
;--- end asm ---
	jmp	L70	; 
L26:
;----- asm -----
;  293 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[239]    int8_t this_x = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] + lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)];
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,u	; , temp.106
	ldy	#_lineYX_yx_s_dy_dx	;  tmp117,
	tfr	y,d	;  tmp117,
	leax	d,u	;  tmp118,, temp.106
	ldb	1,x	; , lineYX_yx_s_dy_dx
	stb	12,s	; , D.1417
	ldb	4,x	; , lineYX_yx_s_dy_dx
	stb	13,s	; , D.1419
;----- asm -----
;  295 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[240]    int8_t this_y = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] + lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)];
;  0 "" 2
;--- end asm ---
	ldb	,x	; , lineYX_yx_s_dy_dx
	stb	14,s	; , D.1420
	leau	3,u	;  D.1421,, temp.106
	tfr	y,d	;  tmp117,
	leax	d,u	;  tmp126,, D.1421
	ldb	,x	; , lineYX_yx_s_dy_dx
	stb	15,s	; , D.1422
;----- asm -----
;  298 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[242]    HALF_IF_POSSIBLE(REDUX1)
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.13, levelNumber
	ldx	#64	;  iftmp.12,
	cmpb	#14	;cmpqi:	;  levelNumber.13,
	beq	L29	; 
	ldx	#40	;  iftmp.12,
L29:
	ldb	15,s	;  D.1422, D.1422
	bge	L31	; 
	negb	;  D.1422
L31:
	sex		;extendqihi2: R:b -> R:d	;  D.1422, D.1422
	pshs	d	;cmphi: R:d with R:x	;  D.1422, iftmp.12
	cmpx	,s++	;cmphi:	;  iftmp.12
	ble	L30	; 
	ldb	_levelNumber	;  levelNumber.15, levelNumber
	ldx	#64	;  iftmp.14,
	cmpb	#14	;cmpqi:	;  levelNumber.15,
	beq	L33	; 
	ldx	#40	;  iftmp.14,
L33:
	ldb	13,s	;  D.1419, D.1419
	bge	L34	; 
	negb	;  D.1419
L34:
	sex		;extendqihi2: R:b -> R:d	;  D.1419, D.1419
	pshs	d	;cmphi: R:d with R:x	;  D.1419, iftmp.14
	cmpx	,s++	;cmphi:	;  iftmp.14
	ble	L30	; 
	ldb	15,s	; , D.1422
	aslb	; 
	stb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , tmp133
	asl	_lineYX_yx_s_dy_dx+4,x	;  lineYX_yx_s_dy_dx
	asr	_lineYX_yx_s_dy_dx+2,x	;  lineYX_yx_s_dy_dx
L30:
;----- asm -----
;  300 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[243]    HALF_IF_POSSIBLE(REDUX2)
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , temp.118
	leau	3,y	;  temp.119,, temp.118
	ldb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
	stb	26,s	; , temp.120
	ldb	_levelNumber	;  levelNumber.17, levelNumber
	ldx	#64	;  iftmp.16,
	cmpb	#14	;cmpqi:	;  levelNumber.17,
	beq	L36	; 
	ldx	#40	;  iftmp.16,
L36:
	ldb	26,s	;  temp.120, temp.120
	bge	L38	; 
	negb	;  temp.120
L38:
	sex		;extendqihi2: R:b -> R:d	;  temp.120, temp.120
	pshs	d	;cmphi: R:d with R:x	;  temp.120, iftmp.16
	cmpx	,s++	;cmphi:	;  iftmp.16
	ble	L37	; 
	ldb	_lineYX_yx_s_dy_dx+4,y	; , lineYX_yx_s_dy_dx
	stb	27,s	; , temp.124
	ldb	_levelNumber	;  levelNumber.19, levelNumber
	ldx	#64	;  iftmp.18,
	cmpb	#14	;cmpqi:	;  levelNumber.19,
	beq	L40	; 
	ldx	#40	;  iftmp.18,
L40:
	ldb	27,s	;  temp.124, temp.124
	bge	L41	; 
	negb	;  temp.124
L41:
	sex		;extendqihi2: R:b -> R:d	;  temp.124, temp.124
	pshs	d	;cmphi: R:d with R:x	;  temp.124, iftmp.18
	cmpx	,s++	;cmphi:	;  iftmp.18
	ble	L37	; 
	ldb	26,s	; , temp.120
	aslb	; 
	stb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , tmp154
	asl	_lineYX_yx_s_dy_dx+4,x	;  lineYX_yx_s_dy_dx
	asr	_lineYX_yx_s_dy_dx+2,x	;  lineYX_yx_s_dy_dx
L37:
;----- asm -----
;  302 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[244]    HALF_IF_POSSIBLE(REDUX3)
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , temp.142
	leau	3,y	;  temp.143,, temp.142
	ldb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
	stb	28,s	; , temp.144
	ldb	_levelNumber	;  levelNumber.21, levelNumber
	ldx	#64	;  iftmp.20,
	cmpb	#14	;cmpqi:	;  levelNumber.21,
	beq	L43	; 
	ldx	#40	;  iftmp.20,
L43:
	ldb	28,s	;  temp.144, temp.144
	bge	L45	; 
	negb	;  temp.144
L45:
	sex		;extendqihi2: R:b -> R:d	;  temp.144, temp.144
	pshs	d	;cmphi: R:d with R:x	;  temp.144, iftmp.20
	cmpx	,s++	;cmphi:	;  iftmp.20
	ble	L44	; 
	ldb	_lineYX_yx_s_dy_dx+4,y	; , lineYX_yx_s_dy_dx
	stb	29,s	; , temp.148
	ldb	_levelNumber	;  levelNumber.23, levelNumber
	ldx	#64	;  iftmp.22,
	cmpb	#14	;cmpqi:	;  levelNumber.23,
	beq	L47	; 
	ldx	#40	;  iftmp.22,
L47:
	ldb	29,s	;  temp.148, temp.148
	bge	L48	; 
	negb	;  temp.148
L48:
	sex		;extendqihi2: R:b -> R:d	;  temp.148, temp.148
	pshs	d	;cmphi: R:d with R:x	;  temp.148, iftmp.22
	cmpx	,s++	;cmphi:	;  iftmp.22
	ble	L44	; 
	ldb	28,s	; , temp.144
	aslb	; 
	stb	_lineYX_yx_s_dy_dx,u	; , lineYX_yx_s_dy_dx
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , tmp175
	asl	_lineYX_yx_s_dy_dx+4,x	;  lineYX_yx_s_dy_dx
	asr	_lineYX_yx_s_dy_dx+2,x	;  lineYX_yx_s_dy_dx
L44:
;----- asm -----
;  305 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[246]    if (last_s != -1)
;  0 "" 2
;--- end asm ---
	ldb	_last_s	; , last_s
	cmpb	#-1	;cmpqi:	; ,
	lbeq	L49	; 
;----- asm -----
;  311 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[251]        int oldSacle = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount - 1) * 5 + 2)];
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	30,s	; , lineCount.164
	decb	;  tmp185
	lda	#5	;umulqihi3	; 
	mul
	addd	#2	;  tmp186,
	std	16,s	;  tmp186, D.1447
	tfr	d,x	; ,
	ldb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
	stb	25,s	; , oldSacle
;----- asm -----
;  314 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[253]        if ((oldSacle == HALF_1) && (useHalfling[levelOffset + levelNumber] > 0))
;  0 "" 2
;--- end asm ---
	cmpb	#63	;cmpqi:	; ,
	lbne	L50	; 
	ldb	_levelNumber	;  levelNumber.25, levelNumber
	addb	_levelOffset	;  tmp189, levelOffset
	clra		;zero_extendqihi: R:b -> R:d	;  tmp189,
	tfr	d,x	; , tmp190
	tst	_useHalfling,x	;  useHalfling
	lble	L50	; 
;----- asm -----
;  317 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[255]            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] - last_y;
;  0 "" 2
;--- end asm ---
	ldb	30,s	; , lineCount.164
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , temp.166
	leax	_lineYX_yx_s_dy_dx,x	;  tmp199,, temp.166
	ldb	,x+	;  tmp196, lineYX_yx_s_dy_dx
	subb	_last_y	;  tmp195, last_y
	sex		;extendqihi2: R:b -> R:d	;  tmp195,
	std	2,s	; , dy
;----- asm -----
;  319 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[256]            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] - last_x;
;  0 "" 2
;--- end asm ---
	ldb	,x	; , lineYX_yx_s_dy_dx
	stb	31,s	; , temp.169
	ldb	_last_x	; , last_x
	stb	18,s	; , last_x.27
;----- asm -----
;  321 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[257]            dy = dy << 1;
;  0 "" 2
;--- end asm ---
	ldd	2,s	; , dy
	aslb	; 
	rola	; 
	tfr	d,y	; , dy.170
;----- asm -----
;  323 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[258]            dx = dx << 1;
;  0 "" 2
;  325 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[259]            if ((ABS16(dy) < MAX_SPLIT * 2) && (ABS16(dx) < MAX_SPLIT * 2))
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.29, levelNumber
	ldu	#128	;  iftmp.28,
	cmpb	#14	;cmpqi:	;  levelNumber.29,
	beq	L52	; 
	ldu	#80	;  iftmp.28,
L52:
	leax	,y	;  dy.170, dy.170
	cmpy	#0	;  dy.170
	bge	L53	; 
	exg	d,x	;  dy.170
	nega
	negb
	sbca	#0
	exg	d,x	;  dy.170
L53:
	pshs	x	;cmphi: R:x with R:u	;  dy.170, iftmp.28
	cmpu	,s++	;cmphi:	;  iftmp.28
	lble	L49	; 
	ldb	_levelNumber	;  levelNumber.31, levelNumber
	ldx	#128	; ,
	stx	19,s	; , iftmp.30
	cmpb	#14	;cmpqi:	;  levelNumber.31,
	beq	L55	; 
	ldu	#80	; ,
	stu	19,s	; , iftmp.30
L55:
	ldb	31,s	;  tmp201, temp.169
	subb	18,s	;  tmp201, last_x.27
	sex		;extendqihi2: R:b -> R:d	;  tmp201, dx
	aslb	; 
	rola	; 
	tfr	d,u	;  dx, dx.171
	leax	,u	;  dx.171, dx.171
	cmpu	#0	;  dx.171
	bge	L56	; 
	exg	d,x	;  dx.171
	nega
	negb
	sbca	#0
	exg	d,x	;  dx.171
L56:
	cmpx	19,s	;cmphi:(R)	;  dx.171, iftmp.30
	lbge	L49	; 
;----- asm -----
;  332 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[265]                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount - 1) * 5 + 2)] = (int8_t)(((uint8_t)oldSacle) | 0x80);
;  0 "" 2
;--- end asm ---
	ldb	#-65	; ,
	ldx	16,s	; , D.1447
	stb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  336 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[268]                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = (int8_t)dy;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	8,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	addd	8,s	;  tmp209,
	addd	#_lineYX_yx_s_dy_dx	;  tmp209,
	std	,s	;  tmp209,
	tfr	y,d	;  dy.170,
	ldx	,s	; ,
	stb	,x+	;movlsbqihi: R:d -> ,x+	;  lineYX_yx_s_dy_dx,
;----- asm -----
;  338 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[269]                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = (int8_t)dx;
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  dx.171,
	stb	,x	;movlsbqihi: R:d -> ,x	;  lineYX_yx_s_dy_dx,
	jmp	L49	; 
L50:
	ldb	25,s	; , oldSacle
	cmpb	#31	;cmpqi:	; ,
	lbne	L57	; 
	ldb	_levelNumber	;  levelNumber.33, levelNumber
	addb	_levelOffset	;  tmp218, levelOffset
	clra		;zero_extendqihi: R:b -> R:d	;  tmp218,
	tfr	d,x	; , tmp219
	ldb	_useHalfling,x	; , useHalfling
	cmpb	#1	;cmpqi:	; ,
	lble	L57	; 
;----- asm -----
;  344 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[274]            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] - last_y;
;  0 "" 2
;--- end asm ---
	ldb	30,s	; , lineCount.164
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , temp.180
	leax	_lineYX_yx_s_dy_dx,x	;  tmp228,, temp.180
	ldb	,x+	;  tmp225, lineYX_yx_s_dy_dx
	subb	_last_y	;  tmp224, last_y
	sex		;extendqihi2: R:b -> R:d	;  tmp224,
	std	2,s	; , dy
;----- asm -----
;  346 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[275]            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] - last_x;
;  0 "" 2
;--- end asm ---
	ldb	,x	; , lineYX_yx_s_dy_dx
	stb	32,s	; , temp.185
	ldb	_last_x	; , last_x
	stb	33,s	; , last_x.186
;----- asm -----
;  348 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[276]            dy = dy << 1;
;  0 "" 2
;--- end asm ---
	ldd	2,s	;  dy.188, dy
	aslb	; 
	rola	; 
;----- asm -----
;  350 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[277]            dx = dx << 1;
;  0 "" 2
;  352 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[278]            dy = dy << 1;
;  0 "" 2
;--- end asm ---
	aslb	; 
	rola	; 
	tfr	d,y	;  dy.188, dy.190
;----- asm -----
;  354 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[279]            dx = dx << 1;
;  0 "" 2
;  356 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[280]            if ((ABS16(dy) < MAX_SPLIT * 2) && (ABS16(dx) < MAX_SPLIT * 2))
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.35, levelNumber
	ldu	#128	;  iftmp.34,
	cmpb	#14	;cmpqi:	;  levelNumber.35,
	beq	L59	; 
	ldu	#80	;  iftmp.34,
L59:
	leax	,y	;  dy.190, dy.190
	cmpy	#0	;  dy.190
	bge	L60	; 
	exg	d,x	;  dy.190
	nega
	negb
	sbca	#0
	exg	d,x	;  dy.190
L60:
	pshs	x	;cmphi: R:x with R:u	;  dy.190, iftmp.34
	cmpu	,s++	;cmphi:	;  iftmp.34
	lble	L49	; 
	ldb	_levelNumber	;  levelNumber.37, levelNumber
	ldx	#128	; ,
	stx	21,s	; , iftmp.36
	cmpb	#14	;cmpqi:	;  levelNumber.37,
	beq	L62	; 
	ldu	#80	; ,
	stu	21,s	; , iftmp.36
L62:
	ldb	32,s	;  tmp230, temp.185
	subb	33,s	;  tmp230, last_x.186
	sex		;extendqihi2: R:b -> R:d	;  tmp230, dx
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	tfr	d,u	;  dx.189, dx.191
	leax	,u	;  dx.191, dx.191
	cmpu	#0	;  dx.191
	bge	L63	; 
	exg	d,x	;  dx.191
	nega
	negb
	sbca	#0
	exg	d,x	;  dx.191
L63:
	cmpx	21,s	;cmphi:(R)	;  dx.191, iftmp.36
	lbge	L49	; 
;----- asm -----
;  363 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[286]                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount - 1) * 5 + 2)] = (int8_t)(((uint8_t)oldSacle) | 0x80);
;  0 "" 2
;--- end asm ---
	ldb	#-97	; ,
	ldx	16,s	; , D.1447
	stb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  367 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[289]                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = (int8_t)dy;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	6,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	addd	6,s	;  tmp238,
	addd	#_lineYX_yx_s_dy_dx	;  tmp238,
	std	,s	;  tmp238,
	tfr	y,d	;  dy.190,
	ldx	,s	; ,
	stb	,x+	;movlsbqihi: R:d -> ,x+	;  lineYX_yx_s_dy_dx,
;----- asm -----
;  369 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[290]                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = (int8_t)dx;
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  dx.191,
	stb	,x	;movlsbqihi: R:d -> ,x	;  lineYX_yx_s_dy_dx,
	jmp	L49	; 
L57:
	ldb	25,s	; , oldSacle
	cmpb	#15	;cmpqi:	; ,
	lbne	L49	; 
	ldb	_levelNumber	;  levelNumber.38, levelNumber
	addb	_levelOffset	;  tmp247, levelOffset
	clra		;zero_extendqihi: R:b -> R:d	;  tmp247,
	tfr	d,x	; , tmp248
	ldb	_useHalfling,x	; , useHalfling
	cmpb	#2	;cmpqi:	; ,
	lble	L49	; 
;----- asm -----
;  375 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[295]            int16_t dy = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] - last_y;
;  0 "" 2
;--- end asm ---
	ldb	30,s	; , lineCount.164
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , temp.200
	leax	_lineYX_yx_s_dy_dx,x	;  tmp257,, temp.200
	ldb	,x+	;  tmp254, lineYX_yx_s_dy_dx
	subb	_last_y	;  tmp253, last_y
	sex		;extendqihi2: R:b -> R:d	;  tmp253,
	std	2,s	; , dy
;----- asm -----
;  377 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[296]            int16_t dx = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] - last_x;
;  0 "" 2
;--- end asm ---
	ldb	,x	; , lineYX_yx_s_dy_dx
	stb	34,s	; , temp.205
	ldb	_last_x	; , last_x
	stb	35,s	; , last_x.206
;----- asm -----
;  379 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[297]            dy = dy << 1;
;  0 "" 2
;--- end asm ---
	ldd	2,s	;  dy.208, dy
	aslb	; 
	rola	; 
;----- asm -----
;  381 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[298]            dx = dx << 1;
;  0 "" 2
;  383 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[299]            dy = dy << 1;
;  0 "" 2
;--- end asm ---
	aslb	; 
	rola	; 
;----- asm -----
;  385 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[300]            dx = dx << 1;
;  0 "" 2
;  387 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[301]            dy = dy << 1;
;  0 "" 2
;--- end asm ---
	aslb	; 
	rola	; 
	tfr	d,y	;  dy.210, dy.212
;----- asm -----
;  389 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[302]            dx = dx << 1;
;  0 "" 2
;  391 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[303]            if ((ABS16(dy) < MAX_SPLIT * 2) && (ABS16(dx) < MAX_SPLIT * 2))
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.40, levelNumber
	ldu	#128	;  iftmp.39,
	cmpb	#14	;cmpqi:	;  levelNumber.40,
	beq	L65	; 
	ldu	#80	;  iftmp.39,
L65:
	leax	,y	;  dy.212, dy.212
	cmpy	#0	;  dy.212
	bge	L66	; 
	exg	d,x	;  dy.212
	nega
	negb
	sbca	#0
	exg	d,x	;  dy.212
L66:
	pshs	x	;cmphi: R:x with R:u	;  dy.212, iftmp.39
	cmpu	,s++	;cmphi:	;  iftmp.39
	lble	L49	; 
	ldb	_levelNumber	;  levelNumber.42, levelNumber
	ldx	#128	; ,
	stx	23,s	; , iftmp.41
	cmpb	#14	;cmpqi:	;  levelNumber.42,
	beq	L68	; 
	ldu	#80	; ,
	stu	23,s	; , iftmp.41
L68:
	ldb	34,s	;  tmp259, temp.205
	subb	35,s	;  tmp259, last_x.206
	sex		;extendqihi2: R:b -> R:d	;  tmp259, dx
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	tfr	d,u	;  dx.211, dx.213
	leax	,u	;  dx.213, dx.213
	cmpu	#0	;  dx.213
	bge	L69	; 
	exg	d,x	;  dx.213
	nega
	negb
	sbca	#0
	exg	d,x	;  dx.213
L69:
	cmpx	23,s	;cmphi:(R)	;  dx.213, iftmp.41
	bge	L49	; 
;----- asm -----
;  398 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[309]                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount - 1) * 5 + 2)] = (int8_t)(((uint8_t)oldSacle) | 0x80);
;  0 "" 2
;--- end asm ---
	ldb	#-113	; ,
	ldx	16,s	; , D.1447
	stb	_lineYX_yx_s_dy_dx,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  402 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[312]                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = (int8_t)dy;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	4,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	addd	4,s	;  tmp267,
	addd	#_lineYX_yx_s_dy_dx	;  tmp267,
	std	,s	;  tmp267,
	tfr	y,d	;  dy.212,
	ldx	,s	; ,
	stb	,x+	;movlsbqihi: R:d -> ,x+	;  lineYX_yx_s_dy_dx,
;----- asm -----
;  404 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[313]                lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = (int8_t)dx;
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  dx.213,
	stb	,x	;movlsbqihi: R:d -> ,x	;  lineYX_yx_s_dy_dx,
L49:
;----- asm -----
;  410 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[318]    last_x = this_x;
;  0 "" 2
;--- end asm ---
	ldb	13,s	; , D.1419
	addb	12,s	; , D.1417
	stb	_last_x	; , last_x
;----- asm -----
;  412 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[319]    last_y = this_y;
;  0 "" 2
;--- end asm ---
	ldb	15,s	; , D.1422
	addb	14,s	; , D.1420
	stb	_last_y	; , last_y
;----- asm -----
;  414 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[320]    last_s = lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 2)];
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
; ORG>	tfr	d,x	; , tmp279
; ORG>	exg	d,x	; , tmp280
; ORG>	addd	2,s	; ,
; ORG>	exg	d,x	; , tmp280
	ldb	_lineYX_yx_s_dy_dx+2,x	; , lineYX_yx_s_dy_dx
	stb	_last_s	; , last_s
L70:
	leas	36,s	; ,,
	puls	y,u,pc	; 
	.globl _addTarget
_addTarget:
	pshs	y,u	; 
	leas	-12,s	; ,,
	stb	3,s	;  x, x
;----- asm -----
;  506 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[382]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = y3d(x, 0, y);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , D.1577
	ldb	18,s	; , y
	pshs	b	; 
	clr	,-s	; 
	ldb	5,s	; , x
	jsr	_y3d	; 
	ldu	#_lineYX_yx_s_dy_dx	;  tmp51,
	stb	_lineYX_yx_s_dy_dx,y	;  D.1578, lineYX_yx_s_dy_dx
;----- asm -----
;  508 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[383]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = x3d(x, y);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp53
	leay	1,y	;  D.1579,, tmp53
	ldb	20,s	; , y
	pshs	b	; 
	ldb	6,s	; , x
	jsr	_x3d	; 
	stb	3,s	; , D.1580
	tfr	u,d	;  tmp51,
	leax	d,y	;  tmp55,, D.1579
	ldb	3,s	; , D.1580
	stb	,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  510 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[384]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)] = y3d(x + 1, 0, y + 1) - (y3d(x, 0, y));
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp56
	leay	3,y	;  D.1581,, tmp56
	ldb	21,s	; , y
	incb	; 
	stb	7,s	; , D.1582
	ldb	6,s	; , x
	incb	; 
	stb	8,s	; , D.1583
	ldb	7,s	; , D.1582
	pshs	b	; 
	clr	,-s	; 
	ldb	10,s	; , D.1583
	jsr	_y3d	; 
	stb	11,s	; , D.1584
	ldb	23,s	; , y
	pshs	b	; 
	clr	,-s	; 
	ldb	10,s	; , x
	jsr	_y3d	; 
	stb	7,s	; , D.1585
	tfr	u,d	;  tmp51,
	leax	d,y	;  tmp58,, D.1581
	ldb	13,s	;  tmp59, D.1584
	subb	7,s	;  tmp59, D.1585
	stb	,x	;  tmp59, lineYX_yx_s_dy_dx
;----- asm -----
;  512 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[385]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)] = x3d(x + 1, y + 1) - (x3d(x, y));
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp60
	leay	4,y	;  D.1587,, tmp60
	ldb	11,s	; , D.1582
	pshs	b	; 
	ldb	13,s	; , D.1583
	jsr	_x3d	; 
	stb	15,s	; , D.1588
	leas	8,s	; ,,
	ldb	18,s	; , y
	pshs	b	; 
	ldb	4,s	; , x
	jsr	_x3d	; 
	stb	1,s	; , D.1589
	tfr	u,d	;  tmp51,
	leax	d,y	;  tmp62,, D.1587
	ldb	8,s	;  tmp63, D.1588
	subb	1,s	;  tmp63, D.1589
	stb	,x	;  tmp63, lineYX_yx_s_dy_dx
;----- asm -----
;  514 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[386]    checkHalfling();
;  0 "" 2
;--- end asm ---
	jsr	_checkHalfling	; 
;----- asm -----
;  517 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[388]    lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	incb	; 
	stb	9,s	; , lineCount.49
	stb	_lineCount	; , lineCount
;----- asm -----
;  520 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[390]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = y3d(x + 1, 0, y);
;  0 "" 2
;--- end asm ---
	ldb	19,s	; , y
	pshs	b	; 
	clr	,-s	; 
	ldb	8,s	; , D.1583
	jsr	_y3d	; 
	stb	12,s	; , D.1592
	ldb	11,s	; , lineCount.49
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
	ldb	12,s	; , D.1592
	stb	,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  522 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[391]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = x3d(x + 1, y);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp70
	leay	1,y	;  temp.246,, tmp70
	ldb	21,s	; , y
	pshs	b	; 
	ldb	9,s	; , D.1583
	jsr	_x3d	; 
	stb	4,s	; , D.1593
	tfr	u,d	;  tmp51,
	leax	d,y	;  tmp72,, temp.246
	ldb	4,s	; , D.1593
	stb	,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  524 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[392]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)] = y3d(x, 0, y + 1) - (y3d(x + 1, 0, y));
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp73
	leay	3,y	;  temp.250,, tmp73
	ldb	8,s	; , D.1582
	pshs	b	; 
	clr	,-s	; 
	ldb	9,s	; , x
	jsr	_y3d	; 
	stb	16,s	; , D.1594
	ldb	24,s	; , y
	pshs	b	; 
	clr	,-s	; 
	ldb	13,s	; , D.1583
	jsr	_y3d	; 
	stb	8,s	; , D.1595
	tfr	u,d	;  tmp51,
	leax	d,y	;  tmp75,, temp.250
	ldb	18,s	;  tmp76, D.1594
	subb	8,s	;  tmp76, D.1595
	stb	,x	;  tmp76, lineYX_yx_s_dy_dx
;----- asm -----
;  526 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[393]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)] = x3d(x, y + 1) - (x3d(x + 1, y));
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp77
	leay	4,y	;  temp.254,, tmp77
	leas	8,s	; ,,
	ldb	4,s	; , D.1582
	pshs	b	; 
	ldb	4,s	; , x
	jsr	_x3d	; 
	stb	12,s	; , D.1597
	ldb	19,s	; , y
	pshs	b	; 
	ldb	7,s	; , D.1583
	jsr	_x3d	; 
	stb	2,s	; , D.1598
	tfr	u,d	;  tmp51,
	leax	d,y	;  tmp79,, temp.254
	ldb	13,s	;  tmp80, D.1597
	subb	2,s	;  tmp80, D.1598
	stb	,x	;  tmp80, lineYX_yx_s_dy_dx
;----- asm -----
;  528 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[394]    checkHalfling();
;  0 "" 2
;--- end asm ---
	jsr	_checkHalfling	; 
;----- asm -----
;  531 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[396]    lineCount++;
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
;  668 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[494]    for (uint8_t i = 0; i < sizeof(swatchesOn); i++)
;  0 "" 2
;--- end asm ---
	ldx	#_swatchesOn	;  ivtmp.289,
L74:
;----- asm -----
;  671 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[496]        swatchesOn[i] = 0;
;  0 "" 2
;--- end asm ---
	clr	,x+	;  swatchesOn
	cmpx	#_swatchesOn+19	;cmphi:	;  ivtmp.289,
	bne	L74	; 
;----- asm -----
;  675 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[499]    long int index;
;  0 "" 2
;  677 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[500]    int8_t x = 0;
;  0 "" 2
;  679 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[501]    int8_t y = 0;
;  0 "" 2
;  681 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[502]    const char *geometry = level->geometry;
;  0 "" 2
;  683 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[503]    for (y = 0; y < LEVEL_HEIGHT; y++)
;  0 "" 2
;--- end asm ---
	ldy	[_level]	;  ivtmp.281, <variable>.geometry
	clr	1,s	;  y
L78:
;----- asm -----
;  686 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[505]        for (x = 0; x < LEVEL_WIDTH; x++)
;  0 "" 2
;--- end asm ---
	leau	,y	;  ivtmp.290, ivtmp.281
	clr	,s	;  x
L77:
;----- asm -----
;  689 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[507]            index = (long int)y * LEVEL_WIDTH + (long int)x;
;  0 "" 2
;  691 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[508]            char c0 = geometry[index];
;  0 "" 2
;--- end asm ---
	ldb	,u	;  c0,* ivtmp.290
;----- asm -----
;  693 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[509]            if (c0 == 'k' || c0 == 'q')
;  0 "" 2
;--- end asm ---
	cmpb	#107	;cmpqi:	;  c0,
	beq	L75	; 
	cmpb	#113	;cmpqi:	;  c0,
	bne	L76	; 
L75:
;----- asm -----
;  696 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[511]                setSwatchField(x, y, 1);
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
	leau	1,u	;  ivtmp.290,, ivtmp.290
	ldb	,s	; , x
	cmpb	#10	;cmpqi:	; ,
	bne	L77	; 
	inc	1,s	;  y
	leay	10,y	;  ivtmp.281,, ivtmp.281
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
;  458 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[350]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = y3d(x0, 0, y0) + 3;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , D.1534
	ldb	12,s	; , y0
	pshs	b	; 
	clr	,-s	; 
	ldb	3,s	; , x0
	jsr	_y3d	; 
	ldu	#_lineYX_yx_s_dy_dx	;  tmp41,
	addb	#3	;  D.1535,
	stb	_lineYX_yx_s_dy_dx,y	;  D.1535, lineYX_yx_s_dy_dx
;----- asm -----
;  460 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[351]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = x3d(x0, y0) + 6;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp43
	leay	1,y	;  D.1537,, tmp43
	ldb	14,s	; , y0
	pshs	b	; 
	ldb	4,s	; , x0
	jsr	_x3d	; 
	stb	3,s	; , D.1538
	tfr	u,d	;  tmp41,
	leax	d,y	;  tmp45,, D.1537
	ldb	3,s	; , D.1538
	addb	#6	; ,
	stb	,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  462 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[352]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)] = y3d(x0, 0, y0 + 1) + 0 - (y3d(x0, 0, y0) + 3);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp46
	leay	3,y	;  D.1540,, tmp46
	ldb	15,s	; , y0
	incb	; 
	stb	5,s	; , D.1541
	pshs	b	; 
	clr	,-s	; 
	ldb	6,s	; , x0
	jsr	_y3d	; 
	stb	8,s	; , D.1542
	ldb	17,s	; , y0
	pshs	b	; 
	clr	,-s	; 
	ldb	8,s	; , x0
	jsr	_y3d	; 
	stb	11,s	; , D.1543
	tfr	u,d	;  tmp41,
	leax	d,y	;  tmp48,, D.1540
	ldb	10,s	;  tmp49, D.1542
	addb	#-3	;  tmp49,
	subb	11,s	;  tmp50, D.1543
	stb	,x	;  tmp50, lineYX_yx_s_dy_dx
;----- asm -----
;  464 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[353]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)] = x3d(x0, y0 + 1) + 8 - (x3d(x0, y0) + 6);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp51
	leay	4,y	;  D.1546,, tmp51
	ldb	9,s	; , D.1541
	pshs	b	; 
	ldb	9,s	; , x0
	jsr	_x3d	; 
	stb	13,s	; , D.1547
	leas	8,s	; ,,
	ldb	12,s	; , y0
	pshs	b	; 
	ldb	2,s	; , x0
	jsr	_x3d	; 
	stb	1,s	; , D.1549
	tfr	u,d	;  tmp41,
	leax	d,y	;  tmp53,, D.1546
	ldb	6,s	;  tmp55, D.1547
	subb	1,s	;  tmp55, D.1549
	addb	#2	;  tmp55,
	stb	,x	;  tmp55, lineYX_yx_s_dy_dx
;----- asm -----
;  467 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[355]    checkHalfling();
;  0 "" 2
;--- end asm ---
	jsr	_checkHalfling	; 
;----- asm -----
;  469 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[356]    lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	;  lineCount.47, lineCount
	incb	;  lineCount.47
	stb	_lineCount	;  lineCount.47, lineCount
;----- asm -----
;  471 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[357]    if (lineCount >= MAX_LINES)
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
	cmpb	#109	;cmpqi:	;  lineCount.47,
	bls	L85	; 
;----- asm -----
;  474 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[359]        runtimeError("TOO MANY LINES€");
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
;  420 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[325]    if (half)
;  0 "" 2
;--- end asm ---
	tst	15,s	;  half
	lbeq	L87	; 
;----- asm -----
;  423 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[327]        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = y3d(x0, 0, y0) + 4;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , D.1501
	ldb	12,s	; , y0
	pshs	b	; 
	clr	,-s	; 
	ldb	3,s	; , x0
	jsr	_y3d	; 
	ldu	#_lineYX_yx_s_dy_dx	;  tmp53,
	addb	#4	;  D.1502,
	stb	_lineYX_yx_s_dy_dx,y	;  D.1502, lineYX_yx_s_dy_dx
;----- asm -----
;  425 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[328]        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = x3d(x0, y0) - 1;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp55
	leay	1,y	;  D.1504,, tmp55
	ldb	14,s	; , y0
	pshs	b	; 
	ldb	4,s	; , x0
	jsr	_x3d	; 
	stb	3,s	; , D.1505
	tfr	u,d	;  tmp53,
	leax	d,y	;  tmp57,, D.1504
	ldb	3,s	; , D.1505
	decb	; 
	stb	,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  427 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[329]        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)] = y3d(x1, 0, y1) + 3 - (y3d(x0, 0, y0) + 4);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp58
	leay	3,y	;  D.1507,, tmp58
	ldb	17,s	; , y1
	pshs	b	; 
	clr	,-s	; 
	ldb	18,s	; , x1
	jsr	_y3d	; 
	stb	7,s	; , D.1508
	ldb	17,s	; , y0
	pshs	b	; 
	clr	,-s	; 
	ldb	8,s	; , x0
	jsr	_y3d	; 
	stb	7,s	; , D.1510
	tfr	u,d	;  tmp53,
	leax	d,y	;  tmp60,, D.1507
	ldb	7,s	;  tmp62, D.1510
	comb	;  tmp62
	addb	9,s	;  tmp62, D.1508
	stb	,x	;  tmp62, lineYX_yx_s_dy_dx
;----- asm -----
;  429 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[330]        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)] = x3d(x1, y1) - 6 - (x3d(x0, y0) - 1);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp63
	leay	4,y	;  D.1513,, tmp63
	ldb	21,s	; , y1
	pshs	b	; 
	ldb	21,s	; , x1
	jsr	_x3d	; 
	stb	11,s	; , D.1514
	leas	8,s	; ,,
	ldb	12,s	; , y0
	pshs	b	; 
	ldb	2,s	; , x0
	jsr	_x3d	; 
	stb	1,s	; , D.1516
	tfr	u,d	;  tmp53,
	leax	d,y	;  tmp65,, D.1513
	ldb	4,s	;  tmp67, D.1514
	subb	1,s	;  tmp67, D.1516
	addb	#-5	;  tmp67,
	stb	,x	;  tmp67, lineYX_yx_s_dy_dx
	leas	1,s	; ,,
	jmp	L88	; 
L87:
;----- asm -----
;  434 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[334]        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = y3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , temp.322
	ldb	12,s	; , y0
	pshs	b	; 
	clr	,-s	; 
	ldb	3,s	; , x0
	jsr	_y3d	; 
	ldu	#_lineYX_yx_s_dy_dx	;  tmp68,
	stb	_lineYX_yx_s_dy_dx,y	;  D.1519, lineYX_yx_s_dy_dx
;----- asm -----
;  436 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[335]        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = x3d(x0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp70
	leay	1,y	;  temp.326,, tmp70
	ldb	14,s	; , y0
	pshs	b	; 
	ldb	4,s	; , x0
	jsr	_x3d	; 
	stb	3,s	; , D.1520
	tfr	u,d	;  tmp68,
	leax	d,y	;  tmp72,, temp.326
	ldb	3,s	; , D.1520
	stb	,x	; , lineYX_yx_s_dy_dx
;----- asm -----
;  438 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[336]        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 3)] = y3d(x1, 0, y1) - y3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp73
	leay	3,y	;  temp.330,, tmp73
	ldb	17,s	; , y1
	pshs	b	; 
	clr	,-s	; 
	ldb	18,s	; , x1
	jsr	_y3d	; 
	stb	9,s	; , D.1521
	ldb	17,s	; , y0
	pshs	b	; 
	clr	,-s	; 
	ldb	8,s	; , x0
	jsr	_y3d	; 
	stb	7,s	; , D.1522
	tfr	u,d	;  tmp68,
	leax	d,y	;  tmp75,, temp.330
	ldb	11,s	;  tmp76, D.1521
	subb	7,s	;  tmp76, D.1522
	stb	,x	;  tmp76, lineYX_yx_s_dy_dx
;----- asm -----
;  440 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[337]        lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 4)] = x3d(x1, y1) - x3d(x0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,y	; , tmp77
	leay	4,y	;  temp.334,, tmp77
	ldb	21,s	; , y1
	pshs	b	; 
	ldb	21,s	; , x1
	jsr	_x3d	; 
	stb	13,s	; , D.1524
	leas	8,s	; ,,
	ldb	12,s	; , y0
	pshs	b	; 
	ldb	2,s	; , x0
	jsr	_x3d	; 
	stb	1,s	; , D.1525
	tfr	u,d	;  tmp68,
	leax	d,y	;  tmp79,, temp.334
	ldb	6,s	;  tmp80, D.1524
	subb	1,s	;  tmp80, D.1525
	stb	,x	;  tmp80, lineYX_yx_s_dy_dx
	leas	1,s	; ,,
L88:
;----- asm -----
;  443 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[339]    checkHalfling();
;  0 "" 2
;--- end asm ---
	jsr	_checkHalfling	; 
;----- asm -----
;  446 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[341]    lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	;  lineCount.45, lineCount
	incb	;  lineCount.45
	stb	_lineCount	;  lineCount.45, lineCount
;----- asm -----
;  448 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[342]    if (lineCount >= MAX_LINES)
;  0 "" 2
;--- end asm ---
	cmpb	#109	;cmpqi:	;  lineCount.45,
	bls	L90	; 
;----- asm -----
;  451 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[344]        runtimeError("TOO MANY LINES€");
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
;  481 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[365]    int test = 8; // 9 is ok, 10 is too wide!
;  0 "" 2
;  483 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[366]    while (x1 - x0 > test)
;  0 "" 2
;--- end asm ---
	ldb	8,s	;  D.1568, x1
	subb	,s	;  D.1568, x0
	cmpb	#8	;cmpqi:	;  D.1568,
	ble	L92	; 
	stb	2,s	;  D.1568, ivtmp.356
L94:
;----- asm -----
;  486 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[368]        addLineImpl(x0, y0, x0 + test, y1, half);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , x0
	addb	#8	; ,
	stb	3,s	; , x0.357
	ldb	10,s	; , half
	pshs	b	; 
	ldb	10,s	; , y1
	pshs	b	; 
	ldb	5,s	; , x0.357
	pshs	b	; 
	ldb	10,s	; , y0
	pshs	b	; 
	ldb	4,s	; , x0
	jsr	_addLineImpl	; 
;----- asm -----
;  488 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[369]        x0 += test;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , ivtmp.356
	addb	#-8	; ,
	stb	6,s	; , ivtmp.356
	leas	4,s	; ,,
	cmpb	#8	;cmpqi:	; ,
	ble	L93	; 
	ldb	3,s	; , x0.357
	stb	,s	; , x0
	bra	L94	; 
L93:
	ldb	3,s	; , x0.357
	stb	,s	; , x0
L92:
;----- asm -----
;  491 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[371]    while (y1 - y0 > test)
;  0 "" 2
;--- end asm ---
	ldb	9,s	;  D.1570, y1
	subb	7,s	;  D.1570, y0
	cmpb	#8	;cmpqi:	;  D.1570,
	ble	L95	; 
	stb	1,s	;  D.1570, ivtmp.348
L97:
;----- asm -----
;  494 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[373]        addLineImpl(x0, y0, x1, y0 + test, half);
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , y0
	addb	#8	; ,
	stb	4,s	; , y0.358
	ldb	10,s	; , half
	pshs	b	; 
	ldb	5,s	; , y0.358
	pshs	b	; 
	ldb	10,s	; , x1
	pshs	b	; 
	ldb	10,s	; , y0
	pshs	b	; 
	ldb	4,s	; , x0
	jsr	_addLineImpl	; 
;----- asm -----
;  496 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[374]        y0 += test;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , ivtmp.348
	addb	#-8	; ,
	stb	5,s	; , ivtmp.348
	leas	4,s	; ,,
	cmpb	#8	;cmpqi:	; ,
	ble	L96	; 
	ldb	4,s	; , y0.358
	stb	7,s	; , y0
	bra	L97	; 
L96:
	ldb	4,s	; , y0.358
	stb	7,s	; , y0
L95:
;----- asm -----
;  499 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[376]    addLineImpl(x0, y0, x1, y1, half);
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
;  628 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[466]    int8_t x = 0;
;  0 "" 2
;  630 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[467]    int8_t y = 0;
;  0 "" 2
;  632 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[468]    for (x = -1; x < LEVEL_WIDTH; x++)
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	1,s	; , x
L105:
;----- asm -----
;  635 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[470]        int8_t y0 = -1;
;  0 "" 2
;  637 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[471]        int8_t y1 = -1;
;  0 "" 2
;  639 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[472]        for (y = 0; y <= LEVEL_HEIGHT; y++)
;  0 "" 2
;--- end asm ---
	clr	2,s	;  y
	ldb	#-1	; ,
	stb	3,s	; , y0
	stb	4,s	; , y1
L104:
;----- asm -----
;  642 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[474]            if (isField(x, y) || isField(x + 1, y))
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y
	pshs	b	; 
	ldb	2,s	; , x
	jsr	_isField	; 
	leas	1,s	; ,,
	tstb	;  D.1644
	bne	L100	; 
	ldb	1,s	; , x
	incb	; 
	stb	,s	; , D.1645
	ldb	2,s	; , y
	pshs	b	; 
	ldb	1,s	; , D.1645
	jsr	_isField	; 
	leas	1,s	; ,,
	tstb	;  D.1646
	beq	L101	; 
L100:
;----- asm -----
;  645 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[476]                if (y0 < 0)
;  0 "" 2
;--- end asm ---
	tst	3,s	;  y0
	bge	L102	; 
	ldb	2,s	; , y
	stb	3,s	; , y0
L102:
;----- asm -----
;  648 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[478]                y1 = y;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y
	stb	4,s	; , y1
	bra	L103	; 
L101:
;----- asm -----
;  653 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[482]                if (y0 >= 0)
;  0 "" 2
;--- end asm ---
	tst	3,s	;  y0
	blt	L103	; 
;----- asm -----
;  656 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[484]                    addLine(x + 1, y0, x + 1, y1 + 1, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	5,s	; , y1
	incb	; 
	pshs	b	; 
	ldb	2,s	; , D.1645
	pshs	b	; 
	ldb	6,s	; , y0
	pshs	b	; 
	ldb	4,s	; , D.1645
	jsr	_addLine	; 
;----- asm -----
;  658 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[485]                    y0 = -1;
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
;  544 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[408]    long int index;
;  0 "" 2
;  546 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[409]    int8_t x = 0;
;  0 "" 2
;  548 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[410]    int8_t y = 0;
;  0 "" 2
;  550 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[411]    const char *geometry = level->geometry;
;  0 "" 2
;  552 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[412]    for (y = -1; y < LEVEL_HEIGHT; y++)
;  0 "" 2
;--- end asm ---
	ldx	[_level]	; , <variable>.geometry
	leay	-10,x	;  ivtmp.403,,
	clr	6,s	;  ivtmp.397
L122:
	ldb	6,s	; , ivtmp.397
	decb	; 
	stb	2,s	; , y
;----- asm -----
;  555 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[414]        int8_t x0 = -1;
;  0 "" 2
;  557 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[415]        int8_t x1 = -1;
;  0 "" 2
;  559 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[416]        for (x = 0; x <= LEVEL_WIDTH; x++)
;  0 "" 2
;--- end asm ---
	leau	,y	;  ivtmp.406, ivtmp.403
	ldb	#-1	; ,
	stb	3,s	; , x0
	stb	4,s	; , x1
	ldb	#1	; ,
	stb	5,s	; , ivtmp.395
L121:
	ldb	5,s	; , ivtmp.395
	decb	; 
	stb	1,s	; , x
;----- asm -----
;  562 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[418]            char c0 = 0;
;  0 "" 2
;  564 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[419]            index = (long int)y * LEVEL_WIDTH + (long int)x;
;  0 "" 2
;  566 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[420]            if (y >= 0 && x < LEVEL_WIDTH)
;  0 "" 2
;--- end asm ---
	tst	2,s	;  y
	blt	L110	; 
	cmpb	#9	;cmpqi:	; ,
	bgt	L110	; 
;----- asm -----
;  569 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[422]                c0 = geometry[index];
;  0 "" 2
;--- end asm ---
	ldb	,u	;  c0,* ivtmp.406
	bra	L111	; 
L110:
	clrb	;  c0
L111:
;----- asm -----
;  572 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[424]            if (c0 == 'e')
;  0 "" 2
;--- end asm ---
	cmpb	#101	;cmpqi:	;  c0,
	bne	L112	; 
;----- asm -----
;  575 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[426]                addTarget(x, y);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y
	pshs	b	; 
	ldb	2,s	; , x
	jsr	_addTarget	; 
;----- asm -----
;  577 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[427]                endX = x;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , x
	stb	_endX	; , endX
;----- asm -----
;  579 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[428]                endY = y;
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
;  584 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[432]                addSplit(x, y);
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
;  589 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[436]                addLine(x, y, x + 1, y + 1, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	7,s	; , ivtmp.397
	pshs	b	; 
	ldb	7,s	; , ivtmp.395
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
;  594 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[440]                addLine(x + 1, y, x, y + 1, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	7,s	; , ivtmp.397
	pshs	b	; 
	ldb	3,s	; , x
	pshs	b	; 
	ldb	5,s	; , y
	pshs	b	; 
	ldb	9,s	; , ivtmp.395
	jsr	_addLine	; 
	leas	4,s	; ,,
	bra	L113	; 
L116:
	cmpb	#102	;cmpqi:	;  c0,
	bne	L113	; 
;----- asm -----
;  599 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[444]                addLine(x, y, x + 1, y, 1);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	,-s	; ,
	ldb	3,s	; , y
	pshs	b	; 
	ldb	7,s	; , ivtmp.395
	pshs	b	; 
	ldb	5,s	; , y
	pshs	b	; 
	ldb	5,s	; , x
	jsr	_addLine	; 
	leas	4,s	; ,,
L113:
;----- asm -----
;  602 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[446]            if (isField(x, y) || isField(x, y + 1))
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y
	pshs	b	; 
	ldb	2,s	; , x
	jsr	_isField	; 
	leas	1,s	; ,,
	tstb	;  D.1626
	bne	L117	; 
	ldb	6,s	; , ivtmp.397
	stb	,s	; , D.1621
	pshs	b	; 
	ldb	2,s	; , x
	jsr	_isField	; 
	leas	1,s	; ,,
	tstb	;  D.1627
	beq	L118	; 
L117:
;----- asm -----
;  605 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[448]                if (x0 < 0)
;  0 "" 2
;--- end asm ---
	tst	3,s	;  x0
	bge	L119	; 
	ldb	1,s	; , x
	stb	3,s	; , x0
L119:
;----- asm -----
;  608 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[450]                x1 = x;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , x
	stb	4,s	; , x1
	bra	L120	; 
L118:
;----- asm -----
;  613 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[454]                if (x0 >= 0)
;  0 "" 2
;--- end asm ---
	tst	3,s	;  x0
	blt	L120	; 
;----- asm -----
;  616 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[456]                    addLine(x0, y + 1, x1 + 1, y + 1, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	1,s	; , D.1621
	pshs	b	; 
	ldb	6,s	; , x1
	incb	; 
	pshs	b	; 
	ldb	3,s	; , D.1621
	pshs	b	; 
	ldb	7,s	; , x0
	jsr	_addLine	; 
;----- asm -----
;  618 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[457]                    x0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	7,s	; , x0
	leas	4,s	; ,,
L120:
	inc	5,s	;  ivtmp.395
	leau	1,u	;  ivtmp.406,, ivtmp.406
	ldb	5,s	; , ivtmp.395
	cmpb	#12	;cmpqi:	; ,
	lbne	L121	; 
	inc	6,s	;  ivtmp.397
	leay	10,y	;  ivtmp.403,, ivtmp.403
	ldb	6,s	; , ivtmp.397
	cmpb	#16	;cmpqi:	; ,
	lbne	L122	; 
	leas	7,s	; ,,
	puls	y,u,pc	; 
	.globl _initLevel
_initLevel:
	pshs	u	; 
;----- asm -----
;  705 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[519]    last_x = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	_last_x	; , last_x
;----- asm -----
;  707 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[520]    last_y = -1;
;  0 "" 2
;--- end asm ---
	stb	_last_y	; , last_y
;----- asm -----
;  709 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[521]    last_s = -1;
;  0 "" 2
;--- end asm ---
	stb	_last_s	; , last_s
;----- asm -----
;  711 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[522]    lineCount = 0;
;  0 "" 2
;--- end asm ---
	clr	_lineCount	;  lineCount
;----- asm -----
;  713 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[523]    setupX();
;  0 "" 2
;--- end asm ---
	jsr	_setupX	; 
;----- asm -----
;  715 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[524]    last_x = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	_last_x	; , last_x
;----- asm -----
;  717 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[525]    last_y = -1;
;  0 "" 2
;--- end asm ---
	stb	_last_y	; , last_y
;----- asm -----
;  719 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[526]    last_s = -1;
;  0 "" 2
;--- end asm ---
	stb	_last_s	; , last_s
;----- asm -----
;  722 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[528]    setupY();
;  0 "" 2
;--- end asm ---
	jsr	_setupY	; 
;----- asm -----
;  724 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[529]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 1)] = 0;
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	lda	#5	;umulqihi3	; 
	mul
	tfr	d,x	; , D.1678
	leax	_lineYX_yx_s_dy_dx,x	;  tmp29,, D.1678
	clr	1,x	;  lineYX_yx_s_dy_dx
;----- asm -----
;  726 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[530]    lineYX_yx_s_dy_dx[(uint16_t)((uint16_t)(lineCount)*5 + 0)] = 0;
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
;  114 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[97]    for (uint8_t i = 0; i < level->swatches_count; i++)
;  0 "" 2
;--- end asm ---
	ldx	_level	;  level.6, level
	tst	4,x	;  <variable>.swatches_count
	lbeq	L129	; 
	clr	3,s	;  i
L140:
;----- asm -----
;  117 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[99]        const struct Swatch *swatch = level->swatches[i];
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
;  119 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[100]        if (swatch->position.x == x && swatch->position.y == y)
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , x
	cmpb	1,u	;cmpqi:(R)	; , <variable>.position.x
	lbne	L130	; 
	ldb	11,s	; , y
	cmpb	2,u	;cmpqi:(R)	; , <variable>.position.y
	lbne	L130	; 
;----- asm -----
;  122 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[102]            for (uint8_t j = 0; j < swatch->fields_count; j++)
;  0 "" 2
;--- end asm ---
	tst	3,u	;  <variable>.fields_count
	lbeq	L130	; 
	clr	4,s	;  j
L139:
;----- asm -----
;  125 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[104]                const struct SwatchField *field = swatch->fields[j];
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
;  127 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[105]                int8_t xf = field->position.x;
;  0 "" 2
;--- end asm ---
	ldb	1,x	; , <variable>.position.x
	stb	5,s	; , xf
;----- asm -----
;  129 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[106]                int8_t yf = field->position.y;
;  0 "" 2
;--- end asm ---
	ldb	2,x	; , <variable>.position.y
	stb	6,s	; , yf
;----- asm -----
;  131 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[107]                switch (field->action)
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
;  136 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[110]                    setSwatchField(xf, yf, !isSwatchFieldOn(xf, yf));
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , yf
	pshs	b	; 
	ldb	6,s	; , xf
	jsr	_isSwatchFieldOn	; 
	tstb	;  D.1371
	clra		;zero_extendqihi: R:b -> R:d	;  D.1371, tmp55
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
;  138 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[111]                    break;
;  0 "" 2
;--- end asm ---
	leas	3,s	; ,,
	jmp	L131	; 
L133:
;----- asm -----
;  142 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[113]                    setSwatchField(xf, yf, 1);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	,-s	; ,
	ldb	7,s	; , yf
	pshs	b	; 
	ldb	7,s	; , xf
	jsr	_setSwatchField	; 
;----- asm -----
;  144 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[114]                    break;
;  0 "" 2
;--- end asm ---
	leas	2,s	; ,,
	jmp	L131	; 
L134:
;----- asm -----
;  148 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[116]                    setSwatchField(xf, yf, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	7,s	; , yf
	pshs	b	; 
	ldb	7,s	; , xf
	jsr	_setSwatchField	; 
;----- asm -----
;  150 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[117]                    break;
;  0 "" 2
;--- end asm ---
	leas	2,s	; ,,
	bra	L131	; 
L135:
;----- asm -----
;  154 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[119]                    blockX = xf;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , xf
	stb	_blockX	; , blockX
;----- asm -----
;  156 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[120]                    blockY = yf;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , yf
	stb	_blockY	; , blockY
;----- asm -----
;  158 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[121]                    setSplitMode();
;  0 "" 2
;--- end asm ---
	jsr	_setSplitMode	; 
;----- asm -----
;  160 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[122]                    break;
;  0 "" 2
;--- end asm ---
	bra	L131	; 
L136:
;----- asm -----
;  164 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[124]                    blockX2 = xf;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , xf
	stb	_blockX2	; , blockX2
;----- asm -----
;  166 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[125]                    blockY2 = yf;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , yf
	stb	_blockY2	; , blockY2
;----- asm -----
;  168 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[126]                    break;
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
;  174 "C:\data\Vide\..\bloxorz\Vide\source\level.enr.c" 1
	; #ENR#[131]    initLevel();
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
