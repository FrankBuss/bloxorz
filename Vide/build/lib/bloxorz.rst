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
   489F                      33 _runtimeError:
   489F 34 60         [ 7]   34 	pshs	y,u	; 
   48A1 32 7C         [ 5]   35 	leas	-4,s	; ,,
   48A3 31 84         [ 4]   36 	leay	,x	;  msg, msg
                             37 ;----- asm -----
                             38 ;  194 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             39 	; #ENR#[184]	while (1) {
                             40 ;  0 "" 2
                             41 ;--- end asm ---
   48A5                      42 L2:
                             43 ;----- asm -----
                             44 ;  196 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             45 	; #ENR#[185]		frwait();
                             46 ;  0 "" 2
                             47 ;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   48A5 BD F1 92      [ 8]   48 	jsr ___Wait_Recal; BIOS call
                             49 ;  0 "" 2
                             50 ;  198 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             51 	; #ENR#[186]         Intensity_a(0x5f);
                             52 ;  0 "" 2
                             53 ;--- end asm ---
   48A8 C6 5F         [ 2]   54 	ldb	#95	; ,
   48AA E7 63         [ 5]   55 	stb	3,s	; , a
                             56 ;----- asm -----
                             57 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   48AC A6 63         [ 5]   58 	lda 3,s	;  a
   48AE BD F2 AB      [ 8]   59 	jsr ___Intensity_a; BIOS call
                             60 ;  0 "" 2
                             61 ;  200 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             62 	; #ENR#[187]         Vec_Text_Width = 90;
                             63 ;  0 "" 2
                             64 ;--- end asm ---
   48B1 C6 5A         [ 2]   65 	ldb	#90	; ,
   48B3 F7 C8 2B      [ 5]   66 	stb	_Vec_Text_Width	; , Vec_Text_Width
                             67 ;----- asm -----
                             68 ;  202 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             69 	; #ENR#[188]         Print_Str_d(-10, -110, msg);
                             70 ;  0 "" 2
                             71 ;--- end asm ---
   48B6 C6 F6         [ 2]   72 	ldb	#-10	; ,
   48B8 E7 63         [ 5]   73 	stb	3,s	; , a
   48BA C6 92         [ 2]   74 	ldb	#-110	; ,
   48BC E7 62         [ 5]   75 	stb	2,s	; , b
   48BE 10 AF E4      [ 6]   76 	sty	,s	;  msg, u
                             77 ;----- asm -----
                             78 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   48C1 A6 63         [ 5]   79 	lda 3,s	;  a
   48C3 E6 62         [ 5]   80 	ldb 2,s	;  b
   48C5 EE E4         [ 5]   81 	ldu ,s	;  u
   48C7 BD F3 7A      [ 8]   82 	jsr ___Print_Str_d; BIOS call
                             83 ;  0 "" 2
                             84 ;--- end asm ---
   48CA 7E 48 A5      [ 4]   85 	jmp	L2	; 
                             86 	.globl _itoa
   48CD                      87 _itoa:
   48CD 34 60         [ 7]   88 	pshs	y,u	; 
   48CF 32 71         [ 5]   89 	leas	-15,s	; ,,
                             90 ;----- asm -----
                             91 ;  234 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             92 	; #ENR#[213]	uint16_t muls[] = { 100, 10, 1 };
                             93 ;  0 "" 2
                             94 ;--- end asm ---
   48D1 CC 00 64      [ 3]   95 	ldd	#100	; ,
   48D4 ED 69         [ 6]   96 	std	9,s	; , muls
   48D6 CC 00 0A      [ 3]   97 	ldd	#10	; ,
   48D9 ED 6B         [ 6]   98 	std	11,s	; , muls
   48DB CC 00 01      [ 3]   99 	ldd	#1	; ,
   48DE ED 6D         [ 6]  100 	std	13,s	; , muls
                            101 ;----- asm -----
                            102 ;  236 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            103 	; #ENR#[214]	if (number > 999) number = 999;
                            104 ;  0 "" 2
                            105 ;--- end asm ---
   48E0 31 84         [ 4]  106 	leay	,x	;  number.118, number
   48E2 8C 03 E7      [ 4]  107 	cmpx	#999	;cmphi:	;  number.118,
   48E5 23 04         [ 3]  108 	bls	L5	; 
   48E7 10 8E 03 E7   [ 4]  109 	ldy	#999	;  number.118,
   48EB                     110 L5:
                            111 ;----- asm -----
                            112 ;  238 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            113 	; #ENR#[215]	for (uint8_t i = 0; i < 3; i++) {
                            114 ;  0 "" 2
                            115 ;--- end asm ---
   48EB 30 69         [ 5]  116 	leax	9,s	; ,,
   48ED AF 65         [ 6]  117 	stx	5,s	; , ivtmp.114
   48EF EC E8 15      [ 6]  118 	ldd	21,s	; , text
   48F2 ED 67         [ 6]  119 	std	7,s	; , ivtmp.116
   48F4                     120 L9:
                            121 ;----- asm -----
                            122 ;  240 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            123 	; #ENR#[216]		uint8_t d = 0;
                            124 ;  0 "" 2
                            125 ;  242 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            126 	; #ENR#[217]		while (number >= muls[i]) {
                            127 ;  0 "" 2
                            128 ;--- end asm ---
   48F4 AE 65         [ 6]  129 	ldx	5,s	; , ivtmp.114
   48F6 AE 84         [ 5]  130 	ldx	,x	; , muls
   48F8 AF E4         [ 5]  131 	stx	,s	; , D.2288
   48FA 34 20         [ 6]  132 	pshs	y	;cmphi: R:y with R:x	;  number.118,
   48FC AC E1         [ 9]  133 	cmpx	,s++	;cmphi:	; 
   48FE 22 25         [ 3]  134 	bhi	L6	; 
   4900 1F 10         [ 6]  135 	tfr	x,d	; ,
   4902 40            [ 2]  136 	nega
   4903 50            [ 2]  137 	negb
   4904 82 00         [ 2]  138 	sbca	#0
   4906 ED 63         [ 6]  139 	std	3,s	; , ivtmp.104
   4908 1F 20         [ 6]  140 	tfr	y,d	;  number.118,
   490A A3 E4         [ 6]  141 	subd	,s	;subhi: R:d -= ,s	; , D.2288
   490C 1F 02         [ 6]  142 	tfr	d,y	; , number.118
   490E 6F 62         [ 7]  143 	clr	2,s	;  d
   4910                     144 L8:
                            145 ;----- asm -----
                            146 ;  244 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            147 	; #ENR#[218]			d++;
                            148 ;  0 "" 2
                            149 ;--- end asm ---
   4910 6C 62         [ 7]  150 	inc	2,s	;  d
                            151 ;----- asm -----
                            152 ;  246 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            153 	; #ENR#[219]			number -= muls[i];
                            154 ;  0 "" 2
                            155 ;--- end asm ---
   4912 EC 63         [ 6]  156 	ldd	3,s	; , ivtmp.104
   4914 33 AB         [ 8]  157 	leau	d,y	;  number.117,, number.118
   4916 EC E4         [ 5]  158 	ldd	,s	; , D.2288
   4918 30 CB         [ 8]  159 	leax	d,u	;  tmp85,, number.117
   491A 34 10         [ 6]  160 	pshs	x	;cmphi: R:x with R:d	;  tmp85,
   491C 10 A3 E1      [10]  161 	cmpd	,s++	;cmphi:	; 
   491F 22 06         [ 3]  162 	bhi	L7	; 
   4921 31 C4         [ 4]  163 	leay	,u	;  number.118, number.117
   4923 20 EB         [ 3]  164 	bra	L8	; 
   4925                     165 L6:
   4925 6F 62         [ 7]  166 	clr	2,s	;  d
   4927                     167 L7:
                            168 ;----- asm -----
                            169 ;  249 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            170 	; #ENR#[221]		text[i] = d + '0';
                            171 ;  0 "" 2
                            172 ;--- end asm ---
   4927 E6 62         [ 5]  173 	ldb	2,s	; , d
   4929 CB 30         [ 2]  174 	addb	#48	; ,
   492B AE 67         [ 6]  175 	ldx	7,s	; , ivtmp.116
   492D 30 01         [ 5]  176 	leax	1,x	; ,,
   492F AF 67         [ 6]  177 	stx	7,s	; , ivtmp.116
   4931 30 1F         [ 5]  178 	leax	-1,x	; ,,
   4933 E7 80         [ 6]  179 	stb	,x+	; ,
   4935 AE 65         [ 6]  180 	ldx	5,s	; , ivtmp.114
   4937 30 02         [ 5]  181 	leax	2,x	; ,,
   4939 AF 65         [ 6]  182 	stx	5,s	; , ivtmp.114
   493B 1F 40         [ 6]  183 	tfr	s,d	; ,
   493D C3 00 0F      [ 4]  184 	addd	#15	; ,
   4940 34 06         [ 7]  185 	pshs	d	;cmphi: R:d with R:x	; ,
   4942 AC E1         [ 9]  186 	cmpx	,s++	;cmphi:	; 
   4944 10 26 FF AC   [ 6]  187 	lbne	L9	; 
   4948 32 6F         [ 5]  188 	leas	15,s	; ,,
   494A 35 E0         [ 8]  189 	puls	y,u,pc	; 
                            190 	.globl _changeMusic
   494C                     191 _changeMusic:
                            192 ;----- asm -----
                            193 ;  266 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            194 	; #ENR#[234]	tstat = 1;
                            195 ;  0 "" 2
                            196 ;--- end asm ---
   494C C6 01         [ 2]  197 	ldb	#1	; ,
   494E F7 C8 56      [ 5]  198 	stb	-14250	; ,
                            199 ;----- asm -----
                            200 ;  268 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            201 	; #ENR#[235]	currentMusic = music;
                            202 ;  0 "" 2
                            203 ;--- end asm ---
   4951 BF C8 84      [ 6]  204 	stx	_currentMusic	;  music, currentMusic
   4954 39            [ 5]  205 	rts
                            206 	.globl _drawField
   4955                     207 _drawField:
   4955 32 7F         [ 5]  208 	leas	-1,s	; ,,
                            209 ;----- asm -----
                            210 ;  346 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            211 	; #ENR#[285]	intens(0x35);
                            212 ;  0 "" 2
                            213 ;--- end asm ---
   4957 C6 35         [ 2]  214 	ldb	#53	; ,
   4959 E7 E4         [ 4]  215 	stb	,s	; , a
                            216 ;----- asm -----
                            217 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   495B A6 E4         [ 4]  218 	lda ,s	;  a
   495D BD F2 AB      [ 8]  219 	jsr ___Intensity_a; BIOS call
                            220 ;  0 "" 2
                            221 ;  361 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4960 34 5E         [10]  222 		pshs a, b, dp, x, u
                            223 ;  0 "" 2
                            224 ;  362 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4962 86 D0         [ 2]  225 		lda #0xd0
                            226 ;  0 "" 2
                            227 ;  363 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4964 1F 8B         [ 6]  228 		tfr a, dp
                            229 ;  0 "" 2
                            230 ;  364 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4966 8E 00 00      [ 3]  231 		ldx #0
                            232 ;  0 "" 2
                            233 ;  365 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4969 F6 C8 80      [ 5]  234 		ldb _lineCount
                            235 ;  0 "" 2
                            236 ;  366 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   496C                     237 	drawFieldLoop:
                            238 ;  0 "" 2
                            239 ;  367 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   496C 34 04         [ 6]  240 		pshs b
                            241 ;  0 "" 2
                            242 ;  368 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   496E 34 10         [ 6]  243 		pshs x
                            244 ;  0 "" 2
                            245 ;  369 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4970 BD F3 54      [ 8]  246 		jsr 0xf354
                            247 ;  0 "" 2
                            248 ;  370 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4973 35 10         [ 6]  249 		puls x
                            250 ;  0 "" 2
                            251 ;  371 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4975 A6 89 C9 7F   [ 8]  252 		lda _lineY0,x
                            253 ;  0 "" 2
                            254 ;  372 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4979 E6 89 C9 07   [ 8]  255 		ldb _lineX0,x
                            256 ;  0 "" 2
                            257 ;  373 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   497D 34 10         [ 6]  258 		pshs x
                            259 ;  0 "" 2
                            260 ;  374 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   497F BD F2 FC      [ 8]  261 		jsr 0xf2fc
                            262 ;  0 "" 2
                            263 ;  375 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4982 35 10         [ 6]  264 		puls x
                            265 ;  0 "" 2
                            266 ;  376 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4984 A6 89 CA 6F   [ 8]  267 		lda _lineY1,x
                            268 ;  0 "" 2
                            269 ;  377 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4988 E6 89 C9 F7   [ 8]  270 		ldb _lineX1,x
                            271 ;  0 "" 2
                            272 ;  378 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   498C A0 89 C9 7F   [ 8]  273 		suba _lineY0,x
                            274 ;  0 "" 2
                            275 ;  379 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4990 E0 89 C9 07   [ 8]  276 		subb _lineX0,x
                            277 ;  0 "" 2
                            278 ;  380 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4994 34 10         [ 6]  279 		pshs x
                            280 ;  0 "" 2
                            281 ;  381 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4996 BD F3 DF      [ 8]  282 		jsr 0xf3df
                            283 ;  0 "" 2
                            284 ;  382 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4999 35 10         [ 6]  285 		puls x
                            286 ;  0 "" 2
                            287 ;  383 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   499B A6 80         [ 6]  288 		lda ,x+
                            289 ;  0 "" 2
                            290 ;  384 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   499D 35 04         [ 6]  291 		puls b
                            292 ;  0 "" 2
                            293 ;  385 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   499F 5A            [ 2]  294 		decb
                            295 ;  0 "" 2
                            296 ;  386 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49A0 26 CA         [ 3]  297 		bne drawFieldLoop
                            298 ;  0 "" 2
                            299 ;  387 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   49A2 35 5E         [10]  300 		puls a, b, dp, x, u
                            301 ;  0 "" 2
                            302 ;--- end asm ---
   49A4 32 61         [ 5]  303 	leas	1,s	; ,,
   49A6 39            [ 5]  304 	rts
   49A7                     305 LC0:
   49A7 47                  306 	.byte	0x47
   49A8 41                  307 	.byte	0x41
   49A9 4D                  308 	.byte	0x4D
   49AA 45                  309 	.byte	0x45
   49AB 20                  310 	.byte	0x20
   49AC 4F                  311 	.byte	0x4F
   49AD 56                  312 	.byte	0x56
   49AE 45                  313 	.byte	0x45
   49AF 52                  314 	.byte	0x52
   49B0 80                  315 	.byte	0x80
   49B1 00                  316 	.byte	0x00
                            317 	.globl _arcadeEnd
   49B2                     318 _arcadeEnd:
   49B2 34 40         [ 6]  319 	pshs	u	; 
   49B4 32 7C         [ 5]  320 	leas	-4,s	; ,,
                            321 ;----- asm -----
                            322 ;  778 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            323 	; #ENR#[564]	Read_Btns();
                            324 ;  0 "" 2
                            325 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49B6 BD F1 BA      [ 8]  326 	jsr ___Read_Btns; BIOS call
                            327 ;  0 "" 2
                            328 ;  780 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            329 	; #ENR#[565]    Intensity_a(0x5f);
                            330 ;  0 "" 2
                            331 ;--- end asm ---
   49B9 C6 5F         [ 2]  332 	ldb	#95	; ,
   49BB E7 62         [ 5]  333 	stb	2,s	; , a
                            334 ;----- asm -----
                            335 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49BD A6 62         [ 5]  336 	lda 2,s	;  a
   49BF BD F2 AB      [ 8]  337 	jsr ___Intensity_a; BIOS call
                            338 ;  0 "" 2
                            339 ;  782 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            340 	; #ENR#[566]    Vec_Text_Width = 90;
                            341 ;  0 "" 2
                            342 ;--- end asm ---
   49C2 C6 5A         [ 2]  343 	ldb	#90	; ,
   49C4 F7 C8 2B      [ 5]  344 	stb	_Vec_Text_Width	; , Vec_Text_Width
                            345 ;----- asm -----
                            346 ;  784 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            347 	; #ENR#[567]    Print_Str_d(100, -70, "GAME OVER�");
                            348 ;  0 "" 2
                            349 ;--- end asm ---
   49C7 CB 0A         [ 2]  350 	addb	#10	; ,
   49C9 E7 62         [ 5]  351 	stb	2,s	; , a
   49CB C6 BA         [ 2]  352 	ldb	#-70	; ,
   49CD E7 63         [ 5]  353 	stb	3,s	; , b
   49CF 8E 49 A7      [ 3]  354 	ldx	#LC0	; ,
   49D2 AF E4         [ 5]  355 	stx	,s	; , u
                            356 ;----- asm -----
                            357 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49D4 A6 62         [ 5]  358 	lda 2,s	;  a
   49D6 E6 63         [ 5]  359 	ldb 3,s	;  b
   49D8 EE E4         [ 5]  360 	ldu ,s	;  u
   49DA BD F3 7A      [ 8]  361 	jsr ___Print_Str_d; BIOS call
                            362 ;  0 "" 2
                            363 ;  786 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            364 	; #ENR#[568]    Print_Str_d(50, -110, infoText);
                            365 ;  0 "" 2
                            366 ;--- end asm ---
   49DD C6 32         [ 2]  367 	ldb	#50	; ,
   49DF E7 63         [ 5]  368 	stb	3,s	; , a
   49E1 C6 92         [ 2]  369 	ldb	#-110	; ,
   49E3 E7 62         [ 5]  370 	stb	2,s	; , b
   49E5 8E CA E7      [ 3]  371 	ldx	#_infoText	; ,
   49E8 AF E4         [ 5]  372 	stx	,s	; , u
                            373 ;----- asm -----
                            374 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49EA A6 63         [ 5]  375 	lda 3,s	;  a
   49EC E6 62         [ 5]  376 	ldb 2,s	;  b
   49EE EE E4         [ 5]  377 	ldu ,s	;  u
   49F0 BD F3 7A      [ 8]  378 	jsr ___Print_Str_d; BIOS call
                            379 ;  0 "" 2
                            380 ;  788 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            381 	; #ENR#[569]	if (Vec_Buttons & 1) {
                            382 ;  0 "" 2
                            383 ;--- end asm ---
   49F3 F6 C8 11      [ 5]  384 	ldb	_Vec_Buttons	; , Vec_Buttons
   49F6 C5 01         [ 2]  385 	bitb	#1	; ,
   49F8 27 03         [ 3]  386 	beq	L17	; 
                            387 ;----- asm -----
                            388 ;  790 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            389 	; #ENR#[570]		gameState = MainMenu;
                            390 ;  0 "" 2
                            391 ;--- end asm ---
   49FA 7F CB 05      [ 7]  392 	clr	_gameState	;  gameState
   49FD                     393 L17:
                            394 ;----- asm -----
                            395 ;  793 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            396 	; #ENR#[572]	if (Vec_Buttons & 2) {
                            397 ;  0 "" 2
                            398 ;--- end asm ---
   49FD F6 C8 11      [ 5]  399 	ldb	_Vec_Buttons	; , Vec_Buttons
   4A00 C5 02         [ 2]  400 	bitb	#2	; ,
   4A02 27 03         [ 3]  401 	beq	L18	; 
                            402 ;----- asm -----
                            403 ;  795 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            404 	; #ENR#[573]		gameState = MainMenu;
                            405 ;  0 "" 2
                            406 ;--- end asm ---
   4A04 7F CB 05      [ 7]  407 	clr	_gameState	;  gameState
   4A07                     408 L18:
                            409 ;----- asm -----
                            410 ;  798 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            411 	; #ENR#[575]	if (Vec_Buttons & 4) {
                            412 ;  0 "" 2
                            413 ;--- end asm ---
   4A07 F6 C8 11      [ 5]  414 	ldb	_Vec_Buttons	; , Vec_Buttons
   4A0A C5 04         [ 2]  415 	bitb	#4	; ,
   4A0C 27 03         [ 3]  416 	beq	L19	; 
                            417 ;----- asm -----
                            418 ;  800 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            419 	; #ENR#[576]		gameState = MainMenu;
                            420 ;  0 "" 2
                            421 ;--- end asm ---
   4A0E 7F CB 05      [ 7]  422 	clr	_gameState	;  gameState
   4A11                     423 L19:
                            424 ;----- asm -----
                            425 ;  803 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            426 	; #ENR#[578]	if (Vec_Buttons & 8) {
                            427 ;  0 "" 2
                            428 ;--- end asm ---
   4A11 F6 C8 11      [ 5]  429 	ldb	_Vec_Buttons	; , Vec_Buttons
   4A14 C5 08         [ 2]  430 	bitb	#8	; ,
   4A16 27 03         [ 3]  431 	beq	L21	; 
                            432 ;----- asm -----
                            433 ;  805 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            434 	; #ENR#[579]		gameState = MainMenu;
                            435 ;  0 "" 2
                            436 ;--- end asm ---
   4A18 7F CB 05      [ 7]  437 	clr	_gameState	;  gameState
   4A1B                     438 L21:
   4A1B 32 64         [ 5]  439 	leas	4,s	; ,,
   4A1D 35 C0         [ 7]  440 	puls	u,pc	; 
                            441 	.globl _showInfo2
   4A1F                     442 _showInfo2:
   4A1F 34 20         [ 6]  443 	pshs	y	; 
   4A21 32 7D         [ 5]  444 	leas	-3,s	; ,,
                            445 ;----- asm -----
                            446 ;  854 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            447 	; #ENR#[615]	zergnd();
                            448 ;  0 "" 2
                            449 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A23 BD F3 54      [ 8]  450 	jsr ___Reset0Ref; BIOS call
                            451 ;  0 "" 2
                            452 ;  856 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            453 	; #ENR#[616]	intens(0x50);
                            454 ;  0 "" 2
                            455 ;--- end asm ---
   4A26 C6 50         [ 2]  456 	ldb	#80	; ,
   4A28 E7 E4         [ 4]  457 	stb	,s	; , a
                            458 ;----- asm -----
                            459 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A2A A6 E4         [ 4]  460 	lda ,s	;  a
   4A2C BD F2 AB      [ 8]  461 	jsr ___Intensity_a; BIOS call
                            462 ;  0 "" 2
                            463 ;  859 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            464 	; #ENR#[618]	zergnd();
                            465 ;  0 "" 2
                            466 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A2F BD F3 54      [ 8]  467 	jsr ___Reset0Ref; BIOS call
                            468 ;  0 "" 2
                            469 ;  861 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            470 	; #ENR#[619]	positd(-50, 100);
                            471 ;  0 "" 2
                            472 ;--- end asm ---
   4A32 C6 80         [ 2]  473 	ldb	#-128	; ,
   4A34 D7 04         [ 4]  474 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4A36 C6 64         [ 2]  475 	ldb	#100	; ,
   4A38 E7 62         [ 5]  476 	stb	2,s	; , a
   4A3A C6 CE         [ 2]  477 	ldb	#-50	; ,
   4A3C E7 E4         [ 4]  478 	stb	,s	; , b
                            479 ;----- asm -----
                            480 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A3E A6 62         [ 5]  481 	lda 2,s	;  a
   4A40 E6 E4         [ 4]  482 	ldb ,s	;  b
   4A42 BD F3 12      [ 8]  483 	jsr ___Moveto_d; BIOS call
                            484 ;  0 "" 2
                            485 ;  863 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            486 	; #ENR#[620]	pack1x((void*)led8);
                            487 ;  0 "" 2
                            488 ;--- end asm ---
   4A45 C6 80         [ 2]  489 	ldb	#-128	; ,
   4A47 D7 04         [ 4]  490 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4A49 10 8E 53 E7   [ 4]  491 	ldy	#_led8	;  tmp27,
   4A4D 10 AF E4      [ 6]  492 	sty	,s	;  tmp27, x
                            493 ;----- asm -----
                            494 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A50 AE E4         [ 5]  495 	ldx ,s	;  x
   4A52 BD F4 10      [ 8]  496 	jsr ___Draw_VLp; BIOS call
                            497 ;  0 "" 2
                            498 ;  866 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            499 	; #ENR#[622]	zergnd();
                            500 ;  0 "" 2
                            501 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A55 BD F3 54      [ 8]  502 	jsr ___Reset0Ref; BIOS call
                            503 ;  0 "" 2
                            504 ;  868 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            505 	; #ENR#[623]	positd(-40, 110);
                            506 ;  0 "" 2
                            507 ;--- end asm ---
   4A58 C6 80         [ 2]  508 	ldb	#-128	; ,
   4A5A D7 04         [ 4]  509 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4A5C C6 6E         [ 2]  510 	ldb	#110	; ,
   4A5E E7 E4         [ 4]  511 	stb	,s	; , a
   4A60 C6 D8         [ 2]  512 	ldb	#-40	; ,
   4A62 E7 62         [ 5]  513 	stb	2,s	; , b
                            514 ;----- asm -----
                            515 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A64 A6 E4         [ 4]  516 	lda ,s	;  a
   4A66 E6 62         [ 5]  517 	ldb 2,s	;  b
   4A68 BD F3 12      [ 8]  518 	jsr ___Moveto_d; BIOS call
                            519 ;  0 "" 2
                            520 ;  870 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            521 	; #ENR#[624]	pack1x((void*)led8);
                            522 ;  0 "" 2
                            523 ;--- end asm ---
   4A6B C6 80         [ 2]  524 	ldb	#-128	; ,
   4A6D D7 04         [ 4]  525 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4A6F 10 AF E4      [ 6]  526 	sty	,s	;  tmp27, x
                            527 ;----- asm -----
                            528 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A72 AE E4         [ 5]  529 	ldx ,s	;  x
   4A74 BD F4 10      [ 8]  530 	jsr ___Draw_VLp; BIOS call
                            531 ;  0 "" 2
                            532 ;  873 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            533 	; #ENR#[626]	zergnd();
                            534 ;  0 "" 2
                            535 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A77 BD F3 54      [ 8]  536 	jsr ___Reset0Ref; BIOS call
                            537 ;  0 "" 2
                            538 ;  875 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            539 	; #ENR#[627]	positd(-30, 120);
                            540 ;  0 "" 2
                            541 ;--- end asm ---
   4A7A C6 80         [ 2]  542 	ldb	#-128	; ,
   4A7C D7 04         [ 4]  543 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4A7E C6 78         [ 2]  544 	ldb	#120	; ,
   4A80 E7 62         [ 5]  545 	stb	2,s	; , a
   4A82 C6 E2         [ 2]  546 	ldb	#-30	; ,
   4A84 E7 E4         [ 4]  547 	stb	,s	; , b
                            548 ;----- asm -----
                            549 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A86 A6 62         [ 5]  550 	lda 2,s	;  a
   4A88 E6 E4         [ 4]  551 	ldb ,s	;  b
   4A8A BD F3 12      [ 8]  552 	jsr ___Moveto_d; BIOS call
                            553 ;  0 "" 2
                            554 ;  877 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            555 	; #ENR#[628]	pack1x((void*)led8);
                            556 ;  0 "" 2
                            557 ;--- end asm ---
   4A8D C6 80         [ 2]  558 	ldb	#-128	; ,
   4A8F D7 04         [ 4]  559 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4A91 10 AF E4      [ 6]  560 	sty	,s	;  tmp27, x
                            561 ;----- asm -----
                            562 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A94 AE E4         [ 5]  563 	ldx ,s	;  x
   4A96 BD F4 10      [ 8]  564 	jsr ___Draw_VLp; BIOS call
                            565 ;  0 "" 2
                            566 ;  880 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            567 	; #ENR#[630]	zergnd();
                            568 ;  0 "" 2
                            569 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A99 BD F3 54      [ 8]  570 	jsr ___Reset0Ref; BIOS call
                            571 ;  0 "" 2
                            572 ;  882 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            573 	; #ENR#[631]	positd(0, 120);
                            574 ;  0 "" 2
                            575 ;--- end asm ---
   4A9C C6 80         [ 2]  576 	ldb	#-128	; ,
   4A9E D7 04         [ 4]  577 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4AA0 C6 78         [ 2]  578 	ldb	#120	; ,
   4AA2 E7 E4         [ 4]  579 	stb	,s	; , a
   4AA4 6F 62         [ 7]  580 	clr	2,s	;  b
                            581 ;----- asm -----
                            582 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4AA6 A6 E4         [ 4]  583 	lda ,s	;  a
   4AA8 E6 62         [ 5]  584 	ldb 2,s	;  b
   4AAA BD F3 12      [ 8]  585 	jsr ___Moveto_d; BIOS call
                            586 ;  0 "" 2
                            587 ;  884 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            588 	; #ENR#[632]	pack1x((void*)led8);
                            589 ;  0 "" 2
                            590 ;--- end asm ---
   4AAD C6 80         [ 2]  591 	ldb	#-128	; ,
   4AAF D7 04         [ 4]  592 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4AB1 10 AF E4      [ 6]  593 	sty	,s	;  tmp27, x
                            594 ;----- asm -----
                            595 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4AB4 AE E4         [ 5]  596 	ldx ,s	;  x
   4AB6 BD F4 10      [ 8]  597 	jsr ___Draw_VLp; BIOS call
                            598 ;  0 "" 2
                            599 ;  887 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            600 	; #ENR#[634]	zergnd();
                            601 ;  0 "" 2
                            602 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4AB9 BD F3 54      [ 8]  603 	jsr ___Reset0Ref; BIOS call
                            604 ;  0 "" 2
                            605 ;  889 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            606 	; #ENR#[635]	positd(10, 120);
                            607 ;  0 "" 2
                            608 ;--- end asm ---
   4ABC C6 80         [ 2]  609 	ldb	#-128	; ,
   4ABE D7 04         [ 4]  610 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4AC0 C6 78         [ 2]  611 	ldb	#120	; ,
   4AC2 E7 62         [ 5]  612 	stb	2,s	; , a
   4AC4 C6 0A         [ 2]  613 	ldb	#10	; ,
   4AC6 E7 E4         [ 4]  614 	stb	,s	; , b
                            615 ;----- asm -----
                            616 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4AC8 A6 62         [ 5]  617 	lda 2,s	;  a
   4ACA E6 E4         [ 4]  618 	ldb ,s	;  b
   4ACC BD F3 12      [ 8]  619 	jsr ___Moveto_d; BIOS call
                            620 ;  0 "" 2
                            621 ;  891 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            622 	; #ENR#[636]	pack1x((void*)led8);
                            623 ;  0 "" 2
                            624 ;--- end asm ---
   4ACF C6 80         [ 2]  625 	ldb	#-128	; ,
   4AD1 D7 04         [ 4]  626 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4AD3 10 AF E4      [ 6]  627 	sty	,s	;  tmp27, x
                            628 ;----- asm -----
                            629 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4AD6 AE E4         [ 5]  630 	ldx ,s	;  x
   4AD8 BD F4 10      [ 8]  631 	jsr ___Draw_VLp; BIOS call
                            632 ;  0 "" 2
                            633 ;  894 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            634 	; #ENR#[638]	zergnd();
                            635 ;  0 "" 2
                            636 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4ADB BD F3 54      [ 8]  637 	jsr ___Reset0Ref; BIOS call
                            638 ;  0 "" 2
                            639 ;  896 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            640 	; #ENR#[639]	positd(20, 120);
                            641 ;  0 "" 2
                            642 ;--- end asm ---
   4ADE C6 80         [ 2]  643 	ldb	#-128	; ,
   4AE0 D7 04         [ 4]  644 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4AE2 C6 78         [ 2]  645 	ldb	#120	; ,
   4AE4 E7 E4         [ 4]  646 	stb	,s	; , a
   4AE6 C6 14         [ 2]  647 	ldb	#20	; ,
   4AE8 E7 62         [ 5]  648 	stb	2,s	; , b
                            649 ;----- asm -----
                            650 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4AEA A6 E4         [ 4]  651 	lda ,s	;  a
   4AEC E6 62         [ 5]  652 	ldb 2,s	;  b
   4AEE BD F3 12      [ 8]  653 	jsr ___Moveto_d; BIOS call
                            654 ;  0 "" 2
                            655 ;  898 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            656 	; #ENR#[640]	pack1x((void*)led8);
                            657 ;  0 "" 2
                            658 ;--- end asm ---
   4AF1 C6 80         [ 2]  659 	ldb	#-128	; ,
   4AF3 D7 04         [ 4]  660 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4AF5 10 AF E4      [ 6]  661 	sty	,s	;  tmp27, x
                            662 ;----- asm -----
                            663 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4AF8 AE E4         [ 5]  664 	ldx ,s	;  x
   4AFA BD F4 10      [ 8]  665 	jsr ___Draw_VLp; BIOS call
                            666 ;  0 "" 2
                            667 ;--- end asm ---
   4AFD 32 63         [ 5]  668 	leas	3,s	; ,,
   4AFF 35 A0         [ 7]  669 	puls	y,pc	; 
                            670 	.globl _showInfo
   4B01                     671 _showInfo:
   4B01 34 40         [ 6]  672 	pshs	u	; 
   4B03 32 7C         [ 5]  673 	leas	-4,s	; ,,
                            674 ;----- asm -----
                            675 ;  904 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            676 	; #ENR#[645]    Intensity_a(0x5f);
                            677 ;  0 "" 2
                            678 ;--- end asm ---
   4B05 C6 5F         [ 2]  679 	ldb	#95	; ,
   4B07 E7 63         [ 5]  680 	stb	3,s	; , a
                            681 ;----- asm -----
                            682 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4B09 A6 63         [ 5]  683 	lda 3,s	;  a
   4B0B BD F2 AB      [ 8]  684 	jsr ___Intensity_a; BIOS call
                            685 ;  0 "" 2
                            686 ;  906 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            687 	; #ENR#[646]    Vec_Text_Width = 100;
                            688 ;  0 "" 2
                            689 ;--- end asm ---
   4B0E C6 64         [ 2]  690 	ldb	#100	; ,
   4B10 F7 C8 2B      [ 5]  691 	stb	_Vec_Text_Width	; , Vec_Text_Width
                            692 ;----- asm -----
                            693 ;  908 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            694 	; #ENR#[647]    Print_Str_d(100, -70, infoText);
                            695 ;  0 "" 2
                            696 ;--- end asm ---
   4B13 E7 63         [ 5]  697 	stb	3,s	; , a
   4B15 C6 BA         [ 2]  698 	ldb	#-70	; ,
   4B17 E7 62         [ 5]  699 	stb	2,s	; , b
   4B19 8E CA E7      [ 3]  700 	ldx	#_infoText	; ,
   4B1C AF E4         [ 5]  701 	stx	,s	; , u
                            702 ;----- asm -----
                            703 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4B1E A6 63         [ 5]  704 	lda 3,s	;  a
   4B20 E6 62         [ 5]  705 	ldb 2,s	;  b
   4B22 EE E4         [ 5]  706 	ldu ,s	;  u
   4B24 BD F3 7A      [ 8]  707 	jsr ___Print_Str_d; BIOS call
                            708 ;  0 "" 2
                            709 ;--- end asm ---
   4B27 32 64         [ 5]  710 	leas	4,s	; ,,
   4B29 35 C0         [ 7]  711 	puls	u,pc	; 
                            712 	.globl _blockMovingToStart
   4B2B                     713 _blockMovingToStart:
                            714 ;----- asm -----
                            715 ;  393 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            716 	; #ENR#[331]	drawField();
                            717 ;  0 "" 2
                            718 ;--- end asm ---
   4B2B BD 49 55      [ 8]  719 	jsr	_drawField	; 
                            720 ;----- asm -----
                            721 ;  395 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            722 	; #ENR#[332]	drawBlock(blockYOfs);
                            723 ;  0 "" 2
                            724 ;--- end asm ---
   4B2E F6 C8 89      [ 5]  725 	ldb	_blockYOfs	; , blockYOfs
   4B31 BD 04 B4      [ 8]  726 	jsr	_drawBlock	; 
                            727 ;----- asm -----
                            728 ;  397 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            729 	; #ENR#[333]	blockYOfs++;
                            730 ;  0 "" 2
                            731 ;--- end asm ---
   4B34 F6 C8 89      [ 5]  732 	ldb	_blockYOfs	;  blockYOfs.29, blockYOfs
   4B37 5C            [ 2]  733 	incb	;  blockYOfs.29
   4B38 F7 C8 89      [ 5]  734 	stb	_blockYOfs	;  blockYOfs.29, blockYOfs
                            735 ;----- asm -----
                            736 ;  399 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            737 	; #ENR#[334]	if (blockYOfs == 0) {
                            738 ;  0 "" 2
                            739 ;--- end asm ---
   4B3B 5D            [ 2]  740 	tstb	;  blockYOfs.29
   4B3C 26 05         [ 3]  741 	bne	L28	; 
                            742 ;----- asm -----
                            743 ;  401 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            744 	; #ENR#[335]		gameState = BlockWaiting;
                            745 ;  0 "" 2
                            746 ;--- end asm ---
   4B3E C6 05         [ 2]  747 	ldb	#5	; ,
   4B40 F7 CB 05      [ 5]  748 	stb	_gameState	; , gameState
   4B43                     749 L28:
   4B43 39            [ 5]  750 	rts
                            751 	.globl _updateInfoText
   4B44                     752 _updateInfoText:
   4B44 34 40         [ 6]  753 	pshs	u	; 
                            754 ;----- asm -----
                            755 ;  256 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            756 	; #ENR#[227]	memcpy(infoText, "001 - 999�", 10);
                            757 ;  0 "" 2
                            758 ;--- end asm ---
   4B46 8E CA E7      [ 3]  759 	ldx	#_infoText	;  tmp27,
   4B49 CE 30 30      [ 3]  760 	ldu	#12336	; ,
   4B4C EF 84         [ 5]  761 	stu	,x	; , infoText
   4B4E CE 31 20      [ 3]  762 	ldu	#12576	; ,
   4B51 FF CA E9      [ 6]  763 	stu	_infoText+2	; , infoText
   4B54 CE 2D 20      [ 3]  764 	ldu	#11552	; ,
   4B57 FF CA EB      [ 6]  765 	stu	_infoText+4	; , infoText
   4B5A CE 39 39      [ 3]  766 	ldu	#14649	; ,
   4B5D FF CA ED      [ 6]  767 	stu	_infoText+6	; , infoText
   4B60 CE 39 80      [ 3]  768 	ldu	#14720	; ,
   4B63 FF CA EF      [ 6]  769 	stu	_infoText+8	; , infoText
                            770 ;----- asm -----
                            771 ;  258 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            772 	; #ENR#[228]    	itoa(moveCount, &infoText[0]);
                            773 ;  0 "" 2
                            774 ;--- end asm ---
   4B66 34 10         [ 6]  775 	pshs	x	;  tmp27
   4B68 BE CA FB      [ 6]  776 	ldx	_moveCount	; , moveCount
   4B6B BD 48 CD      [ 8]  777 	jsr	_itoa	; 
                            778 ;----- asm -----
                            779 ;  260 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            780 	; #ENR#[229]    	itoa(levelNumber + levelOffset, &infoText[6]);
                            781 ;  0 "" 2
                            782 ;--- end asm ---
   4B6E F6 54 80      [ 5]  783 	ldb	_levelOffset	;  tmp35, levelOffset
   4B71 FB C8 83      [ 5]  784 	addb	_levelNumber	;  tmp35, levelNumber
   4B74 8E CA ED      [ 3]  785 	ldx	#_infoText+6	; ,
   4B77 AF E3         [ 8]  786 	stx	,--s	; ,
   4B79 4F            [ 2]  787 	clra		;zero_extendqihi: R:b -> R:d	;  tmp35,
   4B7A 1F 01         [ 6]  788 	tfr	d,x	; ,
   4B7C BD 48 CD      [ 8]  789 	jsr	_itoa	; 
   4B7F 32 64         [ 5]  790 	leas	4,s	; ,,
   4B81 35 C0         [ 7]  791 	puls	u,pc	; 
                            792 	.globl _moveBlock
   4B83                     793 _moveBlock:
                            794 ;----- asm -----
                            795 ;  274 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            796 	; #ENR#[240]	moveBlockImpl(move);
                            797 ;  0 "" 2
                            798 ;--- end asm ---
   4B83 BD 01 55      [ 8]  799 	jsr	_moveBlockImpl	; 
                            800 ;----- asm -----
                            801 ;  276 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            802 	; #ENR#[241]	if (!arcadeMode) {
                            803 ;  0 "" 2
                            804 ;--- end asm ---
   4B86 7D CB 02      [ 7]  805 	tst	_arcadeMode	;  arcadeMode
   4B89 26 10         [ 3]  806 	bne	L34	; 
                            807 ;----- asm -----
                            808 ;  278 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            809 	; #ENR#[242]		if (moveCount < 999) moveCount++;
                            810 ;  0 "" 2
                            811 ;--- end asm ---
   4B8B BE CA FB      [ 6]  812 	ldx	_moveCount	;  moveCount.10, moveCount
   4B8E 8C 03 E6      [ 4]  813 	cmpx	#998	;cmphi:	;  moveCount.10,
   4B91 22 05         [ 3]  814 	bhi	L33	; 
   4B93 30 01         [ 5]  815 	leax	1,x	; ,, moveCount.10
   4B95 BF CA FB      [ 6]  816 	stx	_moveCount	; , moveCount
   4B98                     817 L33:
                            818 ;----- asm -----
                            819 ;  280 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            820 	; #ENR#[243]		updateInfoText();
                            821 ;  0 "" 2
                            822 ;--- end asm ---
   4B98 BD 4B 44      [ 8]  823 	jsr	_updateInfoText	; 
   4B9B                     824 L34:
   4B9B 39            [ 5]  825 	rts
                            826 	.globl _startBlockFalling
   4B9C                     827 _startBlockFalling:
                            828 ;----- asm -----
                            829 ;  287 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            830 	; #ENR#[249]	gameState = BlockFalling;
                            831 ;  0 "" 2
                            832 ;--- end asm ---
   4B9C C6 07         [ 2]  833 	ldb	#7	; ,
   4B9E F7 CB 05      [ 5]  834 	stb	_gameState	; , gameState
                            835 ;----- asm -----
                            836 ;  289 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            837 	; #ENR#[250]	blockYOfs = 0;
                            838 ;  0 "" 2
                            839 ;--- end asm ---
   4BA1 7F C8 89      [ 7]  840 	clr	_blockYOfs	;  blockYOfs
                            841 ;----- asm -----
                            842 ;  291 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            843 	; #ENR#[251]	moveBlock(lastBlockDirection);
                            844 ;  0 "" 2
                            845 ;--- end asm ---
   4BA4 F6 C8 8A      [ 5]  846 	ldb	_lastBlockDirection	; , lastBlockDirection
   4BA7 BD 4B 83      [ 8]  847 	jsr	_moveBlock	; 
                            848 ;----- asm -----
                            849 ;  293 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            850 	; #ENR#[252]	changeMusic(fallingMusic);
                            851 ;  0 "" 2
                            852 ;--- end asm ---
   4BAA 8E 53 BF      [ 3]  853 	ldx	#_fallingMusic	; ,
   4BAD BD 49 4C      [ 8]  854 	jsr	_changeMusic	; 
                            855 ;----- asm -----
                            856 ;  295 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            857 	; #ENR#[253]	*vecx = 0;
                            858 ;  0 "" 2
                            859 ;--- end asm ---
   4BB0 6F 9F C8 86   [11]  860 	clr	[_vecx]	; * vecx
   4BB4 39            [ 5]  861 	rts
                            862 	.globl _blockMoving
   4BB5                     863 _blockMoving:
   4BB5 32 79         [ 5]  864 	leas	-7,s	; ,,
                            865 ;----- asm -----
                            866 ;  492 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            867 	; #ENR#[392]	drawField();
                            868 ;  0 "" 2
                            869 ;--- end asm ---
   4BB7 BD 49 55      [ 8]  870 	jsr	_drawField	; 
                            871 ;----- asm -----
                            872 ;  494 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            873 	; #ENR#[393]	drawBlock(0);
                            874 ;  0 "" 2
                            875 ;--- end asm ---
   4BBA 5F            [ 2]  876 	clrb	; 
   4BBB BD 04 B4      [ 8]  877 	jsr	_drawBlock	; 
                            878 ;----- asm -----
                            879 ;  496 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            880 	; #ENR#[394]	doBlockAnimation();
                            881 ;  0 "" 2
                            882 ;--- end asm ---
   4BBE BD 03 B2      [ 8]  883 	jsr	_doBlockAnimation	; 
                            884 ;----- asm -----
                            885 ;  498 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            886 	; #ENR#[395]	if (!blockAnimating) {
                            887 ;  0 "" 2
                            888 ;--- end asm ---
   4BC1 7D C8 8B      [ 7]  889 	tst	_blockAnimating	;  blockAnimating
   4BC4 10 26 01 5C   [ 6]  890 	lbne	L61	; 
                            891 ;----- asm -----
                            892 ;  501 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            893 	; #ENR#[397]		uint8_t c0 = isField(blockX, blockY);
                            894 ;  0 "" 2
                            895 ;--- end asm ---
   4BC8 F6 C8 8E      [ 5]  896 	ldb	_blockY	; , blockY
   4BCB E7 E2         [ 6]  897 	stb	,-s	; ,
   4BCD F6 C8 8D      [ 5]  898 	ldb	_blockX	; , blockX
   4BD0 BD 36 A8      [ 8]  899 	jsr	_isField	; 
   4BD3 E7 62         [ 5]  900 	stb	2,s	; , c0
                            901 ;----- asm -----
                            902 ;  503 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            903 	; #ENR#[398]		uint8_t c1 = isField(blockX + 1, blockY);
                            904 ;  0 "" 2
                            905 ;--- end asm ---
   4BD5 F6 C8 8D      [ 5]  906 	ldb	_blockX	; , blockX
   4BD8 5C            [ 2]  907 	incb	; 
   4BD9 E7 61         [ 5]  908 	stb	1,s	; ,
   4BDB F6 C8 8E      [ 5]  909 	ldb	_blockY	; , blockY
   4BDE E7 E2         [ 6]  910 	stb	,-s	; ,
   4BE0 E6 62         [ 5]  911 	ldb	2,s	; ,
   4BE2 BD 36 A8      [ 8]  912 	jsr	_isField	; 
   4BE5 E7 64         [ 5]  913 	stb	4,s	; , c1
                            914 ;----- asm -----
                            915 ;  505 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            916 	; #ENR#[399]		uint8_t c2 = isField(blockX, blockY + 1);
                            917 ;  0 "" 2
                            918 ;--- end asm ---
   4BE7 F6 C8 8E      [ 5]  919 	ldb	_blockY	; , blockY
   4BEA 5C            [ 2]  920 	incb	; 
   4BEB 34 04         [ 6]  921 	pshs	b	; 
   4BED F6 C8 8D      [ 5]  922 	ldb	_blockX	; , blockX
   4BF0 BD 36 A8      [ 8]  923 	jsr	_isField	; 
   4BF3 E7 66         [ 5]  924 	stb	6,s	; , c2
                            925 ;----- asm -----
                            926 ;  507 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            927 	; #ENR#[400]		char f0 = getField(blockX, blockY);
                            928 ;  0 "" 2
                            929 ;--- end asm ---
   4BF5 F6 C8 8E      [ 5]  930 	ldb	_blockY	; , blockY
   4BF8 E7 E2         [ 6]  931 	stb	,-s	; ,
   4BFA F6 C8 8D      [ 5]  932 	ldb	_blockX	; , blockX
   4BFD BD 35 D6      [ 8]  933 	jsr	_getField	; 
   4C00 E7 68         [ 5]  934 	stb	8,s	; , f0
                            935 ;----- asm -----
                            936 ;  509 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            937 	; #ENR#[401]		char f1 = getField(blockX + 1, blockY);
                            938 ;  0 "" 2
                            939 ;--- end asm ---
   4C02 F6 C8 8D      [ 5]  940 	ldb	_blockX	; , blockX
   4C05 5C            [ 2]  941 	incb	; 
   4C06 E7 64         [ 5]  942 	stb	4,s	; ,
   4C08 F6 C8 8E      [ 5]  943 	ldb	_blockY	; , blockY
   4C0B E7 E2         [ 6]  944 	stb	,-s	; ,
   4C0D E6 65         [ 5]  945 	ldb	5,s	; ,
   4C0F BD 35 D6      [ 8]  946 	jsr	_getField	; 
   4C12 E7 6A         [ 5]  947 	stb	10,s	; , f1
                            948 ;----- asm -----
                            949 ;  511 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            950 	; #ENR#[402]		char f2 = getField(blockX, blockY + 1);
                            951 ;  0 "" 2
                            952 ;--- end asm ---
   4C14 F6 C8 8E      [ 5]  953 	ldb	_blockY	; , blockY
   4C17 5C            [ 2]  954 	incb	; 
   4C18 34 04         [ 6]  955 	pshs	b	; 
   4C1A F6 C8 8D      [ 5]  956 	ldb	_blockX	; , blockX
   4C1D BD 35 D6      [ 8]  957 	jsr	_getField	; 
   4C20 E7 6C         [ 5]  958 	stb	12,s	; , f2
                            959 ;----- asm -----
                            960 ;  513 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            961 	; #ENR#[403]		switch (blockOrientation) {
                            962 ;  0 "" 2
                            963 ;--- end asm ---
   4C22 32 66         [ 5]  964 	leas	6,s	; ,,
   4C24 F6 C8 88      [ 5]  965 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   4C27 C1 01         [ 2]  966 	cmpb	#1	;cmpqi:	;  blockOrientation,
   4C29 27 19         [ 3]  967 	beq	L41	; 
   4C2B 25 08         [ 3]  968 	blo	L40	; 
   4C2D C1 02         [ 2]  969 	cmpb	#2	;cmpqi:	;  blockOrientation,
   4C2F 10 26 00 29   [ 6]  970 	lbne	L39	; 
   4C33 20 1C         [ 3]  971 	bra	L62	; 
   4C35                     972 L40:
                            973 ;----- asm -----
                            974 ;  517 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            975 	; #ENR#[405]			if (!c0 || f0 == 'f') {
                            976 ;  0 "" 2
                            977 ;--- end asm ---
   4C35 6D 61         [ 7]  978 	tst	1,s	;  c0
   4C37 27 06         [ 3]  979 	beq	L43	; 
   4C39 E6 64         [ 5]  980 	ldb	4,s	; , f0
   4C3B C1 66         [ 2]  981 	cmpb	#102	;cmpqi:	; ,
   4C3D 26 03         [ 3]  982 	bne	L44	; 
   4C3F                     983 L43:
                            984 ;----- asm -----
                            985 ;  519 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            986 	; #ENR#[406]				startBlockFalling();
                            987 ;  0 "" 2
                            988 ;--- end asm ---
   4C3F BD 4B 9C      [ 8]  989 	jsr	_startBlockFalling	; 
   4C42                     990 L44:
                            991 ;----- asm -----
                            992 ;  522 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            993 	; #ENR#[408]			break;
                            994 ;  0 "" 2
                            995 ;--- end asm ---
   4C42 20 18         [ 3]  996 	bra	L39	; 
   4C44                     997 L41:
                            998 ;----- asm -----
                            999 ;  526 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1000 	; #ENR#[410]			if (!c0 || !c2) {
                           1001 ;  0 "" 2
                           1002 ;--- end asm ---
   4C44 6D 61         [ 7] 1003 	tst	1,s	;  c0
   4C46 27 04         [ 3] 1004 	beq	L45	; 
   4C48 6D 63         [ 7] 1005 	tst	3,s	;  c2
   4C4A 26 03         [ 3] 1006 	bne	L46	; 
   4C4C                    1007 L45:
                           1008 ;----- asm -----
                           1009 ;  528 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1010 	; #ENR#[411]				startBlockFalling();
                           1011 ;  0 "" 2
                           1012 ;--- end asm ---
   4C4C BD 4B 9C      [ 8] 1013 	jsr	_startBlockFalling	; 
   4C4F                    1014 L46:
                           1015 ;----- asm -----
                           1016 ;  531 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1017 	; #ENR#[413]			break;
                           1018 ;  0 "" 2
                           1019 ;--- end asm ---
   4C4F 20 0B         [ 3] 1020 	bra	L39	; 
   4C51                    1021 L62:
                           1022 ;----- asm -----
                           1023 ;  535 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1024 	; #ENR#[415]			if (!c0 || ! c1) {
                           1025 ;  0 "" 2
                           1026 ;--- end asm ---
   4C51 6D 61         [ 7] 1027 	tst	1,s	;  c0
   4C53 27 04         [ 3] 1028 	beq	L47	; 
   4C55 6D 62         [ 7] 1029 	tst	2,s	;  c1
   4C57 26 03         [ 3] 1030 	bne	L48	; 
   4C59                    1031 L47:
                           1032 ;----- asm -----
                           1033 ;  537 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1034 	; #ENR#[416]				startBlockFalling();
                           1035 ;  0 "" 2
                           1036 ;--- end asm ---
   4C59 BD 4B 9C      [ 8] 1037 	jsr	_startBlockFalling	; 
   4C5C                    1038 L48:
                           1039 ;----- asm -----
                           1040 ;  540 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1041 	; #ENR#[418]			break;
                           1042 ;  0 "" 2
                           1043 ;--- end asm ---
   4C5C                    1044 L39:
                           1045 ;----- asm -----
                           1046 ;  545 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1047 	; #ENR#[422]		if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
                           1048 ;  0 "" 2
                           1049 ;--- end asm ---
   4C5C 7D C8 88      [ 7] 1050 	tst	_blockOrientation	;  blockOrientation
   4C5F 26 2B         [ 3] 1051 	bne	L49	; 
   4C61 F6 C8 8D      [ 5] 1052 	ldb	_blockX	; , blockX
   4C64 F1 C8 81      [ 5] 1053 	cmpb	_endX	;cmpqi:	; , endX
   4C67 26 23         [ 3] 1054 	bne	L49	; 
   4C69 F6 C8 8E      [ 5] 1055 	ldb	_blockY	; , blockY
   4C6C F1 C8 82      [ 5] 1056 	cmpb	_endY	;cmpqi:	; , endY
   4C6F 26 1B         [ 3] 1057 	bne	L49	; 
   4C71 7D C8 8C      [ 7] 1058 	tst	_splitMode	;  splitMode
   4C74 26 16         [ 3] 1059 	bne	L49	; 
                           1060 ;----- asm -----
                           1061 ;  547 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1062 	; #ENR#[423]			blockYOfs = 0;
                           1063 ;  0 "" 2
                           1064 ;--- end asm ---
   4C76 7F C8 89      [ 7] 1065 	clr	_blockYOfs	;  blockYOfs
                           1066 ;----- asm -----
                           1067 ;  549 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1068 	; #ENR#[424]			gameState = BlockMovingAtEnd;
                           1069 ;  0 "" 2
                           1070 ;--- end asm ---
   4C79 C6 08         [ 2] 1071 	ldb	#8	; ,
   4C7B F7 CB 05      [ 5] 1072 	stb	_gameState	; , gameState
                           1073 ;----- asm -----
                           1074 ;  551 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1075 	; #ENR#[425]			changeMusic(levelEndMusic);
                           1076 ;  0 "" 2
                           1077 ;--- end asm ---
   4C7E 8E 53 A5      [ 3] 1078 	ldx	#_levelEndMusic	; ,
   4C81 BD 49 4C      [ 8] 1079 	jsr	_changeMusic	; 
                           1080 ;----- asm -----
                           1081 ;  553 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1082 	; #ENR#[426]			*vecx = 1;
                           1083 ;  0 "" 2
                           1084 ;--- end asm ---
   4C84 C6 01         [ 2] 1085 	ldb	#1	; ,
   4C86 E7 9F C8 86   [ 9] 1086 	stb	[_vecx]	; ,* vecx
   4C8A 20 0C         [ 3] 1087 	bra	L50	; 
   4C8C                    1088 L49:
                           1089 ;----- asm -----
                           1090 ;  557 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1091 	; #ENR#[429]			if (gameState != BlockFalling) {
                           1092 ;  0 "" 2
                           1093 ;--- end asm ---
   4C8C F6 CB 05      [ 5] 1094 	ldb	_gameState	; , gameState
   4C8F C1 07         [ 2] 1095 	cmpb	#7	;cmpqi:	; ,
   4C91 27 05         [ 3] 1096 	beq	L50	; 
                           1097 ;----- asm -----
                           1098 ;  559 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1099 	; #ENR#[430]				gameState = BlockWaiting;
                           1100 ;  0 "" 2
                           1101 ;--- end asm ---
   4C93 C6 05         [ 2] 1102 	ldb	#5	; ,
   4C95 F7 CB 05      [ 5] 1103 	stb	_gameState	; , gameState
   4C98                    1104 L50:
                           1105 ;----- asm -----
                           1106 ;  565 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1107 	; #ENR#[435]		switch (blockOrientation) {
                           1108 ;  0 "" 2
                           1109 ;--- end asm ---
   4C98 F6 C8 88      [ 5] 1110 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   4C9B C1 01         [ 2] 1111 	cmpb	#1	;cmpqi:	;  blockOrientation,
   4C9D 27 29         [ 3] 1112 	beq	L53	; 
   4C9F 25 09         [ 3] 1113 	blo	L52	; 
   4CA1 C1 02         [ 2] 1114 	cmpb	#2	;cmpqi:	;  blockOrientation,
   4CA3 10 26 00 75   [ 6] 1115 	lbne	L51	; 
   4CA7 7E 4C F1      [ 4] 1116 	jmp	L63	; 
   4CAA                    1117 L52:
                           1118 ;----- asm -----
                           1119 ;  569 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1120 	; #ENR#[437]			if (f0 == 's' || f0 == 'h' || f0 == 'v') {
                           1121 ;  0 "" 2
                           1122 ;--- end asm ---
   4CAA E6 64         [ 5] 1123 	ldb	4,s	; , f0
   4CAC C1 73         [ 2] 1124 	cmpb	#115	;cmpqi:	; ,
   4CAE 27 08         [ 3] 1125 	beq	L55	; 
   4CB0 C1 68         [ 2] 1126 	cmpb	#104	;cmpqi:	; ,
   4CB2 27 04         [ 3] 1127 	beq	L55	; 
   4CB4 C1 76         [ 2] 1128 	cmpb	#118	;cmpqi:	; ,
   4CB6 26 0D         [ 3] 1129 	bne	L56	; 
   4CB8                    1130 L55:
                           1131 ;----- asm -----
                           1132 ;  571 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1133 	; #ENR#[438]				swatchSwitch(blockX, blockY);
                           1134 ;  0 "" 2
                           1135 ;--- end asm ---
   4CB8 F6 C8 8E      [ 5] 1136 	ldb	_blockY	; , blockY
   4CBB E7 E2         [ 6] 1137 	stb	,-s	; ,
   4CBD F6 C8 8D      [ 5] 1138 	ldb	_blockX	; , blockX
   4CC0 BD 3C 27      [ 8] 1139 	jsr	_swatchSwitch	; 
   4CC3 32 61         [ 5] 1140 	leas	1,s	; ,,
   4CC5                    1141 L56:
                           1142 ;----- asm -----
                           1143 ;  574 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1144 	; #ENR#[440]			break;
                           1145 ;  0 "" 2
                           1146 ;--- end asm ---
   4CC5 7E 4D 1C      [ 4] 1147 	jmp	L51	; 
   4CC8                    1148 L53:
                           1149 ;----- asm -----
                           1150 ;  578 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1151 	; #ENR#[442]			if (f0 == 's') {
                           1152 ;  0 "" 2
                           1153 ;--- end asm ---
   4CC8 E6 64         [ 5] 1154 	ldb	4,s	; , f0
   4CCA C1 73         [ 2] 1155 	cmpb	#115	;cmpqi:	; ,
   4CCC 26 0D         [ 3] 1156 	bne	L57	; 
                           1157 ;----- asm -----
                           1158 ;  580 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1159 	; #ENR#[443]				swatchSwitch(blockX, blockY);
                           1160 ;  0 "" 2
                           1161 ;--- end asm ---
   4CCE F6 C8 8E      [ 5] 1162 	ldb	_blockY	; , blockY
   4CD1 E7 E2         [ 6] 1163 	stb	,-s	; ,
   4CD3 F6 C8 8D      [ 5] 1164 	ldb	_blockX	; , blockX
   4CD6 BD 3C 27      [ 8] 1165 	jsr	_swatchSwitch	; 
   4CD9 32 61         [ 5] 1166 	leas	1,s	; ,,
   4CDB                    1167 L57:
                           1168 ;----- asm -----
                           1169 ;  583 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1170 	; #ENR#[445]			if (f2 == 's') {
                           1171 ;  0 "" 2
                           1172 ;--- end asm ---
   4CDB E6 66         [ 5] 1173 	ldb	6,s	; , f2
   4CDD C1 73         [ 2] 1174 	cmpb	#115	;cmpqi:	; ,
   4CDF 26 0E         [ 3] 1175 	bne	L58	; 
                           1176 ;----- asm -----
                           1177 ;  585 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1178 	; #ENR#[446]				swatchSwitch(blockX, blockY + 1);
                           1179 ;  0 "" 2
                           1180 ;--- end asm ---
   4CE1 F6 C8 8E      [ 5] 1181 	ldb	_blockY	; , blockY
   4CE4 5C            [ 2] 1182 	incb	; 
   4CE5 34 04         [ 6] 1183 	pshs	b	; 
   4CE7 F6 C8 8D      [ 5] 1184 	ldb	_blockX	; , blockX
   4CEA BD 3C 27      [ 8] 1185 	jsr	_swatchSwitch	; 
   4CED 32 61         [ 5] 1186 	leas	1,s	; ,,
   4CEF                    1187 L58:
                           1188 ;----- asm -----
                           1189 ;  588 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1190 	; #ENR#[448]			break;
                           1191 ;  0 "" 2
                           1192 ;--- end asm ---
   4CEF 20 2B         [ 3] 1193 	bra	L51	; 
   4CF1                    1194 L63:
                           1195 ;----- asm -----
                           1196 ;  592 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1197 	; #ENR#[450]			if (f0 == 's') {
                           1198 ;  0 "" 2
                           1199 ;--- end asm ---
   4CF1 E6 64         [ 5] 1200 	ldb	4,s	; , f0
   4CF3 C1 73         [ 2] 1201 	cmpb	#115	;cmpqi:	; ,
   4CF5 26 0D         [ 3] 1202 	bne	L59	; 
                           1203 ;----- asm -----
                           1204 ;  594 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1205 	; #ENR#[451]				swatchSwitch(blockX, blockY);
                           1206 ;  0 "" 2
                           1207 ;--- end asm ---
   4CF7 F6 C8 8E      [ 5] 1208 	ldb	_blockY	; , blockY
   4CFA E7 E2         [ 6] 1209 	stb	,-s	; ,
   4CFC F6 C8 8D      [ 5] 1210 	ldb	_blockX	; , blockX
   4CFF BD 3C 27      [ 8] 1211 	jsr	_swatchSwitch	; 
   4D02 32 61         [ 5] 1212 	leas	1,s	; ,,
   4D04                    1213 L59:
                           1214 ;----- asm -----
                           1215 ;  597 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1216 	; #ENR#[453]			if (f1 == 's') {
                           1217 ;  0 "" 2
                           1218 ;--- end asm ---
   4D04 E6 65         [ 5] 1219 	ldb	5,s	; , f1
   4D06 C1 73         [ 2] 1220 	cmpb	#115	;cmpqi:	; ,
   4D08 26 12         [ 3] 1221 	bne	L60	; 
                           1222 ;----- asm -----
                           1223 ;  599 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1224 	; #ENR#[454]				swatchSwitch(blockX + 1, blockY);
                           1225 ;  0 "" 2
                           1226 ;--- end asm ---
   4D0A F6 C8 8D      [ 5] 1227 	ldb	_blockX	; , blockX
   4D0D 5C            [ 2] 1228 	incb	; 
   4D0E E7 E4         [ 4] 1229 	stb	,s	; ,
   4D10 F6 C8 8E      [ 5] 1230 	ldb	_blockY	; , blockY
   4D13 E7 E2         [ 6] 1231 	stb	,-s	; ,
   4D15 E6 61         [ 5] 1232 	ldb	1,s	; ,
   4D17 BD 3C 27      [ 8] 1233 	jsr	_swatchSwitch	; 
   4D1A 32 61         [ 5] 1234 	leas	1,s	; ,,
   4D1C                    1235 L60:
                           1236 ;----- asm -----
                           1237 ;  602 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1238 	; #ENR#[456]			break;
                           1239 ;  0 "" 2
                           1240 ;--- end asm ---
   4D1C                    1241 L51:
                           1242 ;----- asm -----
                           1243 ;  607 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1244 	; #ENR#[460]		if (splitMode) {
                           1245 ;  0 "" 2
                           1246 ;--- end asm ---
   4D1C 7D C8 8C      [ 7] 1247 	tst	_splitMode	;  splitMode
   4D1F 27 03         [ 3] 1248 	beq	L61	; 
                           1249 ;----- asm -----
                           1250 ;  609 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1251 	; #ENR#[461]			testMerge();
                           1252 ;  0 "" 2
                           1253 ;--- end asm ---
   4D21 BD 03 FD      [ 8] 1254 	jsr	_testMerge	; 
   4D24                    1255 L61:
   4D24 32 67         [ 5] 1256 	leas	7,s	; ,,
   4D26 39            [ 5] 1257 	rts
                           1258 	.globl _sendCommand
   4D27                    1259 _sendCommand:
   4D27 32 7E         [ 5] 1260 	leas	-2,s	; ,,
   4D29 E7 E4         [ 4] 1261 	stb	,s	;  cmd, cmd
                           1262 ;----- asm -----
                           1263 ;  168 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1264 	; #ENR#[167]	uint8_t result;
                           1265 ;  0 "" 2
                           1266 ;  170 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1267 	; #ENR#[168]	picWrite('V');
                           1268 ;  0 "" 2
                           1269 ;--- end asm ---
   4D2B C6 56         [ 2] 1270 	ldb	#86	; ,
   4D2D BD 30 41      [ 8] 1271 	jsr	_picWrite	; 
                           1272 ;----- asm -----
                           1273 ;  172 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1274 	; #ENR#[169]	picWrite(cmd);
                           1275 ;  0 "" 2
                           1276 ;--- end asm ---
   4D30 E6 E4         [ 4] 1277 	ldb	,s	; , cmd
   4D32 BD 30 41      [ 8] 1278 	jsr	_picWrite	; 
                           1279 ;----- asm -----
                           1280 ;  174 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1281 	; #ENR#[170]	picWrite(arg);
                           1282 ;  0 "" 2
                           1283 ;--- end asm ---
   4D35 E6 64         [ 5] 1284 	ldb	4,s	; , arg
   4D37 BD 30 41      [ 8] 1285 	jsr	_picWrite	; 
                           1286 ;----- asm -----
                           1287 ;  176 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1288 	; #ENR#[171]	result = picRead();
                           1289 ;  0 "" 2
                           1290 ;--- end asm ---
   4D3A BD 30 8D      [ 8] 1291 	jsr	_picRead	; 
   4D3D E7 61         [ 5] 1292 	stb	1,s	; , result
                           1293 ;----- asm -----
                           1294 ;  178 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1295 	; #ENR#[172]	delay10ms();
                           1296 ;  0 "" 2
                           1297 ;--- end asm ---
   4D3F BD 30 EA      [ 8] 1298 	jsr	_delay10ms	; 
                           1299 ;----- asm -----
                           1300 ;  180 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1301 	; #ENR#[173]	return result;
                           1302 ;  0 "" 2
                           1303 ;--- end asm ---
   4D42 E6 61         [ 5] 1304 	ldb	1,s	; , result
   4D44 32 62         [ 5] 1305 	leas	2,s	; ,,
   4D46 39            [ 5] 1306 	rts
                           1307 	.globl _readEeprom
   4D47                    1308 _readEeprom:
                           1309 ;----- asm -----
                           1310 ;  220 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1311 	; #ENR#[202]	if (picAvailable) {
                           1312 ;  0 "" 2
                           1313 ;--- end asm ---
   4D47 7D CB 01      [ 7] 1314 	tst	_picAvailable	;  picAvailable
   4D4A 27 0B         [ 3] 1315 	beq	L67	; 
                           1316 ;----- asm -----
                           1317 ;  222 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1318 	; #ENR#[203]		return sendCommand(CMD_EEPROM_READ, address);
                           1319 ;  0 "" 2
                           1320 ;--- end asm ---
   4D4C 34 04         [ 6] 1321 	pshs	b	;  address
   4D4E C6 04         [ 2] 1322 	ldb	#4	; ,
   4D50 BD 4D 27      [ 8] 1323 	jsr	_sendCommand	; 
   4D53 32 61         [ 5] 1324 	leas	1,s	; ,,
   4D55 20 02         [ 3] 1325 	bra	L68	; 
   4D57                    1326 L67:
                           1327 ;----- asm -----
                           1328 ;  225 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1329 	; #ENR#[205]		return 0xff;
                           1330 ;  0 "" 2
                           1331 ;--- end asm ---
   4D57 C6 FF         [ 2] 1332 	ldb	#-1	;  D.2272,
   4D59                    1333 L68:
   4D59 39            [ 5] 1334 	rts
                           1335 	.globl _startLevel
   4D5A                    1336 _startLevel:
   4D5A 34 60         [ 7] 1337 	pshs	y,u	; 
   4D5C 32 7C         [ 5] 1338 	leas	-4,s	; ,,
                           1339 ;----- asm -----
                           1340 ;  301 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1341 	; #ENR#[258]	if (arcadeMode) {
                           1342 ;  0 "" 2
                           1343 ;--- end asm ---
   4D5E 7D CB 02      [ 7] 1344 	tst	_arcadeMode	;  arcadeMode
   4D61 27 24         [ 3] 1345 	beq	L71	; 
                           1346 ;----- asm -----
                           1347 ;  303 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1348 	; #ENR#[259]		levelNumber = arcadeLevels[arcadeSelection][arcadeIndex] - 1;
                           1349 ;  0 "" 2
                           1350 ;--- end asm ---
   4D63 F6 CB 04      [ 5] 1351 	ldb	_arcadeIndex	; , arcadeIndex
   4D66 4F            [ 2] 1352 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4D67 1F 02         [ 6] 1353 	tfr	d,y	; , arcadeIndex
   4D69 F6 CB 03      [ 5] 1354 	ldb	_arcadeSelection	; , arcadeSelection
   4D6C 4F            [ 2] 1355 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4D6D ED 62         [ 6] 1356 	std	2,s	; ,
   4D6F 58            [ 2] 1357 	aslb	; 
   4D70 49            [ 2] 1358 	rola	; 
   4D71 58            [ 2] 1359 	aslb	; 
   4D72 49            [ 2] 1360 	rola	; 
   4D73 EE 62         [ 6] 1361 	ldu	2,s	; ,
   4D75 30 CB         [ 8] 1362 	leax	d,u	;  tmp35, tmp34,
   4D77 1E 02         [ 8] 1363 	exg	d,y	; , arcadeIndex
   4D79 30 8B         [ 8] 1364 	leax	d,x	;  tmp36,, tmp36
   4D7B 1E 02         [ 8] 1365 	exg	d,y	; , arcadeIndex
   4D7D E6 89 53 FD   [ 8] 1366 	ldb	_arcadeLevels,x	; , arcadeLevels
   4D81 5A            [ 2] 1367 	decb	; 
   4D82 F7 C8 83      [ 5] 1368 	stb	_levelNumber	; , levelNumber
   4D85 20 2B         [ 3] 1369 	bra	L72	; 
   4D87                    1370 L71:
                           1371 ;----- asm -----
                           1372 ;  306 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1373 	; #ENR#[261]	    	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
                           1374 ;  0 "" 2
                           1375 ;--- end asm ---
   4D87 F6 C8 83      [ 5] 1376 	ldb	_levelNumber	;  tmp38, levelNumber
   4D8A 58            [ 2] 1377 	aslb	;  tmp38
   4D8B BD 4D 47      [ 8] 1378 	jsr	_readEeprom	; 
   4D8E 4F            [ 2] 1379 	clra		;zero_extendqihi: R:b -> R:d	;  D.2323, D.2323
   4D8F FD CA FF      [ 6] 1380 	std	_levelHighscore	;  D.2323, levelHighscore
                           1381 ;----- asm -----
                           1382 ;  308 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1383 	; #ENR#[262]	    	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
                           1384 ;  0 "" 2
                           1385 ;--- end asm ---
   4D92 F6 C8 83      [ 5] 1386 	ldb	_levelNumber	;  tmp40, levelNumber
   4D95 58            [ 2] 1387 	aslb	;  tmp40
   4D96 5C            [ 2] 1388 	incb	;  tmp41
   4D97 BD 4D 47      [ 8] 1389 	jsr	_readEeprom	; 
   4D9A 1F 98         [ 6] 1390 	tfr	b,a	; ,
   4D9C 5F            [ 2] 1391 	clrb	; 
   4D9D BA CA FF      [ 5] 1392 	ora	_levelHighscore	; , levelHighscore
   4DA0 FA CB 00      [ 5] 1393 	orb	_levelHighscore+1	; , levelHighscore
   4DA3 FD CA FF      [ 6] 1394 	std	_levelHighscore	;  levelHighscore.22, levelHighscore
                           1395 ;----- asm -----
                           1396 ;  310 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1397 	; #ENR#[263]	    	if (levelHighscore == 0) levelHighscore = 999;
                           1398 ;  0 "" 2
                           1399 ;--- end asm ---
   4DA6 10 83 00 00   [ 5] 1400 	cmpd	#0	;  levelHighscore.22
   4DAA 26 06         [ 3] 1401 	bne	L72	; 
   4DAC 8E 03 E7      [ 3] 1402 	ldx	#999	; ,
   4DAF BF CA FF      [ 6] 1403 	stx	_levelHighscore	; , levelHighscore
   4DB2                    1404 L72:
                           1405 ;----- asm -----
                           1406 ;  313 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1407 	; #ENR#[265]    level = levels[levelNumber];
                           1408 ;  0 "" 2
                           1409 ;--- end asm ---
   4DB2 F6 C8 83      [ 5] 1410 	ldb	_levelNumber	; , levelNumber
   4DB5 4F            [ 2] 1411 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4DB6 ED E4         [ 5] 1412 	std	,s	; ,
   4DB8 58            [ 2] 1413 	aslb	; 
   4DB9 49            [ 2] 1414 	rola	; 
   4DBA 1F 01         [ 6] 1415 	tfr	d,x	; , tmp47
   4DBC AE 89 5E 88   [ 9] 1416 	ldx	_levels,x	; , levels
   4DC0 BF C8 F2      [ 6] 1417 	stx	_level	; , level
                           1418 ;----- asm -----
                           1419 ;  315 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1420 	; #ENR#[266]	initSwatches();
                           1421 ;  0 "" 2
                           1422 ;--- end asm ---
   4DC3 BD 38 60      [ 8] 1423 	jsr	_initSwatches	; 
                           1424 ;----- asm -----
                           1425 ;  317 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1426 	; #ENR#[267]	initLevel();
                           1427 ;  0 "" 2
                           1428 ;--- end asm ---
   4DC6 BD 3C 1D      [ 8] 1429 	jsr	_initLevel	; 
                           1430 ;----- asm -----
                           1431 ;  319 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1432 	; #ENR#[268]	blockX = level->start.x;
                           1433 ;  0 "" 2
                           1434 ;--- end asm ---
   4DC9 BE C8 F2      [ 6] 1435 	ldx	_level	;  level, level
   4DCC E6 02         [ 5] 1436 	ldb	2,x	; , <variable>.start.x
   4DCE F7 C8 8D      [ 5] 1437 	stb	_blockX	; , blockX
                           1438 ;----- asm -----
                           1439 ;  321 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1440 	; #ENR#[269]	blockY = level->start.y;
                           1441 ;  0 "" 2
                           1442 ;--- end asm ---
   4DD1 E6 03         [ 5] 1443 	ldb	3,x	; , <variable>.start.y
   4DD3 F7 C8 8E      [ 5] 1444 	stb	_blockY	; , blockY
                           1445 ;----- asm -----
                           1446 ;  323 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1447 	; #ENR#[270]	blockStartLevel();
                           1448 ;  0 "" 2
                           1449 ;--- end asm ---
   4DD6 BD 03 DB      [ 8] 1450 	jsr	_blockStartLevel	; 
                           1451 ;----- asm -----
                           1452 ;  325 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1453 	; #ENR#[271]	blockYOfs = -30;
                           1454 ;  0 "" 2
                           1455 ;--- end asm ---
   4DD9 C6 E2         [ 2] 1456 	ldb	#-30	; ,
   4DDB F7 C8 89      [ 5] 1457 	stb	_blockYOfs	; , blockYOfs
                           1458 ;----- asm -----
                           1459 ;  327 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1460 	; #ENR#[272]	gameState = BlockMovingToStart;
                           1461 ;  0 "" 2
                           1462 ;--- end asm ---
   4DDE C6 04         [ 2] 1463 	ldb	#4	; ,
   4DE0 F7 CB 05      [ 5] 1464 	stb	_gameState	; , gameState
                           1465 ;----- asm -----
                           1466 ;  329 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1467 	; #ENR#[273]	changeMusic(startMusic);
                           1468 ;  0 "" 2
                           1469 ;--- end asm ---
   4DE3 8E 53 85      [ 3] 1470 	ldx	#_startMusic	; ,
   4DE6 BD 49 4C      [ 8] 1471 	jsr	_changeMusic	; 
                           1472 ;----- asm -----
                           1473 ;  331 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1474 	; #ENR#[274]	*vecx = 2;
                           1475 ;  0 "" 2
                           1476 ;--- end asm ---
   4DE9 C6 02         [ 2] 1477 	ldb	#2	; ,
   4DEB E7 9F C8 86   [ 9] 1478 	stb	[_vecx]	; ,* vecx
                           1479 ;----- asm -----
                           1480 ;  333 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1481 	; #ENR#[275]	if (!arcadeMode) {
                           1482 ;  0 "" 2
                           1483 ;--- end asm ---
   4DEF 7D CB 02      [ 7] 1484 	tst	_arcadeMode	;  arcadeMode
   4DF2 26 09         [ 3] 1485 	bne	L74	; 
                           1486 ;----- asm -----
                           1487 ;  335 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1488 	; #ENR#[276]		moveCount = 0;
                           1489 ;  0 "" 2
                           1490 ;--- end asm ---
   4DF4 CC 00 00      [ 3] 1491 	ldd	#0	; ,
   4DF7 FD CA FB      [ 6] 1492 	std	_moveCount	; , moveCount
                           1493 ;----- asm -----
                           1494 ;  337 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1495 	; #ENR#[277]		updateInfoText();
                           1496 ;  0 "" 2
                           1497 ;--- end asm ---
   4DFA BD 4B 44      [ 8] 1498 	jsr	_updateInfoText	; 
   4DFD                    1499 L74:
   4DFD 32 64         [ 5] 1500 	leas	4,s	; ,,
   4DFF 35 E0         [ 8] 1501 	puls	y,u,pc	; 
   4E01                    1502 LC1:
   4E01 41                 1503 	.byte	0x41
   4E02 52                 1504 	.byte	0x52
   4E03 43                 1505 	.byte	0x43
   4E04 41                 1506 	.byte	0x41
   4E05 44                 1507 	.byte	0x44
   4E06 45                 1508 	.byte	0x45
   4E07 20                 1509 	.byte	0x20
   4E08 4D                 1510 	.byte	0x4D
   4E09 4F                 1511 	.byte	0x4F
   4E0A 44                 1512 	.byte	0x44
   4E0B 45                 1513 	.byte	0x45
   4E0C 80                 1514 	.byte	0x80
   4E0D 00                 1515 	.byte	0x00
   4E0E                    1516 LC2:
   4E0E 31                 1517 	.byte	0x31
   4E0F 20                 1518 	.byte	0x20
   4E10 53                 1519 	.byte	0x53
   4E11 45                 1520 	.byte	0x45
   4E12 54                 1521 	.byte	0x54
   4E13 20                 1522 	.byte	0x20
   4E14 31                 1523 	.byte	0x31
   4E15 80                 1524 	.byte	0x80
   4E16 00                 1525 	.byte	0x00
   4E17                    1526 LC3:
   4E17 32                 1527 	.byte	0x32
   4E18 20                 1528 	.byte	0x20
   4E19 53                 1529 	.byte	0x53
   4E1A 45                 1530 	.byte	0x45
   4E1B 54                 1531 	.byte	0x54
   4E1C 20                 1532 	.byte	0x20
   4E1D 32                 1533 	.byte	0x32
   4E1E 80                 1534 	.byte	0x80
   4E1F 00                 1535 	.byte	0x00
   4E20                    1536 LC4:
   4E20 33                 1537 	.byte	0x33
   4E21 20                 1538 	.byte	0x20
   4E22 53                 1539 	.byte	0x53
   4E23 45                 1540 	.byte	0x45
   4E24 54                 1541 	.byte	0x54
   4E25 20                 1542 	.byte	0x20
   4E26 33                 1543 	.byte	0x33
   4E27 80                 1544 	.byte	0x80
   4E28 00                 1545 	.byte	0x00
   4E29                    1546 LC5:
   4E29 34                 1547 	.byte	0x34
   4E2A 20                 1548 	.byte	0x20
   4E2B 53                 1549 	.byte	0x53
   4E2C 45                 1550 	.byte	0x45
   4E2D 54                 1551 	.byte	0x54
   4E2E 20                 1552 	.byte	0x20
   4E2F 34                 1553 	.byte	0x34
   4E30 80                 1554 	.byte	0x80
   4E31 00                 1555 	.byte	0x00
                           1556 	.globl _arcadeMenu
   4E32                    1557 _arcadeMenu:
   4E32 34 40         [ 6] 1558 	pshs	u	; 
   4E34 32 7C         [ 5] 1559 	leas	-4,s	; ,,
                           1560 ;----- asm -----
                           1561 ;  730 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1562 	; #ENR#[536]	Read_Btns();
                           1563 ;  0 "" 2
                           1564 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E36 BD F1 BA      [ 8] 1565 	jsr ___Read_Btns; BIOS call
                           1566 ;  0 "" 2
                           1567 ;  732 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1568 	; #ENR#[537]    Intensity_a(0x5f);
                           1569 ;  0 "" 2
                           1570 ;--- end asm ---
   4E39 C6 5F         [ 2] 1571 	ldb	#95	; ,
   4E3B E7 63         [ 5] 1572 	stb	3,s	; , a
                           1573 ;----- asm -----
                           1574 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E3D A6 63         [ 5] 1575 	lda 3,s	;  a
   4E3F BD F2 AB      [ 8] 1576 	jsr ___Intensity_a; BIOS call
                           1577 ;  0 "" 2
                           1578 ;  734 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1579 	; #ENR#[538]    Vec_Text_Width = 90;
                           1580 ;  0 "" 2
                           1581 ;--- end asm ---
   4E42 C6 5A         [ 2] 1582 	ldb	#90	; ,
   4E44 F7 C8 2B      [ 5] 1583 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1584 ;----- asm -----
                           1585 ;  736 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1586 	; #ENR#[539]    Print_Str_d(100, -70, "ARCADE MODE�");
                           1587 ;  0 "" 2
                           1588 ;--- end asm ---
   4E47 CB 0A         [ 2] 1589 	addb	#10	; ,
   4E49 E7 63         [ 5] 1590 	stb	3,s	; , a
   4E4B C6 BA         [ 2] 1591 	ldb	#-70	; ,
   4E4D E7 62         [ 5] 1592 	stb	2,s	; , b
   4E4F 8E 4E 01      [ 3] 1593 	ldx	#LC1	; ,
   4E52 AF E4         [ 5] 1594 	stx	,s	; , u
                           1595 ;----- asm -----
                           1596 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E54 A6 63         [ 5] 1597 	lda 3,s	;  a
   4E56 E6 62         [ 5] 1598 	ldb 2,s	;  b
   4E58 EE E4         [ 5] 1599 	ldu ,s	;  u
   4E5A BD F3 7A      [ 8] 1600 	jsr ___Print_Str_d; BIOS call
                           1601 ;  0 "" 2
                           1602 ;  738 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1603 	; #ENR#[540]    Print_Str_d(50, -110, "1 SET 1�");
                           1604 ;  0 "" 2
                           1605 ;--- end asm ---
   4E5D C6 32         [ 2] 1606 	ldb	#50	; ,
   4E5F E7 62         [ 5] 1607 	stb	2,s	; , a
   4E61 C6 92         [ 2] 1608 	ldb	#-110	; ,
   4E63 E7 63         [ 5] 1609 	stb	3,s	; , b
   4E65 8E 4E 0E      [ 3] 1610 	ldx	#LC2	; ,
   4E68 AF E4         [ 5] 1611 	stx	,s	; , u
                           1612 ;----- asm -----
                           1613 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E6A A6 62         [ 5] 1614 	lda 2,s	;  a
   4E6C E6 63         [ 5] 1615 	ldb 3,s	;  b
   4E6E EE E4         [ 5] 1616 	ldu ,s	;  u
   4E70 BD F3 7A      [ 8] 1617 	jsr ___Print_Str_d; BIOS call
                           1618 ;  0 "" 2
                           1619 ;  740 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1620 	; #ENR#[541]    Print_Str_d(20, -110, "2 SET 2�");
                           1621 ;  0 "" 2
                           1622 ;--- end asm ---
   4E73 C6 14         [ 2] 1623 	ldb	#20	; ,
   4E75 E7 63         [ 5] 1624 	stb	3,s	; , a
   4E77 C6 92         [ 2] 1625 	ldb	#-110	; ,
   4E79 E7 62         [ 5] 1626 	stb	2,s	; , b
   4E7B 8E 4E 17      [ 3] 1627 	ldx	#LC3	; ,
   4E7E AF E4         [ 5] 1628 	stx	,s	; , u
                           1629 ;----- asm -----
                           1630 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E80 A6 63         [ 5] 1631 	lda 3,s	;  a
   4E82 E6 62         [ 5] 1632 	ldb 2,s	;  b
   4E84 EE E4         [ 5] 1633 	ldu ,s	;  u
   4E86 BD F3 7A      [ 8] 1634 	jsr ___Print_Str_d; BIOS call
                           1635 ;  0 "" 2
                           1636 ;  742 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1637 	; #ENR#[542]    Print_Str_d(-10, -110, "3 SET 3�");
                           1638 ;  0 "" 2
                           1639 ;--- end asm ---
   4E89 C6 F6         [ 2] 1640 	ldb	#-10	; ,
   4E8B E7 62         [ 5] 1641 	stb	2,s	; , a
   4E8D C6 92         [ 2] 1642 	ldb	#-110	; ,
   4E8F E7 63         [ 5] 1643 	stb	3,s	; , b
   4E91 8E 4E 20      [ 3] 1644 	ldx	#LC4	; ,
   4E94 AF E4         [ 5] 1645 	stx	,s	; , u
                           1646 ;----- asm -----
                           1647 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E96 A6 62         [ 5] 1648 	lda 2,s	;  a
   4E98 E6 63         [ 5] 1649 	ldb 3,s	;  b
   4E9A EE E4         [ 5] 1650 	ldu ,s	;  u
   4E9C BD F3 7A      [ 8] 1651 	jsr ___Print_Str_d; BIOS call
                           1652 ;  0 "" 2
                           1653 ;  744 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1654 	; #ENR#[543]    Print_Str_d(-40, -110, "4 SET 4�");
                           1655 ;  0 "" 2
                           1656 ;--- end asm ---
   4E9F C6 D8         [ 2] 1657 	ldb	#-40	; ,
   4EA1 E7 63         [ 5] 1658 	stb	3,s	; , a
   4EA3 C6 92         [ 2] 1659 	ldb	#-110	; ,
   4EA5 E7 62         [ 5] 1660 	stb	2,s	; , b
   4EA7 8E 4E 29      [ 3] 1661 	ldx	#LC5	; ,
   4EAA AF E4         [ 5] 1662 	stx	,s	; , u
                           1663 ;----- asm -----
                           1664 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4EAC A6 63         [ 5] 1665 	lda 3,s	;  a
   4EAE E6 62         [ 5] 1666 	ldb 2,s	;  b
   4EB0 EE E4         [ 5] 1667 	ldu ,s	;  u
   4EB2 BD F3 7A      [ 8] 1668 	jsr ___Print_Str_d; BIOS call
                           1669 ;  0 "" 2
                           1670 ;  746 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1671 	; #ENR#[544]	if (Vec_Buttons & 1) {
                           1672 ;  0 "" 2
                           1673 ;--- end asm ---
   4EB5 F6 C8 11      [ 5] 1674 	ldb	_Vec_Buttons	; , Vec_Buttons
   4EB8 C5 01         [ 2] 1675 	bitb	#1	; ,
   4EBA 27 06         [ 3] 1676 	beq	L76	; 
                           1677 ;----- asm -----
                           1678 ;  748 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1679 	; #ENR#[545]		arcadeSelection = 0;
                           1680 ;  0 "" 2
                           1681 ;--- end asm ---
   4EBC 7F CB 03      [ 7] 1682 	clr	_arcadeSelection	;  arcadeSelection
                           1683 ;----- asm -----
                           1684 ;  750 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1685 	; #ENR#[546]		startLevel();
                           1686 ;  0 "" 2
                           1687 ;--- end asm ---
   4EBF BD 4D 5A      [ 8] 1688 	jsr	_startLevel	; 
   4EC2                    1689 L76:
                           1690 ;----- asm -----
                           1691 ;  753 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1692 	; #ENR#[548]	if (Vec_Buttons & 2) {
                           1693 ;  0 "" 2
                           1694 ;--- end asm ---
   4EC2 F6 C8 11      [ 5] 1695 	ldb	_Vec_Buttons	; , Vec_Buttons
   4EC5 C5 02         [ 2] 1696 	bitb	#2	; ,
   4EC7 27 08         [ 3] 1697 	beq	L77	; 
                           1698 ;----- asm -----
                           1699 ;  755 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1700 	; #ENR#[549]		arcadeSelection = 1;
                           1701 ;  0 "" 2
                           1702 ;--- end asm ---
   4EC9 C6 01         [ 2] 1703 	ldb	#1	; ,
   4ECB F7 CB 03      [ 5] 1704 	stb	_arcadeSelection	; , arcadeSelection
                           1705 ;----- asm -----
                           1706 ;  757 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1707 	; #ENR#[550]		startLevel();
                           1708 ;  0 "" 2
                           1709 ;--- end asm ---
   4ECE BD 4D 5A      [ 8] 1710 	jsr	_startLevel	; 
   4ED1                    1711 L77:
                           1712 ;----- asm -----
                           1713 ;  760 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1714 	; #ENR#[552]	if (Vec_Buttons & 4) {
                           1715 ;  0 "" 2
                           1716 ;--- end asm ---
   4ED1 F6 C8 11      [ 5] 1717 	ldb	_Vec_Buttons	; , Vec_Buttons
   4ED4 C5 04         [ 2] 1718 	bitb	#4	; ,
   4ED6 27 08         [ 3] 1719 	beq	L78	; 
                           1720 ;----- asm -----
                           1721 ;  762 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1722 	; #ENR#[553]		arcadeSelection = 2;
                           1723 ;  0 "" 2
                           1724 ;--- end asm ---
   4ED8 C6 02         [ 2] 1725 	ldb	#2	; ,
   4EDA F7 CB 03      [ 5] 1726 	stb	_arcadeSelection	; , arcadeSelection
                           1727 ;----- asm -----
                           1728 ;  764 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1729 	; #ENR#[554]		startLevel();
                           1730 ;  0 "" 2
                           1731 ;--- end asm ---
   4EDD BD 4D 5A      [ 8] 1732 	jsr	_startLevel	; 
   4EE0                    1733 L78:
                           1734 ;----- asm -----
                           1735 ;  767 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1736 	; #ENR#[556]	if (Vec_Buttons & 8) {
                           1737 ;  0 "" 2
                           1738 ;--- end asm ---
   4EE0 F6 C8 11      [ 5] 1739 	ldb	_Vec_Buttons	; , Vec_Buttons
   4EE3 C5 08         [ 2] 1740 	bitb	#8	; ,
   4EE5 27 08         [ 3] 1741 	beq	L80	; 
                           1742 ;----- asm -----
                           1743 ;  769 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1744 	; #ENR#[557]		arcadeSelection = 3;
                           1745 ;  0 "" 2
                           1746 ;--- end asm ---
   4EE7 C6 03         [ 2] 1747 	ldb	#3	; ,
   4EE9 F7 CB 03      [ 5] 1748 	stb	_arcadeSelection	; , arcadeSelection
                           1749 ;----- asm -----
                           1750 ;  771 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1751 	; #ENR#[558]		startLevel();
                           1752 ;  0 "" 2
                           1753 ;--- end asm ---
   4EEC BD 4D 5A      [ 8] 1754 	jsr	_startLevel	; 
   4EEF                    1755 L80:
   4EEF 32 64         [ 5] 1756 	leas	4,s	; ,,
   4EF1 35 C0         [ 7] 1757 	puls	u,pc	; 
   4EF3                    1758 LC6:
   4EF3 4D                 1759 	.byte	0x4D
   4EF4 41                 1760 	.byte	0x41
   4EF5 49                 1761 	.byte	0x49
   4EF6 4E                 1762 	.byte	0x4E
   4EF7 20                 1763 	.byte	0x20
   4EF8 4D                 1764 	.byte	0x4D
   4EF9 45                 1765 	.byte	0x45
   4EFA 4E                 1766 	.byte	0x4E
   4EFB 55                 1767 	.byte	0x55
   4EFC 80                 1768 	.byte	0x80
   4EFD 00                 1769 	.byte	0x00
   4EFE                    1770 LC7:
   4EFE 31                 1771 	.byte	0x31
   4EFF 20                 1772 	.byte	0x20
   4F00 50                 1773 	.byte	0x50
   4F01 55                 1774 	.byte	0x55
   4F02 5A                 1775 	.byte	0x5A
   4F03 5A                 1776 	.byte	0x5A
   4F04 4C                 1777 	.byte	0x4C
   4F05 45                 1778 	.byte	0x45
   4F06 20                 1779 	.byte	0x20
   4F07 4D                 1780 	.byte	0x4D
   4F08 4F                 1781 	.byte	0x4F
   4F09 44                 1782 	.byte	0x44
   4F0A 45                 1783 	.byte	0x45
   4F0B 80                 1784 	.byte	0x80
   4F0C 00                 1785 	.byte	0x00
   4F0D                    1786 LC8:
   4F0D 32                 1787 	.byte	0x32
   4F0E 20                 1788 	.byte	0x20
   4F0F 41                 1789 	.byte	0x41
   4F10 52                 1790 	.byte	0x52
   4F11 43                 1791 	.byte	0x43
   4F12 41                 1792 	.byte	0x41
   4F13 44                 1793 	.byte	0x44
   4F14 45                 1794 	.byte	0x45
   4F15 20                 1795 	.byte	0x20
   4F16 4D                 1796 	.byte	0x4D
   4F17 4F                 1797 	.byte	0x4F
   4F18 44                 1798 	.byte	0x44
   4F19 45                 1799 	.byte	0x45
   4F1A 80                 1800 	.byte	0x80
   4F1B 00                 1801 	.byte	0x00
   4F1C                    1802 LC9:
   4F1C 33                 1803 	.byte	0x33
   4F1D 20                 1804 	.byte	0x20
   4F1E 43                 1805 	.byte	0x43
   4F1F 4C                 1806 	.byte	0x4C
   4F20 45                 1807 	.byte	0x45
   4F21 41                 1808 	.byte	0x41
   4F22 52                 1809 	.byte	0x52
   4F23 20                 1810 	.byte	0x20
   4F24 48                 1811 	.byte	0x48
   4F25 49                 1812 	.byte	0x49
   4F26 47                 1813 	.byte	0x47
   4F27 48                 1814 	.byte	0x48
   4F28 53                 1815 	.byte	0x53
   4F29 43                 1816 	.byte	0x43
   4F2A 4F                 1817 	.byte	0x4F
   4F2B 52                 1818 	.byte	0x52
   4F2C 45                 1819 	.byte	0x45
   4F2D 80                 1820 	.byte	0x80
   4F2E 00                 1821 	.byte	0x00
                           1822 	.globl _mainMenu
   4F2F                    1823 _mainMenu:
   4F2F 34 40         [ 6] 1824 	pshs	u	; 
   4F31 32 7C         [ 5] 1825 	leas	-4,s	; ,,
                           1826 ;----- asm -----
                           1827 ;  685 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1828 	; #ENR#[510]	Read_Btns();
                           1829 ;  0 "" 2
                           1830 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F33 BD F1 BA      [ 8] 1831 	jsr ___Read_Btns; BIOS call
                           1832 ;  0 "" 2
                           1833 ;  687 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1834 	; #ENR#[511]    Intensity_a(0x5f);
                           1835 ;  0 "" 2
                           1836 ;--- end asm ---
   4F36 C6 5F         [ 2] 1837 	ldb	#95	; ,
   4F38 E7 62         [ 5] 1838 	stb	2,s	; , a
                           1839 ;----- asm -----
                           1840 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F3A A6 62         [ 5] 1841 	lda 2,s	;  a
   4F3C BD F2 AB      [ 8] 1842 	jsr ___Intensity_a; BIOS call
                           1843 ;  0 "" 2
                           1844 ;  689 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1845 	; #ENR#[512]    Vec_Text_Width = 90;
                           1846 ;  0 "" 2
                           1847 ;--- end asm ---
   4F3F C6 5A         [ 2] 1848 	ldb	#90	; ,
   4F41 F7 C8 2B      [ 5] 1849 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1850 ;----- asm -----
                           1851 ;  691 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1852 	; #ENR#[513]    Print_Str_d(100, -70, "MAIN MENU�");
                           1853 ;  0 "" 2
                           1854 ;--- end asm ---
   4F44 CB 0A         [ 2] 1855 	addb	#10	; ,
   4F46 E7 62         [ 5] 1856 	stb	2,s	; , a
   4F48 C6 BA         [ 2] 1857 	ldb	#-70	; ,
   4F4A E7 63         [ 5] 1858 	stb	3,s	; , b
   4F4C 8E 4E F3      [ 3] 1859 	ldx	#LC6	; ,
   4F4F AF E4         [ 5] 1860 	stx	,s	; , u
                           1861 ;----- asm -----
                           1862 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F51 A6 62         [ 5] 1863 	lda 2,s	;  a
   4F53 E6 63         [ 5] 1864 	ldb 3,s	;  b
   4F55 EE E4         [ 5] 1865 	ldu ,s	;  u
   4F57 BD F3 7A      [ 8] 1866 	jsr ___Print_Str_d; BIOS call
                           1867 ;  0 "" 2
                           1868 ;  693 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1869 	; #ENR#[514]    Print_Str_d(50, -110, "1 PUZZLE MODE�");
                           1870 ;  0 "" 2
                           1871 ;--- end asm ---
   4F5A C6 32         [ 2] 1872 	ldb	#50	; ,
   4F5C E7 63         [ 5] 1873 	stb	3,s	; , a
   4F5E C6 92         [ 2] 1874 	ldb	#-110	; ,
   4F60 E7 62         [ 5] 1875 	stb	2,s	; , b
   4F62 8E 4E FE      [ 3] 1876 	ldx	#LC7	; ,
   4F65 AF E4         [ 5] 1877 	stx	,s	; , u
                           1878 ;----- asm -----
                           1879 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F67 A6 63         [ 5] 1880 	lda 3,s	;  a
   4F69 E6 62         [ 5] 1881 	ldb 2,s	;  b
   4F6B EE E4         [ 5] 1882 	ldu ,s	;  u
   4F6D BD F3 7A      [ 8] 1883 	jsr ___Print_Str_d; BIOS call
                           1884 ;  0 "" 2
                           1885 ;  695 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1886 	; #ENR#[515]    Print_Str_d(20, -110, "2 ARCADE MODE�");
                           1887 ;  0 "" 2
                           1888 ;--- end asm ---
   4F70 C6 14         [ 2] 1889 	ldb	#20	; ,
   4F72 E7 62         [ 5] 1890 	stb	2,s	; , a
   4F74 C6 92         [ 2] 1891 	ldb	#-110	; ,
   4F76 E7 63         [ 5] 1892 	stb	3,s	; , b
   4F78 8E 4F 0D      [ 3] 1893 	ldx	#LC8	; ,
   4F7B AF E4         [ 5] 1894 	stx	,s	; , u
                           1895 ;----- asm -----
                           1896 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F7D A6 62         [ 5] 1897 	lda 2,s	;  a
   4F7F E6 63         [ 5] 1898 	ldb 3,s	;  b
   4F81 EE E4         [ 5] 1899 	ldu ,s	;  u
   4F83 BD F3 7A      [ 8] 1900 	jsr ___Print_Str_d; BIOS call
                           1901 ;  0 "" 2
                           1902 ;  697 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1903 	; #ENR#[516]    Print_Str_d(-10, -110, "3 CLEAR HIGHSCORE�");
                           1904 ;  0 "" 2
                           1905 ;--- end asm ---
   4F86 C6 F6         [ 2] 1906 	ldb	#-10	; ,
   4F88 E7 63         [ 5] 1907 	stb	3,s	; , a
   4F8A C6 92         [ 2] 1908 	ldb	#-110	; ,
   4F8C E7 62         [ 5] 1909 	stb	2,s	; , b
   4F8E 8E 4F 1C      [ 3] 1910 	ldx	#LC9	; ,
   4F91 AF E4         [ 5] 1911 	stx	,s	; , u
                           1912 ;----- asm -----
                           1913 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F93 A6 63         [ 5] 1914 	lda 3,s	;  a
   4F95 E6 62         [ 5] 1915 	ldb 2,s	;  b
   4F97 EE E4         [ 5] 1916 	ldu ,s	;  u
   4F99 BD F3 7A      [ 8] 1917 	jsr ___Print_Str_d; BIOS call
                           1918 ;  0 "" 2
                           1919 ;  699 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1920 	; #ENR#[517]	if (Vec_Buttons & 1) {
                           1921 ;  0 "" 2
                           1922 ;--- end asm ---
   4F9C F6 C8 11      [ 5] 1923 	ldb	_Vec_Buttons	; , Vec_Buttons
   4F9F C5 01         [ 2] 1924 	bitb	#1	; ,
   4FA1 27 09         [ 3] 1925 	beq	L82	; 
                           1926 ;----- asm -----
                           1927 ;  701 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1928 	; #ENR#[518]		arcadeMode = 0;
                           1929 ;  0 "" 2
                           1930 ;--- end asm ---
   4FA3 7F CB 02      [ 7] 1931 	clr	_arcadeMode	;  arcadeMode
                           1932 ;----- asm -----
                           1933 ;  703 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1934 	; #ENR#[519]		levelNumber = 0;
                           1935 ;  0 "" 2
                           1936 ;--- end asm ---
   4FA6 7F C8 83      [ 7] 1937 	clr	_levelNumber	;  levelNumber
                           1938 ;----- asm -----
                           1939 ;  705 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1940 	; #ENR#[520]		startLevel();
                           1941 ;  0 "" 2
                           1942 ;--- end asm ---
   4FA9 BD 4D 5A      [ 8] 1943 	jsr	_startLevel	; 
   4FAC                    1944 L82:
                           1945 ;----- asm -----
                           1946 ;  708 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1947 	; #ENR#[522]	if (Vec_Buttons & 2) {
                           1948 ;  0 "" 2
                           1949 ;--- end asm ---
   4FAC F6 C8 11      [ 5] 1950 	ldb	_Vec_Buttons	; , Vec_Buttons
   4FAF C5 02         [ 2] 1951 	bitb	#2	; ,
   4FB1 27 14         [ 3] 1952 	beq	L83	; 
                           1953 ;----- asm -----
                           1954 ;  710 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1955 	; #ENR#[523]		frames = 0;
                           1956 ;  0 "" 2
                           1957 ;--- end asm ---
   4FB3 CC 00 00      [ 3] 1958 	ldd	#0	; ,
   4FB6 FD CA FD      [ 6] 1959 	std	_frames	; , frames
                           1960 ;----- asm -----
                           1961 ;  712 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1962 	; #ENR#[524]		moveCount = 0;
                           1963 ;  0 "" 2
                           1964 ;--- end asm ---
   4FB9 FD CA FB      [ 6] 1965 	std	_moveCount	; , moveCount
                           1966 ;----- asm -----
                           1967 ;  714 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1968 	; #ENR#[525]		arcadeMode = 1;
                           1969 ;  0 "" 2
                           1970 ;--- end asm ---
   4FBC C6 01         [ 2] 1971 	ldb	#1	; ,
   4FBE F7 CB 02      [ 5] 1972 	stb	_arcadeMode	; , arcadeMode
                           1973 ;----- asm -----
                           1974 ;  716 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1975 	; #ENR#[526]		arcadeIndex = 0;
                           1976 ;  0 "" 2
                           1977 ;--- end asm ---
   4FC1 7F CB 04      [ 7] 1978 	clr	_arcadeIndex	;  arcadeIndex
                           1979 ;----- asm -----
                           1980 ;  718 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1981 	; #ENR#[527]		gameState = ArcadeMenu;
                           1982 ;  0 "" 2
                           1983 ;--- end asm ---
   4FC4 F7 CB 05      [ 5] 1984 	stb	_gameState	; , gameState
   4FC7                    1985 L83:
                           1986 ;----- asm -----
                           1987 ;  721 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1988 	; #ENR#[529]	if (Vec_Buttons & 4) {
                           1989 ;  0 "" 2
                           1990 ;--- end asm ---
   4FC7 F6 C8 11      [ 5] 1991 	ldb	_Vec_Buttons	; , Vec_Buttons
   4FCA C5 04         [ 2] 1992 	bitb	#4	; ,
   4FCC 27 05         [ 3] 1993 	beq	L85	; 
                           1994 ;----- asm -----
                           1995 ;  723 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1996 	; #ENR#[530]		gameState = ClearMenu;
                           1997 ;  0 "" 2
                           1998 ;--- end asm ---
   4FCE C6 03         [ 2] 1999 	ldb	#3	; ,
   4FD0 F7 CB 05      [ 5] 2000 	stb	_gameState	; , gameState
   4FD3                    2001 L85:
   4FD3 32 64         [ 5] 2002 	leas	4,s	; ,,
   4FD5 35 C0         [ 7] 2003 	puls	u,pc	; 
                           2004 	.globl _blockFalling
   4FD7                    2005 _blockFalling:
   4FD7 32 7F         [ 5] 2006 	leas	-1,s	; ,,
                           2007 ;----- asm -----
                           2008 ;  617 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2009 	; #ENR#[468]	drawField();
                           2010 ;  0 "" 2
                           2011 ;--- end asm ---
   4FD9 BD 49 55      [ 8] 2012 	jsr	_drawField	; 
                           2013 ;----- asm -----
                           2014 ;  619 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2015 	; #ENR#[469]	blockYOfs++;
                           2016 ;  0 "" 2
                           2017 ;--- end asm ---
   4FDC F6 C8 89      [ 5] 2018 	ldb	_blockYOfs	; , blockYOfs
   4FDF 5C            [ 2] 2019 	incb	; 
   4FE0 E7 E4         [ 4] 2020 	stb	,s	; , blockYOfs.58
   4FE2 F7 C8 89      [ 5] 2021 	stb	_blockYOfs	; , blockYOfs
                           2022 ;----- asm -----
                           2023 ;  621 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2024 	; #ENR#[470]	if (blockYOfs < 12) {
                           2025 ;  0 "" 2
                           2026 ;--- end asm ---
   4FE5 C1 0B         [ 2] 2027 	cmpb	#11	;cmpqi:	; ,
   4FE7 2E 0A         [ 3] 2028 	bgt	L87	; 
                           2029 ;----- asm -----
                           2030 ;  623 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2031 	; #ENR#[471]		drawBlock(-blockYOfs*blockYOfs);
                           2032 ;  0 "" 2
                           2033 ;--- end asm ---
   4FE9 50            [ 2] 2034 	negb	;  tmp28
   4FEA A6 E4         [ 4] 2035 	lda	,s	;mulqihi3	;  blockYOfs.58
   4FEC 3D            [11] 2036 	mul
                           2037 		;movlsbqihi: D->B
   4FED BD 04 B4      [ 8] 2038 	jsr	_drawBlock	; 
                           2039 ;----- asm -----
                           2040 ;  625 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2041 	; #ENR#[472]		doBlockAnimation();
                           2042 ;  0 "" 2
                           2043 ;--- end asm ---
   4FF0 BD 03 B2      [ 8] 2044 	jsr	_doBlockAnimation	; 
   4FF3                    2045 L87:
                           2046 ;----- asm -----
                           2047 ;  628 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2048 	; #ENR#[474]	if (blockYOfs == 50) {
                           2049 ;  0 "" 2
                           2050 ;--- end asm ---
   4FF3 F6 C8 89      [ 5] 2051 	ldb	_blockYOfs	; , blockYOfs
   4FF6 C1 32         [ 2] 2052 	cmpb	#50	;cmpqi:	; ,
   4FF8 26 03         [ 3] 2053 	bne	L89	; 
                           2054 ;----- asm -----
                           2055 ;  630 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2056 	; #ENR#[475]		startLevel();
                           2057 ;  0 "" 2
                           2058 ;--- end asm ---
   4FFA BD 4D 5A      [ 8] 2059 	jsr	_startLevel	; 
   4FFD                    2060 L89:
   4FFD 32 61         [ 5] 2061 	leas	1,s	; ,,
   4FFF 39            [ 5] 2062 	rts
                           2063 	.globl _writeEeprom
   5000                    2064 _writeEeprom:
                           2065 ;----- asm -----
                           2066 ;  209 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2067 	; #ENR#[194]	if (picAvailable) {
                           2068 ;  0 "" 2
                           2069 ;--- end asm ---
   5000 7D CB 01      [ 7] 2070 	tst	_picAvailable	;  picAvailable
   5003 27 12         [ 3] 2071 	beq	L92	; 
                           2072 ;----- asm -----
                           2073 ;  211 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2074 	; #ENR#[195]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
                           2075 ;  0 "" 2
                           2076 ;--- end asm ---
   5005 34 04         [ 6] 2077 	pshs	b	;  address
   5007 C6 02         [ 2] 2078 	ldb	#2	; ,
   5009 BD 4D 27      [ 8] 2079 	jsr	_sendCommand	; 
                           2080 ;----- asm -----
                           2081 ;  213 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2082 	; #ENR#[196]	    	sendCommand(CMD_EEPROM_WRITE, data);
                           2083 ;  0 "" 2
                           2084 ;--- end asm ---
   500C E6 63         [ 5] 2085 	ldb	3,s	; , data
   500E E7 E2         [ 6] 2086 	stb	,-s	; ,
   5010 C6 03         [ 2] 2087 	ldb	#3	; ,
   5012 BD 4D 27      [ 8] 2088 	jsr	_sendCommand	; 
   5015 32 62         [ 5] 2089 	leas	2,s	; ,,
   5017                    2090 L92:
   5017 39            [ 5] 2091 	rts
   5018                    2092 LC10:
   5018 43                 2093 	.byte	0x43
   5019 4C                 2094 	.byte	0x4C
   501A 45                 2095 	.byte	0x45
   501B 41                 2096 	.byte	0x41
   501C 52                 2097 	.byte	0x52
   501D 20                 2098 	.byte	0x20
   501E 53                 2099 	.byte	0x53
   501F 43                 2100 	.byte	0x43
   5020 4F                 2101 	.byte	0x4F
   5021 52                 2102 	.byte	0x52
   5022 45                 2103 	.byte	0x45
   5023 3F                 2104 	.byte	0x3F
   5024 80                 2105 	.byte	0x80
   5025 00                 2106 	.byte	0x00
   5026                    2107 LC11:
   5026 33                 2108 	.byte	0x33
   5027 20                 2109 	.byte	0x20
   5028 59                 2110 	.byte	0x59
   5029 45                 2111 	.byte	0x45
   502A 53                 2112 	.byte	0x53
   502B 80                 2113 	.byte	0x80
   502C 00                 2114 	.byte	0x00
   502D                    2115 LC12:
   502D 34                 2116 	.byte	0x34
   502E 20                 2117 	.byte	0x20
   502F 4E                 2118 	.byte	0x4E
   5030 4F                 2119 	.byte	0x4F
   5031 80                 2120 	.byte	0x80
   5032 00                 2121 	.byte	0x00
                           2122 	.globl _clearMenu
   5033                    2123 _clearMenu:
   5033 34 40         [ 6] 2124 	pshs	u	; 
   5035 32 7B         [ 5] 2125 	leas	-5,s	; ,,
                           2126 ;----- asm -----
                           2127 ;  812 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2128 	; #ENR#[585]	Read_Btns();
                           2129 ;  0 "" 2
                           2130 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5037 BD F1 BA      [ 8] 2131 	jsr ___Read_Btns; BIOS call
                           2132 ;  0 "" 2
                           2133 ;  814 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2134 	; #ENR#[586]    Intensity_a(0x5f);
                           2135 ;  0 "" 2
                           2136 ;--- end asm ---
   503A C6 5F         [ 2] 2137 	ldb	#95	; ,
   503C E7 64         [ 5] 2138 	stb	4,s	; , a
                           2139 ;----- asm -----
                           2140 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   503E A6 64         [ 5] 2141 	lda 4,s	;  a
   5040 BD F2 AB      [ 8] 2142 	jsr ___Intensity_a; BIOS call
                           2143 ;  0 "" 2
                           2144 ;  816 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2145 	; #ENR#[587]    Vec_Text_Width = 90;
                           2146 ;  0 "" 2
                           2147 ;--- end asm ---
   5043 C6 5A         [ 2] 2148 	ldb	#90	; ,
   5045 F7 C8 2B      [ 5] 2149 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           2150 ;----- asm -----
                           2151 ;  818 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2152 	; #ENR#[588]    Print_Str_d(100, -80, "CLEAR SCORE?�");
                           2153 ;  0 "" 2
                           2154 ;--- end asm ---
   5048 CB 0A         [ 2] 2155 	addb	#10	; ,
   504A E7 64         [ 5] 2156 	stb	4,s	; , a
   504C C6 B0         [ 2] 2157 	ldb	#-80	; ,
   504E E7 63         [ 5] 2158 	stb	3,s	; , b
   5050 8E 50 18      [ 3] 2159 	ldx	#LC10	; ,
   5053 AF 61         [ 6] 2160 	stx	1,s	; , u
                           2161 ;----- asm -----
                           2162 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5055 A6 64         [ 5] 2163 	lda 4,s	;  a
   5057 E6 63         [ 5] 2164 	ldb 3,s	;  b
   5059 EE 61         [ 6] 2165 	ldu 1,s	;  u
   505B BD F3 7A      [ 8] 2166 	jsr ___Print_Str_d; BIOS call
                           2167 ;  0 "" 2
                           2168 ;  820 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2169 	; #ENR#[589]    Print_Str_d(50, -110, "3 YES�");
                           2170 ;  0 "" 2
                           2171 ;--- end asm ---
   505E C6 32         [ 2] 2172 	ldb	#50	; ,
   5060 E7 63         [ 5] 2173 	stb	3,s	; , a
   5062 C6 92         [ 2] 2174 	ldb	#-110	; ,
   5064 E7 64         [ 5] 2175 	stb	4,s	; , b
   5066 8E 50 26      [ 3] 2176 	ldx	#LC11	; ,
   5069 AF 61         [ 6] 2177 	stx	1,s	; , u
                           2178 ;----- asm -----
                           2179 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   506B A6 63         [ 5] 2180 	lda 3,s	;  a
   506D E6 64         [ 5] 2181 	ldb 4,s	;  b
   506F EE 61         [ 6] 2182 	ldu 1,s	;  u
   5071 BD F3 7A      [ 8] 2183 	jsr ___Print_Str_d; BIOS call
                           2184 ;  0 "" 2
                           2185 ;  822 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2186 	; #ENR#[590]    Print_Str_d(20, -110, "4 NO�");
                           2187 ;  0 "" 2
                           2188 ;--- end asm ---
   5074 C6 14         [ 2] 2189 	ldb	#20	; ,
   5076 E7 64         [ 5] 2190 	stb	4,s	; , a
   5078 C6 92         [ 2] 2191 	ldb	#-110	; ,
   507A E7 63         [ 5] 2192 	stb	3,s	; , b
   507C 8E 50 2D      [ 3] 2193 	ldx	#LC12	; ,
   507F AF 61         [ 6] 2194 	stx	1,s	; , u
                           2195 ;----- asm -----
                           2196 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5081 A6 64         [ 5] 2197 	lda 4,s	;  a
   5083 E6 63         [ 5] 2198 	ldb 3,s	;  b
   5085 EE 61         [ 6] 2199 	ldu 1,s	;  u
   5087 BD F3 7A      [ 8] 2200 	jsr ___Print_Str_d; BIOS call
                           2201 ;  0 "" 2
                           2202 ;  824 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2203 	; #ENR#[591]	if (Vec_Buttons & 4) {
                           2204 ;  0 "" 2
                           2205 ;--- end asm ---
   508A F6 C8 11      [ 5] 2206 	ldb	_Vec_Buttons	; , Vec_Buttons
   508D C5 04         [ 2] 2207 	bitb	#4	; ,
   508F 27 18         [ 3] 2208 	beq	L94	; 
                           2209 ;----- asm -----
                           2210 ;  826 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2211 	; #ENR#[592]		for (uint8_t i = 0; i < 6; i++) {
                           2212 ;  0 "" 2
                           2213 ;--- end asm ---
   5091 6F E4         [ 6] 2214 	clr	,s	;  i
   5093                    2215 L95:
                           2216 ;----- asm -----
                           2217 ;  828 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2218 	; #ENR#[593]			writeEeprom(i, 0xff);
                           2219 ;  0 "" 2
                           2220 ;--- end asm ---
   5093 C6 FF         [ 2] 2221 	ldb	#-1	; ,
   5095 E7 E2         [ 6] 2222 	stb	,-s	; ,
   5097 E6 61         [ 5] 2223 	ldb	1,s	; , i
   5099 BD 50 00      [ 8] 2224 	jsr	_writeEeprom	; 
   509C 6C 61         [ 7] 2225 	inc	1,s	;  i
   509E 32 61         [ 5] 2226 	leas	1,s	; ,,
   50A0 E6 E4         [ 4] 2227 	ldb	,s	; , i
   50A2 C1 06         [ 2] 2228 	cmpb	#6	;cmpqi:	; ,
   50A4 26 ED         [ 3] 2229 	bne	L95	; 
                           2230 ;----- asm -----
                           2231 ;  831 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2232 	; #ENR#[595]		gameState = MainMenu;
                           2233 ;  0 "" 2
                           2234 ;--- end asm ---
   50A6 7F CB 05      [ 7] 2235 	clr	_gameState	;  gameState
   50A9                    2236 L94:
                           2237 ;----- asm -----
                           2238 ;  834 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2239 	; #ENR#[597]	if (Vec_Buttons & 8) {
                           2240 ;  0 "" 2
                           2241 ;--- end asm ---
   50A9 F6 C8 11      [ 5] 2242 	ldb	_Vec_Buttons	; , Vec_Buttons
   50AC C5 08         [ 2] 2243 	bitb	#8	; ,
   50AE 27 03         [ 3] 2244 	beq	L97	; 
                           2245 ;----- asm -----
                           2246 ;  836 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2247 	; #ENR#[598]		gameState = MainMenu;
                           2248 ;  0 "" 2
                           2249 ;--- end asm ---
   50B0 7F CB 05      [ 7] 2250 	clr	_gameState	;  gameState
   50B3                    2251 L97:
   50B3 32 65         [ 5] 2252 	leas	5,s	; ,,
   50B5 35 C0         [ 7] 2253 	puls	u,pc	; 
                           2254 	.globl _blockMovingAtEnd
   50B7                    2255 _blockMovingAtEnd:
   50B7 34 60         [ 7] 2256 	pshs	y,u	; 
   50B9 32 7C         [ 5] 2257 	leas	-4,s	; ,,
                           2258 ;----- asm -----
                           2259 ;  637 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2260 	; #ENR#[481]	drawField();
                           2261 ;  0 "" 2
                           2262 ;--- end asm ---
   50BB BD 49 55      [ 8] 2263 	jsr	_drawField	; 
                           2264 ;----- asm -----
                           2265 ;  639 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2266 	; #ENR#[482]	drawBlock(blockYOfs);
                           2267 ;  0 "" 2
                           2268 ;--- end asm ---
   50BE F6 C8 89      [ 5] 2269 	ldb	_blockYOfs	; , blockYOfs
   50C1 BD 04 B4      [ 8] 2270 	jsr	_drawBlock	; 
                           2271 ;----- asm -----
                           2272 ;  641 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2273 	; #ENR#[483]	blockYOfs++;
                           2274 ;  0 "" 2
                           2275 ;--- end asm ---
   50C4 F6 C8 89      [ 5] 2276 	ldb	_blockYOfs	;  blockYOfs.60, blockYOfs
   50C7 5C            [ 2] 2277 	incb	;  blockYOfs.60
   50C8 F7 C8 89      [ 5] 2278 	stb	_blockYOfs	;  blockYOfs.60, blockYOfs
                           2279 ;----- asm -----
                           2280 ;  643 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2281 	; #ENR#[484]	if (blockYOfs == 30) {
                           2282 ;  0 "" 2
                           2283 ;--- end asm ---
   50CB C1 1E         [ 2] 2284 	cmpb	#30	;cmpqi:	;  blockYOfs.60,
   50CD 10 26 00 C2   [ 6] 2285 	lbne	L105	; 
                           2286 ;----- asm -----
                           2287 ;  645 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2288 	; #ENR#[485]		if (moveCount < levelHighscore) {
                           2289 ;  0 "" 2
                           2290 ;--- end asm ---
   50D1 BE CA FB      [ 6] 2291 	ldx	_moveCount	;  moveCount.61, moveCount
   50D4 BC CA FF      [ 7] 2292 	cmpx	_levelHighscore	;cmphi:	;  moveCount.61, levelHighscore
   50D7 24 25         [ 3] 2293 	bhs	L101	; 
                           2294 ;----- asm -----
                           2295 ;  647 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2296 	; #ENR#[486]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
                           2297 ;  0 "" 2
                           2298 ;--- end asm ---
   50D9 F6 C8 83      [ 5] 2299 	ldb	_levelNumber	; , levelNumber
   50DC 58            [ 2] 2300 	aslb	; 
   50DD E7 E4         [ 4] 2301 	stb	,s	; ,
   50DF 1F 10         [ 6] 2302 	tfr	x,d	;  moveCount.61,
   50E1 34 04         [ 6] 2303 	pshs	b	; 
   50E3 E6 61         [ 5] 2304 	ldb	1,s	; ,
   50E5 BD 50 00      [ 8] 2305 	jsr	_writeEeprom	; 
                           2306 ;----- asm -----
                           2307 ;  649 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2308 	; #ENR#[487]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
                           2309 ;  0 "" 2
                           2310 ;--- end asm ---
   50E8 F6 C8 83      [ 5] 2311 	ldb	_levelNumber	;  tmp33, levelNumber
   50EB 58            [ 2] 2312 	aslb	;  tmp33
   50EC 5C            [ 2] 2313 	incb	;  tmp33
   50ED E7 64         [ 5] 2314 	stb	4,s	;  tmp33,
   50EF FC CA FB      [ 6] 2315 	ldd	_moveCount	;  tmp35, moveCount
   50F2 1F 89         [ 6] 2316 	tfr	a,b	; ,
   50F4 4F            [ 2] 2317 	clra		;zero_extendqihi: R:b -> R:d	; ,
   50F5 34 04         [ 6] 2318 	pshs	b	;  tmp35
   50F7 E6 65         [ 5] 2319 	ldb	5,s	; ,
   50F9 BD 50 00      [ 8] 2320 	jsr	_writeEeprom	; 
   50FC 32 62         [ 5] 2321 	leas	2,s	; ,,
   50FE                    2322 L101:
                           2323 ;----- asm -----
                           2324 ;  652 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2325 	; #ENR#[489]		if (arcadeMode) {
                           2326 ;  0 "" 2
                           2327 ;--- end asm ---
   50FE 7D CB 02      [ 7] 2328 	tst	_arcadeMode	;  arcadeMode
   5101 10 27 00 7C   [ 6] 2329 	lbeq	L102	; 
                           2330 ;----- asm -----
                           2331 ;  654 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2332 	; #ENR#[490]			arcadeIndex++;
                           2333 ;  0 "" 2
                           2334 ;--- end asm ---
   5105 F6 CB 04      [ 5] 2335 	ldb	_arcadeIndex	;  arcadeIndex.66, arcadeIndex
   5108 5C            [ 2] 2336 	incb	;  arcadeIndex.66
   5109 F7 CB 04      [ 5] 2337 	stb	_arcadeIndex	;  arcadeIndex.66, arcadeIndex
                           2338 ;----- asm -----
                           2339 ;  656 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2340 	; #ENR#[491]			levelNumber = arcadeLevels[arcadeSelection][arcadeIndex];
                           2341 ;  0 "" 2
                           2342 ;--- end asm ---
   510C 4F            [ 2] 2343 	clra		;zero_extendqihi: R:b -> R:d	;  arcadeIndex.66,
   510D 1F 02         [ 6] 2344 	tfr	d,y	; , arcadeIndex.66
   510F F6 CB 03      [ 5] 2345 	ldb	_arcadeSelection	; , arcadeSelection
   5112 4F            [ 2] 2346 	clra		;zero_extendqihi: R:b -> R:d	; ,
   5113 ED 61         [ 6] 2347 	std	1,s	; ,
   5115 58            [ 2] 2348 	aslb	; 
   5116 49            [ 2] 2349 	rola	; 
   5117 58            [ 2] 2350 	aslb	; 
   5118 49            [ 2] 2351 	rola	; 
   5119 EE 61         [ 6] 2352 	ldu	1,s	; ,
   511B 30 CB         [ 8] 2353 	leax	d,u	;  tmp41, tmp40,
   511D 1E 02         [ 8] 2354 	exg	d,y	; , arcadeIndex.66
   511F 30 8B         [ 8] 2355 	leax	d,x	;  tmp42,, tmp42
   5121 1E 02         [ 8] 2356 	exg	d,y	; , arcadeIndex.66
   5123 E6 89 53 FD   [ 8] 2357 	ldb	_arcadeLevels,x	;  levelNumber.68, arcadeLevels
   5127 F7 C8 83      [ 5] 2358 	stb	_levelNumber	;  levelNumber.68, levelNumber
                           2359 ;----- asm -----
                           2360 ;  658 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2361 	; #ENR#[492]			if (levelNumber == 0) {
                           2362 ;  0 "" 2
                           2363 ;--- end asm ---
   512A 5D            [ 2] 2364 	tstb	;  levelNumber.68
   512B 10 26 00 4D   [ 6] 2365 	lbne	L103	; 
                           2366 ;----- asm -----
                           2367 ;  660 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2368 	; #ENR#[493]				gameState = ArcadeEnd;
                           2369 ;  0 "" 2
                           2370 ;--- end asm ---
   512F C6 02         [ 2] 2371 	ldb	#2	; ,
   5131 F7 CB 05      [ 5] 2372 	stb	_gameState	; , gameState
                           2373 ;----- asm -----
                           2374 ;  662 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2375 	; #ENR#[494]				memcpy(infoText, "TIME: 000 SECONDS�", 18);
                           2376 ;  0 "" 2
                           2377 ;--- end asm ---
   5134 8E 54 49      [ 3] 2378 	ldx	#21577	; ,
   5137 BF CA E7      [ 6] 2379 	stx	_infoText	; , infoText
   513A CE 4D 45      [ 3] 2380 	ldu	#19781	; ,
   513D FF CA E9      [ 6] 2381 	stu	_infoText+2	; , infoText
   5140 8E 3A 20      [ 3] 2382 	ldx	#14880	; ,
   5143 BF CA EB      [ 6] 2383 	stx	_infoText+4	; , infoText
   5146 CE 30 30      [ 3] 2384 	ldu	#12336	; ,
   5149 FF CA ED      [ 6] 2385 	stu	_infoText+6	; , infoText
   514C 8E 30 20      [ 3] 2386 	ldx	#12320	; ,
   514F BF CA EF      [ 6] 2387 	stx	_infoText+8	; , infoText
   5152 CE 53 45      [ 3] 2388 	ldu	#21317	; ,
   5155 FF CA F1      [ 6] 2389 	stu	_infoText+10	; , infoText
   5158 8E 43 4F      [ 3] 2390 	ldx	#17231	; ,
   515B BF CA F3      [ 6] 2391 	stx	_infoText+12	; , infoText
   515E CE 4E 44      [ 3] 2392 	ldu	#20036	; ,
   5161 FF CA F5      [ 6] 2393 	stu	_infoText+14	; , infoText
   5164 8E 53 80      [ 3] 2394 	ldx	#21376	; ,
   5167 BF CA F7      [ 6] 2395 	stx	_infoText+16	; , infoText
                           2396 ;----- asm -----
                           2397 ;  664 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2398 	; #ENR#[495]			    	itoa(moveCount, &infoText[6]);
                           2399 ;  0 "" 2
                           2400 ;--- end asm ---
   516A CE CA ED      [ 3] 2401 	ldu	#_infoText+6	; ,
   516D EF E3         [ 8] 2402 	stu	,--s	; ,
   516F BE CA FB      [ 6] 2403 	ldx	_moveCount	; , moveCount
   5172 BD 48 CD      [ 8] 2404 	jsr	_itoa	; 
                           2405 ;----- asm -----
                           2406 ;  666 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2407 	; #ENR#[496]				arcadeMode = 0;
                           2408 ;  0 "" 2
                           2409 ;--- end asm ---
   5175 7F CB 02      [ 7] 2410 	clr	_arcadeMode	;  arcadeMode
   5178 32 62         [ 5] 2411 	leas	2,s	; ,,
   517A 20 17         [ 3] 2412 	bra	L105	; 
   517C                    2413 L103:
                           2414 ;----- asm -----
                           2415 ;  669 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2416 	; #ENR#[498]				startLevel();
                           2417 ;  0 "" 2
                           2418 ;--- end asm ---
   517C BD 4D 5A      [ 8] 2419 	jsr	_startLevel	; 
   517F 20 12         [ 3] 2420 	bra	L105	; 
   5181                    2421 L102:
                           2422 ;----- asm -----
                           2423 ;  673 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2424 	; #ENR#[501]			levelNumber++;
                           2425 ;  0 "" 2
                           2426 ;--- end asm ---
   5181 F6 C8 83      [ 5] 2427 	ldb	_levelNumber	;  levelNumber.69, levelNumber
   5184 5C            [ 2] 2428 	incb	;  levelNumber.69
   5185 F7 C8 83      [ 5] 2429 	stb	_levelNumber	;  levelNumber.69, levelNumber
                           2430 ;----- asm -----
                           2431 ;  675 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2432 	; #ENR#[502]			if (levelNumber >= levelCount) levelNumber = 0;
                           2433 ;  0 "" 2
                           2434 ;--- end asm ---
   5188 F1 54 7F      [ 5] 2435 	cmpb	_levelCount	;cmpqi:	;  levelNumber.69, levelCount
   518B 25 03         [ 3] 2436 	blo	L104	; 
   518D 7F C8 83      [ 7] 2437 	clr	_levelNumber	;  levelNumber
   5190                    2438 L104:
                           2439 ;----- asm -----
                           2440 ;  677 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2441 	; #ENR#[503]			startLevel();
                           2442 ;  0 "" 2
                           2443 ;--- end asm ---
   5190 BD 4D 5A      [ 8] 2444 	jsr	_startLevel	; 
   5193                    2445 L105:
   5193 32 64         [ 5] 2446 	leas	4,s	; ,,
   5195 35 E0         [ 8] 2447 	puls	y,u,pc	; 
                           2448 	.globl _setBank
   5197                    2449 _setBank:
   5197 32 7F         [ 5] 2450 	leas	-1,s	; ,,
   5199 E7 E4         [ 4] 2451 	stb	,s	;  bank, bank
                           2452 ;----- asm -----
                           2453 ;  186 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2454 	; #ENR#[178]	*vecx = 16 + bank;
                           2455 ;  0 "" 2
                           2456 ;--- end asm ---
   519B CB 10         [ 2] 2457 	addb	#16	;  bank,
   519D E7 9F C8 86   [ 9] 2458 	stb	[_vecx]	;  bank,* vecx
                           2459 ;----- asm -----
                           2460 ;  188 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2461 	; #ENR#[179]	sendCommand(CMD_SET_BANK, bank);
                           2462 ;  0 "" 2
                           2463 ;--- end asm ---
   51A1 E6 E4         [ 4] 2464 	ldb	,s	; , bank
   51A3 34 04         [ 6] 2465 	pshs	b	; 
   51A5 C6 05         [ 2] 2466 	ldb	#5	; ,
   51A7 BD 4D 27      [ 8] 2467 	jsr	_sendCommand	; 
   51AA 32 62         [ 5] 2468 	leas	2,s	; ,,
   51AC 39            [ 5] 2469 	rts
                           2470 	.globl _blockWaiting
   51AD                    2471 _blockWaiting:
                           2472 ;----- asm -----
                           2473 ;  408 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2474 	; #ENR#[341]	drawField();
                           2475 ;  0 "" 2
                           2476 ;--- end asm ---
   51AD BD 49 55      [ 8] 2477 	jsr	_drawField	; 
                           2478 ;----- asm -----
                           2479 ;  410 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2480 	; #ENR#[342]	drawBlock(0);
                           2481 ;  0 "" 2
                           2482 ;--- end asm ---
   51B0 5F            [ 2] 2483 	clrb	; 
   51B1 BD 04 B4      [ 8] 2484 	jsr	_drawBlock	; 
                           2485 ;----- asm -----
                           2486 ;  412 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2487 	; #ENR#[343]	joybit();
                           2488 ;  0 "" 2
                           2489 ;  2354 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   51B4 BD F1 F8      [ 8] 2490 	jsr ___Joy_Digital; BIOS call
                           2491 ;  0 "" 2
                           2492 ;  414 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2493 	; #ENR#[344]	if (pot0 < -10) {
                           2494 ;  0 "" 2
                           2495 ;--- end asm ---
   51B7 F6 C8 1B      [ 5] 2496 	ldb	-14309	;  D.2345,
   51BA C1 F6         [ 2] 2497 	cmpb	#-10	;cmpqi:	;  D.2345,
   51BC 2C 0C         [ 3] 2498 	bge	L109	; 
                           2499 ;----- asm -----
                           2500 ;  416 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2501 	; #ENR#[345]		moveBlock(Left);
                           2502 ;  0 "" 2
                           2503 ;--- end asm ---
   51BE 5F            [ 2] 2504 	clrb	; 
   51BF BD 4B 83      [ 8] 2505 	jsr	_moveBlock	; 
                           2506 ;----- asm -----
                           2507 ;  418 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2508 	; #ENR#[346]		gameState = BlockMoving;
                           2509 ;  0 "" 2
                           2510 ;--- end asm ---
   51C2 C6 06         [ 2] 2511 	ldb	#6	; ,
   51C4 F7 CB 05      [ 5] 2512 	stb	_gameState	; , gameState
   51C7 7E 52 01      [ 4] 2513 	jmp	L110	; 
   51CA                    2514 L109:
   51CA F6 C8 1B      [ 5] 2515 	ldb	-14309	;  D.2346,
   51CD C1 0A         [ 2] 2516 	cmpb	#10	;cmpqi:	;  D.2346,
   51CF 2F 0C         [ 3] 2517 	ble	L111	; 
                           2518 ;----- asm -----
                           2519 ;  421 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2520 	; #ENR#[348]		moveBlock(Right);
                           2521 ;  0 "" 2
                           2522 ;--- end asm ---
   51D1 C6 02         [ 2] 2523 	ldb	#2	; ,
   51D3 BD 4B 83      [ 8] 2524 	jsr	_moveBlock	; 
                           2525 ;----- asm -----
                           2526 ;  423 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2527 	; #ENR#[349]		gameState = BlockMoving;
                           2528 ;  0 "" 2
                           2529 ;--- end asm ---
   51D6 C6 06         [ 2] 2530 	ldb	#6	; ,
   51D8 F7 CB 05      [ 5] 2531 	stb	_gameState	; , gameState
   51DB 20 24         [ 3] 2532 	bra	L110	; 
   51DD                    2533 L111:
   51DD F6 C8 1C      [ 5] 2534 	ldb	-14308	;  D.2348,
   51E0 C1 F6         [ 2] 2535 	cmpb	#-10	;cmpqi:	;  D.2348,
   51E2 2C 0C         [ 3] 2536 	bge	L112	; 
                           2537 ;----- asm -----
                           2538 ;  426 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2539 	; #ENR#[351]		moveBlock(Down);
                           2540 ;  0 "" 2
                           2541 ;--- end asm ---
   51E4 C6 03         [ 2] 2542 	ldb	#3	; ,
   51E6 BD 4B 83      [ 8] 2543 	jsr	_moveBlock	; 
                           2544 ;----- asm -----
                           2545 ;  428 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2546 	; #ENR#[352]		gameState = BlockMoving;
                           2547 ;  0 "" 2
                           2548 ;--- end asm ---
   51E9 C6 06         [ 2] 2549 	ldb	#6	; ,
   51EB F7 CB 05      [ 5] 2550 	stb	_gameState	; , gameState
   51EE 20 11         [ 3] 2551 	bra	L110	; 
   51F0                    2552 L112:
   51F0 F6 C8 1C      [ 5] 2553 	ldb	-14308	;  D.2349,
   51F3 C1 0A         [ 2] 2554 	cmpb	#10	;cmpqi:	;  D.2349,
   51F5 2F 0A         [ 3] 2555 	ble	L110	; 
                           2556 ;----- asm -----
                           2557 ;  431 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2558 	; #ENR#[354]		moveBlock(Up);
                           2559 ;  0 "" 2
                           2560 ;--- end asm ---
   51F7 C6 01         [ 2] 2561 	ldb	#1	; ,
   51F9 BD 4B 83      [ 8] 2562 	jsr	_moveBlock	; 
                           2563 ;----- asm -----
                           2564 ;  433 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2565 	; #ENR#[355]		gameState = BlockMoving;
                           2566 ;  0 "" 2
                           2567 ;--- end asm ---
   51FC C6 06         [ 2] 2568 	ldb	#6	; ,
   51FE F7 CB 05      [ 5] 2569 	stb	_gameState	; , gameState
   5201                    2570 L110:
                           2571 ;----- asm -----
                           2572 ;  436 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2573 	; #ENR#[357]	if (gameState == BlockMoving) {
                           2574 ;  0 "" 2
                           2575 ;--- end asm ---
   5201 F6 CB 05      [ 5] 2576 	ldb	_gameState	; , gameState
   5204 C1 06         [ 2] 2577 	cmpb	#6	;cmpqi:	; ,
   5206 26 0C         [ 3] 2578 	bne	L113	; 
                           2579 ;----- asm -----
                           2580 ;  438 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2581 	; #ENR#[358]		changeMusic(movingMusic);
                           2582 ;  0 "" 2
                           2583 ;--- end asm ---
   5208 8E 53 DF      [ 3] 2584 	ldx	#_movingMusic	; ,
   520B BD 49 4C      [ 8] 2585 	jsr	_changeMusic	; 
                           2586 ;----- asm -----
                           2587 ;  440 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2588 	; #ENR#[359]		*vecx = 3;
                           2589 ;  0 "" 2
                           2590 ;--- end asm ---
   520E C6 03         [ 2] 2591 	ldb	#3	; ,
   5210 E7 9F C8 86   [ 9] 2592 	stb	[_vecx]	; ,* vecx
   5214                    2593 L113:
                           2594 ;----- asm -----
                           2595 ;  444 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2596 	; #ENR#[362]    	Read_Btns();
                           2597 ;  0 "" 2
                           2598 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5214 BD F1 BA      [ 8] 2599 	jsr ___Read_Btns; BIOS call
                           2600 ;  0 "" 2
                           2601 ;  446 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2602 	; #ENR#[363]    	if (Vec_Buttons & 1) {
                           2603 ;  0 "" 2
                           2604 ;--- end asm ---
   5217 F6 C8 11      [ 5] 2605 	ldb	_Vec_Buttons	; , Vec_Buttons
   521A C5 01         [ 2] 2606 	bitb	#1	; ,
   521C 27 08         [ 3] 2607 	beq	L114	; 
                           2608 ;----- asm -----
                           2609 ;  448 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2610 	; #ENR#[364]		if (splitMode) {
                           2611 ;  0 "" 2
                           2612 ;--- end asm ---
   521E 7D C8 8C      [ 7] 2613 	tst	_splitMode	;  splitMode
   5221 27 03         [ 3] 2614 	beq	L114	; 
                           2615 ;----- asm -----
                           2616 ;  450 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2617 	; #ENR#[365]			swapSplit();
                           2618 ;  0 "" 2
                           2619 ;--- end asm ---
   5223 BD 04 8F      [ 8] 2620 	jsr	_swapSplit	; 
   5226                    2621 L114:
                           2622 ;----- asm -----
                           2623 ;  454 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2624 	; #ENR#[368]    	if ((Vec_Buttons & 2) && !arcadeMode) {
                           2625 ;  0 "" 2
                           2626 ;--- end asm ---
   5226 F6 C8 11      [ 5] 2627 	ldb	_Vec_Buttons	; , Vec_Buttons
   5229 C5 02         [ 2] 2628 	bitb	#2	; ,
   522B 27 1D         [ 3] 2629 	beq	L115	; 
   522D 7D CB 02      [ 7] 2630 	tst	_arcadeMode	;  arcadeMode
   5230 26 18         [ 3] 2631 	bne	L115	; 
                           2632 ;----- asm -----
                           2633 ;  456 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2634 	; #ENR#[369]		levelNumber++;
                           2635 ;  0 "" 2
                           2636 ;--- end asm ---
   5232 F6 C8 83      [ 5] 2637 	ldb	_levelNumber	;  levelNumber.37, levelNumber
   5235 5C            [ 2] 2638 	incb	;  levelNumber.37
   5236 F7 C8 83      [ 5] 2639 	stb	_levelNumber	;  levelNumber.37, levelNumber
                           2640 ;----- asm -----
                           2641 ;  458 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2642 	; #ENR#[370]		if (levelNumber >= levelCount) {
                           2643 ;  0 "" 2
                           2644 ;--- end asm ---
   5239 F1 54 7F      [ 5] 2645 	cmpb	_levelCount	;cmpqi:	;  levelNumber.37, levelCount
   523C 25 09         [ 3] 2646 	blo	L116	; 
                           2647 ;----- asm -----
                           2648 ;  460 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2649 	; #ENR#[371]			levelNumber = 0;
                           2650 ;  0 "" 2
                           2651 ;--- end asm ---
   523E 7F C8 83      [ 7] 2652 	clr	_levelNumber	;  levelNumber
                           2653 ;----- asm -----
                           2654 ;  462 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2655 	; #ENR#[372]			setBank(nextBank);
                           2656 ;  0 "" 2
                           2657 ;--- end asm ---
   5241 F6 54 81      [ 5] 2658 	ldb	_nextBank	; , nextBank
   5244 BD 51 97      [ 8] 2659 	jsr	_setBank	; 
   5247                    2660 L116:
                           2661 ;----- asm -----
                           2662 ;  465 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2663 	; #ENR#[374]    		startLevel();
                           2664 ;  0 "" 2
                           2665 ;--- end asm ---
   5247 BD 4D 5A      [ 8] 2666 	jsr	_startLevel	; 
   524A                    2667 L115:
                           2668 ;----- asm -----
                           2669 ;  468 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2670 	; #ENR#[376]    	if ((Vec_Buttons & 4) && !arcadeMode) {
                           2671 ;  0 "" 2
                           2672 ;--- end asm ---
   524A F6 C8 11      [ 5] 2673 	ldb	_Vec_Buttons	; , Vec_Buttons
   524D C5 04         [ 2] 2674 	bitb	#4	; ,
   524F 27 20         [ 3] 2675 	beq	L117	; 
   5251 7D CB 02      [ 7] 2676 	tst	_arcadeMode	;  arcadeMode
   5254 26 1B         [ 3] 2677 	bne	L117	; 
                           2678 ;----- asm -----
                           2679 ;  470 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2680 	; #ENR#[377]		if (levelNumber > 0) {
                           2681 ;  0 "" 2
                           2682 ;--- end asm ---
   5256 F6 C8 83      [ 5] 2683 	ldb	_levelNumber	;  levelNumber.311, levelNumber
   5259 27 06         [ 3] 2684 	beq	L118	; 
                           2685 ;----- asm -----
                           2686 ;  472 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2687 	; #ENR#[378]			levelNumber--;
                           2688 ;  0 "" 2
                           2689 ;--- end asm ---
   525B 5A            [ 2] 2690 	decb	;  levelNumber.311
   525C F7 C8 83      [ 5] 2691 	stb	_levelNumber	;  levelNumber.311, levelNumber
   525F 20 0D         [ 3] 2692 	bra	L119	; 
   5261                    2693 L118:
                           2694 ;----- asm -----
                           2695 ;  475 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2696 	; #ENR#[380]	    		levelNumber = levelCount - 1;
                           2697 ;  0 "" 2
                           2698 ;--- end asm ---
   5261 F6 54 7F      [ 5] 2699 	ldb	_levelCount	; , levelCount
   5264 5A            [ 2] 2700 	decb	; 
   5265 F7 C8 83      [ 5] 2701 	stb	_levelNumber	; , levelNumber
                           2702 ;----- asm -----
                           2703 ;  477 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2704 	; #ENR#[381]    			setBank(nextBank);
                           2705 ;  0 "" 2
                           2706 ;--- end asm ---
   5268 F6 54 81      [ 5] 2707 	ldb	_nextBank	; , nextBank
   526B BD 51 97      [ 8] 2708 	jsr	_setBank	; 
   526E                    2709 L119:
                           2710 ;----- asm -----
                           2711 ;  480 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2712 	; #ENR#[383]    		startLevel();
                           2713 ;  0 "" 2
                           2714 ;--- end asm ---
   526E BD 4D 5A      [ 8] 2715 	jsr	_startLevel	; 
   5271                    2716 L117:
                           2717 ;----- asm -----
                           2718 ;  483 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2719 	; #ENR#[385]	if (Vec_Buttons & 8) {
                           2720 ;  0 "" 2
                           2721 ;--- end asm ---
   5271 F6 C8 11      [ 5] 2722 	ldb	_Vec_Buttons	; , Vec_Buttons
   5274 C5 08         [ 2] 2723 	bitb	#8	; ,
   5276 27 03         [ 3] 2724 	beq	L121	; 
                           2725 ;----- asm -----
                           2726 ;  485 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2727 	; #ENR#[386]		gameState = MainMenu;
                           2728 ;  0 "" 2
                           2729 ;--- end asm ---
   5278 7F CB 05      [ 7] 2730 	clr	_gameState	;  gameState
   527B                    2731 L121:
   527B 39            [ 5] 2732 	rts
                           2733 	.globl _main
   527C                    2734 _main:
   527C 34 60         [ 7] 2735 	pshs	y,u	; 
   527E 32 7C         [ 5] 2736 	leas	-4,s	; ,,
                           2737 ;----- asm -----
                           2738 ;  916 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2739 	; #ENR#[654]	setBank(0);
                           2740 ;  0 "" 2
                           2741 ;--- end asm ---
   5280 5F            [ 2] 2742 	clrb	; 
   5281 BD 51 97      [ 8] 2743 	jsr	_setBank	; 
                           2744 ;----- asm -----
                           2745 ;  920 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2746 	; #ENR#[657]	*vecx = 4;
                           2747 ;  0 "" 2
                           2748 ;--- end asm ---
   5284 C6 04         [ 2] 2749 	ldb	#4	; ,
   5286 E7 9F C8 86   [ 9] 2750 	stb	[_vecx]	; ,* vecx
                           2751 ;----- asm -----
                           2752 ;  924 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2753 	; #ENR#[660]	picAvailable = 0;
                           2754 ;  0 "" 2
                           2755 ;--- end asm ---
   528A 7F CB 01      [ 7] 2756 	clr	_picAvailable	;  picAvailable
                           2757 ;----- asm -----
                           2758 ;  926 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2759 	; #ENR#[661]	sendCommand(CMD_VERSION, 0);
                           2760 ;  0 "" 2
                           2761 ;--- end asm ---
   528D 6F E2         [ 8] 2762 	clr	,-s	; 
   528F C6 01         [ 2] 2763 	ldb	#1	; ,
   5291 BD 4D 27      [ 8] 2764 	jsr	_sendCommand	; 
                           2765 ;----- asm -----
                           2766 ;  928 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2767 	; #ENR#[662]	sendCommand(CMD_VERSION, 0);
                           2768 ;  0 "" 2
                           2769 ;--- end asm ---
   5294 6F E2         [ 8] 2770 	clr	,-s	; 
   5296 C6 01         [ 2] 2771 	ldb	#1	; ,
   5298 BD 4D 27      [ 8] 2772 	jsr	_sendCommand	; 
                           2773 ;----- asm -----
                           2774 ;  930 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2775 	; #ENR#[663]	if (sendCommand(CMD_VERSION, 0) == 4) {
                           2776 ;  0 "" 2
                           2777 ;--- end asm ---
   529B 6F E2         [ 8] 2778 	clr	,-s	; 
   529D C6 01         [ 2] 2779 	ldb	#1	; ,
   529F BD 4D 27      [ 8] 2780 	jsr	_sendCommand	; 
   52A2 32 63         [ 5] 2781 	leas	3,s	; ,,
   52A4 C1 04         [ 2] 2782 	cmpb	#4	;cmpqi:	;  D.2491,
   52A6 26 05         [ 3] 2783 	bne	L123	; 
                           2784 ;----- asm -----
                           2785 ;  932 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2786 	; #ENR#[664]		picAvailable = 1;
                           2787 ;  0 "" 2
                           2788 ;--- end asm ---
   52A8 C6 01         [ 2] 2789 	ldb	#1	; ,
   52AA F7 CB 01      [ 5] 2790 	stb	_picAvailable	; , picAvailable
   52AD                    2791 L123:
                           2792 ;----- asm -----
                           2793 ;  937 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2794 	; #ENR#[668]	epot0 = 1;
                           2795 ;  0 "" 2
                           2796 ;--- end asm ---
   52AD C6 01         [ 2] 2797 	ldb	#1	; ,
   52AF F7 C8 1F      [ 5] 2798 	stb	-14305	; ,
                           2799 ;----- asm -----
                           2800 ;  939 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2801 	; #ENR#[669]	epot1 = 3;
                           2802 ;  0 "" 2
                           2803 ;--- end asm ---
   52B2 C6 03         [ 2] 2804 	ldb	#3	; ,
   52B4 F7 C8 20      [ 5] 2805 	stb	-14304	; ,
                           2806 ;----- asm -----
                           2807 ;  941 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2808 	; #ENR#[670]	epot2 = 0;
                           2809 ;  0 "" 2
                           2810 ;--- end asm ---
   52B7 7F C8 21      [ 7] 2811 	clr	-14303	; 
                           2812 ;----- asm -----
                           2813 ;  943 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2814 	; #ENR#[671]	epot3 = 0;
                           2815 ;  0 "" 2
                           2816 ;--- end asm ---
   52BA 7F C8 22      [ 7] 2817 	clr	-14302	; 
                           2818 ;----- asm -----
                           2819 ;  946 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2820 	; #ENR#[673]	gameState = MainMenu;
                           2821 ;  0 "" 2
                           2822 ;--- end asm ---
   52BD 7F CB 05      [ 7] 2823 	clr	_gameState	;  gameState
                           2824 ;----- asm -----
                           2825 ;  948 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2826 	; #ENR#[674]	musicInit();
                           2827 ;  0 "" 2
                           2828 ;--- end asm ---
   52C0 BD 54 1F      [ 8] 2829 	jsr	_musicInit	; 
                           2830 ;----- asm -----
                           2831 ;  951 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2832 	; #ENR#[676]	while (1) {
                           2833 ;  0 "" 2
                           2834 ;--- end asm ---
   52C3                    2835 L138:
                           2836 ;----- asm -----
                           2837 ;  954 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2838 	; #ENR#[678]		frwait();
                           2839 ;  0 "" 2
                           2840 ;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   52C3 BD F1 92      [ 8] 2841 	jsr ___Wait_Recal; BIOS call
                           2842 ;  0 "" 2
                           2843 ;  957 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2844 	; #ENR#[680]		switch (gameState) {
                           2845 ;  0 "" 2
                           2846 ;--- end asm ---
   52C6 F6 CB 05      [ 5] 2847 	ldb	_gameState	; , gameState
   52C9 C1 08         [ 2] 2848 	cmpb	#8	;cmpqi:	; ,
   52CB 10 22 00 69   [ 6] 2849 	lbhi	L124	; 
   52CF 4F            [ 2] 2850 	clra		;zero_extendqihi: R:b -> R:d	; ,
   52D0 ED E4         [ 5] 2851 	std	,s	; ,
   52D2 58            [ 2] 2852 	aslb	; 
   52D3 49            [ 2] 2853 	rola	; 
   52D4 1F 01         [ 6] 2854 	tfr	d,x	; , tmp38
   52D6 6E 99 52 DA   [10] 2855 	jmp	[L134,x]	; , tmp38
   52DA                    2856 L134:
   52DA 52 EC              2857 	.word L125
   52DC 52 FE              2858 	.word L126
   52DE 53 07              2859 	.word L127
   52E0 52 F5              2860 	.word L128
   52E2 53 10              2861 	.word L129
   52E4 53 19              2862 	.word L130
   52E6 53 22              2863 	.word L131
   52E8 53 2A              2864 	.word L132
   52EA 53 32              2865 	.word L133
   52EC                    2866 L125:
                           2867 ;----- asm -----
                           2868 ;  961 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2869 	; #ENR#[682]        			mainMenu();
                           2870 ;  0 "" 2
                           2871 ;--- end asm ---
   52EC BD 4F 2F      [ 8] 2872 	jsr	_mainMenu	; 
                           2873 ;----- asm -----
                           2874 ;  963 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2875 	; #ENR#[683]				musicPlay();
                           2876 ;  0 "" 2
                           2877 ;--- end asm ---
   52EF BD 54 29      [ 8] 2878 	jsr	_musicPlay	; 
                           2879 ;----- asm -----
                           2880 ;  965 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2881 	; #ENR#[684]        			break;
                           2882 ;  0 "" 2
                           2883 ;--- end asm ---
   52F2 7E 53 38      [ 4] 2884 	jmp	L124	; 
   52F5                    2885 L128:
                           2886 ;----- asm -----
                           2887 ;  969 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2888 	; #ENR#[686]				clearMenu();
                           2889 ;  0 "" 2
                           2890 ;--- end asm ---
   52F5 BD 50 33      [ 8] 2891 	jsr	_clearMenu	; 
                           2892 ;----- asm -----
                           2893 ;  971 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2894 	; #ENR#[687]				musicPlay();
                           2895 ;  0 "" 2
                           2896 ;--- end asm ---
   52F8 BD 54 29      [ 8] 2897 	jsr	_musicPlay	; 
                           2898 ;----- asm -----
                           2899 ;  973 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2900 	; #ENR#[688]				break;
                           2901 ;  0 "" 2
                           2902 ;--- end asm ---
   52FB 7E 53 38      [ 4] 2903 	jmp	L124	; 
   52FE                    2904 L126:
                           2905 ;----- asm -----
                           2906 ;  977 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2907 	; #ENR#[690]				arcadeMenu();
                           2908 ;  0 "" 2
                           2909 ;--- end asm ---
   52FE BD 4E 32      [ 8] 2910 	jsr	_arcadeMenu	; 
                           2911 ;----- asm -----
                           2912 ;  979 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2913 	; #ENR#[691]				musicPlay();
                           2914 ;  0 "" 2
                           2915 ;--- end asm ---
   5301 BD 54 29      [ 8] 2916 	jsr	_musicPlay	; 
                           2917 ;----- asm -----
                           2918 ;  981 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2919 	; #ENR#[692]				break;
                           2920 ;  0 "" 2
                           2921 ;--- end asm ---
   5304 7E 53 38      [ 4] 2922 	jmp	L124	; 
   5307                    2923 L127:
                           2924 ;----- asm -----
                           2925 ;  985 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2926 	; #ENR#[694]				arcadeEnd();
                           2927 ;  0 "" 2
                           2928 ;--- end asm ---
   5307 BD 49 B2      [ 8] 2929 	jsr	_arcadeEnd	; 
                           2930 ;----- asm -----
                           2931 ;  987 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2932 	; #ENR#[695]				musicPlay();
                           2933 ;  0 "" 2
                           2934 ;--- end asm ---
   530A BD 54 29      [ 8] 2935 	jsr	_musicPlay	; 
                           2936 ;----- asm -----
                           2937 ;  989 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2938 	; #ENR#[696]				break;
                           2939 ;  0 "" 2
                           2940 ;--- end asm ---
   530D 7E 53 38      [ 4] 2941 	jmp	L124	; 
   5310                    2942 L129:
                           2943 ;----- asm -----
                           2944 ;  993 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2945 	; #ENR#[698]				showInfo();
                           2946 ;  0 "" 2
                           2947 ;--- end asm ---
   5310 BD 4B 01      [ 8] 2948 	jsr	_showInfo	; 
                           2949 ;----- asm -----
                           2950 ;  995 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2951 	; #ENR#[699]        			blockMovingToStart();
                           2952 ;  0 "" 2
                           2953 ;--- end asm ---
   5313 BD 4B 2B      [ 8] 2954 	jsr	_blockMovingToStart	; 
                           2955 ;----- asm -----
                           2956 ;  997 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2957 	; #ENR#[700]        			break;
                           2958 ;  0 "" 2
                           2959 ;--- end asm ---
   5316 7E 53 38      [ 4] 2960 	jmp	L124	; 
   5319                    2961 L130:
                           2962 ;----- asm -----
                           2963 ;  1001 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2964 	; #ENR#[702]				showInfo();
                           2965 ;  0 "" 2
                           2966 ;--- end asm ---
   5319 BD 4B 01      [ 8] 2967 	jsr	_showInfo	; 
                           2968 ;----- asm -----
                           2969 ;  1003 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2970 	; #ENR#[703]        			blockWaiting();
                           2971 ;  0 "" 2
                           2972 ;--- end asm ---
   531C BD 51 AD      [ 8] 2973 	jsr	_blockWaiting	; 
                           2974 ;----- asm -----
                           2975 ;  1005 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2976 	; #ENR#[704]        			break;
                           2977 ;  0 "" 2
                           2978 ;--- end asm ---
   531F 7E 53 38      [ 4] 2979 	jmp	L124	; 
   5322                    2980 L131:
                           2981 ;----- asm -----
                           2982 ;  1009 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2983 	; #ENR#[706]				showInfo();
                           2984 ;  0 "" 2
                           2985 ;--- end asm ---
   5322 BD 4B 01      [ 8] 2986 	jsr	_showInfo	; 
                           2987 ;----- asm -----
                           2988 ;  1011 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2989 	; #ENR#[707]        			blockMoving();
                           2990 ;  0 "" 2
                           2991 ;--- end asm ---
   5325 BD 4B B5      [ 8] 2992 	jsr	_blockMoving	; 
                           2993 ;----- asm -----
                           2994 ;  1013 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2995 	; #ENR#[708]        			break;
                           2996 ;  0 "" 2
                           2997 ;--- end asm ---
   5328 20 0E         [ 3] 2998 	bra	L124	; 
   532A                    2999 L132:
                           3000 ;----- asm -----
                           3001 ;  1017 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3002 	; #ENR#[710]				showInfo();
                           3003 ;  0 "" 2
                           3004 ;--- end asm ---
   532A BD 4B 01      [ 8] 3005 	jsr	_showInfo	; 
                           3006 ;----- asm -----
                           3007 ;  1019 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3008 	; #ENR#[711]        			blockFalling();
                           3009 ;  0 "" 2
                           3010 ;--- end asm ---
   532D BD 4F D7      [ 8] 3011 	jsr	_blockFalling	; 
                           3012 ;----- asm -----
                           3013 ;  1021 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3014 	; #ENR#[712]        			break;
                           3015 ;  0 "" 2
                           3016 ;--- end asm ---
   5330 20 06         [ 3] 3017 	bra	L124	; 
   5332                    3018 L133:
                           3019 ;----- asm -----
                           3020 ;  1025 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3021 	; #ENR#[714]				showInfo();
                           3022 ;  0 "" 2
                           3023 ;--- end asm ---
   5332 BD 4B 01      [ 8] 3024 	jsr	_showInfo	; 
                           3025 ;----- asm -----
                           3026 ;  1027 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3027 	; #ENR#[715]        			blockMovingAtEnd();
                           3028 ;  0 "" 2
                           3029 ;--- end asm ---
   5335 BD 50 B7      [ 8] 3030 	jsr	_blockMovingAtEnd	; 
                           3031 ;----- asm -----
                           3032 ;  1029 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3033 	; #ENR#[716]        			break;
                           3034 ;  0 "" 2
                           3035 ;--- end asm ---
   5338                    3036 L124:
                           3037 ;----- asm -----
                           3038 ;  1034 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3039 	; #ENR#[720]		if (gameState > ClearMenu) {
                           3040 ;  0 "" 2
                           3041 ;--- end asm ---
   5338 F6 CB 05      [ 5] 3042 	ldb	_gameState	; , gameState
   533B C1 03         [ 2] 3043 	cmpb	#3	;cmpqi:	; ,
   533D 23 13         [ 3] 3044 	bls	L135	; 
                           3045 ;----- asm -----
                           3046 ;  1036 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3047 	; #ENR#[721]    			DP_to_C8();
                           3048 ;  0 "" 2
                           3049 ;  316 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   533F BD F1 AF      [ 8] 3050 	jsr ___DP_to_C8; BIOS call
                           3051 ;  0 "" 2
                           3052 ;  1038 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3053 	; #ENR#[722]    			replay(currentMusic);
                           3054 ;  0 "" 2
                           3055 ;--- end asm ---
   5342 BE C8 84      [ 6] 3056 	ldx	_currentMusic	; , currentMusic
   5345 AF 62         [ 6] 3057 	stx	2,s	; , u
                           3058 ;----- asm -----
                           3059 ;  2917 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5347 EE 62         [ 6] 3060 	ldu 2,s	;  u
   5349 BD F6 87      [ 8] 3061 	jsr ___Init_Music_chk; BIOS call
                           3062 ;  0 "" 2
                           3063 ;  1040 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3064 	; #ENR#[723]    			DP_to_D0();
                           3065 ;  0 "" 2
                           3066 ;  300 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   534C BD F1 AA      [ 8] 3067 	jsr ___DP_to_D0; BIOS call
                           3068 ;  0 "" 2
                           3069 ;  1042 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3070 	; #ENR#[724]    			reqout();
                           3071 ;  0 "" 2
                           3072 ;  2880 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   534F BD F2 89      [ 8] 3073 	jsr ___Do_Sound; BIOS call
                           3074 ;  0 "" 2
                           3075 ;--- end asm ---
   5352                    3076 L135:
                           3077 ;----- asm -----
                           3078 ;  1047 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3079 	; #ENR#[728]		if (arcadeMode) {
                           3080 ;  0 "" 2
                           3081 ;--- end asm ---
   5352 7D CB 02      [ 7] 3082 	tst	_arcadeMode	;  arcadeMode
   5355 10 27 FF 6A   [ 6] 3083 	lbeq	L138	; 
                           3084 ;----- asm -----
                           3085 ;  1049 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3086 	; #ENR#[729]			frames++;
                           3087 ;  0 "" 2
                           3088 ;--- end asm ---
   5359 FC CA FD      [ 6] 3089 	ldd	_frames	;  frames.83, frames
   535C C3 00 01      [ 4] 3090 	addd	#1	;  frames.83,
   535F FD CA FD      [ 6] 3091 	std	_frames	;  frames.83, frames
                           3092 ;----- asm -----
                           3093 ;  1051 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3094 	; #ENR#[730]			if (frames == 50) {
                           3095 ;  0 "" 2
                           3096 ;--- end asm ---
   5362 10 83 00 32   [ 5] 3097 	cmpd	#50	;cmphi:	;  frames.83,
   5366 10 26 FF 59   [ 6] 3098 	lbne	L138	; 
                           3099 ;----- asm -----
                           3100 ;  1053 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3101 	; #ENR#[731]				frames = 0;
                           3102 ;  0 "" 2
                           3103 ;--- end asm ---
   536A CC 00 00      [ 3] 3104 	ldd	#0	; ,
   536D FD CA FD      [ 6] 3105 	std	_frames	; , frames
                           3106 ;----- asm -----
                           3107 ;  1055 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3108 	; #ENR#[732]				if (moveCount < 999) {
                           3109 ;  0 "" 2
                           3110 ;--- end asm ---
   5370 BE CA FB      [ 6] 3111 	ldx	_moveCount	;  moveCount.84, moveCount
   5373 8C 03 E6      [ 4] 3112 	cmpx	#998	;cmphi:	;  moveCount.84,
   5376 10 22 FF 49   [ 6] 3113 	lbhi	L138	; 
                           3114 ;----- asm -----
                           3115 ;  1057 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3116 	; #ENR#[733]					moveCount++;
                           3117 ;  0 "" 2
                           3118 ;--- end asm ---
   537A 30 01         [ 5] 3119 	leax	1,x	; ,, moveCount.84
   537C BF CA FB      [ 6] 3120 	stx	_moveCount	; , moveCount
                           3121 ;----- asm -----
                           3122 ;  1059 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3123 	; #ENR#[734]					updateInfoText();
                           3124 ;  0 "" 2
                           3125 ;--- end asm ---
   537F BD 4B 44      [ 8] 3126 	jsr	_updateInfoText	; 
   5382 7E 52 C3      [ 4] 3127 	jmp	L138	; 
                           3128 	.globl _startMusic
   5385                    3129 _startMusic:
   5385 FE                 3130 	.byte	-2
   5386 E8                 3131 	.byte	-24
   5387 FE                 3132 	.byte	-2
   5388 B6                 3133 	.byte	-74
   5389 01                 3134 	.byte	1
   538A 01                 3135 	.byte	1
   538B 02                 3136 	.byte	2
   538C 01                 3137 	.byte	1
   538D 03                 3138 	.byte	3
   538E 01                 3139 	.byte	1
   538F 04                 3140 	.byte	4
   5390 01                 3141 	.byte	1
   5391 05                 3142 	.byte	5
   5392 01                 3143 	.byte	1
   5393 06                 3144 	.byte	6
   5394 01                 3145 	.byte	1
   5395 07                 3146 	.byte	7
   5396 01                 3147 	.byte	1
   5397 08                 3148 	.byte	8
   5398 01                 3149 	.byte	1
   5399 09                 3150 	.byte	9
   539A 01                 3151 	.byte	1
   539B 0A                 3152 	.byte	10
   539C 01                 3153 	.byte	1
   539D 0B                 3154 	.byte	11
   539E 01                 3155 	.byte	1
   539F 0C                 3156 	.byte	12
   53A0 01                 3157 	.byte	1
   53A1 0D                 3158 	.byte	13
   53A2 01                 3159 	.byte	1
   53A3 00                 3160 	.byte	0
   53A4 80                 3161 	.byte	-128
                           3162 	.globl _levelEndMusic
   53A5                    3163 _levelEndMusic:
   53A5 FE                 3164 	.byte	-2
   53A6 E8                 3165 	.byte	-24
   53A7 FE                 3166 	.byte	-2
   53A8 B6                 3167 	.byte	-74
   53A9 0D                 3168 	.byte	13
   53AA 01                 3169 	.byte	1
   53AB 0E                 3170 	.byte	14
   53AC 01                 3171 	.byte	1
   53AD 0F                 3172 	.byte	15
   53AE 01                 3173 	.byte	1
   53AF 10                 3174 	.byte	16
   53B0 01                 3175 	.byte	1
   53B1 11                 3176 	.byte	17
   53B2 01                 3177 	.byte	1
   53B3 12                 3178 	.byte	18
   53B4 01                 3179 	.byte	1
   53B5 13                 3180 	.byte	19
   53B6 01                 3181 	.byte	1
   53B7 14                 3182 	.byte	20
   53B8 01                 3183 	.byte	1
   53B9 15                 3184 	.byte	21
   53BA 01                 3185 	.byte	1
   53BB 16                 3186 	.byte	22
   53BC 01                 3187 	.byte	1
   53BD 00                 3188 	.byte	0
   53BE 80                 3189 	.byte	-128
                           3190 	.globl _fallingMusic
   53BF                    3191 _fallingMusic:
   53BF FE                 3192 	.byte	-2
   53C0 E8                 3193 	.byte	-24
   53C1 FE                 3194 	.byte	-2
   53C2 B6                 3195 	.byte	-74
   53C3 0D                 3196 	.byte	13
   53C4 02                 3197 	.byte	2
   53C5 0C                 3198 	.byte	12
   53C6 02                 3199 	.byte	2
   53C7 0B                 3200 	.byte	11
   53C8 02                 3201 	.byte	2
   53C9 0A                 3202 	.byte	10
   53CA 02                 3203 	.byte	2
   53CB 09                 3204 	.byte	9
   53CC 02                 3205 	.byte	2
   53CD 08                 3206 	.byte	8
   53CE 02                 3207 	.byte	2
   53CF 07                 3208 	.byte	7
   53D0 02                 3209 	.byte	2
   53D1 06                 3210 	.byte	6
   53D2 02                 3211 	.byte	2
   53D3 05                 3212 	.byte	5
   53D4 02                 3213 	.byte	2
   53D5 04                 3214 	.byte	4
   53D6 02                 3215 	.byte	2
   53D7 03                 3216 	.byte	3
   53D8 02                 3217 	.byte	2
   53D9 02                 3218 	.byte	2
   53DA 02                 3219 	.byte	2
   53DB 01                 3220 	.byte	1
   53DC 02                 3221 	.byte	2
   53DD 00                 3222 	.byte	0
   53DE 80                 3223 	.byte	-128
                           3224 	.globl _movingMusic
   53DF                    3225 _movingMusic:
   53DF FD                 3226 	.byte	-3
   53E0 C3                 3227 	.byte	-61
   53E1 FE                 3228 	.byte	-2
   53E2 B6                 3229 	.byte	-74
   53E3 01                 3230 	.byte	1
   53E4 05                 3231 	.byte	5
   53E5 00                 3232 	.byte	0
   53E6 80                 3233 	.byte	-128
                           3234 	.globl _currentMusic
                           3235 	.area .data
   C884                    3236 _currentMusic:
   C884 53 85              3237 	.word	_startMusic
                           3238 	.globl _vecx
   C886                    3239 _vecx:
   C886 80 00              3240 	.word	-32768
                           3241 	.globl _led8
                           3242 	.area .text
   53E7                    3243 _led8:
   53E7 FF                 3244 	.byte	-1
   53E8 00                 3245 	.byte	0
   53E9 05                 3246 	.byte	5
   53EA FF                 3247 	.byte	-1
   53EB FB                 3248 	.byte	-5
   53EC 00                 3249 	.byte	0
   53ED FF                 3250 	.byte	-1
   53EE 00                 3251 	.byte	0
   53EF FB                 3252 	.byte	-5
   53F0 FF                 3253 	.byte	-1
   53F1 05                 3254 	.byte	5
   53F2 00                 3255 	.byte	0
   53F3 FF                 3256 	.byte	-1
   53F4 05                 3257 	.byte	5
   53F5 00                 3258 	.byte	0
   53F6 FF                 3259 	.byte	-1
   53F7 00                 3260 	.byte	0
   53F8 05                 3261 	.byte	5
   53F9 FF                 3262 	.byte	-1
   53FA FB                 3263 	.byte	-5
   53FB 00                 3264 	.byte	0
   53FC 01                 3265 	.byte	1
   53FD                    3266 _arcadeLevels:
   53FD 01                 3267 	.byte	1
   53FE 02                 3268 	.byte	2
   53FF 00                 3269 	.byte	0
   5400 00 00              3270 	.word	0	;skip space 2
   5402 04                 3271 	.byte	4
   5403 05                 3272 	.byte	5
   5404 06                 3273 	.byte	6
   5405 00                 3274 	.byte	0
   5406 00                 3275 	.byte	0	;skip space
   5407 07                 3276 	.byte	7
   5408 08                 3277 	.byte	8
   5409 09                 3278 	.byte	9
   540A 00                 3279 	.byte	0
   540B 00                 3280 	.byte	0	;skip space
   540C 0A                 3281 	.byte	10
   540D 0B                 3282 	.byte	11
   540E 0C                 3283 	.byte	12
   540F 00                 3284 	.byte	0
   5410 00                 3285 	.byte	0	;skip space
                           3286 	.area .bss
                           3287 	.globl	_infoText
   CAE7                    3288 _infoText:	.blkb	20
                           3289 	.globl	_moveCount
   CAFB                    3290 _moveCount:	.blkb	2
                           3291 	.globl	_frames
   CAFD                    3292 _frames:	.blkb	2
                           3293 	.globl	_levelHighscore
   CAFF                    3294 _levelHighscore:	.blkb	2
                           3295 	.globl	_picAvailable
   CB01                    3296 _picAvailable:	.blkb	1
                           3297 	.globl	_arcadeMode
   CB02                    3298 _arcadeMode:	.blkb	1
                           3299 	.globl	_arcadeSelection
   CB03                    3300 _arcadeSelection:	.blkb	1
                           3301 	.globl	_arcadeIndex
   CB04                    3302 _arcadeIndex:	.blkb	1
                           3303 	.globl	_gameState
   CB05                    3304 _gameState:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$bloxorz$100      003F GR  |   2 A$bloxorz$1003     03A5 GR
  2 A$bloxorz$1004     03A7 GR  |   2 A$bloxorz$1005     03A9 GR
  2 A$bloxorz$1006     03AB GR  |   2 A$bloxorz$1013     03AD GR
  2 A$bloxorz$1020     03B0 GR  |   2 A$bloxorz$1027     03B2 GR
  2 A$bloxorz$1028     03B4 GR  |   2 A$bloxorz$1029     03B6 GR
  2 A$bloxorz$1030     03B8 GR  |   2 A$bloxorz$1037     03BA GR
  2 A$bloxorz$1050     03BD GR  |   2 A$bloxorz$1051     03C0 GR
  2 A$bloxorz$1052     03C2 GR  |   2 A$bloxorz$1053     03C5 GR
  2 A$bloxorz$1054     03C8 GR  |   2 A$bloxorz$1055     03CA GR
  2 A$bloxorz$1056     03CD GR  |   2 A$bloxorz$1057     03D0 GR
  2 A$bloxorz$1058     03D2 GR  |   2 A$bloxorz$1059     03D5 GR
  2 A$bloxorz$106      0041 GR  |   2 A$bloxorz$1065     03D7 GR
  2 A$bloxorz$107      0043 GR  |   2 A$bloxorz$1071     03DA GR
  2 A$bloxorz$1072     03DC GR  |   2 A$bloxorz$1078     03DF GR
  2 A$bloxorz$1079     03E2 GR  |   2 A$bloxorz$108      0046 GR
  2 A$bloxorz$1085     03E5 GR  |   2 A$bloxorz$1086     03E7 GR
  2 A$bloxorz$1087     03EB GR  |   2 A$bloxorz$109      0048 GR
  2 A$bloxorz$1094     03ED GR  |   2 A$bloxorz$1095     03F0 GR
  2 A$bloxorz$1096     03F2 GR  |   2 A$bloxorz$1102     03F4 GR
  2 A$bloxorz$1103     03F6 GR  |   2 A$bloxorz$1110     03F9 GR
  2 A$bloxorz$1111     03FC GR  |   2 A$bloxorz$1112     03FE GR
  2 A$bloxorz$1113     0400 GR  |   2 A$bloxorz$1114     0402 GR
  2 A$bloxorz$1115     0404 GR  |   2 A$bloxorz$1116     0408 GR
  2 A$bloxorz$1123     040B GR  |   2 A$bloxorz$1124     040D GR
  2 A$bloxorz$1125     040F GR  |   2 A$bloxorz$1126     0411 GR
  2 A$bloxorz$1127     0413 GR  |   2 A$bloxorz$1128     0415 GR
  2 A$bloxorz$1129     0417 GR  |   2 A$bloxorz$1136     0419 GR
  2 A$bloxorz$1137     041C GR  |   2 A$bloxorz$1138     041E GR
  2 A$bloxorz$1139     0421 GR  |   2 A$bloxorz$1140     0424 GR
  2 A$bloxorz$1147     0426 GR  |   2 A$bloxorz$1154     0429 GR
  2 A$bloxorz$1155     042B GR  |   2 A$bloxorz$1156     042D GR
  2 A$bloxorz$116      004C GR  |   2 A$bloxorz$1162     042F GR
  2 A$bloxorz$1163     0432 GR  |   2 A$bloxorz$1164     0434 GR
  2 A$bloxorz$1165     0437 GR  |   2 A$bloxorz$1166     043A GR
  2 A$bloxorz$117      004E GR  |   2 A$bloxorz$1173     043C GR
  2 A$bloxorz$1174     043E GR  |   2 A$bloxorz$1175     0440 GR
  2 A$bloxorz$118      0050 GR  |   2 A$bloxorz$1181     0442 GR
  2 A$bloxorz$1182     0445 GR  |   2 A$bloxorz$1183     0446 GR
  2 A$bloxorz$1184     0448 GR  |   2 A$bloxorz$1185     044B GR
  2 A$bloxorz$1186     044E GR  |   2 A$bloxorz$119      0053 GR
  2 A$bloxorz$1193     0450 GR  |   2 A$bloxorz$1200     0452 GR
  2 A$bloxorz$1201     0454 GR  |   2 A$bloxorz$1202     0456 GR
  2 A$bloxorz$1208     0458 GR  |   2 A$bloxorz$1209     045B GR
  2 A$bloxorz$1210     045D GR  |   2 A$bloxorz$1211     0460 GR
  2 A$bloxorz$1212     0463 GR  |   2 A$bloxorz$1219     0465 GR
  2 A$bloxorz$1220     0467 GR  |   2 A$bloxorz$1221     0469 GR
  2 A$bloxorz$1227     046B GR  |   2 A$bloxorz$1228     046E GR
  2 A$bloxorz$1229     046F GR  |   2 A$bloxorz$1230     0471 GR
  2 A$bloxorz$1231     0474 GR  |   2 A$bloxorz$1232     0476 GR
  2 A$bloxorz$1233     0478 GR  |   2 A$bloxorz$1234     047B GR
  2 A$bloxorz$1247     047D GR  |   2 A$bloxorz$1248     0480 GR
  2 A$bloxorz$1254     0482 GR  |   2 A$bloxorz$1256     0485 GR
  2 A$bloxorz$1257     0487 GR  |   2 A$bloxorz$1260     0488 GR
  2 A$bloxorz$1261     048A GR  |   2 A$bloxorz$1270     048C GR
  2 A$bloxorz$1271     048E GR  |   2 A$bloxorz$1277     0491 GR
  2 A$bloxorz$1278     0493 GR  |   2 A$bloxorz$1284     0496 GR
  2 A$bloxorz$1285     0498 GR  |   2 A$bloxorz$129      0055 GR
  2 A$bloxorz$1291     049B GR  |   2 A$bloxorz$1292     049E GR
  2 A$bloxorz$1298     04A0 GR  |   2 A$bloxorz$130      0057 GR
  2 A$bloxorz$1304     04A3 GR  |   2 A$bloxorz$1305     04A5 GR
  2 A$bloxorz$1306     04A7 GR  |   2 A$bloxorz$131      0059 GR
  2 A$bloxorz$1314     04A8 GR  |   2 A$bloxorz$1315     04AB GR
  2 A$bloxorz$132      005B GR  |   2 A$bloxorz$1321     04AD GR
  2 A$bloxorz$1322     04AF GR  |   2 A$bloxorz$1323     04B1 GR
  2 A$bloxorz$1324     04B4 GR  |   2 A$bloxorz$1325     04B6 GR
  2 A$bloxorz$133      005D GR  |   2 A$bloxorz$1332     04B8 GR
  2 A$bloxorz$1334     04BA GR  |   2 A$bloxorz$1337     04BB GR
  2 A$bloxorz$1338     04BD GR  |   2 A$bloxorz$134      005F GR
  2 A$bloxorz$1344     04BF GR  |   2 A$bloxorz$1345     04C2 GR
  2 A$bloxorz$135      0061 GR  |   2 A$bloxorz$1351     04C4 GR
  2 A$bloxorz$1352     04C7 GR  |   2 A$bloxorz$1353     04C8 GR
  2 A$bloxorz$1354     04CA GR  |   2 A$bloxorz$1355     04CD GR
  2 A$bloxorz$1356     04CE GR  |   2 A$bloxorz$1357     04D0 GR
  2 A$bloxorz$1358     04D1 GR  |   2 A$bloxorz$1359     04D2 GR
  2 A$bloxorz$136      0063 GR  |   2 A$bloxorz$1360     04D3 GR
  2 A$bloxorz$1361     04D4 GR  |   2 A$bloxorz$1362     04D6 GR
  2 A$bloxorz$1363     04D8 GR  |   2 A$bloxorz$1364     04DA GR
  2 A$bloxorz$1365     04DC GR  |   2 A$bloxorz$1366     04DE GR
  2 A$bloxorz$1367     04E2 GR  |   2 A$bloxorz$1368     04E3 GR
  2 A$bloxorz$1369     04E6 GR  |   2 A$bloxorz$137      0064 GR
  2 A$bloxorz$1376     04E8 GR  |   2 A$bloxorz$1377     04EB GR
  2 A$bloxorz$1378     04EC GR  |   2 A$bloxorz$1379     04EF GR
  2 A$bloxorz$138      0065 GR  |   2 A$bloxorz$1380     04F0 GR
  2 A$bloxorz$1386     04F3 GR  |   2 A$bloxorz$1387     04F6 GR
  2 A$bloxorz$1388     04F7 GR  |   2 A$bloxorz$1389     04F8 GR
  2 A$bloxorz$139      0067 GR  |   2 A$bloxorz$1390     04FB GR
  2 A$bloxorz$1391     04FD GR  |   2 A$bloxorz$1392     04FE GR
  2 A$bloxorz$1393     0501 GR  |   2 A$bloxorz$1394     0504 GR
  2 A$bloxorz$140      0069 GR  |   2 A$bloxorz$1400     0507 GR
  2 A$bloxorz$1401     050B GR  |   2 A$bloxorz$1402     050D GR
  2 A$bloxorz$1403     0510 GR  |   2 A$bloxorz$141      006B GR
  2 A$bloxorz$1410     0513 GR  |   2 A$bloxorz$1411     0516 GR
  2 A$bloxorz$1412     0517 GR  |   2 A$bloxorz$1413     0519 GR
  2 A$bloxorz$1414     051A GR  |   2 A$bloxorz$1415     051B GR
  2 A$bloxorz$1416     051D GR  |   2 A$bloxorz$1417     0521 GR
  2 A$bloxorz$142      006D GR  |   2 A$bloxorz$1423     0524 GR
  2 A$bloxorz$1429     0527 GR  |   2 A$bloxorz$143      006F GR
  2 A$bloxorz$1435     052A GR  |   2 A$bloxorz$1436     052D GR
  2 A$bloxorz$1437     052F GR  |   2 A$bloxorz$1443     0532 GR
  2 A$bloxorz$1444     0534 GR  |   2 A$bloxorz$1450     0537 GR
  2 A$bloxorz$1456     053A GR  |   2 A$bloxorz$1457     053C GR
  2 A$bloxorz$1463     053F GR  |   2 A$bloxorz$1464     0541 GR
  2 A$bloxorz$1470     0544 GR  |   2 A$bloxorz$1471     0547 GR
  2 A$bloxorz$1477     054A GR  |   2 A$bloxorz$1478     054C GR
  2 A$bloxorz$1484     0550 GR  |   2 A$bloxorz$1485     0553 GR
  2 A$bloxorz$1491     0555 GR  |   2 A$bloxorz$1492     0558 GR
  2 A$bloxorz$1498     055B GR  |   2 A$bloxorz$150      0071 GR
  2 A$bloxorz$1500     055E GR  |   2 A$bloxorz$1501     0560 GR
  2 A$bloxorz$1558     0593 GR  |   2 A$bloxorz$1559     0595 GR
  2 A$bloxorz$156      0073 GR  |   2 A$bloxorz$1565     0597 GR
  2 A$bloxorz$157      0075 GR  |   2 A$bloxorz$1571     059A GR
  2 A$bloxorz$1572     059C GR  |   2 A$bloxorz$1575     059E GR
  2 A$bloxorz$1576     05A0 GR  |   2 A$bloxorz$158      0077 GR
  2 A$bloxorz$1582     05A3 GR  |   2 A$bloxorz$1583     05A5 GR
  2 A$bloxorz$1589     05A8 GR  |   2 A$bloxorz$159      0079 GR
  2 A$bloxorz$1590     05AA GR  |   2 A$bloxorz$1591     05AC GR
  2 A$bloxorz$1592     05AE GR  |   2 A$bloxorz$1593     05B0 GR
  2 A$bloxorz$1594     05B3 GR  |   2 A$bloxorz$1597     05B5 GR
  2 A$bloxorz$1598     05B7 GR  |   2 A$bloxorz$1599     05B9 GR
  2 A$bloxorz$160      007B GR  |   2 A$bloxorz$1600     05BB GR
  2 A$bloxorz$1606     05BE GR  |   2 A$bloxorz$1607     05C0 GR
  2 A$bloxorz$1608     05C2 GR  |   2 A$bloxorz$1609     05C4 GR
  2 A$bloxorz$161      007D GR  |   2 A$bloxorz$1610     05C6 GR
  2 A$bloxorz$1611     05C9 GR  |   2 A$bloxorz$1614     05CB GR
  2 A$bloxorz$1615     05CD GR  |   2 A$bloxorz$1616     05CF GR
  2 A$bloxorz$1617     05D1 GR  |   2 A$bloxorz$162      0080 GR
  2 A$bloxorz$1623     05D4 GR  |   2 A$bloxorz$1624     05D6 GR
  2 A$bloxorz$1625     05D8 GR  |   2 A$bloxorz$1626     05DA GR
  2 A$bloxorz$1627     05DC GR  |   2 A$bloxorz$1628     05DF GR
  2 A$bloxorz$163      0082 GR  |   2 A$bloxorz$1631     05E1 GR
  2 A$bloxorz$1632     05E3 GR  |   2 A$bloxorz$1633     05E5 GR
  2 A$bloxorz$1634     05E7 GR  |   2 A$bloxorz$164      0084 GR
  2 A$bloxorz$1640     05EA GR  |   2 A$bloxorz$1641     05EC GR
  2 A$bloxorz$1642     05EE GR  |   2 A$bloxorz$1643     05F0 GR
  2 A$bloxorz$1644     05F2 GR  |   2 A$bloxorz$1645     05F5 GR
  2 A$bloxorz$1648     05F7 GR  |   2 A$bloxorz$1649     05F9 GR
  2 A$bloxorz$1650     05FB GR  |   2 A$bloxorz$1651     05FD GR
  2 A$bloxorz$1657     0600 GR  |   2 A$bloxorz$1658     0602 GR
  2 A$bloxorz$1659     0604 GR  |   2 A$bloxorz$166      0086 GR
  2 A$bloxorz$1660     0606 GR  |   2 A$bloxorz$1661     0608 GR
  2 A$bloxorz$1662     060B GR  |   2 A$bloxorz$1665     060D GR
  2 A$bloxorz$1666     060F GR  |   2 A$bloxorz$1667     0611 GR
  2 A$bloxorz$1668     0613 GR  |   2 A$bloxorz$1674     0616 GR
  2 A$bloxorz$1675     0619 GR  |   2 A$bloxorz$1676     061B GR
  2 A$bloxorz$1682     061D GR  |   2 A$bloxorz$1688     0620 GR
  2 A$bloxorz$1695     0623 GR  |   2 A$bloxorz$1696     0626 GR
  2 A$bloxorz$1697     0628 GR  |   2 A$bloxorz$1703     062A GR
  2 A$bloxorz$1704     062C GR  |   2 A$bloxorz$1710     062F GR
  2 A$bloxorz$1717     0632 GR  |   2 A$bloxorz$1718     0635 GR
  2 A$bloxorz$1719     0637 GR  |   2 A$bloxorz$1725     0639 GR
  2 A$bloxorz$1726     063B GR  |   2 A$bloxorz$173      0088 GR
  2 A$bloxorz$1732     063E GR  |   2 A$bloxorz$1739     0641 GR
  2 A$bloxorz$174      008A GR  |   2 A$bloxorz$1740     0644 GR
  2 A$bloxorz$1741     0646 GR  |   2 A$bloxorz$1747     0648 GR
  2 A$bloxorz$1748     064A GR  |   2 A$bloxorz$175      008C GR
  2 A$bloxorz$1754     064D GR  |   2 A$bloxorz$1756     0650 GR
  2 A$bloxorz$1757     0652 GR  |   2 A$bloxorz$176      008E GR
  2 A$bloxorz$177      0090 GR  |   2 A$bloxorz$178      0092 GR
  2 A$bloxorz$179      0094 GR  |   2 A$bloxorz$180      0096 GR
  2 A$bloxorz$181      0098 GR  |   2 A$bloxorz$182      009A GR
  2 A$bloxorz$1824     0690 GR  |   2 A$bloxorz$1825     0692 GR
  2 A$bloxorz$183      009C GR  |   2 A$bloxorz$1831     0694 GR
  2 A$bloxorz$1837     0697 GR  |   2 A$bloxorz$1838     0699 GR
  2 A$bloxorz$184      009E GR  |   2 A$bloxorz$1841     069B GR
  2 A$bloxorz$1842     069D GR  |   2 A$bloxorz$1848     06A0 GR
  2 A$bloxorz$1849     06A2 GR  |   2 A$bloxorz$185      00A1 GR
  2 A$bloxorz$1855     06A5 GR  |   2 A$bloxorz$1856     06A7 GR
  2 A$bloxorz$1857     06A9 GR  |   2 A$bloxorz$1858     06AB GR
  2 A$bloxorz$1859     06AD GR  |   2 A$bloxorz$186      00A3 GR
  2 A$bloxorz$1860     06B0 GR  |   2 A$bloxorz$1863     06B2 GR
  2 A$bloxorz$1864     06B4 GR  |   2 A$bloxorz$1865     06B6 GR
  2 A$bloxorz$1866     06B8 GR  |   2 A$bloxorz$187      00A5 GR
  2 A$bloxorz$1872     06BB GR  |   2 A$bloxorz$1873     06BD GR
  2 A$bloxorz$1874     06BF GR  |   2 A$bloxorz$1875     06C1 GR
  2 A$bloxorz$1876     06C3 GR  |   2 A$bloxorz$1877     06C6 GR
  2 A$bloxorz$188      00A9 GR  |   2 A$bloxorz$1880     06C8 GR
  2 A$bloxorz$1881     06CA GR  |   2 A$bloxorz$1882     06CC GR
  2 A$bloxorz$1883     06CE GR  |   2 A$bloxorz$1889     06D1 GR
  2 A$bloxorz$189      00AB GR  |   2 A$bloxorz$1890     06D3 GR
  2 A$bloxorz$1891     06D5 GR  |   2 A$bloxorz$1892     06D7 GR
  2 A$bloxorz$1893     06D9 GR  |   2 A$bloxorz$1894     06DC GR
  2 A$bloxorz$1897     06DE GR  |   2 A$bloxorz$1898     06E0 GR
  2 A$bloxorz$1899     06E2 GR  |   2 A$bloxorz$1900     06E4 GR
  2 A$bloxorz$1906     06E7 GR  |   2 A$bloxorz$1907     06E9 GR
  2 A$bloxorz$1908     06EB GR  |   2 A$bloxorz$1909     06ED GR
  2 A$bloxorz$1910     06EF GR  |   2 A$bloxorz$1911     06F2 GR
  2 A$bloxorz$1914     06F4 GR  |   2 A$bloxorz$1915     06F6 GR
  2 A$bloxorz$1916     06F8 GR  |   2 A$bloxorz$1917     06FA GR
  2 A$bloxorz$1923     06FD GR  |   2 A$bloxorz$1924     0700 GR
  2 A$bloxorz$1925     0702 GR  |   2 A$bloxorz$1931     0704 GR
  2 A$bloxorz$1937     0707 GR  |   2 A$bloxorz$1943     070A GR
  2 A$bloxorz$1950     070D GR  |   2 A$bloxorz$1951     0710 GR
  2 A$bloxorz$1952     0712 GR  |   2 A$bloxorz$1958     0714 GR
  2 A$bloxorz$1959     0717 GR  |   2 A$bloxorz$1965     071A GR
  2 A$bloxorz$197      00AD GR  |   2 A$bloxorz$1971     071D GR
  2 A$bloxorz$1972     071F GR  |   2 A$bloxorz$1978     0722 GR
  2 A$bloxorz$198      00AF GR  |   2 A$bloxorz$1984     0725 GR
  2 A$bloxorz$1991     0728 GR  |   2 A$bloxorz$1992     072B GR
  2 A$bloxorz$1993     072D GR  |   2 A$bloxorz$1999     072F GR
  2 A$bloxorz$2000     0731 GR  |   2 A$bloxorz$2002     0734 GR
  2 A$bloxorz$2003     0736 GR  |   2 A$bloxorz$2006     0738 GR
  2 A$bloxorz$2012     073A GR  |   2 A$bloxorz$2018     073D GR
  2 A$bloxorz$2019     0740 GR  |   2 A$bloxorz$2020     0741 GR
  2 A$bloxorz$2021     0743 GR  |   2 A$bloxorz$2027     0746 GR
  2 A$bloxorz$2028     0748 GR  |   2 A$bloxorz$2034     074A GR
  2 A$bloxorz$2035     074B GR  |   2 A$bloxorz$2036     074D GR
  2 A$bloxorz$2038     074E GR  |   2 A$bloxorz$204      00B2 GR
  2 A$bloxorz$2044     0751 GR  |   2 A$bloxorz$205      00B5 GR
  2 A$bloxorz$2051     0754 GR  |   2 A$bloxorz$2052     0757 GR
  2 A$bloxorz$2053     0759 GR  |   2 A$bloxorz$2059     075B GR
  2 A$bloxorz$2061     075E GR  |   2 A$bloxorz$2062     0760 GR
  2 A$bloxorz$2070     0761 GR  |   2 A$bloxorz$2071     0764 GR
  2 A$bloxorz$2077     0766 GR  |   2 A$bloxorz$2078     0768 GR
  2 A$bloxorz$2079     076A GR  |   2 A$bloxorz$208      00B6 GR
  2 A$bloxorz$2085     076D GR  |   2 A$bloxorz$2086     076F GR
  2 A$bloxorz$2087     0771 GR  |   2 A$bloxorz$2088     0773 GR
  2 A$bloxorz$2089     0776 GR  |   2 A$bloxorz$2091     0778 GR
  2 A$bloxorz$2124     0794 GR  |   2 A$bloxorz$2125     0796 GR
  2 A$bloxorz$2131     0798 GR  |   2 A$bloxorz$2137     079B GR
  2 A$bloxorz$2138     079D GR  |   2 A$bloxorz$214      00B8 GR
  2 A$bloxorz$2141     079F GR  |   2 A$bloxorz$2142     07A1 GR
  2 A$bloxorz$2148     07A4 GR  |   2 A$bloxorz$2149     07A6 GR
  2 A$bloxorz$215      00BA GR  |   2 A$bloxorz$2155     07A9 GR
  2 A$bloxorz$2156     07AB GR  |   2 A$bloxorz$2157     07AD GR
  2 A$bloxorz$2158     07AF GR  |   2 A$bloxorz$2159     07B1 GR
  2 A$bloxorz$2160     07B4 GR  |   2 A$bloxorz$2163     07B6 GR
  2 A$bloxorz$2164     07B8 GR  |   2 A$bloxorz$2165     07BA GR
  2 A$bloxorz$2166     07BC GR  |   2 A$bloxorz$2172     07BF GR
  2 A$bloxorz$2173     07C1 GR  |   2 A$bloxorz$2174     07C3 GR
  2 A$bloxorz$2175     07C5 GR  |   2 A$bloxorz$2176     07C7 GR
  2 A$bloxorz$2177     07CA GR  |   2 A$bloxorz$218      00BC GR
  2 A$bloxorz$2180     07CC GR  |   2 A$bloxorz$2181     07CE GR
  2 A$bloxorz$2182     07D0 GR  |   2 A$bloxorz$2183     07D2 GR
  2 A$bloxorz$2189     07D5 GR  |   2 A$bloxorz$219      00BE GR
  2 A$bloxorz$2190     07D7 GR  |   2 A$bloxorz$2191     07D9 GR
  2 A$bloxorz$2192     07DB GR  |   2 A$bloxorz$2193     07DD GR
  2 A$bloxorz$2194     07E0 GR  |   2 A$bloxorz$2197     07E2 GR
  2 A$bloxorz$2198     07E4 GR  |   2 A$bloxorz$2199     07E6 GR
  2 A$bloxorz$2200     07E8 GR  |   2 A$bloxorz$2206     07EB GR
  2 A$bloxorz$2207     07EE GR  |   2 A$bloxorz$2208     07F0 GR
  2 A$bloxorz$2214     07F2 GR  |   2 A$bloxorz$222      00C1 GR
  2 A$bloxorz$2221     07F4 GR  |   2 A$bloxorz$2222     07F6 GR
  2 A$bloxorz$2223     07F8 GR  |   2 A$bloxorz$2224     07FA GR
  2 A$bloxorz$2225     07FD GR  |   2 A$bloxorz$2226     07FF GR
  2 A$bloxorz$2227     0801 GR  |   2 A$bloxorz$2228     0803 GR
  2 A$bloxorz$2229     0805 GR  |   2 A$bloxorz$2235     0807 GR
  2 A$bloxorz$2242     080A GR  |   2 A$bloxorz$2243     080D GR
  2 A$bloxorz$2244     080F GR  |   2 A$bloxorz$225      00C3 GR
  2 A$bloxorz$2250     0811 GR  |   2 A$bloxorz$2252     0814 GR
  2 A$bloxorz$2253     0816 GR  |   2 A$bloxorz$2256     0818 GR
  2 A$bloxorz$2257     081A GR  |   2 A$bloxorz$2263     081C GR
  2 A$bloxorz$2269     081F GR  |   2 A$bloxorz$2270     0822 GR
  2 A$bloxorz$2276     0825 GR  |   2 A$bloxorz$2277     0828 GR
  2 A$bloxorz$2278     0829 GR  |   2 A$bloxorz$228      00C5 GR
  2 A$bloxorz$2284     082C GR  |   2 A$bloxorz$2285     082E GR
  2 A$bloxorz$2291     0832 GR  |   2 A$bloxorz$2292     0835 GR
  2 A$bloxorz$2293     0838 GR  |   2 A$bloxorz$2299     083A GR
  2 A$bloxorz$2300     083D GR  |   2 A$bloxorz$2301     083E GR
  2 A$bloxorz$2302     0840 GR  |   2 A$bloxorz$2303     0842 GR
  2 A$bloxorz$2304     0844 GR  |   2 A$bloxorz$2305     0846 GR
  2 A$bloxorz$231      00C7 GR  |   2 A$bloxorz$2311     0849 GR
  2 A$bloxorz$2312     084C GR  |   2 A$bloxorz$2313     084D GR
  2 A$bloxorz$2314     084E GR  |   2 A$bloxorz$2315     0850 GR
  2 A$bloxorz$2316     0853 GR  |   2 A$bloxorz$2317     0855 GR
  2 A$bloxorz$2318     0856 GR  |   2 A$bloxorz$2319     0858 GR
  2 A$bloxorz$2320     085A GR  |   2 A$bloxorz$2321     085D GR
  2 A$bloxorz$2328     085F GR  |   2 A$bloxorz$2329     0862 GR
  2 A$bloxorz$2335     0866 GR  |   2 A$bloxorz$2336     0869 GR
  2 A$bloxorz$2337     086A GR  |   2 A$bloxorz$234      00CA GR
  2 A$bloxorz$2343     086D GR  |   2 A$bloxorz$2344     086E GR
  2 A$bloxorz$2345     0870 GR  |   2 A$bloxorz$2346     0873 GR
  2 A$bloxorz$2347     0874 GR  |   2 A$bloxorz$2348     0876 GR
  2 A$bloxorz$2349     0877 GR  |   2 A$bloxorz$2350     0878 GR
  2 A$bloxorz$2351     0879 GR  |   2 A$bloxorz$2352     087A GR
  2 A$bloxorz$2353     087C GR  |   2 A$bloxorz$2354     087E GR
  2 A$bloxorz$2355     0880 GR  |   2 A$bloxorz$2356     0882 GR
  2 A$bloxorz$2357     0884 GR  |   2 A$bloxorz$2358     0888 GR
  2 A$bloxorz$2364     088B GR  |   2 A$bloxorz$2365     088C GR
  2 A$bloxorz$2371     0890 GR  |   2 A$bloxorz$2372     0892 GR
  2 A$bloxorz$2378     0895 GR  |   2 A$bloxorz$2379     0898 GR
  2 A$bloxorz$2380     089B GR  |   2 A$bloxorz$2381     089E GR
  2 A$bloxorz$2382     08A1 GR  |   2 A$bloxorz$2383     08A4 GR
  2 A$bloxorz$2384     08A7 GR  |   2 A$bloxorz$2385     08AA GR
  2 A$bloxorz$2386     08AD GR  |   2 A$bloxorz$2387     08B0 GR
  2 A$bloxorz$2388     08B3 GR  |   2 A$bloxorz$2389     08B6 GR
  2 A$bloxorz$2390     08B9 GR  |   2 A$bloxorz$2391     08BC GR
  2 A$bloxorz$2392     08BF GR  |   2 A$bloxorz$2393     08C2 GR
  2 A$bloxorz$2394     08C5 GR  |   2 A$bloxorz$2395     08C8 GR
  2 A$bloxorz$240      00CD GR  |   2 A$bloxorz$2401     08CB GR
  2 A$bloxorz$2402     08CE GR  |   2 A$bloxorz$2403     08D0 GR
  2 A$bloxorz$2404     08D3 GR  |   2 A$bloxorz$2410     08D6 GR
  2 A$bloxorz$2411     08D9 GR  |   2 A$bloxorz$2412     08DB GR
  2 A$bloxorz$2419     08DD GR  |   2 A$bloxorz$2420     08E0 GR
  2 A$bloxorz$2427     08E2 GR  |   2 A$bloxorz$2428     08E5 GR
  2 A$bloxorz$2429     08E6 GR  |   2 A$bloxorz$243      00CF GR
  2 A$bloxorz$2435     08E9 GR  |   2 A$bloxorz$2436     08EC GR
  2 A$bloxorz$2437     08EE GR  |   2 A$bloxorz$2444     08F1 GR
  2 A$bloxorz$2446     08F4 GR  |   2 A$bloxorz$2447     08F6 GR
  2 A$bloxorz$2450     08F8 GR  |   2 A$bloxorz$2451     08FA GR
  2 A$bloxorz$2457     08FC GR  |   2 A$bloxorz$2458     08FE GR
  2 A$bloxorz$246      00D1 GR  |   2 A$bloxorz$2464     0902 GR
  2 A$bloxorz$2465     0904 GR  |   2 A$bloxorz$2466     0906 GR
  2 A$bloxorz$2467     0908 GR  |   2 A$bloxorz$2468     090B GR
  2 A$bloxorz$2469     090D GR  |   2 A$bloxorz$2477     090E GR
  2 A$bloxorz$2483     0911 GR  |   2 A$bloxorz$2484     0912 GR
  2 A$bloxorz$249      00D4 GR  |   2 A$bloxorz$2490     0915 GR
  2 A$bloxorz$2496     0918 GR  |   2 A$bloxorz$2497     091B GR
  2 A$bloxorz$2498     091D GR  |   2 A$bloxorz$2504     091F GR
  2 A$bloxorz$2505     0920 GR  |   2 A$bloxorz$2511     0923 GR
  2 A$bloxorz$2512     0925 GR  |   2 A$bloxorz$2513     0928 GR
  2 A$bloxorz$2515     092B GR  |   2 A$bloxorz$2516     092E GR
  2 A$bloxorz$2517     0930 GR  |   2 A$bloxorz$252      00D6 GR
  2 A$bloxorz$2523     0932 GR  |   2 A$bloxorz$2524     0934 GR
  2 A$bloxorz$2530     0937 GR  |   2 A$bloxorz$2531     0939 GR
  2 A$bloxorz$2532     093C GR  |   2 A$bloxorz$2534     093E GR
  2 A$bloxorz$2535     0941 GR  |   2 A$bloxorz$2536     0943 GR
  2 A$bloxorz$2542     0945 GR  |   2 A$bloxorz$2543     0947 GR
  2 A$bloxorz$2549     094A GR  |   2 A$bloxorz$255      00DA GR
  2 A$bloxorz$2550     094C GR  |   2 A$bloxorz$2551     094F GR
  2 A$bloxorz$2553     0951 GR  |   2 A$bloxorz$2554     0954 GR
  2 A$bloxorz$2555     0956 GR  |   2 A$bloxorz$2561     0958 GR
  2 A$bloxorz$2562     095A GR  |   2 A$bloxorz$2568     095D GR
  2 A$bloxorz$2569     095F GR  |   2 A$bloxorz$2576     0962 GR
  2 A$bloxorz$2577     0965 GR  |   2 A$bloxorz$2578     0967 GR
  2 A$bloxorz$258      00DE GR  |   2 A$bloxorz$2584     0969 GR
  2 A$bloxorz$2585     096C GR  |   2 A$bloxorz$2591     096F GR
  2 A$bloxorz$2592     0971 GR  |   2 A$bloxorz$2599     0975 GR
  2 A$bloxorz$2605     0978 GR  |   2 A$bloxorz$2606     097B GR
  2 A$bloxorz$2607     097D GR  |   2 A$bloxorz$261      00E0 GR
  2 A$bloxorz$2613     097F GR  |   2 A$bloxorz$2614     0982 GR
  2 A$bloxorz$2620     0984 GR  |   2 A$bloxorz$2627     0987 GR
  2 A$bloxorz$2628     098A GR  |   2 A$bloxorz$2629     098C GR
  2 A$bloxorz$2630     098E GR  |   2 A$bloxorz$2631     0991 GR
  2 A$bloxorz$2637     0993 GR  |   2 A$bloxorz$2638     0996 GR
  2 A$bloxorz$2639     0997 GR  |   2 A$bloxorz$264      00E3 GR
  2 A$bloxorz$2645     099A GR  |   2 A$bloxorz$2646     099D GR
  2 A$bloxorz$2652     099F GR  |   2 A$bloxorz$2658     09A2 GR
  2 A$bloxorz$2659     09A5 GR  |   2 A$bloxorz$2666     09A8 GR
  2 A$bloxorz$267      00E5 GR  |   2 A$bloxorz$2673     09AB GR
  2 A$bloxorz$2674     09AE GR  |   2 A$bloxorz$2675     09B0 GR
  2 A$bloxorz$2676     09B2 GR  |   2 A$bloxorz$2677     09B5 GR
  2 A$bloxorz$2683     09B7 GR  |   2 A$bloxorz$2684     09BA GR
  2 A$bloxorz$2690     09BC GR  |   2 A$bloxorz$2691     09BD GR
  2 A$bloxorz$2692     09C0 GR  |   2 A$bloxorz$2699     09C2 GR
  2 A$bloxorz$270      00E9 GR  |   2 A$bloxorz$2700     09C5 GR
  2 A$bloxorz$2701     09C6 GR  |   2 A$bloxorz$2707     09C9 GR
  2 A$bloxorz$2708     09CC GR  |   2 A$bloxorz$2715     09CF GR
  2 A$bloxorz$2722     09D2 GR  |   2 A$bloxorz$2723     09D5 GR
  2 A$bloxorz$2724     09D7 GR  |   2 A$bloxorz$273      00ED GR
  2 A$bloxorz$2730     09D9 GR  |   2 A$bloxorz$2732     09DC GR
  2 A$bloxorz$2735     09DD GR  |   2 A$bloxorz$2736     09DF GR
  2 A$bloxorz$2742     09E1 GR  |   2 A$bloxorz$2743     09E2 GR
  2 A$bloxorz$2749     09E5 GR  |   2 A$bloxorz$2750     09E7 GR
  2 A$bloxorz$2756     09EB GR  |   2 A$bloxorz$276      00F1 GR
  2 A$bloxorz$2762     09EE GR  |   2 A$bloxorz$2763     09F0 GR
  2 A$bloxorz$2764     09F2 GR  |   2 A$bloxorz$2770     09F5 GR
  2 A$bloxorz$2771     09F7 GR  |   2 A$bloxorz$2772     09F9 GR
  2 A$bloxorz$2778     09FC GR  |   2 A$bloxorz$2779     09FE GR
  2 A$bloxorz$2780     0A00 GR  |   2 A$bloxorz$2781     0A03 GR
  2 A$bloxorz$2782     0A05 GR  |   2 A$bloxorz$2783     0A07 GR
  2 A$bloxorz$2789     0A09 GR  |   2 A$bloxorz$279      00F5 GR
  2 A$bloxorz$2790     0A0B GR  |   2 A$bloxorz$2797     0A0E GR
  2 A$bloxorz$2798     0A10 GR  |   2 A$bloxorz$2804     0A13 GR
  2 A$bloxorz$2805     0A15 GR  |   2 A$bloxorz$2811     0A18 GR
  2 A$bloxorz$2817     0A1B GR  |   2 A$bloxorz$282      00F7 GR
  2 A$bloxorz$2823     0A1E GR  |   2 A$bloxorz$2829     0A21 GR
  2 A$bloxorz$2841     0A24 GR  |   2 A$bloxorz$2847     0A27 GR
  2 A$bloxorz$2848     0A2A GR  |   2 A$bloxorz$2849     0A2C GR
  2 A$bloxorz$285      00FA GR  |   2 A$bloxorz$2850     0A30 GR
  2 A$bloxorz$2851     0A31 GR  |   2 A$bloxorz$2852     0A33 GR
  2 A$bloxorz$2853     0A34 GR  |   2 A$bloxorz$2854     0A35 GR
  2 A$bloxorz$2855     0A37 GR  |   2 A$bloxorz$2872     0A4D GR
  2 A$bloxorz$2878     0A50 GR  |   2 A$bloxorz$288      00FC GR
  2 A$bloxorz$2884     0A53 GR  |   2 A$bloxorz$2891     0A56 GR
  2 A$bloxorz$2897     0A59 GR  |   2 A$bloxorz$2903     0A5C GR
  2 A$bloxorz$291      00FE GR  |   2 A$bloxorz$2910     0A5F GR
  2 A$bloxorz$2916     0A62 GR  |   2 A$bloxorz$2922     0A65 GR
  2 A$bloxorz$2929     0A68 GR  |   2 A$bloxorz$2935     0A6B GR
  2 A$bloxorz$294      0100 GR  |   2 A$bloxorz$2941     0A6E GR
  2 A$bloxorz$2948     0A71 GR  |   2 A$bloxorz$2954     0A74 GR
  2 A$bloxorz$2960     0A77 GR  |   2 A$bloxorz$2967     0A7A GR
  2 A$bloxorz$297      0101 GR  |   2 A$bloxorz$2973     0A7D GR
  2 A$bloxorz$2979     0A80 GR  |   2 A$bloxorz$2986     0A83 GR
  2 A$bloxorz$2992     0A86 GR  |   2 A$bloxorz$2998     0A89 GR
  2 A$bloxorz$300      0103 GR  |   2 A$bloxorz$3005     0A8B GR
  2 A$bloxorz$3011     0A8E GR  |   2 A$bloxorz$3017     0A91 GR
  2 A$bloxorz$3024     0A93 GR  |   2 A$bloxorz$303      0105 GR
  2 A$bloxorz$3030     0A96 GR  |   2 A$bloxorz$304      0107 GR
  2 A$bloxorz$3042     0A99 GR  |   2 A$bloxorz$3043     0A9C GR
  2 A$bloxorz$3044     0A9E GR  |   2 A$bloxorz$3050     0AA0 GR
  2 A$bloxorz$3056     0AA3 GR  |   2 A$bloxorz$3057     0AA6 GR
  2 A$bloxorz$3060     0AA8 GR  |   2 A$bloxorz$3061     0AAA GR
  2 A$bloxorz$3067     0AAD GR  |   2 A$bloxorz$3073     0AB0 GR
  2 A$bloxorz$3082     0AB3 GR  |   2 A$bloxorz$3083     0AB6 GR
  2 A$bloxorz$3089     0ABA GR  |   2 A$bloxorz$3090     0ABD GR
  2 A$bloxorz$3091     0AC0 GR  |   2 A$bloxorz$3097     0AC3 GR
  2 A$bloxorz$3098     0AC7 GR  |   2 A$bloxorz$3104     0ACB GR
  2 A$bloxorz$3105     0ACE GR  |   2 A$bloxorz$3111     0AD1 GR
  2 A$bloxorz$3112     0AD4 GR  |   2 A$bloxorz$3113     0AD7 GR
  2 A$bloxorz$3119     0ADB GR  |   2 A$bloxorz$3120     0ADD GR
  2 A$bloxorz$3126     0AE0 GR  |   2 A$bloxorz$3127     0AE3 GR
  2 A$bloxorz$319      0113 GR  |   2 A$bloxorz$320      0115 GR
  2 A$bloxorz$326      0117 GR  |   2 A$bloxorz$332      011A GR
  2 A$bloxorz$333      011C GR  |   2 A$bloxorz$336      011E GR
  2 A$bloxorz$337      0120 GR  |   2 A$bloxorz$34       0000 GR
  2 A$bloxorz$343      0123 GR  |   2 A$bloxorz$344      0125 GR
  2 A$bloxorz$35       0002 GR  |   2 A$bloxorz$350      0128 GR
  2 A$bloxorz$351      012A GR  |   2 A$bloxorz$352      012C GR
  2 A$bloxorz$353      012E GR  |   2 A$bloxorz$354      0130 GR
  2 A$bloxorz$355      0133 GR  |   2 A$bloxorz$358      0135 GR
  2 A$bloxorz$359      0137 GR  |   2 A$bloxorz$36       0004 GR
  2 A$bloxorz$360      0139 GR  |   2 A$bloxorz$361      013B GR
  2 A$bloxorz$367      013E GR  |   2 A$bloxorz$368      0140 GR
  2 A$bloxorz$369      0142 GR  |   2 A$bloxorz$370      0144 GR
  2 A$bloxorz$371      0146 GR  |   2 A$bloxorz$372      0149 GR
  2 A$bloxorz$375      014B GR  |   2 A$bloxorz$376      014D GR
  2 A$bloxorz$377      014F GR  |   2 A$bloxorz$378      0151 GR
  2 A$bloxorz$384      0154 GR  |   2 A$bloxorz$385      0157 GR
  2 A$bloxorz$386      0159 GR  |   2 A$bloxorz$392      015B GR
  2 A$bloxorz$399      015E GR  |   2 A$bloxorz$400      0161 GR
  2 A$bloxorz$401      0163 GR  |   2 A$bloxorz$407      0165 GR
  2 A$bloxorz$414      0168 GR  |   2 A$bloxorz$415      016B GR
  2 A$bloxorz$416      016D GR  |   2 A$bloxorz$422      016F GR
  2 A$bloxorz$429      0172 GR  |   2 A$bloxorz$430      0175 GR
  2 A$bloxorz$431      0177 GR  |   2 A$bloxorz$437      0179 GR
  2 A$bloxorz$439      017C GR  |   2 A$bloxorz$440      017E GR
  2 A$bloxorz$443      0180 GR  |   2 A$bloxorz$444      0182 GR
  2 A$bloxorz$450      0184 GR  |   2 A$bloxorz$456      0187 GR
  2 A$bloxorz$457      0189 GR  |   2 A$bloxorz$460      018B GR
  2 A$bloxorz$461      018D GR  |   2 A$bloxorz$467      0190 GR
  2 A$bloxorz$473      0193 GR  |   2 A$bloxorz$474      0195 GR
  2 A$bloxorz$475      0197 GR  |   2 A$bloxorz$476      0199 GR
  2 A$bloxorz$477      019B GR  |   2 A$bloxorz$478      019D GR
  2 A$bloxorz$48       0006 GR  |   2 A$bloxorz$481      019F GR
  2 A$bloxorz$482      01A1 GR  |   2 A$bloxorz$483      01A3 GR
  2 A$bloxorz$489      01A6 GR  |   2 A$bloxorz$490      01A8 GR
  2 A$bloxorz$491      01AA GR  |   2 A$bloxorz$492      01AE GR
  2 A$bloxorz$495      01B1 GR  |   2 A$bloxorz$496      01B3 GR
  2 A$bloxorz$502      01B6 GR  |   2 A$bloxorz$508      01B9 GR
  2 A$bloxorz$509      01BB GR  |   2 A$bloxorz$510      01BD GR
  2 A$bloxorz$511      01BF GR  |   2 A$bloxorz$512      01C1 GR
  2 A$bloxorz$513      01C3 GR  |   2 A$bloxorz$516      01C5 GR
  2 A$bloxorz$517      01C7 GR  |   2 A$bloxorz$518      01C9 GR
  2 A$bloxorz$524      01CC GR  |   2 A$bloxorz$525      01CE GR
  2 A$bloxorz$526      01D0 GR  |   2 A$bloxorz$529      01D3 GR
  2 A$bloxorz$530      01D5 GR  |   2 A$bloxorz$536      01D8 GR
  2 A$bloxorz$54       0009 GR  |   2 A$bloxorz$542      01DB GR
  2 A$bloxorz$543      01DD GR  |   2 A$bloxorz$544      01DF GR
  2 A$bloxorz$545      01E1 GR  |   2 A$bloxorz$546      01E3 GR
  2 A$bloxorz$547      01E5 GR  |   2 A$bloxorz$55       000B GR
  2 A$bloxorz$550      01E7 GR  |   2 A$bloxorz$551      01E9 GR
  2 A$bloxorz$552      01EB GR  |   2 A$bloxorz$558      01EE GR
  2 A$bloxorz$559      01F0 GR  |   2 A$bloxorz$560      01F2 GR
  2 A$bloxorz$563      01F5 GR  |   2 A$bloxorz$564      01F7 GR
  2 A$bloxorz$570      01FA GR  |   2 A$bloxorz$576      01FD GR
  2 A$bloxorz$577      01FF GR  |   2 A$bloxorz$578      0201 GR
  2 A$bloxorz$579      0203 GR  |   2 A$bloxorz$58       000D GR
  2 A$bloxorz$580      0205 GR  |   2 A$bloxorz$583      0207 GR
  2 A$bloxorz$584      0209 GR  |   2 A$bloxorz$585      020B GR
  2 A$bloxorz$59       000F GR  |   2 A$bloxorz$591      020E GR
  2 A$bloxorz$592      0210 GR  |   2 A$bloxorz$593      0212 GR
  2 A$bloxorz$596      0215 GR  |   2 A$bloxorz$597      0217 GR
  2 A$bloxorz$603      021A GR  |   2 A$bloxorz$609      021D GR
  2 A$bloxorz$610      021F GR  |   2 A$bloxorz$611      0221 GR
  2 A$bloxorz$612      0223 GR  |   2 A$bloxorz$613      0225 GR
  2 A$bloxorz$614      0227 GR  |   2 A$bloxorz$617      0229 GR
  2 A$bloxorz$618      022B GR  |   2 A$bloxorz$619      022D GR
  2 A$bloxorz$625      0230 GR  |   2 A$bloxorz$626      0232 GR
  2 A$bloxorz$627      0234 GR  |   2 A$bloxorz$630      0237 GR
  2 A$bloxorz$631      0239 GR  |   2 A$bloxorz$637      023C GR
  2 A$bloxorz$643      023F GR  |   2 A$bloxorz$644      0241 GR
  2 A$bloxorz$645      0243 GR  |   2 A$bloxorz$646      0245 GR
  2 A$bloxorz$647      0247 GR  |   2 A$bloxorz$648      0249 GR
  2 A$bloxorz$65       0012 GR  |   2 A$bloxorz$651      024B GR
  2 A$bloxorz$652      024D GR  |   2 A$bloxorz$653      024F GR
  2 A$bloxorz$659      0252 GR  |   2 A$bloxorz$66       0014 GR
  2 A$bloxorz$660      0254 GR  |   2 A$bloxorz$661      0256 GR
  2 A$bloxorz$664      0259 GR  |   2 A$bloxorz$665      025B GR
  2 A$bloxorz$668      025E GR  |   2 A$bloxorz$669      0260 GR
  2 A$bloxorz$672      0262 GR  |   2 A$bloxorz$673      0264 GR
  2 A$bloxorz$679      0266 GR  |   2 A$bloxorz$680      0268 GR
  2 A$bloxorz$683      026A GR  |   2 A$bloxorz$684      026C GR
  2 A$bloxorz$690      026F GR  |   2 A$bloxorz$691      0271 GR
  2 A$bloxorz$697      0274 GR  |   2 A$bloxorz$698      0276 GR
  2 A$bloxorz$699      0278 GR  |   2 A$bloxorz$700      027A GR
  2 A$bloxorz$701      027D GR  |   2 A$bloxorz$704      027F GR
  2 A$bloxorz$705      0281 GR  |   2 A$bloxorz$706      0283 GR
  2 A$bloxorz$707      0285 GR  |   2 A$bloxorz$710      0288 GR
  2 A$bloxorz$711      028A GR  |   2 A$bloxorz$719      028C GR
  2 A$bloxorz$72       0017 GR  |   2 A$bloxorz$725      028F GR
  2 A$bloxorz$726      0292 GR  |   2 A$bloxorz$73       0019 GR
  2 A$bloxorz$732      0295 GR  |   2 A$bloxorz$733      0298 GR
  2 A$bloxorz$734      0299 GR  |   2 A$bloxorz$74       001B GR
  2 A$bloxorz$740      029C GR  |   2 A$bloxorz$741      029D GR
  2 A$bloxorz$747      029F GR  |   2 A$bloxorz$748      02A1 GR
  2 A$bloxorz$75       001D GR  |   2 A$bloxorz$750      02A4 GR
  2 A$bloxorz$753      02A5 GR  |   2 A$bloxorz$759      02A7 GR
  2 A$bloxorz$76       001F GR  |   2 A$bloxorz$760      02AA GR
  2 A$bloxorz$761      02AD GR  |   2 A$bloxorz$762      02AF GR
  2 A$bloxorz$763      02B2 GR  |   2 A$bloxorz$764      02B5 GR
  2 A$bloxorz$765      02B8 GR  |   2 A$bloxorz$766      02BB GR
  2 A$bloxorz$767      02BE GR  |   2 A$bloxorz$768      02C1 GR
  2 A$bloxorz$769      02C4 GR  |   2 A$bloxorz$775      02C7 GR
  2 A$bloxorz$776      02C9 GR  |   2 A$bloxorz$777      02CC GR
  2 A$bloxorz$783      02CF GR  |   2 A$bloxorz$784      02D2 GR
  2 A$bloxorz$785      02D5 GR  |   2 A$bloxorz$786      02D8 GR
  2 A$bloxorz$787      02DA GR  |   2 A$bloxorz$788      02DB GR
  2 A$bloxorz$789      02DD GR  |   2 A$bloxorz$79       0022 GR
  2 A$bloxorz$790      02E0 GR  |   2 A$bloxorz$791      02E2 GR
  2 A$bloxorz$799      02E4 GR  |   2 A$bloxorz$80       0024 GR
  2 A$bloxorz$805      02E7 GR  |   2 A$bloxorz$806      02EA GR
  2 A$bloxorz$81       0026 GR  |   2 A$bloxorz$812      02EC GR
  2 A$bloxorz$813      02EF GR  |   2 A$bloxorz$814      02F2 GR
  2 A$bloxorz$815      02F4 GR  |   2 A$bloxorz$816      02F6 GR
  2 A$bloxorz$82       0028 GR  |   2 A$bloxorz$823      02F9 GR
  2 A$bloxorz$825      02FC GR  |   2 A$bloxorz$833      02FD GR
  2 A$bloxorz$834      02FF GR  |   2 A$bloxorz$840      0302 GR
  2 A$bloxorz$846      0305 GR  |   2 A$bloxorz$847      0308 GR
  2 A$bloxorz$85       002B GR  |   2 A$bloxorz$853      030B GR
  2 A$bloxorz$854      030E GR  |   2 A$bloxorz$860      0311 GR
  2 A$bloxorz$861      0315 GR  |   2 A$bloxorz$864      0316 GR
  2 A$bloxorz$870      0318 GR  |   2 A$bloxorz$876      031B GR
  2 A$bloxorz$877      031C GR  |   2 A$bloxorz$88       002E GR
  2 A$bloxorz$883      031F GR  |   2 A$bloxorz$889      0322 GR
  2 A$bloxorz$89       0030 GR  |   2 A$bloxorz$890      0325 GR
  2 A$bloxorz$896      0329 GR  |   2 A$bloxorz$897      032C GR
  2 A$bloxorz$898      032E GR  |   2 A$bloxorz$899      0331 GR
  2 A$bloxorz$900      0334 GR  |   2 A$bloxorz$906      0336 GR
  2 A$bloxorz$907      0339 GR  |   2 A$bloxorz$908      033A GR
  2 A$bloxorz$909      033C GR  |   2 A$bloxorz$910      033F GR
  2 A$bloxorz$911      0341 GR  |   2 A$bloxorz$912      0343 GR
  2 A$bloxorz$913      0346 GR  |   2 A$bloxorz$919      0348 GR
  2 A$bloxorz$920      034B GR  |   2 A$bloxorz$921      034C GR
  2 A$bloxorz$922      034E GR  |   2 A$bloxorz$923      0351 GR
  2 A$bloxorz$924      0354 GR  |   2 A$bloxorz$930      0356 GR
  2 A$bloxorz$931      0359 GR  |   2 A$bloxorz$932      035B GR
  2 A$bloxorz$933      035E GR  |   2 A$bloxorz$934      0361 GR
  2 A$bloxorz$940      0363 GR  |   2 A$bloxorz$941      0366 GR
  2 A$bloxorz$942      0367 GR  |   2 A$bloxorz$943      0369 GR
  2 A$bloxorz$944      036C GR  |   2 A$bloxorz$945      036E GR
  2 A$bloxorz$946      0370 GR  |   2 A$bloxorz$947      0373 GR
  2 A$bloxorz$95       0032 GR  |   2 A$bloxorz$953      0375 GR
  2 A$bloxorz$954      0378 GR  |   2 A$bloxorz$955      0379 GR
  2 A$bloxorz$956      037B GR  |   2 A$bloxorz$957      037E GR
  2 A$bloxorz$958      0381 GR  |   2 A$bloxorz$96       0035 GR
  2 A$bloxorz$964      0383 GR  |   2 A$bloxorz$965      0385 GR
  2 A$bloxorz$966      0388 GR  |   2 A$bloxorz$967      038A GR
  2 A$bloxorz$968      038C GR  |   2 A$bloxorz$969      038E GR
  2 A$bloxorz$97       0037 GR  |   2 A$bloxorz$970      0390 GR
  2 A$bloxorz$971      0394 GR  |   2 A$bloxorz$978      0396 GR
  2 A$bloxorz$979      0398 GR  |   2 A$bloxorz$98       003A GR
  2 A$bloxorz$980      039A GR  |   2 A$bloxorz$981      039C GR
  2 A$bloxorz$982      039E GR  |   2 A$bloxorz$989      03A0 GR
  2 A$bloxorz$99       003C GR  |   2 A$bloxorz$996      03A3 GR
  2 L101               085F R   |   2 L102               08E2 R
  2 L103               08DD R   |   2 L104               08F1 R
  2 L105               08F4 R   |   2 L109               092B R
  2 L110               0962 R   |   2 L111               093E R
  2 L112               0951 R   |   2 L113               0975 R
  2 L114               0987 R   |   2 L115               09AB R
  2 L116               09A8 R   |   2 L117               09D2 R
  2 L118               09C2 R   |   2 L119               09CF R
  2 L121               09DC R   |   2 L123               0A0E R
  2 L124               0A99 R   |   2 L125               0A4D R
  2 L126               0A5F R   |   2 L127               0A68 R
  2 L128               0A56 R   |   2 L129               0A71 R
  2 L130               0A7A R   |   2 L131               0A83 R
  2 L132               0A8B R   |   2 L133               0A93 R
  2 L134               0A3B R   |   2 L135               0AB3 R
  2 L138               0A24 R   |   2 L17                015E R
  2 L18                0168 R   |   2 L19                0172 R
  2 L2                 0006 R   |   2 L21                017C R
  2 L28                02A4 R   |   2 L33                02F9 R
  2 L34                02FC R   |   2 L39                03BD R
  2 L40                0396 R   |   2 L41                03A5 R
  2 L43                03A0 R   |   2 L44                03A3 R
  2 L45                03AD R   |   2 L46                03B0 R
  2 L47                03BA R   |   2 L48                03BD R
  2 L49                03ED R   |   2 L5                 004C R
  2 L50                03F9 R   |   2 L51                047D R
  2 L52                040B R   |   2 L53                0429 R
  2 L55                0419 R   |   2 L56                0426 R
  2 L57                043C R   |   2 L58                0450 R
  2 L59                0465 R   |   2 L6                 0086 R
  2 L60                047D R   |   2 L61                0485 R
  2 L62                03B2 R   |   2 L63                0452 R
  2 L67                04B8 R   |   2 L68                04BA R
  2 L7                 0088 R   |   2 L71                04E8 R
  2 L72                0513 R   |   2 L74                055E R
  2 L76                0623 R   |   2 L77                0632 R
  2 L78                0641 R   |   2 L8                 0071 R
  2 L80                0650 R   |   2 L82                070D R
  2 L83                0728 R   |   2 L85                0734 R
  2 L87                0754 R   |   2 L89                075E R
  2 L9                 0055 R   |   2 L92                0778 R
  2 L94                080A R   |   2 L95                07F4 R
  2 L97                0814 R   |   2 LC0                0108 R
  2 LC1                0562 R   |   2 LC10               0779 R
  2 LC11               0787 R   |   2 LC12               078E R
  2 LC2                056F R   |   2 LC3                0578 R
  2 LC4                0581 R   |   2 LC5                058A R
  2 LC6                0654 R   |   2 LC7                065F R
  2 LC8                066E R   |   2 LC9                067D R
    _Vec_Buttons       **** GX  |     _Vec_Text_Widt     **** GX
    ___DP_to_C8        **** GX  |     ___DP_to_D0        **** GX
    ___Do_Sound        **** GX  |     ___Draw_VLp        **** GX
    ___Init_Music_     **** GX  |     ___Intensity_a     **** GX
    ___Joy_Digital     **** GX  |     ___Moveto_d        **** GX
    ___Print_Str_d     **** GX  |     ___Read_Btns       **** GX
    ___Reset0Ref       **** GX  |     ___Wait_Recal      **** GX
  2 _arcadeEnd         0113 GR  |   4 _arcadeIndex       001D GR
  2 _arcadeLevels      0B5E R   |   2 _arcadeMenu        0593 GR
  4 _arcadeMode        001B GR  |   4 _arcadeSelecti     001C GR
    _blockAnimatin     **** GX  |   2 _blockFalling      0738 GR
  2 _blockMoving       0316 GR  |   2 _blockMovingAt     0818 GR
  2 _blockMovingTo     028C GR  |     _blockOrientat     **** GX
    _blockStartLev     **** GX  |   2 _blockWaiting      090E GR
    _blockX            **** GX  |     _blockY            **** GX
    _blockYOfs         **** GX  |   2 _changeMusic       00AD GR
  2 _clearMenu         0794 GR  |   3 _currentMusic      0000 GR
    _delay10ms         **** GX  |     _doBlockAnimat     **** GX
    _dp_VIA_t1_cnt     **** GX  |     _drawBlock         **** GX
  2 _drawField         00B6 GR  |     _endX              **** GX
    _endY              **** GX  |   2 _fallingMusic      0B20 GR
  4 _frames            0016 GR  |   4 _gameState         001E GR
    _getField          **** GX  |   4 _infoText          0000 GR
    _initLevel         **** GX  |     _initSwatches      **** GX
    _isField           **** GX  |   2 _itoa              002E GR
    _lastBlockDire     **** GX  |   2 _led8              0B48 GR
    _level             **** GX  |     _levelCount        **** GX
  2 _levelEndMusic     0B06 GR  |   4 _levelHighscor     0018 GR
    _levelNumber       **** GX  |     _levelOffset       **** GX
    _levels            **** GX  |     _lineCount         **** GX
    _lineX0            **** GX  |     _lineX1            **** GX
    _lineY0            **** GX  |     _lineY1            **** GX
  2 _main              09DD GR  |   2 _mainMenu          0690 GR
  2 _moveBlock         02E4 GR  |     _moveBlockImpl     **** GX
  4 _moveCount         0014 GR  |   2 _movingMusic       0B40 GR
    _musicInit         **** GX  |     _musicPlay         **** GX
    _nextBank          **** GX  |   4 _picAvailable      001A GR
    _picRead           **** GX  |     _picWrite          **** GX
  2 _readEeprom        04A8 GR  |   2 _runtimeError      0000 GR
  2 _sendCommand       0488 GR  |   2 _setBank           08F8 GR
  2 _showInfo          0262 GR  |   2 _showInfo2         0180 GR
    _splitMode         **** GX  |   2 _startBlockFal     02FD GR
  2 _startLevel        04BB GR  |   2 _startMusic        0AE6 GR
    _swapSplit         **** GX  |     _swatchSwitch      **** GX
    _testMerge         **** GX  |   2 _updateInfoTex     02A5 GR
  3 _vecx              0002 GR  |   2 _writeEeprom       0761 GR
  2 drawFieldLoop      00CD R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  B72   flags  100
   3 .data            size    4   flags  100
   4 .bss             size   1F   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

