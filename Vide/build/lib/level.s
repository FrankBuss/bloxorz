;;; gcc for m6809 : Mar 17 2019 11:56:12
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O1
	.module	level.enr.c
; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
;	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4.
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
; -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
; -fno-time-report -I/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include
; -D__INLINE_RUM=1 -DOMMIT_FRAMEPOINTER=1
; /home/frank/data/projects/bloxorz/Vide/source/level.enr.c
; options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
; -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
; -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
; -fguess-branch-probability -fident -fif-conversion -fif-conversion2
; -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
; -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
; -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
; -fpcc-struct-return -fpeephole -fsched-interblock -fsched-spec
; -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
; -fsplit-wide-types -ftoplevel-reorder -ftrapping-math -ftree-ccp
; -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
; -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
; -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
; -ftree-ter -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
; -fzero-initialized-in-bss
; Compiler executable checksum: 74a0323a4f41feb77857e3eae52873ae
	.area	.text
	.globl	_getField
_getField:
	pshs	y,u	;
	leas	-5,s	;,,
	stb	4,s	; x, x
;----- asm -----
; 25 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[24]    char c = 0;
; 0 "" 2
; 27 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[25]    if (x >= 0 && y >= 0 && x < LEVEL_WIDTH && y < LEVEL_HEIGHT) {
; 0 "" 2
;--- end asm ---
	tstb	; x
	blt	L2	;
	tst	11,s	; y
	blt	L2	;
	cmpb	#9	;cmpqi:	; x,
	bgt	L2	;
	ldb	11,s	;, y
	cmpb	#14	;cmpqi:	;,
	bgt	L2	;
;----- asm -----
; 29 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[26]        c = level->geometry[(long int) y*LEVEL_WIDTH + (long int)x];
; 0 "" 2
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	;,
	std	,s	;,
	ldb	4,s	;, x
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,y	;, x
	ldd	,s	;,
	aslb	;
	rola	;
	std	2,s	;,
	aslb	;
	rola	;
	aslb	;
	rola	;
	ldu	2,s	;,
	leax	d,u	; tmp38, tmp37,
	exg	d,y	;, x
	leax	d,x	; tmp39,, tmp39
	exg	d,y	;, x
	exg	d,x	;, tmp40
	addd	[_level]; addhi3,3	;, <variable>.geometry
	exg	d,x	;, tmp40
	ldb	,x	; c,
	bra	L3	;
L2:
	clrb	; c
L3:
;----- asm -----
; 32 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[28]	return c;
; 0 "" 2
;--- end asm ---
	leas	5,s	;,,
	puls	y,u,pc	;
	.globl	_getShifts
_getShifts:
;----- asm -----
; 40 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[35]	return shifts[bit];
; 0 "" 2
;--- end asm ---
	ldx	#_shifts	;
	abx
	ldb	,x	; tmp33
	rts
	.globl	_isSwatchFieldOn
_isSwatchFieldOn:
	pshs	u	;
	leas	-2,s	;,,
	stb	,s	; x, x
;----- asm -----
; 46 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[40]	long int index = (long int) y*LEVEL_WIDTH + (long int)x;
; 0 "" 2
;--- end asm ---
	ldb	6,s	;, y
	lda	#10	;mulqihi3	;
	mul
	tfr	d,x	;, tmp33
	ldb	,s	;, x
	sex		;extendqihi2: R:b -> R:d	;,
	tfr	d,u	;, x
	exg	d,x	;, tmp33
	leau	d,u	; index,, index
;----- asm -----
; 48 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[41]	uint8_t bit = (uint8_t) (index & 7);
; 0 "" 2
; 50 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[42]	index >>= 3;
; 0 "" 2
; 52 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[43]	return (swatchesOn[index] & getShifts(bit)) > 0;
; 0 "" 2
;--- end asm ---
	tfr	u,d	; index,
	asra	;
	rorb	;
	asra	;
	rorb	;
	asra	;
	rorb	;
	tfr	d,x	;, tmp35
	ldb	_swatchesOn,x	;, swatchesOn
	stb	1,s	;, D.1327
	tfr	u,d	;movlsbqihi: R:u -> R:b	; index, index
	andb	#7	; tmp38,
	jsr	_getShifts
	andb	1,s	; tmp40, D.1327
	beq	L8	;
	ldb	#1	; tmp40,
L8:
	leas	2,s	;,,
	puls	u,pc	;
	.globl	_setSwatchField
_setSwatchField:
	pshs	y	;
	leas	-4,s	;,,
	stb	,s	; x, x
;----- asm -----
; 58 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[48]	long int index = (long int) y*LEVEL_WIDTH + (long int)x;
; 0 "" 2
;--- end asm ---
	ldb	8,s	;, y
	lda	#10	;mulqihi3	;
	mul
	tfr	d,x	;, tmp37
	ldb	,s	;, x
	sex		;extendqihi2: R:b -> R:d	;,
; Applied peep: 4-2 (tfr exg 1=1, 2=2)
	tfr	d,y	;, x
; ORG>	tfr	d,y	;, x
; ORG>	exg	d,y	;, x
	leax	d,x	; index,, index
;----- asm -----
; 60 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[49]	uint8_t bit = (uint8_t) (index & 7);
; 0 "" 2
;--- end asm ---
	tfr	x,d	;movlsbqihi: R:x -> R:b	; index, index
	andb	#7	; index,
	stb	2,s	; index, bit
;----- asm -----
; 62 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[50]	index >>= 3;
; 0 "" 2
;--- end asm ---
	tfr	x,d	; index, index.44
	asra	;
	rorb	;
	asra	;
	rorb	;
	asra	;
	rorb	;
;----- asm -----
; 64 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[51]	if (on) {
; 0 "" 2
;--- end asm ---
	tst	9,s	; on
	beq	L11	;
;----- asm -----
; 66 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[52]		swatchesOn[index] |= getShifts(bit);
; 0 "" 2
;--- end asm ---
	ldx	#_swatchesOn	;,
	leay	d,x	; tmp41, index.44,
	ldb	,y	;, swatchesOn
	stb	1,s	;, D.1342
	ldb	2,s	;, bit
	jsr	_getShifts
	orb	1,s	; tmp44, D.1342
	stb	,y	; tmp44, swatchesOn
	bra	L13	;
L11:
;----- asm -----
; 69 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[54]		swatchesOn[index] &= ~getShifts(bit);
; 0 "" 2
;--- end asm ---
	ldx	#_swatchesOn	;,
	leay	d,x	; tmp46, index.44,
	ldb	,y	;, swatchesOn
	stb	3,s	;, temp.45
	ldb	2,s	;, bit
	jsr	_getShifts
	comb	; tmp49
	andb	3,s	; tmp50, temp.45
	stb	,y	; tmp50, swatchesOn
L13:
	leas	4,s	;,,
	puls	y,pc	;
	.globl	_isField
_isField:
	leas	-2,s	;,,
	stb	,s	; x, x
;----- asm -----
; 76 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[60]    char c = getField(x, y);
; 0 "" 2
;--- end asm ---
	ldb	4,s	;, y
	pshs	b	;
	ldb	1,s	;, x
	jsr	_getField
	stb	2,s	;, c
;----- asm -----
; 80 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[63]    if (c == 'l' || c == 'r' || c == 'k' || c == 'q') {
; 0 "" 2
;--- end asm ---
	leas	1,s	;,,
	cmpb	#108	;cmpqi:	;,
	beq	L15	;
	cmpb	#114	;cmpqi:	;,
	beq	L15	;
	cmpb	#107	;cmpqi:	;,
	beq	L15	;
	cmpb	#113	;cmpqi:	;,
	bne	L16	;
L15:
;----- asm -----
; 82 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[64]		if (isSwatchFieldOn(x, y)) {
; 0 "" 2
;--- end asm ---
	ldb	4,s	;, y
	pshs	b	;
	ldb	1,s	;, x
	jsr	_isSwatchFieldOn
	leas	1,s	;,,
	tstb	; D.1356
	beq	L16	;
;----- asm -----
; 84 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[65]			c = 'b';
; 0 "" 2
;--- end asm ---
	ldb	#98	;,
	stb	1,s	;, c
L16:
;----- asm -----
; 90 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[70]    return (uint8_t) (c == 'b' || c == 'e' || c == 's' || c == 'h' || c == 'f' || c == 'v');
; 0 "" 2
;--- end asm ---
	ldb	1,s	;, c
	cmpb	#98	;cmpqi:	;,
	beq	L17	;
	cmpb	#101	;cmpqi:	;,
	beq	L17	;
	cmpb	#115	;cmpqi:	;,
	beq	L17	;
	cmpb	#104	;cmpqi:	;,
	beq	L17	;
	cmpb	#102	;cmpqi:	;,
	beq	L17	;
	cmpb	#118	;cmpqi:	;,
	eorb	#118	; tmp34,
	clra		;zero_extendqihi: R:b -> R:d	; tmp34, tmp35
	addd	#-1; addhi3,3	; tmp36,
	tfr	a,b	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	rolb	;
	rolb	;
	andb	#1	;,
	bra	L19	;
L17:
	ldb	#1	; iftmp.5,
L19:
	leas	2,s	;,,
	rts
	.globl	_x3d
_x3d:
	pshs	u	;
	leas	-2,s	;,,
	stb	,s	; x, x
;----- asm -----
; 161 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[112]    x -= LEVEL_WIDTH / 2 - 4;
; 0 "" 2
; 163 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[113]    return 14 * x - 6 * z;
; 0 "" 2
;--- end asm ---
	ldb	6,s	;, z
	lda	#-6	;mulqihi3	;
	mul
	tfr	d,x	;, tmp31
	ldb	,s	; tmp32, x
	decb	; tmp32
	lda	#14	;mulqihi3	;
	mul
	tfr	d,u	;, tmp33
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp31,
	stb	1,s	;,
	tfr	u,d	;movlsbqihi: R:u -> R:b	; tmp33, tmp35
	addb	1,s	; tmp30,
	leas	2,s	;,,
	puls	u,pc	;
	.globl	_y3d
_y3d:
	leas	-3,s	;,,
	stb	2,s	; x, x
;----- asm -----
; 170 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[119]    y -= LEVEL_HEIGHT / 2;
; 0 "" 2
; 172 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[120]    return 3 * x + 13 * y + 8 * z;
; 0 "" 2
;--- end asm ---
	ldb	5,s	; tmp32, y
	addb	#-7	; tmp32,
	lda	#13	;mulqihi3	;
	mul
	tfr	d,x	;, tmp33
	ldb	6,s	;, z
	aslb	;
	aslb	;
	aslb	;
	stb	1,s	;,
	tfr	x,d	;movlsbqihi: R:x -> R:b	; tmp33, tmp36
	addb	1,s	; tmp36,
	stb	,s	; tmp36,
	ldb	2,s	; tmp38, x
	aslb	; tmp38
	addb	2,s	; tmp39, x
	addb	,s	; tmp31,
	leas	3,s	;,,
	rts
	.globl	_addTarget
_addTarget:
	pshs	u	;
	leas	-16,s	;,,
	stb	1,s	; x, x
;----- asm -----
; 251 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[171]    lineX0[lineCount] = x3d(x, y);
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	2,s	;, lineCount.14
	ldb	20,s	;, y
	pshs	b	;
	ldb	2,s	;, x
	jsr	_x3d
	stb	1,s	;, D.1471
	ldb	3,s	;, lineCount.14
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.14
	ldb	1,s	;, D.1471
	stb	_lineX0,x	;, lineX0
;----- asm -----
; 253 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[172]    lineY0[lineCount] = y3d(x, 0, y);
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	11,s	;, lineCount.69
	ldb	21,s	;, y
	pshs	b	;
	clr	,-s	;
	ldb	4,s	;, x
	jsr	_y3d
	stb	3,s	;, D.1472
	ldb	13,s	;, lineCount.69
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.69
	ldb	3,s	;, D.1472
	stb	_lineY0,x	;, lineY0
;----- asm -----
; 255 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[173]    lineX1[lineCount] = x3d(x + 1, y + 1);
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	14,s	;, lineCount.70
	ldb	23,s	;, y
	incb	;
	stb	6,s	;, D.1473
	ldb	4,s	;, x
	incb	;
	stb	7,s	;, D.1474
	ldb	6,s	;, D.1473
	pshs	b	;
	ldb	8,s	;, D.1474
	jsr	_x3d
	stb	4,s	;, D.1475
	ldb	15,s	;, lineCount.70
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.70
	ldb	4,s	;, D.1475
	stb	_lineX1,x	;, lineX1
;----- asm -----
; 257 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[174]    lineY1[lineCount] = y3d(x + 1, 0, y + 1);
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	16,s	;, lineCount.71
	ldb	7,s	;, D.1473
	pshs	b	;
	clr	,-s	;
	ldb	10,s	;, D.1474
	jsr	_y3d
	stb	6,s	;, D.1476
	ldb	18,s	;, lineCount.71
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.71
	ldb	6,s	;, D.1476
	stb	_lineY1,x	;, lineY1
;----- asm -----
; 259 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[175]    lineCount++;
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	incb	;
	stb	11,s	;, lineCount.15
	stb	_lineCount	;, lineCount
;----- asm -----
; 262 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[177]    lineX0[lineCount] = x3d(x + 1, y);
; 0 "" 2
;--- end asm ---
	ldb	26,s	;, y
	pshs	b	;
	ldb	11,s	;, D.1474
	jsr	_x3d
	stb	13,s	;, D.1478
	ldb	12,s	;, lineCount.15
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.15
	leax	_lineX0,x	; tmp61,, lineCount.15
	ldb	13,s	;, D.1478
	stb	,x	;, lineX0
;----- asm -----
; 264 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[178]    lineY0[lineCount] = y3d(x + 1, 0, y);
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	20,s	;, lineCount.73
	ldb	27,s	;, y
	pshs	b	;
	clr	,-s	;
	ldb	13,s	;, D.1474
	jsr	_y3d
	stb	16,s	;, D.1479
	ldb	22,s	;, lineCount.73
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.73
	leax	_lineY0,x	; tmp64,, lineCount.73
	ldb	16,s	;, D.1479
	stb	,x	;, lineY0
;----- asm -----
; 266 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[179]    lineX1[lineCount] = x3d(x, y + 1);
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	23,s	;, lineCount.74
	leas	9,s	;,,
	ldb	3,s	;, D.1473
	pshs	b	;
	ldb	2,s	;, x
	jsr	_x3d
	stb	9,s	;, D.1480
	ldb	15,s	;, lineCount.74
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.74
	leax	_lineX1,x	; tmp67,, lineCount.74
	ldb	9,s	;, D.1480
	stb	,x	;, lineX1
;----- asm -----
; 268 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[180]    lineY1[lineCount] = y3d(x, 0, y + 1);
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	16,s	;, lineCount.75
	ldb	4,s	;, D.1473
	pshs	b	;
	clr	,-s	;
	ldb	4,s	;, x
	jsr	_y3d
	stb	12,s	;, D.1481
	ldb	18,s	;, lineCount.75
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.75
	leax	_lineY1,x	; tmp70,, lineCount.75
	ldb	12,s	;, D.1481
	stb	,x	;, lineY1
;----- asm -----
; 270 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[181]    lineCount++;
; 0 "" 2
;--- end asm ---
	inc	_lineCount	; lineCount
	leas	19,s	;,,
	puls	u,pc	;
	.globl	_initSwatches
_initSwatches:
	pshs	y,u	;
	leas	-2,s	;,,
;----- asm -----
; 383 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[255]    for (uint8_t i = 0; i < sizeof(swatchesOn); i++) {
; 0 "" 2
;--- end asm ---
	ldx	#_swatchesOn	; ivtmp.110,
L28:
;----- asm -----
; 385 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[256]        swatchesOn[i] = 0;
; 0 "" 2
;--- end asm ---
	clr	,x+	; swatchesOn
	cmpx	#_swatchesOn+19	;cmphi:	; ivtmp.110,
	bne	L28	;
;----- asm -----
; 389 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[259]	long int index;
; 0 "" 2
; 391 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[260]	int8_t x = 0;
; 0 "" 2
; 393 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[261]	int8_t y = 0;
; 0 "" 2
; 395 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[262]	const char* geometry = level->geometry;
; 0 "" 2
; 397 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[263]	for (y = 0; y < LEVEL_HEIGHT; y++) {
; 0 "" 2
;--- end asm ---
	ldy	[_level]	; ivtmp.102, <variable>.geometry
	clr	1,s	; y
L32:
;----- asm -----
; 399 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[264]		for (x = 0; x < LEVEL_WIDTH; x++) {
; 0 "" 2
;--- end asm ---
	leau	,y	; ivtmp.111, ivtmp.102
	clr	,s	; x
L31:
;----- asm -----
; 401 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[265]			index = (long int) y*LEVEL_WIDTH + (long int)x;
; 0 "" 2
; 403 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[266]			char c0 = geometry[index];
; 0 "" 2
;--- end asm ---
	ldb	,u	; c0,* ivtmp.111
;----- asm -----
; 405 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[267]			if (c0 == 'k' || c0 == 'q') {
; 0 "" 2
;--- end asm ---
	cmpb	#107	;cmpqi:	; c0,
	beq	L29	;
	cmpb	#113	;cmpqi:	; c0,
	bne	L30	;
L29:
;----- asm -----
; 407 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[268]				setSwatchField(x, y, 1);
; 0 "" 2
;--- end asm ---
	ldb	#1	;,
	stb	,-s	;,
	ldb	2,s	;, y
	pshs	b	;
	ldb	2,s	;, x
	jsr	_setSwatchField
	leas	2,s	;,,
L30:
	inc	,s	; x
	leau	1,u	; ivtmp.111,, ivtmp.111
	ldb	,s	;, x
	cmpb	#10	;cmpqi:	;,
	bne	L31	;
	inc	1,s	; y
	leay	10,y	; ivtmp.102,, ivtmp.102
	ldb	1,s	;, y
	cmpb	#15	;cmpqi:	;,
	lbne	L32	;
	leas	2,s	;,,
	puls	y,u,pc	;
LC0:
	.byte	84,79,79,32,77,65,78,89
	.byte	32,76,73,78,69,83,-128,0
	.globl	_addSplit
_addSplit:
	leas	-7,s	;,,
	stb	1,s	; x0, x0
;----- asm -----
; 209 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[144]    lineX0[lineCount] = x3d(x0, y0) + 6;
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	2,s	;, lineCount.12
	ldb	9,s	;, y0
	pshs	b	;
	ldb	2,s	;, x0
	jsr	_x3d
	stb	1,s	;, D.1439
	ldb	3,s	;, lineCount.12
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.12
	ldb	1,s	;, D.1439
	addb	#6	;,
	stb	_lineX0,x	;, lineX0
;----- asm -----
; 211 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[145]    lineY0[lineCount] = y3d(x0, 0, y0) + 3;
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	5,s	;, lineCount.117
	ldb	10,s	;, y0
	pshs	b	;
	clr	,-s	;
	ldb	4,s	;, x0
	jsr	_y3d
	stb	3,s	;, D.1441
	ldb	7,s	;, lineCount.117
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.117
	ldb	3,s	;, D.1441
	addb	#3	;,
	stb	_lineY0,x	;, lineY0
;----- asm -----
; 213 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[146]    lineX1[lineCount] = x3d(x0, y0 + 1) + 8;
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	8,s	;, lineCount.118
	ldb	12,s	;, y0
	incb	;
	stb	6,s	;, D.1443
	pshs	b	;
	ldb	5,s	;, x0
	jsr	_x3d
	stb	4,s	;, D.1444
	ldb	9,s	;, lineCount.118
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.118
	ldb	4,s	;, D.1444
	addb	#8	;,
	stb	_lineX1,x	;, lineX1
;----- asm -----
; 215 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[147]    lineY1[lineCount] = y3d(x0, 0, y0 + 1) + 0;
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	10,s	;, lineCount.119
	ldb	7,s	;, D.1443
	pshs	b	;
	clr	,-s	;
	ldb	7,s	;, x0
	jsr	_y3d
	stb	6,s	;, D.1446
	ldb	12,s	;, lineCount.119
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.119
	ldb	6,s	;, D.1446
	stb	_lineY1,x	;, lineY1
;----- asm -----
; 218 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[149]    lineCount++;
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	; lineCount.13, lineCount
	incb	; lineCount.13
	stb	_lineCount	; lineCount.13, lineCount
;----- asm -----
; 220 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[150]    if (lineCount >= MAX_LINES) {
; 0 "" 2
;--- end asm ---
	leas	6,s	;,,
	cmpb	#119	;cmpqi:	; lineCount.13,
	bls	L39	;
;----- asm -----
; 222 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[151]        runtimeError("TOO MANY LINES�");
; 0 "" 2
;--- end asm ---
	ldx	#LC0	;,
	jsr	_runtimeError
L39:
	leas	7,s	;,,
	rts
	.globl	_addLineImpl
_addLineImpl:
	leas	-6,s	;,,
	stb	1,s	; x0, x0
;----- asm -----
; 178 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[125]    lineX0[lineCount] = x3d(x0, y0);
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	2,s	;, lineCount.10
	ldb	8,s	;, y0
	pshs	b	;
	ldb	2,s	;, x0
	jsr	_x3d
	stb	1,s	;, D.1421
	ldb	3,s	;, lineCount.10
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.10
	ldb	1,s	;, D.1421
	stb	_lineX0,x	;, lineX0
;----- asm -----
; 180 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[126]    lineY0[lineCount] = y3d(x0, 0, y0);
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	4,s	;, lineCount.127
	ldb	9,s	;, y0
	pshs	b	;
	clr	,-s	;
	ldb	4,s	;, x0
	jsr	_y3d
	stb	3,s	;, D.1422
	ldb	6,s	;, lineCount.127
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.127
	ldb	3,s	;, D.1422
	stb	_lineY0,x	;, lineY0
;----- asm -----
; 182 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[127]    lineX1[lineCount] = x3d(x1, y1);
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	7,s	;, lineCount.128
	ldb	13,s	;, y1
	pshs	b	;
	ldb	13,s	;, x1
	jsr	_x3d
	stb	4,s	;, D.1423
	ldb	8,s	;, lineCount.128
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.128
	ldb	4,s	;, D.1423
	stb	_lineX1,x	;, lineX1
;----- asm -----
; 184 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[128]    lineY1[lineCount] = y3d(x1, 0, y1);
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	stb	9,s	;, lineCount.129
	ldb	14,s	;, y1
	pshs	b	;
	clr	,-s	;
	ldb	15,s	;, x1
	jsr	_y3d
	stb	6,s	;, D.1424
	ldb	11,s	;, lineCount.129
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.129
	ldb	6,s	;, D.1424
	stb	_lineY1,x	;, lineY1
;----- asm -----
; 186 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[129]	if (half) {
; 0 "" 2
;--- end asm ---
	leas	6,s	;,,
	tst	11,s	; half
	beq	L41	;
;----- asm -----
; 188 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[130]		lineX0[lineCount] -= 1;
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	;, lineCount
	clra		;zero_extendqihi: R:b -> R:d	;,
	tfr	d,x	;, lineCount.130
	dec	_lineX0,x	; lineX0
;----- asm -----
; 190 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[131]		lineY0[lineCount] += 4;
; 0 "" 2
;--- end asm ---
	ldb	_lineY0,x	;, lineY0
	addb	#4	;,
	stb	_lineY0,x	;, lineY0
;----- asm -----
; 192 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[132]		lineX1[lineCount] -= 6;
; 0 "" 2
;--- end asm ---
	ldb	_lineX1,x	;, lineX1
	addb	#-6	;,
	stb	_lineX1,x	;, lineX1
;----- asm -----
; 194 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[133]		lineY1[lineCount] += 3;
; 0 "" 2
;--- end asm ---
	ldb	_lineY1,x	;, lineY1
	addb	#3	;,
	stb	_lineY1,x	;, lineY1
L41:
;----- asm -----
; 198 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[136]    lineCount++;
; 0 "" 2
;--- end asm ---
	ldb	_lineCount	; lineCount.11, lineCount
	incb	; lineCount.11
	stb	_lineCount	; lineCount.11, lineCount
;----- asm -----
; 200 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[137]    if (lineCount >= MAX_LINES) {
; 0 "" 2
;--- end asm ---
	cmpb	#119	;cmpqi:	; lineCount.11,
	bls	L43	;
;----- asm -----
; 202 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[138]        runtimeError("TOO MANY LINES�");
; 0 "" 2
;--- end asm ---
	ldx	#LC0	;,
	jsr	_runtimeError
L43:
	leas	6,s	;,,
	rts
	.globl	_addLine
_addLine:
	leas	-5,s	;,,
	stb	,s	; x0, x0
;----- asm -----
; 229 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[157]	int test = 5;
; 0 "" 2
; 231 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[158]	while (x1 - x0 > test) {
; 0 "" 2
;--- end asm ---
	ldb	8,s	; D.1463, x1
	subb	,s	; D.1463, x0
	cmpb	#5	;cmpqi:	; D.1463,
	ble	L45	;
	stb	2,s	; D.1463, ivtmp.152
L47:
;----- asm -----
; 233 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[159]		addLineImpl(x0, y0, x0 + test, y1, half);
; 0 "" 2
;--- end asm ---
	ldb	,s	;, x0
	addb	#5	;,
	stb	3,s	;, x0.153
	ldb	10,s	;, half
	pshs	b	;
	ldb	10,s	;, y1
	pshs	b	;
	ldb	5,s	;, x0.153
	pshs	b	;
	ldb	10,s	;, y0
	pshs	b	;
	ldb	4,s	;, x0
	jsr	_addLineImpl
;----- asm -----
; 235 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[160]		x0 += test;
; 0 "" 2
;--- end asm ---
	ldb	6,s	;, ivtmp.152
	addb	#-5	;,
	stb	6,s	;, ivtmp.152
	leas	4,s	;,,
	cmpb	#5	;cmpqi:	;,
	ble	L46	;
	ldb	3,s	;, x0.153
	stb	,s	;, x0
	bra	L47	;
L46:
	ldb	3,s	;, x0.153
	stb	,s	;, x0
L45:
;----- asm -----
; 238 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[162]	while (y1 - y0 > test) {
; 0 "" 2
;--- end asm ---
	ldb	9,s	; D.1465, y1
	subb	7,s	; D.1465, y0
	cmpb	#5	;cmpqi:	; D.1465,
	ble	L48	;
	stb	1,s	; D.1465, ivtmp.144
L50:
;----- asm -----
; 240 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[163]		addLineImpl(x0, y0, x1, y0 + test, half);
; 0 "" 2
;--- end asm ---
	ldb	7,s	;, y0
	addb	#5	;,
	stb	4,s	;, y0.154
	ldb	10,s	;, half
	pshs	b	;
	ldb	5,s	;, y0.154
	pshs	b	;
	ldb	10,s	;, x1
	pshs	b	;
	ldb	10,s	;, y0
	pshs	b	;
	ldb	4,s	;, x0
	jsr	_addLineImpl
;----- asm -----
; 242 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[164]		y0 += test;
; 0 "" 2
;--- end asm ---
	ldb	5,s	;, ivtmp.144
	addb	#-5	;,
	stb	5,s	;, ivtmp.144
	leas	4,s	;,,
	cmpb	#5	;cmpqi:	;,
	ble	L49	;
	ldb	4,s	;, y0.154
	stb	7,s	;, y0
	bra	L50	;
L49:
	ldb	4,s	;, y0.154
	stb	7,s	;, y0
L48:
;----- asm -----
; 245 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[166]	addLineImpl(x0, y0, x1, y1, half);
; 0 "" 2
;--- end asm ---
	ldb	10,s	;, half
	pshs	b	;
	ldb	10,s	;, y1
	pshs	b	;
	ldb	10,s	;, x1
	pshs	b	;
	ldb	10,s	;, y0
	pshs	b	;
	ldb	4,s	;, x0
	jsr	_addLineImpl
	leas	9,s	;,,
	rts
	.globl	_setupY
_setupY:
	leas	-5,s	;,,
;----- asm -----
; 350 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[234]	int8_t x = 0;
; 0 "" 2
; 352 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[235]	int8_t y = 0;
; 0 "" 2
; 354 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[236]	for (x = -1; x < LEVEL_WIDTH; x++) {
; 0 "" 2
;--- end asm ---
	ldb	#-1	;,
	stb	1,s	;, x
L58:
;----- asm -----
; 356 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[237]		int8_t y0 = -1;
; 0 "" 2
; 358 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[238]		int8_t y1 = -1;
; 0 "" 2
; 360 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[239]		for (y = 0; y <= LEVEL_HEIGHT; y++) {
; 0 "" 2
;--- end asm ---
	clr	2,s	; y
	ldb	#-1	;,
	stb	3,s	;, y0
	stb	4,s	;, y1
L57:
;----- asm -----
; 362 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[240]			if (isField(x, y) || isField(x + 1, y)) {
; 0 "" 2
;--- end asm ---
	ldb	2,s	;, y
	pshs	b	;
	ldb	2,s	;, x
	jsr	_isField
	leas	1,s	;,,
	tstb	; D.1526
	bne	L53	;
	ldb	1,s	;, x
	incb	;
	stb	,s	;, D.1527
	ldb	2,s	;, y
	pshs	b	;
	ldb	1,s	;, D.1527
	jsr	_isField
	leas	1,s	;,,
	tstb	; D.1528
	beq	L54	;
L53:
;----- asm -----
; 364 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[241]				if (y0 < 0) y0 = y;
; 0 "" 2
;--- end asm ---
	tst	3,s	; y0
	bge	L55	;
	ldb	2,s	;, y
	stb	3,s	;, y0
L55:
;----- asm -----
; 366 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[242]				y1 = y;
; 0 "" 2
;--- end asm ---
	ldb	2,s	;, y
	stb	4,s	;, y1
	bra	L56	;
L54:
;----- asm -----
; 369 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[244]				if (y0 >= 0) {
; 0 "" 2
;--- end asm ---
	tst	3,s	; y0
	blt	L56	;
;----- asm -----
; 371 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[245]					addLine(x + 1, y0, x + 1, y1 + 1, 0);
; 0 "" 2
;--- end asm ---
	clr	,-s	;
	ldb	5,s	;, y1
	incb	;
	pshs	b	;
	ldb	2,s	;, D.1527
	pshs	b	;
	ldb	6,s	;, y0
	pshs	b	;
	ldb	4,s	;, D.1527
	jsr	_addLine
;----- asm -----
; 373 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[246]					y0 = -1;
; 0 "" 2
;--- end asm ---
	ldb	#-1	;,
	stb	7,s	;, y0
	leas	4,s	;,,
L56:
	inc	2,s	; y
	ldb	2,s	;, y
	cmpb	#16	;cmpqi:	;,
	lbne	L57	;
	inc	1,s	; x
	ldb	1,s	;, x
	cmpb	#10	;cmpqi:	;,
	lbne	L58	;
	leas	5,s	;,,
	rts
	.globl	_setupX
_setupX:
	pshs	y,u	;
	leas	-7,s	;,,
;----- asm -----
; 283 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[193]	long int index;
; 0 "" 2
; 285 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[194]	int8_t x = 0;
; 0 "" 2
; 287 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[195]	int8_t y = 0;
; 0 "" 2
; 289 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[196]	const char* geometry = level->geometry;
; 0 "" 2
; 291 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[197]	for (y = -1; y < LEVEL_HEIGHT; y++) {
; 0 "" 2
;--- end asm ---
	ldx	[_level]	;, <variable>.geometry
	leay	-10,x	; ivtmp.199,,
	clr	6,s	; ivtmp.193
L75:
	ldb	6,s	;, ivtmp.193
	decb	;
	stb	2,s	;, y
;----- asm -----
; 293 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[198]		int8_t x0 = -1;
; 0 "" 2
; 295 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[199]		int8_t x1 = -1;
; 0 "" 2
; 297 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[200]		for (x = 0; x <= LEVEL_WIDTH; x++) {
; 0 "" 2
;--- end asm ---
	leau	,y	; ivtmp.202, ivtmp.199
	ldb	#-1	;,
	stb	3,s	;, x0
	stb	4,s	;, x1
	ldb	#1	;,
	stb	5,s	;, ivtmp.191
L74:
	ldb	5,s	;, ivtmp.191
	decb	;
	stb	1,s	;, x
;----- asm -----
; 299 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[201]			char c0 = 0;
; 0 "" 2
; 301 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[202]			index = (long int) y*LEVEL_WIDTH + (long int)x;
; 0 "" 2
; 303 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[203]			if (y >= 0 && x < LEVEL_WIDTH) {
; 0 "" 2
;--- end asm ---
	tst	2,s	; y
	blt	L63	;
	cmpb	#9	;cmpqi:	;,
	bgt	L63	;
;----- asm -----
; 305 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[204]				c0 = geometry[index];
; 0 "" 2
;--- end asm ---
	ldb	,u	; c0,* ivtmp.202
	bra	L64	;
L63:
	clrb	; c0
L64:
;----- asm -----
; 308 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[206]			if (c0 == 'e') {
; 0 "" 2
;--- end asm ---
	cmpb	#101	;cmpqi:	; c0,
	bne	L65	;
;----- asm -----
; 310 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[207]				addTarget(x, y);
; 0 "" 2
;--- end asm ---
	ldb	2,s	;, y
	pshs	b	;
	ldb	2,s	;, x
	jsr	_addTarget
;----- asm -----
; 312 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[208]				endX = x;
; 0 "" 2
;--- end asm ---
	ldb	2,s	;, x
	stb	_endX	;, endX
;----- asm -----
; 314 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[209]				endY = y;
; 0 "" 2
;--- end asm ---
	ldb	3,s	;, y
	stb	_endY	;, endY
	leas	1,s	;,,
	lbra	L66	;
L65:
	cmpb	#118	;cmpqi:	; c0,
	bne	L67	;
;----- asm -----
; 317 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[211]				addSplit(x, y);
; 0 "" 2
;--- end asm ---
	ldb	2,s	;, y
	pshs	b	;
	ldb	2,s	;, x
	jsr	_addSplit
	leas	1,s	;,,
	lbra	L66	;
L67:
	cmpb	#115	;cmpqi:	; c0,
	bne	L68	;
;----- asm -----
; 320 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[213]				addLine(x, y, x + 1, y + 1, 0);
; 0 "" 2
;--- end asm ---
	clr	,-s	;
	ldb	7,s	;, ivtmp.193
	pshs	b	;
	ldb	7,s	;, ivtmp.191
	pshs	b	;
	ldb	5,s	;, y
	pshs	b	;
	ldb	5,s	;, x
	jsr	_addLine
	leas	4,s	;,,
	bra	L66	;
L68:
	cmpb	#104	;cmpqi:	; c0,
	bne	L69	;
;----- asm -----
; 323 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[215]				addLine(x + 1, y, x, y + 1, 0);
; 0 "" 2
;--- end asm ---
	clr	,-s	;
	ldb	7,s	;, ivtmp.193
	pshs	b	;
	ldb	3,s	;, x
	pshs	b	;
	ldb	5,s	;, y
	pshs	b	;
	ldb	9,s	;, ivtmp.191
	jsr	_addLine
	leas	4,s	;,,
	bra	L66	;
L69:
	cmpb	#102	;cmpqi:	; c0,
	bne	L66	;
;----- asm -----
; 326 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[217]				addLine(x, y, x + 1, y, 1);
; 0 "" 2
;--- end asm ---
	ldb	#1	;,
	stb	,-s	;,
	ldb	3,s	;, y
	pshs	b	;
	ldb	7,s	;, ivtmp.191
	pshs	b	;
	ldb	5,s	;, y
	pshs	b	;
	ldb	5,s	;, x
	jsr	_addLine
	leas	4,s	;,,
L66:
;----- asm -----
; 329 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[219]            if (isField(x, y) || isField(x, y + 1)) {
; 0 "" 2
;--- end asm ---
	ldb	2,s	;, y
	pshs	b	;
	ldb	2,s	;, x
	jsr	_isField
	leas	1,s	;,,
	tstb	; D.1508
	bne	L70	;
	ldb	6,s	;, ivtmp.193
	stb	,s	;, D.1503
	pshs	b	;
	ldb	2,s	;, x
	jsr	_isField
	leas	1,s	;,,
	tstb	; D.1509
	beq	L71	;
L70:
;----- asm -----
; 331 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[220]				if (x0 < 0) x0 = x;
; 0 "" 2
;--- end asm ---
	tst	3,s	; x0
	bge	L72	;
	ldb	1,s	;, x
	stb	3,s	;, x0
L72:
;----- asm -----
; 333 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[221]				x1 = x;
; 0 "" 2
;--- end asm ---
	ldb	1,s	;, x
	stb	4,s	;, x1
	bra	L73	;
L71:
;----- asm -----
; 336 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[223]				if (x0 >= 0) {
; 0 "" 2
;--- end asm ---
	tst	3,s	; x0
	blt	L73	;
;----- asm -----
; 338 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[224]					addLine(x0, y + 1, x1 + 1, y + 1, 0);
; 0 "" 2
;--- end asm ---
	clr	,-s	;
	ldb	1,s	;, D.1503
	pshs	b	;
	ldb	6,s	;, x1
	incb	;
	pshs	b	;
	ldb	3,s	;, D.1503
	pshs	b	;
	ldb	7,s	;, x0
	jsr	_addLine
;----- asm -----
; 340 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[225]					x0 = -1;
; 0 "" 2
;--- end asm ---
	ldb	#-1	;,
	stb	7,s	;, x0
	leas	4,s	;,,
L73:
	inc	5,s	; ivtmp.191
	leau	1,u	; ivtmp.202,, ivtmp.202
	ldb	5,s	;, ivtmp.191
	cmpb	#12	;cmpqi:	;,
	lbne	L74	;
	inc	6,s	; ivtmp.193
	leay	10,y	; ivtmp.199,, ivtmp.199
	ldb	6,s	;, ivtmp.193
	cmpb	#16	;cmpqi:	;,
	lbne	L75	;
	leas	7,s	;,,
	puls	y,u,pc	;
	.globl	_initLevel
_initLevel:
;----- asm -----
; 416 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[276]    lineCount = 0;
; 0 "" 2
;--- end asm ---
	clr	_lineCount	; lineCount
;----- asm -----
; 418 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[277]    setupX();
; 0 "" 2
;--- end asm ---
	jsr	_setupX
;----- asm -----
; 420 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[278]    setupY();
; 0 "" 2
;--- end asm ---
	jsr	_setupY
	rts
	.globl	_swatchSwitch
_swatchSwitch:
	pshs	u	;
	leas	-7,s	;,,
	stb	2,s	; x, x
;----- asm -----
; 96 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[75]	if (splitMode) return;
; 0 "" 2
;--- end asm ---
	tst	_splitMode	; splitMode
	lbne	L95	;
;----- asm -----
; 98 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[76]    for (uint8_t i = 0; i < level->swatches_count; i++) {
; 0 "" 2
;--- end asm ---
	ldx	_level	; level.7, level
	tst	4,x	; <variable>.swatches_count
	lbeq	L83	;
	clr	3,s	; i
L94:
;----- asm -----
; 100 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[77]        const struct Swatch* swatch = level->swatches[i];
; 0 "" 2
;--- end asm ---
	ldb	3,s	;, i
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	leax	d,x	; tmp43, tmp42, level.7
	ldu	5,x	; swatch, <variable>.swatches
;----- asm -----
; 102 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[78]		if (swatch->position.x == x && swatch->position.y == y) {
; 0 "" 2
;--- end asm ---
	ldb	2,s	;, x
	cmpb	1,u	;cmpqi:(R)	;, <variable>.position.x
	lbne	L84	;
	ldb	11,s	;, y
	cmpb	2,u	;cmpqi:(R)	;, <variable>.position.y
	lbne	L84	;
;----- asm -----
; 104 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[79]            for (uint8_t j = 0; j < swatch->fields_count; j++) {
; 0 "" 2
;--- end asm ---
	tst	3,u	; <variable>.fields_count
	lbeq	L84	;
	clr	4,s	; j
L93:
;----- asm -----
; 106 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[80]                const struct SwatchField* field = swatch->fields[j];
; 0 "" 2
;--- end asm ---
	ldb	4,s	;, j
	clra		;zero_extendqihi: R:b -> R:d	;,
	addd	#2; addhi3,3	; tmp46,
	aslb	;
	rola	;
	leax	d,u	; tmp48, tmp47, swatch
	ldx	,x	; field, <variable>.fields
;----- asm -----
; 108 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[81]		       int8_t xf = field->position.x;
; 0 "" 2
;--- end asm ---
	ldb	1,x	;, <variable>.position.x
	stb	5,s	;, xf
;----- asm -----
; 110 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[82]		       int8_t yf = field->position.y;
; 0 "" 2
;--- end asm ---
	ldb	2,x	;, <variable>.position.y
	stb	6,s	;, yf
;----- asm -----
; 112 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[83]                switch (field->action) {
; 0 "" 2
;--- end asm ---
	ldb	,x	;, <variable>.action
	cmpb	#4	;cmpqi:	;,
	lbhi	L85	;
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp51
	jmp	[L91,x]	;, tmp51
L91:
	.word	L86
	.word	L87
	.word	L88
	.word	L89
	.word	L90
L86:
;----- asm -----
; 116 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[85]					setSwatchField(xf, yf, !isSwatchFieldOn(xf, yf));
; 0 "" 2
;--- end asm ---
	ldb	6,s	;, yf
	pshs	b	;
	ldb	6,s	;, xf
	jsr	_isSwatchFieldOn
	tstb	; D.1391
	clra		;zero_extendqihi: R:b -> R:d	; D.1391, tmp55
	addd	#-1; addhi3,3	; tmp56,
	tfr	a,b	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	rolb	;
	rolb	;
	andb	#1	;,
	pshs	b	; tmp54
	ldb	8,s	;, yf
	pshs	b	;
	ldb	8,s	;, xf
	jsr	_setSwatchField
;----- asm -----
; 118 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[86]					break;
; 0 "" 2
;--- end asm ---
	leas	3,s	;,,
	lbra	L85	;
L87:
;----- asm -----
; 122 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[88]					setSwatchField(xf, yf, 1);
; 0 "" 2
;--- end asm ---
	ldb	#1	;,
	stb	,-s	;,
	ldb	7,s	;, yf
	pshs	b	;
	ldb	7,s	;, xf
	jsr	_setSwatchField
;----- asm -----
; 124 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[89]					break;
; 0 "" 2
;--- end asm ---
	leas	2,s	;,,
	lbra	L85	;
L88:
;----- asm -----
; 128 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[91]					setSwatchField(xf, yf, 0);
; 0 "" 2
;--- end asm ---
	clr	,-s	;
	ldb	7,s	;, yf
	pshs	b	;
	ldb	7,s	;, xf
	jsr	_setSwatchField
;----- asm -----
; 130 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[92]					break;
; 0 "" 2
;--- end asm ---
	leas	2,s	;,,
	bra	L85	;
L89:
;----- asm -----
; 134 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[94]					blockX = xf;
; 0 "" 2
;--- end asm ---
	ldb	5,s	;, xf
	stb	_blockX	;, blockX
;----- asm -----
; 136 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[95]					blockY = yf;
; 0 "" 2
;--- end asm ---
	ldb	6,s	;, yf
	stb	_blockY	;, blockY
;----- asm -----
; 138 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[96]					setSplitMode();
; 0 "" 2
;--- end asm ---
	jsr	_setSplitMode
;----- asm -----
; 140 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[97]					break;
; 0 "" 2
;--- end asm ---
	bra	L85	;
L90:
;----- asm -----
; 144 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[99]					blockX2 = xf;
; 0 "" 2
;--- end asm ---
	ldb	5,s	;, xf
	stb	_blockX2	;, blockX2
;----- asm -----
; 146 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[100]					blockY2 = yf;
; 0 "" 2
;--- end asm ---
	ldb	6,s	;, yf
	stb	_blockY2	;, blockY2
;----- asm -----
; 148 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[101]					break;
; 0 "" 2
;--- end asm ---
L85:
	inc	4,s	; j
	ldb	4,s	;, j
	cmpb	3,u	;cmpqi:(R)	;, <variable>.fields_count
	lblo	L93	;
L84:
	inc	3,s	; i
	ldx	_level	; level.7, level
	ldb	3,s	;, i
	cmpb	4,x	;cmpqi:(R)	;, <variable>.swatches_count
	lblo	L94	;
L83:
;----- asm -----
; 154 "/home/frank/data/projects/bloxorz/Vide/source/level.enr.c" 1
	; #ENR#[106]	initLevel();
; 0 "" 2
;--- end asm ---
	jsr	_initLevel
L95:
	leas	7,s	;,,
	puls	u,pc	;
	.globl	_lineCount
	.area	.data
_lineCount:
	.byte	0
	.globl	_endX
_endX:
	.byte	0
	.globl	_endY
_endY:
	.byte	0
	.globl	_levelNumber
_levelNumber:
	.byte	0
	.globl	_shifts
	.area	.text
_shifts:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.area	.bss
	.globl	_level
_level:	.blkb	2
	.globl	_swatchesOn
_swatchesOn:	.blkb	19
	.globl	_lineX0
_lineX0:	.blkb	120
	.globl	_lineY0
_lineY0:	.blkb	120
	.globl	_lineX1
_lineX1:	.blkb	120
	.globl	_lineY1
_lineY1:	.blkb	120
