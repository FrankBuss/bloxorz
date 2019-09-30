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
;  -fno-time-report -I/home/frank/bin/Vide/C/PeerC/vectrex/include
;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
;  /home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c
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
;  194 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[184]	while (1) {
;  0 "" 2
;--- end asm ---
L2:
;----- asm -----
;  196 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[185]		frwait();
;  0 "" 2
;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  198 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[186]         Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  200 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[187]         Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  202 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[188]         Print_Str_d(-10, -110, msg);
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	sty	,s	;  msg, u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
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
;  234 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[213]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	9,s	; , muls
	ldd	#10	; ,
	std	11,s	; , muls
	ldd	#1	; ,
	std	13,s	; , muls
;----- asm -----
;  236 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[214]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	leay	,x	;  number.118, number
	cmpx	#999	;cmphi:	;  number.118,
	bls	L5	; 
	ldy	#999	;  number.118,
L5:
;----- asm -----
;  238 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[215]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	9,s	; ,,
	stx	5,s	; , ivtmp.114
	ldd	21,s	; , text
	std	7,s	; , ivtmp.116
L9:
;----- asm -----
;  240 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[216]		uint8_t d = 0;
;  0 "" 2
;  242 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[217]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldx	5,s	; , ivtmp.114
	ldx	,x	; , muls
	stx	,s	; , D.2288
	pshs	y	;cmphi: R:y with R:x	;  number.118,
	cmpx	,s++	;cmphi:	; 
	bhi	L6	; 
	tfr	x,d	; ,
	nega
	negb
	sbca	#0
	std	3,s	; , ivtmp.104
	tfr	y,d	;  number.118,
	subd	,s	;subhi: R:d -= ,s	; , D.2288
	tfr	d,y	; , number.118
	clr	2,s	;  d
L8:
;----- asm -----
;  244 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[218]			d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  246 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[219]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldd	3,s	; , ivtmp.104
	leau	d,y	;  number.117,, number.118
	ldd	,s	; , D.2288
	leax	d,u	;  tmp85,, number.117
	pshs	x	;cmphi: R:x with R:d	;  tmp85,
	cmpd	,s++	;cmphi:	; 
	bhi	L7	; 
	leay	,u	;  number.118, number.117
	bra	L8	; 
L6:
	clr	2,s	;  d
L7:
;----- asm -----
;  249 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , d
	addb	#48	; ,
	ldx	7,s	; , ivtmp.116
	leax	1,x	; ,,
	stx	7,s	; , ivtmp.116
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	5,s	; , ivtmp.114
	leax	2,x	; ,,
	stx	5,s	; , ivtmp.114
	tfr	s,d	; ,
	addd	#15	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L9	; 
	leas	15,s	; ,,
	puls	y,u,pc	; 
	.globl _changeMusic
_changeMusic:
;----- asm -----
;  266 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[234]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  268 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[235]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	stx	_currentMusic	;  music, currentMusic
	rts
	.globl _drawField
_drawField:
	leas	-1,s	; ,,
;----- asm -----
;  346 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[285]	intens(0x35);
;  0 "" 2
;--- end asm ---
	ldb	#53	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  361 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs a, b, dp, x, u
;  0 "" 2
;  362 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda #0xd0
;  0 "" 2
;  363 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		tfr a, dp
;  0 "" 2
;  364 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldx #0
;  0 "" 2
;  365 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb _lineCount
;  0 "" 2
;  366 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	drawFieldLoop:
;  0 "" 2
;  367 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs b
;  0 "" 2
;  368 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  369 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jsr 0xf354
;  0 "" 2
;  370 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  371 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda _lineY0,x
;  0 "" 2
;  372 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb _lineX0,x
;  0 "" 2
;  373 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  374 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jsr 0xf2fc
;  0 "" 2
;  375 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  376 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda _lineY1,x
;  0 "" 2
;  377 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb _lineX1,x
;  0 "" 2
;  378 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		suba _lineY0,x
;  0 "" 2
;  379 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		subb _lineX0,x
;  0 "" 2
;  380 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  381 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jsr 0xf3df
;  0 "" 2
;  382 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  383 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda ,x+
;  0 "" 2
;  384 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls b
;  0 "" 2
;  385 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		decb
;  0 "" 2
;  386 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		bne drawFieldLoop
;  0 "" 2
;  387 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls a, b, dp, x, u
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
	rts
LC0:
	.byte	0x47
	.byte	0x41
	.byte	0x4D
	.byte	0x45
	.byte	0x20
	.byte	0x4F
	.byte	0x56
	.byte	0x45
	.byte	0x52
	.byte	0x80
	.byte	0x00
	.globl _arcadeEnd
_arcadeEnd:
	pshs	u	; 
	leas	-4,s	; ,,
;----- asm -----
;  778 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[564]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  780 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[565]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  782 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[566]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  784 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[567]    Print_Str_d(100, -70, "GAME OVER�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	2,s	; , a
	ldb	#-70	; ,
	stb	3,s	; , b
	ldx	#LC0	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  786 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[568]    Print_Str_d(50, -110, infoText);
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#_infoText	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  788 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[569]	if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L17	; 
;----- asm -----
;  790 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[570]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L17:
;----- asm -----
;  793 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[572]	if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L18	; 
;----- asm -----
;  795 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[573]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L18:
;----- asm -----
;  798 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[575]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L19	; 
;----- asm -----
;  800 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[576]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L19:
;----- asm -----
;  803 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[578]	if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L21	; 
;----- asm -----
;  805 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[579]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L21:
	leas	4,s	; ,,
	puls	u,pc	; 
	.globl _showInfo2
_showInfo2:
	pshs	y	; 
	leas	-3,s	; ,,
;----- asm -----
;  854 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[615]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  856 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[616]	intens(0x50);
;  0 "" 2
;--- end asm ---
	ldb	#80	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  859 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[618]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  861 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[619]	positd(-50, 100);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#100	; ,
	stb	2,s	; , a
	ldb	#-50	; ,
	stb	,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb ,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  863 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[620]	pack1x((void*)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldy	#_led8	;  tmp27,
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  866 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[622]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  868 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[623]	positd(-40, 110);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#110	; ,
	stb	,s	; , a
	ldb	#-40	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  870 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[624]	pack1x((void*)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  873 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[626]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  875 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[627]	positd(-30, 120);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#120	; ,
	stb	2,s	; , a
	ldb	#-30	; ,
	stb	,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb ,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  877 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[628]	pack1x((void*)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  880 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[630]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  882 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[631]	positd(0, 120);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#120	; ,
	stb	,s	; , a
	clr	2,s	;  b
;----- asm -----
;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  884 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[632]	pack1x((void*)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  887 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[634]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  889 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[635]	positd(10, 120);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#120	; ,
	stb	2,s	; , a
	ldb	#10	; ,
	stb	,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb ,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  891 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[636]	pack1x((void*)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  894 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[638]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  896 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[639]	positd(20, 120);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#120	; ,
	stb	,s	; , a
	ldb	#20	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  898 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[640]	pack1x((void*)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
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
;  904 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[645]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  906 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[646]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  908 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[647]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	3,s	; , a
	ldb	#-70	; ,
	stb	2,s	; , b
	ldx	#_infoText	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;--- end asm ---
	leas	4,s	; ,,
	puls	u,pc	; 
	.globl _blockMovingToStart
_blockMovingToStart:
;----- asm -----
;  393 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[331]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  395 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[332]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  397 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[333]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.29, blockYOfs
	incb	;  blockYOfs.29
	stb	_blockYOfs	;  blockYOfs.29, blockYOfs
;----- asm -----
;  399 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[334]	if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.29
	bne	L28	; 
;----- asm -----
;  401 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[335]		gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	stb	_gameState	; , gameState
L28:
	rts
	.globl _updateInfoText
_updateInfoText:
	pshs	u	; 
;----- asm -----
;  256 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[227]	memcpy(infoText, "001 - 999�", 10);
;  0 "" 2
;--- end asm ---
	ldx	#_infoText	;  tmp27,
	ldu	#12336	; ,
	stu	,x	; , infoText
	ldu	#12576	; ,
	stu	_infoText+2	; , infoText
	ldu	#11552	; ,
	stu	_infoText+4	; , infoText
	ldu	#14649	; ,
	stu	_infoText+6	; , infoText
	ldu	#14720	; ,
	stu	_infoText+8	; , infoText
;----- asm -----
;  258 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]    	itoa(moveCount, &infoText[0]);
;  0 "" 2
;--- end asm ---
	pshs	x	;  tmp27
	ldx	_moveCount	; , moveCount
	jsr	_itoa	; 
;----- asm -----
;  260 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]    	itoa(levelNumber + levelOffset, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldb	_levelOffset	;  tmp35, levelOffset
	addb	_levelNumber	;  tmp35, levelNumber
	ldx	#_infoText+6	; ,
	stx	,--s	; ,
	clra		;zero_extendqihi: R:b -> R:d	;  tmp35,
	tfr	d,x	; ,
	jsr	_itoa	; 
	leas	4,s	; ,,
	puls	u,pc	; 
	.globl _moveBlock
_moveBlock:
;----- asm -----
;  274 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[240]	moveBlockImpl(move);
;  0 "" 2
;--- end asm ---
	jsr	_moveBlockImpl	; 
;----- asm -----
;  276 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[241]	if (!arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	bne	L34	; 
;----- asm -----
;  278 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[242]		if (moveCount < 999) moveCount++;
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.10, moveCount
	cmpx	#998	;cmphi:	;  moveCount.10,
	bhi	L33	; 
	leax	1,x	; ,, moveCount.10
	stx	_moveCount	; , moveCount
L33:
;----- asm -----
;  280 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[243]		updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
L34:
	rts
	.globl _startBlockFalling
_startBlockFalling:
;----- asm -----
;  287 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[249]	gameState = BlockFalling;
;  0 "" 2
;--- end asm ---
	ldb	#7	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  289 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[250]	blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  291 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[251]	moveBlock(lastBlockDirection);
;  0 "" 2
;--- end asm ---
	ldb	_lastBlockDirection	; , lastBlockDirection
	jsr	_moveBlock	; 
;----- asm -----
;  293 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[252]	changeMusic(fallingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_fallingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  295 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[253]	*vecx = 0;
;  0 "" 2
;--- end asm ---
	clr	[_vecx]	; * vecx
	rts
	.globl _blockMoving
_blockMoving:
	leas	-7,s	; ,,
;----- asm -----
;  492 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[392]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  494 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[393]	drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  496 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[394]	doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
;----- asm -----
;  498 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[395]	if (!blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbne	L61	; 
;----- asm -----
;  501 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[397]		uint8_t c0 = isField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	2,s	; , c0
;----- asm -----
;  503 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[398]		uint8_t c1 = isField(blockX + 1, blockY);
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
;  505 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[399]		uint8_t c2 = isField(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	6,s	; , c2
;----- asm -----
;  507 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[400]		char f0 = getField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	8,s	; , f0
;----- asm -----
;  509 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[401]		char f1 = getField(blockX + 1, blockY);
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
;  511 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[402]		char f2 = getField(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	12,s	; , f2
;----- asm -----
;  513 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[403]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	leas	6,s	; ,,
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L41	; 
	blo	L40	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbne	L39	; 
	bra	L62	; 
L40:
;----- asm -----
;  517 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[405]			if (!c0 || f0 == 'f') {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L43	; 
	ldb	4,s	; , f0
	cmpb	#102	;cmpqi:	; ,
	bne	L44	; 
L43:
;----- asm -----
;  519 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[406]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L44:
;----- asm -----
;  522 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[408]			break;
;  0 "" 2
;--- end asm ---
	bra	L39	; 
L41:
;----- asm -----
;  526 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[410]			if (!c0 || !c2) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L45	; 
	tst	3,s	;  c2
	bne	L46	; 
L45:
;----- asm -----
;  528 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[411]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L46:
;----- asm -----
;  531 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[413]			break;
;  0 "" 2
;--- end asm ---
	bra	L39	; 
L62:
;----- asm -----
;  535 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[415]			if (!c0 || ! c1) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L47	; 
	tst	2,s	;  c1
	bne	L48	; 
L47:
;----- asm -----
;  537 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[416]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L48:
;----- asm -----
;  540 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[418]			break;
;  0 "" 2
;--- end asm ---
L39:
;----- asm -----
;  545 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[422]		if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_blockOrientation	;  blockOrientation
	bne	L49	; 
	ldb	_blockX	; , blockX
	cmpb	_endX	;cmpqi:	; , endX
	bne	L49	; 
	ldb	_blockY	; , blockY
	cmpb	_endY	;cmpqi:	; , endY
	bne	L49	; 
	tst	_splitMode	;  splitMode
	bne	L49	; 
;----- asm -----
;  547 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[423]			blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  549 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[424]			gameState = BlockMovingAtEnd;
;  0 "" 2
;--- end asm ---
	ldb	#8	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  551 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[425]			changeMusic(levelEndMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_levelEndMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  553 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[426]			*vecx = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	[_vecx]	; ,* vecx
	bra	L50	; 
L49:
;----- asm -----
;  557 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[429]			if (gameState != BlockFalling) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#7	;cmpqi:	; ,
	beq	L50	; 
;----- asm -----
;  559 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[430]				gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	stb	_gameState	; , gameState
L50:
;----- asm -----
;  565 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[435]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L53	; 
	blo	L52	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbne	L51	; 
	jmp	L63	; 
L52:
;----- asm -----
;  569 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[437]			if (f0 == 's' || f0 == 'h' || f0 == 'v') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	beq	L55	; 
	cmpb	#104	;cmpqi:	; ,
	beq	L55	; 
	cmpb	#118	;cmpqi:	; ,
	bne	L56	; 
L55:
;----- asm -----
;  571 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[438]				swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L56:
;----- asm -----
;  574 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[440]			break;
;  0 "" 2
;--- end asm ---
	jmp	L51	; 
L53:
;----- asm -----
;  578 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[442]			if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L57	; 
;----- asm -----
;  580 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[443]				swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L57:
;----- asm -----
;  583 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[445]			if (f2 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , f2
	cmpb	#115	;cmpqi:	; ,
	bne	L58	; 
;----- asm -----
;  585 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[446]				swatchSwitch(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L58:
;----- asm -----
;  588 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[448]			break;
;  0 "" 2
;--- end asm ---
	bra	L51	; 
L63:
;----- asm -----
;  592 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[450]			if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L59	; 
;----- asm -----
;  594 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[451]				swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L59:
;----- asm -----
;  597 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[453]			if (f1 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , f1
	cmpb	#115	;cmpqi:	; ,
	bne	L60	; 
;----- asm -----
;  599 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[454]				swatchSwitch(blockX + 1, blockY);
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
L60:
;----- asm -----
;  602 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[456]			break;
;  0 "" 2
;--- end asm ---
L51:
;----- asm -----
;  607 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[460]		if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L61	; 
;----- asm -----
;  609 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[461]			testMerge();
;  0 "" 2
;--- end asm ---
	jsr	_testMerge	; 
L61:
	leas	7,s	; ,,
	rts
	.globl _sendCommand
_sendCommand:
	leas	-2,s	; ,,
	stb	,s	;  cmd, cmd
;----- asm -----
;  168 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[167]	uint8_t result;
;  0 "" 2
;  170 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[168]	picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  172 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[169]	picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , cmd
	jsr	_picWrite	; 
;----- asm -----
;  174 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[170]	picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , arg
	jsr	_picWrite	; 
;----- asm -----
;  176 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[171]	result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	1,s	; , result
;----- asm -----
;  178 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[172]	delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  180 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[173]	return result;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , result
	leas	2,s	; ,,
	rts
	.globl _readEeprom
_readEeprom:
;----- asm -----
;  220 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[202]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L67	; 
;----- asm -----
;  222 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[203]		return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;--- end asm ---
	pshs	b	;  address
	ldb	#4	; ,
	jsr	_sendCommand	; 
	leas	1,s	; ,,
	bra	L68	; 
L67:
;----- asm -----
;  225 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[205]		return 0xff;
;  0 "" 2
;--- end asm ---
	ldb	#-1	;  D.2272,
L68:
	rts
	.globl _startLevel
_startLevel:
	pshs	y,u	; 
	leas	-4,s	; ,,
;----- asm -----
;  301 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[258]	if (arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	beq	L71	; 
;----- asm -----
;  303 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[259]		levelNumber = arcadeLevels[arcadeSelection][arcadeIndex] - 1;
;  0 "" 2
;--- end asm ---
	ldb	_arcadeIndex	; , arcadeIndex
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,y	; , arcadeIndex
	ldb	_arcadeSelection	; , arcadeSelection
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	2,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	ldu	2,s	; ,
	leax	d,u	;  tmp35, tmp34,
	exg	d,y	; , arcadeIndex
	leax	d,x	;  tmp36,, tmp36
	exg	d,y	; , arcadeIndex
	ldb	_arcadeLevels,x	; , arcadeLevels
	decb	; 
	stb	_levelNumber	; , levelNumber
	bra	L72	; 
L71:
;----- asm -----
;  306 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[261]	    	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  tmp38, levelNumber
	aslb	;  tmp38
	jsr	_readEeprom	; 
	clra		;zero_extendqihi: R:b -> R:d	;  D.2323, D.2323
	std	_levelHighscore	;  D.2323, levelHighscore
;----- asm -----
;  308 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[262]	    	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  tmp40, levelNumber
	aslb	;  tmp40
	incb	;  tmp41
	jsr	_readEeprom	; 
	tfr	b,a	; ,
	clrb	; 
	ora	_levelHighscore	; , levelHighscore
	orb	_levelHighscore+1	; , levelHighscore
	std	_levelHighscore	;  levelHighscore.22, levelHighscore
;----- asm -----
;  310 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[263]	    	if (levelHighscore == 0) levelHighscore = 999;
;  0 "" 2
;--- end asm ---
	cmpd	#0	;  levelHighscore.22
	bne	L72	; 
	ldx	#999	; ,
	stx	_levelHighscore	; , levelHighscore
L72:
;----- asm -----
;  313 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[265]    level = levels[levelNumber];
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp47
	ldx	_levels,x	; , levels
	stx	_level	; , level
;----- asm -----
;  315 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[266]	initSwatches();
;  0 "" 2
;--- end asm ---
	jsr	_initSwatches	; 
;----- asm -----
;  317 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[267]	initLevel();
;  0 "" 2
;--- end asm ---
	jsr	_initLevel	; 
;----- asm -----
;  319 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[268]	blockX = level->start.x;
;  0 "" 2
;--- end asm ---
	ldx	_level	;  level, level
	ldb	2,x	; , <variable>.start.x
	stb	_blockX	; , blockX
;----- asm -----
;  321 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[269]	blockY = level->start.y;
;  0 "" 2
;--- end asm ---
	ldb	3,x	; , <variable>.start.y
	stb	_blockY	; , blockY
;----- asm -----
;  323 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[270]	blockStartLevel();
;  0 "" 2
;--- end asm ---
	jsr	_blockStartLevel	; 
;----- asm -----
;  325 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[271]	blockYOfs = -30;
;  0 "" 2
;--- end asm ---
	ldb	#-30	; ,
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  327 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[272]	gameState = BlockMovingToStart;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  329 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]	changeMusic(startMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_startMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  331 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[274]	*vecx = 2;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  333 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[275]	if (!arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	bne	L74	; 
;----- asm -----
;  335 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[276]		moveCount = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_moveCount	; , moveCount
;----- asm -----
;  337 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[277]		updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
L74:
	leas	4,s	; ,,
	puls	y,u,pc	; 
LC1:
	.byte	0x41
	.byte	0x52
	.byte	0x43
	.byte	0x41
	.byte	0x44
	.byte	0x45
	.byte	0x20
	.byte	0x4D
	.byte	0x4F
	.byte	0x44
	.byte	0x45
	.byte	0x80
	.byte	0x00
LC2:
	.byte	0x31
	.byte	0x20
	.byte	0x53
	.byte	0x45
	.byte	0x54
	.byte	0x20
	.byte	0x31
	.byte	0x80
	.byte	0x00
LC3:
	.byte	0x32
	.byte	0x20
	.byte	0x53
	.byte	0x45
	.byte	0x54
	.byte	0x20
	.byte	0x32
	.byte	0x80
	.byte	0x00
LC4:
	.byte	0x33
	.byte	0x20
	.byte	0x53
	.byte	0x45
	.byte	0x54
	.byte	0x20
	.byte	0x33
	.byte	0x80
	.byte	0x00
LC5:
	.byte	0x34
	.byte	0x20
	.byte	0x53
	.byte	0x45
	.byte	0x54
	.byte	0x20
	.byte	0x34
	.byte	0x80
	.byte	0x00
	.globl _arcadeMenu
_arcadeMenu:
	pshs	u	; 
	leas	-4,s	; ,,
;----- asm -----
;  730 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[536]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  732 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[537]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  734 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[538]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  736 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[539]    Print_Str_d(100, -70, "ARCADE MODE�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	3,s	; , a
	ldb	#-70	; ,
	stb	2,s	; , b
	ldx	#LC1	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  738 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[540]    Print_Str_d(50, -110, "1 SET 1�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC2	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  740 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[541]    Print_Str_d(20, -110, "2 SET 2�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC3	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  742 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[542]    Print_Str_d(-10, -110, "3 SET 3�");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC4	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  744 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[543]    Print_Str_d(-40, -110, "4 SET 4�");
;  0 "" 2
;--- end asm ---
	ldb	#-40	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC5	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  746 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[544]	if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L76	; 
;----- asm -----
;  748 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[545]		arcadeSelection = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeSelection	;  arcadeSelection
;----- asm -----
;  750 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[546]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L76:
;----- asm -----
;  753 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[548]	if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L77	; 
;----- asm -----
;  755 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[549]		arcadeSelection = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  757 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[550]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L77:
;----- asm -----
;  760 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[552]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L78	; 
;----- asm -----
;  762 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[553]		arcadeSelection = 2;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  764 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[554]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L78:
;----- asm -----
;  767 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[556]	if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L80	; 
;----- asm -----
;  769 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[557]		arcadeSelection = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  771 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[558]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L80:
	leas	4,s	; ,,
	puls	u,pc	; 
LC6:
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
LC7:
	.byte	0x31
	.byte	0x20
	.byte	0x50
	.byte	0x55
	.byte	0x5A
	.byte	0x5A
	.byte	0x4C
	.byte	0x45
	.byte	0x20
	.byte	0x4D
	.byte	0x4F
	.byte	0x44
	.byte	0x45
	.byte	0x80
	.byte	0x00
LC8:
	.byte	0x32
	.byte	0x20
	.byte	0x41
	.byte	0x52
	.byte	0x43
	.byte	0x41
	.byte	0x44
	.byte	0x45
	.byte	0x20
	.byte	0x4D
	.byte	0x4F
	.byte	0x44
	.byte	0x45
	.byte	0x80
	.byte	0x00
LC9:
	.byte	0x33
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
	.globl _mainMenu
_mainMenu:
	pshs	u	; 
	leas	-4,s	; ,,
;----- asm -----
;  685 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[510]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  687 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[511]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  689 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[512]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  691 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[513]    Print_Str_d(100, -70, "MAIN MENU�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	2,s	; , a
	ldb	#-70	; ,
	stb	3,s	; , b
	ldx	#LC6	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  693 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[514]    Print_Str_d(50, -110, "1 PUZZLE MODE�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC7	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  695 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[515]    Print_Str_d(20, -110, "2 ARCADE MODE�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC8	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  697 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[516]    Print_Str_d(-10, -110, "3 CLEAR HIGHSCORE�");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC9	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  699 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[517]	if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L82	; 
;----- asm -----
;  701 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[518]		arcadeMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeMode	;  arcadeMode
;----- asm -----
;  703 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[519]		levelNumber = 0;
;  0 "" 2
;--- end asm ---
	clr	_levelNumber	;  levelNumber
;----- asm -----
;  705 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[520]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L82:
;----- asm -----
;  708 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[522]	if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L83	; 
;----- asm -----
;  710 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[523]		frames = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_frames	; , frames
;----- asm -----
;  712 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[524]		moveCount = 0;
;  0 "" 2
;--- end asm ---
	std	_moveCount	; , moveCount
;----- asm -----
;  714 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[525]		arcadeMode = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_arcadeMode	; , arcadeMode
;----- asm -----
;  716 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[526]		arcadeIndex = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeIndex	;  arcadeIndex
;----- asm -----
;  718 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[527]		gameState = ArcadeMenu;
;  0 "" 2
;--- end asm ---
	stb	_gameState	; , gameState
L83:
;----- asm -----
;  721 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[529]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L85	; 
;----- asm -----
;  723 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[530]		gameState = ClearMenu;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
L85:
	leas	4,s	; ,,
	puls	u,pc	; 
	.globl _blockFalling
_blockFalling:
	leas	-1,s	; ,,
;----- asm -----
;  617 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[468]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  619 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[469]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	,s	; , blockYOfs.58
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  621 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[470]	if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	bgt	L87	; 
;----- asm -----
;  623 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[471]		drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;--- end asm ---
	negb	;  tmp28
	lda	,s	;mulqihi3	;  blockYOfs.58
	mul
		;movlsbqihi: D->B
	jsr	_drawBlock	; 
;----- asm -----
;  625 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[472]		doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
L87:
;----- asm -----
;  628 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[474]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	bne	L89	; 
;----- asm -----
;  630 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[475]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L89:
	leas	1,s	; ,,
	rts
	.globl _writeEeprom
_writeEeprom:
;----- asm -----
;  209 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[194]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L92	; 
;----- asm -----
;  211 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[195]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	pshs	b	;  address
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  213 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[196]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , data
	stb	,-s	; ,
	ldb	#3	; ,
	jsr	_sendCommand	; 
	leas	2,s	; ,,
L92:
	rts
LC10:
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
LC11:
	.byte	0x33
	.byte	0x20
	.byte	0x59
	.byte	0x45
	.byte	0x53
	.byte	0x80
	.byte	0x00
LC12:
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
;  812 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[585]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  814 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[586]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	4,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  816 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[587]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  818 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[588]    Print_Str_d(100, -80, "CLEAR SCORE?�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	4,s	; , a
	ldb	#-80	; ,
	stb	3,s	; , b
	ldx	#LC10	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  820 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[589]    Print_Str_d(50, -110, "3 YES�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	4,s	; , b
	ldx	#LC11	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 4,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  822 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[590]    Print_Str_d(20, -110, "4 NO�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	4,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC12	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  824 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[591]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L94	; 
;----- asm -----
;  826 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[592]		for (uint8_t i = 0; i < 6; i++) {
;  0 "" 2
;--- end asm ---
	clr	,s	;  i
L95:
;----- asm -----
;  828 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[593]			writeEeprom(i, 0xff);
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
	bne	L95	; 
;----- asm -----
;  831 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[595]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L94:
;----- asm -----
;  834 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[597]	if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L97	; 
;----- asm -----
;  836 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[598]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L97:
	leas	5,s	; ,,
	puls	u,pc	; 
	.globl _blockMovingAtEnd
_blockMovingAtEnd:
	pshs	y,u	; 
	leas	-4,s	; ,,
;----- asm -----
;  637 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[481]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  639 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[482]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  641 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[483]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.60, blockYOfs
	incb	;  blockYOfs.60
	stb	_blockYOfs	;  blockYOfs.60, blockYOfs
;----- asm -----
;  643 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[484]	if (blockYOfs == 30) {
;  0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	;  blockYOfs.60,
	lbne	L105	; 
;----- asm -----
;  645 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[485]		if (moveCount < levelHighscore) {
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.61, moveCount
	cmpx	_levelHighscore	;cmphi:	;  moveCount.61, levelHighscore
	bhs	L101	; 
;----- asm -----
;  647 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[486]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	aslb	; 
	stb	,s	; ,
	tfr	x,d	;  moveCount.61,
	pshs	b	; 
	ldb	1,s	; ,
	jsr	_writeEeprom	; 
;----- asm -----
;  649 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[487]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  tmp33, levelNumber
	aslb	;  tmp33
	incb	;  tmp33
	stb	4,s	;  tmp33,
	ldd	_moveCount	;  tmp35, moveCount
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	pshs	b	;  tmp35
	ldb	5,s	; ,
	jsr	_writeEeprom	; 
	leas	2,s	; ,,
L101:
;----- asm -----
;  652 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[489]		if (arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	lbeq	L102	; 
;----- asm -----
;  654 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[490]			arcadeIndex++;
;  0 "" 2
;--- end asm ---
	ldb	_arcadeIndex	;  arcadeIndex.66, arcadeIndex
	incb	;  arcadeIndex.66
	stb	_arcadeIndex	;  arcadeIndex.66, arcadeIndex
;----- asm -----
;  656 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[491]			levelNumber = arcadeLevels[arcadeSelection][arcadeIndex];
;  0 "" 2
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	;  arcadeIndex.66,
	tfr	d,y	; , arcadeIndex.66
	ldb	_arcadeSelection	; , arcadeSelection
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	1,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	ldu	1,s	; ,
	leax	d,u	;  tmp41, tmp40,
	exg	d,y	; , arcadeIndex.66
	leax	d,x	;  tmp42,, tmp42
	exg	d,y	; , arcadeIndex.66
	ldb	_arcadeLevels,x	;  levelNumber.68, arcadeLevels
	stb	_levelNumber	;  levelNumber.68, levelNumber
;----- asm -----
;  658 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[492]			if (levelNumber == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  levelNumber.68
	lbne	L103	; 
;----- asm -----
;  660 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[493]				gameState = ArcadeEnd;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  662 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[494]				memcpy(infoText, "TIME: 000 SECONDS�", 18);
;  0 "" 2
;--- end asm ---
	ldx	#21577	; ,
	stx	_infoText	; , infoText
	ldu	#19781	; ,
	stu	_infoText+2	; , infoText
	ldx	#14880	; ,
	stx	_infoText+4	; , infoText
	ldu	#12336	; ,
	stu	_infoText+6	; , infoText
	ldx	#12320	; ,
	stx	_infoText+8	; , infoText
	ldu	#21317	; ,
	stu	_infoText+10	; , infoText
	ldx	#17231	; ,
	stx	_infoText+12	; , infoText
	ldu	#20036	; ,
	stu	_infoText+14	; , infoText
	ldx	#21376	; ,
	stx	_infoText+16	; , infoText
;----- asm -----
;  664 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[495]			    	itoa(moveCount, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	#_infoText+6	; ,
	stu	,--s	; ,
	ldx	_moveCount	; , moveCount
	jsr	_itoa	; 
;----- asm -----
;  666 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[496]				arcadeMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeMode	;  arcadeMode
	leas	2,s	; ,,
	bra	L105	; 
L103:
;----- asm -----
;  669 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[498]				startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	bra	L105	; 
L102:
;----- asm -----
;  673 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[501]			levelNumber++;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.69, levelNumber
	incb	;  levelNumber.69
	stb	_levelNumber	;  levelNumber.69, levelNumber
;----- asm -----
;  675 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[502]			if (levelNumber >= levelCount) levelNumber = 0;
;  0 "" 2
;--- end asm ---
	cmpb	_levelCount	;cmpqi:	;  levelNumber.69, levelCount
	blo	L104	; 
	clr	_levelNumber	;  levelNumber
L104:
;----- asm -----
;  677 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[503]			startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L105:
	leas	4,s	; ,,
	puls	y,u,pc	; 
	.globl _setBank
_setBank:
	leas	-1,s	; ,,
	stb	,s	;  bank, bank
;----- asm -----
;  186 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[178]	*vecx = 16 + bank;
;  0 "" 2
;--- end asm ---
	addb	#16	;  bank,
	stb	[_vecx]	;  bank,* vecx
;----- asm -----
;  188 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[179]	sendCommand(CMD_SET_BANK, bank);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , bank
	pshs	b	; 
	ldb	#5	; ,
	jsr	_sendCommand	; 
	leas	2,s	; ,,
	rts
	.globl _blockWaiting
_blockWaiting:
;----- asm -----
;  408 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[341]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  410 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[342]	drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  412 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[343]	joybit();
;  0 "" 2
;  2354 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Joy_Digital; BIOS call
;  0 "" 2
;  414 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[344]	if (pot0 < -10) {
;  0 "" 2
;--- end asm ---
	ldb	-14309	;  D.2345,
	cmpb	#-10	;cmpqi:	;  D.2345,
	bge	L109	; 
;----- asm -----
;  416 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[345]		moveBlock(Left);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_moveBlock	; 
;----- asm -----
;  418 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[346]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
	jmp	L110	; 
L109:
	ldb	-14309	;  D.2346,
	cmpb	#10	;cmpqi:	;  D.2346,
	ble	L111	; 
;----- asm -----
;  421 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[348]		moveBlock(Right);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  423 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[349]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
	bra	L110	; 
L111:
	ldb	-14308	;  D.2348,
	cmpb	#-10	;cmpqi:	;  D.2348,
	bge	L112	; 
;----- asm -----
;  426 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[351]		moveBlock(Down);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  428 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[352]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
	bra	L110	; 
L112:
	ldb	-14308	;  D.2349,
	cmpb	#10	;cmpqi:	;  D.2349,
	ble	L110	; 
;----- asm -----
;  431 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[354]		moveBlock(Up);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  433 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[355]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
L110:
;----- asm -----
;  436 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[357]	if (gameState == BlockMoving) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#6	;cmpqi:	; ,
	bne	L113	; 
;----- asm -----
;  438 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[358]		changeMusic(movingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_movingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  440 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[359]		*vecx = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	[_vecx]	; ,* vecx
L113:
;----- asm -----
;  444 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[362]    	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  446 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[363]    	if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L114	; 
;----- asm -----
;  448 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[364]		if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L114	; 
;----- asm -----
;  450 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[365]			swapSplit();
;  0 "" 2
;--- end asm ---
	jsr	_swapSplit	; 
L114:
;----- asm -----
;  454 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[368]    	if ((Vec_Buttons & 2) && !arcadeMode) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L115	; 
	tst	_arcadeMode	;  arcadeMode
	bne	L115	; 
;----- asm -----
;  456 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[369]		levelNumber++;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.37, levelNumber
	incb	;  levelNumber.37
	stb	_levelNumber	;  levelNumber.37, levelNumber
;----- asm -----
;  458 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[370]		if (levelNumber >= levelCount) {
;  0 "" 2
;--- end asm ---
	cmpb	_levelCount	;cmpqi:	;  levelNumber.37, levelCount
	blo	L116	; 
;----- asm -----
;  460 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[371]			levelNumber = 0;
;  0 "" 2
;--- end asm ---
	clr	_levelNumber	;  levelNumber
;----- asm -----
;  462 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[372]			setBank(nextBank);
;  0 "" 2
;--- end asm ---
	ldb	_nextBank	; , nextBank
	jsr	_setBank	; 
L116:
;----- asm -----
;  465 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[374]    		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L115:
;----- asm -----
;  468 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[376]    	if ((Vec_Buttons & 4) && !arcadeMode) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L117	; 
	tst	_arcadeMode	;  arcadeMode
	bne	L117	; 
;----- asm -----
;  470 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[377]		if (levelNumber > 0) {
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.311, levelNumber
	beq	L118	; 
;----- asm -----
;  472 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[378]			levelNumber--;
;  0 "" 2
;--- end asm ---
	decb	;  levelNumber.311
	stb	_levelNumber	;  levelNumber.311, levelNumber
	bra	L119	; 
L118:
;----- asm -----
;  475 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[380]	    		levelNumber = levelCount - 1;
;  0 "" 2
;--- end asm ---
	ldb	_levelCount	; , levelCount
	decb	; 
	stb	_levelNumber	; , levelNumber
;----- asm -----
;  477 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[381]    			setBank(nextBank);
;  0 "" 2
;--- end asm ---
	ldb	_nextBank	; , nextBank
	jsr	_setBank	; 
L119:
;----- asm -----
;  480 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[383]    		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L117:
;----- asm -----
;  483 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[385]	if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L121	; 
;----- asm -----
;  485 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[386]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L121:
	rts
	.globl _main
_main:
	pshs	y,u	; 
	leas	-4,s	; ,,
;----- asm -----
;  916 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[654]	setBank(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_setBank	; 
;----- asm -----
;  920 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[657]	*vecx = 4;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  924 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[660]	picAvailable = 0;
;  0 "" 2
;--- end asm ---
	clr	_picAvailable	;  picAvailable
;----- asm -----
;  926 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[661]	sendCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  928 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[662]	sendCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  930 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[663]	if (sendCommand(CMD_VERSION, 0) == 4) {
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
	leas	3,s	; ,,
	cmpb	#4	;cmpqi:	;  D.2491,
	bne	L123	; 
;----- asm -----
;  932 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[664]		picAvailable = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_picAvailable	; , picAvailable
L123:
;----- asm -----
;  937 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[668]	epot0 = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14305	; ,
;----- asm -----
;  939 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[669]	epot1 = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	-14304	; ,
;----- asm -----
;  941 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[670]	epot2 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14303	; 
;----- asm -----
;  943 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[671]	epot3 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14302	; 
;----- asm -----
;  946 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[673]	gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
;----- asm -----
;  948 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[674]	musicInit();
;  0 "" 2
;--- end asm ---
	jsr	_musicInit	; 
;----- asm -----
;  951 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[676]	while (1) {
;  0 "" 2
;--- end asm ---
L138:
;----- asm -----
;  954 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[678]		frwait();
;  0 "" 2
;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  957 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[680]		switch (gameState) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#8	;cmpqi:	; ,
	lbhi	L124	; 
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp38
	jmp	[L134,x]	; , tmp38
L134:
	.word L125
	.word L126
	.word L127
	.word L128
	.word L129
	.word L130
	.word L131
	.word L132
	.word L133
L125:
;----- asm -----
;  961 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[682]        			mainMenu();
;  0 "" 2
;--- end asm ---
	jsr	_mainMenu	; 
;----- asm -----
;  963 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[683]				musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  965 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[684]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L124	; 
L128:
;----- asm -----
;  969 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[686]				clearMenu();
;  0 "" 2
;--- end asm ---
	jsr	_clearMenu	; 
;----- asm -----
;  971 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[687]				musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  973 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[688]				break;
;  0 "" 2
;--- end asm ---
	jmp	L124	; 
L126:
;----- asm -----
;  977 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[690]				arcadeMenu();
;  0 "" 2
;--- end asm ---
	jsr	_arcadeMenu	; 
;----- asm -----
;  979 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[691]				musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  981 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[692]				break;
;  0 "" 2
;--- end asm ---
	jmp	L124	; 
L127:
;----- asm -----
;  985 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[694]				arcadeEnd();
;  0 "" 2
;--- end asm ---
	jsr	_arcadeEnd	; 
;----- asm -----
;  987 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[695]				musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  989 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[696]				break;
;  0 "" 2
;--- end asm ---
	jmp	L124	; 
L129:
;----- asm -----
;  993 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[698]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  995 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[699]        			blockMovingToStart();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingToStart	; 
;----- asm -----
;  997 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[700]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L124	; 
L130:
;----- asm -----
;  1001 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[702]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1003 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[703]        			blockWaiting();
;  0 "" 2
;--- end asm ---
	jsr	_blockWaiting	; 
;----- asm -----
;  1005 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[704]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L124	; 
L131:
;----- asm -----
;  1009 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[706]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1011 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[707]        			blockMoving();
;  0 "" 2
;--- end asm ---
	jsr	_blockMoving	; 
;----- asm -----
;  1013 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[708]        			break;
;  0 "" 2
;--- end asm ---
	bra	L124	; 
L132:
;----- asm -----
;  1017 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[710]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1019 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[711]        			blockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_blockFalling	; 
;----- asm -----
;  1021 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[712]        			break;
;  0 "" 2
;--- end asm ---
	bra	L124	; 
L133:
;----- asm -----
;  1025 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[714]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1027 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[715]        			blockMovingAtEnd();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingAtEnd	; 
;----- asm -----
;  1029 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[716]        			break;
;  0 "" 2
;--- end asm ---
L124:
;----- asm -----
;  1034 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[720]		if (gameState > ClearMenu) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#3	;cmpqi:	; ,
	bls	L135	; 
;----- asm -----
;  1036 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[721]    			DP_to_C8();
;  0 "" 2
;  316 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_C8; BIOS call
;  0 "" 2
;  1038 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[722]    			replay(currentMusic);
;  0 "" 2
;--- end asm ---
	ldx	_currentMusic	; , currentMusic
	stx	2,s	; , u
;----- asm -----
;  2917 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldu 2,s	;  u
	jsr ___Init_Music_chk; BIOS call
;  0 "" 2
;  1040 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[723]    			DP_to_D0();
;  0 "" 2
;  300 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_D0; BIOS call
;  0 "" 2
;  1042 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[724]    			reqout();
;  0 "" 2
;  2880 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Do_Sound; BIOS call
;  0 "" 2
;--- end asm ---
L135:
;----- asm -----
;  1047 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[728]		if (arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	lbeq	L138	; 
;----- asm -----
;  1049 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[729]			frames++;
;  0 "" 2
;--- end asm ---
	ldd	_frames	;  frames.83, frames
	addd	#1	;  frames.83,
	std	_frames	;  frames.83, frames
;----- asm -----
;  1051 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[730]			if (frames == 50) {
;  0 "" 2
;--- end asm ---
	cmpd	#50	;cmphi:	;  frames.83,
	lbne	L138	; 
;----- asm -----
;  1053 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[731]				frames = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_frames	; , frames
;----- asm -----
;  1055 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[732]				if (moveCount < 999) {
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.84, moveCount
	cmpx	#998	;cmphi:	;  moveCount.84,
	lbhi	L138	; 
;----- asm -----
;  1057 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[733]					moveCount++;
;  0 "" 2
;--- end asm ---
	leax	1,x	; ,, moveCount.84
	stx	_moveCount	; , moveCount
;----- asm -----
;  1059 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[734]					updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
	jmp	L138	; 
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
_arcadeLevels:
	.byte	1
	.byte	2
	.byte	0
	.word	0	;skip space 2
	.byte	4
	.byte	5
	.byte	6
	.byte	0
	.byte	0	;skip space
	.byte	7
	.byte	8
	.byte	9
	.byte	0
	.byte	0	;skip space
	.byte	10
	.byte	11
	.byte	12
	.byte	0
	.byte	0	;skip space
	.area .bss
	.globl	_infoText
_infoText:	.blkb	20
	.globl	_moveCount
_moveCount:	.blkb	2
	.globl	_frames
_frames:	.blkb	2
	.globl	_levelHighscore
_levelHighscore:	.blkb	2
	.globl	_picAvailable
_picAvailable:	.blkb	1
	.globl	_arcadeMode
_arcadeMode:	.blkb	1
	.globl	_arcadeSelection
_arcadeSelection:	.blkb	1
	.globl	_arcadeIndex
_arcadeIndex:	.blkb	1
	.globl	_gameState
_gameState:	.blkb	1
