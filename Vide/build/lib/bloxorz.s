;;; gcc for m6809 : Sep 13 2017 10:25:42
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	bloxorz.enr.c
;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;  options passed:  -O3 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
;  -fno-time-report -I/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include
;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
;  -I/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/include
;  /home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c
;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
;  -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
;  -fcrossjumping -fcse-follow-jumps -fdefer-pop
;  -fdelete-null-pointer-checks -fearly-inlining
;  -feliminate-unused-debug-types -fexpensive-optimizations
;  -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
;  -finline-functions -finline-functions-called-once
;  -finline-small-functions -fipa-pure-const -fipa-reference -fivopts
;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
;  -foptimize-register-move -foptimize-sibling-calls -fpcc-struct-return
;  -fpeephole -fpeephole2 -fpredictive-commoning -fregmove -freorder-blocks
;  -freorder-functions -frerun-cse-after-loop -fsched-interblock
;  -fsched-spec -fsched-stalled-insns-dep -fsigned-zeros
;  -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
;  -fstrict-overflow -fthread-jumps -ftoplevel-reorder -ftrapping-math
;  -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
;  -ftree-pre -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink
;  -ftree-sra -ftree-store-ccp -ftree-ter -ftree-vect-loop-version
;  -ftree-vectorize -ftree-vrp -funit-at-a-time -funswitch-loops
;  -fverbose-asm -fzero-initialized-in-bss
;  Compiler executable checksum: 2c98d3c5ec6c12badb1abdde57df156f
	.area .text
	.globl _itoa
_itoa:
	pshs	y,u	; 
	leas	-16,s	; ,,
;----- asm -----
;  265 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[247]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	10,s	; , muls
	ldd	#10	; ,
	std	12,s	; , muls
	ldd	#1	; ,
	std	14,s	; , muls
;----- asm -----
;  267 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[248]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stx	,s	;  number, number.115
	cmpx	#999	;cmphi:	;  number,
	bls	L2	; 
	ldx	#999	; ,
	stx	,s	; , number.115
L2:
;----- asm -----
;  269 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[249]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	10,s	; ,,
	stx	6,s	; , ivtmp.111
	ldd	22,s	; , text
	std	8,s	; , ivtmp.113
L6:
;----- asm -----
;  271 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[250]		uint8_t d = 0;
;  0 "" 2
;  273 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[251]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.2394, muls
	ldb	#48	; ,
	stb	3,s	; , prephitmp.92
	cmpu	,s	;cmphi:	;  D.2394, number.115
	bhi	L4	; 
	tfr	u,d	;  D.2394,
	nega
	negb
	sbca	#0
	std	4,s	; , ivtmp.101
	ldd	,s	; , number.115
	pshs	u	;subhi: R:d -= R:u	;  D.2394,
	subd	,s++	; 
	std	,s	; , number.115
	clr	2,s	;  d
L5:
;----- asm -----
;  275 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[252]			d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  277 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[253]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.117, number.115
	tfr	y,d	; ,
	addd	4,s	; , ivtmp.101
	std	,s	; , number.115
	leax	d,u	;  tmp87,, D.2394
	pshs	x	;cmphi: R:x with R:u	;  tmp87, D.2394
	cmpu	,s++	;cmphi:	;  D.2394
	bls	L5	; 
	sty	,s	;  number.117, number.115
	ldb	2,s	; , d
	addb	#48	; ,
	stb	3,s	; , prephitmp.92
L4:
;----- asm -----
;  280 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[255]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	8,s	; , ivtmp.113
	leax	1,x	; ,,
	stx	8,s	; , ivtmp.113
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	6,s	; , ivtmp.111
	leax	2,x	; ,,
	stx	6,s	; , ivtmp.111
	tfr	s,d	; ,
	addd	#16	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L6	; 
	leas	16,s	; ,,
	puls	y,u,pc	; 
	.globl _isField
_isField:
;----- asm -----
;  295 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[267]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  c,
	beq	L12	; 
	cmpb	#97	;cmpqi:	;  c,
	beq	L12	; 
	eorb	#111	;  c,
	clra		;zero_extendqihi: R:b -> R:d	;  c, tmp32
	addd	#-1	;  tmp33,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	rts
L12:
	ldb	#1	;  prephitmp.125,
	rts
	.globl _x3d
_x3d:
	pshs	y	; 
	leas	-2,s	; ,,
	stb	,s	;  x, x
;----- asm -----
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , z
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,y	; , tmp32
	ldb	,s	; , x
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp34
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp32,
	stb	,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp34,
	stb	1,s	; ,
	ldb	,s	; ,
	addb	1,s	; ,
	leas	2,s	; ,,
	puls	y,pc	; 
	.globl _y3d
_y3d:
	pshs	b	; 
;----- asm -----
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , y
	addb	#-8	; ,
	lda	#13	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp33
	asl	4,s	;  z
	asl	4,s	;  z
	asl	4,s	;  z
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp33, tmp36
	addb	4,s	;  tmp36, z
	stb	4,s	;  tmp36, z
	ldb	,s	;  tmp38, x
	aslb	;  tmp38
	addb	,s	;  tmp38, x
	addb	4,s	;  tmp38, z
	stb	4,s	;  tmp38, z
	leas	1,s	; ,,
	rts
	.globl _scaleDown
_scaleDown:
;----- asm -----
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsrb	;  oldScale
	rts
	.globl _toLong
_toLong:
	leas	-2,s	; ,,
;----- asm -----
;  325 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[291]	unsigned long int t = (unsigned long int)hi;
;  0 "" 2
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	;  hi, t
;----- asm -----
;  327 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[292]	t = t << 8;
;  0 "" 2
;--- end asm ---
	tfr	b,a	; ,
	clrb	; 
	tfr	d,x	;  t, t.172
;----- asm -----
;  329 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[293]	unsigned long int t2 = (unsigned long int)lo;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , lo
	sex		;extendqihi2: R:b -> R:d	; ,
;----- asm -----
;  331 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[294]	t2 = t2 & 0xff;
;  0 "" 2
;  333 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[295]	t = t & 0xff00;
;  0 "" 2
;  335 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[296]	t = t + t2;
;  0 "" 2
;  337 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[297]	return t;
;  0 "" 2
;--- end asm ---
	clra	;andqi(ZERO)	; 
		;andqi(-1)
	leax	d,x	;  tmp33, tmp34, t.172
	leas	2,s	; ,,
	rts
	.globl _correctScale
_correctScale:
;----- asm -----
;  344 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[303]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L25	; 
;----- asm -----
;  346 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[304]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	beq	L29	; 
;----- asm -----
;  348 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[305]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	beq	L30	; 
;----- asm -----
;  350 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[306]	return s;
;  0 "" 2
;--- end asm ---
L25:
	rts
L30:
	ldb	#30	;  s,
	rts
L29:
	ldb	#63	;  s,
	rts
	.globl _addLine
_addLine:
	pshs	y,u	; 
	leas	-12,s	; ,,
	stb	3,s	;  x0, x0
;----- asm -----
;  357 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[312]	lineX0[lineCount] = x3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	4,s	; , lineCount.8
;----- asm -----
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	18,s	; , y0
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp47
	ldb	3,s	; , x0
	addb	#-2	; ,
	stb	3,s	; , x0
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp49
	ldb	3,s	; , x0
	addb	#2	; ,
	stb	3,s	; , x0
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp47,
	stb	5,s	; , xpos
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp49, tmp51
	addb	5,s	;  tmp51, xpos
	stb	5,s	;  tmp51, xpos
	ldb	4,s	; , lineCount.8
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,u	; , lineCount.8
	ldb	5,s	; , xpos
	stb	_lineX0,u	; , lineX0
;----- asm -----
;  359 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[313]	lineY0[lineCount] = y3d(x0, 0, y0);
;  0 "" 2
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , x0
	aslb	; 
	addb	3,s	; , x0
	addb	#-104	; ,
	asl	18,s	;  y0
	asl	18,s	;  y0
	asl	18,s	;  y0
	addb	18,s	; , y0
	stb	6,s	; , ypos
	stb	_lineY0,u	; , lineY0
;----- asm -----
;  361 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[314]	lineX1[lineCount] = x3d(x1, 0, y1);
;  0 "" 2
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	20,s	; , y1
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp63
	ldb	19,s	; , x1
	addb	#-2	; ,
	stb	19,s	; , x1
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,y	; , tmp65
	ldb	19,s	; , x1
	addb	#2	; ,
	stb	19,s	; , x1
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp63,
	stb	9,s	; , D.2975
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp65, tmp67
	addb	9,s	;  tmp67, D.2975
	stb	9,s	;  tmp67, D.2975
	stb	_lineX1,u	;  tmp67, lineX1
;----- asm -----
;  363 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[315]	lineY1[lineCount] = y3d(x1, 0, y1);
;  0 "" 2
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	19,s	; , x1
	aslb	; 
	addb	19,s	; , x1
	addb	#-104	; ,
	asl	20,s	;  y1
	asl	20,s	;  y1
	asl	20,s	;  y1
	addb	20,s	; , y1
	stb	,s	; , D.2982
	stb	_lineY1,u	; , lineY1
;----- asm -----
;  366 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[317]	lineScale[lineCount] = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	_lineScale,u	; , lineScale
;----- asm -----
;  368 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[318]	moveScale[lineCount] = 0x80;
;  0 "" 2
;--- end asm ---
	stb	_moveScale,u	; , moveScale
;----- asm -----
;  371 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[320]	int xpos = lineX0[lineCount]; 
;  0 "" 2
;  373 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[321]	int ypos = lineY0[lineCount]; 
;  0 "" 2
;  375 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[322]#ifdef DO_SCALE	
;  0 "" 2
;  379 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[325]	int difx = (lineX1[lineCount]-lineX0[lineCount]); 
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , D.2975
	subb	5,s	; , xpos
	stb	7,s	; , difx
;----- asm -----
;  381 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[326]	int dify = (lineY1[lineCount]-lineY0[lineCount]); 
;  0 "" 2
;--- end asm ---
	ldb	,s	; , D.2982
	subb	6,s	; , ypos
	stb	8,s	; , dify
;----- asm -----
;  383 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[327]	if (difx<0) difx = -difx;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , difx
	stb	2,s	; , difx.195
	lblt	L47	; 
L32:
;----- asm -----
;  385 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[328]	if (dify<0) dify = -dify;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , dify
	stb	10,s	; , dify.196
	lblt	L48	; 
L33:
;----- asm -----
;  387 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[329]	if ((difx<64) && (dify<64)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.195
	cmpb	#63	;cmpqi:	; ,
	bgt	L34	; 
	ldb	10,s	; , dify.196
	cmpb	#63	;cmpqi:	; ,
	lble	L49	; 
L34:
;----- asm -----
;  389 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[330]	if ((difx<32) && (dify<32)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.195
	cmpb	#31	;cmpqi:	; ,
	bgt	L35	; 
	ldb	10,s	; , dify.196
	cmpb	#31	;cmpqi:	; ,
	lble	L50	; 
L35:
;----- asm -----
;  393 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[333]  	difx = lineX0[lineCount]; 
;  0 "" 2
;  395 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[334]    	dify = lineY0[lineCount]; 
;  0 "" 2
;  397 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[335]    	if (difx<0) difx = -difx;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , xpos
	stb	2,s	; , difx.197
	lblt	L51	; 
L36:
;----- asm -----
;  399 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[336]    	if (dify<0) dify = -dify;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , ypos
	stb	11,s	; , dify.198
	lblt	L52	; 
L37:
;----- asm -----
;  401 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[337]    	if ((difx<64) && (dify<64)) 
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.197
	cmpb	#63	;cmpqi:	; ,
	bgt	L38	; 
	ldb	11,s	; , dify.198
	cmpb	#63	;cmpqi:	; ,
	lble	L53	; 
L38:
;----- asm -----
;  411 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[343]    	if ((difx<32) && (dify<32)) 
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.197
	cmpb	#31	;cmpqi:	; ,
	bgt	L39	; 
	ldb	11,s	; , dify.198
	cmpb	#31	;cmpqi:	; ,
	lble	L54	; 
L39:
;----- asm -----
;  423 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[351]	lineScale[lineCount] = correctScale(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	_lineScale,u	;  s, lineScale
;----- asm -----
;  344 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[303]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L40	; 
;----- asm -----
;  346 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[304]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	lbeq	L55	; 
;----- asm -----
;  348 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[305]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	lbeq	L56	; 
;----- asm -----
;  350 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[306]	return s;
;  0 "" 2
;--- end asm ---
L40:
	stb	_lineScale,u	;  s, lineScale
;----- asm -----
;  425 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[352]	moveScale[lineCount] = correctScale(moveScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	_moveScale,u	;  s, moveScale
;----- asm -----
;  344 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[303]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L43	; 
;----- asm -----
;  346 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[304]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	lbeq	L57	; 
;----- asm -----
;  348 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[305]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	lbeq	L58	; 
;----- asm -----
;  350 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[306]	return s;
;  0 "" 2
;--- end asm ---
L43:
	stb	_moveScale,u	;  s, moveScale
;----- asm -----
;  429 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[355]#endif
;  0 "" 2
;  432 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[357]	moveTo[lineCount] =toLong(ypos, xpos);
;  0 "" 2
;  325 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[291]	unsigned long int t = (unsigned long int)hi;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , ypos
	sex		;extendqihi2: R:b -> R:d	; ,
;----- asm -----
;  327 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[292]	t = t << 8;
;  0 "" 2
;--- end asm ---
	tfr	b,a	; ,
	clrb	; 
	tfr	d,y	; , t.199
;----- asm -----
;  329 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[293]	unsigned long int t2 = (unsigned long int)lo;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , xpos
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; , t2
;----- asm -----
;  331 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[294]	t2 = t2 & 0xff;
;  0 "" 2
;  333 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[295]	t = t & 0xff00;
;  0 "" 2
;  335 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[296]	t = t + t2;
;  0 "" 2
;  337 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[297]	return t;
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  lineCount.8,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp117
	ldd	,s	;  tmp119, t2
	clra	;andqi(ZERO)	; 
		;andqi(-1)
	leay	d,y	; , tmp119, t.199
	sty	_moveTo,x	; , moveTo
;----- asm -----
;  434 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[358]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , lineCount.8
	incb	; 
	stb	_lineCount	; , lineCount
	leas	12,s	; ,,
	puls	y,u,pc	; 
L54:
;----- asm -----
;  414 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[345]		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
;  0 "" 2
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsr	_moveScale,u	;  moveScale
;----- asm -----
;  416 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[346]		xpos = xpos<<1;
;  0 "" 2
;--- end asm ---
	asl	5,s	;  xpos
;----- asm -----
;  418 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[347]		ypos = ypos<<1;
;  0 "" 2
;--- end asm ---
	asl	6,s	;  ypos
	jmp	L39	; 
L53:
;----- asm -----
;  404 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[339]		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
;  0 "" 2
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	ldb	#64	; ,
	stb	_moveScale,u	; , moveScale
;----- asm -----
;  406 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[340]		xpos = xpos<<1;
;  0 "" 2
;--- end asm ---
	asl	5,s	;  xpos
;----- asm -----
;  408 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[341]		ypos = ypos<<1;
;  0 "" 2
;--- end asm ---
	asl	6,s	;  ypos
	jmp	L38	; 
L50:
;----- asm -----
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsr	_lineScale,u	;  lineScale
	jmp	L35	; 
L49:
;----- asm -----
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	ldb	#64	; ,
	stb	_lineScale,u	; , lineScale
	jmp	L34	; 
L55:
	ldb	#63	;  s,
	jmp	L40	; 
L52:
	negb	; 
	stb	11,s	; , dify.198
	jmp	L37	; 
L51:
	negb	; 
	stb	2,s	; , difx.197
	jmp	L36	; 
L48:
	neg	10,s	;  dify.196
	jmp	L33	; 
L47:
	neg	2,s	;  difx.195
	jmp	L32	; 
L57:
	ldb	#63	;  s,
	jmp	L43	; 
L58:
	ldb	#30	;  s,
	jmp	L43	; 
L56:
	ldb	#30	;  s,
	jmp	L40	; 
	.globl _addTarget
_addTarget:
	pshs	y	; 
	leas	-28,s	; ,,
	stb	3,s	;  x, x
;----- asm -----
;  441 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[364]	lineX0[lineCount] = x3d(x, 0, y);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	4,s	; , lineCount.10
;----- asm -----
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , x
	addb	#-2	; ,
	stb	3,s	; , x
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp72
	ldb	3,s	; , x
	addb	#2	; ,
	stb	3,s	; , x
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp72,
	stb	12,s	; , D.3013
	ldb	32,s	; , y
	lda	#-6	;mulqihi3	; 
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	; , tmp73
; ORG>	tfr	d,x	; , tmp73
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp73,
	stb	11,s	; , D.3014
	addb	12,s	; , D.3013
	stb	8,s	; , xpos
	ldb	4,s	; , lineCount.10
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.10
	ldb	8,s	; , xpos
	stb	_lineX0,x	; , lineX0
;----- asm -----
;  443 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[365]	lineY0[lineCount] = y3d(x, 0, y);
;  0 "" 2
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , x
	aslb	; 
	addb	3,s	; , x
	addb	#-104	; ,
	stb	14,s	; , D.3022
	ldb	32,s	; , y
	aslb	; 
	aslb	; 
	aslb	; 
	stb	13,s	; , D.3023
	addb	14,s	; , D.3022
	stb	9,s	; , ypos
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  445 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[366]	lineX1[lineCount] = x3d(x + 1, 0, y + 1);
;  0 "" 2
;--- end asm ---
	ldb	32,s	; , y
	incb	; 
	stb	5,s	; , D.2483
	ldb	3,s	; , x
	incb	; 
	stb	6,s	; , D.2484
;----- asm -----
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	dec	3,s	;  x
	ldb	3,s	; , x
	lda	#14	;mulqihi3	; 
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,y	; , tmp84
; ORG>	tfr	d,y	; , tmp84
; ORG>	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp84,
	stb	16,s	; , D.3029
	ldb	5,s	; , D.2483
	lda	#-6	;mulqihi3	; 
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,y	; , tmp85
; ORG>	tfr	d,y	; , tmp85
; ORG>	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp85,
	stb	15,s	; , D.3030
	addb	16,s	; , D.3029
	stb	,s	; , D.3028
	stb	_lineX1,x	; , lineX1
;----- asm -----
;  447 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[367]	lineY1[lineCount] = y3d(x + 1, 0, y + 1);
;  0 "" 2
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , D.2484
	aslb	; 
	addb	6,s	; , D.2484
	addb	#-104	; ,
	stb	19,s	; , D.3038
	ldb	5,s	; , D.2483
	aslb	; 
	aslb	; 
	aslb	; 
	stb	18,s	; , D.3039
	addb	19,s	; , D.3038
	stb	17,s	; , D.3035
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  450 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[369]	lineScale[lineCount] = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	_lineScale,x	; , lineScale
;----- asm -----
;  452 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[370]	moveScale[lineCount] = 0x80;
;  0 "" 2
;--- end asm ---
	stb	_moveScale,x	; , moveScale
;----- asm -----
;  454 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[371]	int xpos = lineX0[lineCount]; 
;  0 "" 2
;  456 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[372]	int ypos = lineY0[lineCount]; 
;  0 "" 2
;  459 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[374]#ifdef DO_SCALE	
;  0 "" 2
;  462 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[376]	int difx = lineX1[lineCount] - lineX0[lineCount]; 
;  0 "" 2
;--- end asm ---
	ldb	,s	; , D.3028
	subb	8,s	; , xpos
	stb	,s	; , difx
;----- asm -----
;  464 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[377]	int dify = lineY1[lineCount] - lineY0[lineCount]; 
;  0 "" 2
;--- end asm ---
	ldb	17,s	; , D.3035
	subb	9,s	; , ypos
	stb	10,s	; , dify
;----- asm -----
;  466 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[378]	if (difx<0) difx = -difx;
;  0 "" 2
;--- end asm ---
	ldb	,s	; , difx
	stb	2,s	; , difx.215
	lblt	L91	; 
L60:
;----- asm -----
;  468 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[379]	if (dify<0) dify = -dify;
;  0 "" 2
;--- end asm ---
	ldb	10,s	; , dify
	stb	23,s	; , dify.216
	lblt	L92	; 
L61:
;----- asm -----
;  470 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[380]	if ((difx<64) && (dify<64)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.215
	cmpb	#63	;cmpqi:	; ,
	bgt	L62	; 
	ldb	23,s	; , dify.216
	cmpb	#63	;cmpqi:	; ,
	lble	L93	; 
L62:
;----- asm -----
;  472 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[381]	if ((difx<32) && (dify<32)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.215
	cmpb	#31	;cmpqi:	; ,
	bgt	L63	; 
	ldb	23,s	; , dify.216
	cmpb	#31	;cmpqi:	; ,
	lble	L94	; 
L63:
;----- asm -----
;  476 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[384]	difx = lineX0[lineCount]; 
;  0 "" 2
;  478 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[385]    	dify = lineY0[lineCount]; 
;  0 "" 2
;  480 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[386]    	if (difx<0) difx = -difx;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , xpos
	stb	2,s	; , difx.217
	lblt	L95	; 
L64:
;----- asm -----
;  482 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[387]    	if (dify<0) dify = -dify;
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , ypos
	stb	25,s	; , dify.220
	lblt	L96	; 
L65:
;----- asm -----
;  485 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[389]	if ((difx<64) && (dify<64)) 
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.217
	cmpb	#63	;cmpqi:	; ,
	bgt	L66	; 
	ldb	25,s	; , dify.220
	cmpb	#63	;cmpqi:	; ,
	lble	L97	; 
L66:
;----- asm -----
;  495 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[395]    	if ((difx<32) && (dify<32)) 
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.217
	cmpb	#31	;cmpqi:	; ,
	bgt	L67	; 
	ldb	25,s	; , dify.220
	cmpb	#31	;cmpqi:	; ,
	lble	L98	; 
L67:
;----- asm -----
;  505 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[401]	lineScale[lineCount] = correctScale(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	_lineScale,x	;  s, lineScale
;----- asm -----
;  344 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[303]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L68	; 
;----- asm -----
;  346 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[304]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	lbeq	L99	; 
;----- asm -----
;  348 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[305]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	lbeq	L100	; 
;----- asm -----
;  350 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[306]	return s;
;  0 "" 2
;--- end asm ---
L68:
	stb	_lineScale,x	;  s, lineScale
;----- asm -----
;  507 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[402]	moveScale[lineCount] = correctScale(moveScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	_moveScale,x	;  s, moveScale
;----- asm -----
;  344 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[303]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L71	; 
;----- asm -----
;  346 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[304]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	lbeq	L101	; 
;----- asm -----
;  348 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[305]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	lbeq	L102	; 
;----- asm -----
;  350 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[306]	return s;
;  0 "" 2
;--- end asm ---
L71:
	stb	_moveScale,x	;  s, moveScale
;----- asm -----
;  509 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[403]#endif
;  0 "" 2
;  511 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[404]	moveTo[lineCount] =toLong(ypos, xpos);
;  0 "" 2
;  325 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[291]	unsigned long int t = (unsigned long int)hi;
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , ypos
	sex		;extendqihi2: R:b -> R:d	; ,
;----- asm -----
;  327 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[292]	t = t << 8;
;  0 "" 2
;--- end asm ---
	tfr	b,a	; ,
	clrb	; 
	tfr	d,y	; , t.228
;----- asm -----
;  329 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[293]	unsigned long int t2 = (unsigned long int)lo;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , xpos
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; , t2
;----- asm -----
;  331 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[294]	t2 = t2 & 0xff;
;  0 "" 2
;  333 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[295]	t = t & 0xff00;
;  0 "" 2
;  335 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[296]	t = t + t2;
;  0 "" 2
;  337 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[297]	return t;
;  0 "" 2
;--- end asm ---
	tfr	x,d	;  lineCount.10,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp133
	ldd	,s	;  tmp135, t2
	clra	;andqi(ZERO)	; 
		;andqi(-1)
	leay	d,y	; , tmp135, t.228
	sty	_moveTo,x	; , moveTo
;----- asm -----
;  513 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[405]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , lineCount.10
	incb	; 
	stb	7,s	; , lineCount.11
;----- asm -----
;  518 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[409]	lineX0[lineCount] = x3d(x + 1, 0, y);
;  0 "" 2
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	16,s	; , D.3029
	addb	11,s	; , D.3014
	stb	21,s	; , xpos.213
	ldb	7,s	; , lineCount.11
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.11
	ldb	21,s	; , xpos.213
	stb	_lineX0,x	; , lineX0
;----- asm -----
;  520 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[410]	lineY0[lineCount] = y3d(x + 1, 0, y);
;  0 "" 2
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	19,s	; , D.3038
	addb	13,s	; , D.3023
	stb	22,s	; , ypos.214
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  522 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[411]	lineX1[lineCount] = x3d(x, 0, y + 1);
;  0 "" 2
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	15,s	; , D.3030
	addb	12,s	; , D.3013
	stb	,s	; , D.3081
	stb	_lineX1,x	; , lineX1
;----- asm -----
;  524 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[412]	lineY1[lineCount] = y3d(x, 0, y + 1);
;  0 "" 2
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	18,s	; , D.3039
	addb	14,s	; , D.3022
	stb	20,s	; , D.3088
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  527 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[414]	lineScale[lineCount] = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	_lineScale,x	; , lineScale
;----- asm -----
;  529 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[415]	moveScale[lineCount] = 0x80;
;  0 "" 2
;--- end asm ---
	stb	_moveScale,x	; , moveScale
;----- asm -----
;  532 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[417]	xpos = lineX0[lineCount]; 
;  0 "" 2
;  534 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[418]	ypos = lineY0[lineCount]; 
;  0 "" 2
;  537 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[420]#ifdef DO_SCALE	
;  0 "" 2
;  540 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[422]	difx = lineX1[lineCount] - lineX0[lineCount]; 
;  0 "" 2
;--- end asm ---
	ldb	,s	; , D.3081
	subb	21,s	; , xpos.213
	stb	2,s	; , difx.218
;----- asm -----
;  542 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[423]	dify = lineY1[lineCount] - lineY0[lineCount]; 
;  0 "" 2
;--- end asm ---
	ldb	20,s	; , D.3088
	subb	22,s	; , ypos.214
	stb	24,s	; , dify.219
;----- asm -----
;  544 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[424]	if (difx<0) difx = -difx;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.218
	lblt	L103	; 
L74:
;----- asm -----
;  546 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[425]	if (dify<0) dify = -dify;
;  0 "" 2
;--- end asm ---
	ldb	24,s	; , dify.219
	stb	26,s	; , dify.223
	lblt	L104	; 
L75:
;----- asm -----
;  548 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[426]	if ((difx<64) && (dify<64)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.221
	cmpb	#63	;cmpqi:	; ,
	bgt	L76	; 
	ldb	26,s	; , dify.223
	cmpb	#63	;cmpqi:	; ,
	lble	L105	; 
L76:
;----- asm -----
;  550 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[427]	if ((difx<32) && (dify<32)) lineScale[lineCount] =  scaleDown(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.221
	cmpb	#31	;cmpqi:	; ,
	bgt	L77	; 
	ldb	26,s	; , dify.223
	cmpb	#31	;cmpqi:	; ,
	lble	L106	; 
L77:
;----- asm -----
;  554 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[430]    	difx = lineX0[lineCount]; 
;  0 "" 2
;  556 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[431]    	dify = lineY0[lineCount]; 
;  0 "" 2
;  558 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[432]    	if (difx<0) difx = -difx;
;  0 "" 2
;--- end asm ---
	ldb	21,s	; , xpos.213
	stb	2,s	; , difx.224
	lblt	L107	; 
L78:
;----- asm -----
;  560 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[433]    	if (dify<0) dify = -dify;
;  0 "" 2
;--- end asm ---
	ldb	22,s	; , ypos.214
	stb	27,s	; , dify.226
	lblt	L108	; 
L79:
;----- asm -----
;  563 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[435]	if ((difx<64) && (dify<64)) 
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.224
	cmpb	#63	;cmpqi:	; ,
	bgt	L80	; 
	ldb	27,s	; , dify.226
	cmpb	#63	;cmpqi:	; ,
	lble	L109	; 
L80:
;----- asm -----
;  573 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[441]    	if ((difx<32) && (dify<32)) 
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.224
	cmpb	#31	;cmpqi:	; ,
	bgt	L81	; 
	ldb	27,s	; , dify.226
	cmpb	#31	;cmpqi:	; ,
	lble	L110	; 
L81:
;----- asm -----
;  583 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[447]	lineScale[lineCount] = correctScale(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	_lineScale,x	;  s, lineScale
;----- asm -----
;  344 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[303]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L82	; 
;----- asm -----
;  346 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[304]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	lbeq	L111	; 
;----- asm -----
;  348 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[305]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	lbeq	L112	; 
;----- asm -----
;  350 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[306]	return s;
;  0 "" 2
;--- end asm ---
L82:
	stb	_lineScale,x	;  s, lineScale
;----- asm -----
;  585 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[448]	moveScale[lineCount] = correctScale(moveScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	_moveScale,x	;  s, moveScale
;----- asm -----
;  344 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[303]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L85	; 
;----- asm -----
;  346 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[304]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	lbeq	L113	; 
;----- asm -----
;  348 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[305]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	lbeq	L114	; 
;----- asm -----
;  350 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[306]	return s;
;  0 "" 2
;--- end asm ---
L85:
	stb	_moveScale,x	;  s, moveScale
;----- asm -----
;  587 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[449]#endif
;  0 "" 2
;  589 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[450]	moveTo[lineCount] =toLong(ypos, xpos);
;  0 "" 2
;  325 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[291]	unsigned long int t = (unsigned long int)hi;
;  0 "" 2
;--- end asm ---
	ldb	22,s	; , ypos.214
	sex		;extendqihi2: R:b -> R:d	; ,
;----- asm -----
;  327 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[292]	t = t << 8;
;  0 "" 2
;--- end asm ---
	tfr	b,a	; ,
	clrb	; 
	tfr	d,y	; , t.231
;----- asm -----
;  329 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[293]	unsigned long int t2 = (unsigned long int)lo;
;  0 "" 2
;--- end asm ---
	ldb	21,s	; , xpos.213
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; , t2
;----- asm -----
;  331 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[294]	t2 = t2 & 0xff;
;  0 "" 2
;  333 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[295]	t = t & 0xff00;
;  0 "" 2
;  335 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[296]	t = t + t2;
;  0 "" 2
;  337 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[297]	return t;
;  0 "" 2
;--- end asm ---
	tfr	x,d	;  lineCount.11,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp186
	ldd	,s	;  tmp188, t2
	clra	;andqi(ZERO)	; 
		;andqi(-1)
	leay	d,y	; , tmp188, t.231
	sty	_moveTo,x	; , moveTo
;----- asm -----
;  591 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[451]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , lineCount.11
	incb	; 
	stb	_lineCount	; , lineCount
	leas	28,s	; ,,
	puls	y,pc	; 
L98:
;----- asm -----
;  498 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[397]		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
;  0 "" 2
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsr	_moveScale,x	;  moveScale
;----- asm -----
;  500 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[398]		xpos = xpos<<1;
;  0 "" 2
;--- end asm ---
	asl	8,s	;  xpos
;----- asm -----
;  502 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[399]		ypos = ypos<<1;
;  0 "" 2
;--- end asm ---
	asl	9,s	;  ypos
	jmp	L67	; 
L97:
;----- asm -----
;  488 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[391]		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
;  0 "" 2
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	ldb	#64	; ,
	stb	_moveScale,x	; , moveScale
;----- asm -----
;  490 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[392]		xpos = xpos<<1;
;  0 "" 2
;--- end asm ---
	asl	8,s	;  xpos
;----- asm -----
;  492 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[393]		ypos = ypos<<1;
;  0 "" 2
;--- end asm ---
	asl	9,s	;  ypos
	jmp	L66	; 
L94:
;----- asm -----
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsr	_lineScale,x	;  lineScale
	jmp	L63	; 
L93:
;----- asm -----
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	ldb	#64	; ,
	stb	_lineScale,x	; , lineScale
	jmp	L62	; 
L110:
;----- asm -----
;  576 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[443]		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
;  0 "" 2
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsr	_moveScale,x	;  moveScale
;----- asm -----
;  578 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[444]		xpos = xpos<<1;
;  0 "" 2
;--- end asm ---
	asl	21,s	;  xpos.213
;----- asm -----
;  580 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[445]		ypos = ypos<<1;
;  0 "" 2
;--- end asm ---
	asl	22,s	;  ypos.214
	jmp	L81	; 
L109:
;----- asm -----
;  566 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[437]		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
;  0 "" 2
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	ldb	#64	; ,
	stb	_moveScale,x	; , moveScale
;----- asm -----
;  568 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[438]		xpos = xpos<<1;
;  0 "" 2
;--- end asm ---
	asl	21,s	;  xpos.213
;----- asm -----
;  570 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[439]		ypos = ypos<<1;
;  0 "" 2
;--- end asm ---
	asl	22,s	;  ypos.214
	jmp	L80	; 
L106:
;----- asm -----
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsr	_lineScale,x	;  lineScale
	jmp	L77	; 
L105:
;----- asm -----
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	ldb	#64	; ,
	stb	_lineScale,x	; , lineScale
	jmp	L76	; 
L111:
	ldb	#63	;  s,
	jmp	L82	; 
L99:
	ldb	#63	;  s,
	jmp	L68	; 
L101:
	ldb	#63	;  s,
	jmp	L71	; 
L96:
	negb	; 
	stb	25,s	; , dify.220
	jmp	L65	; 
L95:
	negb	; 
	stb	2,s	; , difx.217
	jmp	L64	; 
L91:
	neg	2,s	;  difx.215
	jmp	L60	; 
L103:
	neg	2,s	;  difx.221
	jmp	L74	; 
L104:
	neg	26,s	;  dify.223
	jmp	L75	; 
L92:
	neg	23,s	;  dify.216
	jmp	L61	; 
L108:
	negb	; 
	stb	27,s	; , dify.226
	jmp	L79	; 
L107:
	negb	; 
	stb	2,s	; , difx.224
	jmp	L78	; 
L113:
	ldb	#63	;  s,
	jmp	L85	; 
L114:
	ldb	#30	;  s,
	jmp	L85	; 
L100:
	ldb	#30	;  s,
	jmp	L68	; 
L102:
	ldb	#30	;  s,
	jmp	L71	; 
L112:
	ldb	#30	;  s,
	jmp	L82	; 
	.globl _setupX
_setupX:
	pshs	y,u	; 
	leas	-9,s	; ,,
;----- asm -----
;  607 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[466]	unsigned long int index;
;  0 "" 2
;  609 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[467]	int8_t x = 0;
;  0 "" 2
;  611 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[468]	int8_t y = 0;
;  0 "" 2
;  613 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[469]	for (y = 0; y < LEVEL_HEIGHT - 1; y++) {
;  0 "" 2
;--- end asm ---
	clr	5,s	;  y
	ldy	#0	;  ivtmp.256,
L124:
;----- asm -----
;  615 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[470]		int8_t x0 = -1;
;  0 "" 2
;  617 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[471]		int8_t x1 = -1;
;  0 "" 2
;  619 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[472]		for (x = 0; x < LEVEL_WIDTH; x++) {
;  0 "" 2
;--- end asm ---
	leau	,y	;  ivtmp.267, ivtmp.256
	clr	4,s	;  x
	ldb	#-1	; ,
	stb	6,s	; , x0
	stb	7,s	; , x1
	ldb	5,s	; , y
	incb	; 
	stb	3,s	; ,
	jmp	L123	; 
L117:
;----- asm -----
;  644 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[487]			index += LEVEL_WIDTH;
;  0 "" 2
;  646 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[488]			char c1 = level[index];
;  0 "" 2
;--- end asm ---
	ldd	,s	; ,
	leax	d,u	;  tmp68,, ivtmp.267
	ldb	12,x	; ,
	stb	2,s	; , c1
;----- asm -----
;  648 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[489]			if (isField(c0) || isField(c1)) {
;  0 "" 2
;  295 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[267]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , c0
	cmpb	#46	;cmpqi:	; ,
	lbeq	L118	; 
	cmpb	#97	;cmpqi:	; ,
	lbeq	L118	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L118	; 
;----- asm -----
;  295 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[267]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , c1
	cmpb	#46	;cmpqi:	; ,
	lbeq	L118	; 
	cmpb	#97	;cmpqi:	; ,
	lbeq	L118	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L118	; 
;----- asm -----
;  655 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[493]				if (x0 >= 0) {
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , x0
	cmpb	#-1	;cmpqi:	; ,
	beq	L122	; 
;----- asm -----
;  657 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[494]					addLine(x0, y + 1, x1 + 1, y + 1);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; ,
	pshs	b	; 
	ldb	8,s	; , x1
	incb	; 
	pshs	b	; 
	ldb	5,s	; ,
	pshs	b	; 
	ldb	9,s	; , x0
	jsr	_addLine	; 
;----- asm -----
;  659 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[495]					x0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	9,s	; , x0
	leas	3,s	; ,,
L122:
	inc	4,s	;  x
	leau	1,u	;  ivtmp.267,, ivtmp.267
	ldb	4,s	; , x
	cmpb	#12	;cmpqi:	; ,
	lbeq	L133	; 
L123:
;----- asm -----
;  622 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[474]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
;  0 "" 2
;  624 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[475]			char c0 = level[index];
;  0 "" 2
;--- end asm ---
	ldx	_level	; , level
	stx	,s	; ,
	tfr	x,d	; ,
	leax	d,u	;  tmp66,, ivtmp.267
	ldb	,x	; ,
	stb	8,s	; , c0
;----- asm -----
;  627 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[477]			if (c0 == 'o') {
;  0 "" 2
;--- end asm ---
	cmpb	#111	;cmpqi:	; ,
	lbeq	L134	; 
L116:
;----- asm -----
;  636 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[482]			if (c0 == 'a') {
;  0 "" 2
;--- end asm ---
	cmpb	#97	;cmpqi:	; ,
	lbne	L117	; 
;----- asm -----
;  638 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[483]				startX = x;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , x
	stb	_startX	; , startX
;----- asm -----
;  640 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[484]				startY = y;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , y
	stb	_startY	; , startY
	jmp	L117	; 
L118:
;----- asm -----
;  650 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[490]				if (x0 < 0) x0 = x;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , x0
	cmpb	#-1	;cmpqi:	; ,
	beq	L135	; 
L121:
;----- asm -----
;  652 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[491]				x1 = x;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , x
	stb	7,s	; , x1
	inc	4,s	;  x
	leau	1,u	;  ivtmp.267,, ivtmp.267
	ldb	4,s	; , x
	cmpb	#12	;cmpqi:	; ,
	lbne	L123	; 
L133:
	ldb	3,s	; ,
	stb	5,s	; , y
	leay	12,y	;  ivtmp.256,, ivtmp.256
	cmpb	#16	;cmpqi:	; ,
	lbne	L124	; 
	leas	9,s	; ,,
	puls	y,u,pc	; 
L135:
	ldb	4,s	; , x
	stb	6,s	; , x0
	bra	L121	; 
L134:
;----- asm -----
;  629 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[478]				addTarget(x, y);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , y
	pshs	b	; 
	ldb	5,s	; , x
	jsr	_addTarget	; 
;----- asm -----
;  631 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[479]				endX = x;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , x
	stb	_endX	; , endX
;----- asm -----
;  633 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[480]				endY = y;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , y
	stb	_endY	; , endY
	leas	1,s	; ,,
	ldx	_level	; , level
	stx	,s	; ,
	ldb	8,s	; , c0
	jmp	L116	; 
	.globl _setupY
_setupY:
	pshs	u	; 
	leas	-7,s	; ,,
;----- asm -----
;  670 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[505]	unsigned long int index;
;  0 "" 2
;  672 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[506]	int8_t x = 0;
;  0 "" 2
;  674 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[507]	int8_t y = 0;
;  0 "" 2
;  676 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[508]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
;  0 "" 2
;--- end asm ---
	ldu	#0	;  ivtmp.292,
L143:
;----- asm -----
;  678 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[509]		int8_t y0 = -1;
;  0 "" 2
;  680 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[510]		int8_t y1 = -1;
;  0 "" 2
;  682 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[511]		for (y = 0; y < LEVEL_HEIGHT; y++) {
;  0 "" 2
;--- end asm ---
	stu	5,s	;  ivtmp.292, ivtmp.301
	clr	1,s	;  y
	ldb	#-1	; ,
	stb	2,s	; , y0
	stb	3,s	; , y1
	jmp	L142	; 
L153:
	cmpb	#97	;cmpqi:	; ,
	lbeq	L137	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L137	; 
;----- asm -----
;  295 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[267]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , c1
	cmpb	#46	;cmpqi:	; ,
	lbeq	L137	; 
	cmpb	#97	;cmpqi:	; ,
	lbeq	L137	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L137	; 
;----- asm -----
;  701 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[523]				if (y0 >= 0) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y0
	cmpb	#-1	;cmpqi:	; ,
	beq	L141	; 
;----- asm -----
;  703 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[524]					addLine(x + 1, y0, x + 1, y1 + 1);
;  0 "" 2
;--- end asm ---
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  ivtmp.292,
	incb	; 
	stb	,s	; , D.2567
	ldb	3,s	; , y1
	incb	; 
	pshs	b	; 
	ldb	1,s	; , D.2567
	pshs	b	; 
	ldb	4,s	; , y0
	pshs	b	; 
	ldb	3,s	; , D.2567
	jsr	_addLine	; 
;----- asm -----
;  705 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[525]					y0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	5,s	; , y0
	leas	3,s	; ,,
L141:
	inc	1,s	;  y
	ldd	5,s	; , ivtmp.301
	addd	#12	; ,
	std	5,s	; , ivtmp.301
	ldb	1,s	; , y
	cmpb	#17	;cmpqi:	; ,
	lbeq	L152	; 
L142:
;----- asm -----
;  688 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[516]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
;  0 "" 2
;  690 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[517]			char c0 = level[index];
;  0 "" 2
;--- end asm ---
	ldx	5,s	;  tmp46, ivtmp.301
	exg	d,x	; , tmp46
	addd	_level	; , level
	exg	d,x	; , tmp46
	ldb	,x+	; ,
	stb	,s	; , c0
;----- asm -----
;  692 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[518]			char c1 = level[index+1];
;  0 "" 2
;--- end asm ---
	ldb	,x	; ,
	stb	4,s	; , c1
;----- asm -----
;  694 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[519]			if (isField(c0) || isField(c1)) {
;  0 "" 2
;  295 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[267]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	,s	; , c0
	cmpb	#46	;cmpqi:	; ,
	lbne	L153	; 
L137:
;----- asm -----
;  696 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[520]				if (y0 < 0) y0 = y;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y0
	cmpb	#-1	;cmpqi:	; ,
	beq	L154	; 
L140:
;----- asm -----
;  698 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[521]				y1 = y;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , y
	stb	3,s	; , y1
	jmp	L141	; 
L154:
	ldb	1,s	; , y
	stb	2,s	; , y0
	bra	L140	; 
L152:
	leau	1,u	;  ivtmp.292,, ivtmp.292
	cmpu	#11	;cmphi:	;  ivtmp.292,
	lbne	L143	; 
	leas	7,s	; ,,
	puls	u,pc	; 
	.globl _changeMusic
_changeMusic:
;----- asm -----
;  715 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[534]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  717 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[535]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	stx	_currentMusic	;  music, currentMusic
	rts
	.globl _drawBlock
_drawBlock:
	pshs	u	; 
	leas	-11,s	; ,,
	stb	5,s	;  yofs, yofs
;----- asm -----
;  999 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[693]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1001 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[694]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	9,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1003 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[695]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , yofs
	stb	10,s	; , a
	clr	9,s	;  b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 10,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1006 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[697]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	6,s	; , blockX.42
;----- asm -----
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , blockX.42
	aslb	; 
	addb	6,s	; , blockX.42
	stb	2,s	; ,
	ldb	_blockY	; , blockY
	aslb	; 
	aslb	; 
	aslb	; 
	stb	4,s	; ,
	ldb	2,s	; ,
	addb	4,s	; ,
	addb	#-104	; ,
	stb	9,s	; , a
	ldb	6,s	; , blockX.42
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp37
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp38
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp37,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp38, tmp40
	addb	3,s	;  tmp40,
	stb	10,s	;  tmp40, b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 10,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1008 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[698]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp44, tmp43,
	ldx	,x	;  D.2652,
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	;  D.2652, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	7,s	;  D.2652, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;--- end asm ---
	leas	11,s	; ,,
	puls	u,pc	; 
	.globl _doBlockAnimation
_doBlockAnimation:
;----- asm -----
;  1068 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[737]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	beq	L161	; 
;----- asm -----
;  1070 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[738]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.51, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.51,
	beq	L162	; 
L161:
	rts
L162:
;----- asm -----
;  1072 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[739]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  1074 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[740]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  1076 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[741]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  1078 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[742]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  1080 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[743]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
	rts
	.globl _showInfo2
_showInfo2:
	pshs	y	; 
	leas	-4,s	; ,,
;----- asm -----
;  1285 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[877]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1287 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[878]	intens(0x50);
;  0 "" 2
;--- end asm ---
	ldb	#80	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1290 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[880]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1292 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[881]	positd(-50, 100);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	3,s	; , a
	ldb	#-50	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1294 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[882]	pack1x((void*)led8);
;  0 "" 2
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	ldy	#_led8	;  tmp27,
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1297 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[884]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1299 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[885]	positd(-40, 110);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#110	; ,
	stb	2,s	; , a
	ldb	#-40	; ,
	stb	3,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1301 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[886]	pack1x((void*)led8);
;  0 "" 2
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[888]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1306 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[889]	positd(-30, 120);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#120	; ,
	stb	3,s	; , a
	ldb	#-30	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1308 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[890]	pack1x((void*)led8);
;  0 "" 2
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[892]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[893]	positd(0, 120);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#120	; ,
	stb	2,s	; , a
	clr	3,s	;  b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1315 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[894]	pack1x((void*)led8);
;  0 "" 2
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1318 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[896]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1320 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[897]	positd(10, 120);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#120	; ,
	stb	3,s	; , a
	ldb	#10	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1322 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[898]	pack1x((void*)led8);
;  0 "" 2
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1325 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[900]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1327 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[901]	positd(20, 120);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#120	; ,
	stb	2,s	; , a
	ldb	#20	; ,
	stb	3,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1329 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[902]	pack1x((void*)led8);
;  0 "" 2
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;--- end asm ---
	leas	4,s	; ,,
	puls	y,pc	; 
	.globl _showInfo
_showInfo:
	pshs	u	; 
	leas	-4,s	; ,,
;----- asm -----
;  1335 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[907]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1337 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[908]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1339 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[909]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	3,s	; , a
	ldb	#-70	; ,
	stb	2,s	; , b
	ldx	#_infoText	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;--- end asm ---
	leas	4,s	; ,,
	puls	u,pc	; 
	.globl _drawField
_drawField:
	leas	-1,s	; ,,
;----- asm -----
;  990 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[686]	intens(0x55);
;  0 "" 2
;--- end asm ---
	ldb	#85	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  992 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[687]	drawFieldAsmScale();
;  0 "" 2
;--- end asm ---
	jsr	_drawFieldAsmScale	; 
	leas	1,s	; ,,
	rts
	.globl _sendCommand
_sendCommand:
	leas	-2,s	; ,,
	stb	,s	;  cmd, cmd
;----- asm -----
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , cmd
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , arg
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	1,s	; , result
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , result
	leas	2,s	; ,,
	rts
	.globl _updateInfoText
_updateInfoText:
	pshs	y,u	; 
	leas	-24,s	; ,,
;----- asm -----
;  287 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[261]	itoa(moveCount, &infoText[0]);
;  0 "" 2
;--- end asm ---
	ldu	_moveCount	;  number, moveCount
;----- asm -----
;  265 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[247]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	18,s	; , muls
	ldd	#10	; ,
	std	20,s	; , muls
	ldd	#1	; ,
	std	22,s	; , muls
;----- asm -----
;  267 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[248]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number, number.439
	cmpu	#999	;cmphi:	;  number,
	bls	L172	; 
	ldx	#999	; ,
	stx	,s	; , number.439
L172:
;----- asm -----
;  269 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[249]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	18,s	; ,,
	stx	13,s	; , ivtmp.431
	ldx	#_infoText	; ,
	stx	15,s	; , ivtmp.433
	ldx	13,s	; , ivtmp.431
L176:
;----- asm -----
;  271 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[250]		uint8_t d = 0;
;  0 "" 2
;  273 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[251]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.3662, muls
	ldb	#48	; ,
	stb	17,s	; , prephitmp.437
	cmpu	,s	;cmphi:	;  D.3662, number.439
	bhi	L174	; 
	tfr	u,d	;  D.3662,
	nega
	negb
	sbca	#0
	std	11,s	; , ivtmp.422
	ldd	,s	; , number.439
	pshs	u	;subhi: R:d -= R:u	;  D.3662,
	subd	,s++	; 
	std	,s	; , number.439
	clr	2,s	;  d
L175:
;----- asm -----
;  275 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[252]			d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  277 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[253]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.441, number.439
	tfr	y,d	; ,
	addd	11,s	; , ivtmp.422
	std	,s	; , number.439
	leax	d,u	;  tmp75,, D.3662
	pshs	u	;cmphi: R:u with R:x	;  D.3662, tmp75
	cmpx	,s++	;cmphi:	;  tmp75
	bhs	L175	; 
	sty	,s	;  number.441, number.439
	ldb	2,s	; , d
	addb	#48	; ,
	stb	17,s	; , prephitmp.437
L174:
;----- asm -----
;  280 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[255]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	15,s	; , ivtmp.433
	leax	1,x	; ,,
	stx	15,s	; , ivtmp.433
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	13,s	; , ivtmp.431
	leax	2,x	; ,,
	stx	13,s	; , ivtmp.431
	tfr	s,d	; ,
	addd	#24	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L176	; 
;----- asm -----
;  289 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[262]	itoa(levelHighscore, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	_levelHighscore	;  number, levelHighscore
;----- asm -----
;  265 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[247]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	18,s	; , muls
	ldd	#10	; ,
	std	20,s	; , muls
	ldd	#1	; ,
	std	22,s	; , muls
;----- asm -----
;  267 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[248]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number, number.435
	cmpu	#999	;cmphi:	;  number,
	bls	L177	; 
	ldx	#999	; ,
	stx	,s	; , number.435
L177:
;----- asm -----
;  269 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[249]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	18,s	; ,,
	stx	7,s	; , ivtmp.415
	ldx	#_infoText+6	; ,
	stx	9,s	; , ivtmp.417
	ldx	7,s	; , ivtmp.415
L181:
;----- asm -----
;  271 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[250]		uint8_t d = 0;
;  0 "" 2
;  273 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[251]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.3671, muls
	ldb	#48	; ,
	stb	4,s	; , prephitmp.394
	cmpu	,s	;cmphi:	;  D.3671, number.435
	bhi	L179	; 
	tfr	u,d	;  D.3671,
	nega
	negb
	sbca	#0
	std	5,s	; , ivtmp.406
	ldd	,s	; , number.435
	pshs	u	;subhi: R:d -= R:u	;  D.3671,
	subd	,s++	; 
	std	,s	; , number.435
	clr	3,s	;  d
L180:
;----- asm -----
;  275 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[252]			d++;
;  0 "" 2
;--- end asm ---
	inc	3,s	;  d
;----- asm -----
;  277 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[253]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.442, number.435
	tfr	y,d	; ,
	addd	5,s	; , ivtmp.406
	std	,s	; , number.435
	leax	d,u	;  tmp81,, D.3671
	pshs	u	;cmphi: R:u with R:x	;  D.3671, tmp81
	cmpx	,s++	;cmphi:	;  tmp81
	bhs	L180	; 
	sty	,s	;  number.442, number.435
	ldb	3,s	; , d
	addb	#48	; ,
	stb	4,s	; , prephitmp.394
L179:
;----- asm -----
;  280 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[255]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	9,s	; , ivtmp.417
	leax	1,x	; ,,
	stx	9,s	; , ivtmp.417
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	7,s	; , ivtmp.415
	leax	2,x	; ,,
	stx	7,s	; , ivtmp.415
	tfr	s,d	; ,
	addd	#24	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L181	; 
	leas	24,s	; ,,
	puls	y,u,pc	; 
	.globl _moveBlock
_moveBlock:
	pshs	y,u	; 
	leas	-25,s	; ,,
	stb	2,s	;  move, move
;----- asm -----
;  723 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[540]	blockAnimating = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockAnimating	; , blockAnimating
;----- asm -----
;  725 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[541]	lastBlockDirection = move;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	stb	_lastBlockDirection	; , lastBlockDirection
;----- asm -----
;  727 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[542]	switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	lbeq	L190	; 
	lblo	L189	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbeq	L223	; 
L188:
;----- asm -----
;  911 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[636]	if (moveCount < 999) moveCount++;
;  0 "" 2
;--- end asm ---
	ldu	_moveCount	;  number, moveCount
	cmpu	#998	;cmphi:	;  number,
	bhi	L207	; 
	leau	1,u	;  number,, number
	stu	_moveCount	;  number, moveCount
L207:
;----- asm -----
;  913 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[637]	updateInfoText();
;  0 "" 2
;  287 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[261]	itoa(moveCount, &infoText[0]);
;  0 "" 2
;  265 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[247]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	19,s	; , muls
	ldd	#10	; ,
	std	21,s	; , muls
	ldd	#1	; ,
	std	23,s	; , muls
;----- asm -----
;  267 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[248]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number, number.526
	cmpu	#999	;cmphi:	;  number,
	bls	L208	; 
	ldx	#999	; ,
	stx	,s	; , number.526
L208:
;----- asm -----
;  269 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[249]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	19,s	; ,,
	stx	14,s	; , ivtmp.493
	ldx	#_infoText	; ,
	stx	16,s	; , ivtmp.495
	ldx	14,s	; , ivtmp.493
L212:
;----- asm -----
;  271 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[250]		uint8_t d = 0;
;  0 "" 2
;  273 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[251]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.3746, muls
	ldb	#48	; ,
	stb	18,s	; , prephitmp.524
	cmpu	,s	;cmphi:(R)	;  D.3746, number.526
	bhi	L210	; 
	tfr	u,d	;  D.3746,
	nega
	negb
	sbca	#0
	std	12,s	; , ivtmp.486
	ldd	,s	; , number.526
	pshs	u	;subhi: R:d -= R:u	;  D.3746,
	subd	,s++	; 
	std	,s	; , number.526
	clr	3,s	;  d
L211:
;----- asm -----
;  275 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[252]			d++;
;  0 "" 2
;--- end asm ---
	inc	3,s	;  d
;----- asm -----
;  277 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[253]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.529, number.526
	tfr	y,d	; ,
	addd	12,s	; , ivtmp.486
	std	,s	; , number.526
	leax	d,u	;  tmp102,, D.3746
	pshs	u	;cmphi: R:u with R:x	;  D.3746, tmp102
	cmpx	,s++	;cmphi:	;  tmp102
	bhs	L211	; 
	sty	,s	;  number.529, number.526
	ldb	3,s	; , d
	addb	#48	; ,
	stb	18,s	; , prephitmp.524
L210:
;----- asm -----
;  280 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[255]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	16,s	; , ivtmp.495
	leax	1,x	; ,,
	stx	16,s	; , ivtmp.495
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	14,s	; , ivtmp.493
	leax	2,x	; ,,
	stx	14,s	; , ivtmp.493
	tfr	s,d	; ,
	addd	#25	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L212	; 
;----- asm -----
;  289 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[262]	itoa(levelHighscore, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	_levelHighscore	;  number, levelHighscore
;----- asm -----
;  265 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[247]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	19,s	; , muls
	ldd	#10	; ,
	std	21,s	; , muls
	ldd	#1	; ,
	std	23,s	; , muls
;----- asm -----
;  267 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[248]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number, number.523
	cmpu	#999	;cmphi:	;  number,
	bls	L213	; 
	ldx	#999	; ,
	stx	,s	; , number.523
L213:
;----- asm -----
;  269 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[249]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	19,s	; ,,
	stx	8,s	; , ivtmp.477
	ldx	#_infoText+6	; ,
	stx	10,s	; , ivtmp.479
	ldx	8,s	; , ivtmp.477
L217:
;----- asm -----
;  271 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[250]		uint8_t d = 0;
;  0 "" 2
;  273 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[251]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.3755, muls
	ldb	#48	; ,
	stb	5,s	; , prephitmp.456
	cmpu	,s	;cmphi:	;  D.3755, number.523
	bhi	L215	; 
	tfr	u,d	;  D.3755,
	nega
	negb
	sbca	#0
	std	6,s	; , ivtmp.468
	ldd	,s	; , number.523
	pshs	u	;subhi: R:d -= R:u	;  D.3755,
	subd	,s++	; 
	std	,s	; , number.523
	clr	4,s	;  d
L216:
;----- asm -----
;  275 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[252]			d++;
;  0 "" 2
;--- end asm ---
	inc	4,s	;  d
;----- asm -----
;  277 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[253]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.530, number.523
	tfr	y,d	; ,
	addd	6,s	; , ivtmp.468
	std	,s	; , number.523
	leax	d,u	;  tmp108,, D.3755
	pshs	x	;cmphi: R:x with R:u	;  tmp108, D.3755
	cmpu	,s++	;cmphi:	;  D.3755
	bls	L216	; 
	sty	,s	;  number.530, number.523
	ldb	4,s	; , d
	addb	#48	; ,
	stb	5,s	; , prephitmp.456
L215:
;----- asm -----
;  280 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[255]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	10,s	; , ivtmp.479
	leax	1,x	; ,,
	stx	10,s	; , ivtmp.479
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	8,s	; , ivtmp.477
	leax	2,x	; ,,
	stx	8,s	; , ivtmp.477
	tfr	s,d	; ,
	addd	#25	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L217	; 
	leas	25,s	; ,,
	puls	y,u,pc	; 
L189:
;----- asm -----
;  731 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[544]        		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L194	; 
	lbhs	L224	; 
;----- asm -----
;  735 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[546]            			blockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  737 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[547]             			nextBlockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  739 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[548]             			nextBlockX = blockX - 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	addb	#-2	; ,
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  741 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[549]             			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  743 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[550]             			blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  745 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[551]             			break;
;  0 "" 2
;--- end asm ---
L192:
;----- asm -----
;  790 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[574]        		break;
;  0 "" 2
;--- end asm ---
	jmp	L188	; 
L223:
;----- asm -----
;  853 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[606]        		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L204	; 
	lbhs	L225	; 
;----- asm -----
;  857 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[608]            			blockAnimation = height2RisingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  859 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[609]            			nextBlockAnimation = height2FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingRight	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  861 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[610]            			nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  863 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[611]            			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  865 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[612]            			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  867 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[613]            			break;
;  0 "" 2
;--- end asm ---
L202:
;----- asm -----
;  908 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[634]        		break;
;  0 "" 2
;--- end asm ---
	jmp	L188	; 
L190:
;----- asm -----
;  794 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[576]        		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	cmpb	#1	;cmpqi:	; ,
	beq	L199	; 
	lbhs	L226	; 
;----- asm -----
;  798 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[578]            			blockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  800 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[579]            			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  802 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[580]            			nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  804 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[581]            			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  806 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[582]            			break;
;  0 "" 2
;--- end asm ---
L197:
;----- asm -----
;  849 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[604]        		break;
;  0 "" 2
;--- end asm ---
	jmp	L188	; 
L199:
;----- asm -----
;  822 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[590]            			blockAnimation = height2RisingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  824 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[591]            			nextBlockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  826 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[592]            			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  828 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[593]            			nextBlockY = blockY + 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	addb	#2	; ,
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  830 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[594]            			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  832 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[595]            			break;
;  0 "" 2
;--- end asm ---
	bra	L197	; 
L204:
;----- asm -----
;  885 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[622]            			blockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  887 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[623]            			nextBlockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  889 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[624]            			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  891 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[625]            			nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  893 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[626]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L202	; 
L194:
;----- asm -----
;  763 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[560]             			blockAnimation = height2FallingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  765 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[561]             			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  767 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[562]             			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  769 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[563]             			nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  771 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[564]             			blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  773 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[565]             			break;
;  0 "" 2
;--- end asm ---
	jmp	L192	; 
L225:
	cmpb	#2	;cmpqi:	; ,
	lbeq	L205	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L202	; 
;----- asm -----
;  897 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[628]            			blockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  899 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[629]            			nextBlockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingBack	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  901 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[630]            			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  903 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[631]            			nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  905 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[632]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L202	; 
L224:
	cmpb	#2	;cmpqi:	; ,
	lbeq	L195	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L192	; 
;----- asm -----
;  777 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[567]             			blockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  779 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[568]             			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  781 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[569]             			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  783 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[570]             			nextBlockY = blockY - 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	addb	#-2	; ,
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  785 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[571]             			blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  787 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[572]             			break;
;  0 "" 2
;--- end asm ---
	jmp	L192	; 
L226:
	cmpb	#2	;cmpqi:	; ,
	beq	L200	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L197	; 
;----- asm -----
;  836 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[597]            			blockAnimation = height2RisingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  838 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[598]            			nextBlockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  840 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[599]            			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  842 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[600]            			nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  844 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[601]            			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  846 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[602]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L197	; 
L200:
;----- asm -----
;  810 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[584]            			blockAnimation = depth2RollingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  812 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[585]            			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  814 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[586]            			nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  816 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[587]            			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  818 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[588]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L197	; 
L195:
;----- asm -----
;  749 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[553]             			blockAnimation = height2FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  751 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[554]             			nextBlockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  753 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[555]             			nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  755 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[556]             			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  757 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[557]             			blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  759 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[558]             			break;
;  0 "" 2
;--- end asm ---
	jmp	L192	; 
L205:
;----- asm -----
;  871 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[615]            			blockAnimation = height2RisingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  873 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[616]            			nextBlockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  875 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[617]            			nextBlockX = blockX + 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	addb	#2	; ,
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  877 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[618]            			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  879 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[619]            			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  881 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[620]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L202	; 
	.globl _startBlockFalling
_startBlockFalling:
;----- asm -----
;  919 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[642]	gameState = BlockFalling;
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  921 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[643]	blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  923 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[644]	moveBlock(lastBlockDirection);
;  0 "" 2
;--- end asm ---
	ldb	_lastBlockDirection	; , lastBlockDirection
	jsr	_moveBlock	; 
;----- asm -----
;  925 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[645]	changeMusic(fallingMusic);
;  0 "" 2
;  715 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[534]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  717 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[535]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_fallingMusic	; ,
	stx	_currentMusic	; , currentMusic
;----- asm -----
;  927 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[646]	*vecx = 0;
;  0 "" 2
;--- end asm ---
	clr	[_vecx]	; * vecx
	rts
	.globl _blockMovingToStart
_blockMovingToStart:
	pshs	u	; 
	leas	-11,s	; ,,
;----- asm -----
;  1014 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[703]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1016 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[704]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	5,s	; , blockYOfs.45
;----- asm -----
;  999 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[693]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1001 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[694]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	9,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1003 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[695]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , blockYOfs.45
	stb	10,s	; , a
	clr	9,s	;  b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 10,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1006 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[697]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	6,s	; , blockX.42
;----- asm -----
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , blockX.42
	aslb	; 
	addb	6,s	; , blockX.42
	stb	2,s	; ,
	ldb	_blockY	; , blockY
	aslb	; 
	aslb	; 
	aslb	; 
	stb	4,s	; ,
	ldb	2,s	; ,
	addb	4,s	; ,
	addb	#-104	; ,
	stb	9,s	; , a
	ldb	6,s	; , blockX.42
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp38
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp39
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp38,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp39, tmp41
	addb	3,s	;  tmp41,
	stb	10,s	;  tmp41, b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 10,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1008 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[698]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp45, tmp44,
	ldx	,x	;  D.3905,
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	;  D.3905, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	7,s	;  D.3905, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1018 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[705]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.46, blockYOfs
;----- asm -----
;  1020 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[706]	if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.46
	bne	L231	; 
;----- asm -----
;  1022 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[707]		gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
L231:
	leas	11,s	; ,,
	puls	u,pc	; 
	.globl _blockMoving
_blockMoving:
	pshs	u	; 
	leas	-16,s	; ,,
;----- asm -----
;  1088 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[750]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1090 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[751]	drawBlock(0);
;  0 "" 2
;  999 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[693]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1001 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[694]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1003 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[695]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	clr	15,s	;  a
	clr	14,s	;  b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	ldb 14,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1006 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[697]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	9,s	; , blockX.42
;----- asm -----
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , blockX.42
	aslb	; 
	addb	9,s	; , blockX.42
	stb	2,s	; ,
	ldb	_blockY	; , blockY
	aslb	; 
	aslb	; 
	aslb	; 
	stb	4,s	; ,
	ldb	2,s	; ,
	addb	4,s	; ,
	addb	#-104	; ,
	stb	14,s	; , a
	ldb	9,s	; , blockX.42
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp45
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp46
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp45,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp46, tmp48
	addb	3,s	;  tmp48,
	stb	15,s	;  tmp48, b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 15,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1008 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[698]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp52, tmp51,
	ldx	,x	;  D.3953,
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	12,s	;  D.3953, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	12,s	;  D.3953, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 12,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1092 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[752]	doBlockAnimation();
;  0 "" 2
;  1068 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[737]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	beq	L233	; 
;----- asm -----
;  1070 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[738]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.51, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.51,
	lbeq	L255	; 
L233:
;----- asm -----
;  1094 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[753]	if (!blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbne	L254	; 
;----- asm -----
;  1100 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[758]		unsigned long int index = (unsigned long int )blockY * LEVEL_WIDTH + (unsigned long int)blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	lda	#12	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp54
	ldb	_blockX	; , blockX
	sex		;extendqihi2: R:b -> R:d	; ,
	tfr	d,x	; , blockX
	tfr	u,d	;  tmp54,
	leax	d,x	; ,, blockX
	stx	,s	; , index
;----- asm -----
;  1102 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[759]		char c0 = isField(level[index]);
;  0 "" 2
;--- end asm ---
	exg	d,x	; , tmp65
	addd	_level	; , level
	exg	d,x	; , tmp65
	ldb	,x	;  D.2693,
;----- asm -----
;  295 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[267]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  D.2693,
	lbeq	L235	; 
	cmpb	#97	;cmpqi:	;  D.2693,
	lbeq	L235	; 
	eorb	#111	;  D.2693,
	clra		;zero_extendqihi: R:b -> R:d	;  D.2693, tmp67
	addd	#-1	;  tmp68,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	stb	11,s	; , prephitmp.575
L237:
;----- asm -----
;  1104 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[760]		char c1 = isField(level[index+1]);
;  0 "" 2
;--- end asm ---
	ldb	1,x	;  D.2697,
;----- asm -----
;  295 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[267]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  D.2697,
	lbeq	L238	; 
	cmpb	#97	;cmpqi:	;  D.2697,
	lbeq	L238	; 
	eorb	#111	;  D.2697,
	clra		;zero_extendqihi: R:b -> R:d	;  D.2697, tmp71
	addd	#-1	;  tmp72,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	stb	6,s	; , iftmp.7
L240:
;----- asm -----
;  1106 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[761]		char c2 = isField(level[index + LEVEL_WIDTH]);
;  0 "" 2
;--- end asm ---
	ldb	12,x	;  D.2701,
;----- asm -----
;  295 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[267]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  D.2701,
	beq	L241	; 
	cmpb	#97	;cmpqi:	;  D.2701,
	beq	L241	; 
	eorb	#111	;  D.2701,
	clra		;zero_extendqihi: R:b -> R:d	;  D.2701, tmp75
	addd	#-1	;  tmp76,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	stb	8,s	; , iftmp.7
;----- asm -----
;  1108 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[762]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L246	; 
L258:
	cmpb	#1	;cmpqi:	;  blockOrientation,
	lblo	L245	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbeq	L256	; 
L244:
;----- asm -----
;  1140 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[781]		if (blockOrientation == Standing && blockX == endX && blockY == endY) {
;  0 "" 2
;--- end asm ---
	tst	_blockOrientation	;  blockOrientation
	bne	L253	; 
	ldb	_blockX	; , blockX
	cmpb	_endX	;cmpqi:	; , endX
	lbeq	L257	; 
L253:
;----- asm -----
;  1152 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[788]			if (gameState != BlockFalling) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#5	;cmpqi:	; ,
	beq	L254	; 
;----- asm -----
;  1154 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[789]				gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
L254:
	leas	16,s	; ,,
	puls	u,pc	; 
L235:
	ldb	#1	; ,
	stb	11,s	; , prephitmp.575
	jmp	L237	; 
L241:
	ldb	#1	; ,
	stb	8,s	; , iftmp.7
;----- asm -----
;  1108 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[762]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	bne	L258	; 
L246:
;----- asm -----
;  1121 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[769]			if (!c0 || !c2) {
;  0 "" 2
;--- end asm ---
	tst	11,s	;  prephitmp.575
	beq	L249	; 
	tst	8,s	;  iftmp.7
	bne	L250	; 
L249:
;----- asm -----
;  1123 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[770]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L250:
;----- asm -----
;  1126 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[772]			break;
;  0 "" 2
;--- end asm ---
	jmp	L244	; 
L238:
	ldb	#1	; ,
	stb	6,s	; , iftmp.7
	jmp	L240	; 
L245:
;----- asm -----
;  1112 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[764]			if (!c0) {
;  0 "" 2
;--- end asm ---
	tst	11,s	;  prephitmp.575
	lbeq	L259	; 
L248:
;----- asm -----
;  1117 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[767]			break;
;  0 "" 2
;--- end asm ---
	jmp	L244	; 
L255:
;----- asm -----
;  1072 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[739]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  1074 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[740]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  1076 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[741]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  1078 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[742]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  1080 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[743]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
	jmp	L233	; 
L256:
;----- asm -----
;  1130 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[774]			if (!c0 || ! c1) {
;  0 "" 2
;--- end asm ---
	tst	11,s	;  prephitmp.575
	beq	L251	; 
	tst	6,s	;  iftmp.7
	bne	L252	; 
L251:
;----- asm -----
;  1132 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[775]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L252:
;----- asm -----
;  1135 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[777]			break;
;  0 "" 2
;--- end asm ---
	jmp	L244	; 
L257:
	ldb	_blockY	; , blockY
	cmpb	_endY	;cmpqi:	; , endY
	lbne	L253	; 
;----- asm -----
;  1142 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[782]			blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  1144 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[783]			gameState = BlockMovingAtEnd;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  1146 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[784]			changeMusic(levelEndMusic);
;  0 "" 2
;  715 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[534]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  717 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[535]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_levelEndMusic	; ,
	stx	_currentMusic	; , currentMusic
;----- asm -----
;  1148 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[785]			*vecx = 1;
;  0 "" 2
;--- end asm ---
	stb	[_vecx]	; ,* vecx
	jmp	L254	; 
L259:
;----- asm -----
;  1114 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[765]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
	jmp	L248	; 
	.globl _blockWaiting
_blockWaiting:
	pshs	u	; 
	leas	-10,s	; ,,
;----- asm -----
;  1029 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[713]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1031 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[714]	drawBlock(0);
;  0 "" 2
;  999 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[693]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1001 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[694]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	8,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 8,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1003 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[695]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	clr	9,s	;  a
	clr	8,s	;  b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 8,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1006 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[697]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	5,s	; , blockX.42
;----- asm -----
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , blockX.42
	aslb	; 
	addb	5,s	; , blockX.42
	stb	2,s	; ,
	ldb	_blockY	; , blockY
	aslb	; 
	aslb	; 
	aslb	; 
	stb	4,s	; ,
	ldb	2,s	; ,
	addb	4,s	; ,
	addb	#-104	; ,
	stb	8,s	; , a
	ldb	5,s	; , blockX.42
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp40
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp41
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp40,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp41, tmp43
	addb	3,s	;  tmp43,
	stb	9,s	;  tmp43, b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 8,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1008 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[698]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp47, tmp46,
	ldx	,x	;  D.4019,
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	6,s	;  D.4019, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	6,s	;  D.4019, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 6,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1033 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[715]	joybit();
;  0 "" 2
;  2354 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Joy_Digital; BIOS call
;  0 "" 2
;  1035 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[716]	if (pot0 < -10) {
;  0 "" 2
;--- end asm ---
	ldb	-14309	;  D.2660,
	cmpb	#-10	;cmpqi:	;  D.2660,
	lblt	L267	; 
	ldb	-14309	;  D.2661,
	cmpb	#10	;cmpqi:	;  D.2661,
	bgt	L268	; 
	ldb	-14308	;  D.2663,
	cmpb	#-10	;cmpqi:	;  D.2663,
	lblt	L269	; 
	ldb	-14308	;  D.2664,
	cmpb	#10	;cmpqi:	;  D.2664,
	lbgt	L270	; 
L262:
;----- asm -----
;  1057 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[729]	if (gameState == BlockMoving) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#4	;cmpqi:	; ,
	bne	L266	; 
;----- asm -----
;  1059 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[730]		changeMusic(movingMusic);
;  0 "" 2
;  715 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[534]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  717 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[535]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_movingMusic	; ,
	stx	_currentMusic	; , currentMusic
;----- asm -----
;  1061 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[731]		*vecx = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	[_vecx]	; ,* vecx
L266:
	leas	10,s	; ,,
	puls	u,pc	; 
L268:
;----- asm -----
;  1042 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[720]		moveBlock(Right);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  1044 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[721]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	jmp	L262	; 
L267:
;----- asm -----
;  1037 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[717]		moveBlock(Left);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_moveBlock	; 
;----- asm -----
;  1039 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[718]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	jmp	L262	; 
L269:
;----- asm -----
;  1047 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[723]		moveBlock(Down);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  1049 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[724]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	jmp	L262	; 
L270:
;----- asm -----
;  1052 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[726]		moveBlock(Up);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  1054 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[727]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	jmp	L262	; 
LC0:
	.byte	0x43
	.byte	0x4C
	.byte	0x45
	.byte	0x41
	.byte	0x52
	.byte	0x20
	.byte	0x53
	.byte	0x43
	.byte	0x4F
	.byte	0x52
	.byte	0x45
	.byte	0x3F
	.byte	0x80
	.byte	0x00
LC1:
	.byte	0x33
	.byte	0x20
	.byte	0x59
	.byte	0x45
	.byte	0x53
	.byte	0x80
	.byte	0x00
LC2:
	.byte	0x34
	.byte	0x20
	.byte	0x4E
	.byte	0x4F
	.byte	0x80
	.byte	0x00
	.globl _clearMenu
_clearMenu:
	pshs	u	; 
	leas	-5,s	; ,,
;----- asm -----
;  1243 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[847]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1245 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[848]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	4,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1247 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[849]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1249 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[850]    Print_Str_d(100, -80, "CLEAR SCORE?�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	4,s	; , a
	ldb	#-80	; ,
	stb	3,s	; , b
	ldx	#LC0	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1251 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[851]    Print_Str_d(50, -110, "3 YES�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	4,s	; , b
	ldx	#LC1	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 4,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1253 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[852]    Print_Str_d(20, -110, "4 NO�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	4,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC2	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1255 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[853]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	,s	; ,
	bitb	#4	; ,
	lbeq	L272	; 
;----- asm -----
;  1257 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[854]		for (uint8_t i = 0; i < 6; i++) {
;  0 "" 2
;  1259 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]			writeEeprom(i, 0xff);
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L281	; 
L273:
;----- asm -----
;  1259 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]			writeEeprom(i, 0xff);
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L282	; 
L274:
;----- asm -----
;  1259 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]			writeEeprom(i, 0xff);
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L283	; 
L275:
;----- asm -----
;  1259 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]			writeEeprom(i, 0xff);
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L284	; 
L276:
;----- asm -----
;  1259 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]			writeEeprom(i, 0xff);
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L285	; 
L277:
;----- asm -----
;  1259 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]			writeEeprom(i, 0xff);
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	bne	L286	; 
L278:
;----- asm -----
;  1262 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[857]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	,s	; ,
L272:
;----- asm -----
;  1265 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[859]	if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	#8	; ,
	andb	,s	; ,
	beq	L280	; 
;----- asm -----
;  1267 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[860]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L280:
	leas	5,s	; ,,
	puls	u,pc	; 
L286:
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
	jmp	L278	; 
L282:
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
	jmp	L274	; 
L283:
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
	jmp	L275	; 
L284:
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
	jmp	L276	; 
L285:
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
	jmp	L277	; 
L281:
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
	jmp	L273	; 
	.globl _writeEeprom
_writeEeprom:
	pshs	b	; 
;----- asm -----
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L289	; 
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , address
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , data
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
L289:
	leas	1,s	; ,,
	rts
	.globl _readEeprom
_readEeprom:
	leas	-2,s	; ,,
	stb	,s	;  address, address
;----- asm -----
;  251 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[236]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	bne	L294	; 
;----- asm -----
;  256 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[239]		return 0xff;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	1,s	; , result
	leas	2,s	; ,,
	rts
L294:
;----- asm -----
;  253 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[237]		return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , address
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	1,s	; , result
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , result
	leas	2,s	; ,,
	rts
	.globl _startLevel
_startLevel:
	pshs	y,u	; 
	leas	-34,s	; ,,
;----- asm -----
;  933 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[651]	if (levelNumber == 0) {
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	stb	2,s	; ,
	lbne	L296	; 
;----- asm -----
;  935 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[652]		level = level0;
;  0 "" 2
;--- end asm ---
	ldx	_level0	; , level0
	stx	_level	; , level
L297:
;----- asm -----
;  945 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[659]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
;  0 "" 2
;  251 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[236]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L332	; 
;----- asm -----
;  256 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[239]		return 0xff;
;  0 "" 2
;--- end asm ---
	ldx	#255	;  prephitmp.653,
L300:
	stx	_levelHighscore	;  prephitmp.653, levelHighscore
;----- asm -----
;  947 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[660]	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
;  0 "" 2
;  251 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[236]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L333	; 
;----- asm -----
;  256 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[239]		return 0xff;
;  0 "" 2
;--- end asm ---
	ldd	#-256	;  prephitmp.655,
L302:
	ora	_levelHighscore	; , levelHighscore
	orb	_levelHighscore+1	; , levelHighscore
	std	_levelHighscore	;  levelHighscore.37, levelHighscore
;----- asm -----
;  949 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[661]	if (levelHighscore == 0) levelHighscore = 999;
;  0 "" 2
;--- end asm ---
	cmpd	#0	;  levelHighscore.37
	bne	L303	; 
	ldx	#999	; ,
	stx	_levelHighscore	; , levelHighscore
L303:
;----- asm -----
;  951 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[662]	lineCount = 0;
;  0 "" 2
;--- end asm ---
	clr	_lineCount	;  lineCount
;----- asm -----
;  953 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[663]	setupX();
;  0 "" 2
;--- end asm ---
	jsr	_setupX	; 
;----- asm -----
;  955 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[664]	setupY();
;  0 "" 2
;  670 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[505]	unsigned long int index;
;  0 "" 2
;  672 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[506]	int8_t x = 0;
;  0 "" 2
;  674 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[507]	int8_t y = 0;
;  0 "" 2
;  676 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[508]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
;  0 "" 2
;--- end asm ---
	ldu	#0	;  ivtmp.727,
L310:
;----- asm -----
;  678 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[509]		int8_t y0 = -1;
;  0 "" 2
;  680 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[510]		int8_t y1 = -1;
;  0 "" 2
;  682 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[511]		for (y = 0; y < LEVEL_HEIGHT; y++) {
;  0 "" 2
;--- end asm ---
	stu	23,s	;  ivtmp.727, ivtmp.709
	clr	6,s	;  y0
	ldb	#-1	; ,
	stb	25,s	; , y0.720
	stb	26,s	; , y0.721
	jmp	L309	; 
L335:
	cmpb	#97	;cmpqi:	; ,
	lbeq	L304	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L304	; 
;----- asm -----
;  295 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[267]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , c1
	cmpb	#46	;cmpqi:	; ,
	lbeq	L304	; 
	cmpb	#97	;cmpqi:	; ,
	lbeq	L304	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L304	; 
;----- asm -----
;  701 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[523]				if (y0 >= 0) {
;  0 "" 2
;--- end asm ---
	ldb	25,s	; , y0.720
	cmpb	#-1	;cmpqi:	; ,
	beq	L308	; 
;----- asm -----
;  703 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[524]					addLine(x + 1, y0, x + 1, y1 + 1);
;  0 "" 2
;--- end asm ---
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  ivtmp.727,
	incb	; 
	stb	,s	; , D.4162
	ldb	26,s	; , y0.721
	incb	; 
	pshs	b	; 
	ldb	1,s	; , D.4162
	pshs	b	; 
	ldb	27,s	; , y0.720
	pshs	b	; 
	ldb	3,s	; , D.4162
	jsr	_addLine	; 
;----- asm -----
;  705 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[525]					y0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	28,s	; , y0.720
	leas	3,s	; ,,
L308:
	inc	6,s	;  y0
	ldd	23,s	; , ivtmp.709
	addd	#12	; ,
	std	23,s	; , ivtmp.709
	ldb	6,s	; , y0
	cmpb	#17	;cmpqi:	; ,
	lbeq	L334	; 
L309:
;----- asm -----
;  688 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[516]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
;  0 "" 2
;  690 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[517]			char c0 = level[index];
;  0 "" 2
;--- end asm ---
	ldx	23,s	;  tmp105, ivtmp.709
	exg	d,x	; , tmp105
	addd	_level	; , level
	exg	d,x	; , tmp105
	ldb	,x+	; ,
	stb	,s	; , c0
;----- asm -----
;  692 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[518]			char c1 = level[index+1];
;  0 "" 2
;--- end asm ---
	ldb	,x	; ,
	stb	7,s	; , c1
;----- asm -----
;  694 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[519]			if (isField(c0) || isField(c1)) {
;  0 "" 2
;  295 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[267]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	,s	; , c0
	cmpb	#46	;cmpqi:	; ,
	lbne	L335	; 
L304:
;----- asm -----
;  696 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[520]				if (y0 < 0) y0 = y;
;  0 "" 2
;--- end asm ---
	ldb	25,s	; , y0.720
	cmpb	#-1	;cmpqi:	; ,
	beq	L336	; 
L307:
;----- asm -----
;  698 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[521]				y1 = y;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , y0
	stb	26,s	; , y0.721
	jmp	L308	; 
L336:
	ldb	6,s	; , y0
	stb	25,s	; , y0.720
	bra	L307	; 
L334:
	leau	1,u	;  ivtmp.727,, ivtmp.727
	cmpu	#11	;cmphi:	;  ivtmp.727,
	lbne	L310	; 
;----- asm -----
;  957 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[665]	blockX = startX;
;  0 "" 2
;--- end asm ---
	ldb	_startX	; , startX
	stb	_blockX	; , blockX
;----- asm -----
;  959 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[666]	blockY = startY;
;  0 "" 2
;--- end asm ---
	ldb	_startY	; , startY
	stb	_blockY	; , blockY
;----- asm -----
;  961 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[667]	blockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  963 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[668]	blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  965 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[669]	blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
;----- asm -----
;  967 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[670]	blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  969 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[671]	blockYOfs = -30;
;  0 "" 2
;--- end asm ---
	ldb	#-30	; ,
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  971 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[672]	gameState = BlockMovingToStart;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  973 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[673]	changeMusic(startMusic);
;  0 "" 2
;  715 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[534]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  717 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[535]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_startMusic	; ,
	stx	_currentMusic	; , currentMusic
;----- asm -----
;  975 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[674]	*vecx = 2;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  977 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[675]	moveCount = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_moveCount	; , moveCount
;----- asm -----
;  979 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[676]	updateInfoText();
;  0 "" 2
;  287 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[261]	itoa(moveCount, &infoText[0]);
;  0 "" 2
;  265 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[247]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	28,s	; , muls
	ldd	#10	; ,
	std	30,s	; , muls
	ldd	#1	; ,
	std	32,s	; , muls
;----- asm -----
;  267 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[248]	if (number > 999) number = 999;
;  0 "" 2
;  269 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[249]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	28,s	; ,,
	stx	19,s	; , ivtmp.700
	ldx	#_infoText	; ,
	stx	21,s	; , ivtmp.702
	ldd	#0	; ,
	std	,s	; , number.723
	ldx	19,s	; , ivtmp.700
L314:
;----- asm -----
;  271 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[250]		uint8_t d = 0;
;  0 "" 2
;  273 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[251]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.4170, muls
	ldb	#48	; ,
	stb	10,s	; , prephitmp.661
	cmpu	,s	;cmphi:	;  D.4170, number.723
	bhi	L312	; 
	tfr	u,d	;  D.4170,
	nega
	negb
	sbca	#0
	std	17,s	; , ivtmp.691
	ldd	,s	; , number.723
	pshs	u	;subhi: R:d -= R:u	;  D.4170,
	subd	,s++	; 
	std	,s	; , number.723
	clr	8,s	;  d
L313:
;----- asm -----
;  275 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[252]			d++;
;  0 "" 2
;--- end asm ---
	inc	8,s	;  d
;----- asm -----
;  277 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[253]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.729, number.723
	tfr	y,d	; ,
	addd	17,s	; , ivtmp.691
	std	,s	; , number.723
	leax	d,u	;  tmp116,, D.4170
	pshs	u	;cmphi: R:u with R:x	;  D.4170, tmp116
	cmpx	,s++	;cmphi:	;  tmp116
	bhs	L313	; 
	sty	,s	;  number.729, number.723
	ldb	8,s	; , d
	addb	#48	; ,
	stb	10,s	; , prephitmp.661
L312:
;----- asm -----
;  280 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[255]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	21,s	; , ivtmp.702
	leax	1,x	; ,,
	stx	21,s	; , ivtmp.702
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	19,s	; , ivtmp.700
	leax	2,x	; ,,
	stx	19,s	; , ivtmp.700
	tfr	s,d	; ,
	addd	#34	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L314	; 
;----- asm -----
;  289 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[262]	itoa(levelHighscore, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	_levelHighscore	;  number.722, levelHighscore
;----- asm -----
;  265 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[247]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	28,s	; , muls
	ldd	#10	; ,
	std	30,s	; , muls
	ldd	#1	; ,
	std	32,s	; , muls
;----- asm -----
;  267 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[248]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number.722, number
	cmpu	#999	;cmphi:	;  number.722,
	bls	L315	; 
	ldx	#999	; ,
	stx	,s	; , number
L315:
;----- asm -----
;  269 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[249]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	28,s	; ,,
	stx	13,s	; , ivtmp.684
	ldx	#_infoText+6	; ,
	stx	15,s	; , ivtmp.686
	ldx	13,s	; , ivtmp.684
L319:
;----- asm -----
;  271 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[250]		uint8_t d = 0;
;  0 "" 2
;  273 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[251]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.4179, muls
	ldb	#48	; ,
	stb	27,s	; , prephitmp.728
	cmpu	,s	;cmphi:	;  D.4179, number
	bhi	L317	; 
	tfr	u,d	;  D.4179,
	nega
	negb
	sbca	#0
	std	11,s	; , ivtmp.675
	ldd	,s	; , number
	pshs	u	;subhi: R:d -= R:u	;  D.4179,
	subd	,s++	; 
	std	,s	; , number
	clr	9,s	;  d
L318:
;----- asm -----
;  275 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[252]			d++;
;  0 "" 2
;--- end asm ---
	inc	9,s	;  d
;----- asm -----
;  277 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[253]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.730, number
	tfr	y,d	; ,
	addd	11,s	; , ivtmp.675
	std	,s	; , number
	leax	d,u	;  tmp122,, D.4179
	pshs	u	;cmphi: R:u with R:x	;  D.4179, tmp122
	cmpx	,s++	;cmphi:	;  tmp122
	bhs	L318	; 
	sty	,s	;  number.730, number
	ldb	9,s	; , d
	addb	#48	; ,
	stb	27,s	; , prephitmp.728
L317:
;----- asm -----
;  280 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[255]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	15,s	; , ivtmp.686
	leax	1,x	; ,,
	stx	15,s	; , ivtmp.686
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	13,s	; , ivtmp.684
	leax	2,x	; ,,
	stx	13,s	; , ivtmp.684
	tfr	s,d	; ,
	addd	#34	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L319	; 
	leas	34,s	; ,,
	puls	y,u,pc	; 
L296:
	cmpb	#1	;cmpqi:	; ,
	beq	L337	; 
;----- asm -----
;  941 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[656]		level = level2;
;  0 "" 2
;--- end asm ---
	ldd	_level2	; , level2
	std	_level	; , level
	jmp	L297	; 
L337:
;----- asm -----
;  938 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[654]		level = level1;
;  0 "" 2
;--- end asm ---
	ldx	_level1	; , level1
	stx	_level	; , level
	jmp	L297	; 
L332:
;----- asm -----
;  253 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[237]		return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	asl	2,s	; 
	ldb	2,s	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	3,s	; , result
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , result
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , prephitmp.653
	ldb	_levelNumber	; , levelNumber
	stb	2,s	; ,
	jmp	L300	; 
L333:
;----- asm -----
;  253 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[237]		return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	asl	2,s	; 
	inc	2,s	; 
	ldb	2,s	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	5,s	; , result
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , result
	tfr	b,a	; ,
	clrb	; 
	jmp	L302	; 
LC3:
	.byte	0x4D
	.byte	0x41
	.byte	0x49
	.byte	0x4E
	.byte	0x20
	.byte	0x4D
	.byte	0x45
	.byte	0x4E
	.byte	0x55
	.byte	0x80
	.byte	0x00
LC4:
	.byte	0x31
	.byte	0x20
	.byte	0x53
	.byte	0x54
	.byte	0x41
	.byte	0x52
	.byte	0x54
	.byte	0x20
	.byte	0x47
	.byte	0x41
	.byte	0x4D
	.byte	0x45
	.byte	0x80
	.byte	0x00
LC5:
	.byte	0x32
	.byte	0x20
	.byte	0x43
	.byte	0x4C
	.byte	0x45
	.byte	0x41
	.byte	0x52
	.byte	0x20
	.byte	0x48
	.byte	0x49
	.byte	0x47
	.byte	0x48
	.byte	0x53
	.byte	0x43
	.byte	0x4F
	.byte	0x52
	.byte	0x45
	.byte	0x80
	.byte	0x00
LC6:
	.byte	0x33
	.byte	0x20
	.byte	0x42
	.byte	0x41
	.byte	0x4E
	.byte	0x4B
	.byte	0x49
	.byte	0x4E
	.byte	0x47
	.byte	0x20
	.byte	0x54
	.byte	0x45
	.byte	0x53
	.byte	0x54
	.byte	0x80
	.byte	0x00
	.globl _mainMenu
_mainMenu:
	pshs	u	; 
	leas	-5,s	; ,,
;----- asm -----
;  1209 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[826]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1211 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[827]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1213 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[828]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1215 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[829]    Print_Str_d(100, -70, "MAIN MENU�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	3,s	; , a
	ldb	#-70	; ,
	stb	4,s	; , b
	ldx	#LC3	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 4,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1217 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[830]    Print_Str_d(50, -110, "1 START GAME�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	4,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC4	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1219 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[831]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	4,s	; , b
	ldx	#LC5	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 4,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1221 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[832]    Print_Str_d(-10, -110, "3 BANKING TEST�");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	4,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC6	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1223 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[833]	if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	,s	; ,
	bitb	#1	; ,
	lbne	L343	; 
L339:
;----- asm -----
;  1228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[836]	if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	#2	;  tmp34,
	andb	,s	;  tmp34,
	beq	L340	; 
;----- asm -----
;  1230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[837]		gameState = ClearMenu;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_gameState	; , gameState
L340:
;----- asm -----
;  1233 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[839]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	andb	,s	; ,
	beq	L342	; 
;----- asm -----
;  1235 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[840]		sendCommand(CMD_SET_BANK, 1);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  1237 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jmp 0xf000
;  0 "" 2
;--- end asm ---
L342:
	leas	5,s	; ,,
	puls	u,pc	; 
L343:
;----- asm -----
;  1225 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[834]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	,s	; ,
	jmp	L339	; 
	.globl _blockFalling
_blockFalling:
	pshs	u	; 
	leas	-11,s	; ,,
;----- asm -----
;  1163 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[797]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1165 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[798]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	5,s	; , blockYOfs.68
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  1167 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[799]	if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	ble	L348	; 
L345:
;----- asm -----
;  1174 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[803]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	lbeq	L349	; 
	leas	11,s	; ,,
	puls	u,pc	; 
L348:
;----- asm -----
;  1169 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[800]		drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;  999 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[693]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1001 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[694]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	9,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1003 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[695]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	;  tmp32, blockYOfs.68
	negb	;  tmp32
	lda	5,s	;mulqihi3	;  blockYOfs.68
	mul
	stb	10,s	;movlsbqihi: R:d -> 10,s	;  a, tmp33
	clr	9,s	;  b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 10,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1006 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[697]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	6,s	; , blockX.42
;----- asm -----
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , blockX.42
	aslb	; 
	addb	6,s	; , blockX.42
	stb	2,s	; ,
	ldb	_blockY	; , blockY
	aslb	; 
	aslb	; 
	aslb	; 
	stb	4,s	; ,
	ldb	2,s	; ,
	addb	4,s	; ,
	addb	#-104	; ,
	stb	9,s	; , a
	ldb	6,s	; , blockX.42
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp40
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp41
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp40,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp41, tmp43
	addb	3,s	;  tmp43,
	stb	10,s	;  tmp43, b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 10,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1008 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[698]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp47, tmp46,
	ldx	,x	;  D.4355,
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	;  D.4355, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	7,s	;  D.4355, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1171 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[801]		doBlockAnimation();
;  0 "" 2
;  1068 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[737]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbeq	L345	; 
;----- asm -----
;  1070 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[738]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.51, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.51,
	lbne	L345	; 
;----- asm -----
;  1072 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[739]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  1074 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[740]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  1076 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[741]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  1078 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[742]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  1080 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[743]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
	jmp	L345	; 
L349:
;----- asm -----
;  1176 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[804]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	leas	11,s	; ,,
	puls	u,pc	; 
	.globl _blockMovingAtEnd
_blockMovingAtEnd:
	pshs	u	; 
	leas	-11,s	; ,,
;----- asm -----
;  1183 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[810]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1185 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[811]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	5,s	; , blockYOfs.69
;----- asm -----
;  999 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[693]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1001 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[694]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	9,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1003 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[695]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , blockYOfs.69
	stb	10,s	; , a
	clr	9,s	;  b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 10,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1006 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[697]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	6,s	; , blockX.42
;----- asm -----
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , blockX.42
	aslb	; 
	addb	6,s	; , blockX.42
	stb	2,s	; ,
	ldb	_blockY	; , blockY
	aslb	; 
	aslb	; 
	aslb	; 
	stb	4,s	; ,
	ldb	2,s	; ,
	addb	4,s	; ,
	addb	#-104	; ,
	stb	9,s	; , a
	ldb	6,s	; , blockX.42
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp43
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp44
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp43,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp44, tmp46
	addb	3,s	;  tmp46,
	stb	10,s	;  tmp46, b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 10,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1008 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[698]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp50, tmp49,
	ldx	,x	;  D.4409,
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	;  D.4409, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	7,s	;  D.4409, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1187 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[812]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.70, blockYOfs
;----- asm -----
;  1189 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[813]	if (blockYOfs == 30) {
;  0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	;  blockYOfs.70,
	beq	L356	; 
	leas	11,s	; ,,
	puls	u,pc	; 
L356:
;----- asm -----
;  1191 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[814]		if (moveCount < levelHighscore) {
;  0 "" 2
;--- end asm ---
	ldu	_moveCount	;  moveCount.773, moveCount
	cmpu	_levelHighscore	;cmphi:	;  moveCount.773, levelHighscore
	blo	L357	; 
L352:
;----- asm -----
;  1198 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[818]		levelNumber++;
;  0 "" 2
;--- end asm ---
	inc	_levelNumber	;  levelNumber
	ldb	_levelNumber	;  levelNumber.74, levelNumber
;----- asm -----
;  1200 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[819]		if (levelNumber > 2) levelNumber = 0;
;  0 "" 2
;--- end asm ---
	cmpb	#2	;cmpqi:	;  levelNumber.74,
	ble	L354	; 
	clr	_levelNumber	;  levelNumber
L354:
;----- asm -----
;  1202 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[820]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	leas	11,s	; ,,
	puls	u,pc	; 
L357:
;----- asm -----
;  1193 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[815]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.774, levelNumber
;----- asm -----
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L353	; 
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	aslb	;  levelNumber.774
	pshs	b	;  levelNumber.774
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  moveCount.773,
	pshs	b	; 
	ldb	#3	; ,
	jsr	_sendCommand	; 
	leas	2,s	; ,,
	ldu	_moveCount	;  moveCount.773, moveCount
	ldb	_levelNumber	;  levelNumber.774, levelNumber
L353:
;----- asm -----
;  1195 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[816]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L352	; 
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	aslb	;  levelNumber.774
	incb	;  levelNumber.774
	pshs	b	;  levelNumber.774
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  moveCount.773, tmp54
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	pshs	b	;  tmp54
	ldb	#3	; ,
	jsr	_sendCommand	; 
	leas	2,s	; ,,
	jmp	L352	; 
	.globl _main
_main:
	pshs	y,u	; 
	leas	-15,s	; ,,
;----- asm -----
;  1345 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[914]	*vecx = 4;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  1349 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[917]	picAvailable = 0;
;  0 "" 2
;--- end asm ---
	clr	_picAvailable	;  picAvailable
;----- asm -----
;  1351 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[918]	sendCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  1353 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[919]	sendCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  1355 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[920]	if (sendCommand(CMD_VERSION, 0) == 4) {
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
	leas	3,s	; ,,
	cmpb	#4	;cmpqi:	;  D.2770,
	bne	L359	; 
;----- asm -----
;  1357 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[921]		picAvailable = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_picAvailable	; , picAvailable
L359:
;----- asm -----
;  1362 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[925]	memcpy(infoText, "001 / 999�", 10);
;  0 "" 2
;--- end asm ---
	ldx	#12336	; ,
	stx	_infoText	; , infoText
	ldx	#12576	; ,
	stx	_infoText+2	; , infoText
	ldx	#12064	; ,
	stx	_infoText+4	; , infoText
	ldx	#14649	; ,
	stx	_infoText+6	; , infoText
	ldx	#14720	; ,
	stx	_infoText+8	; , infoText
;----- asm -----
;  1366 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[928]	epot0 = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14305	; ,
;----- asm -----
;  1368 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[929]	epot1 = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	-14304	; ,
;----- asm -----
;  1370 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[930]	epot2 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14303	; 
;----- asm -----
;  1372 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[931]	epot3 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14302	; 
;----- asm -----
;  1375 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[933]	gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
;----- asm -----
;  1377 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[934]	musicInit();
;  0 "" 2
;--- end asm ---
	jsr	_musicInit	; 
;----- asm -----
;  1380 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[936]	while (1) {
;  0 "" 2
;--- end asm ---
L387:
;----- asm -----
;  1383 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[938]		frwait();
;  0 "" 2
;  97 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  1386 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[940]		switch (gameState) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#6	;cmpqi:	; ,
	lbhi	L360	; 
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp53
	jmp	[L368,x]	; , tmp53
L368:
	.word L361
	.word L362
	.word L363
	.word L364
	.word L365
	.word L366
	.word L367
L367:
;----- asm -----
;  1438 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[966]				showInfo();
;  0 "" 2
;  1335 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[907]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	13,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1337 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[908]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1339 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[909]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	14,s	; , a
	ldb	#-70	; ,
	stb	13,s	; , b
	ldx	#_infoText	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 13,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1440 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[967]        			blockMovingAtEnd();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingAtEnd	; 
;----- asm -----
;  1442 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[968]        			break;
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
L360:
;----- asm -----
;  1447 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[972]		if (gameState > ClearMenu) {
;  0 "" 2
;--- end asm ---
	cmpb	#1	;cmpqi:	; ,
	lbls	L387	; 
;----- asm -----
;  1449 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[973]    			DP_to_C8();
;  0 "" 2
;  316 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_C8; BIOS call
;  0 "" 2
;  1451 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[974]    			replay(currentMusic);
;  0 "" 2
;--- end asm ---
	ldx	_currentMusic	; , currentMusic
	stx	11,s	; , u
;----- asm -----
;  2917 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldu 11,s	;  u
	jsr ___Init_Music_chk; BIOS call
;  0 "" 2
;  1453 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[975]    			DP_to_D0();
;  0 "" 2
;  300 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_D0; BIOS call
;  0 "" 2
;  1455 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[976]    			reqout();
;  0 "" 2
;  2880 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Do_Sound; BIOS call
;  0 "" 2
;--- end asm ---
	jmp	L387	; 
L366:
;----- asm -----
;  1430 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[962]				showInfo();
;  0 "" 2
;  1335 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[907]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1337 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[908]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1339 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[909]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	13,s	; , a
	ldb	#-70	; ,
	stb	14,s	; , b
	ldx	#_infoText	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	ldb 14,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1432 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[963]        			blockFalling();
;  0 "" 2
;  1163 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[797]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1165 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[798]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	9,s	; , blockYOfs.68
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  1167 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[799]	if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	lble	L388	; 
L381:
;----- asm -----
;  1174 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[803]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	lbeq	L389	; 
L382:
;----- asm -----
;  1434 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[964]        			break;
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	jmp	L360	; 
L365:
;----- asm -----
;  1422 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[958]				showInfo();
;  0 "" 2
;  1335 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[907]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	13,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1337 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[908]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1339 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[909]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	14,s	; , a
	ldb	#-70	; ,
	stb	13,s	; , b
	ldx	#_infoText	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 13,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1424 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[959]        			blockMoving();
;  0 "" 2
;--- end asm ---
	jsr	_blockMoving	; 
;----- asm -----
;  1426 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[960]        			break;
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	jmp	L360	; 
L364:
;----- asm -----
;  1414 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[954]				showInfo();
;  0 "" 2
;  1335 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[907]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1337 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[908]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1339 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[909]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	13,s	; , a
	ldb	#-70	; ,
	stb	14,s	; , b
	ldx	#_infoText	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	ldb 14,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1416 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[955]        			blockWaiting();
;  0 "" 2
;--- end asm ---
	jsr	_blockWaiting	; 
;----- asm -----
;  1418 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[956]        			break;
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	jmp	L360	; 
L363:
;----- asm -----
;  1406 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[950]				showInfo();
;  0 "" 2
;  1335 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[907]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	13,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1337 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[908]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1339 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[909]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	14,s	; , a
	ldb	#-70	; ,
	stb	13,s	; , b
	ldx	#_infoText	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 13,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1408 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[951]        			blockMovingToStart();
;  0 "" 2
;  1014 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[703]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1016 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[704]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	7,s	; , blockYOfs.45
;----- asm -----
;  999 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[693]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1001 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[694]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	13,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1003 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[695]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , blockYOfs.45
	stb	14,s	; , a
	clr	13,s	;  b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 13,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1006 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[697]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	8,s	; , blockX.42
;----- asm -----
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , blockX.42
	aslb	; 
	addb	8,s	; , blockX.42
	stb	,s	; ,
	ldb	_blockY	; , blockY
	aslb	; 
	aslb	; 
	aslb	; 
	stb	6,s	; ,
	ldb	,s	; ,
	addb	6,s	; ,
	addb	#-104	; ,
	stb	13,s	; , a
	ldb	8,s	; , blockX.42
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,y	; , tmp80
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp81
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp80,
	stb	5,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp81, tmp83
	addb	5,s	;  tmp83,
	stb	14,s	;  tmp83, b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	ldb 14,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1008 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[698]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp87, tmp86,
	ldx	,x	;  D.4518,
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	11,s	;  D.4518, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	11,s	;  D.4518, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 11,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1018 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[705]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.46, blockYOfs
;----- asm -----
;  1020 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[706]	if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.46
	bne	L380	; 
;----- asm -----
;  1022 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[707]		gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
L380:
;----- asm -----
;  1410 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[952]        			break;
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	jmp	L360	; 
L361:
;----- asm -----
;  1390 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[942]        			mainMenu();
;  0 "" 2
;  1209 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[826]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1211 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[827]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1213 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[828]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1215 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[829]    Print_Str_d(100, -70, "MAIN MENU�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	13,s	; , a
	ldb	#-70	; ,
	stb	14,s	; , b
	ldx	#LC3	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	ldb 14,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1217 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[830]    Print_Str_d(50, -110, "1 START GAME�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	14,s	; , a
	ldb	#-110	; ,
	stb	13,s	; , b
	ldx	#LC4	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 13,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1219 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[831]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	13,s	; , a
	ldb	#-110	; ,
	stb	14,s	; , b
	ldx	#LC5	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	ldb 14,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1221 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[832]    Print_Str_d(-10, -110, "3 BANKING TEST�");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	14,s	; , a
	ldb	#-110	; ,
	stb	13,s	; , b
	ldx	#LC6	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 13,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1223 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[833]	if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	2,s	; ,
	bitb	#1	; ,
	lbne	L390	; 
L369:
;----- asm -----
;  1228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[836]	if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	#2	;  tmp62,
	andb	2,s	;  tmp62,
	beq	L370	; 
;----- asm -----
;  1230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[837]		gameState = ClearMenu;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_gameState	; , gameState
L370:
;----- asm -----
;  1233 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[839]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	andb	2,s	; ,
	beq	L371	; 
;----- asm -----
;  1235 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[840]		sendCommand(CMD_SET_BANK, 1);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  1237 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jmp 0xf000
;  0 "" 2
;--- end asm ---
L371:
;----- asm -----
;  1392 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[943]				musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1394 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[944]        			break;
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	jmp	L360	; 
L362:
;----- asm -----
;  1398 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[946]				clearMenu();
;  0 "" 2
;  1243 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[847]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1245 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[848]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1247 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[849]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1249 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[850]    Print_Str_d(100, -80, "CLEAR SCORE?�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	13,s	; , a
	ldb	#-80	; ,
	stb	14,s	; , b
	ldx	#LC0	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	ldb 14,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1251 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[851]    Print_Str_d(50, -110, "3 YES�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	14,s	; , a
	ldb	#-110	; ,
	stb	13,s	; , b
	ldx	#LC1	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 13,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1253 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[852]    Print_Str_d(20, -110, "4 NO�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	13,s	; , a
	ldb	#-110	; ,
	stb	14,s	; , b
	ldx	#LC2	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	ldb 14,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1255 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[853]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	2,s	; ,
	bitb	#4	; ,
	lbeq	L372	; 
;----- asm -----
;  1257 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[854]		for (uint8_t i = 0; i < 6; i++) {
;  0 "" 2
;  1259 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]			writeEeprom(i, 0xff);
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L373	; 
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
L373:
;----- asm -----
;  1259 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]			writeEeprom(i, 0xff);
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L374	; 
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
L374:
;----- asm -----
;  1259 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]			writeEeprom(i, 0xff);
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L375	; 
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
L375:
;----- asm -----
;  1259 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]			writeEeprom(i, 0xff);
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L376	; 
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
L376:
;----- asm -----
;  1259 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]			writeEeprom(i, 0xff);
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L377	; 
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
L377:
;----- asm -----
;  1259 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]			writeEeprom(i, 0xff);
;  0 "" 2
;  240 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L378	; 
;----- asm -----
;  242 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  222 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	uint8_t result;
;  0 "" 2
;  224 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  226 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  228 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  230 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  232 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  234 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	return result;
;  0 "" 2
;--- end asm ---
L378:
;----- asm -----
;  1262 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[857]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	2,s	; ,
L372:
;----- asm -----
;  1265 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[859]	if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	#8	; ,
	andb	2,s	; ,
	beq	L379	; 
;----- asm -----
;  1267 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[860]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L379:
;----- asm -----
;  1400 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[947]				musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1402 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[948]				break;
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	jmp	L360	; 
L390:
;----- asm -----
;  1225 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[834]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	2,s	; ,
	jmp	L369	; 
L388:
;----- asm -----
;  1169 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[800]		drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;  999 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[693]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1001 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[694]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	13,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1003 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[695]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	9,s	;  tmp91, blockYOfs.68
	negb	;  tmp91
	lda	9,s	;mulqihi3	;  blockYOfs.68
	mul
	stb	14,s	;movlsbqihi: R:d -> 14,s	;  a, tmp92
	clr	13,s	;  b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 13,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1006 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[697]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	10,s	; , blockX.42
;----- asm -----
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  302 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  304 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	10,s	; , blockX.42
	aslb	; 
	addb	10,s	; , blockX.42
	stb	,s	; ,
	ldb	_blockY	; , blockY
	aslb	; 
	aslb	; 
	aslb	; 
	stb	4,s	; ,
	ldb	,s	; ,
	addb	4,s	; ,
	addb	#-104	; ,
	stb	13,s	; , a
	ldb	10,s	; , blockX.42
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,y	; , tmp99
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp100
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp99,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp100, tmp102
	addb	3,s	;  tmp102,
	stb	14,s	;  tmp102, b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	ldb 14,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1008 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[698]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp106, tmp105,
	ldx	,x	;  D.4555,
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	11,s	;  D.4555, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	11,s	;  D.4555, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 11,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1171 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[801]		doBlockAnimation();
;  0 "" 2
;  1068 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[737]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbeq	L381	; 
;----- asm -----
;  1070 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[738]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.51, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.51,
	lbne	L381	; 
;----- asm -----
;  1072 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[739]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  1074 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[740]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  1076 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[741]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  1078 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[742]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  1080 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[743]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
;----- asm -----
;  1174 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[803]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	lbne	L382	; 
L389:
;----- asm -----
;  1176 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[804]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	jmp	L382	; 
	.globl _startMusic
_startMusic:
	.byte	-2
	.byte	-24
	.byte	-2
	.byte	-74
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.byte	3
	.byte	1
	.byte	4
	.byte	1
	.byte	5
	.byte	1
	.byte	6
	.byte	1
	.byte	7
	.byte	1
	.byte	8
	.byte	1
	.byte	9
	.byte	1
	.byte	10
	.byte	1
	.byte	11
	.byte	1
	.byte	12
	.byte	1
	.byte	13
	.byte	1
	.byte	0
	.byte	-128
	.globl _levelEndMusic
_levelEndMusic:
	.byte	-2
	.byte	-24
	.byte	-2
	.byte	-74
	.byte	13
	.byte	1
	.byte	14
	.byte	1
	.byte	15
	.byte	1
	.byte	16
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	19
	.byte	1
	.byte	20
	.byte	1
	.byte	21
	.byte	1
	.byte	22
	.byte	1
	.byte	0
	.byte	-128
	.globl _fallingMusic
_fallingMusic:
	.byte	-2
	.byte	-24
	.byte	-2
	.byte	-74
	.byte	13
	.byte	2
	.byte	12
	.byte	2
	.byte	11
	.byte	2
	.byte	10
	.byte	2
	.byte	9
	.byte	2
	.byte	8
	.byte	2
	.byte	7
	.byte	2
	.byte	6
	.byte	2
	.byte	5
	.byte	2
	.byte	4
	.byte	2
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	2
	.byte	0
	.byte	-128
	.globl _movingMusic
_movingMusic:
	.byte	-3
	.byte	-61
	.byte	-2
	.byte	-74
	.byte	1
	.byte	5
	.byte	0
	.byte	-128
	.globl _currentMusic
	.area .data
_currentMusic:
	.word	_startMusic
	.globl _level0
	.area .text
LC7:
	.ascii "                                          ...   "
	.ascii "     ..a.        ....        ...         ...    "
	.ascii "    ....       ....        .o..        ....     "
	.ascii "    ..                                          "
	.ascii "            \0"
	.area .data
_level0:
	.word	LC7
	.globl _level1
	.area .text
LC8:
	.ascii "                ....        .a..        ....    "
	.ascii "    ....          .           .           ...   "
	.ascii "      ...         ...           .           .   "
	.ascii "    .....      ......      ..o.        ....     "
	.ascii "            \0"
	.area .data
_level1:
	.word	LC8
	.globl _level2
	.area .text
LC9:
	.ascii "                a           .           .       "
	.ascii "    .           ...      ......      .   .....  "
	.ascii " .      ...  ...    ...  ...   ....  ...   ...  "
	.ascii "   ...         ....         .o.         ...     "
	.ascii "            \0"
	.area .data
_level2:
	.word	LC9
	.globl _height2FallingLeft0
	.area .text
_height2FallingLeft0:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-13
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2RisingRight0
_height2RisingRight0:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	13
	.byte	2
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-3
	.byte	-28
	.byte	0
	.byte	16
	.byte	30
	.byte	-1
	.byte	-2
	.byte	-28
	.byte	0
	.byte	10
	.byte	22
	.byte	-1
	.byte	-2
	.byte	-27
	.byte	0
	.byte	-11
	.byte	25
	.byte	-1
	.byte	-3
	.byte	-27
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	14
	.byte	2
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-14
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2FallingRight0
_height2FallingRight0:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-13
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2RisingLeft0
_height2RisingLeft0:
	.byte	0
	.byte	12
	.byte	-1
	.byte	-1
	.byte	-12
	.byte	1
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	12
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	10
	.byte	27
	.byte	0
	.byte	-22
	.byte	-26
	.byte	-1
	.byte	9
	.byte	28
	.byte	0
	.byte	-1
	.byte	-33
	.byte	-1
	.byte	9
	.byte	27
	.byte	0
	.byte	3
	.byte	-29
	.byte	-1
	.byte	10
	.byte	27
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-13
	.byte	2
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	13
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack0
_height2FallingBack0:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-13
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2RisingFront0
_height2RisingFront0:
	.byte	0
	.byte	12
	.byte	1
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	12
	.byte	1
	.byte	-1
	.byte	19
	.byte	-11
	.byte	0
	.byte	-16
	.byte	25
	.byte	-1
	.byte	19
	.byte	-12
	.byte	0
	.byte	-31
	.byte	11
	.byte	-1
	.byte	19
	.byte	-12
	.byte	0
	.byte	-22
	.byte	-2
	.byte	-1
	.byte	19
	.byte	-11
	.byte	0
	.byte	12
	.byte	1
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	12
	.byte	1
	.byte	1
	.globl _height2FallingFront0
_height2FallingFront0:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-13
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2RisingBack0
_height2RisingBack0:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	14
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-14
	.byte	1
	.byte	-1
	.byte	-12
	.byte	11
	.byte	0
	.byte	15
	.byte	2
	.byte	-1
	.byte	-12
	.byte	12
	.byte	0
	.byte	26
	.byte	-13
	.byte	-1
	.byte	-13
	.byte	12
	.byte	0
	.byte	10
	.byte	-25
	.byte	-1
	.byte	-13
	.byte	12
	.byte	0
	.byte	-13
	.byte	0
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	13
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-13
	.byte	0
	.byte	1
	.globl _depth2RollingLeft0
_depth2RollingLeft0:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-10
	.byte	14
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	3
	.byte	-12
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-16
	.byte	-13
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _depth2RollingRight0
_depth2RollingRight0:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-10
	.byte	14
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	3
	.byte	-12
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-16
	.byte	-13
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _width2RollingFront0
_width2RollingFront0:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-7
	.byte	28
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-5
	.byte	-6
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-19
	.byte	-27
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _width2RollingBack0
_width2RollingBack0:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-7
	.byte	28
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-5
	.byte	-6
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-19
	.byte	-27
	.byte	-1
	.byte	13
	.byte	0
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2FallingLeft1
_height2FallingLeft1:
	.byte	-1
	.byte	5
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-5
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	25
	.byte	-3
	.byte	0
	.byte	-20
	.byte	17
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-17
	.byte	-2
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-30
	.byte	-9
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	5
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-5
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight1
_height2RisingRight1:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	13
	.byte	4
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	1
	.byte	-27
	.byte	0
	.byte	12
	.byte	31
	.byte	-1
	.byte	1
	.byte	-27
	.byte	0
	.byte	7
	.byte	21
	.byte	-1
	.byte	1
	.byte	-26
	.byte	0
	.byte	-14
	.byte	22
	.byte	-1
	.byte	1
	.byte	-26
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	13
	.byte	4
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-13
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2FallingRight1
_height2FallingRight1:
	.byte	0
	.byte	2
	.byte	0
	.byte	-1
	.byte	1
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	26
	.byte	4
	.byte	0
	.byte	-25
	.byte	10
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-19
	.byte	-10
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-28
	.byte	-17
	.byte	-1
	.byte	26
	.byte	4
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	2
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-2
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2RisingLeft1
_height2RisingLeft1:
	.byte	0
	.byte	12
	.byte	-3
	.byte	-1
	.byte	-12
	.byte	3
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	12
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	12
	.byte	26
	.byte	0
	.byte	-24
	.byte	-23
	.byte	-1
	.byte	13
	.byte	27
	.byte	0
	.byte	-5
	.byte	-32
	.byte	-1
	.byte	13
	.byte	26
	.byte	0
	.byte	-1
	.byte	-30
	.byte	-1
	.byte	12
	.byte	26
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-11
	.byte	4
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	11
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack1
_height2FallingBack1:
	.byte	0
	.byte	2
	.byte	0
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	6
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-6
	.byte	5
	.byte	-1
	.byte	28
	.byte	-1
	.byte	0
	.byte	-25
	.byte	15
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-22
	.byte	-4
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-31
	.byte	-11
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-6
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	6
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-6
	.byte	6
	.byte	1
	.globl _height2RisingFront1
_height2RisingFront1:
	.byte	0
	.byte	10
	.byte	2
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-10
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	10
	.byte	2
	.byte	-1
	.byte	23
	.byte	-11
	.byte	0
	.byte	-20
	.byte	25
	.byte	-1
	.byte	23
	.byte	-12
	.byte	0
	.byte	-33
	.byte	10
	.byte	-1
	.byte	22
	.byte	-12
	.byte	0
	.byte	-25
	.byte	-2
	.byte	-1
	.byte	22
	.byte	-11
	.byte	0
	.byte	11
	.byte	2
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-11
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	11
	.byte	2
	.byte	1
	.globl _height2FallingFront1
_height2FallingFront1:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	10
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-10
	.byte	5
	.byte	-1
	.byte	24
	.byte	2
	.byte	0
	.byte	-21
	.byte	12
	.byte	-1
	.byte	24
	.byte	2
	.byte	0
	.byte	-14
	.byte	-8
	.byte	-1
	.byte	23
	.byte	2
	.byte	0
	.byte	-26
	.byte	-15
	.byte	-1
	.byte	23
	.byte	2
	.byte	0
	.byte	-9
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	9
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-9
	.byte	5
	.byte	1
	.globl _height2RisingBack1
_height2RisingBack1:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	2
	.byte	-1
	.byte	-9
	.byte	11
	.byte	0
	.byte	12
	.byte	2
	.byte	-1
	.byte	-9
	.byte	12
	.byte	0
	.byte	24
	.byte	-14
	.byte	-1
	.byte	-9
	.byte	12
	.byte	0
	.byte	6
	.byte	-25
	.byte	-1
	.byte	-9
	.byte	12
	.byte	0
	.byte	-15
	.byte	1
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	1
	.byte	1
	.globl _depth2RollingLeft1
_depth2RollingLeft1:
	.byte	-1
	.byte	5
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-5
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	12
	.byte	-1
	.byte	0
	.byte	-7
	.byte	15
	.byte	-1
	.byte	12
	.byte	-2
	.byte	0
	.byte	4
	.byte	-10
	.byte	-1
	.byte	12
	.byte	-2
	.byte	0
	.byte	-17
	.byte	-11
	.byte	-1
	.byte	12
	.byte	-2
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	5
	.byte	13
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-5
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight1
_depth2RollingRight1:
	.byte	0
	.byte	2
	.byte	0
	.byte	-1
	.byte	1
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	13
	.byte	2
	.byte	0
	.byte	-12
	.byte	12
	.byte	-1
	.byte	13
	.byte	2
	.byte	0
	.byte	3
	.byte	-14
	.byte	-1
	.byte	13
	.byte	2
	.byte	0
	.byte	-14
	.byte	-15
	.byte	-1
	.byte	13
	.byte	2
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	1
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _width2RollingFront1
_width2RollingFront1:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	10
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-10
	.byte	5
	.byte	-1
	.byte	12
	.byte	1
	.byte	0
	.byte	-6
	.byte	27
	.byte	-1
	.byte	12
	.byte	1
	.byte	0
	.byte	-2
	.byte	-7
	.byte	-1
	.byte	11
	.byte	1
	.byte	0
	.byte	-17
	.byte	-28
	.byte	-1
	.byte	11
	.byte	1
	.byte	0
	.byte	-9
	.byte	5
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	9
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-9
	.byte	5
	.byte	1
	.globl _width2RollingBack1
_width2RollingBack1:
	.byte	0
	.byte	2
	.byte	0
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	6
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-6
	.byte	5
	.byte	-1
	.byte	14
	.byte	0
	.byte	0
	.byte	-8
	.byte	28
	.byte	-1
	.byte	14
	.byte	-1
	.byte	0
	.byte	-8
	.byte	-5
	.byte	-1
	.byte	14
	.byte	-1
	.byte	0
	.byte	-20
	.byte	-26
	.byte	-1
	.byte	14
	.byte	-1
	.byte	0
	.byte	-6
	.byte	6
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	6
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-6
	.byte	6
	.byte	1
	.globl _height2FallingLeft2
_height2FallingLeft2:
	.byte	-1
	.byte	6
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	24
	.byte	-6
	.byte	0
	.byte	-18
	.byte	20
	.byte	-1
	.byte	24
	.byte	-8
	.byte	0
	.byte	-16
	.byte	2
	.byte	-1
	.byte	24
	.byte	-8
	.byte	0
	.byte	-30
	.byte	-5
	.byte	-1
	.byte	24
	.byte	-7
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	6
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight2
_height2RisingRight2:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	13
	.byte	5
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	4
	.byte	-26
	.byte	0
	.byte	9
	.byte	31
	.byte	-1
	.byte	5
	.byte	-26
	.byte	0
	.byte	3
	.byte	20
	.byte	-1
	.byte	5
	.byte	-26
	.byte	0
	.byte	-18
	.byte	21
	.byte	-1
	.byte	4
	.byte	-25
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	14
	.byte	5
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-14
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2FallingRight2
_height2FallingRight2:
	.byte	0
	.byte	3
	.byte	0
	.byte	-1
	.byte	0
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	0
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	27
	.byte	8
	.byte	0
	.byte	-27
	.byte	6
	.byte	-1
	.byte	27
	.byte	7
	.byte	0
	.byte	-19
	.byte	-13
	.byte	-1
	.byte	27
	.byte	7
	.byte	0
	.byte	-27
	.byte	-20
	.byte	-1
	.byte	27
	.byte	7
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	0
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	0
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft2
_height2RisingLeft2:
	.byte	0
	.byte	11
	.byte	-4
	.byte	-1
	.byte	-11
	.byte	4
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	15
	.byte	25
	.byte	0
	.byte	-26
	.byte	-21
	.byte	-1
	.byte	15
	.byte	26
	.byte	0
	.byte	-7
	.byte	-31
	.byte	-1
	.byte	15
	.byte	25
	.byte	0
	.byte	-4
	.byte	-30
	.byte	-1
	.byte	15
	.byte	25
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack2
_height2FallingBack2:
	.byte	0
	.byte	4
	.byte	0
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	4
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-4
	.byte	5
	.byte	-1
	.byte	29
	.byte	-2
	.byte	0
	.byte	-26
	.byte	16
	.byte	-1
	.byte	29
	.byte	-3
	.byte	0
	.byte	-25
	.byte	-3
	.byte	-1
	.byte	29
	.byte	-3
	.byte	0
	.byte	-32
	.byte	-10
	.byte	-1
	.byte	29
	.byte	-3
	.byte	0
	.byte	-4
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	4
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-4
	.byte	6
	.byte	1
	.globl _height2RisingFront2
_height2RisingFront2:
	.byte	0
	.byte	9
	.byte	2
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	9
	.byte	2
	.byte	-1
	.byte	25
	.byte	-10
	.byte	0
	.byte	-22
	.byte	24
	.byte	-1
	.byte	25
	.byte	-11
	.byte	0
	.byte	-34
	.byte	9
	.byte	-1
	.byte	25
	.byte	-11
	.byte	0
	.byte	-28
	.byte	-3
	.byte	-1
	.byte	25
	.byte	-10
	.byte	0
	.byte	9
	.byte	2
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	9
	.byte	2
	.byte	1
	.globl _height2FallingFront2
_height2FallingFront2:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	11
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-18
	.byte	11
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-10
	.byte	-9
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-24
	.byte	-16
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-11
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	11
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-11
	.byte	5
	.byte	1
	.globl _height2RisingBack2
_height2RisingBack2:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	2
	.byte	-1
	.byte	-5
	.byte	11
	.byte	0
	.byte	8
	.byte	2
	.byte	-1
	.byte	-5
	.byte	11
	.byte	0
	.byte	20
	.byte	-13
	.byte	-1
	.byte	-5
	.byte	11
	.byte	0
	.byte	2
	.byte	-24
	.byte	-1
	.byte	-5
	.byte	11
	.byte	0
	.byte	-15
	.byte	2
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	2
	.byte	1
	.globl _depth2RollingLeft2
_depth2RollingLeft2:
	.byte	-1
	.byte	6
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-6
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	12
	.byte	-3
	.byte	0
	.byte	-6
	.byte	17
	.byte	-1
	.byte	12
	.byte	-4
	.byte	0
	.byte	4
	.byte	-8
	.byte	-1
	.byte	12
	.byte	-3
	.byte	0
	.byte	-18
	.byte	-10
	.byte	-1
	.byte	12
	.byte	-4
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	6
	.byte	13
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-6
	.byte	-14
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight2
_depth2RollingRight2:
	.byte	0
	.byte	3
	.byte	0
	.byte	-1
	.byte	0
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	0
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	14
	.byte	4
	.byte	0
	.byte	-14
	.byte	10
	.byte	-1
	.byte	13
	.byte	4
	.byte	0
	.byte	3
	.byte	-16
	.byte	-1
	.byte	13
	.byte	4
	.byte	0
	.byte	-13
	.byte	-17
	.byte	-1
	.byte	14
	.byte	4
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	-1
	.byte	14
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	1
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _width2RollingFront2
_width2RollingFront2:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	11
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	10
	.byte	2
	.byte	0
	.byte	-4
	.byte	26
	.byte	-1
	.byte	10
	.byte	2
	.byte	0
	.byte	1
	.byte	-8
	.byte	-1
	.byte	11
	.byte	2
	.byte	0
	.byte	-17
	.byte	-29
	.byte	-1
	.byte	11
	.byte	2
	.byte	0
	.byte	-12
	.byte	5
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	12
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-12
	.byte	5
	.byte	1
	.globl _width2RollingBack2
_width2RollingBack2:
	.byte	0
	.byte	4
	.byte	0
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	4
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-4
	.byte	5
	.byte	-1
	.byte	14
	.byte	-1
	.byte	0
	.byte	-8
	.byte	29
	.byte	-1
	.byte	14
	.byte	-2
	.byte	0
	.byte	-10
	.byte	-4
	.byte	-1
	.byte	15
	.byte	-2
	.byte	0
	.byte	-21
	.byte	-25
	.byte	-1
	.byte	15
	.byte	-2
	.byte	0
	.byte	-5
	.byte	6
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	5
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-5
	.byte	6
	.byte	1
	.globl _height2FallingLeft3
_height2FallingLeft3:
	.byte	-1
	.byte	8
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-8
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	22
	.byte	-10
	.byte	0
	.byte	-14
	.byte	23
	.byte	-1
	.byte	21
	.byte	-11
	.byte	0
	.byte	-13
	.byte	5
	.byte	-1
	.byte	21
	.byte	-10
	.byte	0
	.byte	-29
	.byte	-2
	.byte	-1
	.byte	22
	.byte	-11
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	7
	.byte	12
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-7
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight3
_height2RisingRight3:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	13
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	8
	.byte	-24
	.byte	0
	.byte	5
	.byte	31
	.byte	-1
	.byte	8
	.byte	-24
	.byte	0
	.byte	0
	.byte	18
	.byte	-1
	.byte	8
	.byte	-24
	.byte	0
	.byte	-21
	.byte	17
	.byte	-1
	.byte	8
	.byte	-23
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	13
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-6
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2FallingRight3
_height2FallingRight3:
	.byte	0
	.byte	5
	.byte	1
	.byte	-1
	.byte	-2
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	2
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	27
	.byte	11
	.byte	0
	.byte	-29
	.byte	2
	.byte	-1
	.byte	26
	.byte	11
	.byte	0
	.byte	-18
	.byte	-17
	.byte	-1
	.byte	26
	.byte	11
	.byte	0
	.byte	-24
	.byte	-23
	.byte	-1
	.byte	27
	.byte	10
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-3
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	3
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft3
_height2RisingLeft3:
	.byte	0
	.byte	10
	.byte	-6
	.byte	-1
	.byte	-10
	.byte	6
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	10
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	18
	.byte	23
	.byte	0
	.byte	-28
	.byte	-17
	.byte	-1
	.byte	18
	.byte	24
	.byte	0
	.byte	-10
	.byte	-29
	.byte	-1
	.byte	18
	.byte	23
	.byte	0
	.byte	-8
	.byte	-30
	.byte	-1
	.byte	18
	.byte	23
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-10
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	10
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack3
_height2FallingBack3:
	.byte	0
	.byte	6
	.byte	0
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	2
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-2
	.byte	5
	.byte	-1
	.byte	30
	.byte	-4
	.byte	0
	.byte	-27
	.byte	18
	.byte	-1
	.byte	30
	.byte	-5
	.byte	0
	.byte	-28
	.byte	-1
	.byte	-1
	.byte	30
	.byte	-5
	.byte	0
	.byte	-33
	.byte	-8
	.byte	-1
	.byte	30
	.byte	-5
	.byte	0
	.byte	-2
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	2
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-2
	.byte	6
	.byte	1
	.globl _height2RisingFront3
_height2RisingFront3:
	.byte	0
	.byte	7
	.byte	3
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	7
	.byte	3
	.byte	-1
	.byte	27
	.byte	-9
	.byte	0
	.byte	-24
	.byte	23
	.byte	-1
	.byte	27
	.byte	-10
	.byte	0
	.byte	-34
	.byte	7
	.byte	-1
	.byte	27
	.byte	-10
	.byte	0
	.byte	-30
	.byte	-4
	.byte	-1
	.byte	27
	.byte	-9
	.byte	0
	.byte	7
	.byte	3
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	7
	.byte	3
	.byte	1
	.globl _height2FallingFront3
_height2FallingFront3:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	12
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-12
	.byte	5
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-15
	.byte	9
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-6
	.byte	-11
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-21
	.byte	-18
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-12
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	12
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-12
	.byte	5
	.byte	1
	.globl _height2RisingBack3
_height2RisingBack3:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-15
	.byte	3
	.byte	-1
	.byte	-1
	.byte	10
	.byte	0
	.byte	4
	.byte	3
	.byte	-1
	.byte	-1
	.byte	10
	.byte	0
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	9
	.byte	0
	.byte	-2
	.byte	-23
	.byte	-1
	.byte	-1
	.byte	10
	.byte	0
	.byte	-15
	.byte	3
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	3
	.byte	1
	.globl _depth2RollingLeft3
_depth2RollingLeft3:
	.byte	-1
	.byte	8
	.byte	13
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	-12
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	11
	.byte	-4
	.byte	0
	.byte	-3
	.byte	17
	.byte	-1
	.byte	11
	.byte	-5
	.byte	0
	.byte	5
	.byte	-7
	.byte	-1
	.byte	11
	.byte	-4
	.byte	0
	.byte	-19
	.byte	-8
	.byte	-1
	.byte	11
	.byte	-5
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	8
	.byte	12
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	-13
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight3
_depth2RollingRight3:
	.byte	0
	.byte	5
	.byte	1
	.byte	-1
	.byte	-2
	.byte	13
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	2
	.byte	-12
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	13
	.byte	5
	.byte	0
	.byte	-15
	.byte	8
	.byte	-1
	.byte	13
	.byte	5
	.byte	0
	.byte	3
	.byte	-17
	.byte	-1
	.byte	13
	.byte	5
	.byte	0
	.byte	-11
	.byte	-17
	.byte	-1
	.byte	13
	.byte	5
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	-2
	.byte	13
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	2
	.byte	-12
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _width2RollingFront3
_width2RollingFront3:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	12
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-12
	.byte	5
	.byte	-1
	.byte	9
	.byte	2
	.byte	0
	.byte	-3
	.byte	26
	.byte	-1
	.byte	9
	.byte	2
	.byte	0
	.byte	3
	.byte	-8
	.byte	-1
	.byte	9
	.byte	3
	.byte	0
	.byte	-15
	.byte	-30
	.byte	-1
	.byte	9
	.byte	3
	.byte	0
	.byte	-12
	.byte	4
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	12
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-12
	.byte	4
	.byte	1
	.globl _width2RollingBack3
_width2RollingBack3:
	.byte	0
	.byte	6
	.byte	0
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	2
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-2
	.byte	5
	.byte	-1
	.byte	15
	.byte	-2
	.byte	0
	.byte	-9
	.byte	30
	.byte	-1
	.byte	15
	.byte	-3
	.byte	0
	.byte	-13
	.byte	-3
	.byte	-1
	.byte	15
	.byte	-2
	.byte	0
	.byte	-21
	.byte	-25
	.byte	-1
	.byte	15
	.byte	-2
	.byte	0
	.byte	-2
	.byte	5
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	2
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-2
	.byte	5
	.byte	1
	.globl _height2FallingLeft4
_height2FallingLeft4:
	.byte	-1
	.byte	9
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	20
	.byte	-13
	.byte	0
	.byte	-11
	.byte	25
	.byte	-1
	.byte	20
	.byte	-13
	.byte	0
	.byte	-12
	.byte	7
	.byte	-1
	.byte	20
	.byte	-13
	.byte	0
	.byte	-29
	.byte	2
	.byte	-1
	.byte	20
	.byte	-14
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	9
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight4
_height2RisingRight4:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	12
	.byte	9
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-12
	.byte	-9
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	11
	.byte	-22
	.byte	0
	.byte	1
	.byte	31
	.byte	-1
	.byte	11
	.byte	-23
	.byte	0
	.byte	-3
	.byte	17
	.byte	-1
	.byte	11
	.byte	-23
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	11
	.byte	-22
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	12
	.byte	8
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-12
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight4
_height2FallingRight4:
	.byte	0
	.byte	7
	.byte	2
	.byte	-1
	.byte	-4
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	4
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	25
	.byte	14
	.byte	0
	.byte	-29
	.byte	-2
	.byte	-1
	.byte	26
	.byte	14
	.byte	0
	.byte	-18
	.byte	-20
	.byte	-1
	.byte	26
	.byte	14
	.byte	0
	.byte	-22
	.byte	-25
	.byte	-1
	.byte	25
	.byte	13
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-3
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	3
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft4
_height2RisingLeft4:
	.byte	0
	.byte	8
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	8
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	8
	.byte	-9
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	21
	.byte	22
	.byte	0
	.byte	-29
	.byte	-14
	.byte	-1
	.byte	21
	.byte	22
	.byte	0
	.byte	-13
	.byte	-27
	.byte	-1
	.byte	21
	.byte	21
	.byte	0
	.byte	-13
	.byte	-30
	.byte	-1
	.byte	21
	.byte	22
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-8
	.byte	8
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	8
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack4
_height2FallingBack4:
	.byte	0
	.byte	8
	.byte	0
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	0
	.byte	5
	.byte	-1
	.byte	30
	.byte	-6
	.byte	0
	.byte	-27
	.byte	19
	.byte	-1
	.byte	30
	.byte	-6
	.byte	0
	.byte	-30
	.byte	1
	.byte	-1
	.byte	31
	.byte	-6
	.byte	0
	.byte	-34
	.byte	-7
	.byte	-1
	.byte	31
	.byte	-6
	.byte	0
	.byte	-1
	.byte	5
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	1
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-1
	.byte	5
	.byte	1
	.globl _height2RisingFront4
_height2RisingFront4:
	.byte	0
	.byte	5
	.byte	4
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-5
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	5
	.byte	4
	.byte	-1
	.byte	29
	.byte	-9
	.byte	0
	.byte	-26
	.byte	23
	.byte	-1
	.byte	29
	.byte	-10
	.byte	0
	.byte	-34
	.byte	6
	.byte	-1
	.byte	29
	.byte	-10
	.byte	0
	.byte	-32
	.byte	-4
	.byte	-1
	.byte	29
	.byte	-9
	.byte	0
	.byte	5
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-5
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	5
	.byte	4
	.byte	1
	.globl _height2FallingFront4
_height2FallingFront4:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	13
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-13
	.byte	4
	.byte	-1
	.byte	15
	.byte	6
	.byte	0
	.byte	-12
	.byte	8
	.byte	-1
	.byte	15
	.byte	6
	.byte	0
	.byte	-2
	.byte	-11
	.byte	-1
	.byte	15
	.byte	6
	.byte	0
	.byte	-18
	.byte	-19
	.byte	-1
	.byte	15
	.byte	5
	.byte	0
	.byte	-13
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	13
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-13
	.byte	5
	.byte	1
	.globl _height2RisingBack4
_height2RisingBack4:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-15
	.byte	4
	.byte	-1
	.byte	3
	.byte	10
	.byte	0
	.byte	0
	.byte	3
	.byte	-1
	.byte	3
	.byte	10
	.byte	0
	.byte	12
	.byte	-13
	.byte	-1
	.byte	3
	.byte	9
	.byte	0
	.byte	-6
	.byte	-23
	.byte	-1
	.byte	3
	.byte	10
	.byte	0
	.byte	-15
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	4
	.byte	1
	.globl _depth2RollingLeft4
_depth2RollingLeft4:
	.byte	-1
	.byte	9
	.byte	12
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-9
	.byte	-11
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	10
	.byte	-6
	.byte	0
	.byte	-1
	.byte	18
	.byte	-1
	.byte	10
	.byte	-7
	.byte	0
	.byte	6
	.byte	-5
	.byte	-1
	.byte	10
	.byte	-6
	.byte	0
	.byte	-19
	.byte	-5
	.byte	-1
	.byte	10
	.byte	-7
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	9
	.byte	11
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight4
_depth2RollingRight4:
	.byte	0
	.byte	7
	.byte	2
	.byte	-1
	.byte	-4
	.byte	12
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	4
	.byte	-11
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	13
	.byte	7
	.byte	0
	.byte	-17
	.byte	5
	.byte	-1
	.byte	13
	.byte	7
	.byte	0
	.byte	3
	.byte	-19
	.byte	-1
	.byte	13
	.byte	7
	.byte	0
	.byte	-9
	.byte	-18
	.byte	-1
	.byte	13
	.byte	7
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	-4
	.byte	12
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	4
	.byte	-11
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _width2RollingFront4
_width2RollingFront4:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	13
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-13
	.byte	4
	.byte	-1
	.byte	7
	.byte	3
	.byte	0
	.byte	-1
	.byte	25
	.byte	-1
	.byte	7
	.byte	3
	.byte	0
	.byte	6
	.byte	-8
	.byte	-1
	.byte	8
	.byte	3
	.byte	0
	.byte	-14
	.byte	-30
	.byte	-1
	.byte	8
	.byte	3
	.byte	0
	.byte	-14
	.byte	4
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	14
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-14
	.byte	4
	.byte	1
	.globl _width2RollingBack4
_width2RollingBack4:
	.byte	0
	.byte	8
	.byte	0
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	0
	.byte	5
	.byte	-1
	.byte	15
	.byte	-3
	.byte	0
	.byte	-9
	.byte	30
	.byte	-1
	.byte	15
	.byte	-3
	.byte	0
	.byte	-15
	.byte	-2
	.byte	-1
	.byte	15
	.byte	-3
	.byte	0
	.byte	-21
	.byte	-24
	.byte	-1
	.byte	15
	.byte	-3
	.byte	0
	.byte	0
	.byte	5
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	0
	.byte	5
	.byte	1
	.globl _height2FallingLeft5
_height2FallingLeft5:
	.byte	-1
	.byte	10
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-10
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	17
	.byte	-16
	.byte	0
	.byte	-7
	.byte	27
	.byte	-1
	.byte	17
	.byte	-16
	.byte	0
	.byte	-9
	.byte	10
	.byte	-1
	.byte	17
	.byte	-16
	.byte	0
	.byte	-27
	.byte	6
	.byte	-1
	.byte	17
	.byte	-17
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	10
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-10
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight5
_height2RisingRight5:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	11
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-11
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	14
	.byte	-20
	.byte	0
	.byte	-3
	.byte	30
	.byte	-1
	.byte	14
	.byte	-20
	.byte	0
	.byte	-6
	.byte	14
	.byte	-1
	.byte	14
	.byte	-20
	.byte	0
	.byte	-25
	.byte	10
	.byte	-1
	.byte	14
	.byte	-20
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	11
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-11
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight5
_height2FallingRight5:
	.byte	0
	.byte	9
	.byte	3
	.byte	-1
	.byte	-6
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	6
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	24
	.byte	17
	.byte	0
	.byte	-30
	.byte	-6
	.byte	-1
	.byte	24
	.byte	17
	.byte	0
	.byte	-16
	.byte	-23
	.byte	-1
	.byte	24
	.byte	17
	.byte	0
	.byte	-18
	.byte	-27
	.byte	-1
	.byte	24
	.byte	16
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-6
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	6
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft5
_height2RisingLeft5:
	.byte	0
	.byte	7
	.byte	-9
	.byte	-1
	.byte	-7
	.byte	9
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	7
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	23
	.byte	19
	.byte	0
	.byte	-30
	.byte	-10
	.byte	-1
	.byte	23
	.byte	20
	.byte	0
	.byte	-15
	.byte	-25
	.byte	-1
	.byte	23
	.byte	19
	.byte	0
	.byte	-16
	.byte	-29
	.byte	-1
	.byte	23
	.byte	19
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-7
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	7
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack5
_height2FallingBack5:
	.byte	0
	.byte	10
	.byte	0
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-2
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	2
	.byte	5
	.byte	-1
	.byte	30
	.byte	-8
	.byte	0
	.byte	-27
	.byte	21
	.byte	-1
	.byte	30
	.byte	-8
	.byte	0
	.byte	-32
	.byte	3
	.byte	-1
	.byte	30
	.byte	-7
	.byte	0
	.byte	-33
	.byte	-6
	.byte	-1
	.byte	30
	.byte	-7
	.byte	0
	.byte	2
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-2
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	2
	.byte	4
	.byte	1
	.globl _height2RisingFront5
_height2RisingFront5:
	.byte	0
	.byte	4
	.byte	4
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-4
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	4
	.byte	4
	.byte	-1
	.byte	29
	.byte	-7
	.byte	0
	.byte	-26
	.byte	21
	.byte	-1
	.byte	29
	.byte	-8
	.byte	0
	.byte	-33
	.byte	4
	.byte	-1
	.byte	30
	.byte	-8
	.byte	0
	.byte	-33
	.byte	-6
	.byte	-1
	.byte	30
	.byte	-7
	.byte	0
	.byte	3
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	3
	.byte	4
	.byte	1
	.globl _height2FallingFront5
_height2FallingFront5:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	14
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-14
	.byte	4
	.byte	-1
	.byte	11
	.byte	7
	.byte	0
	.byte	-8
	.byte	7
	.byte	-1
	.byte	11
	.byte	7
	.byte	0
	.byte	3
	.byte	-12
	.byte	-1
	.byte	11
	.byte	8
	.byte	0
	.byte	-14
	.byte	-21
	.byte	-1
	.byte	11
	.byte	7
	.byte	0
	.byte	-14
	.byte	4
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	14
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-14
	.byte	4
	.byte	1
	.globl _height2RisingBack5
_height2RisingBack5:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-15
	.byte	4
	.byte	-1
	.byte	7
	.byte	8
	.byte	0
	.byte	-4
	.byte	5
	.byte	-1
	.byte	7
	.byte	8
	.byte	0
	.byte	8
	.byte	-11
	.byte	-1
	.byte	7
	.byte	7
	.byte	0
	.byte	-10
	.byte	-21
	.byte	-1
	.byte	7
	.byte	8
	.byte	0
	.byte	-15
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	4
	.byte	1
	.globl _depth2RollingLeft5
_depth2RollingLeft5:
	.byte	-1
	.byte	10
	.byte	11
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-10
	.byte	-11
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	8
	.byte	-8
	.byte	0
	.byte	2
	.byte	19
	.byte	-1
	.byte	9
	.byte	-8
	.byte	0
	.byte	7
	.byte	-3
	.byte	-1
	.byte	9
	.byte	-8
	.byte	0
	.byte	-19
	.byte	-3
	.byte	-1
	.byte	8
	.byte	-9
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	11
	.byte	11
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-11
	.byte	-12
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight5
_depth2RollingRight5:
	.byte	0
	.byte	9
	.byte	3
	.byte	-1
	.byte	-6
	.byte	11
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	6
	.byte	-10
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	12
	.byte	8
	.byte	0
	.byte	-18
	.byte	3
	.byte	-1
	.byte	12
	.byte	9
	.byte	0
	.byte	4
	.byte	-21
	.byte	-1
	.byte	12
	.byte	9
	.byte	0
	.byte	-6
	.byte	-19
	.byte	-1
	.byte	12
	.byte	8
	.byte	0
	.byte	-16
	.byte	11
	.byte	-1
	.byte	-6
	.byte	12
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	6
	.byte	-11
	.byte	-1
	.byte	-16
	.byte	11
	.byte	1
	.globl _width2RollingFront5
_width2RollingFront5:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	14
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-14
	.byte	4
	.byte	-1
	.byte	5
	.byte	4
	.byte	0
	.byte	1
	.byte	24
	.byte	-1
	.byte	5
	.byte	4
	.byte	0
	.byte	9
	.byte	-9
	.byte	-1
	.byte	6
	.byte	4
	.byte	0
	.byte	-12
	.byte	-31
	.byte	-1
	.byte	6
	.byte	4
	.byte	0
	.byte	-15
	.byte	4
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-15
	.byte	4
	.byte	1
	.globl _width2RollingBack5
_width2RollingBack5:
	.byte	0
	.byte	10
	.byte	0
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-2
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	2
	.byte	5
	.byte	-1
	.byte	15
	.byte	-4
	.byte	0
	.byte	-9
	.byte	31
	.byte	-1
	.byte	15
	.byte	-4
	.byte	0
	.byte	-17
	.byte	-1
	.byte	-1
	.byte	15
	.byte	-4
	.byte	0
	.byte	-21
	.byte	-23
	.byte	-1
	.byte	15
	.byte	-4
	.byte	0
	.byte	2
	.byte	5
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-2
	.byte	-5
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	2
	.byte	5
	.byte	1
	.globl _height2FallingLeft6
_height2FallingLeft6:
	.byte	-1
	.byte	11
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-11
	.byte	-9
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	14
	.byte	-19
	.byte	0
	.byte	-3
	.byte	29
	.byte	-1
	.byte	14
	.byte	-19
	.byte	0
	.byte	-6
	.byte	13
	.byte	-1
	.byte	14
	.byte	-19
	.byte	0
	.byte	-25
	.byte	10
	.byte	-1
	.byte	14
	.byte	-20
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	11
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-11
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight6
_height2RisingRight6:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	10
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-10
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	17
	.byte	-17
	.byte	0
	.byte	-7
	.byte	28
	.byte	-1
	.byte	17
	.byte	-17
	.byte	0
	.byte	-9
	.byte	11
	.byte	-1
	.byte	17
	.byte	-17
	.byte	0
	.byte	-27
	.byte	6
	.byte	-1
	.byte	17
	.byte	-17
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	10
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-10
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight6
_height2FallingRight6:
	.byte	0
	.byte	10
	.byte	4
	.byte	-1
	.byte	-7
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	7
	.byte	-9
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	23
	.byte	20
	.byte	0
	.byte	-30
	.byte	-10
	.byte	-1
	.byte	23
	.byte	20
	.byte	0
	.byte	-15
	.byte	-26
	.byte	-1
	.byte	23
	.byte	20
	.byte	0
	.byte	-16
	.byte	-29
	.byte	-1
	.byte	23
	.byte	19
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-7
	.byte	10
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	7
	.byte	-10
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft6
_height2RisingLeft6:
	.byte	0
	.byte	6
	.byte	-10
	.byte	-1
	.byte	-6
	.byte	10
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	6
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	24
	.byte	16
	.byte	0
	.byte	-30
	.byte	-6
	.byte	-1
	.byte	24
	.byte	17
	.byte	0
	.byte	-16
	.byte	-22
	.byte	-1
	.byte	24
	.byte	16
	.byte	0
	.byte	-18
	.byte	-27
	.byte	-1
	.byte	24
	.byte	16
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-6
	.byte	11
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	6
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack6
_height2FallingBack6:
	.byte	0
	.byte	12
	.byte	-1
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-4
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	4
	.byte	4
	.byte	-1
	.byte	29
	.byte	-8
	.byte	0
	.byte	-26
	.byte	21
	.byte	-1
	.byte	29
	.byte	-8
	.byte	0
	.byte	-33
	.byte	4
	.byte	-1
	.byte	30
	.byte	-8
	.byte	0
	.byte	-33
	.byte	-5
	.byte	-1
	.byte	30
	.byte	-8
	.byte	0
	.byte	3
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	3
	.byte	4
	.byte	1
	.globl _height2RisingFront6
_height2RisingFront6:
	.byte	0
	.byte	2
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-2
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	2
	.byte	5
	.byte	-1
	.byte	30
	.byte	-7
	.byte	0
	.byte	-27
	.byte	21
	.byte	-1
	.byte	30
	.byte	-8
	.byte	0
	.byte	-32
	.byte	3
	.byte	-1
	.byte	30
	.byte	-7
	.byte	0
	.byte	-33
	.byte	-7
	.byte	-1
	.byte	30
	.byte	-6
	.byte	0
	.byte	2
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-2
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	2
	.byte	4
	.byte	1
	.globl _height2FallingFront6
_height2FallingFront6:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	3
	.byte	-1
	.byte	7
	.byte	8
	.byte	0
	.byte	-4
	.byte	6
	.byte	-1
	.byte	7
	.byte	8
	.byte	0
	.byte	8
	.byte	-12
	.byte	-1
	.byte	7
	.byte	8
	.byte	0
	.byte	-10
	.byte	-21
	.byte	-1
	.byte	7
	.byte	7
	.byte	0
	.byte	-15
	.byte	4
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-15
	.byte	4
	.byte	1
	.globl _height2RisingBack6
_height2RisingBack6:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	14
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-14
	.byte	5
	.byte	-1
	.byte	11
	.byte	7
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	11
	.byte	7
	.byte	0
	.byte	3
	.byte	-11
	.byte	-1
	.byte	11
	.byte	7
	.byte	0
	.byte	-14
	.byte	-21
	.byte	-1
	.byte	11
	.byte	8
	.byte	0
	.byte	-14
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	14
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-14
	.byte	4
	.byte	1
	.globl _depth2RollingLeft6
_depth2RollingLeft6:
	.byte	-1
	.byte	11
	.byte	10
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-11
	.byte	-10
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	7
	.byte	-9
	.byte	0
	.byte	4
	.byte	19
	.byte	-1
	.byte	7
	.byte	-10
	.byte	0
	.byte	9
	.byte	-1
	.byte	-1
	.byte	7
	.byte	-10
	.byte	0
	.byte	-18
	.byte	0
	.byte	-1
	.byte	7
	.byte	-10
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	11
	.byte	9
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-11
	.byte	-10
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight6
_depth2RollingRight6:
	.byte	0
	.byte	10
	.byte	4
	.byte	-1
	.byte	-7
	.byte	10
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	7
	.byte	-9
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	11
	.byte	10
	.byte	0
	.byte	-18
	.byte	0
	.byte	-1
	.byte	11
	.byte	10
	.byte	0
	.byte	5
	.byte	-22
	.byte	-1
	.byte	11
	.byte	10
	.byte	0
	.byte	-4
	.byte	-19
	.byte	-1
	.byte	11
	.byte	9
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-7
	.byte	10
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	7
	.byte	-10
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront6
_width2RollingFront6:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-15
	.byte	3
	.byte	-1
	.byte	4
	.byte	4
	.byte	0
	.byte	2
	.byte	24
	.byte	-1
	.byte	4
	.byte	4
	.byte	0
	.byte	11
	.byte	-8
	.byte	-1
	.byte	3
	.byte	4
	.byte	0
	.byte	-9
	.byte	-31
	.byte	-1
	.byte	3
	.byte	3
	.byte	0
	.byte	-14
	.byte	4
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	14
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-14
	.byte	4
	.byte	1
	.globl _width2RollingBack6
_width2RollingBack6:
	.byte	0
	.byte	12
	.byte	-1
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-4
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	4
	.byte	4
	.byte	-1
	.byte	14
	.byte	-4
	.byte	0
	.byte	-8
	.byte	31
	.byte	-1
	.byte	14
	.byte	-4
	.byte	0
	.byte	-18
	.byte	0
	.byte	-1
	.byte	15
	.byte	-4
	.byte	0
	.byte	-21
	.byte	-23
	.byte	-1
	.byte	15
	.byte	-4
	.byte	0
	.byte	3
	.byte	4
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	3
	.byte	4
	.byte	1
	.globl _height2FallingLeft7
_height2FallingLeft7:
	.byte	-1
	.byte	12
	.byte	9
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-12
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	11
	.byte	-21
	.byte	0
	.byte	1
	.byte	30
	.byte	-1
	.byte	11
	.byte	-22
	.byte	0
	.byte	-3
	.byte	16
	.byte	-1
	.byte	11
	.byte	-22
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	11
	.byte	-22
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	12
	.byte	8
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-12
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight7
_height2RisingRight7:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	9
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	20
	.byte	-14
	.byte	0
	.byte	-11
	.byte	26
	.byte	-1
	.byte	20
	.byte	-14
	.byte	0
	.byte	-12
	.byte	8
	.byte	-1
	.byte	20
	.byte	-14
	.byte	0
	.byte	-29
	.byte	2
	.byte	-1
	.byte	20
	.byte	-14
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	9
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight7
_height2FallingRight7:
	.byte	0
	.byte	11
	.byte	5
	.byte	-1
	.byte	-8
	.byte	9
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	8
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	21
	.byte	23
	.byte	0
	.byte	-29
	.byte	-14
	.byte	-1
	.byte	21
	.byte	22
	.byte	0
	.byte	-13
	.byte	-28
	.byte	-1
	.byte	21
	.byte	22
	.byte	0
	.byte	-13
	.byte	-30
	.byte	-1
	.byte	21
	.byte	22
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-8
	.byte	8
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	8
	.byte	-8
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft7
_height2RisingLeft7:
	.byte	0
	.byte	4
	.byte	-11
	.byte	-1
	.byte	-4
	.byte	11
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	4
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	25
	.byte	13
	.byte	0
	.byte	-29
	.byte	-2
	.byte	-1
	.byte	26
	.byte	14
	.byte	0
	.byte	-18
	.byte	-19
	.byte	-1
	.byte	26
	.byte	13
	.byte	0
	.byte	-22
	.byte	-25
	.byte	-1
	.byte	25
	.byte	14
	.byte	0
	.byte	-8
	.byte	5
	.byte	-1
	.byte	-3
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	3
	.byte	-11
	.byte	-1
	.byte	-8
	.byte	5
	.byte	1
	.globl _height2FallingBack7
_height2FallingBack7:
	.byte	0
	.byte	13
	.byte	-1
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-5
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	5
	.byte	4
	.byte	-1
	.byte	29
	.byte	-10
	.byte	0
	.byte	-26
	.byte	23
	.byte	-1
	.byte	29
	.byte	-10
	.byte	0
	.byte	-34
	.byte	6
	.byte	-1
	.byte	29
	.byte	-9
	.byte	0
	.byte	-32
	.byte	-4
	.byte	-1
	.byte	29
	.byte	-10
	.byte	0
	.byte	5
	.byte	4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-5
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	5
	.byte	4
	.byte	1
	.globl _height2RisingFront7
_height2RisingFront7:
	.byte	0
	.byte	0
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	0
	.byte	5
	.byte	-1
	.byte	30
	.byte	-5
	.byte	0
	.byte	-27
	.byte	19
	.byte	-1
	.byte	30
	.byte	-6
	.byte	0
	.byte	-30
	.byte	1
	.byte	-1
	.byte	31
	.byte	-6
	.byte	0
	.byte	-34
	.byte	-8
	.byte	-1
	.byte	31
	.byte	-5
	.byte	0
	.byte	-1
	.byte	5
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	1
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-1
	.byte	5
	.byte	1
	.globl _height2FallingFront7
_height2FallingFront7:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	3
	.byte	-1
	.byte	3
	.byte	10
	.byte	0
	.byte	0
	.byte	4
	.byte	-1
	.byte	3
	.byte	10
	.byte	0
	.byte	12
	.byte	-14
	.byte	-1
	.byte	3
	.byte	10
	.byte	0
	.byte	-6
	.byte	-23
	.byte	-1
	.byte	3
	.byte	9
	.byte	0
	.byte	-15
	.byte	4
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-15
	.byte	4
	.byte	1
	.globl _height2RisingBack7
_height2RisingBack7:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	13
	.byte	-4
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-13
	.byte	5
	.byte	-1
	.byte	15
	.byte	6
	.byte	0
	.byte	-12
	.byte	7
	.byte	-1
	.byte	15
	.byte	6
	.byte	0
	.byte	-2
	.byte	-10
	.byte	-1
	.byte	15
	.byte	5
	.byte	0
	.byte	-18
	.byte	-19
	.byte	-1
	.byte	15
	.byte	6
	.byte	0
	.byte	-13
	.byte	5
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	13
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-13
	.byte	5
	.byte	1
	.globl _depth2RollingLeft7
_depth2RollingLeft7:
	.byte	-1
	.byte	12
	.byte	9
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-12
	.byte	-9
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	6
	.byte	-10
	.byte	0
	.byte	6
	.byte	19
	.byte	-1
	.byte	6
	.byte	-11
	.byte	0
	.byte	10
	.byte	0
	.byte	-1
	.byte	6
	.byte	-12
	.byte	0
	.byte	-18
	.byte	3
	.byte	-1
	.byte	6
	.byte	-11
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	12
	.byte	8
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-12
	.byte	-8
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight7
_depth2RollingRight7:
	.byte	0
	.byte	11
	.byte	5
	.byte	-1
	.byte	-8
	.byte	9
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	8
	.byte	-8
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	11
	.byte	12
	.byte	0
	.byte	-19
	.byte	-3
	.byte	-1
	.byte	10
	.byte	11
	.byte	0
	.byte	6
	.byte	-23
	.byte	-1
	.byte	10
	.byte	11
	.byte	0
	.byte	-2
	.byte	-19
	.byte	-1
	.byte	11
	.byte	11
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-9
	.byte	8
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	9
	.byte	-8
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront7
_width2RollingFront7:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-15
	.byte	3
	.byte	-1
	.byte	2
	.byte	5
	.byte	0
	.byte	4
	.byte	23
	.byte	-1
	.byte	2
	.byte	5
	.byte	0
	.byte	13
	.byte	-9
	.byte	-1
	.byte	2
	.byte	5
	.byte	0
	.byte	-8
	.byte	-32
	.byte	-1
	.byte	2
	.byte	4
	.byte	0
	.byte	-15
	.byte	4
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-15
	.byte	4
	.byte	1
	.globl _width2RollingBack7
_width2RollingBack7:
	.byte	0
	.byte	13
	.byte	-1
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-5
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	5
	.byte	4
	.byte	-1
	.byte	15
	.byte	-5
	.byte	0
	.byte	-9
	.byte	32
	.byte	-1
	.byte	15
	.byte	-5
	.byte	0
	.byte	-20
	.byte	1
	.byte	-1
	.byte	14
	.byte	-5
	.byte	0
	.byte	-20
	.byte	-22
	.byte	-1
	.byte	14
	.byte	-5
	.byte	0
	.byte	6
	.byte	4
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-6
	.byte	-4
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	6
	.byte	4
	.byte	1
	.globl _height2FallingLeft8
_height2FallingLeft8:
	.byte	-1
	.byte	13
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-6
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	8
	.byte	-23
	.byte	0
	.byte	5
	.byte	30
	.byte	-1
	.byte	8
	.byte	-23
	.byte	0
	.byte	0
	.byte	17
	.byte	-1
	.byte	8
	.byte	-23
	.byte	0
	.byte	-21
	.byte	17
	.byte	-1
	.byte	8
	.byte	-24
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	13
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight8
_height2RisingRight8:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	8
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-8
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	22
	.byte	-11
	.byte	0
	.byte	-14
	.byte	24
	.byte	-1
	.byte	21
	.byte	-11
	.byte	0
	.byte	-13
	.byte	5
	.byte	-1
	.byte	21
	.byte	-11
	.byte	0
	.byte	-29
	.byte	-2
	.byte	-1
	.byte	22
	.byte	-11
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	7
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-7
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight8
_height2FallingRight8:
	.byte	0
	.byte	13
	.byte	7
	.byte	-1
	.byte	-10
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	10
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	18
	.byte	24
	.byte	0
	.byte	-28
	.byte	-17
	.byte	-1
	.byte	18
	.byte	24
	.byte	0
	.byte	-10
	.byte	-30
	.byte	-1
	.byte	18
	.byte	24
	.byte	0
	.byte	-8
	.byte	-31
	.byte	-1
	.byte	18
	.byte	24
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-10
	.byte	7
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	10
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft8
_height2RisingLeft8:
	.byte	0
	.byte	2
	.byte	-12
	.byte	-1
	.byte	-2
	.byte	12
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	2
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	27
	.byte	11
	.byte	0
	.byte	-29
	.byte	1
	.byte	-1
	.byte	26
	.byte	11
	.byte	0
	.byte	-18
	.byte	-16
	.byte	-1
	.byte	26
	.byte	10
	.byte	0
	.byte	-24
	.byte	-23
	.byte	-1
	.byte	27
	.byte	11
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-3
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	3
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack8
_height2FallingBack8:
	.byte	0
	.byte	15
	.byte	-2
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	7
	.byte	3
	.byte	-1
	.byte	27
	.byte	-10
	.byte	0
	.byte	-24
	.byte	23
	.byte	-1
	.byte	27
	.byte	-10
	.byte	0
	.byte	-34
	.byte	7
	.byte	-1
	.byte	27
	.byte	-9
	.byte	0
	.byte	-30
	.byte	-4
	.byte	-1
	.byte	27
	.byte	-10
	.byte	0
	.byte	7
	.byte	3
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-7
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	7
	.byte	3
	.byte	1
	.globl _height2RisingFront8
_height2RisingFront8:
	.byte	0
	.byte	-1
	.byte	6
	.byte	-1
	.byte	2
	.byte	14
	.byte	-1
	.byte	2
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-1
	.byte	6
	.byte	-1
	.byte	29
	.byte	-5
	.byte	0
	.byte	-27
	.byte	19
	.byte	-1
	.byte	30
	.byte	-5
	.byte	0
	.byte	-28
	.byte	-1
	.byte	-1
	.byte	30
	.byte	-5
	.byte	0
	.byte	-33
	.byte	-9
	.byte	-1
	.byte	30
	.byte	-4
	.byte	0
	.byte	-2
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	2
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-2
	.byte	5
	.byte	1
	.globl _height2FallingFront8
_height2FallingFront8:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	2
	.byte	-1
	.byte	0
	.byte	10
	.byte	0
	.byte	3
	.byte	4
	.byte	-1
	.byte	-1
	.byte	10
	.byte	0
	.byte	16
	.byte	-13
	.byte	-1
	.byte	-1
	.byte	10
	.byte	0
	.byte	-2
	.byte	-23
	.byte	-1
	.byte	-1
	.byte	9
	.byte	0
	.byte	-14
	.byte	3
	.byte	-1
	.byte	2
	.byte	14
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-14
	.byte	3
	.byte	1
	.globl _height2RisingBack8
_height2RisingBack8:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	12
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-12
	.byte	6
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-15
	.byte	8
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-6
	.byte	-10
	.byte	-1
	.byte	18
	.byte	4
	.byte	0
	.byte	-21
	.byte	-18
	.byte	-1
	.byte	18
	.byte	5
	.byte	0
	.byte	-12
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	12
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-12
	.byte	6
	.byte	1
	.globl _depth2RollingLeft8
_depth2RollingLeft8:
	.byte	-1
	.byte	13
	.byte	7
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-13
	.byte	-7
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	4
	.byte	-11
	.byte	0
	.byte	9
	.byte	18
	.byte	-1
	.byte	4
	.byte	-11
	.byte	0
	.byte	12
	.byte	0
	.byte	-1
	.byte	4
	.byte	-12
	.byte	0
	.byte	-17
	.byte	5
	.byte	-1
	.byte	4
	.byte	-12
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	13
	.byte	7
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-13
	.byte	-7
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight8
_depth2RollingRight8:
	.byte	0
	.byte	13
	.byte	7
	.byte	-1
	.byte	-10
	.byte	7
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	10
	.byte	-6
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	9
	.byte	12
	.byte	0
	.byte	-19
	.byte	-5
	.byte	-1
	.byte	9
	.byte	12
	.byte	0
	.byte	7
	.byte	-24
	.byte	-1
	.byte	9
	.byte	12
	.byte	0
	.byte	1
	.byte	-18
	.byte	-1
	.byte	9
	.byte	11
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-10
	.byte	7
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	10
	.byte	-7
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront8
_width2RollingFront8:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-15
	.byte	2
	.byte	-1
	.byte	0
	.byte	5
	.byte	0
	.byte	6
	.byte	23
	.byte	-1
	.byte	0
	.byte	5
	.byte	0
	.byte	15
	.byte	-8
	.byte	-1
	.byte	0
	.byte	5
	.byte	0
	.byte	-6
	.byte	-32
	.byte	-1
	.byte	0
	.byte	4
	.byte	0
	.byte	-15
	.byte	3
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-15
	.byte	3
	.byte	1
	.globl _width2RollingBack8
_width2RollingBack8:
	.byte	0
	.byte	15
	.byte	-2
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	7
	.byte	3
	.byte	-1
	.byte	14
	.byte	-5
	.byte	0
	.byte	-8
	.byte	32
	.byte	-1
	.byte	14
	.byte	-5
	.byte	0
	.byte	-21
	.byte	2
	.byte	-1
	.byte	13
	.byte	-5
	.byte	0
	.byte	-19
	.byte	-22
	.byte	-1
	.byte	13
	.byte	-5
	.byte	0
	.byte	8
	.byte	3
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-8
	.byte	-3
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	8
	.byte	3
	.byte	1
	.globl _height2FallingLeft9
_height2FallingLeft9:
	.byte	-1
	.byte	13
	.byte	5
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-13
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	4
	.byte	-25
	.byte	0
	.byte	9
	.byte	30
	.byte	-1
	.byte	5
	.byte	-25
	.byte	0
	.byte	3
	.byte	20
	.byte	-1
	.byte	5
	.byte	-26
	.byte	0
	.byte	-18
	.byte	21
	.byte	-1
	.byte	4
	.byte	-26
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	14
	.byte	5
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-14
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight9
_height2RisingRight9:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	6
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	24
	.byte	-7
	.byte	0
	.byte	-18
	.byte	21
	.byte	-1
	.byte	24
	.byte	-8
	.byte	0
	.byte	-16
	.byte	2
	.byte	-1
	.byte	24
	.byte	-8
	.byte	0
	.byte	-30
	.byte	-6
	.byte	-1
	.byte	24
	.byte	-7
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	6
	.byte	13
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-6
	.byte	-13
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight9
_height2FallingRight9:
	.byte	0
	.byte	14
	.byte	9
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	15
	.byte	26
	.byte	0
	.byte	-26
	.byte	-21
	.byte	-1
	.byte	15
	.byte	26
	.byte	0
	.byte	-7
	.byte	-32
	.byte	-1
	.byte	15
	.byte	26
	.byte	0
	.byte	-4
	.byte	-31
	.byte	-1
	.byte	15
	.byte	26
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft9
_height2RisingLeft9:
	.byte	0
	.byte	0
	.byte	-13
	.byte	-1
	.byte	0
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	0
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	27
	.byte	8
	.byte	0
	.byte	-27
	.byte	5
	.byte	-1
	.byte	27
	.byte	7
	.byte	0
	.byte	-19
	.byte	-12
	.byte	-1
	.byte	27
	.byte	6
	.byte	0
	.byte	-27
	.byte	-20
	.byte	-1
	.byte	27
	.byte	8
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	0
	.byte	12
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	0
	.byte	-12
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack9
_height2FallingBack9:
	.byte	0
	.byte	17
	.byte	-3
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	9
	.byte	2
	.byte	-1
	.byte	25
	.byte	-11
	.byte	0
	.byte	-22
	.byte	24
	.byte	-1
	.byte	25
	.byte	-10
	.byte	0
	.byte	-34
	.byte	8
	.byte	-1
	.byte	25
	.byte	-10
	.byte	0
	.byte	-28
	.byte	-3
	.byte	-1
	.byte	25
	.byte	-11
	.byte	0
	.byte	9
	.byte	2
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	9
	.byte	2
	.byte	1
	.globl _height2RisingFront9
_height2RisingFront9:
	.byte	0
	.byte	-3
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	3
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-3
	.byte	6
	.byte	-1
	.byte	28
	.byte	-3
	.byte	0
	.byte	-25
	.byte	17
	.byte	-1
	.byte	28
	.byte	-3
	.byte	0
	.byte	-25
	.byte	-3
	.byte	-1
	.byte	29
	.byte	-3
	.byte	0
	.byte	-32
	.byte	-11
	.byte	-1
	.byte	29
	.byte	-2
	.byte	0
	.byte	-4
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	4
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-4
	.byte	5
	.byte	1
	.globl _height2FallingFront9
_height2FallingFront9:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	1
	.byte	-1
	.byte	-4
	.byte	11
	.byte	0
	.byte	7
	.byte	3
	.byte	-1
	.byte	-4
	.byte	11
	.byte	0
	.byte	19
	.byte	-13
	.byte	-1
	.byte	-5
	.byte	11
	.byte	0
	.byte	2
	.byte	-24
	.byte	-1
	.byte	-5
	.byte	10
	.byte	0
	.byte	-14
	.byte	2
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	14
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-14
	.byte	2
	.byte	1
	.globl _height2RisingBack9
_height2RisingBack9:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-11
	.byte	6
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-18
	.byte	10
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-10
	.byte	-8
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-24
	.byte	-17
	.byte	-1
	.byte	21
	.byte	3
	.byte	0
	.byte	-11
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-11
	.byte	6
	.byte	1
	.globl _depth2RollingLeft9
_depth2RollingLeft9:
	.byte	-1
	.byte	13
	.byte	5
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-13
	.byte	-5
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	2
	.byte	-12
	.byte	0
	.byte	11
	.byte	17
	.byte	-1
	.byte	2
	.byte	-12
	.byte	0
	.byte	14
	.byte	1
	.byte	-1
	.byte	2
	.byte	-13
	.byte	0
	.byte	-15
	.byte	8
	.byte	-1
	.byte	2
	.byte	-13
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	13
	.byte	5
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-13
	.byte	-5
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight9
_depth2RollingRight9:
	.byte	0
	.byte	14
	.byte	9
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	11
	.byte	-4
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	8
	.byte	13
	.byte	0
	.byte	-19
	.byte	-8
	.byte	-1
	.byte	8
	.byte	13
	.byte	0
	.byte	8
	.byte	-25
	.byte	-1
	.byte	8
	.byte	13
	.byte	0
	.byte	3
	.byte	-17
	.byte	-1
	.byte	8
	.byte	12
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-11
	.byte	5
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	11
	.byte	-5
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront9
_width2RollingFront9:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-15
	.byte	1
	.byte	-1
	.byte	-1
	.byte	6
	.byte	0
	.byte	7
	.byte	22
	.byte	-1
	.byte	-2
	.byte	6
	.byte	0
	.byte	17
	.byte	-8
	.byte	-1
	.byte	-2
	.byte	5
	.byte	0
	.byte	-4
	.byte	-32
	.byte	-1
	.byte	-2
	.byte	4
	.byte	0
	.byte	-14
	.byte	3
	.byte	-1
	.byte	5
	.byte	28
	.byte	-1
	.byte	15
	.byte	-3
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-14
	.byte	3
	.byte	1
	.globl _width2RollingBack9
_width2RollingBack9:
	.byte	0
	.byte	17
	.byte	-3
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	9
	.byte	2
	.byte	-1
	.byte	12
	.byte	-5
	.byte	0
	.byte	-6
	.byte	32
	.byte	-1
	.byte	12
	.byte	-5
	.byte	0
	.byte	-21
	.byte	3
	.byte	-1
	.byte	12
	.byte	-6
	.byte	0
	.byte	-18
	.byte	-21
	.byte	-1
	.byte	12
	.byte	-6
	.byte	0
	.byte	9
	.byte	3
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-9
	.byte	-3
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	9
	.byte	3
	.byte	1
	.globl _height2FallingLeft10
_height2FallingLeft10:
	.byte	-1
	.byte	13
	.byte	4
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-13
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	1
	.byte	-26
	.byte	0
	.byte	12
	.byte	30
	.byte	-1
	.byte	1
	.byte	-26
	.byte	0
	.byte	7
	.byte	21
	.byte	-1
	.byte	1
	.byte	-27
	.byte	0
	.byte	-14
	.byte	23
	.byte	-1
	.byte	1
	.byte	-27
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	13
	.byte	4
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingRight10
_height2RisingRight10:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	5
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-5
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-20
	.byte	18
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-17
	.byte	-2
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-30
	.byte	-10
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	5
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-5
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight10
_height2FallingRight10:
	.byte	0
	.byte	15
	.byte	10
	.byte	-1
	.byte	-12
	.byte	4
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	12
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	12
	.byte	27
	.byte	0
	.byte	-24
	.byte	-23
	.byte	-1
	.byte	13
	.byte	27
	.byte	0
	.byte	-5
	.byte	-33
	.byte	-1
	.byte	13
	.byte	27
	.byte	0
	.byte	-1
	.byte	-31
	.byte	-1
	.byte	12
	.byte	27
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-11
	.byte	4
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	11
	.byte	-4
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft10
_height2RisingLeft10:
	.byte	0
	.byte	0
	.byte	-13
	.byte	-1
	.byte	0
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	-1
	.byte	-7
	.byte	6
	.byte	-1
	.byte	25
	.byte	4
	.byte	0
	.byte	-25
	.byte	9
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-19
	.byte	-9
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-28
	.byte	-18
	.byte	-1
	.byte	26
	.byte	4
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	2
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-2
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack10
_height2FallingBack10:
	.byte	0
	.byte	18
	.byte	-3
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-10
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	10
	.byte	2
	.byte	-1
	.byte	23
	.byte	-12
	.byte	0
	.byte	-20
	.byte	25
	.byte	-1
	.byte	23
	.byte	-11
	.byte	0
	.byte	-33
	.byte	9
	.byte	-1
	.byte	22
	.byte	-11
	.byte	0
	.byte	-25
	.byte	-2
	.byte	-1
	.byte	22
	.byte	-12
	.byte	0
	.byte	11
	.byte	2
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-11
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	11
	.byte	2
	.byte	1
	.globl _height2RisingFront10
_height2RisingFront10:
	.byte	0
	.byte	-5
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	5
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-5
	.byte	6
	.byte	-1
	.byte	27
	.byte	-2
	.byte	0
	.byte	-24
	.byte	16
	.byte	-1
	.byte	27
	.byte	-2
	.byte	0
	.byte	-22
	.byte	-4
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-31
	.byte	-12
	.byte	-1
	.byte	28
	.byte	-1
	.byte	0
	.byte	-6
	.byte	5
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	6
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-6
	.byte	5
	.byte	1
	.globl _height2FallingFront10
_height2FallingFront10:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-15
	.byte	1
	.byte	-1
	.byte	-8
	.byte	12
	.byte	0
	.byte	11
	.byte	2
	.byte	-1
	.byte	-8
	.byte	12
	.byte	0
	.byte	23
	.byte	-14
	.byte	-1
	.byte	-9
	.byte	12
	.byte	0
	.byte	6
	.byte	-25
	.byte	-1
	.byte	-9
	.byte	11
	.byte	0
	.byte	-14
	.byte	2
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	14
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-14
	.byte	2
	.byte	1
	.globl _height2RisingBack10
_height2RisingBack10:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	10
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-10
	.byte	6
	.byte	-1
	.byte	24
	.byte	2
	.byte	0
	.byte	-21
	.byte	11
	.byte	-1
	.byte	24
	.byte	2
	.byte	0
	.byte	-14
	.byte	-7
	.byte	-1
	.byte	23
	.byte	2
	.byte	0
	.byte	-26
	.byte	-16
	.byte	-1
	.byte	23
	.byte	2
	.byte	0
	.byte	-9
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	9
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-9
	.byte	6
	.byte	1
	.globl _depth2RollingLeft10
_depth2RollingLeft10:
	.byte	-1
	.byte	13
	.byte	4
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-13
	.byte	-4
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	0
	.byte	-13
	.byte	0
	.byte	13
	.byte	17
	.byte	-1
	.byte	1
	.byte	-13
	.byte	0
	.byte	15
	.byte	2
	.byte	-1
	.byte	1
	.byte	-14
	.byte	0
	.byte	-14
	.byte	10
	.byte	-1
	.byte	0
	.byte	-14
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	14
	.byte	4
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-14
	.byte	-4
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _depth2RollingRight10
_depth2RollingRight10:
	.byte	0
	.byte	15
	.byte	10
	.byte	-1
	.byte	-12
	.byte	4
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	12
	.byte	-3
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	6
	.byte	14
	.byte	0
	.byte	-18
	.byte	-10
	.byte	-1
	.byte	6
	.byte	14
	.byte	0
	.byte	10
	.byte	-26
	.byte	-1
	.byte	6
	.byte	14
	.byte	0
	.byte	6
	.byte	-17
	.byte	-1
	.byte	6
	.byte	13
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-12
	.byte	4
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	12
	.byte	-4
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront10
_width2RollingFront10:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	15
	.byte	-2
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-15
	.byte	1
	.byte	-1
	.byte	-3
	.byte	6
	.byte	0
	.byte	9
	.byte	22
	.byte	-1
	.byte	-4
	.byte	6
	.byte	0
	.byte	19
	.byte	-8
	.byte	-1
	.byte	-5
	.byte	6
	.byte	0
	.byte	-1
	.byte	-33
	.byte	-1
	.byte	-5
	.byte	5
	.byte	0
	.byte	-13
	.byte	2
	.byte	-1
	.byte	5
	.byte	28
	.byte	-1
	.byte	14
	.byte	-2
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-13
	.byte	2
	.byte	1
	.globl _width2RollingBack10
_width2RollingBack10:
	.byte	0
	.byte	18
	.byte	-3
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-10
	.byte	-2
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	10
	.byte	2
	.byte	-1
	.byte	12
	.byte	-6
	.byte	0
	.byte	-6
	.byte	33
	.byte	-1
	.byte	12
	.byte	-6
	.byte	0
	.byte	-22
	.byte	4
	.byte	-1
	.byte	11
	.byte	-6
	.byte	0
	.byte	-17
	.byte	-21
	.byte	-1
	.byte	11
	.byte	-6
	.byte	0
	.byte	11
	.byte	2
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-11
	.byte	-2
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	11
	.byte	2
	.byte	1
	.globl _height2FallingLeft11
_height2FallingLeft11:
	.byte	-1
	.byte	13
	.byte	2
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-13
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	-2
	.byte	-27
	.byte	0
	.byte	15
	.byte	29
	.byte	-1
	.byte	-2
	.byte	-27
	.byte	0
	.byte	10
	.byte	22
	.byte	-1
	.byte	-2
	.byte	-28
	.byte	0
	.byte	-11
	.byte	26
	.byte	-1
	.byte	-3
	.byte	-28
	.byte	0
	.byte	-7
	.byte	6
	.byte	-1
	.byte	13
	.byte	2
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-14
	.byte	-2
	.byte	-1
	.byte	-7
	.byte	6
	.byte	1
	.globl _height2RisingRight11
_height2RisingRight11:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-23
	.byte	14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight11
_height2FallingRight11:
	.byte	0
	.byte	15
	.byte	12
	.byte	-1
	.byte	-12
	.byte	2
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	12
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	10
	.byte	28
	.byte	0
	.byte	-22
	.byte	-26
	.byte	-1
	.byte	9
	.byte	28
	.byte	0
	.byte	-1
	.byte	-34
	.byte	-1
	.byte	9
	.byte	28
	.byte	0
	.byte	3
	.byte	-30
	.byte	-1
	.byte	10
	.byte	28
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-13
	.byte	2
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	13
	.byte	-2
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft11
_height2RisingLeft11:
	.byte	0
	.byte	-2
	.byte	-13
	.byte	-1
	.byte	2
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-7
	.byte	6
	.byte	-1
	.byte	25
	.byte	0
	.byte	0
	.byte	-23
	.byte	13
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-5
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack11
_height2FallingBack11:
	.byte	0
	.byte	20
	.byte	-4
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	12
	.byte	1
	.byte	-1
	.byte	19
	.byte	-12
	.byte	0
	.byte	-16
	.byte	25
	.byte	-1
	.byte	19
	.byte	-11
	.byte	0
	.byte	-31
	.byte	10
	.byte	-1
	.byte	19
	.byte	-11
	.byte	0
	.byte	-22
	.byte	-2
	.byte	-1
	.byte	19
	.byte	-12
	.byte	0
	.byte	12
	.byte	1
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	12
	.byte	1
	.byte	1
	.globl _height2RisingFront11
_height2RisingFront11:
	.byte	0
	.byte	-7
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	7
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-7
	.byte	6
	.byte	-1
	.byte	25
	.byte	0
	.byte	0
	.byte	-22
	.byte	14
	.byte	-1
	.byte	25
	.byte	0
	.byte	0
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingFront11
_height2FallingFront11:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	14
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-14
	.byte	0
	.byte	-1
	.byte	-11
	.byte	12
	.byte	0
	.byte	14
	.byte	2
	.byte	-1
	.byte	-11
	.byte	12
	.byte	0
	.byte	25
	.byte	-13
	.byte	-1
	.byte	-13
	.byte	12
	.byte	0
	.byte	10
	.byte	-25
	.byte	-1
	.byte	-13
	.byte	11
	.byte	0
	.byte	-12
	.byte	1
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	12
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-12
	.byte	1
	.byte	1
	.globl _height2RisingBack11
_height2RisingBack11:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-23
	.byte	13
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-18
	.byte	-5
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-29
	.byte	-14
	.byte	-1
	.byte	26
	.byte	0
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _depth2RollingLeft11
_depth2RollingLeft11:
	.byte	-1
	.byte	13
	.byte	2
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-13
	.byte	-2
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	0
	.byte	-13
	.byte	0
	.byte	13
	.byte	15
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	0
	.byte	17
	.byte	2
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	0
	.byte	-12
	.byte	12
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	0
	.byte	-15
	.byte	12
	.byte	-1
	.byte	12
	.byte	2
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-13
	.byte	-2
	.byte	-1
	.byte	-15
	.byte	12
	.byte	1
	.globl _depth2RollingRight11
_depth2RollingRight11:
	.byte	0
	.byte	15
	.byte	12
	.byte	-1
	.byte	-12
	.byte	2
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	12
	.byte	-2
	.byte	-1
	.byte	-16
	.byte	12
	.byte	-1
	.byte	5
	.byte	14
	.byte	0
	.byte	-17
	.byte	-12
	.byte	-1
	.byte	5
	.byte	14
	.byte	0
	.byte	11
	.byte	-26
	.byte	-1
	.byte	5
	.byte	14
	.byte	0
	.byte	7
	.byte	-16
	.byte	-1
	.byte	5
	.byte	14
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-12
	.byte	2
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	12
	.byte	-2
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront11
_width2RollingFront11:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	14
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	-14
	.byte	0
	.byte	-1
	.byte	-5
	.byte	6
	.byte	0
	.byte	11
	.byte	22
	.byte	-1
	.byte	-6
	.byte	6
	.byte	0
	.byte	20
	.byte	-7
	.byte	-1
	.byte	-6
	.byte	6
	.byte	0
	.byte	0
	.byte	-33
	.byte	-1
	.byte	-6
	.byte	5
	.byte	0
	.byte	-13
	.byte	1
	.byte	-1
	.byte	5
	.byte	28
	.byte	-1
	.byte	14
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-13
	.byte	1
	.byte	1
	.globl _width2RollingBack11
_width2RollingBack11:
	.byte	0
	.byte	20
	.byte	-4
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	12
	.byte	1
	.byte	-1
	.byte	9
	.byte	-6
	.byte	0
	.byte	-3
	.byte	33
	.byte	-1
	.byte	9
	.byte	-6
	.byte	0
	.byte	-21
	.byte	5
	.byte	-1
	.byte	10
	.byte	-6
	.byte	0
	.byte	-16
	.byte	-21
	.byte	-1
	.byte	10
	.byte	-6
	.byte	0
	.byte	11
	.byte	1
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-11
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	11
	.byte	1
	.byte	1
	.globl _height2FallingLeft12
_height2FallingLeft12:
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-8
	.byte	5
	.byte	-1
	.byte	-5
	.byte	-27
	.byte	0
	.byte	18
	.byte	27
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	0
	.byte	14
	.byte	22
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	0
	.byte	-7
	.byte	28
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	0
	.byte	-7
	.byte	6
	.byte	-1
	.byte	12
	.byte	0
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-7
	.byte	6
	.byte	1
	.globl _height2RisingRight12
_height2RisingRight12:
	.byte	0
	.byte	6
	.byte	28
	.byte	-1
	.byte	1
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-26
	.byte	10
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-19
	.byte	-10
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-28
	.byte	-18
	.byte	-1
	.byte	27
	.byte	4
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	1
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingRight12
_height2FallingRight12:
	.byte	0
	.byte	16
	.byte	14
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	-8
	.byte	6
	.byte	-1
	.byte	6
	.byte	28
	.byte	0
	.byte	-19
	.byte	-28
	.byte	-1
	.byte	6
	.byte	28
	.byte	0
	.byte	2
	.byte	-34
	.byte	-1
	.byte	6
	.byte	28
	.byte	0
	.byte	7
	.byte	-28
	.byte	-1
	.byte	6
	.byte	28
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2RisingLeft12
_height2RisingLeft12:
	.byte	0
	.byte	-4
	.byte	-13
	.byte	-1
	.byte	4
	.byte	13
	.byte	-1
	.byte	8
	.byte	-5
	.byte	-1
	.byte	-5
	.byte	-14
	.byte	-1
	.byte	-7
	.byte	6
	.byte	-1
	.byte	24
	.byte	-4
	.byte	0
	.byte	-20
	.byte	17
	.byte	-1
	.byte	25
	.byte	-3
	.byte	0
	.byte	-17
	.byte	-2
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-30
	.byte	-10
	.byte	-1
	.byte	25
	.byte	-4
	.byte	0
	.byte	-8
	.byte	6
	.byte	-1
	.byte	5
	.byte	14
	.byte	-1
	.byte	8
	.byte	-6
	.byte	-1
	.byte	-5
	.byte	-14
	.byte	-1
	.byte	-8
	.byte	6
	.byte	1
	.globl _height2FallingBack12
_height2FallingBack12:
	.byte	0
	.byte	21
	.byte	-5
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	16
	.byte	-12
	.byte	0
	.byte	-13
	.byte	25
	.byte	-1
	.byte	16
	.byte	-11
	.byte	0
	.byte	-29
	.byte	11
	.byte	-1
	.byte	16
	.byte	-11
	.byte	0
	.byte	-19
	.byte	-2
	.byte	-1
	.byte	16
	.byte	-12
	.byte	0
	.byte	13
	.byte	0
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	13
	.byte	0
	.byte	1
	.globl _height2RisingFront12
_height2RisingFront12:
	.byte	0
	.byte	-9
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	9
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-9
	.byte	6
	.byte	-1
	.byte	23
	.byte	2
	.byte	0
	.byte	-20
	.byte	12
	.byte	-1
	.byte	23
	.byte	2
	.byte	0
	.byte	-14
	.byte	-8
	.byte	-1
	.byte	24
	.byte	2
	.byte	0
	.byte	-27
	.byte	-16
	.byte	-1
	.byte	24
	.byte	2
	.byte	0
	.byte	-10
	.byte	6
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	10
	.byte	-6
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-10
	.byte	6
	.byte	1
	.globl _height2FallingFront12
_height2FallingFront12:
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-15
	.byte	12
	.byte	0
	.byte	18
	.byte	2
	.byte	-1
	.byte	-15
	.byte	12
	.byte	0
	.byte	28
	.byte	-12
	.byte	-1
	.byte	-16
	.byte	12
	.byte	0
	.byte	13
	.byte	-26
	.byte	-1
	.byte	-15
	.byte	12
	.byte	0
	.byte	-13
	.byte	0
	.byte	-1
	.byte	3
	.byte	14
	.byte	-1
	.byte	12
	.byte	0
	.byte	-1
	.byte	-2
	.byte	-14
	.byte	-1
	.byte	-13
	.byte	0
	.byte	1
	.globl _height2RisingBack12
_height2RisingBack12:
	.byte	0
	.byte	16
	.byte	-11
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	6
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-6
	.byte	6
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-25
	.byte	15
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-22
	.byte	-3
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-31
	.byte	-12
	.byte	-1
	.byte	28
	.byte	-2
	.byte	0
	.byte	-6
	.byte	6
	.byte	-1
	.byte	3
	.byte	13
	.byte	-1
	.byte	6
	.byte	-5
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	-1
	.byte	-6
	.byte	6
	.byte	1
	.globl _depth2RollingLeft12
_depth2RollingLeft12:
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	16
	.byte	-11
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-16
	.byte	11
	.byte	-1
	.byte	-2
	.byte	-13
	.byte	0
	.byte	15
	.byte	13
	.byte	-1
	.byte	-3
	.byte	-13
	.byte	0
	.byte	19
	.byte	2
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	0
	.byte	-10
	.byte	14
	.byte	-1
	.byte	-3
	.byte	-14
	.byte	0
	.byte	-15
	.byte	12
	.byte	-1
	.byte	12
	.byte	0
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-15
	.byte	12
	.byte	1
	.globl _depth2RollingRight12
_depth2RollingRight12:
	.byte	0
	.byte	16
	.byte	14
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	-16
	.byte	12
	.byte	-1
	.byte	3
	.byte	14
	.byte	0
	.byte	-16
	.byte	-14
	.byte	-1
	.byte	3
	.byte	14
	.byte	0
	.byte	13
	.byte	-26
	.byte	-1
	.byte	3
	.byte	14
	.byte	0
	.byte	10
	.byte	-14
	.byte	-1
	.byte	3
	.byte	14
	.byte	0
	.byte	-16
	.byte	12
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	16
	.byte	-12
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	-16
	.byte	12
	.byte	1
	.globl _width2RollingFront12
_width2RollingFront12:
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-7
	.byte	6
	.byte	0
	.byte	13
	.byte	22
	.byte	-1
	.byte	-7
	.byte	6
	.byte	0
	.byte	20
	.byte	-6
	.byte	-1
	.byte	-8
	.byte	6
	.byte	0
	.byte	2
	.byte	-34
	.byte	-1
	.byte	-8
	.byte	6
	.byte	0
	.byte	-12
	.byte	0
	.byte	-1
	.byte	6
	.byte	28
	.byte	-1
	.byte	12
	.byte	0
	.byte	-1
	.byte	-6
	.byte	-28
	.byte	-1
	.byte	-12
	.byte	0
	.byte	1
	.globl _width2RollingBack12
_width2RollingBack12:
	.byte	0
	.byte	21
	.byte	-5
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	13
	.byte	0
	.byte	-1
	.byte	8
	.byte	-6
	.byte	0
	.byte	-2
	.byte	33
	.byte	-1
	.byte	8
	.byte	-6
	.byte	0
	.byte	-21
	.byte	6
	.byte	-1
	.byte	8
	.byte	-6
	.byte	0
	.byte	-14
	.byte	-21
	.byte	-1
	.byte	8
	.byte	-6
	.byte	0
	.byte	13
	.byte	0
	.byte	-1
	.byte	6
	.byte	27
	.byte	-1
	.byte	-13
	.byte	0
	.byte	-1
	.byte	-6
	.byte	-27
	.byte	-1
	.byte	13
	.byte	0
	.byte	1
	.globl _height2FallingLeft
	.area	.text
_height2FallingLeft:
	.word	_height2FallingLeft0
	.word	_height2FallingLeft1
	.word	_height2FallingLeft2
	.word	_height2FallingLeft3
	.word	_height2FallingLeft4
	.word	_height2FallingLeft5
	.word	_height2FallingLeft6
	.word	_height2FallingLeft7
	.word	_height2FallingLeft8
	.word	_height2FallingLeft9
	.word	_height2FallingLeft10
	.word	_height2FallingLeft11
	.globl _height2RisingRight
_height2RisingRight:
	.word	_height2RisingRight0
	.word	_height2RisingRight1
	.word	_height2RisingRight2
	.word	_height2RisingRight3
	.word	_height2RisingRight4
	.word	_height2RisingRight5
	.word	_height2RisingRight6
	.word	_height2RisingRight7
	.word	_height2RisingRight8
	.word	_height2RisingRight9
	.word	_height2RisingRight10
	.word	_height2RisingRight11
	.globl _height2FallingRight
_height2FallingRight:
	.word	_height2FallingRight0
	.word	_height2FallingRight1
	.word	_height2FallingRight2
	.word	_height2FallingRight3
	.word	_height2FallingRight4
	.word	_height2FallingRight5
	.word	_height2FallingRight6
	.word	_height2FallingRight7
	.word	_height2FallingRight8
	.word	_height2FallingRight9
	.word	_height2FallingRight10
	.word	_height2FallingRight11
	.globl _height2RisingLeft
_height2RisingLeft:
	.word	_height2RisingLeft0
	.word	_height2RisingLeft1
	.word	_height2RisingLeft2
	.word	_height2RisingLeft3
	.word	_height2RisingLeft4
	.word	_height2RisingLeft5
	.word	_height2RisingLeft6
	.word	_height2RisingLeft7
	.word	_height2RisingLeft8
	.word	_height2RisingLeft9
	.word	_height2RisingLeft10
	.word	_height2RisingLeft11
	.globl _height2FallingBack
_height2FallingBack:
	.word	_height2FallingBack0
	.word	_height2FallingBack1
	.word	_height2FallingBack2
	.word	_height2FallingBack3
	.word	_height2FallingBack4
	.word	_height2FallingBack5
	.word	_height2FallingBack6
	.word	_height2FallingBack7
	.word	_height2FallingBack8
	.word	_height2FallingBack9
	.word	_height2FallingBack10
	.word	_height2FallingBack11
	.globl _height2RisingFront
_height2RisingFront:
	.word	_height2RisingFront0
	.word	_height2RisingFront1
	.word	_height2RisingFront2
	.word	_height2RisingFront3
	.word	_height2RisingFront4
	.word	_height2RisingFront5
	.word	_height2RisingFront6
	.word	_height2RisingFront7
	.word	_height2RisingFront8
	.word	_height2RisingFront9
	.word	_height2RisingFront10
	.word	_height2RisingFront11
	.globl _height2FallingFront
_height2FallingFront:
	.word	_height2FallingFront0
	.word	_height2FallingFront1
	.word	_height2FallingFront2
	.word	_height2FallingFront3
	.word	_height2FallingFront4
	.word	_height2FallingFront5
	.word	_height2FallingFront6
	.word	_height2FallingFront7
	.word	_height2FallingFront8
	.word	_height2FallingFront9
	.word	_height2FallingFront10
	.word	_height2FallingFront11
	.globl _height2RisingBack
_height2RisingBack:
	.word	_height2RisingBack0
	.word	_height2RisingBack1
	.word	_height2RisingBack2
	.word	_height2RisingBack3
	.word	_height2RisingBack4
	.word	_height2RisingBack5
	.word	_height2RisingBack6
	.word	_height2RisingBack7
	.word	_height2RisingBack8
	.word	_height2RisingBack9
	.word	_height2RisingBack10
	.word	_height2RisingBack11
	.globl _depth2RollingLeft
_depth2RollingLeft:
	.word	_depth2RollingLeft0
	.word	_depth2RollingLeft1
	.word	_depth2RollingLeft2
	.word	_depth2RollingLeft3
	.word	_depth2RollingLeft4
	.word	_depth2RollingLeft5
	.word	_depth2RollingLeft6
	.word	_depth2RollingLeft7
	.word	_depth2RollingLeft8
	.word	_depth2RollingLeft9
	.word	_depth2RollingLeft10
	.word	_depth2RollingLeft11
	.globl _depth2RollingRight
_depth2RollingRight:
	.word	_depth2RollingRight0
	.word	_depth2RollingRight1
	.word	_depth2RollingRight2
	.word	_depth2RollingRight3
	.word	_depth2RollingRight4
	.word	_depth2RollingRight5
	.word	_depth2RollingRight6
	.word	_depth2RollingRight7
	.word	_depth2RollingRight8
	.word	_depth2RollingRight9
	.word	_depth2RollingRight10
	.word	_depth2RollingRight11
	.globl _width2RollingFront
_width2RollingFront:
	.word	_width2RollingFront0
	.word	_width2RollingFront1
	.word	_width2RollingFront2
	.word	_width2RollingFront3
	.word	_width2RollingFront4
	.word	_width2RollingFront5
	.word	_width2RollingFront6
	.word	_width2RollingFront7
	.word	_width2RollingFront8
	.word	_width2RollingFront9
	.word	_width2RollingFront10
	.word	_width2RollingFront11
	.globl _width2RollingBack
_width2RollingBack:
	.word	_width2RollingBack0
	.word	_width2RollingBack1
	.word	_width2RollingBack2
	.word	_width2RollingBack3
	.word	_width2RollingBack4
	.word	_width2RollingBack5
	.word	_width2RollingBack6
	.word	_width2RollingBack7
	.word	_width2RollingBack8
	.word	_width2RollingBack9
	.word	_width2RollingBack10
	.word	_width2RollingBack11
	.globl _lineCount
	.area .data
_lineCount:
	.byte	0	;skip space
	.globl _startX
_startX:
	.byte	0	;skip space
	.globl _startY
_startY:
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
	.globl _vecx
_vecx:
	.word	-32768
	.globl _led8
	.area .text
_led8:
	.byte	-1
	.byte	0
	.byte	5
	.byte	-1
	.byte	-5
	.byte	0
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	5
	.byte	0
	.byte	-1
	.byte	5
	.byte	0
	.byte	-1
	.byte	0
	.byte	5
	.byte	-1
	.byte	-5
	.byte	0
	.byte	1
	.area .bss
	.globl	_infoText
_infoText:	.blkb	10
	.globl	_moveCount
_moveCount:	.blkb	2
	.globl	_picAvailable
_picAvailable:	.blkb	1
	.globl	_moveScale
_moveScale:	.blkb	40
	.globl	_moveTo
_moveTo:	.blkb	80
	.globl	_lineScale
_lineScale:	.blkb	40
	.globl	_lineX0
_lineX0:	.blkb	40
	.globl	_lineY0
_lineY0:	.blkb	40
	.globl	_lineX1
_lineX1:	.blkb	40
	.globl	_lineY1
_lineY1:	.blkb	40
	.globl	_blockOrientation
_blockOrientation:	.blkb	1
	.globl	_blockX
_blockX:	.blkb	1
	.globl	_blockY
_blockY:	.blkb	1
	.globl	_blockAnimation
_blockAnimation:	.blkb	2
	.globl	_nextBlockAnimation
_nextBlockAnimation:	.blkb	2
	.globl	_blockAnimationStep
_blockAnimationStep:	.blkb	1
	.globl	_blockAnimating
_blockAnimating:	.blkb	1
	.globl	_nextBlockX
_nextBlockX:	.blkb	1
	.globl	_nextBlockY
_nextBlockY:	.blkb	1
	.globl	_lastBlockDirection
_lastBlockDirection:	.blkb	1
	.globl	_blockYOfs
_blockYOfs:	.blkb	1
	.globl	_level
_level:	.blkb	2
	.globl	_levelHighscore
_levelHighscore:	.blkb	2
	.globl	_gameState
_gameState:	.blkb	1
