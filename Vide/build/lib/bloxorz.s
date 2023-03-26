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
;  243 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[227]    while (1) {
;  0 "" 2
;--- end asm ---
L2:
;----- asm -----
;  245 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[228]        frwait();
;  0 "" 2
;  97 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  247 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[229]        Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  249 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[230]        Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  251 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[231]        Print_Str_d(-10, -110, msg);
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
;  274 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[250]    uint16_t muls[] = { 100, 10, 1 };
;  0 "" 2
;--- end asm ---
	ldd	#100	; ,
	std	9,s	; , muls
	ldd	#10	; ,
	std	11,s	; , muls
	ldd	#1	; ,
	std	13,s	; , muls
;----- asm -----
;  276 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[251]    if (number > 999) number = 999;
;  0 "" 2
;--- end asm ---
	leay	,x	;  number.131, number
	cmpx	#999	;cmphi:	;  number.131,
	bls	L5	; 
	ldy	#999	;  number.131,
L5:
;----- asm -----
;  278 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[252]    for (uint8_t i = 0; i < 3; i++) {
;  0 "" 2
;--- end asm ---
	leax	9,s	; ,,
	stx	5,s	; , ivtmp.127
	ldd	21,s	; , text
	std	7,s	; , ivtmp.129
L9:
;----- asm -----
;  280 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[253]        uint8_t d = 0;
;  0 "" 2
;  282 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[254]        while (number >= muls[i]) {
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
;  284 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[255]            d++;
;  0 "" 2
;--- end asm ---
	inc	2,s	;  d
;----- asm -----
;  286 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[256]            number -= muls[i];
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
;  289 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[258]        text[i] = d + '0';
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
;  306 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[271]    tstat = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14250	; ,
;----- asm -----
;  308 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[272]    currentMusic = music;
;  0 "" 2
;--- end asm ---
	stx	_currentMusic	;  music, currentMusic
	rts
	.globl _drawField
_drawField:
;----- asm -----
;  422 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LDA     #0x35
;  0 "" 2
;  423 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STA     *0xd001     ;Store intensity in D/A
;  0 "" 2
;  424 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LDD     #0x0504          ;mux disabled channel 2
;  0 "" 2
;  425 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STA     *0xd000
;  0 "" 2
;  426 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STB     *0xd000     ;mux enabled channel 2
;  0 "" 2
;  427 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STB     *0xd000     ;do it again just because
;  0 "" 2
;  428 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LDB     #0x01
;  0 "" 2
;  429 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	STB     *0xd000     ;turn off mux
;  0 "" 2
;  434 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		pshs u
;  0 "" 2
;  435 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldx #_lineYX_yx_s_dy_dx
;  0 "" 2
;  436 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  437 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  439 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	drawFieldLoop1:
;  0 "" 2
;  454 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  455 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  456 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  457 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  461 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  462 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  463 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  464 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  466 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STU      *0xd00B                    ; 
;  0 "" 2
;  467 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  468 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  469 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  472 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		leax 2,x ; 5
;  0 "" 2
;  473 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		lda ,x+ ; 6
;  0 "" 2
;  474 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	bmi scale_negative_7f; 3 - negative means, the next line is in offset to this line, not from 0,0
;  0 "" 2
;  475 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  476 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0xff98 ; 3
;  0 "" 2
;  477 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x ; 5
;  0 "" 2
;  484 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  485 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  486 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  487 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  488 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  489 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  490 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u    ; 7 
;  0 "" 2
;  491 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u    ; 7 
;  0 "" 2
;  495 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  496 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    nop 
;  0 "" 2
;  499 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  500 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  501 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  502 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  503 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  504 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  505 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  506 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  508 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	leax 2,x
;  0 "" 2
;  509 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldb #0x7f
;  0 "" 2
;  510 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		stb *0xd004
;  0 "" 2
;  511 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  512 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		LDd     #0x40CC
;  0 "" 2
;  514 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_1:           BITA     *0xD00D               ;  
;  0 "" 2
;  515 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_1                        ;  
;  0 "" 2
;  516 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    clra 
;  0 "" 2
;  517 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    sta      *0xd00a               ;clear shift regigster 
;  0 "" 2
;  520 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		STB *0xd00C ; reset 0
;  0 "" 2
;  521 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  522 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		bne drawFieldLoop1
;  0 "" 2
;  523 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		puls u, pc
;  0 "" 2
;  530 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	scale_negative_7f:
;  0 "" 2
;  531 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	anda #0x7f ; 2
;  0 "" 2
;  532 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  533 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0xff98 ; 4
;  0 "" 2
;  534 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x ; 5
;  0 "" 2
;  537 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  538 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  539 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  540 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  541 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    pshs u,x,y,d,dp    ; 14
;  0 "" 2
;  542 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    puls u,x,y,d,dp    ; 14 
;  0 "" 2
;  543 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  544 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    tfr a,a    ; 6 
;  0 "" 2
;  545 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		    brn   scale_negative_7f ; 3 
;  0 "" 2
;  550 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		not_full_cont:
;  0 "" 2
;  551 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  552 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  553 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  554 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  555 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  556 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  557 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  558 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  560 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		not_full_cont_after:
;  0 "" 2
;  561 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	leax 2,x
;  0 "" 2
;  562 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  565 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	nop
;  0 "" 2
;  566 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	brn LF33D2_3
;  0 "" 2
;  569 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    LDb      #0x40                         ;  
;  0 "" 2
;  570 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_3:           BITb     *0xD00D               ;  
;  0 "" 2
;  571 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_3                        ;  
;  0 "" 2
;  572 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    sta      *0xd00a               ;clear shift regigster, a is still zero 
;  0 "" 2
;  577 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  581 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  582 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  583 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  584 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  585 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  586 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  587 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  590 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		leax 2,x ; 5
;  0 "" 2
;  591 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		lda ,x+ ; 6
;  0 "" 2
;  592 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	bmi scale_negative; next is also no full move
;  0 "" 2
;  593 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  594 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0xff98 ; 4
;  0 "" 2
;  600 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    LDa      #0x40                         ;  
;  0 "" 2
;  601 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_4:           BITa     *0xD00D               ;  
;  0 "" 2
;  602 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_4                        ;  
;  0 "" 2
;  606 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x ; 4
;  0 "" 2
;  607 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  608 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  609 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  610 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  611 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  612 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  613 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  614 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  616 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	leax 2,x
;  0 "" 2
;  617 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldb #0x7f
;  0 "" 2
;  619 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		stb *0xd004
;  0 "" 2
;  620 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0x98ce
;  0 "" 2
;  621 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		LDd #0x40CC
;  0 "" 2
;  622 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_5:           BITA     *0xD00D               ;  
;  0 "" 2
;  623 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_5                        ;  
;  0 "" 2
;  624 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    clra 
;  0 "" 2
;  625 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    sta      *0xd00a               ;clear shift regigster 
;  0 "" 2
;  628 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		STB *0xd00C ; reset 0
;  0 "" 2
;  629 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x
;  0 "" 2
;  630 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		lbne drawFieldLoop1
;  0 "" 2
;  631 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		puls u, pc
;  0 "" 2
;  634 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	scale_negative:
;  0 "" 2
;  635 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	anda #0x7f ; 2
;  0 "" 2
;  636 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		sta *0xd004 ; 4
;  0 "" 2
;  637 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldu #0xff98 ; 4
;  0 "" 2
;  640 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    LDA      #0x40                         ;  
;  0 "" 2
;  641 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	LF33D2_6:           BITA     *0xD00D               ;  
;  0 "" 2
;  642 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    BEQ      LF33D2_6                        ;  
;  0 "" 2
;  643 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
		ldd ,x ; 5
;  0 "" 2
;  646 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd001                  ;Store Y in D/A register 
;  0 "" 2
;  647 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    CLRA     
;  0 "" 2
;  648 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd000                  ;Enable mux 
;  0 "" 2
;  649 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    INCA 
;  0 "" 2
;  650 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STD      *0xd000                  ;Store X in D/A register 
;  0 "" 2
;  651 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    DECA 
;  0 "" 2
;  652 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    stu      *0xd00a               ;unclear shift regigster 
;  0 "" 2
;  653 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	                    STA      *0xd005               ;enable timer 
;  0 "" 2
;  654 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
;  1117 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[873]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1119 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[874]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1121 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[875]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1123 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[876]    Print_Str_d(100, -70, "GAME OVER€");
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
;  1125 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[877]    Print_Str_d(50, -110, infoText);
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
;  1127 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[878]    if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L17	; 
;----- asm -----
;  1129 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[879]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L17:
;----- asm -----
;  1132 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[881]    if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L18	; 
;----- asm -----
;  1134 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[882]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L18:
;----- asm -----
;  1137 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[884]    if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L19	; 
;----- asm -----
;  1139 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[885]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L19:
;----- asm -----
;  1142 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[887]    if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L21	; 
;----- asm -----
;  1144 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[888]        gameState = MainMenu;
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
;  1193 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[924]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1195 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[925]    intens(0x50);
;  0 "" 2
;--- end asm ---
	ldb	#80	; ,
	stb	,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda ,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1198 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[927]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1200 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[928]    positd(-50, 100);
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
;  1202 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[929]    pack1x((void*)led8);
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
;  1205 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[931]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1207 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[932]    positd(-40, 110);
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
;  1209 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[933]    pack1x((void*)led8);
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
;  1212 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[935]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1214 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[936]    positd(-30, 120);
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
;  1216 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[937]    pack1x((void*)led8);
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
;  1219 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[939]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1221 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[940]    positd(0, 120);
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
;  1223 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[941]    pack1x((void*)led8);
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
;  1226 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[943]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1228 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[944]    positd(10, 120);
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
;  1230 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[945]    pack1x((void*)led8);
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
;  1233 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[947]    zergnd();
;  0 "" 2
;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Reset0Ref; BIOS call
;  0 "" 2
;  1235 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[948]    positd(20, 120);
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
;  1237 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[949]    pack1x((void*)led8);
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
;  1243 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[954]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1245 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[955]    Vec_Text_Width = 100;
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1247 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[956]    if (highscoreDisplayCounter > 180) {
;  0 "" 2
;--- end asm ---
	ldb	_highscoreDisplayCounter	; , highscoreDisplayCounter
	cmpb	#-76	;cmpqi:	; ,
	bls	L25	; 
;----- asm -----
;  1249 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[957]        Print_Str_d(100, -70, highscoreText);
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
	stb	2,s	; , a
	ldb	#-70	; ,
	stb	3,s	; , b
	ldx	#_highscoreText	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;--- end asm ---
	bra	L26	; 
L25:
;----- asm -----
;  1252 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[959]        Print_Str_d(100, -70, infoText);
;  0 "" 2
;--- end asm ---
	ldb	#100	; ,
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
L26:
;----- asm -----
;  1255 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[961]    highscoreDisplayCounter++;
;  0 "" 2
;--- end asm ---
	ldb	_highscoreDisplayCounter	;  highscoreDisplayCounter.90, highscoreDisplayCounter
	incb	;  highscoreDisplayCounter.90
	stb	_highscoreDisplayCounter	;  highscoreDisplayCounter.90, highscoreDisplayCounter
;----- asm -----
;  1257 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[962]    if (highscoreDisplayCounter > 240) {
;  0 "" 2
;--- end asm ---
	cmpb	#-16	;cmpqi:	;  highscoreDisplayCounter.90,
	bls	L28	; 
;----- asm -----
;  1259 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[963]        highscoreDisplayCounter = 0;
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
;  195 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[194]    picWrite('V');
;  0 "" 2
;--- end asm ---
	ldb	#86	; ,
	jsr	_picWrite	; 
;----- asm -----
;  197 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[195]    picWrite(cmd);
;  0 "" 2
;--- end asm ---
	ldb	,s	; , cmd
	jsr	_picWrite	; 
;----- asm -----
;  199 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[196]    picWrite(arg);
;  0 "" 2
;--- end asm ---
	ldb	3,s	; , arg
	jsr	_picWrite	; 
;----- asm -----
;  201 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[197]    return picRead();
;  0 "" 2
;--- end asm ---
	jsr	_picRead	; 
	leas	1,s	; ,,
	rts
_sendCommand:
	leas	-2,s	; ,,
	stb	,s	;  cmd, cmd
;----- asm -----
;  219 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[210]	uint8_t result = 0;
;  0 "" 2
;  221 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[211]	if (picAvailable) {
;  0 "" 2
;--- end asm ---
	tst	_picAvailable	;  picAvailable
	beq	L32	; 
;----- asm -----
;  223 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[212]        result = sendPicCommand(cmd, arg);
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
;  226 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[214]        result = sendVecxCommand(cmd, arg);
;  0 "" 2
;  207 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[202]    vecx[VECX_PIC_RW] = 'V';
;  0 "" 2
;--- end asm ---
	ldx	_vecx	;  vecx.1, vecx
	ldb	#86	; ,
	stb	1,x	; ,
;----- asm -----
;  209 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[203]    vecx[VECX_PIC_RW] = cmd;
;  0 "" 2
;--- end asm ---
	ldx	_vecx	;  vecx.2, vecx
	ldb	,s	; , cmd
	stb	1,x	; ,
;----- asm -----
;  211 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[204]    vecx[VECX_PIC_RW] = arg;
;  0 "" 2
;--- end asm ---
	ldx	_vecx	;  vecx.3, vecx
	ldb	4,s	; , arg
	stb	1,x	; ,
;----- asm -----
;  213 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[205]    return vecx[VECX_PIC_RW];
;  0 "" 2
;--- end asm ---
	ldx	_vecx	;  vecx.4, vecx
	ldb	1,x	; ,
	stb	1,s	; , result
L33:
;----- asm -----
;  229 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[216]    delay10ms();
;  0 "" 2
;--- end asm ---
	jsr	_delay10ms	; 
;----- asm -----
;  231 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[217]    return result;
;  0 "" 2
;--- end asm ---
	ldb	1,s	; , result
	leas	2,s	; ,,
	rts
_setBank:
;----- asm -----
;  237 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[222]    sendCommand(CMD_SET_BANK, bank);
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
;  266 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[243]    return sendCommand(CMD_EEPROM_READ, address);
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
;  258 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[237]    sendCommand(CMD_SET_EEPROM_ADR, address);
;  0 "" 2
;--- end asm ---
	pshs	b	;  address
	ldb	#2	; ,
	jsr	_sendCommand	; 
;----- asm -----
;  260 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[238]    sendCommand(CMD_EEPROM_WRITE, data);
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
;  1151 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[894]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1153 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[895]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	4,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 4,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1155 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[896]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1157 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[897]    Print_Str_d(100, -80, "CLEAR SCORE?€");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	4,s	; , a
	ldb	#-80	; ,
	stb	3,s	; , b
	ldx	#LC1	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1159 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[898]    Print_Str_d(50, -110, "3 YES€");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	4,s	; , b
	ldx	#LC2	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 4,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1161 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[899]    Print_Str_d(20, -110, "4 NO€");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	4,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC3	; ,
	stx	1,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 4,s	;  a
	ldb 3,s	;  b
	ldu 1,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1163 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[900]    if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L42	; 
;----- asm -----
;  1165 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[901]        for (uint8_t i = 0; i < 6; i++) {
;  0 "" 2
;--- end asm ---
	clr	,s	;  i
L43:
;----- asm -----
;  1167 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[902]            writeEeprom(i, 0xff);
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
;  1170 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[904]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L42:
;----- asm -----
;  1173 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[906]    if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L45	; 
;----- asm -----
;  1175 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[907]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L45:
	leas	5,s	; ,,
	puls	u,pc	; 
	.globl _blockMovingToStart
_blockMovingToStart:
;----- asm -----
;  665 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[596]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  667 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[597]    drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  669 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[598]    blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.34, blockYOfs
	incb	;  blockYOfs.34
	stb	_blockYOfs	;  blockYOfs.34, blockYOfs
;----- asm -----
;  671 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[599]    if (blockYOfs == 0) {
;  0 "" 2
;--- end asm ---
	tstb	;  blockYOfs.34
	bne	L49	; 
;----- asm -----
;  673 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[600]        gameState = BlockWaiting;
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
;  296 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[264]    memcpy(infoText, "001 - 999€", 10);
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
;  298 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[265]    itoa(moveCount, &infoText[0]);
;  0 "" 2
;--- end asm ---
	pshs	x	;  tmp28
	ldx	_moveCount	; , moveCount
	jsr	_itoa	; 
;----- asm -----
;  300 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[266]    itoa(levelNumber + levelOffset, &infoText[6]);
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
;  341 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[295]    if (arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	beq	L53	; 
;----- asm -----
;  343 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[296]        levelNumber = arcadeLevels[arcadeSelection][arcadeIndex] - 1;
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
;  347 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[299]        uint8_t index = (uint8_t) (levelOffset + levelNumber * 2);
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.22, levelNumber
	aslb	;  tmp43
	addb	_levelOffset	;  tmp43, levelOffset
	stb	2,s	;  tmp43, index
;----- asm -----
;  349 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[300]        levelHighscore = readEeprom(index);
;  0 "" 2
;--- end asm ---
	jsr	_readEeprom	; 
	clra		;zero_extendqihi: R:b -> R:d	;  D.2340, D.2340
	std	_levelHighscore	;  D.2340, levelHighscore
;----- asm -----
;  351 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[301]        levelHighscore |= ((uint16_t) readEeprom(index + 1)) << 8;
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
;  353 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[302]        if (levelHighscore == 0) levelHighscore = 999;
;  0 "" 2
;--- end asm ---
	cmpd	#0	;  levelHighscore.26
	bne	L55	; 
	ldx	#999	; ,
	stx	_levelHighscore	; , levelHighscore
L55:
;----- asm -----
;  357 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[305]        memcpy(highscoreText, "BEST  999€", 10);
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
;  359 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[306]        itoa(levelHighscore, &highscoreText[6]);
;  0 "" 2
;--- end asm ---
	ldd	#_highscoreText+6	; ,
	std	,--s	; ,
	ldx	_levelHighscore	; , levelHighscore
	jsr	_itoa	; 
;----- asm -----
;  361 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[307]        highscoreDisplayCounter = 0;
;  0 "" 2
;--- end asm ---
	clr	_highscoreDisplayCounter	;  highscoreDisplayCounter
	leas	2,s	; ,,
L54:
;----- asm -----
;  364 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[309]    level = levels[levelNumber];
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
;  366 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[310]    initSwatches();
;  0 "" 2
;--- end asm ---
	jsr	_initSwatches	; 
;----- asm -----
;  368 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[311]    initLevel();
;  0 "" 2
;--- end asm ---
	jsr	_initLevel	; 
;----- asm -----
;  370 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[312]    blockX = level->start.x;
;  0 "" 2
;--- end asm ---
	ldx	_level	;  level, level
	ldb	2,x	; , <variable>.start.x
	stb	_blockX	; , blockX
;----- asm -----
;  372 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[313]    blockY = level->start.y;
;  0 "" 2
;--- end asm ---
	ldb	3,x	; , <variable>.start.y
	stb	_blockY	; , blockY
;----- asm -----
;  374 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[314]    blockStartLevel();
;  0 "" 2
;--- end asm ---
	jsr	_blockStartLevel	; 
;----- asm -----
;  376 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[315]    blockYOfs = -30;
;  0 "" 2
;--- end asm ---
	ldb	#-30	; ,
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  378 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[316]    gameState = BlockMovingToStart;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  380 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[317]    changeMusic(startMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_startMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  382 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[318]    vecx[VECX_MUSIC] = VECX_START_MUSIC;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  384 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[319]    if (!arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	bne	L56	; 
;----- asm -----
;  386 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[320]        moveCount = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_moveCount	; , moveCount
;----- asm -----
;  388 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[321]        updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
L56:
;----- asm -----
;  391 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[323]    si = 0;
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
;  1069 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[845]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1071 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[846]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	3,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1073 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[847]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1075 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[848]    Print_Str_d(100, -70, "ARCADE MODE€");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	3,s	; , a
	ldb	#-70	; ,
	stb	2,s	; , b
	ldx	#LC4	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1077 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[849]    Print_Str_d(50, -110, "1 SET 1€");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC5	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1079 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[850]    Print_Str_d(20, -110, "2 SET 2€");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC6	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1081 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[851]    Print_Str_d(-10, -110, "3 SET 3€");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC7	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1083 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[852]    Print_Str_d(-40, -110, "4 SET 4€");
;  0 "" 2
;--- end asm ---
	ldb	#-40	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC8	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1085 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[853]    if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L59	; 
;----- asm -----
;  1087 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[854]        arcadeSelection = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeSelection	;  arcadeSelection
;----- asm -----
;  1089 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[855]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L59:
;----- asm -----
;  1092 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[857]    if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L60	; 
;----- asm -----
;  1094 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[858]        arcadeSelection = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  1096 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[859]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L60:
;----- asm -----
;  1099 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[861]    if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L61	; 
;----- asm -----
;  1101 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[862]        arcadeSelection = 2;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  1103 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[863]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L61:
;----- asm -----
;  1106 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[865]    if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L63	; 
;----- asm -----
;  1108 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[866]        arcadeSelection = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	_arcadeSelection	; , arcadeSelection
;----- asm -----
;  1110 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[867]        startLevel();
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
;  1024 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[819]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  1026 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[820]    Intensity_a(0x5f);
;  0 "" 2
;--- end asm ---
	ldb	#95	; ,
	stb	2,s	; , a
;----- asm -----
;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	jsr ___Intensity_a; BIOS call
;  0 "" 2
;  1028 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[821]    Vec_Text_Width = 90;
;  0 "" 2
;--- end asm ---
	ldb	#90	; ,
	stb	_Vec_Text_Width	; , Vec_Text_Width
;----- asm -----
;  1030 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[822]    Print_Str_d(100, -70, "MAIN MENU€");
;  0 "" 2
;--- end asm ---
	addb	#10	; ,
	stb	2,s	; , a
	ldb	#-70	; ,
	stb	3,s	; , b
	ldx	#LC9	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1032 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[823]    Print_Str_d(50, -110, "1 PUZZLE MODE€");
;  0 "" 2
;--- end asm ---
	ldb	#50	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC10	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1034 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[824]    Print_Str_d(20, -110, "2 ARCADE MODE€");
;  0 "" 2
;--- end asm ---
	ldb	#20	; ,
	stb	2,s	; , a
	ldb	#-110	; ,
	stb	3,s	; , b
	ldx	#LC11	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 2,s	;  a
	ldb 3,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1036 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[825]    Print_Str_d(-10, -110, "3 CLEAR HIGHSCORE€");
;  0 "" 2
;--- end asm ---
	ldb	#-10	; ,
	stb	3,s	; , a
	ldb	#-110	; ,
	stb	2,s	; , b
	ldx	#LC12	; ,
	stx	,s	; , u
;----- asm -----
;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	lda 3,s	;  a
	ldb 2,s	;  b
	ldu ,s	;  u
	jsr ___Print_Str_d; BIOS call
;  0 "" 2
;  1038 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[826]    if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L65	; 
;----- asm -----
;  1040 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[827]        arcadeMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeMode	;  arcadeMode
;----- asm -----
;  1042 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[828]        levelNumber = 0;
;  0 "" 2
;--- end asm ---
	clr	_levelNumber	;  levelNumber
;----- asm -----
;  1044 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[829]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L65:
;----- asm -----
;  1047 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[831]    if (Vec_Buttons & 2) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L66	; 
;----- asm -----
;  1049 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[832]        frames = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_frames	; , frames
;----- asm -----
;  1051 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[833]        moveCount = 0;
;  0 "" 2
;--- end asm ---
	std	_moveCount	; , moveCount
;----- asm -----
;  1053 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[834]        arcadeMode = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_arcadeMode	; , arcadeMode
;----- asm -----
;  1055 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[835]        arcadeIndex = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeIndex	;  arcadeIndex
;----- asm -----
;  1057 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[836]        gameState = ArcadeMenu;
;  0 "" 2
;--- end asm ---
	stb	_gameState	; , gameState
L66:
;----- asm -----
;  1060 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[838]    if (Vec_Buttons & 4) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L68	; 
;----- asm -----
;  1062 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[839]        gameState = ClearMenu;
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
;  960 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[779]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  962 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[780]    blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	incb	; 
	stb	,s	; , blockYOfs.68
	stb	_blockYOfs	; , blockYOfs
;----- asm -----
;  964 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[781]    if (blockYOfs < 12) {
;  0 "" 2
;--- end asm ---
	cmpb	#11	;cmpqi:	; ,
	bgt	L70	; 
;----- asm -----
;  966 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[782]        drawBlock(-blockYOfs*blockYOfs);
;  0 "" 2
;--- end asm ---
	negb	;  tmp28
	lda	,s	;mulqihi3	;  blockYOfs.68
	mul
		;movlsbqihi: D->B
	jsr	_drawBlock	; 
;----- asm -----
;  968 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[783]        doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
L70:
;----- asm -----
;  971 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[785]    if (blockYOfs == 50) {
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	cmpb	#50	;cmpqi:	; ,
	bne	L72	; 
;----- asm -----
;  973 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[786]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L72:
	leas	1,s	; ,,
	rts
	.globl _nextLevel
_nextLevel:
;----- asm -----
;  680 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[606]    levelNumber++;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.35, levelNumber
	incb	;  levelNumber.36
; Applied peep: 2 (no load after store)
;----- asm -----
;  682 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[607]    if (levelNumber >= levelCount) {
;  0 "" 2
;--- end asm ---
	stb	_levelNumber	;  levelNumber.36, levelNumber
; ORG>	stb	_levelNumber	;  levelNumber.36, levelNumber
; ORG>;----- asm -----
; ORG>;  682 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
; ORG>	; $ENR$[607]    if (levelNumber >= levelCount) {
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	ldb	_levelNumber	;  levelNumber.37, levelNumber
	cmpb	_levelCount	;cmpqi:	;  levelNumber.37, levelCount
	blo	L74	; 
;----- asm -----
;  684 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[608]        levelNumber = 0;
;  0 "" 2
;--- end asm ---
	clr	_levelNumber	;  levelNumber
;----- asm -----
;  686 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[609]        setBank(nextBank);
;  0 "" 2
;--- end asm ---
	ldb	_nextBank	; , nextBank
	jsr	_setBank	; 
L74:
;----- asm -----
;  689 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[611]    startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	rts
	.globl _blockMovingAtEnd
_blockMovingAtEnd:
	pshs	y,u	; 
	leas	-5,s	; ,,
;----- asm -----
;  980 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[792]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  982 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[793]    drawBlock(blockYOfs);
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	; , blockYOfs
	jsr	_drawBlock	; 
;----- asm -----
;  984 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[794]    blockYOfs++;
;  0 "" 2
;--- end asm ---
	ldb	_blockYOfs	;  blockYOfs.70, blockYOfs
	incb	;  blockYOfs.70
	stb	_blockYOfs	;  blockYOfs.70, blockYOfs
;----- asm -----
;  986 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[795]    if (blockYOfs == 30) {
;  0 "" 2
;--- end asm ---
	cmpb	#30	;cmpqi:	;  blockYOfs.70,
	lbne	L81	; 
;----- asm -----
;  988 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[796]        if (moveCount < levelHighscore) {
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.71, moveCount
	cmpx	_levelHighscore	;cmphi:	;  moveCount.71, levelHighscore
	bhs	L78	; 
;----- asm -----
;  990 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[797]            writeEeprom((uint8_t) (levelOffset + 2 * levelNumber), (uint8_t) (moveCount & 0xff));
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
;  992 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[798]            writeEeprom((uint8_t) (levelOffset + 2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
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
;  995 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[800]        if (arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	lbeq	L79	; 
;----- asm -----
;  997 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[801]            arcadeIndex++;
;  0 "" 2
;--- end asm ---
	ldb	_arcadeIndex	;  arcadeIndex.78, arcadeIndex
	incb	;  arcadeIndex.78
	stb	_arcadeIndex	;  arcadeIndex.78, arcadeIndex
;----- asm -----
;  999 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[802]            levelNumber = arcadeLevels[arcadeSelection][arcadeIndex];
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
;  1001 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[803]            if (levelNumber == 0) {
;  0 "" 2
;--- end asm ---
	stb	_levelNumber	;  levelNumber.80, levelNumber
; ORG>	stb	_levelNumber	;  levelNumber.80, levelNumber
; ORG>;----- asm -----
; ORG>;  1001 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
; ORG>	; $ENR$[803]            if (levelNumber == 0) {
; ORG>;  0 "" 2
; ORG>;--- end asm ---
; ORG>	ldb	_levelNumber	;  levelNumber.81, levelNumber
	lbne	L80	; 
;----- asm -----
;  1003 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[804]                gameState = ArcadeEnd;
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  1005 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[805]                memcpy(infoText, "TIME: 000 SECONDS€", 18);
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
;  1007 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[806]                itoa(moveCount, &infoText[6]);
;  0 "" 2
;--- end asm ---
	ldu	#_infoText+6	; ,
	stu	,--s	; ,
	ldx	_moveCount	; , moveCount
	jsr	_itoa	; 
;----- asm -----
;  1009 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[807]                arcadeMode = 0;
;  0 "" 2
;--- end asm ---
	clr	_arcadeMode	;  arcadeMode
	leas	2,s	; ,,
	bra	L81	; 
L80:
;----- asm -----
;  1012 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[809]                startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
	bra	L81	; 
L79:
;----- asm -----
;  1016 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[812]		   nextLevel();
;  0 "" 2
;--- end asm ---
	jsr	_nextLevel	; 
L81:
	leas	5,s	; ,,
	puls	y,u,pc	; 
	.globl _moveBlock
_moveBlock:
;----- asm -----
;  314 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[277]    moveBlockImpl(move);
;  0 "" 2
;--- end asm ---
	jsr	_moveBlockImpl	; 
;----- asm -----
;  316 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[278]    if (!arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	bne	L85	; 
;----- asm -----
;  318 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[279]        if (moveCount < 999) moveCount++;
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.13, moveCount
	cmpx	#998	;cmphi:	;  moveCount.13,
	bhi	L84	; 
	leax	1,x	; ,, moveCount.13
	stx	_moveCount	; , moveCount
L84:
;----- asm -----
;  320 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[280]        updateInfoText();
;  0 "" 2
;--- end asm ---
	jsr	_updateInfoText	; 
L85:
	rts
	.globl _blockWaiting
_blockWaiting:
;----- asm -----
;  695 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[616]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  697 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[617]    drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  699 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[618]    joybit();
;  0 "" 2
;  2354 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Joy_Digital; BIOS call
;  0 "" 2
;  701 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[619]    if (pot0 < -10) {
;  0 "" 2
;--- end asm ---
	ldb	-14309	;  D.2370,
	cmpb	#-10	;cmpqi:	;  D.2370,
	bge	L87	; 
;----- asm -----
;  703 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[620]        moveBlock(Left);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_moveBlock	; 
;----- asm -----
;  705 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[621]        gameState = BlockMoving;
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
;  708 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[623]        moveBlock(Right);
;  0 "" 2
;--- end asm ---
	ldb	#2	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  710 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[624]        gameState = BlockMoving;
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
;  713 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[626]        moveBlock(Down);
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  715 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[627]        gameState = BlockMoving;
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
;  718 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[629]        moveBlock(Up);
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	jsr	_moveBlock	; 
;----- asm -----
;  720 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[630]        gameState = BlockMoving;
;  0 "" 2
;--- end asm ---
	ldb	#6	; ,
	stb	_gameState	; , gameState
L88:
;----- asm -----
;  724 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[633]#if 0
;  0 "" 2
;  769 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[660]    if (gameState == BlockMoving) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#6	;cmpqi:	; ,
	bne	L91	; 
;----- asm -----
;  771 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[661]        changeMusic(movingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_movingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  773 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[662]        vecx[VECX_MUSIC] = VECX_MOVING_MUSIC;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	[_vecx]	; ,* vecx
L91:
;----- asm -----
;  777 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[665]    Read_Btns();
;  0 "" 2
;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Read_Btns; BIOS call
;  0 "" 2
;  779 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[666]    if (Vec_Buttons & 1) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#1	; ,
	beq	L92	; 
;----- asm -----
;  781 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[667]        if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L92	; 
;----- asm -----
;  783 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[668]            swapSplit();
;  0 "" 2
;--- end asm ---
	jsr	_swapSplit	; 
L92:
;----- asm -----
;  788 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[672]    if ((Vec_Buttons & 2) && !arcadeMode) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#2	; ,
	beq	L93	; 
	tst	_arcadeMode	;  arcadeMode
	bne	L93	; 
;----- asm -----
;  790 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[673]		nextLevel();
;  0 "" 2
;--- end asm ---
	jsr	_nextLevel	; 
L93:
;----- asm -----
;  793 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[675]    if ((Vec_Buttons & 4) && !arcadeMode) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#4	; ,
	beq	L94	; 
	tst	_arcadeMode	;  arcadeMode
	bne	L94	; 
;----- asm -----
;  795 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[676]        if (levelNumber > 0) {
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.46, levelNumber
	beq	L95	; 
;----- asm -----
;  797 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[677]            levelNumber--;
;  0 "" 2
;--- end asm ---
	ldb	_levelNumber	;  levelNumber.47, levelNumber
	decb	;  levelNumber.48
	stb	_levelNumber	;  levelNumber.48, levelNumber
	bra	L96	; 
L95:
;----- asm -----
;  800 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[679]            setBank(nextBank);
;  0 "" 2
;--- end asm ---
	ldb	_nextBank	; , nextBank
	jsr	_setBank	; 
;----- asm -----
;  802 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[680]            levelNumber = levelCount - 1;
;  0 "" 2
;--- end asm ---
	ldb	_levelCount	; , levelCount
	decb	; 
	stb	_levelNumber	; , levelNumber
L96:
;----- asm -----
;  805 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[682]        startLevel();
;  0 "" 2
;--- end asm ---
	jsr	_startLevel	; 
L94:
;----- asm -----
;  808 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[684]    if (Vec_Buttons & 8) {
;  0 "" 2
;--- end asm ---
	ldb	_Vec_Buttons	; , Vec_Buttons
	bitb	#8	; ,
	beq	L98	; 
;----- asm -----
;  810 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[685]        gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
L98:
	rts
	.globl _startBlockFalling
_startBlockFalling:
;----- asm -----
;  327 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[286]    gameState = BlockFalling;
;  0 "" 2
;--- end asm ---
	ldb	#7	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  329 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[287]    blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  331 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[288]    moveBlock(lastBlockDirection);
;  0 "" 2
;--- end asm ---
	ldb	_lastBlockDirection	; , lastBlockDirection
	jsr	_moveBlock	; 
;----- asm -----
;  333 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[289]    changeMusic(fallingMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_fallingMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  335 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[290]    vecx[VECX_MUSIC] = VECX_FALLING_MUSIC;
;  0 "" 2
;--- end asm ---
	clr	[_vecx]	; * vecx
	rts
	.globl _blockMoving
_blockMoving:
	leas	-7,s	; ,,
;----- asm -----
;  817 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[691]    drawField();
;  0 "" 2
;--- end asm ---
	jsr	_drawField	; 
;----- asm -----
;  819 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[692]    drawBlock(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_drawBlock	; 
;----- asm -----
;  821 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[693]    doBlockAnimation();
;  0 "" 2
;--- end asm ---
	jsr	_doBlockAnimation	; 
;----- asm -----
;  823 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[694]    if (!blockAnimating) {
;  0 "" 2
;--- end asm ---
	tst	_blockAnimating	;  blockAnimating
	lbne	L127	; 
;----- asm -----
;  826 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[696]        if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L103	; 
;----- asm -----
;  828 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[697]            testMerge();
;  0 "" 2
;--- end asm ---
	jsr	_testMerge	; 
L103:
;----- asm -----
;  833 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[701]        uint8_t c0 = isField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	2,s	; , c0
;----- asm -----
;  835 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[702]        uint8_t c1 = isField(blockX + 1, blockY);
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
;  837 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[703]        uint8_t c2 = isField(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_isField	; 
	stb	6,s	; , c2
;----- asm -----
;  839 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[704]        char f0 = getField(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	8,s	; , f0
;----- asm -----
;  841 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[705]        char f1 = getField(blockX + 1, blockY);
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
;  843 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[706]        char f2 = getField(blockX, blockY + 1);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	incb	; 
	pshs	b	; 
	ldb	_blockX	; , blockX
	jsr	_getField	; 
	stb	12,s	; , f2
;----- asm -----
;  845 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[707]        if (splitMode) {
;  0 "" 2
;--- end asm ---
	leas	6,s	; ,,
	tst	_splitMode	;  splitMode
	beq	L104	; 
;----- asm -----
;  847 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[708]            if (!c0) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	lbne	L105	; 
;----- asm -----
;  849 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[709]                startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
	jmp	L105	; 
L104:
;----- asm -----
;  853 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[712]            switch (blockOrientation) {
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
;  857 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[714]                if (!c0 || f0 == 'f') {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L109	; 
	ldb	4,s	; , f0
	cmpb	#102	;cmpqi:	; ,
	bne	L110	; 
L109:
;----- asm -----
;  859 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[715]                    startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L110:
;----- asm -----
;  862 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[717]                break;
;  0 "" 2
;--- end asm ---
	bra	L105	; 
L107:
;----- asm -----
;  866 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[719]                if (!c0 || !c2) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L111	; 
	tst	3,s	;  c2
	bne	L112	; 
L111:
;----- asm -----
;  868 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[720]                    startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L112:
;----- asm -----
;  871 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[722]                break;
;  0 "" 2
;--- end asm ---
	bra	L105	; 
L128:
;----- asm -----
;  875 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[724]                if (!c0 || ! c1) {
;  0 "" 2
;--- end asm ---
	tst	1,s	;  c0
	beq	L113	; 
	tst	2,s	;  c1
	bne	L114	; 
L113:
;----- asm -----
;  877 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[725]                    startBlockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_startBlockFalling	; 
L114:
;----- asm -----
;  880 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[727]                break;
;  0 "" 2
;--- end asm ---
L105:
;----- asm -----
;  886 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[732]        if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
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
;  888 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[733]            blockYOfs = 0;
;  0 "" 2
;--- end asm ---
	clr	_blockYOfs	;  blockYOfs
;----- asm -----
;  890 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[734]            gameState = BlockMovingAtEnd;
;  0 "" 2
;--- end asm ---
	ldb	#8	; ,
	stb	_gameState	; , gameState
;----- asm -----
;  892 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[735]            changeMusic(levelEndMusic);
;  0 "" 2
;--- end asm ---
	ldx	#_levelEndMusic	; ,
	jsr	_changeMusic	; 
;----- asm -----
;  894 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[736]            vecx[VECX_MUSIC] = VECX_LEVEL_END_MUSIC;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	[_vecx]	; ,* vecx
	bra	L116	; 
L115:
;----- asm -----
;  898 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[739]            if (gameState != BlockFalling) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#7	;cmpqi:	; ,
	beq	L116	; 
;----- asm -----
;  900 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[740]                gameState = BlockWaiting;
;  0 "" 2
;--- end asm ---
	ldb	#5	; ,
	stb	_gameState	; , gameState
L116:
;----- asm -----
;  906 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[745]        if (splitMode) {
;  0 "" 2
;--- end asm ---
	tst	_splitMode	;  splitMode
	beq	L117	; 
;----- asm -----
;  908 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[746]            if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	lbne	L127	; 
;----- asm -----
;  910 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[747]                swatchSwitch(blockX, blockY);
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
;  914 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[750]            switch (blockOrientation) {
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
;  918 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[752]                if (f0 == 's' || f0 == 'h' || f0 == 'v') {
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
;  920 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[753]                    swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L122:
;----- asm -----
;  923 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[755]                break;
;  0 "" 2
;--- end asm ---
	jmp	L127	; 
L119:
;----- asm -----
;  927 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[757]                if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L123	; 
;----- asm -----
;  929 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[758]                    swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L123:
;----- asm -----
;  932 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[760]                if (f2 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	6,s	; , f2
	cmpb	#115	;cmpqi:	; ,
	bne	L124	; 
;----- asm -----
;  934 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[761]                    swatchSwitch(blockX, blockY + 1);
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
;  937 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[763]                break;
;  0 "" 2
;--- end asm ---
	bra	L127	; 
L129:
;----- asm -----
;  941 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[765]                if (f0 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	4,s	; , f0
	cmpb	#115	;cmpqi:	; ,
	bne	L125	; 
;----- asm -----
;  943 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[766]                    swatchSwitch(blockX, blockY);
;  0 "" 2
;--- end asm ---
	ldb	_blockY	; , blockY
	stb	,-s	; ,
	ldb	_blockX	; , blockX
	jsr	_swatchSwitch	; 
	leas	1,s	; ,,
L125:
;----- asm -----
;  946 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[768]                if (f1 == 's') {
;  0 "" 2
;--- end asm ---
	ldb	5,s	; , f1
	cmpb	#115	;cmpqi:	; ,
	bne	L126	; 
;----- asm -----
;  948 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[769]                    swatchSwitch(blockX + 1, blockY);
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
;  951 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[771]                break;
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
;  1267 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[970]    picAvailable = 0;
;  0 "" 2
;--- end asm ---
	clr	_picAvailable	;  picAvailable
;----- asm -----
;  1269 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[971]    sendPicCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendPicCommand	; 
;----- asm -----
;  1271 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[972]    sendPicCommand(CMD_VERSION, 0);
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendPicCommand	; 
;----- asm -----
;  1273 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[973]    if (sendPicCommand(CMD_VERSION, 0) == 4) {
;  0 "" 2
;--- end asm ---
	clr	,-s	; 
	ldb	#1	; ,
	jsr	_sendPicCommand	; 
	leas	3,s	; ,,
	cmpb	#4	;cmpqi:	;  D.2521,
	bne	L131	; 
;----- asm -----
;  1275 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[974]        picAvailable = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	_picAvailable	; , picAvailable
L131:
;----- asm -----
;  1281 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[979]    setBank(0);
;  0 "" 2
;--- end asm ---
	clrb	; 
	jsr	_setBank	; 
;----- asm -----
;  1285 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[982]    vecx[VECX_MUSIC] = VECX_TITLE_MUSIC;
;  0 "" 2
;--- end asm ---
	ldb	#4	; ,
	stb	[_vecx]	; ,* vecx
;----- asm -----
;  1289 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[985]    epot0 = 1;
;  0 "" 2
;--- end asm ---
	ldb	#1	; ,
	stb	-14305	; ,
;----- asm -----
;  1291 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[986]    epot1 = 3;
;  0 "" 2
;--- end asm ---
	ldb	#3	; ,
	stb	-14304	; ,
;----- asm -----
;  1293 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[987]    epot2 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14303	; 
;----- asm -----
;  1295 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[988]    epot3 = 0;
;  0 "" 2
;--- end asm ---
	clr	-14302	; 
;----- asm -----
;  1298 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[990]    gameState = MainMenu;
;  0 "" 2
;--- end asm ---
	clr	_gameState	;  gameState
;----- asm -----
;  1300 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[991]    musicInit();
;  0 "" 2
;--- end asm ---
	jsr	_musicInit	; 
;----- asm -----
;  1303 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[993]    while (1) {
;  0 "" 2
;--- end asm ---
L146:
;----- asm -----
;  1306 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[995]        frwait();
;  0 "" 2
;  97 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Wait_Recal; BIOS call
;  0 "" 2
;  1309 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[997]        switch (gameState) {
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
;  1313 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[999]            mainMenu();
;  0 "" 2
;--- end asm ---
	jsr	_mainMenu	; 
;----- asm -----
;  1315 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1000]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1317 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1001]            break;
;  0 "" 2
;--- end asm ---
	jmp	L132	; 
L136:
;----- asm -----
;  1321 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1003]            clearMenu();
;  0 "" 2
;--- end asm ---
	jsr	_clearMenu	; 
;----- asm -----
;  1323 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1004]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1325 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1005]            break;
;  0 "" 2
;--- end asm ---
	jmp	L132	; 
L134:
;----- asm -----
;  1329 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1007]            arcadeMenu();
;  0 "" 2
;--- end asm ---
	jsr	_arcadeMenu	; 
;----- asm -----
;  1331 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1008]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1333 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1009]            break;
;  0 "" 2
;--- end asm ---
	jmp	L132	; 
L135:
;----- asm -----
;  1337 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1011]            arcadeEnd();
;  0 "" 2
;--- end asm ---
	jsr	_arcadeEnd	; 
;----- asm -----
;  1339 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1012]            musicPlay();
;  0 "" 2
;--- end asm ---
	jsr	_musicPlay	; 
;----- asm -----
;  1341 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1013]            break;
;  0 "" 2
;--- end asm ---
	jmp	L132	; 
L137:
;----- asm -----
;  1345 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1015]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1347 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1016]            blockMovingToStart();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingToStart	; 
;----- asm -----
;  1349 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1017]            break;
;  0 "" 2
;--- end asm ---
	jmp	L132	; 
L138:
;----- asm -----
;  1353 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1019]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1355 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1020]            blockWaiting();
;  0 "" 2
;--- end asm ---
	jsr	_blockWaiting	; 
;----- asm -----
;  1357 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1021]            break;
;  0 "" 2
;--- end asm ---
	jmp	L132	; 
L139:
;----- asm -----
;  1361 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1023]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1363 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1024]            blockMoving();
;  0 "" 2
;--- end asm ---
	jsr	_blockMoving	; 
;----- asm -----
;  1365 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1025]            break;
;  0 "" 2
;--- end asm ---
	bra	L132	; 
L140:
;----- asm -----
;  1369 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1027]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1371 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1028]            blockFalling();
;  0 "" 2
;--- end asm ---
	jsr	_blockFalling	; 
;----- asm -----
;  1373 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1029]            break;
;  0 "" 2
;--- end asm ---
	bra	L132	; 
L141:
;----- asm -----
;  1377 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1031]            showInfo();
;  0 "" 2
;--- end asm ---
	jsr	_showInfo	; 
;----- asm -----
;  1379 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1032]            blockMovingAtEnd();
;  0 "" 2
;--- end asm ---
	jsr	_blockMovingAtEnd	; 
;----- asm -----
;  1381 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1033]            break;
;  0 "" 2
;--- end asm ---
L132:
;----- asm -----
;  1386 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1037]        if (gameState > ClearMenu) {
;  0 "" 2
;--- end asm ---
	ldb	_gameState	; , gameState
	cmpb	#3	;cmpqi:	; ,
	bls	L143	; 
;----- asm -----
;  1388 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1038]            DP_to_C8();
;  0 "" 2
;  316 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___DP_to_C8; BIOS call
;  0 "" 2
;  1390 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1039]            replay(currentMusic);
;  0 "" 2
;--- end asm ---
	ldx	_currentMusic	; , currentMusic
	stx	2,s	; , u
;----- asm -----
;  2917 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	ldu 2,s	;  u
	jsr ___Init_Music_chk; BIOS call
;  0 "" 2
;  1392 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1040]            DP_to_D0();
;  0 "" 2
;  300 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___DP_to_D0; BIOS call
;  0 "" 2
;  1394 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1041]            reqout();
;  0 "" 2
;  2880 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
	jsr ___Do_Sound; BIOS call
;  0 "" 2
;--- end asm ---
L143:
;----- asm -----
;  1399 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1045]        if (arcadeMode) {
;  0 "" 2
;--- end asm ---
	tst	_arcadeMode	;  arcadeMode
	lbeq	L146	; 
;----- asm -----
;  1401 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1046]            frames++;
;  0 "" 2
;--- end asm ---
	ldd	_frames	;  frames.96, frames
	addd	#1	;  frames.96,
	std	_frames	;  frames.96, frames
;----- asm -----
;  1403 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1047]            if (frames == 50) {
;  0 "" 2
;--- end asm ---
	cmpd	#50	;cmphi:	;  frames.96,
	lbne	L146	; 
;----- asm -----
;  1405 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1048]                frames = 0;
;  0 "" 2
;--- end asm ---
	ldd	#0	; ,
	std	_frames	; , frames
;----- asm -----
;  1407 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1049]                if (moveCount < 999) {
;  0 "" 2
;--- end asm ---
	ldx	_moveCount	;  moveCount.97, moveCount
	cmpx	#998	;cmphi:	;  moveCount.97,
	lbhi	L146	; 
;----- asm -----
;  1409 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1050]                    moveCount++;
;  0 "" 2
;--- end asm ---
	leax	1,x	; ,, moveCount.97
	stx	_moveCount	; , moveCount
;----- asm -----
;  1411 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
	; #ENR#[1051]                    updateInfoText();
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
