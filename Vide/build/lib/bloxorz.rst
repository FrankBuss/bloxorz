                              1 ;;; gcc for m6809 : Sep 13 2017 10:25:42
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mint8
                              5 	.module	bloxorz.enr.c
                              6 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ;  -fno-time-report -I/home/frank/bin/Vide/C/PeerC/vectrex/include
                             12 ;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
                             13 ;  /home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c
                             14 ;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             15 ;  -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
                             16 ;  -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
                             17 ;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             18 ;  -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
                             19 ;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             20 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             21 ;  -fpcc-struct-return -fpeephole -fsched-interblock -fsched-spec
                             22 ;  -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
                             23 ;  -fsplit-wide-types -ftoplevel-reorder -ftrapping-math -ftree-ccp
                             24 ;  -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             25 ;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             26 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             27 ;  -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
                             28 ;  -ftree-ter -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
                             29 ;  -fzero-initialized-in-bss
                             30 ;  Compiler executable checksum: 2c98d3c5ec6c12badb1abdde57df156f
                             31 	.area .text
                             32 	.globl _runtimeError
   4D9A                      33 _runtimeError:
   4D9A 34 60         [ 7]   34 	pshs	y,u	; 
   4D9C 32 7C         [ 5]   35 	leas	-4,s	; ,,
   4D9E 31 84         [ 4]   36 	leay	,x	;  msg, msg
                             37 ;----- asm -----
                             38 ;  204 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             39 	; #ENR#[194]    while (1) {
                             40 ;  0 "" 2
                             41 ;--- end asm ---
   4DA0                      42 L2:
                             43 ;----- asm -----
                             44 ;  206 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             45 	; #ENR#[195]        frwait();
                             46 ;  0 "" 2
                             47 ;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4DA0 BD F1 92      [ 8]   48 	jsr ___Wait_Recal; BIOS call
                             49 ;  0 "" 2
                             50 ;  208 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             51 	; #ENR#[196]        Intensity_a(0x5f);
                             52 ;  0 "" 2
                             53 ;--- end asm ---
   4DA3 C6 5F         [ 2]   54 	ldb	#95	; ,
   4DA5 E7 63         [ 5]   55 	stb	3,s	; , a
                             56 ;----- asm -----
                             57 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4DA7 A6 63         [ 5]   58 	lda 3,s	;  a
   4DA9 BD F2 AB      [ 8]   59 	jsr ___Intensity_a; BIOS call
                             60 ;  0 "" 2
                             61 ;  210 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             62 	; #ENR#[197]        Vec_Text_Width = 90;
                             63 ;  0 "" 2
                             64 ;--- end asm ---
   4DAC C6 5A         [ 2]   65 	ldb	#90	; ,
   4DAE F7 C8 2B      [ 5]   66 	stb	_Vec_Text_Width	; , Vec_Text_Width
                             67 ;----- asm -----
                             68 ;  212 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             69 	; #ENR#[198]        Print_Str_d(-10, -110, msg);
                             70 ;  0 "" 2
                             71 ;--- end asm ---
   4DB1 C6 F6         [ 2]   72 	ldb	#-10	; ,
   4DB3 E7 63         [ 5]   73 	stb	3,s	; , a
   4DB5 C6 92         [ 2]   74 	ldb	#-110	; ,
   4DB7 E7 62         [ 5]   75 	stb	2,s	; , b
   4DB9 10 AF E4      [ 6]   76 	sty	,s	;  msg, u
                             77 ;----- asm -----
                             78 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4DBC A6 63         [ 5]   79 	lda 3,s	;  a
   4DBE E6 62         [ 5]   80 	ldb 2,s	;  b
   4DC0 EE E4         [ 5]   81 	ldu ,s	;  u
   4DC2 BD F3 7A      [ 8]   82 	jsr ___Print_Str_d; BIOS call
                             83 ;  0 "" 2
                             84 ;--- end asm ---
   4DC5 7E 4D A0      [ 4]   85 	jmp	L2	; 
                             86 	.globl _itoa
   4DC8                      87 _itoa:
   4DC8 34 60         [ 7]   88 	pshs	y,u	; 
   4DCA 32 71         [ 5]   89 	leas	-15,s	; ,,
                             90 ;----- asm -----
                             91 ;  244 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             92 	; #ENR#[223]    uint16_t muls[] = { 100, 10, 1 };
                             93 ;  0 "" 2
                             94 ;--- end asm ---
   4DCC CC 00 64      [ 3]   95 	ldd	#100	; ,
   4DCF ED 69         [ 6]   96 	std	9,s	; , muls
   4DD1 CC 00 0A      [ 3]   97 	ldd	#10	; ,
   4DD4 ED 6B         [ 6]   98 	std	11,s	; , muls
   4DD6 CC 00 01      [ 3]   99 	ldd	#1	; ,
   4DD9 ED 6D         [ 6]  100 	std	13,s	; , muls
                            101 ;----- asm -----
                            102 ;  246 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            103 	; #ENR#[224]    if (number > 999) number = 999;
                            104 ;  0 "" 2
                            105 ;--- end asm ---
   4DDB 31 84         [ 4]  106 	leay	,x	;  number.118, number
   4DDD 8C 03 E7      [ 4]  107 	cmpx	#999	;cmphi:	;  number.118,
   4DE0 23 04         [ 3]  108 	bls	L5	; 
   4DE2 10 8E 03 E7   [ 4]  109 	ldy	#999	;  number.118,
   4DE6                     110 L5:
                            111 ;----- asm -----
                            112 ;  248 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            113 	; #ENR#[225]    for (uint8_t i = 0; i < 3; i++) {
                            114 ;  0 "" 2
                            115 ;--- end asm ---
   4DE6 30 69         [ 5]  116 	leax	9,s	; ,,
   4DE8 AF 65         [ 6]  117 	stx	5,s	; , ivtmp.114
   4DEA EC E8 15      [ 6]  118 	ldd	21,s	; , text
   4DED ED 67         [ 6]  119 	std	7,s	; , ivtmp.116
   4DEF                     120 L9:
                            121 ;----- asm -----
                            122 ;  250 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            123 	; #ENR#[226]        uint8_t d = 0;
                            124 ;  0 "" 2
                            125 ;  252 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            126 	; #ENR#[227]        while (number >= muls[i]) {
                            127 ;  0 "" 2
                            128 ;--- end asm ---
   4DEF AE 65         [ 6]  129 	ldx	5,s	; , ivtmp.114
   4DF1 AE 84         [ 5]  130 	ldx	,x	; , muls
   4DF3 AF E4         [ 5]  131 	stx	,s	; , D.2290
   4DF5 34 20         [ 6]  132 	pshs	y	;cmphi: R:y with R:x	;  number.118,
   4DF7 AC E1         [ 9]  133 	cmpx	,s++	;cmphi:	; 
   4DF9 22 25         [ 3]  134 	bhi	L6	; 
   4DFB 1F 10         [ 6]  135 	tfr	x,d	; ,
   4DFD 40            [ 2]  136 	nega
   4DFE 50            [ 2]  137 	negb
   4DFF 82 00         [ 2]  138 	sbca	#0
   4E01 ED 63         [ 6]  139 	std	3,s	; , ivtmp.104
   4E03 1F 20         [ 6]  140 	tfr	y,d	;  number.118,
   4E05 A3 E4         [ 6]  141 	subd	,s	;subhi: R:d -= ,s	; , D.2290
   4E07 1F 02         [ 6]  142 	tfr	d,y	; , number.118
   4E09 6F 62         [ 7]  143 	clr	2,s	;  d
   4E0B                     144 L8:
                            145 ;----- asm -----
                            146 ;  254 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            147 	; #ENR#[228]            d++;
                            148 ;  0 "" 2
                            149 ;--- end asm ---
   4E0B 6C 62         [ 7]  150 	inc	2,s	;  d
                            151 ;----- asm -----
                            152 ;  256 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            153 	; #ENR#[229]            number -= muls[i];
                            154 ;  0 "" 2
                            155 ;--- end asm ---
   4E0D EC 63         [ 6]  156 	ldd	3,s	; , ivtmp.104
   4E0F 33 AB         [ 8]  157 	leau	d,y	;  number.117,, number.118
   4E11 EC E4         [ 5]  158 	ldd	,s	; , D.2290
   4E13 30 CB         [ 8]  159 	leax	d,u	;  tmp85,, number.117
   4E15 34 10         [ 6]  160 	pshs	x	;cmphi: R:x with R:d	;  tmp85,
   4E17 10 A3 E1      [10]  161 	cmpd	,s++	;cmphi:	; 
   4E1A 22 06         [ 3]  162 	bhi	L7	; 
   4E1C 31 C4         [ 4]  163 	leay	,u	;  number.118, number.117
   4E1E 20 EB         [ 3]  164 	bra	L8	; 
   4E20                     165 L6:
   4E20 6F 62         [ 7]  166 	clr	2,s	;  d
   4E22                     167 L7:
                            168 ;----- asm -----
                            169 ;  259 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            170 	; #ENR#[231]        text[i] = d + '0';
                            171 ;  0 "" 2
                            172 ;--- end asm ---
   4E22 E6 62         [ 5]  173 	ldb	2,s	; , d
   4E24 CB 30         [ 2]  174 	addb	#48	; ,
   4E26 AE 67         [ 6]  175 	ldx	7,s	; , ivtmp.116
   4E28 30 01         [ 5]  176 	leax	1,x	; ,,
   4E2A AF 67         [ 6]  177 	stx	7,s	; , ivtmp.116
   4E2C 30 1F         [ 5]  178 	leax	-1,x	; ,,
   4E2E E7 80         [ 6]  179 	stb	,x+	; ,
   4E30 AE 65         [ 6]  180 	ldx	5,s	; , ivtmp.114
   4E32 30 02         [ 5]  181 	leax	2,x	; ,,
   4E34 AF 65         [ 6]  182 	stx	5,s	; , ivtmp.114
   4E36 1F 40         [ 6]  183 	tfr	s,d	; ,
   4E38 C3 00 0F      [ 4]  184 	addd	#15	; ,
   4E3B 34 06         [ 7]  185 	pshs	d	;cmphi: R:d with R:x	; ,
   4E3D AC E1         [ 9]  186 	cmpx	,s++	;cmphi:	; 
   4E3F 10 26 FF AC   [ 6]  187 	lbne	L9	; 
   4E43 32 6F         [ 5]  188 	leas	15,s	; ,,
   4E45 35 E0         [ 8]  189 	puls	y,u,pc	; 
                            190 	.globl _changeMusic
   4E47                     191 _changeMusic:
                            192 ;----- asm -----
                            193 ;  276 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            194 	; #ENR#[244]    tstat = 1;
                            195 ;  0 "" 2
                            196 ;--- end asm ---
   4E47 C6 01         [ 2]  197 	ldb	#1	; ,
   4E49 F7 C8 56      [ 5]  198 	stb	-14250	; ,
                            199 ;----- asm -----
                            200 ;  278 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            201 	; #ENR#[245]    currentMusic = music;
                            202 ;  0 "" 2
                            203 ;--- end asm ---
   4E4C BF C8 89      [ 6]  204 	stx	_currentMusic	;  music, currentMusic
   4E4F 39            [ 5]  205 	rts
                            206 	.globl _drawField
   4E50                     207 _drawField:
                            208 ;----- asm -----
                            209 ;  386 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E50 86 35         [ 2]  210 	LDA     #0x35
                            211 ;  0 "" 2
                            212 ;  387 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E52 97 01         [ 4]  213 	STA     *0xd001     ;Store intensity in D/A
                            214 ;  0 "" 2
                            215 ;  388 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E54 CC 05 04      [ 3]  216 	LDD     #0x0504          ;mux disabled channel 2
                            217 ;  0 "" 2
                            218 ;  389 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E57 97 00         [ 4]  219 	STA     *0xd000
                            220 ;  0 "" 2
                            221 ;  390 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E59 D7 00         [ 4]  222 	STB     *0xd000     ;mux enabled channel 2
                            223 ;  0 "" 2
                            224 ;  391 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E5B D7 00         [ 4]  225 	STB     *0xd000     ;do it again just because
                            226 ;  0 "" 2
                            227 ;  392 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E5D C6 01         [ 2]  228 	LDB     #0x01
                            229 ;  0 "" 2
                            230 ;  393 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E5F D7 00         [ 4]  231 	STB     *0xd000     ;turn off mux
                            232 ;  0 "" 2
                            233 ;  398 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E61 34 40         [ 6]  234 		pshs u
                            235 ;  0 "" 2
                            236 ;  399 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E63 8E C9 09      [ 3]  237 		ldx #_lineYX_yx_s_dy_dx
                            238 ;  0 "" 2
                            239 ;  400 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E66 CE 98 CE      [ 3]  240 		ldu #0x98ce
                            241 ;  0 "" 2
                            242 ;  401 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E69 EC 84         [ 5]  243 		ldd ,x
                            244 ;  0 "" 2
                            245 ;  403 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E6B                     246 	drawFieldLoop1:
                            247 ;  0 "" 2
                            248 ;  418 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E6B 12            [ 2]  249 		    nop 
                            250 ;  0 "" 2
                            251 ;  419 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E6C 12            [ 2]  252 		    nop 
                            253 ;  0 "" 2
                            254 ;  420 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E6D 12            [ 2]  255 		    nop 
                            256 ;  0 "" 2
                            257 ;  421 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E6E 12            [ 2]  258 		    nop 
                            259 ;  0 "" 2
                            260 ;  425 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E6F 97 01         [ 4]  261 	                    STA      *0xd001                  ;Store Y in D/A register 
                            262 ;  0 "" 2
                            263 ;  426 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E71 4F            [ 2]  264 	                    CLRA     
                            265 ;  0 "" 2
                            266 ;  427 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E72 97 00         [ 4]  267 	                    STA      *0xd000                  ;Enable mux 
                            268 ;  0 "" 2
                            269 ;  428 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E74 4C            [ 2]  270 	                    INCA 
                            271 ;  0 "" 2
                            272 ;  430 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E75 DF 0B         [ 5]  273 	                    STU      *0xd00B                    ; 
                            274 ;  0 "" 2
                            275 ;  431 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E77 DD 00         [ 5]  276 	                    STD      *0xd000                  ;Store X in D/A register 
                            277 ;  0 "" 2
                            278 ;  432 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E79 4A            [ 2]  279 	                    DECA 
                            280 ;  0 "" 2
                            281 ;  433 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E7A 97 05         [ 4]  282 	                    STA      *0xd005               ;enable timer 
                            283 ;  0 "" 2
                            284 ;  436 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E7C 30 02         [ 5]  285 		leax 2,x ; 5
                            286 ;  0 "" 2
                            287 ;  437 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E7E A6 80         [ 6]  288 		lda ,x+ ; 6
                            289 ;  0 "" 2
                            290 ;  438 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E80 2B 41         [ 3]  291 	bmi scale_negative_7f; 3 - negative means, the next line is in offset to this line, not from 0,0
                            292 ;  0 "" 2
                            293 ;  439 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E82 97 04         [ 4]  294 		sta *0xd004 ; 4
                            295 ;  0 "" 2
                            296 ;  440 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E84 CE FF 98      [ 3]  297 		ldu #0xff98 ; 3
                            298 ;  0 "" 2
                            299 ;  441 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E87 EC 84         [ 5]  300 		ldd ,x ; 5
                            301 ;  0 "" 2
                            302 ;  448 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E89 34 7E         [11]  303 		    pshs u,x,y,d,dp    ; 14
                            304 ;  0 "" 2
                            305 ;  449 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E8B 35 7E         [11]  306 		    puls u,x,y,d,dp    ; 14 
                            307 ;  0 "" 2
                            308 ;  450 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E8D 34 7E         [11]  309 		    pshs u,x,y,d,dp    ; 14
                            310 ;  0 "" 2
                            311 ;  451 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E8F 35 7E         [11]  312 		    puls u,x,y,d,dp    ; 14 
                            313 ;  0 "" 2
                            314 ;  452 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E91 34 7E         [11]  315 		    pshs u,x,y,d,dp    ; 14
                            316 ;  0 "" 2
                            317 ;  453 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E93 35 7E         [11]  318 		    puls u,x,y,d,dp    ; 14 
                            319 ;  0 "" 2
                            320 ;  454 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E95 34 40         [ 6]  321 		    pshs u    ; 7 
                            322 ;  0 "" 2
                            323 ;  455 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E97 35 40         [ 6]  324 		    puls u    ; 7 
                            325 ;  0 "" 2
                            326 ;  459 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E99 12            [ 2]  327 		    nop 
                            328 ;  0 "" 2
                            329 ;  460 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E9A 12            [ 2]  330 		    nop 
                            331 ;  0 "" 2
                            332 ;  463 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E9B 97 01         [ 4]  333 	                    STA      *0xd001                  ;Store Y in D/A register 
                            334 ;  0 "" 2
                            335 ;  464 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E9D 4F            [ 2]  336 	                    CLRA     
                            337 ;  0 "" 2
                            338 ;  465 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4E9E 97 00         [ 4]  339 	                    STA      *0xd000                  ;Enable mux 
                            340 ;  0 "" 2
                            341 ;  466 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EA0 4C            [ 2]  342 	                    INCA 
                            343 ;  0 "" 2
                            344 ;  467 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EA1 DD 00         [ 5]  345 	                    STD      *0xd000                  ;Store X in D/A register 
                            346 ;  0 "" 2
                            347 ;  468 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EA3 4A            [ 2]  348 	                    DECA 
                            349 ;  0 "" 2
                            350 ;  469 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EA4 DF 0A         [ 5]  351 	                    stu      *0xd00a               ;unclear shift regigster 
                            352 ;  0 "" 2
                            353 ;  470 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EA6 97 05         [ 4]  354 	                    STA      *0xd005               ;enable timer 
                            355 ;  0 "" 2
                            356 ;  472 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EA8 30 02         [ 5]  357 	leax 2,x
                            358 ;  0 "" 2
                            359 ;  473 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EAA C6 7F         [ 2]  360 		ldb #0x7f
                            361 ;  0 "" 2
                            362 ;  474 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EAC D7 04         [ 4]  363 		stb *0xd004
                            364 ;  0 "" 2
                            365 ;  475 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EAE CE 98 CE      [ 3]  366 		ldu #0x98ce
                            367 ;  0 "" 2
                            368 ;  476 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EB1 CC 40 CC      [ 3]  369 		LDd     #0x40CC
                            370 ;  0 "" 2
                            371 ;  478 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EB4 95 0D         [ 4]  372 	LF33D2_1:           BITA     *0xD00D               ;  
                            373 ;  0 "" 2
                            374 ;  479 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EB6 27 FC         [ 3]  375 	                    BEQ      LF33D2_1                        ;  
                            376 ;  0 "" 2
                            377 ;  480 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EB8 4F            [ 2]  378 	                    clra 
                            379 ;  0 "" 2
                            380 ;  481 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EB9 97 0A         [ 4]  381 	                    sta      *0xd00a               ;clear shift regigster 
                            382 ;  0 "" 2
                            383 ;  484 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EBB D7 0C         [ 4]  384 		STB *0xd00C ; reset 0
                            385 ;  0 "" 2
                            386 ;  485 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EBD EC 84         [ 5]  387 		ldd ,x
                            388 ;  0 "" 2
                            389 ;  486 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EBF 26 AA         [ 3]  390 		bne drawFieldLoop1
                            391 ;  0 "" 2
                            392 ;  487 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EC1 35 C0         [ 7]  393 		puls u, pc
                            394 ;  0 "" 2
                            395 ;  494 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EC3                     396 	scale_negative_7f:
                            397 ;  0 "" 2
                            398 ;  495 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EC3 84 7F         [ 2]  399 	anda #0x7f ; 2
                            400 ;  0 "" 2
                            401 ;  496 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EC5 97 04         [ 4]  402 		sta *0xd004 ; 4
                            403 ;  0 "" 2
                            404 ;  497 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EC7 CE FF 98      [ 3]  405 		ldu #0xff98 ; 4
                            406 ;  0 "" 2
                            407 ;  498 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4ECA EC 84         [ 5]  408 		ldd ,x ; 5
                            409 ;  0 "" 2
                            410 ;  501 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4ECC 34 7E         [11]  411 		    pshs u,x,y,d,dp    ; 14
                            412 ;  0 "" 2
                            413 ;  502 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4ECE 35 7E         [11]  414 		    puls u,x,y,d,dp    ; 14 
                            415 ;  0 "" 2
                            416 ;  503 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4ED0 34 7E         [11]  417 		    pshs u,x,y,d,dp    ; 14
                            418 ;  0 "" 2
                            419 ;  504 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4ED2 35 7E         [11]  420 		    puls u,x,y,d,dp    ; 14 
                            421 ;  0 "" 2
                            422 ;  505 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4ED4 34 7E         [11]  423 		    pshs u,x,y,d,dp    ; 14
                            424 ;  0 "" 2
                            425 ;  506 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4ED6 35 7E         [11]  426 		    puls u,x,y,d,dp    ; 14 
                            427 ;  0 "" 2
                            428 ;  507 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4ED8 1F 88         [ 6]  429 		    tfr a,a    ; 6 
                            430 ;  0 "" 2
                            431 ;  508 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EDA 1F 88         [ 6]  432 		    tfr a,a    ; 6 
                            433 ;  0 "" 2
                            434 ;  509 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EDC 21 E5         [ 3]  435 		    brn   scale_negative_7f ; 3 
                            436 ;  0 "" 2
                            437 ;  514 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EDE                     438 		not_full_cont:
                            439 ;  0 "" 2
                            440 ;  515 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EDE 97 01         [ 4]  441 	                    STA      *0xd001                  ;Store Y in D/A register 
                            442 ;  0 "" 2
                            443 ;  516 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EE0 4F            [ 2]  444 	                    CLRA     
                            445 ;  0 "" 2
                            446 ;  517 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EE1 97 00         [ 4]  447 	                    STA      *0xd000                  ;Enable mux 
                            448 ;  0 "" 2
                            449 ;  518 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EE3 4C            [ 2]  450 	                    INCA 
                            451 ;  0 "" 2
                            452 ;  519 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EE4 DD 00         [ 5]  453 	                    STD      *0xd000                  ;Store X in D/A register 
                            454 ;  0 "" 2
                            455 ;  520 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EE6 4A            [ 2]  456 	                    DECA 
                            457 ;  0 "" 2
                            458 ;  521 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EE7 DF 0A         [ 5]  459 	                    stu      *0xd00a               ;unclear shift regigster 
                            460 ;  0 "" 2
                            461 ;  522 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EE9 97 05         [ 4]  462 	                    STA      *0xd005               ;enable timer 
                            463 ;  0 "" 2
                            464 ;  524 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EEB                     465 		not_full_cont_after:
                            466 ;  0 "" 2
                            467 ;  525 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EEB 30 02         [ 5]  468 	leax 2,x
                            469 ;  0 "" 2
                            470 ;  526 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EED CE 98 CE      [ 3]  471 		ldu #0x98ce
                            472 ;  0 "" 2
                            473 ;  529 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EF0 12            [ 2]  474 	nop
                            475 ;  0 "" 2
                            476 ;  530 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EF1 21 02         [ 3]  477 	brn LF33D2_3
                            478 ;  0 "" 2
                            479 ;  533 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EF3 C6 40         [ 2]  480 	                    LDb      #0x40                         ;  
                            481 ;  0 "" 2
                            482 ;  534 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EF5 D5 0D         [ 4]  483 	LF33D2_3:           BITb     *0xD00D               ;  
                            484 ;  0 "" 2
                            485 ;  535 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EF7 27 FC         [ 3]  486 	                    BEQ      LF33D2_3                        ;  
                            487 ;  0 "" 2
                            488 ;  536 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EF9 97 0A         [ 4]  489 	                    sta      *0xd00a               ;clear shift regigster, a is still zero 
                            490 ;  0 "" 2
                            491 ;  541 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EFB EC 84         [ 5]  492 		ldd ,x
                            493 ;  0 "" 2
                            494 ;  545 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EFD 97 01         [ 4]  495 	                    STA      *0xd001                  ;Store Y in D/A register 
                            496 ;  0 "" 2
                            497 ;  546 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4EFF 4F            [ 2]  498 	                    CLRA     
                            499 ;  0 "" 2
                            500 ;  547 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F00 97 00         [ 4]  501 	                    STA      *0xd000                  ;Enable mux 
                            502 ;  0 "" 2
                            503 ;  548 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F02 4C            [ 2]  504 	                    INCA 
                            505 ;  0 "" 2
                            506 ;  549 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F03 DD 00         [ 5]  507 	                    STD      *0xd000                  ;Store X in D/A register 
                            508 ;  0 "" 2
                            509 ;  550 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F05 4A            [ 2]  510 	                    DECA 
                            511 ;  0 "" 2
                            512 ;  551 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F06 97 05         [ 4]  513 	                    STA      *0xd005               ;enable timer 
                            514 ;  0 "" 2
                            515 ;  554 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F08 30 02         [ 5]  516 		leax 2,x ; 5
                            517 ;  0 "" 2
                            518 ;  555 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F0A A6 80         [ 6]  519 		lda ,x+ ; 6
                            520 ;  0 "" 2
                            521 ;  556 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F0C 2B 37         [ 3]  522 	bmi scale_negative; next is also no full move
                            523 ;  0 "" 2
                            524 ;  557 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F0E 97 04         [ 4]  525 		sta *0xd004 ; 4
                            526 ;  0 "" 2
                            527 ;  558 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F10 CE FF 98      [ 3]  528 		ldu #0xff98 ; 4
                            529 ;  0 "" 2
                            530 ;  564 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F13 86 40         [ 2]  531 	                    LDa      #0x40                         ;  
                            532 ;  0 "" 2
                            533 ;  565 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F15 95 0D         [ 4]  534 	LF33D2_4:           BITa     *0xD00D               ;  
                            535 ;  0 "" 2
                            536 ;  566 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F17 27 FC         [ 3]  537 	                    BEQ      LF33D2_4                        ;  
                            538 ;  0 "" 2
                            539 ;  570 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F19 EC 84         [ 5]  540 		ldd ,x ; 4
                            541 ;  0 "" 2
                            542 ;  571 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F1B 97 01         [ 4]  543 	                    STA      *0xd001                  ;Store Y in D/A register 
                            544 ;  0 "" 2
                            545 ;  572 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F1D 4F            [ 2]  546 	                    CLRA     
                            547 ;  0 "" 2
                            548 ;  573 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F1E 97 00         [ 4]  549 	                    STA      *0xd000                  ;Enable mux 
                            550 ;  0 "" 2
                            551 ;  574 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F20 4C            [ 2]  552 	                    INCA 
                            553 ;  0 "" 2
                            554 ;  575 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F21 DD 00         [ 5]  555 	                    STD      *0xd000                  ;Store X in D/A register 
                            556 ;  0 "" 2
                            557 ;  576 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F23 4A            [ 2]  558 	                    DECA 
                            559 ;  0 "" 2
                            560 ;  577 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F24 DF 0A         [ 5]  561 	                    stu      *0xd00a               ;unclear shift regigster 
                            562 ;  0 "" 2
                            563 ;  578 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F26 97 05         [ 4]  564 	                    STA      *0xd005               ;enable timer 
                            565 ;  0 "" 2
                            566 ;  580 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F28 30 02         [ 5]  567 	leax 2,x
                            568 ;  0 "" 2
                            569 ;  581 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F2A C6 7F         [ 2]  570 		ldb #0x7f
                            571 ;  0 "" 2
                            572 ;  583 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F2C D7 04         [ 4]  573 		stb *0xd004
                            574 ;  0 "" 2
                            575 ;  584 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F2E CE 98 CE      [ 3]  576 		ldu #0x98ce
                            577 ;  0 "" 2
                            578 ;  585 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F31 CC 40 CC      [ 3]  579 		LDd #0x40CC
                            580 ;  0 "" 2
                            581 ;  586 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F34 95 0D         [ 4]  582 	LF33D2_5:           BITA     *0xD00D               ;  
                            583 ;  0 "" 2
                            584 ;  587 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F36 27 FC         [ 3]  585 	                    BEQ      LF33D2_5                        ;  
                            586 ;  0 "" 2
                            587 ;  588 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F38 4F            [ 2]  588 	                    clra 
                            589 ;  0 "" 2
                            590 ;  589 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F39 97 0A         [ 4]  591 	                    sta      *0xd00a               ;clear shift regigster 
                            592 ;  0 "" 2
                            593 ;  592 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F3B D7 0C         [ 4]  594 		STB *0xd00C ; reset 0
                            595 ;  0 "" 2
                            596 ;  593 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F3D EC 84         [ 5]  597 		ldd ,x
                            598 ;  0 "" 2
                            599 ;  594 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F3F 10 26 FF 28   [ 6]  600 		lbne drawFieldLoop1
                            601 ;  0 "" 2
                            602 ;  595 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F43 35 C0         [ 7]  603 		puls u, pc
                            604 ;  0 "" 2
                            605 ;  598 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F45                     606 	scale_negative:
                            607 ;  0 "" 2
                            608 ;  599 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F45 84 7F         [ 2]  609 	anda #0x7f ; 2
                            610 ;  0 "" 2
                            611 ;  600 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F47 97 04         [ 4]  612 		sta *0xd004 ; 4
                            613 ;  0 "" 2
                            614 ;  601 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F49 CE FF 98      [ 3]  615 		ldu #0xff98 ; 4
                            616 ;  0 "" 2
                            617 ;  604 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F4C 86 40         [ 2]  618 	                    LDA      #0x40                         ;  
                            619 ;  0 "" 2
                            620 ;  605 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F4E 95 0D         [ 4]  621 	LF33D2_6:           BITA     *0xD00D               ;  
                            622 ;  0 "" 2
                            623 ;  606 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F50 27 FC         [ 3]  624 	                    BEQ      LF33D2_6                        ;  
                            625 ;  0 "" 2
                            626 ;  607 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F52 EC 84         [ 5]  627 		ldd ,x ; 5
                            628 ;  0 "" 2
                            629 ;  610 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F54 97 01         [ 4]  630 	                    STA      *0xd001                  ;Store Y in D/A register 
                            631 ;  0 "" 2
                            632 ;  611 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F56 4F            [ 2]  633 	                    CLRA     
                            634 ;  0 "" 2
                            635 ;  612 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F57 97 00         [ 4]  636 	                    STA      *0xd000                  ;Enable mux 
                            637 ;  0 "" 2
                            638 ;  613 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F59 4C            [ 2]  639 	                    INCA 
                            640 ;  0 "" 2
                            641 ;  614 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F5A DD 00         [ 5]  642 	                    STD      *0xd000                  ;Store X in D/A register 
                            643 ;  0 "" 2
                            644 ;  615 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F5C 4A            [ 2]  645 	                    DECA 
                            646 ;  0 "" 2
                            647 ;  616 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F5D DF 0A         [ 5]  648 	                    stu      *0xd00a               ;unclear shift regigster 
                            649 ;  0 "" 2
                            650 ;  617 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F5F 97 05         [ 4]  651 	                    STA      *0xd005               ;enable timer 
                            652 ;  0 "" 2
                            653 ;  618 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4F61 20 88         [ 3]  654 	 bra not_full_cont_after
                            655 ;  0 "" 2
                            656 ;--- end asm ---
   4F63 39            [ 5]  657 	rts
   4F64                     658 LC0:
   4F64 47                  659 	.byte	0x47
   4F65 41                  660 	.byte	0x41
   4F66 4D                  661 	.byte	0x4D
   4F67 45                  662 	.byte	0x45
   4F68 20                  663 	.byte	0x20
   4F69 4F                  664 	.byte	0x4F
   4F6A 56                  665 	.byte	0x56
   4F6B 45                  666 	.byte	0x45
   4F6C 52                  667 	.byte	0x52
   4F6D 80                  668 	.byte	0x80
   4F6E 00                  669 	.byte	0x00
                            670 	.globl _arcadeEnd
   4F6F                     671 _arcadeEnd:
   4F6F 34 40         [ 6]  672 	pshs	u	; 
   4F71 32 7C         [ 5]  673 	leas	-4,s	; ,,
                            674 ;----- asm -----
                            675 ;  1079 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            676 	; #ENR#[841]    Read_Btns();
                            677 ;  0 "" 2
                            678 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F73 BD F1 BA      [ 8]  679 	jsr ___Read_Btns; BIOS call
                            680 ;  0 "" 2
                            681 ;  1081 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            682 	; #ENR#[842]    Intensity_a(0x5f);
                            683 ;  0 "" 2
                            684 ;--- end asm ---
   4F76 C6 5F         [ 2]  685 	ldb	#95	; ,
   4F78 E7 62         [ 5]  686 	stb	2,s	; , a
                            687 ;----- asm -----
                            688 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F7A A6 62         [ 5]  689 	lda 2,s	;  a
   4F7C BD F2 AB      [ 8]  690 	jsr ___Intensity_a; BIOS call
                            691 ;  0 "" 2
                            692 ;  1083 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            693 	; #ENR#[843]    Vec_Text_Width = 90;
                            694 ;  0 "" 2
                            695 ;--- end asm ---
   4F7F C6 5A         [ 2]  696 	ldb	#90	; ,
   4F81 F7 C8 2B      [ 5]  697 	stb	_Vec_Text_Width	; , Vec_Text_Width
                            698 ;----- asm -----
                            699 ;  1085 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            700 	; #ENR#[844]    Print_Str_d(100, -70, "GAME OVER�");
                            701 ;  0 "" 2
                            702 ;--- end asm ---
   4F84 CB 0A         [ 2]  703 	addb	#10	; ,
   4F86 E7 62         [ 5]  704 	stb	2,s	; , a
   4F88 C6 BA         [ 2]  705 	ldb	#-70	; ,
   4F8A E7 63         [ 5]  706 	stb	3,s	; , b
   4F8C 8E 4F 64      [ 3]  707 	ldx	#LC0	; ,
   4F8F AF E4         [ 5]  708 	stx	,s	; , u
                            709 ;----- asm -----
                            710 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F91 A6 62         [ 5]  711 	lda 2,s	;  a
   4F93 E6 63         [ 5]  712 	ldb 3,s	;  b
   4F95 EE E4         [ 5]  713 	ldu ,s	;  u
   4F97 BD F3 7A      [ 8]  714 	jsr ___Print_Str_d; BIOS call
                            715 ;  0 "" 2
                            716 ;  1087 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            717 	; #ENR#[845]    Print_Str_d(50, -110, infoText);
                            718 ;  0 "" 2
                            719 ;--- end asm ---
   4F9A C6 32         [ 2]  720 	ldb	#50	; ,
   4F9C E7 63         [ 5]  721 	stb	3,s	; , a
   4F9E C6 92         [ 2]  722 	ldb	#-110	; ,
   4FA0 E7 62         [ 5]  723 	stb	2,s	; , b
   4FA2 8E CB 30      [ 3]  724 	ldx	#_infoText	; ,
   4FA5 AF E4         [ 5]  725 	stx	,s	; , u
                            726 ;----- asm -----
                            727 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4FA7 A6 63         [ 5]  728 	lda 3,s	;  a
   4FA9 E6 62         [ 5]  729 	ldb 2,s	;  b
   4FAB EE E4         [ 5]  730 	ldu ,s	;  u
   4FAD BD F3 7A      [ 8]  731 	jsr ___Print_Str_d; BIOS call
                            732 ;  0 "" 2
                            733 ;  1089 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            734 	; #ENR#[846]    if (Vec_Buttons & 1) {
                            735 ;  0 "" 2
                            736 ;--- end asm ---
   4FB0 F6 C8 11      [ 5]  737 	ldb	_Vec_Buttons	; , Vec_Buttons
   4FB3 C5 01         [ 2]  738 	bitb	#1	; ,
   4FB5 27 03         [ 3]  739 	beq	L17	; 
                            740 ;----- asm -----
                            741 ;  1091 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            742 	; #ENR#[847]        gameState = MainMenu;
                            743 ;  0 "" 2
                            744 ;--- end asm ---
   4FB7 7F CB 4E      [ 7]  745 	clr	_gameState	;  gameState
   4FBA                     746 L17:
                            747 ;----- asm -----
                            748 ;  1094 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            749 	; #ENR#[849]    if (Vec_Buttons & 2) {
                            750 ;  0 "" 2
                            751 ;--- end asm ---
   4FBA F6 C8 11      [ 5]  752 	ldb	_Vec_Buttons	; , Vec_Buttons
   4FBD C5 02         [ 2]  753 	bitb	#2	; ,
   4FBF 27 03         [ 3]  754 	beq	L18	; 
                            755 ;----- asm -----
                            756 ;  1096 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            757 	; #ENR#[850]        gameState = MainMenu;
                            758 ;  0 "" 2
                            759 ;--- end asm ---
   4FC1 7F CB 4E      [ 7]  760 	clr	_gameState	;  gameState
   4FC4                     761 L18:
                            762 ;----- asm -----
                            763 ;  1099 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            764 	; #ENR#[852]    if (Vec_Buttons & 4) {
                            765 ;  0 "" 2
                            766 ;--- end asm ---
   4FC4 F6 C8 11      [ 5]  767 	ldb	_Vec_Buttons	; , Vec_Buttons
   4FC7 C5 04         [ 2]  768 	bitb	#4	; ,
   4FC9 27 03         [ 3]  769 	beq	L19	; 
                            770 ;----- asm -----
                            771 ;  1101 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            772 	; #ENR#[853]        gameState = MainMenu;
                            773 ;  0 "" 2
                            774 ;--- end asm ---
   4FCB 7F CB 4E      [ 7]  775 	clr	_gameState	;  gameState
   4FCE                     776 L19:
                            777 ;----- asm -----
                            778 ;  1104 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            779 	; #ENR#[855]    if (Vec_Buttons & 8) {
                            780 ;  0 "" 2
                            781 ;--- end asm ---
   4FCE F6 C8 11      [ 5]  782 	ldb	_Vec_Buttons	; , Vec_Buttons
   4FD1 C5 08         [ 2]  783 	bitb	#8	; ,
   4FD3 27 03         [ 3]  784 	beq	L21	; 
                            785 ;----- asm -----
                            786 ;  1106 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            787 	; #ENR#[856]        gameState = MainMenu;
                            788 ;  0 "" 2
                            789 ;--- end asm ---
   4FD5 7F CB 4E      [ 7]  790 	clr	_gameState	;  gameState
   4FD8                     791 L21:
   4FD8 32 64         [ 5]  792 	leas	4,s	; ,,
   4FDA 35 C0         [ 7]  793 	puls	u,pc	; 
                            794 	.globl _showInfo2
   4FDC                     795 _showInfo2:
   4FDC 34 20         [ 6]  796 	pshs	y	; 
   4FDE 32 7D         [ 5]  797 	leas	-3,s	; ,,
                            798 ;----- asm -----
                            799 ;  1155 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            800 	; #ENR#[892]    zergnd();
                            801 ;  0 "" 2
                            802 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4FE0 BD F3 54      [ 8]  803 	jsr ___Reset0Ref; BIOS call
                            804 ;  0 "" 2
                            805 ;  1157 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            806 	; #ENR#[893]    intens(0x50);
                            807 ;  0 "" 2
                            808 ;--- end asm ---
   4FE3 C6 50         [ 2]  809 	ldb	#80	; ,
   4FE5 E7 E4         [ 4]  810 	stb	,s	; , a
                            811 ;----- asm -----
                            812 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4FE7 A6 E4         [ 4]  813 	lda ,s	;  a
   4FE9 BD F2 AB      [ 8]  814 	jsr ___Intensity_a; BIOS call
                            815 ;  0 "" 2
                            816 ;  1160 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            817 	; #ENR#[895]    zergnd();
                            818 ;  0 "" 2
                            819 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4FEC BD F3 54      [ 8]  820 	jsr ___Reset0Ref; BIOS call
                            821 ;  0 "" 2
                            822 ;  1162 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            823 	; #ENR#[896]    positd(-50, 100);
                            824 ;  0 "" 2
                            825 ;--- end asm ---
   4FEF C6 80         [ 2]  826 	ldb	#-128	; ,
   4FF1 D7 04         [ 4]  827 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4FF3 C6 64         [ 2]  828 	ldb	#100	; ,
   4FF5 E7 62         [ 5]  829 	stb	2,s	; , a
   4FF7 C6 CE         [ 2]  830 	ldb	#-50	; ,
   4FF9 E7 E4         [ 4]  831 	stb	,s	; , b
                            832 ;----- asm -----
                            833 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4FFB A6 62         [ 5]  834 	lda 2,s	;  a
   4FFD E6 E4         [ 4]  835 	ldb ,s	;  b
   4FFF BD F3 12      [ 8]  836 	jsr ___Moveto_d; BIOS call
                            837 ;  0 "" 2
                            838 ;  1164 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            839 	; #ENR#[897]    pack1x((void*)led8);
                            840 ;  0 "" 2
                            841 ;--- end asm ---
   5002 C6 80         [ 2]  842 	ldb	#-128	; ,
   5004 D7 04         [ 4]  843 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   5006 10 8E 59 D5   [ 4]  844 	ldy	#_led8	;  tmp27,
   500A 10 AF E4      [ 6]  845 	sty	,s	;  tmp27, x
                            846 ;----- asm -----
                            847 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   500D AE E4         [ 5]  848 	ldx ,s	;  x
   500F BD F4 10      [ 8]  849 	jsr ___Draw_VLp; BIOS call
                            850 ;  0 "" 2
                            851 ;  1167 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            852 	; #ENR#[899]    zergnd();
                            853 ;  0 "" 2
                            854 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5012 BD F3 54      [ 8]  855 	jsr ___Reset0Ref; BIOS call
                            856 ;  0 "" 2
                            857 ;  1169 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            858 	; #ENR#[900]    positd(-40, 110);
                            859 ;  0 "" 2
                            860 ;--- end asm ---
   5015 C6 80         [ 2]  861 	ldb	#-128	; ,
   5017 D7 04         [ 4]  862 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   5019 C6 6E         [ 2]  863 	ldb	#110	; ,
   501B E7 E4         [ 4]  864 	stb	,s	; , a
   501D C6 D8         [ 2]  865 	ldb	#-40	; ,
   501F E7 62         [ 5]  866 	stb	2,s	; , b
                            867 ;----- asm -----
                            868 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5021 A6 E4         [ 4]  869 	lda ,s	;  a
   5023 E6 62         [ 5]  870 	ldb 2,s	;  b
   5025 BD F3 12      [ 8]  871 	jsr ___Moveto_d; BIOS call
                            872 ;  0 "" 2
                            873 ;  1171 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            874 	; #ENR#[901]    pack1x((void*)led8);
                            875 ;  0 "" 2
                            876 ;--- end asm ---
   5028 C6 80         [ 2]  877 	ldb	#-128	; ,
   502A D7 04         [ 4]  878 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   502C 10 AF E4      [ 6]  879 	sty	,s	;  tmp27, x
                            880 ;----- asm -----
                            881 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   502F AE E4         [ 5]  882 	ldx ,s	;  x
   5031 BD F4 10      [ 8]  883 	jsr ___Draw_VLp; BIOS call
                            884 ;  0 "" 2
                            885 ;  1174 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            886 	; #ENR#[903]    zergnd();
                            887 ;  0 "" 2
                            888 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5034 BD F3 54      [ 8]  889 	jsr ___Reset0Ref; BIOS call
                            890 ;  0 "" 2
                            891 ;  1176 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            892 	; #ENR#[904]    positd(-30, 120);
                            893 ;  0 "" 2
                            894 ;--- end asm ---
   5037 C6 80         [ 2]  895 	ldb	#-128	; ,
   5039 D7 04         [ 4]  896 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   503B C6 78         [ 2]  897 	ldb	#120	; ,
   503D E7 62         [ 5]  898 	stb	2,s	; , a
   503F C6 E2         [ 2]  899 	ldb	#-30	; ,
   5041 E7 E4         [ 4]  900 	stb	,s	; , b
                            901 ;----- asm -----
                            902 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5043 A6 62         [ 5]  903 	lda 2,s	;  a
   5045 E6 E4         [ 4]  904 	ldb ,s	;  b
   5047 BD F3 12      [ 8]  905 	jsr ___Moveto_d; BIOS call
                            906 ;  0 "" 2
                            907 ;  1178 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            908 	; #ENR#[905]    pack1x((void*)led8);
                            909 ;  0 "" 2
                            910 ;--- end asm ---
   504A C6 80         [ 2]  911 	ldb	#-128	; ,
   504C D7 04         [ 4]  912 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   504E 10 AF E4      [ 6]  913 	sty	,s	;  tmp27, x
                            914 ;----- asm -----
                            915 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5051 AE E4         [ 5]  916 	ldx ,s	;  x
   5053 BD F4 10      [ 8]  917 	jsr ___Draw_VLp; BIOS call
                            918 ;  0 "" 2
                            919 ;  1181 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            920 	; #ENR#[907]    zergnd();
                            921 ;  0 "" 2
                            922 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5056 BD F3 54      [ 8]  923 	jsr ___Reset0Ref; BIOS call
                            924 ;  0 "" 2
                            925 ;  1183 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            926 	; #ENR#[908]    positd(0, 120);
                            927 ;  0 "" 2
                            928 ;--- end asm ---
   5059 C6 80         [ 2]  929 	ldb	#-128	; ,
   505B D7 04         [ 4]  930 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   505D C6 78         [ 2]  931 	ldb	#120	; ,
   505F E7 E4         [ 4]  932 	stb	,s	; , a
   5061 6F 62         [ 7]  933 	clr	2,s	;  b
                            934 ;----- asm -----
                            935 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5063 A6 E4         [ 4]  936 	lda ,s	;  a
   5065 E6 62         [ 5]  937 	ldb 2,s	;  b
   5067 BD F3 12      [ 8]  938 	jsr ___Moveto_d; BIOS call
                            939 ;  0 "" 2
                            940 ;  1185 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            941 	; #ENR#[909]    pack1x((void*)led8);
                            942 ;  0 "" 2
                            943 ;--- end asm ---
   506A C6 80         [ 2]  944 	ldb	#-128	; ,
   506C D7 04         [ 4]  945 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   506E 10 AF E4      [ 6]  946 	sty	,s	;  tmp27, x
                            947 ;----- asm -----
                            948 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5071 AE E4         [ 5]  949 	ldx ,s	;  x
   5073 BD F4 10      [ 8]  950 	jsr ___Draw_VLp; BIOS call
                            951 ;  0 "" 2
                            952 ;  1188 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            953 	; #ENR#[911]    zergnd();
                            954 ;  0 "" 2
                            955 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5076 BD F3 54      [ 8]  956 	jsr ___Reset0Ref; BIOS call
                            957 ;  0 "" 2
                            958 ;  1190 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            959 	; #ENR#[912]    positd(10, 120);
                            960 ;  0 "" 2
                            961 ;--- end asm ---
   5079 C6 80         [ 2]  962 	ldb	#-128	; ,
   507B D7 04         [ 4]  963 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   507D C6 78         [ 2]  964 	ldb	#120	; ,
   507F E7 62         [ 5]  965 	stb	2,s	; , a
   5081 C6 0A         [ 2]  966 	ldb	#10	; ,
   5083 E7 E4         [ 4]  967 	stb	,s	; , b
                            968 ;----- asm -----
                            969 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5085 A6 62         [ 5]  970 	lda 2,s	;  a
   5087 E6 E4         [ 4]  971 	ldb ,s	;  b
   5089 BD F3 12      [ 8]  972 	jsr ___Moveto_d; BIOS call
                            973 ;  0 "" 2
                            974 ;  1192 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            975 	; #ENR#[913]    pack1x((void*)led8);
                            976 ;  0 "" 2
                            977 ;--- end asm ---
   508C C6 80         [ 2]  978 	ldb	#-128	; ,
   508E D7 04         [ 4]  979 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   5090 10 AF E4      [ 6]  980 	sty	,s	;  tmp27, x
                            981 ;----- asm -----
                            982 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5093 AE E4         [ 5]  983 	ldx ,s	;  x
   5095 BD F4 10      [ 8]  984 	jsr ___Draw_VLp; BIOS call
                            985 ;  0 "" 2
                            986 ;  1195 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            987 	; #ENR#[915]    zergnd();
                            988 ;  0 "" 2
                            989 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5098 BD F3 54      [ 8]  990 	jsr ___Reset0Ref; BIOS call
                            991 ;  0 "" 2
                            992 ;  1197 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            993 	; #ENR#[916]    positd(20, 120);
                            994 ;  0 "" 2
                            995 ;--- end asm ---
   509B C6 80         [ 2]  996 	ldb	#-128	; ,
   509D D7 04         [ 4]  997 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   509F C6 78         [ 2]  998 	ldb	#120	; ,
   50A1 E7 E4         [ 4]  999 	stb	,s	; , a
   50A3 C6 14         [ 2] 1000 	ldb	#20	; ,
   50A5 E7 62         [ 5] 1001 	stb	2,s	; , b
                           1002 ;----- asm -----
                           1003 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   50A7 A6 E4         [ 4] 1004 	lda ,s	;  a
   50A9 E6 62         [ 5] 1005 	ldb 2,s	;  b
   50AB BD F3 12      [ 8] 1006 	jsr ___Moveto_d; BIOS call
                           1007 ;  0 "" 2
                           1008 ;  1199 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1009 	; #ENR#[917]    pack1x((void*)led8);
                           1010 ;  0 "" 2
                           1011 ;--- end asm ---
   50AE C6 80         [ 2] 1012 	ldb	#-128	; ,
   50B0 D7 04         [ 4] 1013 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   50B2 10 AF E4      [ 6] 1014 	sty	,s	;  tmp27, x
                           1015 ;----- asm -----
                           1016 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   50B5 AE E4         [ 5] 1017 	ldx ,s	;  x
   50B7 BD F4 10      [ 8] 1018 	jsr ___Draw_VLp; BIOS call
                           1019 ;  0 "" 2
                           1020 ;--- end asm ---
   50BA 32 63         [ 5] 1021 	leas	3,s	; ,,
   50BC 35 A0         [ 7] 1022 	puls	y,pc	; 
                           1023 	.globl _showInfo
   50BE                    1024 _showInfo:
   50BE 34 40         [ 6] 1025 	pshs	u	; 
   50C0 32 7C         [ 5] 1026 	leas	-4,s	; ,,
                           1027 ;----- asm -----
                           1028 ;  1205 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1029 	; #ENR#[922]    Intensity_a(0x5f);
                           1030 ;  0 "" 2
                           1031 ;--- end asm ---
   50C2 C6 5F         [ 2] 1032 	ldb	#95	; ,
   50C4 E7 63         [ 5] 1033 	stb	3,s	; , a
                           1034 ;----- asm -----
                           1035 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   50C6 A6 63         [ 5] 1036 	lda 3,s	;  a
   50C8 BD F2 AB      [ 8] 1037 	jsr ___Intensity_a; BIOS call
                           1038 ;  0 "" 2
                           1039 ;  1207 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1040 	; #ENR#[923]    Vec_Text_Width = 100;
                           1041 ;  0 "" 2
                           1042 ;--- end asm ---
   50CB C6 64         [ 2] 1043 	ldb	#100	; ,
   50CD F7 C8 2B      [ 5] 1044 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1045 ;----- asm -----
                           1046 ;  1209 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1047 	; #ENR#[924]    Print_Str_d(100, -70, infoText);
                           1048 ;  0 "" 2
                           1049 ;--- end asm ---
   50D0 E7 63         [ 5] 1050 	stb	3,s	; , a
   50D2 C6 BA         [ 2] 1051 	ldb	#-70	; ,
   50D4 E7 62         [ 5] 1052 	stb	2,s	; , b
   50D6 8E CB 30      [ 3] 1053 	ldx	#_infoText	; ,
   50D9 AF E4         [ 5] 1054 	stx	,s	; , u
                           1055 ;----- asm -----
                           1056 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   50DB A6 63         [ 5] 1057 	lda 3,s	;  a
   50DD E6 62         [ 5] 1058 	ldb 2,s	;  b
   50DF EE E4         [ 5] 1059 	ldu ,s	;  u
   50E1 BD F3 7A      [ 8] 1060 	jsr ___Print_Str_d; BIOS call
                           1061 ;  0 "" 2
                           1062 ;--- end asm ---
   50E4 32 64         [ 5] 1063 	leas	4,s	; ,,
   50E6 35 C0         [ 7] 1064 	puls	u,pc	; 
                           1065 	.globl _blockMovingToStart
   50E8                    1066 _blockMovingToStart:
                           1067 ;----- asm -----
                           1068 ;  629 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1069 	; #ENR#[567]    drawField();
                           1070 ;  0 "" 2
                           1071 ;--- end asm ---
   50E8 BD 4E 50      [ 8] 1072 	jsr	_drawField	; 
                           1073 ;----- asm -----
                           1074 ;  631 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1075 	; #ENR#[568]    drawBlock(blockYOfs);
                           1076 ;  0 "" 2
                           1077 ;--- end asm ---
   50EB F6 C8 8E      [ 5] 1078 	ldb	_blockYOfs	; , blockYOfs
   50EE BD 04 FE      [ 8] 1079 	jsr	_drawBlock	; 
                           1080 ;----- asm -----
                           1081 ;  633 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1082 	; #ENR#[569]    blockYOfs++;
                           1083 ;  0 "" 2
                           1084 ;--- end asm ---
   50F1 F6 C8 8E      [ 5] 1085 	ldb	_blockYOfs	;  blockYOfs.29, blockYOfs
   50F4 5C            [ 2] 1086 	incb	;  blockYOfs.29
   50F5 F7 C8 8E      [ 5] 1087 	stb	_blockYOfs	;  blockYOfs.29, blockYOfs
                           1088 ;----- asm -----
                           1089 ;  635 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1090 	; #ENR#[570]    if (blockYOfs == 0) {
                           1091 ;  0 "" 2
                           1092 ;--- end asm ---
   50F8 5D            [ 2] 1093 	tstb	;  blockYOfs.29
   50F9 26 05         [ 3] 1094 	bne	L28	; 
                           1095 ;----- asm -----
                           1096 ;  637 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1097 	; #ENR#[571]        gameState = BlockWaiting;
                           1098 ;  0 "" 2
                           1099 ;--- end asm ---
   50FB C6 05         [ 2] 1100 	ldb	#5	; ,
   50FD F7 CB 4E      [ 5] 1101 	stb	_gameState	; , gameState
   5100                    1102 L28:
   5100 39            [ 5] 1103 	rts
                           1104 	.globl _updateInfoText
   5101                    1105 _updateInfoText:
   5101 34 40         [ 6] 1106 	pshs	u	; 
                           1107 ;----- asm -----
                           1108 ;  266 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1109 	; #ENR#[237]    memcpy(infoText, "001 - 999�", 10);
                           1110 ;  0 "" 2
                           1111 ;--- end asm ---
   5103 8E CB 30      [ 3] 1112 	ldx	#_infoText	;  tmp27,
   5106 CE 30 30      [ 3] 1113 	ldu	#12336	; ,
   5109 EF 84         [ 5] 1114 	stu	,x	; , infoText
   510B CE 31 20      [ 3] 1115 	ldu	#12576	; ,
   510E FF CB 32      [ 6] 1116 	stu	_infoText+2	; , infoText
   5111 CE 2D 20      [ 3] 1117 	ldu	#11552	; ,
   5114 FF CB 34      [ 6] 1118 	stu	_infoText+4	; , infoText
   5117 CE 39 39      [ 3] 1119 	ldu	#14649	; ,
   511A FF CB 36      [ 6] 1120 	stu	_infoText+6	; , infoText
   511D CE 39 80      [ 3] 1121 	ldu	#14720	; ,
   5120 FF CB 38      [ 6] 1122 	stu	_infoText+8	; , infoText
                           1123 ;----- asm -----
                           1124 ;  268 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1125 	; #ENR#[238]    itoa(moveCount, &infoText[0]);
                           1126 ;  0 "" 2
                           1127 ;--- end asm ---
   5123 34 10         [ 6] 1128 	pshs	x	;  tmp27
   5125 BE CB 44      [ 6] 1129 	ldx	_moveCount	; , moveCount
   5128 BD 4D C8      [ 8] 1130 	jsr	_itoa	; 
                           1131 ;----- asm -----
                           1132 ;  270 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1133 	; #ENR#[239]    itoa(levelNumber + levelOffset, &infoText[6]);
                           1134 ;  0 "" 2
                           1135 ;--- end asm ---
   512B F6 42 DF      [ 5] 1136 	ldb	_levelOffset	;  tmp35, levelOffset
   512E FB C8 83      [ 5] 1137 	addb	_levelNumber	;  tmp35, levelNumber
   5131 8E CB 36      [ 3] 1138 	ldx	#_infoText+6	; ,
   5134 AF E3         [ 8] 1139 	stx	,--s	; ,
   5136 4F            [ 2] 1140 	clra		;zero_extendqihi: R:b -> R:d	;  tmp35,
   5137 1F 01         [ 6] 1141 	tfr	d,x	; ,
   5139 BD 4D C8      [ 8] 1142 	jsr	_itoa	; 
   513C 32 64         [ 5] 1143 	leas	4,s	; ,,
   513E 35 C0         [ 7] 1144 	puls	u,pc	; 
                           1145 	.globl _moveBlock
   5140                    1146 _moveBlock:
                           1147 ;----- asm -----
                           1148 ;  284 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1149 	; #ENR#[250]    moveBlockImpl(move);
                           1150 ;  0 "" 2
                           1151 ;--- end asm ---
   5140 BD 01 55      [ 8] 1152 	jsr	_moveBlockImpl	; 
                           1153 ;----- asm -----
                           1154 ;  286 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1155 	; #ENR#[251]    if (!arcadeMode) {
                           1156 ;  0 "" 2
                           1157 ;--- end asm ---
   5143 7D CB 4B      [ 7] 1158 	tst	_arcadeMode	;  arcadeMode
   5146 26 10         [ 3] 1159 	bne	L34	; 
                           1160 ;----- asm -----
                           1161 ;  288 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1162 	; #ENR#[252]        if (moveCount < 999) moveCount++;
                           1163 ;  0 "" 2
                           1164 ;--- end asm ---
   5148 BE CB 44      [ 6] 1165 	ldx	_moveCount	;  moveCount.10, moveCount
   514B 8C 03 E6      [ 4] 1166 	cmpx	#998	;cmphi:	;  moveCount.10,
   514E 22 05         [ 3] 1167 	bhi	L33	; 
   5150 30 01         [ 5] 1168 	leax	1,x	; ,, moveCount.10
   5152 BF CB 44      [ 6] 1169 	stx	_moveCount	; , moveCount
   5155                    1170 L33:
                           1171 ;----- asm -----
                           1172 ;  290 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1173 	; #ENR#[253]        updateInfoText();
                           1174 ;  0 "" 2
                           1175 ;--- end asm ---
   5155 BD 51 01      [ 8] 1176 	jsr	_updateInfoText	; 
   5158                    1177 L34:
   5158 39            [ 5] 1178 	rts
                           1179 	.globl _startBlockFalling
   5159                    1180 _startBlockFalling:
                           1181 ;----- asm -----
                           1182 ;  297 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1183 	; #ENR#[259]    gameState = BlockFalling;
                           1184 ;  0 "" 2
                           1185 ;--- end asm ---
   5159 C6 07         [ 2] 1186 	ldb	#7	; ,
   515B F7 CB 4E      [ 5] 1187 	stb	_gameState	; , gameState
                           1188 ;----- asm -----
                           1189 ;  299 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1190 	; #ENR#[260]    blockYOfs = 0;
                           1191 ;  0 "" 2
                           1192 ;--- end asm ---
   515E 7F C8 8E      [ 7] 1193 	clr	_blockYOfs	;  blockYOfs
                           1194 ;----- asm -----
                           1195 ;  301 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1196 	; #ENR#[261]    moveBlock(lastBlockDirection);
                           1197 ;  0 "" 2
                           1198 ;--- end asm ---
   5161 F6 C8 8F      [ 5] 1199 	ldb	_lastBlockDirection	; , lastBlockDirection
   5164 BD 51 40      [ 8] 1200 	jsr	_moveBlock	; 
                           1201 ;----- asm -----
                           1202 ;  303 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1203 	; #ENR#[262]    changeMusic(fallingMusic);
                           1204 ;  0 "" 2
                           1205 ;--- end asm ---
   5167 8E 59 AD      [ 3] 1206 	ldx	#_fallingMusic	; ,
   516A BD 4E 47      [ 8] 1207 	jsr	_changeMusic	; 
                           1208 ;----- asm -----
                           1209 ;  305 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1210 	; #ENR#[263]    *vecx = 0;
                           1211 ;  0 "" 2
                           1212 ;--- end asm ---
   516D 6F 9F C8 8B   [11] 1213 	clr	[_vecx]	; * vecx
   5171 39            [ 5] 1214 	rts
                           1215 	.globl _blockMoving
   5172                    1216 _blockMoving:
   5172 32 79         [ 5] 1217 	leas	-7,s	; ,,
                           1218 ;----- asm -----
                           1219 ;  775 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1220 	; #ENR#[657]    drawField();
                           1221 ;  0 "" 2
                           1222 ;--- end asm ---
   5174 BD 4E 50      [ 8] 1223 	jsr	_drawField	; 
                           1224 ;----- asm -----
                           1225 ;  777 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1226 	; #ENR#[658]    drawBlock(0);
                           1227 ;  0 "" 2
                           1228 ;--- end asm ---
   5177 5F            [ 2] 1229 	clrb	; 
   5178 BD 04 FE      [ 8] 1230 	jsr	_drawBlock	; 
                           1231 ;----- asm -----
                           1232 ;  779 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1233 	; #ENR#[659]    doBlockAnimation();
                           1234 ;  0 "" 2
                           1235 ;--- end asm ---
   517B BD 03 FC      [ 8] 1236 	jsr	_doBlockAnimation	; 
                           1237 ;----- asm -----
                           1238 ;  781 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1239 	; #ENR#[660]    if (!blockAnimating) {
                           1240 ;  0 "" 2
                           1241 ;--- end asm ---
   517E 7D C8 90      [ 7] 1242 	tst	_blockAnimating	;  blockAnimating
   5181 10 26 01 8A   [ 6] 1243 	lbne	L63	; 
                           1244 ;----- asm -----
                           1245 ;  784 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1246 	; #ENR#[662]        if (splitMode) {
                           1247 ;  0 "" 2
                           1248 ;--- end asm ---
   5185 7D C8 91      [ 7] 1249 	tst	_splitMode	;  splitMode
   5188 27 03         [ 3] 1250 	beq	L39	; 
                           1251 ;----- asm -----
                           1252 ;  786 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1253 	; #ENR#[663]            testMerge();
                           1254 ;  0 "" 2
                           1255 ;--- end asm ---
   518A BD 04 47      [ 8] 1256 	jsr	_testMerge	; 
   518D                    1257 L39:
                           1258 ;----- asm -----
                           1259 ;  791 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1260 	; #ENR#[667]        uint8_t c0 = isField(blockX, blockY);
                           1261 ;  0 "" 2
                           1262 ;--- end asm ---
   518D F6 C8 93      [ 5] 1263 	ldb	_blockY	; , blockY
   5190 E7 E2         [ 6] 1264 	stb	,-s	; ,
   5192 F6 C8 92      [ 5] 1265 	ldb	_blockX	; , blockX
   5195 BD 36 F6      [ 8] 1266 	jsr	_isField	; 
   5198 E7 62         [ 5] 1267 	stb	2,s	; , c0
                           1268 ;----- asm -----
                           1269 ;  793 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1270 	; #ENR#[668]        uint8_t c1 = isField(blockX + 1, blockY);
                           1271 ;  0 "" 2
                           1272 ;--- end asm ---
   519A F6 C8 92      [ 5] 1273 	ldb	_blockX	; , blockX
   519D 5C            [ 2] 1274 	incb	; 
   519E E7 61         [ 5] 1275 	stb	1,s	; ,
   51A0 F6 C8 93      [ 5] 1276 	ldb	_blockY	; , blockY
   51A3 E7 E2         [ 6] 1277 	stb	,-s	; ,
   51A5 E6 62         [ 5] 1278 	ldb	2,s	; ,
   51A7 BD 36 F6      [ 8] 1279 	jsr	_isField	; 
   51AA E7 64         [ 5] 1280 	stb	4,s	; , c1
                           1281 ;----- asm -----
                           1282 ;  795 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1283 	; #ENR#[669]        uint8_t c2 = isField(blockX, blockY + 1);
                           1284 ;  0 "" 2
                           1285 ;--- end asm ---
   51AC F6 C8 93      [ 5] 1286 	ldb	_blockY	; , blockY
   51AF 5C            [ 2] 1287 	incb	; 
   51B0 34 04         [ 6] 1288 	pshs	b	; 
   51B2 F6 C8 92      [ 5] 1289 	ldb	_blockX	; , blockX
   51B5 BD 36 F6      [ 8] 1290 	jsr	_isField	; 
   51B8 E7 66         [ 5] 1291 	stb	6,s	; , c2
                           1292 ;----- asm -----
                           1293 ;  797 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1294 	; #ENR#[670]        char f0 = getField(blockX, blockY);
                           1295 ;  0 "" 2
                           1296 ;--- end asm ---
   51BA F6 C8 93      [ 5] 1297 	ldb	_blockY	; , blockY
   51BD E7 E2         [ 6] 1298 	stb	,-s	; ,
   51BF F6 C8 92      [ 5] 1299 	ldb	_blockX	; , blockX
   51C2 BD 36 24      [ 8] 1300 	jsr	_getField	; 
   51C5 E7 68         [ 5] 1301 	stb	8,s	; , f0
                           1302 ;----- asm -----
                           1303 ;  799 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1304 	; #ENR#[671]        char f1 = getField(blockX + 1, blockY);
                           1305 ;  0 "" 2
                           1306 ;--- end asm ---
   51C7 F6 C8 92      [ 5] 1307 	ldb	_blockX	; , blockX
   51CA 5C            [ 2] 1308 	incb	; 
   51CB E7 64         [ 5] 1309 	stb	4,s	; ,
   51CD F6 C8 93      [ 5] 1310 	ldb	_blockY	; , blockY
   51D0 E7 E2         [ 6] 1311 	stb	,-s	; ,
   51D2 E6 65         [ 5] 1312 	ldb	5,s	; ,
   51D4 BD 36 24      [ 8] 1313 	jsr	_getField	; 
   51D7 E7 6A         [ 5] 1314 	stb	10,s	; , f1
                           1315 ;----- asm -----
                           1316 ;  801 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1317 	; #ENR#[672]        char f2 = getField(blockX, blockY + 1);
                           1318 ;  0 "" 2
                           1319 ;--- end asm ---
   51D9 F6 C8 93      [ 5] 1320 	ldb	_blockY	; , blockY
   51DC 5C            [ 2] 1321 	incb	; 
   51DD 34 04         [ 6] 1322 	pshs	b	; 
   51DF F6 C8 92      [ 5] 1323 	ldb	_blockX	; , blockX
   51E2 BD 36 24      [ 8] 1324 	jsr	_getField	; 
   51E5 E7 6C         [ 5] 1325 	stb	12,s	; , f2
                           1326 ;----- asm -----
                           1327 ;  803 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1328 	; #ENR#[673]        if (splitMode) {
                           1329 ;  0 "" 2
                           1330 ;--- end asm ---
   51E7 32 66         [ 5] 1331 	leas	6,s	; ,,
   51E9 7D C8 91      [ 7] 1332 	tst	_splitMode	;  splitMode
   51EC 27 0C         [ 3] 1333 	beq	L40	; 
                           1334 ;----- asm -----
                           1335 ;  805 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1336 	; #ENR#[674]            if (!c0) {
                           1337 ;  0 "" 2
                           1338 ;--- end asm ---
   51EE 6D 61         [ 7] 1339 	tst	1,s	;  c0
   51F0 10 26 00 3E   [ 6] 1340 	lbne	L41	; 
                           1341 ;----- asm -----
                           1342 ;  807 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1343 	; #ENR#[675]                startBlockFalling();
                           1344 ;  0 "" 2
                           1345 ;--- end asm ---
   51F4 BD 51 59      [ 8] 1346 	jsr	_startBlockFalling	; 
   51F7 7E 52 32      [ 4] 1347 	jmp	L41	; 
   51FA                    1348 L40:
                           1349 ;----- asm -----
                           1350 ;  811 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1351 	; #ENR#[678]            switch (blockOrientation) {
                           1352 ;  0 "" 2
                           1353 ;--- end asm ---
   51FA F6 C8 8D      [ 5] 1354 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   51FD C1 01         [ 2] 1355 	cmpb	#1	;cmpqi:	;  blockOrientation,
   51FF 27 19         [ 3] 1356 	beq	L43	; 
   5201 25 08         [ 3] 1357 	blo	L42	; 
   5203 C1 02         [ 2] 1358 	cmpb	#2	;cmpqi:	;  blockOrientation,
   5205 10 26 00 29   [ 6] 1359 	lbne	L41	; 
   5209 20 1C         [ 3] 1360 	bra	L64	; 
   520B                    1361 L42:
                           1362 ;----- asm -----
                           1363 ;  815 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1364 	; #ENR#[680]                if (!c0 || f0 == 'f') {
                           1365 ;  0 "" 2
                           1366 ;--- end asm ---
   520B 6D 61         [ 7] 1367 	tst	1,s	;  c0
   520D 27 06         [ 3] 1368 	beq	L45	; 
   520F E6 64         [ 5] 1369 	ldb	4,s	; , f0
   5211 C1 66         [ 2] 1370 	cmpb	#102	;cmpqi:	; ,
   5213 26 03         [ 3] 1371 	bne	L46	; 
   5215                    1372 L45:
                           1373 ;----- asm -----
                           1374 ;  817 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1375 	; #ENR#[681]                    startBlockFalling();
                           1376 ;  0 "" 2
                           1377 ;--- end asm ---
   5215 BD 51 59      [ 8] 1378 	jsr	_startBlockFalling	; 
   5218                    1379 L46:
                           1380 ;----- asm -----
                           1381 ;  820 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1382 	; #ENR#[683]                break;
                           1383 ;  0 "" 2
                           1384 ;--- end asm ---
   5218 20 18         [ 3] 1385 	bra	L41	; 
   521A                    1386 L43:
                           1387 ;----- asm -----
                           1388 ;  824 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1389 	; #ENR#[685]                if (!c0 || !c2) {
                           1390 ;  0 "" 2
                           1391 ;--- end asm ---
   521A 6D 61         [ 7] 1392 	tst	1,s	;  c0
   521C 27 04         [ 3] 1393 	beq	L47	; 
   521E 6D 63         [ 7] 1394 	tst	3,s	;  c2
   5220 26 03         [ 3] 1395 	bne	L48	; 
   5222                    1396 L47:
                           1397 ;----- asm -----
                           1398 ;  826 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1399 	; #ENR#[686]                    startBlockFalling();
                           1400 ;  0 "" 2
                           1401 ;--- end asm ---
   5222 BD 51 59      [ 8] 1402 	jsr	_startBlockFalling	; 
   5225                    1403 L48:
                           1404 ;----- asm -----
                           1405 ;  829 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1406 	; #ENR#[688]                break;
                           1407 ;  0 "" 2
                           1408 ;--- end asm ---
   5225 20 0B         [ 3] 1409 	bra	L41	; 
   5227                    1410 L64:
                           1411 ;----- asm -----
                           1412 ;  833 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1413 	; #ENR#[690]                if (!c0 || ! c1) {
                           1414 ;  0 "" 2
                           1415 ;--- end asm ---
   5227 6D 61         [ 7] 1416 	tst	1,s	;  c0
   5229 27 04         [ 3] 1417 	beq	L49	; 
   522B 6D 62         [ 7] 1418 	tst	2,s	;  c1
   522D 26 03         [ 3] 1419 	bne	L50	; 
   522F                    1420 L49:
                           1421 ;----- asm -----
                           1422 ;  835 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1423 	; #ENR#[691]                    startBlockFalling();
                           1424 ;  0 "" 2
                           1425 ;--- end asm ---
   522F BD 51 59      [ 8] 1426 	jsr	_startBlockFalling	; 
   5232                    1427 L50:
                           1428 ;----- asm -----
                           1429 ;  838 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1430 	; #ENR#[693]                break;
                           1431 ;  0 "" 2
                           1432 ;--- end asm ---
   5232                    1433 L41:
                           1434 ;----- asm -----
                           1435 ;  844 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1436 	; #ENR#[698]        if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
                           1437 ;  0 "" 2
                           1438 ;--- end asm ---
   5232 7D C8 8D      [ 7] 1439 	tst	_blockOrientation	;  blockOrientation
   5235 26 2B         [ 3] 1440 	bne	L51	; 
   5237 F6 C8 92      [ 5] 1441 	ldb	_blockX	; , blockX
   523A F1 C8 81      [ 5] 1442 	cmpb	_endX	;cmpqi:	; , endX
   523D 26 23         [ 3] 1443 	bne	L51	; 
   523F F6 C8 93      [ 5] 1444 	ldb	_blockY	; , blockY
   5242 F1 C8 82      [ 5] 1445 	cmpb	_endY	;cmpqi:	; , endY
   5245 26 1B         [ 3] 1446 	bne	L51	; 
   5247 7D C8 91      [ 7] 1447 	tst	_splitMode	;  splitMode
   524A 26 16         [ 3] 1448 	bne	L51	; 
                           1449 ;----- asm -----
                           1450 ;  846 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1451 	; #ENR#[699]            blockYOfs = 0;
                           1452 ;  0 "" 2
                           1453 ;--- end asm ---
   524C 7F C8 8E      [ 7] 1454 	clr	_blockYOfs	;  blockYOfs
                           1455 ;----- asm -----
                           1456 ;  848 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1457 	; #ENR#[700]            gameState = BlockMovingAtEnd;
                           1458 ;  0 "" 2
                           1459 ;--- end asm ---
   524F C6 08         [ 2] 1460 	ldb	#8	; ,
   5251 F7 CB 4E      [ 5] 1461 	stb	_gameState	; , gameState
                           1462 ;----- asm -----
                           1463 ;  850 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1464 	; #ENR#[701]            changeMusic(levelEndMusic);
                           1465 ;  0 "" 2
                           1466 ;--- end asm ---
   5254 8E 59 93      [ 3] 1467 	ldx	#_levelEndMusic	; ,
   5257 BD 4E 47      [ 8] 1468 	jsr	_changeMusic	; 
                           1469 ;----- asm -----
                           1470 ;  852 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1471 	; #ENR#[702]            *vecx = 1;
                           1472 ;  0 "" 2
                           1473 ;--- end asm ---
   525A C6 01         [ 2] 1474 	ldb	#1	; ,
   525C E7 9F C8 8B   [ 9] 1475 	stb	[_vecx]	; ,* vecx
   5260 20 0C         [ 3] 1476 	bra	L52	; 
   5262                    1477 L51:
                           1478 ;----- asm -----
                           1479 ;  856 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1480 	; #ENR#[705]            if (gameState != BlockFalling) {
                           1481 ;  0 "" 2
                           1482 ;--- end asm ---
   5262 F6 CB 4E      [ 5] 1483 	ldb	_gameState	; , gameState
   5265 C1 07         [ 2] 1484 	cmpb	#7	;cmpqi:	; ,
   5267 27 05         [ 3] 1485 	beq	L52	; 
                           1486 ;----- asm -----
                           1487 ;  858 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1488 	; #ENR#[706]                gameState = BlockWaiting;
                           1489 ;  0 "" 2
                           1490 ;--- end asm ---
   5269 C6 05         [ 2] 1491 	ldb	#5	; ,
   526B F7 CB 4E      [ 5] 1492 	stb	_gameState	; , gameState
   526E                    1493 L52:
                           1494 ;----- asm -----
                           1495 ;  864 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1496 	; #ENR#[711]        if (splitMode) {
                           1497 ;  0 "" 2
                           1498 ;--- end asm ---
   526E 7D C8 91      [ 7] 1499 	tst	_splitMode	;  splitMode
   5271 27 18         [ 3] 1500 	beq	L53	; 
                           1501 ;----- asm -----
                           1502 ;  866 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1503 	; #ENR#[712]            if (f0 == 's') {
                           1504 ;  0 "" 2
                           1505 ;--- end asm ---
   5273 E6 64         [ 5] 1506 	ldb	4,s	; , f0
   5275 C1 73         [ 2] 1507 	cmpb	#115	;cmpqi:	; ,
   5277 10 26 00 94   [ 6] 1508 	lbne	L63	; 
                           1509 ;----- asm -----
                           1510 ;  868 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1511 	; #ENR#[713]                swatchSwitch(blockX, blockY);
                           1512 ;  0 "" 2
                           1513 ;--- end asm ---
   527B F6 C8 93      [ 5] 1514 	ldb	_blockY	; , blockY
   527E E7 E2         [ 6] 1515 	stb	,-s	; ,
   5280 F6 C8 92      [ 5] 1516 	ldb	_blockX	; , blockX
   5283 BD 41 CC      [ 8] 1517 	jsr	_swatchSwitch	; 
   5286 32 61         [ 5] 1518 	leas	1,s	; ,,
   5288 7E 53 0F      [ 4] 1519 	jmp	L63	; 
   528B                    1520 L53:
                           1521 ;----- asm -----
                           1522 ;  872 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1523 	; #ENR#[716]            switch (blockOrientation) {
                           1524 ;  0 "" 2
                           1525 ;--- end asm ---
   528B F6 C8 8D      [ 5] 1526 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   528E C1 01         [ 2] 1527 	cmpb	#1	;cmpqi:	;  blockOrientation,
   5290 27 29         [ 3] 1528 	beq	L55	; 
   5292 25 09         [ 3] 1529 	blo	L54	; 
   5294 C1 02         [ 2] 1530 	cmpb	#2	;cmpqi:	;  blockOrientation,
   5296 10 26 00 75   [ 6] 1531 	lbne	L63	; 
   529A 7E 52 E4      [ 4] 1532 	jmp	L65	; 
   529D                    1533 L54:
                           1534 ;----- asm -----
                           1535 ;  876 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1536 	; #ENR#[718]                if (f0 == 's' || f0 == 'h' || f0 == 'v') {
                           1537 ;  0 "" 2
                           1538 ;--- end asm ---
   529D E6 64         [ 5] 1539 	ldb	4,s	; , f0
   529F C1 73         [ 2] 1540 	cmpb	#115	;cmpqi:	; ,
   52A1 27 08         [ 3] 1541 	beq	L57	; 
   52A3 C1 68         [ 2] 1542 	cmpb	#104	;cmpqi:	; ,
   52A5 27 04         [ 3] 1543 	beq	L57	; 
   52A7 C1 76         [ 2] 1544 	cmpb	#118	;cmpqi:	; ,
   52A9 26 0D         [ 3] 1545 	bne	L58	; 
   52AB                    1546 L57:
                           1547 ;----- asm -----
                           1548 ;  878 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1549 	; #ENR#[719]                    swatchSwitch(blockX, blockY);
                           1550 ;  0 "" 2
                           1551 ;--- end asm ---
   52AB F6 C8 93      [ 5] 1552 	ldb	_blockY	; , blockY
   52AE E7 E2         [ 6] 1553 	stb	,-s	; ,
   52B0 F6 C8 92      [ 5] 1554 	ldb	_blockX	; , blockX
   52B3 BD 41 CC      [ 8] 1555 	jsr	_swatchSwitch	; 
   52B6 32 61         [ 5] 1556 	leas	1,s	; ,,
   52B8                    1557 L58:
                           1558 ;----- asm -----
                           1559 ;  881 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1560 	; #ENR#[721]                break;
                           1561 ;  0 "" 2
                           1562 ;--- end asm ---
   52B8 7E 53 0F      [ 4] 1563 	jmp	L63	; 
   52BB                    1564 L55:
                           1565 ;----- asm -----
                           1566 ;  885 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1567 	; #ENR#[723]                if (f0 == 's') {
                           1568 ;  0 "" 2
                           1569 ;--- end asm ---
   52BB E6 64         [ 5] 1570 	ldb	4,s	; , f0
   52BD C1 73         [ 2] 1571 	cmpb	#115	;cmpqi:	; ,
   52BF 26 0D         [ 3] 1572 	bne	L59	; 
                           1573 ;----- asm -----
                           1574 ;  887 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1575 	; #ENR#[724]                    swatchSwitch(blockX, blockY);
                           1576 ;  0 "" 2
                           1577 ;--- end asm ---
   52C1 F6 C8 93      [ 5] 1578 	ldb	_blockY	; , blockY
   52C4 E7 E2         [ 6] 1579 	stb	,-s	; ,
   52C6 F6 C8 92      [ 5] 1580 	ldb	_blockX	; , blockX
   52C9 BD 41 CC      [ 8] 1581 	jsr	_swatchSwitch	; 
   52CC 32 61         [ 5] 1582 	leas	1,s	; ,,
   52CE                    1583 L59:
                           1584 ;----- asm -----
                           1585 ;  890 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1586 	; #ENR#[726]                if (f2 == 's') {
                           1587 ;  0 "" 2
                           1588 ;--- end asm ---
   52CE E6 66         [ 5] 1589 	ldb	6,s	; , f2
   52D0 C1 73         [ 2] 1590 	cmpb	#115	;cmpqi:	; ,
   52D2 26 0E         [ 3] 1591 	bne	L60	; 
                           1592 ;----- asm -----
                           1593 ;  892 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1594 	; #ENR#[727]                    swatchSwitch(blockX, blockY + 1);
                           1595 ;  0 "" 2
                           1596 ;--- end asm ---
   52D4 F6 C8 93      [ 5] 1597 	ldb	_blockY	; , blockY
   52D7 5C            [ 2] 1598 	incb	; 
   52D8 34 04         [ 6] 1599 	pshs	b	; 
   52DA F6 C8 92      [ 5] 1600 	ldb	_blockX	; , blockX
   52DD BD 41 CC      [ 8] 1601 	jsr	_swatchSwitch	; 
   52E0 32 61         [ 5] 1602 	leas	1,s	; ,,
   52E2                    1603 L60:
                           1604 ;----- asm -----
                           1605 ;  895 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1606 	; #ENR#[729]                break;
                           1607 ;  0 "" 2
                           1608 ;--- end asm ---
   52E2 20 2B         [ 3] 1609 	bra	L63	; 
   52E4                    1610 L65:
                           1611 ;----- asm -----
                           1612 ;  899 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1613 	; #ENR#[731]                if (f0 == 's') {
                           1614 ;  0 "" 2
                           1615 ;--- end asm ---
   52E4 E6 64         [ 5] 1616 	ldb	4,s	; , f0
   52E6 C1 73         [ 2] 1617 	cmpb	#115	;cmpqi:	; ,
   52E8 26 0D         [ 3] 1618 	bne	L61	; 
                           1619 ;----- asm -----
                           1620 ;  901 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1621 	; #ENR#[732]                    swatchSwitch(blockX, blockY);
                           1622 ;  0 "" 2
                           1623 ;--- end asm ---
   52EA F6 C8 93      [ 5] 1624 	ldb	_blockY	; , blockY
   52ED E7 E2         [ 6] 1625 	stb	,-s	; ,
   52EF F6 C8 92      [ 5] 1626 	ldb	_blockX	; , blockX
   52F2 BD 41 CC      [ 8] 1627 	jsr	_swatchSwitch	; 
   52F5 32 61         [ 5] 1628 	leas	1,s	; ,,
   52F7                    1629 L61:
                           1630 ;----- asm -----
                           1631 ;  904 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1632 	; #ENR#[734]                if (f1 == 's') {
                           1633 ;  0 "" 2
                           1634 ;--- end asm ---
   52F7 E6 65         [ 5] 1635 	ldb	5,s	; , f1
   52F9 C1 73         [ 2] 1636 	cmpb	#115	;cmpqi:	; ,
   52FB 26 12         [ 3] 1637 	bne	L62	; 
                           1638 ;----- asm -----
                           1639 ;  906 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1640 	; #ENR#[735]                    swatchSwitch(blockX + 1, blockY);
                           1641 ;  0 "" 2
                           1642 ;--- end asm ---
   52FD F6 C8 92      [ 5] 1643 	ldb	_blockX	; , blockX
   5300 5C            [ 2] 1644 	incb	; 
   5301 E7 E4         [ 4] 1645 	stb	,s	; ,
   5303 F6 C8 93      [ 5] 1646 	ldb	_blockY	; , blockY
   5306 E7 E2         [ 6] 1647 	stb	,-s	; ,
   5308 E6 61         [ 5] 1648 	ldb	1,s	; ,
   530A BD 41 CC      [ 8] 1649 	jsr	_swatchSwitch	; 
   530D 32 61         [ 5] 1650 	leas	1,s	; ,,
   530F                    1651 L62:
                           1652 ;----- asm -----
                           1653 ;  909 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1654 	; #ENR#[737]                break;
                           1655 ;  0 "" 2
                           1656 ;--- end asm ---
   530F                    1657 L63:
   530F 32 67         [ 5] 1658 	leas	7,s	; ,,
   5311 39            [ 5] 1659 	rts
                           1660 	.globl _sendCommand
   5312                    1661 _sendCommand:
   5312 32 7E         [ 5] 1662 	leas	-2,s	; ,,
   5314 E7 E4         [ 4] 1663 	stb	,s	;  cmd, cmd
                           1664 ;----- asm -----
                           1665 ;  178 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1666 	; #ENR#[177]    uint8_t result;
                           1667 ;  0 "" 2
                           1668 ;  180 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1669 	; #ENR#[178]    picWrite('V');
                           1670 ;  0 "" 2
                           1671 ;--- end asm ---
   5316 C6 56         [ 2] 1672 	ldb	#86	; ,
   5318 BD 65 86      [ 8] 1673 	jsr	_picWrite	; 
                           1674 ;----- asm -----
                           1675 ;  182 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1676 	; #ENR#[179]    picWrite(cmd);
                           1677 ;  0 "" 2
                           1678 ;--- end asm ---
   531B E6 E4         [ 4] 1679 	ldb	,s	; , cmd
   531D BD 65 86      [ 8] 1680 	jsr	_picWrite	; 
                           1681 ;----- asm -----
                           1682 ;  184 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1683 	; #ENR#[180]    picWrite(arg);
                           1684 ;  0 "" 2
                           1685 ;--- end asm ---
   5320 E6 64         [ 5] 1686 	ldb	4,s	; , arg
   5322 BD 65 86      [ 8] 1687 	jsr	_picWrite	; 
                           1688 ;----- asm -----
                           1689 ;  186 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1690 	; #ENR#[181]    result = picRead();
                           1691 ;  0 "" 2
                           1692 ;--- end asm ---
   5325 BD 65 D2      [ 8] 1693 	jsr	_picRead	; 
   5328 E7 61         [ 5] 1694 	stb	1,s	; , result
                           1695 ;----- asm -----
                           1696 ;  188 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1697 	; #ENR#[182]    delay10ms();
                           1698 ;  0 "" 2
                           1699 ;--- end asm ---
   532A BD 66 2F      [ 8] 1700 	jsr	_delay10ms	; 
                           1701 ;----- asm -----
                           1702 ;  190 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1703 	; #ENR#[183]    return result;
                           1704 ;  0 "" 2
                           1705 ;--- end asm ---
   532D E6 61         [ 5] 1706 	ldb	1,s	; , result
   532F 32 62         [ 5] 1707 	leas	2,s	; ,,
   5331 39            [ 5] 1708 	rts
                           1709 	.globl _readEeprom
   5332                    1710 _readEeprom:
                           1711 ;----- asm -----
                           1712 ;  230 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1713 	; #ENR#[212]    if (picAvailable) {
                           1714 ;  0 "" 2
                           1715 ;--- end asm ---
   5332 7D CB 4A      [ 7] 1716 	tst	_picAvailable	;  picAvailable
   5335 27 0B         [ 3] 1717 	beq	L69	; 
                           1718 ;----- asm -----
                           1719 ;  232 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1720 	; #ENR#[213]        return sendCommand(CMD_EEPROM_READ, address);
                           1721 ;  0 "" 2
                           1722 ;--- end asm ---
   5337 34 04         [ 6] 1723 	pshs	b	;  address
   5339 C6 04         [ 2] 1724 	ldb	#4	; ,
   533B BD 53 12      [ 8] 1725 	jsr	_sendCommand	; 
   533E 32 61         [ 5] 1726 	leas	1,s	; ,,
   5340 20 02         [ 3] 1727 	bra	L70	; 
   5342                    1728 L69:
                           1729 ;----- asm -----
                           1730 ;  235 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1731 	; #ENR#[215]        return 0xff;
                           1732 ;  0 "" 2
                           1733 ;--- end asm ---
   5342 C6 FF         [ 2] 1734 	ldb	#-1	;  D.2274,
   5344                    1735 L70:
   5344 39            [ 5] 1736 	rts
                           1737 	.globl _startLevel
   5345                    1738 _startLevel:
   5345 34 60         [ 7] 1739 	pshs	y,u	; 
   5347 32 7C         [ 5] 1740 	leas	-4,s	; ,,
                           1741 ;----- asm -----
                           1742 ;  311 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1743 	; #ENR#[268]    if (arcadeMode) {
                           1744 ;  0 "" 2
                           1745 ;--- end asm ---
   5349 7D CB 4B      [ 7] 1746 	tst	_arcadeMode	;  arcadeMode
   534C 27 24         [ 3] 1747 	beq	L73	; 
                           1748 ;----- asm -----
                           1749 ;  313 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1750 	; #ENR#[269]        levelNumber = arcadeLevels[arcadeSelection][arcadeIndex] - 1;
                           1751 ;  0 "" 2
                           1752 ;--- end asm ---
   534E F6 CB 4D      [ 5] 1753 	ldb	_arcadeIndex	; , arcadeIndex
   5351 4F            [ 2] 1754 	clra		;zero_extendqihi: R:b -> R:d	; ,
   5352 1F 02         [ 6] 1755 	tfr	d,y	; , arcadeIndex
   5354 F6 CB 4C      [ 5] 1756 	ldb	_arcadeSelection	; , arcadeSelection
   5357 4F            [ 2] 1757 	clra		;zero_extendqihi: R:b -> R:d	; ,
   5358 ED 62         [ 6] 1758 	std	2,s	; ,
   535A 58            [ 2] 1759 	aslb	; 
   535B 49            [ 2] 1760 	rola	; 
   535C 58            [ 2] 1761 	aslb	; 
   535D 49            [ 2] 1762 	rola	; 
   535E EE 62         [ 6] 1763 	ldu	2,s	; ,
   5360 30 CB         [ 8] 1764 	leax	d,u	;  tmp35, tmp34,
   5362 1E 02         [ 8] 1765 	exg	d,y	; , arcadeIndex
   5364 30 8B         [ 8] 1766 	leax	d,x	;  tmp36,, tmp36
   5366 1E 02         [ 8] 1767 	exg	d,y	; , arcadeIndex
   5368 E6 89 59 EB   [ 8] 1768 	ldb	_arcadeLevels,x	; , arcadeLevels
   536C 5A            [ 2] 1769 	decb	; 
   536D F7 C8 83      [ 5] 1770 	stb	_levelNumber	; , levelNumber
   5370 20 2B         [ 3] 1771 	bra	L74	; 
   5372                    1772 L73:
                           1773 ;----- asm -----
                           1774 ;  316 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1775 	; #ENR#[271]        levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
                           1776 ;  0 "" 2
                           1777 ;--- end asm ---
   5372 F6 C8 83      [ 5] 1778 	ldb	_levelNumber	;  tmp38, levelNumber
   5375 58            [ 2] 1779 	aslb	;  tmp38
   5376 BD 53 32      [ 8] 1780 	jsr	_readEeprom	; 
   5379 4F            [ 2] 1781 	clra		;zero_extendqihi: R:b -> R:d	;  D.2325, D.2325
   537A FD CB 48      [ 6] 1782 	std	_levelHighscore	;  D.2325, levelHighscore
                           1783 ;----- asm -----
                           1784 ;  318 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1785 	; #ENR#[272]        levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
                           1786 ;  0 "" 2
                           1787 ;--- end asm ---
   537D F6 C8 83      [ 5] 1788 	ldb	_levelNumber	;  tmp40, levelNumber
   5380 58            [ 2] 1789 	aslb	;  tmp40
   5381 5C            [ 2] 1790 	incb	;  tmp41
   5382 BD 53 32      [ 8] 1791 	jsr	_readEeprom	; 
   5385 1F 98         [ 6] 1792 	tfr	b,a	; ,
   5387 5F            [ 2] 1793 	clrb	; 
   5388 BA CB 48      [ 5] 1794 	ora	_levelHighscore	; , levelHighscore
   538B FA CB 49      [ 5] 1795 	orb	_levelHighscore+1	; , levelHighscore
   538E FD CB 48      [ 6] 1796 	std	_levelHighscore	;  levelHighscore.22, levelHighscore
                           1797 ;----- asm -----
                           1798 ;  320 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1799 	; #ENR#[273]        if (levelHighscore == 0) levelHighscore = 999;
                           1800 ;  0 "" 2
                           1801 ;--- end asm ---
   5391 10 83 00 00   [ 5] 1802 	cmpd	#0	;  levelHighscore.22
   5395 26 06         [ 3] 1803 	bne	L74	; 
   5397 8E 03 E7      [ 3] 1804 	ldx	#999	; ,
   539A BF CB 48      [ 6] 1805 	stx	_levelHighscore	; , levelHighscore
   539D                    1806 L74:
                           1807 ;----- asm -----
                           1808 ;  328 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1809 	; #ENR#[280]    level = levels[levelNumber];
                           1810 ;  0 "" 2
                           1811 ;--- end asm ---
   539D F6 C8 83      [ 5] 1812 	ldb	_levelNumber	; , levelNumber
   53A0 4F            [ 2] 1813 	clra		;zero_extendqihi: R:b -> R:d	; ,
   53A1 ED E4         [ 5] 1814 	std	,s	; ,
   53A3 58            [ 2] 1815 	aslb	; 
   53A4 49            [ 2] 1816 	rola	; 
   53A5 1F 01         [ 6] 1817 	tfr	d,x	; , tmp47
   53A7 AE 89 4C E7   [ 9] 1818 	ldx	_levels,x	; , levels
   53AB BF C8 F4      [ 6] 1819 	stx	_level	; , level
                           1820 ;----- asm -----
                           1821 ;  330 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1822 	; #ENR#[281]    initSwatches();
                           1823 ;  0 "" 2
                           1824 ;--- end asm ---
   53AE BD 3D 0B      [ 8] 1825 	jsr	_initSwatches	; 
                           1826 ;----- asm -----
                           1827 ;  332 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1828 	; #ENR#[282]    initLevel();
                           1829 ;  0 "" 2
                           1830 ;--- end asm ---
   53B1 BD 41 99      [ 8] 1831 	jsr	_initLevel	; 
                           1832 ;----- asm -----
                           1833 ;  334 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1834 	; #ENR#[283]    blockX = level->start.x;
                           1835 ;  0 "" 2
                           1836 ;--- end asm ---
   53B4 BE C8 F4      [ 6] 1837 	ldx	_level	;  level, level
   53B7 E6 02         [ 5] 1838 	ldb	2,x	; , <variable>.start.x
   53B9 F7 C8 92      [ 5] 1839 	stb	_blockX	; , blockX
                           1840 ;----- asm -----
                           1841 ;  336 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1842 	; #ENR#[284]    blockY = level->start.y;
                           1843 ;  0 "" 2
                           1844 ;--- end asm ---
   53BC E6 03         [ 5] 1845 	ldb	3,x	; , <variable>.start.y
   53BE F7 C8 93      [ 5] 1846 	stb	_blockY	; , blockY
                           1847 ;----- asm -----
                           1848 ;  338 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1849 	; #ENR#[285]    blockStartLevel();
                           1850 ;  0 "" 2
                           1851 ;--- end asm ---
   53C1 BD 04 25      [ 8] 1852 	jsr	_blockStartLevel	; 
                           1853 ;----- asm -----
                           1854 ;  340 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1855 	; #ENR#[286]    blockYOfs = -30;
                           1856 ;  0 "" 2
                           1857 ;--- end asm ---
   53C4 C6 E2         [ 2] 1858 	ldb	#-30	; ,
   53C6 F7 C8 8E      [ 5] 1859 	stb	_blockYOfs	; , blockYOfs
                           1860 ;----- asm -----
                           1861 ;  342 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1862 	; #ENR#[287]    gameState = BlockMovingToStart;
                           1863 ;  0 "" 2
                           1864 ;--- end asm ---
   53C9 C6 04         [ 2] 1865 	ldb	#4	; ,
   53CB F7 CB 4E      [ 5] 1866 	stb	_gameState	; , gameState
                           1867 ;----- asm -----
                           1868 ;  344 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1869 	; #ENR#[288]    changeMusic(startMusic);
                           1870 ;  0 "" 2
                           1871 ;--- end asm ---
   53CE 8E 59 73      [ 3] 1872 	ldx	#_startMusic	; ,
   53D1 BD 4E 47      [ 8] 1873 	jsr	_changeMusic	; 
                           1874 ;----- asm -----
                           1875 ;  346 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1876 	; #ENR#[289]    *vecx = 2;
                           1877 ;  0 "" 2
                           1878 ;--- end asm ---
   53D4 C6 02         [ 2] 1879 	ldb	#2	; ,
   53D6 E7 9F C8 8B   [ 9] 1880 	stb	[_vecx]	; ,* vecx
                           1881 ;----- asm -----
                           1882 ;  348 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1883 	; #ENR#[290]    if (!arcadeMode) {
                           1884 ;  0 "" 2
                           1885 ;--- end asm ---
   53DA 7D CB 4B      [ 7] 1886 	tst	_arcadeMode	;  arcadeMode
   53DD 26 09         [ 3] 1887 	bne	L75	; 
                           1888 ;----- asm -----
                           1889 ;  350 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1890 	; #ENR#[291]        moveCount = 0;
                           1891 ;  0 "" 2
                           1892 ;--- end asm ---
   53DF CC 00 00      [ 3] 1893 	ldd	#0	; ,
   53E2 FD CB 44      [ 6] 1894 	std	_moveCount	; , moveCount
                           1895 ;----- asm -----
                           1896 ;  352 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1897 	; #ENR#[292]        updateInfoText();
                           1898 ;  0 "" 2
                           1899 ;--- end asm ---
   53E5 BD 51 01      [ 8] 1900 	jsr	_updateInfoText	; 
   53E8                    1901 L75:
                           1902 ;----- asm -----
                           1903 ;  355 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1904 	; #ENR#[294]    si = 0;
                           1905 ;  0 "" 2
                           1906 ;--- end asm ---
   53E8 7F CB 2F      [ 7] 1907 	clr	_si	;  si
   53EB 32 64         [ 5] 1908 	leas	4,s	; ,,
   53ED 35 E0         [ 8] 1909 	puls	y,u,pc	; 
   53EF                    1910 LC1:
   53EF 41                 1911 	.byte	0x41
   53F0 52                 1912 	.byte	0x52
   53F1 43                 1913 	.byte	0x43
   53F2 41                 1914 	.byte	0x41
   53F3 44                 1915 	.byte	0x44
   53F4 45                 1916 	.byte	0x45
   53F5 20                 1917 	.byte	0x20
   53F6 4D                 1918 	.byte	0x4D
   53F7 4F                 1919 	.byte	0x4F
   53F8 44                 1920 	.byte	0x44
   53F9 45                 1921 	.byte	0x45
   53FA 80                 1922 	.byte	0x80
   53FB 00                 1923 	.byte	0x00
   53FC                    1924 LC2:
   53FC 31                 1925 	.byte	0x31
   53FD 20                 1926 	.byte	0x20
   53FE 53                 1927 	.byte	0x53
   53FF 45                 1928 	.byte	0x45
   5400 54                 1929 	.byte	0x54
   5401 20                 1930 	.byte	0x20
   5402 31                 1931 	.byte	0x31
   5403 80                 1932 	.byte	0x80
   5404 00                 1933 	.byte	0x00
   5405                    1934 LC3:
   5405 32                 1935 	.byte	0x32
   5406 20                 1936 	.byte	0x20
   5407 53                 1937 	.byte	0x53
   5408 45                 1938 	.byte	0x45
   5409 54                 1939 	.byte	0x54
   540A 20                 1940 	.byte	0x20
   540B 32                 1941 	.byte	0x32
   540C 80                 1942 	.byte	0x80
   540D 00                 1943 	.byte	0x00
   540E                    1944 LC4:
   540E 33                 1945 	.byte	0x33
   540F 20                 1946 	.byte	0x20
   5410 53                 1947 	.byte	0x53
   5411 45                 1948 	.byte	0x45
   5412 54                 1949 	.byte	0x54
   5413 20                 1950 	.byte	0x20
   5414 33                 1951 	.byte	0x33
   5415 80                 1952 	.byte	0x80
   5416 00                 1953 	.byte	0x00
   5417                    1954 LC5:
   5417 34                 1955 	.byte	0x34
   5418 20                 1956 	.byte	0x20
   5419 53                 1957 	.byte	0x53
   541A 45                 1958 	.byte	0x45
   541B 54                 1959 	.byte	0x54
   541C 20                 1960 	.byte	0x20
   541D 34                 1961 	.byte	0x34
   541E 80                 1962 	.byte	0x80
   541F 00                 1963 	.byte	0x00
                           1964 	.globl _arcadeMenu
   5420                    1965 _arcadeMenu:
   5420 34 40         [ 6] 1966 	pshs	u	; 
   5422 32 7C         [ 5] 1967 	leas	-4,s	; ,,
                           1968 ;----- asm -----
                           1969 ;  1031 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1970 	; #ENR#[813]    Read_Btns();
                           1971 ;  0 "" 2
                           1972 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5424 BD F1 BA      [ 8] 1973 	jsr ___Read_Btns; BIOS call
                           1974 ;  0 "" 2
                           1975 ;  1033 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1976 	; #ENR#[814]    Intensity_a(0x5f);
                           1977 ;  0 "" 2
                           1978 ;--- end asm ---
   5427 C6 5F         [ 2] 1979 	ldb	#95	; ,
   5429 E7 63         [ 5] 1980 	stb	3,s	; , a
                           1981 ;----- asm -----
                           1982 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   542B A6 63         [ 5] 1983 	lda 3,s	;  a
   542D BD F2 AB      [ 8] 1984 	jsr ___Intensity_a; BIOS call
                           1985 ;  0 "" 2
                           1986 ;  1035 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1987 	; #ENR#[815]    Vec_Text_Width = 90;
                           1988 ;  0 "" 2
                           1989 ;--- end asm ---
   5430 C6 5A         [ 2] 1990 	ldb	#90	; ,
   5432 F7 C8 2B      [ 5] 1991 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1992 ;----- asm -----
                           1993 ;  1037 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1994 	; #ENR#[816]    Print_Str_d(100, -70, "ARCADE MODE�");
                           1995 ;  0 "" 2
                           1996 ;--- end asm ---
   5435 CB 0A         [ 2] 1997 	addb	#10	; ,
   5437 E7 63         [ 5] 1998 	stb	3,s	; , a
   5439 C6 BA         [ 2] 1999 	ldb	#-70	; ,
   543B E7 62         [ 5] 2000 	stb	2,s	; , b
   543D 8E 53 EF      [ 3] 2001 	ldx	#LC1	; ,
   5440 AF E4         [ 5] 2002 	stx	,s	; , u
                           2003 ;----- asm -----
                           2004 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5442 A6 63         [ 5] 2005 	lda 3,s	;  a
   5444 E6 62         [ 5] 2006 	ldb 2,s	;  b
   5446 EE E4         [ 5] 2007 	ldu ,s	;  u
   5448 BD F3 7A      [ 8] 2008 	jsr ___Print_Str_d; BIOS call
                           2009 ;  0 "" 2
                           2010 ;  1039 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2011 	; #ENR#[817]    Print_Str_d(50, -110, "1 SET 1�");
                           2012 ;  0 "" 2
                           2013 ;--- end asm ---
   544B C6 32         [ 2] 2014 	ldb	#50	; ,
   544D E7 62         [ 5] 2015 	stb	2,s	; , a
   544F C6 92         [ 2] 2016 	ldb	#-110	; ,
   5451 E7 63         [ 5] 2017 	stb	3,s	; , b
   5453 8E 53 FC      [ 3] 2018 	ldx	#LC2	; ,
   5456 AF E4         [ 5] 2019 	stx	,s	; , u
                           2020 ;----- asm -----
                           2021 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5458 A6 62         [ 5] 2022 	lda 2,s	;  a
   545A E6 63         [ 5] 2023 	ldb 3,s	;  b
   545C EE E4         [ 5] 2024 	ldu ,s	;  u
   545E BD F3 7A      [ 8] 2025 	jsr ___Print_Str_d; BIOS call
                           2026 ;  0 "" 2
                           2027 ;  1041 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2028 	; #ENR#[818]    Print_Str_d(20, -110, "2 SET 2�");
                           2029 ;  0 "" 2
                           2030 ;--- end asm ---
   5461 C6 14         [ 2] 2031 	ldb	#20	; ,
   5463 E7 63         [ 5] 2032 	stb	3,s	; , a
   5465 C6 92         [ 2] 2033 	ldb	#-110	; ,
   5467 E7 62         [ 5] 2034 	stb	2,s	; , b
   5469 8E 54 05      [ 3] 2035 	ldx	#LC3	; ,
   546C AF E4         [ 5] 2036 	stx	,s	; , u
                           2037 ;----- asm -----
                           2038 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   546E A6 63         [ 5] 2039 	lda 3,s	;  a
   5470 E6 62         [ 5] 2040 	ldb 2,s	;  b
   5472 EE E4         [ 5] 2041 	ldu ,s	;  u
   5474 BD F3 7A      [ 8] 2042 	jsr ___Print_Str_d; BIOS call
                           2043 ;  0 "" 2
                           2044 ;  1043 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2045 	; #ENR#[819]    Print_Str_d(-10, -110, "3 SET 3�");
                           2046 ;  0 "" 2
                           2047 ;--- end asm ---
   5477 C6 F6         [ 2] 2048 	ldb	#-10	; ,
   5479 E7 62         [ 5] 2049 	stb	2,s	; , a
   547B C6 92         [ 2] 2050 	ldb	#-110	; ,
   547D E7 63         [ 5] 2051 	stb	3,s	; , b
   547F 8E 54 0E      [ 3] 2052 	ldx	#LC4	; ,
   5482 AF E4         [ 5] 2053 	stx	,s	; , u
                           2054 ;----- asm -----
                           2055 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5484 A6 62         [ 5] 2056 	lda 2,s	;  a
   5486 E6 63         [ 5] 2057 	ldb 3,s	;  b
   5488 EE E4         [ 5] 2058 	ldu ,s	;  u
   548A BD F3 7A      [ 8] 2059 	jsr ___Print_Str_d; BIOS call
                           2060 ;  0 "" 2
                           2061 ;  1045 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2062 	; #ENR#[820]    Print_Str_d(-40, -110, "4 SET 4�");
                           2063 ;  0 "" 2
                           2064 ;--- end asm ---
   548D C6 D8         [ 2] 2065 	ldb	#-40	; ,
   548F E7 63         [ 5] 2066 	stb	3,s	; , a
   5491 C6 92         [ 2] 2067 	ldb	#-110	; ,
   5493 E7 62         [ 5] 2068 	stb	2,s	; , b
   5495 8E 54 17      [ 3] 2069 	ldx	#LC5	; ,
   5498 AF E4         [ 5] 2070 	stx	,s	; , u
                           2071 ;----- asm -----
                           2072 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   549A A6 63         [ 5] 2073 	lda 3,s	;  a
   549C E6 62         [ 5] 2074 	ldb 2,s	;  b
   549E EE E4         [ 5] 2075 	ldu ,s	;  u
   54A0 BD F3 7A      [ 8] 2076 	jsr ___Print_Str_d; BIOS call
                           2077 ;  0 "" 2
                           2078 ;  1047 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2079 	; #ENR#[821]    if (Vec_Buttons & 1) {
                           2080 ;  0 "" 2
                           2081 ;--- end asm ---
   54A3 F6 C8 11      [ 5] 2082 	ldb	_Vec_Buttons	; , Vec_Buttons
   54A6 C5 01         [ 2] 2083 	bitb	#1	; ,
   54A8 27 06         [ 3] 2084 	beq	L78	; 
                           2085 ;----- asm -----
                           2086 ;  1049 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2087 	; #ENR#[822]        arcadeSelection = 0;
                           2088 ;  0 "" 2
                           2089 ;--- end asm ---
   54AA 7F CB 4C      [ 7] 2090 	clr	_arcadeSelection	;  arcadeSelection
                           2091 ;----- asm -----
                           2092 ;  1051 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2093 	; #ENR#[823]        startLevel();
                           2094 ;  0 "" 2
                           2095 ;--- end asm ---
   54AD BD 53 45      [ 8] 2096 	jsr	_startLevel	; 
   54B0                    2097 L78:
                           2098 ;----- asm -----
                           2099 ;  1054 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2100 	; #ENR#[825]    if (Vec_Buttons & 2) {
                           2101 ;  0 "" 2
                           2102 ;--- end asm ---
   54B0 F6 C8 11      [ 5] 2103 	ldb	_Vec_Buttons	; , Vec_Buttons
   54B3 C5 02         [ 2] 2104 	bitb	#2	; ,
   54B5 27 08         [ 3] 2105 	beq	L79	; 
                           2106 ;----- asm -----
                           2107 ;  1056 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2108 	; #ENR#[826]        arcadeSelection = 1;
                           2109 ;  0 "" 2
                           2110 ;--- end asm ---
   54B7 C6 01         [ 2] 2111 	ldb	#1	; ,
   54B9 F7 CB 4C      [ 5] 2112 	stb	_arcadeSelection	; , arcadeSelection
                           2113 ;----- asm -----
                           2114 ;  1058 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2115 	; #ENR#[827]        startLevel();
                           2116 ;  0 "" 2
                           2117 ;--- end asm ---
   54BC BD 53 45      [ 8] 2118 	jsr	_startLevel	; 
   54BF                    2119 L79:
                           2120 ;----- asm -----
                           2121 ;  1061 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2122 	; #ENR#[829]    if (Vec_Buttons & 4) {
                           2123 ;  0 "" 2
                           2124 ;--- end asm ---
   54BF F6 C8 11      [ 5] 2125 	ldb	_Vec_Buttons	; , Vec_Buttons
   54C2 C5 04         [ 2] 2126 	bitb	#4	; ,
   54C4 27 08         [ 3] 2127 	beq	L80	; 
                           2128 ;----- asm -----
                           2129 ;  1063 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2130 	; #ENR#[830]        arcadeSelection = 2;
                           2131 ;  0 "" 2
                           2132 ;--- end asm ---
   54C6 C6 02         [ 2] 2133 	ldb	#2	; ,
   54C8 F7 CB 4C      [ 5] 2134 	stb	_arcadeSelection	; , arcadeSelection
                           2135 ;----- asm -----
                           2136 ;  1065 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2137 	; #ENR#[831]        startLevel();
                           2138 ;  0 "" 2
                           2139 ;--- end asm ---
   54CB BD 53 45      [ 8] 2140 	jsr	_startLevel	; 
   54CE                    2141 L80:
                           2142 ;----- asm -----
                           2143 ;  1068 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2144 	; #ENR#[833]    if (Vec_Buttons & 8) {
                           2145 ;  0 "" 2
                           2146 ;--- end asm ---
   54CE F6 C8 11      [ 5] 2147 	ldb	_Vec_Buttons	; , Vec_Buttons
   54D1 C5 08         [ 2] 2148 	bitb	#8	; ,
   54D3 27 08         [ 3] 2149 	beq	L82	; 
                           2150 ;----- asm -----
                           2151 ;  1070 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2152 	; #ENR#[834]        arcadeSelection = 3;
                           2153 ;  0 "" 2
                           2154 ;--- end asm ---
   54D5 C6 03         [ 2] 2155 	ldb	#3	; ,
   54D7 F7 CB 4C      [ 5] 2156 	stb	_arcadeSelection	; , arcadeSelection
                           2157 ;----- asm -----
                           2158 ;  1072 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2159 	; #ENR#[835]        startLevel();
                           2160 ;  0 "" 2
                           2161 ;--- end asm ---
   54DA BD 53 45      [ 8] 2162 	jsr	_startLevel	; 
   54DD                    2163 L82:
   54DD 32 64         [ 5] 2164 	leas	4,s	; ,,
   54DF 35 C0         [ 7] 2165 	puls	u,pc	; 
   54E1                    2166 LC6:
   54E1 4D                 2167 	.byte	0x4D
   54E2 41                 2168 	.byte	0x41
   54E3 49                 2169 	.byte	0x49
   54E4 4E                 2170 	.byte	0x4E
   54E5 20                 2171 	.byte	0x20
   54E6 4D                 2172 	.byte	0x4D
   54E7 45                 2173 	.byte	0x45
   54E8 4E                 2174 	.byte	0x4E
   54E9 55                 2175 	.byte	0x55
   54EA 80                 2176 	.byte	0x80
   54EB 00                 2177 	.byte	0x00
   54EC                    2178 LC7:
   54EC 31                 2179 	.byte	0x31
   54ED 20                 2180 	.byte	0x20
   54EE 50                 2181 	.byte	0x50
   54EF 55                 2182 	.byte	0x55
   54F0 5A                 2183 	.byte	0x5A
   54F1 5A                 2184 	.byte	0x5A
   54F2 4C                 2185 	.byte	0x4C
   54F3 45                 2186 	.byte	0x45
   54F4 20                 2187 	.byte	0x20
   54F5 4D                 2188 	.byte	0x4D
   54F6 4F                 2189 	.byte	0x4F
   54F7 44                 2190 	.byte	0x44
   54F8 45                 2191 	.byte	0x45
   54F9 80                 2192 	.byte	0x80
   54FA 00                 2193 	.byte	0x00
   54FB                    2194 LC8:
   54FB 32                 2195 	.byte	0x32
   54FC 20                 2196 	.byte	0x20
   54FD 41                 2197 	.byte	0x41
   54FE 52                 2198 	.byte	0x52
   54FF 43                 2199 	.byte	0x43
   5500 41                 2200 	.byte	0x41
   5501 44                 2201 	.byte	0x44
   5502 45                 2202 	.byte	0x45
   5503 20                 2203 	.byte	0x20
   5504 4D                 2204 	.byte	0x4D
   5505 4F                 2205 	.byte	0x4F
   5506 44                 2206 	.byte	0x44
   5507 45                 2207 	.byte	0x45
   5508 80                 2208 	.byte	0x80
   5509 00                 2209 	.byte	0x00
   550A                    2210 LC9:
   550A 33                 2211 	.byte	0x33
   550B 20                 2212 	.byte	0x20
   550C 43                 2213 	.byte	0x43
   550D 4C                 2214 	.byte	0x4C
   550E 45                 2215 	.byte	0x45
   550F 41                 2216 	.byte	0x41
   5510 52                 2217 	.byte	0x52
   5511 20                 2218 	.byte	0x20
   5512 48                 2219 	.byte	0x48
   5513 49                 2220 	.byte	0x49
   5514 47                 2221 	.byte	0x47
   5515 48                 2222 	.byte	0x48
   5516 53                 2223 	.byte	0x53
   5517 43                 2224 	.byte	0x43
   5518 4F                 2225 	.byte	0x4F
   5519 52                 2226 	.byte	0x52
   551A 45                 2227 	.byte	0x45
   551B 80                 2228 	.byte	0x80
   551C 00                 2229 	.byte	0x00
                           2230 	.globl _mainMenu
   551D                    2231 _mainMenu:
   551D 34 40         [ 6] 2232 	pshs	u	; 
   551F 32 7C         [ 5] 2233 	leas	-4,s	; ,,
                           2234 ;----- asm -----
                           2235 ;  986 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2236 	; #ENR#[787]    Read_Btns();
                           2237 ;  0 "" 2
                           2238 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5521 BD F1 BA      [ 8] 2239 	jsr ___Read_Btns; BIOS call
                           2240 ;  0 "" 2
                           2241 ;  988 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2242 	; #ENR#[788]    Intensity_a(0x5f);
                           2243 ;  0 "" 2
                           2244 ;--- end asm ---
   5524 C6 5F         [ 2] 2245 	ldb	#95	; ,
   5526 E7 62         [ 5] 2246 	stb	2,s	; , a
                           2247 ;----- asm -----
                           2248 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5528 A6 62         [ 5] 2249 	lda 2,s	;  a
   552A BD F2 AB      [ 8] 2250 	jsr ___Intensity_a; BIOS call
                           2251 ;  0 "" 2
                           2252 ;  990 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2253 	; #ENR#[789]    Vec_Text_Width = 90;
                           2254 ;  0 "" 2
                           2255 ;--- end asm ---
   552D C6 5A         [ 2] 2256 	ldb	#90	; ,
   552F F7 C8 2B      [ 5] 2257 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           2258 ;----- asm -----
                           2259 ;  992 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2260 	; #ENR#[790]    Print_Str_d(100, -70, "MAIN MENU�");
                           2261 ;  0 "" 2
                           2262 ;--- end asm ---
   5532 CB 0A         [ 2] 2263 	addb	#10	; ,
   5534 E7 62         [ 5] 2264 	stb	2,s	; , a
   5536 C6 BA         [ 2] 2265 	ldb	#-70	; ,
   5538 E7 63         [ 5] 2266 	stb	3,s	; , b
   553A 8E 54 E1      [ 3] 2267 	ldx	#LC6	; ,
   553D AF E4         [ 5] 2268 	stx	,s	; , u
                           2269 ;----- asm -----
                           2270 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   553F A6 62         [ 5] 2271 	lda 2,s	;  a
   5541 E6 63         [ 5] 2272 	ldb 3,s	;  b
   5543 EE E4         [ 5] 2273 	ldu ,s	;  u
   5545 BD F3 7A      [ 8] 2274 	jsr ___Print_Str_d; BIOS call
                           2275 ;  0 "" 2
                           2276 ;  994 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2277 	; #ENR#[791]    Print_Str_d(50, -110, "1 PUZZLE MODE�");
                           2278 ;  0 "" 2
                           2279 ;--- end asm ---
   5548 C6 32         [ 2] 2280 	ldb	#50	; ,
   554A E7 63         [ 5] 2281 	stb	3,s	; , a
   554C C6 92         [ 2] 2282 	ldb	#-110	; ,
   554E E7 62         [ 5] 2283 	stb	2,s	; , b
   5550 8E 54 EC      [ 3] 2284 	ldx	#LC7	; ,
   5553 AF E4         [ 5] 2285 	stx	,s	; , u
                           2286 ;----- asm -----
                           2287 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5555 A6 63         [ 5] 2288 	lda 3,s	;  a
   5557 E6 62         [ 5] 2289 	ldb 2,s	;  b
   5559 EE E4         [ 5] 2290 	ldu ,s	;  u
   555B BD F3 7A      [ 8] 2291 	jsr ___Print_Str_d; BIOS call
                           2292 ;  0 "" 2
                           2293 ;  996 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2294 	; #ENR#[792]    Print_Str_d(20, -110, "2 ARCADE MODE�");
                           2295 ;  0 "" 2
                           2296 ;--- end asm ---
   555E C6 14         [ 2] 2297 	ldb	#20	; ,
   5560 E7 62         [ 5] 2298 	stb	2,s	; , a
   5562 C6 92         [ 2] 2299 	ldb	#-110	; ,
   5564 E7 63         [ 5] 2300 	stb	3,s	; , b
   5566 8E 54 FB      [ 3] 2301 	ldx	#LC8	; ,
   5569 AF E4         [ 5] 2302 	stx	,s	; , u
                           2303 ;----- asm -----
                           2304 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   556B A6 62         [ 5] 2305 	lda 2,s	;  a
   556D E6 63         [ 5] 2306 	ldb 3,s	;  b
   556F EE E4         [ 5] 2307 	ldu ,s	;  u
   5571 BD F3 7A      [ 8] 2308 	jsr ___Print_Str_d; BIOS call
                           2309 ;  0 "" 2
                           2310 ;  998 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2311 	; #ENR#[793]    Print_Str_d(-10, -110, "3 CLEAR HIGHSCORE�");
                           2312 ;  0 "" 2
                           2313 ;--- end asm ---
   5574 C6 F6         [ 2] 2314 	ldb	#-10	; ,
   5576 E7 63         [ 5] 2315 	stb	3,s	; , a
   5578 C6 92         [ 2] 2316 	ldb	#-110	; ,
   557A E7 62         [ 5] 2317 	stb	2,s	; , b
   557C 8E 55 0A      [ 3] 2318 	ldx	#LC9	; ,
   557F AF E4         [ 5] 2319 	stx	,s	; , u
                           2320 ;----- asm -----
                           2321 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5581 A6 63         [ 5] 2322 	lda 3,s	;  a
   5583 E6 62         [ 5] 2323 	ldb 2,s	;  b
   5585 EE E4         [ 5] 2324 	ldu ,s	;  u
   5587 BD F3 7A      [ 8] 2325 	jsr ___Print_Str_d; BIOS call
                           2326 ;  0 "" 2
                           2327 ;  1000 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2328 	; #ENR#[794]    if (Vec_Buttons & 1) {
                           2329 ;  0 "" 2
                           2330 ;--- end asm ---
   558A F6 C8 11      [ 5] 2331 	ldb	_Vec_Buttons	; , Vec_Buttons
   558D C5 01         [ 2] 2332 	bitb	#1	; ,
   558F 27 09         [ 3] 2333 	beq	L84	; 
                           2334 ;----- asm -----
                           2335 ;  1002 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2336 	; #ENR#[795]        arcadeMode = 0;
                           2337 ;  0 "" 2
                           2338 ;--- end asm ---
   5591 7F CB 4B      [ 7] 2339 	clr	_arcadeMode	;  arcadeMode
                           2340 ;----- asm -----
                           2341 ;  1004 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2342 	; #ENR#[796]        levelNumber = 0;
                           2343 ;  0 "" 2
                           2344 ;--- end asm ---
   5594 7F C8 83      [ 7] 2345 	clr	_levelNumber	;  levelNumber
                           2346 ;----- asm -----
                           2347 ;  1006 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2348 	; #ENR#[797]        startLevel();
                           2349 ;  0 "" 2
                           2350 ;--- end asm ---
   5597 BD 53 45      [ 8] 2351 	jsr	_startLevel	; 
   559A                    2352 L84:
                           2353 ;----- asm -----
                           2354 ;  1009 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2355 	; #ENR#[799]    if (Vec_Buttons & 2) {
                           2356 ;  0 "" 2
                           2357 ;--- end asm ---
   559A F6 C8 11      [ 5] 2358 	ldb	_Vec_Buttons	; , Vec_Buttons
   559D C5 02         [ 2] 2359 	bitb	#2	; ,
   559F 27 14         [ 3] 2360 	beq	L85	; 
                           2361 ;----- asm -----
                           2362 ;  1011 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2363 	; #ENR#[800]        frames = 0;
                           2364 ;  0 "" 2
                           2365 ;--- end asm ---
   55A1 CC 00 00      [ 3] 2366 	ldd	#0	; ,
   55A4 FD CB 46      [ 6] 2367 	std	_frames	; , frames
                           2368 ;----- asm -----
                           2369 ;  1013 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2370 	; #ENR#[801]        moveCount = 0;
                           2371 ;  0 "" 2
                           2372 ;--- end asm ---
   55A7 FD CB 44      [ 6] 2373 	std	_moveCount	; , moveCount
                           2374 ;----- asm -----
                           2375 ;  1015 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2376 	; #ENR#[802]        arcadeMode = 1;
                           2377 ;  0 "" 2
                           2378 ;--- end asm ---
   55AA C6 01         [ 2] 2379 	ldb	#1	; ,
   55AC F7 CB 4B      [ 5] 2380 	stb	_arcadeMode	; , arcadeMode
                           2381 ;----- asm -----
                           2382 ;  1017 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2383 	; #ENR#[803]        arcadeIndex = 0;
                           2384 ;  0 "" 2
                           2385 ;--- end asm ---
   55AF 7F CB 4D      [ 7] 2386 	clr	_arcadeIndex	;  arcadeIndex
                           2387 ;----- asm -----
                           2388 ;  1019 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2389 	; #ENR#[804]        gameState = ArcadeMenu;
                           2390 ;  0 "" 2
                           2391 ;--- end asm ---
   55B2 F7 CB 4E      [ 5] 2392 	stb	_gameState	; , gameState
   55B5                    2393 L85:
                           2394 ;----- asm -----
                           2395 ;  1022 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2396 	; #ENR#[806]    if (Vec_Buttons & 4) {
                           2397 ;  0 "" 2
                           2398 ;--- end asm ---
   55B5 F6 C8 11      [ 5] 2399 	ldb	_Vec_Buttons	; , Vec_Buttons
   55B8 C5 04         [ 2] 2400 	bitb	#4	; ,
   55BA 27 05         [ 3] 2401 	beq	L87	; 
                           2402 ;----- asm -----
                           2403 ;  1024 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2404 	; #ENR#[807]        gameState = ClearMenu;
                           2405 ;  0 "" 2
                           2406 ;--- end asm ---
   55BC C6 03         [ 2] 2407 	ldb	#3	; ,
   55BE F7 CB 4E      [ 5] 2408 	stb	_gameState	; , gameState
   55C1                    2409 L87:
   55C1 32 64         [ 5] 2410 	leas	4,s	; ,,
   55C3 35 C0         [ 7] 2411 	puls	u,pc	; 
                           2412 	.globl _blockFalling
   55C5                    2413 _blockFalling:
   55C5 32 7F         [ 5] 2414 	leas	-1,s	; ,,
                           2415 ;----- asm -----
                           2416 ;  918 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2417 	; #ENR#[745]    drawField();
                           2418 ;  0 "" 2
                           2419 ;--- end asm ---
   55C7 BD 4E 50      [ 8] 2420 	jsr	_drawField	; 
                           2421 ;----- asm -----
                           2422 ;  920 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2423 	; #ENR#[746]    blockYOfs++;
                           2424 ;  0 "" 2
                           2425 ;--- end asm ---
   55CA F6 C8 8E      [ 5] 2426 	ldb	_blockYOfs	; , blockYOfs
   55CD 5C            [ 2] 2427 	incb	; 
   55CE E7 E4         [ 4] 2428 	stb	,s	; , blockYOfs.58
   55D0 F7 C8 8E      [ 5] 2429 	stb	_blockYOfs	; , blockYOfs
                           2430 ;----- asm -----
                           2431 ;  922 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2432 	; #ENR#[747]    if (blockYOfs < 12) {
                           2433 ;  0 "" 2
                           2434 ;--- end asm ---
   55D3 C1 0B         [ 2] 2435 	cmpb	#11	;cmpqi:	; ,
   55D5 2E 0A         [ 3] 2436 	bgt	L89	; 
                           2437 ;----- asm -----
                           2438 ;  924 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2439 	; #ENR#[748]        drawBlock(-blockYOfs*blockYOfs);
                           2440 ;  0 "" 2
                           2441 ;--- end asm ---
   55D7 50            [ 2] 2442 	negb	;  tmp28
   55D8 A6 E4         [ 4] 2443 	lda	,s	;mulqihi3	;  blockYOfs.58
   55DA 3D            [11] 2444 	mul
                           2445 		;movlsbqihi: D->B
   55DB BD 04 FE      [ 8] 2446 	jsr	_drawBlock	; 
                           2447 ;----- asm -----
                           2448 ;  926 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2449 	; #ENR#[749]        doBlockAnimation();
                           2450 ;  0 "" 2
                           2451 ;--- end asm ---
   55DE BD 03 FC      [ 8] 2452 	jsr	_doBlockAnimation	; 
   55E1                    2453 L89:
                           2454 ;----- asm -----
                           2455 ;  929 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2456 	; #ENR#[751]    if (blockYOfs == 50) {
                           2457 ;  0 "" 2
                           2458 ;--- end asm ---
   55E1 F6 C8 8E      [ 5] 2459 	ldb	_blockYOfs	; , blockYOfs
   55E4 C1 32         [ 2] 2460 	cmpb	#50	;cmpqi:	; ,
   55E6 26 03         [ 3] 2461 	bne	L91	; 
                           2462 ;----- asm -----
                           2463 ;  931 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2464 	; #ENR#[752]        startLevel();
                           2465 ;  0 "" 2
                           2466 ;--- end asm ---
   55E8 BD 53 45      [ 8] 2467 	jsr	_startLevel	; 
   55EB                    2468 L91:
   55EB 32 61         [ 5] 2469 	leas	1,s	; ,,
   55ED 39            [ 5] 2470 	rts
                           2471 	.globl _writeEeprom
   55EE                    2472 _writeEeprom:
                           2473 ;----- asm -----
                           2474 ;  219 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2475 	; #ENR#[204]    if (picAvailable) {
                           2476 ;  0 "" 2
                           2477 ;--- end asm ---
   55EE 7D CB 4A      [ 7] 2478 	tst	_picAvailable	;  picAvailable
   55F1 27 12         [ 3] 2479 	beq	L94	; 
                           2480 ;----- asm -----
                           2481 ;  221 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2482 	; #ENR#[205]        sendCommand(CMD_SET_EEPROM_ADR, address);
                           2483 ;  0 "" 2
                           2484 ;--- end asm ---
   55F3 34 04         [ 6] 2485 	pshs	b	;  address
   55F5 C6 02         [ 2] 2486 	ldb	#2	; ,
   55F7 BD 53 12      [ 8] 2487 	jsr	_sendCommand	; 
                           2488 ;----- asm -----
                           2489 ;  223 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2490 	; #ENR#[206]        sendCommand(CMD_EEPROM_WRITE, data);
                           2491 ;  0 "" 2
                           2492 ;--- end asm ---
   55FA E6 63         [ 5] 2493 	ldb	3,s	; , data
   55FC E7 E2         [ 6] 2494 	stb	,-s	; ,
   55FE C6 03         [ 2] 2495 	ldb	#3	; ,
   5600 BD 53 12      [ 8] 2496 	jsr	_sendCommand	; 
   5603 32 62         [ 5] 2497 	leas	2,s	; ,,
   5605                    2498 L94:
   5605 39            [ 5] 2499 	rts
   5606                    2500 LC10:
   5606 43                 2501 	.byte	0x43
   5607 4C                 2502 	.byte	0x4C
   5608 45                 2503 	.byte	0x45
   5609 41                 2504 	.byte	0x41
   560A 52                 2505 	.byte	0x52
   560B 20                 2506 	.byte	0x20
   560C 53                 2507 	.byte	0x53
   560D 43                 2508 	.byte	0x43
   560E 4F                 2509 	.byte	0x4F
   560F 52                 2510 	.byte	0x52
   5610 45                 2511 	.byte	0x45
   5611 3F                 2512 	.byte	0x3F
   5612 80                 2513 	.byte	0x80
   5613 00                 2514 	.byte	0x00
   5614                    2515 LC11:
   5614 33                 2516 	.byte	0x33
   5615 20                 2517 	.byte	0x20
   5616 59                 2518 	.byte	0x59
   5617 45                 2519 	.byte	0x45
   5618 53                 2520 	.byte	0x53
   5619 80                 2521 	.byte	0x80
   561A 00                 2522 	.byte	0x00
   561B                    2523 LC12:
   561B 34                 2524 	.byte	0x34
   561C 20                 2525 	.byte	0x20
   561D 4E                 2526 	.byte	0x4E
   561E 4F                 2527 	.byte	0x4F
   561F 80                 2528 	.byte	0x80
   5620 00                 2529 	.byte	0x00
                           2530 	.globl _clearMenu
   5621                    2531 _clearMenu:
   5621 34 40         [ 6] 2532 	pshs	u	; 
   5623 32 7B         [ 5] 2533 	leas	-5,s	; ,,
                           2534 ;----- asm -----
                           2535 ;  1113 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2536 	; #ENR#[862]    Read_Btns();
                           2537 ;  0 "" 2
                           2538 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5625 BD F1 BA      [ 8] 2539 	jsr ___Read_Btns; BIOS call
                           2540 ;  0 "" 2
                           2541 ;  1115 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2542 	; #ENR#[863]    Intensity_a(0x5f);
                           2543 ;  0 "" 2
                           2544 ;--- end asm ---
   5628 C6 5F         [ 2] 2545 	ldb	#95	; ,
   562A E7 64         [ 5] 2546 	stb	4,s	; , a
                           2547 ;----- asm -----
                           2548 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   562C A6 64         [ 5] 2549 	lda 4,s	;  a
   562E BD F2 AB      [ 8] 2550 	jsr ___Intensity_a; BIOS call
                           2551 ;  0 "" 2
                           2552 ;  1117 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2553 	; #ENR#[864]    Vec_Text_Width = 90;
                           2554 ;  0 "" 2
                           2555 ;--- end asm ---
   5631 C6 5A         [ 2] 2556 	ldb	#90	; ,
   5633 F7 C8 2B      [ 5] 2557 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           2558 ;----- asm -----
                           2559 ;  1119 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2560 	; #ENR#[865]    Print_Str_d(100, -80, "CLEAR SCORE?�");
                           2561 ;  0 "" 2
                           2562 ;--- end asm ---
   5636 CB 0A         [ 2] 2563 	addb	#10	; ,
   5638 E7 64         [ 5] 2564 	stb	4,s	; , a
   563A C6 B0         [ 2] 2565 	ldb	#-80	; ,
   563C E7 63         [ 5] 2566 	stb	3,s	; , b
   563E 8E 56 06      [ 3] 2567 	ldx	#LC10	; ,
   5641 AF 61         [ 6] 2568 	stx	1,s	; , u
                           2569 ;----- asm -----
                           2570 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5643 A6 64         [ 5] 2571 	lda 4,s	;  a
   5645 E6 63         [ 5] 2572 	ldb 3,s	;  b
   5647 EE 61         [ 6] 2573 	ldu 1,s	;  u
   5649 BD F3 7A      [ 8] 2574 	jsr ___Print_Str_d; BIOS call
                           2575 ;  0 "" 2
                           2576 ;  1121 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2577 	; #ENR#[866]    Print_Str_d(50, -110, "3 YES�");
                           2578 ;  0 "" 2
                           2579 ;--- end asm ---
   564C C6 32         [ 2] 2580 	ldb	#50	; ,
   564E E7 63         [ 5] 2581 	stb	3,s	; , a
   5650 C6 92         [ 2] 2582 	ldb	#-110	; ,
   5652 E7 64         [ 5] 2583 	stb	4,s	; , b
   5654 8E 56 14      [ 3] 2584 	ldx	#LC11	; ,
   5657 AF 61         [ 6] 2585 	stx	1,s	; , u
                           2586 ;----- asm -----
                           2587 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5659 A6 63         [ 5] 2588 	lda 3,s	;  a
   565B E6 64         [ 5] 2589 	ldb 4,s	;  b
   565D EE 61         [ 6] 2590 	ldu 1,s	;  u
   565F BD F3 7A      [ 8] 2591 	jsr ___Print_Str_d; BIOS call
                           2592 ;  0 "" 2
                           2593 ;  1123 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2594 	; #ENR#[867]    Print_Str_d(20, -110, "4 NO�");
                           2595 ;  0 "" 2
                           2596 ;--- end asm ---
   5662 C6 14         [ 2] 2597 	ldb	#20	; ,
   5664 E7 64         [ 5] 2598 	stb	4,s	; , a
   5666 C6 92         [ 2] 2599 	ldb	#-110	; ,
   5668 E7 63         [ 5] 2600 	stb	3,s	; , b
   566A 8E 56 1B      [ 3] 2601 	ldx	#LC12	; ,
   566D AF 61         [ 6] 2602 	stx	1,s	; , u
                           2603 ;----- asm -----
                           2604 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   566F A6 64         [ 5] 2605 	lda 4,s	;  a
   5671 E6 63         [ 5] 2606 	ldb 3,s	;  b
   5673 EE 61         [ 6] 2607 	ldu 1,s	;  u
   5675 BD F3 7A      [ 8] 2608 	jsr ___Print_Str_d; BIOS call
                           2609 ;  0 "" 2
                           2610 ;  1125 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2611 	; #ENR#[868]    if (Vec_Buttons & 4) {
                           2612 ;  0 "" 2
                           2613 ;--- end asm ---
   5678 F6 C8 11      [ 5] 2614 	ldb	_Vec_Buttons	; , Vec_Buttons
   567B C5 04         [ 2] 2615 	bitb	#4	; ,
   567D 27 18         [ 3] 2616 	beq	L96	; 
                           2617 ;----- asm -----
                           2618 ;  1127 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2619 	; #ENR#[869]        for (uint8_t i = 0; i < 6; i++) {
                           2620 ;  0 "" 2
                           2621 ;--- end asm ---
   567F 6F E4         [ 6] 2622 	clr	,s	;  i
   5681                    2623 L97:
                           2624 ;----- asm -----
                           2625 ;  1129 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2626 	; #ENR#[870]            writeEeprom(i, 0xff);
                           2627 ;  0 "" 2
                           2628 ;--- end asm ---
   5681 C6 FF         [ 2] 2629 	ldb	#-1	; ,
   5683 E7 E2         [ 6] 2630 	stb	,-s	; ,
   5685 E6 61         [ 5] 2631 	ldb	1,s	; , i
   5687 BD 55 EE      [ 8] 2632 	jsr	_writeEeprom	; 
   568A 6C 61         [ 7] 2633 	inc	1,s	;  i
   568C 32 61         [ 5] 2634 	leas	1,s	; ,,
   568E E6 E4         [ 4] 2635 	ldb	,s	; , i
   5690 C1 06         [ 2] 2636 	cmpb	#6	;cmpqi:	; ,
   5692 26 ED         [ 3] 2637 	bne	L97	; 
                           2638 ;----- asm -----
                           2639 ;  1132 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2640 	; #ENR#[872]        gameState = MainMenu;
                           2641 ;  0 "" 2
                           2642 ;--- end asm ---
   5694 7F CB 4E      [ 7] 2643 	clr	_gameState	;  gameState
   5697                    2644 L96:
                           2645 ;----- asm -----
                           2646 ;  1135 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2647 	; #ENR#[874]    if (Vec_Buttons & 8) {
                           2648 ;  0 "" 2
                           2649 ;--- end asm ---
   5697 F6 C8 11      [ 5] 2650 	ldb	_Vec_Buttons	; , Vec_Buttons
   569A C5 08         [ 2] 2651 	bitb	#8	; ,
   569C 27 03         [ 3] 2652 	beq	L99	; 
                           2653 ;----- asm -----
                           2654 ;  1137 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2655 	; #ENR#[875]        gameState = MainMenu;
                           2656 ;  0 "" 2
                           2657 ;--- end asm ---
   569E 7F CB 4E      [ 7] 2658 	clr	_gameState	;  gameState
   56A1                    2659 L99:
   56A1 32 65         [ 5] 2660 	leas	5,s	; ,,
   56A3 35 C0         [ 7] 2661 	puls	u,pc	; 
                           2662 	.globl _blockMovingAtEnd
   56A5                    2663 _blockMovingAtEnd:
   56A5 34 60         [ 7] 2664 	pshs	y,u	; 
   56A7 32 7C         [ 5] 2665 	leas	-4,s	; ,,
                           2666 ;----- asm -----
                           2667 ;  938 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2668 	; #ENR#[758]    drawField();
                           2669 ;  0 "" 2
                           2670 ;--- end asm ---
   56A9 BD 4E 50      [ 8] 2671 	jsr	_drawField	; 
                           2672 ;----- asm -----
                           2673 ;  940 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2674 	; #ENR#[759]    drawBlock(blockYOfs);
                           2675 ;  0 "" 2
                           2676 ;--- end asm ---
   56AC F6 C8 8E      [ 5] 2677 	ldb	_blockYOfs	; , blockYOfs
   56AF BD 04 FE      [ 8] 2678 	jsr	_drawBlock	; 
                           2679 ;----- asm -----
                           2680 ;  942 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2681 	; #ENR#[760]    blockYOfs++;
                           2682 ;  0 "" 2
                           2683 ;--- end asm ---
   56B2 F6 C8 8E      [ 5] 2684 	ldb	_blockYOfs	;  blockYOfs.60, blockYOfs
   56B5 5C            [ 2] 2685 	incb	;  blockYOfs.60
   56B6 F7 C8 8E      [ 5] 2686 	stb	_blockYOfs	;  blockYOfs.60, blockYOfs
                           2687 ;----- asm -----
                           2688 ;  944 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2689 	; #ENR#[761]    if (blockYOfs == 30) {
                           2690 ;  0 "" 2
                           2691 ;--- end asm ---
   56B9 C1 1E         [ 2] 2692 	cmpb	#30	;cmpqi:	;  blockYOfs.60,
   56BB 10 26 00 C2   [ 6] 2693 	lbne	L107	; 
                           2694 ;----- asm -----
                           2695 ;  946 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2696 	; #ENR#[762]        if (moveCount < levelHighscore) {
                           2697 ;  0 "" 2
                           2698 ;--- end asm ---
   56BF BE CB 44      [ 6] 2699 	ldx	_moveCount	;  moveCount.61, moveCount
   56C2 BC CB 48      [ 7] 2700 	cmpx	_levelHighscore	;cmphi:	;  moveCount.61, levelHighscore
   56C5 24 25         [ 3] 2701 	bhs	L103	; 
                           2702 ;----- asm -----
                           2703 ;  948 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2704 	; #ENR#[763]            writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
                           2705 ;  0 "" 2
                           2706 ;--- end asm ---
   56C7 F6 C8 83      [ 5] 2707 	ldb	_levelNumber	; , levelNumber
   56CA 58            [ 2] 2708 	aslb	; 
   56CB E7 E4         [ 4] 2709 	stb	,s	; ,
   56CD 1F 10         [ 6] 2710 	tfr	x,d	;  moveCount.61,
   56CF 34 04         [ 6] 2711 	pshs	b	; 
   56D1 E6 61         [ 5] 2712 	ldb	1,s	; ,
   56D3 BD 55 EE      [ 8] 2713 	jsr	_writeEeprom	; 
                           2714 ;----- asm -----
                           2715 ;  950 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2716 	; #ENR#[764]            writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
                           2717 ;  0 "" 2
                           2718 ;--- end asm ---
   56D6 F6 C8 83      [ 5] 2719 	ldb	_levelNumber	;  tmp33, levelNumber
   56D9 58            [ 2] 2720 	aslb	;  tmp33
   56DA 5C            [ 2] 2721 	incb	;  tmp33
   56DB E7 64         [ 5] 2722 	stb	4,s	;  tmp33,
   56DD FC CB 44      [ 6] 2723 	ldd	_moveCount	;  tmp35, moveCount
   56E0 1F 89         [ 6] 2724 	tfr	a,b	; ,
   56E2 4F            [ 2] 2725 	clra		;zero_extendqihi: R:b -> R:d	; ,
   56E3 34 04         [ 6] 2726 	pshs	b	;  tmp35
   56E5 E6 65         [ 5] 2727 	ldb	5,s	; ,
   56E7 BD 55 EE      [ 8] 2728 	jsr	_writeEeprom	; 
   56EA 32 62         [ 5] 2729 	leas	2,s	; ,,
   56EC                    2730 L103:
                           2731 ;----- asm -----
                           2732 ;  953 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2733 	; #ENR#[766]        if (arcadeMode) {
                           2734 ;  0 "" 2
                           2735 ;--- end asm ---
   56EC 7D CB 4B      [ 7] 2736 	tst	_arcadeMode	;  arcadeMode
   56EF 10 27 00 7C   [ 6] 2737 	lbeq	L104	; 
                           2738 ;----- asm -----
                           2739 ;  955 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2740 	; #ENR#[767]            arcadeIndex++;
                           2741 ;  0 "" 2
                           2742 ;--- end asm ---
   56F3 F6 CB 4D      [ 5] 2743 	ldb	_arcadeIndex	;  arcadeIndex.66, arcadeIndex
   56F6 5C            [ 2] 2744 	incb	;  arcadeIndex.66
   56F7 F7 CB 4D      [ 5] 2745 	stb	_arcadeIndex	;  arcadeIndex.66, arcadeIndex
                           2746 ;----- asm -----
                           2747 ;  957 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2748 	; #ENR#[768]            levelNumber = arcadeLevels[arcadeSelection][arcadeIndex];
                           2749 ;  0 "" 2
                           2750 ;--- end asm ---
   56FA 4F            [ 2] 2751 	clra		;zero_extendqihi: R:b -> R:d	;  arcadeIndex.66,
   56FB 1F 02         [ 6] 2752 	tfr	d,y	; , arcadeIndex.66
   56FD F6 CB 4C      [ 5] 2753 	ldb	_arcadeSelection	; , arcadeSelection
   5700 4F            [ 2] 2754 	clra		;zero_extendqihi: R:b -> R:d	; ,
   5701 ED 61         [ 6] 2755 	std	1,s	; ,
   5703 58            [ 2] 2756 	aslb	; 
   5704 49            [ 2] 2757 	rola	; 
   5705 58            [ 2] 2758 	aslb	; 
   5706 49            [ 2] 2759 	rola	; 
   5707 EE 61         [ 6] 2760 	ldu	1,s	; ,
   5709 30 CB         [ 8] 2761 	leax	d,u	;  tmp41, tmp40,
   570B 1E 02         [ 8] 2762 	exg	d,y	; , arcadeIndex.66
   570D 30 8B         [ 8] 2763 	leax	d,x	;  tmp42,, tmp42
   570F 1E 02         [ 8] 2764 	exg	d,y	; , arcadeIndex.66
   5711 E6 89 59 EB   [ 8] 2765 	ldb	_arcadeLevels,x	;  levelNumber.68, arcadeLevels
   5715 F7 C8 83      [ 5] 2766 	stb	_levelNumber	;  levelNumber.68, levelNumber
                           2767 ;----- asm -----
                           2768 ;  959 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2769 	; #ENR#[769]            if (levelNumber == 0) {
                           2770 ;  0 "" 2
                           2771 ;--- end asm ---
   5718 5D            [ 2] 2772 	tstb	;  levelNumber.68
   5719 10 26 00 4D   [ 6] 2773 	lbne	L105	; 
                           2774 ;----- asm -----
                           2775 ;  961 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2776 	; #ENR#[770]                gameState = ArcadeEnd;
                           2777 ;  0 "" 2
                           2778 ;--- end asm ---
   571D C6 02         [ 2] 2779 	ldb	#2	; ,
   571F F7 CB 4E      [ 5] 2780 	stb	_gameState	; , gameState
                           2781 ;----- asm -----
                           2782 ;  963 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2783 	; #ENR#[771]                memcpy(infoText, "TIME: 000 SECONDS�", 18);
                           2784 ;  0 "" 2
                           2785 ;--- end asm ---
   5722 8E 54 49      [ 3] 2786 	ldx	#21577	; ,
   5725 BF CB 30      [ 6] 2787 	stx	_infoText	; , infoText
   5728 CE 4D 45      [ 3] 2788 	ldu	#19781	; ,
   572B FF CB 32      [ 6] 2789 	stu	_infoText+2	; , infoText
   572E 8E 3A 20      [ 3] 2790 	ldx	#14880	; ,
   5731 BF CB 34      [ 6] 2791 	stx	_infoText+4	; , infoText
   5734 CE 30 30      [ 3] 2792 	ldu	#12336	; ,
   5737 FF CB 36      [ 6] 2793 	stu	_infoText+6	; , infoText
   573A 8E 30 20      [ 3] 2794 	ldx	#12320	; ,
   573D BF CB 38      [ 6] 2795 	stx	_infoText+8	; , infoText
   5740 CE 53 45      [ 3] 2796 	ldu	#21317	; ,
   5743 FF CB 3A      [ 6] 2797 	stu	_infoText+10	; , infoText
   5746 8E 43 4F      [ 3] 2798 	ldx	#17231	; ,
   5749 BF CB 3C      [ 6] 2799 	stx	_infoText+12	; , infoText
   574C CE 4E 44      [ 3] 2800 	ldu	#20036	; ,
   574F FF CB 3E      [ 6] 2801 	stu	_infoText+14	; , infoText
   5752 8E 53 80      [ 3] 2802 	ldx	#21376	; ,
   5755 BF CB 40      [ 6] 2803 	stx	_infoText+16	; , infoText
                           2804 ;----- asm -----
                           2805 ;  965 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2806 	; #ENR#[772]                itoa(moveCount, &infoText[6]);
                           2807 ;  0 "" 2
                           2808 ;--- end asm ---
   5758 CE CB 36      [ 3] 2809 	ldu	#_infoText+6	; ,
   575B EF E3         [ 8] 2810 	stu	,--s	; ,
   575D BE CB 44      [ 6] 2811 	ldx	_moveCount	; , moveCount
   5760 BD 4D C8      [ 8] 2812 	jsr	_itoa	; 
                           2813 ;----- asm -----
                           2814 ;  967 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2815 	; #ENR#[773]                arcadeMode = 0;
                           2816 ;  0 "" 2
                           2817 ;--- end asm ---
   5763 7F CB 4B      [ 7] 2818 	clr	_arcadeMode	;  arcadeMode
   5766 32 62         [ 5] 2819 	leas	2,s	; ,,
   5768 20 17         [ 3] 2820 	bra	L107	; 
   576A                    2821 L105:
                           2822 ;----- asm -----
                           2823 ;  970 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2824 	; #ENR#[775]                startLevel();
                           2825 ;  0 "" 2
                           2826 ;--- end asm ---
   576A BD 53 45      [ 8] 2827 	jsr	_startLevel	; 
   576D 20 12         [ 3] 2828 	bra	L107	; 
   576F                    2829 L104:
                           2830 ;----- asm -----
                           2831 ;  974 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2832 	; #ENR#[778]            levelNumber++;
                           2833 ;  0 "" 2
                           2834 ;--- end asm ---
   576F F6 C8 83      [ 5] 2835 	ldb	_levelNumber	;  levelNumber.69, levelNumber
   5772 5C            [ 2] 2836 	incb	;  levelNumber.69
   5773 F7 C8 83      [ 5] 2837 	stb	_levelNumber	;  levelNumber.69, levelNumber
                           2838 ;----- asm -----
                           2839 ;  976 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2840 	; #ENR#[779]            if (levelNumber >= levelCount) levelNumber = 0;
                           2841 ;  0 "" 2
                           2842 ;--- end asm ---
   5776 F1 42 DE      [ 5] 2843 	cmpb	_levelCount	;cmpqi:	;  levelNumber.69, levelCount
   5779 25 03         [ 3] 2844 	blo	L106	; 
   577B 7F C8 83      [ 7] 2845 	clr	_levelNumber	;  levelNumber
   577E                    2846 L106:
                           2847 ;----- asm -----
                           2848 ;  978 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2849 	; #ENR#[780]            startLevel();
                           2850 ;  0 "" 2
                           2851 ;--- end asm ---
   577E BD 53 45      [ 8] 2852 	jsr	_startLevel	; 
   5781                    2853 L107:
   5781 32 64         [ 5] 2854 	leas	4,s	; ,,
   5783 35 E0         [ 8] 2855 	puls	y,u,pc	; 
                           2856 	.globl _setBank
   5785                    2857 _setBank:
   5785 32 7F         [ 5] 2858 	leas	-1,s	; ,,
   5787 E7 E4         [ 4] 2859 	stb	,s	;  bank, bank
                           2860 ;----- asm -----
                           2861 ;  196 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2862 	; #ENR#[188]    *vecx = 16 + bank;
                           2863 ;  0 "" 2
                           2864 ;--- end asm ---
   5789 CB 10         [ 2] 2865 	addb	#16	;  bank,
   578B E7 9F C8 8B   [ 9] 2866 	stb	[_vecx]	;  bank,* vecx
                           2867 ;----- asm -----
                           2868 ;  198 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2869 	; #ENR#[189]    sendCommand(CMD_SET_BANK, bank);
                           2870 ;  0 "" 2
                           2871 ;--- end asm ---
   578F E6 E4         [ 4] 2872 	ldb	,s	; , bank
   5791 34 04         [ 6] 2873 	pshs	b	; 
   5793 C6 05         [ 2] 2874 	ldb	#5	; ,
   5795 BD 53 12      [ 8] 2875 	jsr	_sendCommand	; 
   5798 32 62         [ 5] 2876 	leas	2,s	; ,,
   579A 39            [ 5] 2877 	rts
                           2878 	.globl _blockWaiting
   579B                    2879 _blockWaiting:
                           2880 ;----- asm -----
                           2881 ;  644 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2882 	; #ENR#[577]    drawField();
                           2883 ;  0 "" 2
                           2884 ;--- end asm ---
   579B BD 4E 50      [ 8] 2885 	jsr	_drawField	; 
                           2886 ;----- asm -----
                           2887 ;  646 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2888 	; #ENR#[578]    drawBlock(0);
                           2889 ;  0 "" 2
                           2890 ;--- end asm ---
   579E 5F            [ 2] 2891 	clrb	; 
   579F BD 04 FE      [ 8] 2892 	jsr	_drawBlock	; 
                           2893 ;----- asm -----
                           2894 ;  648 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2895 	; #ENR#[579]    joybit();
                           2896 ;  0 "" 2
                           2897 ;  2354 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   57A2 BD F1 F8      [ 8] 2898 	jsr ___Joy_Digital; BIOS call
                           2899 ;  0 "" 2
                           2900 ;  650 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2901 	; #ENR#[580]    if (pot0 < -10) {
                           2902 ;  0 "" 2
                           2903 ;--- end asm ---
   57A5 F6 C8 1B      [ 5] 2904 	ldb	-14309	;  D.2347,
   57A8 C1 F6         [ 2] 2905 	cmpb	#-10	;cmpqi:	;  D.2347,
   57AA 2C 0C         [ 3] 2906 	bge	L111	; 
                           2907 ;----- asm -----
                           2908 ;  652 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2909 	; #ENR#[581]        moveBlock(Left);
                           2910 ;  0 "" 2
                           2911 ;--- end asm ---
   57AC 5F            [ 2] 2912 	clrb	; 
   57AD BD 51 40      [ 8] 2913 	jsr	_moveBlock	; 
                           2914 ;----- asm -----
                           2915 ;  654 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2916 	; #ENR#[582]        gameState = BlockMoving;
                           2917 ;  0 "" 2
                           2918 ;--- end asm ---
   57B0 C6 06         [ 2] 2919 	ldb	#6	; ,
   57B2 F7 CB 4E      [ 5] 2920 	stb	_gameState	; , gameState
   57B5 7E 57 EF      [ 4] 2921 	jmp	L112	; 
   57B8                    2922 L111:
   57B8 F6 C8 1B      [ 5] 2923 	ldb	-14309	;  D.2348,
   57BB C1 0A         [ 2] 2924 	cmpb	#10	;cmpqi:	;  D.2348,
   57BD 2F 0C         [ 3] 2925 	ble	L113	; 
                           2926 ;----- asm -----
                           2927 ;  657 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2928 	; #ENR#[584]        moveBlock(Right);
                           2929 ;  0 "" 2
                           2930 ;--- end asm ---
   57BF C6 02         [ 2] 2931 	ldb	#2	; ,
   57C1 BD 51 40      [ 8] 2932 	jsr	_moveBlock	; 
                           2933 ;----- asm -----
                           2934 ;  659 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2935 	; #ENR#[585]        gameState = BlockMoving;
                           2936 ;  0 "" 2
                           2937 ;--- end asm ---
   57C4 C6 06         [ 2] 2938 	ldb	#6	; ,
   57C6 F7 CB 4E      [ 5] 2939 	stb	_gameState	; , gameState
   57C9 20 24         [ 3] 2940 	bra	L112	; 
   57CB                    2941 L113:
   57CB F6 C8 1C      [ 5] 2942 	ldb	-14308	;  D.2350,
   57CE C1 F6         [ 2] 2943 	cmpb	#-10	;cmpqi:	;  D.2350,
   57D0 2C 0C         [ 3] 2944 	bge	L114	; 
                           2945 ;----- asm -----
                           2946 ;  662 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2947 	; #ENR#[587]        moveBlock(Down);
                           2948 ;  0 "" 2
                           2949 ;--- end asm ---
   57D2 C6 03         [ 2] 2950 	ldb	#3	; ,
   57D4 BD 51 40      [ 8] 2951 	jsr	_moveBlock	; 
                           2952 ;----- asm -----
                           2953 ;  664 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2954 	; #ENR#[588]        gameState = BlockMoving;
                           2955 ;  0 "" 2
                           2956 ;--- end asm ---
   57D7 C6 06         [ 2] 2957 	ldb	#6	; ,
   57D9 F7 CB 4E      [ 5] 2958 	stb	_gameState	; , gameState
   57DC 20 11         [ 3] 2959 	bra	L112	; 
   57DE                    2960 L114:
   57DE F6 C8 1C      [ 5] 2961 	ldb	-14308	;  D.2351,
   57E1 C1 0A         [ 2] 2962 	cmpb	#10	;cmpqi:	;  D.2351,
   57E3 2F 0A         [ 3] 2963 	ble	L112	; 
                           2964 ;----- asm -----
                           2965 ;  667 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2966 	; #ENR#[590]        moveBlock(Up);
                           2967 ;  0 "" 2
                           2968 ;--- end asm ---
   57E5 C6 01         [ 2] 2969 	ldb	#1	; ,
   57E7 BD 51 40      [ 8] 2970 	jsr	_moveBlock	; 
                           2971 ;----- asm -----
                           2972 ;  669 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2973 	; #ENR#[591]        gameState = BlockMoving;
                           2974 ;  0 "" 2
                           2975 ;--- end asm ---
   57EA C6 06         [ 2] 2976 	ldb	#6	; ,
   57EC F7 CB 4E      [ 5] 2977 	stb	_gameState	; , gameState
   57EF                    2978 L112:
                           2979 ;----- asm -----
                           2980 ;  673 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2981 	; #ENR#[594]#if 0
                           2982 ;  0 "" 2
                           2983 ;  718 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2984 	; #ENR#[621]    if (gameState == BlockMoving) {
                           2985 ;  0 "" 2
                           2986 ;--- end asm ---
   57EF F6 CB 4E      [ 5] 2987 	ldb	_gameState	; , gameState
   57F2 C1 06         [ 2] 2988 	cmpb	#6	;cmpqi:	; ,
   57F4 26 0C         [ 3] 2989 	bne	L115	; 
                           2990 ;----- asm -----
                           2991 ;  720 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2992 	; #ENR#[622]        changeMusic(movingMusic);
                           2993 ;  0 "" 2
                           2994 ;--- end asm ---
   57F6 8E 59 CD      [ 3] 2995 	ldx	#_movingMusic	; ,
   57F9 BD 4E 47      [ 8] 2996 	jsr	_changeMusic	; 
                           2997 ;----- asm -----
                           2998 ;  722 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2999 	; #ENR#[623]        *vecx = 3;
                           3000 ;  0 "" 2
                           3001 ;--- end asm ---
   57FC C6 03         [ 2] 3002 	ldb	#3	; ,
   57FE E7 9F C8 8B   [ 9] 3003 	stb	[_vecx]	; ,* vecx
   5802                    3004 L115:
                           3005 ;----- asm -----
                           3006 ;  726 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3007 	; #ENR#[626]    Read_Btns();
                           3008 ;  0 "" 2
                           3009 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5802 BD F1 BA      [ 8] 3010 	jsr ___Read_Btns; BIOS call
                           3011 ;  0 "" 2
                           3012 ;  728 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3013 	; #ENR#[627]    if (Vec_Buttons & 1) {
                           3014 ;  0 "" 2
                           3015 ;--- end asm ---
   5805 F6 C8 11      [ 5] 3016 	ldb	_Vec_Buttons	; , Vec_Buttons
   5808 C5 01         [ 2] 3017 	bitb	#1	; ,
   580A 27 08         [ 3] 3018 	beq	L116	; 
                           3019 ;----- asm -----
                           3020 ;  730 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3021 	; #ENR#[628]        if (splitMode) {
                           3022 ;  0 "" 2
                           3023 ;--- end asm ---
   580C 7D C8 91      [ 7] 3024 	tst	_splitMode	;  splitMode
   580F 27 03         [ 3] 3025 	beq	L116	; 
                           3026 ;----- asm -----
                           3027 ;  732 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3028 	; #ENR#[629]            swapSplit();
                           3029 ;  0 "" 2
                           3030 ;--- end asm ---
   5811 BD 04 D9      [ 8] 3031 	jsr	_swapSplit	; 
   5814                    3032 L116:
                           3033 ;----- asm -----
                           3034 ;  737 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3035 	; #ENR#[633]    if ((Vec_Buttons & 2) && !arcadeMode) {
                           3036 ;  0 "" 2
                           3037 ;--- end asm ---
   5814 F6 C8 11      [ 5] 3038 	ldb	_Vec_Buttons	; , Vec_Buttons
   5817 C5 02         [ 2] 3039 	bitb	#2	; ,
   5819 27 1D         [ 3] 3040 	beq	L117	; 
   581B 7D CB 4B      [ 7] 3041 	tst	_arcadeMode	;  arcadeMode
   581E 26 18         [ 3] 3042 	bne	L117	; 
                           3043 ;----- asm -----
                           3044 ;  739 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3045 	; #ENR#[634]        levelNumber++;
                           3046 ;  0 "" 2
                           3047 ;--- end asm ---
   5820 F6 C8 83      [ 5] 3048 	ldb	_levelNumber	;  levelNumber.37, levelNumber
   5823 5C            [ 2] 3049 	incb	;  levelNumber.37
   5824 F7 C8 83      [ 5] 3050 	stb	_levelNumber	;  levelNumber.37, levelNumber
                           3051 ;----- asm -----
                           3052 ;  741 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3053 	; #ENR#[635]        if (levelNumber >= levelCount) {
                           3054 ;  0 "" 2
                           3055 ;--- end asm ---
   5827 F1 42 DE      [ 5] 3056 	cmpb	_levelCount	;cmpqi:	;  levelNumber.37, levelCount
   582A 25 09         [ 3] 3057 	blo	L118	; 
                           3058 ;----- asm -----
                           3059 ;  743 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3060 	; #ENR#[636]            levelNumber = 0;
                           3061 ;  0 "" 2
                           3062 ;--- end asm ---
   582C 7F C8 83      [ 7] 3063 	clr	_levelNumber	;  levelNumber
                           3064 ;----- asm -----
                           3065 ;  745 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3066 	; #ENR#[637]            setBank(nextBank);
                           3067 ;  0 "" 2
                           3068 ;--- end asm ---
   582F F6 42 E0      [ 5] 3069 	ldb	_nextBank	; , nextBank
   5832 BD 57 85      [ 8] 3070 	jsr	_setBank	; 
   5835                    3071 L118:
                           3072 ;----- asm -----
                           3073 ;  748 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3074 	; #ENR#[639]        startLevel();
                           3075 ;  0 "" 2
                           3076 ;--- end asm ---
   5835 BD 53 45      [ 8] 3077 	jsr	_startLevel	; 
   5838                    3078 L117:
                           3079 ;----- asm -----
                           3080 ;  751 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3081 	; #ENR#[641]    if ((Vec_Buttons & 4) && !arcadeMode) {
                           3082 ;  0 "" 2
                           3083 ;--- end asm ---
   5838 F6 C8 11      [ 5] 3084 	ldb	_Vec_Buttons	; , Vec_Buttons
   583B C5 04         [ 2] 3085 	bitb	#4	; ,
   583D 27 20         [ 3] 3086 	beq	L119	; 
   583F 7D CB 4B      [ 7] 3087 	tst	_arcadeMode	;  arcadeMode
   5842 26 1B         [ 3] 3088 	bne	L119	; 
                           3089 ;----- asm -----
                           3090 ;  753 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3091 	; #ENR#[642]        if (levelNumber > 0) {
                           3092 ;  0 "" 2
                           3093 ;--- end asm ---
   5844 F6 C8 83      [ 5] 3094 	ldb	_levelNumber	;  levelNumber.315, levelNumber
   5847 27 06         [ 3] 3095 	beq	L120	; 
                           3096 ;----- asm -----
                           3097 ;  755 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3098 	; #ENR#[643]            levelNumber--;
                           3099 ;  0 "" 2
                           3100 ;--- end asm ---
   5849 5A            [ 2] 3101 	decb	;  levelNumber.315
   584A F7 C8 83      [ 5] 3102 	stb	_levelNumber	;  levelNumber.315, levelNumber
   584D 20 0D         [ 3] 3103 	bra	L121	; 
   584F                    3104 L120:
                           3105 ;----- asm -----
                           3106 ;  758 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3107 	; #ENR#[645]            levelNumber = levelCount - 1;
                           3108 ;  0 "" 2
                           3109 ;--- end asm ---
   584F F6 42 DE      [ 5] 3110 	ldb	_levelCount	; , levelCount
   5852 5A            [ 2] 3111 	decb	; 
   5853 F7 C8 83      [ 5] 3112 	stb	_levelNumber	; , levelNumber
                           3113 ;----- asm -----
                           3114 ;  760 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3115 	; #ENR#[646]            setBank(nextBank);
                           3116 ;  0 "" 2
                           3117 ;--- end asm ---
   5856 F6 42 E0      [ 5] 3118 	ldb	_nextBank	; , nextBank
   5859 BD 57 85      [ 8] 3119 	jsr	_setBank	; 
   585C                    3120 L121:
                           3121 ;----- asm -----
                           3122 ;  763 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3123 	; #ENR#[648]        startLevel();
                           3124 ;  0 "" 2
                           3125 ;--- end asm ---
   585C BD 53 45      [ 8] 3126 	jsr	_startLevel	; 
   585F                    3127 L119:
                           3128 ;----- asm -----
                           3129 ;  766 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3130 	; #ENR#[650]    if (Vec_Buttons & 8) {
                           3131 ;  0 "" 2
                           3132 ;--- end asm ---
   585F F6 C8 11      [ 5] 3133 	ldb	_Vec_Buttons	; , Vec_Buttons
   5862 C5 08         [ 2] 3134 	bitb	#8	; ,
   5864 27 03         [ 3] 3135 	beq	L123	; 
                           3136 ;----- asm -----
                           3137 ;  768 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3138 	; #ENR#[651]        gameState = MainMenu;
                           3139 ;  0 "" 2
                           3140 ;--- end asm ---
   5866 7F CB 4E      [ 7] 3141 	clr	_gameState	;  gameState
   5869                    3142 L123:
   5869 39            [ 5] 3143 	rts
                           3144 	.globl _main
   586A                    3145 _main:
   586A 34 60         [ 7] 3146 	pshs	y,u	; 
   586C 32 7C         [ 5] 3147 	leas	-4,s	; ,,
                           3148 ;----- asm -----
                           3149 ;  1217 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3150 	; #ENR#[931]    setBank(0);
                           3151 ;  0 "" 2
                           3152 ;--- end asm ---
   586E 5F            [ 2] 3153 	clrb	; 
   586F BD 57 85      [ 8] 3154 	jsr	_setBank	; 
                           3155 ;----- asm -----
                           3156 ;  1221 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3157 	; #ENR#[934]    *vecx = 4;
                           3158 ;  0 "" 2
                           3159 ;--- end asm ---
   5872 C6 04         [ 2] 3160 	ldb	#4	; ,
   5874 E7 9F C8 8B   [ 9] 3161 	stb	[_vecx]	; ,* vecx
                           3162 ;----- asm -----
                           3163 ;  1225 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3164 	; #ENR#[937]    picAvailable = 0;
                           3165 ;  0 "" 2
                           3166 ;--- end asm ---
   5878 7F CB 4A      [ 7] 3167 	clr	_picAvailable	;  picAvailable
                           3168 ;----- asm -----
                           3169 ;  1227 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3170 	; #ENR#[938]    sendCommand(CMD_VERSION, 0);
                           3171 ;  0 "" 2
                           3172 ;--- end asm ---
   587B 6F E2         [ 8] 3173 	clr	,-s	; 
   587D C6 01         [ 2] 3174 	ldb	#1	; ,
   587F BD 53 12      [ 8] 3175 	jsr	_sendCommand	; 
                           3176 ;----- asm -----
                           3177 ;  1229 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3178 	; #ENR#[939]    sendCommand(CMD_VERSION, 0);
                           3179 ;  0 "" 2
                           3180 ;--- end asm ---
   5882 6F E2         [ 8] 3181 	clr	,-s	; 
   5884 C6 01         [ 2] 3182 	ldb	#1	; ,
   5886 BD 53 12      [ 8] 3183 	jsr	_sendCommand	; 
                           3184 ;----- asm -----
                           3185 ;  1231 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3186 	; #ENR#[940]    if (sendCommand(CMD_VERSION, 0) == 4) {
                           3187 ;  0 "" 2
                           3188 ;--- end asm ---
   5889 6F E2         [ 8] 3189 	clr	,-s	; 
   588B C6 01         [ 2] 3190 	ldb	#1	; ,
   588D BD 53 12      [ 8] 3191 	jsr	_sendCommand	; 
   5890 32 63         [ 5] 3192 	leas	3,s	; ,,
   5892 C1 04         [ 2] 3193 	cmpb	#4	;cmpqi:	;  D.2493,
   5894 26 05         [ 3] 3194 	bne	L125	; 
                           3195 ;----- asm -----
                           3196 ;  1233 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3197 	; #ENR#[941]        picAvailable = 1;
                           3198 ;  0 "" 2
                           3199 ;--- end asm ---
   5896 C6 01         [ 2] 3200 	ldb	#1	; ,
   5898 F7 CB 4A      [ 5] 3201 	stb	_picAvailable	; , picAvailable
   589B                    3202 L125:
                           3203 ;----- asm -----
                           3204 ;  1238 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3205 	; #ENR#[945]    epot0 = 1;
                           3206 ;  0 "" 2
                           3207 ;--- end asm ---
   589B C6 01         [ 2] 3208 	ldb	#1	; ,
   589D F7 C8 1F      [ 5] 3209 	stb	-14305	; ,
                           3210 ;----- asm -----
                           3211 ;  1240 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3212 	; #ENR#[946]    epot1 = 3;
                           3213 ;  0 "" 2
                           3214 ;--- end asm ---
   58A0 C6 03         [ 2] 3215 	ldb	#3	; ,
   58A2 F7 C8 20      [ 5] 3216 	stb	-14304	; ,
                           3217 ;----- asm -----
                           3218 ;  1242 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3219 	; #ENR#[947]    epot2 = 0;
                           3220 ;  0 "" 2
                           3221 ;--- end asm ---
   58A5 7F C8 21      [ 7] 3222 	clr	-14303	; 
                           3223 ;----- asm -----
                           3224 ;  1244 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3225 	; #ENR#[948]    epot3 = 0;
                           3226 ;  0 "" 2
                           3227 ;--- end asm ---
   58A8 7F C8 22      [ 7] 3228 	clr	-14302	; 
                           3229 ;----- asm -----
                           3230 ;  1247 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3231 	; #ENR#[950]    gameState = MainMenu;
                           3232 ;  0 "" 2
                           3233 ;--- end asm ---
   58AB 7F CB 4E      [ 7] 3234 	clr	_gameState	;  gameState
                           3235 ;----- asm -----
                           3236 ;  1249 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3237 	; #ENR#[951]    musicInit();
                           3238 ;  0 "" 2
                           3239 ;--- end asm ---
   58AE BD 30 E6      [ 8] 3240 	jsr	_musicInit	; 
                           3241 ;----- asm -----
                           3242 ;  1252 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3243 	; #ENR#[953]    while (1) {
                           3244 ;  0 "" 2
                           3245 ;--- end asm ---
   58B1                    3246 L140:
                           3247 ;----- asm -----
                           3248 ;  1255 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3249 	; #ENR#[955]        frwait();
                           3250 ;  0 "" 2
                           3251 ;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   58B1 BD F1 92      [ 8] 3252 	jsr ___Wait_Recal; BIOS call
                           3253 ;  0 "" 2
                           3254 ;  1258 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3255 	; #ENR#[957]        switch (gameState) {
                           3256 ;  0 "" 2
                           3257 ;--- end asm ---
   58B4 F6 CB 4E      [ 5] 3258 	ldb	_gameState	; , gameState
   58B7 C1 08         [ 2] 3259 	cmpb	#8	;cmpqi:	; ,
   58B9 10 22 00 69   [ 6] 3260 	lbhi	L126	; 
   58BD 4F            [ 2] 3261 	clra		;zero_extendqihi: R:b -> R:d	; ,
   58BE ED E4         [ 5] 3262 	std	,s	; ,
   58C0 58            [ 2] 3263 	aslb	; 
   58C1 49            [ 2] 3264 	rola	; 
   58C2 1F 01         [ 6] 3265 	tfr	d,x	; , tmp38
   58C4 6E 99 58 C8   [10] 3266 	jmp	[L136,x]	; , tmp38
   58C8                    3267 L136:
   58C8 58 DA              3268 	.word L127
   58CA 58 EC              3269 	.word L128
   58CC 58 F5              3270 	.word L129
   58CE 58 E3              3271 	.word L130
   58D0 58 FE              3272 	.word L131
   58D2 59 07              3273 	.word L132
   58D4 59 10              3274 	.word L133
   58D6 59 18              3275 	.word L134
   58D8 59 20              3276 	.word L135
   58DA                    3277 L127:
                           3278 ;----- asm -----
                           3279 ;  1262 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3280 	; #ENR#[959]            mainMenu();
                           3281 ;  0 "" 2
                           3282 ;--- end asm ---
   58DA BD 55 1D      [ 8] 3283 	jsr	_mainMenu	; 
                           3284 ;----- asm -----
                           3285 ;  1264 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3286 	; #ENR#[960]            musicPlay();
                           3287 ;  0 "" 2
                           3288 ;--- end asm ---
   58DD BD 30 F0      [ 8] 3289 	jsr	_musicPlay	; 
                           3290 ;----- asm -----
                           3291 ;  1266 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3292 	; #ENR#[961]            break;
                           3293 ;  0 "" 2
                           3294 ;--- end asm ---
   58E0 7E 59 26      [ 4] 3295 	jmp	L126	; 
   58E3                    3296 L130:
                           3297 ;----- asm -----
                           3298 ;  1270 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3299 	; #ENR#[963]            clearMenu();
                           3300 ;  0 "" 2
                           3301 ;--- end asm ---
   58E3 BD 56 21      [ 8] 3302 	jsr	_clearMenu	; 
                           3303 ;----- asm -----
                           3304 ;  1272 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3305 	; #ENR#[964]            musicPlay();
                           3306 ;  0 "" 2
                           3307 ;--- end asm ---
   58E6 BD 30 F0      [ 8] 3308 	jsr	_musicPlay	; 
                           3309 ;----- asm -----
                           3310 ;  1274 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3311 	; #ENR#[965]            break;
                           3312 ;  0 "" 2
                           3313 ;--- end asm ---
   58E9 7E 59 26      [ 4] 3314 	jmp	L126	; 
   58EC                    3315 L128:
                           3316 ;----- asm -----
                           3317 ;  1278 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3318 	; #ENR#[967]            arcadeMenu();
                           3319 ;  0 "" 2
                           3320 ;--- end asm ---
   58EC BD 54 20      [ 8] 3321 	jsr	_arcadeMenu	; 
                           3322 ;----- asm -----
                           3323 ;  1280 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3324 	; #ENR#[968]            musicPlay();
                           3325 ;  0 "" 2
                           3326 ;--- end asm ---
   58EF BD 30 F0      [ 8] 3327 	jsr	_musicPlay	; 
                           3328 ;----- asm -----
                           3329 ;  1282 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3330 	; #ENR#[969]            break;
                           3331 ;  0 "" 2
                           3332 ;--- end asm ---
   58F2 7E 59 26      [ 4] 3333 	jmp	L126	; 
   58F5                    3334 L129:
                           3335 ;----- asm -----
                           3336 ;  1286 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3337 	; #ENR#[971]            arcadeEnd();
                           3338 ;  0 "" 2
                           3339 ;--- end asm ---
   58F5 BD 4F 6F      [ 8] 3340 	jsr	_arcadeEnd	; 
                           3341 ;----- asm -----
                           3342 ;  1288 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3343 	; #ENR#[972]            musicPlay();
                           3344 ;  0 "" 2
                           3345 ;--- end asm ---
   58F8 BD 30 F0      [ 8] 3346 	jsr	_musicPlay	; 
                           3347 ;----- asm -----
                           3348 ;  1290 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3349 	; #ENR#[973]            break;
                           3350 ;  0 "" 2
                           3351 ;--- end asm ---
   58FB 7E 59 26      [ 4] 3352 	jmp	L126	; 
   58FE                    3353 L131:
                           3354 ;----- asm -----
                           3355 ;  1294 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3356 	; #ENR#[975]            showInfo();
                           3357 ;  0 "" 2
                           3358 ;--- end asm ---
   58FE BD 50 BE      [ 8] 3359 	jsr	_showInfo	; 
                           3360 ;----- asm -----
                           3361 ;  1296 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3362 	; #ENR#[976]            blockMovingToStart();
                           3363 ;  0 "" 2
                           3364 ;--- end asm ---
   5901 BD 50 E8      [ 8] 3365 	jsr	_blockMovingToStart	; 
                           3366 ;----- asm -----
                           3367 ;  1298 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3368 	; #ENR#[977]            break;
                           3369 ;  0 "" 2
                           3370 ;--- end asm ---
   5904 7E 59 26      [ 4] 3371 	jmp	L126	; 
   5907                    3372 L132:
                           3373 ;----- asm -----
                           3374 ;  1302 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3375 	; #ENR#[979]            showInfo();
                           3376 ;  0 "" 2
                           3377 ;--- end asm ---
   5907 BD 50 BE      [ 8] 3378 	jsr	_showInfo	; 
                           3379 ;----- asm -----
                           3380 ;  1304 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3381 	; #ENR#[980]            blockWaiting();
                           3382 ;  0 "" 2
                           3383 ;--- end asm ---
   590A BD 57 9B      [ 8] 3384 	jsr	_blockWaiting	; 
                           3385 ;----- asm -----
                           3386 ;  1306 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3387 	; #ENR#[981]            break;
                           3388 ;  0 "" 2
                           3389 ;--- end asm ---
   590D 7E 59 26      [ 4] 3390 	jmp	L126	; 
   5910                    3391 L133:
                           3392 ;----- asm -----
                           3393 ;  1310 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3394 	; #ENR#[983]            showInfo();
                           3395 ;  0 "" 2
                           3396 ;--- end asm ---
   5910 BD 50 BE      [ 8] 3397 	jsr	_showInfo	; 
                           3398 ;----- asm -----
                           3399 ;  1312 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3400 	; #ENR#[984]            blockMoving();
                           3401 ;  0 "" 2
                           3402 ;--- end asm ---
   5913 BD 51 72      [ 8] 3403 	jsr	_blockMoving	; 
                           3404 ;----- asm -----
                           3405 ;  1314 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3406 	; #ENR#[985]            break;
                           3407 ;  0 "" 2
                           3408 ;--- end asm ---
   5916 20 0E         [ 3] 3409 	bra	L126	; 
   5918                    3410 L134:
                           3411 ;----- asm -----
                           3412 ;  1318 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3413 	; #ENR#[987]            showInfo();
                           3414 ;  0 "" 2
                           3415 ;--- end asm ---
   5918 BD 50 BE      [ 8] 3416 	jsr	_showInfo	; 
                           3417 ;----- asm -----
                           3418 ;  1320 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3419 	; #ENR#[988]            blockFalling();
                           3420 ;  0 "" 2
                           3421 ;--- end asm ---
   591B BD 55 C5      [ 8] 3422 	jsr	_blockFalling	; 
                           3423 ;----- asm -----
                           3424 ;  1322 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3425 	; #ENR#[989]            break;
                           3426 ;  0 "" 2
                           3427 ;--- end asm ---
   591E 20 06         [ 3] 3428 	bra	L126	; 
   5920                    3429 L135:
                           3430 ;----- asm -----
                           3431 ;  1326 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3432 	; #ENR#[991]            showInfo();
                           3433 ;  0 "" 2
                           3434 ;--- end asm ---
   5920 BD 50 BE      [ 8] 3435 	jsr	_showInfo	; 
                           3436 ;----- asm -----
                           3437 ;  1328 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3438 	; #ENR#[992]            blockMovingAtEnd();
                           3439 ;  0 "" 2
                           3440 ;--- end asm ---
   5923 BD 56 A5      [ 8] 3441 	jsr	_blockMovingAtEnd	; 
                           3442 ;----- asm -----
                           3443 ;  1330 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3444 	; #ENR#[993]            break;
                           3445 ;  0 "" 2
                           3446 ;--- end asm ---
   5926                    3447 L126:
                           3448 ;----- asm -----
                           3449 ;  1335 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3450 	; #ENR#[997]        if (gameState > ClearMenu) {
                           3451 ;  0 "" 2
                           3452 ;--- end asm ---
   5926 F6 CB 4E      [ 5] 3453 	ldb	_gameState	; , gameState
   5929 C1 03         [ 2] 3454 	cmpb	#3	;cmpqi:	; ,
   592B 23 13         [ 3] 3455 	bls	L137	; 
                           3456 ;----- asm -----
                           3457 ;  1337 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3458 	; #ENR#[998]            DP_to_C8();
                           3459 ;  0 "" 2
                           3460 ;  316 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   592D BD F1 AF      [ 8] 3461 	jsr ___DP_to_C8; BIOS call
                           3462 ;  0 "" 2
                           3463 ;  1339 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3464 	; #ENR#[999]            replay(currentMusic);
                           3465 ;  0 "" 2
                           3466 ;--- end asm ---
   5930 BE C8 89      [ 6] 3467 	ldx	_currentMusic	; , currentMusic
   5933 AF 62         [ 6] 3468 	stx	2,s	; , u
                           3469 ;----- asm -----
                           3470 ;  2917 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5935 EE 62         [ 6] 3471 	ldu 2,s	;  u
   5937 BD F6 87      [ 8] 3472 	jsr ___Init_Music_chk; BIOS call
                           3473 ;  0 "" 2
                           3474 ;  1341 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3475 	; #ENR#[1000]            DP_to_D0();
                           3476 ;  0 "" 2
                           3477 ;  300 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   593A BD F1 AA      [ 8] 3478 	jsr ___DP_to_D0; BIOS call
                           3479 ;  0 "" 2
                           3480 ;  1343 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3481 	; #ENR#[1001]            reqout();
                           3482 ;  0 "" 2
                           3483 ;  2880 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   593D BD F2 89      [ 8] 3484 	jsr ___Do_Sound; BIOS call
                           3485 ;  0 "" 2
                           3486 ;--- end asm ---
   5940                    3487 L137:
                           3488 ;----- asm -----
                           3489 ;  1348 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3490 	; #ENR#[1005]        if (arcadeMode) {
                           3491 ;  0 "" 2
                           3492 ;--- end asm ---
   5940 7D CB 4B      [ 7] 3493 	tst	_arcadeMode	;  arcadeMode
   5943 10 27 FF 6A   [ 6] 3494 	lbeq	L140	; 
                           3495 ;----- asm -----
                           3496 ;  1350 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3497 	; #ENR#[1006]            frames++;
                           3498 ;  0 "" 2
                           3499 ;--- end asm ---
   5947 FC CB 46      [ 6] 3500 	ldd	_frames	;  frames.83, frames
   594A C3 00 01      [ 4] 3501 	addd	#1	;  frames.83,
   594D FD CB 46      [ 6] 3502 	std	_frames	;  frames.83, frames
                           3503 ;----- asm -----
                           3504 ;  1352 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3505 	; #ENR#[1007]            if (frames == 50) {
                           3506 ;  0 "" 2
                           3507 ;--- end asm ---
   5950 10 83 00 32   [ 5] 3508 	cmpd	#50	;cmphi:	;  frames.83,
   5954 10 26 FF 59   [ 6] 3509 	lbne	L140	; 
                           3510 ;----- asm -----
                           3511 ;  1354 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3512 	; #ENR#[1008]                frames = 0;
                           3513 ;  0 "" 2
                           3514 ;--- end asm ---
   5958 CC 00 00      [ 3] 3515 	ldd	#0	; ,
   595B FD CB 46      [ 6] 3516 	std	_frames	; , frames
                           3517 ;----- asm -----
                           3518 ;  1356 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3519 	; #ENR#[1009]                if (moveCount < 999) {
                           3520 ;  0 "" 2
                           3521 ;--- end asm ---
   595E BE CB 44      [ 6] 3522 	ldx	_moveCount	;  moveCount.84, moveCount
   5961 8C 03 E6      [ 4] 3523 	cmpx	#998	;cmphi:	;  moveCount.84,
   5964 10 22 FF 49   [ 6] 3524 	lbhi	L140	; 
                           3525 ;----- asm -----
                           3526 ;  1358 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3527 	; #ENR#[1010]                    moveCount++;
                           3528 ;  0 "" 2
                           3529 ;--- end asm ---
   5968 30 01         [ 5] 3530 	leax	1,x	; ,, moveCount.84
   596A BF CB 44      [ 6] 3531 	stx	_moveCount	; , moveCount
                           3532 ;----- asm -----
                           3533 ;  1360 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3534 	; #ENR#[1011]                    updateInfoText();
                           3535 ;  0 "" 2
                           3536 ;--- end asm ---
   596D BD 51 01      [ 8] 3537 	jsr	_updateInfoText	; 
   5970 7E 58 B1      [ 4] 3538 	jmp	L140	; 
                           3539 	.globl _startMusic
   5973                    3540 _startMusic:
   5973 FE                 3541 	.byte	-2
   5974 E8                 3542 	.byte	-24
   5975 FE                 3543 	.byte	-2
   5976 B6                 3544 	.byte	-74
   5977 01                 3545 	.byte	1
   5978 01                 3546 	.byte	1
   5979 02                 3547 	.byte	2
   597A 01                 3548 	.byte	1
   597B 03                 3549 	.byte	3
   597C 01                 3550 	.byte	1
   597D 04                 3551 	.byte	4
   597E 01                 3552 	.byte	1
   597F 05                 3553 	.byte	5
   5980 01                 3554 	.byte	1
   5981 06                 3555 	.byte	6
   5982 01                 3556 	.byte	1
   5983 07                 3557 	.byte	7
   5984 01                 3558 	.byte	1
   5985 08                 3559 	.byte	8
   5986 01                 3560 	.byte	1
   5987 09                 3561 	.byte	9
   5988 01                 3562 	.byte	1
   5989 0A                 3563 	.byte	10
   598A 01                 3564 	.byte	1
   598B 0B                 3565 	.byte	11
   598C 01                 3566 	.byte	1
   598D 0C                 3567 	.byte	12
   598E 01                 3568 	.byte	1
   598F 0D                 3569 	.byte	13
   5990 01                 3570 	.byte	1
   5991 00                 3571 	.byte	0
   5992 80                 3572 	.byte	-128
                           3573 	.globl _levelEndMusic
   5993                    3574 _levelEndMusic:
   5993 FE                 3575 	.byte	-2
   5994 E8                 3576 	.byte	-24
   5995 FE                 3577 	.byte	-2
   5996 B6                 3578 	.byte	-74
   5997 0D                 3579 	.byte	13
   5998 01                 3580 	.byte	1
   5999 0E                 3581 	.byte	14
   599A 01                 3582 	.byte	1
   599B 0F                 3583 	.byte	15
   599C 01                 3584 	.byte	1
   599D 10                 3585 	.byte	16
   599E 01                 3586 	.byte	1
   599F 11                 3587 	.byte	17
   59A0 01                 3588 	.byte	1
   59A1 12                 3589 	.byte	18
   59A2 01                 3590 	.byte	1
   59A3 13                 3591 	.byte	19
   59A4 01                 3592 	.byte	1
   59A5 14                 3593 	.byte	20
   59A6 01                 3594 	.byte	1
   59A7 15                 3595 	.byte	21
   59A8 01                 3596 	.byte	1
   59A9 16                 3597 	.byte	22
   59AA 01                 3598 	.byte	1
   59AB 00                 3599 	.byte	0
   59AC 80                 3600 	.byte	-128
                           3601 	.globl _fallingMusic
   59AD                    3602 _fallingMusic:
   59AD FE                 3603 	.byte	-2
   59AE E8                 3604 	.byte	-24
   59AF FE                 3605 	.byte	-2
   59B0 B6                 3606 	.byte	-74
   59B1 0D                 3607 	.byte	13
   59B2 02                 3608 	.byte	2
   59B3 0C                 3609 	.byte	12
   59B4 02                 3610 	.byte	2
   59B5 0B                 3611 	.byte	11
   59B6 02                 3612 	.byte	2
   59B7 0A                 3613 	.byte	10
   59B8 02                 3614 	.byte	2
   59B9 09                 3615 	.byte	9
   59BA 02                 3616 	.byte	2
   59BB 08                 3617 	.byte	8
   59BC 02                 3618 	.byte	2
   59BD 07                 3619 	.byte	7
   59BE 02                 3620 	.byte	2
   59BF 06                 3621 	.byte	6
   59C0 02                 3622 	.byte	2
   59C1 05                 3623 	.byte	5
   59C2 02                 3624 	.byte	2
   59C3 04                 3625 	.byte	4
   59C4 02                 3626 	.byte	2
   59C5 03                 3627 	.byte	3
   59C6 02                 3628 	.byte	2
   59C7 02                 3629 	.byte	2
   59C8 02                 3630 	.byte	2
   59C9 01                 3631 	.byte	1
   59CA 02                 3632 	.byte	2
   59CB 00                 3633 	.byte	0
   59CC 80                 3634 	.byte	-128
                           3635 	.globl _movingMusic
   59CD                    3636 _movingMusic:
   59CD FD                 3637 	.byte	-3
   59CE C3                 3638 	.byte	-61
   59CF FE                 3639 	.byte	-2
   59D0 B6                 3640 	.byte	-74
   59D1 01                 3641 	.byte	1
   59D2 05                 3642 	.byte	5
   59D3 00                 3643 	.byte	0
   59D4 80                 3644 	.byte	-128
                           3645 	.globl _currentMusic
                           3646 	.area .data
   C889                    3647 _currentMusic:
   C889 59 73              3648 	.word	_startMusic
                           3649 	.globl _vecx
   C88B                    3650 _vecx:
   C88B 80 00              3651 	.word	-32768
                           3652 	.globl _led8
                           3653 	.area .text
   59D5                    3654 _led8:
   59D5 FF                 3655 	.byte	-1
   59D6 00                 3656 	.byte	0
   59D7 05                 3657 	.byte	5
   59D8 FF                 3658 	.byte	-1
   59D9 FB                 3659 	.byte	-5
   59DA 00                 3660 	.byte	0
   59DB FF                 3661 	.byte	-1
   59DC 00                 3662 	.byte	0
   59DD FB                 3663 	.byte	-5
   59DE FF                 3664 	.byte	-1
   59DF 05                 3665 	.byte	5
   59E0 00                 3666 	.byte	0
   59E1 FF                 3667 	.byte	-1
   59E2 05                 3668 	.byte	5
   59E3 00                 3669 	.byte	0
   59E4 FF                 3670 	.byte	-1
   59E5 00                 3671 	.byte	0
   59E6 05                 3672 	.byte	5
   59E7 FF                 3673 	.byte	-1
   59E8 FB                 3674 	.byte	-5
   59E9 00                 3675 	.byte	0
   59EA 01                 3676 	.byte	1
   59EB                    3677 _arcadeLevels:
   59EB 01                 3678 	.byte	1
   59EC 02                 3679 	.byte	2
   59ED 00                 3680 	.byte	0
   59EE 00 00              3681 	.word	0	;skip space 2
   59F0 04                 3682 	.byte	4
   59F1 05                 3683 	.byte	5
   59F2 06                 3684 	.byte	6
   59F3 00                 3685 	.byte	0
   59F4 00                 3686 	.byte	0	;skip space
   59F5 07                 3687 	.byte	7
   59F6 08                 3688 	.byte	8
   59F7 09                 3689 	.byte	9
   59F8 00                 3690 	.byte	0
   59F9 00                 3691 	.byte	0	;skip space
   59FA 0A                 3692 	.byte	10
   59FB 0B                 3693 	.byte	11
   59FC 0C                 3694 	.byte	12
   59FD 00                 3695 	.byte	0
   59FE 00                 3696 	.byte	0	;skip space
                           3697 	.area .bss
   CB2F                    3698 _si:	.blkb	1
                           3699 	.globl	_infoText
   CB30                    3700 _infoText:	.blkb	20
                           3701 	.globl	_moveCount
   CB44                    3702 _moveCount:	.blkb	2
                           3703 	.globl	_frames
   CB46                    3704 _frames:	.blkb	2
                           3705 	.globl	_levelHighscore
   CB48                    3706 _levelHighscore:	.blkb	2
                           3707 	.globl	_picAvailable
   CB4A                    3708 _picAvailable:	.blkb	1
                           3709 	.globl	_arcadeMode
   CB4B                    3710 _arcadeMode:	.blkb	1
                           3711 	.globl	_arcadeSelection
   CB4C                    3712 _arcadeSelection:	.blkb	1
                           3713 	.globl	_arcadeIndex
   CB4D                    3714 _arcadeIndex:	.blkb	1
                           3715 	.globl	_gameState
   CB4E                    3716 _gameState:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$bloxorz$100      003F GR  |   2 A$bloxorz$1000     0309 GR
  2 A$bloxorz$1001     030B GR  |   2 A$bloxorz$1004     030D GR
  2 A$bloxorz$1005     030F GR  |   2 A$bloxorz$1006     0311 GR
  2 A$bloxorz$1012     0314 GR  |   2 A$bloxorz$1013     0316 GR
  2 A$bloxorz$1014     0318 GR  |   2 A$bloxorz$1017     031B GR
  2 A$bloxorz$1018     031D GR  |   2 A$bloxorz$1021     0320 GR
  2 A$bloxorz$1022     0322 GR  |   2 A$bloxorz$1025     0324 GR
  2 A$bloxorz$1026     0326 GR  |   2 A$bloxorz$1032     0328 GR
  2 A$bloxorz$1033     032A GR  |   2 A$bloxorz$1036     032C GR
  2 A$bloxorz$1037     032E GR  |   2 A$bloxorz$1043     0331 GR
  2 A$bloxorz$1044     0333 GR  |   2 A$bloxorz$1050     0336 GR
  2 A$bloxorz$1051     0338 GR  |   2 A$bloxorz$1052     033A GR
  2 A$bloxorz$1053     033C GR  |   2 A$bloxorz$1054     033F GR
  2 A$bloxorz$1057     0341 GR  |   2 A$bloxorz$1058     0343 GR
  2 A$bloxorz$1059     0345 GR  |   2 A$bloxorz$106      0041 GR
  2 A$bloxorz$1060     0347 GR  |   2 A$bloxorz$1063     034A GR
  2 A$bloxorz$1064     034C GR  |   2 A$bloxorz$107      0043 GR
  2 A$bloxorz$1072     034E GR  |   2 A$bloxorz$1078     0351 GR
  2 A$bloxorz$1079     0354 GR  |   2 A$bloxorz$108      0046 GR
  2 A$bloxorz$1085     0357 GR  |   2 A$bloxorz$1086     035A GR
  2 A$bloxorz$1087     035B GR  |   2 A$bloxorz$109      0048 GR
  2 A$bloxorz$1093     035E GR  |   2 A$bloxorz$1094     035F GR
  2 A$bloxorz$1100     0361 GR  |   2 A$bloxorz$1101     0363 GR
  2 A$bloxorz$1103     0366 GR  |   2 A$bloxorz$1106     0367 GR
  2 A$bloxorz$1112     0369 GR  |   2 A$bloxorz$1113     036C GR
  2 A$bloxorz$1114     036F GR  |   2 A$bloxorz$1115     0371 GR
  2 A$bloxorz$1116     0374 GR  |   2 A$bloxorz$1117     0377 GR
  2 A$bloxorz$1118     037A GR  |   2 A$bloxorz$1119     037D GR
  2 A$bloxorz$1120     0380 GR  |   2 A$bloxorz$1121     0383 GR
  2 A$bloxorz$1122     0386 GR  |   2 A$bloxorz$1128     0389 GR
  2 A$bloxorz$1129     038B GR  |   2 A$bloxorz$1130     038E GR
  2 A$bloxorz$1136     0391 GR  |   2 A$bloxorz$1137     0394 GR
  2 A$bloxorz$1138     0397 GR  |   2 A$bloxorz$1139     039A GR
  2 A$bloxorz$1140     039C GR  |   2 A$bloxorz$1141     039D GR
  2 A$bloxorz$1142     039F GR  |   2 A$bloxorz$1143     03A2 GR
  2 A$bloxorz$1144     03A4 GR  |   2 A$bloxorz$1152     03A6 GR
  2 A$bloxorz$1158     03A9 GR  |   2 A$bloxorz$1159     03AC GR
  2 A$bloxorz$116      004C GR  |   2 A$bloxorz$1165     03AE GR
  2 A$bloxorz$1166     03B1 GR  |   2 A$bloxorz$1167     03B4 GR
  2 A$bloxorz$1168     03B6 GR  |   2 A$bloxorz$1169     03B8 GR
  2 A$bloxorz$117      004E GR  |   2 A$bloxorz$1176     03BB GR
  2 A$bloxorz$1178     03BE GR  |   2 A$bloxorz$118      0050 GR
  2 A$bloxorz$1186     03BF GR  |   2 A$bloxorz$1187     03C1 GR
  2 A$bloxorz$119      0053 GR  |   2 A$bloxorz$1193     03C4 GR
  2 A$bloxorz$1199     03C7 GR  |   2 A$bloxorz$1200     03CA GR
  2 A$bloxorz$1206     03CD GR  |   2 A$bloxorz$1207     03D0 GR
  2 A$bloxorz$1213     03D3 GR  |   2 A$bloxorz$1214     03D7 GR
  2 A$bloxorz$1217     03D8 GR  |   2 A$bloxorz$1223     03DA GR
  2 A$bloxorz$1229     03DD GR  |   2 A$bloxorz$1230     03DE GR
  2 A$bloxorz$1236     03E1 GR  |   2 A$bloxorz$1242     03E4 GR
  2 A$bloxorz$1243     03E7 GR  |   2 A$bloxorz$1249     03EB GR
  2 A$bloxorz$1250     03EE GR  |   2 A$bloxorz$1256     03F0 GR
  2 A$bloxorz$1263     03F3 GR  |   2 A$bloxorz$1264     03F6 GR
  2 A$bloxorz$1265     03F8 GR  |   2 A$bloxorz$1266     03FB GR
  2 A$bloxorz$1267     03FE GR  |   2 A$bloxorz$1273     0400 GR
  2 A$bloxorz$1274     0403 GR  |   2 A$bloxorz$1275     0404 GR
  2 A$bloxorz$1276     0406 GR  |   2 A$bloxorz$1277     0409 GR
  2 A$bloxorz$1278     040B GR  |   2 A$bloxorz$1279     040D GR
  2 A$bloxorz$1280     0410 GR  |   2 A$bloxorz$1286     0412 GR
  2 A$bloxorz$1287     0415 GR  |   2 A$bloxorz$1288     0416 GR
  2 A$bloxorz$1289     0418 GR  |   2 A$bloxorz$129      0055 GR
  2 A$bloxorz$1290     041B GR  |   2 A$bloxorz$1291     041E GR
  2 A$bloxorz$1297     0420 GR  |   2 A$bloxorz$1298     0423 GR
  2 A$bloxorz$1299     0425 GR  |   2 A$bloxorz$130      0057 GR
  2 A$bloxorz$1300     0428 GR  |   2 A$bloxorz$1301     042B GR
  2 A$bloxorz$1307     042D GR  |   2 A$bloxorz$1308     0430 GR
  2 A$bloxorz$1309     0431 GR  |   2 A$bloxorz$131      0059 GR
  2 A$bloxorz$1310     0433 GR  |   2 A$bloxorz$1311     0436 GR
  2 A$bloxorz$1312     0438 GR  |   2 A$bloxorz$1313     043A GR
  2 A$bloxorz$1314     043D GR  |   2 A$bloxorz$132      005B GR
  2 A$bloxorz$1320     043F GR  |   2 A$bloxorz$1321     0442 GR
  2 A$bloxorz$1322     0443 GR  |   2 A$bloxorz$1323     0445 GR
  2 A$bloxorz$1324     0448 GR  |   2 A$bloxorz$1325     044B GR
  2 A$bloxorz$133      005D GR  |   2 A$bloxorz$1331     044D GR
  2 A$bloxorz$1332     044F GR  |   2 A$bloxorz$1333     0452 GR
  2 A$bloxorz$1339     0454 GR  |   2 A$bloxorz$134      005F GR
  2 A$bloxorz$1340     0456 GR  |   2 A$bloxorz$1346     045A GR
  2 A$bloxorz$1347     045D GR  |   2 A$bloxorz$135      0061 GR
  2 A$bloxorz$1354     0460 GR  |   2 A$bloxorz$1355     0463 GR
  2 A$bloxorz$1356     0465 GR  |   2 A$bloxorz$1357     0467 GR
  2 A$bloxorz$1358     0469 GR  |   2 A$bloxorz$1359     046B GR
  2 A$bloxorz$136      0063 GR  |   2 A$bloxorz$1360     046F GR
  2 A$bloxorz$1367     0471 GR  |   2 A$bloxorz$1368     0473 GR
  2 A$bloxorz$1369     0475 GR  |   2 A$bloxorz$137      0064 GR
  2 A$bloxorz$1370     0477 GR  |   2 A$bloxorz$1371     0479 GR
  2 A$bloxorz$1378     047B GR  |   2 A$bloxorz$138      0065 GR
  2 A$bloxorz$1385     047E GR  |   2 A$bloxorz$139      0067 GR
  2 A$bloxorz$1392     0480 GR  |   2 A$bloxorz$1393     0482 GR
  2 A$bloxorz$1394     0484 GR  |   2 A$bloxorz$1395     0486 GR
  2 A$bloxorz$140      0069 GR  |   2 A$bloxorz$1402     0488 GR
  2 A$bloxorz$1409     048B GR  |   2 A$bloxorz$141      006B GR
  2 A$bloxorz$1416     048D GR  |   2 A$bloxorz$1417     048F GR
  2 A$bloxorz$1418     0491 GR  |   2 A$bloxorz$1419     0493 GR
  2 A$bloxorz$142      006D GR  |   2 A$bloxorz$1426     0495 GR
  2 A$bloxorz$143      006F GR  |   2 A$bloxorz$1439     0498 GR
  2 A$bloxorz$1440     049B GR  |   2 A$bloxorz$1441     049D GR
  2 A$bloxorz$1442     04A0 GR  |   2 A$bloxorz$1443     04A3 GR
  2 A$bloxorz$1444     04A5 GR  |   2 A$bloxorz$1445     04A8 GR
  2 A$bloxorz$1446     04AB GR  |   2 A$bloxorz$1447     04AD GR
  2 A$bloxorz$1448     04B0 GR  |   2 A$bloxorz$1454     04B2 GR
  2 A$bloxorz$1460     04B5 GR  |   2 A$bloxorz$1461     04B7 GR
  2 A$bloxorz$1467     04BA GR  |   2 A$bloxorz$1468     04BD GR
  2 A$bloxorz$1474     04C0 GR  |   2 A$bloxorz$1475     04C2 GR
  2 A$bloxorz$1476     04C6 GR  |   2 A$bloxorz$1483     04C8 GR
  2 A$bloxorz$1484     04CB GR  |   2 A$bloxorz$1485     04CD GR
  2 A$bloxorz$1491     04CF GR  |   2 A$bloxorz$1492     04D1 GR
  2 A$bloxorz$1499     04D4 GR  |   2 A$bloxorz$150      0071 GR
  2 A$bloxorz$1500     04D7 GR  |   2 A$bloxorz$1506     04D9 GR
  2 A$bloxorz$1507     04DB GR  |   2 A$bloxorz$1508     04DD GR
  2 A$bloxorz$1514     04E1 GR  |   2 A$bloxorz$1515     04E4 GR
  2 A$bloxorz$1516     04E6 GR  |   2 A$bloxorz$1517     04E9 GR
  2 A$bloxorz$1518     04EC GR  |   2 A$bloxorz$1519     04EE GR
  2 A$bloxorz$1526     04F1 GR  |   2 A$bloxorz$1527     04F4 GR
  2 A$bloxorz$1528     04F6 GR  |   2 A$bloxorz$1529     04F8 GR
  2 A$bloxorz$1530     04FA GR  |   2 A$bloxorz$1531     04FC GR
  2 A$bloxorz$1532     0500 GR  |   2 A$bloxorz$1539     0503 GR
  2 A$bloxorz$1540     0505 GR  |   2 A$bloxorz$1541     0507 GR
  2 A$bloxorz$1542     0509 GR  |   2 A$bloxorz$1543     050B GR
  2 A$bloxorz$1544     050D GR  |   2 A$bloxorz$1545     050F GR
  2 A$bloxorz$1552     0511 GR  |   2 A$bloxorz$1553     0514 GR
  2 A$bloxorz$1554     0516 GR  |   2 A$bloxorz$1555     0519 GR
  2 A$bloxorz$1556     051C GR  |   2 A$bloxorz$156      0073 GR
  2 A$bloxorz$1563     051E GR  |   2 A$bloxorz$157      0075 GR
  2 A$bloxorz$1570     0521 GR  |   2 A$bloxorz$1571     0523 GR
  2 A$bloxorz$1572     0525 GR  |   2 A$bloxorz$1578     0527 GR
  2 A$bloxorz$1579     052A GR  |   2 A$bloxorz$158      0077 GR
  2 A$bloxorz$1580     052C GR  |   2 A$bloxorz$1581     052F GR
  2 A$bloxorz$1582     0532 GR  |   2 A$bloxorz$1589     0534 GR
  2 A$bloxorz$159      0079 GR  |   2 A$bloxorz$1590     0536 GR
  2 A$bloxorz$1591     0538 GR  |   2 A$bloxorz$1597     053A GR
  2 A$bloxorz$1598     053D GR  |   2 A$bloxorz$1599     053E GR
  2 A$bloxorz$160      007B GR  |   2 A$bloxorz$1600     0540 GR
  2 A$bloxorz$1601     0543 GR  |   2 A$bloxorz$1602     0546 GR
  2 A$bloxorz$1609     0548 GR  |   2 A$bloxorz$161      007D GR
  2 A$bloxorz$1616     054A GR  |   2 A$bloxorz$1617     054C GR
  2 A$bloxorz$1618     054E GR  |   2 A$bloxorz$162      0080 GR
  2 A$bloxorz$1624     0550 GR  |   2 A$bloxorz$1625     0553 GR
  2 A$bloxorz$1626     0555 GR  |   2 A$bloxorz$1627     0558 GR
  2 A$bloxorz$1628     055B GR  |   2 A$bloxorz$163      0082 GR
  2 A$bloxorz$1635     055D GR  |   2 A$bloxorz$1636     055F GR
  2 A$bloxorz$1637     0561 GR  |   2 A$bloxorz$164      0084 GR
  2 A$bloxorz$1643     0563 GR  |   2 A$bloxorz$1644     0566 GR
  2 A$bloxorz$1645     0567 GR  |   2 A$bloxorz$1646     0569 GR
  2 A$bloxorz$1647     056C GR  |   2 A$bloxorz$1648     056E GR
  2 A$bloxorz$1649     0570 GR  |   2 A$bloxorz$1650     0573 GR
  2 A$bloxorz$1658     0575 GR  |   2 A$bloxorz$1659     0577 GR
  2 A$bloxorz$166      0086 GR  |   2 A$bloxorz$1662     0578 GR
  2 A$bloxorz$1663     057A GR  |   2 A$bloxorz$1672     057C GR
  2 A$bloxorz$1673     057E GR  |   2 A$bloxorz$1679     0581 GR
  2 A$bloxorz$1680     0583 GR  |   2 A$bloxorz$1686     0586 GR
  2 A$bloxorz$1687     0588 GR  |   2 A$bloxorz$1693     058B GR
  2 A$bloxorz$1694     058E GR  |   2 A$bloxorz$1700     0590 GR
  2 A$bloxorz$1706     0593 GR  |   2 A$bloxorz$1707     0595 GR
  2 A$bloxorz$1708     0597 GR  |   2 A$bloxorz$1716     0598 GR
  2 A$bloxorz$1717     059B GR  |   2 A$bloxorz$1723     059D GR
  2 A$bloxorz$1724     059F GR  |   2 A$bloxorz$1725     05A1 GR
  2 A$bloxorz$1726     05A4 GR  |   2 A$bloxorz$1727     05A6 GR
  2 A$bloxorz$173      0088 GR  |   2 A$bloxorz$1734     05A8 GR
  2 A$bloxorz$1736     05AA GR  |   2 A$bloxorz$1739     05AB GR
  2 A$bloxorz$174      008A GR  |   2 A$bloxorz$1740     05AD GR
  2 A$bloxorz$1746     05AF GR  |   2 A$bloxorz$1747     05B2 GR
  2 A$bloxorz$175      008C GR  |   2 A$bloxorz$1753     05B4 GR
  2 A$bloxorz$1754     05B7 GR  |   2 A$bloxorz$1755     05B8 GR
  2 A$bloxorz$1756     05BA GR  |   2 A$bloxorz$1757     05BD GR
  2 A$bloxorz$1758     05BE GR  |   2 A$bloxorz$1759     05C0 GR
  2 A$bloxorz$176      008E GR  |   2 A$bloxorz$1760     05C1 GR
  2 A$bloxorz$1761     05C2 GR  |   2 A$bloxorz$1762     05C3 GR
  2 A$bloxorz$1763     05C4 GR  |   2 A$bloxorz$1764     05C6 GR
  2 A$bloxorz$1765     05C8 GR  |   2 A$bloxorz$1766     05CA GR
  2 A$bloxorz$1767     05CC GR  |   2 A$bloxorz$1768     05CE GR
  2 A$bloxorz$1769     05D2 GR  |   2 A$bloxorz$177      0090 GR
  2 A$bloxorz$1770     05D3 GR  |   2 A$bloxorz$1771     05D6 GR
  2 A$bloxorz$1778     05D8 GR  |   2 A$bloxorz$1779     05DB GR
  2 A$bloxorz$178      0092 GR  |   2 A$bloxorz$1780     05DC GR
  2 A$bloxorz$1781     05DF GR  |   2 A$bloxorz$1782     05E0 GR
  2 A$bloxorz$1788     05E3 GR  |   2 A$bloxorz$1789     05E6 GR
  2 A$bloxorz$179      0094 GR  |   2 A$bloxorz$1790     05E7 GR
  2 A$bloxorz$1791     05E8 GR  |   2 A$bloxorz$1792     05EB GR
  2 A$bloxorz$1793     05ED GR  |   2 A$bloxorz$1794     05EE GR
  2 A$bloxorz$1795     05F1 GR  |   2 A$bloxorz$1796     05F4 GR
  2 A$bloxorz$180      0096 GR  |   2 A$bloxorz$1802     05F7 GR
  2 A$bloxorz$1803     05FB GR  |   2 A$bloxorz$1804     05FD GR
  2 A$bloxorz$1805     0600 GR  |   2 A$bloxorz$181      0098 GR
  2 A$bloxorz$1812     0603 GR  |   2 A$bloxorz$1813     0606 GR
  2 A$bloxorz$1814     0607 GR  |   2 A$bloxorz$1815     0609 GR
  2 A$bloxorz$1816     060A GR  |   2 A$bloxorz$1817     060B GR
  2 A$bloxorz$1818     060D GR  |   2 A$bloxorz$1819     0611 GR
  2 A$bloxorz$182      009A GR  |   2 A$bloxorz$1825     0614 GR
  2 A$bloxorz$183      009C GR  |   2 A$bloxorz$1831     0617 GR
  2 A$bloxorz$1837     061A GR  |   2 A$bloxorz$1838     061D GR
  2 A$bloxorz$1839     061F GR  |   2 A$bloxorz$184      009E GR
  2 A$bloxorz$1845     0622 GR  |   2 A$bloxorz$1846     0624 GR
  2 A$bloxorz$185      00A1 GR  |   2 A$bloxorz$1852     0627 GR
  2 A$bloxorz$1858     062A GR  |   2 A$bloxorz$1859     062C GR
  2 A$bloxorz$186      00A3 GR  |   2 A$bloxorz$1865     062F GR
  2 A$bloxorz$1866     0631 GR  |   2 A$bloxorz$187      00A5 GR
  2 A$bloxorz$1872     0634 GR  |   2 A$bloxorz$1873     0637 GR
  2 A$bloxorz$1879     063A GR  |   2 A$bloxorz$188      00A9 GR
  2 A$bloxorz$1880     063C GR  |   2 A$bloxorz$1886     0640 GR
  2 A$bloxorz$1887     0643 GR  |   2 A$bloxorz$189      00AB GR
  2 A$bloxorz$1893     0645 GR  |   2 A$bloxorz$1894     0648 GR
  2 A$bloxorz$1900     064B GR  |   2 A$bloxorz$1907     064E GR
  2 A$bloxorz$1908     0651 GR  |   2 A$bloxorz$1909     0653 GR
  2 A$bloxorz$1966     0686 GR  |   2 A$bloxorz$1967     0688 GR
  2 A$bloxorz$197      00AD GR  |   2 A$bloxorz$1973     068A GR
  2 A$bloxorz$1979     068D GR  |   2 A$bloxorz$198      00AF GR
  2 A$bloxorz$1980     068F GR  |   2 A$bloxorz$1983     0691 GR
  2 A$bloxorz$1984     0693 GR  |   2 A$bloxorz$1990     0696 GR
  2 A$bloxorz$1991     0698 GR  |   2 A$bloxorz$1997     069B GR
  2 A$bloxorz$1998     069D GR  |   2 A$bloxorz$1999     069F GR
  2 A$bloxorz$2000     06A1 GR  |   2 A$bloxorz$2001     06A3 GR
  2 A$bloxorz$2002     06A6 GR  |   2 A$bloxorz$2005     06A8 GR
  2 A$bloxorz$2006     06AA GR  |   2 A$bloxorz$2007     06AC GR
  2 A$bloxorz$2008     06AE GR  |   2 A$bloxorz$2014     06B1 GR
  2 A$bloxorz$2015     06B3 GR  |   2 A$bloxorz$2016     06B5 GR
  2 A$bloxorz$2017     06B7 GR  |   2 A$bloxorz$2018     06B9 GR
  2 A$bloxorz$2019     06BC GR  |   2 A$bloxorz$2022     06BE GR
  2 A$bloxorz$2023     06C0 GR  |   2 A$bloxorz$2024     06C2 GR
  2 A$bloxorz$2025     06C4 GR  |   2 A$bloxorz$2031     06C7 GR
  2 A$bloxorz$2032     06C9 GR  |   2 A$bloxorz$2033     06CB GR
  2 A$bloxorz$2034     06CD GR  |   2 A$bloxorz$2035     06CF GR
  2 A$bloxorz$2036     06D2 GR  |   2 A$bloxorz$2039     06D4 GR
  2 A$bloxorz$204      00B2 GR  |   2 A$bloxorz$2040     06D6 GR
  2 A$bloxorz$2041     06D8 GR  |   2 A$bloxorz$2042     06DA GR
  2 A$bloxorz$2048     06DD GR  |   2 A$bloxorz$2049     06DF GR
  2 A$bloxorz$205      00B5 GR  |   2 A$bloxorz$2050     06E1 GR
  2 A$bloxorz$2051     06E3 GR  |   2 A$bloxorz$2052     06E5 GR
  2 A$bloxorz$2053     06E8 GR  |   2 A$bloxorz$2056     06EA GR
  2 A$bloxorz$2057     06EC GR  |   2 A$bloxorz$2058     06EE GR
  2 A$bloxorz$2059     06F0 GR  |   2 A$bloxorz$2065     06F3 GR
  2 A$bloxorz$2066     06F5 GR  |   2 A$bloxorz$2067     06F7 GR
  2 A$bloxorz$2068     06F9 GR  |   2 A$bloxorz$2069     06FB GR
  2 A$bloxorz$2070     06FE GR  |   2 A$bloxorz$2073     0700 GR
  2 A$bloxorz$2074     0702 GR  |   2 A$bloxorz$2075     0704 GR
  2 A$bloxorz$2076     0706 GR  |   2 A$bloxorz$2082     0709 GR
  2 A$bloxorz$2083     070C GR  |   2 A$bloxorz$2084     070E GR
  2 A$bloxorz$2090     0710 GR  |   2 A$bloxorz$2096     0713 GR
  2 A$bloxorz$210      00B6 GR  |   2 A$bloxorz$2103     0716 GR
  2 A$bloxorz$2104     0719 GR  |   2 A$bloxorz$2105     071B GR
  2 A$bloxorz$2111     071D GR  |   2 A$bloxorz$2112     071F GR
  2 A$bloxorz$2118     0722 GR  |   2 A$bloxorz$2125     0725 GR
  2 A$bloxorz$2126     0728 GR  |   2 A$bloxorz$2127     072A GR
  2 A$bloxorz$213      00B8 GR  |   2 A$bloxorz$2133     072C GR
  2 A$bloxorz$2134     072E GR  |   2 A$bloxorz$2140     0731 GR
  2 A$bloxorz$2147     0734 GR  |   2 A$bloxorz$2148     0737 GR
  2 A$bloxorz$2149     0739 GR  |   2 A$bloxorz$2155     073B GR
  2 A$bloxorz$2156     073D GR  |   2 A$bloxorz$216      00BA GR
  2 A$bloxorz$2162     0740 GR  |   2 A$bloxorz$2164     0743 GR
  2 A$bloxorz$2165     0745 GR  |   2 A$bloxorz$219      00BD GR
  2 A$bloxorz$222      00BF GR  |   2 A$bloxorz$2232     0783 GR
  2 A$bloxorz$2233     0785 GR  |   2 A$bloxorz$2239     0787 GR
  2 A$bloxorz$2245     078A GR  |   2 A$bloxorz$2246     078C GR
  2 A$bloxorz$2249     078E GR  |   2 A$bloxorz$225      00C1 GR
  2 A$bloxorz$2250     0790 GR  |   2 A$bloxorz$2256     0793 GR
  2 A$bloxorz$2257     0795 GR  |   2 A$bloxorz$2263     0798 GR
  2 A$bloxorz$2264     079A GR  |   2 A$bloxorz$2265     079C GR
  2 A$bloxorz$2266     079E GR  |   2 A$bloxorz$2267     07A0 GR
  2 A$bloxorz$2268     07A3 GR  |   2 A$bloxorz$2271     07A5 GR
  2 A$bloxorz$2272     07A7 GR  |   2 A$bloxorz$2273     07A9 GR
  2 A$bloxorz$2274     07AB GR  |   2 A$bloxorz$228      00C3 GR
  2 A$bloxorz$2280     07AE GR  |   2 A$bloxorz$2281     07B0 GR
  2 A$bloxorz$2282     07B2 GR  |   2 A$bloxorz$2283     07B4 GR
  2 A$bloxorz$2284     07B6 GR  |   2 A$bloxorz$2285     07B9 GR
  2 A$bloxorz$2288     07BB GR  |   2 A$bloxorz$2289     07BD GR
  2 A$bloxorz$2290     07BF GR  |   2 A$bloxorz$2291     07C1 GR
  2 A$bloxorz$2297     07C4 GR  |   2 A$bloxorz$2298     07C6 GR
  2 A$bloxorz$2299     07C8 GR  |   2 A$bloxorz$2300     07CA GR
  2 A$bloxorz$2301     07CC GR  |   2 A$bloxorz$2302     07CF GR
  2 A$bloxorz$2305     07D1 GR  |   2 A$bloxorz$2306     07D3 GR
  2 A$bloxorz$2307     07D5 GR  |   2 A$bloxorz$2308     07D7 GR
  2 A$bloxorz$231      00C5 GR  |   2 A$bloxorz$2314     07DA GR
  2 A$bloxorz$2315     07DC GR  |   2 A$bloxorz$2316     07DE GR
  2 A$bloxorz$2317     07E0 GR  |   2 A$bloxorz$2318     07E2 GR
  2 A$bloxorz$2319     07E5 GR  |   2 A$bloxorz$2322     07E7 GR
  2 A$bloxorz$2323     07E9 GR  |   2 A$bloxorz$2324     07EB GR
  2 A$bloxorz$2325     07ED GR  |   2 A$bloxorz$2331     07F0 GR
  2 A$bloxorz$2332     07F3 GR  |   2 A$bloxorz$2333     07F5 GR
  2 A$bloxorz$2339     07F7 GR  |   2 A$bloxorz$234      00C7 GR
  2 A$bloxorz$2345     07FA GR  |   2 A$bloxorz$2351     07FD GR
  2 A$bloxorz$2358     0800 GR  |   2 A$bloxorz$2359     0803 GR
  2 A$bloxorz$2360     0805 GR  |   2 A$bloxorz$2366     0807 GR
  2 A$bloxorz$2367     080A GR  |   2 A$bloxorz$237      00C9 GR
  2 A$bloxorz$2373     080D GR  |   2 A$bloxorz$2379     0810 GR
  2 A$bloxorz$2380     0812 GR  |   2 A$bloxorz$2386     0815 GR
  2 A$bloxorz$2392     0818 GR  |   2 A$bloxorz$2399     081B GR
  2 A$bloxorz$240      00CC GR  |   2 A$bloxorz$2400     081E GR
  2 A$bloxorz$2401     0820 GR  |   2 A$bloxorz$2407     0822 GR
  2 A$bloxorz$2408     0824 GR  |   2 A$bloxorz$2410     0827 GR
  2 A$bloxorz$2411     0829 GR  |   2 A$bloxorz$2414     082B GR
  2 A$bloxorz$2420     082D GR  |   2 A$bloxorz$2426     0830 GR
  2 A$bloxorz$2427     0833 GR  |   2 A$bloxorz$2428     0834 GR
  2 A$bloxorz$2429     0836 GR  |   2 A$bloxorz$243      00CF GR
  2 A$bloxorz$2435     0839 GR  |   2 A$bloxorz$2436     083B GR
  2 A$bloxorz$2442     083D GR  |   2 A$bloxorz$2443     083E GR
  2 A$bloxorz$2444     0840 GR  |   2 A$bloxorz$2446     0841 GR
  2 A$bloxorz$2452     0844 GR  |   2 A$bloxorz$2459     0847 GR
  2 A$bloxorz$2460     084A GR  |   2 A$bloxorz$2461     084C GR
  2 A$bloxorz$2467     084E GR  |   2 A$bloxorz$2469     0851 GR
  2 A$bloxorz$2470     0853 GR  |   2 A$bloxorz$2478     0854 GR
  2 A$bloxorz$2479     0857 GR  |   2 A$bloxorz$2485     0859 GR
  2 A$bloxorz$2486     085B GR  |   2 A$bloxorz$2487     085D GR
  2 A$bloxorz$249      00D1 GR  |   2 A$bloxorz$2493     0860 GR
  2 A$bloxorz$2494     0862 GR  |   2 A$bloxorz$2495     0864 GR
  2 A$bloxorz$2496     0866 GR  |   2 A$bloxorz$2497     0869 GR
  2 A$bloxorz$2499     086B GR  |   2 A$bloxorz$252      00D2 GR
  2 A$bloxorz$2532     0887 GR  |   2 A$bloxorz$2533     0889 GR
  2 A$bloxorz$2539     088B GR  |   2 A$bloxorz$2545     088E GR
  2 A$bloxorz$2546     0890 GR  |   2 A$bloxorz$2549     0892 GR
  2 A$bloxorz$255      00D3 GR  |   2 A$bloxorz$2550     0894 GR
  2 A$bloxorz$2556     0897 GR  |   2 A$bloxorz$2557     0899 GR
  2 A$bloxorz$2563     089C GR  |   2 A$bloxorz$2564     089E GR
  2 A$bloxorz$2565     08A0 GR  |   2 A$bloxorz$2566     08A2 GR
  2 A$bloxorz$2567     08A4 GR  |   2 A$bloxorz$2568     08A7 GR
  2 A$bloxorz$2571     08A9 GR  |   2 A$bloxorz$2572     08AB GR
  2 A$bloxorz$2573     08AD GR  |   2 A$bloxorz$2574     08AF GR
  2 A$bloxorz$258      00D4 GR  |   2 A$bloxorz$2580     08B2 GR
  2 A$bloxorz$2581     08B4 GR  |   2 A$bloxorz$2582     08B6 GR
  2 A$bloxorz$2583     08B8 GR  |   2 A$bloxorz$2584     08BA GR
  2 A$bloxorz$2585     08BD GR  |   2 A$bloxorz$2588     08BF GR
  2 A$bloxorz$2589     08C1 GR  |   2 A$bloxorz$2590     08C3 GR
  2 A$bloxorz$2591     08C5 GR  |   2 A$bloxorz$2597     08C8 GR
  2 A$bloxorz$2598     08CA GR  |   2 A$bloxorz$2599     08CC GR
  2 A$bloxorz$2600     08CE GR  |   2 A$bloxorz$2601     08D0 GR
  2 A$bloxorz$2602     08D3 GR  |   2 A$bloxorz$2605     08D5 GR
  2 A$bloxorz$2606     08D7 GR  |   2 A$bloxorz$2607     08D9 GR
  2 A$bloxorz$2608     08DB GR  |   2 A$bloxorz$261      00D5 GR
  2 A$bloxorz$2614     08DE GR  |   2 A$bloxorz$2615     08E1 GR
  2 A$bloxorz$2616     08E3 GR  |   2 A$bloxorz$2622     08E5 GR
  2 A$bloxorz$2629     08E7 GR  |   2 A$bloxorz$2630     08E9 GR
  2 A$bloxorz$2631     08EB GR  |   2 A$bloxorz$2632     08ED GR
  2 A$bloxorz$2633     08F0 GR  |   2 A$bloxorz$2634     08F2 GR
  2 A$bloxorz$2635     08F4 GR  |   2 A$bloxorz$2636     08F6 GR
  2 A$bloxorz$2637     08F8 GR  |   2 A$bloxorz$264      00D7 GR
  2 A$bloxorz$2643     08FA GR  |   2 A$bloxorz$2650     08FD GR
  2 A$bloxorz$2651     0900 GR  |   2 A$bloxorz$2652     0902 GR
  2 A$bloxorz$2658     0904 GR  |   2 A$bloxorz$2660     0907 GR
  2 A$bloxorz$2661     0909 GR  |   2 A$bloxorz$2664     090B GR
  2 A$bloxorz$2665     090D GR  |   2 A$bloxorz$267      00D8 GR
  2 A$bloxorz$2671     090F GR  |   2 A$bloxorz$2677     0912 GR
  2 A$bloxorz$2678     0915 GR  |   2 A$bloxorz$2684     0918 GR
  2 A$bloxorz$2685     091B GR  |   2 A$bloxorz$2686     091C GR
  2 A$bloxorz$2692     091F GR  |   2 A$bloxorz$2693     0921 GR
  2 A$bloxorz$2699     0925 GR  |   2 A$bloxorz$270      00DA GR
  2 A$bloxorz$2700     0928 GR  |   2 A$bloxorz$2701     092B GR
  2 A$bloxorz$2707     092D GR  |   2 A$bloxorz$2708     0930 GR
  2 A$bloxorz$2709     0931 GR  |   2 A$bloxorz$2710     0933 GR
  2 A$bloxorz$2711     0935 GR  |   2 A$bloxorz$2712     0937 GR
  2 A$bloxorz$2713     0939 GR  |   2 A$bloxorz$2719     093C GR
  2 A$bloxorz$2720     093F GR  |   2 A$bloxorz$2721     0940 GR
  2 A$bloxorz$2722     0941 GR  |   2 A$bloxorz$2723     0943 GR
  2 A$bloxorz$2724     0946 GR  |   2 A$bloxorz$2725     0948 GR
  2 A$bloxorz$2726     0949 GR  |   2 A$bloxorz$2727     094B GR
  2 A$bloxorz$2728     094D GR  |   2 A$bloxorz$2729     0950 GR
  2 A$bloxorz$273      00DB GR  |   2 A$bloxorz$2736     0952 GR
  2 A$bloxorz$2737     0955 GR  |   2 A$bloxorz$2743     0959 GR
  2 A$bloxorz$2744     095C GR  |   2 A$bloxorz$2745     095D GR
  2 A$bloxorz$2751     0960 GR  |   2 A$bloxorz$2752     0961 GR
  2 A$bloxorz$2753     0963 GR  |   2 A$bloxorz$2754     0966 GR
  2 A$bloxorz$2755     0967 GR  |   2 A$bloxorz$2756     0969 GR
  2 A$bloxorz$2757     096A GR  |   2 A$bloxorz$2758     096B GR
  2 A$bloxorz$2759     096C GR  |   2 A$bloxorz$276      00DD GR
  2 A$bloxorz$2760     096D GR  |   2 A$bloxorz$2761     096F GR
  2 A$bloxorz$2762     0971 GR  |   2 A$bloxorz$2763     0973 GR
  2 A$bloxorz$2764     0975 GR  |   2 A$bloxorz$2765     0977 GR
  2 A$bloxorz$2766     097B GR  |   2 A$bloxorz$2772     097E GR
  2 A$bloxorz$2773     097F GR  |   2 A$bloxorz$2779     0983 GR
  2 A$bloxorz$2780     0985 GR  |   2 A$bloxorz$2786     0988 GR
  2 A$bloxorz$2787     098B GR  |   2 A$bloxorz$2788     098E GR
  2 A$bloxorz$2789     0991 GR  |   2 A$bloxorz$279      00DF GR
  2 A$bloxorz$2790     0994 GR  |   2 A$bloxorz$2791     0997 GR
  2 A$bloxorz$2792     099A GR  |   2 A$bloxorz$2793     099D GR
  2 A$bloxorz$2794     09A0 GR  |   2 A$bloxorz$2795     09A3 GR
  2 A$bloxorz$2796     09A6 GR  |   2 A$bloxorz$2797     09A9 GR
  2 A$bloxorz$2798     09AC GR  |   2 A$bloxorz$2799     09AF GR
  2 A$bloxorz$2800     09B2 GR  |   2 A$bloxorz$2801     09B5 GR
  2 A$bloxorz$2802     09B8 GR  |   2 A$bloxorz$2803     09BB GR
  2 A$bloxorz$2809     09BE GR  |   2 A$bloxorz$2810     09C1 GR
  2 A$bloxorz$2811     09C3 GR  |   2 A$bloxorz$2812     09C6 GR
  2 A$bloxorz$2818     09C9 GR  |   2 A$bloxorz$2819     09CC GR
  2 A$bloxorz$282      00E0 GR  |   2 A$bloxorz$2820     09CE GR
  2 A$bloxorz$2827     09D0 GR  |   2 A$bloxorz$2828     09D3 GR
  2 A$bloxorz$2835     09D5 GR  |   2 A$bloxorz$2836     09D8 GR
  2 A$bloxorz$2837     09D9 GR  |   2 A$bloxorz$2843     09DC GR
  2 A$bloxorz$2844     09DF GR  |   2 A$bloxorz$2845     09E1 GR
  2 A$bloxorz$285      00E2 GR  |   2 A$bloxorz$2852     09E4 GR
  2 A$bloxorz$2854     09E7 GR  |   2 A$bloxorz$2855     09E9 GR
  2 A$bloxorz$2858     09EB GR  |   2 A$bloxorz$2859     09ED GR
  2 A$bloxorz$2865     09EF GR  |   2 A$bloxorz$2866     09F1 GR
  2 A$bloxorz$2872     09F5 GR  |   2 A$bloxorz$2873     09F7 GR
  2 A$bloxorz$2874     09F9 GR  |   2 A$bloxorz$2875     09FB GR
  2 A$bloxorz$2876     09FE GR  |   2 A$bloxorz$2877     0A00 GR
  2 A$bloxorz$288      00E4 GR  |   2 A$bloxorz$2885     0A01 GR
  2 A$bloxorz$2891     0A04 GR  |   2 A$bloxorz$2892     0A05 GR
  2 A$bloxorz$2898     0A08 GR  |   2 A$bloxorz$2904     0A0B GR
  2 A$bloxorz$2905     0A0E GR  |   2 A$bloxorz$2906     0A10 GR
  2 A$bloxorz$291      00E6 GR  |   2 A$bloxorz$2912     0A12 GR
  2 A$bloxorz$2913     0A13 GR  |   2 A$bloxorz$2919     0A16 GR
  2 A$bloxorz$2920     0A18 GR  |   2 A$bloxorz$2921     0A1B GR
  2 A$bloxorz$2923     0A1E GR  |   2 A$bloxorz$2924     0A21 GR
  2 A$bloxorz$2925     0A23 GR  |   2 A$bloxorz$2931     0A25 GR
  2 A$bloxorz$2932     0A27 GR  |   2 A$bloxorz$2938     0A2A GR
  2 A$bloxorz$2939     0A2C GR  |   2 A$bloxorz$294      00E8 GR
  2 A$bloxorz$2940     0A2F GR  |   2 A$bloxorz$2942     0A31 GR
  2 A$bloxorz$2943     0A34 GR  |   2 A$bloxorz$2944     0A36 GR
  2 A$bloxorz$2950     0A38 GR  |   2 A$bloxorz$2951     0A3A GR
  2 A$bloxorz$2957     0A3D GR  |   2 A$bloxorz$2958     0A3F GR
  2 A$bloxorz$2959     0A42 GR  |   2 A$bloxorz$2961     0A44 GR
  2 A$bloxorz$2962     0A47 GR  |   2 A$bloxorz$2963     0A49 GR
  2 A$bloxorz$2969     0A4B GR  |   2 A$bloxorz$297      00EA GR
  2 A$bloxorz$2970     0A4D GR  |   2 A$bloxorz$2976     0A50 GR
  2 A$bloxorz$2977     0A52 GR  |   2 A$bloxorz$2987     0A55 GR
  2 A$bloxorz$2988     0A58 GR  |   2 A$bloxorz$2989     0A5A GR
  2 A$bloxorz$2995     0A5C GR  |   2 A$bloxorz$2996     0A5F GR
  2 A$bloxorz$300      00ED GR  |   2 A$bloxorz$3002     0A62 GR
  2 A$bloxorz$3003     0A64 GR  |   2 A$bloxorz$3010     0A68 GR
  2 A$bloxorz$3016     0A6B GR  |   2 A$bloxorz$3017     0A6E GR
  2 A$bloxorz$3018     0A70 GR  |   2 A$bloxorz$3024     0A72 GR
  2 A$bloxorz$3025     0A75 GR  |   2 A$bloxorz$303      00EF GR
  2 A$bloxorz$3031     0A77 GR  |   2 A$bloxorz$3038     0A7A GR
  2 A$bloxorz$3039     0A7D GR  |   2 A$bloxorz$3040     0A7F GR
  2 A$bloxorz$3041     0A81 GR  |   2 A$bloxorz$3042     0A84 GR
  2 A$bloxorz$3048     0A86 GR  |   2 A$bloxorz$3049     0A89 GR
  2 A$bloxorz$3050     0A8A GR  |   2 A$bloxorz$3056     0A8D GR
  2 A$bloxorz$3057     0A90 GR  |   2 A$bloxorz$306      00F1 GR
  2 A$bloxorz$3063     0A92 GR  |   2 A$bloxorz$3069     0A95 GR
  2 A$bloxorz$3070     0A98 GR  |   2 A$bloxorz$3077     0A9B GR
  2 A$bloxorz$3084     0A9E GR  |   2 A$bloxorz$3085     0AA1 GR
  2 A$bloxorz$3086     0AA3 GR  |   2 A$bloxorz$3087     0AA5 GR
  2 A$bloxorz$3088     0AA8 GR  |   2 A$bloxorz$309      00F3 GR
  2 A$bloxorz$3094     0AAA GR  |   2 A$bloxorz$3095     0AAD GR
  2 A$bloxorz$3101     0AAF GR  |   2 A$bloxorz$3102     0AB0 GR
  2 A$bloxorz$3103     0AB3 GR  |   2 A$bloxorz$3110     0AB5 GR
  2 A$bloxorz$3111     0AB8 GR  |   2 A$bloxorz$3112     0AB9 GR
  2 A$bloxorz$3118     0ABC GR  |   2 A$bloxorz$3119     0ABF GR
  2 A$bloxorz$312      00F5 GR  |   2 A$bloxorz$3126     0AC2 GR
  2 A$bloxorz$3133     0AC5 GR  |   2 A$bloxorz$3134     0AC8 GR
  2 A$bloxorz$3135     0ACA GR  |   2 A$bloxorz$3141     0ACC GR
  2 A$bloxorz$3143     0ACF GR  |   2 A$bloxorz$3146     0AD0 GR
  2 A$bloxorz$3147     0AD2 GR  |   2 A$bloxorz$315      00F7 GR
  2 A$bloxorz$3153     0AD4 GR  |   2 A$bloxorz$3154     0AD5 GR
  2 A$bloxorz$3160     0AD8 GR  |   2 A$bloxorz$3161     0ADA GR
  2 A$bloxorz$3167     0ADE GR  |   2 A$bloxorz$3173     0AE1 GR
  2 A$bloxorz$3174     0AE3 GR  |   2 A$bloxorz$3175     0AE5 GR
  2 A$bloxorz$318      00F9 GR  |   2 A$bloxorz$3181     0AE8 GR
  2 A$bloxorz$3182     0AEA GR  |   2 A$bloxorz$3183     0AEC GR
  2 A$bloxorz$3189     0AEF GR  |   2 A$bloxorz$3190     0AF1 GR
  2 A$bloxorz$3191     0AF3 GR  |   2 A$bloxorz$3192     0AF6 GR
  2 A$bloxorz$3193     0AF8 GR  |   2 A$bloxorz$3194     0AFA GR
  2 A$bloxorz$3200     0AFC GR  |   2 A$bloxorz$3201     0AFE GR
  2 A$bloxorz$3208     0B01 GR  |   2 A$bloxorz$3209     0B03 GR
  2 A$bloxorz$321      00FB GR  |   2 A$bloxorz$3215     0B06 GR
  2 A$bloxorz$3216     0B08 GR  |   2 A$bloxorz$3222     0B0B GR
  2 A$bloxorz$3228     0B0E GR  |   2 A$bloxorz$3234     0B11 GR
  2 A$bloxorz$324      00FD GR  |   2 A$bloxorz$3240     0B14 GR
  2 A$bloxorz$3252     0B17 GR  |   2 A$bloxorz$3258     0B1A GR
  2 A$bloxorz$3259     0B1D GR  |   2 A$bloxorz$3260     0B1F GR
  2 A$bloxorz$3261     0B23 GR  |   2 A$bloxorz$3262     0B24 GR
  2 A$bloxorz$3263     0B26 GR  |   2 A$bloxorz$3264     0B27 GR
  2 A$bloxorz$3265     0B28 GR  |   2 A$bloxorz$3266     0B2A GR
  2 A$bloxorz$327      00FF GR  |   2 A$bloxorz$3283     0B40 GR
  2 A$bloxorz$3289     0B43 GR  |   2 A$bloxorz$3295     0B46 GR
  2 A$bloxorz$330      0100 GR  |   2 A$bloxorz$3302     0B49 GR
  2 A$bloxorz$3308     0B4C GR  |   2 A$bloxorz$3314     0B4F GR
  2 A$bloxorz$3321     0B52 GR  |   2 A$bloxorz$3327     0B55 GR
  2 A$bloxorz$333      0101 GR  |   2 A$bloxorz$3333     0B58 GR
  2 A$bloxorz$3340     0B5B GR  |   2 A$bloxorz$3346     0B5E GR
  2 A$bloxorz$3352     0B61 GR  |   2 A$bloxorz$3359     0B64 GR
  2 A$bloxorz$336      0103 GR  |   2 A$bloxorz$3365     0B67 GR
  2 A$bloxorz$3371     0B6A GR  |   2 A$bloxorz$3378     0B6D GR
  2 A$bloxorz$3384     0B70 GR  |   2 A$bloxorz$339      0104 GR
  2 A$bloxorz$3390     0B73 GR  |   2 A$bloxorz$3397     0B76 GR
  2 A$bloxorz$34       0000 GR  |   2 A$bloxorz$3403     0B79 GR
  2 A$bloxorz$3409     0B7C GR  |   2 A$bloxorz$3416     0B7E GR
  2 A$bloxorz$342      0106 GR  |   2 A$bloxorz$3422     0B81 GR
  2 A$bloxorz$3428     0B84 GR  |   2 A$bloxorz$3435     0B86 GR
  2 A$bloxorz$3441     0B89 GR  |   2 A$bloxorz$345      0107 GR
  2 A$bloxorz$3453     0B8C GR  |   2 A$bloxorz$3454     0B8F GR
  2 A$bloxorz$3455     0B91 GR  |   2 A$bloxorz$3461     0B93 GR
  2 A$bloxorz$3467     0B96 GR  |   2 A$bloxorz$3468     0B99 GR
  2 A$bloxorz$3471     0B9B GR  |   2 A$bloxorz$3472     0B9D GR
  2 A$bloxorz$3478     0BA0 GR  |   2 A$bloxorz$348      0109 GR
  2 A$bloxorz$3484     0BA3 GR  |   2 A$bloxorz$3493     0BA6 GR
  2 A$bloxorz$3494     0BA9 GR  |   2 A$bloxorz$35       0002 GR
  2 A$bloxorz$3500     0BAD GR  |   2 A$bloxorz$3501     0BB0 GR
  2 A$bloxorz$3502     0BB3 GR  |   2 A$bloxorz$3508     0BB6 GR
  2 A$bloxorz$3509     0BBA GR  |   2 A$bloxorz$351      010A GR
  2 A$bloxorz$3515     0BBE GR  |   2 A$bloxorz$3516     0BC1 GR
  2 A$bloxorz$3522     0BC4 GR  |   2 A$bloxorz$3523     0BC7 GR
  2 A$bloxorz$3524     0BCA GR  |   2 A$bloxorz$3530     0BCE GR
  2 A$bloxorz$3531     0BD0 GR  |   2 A$bloxorz$3537     0BD3 GR
  2 A$bloxorz$3538     0BD6 GR  |   2 A$bloxorz$354      010C GR
  2 A$bloxorz$357      010E GR  |   2 A$bloxorz$36       0004 GR
  2 A$bloxorz$360      0110 GR  |   2 A$bloxorz$363      0112 GR
  2 A$bloxorz$366      0114 GR  |   2 A$bloxorz$369      0117 GR
  2 A$bloxorz$372      011A GR  |   2 A$bloxorz$375      011C GR
  2 A$bloxorz$378      011E GR  |   2 A$bloxorz$381      011F GR
  2 A$bloxorz$384      0121 GR  |   2 A$bloxorz$387      0123 GR
  2 A$bloxorz$390      0125 GR  |   2 A$bloxorz$393      0127 GR
  2 A$bloxorz$399      0129 GR  |   2 A$bloxorz$402      012B GR
  2 A$bloxorz$405      012D GR  |   2 A$bloxorz$408      0130 GR
  2 A$bloxorz$411      0132 GR  |   2 A$bloxorz$414      0134 GR
  2 A$bloxorz$417      0136 GR  |   2 A$bloxorz$420      0138 GR
  2 A$bloxorz$423      013A GR  |   2 A$bloxorz$426      013C GR
  2 A$bloxorz$429      013E GR  |   2 A$bloxorz$432      0140 GR
  2 A$bloxorz$435      0142 GR  |   2 A$bloxorz$441      0144 GR
  2 A$bloxorz$444      0146 GR  |   2 A$bloxorz$447      0147 GR
  2 A$bloxorz$450      0149 GR  |   2 A$bloxorz$453      014A GR
  2 A$bloxorz$456      014C GR  |   2 A$bloxorz$459      014D GR
  2 A$bloxorz$462      014F GR  |   2 A$bloxorz$468      0151 GR
  2 A$bloxorz$471      0153 GR  |   2 A$bloxorz$474      0156 GR
  2 A$bloxorz$477      0157 GR  |   2 A$bloxorz$48       0006 GR
  2 A$bloxorz$480      0159 GR  |   2 A$bloxorz$483      015B GR
  2 A$bloxorz$486      015D GR  |   2 A$bloxorz$489      015F GR
  2 A$bloxorz$492      0161 GR  |   2 A$bloxorz$495      0163 GR
  2 A$bloxorz$498      0165 GR  |   2 A$bloxorz$501      0166 GR
  2 A$bloxorz$504      0168 GR  |   2 A$bloxorz$507      0169 GR
  2 A$bloxorz$510      016B GR  |   2 A$bloxorz$513      016C GR
  2 A$bloxorz$516      016E GR  |   2 A$bloxorz$519      0170 GR
  2 A$bloxorz$522      0172 GR  |   2 A$bloxorz$525      0174 GR
  2 A$bloxorz$528      0176 GR  |   2 A$bloxorz$531      0179 GR
  2 A$bloxorz$534      017B GR  |   2 A$bloxorz$537      017D GR
  2 A$bloxorz$54       0009 GR  |   2 A$bloxorz$540      017F GR
  2 A$bloxorz$543      0181 GR  |   2 A$bloxorz$546      0183 GR
  2 A$bloxorz$549      0184 GR  |   2 A$bloxorz$55       000B GR
  2 A$bloxorz$552      0186 GR  |   2 A$bloxorz$555      0187 GR
  2 A$bloxorz$558      0189 GR  |   2 A$bloxorz$561      018A GR
  2 A$bloxorz$564      018C GR  |   2 A$bloxorz$567      018E GR
  2 A$bloxorz$570      0190 GR  |   2 A$bloxorz$573      0192 GR
  2 A$bloxorz$576      0194 GR  |   2 A$bloxorz$579      0197 GR
  2 A$bloxorz$58       000D GR  |   2 A$bloxorz$582      019A GR
  2 A$bloxorz$585      019C GR  |   2 A$bloxorz$588      019E GR
  2 A$bloxorz$59       000F GR  |   2 A$bloxorz$591      019F GR
  2 A$bloxorz$594      01A1 GR  |   2 A$bloxorz$597      01A3 GR
  2 A$bloxorz$600      01A5 GR  |   2 A$bloxorz$603      01A9 GR
  2 A$bloxorz$609      01AB GR  |   2 A$bloxorz$612      01AD GR
  2 A$bloxorz$615      01AF GR  |   2 A$bloxorz$618      01B2 GR
  2 A$bloxorz$621      01B4 GR  |   2 A$bloxorz$624      01B6 GR
  2 A$bloxorz$627      01B8 GR  |   2 A$bloxorz$630      01BA GR
  2 A$bloxorz$633      01BC GR  |   2 A$bloxorz$636      01BD GR
  2 A$bloxorz$639      01BF GR  |   2 A$bloxorz$642      01C0 GR
  2 A$bloxorz$645      01C2 GR  |   2 A$bloxorz$648      01C3 GR
  2 A$bloxorz$65       0012 GR  |   2 A$bloxorz$651      01C5 GR
  2 A$bloxorz$654      01C7 GR  |   2 A$bloxorz$657      01C9 GR
  2 A$bloxorz$66       0014 GR  |   2 A$bloxorz$672      01D5 GR
  2 A$bloxorz$673      01D7 GR  |   2 A$bloxorz$679      01D9 GR
  2 A$bloxorz$685      01DC GR  |   2 A$bloxorz$686      01DE GR
  2 A$bloxorz$689      01E0 GR  |   2 A$bloxorz$690      01E2 GR
  2 A$bloxorz$696      01E5 GR  |   2 A$bloxorz$697      01E7 GR
  2 A$bloxorz$703      01EA GR  |   2 A$bloxorz$704      01EC GR
  2 A$bloxorz$705      01EE GR  |   2 A$bloxorz$706      01F0 GR
  2 A$bloxorz$707      01F2 GR  |   2 A$bloxorz$708      01F5 GR
  2 A$bloxorz$711      01F7 GR  |   2 A$bloxorz$712      01F9 GR
  2 A$bloxorz$713      01FB GR  |   2 A$bloxorz$714      01FD GR
  2 A$bloxorz$72       0017 GR  |   2 A$bloxorz$720      0200 GR
  2 A$bloxorz$721      0202 GR  |   2 A$bloxorz$722      0204 GR
  2 A$bloxorz$723      0206 GR  |   2 A$bloxorz$724      0208 GR
  2 A$bloxorz$725      020B GR  |   2 A$bloxorz$728      020D GR
  2 A$bloxorz$729      020F GR  |   2 A$bloxorz$73       0019 GR
  2 A$bloxorz$730      0211 GR  |   2 A$bloxorz$731      0213 GR
  2 A$bloxorz$737      0216 GR  |   2 A$bloxorz$738      0219 GR
  2 A$bloxorz$739      021B GR  |   2 A$bloxorz$74       001B GR
  2 A$bloxorz$745      021D GR  |   2 A$bloxorz$75       001D GR
  2 A$bloxorz$752      0220 GR  |   2 A$bloxorz$753      0223 GR
  2 A$bloxorz$754      0225 GR  |   2 A$bloxorz$76       001F GR
  2 A$bloxorz$760      0227 GR  |   2 A$bloxorz$767      022A GR
  2 A$bloxorz$768      022D GR  |   2 A$bloxorz$769      022F GR
  2 A$bloxorz$775      0231 GR  |   2 A$bloxorz$782      0234 GR
  2 A$bloxorz$783      0237 GR  |   2 A$bloxorz$784      0239 GR
  2 A$bloxorz$79       0022 GR  |   2 A$bloxorz$790      023B GR
  2 A$bloxorz$792      023E GR  |   2 A$bloxorz$793      0240 GR
  2 A$bloxorz$796      0242 GR  |   2 A$bloxorz$797      0244 GR
  2 A$bloxorz$80       0024 GR  |   2 A$bloxorz$803      0246 GR
  2 A$bloxorz$809      0249 GR  |   2 A$bloxorz$81       0026 GR
  2 A$bloxorz$810      024B GR  |   2 A$bloxorz$813      024D GR
  2 A$bloxorz$814      024F GR  |   2 A$bloxorz$82       0028 GR
  2 A$bloxorz$820      0252 GR  |   2 A$bloxorz$826      0255 GR
  2 A$bloxorz$827      0257 GR  |   2 A$bloxorz$828      0259 GR
  2 A$bloxorz$829      025B GR  |   2 A$bloxorz$830      025D GR
  2 A$bloxorz$831      025F GR  |   2 A$bloxorz$834      0261 GR
  2 A$bloxorz$835      0263 GR  |   2 A$bloxorz$836      0265 GR
  2 A$bloxorz$842      0268 GR  |   2 A$bloxorz$843      026A GR
  2 A$bloxorz$844      026C GR  |   2 A$bloxorz$845      0270 GR
  2 A$bloxorz$848      0273 GR  |   2 A$bloxorz$849      0275 GR
  2 A$bloxorz$85       002B GR  |   2 A$bloxorz$855      0278 GR
  2 A$bloxorz$861      027B GR  |   2 A$bloxorz$862      027D GR
  2 A$bloxorz$863      027F GR  |   2 A$bloxorz$864      0281 GR
  2 A$bloxorz$865      0283 GR  |   2 A$bloxorz$866      0285 GR
  2 A$bloxorz$869      0287 GR  |   2 A$bloxorz$870      0289 GR
  2 A$bloxorz$871      028B GR  |   2 A$bloxorz$877      028E GR
  2 A$bloxorz$878      0290 GR  |   2 A$bloxorz$879      0292 GR
  2 A$bloxorz$88       002E GR  |   2 A$bloxorz$882      0295 GR
  2 A$bloxorz$883      0297 GR  |   2 A$bloxorz$889      029A GR
  2 A$bloxorz$89       0030 GR  |   2 A$bloxorz$895      029D GR
  2 A$bloxorz$896      029F GR  |   2 A$bloxorz$897      02A1 GR
  2 A$bloxorz$898      02A3 GR  |   2 A$bloxorz$899      02A5 GR
  2 A$bloxorz$900      02A7 GR  |   2 A$bloxorz$903      02A9 GR
  2 A$bloxorz$904      02AB GR  |   2 A$bloxorz$905      02AD GR
  2 A$bloxorz$911      02B0 GR  |   2 A$bloxorz$912      02B2 GR
  2 A$bloxorz$913      02B4 GR  |   2 A$bloxorz$916      02B7 GR
  2 A$bloxorz$917      02B9 GR  |   2 A$bloxorz$923      02BC GR
  2 A$bloxorz$929      02BF GR  |   2 A$bloxorz$930      02C1 GR
  2 A$bloxorz$931      02C3 GR  |   2 A$bloxorz$932      02C5 GR
  2 A$bloxorz$933      02C7 GR  |   2 A$bloxorz$936      02C9 GR
  2 A$bloxorz$937      02CB GR  |   2 A$bloxorz$938      02CD GR
  2 A$bloxorz$944      02D0 GR  |   2 A$bloxorz$945      02D2 GR
  2 A$bloxorz$946      02D4 GR  |   2 A$bloxorz$949      02D7 GR
  2 A$bloxorz$95       0032 GR  |   2 A$bloxorz$950      02D9 GR
  2 A$bloxorz$956      02DC GR  |   2 A$bloxorz$96       0035 GR
  2 A$bloxorz$962      02DF GR  |   2 A$bloxorz$963      02E1 GR
  2 A$bloxorz$964      02E3 GR  |   2 A$bloxorz$965      02E5 GR
  2 A$bloxorz$966      02E7 GR  |   2 A$bloxorz$967      02E9 GR
  2 A$bloxorz$97       0037 GR  |   2 A$bloxorz$970      02EB GR
  2 A$bloxorz$971      02ED GR  |   2 A$bloxorz$972      02EF GR
  2 A$bloxorz$978      02F2 GR  |   2 A$bloxorz$979      02F4 GR
  2 A$bloxorz$98       003A GR  |   2 A$bloxorz$980      02F6 GR
  2 A$bloxorz$983      02F9 GR  |   2 A$bloxorz$984      02FB GR
  2 A$bloxorz$99       003C GR  |   2 A$bloxorz$990      02FE GR
  2 A$bloxorz$996      0301 GR  |   2 A$bloxorz$997      0303 GR
  2 A$bloxorz$998      0305 GR  |   2 A$bloxorz$999      0307 GR
  2 L103               0952 R   |   2 L104               09D5 R
  2 L105               09D0 R   |   2 L106               09E4 R
  2 L107               09E7 R   |   2 L111               0A1E R
  2 L112               0A55 R   |   2 L113               0A31 R
  2 L114               0A44 R   |   2 L115               0A68 R
  2 L116               0A7A R   |   2 L117               0A9E R
  2 L118               0A9B R   |   2 L119               0AC5 R
  2 L120               0AB5 R   |   2 L121               0AC2 R
  2 L123               0ACF R   |   2 L125               0B01 R
  2 L126               0B8C R   |   2 L127               0B40 R
  2 L128               0B52 R   |   2 L129               0B5B R
  2 L130               0B49 R   |   2 L131               0B64 R
  2 L132               0B6D R   |   2 L133               0B76 R
  2 L134               0B7E R   |   2 L135               0B86 R
  2 L136               0B2E R   |   2 L137               0BA6 R
  2 L140               0B17 R   |   2 L17                0220 R
  2 L18                022A R   |   2 L19                0234 R
  2 L2                 0006 R   |   2 L21                023E R
  2 L28                0366 R   |   2 L33                03BB R
  2 L34                03BE R   |   2 L39                03F3 R
  2 L40                0460 R   |   2 L41                0498 R
  2 L42                0471 R   |   2 L43                0480 R
  2 L45                047B R   |   2 L46                047E R
  2 L47                0488 R   |   2 L48                048B R
  2 L49                0495 R   |   2 L5                 004C R
  2 L50                0498 R   |   2 L51                04C8 R
  2 L52                04D4 R   |   2 L53                04F1 R
  2 L54                0503 R   |   2 L55                0521 R
  2 L57                0511 R   |   2 L58                051E R
  2 L59                0534 R   |   2 L6                 0086 R
  2 L60                0548 R   |   2 L61                055D R
  2 L62                0575 R   |   2 L63                0575 R
  2 L64                048D R   |   2 L65                054A R
  2 L69                05A8 R   |   2 L7                 0088 R
  2 L70                05AA R   |   2 L73                05D8 R
  2 L74                0603 R   |   2 L75                064E R
  2 L78                0716 R   |   2 L79                0725 R
  2 L8                 0071 R   |   2 L80                0734 R
  2 L82                0743 R   |   2 L84                0800 R
  2 L85                081B R   |   2 L87                0827 R
  2 L89                0847 R   |   2 L9                 0055 R
  2 L91                0851 R   |   2 L94                086B R
  2 L96                08FD R   |   2 L97                08E7 R
  2 L99                0907 R   |   2 LC0                01CA R
  2 LC1                0655 R   |   2 LC10               086C R
  2 LC11               087A R   |   2 LC12               0881 R
  2 LC2                0662 R   |   2 LC3                066B R
  2 LC4                0674 R   |   2 LC5                067D R
  2 LC6                0747 R   |   2 LC7                0752 R
  2 LC8                0761 R   |   2 LC9                0770 R
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
  4 _arcadeIndex       001E GR  |   2 _arcadeLevels      0C51 R
  2 _arcadeMenu        0686 GR  |   4 _arcadeMode        001C GR
  4 _arcadeSelecti     001D GR  |     _blockAnimatin     **** GX
  2 _blockFalling      082B GR  |   2 _blockMoving       03D8 GR
  2 _blockMovingAt     090B GR  |   2 _blockMovingTo     034E GR
    _blockOrientat     **** GX  |     _blockStartLev     **** GX
  2 _blockWaiting      0A01 GR  |     _blockX            **** GX
    _blockY            **** GX  |     _blockYOfs         **** GX
  2 _changeMusic       00AD GR  |   2 _clearMenu         0887 GR
  3 _currentMusic      0000 GR  |     _delay10ms         **** GX
    _doBlockAnimat     **** GX  |     _dp_VIA_t1_cnt     **** GX
    _drawBlock         **** GX  |   2 _drawField         00B6 GR
    _endX              **** GX  |     _endY              **** GX
  2 _fallingMusic      0C13 GR  |   4 _frames            0017 GR
  4 _gameState         001F GR  |     _getField          **** GX
  4 _infoText          0001 GR  |     _initLevel         **** GX
    _initSwatches      **** GX  |     _isField           **** GX
  2 _itoa              002E GR  |     _lastBlockDire     **** GX
  2 _led8              0C3B GR  |     _level             **** GX
    _levelCount        **** GX  |   2 _levelEndMusic     0BF9 GR
  4 _levelHighscor     0019 GR  |     _levelNumber       **** GX
    _levelOffset       **** GX  |     _levels            **** GX
    _lineYX_yx_s_d     **** GX  |   2 _main              0AD0 GR
  2 _mainMenu          0783 GR  |   2 _moveBlock         03A6 GR
    _moveBlockImpl     **** GX  |   4 _moveCount         0015 GR
  2 _movingMusic       0C33 GR  |     _musicInit         **** GX
    _musicPlay         **** GX  |     _nextBank          **** GX
  4 _picAvailable      001B GR  |     _picRead           **** GX
    _picWrite          **** GX  |   2 _readEeprom        0598 GR
  2 _runtimeError      0000 GR  |   2 _sendCommand       0578 GR
  2 _setBank           09EB GR  |   2 _showInfo          0324 GR
  2 _showInfo2         0242 GR  |   4 _si                0000 R
    _splitMode         **** GX  |   2 _startBlockFal     03BF GR
  2 _startLevel        05AB GR  |   2 _startMusic        0BD9 GR
    _swapSplit         **** GX  |     _swatchSwitch      **** GX
    _testMerge         **** GX  |   2 _updateInfoTex     0367 GR
  3 _vecx              0002 GR  |   2 _writeEeprom       0854 GR
  2 drawFieldLoop1     00D1 R   |   2 not_full_cont      0144 R
  2 not_full_cont_     0151 R   |   2 scale_negative     01AB R
  2 scale_negative     0129 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  C65   flags  100
   3 .data            size    4   flags  100
   4 .bss             size   20   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

