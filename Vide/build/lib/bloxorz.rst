                              1 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mint8
                              5 	.module	bloxorz.enr.c
                              6 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ; 	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.2.
                              8 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ;  -fno-time-report -IC:\data\vide\C\PeerC\vectrex\include -D__RUM_INLINE=1
                             12 ;  -DOMMIT_FRAMEPOINTER=1 C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c
                             13 ;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             14 ;  -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
                             15 ;  -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
                             16 ;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             17 ;  -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
                             18 ;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             19 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             20 ;  -fpcc-struct-return -fpeephole -fsched-interblock -fsched-spec
                             21 ;  -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
                             22 ;  -fsplit-wide-types -ftoplevel-reorder -ftrapping-math -ftree-ccp
                             23 ;  -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             24 ;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             25 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             26 ;  -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
                             27 ;  -ftree-ter -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
                             28 ;  -fzero-initialized-in-bss
                             29 ;  Compiler executable checksum: c38122f302f7072aed6a431d27122065
                             30 	.area .text
                             31 	.globl _runtimeError
   35B6                      32 _runtimeError:
   35B6 34 60         [ 7]   33 	pshs	y,u	; 
   35B8 32 7C         [ 5]   34 	leas	-4,s	; ,,
   35BA 31 84         [ 4]   35 	leay	,x	;  msg, msg
                             36 ;----- asm -----
                             37 ;  243 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                             38 	; #ENR#[227]    while (1) {
                             39 ;  0 "" 2
                             40 ;--- end asm ---
   35BC                      41 L2:
                             42 ;----- asm -----
                             43 ;  245 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                             44 	; #ENR#[228]        frwait();
                             45 ;  0 "" 2
                             46 ;  97 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   35BC BD F1 92      [ 8]   47 	jsr ___Wait_Recal; BIOS call
                             48 ;  0 "" 2
                             49 ;  247 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                             50 	; #ENR#[229]        Intensity_a(0x5f);
                             51 ;  0 "" 2
                             52 ;--- end asm ---
   35BF C6 5F         [ 2]   53 	ldb	#95	; ,
   35C1 E7 63         [ 5]   54 	stb	3,s	; , a
                             55 ;----- asm -----
                             56 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   35C3 A6 63         [ 5]   57 	lda 3,s	;  a
   35C5 BD F2 AB      [ 8]   58 	jsr ___Intensity_a; BIOS call
                             59 ;  0 "" 2
                             60 ;  249 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                             61 	; #ENR#[230]        Vec_Text_Width = 90;
                             62 ;  0 "" 2
                             63 ;--- end asm ---
   35C8 C6 5A         [ 2]   64 	ldb	#90	; ,
   35CA F7 C8 2B      [ 5]   65 	stb	_Vec_Text_Width	; , Vec_Text_Width
                             66 ;----- asm -----
                             67 ;  251 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                             68 	; #ENR#[231]        Print_Str_d(-10, -110, msg);
                             69 ;  0 "" 2
                             70 ;--- end asm ---
   35CD C6 F6         [ 2]   71 	ldb	#-10	; ,
   35CF E7 63         [ 5]   72 	stb	3,s	; , a
   35D1 C6 92         [ 2]   73 	ldb	#-110	; ,
   35D3 E7 62         [ 5]   74 	stb	2,s	; , b
   35D5 10 AF E4      [ 6]   75 	sty	,s	;  msg, u
                             76 ;----- asm -----
                             77 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   35D8 A6 63         [ 5]   78 	lda 3,s	;  a
   35DA E6 62         [ 5]   79 	ldb 2,s	;  b
   35DC EE E4         [ 5]   80 	ldu ,s	;  u
   35DE BD F3 7A      [ 8]   81 	jsr ___Print_Str_d; BIOS call
                             82 ;  0 "" 2
                             83 ;--- end asm ---
   35E1 7E 35 BC      [ 4]   84 	jmp	L2	; 
                             85 	.globl _itoa
   35E4                      86 _itoa:
   35E4 34 60         [ 7]   87 	pshs	y,u	; 
   35E6 32 71         [ 5]   88 	leas	-15,s	; ,,
                             89 ;----- asm -----
                             90 ;  274 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                             91 	; #ENR#[250]    uint16_t muls[] = { 100, 10, 1 };
                             92 ;  0 "" 2
                             93 ;--- end asm ---
   35E8 CC 00 64      [ 3]   94 	ldd	#100	; ,
   35EB ED 69         [ 6]   95 	std	9,s	; , muls
   35ED CC 00 0A      [ 3]   96 	ldd	#10	; ,
   35F0 ED 6B         [ 6]   97 	std	11,s	; , muls
   35F2 CC 00 01      [ 3]   98 	ldd	#1	; ,
   35F5 ED 6D         [ 6]   99 	std	13,s	; , muls
                            100 ;----- asm -----
                            101 ;  276 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            102 	; #ENR#[251]    if (number > 999) number = 999;
                            103 ;  0 "" 2
                            104 ;--- end asm ---
   35F7 31 84         [ 4]  105 	leay	,x	;  number.131, number
   35F9 8C 03 E7      [ 4]  106 	cmpx	#999	;cmphi:	;  number.131,
   35FC 23 04         [ 3]  107 	bls	L5	; 
   35FE 10 8E 03 E7   [ 4]  108 	ldy	#999	;  number.131,
   3602                     109 L5:
                            110 ;----- asm -----
                            111 ;  278 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            112 	; #ENR#[252]    for (uint8_t i = 0; i < 3; i++) {
                            113 ;  0 "" 2
                            114 ;--- end asm ---
   3602 30 69         [ 5]  115 	leax	9,s	; ,,
   3604 AF 65         [ 6]  116 	stx	5,s	; , ivtmp.127
   3606 EC E8 15      [ 6]  117 	ldd	21,s	; , text
   3609 ED 67         [ 6]  118 	std	7,s	; , ivtmp.129
   360B                     119 L9:
                            120 ;----- asm -----
                            121 ;  280 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            122 	; #ENR#[253]        uint8_t d = 0;
                            123 ;  0 "" 2
                            124 ;  282 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            125 	; #ENR#[254]        while (number >= muls[i]) {
                            126 ;  0 "" 2
                            127 ;--- end asm ---
   360B AE 65         [ 6]  128 	ldx	5,s	; , ivtmp.127
   360D AE 84         [ 5]  129 	ldx	,x	; , muls
   360F AF E4         [ 5]  130 	stx	,s	; , D.2303
   3611 34 20         [ 6]  131 	pshs	y	;cmphi: R:y with R:x	;  number.131,
   3613 AC E1         [ 9]  132 	cmpx	,s++	;cmphi:	; 
   3615 22 25         [ 3]  133 	bhi	L6	; 
   3617 1F 10         [ 6]  134 	tfr	x,d	; ,
   3619 40            [ 2]  135 	nega
   361A 50            [ 2]  136 	negb
   361B 82 00         [ 2]  137 	sbca	#0
   361D ED 63         [ 6]  138 	std	3,s	; , ivtmp.119
   361F 1F 20         [ 6]  139 	tfr	y,d	;  number.131,
   3621 A3 E4         [ 6]  140 	subd	,s	;subhi: R:d -= ,s	; , D.2303
   3623 1F 02         [ 6]  141 	tfr	d,y	; , number.131
   3625 6F 62         [ 7]  142 	clr	2,s	;  d
   3627                     143 L8:
                            144 ;----- asm -----
                            145 ;  284 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            146 	; #ENR#[255]            d++;
                            147 ;  0 "" 2
                            148 ;--- end asm ---
   3627 6C 62         [ 7]  149 	inc	2,s	;  d
                            150 ;----- asm -----
                            151 ;  286 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            152 	; #ENR#[256]            number -= muls[i];
                            153 ;  0 "" 2
                            154 ;--- end asm ---
   3629 EC 63         [ 6]  155 	ldd	3,s	; , ivtmp.119
   362B 33 AB         [ 8]  156 	leau	d,y	;  number.130,, number.131
   362D EC E4         [ 5]  157 	ldd	,s	; , D.2303
   362F 30 CB         [ 8]  158 	leax	d,u	;  tmp85,, number.130
   3631 34 10         [ 6]  159 	pshs	x	;cmphi: R:x with R:d	;  tmp85,
   3633 10 A3 E1      [10]  160 	cmpd	,s++	;cmphi:	; 
   3636 22 06         [ 3]  161 	bhi	L7	; 
   3638 31 C4         [ 4]  162 	leay	,u	;  number.131, number.130
   363A 20 EB         [ 3]  163 	bra	L8	; 
   363C                     164 L6:
   363C 6F 62         [ 7]  165 	clr	2,s	;  d
   363E                     166 L7:
                            167 ;----- asm -----
                            168 ;  289 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            169 	; #ENR#[258]        text[i] = d + '0';
                            170 ;  0 "" 2
                            171 ;--- end asm ---
   363E E6 62         [ 5]  172 	ldb	2,s	; , d
   3640 CB 30         [ 2]  173 	addb	#48	; ,
   3642 AE 67         [ 6]  174 	ldx	7,s	; , ivtmp.129
   3644 30 01         [ 5]  175 	leax	1,x	; ,,
   3646 AF 67         [ 6]  176 	stx	7,s	; , ivtmp.129
   3648 30 1F         [ 5]  177 	leax	-1,x	; ,,
   364A E7 80         [ 6]  178 	stb	,x+	; ,
   364C AE 65         [ 6]  179 	ldx	5,s	; , ivtmp.127
   364E 30 02         [ 5]  180 	leax	2,x	; ,,
   3650 AF 65         [ 6]  181 	stx	5,s	; , ivtmp.127
   3652 1F 40         [ 6]  182 	tfr	s,d	; ,
   3654 C3 00 0F      [ 4]  183 	addd	#15	; ,
   3657 34 06         [ 7]  184 	pshs	d	;cmphi: R:d with R:x	; ,
   3659 AC E1         [ 9]  185 	cmpx	,s++	;cmphi:	; 
   365B 10 26 FF AC   [ 6]  186 	lbne	L9	; 
   365F 32 6F         [ 5]  187 	leas	15,s	; ,,
   3661 35 E0         [ 8]  188 	puls	y,u,pc	; 
                            189 	.globl _changeMusic
   3663                     190 _changeMusic:
                            191 ;----- asm -----
                            192 ;  306 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            193 	; #ENR#[271]    tstat = 1;
                            194 ;  0 "" 2
                            195 ;--- end asm ---
   3663 C6 01         [ 2]  196 	ldb	#1	; ,
   3665 F7 C8 56      [ 5]  197 	stb	-14250	; ,
                            198 ;----- asm -----
                            199 ;  308 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            200 	; #ENR#[272]    currentMusic = music;
                            201 ;  0 "" 2
                            202 ;--- end asm ---
   3668 BF C8 80      [ 6]  203 	stx	_currentMusic	;  music, currentMusic
   366B 39            [ 5]  204 	rts
                            205 	.globl _drawField
   366C                     206 _drawField:
                            207 ;----- asm -----
                            208 ;  422 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   366C 86 35         [ 2]  209 	LDA     #0x35
                            210 ;  0 "" 2
                            211 ;  423 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   366E 97 01         [ 4]  212 	STA     *0xd001     ;Store intensity in D/A
                            213 ;  0 "" 2
                            214 ;  424 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3670 CC 05 04      [ 3]  215 	LDD     #0x0504          ;mux disabled channel 2
                            216 ;  0 "" 2
                            217 ;  425 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3673 97 00         [ 4]  218 	STA     *0xd000
                            219 ;  0 "" 2
                            220 ;  426 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3675 D7 00         [ 4]  221 	STB     *0xd000     ;mux enabled channel 2
                            222 ;  0 "" 2
                            223 ;  427 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3677 D7 00         [ 4]  224 	STB     *0xd000     ;do it again just because
                            225 ;  0 "" 2
                            226 ;  428 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3679 C6 01         [ 2]  227 	LDB     #0x01
                            228 ;  0 "" 2
                            229 ;  429 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   367B D7 00         [ 4]  230 	STB     *0xd000     ;turn off mux
                            231 ;  0 "" 2
                            232 ;  434 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   367D 34 40         [ 6]  233 		pshs u
                            234 ;  0 "" 2
                            235 ;  435 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   367F 8E C9 32      [ 3]  236 		ldx #_lineYX_yx_s_dy_dx
                            237 ;  0 "" 2
                            238 ;  436 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3682 CE 98 CE      [ 3]  239 		ldu #0x98ce
                            240 ;  0 "" 2
                            241 ;  437 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3685 EC 84         [ 5]  242 		ldd ,x
                            243 ;  0 "" 2
                            244 ;  439 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3687                     245 	drawFieldLoop1:
                            246 ;  0 "" 2
                            247 ;  454 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3687 12            [ 2]  248 		    nop 
                            249 ;  0 "" 2
                            250 ;  455 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3688 12            [ 2]  251 		    nop 
                            252 ;  0 "" 2
                            253 ;  456 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3689 12            [ 2]  254 		    nop 
                            255 ;  0 "" 2
                            256 ;  457 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   368A 12            [ 2]  257 		    nop 
                            258 ;  0 "" 2
                            259 ;  461 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   368B 97 01         [ 4]  260 	                    STA      *0xd001                  ;Store Y in D/A register 
                            261 ;  0 "" 2
                            262 ;  462 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   368D 4F            [ 2]  263 	                    CLRA     
                            264 ;  0 "" 2
                            265 ;  463 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   368E 97 00         [ 4]  266 	                    STA      *0xd000                  ;Enable mux 
                            267 ;  0 "" 2
                            268 ;  464 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3690 4C            [ 2]  269 	                    INCA 
                            270 ;  0 "" 2
                            271 ;  466 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3691 DF 0B         [ 5]  272 	                    STU      *0xd00B                    ; 
                            273 ;  0 "" 2
                            274 ;  467 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3693 DD 00         [ 5]  275 	                    STD      *0xd000                  ;Store X in D/A register 
                            276 ;  0 "" 2
                            277 ;  468 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3695 4A            [ 2]  278 	                    DECA 
                            279 ;  0 "" 2
                            280 ;  469 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3696 97 05         [ 4]  281 	                    STA      *0xd005               ;enable timer 
                            282 ;  0 "" 2
                            283 ;  472 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3698 30 02         [ 5]  284 		leax 2,x ; 5
                            285 ;  0 "" 2
                            286 ;  473 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   369A A6 80         [ 6]  287 		lda ,x+ ; 6
                            288 ;  0 "" 2
                            289 ;  474 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   369C 2B 41         [ 3]  290 	bmi scale_negative_7f; 3 - negative means, the next line is in offset to this line, not from 0,0
                            291 ;  0 "" 2
                            292 ;  475 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   369E 97 04         [ 4]  293 		sta *0xd004 ; 4
                            294 ;  0 "" 2
                            295 ;  476 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36A0 CE FF 98      [ 3]  296 		ldu #0xff98 ; 3
                            297 ;  0 "" 2
                            298 ;  477 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36A3 EC 84         [ 5]  299 		ldd ,x ; 5
                            300 ;  0 "" 2
                            301 ;  484 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36A5 34 7E         [11]  302 		    pshs u,x,y,d,dp    ; 14
                            303 ;  0 "" 2
                            304 ;  485 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36A7 35 7E         [11]  305 		    puls u,x,y,d,dp    ; 14 
                            306 ;  0 "" 2
                            307 ;  486 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36A9 34 7E         [11]  308 		    pshs u,x,y,d,dp    ; 14
                            309 ;  0 "" 2
                            310 ;  487 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36AB 35 7E         [11]  311 		    puls u,x,y,d,dp    ; 14 
                            312 ;  0 "" 2
                            313 ;  488 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36AD 34 7E         [11]  314 		    pshs u,x,y,d,dp    ; 14
                            315 ;  0 "" 2
                            316 ;  489 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36AF 35 7E         [11]  317 		    puls u,x,y,d,dp    ; 14 
                            318 ;  0 "" 2
                            319 ;  490 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36B1 34 40         [ 6]  320 		    pshs u    ; 7 
                            321 ;  0 "" 2
                            322 ;  491 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36B3 35 40         [ 6]  323 		    puls u    ; 7 
                            324 ;  0 "" 2
                            325 ;  495 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36B5 12            [ 2]  326 		    nop 
                            327 ;  0 "" 2
                            328 ;  496 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36B6 12            [ 2]  329 		    nop 
                            330 ;  0 "" 2
                            331 ;  499 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36B7 97 01         [ 4]  332 	                    STA      *0xd001                  ;Store Y in D/A register 
                            333 ;  0 "" 2
                            334 ;  500 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36B9 4F            [ 2]  335 	                    CLRA     
                            336 ;  0 "" 2
                            337 ;  501 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36BA 97 00         [ 4]  338 	                    STA      *0xd000                  ;Enable mux 
                            339 ;  0 "" 2
                            340 ;  502 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36BC 4C            [ 2]  341 	                    INCA 
                            342 ;  0 "" 2
                            343 ;  503 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36BD DD 00         [ 5]  344 	                    STD      *0xd000                  ;Store X in D/A register 
                            345 ;  0 "" 2
                            346 ;  504 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36BF 4A            [ 2]  347 	                    DECA 
                            348 ;  0 "" 2
                            349 ;  505 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36C0 DF 0A         [ 5]  350 	                    stu      *0xd00a               ;unclear shift regigster 
                            351 ;  0 "" 2
                            352 ;  506 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36C2 97 05         [ 4]  353 	                    STA      *0xd005               ;enable timer 
                            354 ;  0 "" 2
                            355 ;  508 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36C4 30 02         [ 5]  356 	leax 2,x
                            357 ;  0 "" 2
                            358 ;  509 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36C6 C6 7F         [ 2]  359 		ldb #0x7f
                            360 ;  0 "" 2
                            361 ;  510 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36C8 D7 04         [ 4]  362 		stb *0xd004
                            363 ;  0 "" 2
                            364 ;  511 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36CA CE 98 CE      [ 3]  365 		ldu #0x98ce
                            366 ;  0 "" 2
                            367 ;  512 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36CD CC 40 CC      [ 3]  368 		LDd     #0x40CC
                            369 ;  0 "" 2
                            370 ;  514 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36D0 95 0D         [ 4]  371 	LF33D2_1:           BITA     *0xD00D               ;  
                            372 ;  0 "" 2
                            373 ;  515 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36D2 27 FC         [ 3]  374 	                    BEQ      LF33D2_1                        ;  
                            375 ;  0 "" 2
                            376 ;  516 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36D4 4F            [ 2]  377 	                    clra 
                            378 ;  0 "" 2
                            379 ;  517 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36D5 97 0A         [ 4]  380 	                    sta      *0xd00a               ;clear shift regigster 
                            381 ;  0 "" 2
                            382 ;  520 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36D7 D7 0C         [ 4]  383 		STB *0xd00C ; reset 0
                            384 ;  0 "" 2
                            385 ;  521 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36D9 EC 84         [ 5]  386 		ldd ,x
                            387 ;  0 "" 2
                            388 ;  522 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36DB 26 AA         [ 3]  389 		bne drawFieldLoop1
                            390 ;  0 "" 2
                            391 ;  523 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36DD 35 C0         [ 7]  392 		puls u, pc
                            393 ;  0 "" 2
                            394 ;  530 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36DF                     395 	scale_negative_7f:
                            396 ;  0 "" 2
                            397 ;  531 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36DF 84 7F         [ 2]  398 	anda #0x7f ; 2
                            399 ;  0 "" 2
                            400 ;  532 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36E1 97 04         [ 4]  401 		sta *0xd004 ; 4
                            402 ;  0 "" 2
                            403 ;  533 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36E3 CE FF 98      [ 3]  404 		ldu #0xff98 ; 4
                            405 ;  0 "" 2
                            406 ;  534 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36E6 EC 84         [ 5]  407 		ldd ,x ; 5
                            408 ;  0 "" 2
                            409 ;  537 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36E8 34 7E         [11]  410 		    pshs u,x,y,d,dp    ; 14
                            411 ;  0 "" 2
                            412 ;  538 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36EA 35 7E         [11]  413 		    puls u,x,y,d,dp    ; 14 
                            414 ;  0 "" 2
                            415 ;  539 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36EC 34 7E         [11]  416 		    pshs u,x,y,d,dp    ; 14
                            417 ;  0 "" 2
                            418 ;  540 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36EE 35 7E         [11]  419 		    puls u,x,y,d,dp    ; 14 
                            420 ;  0 "" 2
                            421 ;  541 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36F0 34 7E         [11]  422 		    pshs u,x,y,d,dp    ; 14
                            423 ;  0 "" 2
                            424 ;  542 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36F2 35 7E         [11]  425 		    puls u,x,y,d,dp    ; 14 
                            426 ;  0 "" 2
                            427 ;  543 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36F4 1F 88         [ 6]  428 		    tfr a,a    ; 6 
                            429 ;  0 "" 2
                            430 ;  544 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36F6 1F 88         [ 6]  431 		    tfr a,a    ; 6 
                            432 ;  0 "" 2
                            433 ;  545 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36F8 21 E5         [ 3]  434 		    brn   scale_negative_7f ; 3 
                            435 ;  0 "" 2
                            436 ;  550 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36FA                     437 		not_full_cont:
                            438 ;  0 "" 2
                            439 ;  551 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36FA 97 01         [ 4]  440 	                    STA      *0xd001                  ;Store Y in D/A register 
                            441 ;  0 "" 2
                            442 ;  552 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36FC 4F            [ 2]  443 	                    CLRA     
                            444 ;  0 "" 2
                            445 ;  553 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36FD 97 00         [ 4]  446 	                    STA      *0xd000                  ;Enable mux 
                            447 ;  0 "" 2
                            448 ;  554 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36FF 4C            [ 2]  449 	                    INCA 
                            450 ;  0 "" 2
                            451 ;  555 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3700 DD 00         [ 5]  452 	                    STD      *0xd000                  ;Store X in D/A register 
                            453 ;  0 "" 2
                            454 ;  556 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3702 4A            [ 2]  455 	                    DECA 
                            456 ;  0 "" 2
                            457 ;  557 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3703 DF 0A         [ 5]  458 	                    stu      *0xd00a               ;unclear shift regigster 
                            459 ;  0 "" 2
                            460 ;  558 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3705 97 05         [ 4]  461 	                    STA      *0xd005               ;enable timer 
                            462 ;  0 "" 2
                            463 ;  560 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3707                     464 		not_full_cont_after:
                            465 ;  0 "" 2
                            466 ;  561 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3707 30 02         [ 5]  467 	leax 2,x
                            468 ;  0 "" 2
                            469 ;  562 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3709 CE 98 CE      [ 3]  470 		ldu #0x98ce
                            471 ;  0 "" 2
                            472 ;  565 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   370C 12            [ 2]  473 	nop
                            474 ;  0 "" 2
                            475 ;  566 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   370D 21 02         [ 3]  476 	brn LF33D2_3
                            477 ;  0 "" 2
                            478 ;  569 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   370F C6 40         [ 2]  479 	                    LDb      #0x40                         ;  
                            480 ;  0 "" 2
                            481 ;  570 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3711 D5 0D         [ 4]  482 	LF33D2_3:           BITb     *0xD00D               ;  
                            483 ;  0 "" 2
                            484 ;  571 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3713 27 FC         [ 3]  485 	                    BEQ      LF33D2_3                        ;  
                            486 ;  0 "" 2
                            487 ;  572 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3715 97 0A         [ 4]  488 	                    sta      *0xd00a               ;clear shift regigster, a is still zero 
                            489 ;  0 "" 2
                            490 ;  577 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3717 EC 84         [ 5]  491 		ldd ,x
                            492 ;  0 "" 2
                            493 ;  581 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3719 97 01         [ 4]  494 	                    STA      *0xd001                  ;Store Y in D/A register 
                            495 ;  0 "" 2
                            496 ;  582 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   371B 4F            [ 2]  497 	                    CLRA     
                            498 ;  0 "" 2
                            499 ;  583 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   371C 97 00         [ 4]  500 	                    STA      *0xd000                  ;Enable mux 
                            501 ;  0 "" 2
                            502 ;  584 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   371E 4C            [ 2]  503 	                    INCA 
                            504 ;  0 "" 2
                            505 ;  585 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   371F DD 00         [ 5]  506 	                    STD      *0xd000                  ;Store X in D/A register 
                            507 ;  0 "" 2
                            508 ;  586 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3721 4A            [ 2]  509 	                    DECA 
                            510 ;  0 "" 2
                            511 ;  587 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3722 97 05         [ 4]  512 	                    STA      *0xd005               ;enable timer 
                            513 ;  0 "" 2
                            514 ;  590 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3724 30 02         [ 5]  515 		leax 2,x ; 5
                            516 ;  0 "" 2
                            517 ;  591 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3726 A6 80         [ 6]  518 		lda ,x+ ; 6
                            519 ;  0 "" 2
                            520 ;  592 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3728 2B 37         [ 3]  521 	bmi scale_negative; next is also no full move
                            522 ;  0 "" 2
                            523 ;  593 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   372A 97 04         [ 4]  524 		sta *0xd004 ; 4
                            525 ;  0 "" 2
                            526 ;  594 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   372C CE FF 98      [ 3]  527 		ldu #0xff98 ; 4
                            528 ;  0 "" 2
                            529 ;  600 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   372F 86 40         [ 2]  530 	                    LDa      #0x40                         ;  
                            531 ;  0 "" 2
                            532 ;  601 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3731 95 0D         [ 4]  533 	LF33D2_4:           BITa     *0xD00D               ;  
                            534 ;  0 "" 2
                            535 ;  602 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3733 27 FC         [ 3]  536 	                    BEQ      LF33D2_4                        ;  
                            537 ;  0 "" 2
                            538 ;  606 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3735 EC 84         [ 5]  539 		ldd ,x ; 4
                            540 ;  0 "" 2
                            541 ;  607 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3737 97 01         [ 4]  542 	                    STA      *0xd001                  ;Store Y in D/A register 
                            543 ;  0 "" 2
                            544 ;  608 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3739 4F            [ 2]  545 	                    CLRA     
                            546 ;  0 "" 2
                            547 ;  609 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   373A 97 00         [ 4]  548 	                    STA      *0xd000                  ;Enable mux 
                            549 ;  0 "" 2
                            550 ;  610 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   373C 4C            [ 2]  551 	                    INCA 
                            552 ;  0 "" 2
                            553 ;  611 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   373D DD 00         [ 5]  554 	                    STD      *0xd000                  ;Store X in D/A register 
                            555 ;  0 "" 2
                            556 ;  612 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   373F 4A            [ 2]  557 	                    DECA 
                            558 ;  0 "" 2
                            559 ;  613 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3740 DF 0A         [ 5]  560 	                    stu      *0xd00a               ;unclear shift regigster 
                            561 ;  0 "" 2
                            562 ;  614 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3742 97 05         [ 4]  563 	                    STA      *0xd005               ;enable timer 
                            564 ;  0 "" 2
                            565 ;  616 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3744 30 02         [ 5]  566 	leax 2,x
                            567 ;  0 "" 2
                            568 ;  617 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3746 C6 7F         [ 2]  569 		ldb #0x7f
                            570 ;  0 "" 2
                            571 ;  619 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3748 D7 04         [ 4]  572 		stb *0xd004
                            573 ;  0 "" 2
                            574 ;  620 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   374A CE 98 CE      [ 3]  575 		ldu #0x98ce
                            576 ;  0 "" 2
                            577 ;  621 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   374D CC 40 CC      [ 3]  578 		LDd #0x40CC
                            579 ;  0 "" 2
                            580 ;  622 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3750 95 0D         [ 4]  581 	LF33D2_5:           BITA     *0xD00D               ;  
                            582 ;  0 "" 2
                            583 ;  623 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3752 27 FC         [ 3]  584 	                    BEQ      LF33D2_5                        ;  
                            585 ;  0 "" 2
                            586 ;  624 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3754 4F            [ 2]  587 	                    clra 
                            588 ;  0 "" 2
                            589 ;  625 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3755 97 0A         [ 4]  590 	                    sta      *0xd00a               ;clear shift regigster 
                            591 ;  0 "" 2
                            592 ;  628 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3757 D7 0C         [ 4]  593 		STB *0xd00C ; reset 0
                            594 ;  0 "" 2
                            595 ;  629 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3759 EC 84         [ 5]  596 		ldd ,x
                            597 ;  0 "" 2
                            598 ;  630 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   375B 10 26 FF 28   [ 6]  599 		lbne drawFieldLoop1
                            600 ;  0 "" 2
                            601 ;  631 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   375F 35 C0         [ 7]  602 		puls u, pc
                            603 ;  0 "" 2
                            604 ;  634 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3761                     605 	scale_negative:
                            606 ;  0 "" 2
                            607 ;  635 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3761 84 7F         [ 2]  608 	anda #0x7f ; 2
                            609 ;  0 "" 2
                            610 ;  636 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3763 97 04         [ 4]  611 		sta *0xd004 ; 4
                            612 ;  0 "" 2
                            613 ;  637 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3765 CE FF 98      [ 3]  614 		ldu #0xff98 ; 4
                            615 ;  0 "" 2
                            616 ;  640 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3768 86 40         [ 2]  617 	                    LDA      #0x40                         ;  
                            618 ;  0 "" 2
                            619 ;  641 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   376A 95 0D         [ 4]  620 	LF33D2_6:           BITA     *0xD00D               ;  
                            621 ;  0 "" 2
                            622 ;  642 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   376C 27 FC         [ 3]  623 	                    BEQ      LF33D2_6                        ;  
                            624 ;  0 "" 2
                            625 ;  643 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   376E EC 84         [ 5]  626 		ldd ,x ; 5
                            627 ;  0 "" 2
                            628 ;  646 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3770 97 01         [ 4]  629 	                    STA      *0xd001                  ;Store Y in D/A register 
                            630 ;  0 "" 2
                            631 ;  647 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3772 4F            [ 2]  632 	                    CLRA     
                            633 ;  0 "" 2
                            634 ;  648 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3773 97 00         [ 4]  635 	                    STA      *0xd000                  ;Enable mux 
                            636 ;  0 "" 2
                            637 ;  649 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3775 4C            [ 2]  638 	                    INCA 
                            639 ;  0 "" 2
                            640 ;  650 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3776 DD 00         [ 5]  641 	                    STD      *0xd000                  ;Store X in D/A register 
                            642 ;  0 "" 2
                            643 ;  651 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3778 4A            [ 2]  644 	                    DECA 
                            645 ;  0 "" 2
                            646 ;  652 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3779 DF 0A         [ 5]  647 	                    stu      *0xd00a               ;unclear shift regigster 
                            648 ;  0 "" 2
                            649 ;  653 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   377B 97 05         [ 4]  650 	                    STA      *0xd005               ;enable timer 
                            651 ;  0 "" 2
                            652 ;  654 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   377D 20 88         [ 3]  653 	 bra not_full_cont_after
                            654 ;  0 "" 2
                            655 ;--- end asm ---
   377F 39            [ 5]  656 	rts
   3780                     657 LC0:
   3780 47                  658 	.byte	0x47
   3781 41                  659 	.byte	0x41
   3782 4D                  660 	.byte	0x4D
   3783 45                  661 	.byte	0x45
   3784 20                  662 	.byte	0x20
   3785 4F                  663 	.byte	0x4F
   3786 56                  664 	.byte	0x56
   3787 45                  665 	.byte	0x45
   3788 52                  666 	.byte	0x52
   3789 80                  667 	.byte	0x80
   378A 00                  668 	.byte	0x00
                            669 	.globl _arcadeEnd
   378B                     670 _arcadeEnd:
   378B 34 40         [ 6]  671 	pshs	u	; 
   378D 32 7C         [ 5]  672 	leas	-4,s	; ,,
                            673 ;----- asm -----
                            674 ;  1117 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            675 	; #ENR#[873]    Read_Btns();
                            676 ;  0 "" 2
                            677 ;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   378F BD F1 BA      [ 8]  678 	jsr ___Read_Btns; BIOS call
                            679 ;  0 "" 2
                            680 ;  1119 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            681 	; #ENR#[874]    Intensity_a(0x5f);
                            682 ;  0 "" 2
                            683 ;--- end asm ---
   3792 C6 5F         [ 2]  684 	ldb	#95	; ,
   3794 E7 62         [ 5]  685 	stb	2,s	; , a
                            686 ;----- asm -----
                            687 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3796 A6 62         [ 5]  688 	lda 2,s	;  a
   3798 BD F2 AB      [ 8]  689 	jsr ___Intensity_a; BIOS call
                            690 ;  0 "" 2
                            691 ;  1121 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            692 	; #ENR#[875]    Vec_Text_Width = 90;
                            693 ;  0 "" 2
                            694 ;--- end asm ---
   379B C6 5A         [ 2]  695 	ldb	#90	; ,
   379D F7 C8 2B      [ 5]  696 	stb	_Vec_Text_Width	; , Vec_Text_Width
                            697 ;----- asm -----
                            698 ;  1123 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            699 	; #ENR#[876]    Print_Str_d(100, -70, "GAME OVER€");
                            700 ;  0 "" 2
                            701 ;--- end asm ---
   37A0 CB 0A         [ 2]  702 	addb	#10	; ,
   37A2 E7 62         [ 5]  703 	stb	2,s	; , a
   37A4 C6 BA         [ 2]  704 	ldb	#-70	; ,
   37A6 E7 63         [ 5]  705 	stb	3,s	; , b
   37A8 8E 37 80      [ 3]  706 	ldx	#LC0	; ,
   37AB AF E4         [ 5]  707 	stx	,s	; , u
                            708 ;----- asm -----
                            709 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   37AD A6 62         [ 5]  710 	lda 2,s	;  a
   37AF E6 63         [ 5]  711 	ldb 3,s	;  b
   37B1 EE E4         [ 5]  712 	ldu ,s	;  u
   37B3 BD F3 7A      [ 8]  713 	jsr ___Print_Str_d; BIOS call
                            714 ;  0 "" 2
                            715 ;  1125 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            716 	; #ENR#[877]    Print_Str_d(50, -110, infoText);
                            717 ;  0 "" 2
                            718 ;--- end asm ---
   37B6 C6 32         [ 2]  719 	ldb	#50	; ,
   37B8 E7 63         [ 5]  720 	stb	3,s	; , a
   37BA C6 92         [ 2]  721 	ldb	#-110	; ,
   37BC E7 62         [ 5]  722 	stb	2,s	; , b
   37BE 8E C8 F3      [ 3]  723 	ldx	#_infoText	; ,
   37C1 AF E4         [ 5]  724 	stx	,s	; , u
                            725 ;----- asm -----
                            726 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   37C3 A6 63         [ 5]  727 	lda 3,s	;  a
   37C5 E6 62         [ 5]  728 	ldb 2,s	;  b
   37C7 EE E4         [ 5]  729 	ldu ,s	;  u
   37C9 BD F3 7A      [ 8]  730 	jsr ___Print_Str_d; BIOS call
                            731 ;  0 "" 2
                            732 ;  1127 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            733 	; #ENR#[878]    if (Vec_Buttons & 1) {
                            734 ;  0 "" 2
                            735 ;--- end asm ---
   37CC F6 C8 11      [ 5]  736 	ldb	_Vec_Buttons	; , Vec_Buttons
   37CF C5 01         [ 2]  737 	bitb	#1	; ,
   37D1 27 03         [ 3]  738 	beq	L17	; 
                            739 ;----- asm -----
                            740 ;  1129 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            741 	; #ENR#[879]        gameState = MainMenu;
                            742 ;  0 "" 2
                            743 ;--- end asm ---
   37D3 7F C9 1C      [ 7]  744 	clr	_gameState	;  gameState
   37D6                     745 L17:
                            746 ;----- asm -----
                            747 ;  1132 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            748 	; #ENR#[881]    if (Vec_Buttons & 2) {
                            749 ;  0 "" 2
                            750 ;--- end asm ---
   37D6 F6 C8 11      [ 5]  751 	ldb	_Vec_Buttons	; , Vec_Buttons
   37D9 C5 02         [ 2]  752 	bitb	#2	; ,
   37DB 27 03         [ 3]  753 	beq	L18	; 
                            754 ;----- asm -----
                            755 ;  1134 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            756 	; #ENR#[882]        gameState = MainMenu;
                            757 ;  0 "" 2
                            758 ;--- end asm ---
   37DD 7F C9 1C      [ 7]  759 	clr	_gameState	;  gameState
   37E0                     760 L18:
                            761 ;----- asm -----
                            762 ;  1137 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            763 	; #ENR#[884]    if (Vec_Buttons & 4) {
                            764 ;  0 "" 2
                            765 ;--- end asm ---
   37E0 F6 C8 11      [ 5]  766 	ldb	_Vec_Buttons	; , Vec_Buttons
   37E3 C5 04         [ 2]  767 	bitb	#4	; ,
   37E5 27 03         [ 3]  768 	beq	L19	; 
                            769 ;----- asm -----
                            770 ;  1139 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            771 	; #ENR#[885]        gameState = MainMenu;
                            772 ;  0 "" 2
                            773 ;--- end asm ---
   37E7 7F C9 1C      [ 7]  774 	clr	_gameState	;  gameState
   37EA                     775 L19:
                            776 ;----- asm -----
                            777 ;  1142 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            778 	; #ENR#[887]    if (Vec_Buttons & 8) {
                            779 ;  0 "" 2
                            780 ;--- end asm ---
   37EA F6 C8 11      [ 5]  781 	ldb	_Vec_Buttons	; , Vec_Buttons
   37ED C5 08         [ 2]  782 	bitb	#8	; ,
   37EF 27 03         [ 3]  783 	beq	L21	; 
                            784 ;----- asm -----
                            785 ;  1144 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            786 	; #ENR#[888]        gameState = MainMenu;
                            787 ;  0 "" 2
                            788 ;--- end asm ---
   37F1 7F C9 1C      [ 7]  789 	clr	_gameState	;  gameState
   37F4                     790 L21:
   37F4 32 64         [ 5]  791 	leas	4,s	; ,,
   37F6 35 C0         [ 7]  792 	puls	u,pc	; 
                            793 	.globl _showInfo2
   37F8                     794 _showInfo2:
   37F8 34 20         [ 6]  795 	pshs	y	; 
   37FA 32 7D         [ 5]  796 	leas	-3,s	; ,,
                            797 ;----- asm -----
                            798 ;  1193 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            799 	; #ENR#[924]    zergnd();
                            800 ;  0 "" 2
                            801 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   37FC BD F3 54      [ 8]  802 	jsr ___Reset0Ref; BIOS call
                            803 ;  0 "" 2
                            804 ;  1195 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            805 	; #ENR#[925]    intens(0x50);
                            806 ;  0 "" 2
                            807 ;--- end asm ---
   37FF C6 50         [ 2]  808 	ldb	#80	; ,
   3801 E7 E4         [ 4]  809 	stb	,s	; , a
                            810 ;----- asm -----
                            811 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3803 A6 E4         [ 4]  812 	lda ,s	;  a
   3805 BD F2 AB      [ 8]  813 	jsr ___Intensity_a; BIOS call
                            814 ;  0 "" 2
                            815 ;  1198 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            816 	; #ENR#[927]    zergnd();
                            817 ;  0 "" 2
                            818 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3808 BD F3 54      [ 8]  819 	jsr ___Reset0Ref; BIOS call
                            820 ;  0 "" 2
                            821 ;  1200 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            822 	; #ENR#[928]    positd(-50, 100);
                            823 ;  0 "" 2
                            824 ;--- end asm ---
   380B C6 80         [ 2]  825 	ldb	#-128	; ,
   380D D7 04         [ 4]  826 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   380F C6 64         [ 2]  827 	ldb	#100	; ,
   3811 E7 62         [ 5]  828 	stb	2,s	; , a
   3813 C6 CE         [ 2]  829 	ldb	#-50	; ,
   3815 E7 E4         [ 4]  830 	stb	,s	; , b
                            831 ;----- asm -----
                            832 ;  3315 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3817 A6 62         [ 5]  833 	lda 2,s	;  a
   3819 E6 E4         [ 4]  834 	ldb ,s	;  b
   381B BD F3 12      [ 8]  835 	jsr ___Moveto_d; BIOS call
                            836 ;  0 "" 2
                            837 ;  1202 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            838 	; #ENR#[929]    pack1x((void*)led8);
                            839 ;  0 "" 2
                            840 ;--- end asm ---
   381E C6 80         [ 2]  841 	ldb	#-128	; ,
   3820 D7 04         [ 4]  842 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   3822 10 8E 42 70   [ 4]  843 	ldy	#_led8	;  tmp27,
   3826 10 AF E4      [ 6]  844 	sty	,s	;  tmp27, x
                            845 ;----- asm -----
                            846 ;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3829 AE E4         [ 5]  847 	ldx ,s	;  x
   382B BD F4 10      [ 8]  848 	jsr ___Draw_VLp; BIOS call
                            849 ;  0 "" 2
                            850 ;  1205 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            851 	; #ENR#[931]    zergnd();
                            852 ;  0 "" 2
                            853 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   382E BD F3 54      [ 8]  854 	jsr ___Reset0Ref; BIOS call
                            855 ;  0 "" 2
                            856 ;  1207 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            857 	; #ENR#[932]    positd(-40, 110);
                            858 ;  0 "" 2
                            859 ;--- end asm ---
   3831 C6 80         [ 2]  860 	ldb	#-128	; ,
   3833 D7 04         [ 4]  861 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   3835 C6 6E         [ 2]  862 	ldb	#110	; ,
   3837 E7 E4         [ 4]  863 	stb	,s	; , a
   3839 C6 D8         [ 2]  864 	ldb	#-40	; ,
   383B E7 62         [ 5]  865 	stb	2,s	; , b
                            866 ;----- asm -----
                            867 ;  3315 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   383D A6 E4         [ 4]  868 	lda ,s	;  a
   383F E6 62         [ 5]  869 	ldb 2,s	;  b
   3841 BD F3 12      [ 8]  870 	jsr ___Moveto_d; BIOS call
                            871 ;  0 "" 2
                            872 ;  1209 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            873 	; #ENR#[933]    pack1x((void*)led8);
                            874 ;  0 "" 2
                            875 ;--- end asm ---
   3844 C6 80         [ 2]  876 	ldb	#-128	; ,
   3846 D7 04         [ 4]  877 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   3848 10 AF E4      [ 6]  878 	sty	,s	;  tmp27, x
                            879 ;----- asm -----
                            880 ;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   384B AE E4         [ 5]  881 	ldx ,s	;  x
   384D BD F4 10      [ 8]  882 	jsr ___Draw_VLp; BIOS call
                            883 ;  0 "" 2
                            884 ;  1212 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            885 	; #ENR#[935]    zergnd();
                            886 ;  0 "" 2
                            887 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3850 BD F3 54      [ 8]  888 	jsr ___Reset0Ref; BIOS call
                            889 ;  0 "" 2
                            890 ;  1214 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            891 	; #ENR#[936]    positd(-30, 120);
                            892 ;  0 "" 2
                            893 ;--- end asm ---
   3853 C6 80         [ 2]  894 	ldb	#-128	; ,
   3855 D7 04         [ 4]  895 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   3857 C6 78         [ 2]  896 	ldb	#120	; ,
   3859 E7 62         [ 5]  897 	stb	2,s	; , a
   385B C6 E2         [ 2]  898 	ldb	#-30	; ,
   385D E7 E4         [ 4]  899 	stb	,s	; , b
                            900 ;----- asm -----
                            901 ;  3315 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   385F A6 62         [ 5]  902 	lda 2,s	;  a
   3861 E6 E4         [ 4]  903 	ldb ,s	;  b
   3863 BD F3 12      [ 8]  904 	jsr ___Moveto_d; BIOS call
                            905 ;  0 "" 2
                            906 ;  1216 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            907 	; #ENR#[937]    pack1x((void*)led8);
                            908 ;  0 "" 2
                            909 ;--- end asm ---
   3866 C6 80         [ 2]  910 	ldb	#-128	; ,
   3868 D7 04         [ 4]  911 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   386A 10 AF E4      [ 6]  912 	sty	,s	;  tmp27, x
                            913 ;----- asm -----
                            914 ;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   386D AE E4         [ 5]  915 	ldx ,s	;  x
   386F BD F4 10      [ 8]  916 	jsr ___Draw_VLp; BIOS call
                            917 ;  0 "" 2
                            918 ;  1219 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            919 	; #ENR#[939]    zergnd();
                            920 ;  0 "" 2
                            921 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3872 BD F3 54      [ 8]  922 	jsr ___Reset0Ref; BIOS call
                            923 ;  0 "" 2
                            924 ;  1221 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            925 	; #ENR#[940]    positd(0, 120);
                            926 ;  0 "" 2
                            927 ;--- end asm ---
   3875 C6 80         [ 2]  928 	ldb	#-128	; ,
   3877 D7 04         [ 4]  929 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   3879 C6 78         [ 2]  930 	ldb	#120	; ,
   387B E7 E4         [ 4]  931 	stb	,s	; , a
   387D 6F 62         [ 7]  932 	clr	2,s	;  b
                            933 ;----- asm -----
                            934 ;  3315 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   387F A6 E4         [ 4]  935 	lda ,s	;  a
   3881 E6 62         [ 5]  936 	ldb 2,s	;  b
   3883 BD F3 12      [ 8]  937 	jsr ___Moveto_d; BIOS call
                            938 ;  0 "" 2
                            939 ;  1223 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            940 	; #ENR#[941]    pack1x((void*)led8);
                            941 ;  0 "" 2
                            942 ;--- end asm ---
   3886 C6 80         [ 2]  943 	ldb	#-128	; ,
   3888 D7 04         [ 4]  944 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   388A 10 AF E4      [ 6]  945 	sty	,s	;  tmp27, x
                            946 ;----- asm -----
                            947 ;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   388D AE E4         [ 5]  948 	ldx ,s	;  x
   388F BD F4 10      [ 8]  949 	jsr ___Draw_VLp; BIOS call
                            950 ;  0 "" 2
                            951 ;  1226 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            952 	; #ENR#[943]    zergnd();
                            953 ;  0 "" 2
                            954 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3892 BD F3 54      [ 8]  955 	jsr ___Reset0Ref; BIOS call
                            956 ;  0 "" 2
                            957 ;  1228 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            958 	; #ENR#[944]    positd(10, 120);
                            959 ;  0 "" 2
                            960 ;--- end asm ---
   3895 C6 80         [ 2]  961 	ldb	#-128	; ,
   3897 D7 04         [ 4]  962 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   3899 C6 78         [ 2]  963 	ldb	#120	; ,
   389B E7 62         [ 5]  964 	stb	2,s	; , a
   389D C6 0A         [ 2]  965 	ldb	#10	; ,
   389F E7 E4         [ 4]  966 	stb	,s	; , b
                            967 ;----- asm -----
                            968 ;  3315 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   38A1 A6 62         [ 5]  969 	lda 2,s	;  a
   38A3 E6 E4         [ 4]  970 	ldb ,s	;  b
   38A5 BD F3 12      [ 8]  971 	jsr ___Moveto_d; BIOS call
                            972 ;  0 "" 2
                            973 ;  1230 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            974 	; #ENR#[945]    pack1x((void*)led8);
                            975 ;  0 "" 2
                            976 ;--- end asm ---
   38A8 C6 80         [ 2]  977 	ldb	#-128	; ,
   38AA D7 04         [ 4]  978 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   38AC 10 AF E4      [ 6]  979 	sty	,s	;  tmp27, x
                            980 ;----- asm -----
                            981 ;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   38AF AE E4         [ 5]  982 	ldx ,s	;  x
   38B1 BD F4 10      [ 8]  983 	jsr ___Draw_VLp; BIOS call
                            984 ;  0 "" 2
                            985 ;  1233 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            986 	; #ENR#[947]    zergnd();
                            987 ;  0 "" 2
                            988 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   38B4 BD F3 54      [ 8]  989 	jsr ___Reset0Ref; BIOS call
                            990 ;  0 "" 2
                            991 ;  1235 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            992 	; #ENR#[948]    positd(20, 120);
                            993 ;  0 "" 2
                            994 ;--- end asm ---
   38B7 C6 80         [ 2]  995 	ldb	#-128	; ,
   38B9 D7 04         [ 4]  996 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   38BB C6 78         [ 2]  997 	ldb	#120	; ,
   38BD E7 E4         [ 4]  998 	stb	,s	; , a
   38BF C6 14         [ 2]  999 	ldb	#20	; ,
   38C1 E7 62         [ 5] 1000 	stb	2,s	; , b
                           1001 ;----- asm -----
                           1002 ;  3315 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   38C3 A6 E4         [ 4] 1003 	lda ,s	;  a
   38C5 E6 62         [ 5] 1004 	ldb 2,s	;  b
   38C7 BD F3 12      [ 8] 1005 	jsr ___Moveto_d; BIOS call
                           1006 ;  0 "" 2
                           1007 ;  1237 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1008 	; #ENR#[949]    pack1x((void*)led8);
                           1009 ;  0 "" 2
                           1010 ;--- end asm ---
   38CA C6 80         [ 2] 1011 	ldb	#-128	; ,
   38CC D7 04         [ 4] 1012 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   38CE 10 AF E4      [ 6] 1013 	sty	,s	;  tmp27, x
                           1014 ;----- asm -----
                           1015 ;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   38D1 AE E4         [ 5] 1016 	ldx ,s	;  x
   38D3 BD F4 10      [ 8] 1017 	jsr ___Draw_VLp; BIOS call
                           1018 ;  0 "" 2
                           1019 ;--- end asm ---
   38D6 32 63         [ 5] 1020 	leas	3,s	; ,,
   38D8 35 A0         [ 7] 1021 	puls	y,pc	; 
                           1022 	.globl _showInfo
   38DA                    1023 _showInfo:
   38DA 34 40         [ 6] 1024 	pshs	u	; 
   38DC 32 7C         [ 5] 1025 	leas	-4,s	; ,,
                           1026 ;----- asm -----
                           1027 ;  1243 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1028 	; #ENR#[954]    Intensity_a(0x5f);
                           1029 ;  0 "" 2
                           1030 ;--- end asm ---
   38DE C6 5F         [ 2] 1031 	ldb	#95	; ,
   38E0 E7 62         [ 5] 1032 	stb	2,s	; , a
                           1033 ;----- asm -----
                           1034 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   38E2 A6 62         [ 5] 1035 	lda 2,s	;  a
   38E4 BD F2 AB      [ 8] 1036 	jsr ___Intensity_a; BIOS call
                           1037 ;  0 "" 2
                           1038 ;  1245 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1039 	; #ENR#[955]    Vec_Text_Width = 100;
                           1040 ;  0 "" 2
                           1041 ;--- end asm ---
   38E7 C6 64         [ 2] 1042 	ldb	#100	; ,
   38E9 F7 C8 2B      [ 5] 1043 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1044 ;----- asm -----
                           1045 ;  1247 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1046 	; #ENR#[956]    if (highscoreDisplayCounter > 180) {
                           1047 ;  0 "" 2
                           1048 ;--- end asm ---
   38EC F6 C9 11      [ 5] 1049 	ldb	_highscoreDisplayCounter	; , highscoreDisplayCounter
   38EF C1 B4         [ 2] 1050 	cmpb	#-76	;cmpqi:	; ,
   38F1 23 18         [ 3] 1051 	bls	L25	; 
                           1052 ;----- asm -----
                           1053 ;  1249 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1054 	; #ENR#[957]        Print_Str_d(100, -70, highscoreText);
                           1055 ;  0 "" 2
                           1056 ;--- end asm ---
   38F3 C6 64         [ 2] 1057 	ldb	#100	; ,
   38F5 E7 62         [ 5] 1058 	stb	2,s	; , a
   38F7 C6 BA         [ 2] 1059 	ldb	#-70	; ,
   38F9 E7 63         [ 5] 1060 	stb	3,s	; , b
   38FB 8E C9 07      [ 3] 1061 	ldx	#_highscoreText	; ,
   38FE AF E4         [ 5] 1062 	stx	,s	; , u
                           1063 ;----- asm -----
                           1064 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3900 A6 62         [ 5] 1065 	lda 2,s	;  a
   3902 E6 63         [ 5] 1066 	ldb 3,s	;  b
   3904 EE E4         [ 5] 1067 	ldu ,s	;  u
   3906 BD F3 7A      [ 8] 1068 	jsr ___Print_Str_d; BIOS call
                           1069 ;  0 "" 2
                           1070 ;--- end asm ---
   3909 20 16         [ 3] 1071 	bra	L26	; 
   390B                    1072 L25:
                           1073 ;----- asm -----
                           1074 ;  1252 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1075 	; #ENR#[959]        Print_Str_d(100, -70, infoText);
                           1076 ;  0 "" 2
                           1077 ;--- end asm ---
   390B C6 64         [ 2] 1078 	ldb	#100	; ,
   390D E7 63         [ 5] 1079 	stb	3,s	; , a
   390F C6 BA         [ 2] 1080 	ldb	#-70	; ,
   3911 E7 62         [ 5] 1081 	stb	2,s	; , b
   3913 8E C8 F3      [ 3] 1082 	ldx	#_infoText	; ,
   3916 AF E4         [ 5] 1083 	stx	,s	; , u
                           1084 ;----- asm -----
                           1085 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3918 A6 63         [ 5] 1086 	lda 3,s	;  a
   391A E6 62         [ 5] 1087 	ldb 2,s	;  b
   391C EE E4         [ 5] 1088 	ldu ,s	;  u
   391E BD F3 7A      [ 8] 1089 	jsr ___Print_Str_d; BIOS call
                           1090 ;  0 "" 2
                           1091 ;--- end asm ---
   3921                    1092 L26:
                           1093 ;----- asm -----
                           1094 ;  1255 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1095 	; #ENR#[961]    highscoreDisplayCounter++;
                           1096 ;  0 "" 2
                           1097 ;--- end asm ---
   3921 F6 C9 11      [ 5] 1098 	ldb	_highscoreDisplayCounter	;  highscoreDisplayCounter.90, highscoreDisplayCounter
   3924 5C            [ 2] 1099 	incb	;  highscoreDisplayCounter.90
   3925 F7 C9 11      [ 5] 1100 	stb	_highscoreDisplayCounter	;  highscoreDisplayCounter.90, highscoreDisplayCounter
                           1101 ;----- asm -----
                           1102 ;  1257 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1103 	; #ENR#[962]    if (highscoreDisplayCounter > 240) {
                           1104 ;  0 "" 2
                           1105 ;--- end asm ---
   3928 C1 F0         [ 2] 1106 	cmpb	#-16	;cmpqi:	;  highscoreDisplayCounter.90,
   392A 23 03         [ 3] 1107 	bls	L28	; 
                           1108 ;----- asm -----
                           1109 ;  1259 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1110 	; #ENR#[963]        highscoreDisplayCounter = 0;
                           1111 ;  0 "" 2
                           1112 ;--- end asm ---
   392C 7F C9 11      [ 7] 1113 	clr	_highscoreDisplayCounter	;  highscoreDisplayCounter
   392F                    1114 L28:
   392F 32 64         [ 5] 1115 	leas	4,s	; ,,
   3931 35 C0         [ 7] 1116 	puls	u,pc	; 
   3933                    1117 _sendPicCommand:
   3933 32 7F         [ 5] 1118 	leas	-1,s	; ,,
   3935 E7 E4         [ 4] 1119 	stb	,s	;  cmd, cmd
                           1120 ;----- asm -----
                           1121 ;  195 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1122 	; #ENR#[194]    picWrite('V');
                           1123 ;  0 "" 2
                           1124 ;--- end asm ---
   3937 C6 56         [ 2] 1125 	ldb	#86	; ,
   3939 BD 6C 19      [ 8] 1126 	jsr	_picWrite	; 
                           1127 ;----- asm -----
                           1128 ;  197 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1129 	; #ENR#[195]    picWrite(cmd);
                           1130 ;  0 "" 2
                           1131 ;--- end asm ---
   393C E6 E4         [ 4] 1132 	ldb	,s	; , cmd
   393E BD 6C 19      [ 8] 1133 	jsr	_picWrite	; 
                           1134 ;----- asm -----
                           1135 ;  199 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1136 	; #ENR#[196]    picWrite(arg);
                           1137 ;  0 "" 2
                           1138 ;--- end asm ---
   3941 E6 63         [ 5] 1139 	ldb	3,s	; , arg
   3943 BD 6C 19      [ 8] 1140 	jsr	_picWrite	; 
                           1141 ;----- asm -----
                           1142 ;  201 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1143 	; #ENR#[197]    return picRead();
                           1144 ;  0 "" 2
                           1145 ;--- end asm ---
   3946 BD 6C 65      [ 8] 1146 	jsr	_picRead	; 
   3949 32 61         [ 5] 1147 	leas	1,s	; ,,
   394B 39            [ 5] 1148 	rts
   394C                    1149 _sendCommand:
   394C 32 7E         [ 5] 1150 	leas	-2,s	; ,,
   394E E7 E4         [ 4] 1151 	stb	,s	;  cmd, cmd
                           1152 ;----- asm -----
                           1153 ;  219 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1154 	; #ENR#[210]	uint8_t result = 0;
                           1155 ;  0 "" 2
                           1156 ;  221 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1157 	; #ENR#[211]	if (picAvailable) {
                           1158 ;  0 "" 2
                           1159 ;--- end asm ---
   3950 7D C9 18      [ 7] 1160 	tst	_picAvailable	;  picAvailable
   3953 27 0F         [ 3] 1161 	beq	L32	; 
                           1162 ;----- asm -----
                           1163 ;  223 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1164 	; #ENR#[212]        result = sendPicCommand(cmd, arg);
                           1165 ;  0 "" 2
                           1166 ;--- end asm ---
   3955 E6 64         [ 5] 1167 	ldb	4,s	; , arg
   3957 34 04         [ 6] 1168 	pshs	b	; 
   3959 E6 61         [ 5] 1169 	ldb	1,s	; , cmd
   395B BD 39 33      [ 8] 1170 	jsr	_sendPicCommand	; 
   395E E7 62         [ 5] 1171 	stb	2,s	; , result
   3960 32 61         [ 5] 1172 	leas	1,s	; ,,
   3962 20 1C         [ 3] 1173 	bra	L33	; 
   3964                    1174 L32:
                           1175 ;----- asm -----
                           1176 ;  226 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1177 	; #ENR#[214]        result = sendVecxCommand(cmd, arg);
                           1178 ;  0 "" 2
                           1179 ;  207 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1180 	; #ENR#[202]    vecx[VECX_PIC_RW] = 'V';
                           1181 ;  0 "" 2
                           1182 ;--- end asm ---
   3964 BE C8 82      [ 6] 1183 	ldx	_vecx	;  vecx.1, vecx
   3967 C6 56         [ 2] 1184 	ldb	#86	; ,
   3969 E7 01         [ 5] 1185 	stb	1,x	; ,
                           1186 ;----- asm -----
                           1187 ;  209 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1188 	; #ENR#[203]    vecx[VECX_PIC_RW] = cmd;
                           1189 ;  0 "" 2
                           1190 ;--- end asm ---
   396B BE C8 82      [ 6] 1191 	ldx	_vecx	;  vecx.2, vecx
   396E E6 E4         [ 4] 1192 	ldb	,s	; , cmd
   3970 E7 01         [ 5] 1193 	stb	1,x	; ,
                           1194 ;----- asm -----
                           1195 ;  211 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1196 	; #ENR#[204]    vecx[VECX_PIC_RW] = arg;
                           1197 ;  0 "" 2
                           1198 ;--- end asm ---
   3972 BE C8 82      [ 6] 1199 	ldx	_vecx	;  vecx.3, vecx
   3975 E6 64         [ 5] 1200 	ldb	4,s	; , arg
   3977 E7 01         [ 5] 1201 	stb	1,x	; ,
                           1202 ;----- asm -----
                           1203 ;  213 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1204 	; #ENR#[205]    return vecx[VECX_PIC_RW];
                           1205 ;  0 "" 2
                           1206 ;--- end asm ---
   3979 BE C8 82      [ 6] 1207 	ldx	_vecx	;  vecx.4, vecx
   397C E6 01         [ 5] 1208 	ldb	1,x	; ,
   397E E7 61         [ 5] 1209 	stb	1,s	; , result
   3980                    1210 L33:
                           1211 ;----- asm -----
                           1212 ;  229 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1213 	; #ENR#[216]    delay10ms();
                           1214 ;  0 "" 2
                           1215 ;--- end asm ---
   3980 BD 6C C2      [ 8] 1216 	jsr	_delay10ms	; 
                           1217 ;----- asm -----
                           1218 ;  231 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1219 	; #ENR#[217]    return result;
                           1220 ;  0 "" 2
                           1221 ;--- end asm ---
   3983 E6 61         [ 5] 1222 	ldb	1,s	; , result
   3985 32 62         [ 5] 1223 	leas	2,s	; ,,
   3987 39            [ 5] 1224 	rts
   3988                    1225 _setBank:
                           1226 ;----- asm -----
                           1227 ;  237 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1228 	; #ENR#[222]    sendCommand(CMD_SET_BANK, bank);
                           1229 ;  0 "" 2
                           1230 ;--- end asm ---
   3988 34 04         [ 6] 1231 	pshs	b	;  bank
   398A C6 05         [ 2] 1232 	ldb	#5	; ,
   398C BD 39 4C      [ 8] 1233 	jsr	_sendCommand	; 
   398F 32 61         [ 5] 1234 	leas	1,s	; ,,
   3991 39            [ 5] 1235 	rts
                           1236 	.globl _readEeprom
   3992                    1237 _readEeprom:
                           1238 ;----- asm -----
                           1239 ;  266 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1240 	; #ENR#[243]    return sendCommand(CMD_EEPROM_READ, address);
                           1241 ;  0 "" 2
                           1242 ;--- end asm ---
   3992 34 04         [ 6] 1243 	pshs	b	;  address
   3994 C6 04         [ 2] 1244 	ldb	#4	; ,
   3996 BD 39 4C      [ 8] 1245 	jsr	_sendCommand	; 
   3999 32 61         [ 5] 1246 	leas	1,s	; ,,
   399B 39            [ 5] 1247 	rts
                           1248 	.globl _writeEeprom
   399C                    1249 _writeEeprom:
                           1250 ;----- asm -----
                           1251 ;  258 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1252 	; #ENR#[237]    sendCommand(CMD_SET_EEPROM_ADR, address);
                           1253 ;  0 "" 2
                           1254 ;--- end asm ---
   399C 34 04         [ 6] 1255 	pshs	b	;  address
   399E C6 02         [ 2] 1256 	ldb	#2	; ,
   39A0 BD 39 4C      [ 8] 1257 	jsr	_sendCommand	; 
                           1258 ;----- asm -----
                           1259 ;  260 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1260 	; #ENR#[238]    sendCommand(CMD_EEPROM_WRITE, data);
                           1261 ;  0 "" 2
                           1262 ;--- end asm ---
   39A3 E6 63         [ 5] 1263 	ldb	3,s	; , data
   39A5 E7 E2         [ 6] 1264 	stb	,-s	; ,
   39A7 C6 03         [ 2] 1265 	ldb	#3	; ,
   39A9 BD 39 4C      [ 8] 1266 	jsr	_sendCommand	; 
   39AC 32 62         [ 5] 1267 	leas	2,s	; ,,
   39AE 39            [ 5] 1268 	rts
   39AF                    1269 LC1:
   39AF 43                 1270 	.byte	0x43
   39B0 4C                 1271 	.byte	0x4C
   39B1 45                 1272 	.byte	0x45
   39B2 41                 1273 	.byte	0x41
   39B3 52                 1274 	.byte	0x52
   39B4 20                 1275 	.byte	0x20
   39B5 53                 1276 	.byte	0x53
   39B6 43                 1277 	.byte	0x43
   39B7 4F                 1278 	.byte	0x4F
   39B8 52                 1279 	.byte	0x52
   39B9 45                 1280 	.byte	0x45
   39BA 3F                 1281 	.byte	0x3F
   39BB 80                 1282 	.byte	0x80
   39BC 00                 1283 	.byte	0x00
   39BD                    1284 LC2:
   39BD 33                 1285 	.byte	0x33
   39BE 20                 1286 	.byte	0x20
   39BF 59                 1287 	.byte	0x59
   39C0 45                 1288 	.byte	0x45
   39C1 53                 1289 	.byte	0x53
   39C2 80                 1290 	.byte	0x80
   39C3 00                 1291 	.byte	0x00
   39C4                    1292 LC3:
   39C4 34                 1293 	.byte	0x34
   39C5 20                 1294 	.byte	0x20
   39C6 4E                 1295 	.byte	0x4E
   39C7 4F                 1296 	.byte	0x4F
   39C8 80                 1297 	.byte	0x80
   39C9 00                 1298 	.byte	0x00
                           1299 	.globl _clearMenu
   39CA                    1300 _clearMenu:
   39CA 34 40         [ 6] 1301 	pshs	u	; 
   39CC 32 7B         [ 5] 1302 	leas	-5,s	; ,,
                           1303 ;----- asm -----
                           1304 ;  1151 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1305 	; #ENR#[894]    Read_Btns();
                           1306 ;  0 "" 2
                           1307 ;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   39CE BD F1 BA      [ 8] 1308 	jsr ___Read_Btns; BIOS call
                           1309 ;  0 "" 2
                           1310 ;  1153 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1311 	; #ENR#[895]    Intensity_a(0x5f);
                           1312 ;  0 "" 2
                           1313 ;--- end asm ---
   39D1 C6 5F         [ 2] 1314 	ldb	#95	; ,
   39D3 E7 64         [ 5] 1315 	stb	4,s	; , a
                           1316 ;----- asm -----
                           1317 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   39D5 A6 64         [ 5] 1318 	lda 4,s	;  a
   39D7 BD F2 AB      [ 8] 1319 	jsr ___Intensity_a; BIOS call
                           1320 ;  0 "" 2
                           1321 ;  1155 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1322 	; #ENR#[896]    Vec_Text_Width = 90;
                           1323 ;  0 "" 2
                           1324 ;--- end asm ---
   39DA C6 5A         [ 2] 1325 	ldb	#90	; ,
   39DC F7 C8 2B      [ 5] 1326 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1327 ;----- asm -----
                           1328 ;  1157 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1329 	; #ENR#[897]    Print_Str_d(100, -80, "CLEAR SCORE?€");
                           1330 ;  0 "" 2
                           1331 ;--- end asm ---
   39DF CB 0A         [ 2] 1332 	addb	#10	; ,
   39E1 E7 64         [ 5] 1333 	stb	4,s	; , a
   39E3 C6 B0         [ 2] 1334 	ldb	#-80	; ,
   39E5 E7 63         [ 5] 1335 	stb	3,s	; , b
   39E7 8E 39 AF      [ 3] 1336 	ldx	#LC1	; ,
   39EA AF 61         [ 6] 1337 	stx	1,s	; , u
                           1338 ;----- asm -----
                           1339 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   39EC A6 64         [ 5] 1340 	lda 4,s	;  a
   39EE E6 63         [ 5] 1341 	ldb 3,s	;  b
   39F0 EE 61         [ 6] 1342 	ldu 1,s	;  u
   39F2 BD F3 7A      [ 8] 1343 	jsr ___Print_Str_d; BIOS call
                           1344 ;  0 "" 2
                           1345 ;  1159 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1346 	; #ENR#[898]    Print_Str_d(50, -110, "3 YES€");
                           1347 ;  0 "" 2
                           1348 ;--- end asm ---
   39F5 C6 32         [ 2] 1349 	ldb	#50	; ,
   39F7 E7 63         [ 5] 1350 	stb	3,s	; , a
   39F9 C6 92         [ 2] 1351 	ldb	#-110	; ,
   39FB E7 64         [ 5] 1352 	stb	4,s	; , b
   39FD 8E 39 BD      [ 3] 1353 	ldx	#LC2	; ,
   3A00 AF 61         [ 6] 1354 	stx	1,s	; , u
                           1355 ;----- asm -----
                           1356 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3A02 A6 63         [ 5] 1357 	lda 3,s	;  a
   3A04 E6 64         [ 5] 1358 	ldb 4,s	;  b
   3A06 EE 61         [ 6] 1359 	ldu 1,s	;  u
   3A08 BD F3 7A      [ 8] 1360 	jsr ___Print_Str_d; BIOS call
                           1361 ;  0 "" 2
                           1362 ;  1161 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1363 	; #ENR#[899]    Print_Str_d(20, -110, "4 NO€");
                           1364 ;  0 "" 2
                           1365 ;--- end asm ---
   3A0B C6 14         [ 2] 1366 	ldb	#20	; ,
   3A0D E7 64         [ 5] 1367 	stb	4,s	; , a
   3A0F C6 92         [ 2] 1368 	ldb	#-110	; ,
   3A11 E7 63         [ 5] 1369 	stb	3,s	; , b
   3A13 8E 39 C4      [ 3] 1370 	ldx	#LC3	; ,
   3A16 AF 61         [ 6] 1371 	stx	1,s	; , u
                           1372 ;----- asm -----
                           1373 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3A18 A6 64         [ 5] 1374 	lda 4,s	;  a
   3A1A E6 63         [ 5] 1375 	ldb 3,s	;  b
   3A1C EE 61         [ 6] 1376 	ldu 1,s	;  u
   3A1E BD F3 7A      [ 8] 1377 	jsr ___Print_Str_d; BIOS call
                           1378 ;  0 "" 2
                           1379 ;  1163 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1380 	; #ENR#[900]    if (Vec_Buttons & 4) {
                           1381 ;  0 "" 2
                           1382 ;--- end asm ---
   3A21 F6 C8 11      [ 5] 1383 	ldb	_Vec_Buttons	; , Vec_Buttons
   3A24 C5 04         [ 2] 1384 	bitb	#4	; ,
   3A26 27 18         [ 3] 1385 	beq	L42	; 
                           1386 ;----- asm -----
                           1387 ;  1165 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1388 	; #ENR#[901]        for (uint8_t i = 0; i < 6; i++) {
                           1389 ;  0 "" 2
                           1390 ;--- end asm ---
   3A28 6F E4         [ 6] 1391 	clr	,s	;  i
   3A2A                    1392 L43:
                           1393 ;----- asm -----
                           1394 ;  1167 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1395 	; #ENR#[902]            writeEeprom(i, 0xff);
                           1396 ;  0 "" 2
                           1397 ;--- end asm ---
   3A2A C6 FF         [ 2] 1398 	ldb	#-1	; ,
   3A2C E7 E2         [ 6] 1399 	stb	,-s	; ,
   3A2E E6 61         [ 5] 1400 	ldb	1,s	; , i
   3A30 BD 39 9C      [ 8] 1401 	jsr	_writeEeprom	; 
   3A33 6C 61         [ 7] 1402 	inc	1,s	;  i
   3A35 32 61         [ 5] 1403 	leas	1,s	; ,,
   3A37 E6 E4         [ 4] 1404 	ldb	,s	; , i
   3A39 C1 06         [ 2] 1405 	cmpb	#6	;cmpqi:	; ,
   3A3B 26 ED         [ 3] 1406 	bne	L43	; 
                           1407 ;----- asm -----
                           1408 ;  1170 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1409 	; #ENR#[904]        gameState = MainMenu;
                           1410 ;  0 "" 2
                           1411 ;--- end asm ---
   3A3D 7F C9 1C      [ 7] 1412 	clr	_gameState	;  gameState
   3A40                    1413 L42:
                           1414 ;----- asm -----
                           1415 ;  1173 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1416 	; #ENR#[906]    if (Vec_Buttons & 8) {
                           1417 ;  0 "" 2
                           1418 ;--- end asm ---
   3A40 F6 C8 11      [ 5] 1419 	ldb	_Vec_Buttons	; , Vec_Buttons
   3A43 C5 08         [ 2] 1420 	bitb	#8	; ,
   3A45 27 03         [ 3] 1421 	beq	L45	; 
                           1422 ;----- asm -----
                           1423 ;  1175 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1424 	; #ENR#[907]        gameState = MainMenu;
                           1425 ;  0 "" 2
                           1426 ;--- end asm ---
   3A47 7F C9 1C      [ 7] 1427 	clr	_gameState	;  gameState
   3A4A                    1428 L45:
   3A4A 32 65         [ 5] 1429 	leas	5,s	; ,,
   3A4C 35 C0         [ 7] 1430 	puls	u,pc	; 
                           1431 	.globl _blockMovingToStart
   3A4E                    1432 _blockMovingToStart:
                           1433 ;----- asm -----
                           1434 ;  665 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1435 	; #ENR#[596]    drawField();
                           1436 ;  0 "" 2
                           1437 ;--- end asm ---
   3A4E BD 36 6C      [ 8] 1438 	jsr	_drawField	; 
                           1439 ;----- asm -----
                           1440 ;  667 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1441 	; #ENR#[597]    drawBlock(blockYOfs);
                           1442 ;  0 "" 2
                           1443 ;--- end asm ---
   3A51 F6 C8 E3      [ 5] 1444 	ldb	_blockYOfs	; , blockYOfs
   3A54 BD 09 DC      [ 8] 1445 	jsr	_drawBlock	; 
                           1446 ;----- asm -----
                           1447 ;  669 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1448 	; #ENR#[598]    blockYOfs++;
                           1449 ;  0 "" 2
                           1450 ;--- end asm ---
   3A57 F6 C8 E3      [ 5] 1451 	ldb	_blockYOfs	;  blockYOfs.34, blockYOfs
   3A5A 5C            [ 2] 1452 	incb	;  blockYOfs.34
   3A5B F7 C8 E3      [ 5] 1453 	stb	_blockYOfs	;  blockYOfs.34, blockYOfs
                           1454 ;----- asm -----
                           1455 ;  671 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1456 	; #ENR#[599]    if (blockYOfs == 0) {
                           1457 ;  0 "" 2
                           1458 ;--- end asm ---
   3A5E 5D            [ 2] 1459 	tstb	;  blockYOfs.34
   3A5F 26 05         [ 3] 1460 	bne	L49	; 
                           1461 ;----- asm -----
                           1462 ;  673 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1463 	; #ENR#[600]        gameState = BlockWaiting;
                           1464 ;  0 "" 2
                           1465 ;--- end asm ---
   3A61 C6 05         [ 2] 1466 	ldb	#5	; ,
   3A63 F7 C9 1C      [ 5] 1467 	stb	_gameState	; , gameState
   3A66                    1468 L49:
   3A66 39            [ 5] 1469 	rts
                           1470 	.globl _updateInfoText
   3A67                    1471 _updateInfoText:
   3A67 34 40         [ 6] 1472 	pshs	u	; 
                           1473 ;----- asm -----
                           1474 ;  296 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1475 	; #ENR#[264]    memcpy(infoText, "001 - 999€", 10);
                           1476 ;  0 "" 2
                           1477 ;--- end asm ---
   3A69 8E C8 F3      [ 3] 1478 	ldx	#_infoText	;  tmp28,
   3A6C CE 30 30      [ 3] 1479 	ldu	#12336	; ,
   3A6F EF 84         [ 5] 1480 	stu	,x	; , infoText
   3A71 CE 31 20      [ 3] 1481 	ldu	#12576	; ,
   3A74 FF C8 F5      [ 6] 1482 	stu	_infoText+2	; , infoText
   3A77 CE 2D 20      [ 3] 1483 	ldu	#11552	; ,
   3A7A FF C8 F7      [ 6] 1484 	stu	_infoText+4	; , infoText
   3A7D CE 39 39      [ 3] 1485 	ldu	#14649	; ,
   3A80 FF C8 F9      [ 6] 1486 	stu	_infoText+6	; , infoText
   3A83 CE 39 80      [ 3] 1487 	ldu	#14720	; ,
   3A86 FF C8 FB      [ 6] 1488 	stu	_infoText+8	; , infoText
                           1489 ;----- asm -----
                           1490 ;  298 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1491 	; #ENR#[265]    itoa(moveCount, &infoText[0]);
                           1492 ;  0 "" 2
                           1493 ;--- end asm ---
   3A89 34 10         [ 6] 1494 	pshs	x	;  tmp28
   3A8B BE C9 14      [ 6] 1495 	ldx	_moveCount	; , moveCount
   3A8E BD 35 E4      [ 8] 1496 	jsr	_itoa	; 
                           1497 ;----- asm -----
                           1498 ;  300 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1499 	; #ENR#[266]    itoa(levelNumber + levelOffset, &infoText[6]);
                           1500 ;  0 "" 2
                           1501 ;--- end asm ---
   3A91 F6 C8 87      [ 5] 1502 	ldb	_levelNumber	;  levelNumber.10, levelNumber
   3A94 FB 4F 44      [ 5] 1503 	addb	_levelOffset	;  tmp36, levelOffset
   3A97 8E C8 F9      [ 3] 1504 	ldx	#_infoText+6	; ,
   3A9A AF E3         [ 8] 1505 	stx	,--s	; ,
   3A9C 4F            [ 2] 1506 	clra		;zero_extendqihi: R:b -> R:d	;  tmp36,
   3A9D 1F 01         [ 6] 1507 	tfr	d,x	; ,
   3A9F BD 35 E4      [ 8] 1508 	jsr	_itoa	; 
   3AA2 32 64         [ 5] 1509 	leas	4,s	; ,,
   3AA4 35 C0         [ 7] 1510 	puls	u,pc	; 
                           1511 	.globl _startLevel
   3AA6                    1512 _startLevel:
   3AA6 34 60         [ 7] 1513 	pshs	y,u	; 
   3AA8 32 7D         [ 5] 1514 	leas	-3,s	; ,,
                           1515 ;----- asm -----
                           1516 ;  341 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1517 	; #ENR#[295]    if (arcadeMode) {
                           1518 ;  0 "" 2
                           1519 ;--- end asm ---
   3AAA 7D C9 19      [ 7] 1520 	tst	_arcadeMode	;  arcadeMode
   3AAD 27 25         [ 3] 1521 	beq	L53	; 
                           1522 ;----- asm -----
                           1523 ;  343 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1524 	; #ENR#[296]        levelNumber = arcadeLevels[arcadeSelection][arcadeIndex] - 1;
                           1525 ;  0 "" 2
                           1526 ;--- end asm ---
   3AAF F6 C9 1B      [ 5] 1527 	ldb	_arcadeIndex	; , arcadeIndex
   3AB2 4F            [ 2] 1528 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3AB3 1F 02         [ 6] 1529 	tfr	d,y	; , arcadeIndex
   3AB5 F6 C9 1A      [ 5] 1530 	ldb	_arcadeSelection	; , arcadeSelection
   3AB8 4F            [ 2] 1531 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3AB9 ED E4         [ 5] 1532 	std	,s	; ,
   3ABB 58            [ 2] 1533 	aslb	; 
   3ABC 49            [ 2] 1534 	rola	; 
   3ABD 58            [ 2] 1535 	aslb	; 
   3ABE 49            [ 2] 1536 	rola	; 
   3ABF EE E4         [ 5] 1537 	ldu	,s	; ,
   3AC1 30 CB         [ 8] 1538 	leax	d,u	;  tmp40, tmp39,
   3AC3 1E 02         [ 8] 1539 	exg	d,y	; , arcadeIndex
   3AC5 30 8B         [ 8] 1540 	leax	d,x	;  tmp41,, tmp41
   3AC7 1E 02         [ 8] 1541 	exg	d,y	; , arcadeIndex
   3AC9 E6 89 42 86   [ 8] 1542 	ldb	_arcadeLevels,x	;  levelNumber.21, arcadeLevels
   3ACD 5A            [ 2] 1543 	decb	;  levelNumber.21
   3ACE F7 C8 87      [ 5] 1544 	stb	_levelNumber	;  levelNumber.21, levelNumber
   3AD1 7E 3B 30      [ 4] 1545 	jmp	L54	; 
   3AD4                    1546 L53:
                           1547 ;----- asm -----
                           1548 ;  347 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1549 	; #ENR#[299]        uint8_t index = (uint8_t) (levelOffset + levelNumber * 2);
                           1550 ;  0 "" 2
                           1551 ;--- end asm ---
   3AD4 F6 C8 87      [ 5] 1552 	ldb	_levelNumber	;  levelNumber.22, levelNumber
   3AD7 58            [ 2] 1553 	aslb	;  tmp43
   3AD8 FB 4F 44      [ 5] 1554 	addb	_levelOffset	;  tmp43, levelOffset
   3ADB E7 62         [ 5] 1555 	stb	2,s	;  tmp43, index
                           1556 ;----- asm -----
                           1557 ;  349 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1558 	; #ENR#[300]        levelHighscore = readEeprom(index);
                           1559 ;  0 "" 2
                           1560 ;--- end asm ---
   3ADD BD 39 92      [ 8] 1561 	jsr	_readEeprom	; 
   3AE0 4F            [ 2] 1562 	clra		;zero_extendqihi: R:b -> R:d	;  D.2340, D.2340
   3AE1 FD C9 12      [ 6] 1563 	std	_levelHighscore	;  D.2340, levelHighscore
                           1564 ;----- asm -----
                           1565 ;  351 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1566 	; #ENR#[301]        levelHighscore |= ((uint16_t) readEeprom(index + 1)) << 8;
                           1567 ;  0 "" 2
                           1568 ;--- end asm ---
   3AE4 E6 62         [ 5] 1569 	ldb	2,s	;  tmp45, index
   3AE6 5C            [ 2] 1570 	incb	;  tmp45
   3AE7 BD 39 92      [ 8] 1571 	jsr	_readEeprom	; 
   3AEA 1F 98         [ 6] 1572 	tfr	b,a	; ,
   3AEC 5F            [ 2] 1573 	clrb	; 
   3AED BA C9 12      [ 5] 1574 	ora	_levelHighscore	; , levelHighscore
   3AF0 FA C9 13      [ 5] 1575 	orb	_levelHighscore+1	; , levelHighscore
   3AF3 FD C9 12      [ 6] 1576 	std	_levelHighscore	;  levelHighscore.26, levelHighscore
                           1577 ;----- asm -----
                           1578 ;  353 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1579 	; #ENR#[302]        if (levelHighscore == 0) levelHighscore = 999;
                           1580 ;  0 "" 2
                           1581 ;--- end asm ---
   3AF6 10 83 00 00   [ 5] 1582 	cmpd	#0	;  levelHighscore.26
   3AFA 26 06         [ 3] 1583 	bne	L55	; 
   3AFC 8E 03 E7      [ 3] 1584 	ldx	#999	; ,
   3AFF BF C9 12      [ 6] 1585 	stx	_levelHighscore	; , levelHighscore
   3B02                    1586 L55:
                           1587 ;----- asm -----
                           1588 ;  357 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1589 	; #ENR#[305]        memcpy(highscoreText, "BEST  999€", 10);
                           1590 ;  0 "" 2
                           1591 ;--- end asm ---
   3B02 CE 42 45      [ 3] 1592 	ldu	#16965	; ,
   3B05 FF C9 07      [ 6] 1593 	stu	_highscoreText	; , highscoreText
   3B08 8E 53 54      [ 3] 1594 	ldx	#21332	; ,
   3B0B BF C9 09      [ 6] 1595 	stx	_highscoreText+2	; , highscoreText
   3B0E CE 20 20      [ 3] 1596 	ldu	#8224	; ,
   3B11 FF C9 0B      [ 6] 1597 	stu	_highscoreText+4	; , highscoreText
   3B14 8E 39 39      [ 3] 1598 	ldx	#14649	; ,
   3B17 BF C9 0D      [ 6] 1599 	stx	_highscoreText+6	; , highscoreText
   3B1A CE 39 80      [ 3] 1600 	ldu	#14720	; ,
   3B1D FF C9 0F      [ 6] 1601 	stu	_highscoreText+8	; , highscoreText
                           1602 ;----- asm -----
                           1603 ;  359 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1604 	; #ENR#[306]        itoa(levelHighscore, &highscoreText[6]);
                           1605 ;  0 "" 2
                           1606 ;--- end asm ---
   3B20 CC C9 0D      [ 3] 1607 	ldd	#_highscoreText+6	; ,
   3B23 ED E3         [ 8] 1608 	std	,--s	; ,
   3B25 BE C9 12      [ 6] 1609 	ldx	_levelHighscore	; , levelHighscore
   3B28 BD 35 E4      [ 8] 1610 	jsr	_itoa	; 
                           1611 ;----- asm -----
                           1612 ;  361 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1613 	; #ENR#[307]        highscoreDisplayCounter = 0;
                           1614 ;  0 "" 2
                           1615 ;--- end asm ---
   3B2B 7F C9 11      [ 7] 1616 	clr	_highscoreDisplayCounter	;  highscoreDisplayCounter
   3B2E 32 62         [ 5] 1617 	leas	2,s	; ,,
   3B30                    1618 L54:
                           1619 ;----- asm -----
                           1620 ;  364 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1621 	; #ENR#[309]    level = levels[levelNumber];
                           1622 ;  0 "" 2
                           1623 ;--- end asm ---
   3B30 F6 C8 87      [ 5] 1624 	ldb	_levelNumber	;  levelNumber.27, levelNumber
   3B33 4F            [ 2] 1625 	clra		;zero_extendqihi: R:b -> R:d	;  levelNumber.27, levelNumber.27
   3B34 58            [ 2] 1626 	aslb	; 
   3B35 49            [ 2] 1627 	rola	; 
   3B36 1F 01         [ 6] 1628 	tfr	d,x	;  levelNumber.27, tmp59
   3B38 AE 89 5D BA   [ 9] 1629 	ldx	_levels,x	; , levels
   3B3C BF C9 1D      [ 6] 1630 	stx	_level	; , level
                           1631 ;----- asm -----
                           1632 ;  366 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1633 	; #ENR#[310]    initSwatches();
                           1634 ;  0 "" 2
                           1635 ;--- end asm ---
   3B3F BD 49 70      [ 8] 1636 	jsr	_initSwatches	; 
                           1637 ;----- asm -----
                           1638 ;  368 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1639 	; #ENR#[311]    initLevel();
                           1640 ;  0 "" 2
                           1641 ;--- end asm ---
   3B42 BD 4D FE      [ 8] 1642 	jsr	_initLevel	; 
                           1643 ;----- asm -----
                           1644 ;  370 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1645 	; #ENR#[312]    blockX = level->start.x;
                           1646 ;  0 "" 2
                           1647 ;--- end asm ---
   3B45 BE C9 1D      [ 6] 1648 	ldx	_level	;  level, level
   3B48 E6 02         [ 5] 1649 	ldb	2,x	; , <variable>.start.x
   3B4A F7 C8 E7      [ 5] 1650 	stb	_blockX	; , blockX
                           1651 ;----- asm -----
                           1652 ;  372 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1653 	; #ENR#[313]    blockY = level->start.y;
                           1654 ;  0 "" 2
                           1655 ;--- end asm ---
   3B4D E6 03         [ 5] 1656 	ldb	3,x	; , <variable>.start.y
   3B4F F7 C8 E8      [ 5] 1657 	stb	_blockY	; , blockY
                           1658 ;----- asm -----
                           1659 ;  374 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1660 	; #ENR#[314]    blockStartLevel();
                           1661 ;  0 "" 2
                           1662 ;--- end asm ---
   3B52 BD 09 03      [ 8] 1663 	jsr	_blockStartLevel	; 
                           1664 ;----- asm -----
                           1665 ;  376 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1666 	; #ENR#[315]    blockYOfs = -30;
                           1667 ;  0 "" 2
                           1668 ;--- end asm ---
   3B55 C6 E2         [ 2] 1669 	ldb	#-30	; ,
   3B57 F7 C8 E3      [ 5] 1670 	stb	_blockYOfs	; , blockYOfs
                           1671 ;----- asm -----
                           1672 ;  378 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1673 	; #ENR#[316]    gameState = BlockMovingToStart;
                           1674 ;  0 "" 2
                           1675 ;--- end asm ---
   3B5A C6 04         [ 2] 1676 	ldb	#4	; ,
   3B5C F7 C9 1C      [ 5] 1677 	stb	_gameState	; , gameState
                           1678 ;----- asm -----
                           1679 ;  380 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1680 	; #ENR#[317]    changeMusic(startMusic);
                           1681 ;  0 "" 2
                           1682 ;--- end asm ---
   3B5F 8E 42 0E      [ 3] 1683 	ldx	#_startMusic	; ,
   3B62 BD 36 63      [ 8] 1684 	jsr	_changeMusic	; 
                           1685 ;----- asm -----
                           1686 ;  382 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1687 	; #ENR#[318]    vecx[VECX_MUSIC] = VECX_START_MUSIC;
                           1688 ;  0 "" 2
                           1689 ;--- end asm ---
   3B65 C6 02         [ 2] 1690 	ldb	#2	; ,
   3B67 E7 9F C8 82   [ 9] 1691 	stb	[_vecx]	; ,* vecx
                           1692 ;----- asm -----
                           1693 ;  384 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1694 	; #ENR#[319]    if (!arcadeMode) {
                           1695 ;  0 "" 2
                           1696 ;--- end asm ---
   3B6B 7D C9 19      [ 7] 1697 	tst	_arcadeMode	;  arcadeMode
   3B6E 26 09         [ 3] 1698 	bne	L56	; 
                           1699 ;----- asm -----
                           1700 ;  386 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1701 	; #ENR#[320]        moveCount = 0;
                           1702 ;  0 "" 2
                           1703 ;--- end asm ---
   3B70 CC 00 00      [ 3] 1704 	ldd	#0	; ,
   3B73 FD C9 14      [ 6] 1705 	std	_moveCount	; , moveCount
                           1706 ;----- asm -----
                           1707 ;  388 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1708 	; #ENR#[321]        updateInfoText();
                           1709 ;  0 "" 2
                           1710 ;--- end asm ---
   3B76 BD 3A 67      [ 8] 1711 	jsr	_updateInfoText	; 
   3B79                    1712 L56:
                           1713 ;----- asm -----
                           1714 ;  391 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1715 	; #ENR#[323]    si = 0;
                           1716 ;  0 "" 2
                           1717 ;--- end asm ---
   3B79 7F C8 F2      [ 7] 1718 	clr	_si	;  si
   3B7C 32 63         [ 5] 1719 	leas	3,s	; ,,
   3B7E 35 E0         [ 8] 1720 	puls	y,u,pc	; 
   3B80                    1721 LC4:
   3B80 41                 1722 	.byte	0x41
   3B81 52                 1723 	.byte	0x52
   3B82 43                 1724 	.byte	0x43
   3B83 41                 1725 	.byte	0x41
   3B84 44                 1726 	.byte	0x44
   3B85 45                 1727 	.byte	0x45
   3B86 20                 1728 	.byte	0x20
   3B87 4D                 1729 	.byte	0x4D
   3B88 4F                 1730 	.byte	0x4F
   3B89 44                 1731 	.byte	0x44
   3B8A 45                 1732 	.byte	0x45
   3B8B 80                 1733 	.byte	0x80
   3B8C 00                 1734 	.byte	0x00
   3B8D                    1735 LC5:
   3B8D 31                 1736 	.byte	0x31
   3B8E 20                 1737 	.byte	0x20
   3B8F 53                 1738 	.byte	0x53
   3B90 45                 1739 	.byte	0x45
   3B91 54                 1740 	.byte	0x54
   3B92 20                 1741 	.byte	0x20
   3B93 31                 1742 	.byte	0x31
   3B94 80                 1743 	.byte	0x80
   3B95 00                 1744 	.byte	0x00
   3B96                    1745 LC6:
   3B96 32                 1746 	.byte	0x32
   3B97 20                 1747 	.byte	0x20
   3B98 53                 1748 	.byte	0x53
   3B99 45                 1749 	.byte	0x45
   3B9A 54                 1750 	.byte	0x54
   3B9B 20                 1751 	.byte	0x20
   3B9C 32                 1752 	.byte	0x32
   3B9D 80                 1753 	.byte	0x80
   3B9E 00                 1754 	.byte	0x00
   3B9F                    1755 LC7:
   3B9F 33                 1756 	.byte	0x33
   3BA0 20                 1757 	.byte	0x20
   3BA1 53                 1758 	.byte	0x53
   3BA2 45                 1759 	.byte	0x45
   3BA3 54                 1760 	.byte	0x54
   3BA4 20                 1761 	.byte	0x20
   3BA5 33                 1762 	.byte	0x33
   3BA6 80                 1763 	.byte	0x80
   3BA7 00                 1764 	.byte	0x00
   3BA8                    1765 LC8:
   3BA8 34                 1766 	.byte	0x34
   3BA9 20                 1767 	.byte	0x20
   3BAA 53                 1768 	.byte	0x53
   3BAB 45                 1769 	.byte	0x45
   3BAC 54                 1770 	.byte	0x54
   3BAD 20                 1771 	.byte	0x20
   3BAE 34                 1772 	.byte	0x34
   3BAF 80                 1773 	.byte	0x80
   3BB0 00                 1774 	.byte	0x00
                           1775 	.globl _arcadeMenu
   3BB1                    1776 _arcadeMenu:
   3BB1 34 40         [ 6] 1777 	pshs	u	; 
   3BB3 32 7C         [ 5] 1778 	leas	-4,s	; ,,
                           1779 ;----- asm -----
                           1780 ;  1069 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1781 	; #ENR#[845]    Read_Btns();
                           1782 ;  0 "" 2
                           1783 ;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3BB5 BD F1 BA      [ 8] 1784 	jsr ___Read_Btns; BIOS call
                           1785 ;  0 "" 2
                           1786 ;  1071 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1787 	; #ENR#[846]    Intensity_a(0x5f);
                           1788 ;  0 "" 2
                           1789 ;--- end asm ---
   3BB8 C6 5F         [ 2] 1790 	ldb	#95	; ,
   3BBA E7 63         [ 5] 1791 	stb	3,s	; , a
                           1792 ;----- asm -----
                           1793 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3BBC A6 63         [ 5] 1794 	lda 3,s	;  a
   3BBE BD F2 AB      [ 8] 1795 	jsr ___Intensity_a; BIOS call
                           1796 ;  0 "" 2
                           1797 ;  1073 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1798 	; #ENR#[847]    Vec_Text_Width = 90;
                           1799 ;  0 "" 2
                           1800 ;--- end asm ---
   3BC1 C6 5A         [ 2] 1801 	ldb	#90	; ,
   3BC3 F7 C8 2B      [ 5] 1802 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1803 ;----- asm -----
                           1804 ;  1075 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1805 	; #ENR#[848]    Print_Str_d(100, -70, "ARCADE MODE€");
                           1806 ;  0 "" 2
                           1807 ;--- end asm ---
   3BC6 CB 0A         [ 2] 1808 	addb	#10	; ,
   3BC8 E7 63         [ 5] 1809 	stb	3,s	; , a
   3BCA C6 BA         [ 2] 1810 	ldb	#-70	; ,
   3BCC E7 62         [ 5] 1811 	stb	2,s	; , b
   3BCE 8E 3B 80      [ 3] 1812 	ldx	#LC4	; ,
   3BD1 AF E4         [ 5] 1813 	stx	,s	; , u
                           1814 ;----- asm -----
                           1815 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3BD3 A6 63         [ 5] 1816 	lda 3,s	;  a
   3BD5 E6 62         [ 5] 1817 	ldb 2,s	;  b
   3BD7 EE E4         [ 5] 1818 	ldu ,s	;  u
   3BD9 BD F3 7A      [ 8] 1819 	jsr ___Print_Str_d; BIOS call
                           1820 ;  0 "" 2
                           1821 ;  1077 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1822 	; #ENR#[849]    Print_Str_d(50, -110, "1 SET 1€");
                           1823 ;  0 "" 2
                           1824 ;--- end asm ---
   3BDC C6 32         [ 2] 1825 	ldb	#50	; ,
   3BDE E7 62         [ 5] 1826 	stb	2,s	; , a
   3BE0 C6 92         [ 2] 1827 	ldb	#-110	; ,
   3BE2 E7 63         [ 5] 1828 	stb	3,s	; , b
   3BE4 8E 3B 8D      [ 3] 1829 	ldx	#LC5	; ,
   3BE7 AF E4         [ 5] 1830 	stx	,s	; , u
                           1831 ;----- asm -----
                           1832 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3BE9 A6 62         [ 5] 1833 	lda 2,s	;  a
   3BEB E6 63         [ 5] 1834 	ldb 3,s	;  b
   3BED EE E4         [ 5] 1835 	ldu ,s	;  u
   3BEF BD F3 7A      [ 8] 1836 	jsr ___Print_Str_d; BIOS call
                           1837 ;  0 "" 2
                           1838 ;  1079 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1839 	; #ENR#[850]    Print_Str_d(20, -110, "2 SET 2€");
                           1840 ;  0 "" 2
                           1841 ;--- end asm ---
   3BF2 C6 14         [ 2] 1842 	ldb	#20	; ,
   3BF4 E7 63         [ 5] 1843 	stb	3,s	; , a
   3BF6 C6 92         [ 2] 1844 	ldb	#-110	; ,
   3BF8 E7 62         [ 5] 1845 	stb	2,s	; , b
   3BFA 8E 3B 96      [ 3] 1846 	ldx	#LC6	; ,
   3BFD AF E4         [ 5] 1847 	stx	,s	; , u
                           1848 ;----- asm -----
                           1849 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3BFF A6 63         [ 5] 1850 	lda 3,s	;  a
   3C01 E6 62         [ 5] 1851 	ldb 2,s	;  b
   3C03 EE E4         [ 5] 1852 	ldu ,s	;  u
   3C05 BD F3 7A      [ 8] 1853 	jsr ___Print_Str_d; BIOS call
                           1854 ;  0 "" 2
                           1855 ;  1081 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1856 	; #ENR#[851]    Print_Str_d(-10, -110, "3 SET 3€");
                           1857 ;  0 "" 2
                           1858 ;--- end asm ---
   3C08 C6 F6         [ 2] 1859 	ldb	#-10	; ,
   3C0A E7 62         [ 5] 1860 	stb	2,s	; , a
   3C0C C6 92         [ 2] 1861 	ldb	#-110	; ,
   3C0E E7 63         [ 5] 1862 	stb	3,s	; , b
   3C10 8E 3B 9F      [ 3] 1863 	ldx	#LC7	; ,
   3C13 AF E4         [ 5] 1864 	stx	,s	; , u
                           1865 ;----- asm -----
                           1866 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3C15 A6 62         [ 5] 1867 	lda 2,s	;  a
   3C17 E6 63         [ 5] 1868 	ldb 3,s	;  b
   3C19 EE E4         [ 5] 1869 	ldu ,s	;  u
   3C1B BD F3 7A      [ 8] 1870 	jsr ___Print_Str_d; BIOS call
                           1871 ;  0 "" 2
                           1872 ;  1083 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1873 	; #ENR#[852]    Print_Str_d(-40, -110, "4 SET 4€");
                           1874 ;  0 "" 2
                           1875 ;--- end asm ---
   3C1E C6 D8         [ 2] 1876 	ldb	#-40	; ,
   3C20 E7 63         [ 5] 1877 	stb	3,s	; , a
   3C22 C6 92         [ 2] 1878 	ldb	#-110	; ,
   3C24 E7 62         [ 5] 1879 	stb	2,s	; , b
   3C26 8E 3B A8      [ 3] 1880 	ldx	#LC8	; ,
   3C29 AF E4         [ 5] 1881 	stx	,s	; , u
                           1882 ;----- asm -----
                           1883 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3C2B A6 63         [ 5] 1884 	lda 3,s	;  a
   3C2D E6 62         [ 5] 1885 	ldb 2,s	;  b
   3C2F EE E4         [ 5] 1886 	ldu ,s	;  u
   3C31 BD F3 7A      [ 8] 1887 	jsr ___Print_Str_d; BIOS call
                           1888 ;  0 "" 2
                           1889 ;  1085 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1890 	; #ENR#[853]    if (Vec_Buttons & 1) {
                           1891 ;  0 "" 2
                           1892 ;--- end asm ---
   3C34 F6 C8 11      [ 5] 1893 	ldb	_Vec_Buttons	; , Vec_Buttons
   3C37 C5 01         [ 2] 1894 	bitb	#1	; ,
   3C39 27 06         [ 3] 1895 	beq	L59	; 
                           1896 ;----- asm -----
                           1897 ;  1087 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1898 	; #ENR#[854]        arcadeSelection = 0;
                           1899 ;  0 "" 2
                           1900 ;--- end asm ---
   3C3B 7F C9 1A      [ 7] 1901 	clr	_arcadeSelection	;  arcadeSelection
                           1902 ;----- asm -----
                           1903 ;  1089 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1904 	; #ENR#[855]        startLevel();
                           1905 ;  0 "" 2
                           1906 ;--- end asm ---
   3C3E BD 3A A6      [ 8] 1907 	jsr	_startLevel	; 
   3C41                    1908 L59:
                           1909 ;----- asm -----
                           1910 ;  1092 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1911 	; #ENR#[857]    if (Vec_Buttons & 2) {
                           1912 ;  0 "" 2
                           1913 ;--- end asm ---
   3C41 F6 C8 11      [ 5] 1914 	ldb	_Vec_Buttons	; , Vec_Buttons
   3C44 C5 02         [ 2] 1915 	bitb	#2	; ,
   3C46 27 08         [ 3] 1916 	beq	L60	; 
                           1917 ;----- asm -----
                           1918 ;  1094 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1919 	; #ENR#[858]        arcadeSelection = 1;
                           1920 ;  0 "" 2
                           1921 ;--- end asm ---
   3C48 C6 01         [ 2] 1922 	ldb	#1	; ,
   3C4A F7 C9 1A      [ 5] 1923 	stb	_arcadeSelection	; , arcadeSelection
                           1924 ;----- asm -----
                           1925 ;  1096 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1926 	; #ENR#[859]        startLevel();
                           1927 ;  0 "" 2
                           1928 ;--- end asm ---
   3C4D BD 3A A6      [ 8] 1929 	jsr	_startLevel	; 
   3C50                    1930 L60:
                           1931 ;----- asm -----
                           1932 ;  1099 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1933 	; #ENR#[861]    if (Vec_Buttons & 4) {
                           1934 ;  0 "" 2
                           1935 ;--- end asm ---
   3C50 F6 C8 11      [ 5] 1936 	ldb	_Vec_Buttons	; , Vec_Buttons
   3C53 C5 04         [ 2] 1937 	bitb	#4	; ,
   3C55 27 08         [ 3] 1938 	beq	L61	; 
                           1939 ;----- asm -----
                           1940 ;  1101 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1941 	; #ENR#[862]        arcadeSelection = 2;
                           1942 ;  0 "" 2
                           1943 ;--- end asm ---
   3C57 C6 02         [ 2] 1944 	ldb	#2	; ,
   3C59 F7 C9 1A      [ 5] 1945 	stb	_arcadeSelection	; , arcadeSelection
                           1946 ;----- asm -----
                           1947 ;  1103 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1948 	; #ENR#[863]        startLevel();
                           1949 ;  0 "" 2
                           1950 ;--- end asm ---
   3C5C BD 3A A6      [ 8] 1951 	jsr	_startLevel	; 
   3C5F                    1952 L61:
                           1953 ;----- asm -----
                           1954 ;  1106 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1955 	; #ENR#[865]    if (Vec_Buttons & 8) {
                           1956 ;  0 "" 2
                           1957 ;--- end asm ---
   3C5F F6 C8 11      [ 5] 1958 	ldb	_Vec_Buttons	; , Vec_Buttons
   3C62 C5 08         [ 2] 1959 	bitb	#8	; ,
   3C64 27 08         [ 3] 1960 	beq	L63	; 
                           1961 ;----- asm -----
                           1962 ;  1108 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1963 	; #ENR#[866]        arcadeSelection = 3;
                           1964 ;  0 "" 2
                           1965 ;--- end asm ---
   3C66 C6 03         [ 2] 1966 	ldb	#3	; ,
   3C68 F7 C9 1A      [ 5] 1967 	stb	_arcadeSelection	; , arcadeSelection
                           1968 ;----- asm -----
                           1969 ;  1110 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1970 	; #ENR#[867]        startLevel();
                           1971 ;  0 "" 2
                           1972 ;--- end asm ---
   3C6B BD 3A A6      [ 8] 1973 	jsr	_startLevel	; 
   3C6E                    1974 L63:
   3C6E 32 64         [ 5] 1975 	leas	4,s	; ,,
   3C70 35 C0         [ 7] 1976 	puls	u,pc	; 
   3C72                    1977 LC9:
   3C72 4D                 1978 	.byte	0x4D
   3C73 41                 1979 	.byte	0x41
   3C74 49                 1980 	.byte	0x49
   3C75 4E                 1981 	.byte	0x4E
   3C76 20                 1982 	.byte	0x20
   3C77 4D                 1983 	.byte	0x4D
   3C78 45                 1984 	.byte	0x45
   3C79 4E                 1985 	.byte	0x4E
   3C7A 55                 1986 	.byte	0x55
   3C7B 80                 1987 	.byte	0x80
   3C7C 00                 1988 	.byte	0x00
   3C7D                    1989 LC10:
   3C7D 31                 1990 	.byte	0x31
   3C7E 20                 1991 	.byte	0x20
   3C7F 50                 1992 	.byte	0x50
   3C80 55                 1993 	.byte	0x55
   3C81 5A                 1994 	.byte	0x5A
   3C82 5A                 1995 	.byte	0x5A
   3C83 4C                 1996 	.byte	0x4C
   3C84 45                 1997 	.byte	0x45
   3C85 20                 1998 	.byte	0x20
   3C86 4D                 1999 	.byte	0x4D
   3C87 4F                 2000 	.byte	0x4F
   3C88 44                 2001 	.byte	0x44
   3C89 45                 2002 	.byte	0x45
   3C8A 80                 2003 	.byte	0x80
   3C8B 00                 2004 	.byte	0x00
   3C8C                    2005 LC11:
   3C8C 32                 2006 	.byte	0x32
   3C8D 20                 2007 	.byte	0x20
   3C8E 41                 2008 	.byte	0x41
   3C8F 52                 2009 	.byte	0x52
   3C90 43                 2010 	.byte	0x43
   3C91 41                 2011 	.byte	0x41
   3C92 44                 2012 	.byte	0x44
   3C93 45                 2013 	.byte	0x45
   3C94 20                 2014 	.byte	0x20
   3C95 4D                 2015 	.byte	0x4D
   3C96 4F                 2016 	.byte	0x4F
   3C97 44                 2017 	.byte	0x44
   3C98 45                 2018 	.byte	0x45
   3C99 80                 2019 	.byte	0x80
   3C9A 00                 2020 	.byte	0x00
   3C9B                    2021 LC12:
   3C9B 33                 2022 	.byte	0x33
   3C9C 20                 2023 	.byte	0x20
   3C9D 43                 2024 	.byte	0x43
   3C9E 4C                 2025 	.byte	0x4C
   3C9F 45                 2026 	.byte	0x45
   3CA0 41                 2027 	.byte	0x41
   3CA1 52                 2028 	.byte	0x52
   3CA2 20                 2029 	.byte	0x20
   3CA3 48                 2030 	.byte	0x48
   3CA4 49                 2031 	.byte	0x49
   3CA5 47                 2032 	.byte	0x47
   3CA6 48                 2033 	.byte	0x48
   3CA7 53                 2034 	.byte	0x53
   3CA8 43                 2035 	.byte	0x43
   3CA9 4F                 2036 	.byte	0x4F
   3CAA 52                 2037 	.byte	0x52
   3CAB 45                 2038 	.byte	0x45
   3CAC 80                 2039 	.byte	0x80
   3CAD 00                 2040 	.byte	0x00
                           2041 	.globl _mainMenu
   3CAE                    2042 _mainMenu:
   3CAE 34 40         [ 6] 2043 	pshs	u	; 
   3CB0 32 7C         [ 5] 2044 	leas	-4,s	; ,,
                           2045 ;----- asm -----
                           2046 ;  1024 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2047 	; #ENR#[819]    Read_Btns();
                           2048 ;  0 "" 2
                           2049 ;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3CB2 BD F1 BA      [ 8] 2050 	jsr ___Read_Btns; BIOS call
                           2051 ;  0 "" 2
                           2052 ;  1026 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2053 	; #ENR#[820]    Intensity_a(0x5f);
                           2054 ;  0 "" 2
                           2055 ;--- end asm ---
   3CB5 C6 5F         [ 2] 2056 	ldb	#95	; ,
   3CB7 E7 62         [ 5] 2057 	stb	2,s	; , a
                           2058 ;----- asm -----
                           2059 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3CB9 A6 62         [ 5] 2060 	lda 2,s	;  a
   3CBB BD F2 AB      [ 8] 2061 	jsr ___Intensity_a; BIOS call
                           2062 ;  0 "" 2
                           2063 ;  1028 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2064 	; #ENR#[821]    Vec_Text_Width = 90;
                           2065 ;  0 "" 2
                           2066 ;--- end asm ---
   3CBE C6 5A         [ 2] 2067 	ldb	#90	; ,
   3CC0 F7 C8 2B      [ 5] 2068 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           2069 ;----- asm -----
                           2070 ;  1030 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2071 	; #ENR#[822]    Print_Str_d(100, -70, "MAIN MENU€");
                           2072 ;  0 "" 2
                           2073 ;--- end asm ---
   3CC3 CB 0A         [ 2] 2074 	addb	#10	; ,
   3CC5 E7 62         [ 5] 2075 	stb	2,s	; , a
   3CC7 C6 BA         [ 2] 2076 	ldb	#-70	; ,
   3CC9 E7 63         [ 5] 2077 	stb	3,s	; , b
   3CCB 8E 3C 72      [ 3] 2078 	ldx	#LC9	; ,
   3CCE AF E4         [ 5] 2079 	stx	,s	; , u
                           2080 ;----- asm -----
                           2081 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3CD0 A6 62         [ 5] 2082 	lda 2,s	;  a
   3CD2 E6 63         [ 5] 2083 	ldb 3,s	;  b
   3CD4 EE E4         [ 5] 2084 	ldu ,s	;  u
   3CD6 BD F3 7A      [ 8] 2085 	jsr ___Print_Str_d; BIOS call
                           2086 ;  0 "" 2
                           2087 ;  1032 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2088 	; #ENR#[823]    Print_Str_d(50, -110, "1 PUZZLE MODE€");
                           2089 ;  0 "" 2
                           2090 ;--- end asm ---
   3CD9 C6 32         [ 2] 2091 	ldb	#50	; ,
   3CDB E7 63         [ 5] 2092 	stb	3,s	; , a
   3CDD C6 92         [ 2] 2093 	ldb	#-110	; ,
   3CDF E7 62         [ 5] 2094 	stb	2,s	; , b
   3CE1 8E 3C 7D      [ 3] 2095 	ldx	#LC10	; ,
   3CE4 AF E4         [ 5] 2096 	stx	,s	; , u
                           2097 ;----- asm -----
                           2098 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3CE6 A6 63         [ 5] 2099 	lda 3,s	;  a
   3CE8 E6 62         [ 5] 2100 	ldb 2,s	;  b
   3CEA EE E4         [ 5] 2101 	ldu ,s	;  u
   3CEC BD F3 7A      [ 8] 2102 	jsr ___Print_Str_d; BIOS call
                           2103 ;  0 "" 2
                           2104 ;  1034 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2105 	; #ENR#[824]    Print_Str_d(20, -110, "2 ARCADE MODE€");
                           2106 ;  0 "" 2
                           2107 ;--- end asm ---
   3CEF C6 14         [ 2] 2108 	ldb	#20	; ,
   3CF1 E7 62         [ 5] 2109 	stb	2,s	; , a
   3CF3 C6 92         [ 2] 2110 	ldb	#-110	; ,
   3CF5 E7 63         [ 5] 2111 	stb	3,s	; , b
   3CF7 8E 3C 8C      [ 3] 2112 	ldx	#LC11	; ,
   3CFA AF E4         [ 5] 2113 	stx	,s	; , u
                           2114 ;----- asm -----
                           2115 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3CFC A6 62         [ 5] 2116 	lda 2,s	;  a
   3CFE E6 63         [ 5] 2117 	ldb 3,s	;  b
   3D00 EE E4         [ 5] 2118 	ldu ,s	;  u
   3D02 BD F3 7A      [ 8] 2119 	jsr ___Print_Str_d; BIOS call
                           2120 ;  0 "" 2
                           2121 ;  1036 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2122 	; #ENR#[825]    Print_Str_d(-10, -110, "3 CLEAR HIGHSCORE€");
                           2123 ;  0 "" 2
                           2124 ;--- end asm ---
   3D05 C6 F6         [ 2] 2125 	ldb	#-10	; ,
   3D07 E7 63         [ 5] 2126 	stb	3,s	; , a
   3D09 C6 92         [ 2] 2127 	ldb	#-110	; ,
   3D0B E7 62         [ 5] 2128 	stb	2,s	; , b
   3D0D 8E 3C 9B      [ 3] 2129 	ldx	#LC12	; ,
   3D10 AF E4         [ 5] 2130 	stx	,s	; , u
                           2131 ;----- asm -----
                           2132 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3D12 A6 63         [ 5] 2133 	lda 3,s	;  a
   3D14 E6 62         [ 5] 2134 	ldb 2,s	;  b
   3D16 EE E4         [ 5] 2135 	ldu ,s	;  u
   3D18 BD F3 7A      [ 8] 2136 	jsr ___Print_Str_d; BIOS call
                           2137 ;  0 "" 2
                           2138 ;  1038 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2139 	; #ENR#[826]    if (Vec_Buttons & 1) {
                           2140 ;  0 "" 2
                           2141 ;--- end asm ---
   3D1B F6 C8 11      [ 5] 2142 	ldb	_Vec_Buttons	; , Vec_Buttons
   3D1E C5 01         [ 2] 2143 	bitb	#1	; ,
   3D20 27 09         [ 3] 2144 	beq	L65	; 
                           2145 ;----- asm -----
                           2146 ;  1040 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2147 	; #ENR#[827]        arcadeMode = 0;
                           2148 ;  0 "" 2
                           2149 ;--- end asm ---
   3D22 7F C9 19      [ 7] 2150 	clr	_arcadeMode	;  arcadeMode
                           2151 ;----- asm -----
                           2152 ;  1042 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2153 	; #ENR#[828]        levelNumber = 0;
                           2154 ;  0 "" 2
                           2155 ;--- end asm ---
   3D25 7F C8 87      [ 7] 2156 	clr	_levelNumber	;  levelNumber
                           2157 ;----- asm -----
                           2158 ;  1044 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2159 	; #ENR#[829]        startLevel();
                           2160 ;  0 "" 2
                           2161 ;--- end asm ---
   3D28 BD 3A A6      [ 8] 2162 	jsr	_startLevel	; 
   3D2B                    2163 L65:
                           2164 ;----- asm -----
                           2165 ;  1047 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2166 	; #ENR#[831]    if (Vec_Buttons & 2) {
                           2167 ;  0 "" 2
                           2168 ;--- end asm ---
   3D2B F6 C8 11      [ 5] 2169 	ldb	_Vec_Buttons	; , Vec_Buttons
   3D2E C5 02         [ 2] 2170 	bitb	#2	; ,
   3D30 27 14         [ 3] 2171 	beq	L66	; 
                           2172 ;----- asm -----
                           2173 ;  1049 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2174 	; #ENR#[832]        frames = 0;
                           2175 ;  0 "" 2
                           2176 ;--- end asm ---
   3D32 CC 00 00      [ 3] 2177 	ldd	#0	; ,
   3D35 FD C9 16      [ 6] 2178 	std	_frames	; , frames
                           2179 ;----- asm -----
                           2180 ;  1051 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2181 	; #ENR#[833]        moveCount = 0;
                           2182 ;  0 "" 2
                           2183 ;--- end asm ---
   3D38 FD C9 14      [ 6] 2184 	std	_moveCount	; , moveCount
                           2185 ;----- asm -----
                           2186 ;  1053 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2187 	; #ENR#[834]        arcadeMode = 1;
                           2188 ;  0 "" 2
                           2189 ;--- end asm ---
   3D3B C6 01         [ 2] 2190 	ldb	#1	; ,
   3D3D F7 C9 19      [ 5] 2191 	stb	_arcadeMode	; , arcadeMode
                           2192 ;----- asm -----
                           2193 ;  1055 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2194 	; #ENR#[835]        arcadeIndex = 0;
                           2195 ;  0 "" 2
                           2196 ;--- end asm ---
   3D40 7F C9 1B      [ 7] 2197 	clr	_arcadeIndex	;  arcadeIndex
                           2198 ;----- asm -----
                           2199 ;  1057 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2200 	; #ENR#[836]        gameState = ArcadeMenu;
                           2201 ;  0 "" 2
                           2202 ;--- end asm ---
   3D43 F7 C9 1C      [ 5] 2203 	stb	_gameState	; , gameState
   3D46                    2204 L66:
                           2205 ;----- asm -----
                           2206 ;  1060 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2207 	; #ENR#[838]    if (Vec_Buttons & 4) {
                           2208 ;  0 "" 2
                           2209 ;--- end asm ---
   3D46 F6 C8 11      [ 5] 2210 	ldb	_Vec_Buttons	; , Vec_Buttons
   3D49 C5 04         [ 2] 2211 	bitb	#4	; ,
   3D4B 27 05         [ 3] 2212 	beq	L68	; 
                           2213 ;----- asm -----
                           2214 ;  1062 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2215 	; #ENR#[839]        gameState = ClearMenu;
                           2216 ;  0 "" 2
                           2217 ;--- end asm ---
   3D4D C6 03         [ 2] 2218 	ldb	#3	; ,
   3D4F F7 C9 1C      [ 5] 2219 	stb	_gameState	; , gameState
   3D52                    2220 L68:
   3D52 32 64         [ 5] 2221 	leas	4,s	; ,,
   3D54 35 C0         [ 7] 2222 	puls	u,pc	; 
                           2223 	.globl _blockFalling
   3D56                    2224 _blockFalling:
   3D56 32 7F         [ 5] 2225 	leas	-1,s	; ,,
                           2226 ;----- asm -----
                           2227 ;  960 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2228 	; #ENR#[779]    drawField();
                           2229 ;  0 "" 2
                           2230 ;--- end asm ---
   3D58 BD 36 6C      [ 8] 2231 	jsr	_drawField	; 
                           2232 ;----- asm -----
                           2233 ;  962 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2234 	; #ENR#[780]    blockYOfs++;
                           2235 ;  0 "" 2
                           2236 ;--- end asm ---
   3D5B F6 C8 E3      [ 5] 2237 	ldb	_blockYOfs	; , blockYOfs
   3D5E 5C            [ 2] 2238 	incb	; 
   3D5F E7 E4         [ 4] 2239 	stb	,s	; , blockYOfs.68
   3D61 F7 C8 E3      [ 5] 2240 	stb	_blockYOfs	; , blockYOfs
                           2241 ;----- asm -----
                           2242 ;  964 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2243 	; #ENR#[781]    if (blockYOfs < 12) {
                           2244 ;  0 "" 2
                           2245 ;--- end asm ---
   3D64 C1 0B         [ 2] 2246 	cmpb	#11	;cmpqi:	; ,
   3D66 2E 0A         [ 3] 2247 	bgt	L70	; 
                           2248 ;----- asm -----
                           2249 ;  966 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2250 	; #ENR#[782]        drawBlock(-blockYOfs*blockYOfs);
                           2251 ;  0 "" 2
                           2252 ;--- end asm ---
   3D68 50            [ 2] 2253 	negb	;  tmp28
   3D69 A6 E4         [ 4] 2254 	lda	,s	;mulqihi3	;  blockYOfs.68
   3D6B 3D            [11] 2255 	mul
                           2256 		;movlsbqihi: D->B
   3D6C BD 09 DC      [ 8] 2257 	jsr	_drawBlock	; 
                           2258 ;----- asm -----
                           2259 ;  968 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2260 	; #ENR#[783]        doBlockAnimation();
                           2261 ;  0 "" 2
                           2262 ;--- end asm ---
   3D6F BD 08 DA      [ 8] 2263 	jsr	_doBlockAnimation	; 
   3D72                    2264 L70:
                           2265 ;----- asm -----
                           2266 ;  971 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2267 	; #ENR#[785]    if (blockYOfs == 50) {
                           2268 ;  0 "" 2
                           2269 ;--- end asm ---
   3D72 F6 C8 E3      [ 5] 2270 	ldb	_blockYOfs	; , blockYOfs
   3D75 C1 32         [ 2] 2271 	cmpb	#50	;cmpqi:	; ,
   3D77 26 03         [ 3] 2272 	bne	L72	; 
                           2273 ;----- asm -----
                           2274 ;  973 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2275 	; #ENR#[786]        startLevel();
                           2276 ;  0 "" 2
                           2277 ;--- end asm ---
   3D79 BD 3A A6      [ 8] 2278 	jsr	_startLevel	; 
   3D7C                    2279 L72:
   3D7C 32 61         [ 5] 2280 	leas	1,s	; ,,
   3D7E 39            [ 5] 2281 	rts
                           2282 	.globl _nextLevel
   3D7F                    2283 _nextLevel:
                           2284 ;----- asm -----
                           2285 ;  680 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2286 	; #ENR#[606]    levelNumber++;
                           2287 ;  0 "" 2
                           2288 ;--- end asm ---
   3D7F F6 C8 87      [ 5] 2289 	ldb	_levelNumber	;  levelNumber.35, levelNumber
   3D82 5C            [ 2] 2290 	incb	;  levelNumber.36
                           2291 ; Applied peep: 2 (no load after store)
                           2292 ;----- asm -----
                           2293 ;  682 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2294 	; #ENR#[607]    if (levelNumber >= levelCount) {
                           2295 ;  0 "" 2
                           2296 ;--- end asm ---
   3D83 F7 C8 87      [ 5] 2297 	stb	_levelNumber	;  levelNumber.36, levelNumber
                           2298 ; ORG>	stb	_levelNumber	;  levelNumber.36, levelNumber
                           2299 ; ORG>;----- asm -----
                           2300 ; ORG>;  682 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2301 ; ORG>	; $ENR$[607]    if (levelNumber >= levelCount) {
                           2302 ; ORG>;  0 "" 2
                           2303 ; ORG>;--- end asm ---
                           2304 ; ORG>	ldb	_levelNumber	;  levelNumber.37, levelNumber
   3D86 F1 4F 43      [ 5] 2305 	cmpb	_levelCount	;cmpqi:	;  levelNumber.37, levelCount
   3D89 25 09         [ 3] 2306 	blo	L74	; 
                           2307 ;----- asm -----
                           2308 ;  684 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2309 	; #ENR#[608]        levelNumber = 0;
                           2310 ;  0 "" 2
                           2311 ;--- end asm ---
   3D8B 7F C8 87      [ 7] 2312 	clr	_levelNumber	;  levelNumber
                           2313 ;----- asm -----
                           2314 ;  686 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2315 	; #ENR#[609]        setBank(nextBank);
                           2316 ;  0 "" 2
                           2317 ;--- end asm ---
   3D8E F6 4F 45      [ 5] 2318 	ldb	_nextBank	; , nextBank
   3D91 BD 39 88      [ 8] 2319 	jsr	_setBank	; 
   3D94                    2320 L74:
                           2321 ;----- asm -----
                           2322 ;  689 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2323 	; #ENR#[611]    startLevel();
                           2324 ;  0 "" 2
                           2325 ;--- end asm ---
   3D94 BD 3A A6      [ 8] 2326 	jsr	_startLevel	; 
   3D97 39            [ 5] 2327 	rts
                           2328 	.globl _blockMovingAtEnd
   3D98                    2329 _blockMovingAtEnd:
   3D98 34 60         [ 7] 2330 	pshs	y,u	; 
   3D9A 32 7B         [ 5] 2331 	leas	-5,s	; ,,
                           2332 ;----- asm -----
                           2333 ;  980 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2334 	; #ENR#[792]    drawField();
                           2335 ;  0 "" 2
                           2336 ;--- end asm ---
   3D9C BD 36 6C      [ 8] 2337 	jsr	_drawField	; 
                           2338 ;----- asm -----
                           2339 ;  982 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2340 	; #ENR#[793]    drawBlock(blockYOfs);
                           2341 ;  0 "" 2
                           2342 ;--- end asm ---
   3D9F F6 C8 E3      [ 5] 2343 	ldb	_blockYOfs	; , blockYOfs
   3DA2 BD 09 DC      [ 8] 2344 	jsr	_drawBlock	; 
                           2345 ;----- asm -----
                           2346 ;  984 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2347 	; #ENR#[794]    blockYOfs++;
                           2348 ;  0 "" 2
                           2349 ;--- end asm ---
   3DA5 F6 C8 E3      [ 5] 2350 	ldb	_blockYOfs	;  blockYOfs.70, blockYOfs
   3DA8 5C            [ 2] 2351 	incb	;  blockYOfs.70
   3DA9 F7 C8 E3      [ 5] 2352 	stb	_blockYOfs	;  blockYOfs.70, blockYOfs
                           2353 ;----- asm -----
                           2354 ;  986 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2355 	; #ENR#[795]    if (blockYOfs == 30) {
                           2356 ;  0 "" 2
                           2357 ;--- end asm ---
   3DAC C1 1E         [ 2] 2358 	cmpb	#30	;cmpqi:	;  blockYOfs.70,
   3DAE 10 26 00 C0   [ 6] 2359 	lbne	L81	; 
                           2360 ;----- asm -----
                           2361 ;  988 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2362 	; #ENR#[796]        if (moveCount < levelHighscore) {
                           2363 ;  0 "" 2
                           2364 ;--- end asm ---
   3DB2 BE C9 14      [ 6] 2365 	ldx	_moveCount	;  moveCount.71, moveCount
   3DB5 BC C9 12      [ 7] 2366 	cmpx	_levelHighscore	;cmphi:	;  moveCount.71, levelHighscore
   3DB8 24 33         [ 3] 2367 	bhs	L78	; 
                           2368 ;----- asm -----
                           2369 ;  990 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2370 	; #ENR#[797]            writeEeprom((uint8_t) (levelOffset + 2 * levelNumber), (uint8_t) (moveCount & 0xff));
                           2371 ;  0 "" 2
                           2372 ;--- end asm ---
   3DBA F6 C8 87      [ 5] 2373 	ldb	_levelNumber	; , levelNumber
   3DBD 58            [ 2] 2374 	aslb	;  tmp35
   3DBE FB 4F 44      [ 5] 2375 	addb	_levelOffset	;  tmp35, levelOffset
   3DC1 E7 E4         [ 4] 2376 	stb	,s	;  tmp35,
   3DC3 1F 10         [ 6] 2377 	tfr	x,d	;  moveCount.71,
   3DC5 34 04         [ 6] 2378 	pshs	b	; 
   3DC7 E6 61         [ 5] 2379 	ldb	1,s	; ,
   3DC9 BD 39 9C      [ 8] 2380 	jsr	_writeEeprom	; 
                           2381 ;----- asm -----
                           2382 ;  992 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2383 	; #ENR#[798]            writeEeprom((uint8_t) (levelOffset + 2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
                           2384 ;  0 "" 2
                           2385 ;--- end asm ---
   3DCC F6 C8 87      [ 5] 2386 	ldb	_levelNumber	; , levelNumber
   3DCF E7 61         [ 5] 2387 	stb	1,s	; , levelNumber.75
   3DD1 F6 4F 44      [ 5] 2388 	ldb	_levelOffset	; , levelOffset
   3DD4 5C            [ 2] 2389 	incb	; 
   3DD5 E7 65         [ 5] 2390 	stb	5,s	; ,
   3DD7 E6 61         [ 5] 2391 	ldb	1,s	;  tmp38, levelNumber.75
   3DD9 58            [ 2] 2392 	aslb	;  tmp38
   3DDA EB 65         [ 5] 2393 	addb	5,s	;  tmp38,
   3DDC E7 64         [ 5] 2394 	stb	4,s	;  tmp38,
   3DDE FC C9 14      [ 6] 2395 	ldd	_moveCount	;  tmp40, moveCount
   3DE1 1F 89         [ 6] 2396 	tfr	a,b	; ,
   3DE3 4F            [ 2] 2397 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3DE4 34 04         [ 6] 2398 	pshs	b	;  tmp40
   3DE6 E6 65         [ 5] 2399 	ldb	5,s	; ,
   3DE8 BD 39 9C      [ 8] 2400 	jsr	_writeEeprom	; 
   3DEB 32 62         [ 5] 2401 	leas	2,s	; ,,
   3DED                    2402 L78:
                           2403 ;----- asm -----
                           2404 ;  995 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2405 	; #ENR#[800]        if (arcadeMode) {
                           2406 ;  0 "" 2
                           2407 ;--- end asm ---
   3DED 7D C9 19      [ 7] 2408 	tst	_arcadeMode	;  arcadeMode
   3DF0 10 27 00 7B   [ 6] 2409 	lbeq	L79	; 
                           2410 ;----- asm -----
                           2411 ;  997 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2412 	; #ENR#[801]            arcadeIndex++;
                           2413 ;  0 "" 2
                           2414 ;--- end asm ---
   3DF4 F6 C9 1B      [ 5] 2415 	ldb	_arcadeIndex	;  arcadeIndex.78, arcadeIndex
   3DF7 5C            [ 2] 2416 	incb	;  arcadeIndex.78
   3DF8 F7 C9 1B      [ 5] 2417 	stb	_arcadeIndex	;  arcadeIndex.78, arcadeIndex
                           2418 ;----- asm -----
                           2419 ;  999 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2420 	; #ENR#[802]            levelNumber = arcadeLevels[arcadeSelection][arcadeIndex];
                           2421 ;  0 "" 2
                           2422 ;--- end asm ---
   3DFB 4F            [ 2] 2423 	clra		;zero_extendqihi: R:b -> R:d	;  arcadeIndex.78,
   3DFC 1F 02         [ 6] 2424 	tfr	d,y	; , arcadeIndex.78
   3DFE F6 C9 1A      [ 5] 2425 	ldb	_arcadeSelection	; , arcadeSelection
   3E01 4F            [ 2] 2426 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3E02 ED 61         [ 6] 2427 	std	1,s	; ,
   3E04 58            [ 2] 2428 	aslb	; 
   3E05 49            [ 2] 2429 	rola	; 
   3E06 58            [ 2] 2430 	aslb	; 
   3E07 49            [ 2] 2431 	rola	; 
   3E08 EE 61         [ 6] 2432 	ldu	1,s	; ,
   3E0A 30 CB         [ 8] 2433 	leax	d,u	;  tmp46, tmp45,
   3E0C 1E 02         [ 8] 2434 	exg	d,y	; , arcadeIndex.78
   3E0E 30 8B         [ 8] 2435 	leax	d,x	;  tmp47,, tmp47
   3E10 1E 02         [ 8] 2436 	exg	d,y	; , arcadeIndex.78
   3E12 E6 89 42 86   [ 8] 2437 	ldb	_arcadeLevels,x	;  levelNumber.80, arcadeLevels
                           2438 ; Applied peep: 2 (no load after store)
                           2439 ;----- asm -----
                           2440 ;  1001 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2441 	; #ENR#[803]            if (levelNumber == 0) {
                           2442 ;  0 "" 2
                           2443 ;--- end asm ---
   3E16 F7 C8 87      [ 5] 2444 	stb	_levelNumber	;  levelNumber.80, levelNumber
                           2445 ; ORG>	stb	_levelNumber	;  levelNumber.80, levelNumber
                           2446 ; ORG>;----- asm -----
                           2447 ; ORG>;  1001 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2448 ; ORG>	; $ENR$[803]            if (levelNumber == 0) {
                           2449 ; ORG>;  0 "" 2
                           2450 ; ORG>;--- end asm ---
                           2451 ; ORG>	ldb	_levelNumber	;  levelNumber.81, levelNumber
   3E19 10 26 00 4D   [ 6] 2452 	lbne	L80	; 
                           2453 ;----- asm -----
                           2454 ;  1003 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2455 	; #ENR#[804]                gameState = ArcadeEnd;
                           2456 ;  0 "" 2
                           2457 ;--- end asm ---
   3E1D C6 02         [ 2] 2458 	ldb	#2	; ,
   3E1F F7 C9 1C      [ 5] 2459 	stb	_gameState	; , gameState
                           2460 ;----- asm -----
                           2461 ;  1005 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2462 	; #ENR#[805]                memcpy(infoText, "TIME: 000 SECONDS€", 18);
                           2463 ;  0 "" 2
                           2464 ;--- end asm ---
   3E22 8E 54 49      [ 3] 2465 	ldx	#21577	; ,
   3E25 BF C8 F3      [ 6] 2466 	stx	_infoText	; , infoText
   3E28 CE 4D 45      [ 3] 2467 	ldu	#19781	; ,
   3E2B FF C8 F5      [ 6] 2468 	stu	_infoText+2	; , infoText
   3E2E 8E 3A 20      [ 3] 2469 	ldx	#14880	; ,
   3E31 BF C8 F7      [ 6] 2470 	stx	_infoText+4	; , infoText
   3E34 CE 30 30      [ 3] 2471 	ldu	#12336	; ,
   3E37 FF C8 F9      [ 6] 2472 	stu	_infoText+6	; , infoText
   3E3A 8E 30 20      [ 3] 2473 	ldx	#12320	; ,
   3E3D BF C8 FB      [ 6] 2474 	stx	_infoText+8	; , infoText
   3E40 CE 53 45      [ 3] 2475 	ldu	#21317	; ,
   3E43 FF C8 FD      [ 6] 2476 	stu	_infoText+10	; , infoText
   3E46 8E 43 4F      [ 3] 2477 	ldx	#17231	; ,
   3E49 BF C8 FF      [ 6] 2478 	stx	_infoText+12	; , infoText
   3E4C CE 4E 44      [ 3] 2479 	ldu	#20036	; ,
   3E4F FF C9 01      [ 6] 2480 	stu	_infoText+14	; , infoText
   3E52 8E 53 80      [ 3] 2481 	ldx	#21376	; ,
   3E55 BF C9 03      [ 6] 2482 	stx	_infoText+16	; , infoText
                           2483 ;----- asm -----
                           2484 ;  1007 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2485 	; #ENR#[806]                itoa(moveCount, &infoText[6]);
                           2486 ;  0 "" 2
                           2487 ;--- end asm ---
   3E58 CE C8 F9      [ 3] 2488 	ldu	#_infoText+6	; ,
   3E5B EF E3         [ 8] 2489 	stu	,--s	; ,
   3E5D BE C9 14      [ 6] 2490 	ldx	_moveCount	; , moveCount
   3E60 BD 35 E4      [ 8] 2491 	jsr	_itoa	; 
                           2492 ;----- asm -----
                           2493 ;  1009 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2494 	; #ENR#[807]                arcadeMode = 0;
                           2495 ;  0 "" 2
                           2496 ;--- end asm ---
   3E63 7F C9 19      [ 7] 2497 	clr	_arcadeMode	;  arcadeMode
   3E66 32 62         [ 5] 2498 	leas	2,s	; ,,
   3E68 20 08         [ 3] 2499 	bra	L81	; 
   3E6A                    2500 L80:
                           2501 ;----- asm -----
                           2502 ;  1012 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2503 	; #ENR#[809]                startLevel();
                           2504 ;  0 "" 2
                           2505 ;--- end asm ---
   3E6A BD 3A A6      [ 8] 2506 	jsr	_startLevel	; 
   3E6D 20 03         [ 3] 2507 	bra	L81	; 
   3E6F                    2508 L79:
                           2509 ;----- asm -----
                           2510 ;  1016 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2511 	; #ENR#[812]		   nextLevel();
                           2512 ;  0 "" 2
                           2513 ;--- end asm ---
   3E6F BD 3D 7F      [ 8] 2514 	jsr	_nextLevel	; 
   3E72                    2515 L81:
   3E72 32 65         [ 5] 2516 	leas	5,s	; ,,
   3E74 35 E0         [ 8] 2517 	puls	y,u,pc	; 
                           2518 	.globl _moveBlock
   3E76                    2519 _moveBlock:
                           2520 ;----- asm -----
                           2521 ;  314 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2522 	; #ENR#[277]    moveBlockImpl(move);
                           2523 ;  0 "" 2
                           2524 ;--- end asm ---
   3E76 BD 06 33      [ 8] 2525 	jsr	_moveBlockImpl	; 
                           2526 ;----- asm -----
                           2527 ;  316 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2528 	; #ENR#[278]    if (!arcadeMode) {
                           2529 ;  0 "" 2
                           2530 ;--- end asm ---
   3E79 7D C9 19      [ 7] 2531 	tst	_arcadeMode	;  arcadeMode
   3E7C 26 10         [ 3] 2532 	bne	L85	; 
                           2533 ;----- asm -----
                           2534 ;  318 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2535 	; #ENR#[279]        if (moveCount < 999) moveCount++;
                           2536 ;  0 "" 2
                           2537 ;--- end asm ---
   3E7E BE C9 14      [ 6] 2538 	ldx	_moveCount	;  moveCount.13, moveCount
   3E81 8C 03 E6      [ 4] 2539 	cmpx	#998	;cmphi:	;  moveCount.13,
   3E84 22 05         [ 3] 2540 	bhi	L84	; 
   3E86 30 01         [ 5] 2541 	leax	1,x	; ,, moveCount.13
   3E88 BF C9 14      [ 6] 2542 	stx	_moveCount	; , moveCount
   3E8B                    2543 L84:
                           2544 ;----- asm -----
                           2545 ;  320 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2546 	; #ENR#[280]        updateInfoText();
                           2547 ;  0 "" 2
                           2548 ;--- end asm ---
   3E8B BD 3A 67      [ 8] 2549 	jsr	_updateInfoText	; 
   3E8E                    2550 L85:
   3E8E 39            [ 5] 2551 	rts
                           2552 	.globl _blockWaiting
   3E8F                    2553 _blockWaiting:
                           2554 ;----- asm -----
                           2555 ;  695 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2556 	; #ENR#[616]    drawField();
                           2557 ;  0 "" 2
                           2558 ;--- end asm ---
   3E8F BD 36 6C      [ 8] 2559 	jsr	_drawField	; 
                           2560 ;----- asm -----
                           2561 ;  697 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2562 	; #ENR#[617]    drawBlock(0);
                           2563 ;  0 "" 2
                           2564 ;--- end asm ---
   3E92 5F            [ 2] 2565 	clrb	; 
   3E93 BD 09 DC      [ 8] 2566 	jsr	_drawBlock	; 
                           2567 ;----- asm -----
                           2568 ;  699 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2569 	; #ENR#[618]    joybit();
                           2570 ;  0 "" 2
                           2571 ;  2354 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3E96 BD F1 F8      [ 8] 2572 	jsr ___Joy_Digital; BIOS call
                           2573 ;  0 "" 2
                           2574 ;  701 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2575 	; #ENR#[619]    if (pot0 < -10) {
                           2576 ;  0 "" 2
                           2577 ;--- end asm ---
   3E99 F6 C8 1B      [ 5] 2578 	ldb	-14309	;  D.2370,
   3E9C C1 F6         [ 2] 2579 	cmpb	#-10	;cmpqi:	;  D.2370,
   3E9E 2C 0C         [ 3] 2580 	bge	L87	; 
                           2581 ;----- asm -----
                           2582 ;  703 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2583 	; #ENR#[620]        moveBlock(Left);
                           2584 ;  0 "" 2
                           2585 ;--- end asm ---
   3EA0 5F            [ 2] 2586 	clrb	; 
   3EA1 BD 3E 76      [ 8] 2587 	jsr	_moveBlock	; 
                           2588 ;----- asm -----
                           2589 ;  705 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2590 	; #ENR#[621]        gameState = BlockMoving;
                           2591 ;  0 "" 2
                           2592 ;--- end asm ---
   3EA4 C6 06         [ 2] 2593 	ldb	#6	; ,
   3EA6 F7 C9 1C      [ 5] 2594 	stb	_gameState	; , gameState
   3EA9 7E 3E E3      [ 4] 2595 	jmp	L88	; 
   3EAC                    2596 L87:
   3EAC F6 C8 1B      [ 5] 2597 	ldb	-14309	;  D.2371,
   3EAF C1 0A         [ 2] 2598 	cmpb	#10	;cmpqi:	;  D.2371,
   3EB1 2F 0C         [ 3] 2599 	ble	L89	; 
                           2600 ;----- asm -----
                           2601 ;  708 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2602 	; #ENR#[623]        moveBlock(Right);
                           2603 ;  0 "" 2
                           2604 ;--- end asm ---
   3EB3 C6 02         [ 2] 2605 	ldb	#2	; ,
   3EB5 BD 3E 76      [ 8] 2606 	jsr	_moveBlock	; 
                           2607 ;----- asm -----
                           2608 ;  710 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2609 	; #ENR#[624]        gameState = BlockMoving;
                           2610 ;  0 "" 2
                           2611 ;--- end asm ---
   3EB8 C6 06         [ 2] 2612 	ldb	#6	; ,
   3EBA F7 C9 1C      [ 5] 2613 	stb	_gameState	; , gameState
   3EBD 20 24         [ 3] 2614 	bra	L88	; 
   3EBF                    2615 L89:
   3EBF F6 C8 1C      [ 5] 2616 	ldb	-14308	;  D.2373,
   3EC2 C1 F6         [ 2] 2617 	cmpb	#-10	;cmpqi:	;  D.2373,
   3EC4 2C 0C         [ 3] 2618 	bge	L90	; 
                           2619 ;----- asm -----
                           2620 ;  713 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2621 	; #ENR#[626]        moveBlock(Down);
                           2622 ;  0 "" 2
                           2623 ;--- end asm ---
   3EC6 C6 03         [ 2] 2624 	ldb	#3	; ,
   3EC8 BD 3E 76      [ 8] 2625 	jsr	_moveBlock	; 
                           2626 ;----- asm -----
                           2627 ;  715 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2628 	; #ENR#[627]        gameState = BlockMoving;
                           2629 ;  0 "" 2
                           2630 ;--- end asm ---
   3ECB C6 06         [ 2] 2631 	ldb	#6	; ,
   3ECD F7 C9 1C      [ 5] 2632 	stb	_gameState	; , gameState
   3ED0 20 11         [ 3] 2633 	bra	L88	; 
   3ED2                    2634 L90:
   3ED2 F6 C8 1C      [ 5] 2635 	ldb	-14308	;  D.2374,
   3ED5 C1 0A         [ 2] 2636 	cmpb	#10	;cmpqi:	;  D.2374,
   3ED7 2F 0A         [ 3] 2637 	ble	L88	; 
                           2638 ;----- asm -----
                           2639 ;  718 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2640 	; #ENR#[629]        moveBlock(Up);
                           2641 ;  0 "" 2
                           2642 ;--- end asm ---
   3ED9 C6 01         [ 2] 2643 	ldb	#1	; ,
   3EDB BD 3E 76      [ 8] 2644 	jsr	_moveBlock	; 
                           2645 ;----- asm -----
                           2646 ;  720 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2647 	; #ENR#[630]        gameState = BlockMoving;
                           2648 ;  0 "" 2
                           2649 ;--- end asm ---
   3EDE C6 06         [ 2] 2650 	ldb	#6	; ,
   3EE0 F7 C9 1C      [ 5] 2651 	stb	_gameState	; , gameState
   3EE3                    2652 L88:
                           2653 ;----- asm -----
                           2654 ;  724 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2655 	; #ENR#[633]#if 0
                           2656 ;  0 "" 2
                           2657 ;  769 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2658 	; #ENR#[660]    if (gameState == BlockMoving) {
                           2659 ;  0 "" 2
                           2660 ;--- end asm ---
   3EE3 F6 C9 1C      [ 5] 2661 	ldb	_gameState	; , gameState
   3EE6 C1 06         [ 2] 2662 	cmpb	#6	;cmpqi:	; ,
   3EE8 26 0C         [ 3] 2663 	bne	L91	; 
                           2664 ;----- asm -----
                           2665 ;  771 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2666 	; #ENR#[661]        changeMusic(movingMusic);
                           2667 ;  0 "" 2
                           2668 ;--- end asm ---
   3EEA 8E 42 68      [ 3] 2669 	ldx	#_movingMusic	; ,
   3EED BD 36 63      [ 8] 2670 	jsr	_changeMusic	; 
                           2671 ;----- asm -----
                           2672 ;  773 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2673 	; #ENR#[662]        vecx[VECX_MUSIC] = VECX_MOVING_MUSIC;
                           2674 ;  0 "" 2
                           2675 ;--- end asm ---
   3EF0 C6 03         [ 2] 2676 	ldb	#3	; ,
   3EF2 E7 9F C8 82   [ 9] 2677 	stb	[_vecx]	; ,* vecx
   3EF6                    2678 L91:
                           2679 ;----- asm -----
                           2680 ;  777 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2681 	; #ENR#[665]    Read_Btns();
                           2682 ;  0 "" 2
                           2683 ;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3EF6 BD F1 BA      [ 8] 2684 	jsr ___Read_Btns; BIOS call
                           2685 ;  0 "" 2
                           2686 ;  779 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2687 	; #ENR#[666]    if (Vec_Buttons & 1) {
                           2688 ;  0 "" 2
                           2689 ;--- end asm ---
   3EF9 F6 C8 11      [ 5] 2690 	ldb	_Vec_Buttons	; , Vec_Buttons
   3EFC C5 01         [ 2] 2691 	bitb	#1	; ,
   3EFE 27 08         [ 3] 2692 	beq	L92	; 
                           2693 ;----- asm -----
                           2694 ;  781 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2695 	; #ENR#[667]        if (splitMode) {
                           2696 ;  0 "" 2
                           2697 ;--- end asm ---
   3F00 7D C8 E6      [ 7] 2698 	tst	_splitMode	;  splitMode
   3F03 27 03         [ 3] 2699 	beq	L92	; 
                           2700 ;----- asm -----
                           2701 ;  783 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2702 	; #ENR#[668]            swapSplit();
                           2703 ;  0 "" 2
                           2704 ;--- end asm ---
   3F05 BD 09 B7      [ 8] 2705 	jsr	_swapSplit	; 
   3F08                    2706 L92:
                           2707 ;----- asm -----
                           2708 ;  788 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2709 	; #ENR#[672]    if ((Vec_Buttons & 2) && !arcadeMode) {
                           2710 ;  0 "" 2
                           2711 ;--- end asm ---
   3F08 F6 C8 11      [ 5] 2712 	ldb	_Vec_Buttons	; , Vec_Buttons
   3F0B C5 02         [ 2] 2713 	bitb	#2	; ,
   3F0D 27 08         [ 3] 2714 	beq	L93	; 
   3F0F 7D C9 19      [ 7] 2715 	tst	_arcadeMode	;  arcadeMode
   3F12 26 03         [ 3] 2716 	bne	L93	; 
                           2717 ;----- asm -----
                           2718 ;  790 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2719 	; #ENR#[673]		nextLevel();
                           2720 ;  0 "" 2
                           2721 ;--- end asm ---
   3F14 BD 3D 7F      [ 8] 2722 	jsr	_nextLevel	; 
   3F17                    2723 L93:
                           2724 ;----- asm -----
                           2725 ;  793 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2726 	; #ENR#[675]    if ((Vec_Buttons & 4) && !arcadeMode) {
                           2727 ;  0 "" 2
                           2728 ;--- end asm ---
   3F17 F6 C8 11      [ 5] 2729 	ldb	_Vec_Buttons	; , Vec_Buttons
   3F1A C5 04         [ 2] 2730 	bitb	#4	; ,
   3F1C 27 23         [ 3] 2731 	beq	L94	; 
   3F1E 7D C9 19      [ 7] 2732 	tst	_arcadeMode	;  arcadeMode
   3F21 26 1E         [ 3] 2733 	bne	L94	; 
                           2734 ;----- asm -----
                           2735 ;  795 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2736 	; #ENR#[676]        if (levelNumber > 0) {
                           2737 ;  0 "" 2
                           2738 ;--- end asm ---
   3F23 F6 C8 87      [ 5] 2739 	ldb	_levelNumber	;  levelNumber.46, levelNumber
   3F26 27 09         [ 3] 2740 	beq	L95	; 
                           2741 ;----- asm -----
                           2742 ;  797 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2743 	; #ENR#[677]            levelNumber--;
                           2744 ;  0 "" 2
                           2745 ;--- end asm ---
   3F28 F6 C8 87      [ 5] 2746 	ldb	_levelNumber	;  levelNumber.47, levelNumber
   3F2B 5A            [ 2] 2747 	decb	;  levelNumber.48
   3F2C F7 C8 87      [ 5] 2748 	stb	_levelNumber	;  levelNumber.48, levelNumber
   3F2F 20 0D         [ 3] 2749 	bra	L96	; 
   3F31                    2750 L95:
                           2751 ;----- asm -----
                           2752 ;  800 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2753 	; #ENR#[679]            setBank(nextBank);
                           2754 ;  0 "" 2
                           2755 ;--- end asm ---
   3F31 F6 4F 45      [ 5] 2756 	ldb	_nextBank	; , nextBank
   3F34 BD 39 88      [ 8] 2757 	jsr	_setBank	; 
                           2758 ;----- asm -----
                           2759 ;  802 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2760 	; #ENR#[680]            levelNumber = levelCount - 1;
                           2761 ;  0 "" 2
                           2762 ;--- end asm ---
   3F37 F6 4F 43      [ 5] 2763 	ldb	_levelCount	; , levelCount
   3F3A 5A            [ 2] 2764 	decb	; 
   3F3B F7 C8 87      [ 5] 2765 	stb	_levelNumber	; , levelNumber
   3F3E                    2766 L96:
                           2767 ;----- asm -----
                           2768 ;  805 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2769 	; #ENR#[682]        startLevel();
                           2770 ;  0 "" 2
                           2771 ;--- end asm ---
   3F3E BD 3A A6      [ 8] 2772 	jsr	_startLevel	; 
   3F41                    2773 L94:
                           2774 ;----- asm -----
                           2775 ;  808 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2776 	; #ENR#[684]    if (Vec_Buttons & 8) {
                           2777 ;  0 "" 2
                           2778 ;--- end asm ---
   3F41 F6 C8 11      [ 5] 2779 	ldb	_Vec_Buttons	; , Vec_Buttons
   3F44 C5 08         [ 2] 2780 	bitb	#8	; ,
   3F46 27 03         [ 3] 2781 	beq	L98	; 
                           2782 ;----- asm -----
                           2783 ;  810 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2784 	; #ENR#[685]        gameState = MainMenu;
                           2785 ;  0 "" 2
                           2786 ;--- end asm ---
   3F48 7F C9 1C      [ 7] 2787 	clr	_gameState	;  gameState
   3F4B                    2788 L98:
   3F4B 39            [ 5] 2789 	rts
                           2790 	.globl _startBlockFalling
   3F4C                    2791 _startBlockFalling:
                           2792 ;----- asm -----
                           2793 ;  327 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2794 	; #ENR#[286]    gameState = BlockFalling;
                           2795 ;  0 "" 2
                           2796 ;--- end asm ---
   3F4C C6 07         [ 2] 2797 	ldb	#7	; ,
   3F4E F7 C9 1C      [ 5] 2798 	stb	_gameState	; , gameState
                           2799 ;----- asm -----
                           2800 ;  329 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2801 	; #ENR#[287]    blockYOfs = 0;
                           2802 ;  0 "" 2
                           2803 ;--- end asm ---
   3F51 7F C8 E3      [ 7] 2804 	clr	_blockYOfs	;  blockYOfs
                           2805 ;----- asm -----
                           2806 ;  331 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2807 	; #ENR#[288]    moveBlock(lastBlockDirection);
                           2808 ;  0 "" 2
                           2809 ;--- end asm ---
   3F54 F6 C8 E4      [ 5] 2810 	ldb	_lastBlockDirection	; , lastBlockDirection
   3F57 BD 3E 76      [ 8] 2811 	jsr	_moveBlock	; 
                           2812 ;----- asm -----
                           2813 ;  333 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2814 	; #ENR#[289]    changeMusic(fallingMusic);
                           2815 ;  0 "" 2
                           2816 ;--- end asm ---
   3F5A 8E 42 48      [ 3] 2817 	ldx	#_fallingMusic	; ,
   3F5D BD 36 63      [ 8] 2818 	jsr	_changeMusic	; 
                           2819 ;----- asm -----
                           2820 ;  335 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2821 	; #ENR#[290]    vecx[VECX_MUSIC] = VECX_FALLING_MUSIC;
                           2822 ;  0 "" 2
                           2823 ;--- end asm ---
   3F60 6F 9F C8 82   [11] 2824 	clr	[_vecx]	; * vecx
   3F64 39            [ 5] 2825 	rts
                           2826 	.globl _blockMoving
   3F65                    2827 _blockMoving:
   3F65 32 79         [ 5] 2828 	leas	-7,s	; ,,
                           2829 ;----- asm -----
                           2830 ;  817 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2831 	; #ENR#[691]    drawField();
                           2832 ;  0 "" 2
                           2833 ;--- end asm ---
   3F67 BD 36 6C      [ 8] 2834 	jsr	_drawField	; 
                           2835 ;----- asm -----
                           2836 ;  819 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2837 	; #ENR#[692]    drawBlock(0);
                           2838 ;  0 "" 2
                           2839 ;--- end asm ---
   3F6A 5F            [ 2] 2840 	clrb	; 
   3F6B BD 09 DC      [ 8] 2841 	jsr	_drawBlock	; 
                           2842 ;----- asm -----
                           2843 ;  821 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2844 	; #ENR#[693]    doBlockAnimation();
                           2845 ;  0 "" 2
                           2846 ;--- end asm ---
   3F6E BD 08 DA      [ 8] 2847 	jsr	_doBlockAnimation	; 
                           2848 ;----- asm -----
                           2849 ;  823 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2850 	; #ENR#[694]    if (!blockAnimating) {
                           2851 ;  0 "" 2
                           2852 ;--- end asm ---
   3F71 7D C8 E5      [ 7] 2853 	tst	_blockAnimating	;  blockAnimating
   3F74 10 26 01 8A   [ 6] 2854 	lbne	L127	; 
                           2855 ;----- asm -----
                           2856 ;  826 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2857 	; #ENR#[696]        if (splitMode) {
                           2858 ;  0 "" 2
                           2859 ;--- end asm ---
   3F78 7D C8 E6      [ 7] 2860 	tst	_splitMode	;  splitMode
   3F7B 27 03         [ 3] 2861 	beq	L103	; 
                           2862 ;----- asm -----
                           2863 ;  828 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2864 	; #ENR#[697]            testMerge();
                           2865 ;  0 "" 2
                           2866 ;--- end asm ---
   3F7D BD 09 25      [ 8] 2867 	jsr	_testMerge	; 
   3F80                    2868 L103:
                           2869 ;----- asm -----
                           2870 ;  833 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2871 	; #ENR#[701]        uint8_t c0 = isField(blockX, blockY);
                           2872 ;  0 "" 2
                           2873 ;--- end asm ---
   3F80 F6 C8 E8      [ 5] 2874 	ldb	_blockY	; , blockY
   3F83 E7 E2         [ 6] 2875 	stb	,-s	; ,
   3F85 F6 C8 E7      [ 5] 2876 	ldb	_blockX	; , blockX
   3F88 BD 43 6C      [ 8] 2877 	jsr	_isField	; 
   3F8B E7 62         [ 5] 2878 	stb	2,s	; , c0
                           2879 ;----- asm -----
                           2880 ;  835 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2881 	; #ENR#[702]        uint8_t c1 = isField(blockX + 1, blockY);
                           2882 ;  0 "" 2
                           2883 ;--- end asm ---
   3F8D F6 C8 E7      [ 5] 2884 	ldb	_blockX	; , blockX
   3F90 5C            [ 2] 2885 	incb	; 
   3F91 E7 61         [ 5] 2886 	stb	1,s	; ,
   3F93 F6 C8 E8      [ 5] 2887 	ldb	_blockY	; , blockY
   3F96 E7 E2         [ 6] 2888 	stb	,-s	; ,
   3F98 E6 62         [ 5] 2889 	ldb	2,s	; ,
   3F9A BD 43 6C      [ 8] 2890 	jsr	_isField	; 
   3F9D E7 64         [ 5] 2891 	stb	4,s	; , c1
                           2892 ;----- asm -----
                           2893 ;  837 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2894 	; #ENR#[703]        uint8_t c2 = isField(blockX, blockY + 1);
                           2895 ;  0 "" 2
                           2896 ;--- end asm ---
   3F9F F6 C8 E8      [ 5] 2897 	ldb	_blockY	; , blockY
   3FA2 5C            [ 2] 2898 	incb	; 
   3FA3 34 04         [ 6] 2899 	pshs	b	; 
   3FA5 F6 C8 E7      [ 5] 2900 	ldb	_blockX	; , blockX
   3FA8 BD 43 6C      [ 8] 2901 	jsr	_isField	; 
   3FAB E7 66         [ 5] 2902 	stb	6,s	; , c2
                           2903 ;----- asm -----
                           2904 ;  839 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2905 	; #ENR#[704]        char f0 = getField(blockX, blockY);
                           2906 ;  0 "" 2
                           2907 ;--- end asm ---
   3FAD F6 C8 E8      [ 5] 2908 	ldb	_blockY	; , blockY
   3FB0 E7 E2         [ 6] 2909 	stb	,-s	; ,
   3FB2 F6 C8 E7      [ 5] 2910 	ldb	_blockX	; , blockX
   3FB5 BD 42 9A      [ 8] 2911 	jsr	_getField	; 
   3FB8 E7 68         [ 5] 2912 	stb	8,s	; , f0
                           2913 ;----- asm -----
                           2914 ;  841 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2915 	; #ENR#[705]        char f1 = getField(blockX + 1, blockY);
                           2916 ;  0 "" 2
                           2917 ;--- end asm ---
   3FBA F6 C8 E7      [ 5] 2918 	ldb	_blockX	; , blockX
   3FBD 5C            [ 2] 2919 	incb	; 
   3FBE E7 64         [ 5] 2920 	stb	4,s	; ,
   3FC0 F6 C8 E8      [ 5] 2921 	ldb	_blockY	; , blockY
   3FC3 E7 E2         [ 6] 2922 	stb	,-s	; ,
   3FC5 E6 65         [ 5] 2923 	ldb	5,s	; ,
   3FC7 BD 42 9A      [ 8] 2924 	jsr	_getField	; 
   3FCA E7 6A         [ 5] 2925 	stb	10,s	; , f1
                           2926 ;----- asm -----
                           2927 ;  843 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2928 	; #ENR#[706]        char f2 = getField(blockX, blockY + 1);
                           2929 ;  0 "" 2
                           2930 ;--- end asm ---
   3FCC F6 C8 E8      [ 5] 2931 	ldb	_blockY	; , blockY
   3FCF 5C            [ 2] 2932 	incb	; 
   3FD0 34 04         [ 6] 2933 	pshs	b	; 
   3FD2 F6 C8 E7      [ 5] 2934 	ldb	_blockX	; , blockX
   3FD5 BD 42 9A      [ 8] 2935 	jsr	_getField	; 
   3FD8 E7 6C         [ 5] 2936 	stb	12,s	; , f2
                           2937 ;----- asm -----
                           2938 ;  845 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2939 	; #ENR#[707]        if (splitMode) {
                           2940 ;  0 "" 2
                           2941 ;--- end asm ---
   3FDA 32 66         [ 5] 2942 	leas	6,s	; ,,
   3FDC 7D C8 E6      [ 7] 2943 	tst	_splitMode	;  splitMode
   3FDF 27 0C         [ 3] 2944 	beq	L104	; 
                           2945 ;----- asm -----
                           2946 ;  847 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2947 	; #ENR#[708]            if (!c0) {
                           2948 ;  0 "" 2
                           2949 ;--- end asm ---
   3FE1 6D 61         [ 7] 2950 	tst	1,s	;  c0
   3FE3 10 26 00 3E   [ 6] 2951 	lbne	L105	; 
                           2952 ;----- asm -----
                           2953 ;  849 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2954 	; #ENR#[709]                startBlockFalling();
                           2955 ;  0 "" 2
                           2956 ;--- end asm ---
   3FE7 BD 3F 4C      [ 8] 2957 	jsr	_startBlockFalling	; 
   3FEA 7E 40 25      [ 4] 2958 	jmp	L105	; 
   3FED                    2959 L104:
                           2960 ;----- asm -----
                           2961 ;  853 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2962 	; #ENR#[712]            switch (blockOrientation) {
                           2963 ;  0 "" 2
                           2964 ;--- end asm ---
   3FED F6 C8 E2      [ 5] 2965 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   3FF0 C1 01         [ 2] 2966 	cmpb	#1	;cmpqi:	;  blockOrientation,
   3FF2 27 19         [ 3] 2967 	beq	L107	; 
   3FF4 25 08         [ 3] 2968 	blo	L106	; 
   3FF6 C1 02         [ 2] 2969 	cmpb	#2	;cmpqi:	;  blockOrientation,
   3FF8 10 26 00 29   [ 6] 2970 	lbne	L105	; 
   3FFC 20 1C         [ 3] 2971 	bra	L128	; 
   3FFE                    2972 L106:
                           2973 ;----- asm -----
                           2974 ;  857 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2975 	; #ENR#[714]                if (!c0 || f0 == 'f') {
                           2976 ;  0 "" 2
                           2977 ;--- end asm ---
   3FFE 6D 61         [ 7] 2978 	tst	1,s	;  c0
   4000 27 06         [ 3] 2979 	beq	L109	; 
   4002 E6 64         [ 5] 2980 	ldb	4,s	; , f0
   4004 C1 66         [ 2] 2981 	cmpb	#102	;cmpqi:	; ,
   4006 26 03         [ 3] 2982 	bne	L110	; 
   4008                    2983 L109:
                           2984 ;----- asm -----
                           2985 ;  859 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2986 	; #ENR#[715]                    startBlockFalling();
                           2987 ;  0 "" 2
                           2988 ;--- end asm ---
   4008 BD 3F 4C      [ 8] 2989 	jsr	_startBlockFalling	; 
   400B                    2990 L110:
                           2991 ;----- asm -----
                           2992 ;  862 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2993 	; #ENR#[717]                break;
                           2994 ;  0 "" 2
                           2995 ;--- end asm ---
   400B 20 18         [ 3] 2996 	bra	L105	; 
   400D                    2997 L107:
                           2998 ;----- asm -----
                           2999 ;  866 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3000 	; #ENR#[719]                if (!c0 || !c2) {
                           3001 ;  0 "" 2
                           3002 ;--- end asm ---
   400D 6D 61         [ 7] 3003 	tst	1,s	;  c0
   400F 27 04         [ 3] 3004 	beq	L111	; 
   4011 6D 63         [ 7] 3005 	tst	3,s	;  c2
   4013 26 03         [ 3] 3006 	bne	L112	; 
   4015                    3007 L111:
                           3008 ;----- asm -----
                           3009 ;  868 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3010 	; #ENR#[720]                    startBlockFalling();
                           3011 ;  0 "" 2
                           3012 ;--- end asm ---
   4015 BD 3F 4C      [ 8] 3013 	jsr	_startBlockFalling	; 
   4018                    3014 L112:
                           3015 ;----- asm -----
                           3016 ;  871 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3017 	; #ENR#[722]                break;
                           3018 ;  0 "" 2
                           3019 ;--- end asm ---
   4018 20 0B         [ 3] 3020 	bra	L105	; 
   401A                    3021 L128:
                           3022 ;----- asm -----
                           3023 ;  875 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3024 	; #ENR#[724]                if (!c0 || ! c1) {
                           3025 ;  0 "" 2
                           3026 ;--- end asm ---
   401A 6D 61         [ 7] 3027 	tst	1,s	;  c0
   401C 27 04         [ 3] 3028 	beq	L113	; 
   401E 6D 62         [ 7] 3029 	tst	2,s	;  c1
   4020 26 03         [ 3] 3030 	bne	L114	; 
   4022                    3031 L113:
                           3032 ;----- asm -----
                           3033 ;  877 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3034 	; #ENR#[725]                    startBlockFalling();
                           3035 ;  0 "" 2
                           3036 ;--- end asm ---
   4022 BD 3F 4C      [ 8] 3037 	jsr	_startBlockFalling	; 
   4025                    3038 L114:
                           3039 ;----- asm -----
                           3040 ;  880 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3041 	; #ENR#[727]                break;
                           3042 ;  0 "" 2
                           3043 ;--- end asm ---
   4025                    3044 L105:
                           3045 ;----- asm -----
                           3046 ;  886 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3047 	; #ENR#[732]        if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
                           3048 ;  0 "" 2
                           3049 ;--- end asm ---
   4025 7D C8 E2      [ 7] 3050 	tst	_blockOrientation	;  blockOrientation
   4028 26 2B         [ 3] 3051 	bne	L115	; 
   402A F6 C8 E7      [ 5] 3052 	ldb	_blockX	; , blockX
   402D F1 C8 85      [ 5] 3053 	cmpb	_endX	;cmpqi:	; , endX
   4030 26 23         [ 3] 3054 	bne	L115	; 
   4032 F6 C8 E8      [ 5] 3055 	ldb	_blockY	; , blockY
   4035 F1 C8 86      [ 5] 3056 	cmpb	_endY	;cmpqi:	; , endY
   4038 26 1B         [ 3] 3057 	bne	L115	; 
   403A 7D C8 E6      [ 7] 3058 	tst	_splitMode	;  splitMode
   403D 26 16         [ 3] 3059 	bne	L115	; 
                           3060 ;----- asm -----
                           3061 ;  888 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3062 	; #ENR#[733]            blockYOfs = 0;
                           3063 ;  0 "" 2
                           3064 ;--- end asm ---
   403F 7F C8 E3      [ 7] 3065 	clr	_blockYOfs	;  blockYOfs
                           3066 ;----- asm -----
                           3067 ;  890 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3068 	; #ENR#[734]            gameState = BlockMovingAtEnd;
                           3069 ;  0 "" 2
                           3070 ;--- end asm ---
   4042 C6 08         [ 2] 3071 	ldb	#8	; ,
   4044 F7 C9 1C      [ 5] 3072 	stb	_gameState	; , gameState
                           3073 ;----- asm -----
                           3074 ;  892 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3075 	; #ENR#[735]            changeMusic(levelEndMusic);
                           3076 ;  0 "" 2
                           3077 ;--- end asm ---
   4047 8E 42 2E      [ 3] 3078 	ldx	#_levelEndMusic	; ,
   404A BD 36 63      [ 8] 3079 	jsr	_changeMusic	; 
                           3080 ;----- asm -----
                           3081 ;  894 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3082 	; #ENR#[736]            vecx[VECX_MUSIC] = VECX_LEVEL_END_MUSIC;
                           3083 ;  0 "" 2
                           3084 ;--- end asm ---
   404D C6 01         [ 2] 3085 	ldb	#1	; ,
   404F E7 9F C8 82   [ 9] 3086 	stb	[_vecx]	; ,* vecx
   4053 20 0C         [ 3] 3087 	bra	L116	; 
   4055                    3088 L115:
                           3089 ;----- asm -----
                           3090 ;  898 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3091 	; #ENR#[739]            if (gameState != BlockFalling) {
                           3092 ;  0 "" 2
                           3093 ;--- end asm ---
   4055 F6 C9 1C      [ 5] 3094 	ldb	_gameState	; , gameState
   4058 C1 07         [ 2] 3095 	cmpb	#7	;cmpqi:	; ,
   405A 27 05         [ 3] 3096 	beq	L116	; 
                           3097 ;----- asm -----
                           3098 ;  900 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3099 	; #ENR#[740]                gameState = BlockWaiting;
                           3100 ;  0 "" 2
                           3101 ;--- end asm ---
   405C C6 05         [ 2] 3102 	ldb	#5	; ,
   405E F7 C9 1C      [ 5] 3103 	stb	_gameState	; , gameState
   4061                    3104 L116:
                           3105 ;----- asm -----
                           3106 ;  906 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3107 	; #ENR#[745]        if (splitMode) {
                           3108 ;  0 "" 2
                           3109 ;--- end asm ---
   4061 7D C8 E6      [ 7] 3110 	tst	_splitMode	;  splitMode
   4064 27 18         [ 3] 3111 	beq	L117	; 
                           3112 ;----- asm -----
                           3113 ;  908 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3114 	; #ENR#[746]            if (f0 == 's') {
                           3115 ;  0 "" 2
                           3116 ;--- end asm ---
   4066 E6 64         [ 5] 3117 	ldb	4,s	; , f0
   4068 C1 73         [ 2] 3118 	cmpb	#115	;cmpqi:	; ,
   406A 10 26 00 94   [ 6] 3119 	lbne	L127	; 
                           3120 ;----- asm -----
                           3121 ;  910 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3122 	; #ENR#[747]                swatchSwitch(blockX, blockY);
                           3123 ;  0 "" 2
                           3124 ;--- end asm ---
   406E F6 C8 E8      [ 5] 3125 	ldb	_blockY	; , blockY
   4071 E7 E2         [ 6] 3126 	stb	,-s	; ,
   4073 F6 C8 E7      [ 5] 3127 	ldb	_blockX	; , blockX
   4076 BD 4E 31      [ 8] 3128 	jsr	_swatchSwitch	; 
   4079 32 61         [ 5] 3129 	leas	1,s	; ,,
   407B 7E 41 02      [ 4] 3130 	jmp	L127	; 
   407E                    3131 L117:
                           3132 ;----- asm -----
                           3133 ;  914 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3134 	; #ENR#[750]            switch (blockOrientation) {
                           3135 ;  0 "" 2
                           3136 ;--- end asm ---
   407E F6 C8 E2      [ 5] 3137 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   4081 C1 01         [ 2] 3138 	cmpb	#1	;cmpqi:	;  blockOrientation,
   4083 27 29         [ 3] 3139 	beq	L119	; 
   4085 25 09         [ 3] 3140 	blo	L118	; 
   4087 C1 02         [ 2] 3141 	cmpb	#2	;cmpqi:	;  blockOrientation,
   4089 10 26 00 75   [ 6] 3142 	lbne	L127	; 
   408D 7E 40 D7      [ 4] 3143 	jmp	L129	; 
   4090                    3144 L118:
                           3145 ;----- asm -----
                           3146 ;  918 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3147 	; #ENR#[752]                if (f0 == 's' || f0 == 'h' || f0 == 'v') {
                           3148 ;  0 "" 2
                           3149 ;--- end asm ---
   4090 E6 64         [ 5] 3150 	ldb	4,s	; , f0
   4092 C1 73         [ 2] 3151 	cmpb	#115	;cmpqi:	; ,
   4094 27 08         [ 3] 3152 	beq	L121	; 
   4096 C1 68         [ 2] 3153 	cmpb	#104	;cmpqi:	; ,
   4098 27 04         [ 3] 3154 	beq	L121	; 
   409A C1 76         [ 2] 3155 	cmpb	#118	;cmpqi:	; ,
   409C 26 0D         [ 3] 3156 	bne	L122	; 
   409E                    3157 L121:
                           3158 ;----- asm -----
                           3159 ;  920 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3160 	; #ENR#[753]                    swatchSwitch(blockX, blockY);
                           3161 ;  0 "" 2
                           3162 ;--- end asm ---
   409E F6 C8 E8      [ 5] 3163 	ldb	_blockY	; , blockY
   40A1 E7 E2         [ 6] 3164 	stb	,-s	; ,
   40A3 F6 C8 E7      [ 5] 3165 	ldb	_blockX	; , blockX
   40A6 BD 4E 31      [ 8] 3166 	jsr	_swatchSwitch	; 
   40A9 32 61         [ 5] 3167 	leas	1,s	; ,,
   40AB                    3168 L122:
                           3169 ;----- asm -----
                           3170 ;  923 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3171 	; #ENR#[755]                break;
                           3172 ;  0 "" 2
                           3173 ;--- end asm ---
   40AB 7E 41 02      [ 4] 3174 	jmp	L127	; 
   40AE                    3175 L119:
                           3176 ;----- asm -----
                           3177 ;  927 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3178 	; #ENR#[757]                if (f0 == 's') {
                           3179 ;  0 "" 2
                           3180 ;--- end asm ---
   40AE E6 64         [ 5] 3181 	ldb	4,s	; , f0
   40B0 C1 73         [ 2] 3182 	cmpb	#115	;cmpqi:	; ,
   40B2 26 0D         [ 3] 3183 	bne	L123	; 
                           3184 ;----- asm -----
                           3185 ;  929 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3186 	; #ENR#[758]                    swatchSwitch(blockX, blockY);
                           3187 ;  0 "" 2
                           3188 ;--- end asm ---
   40B4 F6 C8 E8      [ 5] 3189 	ldb	_blockY	; , blockY
   40B7 E7 E2         [ 6] 3190 	stb	,-s	; ,
   40B9 F6 C8 E7      [ 5] 3191 	ldb	_blockX	; , blockX
   40BC BD 4E 31      [ 8] 3192 	jsr	_swatchSwitch	; 
   40BF 32 61         [ 5] 3193 	leas	1,s	; ,,
   40C1                    3194 L123:
                           3195 ;----- asm -----
                           3196 ;  932 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3197 	; #ENR#[760]                if (f2 == 's') {
                           3198 ;  0 "" 2
                           3199 ;--- end asm ---
   40C1 E6 66         [ 5] 3200 	ldb	6,s	; , f2
   40C3 C1 73         [ 2] 3201 	cmpb	#115	;cmpqi:	; ,
   40C5 26 0E         [ 3] 3202 	bne	L124	; 
                           3203 ;----- asm -----
                           3204 ;  934 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3205 	; #ENR#[761]                    swatchSwitch(blockX, blockY + 1);
                           3206 ;  0 "" 2
                           3207 ;--- end asm ---
   40C7 F6 C8 E8      [ 5] 3208 	ldb	_blockY	; , blockY
   40CA 5C            [ 2] 3209 	incb	; 
   40CB 34 04         [ 6] 3210 	pshs	b	; 
   40CD F6 C8 E7      [ 5] 3211 	ldb	_blockX	; , blockX
   40D0 BD 4E 31      [ 8] 3212 	jsr	_swatchSwitch	; 
   40D3 32 61         [ 5] 3213 	leas	1,s	; ,,
   40D5                    3214 L124:
                           3215 ;----- asm -----
                           3216 ;  937 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3217 	; #ENR#[763]                break;
                           3218 ;  0 "" 2
                           3219 ;--- end asm ---
   40D5 20 2B         [ 3] 3220 	bra	L127	; 
   40D7                    3221 L129:
                           3222 ;----- asm -----
                           3223 ;  941 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3224 	; #ENR#[765]                if (f0 == 's') {
                           3225 ;  0 "" 2
                           3226 ;--- end asm ---
   40D7 E6 64         [ 5] 3227 	ldb	4,s	; , f0
   40D9 C1 73         [ 2] 3228 	cmpb	#115	;cmpqi:	; ,
   40DB 26 0D         [ 3] 3229 	bne	L125	; 
                           3230 ;----- asm -----
                           3231 ;  943 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3232 	; #ENR#[766]                    swatchSwitch(blockX, blockY);
                           3233 ;  0 "" 2
                           3234 ;--- end asm ---
   40DD F6 C8 E8      [ 5] 3235 	ldb	_blockY	; , blockY
   40E0 E7 E2         [ 6] 3236 	stb	,-s	; ,
   40E2 F6 C8 E7      [ 5] 3237 	ldb	_blockX	; , blockX
   40E5 BD 4E 31      [ 8] 3238 	jsr	_swatchSwitch	; 
   40E8 32 61         [ 5] 3239 	leas	1,s	; ,,
   40EA                    3240 L125:
                           3241 ;----- asm -----
                           3242 ;  946 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3243 	; #ENR#[768]                if (f1 == 's') {
                           3244 ;  0 "" 2
                           3245 ;--- end asm ---
   40EA E6 65         [ 5] 3246 	ldb	5,s	; , f1
   40EC C1 73         [ 2] 3247 	cmpb	#115	;cmpqi:	; ,
   40EE 26 12         [ 3] 3248 	bne	L126	; 
                           3249 ;----- asm -----
                           3250 ;  948 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3251 	; #ENR#[769]                    swatchSwitch(blockX + 1, blockY);
                           3252 ;  0 "" 2
                           3253 ;--- end asm ---
   40F0 F6 C8 E7      [ 5] 3254 	ldb	_blockX	; , blockX
   40F3 5C            [ 2] 3255 	incb	; 
   40F4 E7 E4         [ 4] 3256 	stb	,s	; ,
   40F6 F6 C8 E8      [ 5] 3257 	ldb	_blockY	; , blockY
   40F9 E7 E2         [ 6] 3258 	stb	,-s	; ,
   40FB E6 61         [ 5] 3259 	ldb	1,s	; ,
   40FD BD 4E 31      [ 8] 3260 	jsr	_swatchSwitch	; 
   4100 32 61         [ 5] 3261 	leas	1,s	; ,,
   4102                    3262 L126:
                           3263 ;----- asm -----
                           3264 ;  951 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3265 	; #ENR#[771]                break;
                           3266 ;  0 "" 2
                           3267 ;--- end asm ---
   4102                    3268 L127:
   4102 32 67         [ 5] 3269 	leas	7,s	; ,,
   4104 39            [ 5] 3270 	rts
                           3271 	.globl _main
   4105                    3272 _main:
   4105 34 60         [ 7] 3273 	pshs	y,u	; 
   4107 32 7C         [ 5] 3274 	leas	-4,s	; ,,
                           3275 ;----- asm -----
                           3276 ;  1267 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3277 	; #ENR#[970]    picAvailable = 0;
                           3278 ;  0 "" 2
                           3279 ;--- end asm ---
   4109 7F C9 18      [ 7] 3280 	clr	_picAvailable	;  picAvailable
                           3281 ;----- asm -----
                           3282 ;  1269 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3283 	; #ENR#[971]    sendPicCommand(CMD_VERSION, 0);
                           3284 ;  0 "" 2
                           3285 ;--- end asm ---
   410C 6F E2         [ 8] 3286 	clr	,-s	; 
   410E C6 01         [ 2] 3287 	ldb	#1	; ,
   4110 BD 39 33      [ 8] 3288 	jsr	_sendPicCommand	; 
                           3289 ;----- asm -----
                           3290 ;  1271 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3291 	; #ENR#[972]    sendPicCommand(CMD_VERSION, 0);
                           3292 ;  0 "" 2
                           3293 ;--- end asm ---
   4113 6F E2         [ 8] 3294 	clr	,-s	; 
   4115 C6 01         [ 2] 3295 	ldb	#1	; ,
   4117 BD 39 33      [ 8] 3296 	jsr	_sendPicCommand	; 
                           3297 ;----- asm -----
                           3298 ;  1273 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3299 	; #ENR#[973]    if (sendPicCommand(CMD_VERSION, 0) == 4) {
                           3300 ;  0 "" 2
                           3301 ;--- end asm ---
   411A 6F E2         [ 8] 3302 	clr	,-s	; 
   411C C6 01         [ 2] 3303 	ldb	#1	; ,
   411E BD 39 33      [ 8] 3304 	jsr	_sendPicCommand	; 
   4121 32 63         [ 5] 3305 	leas	3,s	; ,,
   4123 C1 04         [ 2] 3306 	cmpb	#4	;cmpqi:	;  D.2521,
   4125 26 05         [ 3] 3307 	bne	L131	; 
                           3308 ;----- asm -----
                           3309 ;  1275 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3310 	; #ENR#[974]        picAvailable = 1;
                           3311 ;  0 "" 2
                           3312 ;--- end asm ---
   4127 C6 01         [ 2] 3313 	ldb	#1	; ,
   4129 F7 C9 18      [ 5] 3314 	stb	_picAvailable	; , picAvailable
   412C                    3315 L131:
                           3316 ;----- asm -----
                           3317 ;  1281 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3318 	; #ENR#[979]    setBank(0);
                           3319 ;  0 "" 2
                           3320 ;--- end asm ---
   412C 5F            [ 2] 3321 	clrb	; 
   412D BD 39 88      [ 8] 3322 	jsr	_setBank	; 
                           3323 ;----- asm -----
                           3324 ;  1285 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3325 	; #ENR#[982]    vecx[VECX_MUSIC] = VECX_TITLE_MUSIC;
                           3326 ;  0 "" 2
                           3327 ;--- end asm ---
   4130 C6 04         [ 2] 3328 	ldb	#4	; ,
   4132 E7 9F C8 82   [ 9] 3329 	stb	[_vecx]	; ,* vecx
                           3330 ;----- asm -----
                           3331 ;  1289 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3332 	; #ENR#[985]    epot0 = 1;
                           3333 ;  0 "" 2
                           3334 ;--- end asm ---
   4136 C6 01         [ 2] 3335 	ldb	#1	; ,
   4138 F7 C8 1F      [ 5] 3336 	stb	-14305	; ,
                           3337 ;----- asm -----
                           3338 ;  1291 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3339 	; #ENR#[986]    epot1 = 3;
                           3340 ;  0 "" 2
                           3341 ;--- end asm ---
   413B C6 03         [ 2] 3342 	ldb	#3	; ,
   413D F7 C8 20      [ 5] 3343 	stb	-14304	; ,
                           3344 ;----- asm -----
                           3345 ;  1293 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3346 	; #ENR#[987]    epot2 = 0;
                           3347 ;  0 "" 2
                           3348 ;--- end asm ---
   4140 7F C8 21      [ 7] 3349 	clr	-14303	; 
                           3350 ;----- asm -----
                           3351 ;  1295 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3352 	; #ENR#[988]    epot3 = 0;
                           3353 ;  0 "" 2
                           3354 ;--- end asm ---
   4143 7F C8 22      [ 7] 3355 	clr	-14302	; 
                           3356 ;----- asm -----
                           3357 ;  1298 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3358 	; #ENR#[990]    gameState = MainMenu;
                           3359 ;  0 "" 2
                           3360 ;--- end asm ---
   4146 7F C9 1C      [ 7] 3361 	clr	_gameState	;  gameState
                           3362 ;----- asm -----
                           3363 ;  1300 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3364 	; #ENR#[991]    musicInit();
                           3365 ;  0 "" 2
                           3366 ;--- end asm ---
   4149 BD 60 32      [ 8] 3367 	jsr	_musicInit	; 
                           3368 ;----- asm -----
                           3369 ;  1303 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3370 	; #ENR#[993]    while (1) {
                           3371 ;  0 "" 2
                           3372 ;--- end asm ---
   414C                    3373 L146:
                           3374 ;----- asm -----
                           3375 ;  1306 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3376 	; #ENR#[995]        frwait();
                           3377 ;  0 "" 2
                           3378 ;  97 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   414C BD F1 92      [ 8] 3379 	jsr ___Wait_Recal; BIOS call
                           3380 ;  0 "" 2
                           3381 ;  1309 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3382 	; #ENR#[997]        switch (gameState) {
                           3383 ;  0 "" 2
                           3384 ;--- end asm ---
   414F F6 C9 1C      [ 5] 3385 	ldb	_gameState	; , gameState
   4152 C1 08         [ 2] 3386 	cmpb	#8	;cmpqi:	; ,
   4154 10 22 00 69   [ 6] 3387 	lbhi	L132	; 
   4158 4F            [ 2] 3388 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4159 ED E4         [ 5] 3389 	std	,s	; ,
   415B 58            [ 2] 3390 	aslb	; 
   415C 49            [ 2] 3391 	rola	; 
   415D 1F 01         [ 6] 3392 	tfr	d,x	; , tmp38
   415F 6E 99 41 63   [10] 3393 	jmp	[L142,x]	; , tmp38
   4163                    3394 L142:
   4163 41 75              3395 	.word L133
   4165 41 87              3396 	.word L134
   4167 41 90              3397 	.word L135
   4169 41 7E              3398 	.word L136
   416B 41 99              3399 	.word L137
   416D 41 A2              3400 	.word L138
   416F 41 AB              3401 	.word L139
   4171 41 B3              3402 	.word L140
   4173 41 BB              3403 	.word L141
   4175                    3404 L133:
                           3405 ;----- asm -----
                           3406 ;  1313 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3407 	; #ENR#[999]            mainMenu();
                           3408 ;  0 "" 2
                           3409 ;--- end asm ---
   4175 BD 3C AE      [ 8] 3410 	jsr	_mainMenu	; 
                           3411 ;----- asm -----
                           3412 ;  1315 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3413 	; #ENR#[1000]            musicPlay();
                           3414 ;  0 "" 2
                           3415 ;--- end asm ---
   4178 BD 60 3C      [ 8] 3416 	jsr	_musicPlay	; 
                           3417 ;----- asm -----
                           3418 ;  1317 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3419 	; #ENR#[1001]            break;
                           3420 ;  0 "" 2
                           3421 ;--- end asm ---
   417B 7E 41 C1      [ 4] 3422 	jmp	L132	; 
   417E                    3423 L136:
                           3424 ;----- asm -----
                           3425 ;  1321 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3426 	; #ENR#[1003]            clearMenu();
                           3427 ;  0 "" 2
                           3428 ;--- end asm ---
   417E BD 39 CA      [ 8] 3429 	jsr	_clearMenu	; 
                           3430 ;----- asm -----
                           3431 ;  1323 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3432 	; #ENR#[1004]            musicPlay();
                           3433 ;  0 "" 2
                           3434 ;--- end asm ---
   4181 BD 60 3C      [ 8] 3435 	jsr	_musicPlay	; 
                           3436 ;----- asm -----
                           3437 ;  1325 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3438 	; #ENR#[1005]            break;
                           3439 ;  0 "" 2
                           3440 ;--- end asm ---
   4184 7E 41 C1      [ 4] 3441 	jmp	L132	; 
   4187                    3442 L134:
                           3443 ;----- asm -----
                           3444 ;  1329 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3445 	; #ENR#[1007]            arcadeMenu();
                           3446 ;  0 "" 2
                           3447 ;--- end asm ---
   4187 BD 3B B1      [ 8] 3448 	jsr	_arcadeMenu	; 
                           3449 ;----- asm -----
                           3450 ;  1331 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3451 	; #ENR#[1008]            musicPlay();
                           3452 ;  0 "" 2
                           3453 ;--- end asm ---
   418A BD 60 3C      [ 8] 3454 	jsr	_musicPlay	; 
                           3455 ;----- asm -----
                           3456 ;  1333 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3457 	; #ENR#[1009]            break;
                           3458 ;  0 "" 2
                           3459 ;--- end asm ---
   418D 7E 41 C1      [ 4] 3460 	jmp	L132	; 
   4190                    3461 L135:
                           3462 ;----- asm -----
                           3463 ;  1337 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3464 	; #ENR#[1011]            arcadeEnd();
                           3465 ;  0 "" 2
                           3466 ;--- end asm ---
   4190 BD 37 8B      [ 8] 3467 	jsr	_arcadeEnd	; 
                           3468 ;----- asm -----
                           3469 ;  1339 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3470 	; #ENR#[1012]            musicPlay();
                           3471 ;  0 "" 2
                           3472 ;--- end asm ---
   4193 BD 60 3C      [ 8] 3473 	jsr	_musicPlay	; 
                           3474 ;----- asm -----
                           3475 ;  1341 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3476 	; #ENR#[1013]            break;
                           3477 ;  0 "" 2
                           3478 ;--- end asm ---
   4196 7E 41 C1      [ 4] 3479 	jmp	L132	; 
   4199                    3480 L137:
                           3481 ;----- asm -----
                           3482 ;  1345 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3483 	; #ENR#[1015]            showInfo();
                           3484 ;  0 "" 2
                           3485 ;--- end asm ---
   4199 BD 38 DA      [ 8] 3486 	jsr	_showInfo	; 
                           3487 ;----- asm -----
                           3488 ;  1347 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3489 	; #ENR#[1016]            blockMovingToStart();
                           3490 ;  0 "" 2
                           3491 ;--- end asm ---
   419C BD 3A 4E      [ 8] 3492 	jsr	_blockMovingToStart	; 
                           3493 ;----- asm -----
                           3494 ;  1349 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3495 	; #ENR#[1017]            break;
                           3496 ;  0 "" 2
                           3497 ;--- end asm ---
   419F 7E 41 C1      [ 4] 3498 	jmp	L132	; 
   41A2                    3499 L138:
                           3500 ;----- asm -----
                           3501 ;  1353 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3502 	; #ENR#[1019]            showInfo();
                           3503 ;  0 "" 2
                           3504 ;--- end asm ---
   41A2 BD 38 DA      [ 8] 3505 	jsr	_showInfo	; 
                           3506 ;----- asm -----
                           3507 ;  1355 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3508 	; #ENR#[1020]            blockWaiting();
                           3509 ;  0 "" 2
                           3510 ;--- end asm ---
   41A5 BD 3E 8F      [ 8] 3511 	jsr	_blockWaiting	; 
                           3512 ;----- asm -----
                           3513 ;  1357 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3514 	; #ENR#[1021]            break;
                           3515 ;  0 "" 2
                           3516 ;--- end asm ---
   41A8 7E 41 C1      [ 4] 3517 	jmp	L132	; 
   41AB                    3518 L139:
                           3519 ;----- asm -----
                           3520 ;  1361 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3521 	; #ENR#[1023]            showInfo();
                           3522 ;  0 "" 2
                           3523 ;--- end asm ---
   41AB BD 38 DA      [ 8] 3524 	jsr	_showInfo	; 
                           3525 ;----- asm -----
                           3526 ;  1363 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3527 	; #ENR#[1024]            blockMoving();
                           3528 ;  0 "" 2
                           3529 ;--- end asm ---
   41AE BD 3F 65      [ 8] 3530 	jsr	_blockMoving	; 
                           3531 ;----- asm -----
                           3532 ;  1365 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3533 	; #ENR#[1025]            break;
                           3534 ;  0 "" 2
                           3535 ;--- end asm ---
   41B1 20 0E         [ 3] 3536 	bra	L132	; 
   41B3                    3537 L140:
                           3538 ;----- asm -----
                           3539 ;  1369 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3540 	; #ENR#[1027]            showInfo();
                           3541 ;  0 "" 2
                           3542 ;--- end asm ---
   41B3 BD 38 DA      [ 8] 3543 	jsr	_showInfo	; 
                           3544 ;----- asm -----
                           3545 ;  1371 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3546 	; #ENR#[1028]            blockFalling();
                           3547 ;  0 "" 2
                           3548 ;--- end asm ---
   41B6 BD 3D 56      [ 8] 3549 	jsr	_blockFalling	; 
                           3550 ;----- asm -----
                           3551 ;  1373 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3552 	; #ENR#[1029]            break;
                           3553 ;  0 "" 2
                           3554 ;--- end asm ---
   41B9 20 06         [ 3] 3555 	bra	L132	; 
   41BB                    3556 L141:
                           3557 ;----- asm -----
                           3558 ;  1377 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3559 	; #ENR#[1031]            showInfo();
                           3560 ;  0 "" 2
                           3561 ;--- end asm ---
   41BB BD 38 DA      [ 8] 3562 	jsr	_showInfo	; 
                           3563 ;----- asm -----
                           3564 ;  1379 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3565 	; #ENR#[1032]            blockMovingAtEnd();
                           3566 ;  0 "" 2
                           3567 ;--- end asm ---
   41BE BD 3D 98      [ 8] 3568 	jsr	_blockMovingAtEnd	; 
                           3569 ;----- asm -----
                           3570 ;  1381 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3571 	; #ENR#[1033]            break;
                           3572 ;  0 "" 2
                           3573 ;--- end asm ---
   41C1                    3574 L132:
                           3575 ;----- asm -----
                           3576 ;  1386 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3577 	; #ENR#[1037]        if (gameState > ClearMenu) {
                           3578 ;  0 "" 2
                           3579 ;--- end asm ---
   41C1 F6 C9 1C      [ 5] 3580 	ldb	_gameState	; , gameState
   41C4 C1 03         [ 2] 3581 	cmpb	#3	;cmpqi:	; ,
   41C6 23 13         [ 3] 3582 	bls	L143	; 
                           3583 ;----- asm -----
                           3584 ;  1388 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3585 	; #ENR#[1038]            DP_to_C8();
                           3586 ;  0 "" 2
                           3587 ;  316 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   41C8 BD F1 AF      [ 8] 3588 	jsr ___DP_to_C8; BIOS call
                           3589 ;  0 "" 2
                           3590 ;  1390 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3591 	; #ENR#[1039]            replay(currentMusic);
                           3592 ;  0 "" 2
                           3593 ;--- end asm ---
   41CB BE C8 80      [ 6] 3594 	ldx	_currentMusic	; , currentMusic
   41CE AF 62         [ 6] 3595 	stx	2,s	; , u
                           3596 ;----- asm -----
                           3597 ;  2917 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   41D0 EE 62         [ 6] 3598 	ldu 2,s	;  u
   41D2 BD F6 87      [ 8] 3599 	jsr ___Init_Music_chk; BIOS call
                           3600 ;  0 "" 2
                           3601 ;  1392 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3602 	; #ENR#[1040]            DP_to_D0();
                           3603 ;  0 "" 2
                           3604 ;  300 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   41D5 BD F1 AA      [ 8] 3605 	jsr ___DP_to_D0; BIOS call
                           3606 ;  0 "" 2
                           3607 ;  1394 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3608 	; #ENR#[1041]            reqout();
                           3609 ;  0 "" 2
                           3610 ;  2880 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   41D8 BD F2 89      [ 8] 3611 	jsr ___Do_Sound; BIOS call
                           3612 ;  0 "" 2
                           3613 ;--- end asm ---
   41DB                    3614 L143:
                           3615 ;----- asm -----
                           3616 ;  1399 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3617 	; #ENR#[1045]        if (arcadeMode) {
                           3618 ;  0 "" 2
                           3619 ;--- end asm ---
   41DB 7D C9 19      [ 7] 3620 	tst	_arcadeMode	;  arcadeMode
   41DE 10 27 FF 6A   [ 6] 3621 	lbeq	L146	; 
                           3622 ;----- asm -----
                           3623 ;  1401 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3624 	; #ENR#[1046]            frames++;
                           3625 ;  0 "" 2
                           3626 ;--- end asm ---
   41E2 FC C9 16      [ 6] 3627 	ldd	_frames	;  frames.96, frames
   41E5 C3 00 01      [ 4] 3628 	addd	#1	;  frames.96,
   41E8 FD C9 16      [ 6] 3629 	std	_frames	;  frames.96, frames
                           3630 ;----- asm -----
                           3631 ;  1403 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3632 	; #ENR#[1047]            if (frames == 50) {
                           3633 ;  0 "" 2
                           3634 ;--- end asm ---
   41EB 10 83 00 32   [ 5] 3635 	cmpd	#50	;cmphi:	;  frames.96,
   41EF 10 26 FF 59   [ 6] 3636 	lbne	L146	; 
                           3637 ;----- asm -----
                           3638 ;  1405 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3639 	; #ENR#[1048]                frames = 0;
                           3640 ;  0 "" 2
                           3641 ;--- end asm ---
   41F3 CC 00 00      [ 3] 3642 	ldd	#0	; ,
   41F6 FD C9 16      [ 6] 3643 	std	_frames	; , frames
                           3644 ;----- asm -----
                           3645 ;  1407 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3646 	; #ENR#[1049]                if (moveCount < 999) {
                           3647 ;  0 "" 2
                           3648 ;--- end asm ---
   41F9 BE C9 14      [ 6] 3649 	ldx	_moveCount	;  moveCount.97, moveCount
   41FC 8C 03 E6      [ 4] 3650 	cmpx	#998	;cmphi:	;  moveCount.97,
   41FF 10 22 FF 49   [ 6] 3651 	lbhi	L146	; 
                           3652 ;----- asm -----
                           3653 ;  1409 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3654 	; #ENR#[1050]                    moveCount++;
                           3655 ;  0 "" 2
                           3656 ;--- end asm ---
   4203 30 01         [ 5] 3657 	leax	1,x	; ,, moveCount.97
   4205 BF C9 14      [ 6] 3658 	stx	_moveCount	; , moveCount
                           3659 ;----- asm -----
                           3660 ;  1411 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3661 	; #ENR#[1051]                    updateInfoText();
                           3662 ;  0 "" 2
                           3663 ;--- end asm ---
   4208 BD 3A 67      [ 8] 3664 	jsr	_updateInfoText	; 
   420B 7E 41 4C      [ 4] 3665 	jmp	L146	; 
                           3666 	.globl _startMusic
   420E                    3667 _startMusic:
   420E FE                 3668 	.byte	-2
   420F E8                 3669 	.byte	-24
   4210 FE                 3670 	.byte	-2
   4211 B6                 3671 	.byte	-74
   4212 01                 3672 	.byte	1
   4213 01                 3673 	.byte	1
   4214 02                 3674 	.byte	2
   4215 01                 3675 	.byte	1
   4216 03                 3676 	.byte	3
   4217 01                 3677 	.byte	1
   4218 04                 3678 	.byte	4
   4219 01                 3679 	.byte	1
   421A 05                 3680 	.byte	5
   421B 01                 3681 	.byte	1
   421C 06                 3682 	.byte	6
   421D 01                 3683 	.byte	1
   421E 07                 3684 	.byte	7
   421F 01                 3685 	.byte	1
   4220 08                 3686 	.byte	8
   4221 01                 3687 	.byte	1
   4222 09                 3688 	.byte	9
   4223 01                 3689 	.byte	1
   4224 0A                 3690 	.byte	10
   4225 01                 3691 	.byte	1
   4226 0B                 3692 	.byte	11
   4227 01                 3693 	.byte	1
   4228 0C                 3694 	.byte	12
   4229 01                 3695 	.byte	1
   422A 0D                 3696 	.byte	13
   422B 01                 3697 	.byte	1
   422C 00                 3698 	.byte	0
   422D 80                 3699 	.byte	-128
                           3700 	.globl _levelEndMusic
   422E                    3701 _levelEndMusic:
   422E FE                 3702 	.byte	-2
   422F E8                 3703 	.byte	-24
   4230 FE                 3704 	.byte	-2
   4231 B6                 3705 	.byte	-74
   4232 0D                 3706 	.byte	13
   4233 01                 3707 	.byte	1
   4234 0E                 3708 	.byte	14
   4235 01                 3709 	.byte	1
   4236 0F                 3710 	.byte	15
   4237 01                 3711 	.byte	1
   4238 10                 3712 	.byte	16
   4239 01                 3713 	.byte	1
   423A 11                 3714 	.byte	17
   423B 01                 3715 	.byte	1
   423C 12                 3716 	.byte	18
   423D 01                 3717 	.byte	1
   423E 13                 3718 	.byte	19
   423F 01                 3719 	.byte	1
   4240 14                 3720 	.byte	20
   4241 01                 3721 	.byte	1
   4242 15                 3722 	.byte	21
   4243 01                 3723 	.byte	1
   4244 16                 3724 	.byte	22
   4245 01                 3725 	.byte	1
   4246 00                 3726 	.byte	0
   4247 80                 3727 	.byte	-128
                           3728 	.globl _fallingMusic
   4248                    3729 _fallingMusic:
   4248 FE                 3730 	.byte	-2
   4249 E8                 3731 	.byte	-24
   424A FE                 3732 	.byte	-2
   424B B6                 3733 	.byte	-74
   424C 0D                 3734 	.byte	13
   424D 02                 3735 	.byte	2
   424E 0C                 3736 	.byte	12
   424F 02                 3737 	.byte	2
   4250 0B                 3738 	.byte	11
   4251 02                 3739 	.byte	2
   4252 0A                 3740 	.byte	10
   4253 02                 3741 	.byte	2
   4254 09                 3742 	.byte	9
   4255 02                 3743 	.byte	2
   4256 08                 3744 	.byte	8
   4257 02                 3745 	.byte	2
   4258 07                 3746 	.byte	7
   4259 02                 3747 	.byte	2
   425A 06                 3748 	.byte	6
   425B 02                 3749 	.byte	2
   425C 05                 3750 	.byte	5
   425D 02                 3751 	.byte	2
   425E 04                 3752 	.byte	4
   425F 02                 3753 	.byte	2
   4260 03                 3754 	.byte	3
   4261 02                 3755 	.byte	2
   4262 02                 3756 	.byte	2
   4263 02                 3757 	.byte	2
   4264 01                 3758 	.byte	1
   4265 02                 3759 	.byte	2
   4266 00                 3760 	.byte	0
   4267 80                 3761 	.byte	-128
                           3762 	.globl _movingMusic
   4268                    3763 _movingMusic:
   4268 FD                 3764 	.byte	-3
   4269 C3                 3765 	.byte	-61
   426A FE                 3766 	.byte	-2
   426B B6                 3767 	.byte	-74
   426C 01                 3768 	.byte	1
   426D 05                 3769 	.byte	5
   426E 00                 3770 	.byte	0
   426F 80                 3771 	.byte	-128
                           3772 	.globl _currentMusic
                           3773 	.area .data
   C880                    3774 _currentMusic:
   C880 42 0E              3775 	.word	_startMusic
                           3776 	.globl _led8
                           3777 	.area .text
   4270                    3778 _led8:
   4270 FF                 3779 	.byte	-1
   4271 00                 3780 	.byte	0
   4272 05                 3781 	.byte	5
   4273 FF                 3782 	.byte	-1
   4274 FB                 3783 	.byte	-5
   4275 00                 3784 	.byte	0
   4276 FF                 3785 	.byte	-1
   4277 00                 3786 	.byte	0
   4278 FB                 3787 	.byte	-5
   4279 FF                 3788 	.byte	-1
   427A 05                 3789 	.byte	5
   427B 00                 3790 	.byte	0
   427C FF                 3791 	.byte	-1
   427D 05                 3792 	.byte	5
   427E 00                 3793 	.byte	0
   427F FF                 3794 	.byte	-1
   4280 00                 3795 	.byte	0
   4281 05                 3796 	.byte	5
   4282 FF                 3797 	.byte	-1
   4283 FB                 3798 	.byte	-5
   4284 00                 3799 	.byte	0
   4285 01                 3800 	.byte	1
                           3801 	.area .data
   C882                    3802 _vecx:
   C882 80 00              3803 	.word	-32768
                           3804 	.area .text
   4286                    3805 _arcadeLevels:
   4286 01                 3806 	.byte	1
   4287 02                 3807 	.byte	2
   4288 00                 3808 	.byte	0
   4289 00 00              3809 	.word	0	;skip space 2
   428B 04                 3810 	.byte	4
   428C 05                 3811 	.byte	5
   428D 06                 3812 	.byte	6
   428E 00                 3813 	.byte	0
   428F 00                 3814 	.byte	0	;skip space
   4290 07                 3815 	.byte	7
   4291 08                 3816 	.byte	8
   4292 09                 3817 	.byte	9
   4293 00                 3818 	.byte	0
   4294 00                 3819 	.byte	0	;skip space
   4295 0A                 3820 	.byte	10
   4296 0B                 3821 	.byte	11
   4297 0C                 3822 	.byte	12
   4298 00                 3823 	.byte	0
   4299 00                 3824 	.byte	0	;skip space
                           3825 	.area .bss
   C8F2                    3826 _si:	.blkb	1
   C8F3                    3827 _infoText:	.blkb	20
   C907                    3828 _highscoreText:	.blkb	10
   C911                    3829 _highscoreDisplayCounter:	.blkb	1
   C912                    3830 _levelHighscore:	.blkb	2
                           3831 	.globl	_moveCount
   C914                    3832 _moveCount:	.blkb	2
                           3833 	.globl	_frames
   C916                    3834 _frames:	.blkb	2
                           3835 	.globl	_picAvailable
   C918                    3836 _picAvailable:	.blkb	1
                           3837 	.globl	_arcadeMode
   C919                    3838 _arcadeMode:	.blkb	1
                           3839 	.globl	_arcadeSelection
   C91A                    3840 _arcadeSelection:	.blkb	1
                           3841 	.globl	_arcadeIndex
   C91B                    3842 _arcadeIndex:	.blkb	1
                           3843 	.globl	_gameState
   C91C                    3844 _gameState:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$bloxorz$1000     030B GR  |   2 A$bloxorz$1003     030D GR
  2 A$bloxorz$1004     030F GR  |   2 A$bloxorz$1005     0311 GR
  2 A$bloxorz$1011     0314 GR  |   2 A$bloxorz$1012     0316 GR
  2 A$bloxorz$1013     0318 GR  |   2 A$bloxorz$1016     031B GR
  2 A$bloxorz$1017     031D GR  |   2 A$bloxorz$1020     0320 GR
  2 A$bloxorz$1021     0322 GR  |   2 A$bloxorz$1024     0324 GR
  2 A$bloxorz$1025     0326 GR  |   2 A$bloxorz$1031     0328 GR
  2 A$bloxorz$1032     032A GR  |   2 A$bloxorz$1035     032C GR
  2 A$bloxorz$1036     032E GR  |   2 A$bloxorz$1042     0331 GR
  2 A$bloxorz$1043     0333 GR  |   2 A$bloxorz$1049     0336 GR
  2 A$bloxorz$105      0041 GR  |   2 A$bloxorz$1050     0339 GR
  2 A$bloxorz$1051     033B GR  |   2 A$bloxorz$1057     033D GR
  2 A$bloxorz$1058     033F GR  |   2 A$bloxorz$1059     0341 GR
  2 A$bloxorz$106      0043 GR  |   2 A$bloxorz$1060     0343 GR
  2 A$bloxorz$1061     0345 GR  |   2 A$bloxorz$1062     0348 GR
  2 A$bloxorz$1065     034A GR  |   2 A$bloxorz$1066     034C GR
  2 A$bloxorz$1067     034E GR  |   2 A$bloxorz$1068     0350 GR
  2 A$bloxorz$107      0046 GR  |   2 A$bloxorz$1071     0353 GR
  2 A$bloxorz$1078     0355 GR  |   2 A$bloxorz$1079     0357 GR
  2 A$bloxorz$108      0048 GR  |   2 A$bloxorz$1080     0359 GR
  2 A$bloxorz$1081     035B GR  |   2 A$bloxorz$1082     035D GR
  2 A$bloxorz$1083     0360 GR  |   2 A$bloxorz$1086     0362 GR
  2 A$bloxorz$1087     0364 GR  |   2 A$bloxorz$1088     0366 GR
  2 A$bloxorz$1089     0368 GR  |   2 A$bloxorz$1098     036B GR
  2 A$bloxorz$1099     036E GR  |   2 A$bloxorz$1100     036F GR
  2 A$bloxorz$1106     0372 GR  |   2 A$bloxorz$1107     0374 GR
  2 A$bloxorz$1113     0376 GR  |   2 A$bloxorz$1115     0379 GR
  2 A$bloxorz$1116     037B GR  |   2 A$bloxorz$1118     037D GR
  2 A$bloxorz$1119     037F GR  |   2 A$bloxorz$1125     0381 GR
  2 A$bloxorz$1126     0383 GR  |   2 A$bloxorz$1132     0386 GR
  2 A$bloxorz$1133     0388 GR  |   2 A$bloxorz$1139     038B GR
  2 A$bloxorz$1140     038D GR  |   2 A$bloxorz$1146     0390 GR
  2 A$bloxorz$1147     0393 GR  |   2 A$bloxorz$1148     0395 GR
  2 A$bloxorz$115      004C GR  |   2 A$bloxorz$1150     0396 GR
  2 A$bloxorz$1151     0398 GR  |   2 A$bloxorz$116      004E GR
  2 A$bloxorz$1160     039A GR  |   2 A$bloxorz$1161     039D GR
  2 A$bloxorz$1167     039F GR  |   2 A$bloxorz$1168     03A1 GR
  2 A$bloxorz$1169     03A3 GR  |   2 A$bloxorz$117      0050 GR
  2 A$bloxorz$1170     03A5 GR  |   2 A$bloxorz$1171     03A8 GR
  2 A$bloxorz$1172     03AA GR  |   2 A$bloxorz$1173     03AC GR
  2 A$bloxorz$118      0053 GR  |   2 A$bloxorz$1183     03AE GR
  2 A$bloxorz$1184     03B1 GR  |   2 A$bloxorz$1185     03B3 GR
  2 A$bloxorz$1191     03B5 GR  |   2 A$bloxorz$1192     03B8 GR
  2 A$bloxorz$1193     03BA GR  |   2 A$bloxorz$1199     03BC GR
  2 A$bloxorz$1200     03BF GR  |   2 A$bloxorz$1201     03C1 GR
  2 A$bloxorz$1207     03C3 GR  |   2 A$bloxorz$1208     03C6 GR
  2 A$bloxorz$1209     03C8 GR  |   2 A$bloxorz$1216     03CA GR
  2 A$bloxorz$1222     03CD GR  |   2 A$bloxorz$1223     03CF GR
  2 A$bloxorz$1224     03D1 GR  |   2 A$bloxorz$1231     03D2 GR
  2 A$bloxorz$1232     03D4 GR  |   2 A$bloxorz$1233     03D6 GR
  2 A$bloxorz$1234     03D9 GR  |   2 A$bloxorz$1235     03DB GR
  2 A$bloxorz$1243     03DC GR  |   2 A$bloxorz$1244     03DE GR
  2 A$bloxorz$1245     03E0 GR  |   2 A$bloxorz$1246     03E3 GR
  2 A$bloxorz$1247     03E5 GR  |   2 A$bloxorz$1255     03E6 GR
  2 A$bloxorz$1256     03E8 GR  |   2 A$bloxorz$1257     03EA GR
  2 A$bloxorz$1263     03ED GR  |   2 A$bloxorz$1264     03EF GR
  2 A$bloxorz$1265     03F1 GR  |   2 A$bloxorz$1266     03F3 GR
  2 A$bloxorz$1267     03F6 GR  |   2 A$bloxorz$1268     03F8 GR
  2 A$bloxorz$128      0055 GR  |   2 A$bloxorz$129      0057 GR
  2 A$bloxorz$130      0059 GR  |   2 A$bloxorz$1301     0414 GR
  2 A$bloxorz$1302     0416 GR  |   2 A$bloxorz$1308     0418 GR
  2 A$bloxorz$131      005B GR  |   2 A$bloxorz$1314     041B GR
  2 A$bloxorz$1315     041D GR  |   2 A$bloxorz$1318     041F GR
  2 A$bloxorz$1319     0421 GR  |   2 A$bloxorz$132      005D GR
  2 A$bloxorz$1325     0424 GR  |   2 A$bloxorz$1326     0426 GR
  2 A$bloxorz$133      005F GR  |   2 A$bloxorz$1332     0429 GR
  2 A$bloxorz$1333     042B GR  |   2 A$bloxorz$1334     042D GR
  2 A$bloxorz$1335     042F GR  |   2 A$bloxorz$1336     0431 GR
  2 A$bloxorz$1337     0434 GR  |   2 A$bloxorz$134      0061 GR
  2 A$bloxorz$1340     0436 GR  |   2 A$bloxorz$1341     0438 GR
  2 A$bloxorz$1342     043A GR  |   2 A$bloxorz$1343     043C GR
  2 A$bloxorz$1349     043F GR  |   2 A$bloxorz$135      0063 GR
  2 A$bloxorz$1350     0441 GR  |   2 A$bloxorz$1351     0443 GR
  2 A$bloxorz$1352     0445 GR  |   2 A$bloxorz$1353     0447 GR
  2 A$bloxorz$1354     044A GR  |   2 A$bloxorz$1357     044C GR
  2 A$bloxorz$1358     044E GR  |   2 A$bloxorz$1359     0450 GR
  2 A$bloxorz$136      0064 GR  |   2 A$bloxorz$1360     0452 GR
  2 A$bloxorz$1366     0455 GR  |   2 A$bloxorz$1367     0457 GR
  2 A$bloxorz$1368     0459 GR  |   2 A$bloxorz$1369     045B GR
  2 A$bloxorz$137      0065 GR  |   2 A$bloxorz$1370     045D GR
  2 A$bloxorz$1371     0460 GR  |   2 A$bloxorz$1374     0462 GR
  2 A$bloxorz$1375     0464 GR  |   2 A$bloxorz$1376     0466 GR
  2 A$bloxorz$1377     0468 GR  |   2 A$bloxorz$138      0067 GR
  2 A$bloxorz$1383     046B GR  |   2 A$bloxorz$1384     046E GR
  2 A$bloxorz$1385     0470 GR  |   2 A$bloxorz$139      0069 GR
  2 A$bloxorz$1391     0472 GR  |   2 A$bloxorz$1398     0474 GR
  2 A$bloxorz$1399     0476 GR  |   2 A$bloxorz$140      006B GR
  2 A$bloxorz$1400     0478 GR  |   2 A$bloxorz$1401     047A GR
  2 A$bloxorz$1402     047D GR  |   2 A$bloxorz$1403     047F GR
  2 A$bloxorz$1404     0481 GR  |   2 A$bloxorz$1405     0483 GR
  2 A$bloxorz$1406     0485 GR  |   2 A$bloxorz$141      006D GR
  2 A$bloxorz$1412     0487 GR  |   2 A$bloxorz$1419     048A GR
  2 A$bloxorz$142      006F GR  |   2 A$bloxorz$1420     048D GR
  2 A$bloxorz$1421     048F GR  |   2 A$bloxorz$1427     0491 GR
  2 A$bloxorz$1429     0494 GR  |   2 A$bloxorz$1430     0496 GR
  2 A$bloxorz$1438     0498 GR  |   2 A$bloxorz$1444     049B GR
  2 A$bloxorz$1445     049E GR  |   2 A$bloxorz$1451     04A1 GR
  2 A$bloxorz$1452     04A4 GR  |   2 A$bloxorz$1453     04A5 GR
  2 A$bloxorz$1459     04A8 GR  |   2 A$bloxorz$1460     04A9 GR
  2 A$bloxorz$1466     04AB GR  |   2 A$bloxorz$1467     04AD GR
  2 A$bloxorz$1469     04B0 GR  |   2 A$bloxorz$1472     04B1 GR
  2 A$bloxorz$1478     04B3 GR  |   2 A$bloxorz$1479     04B6 GR
  2 A$bloxorz$1480     04B9 GR  |   2 A$bloxorz$1481     04BB GR
  2 A$bloxorz$1482     04BE GR  |   2 A$bloxorz$1483     04C1 GR
  2 A$bloxorz$1484     04C4 GR  |   2 A$bloxorz$1485     04C7 GR
  2 A$bloxorz$1486     04CA GR  |   2 A$bloxorz$1487     04CD GR
  2 A$bloxorz$1488     04D0 GR  |   2 A$bloxorz$149      0071 GR
  2 A$bloxorz$1494     04D3 GR  |   2 A$bloxorz$1495     04D5 GR
  2 A$bloxorz$1496     04D8 GR  |   2 A$bloxorz$1502     04DB GR
  2 A$bloxorz$1503     04DE GR  |   2 A$bloxorz$1504     04E1 GR
  2 A$bloxorz$1505     04E4 GR  |   2 A$bloxorz$1506     04E6 GR
  2 A$bloxorz$1507     04E7 GR  |   2 A$bloxorz$1508     04E9 GR
  2 A$bloxorz$1509     04EC GR  |   2 A$bloxorz$1510     04EE GR
  2 A$bloxorz$1513     04F0 GR  |   2 A$bloxorz$1514     04F2 GR
  2 A$bloxorz$1520     04F4 GR  |   2 A$bloxorz$1521     04F7 GR
  2 A$bloxorz$1527     04F9 GR  |   2 A$bloxorz$1528     04FC GR
  2 A$bloxorz$1529     04FD GR  |   2 A$bloxorz$1530     04FF GR
  2 A$bloxorz$1531     0502 GR  |   2 A$bloxorz$1532     0503 GR
  2 A$bloxorz$1533     0505 GR  |   2 A$bloxorz$1534     0506 GR
  2 A$bloxorz$1535     0507 GR  |   2 A$bloxorz$1536     0508 GR
  2 A$bloxorz$1537     0509 GR  |   2 A$bloxorz$1538     050B GR
  2 A$bloxorz$1539     050D GR  |   2 A$bloxorz$1540     050F GR
  2 A$bloxorz$1541     0511 GR  |   2 A$bloxorz$1542     0513 GR
  2 A$bloxorz$1543     0517 GR  |   2 A$bloxorz$1544     0518 GR
  2 A$bloxorz$1545     051B GR  |   2 A$bloxorz$155      0073 GR
  2 A$bloxorz$1552     051E GR  |   2 A$bloxorz$1553     0521 GR
  2 A$bloxorz$1554     0522 GR  |   2 A$bloxorz$1555     0525 GR
  2 A$bloxorz$156      0075 GR  |   2 A$bloxorz$1561     0527 GR
  2 A$bloxorz$1562     052A GR  |   2 A$bloxorz$1563     052B GR
  2 A$bloxorz$1569     052E GR  |   2 A$bloxorz$157      0077 GR
  2 A$bloxorz$1570     0530 GR  |   2 A$bloxorz$1571     0531 GR
  2 A$bloxorz$1572     0534 GR  |   2 A$bloxorz$1573     0536 GR
  2 A$bloxorz$1574     0537 GR  |   2 A$bloxorz$1575     053A GR
  2 A$bloxorz$1576     053D GR  |   2 A$bloxorz$158      0079 GR
  2 A$bloxorz$1582     0540 GR  |   2 A$bloxorz$1583     0544 GR
  2 A$bloxorz$1584     0546 GR  |   2 A$bloxorz$1585     0549 GR
  2 A$bloxorz$159      007B GR  |   2 A$bloxorz$1592     054C GR
  2 A$bloxorz$1593     054F GR  |   2 A$bloxorz$1594     0552 GR
  2 A$bloxorz$1595     0555 GR  |   2 A$bloxorz$1596     0558 GR
  2 A$bloxorz$1597     055B GR  |   2 A$bloxorz$1598     055E GR
  2 A$bloxorz$1599     0561 GR  |   2 A$bloxorz$160      007D GR
  2 A$bloxorz$1600     0564 GR  |   2 A$bloxorz$1601     0567 GR
  2 A$bloxorz$1607     056A GR  |   2 A$bloxorz$1608     056D GR
  2 A$bloxorz$1609     056F GR  |   2 A$bloxorz$161      0080 GR
  2 A$bloxorz$1610     0572 GR  |   2 A$bloxorz$1616     0575 GR
  2 A$bloxorz$1617     0578 GR  |   2 A$bloxorz$162      0082 GR
  2 A$bloxorz$1624     057A GR  |   2 A$bloxorz$1625     057D GR
  2 A$bloxorz$1626     057E GR  |   2 A$bloxorz$1627     057F GR
  2 A$bloxorz$1628     0580 GR  |   2 A$bloxorz$1629     0582 GR
  2 A$bloxorz$163      0084 GR  |   2 A$bloxorz$1630     0586 GR
  2 A$bloxorz$1636     0589 GR  |   2 A$bloxorz$1642     058C GR
  2 A$bloxorz$1648     058F GR  |   2 A$bloxorz$1649     0592 GR
  2 A$bloxorz$165      0086 GR  |   2 A$bloxorz$1650     0594 GR
  2 A$bloxorz$1656     0597 GR  |   2 A$bloxorz$1657     0599 GR
  2 A$bloxorz$1663     059C GR  |   2 A$bloxorz$1669     059F GR
  2 A$bloxorz$1670     05A1 GR  |   2 A$bloxorz$1676     05A4 GR
  2 A$bloxorz$1677     05A6 GR  |   2 A$bloxorz$1683     05A9 GR
  2 A$bloxorz$1684     05AC GR  |   2 A$bloxorz$1690     05AF GR
  2 A$bloxorz$1691     05B1 GR  |   2 A$bloxorz$1697     05B5 GR
  2 A$bloxorz$1698     05B8 GR  |   2 A$bloxorz$1704     05BA GR
  2 A$bloxorz$1705     05BD GR  |   2 A$bloxorz$1711     05C0 GR
  2 A$bloxorz$1718     05C3 GR  |   2 A$bloxorz$1719     05C6 GR
  2 A$bloxorz$172      0088 GR  |   2 A$bloxorz$1720     05C8 GR
  2 A$bloxorz$173      008A GR  |   2 A$bloxorz$174      008C GR
  2 A$bloxorz$175      008E GR  |   2 A$bloxorz$176      0090 GR
  2 A$bloxorz$177      0092 GR  |   2 A$bloxorz$1777     05FB GR
  2 A$bloxorz$1778     05FD GR  |   2 A$bloxorz$178      0094 GR
  2 A$bloxorz$1784     05FF GR  |   2 A$bloxorz$179      0096 GR
  2 A$bloxorz$1790     0602 GR  |   2 A$bloxorz$1791     0604 GR
  2 A$bloxorz$1794     0606 GR  |   2 A$bloxorz$1795     0608 GR
  2 A$bloxorz$180      0098 GR  |   2 A$bloxorz$1801     060B GR
  2 A$bloxorz$1802     060D GR  |   2 A$bloxorz$1808     0610 GR
  2 A$bloxorz$1809     0612 GR  |   2 A$bloxorz$181      009A GR
  2 A$bloxorz$1810     0614 GR  |   2 A$bloxorz$1811     0616 GR
  2 A$bloxorz$1812     0618 GR  |   2 A$bloxorz$1813     061B GR
  2 A$bloxorz$1816     061D GR  |   2 A$bloxorz$1817     061F GR
  2 A$bloxorz$1818     0621 GR  |   2 A$bloxorz$1819     0623 GR
  2 A$bloxorz$182      009C GR  |   2 A$bloxorz$1825     0626 GR
  2 A$bloxorz$1826     0628 GR  |   2 A$bloxorz$1827     062A GR
  2 A$bloxorz$1828     062C GR  |   2 A$bloxorz$1829     062E GR
  2 A$bloxorz$183      009E GR  |   2 A$bloxorz$1830     0631 GR
  2 A$bloxorz$1833     0633 GR  |   2 A$bloxorz$1834     0635 GR
  2 A$bloxorz$1835     0637 GR  |   2 A$bloxorz$1836     0639 GR
  2 A$bloxorz$184      00A1 GR  |   2 A$bloxorz$1842     063C GR
  2 A$bloxorz$1843     063E GR  |   2 A$bloxorz$1844     0640 GR
  2 A$bloxorz$1845     0642 GR  |   2 A$bloxorz$1846     0644 GR
  2 A$bloxorz$1847     0647 GR  |   2 A$bloxorz$185      00A3 GR
  2 A$bloxorz$1850     0649 GR  |   2 A$bloxorz$1851     064B GR
  2 A$bloxorz$1852     064D GR  |   2 A$bloxorz$1853     064F GR
  2 A$bloxorz$1859     0652 GR  |   2 A$bloxorz$186      00A5 GR
  2 A$bloxorz$1860     0654 GR  |   2 A$bloxorz$1861     0656 GR
  2 A$bloxorz$1862     0658 GR  |   2 A$bloxorz$1863     065A GR
  2 A$bloxorz$1864     065D GR  |   2 A$bloxorz$1867     065F GR
  2 A$bloxorz$1868     0661 GR  |   2 A$bloxorz$1869     0663 GR
  2 A$bloxorz$187      00A9 GR  |   2 A$bloxorz$1870     0665 GR
  2 A$bloxorz$1876     0668 GR  |   2 A$bloxorz$1877     066A GR
  2 A$bloxorz$1878     066C GR  |   2 A$bloxorz$1879     066E GR
  2 A$bloxorz$188      00AB GR  |   2 A$bloxorz$1880     0670 GR
  2 A$bloxorz$1881     0673 GR  |   2 A$bloxorz$1884     0675 GR
  2 A$bloxorz$1885     0677 GR  |   2 A$bloxorz$1886     0679 GR
  2 A$bloxorz$1887     067B GR  |   2 A$bloxorz$1893     067E GR
  2 A$bloxorz$1894     0681 GR  |   2 A$bloxorz$1895     0683 GR
  2 A$bloxorz$1901     0685 GR  |   2 A$bloxorz$1907     0688 GR
  2 A$bloxorz$1914     068B GR  |   2 A$bloxorz$1915     068E GR
  2 A$bloxorz$1916     0690 GR  |   2 A$bloxorz$1922     0692 GR
  2 A$bloxorz$1923     0694 GR  |   2 A$bloxorz$1929     0697 GR
  2 A$bloxorz$1936     069A GR  |   2 A$bloxorz$1937     069D GR
  2 A$bloxorz$1938     069F GR  |   2 A$bloxorz$1944     06A1 GR
  2 A$bloxorz$1945     06A3 GR  |   2 A$bloxorz$1951     06A6 GR
  2 A$bloxorz$1958     06A9 GR  |   2 A$bloxorz$1959     06AC GR
  2 A$bloxorz$196      00AD GR  |   2 A$bloxorz$1960     06AE GR
  2 A$bloxorz$1966     06B0 GR  |   2 A$bloxorz$1967     06B2 GR
  2 A$bloxorz$197      00AF GR  |   2 A$bloxorz$1973     06B5 GR
  2 A$bloxorz$1975     06B8 GR  |   2 A$bloxorz$1976     06BA GR
  2 A$bloxorz$203      00B2 GR  |   2 A$bloxorz$204      00B5 GR
  2 A$bloxorz$2043     06F8 GR  |   2 A$bloxorz$2044     06FA GR
  2 A$bloxorz$2050     06FC GR  |   2 A$bloxorz$2056     06FF GR
  2 A$bloxorz$2057     0701 GR  |   2 A$bloxorz$2060     0703 GR
  2 A$bloxorz$2061     0705 GR  |   2 A$bloxorz$2067     0708 GR
  2 A$bloxorz$2068     070A GR  |   2 A$bloxorz$2074     070D GR
  2 A$bloxorz$2075     070F GR  |   2 A$bloxorz$2076     0711 GR
  2 A$bloxorz$2077     0713 GR  |   2 A$bloxorz$2078     0715 GR
  2 A$bloxorz$2079     0718 GR  |   2 A$bloxorz$2082     071A GR
  2 A$bloxorz$2083     071C GR  |   2 A$bloxorz$2084     071E GR
  2 A$bloxorz$2085     0720 GR  |   2 A$bloxorz$209      00B6 GR
  2 A$bloxorz$2091     0723 GR  |   2 A$bloxorz$2092     0725 GR
  2 A$bloxorz$2093     0727 GR  |   2 A$bloxorz$2094     0729 GR
  2 A$bloxorz$2095     072B GR  |   2 A$bloxorz$2096     072E GR
  2 A$bloxorz$2099     0730 GR  |   2 A$bloxorz$2100     0732 GR
  2 A$bloxorz$2101     0734 GR  |   2 A$bloxorz$2102     0736 GR
  2 A$bloxorz$2108     0739 GR  |   2 A$bloxorz$2109     073B GR
  2 A$bloxorz$2110     073D GR  |   2 A$bloxorz$2111     073F GR
  2 A$bloxorz$2112     0741 GR  |   2 A$bloxorz$2113     0744 GR
  2 A$bloxorz$2116     0746 GR  |   2 A$bloxorz$2117     0748 GR
  2 A$bloxorz$2118     074A GR  |   2 A$bloxorz$2119     074C GR
  2 A$bloxorz$212      00B8 GR  |   2 A$bloxorz$2125     074F GR
  2 A$bloxorz$2126     0751 GR  |   2 A$bloxorz$2127     0753 GR
  2 A$bloxorz$2128     0755 GR  |   2 A$bloxorz$2129     0757 GR
  2 A$bloxorz$2130     075A GR  |   2 A$bloxorz$2133     075C GR
  2 A$bloxorz$2134     075E GR  |   2 A$bloxorz$2135     0760 GR
  2 A$bloxorz$2136     0762 GR  |   2 A$bloxorz$2142     0765 GR
  2 A$bloxorz$2143     0768 GR  |   2 A$bloxorz$2144     076A GR
  2 A$bloxorz$215      00BA GR  |   2 A$bloxorz$2150     076C GR
  2 A$bloxorz$2156     076F GR  |   2 A$bloxorz$2162     0772 GR
  2 A$bloxorz$2169     0775 GR  |   2 A$bloxorz$2170     0778 GR
  2 A$bloxorz$2171     077A GR  |   2 A$bloxorz$2177     077C GR
  2 A$bloxorz$2178     077F GR  |   2 A$bloxorz$218      00BD GR
  2 A$bloxorz$2184     0782 GR  |   2 A$bloxorz$2190     0785 GR
  2 A$bloxorz$2191     0787 GR  |   2 A$bloxorz$2197     078A GR
  2 A$bloxorz$2203     078D GR  |   2 A$bloxorz$221      00BF GR
  2 A$bloxorz$2210     0790 GR  |   2 A$bloxorz$2211     0793 GR
  2 A$bloxorz$2212     0795 GR  |   2 A$bloxorz$2218     0797 GR
  2 A$bloxorz$2219     0799 GR  |   2 A$bloxorz$2221     079C GR
  2 A$bloxorz$2222     079E GR  |   2 A$bloxorz$2225     07A0 GR
  2 A$bloxorz$2231     07A2 GR  |   2 A$bloxorz$2237     07A5 GR
  2 A$bloxorz$2238     07A8 GR  |   2 A$bloxorz$2239     07A9 GR
  2 A$bloxorz$224      00C1 GR  |   2 A$bloxorz$2240     07AB GR
  2 A$bloxorz$2246     07AE GR  |   2 A$bloxorz$2247     07B0 GR
  2 A$bloxorz$2253     07B2 GR  |   2 A$bloxorz$2254     07B3 GR
  2 A$bloxorz$2255     07B5 GR  |   2 A$bloxorz$2257     07B6 GR
  2 A$bloxorz$2263     07B9 GR  |   2 A$bloxorz$227      00C3 GR
  2 A$bloxorz$2270     07BC GR  |   2 A$bloxorz$2271     07BF GR
  2 A$bloxorz$2272     07C1 GR  |   2 A$bloxorz$2278     07C3 GR
  2 A$bloxorz$2280     07C6 GR  |   2 A$bloxorz$2281     07C8 GR
  2 A$bloxorz$2289     07C9 GR  |   2 A$bloxorz$2290     07CC GR
  2 A$bloxorz$2297     07CD GR  |   2 A$bloxorz$230      00C5 GR
  2 A$bloxorz$2305     07D0 GR  |   2 A$bloxorz$2306     07D3 GR
  2 A$bloxorz$2312     07D5 GR  |   2 A$bloxorz$2318     07D8 GR
  2 A$bloxorz$2319     07DB GR  |   2 A$bloxorz$2326     07DE GR
  2 A$bloxorz$2327     07E1 GR  |   2 A$bloxorz$233      00C7 GR
  2 A$bloxorz$2330     07E2 GR  |   2 A$bloxorz$2331     07E4 GR
  2 A$bloxorz$2337     07E6 GR  |   2 A$bloxorz$2343     07E9 GR
  2 A$bloxorz$2344     07EC GR  |   2 A$bloxorz$2350     07EF GR
  2 A$bloxorz$2351     07F2 GR  |   2 A$bloxorz$2352     07F3 GR
  2 A$bloxorz$2358     07F6 GR  |   2 A$bloxorz$2359     07F8 GR
  2 A$bloxorz$236      00C9 GR  |   2 A$bloxorz$2365     07FC GR
  2 A$bloxorz$2366     07FF GR  |   2 A$bloxorz$2367     0802 GR
  2 A$bloxorz$2373     0804 GR  |   2 A$bloxorz$2374     0807 GR
  2 A$bloxorz$2375     0808 GR  |   2 A$bloxorz$2376     080B GR
  2 A$bloxorz$2377     080D GR  |   2 A$bloxorz$2378     080F GR
  2 A$bloxorz$2379     0811 GR  |   2 A$bloxorz$2380     0813 GR
  2 A$bloxorz$2386     0816 GR  |   2 A$bloxorz$2387     0819 GR
  2 A$bloxorz$2388     081B GR  |   2 A$bloxorz$2389     081E GR
  2 A$bloxorz$239      00CC GR  |   2 A$bloxorz$2390     081F GR
  2 A$bloxorz$2391     0821 GR  |   2 A$bloxorz$2392     0823 GR
  2 A$bloxorz$2393     0824 GR  |   2 A$bloxorz$2394     0826 GR
  2 A$bloxorz$2395     0828 GR  |   2 A$bloxorz$2396     082B GR
  2 A$bloxorz$2397     082D GR  |   2 A$bloxorz$2398     082E GR
  2 A$bloxorz$2399     0830 GR  |   2 A$bloxorz$2400     0832 GR
  2 A$bloxorz$2401     0835 GR  |   2 A$bloxorz$2408     0837 GR
  2 A$bloxorz$2409     083A GR  |   2 A$bloxorz$2415     083E GR
  2 A$bloxorz$2416     0841 GR  |   2 A$bloxorz$2417     0842 GR
  2 A$bloxorz$242      00CF GR  |   2 A$bloxorz$2423     0845 GR
  2 A$bloxorz$2424     0846 GR  |   2 A$bloxorz$2425     0848 GR
  2 A$bloxorz$2426     084B GR  |   2 A$bloxorz$2427     084C GR
  2 A$bloxorz$2428     084E GR  |   2 A$bloxorz$2429     084F GR
  2 A$bloxorz$2430     0850 GR  |   2 A$bloxorz$2431     0851 GR
  2 A$bloxorz$2432     0852 GR  |   2 A$bloxorz$2433     0854 GR
  2 A$bloxorz$2434     0856 GR  |   2 A$bloxorz$2435     0858 GR
  2 A$bloxorz$2436     085A GR  |   2 A$bloxorz$2437     085C GR
  2 A$bloxorz$2444     0860 GR  |   2 A$bloxorz$2452     0863 GR
  2 A$bloxorz$2458     0867 GR  |   2 A$bloxorz$2459     0869 GR
  2 A$bloxorz$2465     086C GR  |   2 A$bloxorz$2466     086F GR
  2 A$bloxorz$2467     0872 GR  |   2 A$bloxorz$2468     0875 GR
  2 A$bloxorz$2469     0878 GR  |   2 A$bloxorz$2470     087B GR
  2 A$bloxorz$2471     087E GR  |   2 A$bloxorz$2472     0881 GR
  2 A$bloxorz$2473     0884 GR  |   2 A$bloxorz$2474     0887 GR
  2 A$bloxorz$2475     088A GR  |   2 A$bloxorz$2476     088D GR
  2 A$bloxorz$2477     0890 GR  |   2 A$bloxorz$2478     0893 GR
  2 A$bloxorz$2479     0896 GR  |   2 A$bloxorz$248      00D1 GR
  2 A$bloxorz$2480     0899 GR  |   2 A$bloxorz$2481     089C GR
  2 A$bloxorz$2482     089F GR  |   2 A$bloxorz$2488     08A2 GR
  2 A$bloxorz$2489     08A5 GR  |   2 A$bloxorz$2490     08A7 GR
  2 A$bloxorz$2491     08AA GR  |   2 A$bloxorz$2497     08AD GR
  2 A$bloxorz$2498     08B0 GR  |   2 A$bloxorz$2499     08B2 GR
  2 A$bloxorz$2506     08B4 GR  |   2 A$bloxorz$2507     08B7 GR
  2 A$bloxorz$251      00D2 GR  |   2 A$bloxorz$2514     08B9 GR
  2 A$bloxorz$2516     08BC GR  |   2 A$bloxorz$2517     08BE GR
  2 A$bloxorz$2525     08C0 GR  |   2 A$bloxorz$2531     08C3 GR
  2 A$bloxorz$2532     08C6 GR  |   2 A$bloxorz$2538     08C8 GR
  2 A$bloxorz$2539     08CB GR  |   2 A$bloxorz$254      00D3 GR
  2 A$bloxorz$2540     08CE GR  |   2 A$bloxorz$2541     08D0 GR
  2 A$bloxorz$2542     08D2 GR  |   2 A$bloxorz$2549     08D5 GR
  2 A$bloxorz$2551     08D8 GR  |   2 A$bloxorz$2559     08D9 GR
  2 A$bloxorz$2565     08DC GR  |   2 A$bloxorz$2566     08DD GR
  2 A$bloxorz$257      00D4 GR  |   2 A$bloxorz$2572     08E0 GR
  2 A$bloxorz$2578     08E3 GR  |   2 A$bloxorz$2579     08E6 GR
  2 A$bloxorz$2580     08E8 GR  |   2 A$bloxorz$2586     08EA GR
  2 A$bloxorz$2587     08EB GR  |   2 A$bloxorz$2593     08EE GR
  2 A$bloxorz$2594     08F0 GR  |   2 A$bloxorz$2595     08F3 GR
  2 A$bloxorz$2597     08F6 GR  |   2 A$bloxorz$2598     08F9 GR
  2 A$bloxorz$2599     08FB GR  |   2 A$bloxorz$260      00D5 GR
  2 A$bloxorz$2605     08FD GR  |   2 A$bloxorz$2606     08FF GR
  2 A$bloxorz$2612     0902 GR  |   2 A$bloxorz$2613     0904 GR
  2 A$bloxorz$2614     0907 GR  |   2 A$bloxorz$2616     0909 GR
  2 A$bloxorz$2617     090C GR  |   2 A$bloxorz$2618     090E GR
  2 A$bloxorz$2624     0910 GR  |   2 A$bloxorz$2625     0912 GR
  2 A$bloxorz$263      00D7 GR  |   2 A$bloxorz$2631     0915 GR
  2 A$bloxorz$2632     0917 GR  |   2 A$bloxorz$2633     091A GR
  2 A$bloxorz$2635     091C GR  |   2 A$bloxorz$2636     091F GR
  2 A$bloxorz$2637     0921 GR  |   2 A$bloxorz$2643     0923 GR
  2 A$bloxorz$2644     0925 GR  |   2 A$bloxorz$2650     0928 GR
  2 A$bloxorz$2651     092A GR  |   2 A$bloxorz$266      00D8 GR
  2 A$bloxorz$2661     092D GR  |   2 A$bloxorz$2662     0930 GR
  2 A$bloxorz$2663     0932 GR  |   2 A$bloxorz$2669     0934 GR
  2 A$bloxorz$2670     0937 GR  |   2 A$bloxorz$2676     093A GR
  2 A$bloxorz$2677     093C GR  |   2 A$bloxorz$2684     0940 GR
  2 A$bloxorz$269      00DA GR  |   2 A$bloxorz$2690     0943 GR
  2 A$bloxorz$2691     0946 GR  |   2 A$bloxorz$2692     0948 GR
  2 A$bloxorz$2698     094A GR  |   2 A$bloxorz$2699     094D GR
  2 A$bloxorz$2705     094F GR  |   2 A$bloxorz$2712     0952 GR
  2 A$bloxorz$2713     0955 GR  |   2 A$bloxorz$2714     0957 GR
  2 A$bloxorz$2715     0959 GR  |   2 A$bloxorz$2716     095C GR
  2 A$bloxorz$272      00DB GR  |   2 A$bloxorz$2722     095E GR
  2 A$bloxorz$2729     0961 GR  |   2 A$bloxorz$2730     0964 GR
  2 A$bloxorz$2731     0966 GR  |   2 A$bloxorz$2732     0968 GR
  2 A$bloxorz$2733     096B GR  |   2 A$bloxorz$2739     096D GR
  2 A$bloxorz$2740     0970 GR  |   2 A$bloxorz$2746     0972 GR
  2 A$bloxorz$2747     0975 GR  |   2 A$bloxorz$2748     0976 GR
  2 A$bloxorz$2749     0979 GR  |   2 A$bloxorz$275      00DD GR
  2 A$bloxorz$2756     097B GR  |   2 A$bloxorz$2757     097E GR
  2 A$bloxorz$2763     0981 GR  |   2 A$bloxorz$2764     0984 GR
  2 A$bloxorz$2765     0985 GR  |   2 A$bloxorz$2772     0988 GR
  2 A$bloxorz$2779     098B GR  |   2 A$bloxorz$278      00DF GR
  2 A$bloxorz$2780     098E GR  |   2 A$bloxorz$2781     0990 GR
  2 A$bloxorz$2787     0992 GR  |   2 A$bloxorz$2789     0995 GR
  2 A$bloxorz$2797     0996 GR  |   2 A$bloxorz$2798     0998 GR
  2 A$bloxorz$2804     099B GR  |   2 A$bloxorz$281      00E0 GR
  2 A$bloxorz$2810     099E GR  |   2 A$bloxorz$2811     09A1 GR
  2 A$bloxorz$2817     09A4 GR  |   2 A$bloxorz$2818     09A7 GR
  2 A$bloxorz$2824     09AA GR  |   2 A$bloxorz$2825     09AE GR
  2 A$bloxorz$2828     09AF GR  |   2 A$bloxorz$2834     09B1 GR
  2 A$bloxorz$284      00E2 GR  |   2 A$bloxorz$2840     09B4 GR
  2 A$bloxorz$2841     09B5 GR  |   2 A$bloxorz$2847     09B8 GR
  2 A$bloxorz$2853     09BB GR  |   2 A$bloxorz$2854     09BE GR
  2 A$bloxorz$2860     09C2 GR  |   2 A$bloxorz$2861     09C5 GR
  2 A$bloxorz$2867     09C7 GR  |   2 A$bloxorz$287      00E4 GR
  2 A$bloxorz$2874     09CA GR  |   2 A$bloxorz$2875     09CD GR
  2 A$bloxorz$2876     09CF GR  |   2 A$bloxorz$2877     09D2 GR
  2 A$bloxorz$2878     09D5 GR  |   2 A$bloxorz$2884     09D7 GR
  2 A$bloxorz$2885     09DA GR  |   2 A$bloxorz$2886     09DB GR
  2 A$bloxorz$2887     09DD GR  |   2 A$bloxorz$2888     09E0 GR
  2 A$bloxorz$2889     09E2 GR  |   2 A$bloxorz$2890     09E4 GR
  2 A$bloxorz$2891     09E7 GR  |   2 A$bloxorz$2897     09E9 GR
  2 A$bloxorz$2898     09EC GR  |   2 A$bloxorz$2899     09ED GR
  2 A$bloxorz$290      00E6 GR  |   2 A$bloxorz$2900     09EF GR
  2 A$bloxorz$2901     09F2 GR  |   2 A$bloxorz$2902     09F5 GR
  2 A$bloxorz$2908     09F7 GR  |   2 A$bloxorz$2909     09FA GR
  2 A$bloxorz$2910     09FC GR  |   2 A$bloxorz$2911     09FF GR
  2 A$bloxorz$2912     0A02 GR  |   2 A$bloxorz$2918     0A04 GR
  2 A$bloxorz$2919     0A07 GR  |   2 A$bloxorz$2920     0A08 GR
  2 A$bloxorz$2921     0A0A GR  |   2 A$bloxorz$2922     0A0D GR
  2 A$bloxorz$2923     0A0F GR  |   2 A$bloxorz$2924     0A11 GR
  2 A$bloxorz$2925     0A14 GR  |   2 A$bloxorz$293      00E8 GR
  2 A$bloxorz$2931     0A16 GR  |   2 A$bloxorz$2932     0A19 GR
  2 A$bloxorz$2933     0A1A GR  |   2 A$bloxorz$2934     0A1C GR
  2 A$bloxorz$2935     0A1F GR  |   2 A$bloxorz$2936     0A22 GR
  2 A$bloxorz$2942     0A24 GR  |   2 A$bloxorz$2943     0A26 GR
  2 A$bloxorz$2944     0A29 GR  |   2 A$bloxorz$2950     0A2B GR
  2 A$bloxorz$2951     0A2D GR  |   2 A$bloxorz$2957     0A31 GR
  2 A$bloxorz$2958     0A34 GR  |   2 A$bloxorz$296      00EA GR
  2 A$bloxorz$2965     0A37 GR  |   2 A$bloxorz$2966     0A3A GR
  2 A$bloxorz$2967     0A3C GR  |   2 A$bloxorz$2968     0A3E GR
  2 A$bloxorz$2969     0A40 GR  |   2 A$bloxorz$2970     0A42 GR
  2 A$bloxorz$2971     0A46 GR  |   2 A$bloxorz$2978     0A48 GR
  2 A$bloxorz$2979     0A4A GR  |   2 A$bloxorz$2980     0A4C GR
  2 A$bloxorz$2981     0A4E GR  |   2 A$bloxorz$2982     0A50 GR
  2 A$bloxorz$2989     0A52 GR  |   2 A$bloxorz$299      00ED GR
  2 A$bloxorz$2996     0A55 GR  |   2 A$bloxorz$3003     0A57 GR
  2 A$bloxorz$3004     0A59 GR  |   2 A$bloxorz$3005     0A5B GR
  2 A$bloxorz$3006     0A5D GR  |   2 A$bloxorz$3013     0A5F GR
  2 A$bloxorz$302      00EF GR  |   2 A$bloxorz$3020     0A62 GR
  2 A$bloxorz$3027     0A64 GR  |   2 A$bloxorz$3028     0A66 GR
  2 A$bloxorz$3029     0A68 GR  |   2 A$bloxorz$3030     0A6A GR
  2 A$bloxorz$3037     0A6C GR  |   2 A$bloxorz$305      00F1 GR
  2 A$bloxorz$3050     0A6F GR  |   2 A$bloxorz$3051     0A72 GR
  2 A$bloxorz$3052     0A74 GR  |   2 A$bloxorz$3053     0A77 GR
  2 A$bloxorz$3054     0A7A GR  |   2 A$bloxorz$3055     0A7C GR
  2 A$bloxorz$3056     0A7F GR  |   2 A$bloxorz$3057     0A82 GR
  2 A$bloxorz$3058     0A84 GR  |   2 A$bloxorz$3059     0A87 GR
  2 A$bloxorz$3065     0A89 GR  |   2 A$bloxorz$3071     0A8C GR
  2 A$bloxorz$3072     0A8E GR  |   2 A$bloxorz$3078     0A91 GR
  2 A$bloxorz$3079     0A94 GR  |   2 A$bloxorz$308      00F3 GR
  2 A$bloxorz$3085     0A97 GR  |   2 A$bloxorz$3086     0A99 GR
  2 A$bloxorz$3087     0A9D GR  |   2 A$bloxorz$3094     0A9F GR
  2 A$bloxorz$3095     0AA2 GR  |   2 A$bloxorz$3096     0AA4 GR
  2 A$bloxorz$3102     0AA6 GR  |   2 A$bloxorz$3103     0AA8 GR
  2 A$bloxorz$311      00F5 GR  |   2 A$bloxorz$3110     0AAB GR
  2 A$bloxorz$3111     0AAE GR  |   2 A$bloxorz$3117     0AB0 GR
  2 A$bloxorz$3118     0AB2 GR  |   2 A$bloxorz$3119     0AB4 GR
  2 A$bloxorz$3125     0AB8 GR  |   2 A$bloxorz$3126     0ABB GR
  2 A$bloxorz$3127     0ABD GR  |   2 A$bloxorz$3128     0AC0 GR
  2 A$bloxorz$3129     0AC3 GR  |   2 A$bloxorz$3130     0AC5 GR
  2 A$bloxorz$3137     0AC8 GR  |   2 A$bloxorz$3138     0ACB GR
  2 A$bloxorz$3139     0ACD GR  |   2 A$bloxorz$314      00F7 GR
  2 A$bloxorz$3140     0ACF GR  |   2 A$bloxorz$3141     0AD1 GR
  2 A$bloxorz$3142     0AD3 GR  |   2 A$bloxorz$3143     0AD7 GR
  2 A$bloxorz$3150     0ADA GR  |   2 A$bloxorz$3151     0ADC GR
  2 A$bloxorz$3152     0ADE GR  |   2 A$bloxorz$3153     0AE0 GR
  2 A$bloxorz$3154     0AE2 GR  |   2 A$bloxorz$3155     0AE4 GR
  2 A$bloxorz$3156     0AE6 GR  |   2 A$bloxorz$3163     0AE8 GR
  2 A$bloxorz$3164     0AEB GR  |   2 A$bloxorz$3165     0AED GR
  2 A$bloxorz$3166     0AF0 GR  |   2 A$bloxorz$3167     0AF3 GR
  2 A$bloxorz$317      00F9 GR  |   2 A$bloxorz$3174     0AF5 GR
  2 A$bloxorz$3181     0AF8 GR  |   2 A$bloxorz$3182     0AFA GR
  2 A$bloxorz$3183     0AFC GR  |   2 A$bloxorz$3189     0AFE GR
  2 A$bloxorz$3190     0B01 GR  |   2 A$bloxorz$3191     0B03 GR
  2 A$bloxorz$3192     0B06 GR  |   2 A$bloxorz$3193     0B09 GR
  2 A$bloxorz$320      00FB GR  |   2 A$bloxorz$3200     0B0B GR
  2 A$bloxorz$3201     0B0D GR  |   2 A$bloxorz$3202     0B0F GR
  2 A$bloxorz$3208     0B11 GR  |   2 A$bloxorz$3209     0B14 GR
  2 A$bloxorz$3210     0B15 GR  |   2 A$bloxorz$3211     0B17 GR
  2 A$bloxorz$3212     0B1A GR  |   2 A$bloxorz$3213     0B1D GR
  2 A$bloxorz$3220     0B1F GR  |   2 A$bloxorz$3227     0B21 GR
  2 A$bloxorz$3228     0B23 GR  |   2 A$bloxorz$3229     0B25 GR
  2 A$bloxorz$323      00FD GR  |   2 A$bloxorz$3235     0B27 GR
  2 A$bloxorz$3236     0B2A GR  |   2 A$bloxorz$3237     0B2C GR
  2 A$bloxorz$3238     0B2F GR  |   2 A$bloxorz$3239     0B32 GR
  2 A$bloxorz$3246     0B34 GR  |   2 A$bloxorz$3247     0B36 GR
  2 A$bloxorz$3248     0B38 GR  |   2 A$bloxorz$3254     0B3A GR
  2 A$bloxorz$3255     0B3D GR  |   2 A$bloxorz$3256     0B3E GR
  2 A$bloxorz$3257     0B40 GR  |   2 A$bloxorz$3258     0B43 GR
  2 A$bloxorz$3259     0B45 GR  |   2 A$bloxorz$326      00FF GR
  2 A$bloxorz$3260     0B47 GR  |   2 A$bloxorz$3261     0B4A GR
  2 A$bloxorz$3269     0B4C GR  |   2 A$bloxorz$3270     0B4E GR
  2 A$bloxorz$3273     0B4F GR  |   2 A$bloxorz$3274     0B51 GR
  2 A$bloxorz$3280     0B53 GR  |   2 A$bloxorz$3286     0B56 GR
  2 A$bloxorz$3287     0B58 GR  |   2 A$bloxorz$3288     0B5A GR
  2 A$bloxorz$329      0100 GR  |   2 A$bloxorz$3294     0B5D GR
  2 A$bloxorz$3295     0B5F GR  |   2 A$bloxorz$3296     0B61 GR
  2 A$bloxorz$33       0000 GR  |   2 A$bloxorz$3302     0B64 GR
  2 A$bloxorz$3303     0B66 GR  |   2 A$bloxorz$3304     0B68 GR
  2 A$bloxorz$3305     0B6B GR  |   2 A$bloxorz$3306     0B6D GR
  2 A$bloxorz$3307     0B6F GR  |   2 A$bloxorz$3313     0B71 GR
  2 A$bloxorz$3314     0B73 GR  |   2 A$bloxorz$332      0101 GR
  2 A$bloxorz$3321     0B76 GR  |   2 A$bloxorz$3322     0B77 GR
  2 A$bloxorz$3328     0B7A GR  |   2 A$bloxorz$3329     0B7C GR
  2 A$bloxorz$3335     0B80 GR  |   2 A$bloxorz$3336     0B82 GR
  2 A$bloxorz$3342     0B85 GR  |   2 A$bloxorz$3343     0B87 GR
  2 A$bloxorz$3349     0B8A GR  |   2 A$bloxorz$335      0103 GR
  2 A$bloxorz$3355     0B8D GR  |   2 A$bloxorz$3361     0B90 GR
  2 A$bloxorz$3367     0B93 GR  |   2 A$bloxorz$3379     0B96 GR
  2 A$bloxorz$338      0104 GR  |   2 A$bloxorz$3385     0B99 GR
  2 A$bloxorz$3386     0B9C GR  |   2 A$bloxorz$3387     0B9E GR
  2 A$bloxorz$3388     0BA2 GR  |   2 A$bloxorz$3389     0BA3 GR
  2 A$bloxorz$3390     0BA5 GR  |   2 A$bloxorz$3391     0BA6 GR
  2 A$bloxorz$3392     0BA7 GR  |   2 A$bloxorz$3393     0BA9 GR
  2 A$bloxorz$34       0002 GR  |   2 A$bloxorz$341      0106 GR
  2 A$bloxorz$3410     0BBF GR  |   2 A$bloxorz$3416     0BC2 GR
  2 A$bloxorz$3422     0BC5 GR  |   2 A$bloxorz$3429     0BC8 GR
  2 A$bloxorz$3435     0BCB GR  |   2 A$bloxorz$344      0107 GR
  2 A$bloxorz$3441     0BCE GR  |   2 A$bloxorz$3448     0BD1 GR
  2 A$bloxorz$3454     0BD4 GR  |   2 A$bloxorz$3460     0BD7 GR
  2 A$bloxorz$3467     0BDA GR  |   2 A$bloxorz$347      0109 GR
  2 A$bloxorz$3473     0BDD GR  |   2 A$bloxorz$3479     0BE0 GR
  2 A$bloxorz$3486     0BE3 GR  |   2 A$bloxorz$3492     0BE6 GR
  2 A$bloxorz$3498     0BE9 GR  |   2 A$bloxorz$35       0004 GR
  2 A$bloxorz$350      010A GR  |   2 A$bloxorz$3505     0BEC GR
  2 A$bloxorz$3511     0BEF GR  |   2 A$bloxorz$3517     0BF2 GR
  2 A$bloxorz$3524     0BF5 GR  |   2 A$bloxorz$353      010C GR
  2 A$bloxorz$3530     0BF8 GR  |   2 A$bloxorz$3536     0BFB GR
  2 A$bloxorz$3543     0BFD GR  |   2 A$bloxorz$3549     0C00 GR
  2 A$bloxorz$3555     0C03 GR  |   2 A$bloxorz$356      010E GR
  2 A$bloxorz$3562     0C05 GR  |   2 A$bloxorz$3568     0C08 GR
  2 A$bloxorz$3580     0C0B GR  |   2 A$bloxorz$3581     0C0E GR
  2 A$bloxorz$3582     0C10 GR  |   2 A$bloxorz$3588     0C12 GR
  2 A$bloxorz$359      0110 GR  |   2 A$bloxorz$3594     0C15 GR
  2 A$bloxorz$3595     0C18 GR  |   2 A$bloxorz$3598     0C1A GR
  2 A$bloxorz$3599     0C1C GR  |   2 A$bloxorz$3605     0C1F GR
  2 A$bloxorz$3611     0C22 GR  |   2 A$bloxorz$362      0112 GR
  2 A$bloxorz$3620     0C25 GR  |   2 A$bloxorz$3621     0C28 GR
  2 A$bloxorz$3627     0C2C GR  |   2 A$bloxorz$3628     0C2F GR
  2 A$bloxorz$3629     0C32 GR  |   2 A$bloxorz$3635     0C35 GR
  2 A$bloxorz$3636     0C39 GR  |   2 A$bloxorz$3642     0C3D GR
  2 A$bloxorz$3643     0C40 GR  |   2 A$bloxorz$3649     0C43 GR
  2 A$bloxorz$365      0114 GR  |   2 A$bloxorz$3650     0C46 GR
  2 A$bloxorz$3651     0C49 GR  |   2 A$bloxorz$3657     0C4D GR
  2 A$bloxorz$3658     0C4F GR  |   2 A$bloxorz$3664     0C52 GR
  2 A$bloxorz$3665     0C55 GR  |   2 A$bloxorz$368      0117 GR
  2 A$bloxorz$371      011A GR  |   2 A$bloxorz$374      011C GR
  2 A$bloxorz$377      011E GR  |   2 A$bloxorz$380      011F GR
  2 A$bloxorz$383      0121 GR  |   2 A$bloxorz$386      0123 GR
  2 A$bloxorz$389      0125 GR  |   2 A$bloxorz$392      0127 GR
  2 A$bloxorz$398      0129 GR  |   2 A$bloxorz$401      012B GR
  2 A$bloxorz$404      012D GR  |   2 A$bloxorz$407      0130 GR
  2 A$bloxorz$410      0132 GR  |   2 A$bloxorz$413      0134 GR
  2 A$bloxorz$416      0136 GR  |   2 A$bloxorz$419      0138 GR
  2 A$bloxorz$422      013A GR  |   2 A$bloxorz$425      013C GR
  2 A$bloxorz$428      013E GR  |   2 A$bloxorz$431      0140 GR
  2 A$bloxorz$434      0142 GR  |   2 A$bloxorz$440      0144 GR
  2 A$bloxorz$443      0146 GR  |   2 A$bloxorz$446      0147 GR
  2 A$bloxorz$449      0149 GR  |   2 A$bloxorz$452      014A GR
  2 A$bloxorz$455      014C GR  |   2 A$bloxorz$458      014D GR
  2 A$bloxorz$461      014F GR  |   2 A$bloxorz$467      0151 GR
  2 A$bloxorz$47       0006 GR  |   2 A$bloxorz$470      0153 GR
  2 A$bloxorz$473      0156 GR  |   2 A$bloxorz$476      0157 GR
  2 A$bloxorz$479      0159 GR  |   2 A$bloxorz$482      015B GR
  2 A$bloxorz$485      015D GR  |   2 A$bloxorz$488      015F GR
  2 A$bloxorz$491      0161 GR  |   2 A$bloxorz$494      0163 GR
  2 A$bloxorz$497      0165 GR  |   2 A$bloxorz$500      0166 GR
  2 A$bloxorz$503      0168 GR  |   2 A$bloxorz$506      0169 GR
  2 A$bloxorz$509      016B GR  |   2 A$bloxorz$512      016C GR
  2 A$bloxorz$515      016E GR  |   2 A$bloxorz$518      0170 GR
  2 A$bloxorz$521      0172 GR  |   2 A$bloxorz$524      0174 GR
  2 A$bloxorz$527      0176 GR  |   2 A$bloxorz$53       0009 GR
  2 A$bloxorz$530      0179 GR  |   2 A$bloxorz$533      017B GR
  2 A$bloxorz$536      017D GR  |   2 A$bloxorz$539      017F GR
  2 A$bloxorz$54       000B GR  |   2 A$bloxorz$542      0181 GR
  2 A$bloxorz$545      0183 GR  |   2 A$bloxorz$548      0184 GR
  2 A$bloxorz$551      0186 GR  |   2 A$bloxorz$554      0187 GR
  2 A$bloxorz$557      0189 GR  |   2 A$bloxorz$560      018A GR
  2 A$bloxorz$563      018C GR  |   2 A$bloxorz$566      018E GR
  2 A$bloxorz$569      0190 GR  |   2 A$bloxorz$57       000D GR
  2 A$bloxorz$572      0192 GR  |   2 A$bloxorz$575      0194 GR
  2 A$bloxorz$578      0197 GR  |   2 A$bloxorz$58       000F GR
  2 A$bloxorz$581      019A GR  |   2 A$bloxorz$584      019C GR
  2 A$bloxorz$587      019E GR  |   2 A$bloxorz$590      019F GR
  2 A$bloxorz$593      01A1 GR  |   2 A$bloxorz$596      01A3 GR
  2 A$bloxorz$599      01A5 GR  |   2 A$bloxorz$602      01A9 GR
  2 A$bloxorz$608      01AB GR  |   2 A$bloxorz$611      01AD GR
  2 A$bloxorz$614      01AF GR  |   2 A$bloxorz$617      01B2 GR
  2 A$bloxorz$620      01B4 GR  |   2 A$bloxorz$623      01B6 GR
  2 A$bloxorz$626      01B8 GR  |   2 A$bloxorz$629      01BA GR
  2 A$bloxorz$632      01BC GR  |   2 A$bloxorz$635      01BD GR
  2 A$bloxorz$638      01BF GR  |   2 A$bloxorz$64       0012 GR
  2 A$bloxorz$641      01C0 GR  |   2 A$bloxorz$644      01C2 GR
  2 A$bloxorz$647      01C3 GR  |   2 A$bloxorz$65       0014 GR
  2 A$bloxorz$650      01C5 GR  |   2 A$bloxorz$653      01C7 GR
  2 A$bloxorz$656      01C9 GR  |   2 A$bloxorz$671      01D5 GR
  2 A$bloxorz$672      01D7 GR  |   2 A$bloxorz$678      01D9 GR
  2 A$bloxorz$684      01DC GR  |   2 A$bloxorz$685      01DE GR
  2 A$bloxorz$688      01E0 GR  |   2 A$bloxorz$689      01E2 GR
  2 A$bloxorz$695      01E5 GR  |   2 A$bloxorz$696      01E7 GR
  2 A$bloxorz$702      01EA GR  |   2 A$bloxorz$703      01EC GR
  2 A$bloxorz$704      01EE GR  |   2 A$bloxorz$705      01F0 GR
  2 A$bloxorz$706      01F2 GR  |   2 A$bloxorz$707      01F5 GR
  2 A$bloxorz$71       0017 GR  |   2 A$bloxorz$710      01F7 GR
  2 A$bloxorz$711      01F9 GR  |   2 A$bloxorz$712      01FB GR
  2 A$bloxorz$713      01FD GR  |   2 A$bloxorz$719      0200 GR
  2 A$bloxorz$72       0019 GR  |   2 A$bloxorz$720      0202 GR
  2 A$bloxorz$721      0204 GR  |   2 A$bloxorz$722      0206 GR
  2 A$bloxorz$723      0208 GR  |   2 A$bloxorz$724      020B GR
  2 A$bloxorz$727      020D GR  |   2 A$bloxorz$728      020F GR
  2 A$bloxorz$729      0211 GR  |   2 A$bloxorz$73       001B GR
  2 A$bloxorz$730      0213 GR  |   2 A$bloxorz$736      0216 GR
  2 A$bloxorz$737      0219 GR  |   2 A$bloxorz$738      021B GR
  2 A$bloxorz$74       001D GR  |   2 A$bloxorz$744      021D GR
  2 A$bloxorz$75       001F GR  |   2 A$bloxorz$751      0220 GR
  2 A$bloxorz$752      0223 GR  |   2 A$bloxorz$753      0225 GR
  2 A$bloxorz$759      0227 GR  |   2 A$bloxorz$766      022A GR
  2 A$bloxorz$767      022D GR  |   2 A$bloxorz$768      022F GR
  2 A$bloxorz$774      0231 GR  |   2 A$bloxorz$78       0022 GR
  2 A$bloxorz$781      0234 GR  |   2 A$bloxorz$782      0237 GR
  2 A$bloxorz$783      0239 GR  |   2 A$bloxorz$789      023B GR
  2 A$bloxorz$79       0024 GR  |   2 A$bloxorz$791      023E GR
  2 A$bloxorz$792      0240 GR  |   2 A$bloxorz$795      0242 GR
  2 A$bloxorz$796      0244 GR  |   2 A$bloxorz$80       0026 GR
  2 A$bloxorz$802      0246 GR  |   2 A$bloxorz$808      0249 GR
  2 A$bloxorz$809      024B GR  |   2 A$bloxorz$81       0028 GR
  2 A$bloxorz$812      024D GR  |   2 A$bloxorz$813      024F GR
  2 A$bloxorz$819      0252 GR  |   2 A$bloxorz$825      0255 GR
  2 A$bloxorz$826      0257 GR  |   2 A$bloxorz$827      0259 GR
  2 A$bloxorz$828      025B GR  |   2 A$bloxorz$829      025D GR
  2 A$bloxorz$830      025F GR  |   2 A$bloxorz$833      0261 GR
  2 A$bloxorz$834      0263 GR  |   2 A$bloxorz$835      0265 GR
  2 A$bloxorz$84       002B GR  |   2 A$bloxorz$841      0268 GR
  2 A$bloxorz$842      026A GR  |   2 A$bloxorz$843      026C GR
  2 A$bloxorz$844      0270 GR  |   2 A$bloxorz$847      0273 GR
  2 A$bloxorz$848      0275 GR  |   2 A$bloxorz$854      0278 GR
  2 A$bloxorz$860      027B GR  |   2 A$bloxorz$861      027D GR
  2 A$bloxorz$862      027F GR  |   2 A$bloxorz$863      0281 GR
  2 A$bloxorz$864      0283 GR  |   2 A$bloxorz$865      0285 GR
  2 A$bloxorz$868      0287 GR  |   2 A$bloxorz$869      0289 GR
  2 A$bloxorz$87       002E GR  |   2 A$bloxorz$870      028B GR
  2 A$bloxorz$876      028E GR  |   2 A$bloxorz$877      0290 GR
  2 A$bloxorz$878      0292 GR  |   2 A$bloxorz$88       0030 GR
  2 A$bloxorz$881      0295 GR  |   2 A$bloxorz$882      0297 GR
  2 A$bloxorz$888      029A GR  |   2 A$bloxorz$894      029D GR
  2 A$bloxorz$895      029F GR  |   2 A$bloxorz$896      02A1 GR
  2 A$bloxorz$897      02A3 GR  |   2 A$bloxorz$898      02A5 GR
  2 A$bloxorz$899      02A7 GR  |   2 A$bloxorz$902      02A9 GR
  2 A$bloxorz$903      02AB GR  |   2 A$bloxorz$904      02AD GR
  2 A$bloxorz$910      02B0 GR  |   2 A$bloxorz$911      02B2 GR
  2 A$bloxorz$912      02B4 GR  |   2 A$bloxorz$915      02B7 GR
  2 A$bloxorz$916      02B9 GR  |   2 A$bloxorz$922      02BC GR
  2 A$bloxorz$928      02BF GR  |   2 A$bloxorz$929      02C1 GR
  2 A$bloxorz$930      02C3 GR  |   2 A$bloxorz$931      02C5 GR
  2 A$bloxorz$932      02C7 GR  |   2 A$bloxorz$935      02C9 GR
  2 A$bloxorz$936      02CB GR  |   2 A$bloxorz$937      02CD GR
  2 A$bloxorz$94       0032 GR  |   2 A$bloxorz$943      02D0 GR
  2 A$bloxorz$944      02D2 GR  |   2 A$bloxorz$945      02D4 GR
  2 A$bloxorz$948      02D7 GR  |   2 A$bloxorz$949      02D9 GR
  2 A$bloxorz$95       0035 GR  |   2 A$bloxorz$955      02DC GR
  2 A$bloxorz$96       0037 GR  |   2 A$bloxorz$961      02DF GR
  2 A$bloxorz$962      02E1 GR  |   2 A$bloxorz$963      02E3 GR
  2 A$bloxorz$964      02E5 GR  |   2 A$bloxorz$965      02E7 GR
  2 A$bloxorz$966      02E9 GR  |   2 A$bloxorz$969      02EB GR
  2 A$bloxorz$97       003A GR  |   2 A$bloxorz$970      02ED GR
  2 A$bloxorz$971      02EF GR  |   2 A$bloxorz$977      02F2 GR
  2 A$bloxorz$978      02F4 GR  |   2 A$bloxorz$979      02F6 GR
  2 A$bloxorz$98       003C GR  |   2 A$bloxorz$982      02F9 GR
  2 A$bloxorz$983      02FB GR  |   2 A$bloxorz$989      02FE GR
  2 A$bloxorz$99       003F GR  |   2 A$bloxorz$995      0301 GR
  2 A$bloxorz$996      0303 GR  |   2 A$bloxorz$997      0305 GR
  2 A$bloxorz$998      0307 GR  |   2 A$bloxorz$999      0309 GR
  2 L103               09CA R   |   2 L104               0A37 R
  2 L105               0A6F R   |   2 L106               0A48 R
  2 L107               0A57 R   |   2 L109               0A52 R
  2 L110               0A55 R   |   2 L111               0A5F R
  2 L112               0A62 R   |   2 L113               0A6C R
  2 L114               0A6F R   |   2 L115               0A9F R
  2 L116               0AAB R   |   2 L117               0AC8 R
  2 L118               0ADA R   |   2 L119               0AF8 R
  2 L121               0AE8 R   |   2 L122               0AF5 R
  2 L123               0B0B R   |   2 L124               0B1F R
  2 L125               0B34 R   |   2 L126               0B4C R
  2 L127               0B4C R   |   2 L128               0A64 R
  2 L129               0B21 R   |   2 L131               0B76 R
  2 L132               0C0B R   |   2 L133               0BBF R
  2 L134               0BD1 R   |   2 L135               0BDA R
  2 L136               0BC8 R   |   2 L137               0BE3 R
  2 L138               0BEC R   |   2 L139               0BF5 R
  2 L140               0BFD R   |   2 L141               0C05 R
  2 L142               0BAD R   |   2 L143               0C25 R
  2 L146               0B96 R   |   2 L17                0220 R
  2 L18                022A R   |   2 L19                0234 R
  2 L2                 0006 R   |   2 L21                023E R
  2 L25                0355 R   |   2 L26                036B R
  2 L28                0379 R   |   2 L32                03AE R
  2 L33                03CA R   |   2 L42                048A R
  2 L43                0474 R   |   2 L45                0494 R
  2 L49                04B0 R   |   2 L5                 004C R
  2 L53                051E R   |   2 L54                057A R
  2 L55                054C R   |   2 L56                05C3 R
  2 L59                068B R   |   2 L6                 0086 R
  2 L60                069A R   |   2 L61                06A9 R
  2 L63                06B8 R   |   2 L65                0775 R
  2 L66                0790 R   |   2 L68                079C R
  2 L7                 0088 R   |   2 L70                07BC R
  2 L72                07C6 R   |   2 L74                07DE R
  2 L78                0837 R   |   2 L79                08B9 R
  2 L8                 0071 R   |   2 L80                08B4 R
  2 L81                08BC R   |   2 L84                08D5 R
  2 L85                08D8 R   |   2 L87                08F6 R
  2 L88                092D R   |   2 L89                0909 R
  2 L9                 0055 R   |   2 L90                091C R
  2 L91                0940 R   |   2 L92                0952 R
  2 L93                0961 R   |   2 L94                098B R
  2 L95                097B R   |   2 L96                0988 R
  2 L98                0995 R   |   2 LC0                01CA R
  2 LC1                03F9 R   |   2 LC10               06C7 R
  2 LC11               06D6 R   |   2 LC12               06E5 R
  2 LC2                0407 R   |   2 LC3                040E R
  2 LC4                05CA R   |   2 LC5                05D7 R
  2 LC6                05E0 R   |   2 LC7                05E9 R
  2 LC8                05F2 R   |   2 LC9                06BC R
  2 LF33D2_1           011A R   |   2 LF33D2_3           015B R
  2 LF33D2_4           017B R   |   2 LF33D2_5           019A R
  2 LF33D2_6           01B4 R   |     _Vec_Buttons       **** GX
    _Vec_Text_Widt     **** GX  |     ___DP_to_C8        **** GX
    ___DP_to_D0        **** GX  |     ___Do_Sound        **** GX
    ___Draw_VLp        **** GX  |     ___Init_Music_     **** GX
    ___Intensity_a     **** GX  |     ___Joy_Digital     **** GX
    ___Moveto_d        **** GX  |     ___Print_Str_d     **** GX
    ___Read_Btns       **** GX  |     ___Reset0Ref       **** GX
    ___Wait_Recal      **** GX  |   2 _arcadeEnd         01D5 GR
  4 _arcadeIndex       0029 GR  |   2 _arcadeLevels      0CD0 R
  2 _arcadeMenu        05FB GR  |   4 _arcadeMode        0027 GR
  4 _arcadeSelecti     0028 GR  |     _blockAnimatin     **** GX
  2 _blockFalling      07A0 GR  |   2 _blockMoving       09AF GR
  2 _blockMovingAt     07E2 GR  |   2 _blockMovingTo     0498 GR
    _blockOrientat     **** GX  |     _blockStartLev     **** GX
  2 _blockWaiting      08D9 GR  |     _blockX            **** GX
    _blockY            **** GX  |     _blockYOfs         **** GX
  2 _changeMusic       00AD GR  |   2 _clearMenu         0414 GR
  3 _currentMusic      0000 GR  |     _delay10ms         **** GX
    _doBlockAnimat     **** GX  |     _dp_VIA_t1_cnt     **** GX
    _drawBlock         **** GX  |   2 _drawField         00B6 GR
    _endX              **** GX  |     _endY              **** GX
  2 _fallingMusic      0C92 GR  |   4 _frames            0024 GR
  4 _gameState         002A GR  |     _getField          **** GX
  4 _highscoreDisp     001F R   |   4 _highscoreText     0015 R
  4 _infoText          0001 R   |     _initLevel         **** GX
    _initSwatches      **** GX  |     _isField           **** GX
  2 _itoa              002E GR  |     _lastBlockDire     **** GX
  2 _led8              0CBA GR  |     _level             **** GX
    _levelCount        **** GX  |   2 _levelEndMusic     0C78 GR
  4 _levelHighscor     0020 R   |     _levelNumber       **** GX
    _levelOffset       **** GX  |     _levels            **** GX
    _lineYX_yx_s_d     **** GX  |   2 _main              0B4F GR
  2 _mainMenu          06F8 GR  |   2 _moveBlock         08C0 GR
    _moveBlockImpl     **** GX  |   4 _moveCount         0022 GR
  2 _movingMusic       0CB2 GR  |     _musicInit         **** GX
    _musicPlay         **** GX  |     _nextBank          **** GX
  2 _nextLevel         07C9 GR  |   4 _picAvailable      0026 GR
    _picRead           **** GX  |     _picWrite          **** GX
  2 _readEeprom        03DC GR  |   2 _runtimeError      0000 GR
  2 _sendCommand       0396 R   |   2 _sendPicComman     037D R
  2 _setBank           03D2 R   |   2 _showInfo          0324 GR
  2 _showInfo2         0242 GR  |   4 _si                0000 R
    _splitMode         **** GX  |   2 _startBlockFal     0996 GR
  2 _startLevel        04F0 GR  |   2 _startMusic        0C58 GR
    _swapSplit         **** GX  |     _swatchSwitch      **** GX
    _testMerge         **** GX  |   2 _updateInfoTex     04B1 GR
  3 _vecx              0002 R   |   2 _writeEeprom       03E6 GR
  2 drawFieldLoop1     00D1 R   |   2 not_full_cont      0144 R
  2 not_full_cont_     0151 R   |   2 scale_negative     01AB R
  2 scale_negative     0129 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  CE4   flags  100
   3 .data            size    4   flags  100
   4 .bss             size   2B   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

