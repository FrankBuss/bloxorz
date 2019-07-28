;;; gcc for m6809 : Mar 17 2019 11:56:12
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O1
	.module	bloxorz.enr.c
; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
;	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4.
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
; -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
; -fno-time-report -I/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include
; -D__INLINE_RUM=1 -DOMMIT_FRAMEPOINTER=1
; /home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c
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
	.globl	_runtimeError
_runtimeError:
	pshs	y,u	;
	leas	-4,s	;,,
	leay	,x	; msg, msg
;----- asm -----
; 180 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[170]	while (1) {
; 0 "" 2
;--- end asm ---
L2:
;----- asm -----
; 182 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[171]		frwait();
; 0 "" 2
; 97 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
; 0 "" 2
; 184 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[172]         Intensity_a(0x5f);
; 0 "" 2
;--- end asm ---
	ldb	#95	;,
	stb	3,s	;, a
;----- asm -----
; 3427 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	; a
	jsr ___Intensity_a; BIOS call
; 0 "" 2
; 186 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[173]         Vec_Text_Width = 90;
; 0 "" 2
;--- end asm ---
	ldb	#90	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 188 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[174]         Print_Str_d(-10, -110, msg);
; 0 "" 2
;--- end asm ---
	ldb	#-10	;,
	stb	3,s	;, a
	ldb	#-110	;,
	stb	2,s	;, b
	sty	,s	; msg, u
;----- asm -----
; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	; a
	ldb 2,s	; b
	ldu ,s	; u
	jsr ___Print_Str_d; BIOS call
; 0 "" 2
;--- end asm ---
	lbra	L2	;
	.globl	_itoa
_itoa:
	pshs	y,u	;
	leas	-15,s	;,,
;----- asm -----
; 220 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[199]	uint16_t muls[] = { 100, 10, 1 };
; 0 "" 2
;--- end asm ---
	ldd	#100	;,
	std	9,s	;, muls
	ldd	#10	;,
	std	11,s	;, muls
	ldd	#1	;,
	std	13,s	;, muls
;----- asm -----
; 222 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[200]	if (number > 999) number = 999;
; 0 "" 2
;--- end asm ---
	leay	,x	; number.96, number
	cmpx	#999	;cmphi:	; number.96,
	bls	L5	;
	ldy	#999	; number.96,
L5:
;----- asm -----
; 224 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[201]	for (uint8_t i = 0; i < 3; i++) {
; 0 "" 2
;--- end asm ---
	leax	9,s	;,,
	stx	5,s	;, ivtmp.92
	ldd	21,s	;, text
	std	7,s	;, ivtmp.94
L9:
;----- asm -----
; 226 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[202]		uint8_t d = 0;
; 0 "" 2
; 228 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[203]		while (number >= muls[i]) {
; 0 "" 2
;--- end asm ---
	ldx	5,s	;, ivtmp.92
	ldx	,x	;, muls
	stx	,s	;, D.2288
	pshs	y	;cmphi: R:y with R:x	; number.96,
	cmpx	,s++	;cmphi:	;
	bhi	L6	;
	tfr	x,d	;,
	nega
	negb
	sbca	#0
	std	3,s	;, ivtmp.82
	tfr	y,d	; number.96,
	subd	,s	;subhi: R:d -= ,s	;, D.2288
	tfr	d,y	;, number.96
	clr	2,s	; d
L8:
;----- asm -----
; 230 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[204]			d++;
; 0 "" 2
;--- end asm ---
	inc	2,s	; d
;----- asm -----
; 232 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[205]			number -= muls[i];
; 0 "" 2
;--- end asm ---
	ldd	3,s	;, ivtmp.82
	leau	d,y	; number.95,, number.96
	ldd	,s	;, D.2288
	leax	d,u	; tmp85,, number.95
	pshs	x	;cmphi: R:x with R:d	; tmp85,
	cmpd	,s++	;cmphi:	;
	bhi	L7	;
	leay	,u	; number.96, number.95
	bra	L8	;
L6:
	clr	2,s	; d
L7:
;----- asm -----
; 235 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[207]		text[i] = d + '0';
; 0 "" 2
;--- end asm ---
	ldb	2,s	;, d
	addb	#48	;,
	ldx	7,s	;, ivtmp.94
	leax	1,x	;,,
	stx	7,s	;, ivtmp.94
	leax	-1,x	;,,
	stb	,x+	;,
	ldx	5,s	;, ivtmp.92
	leax	2,x	;,,
	stx	5,s	;, ivtmp.92
	tfr	s,d	;,
	addd	#15; addhi3,3	;,
	pshs	d	;cmphi: R:d with R:x	;,
	cmpx	,s++	;cmphi:	;
	lbne	L9	;
	leas	15,s	;,,
	puls	y,u,pc	;
	.globl	_updateInfoText
_updateInfoText:
;----- asm -----
; 242 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[213]	itoa(moveCount, &infoText[0]);
; 0 "" 2
;--- end asm ---
	ldx	#_infoText	;,
	stx	,--s	;,
	ldx	_moveCount	;, moveCount
	jsr	_itoa
;----- asm -----
; 245 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[215]	itoa(levelNumber + levelOffset, &infoText[6]);
; 0 "" 2
;--- end asm ---
	ldb	_levelOffset	; tmp28, levelOffset
	addb	_levelNumber	; tmp28, levelNumber
	ldx	#_infoText+6	;,
	stx	,--s	;,
	clra		;zero_extendqihi: R:b -> R:d	; tmp28,
	tfr	d,x	;,
	jsr	_itoa
	leas	4,s	;,,
	rts
	.globl	_changeMusic
_changeMusic:
;----- asm -----
; 251 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[220]	tstat = 1;
; 0 "" 2
;--- end asm ---
	ldb	#1	;,
	stb	-14250	;,
;----- asm -----
; 253 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	currentMusic = music;
; 0 "" 2
;--- end asm ---
	stx	_currentMusic	; music, currentMusic
	rts
	.globl	_drawField
_drawField:
	leas	-1,s	;,,
;----- asm -----
; 319 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[263]	intens(0x35);
; 0 "" 2
;--- end asm ---
	ldb	#53	;,
	stb	,s	;, a
;----- asm -----
; 3427 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	; a
	jsr ___Intensity_a; BIOS call
; 0 "" 2
; 334 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs a, b, dp, x, u
; 0 "" 2
; 335 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda #0xd0
; 0 "" 2
; 336 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		tfr a, dp
; 0 "" 2
; 337 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldx #0
; 0 "" 2
; 338 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb _lineCount
; 0 "" 2
; 339 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	drawFieldLoop:
; 0 "" 2
; 340 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs b
; 0 "" 2
; 341 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs x
; 0 "" 2
; 342 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jsr 0xf354
; 0 "" 2
; 343 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls x
; 0 "" 2
; 344 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda _lineY0,x
; 0 "" 2
; 345 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb _lineX0,x
; 0 "" 2
; 346 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs x
; 0 "" 2
; 347 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jsr 0xf2fc
; 0 "" 2
; 348 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls x
; 0 "" 2
; 349 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda _lineY1,x
; 0 "" 2
; 350 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb _lineX1,x
; 0 "" 2
; 351 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		suba _lineY0,x
; 0 "" 2
; 352 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		subb _lineX0,x
; 0 "" 2
; 353 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs x
; 0 "" 2
; 354 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jsr 0xf3df
; 0 "" 2
; 355 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls x
; 0 "" 2
; 356 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda ,x+
; 0 "" 2
; 357 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls b
; 0 "" 2
; 358 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		decb
; 0 "" 2
; 359 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		bne drawFieldLoop
; 0 "" 2
; 360 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls a, b, dp, x, u
; 0 "" 2
;--- end asm ---
	leas	1,s	;,,
	rts
	.globl	_showInfo2
_showInfo2:
	pshs	y	;
	leas	-3,s	;,,
;----- asm -----
; 684 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[509]	zergnd();
; 0 "" 2
; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 0 "" 2
; 686 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[510]	intens(0x50);
; 0 "" 2
;--- end asm ---
	ldb	#80	;,
	stb	,s	;, a
;----- asm -----
; 3427 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	; a
	jsr ___Intensity_a; BIOS call
; 0 "" 2
; 689 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[512]	zergnd();
; 0 "" 2
; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 0 "" 2
; 691 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[513]	positd(-50, 100);
; 0 "" 2
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#100	;,
	stb	2,s	;, a
	ldb	#-50	;,
	stb	,s	;, b
;----- asm -----
; 3315 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	; a
	ldb ,s	; b
	jsr ___Moveto_d; BIOS call
; 0 "" 2
; 693 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[514]	pack1x((void*)led8);
; 0 "" 2
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldy	#_led8	; tmp27,
	sty	,s	; tmp27, x
;----- asm -----
; 1610 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	; x
	jsr ___Draw_VLp; BIOS call
; 0 "" 2
; 696 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[516]	zergnd();
; 0 "" 2
; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 0 "" 2
; 698 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[517]	positd(-40, 110);
; 0 "" 2
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#110	;,
	stb	,s	;, a
	ldb	#-40	;,
	stb	2,s	;, b
;----- asm -----
; 3315 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	; a
	ldb 2,s	; b
	jsr ___Moveto_d; BIOS call
; 0 "" 2
; 700 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[518]	pack1x((void*)led8);
; 0 "" 2
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	sty	,s	; tmp27, x
;----- asm -----
; 1610 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	; x
	jsr ___Draw_VLp; BIOS call
; 0 "" 2
; 703 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[520]	zergnd();
; 0 "" 2
; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 0 "" 2
; 705 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[521]	positd(-30, 120);
; 0 "" 2
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#120	;,
	stb	2,s	;, a
	ldb	#-30	;,
	stb	,s	;, b
;----- asm -----
; 3315 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	; a
	ldb ,s	; b
	jsr ___Moveto_d; BIOS call
; 0 "" 2
; 707 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[522]	pack1x((void*)led8);
; 0 "" 2
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	sty	,s	; tmp27, x
;----- asm -----
; 1610 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	; x
	jsr ___Draw_VLp; BIOS call
; 0 "" 2
; 710 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[524]	zergnd();
; 0 "" 2
; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 0 "" 2
; 712 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[525]	positd(0, 120);
; 0 "" 2
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#120	;,
	stb	,s	;, a
	clr	2,s	; b
;----- asm -----
; 3315 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	; a
	ldb 2,s	; b
	jsr ___Moveto_d; BIOS call
; 0 "" 2
; 714 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[526]	pack1x((void*)led8);
; 0 "" 2
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	sty	,s	; tmp27, x
;----- asm -----
; 1610 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	; x
	jsr ___Draw_VLp; BIOS call
; 0 "" 2
; 717 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[528]	zergnd();
; 0 "" 2
; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 0 "" 2
; 719 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[529]	positd(10, 120);
; 0 "" 2
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#120	;,
	stb	2,s	;, a
	ldb	#10	;,
	stb	,s	;, b
;----- asm -----
; 3315 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	; a
	ldb ,s	; b
	jsr ___Moveto_d; BIOS call
; 0 "" 2
; 721 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[530]	pack1x((void*)led8);
; 0 "" 2
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	sty	,s	; tmp27, x
;----- asm -----
; 1610 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	; x
	jsr ___Draw_VLp; BIOS call
; 0 "" 2
; 724 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[532]	zergnd();
; 0 "" 2
; 181 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 0 "" 2
; 726 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[533]	positd(20, 120);
; 0 "" 2
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#120	;,
	stb	,s	;, a
	ldb	#20	;,
	stb	2,s	;, b
;----- asm -----
; 3315 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	; a
	ldb 2,s	; b
	jsr ___Moveto_d; BIOS call
; 0 "" 2
; 728 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[534]	pack1x((void*)led8);
; 0 "" 2
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	sty	,s	; tmp27, x
;----- asm -----
; 1610 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldx ,s	; x
	jsr ___Draw_VLp; BIOS call
; 0 "" 2
;--- end asm ---
	leas	3,s	;,,
	puls	y,pc	;
	.globl	_showInfo
_showInfo:
	pshs	u	;
	leas	-4,s	;,,
;----- asm -----
; 734 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[539]    Intensity_a(0x5f);
; 0 "" 2
;--- end asm ---
	ldb	#95	;,
	stb	3,s	;, a
;----- asm -----
; 3427 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	; a
	jsr ___Intensity_a; BIOS call
; 0 "" 2
; 736 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[540]    Vec_Text_Width = 100;
; 0 "" 2
;--- end asm ---
	ldb	#100	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 738 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[541]    Print_Str_d(100, -70, infoText);
; 0 "" 2
;--- end asm ---
	stb	3,s	;, a
	ldb	#-70	;,
	stb	2,s	;, b
	ldx	#_infoText	;,
	stx	,s	;, u
;----- asm -----
; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	; a
	ldb 2,s	; b
	ldu ,s	; u
	jsr ___Print_Str_d; BIOS call
; 0 "" 2
;--- end asm ---
	leas	4,s	;,,
	puls	u,pc	;
	.globl	_blockMovingToStart
_blockMovingToStart:
;----- asm -----
; 366 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[309]	drawField();
; 0 "" 2
;--- end asm ---
	jsr	_drawField
;----- asm -----
; 368 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[310]	drawBlock(blockYOfs);
; 0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;, blockYOfs
	jsr	_drawBlock
;----- asm -----
; 370 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[311]	blockYOfs++;
; 0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; blockYOfs.24, blockYOfs
	incb	; blockYOfs.24
	stb	_blockYOfs	; blockYOfs.24, blockYOfs
;----- asm -----
; 372 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[312]	if (blockYOfs == 0) {
; 0 "" 2
;--- end asm ---
	tstb	; blockYOfs.24
	bne	L24	;
;----- asm -----
; 374 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[313]		gameState = BlockWaiting;
; 0 "" 2
;--- end asm ---
	ldb	#3	;,
	stb	_gameState	;, gameState
L24:
	rts
	.globl	_moveBlock
_moveBlock:
;----- asm -----
; 259 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[226]	moveBlockImpl(move);
; 0 "" 2
;--- end asm ---
	jsr	_moveBlockImpl
;----- asm -----
; 261 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[227]	if (moveCount < 999) moveCount++;
; 0 "" 2
;--- end asm ---
	ldx	_moveCount	; moveCount.9, moveCount
	cmpx	#998	;cmphi:	; moveCount.9,
	bhi	L26	;
	leax	1,x	;,, moveCount.9
	stx	_moveCount	;, moveCount
L26:
;----- asm -----
; 263 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	updateInfoText();
; 0 "" 2
;--- end asm ---
	jsr	_updateInfoText
	rts
	.globl	_startBlockFalling
_startBlockFalling:
;----- asm -----
; 269 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[233]	gameState = BlockFalling;
; 0 "" 2
;--- end asm ---
	ldb	#5	;,
	stb	_gameState	;, gameState
;----- asm -----
; 271 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[234]	blockYOfs = 0;
; 0 "" 2
;--- end asm ---
	clr	_blockYOfs	; blockYOfs
;----- asm -----
; 273 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[235]	moveBlock(lastBlockDirection);
; 0 "" 2
;--- end asm ---
	ldb	_lastBlockDirection	;, lastBlockDirection
	jsr	_moveBlock
;----- asm -----
; 275 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[236]	changeMusic(fallingMusic);
; 0 "" 2
;--- end asm ---
	ldx	#_fallingMusic	;,
	jsr	_changeMusic
;----- asm -----
; 277 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[237]	*vecx = 0;
; 0 "" 2
;--- end asm ---
	clr	[_vecx]	;* vecx
	rts
	.globl	_blockMoving
_blockMoving:
	leas	-7,s	;,,
;----- asm -----
; 445 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[358]	drawField();
; 0 "" 2
;--- end asm ---
	jsr	_drawField
;----- asm -----
; 447 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[359]	drawBlock(0);
; 0 "" 2
;--- end asm ---
	clrb	;
	jsr	_drawBlock
;----- asm -----
; 449 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[360]	doBlockAnimation();
; 0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation
;----- asm -----
; 451 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[361]	if (!blockAnimating) {
; 0 "" 2
;--- end asm ---
	tst	_blockAnimating	; blockAnimating
	lbne	L54	;
;----- asm -----
; 454 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[363]		uint8_t c0 = isField(blockX, blockY);
; 0 "" 2
;--- end asm ---
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	_blockX	;, blockX
	jsr	_isField
	stb	2,s	;, c0
;----- asm -----
; 456 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[364]		uint8_t c1 = isField(blockX + 1, blockY);
; 0 "" 2
;--- end asm ---
	ldb	_blockX	;, blockX
	incb	;
	stb	1,s	;,
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	2,s	;,
	jsr	_isField
	stb	4,s	;, c1
;----- asm -----
; 458 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[365]		uint8_t c2 = isField(blockX, blockY + 1);
; 0 "" 2
;--- end asm ---
	ldb	_blockY	;, blockY
	incb	;
	pshs	b	;
	ldb	_blockX	;, blockX
	jsr	_isField
	stb	6,s	;, c2
;----- asm -----
; 460 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[366]		char f0 = getField(blockX, blockY);
; 0 "" 2
;--- end asm ---
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	_blockX	;, blockX
	jsr	_getField
	stb	8,s	;, f0
;----- asm -----
; 462 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[367]		char f1 = getField(blockX + 1, blockY);
; 0 "" 2
;--- end asm ---
	ldb	_blockX	;, blockX
	incb	;
	stb	4,s	;,
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	5,s	;,
	jsr	_getField
	stb	10,s	;, f1
;----- asm -----
; 464 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[368]		char f2 = getField(blockX, blockY + 1);
; 0 "" 2
;--- end asm ---
	ldb	_blockY	;, blockY
	incb	;
	pshs	b	;
	ldb	_blockX	;, blockX
	jsr	_getField
	stb	12,s	;, f2
;----- asm -----
; 466 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[369]		switch (blockOrientation) {
; 0 "" 2
;--- end asm ---
	leas	6,s	;,,
	ldb	_blockOrientation	; blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	; blockOrientation,
	beq	L34	;
	blo	L33	;
	cmpb	#2	;cmpqi:	; blockOrientation,
	lbne	L32	;
	bra	L55	;
L33:
;----- asm -----
; 470 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[371]			if (!c0 || f0 == 'f') {
; 0 "" 2
;--- end asm ---
	tst	1,s	; c0
	beq	L36	;
	ldb	4,s	;, f0
	cmpb	#102	;cmpqi:	;,
	bne	L37	;
L36:
;----- asm -----
; 472 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[372]				startBlockFalling();
; 0 "" 2
;--- end asm ---
	jsr	_startBlockFalling
L37:
;----- asm -----
; 475 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[374]			break;
; 0 "" 2
;--- end asm ---
	bra	L32	;
L34:
;----- asm -----
; 479 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[376]			if (!c0 || !c2) {
; 0 "" 2
;--- end asm ---
	tst	1,s	; c0
	beq	L38	;
	tst	3,s	; c2
	bne	L39	;
L38:
;----- asm -----
; 481 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[377]				startBlockFalling();
; 0 "" 2
;--- end asm ---
	jsr	_startBlockFalling
L39:
;----- asm -----
; 484 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[379]			break;
; 0 "" 2
;--- end asm ---
	bra	L32	;
L55:
;----- asm -----
; 488 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[381]			if (!c0 || ! c1) {
; 0 "" 2
;--- end asm ---
	tst	1,s	; c0
	beq	L40	;
	tst	2,s	; c1
	bne	L41	;
L40:
;----- asm -----
; 490 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[382]				startBlockFalling();
; 0 "" 2
;--- end asm ---
	jsr	_startBlockFalling
L41:
;----- asm -----
; 493 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[384]			break;
; 0 "" 2
;--- end asm ---
L32:
;----- asm -----
; 498 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[388]		if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
; 0 "" 2
;--- end asm ---
	tst	_blockOrientation	; blockOrientation
	bne	L42	;
	ldb	_blockX	;, blockX
	cmpb	_endX	;cmpqi:	;, endX
	bne	L42	;
	ldb	_blockY	;, blockY
	cmpb	_endY	;cmpqi:	;, endY
	bne	L42	;
	tst	_splitMode	; splitMode
	bne	L42	;
;----- asm -----
; 500 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[389]			blockYOfs = 0;
; 0 "" 2
;--- end asm ---
	clr	_blockYOfs	; blockYOfs
;----- asm -----
; 502 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[390]			gameState = BlockMovingAtEnd;
; 0 "" 2
;--- end asm ---
	ldb	#6	;,
	stb	_gameState	;, gameState
;----- asm -----
; 504 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[391]			changeMusic(levelEndMusic);
; 0 "" 2
;--- end asm ---
	ldx	#_levelEndMusic	;,
	jsr	_changeMusic
;----- asm -----
; 506 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[392]			*vecx = 1;
; 0 "" 2
;--- end asm ---
	ldb	#1	;,
	stb	[_vecx]	;,* vecx
	bra	L43	;
L42:
;----- asm -----
; 510 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[395]			if (gameState != BlockFalling) {
; 0 "" 2
;--- end asm ---
	ldb	_gameState	;, gameState
	cmpb	#5	;cmpqi:	;,
	beq	L43	;
;----- asm -----
; 512 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[396]				gameState = BlockWaiting;
; 0 "" 2
;--- end asm ---
	ldb	#3	;,
	stb	_gameState	;, gameState
L43:
;----- asm -----
; 518 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[401]		switch (blockOrientation) {
; 0 "" 2
;--- end asm ---
	ldb	_blockOrientation	; blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	; blockOrientation,
	beq	L46	;
	blo	L45	;
	cmpb	#2	;cmpqi:	; blockOrientation,
	lbne	L44	;
	lbra	L56	;
L45:
;----- asm -----
; 522 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[403]			if (f0 == 's' || f0 == 'h' || f0 == 'v') {
; 0 "" 2
;--- end asm ---
	ldb	4,s	;, f0
	cmpb	#115	;cmpqi:	;,
	beq	L48	;
	cmpb	#104	;cmpqi:	;,
	beq	L48	;
	cmpb	#118	;cmpqi:	;,
	bne	L49	;
L48:
;----- asm -----
; 524 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[404]				swatchSwitch(blockX, blockY);
; 0 "" 2
;--- end asm ---
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	_blockX	;, blockX
	jsr	_swatchSwitch
	leas	1,s	;,,
L49:
;----- asm -----
; 527 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[406]			break;
; 0 "" 2
;--- end asm ---
	lbra	L44	;
L46:
;----- asm -----
; 531 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[408]			if (f0 == 's') {
; 0 "" 2
;--- end asm ---
	ldb	4,s	;, f0
	cmpb	#115	;cmpqi:	;,
	bne	L50	;
;----- asm -----
; 533 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[409]				swatchSwitch(blockX, blockY);
; 0 "" 2
;--- end asm ---
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	_blockX	;, blockX
	jsr	_swatchSwitch
	leas	1,s	;,,
L50:
;----- asm -----
; 536 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[411]			if (f2 == 's') {
; 0 "" 2
;--- end asm ---
	ldb	6,s	;, f2
	cmpb	#115	;cmpqi:	;,
	bne	L51	;
;----- asm -----
; 538 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[412]				swatchSwitch(blockX, blockY + 1);
; 0 "" 2
;--- end asm ---
	ldb	_blockY	;, blockY
	incb	;
	pshs	b	;
	ldb	_blockX	;, blockX
	jsr	_swatchSwitch
	leas	1,s	;,,
L51:
;----- asm -----
; 541 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[414]			break;
; 0 "" 2
;--- end asm ---
	bra	L44	;
L56:
;----- asm -----
; 545 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[416]			if (f0 == 's') {
; 0 "" 2
;--- end asm ---
	ldb	4,s	;, f0
	cmpb	#115	;cmpqi:	;,
	bne	L52	;
;----- asm -----
; 547 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[417]				swatchSwitch(blockX, blockY);
; 0 "" 2
;--- end asm ---
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	_blockX	;, blockX
	jsr	_swatchSwitch
	leas	1,s	;,,
L52:
;----- asm -----
; 550 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[419]			if (f1 == 's') {
; 0 "" 2
;--- end asm ---
	ldb	5,s	;, f1
	cmpb	#115	;cmpqi:	;,
	bne	L53	;
;----- asm -----
; 552 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[420]				swatchSwitch(blockX + 1, blockY);
; 0 "" 2
;--- end asm ---
	ldb	_blockX	;, blockX
	incb	;
	stb	,s	;,
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	1,s	;,
	jsr	_swatchSwitch
	leas	1,s	;,,
L53:
;----- asm -----
; 555 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[422]			break;
; 0 "" 2
;--- end asm ---
L44:
;----- asm -----
; 560 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[426]		if (splitMode) {
; 0 "" 2
;--- end asm ---
	tst	_splitMode	; splitMode
	beq	L54	;
;----- asm -----
; 562 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[427]			testMerge();
; 0 "" 2
;--- end asm ---
	jsr	_testMerge
L54:
	leas	7,s	;,,
	rts
	.globl	_sendCommand
_sendCommand:
	leas	-2,s	;,,
	stb	,s	; cmd, cmd
;----- asm -----
; 154 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[153]	uint8_t result;
; 0 "" 2
; 156 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[154]	picWrite('V');
; 0 "" 2
;--- end asm ---
	ldb	#86	;,
	jsr	_picWrite
;----- asm -----
; 158 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[155]	picWrite(cmd);
; 0 "" 2
;--- end asm ---
	ldb	,s	;, cmd
	jsr	_picWrite
;----- asm -----
; 160 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[156]	picWrite(arg);
; 0 "" 2
;--- end asm ---
	ldb	4,s	;, arg
	jsr	_picWrite
;----- asm -----
; 162 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[157]	result = picRead();
; 0 "" 2
;--- end asm ---
	jsr	_picRead
	stb	1,s	;, result
;----- asm -----
; 164 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[158]	delay10ms();
; 0 "" 2
;--- end asm ---
	jsr	_delay10ms
;----- asm -----
; 166 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[159]	return result;
; 0 "" 2
;--- end asm ---
	ldb	1,s	;, result
	leas	2,s	;,,
	rts
	.globl	_readEeprom
_readEeprom:
;----- asm -----
; 206 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[188]	if (picAvailable) {
; 0 "" 2
;--- end asm ---
	tst	_picAvailable	; picAvailable
	beq	L60	;
;----- asm -----
; 208 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[189]		return sendCommand(CMD_EEPROM_READ, address);
; 0 "" 2
;--- end asm ---
	pshs	b	; address
	ldb	#4	;,
	jsr	_sendCommand
	leas	1,s	;,,
	bra	L61	;
L60:
;----- asm -----
; 211 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[191]		return 0xff;
; 0 "" 2
;--- end asm ---
	ldb	#-1	; D.2272,
L61:
	rts
	.globl	_startLevel
_startLevel:
	leas	-2,s	;,,
;----- asm -----
; 283 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[242]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
; 0 "" 2
;--- end asm ---
	ldb	_levelNumber	; tmp30, levelNumber
	aslb	; tmp30
	jsr	_readEeprom
	clra		;zero_extendqihi: R:b -> R:d	; D.2317, D.2317
	std	_levelHighscore	; D.2317, levelHighscore
;----- asm -----
; 285 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[243]	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
; 0 "" 2
;--- end asm ---
	ldb	_levelNumber	; tmp32, levelNumber
	aslb	; tmp32
	incb	; tmp33
	jsr	_readEeprom
	tfr	b,a	;,
	clrb	;
	ora	_levelHighscore	;, levelHighscore
	orb	_levelHighscore+1	;, levelHighscore
	std	_levelHighscore	; levelHighscore.17, levelHighscore
;----- asm -----
; 287 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[244]	if (levelHighscore == 0) levelHighscore = 999;
; 0 "" 2
;--- end asm ---
	cmpd	#0	; levelHighscore.17
	bne	L64	;
	ldx	#999	;,
	stx	_levelHighscore	;, levelHighscore
L64:
;----- asm -----
; 289 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[245]    level = levels[levelNumber];
; 0 "" 2
;--- end asm ---
	ldb	_levelNumber	;, levelNumber
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp39
	ldx	_levels,x	;, levels
	stx	_level	;, level
;----- asm -----
; 291 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[246]	initSwatches();
; 0 "" 2
;--- end asm ---
	jsr	_initSwatches
;----- asm -----
; 293 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[247]	initLevel();
; 0 "" 2
;--- end asm ---
	jsr	_initLevel
;----- asm -----
; 295 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[248]	blockX = level->start.x;
; 0 "" 2
;--- end asm ---
	ldx	_level	; level, level
	ldb	2,x	;, <variable>.start.x
	stb	_blockX	;, blockX
;----- asm -----
; 297 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[249]	blockY = level->start.y;
; 0 "" 2
;--- end asm ---
	ldb	3,x	;, <variable>.start.y
	stb	_blockY	;, blockY
;----- asm -----
; 299 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[250]	blockStartLevel();
; 0 "" 2
;--- end asm ---
	jsr	_blockStartLevel
;----- asm -----
; 301 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[251]	blockYOfs = -30;
; 0 "" 2
;--- end asm ---
	ldb	#-30	;,
	stb	_blockYOfs	;, blockYOfs
;----- asm -----
; 303 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[252]	gameState = BlockMovingToStart;
; 0 "" 2
;--- end asm ---
	ldb	#2	;,
	stb	_gameState	;, gameState
;----- asm -----
; 305 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[253]	changeMusic(startMusic);
; 0 "" 2
;--- end asm ---
	ldx	#_startMusic	;,
	jsr	_changeMusic
;----- asm -----
; 307 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[254]	*vecx = 2;
; 0 "" 2
;--- end asm ---
	ldb	#2	;,
	stb	[_vecx]	;,* vecx
;----- asm -----
; 309 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[255]	moveCount = 0;
; 0 "" 2
;--- end asm ---
	ldd	#0	;,
	std	_moveCount	;, moveCount
;----- asm -----
; 311 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[256]	updateInfoText();
; 0 "" 2
;--- end asm ---
	jsr	_updateInfoText
	leas	2,s	;,,
	rts
LC0:
	.byte	77,65,73,78,32,77,69,78
	.byte	85,-128,0
LC1:
	.byte	49,32,83,84,65,82,84,32
	.byte	71,65,77,69,-128,0
LC2:
	.byte	50,32,67,76,69,65,82,32
	.byte	72,73,71,72,83,67,79,82
	.byte	69,-128,0
	.globl	_mainMenu
_mainMenu:
	pshs	u	;
	leas	-4,s	;,,
;----- asm -----
; 616 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[463]	Read_Btns();
; 0 "" 2
; 2286 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
; 0 "" 2
; 618 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[464]    Intensity_a(0x5f);
; 0 "" 2
;--- end asm ---
	ldb	#95	;,
	stb	3,s	;, a
;----- asm -----
; 3427 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	; a
	jsr ___Intensity_a; BIOS call
; 0 "" 2
; 620 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[465]    Vec_Text_Width = 90;
; 0 "" 2
;--- end asm ---
	ldb	#90	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 622 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[466]    Print_Str_d(100, -70, "MAIN MENU�");
; 0 "" 2
;--- end asm ---
	addb	#10	;,
	stb	3,s	;, a
	ldb	#-70	;,
	stb	2,s	;, b
	ldx	#LC0	;,
	stx	,s	;, u
;----- asm -----
; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	; a
	ldb 2,s	; b
	ldu ,s	; u
	jsr ___Print_Str_d; BIOS call
; 0 "" 2
; 624 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[467]    Print_Str_d(50, -110, "1 START GAME�");
; 0 "" 2
;--- end asm ---
	ldb	#50	;,
	stb	2,s	;, a
	ldb	#-110	;,
	stb	3,s	;, b
	ldx	#LC1	;,
	stx	,s	;, u
;----- asm -----
; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	; a
	ldb 3,s	; b
	ldu ,s	; u
	jsr ___Print_Str_d; BIOS call
; 0 "" 2
; 626 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[468]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE�");
; 0 "" 2
;--- end asm ---
	ldb	#20	;,
	stb	3,s	;, a
	ldb	#-110	;,
	stb	2,s	;, b
	ldx	#LC2	;,
	stx	,s	;, u
;----- asm -----
; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	; a
	ldb 2,s	; b
	ldu ,s	; u
	jsr ___Print_Str_d; BIOS call
; 0 "" 2
; 628 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[469]	if (Vec_Buttons & 1) {
; 0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#1	;,
	beq	L67	;
;----- asm -----
; 630 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[470]		startLevel();
; 0 "" 2
;--- end asm ---
	jsr	_startLevel
L67:
;----- asm -----
; 633 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[472]	if (Vec_Buttons & 2) {
; 0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#2	;,
	beq	L69	;
;----- asm -----
; 635 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[473]		gameState = ClearMenu;
; 0 "" 2
;--- end asm ---
	ldb	#1	;,
	stb	_gameState	;, gameState
L69:
	leas	4,s	;,,
	puls	u,pc	;
	.globl	_blockFalling
_blockFalling:
	leas	-1,s	;,,
;----- asm -----
; 570 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[434]	drawField();
; 0 "" 2
;--- end asm ---
	jsr	_drawField
;----- asm -----
; 572 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[435]	blockYOfs++;
; 0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;, blockYOfs
	incb	;
	stb	,s	;, blockYOfs.50
	stb	_blockYOfs	;, blockYOfs
;----- asm -----
; 574 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[436]	if (blockYOfs < 12) {
; 0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	;,
	bgt	L71	;
;----- asm -----
; 576 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[437]		drawBlock(-blockYOfs*blockYOfs);
; 0 "" 2
;--- end asm ---
	negb	; tmp28
	lda	,s	;mulqihi3	; blockYOfs.50
	mul
		;movlsbqihi: D->B
	jsr	_drawBlock
;----- asm -----
; 578 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[438]		doBlockAnimation();
; 0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation
L71:
;----- asm -----
; 581 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[440]	if (blockYOfs == 50) {
; 0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;, blockYOfs
	cmpb	#50	;cmpqi:	;,
	bne	L73	;
;----- asm -----
; 583 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[441]		startLevel();
; 0 "" 2
;--- end asm ---
	jsr	_startLevel
L73:
	leas	1,s	;,,
	rts
	.globl	_writeEeprom
_writeEeprom:
;----- asm -----
; 195 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[180]	if (picAvailable) {
; 0 "" 2
;--- end asm ---
	tst	_picAvailable	; picAvailable
	beq	L76	;
;----- asm -----
; 197 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[181]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
; 0 "" 2
;--- end asm ---
	pshs	b	; address
	ldb	#2	;,
	jsr	_sendCommand
;----- asm -----
; 199 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[182]	    	sendCommand(CMD_EEPROM_WRITE, data);
; 0 "" 2
;--- end asm ---
	ldb	3,s	;, data
	stb	,-s	;,
	ldb	#3	;,
	jsr	_sendCommand
	leas	2,s	;,,
L76:
	rts
LC3:
	.byte	67,76,69,65,82,32,83,67
	.byte	79,82,69,63,-128,0
LC4:
	.byte	51,32,89,69,83,-128,0
LC5:
	.byte	52,32,78,79,-128,0
	.globl	_clearMenu
_clearMenu:
	pshs	u	;
	leas	-5,s	;,,
;----- asm -----
; 642 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[479]	Read_Btns();
; 0 "" 2
; 2286 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
; 0 "" 2
; 644 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[480]    Intensity_a(0x5f);
; 0 "" 2
;--- end asm ---
	ldb	#95	;,
	stb	4,s	;, a
;----- asm -----
; 3427 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	; a
	jsr ___Intensity_a; BIOS call
; 0 "" 2
; 646 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[481]    Vec_Text_Width = 90;
; 0 "" 2
;--- end asm ---
	ldb	#90	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 648 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[482]    Print_Str_d(100, -80, "CLEAR SCORE?�");
; 0 "" 2
;--- end asm ---
	addb	#10	;,
	stb	4,s	;, a
	ldb	#-80	;,
	stb	3,s	;, b
	ldx	#LC3	;,
	stx	1,s	;, u
;----- asm -----
; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	; a
	ldb 3,s	; b
	ldu 1,s	; u
	jsr ___Print_Str_d; BIOS call
; 0 "" 2
; 650 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[483]    Print_Str_d(50, -110, "3 YES�");
; 0 "" 2
;--- end asm ---
	ldb	#50	;,
	stb	3,s	;, a
	ldb	#-110	;,
	stb	4,s	;, b
	ldx	#LC4	;,
	stx	1,s	;, u
;----- asm -----
; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	; a
	ldb 4,s	; b
	ldu 1,s	; u
	jsr ___Print_Str_d; BIOS call
; 0 "" 2
; 652 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[484]    Print_Str_d(20, -110, "4 NO�");
; 0 "" 2
;--- end asm ---
	ldb	#20	;,
	stb	4,s	;, a
	ldb	#-110	;,
	stb	3,s	;, b
	ldx	#LC5	;,
	stx	1,s	;, u
;----- asm -----
; 666 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	; a
	ldb 3,s	; b
	ldu 1,s	; u
	jsr ___Print_Str_d; BIOS call
; 0 "" 2
; 654 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[485]	if (Vec_Buttons & 4) {
; 0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#4	;,
	beq	L78	;
;----- asm -----
; 656 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[486]		for (uint8_t i = 0; i < 6; i++) {
; 0 "" 2
;--- end asm ---
	clr	,s	; i
L79:
;----- asm -----
; 658 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[487]			writeEeprom(i, 0xff);
; 0 "" 2
;--- end asm ---
	ldb	#-1	;,
	stb	,-s	;,
	ldb	1,s	;, i
	jsr	_writeEeprom
	inc	1,s	; i
	leas	1,s	;,,
	ldb	,s	;, i
	cmpb	#6	;cmpqi:	;,
	bne	L79	;
;----- asm -----
; 661 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[489]		gameState = MainMenu;
; 0 "" 2
;--- end asm ---
	clr	_gameState	; gameState
L78:
;----- asm -----
; 664 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[491]	if (Vec_Buttons & 8) {
; 0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#8	;,
	beq	L81	;
;----- asm -----
; 666 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[492]		gameState = MainMenu;
; 0 "" 2
;--- end asm ---
	clr	_gameState	; gameState
L81:
	leas	5,s	;,,
	puls	u,pc	;
	.globl	_blockMovingAtEnd
_blockMovingAtEnd:
	leas	-2,s	;,,
;----- asm -----
; 590 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[447]	drawField();
; 0 "" 2
;--- end asm ---
	jsr	_drawField
;----- asm -----
; 592 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[448]	drawBlock(blockYOfs);
; 0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;, blockYOfs
	jsr	_drawBlock
;----- asm -----
; 594 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[449]	blockYOfs++;
; 0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; blockYOfs.52, blockYOfs
	incb	; blockYOfs.52
	stb	_blockYOfs	; blockYOfs.52, blockYOfs
;----- asm -----
; 596 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[450]	if (blockYOfs == 30) {
; 0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	; blockYOfs.52,
	lbne	L87	;
;----- asm -----
; 598 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[451]		if (moveCount < levelHighscore) {
; 0 "" 2
;--- end asm ---
	ldx	_moveCount	; moveCount.53, moveCount
	cmpx	_levelHighscore	;cmphi:	; moveCount.53, levelHighscore
	bhs	L85	;
;----- asm -----
; 600 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[452]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
; 0 "" 2
;--- end asm ---
	ldb	_levelNumber	;, levelNumber
	aslb	;
	stb	,s	;,
	tfr	x,d	; moveCount.53,
	pshs	b	;
	ldb	1,s	;,
	jsr	_writeEeprom
;----- asm -----
; 602 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[453]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
; 0 "" 2
;--- end asm ---
	ldb	_levelNumber	; tmp31, levelNumber
	aslb	; tmp31
	incb	; tmp31
	stb	2,s	; tmp31,
	ldd	_moveCount	; tmp33, moveCount
	tfr	a,b	;,
	clra		;zero_extendqihi: R:b -> R:d	;,
	pshs	b	; tmp33
	ldb	3,s	;,
	jsr	_writeEeprom
	leas	2,s	;,,
L85:
;----- asm -----
; 605 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[455]		levelNumber++;
; 0 "" 2
;--- end asm ---
	ldb	_levelNumber	; levelNumber.56, levelNumber
	incb	; levelNumber.56
	stb	_levelNumber	; levelNumber.56, levelNumber
;----- asm -----
; 607 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[456]		if (levelNumber >= levelCount) levelNumber = 0;
; 0 "" 2
;--- end asm ---
	cmpb	_levelCount	;cmpqi:	; levelNumber.56, levelCount
	blo	L86	;
	clr	_levelNumber	; levelNumber
L86:
;----- asm -----
; 609 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[457]		startLevel();
; 0 "" 2
;--- end asm ---
	jsr	_startLevel
L87:
	leas	2,s	;,,
	rts
	.globl	_setBank
_setBank:
	leas	-1,s	;,,
	stb	,s	; bank, bank
;----- asm -----
; 172 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[164]	*vecx = 16 + bank;
; 0 "" 2
;--- end asm ---
	addb	#16	; bank,
	stb	[_vecx]	; bank,* vecx
;----- asm -----
; 174 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[165]	sendCommand(CMD_SET_BANK, bank);
; 0 "" 2
;--- end asm ---
	ldb	,s	;, bank
	pshs	b	;
	ldb	#5	;,
	jsr	_sendCommand
	leas	2,s	;,,
	rts
	.globl	_blockWaiting
_blockWaiting:
;----- asm -----
; 381 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[319]	drawField();
; 0 "" 2
;--- end asm ---
	jsr	_drawField
;----- asm -----
; 383 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[320]	drawBlock(0);
; 0 "" 2
;--- end asm ---
	clrb	;
	jsr	_drawBlock
;----- asm -----
; 385 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[321]	joybit();
; 0 "" 2
; 2354 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Joy_Digital; BIOS call
; 0 "" 2
; 387 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[322]	if (pot0 < -10) {
; 0 "" 2
;--- end asm ---
	ldb	-14309	; D.2339,
	cmpb	#-10	;cmpqi:	; D.2339,
	bge	L91	;
;----- asm -----
; 389 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[323]		moveBlock(Left);
; 0 "" 2
;--- end asm ---
	clrb	;
	jsr	_moveBlock
;----- asm -----
; 391 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[324]		gameState = BlockMoving;
; 0 "" 2
;--- end asm ---
	ldb	#4	;,
	stb	_gameState	;, gameState
	lbra	L92	;
L91:
	ldb	-14309	; D.2340,
	cmpb	#10	;cmpqi:	; D.2340,
	ble	L93	;
;----- asm -----
; 394 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[326]		moveBlock(Right);
; 0 "" 2
;--- end asm ---
	ldb	#2	;,
	jsr	_moveBlock
;----- asm -----
; 396 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[327]		gameState = BlockMoving;
; 0 "" 2
;--- end asm ---
	ldb	#4	;,
	stb	_gameState	;, gameState
	bra	L92	;
L93:
	ldb	-14308	; D.2342,
	cmpb	#-10	;cmpqi:	; D.2342,
	bge	L94	;
;----- asm -----
; 399 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[329]		moveBlock(Down);
; 0 "" 2
;--- end asm ---
	ldb	#3	;,
	jsr	_moveBlock
;----- asm -----
; 401 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[330]		gameState = BlockMoving;
; 0 "" 2
;--- end asm ---
	ldb	#4	;,
	stb	_gameState	;, gameState
	bra	L92	;
L94:
	ldb	-14308	; D.2343,
	cmpb	#10	;cmpqi:	; D.2343,
	ble	L92	;
;----- asm -----
; 404 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[332]		moveBlock(Up);
; 0 "" 2
;--- end asm ---
	ldb	#1	;,
	jsr	_moveBlock
;----- asm -----
; 406 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[333]		gameState = BlockMoving;
; 0 "" 2
;--- end asm ---
	ldb	#4	;,
	stb	_gameState	;, gameState
L92:
;----- asm -----
; 409 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[335]	if (gameState == BlockMoving) {
; 0 "" 2
;--- end asm ---
	ldb	_gameState	;, gameState
	cmpb	#4	;cmpqi:	;,
	bne	L95	;
;----- asm -----
; 411 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[336]		changeMusic(movingMusic);
; 0 "" 2
;--- end asm ---
	ldx	#_movingMusic	;,
	jsr	_changeMusic
;----- asm -----
; 413 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[337]		*vecx = 3;
; 0 "" 2
;--- end asm ---
	ldb	#3	;,
	stb	[_vecx]	;,* vecx
L95:
;----- asm -----
; 417 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[340]    	Read_Btns();
; 0 "" 2
; 2286 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
; 0 "" 2
; 419 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[341]    	if (Vec_Buttons & 1) {
; 0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#1	;,
	beq	L96	;
;----- asm -----
; 421 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[342]		levelNumber++;
; 0 "" 2
;--- end asm ---
	ldb	_levelNumber	; levelNumber.30, levelNumber
	incb	; levelNumber.30
	stb	_levelNumber	; levelNumber.30, levelNumber
;----- asm -----
; 423 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[343]		if (levelNumber >= levelCount) {
; 0 "" 2
;--- end asm ---
	cmpb	_levelCount	;cmpqi:	; levelNumber.30, levelCount
	blo	L97	;
;----- asm -----
; 425 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[344]			levelNumber = 0;
; 0 "" 2
;--- end asm ---
	clr	_levelNumber	; levelNumber
;----- asm -----
; 427 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[345]			setBank(nextBank);
; 0 "" 2
;--- end asm ---
	ldb	_nextBank	;, nextBank
	jsr	_setBank
L97:
;----- asm -----
; 430 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[347]    		startLevel();
; 0 "" 2
;--- end asm ---
	jsr	_startLevel
L96:
;----- asm -----
; 433 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[349]    	if (Vec_Buttons & 2) {
; 0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#2	;,
	beq	L99	;
;----- asm -----
; 435 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[350]		if (splitMode) {
; 0 "" 2
;--- end asm ---
	tst	_splitMode	; splitMode
	beq	L99	;
;----- asm -----
; 437 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[351]			swapSplit();
; 0 "" 2
;--- end asm ---
	jsr	_swapSplit
L99:
	rts
	.globl	_main
_main:
	pshs	y,u	;
	leas	-4,s	;,,
;----- asm -----
; 746 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[548]	setBank(0);
; 0 "" 2
;--- end asm ---
	clrb	;
	jsr	_setBank
;----- asm -----
; 750 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[551]	*vecx = 4;
; 0 "" 2
;--- end asm ---
	ldb	#4	;,
	stb	[_vecx]	;,* vecx
;----- asm -----
; 754 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[554]	picAvailable = 0;
; 0 "" 2
;--- end asm ---
	clr	_picAvailable	; picAvailable
;----- asm -----
; 756 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[555]	sendCommand(CMD_VERSION, 0);
; 0 "" 2
;--- end asm ---
	clr	,-s	;
	ldb	#1	;,
	jsr	_sendCommand
;----- asm -----
; 758 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[556]	sendCommand(CMD_VERSION, 0);
; 0 "" 2
;--- end asm ---
	clr	,-s	;
	ldb	#1	;,
	jsr	_sendCommand
;----- asm -----
; 760 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[557]	if (sendCommand(CMD_VERSION, 0) == 4) {
; 0 "" 2
;--- end asm ---
	clr	,-s	;
	ldb	#1	;,
	jsr	_sendCommand
	leas	3,s	;,,
	cmpb	#4	;cmpqi:	; D.2454,
	bne	L101	;
;----- asm -----
; 762 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[558]		picAvailable = 1;
; 0 "" 2
;--- end asm ---
	ldb	#1	;,
	stb	_picAvailable	;, picAvailable
L101:
;----- asm -----
; 767 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[562]	memcpy(infoText, "001 - 999�", 10);
; 0 "" 2
;--- end asm ---
	ldx	#12336	;,
	stx	_infoText	;, infoText
	ldx	#12576	;,
	stx	_infoText+2	;, infoText
	ldx	#11552	;,
	stx	_infoText+4	;, infoText
	ldx	#14649	;,
	stx	_infoText+6	;, infoText
	ldx	#14720	;,
	stx	_infoText+8	;, infoText
;----- asm -----
; 771 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[565]	epot0 = 1;
; 0 "" 2
;--- end asm ---
	ldb	#1	;,
	stb	-14305	;,
;----- asm -----
; 773 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[566]	epot1 = 3;
; 0 "" 2
;--- end asm ---
	ldb	#3	;,
	stb	-14304	;,
;----- asm -----
; 775 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[567]	epot2 = 0;
; 0 "" 2
;--- end asm ---
	clr	-14303	;
;----- asm -----
; 777 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[568]	epot3 = 0;
; 0 "" 2
;--- end asm ---
	clr	-14302	;
;----- asm -----
; 780 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[570]	gameState = MainMenu;
; 0 "" 2
;--- end asm ---
	clr	_gameState	; gameState
;----- asm -----
; 782 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[571]	musicInit();
; 0 "" 2
;--- end asm ---
	jsr	_musicInit
;----- asm -----
; 785 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[573]	while (1) {
; 0 "" 2
;--- end asm ---
L113:
;----- asm -----
; 788 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[575]		frwait();
; 0 "" 2
; 97 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
; 0 "" 2
; 791 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[577]		switch (gameState) {
; 0 "" 2
;--- end asm ---
	ldb	_gameState	;, gameState
	cmpb	#6	;cmpqi:	;,
	lbhi	L102	;
	clra		;zero_extendqihi: R:b -> R:d	;,
	std	,s	;,
	aslb	;
	rola	;
	tfr	d,x	;, tmp43
	jmp	[L110,x]	;, tmp43
L110:
	.word	L103
	.word	L104
	.word	L105
	.word	L106
	.word	L107
	.word	L108
	.word	L109
L103:
;----- asm -----
; 795 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[579]        			mainMenu();
; 0 "" 2
;--- end asm ---
	jsr	_mainMenu
;----- asm -----
; 797 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[580]				musicPlay();
; 0 "" 2
;--- end asm ---
	jsr	_musicPlay
;----- asm -----
; 799 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[581]        			break;
; 0 "" 2
;--- end asm ---
	lbra	L102	;
L104:
;----- asm -----
; 803 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[583]				clearMenu();
; 0 "" 2
;--- end asm ---
	jsr	_clearMenu
;----- asm -----
; 805 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[584]				musicPlay();
; 0 "" 2
;--- end asm ---
	jsr	_musicPlay
;----- asm -----
; 807 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[585]				break;
; 0 "" 2
;--- end asm ---
	lbra	L102	;
L105:
;----- asm -----
; 811 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[587]				showInfo();
; 0 "" 2
;--- end asm ---
	jsr	_showInfo
;----- asm -----
; 813 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[588]        			blockMovingToStart();
; 0 "" 2
;--- end asm ---
	jsr	_blockMovingToStart
;----- asm -----
; 815 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[589]        			break;
; 0 "" 2
;--- end asm ---
	lbra	L102	;
L106:
;----- asm -----
; 819 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[591]				showInfo();
; 0 "" 2
;--- end asm ---
	jsr	_showInfo
;----- asm -----
; 821 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[592]        			blockWaiting();
; 0 "" 2
;--- end asm ---
	jsr	_blockWaiting
;----- asm -----
; 823 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[593]        			break;
; 0 "" 2
;--- end asm ---
	lbra	L102	;
L107:
;----- asm -----
; 827 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[595]				showInfo();
; 0 "" 2
;--- end asm ---
	jsr	_showInfo
;----- asm -----
; 829 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[596]        			blockMoving();
; 0 "" 2
;--- end asm ---
	jsr	_blockMoving
;----- asm -----
; 831 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[597]        			break;
; 0 "" 2
;--- end asm ---
	bra	L102	;
L108:
;----- asm -----
; 835 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[599]				showInfo();
; 0 "" 2
;--- end asm ---
	jsr	_showInfo
;----- asm -----
; 837 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[600]        			blockFalling();
; 0 "" 2
;--- end asm ---
	jsr	_blockFalling
;----- asm -----
; 839 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[601]        			break;
; 0 "" 2
;--- end asm ---
	bra	L102	;
L109:
;----- asm -----
; 843 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[603]				showInfo();
; 0 "" 2
;--- end asm ---
	jsr	_showInfo
;----- asm -----
; 845 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[604]        			blockMovingAtEnd();
; 0 "" 2
;--- end asm ---
	jsr	_blockMovingAtEnd
;----- asm -----
; 847 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[605]        			break;
; 0 "" 2
;--- end asm ---
L102:
;----- asm -----
; 852 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[609]		if (gameState > ClearMenu) {
; 0 "" 2
;--- end asm ---
	ldb	_gameState	;, gameState
	cmpb	#1	;cmpqi:	;,
	lbls	L113	;
;----- asm -----
; 854 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[610]    			DP_to_C8();
; 0 "" 2
; 316 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_C8; BIOS call
; 0 "" 2
; 856 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[611]    			replay(currentMusic);
; 0 "" 2
;--- end asm ---
	ldx	_currentMusic	;, currentMusic
	stx	2,s	;, u
;----- asm -----
; 2917 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldu 2,s	; u
	jsr ___Init_Music_chk; BIOS call
; 0 "" 2
; 858 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[612]    			DP_to_D0();
; 0 "" 2
; 300 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_D0; BIOS call
; 0 "" 2
; 860 "/home/frank/data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[613]    			reqout();
; 0 "" 2
; 2880 "/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Do_Sound; BIOS call
; 0 "" 2
;--- end asm ---
	lbra	L113	;
	.globl	_startMusic
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
	.globl	_levelEndMusic
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
	.globl	_fallingMusic
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
	.globl	_movingMusic
_movingMusic:
	.byte	-3
	.byte	-61
	.byte	-2
	.byte	-74
	.byte	1
	.byte	5
	.byte	0
	.byte	-128
	.globl	_currentMusic
	.area	.data
_currentMusic:
	.word	_startMusic
	.globl	_vecx
_vecx:
	.word	-32768
	.globl	_led8
	.area	.text
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
	.area	.bss
	.globl	_infoText
_infoText:	.blkb	10
	.globl	_moveCount
_moveCount:	.blkb	2
	.globl	_levelHighscore
_levelHighscore:	.blkb	2
	.globl	_picAvailable
_picAvailable:	.blkb	1
	.globl	_gameState
_gameState:	.blkb	1
