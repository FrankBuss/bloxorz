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
;  -fno-time-report -IC:\data\Vide\C\PeerC\vectrex\include -D__RUM_INLINE=1
;  -DOMMIT_FRAMEPOINTER=1 C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c
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
;  247 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[231]    while (1)
;  0 "" 2
;--- end asm ---
L2:
;----- asm -----
;  250 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[233]        frwait();
;  0 "" 2
;  97 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  252 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[234]        Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  254 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[235]        Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  256 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[236]        Print_Str_d(-10, -110, msg);
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	sty	,s	;  msg, u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
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
;  278 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[254]    uint16_t muls[] = {100, 10, 1};
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	9,s	; , muls
	ldd	#10	; ,
	std	11,s	; , muls
	ldd	#1	; ,
	std	13,s	; , muls
;----- asm -----
;  280 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[255]    if (number > 999)
;  0 "" 2
;--- end asm ---
	leay	,x	;  number.131, number
	cmpx	#999	;cmphi:	;  number.131,
	bls	L5	; 
	ldy	#999	;  number.131,
L5:
;----- asm -----
;  283 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[257]    for (uint8_t i = 0; i < 3; i++)
;  0 "" 2
;--- end asm ---
	leax	9,s	; ,,
	stx	5,s	; , ivtmp.127
	ldd	21,s	; , text
	std	7,s	; , ivtmp.129
L9:
;----- asm -----
;  286 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[259]        uint8_t d = 0;
;  0 "" 2
;  288 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[260]        while (number >= muls[i])
;  0 "" 2
;--- end asm ---
	ldx	5,s	; , ivtmp.127
	ldx	,x	; , muls
	stx	,s	; , D.2303
	pshs	y	;cmphi: R:y with R:x	;  number.131,
	cmpx	,s++	;cmphi:	; 
	bhi	L6	; 
	tfr	x,d	; ,
	nega
	negb
	sbca	#0
	std	3,s	; , ivtmp.119
	tfr	y,d	;  number.131,
	subd	,s	;subhi: R:d -= ,s	; , D.2303
	tfr	d,y	; , number.131
	clr	2,s	;  d
L8:
;----- asm -----
;  291 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[262]            d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  293 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[263]            number -= muls[i];
;  0 "" 2
;--- end asm ---
	ldd	3,s	; , ivtmp.119
	leau	d,y	;  number.130,, number.131
	ldd	,s	; , D.2303
	leax	d,u	;  tmp85,, number.130
	pshs	x	;cmphi: R:x with R:d	;  tmp85,
	cmpd	,s++	;cmphi:	; 
	bhi	L7	; 
	leay	,u	;  number.131, number.130
	bra	L8	; 
L6:
	clr	2,s	;  d
L7:
;----- asm -----
;  296 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[265]        text[i] = d + '0';
;  0 "" 2
;--- end asm ---
	ldb	2,s	; , d
	addb	#48	; ,
	ldx	7,s	; , ivtmp.129
	leax	1,x	; ,,
	stx	7,s	; , ivtmp.129
	leax	-1,x	; ,,
	stb	,x+	; ,
	ldx	5,s	; , ivtmp.127
	leax	2,x	; ,,
	stx	5,s	; , ivtmp.127
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
;  313 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[278]    tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  315 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[279]    currentMusic = music;
;  0 "" 2
;--- end asm ---
	stx	_currentMusic	;  music, currentMusic
	rts
	.globl _drawField
_drawField:
;----- asm -----
;  435 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LDA     #0x35
;  0 "" 2
;  436 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STA     *0xd001     ;Store intensity in D/A
;  0 "" 2
;  437 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LDD     #0x0504          ;mux disabled channel 2
;  0 "" 2
;  438 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STA     *0xd000
;  0 "" 2
;  439 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STB     *0xd000     ;mux enabled channel 2
;  0 "" 2
;  440 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STB     *0xd000     ;do it again just because
;  0 "" 2
;  441 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LDB     #0x01
;  0 "" 2
;  442 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STB     *0xd000     ;turn off mux
;  0 "" 2
;  446 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		pshs u
;  0 "" 2
;  447 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldx #_lineYX_yx_s_dy_dx
;  0 "" 2
;  448 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  449 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  451 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	drawFieldLoop1:
;  0 "" 2
;  466 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  467 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  468 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  469 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  473 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  474 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  475 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  476 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  478 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STU      *0xd00B                    ; 
;  0 "" 2
;  479 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  480 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  481 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  484 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		leax 2,x ; 5
;  0 "" 2
;  485 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		lda ,x+ ; 6
;  0 "" 2
;  486 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	bmi scale_negative_7f; 3 - negative means, the next line is in offset to this line, not from 0,0
;  0 "" 2
;  487 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  488 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0xff98 ; 3
;  0 "" 2
;  489 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x ; 5
;  0 "" 2
;  496 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  497 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  498 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  499 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  500 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  501 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  502 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u    ; 7 
;  0 "" 2
;  503 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u    ; 7 
;  0 "" 2
;  507 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  508 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  511 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  512 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  513 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  514 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  515 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  516 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  517 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  518 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  520 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	leax 2,x
;  0 "" 2
;  521 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldb #0x7f
;  0 "" 2
;  522 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		stb *0xd004
;  0 "" 2
;  523 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  524 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		LDd     #0x40CC
;  0 "" 2
;  526 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_1:           BITA     *0xD00D               ;  
;  0 "" 2
;  527 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_1                        ;  
;  0 "" 2
;  528 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    clra 
;  0 "" 2
;  529 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    sta      *0xd00a               ;clear shift regigster 
;  0 "" 2
;  532 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		STB *0xd00C ; reset 0
;  0 "" 2
;  533 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  534 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		bne drawFieldLoop1
;  0 "" 2
;  535 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		puls u, pc
;  0 "" 2
;  542 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	scale_negative_7f:
;  0 "" 2
;  543 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	anda #0x7f ; 2
;  0 "" 2
;  544 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  545 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0xff98 ; 4
;  0 "" 2
;  546 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x ; 5
;  0 "" 2
;  549 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  550 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  551 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  552 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  553 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  554 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  555 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  556 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  557 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    brn   scale_negative_7f ; 3 
;  0 "" 2
;  562 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		not_full_cont:
;  0 "" 2
;  563 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  564 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  565 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  566 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  567 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  568 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  569 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  570 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  572 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		not_full_cont_after:
;  0 "" 2
;  573 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	leax 2,x
;  0 "" 2
;  574 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  577 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	nop
;  0 "" 2
;  578 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	brn LF33D2_3
;  0 "" 2
;  581 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    LDb      #0x40                         ;  
;  0 "" 2
;  582 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_3:           BITb     *0xD00D               ;  
;  0 "" 2
;  583 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_3                        ;  
;  0 "" 2
;  584 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    sta      *0xd00a               ;clear shift regigster, a is still zero 
;  0 "" 2
;  589 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  593 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  594 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  595 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  596 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  597 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  598 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  599 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  602 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		leax 2,x ; 5
;  0 "" 2
;  603 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		lda ,x+ ; 6
;  0 "" 2
;  604 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	bmi scale_negative; next is also no full move
;  0 "" 2
;  605 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  606 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0xff98 ; 4
;  0 "" 2
;  612 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    LDa      #0x40                         ;  
;  0 "" 2
;  613 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_4:           BITa     *0xD00D               ;  
;  0 "" 2
;  614 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_4                        ;  
;  0 "" 2
;  618 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x ; 4
;  0 "" 2
;  619 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  620 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  621 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  622 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  623 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  624 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  625 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  626 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  628 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	leax 2,x
;  0 "" 2
;  629 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldb #0x7f
;  0 "" 2
;  631 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		stb *0xd004
;  0 "" 2
;  632 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  633 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		LDd #0x40CC
;  0 "" 2
;  634 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_5:           BITA     *0xD00D               ;  
;  0 "" 2
;  635 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_5                        ;  
;  0 "" 2
;  636 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    clra 
;  0 "" 2
;  637 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    sta      *0xd00a               ;clear shift regigster 
;  0 "" 2
;  640 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		STB *0xd00C ; reset 0
;  0 "" 2
;  641 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  642 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		lbne drawFieldLoop1
;  0 "" 2
;  643 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		puls u, pc
;  0 "" 2
;  646 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	scale_negative:
;  0 "" 2
;  647 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	anda #0x7f ; 2
;  0 "" 2
;  648 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  649 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0xff98 ; 4
;  0 "" 2
;  652 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    LDA      #0x40                         ;  
;  0 "" 2
;  653 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_6:           BITA     *0xD00D               ;  
;  0 "" 2
;  654 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_6                        ;  
;  0 "" 2
;  655 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x ; 5
;  0 "" 2
;  658 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  659 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  660 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  661 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  662 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  663 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  664 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  665 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  666 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  1188 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[944]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1190 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[945]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1192 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[946]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1194 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[947]    Print_Str_d(100, -70, "GAME OVER€");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	2,s	; , a
	ldb	#-70	; ,
	stb	3,s	; , b
	ldx	#LC0	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1196 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[948]    Print_Str_d(50, -110, infoText);
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#_infoText	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1198 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[949]    if (Vec_Buttons & 1)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L17	; 
;----- asm -----
;  1201 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[951]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L17:
;----- asm -----
;  1204 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[953]    if (Vec_Buttons & 2)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L18	; 
;----- asm -----
;  1207 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[955]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L18:
;----- asm -----
;  1210 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[957]    if (Vec_Buttons & 4)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L19	; 
;----- asm -----
;  1213 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[959]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L19:
;----- asm -----
;  1216 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[961]    if (Vec_Buttons & 8)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L21	; 
;----- asm -----
;  1219 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[963]        gameState = MainMenu;
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
;  1270 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1001]    zergnd();
;  0 "" 2
;  181 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1272 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1002]    intens(0x50);
;  0 "" 2
;--- end asm ---
	ldb	#80	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1275 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1004]    zergnd();
;  0 "" 2
;  181 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1277 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1005]    positd(-50, 100);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#100	; ,
	stb	2,s	; , a
	ldb	#-50	; ,
	stb	,s	; , b
;----- asm -----
;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb ,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1279 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1006]    pack1x((void *)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldy	#_led8	;  tmp27,
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1282 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1008]    zergnd();
;  0 "" 2
;  181 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1284 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1009]    positd(-40, 110);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#110	; ,
	stb	,s	; , a
	ldb	#-40	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1286 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1010]    pack1x((void *)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1289 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1012]    zergnd();
;  0 "" 2
;  181 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1291 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1013]    positd(-30, 120);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#120	; ,
	stb	2,s	; , a
	ldb	#-30	; ,
	stb	,s	; , b
;----- asm -----
;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb ,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1293 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1014]    pack1x((void *)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1296 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1016]    zergnd();
;  0 "" 2
;  181 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1298 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1017]    positd(0, 120);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#120	; ,
	stb	,s	; , a
	clr	2,s	;  b
;----- asm -----
;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1300 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1018]    pack1x((void *)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1303 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1020]    zergnd();
;  0 "" 2
;  181 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1305 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1021]    positd(10, 120);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#120	; ,
	stb	2,s	; , a
	ldb	#10	; ,
	stb	,s	; , b
;----- asm -----
;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb ,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1307 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1022]    pack1x((void *)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldx ,s	;  x
	jsr ___Draw_VLp; BIOS call
;  0 "" 2
;  1310 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1024]    zergnd();
;  0 "" 2
;  181 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1312 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1025]    positd(20, 120);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	ldb	#120	; ,
	stb	,s	; , a
	ldb	#20	; ,
	stb	2,s	; , b
;----- asm -----
;  3315 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	;  a
	ldb 2,s	;  b
	jsr ___Moveto_d; BIOS call
;  0 "" 2
;  1314 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1026]    pack1x((void *)led8);
;  0 "" 2
;--- end asm ---
	ldb	#-128	; ,
	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
	sty	,s	;  tmp27, x
;----- asm -----
;  1610 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
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
;  1320 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1031]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1322 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1032]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1324 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1033]    if (highscoreDisplayCounter > 180)
;  0 "" 2
;--- end asm ---
	ldb	_highscoreDisplayCounter	; , highscoreDisplayCounter
	cmpb	#-76	;cmpqi:	; ,
	bls	L25	; 
;----- asm -----
;  1327 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1035]        Print_Str_d(100, -70, highscoreText);
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	2,s	; , a
	ldb	#-70	; ,
	stb	3,s	; , b
	ldx	#_highscoreText	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;--- end asm ---
	bra	L26	; 
L25:
;----- asm -----
;  1332 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1039]        Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	3,s	; , a
	ldb	#-70	; ,
	stb	2,s	; , b
	ldx	#_infoText	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;--- end asm ---
L26:
;----- asm -----
;  1335 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1041]    highscoreDisplayCounter++;
;  0 "" 2
;--- end asm ---
	ldb	_highscoreDisplayCounter	;  highscoreDisplayCounter.90, highscoreDisplayCounter
	incb	;  highscoreDisplayCounter.90
	stb	_highscoreDisplayCounter	;  highscoreDisplayCounter.90, highscoreDisplayCounter
;----- asm -----
;  1337 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1042]    if (highscoreDisplayCounter > 240)
;  0 "" 2
;--- end asm ---
	cmpb	#-16	;cmpqi:	;  highscoreDisplayCounter.90,
	bls	L28	; 
;----- asm -----
;  1340 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1044]        highscoreDisplayCounter = 0;
;  0 "" 2
;--- end asm ---
	clr	_highscoreDisplayCounter	;  highscoreDisplayCounter
L28:
	leas	4,s	; ,,
	puls	u,pc	; 
_sendPicCommand:
	leas	-1,s	; ,,
	stb	,s	;  cmd, cmd
;----- asm -----
;  196 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[195]    picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  198 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[196]    picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , cmd
	jsr	_picWrite	; 
;----- asm -----
;  200 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[197]    picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , arg
	jsr	_picWrite	; 
;----- asm -----
;  202 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[198]    return picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	leas	1,s	; ,,
	rts
_sendCommand:
	leas	-2,s	; ,,
	stb	,s	;  cmd, cmd
;----- asm -----
;  220 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[211]    uint8_t result = 0;
;  0 "" 2
;  222 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[212]    if (picAvailable)
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L32	; 
;----- asm -----
;  225 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[214]        result = sendPicCommand(cmd, arg);
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , arg
	pshs	b	; 
	ldb	1,s	; , cmd
	jsr	_sendPicCommand	; 
	stb	2,s	; , result
	leas	1,s	; ,,
	bra	L33	; 
L32:
;----- asm -----
;  230 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[218]        result = sendVecxCommand(cmd, arg);
;  0 "" 2
;  208 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[203]    vecx[VECX_PIC_RW] = 'V';
;  0 "" 2
;--- end asm ---
	ldx	_vecx	;  vecx.1, vecx
	ldb	#86	; ,
	stb	1,x	; ,
;----- asm -----
;  210 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[204]    vecx[VECX_PIC_RW] = cmd;
;  0 "" 2
;--- end asm ---
	ldx	_vecx	;  vecx.2, vecx
	ldb	,s	; , cmd
	stb	1,x	; ,
;----- asm -----
;  212 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[205]    vecx[VECX_PIC_RW] = arg;
;  0 "" 2
;--- end asm ---
	ldx	_vecx	;  vecx.3, vecx
	ldb	4,s	; , arg
	stb	1,x	; ,
;----- asm -----
;  214 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[206]    return vecx[VECX_PIC_RW];
;  0 "" 2
;--- end asm ---
	ldx	_vecx	;  vecx.4, vecx
	ldb	1,x	; ,
	stb	1,s	; , result
L33:
;----- asm -----
;  233 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[220]    delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  235 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[221]    return result;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , result
	leas	2,s	; ,,
	rts
_setBank:
;----- asm -----
;  241 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[226]    sendCommand(CMD_SET_BANK, bank);
;  0 "" 2
;--- end asm ---
	pshs	b	;  bank
	ldb	#5	; ,
	jsr	_sendCommand	; 
	leas	1,s	; ,,
	rts
	.globl _readEeprom
_readEeprom:
;----- asm -----
;  271 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[248]    return sendCommand(CMD_EEPROM_READ, address);
;  0 "" 2
;--- end asm ---
	pshs	b	;  address
	ldb	#4	; ,
	jsr	_sendCommand	; 
	leas	1,s	; ,,
	rts
	.globl _writeEeprom
_writeEeprom:
;----- asm -----
;  263 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[242]    sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	pshs	b	;  address
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  265 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[243]    sendCommand(CMD_EEPROM_WRITE, data);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , data
	stb	,-s	; ,
	ldb	#3	; ,
	jsr	_sendCommand	; 
	leas	2,s	; ,,
	rts
LC1:
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
LC2:
	.byte	0x33
	.byte	0x20
	.byte	0x59
	.byte	0x45
	.byte	0x53
	.byte	0x80
	.byte	0x00
LC3:
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
;  1226 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[969]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1228 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[970]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	4,s	; , a
;----- asm -----
;  3427 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 4,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1230 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[971]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1232 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[972]    Print_Str_d(100, -80, "CLEAR SCORE?€");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	4,s	; , a
	ldb	#-80	; ,
	stb	3,s	; , b
	ldx	#LC1	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1234 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[973]    Print_Str_d(50, -110, "3 YES€");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	4,s	; , b
	ldx	#LC2	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 4,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1236 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[974]    Print_Str_d(20, -110, "4 NO€");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	4,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC3	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1238 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[975]    if (Vec_Buttons & 4)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L42	; 
;----- asm -----
;  1241 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[977]        for (uint8_t i = 0; i < 6; i++)
;  0 "" 2
;--- end asm ---
	clr	,s	;  i
L43:
;----- asm -----
;  1244 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[979]            writeEeprom(i, 0xff);
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
	bne	L43	; 
;----- asm -----
;  1247 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[981]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L42:
;----- asm -----
;  1250 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[983]    if (Vec_Buttons & 8)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L45	; 
;----- asm -----
;  1253 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[985]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L45:
	leas	5,s	; ,,
	puls	u,pc	; 
	.globl _blockMovingToStart
_blockMovingToStart:
;----- asm -----
;  677 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[608]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  679 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[609]    drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  681 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[610]    blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.34, blockYOfs
	incb	;  blockYOfs.34
	stb	_blockYOfs	;  blockYOfs.34, blockYOfs
;----- asm -----
;  683 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[611]    if (blockYOfs == 0)
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.34
	bne	L49	; 
;----- asm -----
;  686 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[613]        gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	stb	_gameState	; , gameState
L49:
	rts
	.globl _updateInfoText
_updateInfoText:
	pshs	u	; 
;----- asm -----
;  303 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[271]    memcpy(infoText, "001 - 999€", 10);
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
;  305 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[272]    itoa(moveCount, &infoText[0]);
;  0 "" 2
;--- end asm ---
	pshs	x	;  tmp28
	ldx	_moveCount	; , moveCount
	jsr	_itoa	; 
;----- asm -----
;  307 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[273]    itoa(levelNumber + levelOffset, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.10, levelNumber
	addb	_levelOffset	;  tmp36, levelOffset
	ldx	#_infoText+6	; ,
	stx	,--s	; ,
	clra		;zero_extendqihi: R:b -> R:d	;  tmp36,
	tfr	d,x	; ,
	jsr	_itoa	; 
	leas	4,s	; ,,
	puls	u,pc	; 
	.globl _startLevel
_startLevel:
	pshs	y,u	; 
	leas	-3,s	; ,,
;----- asm -----
;  350 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[304]    if (arcadeMode)
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	beq	L53	; 
;----- asm -----
;  353 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[306]        levelNumber = arcadeLevels[arcadeSelection][arcadeIndex] - 1;
;  0 "" 2
;--- end asm ---
	ldb	_arcadeIndex	; , arcadeIndex
	clra		;zero_extendqihi: R:b -> R:d	; ,
	tfr	d,y	; , arcadeIndex
	ldb	_arcadeSelection	; , arcadeSelection
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	ldu	,s	; ,
	leax	d,u	;  tmp40, tmp39,
	exg	d,y	; , arcadeIndex
	leax	d,x	;  tmp41,, tmp41
	exg	d,y	; , arcadeIndex
	ldb	_arcadeLevels,x	;  levelNumber.21, arcadeLevels
	decb	;  levelNumber.21
	stb	_levelNumber	;  levelNumber.21, levelNumber
	jmp	L54	; 
L53:
;----- asm -----
;  359 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[311]        uint8_t index = (uint8_t)(levelOffset + levelNumber * 2);
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.22, levelNumber
	aslb	;  tmp43
	addb	_levelOffset	;  tmp43, levelOffset
	stb	2,s	;  tmp43, index
;----- asm -----
;  361 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[312]        levelHighscore = readEeprom(index);
;  0 "" 2
;--- end asm ---
	jsr	_readEeprom	; 
	clra		;zero_extendqihi: R:b -> R:d	;  D.2340, D.2340
	std	_levelHighscore	;  D.2340, levelHighscore
;----- asm -----
;  363 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[313]        levelHighscore |= ((uint16_t)readEeprom(index + 1)) << 8;
;  0 "" 2
;--- end asm ---
	ldb	2,s	;  tmp45, index
	incb	;  tmp45
	jsr	_readEeprom	; 
	tfr	b,a	; ,
	clrb	; 
	ora	_levelHighscore	; , levelHighscore
	orb	_levelHighscore+1	; , levelHighscore
	std	_levelHighscore	;  levelHighscore.26, levelHighscore
;----- asm -----
;  365 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[314]        if (levelHighscore == 0)
;  0 "" 2
;--- end asm ---
	cmpd	#0	;  levelHighscore.26
	bne	L55	; 
	ldx	#999	; ,
	stx	_levelHighscore	; , levelHighscore
L55:
;----- asm -----
;  370 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[318]        memcpy(highscoreText, "BEST  999€", 10);
;  0 "" 2
;--- end asm ---
	ldu	#16965	; ,
	stu	_highscoreText	; , highscoreText
	ldx	#21332	; ,
	stx	_highscoreText+2	; , highscoreText
	ldu	#8224	; ,
	stu	_highscoreText+4	; , highscoreText
	ldx	#14649	; ,
	stx	_highscoreText+6	; , highscoreText
	ldu	#14720	; ,
	stu	_highscoreText+8	; , highscoreText
;----- asm -----
;  372 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[319]        itoa(levelHighscore, &highscoreText[6]);
;  0 "" 2
;--- end asm ---
	ldd	#_highscoreText+6	; ,
	std	,--s	; ,
	ldx	_levelHighscore	; , levelHighscore
	jsr	_itoa	; 
;----- asm -----
;  374 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[320]        highscoreDisplayCounter = 0;
;  0 "" 2
;--- end asm ---
	clr	_highscoreDisplayCounter	;  highscoreDisplayCounter
	leas	2,s	; ,,
L54:
;----- asm -----
;  377 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[322]    level = levels[levelNumber];
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.27, levelNumber
	clra		;zero_extendqihi: R:b -> R:d	;  levelNumber.27, levelNumber.27
	aslb	; 
	rola	; 
	tfr	d,x	;  levelNumber.27, tmp59
	ldx	_levels,x	; , levels
	stx	_level	; , level
;----- asm -----
;  379 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[323]    initSwatches();
;  0 "" 2
;--- end asm ---
	jsr	_initSwatches	; 
;----- asm -----
;  381 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[324]    initLevel();
;  0 "" 2
;--- end asm ---
	jsr	_initLevel	; 
;----- asm -----
;  383 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[325]    blockX = level->start.x;
;  0 "" 2
;--- end asm ---
	ldx	_level	;  level, level
	ldb	2,x	; , <variable>.start.x
	stb	_blockX	; , blockX
;----- asm -----
;  385 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[326]    blockY = level->start.y;
;  0 "" 2
;--- end asm ---
	ldb	3,x	; , <variable>.start.y
	stb	_blockY	; , blockY
;----- asm -----
;  387 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[327]    blockStartLevel();
;  0 "" 2
;--- end asm ---
	jsr	_blockStartLevel	; 
;----- asm -----
;  389 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[328]    blockYOfs = -30;
;  0 "" 2
;--- end asm ---
	ldb	#-30	; ,
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  391 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[329]    gameState = BlockMovingToStart;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  393 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[330]    changeMusic(startMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_startMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  395 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[331]    vecx[VECX_MUSIC] = VECX_START_MUSIC;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  397 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[332]    if (!arcadeMode)
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	bne	L56	; 
;----- asm -----
;  400 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[334]        moveCount = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_moveCount	; , moveCount
;----- asm -----
;  402 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[335]        updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
L56:
;----- asm -----
;  405 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[337]    si = 0;
;  0 "" 2
;--- end asm ---
	clr	_si	;  si
	leas	3,s	; ,,
	puls	y,u,pc	; 
LC4:
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
LC5:
	.byte	0x31
	.byte	0x20
	.byte	0x53
	.byte	0x45
	.byte	0x54
	.byte	0x20
	.byte	0x31
	.byte	0x80
	.byte	0x00
LC6:
	.byte	0x32
	.byte	0x20
	.byte	0x53
	.byte	0x45
	.byte	0x54
	.byte	0x20
	.byte	0x32
	.byte	0x80
	.byte	0x00
LC7:
	.byte	0x33
	.byte	0x20
	.byte	0x53
	.byte	0x45
	.byte	0x54
	.byte	0x20
	.byte	0x33
	.byte	0x80
	.byte	0x00
LC8:
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
;  1136 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[912]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1138 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[913]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1140 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[914]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1142 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[915]    Print_Str_d(100, -70, "ARCADE MODE€");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	3,s	; , a
	ldb	#-70	; ,
	stb	2,s	; , b
	ldx	#LC4	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1144 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[916]    Print_Str_d(50, -110, "1 SET 1€");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC5	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1146 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[917]    Print_Str_d(20, -110, "2 SET 2€");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC6	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1148 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[918]    Print_Str_d(-10, -110, "3 SET 3€");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC7	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1150 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[919]    Print_Str_d(-40, -110, "4 SET 4€");
;  0 "" 2
;--- end asm ---
	ldb	#-40	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC8	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1152 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[920]    if (Vec_Buttons & 1)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L59	; 
;----- asm -----
;  1155 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[922]        arcadeSelection = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeSelection	;  arcadeSelection
;----- asm -----
;  1157 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[923]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L59:
;----- asm -----
;  1160 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[925]    if (Vec_Buttons & 2)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L60	; 
;----- asm -----
;  1163 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[927]        arcadeSelection = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  1165 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[928]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L60:
;----- asm -----
;  1168 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[930]    if (Vec_Buttons & 4)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L61	; 
;----- asm -----
;  1171 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[932]        arcadeSelection = 2;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  1173 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[933]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L61:
;----- asm -----
;  1176 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[935]    if (Vec_Buttons & 8)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L63	; 
;----- asm -----
;  1179 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[937]        arcadeSelection = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  1181 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[938]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L63:
	leas	4,s	; ,,
	puls	u,pc	; 
LC9:
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
LC10:
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
LC11:
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
LC12:
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
;  1088 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[883]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1090 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[884]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1092 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[885]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1094 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[886]    Print_Str_d(100, -70, "MAIN MENU€");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	2,s	; , a
	ldb	#-70	; ,
	stb	3,s	; , b
	ldx	#LC9	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1096 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[887]    Print_Str_d(50, -110, "1 PUZZLE MODE€");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC10	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1098 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[888]    Print_Str_d(20, -110, "2 ARCADE MODE€");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC11	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1100 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[889]    Print_Str_d(-10, -110, "3 CLEAR HIGHSCORE€");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC12	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1102 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[890]    if (Vec_Buttons & 1)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L65	; 
;----- asm -----
;  1105 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[892]        arcadeMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeMode	;  arcadeMode
;----- asm -----
;  1107 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[893]        levelNumber = 0;
;  0 "" 2
;--- end asm ---
	clr	_levelNumber	;  levelNumber
;----- asm -----
;  1109 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[894]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L65:
;----- asm -----
;  1112 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[896]    if (Vec_Buttons & 2)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L66	; 
;----- asm -----
;  1115 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[898]        frames = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_frames	; , frames
;----- asm -----
;  1117 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[899]        moveCount = 0;
;  0 "" 2
;--- end asm ---
	std	_moveCount	; , moveCount
;----- asm -----
;  1119 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[900]        arcadeMode = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_arcadeMode	; , arcadeMode
;----- asm -----
;  1121 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[901]        arcadeIndex = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeIndex	;  arcadeIndex
;----- asm -----
;  1123 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[902]        gameState = ArcadeMenu;
;  0 "" 2
;--- end asm ---
	stb	_gameState	; , gameState
L66:
;----- asm -----
;  1126 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[904]    if (Vec_Buttons & 4)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L68	; 
;----- asm -----
;  1129 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[906]        gameState = ClearMenu;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_gameState	; , gameState
L68:
	leas	4,s	; ,,
	puls	u,pc	; 
	.globl _blockFalling
_blockFalling:
	leas	-1,s	; ,,
;----- asm -----
;  1014 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[833]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1016 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[834]    blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	,s	; , blockYOfs.68
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  1018 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[835]    if (blockYOfs < 12)
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	bgt	L70	; 
;----- asm -----
;  1021 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[837]        drawBlock(-blockYOfs * blockYOfs);
;  0 "" 2
;--- end asm ---
	negb	;  tmp28
	lda	,s	;mulqihi3	;  blockYOfs.68
	mul
		;movlsbqihi: D->B
	jsr	_drawBlock	; 
;----- asm -----
;  1023 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[838]        doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
L70:
;----- asm -----
;  1026 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[840]    if (blockYOfs == 50)
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	bne	L72	; 
;----- asm -----
;  1029 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[842]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L72:
	leas	1,s	; ,,
	rts
	.globl _nextLevel
_nextLevel:
;----- asm -----
;  693 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[619]    levelNumber++;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.35, levelNumber
	incb	;  levelNumber.36
; Applied peep: 2 (no load after store)
;----- asm -----
;  695 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[620]    if (levelNumber >= levelCount)
;  0 "" 2
;--- end asm ---
	stb	_levelNumber	;  levelNumber.36, levelNumber
; ORG>	stb	_levelNumber	;  levelNumber.36, levelNumber
; ORG>;----- asm -----
; ORG>;  695 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
; ORG>	; $ENR$[620]    if (levelNumber >= levelCount)
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	ldb	_levelNumber	;  levelNumber.37, levelNumber
	cmpb	_levelCount	;cmpqi:	;  levelNumber.37, levelCount
	blo	L74	; 
;----- asm -----
;  698 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[622]        levelNumber = 0;
;  0 "" 2
;--- end asm ---
	clr	_levelNumber	;  levelNumber
;----- asm -----
;  700 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[623]        setBank(nextBank);
;  0 "" 2
;--- end asm ---
	ldb	_nextBank	; , nextBank
	jsr	_setBank	; 
L74:
;----- asm -----
;  703 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[625]    startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	rts
	.globl _blockMovingAtEnd
_blockMovingAtEnd:
	pshs	y,u	; 
	leas	-5,s	; ,,
;----- asm -----
;  1036 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[848]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  1038 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[849]    drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  1040 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[850]    blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.70, blockYOfs
	incb	;  blockYOfs.70
	stb	_blockYOfs	;  blockYOfs.70, blockYOfs
;----- asm -----
;  1042 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[851]    if (blockYOfs == 30)
;  0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	;  blockYOfs.70,
	lbne	L81	; 
;----- asm -----
;  1045 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[853]        if (moveCount < levelHighscore)
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.71, moveCount
	cmpx	_levelHighscore	;cmphi:	;  moveCount.71, levelHighscore
	bhs	L78	; 
;----- asm -----
;  1048 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[855]            writeEeprom((uint8_t)(levelOffset + 2 * levelNumber), (uint8_t)(moveCount & 0xff));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	aslb	;  tmp35
	addb	_levelOffset	;  tmp35, levelOffset
	stb	,s	;  tmp35,
	tfr	x,d	;  moveCount.71,
	pshs	b	; 
	ldb	1,s	; ,
	jsr	_writeEeprom	; 
;----- asm -----
;  1050 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[856]            writeEeprom((uint8_t)(levelOffset + 2 * levelNumber + 1), (uint8_t)(moveCount >> 8));
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	; , levelNumber
	stb	1,s	; , levelNumber.75
	ldb	_levelOffset	; , levelOffset
	incb	; 
	stb	5,s	; ,
	ldb	1,s	;  tmp38, levelNumber.75
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
L78:
;----- asm -----
;  1053 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[858]        if (arcadeMode)
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	lbeq	L79	; 
;----- asm -----
;  1056 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[860]            arcadeIndex++;
;  0 "" 2
;--- end asm ---
	ldb	_arcadeIndex	;  arcadeIndex.78, arcadeIndex
	incb	;  arcadeIndex.78
	stb	_arcadeIndex	;  arcadeIndex.78, arcadeIndex
;----- asm -----
;  1058 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[861]            levelNumber = arcadeLevels[arcadeSelection][arcadeIndex];
;  0 "" 2
;--- end asm ---
	clra		;zero_extendqihi: R:b -> R:d	;  arcadeIndex.78,
	tfr	d,y	; , arcadeIndex.78
	ldb	_arcadeSelection	; , arcadeSelection
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	1,s	; ,
	aslb	; 
	rola	; 
	aslb	; 
	rola	; 
	ldu	1,s	; ,
	leax	d,u	;  tmp46, tmp45,
	exg	d,y	; , arcadeIndex.78
	leax	d,x	;  tmp47,, tmp47
	exg	d,y	; , arcadeIndex.78
	ldb	_arcadeLevels,x	;  levelNumber.80, arcadeLevels
; Applied peep: 2 (no load after store)
;----- asm -----
;  1060 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[862]            if (levelNumber == 0)
;  0 "" 2
;--- end asm ---
	stb	_levelNumber	;  levelNumber.80, levelNumber
; ORG>	stb	_levelNumber	;  levelNumber.80, levelNumber
; ORG>;----- asm -----
; ORG>;  1060 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
; ORG>	; $ENR$[862]            if (levelNumber == 0)
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	ldb	_levelNumber	;  levelNumber.81, levelNumber
	lbne	L80	; 
;----- asm -----
;  1063 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[864]                gameState = ArcadeEnd;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  1065 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[865]                memcpy(infoText, "TIME: 000 SECONDS€", 18);
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
;  1067 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[866]                itoa(moveCount, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	#_infoText+6	; ,
	stu	,--s	; ,
	ldx	_moveCount	; , moveCount
	jsr	_itoa	; 
;----- asm -----
;  1069 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[867]                arcadeMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeMode	;  arcadeMode
	leas	2,s	; ,,
	bra	L81	; 
L80:
;----- asm -----
;  1074 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[871]                startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	bra	L81	; 
L79:
;----- asm -----
;  1080 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[876]            nextLevel();
;  0 "" 2
;--- end asm ---
	jsr	_nextLevel	; 
L81:
	leas	5,s	; ,,
	puls	y,u,pc	; 
	.globl _moveBlock
_moveBlock:
;----- asm -----
;  321 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[284]    moveBlockImpl(move);
;  0 "" 2
;--- end asm ---
	jsr	_moveBlockImpl	; 
;----- asm -----
;  323 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[285]    if (!arcadeMode)
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	bne	L85	; 
;----- asm -----
;  326 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[287]        if (moveCount < 999)
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.13, moveCount
	cmpx	#998	;cmphi:	;  moveCount.13,
	bhi	L84	; 
	leax	1,x	; ,, moveCount.13
	stx	_moveCount	; , moveCount
L84:
;----- asm -----
;  329 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[289]        updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
L85:
	rts
	.globl _blockWaiting
_blockWaiting:
;----- asm -----
;  709 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[630]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  711 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[631]    drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  713 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[632]    joybit();
;  0 "" 2
;  2354 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Joy_Digital; BIOS call
;  0 "" 2
;  715 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[633]    if (pot0 < -10)
;  0 "" 2
;--- end asm ---
	ldb	-14309	;  D.2370,
	cmpb	#-10	;cmpqi:	;  D.2370,
	bge	L87	; 
;----- asm -----
;  718 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[635]        moveBlock(Left);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_moveBlock	; 
;----- asm -----
;  720 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[636]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
	jmp	L88	; 
L87:
	ldb	-14309	;  D.2371,
	cmpb	#10	;cmpqi:	;  D.2371,
	ble	L89	; 
;----- asm -----
;  725 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[640]        moveBlock(Right);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  727 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[641]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
	bra	L88	; 
L89:
	ldb	-14308	;  D.2373,
	cmpb	#-10	;cmpqi:	;  D.2373,
	bge	L90	; 
;----- asm -----
;  732 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[645]        moveBlock(Down);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  734 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[646]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
	bra	L88	; 
L90:
	ldb	-14308	;  D.2374,
	cmpb	#10	;cmpqi:	;  D.2374,
	ble	L88	; 
;----- asm -----
;  739 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[650]        moveBlock(Up);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  741 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[651]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
L88:
;----- asm -----
;  745 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[654]#if 0
;  0 "" 2
;  790 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[681]    if (gameState == BlockMoving)
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#6	;cmpqi:	; ,
	bne	L91	; 
;----- asm -----
;  793 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[683]        changeMusic(movingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_movingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  795 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[684]        vecx[VECX_MUSIC] = VECX_MOVING_MUSIC;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	[_vecx]	; ,* vecx
L91:
;----- asm -----
;  799 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[687]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  801 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[688]    if (Vec_Buttons & 1)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L92	; 
;----- asm -----
;  804 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[690]        if (splitMode)
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L92	; 
;----- asm -----
;  807 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[692]            swapSplit();
;  0 "" 2
;--- end asm ---
	jsr	_swapSplit	; 
L92:
;----- asm -----
;  812 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[696]    if ((Vec_Buttons & 2) && !arcadeMode)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L93	; 
	tst	_arcadeMode	;  arcadeMode
	bne	L93	; 
;----- asm -----
;  815 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[698]        nextLevel();
;  0 "" 2
;--- end asm ---
	jsr	_nextLevel	; 
L93:
;----- asm -----
;  818 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[700]    if ((Vec_Buttons & 4) && !arcadeMode)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L94	; 
	tst	_arcadeMode	;  arcadeMode
	bne	L94	; 
;----- asm -----
;  821 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[702]        if (levelNumber > 0)
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.46, levelNumber
	beq	L95	; 
;----- asm -----
;  824 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[704]            levelNumber--;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.47, levelNumber
	decb	;  levelNumber.48
	stb	_levelNumber	;  levelNumber.48, levelNumber
	bra	L96	; 
L95:
;----- asm -----
;  829 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[708]            setBank(nextBank);
;  0 "" 2
;--- end asm ---
	ldb	_nextBank	; , nextBank
	jsr	_setBank	; 
;----- asm -----
;  831 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[709]            levelNumber = levelCount - 1;
;  0 "" 2
;--- end asm ---
	ldb	_levelCount	; , levelCount
	decb	; 
	stb	_levelNumber	; , levelNumber
L96:
;----- asm -----
;  834 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[711]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L94:
;----- asm -----
;  837 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[713]    if (Vec_Buttons & 8)
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L98	; 
;----- asm -----
;  840 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[715]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L98:
	rts
	.globl _startBlockFalling
_startBlockFalling:
;----- asm -----
;  336 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[295]    gameState = BlockFalling;
;  0 "" 2
;--- end asm ---
	ldb	#7	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  338 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[296]    blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  340 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[297]    moveBlock(lastBlockDirection);
;  0 "" 2
;--- end asm ---
	ldb	_lastBlockDirection	; , lastBlockDirection
	jsr	_moveBlock	; 
;----- asm -----
;  342 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[298]    changeMusic(fallingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_fallingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  344 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[299]    vecx[VECX_MUSIC] = VECX_FALLING_MUSIC;
;  0 "" 2
;--- end asm ---
	clr	[_vecx]	; * vecx
	rts
	.globl _blockMoving
_blockMoving:
	leas	-7,s	; ,,
;----- asm -----
;  847 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[721]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  849 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[722]    drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  851 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[723]    doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
;----- asm -----
;  853 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[724]    if (!blockAnimating)
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbne	L127	; 
;----- asm -----
;  857 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[727]        if (splitMode)
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L103	; 
;----- asm -----
;  860 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[729]            testMerge();
;  0 "" 2
;--- end asm ---
	jsr	_testMerge	; 
L103:
;----- asm -----
;  865 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[733]        uint8_t c0 = isField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	2,s	; , c0
;----- asm -----
;  867 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[734]        uint8_t c1 = isField(blockX + 1, blockY);
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
;  869 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[735]        uint8_t c2 = isField(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	6,s	; , c2
;----- asm -----
;  871 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[736]        char f0 = getField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	8,s	; , f0
;----- asm -----
;  873 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[737]        char f1 = getField(blockX + 1, blockY);
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
;  875 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[738]        char f2 = getField(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	12,s	; , f2
;----- asm -----
;  877 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[739]        if (splitMode)
;  0 "" 2
;--- end asm ---
	leas	6,s	; ,,
	tst	_splitMode	;  splitMode
	beq	L104	; 
;----- asm -----
;  880 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[741]            if (!c0)
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	lbne	L105	; 
;----- asm -----
;  883 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[743]                startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
	jmp	L105	; 
L104:
;----- asm -----
;  889 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[748]            switch (blockOrientation)
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L107	; 
	blo	L106	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbne	L105	; 
	bra	L128	; 
L106:
;----- asm -----
;  894 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[751]                if (!c0 || f0 == 'f')
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L109	; 
	ldb	4,s	; , f0
	cmpb	#102	;cmpqi:	; ,
	bne	L110	; 
L109:
;----- asm -----
;  897 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[753]                    startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L110:
;----- asm -----
;  900 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[755]                break;
;  0 "" 2
;--- end asm ---
	bra	L105	; 
L107:
;----- asm -----
;  904 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[757]                if (!c0 || !c2)
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L111	; 
	tst	3,s	;  c2
	bne	L112	; 
L111:
;----- asm -----
;  907 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[759]                    startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L112:
;----- asm -----
;  910 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[761]                break;
;  0 "" 2
;--- end asm ---
	bra	L105	; 
L128:
;----- asm -----
;  914 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[763]                if (!c0 || !c1)
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L113	; 
	tst	2,s	;  c1
	bne	L114	; 
L113:
;----- asm -----
;  917 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[765]                    startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L114:
;----- asm -----
;  920 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[767]                break;
;  0 "" 2
;--- end asm ---
L105:
;----- asm -----
;  926 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[772]        if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode)
;  0 "" 2
;--- end asm ---
	tst	_blockOrientation	;  blockOrientation
	bne	L115	; 
	ldb	_blockX	; , blockX
	cmpb	_endX	;cmpqi:	; , endX
	bne	L115	; 
	ldb	_blockY	; , blockY
	cmpb	_endY	;cmpqi:	; , endY
	bne	L115	; 
	tst	_splitMode	;  splitMode
	bne	L115	; 
;----- asm -----
;  929 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[774]            blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  931 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[775]            gameState = BlockMovingAtEnd;
;  0 "" 2
;--- end asm ---
	ldb	#8	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  933 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[776]            changeMusic(levelEndMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_levelEndMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  935 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[777]            vecx[VECX_MUSIC] = VECX_LEVEL_END_MUSIC;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	[_vecx]	; ,* vecx
	bra	L116	; 
L115:
;----- asm -----
;  941 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[782]            if (gameState != BlockFalling)
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#7	;cmpqi:	; ,
	beq	L116	; 
;----- asm -----
;  944 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[784]                gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	stb	_gameState	; , gameState
L116:
;----- asm -----
;  950 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[789]        if (splitMode)
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L117	; 
;----- asm -----
;  953 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[791]            if (f0 == 's')
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	lbne	L127	; 
;----- asm -----
;  956 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[793]                swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
	jmp	L127	; 
L117:
;----- asm -----
;  962 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[798]            switch (blockOrientation)
;  0 "" 2
;--- end asm ---
	ldb	_blockOrientation	;  blockOrientation, blockOrientation
	cmpb	#1	;cmpqi:	;  blockOrientation,
	beq	L119	; 
	blo	L118	; 
	cmpb	#2	;cmpqi:	;  blockOrientation,
	lbne	L127	; 
	jmp	L129	; 
L118:
;----- asm -----
;  967 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[801]                if (f0 == 's' || f0 == 'h' || f0 == 'v')
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	beq	L121	; 
	cmpb	#104	;cmpqi:	; ,
	beq	L121	; 
	cmpb	#118	;cmpqi:	; ,
	bne	L122	; 
L121:
;----- asm -----
;  970 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[803]                    swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L122:
;----- asm -----
;  973 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[805]                break;
;  0 "" 2
;--- end asm ---
	jmp	L127	; 
L119:
;----- asm -----
;  977 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[807]                if (f0 == 's')
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L123	; 
;----- asm -----
;  980 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[809]                    swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L123:
;----- asm -----
;  983 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[811]                if (f2 == 's')
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , f2
	cmpb	#115	;cmpqi:	; ,
	bne	L124	; 
;----- asm -----
;  986 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[813]                    swatchSwitch(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L124:
;----- asm -----
;  989 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[815]                break;
;  0 "" 2
;--- end asm ---
	bra	L127	; 
L129:
;----- asm -----
;  993 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[817]                if (f0 == 's')
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L125	; 
;----- asm -----
;  996 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[819]                    swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L125:
;----- asm -----
;  999 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[821]                if (f1 == 's')
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , f1
	cmpb	#115	;cmpqi:	; ,
	bne	L126	; 
;----- asm -----
;  1002 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[823]                    swatchSwitch(blockX + 1, blockY);
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
L126:
;----- asm -----
;  1005 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[825]                break;
;  0 "" 2
;--- end asm ---
L127:
	leas	7,s	; ,,
	rts
	.globl _main
_main:
	pshs	y,u	; 
	leas	-4,s	; ,,
;----- asm -----
;  1348 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1051]    picAvailable = 0;
;  0 "" 2
;--- end asm ---
	clr	_picAvailable	;  picAvailable
;----- asm -----
;  1350 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1052]    sendPicCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendPicCommand	; 
;----- asm -----
;  1352 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1053]    sendPicCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendPicCommand	; 
;----- asm -----
;  1354 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1054]    if (sendPicCommand(CMD_VERSION, 0) == 4)
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendPicCommand	; 
	leas	3,s	; ,,
	cmpb	#4	;cmpqi:	;  D.2521,
	bne	L131	; 
;----- asm -----
;  1357 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1056]        picAvailable = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_picAvailable	; , picAvailable
L131:
;----- asm -----
;  1363 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1061]    setBank(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_setBank	; 
;----- asm -----
;  1367 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1064]    vecx[VECX_MUSIC] = VECX_TITLE_MUSIC;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  1371 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1067]    epot0 = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14305	; ,
;----- asm -----
;  1373 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1068]    epot1 = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	-14304	; ,
;----- asm -----
;  1375 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1069]    epot2 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14303	; 
;----- asm -----
;  1377 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1070]    epot3 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14302	; 
;----- asm -----
;  1380 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1072]    gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
;----- asm -----
;  1382 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1073]    musicInit();
;  0 "" 2
;--- end asm ---
	jsr	_musicInit	; 
;----- asm -----
;  1385 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1075]    while (1)
;  0 "" 2
;--- end asm ---
L146:
;----- asm -----
;  1389 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1078]        frwait();
;  0 "" 2
;  97 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  1392 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1080]        switch (gameState)
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#8	;cmpqi:	; ,
	lbhi	L132	; 
	clra		;zero_extendqihi: R:b -> R:d	; ,
	std	,s	; ,
	aslb	; 
	rola	; 
	tfr	d,x	; , tmp38
	jmp	[L142,x]	; , tmp38
L142:
	.word L133
	.word L134
	.word L135
	.word L136
	.word L137
	.word L138
	.word L139
	.word L140
	.word L141
L133:
;----- asm -----
;  1397 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1083]            mainMenu();
;  0 "" 2
;--- end asm ---
	jsr	_mainMenu	; 
;----- asm -----
;  1399 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1084]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1401 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1085]            break;
;  0 "" 2
;--- end asm ---
	jmp	L132	; 
L136:
;----- asm -----
;  1405 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1087]            clearMenu();
;  0 "" 2
;--- end asm ---
	jsr	_clearMenu	; 
;----- asm -----
;  1407 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1088]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1409 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1089]            break;
;  0 "" 2
;--- end asm ---
	jmp	L132	; 
L134:
;----- asm -----
;  1413 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1091]            arcadeMenu();
;  0 "" 2
;--- end asm ---
	jsr	_arcadeMenu	; 
;----- asm -----
;  1415 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1092]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1417 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1093]            break;
;  0 "" 2
;--- end asm ---
	jmp	L132	; 
L135:
;----- asm -----
;  1421 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1095]            arcadeEnd();
;  0 "" 2
;--- end asm ---
	jsr	_arcadeEnd	; 
;----- asm -----
;  1423 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1096]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1425 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1097]            break;
;  0 "" 2
;--- end asm ---
	jmp	L132	; 
L137:
;----- asm -----
;  1429 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1099]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1431 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1100]            blockMovingToStart();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingToStart	; 
;----- asm -----
;  1433 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1101]            break;
;  0 "" 2
;--- end asm ---
	jmp	L132	; 
L138:
;----- asm -----
;  1437 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1103]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1439 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1104]            blockWaiting();
;  0 "" 2
;--- end asm ---
	jsr	_blockWaiting	; 
;----- asm -----
;  1441 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1105]            break;
;  0 "" 2
;--- end asm ---
	jmp	L132	; 
L139:
;----- asm -----
;  1445 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1107]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1447 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1108]            blockMoving();
;  0 "" 2
;--- end asm ---
	jsr	_blockMoving	; 
;----- asm -----
;  1449 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1109]            break;
;  0 "" 2
;--- end asm ---
	bra	L132	; 
L140:
;----- asm -----
;  1453 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1111]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1455 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1112]            blockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_blockFalling	; 
;----- asm -----
;  1457 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1113]            break;
;  0 "" 2
;--- end asm ---
	bra	L132	; 
L141:
;----- asm -----
;  1461 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1115]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1463 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1116]            blockMovingAtEnd();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingAtEnd	; 
;----- asm -----
;  1465 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1117]            break;
;  0 "" 2
;--- end asm ---
L132:
;----- asm -----
;  1470 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1121]        if (gameState > ClearMenu)
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#3	;cmpqi:	; ,
	bls	L143	; 
;----- asm -----
;  1473 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1123]            DP_to_C8();
;  0 "" 2
;  316 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___DP_to_C8; BIOS call
;  0 "" 2
;  1475 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1124]            replay(currentMusic);
;  0 "" 2
;--- end asm ---
	ldx	_currentMusic	; , currentMusic
	stx	2,s	; , u
;----- asm -----
;  2917 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldu 2,s	;  u
	jsr ___Init_Music_chk; BIOS call
;  0 "" 2
;  1477 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1125]            DP_to_D0();
;  0 "" 2
;  300 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___DP_to_D0; BIOS call
;  0 "" 2
;  1479 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1126]            reqout();
;  0 "" 2
;  2880 "C:\data\Vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Do_Sound; BIOS call
;  0 "" 2
;--- end asm ---
L143:
;----- asm -----
;  1484 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1130]        if (arcadeMode)
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	lbeq	L146	; 
;----- asm -----
;  1487 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1132]            frames++;
;  0 "" 2
;--- end asm ---
	ldd	_frames	;  frames.96, frames
	addd	#1	;  frames.96,
	std	_frames	;  frames.96, frames
;----- asm -----
;  1489 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1133]            if (frames == 50)
;  0 "" 2
;--- end asm ---
	cmpd	#50	;cmphi:	;  frames.96,
	lbne	L146	; 
;----- asm -----
;  1492 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1135]                frames = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_frames	; , frames
;----- asm -----
;  1494 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1136]                if (moveCount < 999)
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.97, moveCount
	cmpx	#998	;cmphi:	;  moveCount.97,
	lbhi	L146	; 
;----- asm -----
;  1497 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1138]                    moveCount++;
;  0 "" 2
;--- end asm ---
	leax	1,x	; ,, moveCount.97
	stx	_moveCount	; , moveCount
;----- asm -----
;  1499 "C:\data\Vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1139]                    updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
	jmp	L146	; 
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
	.area .data
_vecx:
	.word	-32768
	.area .text
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
_infoText:	.blkb	20
_highscoreText:	.blkb	10
_highscoreDisplayCounter:	.blkb	1
_levelHighscore:	.blkb	2
	.globl	_moveCount
_moveCount:	.blkb	2
	.globl	_frames
_frames:	.blkb	2
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
