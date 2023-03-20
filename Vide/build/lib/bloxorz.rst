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
                             37 ;  204 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                             38 	; #ENR#[194]    while (1) {
                             39 ;  0 "" 2
                             40 ;--- end asm ---
   35BC                      41 L2:
                             42 ;----- asm -----
                             43 ;  206 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                             44 	; #ENR#[195]        frwait();
                             45 ;  0 "" 2
                             46 ;  97 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   35BC BD F1 92      [ 8]   47 	jsr ___Wait_Recal; BIOS call
                             48 ;  0 "" 2
                             49 ;  208 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                             50 	; #ENR#[196]        Intensity_a(0x5f);
                             51 ;  0 "" 2
                             52 ;--- end asm ---
   35BF C6 5F         [ 2]   53 	ldb	#95	; ,
   35C1 E7 63         [ 5]   54 	stb	3,s	; , a
                             55 ;----- asm -----
                             56 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   35C3 A6 63         [ 5]   57 	lda 3,s	;  a
   35C5 BD F2 AB      [ 8]   58 	jsr ___Intensity_a; BIOS call
                             59 ;  0 "" 2
                             60 ;  210 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                             61 	; #ENR#[197]        Vec_Text_Width = 90;
                             62 ;  0 "" 2
                             63 ;--- end asm ---
   35C8 C6 5A         [ 2]   64 	ldb	#90	; ,
   35CA F7 C8 2B      [ 5]   65 	stb	_Vec_Text_Width	; , Vec_Text_Width
                             66 ;----- asm -----
                             67 ;  212 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                             68 	; #ENR#[198]        Print_Str_d(-10, -110, msg);
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
                             90 ;  244 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                             91 	; #ENR#[223]    uint16_t muls[] = { 100, 10, 1 };
                             92 ;  0 "" 2
                             93 ;--- end asm ---
   35E8 CC 00 64      [ 3]   94 	ldd	#100	; ,
   35EB ED 69         [ 6]   95 	std	9,s	; , muls
   35ED CC 00 0A      [ 3]   96 	ldd	#10	; ,
   35F0 ED 6B         [ 6]   97 	std	11,s	; , muls
   35F2 CC 00 01      [ 3]   98 	ldd	#1	; ,
   35F5 ED 6D         [ 6]   99 	std	13,s	; , muls
                            100 ;----- asm -----
                            101 ;  246 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            102 	; #ENR#[224]    if (number > 999) number = 999;
                            103 ;  0 "" 2
                            104 ;--- end asm ---
   35F7 31 84         [ 4]  105 	leay	,x	;  number.127, number
   35F9 8C 03 E7      [ 4]  106 	cmpx	#999	;cmphi:	;  number.127,
   35FC 23 04         [ 3]  107 	bls	L5	; 
   35FE 10 8E 03 E7   [ 4]  108 	ldy	#999	;  number.127,
   3602                     109 L5:
                            110 ;----- asm -----
                            111 ;  248 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            112 	; #ENR#[225]    for (uint8_t i = 0; i < 3; i++) {
                            113 ;  0 "" 2
                            114 ;--- end asm ---
   3602 30 69         [ 5]  115 	leax	9,s	; ,,
   3604 AF 65         [ 6]  116 	stx	5,s	; , ivtmp.123
   3606 EC E8 15      [ 6]  117 	ldd	21,s	; , text
   3609 ED 67         [ 6]  118 	std	7,s	; , ivtmp.125
   360B                     119 L9:
                            120 ;----- asm -----
                            121 ;  250 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            122 	; #ENR#[226]        uint8_t d = 0;
                            123 ;  0 "" 2
                            124 ;  252 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            125 	; #ENR#[227]        while (number >= muls[i]) {
                            126 ;  0 "" 2
                            127 ;--- end asm ---
   360B AE 65         [ 6]  128 	ldx	5,s	; , ivtmp.123
   360D AE 84         [ 5]  129 	ldx	,x	; , muls
   360F AF E4         [ 5]  130 	stx	,s	; , D.2275
   3611 34 20         [ 6]  131 	pshs	y	;cmphi: R:y with R:x	;  number.127,
   3613 AC E1         [ 9]  132 	cmpx	,s++	;cmphi:	; 
   3615 22 25         [ 3]  133 	bhi	L6	; 
   3617 1F 10         [ 6]  134 	tfr	x,d	; ,
   3619 40            [ 2]  135 	nega
   361A 50            [ 2]  136 	negb
   361B 82 00         [ 2]  137 	sbca	#0
   361D ED 63         [ 6]  138 	std	3,s	; , ivtmp.115
   361F 1F 20         [ 6]  139 	tfr	y,d	;  number.127,
   3621 A3 E4         [ 6]  140 	subd	,s	;subhi: R:d -= ,s	; , D.2275
   3623 1F 02         [ 6]  141 	tfr	d,y	; , number.127
   3625 6F 62         [ 7]  142 	clr	2,s	;  d
   3627                     143 L8:
                            144 ;----- asm -----
                            145 ;  254 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            146 	; #ENR#[228]            d++;
                            147 ;  0 "" 2
                            148 ;--- end asm ---
   3627 6C 62         [ 7]  149 	inc	2,s	;  d
                            150 ;----- asm -----
                            151 ;  256 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            152 	; #ENR#[229]            number -= muls[i];
                            153 ;  0 "" 2
                            154 ;--- end asm ---
   3629 EC 63         [ 6]  155 	ldd	3,s	; , ivtmp.115
   362B 33 AB         [ 8]  156 	leau	d,y	;  number.126,, number.127
   362D EC E4         [ 5]  157 	ldd	,s	; , D.2275
   362F 30 CB         [ 8]  158 	leax	d,u	;  tmp85,, number.126
   3631 34 10         [ 6]  159 	pshs	x	;cmphi: R:x with R:d	;  tmp85,
   3633 10 A3 E1      [10]  160 	cmpd	,s++	;cmphi:	; 
   3636 22 06         [ 3]  161 	bhi	L7	; 
   3638 31 C4         [ 4]  162 	leay	,u	;  number.127, number.126
   363A 20 EB         [ 3]  163 	bra	L8	; 
   363C                     164 L6:
   363C 6F 62         [ 7]  165 	clr	2,s	;  d
   363E                     166 L7:
                            167 ;----- asm -----
                            168 ;  259 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            169 	; #ENR#[231]        text[i] = d + '0';
                            170 ;  0 "" 2
                            171 ;--- end asm ---
   363E E6 62         [ 5]  172 	ldb	2,s	; , d
   3640 CB 30         [ 2]  173 	addb	#48	; ,
   3642 AE 67         [ 6]  174 	ldx	7,s	; , ivtmp.125
   3644 30 01         [ 5]  175 	leax	1,x	; ,,
   3646 AF 67         [ 6]  176 	stx	7,s	; , ivtmp.125
   3648 30 1F         [ 5]  177 	leax	-1,x	; ,,
   364A E7 80         [ 6]  178 	stb	,x+	; ,
   364C AE 65         [ 6]  179 	ldx	5,s	; , ivtmp.123
   364E 30 02         [ 5]  180 	leax	2,x	; ,,
   3650 AF 65         [ 6]  181 	stx	5,s	; , ivtmp.123
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
                            192 ;  276 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            193 	; #ENR#[244]    tstat = 1;
                            194 ;  0 "" 2
                            195 ;--- end asm ---
   3663 C6 01         [ 2]  196 	ldb	#1	; ,
   3665 F7 C8 56      [ 5]  197 	stb	-14250	; ,
                            198 ;----- asm -----
                            199 ;  278 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            200 	; #ENR#[245]    currentMusic = music;
                            201 ;  0 "" 2
                            202 ;--- end asm ---
   3668 BF C8 80      [ 6]  203 	stx	_currentMusic	;  music, currentMusic
   366B 39            [ 5]  204 	rts
                            205 	.globl _drawField
   366C                     206 _drawField:
                            207 ;----- asm -----
                            208 ;  381 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   366C 86 35         [ 2]  209 	LDA     #0x35
                            210 ;  0 "" 2
                            211 ;  382 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   366E 97 01         [ 4]  212 	STA     *0xd001     ;Store intensity in D/A
                            213 ;  0 "" 2
                            214 ;  383 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3670 CC 05 04      [ 3]  215 	LDD     #0x0504          ;mux disabled channel 2
                            216 ;  0 "" 2
                            217 ;  384 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3673 97 00         [ 4]  218 	STA     *0xd000
                            219 ;  0 "" 2
                            220 ;  385 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3675 D7 00         [ 4]  221 	STB     *0xd000     ;mux enabled channel 2
                            222 ;  0 "" 2
                            223 ;  386 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3677 D7 00         [ 4]  224 	STB     *0xd000     ;do it again just because
                            225 ;  0 "" 2
                            226 ;  387 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3679 C6 01         [ 2]  227 	LDB     #0x01
                            228 ;  0 "" 2
                            229 ;  388 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   367B D7 00         [ 4]  230 	STB     *0xd000     ;turn off mux
                            231 ;  0 "" 2
                            232 ;  393 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   367D 34 40         [ 6]  233 		pshs u
                            234 ;  0 "" 2
                            235 ;  394 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   367F 8E C9 27      [ 3]  236 		ldx #_lineYX_yx_s_dy_dx
                            237 ;  0 "" 2
                            238 ;  395 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3682 CE 98 CE      [ 3]  239 		ldu #0x98ce
                            240 ;  0 "" 2
                            241 ;  396 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3685 EC 84         [ 5]  242 		ldd ,x
                            243 ;  0 "" 2
                            244 ;  398 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3687                     245 	drawFieldLoop1:
                            246 ;  0 "" 2
                            247 ;  413 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3687 12            [ 2]  248 		    nop 
                            249 ;  0 "" 2
                            250 ;  414 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3688 12            [ 2]  251 		    nop 
                            252 ;  0 "" 2
                            253 ;  415 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3689 12            [ 2]  254 		    nop 
                            255 ;  0 "" 2
                            256 ;  416 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   368A 12            [ 2]  257 		    nop 
                            258 ;  0 "" 2
                            259 ;  420 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   368B 97 01         [ 4]  260 	                    STA      *0xd001                  ;Store Y in D/A register 
                            261 ;  0 "" 2
                            262 ;  421 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   368D 4F            [ 2]  263 	                    CLRA     
                            264 ;  0 "" 2
                            265 ;  422 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   368E 97 00         [ 4]  266 	                    STA      *0xd000                  ;Enable mux 
                            267 ;  0 "" 2
                            268 ;  423 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3690 4C            [ 2]  269 	                    INCA 
                            270 ;  0 "" 2
                            271 ;  425 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3691 DF 0B         [ 5]  272 	                    STU      *0xd00B                    ; 
                            273 ;  0 "" 2
                            274 ;  426 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3693 DD 00         [ 5]  275 	                    STD      *0xd000                  ;Store X in D/A register 
                            276 ;  0 "" 2
                            277 ;  427 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3695 4A            [ 2]  278 	                    DECA 
                            279 ;  0 "" 2
                            280 ;  428 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3696 97 05         [ 4]  281 	                    STA      *0xd005               ;enable timer 
                            282 ;  0 "" 2
                            283 ;  431 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3698 30 02         [ 5]  284 		leax 2,x ; 5
                            285 ;  0 "" 2
                            286 ;  432 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   369A A6 80         [ 6]  287 		lda ,x+ ; 6
                            288 ;  0 "" 2
                            289 ;  433 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   369C 2B 41         [ 3]  290 	bmi scale_negative_7f; 3 - negative means, the next line is in offset to this line, not from 0,0
                            291 ;  0 "" 2
                            292 ;  434 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   369E 97 04         [ 4]  293 		sta *0xd004 ; 4
                            294 ;  0 "" 2
                            295 ;  435 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36A0 CE FF 98      [ 3]  296 		ldu #0xff98 ; 3
                            297 ;  0 "" 2
                            298 ;  436 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36A3 EC 84         [ 5]  299 		ldd ,x ; 5
                            300 ;  0 "" 2
                            301 ;  443 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36A5 34 7E         [11]  302 		    pshs u,x,y,d,dp    ; 14
                            303 ;  0 "" 2
                            304 ;  444 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36A7 35 7E         [11]  305 		    puls u,x,y,d,dp    ; 14 
                            306 ;  0 "" 2
                            307 ;  445 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36A9 34 7E         [11]  308 		    pshs u,x,y,d,dp    ; 14
                            309 ;  0 "" 2
                            310 ;  446 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36AB 35 7E         [11]  311 		    puls u,x,y,d,dp    ; 14 
                            312 ;  0 "" 2
                            313 ;  447 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36AD 34 7E         [11]  314 		    pshs u,x,y,d,dp    ; 14
                            315 ;  0 "" 2
                            316 ;  448 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36AF 35 7E         [11]  317 		    puls u,x,y,d,dp    ; 14 
                            318 ;  0 "" 2
                            319 ;  449 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36B1 34 40         [ 6]  320 		    pshs u    ; 7 
                            321 ;  0 "" 2
                            322 ;  450 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36B3 35 40         [ 6]  323 		    puls u    ; 7 
                            324 ;  0 "" 2
                            325 ;  454 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36B5 12            [ 2]  326 		    nop 
                            327 ;  0 "" 2
                            328 ;  455 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36B6 12            [ 2]  329 		    nop 
                            330 ;  0 "" 2
                            331 ;  458 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36B7 97 01         [ 4]  332 	                    STA      *0xd001                  ;Store Y in D/A register 
                            333 ;  0 "" 2
                            334 ;  459 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36B9 4F            [ 2]  335 	                    CLRA     
                            336 ;  0 "" 2
                            337 ;  460 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36BA 97 00         [ 4]  338 	                    STA      *0xd000                  ;Enable mux 
                            339 ;  0 "" 2
                            340 ;  461 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36BC 4C            [ 2]  341 	                    INCA 
                            342 ;  0 "" 2
                            343 ;  462 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36BD DD 00         [ 5]  344 	                    STD      *0xd000                  ;Store X in D/A register 
                            345 ;  0 "" 2
                            346 ;  463 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36BF 4A            [ 2]  347 	                    DECA 
                            348 ;  0 "" 2
                            349 ;  464 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36C0 DF 0A         [ 5]  350 	                    stu      *0xd00a               ;unclear shift regigster 
                            351 ;  0 "" 2
                            352 ;  465 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36C2 97 05         [ 4]  353 	                    STA      *0xd005               ;enable timer 
                            354 ;  0 "" 2
                            355 ;  467 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36C4 30 02         [ 5]  356 	leax 2,x
                            357 ;  0 "" 2
                            358 ;  468 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36C6 C6 7F         [ 2]  359 		ldb #0x7f
                            360 ;  0 "" 2
                            361 ;  469 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36C8 D7 04         [ 4]  362 		stb *0xd004
                            363 ;  0 "" 2
                            364 ;  470 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36CA CE 98 CE      [ 3]  365 		ldu #0x98ce
                            366 ;  0 "" 2
                            367 ;  471 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36CD CC 40 CC      [ 3]  368 		LDd     #0x40CC
                            369 ;  0 "" 2
                            370 ;  473 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36D0 95 0D         [ 4]  371 	LF33D2_1:           BITA     *0xD00D               ;  
                            372 ;  0 "" 2
                            373 ;  474 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36D2 27 FC         [ 3]  374 	                    BEQ      LF33D2_1                        ;  
                            375 ;  0 "" 2
                            376 ;  475 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36D4 4F            [ 2]  377 	                    clra 
                            378 ;  0 "" 2
                            379 ;  476 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36D5 97 0A         [ 4]  380 	                    sta      *0xd00a               ;clear shift regigster 
                            381 ;  0 "" 2
                            382 ;  479 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36D7 D7 0C         [ 4]  383 		STB *0xd00C ; reset 0
                            384 ;  0 "" 2
                            385 ;  480 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36D9 EC 84         [ 5]  386 		ldd ,x
                            387 ;  0 "" 2
                            388 ;  481 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36DB 26 AA         [ 3]  389 		bne drawFieldLoop1
                            390 ;  0 "" 2
                            391 ;  482 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36DD 35 C0         [ 7]  392 		puls u, pc
                            393 ;  0 "" 2
                            394 ;  489 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36DF                     395 	scale_negative_7f:
                            396 ;  0 "" 2
                            397 ;  490 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36DF 84 7F         [ 2]  398 	anda #0x7f ; 2
                            399 ;  0 "" 2
                            400 ;  491 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36E1 97 04         [ 4]  401 		sta *0xd004 ; 4
                            402 ;  0 "" 2
                            403 ;  492 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36E3 CE FF 98      [ 3]  404 		ldu #0xff98 ; 4
                            405 ;  0 "" 2
                            406 ;  493 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36E6 EC 84         [ 5]  407 		ldd ,x ; 5
                            408 ;  0 "" 2
                            409 ;  496 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36E8 34 7E         [11]  410 		    pshs u,x,y,d,dp    ; 14
                            411 ;  0 "" 2
                            412 ;  497 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36EA 35 7E         [11]  413 		    puls u,x,y,d,dp    ; 14 
                            414 ;  0 "" 2
                            415 ;  498 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36EC 34 7E         [11]  416 		    pshs u,x,y,d,dp    ; 14
                            417 ;  0 "" 2
                            418 ;  499 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36EE 35 7E         [11]  419 		    puls u,x,y,d,dp    ; 14 
                            420 ;  0 "" 2
                            421 ;  500 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36F0 34 7E         [11]  422 		    pshs u,x,y,d,dp    ; 14
                            423 ;  0 "" 2
                            424 ;  501 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36F2 35 7E         [11]  425 		    puls u,x,y,d,dp    ; 14 
                            426 ;  0 "" 2
                            427 ;  502 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36F4 1F 88         [ 6]  428 		    tfr a,a    ; 6 
                            429 ;  0 "" 2
                            430 ;  503 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36F6 1F 88         [ 6]  431 		    tfr a,a    ; 6 
                            432 ;  0 "" 2
                            433 ;  504 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36F8 21 E5         [ 3]  434 		    brn   scale_negative_7f ; 3 
                            435 ;  0 "" 2
                            436 ;  509 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36FA                     437 		not_full_cont:
                            438 ;  0 "" 2
                            439 ;  510 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36FA 97 01         [ 4]  440 	                    STA      *0xd001                  ;Store Y in D/A register 
                            441 ;  0 "" 2
                            442 ;  511 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36FC 4F            [ 2]  443 	                    CLRA     
                            444 ;  0 "" 2
                            445 ;  512 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36FD 97 00         [ 4]  446 	                    STA      *0xd000                  ;Enable mux 
                            447 ;  0 "" 2
                            448 ;  513 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   36FF 4C            [ 2]  449 	                    INCA 
                            450 ;  0 "" 2
                            451 ;  514 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3700 DD 00         [ 5]  452 	                    STD      *0xd000                  ;Store X in D/A register 
                            453 ;  0 "" 2
                            454 ;  515 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3702 4A            [ 2]  455 	                    DECA 
                            456 ;  0 "" 2
                            457 ;  516 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3703 DF 0A         [ 5]  458 	                    stu      *0xd00a               ;unclear shift regigster 
                            459 ;  0 "" 2
                            460 ;  517 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3705 97 05         [ 4]  461 	                    STA      *0xd005               ;enable timer 
                            462 ;  0 "" 2
                            463 ;  519 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3707                     464 		not_full_cont_after:
                            465 ;  0 "" 2
                            466 ;  520 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3707 30 02         [ 5]  467 	leax 2,x
                            468 ;  0 "" 2
                            469 ;  521 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3709 CE 98 CE      [ 3]  470 		ldu #0x98ce
                            471 ;  0 "" 2
                            472 ;  524 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   370C 12            [ 2]  473 	nop
                            474 ;  0 "" 2
                            475 ;  525 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   370D 21 02         [ 3]  476 	brn LF33D2_3
                            477 ;  0 "" 2
                            478 ;  528 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   370F C6 40         [ 2]  479 	                    LDb      #0x40                         ;  
                            480 ;  0 "" 2
                            481 ;  529 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3711 D5 0D         [ 4]  482 	LF33D2_3:           BITb     *0xD00D               ;  
                            483 ;  0 "" 2
                            484 ;  530 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3713 27 FC         [ 3]  485 	                    BEQ      LF33D2_3                        ;  
                            486 ;  0 "" 2
                            487 ;  531 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3715 97 0A         [ 4]  488 	                    sta      *0xd00a               ;clear shift regigster, a is still zero 
                            489 ;  0 "" 2
                            490 ;  536 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3717 EC 84         [ 5]  491 		ldd ,x
                            492 ;  0 "" 2
                            493 ;  540 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3719 97 01         [ 4]  494 	                    STA      *0xd001                  ;Store Y in D/A register 
                            495 ;  0 "" 2
                            496 ;  541 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   371B 4F            [ 2]  497 	                    CLRA     
                            498 ;  0 "" 2
                            499 ;  542 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   371C 97 00         [ 4]  500 	                    STA      *0xd000                  ;Enable mux 
                            501 ;  0 "" 2
                            502 ;  543 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   371E 4C            [ 2]  503 	                    INCA 
                            504 ;  0 "" 2
                            505 ;  544 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   371F DD 00         [ 5]  506 	                    STD      *0xd000                  ;Store X in D/A register 
                            507 ;  0 "" 2
                            508 ;  545 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3721 4A            [ 2]  509 	                    DECA 
                            510 ;  0 "" 2
                            511 ;  546 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3722 97 05         [ 4]  512 	                    STA      *0xd005               ;enable timer 
                            513 ;  0 "" 2
                            514 ;  549 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3724 30 02         [ 5]  515 		leax 2,x ; 5
                            516 ;  0 "" 2
                            517 ;  550 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3726 A6 80         [ 6]  518 		lda ,x+ ; 6
                            519 ;  0 "" 2
                            520 ;  551 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3728 2B 37         [ 3]  521 	bmi scale_negative; next is also no full move
                            522 ;  0 "" 2
                            523 ;  552 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   372A 97 04         [ 4]  524 		sta *0xd004 ; 4
                            525 ;  0 "" 2
                            526 ;  553 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   372C CE FF 98      [ 3]  527 		ldu #0xff98 ; 4
                            528 ;  0 "" 2
                            529 ;  559 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   372F 86 40         [ 2]  530 	                    LDa      #0x40                         ;  
                            531 ;  0 "" 2
                            532 ;  560 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3731 95 0D         [ 4]  533 	LF33D2_4:           BITa     *0xD00D               ;  
                            534 ;  0 "" 2
                            535 ;  561 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3733 27 FC         [ 3]  536 	                    BEQ      LF33D2_4                        ;  
                            537 ;  0 "" 2
                            538 ;  565 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3735 EC 84         [ 5]  539 		ldd ,x ; 4
                            540 ;  0 "" 2
                            541 ;  566 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3737 97 01         [ 4]  542 	                    STA      *0xd001                  ;Store Y in D/A register 
                            543 ;  0 "" 2
                            544 ;  567 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3739 4F            [ 2]  545 	                    CLRA     
                            546 ;  0 "" 2
                            547 ;  568 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   373A 97 00         [ 4]  548 	                    STA      *0xd000                  ;Enable mux 
                            549 ;  0 "" 2
                            550 ;  569 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   373C 4C            [ 2]  551 	                    INCA 
                            552 ;  0 "" 2
                            553 ;  570 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   373D DD 00         [ 5]  554 	                    STD      *0xd000                  ;Store X in D/A register 
                            555 ;  0 "" 2
                            556 ;  571 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   373F 4A            [ 2]  557 	                    DECA 
                            558 ;  0 "" 2
                            559 ;  572 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3740 DF 0A         [ 5]  560 	                    stu      *0xd00a               ;unclear shift regigster 
                            561 ;  0 "" 2
                            562 ;  573 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3742 97 05         [ 4]  563 	                    STA      *0xd005               ;enable timer 
                            564 ;  0 "" 2
                            565 ;  575 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3744 30 02         [ 5]  566 	leax 2,x
                            567 ;  0 "" 2
                            568 ;  576 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3746 C6 7F         [ 2]  569 		ldb #0x7f
                            570 ;  0 "" 2
                            571 ;  578 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3748 D7 04         [ 4]  572 		stb *0xd004
                            573 ;  0 "" 2
                            574 ;  579 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   374A CE 98 CE      [ 3]  575 		ldu #0x98ce
                            576 ;  0 "" 2
                            577 ;  580 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   374D CC 40 CC      [ 3]  578 		LDd #0x40CC
                            579 ;  0 "" 2
                            580 ;  581 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3750 95 0D         [ 4]  581 	LF33D2_5:           BITA     *0xD00D               ;  
                            582 ;  0 "" 2
                            583 ;  582 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3752 27 FC         [ 3]  584 	                    BEQ      LF33D2_5                        ;  
                            585 ;  0 "" 2
                            586 ;  583 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3754 4F            [ 2]  587 	                    clra 
                            588 ;  0 "" 2
                            589 ;  584 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3755 97 0A         [ 4]  590 	                    sta      *0xd00a               ;clear shift regigster 
                            591 ;  0 "" 2
                            592 ;  587 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3757 D7 0C         [ 4]  593 		STB *0xd00C ; reset 0
                            594 ;  0 "" 2
                            595 ;  588 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3759 EC 84         [ 5]  596 		ldd ,x
                            597 ;  0 "" 2
                            598 ;  589 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   375B 10 26 FF 28   [ 6]  599 		lbne drawFieldLoop1
                            600 ;  0 "" 2
                            601 ;  590 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   375F 35 C0         [ 7]  602 		puls u, pc
                            603 ;  0 "" 2
                            604 ;  593 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3761                     605 	scale_negative:
                            606 ;  0 "" 2
                            607 ;  594 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3761 84 7F         [ 2]  608 	anda #0x7f ; 2
                            609 ;  0 "" 2
                            610 ;  595 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3763 97 04         [ 4]  611 		sta *0xd004 ; 4
                            612 ;  0 "" 2
                            613 ;  596 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3765 CE FF 98      [ 3]  614 		ldu #0xff98 ; 4
                            615 ;  0 "" 2
                            616 ;  599 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3768 86 40         [ 2]  617 	                    LDA      #0x40                         ;  
                            618 ;  0 "" 2
                            619 ;  600 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   376A 95 0D         [ 4]  620 	LF33D2_6:           BITA     *0xD00D               ;  
                            621 ;  0 "" 2
                            622 ;  601 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   376C 27 FC         [ 3]  623 	                    BEQ      LF33D2_6                        ;  
                            624 ;  0 "" 2
                            625 ;  602 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   376E EC 84         [ 5]  626 		ldd ,x ; 5
                            627 ;  0 "" 2
                            628 ;  605 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3770 97 01         [ 4]  629 	                    STA      *0xd001                  ;Store Y in D/A register 
                            630 ;  0 "" 2
                            631 ;  606 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3772 4F            [ 2]  632 	                    CLRA     
                            633 ;  0 "" 2
                            634 ;  607 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3773 97 00         [ 4]  635 	                    STA      *0xd000                  ;Enable mux 
                            636 ;  0 "" 2
                            637 ;  608 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3775 4C            [ 2]  638 	                    INCA 
                            639 ;  0 "" 2
                            640 ;  609 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3776 DD 00         [ 5]  641 	                    STD      *0xd000                  ;Store X in D/A register 
                            642 ;  0 "" 2
                            643 ;  610 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3778 4A            [ 2]  644 	                    DECA 
                            645 ;  0 "" 2
                            646 ;  611 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   3779 DF 0A         [ 5]  647 	                    stu      *0xd00a               ;unclear shift regigster 
                            648 ;  0 "" 2
                            649 ;  612 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
   377B 97 05         [ 4]  650 	                    STA      *0xd005               ;enable timer 
                            651 ;  0 "" 2
                            652 ;  613 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
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
                            674 ;  1076 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            675 	; #ENR#[839]    Read_Btns();
                            676 ;  0 "" 2
                            677 ;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   378F BD F1 BA      [ 8]  678 	jsr ___Read_Btns; BIOS call
                            679 ;  0 "" 2
                            680 ;  1078 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            681 	; #ENR#[840]    Intensity_a(0x5f);
                            682 ;  0 "" 2
                            683 ;--- end asm ---
   3792 C6 5F         [ 2]  684 	ldb	#95	; ,
   3794 E7 62         [ 5]  685 	stb	2,s	; , a
                            686 ;----- asm -----
                            687 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3796 A6 62         [ 5]  688 	lda 2,s	;  a
   3798 BD F2 AB      [ 8]  689 	jsr ___Intensity_a; BIOS call
                            690 ;  0 "" 2
                            691 ;  1080 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            692 	; #ENR#[841]    Vec_Text_Width = 90;
                            693 ;  0 "" 2
                            694 ;--- end asm ---
   379B C6 5A         [ 2]  695 	ldb	#90	; ,
   379D F7 C8 2B      [ 5]  696 	stb	_Vec_Text_Width	; , Vec_Text_Width
                            697 ;----- asm -----
                            698 ;  1082 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            699 	; #ENR#[842]    Print_Str_d(100, -70, "GAME OVER€");
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
                            715 ;  1084 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            716 	; #ENR#[843]    Print_Str_d(50, -110, infoText);
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
                            732 ;  1086 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            733 	; #ENR#[844]    if (Vec_Buttons & 1) {
                            734 ;  0 "" 2
                            735 ;--- end asm ---
   37CC F6 C8 11      [ 5]  736 	ldb	_Vec_Buttons	; , Vec_Buttons
   37CF C5 01         [ 2]  737 	bitb	#1	; ,
   37D1 27 03         [ 3]  738 	beq	L17	; 
                            739 ;----- asm -----
                            740 ;  1088 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            741 	; #ENR#[845]        gameState = MainMenu;
                            742 ;  0 "" 2
                            743 ;--- end asm ---
   37D3 7F C9 11      [ 7]  744 	clr	_gameState	;  gameState
   37D6                     745 L17:
                            746 ;----- asm -----
                            747 ;  1091 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            748 	; #ENR#[847]    if (Vec_Buttons & 2) {
                            749 ;  0 "" 2
                            750 ;--- end asm ---
   37D6 F6 C8 11      [ 5]  751 	ldb	_Vec_Buttons	; , Vec_Buttons
   37D9 C5 02         [ 2]  752 	bitb	#2	; ,
   37DB 27 03         [ 3]  753 	beq	L18	; 
                            754 ;----- asm -----
                            755 ;  1093 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            756 	; #ENR#[848]        gameState = MainMenu;
                            757 ;  0 "" 2
                            758 ;--- end asm ---
   37DD 7F C9 11      [ 7]  759 	clr	_gameState	;  gameState
   37E0                     760 L18:
                            761 ;----- asm -----
                            762 ;  1096 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            763 	; #ENR#[850]    if (Vec_Buttons & 4) {
                            764 ;  0 "" 2
                            765 ;--- end asm ---
   37E0 F6 C8 11      [ 5]  766 	ldb	_Vec_Buttons	; , Vec_Buttons
   37E3 C5 04         [ 2]  767 	bitb	#4	; ,
   37E5 27 03         [ 3]  768 	beq	L19	; 
                            769 ;----- asm -----
                            770 ;  1098 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            771 	; #ENR#[851]        gameState = MainMenu;
                            772 ;  0 "" 2
                            773 ;--- end asm ---
   37E7 7F C9 11      [ 7]  774 	clr	_gameState	;  gameState
   37EA                     775 L19:
                            776 ;----- asm -----
                            777 ;  1101 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            778 	; #ENR#[853]    if (Vec_Buttons & 8) {
                            779 ;  0 "" 2
                            780 ;--- end asm ---
   37EA F6 C8 11      [ 5]  781 	ldb	_Vec_Buttons	; , Vec_Buttons
   37ED C5 08         [ 2]  782 	bitb	#8	; ,
   37EF 27 03         [ 3]  783 	beq	L21	; 
                            784 ;----- asm -----
                            785 ;  1103 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            786 	; #ENR#[854]        gameState = MainMenu;
                            787 ;  0 "" 2
                            788 ;--- end asm ---
   37F1 7F C9 11      [ 7]  789 	clr	_gameState	;  gameState
   37F4                     790 L21:
   37F4 32 64         [ 5]  791 	leas	4,s	; ,,
   37F6 35 C0         [ 7]  792 	puls	u,pc	; 
                            793 	.globl _showInfo2
   37F8                     794 _showInfo2:
   37F8 34 20         [ 6]  795 	pshs	y	; 
   37FA 32 7D         [ 5]  796 	leas	-3,s	; ,,
                            797 ;----- asm -----
                            798 ;  1152 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            799 	; #ENR#[890]    zergnd();
                            800 ;  0 "" 2
                            801 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   37FC BD F3 54      [ 8]  802 	jsr ___Reset0Ref; BIOS call
                            803 ;  0 "" 2
                            804 ;  1154 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            805 	; #ENR#[891]    intens(0x50);
                            806 ;  0 "" 2
                            807 ;--- end asm ---
   37FF C6 50         [ 2]  808 	ldb	#80	; ,
   3801 E7 E4         [ 4]  809 	stb	,s	; , a
                            810 ;----- asm -----
                            811 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3803 A6 E4         [ 4]  812 	lda ,s	;  a
   3805 BD F2 AB      [ 8]  813 	jsr ___Intensity_a; BIOS call
                            814 ;  0 "" 2
                            815 ;  1157 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            816 	; #ENR#[893]    zergnd();
                            817 ;  0 "" 2
                            818 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3808 BD F3 54      [ 8]  819 	jsr ___Reset0Ref; BIOS call
                            820 ;  0 "" 2
                            821 ;  1159 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            822 	; #ENR#[894]    positd(-50, 100);
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
                            837 ;  1161 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            838 	; #ENR#[895]    pack1x((void*)led8);
                            839 ;  0 "" 2
                            840 ;--- end asm ---
   381E C6 80         [ 2]  841 	ldb	#-128	; ,
   3820 D7 04         [ 4]  842 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   3822 10 8E 42 04   [ 4]  843 	ldy	#_led8	;  tmp27,
   3826 10 AF E4      [ 6]  844 	sty	,s	;  tmp27, x
                            845 ;----- asm -----
                            846 ;  1610 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3829 AE E4         [ 5]  847 	ldx ,s	;  x
   382B BD F4 10      [ 8]  848 	jsr ___Draw_VLp; BIOS call
                            849 ;  0 "" 2
                            850 ;  1164 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            851 	; #ENR#[897]    zergnd();
                            852 ;  0 "" 2
                            853 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   382E BD F3 54      [ 8]  854 	jsr ___Reset0Ref; BIOS call
                            855 ;  0 "" 2
                            856 ;  1166 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            857 	; #ENR#[898]    positd(-40, 110);
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
                            872 ;  1168 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            873 	; #ENR#[899]    pack1x((void*)led8);
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
                            884 ;  1171 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            885 	; #ENR#[901]    zergnd();
                            886 ;  0 "" 2
                            887 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3850 BD F3 54      [ 8]  888 	jsr ___Reset0Ref; BIOS call
                            889 ;  0 "" 2
                            890 ;  1173 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            891 	; #ENR#[902]    positd(-30, 120);
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
                            906 ;  1175 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            907 	; #ENR#[903]    pack1x((void*)led8);
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
                            918 ;  1178 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            919 	; #ENR#[905]    zergnd();
                            920 ;  0 "" 2
                            921 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3872 BD F3 54      [ 8]  922 	jsr ___Reset0Ref; BIOS call
                            923 ;  0 "" 2
                            924 ;  1180 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            925 	; #ENR#[906]    positd(0, 120);
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
                            939 ;  1182 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            940 	; #ENR#[907]    pack1x((void*)led8);
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
                            951 ;  1185 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            952 	; #ENR#[909]    zergnd();
                            953 ;  0 "" 2
                            954 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3892 BD F3 54      [ 8]  955 	jsr ___Reset0Ref; BIOS call
                            956 ;  0 "" 2
                            957 ;  1187 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            958 	; #ENR#[910]    positd(10, 120);
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
                            973 ;  1189 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            974 	; #ENR#[911]    pack1x((void*)led8);
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
                            985 ;  1192 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            986 	; #ENR#[913]    zergnd();
                            987 ;  0 "" 2
                            988 ;  181 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   38B4 BD F3 54      [ 8]  989 	jsr ___Reset0Ref; BIOS call
                            990 ;  0 "" 2
                            991 ;  1194 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                            992 	; #ENR#[914]    positd(20, 120);
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
                           1007 ;  1196 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1008 	; #ENR#[915]    pack1x((void*)led8);
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
                           1027 ;  1202 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1028 	; #ENR#[920]    Intensity_a(0x5f);
                           1029 ;  0 "" 2
                           1030 ;--- end asm ---
   38DE C6 5F         [ 2] 1031 	ldb	#95	; ,
   38E0 E7 63         [ 5] 1032 	stb	3,s	; , a
                           1033 ;----- asm -----
                           1034 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   38E2 A6 63         [ 5] 1035 	lda 3,s	;  a
   38E4 BD F2 AB      [ 8] 1036 	jsr ___Intensity_a; BIOS call
                           1037 ;  0 "" 2
                           1038 ;  1204 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1039 	; #ENR#[921]    Vec_Text_Width = 100;
                           1040 ;  0 "" 2
                           1041 ;--- end asm ---
   38E7 C6 64         [ 2] 1042 	ldb	#100	; ,
   38E9 F7 C8 2B      [ 5] 1043 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1044 ;----- asm -----
                           1045 ;  1206 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1046 	; #ENR#[922]    Print_Str_d(100, -70, infoText);
                           1047 ;  0 "" 2
                           1048 ;--- end asm ---
   38EC E7 63         [ 5] 1049 	stb	3,s	; , a
   38EE C6 BA         [ 2] 1050 	ldb	#-70	; ,
   38F0 E7 62         [ 5] 1051 	stb	2,s	; , b
   38F2 8E C8 F3      [ 3] 1052 	ldx	#_infoText	; ,
   38F5 AF E4         [ 5] 1053 	stx	,s	; , u
                           1054 ;----- asm -----
                           1055 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   38F7 A6 63         [ 5] 1056 	lda 3,s	;  a
   38F9 E6 62         [ 5] 1057 	ldb 2,s	;  b
   38FB EE E4         [ 5] 1058 	ldu ,s	;  u
   38FD BD F3 7A      [ 8] 1059 	jsr ___Print_Str_d; BIOS call
                           1060 ;  0 "" 2
                           1061 ;--- end asm ---
   3900 32 64         [ 5] 1062 	leas	4,s	; ,,
   3902 35 C0         [ 7] 1063 	puls	u,pc	; 
                           1064 	.globl _blockMovingToStart
   3904                    1065 _blockMovingToStart:
                           1066 ;----- asm -----
                           1067 ;  624 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1068 	; #ENR#[562]    drawField();
                           1069 ;  0 "" 2
                           1070 ;--- end asm ---
   3904 BD 36 6C      [ 8] 1071 	jsr	_drawField	; 
                           1072 ;----- asm -----
                           1073 ;  626 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1074 	; #ENR#[563]    drawBlock(blockYOfs);
                           1075 ;  0 "" 2
                           1076 ;--- end asm ---
   3907 F6 C8 E3      [ 5] 1077 	ldb	_blockYOfs	; , blockYOfs
   390A BD 09 DC      [ 8] 1078 	jsr	_drawBlock	; 
                           1079 ;----- asm -----
                           1080 ;  628 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1081 	; #ENR#[564]    blockYOfs++;
                           1082 ;  0 "" 2
                           1083 ;--- end asm ---
   390D F6 C8 E3      [ 5] 1084 	ldb	_blockYOfs	;  blockYOfs.32, blockYOfs
   3910 5C            [ 2] 1085 	incb	;  blockYOfs.32
   3911 F7 C8 E3      [ 5] 1086 	stb	_blockYOfs	;  blockYOfs.32, blockYOfs
                           1087 ;----- asm -----
                           1088 ;  630 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1089 	; #ENR#[565]    if (blockYOfs == 0) {
                           1090 ;  0 "" 2
                           1091 ;--- end asm ---
   3914 5D            [ 2] 1092 	tstb	;  blockYOfs.32
   3915 26 05         [ 3] 1093 	bne	L28	; 
                           1094 ;----- asm -----
                           1095 ;  632 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1096 	; #ENR#[566]        gameState = BlockWaiting;
                           1097 ;  0 "" 2
                           1098 ;--- end asm ---
   3917 C6 05         [ 2] 1099 	ldb	#5	; ,
   3919 F7 C9 11      [ 5] 1100 	stb	_gameState	; , gameState
   391C                    1101 L28:
   391C 39            [ 5] 1102 	rts
                           1103 	.globl _updateInfoText
   391D                    1104 _updateInfoText:
   391D 34 40         [ 6] 1105 	pshs	u	; 
                           1106 ;----- asm -----
                           1107 ;  266 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1108 	; #ENR#[237]    memcpy(infoText, "001 - 999€", 10);
                           1109 ;  0 "" 2
                           1110 ;--- end asm ---
   391F 8E C8 F3      [ 3] 1111 	ldx	#_infoText	;  tmp28,
   3922 CE 30 30      [ 3] 1112 	ldu	#12336	; ,
   3925 EF 84         [ 5] 1113 	stu	,x	; , infoText
   3927 CE 31 20      [ 3] 1114 	ldu	#12576	; ,
   392A FF C8 F5      [ 6] 1115 	stu	_infoText+2	; , infoText
   392D CE 2D 20      [ 3] 1116 	ldu	#11552	; ,
   3930 FF C8 F7      [ 6] 1117 	stu	_infoText+4	; , infoText
   3933 CE 39 39      [ 3] 1118 	ldu	#14649	; ,
   3936 FF C8 F9      [ 6] 1119 	stu	_infoText+6	; , infoText
   3939 CE 39 80      [ 3] 1120 	ldu	#14720	; ,
   393C FF C8 FB      [ 6] 1121 	stu	_infoText+8	; , infoText
                           1122 ;----- asm -----
                           1123 ;  268 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1124 	; #ENR#[238]    itoa(moveCount, &infoText[0]);
                           1125 ;  0 "" 2
                           1126 ;--- end asm ---
   393F 34 10         [ 6] 1127 	pshs	x	;  tmp28
   3941 BE C9 07      [ 6] 1128 	ldx	_moveCount	; , moveCount
   3944 BD 35 E4      [ 8] 1129 	jsr	_itoa	; 
                           1130 ;----- asm -----
                           1131 ;  270 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1132 	; #ENR#[239]    itoa(levelNumber + levelOffset, &infoText[6]);
                           1133 ;  0 "" 2
                           1134 ;--- end asm ---
   3947 F6 C8 87      [ 5] 1135 	ldb	_levelNumber	;  levelNumber.7, levelNumber
   394A FB 4E D8      [ 5] 1136 	addb	_levelOffset	;  tmp36, levelOffset
   394D 8E C8 F9      [ 3] 1137 	ldx	#_infoText+6	; ,
   3950 AF E3         [ 8] 1138 	stx	,--s	; ,
   3952 4F            [ 2] 1139 	clra		;zero_extendqihi: R:b -> R:d	;  tmp36,
   3953 1F 01         [ 6] 1140 	tfr	d,x	; ,
   3955 BD 35 E4      [ 8] 1141 	jsr	_itoa	; 
   3958 32 64         [ 5] 1142 	leas	4,s	; ,,
   395A 35 C0         [ 7] 1143 	puls	u,pc	; 
                           1144 	.globl _moveBlock
   395C                    1145 _moveBlock:
                           1146 ;----- asm -----
                           1147 ;  284 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1148 	; #ENR#[250]    moveBlockImpl(move);
                           1149 ;  0 "" 2
                           1150 ;--- end asm ---
   395C BD 06 33      [ 8] 1151 	jsr	_moveBlockImpl	; 
                           1152 ;----- asm -----
                           1153 ;  286 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1154 	; #ENR#[251]    if (!arcadeMode) {
                           1155 ;  0 "" 2
                           1156 ;--- end asm ---
   395F 7D C9 0E      [ 7] 1157 	tst	_arcadeMode	;  arcadeMode
   3962 26 10         [ 3] 1158 	bne	L34	; 
                           1159 ;----- asm -----
                           1160 ;  288 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1161 	; #ENR#[252]        if (moveCount < 999) moveCount++;
                           1162 ;  0 "" 2
                           1163 ;--- end asm ---
   3964 BE C9 07      [ 6] 1164 	ldx	_moveCount	;  moveCount.10, moveCount
   3967 8C 03 E6      [ 4] 1165 	cmpx	#998	;cmphi:	;  moveCount.10,
   396A 22 05         [ 3] 1166 	bhi	L33	; 
   396C 30 01         [ 5] 1167 	leax	1,x	; ,, moveCount.10
   396E BF C9 07      [ 6] 1168 	stx	_moveCount	; , moveCount
   3971                    1169 L33:
                           1170 ;----- asm -----
                           1171 ;  290 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1172 	; #ENR#[253]        updateInfoText();
                           1173 ;  0 "" 2
                           1174 ;--- end asm ---
   3971 BD 39 1D      [ 8] 1175 	jsr	_updateInfoText	; 
   3974                    1176 L34:
   3974 39            [ 5] 1177 	rts
                           1178 	.globl _startBlockFalling
   3975                    1179 _startBlockFalling:
                           1180 ;----- asm -----
                           1181 ;  297 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1182 	; #ENR#[259]    gameState = BlockFalling;
                           1183 ;  0 "" 2
                           1184 ;--- end asm ---
   3975 C6 07         [ 2] 1185 	ldb	#7	; ,
   3977 F7 C9 11      [ 5] 1186 	stb	_gameState	; , gameState
                           1187 ;----- asm -----
                           1188 ;  299 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1189 	; #ENR#[260]    blockYOfs = 0;
                           1190 ;  0 "" 2
                           1191 ;--- end asm ---
   397A 7F C8 E3      [ 7] 1192 	clr	_blockYOfs	;  blockYOfs
                           1193 ;----- asm -----
                           1194 ;  301 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1195 	; #ENR#[261]    moveBlock(lastBlockDirection);
                           1196 ;  0 "" 2
                           1197 ;--- end asm ---
   397D F6 C8 E4      [ 5] 1198 	ldb	_lastBlockDirection	; , lastBlockDirection
   3980 BD 39 5C      [ 8] 1199 	jsr	_moveBlock	; 
                           1200 ;----- asm -----
                           1201 ;  303 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1202 	; #ENR#[262]    changeMusic(fallingMusic);
                           1203 ;  0 "" 2
                           1204 ;--- end asm ---
   3983 8E 41 DC      [ 3] 1205 	ldx	#_fallingMusic	; ,
   3986 BD 36 63      [ 8] 1206 	jsr	_changeMusic	; 
                           1207 ;----- asm -----
                           1208 ;  305 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1209 	; #ENR#[263]    *vecx = 0;
                           1210 ;  0 "" 2
                           1211 ;--- end asm ---
   3989 6F 9F C8 82   [11] 1212 	clr	[_vecx]	; * vecx
   398D 39            [ 5] 1213 	rts
                           1214 	.globl _blockMoving
   398E                    1215 _blockMoving:
   398E 32 79         [ 5] 1216 	leas	-7,s	; ,,
                           1217 ;----- asm -----
                           1218 ;  776 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1219 	; #ENR#[657]    drawField();
                           1220 ;  0 "" 2
                           1221 ;--- end asm ---
   3990 BD 36 6C      [ 8] 1222 	jsr	_drawField	; 
                           1223 ;----- asm -----
                           1224 ;  778 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1225 	; #ENR#[658]    drawBlock(0);
                           1226 ;  0 "" 2
                           1227 ;--- end asm ---
   3993 5F            [ 2] 1228 	clrb	; 
   3994 BD 09 DC      [ 8] 1229 	jsr	_drawBlock	; 
                           1230 ;----- asm -----
                           1231 ;  780 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1232 	; #ENR#[659]    doBlockAnimation();
                           1233 ;  0 "" 2
                           1234 ;--- end asm ---
   3997 BD 08 DA      [ 8] 1235 	jsr	_doBlockAnimation	; 
                           1236 ;----- asm -----
                           1237 ;  782 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1238 	; #ENR#[660]    if (!blockAnimating) {
                           1239 ;  0 "" 2
                           1240 ;--- end asm ---
   399A 7D C8 E5      [ 7] 1241 	tst	_blockAnimating	;  blockAnimating
   399D 10 26 01 8A   [ 6] 1242 	lbne	L63	; 
                           1243 ;----- asm -----
                           1244 ;  785 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1245 	; #ENR#[662]        if (splitMode) {
                           1246 ;  0 "" 2
                           1247 ;--- end asm ---
   39A1 7D C8 E6      [ 7] 1248 	tst	_splitMode	;  splitMode
   39A4 27 03         [ 3] 1249 	beq	L39	; 
                           1250 ;----- asm -----
                           1251 ;  787 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1252 	; #ENR#[663]            testMerge();
                           1253 ;  0 "" 2
                           1254 ;--- end asm ---
   39A6 BD 09 25      [ 8] 1255 	jsr	_testMerge	; 
   39A9                    1256 L39:
                           1257 ;----- asm -----
                           1258 ;  792 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1259 	; #ENR#[667]        uint8_t c0 = isField(blockX, blockY);
                           1260 ;  0 "" 2
                           1261 ;--- end asm ---
   39A9 F6 C8 E8      [ 5] 1262 	ldb	_blockY	; , blockY
   39AC E7 E2         [ 6] 1263 	stb	,-s	; ,
   39AE F6 C8 E7      [ 5] 1264 	ldb	_blockX	; , blockX
   39B1 BD 43 00      [ 8] 1265 	jsr	_isField	; 
   39B4 E7 62         [ 5] 1266 	stb	2,s	; , c0
                           1267 ;----- asm -----
                           1268 ;  794 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1269 	; #ENR#[668]        uint8_t c1 = isField(blockX + 1, blockY);
                           1270 ;  0 "" 2
                           1271 ;--- end asm ---
   39B6 F6 C8 E7      [ 5] 1272 	ldb	_blockX	; , blockX
   39B9 5C            [ 2] 1273 	incb	; 
   39BA E7 61         [ 5] 1274 	stb	1,s	; ,
   39BC F6 C8 E8      [ 5] 1275 	ldb	_blockY	; , blockY
   39BF E7 E2         [ 6] 1276 	stb	,-s	; ,
   39C1 E6 62         [ 5] 1277 	ldb	2,s	; ,
   39C3 BD 43 00      [ 8] 1278 	jsr	_isField	; 
   39C6 E7 64         [ 5] 1279 	stb	4,s	; , c1
                           1280 ;----- asm -----
                           1281 ;  796 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1282 	; #ENR#[669]        uint8_t c2 = isField(blockX, blockY + 1);
                           1283 ;  0 "" 2
                           1284 ;--- end asm ---
   39C8 F6 C8 E8      [ 5] 1285 	ldb	_blockY	; , blockY
   39CB 5C            [ 2] 1286 	incb	; 
   39CC 34 04         [ 6] 1287 	pshs	b	; 
   39CE F6 C8 E7      [ 5] 1288 	ldb	_blockX	; , blockX
   39D1 BD 43 00      [ 8] 1289 	jsr	_isField	; 
   39D4 E7 66         [ 5] 1290 	stb	6,s	; , c2
                           1291 ;----- asm -----
                           1292 ;  798 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1293 	; #ENR#[670]        char f0 = getField(blockX, blockY);
                           1294 ;  0 "" 2
                           1295 ;--- end asm ---
   39D6 F6 C8 E8      [ 5] 1296 	ldb	_blockY	; , blockY
   39D9 E7 E2         [ 6] 1297 	stb	,-s	; ,
   39DB F6 C8 E7      [ 5] 1298 	ldb	_blockX	; , blockX
   39DE BD 42 2E      [ 8] 1299 	jsr	_getField	; 
   39E1 E7 68         [ 5] 1300 	stb	8,s	; , f0
                           1301 ;----- asm -----
                           1302 ;  800 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1303 	; #ENR#[671]        char f1 = getField(blockX + 1, blockY);
                           1304 ;  0 "" 2
                           1305 ;--- end asm ---
   39E3 F6 C8 E7      [ 5] 1306 	ldb	_blockX	; , blockX
   39E6 5C            [ 2] 1307 	incb	; 
   39E7 E7 64         [ 5] 1308 	stb	4,s	; ,
   39E9 F6 C8 E8      [ 5] 1309 	ldb	_blockY	; , blockY
   39EC E7 E2         [ 6] 1310 	stb	,-s	; ,
   39EE E6 65         [ 5] 1311 	ldb	5,s	; ,
   39F0 BD 42 2E      [ 8] 1312 	jsr	_getField	; 
   39F3 E7 6A         [ 5] 1313 	stb	10,s	; , f1
                           1314 ;----- asm -----
                           1315 ;  802 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1316 	; #ENR#[672]        char f2 = getField(blockX, blockY + 1);
                           1317 ;  0 "" 2
                           1318 ;--- end asm ---
   39F5 F6 C8 E8      [ 5] 1319 	ldb	_blockY	; , blockY
   39F8 5C            [ 2] 1320 	incb	; 
   39F9 34 04         [ 6] 1321 	pshs	b	; 
   39FB F6 C8 E7      [ 5] 1322 	ldb	_blockX	; , blockX
   39FE BD 42 2E      [ 8] 1323 	jsr	_getField	; 
   3A01 E7 6C         [ 5] 1324 	stb	12,s	; , f2
                           1325 ;----- asm -----
                           1326 ;  804 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1327 	; #ENR#[673]        if (splitMode) {
                           1328 ;  0 "" 2
                           1329 ;--- end asm ---
   3A03 32 66         [ 5] 1330 	leas	6,s	; ,,
   3A05 7D C8 E6      [ 7] 1331 	tst	_splitMode	;  splitMode
   3A08 27 0C         [ 3] 1332 	beq	L40	; 
                           1333 ;----- asm -----
                           1334 ;  806 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1335 	; #ENR#[674]            if (!c0) {
                           1336 ;  0 "" 2
                           1337 ;--- end asm ---
   3A0A 6D 61         [ 7] 1338 	tst	1,s	;  c0
   3A0C 10 26 00 3E   [ 6] 1339 	lbne	L41	; 
                           1340 ;----- asm -----
                           1341 ;  808 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1342 	; #ENR#[675]                startBlockFalling();
                           1343 ;  0 "" 2
                           1344 ;--- end asm ---
   3A10 BD 39 75      [ 8] 1345 	jsr	_startBlockFalling	; 
   3A13 7E 3A 4E      [ 4] 1346 	jmp	L41	; 
   3A16                    1347 L40:
                           1348 ;----- asm -----
                           1349 ;  812 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1350 	; #ENR#[678]            switch (blockOrientation) {
                           1351 ;  0 "" 2
                           1352 ;--- end asm ---
   3A16 F6 C8 E2      [ 5] 1353 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   3A19 C1 01         [ 2] 1354 	cmpb	#1	;cmpqi:	;  blockOrientation,
   3A1B 27 19         [ 3] 1355 	beq	L43	; 
   3A1D 25 08         [ 3] 1356 	blo	L42	; 
   3A1F C1 02         [ 2] 1357 	cmpb	#2	;cmpqi:	;  blockOrientation,
   3A21 10 26 00 29   [ 6] 1358 	lbne	L41	; 
   3A25 20 1C         [ 3] 1359 	bra	L64	; 
   3A27                    1360 L42:
                           1361 ;----- asm -----
                           1362 ;  816 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1363 	; #ENR#[680]                if (!c0 || f0 == 'f') {
                           1364 ;  0 "" 2
                           1365 ;--- end asm ---
   3A27 6D 61         [ 7] 1366 	tst	1,s	;  c0
   3A29 27 06         [ 3] 1367 	beq	L45	; 
   3A2B E6 64         [ 5] 1368 	ldb	4,s	; , f0
   3A2D C1 66         [ 2] 1369 	cmpb	#102	;cmpqi:	; ,
   3A2F 26 03         [ 3] 1370 	bne	L46	; 
   3A31                    1371 L45:
                           1372 ;----- asm -----
                           1373 ;  818 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1374 	; #ENR#[681]                    startBlockFalling();
                           1375 ;  0 "" 2
                           1376 ;--- end asm ---
   3A31 BD 39 75      [ 8] 1377 	jsr	_startBlockFalling	; 
   3A34                    1378 L46:
                           1379 ;----- asm -----
                           1380 ;  821 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1381 	; #ENR#[683]                break;
                           1382 ;  0 "" 2
                           1383 ;--- end asm ---
   3A34 20 18         [ 3] 1384 	bra	L41	; 
   3A36                    1385 L43:
                           1386 ;----- asm -----
                           1387 ;  825 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1388 	; #ENR#[685]                if (!c0 || !c2) {
                           1389 ;  0 "" 2
                           1390 ;--- end asm ---
   3A36 6D 61         [ 7] 1391 	tst	1,s	;  c0
   3A38 27 04         [ 3] 1392 	beq	L47	; 
   3A3A 6D 63         [ 7] 1393 	tst	3,s	;  c2
   3A3C 26 03         [ 3] 1394 	bne	L48	; 
   3A3E                    1395 L47:
                           1396 ;----- asm -----
                           1397 ;  827 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1398 	; #ENR#[686]                    startBlockFalling();
                           1399 ;  0 "" 2
                           1400 ;--- end asm ---
   3A3E BD 39 75      [ 8] 1401 	jsr	_startBlockFalling	; 
   3A41                    1402 L48:
                           1403 ;----- asm -----
                           1404 ;  830 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1405 	; #ENR#[688]                break;
                           1406 ;  0 "" 2
                           1407 ;--- end asm ---
   3A41 20 0B         [ 3] 1408 	bra	L41	; 
   3A43                    1409 L64:
                           1410 ;----- asm -----
                           1411 ;  834 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1412 	; #ENR#[690]                if (!c0 || ! c1) {
                           1413 ;  0 "" 2
                           1414 ;--- end asm ---
   3A43 6D 61         [ 7] 1415 	tst	1,s	;  c0
   3A45 27 04         [ 3] 1416 	beq	L49	; 
   3A47 6D 62         [ 7] 1417 	tst	2,s	;  c1
   3A49 26 03         [ 3] 1418 	bne	L50	; 
   3A4B                    1419 L49:
                           1420 ;----- asm -----
                           1421 ;  836 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1422 	; #ENR#[691]                    startBlockFalling();
                           1423 ;  0 "" 2
                           1424 ;--- end asm ---
   3A4B BD 39 75      [ 8] 1425 	jsr	_startBlockFalling	; 
   3A4E                    1426 L50:
                           1427 ;----- asm -----
                           1428 ;  839 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1429 	; #ENR#[693]                break;
                           1430 ;  0 "" 2
                           1431 ;--- end asm ---
   3A4E                    1432 L41:
                           1433 ;----- asm -----
                           1434 ;  845 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1435 	; #ENR#[698]        if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
                           1436 ;  0 "" 2
                           1437 ;--- end asm ---
   3A4E 7D C8 E2      [ 7] 1438 	tst	_blockOrientation	;  blockOrientation
   3A51 26 2B         [ 3] 1439 	bne	L51	; 
   3A53 F6 C8 E7      [ 5] 1440 	ldb	_blockX	; , blockX
   3A56 F1 C8 85      [ 5] 1441 	cmpb	_endX	;cmpqi:	; , endX
   3A59 26 23         [ 3] 1442 	bne	L51	; 
   3A5B F6 C8 E8      [ 5] 1443 	ldb	_blockY	; , blockY
   3A5E F1 C8 86      [ 5] 1444 	cmpb	_endY	;cmpqi:	; , endY
   3A61 26 1B         [ 3] 1445 	bne	L51	; 
   3A63 7D C8 E6      [ 7] 1446 	tst	_splitMode	;  splitMode
   3A66 26 16         [ 3] 1447 	bne	L51	; 
                           1448 ;----- asm -----
                           1449 ;  847 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1450 	; #ENR#[699]            blockYOfs = 0;
                           1451 ;  0 "" 2
                           1452 ;--- end asm ---
   3A68 7F C8 E3      [ 7] 1453 	clr	_blockYOfs	;  blockYOfs
                           1454 ;----- asm -----
                           1455 ;  849 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1456 	; #ENR#[700]            gameState = BlockMovingAtEnd;
                           1457 ;  0 "" 2
                           1458 ;--- end asm ---
   3A6B C6 08         [ 2] 1459 	ldb	#8	; ,
   3A6D F7 C9 11      [ 5] 1460 	stb	_gameState	; , gameState
                           1461 ;----- asm -----
                           1462 ;  851 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1463 	; #ENR#[701]            changeMusic(levelEndMusic);
                           1464 ;  0 "" 2
                           1465 ;--- end asm ---
   3A70 8E 41 C2      [ 3] 1466 	ldx	#_levelEndMusic	; ,
   3A73 BD 36 63      [ 8] 1467 	jsr	_changeMusic	; 
                           1468 ;----- asm -----
                           1469 ;  853 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1470 	; #ENR#[702]            *vecx = 1;
                           1471 ;  0 "" 2
                           1472 ;--- end asm ---
   3A76 C6 01         [ 2] 1473 	ldb	#1	; ,
   3A78 E7 9F C8 82   [ 9] 1474 	stb	[_vecx]	; ,* vecx
   3A7C 20 0C         [ 3] 1475 	bra	L52	; 
   3A7E                    1476 L51:
                           1477 ;----- asm -----
                           1478 ;  857 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1479 	; #ENR#[705]            if (gameState != BlockFalling) {
                           1480 ;  0 "" 2
                           1481 ;--- end asm ---
   3A7E F6 C9 11      [ 5] 1482 	ldb	_gameState	; , gameState
   3A81 C1 07         [ 2] 1483 	cmpb	#7	;cmpqi:	; ,
   3A83 27 05         [ 3] 1484 	beq	L52	; 
                           1485 ;----- asm -----
                           1486 ;  859 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1487 	; #ENR#[706]                gameState = BlockWaiting;
                           1488 ;  0 "" 2
                           1489 ;--- end asm ---
   3A85 C6 05         [ 2] 1490 	ldb	#5	; ,
   3A87 F7 C9 11      [ 5] 1491 	stb	_gameState	; , gameState
   3A8A                    1492 L52:
                           1493 ;----- asm -----
                           1494 ;  865 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1495 	; #ENR#[711]        if (splitMode) {
                           1496 ;  0 "" 2
                           1497 ;--- end asm ---
   3A8A 7D C8 E6      [ 7] 1498 	tst	_splitMode	;  splitMode
   3A8D 27 18         [ 3] 1499 	beq	L53	; 
                           1500 ;----- asm -----
                           1501 ;  867 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1502 	; #ENR#[712]            if (f0 == 's') {
                           1503 ;  0 "" 2
                           1504 ;--- end asm ---
   3A8F E6 64         [ 5] 1505 	ldb	4,s	; , f0
   3A91 C1 73         [ 2] 1506 	cmpb	#115	;cmpqi:	; ,
   3A93 10 26 00 94   [ 6] 1507 	lbne	L63	; 
                           1508 ;----- asm -----
                           1509 ;  869 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1510 	; #ENR#[713]                swatchSwitch(blockX, blockY);
                           1511 ;  0 "" 2
                           1512 ;--- end asm ---
   3A97 F6 C8 E8      [ 5] 1513 	ldb	_blockY	; , blockY
   3A9A E7 E2         [ 6] 1514 	stb	,-s	; ,
   3A9C F6 C8 E7      [ 5] 1515 	ldb	_blockX	; , blockX
   3A9F BD 4D C5      [ 8] 1516 	jsr	_swatchSwitch	; 
   3AA2 32 61         [ 5] 1517 	leas	1,s	; ,,
   3AA4 7E 3B 2B      [ 4] 1518 	jmp	L63	; 
   3AA7                    1519 L53:
                           1520 ;----- asm -----
                           1521 ;  873 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1522 	; #ENR#[716]            switch (blockOrientation) {
                           1523 ;  0 "" 2
                           1524 ;--- end asm ---
   3AA7 F6 C8 E2      [ 5] 1525 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   3AAA C1 01         [ 2] 1526 	cmpb	#1	;cmpqi:	;  blockOrientation,
   3AAC 27 29         [ 3] 1527 	beq	L55	; 
   3AAE 25 09         [ 3] 1528 	blo	L54	; 
   3AB0 C1 02         [ 2] 1529 	cmpb	#2	;cmpqi:	;  blockOrientation,
   3AB2 10 26 00 75   [ 6] 1530 	lbne	L63	; 
   3AB6 7E 3B 00      [ 4] 1531 	jmp	L65	; 
   3AB9                    1532 L54:
                           1533 ;----- asm -----
                           1534 ;  877 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1535 	; #ENR#[718]                if (f0 == 's' || f0 == 'h' || f0 == 'v') {
                           1536 ;  0 "" 2
                           1537 ;--- end asm ---
   3AB9 E6 64         [ 5] 1538 	ldb	4,s	; , f0
   3ABB C1 73         [ 2] 1539 	cmpb	#115	;cmpqi:	; ,
   3ABD 27 08         [ 3] 1540 	beq	L57	; 
   3ABF C1 68         [ 2] 1541 	cmpb	#104	;cmpqi:	; ,
   3AC1 27 04         [ 3] 1542 	beq	L57	; 
   3AC3 C1 76         [ 2] 1543 	cmpb	#118	;cmpqi:	; ,
   3AC5 26 0D         [ 3] 1544 	bne	L58	; 
   3AC7                    1545 L57:
                           1546 ;----- asm -----
                           1547 ;  879 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1548 	; #ENR#[719]                    swatchSwitch(blockX, blockY);
                           1549 ;  0 "" 2
                           1550 ;--- end asm ---
   3AC7 F6 C8 E8      [ 5] 1551 	ldb	_blockY	; , blockY
   3ACA E7 E2         [ 6] 1552 	stb	,-s	; ,
   3ACC F6 C8 E7      [ 5] 1553 	ldb	_blockX	; , blockX
   3ACF BD 4D C5      [ 8] 1554 	jsr	_swatchSwitch	; 
   3AD2 32 61         [ 5] 1555 	leas	1,s	; ,,
   3AD4                    1556 L58:
                           1557 ;----- asm -----
                           1558 ;  882 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1559 	; #ENR#[721]                break;
                           1560 ;  0 "" 2
                           1561 ;--- end asm ---
   3AD4 7E 3B 2B      [ 4] 1562 	jmp	L63	; 
   3AD7                    1563 L55:
                           1564 ;----- asm -----
                           1565 ;  886 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1566 	; #ENR#[723]                if (f0 == 's') {
                           1567 ;  0 "" 2
                           1568 ;--- end asm ---
   3AD7 E6 64         [ 5] 1569 	ldb	4,s	; , f0
   3AD9 C1 73         [ 2] 1570 	cmpb	#115	;cmpqi:	; ,
   3ADB 26 0D         [ 3] 1571 	bne	L59	; 
                           1572 ;----- asm -----
                           1573 ;  888 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1574 	; #ENR#[724]                    swatchSwitch(blockX, blockY);
                           1575 ;  0 "" 2
                           1576 ;--- end asm ---
   3ADD F6 C8 E8      [ 5] 1577 	ldb	_blockY	; , blockY
   3AE0 E7 E2         [ 6] 1578 	stb	,-s	; ,
   3AE2 F6 C8 E7      [ 5] 1579 	ldb	_blockX	; , blockX
   3AE5 BD 4D C5      [ 8] 1580 	jsr	_swatchSwitch	; 
   3AE8 32 61         [ 5] 1581 	leas	1,s	; ,,
   3AEA                    1582 L59:
                           1583 ;----- asm -----
                           1584 ;  891 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1585 	; #ENR#[726]                if (f2 == 's') {
                           1586 ;  0 "" 2
                           1587 ;--- end asm ---
   3AEA E6 66         [ 5] 1588 	ldb	6,s	; , f2
   3AEC C1 73         [ 2] 1589 	cmpb	#115	;cmpqi:	; ,
   3AEE 26 0E         [ 3] 1590 	bne	L60	; 
                           1591 ;----- asm -----
                           1592 ;  893 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1593 	; #ENR#[727]                    swatchSwitch(blockX, blockY + 1);
                           1594 ;  0 "" 2
                           1595 ;--- end asm ---
   3AF0 F6 C8 E8      [ 5] 1596 	ldb	_blockY	; , blockY
   3AF3 5C            [ 2] 1597 	incb	; 
   3AF4 34 04         [ 6] 1598 	pshs	b	; 
   3AF6 F6 C8 E7      [ 5] 1599 	ldb	_blockX	; , blockX
   3AF9 BD 4D C5      [ 8] 1600 	jsr	_swatchSwitch	; 
   3AFC 32 61         [ 5] 1601 	leas	1,s	; ,,
   3AFE                    1602 L60:
                           1603 ;----- asm -----
                           1604 ;  896 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1605 	; #ENR#[729]                break;
                           1606 ;  0 "" 2
                           1607 ;--- end asm ---
   3AFE 20 2B         [ 3] 1608 	bra	L63	; 
   3B00                    1609 L65:
                           1610 ;----- asm -----
                           1611 ;  900 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1612 	; #ENR#[731]                if (f0 == 's') {
                           1613 ;  0 "" 2
                           1614 ;--- end asm ---
   3B00 E6 64         [ 5] 1615 	ldb	4,s	; , f0
   3B02 C1 73         [ 2] 1616 	cmpb	#115	;cmpqi:	; ,
   3B04 26 0D         [ 3] 1617 	bne	L61	; 
                           1618 ;----- asm -----
                           1619 ;  902 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1620 	; #ENR#[732]                    swatchSwitch(blockX, blockY);
                           1621 ;  0 "" 2
                           1622 ;--- end asm ---
   3B06 F6 C8 E8      [ 5] 1623 	ldb	_blockY	; , blockY
   3B09 E7 E2         [ 6] 1624 	stb	,-s	; ,
   3B0B F6 C8 E7      [ 5] 1625 	ldb	_blockX	; , blockX
   3B0E BD 4D C5      [ 8] 1626 	jsr	_swatchSwitch	; 
   3B11 32 61         [ 5] 1627 	leas	1,s	; ,,
   3B13                    1628 L61:
                           1629 ;----- asm -----
                           1630 ;  905 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1631 	; #ENR#[734]                if (f1 == 's') {
                           1632 ;  0 "" 2
                           1633 ;--- end asm ---
   3B13 E6 65         [ 5] 1634 	ldb	5,s	; , f1
   3B15 C1 73         [ 2] 1635 	cmpb	#115	;cmpqi:	; ,
   3B17 26 12         [ 3] 1636 	bne	L62	; 
                           1637 ;----- asm -----
                           1638 ;  907 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1639 	; #ENR#[735]                    swatchSwitch(blockX + 1, blockY);
                           1640 ;  0 "" 2
                           1641 ;--- end asm ---
   3B19 F6 C8 E7      [ 5] 1642 	ldb	_blockX	; , blockX
   3B1C 5C            [ 2] 1643 	incb	; 
   3B1D E7 E4         [ 4] 1644 	stb	,s	; ,
   3B1F F6 C8 E8      [ 5] 1645 	ldb	_blockY	; , blockY
   3B22 E7 E2         [ 6] 1646 	stb	,-s	; ,
   3B24 E6 61         [ 5] 1647 	ldb	1,s	; ,
   3B26 BD 4D C5      [ 8] 1648 	jsr	_swatchSwitch	; 
   3B29 32 61         [ 5] 1649 	leas	1,s	; ,,
   3B2B                    1650 L62:
                           1651 ;----- asm -----
                           1652 ;  910 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1653 	; #ENR#[737]                break;
                           1654 ;  0 "" 2
                           1655 ;--- end asm ---
   3B2B                    1656 L63:
   3B2B 32 67         [ 5] 1657 	leas	7,s	; ,,
   3B2D 39            [ 5] 1658 	rts
                           1659 	.globl _sendCommand
   3B2E                    1660 _sendCommand:
   3B2E 32 7E         [ 5] 1661 	leas	-2,s	; ,,
   3B30 E7 E4         [ 4] 1662 	stb	,s	;  cmd, cmd
                           1663 ;----- asm -----
                           1664 ;  178 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1665 	; #ENR#[177]    uint8_t result;
                           1666 ;  0 "" 2
                           1667 ;  180 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1668 	; #ENR#[178]    picWrite('V');
                           1669 ;  0 "" 2
                           1670 ;--- end asm ---
   3B32 C6 56         [ 2] 1671 	ldb	#86	; ,
   3B34 BD 6B AD      [ 8] 1672 	jsr	_picWrite	; 
                           1673 ;----- asm -----
                           1674 ;  182 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1675 	; #ENR#[179]    picWrite(cmd);
                           1676 ;  0 "" 2
                           1677 ;--- end asm ---
   3B37 E6 E4         [ 4] 1678 	ldb	,s	; , cmd
   3B39 BD 6B AD      [ 8] 1679 	jsr	_picWrite	; 
                           1680 ;----- asm -----
                           1681 ;  184 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1682 	; #ENR#[180]    picWrite(arg);
                           1683 ;  0 "" 2
                           1684 ;--- end asm ---
   3B3C E6 64         [ 5] 1685 	ldb	4,s	; , arg
   3B3E BD 6B AD      [ 8] 1686 	jsr	_picWrite	; 
                           1687 ;----- asm -----
                           1688 ;  186 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1689 	; #ENR#[181]    result = picRead();
                           1690 ;  0 "" 2
                           1691 ;--- end asm ---
   3B41 BD 6B F9      [ 8] 1692 	jsr	_picRead	; 
   3B44 E7 61         [ 5] 1693 	stb	1,s	; , result
                           1694 ;----- asm -----
                           1695 ;  188 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1696 	; #ENR#[182]    delay10ms();
                           1697 ;  0 "" 2
                           1698 ;--- end asm ---
   3B46 BD 6C 56      [ 8] 1699 	jsr	_delay10ms	; 
                           1700 ;----- asm -----
                           1701 ;  190 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1702 	; #ENR#[183]    return result;
                           1703 ;  0 "" 2
                           1704 ;--- end asm ---
   3B49 E6 61         [ 5] 1705 	ldb	1,s	; , result
   3B4B 32 62         [ 5] 1706 	leas	2,s	; ,,
   3B4D 39            [ 5] 1707 	rts
                           1708 	.globl _readEeprom
   3B4E                    1709 _readEeprom:
                           1710 ;----- asm -----
                           1711 ;  230 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1712 	; #ENR#[212]    if (picAvailable) {
                           1713 ;  0 "" 2
                           1714 ;--- end asm ---
   3B4E 7D C9 0D      [ 7] 1715 	tst	_picAvailable	;  picAvailable
   3B51 27 0B         [ 3] 1716 	beq	L69	; 
                           1717 ;----- asm -----
                           1718 ;  232 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1719 	; #ENR#[213]        return sendCommand(CMD_EEPROM_READ, address);
                           1720 ;  0 "" 2
                           1721 ;--- end asm ---
   3B53 34 04         [ 6] 1722 	pshs	b	;  address
   3B55 C6 04         [ 2] 1723 	ldb	#4	; ,
   3B57 BD 3B 2E      [ 8] 1724 	jsr	_sendCommand	; 
   3B5A 32 61         [ 5] 1725 	leas	1,s	; ,,
   3B5C 20 02         [ 3] 1726 	bra	L70	; 
   3B5E                    1727 L69:
                           1728 ;----- asm -----
                           1729 ;  235 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1730 	; #ENR#[215]        return 0xff;
                           1731 ;  0 "" 2
                           1732 ;--- end asm ---
   3B5E C6 FF         [ 2] 1733 	ldb	#-1	;  D.2259,
   3B60                    1734 L70:
   3B60 39            [ 5] 1735 	rts
                           1736 	.globl _startLevel
   3B61                    1737 _startLevel:
   3B61 34 60         [ 7] 1738 	pshs	y,u	; 
   3B63 32 7C         [ 5] 1739 	leas	-4,s	; ,,
                           1740 ;----- asm -----
                           1741 ;  311 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1742 	; #ENR#[268]    if (arcadeMode) {
                           1743 ;  0 "" 2
                           1744 ;--- end asm ---
   3B65 7D C9 0E      [ 7] 1745 	tst	_arcadeMode	;  arcadeMode
   3B68 27 24         [ 3] 1746 	beq	L73	; 
                           1747 ;----- asm -----
                           1748 ;  313 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1749 	; #ENR#[269]        levelNumber = arcadeLevels[arcadeSelection][arcadeIndex] - 1;
                           1750 ;  0 "" 2
                           1751 ;--- end asm ---
   3B6A F6 C9 10      [ 5] 1752 	ldb	_arcadeIndex	; , arcadeIndex
   3B6D 4F            [ 2] 1753 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3B6E 1F 02         [ 6] 1754 	tfr	d,y	; , arcadeIndex
   3B70 F6 C9 0F      [ 5] 1755 	ldb	_arcadeSelection	; , arcadeSelection
   3B73 4F            [ 2] 1756 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3B74 ED 62         [ 6] 1757 	std	2,s	; ,
   3B76 58            [ 2] 1758 	aslb	; 
   3B77 49            [ 2] 1759 	rola	; 
   3B78 58            [ 2] 1760 	aslb	; 
   3B79 49            [ 2] 1761 	rola	; 
   3B7A EE 62         [ 6] 1762 	ldu	2,s	; ,
   3B7C 30 CB         [ 8] 1763 	leax	d,u	;  tmp40, tmp39,
   3B7E 1E 02         [ 8] 1764 	exg	d,y	; , arcadeIndex
   3B80 30 8B         [ 8] 1765 	leax	d,x	;  tmp41,, tmp41
   3B82 1E 02         [ 8] 1766 	exg	d,y	; , arcadeIndex
   3B84 E6 89 42 1A   [ 8] 1767 	ldb	_arcadeLevels,x	;  levelNumber.18, arcadeLevels
   3B88 5A            [ 2] 1768 	decb	;  levelNumber.18
   3B89 F7 C8 87      [ 5] 1769 	stb	_levelNumber	;  levelNumber.18, levelNumber
   3B8C 20 3B         [ 3] 1770 	bra	L74	; 
   3B8E                    1771 L73:
                           1772 ;----- asm -----
                           1773 ;  316 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1774 	; #ENR#[271]        levelHighscore = readEeprom((uint8_t) (levelOffset + levelNumber * 2));
                           1775 ;  0 "" 2
                           1776 ;--- end asm ---
   3B8E F6 C8 87      [ 5] 1777 	ldb	_levelNumber	; , levelNumber
   3B91 E7 E4         [ 4] 1778 	stb	,s	; , levelNumber.19
   3B93 58            [ 2] 1779 	aslb	;  tmp43
   3B94 FB 4E D8      [ 5] 1780 	addb	_levelOffset	;  tmp44, levelOffset
   3B97 BD 3B 4E      [ 8] 1781 	jsr	_readEeprom	; 
   3B9A 4F            [ 2] 1782 	clra		;zero_extendqihi: R:b -> R:d	;  D.2312, D.2312
   3B9B FD C9 0B      [ 6] 1783 	std	_levelHighscore	;  D.2312, levelHighscore
                           1784 ;----- asm -----
                           1785 ;  318 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1786 	; #ENR#[272]        levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelOffset + levelNumber * 2 + 1))) << 8;
                           1787 ;  0 "" 2
                           1788 ;--- end asm ---
   3B9E F6 C8 87      [ 5] 1789 	ldb	_levelNumber	; , levelNumber
   3BA1 E7 E4         [ 4] 1790 	stb	,s	; , levelNumber.22
   3BA3 F6 4E D8      [ 5] 1791 	ldb	_levelOffset	; , levelOffset
   3BA6 5C            [ 2] 1792 	incb	; 
   3BA7 E7 61         [ 5] 1793 	stb	1,s	; ,
   3BA9 E6 E4         [ 4] 1794 	ldb	,s	;  tmp47, levelNumber.22
   3BAB 58            [ 2] 1795 	aslb	;  tmp47
   3BAC EB 61         [ 5] 1796 	addb	1,s	;  tmp48,
   3BAE BD 3B 4E      [ 8] 1797 	jsr	_readEeprom	; 
   3BB1 1F 98         [ 6] 1798 	tfr	b,a	; ,
   3BB3 5F            [ 2] 1799 	clrb	; 
   3BB4 BA C9 0B      [ 5] 1800 	ora	_levelHighscore	; , levelHighscore
   3BB7 FA C9 0C      [ 5] 1801 	orb	_levelHighscore+1	; , levelHighscore
   3BBA FD C9 0B      [ 6] 1802 	std	_levelHighscore	;  levelHighscore.24, levelHighscore
                           1803 ;----- asm -----
                           1804 ;  320 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1805 	; #ENR#[273]        if (levelHighscore == 0) levelHighscore = 999;
                           1806 ;  0 "" 2
                           1807 ;--- end asm ---
   3BBD 10 83 00 00   [ 5] 1808 	cmpd	#0	;  levelHighscore.24
   3BC1 26 06         [ 3] 1809 	bne	L74	; 
   3BC3 8E 03 E7      [ 3] 1810 	ldx	#999	; ,
   3BC6 BF C9 0B      [ 6] 1811 	stx	_levelHighscore	; , levelHighscore
   3BC9                    1812 L74:
                           1813 ;----- asm -----
                           1814 ;  323 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1815 	; #ENR#[275]    level = levels[levelNumber];
                           1816 ;  0 "" 2
                           1817 ;--- end asm ---
   3BC9 F6 C8 87      [ 5] 1818 	ldb	_levelNumber	;  levelNumber.25, levelNumber
   3BCC 4F            [ 2] 1819 	clra		;zero_extendqihi: R:b -> R:d	;  levelNumber.25, levelNumber.25
   3BCD 58            [ 2] 1820 	aslb	; 
   3BCE 49            [ 2] 1821 	rola	; 
   3BCF 1F 01         [ 6] 1822 	tfr	d,x	;  levelNumber.25, tmp54
   3BD1 AE 89 5D 4E   [ 9] 1823 	ldx	_levels,x	; , levels
   3BD5 BF C9 12      [ 6] 1824 	stx	_level	; , level
                           1825 ;----- asm -----
                           1826 ;  325 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1827 	; #ENR#[276]    initSwatches();
                           1828 ;  0 "" 2
                           1829 ;--- end asm ---
   3BD8 BD 49 04      [ 8] 1830 	jsr	_initSwatches	; 
                           1831 ;----- asm -----
                           1832 ;  327 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1833 	; #ENR#[277]    initLevel();
                           1834 ;  0 "" 2
                           1835 ;--- end asm ---
   3BDB BD 4D 92      [ 8] 1836 	jsr	_initLevel	; 
                           1837 ;----- asm -----
                           1838 ;  329 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1839 	; #ENR#[278]    blockX = level->start.x;
                           1840 ;  0 "" 2
                           1841 ;--- end asm ---
   3BDE BE C9 12      [ 6] 1842 	ldx	_level	;  level, level
   3BE1 E6 02         [ 5] 1843 	ldb	2,x	; , <variable>.start.x
   3BE3 F7 C8 E7      [ 5] 1844 	stb	_blockX	; , blockX
                           1845 ;----- asm -----
                           1846 ;  331 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1847 	; #ENR#[279]    blockY = level->start.y;
                           1848 ;  0 "" 2
                           1849 ;--- end asm ---
   3BE6 E6 03         [ 5] 1850 	ldb	3,x	; , <variable>.start.y
   3BE8 F7 C8 E8      [ 5] 1851 	stb	_blockY	; , blockY
                           1852 ;----- asm -----
                           1853 ;  333 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1854 	; #ENR#[280]    blockStartLevel();
                           1855 ;  0 "" 2
                           1856 ;--- end asm ---
   3BEB BD 09 03      [ 8] 1857 	jsr	_blockStartLevel	; 
                           1858 ;----- asm -----
                           1859 ;  335 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1860 	; #ENR#[281]    blockYOfs = -30;
                           1861 ;  0 "" 2
                           1862 ;--- end asm ---
   3BEE C6 E2         [ 2] 1863 	ldb	#-30	; ,
   3BF0 F7 C8 E3      [ 5] 1864 	stb	_blockYOfs	; , blockYOfs
                           1865 ;----- asm -----
                           1866 ;  337 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1867 	; #ENR#[282]    gameState = BlockMovingToStart;
                           1868 ;  0 "" 2
                           1869 ;--- end asm ---
   3BF3 C6 04         [ 2] 1870 	ldb	#4	; ,
   3BF5 F7 C9 11      [ 5] 1871 	stb	_gameState	; , gameState
                           1872 ;----- asm -----
                           1873 ;  339 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1874 	; #ENR#[283]    changeMusic(startMusic);
                           1875 ;  0 "" 2
                           1876 ;--- end asm ---
   3BF8 8E 41 A2      [ 3] 1877 	ldx	#_startMusic	; ,
   3BFB BD 36 63      [ 8] 1878 	jsr	_changeMusic	; 
                           1879 ;----- asm -----
                           1880 ;  341 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1881 	; #ENR#[284]    *vecx = 2;
                           1882 ;  0 "" 2
                           1883 ;--- end asm ---
   3BFE C6 02         [ 2] 1884 	ldb	#2	; ,
   3C00 E7 9F C8 82   [ 9] 1885 	stb	[_vecx]	; ,* vecx
                           1886 ;----- asm -----
                           1887 ;  343 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1888 	; #ENR#[285]    if (!arcadeMode) {
                           1889 ;  0 "" 2
                           1890 ;--- end asm ---
   3C04 7D C9 0E      [ 7] 1891 	tst	_arcadeMode	;  arcadeMode
   3C07 26 09         [ 3] 1892 	bne	L75	; 
                           1893 ;----- asm -----
                           1894 ;  345 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1895 	; #ENR#[286]        moveCount = 0;
                           1896 ;  0 "" 2
                           1897 ;--- end asm ---
   3C09 CC 00 00      [ 3] 1898 	ldd	#0	; ,
   3C0C FD C9 07      [ 6] 1899 	std	_moveCount	; , moveCount
                           1900 ;----- asm -----
                           1901 ;  347 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1902 	; #ENR#[287]        updateInfoText();
                           1903 ;  0 "" 2
                           1904 ;--- end asm ---
   3C0F BD 39 1D      [ 8] 1905 	jsr	_updateInfoText	; 
   3C12                    1906 L75:
                           1907 ;----- asm -----
                           1908 ;  350 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1909 	; #ENR#[289]    si = 0;
                           1910 ;  0 "" 2
                           1911 ;--- end asm ---
   3C12 7F C8 F2      [ 7] 1912 	clr	_si	;  si
   3C15 32 64         [ 5] 1913 	leas	4,s	; ,,
   3C17 35 E0         [ 8] 1914 	puls	y,u,pc	; 
   3C19                    1915 LC1:
   3C19 41                 1916 	.byte	0x41
   3C1A 52                 1917 	.byte	0x52
   3C1B 43                 1918 	.byte	0x43
   3C1C 41                 1919 	.byte	0x41
   3C1D 44                 1920 	.byte	0x44
   3C1E 45                 1921 	.byte	0x45
   3C1F 20                 1922 	.byte	0x20
   3C20 4D                 1923 	.byte	0x4D
   3C21 4F                 1924 	.byte	0x4F
   3C22 44                 1925 	.byte	0x44
   3C23 45                 1926 	.byte	0x45
   3C24 80                 1927 	.byte	0x80
   3C25 00                 1928 	.byte	0x00
   3C26                    1929 LC2:
   3C26 31                 1930 	.byte	0x31
   3C27 20                 1931 	.byte	0x20
   3C28 53                 1932 	.byte	0x53
   3C29 45                 1933 	.byte	0x45
   3C2A 54                 1934 	.byte	0x54
   3C2B 20                 1935 	.byte	0x20
   3C2C 31                 1936 	.byte	0x31
   3C2D 80                 1937 	.byte	0x80
   3C2E 00                 1938 	.byte	0x00
   3C2F                    1939 LC3:
   3C2F 32                 1940 	.byte	0x32
   3C30 20                 1941 	.byte	0x20
   3C31 53                 1942 	.byte	0x53
   3C32 45                 1943 	.byte	0x45
   3C33 54                 1944 	.byte	0x54
   3C34 20                 1945 	.byte	0x20
   3C35 32                 1946 	.byte	0x32
   3C36 80                 1947 	.byte	0x80
   3C37 00                 1948 	.byte	0x00
   3C38                    1949 LC4:
   3C38 33                 1950 	.byte	0x33
   3C39 20                 1951 	.byte	0x20
   3C3A 53                 1952 	.byte	0x53
   3C3B 45                 1953 	.byte	0x45
   3C3C 54                 1954 	.byte	0x54
   3C3D 20                 1955 	.byte	0x20
   3C3E 33                 1956 	.byte	0x33
   3C3F 80                 1957 	.byte	0x80
   3C40 00                 1958 	.byte	0x00
   3C41                    1959 LC5:
   3C41 34                 1960 	.byte	0x34
   3C42 20                 1961 	.byte	0x20
   3C43 53                 1962 	.byte	0x53
   3C44 45                 1963 	.byte	0x45
   3C45 54                 1964 	.byte	0x54
   3C46 20                 1965 	.byte	0x20
   3C47 34                 1966 	.byte	0x34
   3C48 80                 1967 	.byte	0x80
   3C49 00                 1968 	.byte	0x00
                           1969 	.globl _arcadeMenu
   3C4A                    1970 _arcadeMenu:
   3C4A 34 40         [ 6] 1971 	pshs	u	; 
   3C4C 32 7C         [ 5] 1972 	leas	-4,s	; ,,
                           1973 ;----- asm -----
                           1974 ;  1028 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1975 	; #ENR#[811]    Read_Btns();
                           1976 ;  0 "" 2
                           1977 ;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3C4E BD F1 BA      [ 8] 1978 	jsr ___Read_Btns; BIOS call
                           1979 ;  0 "" 2
                           1980 ;  1030 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1981 	; #ENR#[812]    Intensity_a(0x5f);
                           1982 ;  0 "" 2
                           1983 ;--- end asm ---
   3C51 C6 5F         [ 2] 1984 	ldb	#95	; ,
   3C53 E7 63         [ 5] 1985 	stb	3,s	; , a
                           1986 ;----- asm -----
                           1987 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3C55 A6 63         [ 5] 1988 	lda 3,s	;  a
   3C57 BD F2 AB      [ 8] 1989 	jsr ___Intensity_a; BIOS call
                           1990 ;  0 "" 2
                           1991 ;  1032 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1992 	; #ENR#[813]    Vec_Text_Width = 90;
                           1993 ;  0 "" 2
                           1994 ;--- end asm ---
   3C5A C6 5A         [ 2] 1995 	ldb	#90	; ,
   3C5C F7 C8 2B      [ 5] 1996 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1997 ;----- asm -----
                           1998 ;  1034 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           1999 	; #ENR#[814]    Print_Str_d(100, -70, "ARCADE MODE€");
                           2000 ;  0 "" 2
                           2001 ;--- end asm ---
   3C5F CB 0A         [ 2] 2002 	addb	#10	; ,
   3C61 E7 63         [ 5] 2003 	stb	3,s	; , a
   3C63 C6 BA         [ 2] 2004 	ldb	#-70	; ,
   3C65 E7 62         [ 5] 2005 	stb	2,s	; , b
   3C67 8E 3C 19      [ 3] 2006 	ldx	#LC1	; ,
   3C6A AF E4         [ 5] 2007 	stx	,s	; , u
                           2008 ;----- asm -----
                           2009 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3C6C A6 63         [ 5] 2010 	lda 3,s	;  a
   3C6E E6 62         [ 5] 2011 	ldb 2,s	;  b
   3C70 EE E4         [ 5] 2012 	ldu ,s	;  u
   3C72 BD F3 7A      [ 8] 2013 	jsr ___Print_Str_d; BIOS call
                           2014 ;  0 "" 2
                           2015 ;  1036 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2016 	; #ENR#[815]    Print_Str_d(50, -110, "1 SET 1€");
                           2017 ;  0 "" 2
                           2018 ;--- end asm ---
   3C75 C6 32         [ 2] 2019 	ldb	#50	; ,
   3C77 E7 62         [ 5] 2020 	stb	2,s	; , a
   3C79 C6 92         [ 2] 2021 	ldb	#-110	; ,
   3C7B E7 63         [ 5] 2022 	stb	3,s	; , b
   3C7D 8E 3C 26      [ 3] 2023 	ldx	#LC2	; ,
   3C80 AF E4         [ 5] 2024 	stx	,s	; , u
                           2025 ;----- asm -----
                           2026 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3C82 A6 62         [ 5] 2027 	lda 2,s	;  a
   3C84 E6 63         [ 5] 2028 	ldb 3,s	;  b
   3C86 EE E4         [ 5] 2029 	ldu ,s	;  u
   3C88 BD F3 7A      [ 8] 2030 	jsr ___Print_Str_d; BIOS call
                           2031 ;  0 "" 2
                           2032 ;  1038 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2033 	; #ENR#[816]    Print_Str_d(20, -110, "2 SET 2€");
                           2034 ;  0 "" 2
                           2035 ;--- end asm ---
   3C8B C6 14         [ 2] 2036 	ldb	#20	; ,
   3C8D E7 63         [ 5] 2037 	stb	3,s	; , a
   3C8F C6 92         [ 2] 2038 	ldb	#-110	; ,
   3C91 E7 62         [ 5] 2039 	stb	2,s	; , b
   3C93 8E 3C 2F      [ 3] 2040 	ldx	#LC3	; ,
   3C96 AF E4         [ 5] 2041 	stx	,s	; , u
                           2042 ;----- asm -----
                           2043 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3C98 A6 63         [ 5] 2044 	lda 3,s	;  a
   3C9A E6 62         [ 5] 2045 	ldb 2,s	;  b
   3C9C EE E4         [ 5] 2046 	ldu ,s	;  u
   3C9E BD F3 7A      [ 8] 2047 	jsr ___Print_Str_d; BIOS call
                           2048 ;  0 "" 2
                           2049 ;  1040 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2050 	; #ENR#[817]    Print_Str_d(-10, -110, "3 SET 3€");
                           2051 ;  0 "" 2
                           2052 ;--- end asm ---
   3CA1 C6 F6         [ 2] 2053 	ldb	#-10	; ,
   3CA3 E7 62         [ 5] 2054 	stb	2,s	; , a
   3CA5 C6 92         [ 2] 2055 	ldb	#-110	; ,
   3CA7 E7 63         [ 5] 2056 	stb	3,s	; , b
   3CA9 8E 3C 38      [ 3] 2057 	ldx	#LC4	; ,
   3CAC AF E4         [ 5] 2058 	stx	,s	; , u
                           2059 ;----- asm -----
                           2060 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3CAE A6 62         [ 5] 2061 	lda 2,s	;  a
   3CB0 E6 63         [ 5] 2062 	ldb 3,s	;  b
   3CB2 EE E4         [ 5] 2063 	ldu ,s	;  u
   3CB4 BD F3 7A      [ 8] 2064 	jsr ___Print_Str_d; BIOS call
                           2065 ;  0 "" 2
                           2066 ;  1042 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2067 	; #ENR#[818]    Print_Str_d(-40, -110, "4 SET 4€");
                           2068 ;  0 "" 2
                           2069 ;--- end asm ---
   3CB7 C6 D8         [ 2] 2070 	ldb	#-40	; ,
   3CB9 E7 63         [ 5] 2071 	stb	3,s	; , a
   3CBB C6 92         [ 2] 2072 	ldb	#-110	; ,
   3CBD E7 62         [ 5] 2073 	stb	2,s	; , b
   3CBF 8E 3C 41      [ 3] 2074 	ldx	#LC5	; ,
   3CC2 AF E4         [ 5] 2075 	stx	,s	; , u
                           2076 ;----- asm -----
                           2077 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3CC4 A6 63         [ 5] 2078 	lda 3,s	;  a
   3CC6 E6 62         [ 5] 2079 	ldb 2,s	;  b
   3CC8 EE E4         [ 5] 2080 	ldu ,s	;  u
   3CCA BD F3 7A      [ 8] 2081 	jsr ___Print_Str_d; BIOS call
                           2082 ;  0 "" 2
                           2083 ;  1044 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2084 	; #ENR#[819]    if (Vec_Buttons & 1) {
                           2085 ;  0 "" 2
                           2086 ;--- end asm ---
   3CCD F6 C8 11      [ 5] 2087 	ldb	_Vec_Buttons	; , Vec_Buttons
   3CD0 C5 01         [ 2] 2088 	bitb	#1	; ,
   3CD2 27 06         [ 3] 2089 	beq	L78	; 
                           2090 ;----- asm -----
                           2091 ;  1046 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2092 	; #ENR#[820]        arcadeSelection = 0;
                           2093 ;  0 "" 2
                           2094 ;--- end asm ---
   3CD4 7F C9 0F      [ 7] 2095 	clr	_arcadeSelection	;  arcadeSelection
                           2096 ;----- asm -----
                           2097 ;  1048 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2098 	; #ENR#[821]        startLevel();
                           2099 ;  0 "" 2
                           2100 ;--- end asm ---
   3CD7 BD 3B 61      [ 8] 2101 	jsr	_startLevel	; 
   3CDA                    2102 L78:
                           2103 ;----- asm -----
                           2104 ;  1051 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2105 	; #ENR#[823]    if (Vec_Buttons & 2) {
                           2106 ;  0 "" 2
                           2107 ;--- end asm ---
   3CDA F6 C8 11      [ 5] 2108 	ldb	_Vec_Buttons	; , Vec_Buttons
   3CDD C5 02         [ 2] 2109 	bitb	#2	; ,
   3CDF 27 08         [ 3] 2110 	beq	L79	; 
                           2111 ;----- asm -----
                           2112 ;  1053 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2113 	; #ENR#[824]        arcadeSelection = 1;
                           2114 ;  0 "" 2
                           2115 ;--- end asm ---
   3CE1 C6 01         [ 2] 2116 	ldb	#1	; ,
   3CE3 F7 C9 0F      [ 5] 2117 	stb	_arcadeSelection	; , arcadeSelection
                           2118 ;----- asm -----
                           2119 ;  1055 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2120 	; #ENR#[825]        startLevel();
                           2121 ;  0 "" 2
                           2122 ;--- end asm ---
   3CE6 BD 3B 61      [ 8] 2123 	jsr	_startLevel	; 
   3CE9                    2124 L79:
                           2125 ;----- asm -----
                           2126 ;  1058 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2127 	; #ENR#[827]    if (Vec_Buttons & 4) {
                           2128 ;  0 "" 2
                           2129 ;--- end asm ---
   3CE9 F6 C8 11      [ 5] 2130 	ldb	_Vec_Buttons	; , Vec_Buttons
   3CEC C5 04         [ 2] 2131 	bitb	#4	; ,
   3CEE 27 08         [ 3] 2132 	beq	L80	; 
                           2133 ;----- asm -----
                           2134 ;  1060 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2135 	; #ENR#[828]        arcadeSelection = 2;
                           2136 ;  0 "" 2
                           2137 ;--- end asm ---
   3CF0 C6 02         [ 2] 2138 	ldb	#2	; ,
   3CF2 F7 C9 0F      [ 5] 2139 	stb	_arcadeSelection	; , arcadeSelection
                           2140 ;----- asm -----
                           2141 ;  1062 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2142 	; #ENR#[829]        startLevel();
                           2143 ;  0 "" 2
                           2144 ;--- end asm ---
   3CF5 BD 3B 61      [ 8] 2145 	jsr	_startLevel	; 
   3CF8                    2146 L80:
                           2147 ;----- asm -----
                           2148 ;  1065 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2149 	; #ENR#[831]    if (Vec_Buttons & 8) {
                           2150 ;  0 "" 2
                           2151 ;--- end asm ---
   3CF8 F6 C8 11      [ 5] 2152 	ldb	_Vec_Buttons	; , Vec_Buttons
   3CFB C5 08         [ 2] 2153 	bitb	#8	; ,
   3CFD 27 08         [ 3] 2154 	beq	L82	; 
                           2155 ;----- asm -----
                           2156 ;  1067 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2157 	; #ENR#[832]        arcadeSelection = 3;
                           2158 ;  0 "" 2
                           2159 ;--- end asm ---
   3CFF C6 03         [ 2] 2160 	ldb	#3	; ,
   3D01 F7 C9 0F      [ 5] 2161 	stb	_arcadeSelection	; , arcadeSelection
                           2162 ;----- asm -----
                           2163 ;  1069 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2164 	; #ENR#[833]        startLevel();
                           2165 ;  0 "" 2
                           2166 ;--- end asm ---
   3D04 BD 3B 61      [ 8] 2167 	jsr	_startLevel	; 
   3D07                    2168 L82:
   3D07 32 64         [ 5] 2169 	leas	4,s	; ,,
   3D09 35 C0         [ 7] 2170 	puls	u,pc	; 
   3D0B                    2171 LC6:
   3D0B 4D                 2172 	.byte	0x4D
   3D0C 41                 2173 	.byte	0x41
   3D0D 49                 2174 	.byte	0x49
   3D0E 4E                 2175 	.byte	0x4E
   3D0F 20                 2176 	.byte	0x20
   3D10 4D                 2177 	.byte	0x4D
   3D11 45                 2178 	.byte	0x45
   3D12 4E                 2179 	.byte	0x4E
   3D13 55                 2180 	.byte	0x55
   3D14 80                 2181 	.byte	0x80
   3D15 00                 2182 	.byte	0x00
   3D16                    2183 LC7:
   3D16 31                 2184 	.byte	0x31
   3D17 20                 2185 	.byte	0x20
   3D18 50                 2186 	.byte	0x50
   3D19 55                 2187 	.byte	0x55
   3D1A 5A                 2188 	.byte	0x5A
   3D1B 5A                 2189 	.byte	0x5A
   3D1C 4C                 2190 	.byte	0x4C
   3D1D 45                 2191 	.byte	0x45
   3D1E 20                 2192 	.byte	0x20
   3D1F 4D                 2193 	.byte	0x4D
   3D20 4F                 2194 	.byte	0x4F
   3D21 44                 2195 	.byte	0x44
   3D22 45                 2196 	.byte	0x45
   3D23 80                 2197 	.byte	0x80
   3D24 00                 2198 	.byte	0x00
   3D25                    2199 LC8:
   3D25 32                 2200 	.byte	0x32
   3D26 20                 2201 	.byte	0x20
   3D27 41                 2202 	.byte	0x41
   3D28 52                 2203 	.byte	0x52
   3D29 43                 2204 	.byte	0x43
   3D2A 41                 2205 	.byte	0x41
   3D2B 44                 2206 	.byte	0x44
   3D2C 45                 2207 	.byte	0x45
   3D2D 20                 2208 	.byte	0x20
   3D2E 4D                 2209 	.byte	0x4D
   3D2F 4F                 2210 	.byte	0x4F
   3D30 44                 2211 	.byte	0x44
   3D31 45                 2212 	.byte	0x45
   3D32 80                 2213 	.byte	0x80
   3D33 00                 2214 	.byte	0x00
   3D34                    2215 LC9:
   3D34 33                 2216 	.byte	0x33
   3D35 20                 2217 	.byte	0x20
   3D36 43                 2218 	.byte	0x43
   3D37 4C                 2219 	.byte	0x4C
   3D38 45                 2220 	.byte	0x45
   3D39 41                 2221 	.byte	0x41
   3D3A 52                 2222 	.byte	0x52
   3D3B 20                 2223 	.byte	0x20
   3D3C 48                 2224 	.byte	0x48
   3D3D 49                 2225 	.byte	0x49
   3D3E 47                 2226 	.byte	0x47
   3D3F 48                 2227 	.byte	0x48
   3D40 53                 2228 	.byte	0x53
   3D41 43                 2229 	.byte	0x43
   3D42 4F                 2230 	.byte	0x4F
   3D43 52                 2231 	.byte	0x52
   3D44 45                 2232 	.byte	0x45
   3D45 80                 2233 	.byte	0x80
   3D46 00                 2234 	.byte	0x00
                           2235 	.globl _mainMenu
   3D47                    2236 _mainMenu:
   3D47 34 40         [ 6] 2237 	pshs	u	; 
   3D49 32 7C         [ 5] 2238 	leas	-4,s	; ,,
                           2239 ;----- asm -----
                           2240 ;  983 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2241 	; #ENR#[785]    Read_Btns();
                           2242 ;  0 "" 2
                           2243 ;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3D4B BD F1 BA      [ 8] 2244 	jsr ___Read_Btns; BIOS call
                           2245 ;  0 "" 2
                           2246 ;  985 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2247 	; #ENR#[786]    Intensity_a(0x5f);
                           2248 ;  0 "" 2
                           2249 ;--- end asm ---
   3D4E C6 5F         [ 2] 2250 	ldb	#95	; ,
   3D50 E7 62         [ 5] 2251 	stb	2,s	; , a
                           2252 ;----- asm -----
                           2253 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3D52 A6 62         [ 5] 2254 	lda 2,s	;  a
   3D54 BD F2 AB      [ 8] 2255 	jsr ___Intensity_a; BIOS call
                           2256 ;  0 "" 2
                           2257 ;  987 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2258 	; #ENR#[787]    Vec_Text_Width = 90;
                           2259 ;  0 "" 2
                           2260 ;--- end asm ---
   3D57 C6 5A         [ 2] 2261 	ldb	#90	; ,
   3D59 F7 C8 2B      [ 5] 2262 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           2263 ;----- asm -----
                           2264 ;  989 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2265 	; #ENR#[788]    Print_Str_d(100, -70, "MAIN MENU€");
                           2266 ;  0 "" 2
                           2267 ;--- end asm ---
   3D5C CB 0A         [ 2] 2268 	addb	#10	; ,
   3D5E E7 62         [ 5] 2269 	stb	2,s	; , a
   3D60 C6 BA         [ 2] 2270 	ldb	#-70	; ,
   3D62 E7 63         [ 5] 2271 	stb	3,s	; , b
   3D64 8E 3D 0B      [ 3] 2272 	ldx	#LC6	; ,
   3D67 AF E4         [ 5] 2273 	stx	,s	; , u
                           2274 ;----- asm -----
                           2275 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3D69 A6 62         [ 5] 2276 	lda 2,s	;  a
   3D6B E6 63         [ 5] 2277 	ldb 3,s	;  b
   3D6D EE E4         [ 5] 2278 	ldu ,s	;  u
   3D6F BD F3 7A      [ 8] 2279 	jsr ___Print_Str_d; BIOS call
                           2280 ;  0 "" 2
                           2281 ;  991 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2282 	; #ENR#[789]    Print_Str_d(50, -110, "1 PUZZLE MODE€");
                           2283 ;  0 "" 2
                           2284 ;--- end asm ---
   3D72 C6 32         [ 2] 2285 	ldb	#50	; ,
   3D74 E7 63         [ 5] 2286 	stb	3,s	; , a
   3D76 C6 92         [ 2] 2287 	ldb	#-110	; ,
   3D78 E7 62         [ 5] 2288 	stb	2,s	; , b
   3D7A 8E 3D 16      [ 3] 2289 	ldx	#LC7	; ,
   3D7D AF E4         [ 5] 2290 	stx	,s	; , u
                           2291 ;----- asm -----
                           2292 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3D7F A6 63         [ 5] 2293 	lda 3,s	;  a
   3D81 E6 62         [ 5] 2294 	ldb 2,s	;  b
   3D83 EE E4         [ 5] 2295 	ldu ,s	;  u
   3D85 BD F3 7A      [ 8] 2296 	jsr ___Print_Str_d; BIOS call
                           2297 ;  0 "" 2
                           2298 ;  993 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2299 	; #ENR#[790]    Print_Str_d(20, -110, "2 ARCADE MODE€");
                           2300 ;  0 "" 2
                           2301 ;--- end asm ---
   3D88 C6 14         [ 2] 2302 	ldb	#20	; ,
   3D8A E7 62         [ 5] 2303 	stb	2,s	; , a
   3D8C C6 92         [ 2] 2304 	ldb	#-110	; ,
   3D8E E7 63         [ 5] 2305 	stb	3,s	; , b
   3D90 8E 3D 25      [ 3] 2306 	ldx	#LC8	; ,
   3D93 AF E4         [ 5] 2307 	stx	,s	; , u
                           2308 ;----- asm -----
                           2309 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3D95 A6 62         [ 5] 2310 	lda 2,s	;  a
   3D97 E6 63         [ 5] 2311 	ldb 3,s	;  b
   3D99 EE E4         [ 5] 2312 	ldu ,s	;  u
   3D9B BD F3 7A      [ 8] 2313 	jsr ___Print_Str_d; BIOS call
                           2314 ;  0 "" 2
                           2315 ;  995 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2316 	; #ENR#[791]    Print_Str_d(-10, -110, "3 CLEAR HIGHSCORE€");
                           2317 ;  0 "" 2
                           2318 ;--- end asm ---
   3D9E C6 F6         [ 2] 2319 	ldb	#-10	; ,
   3DA0 E7 63         [ 5] 2320 	stb	3,s	; , a
   3DA2 C6 92         [ 2] 2321 	ldb	#-110	; ,
   3DA4 E7 62         [ 5] 2322 	stb	2,s	; , b
   3DA6 8E 3D 34      [ 3] 2323 	ldx	#LC9	; ,
   3DA9 AF E4         [ 5] 2324 	stx	,s	; , u
                           2325 ;----- asm -----
                           2326 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3DAB A6 63         [ 5] 2327 	lda 3,s	;  a
   3DAD E6 62         [ 5] 2328 	ldb 2,s	;  b
   3DAF EE E4         [ 5] 2329 	ldu ,s	;  u
   3DB1 BD F3 7A      [ 8] 2330 	jsr ___Print_Str_d; BIOS call
                           2331 ;  0 "" 2
                           2332 ;  997 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2333 	; #ENR#[792]    if (Vec_Buttons & 1) {
                           2334 ;  0 "" 2
                           2335 ;--- end asm ---
   3DB4 F6 C8 11      [ 5] 2336 	ldb	_Vec_Buttons	; , Vec_Buttons
   3DB7 C5 01         [ 2] 2337 	bitb	#1	; ,
   3DB9 27 09         [ 3] 2338 	beq	L84	; 
                           2339 ;----- asm -----
                           2340 ;  999 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2341 	; #ENR#[793]        arcadeMode = 0;
                           2342 ;  0 "" 2
                           2343 ;--- end asm ---
   3DBB 7F C9 0E      [ 7] 2344 	clr	_arcadeMode	;  arcadeMode
                           2345 ;----- asm -----
                           2346 ;  1001 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2347 	; #ENR#[794]        levelNumber = 0;
                           2348 ;  0 "" 2
                           2349 ;--- end asm ---
   3DBE 7F C8 87      [ 7] 2350 	clr	_levelNumber	;  levelNumber
                           2351 ;----- asm -----
                           2352 ;  1003 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2353 	; #ENR#[795]        startLevel();
                           2354 ;  0 "" 2
                           2355 ;--- end asm ---
   3DC1 BD 3B 61      [ 8] 2356 	jsr	_startLevel	; 
   3DC4                    2357 L84:
                           2358 ;----- asm -----
                           2359 ;  1006 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2360 	; #ENR#[797]    if (Vec_Buttons & 2) {
                           2361 ;  0 "" 2
                           2362 ;--- end asm ---
   3DC4 F6 C8 11      [ 5] 2363 	ldb	_Vec_Buttons	; , Vec_Buttons
   3DC7 C5 02         [ 2] 2364 	bitb	#2	; ,
   3DC9 27 14         [ 3] 2365 	beq	L85	; 
                           2366 ;----- asm -----
                           2367 ;  1008 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2368 	; #ENR#[798]        frames = 0;
                           2369 ;  0 "" 2
                           2370 ;--- end asm ---
   3DCB CC 00 00      [ 3] 2371 	ldd	#0	; ,
   3DCE FD C9 09      [ 6] 2372 	std	_frames	; , frames
                           2373 ;----- asm -----
                           2374 ;  1010 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2375 	; #ENR#[799]        moveCount = 0;
                           2376 ;  0 "" 2
                           2377 ;--- end asm ---
   3DD1 FD C9 07      [ 6] 2378 	std	_moveCount	; , moveCount
                           2379 ;----- asm -----
                           2380 ;  1012 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2381 	; #ENR#[800]        arcadeMode = 1;
                           2382 ;  0 "" 2
                           2383 ;--- end asm ---
   3DD4 C6 01         [ 2] 2384 	ldb	#1	; ,
   3DD6 F7 C9 0E      [ 5] 2385 	stb	_arcadeMode	; , arcadeMode
                           2386 ;----- asm -----
                           2387 ;  1014 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2388 	; #ENR#[801]        arcadeIndex = 0;
                           2389 ;  0 "" 2
                           2390 ;--- end asm ---
   3DD9 7F C9 10      [ 7] 2391 	clr	_arcadeIndex	;  arcadeIndex
                           2392 ;----- asm -----
                           2393 ;  1016 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2394 	; #ENR#[802]        gameState = ArcadeMenu;
                           2395 ;  0 "" 2
                           2396 ;--- end asm ---
   3DDC F7 C9 11      [ 5] 2397 	stb	_gameState	; , gameState
   3DDF                    2398 L85:
                           2399 ;----- asm -----
                           2400 ;  1019 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2401 	; #ENR#[804]    if (Vec_Buttons & 4) {
                           2402 ;  0 "" 2
                           2403 ;--- end asm ---
   3DDF F6 C8 11      [ 5] 2404 	ldb	_Vec_Buttons	; , Vec_Buttons
   3DE2 C5 04         [ 2] 2405 	bitb	#4	; ,
   3DE4 27 05         [ 3] 2406 	beq	L87	; 
                           2407 ;----- asm -----
                           2408 ;  1021 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2409 	; #ENR#[805]        gameState = ClearMenu;
                           2410 ;  0 "" 2
                           2411 ;--- end asm ---
   3DE6 C6 03         [ 2] 2412 	ldb	#3	; ,
   3DE8 F7 C9 11      [ 5] 2413 	stb	_gameState	; , gameState
   3DEB                    2414 L87:
   3DEB 32 64         [ 5] 2415 	leas	4,s	; ,,
   3DED 35 C0         [ 7] 2416 	puls	u,pc	; 
                           2417 	.globl _blockFalling
   3DEF                    2418 _blockFalling:
   3DEF 32 7F         [ 5] 2419 	leas	-1,s	; ,,
                           2420 ;----- asm -----
                           2421 ;  919 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2422 	; #ENR#[745]    drawField();
                           2423 ;  0 "" 2
                           2424 ;--- end asm ---
   3DF1 BD 36 6C      [ 8] 2425 	jsr	_drawField	; 
                           2426 ;----- asm -----
                           2427 ;  921 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2428 	; #ENR#[746]    blockYOfs++;
                           2429 ;  0 "" 2
                           2430 ;--- end asm ---
   3DF4 F6 C8 E3      [ 5] 2431 	ldb	_blockYOfs	; , blockYOfs
   3DF7 5C            [ 2] 2432 	incb	; 
   3DF8 E7 E4         [ 4] 2433 	stb	,s	; , blockYOfs.66
   3DFA F7 C8 E3      [ 5] 2434 	stb	_blockYOfs	; , blockYOfs
                           2435 ;----- asm -----
                           2436 ;  923 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2437 	; #ENR#[747]    if (blockYOfs < 12) {
                           2438 ;  0 "" 2
                           2439 ;--- end asm ---
   3DFD C1 0B         [ 2] 2440 	cmpb	#11	;cmpqi:	; ,
   3DFF 2E 0A         [ 3] 2441 	bgt	L89	; 
                           2442 ;----- asm -----
                           2443 ;  925 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2444 	; #ENR#[748]        drawBlock(-blockYOfs*blockYOfs);
                           2445 ;  0 "" 2
                           2446 ;--- end asm ---
   3E01 50            [ 2] 2447 	negb	;  tmp28
   3E02 A6 E4         [ 4] 2448 	lda	,s	;mulqihi3	;  blockYOfs.66
   3E04 3D            [11] 2449 	mul
                           2450 		;movlsbqihi: D->B
   3E05 BD 09 DC      [ 8] 2451 	jsr	_drawBlock	; 
                           2452 ;----- asm -----
                           2453 ;  927 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2454 	; #ENR#[749]        doBlockAnimation();
                           2455 ;  0 "" 2
                           2456 ;--- end asm ---
   3E08 BD 08 DA      [ 8] 2457 	jsr	_doBlockAnimation	; 
   3E0B                    2458 L89:
                           2459 ;----- asm -----
                           2460 ;  930 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2461 	; #ENR#[751]    if (blockYOfs == 50) {
                           2462 ;  0 "" 2
                           2463 ;--- end asm ---
   3E0B F6 C8 E3      [ 5] 2464 	ldb	_blockYOfs	; , blockYOfs
   3E0E C1 32         [ 2] 2465 	cmpb	#50	;cmpqi:	; ,
   3E10 26 03         [ 3] 2466 	bne	L91	; 
                           2467 ;----- asm -----
                           2468 ;  932 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2469 	; #ENR#[752]        startLevel();
                           2470 ;  0 "" 2
                           2471 ;--- end asm ---
   3E12 BD 3B 61      [ 8] 2472 	jsr	_startLevel	; 
   3E15                    2473 L91:
   3E15 32 61         [ 5] 2474 	leas	1,s	; ,,
   3E17 39            [ 5] 2475 	rts
                           2476 	.globl _writeEeprom
   3E18                    2477 _writeEeprom:
                           2478 ;----- asm -----
                           2479 ;  219 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2480 	; #ENR#[204]    if (picAvailable) {
                           2481 ;  0 "" 2
                           2482 ;--- end asm ---
   3E18 7D C9 0D      [ 7] 2483 	tst	_picAvailable	;  picAvailable
   3E1B 27 12         [ 3] 2484 	beq	L94	; 
                           2485 ;----- asm -----
                           2486 ;  221 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2487 	; #ENR#[205]        sendCommand(CMD_SET_EEPROM_ADR, address);
                           2488 ;  0 "" 2
                           2489 ;--- end asm ---
   3E1D 34 04         [ 6] 2490 	pshs	b	;  address
   3E1F C6 02         [ 2] 2491 	ldb	#2	; ,
   3E21 BD 3B 2E      [ 8] 2492 	jsr	_sendCommand	; 
                           2493 ;----- asm -----
                           2494 ;  223 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2495 	; #ENR#[206]        sendCommand(CMD_EEPROM_WRITE, data);
                           2496 ;  0 "" 2
                           2497 ;--- end asm ---
   3E24 E6 63         [ 5] 2498 	ldb	3,s	; , data
   3E26 E7 E2         [ 6] 2499 	stb	,-s	; ,
   3E28 C6 03         [ 2] 2500 	ldb	#3	; ,
   3E2A BD 3B 2E      [ 8] 2501 	jsr	_sendCommand	; 
   3E2D 32 62         [ 5] 2502 	leas	2,s	; ,,
   3E2F                    2503 L94:
   3E2F 39            [ 5] 2504 	rts
   3E30                    2505 LC10:
   3E30 43                 2506 	.byte	0x43
   3E31 4C                 2507 	.byte	0x4C
   3E32 45                 2508 	.byte	0x45
   3E33 41                 2509 	.byte	0x41
   3E34 52                 2510 	.byte	0x52
   3E35 20                 2511 	.byte	0x20
   3E36 53                 2512 	.byte	0x53
   3E37 43                 2513 	.byte	0x43
   3E38 4F                 2514 	.byte	0x4F
   3E39 52                 2515 	.byte	0x52
   3E3A 45                 2516 	.byte	0x45
   3E3B 3F                 2517 	.byte	0x3F
   3E3C 80                 2518 	.byte	0x80
   3E3D 00                 2519 	.byte	0x00
   3E3E                    2520 LC11:
   3E3E 33                 2521 	.byte	0x33
   3E3F 20                 2522 	.byte	0x20
   3E40 59                 2523 	.byte	0x59
   3E41 45                 2524 	.byte	0x45
   3E42 53                 2525 	.byte	0x53
   3E43 80                 2526 	.byte	0x80
   3E44 00                 2527 	.byte	0x00
   3E45                    2528 LC12:
   3E45 34                 2529 	.byte	0x34
   3E46 20                 2530 	.byte	0x20
   3E47 4E                 2531 	.byte	0x4E
   3E48 4F                 2532 	.byte	0x4F
   3E49 80                 2533 	.byte	0x80
   3E4A 00                 2534 	.byte	0x00
                           2535 	.globl _clearMenu
   3E4B                    2536 _clearMenu:
   3E4B 34 40         [ 6] 2537 	pshs	u	; 
   3E4D 32 7B         [ 5] 2538 	leas	-5,s	; ,,
                           2539 ;----- asm -----
                           2540 ;  1110 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2541 	; #ENR#[860]    Read_Btns();
                           2542 ;  0 "" 2
                           2543 ;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3E4F BD F1 BA      [ 8] 2544 	jsr ___Read_Btns; BIOS call
                           2545 ;  0 "" 2
                           2546 ;  1112 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2547 	; #ENR#[861]    Intensity_a(0x5f);
                           2548 ;  0 "" 2
                           2549 ;--- end asm ---
   3E52 C6 5F         [ 2] 2550 	ldb	#95	; ,
   3E54 E7 64         [ 5] 2551 	stb	4,s	; , a
                           2552 ;----- asm -----
                           2553 ;  3427 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3E56 A6 64         [ 5] 2554 	lda 4,s	;  a
   3E58 BD F2 AB      [ 8] 2555 	jsr ___Intensity_a; BIOS call
                           2556 ;  0 "" 2
                           2557 ;  1114 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2558 	; #ENR#[862]    Vec_Text_Width = 90;
                           2559 ;  0 "" 2
                           2560 ;--- end asm ---
   3E5B C6 5A         [ 2] 2561 	ldb	#90	; ,
   3E5D F7 C8 2B      [ 5] 2562 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           2563 ;----- asm -----
                           2564 ;  1116 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2565 	; #ENR#[863]    Print_Str_d(100, -80, "CLEAR SCORE?€");
                           2566 ;  0 "" 2
                           2567 ;--- end asm ---
   3E60 CB 0A         [ 2] 2568 	addb	#10	; ,
   3E62 E7 64         [ 5] 2569 	stb	4,s	; , a
   3E64 C6 B0         [ 2] 2570 	ldb	#-80	; ,
   3E66 E7 63         [ 5] 2571 	stb	3,s	; , b
   3E68 8E 3E 30      [ 3] 2572 	ldx	#LC10	; ,
   3E6B AF 61         [ 6] 2573 	stx	1,s	; , u
                           2574 ;----- asm -----
                           2575 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3E6D A6 64         [ 5] 2576 	lda 4,s	;  a
   3E6F E6 63         [ 5] 2577 	ldb 3,s	;  b
   3E71 EE 61         [ 6] 2578 	ldu 1,s	;  u
   3E73 BD F3 7A      [ 8] 2579 	jsr ___Print_Str_d; BIOS call
                           2580 ;  0 "" 2
                           2581 ;  1118 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2582 	; #ENR#[864]    Print_Str_d(50, -110, "3 YES€");
                           2583 ;  0 "" 2
                           2584 ;--- end asm ---
   3E76 C6 32         [ 2] 2585 	ldb	#50	; ,
   3E78 E7 63         [ 5] 2586 	stb	3,s	; , a
   3E7A C6 92         [ 2] 2587 	ldb	#-110	; ,
   3E7C E7 64         [ 5] 2588 	stb	4,s	; , b
   3E7E 8E 3E 3E      [ 3] 2589 	ldx	#LC11	; ,
   3E81 AF 61         [ 6] 2590 	stx	1,s	; , u
                           2591 ;----- asm -----
                           2592 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3E83 A6 63         [ 5] 2593 	lda 3,s	;  a
   3E85 E6 64         [ 5] 2594 	ldb 4,s	;  b
   3E87 EE 61         [ 6] 2595 	ldu 1,s	;  u
   3E89 BD F3 7A      [ 8] 2596 	jsr ___Print_Str_d; BIOS call
                           2597 ;  0 "" 2
                           2598 ;  1120 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2599 	; #ENR#[865]    Print_Str_d(20, -110, "4 NO€");
                           2600 ;  0 "" 2
                           2601 ;--- end asm ---
   3E8C C6 14         [ 2] 2602 	ldb	#20	; ,
   3E8E E7 64         [ 5] 2603 	stb	4,s	; , a
   3E90 C6 92         [ 2] 2604 	ldb	#-110	; ,
   3E92 E7 63         [ 5] 2605 	stb	3,s	; , b
   3E94 8E 3E 45      [ 3] 2606 	ldx	#LC12	; ,
   3E97 AF 61         [ 6] 2607 	stx	1,s	; , u
                           2608 ;----- asm -----
                           2609 ;  666 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3E99 A6 64         [ 5] 2610 	lda 4,s	;  a
   3E9B E6 63         [ 5] 2611 	ldb 3,s	;  b
   3E9D EE 61         [ 6] 2612 	ldu 1,s	;  u
   3E9F BD F3 7A      [ 8] 2613 	jsr ___Print_Str_d; BIOS call
                           2614 ;  0 "" 2
                           2615 ;  1122 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2616 	; #ENR#[866]    if (Vec_Buttons & 4) {
                           2617 ;  0 "" 2
                           2618 ;--- end asm ---
   3EA2 F6 C8 11      [ 5] 2619 	ldb	_Vec_Buttons	; , Vec_Buttons
   3EA5 C5 04         [ 2] 2620 	bitb	#4	; ,
   3EA7 27 18         [ 3] 2621 	beq	L96	; 
                           2622 ;----- asm -----
                           2623 ;  1124 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2624 	; #ENR#[867]        for (uint8_t i = 0; i < 6; i++) {
                           2625 ;  0 "" 2
                           2626 ;--- end asm ---
   3EA9 6F E4         [ 6] 2627 	clr	,s	;  i
   3EAB                    2628 L97:
                           2629 ;----- asm -----
                           2630 ;  1126 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2631 	; #ENR#[868]            writeEeprom(i, 0xff);
                           2632 ;  0 "" 2
                           2633 ;--- end asm ---
   3EAB C6 FF         [ 2] 2634 	ldb	#-1	; ,
   3EAD E7 E2         [ 6] 2635 	stb	,-s	; ,
   3EAF E6 61         [ 5] 2636 	ldb	1,s	; , i
   3EB1 BD 3E 18      [ 8] 2637 	jsr	_writeEeprom	; 
   3EB4 6C 61         [ 7] 2638 	inc	1,s	;  i
   3EB6 32 61         [ 5] 2639 	leas	1,s	; ,,
   3EB8 E6 E4         [ 4] 2640 	ldb	,s	; , i
   3EBA C1 06         [ 2] 2641 	cmpb	#6	;cmpqi:	; ,
   3EBC 26 ED         [ 3] 2642 	bne	L97	; 
                           2643 ;----- asm -----
                           2644 ;  1129 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2645 	; #ENR#[870]        gameState = MainMenu;
                           2646 ;  0 "" 2
                           2647 ;--- end asm ---
   3EBE 7F C9 11      [ 7] 2648 	clr	_gameState	;  gameState
   3EC1                    2649 L96:
                           2650 ;----- asm -----
                           2651 ;  1132 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2652 	; #ENR#[872]    if (Vec_Buttons & 8) {
                           2653 ;  0 "" 2
                           2654 ;--- end asm ---
   3EC1 F6 C8 11      [ 5] 2655 	ldb	_Vec_Buttons	; , Vec_Buttons
   3EC4 C5 08         [ 2] 2656 	bitb	#8	; ,
   3EC6 27 03         [ 3] 2657 	beq	L99	; 
                           2658 ;----- asm -----
                           2659 ;  1134 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2660 	; #ENR#[873]        gameState = MainMenu;
                           2661 ;  0 "" 2
                           2662 ;--- end asm ---
   3EC8 7F C9 11      [ 7] 2663 	clr	_gameState	;  gameState
   3ECB                    2664 L99:
   3ECB 32 65         [ 5] 2665 	leas	5,s	; ,,
   3ECD 35 C0         [ 7] 2666 	puls	u,pc	; 
                           2667 	.globl _setBank
   3ECF                    2668 _setBank:
   3ECF 32 7F         [ 5] 2669 	leas	-1,s	; ,,
   3ED1 E7 E4         [ 4] 2670 	stb	,s	;  bank, bank
                           2671 ;----- asm -----
                           2672 ;  196 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2673 	; #ENR#[188]    *vecx = 16 + bank;
                           2674 ;  0 "" 2
                           2675 ;--- end asm ---
   3ED3 CB 10         [ 2] 2676 	addb	#16	;  bank,
   3ED5 E7 9F C8 82   [ 9] 2677 	stb	[_vecx]	;  bank,* vecx
                           2678 ;----- asm -----
                           2679 ;  198 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2680 	; #ENR#[189]    sendCommand(CMD_SET_BANK, bank);
                           2681 ;  0 "" 2
                           2682 ;--- end asm ---
   3ED9 E6 E4         [ 4] 2683 	ldb	,s	; , bank
   3EDB 34 04         [ 6] 2684 	pshs	b	; 
   3EDD C6 05         [ 2] 2685 	ldb	#5	; ,
   3EDF BD 3B 2E      [ 8] 2686 	jsr	_sendCommand	; 
   3EE2 32 62         [ 5] 2687 	leas	2,s	; ,,
   3EE4 39            [ 5] 2688 	rts
                           2689 	.globl _nextLevel
   3EE5                    2690 _nextLevel:
                           2691 ;----- asm -----
                           2692 ;  639 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2693 	; #ENR#[572]    levelNumber++;
                           2694 ;  0 "" 2
                           2695 ;--- end asm ---
   3EE5 F6 C8 87      [ 5] 2696 	ldb	_levelNumber	;  levelNumber.33, levelNumber
   3EE8 5C            [ 2] 2697 	incb	;  levelNumber.34
                           2698 ; Applied peep: 2 (no load after store)
                           2699 ;----- asm -----
                           2700 ;  641 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2701 	; #ENR#[573]    if (levelNumber >= levelCount) {
                           2702 ;  0 "" 2
                           2703 ;--- end asm ---
   3EE9 F7 C8 87      [ 5] 2704 	stb	_levelNumber	;  levelNumber.34, levelNumber
                           2705 ; ORG>	stb	_levelNumber	;  levelNumber.34, levelNumber
                           2706 ; ORG>;----- asm -----
                           2707 ; ORG>;  641 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2708 ; ORG>	; $ENR$[573]    if (levelNumber >= levelCount) {
                           2709 ; ORG>;  0 "" 2
                           2710 ; ORG>;--- end asm ---
                           2711 ; ORG>	ldb	_levelNumber	;  levelNumber.35, levelNumber
   3EEC F1 4E D7      [ 5] 2712 	cmpb	_levelCount	;cmpqi:	;  levelNumber.35, levelCount
   3EEF 25 09         [ 3] 2713 	blo	L104	; 
                           2714 ;----- asm -----
                           2715 ;  643 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2716 	; #ENR#[574]        levelNumber = 0;
                           2717 ;  0 "" 2
                           2718 ;--- end asm ---
   3EF1 7F C8 87      [ 7] 2719 	clr	_levelNumber	;  levelNumber
                           2720 ;----- asm -----
                           2721 ;  645 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2722 	; #ENR#[575]        setBank(nextBank);
                           2723 ;  0 "" 2
                           2724 ;--- end asm ---
   3EF4 F6 4E D9      [ 5] 2725 	ldb	_nextBank	; , nextBank
   3EF7 BD 3E CF      [ 8] 2726 	jsr	_setBank	; 
   3EFA                    2727 L104:
                           2728 ;----- asm -----
                           2729 ;  648 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2730 	; #ENR#[577]    startLevel();
                           2731 ;  0 "" 2
                           2732 ;--- end asm ---
   3EFA BD 3B 61      [ 8] 2733 	jsr	_startLevel	; 
   3EFD 39            [ 5] 2734 	rts
                           2735 	.globl _blockMovingAtEnd
   3EFE                    2736 _blockMovingAtEnd:
   3EFE 34 60         [ 7] 2737 	pshs	y,u	; 
   3F00 32 7B         [ 5] 2738 	leas	-5,s	; ,,
                           2739 ;----- asm -----
                           2740 ;  939 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2741 	; #ENR#[758]    drawField();
                           2742 ;  0 "" 2
                           2743 ;--- end asm ---
   3F02 BD 36 6C      [ 8] 2744 	jsr	_drawField	; 
                           2745 ;----- asm -----
                           2746 ;  941 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2747 	; #ENR#[759]    drawBlock(blockYOfs);
                           2748 ;  0 "" 2
                           2749 ;--- end asm ---
   3F05 F6 C8 E3      [ 5] 2750 	ldb	_blockYOfs	; , blockYOfs
   3F08 BD 09 DC      [ 8] 2751 	jsr	_drawBlock	; 
                           2752 ;----- asm -----
                           2753 ;  943 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2754 	; #ENR#[760]    blockYOfs++;
                           2755 ;  0 "" 2
                           2756 ;--- end asm ---
   3F0B F6 C8 E3      [ 5] 2757 	ldb	_blockYOfs	;  blockYOfs.68, blockYOfs
   3F0E 5C            [ 2] 2758 	incb	;  blockYOfs.68
   3F0F F7 C8 E3      [ 5] 2759 	stb	_blockYOfs	;  blockYOfs.68, blockYOfs
                           2760 ;----- asm -----
                           2761 ;  945 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2762 	; #ENR#[761]    if (blockYOfs == 30) {
                           2763 ;  0 "" 2
                           2764 ;--- end asm ---
   3F12 C1 1E         [ 2] 2765 	cmpb	#30	;cmpqi:	;  blockYOfs.68,
   3F14 10 26 00 C0   [ 6] 2766 	lbne	L111	; 
                           2767 ;----- asm -----
                           2768 ;  947 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2769 	; #ENR#[762]        if (moveCount < levelHighscore) {
                           2770 ;  0 "" 2
                           2771 ;--- end asm ---
   3F18 BE C9 07      [ 6] 2772 	ldx	_moveCount	;  moveCount.69, moveCount
   3F1B BC C9 0B      [ 7] 2773 	cmpx	_levelHighscore	;cmphi:	;  moveCount.69, levelHighscore
   3F1E 24 33         [ 3] 2774 	bhs	L108	; 
                           2775 ;----- asm -----
                           2776 ;  949 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2777 	; #ENR#[763]            writeEeprom((uint8_t) (levelOffset + 2 * levelNumber), (uint8_t) (moveCount & 0xff));
                           2778 ;  0 "" 2
                           2779 ;--- end asm ---
   3F20 F6 C8 87      [ 5] 2780 	ldb	_levelNumber	; , levelNumber
   3F23 58            [ 2] 2781 	aslb	;  tmp35
   3F24 FB 4E D8      [ 5] 2782 	addb	_levelOffset	;  tmp35, levelOffset
   3F27 E7 E4         [ 4] 2783 	stb	,s	;  tmp35,
   3F29 1F 10         [ 6] 2784 	tfr	x,d	;  moveCount.69,
   3F2B 34 04         [ 6] 2785 	pshs	b	; 
   3F2D E6 61         [ 5] 2786 	ldb	1,s	; ,
   3F2F BD 3E 18      [ 8] 2787 	jsr	_writeEeprom	; 
                           2788 ;----- asm -----
                           2789 ;  951 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2790 	; #ENR#[764]            writeEeprom((uint8_t) (levelOffset + 2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
                           2791 ;  0 "" 2
                           2792 ;--- end asm ---
   3F32 F6 C8 87      [ 5] 2793 	ldb	_levelNumber	; , levelNumber
   3F35 E7 61         [ 5] 2794 	stb	1,s	; , levelNumber.73
   3F37 F6 4E D8      [ 5] 2795 	ldb	_levelOffset	; , levelOffset
   3F3A 5C            [ 2] 2796 	incb	; 
   3F3B E7 65         [ 5] 2797 	stb	5,s	; ,
   3F3D E6 61         [ 5] 2798 	ldb	1,s	;  tmp38, levelNumber.73
   3F3F 58            [ 2] 2799 	aslb	;  tmp38
   3F40 EB 65         [ 5] 2800 	addb	5,s	;  tmp38,
   3F42 E7 64         [ 5] 2801 	stb	4,s	;  tmp38,
   3F44 FC C9 07      [ 6] 2802 	ldd	_moveCount	;  tmp40, moveCount
   3F47 1F 89         [ 6] 2803 	tfr	a,b	; ,
   3F49 4F            [ 2] 2804 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3F4A 34 04         [ 6] 2805 	pshs	b	;  tmp40
   3F4C E6 65         [ 5] 2806 	ldb	5,s	; ,
   3F4E BD 3E 18      [ 8] 2807 	jsr	_writeEeprom	; 
   3F51 32 62         [ 5] 2808 	leas	2,s	; ,,
   3F53                    2809 L108:
                           2810 ;----- asm -----
                           2811 ;  954 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2812 	; #ENR#[766]        if (arcadeMode) {
                           2813 ;  0 "" 2
                           2814 ;--- end asm ---
   3F53 7D C9 0E      [ 7] 2815 	tst	_arcadeMode	;  arcadeMode
   3F56 10 27 00 7B   [ 6] 2816 	lbeq	L109	; 
                           2817 ;----- asm -----
                           2818 ;  956 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2819 	; #ENR#[767]            arcadeIndex++;
                           2820 ;  0 "" 2
                           2821 ;--- end asm ---
   3F5A F6 C9 10      [ 5] 2822 	ldb	_arcadeIndex	;  arcadeIndex.76, arcadeIndex
   3F5D 5C            [ 2] 2823 	incb	;  arcadeIndex.76
   3F5E F7 C9 10      [ 5] 2824 	stb	_arcadeIndex	;  arcadeIndex.76, arcadeIndex
                           2825 ;----- asm -----
                           2826 ;  958 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2827 	; #ENR#[768]            levelNumber = arcadeLevels[arcadeSelection][arcadeIndex];
                           2828 ;  0 "" 2
                           2829 ;--- end asm ---
   3F61 4F            [ 2] 2830 	clra		;zero_extendqihi: R:b -> R:d	;  arcadeIndex.76,
   3F62 1F 02         [ 6] 2831 	tfr	d,y	; , arcadeIndex.76
   3F64 F6 C9 0F      [ 5] 2832 	ldb	_arcadeSelection	; , arcadeSelection
   3F67 4F            [ 2] 2833 	clra		;zero_extendqihi: R:b -> R:d	; ,
   3F68 ED 61         [ 6] 2834 	std	1,s	; ,
   3F6A 58            [ 2] 2835 	aslb	; 
   3F6B 49            [ 2] 2836 	rola	; 
   3F6C 58            [ 2] 2837 	aslb	; 
   3F6D 49            [ 2] 2838 	rola	; 
   3F6E EE 61         [ 6] 2839 	ldu	1,s	; ,
   3F70 30 CB         [ 8] 2840 	leax	d,u	;  tmp46, tmp45,
   3F72 1E 02         [ 8] 2841 	exg	d,y	; , arcadeIndex.76
   3F74 30 8B         [ 8] 2842 	leax	d,x	;  tmp47,, tmp47
   3F76 1E 02         [ 8] 2843 	exg	d,y	; , arcadeIndex.76
   3F78 E6 89 42 1A   [ 8] 2844 	ldb	_arcadeLevels,x	;  levelNumber.78, arcadeLevels
                           2845 ; Applied peep: 2 (no load after store)
                           2846 ;----- asm -----
                           2847 ;  960 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2848 	; #ENR#[769]            if (levelNumber == 0) {
                           2849 ;  0 "" 2
                           2850 ;--- end asm ---
   3F7C F7 C8 87      [ 5] 2851 	stb	_levelNumber	;  levelNumber.78, levelNumber
                           2852 ; ORG>	stb	_levelNumber	;  levelNumber.78, levelNumber
                           2853 ; ORG>;----- asm -----
                           2854 ; ORG>;  960 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2855 ; ORG>	; $ENR$[769]            if (levelNumber == 0) {
                           2856 ; ORG>;  0 "" 2
                           2857 ; ORG>;--- end asm ---
                           2858 ; ORG>	ldb	_levelNumber	;  levelNumber.79, levelNumber
   3F7F 10 26 00 4D   [ 6] 2859 	lbne	L110	; 
                           2860 ;----- asm -----
                           2861 ;  962 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2862 	; #ENR#[770]                gameState = ArcadeEnd;
                           2863 ;  0 "" 2
                           2864 ;--- end asm ---
   3F83 C6 02         [ 2] 2865 	ldb	#2	; ,
   3F85 F7 C9 11      [ 5] 2866 	stb	_gameState	; , gameState
                           2867 ;----- asm -----
                           2868 ;  964 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2869 	; #ENR#[771]                memcpy(infoText, "TIME: 000 SECONDS€", 18);
                           2870 ;  0 "" 2
                           2871 ;--- end asm ---
   3F88 8E 54 49      [ 3] 2872 	ldx	#21577	; ,
   3F8B BF C8 F3      [ 6] 2873 	stx	_infoText	; , infoText
   3F8E CE 4D 45      [ 3] 2874 	ldu	#19781	; ,
   3F91 FF C8 F5      [ 6] 2875 	stu	_infoText+2	; , infoText
   3F94 8E 3A 20      [ 3] 2876 	ldx	#14880	; ,
   3F97 BF C8 F7      [ 6] 2877 	stx	_infoText+4	; , infoText
   3F9A CE 30 30      [ 3] 2878 	ldu	#12336	; ,
   3F9D FF C8 F9      [ 6] 2879 	stu	_infoText+6	; , infoText
   3FA0 8E 30 20      [ 3] 2880 	ldx	#12320	; ,
   3FA3 BF C8 FB      [ 6] 2881 	stx	_infoText+8	; , infoText
   3FA6 CE 53 45      [ 3] 2882 	ldu	#21317	; ,
   3FA9 FF C8 FD      [ 6] 2883 	stu	_infoText+10	; , infoText
   3FAC 8E 43 4F      [ 3] 2884 	ldx	#17231	; ,
   3FAF BF C8 FF      [ 6] 2885 	stx	_infoText+12	; , infoText
   3FB2 CE 4E 44      [ 3] 2886 	ldu	#20036	; ,
   3FB5 FF C9 01      [ 6] 2887 	stu	_infoText+14	; , infoText
   3FB8 8E 53 80      [ 3] 2888 	ldx	#21376	; ,
   3FBB BF C9 03      [ 6] 2889 	stx	_infoText+16	; , infoText
                           2890 ;----- asm -----
                           2891 ;  966 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2892 	; #ENR#[772]                itoa(moveCount, &infoText[6]);
                           2893 ;  0 "" 2
                           2894 ;--- end asm ---
   3FBE CE C8 F9      [ 3] 2895 	ldu	#_infoText+6	; ,
   3FC1 EF E3         [ 8] 2896 	stu	,--s	; ,
   3FC3 BE C9 07      [ 6] 2897 	ldx	_moveCount	; , moveCount
   3FC6 BD 35 E4      [ 8] 2898 	jsr	_itoa	; 
                           2899 ;----- asm -----
                           2900 ;  968 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2901 	; #ENR#[773]                arcadeMode = 0;
                           2902 ;  0 "" 2
                           2903 ;--- end asm ---
   3FC9 7F C9 0E      [ 7] 2904 	clr	_arcadeMode	;  arcadeMode
   3FCC 32 62         [ 5] 2905 	leas	2,s	; ,,
   3FCE 20 08         [ 3] 2906 	bra	L111	; 
   3FD0                    2907 L110:
                           2908 ;----- asm -----
                           2909 ;  971 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2910 	; #ENR#[775]                startLevel();
                           2911 ;  0 "" 2
                           2912 ;--- end asm ---
   3FD0 BD 3B 61      [ 8] 2913 	jsr	_startLevel	; 
   3FD3 20 03         [ 3] 2914 	bra	L111	; 
   3FD5                    2915 L109:
                           2916 ;----- asm -----
                           2917 ;  975 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2918 	; #ENR#[778]		   nextLevel();
                           2919 ;  0 "" 2
                           2920 ;--- end asm ---
   3FD5 BD 3E E5      [ 8] 2921 	jsr	_nextLevel	; 
   3FD8                    2922 L111:
   3FD8 32 65         [ 5] 2923 	leas	5,s	; ,,
   3FDA 35 E0         [ 8] 2924 	puls	y,u,pc	; 
                           2925 	.globl _blockWaiting
   3FDC                    2926 _blockWaiting:
                           2927 ;----- asm -----
                           2928 ;  654 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2929 	; #ENR#[582]    drawField();
                           2930 ;  0 "" 2
                           2931 ;--- end asm ---
   3FDC BD 36 6C      [ 8] 2932 	jsr	_drawField	; 
                           2933 ;----- asm -----
                           2934 ;  656 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2935 	; #ENR#[583]    drawBlock(0);
                           2936 ;  0 "" 2
                           2937 ;--- end asm ---
   3FDF 5F            [ 2] 2938 	clrb	; 
   3FE0 BD 09 DC      [ 8] 2939 	jsr	_drawBlock	; 
                           2940 ;----- asm -----
                           2941 ;  658 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2942 	; #ENR#[584]    joybit();
                           2943 ;  0 "" 2
                           2944 ;  2354 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   3FE3 BD F1 F8      [ 8] 2945 	jsr ___Joy_Digital; BIOS call
                           2946 ;  0 "" 2
                           2947 ;  660 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2948 	; #ENR#[585]    if (pot0 < -10) {
                           2949 ;  0 "" 2
                           2950 ;--- end asm ---
   3FE6 F6 C8 1B      [ 5] 2951 	ldb	-14309	;  D.2345,
   3FE9 C1 F6         [ 2] 2952 	cmpb	#-10	;cmpqi:	;  D.2345,
   3FEB 2C 0C         [ 3] 2953 	bge	L113	; 
                           2954 ;----- asm -----
                           2955 ;  662 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2956 	; #ENR#[586]        moveBlock(Left);
                           2957 ;  0 "" 2
                           2958 ;--- end asm ---
   3FED 5F            [ 2] 2959 	clrb	; 
   3FEE BD 39 5C      [ 8] 2960 	jsr	_moveBlock	; 
                           2961 ;----- asm -----
                           2962 ;  664 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2963 	; #ENR#[587]        gameState = BlockMoving;
                           2964 ;  0 "" 2
                           2965 ;--- end asm ---
   3FF1 C6 06         [ 2] 2966 	ldb	#6	; ,
   3FF3 F7 C9 11      [ 5] 2967 	stb	_gameState	; , gameState
   3FF6 7E 40 30      [ 4] 2968 	jmp	L114	; 
   3FF9                    2969 L113:
   3FF9 F6 C8 1B      [ 5] 2970 	ldb	-14309	;  D.2346,
   3FFC C1 0A         [ 2] 2971 	cmpb	#10	;cmpqi:	;  D.2346,
   3FFE 2F 0C         [ 3] 2972 	ble	L115	; 
                           2973 ;----- asm -----
                           2974 ;  667 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2975 	; #ENR#[589]        moveBlock(Right);
                           2976 ;  0 "" 2
                           2977 ;--- end asm ---
   4000 C6 02         [ 2] 2978 	ldb	#2	; ,
   4002 BD 39 5C      [ 8] 2979 	jsr	_moveBlock	; 
                           2980 ;----- asm -----
                           2981 ;  669 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2982 	; #ENR#[590]        gameState = BlockMoving;
                           2983 ;  0 "" 2
                           2984 ;--- end asm ---
   4005 C6 06         [ 2] 2985 	ldb	#6	; ,
   4007 F7 C9 11      [ 5] 2986 	stb	_gameState	; , gameState
   400A 20 24         [ 3] 2987 	bra	L114	; 
   400C                    2988 L115:
   400C F6 C8 1C      [ 5] 2989 	ldb	-14308	;  D.2348,
   400F C1 F6         [ 2] 2990 	cmpb	#-10	;cmpqi:	;  D.2348,
   4011 2C 0C         [ 3] 2991 	bge	L116	; 
                           2992 ;----- asm -----
                           2993 ;  672 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           2994 	; #ENR#[592]        moveBlock(Down);
                           2995 ;  0 "" 2
                           2996 ;--- end asm ---
   4013 C6 03         [ 2] 2997 	ldb	#3	; ,
   4015 BD 39 5C      [ 8] 2998 	jsr	_moveBlock	; 
                           2999 ;----- asm -----
                           3000 ;  674 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3001 	; #ENR#[593]        gameState = BlockMoving;
                           3002 ;  0 "" 2
                           3003 ;--- end asm ---
   4018 C6 06         [ 2] 3004 	ldb	#6	; ,
   401A F7 C9 11      [ 5] 3005 	stb	_gameState	; , gameState
   401D 20 11         [ 3] 3006 	bra	L114	; 
   401F                    3007 L116:
   401F F6 C8 1C      [ 5] 3008 	ldb	-14308	;  D.2349,
   4022 C1 0A         [ 2] 3009 	cmpb	#10	;cmpqi:	;  D.2349,
   4024 2F 0A         [ 3] 3010 	ble	L114	; 
                           3011 ;----- asm -----
                           3012 ;  677 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3013 	; #ENR#[595]        moveBlock(Up);
                           3014 ;  0 "" 2
                           3015 ;--- end asm ---
   4026 C6 01         [ 2] 3016 	ldb	#1	; ,
   4028 BD 39 5C      [ 8] 3017 	jsr	_moveBlock	; 
                           3018 ;----- asm -----
                           3019 ;  679 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3020 	; #ENR#[596]        gameState = BlockMoving;
                           3021 ;  0 "" 2
                           3022 ;--- end asm ---
   402B C6 06         [ 2] 3023 	ldb	#6	; ,
   402D F7 C9 11      [ 5] 3024 	stb	_gameState	; , gameState
   4030                    3025 L114:
                           3026 ;----- asm -----
                           3027 ;  683 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3028 	; #ENR#[599]#if 0
                           3029 ;  0 "" 2
                           3030 ;  728 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3031 	; #ENR#[626]    if (gameState == BlockMoving) {
                           3032 ;  0 "" 2
                           3033 ;--- end asm ---
   4030 F6 C9 11      [ 5] 3034 	ldb	_gameState	; , gameState
   4033 C1 06         [ 2] 3035 	cmpb	#6	;cmpqi:	; ,
   4035 26 0C         [ 3] 3036 	bne	L117	; 
                           3037 ;----- asm -----
                           3038 ;  730 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3039 	; #ENR#[627]        changeMusic(movingMusic);
                           3040 ;  0 "" 2
                           3041 ;--- end asm ---
   4037 8E 41 FC      [ 3] 3042 	ldx	#_movingMusic	; ,
   403A BD 36 63      [ 8] 3043 	jsr	_changeMusic	; 
                           3044 ;----- asm -----
                           3045 ;  732 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3046 	; #ENR#[628]        *vecx = 3;
                           3047 ;  0 "" 2
                           3048 ;--- end asm ---
   403D C6 03         [ 2] 3049 	ldb	#3	; ,
   403F E7 9F C8 82   [ 9] 3050 	stb	[_vecx]	; ,* vecx
   4043                    3051 L117:
                           3052 ;----- asm -----
                           3053 ;  736 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3054 	; #ENR#[631]    Read_Btns();
                           3055 ;  0 "" 2
                           3056 ;  2286 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   4043 BD F1 BA      [ 8] 3057 	jsr ___Read_Btns; BIOS call
                           3058 ;  0 "" 2
                           3059 ;  738 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3060 	; #ENR#[632]    if (Vec_Buttons & 1) {
                           3061 ;  0 "" 2
                           3062 ;--- end asm ---
   4046 F6 C8 11      [ 5] 3063 	ldb	_Vec_Buttons	; , Vec_Buttons
   4049 C5 01         [ 2] 3064 	bitb	#1	; ,
   404B 27 08         [ 3] 3065 	beq	L118	; 
                           3066 ;----- asm -----
                           3067 ;  740 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3068 	; #ENR#[633]        if (splitMode) {
                           3069 ;  0 "" 2
                           3070 ;--- end asm ---
   404D 7D C8 E6      [ 7] 3071 	tst	_splitMode	;  splitMode
   4050 27 03         [ 3] 3072 	beq	L118	; 
                           3073 ;----- asm -----
                           3074 ;  742 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3075 	; #ENR#[634]            swapSplit();
                           3076 ;  0 "" 2
                           3077 ;--- end asm ---
   4052 BD 09 B7      [ 8] 3078 	jsr	_swapSplit	; 
   4055                    3079 L118:
                           3080 ;----- asm -----
                           3081 ;  747 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3082 	; #ENR#[638]    if ((Vec_Buttons & 2) && !arcadeMode) {
                           3083 ;  0 "" 2
                           3084 ;--- end asm ---
   4055 F6 C8 11      [ 5] 3085 	ldb	_Vec_Buttons	; , Vec_Buttons
   4058 C5 02         [ 2] 3086 	bitb	#2	; ,
   405A 27 08         [ 3] 3087 	beq	L119	; 
   405C 7D C9 0E      [ 7] 3088 	tst	_arcadeMode	;  arcadeMode
   405F 26 03         [ 3] 3089 	bne	L119	; 
                           3090 ;----- asm -----
                           3091 ;  749 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3092 	; #ENR#[639]		nextLevel();
                           3093 ;  0 "" 2
                           3094 ;--- end asm ---
   4061 BD 3E E5      [ 8] 3095 	jsr	_nextLevel	; 
   4064                    3096 L119:
                           3097 ;----- asm -----
                           3098 ;  752 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3099 	; #ENR#[641]    if ((Vec_Buttons & 4) && !arcadeMode) {
                           3100 ;  0 "" 2
                           3101 ;--- end asm ---
   4064 F6 C8 11      [ 5] 3102 	ldb	_Vec_Buttons	; , Vec_Buttons
   4067 C5 04         [ 2] 3103 	bitb	#4	; ,
   4069 27 23         [ 3] 3104 	beq	L120	; 
   406B 7D C9 0E      [ 7] 3105 	tst	_arcadeMode	;  arcadeMode
   406E 26 1E         [ 3] 3106 	bne	L120	; 
                           3107 ;----- asm -----
                           3108 ;  754 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3109 	; #ENR#[642]        if (levelNumber > 0) {
                           3110 ;  0 "" 2
                           3111 ;--- end asm ---
   4070 F6 C8 87      [ 5] 3112 	ldb	_levelNumber	;  levelNumber.44, levelNumber
   4073 27 09         [ 3] 3113 	beq	L121	; 
                           3114 ;----- asm -----
                           3115 ;  756 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3116 	; #ENR#[643]            levelNumber--;
                           3117 ;  0 "" 2
                           3118 ;--- end asm ---
   4075 F6 C8 87      [ 5] 3119 	ldb	_levelNumber	;  levelNumber.45, levelNumber
   4078 5A            [ 2] 3120 	decb	;  levelNumber.46
   4079 F7 C8 87      [ 5] 3121 	stb	_levelNumber	;  levelNumber.46, levelNumber
   407C 20 0D         [ 3] 3122 	bra	L122	; 
   407E                    3123 L121:
                           3124 ;----- asm -----
                           3125 ;  759 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3126 	; #ENR#[645]            setBank(nextBank);
                           3127 ;  0 "" 2
                           3128 ;--- end asm ---
   407E F6 4E D9      [ 5] 3129 	ldb	_nextBank	; , nextBank
   4081 BD 3E CF      [ 8] 3130 	jsr	_setBank	; 
                           3131 ;----- asm -----
                           3132 ;  761 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3133 	; #ENR#[646]            levelNumber = levelCount - 1;
                           3134 ;  0 "" 2
                           3135 ;--- end asm ---
   4084 F6 4E D7      [ 5] 3136 	ldb	_levelCount	; , levelCount
   4087 5A            [ 2] 3137 	decb	; 
   4088 F7 C8 87      [ 5] 3138 	stb	_levelNumber	; , levelNumber
   408B                    3139 L122:
                           3140 ;----- asm -----
                           3141 ;  764 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3142 	; #ENR#[648]        startLevel();
                           3143 ;  0 "" 2
                           3144 ;--- end asm ---
   408B BD 3B 61      [ 8] 3145 	jsr	_startLevel	; 
   408E                    3146 L120:
                           3147 ;----- asm -----
                           3148 ;  767 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3149 	; #ENR#[650]    if (Vec_Buttons & 8) {
                           3150 ;  0 "" 2
                           3151 ;--- end asm ---
   408E F6 C8 11      [ 5] 3152 	ldb	_Vec_Buttons	; , Vec_Buttons
   4091 C5 08         [ 2] 3153 	bitb	#8	; ,
   4093 27 03         [ 3] 3154 	beq	L124	; 
                           3155 ;----- asm -----
                           3156 ;  769 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3157 	; #ENR#[651]        gameState = MainMenu;
                           3158 ;  0 "" 2
                           3159 ;--- end asm ---
   4095 7F C9 11      [ 7] 3160 	clr	_gameState	;  gameState
   4098                    3161 L124:
   4098 39            [ 5] 3162 	rts
                           3163 	.globl _main
   4099                    3164 _main:
   4099 34 60         [ 7] 3165 	pshs	y,u	; 
   409B 32 7C         [ 5] 3166 	leas	-4,s	; ,,
                           3167 ;----- asm -----
                           3168 ;  1214 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3169 	; #ENR#[929]    setBank(0);
                           3170 ;  0 "" 2
                           3171 ;--- end asm ---
   409D 5F            [ 2] 3172 	clrb	; 
   409E BD 3E CF      [ 8] 3173 	jsr	_setBank	; 
                           3174 ;----- asm -----
                           3175 ;  1218 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3176 	; #ENR#[932]    *vecx = 4;
                           3177 ;  0 "" 2
                           3178 ;--- end asm ---
   40A1 C6 04         [ 2] 3179 	ldb	#4	; ,
   40A3 E7 9F C8 82   [ 9] 3180 	stb	[_vecx]	; ,* vecx
                           3181 ;----- asm -----
                           3182 ;  1222 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3183 	; #ENR#[935]    picAvailable = 0;
                           3184 ;  0 "" 2
                           3185 ;--- end asm ---
   40A7 7F C9 0D      [ 7] 3186 	clr	_picAvailable	;  picAvailable
                           3187 ;----- asm -----
                           3188 ;  1224 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3189 	; #ENR#[936]    sendCommand(CMD_VERSION, 0);
                           3190 ;  0 "" 2
                           3191 ;--- end asm ---
   40AA 6F E2         [ 8] 3192 	clr	,-s	; 
   40AC C6 01         [ 2] 3193 	ldb	#1	; ,
   40AE BD 3B 2E      [ 8] 3194 	jsr	_sendCommand	; 
                           3195 ;----- asm -----
                           3196 ;  1226 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3197 	; #ENR#[937]    sendCommand(CMD_VERSION, 0);
                           3198 ;  0 "" 2
                           3199 ;--- end asm ---
   40B1 6F E2         [ 8] 3200 	clr	,-s	; 
   40B3 C6 01         [ 2] 3201 	ldb	#1	; ,
   40B5 BD 3B 2E      [ 8] 3202 	jsr	_sendCommand	; 
                           3203 ;----- asm -----
                           3204 ;  1228 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3205 	; #ENR#[938]    if (sendCommand(CMD_VERSION, 0) == 4) {
                           3206 ;  0 "" 2
                           3207 ;--- end asm ---
   40B8 6F E2         [ 8] 3208 	clr	,-s	; 
   40BA C6 01         [ 2] 3209 	ldb	#1	; ,
   40BC BD 3B 2E      [ 8] 3210 	jsr	_sendCommand	; 
   40BF 32 63         [ 5] 3211 	leas	3,s	; ,,
   40C1 C1 04         [ 2] 3212 	cmpb	#4	;cmpqi:	;  D.2495,
   40C3 26 05         [ 3] 3213 	bne	L126	; 
                           3214 ;----- asm -----
                           3215 ;  1230 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3216 	; #ENR#[939]        picAvailable = 1;
                           3217 ;  0 "" 2
                           3218 ;--- end asm ---
   40C5 C6 01         [ 2] 3219 	ldb	#1	; ,
   40C7 F7 C9 0D      [ 5] 3220 	stb	_picAvailable	; , picAvailable
   40CA                    3221 L126:
                           3222 ;----- asm -----
                           3223 ;  1235 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3224 	; #ENR#[943]    epot0 = 1;
                           3225 ;  0 "" 2
                           3226 ;--- end asm ---
   40CA C6 01         [ 2] 3227 	ldb	#1	; ,
   40CC F7 C8 1F      [ 5] 3228 	stb	-14305	; ,
                           3229 ;----- asm -----
                           3230 ;  1237 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3231 	; #ENR#[944]    epot1 = 3;
                           3232 ;  0 "" 2
                           3233 ;--- end asm ---
   40CF C6 03         [ 2] 3234 	ldb	#3	; ,
   40D1 F7 C8 20      [ 5] 3235 	stb	-14304	; ,
                           3236 ;----- asm -----
                           3237 ;  1239 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3238 	; #ENR#[945]    epot2 = 0;
                           3239 ;  0 "" 2
                           3240 ;--- end asm ---
   40D4 7F C8 21      [ 7] 3241 	clr	-14303	; 
                           3242 ;----- asm -----
                           3243 ;  1241 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3244 	; #ENR#[946]    epot3 = 0;
                           3245 ;  0 "" 2
                           3246 ;--- end asm ---
   40D7 7F C8 22      [ 7] 3247 	clr	-14302	; 
                           3248 ;----- asm -----
                           3249 ;  1244 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3250 	; #ENR#[948]    gameState = MainMenu;
                           3251 ;  0 "" 2
                           3252 ;--- end asm ---
   40DA 7F C9 11      [ 7] 3253 	clr	_gameState	;  gameState
                           3254 ;----- asm -----
                           3255 ;  1246 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3256 	; #ENR#[949]    musicInit();
                           3257 ;  0 "" 2
                           3258 ;--- end asm ---
   40DD BD 5F C6      [ 8] 3259 	jsr	_musicInit	; 
                           3260 ;----- asm -----
                           3261 ;  1249 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3262 	; #ENR#[951]    while (1) {
                           3263 ;  0 "" 2
                           3264 ;--- end asm ---
   40E0                    3265 L141:
                           3266 ;----- asm -----
                           3267 ;  1252 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3268 	; #ENR#[953]        frwait();
                           3269 ;  0 "" 2
                           3270 ;  97 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   40E0 BD F1 92      [ 8] 3271 	jsr ___Wait_Recal; BIOS call
                           3272 ;  0 "" 2
                           3273 ;  1255 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3274 	; #ENR#[955]        switch (gameState) {
                           3275 ;  0 "" 2
                           3276 ;--- end asm ---
   40E3 F6 C9 11      [ 5] 3277 	ldb	_gameState	; , gameState
   40E6 C1 08         [ 2] 3278 	cmpb	#8	;cmpqi:	; ,
   40E8 10 22 00 69   [ 6] 3279 	lbhi	L127	; 
   40EC 4F            [ 2] 3280 	clra		;zero_extendqihi: R:b -> R:d	; ,
   40ED ED E4         [ 5] 3281 	std	,s	; ,
   40EF 58            [ 2] 3282 	aslb	; 
   40F0 49            [ 2] 3283 	rola	; 
   40F1 1F 01         [ 6] 3284 	tfr	d,x	; , tmp38
   40F3 6E 99 40 F7   [10] 3285 	jmp	[L137,x]	; , tmp38
   40F7                    3286 L137:
   40F7 41 09              3287 	.word L128
   40F9 41 1B              3288 	.word L129
   40FB 41 24              3289 	.word L130
   40FD 41 12              3290 	.word L131
   40FF 41 2D              3291 	.word L132
   4101 41 36              3292 	.word L133
   4103 41 3F              3293 	.word L134
   4105 41 47              3294 	.word L135
   4107 41 4F              3295 	.word L136
   4109                    3296 L128:
                           3297 ;----- asm -----
                           3298 ;  1259 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3299 	; #ENR#[957]            mainMenu();
                           3300 ;  0 "" 2
                           3301 ;--- end asm ---
   4109 BD 3D 47      [ 8] 3302 	jsr	_mainMenu	; 
                           3303 ;----- asm -----
                           3304 ;  1261 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3305 	; #ENR#[958]            musicPlay();
                           3306 ;  0 "" 2
                           3307 ;--- end asm ---
   410C BD 5F D0      [ 8] 3308 	jsr	_musicPlay	; 
                           3309 ;----- asm -----
                           3310 ;  1263 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3311 	; #ENR#[959]            break;
                           3312 ;  0 "" 2
                           3313 ;--- end asm ---
   410F 7E 41 55      [ 4] 3314 	jmp	L127	; 
   4112                    3315 L131:
                           3316 ;----- asm -----
                           3317 ;  1267 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3318 	; #ENR#[961]            clearMenu();
                           3319 ;  0 "" 2
                           3320 ;--- end asm ---
   4112 BD 3E 4B      [ 8] 3321 	jsr	_clearMenu	; 
                           3322 ;----- asm -----
                           3323 ;  1269 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3324 	; #ENR#[962]            musicPlay();
                           3325 ;  0 "" 2
                           3326 ;--- end asm ---
   4115 BD 5F D0      [ 8] 3327 	jsr	_musicPlay	; 
                           3328 ;----- asm -----
                           3329 ;  1271 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3330 	; #ENR#[963]            break;
                           3331 ;  0 "" 2
                           3332 ;--- end asm ---
   4118 7E 41 55      [ 4] 3333 	jmp	L127	; 
   411B                    3334 L129:
                           3335 ;----- asm -----
                           3336 ;  1275 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3337 	; #ENR#[965]            arcadeMenu();
                           3338 ;  0 "" 2
                           3339 ;--- end asm ---
   411B BD 3C 4A      [ 8] 3340 	jsr	_arcadeMenu	; 
                           3341 ;----- asm -----
                           3342 ;  1277 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3343 	; #ENR#[966]            musicPlay();
                           3344 ;  0 "" 2
                           3345 ;--- end asm ---
   411E BD 5F D0      [ 8] 3346 	jsr	_musicPlay	; 
                           3347 ;----- asm -----
                           3348 ;  1279 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3349 	; #ENR#[967]            break;
                           3350 ;  0 "" 2
                           3351 ;--- end asm ---
   4121 7E 41 55      [ 4] 3352 	jmp	L127	; 
   4124                    3353 L130:
                           3354 ;----- asm -----
                           3355 ;  1283 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3356 	; #ENR#[969]            arcadeEnd();
                           3357 ;  0 "" 2
                           3358 ;--- end asm ---
   4124 BD 37 8B      [ 8] 3359 	jsr	_arcadeEnd	; 
                           3360 ;----- asm -----
                           3361 ;  1285 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3362 	; #ENR#[970]            musicPlay();
                           3363 ;  0 "" 2
                           3364 ;--- end asm ---
   4127 BD 5F D0      [ 8] 3365 	jsr	_musicPlay	; 
                           3366 ;----- asm -----
                           3367 ;  1287 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3368 	; #ENR#[971]            break;
                           3369 ;  0 "" 2
                           3370 ;--- end asm ---
   412A 7E 41 55      [ 4] 3371 	jmp	L127	; 
   412D                    3372 L132:
                           3373 ;----- asm -----
                           3374 ;  1291 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3375 	; #ENR#[973]            showInfo();
                           3376 ;  0 "" 2
                           3377 ;--- end asm ---
   412D BD 38 DA      [ 8] 3378 	jsr	_showInfo	; 
                           3379 ;----- asm -----
                           3380 ;  1293 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3381 	; #ENR#[974]            blockMovingToStart();
                           3382 ;  0 "" 2
                           3383 ;--- end asm ---
   4130 BD 39 04      [ 8] 3384 	jsr	_blockMovingToStart	; 
                           3385 ;----- asm -----
                           3386 ;  1295 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3387 	; #ENR#[975]            break;
                           3388 ;  0 "" 2
                           3389 ;--- end asm ---
   4133 7E 41 55      [ 4] 3390 	jmp	L127	; 
   4136                    3391 L133:
                           3392 ;----- asm -----
                           3393 ;  1299 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3394 	; #ENR#[977]            showInfo();
                           3395 ;  0 "" 2
                           3396 ;--- end asm ---
   4136 BD 38 DA      [ 8] 3397 	jsr	_showInfo	; 
                           3398 ;----- asm -----
                           3399 ;  1301 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3400 	; #ENR#[978]            blockWaiting();
                           3401 ;  0 "" 2
                           3402 ;--- end asm ---
   4139 BD 3F DC      [ 8] 3403 	jsr	_blockWaiting	; 
                           3404 ;----- asm -----
                           3405 ;  1303 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3406 	; #ENR#[979]            break;
                           3407 ;  0 "" 2
                           3408 ;--- end asm ---
   413C 7E 41 55      [ 4] 3409 	jmp	L127	; 
   413F                    3410 L134:
                           3411 ;----- asm -----
                           3412 ;  1307 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3413 	; #ENR#[981]            showInfo();
                           3414 ;  0 "" 2
                           3415 ;--- end asm ---
   413F BD 38 DA      [ 8] 3416 	jsr	_showInfo	; 
                           3417 ;----- asm -----
                           3418 ;  1309 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3419 	; #ENR#[982]            blockMoving();
                           3420 ;  0 "" 2
                           3421 ;--- end asm ---
   4142 BD 39 8E      [ 8] 3422 	jsr	_blockMoving	; 
                           3423 ;----- asm -----
                           3424 ;  1311 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3425 	; #ENR#[983]            break;
                           3426 ;  0 "" 2
                           3427 ;--- end asm ---
   4145 20 0E         [ 3] 3428 	bra	L127	; 
   4147                    3429 L135:
                           3430 ;----- asm -----
                           3431 ;  1315 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3432 	; #ENR#[985]            showInfo();
                           3433 ;  0 "" 2
                           3434 ;--- end asm ---
   4147 BD 38 DA      [ 8] 3435 	jsr	_showInfo	; 
                           3436 ;----- asm -----
                           3437 ;  1317 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3438 	; #ENR#[986]            blockFalling();
                           3439 ;  0 "" 2
                           3440 ;--- end asm ---
   414A BD 3D EF      [ 8] 3441 	jsr	_blockFalling	; 
                           3442 ;----- asm -----
                           3443 ;  1319 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3444 	; #ENR#[987]            break;
                           3445 ;  0 "" 2
                           3446 ;--- end asm ---
   414D 20 06         [ 3] 3447 	bra	L127	; 
   414F                    3448 L136:
                           3449 ;----- asm -----
                           3450 ;  1323 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3451 	; #ENR#[989]            showInfo();
                           3452 ;  0 "" 2
                           3453 ;--- end asm ---
   414F BD 38 DA      [ 8] 3454 	jsr	_showInfo	; 
                           3455 ;----- asm -----
                           3456 ;  1325 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3457 	; #ENR#[990]            blockMovingAtEnd();
                           3458 ;  0 "" 2
                           3459 ;--- end asm ---
   4152 BD 3E FE      [ 8] 3460 	jsr	_blockMovingAtEnd	; 
                           3461 ;----- asm -----
                           3462 ;  1327 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3463 	; #ENR#[991]            break;
                           3464 ;  0 "" 2
                           3465 ;--- end asm ---
   4155                    3466 L127:
                           3467 ;----- asm -----
                           3468 ;  1332 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3469 	; #ENR#[995]        if (gameState > ClearMenu) {
                           3470 ;  0 "" 2
                           3471 ;--- end asm ---
   4155 F6 C9 11      [ 5] 3472 	ldb	_gameState	; , gameState
   4158 C1 03         [ 2] 3473 	cmpb	#3	;cmpqi:	; ,
   415A 23 13         [ 3] 3474 	bls	L138	; 
                           3475 ;----- asm -----
                           3476 ;  1334 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3477 	; #ENR#[996]            DP_to_C8();
                           3478 ;  0 "" 2
                           3479 ;  316 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   415C BD F1 AF      [ 8] 3480 	jsr ___DP_to_C8; BIOS call
                           3481 ;  0 "" 2
                           3482 ;  1336 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3483 	; #ENR#[997]            replay(currentMusic);
                           3484 ;  0 "" 2
                           3485 ;--- end asm ---
   415F BE C8 80      [ 6] 3486 	ldx	_currentMusic	; , currentMusic
   4162 AF 62         [ 6] 3487 	stx	2,s	; , u
                           3488 ;----- asm -----
                           3489 ;  2917 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   4164 EE 62         [ 6] 3490 	ldu 2,s	;  u
   4166 BD F6 87      [ 8] 3491 	jsr ___Init_Music_chk; BIOS call
                           3492 ;  0 "" 2
                           3493 ;  1338 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3494 	; #ENR#[998]            DP_to_D0();
                           3495 ;  0 "" 2
                           3496 ;  300 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   4169 BD F1 AA      [ 8] 3497 	jsr ___DP_to_D0; BIOS call
                           3498 ;  0 "" 2
                           3499 ;  1340 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3500 	; #ENR#[999]            reqout();
                           3501 ;  0 "" 2
                           3502 ;  2880 "C:\data\vide\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   416C BD F2 89      [ 8] 3503 	jsr ___Do_Sound; BIOS call
                           3504 ;  0 "" 2
                           3505 ;--- end asm ---
   416F                    3506 L138:
                           3507 ;----- asm -----
                           3508 ;  1345 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3509 	; #ENR#[1003]        if (arcadeMode) {
                           3510 ;  0 "" 2
                           3511 ;--- end asm ---
   416F 7D C9 0E      [ 7] 3512 	tst	_arcadeMode	;  arcadeMode
   4172 10 27 FF 6A   [ 6] 3513 	lbeq	L141	; 
                           3514 ;----- asm -----
                           3515 ;  1347 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3516 	; #ENR#[1004]            frames++;
                           3517 ;  0 "" 2
                           3518 ;--- end asm ---
   4176 FC C9 09      [ 6] 3519 	ldd	_frames	;  frames.92, frames
   4179 C3 00 01      [ 4] 3520 	addd	#1	;  frames.92,
   417C FD C9 09      [ 6] 3521 	std	_frames	;  frames.92, frames
                           3522 ;----- asm -----
                           3523 ;  1349 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3524 	; #ENR#[1005]            if (frames == 50) {
                           3525 ;  0 "" 2
                           3526 ;--- end asm ---
   417F 10 83 00 32   [ 5] 3527 	cmpd	#50	;cmphi:	;  frames.92,
   4183 10 26 FF 59   [ 6] 3528 	lbne	L141	; 
                           3529 ;----- asm -----
                           3530 ;  1351 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3531 	; #ENR#[1006]                frames = 0;
                           3532 ;  0 "" 2
                           3533 ;--- end asm ---
   4187 CC 00 00      [ 3] 3534 	ldd	#0	; ,
   418A FD C9 09      [ 6] 3535 	std	_frames	; , frames
                           3536 ;----- asm -----
                           3537 ;  1353 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3538 	; #ENR#[1007]                if (moveCount < 999) {
                           3539 ;  0 "" 2
                           3540 ;--- end asm ---
   418D BE C9 07      [ 6] 3541 	ldx	_moveCount	;  moveCount.93, moveCount
   4190 8C 03 E6      [ 4] 3542 	cmpx	#998	;cmphi:	;  moveCount.93,
   4193 10 22 FF 49   [ 6] 3543 	lbhi	L141	; 
                           3544 ;----- asm -----
                           3545 ;  1355 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3546 	; #ENR#[1008]                    moveCount++;
                           3547 ;  0 "" 2
                           3548 ;--- end asm ---
   4197 30 01         [ 5] 3549 	leax	1,x	; ,, moveCount.93
   4199 BF C9 07      [ 6] 3550 	stx	_moveCount	; , moveCount
                           3551 ;----- asm -----
                           3552 ;  1357 "C:\data\vide\..\bloxorz\Vide\source\bloxorz.enr.c" 1
                           3553 	; #ENR#[1009]                    updateInfoText();
                           3554 ;  0 "" 2
                           3555 ;--- end asm ---
   419C BD 39 1D      [ 8] 3556 	jsr	_updateInfoText	; 
   419F 7E 40 E0      [ 4] 3557 	jmp	L141	; 
                           3558 	.globl _startMusic
   41A2                    3559 _startMusic:
   41A2 FE                 3560 	.byte	-2
   41A3 E8                 3561 	.byte	-24
   41A4 FE                 3562 	.byte	-2
   41A5 B6                 3563 	.byte	-74
   41A6 01                 3564 	.byte	1
   41A7 01                 3565 	.byte	1
   41A8 02                 3566 	.byte	2
   41A9 01                 3567 	.byte	1
   41AA 03                 3568 	.byte	3
   41AB 01                 3569 	.byte	1
   41AC 04                 3570 	.byte	4
   41AD 01                 3571 	.byte	1
   41AE 05                 3572 	.byte	5
   41AF 01                 3573 	.byte	1
   41B0 06                 3574 	.byte	6
   41B1 01                 3575 	.byte	1
   41B2 07                 3576 	.byte	7
   41B3 01                 3577 	.byte	1
   41B4 08                 3578 	.byte	8
   41B5 01                 3579 	.byte	1
   41B6 09                 3580 	.byte	9
   41B7 01                 3581 	.byte	1
   41B8 0A                 3582 	.byte	10
   41B9 01                 3583 	.byte	1
   41BA 0B                 3584 	.byte	11
   41BB 01                 3585 	.byte	1
   41BC 0C                 3586 	.byte	12
   41BD 01                 3587 	.byte	1
   41BE 0D                 3588 	.byte	13
   41BF 01                 3589 	.byte	1
   41C0 00                 3590 	.byte	0
   41C1 80                 3591 	.byte	-128
                           3592 	.globl _levelEndMusic
   41C2                    3593 _levelEndMusic:
   41C2 FE                 3594 	.byte	-2
   41C3 E8                 3595 	.byte	-24
   41C4 FE                 3596 	.byte	-2
   41C5 B6                 3597 	.byte	-74
   41C6 0D                 3598 	.byte	13
   41C7 01                 3599 	.byte	1
   41C8 0E                 3600 	.byte	14
   41C9 01                 3601 	.byte	1
   41CA 0F                 3602 	.byte	15
   41CB 01                 3603 	.byte	1
   41CC 10                 3604 	.byte	16
   41CD 01                 3605 	.byte	1
   41CE 11                 3606 	.byte	17
   41CF 01                 3607 	.byte	1
   41D0 12                 3608 	.byte	18
   41D1 01                 3609 	.byte	1
   41D2 13                 3610 	.byte	19
   41D3 01                 3611 	.byte	1
   41D4 14                 3612 	.byte	20
   41D5 01                 3613 	.byte	1
   41D6 15                 3614 	.byte	21
   41D7 01                 3615 	.byte	1
   41D8 16                 3616 	.byte	22
   41D9 01                 3617 	.byte	1
   41DA 00                 3618 	.byte	0
   41DB 80                 3619 	.byte	-128
                           3620 	.globl _fallingMusic
   41DC                    3621 _fallingMusic:
   41DC FE                 3622 	.byte	-2
   41DD E8                 3623 	.byte	-24
   41DE FE                 3624 	.byte	-2
   41DF B6                 3625 	.byte	-74
   41E0 0D                 3626 	.byte	13
   41E1 02                 3627 	.byte	2
   41E2 0C                 3628 	.byte	12
   41E3 02                 3629 	.byte	2
   41E4 0B                 3630 	.byte	11
   41E5 02                 3631 	.byte	2
   41E6 0A                 3632 	.byte	10
   41E7 02                 3633 	.byte	2
   41E8 09                 3634 	.byte	9
   41E9 02                 3635 	.byte	2
   41EA 08                 3636 	.byte	8
   41EB 02                 3637 	.byte	2
   41EC 07                 3638 	.byte	7
   41ED 02                 3639 	.byte	2
   41EE 06                 3640 	.byte	6
   41EF 02                 3641 	.byte	2
   41F0 05                 3642 	.byte	5
   41F1 02                 3643 	.byte	2
   41F2 04                 3644 	.byte	4
   41F3 02                 3645 	.byte	2
   41F4 03                 3646 	.byte	3
   41F5 02                 3647 	.byte	2
   41F6 02                 3648 	.byte	2
   41F7 02                 3649 	.byte	2
   41F8 01                 3650 	.byte	1
   41F9 02                 3651 	.byte	2
   41FA 00                 3652 	.byte	0
   41FB 80                 3653 	.byte	-128
                           3654 	.globl _movingMusic
   41FC                    3655 _movingMusic:
   41FC FD                 3656 	.byte	-3
   41FD C3                 3657 	.byte	-61
   41FE FE                 3658 	.byte	-2
   41FF B6                 3659 	.byte	-74
   4200 01                 3660 	.byte	1
   4201 05                 3661 	.byte	5
   4202 00                 3662 	.byte	0
   4203 80                 3663 	.byte	-128
                           3664 	.globl _currentMusic
                           3665 	.area .data
   C880                    3666 _currentMusic:
   C880 41 A2              3667 	.word	_startMusic
                           3668 	.globl _vecx
   C882                    3669 _vecx:
   C882 80 00              3670 	.word	-32768
                           3671 	.globl _led8
                           3672 	.area .text
   4204                    3673 _led8:
   4204 FF                 3674 	.byte	-1
   4205 00                 3675 	.byte	0
   4206 05                 3676 	.byte	5
   4207 FF                 3677 	.byte	-1
   4208 FB                 3678 	.byte	-5
   4209 00                 3679 	.byte	0
   420A FF                 3680 	.byte	-1
   420B 00                 3681 	.byte	0
   420C FB                 3682 	.byte	-5
   420D FF                 3683 	.byte	-1
   420E 05                 3684 	.byte	5
   420F 00                 3685 	.byte	0
   4210 FF                 3686 	.byte	-1
   4211 05                 3687 	.byte	5
   4212 00                 3688 	.byte	0
   4213 FF                 3689 	.byte	-1
   4214 00                 3690 	.byte	0
   4215 05                 3691 	.byte	5
   4216 FF                 3692 	.byte	-1
   4217 FB                 3693 	.byte	-5
   4218 00                 3694 	.byte	0
   4219 01                 3695 	.byte	1
   421A                    3696 _arcadeLevels:
   421A 01                 3697 	.byte	1
   421B 02                 3698 	.byte	2
   421C 00                 3699 	.byte	0
   421D 00 00              3700 	.word	0	;skip space 2
   421F 04                 3701 	.byte	4
   4220 05                 3702 	.byte	5
   4221 06                 3703 	.byte	6
   4222 00                 3704 	.byte	0
   4223 00                 3705 	.byte	0	;skip space
   4224 07                 3706 	.byte	7
   4225 08                 3707 	.byte	8
   4226 09                 3708 	.byte	9
   4227 00                 3709 	.byte	0
   4228 00                 3710 	.byte	0	;skip space
   4229 0A                 3711 	.byte	10
   422A 0B                 3712 	.byte	11
   422B 0C                 3713 	.byte	12
   422C 00                 3714 	.byte	0
   422D 00                 3715 	.byte	0	;skip space
                           3716 	.area .bss
   C8F2                    3717 _si:	.blkb	1
                           3718 	.globl	_infoText
   C8F3                    3719 _infoText:	.blkb	20
                           3720 	.globl	_moveCount
   C907                    3721 _moveCount:	.blkb	2
                           3722 	.globl	_frames
   C909                    3723 _frames:	.blkb	2
                           3724 	.globl	_levelHighscore
   C90B                    3725 _levelHighscore:	.blkb	2
                           3726 	.globl	_picAvailable
   C90D                    3727 _picAvailable:	.blkb	1
                           3728 	.globl	_arcadeMode
   C90E                    3729 _arcadeMode:	.blkb	1
                           3730 	.globl	_arcadeSelection
   C90F                    3731 _arcadeSelection:	.blkb	1
                           3732 	.globl	_arcadeIndex
   C910                    3733 _arcadeIndex:	.blkb	1
                           3734 	.globl	_gameState
   C911                    3735 _gameState:	.blkb	1
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
  2 A$bloxorz$105      0041 GR  |   2 A$bloxorz$1050     0338 GR
  2 A$bloxorz$1051     033A GR  |   2 A$bloxorz$1052     033C GR
  2 A$bloxorz$1053     033F GR  |   2 A$bloxorz$1056     0341 GR
  2 A$bloxorz$1057     0343 GR  |   2 A$bloxorz$1058     0345 GR
  2 A$bloxorz$1059     0347 GR  |   2 A$bloxorz$106      0043 GR
  2 A$bloxorz$1062     034A GR  |   2 A$bloxorz$1063     034C GR
  2 A$bloxorz$107      0046 GR  |   2 A$bloxorz$1071     034E GR
  2 A$bloxorz$1077     0351 GR  |   2 A$bloxorz$1078     0354 GR
  2 A$bloxorz$108      0048 GR  |   2 A$bloxorz$1084     0357 GR
  2 A$bloxorz$1085     035A GR  |   2 A$bloxorz$1086     035B GR
  2 A$bloxorz$1092     035E GR  |   2 A$bloxorz$1093     035F GR
  2 A$bloxorz$1099     0361 GR  |   2 A$bloxorz$1100     0363 GR
  2 A$bloxorz$1102     0366 GR  |   2 A$bloxorz$1105     0367 GR
  2 A$bloxorz$1111     0369 GR  |   2 A$bloxorz$1112     036C GR
  2 A$bloxorz$1113     036F GR  |   2 A$bloxorz$1114     0371 GR
  2 A$bloxorz$1115     0374 GR  |   2 A$bloxorz$1116     0377 GR
  2 A$bloxorz$1117     037A GR  |   2 A$bloxorz$1118     037D GR
  2 A$bloxorz$1119     0380 GR  |   2 A$bloxorz$1120     0383 GR
  2 A$bloxorz$1121     0386 GR  |   2 A$bloxorz$1127     0389 GR
  2 A$bloxorz$1128     038B GR  |   2 A$bloxorz$1129     038E GR
  2 A$bloxorz$1135     0391 GR  |   2 A$bloxorz$1136     0394 GR
  2 A$bloxorz$1137     0397 GR  |   2 A$bloxorz$1138     039A GR
  2 A$bloxorz$1139     039C GR  |   2 A$bloxorz$1140     039D GR
  2 A$bloxorz$1141     039F GR  |   2 A$bloxorz$1142     03A2 GR
  2 A$bloxorz$1143     03A4 GR  |   2 A$bloxorz$115      004C GR
  2 A$bloxorz$1151     03A6 GR  |   2 A$bloxorz$1157     03A9 GR
  2 A$bloxorz$1158     03AC GR  |   2 A$bloxorz$116      004E GR
  2 A$bloxorz$1164     03AE GR  |   2 A$bloxorz$1165     03B1 GR
  2 A$bloxorz$1166     03B4 GR  |   2 A$bloxorz$1167     03B6 GR
  2 A$bloxorz$1168     03B8 GR  |   2 A$bloxorz$117      0050 GR
  2 A$bloxorz$1175     03BB GR  |   2 A$bloxorz$1177     03BE GR
  2 A$bloxorz$118      0053 GR  |   2 A$bloxorz$1185     03BF GR
  2 A$bloxorz$1186     03C1 GR  |   2 A$bloxorz$1192     03C4 GR
  2 A$bloxorz$1198     03C7 GR  |   2 A$bloxorz$1199     03CA GR
  2 A$bloxorz$1205     03CD GR  |   2 A$bloxorz$1206     03D0 GR
  2 A$bloxorz$1212     03D3 GR  |   2 A$bloxorz$1213     03D7 GR
  2 A$bloxorz$1216     03D8 GR  |   2 A$bloxorz$1222     03DA GR
  2 A$bloxorz$1228     03DD GR  |   2 A$bloxorz$1229     03DE GR
  2 A$bloxorz$1235     03E1 GR  |   2 A$bloxorz$1241     03E4 GR
  2 A$bloxorz$1242     03E7 GR  |   2 A$bloxorz$1248     03EB GR
  2 A$bloxorz$1249     03EE GR  |   2 A$bloxorz$1255     03F0 GR
  2 A$bloxorz$1262     03F3 GR  |   2 A$bloxorz$1263     03F6 GR
  2 A$bloxorz$1264     03F8 GR  |   2 A$bloxorz$1265     03FB GR
  2 A$bloxorz$1266     03FE GR  |   2 A$bloxorz$1272     0400 GR
  2 A$bloxorz$1273     0403 GR  |   2 A$bloxorz$1274     0404 GR
  2 A$bloxorz$1275     0406 GR  |   2 A$bloxorz$1276     0409 GR
  2 A$bloxorz$1277     040B GR  |   2 A$bloxorz$1278     040D GR
  2 A$bloxorz$1279     0410 GR  |   2 A$bloxorz$128      0055 GR
  2 A$bloxorz$1285     0412 GR  |   2 A$bloxorz$1286     0415 GR
  2 A$bloxorz$1287     0416 GR  |   2 A$bloxorz$1288     0418 GR
  2 A$bloxorz$1289     041B GR  |   2 A$bloxorz$129      0057 GR
  2 A$bloxorz$1290     041E GR  |   2 A$bloxorz$1296     0420 GR
  2 A$bloxorz$1297     0423 GR  |   2 A$bloxorz$1298     0425 GR
  2 A$bloxorz$1299     0428 GR  |   2 A$bloxorz$130      0059 GR
  2 A$bloxorz$1300     042B GR  |   2 A$bloxorz$1306     042D GR
  2 A$bloxorz$1307     0430 GR  |   2 A$bloxorz$1308     0431 GR
  2 A$bloxorz$1309     0433 GR  |   2 A$bloxorz$131      005B GR
  2 A$bloxorz$1310     0436 GR  |   2 A$bloxorz$1311     0438 GR
  2 A$bloxorz$1312     043A GR  |   2 A$bloxorz$1313     043D GR
  2 A$bloxorz$1319     043F GR  |   2 A$bloxorz$132      005D GR
  2 A$bloxorz$1320     0442 GR  |   2 A$bloxorz$1321     0443 GR
  2 A$bloxorz$1322     0445 GR  |   2 A$bloxorz$1323     0448 GR
  2 A$bloxorz$1324     044B GR  |   2 A$bloxorz$133      005F GR
  2 A$bloxorz$1330     044D GR  |   2 A$bloxorz$1331     044F GR
  2 A$bloxorz$1332     0452 GR  |   2 A$bloxorz$1338     0454 GR
  2 A$bloxorz$1339     0456 GR  |   2 A$bloxorz$134      0061 GR
  2 A$bloxorz$1345     045A GR  |   2 A$bloxorz$1346     045D GR
  2 A$bloxorz$135      0063 GR  |   2 A$bloxorz$1353     0460 GR
  2 A$bloxorz$1354     0463 GR  |   2 A$bloxorz$1355     0465 GR
  2 A$bloxorz$1356     0467 GR  |   2 A$bloxorz$1357     0469 GR
  2 A$bloxorz$1358     046B GR  |   2 A$bloxorz$1359     046F GR
  2 A$bloxorz$136      0064 GR  |   2 A$bloxorz$1366     0471 GR
  2 A$bloxorz$1367     0473 GR  |   2 A$bloxorz$1368     0475 GR
  2 A$bloxorz$1369     0477 GR  |   2 A$bloxorz$137      0065 GR
  2 A$bloxorz$1370     0479 GR  |   2 A$bloxorz$1377     047B GR
  2 A$bloxorz$138      0067 GR  |   2 A$bloxorz$1384     047E GR
  2 A$bloxorz$139      0069 GR  |   2 A$bloxorz$1391     0480 GR
  2 A$bloxorz$1392     0482 GR  |   2 A$bloxorz$1393     0484 GR
  2 A$bloxorz$1394     0486 GR  |   2 A$bloxorz$140      006B GR
  2 A$bloxorz$1401     0488 GR  |   2 A$bloxorz$1408     048B GR
  2 A$bloxorz$141      006D GR  |   2 A$bloxorz$1415     048D GR
  2 A$bloxorz$1416     048F GR  |   2 A$bloxorz$1417     0491 GR
  2 A$bloxorz$1418     0493 GR  |   2 A$bloxorz$142      006F GR
  2 A$bloxorz$1425     0495 GR  |   2 A$bloxorz$1438     0498 GR
  2 A$bloxorz$1439     049B GR  |   2 A$bloxorz$1440     049D GR
  2 A$bloxorz$1441     04A0 GR  |   2 A$bloxorz$1442     04A3 GR
  2 A$bloxorz$1443     04A5 GR  |   2 A$bloxorz$1444     04A8 GR
  2 A$bloxorz$1445     04AB GR  |   2 A$bloxorz$1446     04AD GR
  2 A$bloxorz$1447     04B0 GR  |   2 A$bloxorz$1453     04B2 GR
  2 A$bloxorz$1459     04B5 GR  |   2 A$bloxorz$1460     04B7 GR
  2 A$bloxorz$1466     04BA GR  |   2 A$bloxorz$1467     04BD GR
  2 A$bloxorz$1473     04C0 GR  |   2 A$bloxorz$1474     04C2 GR
  2 A$bloxorz$1475     04C6 GR  |   2 A$bloxorz$1482     04C8 GR
  2 A$bloxorz$1483     04CB GR  |   2 A$bloxorz$1484     04CD GR
  2 A$bloxorz$149      0071 GR  |   2 A$bloxorz$1490     04CF GR
  2 A$bloxorz$1491     04D1 GR  |   2 A$bloxorz$1498     04D4 GR
  2 A$bloxorz$1499     04D7 GR  |   2 A$bloxorz$1505     04D9 GR
  2 A$bloxorz$1506     04DB GR  |   2 A$bloxorz$1507     04DD GR
  2 A$bloxorz$1513     04E1 GR  |   2 A$bloxorz$1514     04E4 GR
  2 A$bloxorz$1515     04E6 GR  |   2 A$bloxorz$1516     04E9 GR
  2 A$bloxorz$1517     04EC GR  |   2 A$bloxorz$1518     04EE GR
  2 A$bloxorz$1525     04F1 GR  |   2 A$bloxorz$1526     04F4 GR
  2 A$bloxorz$1527     04F6 GR  |   2 A$bloxorz$1528     04F8 GR
  2 A$bloxorz$1529     04FA GR  |   2 A$bloxorz$1530     04FC GR
  2 A$bloxorz$1531     0500 GR  |   2 A$bloxorz$1538     0503 GR
  2 A$bloxorz$1539     0505 GR  |   2 A$bloxorz$1540     0507 GR
  2 A$bloxorz$1541     0509 GR  |   2 A$bloxorz$1542     050B GR
  2 A$bloxorz$1543     050D GR  |   2 A$bloxorz$1544     050F GR
  2 A$bloxorz$155      0073 GR  |   2 A$bloxorz$1551     0511 GR
  2 A$bloxorz$1552     0514 GR  |   2 A$bloxorz$1553     0516 GR
  2 A$bloxorz$1554     0519 GR  |   2 A$bloxorz$1555     051C GR
  2 A$bloxorz$156      0075 GR  |   2 A$bloxorz$1562     051E GR
  2 A$bloxorz$1569     0521 GR  |   2 A$bloxorz$157      0077 GR
  2 A$bloxorz$1570     0523 GR  |   2 A$bloxorz$1571     0525 GR
  2 A$bloxorz$1577     0527 GR  |   2 A$bloxorz$1578     052A GR
  2 A$bloxorz$1579     052C GR  |   2 A$bloxorz$158      0079 GR
  2 A$bloxorz$1580     052F GR  |   2 A$bloxorz$1581     0532 GR
  2 A$bloxorz$1588     0534 GR  |   2 A$bloxorz$1589     0536 GR
  2 A$bloxorz$159      007B GR  |   2 A$bloxorz$1590     0538 GR
  2 A$bloxorz$1596     053A GR  |   2 A$bloxorz$1597     053D GR
  2 A$bloxorz$1598     053E GR  |   2 A$bloxorz$1599     0540 GR
  2 A$bloxorz$160      007D GR  |   2 A$bloxorz$1600     0543 GR
  2 A$bloxorz$1601     0546 GR  |   2 A$bloxorz$1608     0548 GR
  2 A$bloxorz$161      0080 GR  |   2 A$bloxorz$1615     054A GR
  2 A$bloxorz$1616     054C GR  |   2 A$bloxorz$1617     054E GR
  2 A$bloxorz$162      0082 GR  |   2 A$bloxorz$1623     0550 GR
  2 A$bloxorz$1624     0553 GR  |   2 A$bloxorz$1625     0555 GR
  2 A$bloxorz$1626     0558 GR  |   2 A$bloxorz$1627     055B GR
  2 A$bloxorz$163      0084 GR  |   2 A$bloxorz$1634     055D GR
  2 A$bloxorz$1635     055F GR  |   2 A$bloxorz$1636     0561 GR
  2 A$bloxorz$1642     0563 GR  |   2 A$bloxorz$1643     0566 GR
  2 A$bloxorz$1644     0567 GR  |   2 A$bloxorz$1645     0569 GR
  2 A$bloxorz$1646     056C GR  |   2 A$bloxorz$1647     056E GR
  2 A$bloxorz$1648     0570 GR  |   2 A$bloxorz$1649     0573 GR
  2 A$bloxorz$165      0086 GR  |   2 A$bloxorz$1657     0575 GR
  2 A$bloxorz$1658     0577 GR  |   2 A$bloxorz$1661     0578 GR
  2 A$bloxorz$1662     057A GR  |   2 A$bloxorz$1671     057C GR
  2 A$bloxorz$1672     057E GR  |   2 A$bloxorz$1678     0581 GR
  2 A$bloxorz$1679     0583 GR  |   2 A$bloxorz$1685     0586 GR
  2 A$bloxorz$1686     0588 GR  |   2 A$bloxorz$1692     058B GR
  2 A$bloxorz$1693     058E GR  |   2 A$bloxorz$1699     0590 GR
  2 A$bloxorz$1705     0593 GR  |   2 A$bloxorz$1706     0595 GR
  2 A$bloxorz$1707     0597 GR  |   2 A$bloxorz$1715     0598 GR
  2 A$bloxorz$1716     059B GR  |   2 A$bloxorz$172      0088 GR
  2 A$bloxorz$1722     059D GR  |   2 A$bloxorz$1723     059F GR
  2 A$bloxorz$1724     05A1 GR  |   2 A$bloxorz$1725     05A4 GR
  2 A$bloxorz$1726     05A6 GR  |   2 A$bloxorz$173      008A GR
  2 A$bloxorz$1733     05A8 GR  |   2 A$bloxorz$1735     05AA GR
  2 A$bloxorz$1738     05AB GR  |   2 A$bloxorz$1739     05AD GR
  2 A$bloxorz$174      008C GR  |   2 A$bloxorz$1745     05AF GR
  2 A$bloxorz$1746     05B2 GR  |   2 A$bloxorz$175      008E GR
  2 A$bloxorz$1752     05B4 GR  |   2 A$bloxorz$1753     05B7 GR
  2 A$bloxorz$1754     05B8 GR  |   2 A$bloxorz$1755     05BA GR
  2 A$bloxorz$1756     05BD GR  |   2 A$bloxorz$1757     05BE GR
  2 A$bloxorz$1758     05C0 GR  |   2 A$bloxorz$1759     05C1 GR
  2 A$bloxorz$176      0090 GR  |   2 A$bloxorz$1760     05C2 GR
  2 A$bloxorz$1761     05C3 GR  |   2 A$bloxorz$1762     05C4 GR
  2 A$bloxorz$1763     05C6 GR  |   2 A$bloxorz$1764     05C8 GR
  2 A$bloxorz$1765     05CA GR  |   2 A$bloxorz$1766     05CC GR
  2 A$bloxorz$1767     05CE GR  |   2 A$bloxorz$1768     05D2 GR
  2 A$bloxorz$1769     05D3 GR  |   2 A$bloxorz$177      0092 GR
  2 A$bloxorz$1770     05D6 GR  |   2 A$bloxorz$1777     05D8 GR
  2 A$bloxorz$1778     05DB GR  |   2 A$bloxorz$1779     05DD GR
  2 A$bloxorz$178      0094 GR  |   2 A$bloxorz$1780     05DE GR
  2 A$bloxorz$1781     05E1 GR  |   2 A$bloxorz$1782     05E4 GR
  2 A$bloxorz$1783     05E5 GR  |   2 A$bloxorz$1789     05E8 GR
  2 A$bloxorz$179      0096 GR  |   2 A$bloxorz$1790     05EB GR
  2 A$bloxorz$1791     05ED GR  |   2 A$bloxorz$1792     05F0 GR
  2 A$bloxorz$1793     05F1 GR  |   2 A$bloxorz$1794     05F3 GR
  2 A$bloxorz$1795     05F5 GR  |   2 A$bloxorz$1796     05F6 GR
  2 A$bloxorz$1797     05F8 GR  |   2 A$bloxorz$1798     05FB GR
  2 A$bloxorz$1799     05FD GR  |   2 A$bloxorz$180      0098 GR
  2 A$bloxorz$1800     05FE GR  |   2 A$bloxorz$1801     0601 GR
  2 A$bloxorz$1802     0604 GR  |   2 A$bloxorz$1808     0607 GR
  2 A$bloxorz$1809     060B GR  |   2 A$bloxorz$181      009A GR
  2 A$bloxorz$1810     060D GR  |   2 A$bloxorz$1811     0610 GR
  2 A$bloxorz$1818     0613 GR  |   2 A$bloxorz$1819     0616 GR
  2 A$bloxorz$182      009C GR  |   2 A$bloxorz$1820     0617 GR
  2 A$bloxorz$1821     0618 GR  |   2 A$bloxorz$1822     0619 GR
  2 A$bloxorz$1823     061B GR  |   2 A$bloxorz$1824     061F GR
  2 A$bloxorz$183      009E GR  |   2 A$bloxorz$1830     0622 GR
  2 A$bloxorz$1836     0625 GR  |   2 A$bloxorz$184      00A1 GR
  2 A$bloxorz$1842     0628 GR  |   2 A$bloxorz$1843     062B GR
  2 A$bloxorz$1844     062D GR  |   2 A$bloxorz$185      00A3 GR
  2 A$bloxorz$1850     0630 GR  |   2 A$bloxorz$1851     0632 GR
  2 A$bloxorz$1857     0635 GR  |   2 A$bloxorz$186      00A5 GR
  2 A$bloxorz$1863     0638 GR  |   2 A$bloxorz$1864     063A GR
  2 A$bloxorz$187      00A9 GR  |   2 A$bloxorz$1870     063D GR
  2 A$bloxorz$1871     063F GR  |   2 A$bloxorz$1877     0642 GR
  2 A$bloxorz$1878     0645 GR  |   2 A$bloxorz$188      00AB GR
  2 A$bloxorz$1884     0648 GR  |   2 A$bloxorz$1885     064A GR
  2 A$bloxorz$1891     064E GR  |   2 A$bloxorz$1892     0651 GR
  2 A$bloxorz$1898     0653 GR  |   2 A$bloxorz$1899     0656 GR
  2 A$bloxorz$1905     0659 GR  |   2 A$bloxorz$1912     065C GR
  2 A$bloxorz$1913     065F GR  |   2 A$bloxorz$1914     0661 GR
  2 A$bloxorz$196      00AD GR  |   2 A$bloxorz$197      00AF GR
  2 A$bloxorz$1971     0694 GR  |   2 A$bloxorz$1972     0696 GR
  2 A$bloxorz$1978     0698 GR  |   2 A$bloxorz$1984     069B GR
  2 A$bloxorz$1985     069D GR  |   2 A$bloxorz$1988     069F GR
  2 A$bloxorz$1989     06A1 GR  |   2 A$bloxorz$1995     06A4 GR
  2 A$bloxorz$1996     06A6 GR  |   2 A$bloxorz$2002     06A9 GR
  2 A$bloxorz$2003     06AB GR  |   2 A$bloxorz$2004     06AD GR
  2 A$bloxorz$2005     06AF GR  |   2 A$bloxorz$2006     06B1 GR
  2 A$bloxorz$2007     06B4 GR  |   2 A$bloxorz$2010     06B6 GR
  2 A$bloxorz$2011     06B8 GR  |   2 A$bloxorz$2012     06BA GR
  2 A$bloxorz$2013     06BC GR  |   2 A$bloxorz$2019     06BF GR
  2 A$bloxorz$2020     06C1 GR  |   2 A$bloxorz$2021     06C3 GR
  2 A$bloxorz$2022     06C5 GR  |   2 A$bloxorz$2023     06C7 GR
  2 A$bloxorz$2024     06CA GR  |   2 A$bloxorz$2027     06CC GR
  2 A$bloxorz$2028     06CE GR  |   2 A$bloxorz$2029     06D0 GR
  2 A$bloxorz$203      00B2 GR  |   2 A$bloxorz$2030     06D2 GR
  2 A$bloxorz$2036     06D5 GR  |   2 A$bloxorz$2037     06D7 GR
  2 A$bloxorz$2038     06D9 GR  |   2 A$bloxorz$2039     06DB GR
  2 A$bloxorz$204      00B5 GR  |   2 A$bloxorz$2040     06DD GR
  2 A$bloxorz$2041     06E0 GR  |   2 A$bloxorz$2044     06E2 GR
  2 A$bloxorz$2045     06E4 GR  |   2 A$bloxorz$2046     06E6 GR
  2 A$bloxorz$2047     06E8 GR  |   2 A$bloxorz$2053     06EB GR
  2 A$bloxorz$2054     06ED GR  |   2 A$bloxorz$2055     06EF GR
  2 A$bloxorz$2056     06F1 GR  |   2 A$bloxorz$2057     06F3 GR
  2 A$bloxorz$2058     06F6 GR  |   2 A$bloxorz$2061     06F8 GR
  2 A$bloxorz$2062     06FA GR  |   2 A$bloxorz$2063     06FC GR
  2 A$bloxorz$2064     06FE GR  |   2 A$bloxorz$2070     0701 GR
  2 A$bloxorz$2071     0703 GR  |   2 A$bloxorz$2072     0705 GR
  2 A$bloxorz$2073     0707 GR  |   2 A$bloxorz$2074     0709 GR
  2 A$bloxorz$2075     070C GR  |   2 A$bloxorz$2078     070E GR
  2 A$bloxorz$2079     0710 GR  |   2 A$bloxorz$2080     0712 GR
  2 A$bloxorz$2081     0714 GR  |   2 A$bloxorz$2087     0717 GR
  2 A$bloxorz$2088     071A GR  |   2 A$bloxorz$2089     071C GR
  2 A$bloxorz$209      00B6 GR  |   2 A$bloxorz$2095     071E GR
  2 A$bloxorz$2101     0721 GR  |   2 A$bloxorz$2108     0724 GR
  2 A$bloxorz$2109     0727 GR  |   2 A$bloxorz$2110     0729 GR
  2 A$bloxorz$2116     072B GR  |   2 A$bloxorz$2117     072D GR
  2 A$bloxorz$212      00B8 GR  |   2 A$bloxorz$2123     0730 GR
  2 A$bloxorz$2130     0733 GR  |   2 A$bloxorz$2131     0736 GR
  2 A$bloxorz$2132     0738 GR  |   2 A$bloxorz$2138     073A GR
  2 A$bloxorz$2139     073C GR  |   2 A$bloxorz$2145     073F GR
  2 A$bloxorz$215      00BA GR  |   2 A$bloxorz$2152     0742 GR
  2 A$bloxorz$2153     0745 GR  |   2 A$bloxorz$2154     0747 GR
  2 A$bloxorz$2160     0749 GR  |   2 A$bloxorz$2161     074B GR
  2 A$bloxorz$2167     074E GR  |   2 A$bloxorz$2169     0751 GR
  2 A$bloxorz$2170     0753 GR  |   2 A$bloxorz$218      00BD GR
  2 A$bloxorz$221      00BF GR  |   2 A$bloxorz$2237     0791 GR
  2 A$bloxorz$2238     0793 GR  |   2 A$bloxorz$224      00C1 GR
  2 A$bloxorz$2244     0795 GR  |   2 A$bloxorz$2250     0798 GR
  2 A$bloxorz$2251     079A GR  |   2 A$bloxorz$2254     079C GR
  2 A$bloxorz$2255     079E GR  |   2 A$bloxorz$2261     07A1 GR
  2 A$bloxorz$2262     07A3 GR  |   2 A$bloxorz$2268     07A6 GR
  2 A$bloxorz$2269     07A8 GR  |   2 A$bloxorz$227      00C3 GR
  2 A$bloxorz$2270     07AA GR  |   2 A$bloxorz$2271     07AC GR
  2 A$bloxorz$2272     07AE GR  |   2 A$bloxorz$2273     07B1 GR
  2 A$bloxorz$2276     07B3 GR  |   2 A$bloxorz$2277     07B5 GR
  2 A$bloxorz$2278     07B7 GR  |   2 A$bloxorz$2279     07B9 GR
  2 A$bloxorz$2285     07BC GR  |   2 A$bloxorz$2286     07BE GR
  2 A$bloxorz$2287     07C0 GR  |   2 A$bloxorz$2288     07C2 GR
  2 A$bloxorz$2289     07C4 GR  |   2 A$bloxorz$2290     07C7 GR
  2 A$bloxorz$2293     07C9 GR  |   2 A$bloxorz$2294     07CB GR
  2 A$bloxorz$2295     07CD GR  |   2 A$bloxorz$2296     07CF GR
  2 A$bloxorz$230      00C5 GR  |   2 A$bloxorz$2302     07D2 GR
  2 A$bloxorz$2303     07D4 GR  |   2 A$bloxorz$2304     07D6 GR
  2 A$bloxorz$2305     07D8 GR  |   2 A$bloxorz$2306     07DA GR
  2 A$bloxorz$2307     07DD GR  |   2 A$bloxorz$2310     07DF GR
  2 A$bloxorz$2311     07E1 GR  |   2 A$bloxorz$2312     07E3 GR
  2 A$bloxorz$2313     07E5 GR  |   2 A$bloxorz$2319     07E8 GR
  2 A$bloxorz$2320     07EA GR  |   2 A$bloxorz$2321     07EC GR
  2 A$bloxorz$2322     07EE GR  |   2 A$bloxorz$2323     07F0 GR
  2 A$bloxorz$2324     07F3 GR  |   2 A$bloxorz$2327     07F5 GR
  2 A$bloxorz$2328     07F7 GR  |   2 A$bloxorz$2329     07F9 GR
  2 A$bloxorz$233      00C7 GR  |   2 A$bloxorz$2330     07FB GR
  2 A$bloxorz$2336     07FE GR  |   2 A$bloxorz$2337     0801 GR
  2 A$bloxorz$2338     0803 GR  |   2 A$bloxorz$2344     0805 GR
  2 A$bloxorz$2350     0808 GR  |   2 A$bloxorz$2356     080B GR
  2 A$bloxorz$236      00C9 GR  |   2 A$bloxorz$2363     080E GR
  2 A$bloxorz$2364     0811 GR  |   2 A$bloxorz$2365     0813 GR
  2 A$bloxorz$2371     0815 GR  |   2 A$bloxorz$2372     0818 GR
  2 A$bloxorz$2378     081B GR  |   2 A$bloxorz$2384     081E GR
  2 A$bloxorz$2385     0820 GR  |   2 A$bloxorz$239      00CC GR
  2 A$bloxorz$2391     0823 GR  |   2 A$bloxorz$2397     0826 GR
  2 A$bloxorz$2404     0829 GR  |   2 A$bloxorz$2405     082C GR
  2 A$bloxorz$2406     082E GR  |   2 A$bloxorz$2412     0830 GR
  2 A$bloxorz$2413     0832 GR  |   2 A$bloxorz$2415     0835 GR
  2 A$bloxorz$2416     0837 GR  |   2 A$bloxorz$2419     0839 GR
  2 A$bloxorz$242      00CF GR  |   2 A$bloxorz$2425     083B GR
  2 A$bloxorz$2431     083E GR  |   2 A$bloxorz$2432     0841 GR
  2 A$bloxorz$2433     0842 GR  |   2 A$bloxorz$2434     0844 GR
  2 A$bloxorz$2440     0847 GR  |   2 A$bloxorz$2441     0849 GR
  2 A$bloxorz$2447     084B GR  |   2 A$bloxorz$2448     084C GR
  2 A$bloxorz$2449     084E GR  |   2 A$bloxorz$2451     084F GR
  2 A$bloxorz$2457     0852 GR  |   2 A$bloxorz$2464     0855 GR
  2 A$bloxorz$2465     0858 GR  |   2 A$bloxorz$2466     085A GR
  2 A$bloxorz$2472     085C GR  |   2 A$bloxorz$2474     085F GR
  2 A$bloxorz$2475     0861 GR  |   2 A$bloxorz$248      00D1 GR
  2 A$bloxorz$2483     0862 GR  |   2 A$bloxorz$2484     0865 GR
  2 A$bloxorz$2490     0867 GR  |   2 A$bloxorz$2491     0869 GR
  2 A$bloxorz$2492     086B GR  |   2 A$bloxorz$2498     086E GR
  2 A$bloxorz$2499     0870 GR  |   2 A$bloxorz$2500     0872 GR
  2 A$bloxorz$2501     0874 GR  |   2 A$bloxorz$2502     0877 GR
  2 A$bloxorz$2504     0879 GR  |   2 A$bloxorz$251      00D2 GR
  2 A$bloxorz$2537     0895 GR  |   2 A$bloxorz$2538     0897 GR
  2 A$bloxorz$254      00D3 GR  |   2 A$bloxorz$2544     0899 GR
  2 A$bloxorz$2550     089C GR  |   2 A$bloxorz$2551     089E GR
  2 A$bloxorz$2554     08A0 GR  |   2 A$bloxorz$2555     08A2 GR
  2 A$bloxorz$2561     08A5 GR  |   2 A$bloxorz$2562     08A7 GR
  2 A$bloxorz$2568     08AA GR  |   2 A$bloxorz$2569     08AC GR
  2 A$bloxorz$257      00D4 GR  |   2 A$bloxorz$2570     08AE GR
  2 A$bloxorz$2571     08B0 GR  |   2 A$bloxorz$2572     08B2 GR
  2 A$bloxorz$2573     08B5 GR  |   2 A$bloxorz$2576     08B7 GR
  2 A$bloxorz$2577     08B9 GR  |   2 A$bloxorz$2578     08BB GR
  2 A$bloxorz$2579     08BD GR  |   2 A$bloxorz$2585     08C0 GR
  2 A$bloxorz$2586     08C2 GR  |   2 A$bloxorz$2587     08C4 GR
  2 A$bloxorz$2588     08C6 GR  |   2 A$bloxorz$2589     08C8 GR
  2 A$bloxorz$2590     08CB GR  |   2 A$bloxorz$2593     08CD GR
  2 A$bloxorz$2594     08CF GR  |   2 A$bloxorz$2595     08D1 GR
  2 A$bloxorz$2596     08D3 GR  |   2 A$bloxorz$260      00D5 GR
  2 A$bloxorz$2602     08D6 GR  |   2 A$bloxorz$2603     08D8 GR
  2 A$bloxorz$2604     08DA GR  |   2 A$bloxorz$2605     08DC GR
  2 A$bloxorz$2606     08DE GR  |   2 A$bloxorz$2607     08E1 GR
  2 A$bloxorz$2610     08E3 GR  |   2 A$bloxorz$2611     08E5 GR
  2 A$bloxorz$2612     08E7 GR  |   2 A$bloxorz$2613     08E9 GR
  2 A$bloxorz$2619     08EC GR  |   2 A$bloxorz$2620     08EF GR
  2 A$bloxorz$2621     08F1 GR  |   2 A$bloxorz$2627     08F3 GR
  2 A$bloxorz$263      00D7 GR  |   2 A$bloxorz$2634     08F5 GR
  2 A$bloxorz$2635     08F7 GR  |   2 A$bloxorz$2636     08F9 GR
  2 A$bloxorz$2637     08FB GR  |   2 A$bloxorz$2638     08FE GR
  2 A$bloxorz$2639     0900 GR  |   2 A$bloxorz$2640     0902 GR
  2 A$bloxorz$2641     0904 GR  |   2 A$bloxorz$2642     0906 GR
  2 A$bloxorz$2648     0908 GR  |   2 A$bloxorz$2655     090B GR
  2 A$bloxorz$2656     090E GR  |   2 A$bloxorz$2657     0910 GR
  2 A$bloxorz$266      00D8 GR  |   2 A$bloxorz$2663     0912 GR
  2 A$bloxorz$2665     0915 GR  |   2 A$bloxorz$2666     0917 GR
  2 A$bloxorz$2669     0919 GR  |   2 A$bloxorz$2670     091B GR
  2 A$bloxorz$2676     091D GR  |   2 A$bloxorz$2677     091F GR
  2 A$bloxorz$2683     0923 GR  |   2 A$bloxorz$2684     0925 GR
  2 A$bloxorz$2685     0927 GR  |   2 A$bloxorz$2686     0929 GR
  2 A$bloxorz$2687     092C GR  |   2 A$bloxorz$2688     092E GR
  2 A$bloxorz$269      00DA GR  |   2 A$bloxorz$2696     092F GR
  2 A$bloxorz$2697     0932 GR  |   2 A$bloxorz$2704     0933 GR
  2 A$bloxorz$2712     0936 GR  |   2 A$bloxorz$2713     0939 GR
  2 A$bloxorz$2719     093B GR  |   2 A$bloxorz$272      00DB GR
  2 A$bloxorz$2725     093E GR  |   2 A$bloxorz$2726     0941 GR
  2 A$bloxorz$2733     0944 GR  |   2 A$bloxorz$2734     0947 GR
  2 A$bloxorz$2737     0948 GR  |   2 A$bloxorz$2738     094A GR
  2 A$bloxorz$2744     094C GR  |   2 A$bloxorz$275      00DD GR
  2 A$bloxorz$2750     094F GR  |   2 A$bloxorz$2751     0952 GR
  2 A$bloxorz$2757     0955 GR  |   2 A$bloxorz$2758     0958 GR
  2 A$bloxorz$2759     0959 GR  |   2 A$bloxorz$2765     095C GR
  2 A$bloxorz$2766     095E GR  |   2 A$bloxorz$2772     0962 GR
  2 A$bloxorz$2773     0965 GR  |   2 A$bloxorz$2774     0968 GR
  2 A$bloxorz$278      00DF GR  |   2 A$bloxorz$2780     096A GR
  2 A$bloxorz$2781     096D GR  |   2 A$bloxorz$2782     096E GR
  2 A$bloxorz$2783     0971 GR  |   2 A$bloxorz$2784     0973 GR
  2 A$bloxorz$2785     0975 GR  |   2 A$bloxorz$2786     0977 GR
  2 A$bloxorz$2787     0979 GR  |   2 A$bloxorz$2793     097C GR
  2 A$bloxorz$2794     097F GR  |   2 A$bloxorz$2795     0981 GR
  2 A$bloxorz$2796     0984 GR  |   2 A$bloxorz$2797     0985 GR
  2 A$bloxorz$2798     0987 GR  |   2 A$bloxorz$2799     0989 GR
  2 A$bloxorz$2800     098A GR  |   2 A$bloxorz$2801     098C GR
  2 A$bloxorz$2802     098E GR  |   2 A$bloxorz$2803     0991 GR
  2 A$bloxorz$2804     0993 GR  |   2 A$bloxorz$2805     0994 GR
  2 A$bloxorz$2806     0996 GR  |   2 A$bloxorz$2807     0998 GR
  2 A$bloxorz$2808     099B GR  |   2 A$bloxorz$281      00E0 GR
  2 A$bloxorz$2815     099D GR  |   2 A$bloxorz$2816     09A0 GR
  2 A$bloxorz$2822     09A4 GR  |   2 A$bloxorz$2823     09A7 GR
  2 A$bloxorz$2824     09A8 GR  |   2 A$bloxorz$2830     09AB GR
  2 A$bloxorz$2831     09AC GR  |   2 A$bloxorz$2832     09AE GR
  2 A$bloxorz$2833     09B1 GR  |   2 A$bloxorz$2834     09B2 GR
  2 A$bloxorz$2835     09B4 GR  |   2 A$bloxorz$2836     09B5 GR
  2 A$bloxorz$2837     09B6 GR  |   2 A$bloxorz$2838     09B7 GR
  2 A$bloxorz$2839     09B8 GR  |   2 A$bloxorz$284      00E2 GR
  2 A$bloxorz$2840     09BA GR  |   2 A$bloxorz$2841     09BC GR
  2 A$bloxorz$2842     09BE GR  |   2 A$bloxorz$2843     09C0 GR
  2 A$bloxorz$2844     09C2 GR  |   2 A$bloxorz$2851     09C6 GR
  2 A$bloxorz$2859     09C9 GR  |   2 A$bloxorz$2865     09CD GR
  2 A$bloxorz$2866     09CF GR  |   2 A$bloxorz$287      00E4 GR
  2 A$bloxorz$2872     09D2 GR  |   2 A$bloxorz$2873     09D5 GR
  2 A$bloxorz$2874     09D8 GR  |   2 A$bloxorz$2875     09DB GR
  2 A$bloxorz$2876     09DE GR  |   2 A$bloxorz$2877     09E1 GR
  2 A$bloxorz$2878     09E4 GR  |   2 A$bloxorz$2879     09E7 GR
  2 A$bloxorz$2880     09EA GR  |   2 A$bloxorz$2881     09ED GR
  2 A$bloxorz$2882     09F0 GR  |   2 A$bloxorz$2883     09F3 GR
  2 A$bloxorz$2884     09F6 GR  |   2 A$bloxorz$2885     09F9 GR
  2 A$bloxorz$2886     09FC GR  |   2 A$bloxorz$2887     09FF GR
  2 A$bloxorz$2888     0A02 GR  |   2 A$bloxorz$2889     0A05 GR
  2 A$bloxorz$2895     0A08 GR  |   2 A$bloxorz$2896     0A0B GR
  2 A$bloxorz$2897     0A0D GR  |   2 A$bloxorz$2898     0A10 GR
  2 A$bloxorz$290      00E6 GR  |   2 A$bloxorz$2904     0A13 GR
  2 A$bloxorz$2905     0A16 GR  |   2 A$bloxorz$2906     0A18 GR
  2 A$bloxorz$2913     0A1A GR  |   2 A$bloxorz$2914     0A1D GR
  2 A$bloxorz$2921     0A1F GR  |   2 A$bloxorz$2923     0A22 GR
  2 A$bloxorz$2924     0A24 GR  |   2 A$bloxorz$293      00E8 GR
  2 A$bloxorz$2932     0A26 GR  |   2 A$bloxorz$2938     0A29 GR
  2 A$bloxorz$2939     0A2A GR  |   2 A$bloxorz$2945     0A2D GR
  2 A$bloxorz$2951     0A30 GR  |   2 A$bloxorz$2952     0A33 GR
  2 A$bloxorz$2953     0A35 GR  |   2 A$bloxorz$2959     0A37 GR
  2 A$bloxorz$296      00EA GR  |   2 A$bloxorz$2960     0A38 GR
  2 A$bloxorz$2966     0A3B GR  |   2 A$bloxorz$2967     0A3D GR
  2 A$bloxorz$2968     0A40 GR  |   2 A$bloxorz$2970     0A43 GR
  2 A$bloxorz$2971     0A46 GR  |   2 A$bloxorz$2972     0A48 GR
  2 A$bloxorz$2978     0A4A GR  |   2 A$bloxorz$2979     0A4C GR
  2 A$bloxorz$2985     0A4F GR  |   2 A$bloxorz$2986     0A51 GR
  2 A$bloxorz$2987     0A54 GR  |   2 A$bloxorz$2989     0A56 GR
  2 A$bloxorz$299      00ED GR  |   2 A$bloxorz$2990     0A59 GR
  2 A$bloxorz$2991     0A5B GR  |   2 A$bloxorz$2997     0A5D GR
  2 A$bloxorz$2998     0A5F GR  |   2 A$bloxorz$3004     0A62 GR
  2 A$bloxorz$3005     0A64 GR  |   2 A$bloxorz$3006     0A67 GR
  2 A$bloxorz$3008     0A69 GR  |   2 A$bloxorz$3009     0A6C GR
  2 A$bloxorz$3010     0A6E GR  |   2 A$bloxorz$3016     0A70 GR
  2 A$bloxorz$3017     0A72 GR  |   2 A$bloxorz$302      00EF GR
  2 A$bloxorz$3023     0A75 GR  |   2 A$bloxorz$3024     0A77 GR
  2 A$bloxorz$3034     0A7A GR  |   2 A$bloxorz$3035     0A7D GR
  2 A$bloxorz$3036     0A7F GR  |   2 A$bloxorz$3042     0A81 GR
  2 A$bloxorz$3043     0A84 GR  |   2 A$bloxorz$3049     0A87 GR
  2 A$bloxorz$305      00F1 GR  |   2 A$bloxorz$3050     0A89 GR
  2 A$bloxorz$3057     0A8D GR  |   2 A$bloxorz$3063     0A90 GR
  2 A$bloxorz$3064     0A93 GR  |   2 A$bloxorz$3065     0A95 GR
  2 A$bloxorz$3071     0A97 GR  |   2 A$bloxorz$3072     0A9A GR
  2 A$bloxorz$3078     0A9C GR  |   2 A$bloxorz$308      00F3 GR
  2 A$bloxorz$3085     0A9F GR  |   2 A$bloxorz$3086     0AA2 GR
  2 A$bloxorz$3087     0AA4 GR  |   2 A$bloxorz$3088     0AA6 GR
  2 A$bloxorz$3089     0AA9 GR  |   2 A$bloxorz$3095     0AAB GR
  2 A$bloxorz$3102     0AAE GR  |   2 A$bloxorz$3103     0AB1 GR
  2 A$bloxorz$3104     0AB3 GR  |   2 A$bloxorz$3105     0AB5 GR
  2 A$bloxorz$3106     0AB8 GR  |   2 A$bloxorz$311      00F5 GR
  2 A$bloxorz$3112     0ABA GR  |   2 A$bloxorz$3113     0ABD GR
  2 A$bloxorz$3119     0ABF GR  |   2 A$bloxorz$3120     0AC2 GR
  2 A$bloxorz$3121     0AC3 GR  |   2 A$bloxorz$3122     0AC6 GR
  2 A$bloxorz$3129     0AC8 GR  |   2 A$bloxorz$3130     0ACB GR
  2 A$bloxorz$3136     0ACE GR  |   2 A$bloxorz$3137     0AD1 GR
  2 A$bloxorz$3138     0AD2 GR  |   2 A$bloxorz$314      00F7 GR
  2 A$bloxorz$3145     0AD5 GR  |   2 A$bloxorz$3152     0AD8 GR
  2 A$bloxorz$3153     0ADB GR  |   2 A$bloxorz$3154     0ADD GR
  2 A$bloxorz$3160     0ADF GR  |   2 A$bloxorz$3162     0AE2 GR
  2 A$bloxorz$3165     0AE3 GR  |   2 A$bloxorz$3166     0AE5 GR
  2 A$bloxorz$317      00F9 GR  |   2 A$bloxorz$3172     0AE7 GR
  2 A$bloxorz$3173     0AE8 GR  |   2 A$bloxorz$3179     0AEB GR
  2 A$bloxorz$3180     0AED GR  |   2 A$bloxorz$3186     0AF1 GR
  2 A$bloxorz$3192     0AF4 GR  |   2 A$bloxorz$3193     0AF6 GR
  2 A$bloxorz$3194     0AF8 GR  |   2 A$bloxorz$320      00FB GR
  2 A$bloxorz$3200     0AFB GR  |   2 A$bloxorz$3201     0AFD GR
  2 A$bloxorz$3202     0AFF GR  |   2 A$bloxorz$3208     0B02 GR
  2 A$bloxorz$3209     0B04 GR  |   2 A$bloxorz$3210     0B06 GR
  2 A$bloxorz$3211     0B09 GR  |   2 A$bloxorz$3212     0B0B GR
  2 A$bloxorz$3213     0B0D GR  |   2 A$bloxorz$3219     0B0F GR
  2 A$bloxorz$3220     0B11 GR  |   2 A$bloxorz$3227     0B14 GR
  2 A$bloxorz$3228     0B16 GR  |   2 A$bloxorz$323      00FD GR
  2 A$bloxorz$3234     0B19 GR  |   2 A$bloxorz$3235     0B1B GR
  2 A$bloxorz$3241     0B1E GR  |   2 A$bloxorz$3247     0B21 GR
  2 A$bloxorz$3253     0B24 GR  |   2 A$bloxorz$3259     0B27 GR
  2 A$bloxorz$326      00FF GR  |   2 A$bloxorz$3271     0B2A GR
  2 A$bloxorz$3277     0B2D GR  |   2 A$bloxorz$3278     0B30 GR
  2 A$bloxorz$3279     0B32 GR  |   2 A$bloxorz$3280     0B36 GR
  2 A$bloxorz$3281     0B37 GR  |   2 A$bloxorz$3282     0B39 GR
  2 A$bloxorz$3283     0B3A GR  |   2 A$bloxorz$3284     0B3B GR
  2 A$bloxorz$3285     0B3D GR  |   2 A$bloxorz$329      0100 GR
  2 A$bloxorz$33       0000 GR  |   2 A$bloxorz$3302     0B53 GR
  2 A$bloxorz$3308     0B56 GR  |   2 A$bloxorz$3314     0B59 GR
  2 A$bloxorz$332      0101 GR  |   2 A$bloxorz$3321     0B5C GR
  2 A$bloxorz$3327     0B5F GR  |   2 A$bloxorz$3333     0B62 GR
  2 A$bloxorz$3340     0B65 GR  |   2 A$bloxorz$3346     0B68 GR
  2 A$bloxorz$335      0103 GR  |   2 A$bloxorz$3352     0B6B GR
  2 A$bloxorz$3359     0B6E GR  |   2 A$bloxorz$3365     0B71 GR
  2 A$bloxorz$3371     0B74 GR  |   2 A$bloxorz$3378     0B77 GR
  2 A$bloxorz$338      0104 GR  |   2 A$bloxorz$3384     0B7A GR
  2 A$bloxorz$3390     0B7D GR  |   2 A$bloxorz$3397     0B80 GR
  2 A$bloxorz$34       0002 GR  |   2 A$bloxorz$3403     0B83 GR
  2 A$bloxorz$3409     0B86 GR  |   2 A$bloxorz$341      0106 GR
  2 A$bloxorz$3416     0B89 GR  |   2 A$bloxorz$3422     0B8C GR
  2 A$bloxorz$3428     0B8F GR  |   2 A$bloxorz$3435     0B91 GR
  2 A$bloxorz$344      0107 GR  |   2 A$bloxorz$3441     0B94 GR
  2 A$bloxorz$3447     0B97 GR  |   2 A$bloxorz$3454     0B99 GR
  2 A$bloxorz$3460     0B9C GR  |   2 A$bloxorz$347      0109 GR
  2 A$bloxorz$3472     0B9F GR  |   2 A$bloxorz$3473     0BA2 GR
  2 A$bloxorz$3474     0BA4 GR  |   2 A$bloxorz$3480     0BA6 GR
  2 A$bloxorz$3486     0BA9 GR  |   2 A$bloxorz$3487     0BAC GR
  2 A$bloxorz$3490     0BAE GR  |   2 A$bloxorz$3491     0BB0 GR
  2 A$bloxorz$3497     0BB3 GR  |   2 A$bloxorz$35       0004 GR
  2 A$bloxorz$350      010A GR  |   2 A$bloxorz$3503     0BB6 GR
  2 A$bloxorz$3512     0BB9 GR  |   2 A$bloxorz$3513     0BBC GR
  2 A$bloxorz$3519     0BC0 GR  |   2 A$bloxorz$3520     0BC3 GR
  2 A$bloxorz$3521     0BC6 GR  |   2 A$bloxorz$3527     0BC9 GR
  2 A$bloxorz$3528     0BCD GR  |   2 A$bloxorz$353      010C GR
  2 A$bloxorz$3534     0BD1 GR  |   2 A$bloxorz$3535     0BD4 GR
  2 A$bloxorz$3541     0BD7 GR  |   2 A$bloxorz$3542     0BDA GR
  2 A$bloxorz$3543     0BDD GR  |   2 A$bloxorz$3549     0BE1 GR
  2 A$bloxorz$3550     0BE3 GR  |   2 A$bloxorz$3556     0BE6 GR
  2 A$bloxorz$3557     0BE9 GR  |   2 A$bloxorz$356      010E GR
  2 A$bloxorz$359      0110 GR  |   2 A$bloxorz$362      0112 GR
  2 A$bloxorz$365      0114 GR  |   2 A$bloxorz$368      0117 GR
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
  2 L104               0944 R   |   2 L108               099D R
  2 L109               0A1F R   |   2 L110               0A1A R
  2 L111               0A22 R   |   2 L113               0A43 R
  2 L114               0A7A R   |   2 L115               0A56 R
  2 L116               0A69 R   |   2 L117               0A8D R
  2 L118               0A9F R   |   2 L119               0AAE R
  2 L120               0AD8 R   |   2 L121               0AC8 R
  2 L122               0AD5 R   |   2 L124               0AE2 R
  2 L126               0B14 R   |   2 L127               0B9F R
  2 L128               0B53 R   |   2 L129               0B65 R
  2 L130               0B6E R   |   2 L131               0B5C R
  2 L132               0B77 R   |   2 L133               0B80 R
  2 L134               0B89 R   |   2 L135               0B91 R
  2 L136               0B99 R   |   2 L137               0B41 R
  2 L138               0BB9 R   |   2 L141               0B2A R
  2 L17                0220 R   |   2 L18                022A R
  2 L19                0234 R   |   2 L2                 0006 R
  2 L21                023E R   |   2 L28                0366 R
  2 L33                03BB R   |   2 L34                03BE R
  2 L39                03F3 R   |   2 L40                0460 R
  2 L41                0498 R   |   2 L42                0471 R
  2 L43                0480 R   |   2 L45                047B R
  2 L46                047E R   |   2 L47                0488 R
  2 L48                048B R   |   2 L49                0495 R
  2 L5                 004C R   |   2 L50                0498 R
  2 L51                04C8 R   |   2 L52                04D4 R
  2 L53                04F1 R   |   2 L54                0503 R
  2 L55                0521 R   |   2 L57                0511 R
  2 L58                051E R   |   2 L59                0534 R
  2 L6                 0086 R   |   2 L60                0548 R
  2 L61                055D R   |   2 L62                0575 R
  2 L63                0575 R   |   2 L64                048D R
  2 L65                054A R   |   2 L69                05A8 R
  2 L7                 0088 R   |   2 L70                05AA R
  2 L73                05D8 R   |   2 L74                0613 R
  2 L75                065C R   |   2 L78                0724 R
  2 L79                0733 R   |   2 L8                 0071 R
  2 L80                0742 R   |   2 L82                0751 R
  2 L84                080E R   |   2 L85                0829 R
  2 L87                0835 R   |   2 L89                0855 R
  2 L9                 0055 R   |   2 L91                085F R
  2 L94                0879 R   |   2 L96                090B R
  2 L97                08F5 R   |   2 L99                0915 R
  2 LC0                01CA R   |   2 LC1                0663 R
  2 LC10               087A R   |   2 LC11               0888 R
  2 LC12               088F R   |   2 LC2                0670 R
  2 LC3                0679 R   |   2 LC4                0682 R
  2 LC5                068B R   |   2 LC6                0755 R
  2 LC7                0760 R   |   2 LC8                076F R
  2 LC9                077E R   |   2 LF33D2_1           011A R
  2 LF33D2_3           015B R   |   2 LF33D2_4           017B R
  2 LF33D2_5           019A R   |   2 LF33D2_6           01B4 R
    _Vec_Buttons       **** GX  |     _Vec_Text_Widt     **** GX
    ___DP_to_C8        **** GX  |     ___DP_to_D0        **** GX
    ___Do_Sound        **** GX  |     ___Draw_VLp        **** GX
    ___Init_Music_     **** GX  |     ___Intensity_a     **** GX
    ___Joy_Digital     **** GX  |     ___Moveto_d        **** GX
    ___Print_Str_d     **** GX  |     ___Read_Btns       **** GX
    ___Reset0Ref       **** GX  |     ___Wait_Recal      **** GX
  2 _arcadeEnd         01D5 GR  |   4 _arcadeIndex       001E GR
  2 _arcadeLevels      0C64 R   |   2 _arcadeMenu        0694 GR
  4 _arcadeMode        001C GR  |   4 _arcadeSelecti     001D GR
    _blockAnimatin     **** GX  |   2 _blockFalling      0839 GR
  2 _blockMoving       03D8 GR  |   2 _blockMovingAt     0948 GR
  2 _blockMovingTo     034E GR  |     _blockOrientat     **** GX
    _blockStartLev     **** GX  |   2 _blockWaiting      0A26 GR
    _blockX            **** GX  |     _blockY            **** GX
    _blockYOfs         **** GX  |   2 _changeMusic       00AD GR
  2 _clearMenu         0895 GR  |   3 _currentMusic      0000 GR
    _delay10ms         **** GX  |     _doBlockAnimat     **** GX
    _dp_VIA_t1_cnt     **** GX  |     _drawBlock         **** GX
  2 _drawField         00B6 GR  |     _endX              **** GX
    _endY              **** GX  |   2 _fallingMusic      0C26 GR
  4 _frames            0017 GR  |   4 _gameState         001F GR
    _getField          **** GX  |   4 _infoText          0001 GR
    _initLevel         **** GX  |     _initSwatches      **** GX
    _isField           **** GX  |   2 _itoa              002E GR
    _lastBlockDire     **** GX  |   2 _led8              0C4E GR
    _level             **** GX  |     _levelCount        **** GX
  2 _levelEndMusic     0C0C GR  |   4 _levelHighscor     0019 GR
    _levelNumber       **** GX  |     _levelOffset       **** GX
    _levels            **** GX  |     _lineYX_yx_s_d     **** GX
  2 _main              0AE3 GR  |   2 _mainMenu          0791 GR
  2 _moveBlock         03A6 GR  |     _moveBlockImpl     **** GX
  4 _moveCount         0015 GR  |   2 _movingMusic       0C46 GR
    _musicInit         **** GX  |     _musicPlay         **** GX
    _nextBank          **** GX  |   2 _nextLevel         092F GR
  4 _picAvailable      001B GR  |     _picRead           **** GX
    _picWrite          **** GX  |   2 _readEeprom        0598 GR
  2 _runtimeError      0000 GR  |   2 _sendCommand       0578 GR
  2 _setBank           0919 GR  |   2 _showInfo          0324 GR
  2 _showInfo2         0242 GR  |   4 _si                0000 R
    _splitMode         **** GX  |   2 _startBlockFal     03BF GR
  2 _startLevel        05AB GR  |   2 _startMusic        0BEC GR
    _swapSplit         **** GX  |     _swatchSwitch      **** GX
    _testMerge         **** GX  |   2 _updateInfoTex     0367 GR
  3 _vecx              0002 GR  |   2 _writeEeprom       0862 GR
  2 drawFieldLoop1     00D1 R   |   2 not_full_cont      0144 R
  2 not_full_cont_     0151 R   |   2 scale_negative     01AB R
  2 scale_negative     0129 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  C78   flags  100
   3 .data            size    4   flags  100
   4 .bss             size   20   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

