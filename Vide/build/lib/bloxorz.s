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
;  -I/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/include
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
;  154 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[153]	while (1) {
;  0 "" 2
;--- end asm ---
L2:
;----- asm -----
;  156 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[154]		frwait();
;  0 "" 2
;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  158 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[155]         Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  160 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[156]         Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  162 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[157]         Print_Str_d(-10, -110, msg);
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
	.globl _sendCommand
_sendCommand:
;----- asm -----
;  169 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[163]return 0;
;  0 "" 2
;--- end asm ---
	clrb	; 
	rts
	.globl _writeEeprom
_writeEeprom:
;----- asm -----
;  189 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[175]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L8	; 
;----- asm -----
;  191 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[176]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	pshs	b	;  address
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  193 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[177]	    	sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , data
	stb	,-s	; ,
	ldb	#3	; ,
	jsr	_sendCommand	; 
	leas	2,s	; ,,
L8:
	rts
	.globl _readEeprom
_readEeprom:
;----- asm -----
;  200 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[183]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L10	; 
;----- asm -----
;  202 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[184]		return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;--- end asm ---
	pshs	b	;  address
	ldb	#4	; ,
	jsr	_sendCommand	; 
	leas	1,s	; ,,
	bra	L11	; 
L10:
;----- asm -----
;  205 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[186]		return 0xff;
;  0 "" 2
;--- end asm ---
	ldb	#-1	;  D.2258,
L11:
	rts
	.globl _itoa
_itoa:
	pshs	y,u	; 
	leas	-15,s	; ,,
;----- asm -----
;  214 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[194]	uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	9,s	; , muls
	ldd	#10	; ,
	std	11,s	; , muls
	ldd	#1	; ,
	std	13,s	; , muls
;----- asm -----
;  216 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[195]	if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	leay	,x	;  number.108, number
	cmpx	#999	;cmphi:	;  number.108,
	bls	L14	; 
	ldy	#999	;  number.108,
L14:
;----- asm -----
;  218 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[196]	for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	9,s	; ,,
	stx	5,s	; , ivtmp.104
	ldd	21,s	; , text
	std	7,s	; , ivtmp.106
L18:
;----- asm -----
;  220 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[197]		uint8_t d = 0;
;  0 "" 2
;  222 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[198]		while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldx	5,s	; , ivtmp.104
	ldx	,x	; , muls
	stx	,s	; , D.2274
	pshs	y	;cmphi: R:y with R:x	;  number.108,
	cmpx	,s++	;cmphi:	; 
	bhi	L15	; 
	tfr	x,d	; ,
	nega
	negb
	sbca	#0
	std	3,s	; , ivtmp.96
	tfr	y,d	;  number.108,
	subd	,s	;subhi: R:d -= ,s	; , D.2274
	tfr	d,y	; , number.108
	clr	2,s	;  d
L17:
;----- asm -----
;  224 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[199]			d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  226 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[200]			number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldd	3,s	; , ivtmp.96
	leau	d,y	;  number.107,, number.108
	ldd	,s	; , D.2274
	leax	d,u	;  tmp85,, number.107
	pshs	x	;cmphi: R:x with R:d	;  tmp85,
	cmpd	,s++	;cmphi:	; 
	bhi	L16	; 
	leay	,u	;  number.108, number.107
	bra	L17	; 
L15:
	clr	2,s	;  d
L16:
;----- asm -----
;  229 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[202]		text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , d
	addb	#48	; ,
	ldx	7,s	; , ivtmp.106
	leax	1,x	; ,,
	stx	7,s	; , ivtmp.106
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	5,s	; , ivtmp.104
	leax	2,x	; ,,
	stx	5,s	; , ivtmp.104
	tfr	s,d	; ,
	addd	#15	; ,
	pshs	d	;cmphi: R:d with R:x	; ,
	cmpx	,s++	;cmphi:	; 
	lbne	L18	; 
	leas	15,s	; ,,
	puls	y,u,pc	; 
	.globl _updateInfoText
_updateInfoText:
;----- asm -----
;  236 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[208]	itoa(moveCount, &infoText[0]);
;  0 "" 2
;--- end asm ---
	ldx	#_infoText	; ,
	stx	,--s	; ,
	ldx	_moveCount	; , moveCount
	jsr	_itoa	; 
;----- asm -----
;  239 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[210]	itoa(levelNumber + 1, &infoText[6]);
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
;  245 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[215]	tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  247 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[216]	currentMusic = music;
;  0 "" 2
;--- end asm ---
	stx	_currentMusic	;  music, currentMusic
	rts
	.globl _drawField
_drawField:
	leas	-1,s	; ,,
;----- asm -----
;  313 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[258]	intens(0x35);
;  0 "" 2
;--- end asm ---
	ldb	#53	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  328 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs a, b, dp, x, u
;  0 "" 2
;  329 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda #0xd0
;  0 "" 2
;  330 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		tfr a, dp
;  0 "" 2
;  331 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldx #0
;  0 "" 2
;  332 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb _lineCount
;  0 "" 2
;  333 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	drawFieldLoop:
;  0 "" 2
;  334 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs b
;  0 "" 2
;  335 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  336 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jsr 0xf354
;  0 "" 2
;  337 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  338 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda _lineY0,x
;  0 "" 2
;  339 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb _lineX0,x
;  0 "" 2
;  340 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  341 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jsr 0xf2fc
;  0 "" 2
;  342 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  343 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda _lineY1,x
;  0 "" 2
;  344 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb _lineX1,x
;  0 "" 2
;  345 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		suba _lineY0,x
;  0 "" 2
;  346 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		subb _lineX0,x
;  0 "" 2
;  347 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs x
;  0 "" 2
;  348 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jsr 0xf3df
;  0 "" 2
;  349 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls x
;  0 "" 2
;  350 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda ,x+
;  0 "" 2
;  351 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls b
;  0 "" 2
;  352 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		decb
;  0 "" 2
;  353 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		bne drawFieldLoop
;  0 "" 2
;  354 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls a, b, dp, x, u
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
	rts
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
;  639 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[476]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  641 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[477]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	4,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  643 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[478]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  645 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[479]    Print_Str_d(100, -80, "CLEAR SCORE?�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	4,s	; , a
	ldb	#-80	; ,
	stb	3,s	; , b
	ldx	#LC0	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  647 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[480]    Print_Str_d(50, -110, "3 YES�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	4,s	; , b
	ldx	#LC1	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 4,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  649 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[481]    Print_Str_d(20, -110, "4 NO�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	4,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC2	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  651 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[482]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L28	; 
;----- asm -----
;  653 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[483]		for (uint8_t i = 0; i < 6; i++) {
;  0 "" 2
;--- end asm ---
	clr	,s	;  i
L29:
;----- asm -----
;  655 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[484]			writeEeprom(i, 0xff);
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
	bne	L29	; 
;----- asm -----
;  658 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[486]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L28:
;----- asm -----
;  661 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[488]	if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L31	; 
;----- asm -----
;  663 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[489]		gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L31:
	leas	5,s	; ,,
	puls	u,pc	; 
	.globl _showInfo2
_showInfo2:
	pshs	y	; 
	leas	-3,s	; ,,
;----- asm -----
;  681 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[506]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  683 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[507]	intens(0x50);
;  0 "" 2
;--- end asm ---
	ldb	#80	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  686 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[509]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  688 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[510]	positd(-50, 100);
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
;  690 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[511]	pack1x((void*)led8);
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
;  693 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[513]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  695 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[514]	positd(-40, 110);
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
;  697 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[515]	pack1x((void*)led8);
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
;  700 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[517]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  702 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[518]	positd(-30, 120);
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
;  704 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[519]	pack1x((void*)led8);
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
;  707 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[521]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  709 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[522]	positd(0, 120);
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
;  711 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[523]	pack1x((void*)led8);
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
;  714 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[525]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  716 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[526]	positd(10, 120);
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
;  718 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[527]	pack1x((void*)led8);
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
;  721 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[529]	zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  723 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[530]	positd(20, 120);
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
;  725 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[531]	pack1x((void*)led8);
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
;  731 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[536]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  733 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[537]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  735 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[538]    Print_Str_d(100, -70, infoText);
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
;  360 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[304]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  362 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[305]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  364 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[306]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.22, blockYOfs
	incb	;  blockYOfs.22
	stb	_blockYOfs	;  blockYOfs.22, blockYOfs
;----- asm -----
;  366 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[307]	if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.22
	bne	L39	; 
;----- asm -----
;  368 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[308]		gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
L39:
	rts
	.globl _startLevel
_startLevel:
	leas	-2,s	; ,,
;----- asm -----
;  277 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[237]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  tmp30, levelNumber
	aslb	;  tmp30
	jsr	_readEeprom	; 
	clra		;zero_extendqihi: R:b -> R:d	;  D.2302, D.2302
	std	_levelHighscore	;  D.2302, levelHighscore
;----- asm -----
;  279 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[238]	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
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
	std	_levelHighscore	;  levelHighscore.15, levelHighscore
;----- asm -----
;  281 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[239]	if (levelHighscore == 0) levelHighscore = 999;
;  0 "" 2
;--- end asm ---
	cmpd	#0	;  levelHighscore.15
	bne	L41	; 
	ldx	#999	; ,
	stx	_levelHighscore	; , levelHighscore
L41:
;----- asm -----
;  283 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[240]    level = levels[levelNumber];
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
;  285 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[241]	initSwatches();
;  0 "" 2
;--- end asm ---
	jsr	_initSwatches	; 
;----- asm -----
;  287 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[242]	initLevel();
;  0 "" 2
;--- end asm ---
	jsr	_initLevel	; 
;----- asm -----
;  289 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[243]	blockX = level->start.x;
;  0 "" 2
;--- end asm ---
	ldx	_level	;  level, level
	ldb	2,x	; , <variable>.start.x
	stb	_blockX	; , blockX
;----- asm -----
;  291 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[244]	blockY = level->start.y;
;  0 "" 2
;--- end asm ---
	ldb	3,x	; , <variable>.start.y
	stb	_blockY	; , blockY
;----- asm -----
;  293 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[245]	blockStartLevel();
;  0 "" 2
;--- end asm ---
	jsr	_blockStartLevel	; 
;----- asm -----
;  295 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[246]	blockYOfs = -30;
;  0 "" 2
;--- end asm ---
	ldb	#-30	; ,
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  297 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[247]	gameState = BlockMovingToStart;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  299 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[248]	changeMusic(startMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_startMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  301 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[249]	*vecx = 2;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  303 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[250]	moveCount = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_moveCount	; , moveCount
;----- asm -----
;  305 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[251]	updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
	leas	2,s	; ,,
	rts
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
	leas	-4,s	; ,,
;----- asm -----
;  605 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[455]	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  607 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[456]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  609 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[457]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  611 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[458]    Print_Str_d(100, -70, "MAIN MENU�");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	2,s	; , a
	ldb	#-70	; ,
	stb	3,s	; , b
	ldx	#LC3	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  613 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[459]    Print_Str_d(50, -110, "1 START GAME�");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC4	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  615 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[460]    Print_Str_d(20, -110, "2 CLEAR HIGHSCORE�");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC5	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  617 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[461]    Print_Str_d(-10, -110, "3 BANKING TEST�");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC6	; ,
	stx	,s	; , u
;----- asm -----
;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  619 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[462]	if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L44	; 
;----- asm -----
;  621 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[463]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L44:
;----- asm -----
;  624 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[465]	if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L45	; 
;----- asm -----
;  626 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[466]		gameState = ClearMenu;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_gameState	; , gameState
L45:
;----- asm -----
;  629 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[468]	if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L47	; 
;----- asm -----
;  631 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[469]		sendCommand(CMD_SET_BANK, 1);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	,-s	; ,
	ldb	#5	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  633 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		jmp 0xf000
;  0 "" 2
;--- end asm ---
	leas	1,s	; ,,
L47:
	leas	4,s	; ,,
	puls	u,pc	; 
	.globl _blockMovingAtEnd
_blockMovingAtEnd:
	leas	-2,s	; ,,
;----- asm -----
;  579 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[439]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  581 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[440]	drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  583 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[441]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.49, blockYOfs
	incb	;  blockYOfs.49
	stb	_blockYOfs	;  blockYOfs.49, blockYOfs
;----- asm -----
;  585 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[442]	if (blockYOfs == 30) {
;  0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	;  blockYOfs.49,
	lbne	L52	; 
;----- asm -----
;  587 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[443]		if (moveCount < levelHighscore) {
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.50, moveCount
	cmpx	_levelHighscore	;cmphi:	;  moveCount.50, levelHighscore
	bhs	L50	; 
;----- asm -----
;  589 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[444]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	aslb	; 
	stb	,s	; ,
	tfr	x,d	;  moveCount.50,
	pshs	b	; 
	ldb	1,s	; ,
	jsr	_writeEeprom	; 
;----- asm -----
;  591 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[445]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
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
L50:
;----- asm -----
;  594 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[447]		levelNumber++;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.53, levelNumber
	incb	;  levelNumber.53
	stb	_levelNumber	;  levelNumber.53, levelNumber
;----- asm -----
;  596 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[448]		if (levelNumber >= levelCount) levelNumber = 0;
;  0 "" 2
;--- end asm ---
	cmpb	_levelCount	;cmpqi:	;  levelNumber.53, levelCount
	blo	L51	; 
	clr	_levelNumber	;  levelNumber
L51:
;----- asm -----
;  598 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[449]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L52:
	leas	2,s	; ,,
	rts
	.globl _blockFalling
_blockFalling:
	leas	-1,s	; ,,
;----- asm -----
;  559 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[426]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  561 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[427]	blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	,s	; , blockYOfs.47
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  563 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[428]	if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	bgt	L54	; 
;----- asm -----
;  565 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[429]		drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;--- end asm ---
	negb	;  tmp28
	lda	,s	;mulqihi3	;  blockYOfs.47
	mul
		;movlsbqihi: D->B
	jsr	_drawBlock	; 
;----- asm -----
;  567 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[430]		doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
L54:
;----- asm -----
;  570 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[432]	if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	bne	L56	; 
;----- asm -----
;  572 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[433]		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L56:
	leas	1,s	; ,,
	rts
	.globl _moveBlock
_moveBlock:
;----- asm -----
;  253 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[221]	moveBlockImpl(move);
;  0 "" 2
;--- end asm ---
	jsr	_moveBlockImpl	; 
;----- asm -----
;  255 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[222]	if (moveCount < 999) moveCount++;
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.7, moveCount
	cmpx	#998	;cmphi:	;  moveCount.7,
	bhi	L58	; 
	leax	1,x	; ,, moveCount.7
	stx	_moveCount	; , moveCount
L58:
;----- asm -----
;  257 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]	updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
	rts
	.globl _blockWaiting
_blockWaiting:
;----- asm -----
;  375 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[314]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  377 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[315]	drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  379 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[316]	joybit();
;  0 "" 2
;  2354 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Joy_Digital; BIOS call
;  0 "" 2
;  381 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[317]	if (pot0 < -10) {
;  0 "" 2
;--- end asm ---
	ldb	-14309	;  D.2324,
	cmpb	#-10	;cmpqi:	;  D.2324,
	bge	L61	; 
;----- asm -----
;  383 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[318]		moveBlock(Left);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_moveBlock	; 
;----- asm -----
;  385 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[319]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	jmp	L62	; 
L61:
	ldb	-14309	;  D.2325,
	cmpb	#10	;cmpqi:	;  D.2325,
	ble	L63	; 
;----- asm -----
;  388 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[321]		moveBlock(Right);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  390 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[322]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	bra	L62	; 
L63:
	ldb	-14308	;  D.2327,
	cmpb	#-10	;cmpqi:	;  D.2327,
	bge	L64	; 
;----- asm -----
;  393 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[324]		moveBlock(Down);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  395 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[325]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
	bra	L62	; 
L64:
	ldb	-14308	;  D.2328,
	cmpb	#10	;cmpqi:	;  D.2328,
	ble	L62	; 
;----- asm -----
;  398 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[327]		moveBlock(Up);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  400 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[328]		gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
L62:
;----- asm -----
;  403 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[330]	if (gameState == BlockMoving) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#4	;cmpqi:	; ,
	bne	L65	; 
;----- asm -----
;  405 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[331]		changeMusic(movingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_movingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  407 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[332]		*vecx = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	[_vecx]	; ,* vecx
L65:
;----- asm -----
;  411 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[335]    	Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  413 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[336]    	if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L66	; 
;----- asm -----
;  415 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[337]		levelNumber++;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.28, levelNumber
	incb	;  levelNumber.28
	stb	_levelNumber	;  levelNumber.28, levelNumber
;----- asm -----
;  417 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[338]		if (levelNumber >= levelCount) levelNumber = 0;
;  0 "" 2
;--- end asm ---
	cmpb	_levelCount	;cmpqi:	;  levelNumber.28, levelCount
	blo	L67	; 
	clr	_levelNumber	;  levelNumber
L67:
;----- asm -----
;  419 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[339]    		startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L66:
;----- asm -----
;  422 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[341]    	if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L69	; 
;----- asm -----
;  424 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[342]		if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L69	; 
;----- asm -----
;  426 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[343]			swapSplit();
;  0 "" 2
;--- end asm ---
	jsr	_swapSplit	; 
L69:
	rts
	.globl _startBlockFalling
_startBlockFalling:
;----- asm -----
;  263 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]	gameState = BlockFalling;
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  265 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]	blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  267 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[230]	moveBlock(lastBlockDirection);
;  0 "" 2
;--- end asm ---
	ldb	_lastBlockDirection	; , lastBlockDirection
	jsr	_moveBlock	; 
;----- asm -----
;  269 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[231]	changeMusic(fallingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_fallingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  271 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[232]	*vecx = 0;
;  0 "" 2
;--- end asm ---
	clr	[_vecx]	; * vecx
	rts
	.globl _blockMoving
_blockMoving:
	leas	-7,s	; ,,
;----- asm -----
;  434 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[350]	drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  436 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[351]	drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  438 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[352]	doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
;----- asm -----
;  440 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[353]	if (!blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbne	L96	; 
;----- asm -----
;  443 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[355]		uint8_t c0 = isField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	2,s	; , c0
;----- asm -----
;  445 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[356]		uint8_t c1 = isField(blockX + 1, blockY);
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
;  447 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[357]		uint8_t c2 = isField(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	6,s	; , c2
;----- asm -----
;  449 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[358]		char f0 = getField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	8,s	; , f0
;----- asm -----
;  451 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[359]		char f1 = getField(blockX + 1, blockY);
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
;  453 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[360]		char f2 = getField(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	12,s	; , f2
;----- asm -----
;  455 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[361]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	leas	6,s	; ,,
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L76	; 
	blo	L75	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbne	L74	; 
	bra	L97	; 
L75:
;----- asm -----
;  459 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[363]			if (!c0 || f0 == 'f') {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L78	; 
	ldb	4,s	; , f0
	cmpb	#102	;cmpqi:	; ,
	bne	L79	; 
L78:
;----- asm -----
;  461 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[364]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L79:
;----- asm -----
;  464 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[366]			break;
;  0 "" 2
;--- end asm ---
	bra	L74	; 
L76:
;----- asm -----
;  468 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[368]			if (!c0 || !c2) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L80	; 
	tst	3,s	;  c2
	bne	L81	; 
L80:
;----- asm -----
;  470 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[369]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L81:
;----- asm -----
;  473 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[371]			break;
;  0 "" 2
;--- end asm ---
	bra	L74	; 
L97:
;----- asm -----
;  477 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[373]			if (!c0 || ! c1) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L82	; 
	tst	2,s	;  c1
	bne	L83	; 
L82:
;----- asm -----
;  479 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[374]				startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L83:
;----- asm -----
;  482 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[376]			break;
;  0 "" 2
;--- end asm ---
L74:
;----- asm -----
;  487 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[380]		if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_blockOrientation	;  blockOrientation
	bne	L84	; 
	ldb	_blockX	; , blockX
	cmpb	_endX	;cmpqi:	; , endX
	bne	L84	; 
	ldb	_blockY	; , blockY
	cmpb	_endY	;cmpqi:	; , endY
	bne	L84	; 
	tst	_splitMode	;  splitMode
	bne	L84	; 
;----- asm -----
;  489 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[381]			blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  491 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[382]			gameState = BlockMovingAtEnd;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  493 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[383]			changeMusic(levelEndMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_levelEndMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  495 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[384]			*vecx = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	[_vecx]	; ,* vecx
	bra	L85	; 
L84:
;----- asm -----
;  499 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[387]			if (gameState != BlockFalling) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#5	;cmpqi:	; ,
	beq	L85	; 
;----- asm -----
;  501 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[388]				gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
L85:
;----- asm -----
;  507 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[393]		switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L88	; 
	blo	L87	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbne	L86	; 
	jmp	L98	; 
L87:
;----- asm -----
;  511 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[395]			if (f0 == 's' || f0 == 'h' || f0 == 'v') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	beq	L90	; 
	cmpb	#104	;cmpqi:	; ,
	beq	L90	; 
	cmpb	#118	;cmpqi:	; ,
	bne	L91	; 
L90:
;----- asm -----
;  513 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[396]				swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L91:
;----- asm -----
;  516 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[398]			break;
;  0 "" 2
;--- end asm ---
	jmp	L86	; 
L88:
;----- asm -----
;  520 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[400]			if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L92	; 
;----- asm -----
;  522 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[401]				swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L92:
;----- asm -----
;  525 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[403]			if (f2 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , f2
	cmpb	#115	;cmpqi:	; ,
	bne	L93	; 
;----- asm -----
;  527 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[404]				swatchSwitch(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L93:
;----- asm -----
;  530 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[406]			break;
;  0 "" 2
;--- end asm ---
	bra	L86	; 
L98:
;----- asm -----
;  534 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[408]			if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L94	; 
;----- asm -----
;  536 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[409]				swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L94:
;----- asm -----
;  539 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[411]			if (f1 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , f1
	cmpb	#115	;cmpqi:	; ,
	bne	L95	; 
;----- asm -----
;  541 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[412]				swatchSwitch(blockX + 1, blockY);
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
L95:
;----- asm -----
;  544 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[414]			break;
;  0 "" 2
;--- end asm ---
L86:
;----- asm -----
;  549 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[418]		if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L96	; 
;----- asm -----
;  551 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[419]			testMerge();
;  0 "" 2
;--- end asm ---
	jsr	_testMerge	; 
L96:
	leas	7,s	; ,,
	rts
	.globl _main
_main:
	pshs	y,u	; 
	leas	-4,s	; ,,
;----- asm -----
;  741 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[543]	*vecx = 4;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  745 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[546]	picAvailable = 0;
;  0 "" 2
;--- end asm ---
	clr	_picAvailable	;  picAvailable
;----- asm -----
;  747 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[547]	sendCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  749 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[548]	sendCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  751 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[549]	if (sendCommand(CMD_VERSION, 0) == 4) {
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
	leas	3,s	; ,,
	cmpb	#4	;cmpqi:	;  D.2439,
	bne	L100	; 
;----- asm -----
;  753 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[550]		picAvailable = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_picAvailable	; , picAvailable
L100:
;----- asm -----
;  758 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[554]	memcpy(infoText, "001 - 999�", 10);
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
;  762 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[557]	epot0 = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14305	; ,
;----- asm -----
;  764 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[558]	epot1 = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	-14304	; ,
;----- asm -----
;  766 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[559]	epot2 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14303	; 
;----- asm -----
;  768 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[560]	epot3 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14302	; 
;----- asm -----
;  771 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[562]	gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
;----- asm -----
;  773 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[563]	startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
;----- asm -----
;  777 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[566]	while (1) {
;  0 "" 2
;--- end asm ---
L112:
;----- asm -----
;  780 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[568]		frwait();
;  0 "" 2
;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  783 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[570]		switch (gameState) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#6	;cmpqi:	; ,
	lbhi	L101	; 
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp43
	jmp	[L109,x]	; , tmp43
L109:
	.word L102
	.word L103
	.word L104
	.word L105
	.word L106
	.word L107
	.word L108
L102:
;----- asm -----
;  787 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[572]        			mainMenu();
;  0 "" 2
;--- end asm ---
	jsr	_mainMenu	; 
;----- asm -----
;  790 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[574]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L101	; 
L103:
;----- asm -----
;  794 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[576]				clearMenu();
;  0 "" 2
;--- end asm ---
	jsr	_clearMenu	; 
;----- asm -----
;  797 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[578]				break;
;  0 "" 2
;--- end asm ---
	jmp	L101	; 
L104:
;----- asm -----
;  801 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[580]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  803 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[581]        			blockMovingToStart();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingToStart	; 
;----- asm -----
;  805 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[582]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L101	; 
L105:
;----- asm -----
;  809 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[584]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  811 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[585]        			blockWaiting();
;  0 "" 2
;--- end asm ---
	jsr	_blockWaiting	; 
;----- asm -----
;  813 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[586]        			break;
;  0 "" 2
;--- end asm ---
	jmp	L101	; 
L106:
;----- asm -----
;  817 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[588]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  819 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[589]        			blockMoving();
;  0 "" 2
;--- end asm ---
	jsr	_blockMoving	; 
;----- asm -----
;  821 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[590]        			break;
;  0 "" 2
;--- end asm ---
	bra	L101	; 
L107:
;----- asm -----
;  825 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[592]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  827 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[593]        			blockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_blockFalling	; 
;----- asm -----
;  829 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[594]        			break;
;  0 "" 2
;--- end asm ---
	bra	L101	; 
L108:
;----- asm -----
;  833 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[596]				showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  835 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[597]        			blockMovingAtEnd();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingAtEnd	; 
;----- asm -----
;  837 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[598]        			break;
;  0 "" 2
;--- end asm ---
L101:
;----- asm -----
;  842 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[602]		if (gameState > ClearMenu) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#1	;cmpqi:	; ,
	lbls	L112	; 
;----- asm -----
;  844 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[603]    			DP_to_C8();
;  0 "" 2
;  316 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_C8; BIOS call
;  0 "" 2
;  846 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[604]    			replay(currentMusic);
;  0 "" 2
;--- end asm ---
	ldx	_currentMusic	; , currentMusic
	stx	2,s	; , u
;----- asm -----
;  2917 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldu 2,s	;  u
	jsr ___Init_Music_chk; BIOS call
;  0 "" 2
;  848 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[605]    			DP_to_D0();
;  0 "" 2
;  300 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_D0; BIOS call
;  0 "" 2
;  850 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[606]    			reqout();
;  0 "" 2
;  2880 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Do_Sound; BIOS call
;  0 "" 2
;--- end asm ---
	jmp	L112	; 
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
	.area .bss
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
