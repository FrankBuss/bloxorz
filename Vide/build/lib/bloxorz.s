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
;  -fno-time-report
;  -I/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include
;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
;  -I/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/include
;  /home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c
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
;  260 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[242]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	10,s	; , muls
	ldd	#10	; ,
	std	12,s	; , muls
	ldd	#1	; ,
	std	14,s	; , muls
;----- asm -----
;  262 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[243]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stx	,s	;  number, number.110
	cmpx	#999	;cmphi:	;  number,
	bls	L2	; 
	ldx	#999	; ,
	stx	,s	; , number.110
L2:
;----- asm -----
;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[244]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	10,s	; ,,
	stx	6,s	; , ivtmp.106
	ldd	22,s	; , text
	std	8,s	; , ivtmp.108
L6:
;----- asm -----
;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[245]		uint8_t d = 0;
;  0 "" 2
;  268 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[246]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.2391, muls
	ldb	#48	; ,
	stb	3,s	; , prephitmp.87
	cmpu	,s	;cmphi:	;  D.2391, number.110
	bhi	L4	; 
	tfr	u,d	;  D.2391,
	nega
	negb
	sbca	#0
	std	4,s	; , ivtmp.96
	ldd	,s	; , number.110
	pshs	u	;subhi: R:d -= R:u	;  D.2391,
	subd	,s++	; 
	std	,s	; , number.110
	clr	2,s	;  d
L5:
;----- asm -----
;  270 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]			d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[248]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.112, number.110
	tfr	y,d	; ,
	addd	4,s	; , ivtmp.96
	std	,s	; , number.110
	leax	d,u	;  tmp87,, D.2391
	pshs	x	;cmphi: R:x with R:u	;  tmp87, D.2391
	cmpu	,s++	;cmphi:	;  D.2391
	bls	L5	; 
	sty	,s	;  number.112, number.110
	ldb	2,s	; , d
	addb	#48	; ,
	stb	3,s	; , prephitmp.87
L4:
;----- asm -----
;  275 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[250]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	8,s	; , ivtmp.108
	leax	1,x	; ,,
	stx	8,s	; , ivtmp.108
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	6,s	; , ivtmp.106
	leax	2,x	; ,,
	stx	6,s	; , ivtmp.106
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
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[262]	return (char)(c == '.' || c == 'a' || c == 'o');
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
	ldb	#1	;  prephitmp.120,
	rts
	.globl _x3d
_x3d:
	pshs	y	; 
	leas	-2,s	; ,,
	stb	,s	;  x, x
;----- asm -----
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
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
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
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
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsrb	;  oldScale
	rts
	.globl _toLong
_toLong:
	leas	-2,s	; ,,
;----- asm -----
;  320 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[286]	unsigned long int t = (unsigned long int)hi;
;  0 "" 2
;--- end asm ---
	sex		;extendqihi2: R:b -> R:d	;  hi, t
;----- asm -----
;  322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[287]	t = t << 8;
;  0 "" 2
;--- end asm ---
	tfr	b,a	; ,
	clrb	; 
	tfr	d,x	;  t, t.167
;----- asm -----
;  324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[288]	unsigned long int t2 = (unsigned long int)lo;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , lo
	sex		;extendqihi2: R:b -> R:d	; ,
;----- asm -----
;  326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[289]	t2 = t2 & 0xff;
;  0 "" 2
;  328 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[290]	t = t & 0xff00;
;  0 "" 2
;  330 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[291]	t = t + t2;
;  0 "" 2
;  332 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[292]	return t;
;  0 "" 2
;--- end asm ---
	clra	;andqi(ZERO)	; 
		;andqi(-1)
	leax	d,x	;  tmp33, tmp34, t.167
	leas	2,s	; ,,
	rts
	.globl _correctScale
_correctScale:
;----- asm -----
;  339 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[298]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L25	; 
;----- asm -----
;  341 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[299]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	beq	L29	; 
;----- asm -----
;  343 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[300]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	beq	L30	; 
;----- asm -----
;  345 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[301]	return s;
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
;  352 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[307]	lineX0[lineCount] = x3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	4,s	; , lineCount.8
;----- asm -----
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
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
;  354 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[308]	lineY0[lineCount] = y3d(x0, 0, y0);
;  0 "" 2
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
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
;  356 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[309]	lineX1[lineCount] = x3d(x1, 0, y1);
;  0 "" 2
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
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
	stb	9,s	; , D.2965
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp65, tmp67
	addb	9,s	;  tmp67, D.2965
	stb	9,s	;  tmp67, D.2965
	stb	_lineX1,u	;  tmp67, lineX1
;----- asm -----
;  358 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[310]	lineY1[lineCount] = y3d(x1, 0, y1);
;  0 "" 2
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
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
	stb	,s	; , D.2972
	stb	_lineY1,u	; , lineY1
;----- asm -----
;  361 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[312]	lineScale[lineCount] = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	_lineScale,u	; , lineScale
;----- asm -----
;  363 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[313]	moveScale[lineCount] = 0x80;
;  0 "" 2
;--- end asm ---
	stb	_moveScale,u	; , moveScale
;----- asm -----
;  366 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[315]	int xpos = lineX0[lineCount]; 
;  0 "" 2
;  368 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[316]	int ypos = lineY0[lineCount]; 
;  0 "" 2
;  370 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[317]#ifdef DO_SCALE	
;  0 "" 2
;  374 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[320]	int difx = (lineX1[lineCount]-lineX0[lineCount]); 
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , D.2965
	subb	5,s	; , xpos
	stb	7,s	; , difx
;----- asm -----
;  376 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[321]	int dify = (lineY1[lineCount]-lineY0[lineCount]); 
;  0 "" 2
;--- end asm ---
	ldb	,s	; , D.2972
	subb	6,s	; , ypos
	stb	8,s	; , dify
;----- asm -----
;  378 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[322]	if (difx<0) difx = -difx;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , difx
	stb	2,s	; , difx.190
	lblt	L47	; 
L32:
;----- asm -----
;  380 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[323]	if (dify<0) dify = -dify;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , dify
	stb	10,s	; , dify.191
	lblt	L48	; 
L33:
;----- asm -----
;  382 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[324]	if ((difx<64) && (dify<64)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.190
	cmpb	#63	;cmpqi:	; ,
	bgt	L34	; 
	ldb	10,s	; , dify.191
	cmpb	#63	;cmpqi:	; ,
	lble	L49	; 
L34:
;----- asm -----
;  384 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[325]	if ((difx<32) && (dify<32)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.190
	cmpb	#31	;cmpqi:	; ,
	bgt	L35	; 
	ldb	10,s	; , dify.191
	cmpb	#31	;cmpqi:	; ,
	lble	L50	; 
L35:
;----- asm -----
;  388 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[328]  	difx = lineX0[lineCount]; 
;  0 "" 2
;  390 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[329]    	dify = lineY0[lineCount]; 
;  0 "" 2
;  392 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[330]    	if (difx<0) difx = -difx;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , xpos
	stb	2,s	; , difx.192
	lblt	L51	; 
L36:
;----- asm -----
;  394 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[331]    	if (dify<0) dify = -dify;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , ypos
	stb	11,s	; , dify.193
	lblt	L52	; 
L37:
;----- asm -----
;  396 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[332]    	if ((difx<64) && (dify<64)) 
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.192
	cmpb	#63	;cmpqi:	; ,
	bgt	L38	; 
	ldb	11,s	; , dify.193
	cmpb	#63	;cmpqi:	; ,
	lble	L53	; 
L38:
;----- asm -----
;  406 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[338]    	if ((difx<32) && (dify<32)) 
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.192
	cmpb	#31	;cmpqi:	; ,
	bgt	L39	; 
	ldb	11,s	; , dify.193
	cmpb	#31	;cmpqi:	; ,
	lble	L54	; 
L39:
;----- asm -----
;  418 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[346]	lineScale[lineCount] = correctScale(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	_lineScale,u	;  s, lineScale
;----- asm -----
;  339 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[298]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L40	; 
;----- asm -----
;  341 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[299]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	lbeq	L55	; 
;----- asm -----
;  343 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[300]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	lbeq	L56	; 
;----- asm -----
;  345 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[301]	return s;
;  0 "" 2
;--- end asm ---
L40:
	stb	_lineScale,u	;  s, lineScale
;----- asm -----
;  420 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[347]	moveScale[lineCount] = correctScale(moveScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	_moveScale,u	;  s, moveScale
;----- asm -----
;  339 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[298]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L43	; 
;----- asm -----
;  341 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[299]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	lbeq	L57	; 
;----- asm -----
;  343 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[300]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	lbeq	L58	; 
;----- asm -----
;  345 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[301]	return s;
;  0 "" 2
;--- end asm ---
L43:
	stb	_moveScale,u	;  s, moveScale
;----- asm -----
;  424 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[350]#endif
;  0 "" 2
;  427 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[352]	moveTo[lineCount] =toLong(ypos, xpos);
;  0 "" 2
;  320 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[286]	unsigned long int t = (unsigned long int)hi;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , ypos
	sex		;extendqihi2: R:b -> R:d	; ,
;----- asm -----
;  322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[287]	t = t << 8;
;  0 "" 2
;--- end asm ---
	tfr	b,a	; ,
	clrb	; 
	tfr	d,y	; , t.194
;----- asm -----
;  324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[288]	unsigned long int t2 = (unsigned long int)lo;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , xpos
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; , t2
;----- asm -----
;  326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[289]	t2 = t2 & 0xff;
;  0 "" 2
;  328 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[290]	t = t & 0xff00;
;  0 "" 2
;  330 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[291]	t = t + t2;
;  0 "" 2
;  332 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[292]	return t;
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  lineCount.8,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp117
	ldd	,s	;  tmp119, t2
	clra	;andqi(ZERO)	; 
		;andqi(-1)
	leay	d,y	; , tmp119, t.194
	sty	_moveTo,x	; , moveTo
;----- asm -----
;  429 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[353]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , lineCount.8
	incb	; 
	stb	_lineCount	; , lineCount
	leas	12,s	; ,,
	puls	y,u,pc	; 
L54:
;----- asm -----
;  409 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[340]		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
;  0 "" 2
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsr	_moveScale,u	;  moveScale
;----- asm -----
;  411 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[341]		xpos = xpos<<1;
;  0 "" 2
;--- end asm ---
	asl	5,s	;  xpos
;----- asm -----
;  413 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[342]		ypos = ypos<<1;
;  0 "" 2
;--- end asm ---
	asl	6,s	;  ypos
	jmp	L39	; 
L53:
;----- asm -----
;  399 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[334]		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
;  0 "" 2
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	ldb	#64	; ,
	stb	_moveScale,u	; , moveScale
;----- asm -----
;  401 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[335]		xpos = xpos<<1;
;  0 "" 2
;--- end asm ---
	asl	5,s	;  xpos
;----- asm -----
;  403 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[336]		ypos = ypos<<1;
;  0 "" 2
;--- end asm ---
	asl	6,s	;  ypos
	jmp	L38	; 
L50:
;----- asm -----
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsr	_lineScale,u	;  lineScale
	jmp	L35	; 
L49:
;----- asm -----
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
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
	stb	11,s	; , dify.193
	jmp	L37	; 
L51:
	negb	; 
	stb	2,s	; , difx.192
	jmp	L36	; 
L48:
	neg	10,s	;  dify.191
	jmp	L33	; 
L47:
	neg	2,s	;  difx.190
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
;  436 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[359]	lineX0[lineCount] = x3d(x, 0, y);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	4,s	; , lineCount.10
;----- asm -----
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
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
	stb	12,s	; , D.3003
	ldb	32,s	; , y
	lda	#-6	;mulqihi3	; 
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	; , tmp73
; ORG>	tfr	d,x	; , tmp73
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp73,
	stb	11,s	; , D.3004
	addb	12,s	; , D.3003
	stb	8,s	; , xpos
	ldb	4,s	; , lineCount.10
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.10
	ldb	8,s	; , xpos
	stb	_lineX0,x	; , lineX0
;----- asm -----
;  438 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[360]	lineY0[lineCount] = y3d(x, 0, y);
;  0 "" 2
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , x
	aslb	; 
	addb	3,s	; , x
	addb	#-104	; ,
	stb	14,s	; , D.3012
	ldb	32,s	; , y
	aslb	; 
	aslb	; 
	aslb	; 
	stb	13,s	; , D.3013
	addb	14,s	; , D.3012
	stb	9,s	; , ypos
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  440 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[361]	lineX1[lineCount] = x3d(x + 1, 0, y + 1);
;  0 "" 2
;--- end asm ---
	ldb	32,s	; , y
	incb	; 
	stb	5,s	; , D.2480
	ldb	3,s	; , x
	incb	; 
	stb	6,s	; , D.2481
;----- asm -----
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
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
	stb	16,s	; , D.3019
	ldb	5,s	; , D.2480
	lda	#-6	;mulqihi3	; 
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,y	; , tmp85
; ORG>	tfr	d,y	; , tmp85
; ORG>	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp85,
	stb	15,s	; , D.3020
	addb	16,s	; , D.3019
	stb	,s	; , D.3018
	stb	_lineX1,x	; , lineX1
;----- asm -----
;  442 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[362]	lineY1[lineCount] = y3d(x + 1, 0, y + 1);
;  0 "" 2
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , D.2481
	aslb	; 
	addb	6,s	; , D.2481
	addb	#-104	; ,
	stb	19,s	; , D.3028
	ldb	5,s	; , D.2480
	aslb	; 
	aslb	; 
	aslb	; 
	stb	18,s	; , D.3029
	addb	19,s	; , D.3028
	stb	17,s	; , D.3025
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  445 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[364]	lineScale[lineCount] = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	_lineScale,x	; , lineScale
;----- asm -----
;  447 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[365]	moveScale[lineCount] = 0x80;
;  0 "" 2
;--- end asm ---
	stb	_moveScale,x	; , moveScale
;----- asm -----
;  449 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[366]	int xpos = lineX0[lineCount]; 
;  0 "" 2
;  451 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[367]	int ypos = lineY0[lineCount]; 
;  0 "" 2
;  454 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[369]#ifdef DO_SCALE	
;  0 "" 2
;  457 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[371]	int difx = lineX1[lineCount] - lineX0[lineCount]; 
;  0 "" 2
;--- end asm ---
	ldb	,s	; , D.3018
	subb	8,s	; , xpos
	stb	,s	; , difx
;----- asm -----
;  459 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[372]	int dify = lineY1[lineCount] - lineY0[lineCount]; 
;  0 "" 2
;--- end asm ---
	ldb	17,s	; , D.3025
	subb	9,s	; , ypos
	stb	10,s	; , dify
;----- asm -----
;  461 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[373]	if (difx<0) difx = -difx;
;  0 "" 2
;--- end asm ---
	ldb	,s	; , difx
	stb	2,s	; , difx.210
	lblt	L91	; 
L60:
;----- asm -----
;  463 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[374]	if (dify<0) dify = -dify;
;  0 "" 2
;--- end asm ---
	ldb	10,s	; , dify
	stb	23,s	; , dify.211
	lblt	L92	; 
L61:
;----- asm -----
;  465 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[375]	if ((difx<64) && (dify<64)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.210
	cmpb	#63	;cmpqi:	; ,
	bgt	L62	; 
	ldb	23,s	; , dify.211
	cmpb	#63	;cmpqi:	; ,
	lble	L93	; 
L62:
;----- asm -----
;  467 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[376]	if ((difx<32) && (dify<32)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.210
	cmpb	#31	;cmpqi:	; ,
	bgt	L63	; 
	ldb	23,s	; , dify.211
	cmpb	#31	;cmpqi:	; ,
	lble	L94	; 
L63:
;----- asm -----
;  471 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[379]	difx = lineX0[lineCount]; 
;  0 "" 2
;  473 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[380]    	dify = lineY0[lineCount]; 
;  0 "" 2
;  475 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[381]    	if (difx<0) difx = -difx;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , xpos
	stb	2,s	; , difx.212
	lblt	L95	; 
L64:
;----- asm -----
;  477 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[382]    	if (dify<0) dify = -dify;
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , ypos
	stb	25,s	; , dify.215
	lblt	L96	; 
L65:
;----- asm -----
;  480 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[384]	if ((difx<64) && (dify<64)) 
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.212
	cmpb	#63	;cmpqi:	; ,
	bgt	L66	; 
	ldb	25,s	; , dify.215
	cmpb	#63	;cmpqi:	; ,
	lble	L97	; 
L66:
;----- asm -----
;  490 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[390]    	if ((difx<32) && (dify<32)) 
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.212
	cmpb	#31	;cmpqi:	; ,
	bgt	L67	; 
	ldb	25,s	; , dify.215
	cmpb	#31	;cmpqi:	; ,
	lble	L98	; 
L67:
;----- asm -----
;  500 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[396]	lineScale[lineCount] = correctScale(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	_lineScale,x	;  s, lineScale
;----- asm -----
;  339 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[298]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L68	; 
;----- asm -----
;  341 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[299]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	lbeq	L99	; 
;----- asm -----
;  343 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[300]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	lbeq	L100	; 
;----- asm -----
;  345 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[301]	return s;
;  0 "" 2
;--- end asm ---
L68:
	stb	_lineScale,x	;  s, lineScale
;----- asm -----
;  502 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[397]	moveScale[lineCount] = correctScale(moveScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	_moveScale,x	;  s, moveScale
;----- asm -----
;  339 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[298]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L71	; 
;----- asm -----
;  341 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[299]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	lbeq	L101	; 
;----- asm -----
;  343 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[300]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	lbeq	L102	; 
;----- asm -----
;  345 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[301]	return s;
;  0 "" 2
;--- end asm ---
L71:
	stb	_moveScale,x	;  s, moveScale
;----- asm -----
;  504 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[398]#endif
;  0 "" 2
;  506 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[399]	moveTo[lineCount] =toLong(ypos, xpos);
;  0 "" 2
;  320 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[286]	unsigned long int t = (unsigned long int)hi;
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , ypos
	sex		;extendqihi2: R:b -> R:d	; ,
;----- asm -----
;  322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[287]	t = t << 8;
;  0 "" 2
;--- end asm ---
	tfr	b,a	; ,
	clrb	; 
	tfr	d,y	; , t.223
;----- asm -----
;  324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[288]	unsigned long int t2 = (unsigned long int)lo;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , xpos
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; , t2
;----- asm -----
;  326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[289]	t2 = t2 & 0xff;
;  0 "" 2
;  328 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[290]	t = t & 0xff00;
;  0 "" 2
;  330 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[291]	t = t + t2;
;  0 "" 2
;  332 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[292]	return t;
;  0 "" 2
;--- end asm ---
	tfr	x,d	;  lineCount.10,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp133
	ldd	,s	;  tmp135, t2
	clra	;andqi(ZERO)	; 
		;andqi(-1)
	leay	d,y	; , tmp135, t.223
	sty	_moveTo,x	; , moveTo
;----- asm -----
;  508 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[400]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , lineCount.10
	incb	; 
	stb	7,s	; , lineCount.11
;----- asm -----
;  513 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[404]	lineX0[lineCount] = x3d(x + 1, 0, y);
;  0 "" 2
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	16,s	; , D.3019
	addb	11,s	; , D.3004
	stb	21,s	; , xpos.208
	ldb	7,s	; , lineCount.11
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.11
	ldb	21,s	; , xpos.208
	stb	_lineX0,x	; , lineX0
;----- asm -----
;  515 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[405]	lineY0[lineCount] = y3d(x + 1, 0, y);
;  0 "" 2
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	19,s	; , D.3028
	addb	13,s	; , D.3013
	stb	22,s	; , ypos.209
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  517 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[406]	lineX1[lineCount] = x3d(x, 0, y + 1);
;  0 "" 2
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	15,s	; , D.3020
	addb	12,s	; , D.3003
	stb	,s	; , D.3071
	stb	_lineX1,x	; , lineX1
;----- asm -----
;  519 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[407]	lineY1[lineCount] = y3d(x, 0, y + 1);
;  0 "" 2
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	18,s	; , D.3029
	addb	14,s	; , D.3012
	stb	20,s	; , D.3078
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  522 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[409]	lineScale[lineCount] = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	_lineScale,x	; , lineScale
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[410]	moveScale[lineCount] = 0x80;
;  0 "" 2
;--- end asm ---
	stb	_moveScale,x	; , moveScale
;----- asm -----
;  527 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[412]	xpos = lineX0[lineCount]; 
;  0 "" 2
;  529 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[413]	ypos = lineY0[lineCount]; 
;  0 "" 2
;  532 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[415]#ifdef DO_SCALE	
;  0 "" 2
;  535 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[417]	difx = lineX1[lineCount] - lineX0[lineCount]; 
;  0 "" 2
;--- end asm ---
	ldb	,s	; , D.3071
	subb	21,s	; , xpos.208
	stb	2,s	; , difx.213
;----- asm -----
;  537 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[418]	dify = lineY1[lineCount] - lineY0[lineCount]; 
;  0 "" 2
;--- end asm ---
	ldb	20,s	; , D.3078
	subb	22,s	; , ypos.209
	stb	24,s	; , dify.214
;----- asm -----
;  539 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[419]	if (difx<0) difx = -difx;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.213
	lblt	L103	; 
L74:
;----- asm -----
;  541 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[420]	if (dify<0) dify = -dify;
;  0 "" 2
;--- end asm ---
	ldb	24,s	; , dify.214
	stb	26,s	; , dify.218
	lblt	L104	; 
L75:
;----- asm -----
;  543 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[421]	if ((difx<64) && (dify<64)) lineScale[lineCount] = scaleDown(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.216
	cmpb	#63	;cmpqi:	; ,
	bgt	L76	; 
	ldb	26,s	; , dify.218
	cmpb	#63	;cmpqi:	; ,
	lble	L105	; 
L76:
;----- asm -----
;  545 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[422]	if ((difx<32) && (dify<32)) lineScale[lineCount] =  scaleDown(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.216
	cmpb	#31	;cmpqi:	; ,
	bgt	L77	; 
	ldb	26,s	; , dify.218
	cmpb	#31	;cmpqi:	; ,
	lble	L106	; 
L77:
;----- asm -----
;  549 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[425]    	difx = lineX0[lineCount]; 
;  0 "" 2
;  551 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[426]    	dify = lineY0[lineCount]; 
;  0 "" 2
;  553 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[427]    	if (difx<0) difx = -difx;
;  0 "" 2
;--- end asm ---
	ldb	21,s	; , xpos.208
	stb	2,s	; , difx.219
	lblt	L107	; 
L78:
;----- asm -----
;  555 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[428]    	if (dify<0) dify = -dify;
;  0 "" 2
;--- end asm ---
	ldb	22,s	; , ypos.209
	stb	27,s	; , dify.221
	lblt	L108	; 
L79:
;----- asm -----
;  558 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[430]	if ((difx<64) && (dify<64)) 
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.219
	cmpb	#63	;cmpqi:	; ,
	bgt	L80	; 
	ldb	27,s	; , dify.221
	cmpb	#63	;cmpqi:	; ,
	lble	L109	; 
L80:
;----- asm -----
;  568 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[436]    	if ((difx<32) && (dify<32)) 
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , difx.219
	cmpb	#31	;cmpqi:	; ,
	bgt	L81	; 
	ldb	27,s	; , dify.221
	cmpb	#31	;cmpqi:	; ,
	lble	L110	; 
L81:
;----- asm -----
;  578 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[442]	lineScale[lineCount] = correctScale(lineScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	_lineScale,x	;  s, lineScale
;----- asm -----
;  339 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[298]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L82	; 
;----- asm -----
;  341 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[299]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	lbeq	L111	; 
;----- asm -----
;  343 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[300]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	lbeq	L112	; 
;----- asm -----
;  345 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[301]	return s;
;  0 "" 2
;--- end asm ---
L82:
	stb	_lineScale,x	;  s, lineScale
;----- asm -----
;  580 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[443]	moveScale[lineCount] = correctScale(moveScale[lineCount]);
;  0 "" 2
;--- end asm ---
	ldb	_moveScale,x	;  s, moveScale
;----- asm -----
;  339 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[298]	if (s==0x80) return 0x80;
;  0 "" 2
;--- end asm ---
	cmpb	#-128	;cmpqi:	;  s,
	beq	L85	; 
;----- asm -----
;  341 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[299]	if (s==0x40) return 0x40-1;
;  0 "" 2
;--- end asm ---
	cmpb	#64	;cmpqi:	;  s,
	lbeq	L113	; 
;----- asm -----
;  343 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[300]	if (s==0x20) return 0x20-2;
;  0 "" 2
;--- end asm ---
	cmpb	#32	;cmpqi:	;  s,
	lbeq	L114	; 
;----- asm -----
;  345 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[301]	return s;
;  0 "" 2
;--- end asm ---
L85:
	stb	_moveScale,x	;  s, moveScale
;----- asm -----
;  582 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[444]#endif
;  0 "" 2
;  584 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[445]	moveTo[lineCount] =toLong(ypos, xpos);
;  0 "" 2
;  320 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[286]	unsigned long int t = (unsigned long int)hi;
;  0 "" 2
;--- end asm ---
	ldb	22,s	; , ypos.209
	sex		;extendqihi2: R:b -> R:d	; ,
;----- asm -----
;  322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[287]	t = t << 8;
;  0 "" 2
;--- end asm ---
	tfr	b,a	; ,
	clrb	; 
	tfr	d,y	; , t.226
;----- asm -----
;  324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[288]	unsigned long int t2 = (unsigned long int)lo;
;  0 "" 2
;--- end asm ---
	ldb	21,s	; , xpos.208
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; , t2
;----- asm -----
;  326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[289]	t2 = t2 & 0xff;
;  0 "" 2
;  328 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[290]	t = t & 0xff00;
;  0 "" 2
;  330 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[291]	t = t + t2;
;  0 "" 2
;  332 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[292]	return t;
;  0 "" 2
;--- end asm ---
	tfr	x,d	;  lineCount.11,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp186
	ldd	,s	;  tmp188, t2
	clra	;andqi(ZERO)	; 
		;andqi(-1)
	leay	d,y	; , tmp188, t.226
	sty	_moveTo,x	; , moveTo
;----- asm -----
;  586 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[446]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , lineCount.11
	incb	; 
	stb	_lineCount	; , lineCount
	leas	28,s	; ,,
	puls	y,pc	; 
L98:
;----- asm -----
;  493 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[392]		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
;  0 "" 2
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsr	_moveScale,x	;  moveScale
;----- asm -----
;  495 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[393]		xpos = xpos<<1;
;  0 "" 2
;--- end asm ---
	asl	8,s	;  xpos
;----- asm -----
;  497 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[394]		ypos = ypos<<1;
;  0 "" 2
;--- end asm ---
	asl	9,s	;  ypos
	jmp	L67	; 
L97:
;----- asm -----
;  483 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[386]		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
;  0 "" 2
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	ldb	#64	; ,
	stb	_moveScale,x	; , moveScale
;----- asm -----
;  485 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[387]		xpos = xpos<<1;
;  0 "" 2
;--- end asm ---
	asl	8,s	;  xpos
;----- asm -----
;  487 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[388]		ypos = ypos<<1;
;  0 "" 2
;--- end asm ---
	asl	9,s	;  ypos
	jmp	L66	; 
L94:
;----- asm -----
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsr	_lineScale,x	;  lineScale
	jmp	L63	; 
L93:
;----- asm -----
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	ldb	#64	; ,
	stb	_lineScale,x	; , lineScale
	jmp	L62	; 
L110:
;----- asm -----
;  571 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[438]		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
;  0 "" 2
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsr	_moveScale,x	;  moveScale
;----- asm -----
;  573 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[439]		xpos = xpos<<1;
;  0 "" 2
;--- end asm ---
	asl	21,s	;  xpos.208
;----- asm -----
;  575 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[440]		ypos = ypos<<1;
;  0 "" 2
;--- end asm ---
	asl	22,s	;  ypos.209
	jmp	L81	; 
L109:
;----- asm -----
;  561 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[432]		moveScale[lineCount] = scaleDown(moveScale[lineCount]);
;  0 "" 2
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	ldb	#64	; ,
	stb	_moveScale,x	; , moveScale
;----- asm -----
;  563 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[433]		xpos = xpos<<1;
;  0 "" 2
;--- end asm ---
	asl	21,s	;  xpos.208
;----- asm -----
;  565 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[434]		ypos = ypos<<1;
;  0 "" 2
;--- end asm ---
	asl	22,s	;  ypos.209
	jmp	L80	; 
L106:
;----- asm -----
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
;  0 "" 2
;--- end asm ---
	lsr	_lineScale,x	;  lineScale
	jmp	L77	; 
L105:
;----- asm -----
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	return (uint8_t)(oldScale>>1);
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
	stb	25,s	; , dify.215
	jmp	L65	; 
L95:
	negb	; 
	stb	2,s	; , difx.212
	jmp	L64	; 
L91:
	neg	2,s	;  difx.210
	jmp	L60	; 
L103:
	neg	2,s	;  difx.216
	jmp	L74	; 
L104:
	neg	26,s	;  dify.218
	jmp	L75	; 
L92:
	neg	23,s	;  dify.211
	jmp	L61	; 
L108:
	negb	; 
	stb	27,s	; , dify.221
	jmp	L79	; 
L107:
	negb	; 
	stb	2,s	; , difx.219
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
;  602 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[461]	unsigned long int index;
;  0 "" 2
;  604 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[462]	int8_t x = 0;
;  0 "" 2
;  606 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[463]	int8_t y = 0;
;  0 "" 2
;  608 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[464]	for (y = 0; y < LEVEL_HEIGHT - 1; y++) {
;  0 "" 2
;--- end asm ---
	clr	5,s	;  y
	ldy	#0	;  ivtmp.251,
L124:
;----- asm -----
;  610 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[465]		int8_t x0 = -1;
;  0 "" 2
;  612 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[466]		int8_t x1 = -1;
;  0 "" 2
;  614 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[467]		for (x = 0; x < LEVEL_WIDTH; x++) {
;  0 "" 2
;--- end asm ---
	leau	,y	;  ivtmp.262, ivtmp.251
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
;  639 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[482]			index += LEVEL_WIDTH;
;  0 "" 2
;  641 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[483]			char c1 = level[index];
;  0 "" 2
;--- end asm ---
	ldd	,s	; ,
	leax	d,u	;  tmp68,, ivtmp.262
	ldb	12,x	; ,
	stb	2,s	; , c1
;----- asm -----
;  643 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[484]			if (isField(c0) || isField(c1)) {
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[262]	return (char)(c == '.' || c == 'a' || c == 'o');
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
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[262]	return (char)(c == '.' || c == 'a' || c == 'o');
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
;  650 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[488]				if (x0 >= 0) {
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , x0
	cmpb	#-1	;cmpqi:	; ,
	beq	L122	; 
;----- asm -----
;  652 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[489]					addLine(x0, y + 1, x1 + 1, y + 1);
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
;  654 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[490]					x0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	9,s	; , x0
	leas	3,s	; ,,
L122:
	inc	4,s	;  x
	leau	1,u	;  ivtmp.262,, ivtmp.262
	ldb	4,s	; , x
	cmpb	#12	;cmpqi:	; ,
	lbeq	L133	; 
L123:
;----- asm -----
;  617 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[469]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
;  0 "" 2
;  619 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[470]			char c0 = level[index];
;  0 "" 2
;--- end asm ---
	ldx	_level	; , level
	stx	,s	; ,
	tfr	x,d	; ,
	leax	d,u	;  tmp66,, ivtmp.262
	ldb	,x	; ,
	stb	8,s	; , c0
;----- asm -----
;  622 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[472]			if (c0 == 'o') {
;  0 "" 2
;--- end asm ---
	cmpb	#111	;cmpqi:	; ,
	lbeq	L134	; 
L116:
;----- asm -----
;  631 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[477]			if (c0 == 'a') {
;  0 "" 2
;--- end asm ---
	cmpb	#97	;cmpqi:	; ,
	lbne	L117	; 
;----- asm -----
;  633 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[478]				startX = x;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , x
	stb	_startX	; , startX
;----- asm -----
;  635 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[479]				startY = y;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , y
	stb	_startY	; , startY
	jmp	L117	; 
L118:
;----- asm -----
;  645 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[485]				if (x0 < 0) x0 = x;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , x0
	cmpb	#-1	;cmpqi:	; ,
	beq	L135	; 
L121:
;----- asm -----
;  647 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[486]				x1 = x;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , x
	stb	7,s	; , x1
	inc	4,s	;  x
	leau	1,u	;  ivtmp.262,, ivtmp.262
	ldb	4,s	; , x
	cmpb	#12	;cmpqi:	; ,
	lbne	L123	; 
L133:
	ldb	3,s	; ,
	stb	5,s	; , y
	leay	12,y	;  ivtmp.251,, ivtmp.251
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
;  624 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[473]				addTarget(x, y);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , y
	pshs	b	; 
	ldb	5,s	; , x
	jsr	_addTarget	; 
;----- asm -----
;  626 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[474]				endX = x;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , x
	stb	_endX	; , endX
;----- asm -----
;  628 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[475]				endY = y;
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
;  665 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[500]	unsigned long int index;
;  0 "" 2
;  667 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[501]	int8_t x = 0;
;  0 "" 2
;  669 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[502]	int8_t y = 0;
;  0 "" 2
;  671 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[503]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
;  0 "" 2
;--- end asm ---
	ldu	#0	;  ivtmp.287,
L143:
;----- asm -----
;  673 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[504]		int8_t y0 = -1;
;  0 "" 2
;  675 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[505]		int8_t y1 = -1;
;  0 "" 2
;  677 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[506]		for (y = 0; y < LEVEL_HEIGHT; y++) {
;  0 "" 2
;--- end asm ---
	stu	5,s	;  ivtmp.287, ivtmp.296
	ldb	#-1	; ,
	stb	3,s	; , y1
	clr	1,s	;  y
	stb	2,s	; , y0
	jmp	L142	; 
L153:
	cmpb	#97	;cmpqi:	; ,
	lbeq	L137	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L137	; 
;----- asm -----
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[262]	return (char)(c == '.' || c == 'a' || c == 'o');
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
;  696 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[518]				if (y0 >= 0) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y0
	cmpb	#-1	;cmpqi:	; ,
	beq	L141	; 
;----- asm -----
;  698 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[519]					addLine(x + 1, y0, x + 1, y1 + 1);
;  0 "" 2
;--- end asm ---
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  ivtmp.287,
	incb	; 
	stb	,s	; , D.2564
	ldb	3,s	; , y1
	incb	; 
	pshs	b	; 
	ldb	1,s	; , D.2564
	pshs	b	; 
	ldb	4,s	; , y0
	pshs	b	; 
	ldb	3,s	; , D.2564
	jsr	_addLine	; 
;----- asm -----
;  700 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[520]					y0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	5,s	; , y0
	leas	3,s	; ,,
L141:
	inc	1,s	;  y
	ldd	5,s	; , ivtmp.296
	addd	#12	; ,
	std	5,s	; , ivtmp.296
	ldb	1,s	; , y
	cmpb	#17	;cmpqi:	; ,
	lbeq	L152	; 
L142:
;----- asm -----
;  683 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[511]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
;  0 "" 2
;  685 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[512]			char c0 = level[index];
;  0 "" 2
;--- end asm ---
	ldx	5,s	;  tmp46, ivtmp.296
	exg	d,x	; , tmp46
	addd	_level	; , level
	exg	d,x	; , tmp46
	ldb	,x+	; ,
	stb	,s	; , c0
;----- asm -----
;  687 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[513]			char c1 = level[index+1];
;  0 "" 2
;--- end asm ---
	ldb	,x	; ,
	stb	4,s	; , c1
;----- asm -----
;  689 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[514]			if (isField(c0) || isField(c1)) {
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[262]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	,s	; , c0
	cmpb	#46	;cmpqi:	; ,
	lbne	L153	; 
L137:
;----- asm -----
;  691 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[515]				if (y0 < 0) y0 = y;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , y0
	cmpb	#-1	;cmpqi:	; ,
	beq	L154	; 
L140:
;----- asm -----
;  693 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[516]				y1 = y;
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
	leau	1,u	;  ivtmp.287,, ivtmp.287
	cmpu	#11	;cmphi:	;  ivtmp.287,
	lbne	L143	; 
	leas	7,s	; ,,
	puls	u,pc	; 
	.globl _changeMusic
_changeMusic:
;----- asm -----
;  710 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[529]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  712 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[530]	currentMusic = music;
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
;  990 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[686]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  992 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[687]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	9,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  994 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[688]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , yofs
	stb	10,s	; , a
	clr	9,s	;  b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 10,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  997 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[690]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	6,s	; , blockX.40
;----- asm -----
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , blockX.40
	aslb	; 
	addb	6,s	; , blockX.40
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
	ldb	6,s	; , blockX.40
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
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 10,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  999 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[691]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp44, tmp43,
	ldx	,x	;  D.2647,
;----- asm -----
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	;  D.2647, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	7,s	;  D.2647, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;--- end asm ---
	leas	11,s	; ,,
	puls	u,pc	; 
	.globl _doBlockAnimation
_doBlockAnimation:
;----- asm -----
;  1057 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[729]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	beq	L161	; 
;----- asm -----
;  1059 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[730]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
	beq	L162	; 
L161:
	rts
L162:
;----- asm -----
;  1061 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[731]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  1063 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[732]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  1065 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[733]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  1067 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[734]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  1069 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[735]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
	rts
	.globl _showInfo2
_showInfo2:
	pshs	y	; 
	leas	-4,s	; ,,
;----- asm -----
;  1272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[868]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1274 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[869]	intens(0x50);
;  0 "" 2
;--- end asm ---
	ldb	#80	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1277 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[871]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[872]	positd(-50, 100);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	3,s	; , a
	ldb	#-50	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[873]	pack1x((void*)led8);
;  0 "" 2
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	ldy	#_led8	;  tmp27,
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1284 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[875]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1286 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[876]	positd(-40, 110);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#110	; ,
	stb	2,s	; , a
	ldb	#-40	; ,
	stb	3,s	; , b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[877]	pack1x((void*)led8);
;  0 "" 2
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1291 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[879]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1293 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[880]	positd(-30, 120);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#120	; ,
	stb	3,s	; , a
	ldb	#-30	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1295 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[881]	pack1x((void*)led8);
;  0 "" 2
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1298 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[883]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1300 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[884]	positd(0, 120);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#120	; ,
	stb	2,s	; , a
	clr	3,s	;  b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1302 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[885]	pack1x((void*)led8);
;  0 "" 2
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1305 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[887]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1307 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[888]	positd(10, 120);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#120	; ,
	stb	3,s	; , a
	ldb	#10	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1309 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[889]	pack1x((void*)led8);
;  0 "" 2
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1312 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[891]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[892]	positd(20, 120);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#120	; ,
	stb	2,s	; , a
	ldb	#20	; ,
	stb	3,s	; , b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1316 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[893]	pack1x((void*)led8);
;  0 "" 2
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
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
;  1322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[898]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[899]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[900]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	3,s	; , a
	ldb	#-70	; ,
	stb	2,s	; , b
	ldx	#_infoText	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
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
;  981 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[679]	intens(0x55);
;  0 "" 2
;--- end asm ---
	ldb	#85	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  983 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[680]	drawFieldAsmScale();
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
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , cmd
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , arg
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	1,s	; , result
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
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
;  282 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[256]	itoa(moveCount, &infoText[0]);
;  0 "" 2
;--- end asm ---
	ldu	_moveCount	;  number, moveCount
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[242]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	18,s	; , muls
	ldd	#10	; ,
	std	20,s	; , muls
	ldd	#1	; ,
	std	22,s	; , muls
;----- asm -----
;  262 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[243]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number, number.434
	cmpu	#999	;cmphi:	;  number,
	bls	L172	; 
	ldx	#999	; ,
	stx	,s	; , number.434
L172:
;----- asm -----
;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[244]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	18,s	; ,,
	stx	13,s	; , ivtmp.426
	ldx	#_infoText	; ,
	stx	15,s	; , ivtmp.428
	ldx	13,s	; , ivtmp.426
L176:
;----- asm -----
;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[245]		uint8_t d = 0;
;  0 "" 2
;  268 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[246]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.3652, muls
	ldb	#48	; ,
	stb	17,s	; , prephitmp.432
	cmpu	,s	;cmphi:	;  D.3652, number.434
	bhi	L174	; 
	tfr	u,d	;  D.3652,
	nega
	negb
	sbca	#0
	std	11,s	; , ivtmp.417
	ldd	,s	; , number.434
	pshs	u	;subhi: R:d -= R:u	;  D.3652,
	subd	,s++	; 
	std	,s	; , number.434
	clr	2,s	;  d
L175:
;----- asm -----
;  270 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]			d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[248]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.436, number.434
	tfr	y,d	; ,
	addd	11,s	; , ivtmp.417
	std	,s	; , number.434
	leax	d,u	;  tmp75,, D.3652
	pshs	u	;cmphi: R:u with R:x	;  D.3652, tmp75
	cmpx	,s++	;cmphi:	;  tmp75
	bhs	L175	; 
	sty	,s	;  number.436, number.434
	ldb	2,s	; , d
	addb	#48	; ,
	stb	17,s	; , prephitmp.432
L174:
;----- asm -----
;  275 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[250]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	15,s	; , ivtmp.428
	leax	1,x	; ,,
	stx	15,s	; , ivtmp.428
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	13,s	; , ivtmp.426
	leax	2,x	; ,,
	stx	13,s	; , ivtmp.426
	tfr	s,d	; ,
	addd	#24	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L176	; 
;----- asm -----
;  284 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[257]	itoa(levelHighscore, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	_levelHighscore	;  number, levelHighscore
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[242]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	18,s	; , muls
	ldd	#10	; ,
	std	20,s	; , muls
	ldd	#1	; ,
	std	22,s	; , muls
;----- asm -----
;  262 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[243]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number, number.430
	cmpu	#999	;cmphi:	;  number,
	bls	L177	; 
	ldx	#999	; ,
	stx	,s	; , number.430
L177:
;----- asm -----
;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[244]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	18,s	; ,,
	stx	7,s	; , ivtmp.410
	ldx	#_infoText+6	; ,
	stx	9,s	; , ivtmp.412
	ldx	7,s	; , ivtmp.410
L181:
;----- asm -----
;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[245]		uint8_t d = 0;
;  0 "" 2
;  268 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[246]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.3661, muls
	ldb	#48	; ,
	stb	4,s	; , prephitmp.389
	cmpu	,s	;cmphi:	;  D.3661, number.430
	bhi	L179	; 
	tfr	u,d	;  D.3661,
	nega
	negb
	sbca	#0
	std	5,s	; , ivtmp.401
	ldd	,s	; , number.430
	pshs	u	;subhi: R:d -= R:u	;  D.3661,
	subd	,s++	; 
	std	,s	; , number.430
	clr	3,s	;  d
L180:
;----- asm -----
;  270 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]			d++;
;  0 "" 2
;--- end asm ---
	inc	3,s	;  d
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[248]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.437, number.430
	tfr	y,d	; ,
	addd	5,s	; , ivtmp.401
	std	,s	; , number.430
	leax	d,u	;  tmp81,, D.3661
	pshs	u	;cmphi: R:u with R:x	;  D.3661, tmp81
	cmpx	,s++	;cmphi:	;  tmp81
	bhs	L180	; 
	sty	,s	;  number.437, number.430
	ldb	3,s	; , d
	addb	#48	; ,
	stb	4,s	; , prephitmp.389
L179:
;----- asm -----
;  275 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[250]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	9,s	; , ivtmp.412
	leax	1,x	; ,,
	stx	9,s	; , ivtmp.412
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	7,s	; , ivtmp.410
	leax	2,x	; ,,
	stx	7,s	; , ivtmp.410
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
;  718 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[535]	blockAnimating = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockAnimating	; , blockAnimating
;----- asm -----
;  720 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[536]	lastBlockDirection = move;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	stb	_lastBlockDirection	; , lastBlockDirection
;----- asm -----
;  722 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[537]	switch (blockOrientation) {
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
;  906 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[631]	if (moveCount < 999) moveCount++;
;  0 "" 2
;--- end asm ---
	ldu	_moveCount	;  number, moveCount
	cmpu	#998	;cmphi:	;  number,
	bhi	L207	; 
	leau	1,u	;  number,, number
	stu	_moveCount	;  number, moveCount
L207:
;----- asm -----
;  908 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[632]	updateInfoText();
;  0 "" 2
;  282 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[256]	itoa(moveCount, &infoText[0]);
;  0 "" 2
;  260 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[242]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	19,s	; , muls
	ldd	#10	; ,
	std	21,s	; , muls
	ldd	#1	; ,
	std	23,s	; , muls
;----- asm -----
;  262 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[243]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number, number.521
	cmpu	#999	;cmphi:	;  number,
	bls	L208	; 
	ldx	#999	; ,
	stx	,s	; , number.521
L208:
;----- asm -----
;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[244]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	19,s	; ,,
	stx	14,s	; , ivtmp.488
	ldx	#_infoText	; ,
	stx	16,s	; , ivtmp.490
	ldx	14,s	; , ivtmp.488
L212:
;----- asm -----
;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[245]		uint8_t d = 0;
;  0 "" 2
;  268 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[246]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.3736, muls
	ldb	#48	; ,
	stb	18,s	; , prephitmp.519
	cmpu	,s	;cmphi:(R)	;  D.3736, number.521
	bhi	L210	; 
	tfr	u,d	;  D.3736,
	nega
	negb
	sbca	#0
	std	12,s	; , ivtmp.481
	ldd	,s	; , number.521
	pshs	u	;subhi: R:d -= R:u	;  D.3736,
	subd	,s++	; 
	std	,s	; , number.521
	clr	3,s	;  d
L211:
;----- asm -----
;  270 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]			d++;
;  0 "" 2
;--- end asm ---
	inc	3,s	;  d
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[248]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.524, number.521
	tfr	y,d	; ,
	addd	12,s	; , ivtmp.481
	std	,s	; , number.521
	leax	d,u	;  tmp102,, D.3736
	pshs	u	;cmphi: R:u with R:x	;  D.3736, tmp102
	cmpx	,s++	;cmphi:	;  tmp102
	bhs	L211	; 
	sty	,s	;  number.524, number.521
	ldb	3,s	; , d
	addb	#48	; ,
	stb	18,s	; , prephitmp.519
L210:
;----- asm -----
;  275 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[250]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	16,s	; , ivtmp.490
	leax	1,x	; ,,
	stx	16,s	; , ivtmp.490
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	14,s	; , ivtmp.488
	leax	2,x	; ,,
	stx	14,s	; , ivtmp.488
	tfr	s,d	; ,
	addd	#25	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L212	; 
;----- asm -----
;  284 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[257]	itoa(levelHighscore, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	_levelHighscore	;  number, levelHighscore
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[242]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	19,s	; , muls
	ldd	#10	; ,
	std	21,s	; , muls
	ldd	#1	; ,
	std	23,s	; , muls
;----- asm -----
;  262 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[243]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number, number.518
	cmpu	#999	;cmphi:	;  number,
	bls	L213	; 
	ldx	#999	; ,
	stx	,s	; , number.518
L213:
;----- asm -----
;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[244]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	19,s	; ,,
	stx	8,s	; , ivtmp.472
	ldx	#_infoText+6	; ,
	stx	10,s	; , ivtmp.474
	ldx	8,s	; , ivtmp.472
L217:
;----- asm -----
;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[245]		uint8_t d = 0;
;  0 "" 2
;  268 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[246]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.3745, muls
	ldb	#48	; ,
	stb	5,s	; , prephitmp.451
	cmpu	,s	;cmphi:	;  D.3745, number.518
	bhi	L215	; 
	tfr	u,d	;  D.3745,
	nega
	negb
	sbca	#0
	std	6,s	; , ivtmp.463
	ldd	,s	; , number.518
	pshs	u	;subhi: R:d -= R:u	;  D.3745,
	subd	,s++	; 
	std	,s	; , number.518
	clr	4,s	;  d
L216:
;----- asm -----
;  270 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]			d++;
;  0 "" 2
;--- end asm ---
	inc	4,s	;  d
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[248]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.525, number.518
	tfr	y,d	; ,
	addd	6,s	; , ivtmp.463
	std	,s	; , number.518
	leax	d,u	;  tmp108,, D.3745
	pshs	x	;cmphi: R:x with R:u	;  tmp108, D.3745
	cmpu	,s++	;cmphi:	;  D.3745
	bls	L216	; 
	sty	,s	;  number.525, number.518
	ldb	4,s	; , d
	addb	#48	; ,
	stb	5,s	; , prephitmp.451
L215:
;----- asm -----
;  275 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[250]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	10,s	; , ivtmp.474
	leax	1,x	; ,,
	stx	10,s	; , ivtmp.474
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	8,s	; , ivtmp.472
	leax	2,x	; ,,
	stx	8,s	; , ivtmp.472
	tfr	s,d	; ,
	addd	#25	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L217	; 
	leas	25,s	; ,,
	puls	y,u,pc	; 
L189:
;----- asm -----
;  726 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[539]        		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L194	; 
	lbhs	L224	; 
;----- asm -----
;  730 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[541]            			blockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  732 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[542]             			nextBlockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  734 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[543]             			nextBlockX = blockX - 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	addb	#-2	; ,
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  736 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[544]             			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  738 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[545]             			blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  740 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[546]             			break;
;  0 "" 2
;--- end asm ---
L192:
;----- asm -----
;  785 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[569]        		break;
;  0 "" 2
;--- end asm ---
	jmp	L188	; 
L223:
;----- asm -----
;  848 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[601]        		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L204	; 
	lbhs	L225	; 
;----- asm -----
;  852 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[603]            			blockAnimation = height2RisingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  854 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[604]            			nextBlockAnimation = height2FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingRight	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  856 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[605]            			nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  858 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[606]            			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  860 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[607]            			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  862 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[608]            			break;
;  0 "" 2
;--- end asm ---
L202:
;----- asm -----
;  903 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[629]        		break;
;  0 "" 2
;--- end asm ---
	jmp	L188	; 
L190:
;----- asm -----
;  789 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[571]        		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	cmpb	#1	;cmpqi:	; ,
	beq	L199	; 
	lbhs	L226	; 
;----- asm -----
;  793 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[573]            			blockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  795 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[574]            			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  797 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[575]            			nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  799 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[576]            			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  801 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[577]            			break;
;  0 "" 2
;--- end asm ---
L197:
;----- asm -----
;  844 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[599]        		break;
;  0 "" 2
;--- end asm ---
	jmp	L188	; 
L199:
;----- asm -----
;  817 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[585]            			blockAnimation = height2RisingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  819 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[586]            			nextBlockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  821 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[587]            			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  823 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[588]            			nextBlockY = blockY + 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	addb	#2	; ,
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  825 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[589]            			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  827 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[590]            			break;
;  0 "" 2
;--- end asm ---
	bra	L197	; 
L204:
;----- asm -----
;  880 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[617]            			blockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  882 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[618]            			nextBlockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  884 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[619]            			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  886 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[620]            			nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  888 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[621]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L202	; 
L194:
;----- asm -----
;  758 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[555]             			blockAnimation = height2FallingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  760 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[556]             			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  762 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[557]             			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  764 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[558]             			nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[559]             			blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[560]             			break;
;  0 "" 2
;--- end asm ---
	jmp	L192	; 
L225:
	cmpb	#2	;cmpqi:	; ,
	lbeq	L205	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L202	; 
;----- asm -----
;  892 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[623]            			blockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  894 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[624]            			nextBlockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingBack	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  896 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[625]            			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  898 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[626]            			nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  900 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[627]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L202	; 
L224:
	cmpb	#2	;cmpqi:	; ,
	lbeq	L195	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L192	; 
;----- asm -----
;  772 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[562]             			blockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  774 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[563]             			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[564]             			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  778 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[565]             			nextBlockY = blockY - 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	addb	#-2	; ,
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  780 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[566]             			blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  782 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[567]             			break;
;  0 "" 2
;--- end asm ---
	jmp	L192	; 
L226:
	cmpb	#2	;cmpqi:	; ,
	beq	L200	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L197	; 
;----- asm -----
;  831 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[592]            			blockAnimation = height2RisingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  833 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[593]            			nextBlockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  835 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[594]            			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  837 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[595]            			nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  839 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[596]            			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  841 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[597]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L197	; 
L200:
;----- asm -----
;  805 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[579]            			blockAnimation = depth2RollingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  807 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[580]            			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  809 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[581]            			nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  811 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[582]            			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  813 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[583]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L197	; 
L195:
;----- asm -----
;  744 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[548]             			blockAnimation = height2FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  746 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[549]             			nextBlockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  748 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[550]             			nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  750 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[551]             			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  752 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[552]             			blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  754 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[553]             			break;
;  0 "" 2
;--- end asm ---
	jmp	L192	; 
L205:
;----- asm -----
;  866 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[610]            			blockAnimation = height2RisingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  868 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[611]            			nextBlockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  870 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[612]            			nextBlockX = blockX + 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	addb	#2	; ,
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  872 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[613]            			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  874 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[614]            			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  876 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[615]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L202	; 
	.globl _startBlockFalling
_startBlockFalling:
;----- asm -----
;  914 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[637]	gameState = BlockFalling;
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  916 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[638]	blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  918 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[639]	moveBlock(lastBlockDirection);
;  0 "" 2
;--- end asm ---
	ldb	_lastBlockDirection	; , lastBlockDirection
	jsr	_moveBlock	; 
;----- asm -----
;  920 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[640]	changeMusic(fallingMusic);
;  0 "" 2
;  710 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[529]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  712 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[530]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_fallingMusic	; ,
	stx	_currentMusic	; , currentMusic
	rts
	.globl _blockMovingToStart
_blockMovingToStart:
	pshs	u	; 
	leas	-11,s	; ,,
;----- asm -----
;  1005 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[696]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1007 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[697]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	5,s	; , blockYOfs.43
;----- asm -----
;  990 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[686]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  992 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[687]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	9,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  994 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[688]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , blockYOfs.43
	stb	10,s	; , a
	clr	9,s	;  b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 10,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  997 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[690]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	6,s	; , blockX.40
;----- asm -----
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , blockX.40
	aslb	; 
	addb	6,s	; , blockX.40
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
	ldb	6,s	; , blockX.40
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
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 10,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  999 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[691]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp45, tmp44,
	ldx	,x	;  D.3892,
;----- asm -----
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	;  D.3892, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	7,s	;  D.3892, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1009 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[698]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.44, blockYOfs
;----- asm -----
;  1011 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[699]	if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.44
	bne	L231	; 
;----- asm -----
;  1013 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[700]		gameState = BlockWaiting;
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
;  1077 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[742]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1079 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[743]	drawBlock(0);
;  0 "" 2
;  990 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[686]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  992 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[687]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  994 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[688]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	clr	15,s	;  a
	clr	14,s	;  b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	ldb 14,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  997 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[690]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	9,s	; , blockX.40
;----- asm -----
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , blockX.40
	aslb	; 
	addb	9,s	; , blockX.40
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
	ldb	9,s	; , blockX.40
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
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 15,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  999 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[691]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp52, tmp51,
	ldx	,x	;  D.3940,
;----- asm -----
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	12,s	;  D.3940, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	12,s	;  D.3940, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 12,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1081 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[744]	doBlockAnimation();
;  0 "" 2
;  1057 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[729]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	beq	L233	; 
;----- asm -----
;  1059 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[730]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
	lbeq	L255	; 
L233:
;----- asm -----
;  1083 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[745]	if (!blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbne	L254	; 
;----- asm -----
;  1089 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[750]		unsigned long int index = (unsigned long int )blockY * LEVEL_WIDTH + (unsigned long int)blockX;
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
;  1091 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[751]		char c0 = isField(level[index]);
;  0 "" 2
;--- end asm ---
	exg	d,x	; , tmp64
	addd	_level	; , level
	exg	d,x	; , tmp64
	ldb	,x	;  D.2687,
;----- asm -----
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[262]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  D.2687,
	lbeq	L235	; 
	cmpb	#97	;cmpqi:	;  D.2687,
	lbeq	L235	; 
	eorb	#111	;  D.2687,
	clra		;zero_extendqihi: R:b -> R:d	;  D.2687, tmp66
	addd	#-1	;  tmp67,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	stb	11,s	; , prephitmp.566
L237:
;----- asm -----
;  1093 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[752]		char c1 = isField(level[index+1]);
;  0 "" 2
;--- end asm ---
	ldb	1,x	;  D.2691,
;----- asm -----
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[262]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  D.2691,
	lbeq	L238	; 
	cmpb	#97	;cmpqi:	;  D.2691,
	lbeq	L238	; 
	eorb	#111	;  D.2691,
	clra		;zero_extendqihi: R:b -> R:d	;  D.2691, tmp70
	addd	#-1	;  tmp71,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	stb	6,s	; , iftmp.7
L240:
;----- asm -----
;  1095 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[753]		char c2 = isField(level[index + LEVEL_WIDTH]);
;  0 "" 2
;--- end asm ---
	ldb	12,x	;  D.2695,
;----- asm -----
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[262]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  D.2695,
	beq	L241	; 
	cmpb	#97	;cmpqi:	;  D.2695,
	beq	L241	; 
	eorb	#111	;  D.2695,
	clra		;zero_extendqihi: R:b -> R:d	;  D.2695, tmp74
	addd	#-1	;  tmp75,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	stb	8,s	; , iftmp.7
;----- asm -----
;  1097 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[754]		switch (blockOrientation) {
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
;  1129 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[773]		if (blockOrientation == Standing && blockX == endX && blockY == endY) {
;  0 "" 2
;--- end asm ---
	tst	_blockOrientation	;  blockOrientation
	bne	L253	; 
	ldb	_blockX	; , blockX
	cmpb	_endX	;cmpqi:	; , endX
	lbeq	L257	; 
L253:
;----- asm -----
;  1139 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[779]			if (gameState != BlockFalling) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#5	;cmpqi:	; ,
	beq	L254	; 
;----- asm -----
;  1141 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[780]				gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
L254:
	leas	16,s	; ,,
	puls	u,pc	; 
L235:
	ldb	#1	; ,
	stb	11,s	; , prephitmp.566
	jmp	L237	; 
L241:
	ldb	#1	; ,
	stb	8,s	; , iftmp.7
;----- asm -----
;  1097 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[754]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	bne	L258	; 
L246:
;----- asm -----
;  1110 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[761]			if (!c0 || !c2) {
;  0 "" 2
;--- end asm ---
	tst	11,s	;  prephitmp.566
	beq	L249	; 
	tst	8,s	;  iftmp.7
	bne	L250	; 
L249:
;----- asm -----
;  1112 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[762]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L250:
;----- asm -----
;  1115 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[764]			break;
;  0 "" 2
;--- end asm ---
	jmp	L244	; 
L238:
	ldb	#1	; ,
	stb	6,s	; , iftmp.7
	jmp	L240	; 
L245:
;----- asm -----
;  1101 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[756]			if (!c0) {
;  0 "" 2
;--- end asm ---
	tst	11,s	;  prephitmp.566
	lbeq	L259	; 
L248:
;----- asm -----
;  1106 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[759]			break;
;  0 "" 2
;--- end asm ---
	jmp	L244	; 
L255:
;----- asm -----
;  1061 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[731]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  1063 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[732]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  1065 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[733]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  1067 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[734]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  1069 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[735]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
	jmp	L233	; 
L256:
;----- asm -----
;  1119 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[766]			if (!c0 || ! c1) {
;  0 "" 2
;--- end asm ---
	tst	11,s	;  prephitmp.566
	beq	L251	; 
	tst	6,s	;  iftmp.7
	bne	L252	; 
L251:
;----- asm -----
;  1121 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[767]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L252:
;----- asm -----
;  1124 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[769]			break;
;  0 "" 2
;--- end asm ---
	jmp	L244	; 
L257:
	ldb	_blockY	; , blockY
	cmpb	_endY	;cmpqi:	; , endY
	lbne	L253	; 
;----- asm -----
;  1131 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[774]			blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  1133 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[775]			gameState = BlockMovingAtEnd;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  1135 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[776]			changeMusic(levelEndMusic);
;  0 "" 2
;  710 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[529]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  712 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[530]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_levelEndMusic	; ,
	stx	_currentMusic	; , currentMusic
	jmp	L254	; 
L259:
;----- asm -----
;  1103 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[757]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
	jmp	L248	; 
	.globl _blockWaiting
_blockWaiting:
	pshs	u	; 
	leas	-10,s	; ,,
;----- asm -----
;  1020 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[706]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1022 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[707]	drawBlock(0);
;  0 "" 2
;  990 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[686]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  992 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[687]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	8,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 8,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  994 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[688]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	clr	9,s	;  a
	clr	8,s	;  b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 8,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  997 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[690]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	5,s	; , blockX.40
;----- asm -----
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , blockX.40
	aslb	; 
	addb	5,s	; , blockX.40
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
	ldb	5,s	; , blockX.40
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
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 8,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  999 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[691]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp47, tmp46,
	ldx	,x	;  D.4005,
;----- asm -----
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	6,s	;  D.4005, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	6,s	;  D.4005, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 6,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1024 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[708]	joybit();
;  0 "" 2
;  2354 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Joy_Digital; BIOS call
;  0 "" 2
;  1026 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[709]	if (pot0 < -10) {
;  0 "" 2
;--- end asm ---
	ldb	-14309	;  D.2655,
	cmpb	#-10	;cmpqi:	;  D.2655,
	lblt	L267	; 
	ldb	-14309	;  D.2656,
	cmpb	#10	;cmpqi:	;  D.2656,
	bgt	L268	; 
	ldb	-14308	;  D.2658,
	cmpb	#-10	;cmpqi:	;  D.2658,
	lblt	L269	; 
	ldb	-14308	;  D.2659,
	cmpb	#10	;cmpqi:	;  D.2659,
	lbgt	L270	; 
L262:
;----- asm -----
;  1048 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[722]	if (gameState == BlockMoving) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#4	;cmpqi:	; ,
	bne	L266	; 
;----- asm -----
;  1050 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[723]		changeMusic(movingMusic);
;  0 "" 2
;  710 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[529]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  712 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[530]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_movingMusic	; ,
	stx	_currentMusic	; , currentMusic
L266:
	leas	10,s	; ,,
	puls	u,pc	; 
L268:
;----- asm -----
;  1033 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[713]		moveBlock(Right);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  1035 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[714]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	bra	L262	; 
L267:
;----- asm -----
;  1028 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[710]		moveBlock(Left);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_moveBlock	; 
;----- asm -----
;  1030 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[711]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	jmp	L262	; 
L269:
;----- asm -----
;  1038 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[716]		moveBlock(Down);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  1040 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[717]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	jmp	L262	; 
L270:
;----- asm -----
;  1043 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[719]		moveBlock(Up);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  1045 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[720]		gameState = BlockMoving;
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
;  1230 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[838]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1232 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[839]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	4,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1234 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[840]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1236 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[841]    Print_Str_d(100, -80, "CLEAR SCORE?�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	4,s	; , a
	ldb	#-80	; ,
	stb	3,s	; , b
	ldx	#LC0	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1238 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[842]    Print_Str_d(50, -110, "3 YES�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	4,s	; , b
	ldx	#LC1	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 4,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1240 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[843]    Print_Str_d(20, -110, "4 NO�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	4,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC2	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[844]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	,s	; ,
	bitb	#4	; ,
	lbeq	L272	; 
;----- asm -----
;  1244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[845]		for (uint8_t i = 0; i < 6; i++) {
;  0 "" 2
;  1246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[846]			writeEeprom(i, 0xff);
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L281	; 
L273:
;----- asm -----
;  1246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[846]			writeEeprom(i, 0xff);
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L282	; 
L274:
;----- asm -----
;  1246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[846]			writeEeprom(i, 0xff);
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L283	; 
L275:
;----- asm -----
;  1246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[846]			writeEeprom(i, 0xff);
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L284	; 
L276:
;----- asm -----
;  1246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[846]			writeEeprom(i, 0xff);
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L285	; 
L277:
;----- asm -----
;  1246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[846]			writeEeprom(i, 0xff);
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	bne	L286	; 
L278:
;----- asm -----
;  1249 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[848]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	,s	; ,
L272:
;----- asm -----
;  1252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[850]	if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	#8	; ,
	andb	,s	; ,
	beq	L280	; 
;----- asm -----
;  1254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[851]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L280:
	leas	5,s	; ,,
	puls	u,pc	; 
L286:
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
	jmp	L278	; 
L282:
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
	jmp	L274	; 
L283:
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
	jmp	L275	; 
L284:
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
	jmp	L276	; 
L285:
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
	jmp	L277	; 
L281:
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
	jmp	L273	; 
	.globl _writeEeprom
_writeEeprom:
	pshs	b	; 
;----- asm -----
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L289	; 
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , address
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , data
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
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
;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[231]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	bne	L294	; 
;----- asm -----
;  251 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[234]		return 0xff;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	1,s	; , result
	leas	2,s	; ,,
	rts
L294:
;----- asm -----
;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[232]		return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , address
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	1,s	; , result
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
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
;  926 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[645]	if (levelNumber == 0) {
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	stb	2,s	; ,
	lbne	L296	; 
;----- asm -----
;  928 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[646]		level = level0;
;  0 "" 2
;--- end asm ---
	ldx	_level0	; , level0
	stx	_level	; , level
L297:
;----- asm -----
;  938 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[653]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
;  0 "" 2
;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[231]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L332	; 
;----- asm -----
;  251 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[234]		return 0xff;
;  0 "" 2
;--- end asm ---
	ldx	#255	;  prephitmp.640,
L300:
	stx	_levelHighscore	;  prephitmp.640, levelHighscore
;----- asm -----
;  940 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[654]	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
;  0 "" 2
;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[231]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L333	; 
;----- asm -----
;  251 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[234]		return 0xff;
;  0 "" 2
;--- end asm ---
	ldd	#-256	;  prephitmp.642,
L302:
	ora	_levelHighscore	; , levelHighscore
	orb	_levelHighscore+1	; , levelHighscore
	std	_levelHighscore	;  levelHighscore.36, levelHighscore
;----- asm -----
;  942 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[655]	if (levelHighscore == 0) levelHighscore = 999;
;  0 "" 2
;--- end asm ---
	cmpd	#0	;  levelHighscore.36
	bne	L303	; 
	ldx	#999	; ,
	stx	_levelHighscore	; , levelHighscore
L303:
;----- asm -----
;  944 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[656]	lineCount = 0;
;  0 "" 2
;--- end asm ---
	clr	_lineCount	;  lineCount
;----- asm -----
;  946 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[657]	setupX();
;  0 "" 2
;--- end asm ---
	jsr	_setupX	; 
;----- asm -----
;  948 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[658]	setupY();
;  0 "" 2
;  665 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[500]	unsigned long int index;
;  0 "" 2
;  667 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[501]	int8_t x = 0;
;  0 "" 2
;  669 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[502]	int8_t y = 0;
;  0 "" 2
;  671 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[503]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
;  0 "" 2
;--- end asm ---
	ldu	#0	;  ivtmp.712,
L310:
;----- asm -----
;  673 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[504]		int8_t y0 = -1;
;  0 "" 2
;  675 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[505]		int8_t y1 = -1;
;  0 "" 2
;  677 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[506]		for (y = 0; y < LEVEL_HEIGHT; y++) {
;  0 "" 2
;--- end asm ---
	stu	23,s	;  ivtmp.712, ivtmp.696
	clr	6,s	;  y1
	ldb	#-1	; ,
	stb	25,s	; , y1.707
	stb	26,s	; , y1.708
	jmp	L309	; 
L335:
	cmpb	#97	;cmpqi:	; ,
	lbeq	L304	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L304	; 
;----- asm -----
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[262]	return (char)(c == '.' || c == 'a' || c == 'o');
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
;  696 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[518]				if (y0 >= 0) {
;  0 "" 2
;--- end asm ---
	ldb	25,s	; , y1.707
	cmpb	#-1	;cmpqi:	; ,
	beq	L308	; 
;----- asm -----
;  698 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[519]					addLine(x + 1, y0, x + 1, y1 + 1);
;  0 "" 2
;--- end asm ---
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  ivtmp.712,
	incb	; 
	stb	,s	; , D.4145
	ldb	26,s	; , y1.708
	incb	; 
	pshs	b	; 
	ldb	1,s	; , D.4145
	pshs	b	; 
	ldb	27,s	; , y1.707
	pshs	b	; 
	ldb	3,s	; , D.4145
	jsr	_addLine	; 
;----- asm -----
;  700 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[520]					y0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	28,s	; , y1.707
	leas	3,s	; ,,
L308:
	inc	6,s	;  y1
	ldd	23,s	; , ivtmp.696
	addd	#12	; ,
	std	23,s	; , ivtmp.696
	ldb	6,s	; , y1
	cmpb	#17	;cmpqi:	; ,
	lbeq	L334	; 
L309:
;----- asm -----
;  683 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[511]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
;  0 "" 2
;  685 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[512]			char c0 = level[index];
;  0 "" 2
;--- end asm ---
	ldx	23,s	;  tmp105, ivtmp.696
	exg	d,x	; , tmp105
	addd	_level	; , level
	exg	d,x	; , tmp105
	ldb	,x+	; ,
	stb	,s	; , c0
;----- asm -----
;  687 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[513]			char c1 = level[index+1];
;  0 "" 2
;--- end asm ---
	ldb	,x	; ,
	stb	7,s	; , c1
;----- asm -----
;  689 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[514]			if (isField(c0) || isField(c1)) {
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[262]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	,s	; , c0
	cmpb	#46	;cmpqi:	; ,
	lbne	L335	; 
L304:
;----- asm -----
;  691 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[515]				if (y0 < 0) y0 = y;
;  0 "" 2
;--- end asm ---
	ldb	25,s	; , y1.707
	cmpb	#-1	;cmpqi:	; ,
	beq	L336	; 
L307:
;----- asm -----
;  693 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[516]				y1 = y;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , y1
	stb	26,s	; , y1.708
	jmp	L308	; 
L336:
	ldb	6,s	; , y1
	stb	25,s	; , y1.707
	bra	L307	; 
L334:
	leau	1,u	;  ivtmp.712,, ivtmp.712
	cmpu	#11	;cmphi:	;  ivtmp.712,
	lbne	L310	; 
;----- asm -----
;  950 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[659]	blockX = startX;
;  0 "" 2
;--- end asm ---
	ldb	_startX	; , startX
	stb	_blockX	; , blockX
;----- asm -----
;  952 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[660]	blockY = startY;
;  0 "" 2
;--- end asm ---
	ldb	_startY	; , startY
	stb	_blockY	; , blockY
;----- asm -----
;  954 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[661]	blockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  956 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[662]	blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  958 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[663]	blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
;----- asm -----
;  960 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[664]	blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  962 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[665]	blockYOfs = -30;
;  0 "" 2
;--- end asm ---
	ldb	#-30	; ,
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  964 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[666]	gameState = BlockMovingToStart;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  966 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[667]	changeMusic(startMusic);
;  0 "" 2
;  710 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[529]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  712 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[530]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_startMusic	; ,
	stx	_currentMusic	; , currentMusic
;----- asm -----
;  968 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[668]	moveCount = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_moveCount	; , moveCount
;----- asm -----
;  970 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[669]	updateInfoText();
;  0 "" 2
;  282 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[256]	itoa(moveCount, &infoText[0]);
;  0 "" 2
;  260 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[242]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	28,s	; , muls
	ldd	#10	; ,
	std	30,s	; , muls
	ldd	#1	; ,
	std	32,s	; , muls
;----- asm -----
;  262 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[243]	if (number > 999) number = 999;
;  0 "" 2
;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[244]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	28,s	; ,,
	stx	19,s	; , ivtmp.687
	ldx	#_infoText	; ,
	stx	21,s	; , ivtmp.689
	ldd	#0	; ,
	std	,s	; , number.710
	ldx	19,s	; , ivtmp.687
L314:
;----- asm -----
;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[245]		uint8_t d = 0;
;  0 "" 2
;  268 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[246]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.4153, muls
	ldb	#48	; ,
	stb	10,s	; , prephitmp.648
	cmpu	,s	;cmphi:	;  D.4153, number.710
	bhi	L312	; 
	tfr	u,d	;  D.4153,
	nega
	negb
	sbca	#0
	std	17,s	; , ivtmp.678
	ldd	,s	; , number.710
	pshs	u	;subhi: R:d -= R:u	;  D.4153,
	subd	,s++	; 
	std	,s	; , number.710
	clr	8,s	;  d
L313:
;----- asm -----
;  270 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]			d++;
;  0 "" 2
;--- end asm ---
	inc	8,s	;  d
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[248]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.716, number.710
	tfr	y,d	; ,
	addd	17,s	; , ivtmp.678
	std	,s	; , number.710
	leax	d,u	;  tmp115,, D.4153
	pshs	u	;cmphi: R:u with R:x	;  D.4153, tmp115
	cmpx	,s++	;cmphi:	;  tmp115
	bhs	L313	; 
	sty	,s	;  number.716, number.710
	ldb	8,s	; , d
	addb	#48	; ,
	stb	10,s	; , prephitmp.648
L312:
;----- asm -----
;  275 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[250]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	21,s	; , ivtmp.689
	leax	1,x	; ,,
	stx	21,s	; , ivtmp.689
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	19,s	; , ivtmp.687
	leax	2,x	; ,,
	stx	19,s	; , ivtmp.687
	tfr	s,d	; ,
	addd	#34	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L314	; 
;----- asm -----
;  284 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[257]	itoa(levelHighscore, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	_levelHighscore	;  number.709, levelHighscore
;----- asm -----
;  260 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[242]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	28,s	; , muls
	ldd	#10	; ,
	std	30,s	; , muls
	ldd	#1	; ,
	std	32,s	; , muls
;----- asm -----
;  262 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[243]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number.709, number
	cmpu	#999	;cmphi:	;  number.709,
	bls	L315	; 
	ldx	#999	; ,
	stx	,s	; , number
L315:
;----- asm -----
;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[244]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	28,s	; ,,
	stx	13,s	; , ivtmp.671
	ldx	#_infoText+6	; ,
	stx	15,s	; , ivtmp.673
	ldx	13,s	; , ivtmp.671
L319:
;----- asm -----
;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[245]		uint8_t d = 0;
;  0 "" 2
;  268 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[246]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.4162, muls
	ldb	#48	; ,
	stb	27,s	; , prephitmp.715
	cmpu	,s	;cmphi:	;  D.4162, number
	bhi	L317	; 
	tfr	u,d	;  D.4162,
	nega
	negb
	sbca	#0
	std	11,s	; , ivtmp.662
	ldd	,s	; , number
	pshs	u	;subhi: R:d -= R:u	;  D.4162,
	subd	,s++	; 
	std	,s	; , number
	clr	9,s	;  d
L318:
;----- asm -----
;  270 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]			d++;
;  0 "" 2
;--- end asm ---
	inc	9,s	;  d
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[248]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.717, number
	tfr	y,d	; ,
	addd	11,s	; , ivtmp.662
	std	,s	; , number
	leax	d,u	;  tmp121,, D.4162
	pshs	u	;cmphi: R:u with R:x	;  D.4162, tmp121
	cmpx	,s++	;cmphi:	;  tmp121
	bhs	L318	; 
	sty	,s	;  number.717, number
	ldb	9,s	; , d
	addb	#48	; ,
	stb	27,s	; , prephitmp.715
L317:
;----- asm -----
;  275 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[250]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	15,s	; , ivtmp.673
	leax	1,x	; ,,
	stx	15,s	; , ivtmp.673
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	13,s	; , ivtmp.671
	leax	2,x	; ,,
	stx	13,s	; , ivtmp.671
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
;  934 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[650]		level = level2;
;  0 "" 2
;--- end asm ---
	ldd	_level2	; , level2
	std	_level	; , level
	jmp	L297	; 
L337:
;----- asm -----
;  931 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[648]		level = level1;
;  0 "" 2
;--- end asm ---
	ldx	_level1	; , level1
	stx	_level	; , level
	jmp	L297	; 
L332:
;----- asm -----
;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[232]		return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	asl	2,s	; 
	ldb	2,s	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	3,s	; , result
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , result
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , prephitmp.640
	ldb	_levelNumber	; , levelNumber
	stb	2,s	; ,
	jmp	L300	; 
L333:
;----- asm -----
;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[232]		return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	asl	2,s	; 
	inc	2,s	; 
	ldb	2,s	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	5,s	; , result
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
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
;  1196 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[817]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1198 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[818]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1200 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[819]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1202 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[820]    Print_Str_d(100, -70, "MAIN MENU�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	3,s	; , a
	ldb	#-70	; ,
	stb	4,s	; , b
	ldx	#LC3	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 4,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1204 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[821]    Print_Str_d(50, -110, "1 START GAME�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	4,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC4	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1206 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[822]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	4,s	; , b
	ldx	#LC5	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 4,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1208 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[823]    Print_Str_d(-10, -110, "3 BANKING TEST�");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	4,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC6	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1210 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[824]	if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	,s	; ,
	bitb	#1	; ,
	lbne	L343	; 
L339:
;----- asm -----
;  1215 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[827]	if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	#2	;  tmp34,
	andb	,s	;  tmp34,
	beq	L340	; 
;----- asm -----
;  1217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[828]		gameState = ClearMenu;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_gameState	; , gameState
L340:
;----- asm -----
;  1220 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[830]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	andb	,s	; ,
	beq	L342	; 
;----- asm -----
;  1222 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[831]		sendCommand(CMD_SET_BANK, 1);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  1224 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		jmp 0xf000
;  0 "" 2
;--- end asm ---
L342:
	leas	5,s	; ,,
	puls	u,pc	; 
L343:
;----- asm -----
;  1212 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[825]		startLevel();
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
;  1150 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[788]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1152 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[789]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	5,s	; , blockYOfs.64
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  1154 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[790]	if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	ble	L348	; 
L345:
;----- asm -----
;  1161 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[794]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	lbeq	L349	; 
	leas	11,s	; ,,
	puls	u,pc	; 
L348:
;----- asm -----
;  1156 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[791]		drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;  990 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[686]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  992 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[687]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	9,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  994 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[688]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	;  tmp32, blockYOfs.64
	negb	;  tmp32
	lda	5,s	;mulqihi3	;  blockYOfs.64
	mul
	stb	10,s	;movlsbqihi: R:d -> 10,s	;  a, tmp33
	clr	9,s	;  b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 10,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  997 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[690]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	6,s	; , blockX.40
;----- asm -----
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , blockX.40
	aslb	; 
	addb	6,s	; , blockX.40
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
	ldb	6,s	; , blockX.40
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
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 10,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  999 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[691]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp47, tmp46,
	ldx	,x	;  D.4337,
;----- asm -----
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	;  D.4337, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	7,s	;  D.4337, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1158 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[792]		doBlockAnimation();
;  0 "" 2
;  1057 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[729]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbeq	L345	; 
;----- asm -----
;  1059 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[730]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
	lbne	L345	; 
;----- asm -----
;  1061 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[731]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  1063 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[732]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  1065 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[733]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  1067 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[734]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  1069 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[735]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
	jmp	L345	; 
L349:
;----- asm -----
;  1163 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[795]		startLevel();
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
;  1170 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[801]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1172 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[802]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	5,s	; , blockYOfs.65
;----- asm -----
;  990 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[686]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  992 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[687]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	9,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  994 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[688]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , blockYOfs.65
	stb	10,s	; , a
	clr	9,s	;  b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 10,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  997 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[690]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	6,s	; , blockX.40
;----- asm -----
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , blockX.40
	aslb	; 
	addb	6,s	; , blockX.40
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
	ldb	6,s	; , blockX.40
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
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 10,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  999 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[691]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp50, tmp49,
	ldx	,x	;  D.4391,
;----- asm -----
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	;  D.4391, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	7,s	;  D.4391, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1174 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[803]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.66, blockYOfs
;----- asm -----
;  1176 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[804]	if (blockYOfs == 30) {
;  0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	;  blockYOfs.66,
	beq	L356	; 
	leas	11,s	; ,,
	puls	u,pc	; 
L356:
;----- asm -----
;  1178 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[805]		if (moveCount < levelHighscore) {
;  0 "" 2
;--- end asm ---
	ldu	_moveCount	;  moveCount.760, moveCount
	cmpu	_levelHighscore	;cmphi:	;  moveCount.760, levelHighscore
	blo	L357	; 
L352:
;----- asm -----
;  1185 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[809]		levelNumber++;
;  0 "" 2
;--- end asm ---
	inc	_levelNumber	;  levelNumber
	ldb	_levelNumber	;  levelNumber.70, levelNumber
;----- asm -----
;  1187 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[810]		if (levelNumber > 2) levelNumber = 0;
;  0 "" 2
;--- end asm ---
	cmpb	#2	;cmpqi:	;  levelNumber.70,
	ble	L354	; 
	clr	_levelNumber	;  levelNumber
L354:
;----- asm -----
;  1189 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[811]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	leas	11,s	; ,,
	puls	u,pc	; 
L357:
;----- asm -----
;  1180 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[806]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.761, levelNumber
;----- asm -----
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L353	; 
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	aslb	;  levelNumber.761
	pshs	b	;  levelNumber.761
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  moveCount.760,
	pshs	b	; 
	ldb	#3	; ,
	jsr	_sendCommand	; 
	leas	2,s	; ,,
	ldu	_moveCount	;  moveCount.760, moveCount
	ldb	_levelNumber	;  levelNumber.761, levelNumber
L353:
;----- asm -----
;  1182 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[807]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L352	; 
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	aslb	;  levelNumber.761
	incb	;  levelNumber.761
	pshs	b	;  levelNumber.761
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  moveCount.760, tmp54
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
	leas	-16,s	; ,,
;----- asm -----
;  1333 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[906]	picAvailable = 0;
;  0 "" 2
;--- end asm ---
	clr	_picAvailable	;  picAvailable
;----- asm -----
;  1335 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[907]	sendCommand(CMD_VERSION, 0);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  1337 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[908]	sendCommand(CMD_VERSION, 0);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  1339 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[909]	if (sendCommand(CMD_VERSION, 0) == 4) {
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	7,s	; , result
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , result
	cmpb	#4	;cmpqi:	; ,
	lbeq	L385	; 
L359:
;----- asm -----
;  1346 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[914]	memcpy(infoText, "001 / 999�", 10);
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
;  1350 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[917]	epot0 = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14305	; ,
;----- asm -----
;  1352 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[918]	epot1 = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	-14304	; ,
;----- asm -----
;  1354 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[919]	epot2 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14303	; 
;----- asm -----
;  1356 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[920]	epot3 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14302	; 
;----- asm -----
;  1359 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[922]	gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
;----- asm -----
;  1362 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[924]	while (1) {
;  0 "" 2
;--- end asm ---
L383:
;----- asm -----
;  1365 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[926]		frwait();
;  0 "" 2
;  97 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  1368 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[928]		switch (gameState) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#6	;cmpqi:	; ,
	lbhi	L360	; 
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp52
	jmp	[L368,x]	; , tmp52
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
;  1416 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[952]				showInfo();
;  0 "" 2
;  1322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[898]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[899]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[900]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	15,s	; , a
	ldb	#-70	; ,
	stb	14,s	; , b
	ldx	#_infoText	; ,
	stx	12,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	ldb 14,s	;  b
	ldu 12,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1418 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[953]        			blockMovingAtEnd();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingAtEnd	; 
;----- asm -----
;  1420 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[954]        			break;
;  0 "" 2
;--- end asm ---
L360:
;----- asm -----
;  1425 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[958]		DP_to_C8();
;  0 "" 2
;  316 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_C8; BIOS call
;  0 "" 2
;  1427 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[959]		replay(currentMusic);
;  0 "" 2
;--- end asm ---
	ldu	_currentMusic	; , currentMusic
; Applied peep: 2 (no load after store)
;----- asm -----
;  2917 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stu	12,s	; , u
; ORG>	stu	12,s	; , u
; ORG>;----- asm -----
; ORG>;  2917 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldu 12,s	;  u
	jsr ___Init_Music_chk; BIOS call
;  0 "" 2
;  1429 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[960]		DP_to_D0();
;  0 "" 2
;  300 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_D0; BIOS call
;  0 "" 2
;  1431 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[961]		reqout();
;  0 "" 2
;  2880 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Do_Sound; BIOS call
;  0 "" 2
;--- end asm ---
	jmp	L383	; 
L366:
;----- asm -----
;  1408 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[948]				showInfo();
;  0 "" 2
;  1322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[898]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	15,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[899]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[900]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	14,s	; , a
	ldb	#-70	; ,
	stb	15,s	; , b
	ldx	#_infoText	; ,
	stx	12,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 15,s	;  b
	ldu 12,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1410 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[949]        			blockFalling();
;  0 "" 2
;  1150 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[788]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1152 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[789]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	10,s	; , blockYOfs.64
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  1154 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[790]	if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	lble	L386	; 
L381:
;----- asm -----
;  1161 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[794]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	lbeq	L387	; 
L382:
;----- asm -----
;  1412 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[950]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L360	; 
L365:
;----- asm -----
;  1400 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[944]				showInfo();
;  0 "" 2
;  1322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[898]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[899]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[900]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	15,s	; , a
	ldb	#-70	; ,
	stb	14,s	; , b
	ldx	#_infoText	; ,
	stx	12,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	ldb 14,s	;  b
	ldu 12,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1402 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[945]        			blockMoving();
;  0 "" 2
;--- end asm ---
	jsr	_blockMoving	; 
;----- asm -----
;  1404 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[946]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L360	; 
L362:
;----- asm -----
;  1378 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[933]				clearMenu();
;  0 "" 2
;  1230 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[838]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1232 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[839]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	15,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1234 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[840]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1236 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[841]    Print_Str_d(100, -80, "CLEAR SCORE?�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	14,s	; , a
	ldb	#-80	; ,
	stb	15,s	; , b
	ldx	#LC0	; ,
	stx	12,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 15,s	;  b
	ldu 12,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1238 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[842]    Print_Str_d(50, -110, "3 YES�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	15,s	; , a
	ldb	#-110	; ,
	stb	14,s	; , b
	ldx	#LC1	; ,
	stx	12,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	ldb 14,s	;  b
	ldu 12,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1240 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[843]    Print_Str_d(20, -110, "4 NO�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	14,s	; , a
	ldb	#-110	; ,
	stb	15,s	; , b
	ldx	#LC2	; ,
	stx	12,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 15,s	;  b
	ldu 12,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[844]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	2,s	; ,
	bitb	#4	; ,
	lbeq	L372	; 
;----- asm -----
;  1244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[845]		for (uint8_t i = 0; i < 6; i++) {
;  0 "" 2
;  1246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[846]			writeEeprom(i, 0xff);
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L373	; 
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
L373:
;----- asm -----
;  1246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[846]			writeEeprom(i, 0xff);
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L374	; 
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
L374:
;----- asm -----
;  1246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[846]			writeEeprom(i, 0xff);
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L375	; 
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
L375:
;----- asm -----
;  1246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[846]			writeEeprom(i, 0xff);
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L376	; 
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
L376:
;----- asm -----
;  1246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[846]			writeEeprom(i, 0xff);
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L377	; 
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
L377:
;----- asm -----
;  1246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[846]			writeEeprom(i, 0xff);
;  0 "" 2
;  235 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[223]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L378	; 
;----- asm -----
;  237 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[224]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  239 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[225]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;--- end asm ---
L378:
;----- asm -----
;  1249 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[848]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	2,s	; ,
L372:
;----- asm -----
;  1252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[850]	if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	#8	; ,
	andb	2,s	; ,
	beq	L379	; 
;----- asm -----
;  1254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[851]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L379:
;----- asm -----
;  1380 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[934]				break;
;  0 "" 2
;--- end asm ---
	jmp	L360	; 
L361:
;----- asm -----
;  1372 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[930]        			mainMenu();
;  0 "" 2
;  1196 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[817]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1198 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[818]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	15,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1200 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[819]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1202 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[820]    Print_Str_d(100, -70, "MAIN MENU�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	14,s	; , a
	ldb	#-70	; ,
	stb	15,s	; , b
	ldx	#LC3	; ,
	stx	12,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 15,s	;  b
	ldu 12,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1204 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[821]    Print_Str_d(50, -110, "1 START GAME�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	15,s	; , a
	ldb	#-110	; ,
	stb	14,s	; , b
	ldx	#LC4	; ,
	stx	12,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	ldb 14,s	;  b
	ldu 12,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1206 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[822]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	14,s	; , a
	ldb	#-110	; ,
	stb	15,s	; , b
	ldx	#LC5	; ,
	stx	12,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 15,s	;  b
	ldu 12,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1208 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[823]    Print_Str_d(-10, -110, "3 BANKING TEST�");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	15,s	; , a
	ldb	#-110	; ,
	stb	14,s	; , b
	ldx	#LC6	; ,
	stx	12,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	ldb 14,s	;  b
	ldu 12,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1210 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[824]	if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	2,s	; ,
	bitb	#1	; ,
	lbne	L388	; 
L369:
;----- asm -----
;  1215 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[827]	if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	#2	;  tmp61,
	andb	2,s	;  tmp61,
	beq	L370	; 
;----- asm -----
;  1217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[828]		gameState = ClearMenu;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_gameState	; , gameState
L370:
;----- asm -----
;  1220 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[830]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	andb	2,s	; ,
	beq	L371	; 
;----- asm -----
;  1222 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[831]		sendCommand(CMD_SET_BANK, 1);
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[212]	uint8_t result;
;  0 "" 2
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[213]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[214]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[215]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  225 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  227 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  229 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[218]	return result;
;  0 "" 2
;  1224 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		jmp 0xf000
;  0 "" 2
;--- end asm ---
L371:
;----- asm -----
;  1374 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[931]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L360	; 
L364:
;----- asm -----
;  1392 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[940]				showInfo();
;  0 "" 2
;  1322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[898]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	15,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[899]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[900]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	14,s	; , a
	ldb	#-70	; ,
	stb	15,s	; , b
	ldx	#_infoText	; ,
	stx	12,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 15,s	;  b
	ldu 12,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1394 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[941]        			blockWaiting();
;  0 "" 2
;--- end asm ---
	jsr	_blockWaiting	; 
;----- asm -----
;  1396 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[942]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L360	; 
L363:
;----- asm -----
;  1384 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[936]				showInfo();
;  0 "" 2
;  1322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[898]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[899]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[900]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	15,s	; , a
	ldb	#-70	; ,
	stb	14,s	; , b
	ldx	#_infoText	; ,
	stx	12,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	ldb 14,s	;  b
	ldu 12,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1386 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[937]        			blockMovingToStart();
;  0 "" 2
;  1005 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[696]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1007 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[697]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	8,s	; , blockYOfs.43
;----- asm -----
;  990 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[686]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  992 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[687]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  994 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[688]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , blockYOfs.43
	stb	15,s	; , a
	clr	14,s	;  b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	ldb 14,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  997 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[690]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	9,s	; , blockX.40
;----- asm -----
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , blockX.40
	aslb	; 
	addb	9,s	; , blockX.40
	stb	,s	; ,
	ldb	_blockY	; , blockY
	aslb	; 
	aslb	; 
	aslb	; 
	stb	6,s	; ,
	ldb	,s	; ,
	addb	6,s	; ,
	addb	#-104	; ,
	stb	14,s	; , a
	ldb	9,s	; , blockX.40
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,y	; , tmp79
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp80
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp79,
	stb	5,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp80, tmp82
	addb	5,s	;  tmp82,
	stb	15,s	;  tmp82, b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 15,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  999 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[691]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp86, tmp85,
	ldx	,x	;  D.4512,
;----- asm -----
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	12,s	;  D.4512, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	12,s	;  D.4512, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 12,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1009 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[698]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.44, blockYOfs
;----- asm -----
;  1011 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[699]	if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.44
	bne	L380	; 
;----- asm -----
;  1013 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[700]		gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
L380:
;----- asm -----
;  1388 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[938]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L360	; 
L388:
;----- asm -----
;  1212 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[825]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	ldb	_Vec_Buttons	; , Vec_Buttons
	stb	2,s	; ,
	jmp	L369	; 
L386:
;----- asm -----
;  1156 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[791]		drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;  990 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[686]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  992 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[687]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  994 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[688]	positd(0, yofs);
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	10,s	;  tmp90, blockYOfs.64
	negb	;  tmp90
	lda	10,s	;mulqihi3	;  blockYOfs.64
	mul
	stb	15,s	;movlsbqihi: R:d -> 15,s	;  a, tmp91
	clr	14,s	;  b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	ldb 14,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  997 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[690]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	11,s	; , blockX.40
;----- asm -----
;  306 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  308 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  297 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  299 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  52 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[51]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  54 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[52]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	11,s	; , blockX.40
	aslb	; 
	addb	11,s	; , blockX.40
	stb	,s	; ,
	ldb	_blockY	; , blockY
	aslb	; 
	aslb	; 
	aslb	; 
	stb	4,s	; ,
	ldb	,s	; ,
	addb	4,s	; ,
	addb	#-104	; ,
	stb	14,s	; , a
	ldb	11,s	; , blockX.40
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,y	; , tmp98
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp99
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp98,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp99, tmp101
	addb	3,s	;  tmp101,
	stb	15,s	;  tmp101, b
;----- asm -----
;  3315 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 15,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  999 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[691]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp105, tmp104,
	ldx	,x	;  D.4549,
;----- asm -----
;  59 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[56]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[57]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	12,s	;  D.4549, x
; ORG>;----- asm -----
; ORG>;  61 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[57]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	12,s	;  D.4549, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 12,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1158 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[792]		doBlockAnimation();
;  0 "" 2
;  1057 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[729]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbeq	L381	; 
;----- asm -----
;  1059 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[730]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
	lbne	L381	; 
;----- asm -----
;  1061 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[731]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  1063 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[732]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  1065 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[733]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  1067 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[734]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  1069 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[735]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
;----- asm -----
;  1161 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[794]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	lbne	L382	; 
L387:
;----- asm -----
;  1163 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[795]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	jmp	L382	; 
L385:
;----- asm -----
;  1341 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[910]		picAvailable = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_picAvailable	; , picAvailable
	jmp	L359	; 
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
_moveScale:	.blkb	80
	.globl	_moveTo
_moveTo:	.blkb	160
	.globl	_lineScale
_lineScale:	.blkb	80
	.globl	_lineX0
_lineX0:	.blkb	80
	.globl	_lineY0
_lineY0:	.blkb	80
	.globl	_lineX1
_lineX1:	.blkb	80
	.globl	_lineY1
_lineY1:	.blkb	80
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
