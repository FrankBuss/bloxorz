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
   4784                      33 _runtimeError:
   4784 34 60         [ 7]   34 	pshs	y,u	; 
   4786 32 7C         [ 5]   35 	leas	-4,s	; ,,
   4788 31 84         [ 4]   36 	leay	,x	;  msg, msg
                             37 ;----- asm -----
                             38 ;  197 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             39 	; #ENR#[187]    while (1) {
                             40 ;  0 "" 2
                             41 ;--- end asm ---
   478A                      42 L2:
                             43 ;----- asm -----
                             44 ;  199 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             45 	; #ENR#[188]        frwait();
                             46 ;  0 "" 2
                             47 ;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   478A BD F1 92      [ 8]   48 	jsr ___Wait_Recal; BIOS call
                             49 ;  0 "" 2
                             50 ;  201 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             51 	; #ENR#[189]        Intensity_a(0x5f);
                             52 ;  0 "" 2
                             53 ;--- end asm ---
   478D C6 5F         [ 2]   54 	ldb	#95	; ,
   478F E7 63         [ 5]   55 	stb	3,s	; , a
                             56 ;----- asm -----
                             57 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4791 A6 63         [ 5]   58 	lda 3,s	;  a
   4793 BD F2 AB      [ 8]   59 	jsr ___Intensity_a; BIOS call
                             60 ;  0 "" 2
                             61 ;  203 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             62 	; #ENR#[190]        Vec_Text_Width = 90;
                             63 ;  0 "" 2
                             64 ;--- end asm ---
   4796 C6 5A         [ 2]   65 	ldb	#90	; ,
   4798 F7 C8 2B      [ 5]   66 	stb	_Vec_Text_Width	; , Vec_Text_Width
                             67 ;----- asm -----
                             68 ;  205 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             69 	; #ENR#[191]        Print_Str_d(-10, -110, msg);
                             70 ;  0 "" 2
                             71 ;--- end asm ---
   479B C6 F6         [ 2]   72 	ldb	#-10	; ,
   479D E7 63         [ 5]   73 	stb	3,s	; , a
   479F C6 92         [ 2]   74 	ldb	#-110	; ,
   47A1 E7 62         [ 5]   75 	stb	2,s	; , b
   47A3 10 AF E4      [ 6]   76 	sty	,s	;  msg, u
                             77 ;----- asm -----
                             78 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   47A6 A6 63         [ 5]   79 	lda 3,s	;  a
   47A8 E6 62         [ 5]   80 	ldb 2,s	;  b
   47AA EE E4         [ 5]   81 	ldu ,s	;  u
   47AC BD F3 7A      [ 8]   82 	jsr ___Print_Str_d; BIOS call
                             83 ;  0 "" 2
                             84 ;--- end asm ---
   47AF 7E 47 8A      [ 4]   85 	jmp	L2	; 
                             86 	.globl _itoa
   47B2                      87 _itoa:
   47B2 34 60         [ 7]   88 	pshs	y,u	; 
   47B4 32 71         [ 5]   89 	leas	-15,s	; ,,
                             90 ;----- asm -----
                             91 ;  237 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                             92 	; #ENR#[216]    uint16_t muls[] = { 100, 10, 1 };
                             93 ;  0 "" 2
                             94 ;--- end asm ---
   47B6 CC 00 64      [ 3]   95 	ldd	#100	; ,
   47B9 ED 69         [ 6]   96 	std	9,s	; , muls
   47BB CC 00 0A      [ 3]   97 	ldd	#10	; ,
   47BE ED 6B         [ 6]   98 	std	11,s	; , muls
   47C0 CC 00 01      [ 3]   99 	ldd	#1	; ,
   47C3 ED 6D         [ 6]  100 	std	13,s	; , muls
                            101 ;----- asm -----
                            102 ;  239 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            103 	; #ENR#[217]    if (number > 999) number = 999;
                            104 ;  0 "" 2
                            105 ;--- end asm ---
   47C5 31 84         [ 4]  106 	leay	,x	;  number.118, number
   47C7 8C 03 E7      [ 4]  107 	cmpx	#999	;cmphi:	;  number.118,
   47CA 23 04         [ 3]  108 	bls	L5	; 
   47CC 10 8E 03 E7   [ 4]  109 	ldy	#999	;  number.118,
   47D0                     110 L5:
                            111 ;----- asm -----
                            112 ;  241 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            113 	; #ENR#[218]    for (uint8_t i = 0; i < 3; i++) {
                            114 ;  0 "" 2
                            115 ;--- end asm ---
   47D0 30 69         [ 5]  116 	leax	9,s	; ,,
   47D2 AF 65         [ 6]  117 	stx	5,s	; , ivtmp.114
   47D4 EC E8 15      [ 6]  118 	ldd	21,s	; , text
   47D7 ED 67         [ 6]  119 	std	7,s	; , ivtmp.116
   47D9                     120 L9:
                            121 ;----- asm -----
                            122 ;  243 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            123 	; #ENR#[219]        uint8_t d = 0;
                            124 ;  0 "" 2
                            125 ;  245 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            126 	; #ENR#[220]        while (number >= muls[i]) {
                            127 ;  0 "" 2
                            128 ;--- end asm ---
   47D9 AE 65         [ 6]  129 	ldx	5,s	; , ivtmp.114
   47DB AE 84         [ 5]  130 	ldx	,x	; , muls
   47DD AF E4         [ 5]  131 	stx	,s	; , D.2290
   47DF 34 20         [ 6]  132 	pshs	y	;cmphi: R:y with R:x	;  number.118,
   47E1 AC E1         [ 9]  133 	cmpx	,s++	;cmphi:	; 
   47E3 22 25         [ 3]  134 	bhi	L6	; 
   47E5 1F 10         [ 6]  135 	tfr	x,d	; ,
   47E7 40            [ 2]  136 	nega
   47E8 50            [ 2]  137 	negb
   47E9 82 00         [ 2]  138 	sbca	#0
   47EB ED 63         [ 6]  139 	std	3,s	; , ivtmp.104
   47ED 1F 20         [ 6]  140 	tfr	y,d	;  number.118,
   47EF A3 E4         [ 6]  141 	subd	,s	;subhi: R:d -= ,s	; , D.2290
   47F1 1F 02         [ 6]  142 	tfr	d,y	; , number.118
   47F3 6F 62         [ 7]  143 	clr	2,s	;  d
   47F5                     144 L8:
                            145 ;----- asm -----
                            146 ;  247 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            147 	; #ENR#[221]            d++;
                            148 ;  0 "" 2
                            149 ;--- end asm ---
   47F5 6C 62         [ 7]  150 	inc	2,s	;  d
                            151 ;----- asm -----
                            152 ;  249 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            153 	; #ENR#[222]            number -= muls[i];
                            154 ;  0 "" 2
                            155 ;--- end asm ---
   47F7 EC 63         [ 6]  156 	ldd	3,s	; , ivtmp.104
   47F9 33 AB         [ 8]  157 	leau	d,y	;  number.117,, number.118
   47FB EC E4         [ 5]  158 	ldd	,s	; , D.2290
   47FD 30 CB         [ 8]  159 	leax	d,u	;  tmp85,, number.117
   47FF 34 10         [ 6]  160 	pshs	x	;cmphi: R:x with R:d	;  tmp85,
   4801 10 A3 E1      [10]  161 	cmpd	,s++	;cmphi:	; 
   4804 22 06         [ 3]  162 	bhi	L7	; 
   4806 31 C4         [ 4]  163 	leay	,u	;  number.118, number.117
   4808 20 EB         [ 3]  164 	bra	L8	; 
   480A                     165 L6:
   480A 6F 62         [ 7]  166 	clr	2,s	;  d
   480C                     167 L7:
                            168 ;----- asm -----
                            169 ;  252 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            170 	; #ENR#[224]        text[i] = d + '0';
                            171 ;  0 "" 2
                            172 ;--- end asm ---
   480C E6 62         [ 5]  173 	ldb	2,s	; , d
   480E CB 30         [ 2]  174 	addb	#48	; ,
   4810 AE 67         [ 6]  175 	ldx	7,s	; , ivtmp.116
   4812 30 01         [ 5]  176 	leax	1,x	; ,,
   4814 AF 67         [ 6]  177 	stx	7,s	; , ivtmp.116
   4816 30 1F         [ 5]  178 	leax	-1,x	; ,,
   4818 E7 80         [ 6]  179 	stb	,x+	; ,
   481A AE 65         [ 6]  180 	ldx	5,s	; , ivtmp.114
   481C 30 02         [ 5]  181 	leax	2,x	; ,,
   481E AF 65         [ 6]  182 	stx	5,s	; , ivtmp.114
   4820 1F 40         [ 6]  183 	tfr	s,d	; ,
   4822 C3 00 0F      [ 4]  184 	addd	#15	; ,
   4825 34 06         [ 7]  185 	pshs	d	;cmphi: R:d with R:x	; ,
   4827 AC E1         [ 9]  186 	cmpx	,s++	;cmphi:	; 
   4829 10 26 FF AC   [ 6]  187 	lbne	L9	; 
   482D 32 6F         [ 5]  188 	leas	15,s	; ,,
   482F 35 E0         [ 8]  189 	puls	y,u,pc	; 
                            190 	.globl _changeMusic
   4831                     191 _changeMusic:
                            192 ;----- asm -----
                            193 ;  269 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            194 	; #ENR#[237]    tstat = 1;
                            195 ;  0 "" 2
                            196 ;--- end asm ---
   4831 C6 01         [ 2]  197 	ldb	#1	; ,
   4833 F7 C8 56      [ 5]  198 	stb	-14250	; ,
                            199 ;----- asm -----
                            200 ;  271 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            201 	; #ENR#[238]    currentMusic = music;
                            202 ;  0 "" 2
                            203 ;--- end asm ---
   4836 BF C8 86      [ 6]  204 	stx	_currentMusic	;  music, currentMusic
   4839 39            [ 5]  205 	rts
                            206 	.globl _drawField
   483A                     207 _drawField:
   483A 32 7F         [ 5]  208 	leas	-1,s	; ,,
                            209 ;----- asm -----
                            210 ;  351 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            211 	; #ENR#[289]    intens(0x35);
                            212 ;  0 "" 2
                            213 ;--- end asm ---
   483C C6 35         [ 2]  214 	ldb	#53	; ,
   483E E7 E4         [ 4]  215 	stb	,s	; , a
                            216 ;----- asm -----
                            217 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4840 A6 E4         [ 4]  218 	lda ,s	;  a
   4842 BD F2 AB      [ 8]  219 	jsr ___Intensity_a; BIOS call
                            220 ;  0 "" 2
                            221 ;  366 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4845 34 5E         [10]  222 		pshs a, b, dp, x, u
                            223 ;  0 "" 2
                            224 ;  367 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4847 86 D0         [ 2]  225 		lda #0xd0
                            226 ;  0 "" 2
                            227 ;  368 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4849 1F 8B         [ 6]  228 		tfr a, dp
                            229 ;  0 "" 2
                            230 ;  369 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   484B 8E 00 00      [ 3]  231 		ldx #0
                            232 ;  0 "" 2
                            233 ;  370 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   484E F6 C8 80      [ 5]  234 		ldb _lineCount
                            235 ;  0 "" 2
                            236 ;  371 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4851                     237 	drawFieldLoop:
                            238 ;  0 "" 2
                            239 ;  372 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4851 34 04         [ 6]  240 		pshs b
                            241 ;  0 "" 2
                            242 ;  373 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4853 34 10         [ 6]  243 		pshs x
                            244 ;  0 "" 2
                            245 ;  374 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4855 BD F3 54      [ 8]  246 		jsr 0xf354
                            247 ;  0 "" 2
                            248 ;  375 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4858 35 10         [ 6]  249 		puls x
                            250 ;  0 "" 2
                            251 ;  376 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   485A A6 89 C9 7E   [ 8]  252 		lda _lineY0,x
                            253 ;  0 "" 2
                            254 ;  377 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   485E E6 89 C9 06   [ 8]  255 		ldb _lineX0,x
                            256 ;  0 "" 2
                            257 ;  378 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4862 34 10         [ 6]  258 		pshs x
                            259 ;  0 "" 2
                            260 ;  379 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4864 BD F2 FC      [ 8]  261 		jsr 0xf2fc
                            262 ;  0 "" 2
                            263 ;  380 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4867 35 10         [ 6]  264 		puls x
                            265 ;  0 "" 2
                            266 ;  381 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4869 A6 89 CA 6E   [ 8]  267 		lda _lineY1,x
                            268 ;  0 "" 2
                            269 ;  382 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   486D E6 89 C9 F6   [ 8]  270 		ldb _lineX1,x
                            271 ;  0 "" 2
                            272 ;  383 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4871 A0 89 C9 7E   [ 8]  273 		suba _lineY0,x
                            274 ;  0 "" 2
                            275 ;  384 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4875 E0 89 C9 06   [ 8]  276 		subb _lineX0,x
                            277 ;  0 "" 2
                            278 ;  385 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4879 34 10         [ 6]  279 		pshs x
                            280 ;  0 "" 2
                            281 ;  386 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   487B BD F3 DF      [ 8]  282 		jsr 0xf3df
                            283 ;  0 "" 2
                            284 ;  387 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   487E 35 10         [ 6]  285 		puls x
                            286 ;  0 "" 2
                            287 ;  388 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4880 A6 80         [ 6]  288 		lda ,x+
                            289 ;  0 "" 2
                            290 ;  389 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4882 35 04         [ 6]  291 		puls b
                            292 ;  0 "" 2
                            293 ;  390 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4884 5A            [ 2]  294 		decb
                            295 ;  0 "" 2
                            296 ;  391 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4885 26 CA         [ 3]  297 		bne drawFieldLoop
                            298 ;  0 "" 2
                            299 ;  392 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
   4887 35 5E         [10]  300 		puls a, b, dp, x, u
                            301 ;  0 "" 2
                            302 ;--- end asm ---
   4889 32 61         [ 5]  303 	leas	1,s	; ,,
   488B 39            [ 5]  304 	rts
   488C                     305 LC0:
   488C 47                  306 	.byte	0x47
   488D 41                  307 	.byte	0x41
   488E 4D                  308 	.byte	0x4D
   488F 45                  309 	.byte	0x45
   4890 20                  310 	.byte	0x20
   4891 4F                  311 	.byte	0x4F
   4892 56                  312 	.byte	0x56
   4893 45                  313 	.byte	0x45
   4894 52                  314 	.byte	0x52
   4895 80                  315 	.byte	0x80
   4896 00                  316 	.byte	0x00
                            317 	.globl _arcadeEnd
   4897                     318 _arcadeEnd:
   4897 34 40         [ 6]  319 	pshs	u	; 
   4899 32 7C         [ 5]  320 	leas	-4,s	; ,,
                            321 ;----- asm -----
                            322 ;  848 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            323 	; #ENR#[609]    Read_Btns();
                            324 ;  0 "" 2
                            325 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   489B BD F1 BA      [ 8]  326 	jsr ___Read_Btns; BIOS call
                            327 ;  0 "" 2
                            328 ;  850 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            329 	; #ENR#[610]    Intensity_a(0x5f);
                            330 ;  0 "" 2
                            331 ;--- end asm ---
   489E C6 5F         [ 2]  332 	ldb	#95	; ,
   48A0 E7 62         [ 5]  333 	stb	2,s	; , a
                            334 ;----- asm -----
                            335 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   48A2 A6 62         [ 5]  336 	lda 2,s	;  a
   48A4 BD F2 AB      [ 8]  337 	jsr ___Intensity_a; BIOS call
                            338 ;  0 "" 2
                            339 ;  852 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            340 	; #ENR#[611]    Vec_Text_Width = 90;
                            341 ;  0 "" 2
                            342 ;--- end asm ---
   48A7 C6 5A         [ 2]  343 	ldb	#90	; ,
   48A9 F7 C8 2B      [ 5]  344 	stb	_Vec_Text_Width	; , Vec_Text_Width
                            345 ;----- asm -----
                            346 ;  854 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            347 	; #ENR#[612]    Print_Str_d(100, -70, "GAME OVER�");
                            348 ;  0 "" 2
                            349 ;--- end asm ---
   48AC CB 0A         [ 2]  350 	addb	#10	; ,
   48AE E7 62         [ 5]  351 	stb	2,s	; , a
   48B0 C6 BA         [ 2]  352 	ldb	#-70	; ,
   48B2 E7 63         [ 5]  353 	stb	3,s	; , b
   48B4 8E 48 8C      [ 3]  354 	ldx	#LC0	; ,
   48B7 AF E4         [ 5]  355 	stx	,s	; , u
                            356 ;----- asm -----
                            357 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   48B9 A6 62         [ 5]  358 	lda 2,s	;  a
   48BB E6 63         [ 5]  359 	ldb 3,s	;  b
   48BD EE E4         [ 5]  360 	ldu ,s	;  u
   48BF BD F3 7A      [ 8]  361 	jsr ___Print_Str_d; BIOS call
                            362 ;  0 "" 2
                            363 ;  856 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            364 	; #ENR#[613]    Print_Str_d(50, -110, infoText);
                            365 ;  0 "" 2
                            366 ;--- end asm ---
   48C2 C6 32         [ 2]  367 	ldb	#50	; ,
   48C4 E7 63         [ 5]  368 	stb	3,s	; , a
   48C6 C6 92         [ 2]  369 	ldb	#-110	; ,
   48C8 E7 62         [ 5]  370 	stb	2,s	; , b
   48CA 8E CA E7      [ 3]  371 	ldx	#_infoText	; ,
   48CD AF E4         [ 5]  372 	stx	,s	; , u
                            373 ;----- asm -----
                            374 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   48CF A6 63         [ 5]  375 	lda 3,s	;  a
   48D1 E6 62         [ 5]  376 	ldb 2,s	;  b
   48D3 EE E4         [ 5]  377 	ldu ,s	;  u
   48D5 BD F3 7A      [ 8]  378 	jsr ___Print_Str_d; BIOS call
                            379 ;  0 "" 2
                            380 ;  858 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            381 	; #ENR#[614]    if (Vec_Buttons & 1) {
                            382 ;  0 "" 2
                            383 ;--- end asm ---
   48D8 F6 C8 11      [ 5]  384 	ldb	_Vec_Buttons	; , Vec_Buttons
   48DB C5 01         [ 2]  385 	bitb	#1	; ,
   48DD 27 03         [ 3]  386 	beq	L17	; 
                            387 ;----- asm -----
                            388 ;  860 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            389 	; #ENR#[615]        gameState = MainMenu;
                            390 ;  0 "" 2
                            391 ;--- end asm ---
   48DF 7F CB 05      [ 7]  392 	clr	_gameState	;  gameState
   48E2                     393 L17:
                            394 ;----- asm -----
                            395 ;  863 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            396 	; #ENR#[617]    if (Vec_Buttons & 2) {
                            397 ;  0 "" 2
                            398 ;--- end asm ---
   48E2 F6 C8 11      [ 5]  399 	ldb	_Vec_Buttons	; , Vec_Buttons
   48E5 C5 02         [ 2]  400 	bitb	#2	; ,
   48E7 27 03         [ 3]  401 	beq	L18	; 
                            402 ;----- asm -----
                            403 ;  865 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            404 	; #ENR#[618]        gameState = MainMenu;
                            405 ;  0 "" 2
                            406 ;--- end asm ---
   48E9 7F CB 05      [ 7]  407 	clr	_gameState	;  gameState
   48EC                     408 L18:
                            409 ;----- asm -----
                            410 ;  868 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            411 	; #ENR#[620]    if (Vec_Buttons & 4) {
                            412 ;  0 "" 2
                            413 ;--- end asm ---
   48EC F6 C8 11      [ 5]  414 	ldb	_Vec_Buttons	; , Vec_Buttons
   48EF C5 04         [ 2]  415 	bitb	#4	; ,
   48F1 27 03         [ 3]  416 	beq	L19	; 
                            417 ;----- asm -----
                            418 ;  870 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            419 	; #ENR#[621]        gameState = MainMenu;
                            420 ;  0 "" 2
                            421 ;--- end asm ---
   48F3 7F CB 05      [ 7]  422 	clr	_gameState	;  gameState
   48F6                     423 L19:
                            424 ;----- asm -----
                            425 ;  873 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            426 	; #ENR#[623]    if (Vec_Buttons & 8) {
                            427 ;  0 "" 2
                            428 ;--- end asm ---
   48F6 F6 C8 11      [ 5]  429 	ldb	_Vec_Buttons	; , Vec_Buttons
   48F9 C5 08         [ 2]  430 	bitb	#8	; ,
   48FB 27 03         [ 3]  431 	beq	L21	; 
                            432 ;----- asm -----
                            433 ;  875 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            434 	; #ENR#[624]        gameState = MainMenu;
                            435 ;  0 "" 2
                            436 ;--- end asm ---
   48FD 7F CB 05      [ 7]  437 	clr	_gameState	;  gameState
   4900                     438 L21:
   4900 32 64         [ 5]  439 	leas	4,s	; ,,
   4902 35 C0         [ 7]  440 	puls	u,pc	; 
                            441 	.globl _showInfo2
   4904                     442 _showInfo2:
   4904 34 20         [ 6]  443 	pshs	y	; 
   4906 32 7D         [ 5]  444 	leas	-3,s	; ,,
                            445 ;----- asm -----
                            446 ;  924 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            447 	; #ENR#[660]    zergnd();
                            448 ;  0 "" 2
                            449 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4908 BD F3 54      [ 8]  450 	jsr ___Reset0Ref; BIOS call
                            451 ;  0 "" 2
                            452 ;  926 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            453 	; #ENR#[661]    intens(0x50);
                            454 ;  0 "" 2
                            455 ;--- end asm ---
   490B C6 50         [ 2]  456 	ldb	#80	; ,
   490D E7 E4         [ 4]  457 	stb	,s	; , a
                            458 ;----- asm -----
                            459 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   490F A6 E4         [ 4]  460 	lda ,s	;  a
   4911 BD F2 AB      [ 8]  461 	jsr ___Intensity_a; BIOS call
                            462 ;  0 "" 2
                            463 ;  929 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            464 	; #ENR#[663]    zergnd();
                            465 ;  0 "" 2
                            466 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4914 BD F3 54      [ 8]  467 	jsr ___Reset0Ref; BIOS call
                            468 ;  0 "" 2
                            469 ;  931 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            470 	; #ENR#[664]    positd(-50, 100);
                            471 ;  0 "" 2
                            472 ;--- end asm ---
   4917 C6 80         [ 2]  473 	ldb	#-128	; ,
   4919 D7 04         [ 4]  474 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   491B C6 64         [ 2]  475 	ldb	#100	; ,
   491D E7 62         [ 5]  476 	stb	2,s	; , a
   491F C6 CE         [ 2]  477 	ldb	#-50	; ,
   4921 E7 E4         [ 4]  478 	stb	,s	; , b
                            479 ;----- asm -----
                            480 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4923 A6 62         [ 5]  481 	lda 2,s	;  a
   4925 E6 E4         [ 4]  482 	ldb ,s	;  b
   4927 BD F3 12      [ 8]  483 	jsr ___Moveto_d; BIOS call
                            484 ;  0 "" 2
                            485 ;  933 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            486 	; #ENR#[665]    pack1x((void*)led8);
                            487 ;  0 "" 2
                            488 ;--- end asm ---
   492A C6 80         [ 2]  489 	ldb	#-128	; ,
   492C D7 04         [ 4]  490 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   492E 10 8E 52 FD   [ 4]  491 	ldy	#_led8	;  tmp27,
   4932 10 AF E4      [ 6]  492 	sty	,s	;  tmp27, x
                            493 ;----- asm -----
                            494 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4935 AE E4         [ 5]  495 	ldx ,s	;  x
   4937 BD F4 10      [ 8]  496 	jsr ___Draw_VLp; BIOS call
                            497 ;  0 "" 2
                            498 ;  936 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            499 	; #ENR#[667]    zergnd();
                            500 ;  0 "" 2
                            501 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   493A BD F3 54      [ 8]  502 	jsr ___Reset0Ref; BIOS call
                            503 ;  0 "" 2
                            504 ;  938 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            505 	; #ENR#[668]    positd(-40, 110);
                            506 ;  0 "" 2
                            507 ;--- end asm ---
   493D C6 80         [ 2]  508 	ldb	#-128	; ,
   493F D7 04         [ 4]  509 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4941 C6 6E         [ 2]  510 	ldb	#110	; ,
   4943 E7 E4         [ 4]  511 	stb	,s	; , a
   4945 C6 D8         [ 2]  512 	ldb	#-40	; ,
   4947 E7 62         [ 5]  513 	stb	2,s	; , b
                            514 ;----- asm -----
                            515 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4949 A6 E4         [ 4]  516 	lda ,s	;  a
   494B E6 62         [ 5]  517 	ldb 2,s	;  b
   494D BD F3 12      [ 8]  518 	jsr ___Moveto_d; BIOS call
                            519 ;  0 "" 2
                            520 ;  940 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            521 	; #ENR#[669]    pack1x((void*)led8);
                            522 ;  0 "" 2
                            523 ;--- end asm ---
   4950 C6 80         [ 2]  524 	ldb	#-128	; ,
   4952 D7 04         [ 4]  525 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4954 10 AF E4      [ 6]  526 	sty	,s	;  tmp27, x
                            527 ;----- asm -----
                            528 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4957 AE E4         [ 5]  529 	ldx ,s	;  x
   4959 BD F4 10      [ 8]  530 	jsr ___Draw_VLp; BIOS call
                            531 ;  0 "" 2
                            532 ;  943 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            533 	; #ENR#[671]    zergnd();
                            534 ;  0 "" 2
                            535 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   495C BD F3 54      [ 8]  536 	jsr ___Reset0Ref; BIOS call
                            537 ;  0 "" 2
                            538 ;  945 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            539 	; #ENR#[672]    positd(-30, 120);
                            540 ;  0 "" 2
                            541 ;--- end asm ---
   495F C6 80         [ 2]  542 	ldb	#-128	; ,
   4961 D7 04         [ 4]  543 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4963 C6 78         [ 2]  544 	ldb	#120	; ,
   4965 E7 62         [ 5]  545 	stb	2,s	; , a
   4967 C6 E2         [ 2]  546 	ldb	#-30	; ,
   4969 E7 E4         [ 4]  547 	stb	,s	; , b
                            548 ;----- asm -----
                            549 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   496B A6 62         [ 5]  550 	lda 2,s	;  a
   496D E6 E4         [ 4]  551 	ldb ,s	;  b
   496F BD F3 12      [ 8]  552 	jsr ___Moveto_d; BIOS call
                            553 ;  0 "" 2
                            554 ;  947 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            555 	; #ENR#[673]    pack1x((void*)led8);
                            556 ;  0 "" 2
                            557 ;--- end asm ---
   4972 C6 80         [ 2]  558 	ldb	#-128	; ,
   4974 D7 04         [ 4]  559 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4976 10 AF E4      [ 6]  560 	sty	,s	;  tmp27, x
                            561 ;----- asm -----
                            562 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4979 AE E4         [ 5]  563 	ldx ,s	;  x
   497B BD F4 10      [ 8]  564 	jsr ___Draw_VLp; BIOS call
                            565 ;  0 "" 2
                            566 ;  950 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            567 	; #ENR#[675]    zergnd();
                            568 ;  0 "" 2
                            569 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   497E BD F3 54      [ 8]  570 	jsr ___Reset0Ref; BIOS call
                            571 ;  0 "" 2
                            572 ;  952 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            573 	; #ENR#[676]    positd(0, 120);
                            574 ;  0 "" 2
                            575 ;--- end asm ---
   4981 C6 80         [ 2]  576 	ldb	#-128	; ,
   4983 D7 04         [ 4]  577 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4985 C6 78         [ 2]  578 	ldb	#120	; ,
   4987 E7 E4         [ 4]  579 	stb	,s	; , a
   4989 6F 62         [ 7]  580 	clr	2,s	;  b
                            581 ;----- asm -----
                            582 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   498B A6 E4         [ 4]  583 	lda ,s	;  a
   498D E6 62         [ 5]  584 	ldb 2,s	;  b
   498F BD F3 12      [ 8]  585 	jsr ___Moveto_d; BIOS call
                            586 ;  0 "" 2
                            587 ;  954 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            588 	; #ENR#[677]    pack1x((void*)led8);
                            589 ;  0 "" 2
                            590 ;--- end asm ---
   4992 C6 80         [ 2]  591 	ldb	#-128	; ,
   4994 D7 04         [ 4]  592 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   4996 10 AF E4      [ 6]  593 	sty	,s	;  tmp27, x
                            594 ;----- asm -----
                            595 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4999 AE E4         [ 5]  596 	ldx ,s	;  x
   499B BD F4 10      [ 8]  597 	jsr ___Draw_VLp; BIOS call
                            598 ;  0 "" 2
                            599 ;  957 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            600 	; #ENR#[679]    zergnd();
                            601 ;  0 "" 2
                            602 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   499E BD F3 54      [ 8]  603 	jsr ___Reset0Ref; BIOS call
                            604 ;  0 "" 2
                            605 ;  959 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            606 	; #ENR#[680]    positd(10, 120);
                            607 ;  0 "" 2
                            608 ;--- end asm ---
   49A1 C6 80         [ 2]  609 	ldb	#-128	; ,
   49A3 D7 04         [ 4]  610 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   49A5 C6 78         [ 2]  611 	ldb	#120	; ,
   49A7 E7 62         [ 5]  612 	stb	2,s	; , a
   49A9 C6 0A         [ 2]  613 	ldb	#10	; ,
   49AB E7 E4         [ 4]  614 	stb	,s	; , b
                            615 ;----- asm -----
                            616 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49AD A6 62         [ 5]  617 	lda 2,s	;  a
   49AF E6 E4         [ 4]  618 	ldb ,s	;  b
   49B1 BD F3 12      [ 8]  619 	jsr ___Moveto_d; BIOS call
                            620 ;  0 "" 2
                            621 ;  961 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            622 	; #ENR#[681]    pack1x((void*)led8);
                            623 ;  0 "" 2
                            624 ;--- end asm ---
   49B4 C6 80         [ 2]  625 	ldb	#-128	; ,
   49B6 D7 04         [ 4]  626 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   49B8 10 AF E4      [ 6]  627 	sty	,s	;  tmp27, x
                            628 ;----- asm -----
                            629 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49BB AE E4         [ 5]  630 	ldx ,s	;  x
   49BD BD F4 10      [ 8]  631 	jsr ___Draw_VLp; BIOS call
                            632 ;  0 "" 2
                            633 ;  964 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            634 	; #ENR#[683]    zergnd();
                            635 ;  0 "" 2
                            636 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49C0 BD F3 54      [ 8]  637 	jsr ___Reset0Ref; BIOS call
                            638 ;  0 "" 2
                            639 ;  966 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            640 	; #ENR#[684]    positd(20, 120);
                            641 ;  0 "" 2
                            642 ;--- end asm ---
   49C3 C6 80         [ 2]  643 	ldb	#-128	; ,
   49C5 D7 04         [ 4]  644 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   49C7 C6 78         [ 2]  645 	ldb	#120	; ,
   49C9 E7 E4         [ 4]  646 	stb	,s	; , a
   49CB C6 14         [ 2]  647 	ldb	#20	; ,
   49CD E7 62         [ 5]  648 	stb	2,s	; , b
                            649 ;----- asm -----
                            650 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49CF A6 E4         [ 4]  651 	lda ,s	;  a
   49D1 E6 62         [ 5]  652 	ldb 2,s	;  b
   49D3 BD F3 12      [ 8]  653 	jsr ___Moveto_d; BIOS call
                            654 ;  0 "" 2
                            655 ;  968 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            656 	; #ENR#[685]    pack1x((void*)led8);
                            657 ;  0 "" 2
                            658 ;--- end asm ---
   49D6 C6 80         [ 2]  659 	ldb	#-128	; ,
   49D8 D7 04         [ 4]  660 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   49DA 10 AF E4      [ 6]  661 	sty	,s	;  tmp27, x
                            662 ;----- asm -----
                            663 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49DD AE E4         [ 5]  664 	ldx ,s	;  x
   49DF BD F4 10      [ 8]  665 	jsr ___Draw_VLp; BIOS call
                            666 ;  0 "" 2
                            667 ;--- end asm ---
   49E2 32 63         [ 5]  668 	leas	3,s	; ,,
   49E4 35 A0         [ 7]  669 	puls	y,pc	; 
                            670 	.globl _showInfo
   49E6                     671 _showInfo:
   49E6 34 40         [ 6]  672 	pshs	u	; 
   49E8 32 7C         [ 5]  673 	leas	-4,s	; ,,
                            674 ;----- asm -----
                            675 ;  974 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            676 	; #ENR#[690]    Intensity_a(0x5f);
                            677 ;  0 "" 2
                            678 ;--- end asm ---
   49EA C6 5F         [ 2]  679 	ldb	#95	; ,
   49EC E7 63         [ 5]  680 	stb	3,s	; , a
                            681 ;----- asm -----
                            682 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   49EE A6 63         [ 5]  683 	lda 3,s	;  a
   49F0 BD F2 AB      [ 8]  684 	jsr ___Intensity_a; BIOS call
                            685 ;  0 "" 2
                            686 ;  976 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            687 	; #ENR#[691]    Vec_Text_Width = 100;
                            688 ;  0 "" 2
                            689 ;--- end asm ---
   49F3 C6 64         [ 2]  690 	ldb	#100	; ,
   49F5 F7 C8 2B      [ 5]  691 	stb	_Vec_Text_Width	; , Vec_Text_Width
                            692 ;----- asm -----
                            693 ;  978 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            694 	; #ENR#[692]    Print_Str_d(100, -70, infoText);
                            695 ;  0 "" 2
                            696 ;--- end asm ---
   49F8 E7 63         [ 5]  697 	stb	3,s	; , a
   49FA C6 BA         [ 2]  698 	ldb	#-70	; ,
   49FC E7 62         [ 5]  699 	stb	2,s	; , b
   49FE 8E CA E7      [ 3]  700 	ldx	#_infoText	; ,
   4A01 AF E4         [ 5]  701 	stx	,s	; , u
                            702 ;----- asm -----
                            703 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4A03 A6 63         [ 5]  704 	lda 3,s	;  a
   4A05 E6 62         [ 5]  705 	ldb 2,s	;  b
   4A07 EE E4         [ 5]  706 	ldu ,s	;  u
   4A09 BD F3 7A      [ 8]  707 	jsr ___Print_Str_d; BIOS call
                            708 ;  0 "" 2
                            709 ;--- end asm ---
   4A0C 32 64         [ 5]  710 	leas	4,s	; ,,
   4A0E 35 C0         [ 7]  711 	puls	u,pc	; 
                            712 	.globl _blockMovingToStart
   4A10                     713 _blockMovingToStart:
                            714 ;----- asm -----
                            715 ;  398 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            716 	; #ENR#[335]    drawField();
                            717 ;  0 "" 2
                            718 ;--- end asm ---
   4A10 BD 48 3A      [ 8]  719 	jsr	_drawField	; 
                            720 ;----- asm -----
                            721 ;  400 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            722 	; #ENR#[336]    drawBlock(blockYOfs);
                            723 ;  0 "" 2
                            724 ;--- end asm ---
   4A13 F6 C8 8B      [ 5]  725 	ldb	_blockYOfs	; , blockYOfs
   4A16 BD 04 B4      [ 8]  726 	jsr	_drawBlock	; 
                            727 ;----- asm -----
                            728 ;  402 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            729 	; #ENR#[337]    blockYOfs++;
                            730 ;  0 "" 2
                            731 ;--- end asm ---
   4A19 F6 C8 8B      [ 5]  732 	ldb	_blockYOfs	;  blockYOfs.29, blockYOfs
   4A1C 5C            [ 2]  733 	incb	;  blockYOfs.29
   4A1D F7 C8 8B      [ 5]  734 	stb	_blockYOfs	;  blockYOfs.29, blockYOfs
                            735 ;----- asm -----
                            736 ;  404 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            737 	; #ENR#[338]    if (blockYOfs == 0) {
                            738 ;  0 "" 2
                            739 ;--- end asm ---
   4A20 5D            [ 2]  740 	tstb	;  blockYOfs.29
   4A21 26 05         [ 3]  741 	bne	L28	; 
                            742 ;----- asm -----
                            743 ;  406 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            744 	; #ENR#[339]        gameState = BlockWaiting;
                            745 ;  0 "" 2
                            746 ;--- end asm ---
   4A23 C6 05         [ 2]  747 	ldb	#5	; ,
   4A25 F7 CB 05      [ 5]  748 	stb	_gameState	; , gameState
   4A28                     749 L28:
   4A28 39            [ 5]  750 	rts
                            751 	.globl _updateInfoText
   4A29                     752 _updateInfoText:
   4A29 34 40         [ 6]  753 	pshs	u	; 
                            754 ;----- asm -----
                            755 ;  259 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            756 	; #ENR#[230]    memcpy(infoText, "001 - 999�", 10);
                            757 ;  0 "" 2
                            758 ;--- end asm ---
   4A2B 8E CA E7      [ 3]  759 	ldx	#_infoText	;  tmp27,
   4A2E CE 30 30      [ 3]  760 	ldu	#12336	; ,
   4A31 EF 84         [ 5]  761 	stu	,x	; , infoText
   4A33 CE 31 20      [ 3]  762 	ldu	#12576	; ,
   4A36 FF CA E9      [ 6]  763 	stu	_infoText+2	; , infoText
   4A39 CE 2D 20      [ 3]  764 	ldu	#11552	; ,
   4A3C FF CA EB      [ 6]  765 	stu	_infoText+4	; , infoText
   4A3F CE 39 39      [ 3]  766 	ldu	#14649	; ,
   4A42 FF CA ED      [ 6]  767 	stu	_infoText+6	; , infoText
   4A45 CE 39 80      [ 3]  768 	ldu	#14720	; ,
   4A48 FF CA EF      [ 6]  769 	stu	_infoText+8	; , infoText
                            770 ;----- asm -----
                            771 ;  261 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            772 	; #ENR#[231]    itoa(moveCount, &infoText[0]);
                            773 ;  0 "" 2
                            774 ;--- end asm ---
   4A4B 34 10         [ 6]  775 	pshs	x	;  tmp27
   4A4D BE CA FB      [ 6]  776 	ldx	_moveCount	; , moveCount
   4A50 BD 47 B2      [ 8]  777 	jsr	_itoa	; 
                            778 ;----- asm -----
                            779 ;  263 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            780 	; #ENR#[232]    itoa(levelNumber + levelOffset, &infoText[6]);
                            781 ;  0 "" 2
                            782 ;--- end asm ---
   4A53 F6 3C C9      [ 5]  783 	ldb	_levelOffset	;  tmp35, levelOffset
   4A56 FB C8 83      [ 5]  784 	addb	_levelNumber	;  tmp35, levelNumber
   4A59 8E CA ED      [ 3]  785 	ldx	#_infoText+6	; ,
   4A5C AF E3         [ 8]  786 	stx	,--s	; ,
   4A5E 4F            [ 2]  787 	clra		;zero_extendqihi: R:b -> R:d	;  tmp35,
   4A5F 1F 01         [ 6]  788 	tfr	d,x	; ,
   4A61 BD 47 B2      [ 8]  789 	jsr	_itoa	; 
   4A64 32 64         [ 5]  790 	leas	4,s	; ,,
   4A66 35 C0         [ 7]  791 	puls	u,pc	; 
                            792 	.globl _moveBlock
   4A68                     793 _moveBlock:
                            794 ;----- asm -----
                            795 ;  277 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            796 	; #ENR#[243]    moveBlockImpl(move);
                            797 ;  0 "" 2
                            798 ;--- end asm ---
   4A68 BD 01 55      [ 8]  799 	jsr	_moveBlockImpl	; 
                            800 ;----- asm -----
                            801 ;  279 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            802 	; #ENR#[244]    if (!arcadeMode) {
                            803 ;  0 "" 2
                            804 ;--- end asm ---
   4A6B 7D CB 02      [ 7]  805 	tst	_arcadeMode	;  arcadeMode
   4A6E 26 10         [ 3]  806 	bne	L34	; 
                            807 ;----- asm -----
                            808 ;  281 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            809 	; #ENR#[245]        if (moveCount < 999) moveCount++;
                            810 ;  0 "" 2
                            811 ;--- end asm ---
   4A70 BE CA FB      [ 6]  812 	ldx	_moveCount	;  moveCount.10, moveCount
   4A73 8C 03 E6      [ 4]  813 	cmpx	#998	;cmphi:	;  moveCount.10,
   4A76 22 05         [ 3]  814 	bhi	L33	; 
   4A78 30 01         [ 5]  815 	leax	1,x	; ,, moveCount.10
   4A7A BF CA FB      [ 6]  816 	stx	_moveCount	; , moveCount
   4A7D                     817 L33:
                            818 ;----- asm -----
                            819 ;  283 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            820 	; #ENR#[246]        updateInfoText();
                            821 ;  0 "" 2
                            822 ;--- end asm ---
   4A7D BD 4A 29      [ 8]  823 	jsr	_updateInfoText	; 
   4A80                     824 L34:
   4A80 39            [ 5]  825 	rts
                            826 	.globl _startBlockFalling
   4A81                     827 _startBlockFalling:
                            828 ;----- asm -----
                            829 ;  290 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            830 	; #ENR#[252]    gameState = BlockFalling;
                            831 ;  0 "" 2
                            832 ;--- end asm ---
   4A81 C6 07         [ 2]  833 	ldb	#7	; ,
   4A83 F7 CB 05      [ 5]  834 	stb	_gameState	; , gameState
                            835 ;----- asm -----
                            836 ;  292 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            837 	; #ENR#[253]    blockYOfs = 0;
                            838 ;  0 "" 2
                            839 ;--- end asm ---
   4A86 7F C8 8B      [ 7]  840 	clr	_blockYOfs	;  blockYOfs
                            841 ;----- asm -----
                            842 ;  294 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            843 	; #ENR#[254]    moveBlock(lastBlockDirection);
                            844 ;  0 "" 2
                            845 ;--- end asm ---
   4A89 F6 C8 8C      [ 5]  846 	ldb	_lastBlockDirection	; , lastBlockDirection
   4A8C BD 4A 68      [ 8]  847 	jsr	_moveBlock	; 
                            848 ;----- asm -----
                            849 ;  296 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            850 	; #ENR#[255]    changeMusic(fallingMusic);
                            851 ;  0 "" 2
                            852 ;--- end asm ---
   4A8F 8E 52 D5      [ 3]  853 	ldx	#_fallingMusic	; ,
   4A92 BD 48 31      [ 8]  854 	jsr	_changeMusic	; 
                            855 ;----- asm -----
                            856 ;  298 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            857 	; #ENR#[256]    *vecx = 0;
                            858 ;  0 "" 2
                            859 ;--- end asm ---
   4A95 6F 9F C8 88   [11]  860 	clr	[_vecx]	; * vecx
   4A99 39            [ 5]  861 	rts
                            862 	.globl _blockMoving
   4A9A                     863 _blockMoving:
   4A9A 32 79         [ 5]  864 	leas	-7,s	; ,,
                            865 ;----- asm -----
                            866 ;  544 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            867 	; #ENR#[425]    drawField();
                            868 ;  0 "" 2
                            869 ;--- end asm ---
   4A9C BD 48 3A      [ 8]  870 	jsr	_drawField	; 
                            871 ;----- asm -----
                            872 ;  546 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            873 	; #ENR#[426]    drawBlock(0);
                            874 ;  0 "" 2
                            875 ;--- end asm ---
   4A9F 5F            [ 2]  876 	clrb	; 
   4AA0 BD 04 B4      [ 8]  877 	jsr	_drawBlock	; 
                            878 ;----- asm -----
                            879 ;  548 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            880 	; #ENR#[427]    doBlockAnimation();
                            881 ;  0 "" 2
                            882 ;--- end asm ---
   4AA3 BD 03 B2      [ 8]  883 	jsr	_doBlockAnimation	; 
                            884 ;----- asm -----
                            885 ;  550 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            886 	; #ENR#[428]    if (!blockAnimating) {
                            887 ;  0 "" 2
                            888 ;--- end asm ---
   4AA6 7D C8 8D      [ 7]  889 	tst	_blockAnimating	;  blockAnimating
   4AA9 10 26 01 8A   [ 6]  890 	lbne	L63	; 
                            891 ;----- asm -----
                            892 ;  553 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            893 	; #ENR#[430]        if (splitMode) {
                            894 ;  0 "" 2
                            895 ;--- end asm ---
   4AAD 7D C8 8E      [ 7]  896 	tst	_splitMode	;  splitMode
   4AB0 27 03         [ 3]  897 	beq	L39	; 
                            898 ;----- asm -----
                            899 ;  555 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            900 	; #ENR#[431]            testMerge();
                            901 ;  0 "" 2
                            902 ;--- end asm ---
   4AB2 BD 03 FD      [ 8]  903 	jsr	_testMerge	; 
   4AB5                     904 L39:
                            905 ;----- asm -----
                            906 ;  560 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            907 	; #ENR#[435]        uint8_t c0 = isField(blockX, blockY);
                            908 ;  0 "" 2
                            909 ;--- end asm ---
   4AB5 F6 C8 90      [ 5]  910 	ldb	_blockY	; , blockY
   4AB8 E7 E2         [ 6]  911 	stb	,-s	; ,
   4ABA F6 C8 8F      [ 5]  912 	ldb	_blockX	; , blockX
   4ABD BD 36 5F      [ 8]  913 	jsr	_isField	; 
   4AC0 E7 62         [ 5]  914 	stb	2,s	; , c0
                            915 ;----- asm -----
                            916 ;  562 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            917 	; #ENR#[436]        uint8_t c1 = isField(blockX + 1, blockY);
                            918 ;  0 "" 2
                            919 ;--- end asm ---
   4AC2 F6 C8 8F      [ 5]  920 	ldb	_blockX	; , blockX
   4AC5 5C            [ 2]  921 	incb	; 
   4AC6 E7 61         [ 5]  922 	stb	1,s	; ,
   4AC8 F6 C8 90      [ 5]  923 	ldb	_blockY	; , blockY
   4ACB E7 E2         [ 6]  924 	stb	,-s	; ,
   4ACD E6 62         [ 5]  925 	ldb	2,s	; ,
   4ACF BD 36 5F      [ 8]  926 	jsr	_isField	; 
   4AD2 E7 64         [ 5]  927 	stb	4,s	; , c1
                            928 ;----- asm -----
                            929 ;  564 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            930 	; #ENR#[437]        uint8_t c2 = isField(blockX, blockY + 1);
                            931 ;  0 "" 2
                            932 ;--- end asm ---
   4AD4 F6 C8 90      [ 5]  933 	ldb	_blockY	; , blockY
   4AD7 5C            [ 2]  934 	incb	; 
   4AD8 34 04         [ 6]  935 	pshs	b	; 
   4ADA F6 C8 8F      [ 5]  936 	ldb	_blockX	; , blockX
   4ADD BD 36 5F      [ 8]  937 	jsr	_isField	; 
   4AE0 E7 66         [ 5]  938 	stb	6,s	; , c2
                            939 ;----- asm -----
                            940 ;  566 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            941 	; #ENR#[438]        char f0 = getField(blockX, blockY);
                            942 ;  0 "" 2
                            943 ;--- end asm ---
   4AE2 F6 C8 90      [ 5]  944 	ldb	_blockY	; , blockY
   4AE5 E7 E2         [ 6]  945 	stb	,-s	; ,
   4AE7 F6 C8 8F      [ 5]  946 	ldb	_blockX	; , blockX
   4AEA BD 35 8D      [ 8]  947 	jsr	_getField	; 
   4AED E7 68         [ 5]  948 	stb	8,s	; , f0
                            949 ;----- asm -----
                            950 ;  568 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            951 	; #ENR#[439]        char f1 = getField(blockX + 1, blockY);
                            952 ;  0 "" 2
                            953 ;--- end asm ---
   4AEF F6 C8 8F      [ 5]  954 	ldb	_blockX	; , blockX
   4AF2 5C            [ 2]  955 	incb	; 
   4AF3 E7 64         [ 5]  956 	stb	4,s	; ,
   4AF5 F6 C8 90      [ 5]  957 	ldb	_blockY	; , blockY
   4AF8 E7 E2         [ 6]  958 	stb	,-s	; ,
   4AFA E6 65         [ 5]  959 	ldb	5,s	; ,
   4AFC BD 35 8D      [ 8]  960 	jsr	_getField	; 
   4AFF E7 6A         [ 5]  961 	stb	10,s	; , f1
                            962 ;----- asm -----
                            963 ;  570 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            964 	; #ENR#[440]        char f2 = getField(blockX, blockY + 1);
                            965 ;  0 "" 2
                            966 ;--- end asm ---
   4B01 F6 C8 90      [ 5]  967 	ldb	_blockY	; , blockY
   4B04 5C            [ 2]  968 	incb	; 
   4B05 34 04         [ 6]  969 	pshs	b	; 
   4B07 F6 C8 8F      [ 5]  970 	ldb	_blockX	; , blockX
   4B0A BD 35 8D      [ 8]  971 	jsr	_getField	; 
   4B0D E7 6C         [ 5]  972 	stb	12,s	; , f2
                            973 ;----- asm -----
                            974 ;  572 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            975 	; #ENR#[441]        if (splitMode) {
                            976 ;  0 "" 2
                            977 ;--- end asm ---
   4B0F 32 66         [ 5]  978 	leas	6,s	; ,,
   4B11 7D C8 8E      [ 7]  979 	tst	_splitMode	;  splitMode
   4B14 27 0C         [ 3]  980 	beq	L40	; 
                            981 ;----- asm -----
                            982 ;  574 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            983 	; #ENR#[442]            if (!c0) {
                            984 ;  0 "" 2
                            985 ;--- end asm ---
   4B16 6D 61         [ 7]  986 	tst	1,s	;  c0
   4B18 10 26 00 3E   [ 6]  987 	lbne	L41	; 
                            988 ;----- asm -----
                            989 ;  576 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            990 	; #ENR#[443]                startBlockFalling();
                            991 ;  0 "" 2
                            992 ;--- end asm ---
   4B1C BD 4A 81      [ 8]  993 	jsr	_startBlockFalling	; 
   4B1F 7E 4B 5A      [ 4]  994 	jmp	L41	; 
   4B22                     995 L40:
                            996 ;----- asm -----
                            997 ;  580 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                            998 	; #ENR#[446]            switch (blockOrientation) {
                            999 ;  0 "" 2
                           1000 ;--- end asm ---
   4B22 F6 C8 8A      [ 5] 1001 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   4B25 C1 01         [ 2] 1002 	cmpb	#1	;cmpqi:	;  blockOrientation,
   4B27 27 19         [ 3] 1003 	beq	L43	; 
   4B29 25 08         [ 3] 1004 	blo	L42	; 
   4B2B C1 02         [ 2] 1005 	cmpb	#2	;cmpqi:	;  blockOrientation,
   4B2D 10 26 00 29   [ 6] 1006 	lbne	L41	; 
   4B31 20 1C         [ 3] 1007 	bra	L64	; 
   4B33                    1008 L42:
                           1009 ;----- asm -----
                           1010 ;  584 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1011 	; #ENR#[448]                if (!c0 || f0 == 'f') {
                           1012 ;  0 "" 2
                           1013 ;--- end asm ---
   4B33 6D 61         [ 7] 1014 	tst	1,s	;  c0
   4B35 27 06         [ 3] 1015 	beq	L45	; 
   4B37 E6 64         [ 5] 1016 	ldb	4,s	; , f0
   4B39 C1 66         [ 2] 1017 	cmpb	#102	;cmpqi:	; ,
   4B3B 26 03         [ 3] 1018 	bne	L46	; 
   4B3D                    1019 L45:
                           1020 ;----- asm -----
                           1021 ;  586 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1022 	; #ENR#[449]                    startBlockFalling();
                           1023 ;  0 "" 2
                           1024 ;--- end asm ---
   4B3D BD 4A 81      [ 8] 1025 	jsr	_startBlockFalling	; 
   4B40                    1026 L46:
                           1027 ;----- asm -----
                           1028 ;  589 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1029 	; #ENR#[451]                break;
                           1030 ;  0 "" 2
                           1031 ;--- end asm ---
   4B40 20 18         [ 3] 1032 	bra	L41	; 
   4B42                    1033 L43:
                           1034 ;----- asm -----
                           1035 ;  593 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1036 	; #ENR#[453]                if (!c0 || !c2) {
                           1037 ;  0 "" 2
                           1038 ;--- end asm ---
   4B42 6D 61         [ 7] 1039 	tst	1,s	;  c0
   4B44 27 04         [ 3] 1040 	beq	L47	; 
   4B46 6D 63         [ 7] 1041 	tst	3,s	;  c2
   4B48 26 03         [ 3] 1042 	bne	L48	; 
   4B4A                    1043 L47:
                           1044 ;----- asm -----
                           1045 ;  595 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1046 	; #ENR#[454]                    startBlockFalling();
                           1047 ;  0 "" 2
                           1048 ;--- end asm ---
   4B4A BD 4A 81      [ 8] 1049 	jsr	_startBlockFalling	; 
   4B4D                    1050 L48:
                           1051 ;----- asm -----
                           1052 ;  598 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1053 	; #ENR#[456]                break;
                           1054 ;  0 "" 2
                           1055 ;--- end asm ---
   4B4D 20 0B         [ 3] 1056 	bra	L41	; 
   4B4F                    1057 L64:
                           1058 ;----- asm -----
                           1059 ;  602 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1060 	; #ENR#[458]                if (!c0 || ! c1) {
                           1061 ;  0 "" 2
                           1062 ;--- end asm ---
   4B4F 6D 61         [ 7] 1063 	tst	1,s	;  c0
   4B51 27 04         [ 3] 1064 	beq	L49	; 
   4B53 6D 62         [ 7] 1065 	tst	2,s	;  c1
   4B55 26 03         [ 3] 1066 	bne	L50	; 
   4B57                    1067 L49:
                           1068 ;----- asm -----
                           1069 ;  604 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1070 	; #ENR#[459]                    startBlockFalling();
                           1071 ;  0 "" 2
                           1072 ;--- end asm ---
   4B57 BD 4A 81      [ 8] 1073 	jsr	_startBlockFalling	; 
   4B5A                    1074 L50:
                           1075 ;----- asm -----
                           1076 ;  607 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1077 	; #ENR#[461]                break;
                           1078 ;  0 "" 2
                           1079 ;--- end asm ---
   4B5A                    1080 L41:
                           1081 ;----- asm -----
                           1082 ;  613 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1083 	; #ENR#[466]        if (blockOrientation == Standing && blockX == endX && blockY == endY && !splitMode) {
                           1084 ;  0 "" 2
                           1085 ;--- end asm ---
   4B5A 7D C8 8A      [ 7] 1086 	tst	_blockOrientation	;  blockOrientation
   4B5D 26 2B         [ 3] 1087 	bne	L51	; 
   4B5F F6 C8 8F      [ 5] 1088 	ldb	_blockX	; , blockX
   4B62 F1 C8 81      [ 5] 1089 	cmpb	_endX	;cmpqi:	; , endX
   4B65 26 23         [ 3] 1090 	bne	L51	; 
   4B67 F6 C8 90      [ 5] 1091 	ldb	_blockY	; , blockY
   4B6A F1 C8 82      [ 5] 1092 	cmpb	_endY	;cmpqi:	; , endY
   4B6D 26 1B         [ 3] 1093 	bne	L51	; 
   4B6F 7D C8 8E      [ 7] 1094 	tst	_splitMode	;  splitMode
   4B72 26 16         [ 3] 1095 	bne	L51	; 
                           1096 ;----- asm -----
                           1097 ;  615 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1098 	; #ENR#[467]            blockYOfs = 0;
                           1099 ;  0 "" 2
                           1100 ;--- end asm ---
   4B74 7F C8 8B      [ 7] 1101 	clr	_blockYOfs	;  blockYOfs
                           1102 ;----- asm -----
                           1103 ;  617 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1104 	; #ENR#[468]            gameState = BlockMovingAtEnd;
                           1105 ;  0 "" 2
                           1106 ;--- end asm ---
   4B77 C6 08         [ 2] 1107 	ldb	#8	; ,
   4B79 F7 CB 05      [ 5] 1108 	stb	_gameState	; , gameState
                           1109 ;----- asm -----
                           1110 ;  619 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1111 	; #ENR#[469]            changeMusic(levelEndMusic);
                           1112 ;  0 "" 2
                           1113 ;--- end asm ---
   4B7C 8E 52 BB      [ 3] 1114 	ldx	#_levelEndMusic	; ,
   4B7F BD 48 31      [ 8] 1115 	jsr	_changeMusic	; 
                           1116 ;----- asm -----
                           1117 ;  621 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1118 	; #ENR#[470]            *vecx = 1;
                           1119 ;  0 "" 2
                           1120 ;--- end asm ---
   4B82 C6 01         [ 2] 1121 	ldb	#1	; ,
   4B84 E7 9F C8 88   [ 9] 1122 	stb	[_vecx]	; ,* vecx
   4B88 20 0C         [ 3] 1123 	bra	L52	; 
   4B8A                    1124 L51:
                           1125 ;----- asm -----
                           1126 ;  625 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1127 	; #ENR#[473]            if (gameState != BlockFalling) {
                           1128 ;  0 "" 2
                           1129 ;--- end asm ---
   4B8A F6 CB 05      [ 5] 1130 	ldb	_gameState	; , gameState
   4B8D C1 07         [ 2] 1131 	cmpb	#7	;cmpqi:	; ,
   4B8F 27 05         [ 3] 1132 	beq	L52	; 
                           1133 ;----- asm -----
                           1134 ;  627 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1135 	; #ENR#[474]                gameState = BlockWaiting;
                           1136 ;  0 "" 2
                           1137 ;--- end asm ---
   4B91 C6 05         [ 2] 1138 	ldb	#5	; ,
   4B93 F7 CB 05      [ 5] 1139 	stb	_gameState	; , gameState
   4B96                    1140 L52:
                           1141 ;----- asm -----
                           1142 ;  633 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1143 	; #ENR#[479]        if (splitMode) {
                           1144 ;  0 "" 2
                           1145 ;--- end asm ---
   4B96 7D C8 8E      [ 7] 1146 	tst	_splitMode	;  splitMode
   4B99 27 18         [ 3] 1147 	beq	L53	; 
                           1148 ;----- asm -----
                           1149 ;  635 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1150 	; #ENR#[480]            if (f0 == 's') {
                           1151 ;  0 "" 2
                           1152 ;--- end asm ---
   4B9B E6 64         [ 5] 1153 	ldb	4,s	; , f0
   4B9D C1 73         [ 2] 1154 	cmpb	#115	;cmpqi:	; ,
   4B9F 10 26 00 94   [ 6] 1155 	lbne	L63	; 
                           1156 ;----- asm -----
                           1157 ;  637 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1158 	; #ENR#[481]                swatchSwitch(blockX, blockY);
                           1159 ;  0 "" 2
                           1160 ;--- end asm ---
   4BA3 F6 C8 90      [ 5] 1161 	ldb	_blockY	; , blockY
   4BA6 E7 E2         [ 6] 1162 	stb	,-s	; ,
   4BA8 F6 C8 8F      [ 5] 1163 	ldb	_blockX	; , blockX
   4BAB BD 3B DE      [ 8] 1164 	jsr	_swatchSwitch	; 
   4BAE 32 61         [ 5] 1165 	leas	1,s	; ,,
   4BB0 7E 4C 37      [ 4] 1166 	jmp	L63	; 
   4BB3                    1167 L53:
                           1168 ;----- asm -----
                           1169 ;  641 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1170 	; #ENR#[484]            switch (blockOrientation) {
                           1171 ;  0 "" 2
                           1172 ;--- end asm ---
   4BB3 F6 C8 8A      [ 5] 1173 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   4BB6 C1 01         [ 2] 1174 	cmpb	#1	;cmpqi:	;  blockOrientation,
   4BB8 27 29         [ 3] 1175 	beq	L55	; 
   4BBA 25 09         [ 3] 1176 	blo	L54	; 
   4BBC C1 02         [ 2] 1177 	cmpb	#2	;cmpqi:	;  blockOrientation,
   4BBE 10 26 00 75   [ 6] 1178 	lbne	L63	; 
   4BC2 7E 4C 0C      [ 4] 1179 	jmp	L65	; 
   4BC5                    1180 L54:
                           1181 ;----- asm -----
                           1182 ;  645 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1183 	; #ENR#[486]                if (f0 == 's' || f0 == 'h' || f0 == 'v') {
                           1184 ;  0 "" 2
                           1185 ;--- end asm ---
   4BC5 E6 64         [ 5] 1186 	ldb	4,s	; , f0
   4BC7 C1 73         [ 2] 1187 	cmpb	#115	;cmpqi:	; ,
   4BC9 27 08         [ 3] 1188 	beq	L57	; 
   4BCB C1 68         [ 2] 1189 	cmpb	#104	;cmpqi:	; ,
   4BCD 27 04         [ 3] 1190 	beq	L57	; 
   4BCF C1 76         [ 2] 1191 	cmpb	#118	;cmpqi:	; ,
   4BD1 26 0D         [ 3] 1192 	bne	L58	; 
   4BD3                    1193 L57:
                           1194 ;----- asm -----
                           1195 ;  647 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1196 	; #ENR#[487]                    swatchSwitch(blockX, blockY);
                           1197 ;  0 "" 2
                           1198 ;--- end asm ---
   4BD3 F6 C8 90      [ 5] 1199 	ldb	_blockY	; , blockY
   4BD6 E7 E2         [ 6] 1200 	stb	,-s	; ,
   4BD8 F6 C8 8F      [ 5] 1201 	ldb	_blockX	; , blockX
   4BDB BD 3B DE      [ 8] 1202 	jsr	_swatchSwitch	; 
   4BDE 32 61         [ 5] 1203 	leas	1,s	; ,,
   4BE0                    1204 L58:
                           1205 ;----- asm -----
                           1206 ;  650 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1207 	; #ENR#[489]                break;
                           1208 ;  0 "" 2
                           1209 ;--- end asm ---
   4BE0 7E 4C 37      [ 4] 1210 	jmp	L63	; 
   4BE3                    1211 L55:
                           1212 ;----- asm -----
                           1213 ;  654 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1214 	; #ENR#[491]                if (f0 == 's') {
                           1215 ;  0 "" 2
                           1216 ;--- end asm ---
   4BE3 E6 64         [ 5] 1217 	ldb	4,s	; , f0
   4BE5 C1 73         [ 2] 1218 	cmpb	#115	;cmpqi:	; ,
   4BE7 26 0D         [ 3] 1219 	bne	L59	; 
                           1220 ;----- asm -----
                           1221 ;  656 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1222 	; #ENR#[492]                    swatchSwitch(blockX, blockY);
                           1223 ;  0 "" 2
                           1224 ;--- end asm ---
   4BE9 F6 C8 90      [ 5] 1225 	ldb	_blockY	; , blockY
   4BEC E7 E2         [ 6] 1226 	stb	,-s	; ,
   4BEE F6 C8 8F      [ 5] 1227 	ldb	_blockX	; , blockX
   4BF1 BD 3B DE      [ 8] 1228 	jsr	_swatchSwitch	; 
   4BF4 32 61         [ 5] 1229 	leas	1,s	; ,,
   4BF6                    1230 L59:
                           1231 ;----- asm -----
                           1232 ;  659 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1233 	; #ENR#[494]                if (f2 == 's') {
                           1234 ;  0 "" 2
                           1235 ;--- end asm ---
   4BF6 E6 66         [ 5] 1236 	ldb	6,s	; , f2
   4BF8 C1 73         [ 2] 1237 	cmpb	#115	;cmpqi:	; ,
   4BFA 26 0E         [ 3] 1238 	bne	L60	; 
                           1239 ;----- asm -----
                           1240 ;  661 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1241 	; #ENR#[495]                    swatchSwitch(blockX, blockY + 1);
                           1242 ;  0 "" 2
                           1243 ;--- end asm ---
   4BFC F6 C8 90      [ 5] 1244 	ldb	_blockY	; , blockY
   4BFF 5C            [ 2] 1245 	incb	; 
   4C00 34 04         [ 6] 1246 	pshs	b	; 
   4C02 F6 C8 8F      [ 5] 1247 	ldb	_blockX	; , blockX
   4C05 BD 3B DE      [ 8] 1248 	jsr	_swatchSwitch	; 
   4C08 32 61         [ 5] 1249 	leas	1,s	; ,,
   4C0A                    1250 L60:
                           1251 ;----- asm -----
                           1252 ;  664 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1253 	; #ENR#[497]                break;
                           1254 ;  0 "" 2
                           1255 ;--- end asm ---
   4C0A 20 2B         [ 3] 1256 	bra	L63	; 
   4C0C                    1257 L65:
                           1258 ;----- asm -----
                           1259 ;  668 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1260 	; #ENR#[499]                if (f0 == 's') {
                           1261 ;  0 "" 2
                           1262 ;--- end asm ---
   4C0C E6 64         [ 5] 1263 	ldb	4,s	; , f0
   4C0E C1 73         [ 2] 1264 	cmpb	#115	;cmpqi:	; ,
   4C10 26 0D         [ 3] 1265 	bne	L61	; 
                           1266 ;----- asm -----
                           1267 ;  670 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1268 	; #ENR#[500]                    swatchSwitch(blockX, blockY);
                           1269 ;  0 "" 2
                           1270 ;--- end asm ---
   4C12 F6 C8 90      [ 5] 1271 	ldb	_blockY	; , blockY
   4C15 E7 E2         [ 6] 1272 	stb	,-s	; ,
   4C17 F6 C8 8F      [ 5] 1273 	ldb	_blockX	; , blockX
   4C1A BD 3B DE      [ 8] 1274 	jsr	_swatchSwitch	; 
   4C1D 32 61         [ 5] 1275 	leas	1,s	; ,,
   4C1F                    1276 L61:
                           1277 ;----- asm -----
                           1278 ;  673 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1279 	; #ENR#[502]                if (f1 == 's') {
                           1280 ;  0 "" 2
                           1281 ;--- end asm ---
   4C1F E6 65         [ 5] 1282 	ldb	5,s	; , f1
   4C21 C1 73         [ 2] 1283 	cmpb	#115	;cmpqi:	; ,
   4C23 26 12         [ 3] 1284 	bne	L62	; 
                           1285 ;----- asm -----
                           1286 ;  675 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1287 	; #ENR#[503]                    swatchSwitch(blockX + 1, blockY);
                           1288 ;  0 "" 2
                           1289 ;--- end asm ---
   4C25 F6 C8 8F      [ 5] 1290 	ldb	_blockX	; , blockX
   4C28 5C            [ 2] 1291 	incb	; 
   4C29 E7 E4         [ 4] 1292 	stb	,s	; ,
   4C2B F6 C8 90      [ 5] 1293 	ldb	_blockY	; , blockY
   4C2E E7 E2         [ 6] 1294 	stb	,-s	; ,
   4C30 E6 61         [ 5] 1295 	ldb	1,s	; ,
   4C32 BD 3B DE      [ 8] 1296 	jsr	_swatchSwitch	; 
   4C35 32 61         [ 5] 1297 	leas	1,s	; ,,
   4C37                    1298 L62:
                           1299 ;----- asm -----
                           1300 ;  678 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1301 	; #ENR#[505]                break;
                           1302 ;  0 "" 2
                           1303 ;--- end asm ---
   4C37                    1304 L63:
   4C37 32 67         [ 5] 1305 	leas	7,s	; ,,
   4C39 39            [ 5] 1306 	rts
                           1307 	.globl _sendCommand
   4C3A                    1308 _sendCommand:
   4C3A 32 7E         [ 5] 1309 	leas	-2,s	; ,,
   4C3C E7 E4         [ 4] 1310 	stb	,s	;  cmd, cmd
                           1311 ;----- asm -----
                           1312 ;  171 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1313 	; #ENR#[170]    uint8_t result;
                           1314 ;  0 "" 2
                           1315 ;  173 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1316 	; #ENR#[171]    picWrite('V');
                           1317 ;  0 "" 2
                           1318 ;--- end asm ---
   4C3E C6 56         [ 2] 1319 	ldb	#86	; ,
   4C40 BD 5E AE      [ 8] 1320 	jsr	_picWrite	; 
                           1321 ;----- asm -----
                           1322 ;  175 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1323 	; #ENR#[172]    picWrite(cmd);
                           1324 ;  0 "" 2
                           1325 ;--- end asm ---
   4C43 E6 E4         [ 4] 1326 	ldb	,s	; , cmd
   4C45 BD 5E AE      [ 8] 1327 	jsr	_picWrite	; 
                           1328 ;----- asm -----
                           1329 ;  177 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1330 	; #ENR#[173]    picWrite(arg);
                           1331 ;  0 "" 2
                           1332 ;--- end asm ---
   4C48 E6 64         [ 5] 1333 	ldb	4,s	; , arg
   4C4A BD 5E AE      [ 8] 1334 	jsr	_picWrite	; 
                           1335 ;----- asm -----
                           1336 ;  179 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1337 	; #ENR#[174]    result = picRead();
                           1338 ;  0 "" 2
                           1339 ;--- end asm ---
   4C4D BD 5E FA      [ 8] 1340 	jsr	_picRead	; 
   4C50 E7 61         [ 5] 1341 	stb	1,s	; , result
                           1342 ;----- asm -----
                           1343 ;  181 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1344 	; #ENR#[175]    delay10ms();
                           1345 ;  0 "" 2
                           1346 ;--- end asm ---
   4C52 BD 5F 57      [ 8] 1347 	jsr	_delay10ms	; 
                           1348 ;----- asm -----
                           1349 ;  183 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1350 	; #ENR#[176]    return result;
                           1351 ;  0 "" 2
                           1352 ;--- end asm ---
   4C55 E6 61         [ 5] 1353 	ldb	1,s	; , result
   4C57 32 62         [ 5] 1354 	leas	2,s	; ,,
   4C59 39            [ 5] 1355 	rts
                           1356 	.globl _readEeprom
   4C5A                    1357 _readEeprom:
                           1358 ;----- asm -----
                           1359 ;  223 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1360 	; #ENR#[205]    if (picAvailable) {
                           1361 ;  0 "" 2
                           1362 ;--- end asm ---
   4C5A 7D CB 01      [ 7] 1363 	tst	_picAvailable	;  picAvailable
   4C5D 27 0B         [ 3] 1364 	beq	L69	; 
                           1365 ;----- asm -----
                           1366 ;  225 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1367 	; #ENR#[206]        return sendCommand(CMD_EEPROM_READ, address);
                           1368 ;  0 "" 2
                           1369 ;--- end asm ---
   4C5F 34 04         [ 6] 1370 	pshs	b	;  address
   4C61 C6 04         [ 2] 1371 	ldb	#4	; ,
   4C63 BD 4C 3A      [ 8] 1372 	jsr	_sendCommand	; 
   4C66 32 61         [ 5] 1373 	leas	1,s	; ,,
   4C68 20 02         [ 3] 1374 	bra	L70	; 
   4C6A                    1375 L69:
                           1376 ;----- asm -----
                           1377 ;  228 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1378 	; #ENR#[208]        return 0xff;
                           1379 ;  0 "" 2
                           1380 ;--- end asm ---
   4C6A C6 FF         [ 2] 1381 	ldb	#-1	;  D.2274,
   4C6C                    1382 L70:
   4C6C 39            [ 5] 1383 	rts
                           1384 	.globl _startLevel
   4C6D                    1385 _startLevel:
   4C6D 34 60         [ 7] 1386 	pshs	y,u	; 
   4C6F 32 7C         [ 5] 1387 	leas	-4,s	; ,,
                           1388 ;----- asm -----
                           1389 ;  304 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1390 	; #ENR#[261]    if (arcadeMode) {
                           1391 ;  0 "" 2
                           1392 ;--- end asm ---
   4C71 7D CB 02      [ 7] 1393 	tst	_arcadeMode	;  arcadeMode
   4C74 27 24         [ 3] 1394 	beq	L73	; 
                           1395 ;----- asm -----
                           1396 ;  306 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1397 	; #ENR#[262]        levelNumber = arcadeLevels[arcadeSelection][arcadeIndex] - 1;
                           1398 ;  0 "" 2
                           1399 ;--- end asm ---
   4C76 F6 CB 04      [ 5] 1400 	ldb	_arcadeIndex	; , arcadeIndex
   4C79 4F            [ 2] 1401 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4C7A 1F 02         [ 6] 1402 	tfr	d,y	; , arcadeIndex
   4C7C F6 CB 03      [ 5] 1403 	ldb	_arcadeSelection	; , arcadeSelection
   4C7F 4F            [ 2] 1404 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4C80 ED 62         [ 6] 1405 	std	2,s	; ,
   4C82 58            [ 2] 1406 	aslb	; 
   4C83 49            [ 2] 1407 	rola	; 
   4C84 58            [ 2] 1408 	aslb	; 
   4C85 49            [ 2] 1409 	rola	; 
   4C86 EE 62         [ 6] 1410 	ldu	2,s	; ,
   4C88 30 CB         [ 8] 1411 	leax	d,u	;  tmp35, tmp34,
   4C8A 1E 02         [ 8] 1412 	exg	d,y	; , arcadeIndex
   4C8C 30 8B         [ 8] 1413 	leax	d,x	;  tmp36,, tmp36
   4C8E 1E 02         [ 8] 1414 	exg	d,y	; , arcadeIndex
   4C90 E6 89 53 13   [ 8] 1415 	ldb	_arcadeLevels,x	; , arcadeLevels
   4C94 5A            [ 2] 1416 	decb	; 
   4C95 F7 C8 83      [ 5] 1417 	stb	_levelNumber	; , levelNumber
   4C98 20 2B         [ 3] 1418 	bra	L74	; 
   4C9A                    1419 L73:
                           1420 ;----- asm -----
                           1421 ;  309 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1422 	; #ENR#[264]        levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
                           1423 ;  0 "" 2
                           1424 ;--- end asm ---
   4C9A F6 C8 83      [ 5] 1425 	ldb	_levelNumber	;  tmp38, levelNumber
   4C9D 58            [ 2] 1426 	aslb	;  tmp38
   4C9E BD 4C 5A      [ 8] 1427 	jsr	_readEeprom	; 
   4CA1 4F            [ 2] 1428 	clra		;zero_extendqihi: R:b -> R:d	;  D.2325, D.2325
   4CA2 FD CA FF      [ 6] 1429 	std	_levelHighscore	;  D.2325, levelHighscore
                           1430 ;----- asm -----
                           1431 ;  311 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1432 	; #ENR#[265]        levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
                           1433 ;  0 "" 2
                           1434 ;--- end asm ---
   4CA5 F6 C8 83      [ 5] 1435 	ldb	_levelNumber	;  tmp40, levelNumber
   4CA8 58            [ 2] 1436 	aslb	;  tmp40
   4CA9 5C            [ 2] 1437 	incb	;  tmp41
   4CAA BD 4C 5A      [ 8] 1438 	jsr	_readEeprom	; 
   4CAD 1F 98         [ 6] 1439 	tfr	b,a	; ,
   4CAF 5F            [ 2] 1440 	clrb	; 
   4CB0 BA CA FF      [ 5] 1441 	ora	_levelHighscore	; , levelHighscore
   4CB3 FA CB 00      [ 5] 1442 	orb	_levelHighscore+1	; , levelHighscore
   4CB6 FD CA FF      [ 6] 1443 	std	_levelHighscore	;  levelHighscore.22, levelHighscore
                           1444 ;----- asm -----
                           1445 ;  313 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1446 	; #ENR#[266]        if (levelHighscore == 0) levelHighscore = 999;
                           1447 ;  0 "" 2
                           1448 ;--- end asm ---
   4CB9 10 83 00 00   [ 5] 1449 	cmpd	#0	;  levelHighscore.22
   4CBD 26 06         [ 3] 1450 	bne	L74	; 
   4CBF 8E 03 E7      [ 3] 1451 	ldx	#999	; ,
   4CC2 BF CA FF      [ 6] 1452 	stx	_levelHighscore	; , levelHighscore
   4CC5                    1453 L74:
                           1454 ;----- asm -----
                           1455 ;  316 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1456 	; #ENR#[268]    level = levels[levelNumber];
                           1457 ;  0 "" 2
                           1458 ;--- end asm ---
   4CC5 F6 C8 83      [ 5] 1459 	ldb	_levelNumber	; , levelNumber
   4CC8 4F            [ 2] 1460 	clra		;zero_extendqihi: R:b -> R:d	; ,
   4CC9 ED E4         [ 5] 1461 	std	,s	; ,
   4CCB 58            [ 2] 1462 	aslb	; 
   4CCC 49            [ 2] 1463 	rola	; 
   4CCD 1F 01         [ 6] 1464 	tfr	d,x	; , tmp47
   4CCF AE 89 46 D1   [ 9] 1465 	ldx	_levels,x	; , levels
   4CD3 BF C8 F1      [ 6] 1466 	stx	_level	; , level
                           1467 ;----- asm -----
                           1468 ;  318 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1469 	; #ENR#[269]    initSwatches();
                           1470 ;  0 "" 2
                           1471 ;--- end asm ---
   4CD6 BD 38 17      [ 8] 1472 	jsr	_initSwatches	; 
                           1473 ;----- asm -----
                           1474 ;  320 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1475 	; #ENR#[270]    initLevel();
                           1476 ;  0 "" 2
                           1477 ;--- end asm ---
   4CD9 BD 3B D4      [ 8] 1478 	jsr	_initLevel	; 
                           1479 ;----- asm -----
                           1480 ;  322 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1481 	; #ENR#[271]    blockX = level->start.x;
                           1482 ;  0 "" 2
                           1483 ;--- end asm ---
   4CDC BE C8 F1      [ 6] 1484 	ldx	_level	;  level, level
   4CDF E6 02         [ 5] 1485 	ldb	2,x	; , <variable>.start.x
   4CE1 F7 C8 8F      [ 5] 1486 	stb	_blockX	; , blockX
                           1487 ;----- asm -----
                           1488 ;  324 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1489 	; #ENR#[272]    blockY = level->start.y;
                           1490 ;  0 "" 2
                           1491 ;--- end asm ---
   4CE4 E6 03         [ 5] 1492 	ldb	3,x	; , <variable>.start.y
   4CE6 F7 C8 90      [ 5] 1493 	stb	_blockY	; , blockY
                           1494 ;----- asm -----
                           1495 ;  326 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1496 	; #ENR#[273]    blockStartLevel();
                           1497 ;  0 "" 2
                           1498 ;--- end asm ---
   4CE9 BD 03 DB      [ 8] 1499 	jsr	_blockStartLevel	; 
                           1500 ;----- asm -----
                           1501 ;  328 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1502 	; #ENR#[274]    blockYOfs = -30;
                           1503 ;  0 "" 2
                           1504 ;--- end asm ---
   4CEC C6 E2         [ 2] 1505 	ldb	#-30	; ,
   4CEE F7 C8 8B      [ 5] 1506 	stb	_blockYOfs	; , blockYOfs
                           1507 ;----- asm -----
                           1508 ;  330 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1509 	; #ENR#[275]    gameState = BlockMovingToStart;
                           1510 ;  0 "" 2
                           1511 ;--- end asm ---
   4CF1 C6 04         [ 2] 1512 	ldb	#4	; ,
   4CF3 F7 CB 05      [ 5] 1513 	stb	_gameState	; , gameState
                           1514 ;----- asm -----
                           1515 ;  332 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1516 	; #ENR#[276]    changeMusic(startMusic);
                           1517 ;  0 "" 2
                           1518 ;--- end asm ---
   4CF6 8E 52 9B      [ 3] 1519 	ldx	#_startMusic	; ,
   4CF9 BD 48 31      [ 8] 1520 	jsr	_changeMusic	; 
                           1521 ;----- asm -----
                           1522 ;  334 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1523 	; #ENR#[277]    *vecx = 2;
                           1524 ;  0 "" 2
                           1525 ;--- end asm ---
   4CFC C6 02         [ 2] 1526 	ldb	#2	; ,
   4CFE E7 9F C8 88   [ 9] 1527 	stb	[_vecx]	; ,* vecx
                           1528 ;----- asm -----
                           1529 ;  336 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1530 	; #ENR#[278]    if (!arcadeMode) {
                           1531 ;  0 "" 2
                           1532 ;--- end asm ---
   4D02 7D CB 02      [ 7] 1533 	tst	_arcadeMode	;  arcadeMode
   4D05 26 09         [ 3] 1534 	bne	L75	; 
                           1535 ;----- asm -----
                           1536 ;  338 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1537 	; #ENR#[279]        moveCount = 0;
                           1538 ;  0 "" 2
                           1539 ;--- end asm ---
   4D07 CC 00 00      [ 3] 1540 	ldd	#0	; ,
   4D0A FD CA FB      [ 6] 1541 	std	_moveCount	; , moveCount
                           1542 ;----- asm -----
                           1543 ;  340 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1544 	; #ENR#[280]        updateInfoText();
                           1545 ;  0 "" 2
                           1546 ;--- end asm ---
   4D0D BD 4A 29      [ 8] 1547 	jsr	_updateInfoText	; 
   4D10                    1548 L75:
                           1549 ;----- asm -----
                           1550 ;  343 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1551 	; #ENR#[282]    si = 0;
                           1552 ;  0 "" 2
                           1553 ;--- end asm ---
   4D10 7F CA E6      [ 7] 1554 	clr	_si	;  si
   4D13 32 64         [ 5] 1555 	leas	4,s	; ,,
   4D15 35 E0         [ 8] 1556 	puls	y,u,pc	; 
   4D17                    1557 LC1:
   4D17 41                 1558 	.byte	0x41
   4D18 52                 1559 	.byte	0x52
   4D19 43                 1560 	.byte	0x43
   4D1A 41                 1561 	.byte	0x41
   4D1B 44                 1562 	.byte	0x44
   4D1C 45                 1563 	.byte	0x45
   4D1D 20                 1564 	.byte	0x20
   4D1E 4D                 1565 	.byte	0x4D
   4D1F 4F                 1566 	.byte	0x4F
   4D20 44                 1567 	.byte	0x44
   4D21 45                 1568 	.byte	0x45
   4D22 80                 1569 	.byte	0x80
   4D23 00                 1570 	.byte	0x00
   4D24                    1571 LC2:
   4D24 31                 1572 	.byte	0x31
   4D25 20                 1573 	.byte	0x20
   4D26 53                 1574 	.byte	0x53
   4D27 45                 1575 	.byte	0x45
   4D28 54                 1576 	.byte	0x54
   4D29 20                 1577 	.byte	0x20
   4D2A 31                 1578 	.byte	0x31
   4D2B 80                 1579 	.byte	0x80
   4D2C 00                 1580 	.byte	0x00
   4D2D                    1581 LC3:
   4D2D 32                 1582 	.byte	0x32
   4D2E 20                 1583 	.byte	0x20
   4D2F 53                 1584 	.byte	0x53
   4D30 45                 1585 	.byte	0x45
   4D31 54                 1586 	.byte	0x54
   4D32 20                 1587 	.byte	0x20
   4D33 32                 1588 	.byte	0x32
   4D34 80                 1589 	.byte	0x80
   4D35 00                 1590 	.byte	0x00
   4D36                    1591 LC4:
   4D36 33                 1592 	.byte	0x33
   4D37 20                 1593 	.byte	0x20
   4D38 53                 1594 	.byte	0x53
   4D39 45                 1595 	.byte	0x45
   4D3A 54                 1596 	.byte	0x54
   4D3B 20                 1597 	.byte	0x20
   4D3C 33                 1598 	.byte	0x33
   4D3D 80                 1599 	.byte	0x80
   4D3E 00                 1600 	.byte	0x00
   4D3F                    1601 LC5:
   4D3F 34                 1602 	.byte	0x34
   4D40 20                 1603 	.byte	0x20
   4D41 53                 1604 	.byte	0x53
   4D42 45                 1605 	.byte	0x45
   4D43 54                 1606 	.byte	0x54
   4D44 20                 1607 	.byte	0x20
   4D45 34                 1608 	.byte	0x34
   4D46 80                 1609 	.byte	0x80
   4D47 00                 1610 	.byte	0x00
                           1611 	.globl _arcadeMenu
   4D48                    1612 _arcadeMenu:
   4D48 34 40         [ 6] 1613 	pshs	u	; 
   4D4A 32 7C         [ 5] 1614 	leas	-4,s	; ,,
                           1615 ;----- asm -----
                           1616 ;  800 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1617 	; #ENR#[581]    Read_Btns();
                           1618 ;  0 "" 2
                           1619 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4D4C BD F1 BA      [ 8] 1620 	jsr ___Read_Btns; BIOS call
                           1621 ;  0 "" 2
                           1622 ;  802 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1623 	; #ENR#[582]    Intensity_a(0x5f);
                           1624 ;  0 "" 2
                           1625 ;--- end asm ---
   4D4F C6 5F         [ 2] 1626 	ldb	#95	; ,
   4D51 E7 63         [ 5] 1627 	stb	3,s	; , a
                           1628 ;----- asm -----
                           1629 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4D53 A6 63         [ 5] 1630 	lda 3,s	;  a
   4D55 BD F2 AB      [ 8] 1631 	jsr ___Intensity_a; BIOS call
                           1632 ;  0 "" 2
                           1633 ;  804 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1634 	; #ENR#[583]    Vec_Text_Width = 90;
                           1635 ;  0 "" 2
                           1636 ;--- end asm ---
   4D58 C6 5A         [ 2] 1637 	ldb	#90	; ,
   4D5A F7 C8 2B      [ 5] 1638 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1639 ;----- asm -----
                           1640 ;  806 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1641 	; #ENR#[584]    Print_Str_d(100, -70, "ARCADE MODE�");
                           1642 ;  0 "" 2
                           1643 ;--- end asm ---
   4D5D CB 0A         [ 2] 1644 	addb	#10	; ,
   4D5F E7 63         [ 5] 1645 	stb	3,s	; , a
   4D61 C6 BA         [ 2] 1646 	ldb	#-70	; ,
   4D63 E7 62         [ 5] 1647 	stb	2,s	; , b
   4D65 8E 4D 17      [ 3] 1648 	ldx	#LC1	; ,
   4D68 AF E4         [ 5] 1649 	stx	,s	; , u
                           1650 ;----- asm -----
                           1651 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4D6A A6 63         [ 5] 1652 	lda 3,s	;  a
   4D6C E6 62         [ 5] 1653 	ldb 2,s	;  b
   4D6E EE E4         [ 5] 1654 	ldu ,s	;  u
   4D70 BD F3 7A      [ 8] 1655 	jsr ___Print_Str_d; BIOS call
                           1656 ;  0 "" 2
                           1657 ;  808 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1658 	; #ENR#[585]    Print_Str_d(50, -110, "1 SET 1�");
                           1659 ;  0 "" 2
                           1660 ;--- end asm ---
   4D73 C6 32         [ 2] 1661 	ldb	#50	; ,
   4D75 E7 62         [ 5] 1662 	stb	2,s	; , a
   4D77 C6 92         [ 2] 1663 	ldb	#-110	; ,
   4D79 E7 63         [ 5] 1664 	stb	3,s	; , b
   4D7B 8E 4D 24      [ 3] 1665 	ldx	#LC2	; ,
   4D7E AF E4         [ 5] 1666 	stx	,s	; , u
                           1667 ;----- asm -----
                           1668 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4D80 A6 62         [ 5] 1669 	lda 2,s	;  a
   4D82 E6 63         [ 5] 1670 	ldb 3,s	;  b
   4D84 EE E4         [ 5] 1671 	ldu ,s	;  u
   4D86 BD F3 7A      [ 8] 1672 	jsr ___Print_Str_d; BIOS call
                           1673 ;  0 "" 2
                           1674 ;  810 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1675 	; #ENR#[586]    Print_Str_d(20, -110, "2 SET 2�");
                           1676 ;  0 "" 2
                           1677 ;--- end asm ---
   4D89 C6 14         [ 2] 1678 	ldb	#20	; ,
   4D8B E7 63         [ 5] 1679 	stb	3,s	; , a
   4D8D C6 92         [ 2] 1680 	ldb	#-110	; ,
   4D8F E7 62         [ 5] 1681 	stb	2,s	; , b
   4D91 8E 4D 2D      [ 3] 1682 	ldx	#LC3	; ,
   4D94 AF E4         [ 5] 1683 	stx	,s	; , u
                           1684 ;----- asm -----
                           1685 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4D96 A6 63         [ 5] 1686 	lda 3,s	;  a
   4D98 E6 62         [ 5] 1687 	ldb 2,s	;  b
   4D9A EE E4         [ 5] 1688 	ldu ,s	;  u
   4D9C BD F3 7A      [ 8] 1689 	jsr ___Print_Str_d; BIOS call
                           1690 ;  0 "" 2
                           1691 ;  812 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1692 	; #ENR#[587]    Print_Str_d(-10, -110, "3 SET 3�");
                           1693 ;  0 "" 2
                           1694 ;--- end asm ---
   4D9F C6 F6         [ 2] 1695 	ldb	#-10	; ,
   4DA1 E7 62         [ 5] 1696 	stb	2,s	; , a
   4DA3 C6 92         [ 2] 1697 	ldb	#-110	; ,
   4DA5 E7 63         [ 5] 1698 	stb	3,s	; , b
   4DA7 8E 4D 36      [ 3] 1699 	ldx	#LC4	; ,
   4DAA AF E4         [ 5] 1700 	stx	,s	; , u
                           1701 ;----- asm -----
                           1702 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4DAC A6 62         [ 5] 1703 	lda 2,s	;  a
   4DAE E6 63         [ 5] 1704 	ldb 3,s	;  b
   4DB0 EE E4         [ 5] 1705 	ldu ,s	;  u
   4DB2 BD F3 7A      [ 8] 1706 	jsr ___Print_Str_d; BIOS call
                           1707 ;  0 "" 2
                           1708 ;  814 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1709 	; #ENR#[588]    Print_Str_d(-40, -110, "4 SET 4�");
                           1710 ;  0 "" 2
                           1711 ;--- end asm ---
   4DB5 C6 D8         [ 2] 1712 	ldb	#-40	; ,
   4DB7 E7 63         [ 5] 1713 	stb	3,s	; , a
   4DB9 C6 92         [ 2] 1714 	ldb	#-110	; ,
   4DBB E7 62         [ 5] 1715 	stb	2,s	; , b
   4DBD 8E 4D 3F      [ 3] 1716 	ldx	#LC5	; ,
   4DC0 AF E4         [ 5] 1717 	stx	,s	; , u
                           1718 ;----- asm -----
                           1719 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4DC2 A6 63         [ 5] 1720 	lda 3,s	;  a
   4DC4 E6 62         [ 5] 1721 	ldb 2,s	;  b
   4DC6 EE E4         [ 5] 1722 	ldu ,s	;  u
   4DC8 BD F3 7A      [ 8] 1723 	jsr ___Print_Str_d; BIOS call
                           1724 ;  0 "" 2
                           1725 ;  816 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1726 	; #ENR#[589]    if (Vec_Buttons & 1) {
                           1727 ;  0 "" 2
                           1728 ;--- end asm ---
   4DCB F6 C8 11      [ 5] 1729 	ldb	_Vec_Buttons	; , Vec_Buttons
   4DCE C5 01         [ 2] 1730 	bitb	#1	; ,
   4DD0 27 06         [ 3] 1731 	beq	L78	; 
                           1732 ;----- asm -----
                           1733 ;  818 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1734 	; #ENR#[590]        arcadeSelection = 0;
                           1735 ;  0 "" 2
                           1736 ;--- end asm ---
   4DD2 7F CB 03      [ 7] 1737 	clr	_arcadeSelection	;  arcadeSelection
                           1738 ;----- asm -----
                           1739 ;  820 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1740 	; #ENR#[591]        startLevel();
                           1741 ;  0 "" 2
                           1742 ;--- end asm ---
   4DD5 BD 4C 6D      [ 8] 1743 	jsr	_startLevel	; 
   4DD8                    1744 L78:
                           1745 ;----- asm -----
                           1746 ;  823 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1747 	; #ENR#[593]    if (Vec_Buttons & 2) {
                           1748 ;  0 "" 2
                           1749 ;--- end asm ---
   4DD8 F6 C8 11      [ 5] 1750 	ldb	_Vec_Buttons	; , Vec_Buttons
   4DDB C5 02         [ 2] 1751 	bitb	#2	; ,
   4DDD 27 08         [ 3] 1752 	beq	L79	; 
                           1753 ;----- asm -----
                           1754 ;  825 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1755 	; #ENR#[594]        arcadeSelection = 1;
                           1756 ;  0 "" 2
                           1757 ;--- end asm ---
   4DDF C6 01         [ 2] 1758 	ldb	#1	; ,
   4DE1 F7 CB 03      [ 5] 1759 	stb	_arcadeSelection	; , arcadeSelection
                           1760 ;----- asm -----
                           1761 ;  827 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1762 	; #ENR#[595]        startLevel();
                           1763 ;  0 "" 2
                           1764 ;--- end asm ---
   4DE4 BD 4C 6D      [ 8] 1765 	jsr	_startLevel	; 
   4DE7                    1766 L79:
                           1767 ;----- asm -----
                           1768 ;  830 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1769 	; #ENR#[597]    if (Vec_Buttons & 4) {
                           1770 ;  0 "" 2
                           1771 ;--- end asm ---
   4DE7 F6 C8 11      [ 5] 1772 	ldb	_Vec_Buttons	; , Vec_Buttons
   4DEA C5 04         [ 2] 1773 	bitb	#4	; ,
   4DEC 27 08         [ 3] 1774 	beq	L80	; 
                           1775 ;----- asm -----
                           1776 ;  832 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1777 	; #ENR#[598]        arcadeSelection = 2;
                           1778 ;  0 "" 2
                           1779 ;--- end asm ---
   4DEE C6 02         [ 2] 1780 	ldb	#2	; ,
   4DF0 F7 CB 03      [ 5] 1781 	stb	_arcadeSelection	; , arcadeSelection
                           1782 ;----- asm -----
                           1783 ;  834 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1784 	; #ENR#[599]        startLevel();
                           1785 ;  0 "" 2
                           1786 ;--- end asm ---
   4DF3 BD 4C 6D      [ 8] 1787 	jsr	_startLevel	; 
   4DF6                    1788 L80:
                           1789 ;----- asm -----
                           1790 ;  837 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1791 	; #ENR#[601]    if (Vec_Buttons & 8) {
                           1792 ;  0 "" 2
                           1793 ;--- end asm ---
   4DF6 F6 C8 11      [ 5] 1794 	ldb	_Vec_Buttons	; , Vec_Buttons
   4DF9 C5 08         [ 2] 1795 	bitb	#8	; ,
   4DFB 27 08         [ 3] 1796 	beq	L82	; 
                           1797 ;----- asm -----
                           1798 ;  839 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1799 	; #ENR#[602]        arcadeSelection = 3;
                           1800 ;  0 "" 2
                           1801 ;--- end asm ---
   4DFD C6 03         [ 2] 1802 	ldb	#3	; ,
   4DFF F7 CB 03      [ 5] 1803 	stb	_arcadeSelection	; , arcadeSelection
                           1804 ;----- asm -----
                           1805 ;  841 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1806 	; #ENR#[603]        startLevel();
                           1807 ;  0 "" 2
                           1808 ;--- end asm ---
   4E02 BD 4C 6D      [ 8] 1809 	jsr	_startLevel	; 
   4E05                    1810 L82:
   4E05 32 64         [ 5] 1811 	leas	4,s	; ,,
   4E07 35 C0         [ 7] 1812 	puls	u,pc	; 
   4E09                    1813 LC6:
   4E09 4D                 1814 	.byte	0x4D
   4E0A 41                 1815 	.byte	0x41
   4E0B 49                 1816 	.byte	0x49
   4E0C 4E                 1817 	.byte	0x4E
   4E0D 20                 1818 	.byte	0x20
   4E0E 4D                 1819 	.byte	0x4D
   4E0F 45                 1820 	.byte	0x45
   4E10 4E                 1821 	.byte	0x4E
   4E11 55                 1822 	.byte	0x55
   4E12 80                 1823 	.byte	0x80
   4E13 00                 1824 	.byte	0x00
   4E14                    1825 LC7:
   4E14 31                 1826 	.byte	0x31
   4E15 20                 1827 	.byte	0x20
   4E16 50                 1828 	.byte	0x50
   4E17 55                 1829 	.byte	0x55
   4E18 5A                 1830 	.byte	0x5A
   4E19 5A                 1831 	.byte	0x5A
   4E1A 4C                 1832 	.byte	0x4C
   4E1B 45                 1833 	.byte	0x45
   4E1C 20                 1834 	.byte	0x20
   4E1D 4D                 1835 	.byte	0x4D
   4E1E 4F                 1836 	.byte	0x4F
   4E1F 44                 1837 	.byte	0x44
   4E20 45                 1838 	.byte	0x45
   4E21 80                 1839 	.byte	0x80
   4E22 00                 1840 	.byte	0x00
   4E23                    1841 LC8:
   4E23 32                 1842 	.byte	0x32
   4E24 20                 1843 	.byte	0x20
   4E25 41                 1844 	.byte	0x41
   4E26 52                 1845 	.byte	0x52
   4E27 43                 1846 	.byte	0x43
   4E28 41                 1847 	.byte	0x41
   4E29 44                 1848 	.byte	0x44
   4E2A 45                 1849 	.byte	0x45
   4E2B 20                 1850 	.byte	0x20
   4E2C 4D                 1851 	.byte	0x4D
   4E2D 4F                 1852 	.byte	0x4F
   4E2E 44                 1853 	.byte	0x44
   4E2F 45                 1854 	.byte	0x45
   4E30 80                 1855 	.byte	0x80
   4E31 00                 1856 	.byte	0x00
   4E32                    1857 LC9:
   4E32 33                 1858 	.byte	0x33
   4E33 20                 1859 	.byte	0x20
   4E34 43                 1860 	.byte	0x43
   4E35 4C                 1861 	.byte	0x4C
   4E36 45                 1862 	.byte	0x45
   4E37 41                 1863 	.byte	0x41
   4E38 52                 1864 	.byte	0x52
   4E39 20                 1865 	.byte	0x20
   4E3A 48                 1866 	.byte	0x48
   4E3B 49                 1867 	.byte	0x49
   4E3C 47                 1868 	.byte	0x47
   4E3D 48                 1869 	.byte	0x48
   4E3E 53                 1870 	.byte	0x53
   4E3F 43                 1871 	.byte	0x43
   4E40 4F                 1872 	.byte	0x4F
   4E41 52                 1873 	.byte	0x52
   4E42 45                 1874 	.byte	0x45
   4E43 80                 1875 	.byte	0x80
   4E44 00                 1876 	.byte	0x00
                           1877 	.globl _mainMenu
   4E45                    1878 _mainMenu:
   4E45 34 40         [ 6] 1879 	pshs	u	; 
   4E47 32 7C         [ 5] 1880 	leas	-4,s	; ,,
                           1881 ;----- asm -----
                           1882 ;  755 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1883 	; #ENR#[555]    Read_Btns();
                           1884 ;  0 "" 2
                           1885 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E49 BD F1 BA      [ 8] 1886 	jsr ___Read_Btns; BIOS call
                           1887 ;  0 "" 2
                           1888 ;  757 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1889 	; #ENR#[556]    Intensity_a(0x5f);
                           1890 ;  0 "" 2
                           1891 ;--- end asm ---
   4E4C C6 5F         [ 2] 1892 	ldb	#95	; ,
   4E4E E7 62         [ 5] 1893 	stb	2,s	; , a
                           1894 ;----- asm -----
                           1895 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E50 A6 62         [ 5] 1896 	lda 2,s	;  a
   4E52 BD F2 AB      [ 8] 1897 	jsr ___Intensity_a; BIOS call
                           1898 ;  0 "" 2
                           1899 ;  759 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1900 	; #ENR#[557]    Vec_Text_Width = 90;
                           1901 ;  0 "" 2
                           1902 ;--- end asm ---
   4E55 C6 5A         [ 2] 1903 	ldb	#90	; ,
   4E57 F7 C8 2B      [ 5] 1904 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           1905 ;----- asm -----
                           1906 ;  761 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1907 	; #ENR#[558]    Print_Str_d(100, -70, "MAIN MENU�");
                           1908 ;  0 "" 2
                           1909 ;--- end asm ---
   4E5A CB 0A         [ 2] 1910 	addb	#10	; ,
   4E5C E7 62         [ 5] 1911 	stb	2,s	; , a
   4E5E C6 BA         [ 2] 1912 	ldb	#-70	; ,
   4E60 E7 63         [ 5] 1913 	stb	3,s	; , b
   4E62 8E 4E 09      [ 3] 1914 	ldx	#LC6	; ,
   4E65 AF E4         [ 5] 1915 	stx	,s	; , u
                           1916 ;----- asm -----
                           1917 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E67 A6 62         [ 5] 1918 	lda 2,s	;  a
   4E69 E6 63         [ 5] 1919 	ldb 3,s	;  b
   4E6B EE E4         [ 5] 1920 	ldu ,s	;  u
   4E6D BD F3 7A      [ 8] 1921 	jsr ___Print_Str_d; BIOS call
                           1922 ;  0 "" 2
                           1923 ;  763 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1924 	; #ENR#[559]    Print_Str_d(50, -110, "1 PUZZLE MODE�");
                           1925 ;  0 "" 2
                           1926 ;--- end asm ---
   4E70 C6 32         [ 2] 1927 	ldb	#50	; ,
   4E72 E7 63         [ 5] 1928 	stb	3,s	; , a
   4E74 C6 92         [ 2] 1929 	ldb	#-110	; ,
   4E76 E7 62         [ 5] 1930 	stb	2,s	; , b
   4E78 8E 4E 14      [ 3] 1931 	ldx	#LC7	; ,
   4E7B AF E4         [ 5] 1932 	stx	,s	; , u
                           1933 ;----- asm -----
                           1934 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E7D A6 63         [ 5] 1935 	lda 3,s	;  a
   4E7F E6 62         [ 5] 1936 	ldb 2,s	;  b
   4E81 EE E4         [ 5] 1937 	ldu ,s	;  u
   4E83 BD F3 7A      [ 8] 1938 	jsr ___Print_Str_d; BIOS call
                           1939 ;  0 "" 2
                           1940 ;  765 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1941 	; #ENR#[560]    Print_Str_d(20, -110, "2 ARCADE MODE�");
                           1942 ;  0 "" 2
                           1943 ;--- end asm ---
   4E86 C6 14         [ 2] 1944 	ldb	#20	; ,
   4E88 E7 62         [ 5] 1945 	stb	2,s	; , a
   4E8A C6 92         [ 2] 1946 	ldb	#-110	; ,
   4E8C E7 63         [ 5] 1947 	stb	3,s	; , b
   4E8E 8E 4E 23      [ 3] 1948 	ldx	#LC8	; ,
   4E91 AF E4         [ 5] 1949 	stx	,s	; , u
                           1950 ;----- asm -----
                           1951 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4E93 A6 62         [ 5] 1952 	lda 2,s	;  a
   4E95 E6 63         [ 5] 1953 	ldb 3,s	;  b
   4E97 EE E4         [ 5] 1954 	ldu ,s	;  u
   4E99 BD F3 7A      [ 8] 1955 	jsr ___Print_Str_d; BIOS call
                           1956 ;  0 "" 2
                           1957 ;  767 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1958 	; #ENR#[561]    Print_Str_d(-10, -110, "3 CLEAR HIGHSCORE�");
                           1959 ;  0 "" 2
                           1960 ;--- end asm ---
   4E9C C6 F6         [ 2] 1961 	ldb	#-10	; ,
   4E9E E7 63         [ 5] 1962 	stb	3,s	; , a
   4EA0 C6 92         [ 2] 1963 	ldb	#-110	; ,
   4EA2 E7 62         [ 5] 1964 	stb	2,s	; , b
   4EA4 8E 4E 32      [ 3] 1965 	ldx	#LC9	; ,
   4EA7 AF E4         [ 5] 1966 	stx	,s	; , u
                           1967 ;----- asm -----
                           1968 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4EA9 A6 63         [ 5] 1969 	lda 3,s	;  a
   4EAB E6 62         [ 5] 1970 	ldb 2,s	;  b
   4EAD EE E4         [ 5] 1971 	ldu ,s	;  u
   4EAF BD F3 7A      [ 8] 1972 	jsr ___Print_Str_d; BIOS call
                           1973 ;  0 "" 2
                           1974 ;  769 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1975 	; #ENR#[562]    if (Vec_Buttons & 1) {
                           1976 ;  0 "" 2
                           1977 ;--- end asm ---
   4EB2 F6 C8 11      [ 5] 1978 	ldb	_Vec_Buttons	; , Vec_Buttons
   4EB5 C5 01         [ 2] 1979 	bitb	#1	; ,
   4EB7 27 09         [ 3] 1980 	beq	L84	; 
                           1981 ;----- asm -----
                           1982 ;  771 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1983 	; #ENR#[563]        arcadeMode = 0;
                           1984 ;  0 "" 2
                           1985 ;--- end asm ---
   4EB9 7F CB 02      [ 7] 1986 	clr	_arcadeMode	;  arcadeMode
                           1987 ;----- asm -----
                           1988 ;  773 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1989 	; #ENR#[564]        levelNumber = 0;
                           1990 ;  0 "" 2
                           1991 ;--- end asm ---
   4EBC 7F C8 83      [ 7] 1992 	clr	_levelNumber	;  levelNumber
                           1993 ;----- asm -----
                           1994 ;  775 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           1995 	; #ENR#[565]        startLevel();
                           1996 ;  0 "" 2
                           1997 ;--- end asm ---
   4EBF BD 4C 6D      [ 8] 1998 	jsr	_startLevel	; 
   4EC2                    1999 L84:
                           2000 ;----- asm -----
                           2001 ;  778 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2002 	; #ENR#[567]    if (Vec_Buttons & 2) {
                           2003 ;  0 "" 2
                           2004 ;--- end asm ---
   4EC2 F6 C8 11      [ 5] 2005 	ldb	_Vec_Buttons	; , Vec_Buttons
   4EC5 C5 02         [ 2] 2006 	bitb	#2	; ,
   4EC7 27 14         [ 3] 2007 	beq	L85	; 
                           2008 ;----- asm -----
                           2009 ;  780 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2010 	; #ENR#[568]        frames = 0;
                           2011 ;  0 "" 2
                           2012 ;--- end asm ---
   4EC9 CC 00 00      [ 3] 2013 	ldd	#0	; ,
   4ECC FD CA FD      [ 6] 2014 	std	_frames	; , frames
                           2015 ;----- asm -----
                           2016 ;  782 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2017 	; #ENR#[569]        moveCount = 0;
                           2018 ;  0 "" 2
                           2019 ;--- end asm ---
   4ECF FD CA FB      [ 6] 2020 	std	_moveCount	; , moveCount
                           2021 ;----- asm -----
                           2022 ;  784 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2023 	; #ENR#[570]        arcadeMode = 1;
                           2024 ;  0 "" 2
                           2025 ;--- end asm ---
   4ED2 C6 01         [ 2] 2026 	ldb	#1	; ,
   4ED4 F7 CB 02      [ 5] 2027 	stb	_arcadeMode	; , arcadeMode
                           2028 ;----- asm -----
                           2029 ;  786 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2030 	; #ENR#[571]        arcadeIndex = 0;
                           2031 ;  0 "" 2
                           2032 ;--- end asm ---
   4ED7 7F CB 04      [ 7] 2033 	clr	_arcadeIndex	;  arcadeIndex
                           2034 ;----- asm -----
                           2035 ;  788 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2036 	; #ENR#[572]        gameState = ArcadeMenu;
                           2037 ;  0 "" 2
                           2038 ;--- end asm ---
   4EDA F7 CB 05      [ 5] 2039 	stb	_gameState	; , gameState
   4EDD                    2040 L85:
                           2041 ;----- asm -----
                           2042 ;  791 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2043 	; #ENR#[574]    if (Vec_Buttons & 4) {
                           2044 ;  0 "" 2
                           2045 ;--- end asm ---
   4EDD F6 C8 11      [ 5] 2046 	ldb	_Vec_Buttons	; , Vec_Buttons
   4EE0 C5 04         [ 2] 2047 	bitb	#4	; ,
   4EE2 27 05         [ 3] 2048 	beq	L87	; 
                           2049 ;----- asm -----
                           2050 ;  793 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2051 	; #ENR#[575]        gameState = ClearMenu;
                           2052 ;  0 "" 2
                           2053 ;--- end asm ---
   4EE4 C6 03         [ 2] 2054 	ldb	#3	; ,
   4EE6 F7 CB 05      [ 5] 2055 	stb	_gameState	; , gameState
   4EE9                    2056 L87:
   4EE9 32 64         [ 5] 2057 	leas	4,s	; ,,
   4EEB 35 C0         [ 7] 2058 	puls	u,pc	; 
                           2059 	.globl _blockFalling
   4EED                    2060 _blockFalling:
   4EED 32 7F         [ 5] 2061 	leas	-1,s	; ,,
                           2062 ;----- asm -----
                           2063 ;  687 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2064 	; #ENR#[513]    drawField();
                           2065 ;  0 "" 2
                           2066 ;--- end asm ---
   4EEF BD 48 3A      [ 8] 2067 	jsr	_drawField	; 
                           2068 ;----- asm -----
                           2069 ;  689 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2070 	; #ENR#[514]    blockYOfs++;
                           2071 ;  0 "" 2
                           2072 ;--- end asm ---
   4EF2 F6 C8 8B      [ 5] 2073 	ldb	_blockYOfs	; , blockYOfs
   4EF5 5C            [ 2] 2074 	incb	; 
   4EF6 E7 E4         [ 4] 2075 	stb	,s	; , blockYOfs.58
   4EF8 F7 C8 8B      [ 5] 2076 	stb	_blockYOfs	; , blockYOfs
                           2077 ;----- asm -----
                           2078 ;  691 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2079 	; #ENR#[515]    if (blockYOfs < 12) {
                           2080 ;  0 "" 2
                           2081 ;--- end asm ---
   4EFB C1 0B         [ 2] 2082 	cmpb	#11	;cmpqi:	; ,
   4EFD 2E 0A         [ 3] 2083 	bgt	L89	; 
                           2084 ;----- asm -----
                           2085 ;  693 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2086 	; #ENR#[516]        drawBlock(-blockYOfs*blockYOfs);
                           2087 ;  0 "" 2
                           2088 ;--- end asm ---
   4EFF 50            [ 2] 2089 	negb	;  tmp28
   4F00 A6 E4         [ 4] 2090 	lda	,s	;mulqihi3	;  blockYOfs.58
   4F02 3D            [11] 2091 	mul
                           2092 		;movlsbqihi: D->B
   4F03 BD 04 B4      [ 8] 2093 	jsr	_drawBlock	; 
                           2094 ;----- asm -----
                           2095 ;  695 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2096 	; #ENR#[517]        doBlockAnimation();
                           2097 ;  0 "" 2
                           2098 ;--- end asm ---
   4F06 BD 03 B2      [ 8] 2099 	jsr	_doBlockAnimation	; 
   4F09                    2100 L89:
                           2101 ;----- asm -----
                           2102 ;  698 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2103 	; #ENR#[519]    if (blockYOfs == 50) {
                           2104 ;  0 "" 2
                           2105 ;--- end asm ---
   4F09 F6 C8 8B      [ 5] 2106 	ldb	_blockYOfs	; , blockYOfs
   4F0C C1 32         [ 2] 2107 	cmpb	#50	;cmpqi:	; ,
   4F0E 26 03         [ 3] 2108 	bne	L91	; 
                           2109 ;----- asm -----
                           2110 ;  700 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2111 	; #ENR#[520]        startLevel();
                           2112 ;  0 "" 2
                           2113 ;--- end asm ---
   4F10 BD 4C 6D      [ 8] 2114 	jsr	_startLevel	; 
   4F13                    2115 L91:
   4F13 32 61         [ 5] 2116 	leas	1,s	; ,,
   4F15 39            [ 5] 2117 	rts
                           2118 	.globl _writeEeprom
   4F16                    2119 _writeEeprom:
                           2120 ;----- asm -----
                           2121 ;  212 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2122 	; #ENR#[197]    if (picAvailable) {
                           2123 ;  0 "" 2
                           2124 ;--- end asm ---
   4F16 7D CB 01      [ 7] 2125 	tst	_picAvailable	;  picAvailable
   4F19 27 12         [ 3] 2126 	beq	L94	; 
                           2127 ;----- asm -----
                           2128 ;  214 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2129 	; #ENR#[198]        sendCommand(CMD_SET_EEPROM_ADR, address);
                           2130 ;  0 "" 2
                           2131 ;--- end asm ---
   4F1B 34 04         [ 6] 2132 	pshs	b	;  address
   4F1D C6 02         [ 2] 2133 	ldb	#2	; ,
   4F1F BD 4C 3A      [ 8] 2134 	jsr	_sendCommand	; 
                           2135 ;----- asm -----
                           2136 ;  216 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2137 	; #ENR#[199]        sendCommand(CMD_EEPROM_WRITE, data);
                           2138 ;  0 "" 2
                           2139 ;--- end asm ---
   4F22 E6 63         [ 5] 2140 	ldb	3,s	; , data
   4F24 E7 E2         [ 6] 2141 	stb	,-s	; ,
   4F26 C6 03         [ 2] 2142 	ldb	#3	; ,
   4F28 BD 4C 3A      [ 8] 2143 	jsr	_sendCommand	; 
   4F2B 32 62         [ 5] 2144 	leas	2,s	; ,,
   4F2D                    2145 L94:
   4F2D 39            [ 5] 2146 	rts
   4F2E                    2147 LC10:
   4F2E 43                 2148 	.byte	0x43
   4F2F 4C                 2149 	.byte	0x4C
   4F30 45                 2150 	.byte	0x45
   4F31 41                 2151 	.byte	0x41
   4F32 52                 2152 	.byte	0x52
   4F33 20                 2153 	.byte	0x20
   4F34 53                 2154 	.byte	0x53
   4F35 43                 2155 	.byte	0x43
   4F36 4F                 2156 	.byte	0x4F
   4F37 52                 2157 	.byte	0x52
   4F38 45                 2158 	.byte	0x45
   4F39 3F                 2159 	.byte	0x3F
   4F3A 80                 2160 	.byte	0x80
   4F3B 00                 2161 	.byte	0x00
   4F3C                    2162 LC11:
   4F3C 33                 2163 	.byte	0x33
   4F3D 20                 2164 	.byte	0x20
   4F3E 59                 2165 	.byte	0x59
   4F3F 45                 2166 	.byte	0x45
   4F40 53                 2167 	.byte	0x53
   4F41 80                 2168 	.byte	0x80
   4F42 00                 2169 	.byte	0x00
   4F43                    2170 LC12:
   4F43 34                 2171 	.byte	0x34
   4F44 20                 2172 	.byte	0x20
   4F45 4E                 2173 	.byte	0x4E
   4F46 4F                 2174 	.byte	0x4F
   4F47 80                 2175 	.byte	0x80
   4F48 00                 2176 	.byte	0x00
                           2177 	.globl _clearMenu
   4F49                    2178 _clearMenu:
   4F49 34 40         [ 6] 2179 	pshs	u	; 
   4F4B 32 7B         [ 5] 2180 	leas	-5,s	; ,,
                           2181 ;----- asm -----
                           2182 ;  882 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2183 	; #ENR#[630]    Read_Btns();
                           2184 ;  0 "" 2
                           2185 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F4D BD F1 BA      [ 8] 2186 	jsr ___Read_Btns; BIOS call
                           2187 ;  0 "" 2
                           2188 ;  884 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2189 	; #ENR#[631]    Intensity_a(0x5f);
                           2190 ;  0 "" 2
                           2191 ;--- end asm ---
   4F50 C6 5F         [ 2] 2192 	ldb	#95	; ,
   4F52 E7 64         [ 5] 2193 	stb	4,s	; , a
                           2194 ;----- asm -----
                           2195 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F54 A6 64         [ 5] 2196 	lda 4,s	;  a
   4F56 BD F2 AB      [ 8] 2197 	jsr ___Intensity_a; BIOS call
                           2198 ;  0 "" 2
                           2199 ;  886 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2200 	; #ENR#[632]    Vec_Text_Width = 90;
                           2201 ;  0 "" 2
                           2202 ;--- end asm ---
   4F59 C6 5A         [ 2] 2203 	ldb	#90	; ,
   4F5B F7 C8 2B      [ 5] 2204 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           2205 ;----- asm -----
                           2206 ;  888 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2207 	; #ENR#[633]    Print_Str_d(100, -80, "CLEAR SCORE?�");
                           2208 ;  0 "" 2
                           2209 ;--- end asm ---
   4F5E CB 0A         [ 2] 2210 	addb	#10	; ,
   4F60 E7 64         [ 5] 2211 	stb	4,s	; , a
   4F62 C6 B0         [ 2] 2212 	ldb	#-80	; ,
   4F64 E7 63         [ 5] 2213 	stb	3,s	; , b
   4F66 8E 4F 2E      [ 3] 2214 	ldx	#LC10	; ,
   4F69 AF 61         [ 6] 2215 	stx	1,s	; , u
                           2216 ;----- asm -----
                           2217 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F6B A6 64         [ 5] 2218 	lda 4,s	;  a
   4F6D E6 63         [ 5] 2219 	ldb 3,s	;  b
   4F6F EE 61         [ 6] 2220 	ldu 1,s	;  u
   4F71 BD F3 7A      [ 8] 2221 	jsr ___Print_Str_d; BIOS call
                           2222 ;  0 "" 2
                           2223 ;  890 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2224 	; #ENR#[634]    Print_Str_d(50, -110, "3 YES�");
                           2225 ;  0 "" 2
                           2226 ;--- end asm ---
   4F74 C6 32         [ 2] 2227 	ldb	#50	; ,
   4F76 E7 63         [ 5] 2228 	stb	3,s	; , a
   4F78 C6 92         [ 2] 2229 	ldb	#-110	; ,
   4F7A E7 64         [ 5] 2230 	stb	4,s	; , b
   4F7C 8E 4F 3C      [ 3] 2231 	ldx	#LC11	; ,
   4F7F AF 61         [ 6] 2232 	stx	1,s	; , u
                           2233 ;----- asm -----
                           2234 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F81 A6 63         [ 5] 2235 	lda 3,s	;  a
   4F83 E6 64         [ 5] 2236 	ldb 4,s	;  b
   4F85 EE 61         [ 6] 2237 	ldu 1,s	;  u
   4F87 BD F3 7A      [ 8] 2238 	jsr ___Print_Str_d; BIOS call
                           2239 ;  0 "" 2
                           2240 ;  892 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2241 	; #ENR#[635]    Print_Str_d(20, -110, "4 NO�");
                           2242 ;  0 "" 2
                           2243 ;--- end asm ---
   4F8A C6 14         [ 2] 2244 	ldb	#20	; ,
   4F8C E7 64         [ 5] 2245 	stb	4,s	; , a
   4F8E C6 92         [ 2] 2246 	ldb	#-110	; ,
   4F90 E7 63         [ 5] 2247 	stb	3,s	; , b
   4F92 8E 4F 43      [ 3] 2248 	ldx	#LC12	; ,
   4F95 AF 61         [ 6] 2249 	stx	1,s	; , u
                           2250 ;----- asm -----
                           2251 ;  666 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   4F97 A6 64         [ 5] 2252 	lda 4,s	;  a
   4F99 E6 63         [ 5] 2253 	ldb 3,s	;  b
   4F9B EE 61         [ 6] 2254 	ldu 1,s	;  u
   4F9D BD F3 7A      [ 8] 2255 	jsr ___Print_Str_d; BIOS call
                           2256 ;  0 "" 2
                           2257 ;  894 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2258 	; #ENR#[636]    if (Vec_Buttons & 4) {
                           2259 ;  0 "" 2
                           2260 ;--- end asm ---
   4FA0 F6 C8 11      [ 5] 2261 	ldb	_Vec_Buttons	; , Vec_Buttons
   4FA3 C5 04         [ 2] 2262 	bitb	#4	; ,
   4FA5 27 18         [ 3] 2263 	beq	L96	; 
                           2264 ;----- asm -----
                           2265 ;  896 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2266 	; #ENR#[637]        for (uint8_t i = 0; i < 6; i++) {
                           2267 ;  0 "" 2
                           2268 ;--- end asm ---
   4FA7 6F E4         [ 6] 2269 	clr	,s	;  i
   4FA9                    2270 L97:
                           2271 ;----- asm -----
                           2272 ;  898 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2273 	; #ENR#[638]            writeEeprom(i, 0xff);
                           2274 ;  0 "" 2
                           2275 ;--- end asm ---
   4FA9 C6 FF         [ 2] 2276 	ldb	#-1	; ,
   4FAB E7 E2         [ 6] 2277 	stb	,-s	; ,
   4FAD E6 61         [ 5] 2278 	ldb	1,s	; , i
   4FAF BD 4F 16      [ 8] 2279 	jsr	_writeEeprom	; 
   4FB2 6C 61         [ 7] 2280 	inc	1,s	;  i
   4FB4 32 61         [ 5] 2281 	leas	1,s	; ,,
   4FB6 E6 E4         [ 4] 2282 	ldb	,s	; , i
   4FB8 C1 06         [ 2] 2283 	cmpb	#6	;cmpqi:	; ,
   4FBA 26 ED         [ 3] 2284 	bne	L97	; 
                           2285 ;----- asm -----
                           2286 ;  901 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2287 	; #ENR#[640]        gameState = MainMenu;
                           2288 ;  0 "" 2
                           2289 ;--- end asm ---
   4FBC 7F CB 05      [ 7] 2290 	clr	_gameState	;  gameState
   4FBF                    2291 L96:
                           2292 ;----- asm -----
                           2293 ;  904 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2294 	; #ENR#[642]    if (Vec_Buttons & 8) {
                           2295 ;  0 "" 2
                           2296 ;--- end asm ---
   4FBF F6 C8 11      [ 5] 2297 	ldb	_Vec_Buttons	; , Vec_Buttons
   4FC2 C5 08         [ 2] 2298 	bitb	#8	; ,
   4FC4 27 03         [ 3] 2299 	beq	L99	; 
                           2300 ;----- asm -----
                           2301 ;  906 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2302 	; #ENR#[643]        gameState = MainMenu;
                           2303 ;  0 "" 2
                           2304 ;--- end asm ---
   4FC6 7F CB 05      [ 7] 2305 	clr	_gameState	;  gameState
   4FC9                    2306 L99:
   4FC9 32 65         [ 5] 2307 	leas	5,s	; ,,
   4FCB 35 C0         [ 7] 2308 	puls	u,pc	; 
                           2309 	.globl _blockMovingAtEnd
   4FCD                    2310 _blockMovingAtEnd:
   4FCD 34 60         [ 7] 2311 	pshs	y,u	; 
   4FCF 32 7C         [ 5] 2312 	leas	-4,s	; ,,
                           2313 ;----- asm -----
                           2314 ;  707 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2315 	; #ENR#[526]    drawField();
                           2316 ;  0 "" 2
                           2317 ;--- end asm ---
   4FD1 BD 48 3A      [ 8] 2318 	jsr	_drawField	; 
                           2319 ;----- asm -----
                           2320 ;  709 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2321 	; #ENR#[527]    drawBlock(blockYOfs);
                           2322 ;  0 "" 2
                           2323 ;--- end asm ---
   4FD4 F6 C8 8B      [ 5] 2324 	ldb	_blockYOfs	; , blockYOfs
   4FD7 BD 04 B4      [ 8] 2325 	jsr	_drawBlock	; 
                           2326 ;----- asm -----
                           2327 ;  711 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2328 	; #ENR#[528]    blockYOfs++;
                           2329 ;  0 "" 2
                           2330 ;--- end asm ---
   4FDA F6 C8 8B      [ 5] 2331 	ldb	_blockYOfs	;  blockYOfs.60, blockYOfs
   4FDD 5C            [ 2] 2332 	incb	;  blockYOfs.60
   4FDE F7 C8 8B      [ 5] 2333 	stb	_blockYOfs	;  blockYOfs.60, blockYOfs
                           2334 ;----- asm -----
                           2335 ;  713 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2336 	; #ENR#[529]    if (blockYOfs == 30) {
                           2337 ;  0 "" 2
                           2338 ;--- end asm ---
   4FE1 C1 1E         [ 2] 2339 	cmpb	#30	;cmpqi:	;  blockYOfs.60,
   4FE3 10 26 00 C2   [ 6] 2340 	lbne	L107	; 
                           2341 ;----- asm -----
                           2342 ;  715 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2343 	; #ENR#[530]        if (moveCount < levelHighscore) {
                           2344 ;  0 "" 2
                           2345 ;--- end asm ---
   4FE7 BE CA FB      [ 6] 2346 	ldx	_moveCount	;  moveCount.61, moveCount
   4FEA BC CA FF      [ 7] 2347 	cmpx	_levelHighscore	;cmphi:	;  moveCount.61, levelHighscore
   4FED 24 25         [ 3] 2348 	bhs	L103	; 
                           2349 ;----- asm -----
                           2350 ;  717 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2351 	; #ENR#[531]            writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
                           2352 ;  0 "" 2
                           2353 ;--- end asm ---
   4FEF F6 C8 83      [ 5] 2354 	ldb	_levelNumber	; , levelNumber
   4FF2 58            [ 2] 2355 	aslb	; 
   4FF3 E7 E4         [ 4] 2356 	stb	,s	; ,
   4FF5 1F 10         [ 6] 2357 	tfr	x,d	;  moveCount.61,
   4FF7 34 04         [ 6] 2358 	pshs	b	; 
   4FF9 E6 61         [ 5] 2359 	ldb	1,s	; ,
   4FFB BD 4F 16      [ 8] 2360 	jsr	_writeEeprom	; 
                           2361 ;----- asm -----
                           2362 ;  719 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2363 	; #ENR#[532]            writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
                           2364 ;  0 "" 2
                           2365 ;--- end asm ---
   4FFE F6 C8 83      [ 5] 2366 	ldb	_levelNumber	;  tmp33, levelNumber
   5001 58            [ 2] 2367 	aslb	;  tmp33
   5002 5C            [ 2] 2368 	incb	;  tmp33
   5003 E7 64         [ 5] 2369 	stb	4,s	;  tmp33,
   5005 FC CA FB      [ 6] 2370 	ldd	_moveCount	;  tmp35, moveCount
   5008 1F 89         [ 6] 2371 	tfr	a,b	; ,
   500A 4F            [ 2] 2372 	clra		;zero_extendqihi: R:b -> R:d	; ,
   500B 34 04         [ 6] 2373 	pshs	b	;  tmp35
   500D E6 65         [ 5] 2374 	ldb	5,s	; ,
   500F BD 4F 16      [ 8] 2375 	jsr	_writeEeprom	; 
   5012 32 62         [ 5] 2376 	leas	2,s	; ,,
   5014                    2377 L103:
                           2378 ;----- asm -----
                           2379 ;  722 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2380 	; #ENR#[534]        if (arcadeMode) {
                           2381 ;  0 "" 2
                           2382 ;--- end asm ---
   5014 7D CB 02      [ 7] 2383 	tst	_arcadeMode	;  arcadeMode
   5017 10 27 00 7C   [ 6] 2384 	lbeq	L104	; 
                           2385 ;----- asm -----
                           2386 ;  724 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2387 	; #ENR#[535]            arcadeIndex++;
                           2388 ;  0 "" 2
                           2389 ;--- end asm ---
   501B F6 CB 04      [ 5] 2390 	ldb	_arcadeIndex	;  arcadeIndex.66, arcadeIndex
   501E 5C            [ 2] 2391 	incb	;  arcadeIndex.66
   501F F7 CB 04      [ 5] 2392 	stb	_arcadeIndex	;  arcadeIndex.66, arcadeIndex
                           2393 ;----- asm -----
                           2394 ;  726 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2395 	; #ENR#[536]            levelNumber = arcadeLevels[arcadeSelection][arcadeIndex];
                           2396 ;  0 "" 2
                           2397 ;--- end asm ---
   5022 4F            [ 2] 2398 	clra		;zero_extendqihi: R:b -> R:d	;  arcadeIndex.66,
   5023 1F 02         [ 6] 2399 	tfr	d,y	; , arcadeIndex.66
   5025 F6 CB 03      [ 5] 2400 	ldb	_arcadeSelection	; , arcadeSelection
   5028 4F            [ 2] 2401 	clra		;zero_extendqihi: R:b -> R:d	; ,
   5029 ED 61         [ 6] 2402 	std	1,s	; ,
   502B 58            [ 2] 2403 	aslb	; 
   502C 49            [ 2] 2404 	rola	; 
   502D 58            [ 2] 2405 	aslb	; 
   502E 49            [ 2] 2406 	rola	; 
   502F EE 61         [ 6] 2407 	ldu	1,s	; ,
   5031 30 CB         [ 8] 2408 	leax	d,u	;  tmp41, tmp40,
   5033 1E 02         [ 8] 2409 	exg	d,y	; , arcadeIndex.66
   5035 30 8B         [ 8] 2410 	leax	d,x	;  tmp42,, tmp42
   5037 1E 02         [ 8] 2411 	exg	d,y	; , arcadeIndex.66
   5039 E6 89 53 13   [ 8] 2412 	ldb	_arcadeLevels,x	;  levelNumber.68, arcadeLevels
   503D F7 C8 83      [ 5] 2413 	stb	_levelNumber	;  levelNumber.68, levelNumber
                           2414 ;----- asm -----
                           2415 ;  728 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2416 	; #ENR#[537]            if (levelNumber == 0) {
                           2417 ;  0 "" 2
                           2418 ;--- end asm ---
   5040 5D            [ 2] 2419 	tstb	;  levelNumber.68
   5041 10 26 00 4D   [ 6] 2420 	lbne	L105	; 
                           2421 ;----- asm -----
                           2422 ;  730 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2423 	; #ENR#[538]                gameState = ArcadeEnd;
                           2424 ;  0 "" 2
                           2425 ;--- end asm ---
   5045 C6 02         [ 2] 2426 	ldb	#2	; ,
   5047 F7 CB 05      [ 5] 2427 	stb	_gameState	; , gameState
                           2428 ;----- asm -----
                           2429 ;  732 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2430 	; #ENR#[539]                memcpy(infoText, "TIME: 000 SECONDS�", 18);
                           2431 ;  0 "" 2
                           2432 ;--- end asm ---
   504A 8E 54 49      [ 3] 2433 	ldx	#21577	; ,
   504D BF CA E7      [ 6] 2434 	stx	_infoText	; , infoText
   5050 CE 4D 45      [ 3] 2435 	ldu	#19781	; ,
   5053 FF CA E9      [ 6] 2436 	stu	_infoText+2	; , infoText
   5056 8E 3A 20      [ 3] 2437 	ldx	#14880	; ,
   5059 BF CA EB      [ 6] 2438 	stx	_infoText+4	; , infoText
   505C CE 30 30      [ 3] 2439 	ldu	#12336	; ,
   505F FF CA ED      [ 6] 2440 	stu	_infoText+6	; , infoText
   5062 8E 30 20      [ 3] 2441 	ldx	#12320	; ,
   5065 BF CA EF      [ 6] 2442 	stx	_infoText+8	; , infoText
   5068 CE 53 45      [ 3] 2443 	ldu	#21317	; ,
   506B FF CA F1      [ 6] 2444 	stu	_infoText+10	; , infoText
   506E 8E 43 4F      [ 3] 2445 	ldx	#17231	; ,
   5071 BF CA F3      [ 6] 2446 	stx	_infoText+12	; , infoText
   5074 CE 4E 44      [ 3] 2447 	ldu	#20036	; ,
   5077 FF CA F5      [ 6] 2448 	stu	_infoText+14	; , infoText
   507A 8E 53 80      [ 3] 2449 	ldx	#21376	; ,
   507D BF CA F7      [ 6] 2450 	stx	_infoText+16	; , infoText
                           2451 ;----- asm -----
                           2452 ;  734 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2453 	; #ENR#[540]                itoa(moveCount, &infoText[6]);
                           2454 ;  0 "" 2
                           2455 ;--- end asm ---
   5080 CE CA ED      [ 3] 2456 	ldu	#_infoText+6	; ,
   5083 EF E3         [ 8] 2457 	stu	,--s	; ,
   5085 BE CA FB      [ 6] 2458 	ldx	_moveCount	; , moveCount
   5088 BD 47 B2      [ 8] 2459 	jsr	_itoa	; 
                           2460 ;----- asm -----
                           2461 ;  736 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2462 	; #ENR#[541]                arcadeMode = 0;
                           2463 ;  0 "" 2
                           2464 ;--- end asm ---
   508B 7F CB 02      [ 7] 2465 	clr	_arcadeMode	;  arcadeMode
   508E 32 62         [ 5] 2466 	leas	2,s	; ,,
   5090 20 17         [ 3] 2467 	bra	L107	; 
   5092                    2468 L105:
                           2469 ;----- asm -----
                           2470 ;  739 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2471 	; #ENR#[543]                startLevel();
                           2472 ;  0 "" 2
                           2473 ;--- end asm ---
   5092 BD 4C 6D      [ 8] 2474 	jsr	_startLevel	; 
   5095 20 12         [ 3] 2475 	bra	L107	; 
   5097                    2476 L104:
                           2477 ;----- asm -----
                           2478 ;  743 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2479 	; #ENR#[546]            levelNumber++;
                           2480 ;  0 "" 2
                           2481 ;--- end asm ---
   5097 F6 C8 83      [ 5] 2482 	ldb	_levelNumber	;  levelNumber.69, levelNumber
   509A 5C            [ 2] 2483 	incb	;  levelNumber.69
   509B F7 C8 83      [ 5] 2484 	stb	_levelNumber	;  levelNumber.69, levelNumber
                           2485 ;----- asm -----
                           2486 ;  745 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2487 	; #ENR#[547]            if (levelNumber >= levelCount) levelNumber = 0;
                           2488 ;  0 "" 2
                           2489 ;--- end asm ---
   509E F1 3C C8      [ 5] 2490 	cmpb	_levelCount	;cmpqi:	;  levelNumber.69, levelCount
   50A1 25 03         [ 3] 2491 	blo	L106	; 
   50A3 7F C8 83      [ 7] 2492 	clr	_levelNumber	;  levelNumber
   50A6                    2493 L106:
                           2494 ;----- asm -----
                           2495 ;  747 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2496 	; #ENR#[548]            startLevel();
                           2497 ;  0 "" 2
                           2498 ;--- end asm ---
   50A6 BD 4C 6D      [ 8] 2499 	jsr	_startLevel	; 
   50A9                    2500 L107:
   50A9 32 64         [ 5] 2501 	leas	4,s	; ,,
   50AB 35 E0         [ 8] 2502 	puls	y,u,pc	; 
                           2503 	.globl _setBank
   50AD                    2504 _setBank:
   50AD 32 7F         [ 5] 2505 	leas	-1,s	; ,,
   50AF E7 E4         [ 4] 2506 	stb	,s	;  bank, bank
                           2507 ;----- asm -----
                           2508 ;  189 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2509 	; #ENR#[181]    *vecx = 16 + bank;
                           2510 ;  0 "" 2
                           2511 ;--- end asm ---
   50B1 CB 10         [ 2] 2512 	addb	#16	;  bank,
   50B3 E7 9F C8 88   [ 9] 2513 	stb	[_vecx]	;  bank,* vecx
                           2514 ;----- asm -----
                           2515 ;  191 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2516 	; #ENR#[182]    sendCommand(CMD_SET_BANK, bank);
                           2517 ;  0 "" 2
                           2518 ;--- end asm ---
   50B7 E6 E4         [ 4] 2519 	ldb	,s	; , bank
   50B9 34 04         [ 6] 2520 	pshs	b	; 
   50BB C6 05         [ 2] 2521 	ldb	#5	; ,
   50BD BD 4C 3A      [ 8] 2522 	jsr	_sendCommand	; 
   50C0 32 62         [ 5] 2523 	leas	2,s	; ,,
   50C2 39            [ 5] 2524 	rts
                           2525 	.globl _blockWaiting
   50C3                    2526 _blockWaiting:
                           2527 ;----- asm -----
                           2528 ;  413 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2529 	; #ENR#[345]    drawField();
                           2530 ;  0 "" 2
                           2531 ;--- end asm ---
   50C3 BD 48 3A      [ 8] 2532 	jsr	_drawField	; 
                           2533 ;----- asm -----
                           2534 ;  415 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2535 	; #ENR#[346]    drawBlock(0);
                           2536 ;  0 "" 2
                           2537 ;--- end asm ---
   50C6 5F            [ 2] 2538 	clrb	; 
   50C7 BD 04 B4      [ 8] 2539 	jsr	_drawBlock	; 
                           2540 ;----- asm -----
                           2541 ;  417 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2542 	; #ENR#[347]    joybit();
                           2543 ;  0 "" 2
                           2544 ;  2354 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   50CA BD F1 F8      [ 8] 2545 	jsr ___Joy_Digital; BIOS call
                           2546 ;  0 "" 2
                           2547 ;  419 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2548 	; #ENR#[348]    if (pot0 < -10) {
                           2549 ;  0 "" 2
                           2550 ;--- end asm ---
   50CD F6 C8 1B      [ 5] 2551 	ldb	-14309	;  D.2347,
   50D0 C1 F6         [ 2] 2552 	cmpb	#-10	;cmpqi:	;  D.2347,
   50D2 2C 0C         [ 3] 2553 	bge	L111	; 
                           2554 ;----- asm -----
                           2555 ;  421 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2556 	; #ENR#[349]        moveBlock(Left);
                           2557 ;  0 "" 2
                           2558 ;--- end asm ---
   50D4 5F            [ 2] 2559 	clrb	; 
   50D5 BD 4A 68      [ 8] 2560 	jsr	_moveBlock	; 
                           2561 ;----- asm -----
                           2562 ;  423 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2563 	; #ENR#[350]        gameState = BlockMoving;
                           2564 ;  0 "" 2
                           2565 ;--- end asm ---
   50D8 C6 06         [ 2] 2566 	ldb	#6	; ,
   50DA F7 CB 05      [ 5] 2567 	stb	_gameState	; , gameState
   50DD 7E 51 17      [ 4] 2568 	jmp	L112	; 
   50E0                    2569 L111:
   50E0 F6 C8 1B      [ 5] 2570 	ldb	-14309	;  D.2348,
   50E3 C1 0A         [ 2] 2571 	cmpb	#10	;cmpqi:	;  D.2348,
   50E5 2F 0C         [ 3] 2572 	ble	L113	; 
                           2573 ;----- asm -----
                           2574 ;  426 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2575 	; #ENR#[352]        moveBlock(Right);
                           2576 ;  0 "" 2
                           2577 ;--- end asm ---
   50E7 C6 02         [ 2] 2578 	ldb	#2	; ,
   50E9 BD 4A 68      [ 8] 2579 	jsr	_moveBlock	; 
                           2580 ;----- asm -----
                           2581 ;  428 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2582 	; #ENR#[353]        gameState = BlockMoving;
                           2583 ;  0 "" 2
                           2584 ;--- end asm ---
   50EC C6 06         [ 2] 2585 	ldb	#6	; ,
   50EE F7 CB 05      [ 5] 2586 	stb	_gameState	; , gameState
   50F1 20 24         [ 3] 2587 	bra	L112	; 
   50F3                    2588 L113:
   50F3 F6 C8 1C      [ 5] 2589 	ldb	-14308	;  D.2350,
   50F6 C1 F6         [ 2] 2590 	cmpb	#-10	;cmpqi:	;  D.2350,
   50F8 2C 0C         [ 3] 2591 	bge	L114	; 
                           2592 ;----- asm -----
                           2593 ;  431 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2594 	; #ENR#[355]        moveBlock(Down);
                           2595 ;  0 "" 2
                           2596 ;--- end asm ---
   50FA C6 03         [ 2] 2597 	ldb	#3	; ,
   50FC BD 4A 68      [ 8] 2598 	jsr	_moveBlock	; 
                           2599 ;----- asm -----
                           2600 ;  433 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2601 	; #ENR#[356]        gameState = BlockMoving;
                           2602 ;  0 "" 2
                           2603 ;--- end asm ---
   50FF C6 06         [ 2] 2604 	ldb	#6	; ,
   5101 F7 CB 05      [ 5] 2605 	stb	_gameState	; , gameState
   5104 20 11         [ 3] 2606 	bra	L112	; 
   5106                    2607 L114:
   5106 F6 C8 1C      [ 5] 2608 	ldb	-14308	;  D.2351,
   5109 C1 0A         [ 2] 2609 	cmpb	#10	;cmpqi:	;  D.2351,
   510B 2F 0A         [ 3] 2610 	ble	L112	; 
                           2611 ;----- asm -----
                           2612 ;  436 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2613 	; #ENR#[358]        moveBlock(Up);
                           2614 ;  0 "" 2
                           2615 ;--- end asm ---
   510D C6 01         [ 2] 2616 	ldb	#1	; ,
   510F BD 4A 68      [ 8] 2617 	jsr	_moveBlock	; 
                           2618 ;----- asm -----
                           2619 ;  438 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2620 	; #ENR#[359]        gameState = BlockMoving;
                           2621 ;  0 "" 2
                           2622 ;--- end asm ---
   5112 C6 06         [ 2] 2623 	ldb	#6	; ,
   5114 F7 CB 05      [ 5] 2624 	stb	_gameState	; , gameState
   5117                    2625 L112:
                           2626 ;----- asm -----
                           2627 ;  442 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2628 	; #ENR#[362]#if 0
                           2629 ;  0 "" 2
                           2630 ;  487 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2631 	; #ENR#[389]    if (gameState == BlockMoving) {
                           2632 ;  0 "" 2
                           2633 ;--- end asm ---
   5117 F6 CB 05      [ 5] 2634 	ldb	_gameState	; , gameState
   511A C1 06         [ 2] 2635 	cmpb	#6	;cmpqi:	; ,
   511C 26 0C         [ 3] 2636 	bne	L115	; 
                           2637 ;----- asm -----
                           2638 ;  489 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2639 	; #ENR#[390]        changeMusic(movingMusic);
                           2640 ;  0 "" 2
                           2641 ;--- end asm ---
   511E 8E 52 F5      [ 3] 2642 	ldx	#_movingMusic	; ,
   5121 BD 48 31      [ 8] 2643 	jsr	_changeMusic	; 
                           2644 ;----- asm -----
                           2645 ;  491 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2646 	; #ENR#[391]        *vecx = 3;
                           2647 ;  0 "" 2
                           2648 ;--- end asm ---
   5124 C6 03         [ 2] 2649 	ldb	#3	; ,
   5126 E7 9F C8 88   [ 9] 2650 	stb	[_vecx]	; ,* vecx
   512A                    2651 L115:
                           2652 ;----- asm -----
                           2653 ;  495 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2654 	; #ENR#[394]    Read_Btns();
                           2655 ;  0 "" 2
                           2656 ;  2286 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   512A BD F1 BA      [ 8] 2657 	jsr ___Read_Btns; BIOS call
                           2658 ;  0 "" 2
                           2659 ;  497 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2660 	; #ENR#[395]    if (Vec_Buttons & 1) {
                           2661 ;  0 "" 2
                           2662 ;--- end asm ---
   512D F6 C8 11      [ 5] 2663 	ldb	_Vec_Buttons	; , Vec_Buttons
   5130 C5 01         [ 2] 2664 	bitb	#1	; ,
   5132 27 08         [ 3] 2665 	beq	L116	; 
                           2666 ;----- asm -----
                           2667 ;  499 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2668 	; #ENR#[396]        if (splitMode) {
                           2669 ;  0 "" 2
                           2670 ;--- end asm ---
   5134 7D C8 8E      [ 7] 2671 	tst	_splitMode	;  splitMode
   5137 27 03         [ 3] 2672 	beq	L116	; 
                           2673 ;----- asm -----
                           2674 ;  501 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2675 	; #ENR#[397]            swapSplit();
                           2676 ;  0 "" 2
                           2677 ;--- end asm ---
   5139 BD 04 8F      [ 8] 2678 	jsr	_swapSplit	; 
   513C                    2679 L116:
                           2680 ;----- asm -----
                           2681 ;  506 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2682 	; #ENR#[401]    if ((Vec_Buttons & 2) && !arcadeMode) {
                           2683 ;  0 "" 2
                           2684 ;--- end asm ---
   513C F6 C8 11      [ 5] 2685 	ldb	_Vec_Buttons	; , Vec_Buttons
   513F C5 02         [ 2] 2686 	bitb	#2	; ,
   5141 27 1D         [ 3] 2687 	beq	L117	; 
   5143 7D CB 02      [ 7] 2688 	tst	_arcadeMode	;  arcadeMode
   5146 26 18         [ 3] 2689 	bne	L117	; 
                           2690 ;----- asm -----
                           2691 ;  508 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2692 	; #ENR#[402]        levelNumber++;
                           2693 ;  0 "" 2
                           2694 ;--- end asm ---
   5148 F6 C8 83      [ 5] 2695 	ldb	_levelNumber	;  levelNumber.37, levelNumber
   514B 5C            [ 2] 2696 	incb	;  levelNumber.37
   514C F7 C8 83      [ 5] 2697 	stb	_levelNumber	;  levelNumber.37, levelNumber
                           2698 ;----- asm -----
                           2699 ;  510 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2700 	; #ENR#[403]        if (levelNumber >= levelCount) {
                           2701 ;  0 "" 2
                           2702 ;--- end asm ---
   514F F1 3C C8      [ 5] 2703 	cmpb	_levelCount	;cmpqi:	;  levelNumber.37, levelCount
   5152 25 09         [ 3] 2704 	blo	L118	; 
                           2705 ;----- asm -----
                           2706 ;  512 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2707 	; #ENR#[404]            levelNumber = 0;
                           2708 ;  0 "" 2
                           2709 ;--- end asm ---
   5154 7F C8 83      [ 7] 2710 	clr	_levelNumber	;  levelNumber
                           2711 ;----- asm -----
                           2712 ;  514 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2713 	; #ENR#[405]            setBank(nextBank);
                           2714 ;  0 "" 2
                           2715 ;--- end asm ---
   5157 F6 3C CA      [ 5] 2716 	ldb	_nextBank	; , nextBank
   515A BD 50 AD      [ 8] 2717 	jsr	_setBank	; 
   515D                    2718 L118:
                           2719 ;----- asm -----
                           2720 ;  517 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2721 	; #ENR#[407]        startLevel();
                           2722 ;  0 "" 2
                           2723 ;--- end asm ---
   515D BD 4C 6D      [ 8] 2724 	jsr	_startLevel	; 
   5160                    2725 L117:
                           2726 ;----- asm -----
                           2727 ;  520 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2728 	; #ENR#[409]    if ((Vec_Buttons & 4) && !arcadeMode) {
                           2729 ;  0 "" 2
                           2730 ;--- end asm ---
   5160 F6 C8 11      [ 5] 2731 	ldb	_Vec_Buttons	; , Vec_Buttons
   5163 C5 04         [ 2] 2732 	bitb	#4	; ,
   5165 27 20         [ 3] 2733 	beq	L119	; 
   5167 7D CB 02      [ 7] 2734 	tst	_arcadeMode	;  arcadeMode
   516A 26 1B         [ 3] 2735 	bne	L119	; 
                           2736 ;----- asm -----
                           2737 ;  522 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2738 	; #ENR#[410]        if (levelNumber > 0) {
                           2739 ;  0 "" 2
                           2740 ;--- end asm ---
   516C F6 C8 83      [ 5] 2741 	ldb	_levelNumber	;  levelNumber.315, levelNumber
   516F 27 06         [ 3] 2742 	beq	L120	; 
                           2743 ;----- asm -----
                           2744 ;  524 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2745 	; #ENR#[411]            levelNumber--;
                           2746 ;  0 "" 2
                           2747 ;--- end asm ---
   5171 5A            [ 2] 2748 	decb	;  levelNumber.315
   5172 F7 C8 83      [ 5] 2749 	stb	_levelNumber	;  levelNumber.315, levelNumber
   5175 20 0D         [ 3] 2750 	bra	L121	; 
   5177                    2751 L120:
                           2752 ;----- asm -----
                           2753 ;  527 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2754 	; #ENR#[413]            levelNumber = levelCount - 1;
                           2755 ;  0 "" 2
                           2756 ;--- end asm ---
   5177 F6 3C C8      [ 5] 2757 	ldb	_levelCount	; , levelCount
   517A 5A            [ 2] 2758 	decb	; 
   517B F7 C8 83      [ 5] 2759 	stb	_levelNumber	; , levelNumber
                           2760 ;----- asm -----
                           2761 ;  529 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2762 	; #ENR#[414]            setBank(nextBank);
                           2763 ;  0 "" 2
                           2764 ;--- end asm ---
   517E F6 3C CA      [ 5] 2765 	ldb	_nextBank	; , nextBank
   5181 BD 50 AD      [ 8] 2766 	jsr	_setBank	; 
   5184                    2767 L121:
                           2768 ;----- asm -----
                           2769 ;  532 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2770 	; #ENR#[416]        startLevel();
                           2771 ;  0 "" 2
                           2772 ;--- end asm ---
   5184 BD 4C 6D      [ 8] 2773 	jsr	_startLevel	; 
   5187                    2774 L119:
                           2775 ;----- asm -----
                           2776 ;  535 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2777 	; #ENR#[418]    if (Vec_Buttons & 8) {
                           2778 ;  0 "" 2
                           2779 ;--- end asm ---
   5187 F6 C8 11      [ 5] 2780 	ldb	_Vec_Buttons	; , Vec_Buttons
   518A C5 08         [ 2] 2781 	bitb	#8	; ,
   518C 27 03         [ 3] 2782 	beq	L123	; 
                           2783 ;----- asm -----
                           2784 ;  537 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2785 	; #ENR#[419]        gameState = MainMenu;
                           2786 ;  0 "" 2
                           2787 ;--- end asm ---
   518E 7F CB 05      [ 7] 2788 	clr	_gameState	;  gameState
   5191                    2789 L123:
   5191 39            [ 5] 2790 	rts
                           2791 	.globl _main
   5192                    2792 _main:
   5192 34 60         [ 7] 2793 	pshs	y,u	; 
   5194 32 7C         [ 5] 2794 	leas	-4,s	; ,,
                           2795 ;----- asm -----
                           2796 ;  986 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2797 	; #ENR#[699]    setBank(0);
                           2798 ;  0 "" 2
                           2799 ;--- end asm ---
   5196 5F            [ 2] 2800 	clrb	; 
   5197 BD 50 AD      [ 8] 2801 	jsr	_setBank	; 
                           2802 ;----- asm -----
                           2803 ;  990 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2804 	; #ENR#[702]    *vecx = 4;
                           2805 ;  0 "" 2
                           2806 ;--- end asm ---
   519A C6 04         [ 2] 2807 	ldb	#4	; ,
   519C E7 9F C8 88   [ 9] 2808 	stb	[_vecx]	; ,* vecx
                           2809 ;----- asm -----
                           2810 ;  994 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2811 	; #ENR#[705]    picAvailable = 0;
                           2812 ;  0 "" 2
                           2813 ;--- end asm ---
   51A0 7F CB 01      [ 7] 2814 	clr	_picAvailable	;  picAvailable
                           2815 ;----- asm -----
                           2816 ;  996 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2817 	; #ENR#[706]    sendCommand(CMD_VERSION, 0);
                           2818 ;  0 "" 2
                           2819 ;--- end asm ---
   51A3 6F E2         [ 8] 2820 	clr	,-s	; 
   51A5 C6 01         [ 2] 2821 	ldb	#1	; ,
   51A7 BD 4C 3A      [ 8] 2822 	jsr	_sendCommand	; 
                           2823 ;----- asm -----
                           2824 ;  998 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2825 	; #ENR#[707]    sendCommand(CMD_VERSION, 0);
                           2826 ;  0 "" 2
                           2827 ;--- end asm ---
   51AA 6F E2         [ 8] 2828 	clr	,-s	; 
   51AC C6 01         [ 2] 2829 	ldb	#1	; ,
   51AE BD 4C 3A      [ 8] 2830 	jsr	_sendCommand	; 
                           2831 ;----- asm -----
                           2832 ;  1000 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2833 	; #ENR#[708]    if (sendCommand(CMD_VERSION, 0) == 4) {
                           2834 ;  0 "" 2
                           2835 ;--- end asm ---
   51B1 6F E2         [ 8] 2836 	clr	,-s	; 
   51B3 C6 01         [ 2] 2837 	ldb	#1	; ,
   51B5 BD 4C 3A      [ 8] 2838 	jsr	_sendCommand	; 
   51B8 32 63         [ 5] 2839 	leas	3,s	; ,,
   51BA C1 04         [ 2] 2840 	cmpb	#4	;cmpqi:	;  D.2493,
   51BC 26 05         [ 3] 2841 	bne	L125	; 
                           2842 ;----- asm -----
                           2843 ;  1002 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2844 	; #ENR#[709]        picAvailable = 1;
                           2845 ;  0 "" 2
                           2846 ;--- end asm ---
   51BE C6 01         [ 2] 2847 	ldb	#1	; ,
   51C0 F7 CB 01      [ 5] 2848 	stb	_picAvailable	; , picAvailable
   51C3                    2849 L125:
                           2850 ;----- asm -----
                           2851 ;  1007 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2852 	; #ENR#[713]    epot0 = 1;
                           2853 ;  0 "" 2
                           2854 ;--- end asm ---
   51C3 C6 01         [ 2] 2855 	ldb	#1	; ,
   51C5 F7 C8 1F      [ 5] 2856 	stb	-14305	; ,
                           2857 ;----- asm -----
                           2858 ;  1009 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2859 	; #ENR#[714]    epot1 = 3;
                           2860 ;  0 "" 2
                           2861 ;--- end asm ---
   51C8 C6 03         [ 2] 2862 	ldb	#3	; ,
   51CA F7 C8 20      [ 5] 2863 	stb	-14304	; ,
                           2864 ;----- asm -----
                           2865 ;  1011 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2866 	; #ENR#[715]    epot2 = 0;
                           2867 ;  0 "" 2
                           2868 ;--- end asm ---
   51CD 7F C8 21      [ 7] 2869 	clr	-14303	; 
                           2870 ;----- asm -----
                           2871 ;  1013 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2872 	; #ENR#[716]    epot3 = 0;
                           2873 ;  0 "" 2
                           2874 ;--- end asm ---
   51D0 7F C8 22      [ 7] 2875 	clr	-14302	; 
                           2876 ;----- asm -----
                           2877 ;  1016 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2878 	; #ENR#[718]    gameState = MainMenu;
                           2879 ;  0 "" 2
                           2880 ;--- end asm ---
   51D3 7F CB 05      [ 7] 2881 	clr	_gameState	;  gameState
                           2882 ;----- asm -----
                           2883 ;  1018 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2884 	; #ENR#[719]    musicInit();
                           2885 ;  0 "" 2
                           2886 ;--- end asm ---
   51D6 BD 30 4F      [ 8] 2887 	jsr	_musicInit	; 
                           2888 ;----- asm -----
                           2889 ;  1021 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2890 	; #ENR#[721]    while (1) {
                           2891 ;  0 "" 2
                           2892 ;--- end asm ---
   51D9                    2893 L140:
                           2894 ;----- asm -----
                           2895 ;  1024 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2896 	; #ENR#[723]        frwait();
                           2897 ;  0 "" 2
                           2898 ;  97 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   51D9 BD F1 92      [ 8] 2899 	jsr ___Wait_Recal; BIOS call
                           2900 ;  0 "" 2
                           2901 ;  1027 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2902 	; #ENR#[725]        switch (gameState) {
                           2903 ;  0 "" 2
                           2904 ;--- end asm ---
   51DC F6 CB 05      [ 5] 2905 	ldb	_gameState	; , gameState
   51DF C1 08         [ 2] 2906 	cmpb	#8	;cmpqi:	; ,
   51E1 10 22 00 69   [ 6] 2907 	lbhi	L126	; 
   51E5 4F            [ 2] 2908 	clra		;zero_extendqihi: R:b -> R:d	; ,
   51E6 ED E4         [ 5] 2909 	std	,s	; ,
   51E8 58            [ 2] 2910 	aslb	; 
   51E9 49            [ 2] 2911 	rola	; 
   51EA 1F 01         [ 6] 2912 	tfr	d,x	; , tmp38
   51EC 6E 99 51 F0   [10] 2913 	jmp	[L136,x]	; , tmp38
   51F0                    2914 L136:
   51F0 52 02              2915 	.word L127
   51F2 52 14              2916 	.word L128
   51F4 52 1D              2917 	.word L129
   51F6 52 0B              2918 	.word L130
   51F8 52 26              2919 	.word L131
   51FA 52 2F              2920 	.word L132
   51FC 52 38              2921 	.word L133
   51FE 52 40              2922 	.word L134
   5200 52 48              2923 	.word L135
   5202                    2924 L127:
                           2925 ;----- asm -----
                           2926 ;  1031 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2927 	; #ENR#[727]            mainMenu();
                           2928 ;  0 "" 2
                           2929 ;--- end asm ---
   5202 BD 4E 45      [ 8] 2930 	jsr	_mainMenu	; 
                           2931 ;----- asm -----
                           2932 ;  1033 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2933 	; #ENR#[728]            musicPlay();
                           2934 ;  0 "" 2
                           2935 ;--- end asm ---
   5205 BD 30 59      [ 8] 2936 	jsr	_musicPlay	; 
                           2937 ;----- asm -----
                           2938 ;  1035 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2939 	; #ENR#[729]            break;
                           2940 ;  0 "" 2
                           2941 ;--- end asm ---
   5208 7E 52 4E      [ 4] 2942 	jmp	L126	; 
   520B                    2943 L130:
                           2944 ;----- asm -----
                           2945 ;  1039 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2946 	; #ENR#[731]            clearMenu();
                           2947 ;  0 "" 2
                           2948 ;--- end asm ---
   520B BD 4F 49      [ 8] 2949 	jsr	_clearMenu	; 
                           2950 ;----- asm -----
                           2951 ;  1041 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2952 	; #ENR#[732]            musicPlay();
                           2953 ;  0 "" 2
                           2954 ;--- end asm ---
   520E BD 30 59      [ 8] 2955 	jsr	_musicPlay	; 
                           2956 ;----- asm -----
                           2957 ;  1043 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2958 	; #ENR#[733]            break;
                           2959 ;  0 "" 2
                           2960 ;--- end asm ---
   5211 7E 52 4E      [ 4] 2961 	jmp	L126	; 
   5214                    2962 L128:
                           2963 ;----- asm -----
                           2964 ;  1047 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2965 	; #ENR#[735]            arcadeMenu();
                           2966 ;  0 "" 2
                           2967 ;--- end asm ---
   5214 BD 4D 48      [ 8] 2968 	jsr	_arcadeMenu	; 
                           2969 ;----- asm -----
                           2970 ;  1049 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2971 	; #ENR#[736]            musicPlay();
                           2972 ;  0 "" 2
                           2973 ;--- end asm ---
   5217 BD 30 59      [ 8] 2974 	jsr	_musicPlay	; 
                           2975 ;----- asm -----
                           2976 ;  1051 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2977 	; #ENR#[737]            break;
                           2978 ;  0 "" 2
                           2979 ;--- end asm ---
   521A 7E 52 4E      [ 4] 2980 	jmp	L126	; 
   521D                    2981 L129:
                           2982 ;----- asm -----
                           2983 ;  1055 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2984 	; #ENR#[739]            arcadeEnd();
                           2985 ;  0 "" 2
                           2986 ;--- end asm ---
   521D BD 48 97      [ 8] 2987 	jsr	_arcadeEnd	; 
                           2988 ;----- asm -----
                           2989 ;  1057 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2990 	; #ENR#[740]            musicPlay();
                           2991 ;  0 "" 2
                           2992 ;--- end asm ---
   5220 BD 30 59      [ 8] 2993 	jsr	_musicPlay	; 
                           2994 ;----- asm -----
                           2995 ;  1059 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           2996 	; #ENR#[741]            break;
                           2997 ;  0 "" 2
                           2998 ;--- end asm ---
   5223 7E 52 4E      [ 4] 2999 	jmp	L126	; 
   5226                    3000 L131:
                           3001 ;----- asm -----
                           3002 ;  1063 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3003 	; #ENR#[743]            showInfo();
                           3004 ;  0 "" 2
                           3005 ;--- end asm ---
   5226 BD 49 E6      [ 8] 3006 	jsr	_showInfo	; 
                           3007 ;----- asm -----
                           3008 ;  1065 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3009 	; #ENR#[744]            blockMovingToStart();
                           3010 ;  0 "" 2
                           3011 ;--- end asm ---
   5229 BD 4A 10      [ 8] 3012 	jsr	_blockMovingToStart	; 
                           3013 ;----- asm -----
                           3014 ;  1067 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3015 	; #ENR#[745]            break;
                           3016 ;  0 "" 2
                           3017 ;--- end asm ---
   522C 7E 52 4E      [ 4] 3018 	jmp	L126	; 
   522F                    3019 L132:
                           3020 ;----- asm -----
                           3021 ;  1071 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3022 	; #ENR#[747]            showInfo();
                           3023 ;  0 "" 2
                           3024 ;--- end asm ---
   522F BD 49 E6      [ 8] 3025 	jsr	_showInfo	; 
                           3026 ;----- asm -----
                           3027 ;  1073 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3028 	; #ENR#[748]            blockWaiting();
                           3029 ;  0 "" 2
                           3030 ;--- end asm ---
   5232 BD 50 C3      [ 8] 3031 	jsr	_blockWaiting	; 
                           3032 ;----- asm -----
                           3033 ;  1075 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3034 	; #ENR#[749]            break;
                           3035 ;  0 "" 2
                           3036 ;--- end asm ---
   5235 7E 52 4E      [ 4] 3037 	jmp	L126	; 
   5238                    3038 L133:
                           3039 ;----- asm -----
                           3040 ;  1079 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3041 	; #ENR#[751]            showInfo();
                           3042 ;  0 "" 2
                           3043 ;--- end asm ---
   5238 BD 49 E6      [ 8] 3044 	jsr	_showInfo	; 
                           3045 ;----- asm -----
                           3046 ;  1081 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3047 	; #ENR#[752]            blockMoving();
                           3048 ;  0 "" 2
                           3049 ;--- end asm ---
   523B BD 4A 9A      [ 8] 3050 	jsr	_blockMoving	; 
                           3051 ;----- asm -----
                           3052 ;  1083 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3053 	; #ENR#[753]            break;
                           3054 ;  0 "" 2
                           3055 ;--- end asm ---
   523E 20 0E         [ 3] 3056 	bra	L126	; 
   5240                    3057 L134:
                           3058 ;----- asm -----
                           3059 ;  1087 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3060 	; #ENR#[755]            showInfo();
                           3061 ;  0 "" 2
                           3062 ;--- end asm ---
   5240 BD 49 E6      [ 8] 3063 	jsr	_showInfo	; 
                           3064 ;----- asm -----
                           3065 ;  1089 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3066 	; #ENR#[756]            blockFalling();
                           3067 ;  0 "" 2
                           3068 ;--- end asm ---
   5243 BD 4E ED      [ 8] 3069 	jsr	_blockFalling	; 
                           3070 ;----- asm -----
                           3071 ;  1091 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3072 	; #ENR#[757]            break;
                           3073 ;  0 "" 2
                           3074 ;--- end asm ---
   5246 20 06         [ 3] 3075 	bra	L126	; 
   5248                    3076 L135:
                           3077 ;----- asm -----
                           3078 ;  1095 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3079 	; #ENR#[759]            showInfo();
                           3080 ;  0 "" 2
                           3081 ;--- end asm ---
   5248 BD 49 E6      [ 8] 3082 	jsr	_showInfo	; 
                           3083 ;----- asm -----
                           3084 ;  1097 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3085 	; #ENR#[760]            blockMovingAtEnd();
                           3086 ;  0 "" 2
                           3087 ;--- end asm ---
   524B BD 4F CD      [ 8] 3088 	jsr	_blockMovingAtEnd	; 
                           3089 ;----- asm -----
                           3090 ;  1099 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3091 	; #ENR#[761]            break;
                           3092 ;  0 "" 2
                           3093 ;--- end asm ---
   524E                    3094 L126:
                           3095 ;----- asm -----
                           3096 ;  1104 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3097 	; #ENR#[765]        if (gameState > ClearMenu) {
                           3098 ;  0 "" 2
                           3099 ;--- end asm ---
   524E F6 CB 05      [ 5] 3100 	ldb	_gameState	; , gameState
   5251 C1 03         [ 2] 3101 	cmpb	#3	;cmpqi:	; ,
   5253 23 13         [ 3] 3102 	bls	L137	; 
                           3103 ;----- asm -----
                           3104 ;  1106 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3105 	; #ENR#[766]            DP_to_C8();
                           3106 ;  0 "" 2
                           3107 ;  316 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5255 BD F1 AF      [ 8] 3108 	jsr ___DP_to_C8; BIOS call
                           3109 ;  0 "" 2
                           3110 ;  1108 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3111 	; #ENR#[767]            replay(currentMusic);
                           3112 ;  0 "" 2
                           3113 ;--- end asm ---
   5258 BE C8 86      [ 6] 3114 	ldx	_currentMusic	; , currentMusic
   525B AF 62         [ 6] 3115 	stx	2,s	; , u
                           3116 ;----- asm -----
                           3117 ;  2917 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   525D EE 62         [ 6] 3118 	ldu 2,s	;  u
   525F BD F6 87      [ 8] 3119 	jsr ___Init_Music_chk; BIOS call
                           3120 ;  0 "" 2
                           3121 ;  1110 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3122 	; #ENR#[768]            DP_to_D0();
                           3123 ;  0 "" 2
                           3124 ;  300 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5262 BD F1 AA      [ 8] 3125 	jsr ___DP_to_D0; BIOS call
                           3126 ;  0 "" 2
                           3127 ;  1112 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3128 	; #ENR#[769]            reqout();
                           3129 ;  0 "" 2
                           3130 ;  2880 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   5265 BD F2 89      [ 8] 3131 	jsr ___Do_Sound; BIOS call
                           3132 ;  0 "" 2
                           3133 ;--- end asm ---
   5268                    3134 L137:
                           3135 ;----- asm -----
                           3136 ;  1117 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3137 	; #ENR#[773]        if (arcadeMode) {
                           3138 ;  0 "" 2
                           3139 ;--- end asm ---
   5268 7D CB 02      [ 7] 3140 	tst	_arcadeMode	;  arcadeMode
   526B 10 27 FF 6A   [ 6] 3141 	lbeq	L140	; 
                           3142 ;----- asm -----
                           3143 ;  1119 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3144 	; #ENR#[774]            frames++;
                           3145 ;  0 "" 2
                           3146 ;--- end asm ---
   526F FC CA FD      [ 6] 3147 	ldd	_frames	;  frames.83, frames
   5272 C3 00 01      [ 4] 3148 	addd	#1	;  frames.83,
   5275 FD CA FD      [ 6] 3149 	std	_frames	;  frames.83, frames
                           3150 ;----- asm -----
                           3151 ;  1121 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3152 	; #ENR#[775]            if (frames == 50) {
                           3153 ;  0 "" 2
                           3154 ;--- end asm ---
   5278 10 83 00 32   [ 5] 3155 	cmpd	#50	;cmphi:	;  frames.83,
   527C 10 26 FF 59   [ 6] 3156 	lbne	L140	; 
                           3157 ;----- asm -----
                           3158 ;  1123 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3159 	; #ENR#[776]                frames = 0;
                           3160 ;  0 "" 2
                           3161 ;--- end asm ---
   5280 CC 00 00      [ 3] 3162 	ldd	#0	; ,
   5283 FD CA FD      [ 6] 3163 	std	_frames	; , frames
                           3164 ;----- asm -----
                           3165 ;  1125 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3166 	; #ENR#[777]                if (moveCount < 999) {
                           3167 ;  0 "" 2
                           3168 ;--- end asm ---
   5286 BE CA FB      [ 6] 3169 	ldx	_moveCount	;  moveCount.84, moveCount
   5289 8C 03 E6      [ 4] 3170 	cmpx	#998	;cmphi:	;  moveCount.84,
   528C 10 22 FF 49   [ 6] 3171 	lbhi	L140	; 
                           3172 ;----- asm -----
                           3173 ;  1127 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3174 	; #ENR#[778]                    moveCount++;
                           3175 ;  0 "" 2
                           3176 ;--- end asm ---
   5290 30 01         [ 5] 3177 	leax	1,x	; ,, moveCount.84
   5292 BF CA FB      [ 6] 3178 	stx	_moveCount	; , moveCount
                           3179 ;----- asm -----
                           3180 ;  1129 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/bloxorz.enr.c" 1
                           3181 	; #ENR#[779]                    updateInfoText();
                           3182 ;  0 "" 2
                           3183 ;--- end asm ---
   5295 BD 4A 29      [ 8] 3184 	jsr	_updateInfoText	; 
   5298 7E 51 D9      [ 4] 3185 	jmp	L140	; 
                           3186 	.globl _startMusic
   529B                    3187 _startMusic:
   529B FE                 3188 	.byte	-2
   529C E8                 3189 	.byte	-24
   529D FE                 3190 	.byte	-2
   529E B6                 3191 	.byte	-74
   529F 01                 3192 	.byte	1
   52A0 01                 3193 	.byte	1
   52A1 02                 3194 	.byte	2
   52A2 01                 3195 	.byte	1
   52A3 03                 3196 	.byte	3
   52A4 01                 3197 	.byte	1
   52A5 04                 3198 	.byte	4
   52A6 01                 3199 	.byte	1
   52A7 05                 3200 	.byte	5
   52A8 01                 3201 	.byte	1
   52A9 06                 3202 	.byte	6
   52AA 01                 3203 	.byte	1
   52AB 07                 3204 	.byte	7
   52AC 01                 3205 	.byte	1
   52AD 08                 3206 	.byte	8
   52AE 01                 3207 	.byte	1
   52AF 09                 3208 	.byte	9
   52B0 01                 3209 	.byte	1
   52B1 0A                 3210 	.byte	10
   52B2 01                 3211 	.byte	1
   52B3 0B                 3212 	.byte	11
   52B4 01                 3213 	.byte	1
   52B5 0C                 3214 	.byte	12
   52B6 01                 3215 	.byte	1
   52B7 0D                 3216 	.byte	13
   52B8 01                 3217 	.byte	1
   52B9 00                 3218 	.byte	0
   52BA 80                 3219 	.byte	-128
                           3220 	.globl _levelEndMusic
   52BB                    3221 _levelEndMusic:
   52BB FE                 3222 	.byte	-2
   52BC E8                 3223 	.byte	-24
   52BD FE                 3224 	.byte	-2
   52BE B6                 3225 	.byte	-74
   52BF 0D                 3226 	.byte	13
   52C0 01                 3227 	.byte	1
   52C1 0E                 3228 	.byte	14
   52C2 01                 3229 	.byte	1
   52C3 0F                 3230 	.byte	15
   52C4 01                 3231 	.byte	1
   52C5 10                 3232 	.byte	16
   52C6 01                 3233 	.byte	1
   52C7 11                 3234 	.byte	17
   52C8 01                 3235 	.byte	1
   52C9 12                 3236 	.byte	18
   52CA 01                 3237 	.byte	1
   52CB 13                 3238 	.byte	19
   52CC 01                 3239 	.byte	1
   52CD 14                 3240 	.byte	20
   52CE 01                 3241 	.byte	1
   52CF 15                 3242 	.byte	21
   52D0 01                 3243 	.byte	1
   52D1 16                 3244 	.byte	22
   52D2 01                 3245 	.byte	1
   52D3 00                 3246 	.byte	0
   52D4 80                 3247 	.byte	-128
                           3248 	.globl _fallingMusic
   52D5                    3249 _fallingMusic:
   52D5 FE                 3250 	.byte	-2
   52D6 E8                 3251 	.byte	-24
   52D7 FE                 3252 	.byte	-2
   52D8 B6                 3253 	.byte	-74
   52D9 0D                 3254 	.byte	13
   52DA 02                 3255 	.byte	2
   52DB 0C                 3256 	.byte	12
   52DC 02                 3257 	.byte	2
   52DD 0B                 3258 	.byte	11
   52DE 02                 3259 	.byte	2
   52DF 0A                 3260 	.byte	10
   52E0 02                 3261 	.byte	2
   52E1 09                 3262 	.byte	9
   52E2 02                 3263 	.byte	2
   52E3 08                 3264 	.byte	8
   52E4 02                 3265 	.byte	2
   52E5 07                 3266 	.byte	7
   52E6 02                 3267 	.byte	2
   52E7 06                 3268 	.byte	6
   52E8 02                 3269 	.byte	2
   52E9 05                 3270 	.byte	5
   52EA 02                 3271 	.byte	2
   52EB 04                 3272 	.byte	4
   52EC 02                 3273 	.byte	2
   52ED 03                 3274 	.byte	3
   52EE 02                 3275 	.byte	2
   52EF 02                 3276 	.byte	2
   52F0 02                 3277 	.byte	2
   52F1 01                 3278 	.byte	1
   52F2 02                 3279 	.byte	2
   52F3 00                 3280 	.byte	0
   52F4 80                 3281 	.byte	-128
                           3282 	.globl _movingMusic
   52F5                    3283 _movingMusic:
   52F5 FD                 3284 	.byte	-3
   52F6 C3                 3285 	.byte	-61
   52F7 FE                 3286 	.byte	-2
   52F8 B6                 3287 	.byte	-74
   52F9 01                 3288 	.byte	1
   52FA 05                 3289 	.byte	5
   52FB 00                 3290 	.byte	0
   52FC 80                 3291 	.byte	-128
                           3292 	.globl _currentMusic
                           3293 	.area .data
   C886                    3294 _currentMusic:
   C886 52 9B              3295 	.word	_startMusic
                           3296 	.globl _vecx
   C888                    3297 _vecx:
   C888 80 00              3298 	.word	-32768
                           3299 	.globl _led8
                           3300 	.area .text
   52FD                    3301 _led8:
   52FD FF                 3302 	.byte	-1
   52FE 00                 3303 	.byte	0
   52FF 05                 3304 	.byte	5
   5300 FF                 3305 	.byte	-1
   5301 FB                 3306 	.byte	-5
   5302 00                 3307 	.byte	0
   5303 FF                 3308 	.byte	-1
   5304 00                 3309 	.byte	0
   5305 FB                 3310 	.byte	-5
   5306 FF                 3311 	.byte	-1
   5307 05                 3312 	.byte	5
   5308 00                 3313 	.byte	0
   5309 FF                 3314 	.byte	-1
   530A 05                 3315 	.byte	5
   530B 00                 3316 	.byte	0
   530C FF                 3317 	.byte	-1
   530D 00                 3318 	.byte	0
   530E 05                 3319 	.byte	5
   530F FF                 3320 	.byte	-1
   5310 FB                 3321 	.byte	-5
   5311 00                 3322 	.byte	0
   5312 01                 3323 	.byte	1
   5313                    3324 _arcadeLevels:
   5313 01                 3325 	.byte	1
   5314 02                 3326 	.byte	2
   5315 00                 3327 	.byte	0
   5316 00 00              3328 	.word	0	;skip space 2
   5318 04                 3329 	.byte	4
   5319 05                 3330 	.byte	5
   531A 06                 3331 	.byte	6
   531B 00                 3332 	.byte	0
   531C 00                 3333 	.byte	0	;skip space
   531D 07                 3334 	.byte	7
   531E 08                 3335 	.byte	8
   531F 09                 3336 	.byte	9
   5320 00                 3337 	.byte	0
   5321 00                 3338 	.byte	0	;skip space
   5322 0A                 3339 	.byte	10
   5323 0B                 3340 	.byte	11
   5324 0C                 3341 	.byte	12
   5325 00                 3342 	.byte	0
   5326 00                 3343 	.byte	0	;skip space
                           3344 	.area .bss
   CAE6                    3345 _si:	.blkb	1
                           3346 	.globl	_infoText
   CAE7                    3347 _infoText:	.blkb	20
                           3348 	.globl	_moveCount
   CAFB                    3349 _moveCount:	.blkb	2
                           3350 	.globl	_frames
   CAFD                    3351 _frames:	.blkb	2
                           3352 	.globl	_levelHighscore
   CAFF                    3353 _levelHighscore:	.blkb	2
                           3354 	.globl	_picAvailable
   CB01                    3355 _picAvailable:	.blkb	1
                           3356 	.globl	_arcadeMode
   CB02                    3357 _arcadeMode:	.blkb	1
                           3358 	.globl	_arcadeSelection
   CB03                    3359 _arcadeSelection:	.blkb	1
                           3360 	.globl	_arcadeIndex
   CB04                    3361 _arcadeIndex:	.blkb	1
                           3362 	.globl	_gameState
   CB05                    3363 _gameState:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$bloxorz$100      003F GR  |   2 A$bloxorz$1001     039E GR
  2 A$bloxorz$1002     03A1 GR  |   2 A$bloxorz$1003     03A3 GR
  2 A$bloxorz$1004     03A5 GR  |   2 A$bloxorz$1005     03A7 GR
  2 A$bloxorz$1006     03A9 GR  |   2 A$bloxorz$1007     03AD GR
  2 A$bloxorz$1014     03AF GR  |   2 A$bloxorz$1015     03B1 GR
  2 A$bloxorz$1016     03B3 GR  |   2 A$bloxorz$1017     03B5 GR
  2 A$bloxorz$1018     03B7 GR  |   2 A$bloxorz$1025     03B9 GR
  2 A$bloxorz$1032     03BC GR  |   2 A$bloxorz$1039     03BE GR
  2 A$bloxorz$1040     03C0 GR  |   2 A$bloxorz$1041     03C2 GR
  2 A$bloxorz$1042     03C4 GR  |   2 A$bloxorz$1049     03C6 GR
  2 A$bloxorz$1056     03C9 GR  |   2 A$bloxorz$106      0041 GR
  2 A$bloxorz$1063     03CB GR  |   2 A$bloxorz$1064     03CD GR
  2 A$bloxorz$1065     03CF GR  |   2 A$bloxorz$1066     03D1 GR
  2 A$bloxorz$107      0043 GR  |   2 A$bloxorz$1073     03D3 GR
  2 A$bloxorz$108      0046 GR  |   2 A$bloxorz$1086     03D6 GR
  2 A$bloxorz$1087     03D9 GR  |   2 A$bloxorz$1088     03DB GR
  2 A$bloxorz$1089     03DE GR  |   2 A$bloxorz$109      0048 GR
  2 A$bloxorz$1090     03E1 GR  |   2 A$bloxorz$1091     03E3 GR
  2 A$bloxorz$1092     03E6 GR  |   2 A$bloxorz$1093     03E9 GR
  2 A$bloxorz$1094     03EB GR  |   2 A$bloxorz$1095     03EE GR
  2 A$bloxorz$1101     03F0 GR  |   2 A$bloxorz$1107     03F3 GR
  2 A$bloxorz$1108     03F5 GR  |   2 A$bloxorz$1114     03F8 GR
  2 A$bloxorz$1115     03FB GR  |   2 A$bloxorz$1121     03FE GR
  2 A$bloxorz$1122     0400 GR  |   2 A$bloxorz$1123     0404 GR
  2 A$bloxorz$1130     0406 GR  |   2 A$bloxorz$1131     0409 GR
  2 A$bloxorz$1132     040B GR  |   2 A$bloxorz$1138     040D GR
  2 A$bloxorz$1139     040F GR  |   2 A$bloxorz$1146     0412 GR
  2 A$bloxorz$1147     0415 GR  |   2 A$bloxorz$1153     0417 GR
  2 A$bloxorz$1154     0419 GR  |   2 A$bloxorz$1155     041B GR
  2 A$bloxorz$116      004C GR  |   2 A$bloxorz$1161     041F GR
  2 A$bloxorz$1162     0422 GR  |   2 A$bloxorz$1163     0424 GR
  2 A$bloxorz$1164     0427 GR  |   2 A$bloxorz$1165     042A GR
  2 A$bloxorz$1166     042C GR  |   2 A$bloxorz$117      004E GR
  2 A$bloxorz$1173     042F GR  |   2 A$bloxorz$1174     0432 GR
  2 A$bloxorz$1175     0434 GR  |   2 A$bloxorz$1176     0436 GR
  2 A$bloxorz$1177     0438 GR  |   2 A$bloxorz$1178     043A GR
  2 A$bloxorz$1179     043E GR  |   2 A$bloxorz$118      0050 GR
  2 A$bloxorz$1186     0441 GR  |   2 A$bloxorz$1187     0443 GR
  2 A$bloxorz$1188     0445 GR  |   2 A$bloxorz$1189     0447 GR
  2 A$bloxorz$119      0053 GR  |   2 A$bloxorz$1190     0449 GR
  2 A$bloxorz$1191     044B GR  |   2 A$bloxorz$1192     044D GR
  2 A$bloxorz$1199     044F GR  |   2 A$bloxorz$1200     0452 GR
  2 A$bloxorz$1201     0454 GR  |   2 A$bloxorz$1202     0457 GR
  2 A$bloxorz$1203     045A GR  |   2 A$bloxorz$1210     045C GR
  2 A$bloxorz$1217     045F GR  |   2 A$bloxorz$1218     0461 GR
  2 A$bloxorz$1219     0463 GR  |   2 A$bloxorz$1225     0465 GR
  2 A$bloxorz$1226     0468 GR  |   2 A$bloxorz$1227     046A GR
  2 A$bloxorz$1228     046D GR  |   2 A$bloxorz$1229     0470 GR
  2 A$bloxorz$1236     0472 GR  |   2 A$bloxorz$1237     0474 GR
  2 A$bloxorz$1238     0476 GR  |   2 A$bloxorz$1244     0478 GR
  2 A$bloxorz$1245     047B GR  |   2 A$bloxorz$1246     047C GR
  2 A$bloxorz$1247     047E GR  |   2 A$bloxorz$1248     0481 GR
  2 A$bloxorz$1249     0484 GR  |   2 A$bloxorz$1256     0486 GR
  2 A$bloxorz$1263     0488 GR  |   2 A$bloxorz$1264     048A GR
  2 A$bloxorz$1265     048C GR  |   2 A$bloxorz$1271     048E GR
  2 A$bloxorz$1272     0491 GR  |   2 A$bloxorz$1273     0493 GR
  2 A$bloxorz$1274     0496 GR  |   2 A$bloxorz$1275     0499 GR
  2 A$bloxorz$1282     049B GR  |   2 A$bloxorz$1283     049D GR
  2 A$bloxorz$1284     049F GR  |   2 A$bloxorz$129      0055 GR
  2 A$bloxorz$1290     04A1 GR  |   2 A$bloxorz$1291     04A4 GR
  2 A$bloxorz$1292     04A5 GR  |   2 A$bloxorz$1293     04A7 GR
  2 A$bloxorz$1294     04AA GR  |   2 A$bloxorz$1295     04AC GR
  2 A$bloxorz$1296     04AE GR  |   2 A$bloxorz$1297     04B1 GR
  2 A$bloxorz$130      0057 GR  |   2 A$bloxorz$1305     04B3 GR
  2 A$bloxorz$1306     04B5 GR  |   2 A$bloxorz$1309     04B6 GR
  2 A$bloxorz$131      0059 GR  |   2 A$bloxorz$1310     04B8 GR
  2 A$bloxorz$1319     04BA GR  |   2 A$bloxorz$132      005B GR
  2 A$bloxorz$1320     04BC GR  |   2 A$bloxorz$1326     04BF GR
  2 A$bloxorz$1327     04C1 GR  |   2 A$bloxorz$133      005D GR
  2 A$bloxorz$1333     04C4 GR  |   2 A$bloxorz$1334     04C6 GR
  2 A$bloxorz$134      005F GR  |   2 A$bloxorz$1340     04C9 GR
  2 A$bloxorz$1341     04CC GR  |   2 A$bloxorz$1347     04CE GR
  2 A$bloxorz$135      0061 GR  |   2 A$bloxorz$1353     04D1 GR
  2 A$bloxorz$1354     04D3 GR  |   2 A$bloxorz$1355     04D5 GR
  2 A$bloxorz$136      0063 GR  |   2 A$bloxorz$1363     04D6 GR
  2 A$bloxorz$1364     04D9 GR  |   2 A$bloxorz$137      0064 GR
  2 A$bloxorz$1370     04DB GR  |   2 A$bloxorz$1371     04DD GR
  2 A$bloxorz$1372     04DF GR  |   2 A$bloxorz$1373     04E2 GR
  2 A$bloxorz$1374     04E4 GR  |   2 A$bloxorz$138      0065 GR
  2 A$bloxorz$1381     04E6 GR  |   2 A$bloxorz$1383     04E8 GR
  2 A$bloxorz$1386     04E9 GR  |   2 A$bloxorz$1387     04EB GR
  2 A$bloxorz$139      0067 GR  |   2 A$bloxorz$1393     04ED GR
  2 A$bloxorz$1394     04F0 GR  |   2 A$bloxorz$140      0069 GR
  2 A$bloxorz$1400     04F2 GR  |   2 A$bloxorz$1401     04F5 GR
  2 A$bloxorz$1402     04F6 GR  |   2 A$bloxorz$1403     04F8 GR
  2 A$bloxorz$1404     04FB GR  |   2 A$bloxorz$1405     04FC GR
  2 A$bloxorz$1406     04FE GR  |   2 A$bloxorz$1407     04FF GR
  2 A$bloxorz$1408     0500 GR  |   2 A$bloxorz$1409     0501 GR
  2 A$bloxorz$141      006B GR  |   2 A$bloxorz$1410     0502 GR
  2 A$bloxorz$1411     0504 GR  |   2 A$bloxorz$1412     0506 GR
  2 A$bloxorz$1413     0508 GR  |   2 A$bloxorz$1414     050A GR
  2 A$bloxorz$1415     050C GR  |   2 A$bloxorz$1416     0510 GR
  2 A$bloxorz$1417     0511 GR  |   2 A$bloxorz$1418     0514 GR
  2 A$bloxorz$142      006D GR  |   2 A$bloxorz$1425     0516 GR
  2 A$bloxorz$1426     0519 GR  |   2 A$bloxorz$1427     051A GR
  2 A$bloxorz$1428     051D GR  |   2 A$bloxorz$1429     051E GR
  2 A$bloxorz$143      006F GR  |   2 A$bloxorz$1435     0521 GR
  2 A$bloxorz$1436     0524 GR  |   2 A$bloxorz$1437     0525 GR
  2 A$bloxorz$1438     0526 GR  |   2 A$bloxorz$1439     0529 GR
  2 A$bloxorz$1440     052B GR  |   2 A$bloxorz$1441     052C GR
  2 A$bloxorz$1442     052F GR  |   2 A$bloxorz$1443     0532 GR
  2 A$bloxorz$1449     0535 GR  |   2 A$bloxorz$1450     0539 GR
  2 A$bloxorz$1451     053B GR  |   2 A$bloxorz$1452     053E GR
  2 A$bloxorz$1459     0541 GR  |   2 A$bloxorz$1460     0544 GR
  2 A$bloxorz$1461     0545 GR  |   2 A$bloxorz$1462     0547 GR
  2 A$bloxorz$1463     0548 GR  |   2 A$bloxorz$1464     0549 GR
  2 A$bloxorz$1465     054B GR  |   2 A$bloxorz$1466     054F GR
  2 A$bloxorz$1472     0552 GR  |   2 A$bloxorz$1478     0555 GR
  2 A$bloxorz$1484     0558 GR  |   2 A$bloxorz$1485     055B GR
  2 A$bloxorz$1486     055D GR  |   2 A$bloxorz$1492     0560 GR
  2 A$bloxorz$1493     0562 GR  |   2 A$bloxorz$1499     0565 GR
  2 A$bloxorz$150      0071 GR  |   2 A$bloxorz$1505     0568 GR
  2 A$bloxorz$1506     056A GR  |   2 A$bloxorz$1512     056D GR
  2 A$bloxorz$1513     056F GR  |   2 A$bloxorz$1519     0572 GR
  2 A$bloxorz$1520     0575 GR  |   2 A$bloxorz$1526     0578 GR
  2 A$bloxorz$1527     057A GR  |   2 A$bloxorz$1533     057E GR
  2 A$bloxorz$1534     0581 GR  |   2 A$bloxorz$1540     0583 GR
  2 A$bloxorz$1541     0586 GR  |   2 A$bloxorz$1547     0589 GR
  2 A$bloxorz$1554     058C GR  |   2 A$bloxorz$1555     058F GR
  2 A$bloxorz$1556     0591 GR  |   2 A$bloxorz$156      0073 GR
  2 A$bloxorz$157      0075 GR  |   2 A$bloxorz$158      0077 GR
  2 A$bloxorz$159      0079 GR  |   2 A$bloxorz$160      007B GR
  2 A$bloxorz$161      007D GR  |   2 A$bloxorz$1613     05C4 GR
  2 A$bloxorz$1614     05C6 GR  |   2 A$bloxorz$162      0080 GR
  2 A$bloxorz$1620     05C8 GR  |   2 A$bloxorz$1626     05CB GR
  2 A$bloxorz$1627     05CD GR  |   2 A$bloxorz$163      0082 GR
  2 A$bloxorz$1630     05CF GR  |   2 A$bloxorz$1631     05D1 GR
  2 A$bloxorz$1637     05D4 GR  |   2 A$bloxorz$1638     05D6 GR
  2 A$bloxorz$164      0084 GR  |   2 A$bloxorz$1644     05D9 GR
  2 A$bloxorz$1645     05DB GR  |   2 A$bloxorz$1646     05DD GR
  2 A$bloxorz$1647     05DF GR  |   2 A$bloxorz$1648     05E1 GR
  2 A$bloxorz$1649     05E4 GR  |   2 A$bloxorz$1652     05E6 GR
  2 A$bloxorz$1653     05E8 GR  |   2 A$bloxorz$1654     05EA GR
  2 A$bloxorz$1655     05EC GR  |   2 A$bloxorz$166      0086 GR
  2 A$bloxorz$1661     05EF GR  |   2 A$bloxorz$1662     05F1 GR
  2 A$bloxorz$1663     05F3 GR  |   2 A$bloxorz$1664     05F5 GR
  2 A$bloxorz$1665     05F7 GR  |   2 A$bloxorz$1666     05FA GR
  2 A$bloxorz$1669     05FC GR  |   2 A$bloxorz$1670     05FE GR
  2 A$bloxorz$1671     0600 GR  |   2 A$bloxorz$1672     0602 GR
  2 A$bloxorz$1678     0605 GR  |   2 A$bloxorz$1679     0607 GR
  2 A$bloxorz$1680     0609 GR  |   2 A$bloxorz$1681     060B GR
  2 A$bloxorz$1682     060D GR  |   2 A$bloxorz$1683     0610 GR
  2 A$bloxorz$1686     0612 GR  |   2 A$bloxorz$1687     0614 GR
  2 A$bloxorz$1688     0616 GR  |   2 A$bloxorz$1689     0618 GR
  2 A$bloxorz$1695     061B GR  |   2 A$bloxorz$1696     061D GR
  2 A$bloxorz$1697     061F GR  |   2 A$bloxorz$1698     0621 GR
  2 A$bloxorz$1699     0623 GR  |   2 A$bloxorz$1700     0626 GR
  2 A$bloxorz$1703     0628 GR  |   2 A$bloxorz$1704     062A GR
  2 A$bloxorz$1705     062C GR  |   2 A$bloxorz$1706     062E GR
  2 A$bloxorz$1712     0631 GR  |   2 A$bloxorz$1713     0633 GR
  2 A$bloxorz$1714     0635 GR  |   2 A$bloxorz$1715     0637 GR
  2 A$bloxorz$1716     0639 GR  |   2 A$bloxorz$1717     063C GR
  2 A$bloxorz$1720     063E GR  |   2 A$bloxorz$1721     0640 GR
  2 A$bloxorz$1722     0642 GR  |   2 A$bloxorz$1723     0644 GR
  2 A$bloxorz$1729     0647 GR  |   2 A$bloxorz$173      0088 GR
  2 A$bloxorz$1730     064A GR  |   2 A$bloxorz$1731     064C GR
  2 A$bloxorz$1737     064E GR  |   2 A$bloxorz$174      008A GR
  2 A$bloxorz$1743     0651 GR  |   2 A$bloxorz$175      008C GR
  2 A$bloxorz$1750     0654 GR  |   2 A$bloxorz$1751     0657 GR
  2 A$bloxorz$1752     0659 GR  |   2 A$bloxorz$1758     065B GR
  2 A$bloxorz$1759     065D GR  |   2 A$bloxorz$176      008E GR
  2 A$bloxorz$1765     0660 GR  |   2 A$bloxorz$177      0090 GR
  2 A$bloxorz$1772     0663 GR  |   2 A$bloxorz$1773     0666 GR
  2 A$bloxorz$1774     0668 GR  |   2 A$bloxorz$178      0092 GR
  2 A$bloxorz$1780     066A GR  |   2 A$bloxorz$1781     066C GR
  2 A$bloxorz$1787     066F GR  |   2 A$bloxorz$179      0094 GR
  2 A$bloxorz$1794     0672 GR  |   2 A$bloxorz$1795     0675 GR
  2 A$bloxorz$1796     0677 GR  |   2 A$bloxorz$180      0096 GR
  2 A$bloxorz$1802     0679 GR  |   2 A$bloxorz$1803     067B GR
  2 A$bloxorz$1809     067E GR  |   2 A$bloxorz$181      0098 GR
  2 A$bloxorz$1811     0681 GR  |   2 A$bloxorz$1812     0683 GR
  2 A$bloxorz$182      009A GR  |   2 A$bloxorz$183      009C GR
  2 A$bloxorz$184      009E GR  |   2 A$bloxorz$185      00A1 GR
  2 A$bloxorz$186      00A3 GR  |   2 A$bloxorz$187      00A5 GR
  2 A$bloxorz$1879     06C1 GR  |   2 A$bloxorz$188      00A9 GR
  2 A$bloxorz$1880     06C3 GR  |   2 A$bloxorz$1886     06C5 GR
  2 A$bloxorz$189      00AB GR  |   2 A$bloxorz$1892     06C8 GR
  2 A$bloxorz$1893     06CA GR  |   2 A$bloxorz$1896     06CC GR
  2 A$bloxorz$1897     06CE GR  |   2 A$bloxorz$1903     06D1 GR
  2 A$bloxorz$1904     06D3 GR  |   2 A$bloxorz$1910     06D6 GR
  2 A$bloxorz$1911     06D8 GR  |   2 A$bloxorz$1912     06DA GR
  2 A$bloxorz$1913     06DC GR  |   2 A$bloxorz$1914     06DE GR
  2 A$bloxorz$1915     06E1 GR  |   2 A$bloxorz$1918     06E3 GR
  2 A$bloxorz$1919     06E5 GR  |   2 A$bloxorz$1920     06E7 GR
  2 A$bloxorz$1921     06E9 GR  |   2 A$bloxorz$1927     06EC GR
  2 A$bloxorz$1928     06EE GR  |   2 A$bloxorz$1929     06F0 GR
  2 A$bloxorz$1930     06F2 GR  |   2 A$bloxorz$1931     06F4 GR
  2 A$bloxorz$1932     06F7 GR  |   2 A$bloxorz$1935     06F9 GR
  2 A$bloxorz$1936     06FB GR  |   2 A$bloxorz$1937     06FD GR
  2 A$bloxorz$1938     06FF GR  |   2 A$bloxorz$1944     0702 GR
  2 A$bloxorz$1945     0704 GR  |   2 A$bloxorz$1946     0706 GR
  2 A$bloxorz$1947     0708 GR  |   2 A$bloxorz$1948     070A GR
  2 A$bloxorz$1949     070D GR  |   2 A$bloxorz$1952     070F GR
  2 A$bloxorz$1953     0711 GR  |   2 A$bloxorz$1954     0713 GR
  2 A$bloxorz$1955     0715 GR  |   2 A$bloxorz$1961     0718 GR
  2 A$bloxorz$1962     071A GR  |   2 A$bloxorz$1963     071C GR
  2 A$bloxorz$1964     071E GR  |   2 A$bloxorz$1965     0720 GR
  2 A$bloxorz$1966     0723 GR  |   2 A$bloxorz$1969     0725 GR
  2 A$bloxorz$197      00AD GR  |   2 A$bloxorz$1970     0727 GR
  2 A$bloxorz$1971     0729 GR  |   2 A$bloxorz$1972     072B GR
  2 A$bloxorz$1978     072E GR  |   2 A$bloxorz$1979     0731 GR
  2 A$bloxorz$198      00AF GR  |   2 A$bloxorz$1980     0733 GR
  2 A$bloxorz$1986     0735 GR  |   2 A$bloxorz$1992     0738 GR
  2 A$bloxorz$1998     073B GR  |   2 A$bloxorz$2005     073E GR
  2 A$bloxorz$2006     0741 GR  |   2 A$bloxorz$2007     0743 GR
  2 A$bloxorz$2013     0745 GR  |   2 A$bloxorz$2014     0748 GR
  2 A$bloxorz$2020     074B GR  |   2 A$bloxorz$2026     074E GR
  2 A$bloxorz$2027     0750 GR  |   2 A$bloxorz$2033     0753 GR
  2 A$bloxorz$2039     0756 GR  |   2 A$bloxorz$204      00B2 GR
  2 A$bloxorz$2046     0759 GR  |   2 A$bloxorz$2047     075C GR
  2 A$bloxorz$2048     075E GR  |   2 A$bloxorz$205      00B5 GR
  2 A$bloxorz$2054     0760 GR  |   2 A$bloxorz$2055     0762 GR
  2 A$bloxorz$2057     0765 GR  |   2 A$bloxorz$2058     0767 GR
  2 A$bloxorz$2061     0769 GR  |   2 A$bloxorz$2067     076B GR
  2 A$bloxorz$2073     076E GR  |   2 A$bloxorz$2074     0771 GR
  2 A$bloxorz$2075     0772 GR  |   2 A$bloxorz$2076     0774 GR
  2 A$bloxorz$208      00B6 GR  |   2 A$bloxorz$2082     0777 GR
  2 A$bloxorz$2083     0779 GR  |   2 A$bloxorz$2089     077B GR
  2 A$bloxorz$2090     077C GR  |   2 A$bloxorz$2091     077E GR
  2 A$bloxorz$2093     077F GR  |   2 A$bloxorz$2099     0782 GR
  2 A$bloxorz$2106     0785 GR  |   2 A$bloxorz$2107     0788 GR
  2 A$bloxorz$2108     078A GR  |   2 A$bloxorz$2114     078C GR
  2 A$bloxorz$2116     078F GR  |   2 A$bloxorz$2117     0791 GR
  2 A$bloxorz$2125     0792 GR  |   2 A$bloxorz$2126     0795 GR
  2 A$bloxorz$2132     0797 GR  |   2 A$bloxorz$2133     0799 GR
  2 A$bloxorz$2134     079B GR  |   2 A$bloxorz$214      00B8 GR
  2 A$bloxorz$2140     079E GR  |   2 A$bloxorz$2141     07A0 GR
  2 A$bloxorz$2142     07A2 GR  |   2 A$bloxorz$2143     07A4 GR
  2 A$bloxorz$2144     07A7 GR  |   2 A$bloxorz$2146     07A9 GR
  2 A$bloxorz$215      00BA GR  |   2 A$bloxorz$2179     07C5 GR
  2 A$bloxorz$218      00BC GR  |   2 A$bloxorz$2180     07C7 GR
  2 A$bloxorz$2186     07C9 GR  |   2 A$bloxorz$219      00BE GR
  2 A$bloxorz$2192     07CC GR  |   2 A$bloxorz$2193     07CE GR
  2 A$bloxorz$2196     07D0 GR  |   2 A$bloxorz$2197     07D2 GR
  2 A$bloxorz$2203     07D5 GR  |   2 A$bloxorz$2204     07D7 GR
  2 A$bloxorz$2210     07DA GR  |   2 A$bloxorz$2211     07DC GR
  2 A$bloxorz$2212     07DE GR  |   2 A$bloxorz$2213     07E0 GR
  2 A$bloxorz$2214     07E2 GR  |   2 A$bloxorz$2215     07E5 GR
  2 A$bloxorz$2218     07E7 GR  |   2 A$bloxorz$2219     07E9 GR
  2 A$bloxorz$222      00C1 GR  |   2 A$bloxorz$2220     07EB GR
  2 A$bloxorz$2221     07ED GR  |   2 A$bloxorz$2227     07F0 GR
  2 A$bloxorz$2228     07F2 GR  |   2 A$bloxorz$2229     07F4 GR
  2 A$bloxorz$2230     07F6 GR  |   2 A$bloxorz$2231     07F8 GR
  2 A$bloxorz$2232     07FB GR  |   2 A$bloxorz$2235     07FD GR
  2 A$bloxorz$2236     07FF GR  |   2 A$bloxorz$2237     0801 GR
  2 A$bloxorz$2238     0803 GR  |   2 A$bloxorz$2244     0806 GR
  2 A$bloxorz$2245     0808 GR  |   2 A$bloxorz$2246     080A GR
  2 A$bloxorz$2247     080C GR  |   2 A$bloxorz$2248     080E GR
  2 A$bloxorz$2249     0811 GR  |   2 A$bloxorz$225      00C3 GR
  2 A$bloxorz$2252     0813 GR  |   2 A$bloxorz$2253     0815 GR
  2 A$bloxorz$2254     0817 GR  |   2 A$bloxorz$2255     0819 GR
  2 A$bloxorz$2261     081C GR  |   2 A$bloxorz$2262     081F GR
  2 A$bloxorz$2263     0821 GR  |   2 A$bloxorz$2269     0823 GR
  2 A$bloxorz$2276     0825 GR  |   2 A$bloxorz$2277     0827 GR
  2 A$bloxorz$2278     0829 GR  |   2 A$bloxorz$2279     082B GR
  2 A$bloxorz$228      00C5 GR  |   2 A$bloxorz$2280     082E GR
  2 A$bloxorz$2281     0830 GR  |   2 A$bloxorz$2282     0832 GR
  2 A$bloxorz$2283     0834 GR  |   2 A$bloxorz$2284     0836 GR
  2 A$bloxorz$2290     0838 GR  |   2 A$bloxorz$2297     083B GR
  2 A$bloxorz$2298     083E GR  |   2 A$bloxorz$2299     0840 GR
  2 A$bloxorz$2305     0842 GR  |   2 A$bloxorz$2307     0845 GR
  2 A$bloxorz$2308     0847 GR  |   2 A$bloxorz$231      00C7 GR
  2 A$bloxorz$2311     0849 GR  |   2 A$bloxorz$2312     084B GR
  2 A$bloxorz$2318     084D GR  |   2 A$bloxorz$2324     0850 GR
  2 A$bloxorz$2325     0853 GR  |   2 A$bloxorz$2331     0856 GR
  2 A$bloxorz$2332     0859 GR  |   2 A$bloxorz$2333     085A GR
  2 A$bloxorz$2339     085D GR  |   2 A$bloxorz$234      00CA GR
  2 A$bloxorz$2340     085F GR  |   2 A$bloxorz$2346     0863 GR
  2 A$bloxorz$2347     0866 GR  |   2 A$bloxorz$2348     0869 GR
  2 A$bloxorz$2354     086B GR  |   2 A$bloxorz$2355     086E GR
  2 A$bloxorz$2356     086F GR  |   2 A$bloxorz$2357     0871 GR
  2 A$bloxorz$2358     0873 GR  |   2 A$bloxorz$2359     0875 GR
  2 A$bloxorz$2360     0877 GR  |   2 A$bloxorz$2366     087A GR
  2 A$bloxorz$2367     087D GR  |   2 A$bloxorz$2368     087E GR
  2 A$bloxorz$2369     087F GR  |   2 A$bloxorz$2370     0881 GR
  2 A$bloxorz$2371     0884 GR  |   2 A$bloxorz$2372     0886 GR
  2 A$bloxorz$2373     0887 GR  |   2 A$bloxorz$2374     0889 GR
  2 A$bloxorz$2375     088B GR  |   2 A$bloxorz$2376     088E GR
  2 A$bloxorz$2383     0890 GR  |   2 A$bloxorz$2384     0893 GR
  2 A$bloxorz$2390     0897 GR  |   2 A$bloxorz$2391     089A GR
  2 A$bloxorz$2392     089B GR  |   2 A$bloxorz$2398     089E GR
  2 A$bloxorz$2399     089F GR  |   2 A$bloxorz$240      00CD GR
  2 A$bloxorz$2400     08A1 GR  |   2 A$bloxorz$2401     08A4 GR
  2 A$bloxorz$2402     08A5 GR  |   2 A$bloxorz$2403     08A7 GR
  2 A$bloxorz$2404     08A8 GR  |   2 A$bloxorz$2405     08A9 GR
  2 A$bloxorz$2406     08AA GR  |   2 A$bloxorz$2407     08AB GR
  2 A$bloxorz$2408     08AD GR  |   2 A$bloxorz$2409     08AF GR
  2 A$bloxorz$2410     08B1 GR  |   2 A$bloxorz$2411     08B3 GR
  2 A$bloxorz$2412     08B5 GR  |   2 A$bloxorz$2413     08B9 GR
  2 A$bloxorz$2419     08BC GR  |   2 A$bloxorz$2420     08BD GR
  2 A$bloxorz$2426     08C1 GR  |   2 A$bloxorz$2427     08C3 GR
  2 A$bloxorz$243      00CF GR  |   2 A$bloxorz$2433     08C6 GR
  2 A$bloxorz$2434     08C9 GR  |   2 A$bloxorz$2435     08CC GR
  2 A$bloxorz$2436     08CF GR  |   2 A$bloxorz$2437     08D2 GR
  2 A$bloxorz$2438     08D5 GR  |   2 A$bloxorz$2439     08D8 GR
  2 A$bloxorz$2440     08DB GR  |   2 A$bloxorz$2441     08DE GR
  2 A$bloxorz$2442     08E1 GR  |   2 A$bloxorz$2443     08E4 GR
  2 A$bloxorz$2444     08E7 GR  |   2 A$bloxorz$2445     08EA GR
  2 A$bloxorz$2446     08ED GR  |   2 A$bloxorz$2447     08F0 GR
  2 A$bloxorz$2448     08F3 GR  |   2 A$bloxorz$2449     08F6 GR
  2 A$bloxorz$2450     08F9 GR  |   2 A$bloxorz$2456     08FC GR
  2 A$bloxorz$2457     08FF GR  |   2 A$bloxorz$2458     0901 GR
  2 A$bloxorz$2459     0904 GR  |   2 A$bloxorz$246      00D1 GR
  2 A$bloxorz$2465     0907 GR  |   2 A$bloxorz$2466     090A GR
  2 A$bloxorz$2467     090C GR  |   2 A$bloxorz$2474     090E GR
  2 A$bloxorz$2475     0911 GR  |   2 A$bloxorz$2482     0913 GR
  2 A$bloxorz$2483     0916 GR  |   2 A$bloxorz$2484     0917 GR
  2 A$bloxorz$249      00D4 GR  |   2 A$bloxorz$2490     091A GR
  2 A$bloxorz$2491     091D GR  |   2 A$bloxorz$2492     091F GR
  2 A$bloxorz$2499     0922 GR  |   2 A$bloxorz$2501     0925 GR
  2 A$bloxorz$2502     0927 GR  |   2 A$bloxorz$2505     0929 GR
  2 A$bloxorz$2506     092B GR  |   2 A$bloxorz$2512     092D GR
  2 A$bloxorz$2513     092F GR  |   2 A$bloxorz$2519     0933 GR
  2 A$bloxorz$252      00D6 GR  |   2 A$bloxorz$2520     0935 GR
  2 A$bloxorz$2521     0937 GR  |   2 A$bloxorz$2522     0939 GR
  2 A$bloxorz$2523     093C GR  |   2 A$bloxorz$2524     093E GR
  2 A$bloxorz$2532     093F GR  |   2 A$bloxorz$2538     0942 GR
  2 A$bloxorz$2539     0943 GR  |   2 A$bloxorz$2545     0946 GR
  2 A$bloxorz$255      00DA GR  |   2 A$bloxorz$2551     0949 GR
  2 A$bloxorz$2552     094C GR  |   2 A$bloxorz$2553     094E GR
  2 A$bloxorz$2559     0950 GR  |   2 A$bloxorz$2560     0951 GR
  2 A$bloxorz$2566     0954 GR  |   2 A$bloxorz$2567     0956 GR
  2 A$bloxorz$2568     0959 GR  |   2 A$bloxorz$2570     095C GR
  2 A$bloxorz$2571     095F GR  |   2 A$bloxorz$2572     0961 GR
  2 A$bloxorz$2578     0963 GR  |   2 A$bloxorz$2579     0965 GR
  2 A$bloxorz$258      00DE GR  |   2 A$bloxorz$2585     0968 GR
  2 A$bloxorz$2586     096A GR  |   2 A$bloxorz$2587     096D GR
  2 A$bloxorz$2589     096F GR  |   2 A$bloxorz$2590     0972 GR
  2 A$bloxorz$2591     0974 GR  |   2 A$bloxorz$2597     0976 GR
  2 A$bloxorz$2598     0978 GR  |   2 A$bloxorz$2604     097B GR
  2 A$bloxorz$2605     097D GR  |   2 A$bloxorz$2606     0980 GR
  2 A$bloxorz$2608     0982 GR  |   2 A$bloxorz$2609     0985 GR
  2 A$bloxorz$261      00E0 GR  |   2 A$bloxorz$2610     0987 GR
  2 A$bloxorz$2616     0989 GR  |   2 A$bloxorz$2617     098B GR
  2 A$bloxorz$2623     098E GR  |   2 A$bloxorz$2624     0990 GR
  2 A$bloxorz$2634     0993 GR  |   2 A$bloxorz$2635     0996 GR
  2 A$bloxorz$2636     0998 GR  |   2 A$bloxorz$264      00E3 GR
  2 A$bloxorz$2642     099A GR  |   2 A$bloxorz$2643     099D GR
  2 A$bloxorz$2649     09A0 GR  |   2 A$bloxorz$2650     09A2 GR
  2 A$bloxorz$2657     09A6 GR  |   2 A$bloxorz$2663     09A9 GR
  2 A$bloxorz$2664     09AC GR  |   2 A$bloxorz$2665     09AE GR
  2 A$bloxorz$267      00E5 GR  |   2 A$bloxorz$2671     09B0 GR
  2 A$bloxorz$2672     09B3 GR  |   2 A$bloxorz$2678     09B5 GR
  2 A$bloxorz$2685     09B8 GR  |   2 A$bloxorz$2686     09BB GR
  2 A$bloxorz$2687     09BD GR  |   2 A$bloxorz$2688     09BF GR
  2 A$bloxorz$2689     09C2 GR  |   2 A$bloxorz$2695     09C4 GR
  2 A$bloxorz$2696     09C7 GR  |   2 A$bloxorz$2697     09C8 GR
  2 A$bloxorz$270      00E9 GR  |   2 A$bloxorz$2703     09CB GR
  2 A$bloxorz$2704     09CE GR  |   2 A$bloxorz$2710     09D0 GR
  2 A$bloxorz$2716     09D3 GR  |   2 A$bloxorz$2717     09D6 GR
  2 A$bloxorz$2724     09D9 GR  |   2 A$bloxorz$273      00ED GR
  2 A$bloxorz$2731     09DC GR  |   2 A$bloxorz$2732     09DF GR
  2 A$bloxorz$2733     09E1 GR  |   2 A$bloxorz$2734     09E3 GR
  2 A$bloxorz$2735     09E6 GR  |   2 A$bloxorz$2741     09E8 GR
  2 A$bloxorz$2742     09EB GR  |   2 A$bloxorz$2748     09ED GR
  2 A$bloxorz$2749     09EE GR  |   2 A$bloxorz$2750     09F1 GR
  2 A$bloxorz$2757     09F3 GR  |   2 A$bloxorz$2758     09F6 GR
  2 A$bloxorz$2759     09F7 GR  |   2 A$bloxorz$276      00F1 GR
  2 A$bloxorz$2765     09FA GR  |   2 A$bloxorz$2766     09FD GR
  2 A$bloxorz$2773     0A00 GR  |   2 A$bloxorz$2780     0A03 GR
  2 A$bloxorz$2781     0A06 GR  |   2 A$bloxorz$2782     0A08 GR
  2 A$bloxorz$2788     0A0A GR  |   2 A$bloxorz$279      00F5 GR
  2 A$bloxorz$2790     0A0D GR  |   2 A$bloxorz$2793     0A0E GR
  2 A$bloxorz$2794     0A10 GR  |   2 A$bloxorz$2800     0A12 GR
  2 A$bloxorz$2801     0A13 GR  |   2 A$bloxorz$2807     0A16 GR
  2 A$bloxorz$2808     0A18 GR  |   2 A$bloxorz$2814     0A1C GR
  2 A$bloxorz$282      00F7 GR  |   2 A$bloxorz$2820     0A1F GR
  2 A$bloxorz$2821     0A21 GR  |   2 A$bloxorz$2822     0A23 GR
  2 A$bloxorz$2828     0A26 GR  |   2 A$bloxorz$2829     0A28 GR
  2 A$bloxorz$2830     0A2A GR  |   2 A$bloxorz$2836     0A2D GR
  2 A$bloxorz$2837     0A2F GR  |   2 A$bloxorz$2838     0A31 GR
  2 A$bloxorz$2839     0A34 GR  |   2 A$bloxorz$2840     0A36 GR
  2 A$bloxorz$2841     0A38 GR  |   2 A$bloxorz$2847     0A3A GR
  2 A$bloxorz$2848     0A3C GR  |   2 A$bloxorz$285      00FA GR
  2 A$bloxorz$2855     0A3F GR  |   2 A$bloxorz$2856     0A41 GR
  2 A$bloxorz$2862     0A44 GR  |   2 A$bloxorz$2863     0A46 GR
  2 A$bloxorz$2869     0A49 GR  |   2 A$bloxorz$2875     0A4C GR
  2 A$bloxorz$288      00FC GR  |   2 A$bloxorz$2881     0A4F GR
  2 A$bloxorz$2887     0A52 GR  |   2 A$bloxorz$2899     0A55 GR
  2 A$bloxorz$2905     0A58 GR  |   2 A$bloxorz$2906     0A5B GR
  2 A$bloxorz$2907     0A5D GR  |   2 A$bloxorz$2908     0A61 GR
  2 A$bloxorz$2909     0A62 GR  |   2 A$bloxorz$291      00FE GR
  2 A$bloxorz$2910     0A64 GR  |   2 A$bloxorz$2911     0A65 GR
  2 A$bloxorz$2912     0A66 GR  |   2 A$bloxorz$2913     0A68 GR
  2 A$bloxorz$2930     0A7E GR  |   2 A$bloxorz$2936     0A81 GR
  2 A$bloxorz$294      0100 GR  |   2 A$bloxorz$2942     0A84 GR
  2 A$bloxorz$2949     0A87 GR  |   2 A$bloxorz$2955     0A8A GR
  2 A$bloxorz$2961     0A8D GR  |   2 A$bloxorz$2968     0A90 GR
  2 A$bloxorz$297      0101 GR  |   2 A$bloxorz$2974     0A93 GR
  2 A$bloxorz$2980     0A96 GR  |   2 A$bloxorz$2987     0A99 GR
  2 A$bloxorz$2993     0A9C GR  |   2 A$bloxorz$2999     0A9F GR
  2 A$bloxorz$300      0103 GR  |   2 A$bloxorz$3006     0AA2 GR
  2 A$bloxorz$3012     0AA5 GR  |   2 A$bloxorz$3018     0AA8 GR
  2 A$bloxorz$3025     0AAB GR  |   2 A$bloxorz$303      0105 GR
  2 A$bloxorz$3031     0AAE GR  |   2 A$bloxorz$3037     0AB1 GR
  2 A$bloxorz$304      0107 GR  |   2 A$bloxorz$3044     0AB4 GR
  2 A$bloxorz$3050     0AB7 GR  |   2 A$bloxorz$3056     0ABA GR
  2 A$bloxorz$3063     0ABC GR  |   2 A$bloxorz$3069     0ABF GR
  2 A$bloxorz$3075     0AC2 GR  |   2 A$bloxorz$3082     0AC4 GR
  2 A$bloxorz$3088     0AC7 GR  |   2 A$bloxorz$3100     0ACA GR
  2 A$bloxorz$3101     0ACD GR  |   2 A$bloxorz$3102     0ACF GR
  2 A$bloxorz$3108     0AD1 GR  |   2 A$bloxorz$3114     0AD4 GR
  2 A$bloxorz$3115     0AD7 GR  |   2 A$bloxorz$3118     0AD9 GR
  2 A$bloxorz$3119     0ADB GR  |   2 A$bloxorz$3125     0ADE GR
  2 A$bloxorz$3131     0AE1 GR  |   2 A$bloxorz$3140     0AE4 GR
  2 A$bloxorz$3141     0AE7 GR  |   2 A$bloxorz$3147     0AEB GR
  2 A$bloxorz$3148     0AEE GR  |   2 A$bloxorz$3149     0AF1 GR
  2 A$bloxorz$3155     0AF4 GR  |   2 A$bloxorz$3156     0AF8 GR
  2 A$bloxorz$3162     0AFC GR  |   2 A$bloxorz$3163     0AFF GR
  2 A$bloxorz$3169     0B02 GR  |   2 A$bloxorz$3170     0B05 GR
  2 A$bloxorz$3171     0B08 GR  |   2 A$bloxorz$3177     0B0C GR
  2 A$bloxorz$3178     0B0E GR  |   2 A$bloxorz$3184     0B11 GR
  2 A$bloxorz$3185     0B14 GR  |   2 A$bloxorz$319      0113 GR
  2 A$bloxorz$320      0115 GR  |   2 A$bloxorz$326      0117 GR
  2 A$bloxorz$332      011A GR  |   2 A$bloxorz$333      011C GR
  2 A$bloxorz$336      011E GR  |   2 A$bloxorz$337      0120 GR
  2 A$bloxorz$34       0000 GR  |   2 A$bloxorz$343      0123 GR
  2 A$bloxorz$344      0125 GR  |   2 A$bloxorz$35       0002 GR
  2 A$bloxorz$350      0128 GR  |   2 A$bloxorz$351      012A GR
  2 A$bloxorz$352      012C GR  |   2 A$bloxorz$353      012E GR
  2 A$bloxorz$354      0130 GR  |   2 A$bloxorz$355      0133 GR
  2 A$bloxorz$358      0135 GR  |   2 A$bloxorz$359      0137 GR
  2 A$bloxorz$36       0004 GR  |   2 A$bloxorz$360      0139 GR
  2 A$bloxorz$361      013B GR  |   2 A$bloxorz$367      013E GR
  2 A$bloxorz$368      0140 GR  |   2 A$bloxorz$369      0142 GR
  2 A$bloxorz$370      0144 GR  |   2 A$bloxorz$371      0146 GR
  2 A$bloxorz$372      0149 GR  |   2 A$bloxorz$375      014B GR
  2 A$bloxorz$376      014D GR  |   2 A$bloxorz$377      014F GR
  2 A$bloxorz$378      0151 GR  |   2 A$bloxorz$384      0154 GR
  2 A$bloxorz$385      0157 GR  |   2 A$bloxorz$386      0159 GR
  2 A$bloxorz$392      015B GR  |   2 A$bloxorz$399      015E GR
  2 A$bloxorz$400      0161 GR  |   2 A$bloxorz$401      0163 GR
  2 A$bloxorz$407      0165 GR  |   2 A$bloxorz$414      0168 GR
  2 A$bloxorz$415      016B GR  |   2 A$bloxorz$416      016D GR
  2 A$bloxorz$422      016F GR  |   2 A$bloxorz$429      0172 GR
  2 A$bloxorz$430      0175 GR  |   2 A$bloxorz$431      0177 GR
  2 A$bloxorz$437      0179 GR  |   2 A$bloxorz$439      017C GR
  2 A$bloxorz$440      017E GR  |   2 A$bloxorz$443      0180 GR
  2 A$bloxorz$444      0182 GR  |   2 A$bloxorz$450      0184 GR
  2 A$bloxorz$456      0187 GR  |   2 A$bloxorz$457      0189 GR
  2 A$bloxorz$460      018B GR  |   2 A$bloxorz$461      018D GR
  2 A$bloxorz$467      0190 GR  |   2 A$bloxorz$473      0193 GR
  2 A$bloxorz$474      0195 GR  |   2 A$bloxorz$475      0197 GR
  2 A$bloxorz$476      0199 GR  |   2 A$bloxorz$477      019B GR
  2 A$bloxorz$478      019D GR  |   2 A$bloxorz$48       0006 GR
  2 A$bloxorz$481      019F GR  |   2 A$bloxorz$482      01A1 GR
  2 A$bloxorz$483      01A3 GR  |   2 A$bloxorz$489      01A6 GR
  2 A$bloxorz$490      01A8 GR  |   2 A$bloxorz$491      01AA GR
  2 A$bloxorz$492      01AE GR  |   2 A$bloxorz$495      01B1 GR
  2 A$bloxorz$496      01B3 GR  |   2 A$bloxorz$502      01B6 GR
  2 A$bloxorz$508      01B9 GR  |   2 A$bloxorz$509      01BB GR
  2 A$bloxorz$510      01BD GR  |   2 A$bloxorz$511      01BF GR
  2 A$bloxorz$512      01C1 GR  |   2 A$bloxorz$513      01C3 GR
  2 A$bloxorz$516      01C5 GR  |   2 A$bloxorz$517      01C7 GR
  2 A$bloxorz$518      01C9 GR  |   2 A$bloxorz$524      01CC GR
  2 A$bloxorz$525      01CE GR  |   2 A$bloxorz$526      01D0 GR
  2 A$bloxorz$529      01D3 GR  |   2 A$bloxorz$530      01D5 GR
  2 A$bloxorz$536      01D8 GR  |   2 A$bloxorz$54       0009 GR
  2 A$bloxorz$542      01DB GR  |   2 A$bloxorz$543      01DD GR
  2 A$bloxorz$544      01DF GR  |   2 A$bloxorz$545      01E1 GR
  2 A$bloxorz$546      01E3 GR  |   2 A$bloxorz$547      01E5 GR
  2 A$bloxorz$55       000B GR  |   2 A$bloxorz$550      01E7 GR
  2 A$bloxorz$551      01E9 GR  |   2 A$bloxorz$552      01EB GR
  2 A$bloxorz$558      01EE GR  |   2 A$bloxorz$559      01F0 GR
  2 A$bloxorz$560      01F2 GR  |   2 A$bloxorz$563      01F5 GR
  2 A$bloxorz$564      01F7 GR  |   2 A$bloxorz$570      01FA GR
  2 A$bloxorz$576      01FD GR  |   2 A$bloxorz$577      01FF GR
  2 A$bloxorz$578      0201 GR  |   2 A$bloxorz$579      0203 GR
  2 A$bloxorz$58       000D GR  |   2 A$bloxorz$580      0205 GR
  2 A$bloxorz$583      0207 GR  |   2 A$bloxorz$584      0209 GR
  2 A$bloxorz$585      020B GR  |   2 A$bloxorz$59       000F GR
  2 A$bloxorz$591      020E GR  |   2 A$bloxorz$592      0210 GR
  2 A$bloxorz$593      0212 GR  |   2 A$bloxorz$596      0215 GR
  2 A$bloxorz$597      0217 GR  |   2 A$bloxorz$603      021A GR
  2 A$bloxorz$609      021D GR  |   2 A$bloxorz$610      021F GR
  2 A$bloxorz$611      0221 GR  |   2 A$bloxorz$612      0223 GR
  2 A$bloxorz$613      0225 GR  |   2 A$bloxorz$614      0227 GR
  2 A$bloxorz$617      0229 GR  |   2 A$bloxorz$618      022B GR
  2 A$bloxorz$619      022D GR  |   2 A$bloxorz$625      0230 GR
  2 A$bloxorz$626      0232 GR  |   2 A$bloxorz$627      0234 GR
  2 A$bloxorz$630      0237 GR  |   2 A$bloxorz$631      0239 GR
  2 A$bloxorz$637      023C GR  |   2 A$bloxorz$643      023F GR
  2 A$bloxorz$644      0241 GR  |   2 A$bloxorz$645      0243 GR
  2 A$bloxorz$646      0245 GR  |   2 A$bloxorz$647      0247 GR
  2 A$bloxorz$648      0249 GR  |   2 A$bloxorz$65       0012 GR
  2 A$bloxorz$651      024B GR  |   2 A$bloxorz$652      024D GR
  2 A$bloxorz$653      024F GR  |   2 A$bloxorz$659      0252 GR
  2 A$bloxorz$66       0014 GR  |   2 A$bloxorz$660      0254 GR
  2 A$bloxorz$661      0256 GR  |   2 A$bloxorz$664      0259 GR
  2 A$bloxorz$665      025B GR  |   2 A$bloxorz$668      025E GR
  2 A$bloxorz$669      0260 GR  |   2 A$bloxorz$672      0262 GR
  2 A$bloxorz$673      0264 GR  |   2 A$bloxorz$679      0266 GR
  2 A$bloxorz$680      0268 GR  |   2 A$bloxorz$683      026A GR
  2 A$bloxorz$684      026C GR  |   2 A$bloxorz$690      026F GR
  2 A$bloxorz$691      0271 GR  |   2 A$bloxorz$697      0274 GR
  2 A$bloxorz$698      0276 GR  |   2 A$bloxorz$699      0278 GR
  2 A$bloxorz$700      027A GR  |   2 A$bloxorz$701      027D GR
  2 A$bloxorz$704      027F GR  |   2 A$bloxorz$705      0281 GR
  2 A$bloxorz$706      0283 GR  |   2 A$bloxorz$707      0285 GR
  2 A$bloxorz$710      0288 GR  |   2 A$bloxorz$711      028A GR
  2 A$bloxorz$719      028C GR  |   2 A$bloxorz$72       0017 GR
  2 A$bloxorz$725      028F GR  |   2 A$bloxorz$726      0292 GR
  2 A$bloxorz$73       0019 GR  |   2 A$bloxorz$732      0295 GR
  2 A$bloxorz$733      0298 GR  |   2 A$bloxorz$734      0299 GR
  2 A$bloxorz$74       001B GR  |   2 A$bloxorz$740      029C GR
  2 A$bloxorz$741      029D GR  |   2 A$bloxorz$747      029F GR
  2 A$bloxorz$748      02A1 GR  |   2 A$bloxorz$75       001D GR
  2 A$bloxorz$750      02A4 GR  |   2 A$bloxorz$753      02A5 GR
  2 A$bloxorz$759      02A7 GR  |   2 A$bloxorz$76       001F GR
  2 A$bloxorz$760      02AA GR  |   2 A$bloxorz$761      02AD GR
  2 A$bloxorz$762      02AF GR  |   2 A$bloxorz$763      02B2 GR
  2 A$bloxorz$764      02B5 GR  |   2 A$bloxorz$765      02B8 GR
  2 A$bloxorz$766      02BB GR  |   2 A$bloxorz$767      02BE GR
  2 A$bloxorz$768      02C1 GR  |   2 A$bloxorz$769      02C4 GR
  2 A$bloxorz$775      02C7 GR  |   2 A$bloxorz$776      02C9 GR
  2 A$bloxorz$777      02CC GR  |   2 A$bloxorz$783      02CF GR
  2 A$bloxorz$784      02D2 GR  |   2 A$bloxorz$785      02D5 GR
  2 A$bloxorz$786      02D8 GR  |   2 A$bloxorz$787      02DA GR
  2 A$bloxorz$788      02DB GR  |   2 A$bloxorz$789      02DD GR
  2 A$bloxorz$79       0022 GR  |   2 A$bloxorz$790      02E0 GR
  2 A$bloxorz$791      02E2 GR  |   2 A$bloxorz$799      02E4 GR
  2 A$bloxorz$80       0024 GR  |   2 A$bloxorz$805      02E7 GR
  2 A$bloxorz$806      02EA GR  |   2 A$bloxorz$81       0026 GR
  2 A$bloxorz$812      02EC GR  |   2 A$bloxorz$813      02EF GR
  2 A$bloxorz$814      02F2 GR  |   2 A$bloxorz$815      02F4 GR
  2 A$bloxorz$816      02F6 GR  |   2 A$bloxorz$82       0028 GR
  2 A$bloxorz$823      02F9 GR  |   2 A$bloxorz$825      02FC GR
  2 A$bloxorz$833      02FD GR  |   2 A$bloxorz$834      02FF GR
  2 A$bloxorz$840      0302 GR  |   2 A$bloxorz$846      0305 GR
  2 A$bloxorz$847      0308 GR  |   2 A$bloxorz$85       002B GR
  2 A$bloxorz$853      030B GR  |   2 A$bloxorz$854      030E GR
  2 A$bloxorz$860      0311 GR  |   2 A$bloxorz$861      0315 GR
  2 A$bloxorz$864      0316 GR  |   2 A$bloxorz$870      0318 GR
  2 A$bloxorz$876      031B GR  |   2 A$bloxorz$877      031C GR
  2 A$bloxorz$88       002E GR  |   2 A$bloxorz$883      031F GR
  2 A$bloxorz$889      0322 GR  |   2 A$bloxorz$89       0030 GR
  2 A$bloxorz$890      0325 GR  |   2 A$bloxorz$896      0329 GR
  2 A$bloxorz$897      032C GR  |   2 A$bloxorz$903      032E GR
  2 A$bloxorz$910      0331 GR  |   2 A$bloxorz$911      0334 GR
  2 A$bloxorz$912      0336 GR  |   2 A$bloxorz$913      0339 GR
  2 A$bloxorz$914      033C GR  |   2 A$bloxorz$920      033E GR
  2 A$bloxorz$921      0341 GR  |   2 A$bloxorz$922      0342 GR
  2 A$bloxorz$923      0344 GR  |   2 A$bloxorz$924      0347 GR
  2 A$bloxorz$925      0349 GR  |   2 A$bloxorz$926      034B GR
  2 A$bloxorz$927      034E GR  |   2 A$bloxorz$933      0350 GR
  2 A$bloxorz$934      0353 GR  |   2 A$bloxorz$935      0354 GR
  2 A$bloxorz$936      0356 GR  |   2 A$bloxorz$937      0359 GR
  2 A$bloxorz$938      035C GR  |   2 A$bloxorz$944      035E GR
  2 A$bloxorz$945      0361 GR  |   2 A$bloxorz$946      0363 GR
  2 A$bloxorz$947      0366 GR  |   2 A$bloxorz$948      0369 GR
  2 A$bloxorz$95       0032 GR  |   2 A$bloxorz$954      036B GR
  2 A$bloxorz$955      036E GR  |   2 A$bloxorz$956      036F GR
  2 A$bloxorz$957      0371 GR  |   2 A$bloxorz$958      0374 GR
  2 A$bloxorz$959      0376 GR  |   2 A$bloxorz$96       0035 GR
  2 A$bloxorz$960      0378 GR  |   2 A$bloxorz$961      037B GR
  2 A$bloxorz$967      037D GR  |   2 A$bloxorz$968      0380 GR
  2 A$bloxorz$969      0381 GR  |   2 A$bloxorz$97       0037 GR
  2 A$bloxorz$970      0383 GR  |   2 A$bloxorz$971      0386 GR
  2 A$bloxorz$972      0389 GR  |   2 A$bloxorz$978      038B GR
  2 A$bloxorz$979      038D GR  |   2 A$bloxorz$98       003A GR
  2 A$bloxorz$980      0390 GR  |   2 A$bloxorz$986      0392 GR
  2 A$bloxorz$987      0394 GR  |   2 A$bloxorz$99       003C GR
  2 A$bloxorz$993      0398 GR  |   2 A$bloxorz$994      039B GR
  2 L103               0890 R   |   2 L104               0913 R
  2 L105               090E R   |   2 L106               0922 R
  2 L107               0925 R   |   2 L111               095C R
  2 L112               0993 R   |   2 L113               096F R
  2 L114               0982 R   |   2 L115               09A6 R
  2 L116               09B8 R   |   2 L117               09DC R
  2 L118               09D9 R   |   2 L119               0A03 R
  2 L120               09F3 R   |   2 L121               0A00 R
  2 L123               0A0D R   |   2 L125               0A3F R
  2 L126               0ACA R   |   2 L127               0A7E R
  2 L128               0A90 R   |   2 L129               0A99 R
  2 L130               0A87 R   |   2 L131               0AA2 R
  2 L132               0AAB R   |   2 L133               0AB4 R
  2 L134               0ABC R   |   2 L135               0AC4 R
  2 L136               0A6C R   |   2 L137               0AE4 R
  2 L140               0A55 R   |   2 L17                015E R
  2 L18                0168 R   |   2 L19                0172 R
  2 L2                 0006 R   |   2 L21                017C R
  2 L28                02A4 R   |   2 L33                02F9 R
  2 L34                02FC R   |   2 L39                0331 R
  2 L40                039E R   |   2 L41                03D6 R
  2 L42                03AF R   |   2 L43                03BE R
  2 L45                03B9 R   |   2 L46                03BC R
  2 L47                03C6 R   |   2 L48                03C9 R
  2 L49                03D3 R   |   2 L5                 004C R
  2 L50                03D6 R   |   2 L51                0406 R
  2 L52                0412 R   |   2 L53                042F R
  2 L54                0441 R   |   2 L55                045F R
  2 L57                044F R   |   2 L58                045C R
  2 L59                0472 R   |   2 L6                 0086 R
  2 L60                0486 R   |   2 L61                049B R
  2 L62                04B3 R   |   2 L63                04B3 R
  2 L64                03CB R   |   2 L65                0488 R
  2 L69                04E6 R   |   2 L7                 0088 R
  2 L70                04E8 R   |   2 L73                0516 R
  2 L74                0541 R   |   2 L75                058C R
  2 L78                0654 R   |   2 L79                0663 R
  2 L8                 0071 R   |   2 L80                0672 R
  2 L82                0681 R   |   2 L84                073E R
  2 L85                0759 R   |   2 L87                0765 R
  2 L89                0785 R   |   2 L9                 0055 R
  2 L91                078F R   |   2 L94                07A9 R
  2 L96                083B R   |   2 L97                0825 R
  2 L99                0845 R   |   2 LC0                0108 R
  2 LC1                0593 R   |   2 LC10               07AA R
  2 LC11               07B8 R   |   2 LC12               07BF R
  2 LC2                05A0 R   |   2 LC3                05A9 R
  2 LC4                05B2 R   |   2 LC5                05BB R
  2 LC6                0685 R   |   2 LC7                0690 R
  2 LC8                069F R   |   2 LC9                06AE R
    _Vec_Buttons       **** GX  |     _Vec_Text_Widt     **** GX
    ___DP_to_C8        **** GX  |     ___DP_to_D0        **** GX
    ___Do_Sound        **** GX  |     ___Draw_VLp        **** GX
    ___Init_Music_     **** GX  |     ___Intensity_a     **** GX
    ___Joy_Digital     **** GX  |     ___Moveto_d        **** GX
    ___Print_Str_d     **** GX  |     ___Read_Btns       **** GX
    ___Reset0Ref       **** GX  |     ___Wait_Recal      **** GX
  2 _arcadeEnd         0113 GR  |   4 _arcadeIndex       001E GR
  2 _arcadeLevels      0B8F R   |   2 _arcadeMenu        05C4 GR
  4 _arcadeMode        001C GR  |   4 _arcadeSelecti     001D GR
    _blockAnimatin     **** GX  |   2 _blockFalling      0769 GR
  2 _blockMoving       0316 GR  |   2 _blockMovingAt     0849 GR
  2 _blockMovingTo     028C GR  |     _blockOrientat     **** GX
    _blockStartLev     **** GX  |   2 _blockWaiting      093F GR
    _blockX            **** GX  |     _blockY            **** GX
    _blockYOfs         **** GX  |   2 _changeMusic       00AD GR
  2 _clearMenu         07C5 GR  |   3 _currentMusic      0000 GR
    _delay10ms         **** GX  |     _doBlockAnimat     **** GX
    _dp_VIA_t1_cnt     **** GX  |     _drawBlock         **** GX
  2 _drawField         00B6 GR  |     _endX              **** GX
    _endY              **** GX  |   2 _fallingMusic      0B51 GR
  4 _frames            0017 GR  |   4 _gameState         001F GR
    _getField          **** GX  |   4 _infoText          0001 GR
    _initLevel         **** GX  |     _initSwatches      **** GX
    _isField           **** GX  |   2 _itoa              002E GR
    _lastBlockDire     **** GX  |   2 _led8              0B79 GR
    _level             **** GX  |     _levelCount        **** GX
  2 _levelEndMusic     0B37 GR  |   4 _levelHighscor     0019 GR
    _levelNumber       **** GX  |     _levelOffset       **** GX
    _levels            **** GX  |     _lineCount         **** GX
    _lineX0            **** GX  |     _lineX1            **** GX
    _lineY0            **** GX  |     _lineY1            **** GX
  2 _main              0A0E GR  |   2 _mainMenu          06C1 GR
  2 _moveBlock         02E4 GR  |     _moveBlockImpl     **** GX
  4 _moveCount         0015 GR  |   2 _movingMusic       0B71 GR
    _musicInit         **** GX  |     _musicPlay         **** GX
    _nextBank          **** GX  |   4 _picAvailable      001B GR
    _picRead           **** GX  |     _picWrite          **** GX
  2 _readEeprom        04D6 GR  |   2 _runtimeError      0000 GR
  2 _sendCommand       04B6 GR  |   2 _setBank           0929 GR
  2 _showInfo          0262 GR  |   2 _showInfo2         0180 GR
  4 _si                0000 R   |     _splitMode         **** GX
  2 _startBlockFal     02FD GR  |   2 _startLevel        04E9 GR
  2 _startMusic        0B17 GR  |     _swapSplit         **** GX
    _swatchSwitch      **** GX  |     _testMerge         **** GX
  2 _updateInfoTex     02A5 GR  |   3 _vecx              0002 GR
  2 _writeEeprom       0792 GR  |   2 drawFieldLoop      00CD R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  BA3   flags  100
   3 .data            size    4   flags  100
   4 .bss             size   20   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

