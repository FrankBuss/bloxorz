;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	bloxorz.enr.c
;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
; 	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.2.
;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
;  -fno-time-report -IC:\data\vide\C\PeerC\vectrex\include -D__RUM_INLINE=1
;  -DOMMIT_FRAMEPOINTER=1 C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c
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
;  Compiler executable checksum: c38122f302f7072aed6a431d27122065
	.area .text
	.globl _runtimeError
_runtimeError:
	pshs	y,u	; 
	leas	-4,s	; ,,
	leay	,x	;  msg, msg
;----- asm -----
;  204 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[194]    while (1) {
;  0 "" 2
;--- end asm ---
L2:
;----- asm -----
;  206 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[195]        frwait();
;  0 "" 2
;  97 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  208 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[196]        Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  210 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[197]        Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  212 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[198]        Print_Str_d(-10, -110, msg);
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	sty	,s	;  msg, u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
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
;  244 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  246 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[224]    if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	leay	,x	;  number.127, number
	cmpx	#999	;cmphi:	;  number.127,
	bls	L5	; 
	ldy	#999	;  number.127,
L5:
;----- asm -----
;  248 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[225]    for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	9,s	; ,,
	stx	5,s	; , ivtmp.123
	ldd	21,s	; , text
	std	7,s	; , ivtmp.125
L9:
;----- asm -----
;  250 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[226]        uint8_t d = 0;
;  0 "" 2
;  252 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[227]        while (number >= muls[i]) {
;  0 "" 2
;--- end asm ---
	ldx	5,s	; , ivtmp.123
	ldx	,x	; , muls
	stx	,s	; , D.2275
	pshs	y	;cmphi: R:y with R:x	;  number.127,
	cmpx	,s++	;cmphi:	; 
	bhi	L6	; 
	tfr	x,d	; ,
	nega
	negb
	sbca	#0
	std	3,s	; , ivtmp.115
	tfr	y,d	;  number.127,
	subd	,s	;subhi: R:d -= ,s	; , D.2275
	tfr	d,y	; , number.127
	clr	2,s	;  d
L8:
;----- asm -----
;  254 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[228]            d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  256 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[229]            number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldd	3,s	; , ivtmp.115
	leau	d,y	;  number.126,, number.127
	ldd	,s	; , D.2275
	leax	d,u	;  tmp85,, number.126
	pshs	x	;cmphi: R:x with R:d	;  tmp85,
	cmpd	,s++	;cmphi:	; 
	bhi	L7	; 
	leay	,u	;  number.127, number.126
	bra	L8	; 
L6:
	clr	2,s	;  d
L7:
;----- asm -----
;  259 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[231]        text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , d
	addb	#48	; ,
	ldx	7,s	; , ivtmp.125
	leax	1,x	; ,,
	stx	7,s	; , ivtmp.125
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	5,s	; , ivtmp.123
	leax	2,x	; ,,
	stx	5,s	; , ivtmp.123
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
;  276 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[244]    tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  278 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[245]    currentMusic = music;
;  0 "" 2
;--- end asm ---
	stx	_currentMusic	;  music, currentMusic
	rts
	.globl _drawField
_drawField:
;----- asm -----
;  381 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LDA     #0x35
;  0 "" 2
;  382 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STA     *0xd001     ;Store intensity in D/A
;  0 "" 2
;  383 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LDD     #0x0504          ;mux disabled channel 2
;  0 "" 2
;  384 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STA     *0xd000
;  0 "" 2
;  385 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STB     *0xd000     ;mux enabled channel 2
;  0 "" 2
;  386 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STB     *0xd000     ;do it again just because
;  0 "" 2
;  387 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LDB     #0x01
;  0 "" 2
;  388 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STB     *0xd000     ;turn off mux
;  0 "" 2
;  393 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		pshs u
;  0 "" 2
;  394 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldx #_lineYX_yx_s_dy_dx
;  0 "" 2
;  395 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  396 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  398 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	drawFieldLoop1:
;  0 "" 2
;  413 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  414 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  415 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  416 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  420 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  421 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  422 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  423 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  425 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STU      *0xd00B                    ; 
;  0 "" 2
;  426 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  427 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  428 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  431 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		leax 2,x ; 5
;  0 "" 2
;  432 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		lda ,x+ ; 6
;  0 "" 2
;  433 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	bmi scale_negative_7f; 3 - negative means, the next line is in offset to this line, not from 0,0
;  0 "" 2
;  434 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  435 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0xff98 ; 3
;  0 "" 2
;  436 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x ; 5
;  0 "" 2
;  443 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  444 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  445 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  446 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  447 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  448 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  449 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u    ; 7 
;  0 "" 2
;  450 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u    ; 7 
;  0 "" 2
;  454 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  455 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  458 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  459 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  460 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  461 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  462 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  463 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  464 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  465 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  467 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	leax 2,x
;  0 "" 2
;  468 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldb #0x7f
;  0 "" 2
;  469 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		stb *0xd004
;  0 "" 2
;  470 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  471 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		LDd     #0x40CC
;  0 "" 2
;  473 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_1:           BITA     *0xD00D               ;  
;  0 "" 2
;  474 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_1                        ;  
;  0 "" 2
;  475 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    clra 
;  0 "" 2
;  476 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    sta      *0xd00a               ;clear shift regigster 
;  0 "" 2
;  479 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		STB *0xd00C ; reset 0
;  0 "" 2
;  480 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  481 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		bne drawFieldLoop1
;  0 "" 2
;  482 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		puls u, pc
;  0 "" 2
;  489 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	scale_negative_7f:
;  0 "" 2
;  490 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	anda #0x7f ; 2
;  0 "" 2
;  491 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  492 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0xff98 ; 4
;  0 "" 2
;  493 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x ; 5
;  0 "" 2
;  496 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  497 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  498 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  499 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  500 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  501 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  502 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  503 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  504 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    brn   scale_negative_7f ; 3 
;  0 "" 2
;  509 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		not_full_cont:
;  0 "" 2
;  510 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  511 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  512 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  513 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  514 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  515 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  516 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  517 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  519 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		not_full_cont_after:
;  0 "" 2
;  520 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	leax 2,x
;  0 "" 2
;  521 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  524 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	nop
;  0 "" 2
;  525 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	brn LF33D2_3
;  0 "" 2
;  528 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    LDb      #0x40                         ;  
;  0 "" 2
;  529 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_3:           BITb     *0xD00D               ;  
;  0 "" 2
;  530 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_3                        ;  
;  0 "" 2
;  531 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    sta      *0xd00a               ;clear shift regigster, a is still zero 
;  0 "" 2
;  536 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  540 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  541 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  542 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  543 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  544 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  545 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  546 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  549 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		leax 2,x ; 5
;  0 "" 2
;  550 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		lda ,x+ ; 6
;  0 "" 2
;  551 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	bmi scale_negative; next is also no full move
;  0 "" 2
;  552 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  553 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0xff98 ; 4
;  0 "" 2
;  559 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    LDa      #0x40                         ;  
;  0 "" 2
;  560 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_4:           BITa     *0xD00D               ;  
;  0 "" 2
;  561 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_4                        ;  
;  0 "" 2
;  565 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x ; 4
;  0 "" 2
;  566 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  567 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  568 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  569 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  570 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  571 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  572 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  573 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  575 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	leax 2,x
;  0 "" 2
;  576 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldb #0x7f
;  0 "" 2
;  578 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		stb *0xd004
;  0 "" 2
;  579 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  580 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		LDd #0x40CC
;  0 "" 2
;  581 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_5:           BITA     *0xD00D               ;  
;  0 "" 2
;  582 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_5                        ;  
;  0 "" 2
;  583 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    clra 
;  0 "" 2
;  584 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    sta      *0xd00a               ;clear shift regigster 
;  0 "" 2
;  587 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		STB *0xd00C ; reset 0
;  0 "" 2
;  588 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  589 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		lbne drawFieldLoop1
;  0 "" 2
;  590 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		puls u, pc
;  0 "" 2
;  593 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	scale_negative:
;  0 "" 2
;  594 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	anda #0x7f ; 2
;  0 "" 2
;  595 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  596 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0xff98 ; 4
;  0 "" 2
;  599 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    LDA      #0x40                         ;  
;  0 "" 2
;  600 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_6:           BITA     *0xD00D               ;  
;  0 "" 2
;  601 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_6                        ;  
;  0 "" 2
;  602 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x ; 5
;  0 "" 2
;  605 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  606 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  607 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  608 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  609 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  610 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  611 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  612 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  613 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  1076 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[839]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1078 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[840]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1080 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[841]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1082 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[842]    Print_Str_d(100, -70, "GAME OVER€");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	2,s	; , a
	ldb	#-70	; ,
	stb	3,s	; , b
	ldx	#LC0	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1084 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[843]    Print_Str_d(50, -110, infoText);
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#_infoText	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1086 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[844]    if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L17	; 
;----- asm -----
;  1088 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[845]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L17:
;----- asm -----
;  1091 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[847]    if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L18	; 
;----- asm -----
;  1093 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[848]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L18:
;----- asm -----
;  1096 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[850]    if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L19	; 
;----- asm -----
;  1098 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[851]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L19:
;----- asm -----
;  1101 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[853]    if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L21	; 
;----- asm -----
;  1103 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[854]        gameState = MainMenu;
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
;  1152 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[890]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1154 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[891]    intens(0x50);
;  0 "" 2
;--- end asm ---
	ldb	#80	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1157 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[893]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1159 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[894]    positd(-50, 100);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#100	; ,
	stb	2,s	; , a
	ldb	#-50	; ,
	stb	,s	; , b
;----- asm -----
;  3315 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb ,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1161 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[895]    pack1x((void*)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldy	#_led8	;  tmp27,
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1164 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[897]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1166 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[898]    positd(-40, 110);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#110	; ,
	stb	,s	; , a
	ldb	#-40	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1168 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[899]    pack1x((void*)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1171 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[901]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1173 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[902]    positd(-30, 120);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#120	; ,
	stb	2,s	; , a
	ldb	#-30	; ,
	stb	,s	; , b
;----- asm -----
;  3315 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb ,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1175 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[903]    pack1x((void*)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1178 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[905]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1180 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[906]    positd(0, 120);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#120	; ,
	stb	,s	; , a
	clr	2,s	;  b
;----- asm -----
;  3315 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1182 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[907]    pack1x((void*)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1185 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[909]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1187 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[910]    positd(10, 120);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#120	; ,
	stb	2,s	; , a
	ldb	#10	; ,
	stb	,s	; , b
;----- asm -----
;  3315 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb ,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1189 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[911]    pack1x((void*)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1192 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[913]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1194 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[914]    positd(20, 120);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#120	; ,
	stb	,s	; , a
	ldb	#20	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1196 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[915]    pack1x((void*)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
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
;  1202 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[920]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1204 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[921]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1206 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[922]    Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	stb	3,s	; , a
	ldb	#-70	; ,
	stb	2,s	; , b
	ldx	#_infoText	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
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
;  624 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[562]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  626 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[563]    drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  628 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[564]    blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.32, blockYOfs
	incb	;  blockYOfs.32
	stb	_blockYOfs	;  blockYOfs.32, blockYOfs
;----- asm -----
;  630 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[565]    if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.32
	bne	L28	; 
;----- asm -----
;  632 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[566]        gameState = BlockWaiting;
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
;  266 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[237]    memcpy(infoText, "001 - 999€", 10);
;  0 "" 2
;--- end asm ---
	ldx	#_infoText	;  tmp28,
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
;  268 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[238]    itoa(moveCount, &infoText[0]);
;  0 "" 2
;--- end asm ---
	pshs	x	;  tmp28
	ldx	_moveCount	; , moveCount
	jsr	_itoa	; 
;----- asm -----
;  270 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[239]    itoa(levelNumber + levelOffset, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.7, levelNumber
	addb	_levelOffset	;  tmp36, levelOffset
	ldx	#_infoText+6	; ,
	stx	,--s	; ,
	clra		;zero_extendqihi: R:b -> R:d	;  tmp36,
	tfr	d,x	; ,
	jsr	_itoa	; 
	leas	4,s	; ,,
	puls	u,pc	; 
	.globl _moveBlock
_moveBlock:
;----- asm -----
;  284 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[250]    moveBlockImpl(move);
;  0 "" 2
;--- end asm ---
	jsr	_moveBlockImpl	; 
;----- asm -----
;  286 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[251]    if (!arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	bne	L34	; 
;----- asm -----
;  288 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  290 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[253]        updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
L34:
	rts
	.globl _startBlockFalling
_startBlockFalling:
;----- asm -----
;  297 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[259]    gameState = BlockFalling;
;  0 "" 2
;--- end asm ---
	ldb	#7	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  299 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[260]    blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  301 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[261]    moveBlock(lastBlockDirection);
;  0 "" 2
;--- end asm ---
	ldb	_lastBlockDirection	; , lastBlockDirection
	jsr	_moveBlock	; 
;----- asm -----
;  303 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[262]    changeMusic(fallingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_fallingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  305 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[263]    *vecx = 0;
;  0 "" 2
;--- end asm ---
	clr	[_vecx]	; * vecx
	rts
	.globl _blockMoving
_blockMoving:
	leas	-7,s	; ,,
;----- asm -----
;  776 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[657]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  778 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[658]    drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  780 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[659]    doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
;----- asm -----
;  782 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[660]    if (!blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbne	L63	; 
;----- asm -----
;  785 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[662]        if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L39	; 
;----- asm -----
;  787 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[663]            testMerge();
;  0 "" 2
;--- end asm ---
	jsr	_testMerge	; 
L39:
;----- asm -----
;  792 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[667]        uint8_t c0 = isField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	2,s	; , c0
;----- asm -----
;  794 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  796 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  798 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[670]        char f0 = getField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	8,s	; , f0
;----- asm -----
;  800 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  802 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  804 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[673]        if (splitMode) {
;  0 "" 2
;--- end asm ---
	leas	6,s	; ,,
	tst	_splitMode	;  splitMode
	beq	L40	; 
;----- asm -----
;  806 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[674]            if (!c0) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	lbne	L41	; 
;----- asm -----
;  808 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[675]                startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
	jmp	L41	; 
L40:
;----- asm -----
;  812 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  816 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  818 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[681]                    startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L46:
;----- asm -----
;  821 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[683]                break;
;  0 "" 2
;--- end asm ---
	bra	L41	; 
L43:
;----- asm -----
;  825 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[685]                if (!c0 || !c2) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L47	; 
	tst	3,s	;  c2
	bne	L48	; 
L47:
;----- asm -----
;  827 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[686]                    startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L48:
;----- asm -----
;  830 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[688]                break;
;  0 "" 2
;--- end asm ---
	bra	L41	; 
L64:
;----- asm -----
;  834 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[690]                if (!c0 || ! c1) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L49	; 
	tst	2,s	;  c1
	bne	L50	; 
L49:
;----- asm -----
;  836 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[691]                    startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L50:
;----- asm -----
;  839 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[693]                break;
;  0 "" 2
;--- end asm ---
L41:
;----- asm -----
;  845 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  847 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[699]            blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  849 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[700]            gameState = BlockMovingAtEnd;
;  0 "" 2
;--- end asm ---
	ldb	#8	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  851 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[701]            changeMusic(levelEndMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_levelEndMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  853 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[702]            *vecx = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	[_vecx]	; ,* vecx
	bra	L52	; 
L51:
;----- asm -----
;  857 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[705]            if (gameState != BlockFalling) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#7	;cmpqi:	; ,
	beq	L52	; 
;----- asm -----
;  859 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[706]                gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	stb	_gameState	; , gameState
L52:
;----- asm -----
;  865 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[711]        if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L53	; 
;----- asm -----
;  867 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[712]            if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	lbne	L63	; 
;----- asm -----
;  869 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  873 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  877 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  879 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  882 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[721]                break;
;  0 "" 2
;--- end asm ---
	jmp	L63	; 
L55:
;----- asm -----
;  886 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[723]                if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L59	; 
;----- asm -----
;  888 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  891 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[726]                if (f2 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , f2
	cmpb	#115	;cmpqi:	; ,
	bne	L60	; 
;----- asm -----
;  893 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  896 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[729]                break;
;  0 "" 2
;--- end asm ---
	bra	L63	; 
L65:
;----- asm -----
;  900 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[731]                if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L61	; 
;----- asm -----
;  902 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  905 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[734]                if (f1 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , f1
	cmpb	#115	;cmpqi:	; ,
	bne	L62	; 
;----- asm -----
;  907 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  910 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  178 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[177]    uint8_t result;
;  0 "" 2
;  180 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[178]    picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  182 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[179]    picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , cmd
	jsr	_picWrite	; 
;----- asm -----
;  184 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[180]    picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , arg
	jsr	_picWrite	; 
;----- asm -----
;  186 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[181]    result = picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	stb	1,s	; , result
;----- asm -----
;  188 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[182]    delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  190 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[183]    return result;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , result
	leas	2,s	; ,,
	rts
	.globl _readEeprom
_readEeprom:
;----- asm -----
;  230 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[212]    if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L69	; 
;----- asm -----
;  232 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  235 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[215]        return 0xff;
;  0 "" 2
;--- end asm ---
	ldb	#-1	;  D.2259,
L70:
	rts
	.globl _startLevel
_startLevel:
	pshs	y,u	; 
	leas	-4,s	; ,,
;----- asm -----
;  311 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[268]    if (arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	beq	L73	; 
;----- asm -----
;  313 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
	leax	d,u	;  tmp40, tmp39,
	exg	d,y	; , arcadeIndex
	leax	d,x	;  tmp41,, tmp41
	exg	d,y	; , arcadeIndex
	ldb	_arcadeLevels,x	;  levelNumber.18, arcadeLevels
	decb	;  levelNumber.18
	stb	_levelNumber	;  levelNumber.18, levelNumber
	bra	L74	; 
L73:
;----- asm -----
;  316 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[271]        levelHighscore = readEeprom((uint8_t) (levelOffset + levelNumber * 2));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	stb	,s	; , levelNumber.19
	aslb	;  tmp43
	addb	_levelOffset	;  tmp44, levelOffset
	jsr	_readEeprom	; 
	clra		;zero_extendqihi: R:b -> R:d	;  D.2312, D.2312
	std	_levelHighscore	;  D.2312, levelHighscore
;----- asm -----
;  318 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[272]        levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelOffset + levelNumber * 2 + 1))) << 8;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	stb	,s	; , levelNumber.22
	ldb	_levelOffset	; , levelOffset
	incb	; 
	stb	1,s	; ,
	ldb	,s	;  tmp47, levelNumber.22
	aslb	;  tmp47
	addb	1,s	;  tmp48,
	jsr	_readEeprom	; 
	tfr	b,a	; ,
	clrb	; 
	ora	_levelHighscore	; , levelHighscore
	orb	_levelHighscore+1	; , levelHighscore
	std	_levelHighscore	;  levelHighscore.24, levelHighscore
;----- asm -----
;  320 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[273]        if (levelHighscore == 0) levelHighscore = 999;
;  0 "" 2
;--- end asm ---
	cmpd	#0	;  levelHighscore.24
	bne	L74	; 
	ldx	#999	; ,
	stx	_levelHighscore	; , levelHighscore
L74:
;----- asm -----
;  323 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[275]    level = levels[levelNumber];
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.25, levelNumber
	clra		;zero_extendqihi: R:b -> R:d	;  levelNumber.25, levelNumber.25
	aslb	; 
	rola	; 
	tfr	d,x	;  levelNumber.25, tmp54
	ldx	_levels,x	; , levels
	stx	_level	; , level
;----- asm -----
;  325 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[276]    initSwatches();
;  0 "" 2
;--- end asm ---
	jsr	_initSwatches	; 
;----- asm -----
;  327 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[277]    initLevel();
;  0 "" 2
;--- end asm ---
	jsr	_initLevel	; 
;----- asm -----
;  329 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[278]    blockX = level->start.x;
;  0 "" 2
;--- end asm ---
	ldx	_level	;  level, level
	ldb	2,x	; , <variable>.start.x
	stb	_blockX	; , blockX
;----- asm -----
;  331 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[279]    blockY = level->start.y;
;  0 "" 2
;--- end asm ---
	ldb	3,x	; , <variable>.start.y
	stb	_blockY	; , blockY
;----- asm -----
;  333 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[280]    blockStartLevel();
;  0 "" 2
;--- end asm ---
	jsr	_blockStartLevel	; 
;----- asm -----
;  335 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[281]    blockYOfs = -30;
;  0 "" 2
;--- end asm ---
	ldb	#-30	; ,
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  337 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[282]    gameState = BlockMovingToStart;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  339 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[283]    changeMusic(startMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_startMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  341 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[284]    *vecx = 2;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  343 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[285]    if (!arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	bne	L75	; 
;----- asm -----
;  345 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[286]        moveCount = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_moveCount	; , moveCount
;----- asm -----
;  347 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[287]        updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
L75:
;----- asm -----
;  350 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[289]    si = 0;
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
;  1028 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[811]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1030 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[812]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1032 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[813]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1034 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[814]    Print_Str_d(100, -70, "ARCADE MODE€");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	3,s	; , a
	ldb	#-70	; ,
	stb	2,s	; , b
	ldx	#LC1	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1036 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[815]    Print_Str_d(50, -110, "1 SET 1€");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC2	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1038 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[816]    Print_Str_d(20, -110, "2 SET 2€");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC3	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1040 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[817]    Print_Str_d(-10, -110, "3 SET 3€");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC4	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1042 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[818]    Print_Str_d(-40, -110, "4 SET 4€");
;  0 "" 2
;--- end asm ---
	ldb	#-40	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC5	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1044 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[819]    if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L78	; 
;----- asm -----
;  1046 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[820]        arcadeSelection = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeSelection	;  arcadeSelection
;----- asm -----
;  1048 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[821]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L78:
;----- asm -----
;  1051 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[823]    if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L79	; 
;----- asm -----
;  1053 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[824]        arcadeSelection = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  1055 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[825]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L79:
;----- asm -----
;  1058 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[827]    if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L80	; 
;----- asm -----
;  1060 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[828]        arcadeSelection = 2;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  1062 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[829]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L80:
;----- asm -----
;  1065 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[831]    if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L82	; 
;----- asm -----
;  1067 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[832]        arcadeSelection = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  1069 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[833]        startLevel();
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
;  983 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[785]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  985 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[786]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  987 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[787]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  989 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[788]    Print_Str_d(100, -70, "MAIN MENU€");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	2,s	; , a
	ldb	#-70	; ,
	stb	3,s	; , b
	ldx	#LC6	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  991 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[789]    Print_Str_d(50, -110, "1 PUZZLE MODE€");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC7	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  993 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[790]    Print_Str_d(20, -110, "2 ARCADE MODE€");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC8	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  995 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[791]    Print_Str_d(-10, -110, "3 CLEAR HIGHSCORE€");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC9	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  997 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[792]    if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L84	; 
;----- asm -----
;  999 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[793]        arcadeMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeMode	;  arcadeMode
;----- asm -----
;  1001 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[794]        levelNumber = 0;
;  0 "" 2
;--- end asm ---
	clr	_levelNumber	;  levelNumber
;----- asm -----
;  1003 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[795]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L84:
;----- asm -----
;  1006 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[797]    if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L85	; 
;----- asm -----
;  1008 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[798]        frames = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_frames	; , frames
;----- asm -----
;  1010 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[799]        moveCount = 0;
;  0 "" 2
;--- end asm ---
	std	_moveCount	; , moveCount
;----- asm -----
;  1012 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[800]        arcadeMode = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_arcadeMode	; , arcadeMode
;----- asm -----
;  1014 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[801]        arcadeIndex = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeIndex	;  arcadeIndex
;----- asm -----
;  1016 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[802]        gameState = ArcadeMenu;
;  0 "" 2
;--- end asm ---
	stb	_gameState	; , gameState
L85:
;----- asm -----
;  1019 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[804]    if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L87	; 
;----- asm -----
;  1021 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[805]        gameState = ClearMenu;
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
;  919 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[745]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  921 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[746]    blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	,s	; , blockYOfs.66
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  923 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[747]    if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	bgt	L89	; 
;----- asm -----
;  925 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[748]        drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;--- end asm ---
	negb	;  tmp28
	lda	,s	;mulqihi3	;  blockYOfs.66
	mul
		;movlsbqihi: D->B
	jsr	_drawBlock	; 
;----- asm -----
;  927 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[749]        doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
L89:
;----- asm -----
;  930 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[751]    if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	bne	L91	; 
;----- asm -----
;  932 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  219 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[204]    if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L94	; 
;----- asm -----
;  221 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[205]        sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	pshs	b	;  address
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  223 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  1110 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[860]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1112 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[861]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	4,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 4,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1114 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[862]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1116 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[863]    Print_Str_d(100, -80, "CLEAR SCORE?€");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	4,s	; , a
	ldb	#-80	; ,
	stb	3,s	; , b
	ldx	#LC10	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1118 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[864]    Print_Str_d(50, -110, "3 YES€");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	4,s	; , b
	ldx	#LC11	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 4,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1120 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[865]    Print_Str_d(20, -110, "4 NO€");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	4,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC12	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1122 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[866]    if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L96	; 
;----- asm -----
;  1124 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[867]        for (uint8_t i = 0; i < 6; i++) {
;  0 "" 2
;--- end asm ---
	clr	,s	;  i
L97:
;----- asm -----
;  1126 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[868]            writeEeprom(i, 0xff);
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
;  1129 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[870]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L96:
;----- asm -----
;  1132 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[872]    if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L99	; 
;----- asm -----
;  1134 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[873]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L99:
	leas	5,s	; ,,
	puls	u,pc	; 
	.globl _setBank
_setBank:
	leas	-1,s	; ,,
	stb	,s	;  bank, bank
;----- asm -----
;  196 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[188]    *vecx = 16 + bank;
;  0 "" 2
;--- end asm ---
	addb	#16	;  bank,
	stb	[_vecx]	;  bank,* vecx
;----- asm -----
;  198 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[189]    sendCommand(CMD_SET_BANK, bank);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , bank
	pshs	b	; 
	ldb	#5	; ,
	jsr	_sendCommand	; 
	leas	2,s	; ,,
	rts
	.globl _nextLevel
_nextLevel:
;----- asm -----
;  639 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[572]    levelNumber++;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.33, levelNumber
	incb	;  levelNumber.34
; Applied peep: 2 (no load after store)
;----- asm -----
;  641 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[573]    if (levelNumber >= levelCount) {
;  0 "" 2
;--- end asm ---
	stb	_levelNumber	;  levelNumber.34, levelNumber
; ORG>	stb	_levelNumber	;  levelNumber.34, levelNumber
; ORG>;----- asm -----
; ORG>;  641 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
; ORG>	; $ENR$[573]    if (levelNumber >= levelCount) {
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	ldb	_levelNumber	;  levelNumber.35, levelNumber
	cmpb	_levelCount	;cmpqi:	;  levelNumber.35, levelCount
	blo	L104	; 
;----- asm -----
;  643 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[574]        levelNumber = 0;
;  0 "" 2
;--- end asm ---
	clr	_levelNumber	;  levelNumber
;----- asm -----
;  645 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[575]        setBank(nextBank);
;  0 "" 2
;--- end asm ---
	ldb	_nextBank	; , nextBank
	jsr	_setBank	; 
L104:
;----- asm -----
;  648 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[577]    startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	rts
	.globl _blockMovingAtEnd
_blockMovingAtEnd:
	pshs	y,u	; 
	leas	-5,s	; ,,
;----- asm -----
;  939 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[758]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  941 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[759]    drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  943 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[760]    blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.68, blockYOfs
	incb	;  blockYOfs.68
	stb	_blockYOfs	;  blockYOfs.68, blockYOfs
;----- asm -----
;  945 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[761]    if (blockYOfs == 30) {
;  0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	;  blockYOfs.68,
	lbne	L111	; 
;----- asm -----
;  947 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[762]        if (moveCount < levelHighscore) {
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.69, moveCount
	cmpx	_levelHighscore	;cmphi:	;  moveCount.69, levelHighscore
	bhs	L108	; 
;----- asm -----
;  949 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[763]            writeEeprom((uint8_t) (levelOffset + 2 * levelNumber), (uint8_t) (moveCount & 0xff));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	aslb	;  tmp35
	addb	_levelOffset	;  tmp35, levelOffset
	stb	,s	;  tmp35,
	tfr	x,d	;  moveCount.69,
	pshs	b	; 
	ldb	1,s	; ,
	jsr	_writeEeprom	; 
;----- asm -----
;  951 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[764]            writeEeprom((uint8_t) (levelOffset + 2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	stb	1,s	; , levelNumber.73
	ldb	_levelOffset	; , levelOffset
	incb	; 
	stb	5,s	; ,
	ldb	1,s	;  tmp38, levelNumber.73
	aslb	;  tmp38
	addb	5,s	;  tmp38,
	stb	4,s	;  tmp38,
	ldd	_moveCount	;  tmp40, moveCount
	tfr	a,b	; ,
	clra		;zero_extendqihi: R:b -> R:d	; ,
	pshs	b	;  tmp40
	ldb	5,s	; ,
	jsr	_writeEeprom	; 
	leas	2,s	; ,,
L108:
;----- asm -----
;  954 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[766]        if (arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	lbeq	L109	; 
;----- asm -----
;  956 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[767]            arcadeIndex++;
;  0 "" 2
;--- end asm ---
	ldb	_arcadeIndex	;  arcadeIndex.76, arcadeIndex
	incb	;  arcadeIndex.76
	stb	_arcadeIndex	;  arcadeIndex.76, arcadeIndex
;----- asm -----
;  958 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[768]            levelNumber = arcadeLevels[arcadeSelection][arcadeIndex];
;  0 "" 2
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	;  arcadeIndex.76,
	tfr	d,y	; , arcadeIndex.76
	ldb	_arcadeSelection	; , arcadeSelection
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	1,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	ldu	1,s	; ,
	leax	d,u	;  tmp46, tmp45,
	exg	d,y	; , arcadeIndex.76
	leax	d,x	;  tmp47,, tmp47
	exg	d,y	; , arcadeIndex.76
	ldb	_arcadeLevels,x	;  levelNumber.78, arcadeLevels
; Applied peep: 2 (no load after store)
;----- asm -----
;  960 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[769]            if (levelNumber == 0) {
;  0 "" 2
;--- end asm ---
	stb	_levelNumber	;  levelNumber.78, levelNumber
; ORG>	stb	_levelNumber	;  levelNumber.78, levelNumber
; ORG>;----- asm -----
; ORG>;  960 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
; ORG>	; $ENR$[769]            if (levelNumber == 0) {
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	ldb	_levelNumber	;  levelNumber.79, levelNumber
	lbne	L110	; 
;----- asm -----
;  962 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[770]                gameState = ArcadeEnd;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  964 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[771]                memcpy(infoText, "TIME: 000 SECONDS€", 18);
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
;  966 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[772]                itoa(moveCount, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	#_infoText+6	; ,
	stu	,--s	; ,
	ldx	_moveCount	; , moveCount
	jsr	_itoa	; 
;----- asm -----
;  968 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[773]                arcadeMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeMode	;  arcadeMode
	leas	2,s	; ,,
	bra	L111	; 
L110:
;----- asm -----
;  971 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[775]                startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	bra	L111	; 
L109:
;----- asm -----
;  975 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[778]		   nextLevel();
;  0 "" 2
;--- end asm ---
	jsr	_nextLevel	; 
L111:
	leas	5,s	; ,,
	puls	y,u,pc	; 
	.globl _blockWaiting
_blockWaiting:
;----- asm -----
;  654 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[582]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  656 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[583]    drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  658 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[584]    joybit();
;  0 "" 2
;  2354 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Joy_Digital; BIOS call
;  0 "" 2
;  660 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[585]    if (pot0 < -10) {
;  0 "" 2
;--- end asm ---
	ldb	-14309	;  D.2345,
	cmpb	#-10	;cmpqi:	;  D.2345,
	bge	L113	; 
;----- asm -----
;  662 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[586]        moveBlock(Left);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_moveBlock	; 
;----- asm -----
;  664 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[587]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
	jmp	L114	; 
L113:
	ldb	-14309	;  D.2346,
	cmpb	#10	;cmpqi:	;  D.2346,
	ble	L115	; 
;----- asm -----
;  667 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[589]        moveBlock(Right);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  669 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[590]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
	bra	L114	; 
L115:
	ldb	-14308	;  D.2348,
	cmpb	#-10	;cmpqi:	;  D.2348,
	bge	L116	; 
;----- asm -----
;  672 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[592]        moveBlock(Down);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  674 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[593]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
	bra	L114	; 
L116:
	ldb	-14308	;  D.2349,
	cmpb	#10	;cmpqi:	;  D.2349,
	ble	L114	; 
;----- asm -----
;  677 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[595]        moveBlock(Up);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  679 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[596]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
L114:
;----- asm -----
;  683 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[599]#if 0
;  0 "" 2
;  728 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[626]    if (gameState == BlockMoving) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#6	;cmpqi:	; ,
	bne	L117	; 
;----- asm -----
;  730 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[627]        changeMusic(movingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_movingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  732 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[628]        *vecx = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	[_vecx]	; ,* vecx
L117:
;----- asm -----
;  736 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[631]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  738 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[632]    if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L118	; 
;----- asm -----
;  740 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[633]        if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L118	; 
;----- asm -----
;  742 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[634]            swapSplit();
;  0 "" 2
;--- end asm ---
	jsr	_swapSplit	; 
L118:
;----- asm -----
;  747 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[638]    if ((Vec_Buttons & 2) && !arcadeMode) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L119	; 
	tst	_arcadeMode	;  arcadeMode
	bne	L119	; 
;----- asm -----
;  749 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[639]		nextLevel();
;  0 "" 2
;--- end asm ---
	jsr	_nextLevel	; 
L119:
;----- asm -----
;  752 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[641]    if ((Vec_Buttons & 4) && !arcadeMode) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L120	; 
	tst	_arcadeMode	;  arcadeMode
	bne	L120	; 
;----- asm -----
;  754 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[642]        if (levelNumber > 0) {
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.44, levelNumber
	beq	L121	; 
;----- asm -----
;  756 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[643]            levelNumber--;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.45, levelNumber
	decb	;  levelNumber.46
	stb	_levelNumber	;  levelNumber.46, levelNumber
	bra	L122	; 
L121:
;----- asm -----
;  759 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[645]            setBank(nextBank);
;  0 "" 2
;--- end asm ---
	ldb	_nextBank	; , nextBank
	jsr	_setBank	; 
;----- asm -----
;  761 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[646]            levelNumber = levelCount - 1;
;  0 "" 2
;--- end asm ---
	ldb	_levelCount	; , levelCount
	decb	; 
	stb	_levelNumber	; , levelNumber
L122:
;----- asm -----
;  764 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[648]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L120:
;----- asm -----
;  767 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[650]    if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L124	; 
;----- asm -----
;  769 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[651]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L124:
	rts
	.globl _main
_main:
	pshs	y,u	; 
	leas	-4,s	; ,,
;----- asm -----
;  1214 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[929]    setBank(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_setBank	; 
;----- asm -----
;  1218 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[932]    *vecx = 4;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  1222 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[935]    picAvailable = 0;
;  0 "" 2
;--- end asm ---
	clr	_picAvailable	;  picAvailable
;----- asm -----
;  1224 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[936]    sendCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  1226 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[937]    sendCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  1228 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[938]    if (sendCommand(CMD_VERSION, 0) == 4) {
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendCommand	; 
	leas	3,s	; ,,
	cmpb	#4	;cmpqi:	;  D.2495,
	bne	L126	; 
;----- asm -----
;  1230 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[939]        picAvailable = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_picAvailable	; , picAvailable
L126:
;----- asm -----
;  1235 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[943]    epot0 = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14305	; ,
;----- asm -----
;  1237 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[944]    epot1 = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	-14304	; ,
;----- asm -----
;  1239 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[945]    epot2 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14303	; 
;----- asm -----
;  1241 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[946]    epot3 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14302	; 
;----- asm -----
;  1244 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[948]    gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
;----- asm -----
;  1246 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[949]    musicInit();
;  0 "" 2
;--- end asm ---
	jsr	_musicInit	; 
;----- asm -----
;  1249 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[951]    while (1) {
;  0 "" 2
;--- end asm ---
L141:
;----- asm -----
;  1252 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[953]        frwait();
;  0 "" 2
;  97 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  1255 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[955]        switch (gameState) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#8	;cmpqi:	; ,
	lbhi	L127	; 
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp38
	jmp	[L137,x]	; , tmp38
L137:
	.word L128
	.word L129
	.word L130
	.word L131
	.word L132
	.word L133
	.word L134
	.word L135
	.word L136
L128:
;----- asm -----
;  1259 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[957]            mainMenu();
;  0 "" 2
;--- end asm ---
	jsr	_mainMenu	; 
;----- asm -----
;  1261 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[958]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1263 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[959]            break;
;  0 "" 2
;--- end asm ---
	jmp	L127	; 
L131:
;----- asm -----
;  1267 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[961]            clearMenu();
;  0 "" 2
;--- end asm ---
	jsr	_clearMenu	; 
;----- asm -----
;  1269 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[962]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1271 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[963]            break;
;  0 "" 2
;--- end asm ---
	jmp	L127	; 
L129:
;----- asm -----
;  1275 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[965]            arcadeMenu();
;  0 "" 2
;--- end asm ---
	jsr	_arcadeMenu	; 
;----- asm -----
;  1277 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[966]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1279 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[967]            break;
;  0 "" 2
;--- end asm ---
	jmp	L127	; 
L130:
;----- asm -----
;  1283 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[969]            arcadeEnd();
;  0 "" 2
;--- end asm ---
	jsr	_arcadeEnd	; 
;----- asm -----
;  1285 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[970]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1287 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[971]            break;
;  0 "" 2
;--- end asm ---
	jmp	L127	; 
L132:
;----- asm -----
;  1291 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[973]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1293 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[974]            blockMovingToStart();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingToStart	; 
;----- asm -----
;  1295 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[975]            break;
;  0 "" 2
;--- end asm ---
	jmp	L127	; 
L133:
;----- asm -----
;  1299 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[977]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1301 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[978]            blockWaiting();
;  0 "" 2
;--- end asm ---
	jsr	_blockWaiting	; 
;----- asm -----
;  1303 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[979]            break;
;  0 "" 2
;--- end asm ---
	jmp	L127	; 
L134:
;----- asm -----
;  1307 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[981]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1309 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[982]            blockMoving();
;  0 "" 2
;--- end asm ---
	jsr	_blockMoving	; 
;----- asm -----
;  1311 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[983]            break;
;  0 "" 2
;--- end asm ---
	bra	L127	; 
L135:
;----- asm -----
;  1315 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[985]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1317 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[986]            blockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_blockFalling	; 
;----- asm -----
;  1319 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[987]            break;
;  0 "" 2
;--- end asm ---
	bra	L127	; 
L136:
;----- asm -----
;  1323 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[989]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1325 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[990]            blockMovingAtEnd();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingAtEnd	; 
;----- asm -----
;  1327 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[991]            break;
;  0 "" 2
;--- end asm ---
L127:
;----- asm -----
;  1332 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[995]        if (gameState > ClearMenu) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#3	;cmpqi:	; ,
	bls	L138	; 
;----- asm -----
;  1334 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[996]            DP_to_C8();
;  0 "" 2
;  316 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___DP_to_C8; BIOS call
;  0 "" 2
;  1336 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[997]            replay(currentMusic);
;  0 "" 2
;--- end asm ---
	ldx	_currentMusic	; , currentMusic
	stx	2,s	; , u
;----- asm -----
;  2917 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldu 2,s	;  u
	jsr ___Init_Music_chk; BIOS call
;  0 "" 2
;  1338 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[998]            DP_to_D0();
;  0 "" 2
;  300 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___DP_to_D0; BIOS call
;  0 "" 2
;  1340 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[999]            reqout();
;  0 "" 2
;  2880 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Do_Sound; BIOS call
;  0 "" 2
;--- end asm ---
L138:
;----- asm -----
;  1345 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1003]        if (arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	lbeq	L141	; 
;----- asm -----
;  1347 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1004]            frames++;
;  0 "" 2
;--- end asm ---
	ldd	_frames	;  frames.92, frames
	addd	#1	;  frames.92,
	std	_frames	;  frames.92, frames
;----- asm -----
;  1349 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1005]            if (frames == 50) {
;  0 "" 2
;--- end asm ---
	cmpd	#50	;cmphi:	;  frames.92,
	lbne	L141	; 
;----- asm -----
;  1351 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1006]                frames = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_frames	; , frames
;----- asm -----
;  1353 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1007]                if (moveCount < 999) {
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.93, moveCount
	cmpx	#998	;cmphi:	;  moveCount.93,
	lbhi	L141	; 
;----- asm -----
;  1355 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1008]                    moveCount++;
;  0 "" 2
;--- end asm ---
	leax	1,x	; ,, moveCount.93
	stx	_moveCount	; , moveCount
;----- asm -----
;  1357 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1009]                    updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
	jmp	L141	; 
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
