;;; gcc for m6809 : Mar 17 2019 12:45:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O1
	.module	bloxorz.enr.c
; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
; -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
; -fno-time-report
; -IC:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include
; -D__INLINE_RUM=1 -DOMMIT_FRAMEPOINTER=1
; C:\data\bloxorz\Vide\source\bloxorz.enr.c
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
; Compiler executable checksum: 8f282e2d9663ae6148257c524e608c63
	.area	.text
	.globl	_runtimeError
_runtimeError:
	pshs	y,u	;
	leas	-4,s	;,,
	leay	,x	; msg, msg
;----- asm -----
; 154 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[153]	while (1) {
;--- end asm ---
L2:
;----- asm -----
; 156 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[154]		frwait();
; 97 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
; 158 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[155]         Intensity_a(0x5f);
;--- end asm ---
	ldb	#95	;,
	stb	3,s	;, a
;----- asm -----
; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	; a
	jsr ___Intensity_a; BIOS call
; 160 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[156]         Vec_Text_Width = 90;
;--- end asm ---
	ldb	#90	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 162 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[157]         Print_Str_d(-10, -110, msg);
;--- end asm ---
	ldb	#-10	;,
	stb	3,s	;, a
	ldb	#-110	;,
	stb	2,s	;, b
	sty	,s	; msg, u
;----- asm -----
; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	; a
	ldb 2,s	; b
	ldu ,s	; u
	jsr ___Print_Str_d; BIOS call
;--- end asm ---
	lbra	L2	;
	.globl	_sendCommand
_sendCommand:
;----- asm -----
; 169 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[163]return 0;
;--- end asm ---
	clrb	;
	rts
	.globl	_writeEeprom
_writeEeprom:
;----- asm -----
; 189 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[175]	if (picAvailable) {
;--- end asm ---
	tst	_picAvailable	; picAvailable
	beq	L8	;
;----- asm -----
; 191 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[176]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;--- end asm ---
	pshs	b	; address
	ldb	#2	;,
	jsr	_sendCommand
;----- asm -----
; 193 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[177]	    	sendCommand(CMD_EEPROM_WRITE, data);
;--- end asm ---
	ldb	3,s	;, data
	stb	,-s	;,
	ldb	#3	;,
	jsr	_sendCommand
	leas	2,s	;,,
L8:
	rts
	.globl	_readEeprom
_readEeprom:
;----- asm -----
; 200 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[183]	if (picAvailable) {
;--- end asm ---
	tst	_picAvailable	; picAvailable
	beq	L10	;
;----- asm -----
; 202 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[184]		return sendCommand(CMD_EEPROM_READ, address);
;--- end asm ---
	pshs	b	; address
	ldb	#4	;,
	jsr	_sendCommand
	leas	1,s	;,,
	bra	L11	;
L10:
;----- asm -----
; 205 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[186]		return 0xff;
;--- end asm ---
	ldb	#-1	; D.2252,
L11:
	rts
	.globl	_itoa
_itoa:
	pshs	y,u	;
	leas	-15,s	;,,
;----- asm -----
; 214 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[194]	uint16_t muls[] = { 100, 10, 1 };
;--- end asm ---
	ldd	#100	;,
	std	9,s	;, muls
	ldd	#10	;,
	std	11,s	;, muls
	ldd	#1	;,
	std	13,s	;, muls
;----- asm -----
; 216 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[195]	if (number > 999) number = 999;
;--- end asm ---
	leay	,x	; number.111, number
	cmpx	#999	;cmphi:	; number.111,
	bls	L14	;
	ldy	#999	; number.111,
L14:
;----- asm -----
; 218 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[196]	for (uint8_t i = 0; i < 3; i++) {
;--- end asm ---
	leax	9,s	;,,
	stx	5,s	;, ivtmp.107
	ldd	21,s	;, text
	std	7,s	;, ivtmp.109
L18:
;----- asm -----
; 220 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[197]		uint8_t d = 0;
; 222 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[198]		while (number >= muls[i]) {
;--- end asm ---
	ldx	5,s	;, ivtmp.107
	ldx	,x	;, muls
	stx	,s	;, D.2268
	pshs	y	;cmphi: R:y with R:x	; number.111,
	cmpx	,s++	;cmphi:	;
	bhi	L15	;
	tfr	x,d	;,
	nega
	negb
	sbca	#0
	std	3,s	;, ivtmp.97
	tfr	y,d	; number.111,
	subd	,s	;subhi: R:d -= ,s	;, D.2268
	tfr	d,y	;, number.111
	clr	2,s	; d
L17:
;----- asm -----
; 224 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[199]			d++;
;--- end asm ---
	inc	2,s	; d
;----- asm -----
; 226 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[200]			number -= muls[i];
;--- end asm ---
	ldd	3,s	;, ivtmp.97
	leau	d,y	; number.110,, number.111
	ldd	,s	;, D.2268
	leax	d,u	; tmp85,, number.110
	pshs	x	;cmphi: R:x with R:d	; tmp85,
	cmpd	,s++	;cmphi:	;
	bhi	L16	;
	leay	,u	; number.111, number.110
	bra	L17	;
L15:
	clr	2,s	; d
L16:
;----- asm -----
; 229 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[202]		text[i] = d + '0';
;--- end asm ---
	ldb	2,s	;, d
	addb	#48	;,
	ldx	7,s	;, ivtmp.109
	leax	1,x	;,,
	stx	7,s	;, ivtmp.109
	leax	-1,x	;,,
	stb	,x+	;,
	ldx	5,s	;, ivtmp.107
	leax	2,x	;,,
	stx	5,s	;, ivtmp.107
	tfr	s,d	;,
	addd	#15; addhi3,3	;,
	pshs	d	;cmphi: R:d with R:x	;,
	cmpx	,s++	;cmphi:	;
	lbne	L18	;
	leas	15,s	;,,
	puls	y,u,pc	;
	.globl	_updateInfoText
_updateInfoText:
;----- asm -----
; 236 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[208]	itoa(moveCount, &infoText[0]);
;--- end asm ---
	ldx	#_infoText	;,
	stx	,--s	;,
	ldx	_moveCount	;, moveCount
	jsr	_itoa
;----- asm -----
; 239 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[210]	itoa(levelNumber + levelOffset, &infoText[6]);
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
; 245 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[215]	tstat = 1;
;--- end asm ---
	ldb	#1	;,
	stb	-14250	;,
;----- asm -----
; 247 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[216]	currentMusic = music;
;--- end asm ---
	stx	_currentMusic	; music, currentMusic
	rts
	.globl	_drawField
_drawField:
	leas	-1,s	;,,
;----- asm -----
; 313 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[258]	intens(0x35);
;--- end asm ---
	ldb	#53	;,
	stb	,s	;, a
;----- asm -----
; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	; a
	jsr ___Intensity_a; BIOS call
; 328 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		pshs a, b, dp, x, u
; 329 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		lda #0xd0
; 330 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		tfr a, dp
; 331 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldx #0
; 332 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldb _lineCount
; 333 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	drawFieldLoop:
; 334 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		pshs b
; 335 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		pshs x
; 336 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		jsr 0xf354
; 337 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		puls x
; 338 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		lda _lineY0,x
; 339 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldb _lineX0,x
; 340 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		pshs x
; 341 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		jsr 0xf2fc
; 342 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		puls x
; 343 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		lda _lineY1,x
; 344 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldb _lineX1,x
; 345 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		suba _lineY0,x
; 346 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		subb _lineX0,x
; 347 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		pshs x
; 348 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		jsr 0xf3df
; 349 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		puls x
; 350 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		lda ,x+
; 351 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		puls b
; 352 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		decb
; 353 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		bne drawFieldLoop
; 354 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
		puls a, b, dp, x, u
;--- end asm ---
	leas	1,s	;,,
	rts
	.globl	_setBank
_setBank:
	leas	-1,s	;,,
	stb	,s	; bank, bank
;----- asm -----
; 375 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[314]	*vecx = 16 + bank;
;--- end asm ---
	addb	#16	; bank,
	stb	[_vecx]	; bank,* vecx
;----- asm -----
; 377 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[315]	sendCommand(CMD_SET_BANK, bank);
;--- end asm ---
	ldb	,s	;, bank
	pshs	b	;
	ldb	#5	;,
	jsr	_sendCommand
	leas	2,s	;,,
	rts
LC0:
	.byte	67,76,69,65,82,32,83,67
	.byte	79,82,69,63,-128,0
LC1:
	.byte	51,32,89,69,83,-128,0
LC2:
	.byte	52,32,78,79,-128,0
	.globl	_clearMenu
_clearMenu:
	pshs	u	;
	leas	-5,s	;,,
;----- asm -----
; 642 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[479]	Read_Btns();
; 2286 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
; 644 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[480]    Intensity_a(0x5f);
;--- end asm ---
	ldb	#95	;,
	stb	4,s	;, a
;----- asm -----
; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 4,s	; a
	jsr ___Intensity_a; BIOS call
; 646 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[481]    Vec_Text_Width = 90;
;--- end asm ---
	ldb	#90	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 648 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[482]    Print_Str_d(100, -80, "CLEAR SCORE?€");
;--- end asm ---
	addb	#10	;,
	stb	4,s	;, a
	ldb	#-80	;,
	stb	3,s	;, b
	ldx	#LC0	;,
	stx	1,s	;, u
;----- asm -----
; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 4,s	; a
	ldb 3,s	; b
	ldu 1,s	; u
	jsr ___Print_Str_d; BIOS call
; 650 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[483]    Print_Str_d(50, -110, "3 YES€");
;--- end asm ---
	ldb	#50	;,
	stb	3,s	;, a
	ldb	#-110	;,
	stb	4,s	;, b
	ldx	#LC1	;,
	stx	1,s	;, u
;----- asm -----
; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	; a
	ldb 4,s	; b
	ldu 1,s	; u
	jsr ___Print_Str_d; BIOS call
; 652 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[484]    Print_Str_d(20, -110, "4 NO€");
;--- end asm ---
	ldb	#20	;,
	stb	4,s	;, a
	ldb	#-110	;,
	stb	3,s	;, b
	ldx	#LC2	;,
	stx	1,s	;, u
;----- asm -----
; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 4,s	; a
	ldb 3,s	; b
	ldu 1,s	; u
	jsr ___Print_Str_d; BIOS call
; 654 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[485]	if (Vec_Buttons & 4) {
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#4	;,
	beq	L30	;
;----- asm -----
; 656 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[486]		for (uint8_t i = 0; i < 6; i++) {
;--- end asm ---
	clr	,s	; i
L31:
;----- asm -----
; 658 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[487]			writeEeprom(i, 0xff);
;--- end asm ---
	ldb	#-1	;,
	stb	,-s	;,
	ldb	1,s	;, i
	jsr	_writeEeprom
	inc	1,s	; i
	leas	1,s	;,,
	ldb	,s	;, i
	cmpb	#6	;cmpqi:	;,
	bne	L31	;
;----- asm -----
; 661 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[489]		gameState = MainMenu;
;--- end asm ---
	clr	_gameState	; gameState
L30:
;----- asm -----
; 664 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[491]	if (Vec_Buttons & 8) {
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#8	;,
	beq	L33	;
;----- asm -----
; 666 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[492]		gameState = MainMenu;
;--- end asm ---
	clr	_gameState	; gameState
L33:
	leas	5,s	;,,
	puls	u,pc	;
	.globl	_showInfo2
_showInfo2:
	pshs	y	;
	leas	-3,s	;,,
;----- asm -----
; 684 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[509]	zergnd();
; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 686 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[510]	intens(0x50);
;--- end asm ---
	ldb	#80	;,
	stb	,s	;, a
;----- asm -----
; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	; a
	jsr ___Intensity_a; BIOS call
; 689 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[512]	zergnd();
; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 691 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[513]	positd(-50, 100);
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#100	;,
	stb	2,s	;, a
	ldb	#-50	;,
	stb	,s	;, b
;----- asm -----
; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	; a
	ldb ,s	; b
	jsr ___Moveto_d; BIOS call
; 693 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[514]	pack1x((void*)led8);
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldy	#_led8	; tmp27,
	sty	,s	; tmp27, x
;----- asm -----
; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	; x
	jsr ___Draw_VLp; BIOS call
; 696 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[516]	zergnd();
; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 698 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[517]	positd(-40, 110);
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#110	;,
	stb	,s	;, a
	ldb	#-40	;,
	stb	2,s	;, b
;----- asm -----
; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	; a
	ldb 2,s	; b
	jsr ___Moveto_d; BIOS call
; 700 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[518]	pack1x((void*)led8);
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	sty	,s	; tmp27, x
;----- asm -----
; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	; x
	jsr ___Draw_VLp; BIOS call
; 703 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[520]	zergnd();
; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 705 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[521]	positd(-30, 120);
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#120	;,
	stb	2,s	;, a
	ldb	#-30	;,
	stb	,s	;, b
;----- asm -----
; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	; a
	ldb ,s	; b
	jsr ___Moveto_d; BIOS call
; 707 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[522]	pack1x((void*)led8);
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	sty	,s	; tmp27, x
;----- asm -----
; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	; x
	jsr ___Draw_VLp; BIOS call
; 710 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[524]	zergnd();
; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 712 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[525]	positd(0, 120);
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#120	;,
	stb	,s	;, a
	clr	2,s	; b
;----- asm -----
; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	; a
	ldb 2,s	; b
	jsr ___Moveto_d; BIOS call
; 714 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[526]	pack1x((void*)led8);
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	sty	,s	; tmp27, x
;----- asm -----
; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	; x
	jsr ___Draw_VLp; BIOS call
; 717 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[528]	zergnd();
; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 719 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[529]	positd(10, 120);
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#120	;,
	stb	2,s	;, a
	ldb	#10	;,
	stb	,s	;, b
;----- asm -----
; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	; a
	ldb ,s	; b
	jsr ___Moveto_d; BIOS call
; 721 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[530]	pack1x((void*)led8);
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	sty	,s	; tmp27, x
;----- asm -----
; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	; x
	jsr ___Draw_VLp; BIOS call
; 724 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[532]	zergnd();
; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
; 726 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[533]	positd(20, 120);
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	ldb	#120	;,
	stb	,s	;, a
	ldb	#20	;,
	stb	2,s	;, b
;----- asm -----
; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	; a
	ldb 2,s	; b
	jsr ___Moveto_d; BIOS call
; 728 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[534]	pack1x((void*)led8);
;--- end asm ---
	ldb	#-128	;,
	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
	sty	,s	; tmp27, x
;----- asm -----
; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	; x
	jsr ___Draw_VLp; BIOS call
;--- end asm ---
	leas	3,s	;,,
	puls	y,pc	;
	.globl	_showInfo
_showInfo:
	pshs	u	;
	leas	-4,s	;,,
;----- asm -----
; 734 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[539]    Intensity_a(0x5f);
;--- end asm ---
	ldb	#95	;,
	stb	3,s	;, a
;----- asm -----
; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	; a
	jsr ___Intensity_a; BIOS call
; 736 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[540]    Vec_Text_Width = 100;
;--- end asm ---
	ldb	#100	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 738 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[541]    Print_Str_d(100, -70, infoText);
;--- end asm ---
	stb	3,s	;, a
	ldb	#-70	;,
	stb	2,s	;, b
	ldx	#_infoText	;,
	stx	,s	;, u
;----- asm -----
; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	; a
	ldb 2,s	; b
	ldu ,s	; u
	jsr ___Print_Str_d; BIOS call
;--- end asm ---
	leas	4,s	;,,
	puls	u,pc	;
	.globl	_blockMovingToStart
_blockMovingToStart:
;----- asm -----
; 360 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[304]	drawField();
;--- end asm ---
	jsr	_drawField
;----- asm -----
; 362 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[305]	drawBlock(blockYOfs);
;--- end asm ---
	ldb	_blockYOfs	;, blockYOfs
	jsr	_drawBlock
;----- asm -----
; 364 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[306]	blockYOfs++;
;--- end asm ---
	ldb	_blockYOfs	; blockYOfs.23, blockYOfs
	incb	; blockYOfs.23
	stb	_blockYOfs	; blockYOfs.23, blockYOfs
;----- asm -----
; 366 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[307]	if (blockYOfs == 0) {
;--- end asm ---
	tstb	; blockYOfs.23
	bne	L41	;
;----- asm -----
; 368 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[308]		gameState = BlockWaiting;
;--- end asm ---
	ldb	#3	;,
	stb	_gameState	;, gameState
L41:
	rts
	.globl	_startLevel
_startLevel:
	leas	-2,s	;,,
;----- asm -----
; 277 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[237]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
;--- end asm ---
	ldb	_levelNumber	; tmp30, levelNumber
	aslb	; tmp30
	jsr	_readEeprom
	clra		;zero_extendqihi: R:b -> R:d	; D.2297, D.2297
	std	_levelHighscore	; D.2297, levelHighscore
;----- asm -----
; 279 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[238]	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
;--- end asm ---
	ldb	_levelNumber	; tmp32, levelNumber
	aslb	; tmp32
	incb	; tmp33
	jsr	_readEeprom
	tfr	b,a	;,
	clrb	;
	ora	_levelHighscore	;, levelHighscore
	orb	_levelHighscore+1	;, levelHighscore
	std	_levelHighscore	; levelHighscore.16, levelHighscore
;----- asm -----
; 281 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[239]	if (levelHighscore == 0) levelHighscore = 999;
;--- end asm ---
	cmpd	#0	; levelHighscore.16
	bne	L43	;
	ldx	#999	;,
	stx	_levelHighscore	;, levelHighscore
L43:
;----- asm -----
; 283 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[240]    level = levels[levelNumber];
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
; 285 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[241]	initSwatches();
;--- end asm ---
	jsr	_initSwatches
;----- asm -----
; 287 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[242]	initLevel();
;--- end asm ---
	jsr	_initLevel
;----- asm -----
; 289 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[243]	blockX = level->start.x;
;--- end asm ---
	ldx	_level	; level, level
	ldb	2,x	;, <variable>.start.x
	stb	_blockX	;, blockX
;----- asm -----
; 291 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[244]	blockY = level->start.y;
;--- end asm ---
	ldb	3,x	;, <variable>.start.y
	stb	_blockY	;, blockY
;----- asm -----
; 293 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[245]	blockStartLevel();
;--- end asm ---
	jsr	_blockStartLevel
;----- asm -----
; 295 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[246]	blockYOfs = -30;
;--- end asm ---
	ldb	#-30	;,
	stb	_blockYOfs	;, blockYOfs
;----- asm -----
; 297 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[247]	gameState = BlockMovingToStart;
;--- end asm ---
	ldb	#2	;,
	stb	_gameState	;, gameState
;----- asm -----
; 299 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[248]	changeMusic(startMusic);
;--- end asm ---
	ldx	#_startMusic	;,
	jsr	_changeMusic
;----- asm -----
; 301 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[249]	*vecx = 2;
;--- end asm ---
	ldb	#2	;,
	stb	[_vecx]	;,* vecx
;----- asm -----
; 303 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[250]	moveCount = 0;
;--- end asm ---
	ldd	#0	;,
	std	_moveCount	;, moveCount
;----- asm -----
; 305 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[251]	updateInfoText();
;--- end asm ---
	jsr	_updateInfoText
	leas	2,s	;,,
	rts
LC3:
	.byte	77,65,73,78,32,77,69,78
	.byte	85,-128,0
LC4:
	.byte	49,32,83,84,65,82,84,32
	.byte	71,65,77,69,-128,0
LC5:
	.byte	50,32,67,76,69,65,82,32
	.byte	72,73,71,72,83,67,79,82
	.byte	69,-128,0
	.globl	_mainMenu
_mainMenu:
	pshs	u	;
	leas	-4,s	;,,
;----- asm -----
; 616 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[463]	Read_Btns();
; 2286 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
; 618 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[464]    Intensity_a(0x5f);
;--- end asm ---
	ldb	#95	;,
	stb	3,s	;, a
;----- asm -----
; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	; a
	jsr ___Intensity_a; BIOS call
; 620 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[465]    Vec_Text_Width = 90;
;--- end asm ---
	ldb	#90	;,
	stb	_Vec_Text_Width	;, Vec_Text_Width
;----- asm -----
; 622 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[466]    Print_Str_d(100, -70, "MAIN MENU€");
;--- end asm ---
	addb	#10	;,
	stb	3,s	;, a
	ldb	#-70	;,
	stb	2,s	;, b
	ldx	#LC3	;,
	stx	,s	;, u
;----- asm -----
; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	; a
	ldb 2,s	; b
	ldu ,s	; u
	jsr ___Print_Str_d; BIOS call
; 624 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[467]    Print_Str_d(50, -110, "1 START GAME€");
;--- end asm ---
	ldb	#50	;,
	stb	2,s	;, a
	ldb	#-110	;,
	stb	3,s	;, b
	ldx	#LC4	;,
	stx	,s	;, u
;----- asm -----
; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	; a
	ldb 3,s	; b
	ldu ,s	; u
	jsr ___Print_Str_d; BIOS call
; 626 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[468]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE€");
;--- end asm ---
	ldb	#20	;,
	stb	3,s	;, a
	ldb	#-110	;,
	stb	2,s	;, b
	ldx	#LC5	;,
	stx	,s	;, u
;----- asm -----
; 666 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	; a
	ldb 2,s	; b
	ldu ,s	; u
	jsr ___Print_Str_d; BIOS call
; 628 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[469]	if (Vec_Buttons & 1) {
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#1	;,
	beq	L46	;
;----- asm -----
; 630 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[470]		startLevel();
;--- end asm ---
	jsr	_startLevel
L46:
;----- asm -----
; 633 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[472]	if (Vec_Buttons & 2) {
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#2	;,
	beq	L48	;
;----- asm -----
; 635 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[473]		gameState = ClearMenu;
;--- end asm ---
	ldb	#1	;,
	stb	_gameState	;, gameState
L48:
	leas	4,s	;,,
	puls	u,pc	;
	.globl	_blockMovingAtEnd
_blockMovingAtEnd:
	leas	-2,s	;,,
;----- asm -----
; 590 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[447]	drawField();
;--- end asm ---
	jsr	_drawField
;----- asm -----
; 592 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[448]	drawBlock(blockYOfs);
;--- end asm ---
	ldb	_blockYOfs	;, blockYOfs
	jsr	_drawBlock
;----- asm -----
; 594 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[449]	blockYOfs++;
;--- end asm ---
	ldb	_blockYOfs	; blockYOfs.52, blockYOfs
	incb	; blockYOfs.52
	stb	_blockYOfs	; blockYOfs.52, blockYOfs
;----- asm -----
; 596 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[450]	if (blockYOfs == 30) {
;--- end asm ---
	cmpb	#30	;cmpqi:	; blockYOfs.52,
	lbne	L53	;
;----- asm -----
; 598 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[451]		if (moveCount < levelHighscore) {
;--- end asm ---
	ldx	_moveCount	; moveCount.53, moveCount
	cmpx	_levelHighscore	;cmphi:	; moveCount.53, levelHighscore
	bhs	L51	;
;----- asm -----
; 600 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[452]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
;--- end asm ---
	ldb	_levelNumber	;, levelNumber
	aslb	;
	stb	,s	;,
	tfr	x,d	; moveCount.53,
	pshs	b	;
	ldb	1,s	;,
	jsr	_writeEeprom
;----- asm -----
; 602 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[453]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
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
L51:
;----- asm -----
; 605 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[455]		levelNumber++;
;--- end asm ---
	ldb	_levelNumber	; levelNumber.56, levelNumber
	incb	; levelNumber.56
	stb	_levelNumber	; levelNumber.56, levelNumber
;----- asm -----
; 607 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[456]		if (levelNumber >= levelCount) levelNumber = 0;
;--- end asm ---
	cmpb	_levelCount	;cmpqi:	; levelNumber.56, levelCount
	blo	L52	;
	clr	_levelNumber	; levelNumber
L52:
;----- asm -----
; 609 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[457]		startLevel();
;--- end asm ---
	jsr	_startLevel
L53:
	leas	2,s	;,,
	rts
	.globl	_blockFalling
_blockFalling:
	leas	-1,s	;,,
;----- asm -----
; 570 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[434]	drawField();
;--- end asm ---
	jsr	_drawField
;----- asm -----
; 572 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[435]	blockYOfs++;
;--- end asm ---
	ldb	_blockYOfs	;, blockYOfs
	incb	;
	stb	,s	;, blockYOfs.50
	stb	_blockYOfs	;, blockYOfs
;----- asm -----
; 574 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[436]	if (blockYOfs < 12) {
;--- end asm ---
	cmpb	#11	;cmpqi:	;,
	bgt	L55	;
;----- asm -----
; 576 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[437]		drawBlock(-blockYOfs*blockYOfs);
;--- end asm ---
	negb	; tmp28
	lda	,s	;mulqihi3	; blockYOfs.50
	mul
		;movlsbqihi: D->B
	jsr	_drawBlock
;----- asm -----
; 578 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[438]		doBlockAnimation();
;--- end asm ---
	jsr	_doBlockAnimation
L55:
;----- asm -----
; 581 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[440]	if (blockYOfs == 50) {
;--- end asm ---
	ldb	_blockYOfs	;, blockYOfs
	cmpb	#50	;cmpqi:	;,
	bne	L57	;
;----- asm -----
; 583 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[441]		startLevel();
;--- end asm ---
	jsr	_startLevel
L57:
	leas	1,s	;,,
	rts
	.globl	_moveBlock
_moveBlock:
;----- asm -----
; 253 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[221]	moveBlockImpl(move);
;--- end asm ---
	jsr	_moveBlockImpl
;----- asm -----
; 255 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[222]	if (moveCount < 999) moveCount++;
;--- end asm ---
	ldx	_moveCount	; moveCount.8, moveCount
	cmpx	#998	;cmphi:	; moveCount.8,
	bhi	L59	;
	leax	1,x	;,, moveCount.8
	stx	_moveCount	;, moveCount
L59:
;----- asm -----
; 257 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[223]	updateInfoText();
;--- end asm ---
	jsr	_updateInfoText
	rts
	.globl	_blockWaiting
_blockWaiting:
;----- asm -----
; 384 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[321]	drawField();
;--- end asm ---
	jsr	_drawField
;----- asm -----
; 386 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[322]	drawBlock(0);
;--- end asm ---
	clrb	;
	jsr	_drawBlock
;----- asm -----
; 388 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[323]	joybit();
; 2354 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Joy_Digital; BIOS call
; 390 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[324]	if (pot0 < -10) {
;--- end asm ---
	ldb	-14309	; D.2324,
	cmpb	#-10	;cmpqi:	; D.2324,
	bge	L62	;
;----- asm -----
; 392 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[325]		moveBlock(Left);
;--- end asm ---
	clrb	;
	jsr	_moveBlock
;----- asm -----
; 394 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[326]		gameState = BlockMoving;
;--- end asm ---
	ldb	#4	;,
	stb	_gameState	;, gameState
	lbra	L63	;
L62:
	ldb	-14309	; D.2325,
	cmpb	#10	;cmpqi:	; D.2325,
	ble	L64	;
;----- asm -----
; 397 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[328]		moveBlock(Right);
;--- end asm ---
	ldb	#2	;,
	jsr	_moveBlock
;----- asm -----
; 399 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[329]		gameState = BlockMoving;
;--- end asm ---
	ldb	#4	;,
	stb	_gameState	;, gameState
	bra	L63	;
L64:
	ldb	-14308	; D.2327,
	cmpb	#-10	;cmpqi:	; D.2327,
	bge	L65	;
;----- asm -----
; 402 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[331]		moveBlock(Down);
;--- end asm ---
	ldb	#3	;,
	jsr	_moveBlock
;----- asm -----
; 404 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[332]		gameState = BlockMoving;
;--- end asm ---
	ldb	#4	;,
	stb	_gameState	;, gameState
	bra	L63	;
L65:
	ldb	-14308	; D.2328,
	cmpb	#10	;cmpqi:	; D.2328,
	ble	L63	;
;----- asm -----
; 407 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[334]		moveBlock(Up);
;--- end asm ---
	ldb	#1	;,
	jsr	_moveBlock
;----- asm -----
; 409 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[335]		gameState = BlockMoving;
;--- end asm ---
	ldb	#4	;,
	stb	_gameState	;, gameState
L63:
;----- asm -----
; 412 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[337]	if (gameState == BlockMoving) {
;--- end asm ---
	ldb	_gameState	;, gameState
	cmpb	#4	;cmpqi:	;,
	bne	L66	;
;----- asm -----
; 414 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[338]		changeMusic(movingMusic);
;--- end asm ---
	ldx	#_movingMusic	;,
	jsr	_changeMusic
;----- asm -----
; 416 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[339]		*vecx = 3;
;--- end asm ---
	ldb	#3	;,
	stb	[_vecx]	;,* vecx
L66:
;----- asm -----
; 420 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[342]    	Read_Btns();
; 2286 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
; 422 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[343]    	if (Vec_Buttons & 1) {
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#1	;,
	beq	L67	;
;----- asm -----
; 424 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[344]		levelNumber++;
;--- end asm ---
	ldb	_levelNumber	; levelNumber.30, levelNumber
	incb	; levelNumber.30
	stb	_levelNumber	; levelNumber.30, levelNumber
;----- asm -----
; 426 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[345]		if (levelNumber >= levelCount) levelNumber = 0;
;--- end asm ---
	cmpb	_levelCount	;cmpqi:	; levelNumber.30, levelCount
	blo	L68	;
	clr	_levelNumber	; levelNumber
L68:
;----- asm -----
; 428 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[346]		setBank(nextBank);
;--- end asm ---
	ldb	_nextBank	;, nextBank
	jsr	_setBank
;----- asm -----
; 430 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[347]    		startLevel();
;--- end asm ---
	jsr	_startLevel
L67:
;----- asm -----
; 433 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[349]    	if (Vec_Buttons & 2) {
;--- end asm ---
	ldb	_Vec_Buttons	;, Vec_Buttons
	bitb	#2	;,
	beq	L70	;
;----- asm -----
; 435 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[350]		if (splitMode) {
;--- end asm ---
	tst	_splitMode	; splitMode
	beq	L70	;
;----- asm -----
; 437 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[351]			swapSplit();
;--- end asm ---
	jsr	_swapSplit
L70:
	rts
	.globl	_startBlockFalling
_startBlockFalling:
;----- asm -----
; 263 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[228]	gameState = BlockFalling;
;--- end asm ---
	ldb	#5	;,
	stb	_gameState	;, gameState
;----- asm -----
; 265 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[229]	blockYOfs = 0;
;--- end asm ---
	clr	_blockYOfs	; blockYOfs
;----- asm -----
; 267 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[230]	moveBlock(lastBlockDirection);
;--- end asm ---
	ldb	_lastBlockDirection	;, lastBlockDirection
	jsr	_moveBlock
;----- asm -----
; 269 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[231]	changeMusic(fallingMusic);
;--- end asm ---
	ldx	#_fallingMusic	;,
	jsr	_changeMusic
;----- asm -----
; 271 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[232]	*vecx = 0;
;--- end asm ---
	clr	[_vecx]	;* vecx
	rts
	.globl	_blockMoving
_blockMoving:
	leas	-7,s	;,,
;----- asm -----
; 445 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[358]	drawField();
;--- end asm ---
	jsr	_drawField
;----- asm -----
; 447 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[359]	drawBlock(0);
;--- end asm ---
	clrb	;
	jsr	_drawBlock
;----- asm -----
; 449 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[360]	doBlockAnimation();
;--- end asm ---
	jsr	_doBlockAnimation
;----- asm -----
; 451 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[361]	if (!blockAnimating) {
;--- end asm ---
	tst	_blockAnimating	; blockAnimating
	lbne	L97	;
;----- asm -----
; 454 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[363]		uint8_t c0 = isField(blockX, blockY);
;--- end asm ---
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	_blockX	;, blockX
	jsr	_isField
	stb	2,s	;, c0
;----- asm -----
; 456 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[364]		uint8_t c1 = isField(blockX + 1, blockY);
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
; 458 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[365]		uint8_t c2 = isField(blockX, blockY + 1);
;--- end asm ---
	ldb	_blockY	;, blockY
	incb	;
	pshs	b	;
	ldb	_blockX	;, blockX
	jsr	_isField
	stb	6,s	;, c2
;----- asm -----
; 460 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[366]		char f0 = getField(blockX, blockY);
;--- end asm ---
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	_blockX	;, blockX
	jsr	_getField
	stb	8,s	;, f0
;----- asm -----
; 462 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[367]		char f1 = getField(blockX + 1, blockY);
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
; 464 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[368]		char f2 = getField(blockX, blockY + 1);
;--- end asm ---
	ldb	_blockY	;, blockY
	incb	;
	pshs	b	;
	ldb	_blockX	;, blockX
	jsr	_getField
	stb	12,s	;, f2
;----- asm -----
; 466 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[369]		switch (blockOrientation) {
;--- end asm ---
	leas	6,s	;,,
	ldb	_blockOrientation	; blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	; blockOrientation,
	beq	L77	;
	blo	L76	;
	cmpb	#2	;cmpqi:	; blockOrientation,
	lbne	L75	;
	bra	L98	;
L76:
;----- asm -----
; 470 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[371]			if (!c0 || f0 == 'f') {
;--- end asm ---
	tst	1,s	; c0
	beq	L79	;
	ldb	4,s	;, f0
	cmpb	#102	;cmpqi:	;,
	bne	L80	;
L79:
;----- asm -----
; 472 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[372]				startBlockFalling();
;--- end asm ---
	jsr	_startBlockFalling
L80:
;----- asm -----
; 475 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[374]			break;
;--- end asm ---
	bra	L75	;
L77:
;----- asm -----
; 479 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[376]			if (!c0 || !c2) {
;--- end asm ---
	tst	1,s	; c0
	beq	L81	;
	tst	3,s	; c2
	bne	L82	;
L81:
;----- asm -----
; 481 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[377]				startBlockFalling();
;--- end asm ---
	jsr	_startBlockFalling
L82:
;----- asm -----
; 484 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[379]			break;
;--- end asm ---
	bra	L75	;
L98:
;----- asm -----
; 488 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[381]			if (!c0 || ! c1) {
;--- end asm ---
	tst	1,s	; c0
	beq	L83	;
	tst	2,s	; c1
	bne	L84	;
L83:
;----- asm -----
; 490 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[382]				startBlockFalling();
;--- end asm ---
	jsr	_startBlockFalling
L84:
;----- asm -----
; 493 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[384]			break;
;--- end asm ---
L75:
;----- asm -----
; 498 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[388]		if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
;--- end asm ---
	tst	_blockOrientation	; blockOrientation
	bne	L85	;
	ldb	_blockX	;, blockX
	cmpb	_endX	;cmpqi:	;, endX
	bne	L85	;
	ldb	_blockY	;, blockY
	cmpb	_endY	;cmpqi:	;, endY
	bne	L85	;
	tst	_splitMode	; splitMode
	bne	L85	;
;----- asm -----
; 500 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[389]			blockYOfs = 0;
;--- end asm ---
	clr	_blockYOfs	; blockYOfs
;----- asm -----
; 502 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[390]			gameState = BlockMovingAtEnd;
;--- end asm ---
	ldb	#6	;,
	stb	_gameState	;, gameState
;----- asm -----
; 504 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[391]			changeMusic(levelEndMusic);
;--- end asm ---
	ldx	#_levelEndMusic	;,
	jsr	_changeMusic
;----- asm -----
; 506 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[392]			*vecx = 1;
;--- end asm ---
	ldb	#1	;,
	stb	[_vecx]	;,* vecx
	bra	L86	;
L85:
;----- asm -----
; 510 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[395]			if (gameState != BlockFalling) {
;--- end asm ---
	ldb	_gameState	;, gameState
	cmpb	#5	;cmpqi:	;,
	beq	L86	;
;----- asm -----
; 512 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[396]				gameState = BlockWaiting;
;--- end asm ---
	ldb	#3	;,
	stb	_gameState	;, gameState
L86:
;----- asm -----
; 518 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[401]		switch (blockOrientation) {
;--- end asm ---
	ldb	_blockOrientation	; blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	; blockOrientation,
	beq	L89	;
	blo	L88	;
	cmpb	#2	;cmpqi:	; blockOrientation,
	lbne	L87	;
	lbra	L99	;
L88:
;----- asm -----
; 522 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[403]			if (f0 == 's' || f0 == 'h' || f0 == 'v') {
;--- end asm ---
	ldb	4,s	;, f0
	cmpb	#115	;cmpqi:	;,
	beq	L91	;
	cmpb	#104	;cmpqi:	;,
	beq	L91	;
	cmpb	#118	;cmpqi:	;,
	bne	L92	;
L91:
;----- asm -----
; 524 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[404]				swatchSwitch(blockX, blockY);
;--- end asm ---
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	_blockX	;, blockX
	jsr	_swatchSwitch
	leas	1,s	;,,
L92:
;----- asm -----
; 527 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[406]			break;
;--- end asm ---
	lbra	L87	;
L89:
;----- asm -----
; 531 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[408]			if (f0 == 's') {
;--- end asm ---
	ldb	4,s	;, f0
	cmpb	#115	;cmpqi:	;,
	bne	L93	;
;----- asm -----
; 533 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[409]				swatchSwitch(blockX, blockY);
;--- end asm ---
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	_blockX	;, blockX
	jsr	_swatchSwitch
	leas	1,s	;,,
L93:
;----- asm -----
; 536 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[411]			if (f2 == 's') {
;--- end asm ---
	ldb	6,s	;, f2
	cmpb	#115	;cmpqi:	;,
	bne	L94	;
;----- asm -----
; 538 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[412]				swatchSwitch(blockX, blockY + 1);
;--- end asm ---
	ldb	_blockY	;, blockY
	incb	;
	pshs	b	;
	ldb	_blockX	;, blockX
	jsr	_swatchSwitch
	leas	1,s	;,,
L94:
;----- asm -----
; 541 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[414]			break;
;--- end asm ---
	bra	L87	;
L99:
;----- asm -----
; 545 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[416]			if (f0 == 's') {
;--- end asm ---
	ldb	4,s	;, f0
	cmpb	#115	;cmpqi:	;,
	bne	L95	;
;----- asm -----
; 547 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[417]				swatchSwitch(blockX, blockY);
;--- end asm ---
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	_blockX	;, blockX
	jsr	_swatchSwitch
	leas	1,s	;,,
L95:
;----- asm -----
; 550 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[419]			if (f1 == 's') {
;--- end asm ---
	ldb	5,s	;, f1
	cmpb	#115	;cmpqi:	;,
	bne	L96	;
;----- asm -----
; 552 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[420]				swatchSwitch(blockX + 1, blockY);
;--- end asm ---
	ldb	_blockX	;, blockX
	incb	;
	stb	,s	;,
	ldb	_blockY	;, blockY
	stb	,-s	;,
	ldb	1,s	;,
	jsr	_swatchSwitch
	leas	1,s	;,,
L96:
;----- asm -----
; 555 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[422]			break;
;--- end asm ---
L87:
;----- asm -----
; 560 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[426]		if (splitMode) {
;--- end asm ---
	tst	_splitMode	; splitMode
	beq	L97	;
;----- asm -----
; 562 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[427]			testMerge();
;--- end asm ---
	jsr	_testMerge
L97:
	leas	7,s	;,,
	rts
	.globl	_main
_main:
	pshs	y,u	;
	leas	-4,s	;,,
;----- asm -----
; 746 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[548]	setBank(0);
;--- end asm ---
	clrb	;
	jsr	_setBank
;----- asm -----
; 750 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[551]	*vecx = 4;
;--- end asm ---
	ldb	#4	;,
	stb	[_vecx]	;,* vecx
;----- asm -----
; 754 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[554]	picAvailable = 0;
;--- end asm ---
	clr	_picAvailable	; picAvailable
;----- asm -----
; 756 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[555]	sendCommand(CMD_VERSION, 0);
;--- end asm ---
	clr	,-s	;
	ldb	#1	;,
	jsr	_sendCommand
;----- asm -----
; 758 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[556]	sendCommand(CMD_VERSION, 0);
;--- end asm ---
	clr	,-s	;
	ldb	#1	;,
	jsr	_sendCommand
;----- asm -----
; 760 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[557]	if (sendCommand(CMD_VERSION, 0) == 4) {
;--- end asm ---
	clr	,-s	;
	ldb	#1	;,
	jsr	_sendCommand
	leas	3,s	;,,
	cmpb	#4	;cmpqi:	; D.2439,
	bne	L101	;
;----- asm -----
; 762 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[558]		picAvailable = 1;
;--- end asm ---
	ldb	#1	;,
	stb	_picAvailable	;, picAvailable
L101:
;----- asm -----
; 767 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[562]	memcpy(infoText, "001 - 999€", 10);
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
; 771 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[565]	epot0 = 1;
;--- end asm ---
	ldb	#1	;,
	stb	-14305	;,
;----- asm -----
; 773 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[566]	epot1 = 3;
;--- end asm ---
	ldb	#3	;,
	stb	-14304	;,
;----- asm -----
; 775 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[567]	epot2 = 0;
;--- end asm ---
	clr	-14303	;
;----- asm -----
; 777 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[568]	epot3 = 0;
;--- end asm ---
	clr	-14302	;
;----- asm -----
; 780 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[570]	gameState = MainMenu;
;--- end asm ---
	clr	_gameState	; gameState
;----- asm -----
; 782 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[571]	startLevel();
;--- end asm ---
	jsr	_startLevel
;----- asm -----
; 786 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[574]	while (1) {
;--- end asm ---
L113:
;----- asm -----
; 789 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[576]		frwait();
; 97 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
; 792 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[578]		switch (gameState) {
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
; 796 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[580]        			mainMenu();
;--- end asm ---
	jsr	_mainMenu
;----- asm -----
; 799 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[582]        			break;
;--- end asm ---
	lbra	L102	;
L104:
;----- asm -----
; 803 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[584]				clearMenu();
;--- end asm ---
	jsr	_clearMenu
;----- asm -----
; 806 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[586]				break;
;--- end asm ---
	lbra	L102	;
L105:
;----- asm -----
; 810 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[588]				showInfo();
;--- end asm ---
	jsr	_showInfo
;----- asm -----
; 812 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[589]        			blockMovingToStart();
;--- end asm ---
	jsr	_blockMovingToStart
;----- asm -----
; 814 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[590]        			break;
;--- end asm ---
	lbra	L102	;
L106:
;----- asm -----
; 818 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[592]				showInfo();
;--- end asm ---
	jsr	_showInfo
;----- asm -----
; 820 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[593]        			blockWaiting();
;--- end asm ---
	jsr	_blockWaiting
;----- asm -----
; 822 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[594]        			break;
;--- end asm ---
	lbra	L102	;
L107:
;----- asm -----
; 826 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[596]				showInfo();
;--- end asm ---
	jsr	_showInfo
;----- asm -----
; 828 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[597]        			blockMoving();
;--- end asm ---
	jsr	_blockMoving
;----- asm -----
; 830 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[598]        			break;
;--- end asm ---
	bra	L102	;
L108:
;----- asm -----
; 834 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[600]				showInfo();
;--- end asm ---
	jsr	_showInfo
;----- asm -----
; 836 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[601]        			blockFalling();
;--- end asm ---
	jsr	_blockFalling
;----- asm -----
; 838 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[602]        			break;
;--- end asm ---
	bra	L102	;
L109:
;----- asm -----
; 842 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[604]				showInfo();
;--- end asm ---
	jsr	_showInfo
;----- asm -----
; 844 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[605]        			blockMovingAtEnd();
;--- end asm ---
	jsr	_blockMovingAtEnd
;----- asm -----
; 846 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[606]        			break;
;--- end asm ---
L102:
;----- asm -----
; 851 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[610]		if (gameState > ClearMenu) {
;--- end asm ---
	ldb	_gameState	;, gameState
	cmpb	#1	;cmpqi:	;,
	lbls	L113	;
;----- asm -----
; 853 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[611]    			DP_to_C8();
; 316 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___DP_to_C8; BIOS call
; 855 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[612]    			replay(currentMusic);
;--- end asm ---
	ldx	_currentMusic	;, currentMusic
	stx	2,s	;, u
;----- asm -----
; 2917 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldu 2,s	; u
	jsr ___Init_Music_chk; BIOS call
; 857 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[613]    			DP_to_D0();
; 300 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___DP_to_D0; BIOS call
; 859 "C:\data\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[614]    			reqout();
; 2880 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Do_Sound; BIOS call
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
