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
;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	10,s	; , muls
	ldd	#10	; ,
	std	12,s	; , muls
	ldd	#1	; ,
	std	14,s	; , muls
;----- asm -----
;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stx	,s	;  number, number.107
	cmpx	#999	;cmphi:	;  number,
	bls	L2	; 
	ldx	#999	; ,
	stx	,s	; , number.107
L2:
;----- asm -----
;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	10,s	; ,,
	stx	6,s	; , ivtmp.103
	ldd	22,s	; , text
	std	8,s	; , ivtmp.105
L6:
;----- asm -----
;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[230]		uint8_t d = 0;
;  0 "" 2
;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[231]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.2383, muls
	ldb	#48	; ,
	stb	3,s	; , prephitmp.84
	cmpu	,s	;cmphi:	;  D.2383, number.107
	bhi	L4	; 
	tfr	u,d	;  D.2383,
	nega
	negb
	sbca	#0
	std	4,s	; , ivtmp.93
	ldd	,s	; , number.107
	pshs	u	;subhi: R:d -= R:u	;  D.2383,
	subd	,s++	; 
	std	,s	; , number.107
	clr	2,s	;  d
L5:
;----- asm -----
;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[232]			d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[233]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.109, number.107
	tfr	y,d	; ,
	addd	4,s	; , ivtmp.93
	std	,s	; , number.107
	leax	d,u	;  tmp87,, D.2383
	pshs	x	;cmphi: R:x with R:u	;  tmp87, D.2383
	cmpu	,s++	;cmphi:	;  D.2383
	bls	L5	; 
	sty	,s	;  number.109, number.107
	ldb	2,s	; , d
	addb	#48	; ,
	stb	3,s	; , prephitmp.84
L4:
;----- asm -----
;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[235]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	8,s	; , ivtmp.105
	leax	1,x	; ,,
	stx	8,s	; , ivtmp.105
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	6,s	; , ivtmp.103
	leax	2,x	; ,,
	stx	6,s	; , ivtmp.103
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
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
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
	ldb	#1	;  prephitmp.117,
	rts
	.globl _x3d
_x3d:
	pshs	y	; 
	leas	-2,s	; ,,
	stb	,s	;  x, x
;----- asm -----
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
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
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
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
	.globl _addLine
_addLine:
	pshs	y,u	; 
	leas	-4,s	; ,,
	stb	2,s	;  x0, x0
;----- asm -----
;  296 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[266]	lineX0[lineCount] = x3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	3,s	; , lineCount.8
;----- asm -----
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,y	; , lineCount.8
	ldb	10,s	; , y0
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp35
	ldb	2,s	; , x0
	addb	#-2	; ,
	stb	2,s	; , x0
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp37
	ldb	2,s	; , x0
	addb	#2	; ,
	stb	2,s	; , x0
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp35,
	stb	1,s	; ,
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp37, tmp39
	addb	1,s	;  tmp39,
	stb	_lineX0,y	;  tmp39, lineX0
;----- asm -----
;  298 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[267]	lineY0[lineCount] = y3d(x0, 0, y0);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	2,s	;  tmp44, x0
	aslb	;  tmp44
	addb	2,s	;  tmp44, x0
	addb	#-104	;  tmp44,
	asl	10,s	;  y0
	asl	10,s	;  y0
	asl	10,s	;  y0
	addb	10,s	;  tmp44, y0
	stb	_lineY0,y	;  tmp44, lineY0
;----- asm -----
;  300 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	lineX1[lineCount] = x3d(x1, 0, y1);
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	12,s	; , y1
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp51
	ldb	11,s	; , x1
	addb	#-2	; ,
	stb	11,s	; , x1
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,u	; , tmp53
	ldb	11,s	; , x1
	addb	#2	; ,
	stb	11,s	; , x1
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp51,
	stb	,s	; ,
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp53, tmp55
	addb	,s	;  tmp55,
	stb	_lineX1,y	;  tmp55, lineX1
;----- asm -----
;  302 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	lineY1[lineCount] = y3d(x1, 0, y1);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	11,s	;  tmp60, x1
	aslb	;  tmp60
	addb	11,s	;  tmp60, x1
	addb	#-104	;  tmp60,
	asl	12,s	;  y1
	asl	12,s	;  y1
	asl	12,s	;  y1
	addb	12,s	;  tmp60, y1
	stb	_lineY1,y	;  tmp60, lineY1
;----- asm -----
;  304 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[270]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , lineCount.8
	incb	; 
	stb	_lineCount	; , lineCount
	leas	4,s	; ,,
	puls	y,u,pc	; 
	.globl _addTarget
_addTarget:
	pshs	u	; 
	leas	-13,s	; ,,
	stb	1,s	;  x, x
;----- asm -----
;  310 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	lineX0[lineCount] = x3d(x, 0, y);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	2,s	; , lineCount.10
;----- asm -----
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , x
	addb	#-2	; ,
	stb	1,s	; , x
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp42
	ldb	1,s	; , x
	addb	#2	; ,
	stb	1,s	; , x
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp42,
	stb	7,s	; , D.2801
	ldb	17,s	; , y
	lda	#-6	;mulqihi3	; 
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	; , tmp43
; ORG>	tfr	d,x	; , tmp43
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp43,
	stb	6,s	; , D.2802
	ldb	2,s	; , lineCount.10
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.10
	ldb	6,s	; , D.2802
	addb	7,s	; , D.2801
	stb	_lineX0,x	; , lineX0
;----- asm -----
;  312 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	lineY0[lineCount] = y3d(x, 0, y);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , x
	aslb	; 
	addb	1,s	; , x
	addb	#-104	; ,
	stb	9,s	; , D.2810
	ldb	17,s	; , y
	aslb	; 
	aslb	; 
	aslb	; 
	stb	8,s	; , D.2811
	addb	9,s	; , D.2810
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[277]	lineX1[lineCount] = x3d(x + 1, 0, y + 1);
;  0 "" 2
;--- end asm ---
	ldb	17,s	; , y
	incb	; 
	stb	3,s	; , D.2436
	ldb	1,s	; , x
	incb	; 
	stb	4,s	; , D.2437
;----- asm -----
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	dec	1,s	;  x
	ldb	1,s	; , x
	lda	#14	;mulqihi3	; 
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,u	; , tmp54
; ORG>	tfr	d,u	; , tmp54
; ORG>	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp54,
	stb	11,s	; , D.2817
	ldb	3,s	; , D.2436
	lda	#-6	;mulqihi3	; 
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,u	; , tmp55
; ORG>	tfr	d,u	; , tmp55
; ORG>	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp55,
	stb	10,s	; , D.2818
	addb	11,s	; , D.2817
	stb	_lineX1,x	; , lineX1
;----- asm -----
;  316 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[278]	lineY1[lineCount] = y3d(x + 1, 0, y + 1);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , D.2437
	aslb	; 
	addb	4,s	; , D.2437
	addb	#-104	; ,
	stb	,s	; , D.2826
	ldb	3,s	; , D.2436
	aslb	; 
	aslb	; 
	aslb	; 
	stb	12,s	; , D.2827
	ldb	,s	; , D.2826
	addb	12,s	; , D.2827
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  318 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[279]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , lineCount.10
	incb	; 
	stb	5,s	; , lineCount.11
;----- asm -----
;  320 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[280]	lineX0[lineCount] = x3d(x + 1, 0, y);
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.11
	ldb	11,s	; , D.2817
	addb	6,s	; , D.2802
	stb	_lineX0,x	; , lineX0
;----- asm -----
;  322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	lineY0[lineCount] = y3d(x + 1, 0, y);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	,s	; , D.2826
	addb	8,s	; , D.2811
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[282]	lineX1[lineCount] = x3d(x, 0, y + 1);
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	10,s	; , D.2818
	addb	7,s	; , D.2801
	stb	_lineX1,x	; , lineX1
;----- asm -----
;  326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[283]	lineY1[lineCount] = y3d(x, 0, y + 1);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	12,s	; , D.2827
	addb	9,s	; , D.2810
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  328 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[284]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , lineCount.11
	incb	; 
	stb	_lineCount	; , lineCount
	leas	13,s	; ,,
	puls	u,pc	; 
	.globl _changeMusic
_changeMusic:
;----- asm -----
;  452 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[367]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  454 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[368]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	stx	_currentMusic	;  music, currentMusic
	rts
	.globl _drawField
_drawField:
	leas	-1,s	; ,,
;----- asm -----
;  719 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[513]	intens(0x55);
;  0 "" 2
;--- end asm ---
	ldb	#85	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  734 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		pshs a, b, dp, x, u
;  0 "" 2
;  735 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		lda #0xd0
;  0 "" 2
;  736 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		tfr a, dp
;  0 "" 2
;  737 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		ldx #0
;  0 "" 2
;  738 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		ldb _lineCount
;  0 "" 2
;  739 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	drawFieldLoop:
;  0 "" 2
;  740 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		pshs b
;  0 "" 2
;  741 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  742 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		jsr 0xf354
;  0 "" 2
;  743 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  744 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		lda _lineY0,x
;  0 "" 2
;  745 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		ldb _lineX0,x
;  0 "" 2
;  746 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  747 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		jsr 0xf2fc
;  0 "" 2
;  748 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  749 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		lda _lineY1,x
;  0 "" 2
;  750 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		ldb _lineX1,x
;  0 "" 2
;  751 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		suba _lineY0,x
;  0 "" 2
;  752 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		subb _lineX0,x
;  0 "" 2
;  753 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  754 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		jsr 0xf3df
;  0 "" 2
;  755 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  756 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		lda ,x+
;  0 "" 2
;  757 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		puls b
;  0 "" 2
;  758 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		decb
;  0 "" 2
;  759 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		bne drawFieldLoop
;  0 "" 2
;  760 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
		puls a, b, dp, x, u
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
	rts
	.globl _drawBlock
_drawBlock:
	pshs	u	; 
	leas	-11,s	; ,,
	stb	5,s	;  yofs, yofs
;----- asm -----
;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[559]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[560]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	9,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[561]	positd(0, yofs);
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , yofs
	stb	10,s	; , a
	clr	9,s	;  b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 10,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	6,s	; , blockX.40
;----- asm -----
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
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
	tfr	d,u	; , tmp36
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp37
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp36,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp37, tmp39
	addb	3,s	;  tmp39,
	stb	10,s	;  tmp39, b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 10,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp43, tmp42,
	ldx	,x	; ,
; Applied peep: 2 (no load after store)
;----- asm -----
;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	; , x
; ORG>	stx	7,s	; , x
; ORG>;----- asm -----
; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp_7F; BIOS call
;  0 "" 2
;--- end asm ---
	leas	11,s	; ,,
	puls	u,pc	; 
	.globl _doBlockAnimation
_doBlockAnimation:
;----- asm -----
;  834 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[603]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	beq	L32	; 
;----- asm -----
;  836 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[604]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
	beq	L33	; 
L32:
	rts
L33:
;----- asm -----
;  838 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[605]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  840 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[606]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  842 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[607]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  844 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[608]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  846 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[609]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
	rts
	.globl _sendCommand
_sendCommand:
	leas	-2,s	; ,,
	stb	,s	;  cmd, cmd
;----- asm -----
;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	uint8_t result;
;  0 "" 2
;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , cmd
	jsr	_picWrite	; 
;----- asm -----
;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[200]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , arg
	jsr	_picWrite	; 
;----- asm -----
;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[201]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	1,s	; , result
;----- asm -----
;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[202]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[203]	return result;
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
;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[241]	itoa(moveCount, &infoText[0]);
;  0 "" 2
;--- end asm ---
	ldu	_moveCount	;  number, moveCount
;----- asm -----
;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	18,s	; , muls
	ldd	#10	; ,
	std	20,s	; , muls
	ldd	#1	; ,
	std	22,s	; , muls
;----- asm -----
;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number, number.280
	cmpu	#999	;cmphi:	;  number,
	bls	L37	; 
	ldx	#999	; ,
	stx	,s	; , number.280
L37:
;----- asm -----
;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	18,s	; ,,
	stx	13,s	; , ivtmp.272
	ldx	#_infoText	; ,
	stx	15,s	; , ivtmp.274
	ldx	13,s	; , ivtmp.272
L41:
;----- asm -----
;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[230]		uint8_t d = 0;
;  0 "" 2
;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[231]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.3241, muls
	ldb	#48	; ,
	stb	17,s	; , prephitmp.278
	cmpu	,s	;cmphi:	;  D.3241, number.280
	bhi	L39	; 
	tfr	u,d	;  D.3241,
	nega
	negb
	sbca	#0
	std	11,s	; , ivtmp.263
	ldd	,s	; , number.280
	pshs	u	;subhi: R:d -= R:u	;  D.3241,
	subd	,s++	; 
	std	,s	; , number.280
	clr	2,s	;  d
L40:
;----- asm -----
;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[232]			d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[233]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.282, number.280
	tfr	y,d	; ,
	addd	11,s	; , ivtmp.263
	std	,s	; , number.280
	leax	d,u	;  tmp75,, D.3241
	pshs	u	;cmphi: R:u with R:x	;  D.3241, tmp75
	cmpx	,s++	;cmphi:	;  tmp75
	bhs	L40	; 
	sty	,s	;  number.282, number.280
	ldb	2,s	; , d
	addb	#48	; ,
	stb	17,s	; , prephitmp.278
L39:
;----- asm -----
;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[235]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	15,s	; , ivtmp.274
	leax	1,x	; ,,
	stx	15,s	; , ivtmp.274
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	13,s	; , ivtmp.272
	leax	2,x	; ,,
	stx	13,s	; , ivtmp.272
	tfr	s,d	; ,
	addd	#24	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L41	; 
;----- asm -----
;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[242]	itoa(levelHighscore, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	_levelHighscore	;  number, levelHighscore
;----- asm -----
;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	18,s	; , muls
	ldd	#10	; ,
	std	20,s	; , muls
	ldd	#1	; ,
	std	22,s	; , muls
;----- asm -----
;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number, number.276
	cmpu	#999	;cmphi:	;  number,
	bls	L42	; 
	ldx	#999	; ,
	stx	,s	; , number.276
L42:
;----- asm -----
;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	18,s	; ,,
	stx	7,s	; , ivtmp.256
	ldx	#_infoText+6	; ,
	stx	9,s	; , ivtmp.258
	ldx	7,s	; , ivtmp.256
L46:
;----- asm -----
;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[230]		uint8_t d = 0;
;  0 "" 2
;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[231]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.3250, muls
	ldb	#48	; ,
	stb	4,s	; , prephitmp.235
	cmpu	,s	;cmphi:	;  D.3250, number.276
	bhi	L44	; 
	tfr	u,d	;  D.3250,
	nega
	negb
	sbca	#0
	std	5,s	; , ivtmp.247
	ldd	,s	; , number.276
	pshs	u	;subhi: R:d -= R:u	;  D.3250,
	subd	,s++	; 
	std	,s	; , number.276
	clr	3,s	;  d
L45:
;----- asm -----
;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[232]			d++;
;  0 "" 2
;--- end asm ---
	inc	3,s	;  d
;----- asm -----
;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[233]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.283, number.276
	tfr	y,d	; ,
	addd	5,s	; , ivtmp.247
	std	,s	; , number.276
	leax	d,u	;  tmp81,, D.3250
	pshs	u	;cmphi: R:u with R:x	;  D.3250, tmp81
	cmpx	,s++	;cmphi:	;  tmp81
	bhs	L45	; 
	sty	,s	;  number.283, number.276
	ldb	3,s	; , d
	addb	#48	; ,
	stb	4,s	; , prephitmp.235
L44:
;----- asm -----
;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[235]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	9,s	; , ivtmp.258
	leax	1,x	; ,,
	stx	9,s	; , ivtmp.258
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	7,s	; , ivtmp.256
	leax	2,x	; ,,
	stx	7,s	; , ivtmp.256
	tfr	s,d	; ,
	addd	#24	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L46	; 
	leas	24,s	; ,,
	puls	y,u,pc	; 
	.globl _setupY
_setupY:
	pshs	y,u	; 
	leas	-12,s	; ,,
;----- asm -----
;  407 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[338]	unsigned long int index;
;  0 "" 2
;  409 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[339]	int8_t x = 0;
;  0 "" 2
;  411 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[340]	int8_t y = 0;
;  0 "" 2
;  413 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[341]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
;  0 "" 2
;--- end asm ---
	ldy	_level	;  ivtmp.321, level
	clr	4,s	;  x
	ldb	4,s	; , x
L59:
;----- asm -----
;  415 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[342]		int8_t y0 = -1;
;  0 "" 2
;  417 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[343]		int8_t y1 = -1;
;  0 "" 2
;  419 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[344]		for (y = 0; y < LEVEL_HEIGHT; y++) {
;  0 "" 2
;--- end asm ---
	lda	#14	;umulqihi3	; 
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	; , tmp84
; ORG>	tfr	d,x	; , tmp84
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp84,
	addb	#-14	; ,
	stb	10,s	; , D.3363
	ldb	4,s	; , x
	aslb	; 
	addb	4,s	; , x
	addb	#-101	; ,
	stb	11,s	; , D.3366
	leau	,y	;  ivtmp.322, ivtmp.321
	clr	5,s	;  y
	ldb	#-1	; ,
	stb	6,s	; , y0
	stb	7,s	; , y1
	jmp	L58	; 
L69:
	cmpb	#97	;cmpqi:	; ,
	lbeq	L53	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L53	; 
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , c1
	cmpb	#46	;cmpqi:	; ,
	lbeq	L53	; 
	cmpb	#97	;cmpqi:	; ,
	lbeq	L53	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L53	; 
;----- asm -----
;  438 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[356]				if (y0 >= 0) {
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , y0
	cmpb	#-1	;cmpqi:	; ,
	lbeq	L57	; 
;----- asm -----
;  440 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[357]					addLine(x + 1, y0, x + 1, y1 + 1);
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , y1
	incb	; 
	stb	3,s	; , D.2499
;----- asm -----
;  296 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[266]	lineX0[lineCount] = x3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	9,s	; , lineCount.8
;----- asm -----
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.8
	ldb	6,s	; , y0
	lda	#-6	;mulqihi3	; 
	mul
		;movlsbqihi: D->B
	addb	10,s	;  tmp93, D.3363
	stb	_lineX0,x	;  tmp93, lineX0
;----- asm -----
;  298 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[267]	lineY0[lineCount] = y3d(x0, 0, y0);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	asl	6,s	;  y0
	asl	6,s	;  y0
	asl	6,s	;  y0
	ldb	6,s	; , y0
	addb	11,s	; , D.3366
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  300 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	lineX1[lineCount] = x3d(x1, 0, y1);
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , D.2499
	lda	#-6	;mulqihi3	; 
	mul
	std	,s	; ,
		;movlsbqihi: D->B
	addb	10,s	;  tmp102, D.3363
	stb	_lineX1,x	;  tmp102, lineX1
;----- asm -----
;  302 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	lineY1[lineCount] = y3d(x1, 0, y1);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	asl	3,s	;  D.2499
	asl	3,s	;  D.2499
	asl	3,s	;  D.2499
	ldb	3,s	; , D.2499
	addb	11,s	; , D.3366
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  304 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[270]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , lineCount.8
	incb	; 
	stb	_lineCount	; , lineCount
;----- asm -----
;  442 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[358]					y0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	6,s	; , y0
L57:
	inc	5,s	;  y
	leau	12,u	;  ivtmp.322,, ivtmp.322
	ldb	5,s	; , y
	cmpb	#17	;cmpqi:	; ,
	lbeq	L68	; 
L58:
;----- asm -----
;  425 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[349]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
;  0 "" 2
;  427 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[350]			char c0 = level[index];
;  0 "" 2
;--- end asm ---
	ldb	,u	; ,* ivtmp.322
	stb	2,s	; , c0
;----- asm -----
;  429 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[351]			char c1 = level[index+1];
;  0 "" 2
;--- end asm ---
	ldb	1,u	; ,
	stb	8,s	; , c1
;----- asm -----
;  431 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[352]			if (isField(c0) || isField(c1)) {
;  0 "" 2
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , c0
	cmpb	#46	;cmpqi:	; ,
	lbne	L69	; 
L53:
;----- asm -----
;  433 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[353]				if (y0 < 0) y0 = y;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , y0
	cmpb	#-1	;cmpqi:	; ,
	beq	L70	; 
L56:
;----- asm -----
;  435 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[354]				y1 = y;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , y
	stb	7,s	; , y1
	inc	5,s	;  y
	leau	12,u	;  ivtmp.322,, ivtmp.322
	ldb	5,s	; , y
	cmpb	#17	;cmpqi:	; ,
	lbne	L58	; 
L68:
	inc	4,s	;  x
	leay	1,y	;  ivtmp.321,, ivtmp.321
	ldb	4,s	; , x
	cmpb	#11	;cmpqi:	; ,
	lbne	L59	; 
	leas	12,s	; ,,
	puls	y,u,pc	; 
L70:
	ldb	5,s	; , y
	stb	6,s	; , y0
	bra	L56	; 
	.globl _moveBlock
_moveBlock:
	pshs	y,u	; 
	leas	-25,s	; ,,
	stb	2,s	;  move, move
;----- asm -----
;  460 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[373]	blockAnimating = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockAnimating	; , blockAnimating
;----- asm -----
;  462 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[374]	lastBlockDirection = move;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	stb	_lastBlockDirection	; , lastBlockDirection
;----- asm -----
;  464 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[375]	switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	lbeq	L74	; 
	lblo	L73	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbeq	L107	; 
L72:
;----- asm -----
;  648 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[469]	if (moveCount < 999) moveCount++;
;  0 "" 2
;--- end asm ---
	ldu	_moveCount	;  number, moveCount
	cmpu	#998	;cmphi:	;  number,
	bhi	L91	; 
	leau	1,u	;  number,, number
	stu	_moveCount	;  number, moveCount
L91:
;----- asm -----
;  650 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[470]	updateInfoText();
;  0 "" 2
;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[241]	itoa(moveCount, &infoText[0]);
;  0 "" 2
;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	19,s	; , muls
	ldd	#10	; ,
	std	21,s	; , muls
	ldd	#1	; ,
	std	23,s	; , muls
;----- asm -----
;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number, number.406
	cmpu	#999	;cmphi:	;  number,
	bls	L92	; 
	ldx	#999	; ,
	stx	,s	; , number.406
L92:
;----- asm -----
;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	19,s	; ,,
	stx	14,s	; , ivtmp.373
	ldx	#_infoText	; ,
	stx	16,s	; , ivtmp.375
	ldx	14,s	; , ivtmp.373
L96:
;----- asm -----
;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[230]		uint8_t d = 0;
;  0 "" 2
;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[231]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.3428, muls
	ldb	#48	; ,
	stb	18,s	; , prephitmp.404
	cmpu	,s	;cmphi:(R)	;  D.3428, number.406
	bhi	L94	; 
	tfr	u,d	;  D.3428,
	nega
	negb
	sbca	#0
	std	12,s	; , ivtmp.366
	ldd	,s	; , number.406
	pshs	u	;subhi: R:d -= R:u	;  D.3428,
	subd	,s++	; 
	std	,s	; , number.406
	clr	3,s	;  d
L95:
;----- asm -----
;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[232]			d++;
;  0 "" 2
;--- end asm ---
	inc	3,s	;  d
;----- asm -----
;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[233]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.409, number.406
	tfr	y,d	; ,
	addd	12,s	; , ivtmp.366
	std	,s	; , number.406
	leax	d,u	;  tmp102,, D.3428
	pshs	u	;cmphi: R:u with R:x	;  D.3428, tmp102
	cmpx	,s++	;cmphi:	;  tmp102
	bhs	L95	; 
	sty	,s	;  number.409, number.406
	ldb	3,s	; , d
	addb	#48	; ,
	stb	18,s	; , prephitmp.404
L94:
;----- asm -----
;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[235]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	16,s	; , ivtmp.375
	leax	1,x	; ,,
	stx	16,s	; , ivtmp.375
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	14,s	; , ivtmp.373
	leax	2,x	; ,,
	stx	14,s	; , ivtmp.373
	tfr	s,d	; ,
	addd	#25	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L96	; 
;----- asm -----
;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[242]	itoa(levelHighscore, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	_levelHighscore	;  number, levelHighscore
;----- asm -----
;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	19,s	; , muls
	ldd	#10	; ,
	std	21,s	; , muls
	ldd	#1	; ,
	std	23,s	; , muls
;----- asm -----
;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number, number.403
	cmpu	#999	;cmphi:	;  number,
	bls	L97	; 
	ldx	#999	; ,
	stx	,s	; , number.403
L97:
;----- asm -----
;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	19,s	; ,,
	stx	8,s	; , ivtmp.357
	ldx	#_infoText+6	; ,
	stx	10,s	; , ivtmp.359
	ldx	8,s	; , ivtmp.357
L101:
;----- asm -----
;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[230]		uint8_t d = 0;
;  0 "" 2
;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[231]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.3437, muls
	ldb	#48	; ,
	stb	5,s	; , prephitmp.336
	cmpu	,s	;cmphi:	;  D.3437, number.403
	bhi	L99	; 
	tfr	u,d	;  D.3437,
	nega
	negb
	sbca	#0
	std	6,s	; , ivtmp.348
	ldd	,s	; , number.403
	pshs	u	;subhi: R:d -= R:u	;  D.3437,
	subd	,s++	; 
	std	,s	; , number.403
	clr	4,s	;  d
L100:
;----- asm -----
;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[232]			d++;
;  0 "" 2
;--- end asm ---
	inc	4,s	;  d
;----- asm -----
;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[233]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.410, number.403
	tfr	y,d	; ,
	addd	6,s	; , ivtmp.348
	std	,s	; , number.403
	leax	d,u	;  tmp108,, D.3437
	pshs	x	;cmphi: R:x with R:u	;  tmp108, D.3437
	cmpu	,s++	;cmphi:	;  D.3437
	bls	L100	; 
	sty	,s	;  number.410, number.403
	ldb	4,s	; , d
	addb	#48	; ,
	stb	5,s	; , prephitmp.336
L99:
;----- asm -----
;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[235]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	10,s	; , ivtmp.359
	leax	1,x	; ,,
	stx	10,s	; , ivtmp.359
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	8,s	; , ivtmp.357
	leax	2,x	; ,,
	stx	8,s	; , ivtmp.357
	tfr	s,d	; ,
	addd	#25	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L101	; 
	leas	25,s	; ,,
	puls	y,u,pc	; 
L73:
;----- asm -----
;  468 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[377]		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L78	; 
	lbhs	L108	; 
;----- asm -----
;  472 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[379]			blockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  474 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[380]			nextBlockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  476 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[381]			nextBlockX = blockX - 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	addb	#-2	; ,
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  478 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[382]			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  480 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[383]			blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  482 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[384]			break;
;  0 "" 2
;--- end asm ---
L76:
;----- asm -----
;  527 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[407]		break;
;  0 "" 2
;--- end asm ---
	jmp	L72	; 
L107:
;----- asm -----
;  590 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[439]		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L88	; 
	lbhs	L109	; 
;----- asm -----
;  594 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[441]			blockAnimation = height2RisingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  596 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[442]			nextBlockAnimation = height2FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingRight	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  598 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[443]			nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  600 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[444]			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  602 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[445]			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  604 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[446]			break;
;  0 "" 2
;--- end asm ---
L86:
;----- asm -----
;  645 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[467]		break;
;  0 "" 2
;--- end asm ---
	jmp	L72	; 
L74:
;----- asm -----
;  531 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[409]		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	cmpb	#1	;cmpqi:	; ,
	beq	L83	; 
	lbhs	L110	; 
;----- asm -----
;  535 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[411]			blockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  537 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[412]			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  539 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[413]			nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  541 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[414]			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  543 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[415]			break;
;  0 "" 2
;--- end asm ---
L81:
;----- asm -----
;  586 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[437]		break;
;  0 "" 2
;--- end asm ---
	jmp	L72	; 
L83:
;----- asm -----
;  559 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[423]			blockAnimation = height2RisingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  561 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[424]			nextBlockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  563 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[425]			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  565 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[426]			nextBlockY = blockY + 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	addb	#2	; ,
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  567 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[427]			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  569 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[428]			break;
;  0 "" 2
;--- end asm ---
	bra	L81	; 
L88:
;----- asm -----
;  622 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[455]			blockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  624 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[456]			nextBlockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  626 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[457]			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  628 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[458]			nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  630 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[459]			break;
;  0 "" 2
;--- end asm ---
	jmp	L86	; 
L78:
;----- asm -----
;  500 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[393]			blockAnimation = height2FallingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  502 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[394]			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  504 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[395]			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  506 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[396]			nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  508 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[397]			blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  510 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[398]			break;
;  0 "" 2
;--- end asm ---
	jmp	L76	; 
L109:
	cmpb	#2	;cmpqi:	; ,
	lbeq	L89	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L86	; 
;----- asm -----
;  634 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[461]			blockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  636 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[462]			nextBlockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingBack	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  638 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[463]			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  640 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[464]			nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  642 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[465]			break;
;  0 "" 2
;--- end asm ---
	jmp	L86	; 
L108:
	cmpb	#2	;cmpqi:	; ,
	lbeq	L79	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L76	; 
;----- asm -----
;  514 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[400]			blockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  516 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[401]			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  518 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[402]			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  520 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[403]			nextBlockY = blockY - 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	addb	#-2	; ,
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  522 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[404]			blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  524 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[405]			break;
;  0 "" 2
;--- end asm ---
	jmp	L76	; 
L110:
	cmpb	#2	;cmpqi:	; ,
	beq	L84	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L81	; 
;----- asm -----
;  573 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[430]			blockAnimation = height2RisingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  575 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[431]			nextBlockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  577 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[432]			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  579 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[433]			nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  581 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[434]			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  583 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[435]			break;
;  0 "" 2
;--- end asm ---
	jmp	L81	; 
L84:
;----- asm -----
;  547 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[417]			blockAnimation = depth2RollingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  549 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[418]			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  551 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[419]			nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  553 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[420]			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  555 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[421]			break;
;  0 "" 2
;--- end asm ---
	jmp	L81	; 
L79:
;----- asm -----
;  486 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[386]			blockAnimation = height2FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  488 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[387]			nextBlockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  490 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[388]			nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  492 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[389]			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  494 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[390]			blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , move
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  496 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[391]			break;
;  0 "" 2
;--- end asm ---
	jmp	L76	; 
L89:
;----- asm -----
;  608 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[448]			blockAnimation = height2RisingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  610 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[449]			nextBlockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  612 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[450]			nextBlockX = blockX + 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	addb	#2	; ,
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  614 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[451]			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  616 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[452]			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  618 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[453]			break;
;  0 "" 2
;--- end asm ---
	jmp	L86	; 
	.globl _startBlockFalling
_startBlockFalling:
;----- asm -----
;  656 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[475]	gameState = BlockFalling;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  658 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[476]	blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  660 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[477]	moveBlock(lastBlockDirection);
;  0 "" 2
;--- end asm ---
	ldb	_lastBlockDirection	; , lastBlockDirection
	jsr	_moveBlock	; 
;----- asm -----
;  662 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[478]	changeMusic(fallingMusic);
;  0 "" 2
;  452 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[367]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  454 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[368]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_fallingMusic	; ,
	stx	_currentMusic	; , currentMusic
	rts
	.globl _setupX
_setupX:
	pshs	y,u	; 
	leas	-22,s	; ,,
;----- asm -----
;  344 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[299]	unsigned long int index;
;  0 "" 2
;  346 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[300]	int8_t x = 0;
;  0 "" 2
;  348 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[301]	int8_t y = 0;
;  0 "" 2
;  350 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[302]	for (y = 0; y < LEVEL_HEIGHT - 1; y++) {
;  0 "" 2
;--- end asm ---
	ldx	_level	; , level
	stx	20,s	; , ivtmp.471
	clr	8,s	;  y
	clr	19,s	;  ivtmp.467
L122:
;----- asm -----
;  352 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[303]		int8_t x0 = -1;
;  0 "" 2
;  354 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[304]		int8_t x1 = -1;
;  0 "" 2
;  356 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[305]		for (x = 0; x < LEVEL_WIDTH; x++) {
;  0 "" 2
;--- end asm ---
	ldb	19,s	; , ivtmp.467
	addb	#-6	; ,
	stb	4,s	; ,
	ldb	8,s	; , y
	addb	#20	; ,
	stb	8,s	; , y
	aslb	; 
	aslb	; 
	aslb	; 
	stb	15,s	; , D.3630
	ldb	8,s	; , y
	addb	#-20	; ,
	stb	8,s	; , y
	ldb	19,s	; , ivtmp.467
	addb	#-20	; ,
	stb	16,s	; , ivtmp.452
	ldy	20,s	;  ivtmp.475, ivtmp.471
	ldb	#-1	; ,
	stb	9,s	; , x0
	stb	10,s	; , x1
	ldu	#0	;  ivtmp.439,
	ldb	8,s	; , y
	incb	; 
	stb	3,s	; ,
	jmp	L121	; 
L115:
;----- asm -----
;  381 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[320]			index += LEVEL_WIDTH;
;  0 "" 2
;  383 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[321]			char c1 = level[index];
;  0 "" 2
;--- end asm ---
	ldb	12,y	; ,
	stb	2,s	; , c1
;----- asm -----
;  385 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[322]			if (isField(c0) || isField(c1)) {
;  0 "" 2
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	11,s	; , c0
	cmpb	#46	;cmpqi:	; ,
	lbeq	L116	; 
	cmpb	#97	;cmpqi:	; ,
	lbeq	L116	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L116	; 
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , c1
	cmpb	#46	;cmpqi:	; ,
	lbeq	L116	; 
	cmpb	#97	;cmpqi:	; ,
	lbeq	L116	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L116	; 
;----- asm -----
;  392 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[326]				if (x0 >= 0) {
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , x0
	cmpb	#-1	;cmpqi:	; ,
	lbeq	L120	; 
;----- asm -----
;  394 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[327]					addLine(x0, y + 1, x1 + 1, y + 1);
;  0 "" 2
;--- end asm ---
	ldb	10,s	; , x1
	incb	; 
	stb	6,s	; , D.2471
;----- asm -----
;  296 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[266]	lineX0[lineCount] = x3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	14,s	; , lineCount.8
;----- asm -----
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.8
	ldb	9,s	; , x0
	addb	#-2	; ,
	stb	9,s	; , x0
	lda	#14	;mulqihi3	; 
	mul
	std	,s	; ,
	ldb	9,s	; , x0
	addb	#2	; ,
	stb	9,s	; , x0
	ldb	1,s	;movlsbqihi: msb:,s -> R:b	;  tmp329,
	addb	4,s	;  tmp329,
	stb	_lineX0,x	;  tmp329, lineX0
;----- asm -----
;  298 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[267]	lineY0[lineCount] = y3d(x0, 0, y0);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	9,s	;  tmp334, x0
	aslb	;  tmp334
	addb	9,s	;  tmp334, x0
	addb	15,s	;  tmp334, D.3630
	stb	_lineY0,x	;  tmp334, lineY0
;----- asm -----
;  300 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	lineX1[lineCount] = x3d(x1, 0, y1);
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	dec	10,s	;  x1
	ldb	10,s	; , x1
	lda	#14	;mulqihi3	; 
	mul
	std	,s	; ,
	inc	10,s	;  x1
		;movlsbqihi: D->B
	addb	4,s	;  tmp341,
	stb	_lineX1,x	;  tmp341, lineX1
;----- asm -----
;  302 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	lineY1[lineCount] = y3d(x1, 0, y1);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	6,s	;  tmp346, D.2471
	aslb	;  tmp346
	addb	6,s	;  tmp346, D.2471
	addb	15,s	;  tmp346, D.3630
	stb	_lineY1,x	;  tmp346, lineY1
;----- asm -----
;  304 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[270]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	14,s	; , lineCount.8
	incb	; 
	stb	_lineCount	; , lineCount
;----- asm -----
;  396 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[328]					x0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	9,s	; , x0
L120:
	leau	1,u	;  ivtmp.439,, ivtmp.439
	leay	1,y	;  ivtmp.475,, ivtmp.475
	ldb	16,s	; , ivtmp.452
	addb	#14	; ,
	stb	16,s	; , ivtmp.452
	cmpu	#12	;cmphi:	;  ivtmp.439,
	lbeq	L131	; 
L121:
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  ivtmp.439,
	stb	7,s	; , x
;----- asm -----
;  359 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[307]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
;  0 "" 2
;  361 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[308]			char c0 = level[index];
;  0 "" 2
;--- end asm ---
	ldb	,y	; ,* ivtmp.475
	stb	11,s	; , c0
;----- asm -----
;  364 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[310]			if (c0 == 'o') {
;  0 "" 2
;--- end asm ---
	cmpb	#111	;cmpqi:	; ,
	beq	L132	; 
L114:
;----- asm -----
;  373 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[315]			if (c0 == 'a') {
;  0 "" 2
;--- end asm ---
	cmpb	#97	;cmpqi:	; ,
	lbne	L115	; 
;----- asm -----
;  375 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[316]				startX = x;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , x
	stb	_startX	; , startX
;----- asm -----
;  377 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[317]				startY = y;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , y
	stb	_startY	; , startY
	jmp	L115	; 
L116:
;----- asm -----
;  387 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[323]				if (x0 < 0) x0 = x;
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , x0
	cmpb	#-1	;cmpqi:	; ,
	beq	L133	; 
L119:
;----- asm -----
;  389 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[324]				x1 = x;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , x
	stb	10,s	; , x1
	jmp	L120	; 
L133:
	ldb	7,s	; , x
	stb	9,s	; , x0
	bra	L119	; 
L132:
;----- asm -----
;  366 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[311]				addTarget(x, y);
;  0 "" 2
;  310 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[275]	lineX0[lineCount] = x3d(x, 0, y);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	12,s	; , lineCount.10
;----- asm -----
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , x
	lda	#14	;umulqihi3	; 
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	; , tmp289
; ORG>	tfr	d,x	; , tmp289
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp289,
	stb	17,s	; , D.3679
	ldb	12,s	; , lineCount.10
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.10
	ldb	19,s	; , ivtmp.467
	addb	#-28	; ,
	stb	19,s	; , ivtmp.467
	addb	17,s	; , D.3679
	stb	_lineX0,x	; , lineX0
;----- asm -----
;  312 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[276]	lineY0[lineCount] = y3d(x, 0, y);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , x
	aslb	; 
	addb	7,s	; , x
	stb	5,s	; ,
	ldb	8,s	; , y
	aslb	; 
	aslb	; 
	aslb	; 
	addb	#-104	; ,
	stb	18,s	; , D.3685
	addb	5,s	; ,
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[277]	lineX1[lineCount] = x3d(x + 1, 0, y + 1);
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	16,s	; , ivtmp.452
	stb	_lineX1,x	; , lineX1
;----- asm -----
;  316 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[278]	lineY1[lineCount] = y3d(x + 1, 0, y + 1);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; ,
	aslb	; 
	aslb	; 
	aslb	; 
	addb	#-101	; ,
	stb	2,s	; , D.3690
	addb	5,s	; ,
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  318 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[279]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	12,s	; , lineCount.10
	incb	; 
	stb	13,s	; , lineCount.11
;----- asm -----
;  320 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[280]	lineX0[lineCount] = x3d(x + 1, 0, y);
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.11
	ldb	19,s	; , ivtmp.467
	addb	#14	; ,
	stb	19,s	; , ivtmp.467
	ldb	17,s	; , D.3679
	addb	19,s	; , ivtmp.467
	stb	_lineX0,x	; , lineX0
	ldb	19,s	; , ivtmp.467
	addb	#14	; ,
	stb	19,s	; , ivtmp.467
;----- asm -----
;  322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[281]	lineY0[lineCount] = y3d(x + 1, 0, y);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	18,s	; , D.3685
	addb	#3	; ,
	stb	18,s	; , D.3685
	ldb	5,s	; ,
	addb	18,s	; , D.3685
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[282]	lineX1[lineCount] = x3d(x, 0, y + 1);
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	16,s	; , ivtmp.452
	addb	#-14	; ,
	stb	_lineX1,x	; , lineX1
;----- asm -----
;  326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[283]	lineY1[lineCount] = y3d(x, 0, y + 1);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , D.3690
	addb	#-3	; ,
	addb	5,s	; ,
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  328 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[284]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	13,s	; , lineCount.11
	incb	; 
	stb	_lineCount	; , lineCount
;----- asm -----
;  368 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[312]				endX = x;
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  ivtmp.439,
	stb	_endX	;movlsbqihi: R:d -> _endX	;  endX,
;----- asm -----
;  370 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[313]				endY = y;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , y
	stb	_endY	; , endY
	ldb	11,s	; , c0
	jmp	L114	; 
L131:
	ldb	3,s	; ,
	stb	8,s	; , y
	ldb	4,s	; ,
	stb	19,s	; , ivtmp.467
	ldd	20,s	; , ivtmp.471
	addd	#12	; ,
	std	20,s	; , ivtmp.471
	ldb	8,s	; , y
	cmpb	#16	;cmpqi:	; ,
	lbne	L122	; 
	leas	22,s	; ,,
	puls	y,u,pc	; 
	.globl _blockMoving
_blockMoving:
	pshs	u	; 
	leas	-16,s	; ,,
;----- asm -----
;  854 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[616]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  856 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[617]	drawBlock(0);
;  0 "" 2
;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[559]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[560]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[561]	positd(0, yofs);
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	clr	15,s	;  a
	clr	14,s	;  b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 15,s	;  a
	ldb 14,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	9,s	; , blockX.40
;----- asm -----
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
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
	tfr	d,u	; , tmp44
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp45
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp44,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp45, tmp47
	addb	3,s	;  tmp47,
	stb	15,s	;  tmp47, b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 15,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp51, tmp50,
	ldx	,x	; ,
; Applied peep: 2 (no load after store)
;----- asm -----
;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	12,s	; , x
; ORG>	stx	12,s	; , x
; ORG>;----- asm -----
; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 12,s	;  x
	jsr ___Draw_VLp_7F; BIOS call
;  0 "" 2
;  858 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[618]	doBlockAnimation();
;  0 "" 2
;  834 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[603]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	beq	L135	; 
;----- asm -----
;  836 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[604]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
	lbeq	L157	; 
L135:
;----- asm -----
;  860 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[619]	if (!blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbne	L156	; 
;----- asm -----
;  866 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[624]		unsigned long int index = (unsigned long int )blockY * LEVEL_WIDTH + (unsigned long int)blockX;
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
;  868 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[625]		char c0 = isField(level[index]);
;  0 "" 2
;--- end asm ---
	exg	d,x	; , tmp64
	addd	_level	; , level
	exg	d,x	; , tmp64
	ldb	,x	;  D.2622,
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  D.2622,
	lbeq	L137	; 
	cmpb	#97	;cmpqi:	;  D.2622,
	lbeq	L137	; 
	eorb	#111	;  D.2622,
	clra		;zero_extendqihi: R:b -> R:d	;  D.2622, tmp66
	addd	#-1	;  tmp67,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	stb	11,s	; , prephitmp.490
L139:
;----- asm -----
;  870 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[626]		char c1 = isField(level[index+1]);
;  0 "" 2
;--- end asm ---
	ldb	1,x	;  D.2626,
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  D.2626,
	lbeq	L140	; 
	cmpb	#97	;cmpqi:	;  D.2626,
	lbeq	L140	; 
	eorb	#111	;  D.2626,
	clra		;zero_extendqihi: R:b -> R:d	;  D.2626, tmp70
	addd	#-1	;  tmp71,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	stb	6,s	; , iftmp.7
L142:
;----- asm -----
;  872 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[627]		char c2 = isField(level[index + LEVEL_WIDTH]);
;  0 "" 2
;--- end asm ---
	ldb	12,x	;  D.2630,
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	cmpb	#46	;cmpqi:	;  D.2630,
	beq	L143	; 
	cmpb	#97	;cmpqi:	;  D.2630,
	beq	L143	; 
	eorb	#111	;  D.2630,
	clra		;zero_extendqihi: R:b -> R:d	;  D.2630, tmp74
	addd	#-1	;  tmp75,
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	rolb	; 
	rolb	; 
	andb	#1	; ,
	stb	8,s	; , iftmp.7
;----- asm -----
;  874 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[628]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L148	; 
L160:
	cmpb	#1	;cmpqi:	;  blockOrientation,
	lblo	L147	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbeq	L158	; 
L146:
;----- asm -----
;  906 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[647]		if (blockOrientation == Standing && blockX == endX && blockY == endY) {
;  0 "" 2
;--- end asm ---
	tst	_blockOrientation	;  blockOrientation
	bne	L155	; 
	ldb	_blockX	; , blockX
	cmpb	_endX	;cmpqi:	; , endX
	lbeq	L159	; 
L155:
;----- asm -----
;  916 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[653]			if (gameState != BlockFalling) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#3	;cmpqi:	; ,
	beq	L156	; 
;----- asm -----
;  918 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[654]				gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_gameState	; , gameState
L156:
	leas	16,s	; ,,
	puls	u,pc	; 
L137:
	ldb	#1	; ,
	stb	11,s	; , prephitmp.490
	jmp	L139	; 
L143:
	ldb	#1	; ,
	stb	8,s	; , iftmp.7
;----- asm -----
;  874 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[628]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	bne	L160	; 
L148:
;----- asm -----
;  887 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[635]			if (!c0 || !c2) {
;  0 "" 2
;--- end asm ---
	tst	11,s	;  prephitmp.490
	beq	L151	; 
	tst	8,s	;  iftmp.7
	bne	L152	; 
L151:
;----- asm -----
;  889 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[636]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L152:
;----- asm -----
;  892 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[638]			break;
;  0 "" 2
;--- end asm ---
	jmp	L146	; 
L140:
	ldb	#1	; ,
	stb	6,s	; , iftmp.7
	jmp	L142	; 
L147:
;----- asm -----
;  878 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[630]			if (!c0) {
;  0 "" 2
;--- end asm ---
	tst	11,s	;  prephitmp.490
	lbeq	L161	; 
L150:
;----- asm -----
;  883 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[633]			break;
;  0 "" 2
;--- end asm ---
	jmp	L146	; 
L157:
;----- asm -----
;  838 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[605]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  840 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[606]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  842 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[607]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  844 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[608]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  846 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[609]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
	jmp	L135	; 
L158:
;----- asm -----
;  896 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[640]			if (!c0 || ! c1) {
;  0 "" 2
;--- end asm ---
	tst	11,s	;  prephitmp.490
	beq	L153	; 
	tst	6,s	;  iftmp.7
	bne	L154	; 
L153:
;----- asm -----
;  898 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[641]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L154:
;----- asm -----
;  901 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[643]			break;
;  0 "" 2
;--- end asm ---
	jmp	L146	; 
L159:
	ldb	_blockY	; , blockY
	cmpb	_endY	;cmpqi:	; , endY
	lbne	L155	; 
;----- asm -----
;  908 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[648]			blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  910 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[649]			gameState = BlockMovingAtEnd;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  912 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[650]			changeMusic(levelEndMusic);
;  0 "" 2
;  452 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[367]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  454 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[368]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_levelEndMusic	; ,
	stx	_currentMusic	; , currentMusic
	jmp	L156	; 
L161:
;----- asm -----
;  880 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[631]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
	jmp	L150	; 
	.globl _blockMovingToStart
_blockMovingToStart:
	pshs	u	; 
	leas	-11,s	; ,,
;----- asm -----
;  782 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[570]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  784 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[571]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	5,s	; , blockYOfs.43
;----- asm -----
;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[559]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[560]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	9,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[561]	positd(0, yofs);
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , blockYOfs.43
	stb	10,s	; , a
	clr	9,s	;  b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 10,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	6,s	; , blockX.40
;----- asm -----
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
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
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 10,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp44, tmp43,
	ldx	,x	; ,
; Applied peep: 2 (no load after store)
;----- asm -----
;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	; , x
; ORG>	stx	7,s	; , x
; ORG>;----- asm -----
; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp_7F; BIOS call
;  0 "" 2
;  786 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[572]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.44, blockYOfs
;----- asm -----
;  788 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[573]	if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.44
	bne	L164	; 
;----- asm -----
;  790 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[574]		gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_gameState	; , gameState
L164:
	leas	11,s	; ,,
	puls	u,pc	; 
	.globl _blockWaiting
_blockWaiting:
	pshs	u	; 
	leas	-10,s	; ,,
;----- asm -----
;  797 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[580]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  799 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[581]	drawBlock(0);
;  0 "" 2
;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[559]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[560]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	8,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 8,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[561]	positd(0, yofs);
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	clr	9,s	;  a
	clr	8,s	;  b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 8,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	5,s	; , blockX.40
;----- asm -----
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
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
	tfr	d,u	; , tmp39
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp40
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp39,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp40, tmp42
	addb	3,s	;  tmp42,
	stb	9,s	;  tmp42, b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 8,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp46, tmp45,
	ldx	,x	; ,
; Applied peep: 2 (no load after store)
;----- asm -----
;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	6,s	; , x
; ORG>	stx	6,s	; , x
; ORG>;----- asm -----
; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 6,s	;  x
	jsr ___Draw_VLp_7F; BIOS call
;  0 "" 2
;  801 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[582]	joybit();
;  0 "" 2
;  2354 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Joy_Digital; BIOS call
;  0 "" 2
;  803 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[583]	if (pot0 < -10) {
;  0 "" 2
;--- end asm ---
	ldb	-14309	;  D.2590,
	cmpb	#-10	;cmpqi:	;  D.2590,
	lblt	L172	; 
	ldb	-14309	;  D.2591,
	cmpb	#10	;cmpqi:	;  D.2591,
	bgt	L173	; 
	ldb	-14308	;  D.2593,
	cmpb	#-10	;cmpqi:	;  D.2593,
	lblt	L174	; 
	ldb	-14308	;  D.2594,
	cmpb	#10	;cmpqi:	;  D.2594,
	lbgt	L175	; 
L167:
;----- asm -----
;  825 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[596]	if (gameState == BlockMoving) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#2	;cmpqi:	; ,
	bne	L171	; 
;----- asm -----
;  827 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[597]		changeMusic(movingMusic);
;  0 "" 2
;  452 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[367]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  454 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[368]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_movingMusic	; ,
	stx	_currentMusic	; , currentMusic
L171:
	leas	10,s	; ,,
	puls	u,pc	; 
L173:
;----- asm -----
;  810 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[587]		moveBlock(Right);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  812 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[588]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
	bra	L167	; 
L172:
;----- asm -----
;  805 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[584]		moveBlock(Left);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_moveBlock	; 
;----- asm -----
;  807 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[585]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
	jmp	L167	; 
L174:
;----- asm -----
;  815 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[590]		moveBlock(Down);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  817 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[591]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
	jmp	L167	; 
L175:
;----- asm -----
;  820 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[593]		moveBlock(Up);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  822 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[594]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
	jmp	L167	; 
	.globl _writeEeprom
_writeEeprom:
	pshs	b	; 
;----- asm -----
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[208]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L178	; 
;----- asm -----
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[209]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	uint8_t result;
;  0 "" 2
;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_picWrite	; 
;----- asm -----
;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[200]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , address
	jsr	_picWrite	; 
;----- asm -----
;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[201]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[202]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[203]	return result;
;  0 "" 2
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[210]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	uint8_t result;
;  0 "" 2
;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_picWrite	; 
;----- asm -----
;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[200]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , data
	jsr	_picWrite	; 
;----- asm -----
;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[201]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[202]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[203]	return result;
;  0 "" 2
;--- end asm ---
L178:
	leas	1,s	; ,,
	rts
	.globl _readEeprom
_readEeprom:
	leas	-2,s	; ,,
	stb	,s	;  address, address
;----- asm -----
;  228 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	bne	L183	; 
;----- asm -----
;  233 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[219]		return 0xff;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	1,s	; , result
	leas	2,s	; ,,
	rts
L183:
;----- asm -----
;  230 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]		return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	uint8_t result;
;  0 "" 2
;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[200]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , address
	jsr	_picWrite	; 
;----- asm -----
;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[201]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	1,s	; , result
;----- asm -----
;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[202]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[203]	return result;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , result
	leas	2,s	; ,,
	rts
	.globl _startLevel
_startLevel:
	pshs	y,u	; 
	leas	-37,s	; ,,
;----- asm -----
;  668 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[483]	if (levelNumber == 0) {
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	stb	2,s	; ,
	lbne	L185	; 
;----- asm -----
;  670 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[484]		level = level0;
;  0 "" 2
;--- end asm ---
	ldx	_level0	; , level0
	stx	_level	; , level
L186:
;----- asm -----
;  679 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[490]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
;  0 "" 2
;  228 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L221	; 
;----- asm -----
;  233 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[219]		return 0xff;
;  0 "" 2
;--- end asm ---
	ldx	#255	;  prephitmp.561,
L189:
	stx	_levelHighscore	;  prephitmp.561, levelHighscore
;----- asm -----
;  681 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[491]	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
;  0 "" 2
;  228 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[216]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbne	L222	; 
;----- asm -----
;  233 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[219]		return 0xff;
;  0 "" 2
;--- end asm ---
	ldd	#-256	;  prephitmp.563,
L191:
	ora	_levelHighscore	; , levelHighscore
	orb	_levelHighscore+1	; , levelHighscore
	std	_levelHighscore	;  levelHighscore.36, levelHighscore
;----- asm -----
;  683 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[492]	if (levelHighscore == 0) levelHighscore = 999;
;  0 "" 2
;--- end asm ---
	cmpd	#0	;  levelHighscore.36
	bne	L192	; 
	ldx	#999	; ,
	stx	_levelHighscore	; , levelHighscore
L192:
;----- asm -----
;  685 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[493]	lineCount = 0;
;  0 "" 2
;--- end asm ---
	clr	_lineCount	;  lineCount
;----- asm -----
;  687 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[494]	setupX();
;  0 "" 2
;--- end asm ---
	jsr	_setupX	; 
;----- asm -----
;  689 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[495]	setupY();
;  0 "" 2
;  407 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[338]	unsigned long int index;
;  0 "" 2
;  409 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[339]	int8_t x = 0;
;  0 "" 2
;  411 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[340]	int8_t y = 0;
;  0 "" 2
;  413 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[341]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
;  0 "" 2
;--- end asm ---
	ldy	_level	;  ivtmp.630, level
	clr	7,s	;  x
	ldb	7,s	; , x
L199:
;----- asm -----
;  415 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[342]		int8_t y0 = -1;
;  0 "" 2
;  417 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[343]		int8_t y1 = -1;
;  0 "" 2
;  419 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[344]		for (y = 0; y < LEVEL_HEIGHT; y++) {
;  0 "" 2
;--- end asm ---
	lda	#14	;umulqihi3	; 
	mul
; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
	tfr	d,x	; , tmp134
; ORG>	tfr	d,x	; , tmp134
; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp134,
	addb	#-14	; ,
	stb	11,s	; , D.3998
	ldb	7,s	; , x
	aslb	; 
	addb	7,s	; , x
	addb	#-101	; ,
	stb	12,s	; , D.4001
	leau	,y	;  ivtmp.637, ivtmp.630
	clr	8,s	;  y0
	ldb	#-1	; ,
	stb	28,s	; , y0.633
	stb	29,s	; , y0.634
	jmp	L198	; 
L224:
	cmpb	#97	;cmpqi:	; ,
	lbeq	L193	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L193	; 
;----- asm -----
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	9,s	; , c1
	cmpb	#46	;cmpqi:	; ,
	lbeq	L193	; 
	cmpb	#97	;cmpqi:	; ,
	lbeq	L193	; 
	cmpb	#111	;cmpqi:	; ,
	lbeq	L193	; 
;----- asm -----
;  438 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[356]				if (y0 >= 0) {
;  0 "" 2
;--- end asm ---
	ldb	28,s	; , y0.633
	cmpb	#-1	;cmpqi:	; ,
	lbeq	L197	; 
;----- asm -----
;  440 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[357]					addLine(x + 1, y0, x + 1, y1 + 1);
;  0 "" 2
;--- end asm ---
	ldb	29,s	; , y0.634
	incb	; 
	stb	6,s	; , D.3975
;----- asm -----
;  296 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[266]	lineX0[lineCount] = x3d(x0, 0, y0);
;  0 "" 2
;--- end asm ---
	ldb	_lineCount	; , lineCount
	stb	10,s	; , lineCount.8
;----- asm -----
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , lineCount.8
	ldb	28,s	; , y0.633
	lda	#-6	;mulqihi3	; 
	mul
		;movlsbqihi: D->B
	addb	11,s	;  tmp143, D.3998
	stb	_lineX0,x	;  tmp143, lineX0
;----- asm -----
;  298 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[267]	lineY0[lineCount] = y3d(x0, 0, y0);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	asl	28,s	;  y0.633
	asl	28,s	;  y0.633
	asl	28,s	;  y0.633
	ldb	28,s	; , y0.633
	addb	12,s	; , D.4001
	stb	_lineY0,x	; , lineY0
;----- asm -----
;  300 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[268]	lineX1[lineCount] = x3d(x1, 0, y1);
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , D.3975
	lda	#-6	;mulqihi3	; 
	mul
	std	,s	; ,
		;movlsbqihi: D->B
	addb	11,s	;  tmp152, D.3998
	stb	_lineX1,x	;  tmp152, lineX1
;----- asm -----
;  302 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[269]	lineY1[lineCount] = y3d(x1, 0, y1);
;  0 "" 2
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;--- end asm ---
	asl	6,s	;  D.3975
	asl	6,s	;  D.3975
	asl	6,s	;  D.3975
	ldb	6,s	; , D.3975
	addb	12,s	; , D.4001
	stb	_lineY1,x	; , lineY1
;----- asm -----
;  304 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[270]	lineCount++;
;  0 "" 2
;--- end asm ---
	ldb	10,s	; , lineCount.8
	incb	; 
	stb	_lineCount	; , lineCount
;----- asm -----
;  442 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[358]					y0 = -1;
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	28,s	; , y0.633
L197:
	inc	8,s	;  y0
	leau	12,u	;  ivtmp.637,, ivtmp.637
	ldb	8,s	; , y0
	cmpb	#17	;cmpqi:	; ,
	lbeq	L223	; 
L198:
;----- asm -----
;  425 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[349]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
;  0 "" 2
;  427 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[350]			char c0 = level[index];
;  0 "" 2
;--- end asm ---
	ldb	,u	; ,* ivtmp.637
	stb	,s	; , c0
;----- asm -----
;  429 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[351]			char c1 = level[index+1];
;  0 "" 2
;--- end asm ---
	ldb	1,u	; ,
	stb	9,s	; , c1
;----- asm -----
;  431 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[352]			if (isField(c0) || isField(c1)) {
;  0 "" 2
;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
;  0 "" 2
;--- end asm ---
	ldb	,s	; , c0
	cmpb	#46	;cmpqi:	; ,
	lbne	L224	; 
L193:
;----- asm -----
;  433 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[353]				if (y0 < 0) y0 = y;
;  0 "" 2
;--- end asm ---
	ldb	28,s	; , y0.633
	cmpb	#-1	;cmpqi:	; ,
	lbeq	L225	; 
L196:
;----- asm -----
;  435 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[354]				y1 = y;
;  0 "" 2
;--- end asm ---
	ldb	8,s	; , y0
	stb	29,s	; , y0.634
	inc	8,s	;  y0
	leau	12,u	;  ivtmp.637,, ivtmp.637
	ldb	8,s	; , y0
	cmpb	#17	;cmpqi:	; ,
	lbne	L198	; 
L223:
	inc	7,s	;  x
	leay	1,y	;  ivtmp.630,, ivtmp.630
	ldb	7,s	; , x
	cmpb	#11	;cmpqi:	; ,
	lbne	L199	; 
;----- asm -----
;  691 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[496]	blockX = startX;
;  0 "" 2
;--- end asm ---
	ldb	_startX	; , startX
	stb	_blockX	; , blockX
;----- asm -----
;  693 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[497]	blockY = startY;
;  0 "" 2
;--- end asm ---
	ldb	_startY	; , startY
	stb	_blockY	; , blockY
;----- asm -----
;  695 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[498]	blockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  697 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[499]	blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  699 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[500]	blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
;----- asm -----
;  701 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[501]	blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  703 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[502]	blockYOfs = -30;
;  0 "" 2
;--- end asm ---
	ldb	#-30	; ,
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  705 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[503]	gameState = BlockMovingToStart;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
;----- asm -----
;  707 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[504]	changeMusic(startMusic);
;  0 "" 2
;  452 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[367]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  454 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[368]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	ldx	#_startMusic	; ,
	stx	_currentMusic	; , currentMusic
;----- asm -----
;  709 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[505]	moveCount = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_moveCount	; , moveCount
;----- asm -----
;  711 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[506]	updateInfoText();
;  0 "" 2
;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[241]	itoa(moveCount, &infoText[0]);
;  0 "" 2
;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	31,s	; , muls
	ldd	#10	; ,
	std	33,s	; , muls
	ldd	#1	; ,
	std	35,s	; , muls
;----- asm -----
;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (number > 999) number = 999;
;  0 "" 2
;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	31,s	; ,,
	stx	24,s	; , ivtmp.608
	ldx	#_infoText	; ,
	stx	26,s	; , ivtmp.610
	ldd	#0	; ,
	std	,s	; , number
	ldx	24,s	; , ivtmp.608
L203:
;----- asm -----
;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[230]		uint8_t d = 0;
;  0 "" 2
;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[231]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.4016, muls
	ldb	#48	; ,
	stb	15,s	; , prephitmp.569
	cmpu	,s	;cmphi:	;  D.4016, number
	bhi	L201	; 
	tfr	u,d	;  D.4016,
	nega
	negb
	sbca	#0
	std	22,s	; , ivtmp.599
	ldd	,s	; , number
	pshs	u	;subhi: R:d -= R:u	;  D.4016,
	subd	,s++	; 
	std	,s	; , number
	clr	13,s	;  d
L202:
;----- asm -----
;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[232]			d++;
;  0 "" 2
;--- end asm ---
	inc	13,s	;  d
;----- asm -----
;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[233]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.642, number
	tfr	y,d	; ,
	addd	22,s	; , ivtmp.599
	std	,s	; , number
	leax	d,u	;  tmp164,, D.4016
	pshs	u	;cmphi: R:u with R:x	;  D.4016, tmp164
	cmpx	,s++	;cmphi:	;  tmp164
	bhs	L202	; 
	sty	,s	;  number.642, number
	ldb	13,s	; , d
	addb	#48	; ,
	stb	15,s	; , prephitmp.569
L201:
;----- asm -----
;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[235]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	26,s	; , ivtmp.610
	leax	1,x	; ,,
	stx	26,s	; , ivtmp.610
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	24,s	; , ivtmp.608
	leax	2,x	; ,,
	stx	24,s	; , ivtmp.608
	tfr	s,d	; ,
	addd	#37	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L203	; 
;----- asm -----
;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[242]	itoa(levelHighscore, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	_levelHighscore	;  number.636, levelHighscore
;----- asm -----
;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	31,s	; , muls
	ldd	#10	; ,
	std	33,s	; , muls
	ldd	#1	; ,
	std	35,s	; , muls
;----- asm -----
;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[228]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	stu	,s	;  number.636, number
	cmpu	#999	;cmphi:	;  number.636,
	bls	L204	; 
	ldx	#999	; ,
	stx	,s	; , number
L204:
;----- asm -----
;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	31,s	; ,,
	stx	18,s	; , ivtmp.592
	ldx	#_infoText+6	; ,
	stx	20,s	; , ivtmp.594
	ldx	18,s	; , ivtmp.592
L208:
;----- asm -----
;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[230]		uint8_t d = 0;
;  0 "" 2
;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[231]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldu	,x	;  D.4025, muls
	ldb	#48	; ,
	stb	30,s	; , prephitmp.641
	cmpu	,s	;cmphi:	;  D.4025, number
	bhi	L206	; 
	tfr	u,d	;  D.4025,
	nega
	negb
	sbca	#0
	std	16,s	; , ivtmp.583
	ldd	,s	; , number
	pshs	u	;subhi: R:d -= R:u	;  D.4025,
	subd	,s++	; 
	std	,s	; , number
	clr	14,s	;  d
L207:
;----- asm -----
;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[232]			d++;
;  0 "" 2
;--- end asm ---
	inc	14,s	;  d
;----- asm -----
;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[233]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldy	,s	;  number.643, number
	tfr	y,d	; ,
	addd	16,s	; , ivtmp.583
	std	,s	; , number
	leax	d,u	;  tmp170,, D.4025
	pshs	x	;cmphi: R:x with R:u	;  tmp170, D.4025
	cmpu	,s++	;cmphi:	;  D.4025
	bls	L207	; 
	sty	,s	;  number.643, number
	ldb	14,s	; , d
	addb	#48	; ,
	stb	30,s	; , prephitmp.641
L206:
;----- asm -----
;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[235]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldx	20,s	; , ivtmp.594
	leax	1,x	; ,,
	stx	20,s	; , ivtmp.594
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	18,s	; , ivtmp.592
	leax	2,x	; ,,
	stx	18,s	; , ivtmp.592
	tfr	s,d	; ,
	addd	#37	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L208	; 
	leas	37,s	; ,,
	puls	y,u,pc	; 
L225:
	ldb	8,s	; , y0
	stb	28,s	; , y0.633
	jmp	L196	; 
L185:
	cmpb	#1	;cmpqi:	; ,
	beq	L226	; 
;----- asm -----
;  676 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[488]		level = level2;
;  0 "" 2
;--- end asm ---
	ldd	_level2	; , level2
	std	_level	; , level
	jmp	L186	; 
L226:
;----- asm -----
;  673 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[486]		level = level1;
;  0 "" 2
;--- end asm ---
	ldx	_level1	; , level1
	stx	_level	; , level
	jmp	L186	; 
L221:
;----- asm -----
;  230 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]		return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	uint8_t result;
;  0 "" 2
;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[200]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	asl	2,s	; 
	ldb	2,s	; ,
	jsr	_picWrite	; 
;----- asm -----
;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[201]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	3,s	; , result
;----- asm -----
;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[202]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[203]	return result;
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , result
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,x	; , prephitmp.561
	ldb	_levelNumber	; , levelNumber
	stb	2,s	; ,
	jmp	L189	; 
L222:
;----- asm -----
;  230 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[217]		return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	uint8_t result;
;  0 "" 2
;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	jsr	_picWrite	; 
;----- asm -----
;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[200]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	asl	2,s	; 
	inc	2,s	; 
	ldb	2,s	; ,
	jsr	_picWrite	; 
;----- asm -----
;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[201]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	5,s	; , result
;----- asm -----
;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[202]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[203]	return result;
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , result
	tfr	b,a	; ,
	clrb	; 
	jmp	L191	; 
	.globl _blockFalling
_blockFalling:
	pshs	u	; 
	leas	-11,s	; ,,
;----- asm -----
;  927 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[662]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  929 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[663]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	5,s	; , blockYOfs.64
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  931 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[664]	if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	ble	L231	; 
L228:
;----- asm -----
;  938 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[668]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	lbeq	L232	; 
	leas	11,s	; ,,
	puls	u,pc	; 
L231:
;----- asm -----
;  933 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[665]		drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[559]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[560]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	9,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[561]	positd(0, yofs);
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	;  tmp31, blockYOfs.64
	negb	;  tmp31
	lda	5,s	;mulqihi3	;  blockYOfs.64
	mul
	stb	10,s	;movlsbqihi: R:d -> 10,s	;  a, tmp32
	clr	9,s	;  b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 10,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	6,s	; , blockX.40
;----- asm -----
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
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
	tfr	d,u	; , tmp39
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp40
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp39,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp40, tmp42
	addb	3,s	;  tmp42,
	stb	10,s	;  tmp42, b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 10,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp46, tmp45,
	ldx	,x	; ,
; Applied peep: 2 (no load after store)
;----- asm -----
;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	; , x
; ORG>	stx	7,s	; , x
; ORG>;----- asm -----
; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp_7F; BIOS call
;  0 "" 2
;  935 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[666]		doBlockAnimation();
;  0 "" 2
;  834 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[603]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbeq	L228	; 
;----- asm -----
;  836 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[604]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
	lbne	L228	; 
;----- asm -----
;  838 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[605]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  840 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[606]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  842 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[607]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  844 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[608]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  846 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[609]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
	jmp	L228	; 
L232:
;----- asm -----
;  940 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[669]		startLevel();
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
;  947 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[675]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  949 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[676]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	5,s	; , blockYOfs.65
;----- asm -----
;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[559]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[560]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	9,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[561]	positd(0, yofs);
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , blockYOfs.65
	stb	10,s	; , a
	clr	9,s	;  b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 10,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	6,s	; , blockX.40
;----- asm -----
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
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
	tfr	d,u	; , tmp42
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp43
	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp42,
	stb	3,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp43, tmp45
	addb	3,s	;  tmp45,
	stb	10,s	;  tmp45, b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 9,s	;  a
	ldb 10,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp49, tmp48,
	ldx	,x	; ,
; Applied peep: 2 (no load after store)
;----- asm -----
;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	; , x
; ORG>	stx	7,s	; , x
; ORG>;----- asm -----
; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp_7F; BIOS call
;  0 "" 2
;  951 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[677]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.66, blockYOfs
;----- asm -----
;  953 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[678]	if (blockYOfs == 30) {
;  0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	;  blockYOfs.66,
	beq	L239	; 
	leas	11,s	; ,,
	puls	u,pc	; 
L239:
;----- asm -----
;  955 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[679]		if (moveCount < levelHighscore) {
;  0 "" 2
;--- end asm ---
	ldu	_moveCount	;  moveCount.674, moveCount
	cmpu	_levelHighscore	;cmphi:	;  moveCount.674, levelHighscore
	blo	L240	; 
L235:
;----- asm -----
;  962 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[683]		levelNumber++;
;  0 "" 2
;--- end asm ---
	inc	_levelNumber	;  levelNumber
	ldb	_levelNumber	;  levelNumber.70, levelNumber
;----- asm -----
;  964 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[684]		if (levelNumber > 2) levelNumber = 0;
;  0 "" 2
;--- end asm ---
	cmpb	#2	;cmpqi:	;  levelNumber.70,
	ble	L237	; 
	clr	_levelNumber	;  levelNumber
L237:
;----- asm -----
;  966 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[685]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	leas	11,s	; ,,
	puls	u,pc	; 
L240:
;----- asm -----
;  957 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[680]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.675, levelNumber
;----- asm -----
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[208]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L236	; 
;----- asm -----
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[209]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	aslb	;  levelNumber.675
	pshs	b	;  levelNumber.675
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[210]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  moveCount.674,
	pshs	b	; 
	ldb	#3	; ,
	jsr	_sendCommand	; 
	leas	2,s	; ,,
	ldu	_moveCount	;  moveCount.674, moveCount
	ldb	_levelNumber	;  levelNumber.675, levelNumber
L236:
;----- asm -----
;  959 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[681]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
;  0 "" 2
;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[208]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	lbeq	L235	; 
;----- asm -----
;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[209]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	aslb	;  levelNumber.675
	incb	;  levelNumber.675
	pshs	b	;  levelNumber.675
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[210]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;--- end asm ---
	tfr	u,d	;  moveCount.674, tmp54
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	pshs	b	;  tmp54
	ldb	#3	; ,
	jsr	_sendCommand	; 
	leas	2,s	; ,,
	jmp	L235	; 
	.globl _main
_main:
	pshs	y,u	; 
	leas	-15,s	; ,,
;----- asm -----
;  974 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[692]	picAvailable = 0;
;  0 "" 2
;--- end asm ---
	clr	_picAvailable	;  picAvailable
;----- asm -----
;  976 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[693]	sendCommand(CMD_VERSION, 0);
;  0 "" 2
;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	uint8_t result;
;  0 "" 2
;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[200]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_picWrite	; 
;----- asm -----
;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[201]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[202]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[203]	return result;
;  0 "" 2
;  978 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[694]	sendCommand(CMD_VERSION, 0);
;  0 "" 2
;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	uint8_t result;
;  0 "" 2
;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[200]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_picWrite	; 
;----- asm -----
;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[201]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
;----- asm -----
;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[202]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[203]	return result;
;  0 "" 2
;  980 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[695]	if (sendCommand(CMD_VERSION, 0) == 4) {
;  0 "" 2
;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[197]	uint8_t result;
;  0 "" 2
;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[198]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[199]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_picWrite	; 
;----- asm -----
;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[200]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_picWrite	; 
;----- asm -----
;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[201]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	6,s	; , result
;----- asm -----
;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[202]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[203]	return result;
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , result
	cmpb	#4	;cmpqi:	; ,
	lbeq	L255	; 
L242:
;----- asm -----
;  987 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[700]	memcpy(infoText, "001 / 999�", 10);
;  0 "" 2
;--- end asm ---
	ldx	#12336	; ,
	stx	_infoText	; , infoText
	ldu	#12576	; ,
	stu	_infoText+2	; , infoText
	ldx	#12064	; ,
	stx	_infoText+4	; , infoText
	ldu	#14649	; ,
	stu	_infoText+6	; , infoText
	ldx	#14720	; ,
	stx	_infoText+8	; , infoText
;----- asm -----
;  991 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[703]	epot0 = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14305	; ,
;----- asm -----
;  993 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[704]	epot1 = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	-14304	; ,
;----- asm -----
;  995 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[705]	epot2 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14303	; 
;----- asm -----
;  997 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[706]	epot3 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14302	; 
;----- asm -----
;  1000 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[708]	startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
;----- asm -----
;  1002 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[709]	while (1) {
;  0 "" 2
;--- end asm ---
L253:
;----- asm -----
;  1005 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[711]		frwait();
;  0 "" 2
;  97 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  1008 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[713]        Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	14,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1010 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[714]        Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1012 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[715]        Print_Str_d(100, -80, infoText);
;  0 "" 2
;--- end asm ---
	stb	14,s	; , a
	ldb	#-80	; ,
	stb	13,s	; , b
	ldx	#_infoText	; ,
	stx	11,s	; , u
;----- asm -----
;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 13,s	;  b
	ldu 11,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1015 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[717]		switch (gameState) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#4	;cmpqi:	; ,
	bhi	L243	; 
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp51
	jmp	[L249,x]	; , tmp51
L249:
	.word L244
	.word L245
	.word L246
	.word L247
	.word L248
L248:
;----- asm -----
;  1043 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[731]			blockMovingAtEnd();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingAtEnd	; 
;----- asm -----
;  1045 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[732]			break;
;  0 "" 2
;--- end asm ---
L243:
;----- asm -----
;  1050 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[736]		DP_to_C8();
;  0 "" 2
;  316 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_C8; BIOS call
;  0 "" 2
;  1052 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[737]		replay(currentMusic);
;  0 "" 2
;--- end asm ---
	ldx	_currentMusic	; , currentMusic
	stx	11,s	; , u
;----- asm -----
;  2917 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldu 11,s	;  u
	jsr ___Init_Music_chk; BIOS call
;  0 "" 2
;  1054 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[738]		DP_to_D0();
;  0 "" 2
;  300 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_D0; BIOS call
;  0 "" 2
;  1056 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[739]		reqout();
;  0 "" 2
;  2880 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Do_Sound; BIOS call
;  0 "" 2
;--- end asm ---
	jmp	L253	; 
L245:
;----- asm -----
;  1025 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[722]			blockWaiting();
;  0 "" 2
;--- end asm ---
	jsr	_blockWaiting	; 
;----- asm -----
;  1027 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[723]			break;
;  0 "" 2
;--- end asm ---
	jmp	L243	; 
L244:
;----- asm -----
;  1019 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[719]			blockMovingToStart();
;  0 "" 2
;  782 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[570]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  784 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[571]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	stb	7,s	; , blockYOfs.43
;----- asm -----
;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[559]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[560]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	13,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[561]	positd(0, yofs);
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	7,s	; , blockYOfs.43
	stb	14,s	; , a
	clr	13,s	;  b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 13,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	8,s	; , blockX.40
;----- asm -----
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	aslb	; 
	addb	8,s	; , blockX.40
	stb	,s	; ,
	ldb	_blockY	; , blockY
	aslb	; 
	aslb	; 
	aslb	; 
	stb	5,s	; ,
	ldb	,s	; ,
	addb	5,s	; ,
	addb	#-104	; ,
	stb	13,s	; , a
	ldb	8,s	; , blockX.40
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,y	; , tmp60
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp61
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp60,
	stb	4,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp61, tmp63
	addb	4,s	;  tmp63,
	stb	14,s	;  tmp63, b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	ldb 14,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp67, tmp66,
	ldx	,x	; ,
; Applied peep: 2 (no load after store)
;----- asm -----
;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	11,s	; , x
; ORG>	stx	11,s	; , x
; ORG>;----- asm -----
; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 11,s	;  x
	jsr ___Draw_VLp_7F; BIOS call
;  0 "" 2
;  786 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[572]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	inc	_blockYOfs	;  blockYOfs
	ldb	_blockYOfs	;  blockYOfs.44, blockYOfs
;----- asm -----
;  788 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[573]	if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.44
	bne	L250	; 
;----- asm -----
;  790 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[574]		gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_gameState	; , gameState
L250:
;----- asm -----
;  1021 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[720]			break;
;  0 "" 2
;--- end asm ---
	jmp	L243	; 
L247:
;----- asm -----
;  1037 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[728]			blockFalling();
;  0 "" 2
;  927 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[662]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  929 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[663]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	9,s	; , blockYOfs.64
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  931 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[664]	if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	ble	L256	; 
L251:
;----- asm -----
;  938 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[668]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	lbeq	L257	; 
L252:
;----- asm -----
;  1039 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[729]			break;
;  0 "" 2
;--- end asm ---
	jmp	L243	; 
L246:
;----- asm -----
;  1031 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[725]			blockMoving();
;  0 "" 2
;--- end asm ---
	jsr	_blockMoving	; 
;----- asm -----
;  1033 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[726]			break;
;  0 "" 2
;--- end asm ---
	jmp	L243	; 
L256:
;----- asm -----
;  933 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[665]		drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[559]	zergnd();
;  0 "" 2
;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[560]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	13,s	; , a
;----- asm -----
;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[561]	positd(0, yofs);
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	ldb	9,s	;  tmp69, blockYOfs.64
	negb	;  tmp69
	lda	9,s	;mulqihi3	;  blockYOfs.64
	mul
	stb	14,s	;movlsbqihi: R:d -> 14,s	;  a, tmp70
	clr	13,s	;  b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 14,s	;  a
	ldb 13,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	10,s	; , blockX.40
;----- asm -----
;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
;  0 "" 2
;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
;  0 "" 2
;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
;  0 "" 2
;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[254]	return 14 * x - 6 * z+0*y;
;  0 "" 2
;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d_7F(y,x);
;  0 "" 2
;--- end asm ---
	aslb	; 
	addb	10,s	; , blockX.40
	stb	,s	; ,
	ldb	_blockY	; , blockY
	aslb	; 
	aslb	; 
	aslb	; 
	stb	3,s	; ,
	ldb	,s	; ,
	addb	3,s	; ,
	addb	#-104	; ,
	stb	13,s	; , a
	ldb	10,s	; , blockX.40
	addb	#-2	; ,
	lda	#14	;mulqihi3	; 
	mul
	tfr	d,y	; , tmp77
	ldb	_blockY	; , blockY
	lda	#-6	;mulqihi3	; 
	mul
	tfr	d,x	; , tmp78
	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp77,
	stb	2,s	; ,
	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp78, tmp80
	addb	2,s	;  tmp80,
	stb	14,s	;  tmp80, b
;----- asm -----
;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 13,s	;  a
	ldb 14,s	;  b
	jsr ___Moveto_d_7F; BIOS call
;  0 "" 2
;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp84, tmp83,
	ldx	,x	; ,
; Applied peep: 2 (no load after store)
;----- asm -----
;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	11,s	; , x
; ORG>	stx	11,s	; , x
; ORG>;----- asm -----
; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 11,s	;  x
	jsr ___Draw_VLp_7F; BIOS call
;  0 "" 2
;  935 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[666]		doBlockAnimation();
;  0 "" 2
;  834 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[603]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbeq	L251	; 
;----- asm -----
;  836 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[604]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	inc	_blockAnimationStep	;  blockAnimationStep
	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
	lbne	L251	; 
;----- asm -----
;  838 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[605]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  840 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[606]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  842 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[607]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  844 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[608]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  846 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[609]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
;----- asm -----
;  938 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[668]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	lbne	L252	; 
L257:
;----- asm -----
;  940 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[669]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	jmp	L252	; 
L255:
;----- asm -----
;  982 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
	; #ENR#[696]		picAvailable = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_picAvailable	; , picAvailable
	jmp	L242	; 
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
LC0:
	.ascii "                                          ...   "
	.ascii "     ..a.        ....        ...         ...    "
	.ascii "    ....       ....        .o..        ....     "
	.ascii "    ..                                          "
	.ascii "            \0"
	.area .data
_level0:
	.word	LC0
	.globl _level1
	.area .text
LC1:
	.ascii "                ....        .a..        ....    "
	.ascii "    ....          .           .           ...   "
	.ascii "      ...         ...           .           .   "
	.ascii "    .....      ......      ..o.        ....     "
	.ascii "            \0"
	.area .data
_level1:
	.word	LC1
	.globl _level2
	.area .text
LC2:
	.ascii "                a           .           .       "
	.ascii "    .           ...      ......      .   .....  "
	.ascii " .      ...  ...    ...  ...   ....  ...   ...  "
	.ascii "   ...         ....         .o.         ...     "
	.ascii "            \0"
	.area .data
_level2:
	.word	LC2
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
	.area .bss
	.globl	_infoText
_infoText:	.blkb	10
	.globl	_moveCount
_moveCount:	.blkb	2
	.globl	_picAvailable
_picAvailable:	.blkb	1
	.globl	_lineX0
_lineX0:	.blkb	120
	.globl	_lineY0
_lineY0:	.blkb	120
	.globl	_lineX1
_lineX1:	.blkb	120
	.globl	_lineY1
_lineY1:	.blkb	120
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
