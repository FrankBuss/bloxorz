;;; gcc for m6809 : Sep 13 2017 10:25:42
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	bloxorz.enr.c
;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
;  -fno-time-report -I/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include
;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
;  -I/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/include
;  /home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c
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
	.globl _runtimeError
_runtimeError:
	pshs	y,u	; 
	leas	-4,s	; ,,
	leay	,x	;  msg, msg
;----- asm -----
;  200 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[195]	while (1) {
;  0 "" 2
;--- end asm ---
L2:
;----- asm -----
;  202 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[196]		frwait();
;  0 "" 2
;  97 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  204 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[197]         Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  206 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[198]         Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  208 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[199]         Print_Str_d(-10, -110, msg);
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	sty	,s	;  msg, u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;--- end asm ---
	jmp	L2	; 
	.globl _itoa
_itoa:
	pshs	y,u	; 
	leas	-15,s	; ,,
;----- asm -----
;  258 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[235]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	9,s	; , muls
	ldd	#10	; ,
	std	11,s	; , muls
	ldd	#1	; ,
	std	13,s	; , muls
;----- asm -----
;  260 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[236]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	leay	,x	;  number.113, number
	cmpx	#999	;cmphi:	;  number.113,
	bls	L5	; 
	ldy	#999	;  number.113,
L5:
;----- asm -----
;  262 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[237]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	9,s	; ,,
	stx	5,s	; , ivtmp.109
	ldd	21,s	; , text
	std	7,s	; , ivtmp.111
L9:
;----- asm -----
;  264 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[238]		uint8_t d = 0;
;  0 "" 2
;  266 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[239]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldx	5,s	; , ivtmp.109
	ldx	,x	; , muls
	stx	,s	; , D.2431
	pshs	y	;cmphi: R:y with R:x	;  number.113,
	cmpx	,s++	;cmphi:	; 
	bhi	L6	; 
	tfr	x,d	; ,
	nega
	negb
	sbca	#0
	std	3,s	; , ivtmp.101
	tfr	y,d	;  number.113,
	subd	,s	;subhi: R:d -= ,s	; , D.2431
	tfr	d,y	; , number.113
	clr	2,s	;  d
L8:
;----- asm -----
;  268 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[240]			d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  270 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[241]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldd	3,s	; , ivtmp.101
	leau	d,y	;  number.112,, number.113
	ldd	,s	; , D.2431
	leax	d,u	;  tmp85,, number.112
	pshs	x	;cmphi: R:x with R:d	;  tmp85,
	cmpd	,s++	;cmphi:	; 
	bhi	L7	; 
	leay	,u	;  number.113, number.112
	bra	L8	; 
L6:
	clr	2,s	;  d
L7:
;----- asm -----
;  273 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[243]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , d
	addb	#48	; ,
	ldx	7,s	; , ivtmp.111
	leax	1,x	; ,,
	stx	7,s	; , ivtmp.111
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	5,s	; , ivtmp.109
	leax	2,x	; ,,
	stx	5,s	; , ivtmp.109
	tfr	s,d	; ,
	addd	#15	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L9	; 
	leas	15,s	; ,,
	puls	y,u,pc	; 
	.globl _updateInfoText
_updateInfoText:
;----- asm -----
;  280 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[249]	itoa(moveCount, &infoText[0]);
;  0 "" 2
;--- end asm ---
	ldx	#_infoText	; ,
	stx	,--s	; ,
	ldx	_moveCount	; , moveCount
	jsr	_itoa	; 
;----- asm -----
;  283 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[251]	itoa(levelNumber + 1, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  tmp28, levelNumber
	incb	;  tmp28
	ldx	#_infoText+6	; ,
	stx	,--s	; ,
	clra		;zero_extendqihi: R:b -> R:d	;  tmp28,
	tfr	d,x	; ,
	jsr	_itoa	; 
	leas	4,s	; ,,
	rts
	.globl _changeMusic
_changeMusic:
;----- asm -----
;  289 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[256]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  291 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[257]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	stx	_currentMusic	;  music, currentMusic
	rts
	.globl _moveBlock
_moveBlock:
	leas	-1,s	; ,,
	stb	,s	;  move, move
;----- asm -----
;  297 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[262]	blockAnimating = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockAnimating	; , blockAnimating
;----- asm -----
;  299 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[263]	lastBlockDirection = move;
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	stb	_lastBlockDirection	; , lastBlockDirection
;----- asm -----
;  301 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[264]	switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	lbeq	L19	; 
	blo	L18	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbne	L17	; 
	jmp	L38	; 
L18:
;----- asm -----
;  305 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[266]        		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L23	; 
	blo	L22	; 
	cmpb	#2	;cmpqi:	; ,
	beq	L24	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L21	; 
	jmp	L39	; 
L22:
;----- asm -----
;  309 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[268]            			blockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  311 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[269]             			nextBlockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  313 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[270]             			nextBlockX = blockX - 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	addb	#-2	; ,
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  315 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[271]             			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  317 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[272]             			blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  319 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]             			break;
;  0 "" 2
;--- end asm ---
	jmp	L21	; 
L24:
;----- asm -----
;  323 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[275]             			blockAnimation = height2FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  325 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[276]             			nextBlockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  327 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[277]             			nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  329 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[278]             			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  331 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[279]             			blockOrientation = Horizontal;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  333 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]             			break;
;  0 "" 2
;--- end asm ---
	jmp	L21	; 
L23:
;----- asm -----
;  337 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[282]             			blockAnimation = height2FallingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  339 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[283]             			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  341 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[284]             			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  343 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[285]             			nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  345 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]             			blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  347 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[287]             			break;
;  0 "" 2
;--- end asm ---
	bra	L21	; 
L39:
;----- asm -----
;  351 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[289]             			blockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  353 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[290]             			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  355 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[291]             			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  357 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[292]             			nextBlockY = blockY - 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	addb	#-2	; ,
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  359 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[293]             			blockOrientation = Vertical;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_blockOrientation	; , blockOrientation
;----- asm -----
;  361 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[294]             			break;
;  0 "" 2
;--- end asm ---
L21:
;----- asm -----
;  364 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[296]        		break;
;  0 "" 2
;--- end asm ---
	jmp	L17	; 
L19:
;----- asm -----
;  368 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[298]        		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L28	; 
	blo	L27	; 
	cmpb	#2	;cmpqi:	; ,
	beq	L29	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L26	; 
	jmp	L40	; 
L27:
;----- asm -----
;  372 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[300]            			blockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	;  tmp38,
	stx	_blockAnimation	;  tmp38, blockAnimation
;----- asm -----
;  374 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[301]            			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	;  tmp38, nextBlockAnimation
;----- asm -----
;  376 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[302]            			nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  378 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[303]            			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  380 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[304]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L26	; 
L29:
;----- asm -----
;  384 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[306]            			blockAnimation = depth2RollingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  386 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[307]            			nextBlockAnimation = depth2RollingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_depth2RollingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  388 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[308]            			nextBlockX = blockX + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  390 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[309]            			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  392 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[310]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L26	; 
L28:
;----- asm -----
;  396 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[312]            			blockAnimation = height2RisingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingBack	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  398 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[313]            			nextBlockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  400 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[314]            			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  402 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[315]            			nextBlockY = blockY + 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	addb	#2	; ,
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  404 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[316]            			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  406 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[317]            			break;
;  0 "" 2
;--- end asm ---
	bra	L26	; 
L40:
;----- asm -----
;  410 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[319]            			blockAnimation = height2RisingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  412 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[320]            			nextBlockAnimation = height2FallingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingFront	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  414 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[321]            			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  416 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[322]            			nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  418 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[323]            			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  420 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[324]            			break;
;  0 "" 2
;--- end asm ---
L26:
;----- asm -----
;  423 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[326]        		break;
;  0 "" 2
;--- end asm ---
	jmp	L17	; 
L38:
;----- asm -----
;  427 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[328]        		switch (move) {
;  0 "" 2
;--- end asm ---
	ldb	,s	; , move
	cmpb	#1	;cmpqi:	; ,
	lbeq	L33	; 
	blo	L32	; 
	cmpb	#2	;cmpqi:	; ,
	beq	L34	; 
	cmpb	#3	;cmpqi:	; ,
	lbne	L31	; 
	jmp	L41	; 
L32:
;----- asm -----
;  431 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[330]            			blockAnimation = height2RisingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  433 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[331]            			nextBlockAnimation = height2FallingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingRight	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  435 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[332]            			nextBlockX = blockX - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	decb	; 
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  437 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[333]            			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  439 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[334]            			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  441 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[335]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L31	; 
L34:
;----- asm -----
;  445 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[337]            			blockAnimation = height2RisingRight;
;  0 "" 2
;--- end asm ---
	ldx	#_height2RisingRight	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  447 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[338]            			nextBlockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  449 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[339]            			nextBlockX = blockX + 2;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	addb	#2	; ,
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  451 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[340]            			nextBlockY = blockY;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  453 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[341]            			blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  455 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[342]            			break;
;  0 "" 2
;--- end asm ---
	jmp	L31	; 
L33:
;----- asm -----
;  459 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[344]            			blockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingBack	;  tmp50,
	stx	_blockAnimation	;  tmp50, blockAnimation
;----- asm -----
;  461 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[345]            			nextBlockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	stx	_nextBlockAnimation	;  tmp50, nextBlockAnimation
;----- asm -----
;  463 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[346]            			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  465 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[347]            			nextBlockY = blockY + 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  467 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[348]            			break;
;  0 "" 2
;--- end asm ---
	bra	L31	; 
L41:
;----- asm -----
;  471 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[350]            			blockAnimation = width2RollingFront;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingFront	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  473 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[351]            			nextBlockAnimation = width2RollingBack;
;  0 "" 2
;--- end asm ---
	ldx	#_width2RollingBack	; ,
	stx	_nextBlockAnimation	; , nextBlockAnimation
;----- asm -----
;  475 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[352]            			nextBlockX = blockX;
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	stb	_nextBlockX	; , nextBlockX
;----- asm -----
;  477 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[353]            			nextBlockY = blockY - 1;
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	decb	; 
	stb	_nextBlockY	; , nextBlockY
;----- asm -----
;  479 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[354]            			break;
;  0 "" 2
;--- end asm ---
L31:
;----- asm -----
;  482 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[356]        		break;
;  0 "" 2
;--- end asm ---
L17:
;----- asm -----
;  485 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[358]	if (moveCount < 999) moveCount++;
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.19, moveCount
	cmpx	#998	;cmphi:	;  moveCount.19,
	bhi	L36	; 
	leax	1,x	; ,, moveCount.19
	stx	_moveCount	; , moveCount
L36:
;----- asm -----
;  487 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[359]	updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
	leas	1,s	; ,,
	rts
	.globl _startBlockFalling
_startBlockFalling:
;----- asm -----
;  493 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[364]	gameState = BlockFalling;
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  495 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[365]	blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  497 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[366]	moveBlock(lastBlockDirection);
;  0 "" 2
;--- end asm ---
	ldb	_lastBlockDirection	; , lastBlockDirection
	jsr	_moveBlock	; 
;----- asm -----
;  499 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[367]	changeMusic(fallingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_fallingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  501 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[368]	*vecx = 0;
;  0 "" 2
;--- end asm ---
	clr	[_vecx]	; * vecx
	rts
	.globl _drawField
_drawField:
	leas	-1,s	; ,,
;----- asm -----
;  549 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[397]	intens(0x35);
;  0 "" 2
;--- end asm ---
	ldb	#53	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  564 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs a, b, dp, x, u
;  0 "" 2
;  565 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda #0xd0
;  0 "" 2
;  566 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		tfr a, dp
;  0 "" 2
;  567 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldx #0
;  0 "" 2
;  568 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb _lineCount
;  0 "" 2
;  569 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	drawFieldLoop:
;  0 "" 2
;  570 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs b
;  0 "" 2
;  571 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  572 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jsr 0xf354
;  0 "" 2
;  573 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  574 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda _lineY0,x
;  0 "" 2
;  575 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb _lineX0,x
;  0 "" 2
;  576 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  577 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jsr 0xf2fc
;  0 "" 2
;  578 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  579 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda _lineY1,x
;  0 "" 2
;  580 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb _lineX1,x
;  0 "" 2
;  581 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		suba _lineY0,x
;  0 "" 2
;  582 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		subb _lineX0,x
;  0 "" 2
;  583 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  584 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jsr 0xf3df
;  0 "" 2
;  585 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  586 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda ,x+
;  0 "" 2
;  587 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls b
;  0 "" 2
;  588 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		decb
;  0 "" 2
;  589 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		bne drawFieldLoop
;  0 "" 2
;  590 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls a, b, dp, x, u
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
	rts
	.globl _doBlockAnimation
_doBlockAnimation:
;----- asm -----
;  677 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[494]	if (blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	beq	L48	; 
;----- asm -----
;  679 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[495]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
	incb	;  blockAnimationStep.48
	stb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
	bne	L48	; 
;----- asm -----
;  681 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[496]			blockX = nextBlockX;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockX	; , nextBlockX
	stb	_blockX	; , blockX
;----- asm -----
;  683 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[497]			blockY = nextBlockY;
;  0 "" 2
;--- end asm ---
	ldb	_nextBlockY	; , nextBlockY
	stb	_blockY	; , blockY
;----- asm -----
;  685 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[498]			blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  687 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[499]			blockAnimation = nextBlockAnimation;
;  0 "" 2
;--- end asm ---
	ldx	_nextBlockAnimation	; , nextBlockAnimation
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  689 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[500]			blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
L48:
	rts
	.globl _showInfo2
_showInfo2:
	pshs	y	; 
	leas	-3,s	; ,,
;----- asm -----
;  938 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[659]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  940 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[660]	intens(0x50);
;  0 "" 2
;--- end asm ---
	ldb	#80	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  943 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[662]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  945 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[663]	positd(-50, 100);
;  0 "" 2
;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	2,s	; , a
	ldb	#-50	; ,
	stb	,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb ,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  947 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[664]	pack1x((void*)led8);
;  0 "" 2
;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[55]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	ldy	#_led8	;  tmp27,
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  950 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[666]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  952 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[667]	positd(-40, 110);
;  0 "" 2
;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#110	; ,
	stb	,s	; , a
	ldb	#-40	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  954 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[668]	pack1x((void*)led8);
;  0 "" 2
;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[55]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  957 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[670]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  959 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[671]	positd(-30, 120);
;  0 "" 2
;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#120	; ,
	stb	2,s	; , a
	ldb	#-30	; ,
	stb	,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb ,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  961 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[672]	pack1x((void*)led8);
;  0 "" 2
;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[55]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  964 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[674]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  966 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[675]	positd(0, 120);
;  0 "" 2
;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#120	; ,
	stb	,s	; , a
	clr	2,s	;  b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  968 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[676]	pack1x((void*)led8);
;  0 "" 2
;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[55]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  971 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[678]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  973 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[679]	positd(10, 120);
;  0 "" 2
;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#120	; ,
	stb	2,s	; , a
	ldb	#10	; ,
	stb	,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb ,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  975 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[680]	pack1x((void*)led8);
;  0 "" 2
;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[55]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  978 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[682]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  980 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[683]	positd(20, 120);
;  0 "" 2
;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	#120	; ,
	stb	,s	; , a
	ldb	#20	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  982 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[684]	pack1x((void*)led8);
;  0 "" 2
;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[55]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;--- end asm ---
	leas	3,s	; ,,
	puls	y,pc	; 
	.globl _showInfo
_showInfo:
	pshs	u	; 
	leas	-4,s	; ,,
;----- asm -----
;  988 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[689]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  990 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[690]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  992 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[691]    Print_Str_d(100, -70, infoText);
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
	.globl _drawBlock
_drawBlock:
	pshs	u	; 
	leas	-7,s	; ,,
	stb	2,s	;  yofs, yofs
;----- asm -----
;  596 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[443]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  598 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[444]	intens(0x63);
;  0 "" 2
;--- end asm ---
	ldb	#99	; ,
	stb	4,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  600 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[445]	positd(0, yofs);
;  0 "" 2
;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , yofs
	stb	6,s	; , a
	clr	4,s	;  b
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 6,s	;  a
	ldb 4,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  603 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[447]	positd(x3d(blockX, blockY), y3d(blockX, 0, blockY));
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	clr	,-s	; 
	ldb	_blockX	; , blockX
	jsr	_y3d	; 
	stb	5,s	; , D.2514
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_x3d	; 
	stb	9,s	; , b
;----- asm -----
;  50 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[49]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
;----- asm -----
;  52 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[50]	Moveto_d(y,x);
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , D.2514
	stb	7,s	; , a
;----- asm -----
;  3315 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 7,s	;  a
	ldb 9,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  605 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[448]	pack1x((void*)(blockAnimation[blockAnimationStep]));
;  0 "" 2
;--- end asm ---
	ldb	_blockAnimationStep	; , blockAnimationStep
	sex		;extendqihi2: R:b -> R:d	; ,
	std	3,s	; ,
	aslb	; 
	rola	; 
	ldu	_blockAnimation	; , blockAnimation
	leax	d,u	;  tmp34, tmp33,
	ldx	,x	;  D.2521,
;----- asm -----
;  57 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[54]	dp_VIA_t1_cnt_lo = 0x80;
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
; Applied peep: 2 (no load after store)
;----- asm -----
;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[55]	Draw_VLp(x);
;  0 "" 2
;--- end asm ---
;----- asm -----
;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	stx	7,s	;  D.2521, x
; ORG>;----- asm -----
; ORG>;  59 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
; ORG>	; $ENR$[55]	Draw_VLp(x);
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	stx	7,s	;  D.2521, x
; ORG>;----- asm -----
; ORG>;  1610 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
; ORG>	ldx 7,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;--- end asm ---
	leas	10,s	; ,,
	puls	u,pc	; 
	.globl _blockMoving
_blockMoving:
	leas	-7,s	; ,,
;----- asm -----
;  697 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[507]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  699 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[508]	drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  701 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[509]	doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
;----- asm -----
;  703 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[510]	if (!blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbne	L78	; 
;----- asm -----
;  706 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[512]		uint8_t c0 = isField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	2,s	; , c0
;----- asm -----
;  708 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[513]		uint8_t c1 = isField(blockX + 1, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	1,s	; ,
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	2,s	; ,
	jsr	_isField	; 
	stb	4,s	; , c1
;----- asm -----
;  710 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[514]		uint8_t c2 = isField(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	6,s	; , c2
;----- asm -----
;  712 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[515]		char f0 = getField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	8,s	; , f0
;----- asm -----
;  714 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[516]		char f1 = getField(blockX + 1, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	4,s	; ,
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	5,s	; ,
	jsr	_getField	; 
	stb	10,s	; , f1
;----- asm -----
;  716 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[517]		char f2 = getField(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	12,s	; , f2
;----- asm -----
;  718 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[518]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	leas	6,s	; ,,
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L59	; 
	blo	L58	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbne	L57	; 
	bra	L79	; 
L58:
;----- asm -----
;  722 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[520]			if (!c0 || f0 == 'f') {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L61	; 
	ldb	4,s	; , f0
	cmpb	#102	;cmpqi:	; ,
	bne	L62	; 
L61:
;----- asm -----
;  724 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[521]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L62:
;----- asm -----
;  727 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[523]			break;
;  0 "" 2
;--- end asm ---
	bra	L57	; 
L59:
;----- asm -----
;  731 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[525]			if (!c0 || !c2) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L63	; 
	tst	3,s	;  c2
	bne	L64	; 
L63:
;----- asm -----
;  733 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[526]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L64:
;----- asm -----
;  736 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[528]			break;
;  0 "" 2
;--- end asm ---
	bra	L57	; 
L79:
;----- asm -----
;  740 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[530]			if (!c0 || ! c1) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L65	; 
	tst	2,s	;  c1
	bne	L66	; 
L65:
;----- asm -----
;  742 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[531]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L66:
;----- asm -----
;  745 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[533]			break;
;  0 "" 2
;--- end asm ---
L57:
;----- asm -----
;  750 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[537]		if (blockOrientation == Standing && blockX == endX && blockY == endY) {
;  0 "" 2
;--- end asm ---
	tst	_blockOrientation	;  blockOrientation
	bne	L67	; 
	ldb	_blockX	; , blockX
	cmpb	_endX	;cmpqi:	; , endX
	bne	L67	; 
	ldb	_blockY	; , blockY
	cmpb	_endY	;cmpqi:	; , endY
	bne	L67	; 
;----- asm -----
;  752 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[538]			blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  754 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[539]			gameState = BlockMovingAtEnd;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  756 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[540]			changeMusic(levelEndMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_levelEndMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  758 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[541]			*vecx = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	[_vecx]	; ,* vecx
	bra	L68	; 
L67:
;----- asm -----
;  762 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[544]			if (gameState != BlockFalling) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#5	;cmpqi:	; ,
	beq	L68	; 
;----- asm -----
;  764 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[545]				gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
L68:
;----- asm -----
;  770 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[550]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L70	; 
	blo	L69	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbne	L78	; 
	jmp	L80	; 
L69:
;----- asm -----
;  774 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[552]			if (f0 == 's' || f0 == 'h') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	beq	L72	; 
	cmpb	#104	;cmpqi:	; ,
	bne	L73	; 
L72:
;----- asm -----
;  776 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[553]				swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L73:
;----- asm -----
;  779 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[555]			break;
;  0 "" 2
;--- end asm ---
	jmp	L78	; 
L70:
;----- asm -----
;  783 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[557]			if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L74	; 
;----- asm -----
;  785 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[558]				swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L74:
;----- asm -----
;  788 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[560]			if (f2 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , f2
	cmpb	#115	;cmpqi:	; ,
	bne	L75	; 
;----- asm -----
;  790 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[561]				swatchSwitch(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L75:
;----- asm -----
;  793 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[563]			break;
;  0 "" 2
;--- end asm ---
	bra	L78	; 
L80:
;----- asm -----
;  797 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[565]			if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L76	; 
;----- asm -----
;  799 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[566]				swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L76:
;----- asm -----
;  802 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[568]			if (f1 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , f1
	cmpb	#115	;cmpqi:	; ,
	bne	L77	; 
;----- asm -----
;  804 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[569]				swatchSwitch(blockX + 1, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockX	; , blockX
	incb	; 
	stb	,s	; ,
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	1,s	; ,
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L77:
;----- asm -----
;  807 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[571]			break;
;  0 "" 2
;--- end asm ---
L78:
	leas	7,s	; ,,
	rts
	.globl _blockMovingToStart
_blockMovingToStart:
;----- asm -----
;  611 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[453]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  613 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[454]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  615 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[455]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.38, blockYOfs
	incb	;  blockYOfs.38
	stb	_blockYOfs	;  blockYOfs.38, blockYOfs
;----- asm -----
;  617 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[456]	if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.38
	bne	L83	; 
;----- asm -----
;  619 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[457]		gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
L83:
	rts
	.globl _sendCommand
_sendCommand:
	leas	-2,s	; ,,
	stb	,s	;  cmd, cmd
;----- asm -----
;  215 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[205]	uint8_t result;
;  0 "" 2
;  217 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[206]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  219 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[207]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , cmd
	jsr	_picWrite	; 
;----- asm -----
;  221 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[208]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , arg
	jsr	_picWrite	; 
;----- asm -----
;  223 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[209]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	1,s	; , result
;----- asm -----
;  225 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[210]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  227 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[211]	return result;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , result
	leas	2,s	; ,,
	rts
	.globl _readEeprom
_readEeprom:
;----- asm -----
;  244 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[224]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L87	; 
;----- asm -----
;  246 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[225]		return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;--- end asm ---
	pshs	b	;  address
	ldb	#4	; ,
	jsr	_sendCommand	; 
	leas	1,s	; ,,
	bra	L88	; 
L87:
;----- asm -----
;  249 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[227]		return 0xff;
;  0 "" 2
;--- end asm ---
	ldb	#-1	;  D.2415,
L88:
	rts
	.globl _startLevel
_startLevel:
	leas	-2,s	; ,,
;----- asm -----
;  507 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[373]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  tmp30, levelNumber
	aslb	;  tmp30
	jsr	_readEeprom	; 
	clra		;zero_extendqihi: R:b -> R:d	;  D.2494, D.2494
	std	_levelHighscore	;  D.2494, levelHighscore
;----- asm -----
;  509 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[374]	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  tmp32, levelNumber
	aslb	;  tmp32
	incb	;  tmp33
	jsr	_readEeprom	; 
	tfr	b,a	; ,
	clrb	; 
	ora	_levelHighscore	; , levelHighscore
	orb	_levelHighscore+1	; , levelHighscore
	std	_levelHighscore	;  levelHighscore.27, levelHighscore
;----- asm -----
;  511 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[375]	if (levelHighscore == 0) levelHighscore = 999;
;  0 "" 2
;--- end asm ---
	cmpd	#0	;  levelHighscore.27
	bne	L91	; 
	ldx	#999	; ,
	stx	_levelHighscore	; , levelHighscore
L91:
;----- asm -----
;  513 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[376]    level = levels[levelNumber];
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp39
	ldx	_levels,x	; , levels
	stx	_level	; , level
;----- asm -----
;  515 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[377]	initSwatches();
;  0 "" 2
;--- end asm ---
	jsr	_initSwatches	; 
;----- asm -----
;  517 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[378]	initLevel();
;  0 "" 2
;--- end asm ---
	jsr	_initLevel	; 
;----- asm -----
;  519 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[379]	blockX = level->start.x;
;  0 "" 2
;--- end asm ---
	ldx	_level	;  level, level
	ldb	2,x	; , <variable>.start.x
	stb	_blockX	; , blockX
;----- asm -----
;  521 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[380]	blockY = level->start.y;
;  0 "" 2
;--- end asm ---
	ldb	3,x	; , <variable>.start.y
	stb	_blockY	; , blockY
;----- asm -----
;  523 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[381]	blockAnimation = height2FallingLeft;
;  0 "" 2
;--- end asm ---
	ldx	#_height2FallingLeft	; ,
	stx	_blockAnimation	; , blockAnimation
;----- asm -----
;  525 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[382]	blockAnimationStep = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimationStep	;  blockAnimationStep
;----- asm -----
;  527 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[383]	blockAnimating = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockAnimating	;  blockAnimating
;----- asm -----
;  529 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[384]	blockOrientation = Standing;
;  0 "" 2
;--- end asm ---
	clr	_blockOrientation	;  blockOrientation
;----- asm -----
;  531 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[385]	blockYOfs = -30;
;  0 "" 2
;--- end asm ---
	ldb	#-30	; ,
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  533 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[386]	gameState = BlockMovingToStart;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  535 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[387]	changeMusic(startMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_startMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  537 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[388]	*vecx = 2;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  539 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[389]	moveCount = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_moveCount	; , moveCount
;----- asm -----
;  541 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[390]	updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
	leas	2,s	; ,,
	rts
	.globl _blockFalling
_blockFalling:
	leas	-1,s	; ,,
;----- asm -----
;  816 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[579]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  818 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[580]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	,s	; , blockYOfs.67
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  820 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[581]	if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	bgt	L94	; 
;----- asm -----
;  822 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[582]		drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;--- end asm ---
	negb	;  tmp28
	lda	,s	;mulqihi3	;  blockYOfs.67
	mul
		;movlsbqihi: D->B
	jsr	_drawBlock	; 
;----- asm -----
;  824 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[583]		doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
L94:
;----- asm -----
;  827 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[585]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	bne	L96	; 
;----- asm -----
;  829 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[586]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L96:
	leas	1,s	; ,,
	rts
	.globl _blockWaiting
_blockWaiting:
;----- asm -----
;  626 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[463]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  628 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[464]	drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  630 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[465]	joybit();
;  0 "" 2
;  2354 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Joy_Digital; BIOS call
;  0 "" 2
;  632 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[466]	if (pot0 < -10) {
;  0 "" 2
;--- end asm ---
	ldb	-14309	;  D.2529,
	cmpb	#-10	;cmpqi:	;  D.2529,
	bge	L98	; 
;----- asm -----
;  634 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[467]		moveBlock(Left);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_moveBlock	; 
;----- asm -----
;  636 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[468]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	jmp	L99	; 
L98:
	ldb	-14309	;  D.2530,
	cmpb	#10	;cmpqi:	;  D.2530,
	ble	L100	; 
;----- asm -----
;  639 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[470]		moveBlock(Right);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  641 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[471]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	bra	L99	; 
L100:
	ldb	-14308	;  D.2532,
	cmpb	#-10	;cmpqi:	;  D.2532,
	bge	L101	; 
;----- asm -----
;  644 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[473]		moveBlock(Down);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  646 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[474]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	bra	L99	; 
L101:
	ldb	-14308	;  D.2533,
	cmpb	#10	;cmpqi:	;  D.2533,
	ble	L99	; 
;----- asm -----
;  649 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[476]		moveBlock(Up);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  651 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[477]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
L99:
;----- asm -----
;  654 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[479]	if (gameState == BlockMoving) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#4	;cmpqi:	; ,
	bne	L102	; 
;----- asm -----
;  656 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[480]		changeMusic(movingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_movingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  658 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[481]		*vecx = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	[_vecx]	; ,* vecx
L102:
;----- asm -----
;  662 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[484]    	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  664 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[485]    	if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L105	; 
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[486]		levelNumber++;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.44, levelNumber
	incb	;  levelNumber.44
	stb	_levelNumber	;  levelNumber.44, levelNumber
;----- asm -----
;  668 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[487]		if (levelNumber >= levelCount) levelNumber = 0;
;  0 "" 2
;--- end asm ---
	cmpb	_levelCount	;cmpqi:	;  levelNumber.44, levelCount
	blo	L104	; 
	clr	_levelNumber	;  levelNumber
L104:
;----- asm -----
;  670 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[488]    		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L105:
	rts
LC0:
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
LC1:
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
LC2:
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
LC3:
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
	leas	-4,s	; ,,
;----- asm -----
;  862 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[608]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  864 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[609]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  866 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[610]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  868 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[611]    Print_Str_d(100, -70, "MAIN MENU�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	2,s	; , a
	ldb	#-70	; ,
	stb	3,s	; , b
	ldx	#LC0	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  870 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[612]    Print_Str_d(50, -110, "1 START GAME�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC1	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  872 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[613]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC2	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  874 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[614]    Print_Str_d(-10, -110, "3 BANKING TEST�");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC3	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  876 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[615]	if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L107	; 
;----- asm -----
;  878 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[616]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L107:
;----- asm -----
;  881 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[618]	if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L108	; 
;----- asm -----
;  883 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[619]		gameState = ClearMenu;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_gameState	; , gameState
L108:
;----- asm -----
;  886 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[621]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L110	; 
;----- asm -----
;  888 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[622]		sendCommand(CMD_SET_BANK, 1);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	,-s	; ,
	ldb	#5	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  890 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jmp 0xf000
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
L110:
	leas	4,s	; ,,
	puls	u,pc	; 
	.globl _writeEeprom
_writeEeprom:
;----- asm -----
;  233 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[216]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L113	; 
;----- asm -----
;  235 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	pshs	b	;  address
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  237 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , data
	stb	,-s	; ,
	ldb	#3	; ,
	jsr	_sendCommand	; 
	leas	2,s	; ,,
L113:
	rts
LC4:
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
LC5:
	.byte	0x33
	.byte	0x20
	.byte	0x59
	.byte	0x45
	.byte	0x53
	.byte	0x80
	.byte	0x00
LC6:
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
;  896 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[629]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  898 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[630]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	4,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  900 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[631]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  902 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[632]    Print_Str_d(100, -80, "CLEAR SCORE?�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	4,s	; , a
	ldb	#-80	; ,
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
;  904 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[633]    Print_Str_d(50, -110, "3 YES�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
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
;  906 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[634]    Print_Str_d(20, -110, "4 NO�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
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
;  908 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[635]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L115	; 
;----- asm -----
;  910 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[636]		for (uint8_t i = 0; i < 6; i++) {
;  0 "" 2
;--- end asm ---
	clr	,s	;  i
L116:
;----- asm -----
;  912 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[637]			writeEeprom(i, 0xff);
;  0 "" 2
;--- end asm ---
	ldb	#-1	; ,
	stb	,-s	; ,
	ldb	1,s	; , i
	jsr	_writeEeprom	; 
	inc	1,s	;  i
	leas	1,s	; ,,
	ldb	,s	; , i
	cmpb	#6	;cmpqi:	; ,
	bne	L116	; 
;----- asm -----
;  915 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[639]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L115:
;----- asm -----
;  918 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[641]	if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L118	; 
;----- asm -----
;  920 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[642]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L118:
	leas	5,s	; ,,
	puls	u,pc	; 
	.globl _blockMovingAtEnd
_blockMovingAtEnd:
	leas	-2,s	; ,,
;----- asm -----
;  836 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[592]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  838 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[593]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  840 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[594]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.69, blockYOfs
	incb	;  blockYOfs.69
	stb	_blockYOfs	;  blockYOfs.69, blockYOfs
;----- asm -----
;  842 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[595]	if (blockYOfs == 30) {
;  0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	;  blockYOfs.69,
	lbne	L124	; 
;----- asm -----
;  844 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[596]		if (moveCount < levelHighscore) {
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.70, moveCount
	cmpx	_levelHighscore	;cmphi:	;  moveCount.70, levelHighscore
	bhs	L122	; 
;----- asm -----
;  846 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[597]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	aslb	; 
	stb	,s	; ,
	tfr	x,d	;  moveCount.70,
	pshs	b	; 
	ldb	1,s	; ,
	jsr	_writeEeprom	; 
;----- asm -----
;  848 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[598]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  tmp31, levelNumber
	aslb	;  tmp31
	incb	;  tmp31
	stb	2,s	;  tmp31,
	ldd	_moveCount	;  tmp33, moveCount
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	pshs	b	;  tmp33
	ldb	3,s	; ,
	jsr	_writeEeprom	; 
	leas	2,s	; ,,
L122:
;----- asm -----
;  851 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[600]		levelNumber++;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.73, levelNumber
	incb	;  levelNumber.73
	stb	_levelNumber	;  levelNumber.73, levelNumber
;----- asm -----
;  853 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[601]		if (levelNumber >= levelCount) levelNumber = 0;
;  0 "" 2
;--- end asm ---
	cmpb	_levelCount	;cmpqi:	;  levelNumber.73, levelCount
	blo	L123	; 
	clr	_levelNumber	;  levelNumber
L123:
;----- asm -----
;  855 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[602]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L124:
	leas	2,s	; ,,
	rts
	.globl _main
_main:
	pshs	y,u	; 
	leas	-4,s	; ,,
;----- asm -----
;  998 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[696]	*vecx = 4;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  1002 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[699]	picAvailable = 0;
;  0 "" 2
;--- end asm ---
	clr	_picAvailable	;  picAvailable
;----- asm -----
;  1004 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[700]	sendCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  1006 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[701]	sendCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  1008 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[702]	if (sendCommand(CMD_VERSION, 0) == 4) {
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
	leas	3,s	; ,,
	cmpb	#4	;cmpqi:	;  D.2649,
	bne	L126	; 
;----- asm -----
;  1010 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[703]		picAvailable = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_picAvailable	; , picAvailable
L126:
;----- asm -----
;  1015 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[707]	memcpy(infoText, "001 - 999�", 10);
;  0 "" 2
;--- end asm ---
	ldx	#12336	; ,
	stx	_infoText	; , infoText
	ldx	#12576	; ,
	stx	_infoText+2	; , infoText
	ldx	#11552	; ,
	stx	_infoText+4	; , infoText
	ldx	#14649	; ,
	stx	_infoText+6	; , infoText
	ldx	#14720	; ,
	stx	_infoText+8	; , infoText
;----- asm -----
;  1019 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[710]	epot0 = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14305	; ,
;----- asm -----
;  1021 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[711]	epot1 = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	-14304	; ,
;----- asm -----
;  1023 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[712]	epot2 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14303	; 
;----- asm -----
;  1025 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[713]	epot3 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14302	; 
;----- asm -----
;  1028 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[715]	gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
;----- asm -----
;  1030 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[716]	startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
;----- asm -----
;  1034 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[719]	while (1) {
;  0 "" 2
;--- end asm ---
L138:
;----- asm -----
;  1037 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[721]		frwait();
;  0 "" 2
;  97 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  1040 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[723]		switch (gameState) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#6	;cmpqi:	; ,
	lbhi	L127	; 
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp43
	jmp	[L135,x]	; , tmp43
L135:
	.word L128
	.word L129
	.word L130
	.word L131
	.word L132
	.word L133
	.word L134
L128:
;----- asm -----
;  1044 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[725]        			mainMenu();
;  0 "" 2
;--- end asm ---
	jsr	_mainMenu	; 
;----- asm -----
;  1047 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[727]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L127	; 
L129:
;----- asm -----
;  1051 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[729]				clearMenu();
;  0 "" 2
;--- end asm ---
	jsr	_clearMenu	; 
;----- asm -----
;  1054 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[731]				break;
;  0 "" 2
;--- end asm ---
	jmp	L127	; 
L130:
;----- asm -----
;  1058 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[733]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1060 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[734]        			blockMovingToStart();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingToStart	; 
;----- asm -----
;  1062 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[735]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L127	; 
L131:
;----- asm -----
;  1066 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[737]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1068 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[738]        			blockWaiting();
;  0 "" 2
;--- end asm ---
	jsr	_blockWaiting	; 
;----- asm -----
;  1070 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[739]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L127	; 
L132:
;----- asm -----
;  1074 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[741]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1076 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[742]        			blockMoving();
;  0 "" 2
;--- end asm ---
	jsr	_blockMoving	; 
;----- asm -----
;  1078 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[743]        			break;
;  0 "" 2
;--- end asm ---
	bra	L127	; 
L133:
;----- asm -----
;  1082 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[745]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1084 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[746]        			blockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_blockFalling	; 
;----- asm -----
;  1086 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[747]        			break;
;  0 "" 2
;--- end asm ---
	bra	L127	; 
L134:
;----- asm -----
;  1090 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[749]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1092 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[750]        			blockMovingAtEnd();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingAtEnd	; 
;----- asm -----
;  1094 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[751]        			break;
;  0 "" 2
;--- end asm ---
L127:
;----- asm -----
;  1099 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[755]		if (gameState > ClearMenu) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#1	;cmpqi:	; ,
	lbls	L138	; 
;----- asm -----
;  1101 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[756]    			DP_to_C8();
;  0 "" 2
;  316 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_C8; BIOS call
;  0 "" 2
;  1103 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[757]    			replay(currentMusic);
;  0 "" 2
;--- end asm ---
	ldx	_currentMusic	; , currentMusic
	stx	2,s	; , u
;----- asm -----
;  2917 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldu 2,s	;  u
	jsr ___Init_Music_chk; BIOS call
;  0 "" 2
;  1105 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[758]    			DP_to_D0();
;  0 "" 2
;  300 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_D0; BIOS call
;  0 "" 2
;  1107 "/home/frank/bin/Vide2.02/Vide/../../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[759]    			reqout();
;  0 "" 2
;  2880 "/home/frank/bin/Vide2.02/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Do_Sound; BIOS call
;  0 "" 2
;--- end asm ---
	jmp	L138	; 
	.globl _height2FallingLeft0
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
	.globl _startMusic
	.area .text
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
	.globl	_levelHighscore
_levelHighscore:	.blkb	2
	.globl	_picAvailable
_picAvailable:	.blkb	1
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
	.globl	_gameState
_gameState:	.blkb	1
