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
;  204 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[194]    while (1) {
;  0 "" 2
;--- end asm ---
L2:
;----- asm -----
;  206 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[195]        frwait();
;  0 "" 2
;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  208 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[196]        Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  210 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[197]        Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  212 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[198]        Print_Str_d(-10, -110, msg);
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
;  244 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[223]    uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	9,s	; , muls
	ldd	#10	; ,
	std	11,s	; , muls
	ldd	#1	; ,
	std	13,s	; , muls
;----- asm -----
;  246 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[224]    if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	leay	,x	;  number.118, number
	cmpx	#999	;cmphi:	;  number.118,
	bls	L5	; 
	ldy	#999	;  number.118,
L5:
;----- asm -----
;  248 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[225]    for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	9,s	; ,,
	stx	5,s	; , ivtmp.114
	ldd	21,s	; , text
	std	7,s	; , ivtmp.116
L9:
;----- asm -----
;  250 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[226]        uint8_t d = 0;
;  0 "" 2
;  252 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[227]        while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldx	5,s	; , ivtmp.114
	ldx	,x	; , muls
	stx	,s	; , D.2290
	pshs	y	;cmphi: R:y with R:x	;  number.118,
	cmpx	,s++	;cmphi:	; 
	bhi	L6	; 
	tfr	x,d	; ,
	nega
	negb
	sbca	#0
	std	3,s	; , ivtmp.104
	tfr	y,d	;  number.118,
	subd	,s	;subhi: R:d -= ,s	; , D.2290
	tfr	d,y	; , number.118
	clr	2,s	;  d
L8:
;----- asm -----
;  254 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[228]            d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  256 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[229]            number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldd	3,s	; , ivtmp.104
	leau	d,y	;  number.117,, number.118
	ldd	,s	; , D.2290
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
;  259 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[231]        text[i] = d + '0';
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
;  276 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[244]    tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  278 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[245]    currentMusic = music;
;  0 "" 2
;--- end asm ---
	stx	_currentMusic	;  music, currentMusic
	rts
	.globl _drawField
_drawField:
;----- asm -----
;  386 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	LDA     #0x35
;  0 "" 2
;  387 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	STA     *0xd001     ;Store intensity in D/A
;  0 "" 2
;  388 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	LDD     #0x0504          ;mux disabled channel 2
;  0 "" 2
;  389 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	STA     *0xd000
;  0 "" 2
;  390 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	STB     *0xd000     ;mux enabled channel 2
;  0 "" 2
;  391 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	STB     *0xd000     ;do it again just because
;  0 "" 2
;  392 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	LDB     #0x01
;  0 "" 2
;  393 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	STB     *0xd000     ;turn off mux
;  0 "" 2
;  398 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		pshs u
;  0 "" 2
;  399 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldx #_lineYX_yx_s_dy_dx
;  0 "" 2
;  400 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  401 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  403 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	drawFieldLoop1:
;  0 "" 2
;  418 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  419 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  420 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  421 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  425 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  426 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  427 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  428 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  430 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STU      *0xd00B                    ; 
;  0 "" 2
;  431 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  432 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  433 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  436 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		leax 2,x ; 5
;  0 "" 2
;  437 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda ,x+ ; 6
;  0 "" 2
;  438 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	bmi scale_negative_7f; 3 - negative means, the next line is in offset to this line, not from 0,0
;  0 "" 2
;  439 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  440 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldu #0xff98 ; 3
;  0 "" 2
;  441 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldd ,x ; 5
;  0 "" 2
;  448 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  449 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  450 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  451 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  452 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  453 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  454 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    pshs u    ; 7 
;  0 "" 2
;  455 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    puls u    ; 7 
;  0 "" 2
;  459 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  460 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  463 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  464 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  465 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  466 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  467 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  468 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  469 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  470 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  472 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	leax 2,x
;  0 "" 2
;  473 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb #0x7f
;  0 "" 2
;  474 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		stb *0xd004
;  0 "" 2
;  475 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  476 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		LDd     #0x40CC
;  0 "" 2
;  478 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	LF33D2_1:           BITA     *0xD00D               ;  
;  0 "" 2
;  479 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    BEQ      LF33D2_1                        ;  
;  0 "" 2
;  480 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    clra 
;  0 "" 2
;  481 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    sta      *0xd00a               ;clear shift regigster 
;  0 "" 2
;  484 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		STB *0xd00C ; reset 0
;  0 "" 2
;  485 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  486 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		bne drawFieldLoop1
;  0 "" 2
;  487 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls u, pc
;  0 "" 2
;  494 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	scale_negative_7f:
;  0 "" 2
;  495 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	anda #0x7f ; 2
;  0 "" 2
;  496 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  497 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldu #0xff98 ; 4
;  0 "" 2
;  498 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldd ,x ; 5
;  0 "" 2
;  501 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  502 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  503 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  504 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  505 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  506 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  507 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  508 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  509 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		    brn   scale_negative_7f ; 3 
;  0 "" 2
;  514 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		not_full_cont:
;  0 "" 2
;  515 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  516 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  517 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  518 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  519 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  520 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  521 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  522 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  524 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		not_full_cont_after:
;  0 "" 2
;  525 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	leax 2,x
;  0 "" 2
;  526 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  529 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	nop
;  0 "" 2
;  530 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	brn LF33D2_3
;  0 "" 2
;  533 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    LDb      #0x40                         ;  
;  0 "" 2
;  534 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	LF33D2_3:           BITb     *0xD00D               ;  
;  0 "" 2
;  535 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    BEQ      LF33D2_3                        ;  
;  0 "" 2
;  536 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    sta      *0xd00a               ;clear shift regigster, a is still zero 
;  0 "" 2
;  541 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  545 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  546 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  547 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  548 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  549 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  550 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  551 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  554 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		leax 2,x ; 5
;  0 "" 2
;  555 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lda ,x+ ; 6
;  0 "" 2
;  556 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	bmi scale_negative; next is also no full move
;  0 "" 2
;  557 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  558 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldu #0xff98 ; 4
;  0 "" 2
;  564 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    LDa      #0x40                         ;  
;  0 "" 2
;  565 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	LF33D2_4:           BITa     *0xD00D               ;  
;  0 "" 2
;  566 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    BEQ      LF33D2_4                        ;  
;  0 "" 2
;  570 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldd ,x ; 4
;  0 "" 2
;  571 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  572 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  573 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  574 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  575 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  576 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  577 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  578 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  580 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	leax 2,x
;  0 "" 2
;  581 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldb #0x7f
;  0 "" 2
;  583 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		stb *0xd004
;  0 "" 2
;  584 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  585 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		LDd #0x40CC
;  0 "" 2
;  586 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	LF33D2_5:           BITA     *0xD00D               ;  
;  0 "" 2
;  587 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    BEQ      LF33D2_5                        ;  
;  0 "" 2
;  588 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    clra 
;  0 "" 2
;  589 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    sta      *0xd00a               ;clear shift regigster 
;  0 "" 2
;  592 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		STB *0xd00C ; reset 0
;  0 "" 2
;  593 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  594 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		lbne drawFieldLoop1
;  0 "" 2
;  595 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		puls u, pc
;  0 "" 2
;  598 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	scale_negative:
;  0 "" 2
;  599 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	anda #0x7f ; 2
;  0 "" 2
;  600 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  601 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldu #0xff98 ; 4
;  0 "" 2
;  604 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    LDA      #0x40                         ;  
;  0 "" 2
;  605 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	LF33D2_6:           BITA     *0xD00D               ;  
;  0 "" 2
;  606 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    BEQ      LF33D2_6                        ;  
;  0 "" 2
;  607 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
		ldd ,x ; 5
;  0 "" 2
;  610 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  611 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  612 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  613 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  614 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  615 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  616 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  617 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  618 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	 bra not_full_cont_after
;  0 "" 2
;--- end asm ---
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
;  1079 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[841]    Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1081 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[842]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1083 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[843]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1085 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[844]    Print_Str_d(100, -70, "GAME OVER�");
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
;  1087 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[845]    Print_Str_d(50, -110, infoText);
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
;  1089 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[846]    if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L17	; 
;----- asm -----
;  1091 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[847]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L17:
;----- asm -----
;  1094 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[849]    if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L18	; 
;----- asm -----
;  1096 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[850]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L18:
;----- asm -----
;  1099 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[852]    if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L19	; 
;----- asm -----
;  1101 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[853]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L19:
;----- asm -----
;  1104 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[855]    if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L21	; 
;----- asm -----
;  1106 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[856]        gameState = MainMenu;
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
;  1155 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[892]    zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1157 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[893]    intens(0x50);
;  0 "" 2
;--- end asm ---
	ldb	#80	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1160 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[895]    zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1162 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[896]    positd(-50, 100);
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
;  1164 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[897]    pack1x((void*)led8);
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
;  1167 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[899]    zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1169 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[900]    positd(-40, 110);
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
;  1171 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[901]    pack1x((void*)led8);
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
;  1174 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[903]    zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1176 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[904]    positd(-30, 120);
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
;  1178 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[905]    pack1x((void*)led8);
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
;  1181 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[907]    zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1183 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[908]    positd(0, 120);
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
;  1185 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[909]    pack1x((void*)led8);
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
;  1188 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[911]    zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1190 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[912]    positd(10, 120);
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
;  1192 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[913]    pack1x((void*)led8);
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
;  1195 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[915]    zergnd();
;  0 "" 2
;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1197 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[916]    positd(20, 120);
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
;  1199 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[917]    pack1x((void*)led8);
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
;  1205 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[922]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1207 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[923]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1209 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[924]    Print_Str_d(100, -70, infoText);
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
;  629 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[567]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  631 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[568]    drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  633 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[569]    blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.29, blockYOfs
	incb	;  blockYOfs.29
	stb	_blockYOfs	;  blockYOfs.29, blockYOfs
;----- asm -----
;  635 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[570]    if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.29
	bne	L28	; 
;----- asm -----
;  637 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[571]        gameState = BlockWaiting;
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
;  266 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[237]    memcpy(infoText, "001 - 999�", 10);
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
;  268 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[238]    itoa(moveCount, &infoText[0]);
;  0 "" 2
;--- end asm ---
	pshs	x	;  tmp27
	ldx	_moveCount	; , moveCount
	jsr	_itoa	; 
;----- asm -----
;  270 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[239]    itoa(levelNumber + levelOffset, &infoText[6]);
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
;  284 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[250]    moveBlockImpl(move);
;  0 "" 2
;--- end asm ---
	jsr	_moveBlockImpl	; 
;----- asm -----
;  286 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[251]    if (!arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	bne	L34	; 
;----- asm -----
;  288 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[252]        if (moveCount < 999) moveCount++;
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.10, moveCount
	cmpx	#998	;cmphi:	;  moveCount.10,
	bhi	L33	; 
	leax	1,x	; ,, moveCount.10
	stx	_moveCount	; , moveCount
L33:
;----- asm -----
;  290 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[253]        updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
L34:
	rts
	.globl _startBlockFalling
_startBlockFalling:
;----- asm -----
;  297 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[259]    gameState = BlockFalling;
;  0 "" 2
;--- end asm ---
	ldb	#7	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  299 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[260]    blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  301 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[261]    moveBlock(lastBlockDirection);
;  0 "" 2
;--- end asm ---
	ldb	_lastBlockDirection	; , lastBlockDirection
	jsr	_moveBlock	; 
;----- asm -----
;  303 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[262]    changeMusic(fallingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_fallingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  305 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[263]    *vecx = 0;
;  0 "" 2
;--- end asm ---
	clr	[_vecx]	; * vecx
	rts
	.globl _blockMoving
_blockMoving:
	leas	-7,s	; ,,
;----- asm -----
;  775 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[657]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  777 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[658]    drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  779 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[659]    doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
;----- asm -----
;  781 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[660]    if (!blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbne	L63	; 
;----- asm -----
;  784 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[662]        if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L39	; 
;----- asm -----
;  786 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[663]            testMerge();
;  0 "" 2
;--- end asm ---
	jsr	_testMerge	; 
L39:
;----- asm -----
;  791 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[667]        uint8_t c0 = isField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	2,s	; , c0
;----- asm -----
;  793 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[668]        uint8_t c1 = isField(blockX + 1, blockY);
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
;  795 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[669]        uint8_t c2 = isField(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	6,s	; , c2
;----- asm -----
;  797 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[670]        char f0 = getField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	8,s	; , f0
;----- asm -----
;  799 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[671]        char f1 = getField(blockX + 1, blockY);
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
;  801 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[672]        char f2 = getField(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	12,s	; , f2
;----- asm -----
;  803 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[673]        if (splitMode) {
;  0 "" 2
;--- end asm ---
	leas	6,s	; ,,
	tst	_splitMode	;  splitMode
	beq	L40	; 
;----- asm -----
;  805 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[674]            if (!c0) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	lbne	L41	; 
;----- asm -----
;  807 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[675]                startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
	jmp	L41	; 
L40:
;----- asm -----
;  811 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[678]            switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L43	; 
	blo	L42	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbne	L41	; 
	bra	L64	; 
L42:
;----- asm -----
;  815 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[680]                if (!c0 || f0 == 'f') {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L45	; 
	ldb	4,s	; , f0
	cmpb	#102	;cmpqi:	; ,
	bne	L46	; 
L45:
;----- asm -----
;  817 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[681]                    startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L46:
;----- asm -----
;  820 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[683]                break;
;  0 "" 2
;--- end asm ---
	bra	L41	; 
L43:
;----- asm -----
;  824 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[685]                if (!c0 || !c2) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L47	; 
	tst	3,s	;  c2
	bne	L48	; 
L47:
;----- asm -----
;  826 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[686]                    startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L48:
;----- asm -----
;  829 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[688]                break;
;  0 "" 2
;--- end asm ---
	bra	L41	; 
L64:
;----- asm -----
;  833 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[690]                if (!c0 || ! c1) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L49	; 
	tst	2,s	;  c1
	bne	L50	; 
L49:
;----- asm -----
;  835 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[691]                    startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L50:
;----- asm -----
;  838 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[693]                break;
;  0 "" 2
;--- end asm ---
L41:
;----- asm -----
;  844 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[698]        if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_blockOrientation	;  blockOrientation
	bne	L51	; 
	ldb	_blockX	; , blockX
	cmpb	_endX	;cmpqi:	; , endX
	bne	L51	; 
	ldb	_blockY	; , blockY
	cmpb	_endY	;cmpqi:	; , endY
	bne	L51	; 
	tst	_splitMode	;  splitMode
	bne	L51	; 
;----- asm -----
;  846 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[699]            blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  848 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[700]            gameState = BlockMovingAtEnd;
;  0 "" 2
;--- end asm ---
	ldb	#8	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  850 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[701]            changeMusic(levelEndMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_levelEndMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  852 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[702]            *vecx = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	[_vecx]	; ,* vecx
	bra	L52	; 
L51:
;----- asm -----
;  856 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[705]            if (gameState != BlockFalling) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#7	;cmpqi:	; ,
	beq	L52	; 
;----- asm -----
;  858 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[706]                gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	stb	_gameState	; , gameState
L52:
;----- asm -----
;  864 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[711]        if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L53	; 
;----- asm -----
;  866 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[712]            if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	lbne	L63	; 
;----- asm -----
;  868 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[713]                swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
	jmp	L63	; 
L53:
;----- asm -----
;  872 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[716]            switch (blockOrientation) {
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L55	; 
	blo	L54	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbne	L63	; 
	jmp	L65	; 
L54:
;----- asm -----
;  876 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[718]                if (f0 == 's' || f0 == 'h' || f0 == 'v') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	beq	L57	; 
	cmpb	#104	;cmpqi:	; ,
	beq	L57	; 
	cmpb	#118	;cmpqi:	; ,
	bne	L58	; 
L57:
;----- asm -----
;  878 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[719]                    swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L58:
;----- asm -----
;  881 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[721]                break;
;  0 "" 2
;--- end asm ---
	jmp	L63	; 
L55:
;----- asm -----
;  885 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[723]                if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L59	; 
;----- asm -----
;  887 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[724]                    swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L59:
;----- asm -----
;  890 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[726]                if (f2 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , f2
	cmpb	#115	;cmpqi:	; ,
	bne	L60	; 
;----- asm -----
;  892 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[727]                    swatchSwitch(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L60:
;----- asm -----
;  895 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[729]                break;
;  0 "" 2
;--- end asm ---
	bra	L63	; 
L65:
;----- asm -----
;  899 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[731]                if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L61	; 
;----- asm -----
;  901 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[732]                    swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L61:
;----- asm -----
;  904 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[734]                if (f1 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , f1
	cmpb	#115	;cmpqi:	; ,
	bne	L62	; 
;----- asm -----
;  906 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[735]                    swatchSwitch(blockX + 1, blockY);
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
L62:
;----- asm -----
;  909 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[737]                break;
;  0 "" 2
;--- end asm ---
L63:
	leas	7,s	; ,,
	rts
	.globl _sendCommand
_sendCommand:
	leas	-2,s	; ,,
	stb	,s	;  cmd, cmd
;----- asm -----
;  178 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[177]    uint8_t result;
;  0 "" 2
;  180 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[178]    picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  182 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[179]    picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , cmd
	jsr	_picWrite	; 
;----- asm -----
;  184 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[180]    picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , arg
	jsr	_picWrite	; 
;----- asm -----
;  186 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[181]    result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	1,s	; , result
;----- asm -----
;  188 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[182]    delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  190 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[183]    return result;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , result
	leas	2,s	; ,,
	rts
	.globl _readEeprom
_readEeprom:
;----- asm -----
;  230 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[212]    if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L69	; 
;----- asm -----
;  232 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[213]        return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;--- end asm ---
	pshs	b	;  address
	ldb	#4	; ,
	jsr	_sendCommand	; 
	leas	1,s	; ,,
	bra	L70	; 
L69:
;----- asm -----
;  235 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[215]        return 0xff;
;  0 "" 2
;--- end asm ---
	ldb	#-1	;  D.2274,
L70:
	rts
	.globl _startLevel
_startLevel:
	pshs	y,u	; 
	leas	-4,s	; ,,
;----- asm -----
;  311 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[268]    if (arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	beq	L73	; 
;----- asm -----
;  313 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[269]        levelNumber = arcadeLevels[arcadeSelection][arcadeIndex] - 1;
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
	bra	L74	; 
L73:
;----- asm -----
;  316 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[271]        levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  tmp38, levelNumber
	aslb	;  tmp38
	jsr	_readEeprom	; 
	clra		;zero_extendqihi: R:b -> R:d	;  D.2325, D.2325
	std	_levelHighscore	;  D.2325, levelHighscore
;----- asm -----
;  318 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[272]        levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
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
;  320 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[273]        if (levelHighscore == 0) levelHighscore = 999;
;  0 "" 2
;--- end asm ---
	cmpd	#0	;  levelHighscore.22
	bne	L74	; 
	ldx	#999	; ,
	stx	_levelHighscore	; , levelHighscore
L74:
;----- asm -----
;  328 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[280]    level = levels[levelNumber];
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
;  330 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[281]    initSwatches();
;  0 "" 2
;--- end asm ---
	jsr	_initSwatches	; 
;----- asm -----
;  332 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[282]    initLevel();
;  0 "" 2
;--- end asm ---
	jsr	_initLevel	; 
;----- asm -----
;  334 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[283]    blockX = level->start.x;
;  0 "" 2
;--- end asm ---
	ldx	_level	;  level, level
	ldb	2,x	; , <variable>.start.x
	stb	_blockX	; , blockX
;----- asm -----
;  336 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[284]    blockY = level->start.y;
;  0 "" 2
;--- end asm ---
	ldb	3,x	; , <variable>.start.y
	stb	_blockY	; , blockY
;----- asm -----
;  338 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[285]    blockStartLevel();
;  0 "" 2
;--- end asm ---
	jsr	_blockStartLevel	; 
;----- asm -----
;  340 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[286]    blockYOfs = -30;
;  0 "" 2
;--- end asm ---
	ldb	#-30	; ,
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  342 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[287]    gameState = BlockMovingToStart;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  344 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[288]    changeMusic(startMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_startMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  346 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[289]    *vecx = 2;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  348 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[290]    if (!arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	bne	L75	; 
;----- asm -----
;  350 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[291]        moveCount = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_moveCount	; , moveCount
;----- asm -----
;  352 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[292]        updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
L75:
;----- asm -----
;  355 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[294]    si = 0;
;  0 "" 2
;--- end asm ---
	clr	_si	;  si
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
;  1031 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[813]    Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1033 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[814]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1035 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[815]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1037 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[816]    Print_Str_d(100, -70, "ARCADE MODE�");
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
;  1039 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[817]    Print_Str_d(50, -110, "1 SET 1�");
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
;  1041 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[818]    Print_Str_d(20, -110, "2 SET 2�");
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
;  1043 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[819]    Print_Str_d(-10, -110, "3 SET 3�");
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
;  1045 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[820]    Print_Str_d(-40, -110, "4 SET 4�");
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
;  1047 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[821]    if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L78	; 
;----- asm -----
;  1049 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[822]        arcadeSelection = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeSelection	;  arcadeSelection
;----- asm -----
;  1051 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[823]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L78:
;----- asm -----
;  1054 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[825]    if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L79	; 
;----- asm -----
;  1056 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[826]        arcadeSelection = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  1058 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[827]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L79:
;----- asm -----
;  1061 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[829]    if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L80	; 
;----- asm -----
;  1063 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[830]        arcadeSelection = 2;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  1065 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[831]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L80:
;----- asm -----
;  1068 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[833]    if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L82	; 
;----- asm -----
;  1070 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[834]        arcadeSelection = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  1072 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[835]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L82:
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
;  986 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[787]    Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  988 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[788]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  990 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[789]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  992 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[790]    Print_Str_d(100, -70, "MAIN MENU�");
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
;  994 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[791]    Print_Str_d(50, -110, "1 PUZZLE MODE�");
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
;  996 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[792]    Print_Str_d(20, -110, "2 ARCADE MODE�");
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
;  998 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[793]    Print_Str_d(-10, -110, "3 CLEAR HIGHSCORE�");
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
;  1000 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[794]    if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L84	; 
;----- asm -----
;  1002 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[795]        arcadeMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeMode	;  arcadeMode
;----- asm -----
;  1004 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[796]        levelNumber = 0;
;  0 "" 2
;--- end asm ---
	clr	_levelNumber	;  levelNumber
;----- asm -----
;  1006 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[797]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L84:
;----- asm -----
;  1009 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[799]    if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L85	; 
;----- asm -----
;  1011 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[800]        frames = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_frames	; , frames
;----- asm -----
;  1013 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[801]        moveCount = 0;
;  0 "" 2
;--- end asm ---
	std	_moveCount	; , moveCount
;----- asm -----
;  1015 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[802]        arcadeMode = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_arcadeMode	; , arcadeMode
;----- asm -----
;  1017 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[803]        arcadeIndex = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeIndex	;  arcadeIndex
;----- asm -----
;  1019 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[804]        gameState = ArcadeMenu;
;  0 "" 2
;--- end asm ---
	stb	_gameState	; , gameState
L85:
;----- asm -----
;  1022 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[806]    if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L87	; 
;----- asm -----
;  1024 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[807]        gameState = ClearMenu;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
L87:
	leas	4,s	; ,,
	puls	u,pc	; 
	.globl _blockFalling
_blockFalling:
	leas	-1,s	; ,,
;----- asm -----
;  918 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[745]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  920 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[746]    blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	,s	; , blockYOfs.58
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  922 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[747]    if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	bgt	L89	; 
;----- asm -----
;  924 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[748]        drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;--- end asm ---
	negb	;  tmp28
	lda	,s	;mulqihi3	;  blockYOfs.58
	mul
		;movlsbqihi: D->B
	jsr	_drawBlock	; 
;----- asm -----
;  926 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[749]        doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
L89:
;----- asm -----
;  929 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[751]    if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	bne	L91	; 
;----- asm -----
;  931 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[752]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L91:
	leas	1,s	; ,,
	rts
	.globl _writeEeprom
_writeEeprom:
;----- asm -----
;  219 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[204]    if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L94	; 
;----- asm -----
;  221 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[205]        sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	pshs	b	;  address
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  223 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[206]        sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , data
	stb	,-s	; ,
	ldb	#3	; ,
	jsr	_sendCommand	; 
	leas	2,s	; ,,
L94:
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
;  1113 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[862]    Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1115 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[863]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	4,s	; , a
;----- asm -----
;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	lda 4,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1117 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[864]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1119 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[865]    Print_Str_d(100, -80, "CLEAR SCORE?�");
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
;  1121 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[866]    Print_Str_d(50, -110, "3 YES�");
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
;  1123 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[867]    Print_Str_d(20, -110, "4 NO�");
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
;  1125 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[868]    if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L96	; 
;----- asm -----
;  1127 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[869]        for (uint8_t i = 0; i < 6; i++) {
;  0 "" 2
;--- end asm ---
	clr	,s	;  i
L97:
;----- asm -----
;  1129 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[870]            writeEeprom(i, 0xff);
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
	bne	L97	; 
;----- asm -----
;  1132 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[872]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L96:
;----- asm -----
;  1135 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[874]    if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L99	; 
;----- asm -----
;  1137 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[875]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L99:
	leas	5,s	; ,,
	puls	u,pc	; 
	.globl _blockMovingAtEnd
_blockMovingAtEnd:
	pshs	y,u	; 
	leas	-4,s	; ,,
;----- asm -----
;  938 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[758]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  940 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[759]    drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  942 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[760]    blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.60, blockYOfs
	incb	;  blockYOfs.60
	stb	_blockYOfs	;  blockYOfs.60, blockYOfs
;----- asm -----
;  944 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[761]    if (blockYOfs == 30) {
;  0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	;  blockYOfs.60,
	lbne	L107	; 
;----- asm -----
;  946 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[762]        if (moveCount < levelHighscore) {
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.61, moveCount
	cmpx	_levelHighscore	;cmphi:	;  moveCount.61, levelHighscore
	bhs	L103	; 
;----- asm -----
;  948 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[763]            writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
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
;  950 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[764]            writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
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
L103:
;----- asm -----
;  953 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[766]        if (arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	lbeq	L104	; 
;----- asm -----
;  955 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[767]            arcadeIndex++;
;  0 "" 2
;--- end asm ---
	ldb	_arcadeIndex	;  arcadeIndex.66, arcadeIndex
	incb	;  arcadeIndex.66
	stb	_arcadeIndex	;  arcadeIndex.66, arcadeIndex
;----- asm -----
;  957 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[768]            levelNumber = arcadeLevels[arcadeSelection][arcadeIndex];
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
;  959 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[769]            if (levelNumber == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  levelNumber.68
	lbne	L105	; 
;----- asm -----
;  961 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[770]                gameState = ArcadeEnd;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  963 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[771]                memcpy(infoText, "TIME: 000 SECONDS�", 18);
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
;  965 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[772]                itoa(moveCount, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	#_infoText+6	; ,
	stu	,--s	; ,
	ldx	_moveCount	; , moveCount
	jsr	_itoa	; 
;----- asm -----
;  967 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[773]                arcadeMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeMode	;  arcadeMode
	leas	2,s	; ,,
	bra	L107	; 
L105:
;----- asm -----
;  970 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[775]                startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	bra	L107	; 
L104:
;----- asm -----
;  974 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[778]            levelNumber++;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.69, levelNumber
	incb	;  levelNumber.69
	stb	_levelNumber	;  levelNumber.69, levelNumber
;----- asm -----
;  976 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[779]            if (levelNumber >= levelCount) levelNumber = 0;
;  0 "" 2
;--- end asm ---
	cmpb	_levelCount	;cmpqi:	;  levelNumber.69, levelCount
	blo	L106	; 
	clr	_levelNumber	;  levelNumber
L106:
;----- asm -----
;  978 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[780]            startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L107:
	leas	4,s	; ,,
	puls	y,u,pc	; 
	.globl _setBank
_setBank:
	leas	-1,s	; ,,
	stb	,s	;  bank, bank
;----- asm -----
;  196 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[188]    *vecx = 16 + bank;
;  0 "" 2
;--- end asm ---
	addb	#16	;  bank,
	stb	[_vecx]	;  bank,* vecx
;----- asm -----
;  198 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[189]    sendCommand(CMD_SET_BANK, bank);
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
;  644 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[577]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  646 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[578]    drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  648 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[579]    joybit();
;  0 "" 2
;  2354 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Joy_Digital; BIOS call
;  0 "" 2
;  650 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[580]    if (pot0 < -10) {
;  0 "" 2
;--- end asm ---
	ldb	-14309	;  D.2347,
	cmpb	#-10	;cmpqi:	;  D.2347,
	bge	L111	; 
;----- asm -----
;  652 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[581]        moveBlock(Left);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_moveBlock	; 
;----- asm -----
;  654 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[582]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
	jmp	L112	; 
L111:
	ldb	-14309	;  D.2348,
	cmpb	#10	;cmpqi:	;  D.2348,
	ble	L113	; 
;----- asm -----
;  657 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[584]        moveBlock(Right);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  659 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[585]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
	bra	L112	; 
L113:
	ldb	-14308	;  D.2350,
	cmpb	#-10	;cmpqi:	;  D.2350,
	bge	L114	; 
;----- asm -----
;  662 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[587]        moveBlock(Down);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  664 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[588]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
	bra	L112	; 
L114:
	ldb	-14308	;  D.2351,
	cmpb	#10	;cmpqi:	;  D.2351,
	ble	L112	; 
;----- asm -----
;  667 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[590]        moveBlock(Up);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  669 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[591]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
L112:
;----- asm -----
;  673 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[594]#if 0
;  0 "" 2
;  718 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[621]    if (gameState == BlockMoving) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#6	;cmpqi:	; ,
	bne	L115	; 
;----- asm -----
;  720 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[622]        changeMusic(movingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_movingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  722 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[623]        *vecx = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	[_vecx]	; ,* vecx
L115:
;----- asm -----
;  726 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[626]    Read_Btns();
;  0 "" 2
;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  728 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[627]    if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L116	; 
;----- asm -----
;  730 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[628]        if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L116	; 
;----- asm -----
;  732 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[629]            swapSplit();
;  0 "" 2
;--- end asm ---
	jsr	_swapSplit	; 
L116:
;----- asm -----
;  737 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[633]    if ((Vec_Buttons & 2) && !arcadeMode) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L117	; 
	tst	_arcadeMode	;  arcadeMode
	bne	L117	; 
;----- asm -----
;  739 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[634]        levelNumber++;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.37, levelNumber
	incb	;  levelNumber.37
	stb	_levelNumber	;  levelNumber.37, levelNumber
;----- asm -----
;  741 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[635]        if (levelNumber >= levelCount) {
;  0 "" 2
;--- end asm ---
	cmpb	_levelCount	;cmpqi:	;  levelNumber.37, levelCount
	blo	L118	; 
;----- asm -----
;  743 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[636]            levelNumber = 0;
;  0 "" 2
;--- end asm ---
	clr	_levelNumber	;  levelNumber
;----- asm -----
;  745 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[637]            setBank(nextBank);
;  0 "" 2
;--- end asm ---
	ldb	_nextBank	; , nextBank
	jsr	_setBank	; 
L118:
;----- asm -----
;  748 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[639]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L117:
;----- asm -----
;  751 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[641]    if ((Vec_Buttons & 4) && !arcadeMode) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L119	; 
	tst	_arcadeMode	;  arcadeMode
	bne	L119	; 
;----- asm -----
;  753 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[642]        if (levelNumber > 0) {
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.315, levelNumber
	beq	L120	; 
;----- asm -----
;  755 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[643]            levelNumber--;
;  0 "" 2
;--- end asm ---
	decb	;  levelNumber.315
	stb	_levelNumber	;  levelNumber.315, levelNumber
	bra	L121	; 
L120:
;----- asm -----
;  758 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[645]            levelNumber = levelCount - 1;
;  0 "" 2
;--- end asm ---
	ldb	_levelCount	; , levelCount
	decb	; 
	stb	_levelNumber	; , levelNumber
;----- asm -----
;  760 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[646]            setBank(nextBank);
;  0 "" 2
;--- end asm ---
	ldb	_nextBank	; , nextBank
	jsr	_setBank	; 
L121:
;----- asm -----
;  763 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[648]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L119:
;----- asm -----
;  766 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[650]    if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L123	; 
;----- asm -----
;  768 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[651]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L123:
	rts
	.globl _main
_main:
	pshs	y,u	; 
	leas	-4,s	; ,,
;----- asm -----
;  1217 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[931]    setBank(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_setBank	; 
;----- asm -----
;  1221 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[934]    *vecx = 4;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  1225 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[937]    picAvailable = 0;
;  0 "" 2
;--- end asm ---
	clr	_picAvailable	;  picAvailable
;----- asm -----
;  1227 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[938]    sendCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  1229 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[939]    sendCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  1231 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[940]    if (sendCommand(CMD_VERSION, 0) == 4) {
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
	leas	3,s	; ,,
	cmpb	#4	;cmpqi:	;  D.2493,
	bne	L125	; 
;----- asm -----
;  1233 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[941]        picAvailable = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_picAvailable	; , picAvailable
L125:
;----- asm -----
;  1238 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[945]    epot0 = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14305	; ,
;----- asm -----
;  1240 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[946]    epot1 = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	-14304	; ,
;----- asm -----
;  1242 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[947]    epot2 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14303	; 
;----- asm -----
;  1244 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[948]    epot3 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14302	; 
;----- asm -----
;  1247 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[950]    gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
;----- asm -----
;  1249 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[951]    musicInit();
;  0 "" 2
;--- end asm ---
	jsr	_musicInit	; 
;----- asm -----
;  1252 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[953]    while (1) {
;  0 "" 2
;--- end asm ---
L140:
;----- asm -----
;  1255 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[955]        frwait();
;  0 "" 2
;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  1258 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[957]        switch (gameState) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#8	;cmpqi:	; ,
	lbhi	L126	; 
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp38
	jmp	[L136,x]	; , tmp38
L136:
	.word L127
	.word L128
	.word L129
	.word L130
	.word L131
	.word L132
	.word L133
	.word L134
	.word L135
L127:
;----- asm -----
;  1262 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[959]            mainMenu();
;  0 "" 2
;--- end asm ---
	jsr	_mainMenu	; 
;----- asm -----
;  1264 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[960]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1266 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[961]            break;
;  0 "" 2
;--- end asm ---
	jmp	L126	; 
L130:
;----- asm -----
;  1270 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[963]            clearMenu();
;  0 "" 2
;--- end asm ---
	jsr	_clearMenu	; 
;----- asm -----
;  1272 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[964]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1274 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[965]            break;
;  0 "" 2
;--- end asm ---
	jmp	L126	; 
L128:
;----- asm -----
;  1278 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[967]            arcadeMenu();
;  0 "" 2
;--- end asm ---
	jsr	_arcadeMenu	; 
;----- asm -----
;  1280 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[968]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1282 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[969]            break;
;  0 "" 2
;--- end asm ---
	jmp	L126	; 
L129:
;----- asm -----
;  1286 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[971]            arcadeEnd();
;  0 "" 2
;--- end asm ---
	jsr	_arcadeEnd	; 
;----- asm -----
;  1288 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[972]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1290 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[973]            break;
;  0 "" 2
;--- end asm ---
	jmp	L126	; 
L131:
;----- asm -----
;  1294 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[975]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1296 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[976]            blockMovingToStart();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingToStart	; 
;----- asm -----
;  1298 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[977]            break;
;  0 "" 2
;--- end asm ---
	jmp	L126	; 
L132:
;----- asm -----
;  1302 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[979]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1304 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[980]            blockWaiting();
;  0 "" 2
;--- end asm ---
	jsr	_blockWaiting	; 
;----- asm -----
;  1306 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[981]            break;
;  0 "" 2
;--- end asm ---
	jmp	L126	; 
L133:
;----- asm -----
;  1310 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[983]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1312 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[984]            blockMoving();
;  0 "" 2
;--- end asm ---
	jsr	_blockMoving	; 
;----- asm -----
;  1314 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[985]            break;
;  0 "" 2
;--- end asm ---
	bra	L126	; 
L134:
;----- asm -----
;  1318 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[987]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1320 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[988]            blockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_blockFalling	; 
;----- asm -----
;  1322 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[989]            break;
;  0 "" 2
;--- end asm ---
	bra	L126	; 
L135:
;----- asm -----
;  1326 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[991]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1328 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[992]            blockMovingAtEnd();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingAtEnd	; 
;----- asm -----
;  1330 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[993]            break;
;  0 "" 2
;--- end asm ---
L126:
;----- asm -----
;  1335 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[997]        if (gameState > ClearMenu) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#3	;cmpqi:	; ,
	bls	L137	; 
;----- asm -----
;  1337 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[998]            DP_to_C8();
;  0 "" 2
;  316 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_C8; BIOS call
;  0 "" 2
;  1339 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[999]            replay(currentMusic);
;  0 "" 2
;--- end asm ---
	ldx	_currentMusic	; , currentMusic
	stx	2,s	; , u
;----- asm -----
;  2917 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	ldu 2,s	;  u
	jsr ___Init_Music_chk; BIOS call
;  0 "" 2
;  1341 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[1000]            DP_to_D0();
;  0 "" 2
;  300 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___DP_to_D0; BIOS call
;  0 "" 2
;  1343 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[1001]            reqout();
;  0 "" 2
;  2880 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
	jsr ___Do_Sound; BIOS call
;  0 "" 2
;--- end asm ---
L137:
;----- asm -----
;  1348 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[1005]        if (arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	lbeq	L140	; 
;----- asm -----
;  1350 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[1006]            frames++;
;  0 "" 2
;--- end asm ---
	ldd	_frames	;  frames.83, frames
	addd	#1	;  frames.83,
	std	_frames	;  frames.83, frames
;----- asm -----
;  1352 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[1007]            if (frames == 50) {
;  0 "" 2
;--- end asm ---
	cmpd	#50	;cmphi:	;  frames.83,
	lbne	L140	; 
;----- asm -----
;  1354 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[1008]                frames = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_frames	; , frames
;----- asm -----
;  1356 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[1009]                if (moveCount < 999) {
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.84, moveCount
	cmpx	#998	;cmphi:	;  moveCount.84,
	lbhi	L140	; 
;----- asm -----
;  1358 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[1010]                    moveCount++;
;  0 "" 2
;--- end asm ---
	leax	1,x	; ,, moveCount.84
	stx	_moveCount	; , moveCount
;----- asm -----
;  1360 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
	; #ENR#[1011]                    updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
	jmp	L140	; 
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
_si:	.blkb	1
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
