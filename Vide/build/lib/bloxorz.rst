                              1 ;;; gcc for m6809 : Sep 13 2017 10:25:42
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mint8
                              5 	.module	bloxorz.enr.c
                              6 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ;  options passed:  -O3 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ;  -fno-time-report
                             12 ;  -I/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include
                             13 ;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
                             14 ;  -I/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/include
                             15 ;  /home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c
                             16 ;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             17 ;  -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
                             18 ;  -fcrossjumping -fcse-follow-jumps -fdefer-pop
                             19 ;  -fdelete-null-pointer-checks -fearly-inlining
                             20 ;  -feliminate-unused-debug-types -fexpensive-optimizations
                             21 ;  -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
                             22 ;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             23 ;  -finline-functions -finline-functions-called-once
                             24 ;  -finline-small-functions -fipa-pure-const -fipa-reference -fivopts
                             25 ;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             26 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             27 ;  -foptimize-register-move -foptimize-sibling-calls -fpcc-struct-return
                             28 ;  -fpeephole -fpeephole2 -fpredictive-commoning -fregmove -freorder-blocks
                             29 ;  -freorder-functions -frerun-cse-after-loop -fsched-interblock
                             30 ;  -fsched-spec -fsched-stalled-insns-dep -fsigned-zeros
                             31 ;  -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
                             32 ;  -fstrict-overflow -fthread-jumps -ftoplevel-reorder -ftrapping-math
                             33 ;  -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             34 ;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             35 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             36 ;  -ftree-pre -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink
                             37 ;  -ftree-sra -ftree-store-ccp -ftree-ter -ftree-vect-loop-version
                             38 ;  -ftree-vectorize -ftree-vrp -funit-at-a-time -funswitch-loops
                             39 ;  -fverbose-asm -fzero-initialized-in-bss
                             40 ;  Compiler executable checksum: 2c98d3c5ec6c12badb1abdde57df156f
                             41 	.area .text
                             42 	.globl _itoa
   020C                      43 _itoa:
   020C 34 60         [ 7]   44 	pshs	y,u	; 
   020E 32 70         [ 5]   45 	leas	-16,s	; ,,
                             46 ;----- asm -----
                             47 ;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                             48 	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
                             49 ;  0 "" 2
                             50 ;--- end asm ---
   0210 CC 00 64      [ 3]   51 	ldd	#100	; ,
   0213 ED 6A         [ 6]   52 	std	10,s	; , muls
   0215 CC 00 0A      [ 3]   53 	ldd	#10	; ,
   0218 ED 6C         [ 6]   54 	std	12,s	; , muls
   021A CC 00 01      [ 3]   55 	ldd	#1	; ,
   021D ED 6E         [ 6]   56 	std	14,s	; , muls
                             57 ;----- asm -----
                             58 ;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                             59 	; #ENR#[228]	if (number > 999) number = 999;
                             60 ;  0 "" 2
                             61 ;--- end asm ---
   021F AF E4         [ 5]   62 	stx	,s	;  number, number.107
   0221 8C 03 E7      [ 4]   63 	cmpx	#999	;cmphi:	;  number,
   0224 23 05         [ 3]   64 	bls	L2	; 
   0226 8E 03 E7      [ 3]   65 	ldx	#999	; ,
   0229 AF E4         [ 5]   66 	stx	,s	; , number.107
   022B                      67 L2:
                             68 ;----- asm -----
                             69 ;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                             70 	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
                             71 ;  0 "" 2
                             72 ;--- end asm ---
   022B 30 6A         [ 5]   73 	leax	10,s	; ,,
   022D AF 66         [ 6]   74 	stx	6,s	; , ivtmp.103
   022F EC E8 16      [ 6]   75 	ldd	22,s	; , text
   0232 ED 68         [ 6]   76 	std	8,s	; , ivtmp.105
   0234                      77 L6:
                             78 ;----- asm -----
                             79 ;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                             80 	; #ENR#[230]		uint8_t d = 0;
                             81 ;  0 "" 2
                             82 ;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                             83 	; #ENR#[231]		while (number >= muls[i]) {
                             84 ;  0 "" 2
                             85 ;--- end asm ---
   0234 EE 84         [ 5]   86 	ldu	,x	;  D.2383, muls
   0236 C6 30         [ 2]   87 	ldb	#48	; ,
   0238 E7 63         [ 5]   88 	stb	3,s	; , prephitmp.84
   023A 11 A3 E4      [ 7]   89 	cmpu	,s	;cmphi:	;  D.2383, number.107
   023D 22 2F         [ 3]   90 	bhi	L4	; 
   023F 1F 30         [ 6]   91 	tfr	u,d	;  D.2383,
   0241 40            [ 2]   92 	nega
   0242 50            [ 2]   93 	negb
   0243 82 00         [ 2]   94 	sbca	#0
   0245 ED 64         [ 6]   95 	std	4,s	; , ivtmp.93
   0247 EC E4         [ 5]   96 	ldd	,s	; , number.107
   0249 34 40         [ 6]   97 	pshs	u	;subhi: R:d -= R:u	;  D.2383,
   024B A3 E1         [ 9]   98 	subd	,s++	; 
   024D ED E4         [ 5]   99 	std	,s	; , number.107
   024F 6F 62         [ 7]  100 	clr	2,s	;  d
   0251                     101 L5:
                            102 ;----- asm -----
                            103 ;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            104 	; #ENR#[232]			d++;
                            105 ;  0 "" 2
                            106 ;--- end asm ---
   0251 6C 62         [ 7]  107 	inc	2,s	;  d
                            108 ;----- asm -----
                            109 ;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            110 	; #ENR#[233]			number -= muls[i];
                            111 ;  0 "" 2
                            112 ;--- end asm ---
   0253 10 AE E4      [ 6]  113 	ldy	,s	;  number.109, number.107
   0256 1F 20         [ 6]  114 	tfr	y,d	; ,
   0258 E3 64         [ 7]  115 	addd	4,s	; , ivtmp.93
   025A ED E4         [ 5]  116 	std	,s	; , number.107
   025C 30 CB         [ 8]  117 	leax	d,u	;  tmp87,, D.2383
   025E 34 10         [ 6]  118 	pshs	x	;cmphi: R:x with R:u	;  tmp87, D.2383
   0260 11 A3 E1      [10]  119 	cmpu	,s++	;cmphi:	;  D.2383
   0263 23 EC         [ 3]  120 	bls	L5	; 
   0265 10 AF E4      [ 6]  121 	sty	,s	;  number.109, number.107
   0268 E6 62         [ 5]  122 	ldb	2,s	; , d
   026A CB 30         [ 2]  123 	addb	#48	; ,
   026C E7 63         [ 5]  124 	stb	3,s	; , prephitmp.84
   026E                     125 L4:
                            126 ;----- asm -----
                            127 ;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            128 	; #ENR#[235]		text[i] = d + '0';
                            129 ;  0 "" 2
                            130 ;--- end asm ---
   026E AE 68         [ 6]  131 	ldx	8,s	; , ivtmp.105
   0270 30 01         [ 5]  132 	leax	1,x	; ,,
   0272 AF 68         [ 6]  133 	stx	8,s	; , ivtmp.105
   0274 30 1F         [ 5]  134 	leax	-1,x	; ,,
   0276 E7 80         [ 6]  135 	stb	,x+	; ,
   0278 AE 66         [ 6]  136 	ldx	6,s	; , ivtmp.103
   027A 30 02         [ 5]  137 	leax	2,x	; ,,
   027C AF 66         [ 6]  138 	stx	6,s	; , ivtmp.103
   027E 1F 40         [ 6]  139 	tfr	s,d	; ,
   0280 C3 00 10      [ 4]  140 	addd	#16	; ,
   0283 34 06         [ 7]  141 	pshs	d	;cmphi: R:d with R:x	; ,
   0285 AC E1         [ 9]  142 	cmpx	,s++	;cmphi:	; 
   0287 10 26 FF A9   [ 6]  143 	lbne	L6	; 
   028B 32 E8 10      [ 5]  144 	leas	16,s	; ,,
   028E 35 E0         [ 8]  145 	puls	y,u,pc	; 
                            146 	.globl _isField
   0290                     147 _isField:
                            148 ;----- asm -----
                            149 ;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            150 	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
                            151 ;  0 "" 2
                            152 ;--- end asm ---
   0290 C1 2E         [ 2]  153 	cmpb	#46	;cmpqi:	;  c,
   0292 27 12         [ 3]  154 	beq	L12	; 
   0294 C1 61         [ 2]  155 	cmpb	#97	;cmpqi:	;  c,
   0296 27 0E         [ 3]  156 	beq	L12	; 
   0298 C8 6F         [ 2]  157 	eorb	#111	;  c,
   029A 4F            [ 2]  158 	clra		;zero_extendqihi: R:b -> R:d	;  c, tmp32
   029B C3 FF FF      [ 4]  159 	addd	#-1	;  tmp33,
   029E 1F 89         [ 6]  160 	tfr	a,b	; ,
   02A0 4F            [ 2]  161 	clra		;zero_extendqihi: R:b -> R:d	; ,
   02A1 59            [ 2]  162 	rolb	; 
   02A2 59            [ 2]  163 	rolb	; 
   02A3 C4 01         [ 2]  164 	andb	#1	; ,
   02A5 39            [ 5]  165 	rts
   02A6                     166 L12:
   02A6 C6 01         [ 2]  167 	ldb	#1	;  prephitmp.117,
   02A8 39            [ 5]  168 	rts
                            169 	.globl _x3d
   02A9                     170 _x3d:
   02A9 34 20         [ 6]  171 	pshs	y	; 
   02AB 32 7E         [ 5]  172 	leas	-2,s	; ,,
   02AD E7 E4         [ 4]  173 	stb	,s	;  x, x
                            174 ;----- asm -----
                            175 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            176 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                            177 ;  0 "" 2
                            178 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            179 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                            180 ;  0 "" 2
                            181 ;--- end asm ---
   02AF E6 67         [ 5]  182 	ldb	7,s	; , z
   02B1 86 FA         [ 2]  183 	lda	#-6	;mulqihi3	; 
   02B3 3D            [11]  184 	mul
   02B4 1F 02         [ 6]  185 	tfr	d,y	; , tmp32
   02B6 E6 E4         [ 4]  186 	ldb	,s	; , x
   02B8 CB FE         [ 2]  187 	addb	#-2	; ,
   02BA 86 0E         [ 2]  188 	lda	#14	;mulqihi3	; 
   02BC 3D            [11]  189 	mul
   02BD 1F 01         [ 6]  190 	tfr	d,x	; , tmp34
   02BF 1F 20         [ 6]  191 	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp32,
   02C1 E7 E4         [ 4]  192 	stb	,s	; ,
   02C3 1F 10         [ 6]  193 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp34,
   02C5 E7 61         [ 5]  194 	stb	1,s	; ,
   02C7 E6 E4         [ 4]  195 	ldb	,s	; ,
   02C9 EB 61         [ 5]  196 	addb	1,s	; ,
   02CB 32 62         [ 5]  197 	leas	2,s	; ,,
   02CD 35 A0         [ 7]  198 	puls	y,pc	; 
                            199 	.globl _y3d
   02CF                     200 _y3d:
   02CF 34 04         [ 6]  201 	pshs	b	; 
                            202 ;----- asm -----
                            203 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            204 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                            205 ;  0 "" 2
                            206 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            207 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                            208 ;  0 "" 2
                            209 ;--- end asm ---
   02D1 E6 63         [ 5]  210 	ldb	3,s	; , y
   02D3 CB F8         [ 2]  211 	addb	#-8	; ,
   02D5 86 0D         [ 2]  212 	lda	#13	;mulqihi3	; 
   02D7 3D            [11]  213 	mul
   02D8 1F 01         [ 6]  214 	tfr	d,x	; , tmp33
   02DA 68 64         [ 7]  215 	asl	4,s	;  z
   02DC 68 64         [ 7]  216 	asl	4,s	;  z
   02DE 68 64         [ 7]  217 	asl	4,s	;  z
   02E0 1F 10         [ 6]  218 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp33, tmp36
   02E2 EB 64         [ 5]  219 	addb	4,s	;  tmp36, z
   02E4 E7 64         [ 5]  220 	stb	4,s	;  tmp36, z
   02E6 E6 E4         [ 4]  221 	ldb	,s	;  tmp38, x
   02E8 58            [ 2]  222 	aslb	;  tmp38
   02E9 EB E4         [ 4]  223 	addb	,s	;  tmp38, x
   02EB EB 64         [ 5]  224 	addb	4,s	;  tmp38, z
   02ED E7 64         [ 5]  225 	stb	4,s	;  tmp38, z
   02EF 32 61         [ 5]  226 	leas	1,s	; ,,
   02F1 39            [ 5]  227 	rts
                            228 	.globl _addLine
   02F2                     229 _addLine:
   02F2 34 60         [ 7]  230 	pshs	y,u	; 
   02F4 32 7C         [ 5]  231 	leas	-4,s	; ,,
   02F6 E7 62         [ 5]  232 	stb	2,s	;  x0, x0
                            233 ;----- asm -----
                            234 ;  296 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            235 	; #ENR#[266]	lineX0[lineCount] = x3d(x0, 0, y0);
                            236 ;  0 "" 2
                            237 ;--- end asm ---
   02F8 F6 C8 88      [ 5]  238 	ldb	_lineCount	; , lineCount
   02FB E7 63         [ 5]  239 	stb	3,s	; , lineCount.8
                            240 ;----- asm -----
                            241 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            242 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                            243 ;  0 "" 2
                            244 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            245 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                            246 ;  0 "" 2
                            247 ;--- end asm ---
   02FD 4F            [ 2]  248 	clra		;zero_extendqihi: R:b -> R:d	; ,
   02FE 1F 02         [ 6]  249 	tfr	d,y	; , lineCount.8
   0300 E6 6A         [ 5]  250 	ldb	10,s	; , y0
   0302 86 FA         [ 2]  251 	lda	#-6	;mulqihi3	; 
   0304 3D            [11]  252 	mul
   0305 1F 01         [ 6]  253 	tfr	d,x	; , tmp35
   0307 E6 62         [ 5]  254 	ldb	2,s	; , x0
   0309 CB FE         [ 2]  255 	addb	#-2	; ,
   030B E7 62         [ 5]  256 	stb	2,s	; , x0
   030D 86 0E         [ 2]  257 	lda	#14	;mulqihi3	; 
   030F 3D            [11]  258 	mul
   0310 1F 03         [ 6]  259 	tfr	d,u	; , tmp37
   0312 E6 62         [ 5]  260 	ldb	2,s	; , x0
   0314 CB 02         [ 2]  261 	addb	#2	; ,
   0316 E7 62         [ 5]  262 	stb	2,s	; , x0
   0318 1F 10         [ 6]  263 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp35,
   031A E7 61         [ 5]  264 	stb	1,s	; ,
   031C 1F 30         [ 6]  265 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp37, tmp39
   031E EB 61         [ 5]  266 	addb	1,s	;  tmp39,
   0320 E7 A9 C8 9E   [ 8]  267 	stb	_lineX0,y	;  tmp39, lineX0
                            268 ;----- asm -----
                            269 ;  298 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            270 	; #ENR#[267]	lineY0[lineCount] = y3d(x0, 0, y0);
                            271 ;  0 "" 2
                            272 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            273 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                            274 ;  0 "" 2
                            275 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            276 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                            277 ;  0 "" 2
                            278 ;--- end asm ---
   0324 E6 62         [ 5]  279 	ldb	2,s	;  tmp44, x0
   0326 58            [ 2]  280 	aslb	;  tmp44
   0327 EB 62         [ 5]  281 	addb	2,s	;  tmp44, x0
   0329 CB 98         [ 2]  282 	addb	#-104	;  tmp44,
   032B 68 6A         [ 7]  283 	asl	10,s	;  y0
   032D 68 6A         [ 7]  284 	asl	10,s	;  y0
   032F 68 6A         [ 7]  285 	asl	10,s	;  y0
   0331 EB 6A         [ 5]  286 	addb	10,s	;  tmp44, y0
   0333 E7 A9 C9 16   [ 8]  287 	stb	_lineY0,y	;  tmp44, lineY0
                            288 ;----- asm -----
                            289 ;  300 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            290 	; #ENR#[268]	lineX1[lineCount] = x3d(x1, 0, y1);
                            291 ;  0 "" 2
                            292 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            293 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                            294 ;  0 "" 2
                            295 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            296 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                            297 ;  0 "" 2
                            298 ;--- end asm ---
   0337 E6 6C         [ 5]  299 	ldb	12,s	; , y1
   0339 86 FA         [ 2]  300 	lda	#-6	;mulqihi3	; 
   033B 3D            [11]  301 	mul
   033C 1F 01         [ 6]  302 	tfr	d,x	; , tmp51
   033E E6 6B         [ 5]  303 	ldb	11,s	; , x1
   0340 CB FE         [ 2]  304 	addb	#-2	; ,
   0342 E7 6B         [ 5]  305 	stb	11,s	; , x1
   0344 86 0E         [ 2]  306 	lda	#14	;mulqihi3	; 
   0346 3D            [11]  307 	mul
   0347 1F 03         [ 6]  308 	tfr	d,u	; , tmp53
   0349 E6 6B         [ 5]  309 	ldb	11,s	; , x1
   034B CB 02         [ 2]  310 	addb	#2	; ,
   034D E7 6B         [ 5]  311 	stb	11,s	; , x1
   034F 1F 10         [ 6]  312 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp51,
   0351 E7 E4         [ 4]  313 	stb	,s	; ,
   0353 1F 30         [ 6]  314 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp53, tmp55
   0355 EB E4         [ 4]  315 	addb	,s	;  tmp55,
   0357 E7 A9 C9 8E   [ 8]  316 	stb	_lineX1,y	;  tmp55, lineX1
                            317 ;----- asm -----
                            318 ;  302 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            319 	; #ENR#[269]	lineY1[lineCount] = y3d(x1, 0, y1);
                            320 ;  0 "" 2
                            321 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            322 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                            323 ;  0 "" 2
                            324 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            325 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                            326 ;  0 "" 2
                            327 ;--- end asm ---
   035B E6 6B         [ 5]  328 	ldb	11,s	;  tmp60, x1
   035D 58            [ 2]  329 	aslb	;  tmp60
   035E EB 6B         [ 5]  330 	addb	11,s	;  tmp60, x1
   0360 CB 98         [ 2]  331 	addb	#-104	;  tmp60,
   0362 68 6C         [ 7]  332 	asl	12,s	;  y1
   0364 68 6C         [ 7]  333 	asl	12,s	;  y1
   0366 68 6C         [ 7]  334 	asl	12,s	;  y1
   0368 EB 6C         [ 5]  335 	addb	12,s	;  tmp60, y1
   036A E7 A9 CA 06   [ 8]  336 	stb	_lineY1,y	;  tmp60, lineY1
                            337 ;----- asm -----
                            338 ;  304 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            339 	; #ENR#[270]	lineCount++;
                            340 ;  0 "" 2
                            341 ;--- end asm ---
   036E E6 63         [ 5]  342 	ldb	3,s	; , lineCount.8
   0370 5C            [ 2]  343 	incb	; 
   0371 F7 C8 88      [ 5]  344 	stb	_lineCount	; , lineCount
   0374 32 64         [ 5]  345 	leas	4,s	; ,,
   0376 35 E0         [ 8]  346 	puls	y,u,pc	; 
                            347 	.globl _addTarget
   0378                     348 _addTarget:
   0378 34 40         [ 6]  349 	pshs	u	; 
   037A 32 73         [ 5]  350 	leas	-13,s	; ,,
   037C E7 61         [ 5]  351 	stb	1,s	;  x, x
                            352 ;----- asm -----
                            353 ;  310 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            354 	; #ENR#[275]	lineX0[lineCount] = x3d(x, 0, y);
                            355 ;  0 "" 2
                            356 ;--- end asm ---
   037E F6 C8 88      [ 5]  357 	ldb	_lineCount	; , lineCount
   0381 E7 62         [ 5]  358 	stb	2,s	; , lineCount.10
                            359 ;----- asm -----
                            360 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            361 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                            362 ;  0 "" 2
                            363 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            364 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                            365 ;  0 "" 2
                            366 ;--- end asm ---
   0383 E6 61         [ 5]  367 	ldb	1,s	; , x
   0385 CB FE         [ 2]  368 	addb	#-2	; ,
   0387 E7 61         [ 5]  369 	stb	1,s	; , x
   0389 86 0E         [ 2]  370 	lda	#14	;mulqihi3	; 
   038B 3D            [11]  371 	mul
   038C 1F 01         [ 6]  372 	tfr	d,x	; , tmp42
   038E E6 61         [ 5]  373 	ldb	1,s	; , x
   0390 CB 02         [ 2]  374 	addb	#2	; ,
   0392 E7 61         [ 5]  375 	stb	1,s	; , x
   0394 1F 10         [ 6]  376 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp42,
   0396 E7 67         [ 5]  377 	stb	7,s	; , D.2801
   0398 E6 E8 11      [ 5]  378 	ldb	17,s	; , y
   039B 86 FA         [ 2]  379 	lda	#-6	;mulqihi3	; 
   039D 3D            [11]  380 	mul
                            381 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   039E 1F 01         [ 6]  382 	tfr	d,x	; , tmp43
                            383 ; ORG>	tfr	d,x	; , tmp43
                            384 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp43,
   03A0 E7 66         [ 5]  385 	stb	6,s	; , D.2802
   03A2 E6 62         [ 5]  386 	ldb	2,s	; , lineCount.10
   03A4 4F            [ 2]  387 	clra		;zero_extendqihi: R:b -> R:d	; ,
   03A5 1F 01         [ 6]  388 	tfr	d,x	; , lineCount.10
   03A7 E6 66         [ 5]  389 	ldb	6,s	; , D.2802
   03A9 EB 67         [ 5]  390 	addb	7,s	; , D.2801
   03AB E7 89 C8 9E   [ 8]  391 	stb	_lineX0,x	; , lineX0
                            392 ;----- asm -----
                            393 ;  312 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            394 	; #ENR#[276]	lineY0[lineCount] = y3d(x, 0, y);
                            395 ;  0 "" 2
                            396 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            397 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                            398 ;  0 "" 2
                            399 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            400 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                            401 ;  0 "" 2
                            402 ;--- end asm ---
   03AF E6 61         [ 5]  403 	ldb	1,s	; , x
   03B1 58            [ 2]  404 	aslb	; 
   03B2 EB 61         [ 5]  405 	addb	1,s	; , x
   03B4 CB 98         [ 2]  406 	addb	#-104	; ,
   03B6 E7 69         [ 5]  407 	stb	9,s	; , D.2810
   03B8 E6 E8 11      [ 5]  408 	ldb	17,s	; , y
   03BB 58            [ 2]  409 	aslb	; 
   03BC 58            [ 2]  410 	aslb	; 
   03BD 58            [ 2]  411 	aslb	; 
   03BE E7 68         [ 5]  412 	stb	8,s	; , D.2811
   03C0 EB 69         [ 5]  413 	addb	9,s	; , D.2810
   03C2 E7 89 C9 16   [ 8]  414 	stb	_lineY0,x	; , lineY0
                            415 ;----- asm -----
                            416 ;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            417 	; #ENR#[277]	lineX1[lineCount] = x3d(x + 1, 0, y + 1);
                            418 ;  0 "" 2
                            419 ;--- end asm ---
   03C6 E6 E8 11      [ 5]  420 	ldb	17,s	; , y
   03C9 5C            [ 2]  421 	incb	; 
   03CA E7 63         [ 5]  422 	stb	3,s	; , D.2436
   03CC E6 61         [ 5]  423 	ldb	1,s	; , x
   03CE 5C            [ 2]  424 	incb	; 
   03CF E7 64         [ 5]  425 	stb	4,s	; , D.2437
                            426 ;----- asm -----
                            427 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            428 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                            429 ;  0 "" 2
                            430 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            431 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                            432 ;  0 "" 2
                            433 ;--- end asm ---
   03D1 6A 61         [ 7]  434 	dec	1,s	;  x
   03D3 E6 61         [ 5]  435 	ldb	1,s	; , x
   03D5 86 0E         [ 2]  436 	lda	#14	;mulqihi3	; 
   03D7 3D            [11]  437 	mul
                            438 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   03D8 1F 03         [ 6]  439 	tfr	d,u	; , tmp54
                            440 ; ORG>	tfr	d,u	; , tmp54
                            441 ; ORG>	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp54,
   03DA E7 6B         [ 5]  442 	stb	11,s	; , D.2817
   03DC E6 63         [ 5]  443 	ldb	3,s	; , D.2436
   03DE 86 FA         [ 2]  444 	lda	#-6	;mulqihi3	; 
   03E0 3D            [11]  445 	mul
                            446 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   03E1 1F 03         [ 6]  447 	tfr	d,u	; , tmp55
                            448 ; ORG>	tfr	d,u	; , tmp55
                            449 ; ORG>	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp55,
   03E3 E7 6A         [ 5]  450 	stb	10,s	; , D.2818
   03E5 EB 6B         [ 5]  451 	addb	11,s	; , D.2817
   03E7 E7 89 C9 8E   [ 8]  452 	stb	_lineX1,x	; , lineX1
                            453 ;----- asm -----
                            454 ;  316 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            455 	; #ENR#[278]	lineY1[lineCount] = y3d(x + 1, 0, y + 1);
                            456 ;  0 "" 2
                            457 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            458 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                            459 ;  0 "" 2
                            460 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            461 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                            462 ;  0 "" 2
                            463 ;--- end asm ---
   03EB E6 64         [ 5]  464 	ldb	4,s	; , D.2437
   03ED 58            [ 2]  465 	aslb	; 
   03EE EB 64         [ 5]  466 	addb	4,s	; , D.2437
   03F0 CB 98         [ 2]  467 	addb	#-104	; ,
   03F2 E7 E4         [ 4]  468 	stb	,s	; , D.2826
   03F4 E6 63         [ 5]  469 	ldb	3,s	; , D.2436
   03F6 58            [ 2]  470 	aslb	; 
   03F7 58            [ 2]  471 	aslb	; 
   03F8 58            [ 2]  472 	aslb	; 
   03F9 E7 6C         [ 5]  473 	stb	12,s	; , D.2827
   03FB E6 E4         [ 4]  474 	ldb	,s	; , D.2826
   03FD EB 6C         [ 5]  475 	addb	12,s	; , D.2827
   03FF E7 89 CA 06   [ 8]  476 	stb	_lineY1,x	; , lineY1
                            477 ;----- asm -----
                            478 ;  318 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            479 	; #ENR#[279]	lineCount++;
                            480 ;  0 "" 2
                            481 ;--- end asm ---
   0403 E6 62         [ 5]  482 	ldb	2,s	; , lineCount.10
   0405 5C            [ 2]  483 	incb	; 
   0406 E7 65         [ 5]  484 	stb	5,s	; , lineCount.11
                            485 ;----- asm -----
                            486 ;  320 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            487 	; #ENR#[280]	lineX0[lineCount] = x3d(x + 1, 0, y);
                            488 ;  0 "" 2
                            489 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            490 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                            491 ;  0 "" 2
                            492 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            493 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                            494 ;  0 "" 2
                            495 ;--- end asm ---
   0408 4F            [ 2]  496 	clra		;zero_extendqihi: R:b -> R:d	; ,
   0409 1F 01         [ 6]  497 	tfr	d,x	; , lineCount.11
   040B E6 6B         [ 5]  498 	ldb	11,s	; , D.2817
   040D EB 66         [ 5]  499 	addb	6,s	; , D.2802
   040F E7 89 C8 9E   [ 8]  500 	stb	_lineX0,x	; , lineX0
                            501 ;----- asm -----
                            502 ;  322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            503 	; #ENR#[281]	lineY0[lineCount] = y3d(x + 1, 0, y);
                            504 ;  0 "" 2
                            505 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            506 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                            507 ;  0 "" 2
                            508 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            509 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                            510 ;  0 "" 2
                            511 ;--- end asm ---
   0413 E6 E4         [ 4]  512 	ldb	,s	; , D.2826
   0415 EB 68         [ 5]  513 	addb	8,s	; , D.2811
   0417 E7 89 C9 16   [ 8]  514 	stb	_lineY0,x	; , lineY0
                            515 ;----- asm -----
                            516 ;  324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            517 	; #ENR#[282]	lineX1[lineCount] = x3d(x, 0, y + 1);
                            518 ;  0 "" 2
                            519 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            520 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                            521 ;  0 "" 2
                            522 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            523 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                            524 ;  0 "" 2
                            525 ;--- end asm ---
   041B E6 6A         [ 5]  526 	ldb	10,s	; , D.2818
   041D EB 67         [ 5]  527 	addb	7,s	; , D.2801
   041F E7 89 C9 8E   [ 8]  528 	stb	_lineX1,x	; , lineX1
                            529 ;----- asm -----
                            530 ;  326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            531 	; #ENR#[283]	lineY1[lineCount] = y3d(x, 0, y + 1);
                            532 ;  0 "" 2
                            533 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            534 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                            535 ;  0 "" 2
                            536 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            537 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                            538 ;  0 "" 2
                            539 ;--- end asm ---
   0423 E6 6C         [ 5]  540 	ldb	12,s	; , D.2827
   0425 EB 69         [ 5]  541 	addb	9,s	; , D.2810
   0427 E7 89 CA 06   [ 8]  542 	stb	_lineY1,x	; , lineY1
                            543 ;----- asm -----
                            544 ;  328 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            545 	; #ENR#[284]	lineCount++;
                            546 ;  0 "" 2
                            547 ;--- end asm ---
   042B E6 65         [ 5]  548 	ldb	5,s	; , lineCount.11
   042D 5C            [ 2]  549 	incb	; 
   042E F7 C8 88      [ 5]  550 	stb	_lineCount	; , lineCount
   0431 32 6D         [ 5]  551 	leas	13,s	; ,,
   0433 35 C0         [ 7]  552 	puls	u,pc	; 
                            553 	.globl _changeMusic
   0435                     554 _changeMusic:
                            555 ;----- asm -----
                            556 ;  452 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            557 	; #ENR#[367]	tstat = 1;
                            558 ;  0 "" 2
                            559 ;--- end asm ---
   0435 C6 01         [ 2]  560 	ldb	#1	; ,
   0437 F7 C8 56      [ 5]  561 	stb	-14250	; ,
                            562 ;----- asm -----
                            563 ;  454 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            564 	; #ENR#[368]	currentMusic = music;
                            565 ;  0 "" 2
                            566 ;--- end asm ---
   043A BF C8 80      [ 6]  567 	stx	_currentMusic	;  music, currentMusic
   043D 39            [ 5]  568 	rts
                            569 	.globl _drawField
   043E                     570 _drawField:
   043E 32 7F         [ 5]  571 	leas	-1,s	; ,,
                            572 ;----- asm -----
                            573 ;  719 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            574 	; #ENR#[513]	intens(0x55);
                            575 ;  0 "" 2
                            576 ;--- end asm ---
   0440 C6 55         [ 2]  577 	ldb	#85	; ,
   0442 E7 E4         [ 4]  578 	stb	,s	; , a
                            579 ;----- asm -----
                            580 ;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0444 A6 E4         [ 4]  581 	lda ,s	;  a
   0446 BD F2 AB      [ 8]  582 	jsr ___Intensity_a; BIOS call
                            583 ;  0 "" 2
                            584 ;  734 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0449 34 5E         [10]  585 		pshs a, b, dp, x, u
                            586 ;  0 "" 2
                            587 ;  735 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   044B 86 D0         [ 2]  588 		lda #0xd0
                            589 ;  0 "" 2
                            590 ;  736 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   044D 1F 8B         [ 6]  591 		tfr a, dp
                            592 ;  0 "" 2
                            593 ;  737 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   044F 8E 00 00      [ 3]  594 		ldx #0
                            595 ;  0 "" 2
                            596 ;  738 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0452 F6 C8 88      [ 5]  597 		ldb _lineCount
                            598 ;  0 "" 2
                            599 ;  739 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0455                     600 	drawFieldLoop:
                            601 ;  0 "" 2
                            602 ;  740 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0455 34 04         [ 6]  603 		pshs b
                            604 ;  0 "" 2
                            605 ;  741 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0457 34 10         [ 6]  606 		pshs x
                            607 ;  0 "" 2
                            608 ;  742 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0459 BD F3 54      [ 8]  609 		jsr 0xf354
                            610 ;  0 "" 2
                            611 ;  743 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   045C 35 10         [ 6]  612 		puls x
                            613 ;  0 "" 2
                            614 ;  744 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   045E A6 89 C9 16   [ 8]  615 		lda _lineY0,x
                            616 ;  0 "" 2
                            617 ;  745 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0462 E6 89 C8 9E   [ 8]  618 		ldb _lineX0,x
                            619 ;  0 "" 2
                            620 ;  746 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0466 34 10         [ 6]  621 		pshs x
                            622 ;  0 "" 2
                            623 ;  747 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0468 BD F2 FC      [ 8]  624 		jsr 0xf2fc
                            625 ;  0 "" 2
                            626 ;  748 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   046B 35 10         [ 6]  627 		puls x
                            628 ;  0 "" 2
                            629 ;  749 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   046D A6 89 CA 06   [ 8]  630 		lda _lineY1,x
                            631 ;  0 "" 2
                            632 ;  750 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0471 E6 89 C9 8E   [ 8]  633 		ldb _lineX1,x
                            634 ;  0 "" 2
                            635 ;  751 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0475 A0 89 C9 16   [ 8]  636 		suba _lineY0,x
                            637 ;  0 "" 2
                            638 ;  752 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0479 E0 89 C8 9E   [ 8]  639 		subb _lineX0,x
                            640 ;  0 "" 2
                            641 ;  753 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   047D 34 10         [ 6]  642 		pshs x
                            643 ;  0 "" 2
                            644 ;  754 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   047F BD F3 DF      [ 8]  645 		jsr 0xf3df
                            646 ;  0 "" 2
                            647 ;  755 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0482 35 10         [ 6]  648 		puls x
                            649 ;  0 "" 2
                            650 ;  756 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0484 A6 80         [ 6]  651 		lda ,x+
                            652 ;  0 "" 2
                            653 ;  757 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0486 35 04         [ 6]  654 		puls b
                            655 ;  0 "" 2
                            656 ;  758 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0488 5A            [ 2]  657 		decb
                            658 ;  0 "" 2
                            659 ;  759 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   0489 26 CA         [ 3]  660 		bne drawFieldLoop
                            661 ;  0 "" 2
                            662 ;  760 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
   048B 35 5E         [10]  663 		puls a, b, dp, x, u
                            664 ;  0 "" 2
                            665 ;--- end asm ---
   048D 32 61         [ 5]  666 	leas	1,s	; ,,
   048F 39            [ 5]  667 	rts
                            668 	.globl _drawBlock
   0490                     669 _drawBlock:
   0490 34 40         [ 6]  670 	pshs	u	; 
   0492 32 75         [ 5]  671 	leas	-11,s	; ,,
   0494 E7 65         [ 5]  672 	stb	5,s	;  yofs, yofs
                            673 ;----- asm -----
                            674 ;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            675 	; #ENR#[559]	zergnd();
                            676 ;  0 "" 2
                            677 ;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0496 BD F3 54      [ 8]  678 	jsr ___Reset0Ref; BIOS call
                            679 ;  0 "" 2
                            680 ;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            681 	; #ENR#[560]	intens(0x63);
                            682 ;  0 "" 2
                            683 ;--- end asm ---
   0499 C6 63         [ 2]  684 	ldb	#99	; ,
   049B E7 69         [ 5]  685 	stb	9,s	; , a
                            686 ;----- asm -----
                            687 ;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   049D A6 69         [ 5]  688 	lda 9,s	;  a
   049F BD F2 AB      [ 8]  689 	jsr ___Intensity_a; BIOS call
                            690 ;  0 "" 2
                            691 ;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            692 	; #ENR#[561]	positd(0, yofs);
                            693 ;  0 "" 2
                            694 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            695 	; #ENR#[50]	Moveto_d_7F(y,x);
                            696 ;  0 "" 2
                            697 ;--- end asm ---
   04A2 E6 65         [ 5]  698 	ldb	5,s	; , yofs
   04A4 E7 6A         [ 5]  699 	stb	10,s	; , a
   04A6 6F 69         [ 7]  700 	clr	9,s	;  b
                            701 ;----- asm -----
                            702 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   04A8 A6 6A         [ 5]  703 	lda 10,s	;  a
   04AA E6 69         [ 5]  704 	ldb 9,s	;  b
   04AC BD F2 FC      [ 8]  705 	jsr ___Moveto_d_7F; BIOS call
                            706 ;  0 "" 2
                            707 ;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            708 	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                            709 ;  0 "" 2
                            710 ;--- end asm ---
   04AF F6 CA 7F      [ 5]  711 	ldb	_blockX	; , blockX
   04B2 E7 66         [ 5]  712 	stb	6,s	; , blockX.40
                            713 ;----- asm -----
                            714 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            715 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                            716 ;  0 "" 2
                            717 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            718 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                            719 ;  0 "" 2
                            720 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            721 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                            722 ;  0 "" 2
                            723 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            724 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                            725 ;  0 "" 2
                            726 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            727 	; #ENR#[50]	Moveto_d_7F(y,x);
                            728 ;  0 "" 2
                            729 ;--- end asm ---
   04B4 58            [ 2]  730 	aslb	; 
   04B5 EB 66         [ 5]  731 	addb	6,s	; , blockX.40
   04B7 E7 62         [ 5]  732 	stb	2,s	; ,
   04B9 F6 CA 80      [ 5]  733 	ldb	_blockY	; , blockY
   04BC 58            [ 2]  734 	aslb	; 
   04BD 58            [ 2]  735 	aslb	; 
   04BE 58            [ 2]  736 	aslb	; 
   04BF E7 64         [ 5]  737 	stb	4,s	; ,
   04C1 E6 62         [ 5]  738 	ldb	2,s	; ,
   04C3 EB 64         [ 5]  739 	addb	4,s	; ,
   04C5 CB 98         [ 2]  740 	addb	#-104	; ,
   04C7 E7 69         [ 5]  741 	stb	9,s	; , a
   04C9 E6 66         [ 5]  742 	ldb	6,s	; , blockX.40
   04CB CB FE         [ 2]  743 	addb	#-2	; ,
   04CD 86 0E         [ 2]  744 	lda	#14	;mulqihi3	; 
   04CF 3D            [11]  745 	mul
   04D0 1F 03         [ 6]  746 	tfr	d,u	; , tmp36
   04D2 F6 CA 80      [ 5]  747 	ldb	_blockY	; , blockY
   04D5 86 FA         [ 2]  748 	lda	#-6	;mulqihi3	; 
   04D7 3D            [11]  749 	mul
   04D8 1F 01         [ 6]  750 	tfr	d,x	; , tmp37
   04DA 1F 30         [ 6]  751 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp36,
   04DC E7 63         [ 5]  752 	stb	3,s	; ,
   04DE 1F 10         [ 6]  753 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp37, tmp39
   04E0 EB 63         [ 5]  754 	addb	3,s	;  tmp39,
   04E2 E7 6A         [ 5]  755 	stb	10,s	;  tmp39, b
                            756 ;----- asm -----
                            757 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   04E4 A6 69         [ 5]  758 	lda 9,s	;  a
   04E6 E6 6A         [ 5]  759 	ldb 10,s	;  b
   04E8 BD F2 FC      [ 8]  760 	jsr ___Moveto_d_7F; BIOS call
                            761 ;  0 "" 2
                            762 ;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            763 	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                            764 ;  0 "" 2
                            765 ;--- end asm ---
   04EB F6 CA 85      [ 5]  766 	ldb	_blockAnimationStep	; , blockAnimationStep
   04EE 1D            [ 2]  767 	sex		;extendqihi2: R:b -> R:d	; ,
   04EF ED E4         [ 5]  768 	std	,s	; ,
   04F1 58            [ 2]  769 	aslb	; 
   04F2 49            [ 2]  770 	rola	; 
   04F3 FE CA 81      [ 6]  771 	ldu	_blockAnimation	; , blockAnimation
   04F6 30 CB         [ 8]  772 	leax	d,u	;  tmp43, tmp42,
   04F8 AE 84         [ 5]  773 	ldx	,x	; ,
                            774 ; Applied peep: 2 (no load after store)
                            775 ;----- asm -----
                            776 ;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   04FA AF 67         [ 6]  777 	stx	7,s	; , x
                            778 ; ORG>	stx	7,s	; , x
                            779 ; ORG>;----- asm -----
                            780 ; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
                            781 ; ORG>	ldx 7,s	;  x
   04FC BD F4 08      [ 8]  782 	jsr ___Draw_VLp_7F; BIOS call
                            783 ;  0 "" 2
                            784 ;--- end asm ---
   04FF 32 6B         [ 5]  785 	leas	11,s	; ,,
   0501 35 C0         [ 7]  786 	puls	u,pc	; 
                            787 	.globl _doBlockAnimation
   0503                     788 _doBlockAnimation:
                            789 ;----- asm -----
                            790 ;  834 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            791 	; #ENR#[603]	if (blockAnimating) {
                            792 ;  0 "" 2
                            793 ;--- end asm ---
   0503 7D CA 86      [ 7]  794 	tst	_blockAnimating	;  blockAnimating
   0506 27 0A         [ 3]  795 	beq	L32	; 
                            796 ;----- asm -----
                            797 ;  836 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            798 	; #ENR#[604]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
                            799 ;  0 "" 2
                            800 ;--- end asm ---
   0508 7C CA 85      [ 7]  801 	inc	_blockAnimationStep	;  blockAnimationStep
   050B F6 CA 85      [ 5]  802 	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
   050E C1 0C         [ 2]  803 	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
   0510 27 01         [ 3]  804 	beq	L33	; 
   0512                     805 L32:
   0512 39            [ 5]  806 	rts
   0513                     807 L33:
                            808 ;----- asm -----
                            809 ;  838 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            810 	; #ENR#[605]			blockX = nextBlockX;
                            811 ;  0 "" 2
                            812 ;--- end asm ---
   0513 F6 CA 87      [ 5]  813 	ldb	_nextBlockX	; , nextBlockX
   0516 F7 CA 7F      [ 5]  814 	stb	_blockX	; , blockX
                            815 ;----- asm -----
                            816 ;  840 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            817 	; #ENR#[606]			blockY = nextBlockY;
                            818 ;  0 "" 2
                            819 ;--- end asm ---
   0519 F6 CA 88      [ 5]  820 	ldb	_nextBlockY	; , nextBlockY
   051C F7 CA 80      [ 5]  821 	stb	_blockY	; , blockY
                            822 ;----- asm -----
                            823 ;  842 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            824 	; #ENR#[607]			blockAnimationStep = 0;
                            825 ;  0 "" 2
                            826 ;--- end asm ---
   051F 7F CA 85      [ 7]  827 	clr	_blockAnimationStep	;  blockAnimationStep
                            828 ;----- asm -----
                            829 ;  844 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            830 	; #ENR#[608]			blockAnimation = nextBlockAnimation;
                            831 ;  0 "" 2
                            832 ;--- end asm ---
   0522 BE CA 83      [ 6]  833 	ldx	_nextBlockAnimation	; , nextBlockAnimation
   0525 BF CA 81      [ 6]  834 	stx	_blockAnimation	; , blockAnimation
                            835 ;----- asm -----
                            836 ;  846 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            837 	; #ENR#[609]			blockAnimating = 0;
                            838 ;  0 "" 2
                            839 ;--- end asm ---
   0528 7F CA 86      [ 7]  840 	clr	_blockAnimating	;  blockAnimating
   052B 39            [ 5]  841 	rts
                            842 	.globl _sendCommand
   052C                     843 _sendCommand:
   052C 32 7E         [ 5]  844 	leas	-2,s	; ,,
   052E E7 E4         [ 4]  845 	stb	,s	;  cmd, cmd
                            846 ;----- asm -----
                            847 ;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            848 	; #ENR#[197]	uint8_t result;
                            849 ;  0 "" 2
                            850 ;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            851 	; #ENR#[198]	picWrite('V');
                            852 ;  0 "" 2
                            853 ;--- end asm ---
   0530 C6 56         [ 2]  854 	ldb	#86	; ,
   0532 BD 01 55      [ 8]  855 	jsr	_picWrite	; 
                            856 ;----- asm -----
                            857 ;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            858 	; #ENR#[199]	picWrite(cmd);
                            859 ;  0 "" 2
                            860 ;--- end asm ---
   0535 E6 E4         [ 4]  861 	ldb	,s	; , cmd
   0537 BD 01 55      [ 8]  862 	jsr	_picWrite	; 
                            863 ;----- asm -----
                            864 ;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            865 	; #ENR#[200]	picWrite(arg);
                            866 ;  0 "" 2
                            867 ;--- end asm ---
   053A E6 64         [ 5]  868 	ldb	4,s	; , arg
   053C BD 01 55      [ 8]  869 	jsr	_picWrite	; 
                            870 ;----- asm -----
                            871 ;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            872 	; #ENR#[201]	result = picRead();
                            873 ;  0 "" 2
                            874 ;--- end asm ---
   053F BD 01 A1      [ 8]  875 	jsr	_picRead	; 
   0542 E7 61         [ 5]  876 	stb	1,s	; , result
                            877 ;----- asm -----
                            878 ;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            879 	; #ENR#[202]	delay10ms();
                            880 ;  0 "" 2
                            881 ;--- end asm ---
   0544 BD 01 FE      [ 8]  882 	jsr	_delay10ms	; 
                            883 ;----- asm -----
                            884 ;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            885 	; #ENR#[203]	return result;
                            886 ;  0 "" 2
                            887 ;--- end asm ---
   0547 E6 61         [ 5]  888 	ldb	1,s	; , result
   0549 32 62         [ 5]  889 	leas	2,s	; ,,
   054B 39            [ 5]  890 	rts
                            891 	.globl _updateInfoText
   054C                     892 _updateInfoText:
   054C 34 60         [ 7]  893 	pshs	y,u	; 
   054E 32 E8 E8      [ 5]  894 	leas	-24,s	; ,,
                            895 ;----- asm -----
                            896 ;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            897 	; #ENR#[241]	itoa(moveCount, &infoText[0]);
                            898 ;  0 "" 2
                            899 ;--- end asm ---
   0551 FE C8 9B      [ 6]  900 	ldu	_moveCount	;  number, moveCount
                            901 ;----- asm -----
                            902 ;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            903 	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
                            904 ;  0 "" 2
                            905 ;--- end asm ---
   0554 CC 00 64      [ 3]  906 	ldd	#100	; ,
   0557 ED E8 12      [ 6]  907 	std	18,s	; , muls
   055A CC 00 0A      [ 3]  908 	ldd	#10	; ,
   055D ED E8 14      [ 6]  909 	std	20,s	; , muls
   0560 CC 00 01      [ 3]  910 	ldd	#1	; ,
   0563 ED E8 16      [ 6]  911 	std	22,s	; , muls
                            912 ;----- asm -----
                            913 ;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            914 	; #ENR#[228]	if (number > 999) number = 999;
                            915 ;  0 "" 2
                            916 ;--- end asm ---
   0566 EF E4         [ 5]  917 	stu	,s	;  number, number.280
   0568 11 83 03 E7   [ 5]  918 	cmpu	#999	;cmphi:	;  number,
   056C 23 05         [ 3]  919 	bls	L37	; 
   056E 8E 03 E7      [ 3]  920 	ldx	#999	; ,
   0571 AF E4         [ 5]  921 	stx	,s	; , number.280
   0573                     922 L37:
                            923 ;----- asm -----
                            924 ;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            925 	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
                            926 ;  0 "" 2
                            927 ;--- end asm ---
   0573 30 E8 12      [ 5]  928 	leax	18,s	; ,,
   0576 AF 6D         [ 6]  929 	stx	13,s	; , ivtmp.272
   0578 8E C8 91      [ 3]  930 	ldx	#_infoText	; ,
   057B AF 6F         [ 6]  931 	stx	15,s	; , ivtmp.274
   057D AE 6D         [ 6]  932 	ldx	13,s	; , ivtmp.272
   057F                     933 L41:
                            934 ;----- asm -----
                            935 ;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            936 	; #ENR#[230]		uint8_t d = 0;
                            937 ;  0 "" 2
                            938 ;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            939 	; #ENR#[231]		while (number >= muls[i]) {
                            940 ;  0 "" 2
                            941 ;--- end asm ---
   057F EE 84         [ 5]  942 	ldu	,x	;  D.3241, muls
   0581 C6 30         [ 2]  943 	ldb	#48	; ,
   0583 E7 E8 11      [ 5]  944 	stb	17,s	; , prephitmp.278
   0586 11 A3 E4      [ 7]  945 	cmpu	,s	;cmphi:	;  D.3241, number.280
   0589 22 2F         [ 3]  946 	bhi	L39	; 
   058B 1F 30         [ 6]  947 	tfr	u,d	;  D.3241,
   058D 40            [ 2]  948 	nega
   058E 50            [ 2]  949 	negb
   058F 82 00         [ 2]  950 	sbca	#0
   0591 ED 6B         [ 6]  951 	std	11,s	; , ivtmp.263
   0593 EC E4         [ 5]  952 	ldd	,s	; , number.280
   0595 34 40         [ 6]  953 	pshs	u	;subhi: R:d -= R:u	;  D.3241,
   0597 A3 E1         [ 9]  954 	subd	,s++	; 
   0599 ED E4         [ 5]  955 	std	,s	; , number.280
   059B 6F 62         [ 7]  956 	clr	2,s	;  d
   059D                     957 L40:
                            958 ;----- asm -----
                            959 ;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            960 	; #ENR#[232]			d++;
                            961 ;  0 "" 2
                            962 ;--- end asm ---
   059D 6C 62         [ 7]  963 	inc	2,s	;  d
                            964 ;----- asm -----
                            965 ;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            966 	; #ENR#[233]			number -= muls[i];
                            967 ;  0 "" 2
                            968 ;--- end asm ---
   059F 10 AE E4      [ 6]  969 	ldy	,s	;  number.282, number.280
   05A2 1F 20         [ 6]  970 	tfr	y,d	; ,
   05A4 E3 6B         [ 7]  971 	addd	11,s	; , ivtmp.263
   05A6 ED E4         [ 5]  972 	std	,s	; , number.280
   05A8 30 CB         [ 8]  973 	leax	d,u	;  tmp75,, D.3241
   05AA 34 40         [ 6]  974 	pshs	u	;cmphi: R:u with R:x	;  D.3241, tmp75
   05AC AC E1         [ 9]  975 	cmpx	,s++	;cmphi:	;  tmp75
   05AE 24 ED         [ 3]  976 	bhs	L40	; 
   05B0 10 AF E4      [ 6]  977 	sty	,s	;  number.282, number.280
   05B3 E6 62         [ 5]  978 	ldb	2,s	; , d
   05B5 CB 30         [ 2]  979 	addb	#48	; ,
   05B7 E7 E8 11      [ 5]  980 	stb	17,s	; , prephitmp.278
   05BA                     981 L39:
                            982 ;----- asm -----
                            983 ;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                            984 	; #ENR#[235]		text[i] = d + '0';
                            985 ;  0 "" 2
                            986 ;--- end asm ---
   05BA AE 6F         [ 6]  987 	ldx	15,s	; , ivtmp.274
   05BC 30 01         [ 5]  988 	leax	1,x	; ,,
   05BE AF 6F         [ 6]  989 	stx	15,s	; , ivtmp.274
   05C0 30 1F         [ 5]  990 	leax	-1,x	; ,,
   05C2 E7 80         [ 6]  991 	stb	,x+	; ,
   05C4 AE 6D         [ 6]  992 	ldx	13,s	; , ivtmp.272
   05C6 30 02         [ 5]  993 	leax	2,x	; ,,
   05C8 AF 6D         [ 6]  994 	stx	13,s	; , ivtmp.272
   05CA 1F 40         [ 6]  995 	tfr	s,d	; ,
   05CC C3 00 18      [ 4]  996 	addd	#24	; ,
   05CF 34 06         [ 7]  997 	pshs	d	;cmphi: R:d with R:x	; ,
   05D1 AC E1         [ 9]  998 	cmpx	,s++	;cmphi:	; 
   05D3 10 26 FF A8   [ 6]  999 	lbne	L41	; 
                           1000 ;----- asm -----
                           1001 ;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1002 	; #ENR#[242]	itoa(levelHighscore, &infoText[6]);
                           1003 ;  0 "" 2
                           1004 ;--- end asm ---
   05D7 FE CA 8D      [ 6] 1005 	ldu	_levelHighscore	;  number, levelHighscore
                           1006 ;----- asm -----
                           1007 ;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1008 	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
                           1009 ;  0 "" 2
                           1010 ;--- end asm ---
   05DA CC 00 64      [ 3] 1011 	ldd	#100	; ,
   05DD ED E8 12      [ 6] 1012 	std	18,s	; , muls
   05E0 CC 00 0A      [ 3] 1013 	ldd	#10	; ,
   05E3 ED E8 14      [ 6] 1014 	std	20,s	; , muls
   05E6 CC 00 01      [ 3] 1015 	ldd	#1	; ,
   05E9 ED E8 16      [ 6] 1016 	std	22,s	; , muls
                           1017 ;----- asm -----
                           1018 ;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1019 	; #ENR#[228]	if (number > 999) number = 999;
                           1020 ;  0 "" 2
                           1021 ;--- end asm ---
   05EC EF E4         [ 5] 1022 	stu	,s	;  number, number.276
   05EE 11 83 03 E7   [ 5] 1023 	cmpu	#999	;cmphi:	;  number,
   05F2 23 05         [ 3] 1024 	bls	L42	; 
   05F4 8E 03 E7      [ 3] 1025 	ldx	#999	; ,
   05F7 AF E4         [ 5] 1026 	stx	,s	; , number.276
   05F9                    1027 L42:
                           1028 ;----- asm -----
                           1029 ;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1030 	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
                           1031 ;  0 "" 2
                           1032 ;--- end asm ---
   05F9 30 E8 12      [ 5] 1033 	leax	18,s	; ,,
   05FC AF 67         [ 6] 1034 	stx	7,s	; , ivtmp.256
   05FE 8E C8 97      [ 3] 1035 	ldx	#_infoText+6	; ,
   0601 AF 69         [ 6] 1036 	stx	9,s	; , ivtmp.258
   0603 AE 67         [ 6] 1037 	ldx	7,s	; , ivtmp.256
   0605                    1038 L46:
                           1039 ;----- asm -----
                           1040 ;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1041 	; #ENR#[230]		uint8_t d = 0;
                           1042 ;  0 "" 2
                           1043 ;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1044 	; #ENR#[231]		while (number >= muls[i]) {
                           1045 ;  0 "" 2
                           1046 ;--- end asm ---
   0605 EE 84         [ 5] 1047 	ldu	,x	;  D.3250, muls
   0607 C6 30         [ 2] 1048 	ldb	#48	; ,
   0609 E7 64         [ 5] 1049 	stb	4,s	; , prephitmp.235
   060B 11 A3 E4      [ 7] 1050 	cmpu	,s	;cmphi:	;  D.3250, number.276
   060E 22 2E         [ 3] 1051 	bhi	L44	; 
   0610 1F 30         [ 6] 1052 	tfr	u,d	;  D.3250,
   0612 40            [ 2] 1053 	nega
   0613 50            [ 2] 1054 	negb
   0614 82 00         [ 2] 1055 	sbca	#0
   0616 ED 65         [ 6] 1056 	std	5,s	; , ivtmp.247
   0618 EC E4         [ 5] 1057 	ldd	,s	; , number.276
   061A 34 40         [ 6] 1058 	pshs	u	;subhi: R:d -= R:u	;  D.3250,
   061C A3 E1         [ 9] 1059 	subd	,s++	; 
   061E ED E4         [ 5] 1060 	std	,s	; , number.276
   0620 6F 63         [ 7] 1061 	clr	3,s	;  d
   0622                    1062 L45:
                           1063 ;----- asm -----
                           1064 ;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1065 	; #ENR#[232]			d++;
                           1066 ;  0 "" 2
                           1067 ;--- end asm ---
   0622 6C 63         [ 7] 1068 	inc	3,s	;  d
                           1069 ;----- asm -----
                           1070 ;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1071 	; #ENR#[233]			number -= muls[i];
                           1072 ;  0 "" 2
                           1073 ;--- end asm ---
   0624 10 AE E4      [ 6] 1074 	ldy	,s	;  number.283, number.276
   0627 1F 20         [ 6] 1075 	tfr	y,d	; ,
   0629 E3 65         [ 7] 1076 	addd	5,s	; , ivtmp.247
   062B ED E4         [ 5] 1077 	std	,s	; , number.276
   062D 30 CB         [ 8] 1078 	leax	d,u	;  tmp81,, D.3250
   062F 34 40         [ 6] 1079 	pshs	u	;cmphi: R:u with R:x	;  D.3250, tmp81
   0631 AC E1         [ 9] 1080 	cmpx	,s++	;cmphi:	;  tmp81
   0633 24 ED         [ 3] 1081 	bhs	L45	; 
   0635 10 AF E4      [ 6] 1082 	sty	,s	;  number.283, number.276
   0638 E6 63         [ 5] 1083 	ldb	3,s	; , d
   063A CB 30         [ 2] 1084 	addb	#48	; ,
   063C E7 64         [ 5] 1085 	stb	4,s	; , prephitmp.235
   063E                    1086 L44:
                           1087 ;----- asm -----
                           1088 ;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1089 	; #ENR#[235]		text[i] = d + '0';
                           1090 ;  0 "" 2
                           1091 ;--- end asm ---
   063E AE 69         [ 6] 1092 	ldx	9,s	; , ivtmp.258
   0640 30 01         [ 5] 1093 	leax	1,x	; ,,
   0642 AF 69         [ 6] 1094 	stx	9,s	; , ivtmp.258
   0644 30 1F         [ 5] 1095 	leax	-1,x	; ,,
   0646 E7 80         [ 6] 1096 	stb	,x+	; ,
   0648 AE 67         [ 6] 1097 	ldx	7,s	; , ivtmp.256
   064A 30 02         [ 5] 1098 	leax	2,x	; ,,
   064C AF 67         [ 6] 1099 	stx	7,s	; , ivtmp.256
   064E 1F 40         [ 6] 1100 	tfr	s,d	; ,
   0650 C3 00 18      [ 4] 1101 	addd	#24	; ,
   0653 34 06         [ 7] 1102 	pshs	d	;cmphi: R:d with R:x	; ,
   0655 AC E1         [ 9] 1103 	cmpx	,s++	;cmphi:	; 
   0657 10 26 FF AA   [ 6] 1104 	lbne	L46	; 
   065B 32 E8 18      [ 5] 1105 	leas	24,s	; ,,
   065E 35 E0         [ 8] 1106 	puls	y,u,pc	; 
                           1107 	.globl _setupY
   0660                    1108 _setupY:
   0660 34 60         [ 7] 1109 	pshs	y,u	; 
   0662 32 74         [ 5] 1110 	leas	-12,s	; ,,
                           1111 ;----- asm -----
                           1112 ;  407 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1113 	; #ENR#[338]	unsigned long int index;
                           1114 ;  0 "" 2
                           1115 ;  409 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1116 	; #ENR#[339]	int8_t x = 0;
                           1117 ;  0 "" 2
                           1118 ;  411 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1119 	; #ENR#[340]	int8_t y = 0;
                           1120 ;  0 "" 2
                           1121 ;  413 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1122 	; #ENR#[341]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
                           1123 ;  0 "" 2
                           1124 ;--- end asm ---
   0664 10 BE CA 8B   [ 7] 1125 	ldy	_level	;  ivtmp.321, level
   0668 6F 64         [ 7] 1126 	clr	4,s	;  x
   066A E6 64         [ 5] 1127 	ldb	4,s	; , x
   066C                    1128 L59:
                           1129 ;----- asm -----
                           1130 ;  415 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1131 	; #ENR#[342]		int8_t y0 = -1;
                           1132 ;  0 "" 2
                           1133 ;  417 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1134 	; #ENR#[343]		int8_t y1 = -1;
                           1135 ;  0 "" 2
                           1136 ;  419 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1137 	; #ENR#[344]		for (y = 0; y < LEVEL_HEIGHT; y++) {
                           1138 ;  0 "" 2
                           1139 ;--- end asm ---
   066C 86 0E         [ 2] 1140 	lda	#14	;umulqihi3	; 
   066E 3D            [11] 1141 	mul
                           1142 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   066F 1F 01         [ 6] 1143 	tfr	d,x	; , tmp84
                           1144 ; ORG>	tfr	d,x	; , tmp84
                           1145 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp84,
   0671 CB F2         [ 2] 1146 	addb	#-14	; ,
   0673 E7 6A         [ 5] 1147 	stb	10,s	; , D.3363
   0675 E6 64         [ 5] 1148 	ldb	4,s	; , x
   0677 58            [ 2] 1149 	aslb	; 
   0678 EB 64         [ 5] 1150 	addb	4,s	; , x
   067A CB 9B         [ 2] 1151 	addb	#-101	; ,
   067C E7 6B         [ 5] 1152 	stb	11,s	; , D.3366
   067E 33 A4         [ 4] 1153 	leau	,y	;  ivtmp.322, ivtmp.321
   0680 6F 65         [ 7] 1154 	clr	5,s	;  y
   0682 C6 FF         [ 2] 1155 	ldb	#-1	; ,
   0684 E7 66         [ 5] 1156 	stb	6,s	; , y0
   0686 E7 67         [ 5] 1157 	stb	7,s	; , y1
   0688 7E 07 0A      [ 4] 1158 	jmp	L58	; 
   068B                    1159 L69:
   068B C1 61         [ 2] 1160 	cmpb	#97	;cmpqi:	; ,
   068D 10 27 00 89   [ 6] 1161 	lbeq	L53	; 
   0691 C1 6F         [ 2] 1162 	cmpb	#111	;cmpqi:	; ,
   0693 10 27 00 83   [ 6] 1163 	lbeq	L53	; 
                           1164 ;----- asm -----
                           1165 ;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1166 	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
                           1167 ;  0 "" 2
                           1168 ;--- end asm ---
   0697 E6 68         [ 5] 1169 	ldb	8,s	; , c1
   0699 C1 2E         [ 2] 1170 	cmpb	#46	;cmpqi:	; ,
   069B 10 27 00 7B   [ 6] 1171 	lbeq	L53	; 
   069F C1 61         [ 2] 1172 	cmpb	#97	;cmpqi:	; ,
   06A1 10 27 00 75   [ 6] 1173 	lbeq	L53	; 
   06A5 C1 6F         [ 2] 1174 	cmpb	#111	;cmpqi:	; ,
   06A7 10 27 00 6F   [ 6] 1175 	lbeq	L53	; 
                           1176 ;----- asm -----
                           1177 ;  438 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1178 	; #ENR#[356]				if (y0 >= 0) {
                           1179 ;  0 "" 2
                           1180 ;--- end asm ---
   06AB E6 66         [ 5] 1181 	ldb	6,s	; , y0
   06AD C1 FF         [ 2] 1182 	cmpb	#-1	;cmpqi:	; ,
   06AF 10 27 00 4B   [ 6] 1183 	lbeq	L57	; 
                           1184 ;----- asm -----
                           1185 ;  440 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1186 	; #ENR#[357]					addLine(x + 1, y0, x + 1, y1 + 1);
                           1187 ;  0 "" 2
                           1188 ;--- end asm ---
   06B3 E6 67         [ 5] 1189 	ldb	7,s	; , y1
   06B5 5C            [ 2] 1190 	incb	; 
   06B6 E7 63         [ 5] 1191 	stb	3,s	; , D.2499
                           1192 ;----- asm -----
                           1193 ;  296 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1194 	; #ENR#[266]	lineX0[lineCount] = x3d(x0, 0, y0);
                           1195 ;  0 "" 2
                           1196 ;--- end asm ---
   06B8 F6 C8 88      [ 5] 1197 	ldb	_lineCount	; , lineCount
   06BB E7 69         [ 5] 1198 	stb	9,s	; , lineCount.8
                           1199 ;----- asm -----
                           1200 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1201 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           1202 ;  0 "" 2
                           1203 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1204 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           1205 ;  0 "" 2
                           1206 ;--- end asm ---
   06BD 4F            [ 2] 1207 	clra		;zero_extendqihi: R:b -> R:d	; ,
   06BE 1F 01         [ 6] 1208 	tfr	d,x	; , lineCount.8
   06C0 E6 66         [ 5] 1209 	ldb	6,s	; , y0
   06C2 86 FA         [ 2] 1210 	lda	#-6	;mulqihi3	; 
   06C4 3D            [11] 1211 	mul
                           1212 		;movlsbqihi: D->B
   06C5 EB 6A         [ 5] 1213 	addb	10,s	;  tmp93, D.3363
   06C7 E7 89 C8 9E   [ 8] 1214 	stb	_lineX0,x	;  tmp93, lineX0
                           1215 ;----- asm -----
                           1216 ;  298 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1217 	; #ENR#[267]	lineY0[lineCount] = y3d(x0, 0, y0);
                           1218 ;  0 "" 2
                           1219 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1220 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           1221 ;  0 "" 2
                           1222 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1223 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           1224 ;  0 "" 2
                           1225 ;--- end asm ---
   06CB 68 66         [ 7] 1226 	asl	6,s	;  y0
   06CD 68 66         [ 7] 1227 	asl	6,s	;  y0
   06CF 68 66         [ 7] 1228 	asl	6,s	;  y0
   06D1 E6 66         [ 5] 1229 	ldb	6,s	; , y0
   06D3 EB 6B         [ 5] 1230 	addb	11,s	; , D.3366
   06D5 E7 89 C9 16   [ 8] 1231 	stb	_lineY0,x	; , lineY0
                           1232 ;----- asm -----
                           1233 ;  300 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1234 	; #ENR#[268]	lineX1[lineCount] = x3d(x1, 0, y1);
                           1235 ;  0 "" 2
                           1236 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1237 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           1238 ;  0 "" 2
                           1239 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1240 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           1241 ;  0 "" 2
                           1242 ;--- end asm ---
   06D9 E6 63         [ 5] 1243 	ldb	3,s	; , D.2499
   06DB 86 FA         [ 2] 1244 	lda	#-6	;mulqihi3	; 
   06DD 3D            [11] 1245 	mul
   06DE ED E4         [ 5] 1246 	std	,s	; ,
                           1247 		;movlsbqihi: D->B
   06E0 EB 6A         [ 5] 1248 	addb	10,s	;  tmp102, D.3363
   06E2 E7 89 C9 8E   [ 8] 1249 	stb	_lineX1,x	;  tmp102, lineX1
                           1250 ;----- asm -----
                           1251 ;  302 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1252 	; #ENR#[269]	lineY1[lineCount] = y3d(x1, 0, y1);
                           1253 ;  0 "" 2
                           1254 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1255 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           1256 ;  0 "" 2
                           1257 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1258 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           1259 ;  0 "" 2
                           1260 ;--- end asm ---
   06E6 68 63         [ 7] 1261 	asl	3,s	;  D.2499
   06E8 68 63         [ 7] 1262 	asl	3,s	;  D.2499
   06EA 68 63         [ 7] 1263 	asl	3,s	;  D.2499
   06EC E6 63         [ 5] 1264 	ldb	3,s	; , D.2499
   06EE EB 6B         [ 5] 1265 	addb	11,s	; , D.3366
   06F0 E7 89 CA 06   [ 8] 1266 	stb	_lineY1,x	; , lineY1
                           1267 ;----- asm -----
                           1268 ;  304 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1269 	; #ENR#[270]	lineCount++;
                           1270 ;  0 "" 2
                           1271 ;--- end asm ---
   06F4 E6 69         [ 5] 1272 	ldb	9,s	; , lineCount.8
   06F6 5C            [ 2] 1273 	incb	; 
   06F7 F7 C8 88      [ 5] 1274 	stb	_lineCount	; , lineCount
                           1275 ;----- asm -----
                           1276 ;  442 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1277 	; #ENR#[358]					y0 = -1;
                           1278 ;  0 "" 2
                           1279 ;--- end asm ---
   06FA C6 FF         [ 2] 1280 	ldb	#-1	; ,
   06FC E7 66         [ 5] 1281 	stb	6,s	; , y0
   06FE                    1282 L57:
   06FE 6C 65         [ 7] 1283 	inc	5,s	;  y
   0700 33 4C         [ 5] 1284 	leau	12,u	;  ivtmp.322,, ivtmp.322
   0702 E6 65         [ 5] 1285 	ldb	5,s	; , y
   0704 C1 11         [ 2] 1286 	cmpb	#17	;cmpqi:	; ,
   0706 10 27 00 26   [ 6] 1287 	lbeq	L68	; 
   070A                    1288 L58:
                           1289 ;----- asm -----
                           1290 ;  425 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1291 	; #ENR#[349]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
                           1292 ;  0 "" 2
                           1293 ;  427 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1294 	; #ENR#[350]			char c0 = level[index];
                           1295 ;  0 "" 2
                           1296 ;--- end asm ---
   070A E6 C4         [ 4] 1297 	ldb	,u	; ,* ivtmp.322
   070C E7 62         [ 5] 1298 	stb	2,s	; , c0
                           1299 ;----- asm -----
                           1300 ;  429 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1301 	; #ENR#[351]			char c1 = level[index+1];
                           1302 ;  0 "" 2
                           1303 ;--- end asm ---
   070E E6 41         [ 5] 1304 	ldb	1,u	; ,
   0710 E7 68         [ 5] 1305 	stb	8,s	; , c1
                           1306 ;----- asm -----
                           1307 ;  431 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1308 	; #ENR#[352]			if (isField(c0) || isField(c1)) {
                           1309 ;  0 "" 2
                           1310 ;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1311 	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
                           1312 ;  0 "" 2
                           1313 ;--- end asm ---
   0712 E6 62         [ 5] 1314 	ldb	2,s	; , c0
   0714 C1 2E         [ 2] 1315 	cmpb	#46	;cmpqi:	; ,
   0716 10 26 FF 71   [ 6] 1316 	lbne	L69	; 
   071A                    1317 L53:
                           1318 ;----- asm -----
                           1319 ;  433 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1320 	; #ENR#[353]				if (y0 < 0) y0 = y;
                           1321 ;  0 "" 2
                           1322 ;--- end asm ---
   071A E6 66         [ 5] 1323 	ldb	6,s	; , y0
   071C C1 FF         [ 2] 1324 	cmpb	#-1	;cmpqi:	; ,
   071E 27 20         [ 3] 1325 	beq	L70	; 
   0720                    1326 L56:
                           1327 ;----- asm -----
                           1328 ;  435 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1329 	; #ENR#[354]				y1 = y;
                           1330 ;  0 "" 2
                           1331 ;--- end asm ---
   0720 E6 65         [ 5] 1332 	ldb	5,s	; , y
   0722 E7 67         [ 5] 1333 	stb	7,s	; , y1
   0724 6C 65         [ 7] 1334 	inc	5,s	;  y
   0726 33 4C         [ 5] 1335 	leau	12,u	;  ivtmp.322,, ivtmp.322
   0728 E6 65         [ 5] 1336 	ldb	5,s	; , y
   072A C1 11         [ 2] 1337 	cmpb	#17	;cmpqi:	; ,
   072C 10 26 FF DA   [ 6] 1338 	lbne	L58	; 
   0730                    1339 L68:
   0730 6C 64         [ 7] 1340 	inc	4,s	;  x
   0732 31 21         [ 5] 1341 	leay	1,y	;  ivtmp.321,, ivtmp.321
   0734 E6 64         [ 5] 1342 	ldb	4,s	; , x
   0736 C1 0B         [ 2] 1343 	cmpb	#11	;cmpqi:	; ,
   0738 10 26 FF 30   [ 6] 1344 	lbne	L59	; 
   073C 32 6C         [ 5] 1345 	leas	12,s	; ,,
   073E 35 E0         [ 8] 1346 	puls	y,u,pc	; 
   0740                    1347 L70:
   0740 E6 65         [ 5] 1348 	ldb	5,s	; , y
   0742 E7 66         [ 5] 1349 	stb	6,s	; , y0
   0744 20 DA         [ 3] 1350 	bra	L56	; 
                           1351 	.globl _moveBlock
   0746                    1352 _moveBlock:
   0746 34 60         [ 7] 1353 	pshs	y,u	; 
   0748 32 E8 E7      [ 5] 1354 	leas	-25,s	; ,,
   074B E7 62         [ 5] 1355 	stb	2,s	;  move, move
                           1356 ;----- asm -----
                           1357 ;  460 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1358 	; #ENR#[373]	blockAnimating = 1;
                           1359 ;  0 "" 2
                           1360 ;--- end asm ---
   074D C6 01         [ 2] 1361 	ldb	#1	; ,
   074F F7 CA 86      [ 5] 1362 	stb	_blockAnimating	; , blockAnimating
                           1363 ;----- asm -----
                           1364 ;  462 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1365 	; #ENR#[374]	lastBlockDirection = move;
                           1366 ;  0 "" 2
                           1367 ;--- end asm ---
   0752 E6 62         [ 5] 1368 	ldb	2,s	; , move
   0754 F7 CA 89      [ 5] 1369 	stb	_lastBlockDirection	; , lastBlockDirection
                           1370 ;----- asm -----
                           1371 ;  464 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1372 	; #ENR#[375]	switch (blockOrientation) {
                           1373 ;  0 "" 2
                           1374 ;--- end asm ---
   0757 F6 CA 7E      [ 5] 1375 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   075A C1 01         [ 2] 1376 	cmpb	#1	;cmpqi:	;  blockOrientation,
   075C 10 27 01 81   [ 6] 1377 	lbeq	L74	; 
   0760 10 25 01 24   [ 6] 1378 	lblo	L73	; 
   0764 C1 02         [ 2] 1379 	cmpb	#2	;cmpqi:	;  blockOrientation,
   0766 10 27 01 4C   [ 6] 1380 	lbeq	L107	; 
   076A                    1381 L72:
                           1382 ;----- asm -----
                           1383 ;  648 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1384 	; #ENR#[469]	if (moveCount < 999) moveCount++;
                           1385 ;  0 "" 2
                           1386 ;--- end asm ---
   076A FE C8 9B      [ 6] 1387 	ldu	_moveCount	;  number, moveCount
   076D 11 83 03 E6   [ 5] 1388 	cmpu	#998	;cmphi:	;  number,
   0771 22 05         [ 3] 1389 	bhi	L91	; 
   0773 33 41         [ 5] 1390 	leau	1,u	;  number,, number
   0775 FF C8 9B      [ 6] 1391 	stu	_moveCount	;  number, moveCount
   0778                    1392 L91:
                           1393 ;----- asm -----
                           1394 ;  650 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1395 	; #ENR#[470]	updateInfoText();
                           1396 ;  0 "" 2
                           1397 ;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1398 	; #ENR#[241]	itoa(moveCount, &infoText[0]);
                           1399 ;  0 "" 2
                           1400 ;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1401 	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
                           1402 ;  0 "" 2
                           1403 ;--- end asm ---
   0778 CC 00 64      [ 3] 1404 	ldd	#100	; ,
   077B ED E8 13      [ 6] 1405 	std	19,s	; , muls
   077E CC 00 0A      [ 3] 1406 	ldd	#10	; ,
   0781 ED E8 15      [ 6] 1407 	std	21,s	; , muls
   0784 CC 00 01      [ 3] 1408 	ldd	#1	; ,
   0787 ED E8 17      [ 6] 1409 	std	23,s	; , muls
                           1410 ;----- asm -----
                           1411 ;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1412 	; #ENR#[228]	if (number > 999) number = 999;
                           1413 ;  0 "" 2
                           1414 ;--- end asm ---
   078A EF E4         [ 5] 1415 	stu	,s	;  number, number.406
   078C 11 83 03 E7   [ 5] 1416 	cmpu	#999	;cmphi:	;  number,
   0790 23 05         [ 3] 1417 	bls	L92	; 
   0792 8E 03 E7      [ 3] 1418 	ldx	#999	; ,
   0795 AF E4         [ 5] 1419 	stx	,s	; , number.406
   0797                    1420 L92:
                           1421 ;----- asm -----
                           1422 ;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1423 	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
                           1424 ;  0 "" 2
                           1425 ;--- end asm ---
   0797 30 E8 13      [ 5] 1426 	leax	19,s	; ,,
   079A AF 6E         [ 6] 1427 	stx	14,s	; , ivtmp.373
   079C 8E C8 91      [ 3] 1428 	ldx	#_infoText	; ,
   079F AF E8 10      [ 6] 1429 	stx	16,s	; , ivtmp.375
   07A2 AE 6E         [ 6] 1430 	ldx	14,s	; , ivtmp.373
   07A4                    1431 L96:
                           1432 ;----- asm -----
                           1433 ;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1434 	; #ENR#[230]		uint8_t d = 0;
                           1435 ;  0 "" 2
                           1436 ;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1437 	; #ENR#[231]		while (number >= muls[i]) {
                           1438 ;  0 "" 2
                           1439 ;--- end asm ---
   07A4 EE 84         [ 5] 1440 	ldu	,x	;  D.3428, muls
   07A6 C6 30         [ 2] 1441 	ldb	#48	; ,
   07A8 E7 E8 12      [ 5] 1442 	stb	18,s	; , prephitmp.404
   07AB 11 A3 E4      [ 7] 1443 	cmpu	,s	;cmphi:(R)	;  D.3428, number.406
   07AE 22 2F         [ 3] 1444 	bhi	L94	; 
   07B0 1F 30         [ 6] 1445 	tfr	u,d	;  D.3428,
   07B2 40            [ 2] 1446 	nega
   07B3 50            [ 2] 1447 	negb
   07B4 82 00         [ 2] 1448 	sbca	#0
   07B6 ED 6C         [ 6] 1449 	std	12,s	; , ivtmp.366
   07B8 EC E4         [ 5] 1450 	ldd	,s	; , number.406
   07BA 34 40         [ 6] 1451 	pshs	u	;subhi: R:d -= R:u	;  D.3428,
   07BC A3 E1         [ 9] 1452 	subd	,s++	; 
   07BE ED E4         [ 5] 1453 	std	,s	; , number.406
   07C0 6F 63         [ 7] 1454 	clr	3,s	;  d
   07C2                    1455 L95:
                           1456 ;----- asm -----
                           1457 ;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1458 	; #ENR#[232]			d++;
                           1459 ;  0 "" 2
                           1460 ;--- end asm ---
   07C2 6C 63         [ 7] 1461 	inc	3,s	;  d
                           1462 ;----- asm -----
                           1463 ;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1464 	; #ENR#[233]			number -= muls[i];
                           1465 ;  0 "" 2
                           1466 ;--- end asm ---
   07C4 10 AE E4      [ 6] 1467 	ldy	,s	;  number.409, number.406
   07C7 1F 20         [ 6] 1468 	tfr	y,d	; ,
   07C9 E3 6C         [ 7] 1469 	addd	12,s	; , ivtmp.366
   07CB ED E4         [ 5] 1470 	std	,s	; , number.406
   07CD 30 CB         [ 8] 1471 	leax	d,u	;  tmp102,, D.3428
   07CF 34 40         [ 6] 1472 	pshs	u	;cmphi: R:u with R:x	;  D.3428, tmp102
   07D1 AC E1         [ 9] 1473 	cmpx	,s++	;cmphi:	;  tmp102
   07D3 24 ED         [ 3] 1474 	bhs	L95	; 
   07D5 10 AF E4      [ 6] 1475 	sty	,s	;  number.409, number.406
   07D8 E6 63         [ 5] 1476 	ldb	3,s	; , d
   07DA CB 30         [ 2] 1477 	addb	#48	; ,
   07DC E7 E8 12      [ 5] 1478 	stb	18,s	; , prephitmp.404
   07DF                    1479 L94:
                           1480 ;----- asm -----
                           1481 ;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1482 	; #ENR#[235]		text[i] = d + '0';
                           1483 ;  0 "" 2
                           1484 ;--- end asm ---
   07DF AE E8 10      [ 6] 1485 	ldx	16,s	; , ivtmp.375
   07E2 30 01         [ 5] 1486 	leax	1,x	; ,,
   07E4 AF E8 10      [ 6] 1487 	stx	16,s	; , ivtmp.375
   07E7 30 1F         [ 5] 1488 	leax	-1,x	; ,,
   07E9 E7 80         [ 6] 1489 	stb	,x+	; ,
   07EB AE 6E         [ 6] 1490 	ldx	14,s	; , ivtmp.373
   07ED 30 02         [ 5] 1491 	leax	2,x	; ,,
   07EF AF 6E         [ 6] 1492 	stx	14,s	; , ivtmp.373
   07F1 1F 40         [ 6] 1493 	tfr	s,d	; ,
   07F3 C3 00 19      [ 4] 1494 	addd	#25	; ,
   07F6 34 06         [ 7] 1495 	pshs	d	;cmphi: R:d with R:x	; ,
   07F8 AC E1         [ 9] 1496 	cmpx	,s++	;cmphi:	; 
   07FA 10 26 FF A6   [ 6] 1497 	lbne	L96	; 
                           1498 ;----- asm -----
                           1499 ;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1500 	; #ENR#[242]	itoa(levelHighscore, &infoText[6]);
                           1501 ;  0 "" 2
                           1502 ;--- end asm ---
   07FE FE CA 8D      [ 6] 1503 	ldu	_levelHighscore	;  number, levelHighscore
                           1504 ;----- asm -----
                           1505 ;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1506 	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
                           1507 ;  0 "" 2
                           1508 ;--- end asm ---
   0801 CC 00 64      [ 3] 1509 	ldd	#100	; ,
   0804 ED E8 13      [ 6] 1510 	std	19,s	; , muls
   0807 CC 00 0A      [ 3] 1511 	ldd	#10	; ,
   080A ED E8 15      [ 6] 1512 	std	21,s	; , muls
   080D CC 00 01      [ 3] 1513 	ldd	#1	; ,
   0810 ED E8 17      [ 6] 1514 	std	23,s	; , muls
                           1515 ;----- asm -----
                           1516 ;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1517 	; #ENR#[228]	if (number > 999) number = 999;
                           1518 ;  0 "" 2
                           1519 ;--- end asm ---
   0813 EF E4         [ 5] 1520 	stu	,s	;  number, number.403
   0815 11 83 03 E7   [ 5] 1521 	cmpu	#999	;cmphi:	;  number,
   0819 23 05         [ 3] 1522 	bls	L97	; 
   081B 8E 03 E7      [ 3] 1523 	ldx	#999	; ,
   081E AF E4         [ 5] 1524 	stx	,s	; , number.403
   0820                    1525 L97:
                           1526 ;----- asm -----
                           1527 ;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1528 	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
                           1529 ;  0 "" 2
                           1530 ;--- end asm ---
   0820 30 E8 13      [ 5] 1531 	leax	19,s	; ,,
   0823 AF 68         [ 6] 1532 	stx	8,s	; , ivtmp.357
   0825 8E C8 97      [ 3] 1533 	ldx	#_infoText+6	; ,
   0828 AF 6A         [ 6] 1534 	stx	10,s	; , ivtmp.359
   082A AE 68         [ 6] 1535 	ldx	8,s	; , ivtmp.357
   082C                    1536 L101:
                           1537 ;----- asm -----
                           1538 ;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1539 	; #ENR#[230]		uint8_t d = 0;
                           1540 ;  0 "" 2
                           1541 ;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1542 	; #ENR#[231]		while (number >= muls[i]) {
                           1543 ;  0 "" 2
                           1544 ;--- end asm ---
   082C EE 84         [ 5] 1545 	ldu	,x	;  D.3437, muls
   082E C6 30         [ 2] 1546 	ldb	#48	; ,
   0830 E7 65         [ 5] 1547 	stb	5,s	; , prephitmp.336
   0832 11 A3 E4      [ 7] 1548 	cmpu	,s	;cmphi:	;  D.3437, number.403
   0835 22 2F         [ 3] 1549 	bhi	L99	; 
   0837 1F 30         [ 6] 1550 	tfr	u,d	;  D.3437,
   0839 40            [ 2] 1551 	nega
   083A 50            [ 2] 1552 	negb
   083B 82 00         [ 2] 1553 	sbca	#0
   083D ED 66         [ 6] 1554 	std	6,s	; , ivtmp.348
   083F EC E4         [ 5] 1555 	ldd	,s	; , number.403
   0841 34 40         [ 6] 1556 	pshs	u	;subhi: R:d -= R:u	;  D.3437,
   0843 A3 E1         [ 9] 1557 	subd	,s++	; 
   0845 ED E4         [ 5] 1558 	std	,s	; , number.403
   0847 6F 64         [ 7] 1559 	clr	4,s	;  d
   0849                    1560 L100:
                           1561 ;----- asm -----
                           1562 ;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1563 	; #ENR#[232]			d++;
                           1564 ;  0 "" 2
                           1565 ;--- end asm ---
   0849 6C 64         [ 7] 1566 	inc	4,s	;  d
                           1567 ;----- asm -----
                           1568 ;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1569 	; #ENR#[233]			number -= muls[i];
                           1570 ;  0 "" 2
                           1571 ;--- end asm ---
   084B 10 AE E4      [ 6] 1572 	ldy	,s	;  number.410, number.403
   084E 1F 20         [ 6] 1573 	tfr	y,d	; ,
   0850 E3 66         [ 7] 1574 	addd	6,s	; , ivtmp.348
   0852 ED E4         [ 5] 1575 	std	,s	; , number.403
   0854 30 CB         [ 8] 1576 	leax	d,u	;  tmp108,, D.3437
   0856 34 10         [ 6] 1577 	pshs	x	;cmphi: R:x with R:u	;  tmp108, D.3437
   0858 11 A3 E1      [10] 1578 	cmpu	,s++	;cmphi:	;  D.3437
   085B 23 EC         [ 3] 1579 	bls	L100	; 
   085D 10 AF E4      [ 6] 1580 	sty	,s	;  number.410, number.403
   0860 E6 64         [ 5] 1581 	ldb	4,s	; , d
   0862 CB 30         [ 2] 1582 	addb	#48	; ,
   0864 E7 65         [ 5] 1583 	stb	5,s	; , prephitmp.336
   0866                    1584 L99:
                           1585 ;----- asm -----
                           1586 ;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1587 	; #ENR#[235]		text[i] = d + '0';
                           1588 ;  0 "" 2
                           1589 ;--- end asm ---
   0866 AE 6A         [ 6] 1590 	ldx	10,s	; , ivtmp.359
   0868 30 01         [ 5] 1591 	leax	1,x	; ,,
   086A AF 6A         [ 6] 1592 	stx	10,s	; , ivtmp.359
   086C 30 1F         [ 5] 1593 	leax	-1,x	; ,,
   086E E7 80         [ 6] 1594 	stb	,x+	; ,
   0870 AE 68         [ 6] 1595 	ldx	8,s	; , ivtmp.357
   0872 30 02         [ 5] 1596 	leax	2,x	; ,,
   0874 AF 68         [ 6] 1597 	stx	8,s	; , ivtmp.357
   0876 1F 40         [ 6] 1598 	tfr	s,d	; ,
   0878 C3 00 19      [ 4] 1599 	addd	#25	; ,
   087B 34 06         [ 7] 1600 	pshs	d	;cmphi: R:d with R:x	; ,
   087D AC E1         [ 9] 1601 	cmpx	,s++	;cmphi:	; 
   087F 10 26 FF A9   [ 6] 1602 	lbne	L101	; 
   0883 32 E8 19      [ 5] 1603 	leas	25,s	; ,,
   0886 35 E0         [ 8] 1604 	puls	y,u,pc	; 
   0888                    1605 L73:
                           1606 ;----- asm -----
                           1607 ;  468 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1608 	; #ENR#[377]		switch (move) {
                           1609 ;  0 "" 2
                           1610 ;--- end asm ---
   0888 E6 62         [ 5] 1611 	ldb	2,s	; , move
   088A C1 01         [ 2] 1612 	cmpb	#1	;cmpqi:	; ,
   088C 10 27 00 AC   [ 6] 1613 	lbeq	L78	; 
   0890 10 24 00 F1   [ 6] 1614 	lbhs	L108	; 
                           1615 ;----- asm -----
                           1616 ;  472 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1617 	; #ENR#[379]			blockAnimation = height2FallingLeft;
                           1618 ;  0 "" 2
                           1619 ;--- end asm ---
   0894 8E 38 22      [ 3] 1620 	ldx	#_height2FallingLeft	; ,
   0897 BF CA 81      [ 6] 1621 	stx	_blockAnimation	; , blockAnimation
                           1622 ;----- asm -----
                           1623 ;  474 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1624 	; #ENR#[380]			nextBlockAnimation = width2RollingFront;
                           1625 ;  0 "" 2
                           1626 ;--- end asm ---
   089A 8E 39 12      [ 3] 1627 	ldx	#_width2RollingFront	; ,
   089D BF CA 83      [ 6] 1628 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           1629 ;----- asm -----
                           1630 ;  476 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1631 	; #ENR#[381]			nextBlockX = blockX - 2;
                           1632 ;  0 "" 2
                           1633 ;--- end asm ---
   08A0 F6 CA 7F      [ 5] 1634 	ldb	_blockX	; , blockX
   08A3 CB FE         [ 2] 1635 	addb	#-2	; ,
   08A5 F7 CA 87      [ 5] 1636 	stb	_nextBlockX	; , nextBlockX
                           1637 ;----- asm -----
                           1638 ;  478 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1639 	; #ENR#[382]			nextBlockY = blockY;
                           1640 ;  0 "" 2
                           1641 ;--- end asm ---
   08A8 F6 CA 80      [ 5] 1642 	ldb	_blockY	; , blockY
   08AB F7 CA 88      [ 5] 1643 	stb	_nextBlockY	; , nextBlockY
                           1644 ;----- asm -----
                           1645 ;  480 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1646 	; #ENR#[383]			blockOrientation = Horizontal;
                           1647 ;  0 "" 2
                           1648 ;--- end asm ---
   08AE C6 02         [ 2] 1649 	ldb	#2	; ,
   08B0 F7 CA 7E      [ 5] 1650 	stb	_blockOrientation	; , blockOrientation
                           1651 ;----- asm -----
                           1652 ;  482 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1653 	; #ENR#[384]			break;
                           1654 ;  0 "" 2
                           1655 ;--- end asm ---
   08B3                    1656 L76:
                           1657 ;----- asm -----
                           1658 ;  527 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1659 	; #ENR#[407]		break;
                           1660 ;  0 "" 2
                           1661 ;--- end asm ---
   08B3 7E 07 6A      [ 4] 1662 	jmp	L72	; 
   08B6                    1663 L107:
                           1664 ;----- asm -----
                           1665 ;  590 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1666 	; #ENR#[439]		switch (move) {
                           1667 ;  0 "" 2
                           1668 ;--- end asm ---
   08B6 E6 62         [ 5] 1669 	ldb	2,s	; , move
   08B8 C1 01         [ 2] 1670 	cmpb	#1	;cmpqi:	; ,
   08BA 10 27 00 65   [ 6] 1671 	lbeq	L88	; 
   08BE 10 24 00 9B   [ 6] 1672 	lbhs	L109	; 
                           1673 ;----- asm -----
                           1674 ;  594 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1675 	; #ENR#[441]			blockAnimation = height2RisingLeft;
                           1676 ;  0 "" 2
                           1677 ;--- end asm ---
   08C2 8E 38 6A      [ 3] 1678 	ldx	#_height2RisingLeft	; ,
   08C5 BF CA 81      [ 6] 1679 	stx	_blockAnimation	; , blockAnimation
                           1680 ;----- asm -----
                           1681 ;  596 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1682 	; #ENR#[442]			nextBlockAnimation = height2FallingRight;
                           1683 ;  0 "" 2
                           1684 ;--- end asm ---
   08C8 8E 38 52      [ 3] 1685 	ldx	#_height2FallingRight	; ,
   08CB BF CA 83      [ 6] 1686 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           1687 ;----- asm -----
                           1688 ;  598 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1689 	; #ENR#[443]			nextBlockX = blockX - 1;
                           1690 ;  0 "" 2
                           1691 ;--- end asm ---
   08CE F6 CA 7F      [ 5] 1692 	ldb	_blockX	; , blockX
   08D1 5A            [ 2] 1693 	decb	; 
   08D2 F7 CA 87      [ 5] 1694 	stb	_nextBlockX	; , nextBlockX
                           1695 ;----- asm -----
                           1696 ;  600 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1697 	; #ENR#[444]			nextBlockY = blockY;
                           1698 ;  0 "" 2
                           1699 ;--- end asm ---
   08D5 F6 CA 80      [ 5] 1700 	ldb	_blockY	; , blockY
   08D8 F7 CA 88      [ 5] 1701 	stb	_nextBlockY	; , nextBlockY
                           1702 ;----- asm -----
                           1703 ;  602 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1704 	; #ENR#[445]			blockOrientation = Standing;
                           1705 ;  0 "" 2
                           1706 ;--- end asm ---
   08DB 7F CA 7E      [ 7] 1707 	clr	_blockOrientation	;  blockOrientation
                           1708 ;----- asm -----
                           1709 ;  604 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1710 	; #ENR#[446]			break;
                           1711 ;  0 "" 2
                           1712 ;--- end asm ---
   08DE                    1713 L86:
                           1714 ;----- asm -----
                           1715 ;  645 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1716 	; #ENR#[467]		break;
                           1717 ;  0 "" 2
                           1718 ;--- end asm ---
   08DE 7E 07 6A      [ 4] 1719 	jmp	L72	; 
   08E1                    1720 L74:
                           1721 ;----- asm -----
                           1722 ;  531 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1723 	; #ENR#[409]		switch (move) {
                           1724 ;  0 "" 2
                           1725 ;--- end asm ---
   08E1 E6 62         [ 5] 1726 	ldb	2,s	; , move
   08E3 C1 01         [ 2] 1727 	cmpb	#1	;cmpqi:	; ,
   08E5 27 1D         [ 3] 1728 	beq	L83	; 
   08E7 10 24 00 C8   [ 6] 1729 	lbhs	L110	; 
                           1730 ;----- asm -----
                           1731 ;  535 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1732 	; #ENR#[411]			blockAnimation = depth2RollingLeft;
                           1733 ;  0 "" 2
                           1734 ;--- end asm ---
   08EB 8E 38 E2      [ 3] 1735 	ldx	#_depth2RollingLeft	; ,
   08EE BF CA 81      [ 6] 1736 	stx	_blockAnimation	; , blockAnimation
                           1737 ;----- asm -----
                           1738 ;  537 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1739 	; #ENR#[412]			nextBlockAnimation = depth2RollingLeft;
                           1740 ;  0 "" 2
                           1741 ;--- end asm ---
   08F1 BF CA 83      [ 6] 1742 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           1743 ;----- asm -----
                           1744 ;  539 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1745 	; #ENR#[413]			nextBlockX = blockX - 1;
                           1746 ;  0 "" 2
                           1747 ;--- end asm ---
   08F4 F6 CA 7F      [ 5] 1748 	ldb	_blockX	; , blockX
   08F7 5A            [ 2] 1749 	decb	; 
   08F8 F7 CA 87      [ 5] 1750 	stb	_nextBlockX	; , nextBlockX
                           1751 ;----- asm -----
                           1752 ;  541 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1753 	; #ENR#[414]			nextBlockY = blockY;
                           1754 ;  0 "" 2
                           1755 ;--- end asm ---
   08FB F6 CA 80      [ 5] 1756 	ldb	_blockY	; , blockY
   08FE F7 CA 88      [ 5] 1757 	stb	_nextBlockY	; , nextBlockY
                           1758 ;----- asm -----
                           1759 ;  543 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1760 	; #ENR#[415]			break;
                           1761 ;  0 "" 2
                           1762 ;--- end asm ---
   0901                    1763 L81:
                           1764 ;----- asm -----
                           1765 ;  586 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1766 	; #ENR#[437]		break;
                           1767 ;  0 "" 2
                           1768 ;--- end asm ---
   0901 7E 07 6A      [ 4] 1769 	jmp	L72	; 
   0904                    1770 L83:
                           1771 ;----- asm -----
                           1772 ;  559 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1773 	; #ENR#[423]			blockAnimation = height2RisingBack;
                           1774 ;  0 "" 2
                           1775 ;--- end asm ---
   0904 8E 38 CA      [ 3] 1776 	ldx	#_height2RisingBack	; ,
   0907 BF CA 81      [ 6] 1777 	stx	_blockAnimation	; , blockAnimation
                           1778 ;----- asm -----
                           1779 ;  561 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1780 	; #ENR#[424]			nextBlockAnimation = height2FallingFront;
                           1781 ;  0 "" 2
                           1782 ;--- end asm ---
   090A 8E 38 B2      [ 3] 1783 	ldx	#_height2FallingFront	; ,
   090D BF CA 83      [ 6] 1784 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           1785 ;----- asm -----
                           1786 ;  563 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1787 	; #ENR#[425]			nextBlockX = blockX;
                           1788 ;  0 "" 2
                           1789 ;--- end asm ---
   0910 F6 CA 7F      [ 5] 1790 	ldb	_blockX	; , blockX
   0913 F7 CA 87      [ 5] 1791 	stb	_nextBlockX	; , nextBlockX
                           1792 ;----- asm -----
                           1793 ;  565 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1794 	; #ENR#[426]			nextBlockY = blockY + 2;
                           1795 ;  0 "" 2
                           1796 ;--- end asm ---
   0916 F6 CA 80      [ 5] 1797 	ldb	_blockY	; , blockY
   0919 CB 02         [ 2] 1798 	addb	#2	; ,
   091B F7 CA 88      [ 5] 1799 	stb	_nextBlockY	; , nextBlockY
                           1800 ;----- asm -----
                           1801 ;  567 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1802 	; #ENR#[427]			blockOrientation = Standing;
                           1803 ;  0 "" 2
                           1804 ;--- end asm ---
   091E 7F CA 7E      [ 7] 1805 	clr	_blockOrientation	;  blockOrientation
                           1806 ;----- asm -----
                           1807 ;  569 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1808 	; #ENR#[428]			break;
                           1809 ;  0 "" 2
                           1810 ;--- end asm ---
   0921 20 DE         [ 3] 1811 	bra	L81	; 
   0923                    1812 L88:
                           1813 ;----- asm -----
                           1814 ;  622 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1815 	; #ENR#[455]			blockAnimation = width2RollingBack;
                           1816 ;  0 "" 2
                           1817 ;--- end asm ---
   0923 8E 39 2A      [ 3] 1818 	ldx	#_width2RollingBack	; ,
   0926 BF CA 81      [ 6] 1819 	stx	_blockAnimation	; , blockAnimation
                           1820 ;----- asm -----
                           1821 ;  624 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1822 	; #ENR#[456]			nextBlockAnimation = width2RollingBack;
                           1823 ;  0 "" 2
                           1824 ;--- end asm ---
   0929 BF CA 83      [ 6] 1825 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           1826 ;----- asm -----
                           1827 ;  626 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1828 	; #ENR#[457]			nextBlockX = blockX;
                           1829 ;  0 "" 2
                           1830 ;--- end asm ---
   092C F6 CA 7F      [ 5] 1831 	ldb	_blockX	; , blockX
   092F F7 CA 87      [ 5] 1832 	stb	_nextBlockX	; , nextBlockX
                           1833 ;----- asm -----
                           1834 ;  628 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1835 	; #ENR#[458]			nextBlockY = blockY + 1;
                           1836 ;  0 "" 2
                           1837 ;--- end asm ---
   0932 F6 CA 80      [ 5] 1838 	ldb	_blockY	; , blockY
   0935 5C            [ 2] 1839 	incb	; 
   0936 F7 CA 88      [ 5] 1840 	stb	_nextBlockY	; , nextBlockY
                           1841 ;----- asm -----
                           1842 ;  630 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1843 	; #ENR#[459]			break;
                           1844 ;  0 "" 2
                           1845 ;--- end asm ---
   0939 7E 08 DE      [ 4] 1846 	jmp	L86	; 
   093C                    1847 L78:
                           1848 ;----- asm -----
                           1849 ;  500 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1850 	; #ENR#[393]			blockAnimation = height2FallingBack;
                           1851 ;  0 "" 2
                           1852 ;--- end asm ---
   093C 8E 38 82      [ 3] 1853 	ldx	#_height2FallingBack	; ,
   093F BF CA 81      [ 6] 1854 	stx	_blockAnimation	; , blockAnimation
                           1855 ;----- asm -----
                           1856 ;  502 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1857 	; #ENR#[394]			nextBlockAnimation = depth2RollingLeft;
                           1858 ;  0 "" 2
                           1859 ;--- end asm ---
   0942 8E 38 E2      [ 3] 1860 	ldx	#_depth2RollingLeft	; ,
   0945 BF CA 83      [ 6] 1861 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           1862 ;----- asm -----
                           1863 ;  504 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1864 	; #ENR#[395]			nextBlockX = blockX;
                           1865 ;  0 "" 2
                           1866 ;--- end asm ---
   0948 F6 CA 7F      [ 5] 1867 	ldb	_blockX	; , blockX
   094B F7 CA 87      [ 5] 1868 	stb	_nextBlockX	; , nextBlockX
                           1869 ;----- asm -----
                           1870 ;  506 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1871 	; #ENR#[396]			nextBlockY = blockY + 1;
                           1872 ;  0 "" 2
                           1873 ;--- end asm ---
   094E F6 CA 80      [ 5] 1874 	ldb	_blockY	; , blockY
   0951 5C            [ 2] 1875 	incb	; 
   0952 F7 CA 88      [ 5] 1876 	stb	_nextBlockY	; , nextBlockY
                           1877 ;----- asm -----
                           1878 ;  508 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1879 	; #ENR#[397]			blockOrientation = Vertical;
                           1880 ;  0 "" 2
                           1881 ;--- end asm ---
   0955 E6 62         [ 5] 1882 	ldb	2,s	; , move
   0957 F7 CA 7E      [ 5] 1883 	stb	_blockOrientation	; , blockOrientation
                           1884 ;----- asm -----
                           1885 ;  510 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1886 	; #ENR#[398]			break;
                           1887 ;  0 "" 2
                           1888 ;--- end asm ---
   095A 7E 08 B3      [ 4] 1889 	jmp	L76	; 
   095D                    1890 L109:
   095D C1 02         [ 2] 1891 	cmpb	#2	;cmpqi:	; ,
   095F 10 27 00 B6   [ 6] 1892 	lbeq	L89	; 
   0963 C1 03         [ 2] 1893 	cmpb	#3	;cmpqi:	; ,
   0965 10 26 FF 75   [ 6] 1894 	lbne	L86	; 
                           1895 ;----- asm -----
                           1896 ;  634 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1897 	; #ENR#[461]			blockAnimation = width2RollingFront;
                           1898 ;  0 "" 2
                           1899 ;--- end asm ---
   0969 8E 39 12      [ 3] 1900 	ldx	#_width2RollingFront	; ,
   096C BF CA 81      [ 6] 1901 	stx	_blockAnimation	; , blockAnimation
                           1902 ;----- asm -----
                           1903 ;  636 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1904 	; #ENR#[462]			nextBlockAnimation = width2RollingBack;
                           1905 ;  0 "" 2
                           1906 ;--- end asm ---
   096F 8E 39 2A      [ 3] 1907 	ldx	#_width2RollingBack	; ,
   0972 BF CA 83      [ 6] 1908 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           1909 ;----- asm -----
                           1910 ;  638 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1911 	; #ENR#[463]			nextBlockX = blockX;
                           1912 ;  0 "" 2
                           1913 ;--- end asm ---
   0975 F6 CA 7F      [ 5] 1914 	ldb	_blockX	; , blockX
   0978 F7 CA 87      [ 5] 1915 	stb	_nextBlockX	; , nextBlockX
                           1916 ;----- asm -----
                           1917 ;  640 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1918 	; #ENR#[464]			nextBlockY = blockY - 1;
                           1919 ;  0 "" 2
                           1920 ;--- end asm ---
   097B F6 CA 80      [ 5] 1921 	ldb	_blockY	; , blockY
   097E 5A            [ 2] 1922 	decb	; 
   097F F7 CA 88      [ 5] 1923 	stb	_nextBlockY	; , nextBlockY
                           1924 ;----- asm -----
                           1925 ;  642 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1926 	; #ENR#[465]			break;
                           1927 ;  0 "" 2
                           1928 ;--- end asm ---
   0982 7E 08 DE      [ 4] 1929 	jmp	L86	; 
   0985                    1930 L108:
   0985 C1 02         [ 2] 1931 	cmpb	#2	;cmpqi:	; ,
   0987 10 27 00 6D   [ 6] 1932 	lbeq	L79	; 
   098B C1 03         [ 2] 1933 	cmpb	#3	;cmpqi:	; ,
   098D 10 26 FF 22   [ 6] 1934 	lbne	L76	; 
                           1935 ;----- asm -----
                           1936 ;  514 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1937 	; #ENR#[400]			blockAnimation = height2FallingFront;
                           1938 ;  0 "" 2
                           1939 ;--- end asm ---
   0991 8E 38 B2      [ 3] 1940 	ldx	#_height2FallingFront	; ,
   0994 BF CA 81      [ 6] 1941 	stx	_blockAnimation	; , blockAnimation
                           1942 ;----- asm -----
                           1943 ;  516 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1944 	; #ENR#[401]			nextBlockAnimation = depth2RollingLeft;
                           1945 ;  0 "" 2
                           1946 ;--- end asm ---
   0997 8E 38 E2      [ 3] 1947 	ldx	#_depth2RollingLeft	; ,
   099A BF CA 83      [ 6] 1948 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           1949 ;----- asm -----
                           1950 ;  518 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1951 	; #ENR#[402]			nextBlockX = blockX;
                           1952 ;  0 "" 2
                           1953 ;--- end asm ---
   099D F6 CA 7F      [ 5] 1954 	ldb	_blockX	; , blockX
   09A0 F7 CA 87      [ 5] 1955 	stb	_nextBlockX	; , nextBlockX
                           1956 ;----- asm -----
                           1957 ;  520 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1958 	; #ENR#[403]			nextBlockY = blockY - 2;
                           1959 ;  0 "" 2
                           1960 ;--- end asm ---
   09A3 F6 CA 80      [ 5] 1961 	ldb	_blockY	; , blockY
   09A6 CB FE         [ 2] 1962 	addb	#-2	; ,
   09A8 F7 CA 88      [ 5] 1963 	stb	_nextBlockY	; , nextBlockY
                           1964 ;----- asm -----
                           1965 ;  522 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1966 	; #ENR#[404]			blockOrientation = Vertical;
                           1967 ;  0 "" 2
                           1968 ;--- end asm ---
   09AB C6 01         [ 2] 1969 	ldb	#1	; ,
   09AD F7 CA 7E      [ 5] 1970 	stb	_blockOrientation	; , blockOrientation
                           1971 ;----- asm -----
                           1972 ;  524 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1973 	; #ENR#[405]			break;
                           1974 ;  0 "" 2
                           1975 ;--- end asm ---
   09B0 7E 08 B3      [ 4] 1976 	jmp	L76	; 
   09B3                    1977 L110:
   09B3 C1 02         [ 2] 1978 	cmpb	#2	;cmpqi:	; ,
   09B5 27 25         [ 3] 1979 	beq	L84	; 
   09B7 C1 03         [ 2] 1980 	cmpb	#3	;cmpqi:	; ,
   09B9 10 26 FF 44   [ 6] 1981 	lbne	L81	; 
                           1982 ;----- asm -----
                           1983 ;  573 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1984 	; #ENR#[430]			blockAnimation = height2RisingFront;
                           1985 ;  0 "" 2
                           1986 ;--- end asm ---
   09BD 8E 38 9A      [ 3] 1987 	ldx	#_height2RisingFront	; ,
   09C0 BF CA 81      [ 6] 1988 	stx	_blockAnimation	; , blockAnimation
                           1989 ;----- asm -----
                           1990 ;  575 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1991 	; #ENR#[431]			nextBlockAnimation = height2FallingFront;
                           1992 ;  0 "" 2
                           1993 ;--- end asm ---
   09C3 8E 38 B2      [ 3] 1994 	ldx	#_height2FallingFront	; ,
   09C6 BF CA 83      [ 6] 1995 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           1996 ;----- asm -----
                           1997 ;  577 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1998 	; #ENR#[432]			nextBlockX = blockX;
                           1999 ;  0 "" 2
                           2000 ;--- end asm ---
   09C9 F6 CA 7F      [ 5] 2001 	ldb	_blockX	; , blockX
   09CC F7 CA 87      [ 5] 2002 	stb	_nextBlockX	; , nextBlockX
                           2003 ;----- asm -----
                           2004 ;  579 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2005 	; #ENR#[433]			nextBlockY = blockY - 1;
                           2006 ;  0 "" 2
                           2007 ;--- end asm ---
   09CF F6 CA 80      [ 5] 2008 	ldb	_blockY	; , blockY
   09D2 5A            [ 2] 2009 	decb	; 
   09D3 F7 CA 88      [ 5] 2010 	stb	_nextBlockY	; , nextBlockY
                           2011 ;----- asm -----
                           2012 ;  581 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2013 	; #ENR#[434]			blockOrientation = Standing;
                           2014 ;  0 "" 2
                           2015 ;--- end asm ---
   09D6 7F CA 7E      [ 7] 2016 	clr	_blockOrientation	;  blockOrientation
                           2017 ;----- asm -----
                           2018 ;  583 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2019 	; #ENR#[435]			break;
                           2020 ;  0 "" 2
                           2021 ;--- end asm ---
   09D9 7E 09 01      [ 4] 2022 	jmp	L81	; 
   09DC                    2023 L84:
                           2024 ;----- asm -----
                           2025 ;  547 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2026 	; #ENR#[417]			blockAnimation = depth2RollingRight;
                           2027 ;  0 "" 2
                           2028 ;--- end asm ---
   09DC 8E 38 FA      [ 3] 2029 	ldx	#_depth2RollingRight	; ,
   09DF BF CA 81      [ 6] 2030 	stx	_blockAnimation	; , blockAnimation
                           2031 ;----- asm -----
                           2032 ;  549 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2033 	; #ENR#[418]			nextBlockAnimation = depth2RollingLeft;
                           2034 ;  0 "" 2
                           2035 ;--- end asm ---
   09E2 8E 38 E2      [ 3] 2036 	ldx	#_depth2RollingLeft	; ,
   09E5 BF CA 83      [ 6] 2037 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           2038 ;----- asm -----
                           2039 ;  551 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2040 	; #ENR#[419]			nextBlockX = blockX + 1;
                           2041 ;  0 "" 2
                           2042 ;--- end asm ---
   09E8 F6 CA 7F      [ 5] 2043 	ldb	_blockX	; , blockX
   09EB 5C            [ 2] 2044 	incb	; 
   09EC F7 CA 87      [ 5] 2045 	stb	_nextBlockX	; , nextBlockX
                           2046 ;----- asm -----
                           2047 ;  553 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2048 	; #ENR#[420]			nextBlockY = blockY;
                           2049 ;  0 "" 2
                           2050 ;--- end asm ---
   09EF F6 CA 80      [ 5] 2051 	ldb	_blockY	; , blockY
   09F2 F7 CA 88      [ 5] 2052 	stb	_nextBlockY	; , nextBlockY
                           2053 ;----- asm -----
                           2054 ;  555 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2055 	; #ENR#[421]			break;
                           2056 ;  0 "" 2
                           2057 ;--- end asm ---
   09F5 7E 09 01      [ 4] 2058 	jmp	L81	; 
   09F8                    2059 L79:
                           2060 ;----- asm -----
                           2061 ;  486 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2062 	; #ENR#[386]			blockAnimation = height2FallingRight;
                           2063 ;  0 "" 2
                           2064 ;--- end asm ---
   09F8 8E 38 52      [ 3] 2065 	ldx	#_height2FallingRight	; ,
   09FB BF CA 81      [ 6] 2066 	stx	_blockAnimation	; , blockAnimation
                           2067 ;----- asm -----
                           2068 ;  488 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2069 	; #ENR#[387]			nextBlockAnimation = width2RollingFront;
                           2070 ;  0 "" 2
                           2071 ;--- end asm ---
   09FE 8E 39 12      [ 3] 2072 	ldx	#_width2RollingFront	; ,
   0A01 BF CA 83      [ 6] 2073 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           2074 ;----- asm -----
                           2075 ;  490 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2076 	; #ENR#[388]			nextBlockX = blockX + 1;
                           2077 ;  0 "" 2
                           2078 ;--- end asm ---
   0A04 F6 CA 7F      [ 5] 2079 	ldb	_blockX	; , blockX
   0A07 5C            [ 2] 2080 	incb	; 
   0A08 F7 CA 87      [ 5] 2081 	stb	_nextBlockX	; , nextBlockX
                           2082 ;----- asm -----
                           2083 ;  492 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2084 	; #ENR#[389]			nextBlockY = blockY;
                           2085 ;  0 "" 2
                           2086 ;--- end asm ---
   0A0B F6 CA 80      [ 5] 2087 	ldb	_blockY	; , blockY
   0A0E F7 CA 88      [ 5] 2088 	stb	_nextBlockY	; , nextBlockY
                           2089 ;----- asm -----
                           2090 ;  494 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2091 	; #ENR#[390]			blockOrientation = Horizontal;
                           2092 ;  0 "" 2
                           2093 ;--- end asm ---
   0A11 E6 62         [ 5] 2094 	ldb	2,s	; , move
   0A13 F7 CA 7E      [ 5] 2095 	stb	_blockOrientation	; , blockOrientation
                           2096 ;----- asm -----
                           2097 ;  496 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2098 	; #ENR#[391]			break;
                           2099 ;  0 "" 2
                           2100 ;--- end asm ---
   0A16 7E 08 B3      [ 4] 2101 	jmp	L76	; 
   0A19                    2102 L89:
                           2103 ;----- asm -----
                           2104 ;  608 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2105 	; #ENR#[448]			blockAnimation = height2RisingRight;
                           2106 ;  0 "" 2
                           2107 ;--- end asm ---
   0A19 8E 38 3A      [ 3] 2108 	ldx	#_height2RisingRight	; ,
   0A1C BF CA 81      [ 6] 2109 	stx	_blockAnimation	; , blockAnimation
                           2110 ;----- asm -----
                           2111 ;  610 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2112 	; #ENR#[449]			nextBlockAnimation = height2FallingLeft;
                           2113 ;  0 "" 2
                           2114 ;--- end asm ---
   0A1F 8E 38 22      [ 3] 2115 	ldx	#_height2FallingLeft	; ,
   0A22 BF CA 83      [ 6] 2116 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           2117 ;----- asm -----
                           2118 ;  612 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2119 	; #ENR#[450]			nextBlockX = blockX + 2;
                           2120 ;  0 "" 2
                           2121 ;--- end asm ---
   0A25 F6 CA 7F      [ 5] 2122 	ldb	_blockX	; , blockX
   0A28 CB 02         [ 2] 2123 	addb	#2	; ,
   0A2A F7 CA 87      [ 5] 2124 	stb	_nextBlockX	; , nextBlockX
                           2125 ;----- asm -----
                           2126 ;  614 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2127 	; #ENR#[451]			nextBlockY = blockY;
                           2128 ;  0 "" 2
                           2129 ;--- end asm ---
   0A2D F6 CA 80      [ 5] 2130 	ldb	_blockY	; , blockY
   0A30 F7 CA 88      [ 5] 2131 	stb	_nextBlockY	; , nextBlockY
                           2132 ;----- asm -----
                           2133 ;  616 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2134 	; #ENR#[452]			blockOrientation = Standing;
                           2135 ;  0 "" 2
                           2136 ;--- end asm ---
   0A33 7F CA 7E      [ 7] 2137 	clr	_blockOrientation	;  blockOrientation
                           2138 ;----- asm -----
                           2139 ;  618 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2140 	; #ENR#[453]			break;
                           2141 ;  0 "" 2
                           2142 ;--- end asm ---
   0A36 7E 08 DE      [ 4] 2143 	jmp	L86	; 
                           2144 	.globl _startBlockFalling
   0A39                    2145 _startBlockFalling:
                           2146 ;----- asm -----
                           2147 ;  656 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2148 	; #ENR#[475]	gameState = BlockFalling;
                           2149 ;  0 "" 2
                           2150 ;--- end asm ---
   0A39 C6 03         [ 2] 2151 	ldb	#3	; ,
   0A3B F7 CA 8F      [ 5] 2152 	stb	_gameState	; , gameState
                           2153 ;----- asm -----
                           2154 ;  658 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2155 	; #ENR#[476]	blockYOfs = 0;
                           2156 ;  0 "" 2
                           2157 ;--- end asm ---
   0A3E 7F CA 8A      [ 7] 2158 	clr	_blockYOfs	;  blockYOfs
                           2159 ;----- asm -----
                           2160 ;  660 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2161 	; #ENR#[477]	moveBlock(lastBlockDirection);
                           2162 ;  0 "" 2
                           2163 ;--- end asm ---
   0A41 F6 CA 89      [ 5] 2164 	ldb	_lastBlockDirection	; , lastBlockDirection
   0A44 BD 07 46      [ 8] 2165 	jsr	_moveBlock	; 
                           2166 ;----- asm -----
                           2167 ;  662 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2168 	; #ENR#[478]	changeMusic(fallingMusic);
                           2169 ;  0 "" 2
                           2170 ;  452 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2171 	; #ENR#[367]	tstat = 1;
                           2172 ;  0 "" 2
                           2173 ;--- end asm ---
   0A47 C6 01         [ 2] 2174 	ldb	#1	; ,
   0A49 F7 C8 56      [ 5] 2175 	stb	-14250	; ,
                           2176 ;----- asm -----
                           2177 ;  454 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2178 	; #ENR#[368]	currentMusic = music;
                           2179 ;  0 "" 2
                           2180 ;--- end asm ---
   0A4C 8E 16 8B      [ 3] 2181 	ldx	#_fallingMusic	; ,
   0A4F BF C8 80      [ 6] 2182 	stx	_currentMusic	; , currentMusic
   0A52 39            [ 5] 2183 	rts
                           2184 	.globl _setupX
   0A53                    2185 _setupX:
   0A53 34 60         [ 7] 2186 	pshs	y,u	; 
   0A55 32 E8 EA      [ 5] 2187 	leas	-22,s	; ,,
                           2188 ;----- asm -----
                           2189 ;  344 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2190 	; #ENR#[299]	unsigned long int index;
                           2191 ;  0 "" 2
                           2192 ;  346 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2193 	; #ENR#[300]	int8_t x = 0;
                           2194 ;  0 "" 2
                           2195 ;  348 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2196 	; #ENR#[301]	int8_t y = 0;
                           2197 ;  0 "" 2
                           2198 ;  350 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2199 	; #ENR#[302]	for (y = 0; y < LEVEL_HEIGHT - 1; y++) {
                           2200 ;  0 "" 2
                           2201 ;--- end asm ---
   0A58 BE CA 8B      [ 6] 2202 	ldx	_level	; , level
   0A5B AF E8 14      [ 6] 2203 	stx	20,s	; , ivtmp.471
   0A5E 6F 68         [ 7] 2204 	clr	8,s	;  y
   0A60 6F E8 13      [ 7] 2205 	clr	19,s	;  ivtmp.467
   0A63                    2206 L122:
                           2207 ;----- asm -----
                           2208 ;  352 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2209 	; #ENR#[303]		int8_t x0 = -1;
                           2210 ;  0 "" 2
                           2211 ;  354 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2212 	; #ENR#[304]		int8_t x1 = -1;
                           2213 ;  0 "" 2
                           2214 ;  356 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2215 	; #ENR#[305]		for (x = 0; x < LEVEL_WIDTH; x++) {
                           2216 ;  0 "" 2
                           2217 ;--- end asm ---
   0A63 E6 E8 13      [ 5] 2218 	ldb	19,s	; , ivtmp.467
   0A66 CB FA         [ 2] 2219 	addb	#-6	; ,
   0A68 E7 64         [ 5] 2220 	stb	4,s	; ,
   0A6A E6 68         [ 5] 2221 	ldb	8,s	; , y
   0A6C CB 14         [ 2] 2222 	addb	#20	; ,
   0A6E E7 68         [ 5] 2223 	stb	8,s	; , y
   0A70 58            [ 2] 2224 	aslb	; 
   0A71 58            [ 2] 2225 	aslb	; 
   0A72 58            [ 2] 2226 	aslb	; 
   0A73 E7 6F         [ 5] 2227 	stb	15,s	; , D.3630
   0A75 E6 68         [ 5] 2228 	ldb	8,s	; , y
   0A77 CB EC         [ 2] 2229 	addb	#-20	; ,
   0A79 E7 68         [ 5] 2230 	stb	8,s	; , y
   0A7B E6 E8 13      [ 5] 2231 	ldb	19,s	; , ivtmp.467
   0A7E CB EC         [ 2] 2232 	addb	#-20	; ,
   0A80 E7 E8 10      [ 5] 2233 	stb	16,s	; , ivtmp.452
   0A83 10 AE E8 14   [ 7] 2234 	ldy	20,s	;  ivtmp.475, ivtmp.471
   0A87 C6 FF         [ 2] 2235 	ldb	#-1	; ,
   0A89 E7 69         [ 5] 2236 	stb	9,s	; , x0
   0A8B E7 6A         [ 5] 2237 	stb	10,s	; , x1
   0A8D CE 00 00      [ 3] 2238 	ldu	#0	;  ivtmp.439,
   0A90 E6 68         [ 5] 2239 	ldb	8,s	; , y
   0A92 5C            [ 2] 2240 	incb	; 
   0A93 E7 63         [ 5] 2241 	stb	3,s	; ,
   0A95 7E 0B 37      [ 4] 2242 	jmp	L121	; 
   0A98                    2243 L115:
                           2244 ;----- asm -----
                           2245 ;  381 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2246 	; #ENR#[320]			index += LEVEL_WIDTH;
                           2247 ;  0 "" 2
                           2248 ;  383 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2249 	; #ENR#[321]			char c1 = level[index];
                           2250 ;  0 "" 2
                           2251 ;--- end asm ---
   0A98 E6 2C         [ 5] 2252 	ldb	12,y	; ,
   0A9A E7 62         [ 5] 2253 	stb	2,s	; , c1
                           2254 ;----- asm -----
                           2255 ;  385 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2256 	; #ENR#[322]			if (isField(c0) || isField(c1)) {
                           2257 ;  0 "" 2
                           2258 ;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2259 	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
                           2260 ;  0 "" 2
                           2261 ;--- end asm ---
   0A9C E6 6B         [ 5] 2262 	ldb	11,s	; , c0
   0A9E C1 2E         [ 2] 2263 	cmpb	#46	;cmpqi:	; ,
   0AA0 10 27 00 B2   [ 6] 2264 	lbeq	L116	; 
   0AA4 C1 61         [ 2] 2265 	cmpb	#97	;cmpqi:	; ,
   0AA6 10 27 00 AC   [ 6] 2266 	lbeq	L116	; 
   0AAA C1 6F         [ 2] 2267 	cmpb	#111	;cmpqi:	; ,
   0AAC 10 27 00 A6   [ 6] 2268 	lbeq	L116	; 
                           2269 ;----- asm -----
                           2270 ;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2271 	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
                           2272 ;  0 "" 2
                           2273 ;--- end asm ---
   0AB0 E6 62         [ 5] 2274 	ldb	2,s	; , c1
   0AB2 C1 2E         [ 2] 2275 	cmpb	#46	;cmpqi:	; ,
   0AB4 10 27 00 9E   [ 6] 2276 	lbeq	L116	; 
   0AB8 C1 61         [ 2] 2277 	cmpb	#97	;cmpqi:	; ,
   0ABA 10 27 00 98   [ 6] 2278 	lbeq	L116	; 
   0ABE C1 6F         [ 2] 2279 	cmpb	#111	;cmpqi:	; ,
   0AC0 10 27 00 92   [ 6] 2280 	lbeq	L116	; 
                           2281 ;----- asm -----
                           2282 ;  392 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2283 	; #ENR#[326]				if (x0 >= 0) {
                           2284 ;  0 "" 2
                           2285 ;--- end asm ---
   0AC4 E6 69         [ 5] 2286 	ldb	9,s	; , x0
   0AC6 C1 FF         [ 2] 2287 	cmpb	#-1	;cmpqi:	; ,
   0AC8 10 27 00 57   [ 6] 2288 	lbeq	L120	; 
                           2289 ;----- asm -----
                           2290 ;  394 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2291 	; #ENR#[327]					addLine(x0, y + 1, x1 + 1, y + 1);
                           2292 ;  0 "" 2
                           2293 ;--- end asm ---
   0ACC E6 6A         [ 5] 2294 	ldb	10,s	; , x1
   0ACE 5C            [ 2] 2295 	incb	; 
   0ACF E7 66         [ 5] 2296 	stb	6,s	; , D.2471
                           2297 ;----- asm -----
                           2298 ;  296 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2299 	; #ENR#[266]	lineX0[lineCount] = x3d(x0, 0, y0);
                           2300 ;  0 "" 2
                           2301 ;--- end asm ---
   0AD1 F6 C8 88      [ 5] 2302 	ldb	_lineCount	; , lineCount
   0AD4 E7 6E         [ 5] 2303 	stb	14,s	; , lineCount.8
                           2304 ;----- asm -----
                           2305 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2306 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           2307 ;  0 "" 2
                           2308 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2309 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           2310 ;  0 "" 2
                           2311 ;--- end asm ---
   0AD6 4F            [ 2] 2312 	clra		;zero_extendqihi: R:b -> R:d	; ,
   0AD7 1F 01         [ 6] 2313 	tfr	d,x	; , lineCount.8
   0AD9 E6 69         [ 5] 2314 	ldb	9,s	; , x0
   0ADB CB FE         [ 2] 2315 	addb	#-2	; ,
   0ADD E7 69         [ 5] 2316 	stb	9,s	; , x0
   0ADF 86 0E         [ 2] 2317 	lda	#14	;mulqihi3	; 
   0AE1 3D            [11] 2318 	mul
   0AE2 ED E4         [ 5] 2319 	std	,s	; ,
   0AE4 E6 69         [ 5] 2320 	ldb	9,s	; , x0
   0AE6 CB 02         [ 2] 2321 	addb	#2	; ,
   0AE8 E7 69         [ 5] 2322 	stb	9,s	; , x0
   0AEA E6 61         [ 5] 2323 	ldb	1,s	;movlsbqihi: msb:,s -> R:b	;  tmp329,
   0AEC EB 64         [ 5] 2324 	addb	4,s	;  tmp329,
   0AEE E7 89 C8 9E   [ 8] 2325 	stb	_lineX0,x	;  tmp329, lineX0
                           2326 ;----- asm -----
                           2327 ;  298 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2328 	; #ENR#[267]	lineY0[lineCount] = y3d(x0, 0, y0);
                           2329 ;  0 "" 2
                           2330 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2331 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           2332 ;  0 "" 2
                           2333 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2334 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           2335 ;  0 "" 2
                           2336 ;--- end asm ---
   0AF2 E6 69         [ 5] 2337 	ldb	9,s	;  tmp334, x0
   0AF4 58            [ 2] 2338 	aslb	;  tmp334
   0AF5 EB 69         [ 5] 2339 	addb	9,s	;  tmp334, x0
   0AF7 EB 6F         [ 5] 2340 	addb	15,s	;  tmp334, D.3630
   0AF9 E7 89 C9 16   [ 8] 2341 	stb	_lineY0,x	;  tmp334, lineY0
                           2342 ;----- asm -----
                           2343 ;  300 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2344 	; #ENR#[268]	lineX1[lineCount] = x3d(x1, 0, y1);
                           2345 ;  0 "" 2
                           2346 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2347 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           2348 ;  0 "" 2
                           2349 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2350 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           2351 ;  0 "" 2
                           2352 ;--- end asm ---
   0AFD 6A 6A         [ 7] 2353 	dec	10,s	;  x1
   0AFF E6 6A         [ 5] 2354 	ldb	10,s	; , x1
   0B01 86 0E         [ 2] 2355 	lda	#14	;mulqihi3	; 
   0B03 3D            [11] 2356 	mul
   0B04 ED E4         [ 5] 2357 	std	,s	; ,
   0B06 6C 6A         [ 7] 2358 	inc	10,s	;  x1
                           2359 		;movlsbqihi: D->B
   0B08 EB 64         [ 5] 2360 	addb	4,s	;  tmp341,
   0B0A E7 89 C9 8E   [ 8] 2361 	stb	_lineX1,x	;  tmp341, lineX1
                           2362 ;----- asm -----
                           2363 ;  302 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2364 	; #ENR#[269]	lineY1[lineCount] = y3d(x1, 0, y1);
                           2365 ;  0 "" 2
                           2366 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2367 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           2368 ;  0 "" 2
                           2369 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2370 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           2371 ;  0 "" 2
                           2372 ;--- end asm ---
   0B0E E6 66         [ 5] 2373 	ldb	6,s	;  tmp346, D.2471
   0B10 58            [ 2] 2374 	aslb	;  tmp346
   0B11 EB 66         [ 5] 2375 	addb	6,s	;  tmp346, D.2471
   0B13 EB 6F         [ 5] 2376 	addb	15,s	;  tmp346, D.3630
   0B15 E7 89 CA 06   [ 8] 2377 	stb	_lineY1,x	;  tmp346, lineY1
                           2378 ;----- asm -----
                           2379 ;  304 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2380 	; #ENR#[270]	lineCount++;
                           2381 ;  0 "" 2
                           2382 ;--- end asm ---
   0B19 E6 6E         [ 5] 2383 	ldb	14,s	; , lineCount.8
   0B1B 5C            [ 2] 2384 	incb	; 
   0B1C F7 C8 88      [ 5] 2385 	stb	_lineCount	; , lineCount
                           2386 ;----- asm -----
                           2387 ;  396 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2388 	; #ENR#[328]					x0 = -1;
                           2389 ;  0 "" 2
                           2390 ;--- end asm ---
   0B1F C6 FF         [ 2] 2391 	ldb	#-1	; ,
   0B21 E7 69         [ 5] 2392 	stb	9,s	; , x0
   0B23                    2393 L120:
   0B23 33 41         [ 5] 2394 	leau	1,u	;  ivtmp.439,, ivtmp.439
   0B25 31 21         [ 5] 2395 	leay	1,y	;  ivtmp.475,, ivtmp.475
   0B27 E6 E8 10      [ 5] 2396 	ldb	16,s	; , ivtmp.452
   0B2A CB 0E         [ 2] 2397 	addb	#14	; ,
   0B2C E7 E8 10      [ 5] 2398 	stb	16,s	; , ivtmp.452
   0B2F 11 83 00 0C   [ 5] 2399 	cmpu	#12	;cmphi:	;  ivtmp.439,
   0B33 10 27 00 DD   [ 6] 2400 	lbeq	L131	; 
   0B37                    2401 L121:
   0B37 1F 30         [ 6] 2402 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  ivtmp.439,
   0B39 E7 67         [ 5] 2403 	stb	7,s	; , x
                           2404 ;----- asm -----
                           2405 ;  359 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2406 	; #ENR#[307]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
                           2407 ;  0 "" 2
                           2408 ;  361 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2409 	; #ENR#[308]			char c0 = level[index];
                           2410 ;  0 "" 2
                           2411 ;--- end asm ---
   0B3B E6 A4         [ 4] 2412 	ldb	,y	; ,* ivtmp.475
   0B3D E7 6B         [ 5] 2413 	stb	11,s	; , c0
                           2414 ;----- asm -----
                           2415 ;  364 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2416 	; #ENR#[310]			if (c0 == 'o') {
                           2417 ;  0 "" 2
                           2418 ;--- end asm ---
   0B3F C1 6F         [ 2] 2419 	cmpb	#111	;cmpqi:	; ,
   0B41 27 26         [ 3] 2420 	beq	L132	; 
   0B43                    2421 L114:
                           2422 ;----- asm -----
                           2423 ;  373 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2424 	; #ENR#[315]			if (c0 == 'a') {
                           2425 ;  0 "" 2
                           2426 ;--- end asm ---
   0B43 C1 61         [ 2] 2427 	cmpb	#97	;cmpqi:	; ,
   0B45 10 26 FF 4F   [ 6] 2428 	lbne	L115	; 
                           2429 ;----- asm -----
                           2430 ;  375 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2431 	; #ENR#[316]				startX = x;
                           2432 ;  0 "" 2
                           2433 ;--- end asm ---
   0B49 E6 67         [ 5] 2434 	ldb	7,s	; , x
   0B4B F7 C8 89      [ 5] 2435 	stb	_startX	; , startX
                           2436 ;----- asm -----
                           2437 ;  377 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2438 	; #ENR#[317]				startY = y;
                           2439 ;  0 "" 2
                           2440 ;--- end asm ---
   0B4E E6 68         [ 5] 2441 	ldb	8,s	; , y
   0B50 F7 C8 8A      [ 5] 2442 	stb	_startY	; , startY
   0B53 7E 0A 98      [ 4] 2443 	jmp	L115	; 
   0B56                    2444 L116:
                           2445 ;----- asm -----
                           2446 ;  387 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2447 	; #ENR#[323]				if (x0 < 0) x0 = x;
                           2448 ;  0 "" 2
                           2449 ;--- end asm ---
   0B56 E6 69         [ 5] 2450 	ldb	9,s	; , x0
   0B58 C1 FF         [ 2] 2451 	cmpb	#-1	;cmpqi:	; ,
   0B5A 27 07         [ 3] 2452 	beq	L133	; 
   0B5C                    2453 L119:
                           2454 ;----- asm -----
                           2455 ;  389 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2456 	; #ENR#[324]				x1 = x;
                           2457 ;  0 "" 2
                           2458 ;--- end asm ---
   0B5C E6 67         [ 5] 2459 	ldb	7,s	; , x
   0B5E E7 6A         [ 5] 2460 	stb	10,s	; , x1
   0B60 7E 0B 23      [ 4] 2461 	jmp	L120	; 
   0B63                    2462 L133:
   0B63 E6 67         [ 5] 2463 	ldb	7,s	; , x
   0B65 E7 69         [ 5] 2464 	stb	9,s	; , x0
   0B67 20 F3         [ 3] 2465 	bra	L119	; 
   0B69                    2466 L132:
                           2467 ;----- asm -----
                           2468 ;  366 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2469 	; #ENR#[311]				addTarget(x, y);
                           2470 ;  0 "" 2
                           2471 ;  310 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2472 	; #ENR#[275]	lineX0[lineCount] = x3d(x, 0, y);
                           2473 ;  0 "" 2
                           2474 ;--- end asm ---
   0B69 F6 C8 88      [ 5] 2475 	ldb	_lineCount	; , lineCount
   0B6C E7 6C         [ 5] 2476 	stb	12,s	; , lineCount.10
                           2477 ;----- asm -----
                           2478 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2479 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           2480 ;  0 "" 2
                           2481 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2482 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           2483 ;  0 "" 2
                           2484 ;--- end asm ---
   0B6E E6 67         [ 5] 2485 	ldb	7,s	; , x
   0B70 86 0E         [ 2] 2486 	lda	#14	;umulqihi3	; 
   0B72 3D            [11] 2487 	mul
                           2488 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   0B73 1F 01         [ 6] 2489 	tfr	d,x	; , tmp289
                           2490 ; ORG>	tfr	d,x	; , tmp289
                           2491 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp289,
   0B75 E7 E8 11      [ 5] 2492 	stb	17,s	; , D.3679
   0B78 E6 6C         [ 5] 2493 	ldb	12,s	; , lineCount.10
   0B7A 4F            [ 2] 2494 	clra		;zero_extendqihi: R:b -> R:d	; ,
   0B7B 1F 01         [ 6] 2495 	tfr	d,x	; , lineCount.10
   0B7D E6 E8 13      [ 5] 2496 	ldb	19,s	; , ivtmp.467
   0B80 CB E4         [ 2] 2497 	addb	#-28	; ,
   0B82 E7 E8 13      [ 5] 2498 	stb	19,s	; , ivtmp.467
   0B85 EB E8 11      [ 5] 2499 	addb	17,s	; , D.3679
   0B88 E7 89 C8 9E   [ 8] 2500 	stb	_lineX0,x	; , lineX0
                           2501 ;----- asm -----
                           2502 ;  312 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2503 	; #ENR#[276]	lineY0[lineCount] = y3d(x, 0, y);
                           2504 ;  0 "" 2
                           2505 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2506 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           2507 ;  0 "" 2
                           2508 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2509 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           2510 ;  0 "" 2
                           2511 ;--- end asm ---
   0B8C E6 67         [ 5] 2512 	ldb	7,s	; , x
   0B8E 58            [ 2] 2513 	aslb	; 
   0B8F EB 67         [ 5] 2514 	addb	7,s	; , x
   0B91 E7 65         [ 5] 2515 	stb	5,s	; ,
   0B93 E6 68         [ 5] 2516 	ldb	8,s	; , y
   0B95 58            [ 2] 2517 	aslb	; 
   0B96 58            [ 2] 2518 	aslb	; 
   0B97 58            [ 2] 2519 	aslb	; 
   0B98 CB 98         [ 2] 2520 	addb	#-104	; ,
   0B9A E7 E8 12      [ 5] 2521 	stb	18,s	; , D.3685
   0B9D EB 65         [ 5] 2522 	addb	5,s	; ,
   0B9F E7 89 C9 16   [ 8] 2523 	stb	_lineY0,x	; , lineY0
                           2524 ;----- asm -----
                           2525 ;  314 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2526 	; #ENR#[277]	lineX1[lineCount] = x3d(x + 1, 0, y + 1);
                           2527 ;  0 "" 2
                           2528 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2529 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           2530 ;  0 "" 2
                           2531 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2532 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           2533 ;  0 "" 2
                           2534 ;--- end asm ---
   0BA3 E6 E8 10      [ 5] 2535 	ldb	16,s	; , ivtmp.452
   0BA6 E7 89 C9 8E   [ 8] 2536 	stb	_lineX1,x	; , lineX1
                           2537 ;----- asm -----
                           2538 ;  316 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2539 	; #ENR#[278]	lineY1[lineCount] = y3d(x + 1, 0, y + 1);
                           2540 ;  0 "" 2
                           2541 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2542 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           2543 ;  0 "" 2
                           2544 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2545 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           2546 ;  0 "" 2
                           2547 ;--- end asm ---
   0BAA E6 63         [ 5] 2548 	ldb	3,s	; ,
   0BAC 58            [ 2] 2549 	aslb	; 
   0BAD 58            [ 2] 2550 	aslb	; 
   0BAE 58            [ 2] 2551 	aslb	; 
   0BAF CB 9B         [ 2] 2552 	addb	#-101	; ,
   0BB1 E7 62         [ 5] 2553 	stb	2,s	; , D.3690
   0BB3 EB 65         [ 5] 2554 	addb	5,s	; ,
   0BB5 E7 89 CA 06   [ 8] 2555 	stb	_lineY1,x	; , lineY1
                           2556 ;----- asm -----
                           2557 ;  318 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2558 	; #ENR#[279]	lineCount++;
                           2559 ;  0 "" 2
                           2560 ;--- end asm ---
   0BB9 E6 6C         [ 5] 2561 	ldb	12,s	; , lineCount.10
   0BBB 5C            [ 2] 2562 	incb	; 
   0BBC E7 6D         [ 5] 2563 	stb	13,s	; , lineCount.11
                           2564 ;----- asm -----
                           2565 ;  320 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2566 	; #ENR#[280]	lineX0[lineCount] = x3d(x + 1, 0, y);
                           2567 ;  0 "" 2
                           2568 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2569 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           2570 ;  0 "" 2
                           2571 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2572 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           2573 ;  0 "" 2
                           2574 ;--- end asm ---
   0BBE 4F            [ 2] 2575 	clra		;zero_extendqihi: R:b -> R:d	; ,
   0BBF 1F 01         [ 6] 2576 	tfr	d,x	; , lineCount.11
   0BC1 E6 E8 13      [ 5] 2577 	ldb	19,s	; , ivtmp.467
   0BC4 CB 0E         [ 2] 2578 	addb	#14	; ,
   0BC6 E7 E8 13      [ 5] 2579 	stb	19,s	; , ivtmp.467
   0BC9 E6 E8 11      [ 5] 2580 	ldb	17,s	; , D.3679
   0BCC EB E8 13      [ 5] 2581 	addb	19,s	; , ivtmp.467
   0BCF E7 89 C8 9E   [ 8] 2582 	stb	_lineX0,x	; , lineX0
   0BD3 E6 E8 13      [ 5] 2583 	ldb	19,s	; , ivtmp.467
   0BD6 CB 0E         [ 2] 2584 	addb	#14	; ,
   0BD8 E7 E8 13      [ 5] 2585 	stb	19,s	; , ivtmp.467
                           2586 ;----- asm -----
                           2587 ;  322 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2588 	; #ENR#[281]	lineY0[lineCount] = y3d(x + 1, 0, y);
                           2589 ;  0 "" 2
                           2590 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2591 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           2592 ;  0 "" 2
                           2593 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2594 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           2595 ;  0 "" 2
                           2596 ;--- end asm ---
   0BDB E6 E8 12      [ 5] 2597 	ldb	18,s	; , D.3685
   0BDE CB 03         [ 2] 2598 	addb	#3	; ,
   0BE0 E7 E8 12      [ 5] 2599 	stb	18,s	; , D.3685
   0BE3 E6 65         [ 5] 2600 	ldb	5,s	; ,
   0BE5 EB E8 12      [ 5] 2601 	addb	18,s	; , D.3685
   0BE8 E7 89 C9 16   [ 8] 2602 	stb	_lineY0,x	; , lineY0
                           2603 ;----- asm -----
                           2604 ;  324 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2605 	; #ENR#[282]	lineX1[lineCount] = x3d(x, 0, y + 1);
                           2606 ;  0 "" 2
                           2607 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2608 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           2609 ;  0 "" 2
                           2610 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2611 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           2612 ;  0 "" 2
                           2613 ;--- end asm ---
   0BEC E6 E8 10      [ 5] 2614 	ldb	16,s	; , ivtmp.452
   0BEF CB F2         [ 2] 2615 	addb	#-14	; ,
   0BF1 E7 89 C9 8E   [ 8] 2616 	stb	_lineX1,x	; , lineX1
                           2617 ;----- asm -----
                           2618 ;  326 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2619 	; #ENR#[283]	lineY1[lineCount] = y3d(x, 0, y + 1);
                           2620 ;  0 "" 2
                           2621 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2622 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           2623 ;  0 "" 2
                           2624 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2625 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           2626 ;  0 "" 2
                           2627 ;--- end asm ---
   0BF5 E6 62         [ 5] 2628 	ldb	2,s	; , D.3690
   0BF7 CB FD         [ 2] 2629 	addb	#-3	; ,
   0BF9 EB 65         [ 5] 2630 	addb	5,s	; ,
   0BFB E7 89 CA 06   [ 8] 2631 	stb	_lineY1,x	; , lineY1
                           2632 ;----- asm -----
                           2633 ;  328 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2634 	; #ENR#[284]	lineCount++;
                           2635 ;  0 "" 2
                           2636 ;--- end asm ---
   0BFF E6 6D         [ 5] 2637 	ldb	13,s	; , lineCount.11
   0C01 5C            [ 2] 2638 	incb	; 
   0C02 F7 C8 88      [ 5] 2639 	stb	_lineCount	; , lineCount
                           2640 ;----- asm -----
                           2641 ;  368 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2642 	; #ENR#[312]				endX = x;
                           2643 ;  0 "" 2
                           2644 ;--- end asm ---
   0C05 1F 30         [ 6] 2645 	tfr	u,d	;  ivtmp.439,
   0C07 F7 C8 8B      [ 5] 2646 	stb	_endX	;movlsbqihi: R:d -> _endX	;  endX,
                           2647 ;----- asm -----
                           2648 ;  370 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2649 	; #ENR#[313]				endY = y;
                           2650 ;  0 "" 2
                           2651 ;--- end asm ---
   0C0A E6 68         [ 5] 2652 	ldb	8,s	; , y
   0C0C F7 C8 8C      [ 5] 2653 	stb	_endY	; , endY
   0C0F E6 6B         [ 5] 2654 	ldb	11,s	; , c0
   0C11 7E 0B 43      [ 4] 2655 	jmp	L114	; 
   0C14                    2656 L131:
   0C14 E6 63         [ 5] 2657 	ldb	3,s	; ,
   0C16 E7 68         [ 5] 2658 	stb	8,s	; , y
   0C18 E6 64         [ 5] 2659 	ldb	4,s	; ,
   0C1A E7 E8 13      [ 5] 2660 	stb	19,s	; , ivtmp.467
   0C1D EC E8 14      [ 6] 2661 	ldd	20,s	; , ivtmp.471
   0C20 C3 00 0C      [ 4] 2662 	addd	#12	; ,
   0C23 ED E8 14      [ 6] 2663 	std	20,s	; , ivtmp.471
   0C26 E6 68         [ 5] 2664 	ldb	8,s	; , y
   0C28 C1 10         [ 2] 2665 	cmpb	#16	;cmpqi:	; ,
   0C2A 10 26 FE 35   [ 6] 2666 	lbne	L122	; 
   0C2E 32 E8 16      [ 5] 2667 	leas	22,s	; ,,
   0C31 35 E0         [ 8] 2668 	puls	y,u,pc	; 
                           2669 	.globl _blockMoving
   0C33                    2670 _blockMoving:
   0C33 34 40         [ 6] 2671 	pshs	u	; 
   0C35 32 70         [ 5] 2672 	leas	-16,s	; ,,
                           2673 ;----- asm -----
                           2674 ;  854 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2675 	; #ENR#[616]	drawField();
                           2676 ;  0 "" 2
                           2677 ;--- end asm ---
   0C37 BD 04 3E      [ 8] 2678 	jsr	_drawField	; 
                           2679 ;----- asm -----
                           2680 ;  856 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2681 	; #ENR#[617]	drawBlock(0);
                           2682 ;  0 "" 2
                           2683 ;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2684 	; #ENR#[559]	zergnd();
                           2685 ;  0 "" 2
                           2686 ;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0C3A BD F3 54      [ 8] 2687 	jsr ___Reset0Ref; BIOS call
                           2688 ;  0 "" 2
                           2689 ;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2690 	; #ENR#[560]	intens(0x63);
                           2691 ;  0 "" 2
                           2692 ;--- end asm ---
   0C3D C6 63         [ 2] 2693 	ldb	#99	; ,
   0C3F E7 6E         [ 5] 2694 	stb	14,s	; , a
                           2695 ;----- asm -----
                           2696 ;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0C41 A6 6E         [ 5] 2697 	lda 14,s	;  a
   0C43 BD F2 AB      [ 8] 2698 	jsr ___Intensity_a; BIOS call
                           2699 ;  0 "" 2
                           2700 ;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2701 	; #ENR#[561]	positd(0, yofs);
                           2702 ;  0 "" 2
                           2703 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2704 	; #ENR#[50]	Moveto_d_7F(y,x);
                           2705 ;  0 "" 2
                           2706 ;--- end asm ---
   0C46 6F 6F         [ 7] 2707 	clr	15,s	;  a
   0C48 6F 6E         [ 7] 2708 	clr	14,s	;  b
                           2709 ;----- asm -----
                           2710 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0C4A A6 6F         [ 5] 2711 	lda 15,s	;  a
   0C4C E6 6E         [ 5] 2712 	ldb 14,s	;  b
   0C4E BD F2 FC      [ 8] 2713 	jsr ___Moveto_d_7F; BIOS call
                           2714 ;  0 "" 2
                           2715 ;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2716 	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           2717 ;  0 "" 2
                           2718 ;--- end asm ---
   0C51 F6 CA 7F      [ 5] 2719 	ldb	_blockX	; , blockX
   0C54 E7 69         [ 5] 2720 	stb	9,s	; , blockX.40
                           2721 ;----- asm -----
                           2722 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2723 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           2724 ;  0 "" 2
                           2725 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2726 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           2727 ;  0 "" 2
                           2728 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2729 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           2730 ;  0 "" 2
                           2731 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2732 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           2733 ;  0 "" 2
                           2734 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2735 	; #ENR#[50]	Moveto_d_7F(y,x);
                           2736 ;  0 "" 2
                           2737 ;--- end asm ---
   0C56 58            [ 2] 2738 	aslb	; 
   0C57 EB 69         [ 5] 2739 	addb	9,s	; , blockX.40
   0C59 E7 62         [ 5] 2740 	stb	2,s	; ,
   0C5B F6 CA 80      [ 5] 2741 	ldb	_blockY	; , blockY
   0C5E 58            [ 2] 2742 	aslb	; 
   0C5F 58            [ 2] 2743 	aslb	; 
   0C60 58            [ 2] 2744 	aslb	; 
   0C61 E7 64         [ 5] 2745 	stb	4,s	; ,
   0C63 E6 62         [ 5] 2746 	ldb	2,s	; ,
   0C65 EB 64         [ 5] 2747 	addb	4,s	; ,
   0C67 CB 98         [ 2] 2748 	addb	#-104	; ,
   0C69 E7 6E         [ 5] 2749 	stb	14,s	; , a
   0C6B E6 69         [ 5] 2750 	ldb	9,s	; , blockX.40
   0C6D CB FE         [ 2] 2751 	addb	#-2	; ,
   0C6F 86 0E         [ 2] 2752 	lda	#14	;mulqihi3	; 
   0C71 3D            [11] 2753 	mul
   0C72 1F 03         [ 6] 2754 	tfr	d,u	; , tmp44
   0C74 F6 CA 80      [ 5] 2755 	ldb	_blockY	; , blockY
   0C77 86 FA         [ 2] 2756 	lda	#-6	;mulqihi3	; 
   0C79 3D            [11] 2757 	mul
   0C7A 1F 01         [ 6] 2758 	tfr	d,x	; , tmp45
   0C7C 1F 30         [ 6] 2759 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp44,
   0C7E E7 63         [ 5] 2760 	stb	3,s	; ,
   0C80 1F 10         [ 6] 2761 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp45, tmp47
   0C82 EB 63         [ 5] 2762 	addb	3,s	;  tmp47,
   0C84 E7 6F         [ 5] 2763 	stb	15,s	;  tmp47, b
                           2764 ;----- asm -----
                           2765 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0C86 A6 6E         [ 5] 2766 	lda 14,s	;  a
   0C88 E6 6F         [ 5] 2767 	ldb 15,s	;  b
   0C8A BD F2 FC      [ 8] 2768 	jsr ___Moveto_d_7F; BIOS call
                           2769 ;  0 "" 2
                           2770 ;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2771 	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           2772 ;  0 "" 2
                           2773 ;--- end asm ---
   0C8D F6 CA 85      [ 5] 2774 	ldb	_blockAnimationStep	; , blockAnimationStep
   0C90 1D            [ 2] 2775 	sex		;extendqihi2: R:b -> R:d	; ,
   0C91 ED E4         [ 5] 2776 	std	,s	; ,
   0C93 58            [ 2] 2777 	aslb	; 
   0C94 49            [ 2] 2778 	rola	; 
   0C95 FE CA 81      [ 6] 2779 	ldu	_blockAnimation	; , blockAnimation
   0C98 30 CB         [ 8] 2780 	leax	d,u	;  tmp51, tmp50,
   0C9A AE 84         [ 5] 2781 	ldx	,x	; ,
                           2782 ; Applied peep: 2 (no load after store)
                           2783 ;----- asm -----
                           2784 ;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0C9C AF 6C         [ 6] 2785 	stx	12,s	; , x
                           2786 ; ORG>	stx	12,s	; , x
                           2787 ; ORG>;----- asm -----
                           2788 ; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
                           2789 ; ORG>	ldx 12,s	;  x
   0C9E BD F4 08      [ 8] 2790 	jsr ___Draw_VLp_7F; BIOS call
                           2791 ;  0 "" 2
                           2792 ;  858 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2793 	; #ENR#[618]	doBlockAnimation();
                           2794 ;  0 "" 2
                           2795 ;  834 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2796 	; #ENR#[603]	if (blockAnimating) {
                           2797 ;  0 "" 2
                           2798 ;--- end asm ---
   0CA1 7D CA 86      [ 7] 2799 	tst	_blockAnimating	;  blockAnimating
   0CA4 27 0C         [ 3] 2800 	beq	L135	; 
                           2801 ;----- asm -----
                           2802 ;  836 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2803 	; #ENR#[604]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
                           2804 ;  0 "" 2
                           2805 ;--- end asm ---
   0CA6 7C CA 85      [ 7] 2806 	inc	_blockAnimationStep	;  blockAnimationStep
   0CA9 F6 CA 85      [ 5] 2807 	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
   0CAC C1 0C         [ 2] 2808 	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
   0CAE 10 27 00 D8   [ 6] 2809 	lbeq	L157	; 
   0CB2                    2810 L135:
                           2811 ;----- asm -----
                           2812 ;  860 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2813 	; #ENR#[619]	if (!blockAnimating) {
                           2814 ;  0 "" 2
                           2815 ;--- end asm ---
   0CB2 7D CA 86      [ 7] 2816 	tst	_blockAnimating	;  blockAnimating
   0CB5 10 26 00 9C   [ 6] 2817 	lbne	L156	; 
                           2818 ;----- asm -----
                           2819 ;  866 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2820 	; #ENR#[624]		unsigned long int index = (unsigned long int )blockY * LEVEL_WIDTH + (unsigned long int)blockX;
                           2821 ;  0 "" 2
                           2822 ;--- end asm ---
   0CB9 F6 CA 80      [ 5] 2823 	ldb	_blockY	; , blockY
   0CBC 86 0C         [ 2] 2824 	lda	#12	;mulqihi3	; 
   0CBE 3D            [11] 2825 	mul
   0CBF 1F 03         [ 6] 2826 	tfr	d,u	; , tmp54
   0CC1 F6 CA 7F      [ 5] 2827 	ldb	_blockX	; , blockX
   0CC4 1D            [ 2] 2828 	sex		;extendqihi2: R:b -> R:d	; ,
   0CC5 1F 01         [ 6] 2829 	tfr	d,x	; , blockX
   0CC7 1F 30         [ 6] 2830 	tfr	u,d	;  tmp54,
   0CC9 30 8B         [ 8] 2831 	leax	d,x	; ,, blockX
   0CCB AF E4         [ 5] 2832 	stx	,s	; , index
                           2833 ;----- asm -----
                           2834 ;  868 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2835 	; #ENR#[625]		char c0 = isField(level[index]);
                           2836 ;  0 "" 2
                           2837 ;--- end asm ---
   0CCD 1E 01         [ 8] 2838 	exg	d,x	; , tmp64
   0CCF F3 CA 8B      [ 7] 2839 	addd	_level	; , level
   0CD2 1E 01         [ 8] 2840 	exg	d,x	; , tmp64
   0CD4 E6 84         [ 4] 2841 	ldb	,x	;  D.2622,
                           2842 ;----- asm -----
                           2843 ;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2844 	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
                           2845 ;  0 "" 2
                           2846 ;--- end asm ---
   0CD6 C1 2E         [ 2] 2847 	cmpb	#46	;cmpqi:	;  D.2622,
   0CD8 10 27 00 7E   [ 6] 2848 	lbeq	L137	; 
   0CDC C1 61         [ 2] 2849 	cmpb	#97	;cmpqi:	;  D.2622,
   0CDE 10 27 00 78   [ 6] 2850 	lbeq	L137	; 
   0CE2 C8 6F         [ 2] 2851 	eorb	#111	;  D.2622,
   0CE4 4F            [ 2] 2852 	clra		;zero_extendqihi: R:b -> R:d	;  D.2622, tmp66
   0CE5 C3 FF FF      [ 4] 2853 	addd	#-1	;  tmp67,
   0CE8 1F 89         [ 6] 2854 	tfr	a,b	; ,
   0CEA 4F            [ 2] 2855 	clra		;zero_extendqihi: R:b -> R:d	; ,
   0CEB 59            [ 2] 2856 	rolb	; 
   0CEC 59            [ 2] 2857 	rolb	; 
   0CED C4 01         [ 2] 2858 	andb	#1	; ,
   0CEF E7 6B         [ 5] 2859 	stb	11,s	; , prephitmp.490
   0CF1                    2860 L139:
                           2861 ;----- asm -----
                           2862 ;  870 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2863 	; #ENR#[626]		char c1 = isField(level[index+1]);
                           2864 ;  0 "" 2
                           2865 ;--- end asm ---
   0CF1 E6 01         [ 5] 2866 	ldb	1,x	;  D.2626,
                           2867 ;----- asm -----
                           2868 ;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2869 	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
                           2870 ;  0 "" 2
                           2871 ;--- end asm ---
   0CF3 C1 2E         [ 2] 2872 	cmpb	#46	;cmpqi:	;  D.2626,
   0CF5 10 27 00 81   [ 6] 2873 	lbeq	L140	; 
   0CF9 C1 61         [ 2] 2874 	cmpb	#97	;cmpqi:	;  D.2626,
   0CFB 10 27 00 7B   [ 6] 2875 	lbeq	L140	; 
   0CFF C8 6F         [ 2] 2876 	eorb	#111	;  D.2626,
   0D01 4F            [ 2] 2877 	clra		;zero_extendqihi: R:b -> R:d	;  D.2626, tmp70
   0D02 C3 FF FF      [ 4] 2878 	addd	#-1	;  tmp71,
   0D05 1F 89         [ 6] 2879 	tfr	a,b	; ,
   0D07 4F            [ 2] 2880 	clra		;zero_extendqihi: R:b -> R:d	; ,
   0D08 59            [ 2] 2881 	rolb	; 
   0D09 59            [ 2] 2882 	rolb	; 
   0D0A C4 01         [ 2] 2883 	andb	#1	; ,
   0D0C E7 66         [ 5] 2884 	stb	6,s	; , iftmp.7
   0D0E                    2885 L142:
                           2886 ;----- asm -----
                           2887 ;  872 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2888 	; #ENR#[627]		char c2 = isField(level[index + LEVEL_WIDTH]);
                           2889 ;  0 "" 2
                           2890 ;--- end asm ---
   0D0E E6 0C         [ 5] 2891 	ldb	12,x	;  D.2630,
                           2892 ;----- asm -----
                           2893 ;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2894 	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
                           2895 ;  0 "" 2
                           2896 ;--- end asm ---
   0D10 C1 2E         [ 2] 2897 	cmpb	#46	;cmpqi:	;  D.2630,
   0D12 27 4D         [ 3] 2898 	beq	L143	; 
   0D14 C1 61         [ 2] 2899 	cmpb	#97	;cmpqi:	;  D.2630,
   0D16 27 49         [ 3] 2900 	beq	L143	; 
   0D18 C8 6F         [ 2] 2901 	eorb	#111	;  D.2630,
   0D1A 4F            [ 2] 2902 	clra		;zero_extendqihi: R:b -> R:d	;  D.2630, tmp74
   0D1B C3 FF FF      [ 4] 2903 	addd	#-1	;  tmp75,
   0D1E 1F 89         [ 6] 2904 	tfr	a,b	; ,
   0D20 4F            [ 2] 2905 	clra		;zero_extendqihi: R:b -> R:d	; ,
   0D21 59            [ 2] 2906 	rolb	; 
   0D22 59            [ 2] 2907 	rolb	; 
   0D23 C4 01         [ 2] 2908 	andb	#1	; ,
   0D25 E7 68         [ 5] 2909 	stb	8,s	; , iftmp.7
                           2910 ;----- asm -----
                           2911 ;  874 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2912 	; #ENR#[628]		switch (blockOrientation) {
                           2913 ;  0 "" 2
                           2914 ;--- end asm ---
   0D27 F6 CA 7E      [ 5] 2915 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   0D2A C1 01         [ 2] 2916 	cmpb	#1	;cmpqi:	;  blockOrientation,
   0D2C 27 3E         [ 3] 2917 	beq	L148	; 
   0D2E                    2918 L160:
   0D2E C1 01         [ 2] 2919 	cmpb	#1	;cmpqi:	;  blockOrientation,
   0D30 10 25 00 4D   [ 6] 2920 	lblo	L147	; 
   0D34 C1 02         [ 2] 2921 	cmpb	#2	;cmpqi:	;  blockOrientation,
   0D36 10 27 00 6B   [ 6] 2922 	lbeq	L158	; 
   0D3A                    2923 L146:
                           2924 ;----- asm -----
                           2925 ;  906 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2926 	; #ENR#[647]		if (blockOrientation == Standing && blockX == endX && blockY == endY) {
                           2927 ;  0 "" 2
                           2928 ;--- end asm ---
   0D3A 7D CA 7E      [ 7] 2929 	tst	_blockOrientation	;  blockOrientation
   0D3D 26 0A         [ 3] 2930 	bne	L155	; 
   0D3F F6 CA 7F      [ 5] 2931 	ldb	_blockX	; , blockX
   0D42 F1 C8 8B      [ 5] 2932 	cmpb	_endX	;cmpqi:	; , endX
   0D45 10 27 00 6A   [ 6] 2933 	lbeq	L159	; 
   0D49                    2934 L155:
                           2935 ;----- asm -----
                           2936 ;  916 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2937 	; #ENR#[653]			if (gameState != BlockFalling) {
                           2938 ;  0 "" 2
                           2939 ;--- end asm ---
   0D49 F6 CA 8F      [ 5] 2940 	ldb	_gameState	; , gameState
   0D4C C1 03         [ 2] 2941 	cmpb	#3	;cmpqi:	; ,
   0D4E 27 05         [ 3] 2942 	beq	L156	; 
                           2943 ;----- asm -----
                           2944 ;  918 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2945 	; #ENR#[654]				gameState = BlockWaiting;
                           2946 ;  0 "" 2
                           2947 ;--- end asm ---
   0D50 C6 01         [ 2] 2948 	ldb	#1	; ,
   0D52 F7 CA 8F      [ 5] 2949 	stb	_gameState	; , gameState
   0D55                    2950 L156:
   0D55 32 E8 10      [ 5] 2951 	leas	16,s	; ,,
   0D58 35 C0         [ 7] 2952 	puls	u,pc	; 
   0D5A                    2953 L137:
   0D5A C6 01         [ 2] 2954 	ldb	#1	; ,
   0D5C E7 6B         [ 5] 2955 	stb	11,s	; , prephitmp.490
   0D5E 7E 0C F1      [ 4] 2956 	jmp	L139	; 
   0D61                    2957 L143:
   0D61 C6 01         [ 2] 2958 	ldb	#1	; ,
   0D63 E7 68         [ 5] 2959 	stb	8,s	; , iftmp.7
                           2960 ;----- asm -----
                           2961 ;  874 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2962 	; #ENR#[628]		switch (blockOrientation) {
                           2963 ;  0 "" 2
                           2964 ;--- end asm ---
   0D65 F6 CA 7E      [ 5] 2965 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   0D68 C1 01         [ 2] 2966 	cmpb	#1	;cmpqi:	;  blockOrientation,
   0D6A 26 C2         [ 3] 2967 	bne	L160	; 
   0D6C                    2968 L148:
                           2969 ;----- asm -----
                           2970 ;  887 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2971 	; #ENR#[635]			if (!c0 || !c2) {
                           2972 ;  0 "" 2
                           2973 ;--- end asm ---
   0D6C 6D 6B         [ 7] 2974 	tst	11,s	;  prephitmp.490
   0D6E 27 04         [ 3] 2975 	beq	L151	; 
   0D70 6D 68         [ 7] 2976 	tst	8,s	;  iftmp.7
   0D72 26 03         [ 3] 2977 	bne	L152	; 
   0D74                    2978 L151:
                           2979 ;----- asm -----
                           2980 ;  889 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2981 	; #ENR#[636]				startBlockFalling();
                           2982 ;  0 "" 2
                           2983 ;--- end asm ---
   0D74 BD 0A 39      [ 8] 2984 	jsr	_startBlockFalling	; 
   0D77                    2985 L152:
                           2986 ;----- asm -----
                           2987 ;  892 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2988 	; #ENR#[638]			break;
                           2989 ;  0 "" 2
                           2990 ;--- end asm ---
   0D77 7E 0D 3A      [ 4] 2991 	jmp	L146	; 
   0D7A                    2992 L140:
   0D7A C6 01         [ 2] 2993 	ldb	#1	; ,
   0D7C E7 66         [ 5] 2994 	stb	6,s	; , iftmp.7
   0D7E 7E 0D 0E      [ 4] 2995 	jmp	L142	; 
   0D81                    2996 L147:
                           2997 ;----- asm -----
                           2998 ;  878 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2999 	; #ENR#[630]			if (!c0) {
                           3000 ;  0 "" 2
                           3001 ;--- end asm ---
   0D81 6D 6B         [ 7] 3002 	tst	11,s	;  prephitmp.490
   0D83 10 27 00 4C   [ 6] 3003 	lbeq	L161	; 
   0D87                    3004 L150:
                           3005 ;----- asm -----
                           3006 ;  883 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3007 	; #ENR#[633]			break;
                           3008 ;  0 "" 2
                           3009 ;--- end asm ---
   0D87 7E 0D 3A      [ 4] 3010 	jmp	L146	; 
   0D8A                    3011 L157:
                           3012 ;----- asm -----
                           3013 ;  838 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3014 	; #ENR#[605]			blockX = nextBlockX;
                           3015 ;  0 "" 2
                           3016 ;--- end asm ---
   0D8A F6 CA 87      [ 5] 3017 	ldb	_nextBlockX	; , nextBlockX
   0D8D F7 CA 7F      [ 5] 3018 	stb	_blockX	; , blockX
                           3019 ;----- asm -----
                           3020 ;  840 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3021 	; #ENR#[606]			blockY = nextBlockY;
                           3022 ;  0 "" 2
                           3023 ;--- end asm ---
   0D90 F6 CA 88      [ 5] 3024 	ldb	_nextBlockY	; , nextBlockY
   0D93 F7 CA 80      [ 5] 3025 	stb	_blockY	; , blockY
                           3026 ;----- asm -----
                           3027 ;  842 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3028 	; #ENR#[607]			blockAnimationStep = 0;
                           3029 ;  0 "" 2
                           3030 ;--- end asm ---
   0D96 7F CA 85      [ 7] 3031 	clr	_blockAnimationStep	;  blockAnimationStep
                           3032 ;----- asm -----
                           3033 ;  844 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3034 	; #ENR#[608]			blockAnimation = nextBlockAnimation;
                           3035 ;  0 "" 2
                           3036 ;--- end asm ---
   0D99 BE CA 83      [ 6] 3037 	ldx	_nextBlockAnimation	; , nextBlockAnimation
   0D9C BF CA 81      [ 6] 3038 	stx	_blockAnimation	; , blockAnimation
                           3039 ;----- asm -----
                           3040 ;  846 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3041 	; #ENR#[609]			blockAnimating = 0;
                           3042 ;  0 "" 2
                           3043 ;--- end asm ---
   0D9F 7F CA 86      [ 7] 3044 	clr	_blockAnimating	;  blockAnimating
   0DA2 7E 0C B2      [ 4] 3045 	jmp	L135	; 
   0DA5                    3046 L158:
                           3047 ;----- asm -----
                           3048 ;  896 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3049 	; #ENR#[640]			if (!c0 || ! c1) {
                           3050 ;  0 "" 2
                           3051 ;--- end asm ---
   0DA5 6D 6B         [ 7] 3052 	tst	11,s	;  prephitmp.490
   0DA7 27 04         [ 3] 3053 	beq	L153	; 
   0DA9 6D 66         [ 7] 3054 	tst	6,s	;  iftmp.7
   0DAB 26 03         [ 3] 3055 	bne	L154	; 
   0DAD                    3056 L153:
                           3057 ;----- asm -----
                           3058 ;  898 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3059 	; #ENR#[641]				startBlockFalling();
                           3060 ;  0 "" 2
                           3061 ;--- end asm ---
   0DAD BD 0A 39      [ 8] 3062 	jsr	_startBlockFalling	; 
   0DB0                    3063 L154:
                           3064 ;----- asm -----
                           3065 ;  901 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3066 	; #ENR#[643]			break;
                           3067 ;  0 "" 2
                           3068 ;--- end asm ---
   0DB0 7E 0D 3A      [ 4] 3069 	jmp	L146	; 
   0DB3                    3070 L159:
   0DB3 F6 CA 80      [ 5] 3071 	ldb	_blockY	; , blockY
   0DB6 F1 C8 8C      [ 5] 3072 	cmpb	_endY	;cmpqi:	; , endY
   0DB9 10 26 FF 8C   [ 6] 3073 	lbne	L155	; 
                           3074 ;----- asm -----
                           3075 ;  908 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3076 	; #ENR#[648]			blockYOfs = 0;
                           3077 ;  0 "" 2
                           3078 ;--- end asm ---
   0DBD 7F CA 8A      [ 7] 3079 	clr	_blockYOfs	;  blockYOfs
                           3080 ;----- asm -----
                           3081 ;  910 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3082 	; #ENR#[649]			gameState = BlockMovingAtEnd;
                           3083 ;  0 "" 2
                           3084 ;--- end asm ---
   0DC0 C6 04         [ 2] 3085 	ldb	#4	; ,
   0DC2 F7 CA 8F      [ 5] 3086 	stb	_gameState	; , gameState
                           3087 ;----- asm -----
                           3088 ;  912 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3089 	; #ENR#[650]			changeMusic(levelEndMusic);
                           3090 ;  0 "" 2
                           3091 ;  452 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3092 	; #ENR#[367]	tstat = 1;
                           3093 ;  0 "" 2
                           3094 ;--- end asm ---
   0DC5 C6 01         [ 2] 3095 	ldb	#1	; ,
   0DC7 F7 C8 56      [ 5] 3096 	stb	-14250	; ,
                           3097 ;----- asm -----
                           3098 ;  454 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3099 	; #ENR#[368]	currentMusic = music;
                           3100 ;  0 "" 2
                           3101 ;--- end asm ---
   0DCA 8E 16 71      [ 3] 3102 	ldx	#_levelEndMusic	; ,
   0DCD BF C8 80      [ 6] 3103 	stx	_currentMusic	; , currentMusic
   0DD0 7E 0D 55      [ 4] 3104 	jmp	L156	; 
   0DD3                    3105 L161:
                           3106 ;----- asm -----
                           3107 ;  880 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3108 	; #ENR#[631]				startBlockFalling();
                           3109 ;  0 "" 2
                           3110 ;--- end asm ---
   0DD3 BD 0A 39      [ 8] 3111 	jsr	_startBlockFalling	; 
   0DD6 7E 0D 87      [ 4] 3112 	jmp	L150	; 
                           3113 	.globl _blockMovingToStart
   0DD9                    3114 _blockMovingToStart:
   0DD9 34 40         [ 6] 3115 	pshs	u	; 
   0DDB 32 75         [ 5] 3116 	leas	-11,s	; ,,
                           3117 ;----- asm -----
                           3118 ;  782 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3119 	; #ENR#[570]	drawField();
                           3120 ;  0 "" 2
                           3121 ;--- end asm ---
   0DDD BD 04 3E      [ 8] 3122 	jsr	_drawField	; 
                           3123 ;----- asm -----
                           3124 ;  784 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3125 	; #ENR#[571]	drawBlock(blockYOfs);
                           3126 ;  0 "" 2
                           3127 ;--- end asm ---
   0DE0 F6 CA 8A      [ 5] 3128 	ldb	_blockYOfs	; , blockYOfs
   0DE3 E7 65         [ 5] 3129 	stb	5,s	; , blockYOfs.43
                           3130 ;----- asm -----
                           3131 ;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3132 	; #ENR#[559]	zergnd();
                           3133 ;  0 "" 2
                           3134 ;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0DE5 BD F3 54      [ 8] 3135 	jsr ___Reset0Ref; BIOS call
                           3136 ;  0 "" 2
                           3137 ;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3138 	; #ENR#[560]	intens(0x63);
                           3139 ;  0 "" 2
                           3140 ;--- end asm ---
   0DE8 C6 63         [ 2] 3141 	ldb	#99	; ,
   0DEA E7 69         [ 5] 3142 	stb	9,s	; , a
                           3143 ;----- asm -----
                           3144 ;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0DEC A6 69         [ 5] 3145 	lda 9,s	;  a
   0DEE BD F2 AB      [ 8] 3146 	jsr ___Intensity_a; BIOS call
                           3147 ;  0 "" 2
                           3148 ;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3149 	; #ENR#[561]	positd(0, yofs);
                           3150 ;  0 "" 2
                           3151 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3152 	; #ENR#[50]	Moveto_d_7F(y,x);
                           3153 ;  0 "" 2
                           3154 ;--- end asm ---
   0DF1 E6 65         [ 5] 3155 	ldb	5,s	; , blockYOfs.43
   0DF3 E7 6A         [ 5] 3156 	stb	10,s	; , a
   0DF5 6F 69         [ 7] 3157 	clr	9,s	;  b
                           3158 ;----- asm -----
                           3159 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0DF7 A6 6A         [ 5] 3160 	lda 10,s	;  a
   0DF9 E6 69         [ 5] 3161 	ldb 9,s	;  b
   0DFB BD F2 FC      [ 8] 3162 	jsr ___Moveto_d_7F; BIOS call
                           3163 ;  0 "" 2
                           3164 ;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3165 	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           3166 ;  0 "" 2
                           3167 ;--- end asm ---
   0DFE F6 CA 7F      [ 5] 3168 	ldb	_blockX	; , blockX
   0E01 E7 66         [ 5] 3169 	stb	6,s	; , blockX.40
                           3170 ;----- asm -----
                           3171 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3172 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           3173 ;  0 "" 2
                           3174 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3175 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           3176 ;  0 "" 2
                           3177 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3178 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           3179 ;  0 "" 2
                           3180 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3181 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           3182 ;  0 "" 2
                           3183 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3184 	; #ENR#[50]	Moveto_d_7F(y,x);
                           3185 ;  0 "" 2
                           3186 ;--- end asm ---
   0E03 58            [ 2] 3187 	aslb	; 
   0E04 EB 66         [ 5] 3188 	addb	6,s	; , blockX.40
   0E06 E7 62         [ 5] 3189 	stb	2,s	; ,
   0E08 F6 CA 80      [ 5] 3190 	ldb	_blockY	; , blockY
   0E0B 58            [ 2] 3191 	aslb	; 
   0E0C 58            [ 2] 3192 	aslb	; 
   0E0D 58            [ 2] 3193 	aslb	; 
   0E0E E7 64         [ 5] 3194 	stb	4,s	; ,
   0E10 E6 62         [ 5] 3195 	ldb	2,s	; ,
   0E12 EB 64         [ 5] 3196 	addb	4,s	; ,
   0E14 CB 98         [ 2] 3197 	addb	#-104	; ,
   0E16 E7 69         [ 5] 3198 	stb	9,s	; , a
   0E18 E6 66         [ 5] 3199 	ldb	6,s	; , blockX.40
   0E1A CB FE         [ 2] 3200 	addb	#-2	; ,
   0E1C 86 0E         [ 2] 3201 	lda	#14	;mulqihi3	; 
   0E1E 3D            [11] 3202 	mul
   0E1F 1F 03         [ 6] 3203 	tfr	d,u	; , tmp37
   0E21 F6 CA 80      [ 5] 3204 	ldb	_blockY	; , blockY
   0E24 86 FA         [ 2] 3205 	lda	#-6	;mulqihi3	; 
   0E26 3D            [11] 3206 	mul
   0E27 1F 01         [ 6] 3207 	tfr	d,x	; , tmp38
   0E29 1F 30         [ 6] 3208 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp37,
   0E2B E7 63         [ 5] 3209 	stb	3,s	; ,
   0E2D 1F 10         [ 6] 3210 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp38, tmp40
   0E2F EB 63         [ 5] 3211 	addb	3,s	;  tmp40,
   0E31 E7 6A         [ 5] 3212 	stb	10,s	;  tmp40, b
                           3213 ;----- asm -----
                           3214 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0E33 A6 69         [ 5] 3215 	lda 9,s	;  a
   0E35 E6 6A         [ 5] 3216 	ldb 10,s	;  b
   0E37 BD F2 FC      [ 8] 3217 	jsr ___Moveto_d_7F; BIOS call
                           3218 ;  0 "" 2
                           3219 ;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3220 	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           3221 ;  0 "" 2
                           3222 ;--- end asm ---
   0E3A F6 CA 85      [ 5] 3223 	ldb	_blockAnimationStep	; , blockAnimationStep
   0E3D 1D            [ 2] 3224 	sex		;extendqihi2: R:b -> R:d	; ,
   0E3E ED E4         [ 5] 3225 	std	,s	; ,
   0E40 58            [ 2] 3226 	aslb	; 
   0E41 49            [ 2] 3227 	rola	; 
   0E42 FE CA 81      [ 6] 3228 	ldu	_blockAnimation	; , blockAnimation
   0E45 30 CB         [ 8] 3229 	leax	d,u	;  tmp44, tmp43,
   0E47 AE 84         [ 5] 3230 	ldx	,x	; ,
                           3231 ; Applied peep: 2 (no load after store)
                           3232 ;----- asm -----
                           3233 ;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0E49 AF 67         [ 6] 3234 	stx	7,s	; , x
                           3235 ; ORG>	stx	7,s	; , x
                           3236 ; ORG>;----- asm -----
                           3237 ; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
                           3238 ; ORG>	ldx 7,s	;  x
   0E4B BD F4 08      [ 8] 3239 	jsr ___Draw_VLp_7F; BIOS call
                           3240 ;  0 "" 2
                           3241 ;  786 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3242 	; #ENR#[572]	blockYOfs++;
                           3243 ;  0 "" 2
                           3244 ;--- end asm ---
   0E4E 7C CA 8A      [ 7] 3245 	inc	_blockYOfs	;  blockYOfs
   0E51 F6 CA 8A      [ 5] 3246 	ldb	_blockYOfs	;  blockYOfs.44, blockYOfs
                           3247 ;----- asm -----
                           3248 ;  788 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3249 	; #ENR#[573]	if (blockYOfs == 0) {
                           3250 ;  0 "" 2
                           3251 ;--- end asm ---
   0E54 5D            [ 2] 3252 	tstb	;  blockYOfs.44
   0E55 26 05         [ 3] 3253 	bne	L164	; 
                           3254 ;----- asm -----
                           3255 ;  790 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3256 	; #ENR#[574]		gameState = BlockWaiting;
                           3257 ;  0 "" 2
                           3258 ;--- end asm ---
   0E57 C6 01         [ 2] 3259 	ldb	#1	; ,
   0E59 F7 CA 8F      [ 5] 3260 	stb	_gameState	; , gameState
   0E5C                    3261 L164:
   0E5C 32 6B         [ 5] 3262 	leas	11,s	; ,,
   0E5E 35 C0         [ 7] 3263 	puls	u,pc	; 
                           3264 	.globl _blockWaiting
   0E60                    3265 _blockWaiting:
   0E60 34 40         [ 6] 3266 	pshs	u	; 
   0E62 32 76         [ 5] 3267 	leas	-10,s	; ,,
                           3268 ;----- asm -----
                           3269 ;  797 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3270 	; #ENR#[580]	drawField();
                           3271 ;  0 "" 2
                           3272 ;--- end asm ---
   0E64 BD 04 3E      [ 8] 3273 	jsr	_drawField	; 
                           3274 ;----- asm -----
                           3275 ;  799 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3276 	; #ENR#[581]	drawBlock(0);
                           3277 ;  0 "" 2
                           3278 ;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3279 	; #ENR#[559]	zergnd();
                           3280 ;  0 "" 2
                           3281 ;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0E67 BD F3 54      [ 8] 3282 	jsr ___Reset0Ref; BIOS call
                           3283 ;  0 "" 2
                           3284 ;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3285 	; #ENR#[560]	intens(0x63);
                           3286 ;  0 "" 2
                           3287 ;--- end asm ---
   0E6A C6 63         [ 2] 3288 	ldb	#99	; ,
   0E6C E7 68         [ 5] 3289 	stb	8,s	; , a
                           3290 ;----- asm -----
                           3291 ;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0E6E A6 68         [ 5] 3292 	lda 8,s	;  a
   0E70 BD F2 AB      [ 8] 3293 	jsr ___Intensity_a; BIOS call
                           3294 ;  0 "" 2
                           3295 ;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3296 	; #ENR#[561]	positd(0, yofs);
                           3297 ;  0 "" 2
                           3298 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3299 	; #ENR#[50]	Moveto_d_7F(y,x);
                           3300 ;  0 "" 2
                           3301 ;--- end asm ---
   0E73 6F 69         [ 7] 3302 	clr	9,s	;  a
   0E75 6F 68         [ 7] 3303 	clr	8,s	;  b
                           3304 ;----- asm -----
                           3305 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0E77 A6 69         [ 5] 3306 	lda 9,s	;  a
   0E79 E6 68         [ 5] 3307 	ldb 8,s	;  b
   0E7B BD F2 FC      [ 8] 3308 	jsr ___Moveto_d_7F; BIOS call
                           3309 ;  0 "" 2
                           3310 ;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3311 	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           3312 ;  0 "" 2
                           3313 ;--- end asm ---
   0E7E F6 CA 7F      [ 5] 3314 	ldb	_blockX	; , blockX
   0E81 E7 65         [ 5] 3315 	stb	5,s	; , blockX.40
                           3316 ;----- asm -----
                           3317 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3318 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           3319 ;  0 "" 2
                           3320 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3321 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           3322 ;  0 "" 2
                           3323 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3324 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           3325 ;  0 "" 2
                           3326 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3327 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           3328 ;  0 "" 2
                           3329 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3330 	; #ENR#[50]	Moveto_d_7F(y,x);
                           3331 ;  0 "" 2
                           3332 ;--- end asm ---
   0E83 58            [ 2] 3333 	aslb	; 
   0E84 EB 65         [ 5] 3334 	addb	5,s	; , blockX.40
   0E86 E7 62         [ 5] 3335 	stb	2,s	; ,
   0E88 F6 CA 80      [ 5] 3336 	ldb	_blockY	; , blockY
   0E8B 58            [ 2] 3337 	aslb	; 
   0E8C 58            [ 2] 3338 	aslb	; 
   0E8D 58            [ 2] 3339 	aslb	; 
   0E8E E7 64         [ 5] 3340 	stb	4,s	; ,
   0E90 E6 62         [ 5] 3341 	ldb	2,s	; ,
   0E92 EB 64         [ 5] 3342 	addb	4,s	; ,
   0E94 CB 98         [ 2] 3343 	addb	#-104	; ,
   0E96 E7 68         [ 5] 3344 	stb	8,s	; , a
   0E98 E6 65         [ 5] 3345 	ldb	5,s	; , blockX.40
   0E9A CB FE         [ 2] 3346 	addb	#-2	; ,
   0E9C 86 0E         [ 2] 3347 	lda	#14	;mulqihi3	; 
   0E9E 3D            [11] 3348 	mul
   0E9F 1F 03         [ 6] 3349 	tfr	d,u	; , tmp39
   0EA1 F6 CA 80      [ 5] 3350 	ldb	_blockY	; , blockY
   0EA4 86 FA         [ 2] 3351 	lda	#-6	;mulqihi3	; 
   0EA6 3D            [11] 3352 	mul
   0EA7 1F 01         [ 6] 3353 	tfr	d,x	; , tmp40
   0EA9 1F 30         [ 6] 3354 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp39,
   0EAB E7 63         [ 5] 3355 	stb	3,s	; ,
   0EAD 1F 10         [ 6] 3356 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp40, tmp42
   0EAF EB 63         [ 5] 3357 	addb	3,s	;  tmp42,
   0EB1 E7 69         [ 5] 3358 	stb	9,s	;  tmp42, b
                           3359 ;----- asm -----
                           3360 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0EB3 A6 68         [ 5] 3361 	lda 8,s	;  a
   0EB5 E6 69         [ 5] 3362 	ldb 9,s	;  b
   0EB7 BD F2 FC      [ 8] 3363 	jsr ___Moveto_d_7F; BIOS call
                           3364 ;  0 "" 2
                           3365 ;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3366 	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           3367 ;  0 "" 2
                           3368 ;--- end asm ---
   0EBA F6 CA 85      [ 5] 3369 	ldb	_blockAnimationStep	; , blockAnimationStep
   0EBD 1D            [ 2] 3370 	sex		;extendqihi2: R:b -> R:d	; ,
   0EBE ED E4         [ 5] 3371 	std	,s	; ,
   0EC0 58            [ 2] 3372 	aslb	; 
   0EC1 49            [ 2] 3373 	rola	; 
   0EC2 FE CA 81      [ 6] 3374 	ldu	_blockAnimation	; , blockAnimation
   0EC5 30 CB         [ 8] 3375 	leax	d,u	;  tmp46, tmp45,
   0EC7 AE 84         [ 5] 3376 	ldx	,x	; ,
                           3377 ; Applied peep: 2 (no load after store)
                           3378 ;----- asm -----
                           3379 ;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0EC9 AF 66         [ 6] 3380 	stx	6,s	; , x
                           3381 ; ORG>	stx	6,s	; , x
                           3382 ; ORG>;----- asm -----
                           3383 ; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
                           3384 ; ORG>	ldx 6,s	;  x
   0ECB BD F4 08      [ 8] 3385 	jsr ___Draw_VLp_7F; BIOS call
                           3386 ;  0 "" 2
                           3387 ;  801 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3388 	; #ENR#[582]	joybit();
                           3389 ;  0 "" 2
                           3390 ;  2354 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0ECE BD F1 F8      [ 8] 3391 	jsr ___Joy_Digital; BIOS call
                           3392 ;  0 "" 2
                           3393 ;  803 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3394 	; #ENR#[583]	if (pot0 < -10) {
                           3395 ;  0 "" 2
                           3396 ;--- end asm ---
   0ED1 F6 C8 1B      [ 5] 3397 	ldb	-14309	;  D.2590,
   0ED4 C1 F6         [ 2] 3398 	cmpb	#-10	;cmpqi:	;  D.2590,
   0ED6 10 2D 00 3B   [ 6] 3399 	lblt	L172	; 
   0EDA F6 C8 1B      [ 5] 3400 	ldb	-14309	;  D.2591,
   0EDD C1 0A         [ 2] 3401 	cmpb	#10	;cmpqi:	;  D.2591,
   0EDF 2E 28         [ 3] 3402 	bgt	L173	; 
   0EE1 F6 C8 1C      [ 5] 3403 	ldb	-14308	;  D.2593,
   0EE4 C1 F6         [ 2] 3404 	cmpb	#-10	;cmpqi:	;  D.2593,
   0EE6 10 2D 00 37   [ 6] 3405 	lblt	L174	; 
   0EEA F6 C8 1C      [ 5] 3406 	ldb	-14308	;  D.2594,
   0EED C1 0A         [ 2] 3407 	cmpb	#10	;cmpqi:	;  D.2594,
   0EEF 10 2E 00 3B   [ 6] 3408 	lbgt	L175	; 
   0EF3                    3409 L167:
                           3410 ;----- asm -----
                           3411 ;  825 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3412 	; #ENR#[596]	if (gameState == BlockMoving) {
                           3413 ;  0 "" 2
                           3414 ;--- end asm ---
   0EF3 F6 CA 8F      [ 5] 3415 	ldb	_gameState	; , gameState
   0EF6 C1 02         [ 2] 3416 	cmpb	#2	;cmpqi:	; ,
   0EF8 26 0B         [ 3] 3417 	bne	L171	; 
                           3418 ;----- asm -----
                           3419 ;  827 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3420 	; #ENR#[597]		changeMusic(movingMusic);
                           3421 ;  0 "" 2
                           3422 ;  452 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3423 	; #ENR#[367]	tstat = 1;
                           3424 ;  0 "" 2
                           3425 ;--- end asm ---
   0EFA C6 01         [ 2] 3426 	ldb	#1	; ,
   0EFC F7 C8 56      [ 5] 3427 	stb	-14250	; ,
                           3428 ;----- asm -----
                           3429 ;  454 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3430 	; #ENR#[368]	currentMusic = music;
                           3431 ;  0 "" 2
                           3432 ;--- end asm ---
   0EFF 8E 16 AB      [ 3] 3433 	ldx	#_movingMusic	; ,
   0F02 BF C8 80      [ 6] 3434 	stx	_currentMusic	; , currentMusic
   0F05                    3435 L171:
   0F05 32 6A         [ 5] 3436 	leas	10,s	; ,,
   0F07 35 C0         [ 7] 3437 	puls	u,pc	; 
   0F09                    3438 L173:
                           3439 ;----- asm -----
                           3440 ;  810 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3441 	; #ENR#[587]		moveBlock(Right);
                           3442 ;  0 "" 2
                           3443 ;--- end asm ---
   0F09 C6 02         [ 2] 3444 	ldb	#2	; ,
   0F0B BD 07 46      [ 8] 3445 	jsr	_moveBlock	; 
                           3446 ;----- asm -----
                           3447 ;  812 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3448 	; #ENR#[588]		gameState = BlockMoving;
                           3449 ;  0 "" 2
                           3450 ;--- end asm ---
   0F0E C6 02         [ 2] 3451 	ldb	#2	; ,
   0F10 F7 CA 8F      [ 5] 3452 	stb	_gameState	; , gameState
   0F13 20 DE         [ 3] 3453 	bra	L167	; 
   0F15                    3454 L172:
                           3455 ;----- asm -----
                           3456 ;  805 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3457 	; #ENR#[584]		moveBlock(Left);
                           3458 ;  0 "" 2
                           3459 ;--- end asm ---
   0F15 5F            [ 2] 3460 	clrb	; 
   0F16 BD 07 46      [ 8] 3461 	jsr	_moveBlock	; 
                           3462 ;----- asm -----
                           3463 ;  807 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3464 	; #ENR#[585]		gameState = BlockMoving;
                           3465 ;  0 "" 2
                           3466 ;--- end asm ---
   0F19 C6 02         [ 2] 3467 	ldb	#2	; ,
   0F1B F7 CA 8F      [ 5] 3468 	stb	_gameState	; , gameState
   0F1E 7E 0E F3      [ 4] 3469 	jmp	L167	; 
   0F21                    3470 L174:
                           3471 ;----- asm -----
                           3472 ;  815 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3473 	; #ENR#[590]		moveBlock(Down);
                           3474 ;  0 "" 2
                           3475 ;--- end asm ---
   0F21 C6 03         [ 2] 3476 	ldb	#3	; ,
   0F23 BD 07 46      [ 8] 3477 	jsr	_moveBlock	; 
                           3478 ;----- asm -----
                           3479 ;  817 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3480 	; #ENR#[591]		gameState = BlockMoving;
                           3481 ;  0 "" 2
                           3482 ;--- end asm ---
   0F26 C6 02         [ 2] 3483 	ldb	#2	; ,
   0F28 F7 CA 8F      [ 5] 3484 	stb	_gameState	; , gameState
   0F2B 7E 0E F3      [ 4] 3485 	jmp	L167	; 
   0F2E                    3486 L175:
                           3487 ;----- asm -----
                           3488 ;  820 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3489 	; #ENR#[593]		moveBlock(Up);
                           3490 ;  0 "" 2
                           3491 ;--- end asm ---
   0F2E C6 01         [ 2] 3492 	ldb	#1	; ,
   0F30 BD 07 46      [ 8] 3493 	jsr	_moveBlock	; 
                           3494 ;----- asm -----
                           3495 ;  822 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3496 	; #ENR#[594]		gameState = BlockMoving;
                           3497 ;  0 "" 2
                           3498 ;--- end asm ---
   0F33 C6 02         [ 2] 3499 	ldb	#2	; ,
   0F35 F7 CA 8F      [ 5] 3500 	stb	_gameState	; , gameState
   0F38 7E 0E F3      [ 4] 3501 	jmp	L167	; 
                           3502 	.globl _writeEeprom
   0F3B                    3503 _writeEeprom:
   0F3B 34 04         [ 6] 3504 	pshs	b	; 
                           3505 ;----- asm -----
                           3506 ;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3507 	; #ENR#[208]	if (picAvailable) {
                           3508 ;  0 "" 2
                           3509 ;--- end asm ---
   0F3D 7D C8 9D      [ 7] 3510 	tst	_picAvailable	;  picAvailable
   0F40 10 27 00 2A   [ 6] 3511 	lbeq	L178	; 
                           3512 ;----- asm -----
                           3513 ;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3514 	; #ENR#[209]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
                           3515 ;  0 "" 2
                           3516 ;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3517 	; #ENR#[197]	uint8_t result;
                           3518 ;  0 "" 2
                           3519 ;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3520 	; #ENR#[198]	picWrite('V');
                           3521 ;  0 "" 2
                           3522 ;--- end asm ---
   0F44 C6 56         [ 2] 3523 	ldb	#86	; ,
   0F46 BD 01 55      [ 8] 3524 	jsr	_picWrite	; 
                           3525 ;----- asm -----
                           3526 ;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3527 	; #ENR#[199]	picWrite(cmd);
                           3528 ;  0 "" 2
                           3529 ;--- end asm ---
   0F49 C6 02         [ 2] 3530 	ldb	#2	; ,
   0F4B BD 01 55      [ 8] 3531 	jsr	_picWrite	; 
                           3532 ;----- asm -----
                           3533 ;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3534 	; #ENR#[200]	picWrite(arg);
                           3535 ;  0 "" 2
                           3536 ;--- end asm ---
   0F4E E6 E4         [ 4] 3537 	ldb	,s	; , address
   0F50 BD 01 55      [ 8] 3538 	jsr	_picWrite	; 
                           3539 ;----- asm -----
                           3540 ;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3541 	; #ENR#[201]	result = picRead();
                           3542 ;  0 "" 2
                           3543 ;--- end asm ---
   0F53 BD 01 A1      [ 8] 3544 	jsr	_picRead	; 
                           3545 ;----- asm -----
                           3546 ;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3547 	; #ENR#[202]	delay10ms();
                           3548 ;  0 "" 2
                           3549 ;--- end asm ---
   0F56 BD 01 FE      [ 8] 3550 	jsr	_delay10ms	; 
                           3551 ;----- asm -----
                           3552 ;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3553 	; #ENR#[203]	return result;
                           3554 ;  0 "" 2
                           3555 ;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3556 	; #ENR#[210]	    	sendCommand(CMD_EEPROM_WRITE, data);
                           3557 ;  0 "" 2
                           3558 ;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3559 	; #ENR#[197]	uint8_t result;
                           3560 ;  0 "" 2
                           3561 ;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3562 	; #ENR#[198]	picWrite('V');
                           3563 ;  0 "" 2
                           3564 ;--- end asm ---
   0F59 C6 56         [ 2] 3565 	ldb	#86	; ,
   0F5B BD 01 55      [ 8] 3566 	jsr	_picWrite	; 
                           3567 ;----- asm -----
                           3568 ;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3569 	; #ENR#[199]	picWrite(cmd);
                           3570 ;  0 "" 2
                           3571 ;--- end asm ---
   0F5E C6 03         [ 2] 3572 	ldb	#3	; ,
   0F60 BD 01 55      [ 8] 3573 	jsr	_picWrite	; 
                           3574 ;----- asm -----
                           3575 ;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3576 	; #ENR#[200]	picWrite(arg);
                           3577 ;  0 "" 2
                           3578 ;--- end asm ---
   0F63 E6 63         [ 5] 3579 	ldb	3,s	; , data
   0F65 BD 01 55      [ 8] 3580 	jsr	_picWrite	; 
                           3581 ;----- asm -----
                           3582 ;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3583 	; #ENR#[201]	result = picRead();
                           3584 ;  0 "" 2
                           3585 ;--- end asm ---
   0F68 BD 01 A1      [ 8] 3586 	jsr	_picRead	; 
                           3587 ;----- asm -----
                           3588 ;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3589 	; #ENR#[202]	delay10ms();
                           3590 ;  0 "" 2
                           3591 ;--- end asm ---
   0F6B BD 01 FE      [ 8] 3592 	jsr	_delay10ms	; 
                           3593 ;----- asm -----
                           3594 ;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3595 	; #ENR#[203]	return result;
                           3596 ;  0 "" 2
                           3597 ;--- end asm ---
   0F6E                    3598 L178:
   0F6E 32 61         [ 5] 3599 	leas	1,s	; ,,
   0F70 39            [ 5] 3600 	rts
                           3601 	.globl _readEeprom
   0F71                    3602 _readEeprom:
   0F71 32 7E         [ 5] 3603 	leas	-2,s	; ,,
   0F73 E7 E4         [ 4] 3604 	stb	,s	;  address, address
                           3605 ;----- asm -----
                           3606 ;  228 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3607 	; #ENR#[216]	if (picAvailable) {
                           3608 ;  0 "" 2
                           3609 ;--- end asm ---
   0F75 7D C8 9D      [ 7] 3610 	tst	_picAvailable	;  picAvailable
   0F78 26 07         [ 3] 3611 	bne	L183	; 
                           3612 ;----- asm -----
                           3613 ;  233 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3614 	; #ENR#[219]		return 0xff;
                           3615 ;  0 "" 2
                           3616 ;--- end asm ---
   0F7A C6 FF         [ 2] 3617 	ldb	#-1	; ,
   0F7C E7 61         [ 5] 3618 	stb	1,s	; , result
   0F7E 32 62         [ 5] 3619 	leas	2,s	; ,,
   0F80 39            [ 5] 3620 	rts
   0F81                    3621 L183:
                           3622 ;----- asm -----
                           3623 ;  230 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3624 	; #ENR#[217]		return sendCommand(CMD_EEPROM_READ, address);
                           3625 ;  0 "" 2
                           3626 ;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3627 	; #ENR#[197]	uint8_t result;
                           3628 ;  0 "" 2
                           3629 ;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3630 	; #ENR#[198]	picWrite('V');
                           3631 ;  0 "" 2
                           3632 ;--- end asm ---
   0F81 C6 56         [ 2] 3633 	ldb	#86	; ,
   0F83 BD 01 55      [ 8] 3634 	jsr	_picWrite	; 
                           3635 ;----- asm -----
                           3636 ;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3637 	; #ENR#[199]	picWrite(cmd);
                           3638 ;  0 "" 2
                           3639 ;--- end asm ---
   0F86 C6 04         [ 2] 3640 	ldb	#4	; ,
   0F88 BD 01 55      [ 8] 3641 	jsr	_picWrite	; 
                           3642 ;----- asm -----
                           3643 ;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3644 	; #ENR#[200]	picWrite(arg);
                           3645 ;  0 "" 2
                           3646 ;--- end asm ---
   0F8B E6 E4         [ 4] 3647 	ldb	,s	; , address
   0F8D BD 01 55      [ 8] 3648 	jsr	_picWrite	; 
                           3649 ;----- asm -----
                           3650 ;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3651 	; #ENR#[201]	result = picRead();
                           3652 ;  0 "" 2
                           3653 ;--- end asm ---
   0F90 BD 01 A1      [ 8] 3654 	jsr	_picRead	; 
   0F93 E7 61         [ 5] 3655 	stb	1,s	; , result
                           3656 ;----- asm -----
                           3657 ;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3658 	; #ENR#[202]	delay10ms();
                           3659 ;  0 "" 2
                           3660 ;--- end asm ---
   0F95 BD 01 FE      [ 8] 3661 	jsr	_delay10ms	; 
                           3662 ;----- asm -----
                           3663 ;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3664 	; #ENR#[203]	return result;
                           3665 ;  0 "" 2
                           3666 ;--- end asm ---
   0F98 E6 61         [ 5] 3667 	ldb	1,s	; , result
   0F9A 32 62         [ 5] 3668 	leas	2,s	; ,,
   0F9C 39            [ 5] 3669 	rts
                           3670 	.globl _startLevel
   0F9D                    3671 _startLevel:
   0F9D 34 60         [ 7] 3672 	pshs	y,u	; 
   0F9F 32 E8 DB      [ 5] 3673 	leas	-37,s	; ,,
                           3674 ;----- asm -----
                           3675 ;  668 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3676 	; #ENR#[483]	if (levelNumber == 0) {
                           3677 ;  0 "" 2
                           3678 ;--- end asm ---
   0FA2 F6 C8 8D      [ 5] 3679 	ldb	_levelNumber	; , levelNumber
   0FA5 E7 62         [ 5] 3680 	stb	2,s	; ,
   0FA7 10 26 02 71   [ 6] 3681 	lbne	L185	; 
                           3682 ;----- asm -----
                           3683 ;  670 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3684 	; #ENR#[484]		level = level0;
                           3685 ;  0 "" 2
                           3686 ;--- end asm ---
   0FAB BE C8 82      [ 6] 3687 	ldx	_level0	; , level0
   0FAE BF CA 8B      [ 6] 3688 	stx	_level	; , level
   0FB1                    3689 L186:
                           3690 ;----- asm -----
                           3691 ;  679 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3692 	; #ENR#[490]	levelHighscore = readEeprom((uint8_t) (levelNumber * 2));
                           3693 ;  0 "" 2
                           3694 ;  228 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3695 	; #ENR#[216]	if (picAvailable) {
                           3696 ;  0 "" 2
                           3697 ;--- end asm ---
   0FB1 7D C8 9D      [ 7] 3698 	tst	_picAvailable	;  picAvailable
   0FB4 10 26 02 7A   [ 6] 3699 	lbne	L221	; 
                           3700 ;----- asm -----
                           3701 ;  233 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3702 	; #ENR#[219]		return 0xff;
                           3703 ;  0 "" 2
                           3704 ;--- end asm ---
   0FB8 8E 00 FF      [ 3] 3705 	ldx	#255	;  prephitmp.561,
   0FBB                    3706 L189:
   0FBB BF CA 8D      [ 6] 3707 	stx	_levelHighscore	;  prephitmp.561, levelHighscore
                           3708 ;----- asm -----
                           3709 ;  681 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3710 	; #ENR#[491]	levelHighscore |= ((uint16_t) readEeprom((uint8_t) (levelNumber * 2 + 1))) << 8;
                           3711 ;  0 "" 2
                           3712 ;  228 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3713 	; #ENR#[216]	if (picAvailable) {
                           3714 ;  0 "" 2
                           3715 ;--- end asm ---
   0FBE 7D C8 9D      [ 7] 3716 	tst	_picAvailable	;  picAvailable
   0FC1 10 26 02 93   [ 6] 3717 	lbne	L222	; 
                           3718 ;----- asm -----
                           3719 ;  233 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3720 	; #ENR#[219]		return 0xff;
                           3721 ;  0 "" 2
                           3722 ;--- end asm ---
   0FC5 CC FF 00      [ 3] 3723 	ldd	#-256	;  prephitmp.563,
   0FC8                    3724 L191:
   0FC8 BA CA 8D      [ 5] 3725 	ora	_levelHighscore	; , levelHighscore
   0FCB FA CA 8E      [ 5] 3726 	orb	_levelHighscore+1	; , levelHighscore
   0FCE FD CA 8D      [ 6] 3727 	std	_levelHighscore	;  levelHighscore.36, levelHighscore
                           3728 ;----- asm -----
                           3729 ;  683 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3730 	; #ENR#[492]	if (levelHighscore == 0) levelHighscore = 999;
                           3731 ;  0 "" 2
                           3732 ;--- end asm ---
   0FD1 10 83 00 00   [ 5] 3733 	cmpd	#0	;  levelHighscore.36
   0FD5 26 06         [ 3] 3734 	bne	L192	; 
   0FD7 8E 03 E7      [ 3] 3735 	ldx	#999	; ,
   0FDA BF CA 8D      [ 6] 3736 	stx	_levelHighscore	; , levelHighscore
   0FDD                    3737 L192:
                           3738 ;----- asm -----
                           3739 ;  685 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3740 	; #ENR#[493]	lineCount = 0;
                           3741 ;  0 "" 2
                           3742 ;--- end asm ---
   0FDD 7F C8 88      [ 7] 3743 	clr	_lineCount	;  lineCount
                           3744 ;----- asm -----
                           3745 ;  687 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3746 	; #ENR#[494]	setupX();
                           3747 ;  0 "" 2
                           3748 ;--- end asm ---
   0FE0 BD 0A 53      [ 8] 3749 	jsr	_setupX	; 
                           3750 ;----- asm -----
                           3751 ;  689 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3752 	; #ENR#[495]	setupY();
                           3753 ;  0 "" 2
                           3754 ;  407 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3755 	; #ENR#[338]	unsigned long int index;
                           3756 ;  0 "" 2
                           3757 ;  409 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3758 	; #ENR#[339]	int8_t x = 0;
                           3759 ;  0 "" 2
                           3760 ;  411 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3761 	; #ENR#[340]	int8_t y = 0;
                           3762 ;  0 "" 2
                           3763 ;  413 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3764 	; #ENR#[341]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
                           3765 ;  0 "" 2
                           3766 ;--- end asm ---
   0FE3 10 BE CA 8B   [ 7] 3767 	ldy	_level	;  ivtmp.630, level
   0FE7 6F 67         [ 7] 3768 	clr	7,s	;  x
   0FE9 E6 67         [ 5] 3769 	ldb	7,s	; , x
   0FEB                    3770 L199:
                           3771 ;----- asm -----
                           3772 ;  415 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3773 	; #ENR#[342]		int8_t y0 = -1;
                           3774 ;  0 "" 2
                           3775 ;  417 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3776 	; #ENR#[343]		int8_t y1 = -1;
                           3777 ;  0 "" 2
                           3778 ;  419 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3779 	; #ENR#[344]		for (y = 0; y < LEVEL_HEIGHT; y++) {
                           3780 ;  0 "" 2
                           3781 ;--- end asm ---
   0FEB 86 0E         [ 2] 3782 	lda	#14	;umulqihi3	; 
   0FED 3D            [11] 3783 	mul
                           3784 ; Applied peep: 5-2 (tfr tfr 1=2, 2=1)
   0FEE 1F 01         [ 6] 3785 	tfr	d,x	; , tmp134
                           3786 ; ORG>	tfr	d,x	; , tmp134
                           3787 ; ORG>	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp134,
   0FF0 CB F2         [ 2] 3788 	addb	#-14	; ,
   0FF2 E7 6B         [ 5] 3789 	stb	11,s	; , D.3998
   0FF4 E6 67         [ 5] 3790 	ldb	7,s	; , x
   0FF6 58            [ 2] 3791 	aslb	; 
   0FF7 EB 67         [ 5] 3792 	addb	7,s	; , x
   0FF9 CB 9B         [ 2] 3793 	addb	#-101	; ,
   0FFB E7 6C         [ 5] 3794 	stb	12,s	; , D.4001
   0FFD 33 A4         [ 4] 3795 	leau	,y	;  ivtmp.637, ivtmp.630
   0FFF 6F 68         [ 7] 3796 	clr	8,s	;  y0
   1001 C6 FF         [ 2] 3797 	ldb	#-1	; ,
   1003 E7 E8 1C      [ 5] 3798 	stb	28,s	; , y0.633
   1006 E7 E8 1D      [ 5] 3799 	stb	29,s	; , y0.634
   1009 7E 10 93      [ 4] 3800 	jmp	L198	; 
   100C                    3801 L224:
   100C C1 61         [ 2] 3802 	cmpb	#97	;cmpqi:	; ,
   100E 10 27 00 91   [ 6] 3803 	lbeq	L193	; 
   1012 C1 6F         [ 2] 3804 	cmpb	#111	;cmpqi:	; ,
   1014 10 27 00 8B   [ 6] 3805 	lbeq	L193	; 
                           3806 ;----- asm -----
                           3807 ;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3808 	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
                           3809 ;  0 "" 2
                           3810 ;--- end asm ---
   1018 E6 69         [ 5] 3811 	ldb	9,s	; , c1
   101A C1 2E         [ 2] 3812 	cmpb	#46	;cmpqi:	; ,
   101C 10 27 00 83   [ 6] 3813 	lbeq	L193	; 
   1020 C1 61         [ 2] 3814 	cmpb	#97	;cmpqi:	; ,
   1022 10 27 00 7D   [ 6] 3815 	lbeq	L193	; 
   1026 C1 6F         [ 2] 3816 	cmpb	#111	;cmpqi:	; ,
   1028 10 27 00 77   [ 6] 3817 	lbeq	L193	; 
                           3818 ;----- asm -----
                           3819 ;  438 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3820 	; #ENR#[356]				if (y0 >= 0) {
                           3821 ;  0 "" 2
                           3822 ;--- end asm ---
   102C E6 E8 1C      [ 5] 3823 	ldb	28,s	; , y0.633
   102F C1 FF         [ 2] 3824 	cmpb	#-1	;cmpqi:	; ,
   1031 10 27 00 52   [ 6] 3825 	lbeq	L197	; 
                           3826 ;----- asm -----
                           3827 ;  440 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3828 	; #ENR#[357]					addLine(x + 1, y0, x + 1, y1 + 1);
                           3829 ;  0 "" 2
                           3830 ;--- end asm ---
   1035 E6 E8 1D      [ 5] 3831 	ldb	29,s	; , y0.634
   1038 5C            [ 2] 3832 	incb	; 
   1039 E7 66         [ 5] 3833 	stb	6,s	; , D.3975
                           3834 ;----- asm -----
                           3835 ;  296 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3836 	; #ENR#[266]	lineX0[lineCount] = x3d(x0, 0, y0);
                           3837 ;  0 "" 2
                           3838 ;--- end asm ---
   103B F6 C8 88      [ 5] 3839 	ldb	_lineCount	; , lineCount
   103E E7 6A         [ 5] 3840 	stb	10,s	; , lineCount.8
                           3841 ;----- asm -----
                           3842 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3843 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           3844 ;  0 "" 2
                           3845 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3846 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           3847 ;  0 "" 2
                           3848 ;--- end asm ---
   1040 4F            [ 2] 3849 	clra		;zero_extendqihi: R:b -> R:d	; ,
   1041 1F 01         [ 6] 3850 	tfr	d,x	; , lineCount.8
   1043 E6 E8 1C      [ 5] 3851 	ldb	28,s	; , y0.633
   1046 86 FA         [ 2] 3852 	lda	#-6	;mulqihi3	; 
   1048 3D            [11] 3853 	mul
                           3854 		;movlsbqihi: D->B
   1049 EB 6B         [ 5] 3855 	addb	11,s	;  tmp143, D.3998
   104B E7 89 C8 9E   [ 8] 3856 	stb	_lineX0,x	;  tmp143, lineX0
                           3857 ;----- asm -----
                           3858 ;  298 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3859 	; #ENR#[267]	lineY0[lineCount] = y3d(x0, 0, y0);
                           3860 ;  0 "" 2
                           3861 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3862 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           3863 ;  0 "" 2
                           3864 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3865 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           3866 ;  0 "" 2
                           3867 ;--- end asm ---
   104F 68 E8 1C      [ 7] 3868 	asl	28,s	;  y0.633
   1052 68 E8 1C      [ 7] 3869 	asl	28,s	;  y0.633
   1055 68 E8 1C      [ 7] 3870 	asl	28,s	;  y0.633
   1058 E6 E8 1C      [ 5] 3871 	ldb	28,s	; , y0.633
   105B EB 6C         [ 5] 3872 	addb	12,s	; , D.4001
   105D E7 89 C9 16   [ 8] 3873 	stb	_lineY0,x	; , lineY0
                           3874 ;----- asm -----
                           3875 ;  300 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3876 	; #ENR#[268]	lineX1[lineCount] = x3d(x1, 0, y1);
                           3877 ;  0 "" 2
                           3878 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3879 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           3880 ;  0 "" 2
                           3881 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3882 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           3883 ;  0 "" 2
                           3884 ;--- end asm ---
   1061 E6 66         [ 5] 3885 	ldb	6,s	; , D.3975
   1063 86 FA         [ 2] 3886 	lda	#-6	;mulqihi3	; 
   1065 3D            [11] 3887 	mul
   1066 ED E4         [ 5] 3888 	std	,s	; ,
                           3889 		;movlsbqihi: D->B
   1068 EB 6B         [ 5] 3890 	addb	11,s	;  tmp152, D.3998
   106A E7 89 C9 8E   [ 8] 3891 	stb	_lineX1,x	;  tmp152, lineX1
                           3892 ;----- asm -----
                           3893 ;  302 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3894 	; #ENR#[269]	lineY1[lineCount] = y3d(x1, 0, y1);
                           3895 ;  0 "" 2
                           3896 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3897 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           3898 ;  0 "" 2
                           3899 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3900 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           3901 ;  0 "" 2
                           3902 ;--- end asm ---
   106E 68 66         [ 7] 3903 	asl	6,s	;  D.3975
   1070 68 66         [ 7] 3904 	asl	6,s	;  D.3975
   1072 68 66         [ 7] 3905 	asl	6,s	;  D.3975
   1074 E6 66         [ 5] 3906 	ldb	6,s	; , D.3975
   1076 EB 6C         [ 5] 3907 	addb	12,s	; , D.4001
   1078 E7 89 CA 06   [ 8] 3908 	stb	_lineY1,x	; , lineY1
                           3909 ;----- asm -----
                           3910 ;  304 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3911 	; #ENR#[270]	lineCount++;
                           3912 ;  0 "" 2
                           3913 ;--- end asm ---
   107C E6 6A         [ 5] 3914 	ldb	10,s	; , lineCount.8
   107E 5C            [ 2] 3915 	incb	; 
   107F F7 C8 88      [ 5] 3916 	stb	_lineCount	; , lineCount
                           3917 ;----- asm -----
                           3918 ;  442 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3919 	; #ENR#[358]					y0 = -1;
                           3920 ;  0 "" 2
                           3921 ;--- end asm ---
   1082 C6 FF         [ 2] 3922 	ldb	#-1	; ,
   1084 E7 E8 1C      [ 5] 3923 	stb	28,s	; , y0.633
   1087                    3924 L197:
   1087 6C 68         [ 7] 3925 	inc	8,s	;  y0
   1089 33 4C         [ 5] 3926 	leau	12,u	;  ivtmp.637,, ivtmp.637
   108B E6 68         [ 5] 3927 	ldb	8,s	; , y0
   108D C1 11         [ 2] 3928 	cmpb	#17	;cmpqi:	; ,
   108F 10 27 00 2A   [ 6] 3929 	lbeq	L223	; 
   1093                    3930 L198:
                           3931 ;----- asm -----
                           3932 ;  425 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3933 	; #ENR#[349]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
                           3934 ;  0 "" 2
                           3935 ;  427 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3936 	; #ENR#[350]			char c0 = level[index];
                           3937 ;  0 "" 2
                           3938 ;--- end asm ---
   1093 E6 C4         [ 4] 3939 	ldb	,u	; ,* ivtmp.637
   1095 E7 E4         [ 4] 3940 	stb	,s	; , c0
                           3941 ;----- asm -----
                           3942 ;  429 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3943 	; #ENR#[351]			char c1 = level[index+1];
                           3944 ;  0 "" 2
                           3945 ;--- end asm ---
   1097 E6 41         [ 5] 3946 	ldb	1,u	; ,
   1099 E7 69         [ 5] 3947 	stb	9,s	; , c1
                           3948 ;----- asm -----
                           3949 ;  431 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3950 	; #ENR#[352]			if (isField(c0) || isField(c1)) {
                           3951 ;  0 "" 2
                           3952 ;  272 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3953 	; #ENR#[247]	return (char)(c == '.' || c == 'a' || c == 'o');
                           3954 ;  0 "" 2
                           3955 ;--- end asm ---
   109B E6 E4         [ 4] 3956 	ldb	,s	; , c0
   109D C1 2E         [ 2] 3957 	cmpb	#46	;cmpqi:	; ,
   109F 10 26 FF 69   [ 6] 3958 	lbne	L224	; 
   10A3                    3959 L193:
                           3960 ;----- asm -----
                           3961 ;  433 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3962 	; #ENR#[353]				if (y0 < 0) y0 = y;
                           3963 ;  0 "" 2
                           3964 ;--- end asm ---
   10A3 E6 E8 1C      [ 5] 3965 	ldb	28,s	; , y0.633
   10A6 C1 FF         [ 2] 3966 	cmpb	#-1	;cmpqi:	; ,
   10A8 10 27 01 68   [ 6] 3967 	lbeq	L225	; 
   10AC                    3968 L196:
                           3969 ;----- asm -----
                           3970 ;  435 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3971 	; #ENR#[354]				y1 = y;
                           3972 ;  0 "" 2
                           3973 ;--- end asm ---
   10AC E6 68         [ 5] 3974 	ldb	8,s	; , y0
   10AE E7 E8 1D      [ 5] 3975 	stb	29,s	; , y0.634
   10B1 6C 68         [ 7] 3976 	inc	8,s	;  y0
   10B3 33 4C         [ 5] 3977 	leau	12,u	;  ivtmp.637,, ivtmp.637
   10B5 E6 68         [ 5] 3978 	ldb	8,s	; , y0
   10B7 C1 11         [ 2] 3979 	cmpb	#17	;cmpqi:	; ,
   10B9 10 26 FF D6   [ 6] 3980 	lbne	L198	; 
   10BD                    3981 L223:
   10BD 6C 67         [ 7] 3982 	inc	7,s	;  x
   10BF 31 21         [ 5] 3983 	leay	1,y	;  ivtmp.630,, ivtmp.630
   10C1 E6 67         [ 5] 3984 	ldb	7,s	; , x
   10C3 C1 0B         [ 2] 3985 	cmpb	#11	;cmpqi:	; ,
   10C5 10 26 FF 22   [ 6] 3986 	lbne	L199	; 
                           3987 ;----- asm -----
                           3988 ;  691 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3989 	; #ENR#[496]	blockX = startX;
                           3990 ;  0 "" 2
                           3991 ;--- end asm ---
   10C9 F6 C8 89      [ 5] 3992 	ldb	_startX	; , startX
   10CC F7 CA 7F      [ 5] 3993 	stb	_blockX	; , blockX
                           3994 ;----- asm -----
                           3995 ;  693 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3996 	; #ENR#[497]	blockY = startY;
                           3997 ;  0 "" 2
                           3998 ;--- end asm ---
   10CF F6 C8 8A      [ 5] 3999 	ldb	_startY	; , startY
   10D2 F7 CA 80      [ 5] 4000 	stb	_blockY	; , blockY
                           4001 ;----- asm -----
                           4002 ;  695 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4003 	; #ENR#[498]	blockAnimation = height2FallingLeft;
                           4004 ;  0 "" 2
                           4005 ;--- end asm ---
   10D5 8E 38 22      [ 3] 4006 	ldx	#_height2FallingLeft	; ,
   10D8 BF CA 81      [ 6] 4007 	stx	_blockAnimation	; , blockAnimation
                           4008 ;----- asm -----
                           4009 ;  697 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4010 	; #ENR#[499]	blockAnimationStep = 0;
                           4011 ;  0 "" 2
                           4012 ;--- end asm ---
   10DB 7F CA 85      [ 7] 4013 	clr	_blockAnimationStep	;  blockAnimationStep
                           4014 ;----- asm -----
                           4015 ;  699 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4016 	; #ENR#[500]	blockAnimating = 0;
                           4017 ;  0 "" 2
                           4018 ;--- end asm ---
   10DE 7F CA 86      [ 7] 4019 	clr	_blockAnimating	;  blockAnimating
                           4020 ;----- asm -----
                           4021 ;  701 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4022 	; #ENR#[501]	blockOrientation = Standing;
                           4023 ;  0 "" 2
                           4024 ;--- end asm ---
   10E1 7F CA 7E      [ 7] 4025 	clr	_blockOrientation	;  blockOrientation
                           4026 ;----- asm -----
                           4027 ;  703 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4028 	; #ENR#[502]	blockYOfs = -30;
                           4029 ;  0 "" 2
                           4030 ;--- end asm ---
   10E4 C6 E2         [ 2] 4031 	ldb	#-30	; ,
   10E6 F7 CA 8A      [ 5] 4032 	stb	_blockYOfs	; , blockYOfs
                           4033 ;----- asm -----
                           4034 ;  705 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4035 	; #ENR#[503]	gameState = BlockMovingToStart;
                           4036 ;  0 "" 2
                           4037 ;--- end asm ---
   10E9 7F CA 8F      [ 7] 4038 	clr	_gameState	;  gameState
                           4039 ;----- asm -----
                           4040 ;  707 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4041 	; #ENR#[504]	changeMusic(startMusic);
                           4042 ;  0 "" 2
                           4043 ;  452 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4044 	; #ENR#[367]	tstat = 1;
                           4045 ;  0 "" 2
                           4046 ;--- end asm ---
   10EC C6 01         [ 2] 4047 	ldb	#1	; ,
   10EE F7 C8 56      [ 5] 4048 	stb	-14250	; ,
                           4049 ;----- asm -----
                           4050 ;  454 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4051 	; #ENR#[368]	currentMusic = music;
                           4052 ;  0 "" 2
                           4053 ;--- end asm ---
   10F1 8E 16 51      [ 3] 4054 	ldx	#_startMusic	; ,
   10F4 BF C8 80      [ 6] 4055 	stx	_currentMusic	; , currentMusic
                           4056 ;----- asm -----
                           4057 ;  709 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4058 	; #ENR#[505]	moveCount = 0;
                           4059 ;  0 "" 2
                           4060 ;--- end asm ---
   10F7 CC 00 00      [ 3] 4061 	ldd	#0	; ,
   10FA FD C8 9B      [ 6] 4062 	std	_moveCount	; , moveCount
                           4063 ;----- asm -----
                           4064 ;  711 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4065 	; #ENR#[506]	updateInfoText();
                           4066 ;  0 "" 2
                           4067 ;  264 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4068 	; #ENR#[241]	itoa(moveCount, &infoText[0]);
                           4069 ;  0 "" 2
                           4070 ;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4071 	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
                           4072 ;  0 "" 2
                           4073 ;--- end asm ---
   10FD CC 00 64      [ 3] 4074 	ldd	#100	; ,
   1100 ED E8 1F      [ 6] 4075 	std	31,s	; , muls
   1103 CC 00 0A      [ 3] 4076 	ldd	#10	; ,
   1106 ED E8 21      [ 6] 4077 	std	33,s	; , muls
   1109 CC 00 01      [ 3] 4078 	ldd	#1	; ,
   110C ED E8 23      [ 6] 4079 	std	35,s	; , muls
                           4080 ;----- asm -----
                           4081 ;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4082 	; #ENR#[228]	if (number > 999) number = 999;
                           4083 ;  0 "" 2
                           4084 ;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4085 	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
                           4086 ;  0 "" 2
                           4087 ;--- end asm ---
   110F 30 E8 1F      [ 5] 4088 	leax	31,s	; ,,
   1112 AF E8 18      [ 6] 4089 	stx	24,s	; , ivtmp.608
   1115 8E C8 91      [ 3] 4090 	ldx	#_infoText	; ,
   1118 AF E8 1A      [ 6] 4091 	stx	26,s	; , ivtmp.610
   111B CC 00 00      [ 3] 4092 	ldd	#0	; ,
   111E ED E4         [ 5] 4093 	std	,s	; , number
   1120 AE E8 18      [ 6] 4094 	ldx	24,s	; , ivtmp.608
   1123                    4095 L203:
                           4096 ;----- asm -----
                           4097 ;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4098 	; #ENR#[230]		uint8_t d = 0;
                           4099 ;  0 "" 2
                           4100 ;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4101 	; #ENR#[231]		while (number >= muls[i]) {
                           4102 ;  0 "" 2
                           4103 ;--- end asm ---
   1123 EE 84         [ 5] 4104 	ldu	,x	;  D.4016, muls
   1125 C6 30         [ 2] 4105 	ldb	#48	; ,
   1127 E7 6F         [ 5] 4106 	stb	15,s	; , prephitmp.569
   1129 11 A3 E4      [ 7] 4107 	cmpu	,s	;cmphi:	;  D.4016, number
   112C 22 30         [ 3] 4108 	bhi	L201	; 
   112E 1F 30         [ 6] 4109 	tfr	u,d	;  D.4016,
   1130 40            [ 2] 4110 	nega
   1131 50            [ 2] 4111 	negb
   1132 82 00         [ 2] 4112 	sbca	#0
   1134 ED E8 16      [ 6] 4113 	std	22,s	; , ivtmp.599
   1137 EC E4         [ 5] 4114 	ldd	,s	; , number
   1139 34 40         [ 6] 4115 	pshs	u	;subhi: R:d -= R:u	;  D.4016,
   113B A3 E1         [ 9] 4116 	subd	,s++	; 
   113D ED E4         [ 5] 4117 	std	,s	; , number
   113F 6F 6D         [ 7] 4118 	clr	13,s	;  d
   1141                    4119 L202:
                           4120 ;----- asm -----
                           4121 ;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4122 	; #ENR#[232]			d++;
                           4123 ;  0 "" 2
                           4124 ;--- end asm ---
   1141 6C 6D         [ 7] 4125 	inc	13,s	;  d
                           4126 ;----- asm -----
                           4127 ;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4128 	; #ENR#[233]			number -= muls[i];
                           4129 ;  0 "" 2
                           4130 ;--- end asm ---
   1143 10 AE E4      [ 6] 4131 	ldy	,s	;  number.642, number
   1146 1F 20         [ 6] 4132 	tfr	y,d	; ,
   1148 E3 E8 16      [ 7] 4133 	addd	22,s	; , ivtmp.599
   114B ED E4         [ 5] 4134 	std	,s	; , number
   114D 30 CB         [ 8] 4135 	leax	d,u	;  tmp164,, D.4016
   114F 34 40         [ 6] 4136 	pshs	u	;cmphi: R:u with R:x	;  D.4016, tmp164
   1151 AC E1         [ 9] 4137 	cmpx	,s++	;cmphi:	;  tmp164
   1153 24 EC         [ 3] 4138 	bhs	L202	; 
   1155 10 AF E4      [ 6] 4139 	sty	,s	;  number.642, number
   1158 E6 6D         [ 5] 4140 	ldb	13,s	; , d
   115A CB 30         [ 2] 4141 	addb	#48	; ,
   115C E7 6F         [ 5] 4142 	stb	15,s	; , prephitmp.569
   115E                    4143 L201:
                           4144 ;----- asm -----
                           4145 ;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4146 	; #ENR#[235]		text[i] = d + '0';
                           4147 ;  0 "" 2
                           4148 ;--- end asm ---
   115E AE E8 1A      [ 6] 4149 	ldx	26,s	; , ivtmp.610
   1161 30 01         [ 5] 4150 	leax	1,x	; ,,
   1163 AF E8 1A      [ 6] 4151 	stx	26,s	; , ivtmp.610
   1166 30 1F         [ 5] 4152 	leax	-1,x	; ,,
   1168 E7 80         [ 6] 4153 	stb	,x+	; ,
   116A AE E8 18      [ 6] 4154 	ldx	24,s	; , ivtmp.608
   116D 30 02         [ 5] 4155 	leax	2,x	; ,,
   116F AF E8 18      [ 6] 4156 	stx	24,s	; , ivtmp.608
   1172 1F 40         [ 6] 4157 	tfr	s,d	; ,
   1174 C3 00 25      [ 4] 4158 	addd	#37	; ,
   1177 34 06         [ 7] 4159 	pshs	d	;cmphi: R:d with R:x	; ,
   1179 AC E1         [ 9] 4160 	cmpx	,s++	;cmphi:	; 
   117B 10 26 FF A4   [ 6] 4161 	lbne	L203	; 
                           4162 ;----- asm -----
                           4163 ;  266 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4164 	; #ENR#[242]	itoa(levelHighscore, &infoText[6]);
                           4165 ;  0 "" 2
                           4166 ;--- end asm ---
   117F FE CA 8D      [ 6] 4167 	ldu	_levelHighscore	;  number.636, levelHighscore
                           4168 ;----- asm -----
                           4169 ;  242 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4170 	; #ENR#[227]	uint16_t muls[] = { 100, 10, 1 };
                           4171 ;  0 "" 2
                           4172 ;--- end asm ---
   1182 CC 00 64      [ 3] 4173 	ldd	#100	; ,
   1185 ED E8 1F      [ 6] 4174 	std	31,s	; , muls
   1188 CC 00 0A      [ 3] 4175 	ldd	#10	; ,
   118B ED E8 21      [ 6] 4176 	std	33,s	; , muls
   118E CC 00 01      [ 3] 4177 	ldd	#1	; ,
   1191 ED E8 23      [ 6] 4178 	std	35,s	; , muls
                           4179 ;----- asm -----
                           4180 ;  244 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4181 	; #ENR#[228]	if (number > 999) number = 999;
                           4182 ;  0 "" 2
                           4183 ;--- end asm ---
   1194 EF E4         [ 5] 4184 	stu	,s	;  number.636, number
   1196 11 83 03 E7   [ 5] 4185 	cmpu	#999	;cmphi:	;  number.636,
   119A 23 05         [ 3] 4186 	bls	L204	; 
   119C 8E 03 E7      [ 3] 4187 	ldx	#999	; ,
   119F AF E4         [ 5] 4188 	stx	,s	; , number
   11A1                    4189 L204:
                           4190 ;----- asm -----
                           4191 ;  246 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4192 	; #ENR#[229]	for (uint8_t i = 0; i < 3; i++) {
                           4193 ;  0 "" 2
                           4194 ;--- end asm ---
   11A1 30 E8 1F      [ 5] 4195 	leax	31,s	; ,,
   11A4 AF E8 12      [ 6] 4196 	stx	18,s	; , ivtmp.592
   11A7 8E C8 97      [ 3] 4197 	ldx	#_infoText+6	; ,
   11AA AF E8 14      [ 6] 4198 	stx	20,s	; , ivtmp.594
   11AD AE E8 12      [ 6] 4199 	ldx	18,s	; , ivtmp.592
   11B0                    4200 L208:
                           4201 ;----- asm -----
                           4202 ;  248 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4203 	; #ENR#[230]		uint8_t d = 0;
                           4204 ;  0 "" 2
                           4205 ;  250 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4206 	; #ENR#[231]		while (number >= muls[i]) {
                           4207 ;  0 "" 2
                           4208 ;--- end asm ---
   11B0 EE 84         [ 5] 4209 	ldu	,x	;  D.4025, muls
   11B2 C6 30         [ 2] 4210 	ldb	#48	; ,
   11B4 E7 E8 1E      [ 5] 4211 	stb	30,s	; , prephitmp.641
   11B7 11 A3 E4      [ 7] 4212 	cmpu	,s	;cmphi:	;  D.4025, number
   11BA 22 32         [ 3] 4213 	bhi	L206	; 
   11BC 1F 30         [ 6] 4214 	tfr	u,d	;  D.4025,
   11BE 40            [ 2] 4215 	nega
   11BF 50            [ 2] 4216 	negb
   11C0 82 00         [ 2] 4217 	sbca	#0
   11C2 ED E8 10      [ 6] 4218 	std	16,s	; , ivtmp.583
   11C5 EC E4         [ 5] 4219 	ldd	,s	; , number
   11C7 34 40         [ 6] 4220 	pshs	u	;subhi: R:d -= R:u	;  D.4025,
   11C9 A3 E1         [ 9] 4221 	subd	,s++	; 
   11CB ED E4         [ 5] 4222 	std	,s	; , number
   11CD 6F 6E         [ 7] 4223 	clr	14,s	;  d
   11CF                    4224 L207:
                           4225 ;----- asm -----
                           4226 ;  252 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4227 	; #ENR#[232]			d++;
                           4228 ;  0 "" 2
                           4229 ;--- end asm ---
   11CF 6C 6E         [ 7] 4230 	inc	14,s	;  d
                           4231 ;----- asm -----
                           4232 ;  254 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4233 	; #ENR#[233]			number -= muls[i];
                           4234 ;  0 "" 2
                           4235 ;--- end asm ---
   11D1 10 AE E4      [ 6] 4236 	ldy	,s	;  number.643, number
   11D4 1F 20         [ 6] 4237 	tfr	y,d	; ,
   11D6 E3 E8 10      [ 7] 4238 	addd	16,s	; , ivtmp.583
   11D9 ED E4         [ 5] 4239 	std	,s	; , number
   11DB 30 CB         [ 8] 4240 	leax	d,u	;  tmp170,, D.4025
   11DD 34 10         [ 6] 4241 	pshs	x	;cmphi: R:x with R:u	;  tmp170, D.4025
   11DF 11 A3 E1      [10] 4242 	cmpu	,s++	;cmphi:	;  D.4025
   11E2 23 EB         [ 3] 4243 	bls	L207	; 
   11E4 10 AF E4      [ 6] 4244 	sty	,s	;  number.643, number
   11E7 E6 6E         [ 5] 4245 	ldb	14,s	; , d
   11E9 CB 30         [ 2] 4246 	addb	#48	; ,
   11EB E7 E8 1E      [ 5] 4247 	stb	30,s	; , prephitmp.641
   11EE                    4248 L206:
                           4249 ;----- asm -----
                           4250 ;  257 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4251 	; #ENR#[235]		text[i] = d + '0';
                           4252 ;  0 "" 2
                           4253 ;--- end asm ---
   11EE AE E8 14      [ 6] 4254 	ldx	20,s	; , ivtmp.594
   11F1 30 01         [ 5] 4255 	leax	1,x	; ,,
   11F3 AF E8 14      [ 6] 4256 	stx	20,s	; , ivtmp.594
   11F6 30 1F         [ 5] 4257 	leax	-1,x	; ,,
   11F8 E7 80         [ 6] 4258 	stb	,x+	; ,
   11FA AE E8 12      [ 6] 4259 	ldx	18,s	; , ivtmp.592
   11FD 30 02         [ 5] 4260 	leax	2,x	; ,,
   11FF AF E8 12      [ 6] 4261 	stx	18,s	; , ivtmp.592
   1202 1F 40         [ 6] 4262 	tfr	s,d	; ,
   1204 C3 00 25      [ 4] 4263 	addd	#37	; ,
   1207 34 06         [ 7] 4264 	pshs	d	;cmphi: R:d with R:x	; ,
   1209 AC E1         [ 9] 4265 	cmpx	,s++	;cmphi:	; 
   120B 10 26 FF A1   [ 6] 4266 	lbne	L208	; 
   120F 32 E8 25      [ 5] 4267 	leas	37,s	; ,,
   1212 35 E0         [ 8] 4268 	puls	y,u,pc	; 
   1214                    4269 L225:
   1214 E6 68         [ 5] 4270 	ldb	8,s	; , y0
   1216 E7 E8 1C      [ 5] 4271 	stb	28,s	; , y0.633
   1219 7E 10 AC      [ 4] 4272 	jmp	L196	; 
   121C                    4273 L185:
   121C C1 01         [ 2] 4274 	cmpb	#1	;cmpqi:	; ,
   121E 27 09         [ 3] 4275 	beq	L226	; 
                           4276 ;----- asm -----
                           4277 ;  676 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4278 	; #ENR#[488]		level = level2;
                           4279 ;  0 "" 2
                           4280 ;--- end asm ---
   1220 FC C8 86      [ 6] 4281 	ldd	_level2	; , level2
   1223 FD CA 8B      [ 6] 4282 	std	_level	; , level
   1226 7E 0F B1      [ 4] 4283 	jmp	L186	; 
   1229                    4284 L226:
                           4285 ;----- asm -----
                           4286 ;  673 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4287 	; #ENR#[486]		level = level1;
                           4288 ;  0 "" 2
                           4289 ;--- end asm ---
   1229 BE C8 84      [ 6] 4290 	ldx	_level1	; , level1
   122C BF CA 8B      [ 6] 4291 	stx	_level	; , level
   122F 7E 0F B1      [ 4] 4292 	jmp	L186	; 
   1232                    4293 L221:
                           4294 ;----- asm -----
                           4295 ;  230 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4296 	; #ENR#[217]		return sendCommand(CMD_EEPROM_READ, address);
                           4297 ;  0 "" 2
                           4298 ;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4299 	; #ENR#[197]	uint8_t result;
                           4300 ;  0 "" 2
                           4301 ;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4302 	; #ENR#[198]	picWrite('V');
                           4303 ;  0 "" 2
                           4304 ;--- end asm ---
   1232 C6 56         [ 2] 4305 	ldb	#86	; ,
   1234 BD 01 55      [ 8] 4306 	jsr	_picWrite	; 
                           4307 ;----- asm -----
                           4308 ;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4309 	; #ENR#[199]	picWrite(cmd);
                           4310 ;  0 "" 2
                           4311 ;--- end asm ---
   1237 C6 04         [ 2] 4312 	ldb	#4	; ,
   1239 BD 01 55      [ 8] 4313 	jsr	_picWrite	; 
                           4314 ;----- asm -----
                           4315 ;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4316 	; #ENR#[200]	picWrite(arg);
                           4317 ;  0 "" 2
                           4318 ;--- end asm ---
   123C 68 62         [ 7] 4319 	asl	2,s	; 
   123E E6 62         [ 5] 4320 	ldb	2,s	; ,
   1240 BD 01 55      [ 8] 4321 	jsr	_picWrite	; 
                           4322 ;----- asm -----
                           4323 ;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4324 	; #ENR#[201]	result = picRead();
                           4325 ;  0 "" 2
                           4326 ;--- end asm ---
   1243 BD 01 A1      [ 8] 4327 	jsr	_picRead	; 
   1246 E7 63         [ 5] 4328 	stb	3,s	; , result
                           4329 ;----- asm -----
                           4330 ;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4331 	; #ENR#[202]	delay10ms();
                           4332 ;  0 "" 2
                           4333 ;--- end asm ---
   1248 BD 01 FE      [ 8] 4334 	jsr	_delay10ms	; 
                           4335 ;----- asm -----
                           4336 ;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4337 	; #ENR#[203]	return result;
                           4338 ;  0 "" 2
                           4339 ;--- end asm ---
   124B E6 63         [ 5] 4340 	ldb	3,s	; , result
   124D 4F            [ 2] 4341 	clra		;zero_extendqihi: R:b -> R:d	; ,
   124E 1F 01         [ 6] 4342 	tfr	d,x	; , prephitmp.561
   1250 F6 C8 8D      [ 5] 4343 	ldb	_levelNumber	; , levelNumber
   1253 E7 62         [ 5] 4344 	stb	2,s	; ,
   1255 7E 0F BB      [ 4] 4345 	jmp	L189	; 
   1258                    4346 L222:
                           4347 ;----- asm -----
                           4348 ;  230 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4349 	; #ENR#[217]		return sendCommand(CMD_EEPROM_READ, address);
                           4350 ;  0 "" 2
                           4351 ;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4352 	; #ENR#[197]	uint8_t result;
                           4353 ;  0 "" 2
                           4354 ;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4355 	; #ENR#[198]	picWrite('V');
                           4356 ;  0 "" 2
                           4357 ;--- end asm ---
   1258 C6 56         [ 2] 4358 	ldb	#86	; ,
   125A BD 01 55      [ 8] 4359 	jsr	_picWrite	; 
                           4360 ;----- asm -----
                           4361 ;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4362 	; #ENR#[199]	picWrite(cmd);
                           4363 ;  0 "" 2
                           4364 ;--- end asm ---
   125D C6 04         [ 2] 4365 	ldb	#4	; ,
   125F BD 01 55      [ 8] 4366 	jsr	_picWrite	; 
                           4367 ;----- asm -----
                           4368 ;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4369 	; #ENR#[200]	picWrite(arg);
                           4370 ;  0 "" 2
                           4371 ;--- end asm ---
   1262 68 62         [ 7] 4372 	asl	2,s	; 
   1264 6C 62         [ 7] 4373 	inc	2,s	; 
   1266 E6 62         [ 5] 4374 	ldb	2,s	; ,
   1268 BD 01 55      [ 8] 4375 	jsr	_picWrite	; 
                           4376 ;----- asm -----
                           4377 ;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4378 	; #ENR#[201]	result = picRead();
                           4379 ;  0 "" 2
                           4380 ;--- end asm ---
   126B BD 01 A1      [ 8] 4381 	jsr	_picRead	; 
   126E E7 65         [ 5] 4382 	stb	5,s	; , result
                           4383 ;----- asm -----
                           4384 ;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4385 	; #ENR#[202]	delay10ms();
                           4386 ;  0 "" 2
                           4387 ;--- end asm ---
   1270 BD 01 FE      [ 8] 4388 	jsr	_delay10ms	; 
                           4389 ;----- asm -----
                           4390 ;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4391 	; #ENR#[203]	return result;
                           4392 ;  0 "" 2
                           4393 ;--- end asm ---
   1273 E6 65         [ 5] 4394 	ldb	5,s	; , result
   1275 1F 98         [ 6] 4395 	tfr	b,a	; ,
   1277 5F            [ 2] 4396 	clrb	; 
   1278 7E 0F C8      [ 4] 4397 	jmp	L191	; 
                           4398 	.globl _blockFalling
   127B                    4399 _blockFalling:
   127B 34 40         [ 6] 4400 	pshs	u	; 
   127D 32 75         [ 5] 4401 	leas	-11,s	; ,,
                           4402 ;----- asm -----
                           4403 ;  927 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4404 	; #ENR#[662]	drawField();
                           4405 ;  0 "" 2
                           4406 ;--- end asm ---
   127F BD 04 3E      [ 8] 4407 	jsr	_drawField	; 
                           4408 ;----- asm -----
                           4409 ;  929 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4410 	; #ENR#[663]	blockYOfs++;
                           4411 ;  0 "" 2
                           4412 ;--- end asm ---
   1282 F6 CA 8A      [ 5] 4413 	ldb	_blockYOfs	; , blockYOfs
   1285 5C            [ 2] 4414 	incb	; 
   1286 E7 65         [ 5] 4415 	stb	5,s	; , blockYOfs.64
   1288 F7 CA 8A      [ 5] 4416 	stb	_blockYOfs	; , blockYOfs
                           4417 ;----- asm -----
                           4418 ;  931 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4419 	; #ENR#[664]	if (blockYOfs < 12) {
                           4420 ;  0 "" 2
                           4421 ;--- end asm ---
   128B C1 0B         [ 2] 4422 	cmpb	#11	;cmpqi:	; ,
   128D 2F 0D         [ 3] 4423 	ble	L231	; 
   128F                    4424 L228:
                           4425 ;----- asm -----
                           4426 ;  938 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4427 	; #ENR#[668]	if (blockYOfs == 50) {
                           4428 ;  0 "" 2
                           4429 ;--- end asm ---
   128F F6 CA 8A      [ 5] 4430 	ldb	_blockYOfs	; , blockYOfs
   1292 C1 32         [ 2] 4431 	cmpb	#50	;cmpqi:	; ,
   1294 10 27 00 9F   [ 6] 4432 	lbeq	L232	; 
   1298 32 6B         [ 5] 4433 	leas	11,s	; ,,
   129A 35 C0         [ 7] 4434 	puls	u,pc	; 
   129C                    4435 L231:
                           4436 ;----- asm -----
                           4437 ;  933 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4438 	; #ENR#[665]		drawBlock(-blockYOfs*blockYOfs);
                           4439 ;  0 "" 2
                           4440 ;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4441 	; #ENR#[559]	zergnd();
                           4442 ;  0 "" 2
                           4443 ;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   129C BD F3 54      [ 8] 4444 	jsr ___Reset0Ref; BIOS call
                           4445 ;  0 "" 2
                           4446 ;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4447 	; #ENR#[560]	intens(0x63);
                           4448 ;  0 "" 2
                           4449 ;--- end asm ---
   129F C6 63         [ 2] 4450 	ldb	#99	; ,
   12A1 E7 69         [ 5] 4451 	stb	9,s	; , a
                           4452 ;----- asm -----
                           4453 ;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   12A3 A6 69         [ 5] 4454 	lda 9,s	;  a
   12A5 BD F2 AB      [ 8] 4455 	jsr ___Intensity_a; BIOS call
                           4456 ;  0 "" 2
                           4457 ;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4458 	; #ENR#[561]	positd(0, yofs);
                           4459 ;  0 "" 2
                           4460 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4461 	; #ENR#[50]	Moveto_d_7F(y,x);
                           4462 ;  0 "" 2
                           4463 ;--- end asm ---
   12A8 E6 65         [ 5] 4464 	ldb	5,s	;  tmp31, blockYOfs.64
   12AA 50            [ 2] 4465 	negb	;  tmp31
   12AB A6 65         [ 5] 4466 	lda	5,s	;mulqihi3	;  blockYOfs.64
   12AD 3D            [11] 4467 	mul
   12AE E7 6A         [ 5] 4468 	stb	10,s	;movlsbqihi: R:d -> 10,s	;  a, tmp32
   12B0 6F 69         [ 7] 4469 	clr	9,s	;  b
                           4470 ;----- asm -----
                           4471 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   12B2 A6 6A         [ 5] 4472 	lda 10,s	;  a
   12B4 E6 69         [ 5] 4473 	ldb 9,s	;  b
   12B6 BD F2 FC      [ 8] 4474 	jsr ___Moveto_d_7F; BIOS call
                           4475 ;  0 "" 2
                           4476 ;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4477 	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           4478 ;  0 "" 2
                           4479 ;--- end asm ---
   12B9 F6 CA 7F      [ 5] 4480 	ldb	_blockX	; , blockX
   12BC E7 66         [ 5] 4481 	stb	6,s	; , blockX.40
                           4482 ;----- asm -----
                           4483 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4484 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           4485 ;  0 "" 2
                           4486 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4487 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           4488 ;  0 "" 2
                           4489 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4490 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           4491 ;  0 "" 2
                           4492 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4493 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           4494 ;  0 "" 2
                           4495 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4496 	; #ENR#[50]	Moveto_d_7F(y,x);
                           4497 ;  0 "" 2
                           4498 ;--- end asm ---
   12BE 58            [ 2] 4499 	aslb	; 
   12BF EB 66         [ 5] 4500 	addb	6,s	; , blockX.40
   12C1 E7 62         [ 5] 4501 	stb	2,s	; ,
   12C3 F6 CA 80      [ 5] 4502 	ldb	_blockY	; , blockY
   12C6 58            [ 2] 4503 	aslb	; 
   12C7 58            [ 2] 4504 	aslb	; 
   12C8 58            [ 2] 4505 	aslb	; 
   12C9 E7 64         [ 5] 4506 	stb	4,s	; ,
   12CB E6 62         [ 5] 4507 	ldb	2,s	; ,
   12CD EB 64         [ 5] 4508 	addb	4,s	; ,
   12CF CB 98         [ 2] 4509 	addb	#-104	; ,
   12D1 E7 69         [ 5] 4510 	stb	9,s	; , a
   12D3 E6 66         [ 5] 4511 	ldb	6,s	; , blockX.40
   12D5 CB FE         [ 2] 4512 	addb	#-2	; ,
   12D7 86 0E         [ 2] 4513 	lda	#14	;mulqihi3	; 
   12D9 3D            [11] 4514 	mul
   12DA 1F 03         [ 6] 4515 	tfr	d,u	; , tmp39
   12DC F6 CA 80      [ 5] 4516 	ldb	_blockY	; , blockY
   12DF 86 FA         [ 2] 4517 	lda	#-6	;mulqihi3	; 
   12E1 3D            [11] 4518 	mul
   12E2 1F 01         [ 6] 4519 	tfr	d,x	; , tmp40
   12E4 1F 30         [ 6] 4520 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp39,
   12E6 E7 63         [ 5] 4521 	stb	3,s	; ,
   12E8 1F 10         [ 6] 4522 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp40, tmp42
   12EA EB 63         [ 5] 4523 	addb	3,s	;  tmp42,
   12EC E7 6A         [ 5] 4524 	stb	10,s	;  tmp42, b
                           4525 ;----- asm -----
                           4526 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   12EE A6 69         [ 5] 4527 	lda 9,s	;  a
   12F0 E6 6A         [ 5] 4528 	ldb 10,s	;  b
   12F2 BD F2 FC      [ 8] 4529 	jsr ___Moveto_d_7F; BIOS call
                           4530 ;  0 "" 2
                           4531 ;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4532 	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           4533 ;  0 "" 2
                           4534 ;--- end asm ---
   12F5 F6 CA 85      [ 5] 4535 	ldb	_blockAnimationStep	; , blockAnimationStep
   12F8 1D            [ 2] 4536 	sex		;extendqihi2: R:b -> R:d	; ,
   12F9 ED E4         [ 5] 4537 	std	,s	; ,
   12FB 58            [ 2] 4538 	aslb	; 
   12FC 49            [ 2] 4539 	rola	; 
   12FD FE CA 81      [ 6] 4540 	ldu	_blockAnimation	; , blockAnimation
   1300 30 CB         [ 8] 4541 	leax	d,u	;  tmp46, tmp45,
   1302 AE 84         [ 5] 4542 	ldx	,x	; ,
                           4543 ; Applied peep: 2 (no load after store)
                           4544 ;----- asm -----
                           4545 ;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   1304 AF 67         [ 6] 4546 	stx	7,s	; , x
                           4547 ; ORG>	stx	7,s	; , x
                           4548 ; ORG>;----- asm -----
                           4549 ; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
                           4550 ; ORG>	ldx 7,s	;  x
   1306 BD F4 08      [ 8] 4551 	jsr ___Draw_VLp_7F; BIOS call
                           4552 ;  0 "" 2
                           4553 ;  935 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4554 	; #ENR#[666]		doBlockAnimation();
                           4555 ;  0 "" 2
                           4556 ;  834 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4557 	; #ENR#[603]	if (blockAnimating) {
                           4558 ;  0 "" 2
                           4559 ;--- end asm ---
   1309 7D CA 86      [ 7] 4560 	tst	_blockAnimating	;  blockAnimating
   130C 10 27 FF 7F   [ 6] 4561 	lbeq	L228	; 
                           4562 ;----- asm -----
                           4563 ;  836 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4564 	; #ENR#[604]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
                           4565 ;  0 "" 2
                           4566 ;--- end asm ---
   1310 7C CA 85      [ 7] 4567 	inc	_blockAnimationStep	;  blockAnimationStep
   1313 F6 CA 85      [ 5] 4568 	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
   1316 C1 0C         [ 2] 4569 	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
   1318 10 26 FF 73   [ 6] 4570 	lbne	L228	; 
                           4571 ;----- asm -----
                           4572 ;  838 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4573 	; #ENR#[605]			blockX = nextBlockX;
                           4574 ;  0 "" 2
                           4575 ;--- end asm ---
   131C F6 CA 87      [ 5] 4576 	ldb	_nextBlockX	; , nextBlockX
   131F F7 CA 7F      [ 5] 4577 	stb	_blockX	; , blockX
                           4578 ;----- asm -----
                           4579 ;  840 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4580 	; #ENR#[606]			blockY = nextBlockY;
                           4581 ;  0 "" 2
                           4582 ;--- end asm ---
   1322 F6 CA 88      [ 5] 4583 	ldb	_nextBlockY	; , nextBlockY
   1325 F7 CA 80      [ 5] 4584 	stb	_blockY	; , blockY
                           4585 ;----- asm -----
                           4586 ;  842 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4587 	; #ENR#[607]			blockAnimationStep = 0;
                           4588 ;  0 "" 2
                           4589 ;--- end asm ---
   1328 7F CA 85      [ 7] 4590 	clr	_blockAnimationStep	;  blockAnimationStep
                           4591 ;----- asm -----
                           4592 ;  844 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4593 	; #ENR#[608]			blockAnimation = nextBlockAnimation;
                           4594 ;  0 "" 2
                           4595 ;--- end asm ---
   132B BE CA 83      [ 6] 4596 	ldx	_nextBlockAnimation	; , nextBlockAnimation
   132E BF CA 81      [ 6] 4597 	stx	_blockAnimation	; , blockAnimation
                           4598 ;----- asm -----
                           4599 ;  846 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4600 	; #ENR#[609]			blockAnimating = 0;
                           4601 ;  0 "" 2
                           4602 ;--- end asm ---
   1331 7F CA 86      [ 7] 4603 	clr	_blockAnimating	;  blockAnimating
   1334 7E 12 8F      [ 4] 4604 	jmp	L228	; 
   1337                    4605 L232:
                           4606 ;----- asm -----
                           4607 ;  940 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4608 	; #ENR#[669]		startLevel();
                           4609 ;  0 "" 2
                           4610 ;--- end asm ---
   1337 BD 0F 9D      [ 8] 4611 	jsr	_startLevel	; 
   133A 32 6B         [ 5] 4612 	leas	11,s	; ,,
   133C 35 C0         [ 7] 4613 	puls	u,pc	; 
                           4614 	.globl _blockMovingAtEnd
   133E                    4615 _blockMovingAtEnd:
   133E 34 40         [ 6] 4616 	pshs	u	; 
   1340 32 75         [ 5] 4617 	leas	-11,s	; ,,
                           4618 ;----- asm -----
                           4619 ;  947 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4620 	; #ENR#[675]	drawField();
                           4621 ;  0 "" 2
                           4622 ;--- end asm ---
   1342 BD 04 3E      [ 8] 4623 	jsr	_drawField	; 
                           4624 ;----- asm -----
                           4625 ;  949 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4626 	; #ENR#[676]	drawBlock(blockYOfs);
                           4627 ;  0 "" 2
                           4628 ;--- end asm ---
   1345 F6 CA 8A      [ 5] 4629 	ldb	_blockYOfs	; , blockYOfs
   1348 E7 65         [ 5] 4630 	stb	5,s	; , blockYOfs.65
                           4631 ;----- asm -----
                           4632 ;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4633 	; #ENR#[559]	zergnd();
                           4634 ;  0 "" 2
                           4635 ;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   134A BD F3 54      [ 8] 4636 	jsr ___Reset0Ref; BIOS call
                           4637 ;  0 "" 2
                           4638 ;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4639 	; #ENR#[560]	intens(0x63);
                           4640 ;  0 "" 2
                           4641 ;--- end asm ---
   134D C6 63         [ 2] 4642 	ldb	#99	; ,
   134F E7 69         [ 5] 4643 	stb	9,s	; , a
                           4644 ;----- asm -----
                           4645 ;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   1351 A6 69         [ 5] 4646 	lda 9,s	;  a
   1353 BD F2 AB      [ 8] 4647 	jsr ___Intensity_a; BIOS call
                           4648 ;  0 "" 2
                           4649 ;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4650 	; #ENR#[561]	positd(0, yofs);
                           4651 ;  0 "" 2
                           4652 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4653 	; #ENR#[50]	Moveto_d_7F(y,x);
                           4654 ;  0 "" 2
                           4655 ;--- end asm ---
   1356 E6 65         [ 5] 4656 	ldb	5,s	; , blockYOfs.65
   1358 E7 6A         [ 5] 4657 	stb	10,s	; , a
   135A 6F 69         [ 7] 4658 	clr	9,s	;  b
                           4659 ;----- asm -----
                           4660 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   135C A6 6A         [ 5] 4661 	lda 10,s	;  a
   135E E6 69         [ 5] 4662 	ldb 9,s	;  b
   1360 BD F2 FC      [ 8] 4663 	jsr ___Moveto_d_7F; BIOS call
                           4664 ;  0 "" 2
                           4665 ;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4666 	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           4667 ;  0 "" 2
                           4668 ;--- end asm ---
   1363 F6 CA 7F      [ 5] 4669 	ldb	_blockX	; , blockX
   1366 E7 66         [ 5] 4670 	stb	6,s	; , blockX.40
                           4671 ;----- asm -----
                           4672 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4673 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           4674 ;  0 "" 2
                           4675 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4676 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           4677 ;  0 "" 2
                           4678 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4679 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           4680 ;  0 "" 2
                           4681 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4682 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           4683 ;  0 "" 2
                           4684 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4685 	; #ENR#[50]	Moveto_d_7F(y,x);
                           4686 ;  0 "" 2
                           4687 ;--- end asm ---
   1368 58            [ 2] 4688 	aslb	; 
   1369 EB 66         [ 5] 4689 	addb	6,s	; , blockX.40
   136B E7 62         [ 5] 4690 	stb	2,s	; ,
   136D F6 CA 80      [ 5] 4691 	ldb	_blockY	; , blockY
   1370 58            [ 2] 4692 	aslb	; 
   1371 58            [ 2] 4693 	aslb	; 
   1372 58            [ 2] 4694 	aslb	; 
   1373 E7 64         [ 5] 4695 	stb	4,s	; ,
   1375 E6 62         [ 5] 4696 	ldb	2,s	; ,
   1377 EB 64         [ 5] 4697 	addb	4,s	; ,
   1379 CB 98         [ 2] 4698 	addb	#-104	; ,
   137B E7 69         [ 5] 4699 	stb	9,s	; , a
   137D E6 66         [ 5] 4700 	ldb	6,s	; , blockX.40
   137F CB FE         [ 2] 4701 	addb	#-2	; ,
   1381 86 0E         [ 2] 4702 	lda	#14	;mulqihi3	; 
   1383 3D            [11] 4703 	mul
   1384 1F 03         [ 6] 4704 	tfr	d,u	; , tmp42
   1386 F6 CA 80      [ 5] 4705 	ldb	_blockY	; , blockY
   1389 86 FA         [ 2] 4706 	lda	#-6	;mulqihi3	; 
   138B 3D            [11] 4707 	mul
   138C 1F 01         [ 6] 4708 	tfr	d,x	; , tmp43
   138E 1F 30         [ 6] 4709 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp42,
   1390 E7 63         [ 5] 4710 	stb	3,s	; ,
   1392 1F 10         [ 6] 4711 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp43, tmp45
   1394 EB 63         [ 5] 4712 	addb	3,s	;  tmp45,
   1396 E7 6A         [ 5] 4713 	stb	10,s	;  tmp45, b
                           4714 ;----- asm -----
                           4715 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   1398 A6 69         [ 5] 4716 	lda 9,s	;  a
   139A E6 6A         [ 5] 4717 	ldb 10,s	;  b
   139C BD F2 FC      [ 8] 4718 	jsr ___Moveto_d_7F; BIOS call
                           4719 ;  0 "" 2
                           4720 ;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4721 	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           4722 ;  0 "" 2
                           4723 ;--- end asm ---
   139F F6 CA 85      [ 5] 4724 	ldb	_blockAnimationStep	; , blockAnimationStep
   13A2 1D            [ 2] 4725 	sex		;extendqihi2: R:b -> R:d	; ,
   13A3 ED E4         [ 5] 4726 	std	,s	; ,
   13A5 58            [ 2] 4727 	aslb	; 
   13A6 49            [ 2] 4728 	rola	; 
   13A7 FE CA 81      [ 6] 4729 	ldu	_blockAnimation	; , blockAnimation
   13AA 30 CB         [ 8] 4730 	leax	d,u	;  tmp49, tmp48,
   13AC AE 84         [ 5] 4731 	ldx	,x	; ,
                           4732 ; Applied peep: 2 (no load after store)
                           4733 ;----- asm -----
                           4734 ;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   13AE AF 67         [ 6] 4735 	stx	7,s	; , x
                           4736 ; ORG>	stx	7,s	; , x
                           4737 ; ORG>;----- asm -----
                           4738 ; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
                           4739 ; ORG>	ldx 7,s	;  x
   13B0 BD F4 08      [ 8] 4740 	jsr ___Draw_VLp_7F; BIOS call
                           4741 ;  0 "" 2
                           4742 ;  951 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4743 	; #ENR#[677]	blockYOfs++;
                           4744 ;  0 "" 2
                           4745 ;--- end asm ---
   13B3 7C CA 8A      [ 7] 4746 	inc	_blockYOfs	;  blockYOfs
   13B6 F6 CA 8A      [ 5] 4747 	ldb	_blockYOfs	;  blockYOfs.66, blockYOfs
                           4748 ;----- asm -----
                           4749 ;  953 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4750 	; #ENR#[678]	if (blockYOfs == 30) {
                           4751 ;  0 "" 2
                           4752 ;--- end asm ---
   13B9 C1 1E         [ 2] 4753 	cmpb	#30	;cmpqi:	;  blockYOfs.66,
   13BB 27 04         [ 3] 4754 	beq	L239	; 
   13BD 32 6B         [ 5] 4755 	leas	11,s	; ,,
   13BF 35 C0         [ 7] 4756 	puls	u,pc	; 
   13C1                    4757 L239:
                           4758 ;----- asm -----
                           4759 ;  955 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4760 	; #ENR#[679]		if (moveCount < levelHighscore) {
                           4761 ;  0 "" 2
                           4762 ;--- end asm ---
   13C1 FE C8 9B      [ 6] 4763 	ldu	_moveCount	;  moveCount.674, moveCount
   13C4 11 B3 CA 8D   [ 8] 4764 	cmpu	_levelHighscore	;cmphi:	;  moveCount.674, levelHighscore
   13C8 25 14         [ 3] 4765 	blo	L240	; 
   13CA                    4766 L235:
                           4767 ;----- asm -----
                           4768 ;  962 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4769 	; #ENR#[683]		levelNumber++;
                           4770 ;  0 "" 2
                           4771 ;--- end asm ---
   13CA 7C C8 8D      [ 7] 4772 	inc	_levelNumber	;  levelNumber
   13CD F6 C8 8D      [ 5] 4773 	ldb	_levelNumber	;  levelNumber.70, levelNumber
                           4774 ;----- asm -----
                           4775 ;  964 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4776 	; #ENR#[684]		if (levelNumber > 2) levelNumber = 0;
                           4777 ;  0 "" 2
                           4778 ;--- end asm ---
   13D0 C1 02         [ 2] 4779 	cmpb	#2	;cmpqi:	;  levelNumber.70,
   13D2 2F 03         [ 3] 4780 	ble	L237	; 
   13D4 7F C8 8D      [ 7] 4781 	clr	_levelNumber	;  levelNumber
   13D7                    4782 L237:
                           4783 ;----- asm -----
                           4784 ;  966 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4785 	; #ENR#[685]		startLevel();
                           4786 ;  0 "" 2
                           4787 ;--- end asm ---
   13D7 BD 0F 9D      [ 8] 4788 	jsr	_startLevel	; 
   13DA 32 6B         [ 5] 4789 	leas	11,s	; ,,
   13DC 35 C0         [ 7] 4790 	puls	u,pc	; 
   13DE                    4791 L240:
                           4792 ;----- asm -----
                           4793 ;  957 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4794 	; #ENR#[680]			writeEeprom((uint8_t) (2 * levelNumber), (uint8_t) (moveCount & 0xff));
                           4795 ;  0 "" 2
                           4796 ;--- end asm ---
   13DE F6 C8 8D      [ 5] 4797 	ldb	_levelNumber	;  levelNumber.675, levelNumber
                           4798 ;----- asm -----
                           4799 ;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4800 	; #ENR#[208]	if (picAvailable) {
                           4801 ;  0 "" 2
                           4802 ;--- end asm ---
   13E1 7D C8 9D      [ 7] 4803 	tst	_picAvailable	;  picAvailable
   13E4 27 19         [ 3] 4804 	beq	L236	; 
                           4805 ;----- asm -----
                           4806 ;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4807 	; #ENR#[209]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
                           4808 ;  0 "" 2
                           4809 ;--- end asm ---
   13E6 58            [ 2] 4810 	aslb	;  levelNumber.675
   13E7 34 04         [ 6] 4811 	pshs	b	;  levelNumber.675
   13E9 C6 02         [ 2] 4812 	ldb	#2	; ,
   13EB BD 05 2C      [ 8] 4813 	jsr	_sendCommand	; 
                           4814 ;----- asm -----
                           4815 ;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4816 	; #ENR#[210]	    	sendCommand(CMD_EEPROM_WRITE, data);
                           4817 ;  0 "" 2
                           4818 ;--- end asm ---
   13EE 1F 30         [ 6] 4819 	tfr	u,d	;  moveCount.674,
   13F0 34 04         [ 6] 4820 	pshs	b	; 
   13F2 C6 03         [ 2] 4821 	ldb	#3	; ,
   13F4 BD 05 2C      [ 8] 4822 	jsr	_sendCommand	; 
   13F7 32 62         [ 5] 4823 	leas	2,s	; ,,
   13F9 FE C8 9B      [ 6] 4824 	ldu	_moveCount	;  moveCount.674, moveCount
   13FC F6 C8 8D      [ 5] 4825 	ldb	_levelNumber	;  levelNumber.675, levelNumber
   13FF                    4826 L236:
                           4827 ;----- asm -----
                           4828 ;  959 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4829 	; #ENR#[681]			writeEeprom((uint8_t) (2 * levelNumber + 1), (uint8_t) (moveCount >> 8));
                           4830 ;  0 "" 2
                           4831 ;  217 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4832 	; #ENR#[208]	if (picAvailable) {
                           4833 ;  0 "" 2
                           4834 ;--- end asm ---
   13FF 7D C8 9D      [ 7] 4835 	tst	_picAvailable	;  picAvailable
   1402 10 27 FF C4   [ 6] 4836 	lbeq	L235	; 
                           4837 ;----- asm -----
                           4838 ;  219 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4839 	; #ENR#[209]	    	sendCommand(CMD_SET_EEPROM_ADR, address);
                           4840 ;  0 "" 2
                           4841 ;--- end asm ---
   1406 58            [ 2] 4842 	aslb	;  levelNumber.675
   1407 5C            [ 2] 4843 	incb	;  levelNumber.675
   1408 34 04         [ 6] 4844 	pshs	b	;  levelNumber.675
   140A C6 02         [ 2] 4845 	ldb	#2	; ,
   140C BD 05 2C      [ 8] 4846 	jsr	_sendCommand	; 
                           4847 ;----- asm -----
                           4848 ;  221 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4849 	; #ENR#[210]	    	sendCommand(CMD_EEPROM_WRITE, data);
                           4850 ;  0 "" 2
                           4851 ;--- end asm ---
   140F 1F 30         [ 6] 4852 	tfr	u,d	;  moveCount.674, tmp54
   1411 1F 89         [ 6] 4853 	tfr	a,b	; ,
   1413 4F            [ 2] 4854 	clra		;zero_extendqihi: R:b -> R:d	; ,
   1414 34 04         [ 6] 4855 	pshs	b	;  tmp54
   1416 C6 03         [ 2] 4856 	ldb	#3	; ,
   1418 BD 05 2C      [ 8] 4857 	jsr	_sendCommand	; 
   141B 32 62         [ 5] 4858 	leas	2,s	; ,,
   141D 7E 13 CA      [ 4] 4859 	jmp	L235	; 
                           4860 	.globl _main
   1420                    4861 _main:
   1420 34 60         [ 7] 4862 	pshs	y,u	; 
   1422 32 71         [ 5] 4863 	leas	-15,s	; ,,
                           4864 ;----- asm -----
                           4865 ;  974 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4866 	; #ENR#[692]	picAvailable = 0;
                           4867 ;  0 "" 2
                           4868 ;--- end asm ---
   1424 7F C8 9D      [ 7] 4869 	clr	_picAvailable	;  picAvailable
                           4870 ;----- asm -----
                           4871 ;  976 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4872 	; #ENR#[693]	sendCommand(CMD_VERSION, 0);
                           4873 ;  0 "" 2
                           4874 ;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4875 	; #ENR#[197]	uint8_t result;
                           4876 ;  0 "" 2
                           4877 ;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4878 	; #ENR#[198]	picWrite('V');
                           4879 ;  0 "" 2
                           4880 ;--- end asm ---
   1427 C6 56         [ 2] 4881 	ldb	#86	; ,
   1429 BD 01 55      [ 8] 4882 	jsr	_picWrite	; 
                           4883 ;----- asm -----
                           4884 ;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4885 	; #ENR#[199]	picWrite(cmd);
                           4886 ;  0 "" 2
                           4887 ;--- end asm ---
   142C C6 01         [ 2] 4888 	ldb	#1	; ,
   142E BD 01 55      [ 8] 4889 	jsr	_picWrite	; 
                           4890 ;----- asm -----
                           4891 ;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4892 	; #ENR#[200]	picWrite(arg);
                           4893 ;  0 "" 2
                           4894 ;--- end asm ---
   1431 5F            [ 2] 4895 	clrb	; 
   1432 BD 01 55      [ 8] 4896 	jsr	_picWrite	; 
                           4897 ;----- asm -----
                           4898 ;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4899 	; #ENR#[201]	result = picRead();
                           4900 ;  0 "" 2
                           4901 ;--- end asm ---
   1435 BD 01 A1      [ 8] 4902 	jsr	_picRead	; 
                           4903 ;----- asm -----
                           4904 ;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4905 	; #ENR#[202]	delay10ms();
                           4906 ;  0 "" 2
                           4907 ;--- end asm ---
   1438 BD 01 FE      [ 8] 4908 	jsr	_delay10ms	; 
                           4909 ;----- asm -----
                           4910 ;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4911 	; #ENR#[203]	return result;
                           4912 ;  0 "" 2
                           4913 ;  978 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4914 	; #ENR#[694]	sendCommand(CMD_VERSION, 0);
                           4915 ;  0 "" 2
                           4916 ;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4917 	; #ENR#[197]	uint8_t result;
                           4918 ;  0 "" 2
                           4919 ;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4920 	; #ENR#[198]	picWrite('V');
                           4921 ;  0 "" 2
                           4922 ;--- end asm ---
   143B C6 56         [ 2] 4923 	ldb	#86	; ,
   143D BD 01 55      [ 8] 4924 	jsr	_picWrite	; 
                           4925 ;----- asm -----
                           4926 ;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4927 	; #ENR#[199]	picWrite(cmd);
                           4928 ;  0 "" 2
                           4929 ;--- end asm ---
   1440 C6 01         [ 2] 4930 	ldb	#1	; ,
   1442 BD 01 55      [ 8] 4931 	jsr	_picWrite	; 
                           4932 ;----- asm -----
                           4933 ;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4934 	; #ENR#[200]	picWrite(arg);
                           4935 ;  0 "" 2
                           4936 ;--- end asm ---
   1445 5F            [ 2] 4937 	clrb	; 
   1446 BD 01 55      [ 8] 4938 	jsr	_picWrite	; 
                           4939 ;----- asm -----
                           4940 ;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4941 	; #ENR#[201]	result = picRead();
                           4942 ;  0 "" 2
                           4943 ;--- end asm ---
   1449 BD 01 A1      [ 8] 4944 	jsr	_picRead	; 
                           4945 ;----- asm -----
                           4946 ;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4947 	; #ENR#[202]	delay10ms();
                           4948 ;  0 "" 2
                           4949 ;--- end asm ---
   144C BD 01 FE      [ 8] 4950 	jsr	_delay10ms	; 
                           4951 ;----- asm -----
                           4952 ;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4953 	; #ENR#[203]	return result;
                           4954 ;  0 "" 2
                           4955 ;  980 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4956 	; #ENR#[695]	if (sendCommand(CMD_VERSION, 0) == 4) {
                           4957 ;  0 "" 2
                           4958 ;  199 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4959 	; #ENR#[197]	uint8_t result;
                           4960 ;  0 "" 2
                           4961 ;  201 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4962 	; #ENR#[198]	picWrite('V');
                           4963 ;  0 "" 2
                           4964 ;--- end asm ---
   144F C6 56         [ 2] 4965 	ldb	#86	; ,
   1451 BD 01 55      [ 8] 4966 	jsr	_picWrite	; 
                           4967 ;----- asm -----
                           4968 ;  203 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4969 	; #ENR#[199]	picWrite(cmd);
                           4970 ;  0 "" 2
                           4971 ;--- end asm ---
   1454 C6 01         [ 2] 4972 	ldb	#1	; ,
   1456 BD 01 55      [ 8] 4973 	jsr	_picWrite	; 
                           4974 ;----- asm -----
                           4975 ;  205 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4976 	; #ENR#[200]	picWrite(arg);
                           4977 ;  0 "" 2
                           4978 ;--- end asm ---
   1459 5F            [ 2] 4979 	clrb	; 
   145A BD 01 55      [ 8] 4980 	jsr	_picWrite	; 
                           4981 ;----- asm -----
                           4982 ;  207 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4983 	; #ENR#[201]	result = picRead();
                           4984 ;  0 "" 2
                           4985 ;--- end asm ---
   145D BD 01 A1      [ 8] 4986 	jsr	_picRead	; 
   1460 E7 66         [ 5] 4987 	stb	6,s	; , result
                           4988 ;----- asm -----
                           4989 ;  209 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4990 	; #ENR#[202]	delay10ms();
                           4991 ;  0 "" 2
                           4992 ;--- end asm ---
   1462 BD 01 FE      [ 8] 4993 	jsr	_delay10ms	; 
                           4994 ;----- asm -----
                           4995 ;  211 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4996 	; #ENR#[203]	return result;
                           4997 ;  0 "" 2
                           4998 ;--- end asm ---
   1465 E6 66         [ 5] 4999 	ldb	6,s	; , result
   1467 C1 04         [ 2] 5000 	cmpb	#4	;cmpqi:	; ,
   1469 10 27 01 DC   [ 6] 5001 	lbeq	L255	; 
   146D                    5002 L242:
                           5003 ;----- asm -----
                           5004 ;  987 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5005 	; #ENR#[700]	memcpy(infoText, "001 / 999�", 10);
                           5006 ;  0 "" 2
                           5007 ;--- end asm ---
   146D 8E 30 30      [ 3] 5008 	ldx	#12336	; ,
   1470 BF C8 91      [ 6] 5009 	stx	_infoText	; , infoText
   1473 CE 31 20      [ 3] 5010 	ldu	#12576	; ,
   1476 FF C8 93      [ 6] 5011 	stu	_infoText+2	; , infoText
   1479 8E 2F 20      [ 3] 5012 	ldx	#12064	; ,
   147C BF C8 95      [ 6] 5013 	stx	_infoText+4	; , infoText
   147F CE 39 39      [ 3] 5014 	ldu	#14649	; ,
   1482 FF C8 97      [ 6] 5015 	stu	_infoText+6	; , infoText
   1485 8E 39 80      [ 3] 5016 	ldx	#14720	; ,
   1488 BF C8 99      [ 6] 5017 	stx	_infoText+8	; , infoText
                           5018 ;----- asm -----
                           5019 ;  991 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5020 	; #ENR#[703]	epot0 = 1;
                           5021 ;  0 "" 2
                           5022 ;--- end asm ---
   148B C6 01         [ 2] 5023 	ldb	#1	; ,
   148D F7 C8 1F      [ 5] 5024 	stb	-14305	; ,
                           5025 ;----- asm -----
                           5026 ;  993 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5027 	; #ENR#[704]	epot1 = 3;
                           5028 ;  0 "" 2
                           5029 ;--- end asm ---
   1490 C6 03         [ 2] 5030 	ldb	#3	; ,
   1492 F7 C8 20      [ 5] 5031 	stb	-14304	; ,
                           5032 ;----- asm -----
                           5033 ;  995 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5034 	; #ENR#[705]	epot2 = 0;
                           5035 ;  0 "" 2
                           5036 ;--- end asm ---
   1495 7F C8 21      [ 7] 5037 	clr	-14303	; 
                           5038 ;----- asm -----
                           5039 ;  997 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5040 	; #ENR#[706]	epot3 = 0;
                           5041 ;  0 "" 2
                           5042 ;--- end asm ---
   1498 7F C8 22      [ 7] 5043 	clr	-14302	; 
                           5044 ;----- asm -----
                           5045 ;  1000 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5046 	; #ENR#[708]	startLevel();
                           5047 ;  0 "" 2
                           5048 ;--- end asm ---
   149B BD 0F 9D      [ 8] 5049 	jsr	_startLevel	; 
                           5050 ;----- asm -----
                           5051 ;  1002 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5052 	; #ENR#[709]	while (1) {
                           5053 ;  0 "" 2
                           5054 ;--- end asm ---
   149E                    5055 L253:
                           5056 ;----- asm -----
                           5057 ;  1005 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5058 	; #ENR#[711]		frwait();
                           5059 ;  0 "" 2
                           5060 ;  97 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   149E BD F1 92      [ 8] 5061 	jsr ___Wait_Recal; BIOS call
                           5062 ;  0 "" 2
                           5063 ;  1008 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5064 	; #ENR#[713]        Intensity_a(0x5f);
                           5065 ;  0 "" 2
                           5066 ;--- end asm ---
   14A1 C6 5F         [ 2] 5067 	ldb	#95	; ,
   14A3 E7 6E         [ 5] 5068 	stb	14,s	; , a
                           5069 ;----- asm -----
                           5070 ;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   14A5 A6 6E         [ 5] 5071 	lda 14,s	;  a
   14A7 BD F2 AB      [ 8] 5072 	jsr ___Intensity_a; BIOS call
                           5073 ;  0 "" 2
                           5074 ;  1010 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5075 	; #ENR#[714]        Vec_Text_Width = 100;
                           5076 ;  0 "" 2
                           5077 ;--- end asm ---
   14AA C6 64         [ 2] 5078 	ldb	#100	; ,
   14AC F7 C8 2B      [ 5] 5079 	stb	_Vec_Text_Width	; , Vec_Text_Width
                           5080 ;----- asm -----
                           5081 ;  1012 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5082 	; #ENR#[715]        Print_Str_d(100, -80, infoText);
                           5083 ;  0 "" 2
                           5084 ;--- end asm ---
   14AF E7 6E         [ 5] 5085 	stb	14,s	; , a
   14B1 C6 B0         [ 2] 5086 	ldb	#-80	; ,
   14B3 E7 6D         [ 5] 5087 	stb	13,s	; , b
   14B5 8E C8 91      [ 3] 5088 	ldx	#_infoText	; ,
   14B8 AF 6B         [ 6] 5089 	stx	11,s	; , u
                           5090 ;----- asm -----
                           5091 ;  666 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   14BA A6 6E         [ 5] 5092 	lda 14,s	;  a
   14BC E6 6D         [ 5] 5093 	ldb 13,s	;  b
   14BE EE 6B         [ 6] 5094 	ldu 11,s	;  u
   14C0 BD F3 7A      [ 8] 5095 	jsr ___Print_Str_d; BIOS call
                           5096 ;  0 "" 2
                           5097 ;  1015 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5098 	; #ENR#[717]		switch (gameState) {
                           5099 ;  0 "" 2
                           5100 ;--- end asm ---
   14C3 F6 CA 8F      [ 5] 5101 	ldb	_gameState	; , gameState
   14C6 C1 04         [ 2] 5102 	cmpb	#4	;cmpqi:	; ,
   14C8 22 18         [ 3] 5103 	bhi	L243	; 
   14CA 4F            [ 2] 5104 	clra		;zero_extendqihi: R:b -> R:d	; ,
   14CB ED E4         [ 5] 5105 	std	,s	; ,
   14CD 58            [ 2] 5106 	aslb	; 
   14CE 49            [ 2] 5107 	rola	; 
   14CF 1F 01         [ 6] 5108 	tfr	d,x	; , tmp51
   14D1 6E 99 14 D5   [10] 5109 	jmp	[L249,x]	; , tmp51
   14D5                    5110 L249:
   14D5 14 FE              5111 	.word L244
   14D7 14 F8              5112 	.word L245
   14D9 15 9C              5113 	.word L246
   14DB 15 80              5114 	.word L247
   14DD 14 DF              5115 	.word L248
   14DF                    5116 L248:
                           5117 ;----- asm -----
                           5118 ;  1043 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5119 	; #ENR#[731]			blockMovingAtEnd();
                           5120 ;  0 "" 2
                           5121 ;--- end asm ---
   14DF BD 13 3E      [ 8] 5122 	jsr	_blockMovingAtEnd	; 
                           5123 ;----- asm -----
                           5124 ;  1045 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5125 	; #ENR#[732]			break;
                           5126 ;  0 "" 2
                           5127 ;--- end asm ---
   14E2                    5128 L243:
                           5129 ;----- asm -----
                           5130 ;  1050 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5131 	; #ENR#[736]		DP_to_C8();
                           5132 ;  0 "" 2
                           5133 ;  316 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   14E2 BD F1 AF      [ 8] 5134 	jsr ___DP_to_C8; BIOS call
                           5135 ;  0 "" 2
                           5136 ;  1052 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5137 	; #ENR#[737]		replay(currentMusic);
                           5138 ;  0 "" 2
                           5139 ;--- end asm ---
   14E5 BE C8 80      [ 6] 5140 	ldx	_currentMusic	; , currentMusic
   14E8 AF 6B         [ 6] 5141 	stx	11,s	; , u
                           5142 ;----- asm -----
                           5143 ;  2917 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   14EA EE 6B         [ 6] 5144 	ldu 11,s	;  u
   14EC BD F6 87      [ 8] 5145 	jsr ___Init_Music_chk; BIOS call
                           5146 ;  0 "" 2
                           5147 ;  1054 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5148 	; #ENR#[738]		DP_to_D0();
                           5149 ;  0 "" 2
                           5150 ;  300 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   14EF BD F1 AA      [ 8] 5151 	jsr ___DP_to_D0; BIOS call
                           5152 ;  0 "" 2
                           5153 ;  1056 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5154 	; #ENR#[739]		reqout();
                           5155 ;  0 "" 2
                           5156 ;  2880 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   14F2 BD F2 89      [ 8] 5157 	jsr ___Do_Sound; BIOS call
                           5158 ;  0 "" 2
                           5159 ;--- end asm ---
   14F5 7E 14 9E      [ 4] 5160 	jmp	L253	; 
   14F8                    5161 L245:
                           5162 ;----- asm -----
                           5163 ;  1025 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5164 	; #ENR#[722]			blockWaiting();
                           5165 ;  0 "" 2
                           5166 ;--- end asm ---
   14F8 BD 0E 60      [ 8] 5167 	jsr	_blockWaiting	; 
                           5168 ;----- asm -----
                           5169 ;  1027 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5170 	; #ENR#[723]			break;
                           5171 ;  0 "" 2
                           5172 ;--- end asm ---
   14FB 7E 14 E2      [ 4] 5173 	jmp	L243	; 
   14FE                    5174 L244:
                           5175 ;----- asm -----
                           5176 ;  1019 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5177 	; #ENR#[719]			blockMovingToStart();
                           5178 ;  0 "" 2
                           5179 ;  782 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5180 	; #ENR#[570]	drawField();
                           5181 ;  0 "" 2
                           5182 ;--- end asm ---
   14FE BD 04 3E      [ 8] 5183 	jsr	_drawField	; 
                           5184 ;----- asm -----
                           5185 ;  784 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5186 	; #ENR#[571]	drawBlock(blockYOfs);
                           5187 ;  0 "" 2
                           5188 ;--- end asm ---
   1501 F6 CA 8A      [ 5] 5189 	ldb	_blockYOfs	; , blockYOfs
   1504 E7 67         [ 5] 5190 	stb	7,s	; , blockYOfs.43
                           5191 ;----- asm -----
                           5192 ;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5193 	; #ENR#[559]	zergnd();
                           5194 ;  0 "" 2
                           5195 ;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   1506 BD F3 54      [ 8] 5196 	jsr ___Reset0Ref; BIOS call
                           5197 ;  0 "" 2
                           5198 ;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5199 	; #ENR#[560]	intens(0x63);
                           5200 ;  0 "" 2
                           5201 ;--- end asm ---
   1509 C6 63         [ 2] 5202 	ldb	#99	; ,
   150B E7 6D         [ 5] 5203 	stb	13,s	; , a
                           5204 ;----- asm -----
                           5205 ;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   150D A6 6D         [ 5] 5206 	lda 13,s	;  a
   150F BD F2 AB      [ 8] 5207 	jsr ___Intensity_a; BIOS call
                           5208 ;  0 "" 2
                           5209 ;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5210 	; #ENR#[561]	positd(0, yofs);
                           5211 ;  0 "" 2
                           5212 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5213 	; #ENR#[50]	Moveto_d_7F(y,x);
                           5214 ;  0 "" 2
                           5215 ;--- end asm ---
   1512 E6 67         [ 5] 5216 	ldb	7,s	; , blockYOfs.43
   1514 E7 6E         [ 5] 5217 	stb	14,s	; , a
   1516 6F 6D         [ 7] 5218 	clr	13,s	;  b
                           5219 ;----- asm -----
                           5220 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   1518 A6 6E         [ 5] 5221 	lda 14,s	;  a
   151A E6 6D         [ 5] 5222 	ldb 13,s	;  b
   151C BD F2 FC      [ 8] 5223 	jsr ___Moveto_d_7F; BIOS call
                           5224 ;  0 "" 2
                           5225 ;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5226 	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           5227 ;  0 "" 2
                           5228 ;--- end asm ---
   151F F6 CA 7F      [ 5] 5229 	ldb	_blockX	; , blockX
   1522 E7 68         [ 5] 5230 	stb	8,s	; , blockX.40
                           5231 ;----- asm -----
                           5232 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5233 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           5234 ;  0 "" 2
                           5235 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5236 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           5237 ;  0 "" 2
                           5238 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5239 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           5240 ;  0 "" 2
                           5241 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5242 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           5243 ;  0 "" 2
                           5244 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5245 	; #ENR#[50]	Moveto_d_7F(y,x);
                           5246 ;  0 "" 2
                           5247 ;--- end asm ---
   1524 58            [ 2] 5248 	aslb	; 
   1525 EB 68         [ 5] 5249 	addb	8,s	; , blockX.40
   1527 E7 E4         [ 4] 5250 	stb	,s	; ,
   1529 F6 CA 80      [ 5] 5251 	ldb	_blockY	; , blockY
   152C 58            [ 2] 5252 	aslb	; 
   152D 58            [ 2] 5253 	aslb	; 
   152E 58            [ 2] 5254 	aslb	; 
   152F E7 65         [ 5] 5255 	stb	5,s	; ,
   1531 E6 E4         [ 4] 5256 	ldb	,s	; ,
   1533 EB 65         [ 5] 5257 	addb	5,s	; ,
   1535 CB 98         [ 2] 5258 	addb	#-104	; ,
   1537 E7 6D         [ 5] 5259 	stb	13,s	; , a
   1539 E6 68         [ 5] 5260 	ldb	8,s	; , blockX.40
   153B CB FE         [ 2] 5261 	addb	#-2	; ,
   153D 86 0E         [ 2] 5262 	lda	#14	;mulqihi3	; 
   153F 3D            [11] 5263 	mul
   1540 1F 02         [ 6] 5264 	tfr	d,y	; , tmp60
   1542 F6 CA 80      [ 5] 5265 	ldb	_blockY	; , blockY
   1545 86 FA         [ 2] 5266 	lda	#-6	;mulqihi3	; 
   1547 3D            [11] 5267 	mul
   1548 1F 01         [ 6] 5268 	tfr	d,x	; , tmp61
   154A 1F 20         [ 6] 5269 	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp60,
   154C E7 64         [ 5] 5270 	stb	4,s	; ,
   154E 1F 10         [ 6] 5271 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp61, tmp63
   1550 EB 64         [ 5] 5272 	addb	4,s	;  tmp63,
   1552 E7 6E         [ 5] 5273 	stb	14,s	;  tmp63, b
                           5274 ;----- asm -----
                           5275 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   1554 A6 6D         [ 5] 5276 	lda 13,s	;  a
   1556 E6 6E         [ 5] 5277 	ldb 14,s	;  b
   1558 BD F2 FC      [ 8] 5278 	jsr ___Moveto_d_7F; BIOS call
                           5279 ;  0 "" 2
                           5280 ;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5281 	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           5282 ;  0 "" 2
                           5283 ;--- end asm ---
   155B F6 CA 85      [ 5] 5284 	ldb	_blockAnimationStep	; , blockAnimationStep
   155E 1D            [ 2] 5285 	sex		;extendqihi2: R:b -> R:d	; ,
   155F ED E4         [ 5] 5286 	std	,s	; ,
   1561 58            [ 2] 5287 	aslb	; 
   1562 49            [ 2] 5288 	rola	; 
   1563 FE CA 81      [ 6] 5289 	ldu	_blockAnimation	; , blockAnimation
   1566 30 CB         [ 8] 5290 	leax	d,u	;  tmp67, tmp66,
   1568 AE 84         [ 5] 5291 	ldx	,x	; ,
                           5292 ; Applied peep: 2 (no load after store)
                           5293 ;----- asm -----
                           5294 ;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   156A AF 6B         [ 6] 5295 	stx	11,s	; , x
                           5296 ; ORG>	stx	11,s	; , x
                           5297 ; ORG>;----- asm -----
                           5298 ; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
                           5299 ; ORG>	ldx 11,s	;  x
   156C BD F4 08      [ 8] 5300 	jsr ___Draw_VLp_7F; BIOS call
                           5301 ;  0 "" 2
                           5302 ;  786 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5303 	; #ENR#[572]	blockYOfs++;
                           5304 ;  0 "" 2
                           5305 ;--- end asm ---
   156F 7C CA 8A      [ 7] 5306 	inc	_blockYOfs	;  blockYOfs
   1572 F6 CA 8A      [ 5] 5307 	ldb	_blockYOfs	;  blockYOfs.44, blockYOfs
                           5308 ;----- asm -----
                           5309 ;  788 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5310 	; #ENR#[573]	if (blockYOfs == 0) {
                           5311 ;  0 "" 2
                           5312 ;--- end asm ---
   1575 5D            [ 2] 5313 	tstb	;  blockYOfs.44
   1576 26 05         [ 3] 5314 	bne	L250	; 
                           5315 ;----- asm -----
                           5316 ;  790 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5317 	; #ENR#[574]		gameState = BlockWaiting;
                           5318 ;  0 "" 2
                           5319 ;--- end asm ---
   1578 C6 01         [ 2] 5320 	ldb	#1	; ,
   157A F7 CA 8F      [ 5] 5321 	stb	_gameState	; , gameState
   157D                    5322 L250:
                           5323 ;----- asm -----
                           5324 ;  1021 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5325 	; #ENR#[720]			break;
                           5326 ;  0 "" 2
                           5327 ;--- end asm ---
   157D 7E 14 E2      [ 4] 5328 	jmp	L243	; 
   1580                    5329 L247:
                           5330 ;----- asm -----
                           5331 ;  1037 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5332 	; #ENR#[728]			blockFalling();
                           5333 ;  0 "" 2
                           5334 ;  927 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5335 	; #ENR#[662]	drawField();
                           5336 ;  0 "" 2
                           5337 ;--- end asm ---
   1580 BD 04 3E      [ 8] 5338 	jsr	_drawField	; 
                           5339 ;----- asm -----
                           5340 ;  929 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5341 	; #ENR#[663]	blockYOfs++;
                           5342 ;  0 "" 2
                           5343 ;--- end asm ---
   1583 F6 CA 8A      [ 5] 5344 	ldb	_blockYOfs	; , blockYOfs
   1586 5C            [ 2] 5345 	incb	; 
   1587 E7 69         [ 5] 5346 	stb	9,s	; , blockYOfs.64
   1589 F7 CA 8A      [ 5] 5347 	stb	_blockYOfs	; , blockYOfs
                           5348 ;----- asm -----
                           5349 ;  931 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5350 	; #ENR#[664]	if (blockYOfs < 12) {
                           5351 ;  0 "" 2
                           5352 ;--- end asm ---
   158C C1 0B         [ 2] 5353 	cmpb	#11	;cmpqi:	; ,
   158E 2F 12         [ 3] 5354 	ble	L256	; 
   1590                    5355 L251:
                           5356 ;----- asm -----
                           5357 ;  938 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5358 	; #ENR#[668]	if (blockYOfs == 50) {
                           5359 ;  0 "" 2
                           5360 ;--- end asm ---
   1590 F6 CA 8A      [ 5] 5361 	ldb	_blockYOfs	; , blockYOfs
   1593 C1 32         [ 2] 5362 	cmpb	#50	;cmpqi:	; ,
   1595 10 27 00 AA   [ 6] 5363 	lbeq	L257	; 
   1599                    5364 L252:
                           5365 ;----- asm -----
                           5366 ;  1039 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5367 	; #ENR#[729]			break;
                           5368 ;  0 "" 2
                           5369 ;--- end asm ---
   1599 7E 14 E2      [ 4] 5370 	jmp	L243	; 
   159C                    5371 L246:
                           5372 ;----- asm -----
                           5373 ;  1031 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5374 	; #ENR#[725]			blockMoving();
                           5375 ;  0 "" 2
                           5376 ;--- end asm ---
   159C BD 0C 33      [ 8] 5377 	jsr	_blockMoving	; 
                           5378 ;----- asm -----
                           5379 ;  1033 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5380 	; #ENR#[726]			break;
                           5381 ;  0 "" 2
                           5382 ;--- end asm ---
   159F 7E 14 E2      [ 4] 5383 	jmp	L243	; 
   15A2                    5384 L256:
                           5385 ;----- asm -----
                           5386 ;  933 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5387 	; #ENR#[665]		drawBlock(-blockYOfs*blockYOfs);
                           5388 ;  0 "" 2
                           5389 ;  766 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5390 	; #ENR#[559]	zergnd();
                           5391 ;  0 "" 2
                           5392 ;  181 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   15A2 BD F3 54      [ 8] 5393 	jsr ___Reset0Ref; BIOS call
                           5394 ;  0 "" 2
                           5395 ;  768 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5396 	; #ENR#[560]	intens(0x63);
                           5397 ;  0 "" 2
                           5398 ;--- end asm ---
   15A5 C6 63         [ 2] 5399 	ldb	#99	; ,
   15A7 E7 6D         [ 5] 5400 	stb	13,s	; , a
                           5401 ;----- asm -----
                           5402 ;  3427 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   15A9 A6 6D         [ 5] 5403 	lda 13,s	;  a
   15AB BD F2 AB      [ 8] 5404 	jsr ___Intensity_a; BIOS call
                           5405 ;  0 "" 2
                           5406 ;  770 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5407 	; #ENR#[561]	positd(0, yofs);
                           5408 ;  0 "" 2
                           5409 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5410 	; #ENR#[50]	Moveto_d_7F(y,x);
                           5411 ;  0 "" 2
                           5412 ;--- end asm ---
   15AE E6 69         [ 5] 5413 	ldb	9,s	;  tmp69, blockYOfs.64
   15B0 50            [ 2] 5414 	negb	;  tmp69
   15B1 A6 69         [ 5] 5415 	lda	9,s	;mulqihi3	;  blockYOfs.64
   15B3 3D            [11] 5416 	mul
   15B4 E7 6E         [ 5] 5417 	stb	14,s	;movlsbqihi: R:d -> 14,s	;  a, tmp70
   15B6 6F 6D         [ 7] 5418 	clr	13,s	;  b
                           5419 ;----- asm -----
                           5420 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   15B8 A6 6E         [ 5] 5421 	lda 14,s	;  a
   15BA E6 6D         [ 5] 5422 	ldb 13,s	;  b
   15BC BD F2 FC      [ 8] 5423 	jsr ___Moveto_d_7F; BIOS call
                           5424 ;  0 "" 2
                           5425 ;  773 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5426 	; #ENR#[563]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           5427 ;  0 "" 2
                           5428 ;--- end asm ---
   15BF F6 CA 7F      [ 5] 5429 	ldb	_blockX	; , blockX
   15C2 E7 6A         [ 5] 5430 	stb	10,s	; , blockX.40
                           5431 ;----- asm -----
                           5432 ;  288 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5433 	; #ENR#[260]	y -= LEVEL_HEIGHT / 2;
                           5434 ;  0 "" 2
                           5435 ;  290 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5436 	; #ENR#[261]	return 3 * x + 13 * y + 8 * z;
                           5437 ;  0 "" 2
                           5438 ;  279 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5439 	; #ENR#[253]	x -= LEVEL_WIDTH / 2 - 4;
                           5440 ;  0 "" 2
                           5441 ;  281 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5442 	; #ENR#[254]	return 14 * x - 6 * z+0*y;
                           5443 ;  0 "" 2
                           5444 ;  51 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5445 	; #ENR#[50]	Moveto_d_7F(y,x);
                           5446 ;  0 "" 2
                           5447 ;--- end asm ---
   15C4 58            [ 2] 5448 	aslb	; 
   15C5 EB 6A         [ 5] 5449 	addb	10,s	; , blockX.40
   15C7 E7 E4         [ 4] 5450 	stb	,s	; ,
   15C9 F6 CA 80      [ 5] 5451 	ldb	_blockY	; , blockY
   15CC 58            [ 2] 5452 	aslb	; 
   15CD 58            [ 2] 5453 	aslb	; 
   15CE 58            [ 2] 5454 	aslb	; 
   15CF E7 63         [ 5] 5455 	stb	3,s	; ,
   15D1 E6 E4         [ 4] 5456 	ldb	,s	; ,
   15D3 EB 63         [ 5] 5457 	addb	3,s	; ,
   15D5 CB 98         [ 2] 5458 	addb	#-104	; ,
   15D7 E7 6D         [ 5] 5459 	stb	13,s	; , a
   15D9 E6 6A         [ 5] 5460 	ldb	10,s	; , blockX.40
   15DB CB FE         [ 2] 5461 	addb	#-2	; ,
   15DD 86 0E         [ 2] 5462 	lda	#14	;mulqihi3	; 
   15DF 3D            [11] 5463 	mul
   15E0 1F 02         [ 6] 5464 	tfr	d,y	; , tmp77
   15E2 F6 CA 80      [ 5] 5465 	ldb	_blockY	; , blockY
   15E5 86 FA         [ 2] 5466 	lda	#-6	;mulqihi3	; 
   15E7 3D            [11] 5467 	mul
   15E8 1F 01         [ 6] 5468 	tfr	d,x	; , tmp78
   15EA 1F 20         [ 6] 5469 	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp77,
   15EC E7 62         [ 5] 5470 	stb	2,s	; ,
   15EE 1F 10         [ 6] 5471 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp78, tmp80
   15F0 EB 62         [ 5] 5472 	addb	2,s	;  tmp80,
   15F2 E7 6E         [ 5] 5473 	stb	14,s	;  tmp80, b
                           5474 ;----- asm -----
                           5475 ;  3190 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   15F4 A6 6D         [ 5] 5476 	lda 13,s	;  a
   15F6 E6 6E         [ 5] 5477 	ldb 14,s	;  b
   15F8 BD F2 FC      [ 8] 5478 	jsr ___Moveto_d_7F; BIOS call
                           5479 ;  0 "" 2
                           5480 ;  776 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5481 	; #ENR#[565]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           5482 ;  0 "" 2
                           5483 ;--- end asm ---
   15FB F6 CA 85      [ 5] 5484 	ldb	_blockAnimationStep	; , blockAnimationStep
   15FE 1D            [ 2] 5485 	sex		;extendqihi2: R:b -> R:d	; ,
   15FF ED E4         [ 5] 5486 	std	,s	; ,
   1601 58            [ 2] 5487 	aslb	; 
   1602 49            [ 2] 5488 	rola	; 
   1603 FE CA 81      [ 6] 5489 	ldu	_blockAnimation	; , blockAnimation
   1606 30 CB         [ 8] 5490 	leax	d,u	;  tmp84, tmp83,
   1608 AE 84         [ 5] 5491 	ldx	,x	; ,
                           5492 ; Applied peep: 2 (no load after store)
                           5493 ;----- asm -----
                           5494 ;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   160A AF 6B         [ 6] 5495 	stx	11,s	; , x
                           5496 ; ORG>	stx	11,s	; , x
                           5497 ; ORG>;----- asm -----
                           5498 ; ORG>;  1517 "/home/frank/Downloads/Vide2.0_RC17/C/PeerC/vectrex/include/vec_rum_inl.h" 1
                           5499 ; ORG>	ldx 11,s	;  x
   160C BD F4 08      [ 8] 5500 	jsr ___Draw_VLp_7F; BIOS call
                           5501 ;  0 "" 2
                           5502 ;  935 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5503 	; #ENR#[666]		doBlockAnimation();
                           5504 ;  0 "" 2
                           5505 ;  834 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5506 	; #ENR#[603]	if (blockAnimating) {
                           5507 ;  0 "" 2
                           5508 ;--- end asm ---
   160F 7D CA 86      [ 7] 5509 	tst	_blockAnimating	;  blockAnimating
   1612 10 27 FF 7A   [ 6] 5510 	lbeq	L251	; 
                           5511 ;----- asm -----
                           5512 ;  836 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5513 	; #ENR#[604]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
                           5514 ;  0 "" 2
                           5515 ;--- end asm ---
   1616 7C CA 85      [ 7] 5516 	inc	_blockAnimationStep	;  blockAnimationStep
   1619 F6 CA 85      [ 5] 5517 	ldb	_blockAnimationStep	;  blockAnimationStep.48, blockAnimationStep
   161C C1 0C         [ 2] 5518 	cmpb	#12	;cmpqi:	;  blockAnimationStep.48,
   161E 10 26 FF 6E   [ 6] 5519 	lbne	L251	; 
                           5520 ;----- asm -----
                           5521 ;  838 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5522 	; #ENR#[605]			blockX = nextBlockX;
                           5523 ;  0 "" 2
                           5524 ;--- end asm ---
   1622 F6 CA 87      [ 5] 5525 	ldb	_nextBlockX	; , nextBlockX
   1625 F7 CA 7F      [ 5] 5526 	stb	_blockX	; , blockX
                           5527 ;----- asm -----
                           5528 ;  840 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5529 	; #ENR#[606]			blockY = nextBlockY;
                           5530 ;  0 "" 2
                           5531 ;--- end asm ---
   1628 F6 CA 88      [ 5] 5532 	ldb	_nextBlockY	; , nextBlockY
   162B F7 CA 80      [ 5] 5533 	stb	_blockY	; , blockY
                           5534 ;----- asm -----
                           5535 ;  842 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5536 	; #ENR#[607]			blockAnimationStep = 0;
                           5537 ;  0 "" 2
                           5538 ;--- end asm ---
   162E 7F CA 85      [ 7] 5539 	clr	_blockAnimationStep	;  blockAnimationStep
                           5540 ;----- asm -----
                           5541 ;  844 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5542 	; #ENR#[608]			blockAnimation = nextBlockAnimation;
                           5543 ;  0 "" 2
                           5544 ;--- end asm ---
   1631 BE CA 83      [ 6] 5545 	ldx	_nextBlockAnimation	; , nextBlockAnimation
   1634 BF CA 81      [ 6] 5546 	stx	_blockAnimation	; , blockAnimation
                           5547 ;----- asm -----
                           5548 ;  846 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5549 	; #ENR#[609]			blockAnimating = 0;
                           5550 ;  0 "" 2
                           5551 ;--- end asm ---
   1637 7F CA 86      [ 7] 5552 	clr	_blockAnimating	;  blockAnimating
                           5553 ;----- asm -----
                           5554 ;  938 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5555 	; #ENR#[668]	if (blockYOfs == 50) {
                           5556 ;  0 "" 2
                           5557 ;--- end asm ---
   163A F6 CA 8A      [ 5] 5558 	ldb	_blockYOfs	; , blockYOfs
   163D C1 32         [ 2] 5559 	cmpb	#50	;cmpqi:	; ,
   163F 10 26 FF 56   [ 6] 5560 	lbne	L252	; 
   1643                    5561 L257:
                           5562 ;----- asm -----
                           5563 ;  940 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5564 	; #ENR#[669]		startLevel();
                           5565 ;  0 "" 2
                           5566 ;--- end asm ---
   1643 BD 0F 9D      [ 8] 5567 	jsr	_startLevel	; 
   1646 7E 15 99      [ 4] 5568 	jmp	L252	; 
   1649                    5569 L255:
                           5570 ;----- asm -----
                           5571 ;  982 "/home/frank/Downloads/Vide2.0_RC17/projects/Bloxorz/source/bloxorz.enr.c" 1
                           5572 	; #ENR#[696]		picAvailable = 1;
                           5573 ;  0 "" 2
                           5574 ;--- end asm ---
   1649 C6 01         [ 2] 5575 	ldb	#1	; ,
   164B F7 C8 9D      [ 5] 5576 	stb	_picAvailable	; , picAvailable
   164E 7E 14 6D      [ 4] 5577 	jmp	L242	; 
                           5578 	.globl _startMusic
   1651                    5579 _startMusic:
   1651 FE                 5580 	.byte	-2
   1652 E8                 5581 	.byte	-24
   1653 FE                 5582 	.byte	-2
   1654 B6                 5583 	.byte	-74
   1655 01                 5584 	.byte	1
   1656 01                 5585 	.byte	1
   1657 02                 5586 	.byte	2
   1658 01                 5587 	.byte	1
   1659 03                 5588 	.byte	3
   165A 01                 5589 	.byte	1
   165B 04                 5590 	.byte	4
   165C 01                 5591 	.byte	1
   165D 05                 5592 	.byte	5
   165E 01                 5593 	.byte	1
   165F 06                 5594 	.byte	6
   1660 01                 5595 	.byte	1
   1661 07                 5596 	.byte	7
   1662 01                 5597 	.byte	1
   1663 08                 5598 	.byte	8
   1664 01                 5599 	.byte	1
   1665 09                 5600 	.byte	9
   1666 01                 5601 	.byte	1
   1667 0A                 5602 	.byte	10
   1668 01                 5603 	.byte	1
   1669 0B                 5604 	.byte	11
   166A 01                 5605 	.byte	1
   166B 0C                 5606 	.byte	12
   166C 01                 5607 	.byte	1
   166D 0D                 5608 	.byte	13
   166E 01                 5609 	.byte	1
   166F 00                 5610 	.byte	0
   1670 80                 5611 	.byte	-128
                           5612 	.globl _levelEndMusic
   1671                    5613 _levelEndMusic:
   1671 FE                 5614 	.byte	-2
   1672 E8                 5615 	.byte	-24
   1673 FE                 5616 	.byte	-2
   1674 B6                 5617 	.byte	-74
   1675 0D                 5618 	.byte	13
   1676 01                 5619 	.byte	1
   1677 0E                 5620 	.byte	14
   1678 01                 5621 	.byte	1
   1679 0F                 5622 	.byte	15
   167A 01                 5623 	.byte	1
   167B 10                 5624 	.byte	16
   167C 01                 5625 	.byte	1
   167D 11                 5626 	.byte	17
   167E 01                 5627 	.byte	1
   167F 12                 5628 	.byte	18
   1680 01                 5629 	.byte	1
   1681 13                 5630 	.byte	19
   1682 01                 5631 	.byte	1
   1683 14                 5632 	.byte	20
   1684 01                 5633 	.byte	1
   1685 15                 5634 	.byte	21
   1686 01                 5635 	.byte	1
   1687 16                 5636 	.byte	22
   1688 01                 5637 	.byte	1
   1689 00                 5638 	.byte	0
   168A 80                 5639 	.byte	-128
                           5640 	.globl _fallingMusic
   168B                    5641 _fallingMusic:
   168B FE                 5642 	.byte	-2
   168C E8                 5643 	.byte	-24
   168D FE                 5644 	.byte	-2
   168E B6                 5645 	.byte	-74
   168F 0D                 5646 	.byte	13
   1690 02                 5647 	.byte	2
   1691 0C                 5648 	.byte	12
   1692 02                 5649 	.byte	2
   1693 0B                 5650 	.byte	11
   1694 02                 5651 	.byte	2
   1695 0A                 5652 	.byte	10
   1696 02                 5653 	.byte	2
   1697 09                 5654 	.byte	9
   1698 02                 5655 	.byte	2
   1699 08                 5656 	.byte	8
   169A 02                 5657 	.byte	2
   169B 07                 5658 	.byte	7
   169C 02                 5659 	.byte	2
   169D 06                 5660 	.byte	6
   169E 02                 5661 	.byte	2
   169F 05                 5662 	.byte	5
   16A0 02                 5663 	.byte	2
   16A1 04                 5664 	.byte	4
   16A2 02                 5665 	.byte	2
   16A3 03                 5666 	.byte	3
   16A4 02                 5667 	.byte	2
   16A5 02                 5668 	.byte	2
   16A6 02                 5669 	.byte	2
   16A7 01                 5670 	.byte	1
   16A8 02                 5671 	.byte	2
   16A9 00                 5672 	.byte	0
   16AA 80                 5673 	.byte	-128
                           5674 	.globl _movingMusic
   16AB                    5675 _movingMusic:
   16AB FD                 5676 	.byte	-3
   16AC C3                 5677 	.byte	-61
   16AD FE                 5678 	.byte	-2
   16AE B6                 5679 	.byte	-74
   16AF 01                 5680 	.byte	1
   16B0 05                 5681 	.byte	5
   16B1 00                 5682 	.byte	0
   16B2 80                 5683 	.byte	-128
                           5684 	.globl _currentMusic
                           5685 	.area .data
   C880                    5686 _currentMusic:
   C880 16 51              5687 	.word	_startMusic
                           5688 	.globl _level0
                           5689 	.area .text
   16B3                    5690 LC0:
   16B3 20 20 20 20 20 20  5691 	.ascii "                                          ...   "
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        2E 2E 2E 20 20 20
   16E3 20 20 20 20 20 2E  5692 	.ascii "     ..a.        ....        ...         ...    "
        2E 61 2E 20 20 20
        20 20 20 20 20 2E
        2E 2E 2E 20 20 20
        20 20 20 20 20 2E
        2E 2E 20 20 20 20
        20 20 20 20 20 2E
        2E 2E 20 20 20 20
   1713 20 20 20 20 2E 2E  5693 	.ascii "    ....       ....        .o..        ....     "
        2E 2E 20 20 20 20
        20 20 20 2E 2E 2E
        2E 20 20 20 20 20
        20 20 20 2E 6F 2E
        2E 20 20 20 20 20
        20 20 20 2E 2E 2E
        2E 20 20 20 20 20
   1743 20 20 20 20 2E 2E  5694 	.ascii "    ..                                          "
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
   1773 20 20 20 20 20 20  5695 	.ascii "            \0"
        20 20 20 20 20 20
        00
                           5696 	.area .data
   C882                    5697 _level0:
   C882 16 B3              5698 	.word	LC0
                           5699 	.globl _level1
                           5700 	.area .text
   1780                    5701 LC1:
   1780 20 20 20 20 20 20  5702 	.ascii "                ....        .a..        ....    "
        20 20 20 20 20 20
        20 20 20 20 2E 2E
        2E 2E 20 20 20 20
        20 20 20 20 2E 61
        2E 2E 20 20 20 20
        20 20 20 20 2E 2E
        2E 2E 20 20 20 20
   17B0 20 20 20 20 2E 2E  5703 	.ascii "    ....          .           .           ...   "
        2E 2E 20 20 20 20
        20 20 20 20 20 20
        2E 20 20 20 20 20
        20 20 20 20 20 20
        2E 20 20 20 20 20
        20 20 20 20 20 20
        2E 2E 2E 20 20 20
   17E0 20 20 20 20 20 20  5704 	.ascii "      ...         ...           .           .   "
        2E 2E 2E 20 20 20
        20 20 20 20 20 20
        2E 2E 2E 20 20 20
        20 20 20 20 20 20
        20 20 2E 20 20 20
        20 20 20 20 20 20
        20 20 2E 20 20 20
   1810 20 20 20 20 2E 2E  5705 	.ascii "    .....      ......      ..o.        ....     "
        2E 2E 2E 20 20 20
        20 20 20 2E 2E 2E
        2E 2E 2E 20 20 20
        20 20 20 2E 2E 6F
        2E 20 20 20 20 20
        20 20 20 2E 2E 2E
        2E 20 20 20 20 20
   1840 20 20 20 20 20 20  5706 	.ascii "            \0"
        20 20 20 20 20 20
        00
                           5707 	.area .data
   C884                    5708 _level1:
   C884 17 80              5709 	.word	LC1
                           5710 	.globl _level2
                           5711 	.area .text
   184D                    5712 LC2:
   184D 20 20 20 20 20 20  5713 	.ascii "                a           .           .       "
        20 20 20 20 20 20
        20 20 20 20 61 20
        20 20 20 20 20 20
        20 20 20 20 2E 20
        20 20 20 20 20 20
        20 20 20 20 2E 20
        20 20 20 20 20 20
   187D 20 20 20 20 2E 20  5714 	.ascii "    .           ...      ......      .   .....  "
        20 20 20 20 20 20
        20 20 20 20 2E 2E
        2E 20 20 20 20 20
        20 2E 2E 2E 2E 2E
        2E 20 20 20 20 20
        20 2E 20 20 20 2E
        2E 2E 2E 2E 20 20
   18AD 20 2E 20 20 20 20  5715 	.ascii " .      ...  ...    ...  ...   ....  ...   ...  "
        20 20 2E 2E 2E 20
        20 2E 2E 2E 20 20
        20 20 2E 2E 2E 20
        20 2E 2E 2E 20 20
        20 2E 2E 2E 2E 20
        20 2E 2E 2E 20 20
        20 2E 2E 2E 20 20
   18DD 20 20 20 2E 2E 2E  5716 	.ascii "   ...         ....         .o.         ...     "
        20 20 20 20 20 20
        20 20 20 2E 2E 2E
        2E 20 20 20 20 20
        20 20 20 20 2E 6F
        2E 20 20 20 20 20
        20 20 20 20 2E 2E
        2E 20 20 20 20 20
   190D 20 20 20 20 20 20  5717 	.ascii "            \0"
        20 20 20 20 20 20
        00
                           5718 	.area .data
   C886                    5719 _level2:
   C886 18 4D              5720 	.word	LC2
                           5721 	.globl _height2FallingLeft0
                           5722 	.area .text
   191A                    5723 _height2FallingLeft0:
   191A FF                 5724 	.byte	-1
   191B 03                 5725 	.byte	3
   191C 0E                 5726 	.byte	14
   191D FF                 5727 	.byte	-1
   191E 08                 5728 	.byte	8
   191F FA                 5729 	.byte	-6
   1920 FF                 5730 	.byte	-1
   1921 FD                 5731 	.byte	-3
   1922 F3                 5732 	.byte	-13
   1923 FF                 5733 	.byte	-1
   1924 F8                 5734 	.byte	-8
   1925 05                 5735 	.byte	5
   1926 FF                 5736 	.byte	-1
   1927 1A                 5737 	.byte	26
   1928 00                 5738 	.byte	0
   1929 00                 5739 	.byte	0
   192A E9                 5740 	.byte	-23
   192B 0E                 5741 	.byte	14
   192C FF                 5742 	.byte	-1
   192D 1A                 5743 	.byte	26
   192E 00                 5744 	.byte	0
   192F 00                 5745 	.byte	0
   1930 EE                 5746 	.byte	-18
   1931 FA                 5747 	.byte	-6
   1932 FF                 5748 	.byte	-1
   1933 1A                 5749 	.byte	26
   1934 00                 5750 	.byte	0
   1935 00                 5751 	.byte	0
   1936 E3                 5752 	.byte	-29
   1937 F3                 5753 	.byte	-13
   1938 FF                 5754 	.byte	-1
   1939 1A                 5755 	.byte	26
   193A 00                 5756 	.byte	0
   193B 00                 5757 	.byte	0
   193C F8                 5758 	.byte	-8
   193D 05                 5759 	.byte	5
   193E FF                 5760 	.byte	-1
   193F 03                 5761 	.byte	3
   1940 0E                 5762 	.byte	14
   1941 FF                 5763 	.byte	-1
   1942 08                 5764 	.byte	8
   1943 FA                 5765 	.byte	-6
   1944 FF                 5766 	.byte	-1
   1945 FD                 5767 	.byte	-3
   1946 F3                 5768 	.byte	-13
   1947 FF                 5769 	.byte	-1
   1948 F8                 5770 	.byte	-8
   1949 05                 5771 	.byte	5
   194A 01                 5772 	.byte	1
                           5773 	.globl _height2RisingRight0
   194B                    5774 _height2RisingRight0:
   194B 00                 5775 	.byte	0
   194C 06                 5776 	.byte	6
   194D 1C                 5777 	.byte	28
   194E FF                 5778 	.byte	-1
   194F 0D                 5779 	.byte	13
   1950 02                 5780 	.byte	2
   1951 FF                 5781 	.byte	-1
   1952 08                 5782 	.byte	8
   1953 FA                 5783 	.byte	-6
   1954 FF                 5784 	.byte	-1
   1955 F3                 5785 	.byte	-13
   1956 FE                 5786 	.byte	-2
   1957 FF                 5787 	.byte	-1
   1958 F8                 5788 	.byte	-8
   1959 06                 5789 	.byte	6
   195A FF                 5790 	.byte	-1
   195B FD                 5791 	.byte	-3
   195C E4                 5792 	.byte	-28
   195D 00                 5793 	.byte	0
   195E 10                 5794 	.byte	16
   195F 1E                 5795 	.byte	30
   1960 FF                 5796 	.byte	-1
   1961 FE                 5797 	.byte	-2
   1962 E4                 5798 	.byte	-28
   1963 00                 5799 	.byte	0
   1964 0A                 5800 	.byte	10
   1965 16                 5801 	.byte	22
   1966 FF                 5802 	.byte	-1
   1967 FE                 5803 	.byte	-2
   1968 E5                 5804 	.byte	-27
   1969 00                 5805 	.byte	0
   196A F5                 5806 	.byte	-11
   196B 19                 5807 	.byte	25
   196C FF                 5808 	.byte	-1
   196D FD                 5809 	.byte	-3
   196E E5                 5810 	.byte	-27
   196F 00                 5811 	.byte	0
   1970 F8                 5812 	.byte	-8
   1971 05                 5813 	.byte	5
   1972 FF                 5814 	.byte	-1
   1973 0E                 5815 	.byte	14
   1974 02                 5816 	.byte	2
   1975 FF                 5817 	.byte	-1
   1976 08                 5818 	.byte	8
   1977 FB                 5819 	.byte	-5
   1978 FF                 5820 	.byte	-1
   1979 F2                 5821 	.byte	-14
   197A FE                 5822 	.byte	-2
   197B FF                 5823 	.byte	-1
   197C F8                 5824 	.byte	-8
   197D 05                 5825 	.byte	5
   197E 01                 5826 	.byte	1
                           5827 	.globl _height2FallingRight0
   197F                    5828 _height2FallingRight0:
   197F FF                 5829 	.byte	-1
   1980 03                 5830 	.byte	3
   1981 0E                 5831 	.byte	14
   1982 FF                 5832 	.byte	-1
   1983 08                 5833 	.byte	8
   1984 FA                 5834 	.byte	-6
   1985 FF                 5835 	.byte	-1
   1986 FD                 5836 	.byte	-3
   1987 F3                 5837 	.byte	-13
   1988 FF                 5838 	.byte	-1
   1989 F8                 5839 	.byte	-8
   198A 05                 5840 	.byte	5
   198B FF                 5841 	.byte	-1
   198C 1A                 5842 	.byte	26
   198D 00                 5843 	.byte	0
   198E 00                 5844 	.byte	0
   198F E9                 5845 	.byte	-23
   1990 0E                 5846 	.byte	14
   1991 FF                 5847 	.byte	-1
   1992 1A                 5848 	.byte	26
   1993 00                 5849 	.byte	0
   1994 00                 5850 	.byte	0
   1995 EE                 5851 	.byte	-18
   1996 FA                 5852 	.byte	-6
   1997 FF                 5853 	.byte	-1
   1998 1A                 5854 	.byte	26
   1999 00                 5855 	.byte	0
   199A 00                 5856 	.byte	0
   199B E3                 5857 	.byte	-29
   199C F3                 5858 	.byte	-13
   199D FF                 5859 	.byte	-1
   199E 1A                 5860 	.byte	26
   199F 00                 5861 	.byte	0
   19A0 00                 5862 	.byte	0
   19A1 F8                 5863 	.byte	-8
   19A2 05                 5864 	.byte	5
   19A3 FF                 5865 	.byte	-1
   19A4 03                 5866 	.byte	3
   19A5 0E                 5867 	.byte	14
   19A6 FF                 5868 	.byte	-1
   19A7 08                 5869 	.byte	8
   19A8 FA                 5870 	.byte	-6
   19A9 FF                 5871 	.byte	-1
   19AA FD                 5872 	.byte	-3
   19AB F3                 5873 	.byte	-13
   19AC FF                 5874 	.byte	-1
   19AD F8                 5875 	.byte	-8
   19AE 05                 5876 	.byte	5
   19AF 01                 5877 	.byte	1
                           5878 	.globl _height2RisingLeft0
   19B0                    5879 _height2RisingLeft0:
   19B0 00                 5880 	.byte	0
   19B1 0C                 5881 	.byte	12
   19B2 FF                 5882 	.byte	-1
   19B3 FF                 5883 	.byte	-1
   19B4 F4                 5884 	.byte	-12
   19B5 01                 5885 	.byte	1
   19B6 FF                 5886 	.byte	-1
   19B7 08                 5887 	.byte	8
   19B8 FB                 5888 	.byte	-5
   19B9 FF                 5889 	.byte	-1
   19BA 0C                 5890 	.byte	12
   19BB FE                 5891 	.byte	-2
   19BC FF                 5892 	.byte	-1
   19BD F8                 5893 	.byte	-8
   19BE 06                 5894 	.byte	6
   19BF FF                 5895 	.byte	-1
   19C0 0A                 5896 	.byte	10
   19C1 1B                 5897 	.byte	27
   19C2 00                 5898 	.byte	0
   19C3 EA                 5899 	.byte	-22
   19C4 E6                 5900 	.byte	-26
   19C5 FF                 5901 	.byte	-1
   19C6 09                 5902 	.byte	9
   19C7 1C                 5903 	.byte	28
   19C8 00                 5904 	.byte	0
   19C9 FF                 5905 	.byte	-1
   19CA DF                 5906 	.byte	-33
   19CB FF                 5907 	.byte	-1
   19CC 09                 5908 	.byte	9
   19CD 1B                 5909 	.byte	27
   19CE 00                 5910 	.byte	0
   19CF 03                 5911 	.byte	3
   19D0 E3                 5912 	.byte	-29
   19D1 FF                 5913 	.byte	-1
   19D2 0A                 5914 	.byte	10
   19D3 1B                 5915 	.byte	27
   19D4 00                 5916 	.byte	0
   19D5 F8                 5917 	.byte	-8
   19D6 06                 5918 	.byte	6
   19D7 FF                 5919 	.byte	-1
   19D8 F3                 5920 	.byte	-13
   19D9 02                 5921 	.byte	2
   19DA FF                 5922 	.byte	-1
   19DB 08                 5923 	.byte	8
   19DC FA                 5924 	.byte	-6
   19DD FF                 5925 	.byte	-1
   19DE 0D                 5926 	.byte	13
   19DF FE                 5927 	.byte	-2
   19E0 FF                 5928 	.byte	-1
   19E1 F8                 5929 	.byte	-8
   19E2 06                 5930 	.byte	6
   19E3 01                 5931 	.byte	1
                           5932 	.globl _height2FallingBack0
   19E4                    5933 _height2FallingBack0:
   19E4 FF                 5934 	.byte	-1
   19E5 03                 5935 	.byte	3
   19E6 0E                 5936 	.byte	14
   19E7 FF                 5937 	.byte	-1
   19E8 08                 5938 	.byte	8
   19E9 FA                 5939 	.byte	-6
   19EA FF                 5940 	.byte	-1
   19EB FD                 5941 	.byte	-3
   19EC F3                 5942 	.byte	-13
   19ED FF                 5943 	.byte	-1
   19EE F8                 5944 	.byte	-8
   19EF 05                 5945 	.byte	5
   19F0 FF                 5946 	.byte	-1
   19F1 1A                 5947 	.byte	26
   19F2 00                 5948 	.byte	0
   19F3 00                 5949 	.byte	0
   19F4 E9                 5950 	.byte	-23
   19F5 0E                 5951 	.byte	14
   19F6 FF                 5952 	.byte	-1
   19F7 1A                 5953 	.byte	26
   19F8 00                 5954 	.byte	0
   19F9 00                 5955 	.byte	0
   19FA EE                 5956 	.byte	-18
   19FB FA                 5957 	.byte	-6
   19FC FF                 5958 	.byte	-1
   19FD 1A                 5959 	.byte	26
   19FE 00                 5960 	.byte	0
   19FF 00                 5961 	.byte	0
   1A00 E3                 5962 	.byte	-29
   1A01 F3                 5963 	.byte	-13
   1A02 FF                 5964 	.byte	-1
   1A03 1A                 5965 	.byte	26
   1A04 00                 5966 	.byte	0
   1A05 00                 5967 	.byte	0
   1A06 F8                 5968 	.byte	-8
   1A07 05                 5969 	.byte	5
   1A08 FF                 5970 	.byte	-1
   1A09 03                 5971 	.byte	3
   1A0A 0E                 5972 	.byte	14
   1A0B FF                 5973 	.byte	-1
   1A0C 08                 5974 	.byte	8
   1A0D FA                 5975 	.byte	-6
   1A0E FF                 5976 	.byte	-1
   1A0F FD                 5977 	.byte	-3
   1A10 F3                 5978 	.byte	-13
   1A11 FF                 5979 	.byte	-1
   1A12 F8                 5980 	.byte	-8
   1A13 05                 5981 	.byte	5
   1A14 01                 5982 	.byte	1
                           5983 	.globl _height2RisingFront0
   1A15                    5984 _height2RisingFront0:
   1A15 00                 5985 	.byte	0
   1A16 0C                 5986 	.byte	12
   1A17 01                 5987 	.byte	1
   1A18 FF                 5988 	.byte	-1
   1A19 03                 5989 	.byte	3
   1A1A 0E                 5990 	.byte	14
   1A1B FF                 5991 	.byte	-1
   1A1C F4                 5992 	.byte	-12
   1A1D FF                 5993 	.byte	-1
   1A1E FF                 5994 	.byte	-1
   1A1F FD                 5995 	.byte	-3
   1A20 F2                 5996 	.byte	-14
   1A21 FF                 5997 	.byte	-1
   1A22 0C                 5998 	.byte	12
   1A23 01                 5999 	.byte	1
   1A24 FF                 6000 	.byte	-1
   1A25 13                 6001 	.byte	19
   1A26 F5                 6002 	.byte	-11
   1A27 00                 6003 	.byte	0
   1A28 F0                 6004 	.byte	-16
   1A29 19                 6005 	.byte	25
   1A2A FF                 6006 	.byte	-1
   1A2B 13                 6007 	.byte	19
   1A2C F4                 6008 	.byte	-12
   1A2D 00                 6009 	.byte	0
   1A2E E1                 6010 	.byte	-31
   1A2F 0B                 6011 	.byte	11
   1A30 FF                 6012 	.byte	-1
   1A31 13                 6013 	.byte	19
   1A32 F4                 6014 	.byte	-12
   1A33 00                 6015 	.byte	0
   1A34 EA                 6016 	.byte	-22
   1A35 FE                 6017 	.byte	-2
   1A36 FF                 6018 	.byte	-1
   1A37 13                 6019 	.byte	19
   1A38 F5                 6020 	.byte	-11
   1A39 00                 6021 	.byte	0
   1A3A 0C                 6022 	.byte	12
   1A3B 01                 6023 	.byte	1
   1A3C FF                 6024 	.byte	-1
   1A3D 03                 6025 	.byte	3
   1A3E 0D                 6026 	.byte	13
   1A3F FF                 6027 	.byte	-1
   1A40 F4                 6028 	.byte	-12
   1A41 FF                 6029 	.byte	-1
   1A42 FF                 6030 	.byte	-1
   1A43 FD                 6031 	.byte	-3
   1A44 F3                 6032 	.byte	-13
   1A45 FF                 6033 	.byte	-1
   1A46 0C                 6034 	.byte	12
   1A47 01                 6035 	.byte	1
   1A48 01                 6036 	.byte	1
                           6037 	.globl _height2FallingFront0
   1A49                    6038 _height2FallingFront0:
   1A49 FF                 6039 	.byte	-1
   1A4A 03                 6040 	.byte	3
   1A4B 0E                 6041 	.byte	14
   1A4C FF                 6042 	.byte	-1
   1A4D 08                 6043 	.byte	8
   1A4E FA                 6044 	.byte	-6
   1A4F FF                 6045 	.byte	-1
   1A50 FD                 6046 	.byte	-3
   1A51 F3                 6047 	.byte	-13
   1A52 FF                 6048 	.byte	-1
   1A53 F8                 6049 	.byte	-8
   1A54 05                 6050 	.byte	5
   1A55 FF                 6051 	.byte	-1
   1A56 1A                 6052 	.byte	26
   1A57 00                 6053 	.byte	0
   1A58 00                 6054 	.byte	0
   1A59 E9                 6055 	.byte	-23
   1A5A 0E                 6056 	.byte	14
   1A5B FF                 6057 	.byte	-1
   1A5C 1A                 6058 	.byte	26
   1A5D 00                 6059 	.byte	0
   1A5E 00                 6060 	.byte	0
   1A5F EE                 6061 	.byte	-18
   1A60 FA                 6062 	.byte	-6
   1A61 FF                 6063 	.byte	-1
   1A62 1A                 6064 	.byte	26
   1A63 00                 6065 	.byte	0
   1A64 00                 6066 	.byte	0
   1A65 E3                 6067 	.byte	-29
   1A66 F3                 6068 	.byte	-13
   1A67 FF                 6069 	.byte	-1
   1A68 1A                 6070 	.byte	26
   1A69 00                 6071 	.byte	0
   1A6A 00                 6072 	.byte	0
   1A6B F8                 6073 	.byte	-8
   1A6C 05                 6074 	.byte	5
   1A6D FF                 6075 	.byte	-1
   1A6E 03                 6076 	.byte	3
   1A6F 0E                 6077 	.byte	14
   1A70 FF                 6078 	.byte	-1
   1A71 08                 6079 	.byte	8
   1A72 FA                 6080 	.byte	-6
   1A73 FF                 6081 	.byte	-1
   1A74 FD                 6082 	.byte	-3
   1A75 F3                 6083 	.byte	-13
   1A76 FF                 6084 	.byte	-1
   1A77 F8                 6085 	.byte	-8
   1A78 05                 6086 	.byte	5
   1A79 01                 6087 	.byte	1
                           6088 	.globl _height2RisingBack0
   1A7A                    6089 _height2RisingBack0:
   1A7A 00                 6090 	.byte	0
   1A7B 10                 6091 	.byte	16
   1A7C F5                 6092 	.byte	-11
   1A7D FF                 6093 	.byte	-1
   1A7E 03                 6094 	.byte	3
   1A7F 0D                 6095 	.byte	13
   1A80 FF                 6096 	.byte	-1
   1A81 0E                 6097 	.byte	14
   1A82 FF                 6098 	.byte	-1
   1A83 FF                 6099 	.byte	-1
   1A84 FD                 6100 	.byte	-3
   1A85 F3                 6101 	.byte	-13
   1A86 FF                 6102 	.byte	-1
   1A87 F2                 6103 	.byte	-14
   1A88 01                 6104 	.byte	1
   1A89 FF                 6105 	.byte	-1
   1A8A F4                 6106 	.byte	-12
   1A8B 0B                 6107 	.byte	11
   1A8C 00                 6108 	.byte	0
   1A8D 0F                 6109 	.byte	15
   1A8E 02                 6110 	.byte	2
   1A8F FF                 6111 	.byte	-1
   1A90 F4                 6112 	.byte	-12
   1A91 0C                 6113 	.byte	12
   1A92 00                 6114 	.byte	0
   1A93 1A                 6115 	.byte	26
   1A94 F3                 6116 	.byte	-13
   1A95 FF                 6117 	.byte	-1
   1A96 F3                 6118 	.byte	-13
   1A97 0C                 6119 	.byte	12
   1A98 00                 6120 	.byte	0
   1A99 0A                 6121 	.byte	10
   1A9A E7                 6122 	.byte	-25
   1A9B FF                 6123 	.byte	-1
   1A9C F3                 6124 	.byte	-13
   1A9D 0C                 6125 	.byte	12
   1A9E 00                 6126 	.byte	0
   1A9F F3                 6127 	.byte	-13
   1AA0 00                 6128 	.byte	0
   1AA1 FF                 6129 	.byte	-1
   1AA2 03                 6130 	.byte	3
   1AA3 0E                 6131 	.byte	14
   1AA4 FF                 6132 	.byte	-1
   1AA5 0D                 6133 	.byte	13
   1AA6 FF                 6134 	.byte	-1
   1AA7 FF                 6135 	.byte	-1
   1AA8 FD                 6136 	.byte	-3
   1AA9 F3                 6137 	.byte	-13
   1AAA FF                 6138 	.byte	-1
   1AAB F3                 6139 	.byte	-13
   1AAC 00                 6140 	.byte	0
   1AAD 01                 6141 	.byte	1
                           6142 	.globl _depth2RollingLeft0
   1AAE                    6143 _depth2RollingLeft0:
   1AAE FF                 6144 	.byte	-1
   1AAF 03                 6145 	.byte	3
   1AB0 0E                 6146 	.byte	14
   1AB1 FF                 6147 	.byte	-1
   1AB2 10                 6148 	.byte	16
   1AB3 F4                 6149 	.byte	-12
   1AB4 FF                 6150 	.byte	-1
   1AB5 FD                 6151 	.byte	-3
   1AB6 F3                 6152 	.byte	-13
   1AB7 FF                 6153 	.byte	-1
   1AB8 F0                 6154 	.byte	-16
   1AB9 0B                 6155 	.byte	11
   1ABA FF                 6156 	.byte	-1
   1ABB 0D                 6157 	.byte	13
   1ABC 00                 6158 	.byte	0
   1ABD 00                 6159 	.byte	0
   1ABE F6                 6160 	.byte	-10
   1ABF 0E                 6161 	.byte	14
   1AC0 FF                 6162 	.byte	-1
   1AC1 0D                 6163 	.byte	13
   1AC2 00                 6164 	.byte	0
   1AC3 00                 6165 	.byte	0
   1AC4 03                 6166 	.byte	3
   1AC5 F4                 6167 	.byte	-12
   1AC6 FF                 6168 	.byte	-1
   1AC7 0D                 6169 	.byte	13
   1AC8 00                 6170 	.byte	0
   1AC9 00                 6171 	.byte	0
   1ACA F0                 6172 	.byte	-16
   1ACB F3                 6173 	.byte	-13
   1ACC FF                 6174 	.byte	-1
   1ACD 0D                 6175 	.byte	13
   1ACE 00                 6176 	.byte	0
   1ACF 00                 6177 	.byte	0
   1AD0 F0                 6178 	.byte	-16
   1AD1 0B                 6179 	.byte	11
   1AD2 FF                 6180 	.byte	-1
   1AD3 03                 6181 	.byte	3
   1AD4 0E                 6182 	.byte	14
   1AD5 FF                 6183 	.byte	-1
   1AD6 10                 6184 	.byte	16
   1AD7 F4                 6185 	.byte	-12
   1AD8 FF                 6186 	.byte	-1
   1AD9 FD                 6187 	.byte	-3
   1ADA F3                 6188 	.byte	-13
   1ADB FF                 6189 	.byte	-1
   1ADC F0                 6190 	.byte	-16
   1ADD 0B                 6191 	.byte	11
   1ADE 01                 6192 	.byte	1
                           6193 	.globl _depth2RollingRight0
   1ADF                    6194 _depth2RollingRight0:
   1ADF FF                 6195 	.byte	-1
   1AE0 03                 6196 	.byte	3
   1AE1 0E                 6197 	.byte	14
   1AE2 FF                 6198 	.byte	-1
   1AE3 10                 6199 	.byte	16
   1AE4 F4                 6200 	.byte	-12
   1AE5 FF                 6201 	.byte	-1
   1AE6 FD                 6202 	.byte	-3
   1AE7 F3                 6203 	.byte	-13
   1AE8 FF                 6204 	.byte	-1
   1AE9 F0                 6205 	.byte	-16
   1AEA 0B                 6206 	.byte	11
   1AEB FF                 6207 	.byte	-1
   1AEC 0D                 6208 	.byte	13
   1AED 00                 6209 	.byte	0
   1AEE 00                 6210 	.byte	0
   1AEF F6                 6211 	.byte	-10
   1AF0 0E                 6212 	.byte	14
   1AF1 FF                 6213 	.byte	-1
   1AF2 0D                 6214 	.byte	13
   1AF3 00                 6215 	.byte	0
   1AF4 00                 6216 	.byte	0
   1AF5 03                 6217 	.byte	3
   1AF6 F4                 6218 	.byte	-12
   1AF7 FF                 6219 	.byte	-1
   1AF8 0D                 6220 	.byte	13
   1AF9 00                 6221 	.byte	0
   1AFA 00                 6222 	.byte	0
   1AFB F0                 6223 	.byte	-16
   1AFC F3                 6224 	.byte	-13
   1AFD FF                 6225 	.byte	-1
   1AFE 0D                 6226 	.byte	13
   1AFF 00                 6227 	.byte	0
   1B00 00                 6228 	.byte	0
   1B01 F0                 6229 	.byte	-16
   1B02 0B                 6230 	.byte	11
   1B03 FF                 6231 	.byte	-1
   1B04 03                 6232 	.byte	3
   1B05 0E                 6233 	.byte	14
   1B06 FF                 6234 	.byte	-1
   1B07 10                 6235 	.byte	16
   1B08 F4                 6236 	.byte	-12
   1B09 FF                 6237 	.byte	-1
   1B0A FD                 6238 	.byte	-3
   1B0B F3                 6239 	.byte	-13
   1B0C FF                 6240 	.byte	-1
   1B0D F0                 6241 	.byte	-16
   1B0E 0B                 6242 	.byte	11
   1B0F 01                 6243 	.byte	1
                           6244 	.globl _width2RollingFront0
   1B10                    6245 _width2RollingFront0:
   1B10 FF                 6246 	.byte	-1
   1B11 06                 6247 	.byte	6
   1B12 1C                 6248 	.byte	28
   1B13 FF                 6249 	.byte	-1
   1B14 08                 6250 	.byte	8
   1B15 FA                 6251 	.byte	-6
   1B16 FF                 6252 	.byte	-1
   1B17 FA                 6253 	.byte	-6
   1B18 E5                 6254 	.byte	-27
   1B19 FF                 6255 	.byte	-1
   1B1A F8                 6256 	.byte	-8
   1B1B 05                 6257 	.byte	5
   1B1C FF                 6258 	.byte	-1
   1B1D 0D                 6259 	.byte	13
   1B1E 00                 6260 	.byte	0
   1B1F 00                 6261 	.byte	0
   1B20 F9                 6262 	.byte	-7
   1B21 1C                 6263 	.byte	28
   1B22 FF                 6264 	.byte	-1
   1B23 0D                 6265 	.byte	13
   1B24 00                 6266 	.byte	0
   1B25 00                 6267 	.byte	0
   1B26 FB                 6268 	.byte	-5
   1B27 FA                 6269 	.byte	-6
   1B28 FF                 6270 	.byte	-1
   1B29 0D                 6271 	.byte	13
   1B2A 00                 6272 	.byte	0
   1B2B 00                 6273 	.byte	0
   1B2C ED                 6274 	.byte	-19
   1B2D E5                 6275 	.byte	-27
   1B2E FF                 6276 	.byte	-1
   1B2F 0D                 6277 	.byte	13
   1B30 00                 6278 	.byte	0
   1B31 00                 6279 	.byte	0
   1B32 F8                 6280 	.byte	-8
   1B33 05                 6281 	.byte	5
   1B34 FF                 6282 	.byte	-1
   1B35 06                 6283 	.byte	6
   1B36 1C                 6284 	.byte	28
   1B37 FF                 6285 	.byte	-1
   1B38 08                 6286 	.byte	8
   1B39 FA                 6287 	.byte	-6
   1B3A FF                 6288 	.byte	-1
   1B3B FA                 6289 	.byte	-6
   1B3C E5                 6290 	.byte	-27
   1B3D FF                 6291 	.byte	-1
   1B3E F8                 6292 	.byte	-8
   1B3F 05                 6293 	.byte	5
   1B40 01                 6294 	.byte	1
                           6295 	.globl _width2RollingBack0
   1B41                    6296 _width2RollingBack0:
   1B41 FF                 6297 	.byte	-1
   1B42 06                 6298 	.byte	6
   1B43 1C                 6299 	.byte	28
   1B44 FF                 6300 	.byte	-1
   1B45 08                 6301 	.byte	8
   1B46 FA                 6302 	.byte	-6
   1B47 FF                 6303 	.byte	-1
   1B48 FA                 6304 	.byte	-6
   1B49 E5                 6305 	.byte	-27
   1B4A FF                 6306 	.byte	-1
   1B4B F8                 6307 	.byte	-8
   1B4C 05                 6308 	.byte	5
   1B4D FF                 6309 	.byte	-1
   1B4E 0D                 6310 	.byte	13
   1B4F 00                 6311 	.byte	0
   1B50 00                 6312 	.byte	0
   1B51 F9                 6313 	.byte	-7
   1B52 1C                 6314 	.byte	28
   1B53 FF                 6315 	.byte	-1
   1B54 0D                 6316 	.byte	13
   1B55 00                 6317 	.byte	0
   1B56 00                 6318 	.byte	0
   1B57 FB                 6319 	.byte	-5
   1B58 FA                 6320 	.byte	-6
   1B59 FF                 6321 	.byte	-1
   1B5A 0D                 6322 	.byte	13
   1B5B 00                 6323 	.byte	0
   1B5C 00                 6324 	.byte	0
   1B5D ED                 6325 	.byte	-19
   1B5E E5                 6326 	.byte	-27
   1B5F FF                 6327 	.byte	-1
   1B60 0D                 6328 	.byte	13
   1B61 00                 6329 	.byte	0
   1B62 00                 6330 	.byte	0
   1B63 F8                 6331 	.byte	-8
   1B64 05                 6332 	.byte	5
   1B65 FF                 6333 	.byte	-1
   1B66 06                 6334 	.byte	6
   1B67 1C                 6335 	.byte	28
   1B68 FF                 6336 	.byte	-1
   1B69 08                 6337 	.byte	8
   1B6A FA                 6338 	.byte	-6
   1B6B FF                 6339 	.byte	-1
   1B6C FA                 6340 	.byte	-6
   1B6D E5                 6341 	.byte	-27
   1B6E FF                 6342 	.byte	-1
   1B6F F8                 6343 	.byte	-8
   1B70 05                 6344 	.byte	5
   1B71 01                 6345 	.byte	1
                           6346 	.globl _height2FallingLeft1
   1B72                    6347 _height2FallingLeft1:
   1B72 FF                 6348 	.byte	-1
   1B73 05                 6349 	.byte	5
   1B74 0E                 6350 	.byte	14
   1B75 FF                 6351 	.byte	-1
   1B76 08                 6352 	.byte	8
   1B77 FA                 6353 	.byte	-6
   1B78 FF                 6354 	.byte	-1
   1B79 FB                 6355 	.byte	-5
   1B7A F3                 6356 	.byte	-13
   1B7B FF                 6357 	.byte	-1
   1B7C F8                 6358 	.byte	-8
   1B7D 05                 6359 	.byte	5
   1B7E FF                 6360 	.byte	-1
   1B7F 19                 6361 	.byte	25
   1B80 FD                 6362 	.byte	-3
   1B81 00                 6363 	.byte	0
   1B82 EC                 6364 	.byte	-20
   1B83 11                 6365 	.byte	17
   1B84 FF                 6366 	.byte	-1
   1B85 19                 6367 	.byte	25
   1B86 FC                 6368 	.byte	-4
   1B87 00                 6369 	.byte	0
   1B88 EF                 6370 	.byte	-17
   1B89 FE                 6371 	.byte	-2
   1B8A FF                 6372 	.byte	-1
   1B8B 19                 6373 	.byte	25
   1B8C FC                 6374 	.byte	-4
   1B8D 00                 6375 	.byte	0
   1B8E E2                 6376 	.byte	-30
   1B8F F7                 6377 	.byte	-9
   1B90 FF                 6378 	.byte	-1
   1B91 19                 6379 	.byte	25
   1B92 FC                 6380 	.byte	-4
   1B93 00                 6381 	.byte	0
   1B94 F8                 6382 	.byte	-8
   1B95 06                 6383 	.byte	6
   1B96 FF                 6384 	.byte	-1
   1B97 05                 6385 	.byte	5
   1B98 0D                 6386 	.byte	13
   1B99 FF                 6387 	.byte	-1
   1B9A 08                 6388 	.byte	8
   1B9B FA                 6389 	.byte	-6
   1B9C FF                 6390 	.byte	-1
   1B9D FB                 6391 	.byte	-5
   1B9E F3                 6392 	.byte	-13
   1B9F FF                 6393 	.byte	-1
   1BA0 F8                 6394 	.byte	-8
   1BA1 06                 6395 	.byte	6
   1BA2 01                 6396 	.byte	1
                           6397 	.globl _height2RisingRight1
   1BA3                    6398 _height2RisingRight1:
   1BA3 00                 6399 	.byte	0
   1BA4 06                 6400 	.byte	6
   1BA5 1C                 6401 	.byte	28
   1BA6 FF                 6402 	.byte	-1
   1BA7 0D                 6403 	.byte	13
   1BA8 04                 6404 	.byte	4
   1BA9 FF                 6405 	.byte	-1
   1BAA 08                 6406 	.byte	8
   1BAB FA                 6407 	.byte	-6
   1BAC FF                 6408 	.byte	-1
   1BAD F3                 6409 	.byte	-13
   1BAE FC                 6410 	.byte	-4
   1BAF FF                 6411 	.byte	-1
   1BB0 F8                 6412 	.byte	-8
   1BB1 06                 6413 	.byte	6
   1BB2 FF                 6414 	.byte	-1
   1BB3 01                 6415 	.byte	1
   1BB4 E5                 6416 	.byte	-27
   1BB5 00                 6417 	.byte	0
   1BB6 0C                 6418 	.byte	12
   1BB7 1F                 6419 	.byte	31
   1BB8 FF                 6420 	.byte	-1
   1BB9 01                 6421 	.byte	1
   1BBA E5                 6422 	.byte	-27
   1BBB 00                 6423 	.byte	0
   1BBC 07                 6424 	.byte	7
   1BBD 15                 6425 	.byte	21
   1BBE FF                 6426 	.byte	-1
   1BBF 01                 6427 	.byte	1
   1BC0 E6                 6428 	.byte	-26
   1BC1 00                 6429 	.byte	0
   1BC2 F2                 6430 	.byte	-14
   1BC3 16                 6431 	.byte	22
   1BC4 FF                 6432 	.byte	-1
   1BC5 01                 6433 	.byte	1
   1BC6 E6                 6434 	.byte	-26
   1BC7 00                 6435 	.byte	0
   1BC8 F8                 6436 	.byte	-8
   1BC9 05                 6437 	.byte	5
   1BCA FF                 6438 	.byte	-1
   1BCB 0D                 6439 	.byte	13
   1BCC 04                 6440 	.byte	4
   1BCD FF                 6441 	.byte	-1
   1BCE 08                 6442 	.byte	8
   1BCF FB                 6443 	.byte	-5
   1BD0 FF                 6444 	.byte	-1
   1BD1 F3                 6445 	.byte	-13
   1BD2 FC                 6446 	.byte	-4
   1BD3 FF                 6447 	.byte	-1
   1BD4 F8                 6448 	.byte	-8
   1BD5 05                 6449 	.byte	5
   1BD6 01                 6450 	.byte	1
                           6451 	.globl _height2FallingRight1
   1BD7                    6452 _height2FallingRight1:
   1BD7 00                 6453 	.byte	0
   1BD8 02                 6454 	.byte	2
   1BD9 00                 6455 	.byte	0
   1BDA FF                 6456 	.byte	-1
   1BDB 01                 6457 	.byte	1
   1BDC 0E                 6458 	.byte	14
   1BDD FF                 6459 	.byte	-1
   1BDE 08                 6460 	.byte	8
   1BDF FA                 6461 	.byte	-6
   1BE0 FF                 6462 	.byte	-1
   1BE1 FF                 6463 	.byte	-1
   1BE2 F3                 6464 	.byte	-13
   1BE3 FF                 6465 	.byte	-1
   1BE4 F8                 6466 	.byte	-8
   1BE5 05                 6467 	.byte	5
   1BE6 FF                 6468 	.byte	-1
   1BE7 1A                 6469 	.byte	26
   1BE8 04                 6470 	.byte	4
   1BE9 00                 6471 	.byte	0
   1BEA E7                 6472 	.byte	-25
   1BEB 0A                 6473 	.byte	10
   1BEC FF                 6474 	.byte	-1
   1BED 1B                 6475 	.byte	27
   1BEE 04                 6476 	.byte	4
   1BEF 00                 6477 	.byte	0
   1BF0 ED                 6478 	.byte	-19
   1BF1 F6                 6479 	.byte	-10
   1BF2 FF                 6480 	.byte	-1
   1BF3 1B                 6481 	.byte	27
   1BF4 04                 6482 	.byte	4
   1BF5 00                 6483 	.byte	0
   1BF6 E4                 6484 	.byte	-28
   1BF7 EF                 6485 	.byte	-17
   1BF8 FF                 6486 	.byte	-1
   1BF9 1A                 6487 	.byte	26
   1BFA 04                 6488 	.byte	4
   1BFB 00                 6489 	.byte	0
   1BFC F8                 6490 	.byte	-8
   1BFD 05                 6491 	.byte	5
   1BFE FF                 6492 	.byte	-1
   1BFF 02                 6493 	.byte	2
   1C00 0E                 6494 	.byte	14
   1C01 FF                 6495 	.byte	-1
   1C02 08                 6496 	.byte	8
   1C03 FA                 6497 	.byte	-6
   1C04 FF                 6498 	.byte	-1
   1C05 FE                 6499 	.byte	-2
   1C06 F3                 6500 	.byte	-13
   1C07 FF                 6501 	.byte	-1
   1C08 F8                 6502 	.byte	-8
   1C09 05                 6503 	.byte	5
   1C0A 01                 6504 	.byte	1
                           6505 	.globl _height2RisingLeft1
   1C0B                    6506 _height2RisingLeft1:
   1C0B 00                 6507 	.byte	0
   1C0C 0C                 6508 	.byte	12
   1C0D FD                 6509 	.byte	-3
   1C0E FF                 6510 	.byte	-1
   1C0F F4                 6511 	.byte	-12
   1C10 03                 6512 	.byte	3
   1C11 FF                 6513 	.byte	-1
   1C12 08                 6514 	.byte	8
   1C13 FB                 6515 	.byte	-5
   1C14 FF                 6516 	.byte	-1
   1C15 0C                 6517 	.byte	12
   1C16 FC                 6518 	.byte	-4
   1C17 FF                 6519 	.byte	-1
   1C18 F8                 6520 	.byte	-8
   1C19 06                 6521 	.byte	6
   1C1A FF                 6522 	.byte	-1
   1C1B 0C                 6523 	.byte	12
   1C1C 1A                 6524 	.byte	26
   1C1D 00                 6525 	.byte	0
   1C1E E8                 6526 	.byte	-24
   1C1F E9                 6527 	.byte	-23
   1C20 FF                 6528 	.byte	-1
   1C21 0D                 6529 	.byte	13
   1C22 1B                 6530 	.byte	27
   1C23 00                 6531 	.byte	0
   1C24 FB                 6532 	.byte	-5
   1C25 E0                 6533 	.byte	-32
   1C26 FF                 6534 	.byte	-1
   1C27 0D                 6535 	.byte	13
   1C28 1A                 6536 	.byte	26
   1C29 00                 6537 	.byte	0
   1C2A FF                 6538 	.byte	-1
   1C2B E2                 6539 	.byte	-30
   1C2C FF                 6540 	.byte	-1
   1C2D 0C                 6541 	.byte	12
   1C2E 1A                 6542 	.byte	26
   1C2F 00                 6543 	.byte	0
   1C30 F8                 6544 	.byte	-8
   1C31 06                 6545 	.byte	6
   1C32 FF                 6546 	.byte	-1
   1C33 F5                 6547 	.byte	-11
   1C34 04                 6548 	.byte	4
   1C35 FF                 6549 	.byte	-1
   1C36 08                 6550 	.byte	8
   1C37 FA                 6551 	.byte	-6
   1C38 FF                 6552 	.byte	-1
   1C39 0B                 6553 	.byte	11
   1C3A FC                 6554 	.byte	-4
   1C3B FF                 6555 	.byte	-1
   1C3C F8                 6556 	.byte	-8
   1C3D 06                 6557 	.byte	6
   1C3E 01                 6558 	.byte	1
                           6559 	.globl _height2FallingBack1
   1C3F                    6560 _height2FallingBack1:
   1C3F 00                 6561 	.byte	0
   1C40 02                 6562 	.byte	2
   1C41 00                 6563 	.byte	0
   1C42 FF                 6564 	.byte	-1
   1C43 03                 6565 	.byte	3
   1C44 0E                 6566 	.byte	14
   1C45 FF                 6567 	.byte	-1
   1C46 06                 6568 	.byte	6
   1C47 FA                 6569 	.byte	-6
   1C48 FF                 6570 	.byte	-1
   1C49 FD                 6571 	.byte	-3
   1C4A F3                 6572 	.byte	-13
   1C4B FF                 6573 	.byte	-1
   1C4C FA                 6574 	.byte	-6
   1C4D 05                 6575 	.byte	5
   1C4E FF                 6576 	.byte	-1
   1C4F 1C                 6577 	.byte	28
   1C50 FF                 6578 	.byte	-1
   1C51 00                 6579 	.byte	0
   1C52 E7                 6580 	.byte	-25
   1C53 0F                 6581 	.byte	15
   1C54 FF                 6582 	.byte	-1
   1C55 1C                 6583 	.byte	28
   1C56 FE                 6584 	.byte	-2
   1C57 00                 6585 	.byte	0
   1C58 EA                 6586 	.byte	-22
   1C59 FC                 6587 	.byte	-4
   1C5A FF                 6588 	.byte	-1
   1C5B 1C                 6589 	.byte	28
   1C5C FE                 6590 	.byte	-2
   1C5D 00                 6591 	.byte	0
   1C5E E1                 6592 	.byte	-31
   1C5F F5                 6593 	.byte	-11
   1C60 FF                 6594 	.byte	-1
   1C61 1C                 6595 	.byte	28
   1C62 FE                 6596 	.byte	-2
   1C63 00                 6597 	.byte	0
   1C64 FA                 6598 	.byte	-6
   1C65 06                 6599 	.byte	6
   1C66 FF                 6600 	.byte	-1
   1C67 03                 6601 	.byte	3
   1C68 0D                 6602 	.byte	13
   1C69 FF                 6603 	.byte	-1
   1C6A 06                 6604 	.byte	6
   1C6B FA                 6605 	.byte	-6
   1C6C FF                 6606 	.byte	-1
   1C6D FD                 6607 	.byte	-3
   1C6E F3                 6608 	.byte	-13
   1C6F FF                 6609 	.byte	-1
   1C70 FA                 6610 	.byte	-6
   1C71 06                 6611 	.byte	6
   1C72 01                 6612 	.byte	1
                           6613 	.globl _height2RisingFront1
   1C73                    6614 _height2RisingFront1:
   1C73 00                 6615 	.byte	0
   1C74 0A                 6616 	.byte	10
   1C75 02                 6617 	.byte	2
   1C76 FF                 6618 	.byte	-1
   1C77 03                 6619 	.byte	3
   1C78 0E                 6620 	.byte	14
   1C79 FF                 6621 	.byte	-1
   1C7A F6                 6622 	.byte	-10
   1C7B FE                 6623 	.byte	-2
   1C7C FF                 6624 	.byte	-1
   1C7D FD                 6625 	.byte	-3
   1C7E F2                 6626 	.byte	-14
   1C7F FF                 6627 	.byte	-1
   1C80 0A                 6628 	.byte	10
   1C81 02                 6629 	.byte	2
   1C82 FF                 6630 	.byte	-1
   1C83 17                 6631 	.byte	23
   1C84 F5                 6632 	.byte	-11
   1C85 00                 6633 	.byte	0
   1C86 EC                 6634 	.byte	-20
   1C87 19                 6635 	.byte	25
   1C88 FF                 6636 	.byte	-1
   1C89 17                 6637 	.byte	23
   1C8A F4                 6638 	.byte	-12
   1C8B 00                 6639 	.byte	0
   1C8C DF                 6640 	.byte	-33
   1C8D 0A                 6641 	.byte	10
   1C8E FF                 6642 	.byte	-1
   1C8F 16                 6643 	.byte	22
   1C90 F4                 6644 	.byte	-12
   1C91 00                 6645 	.byte	0
   1C92 E7                 6646 	.byte	-25
   1C93 FE                 6647 	.byte	-2
   1C94 FF                 6648 	.byte	-1
   1C95 16                 6649 	.byte	22
   1C96 F5                 6650 	.byte	-11
   1C97 00                 6651 	.byte	0
   1C98 0B                 6652 	.byte	11
   1C99 02                 6653 	.byte	2
   1C9A FF                 6654 	.byte	-1
   1C9B 03                 6655 	.byte	3
   1C9C 0D                 6656 	.byte	13
   1C9D FF                 6657 	.byte	-1
   1C9E F5                 6658 	.byte	-11
   1C9F FE                 6659 	.byte	-2
   1CA0 FF                 6660 	.byte	-1
   1CA1 FD                 6661 	.byte	-3
   1CA2 F3                 6662 	.byte	-13
   1CA3 FF                 6663 	.byte	-1
   1CA4 0B                 6664 	.byte	11
   1CA5 02                 6665 	.byte	2
   1CA6 01                 6666 	.byte	1
                           6667 	.globl _height2FallingFront1
   1CA7                    6668 _height2FallingFront1:
   1CA7 FF                 6669 	.byte	-1
   1CA8 03                 6670 	.byte	3
   1CA9 0E                 6671 	.byte	14
   1CAA FF                 6672 	.byte	-1
   1CAB 0A                 6673 	.byte	10
   1CAC FA                 6674 	.byte	-6
   1CAD FF                 6675 	.byte	-1
   1CAE FD                 6676 	.byte	-3
   1CAF F3                 6677 	.byte	-13
   1CB0 FF                 6678 	.byte	-1
   1CB1 F6                 6679 	.byte	-10
   1CB2 05                 6680 	.byte	5
   1CB3 FF                 6681 	.byte	-1
   1CB4 18                 6682 	.byte	24
   1CB5 02                 6683 	.byte	2
   1CB6 00                 6684 	.byte	0
   1CB7 EB                 6685 	.byte	-21
   1CB8 0C                 6686 	.byte	12
   1CB9 FF                 6687 	.byte	-1
   1CBA 18                 6688 	.byte	24
   1CBB 02                 6689 	.byte	2
   1CBC 00                 6690 	.byte	0
   1CBD F2                 6691 	.byte	-14
   1CBE F8                 6692 	.byte	-8
   1CBF FF                 6693 	.byte	-1
   1CC0 17                 6694 	.byte	23
   1CC1 02                 6695 	.byte	2
   1CC2 00                 6696 	.byte	0
   1CC3 E6                 6697 	.byte	-26
   1CC4 F1                 6698 	.byte	-15
   1CC5 FF                 6699 	.byte	-1
   1CC6 17                 6700 	.byte	23
   1CC7 02                 6701 	.byte	2
   1CC8 00                 6702 	.byte	0
   1CC9 F7                 6703 	.byte	-9
   1CCA 05                 6704 	.byte	5
   1CCB FF                 6705 	.byte	-1
   1CCC 03                 6706 	.byte	3
   1CCD 0E                 6707 	.byte	14
   1CCE FF                 6708 	.byte	-1
   1CCF 09                 6709 	.byte	9
   1CD0 FA                 6710 	.byte	-6
   1CD1 FF                 6711 	.byte	-1
   1CD2 FD                 6712 	.byte	-3
   1CD3 F3                 6713 	.byte	-13
   1CD4 FF                 6714 	.byte	-1
   1CD5 F7                 6715 	.byte	-9
   1CD6 05                 6716 	.byte	5
   1CD7 01                 6717 	.byte	1
                           6718 	.globl _height2RisingBack1
   1CD8                    6719 _height2RisingBack1:
   1CD8 00                 6720 	.byte	0
   1CD9 10                 6721 	.byte	16
   1CDA F5                 6722 	.byte	-11
   1CDB FF                 6723 	.byte	-1
   1CDC 03                 6724 	.byte	3
   1CDD 0D                 6725 	.byte	13
   1CDE FF                 6726 	.byte	-1
   1CDF 0F                 6727 	.byte	15
   1CE0 FE                 6728 	.byte	-2
   1CE1 FF                 6729 	.byte	-1
   1CE2 FD                 6730 	.byte	-3
   1CE3 F3                 6731 	.byte	-13
   1CE4 FF                 6732 	.byte	-1
   1CE5 F1                 6733 	.byte	-15
   1CE6 02                 6734 	.byte	2
   1CE7 FF                 6735 	.byte	-1
   1CE8 F7                 6736 	.byte	-9
   1CE9 0B                 6737 	.byte	11
   1CEA 00                 6738 	.byte	0
   1CEB 0C                 6739 	.byte	12
   1CEC 02                 6740 	.byte	2
   1CED FF                 6741 	.byte	-1
   1CEE F7                 6742 	.byte	-9
   1CEF 0C                 6743 	.byte	12
   1CF0 00                 6744 	.byte	0
   1CF1 18                 6745 	.byte	24
   1CF2 F2                 6746 	.byte	-14
   1CF3 FF                 6747 	.byte	-1
   1CF4 F7                 6748 	.byte	-9
   1CF5 0C                 6749 	.byte	12
   1CF6 00                 6750 	.byte	0
   1CF7 06                 6751 	.byte	6
   1CF8 E7                 6752 	.byte	-25
   1CF9 FF                 6753 	.byte	-1
   1CFA F7                 6754 	.byte	-9
   1CFB 0C                 6755 	.byte	12
   1CFC 00                 6756 	.byte	0
   1CFD F1                 6757 	.byte	-15
   1CFE 01                 6758 	.byte	1
   1CFF FF                 6759 	.byte	-1
   1D00 03                 6760 	.byte	3
   1D01 0E                 6761 	.byte	14
   1D02 FF                 6762 	.byte	-1
   1D03 0F                 6763 	.byte	15
   1D04 FE                 6764 	.byte	-2
   1D05 FF                 6765 	.byte	-1
   1D06 FD                 6766 	.byte	-3
   1D07 F3                 6767 	.byte	-13
   1D08 FF                 6768 	.byte	-1
   1D09 F1                 6769 	.byte	-15
   1D0A 01                 6770 	.byte	1
   1D0B 01                 6771 	.byte	1
                           6772 	.globl _depth2RollingLeft1
   1D0C                    6773 _depth2RollingLeft1:
   1D0C FF                 6774 	.byte	-1
   1D0D 05                 6775 	.byte	5
   1D0E 0E                 6776 	.byte	14
   1D0F FF                 6777 	.byte	-1
   1D10 10                 6778 	.byte	16
   1D11 F4                 6779 	.byte	-12
   1D12 FF                 6780 	.byte	-1
   1D13 FB                 6781 	.byte	-5
   1D14 F3                 6782 	.byte	-13
   1D15 FF                 6783 	.byte	-1
   1D16 F0                 6784 	.byte	-16
   1D17 0B                 6785 	.byte	11
   1D18 FF                 6786 	.byte	-1
   1D19 0C                 6787 	.byte	12
   1D1A FF                 6788 	.byte	-1
   1D1B 00                 6789 	.byte	0
   1D1C F9                 6790 	.byte	-7
   1D1D 0F                 6791 	.byte	15
   1D1E FF                 6792 	.byte	-1
   1D1F 0C                 6793 	.byte	12
   1D20 FE                 6794 	.byte	-2
   1D21 00                 6795 	.byte	0
   1D22 04                 6796 	.byte	4
   1D23 F6                 6797 	.byte	-10
   1D24 FF                 6798 	.byte	-1
   1D25 0C                 6799 	.byte	12
   1D26 FE                 6800 	.byte	-2
   1D27 00                 6801 	.byte	0
   1D28 EF                 6802 	.byte	-17
   1D29 F5                 6803 	.byte	-11
   1D2A FF                 6804 	.byte	-1
   1D2B 0C                 6805 	.byte	12
   1D2C FE                 6806 	.byte	-2
   1D2D 00                 6807 	.byte	0
   1D2E F0                 6808 	.byte	-16
   1D2F 0C                 6809 	.byte	12
   1D30 FF                 6810 	.byte	-1
   1D31 05                 6811 	.byte	5
   1D32 0D                 6812 	.byte	13
   1D33 FF                 6813 	.byte	-1
   1D34 10                 6814 	.byte	16
   1D35 F4                 6815 	.byte	-12
   1D36 FF                 6816 	.byte	-1
   1D37 FB                 6817 	.byte	-5
   1D38 F3                 6818 	.byte	-13
   1D39 FF                 6819 	.byte	-1
   1D3A F0                 6820 	.byte	-16
   1D3B 0C                 6821 	.byte	12
   1D3C 01                 6822 	.byte	1
                           6823 	.globl _depth2RollingRight1
   1D3D                    6824 _depth2RollingRight1:
   1D3D 00                 6825 	.byte	0
   1D3E 02                 6826 	.byte	2
   1D3F 00                 6827 	.byte	0
   1D40 FF                 6828 	.byte	-1
   1D41 01                 6829 	.byte	1
   1D42 0E                 6830 	.byte	14
   1D43 FF                 6831 	.byte	-1
   1D44 10                 6832 	.byte	16
   1D45 F4                 6833 	.byte	-12
   1D46 FF                 6834 	.byte	-1
   1D47 FF                 6835 	.byte	-1
   1D48 F3                 6836 	.byte	-13
   1D49 FF                 6837 	.byte	-1
   1D4A F0                 6838 	.byte	-16
   1D4B 0B                 6839 	.byte	11
   1D4C FF                 6840 	.byte	-1
   1D4D 0D                 6841 	.byte	13
   1D4E 02                 6842 	.byte	2
   1D4F 00                 6843 	.byte	0
   1D50 F4                 6844 	.byte	-12
   1D51 0C                 6845 	.byte	12
   1D52 FF                 6846 	.byte	-1
   1D53 0D                 6847 	.byte	13
   1D54 02                 6848 	.byte	2
   1D55 00                 6849 	.byte	0
   1D56 03                 6850 	.byte	3
   1D57 F2                 6851 	.byte	-14
   1D58 FF                 6852 	.byte	-1
   1D59 0D                 6853 	.byte	13
   1D5A 02                 6854 	.byte	2
   1D5B 00                 6855 	.byte	0
   1D5C F2                 6856 	.byte	-14
   1D5D F1                 6857 	.byte	-15
   1D5E FF                 6858 	.byte	-1
   1D5F 0D                 6859 	.byte	13
   1D60 02                 6860 	.byte	2
   1D61 00                 6861 	.byte	0
   1D62 F0                 6862 	.byte	-16
   1D63 0B                 6863 	.byte	11
   1D64 FF                 6864 	.byte	-1
   1D65 01                 6865 	.byte	1
   1D66 0E                 6866 	.byte	14
   1D67 FF                 6867 	.byte	-1
   1D68 10                 6868 	.byte	16
   1D69 F4                 6869 	.byte	-12
   1D6A FF                 6870 	.byte	-1
   1D6B FF                 6871 	.byte	-1
   1D6C F3                 6872 	.byte	-13
   1D6D FF                 6873 	.byte	-1
   1D6E F0                 6874 	.byte	-16
   1D6F 0B                 6875 	.byte	11
   1D70 01                 6876 	.byte	1
                           6877 	.globl _width2RollingFront1
   1D71                    6878 _width2RollingFront1:
   1D71 FF                 6879 	.byte	-1
   1D72 06                 6880 	.byte	6
   1D73 1C                 6881 	.byte	28
   1D74 FF                 6882 	.byte	-1
   1D75 0A                 6883 	.byte	10
   1D76 FA                 6884 	.byte	-6
   1D77 FF                 6885 	.byte	-1
   1D78 FA                 6886 	.byte	-6
   1D79 E5                 6887 	.byte	-27
   1D7A FF                 6888 	.byte	-1
   1D7B F6                 6889 	.byte	-10
   1D7C 05                 6890 	.byte	5
   1D7D FF                 6891 	.byte	-1
   1D7E 0C                 6892 	.byte	12
   1D7F 01                 6893 	.byte	1
   1D80 00                 6894 	.byte	0
   1D81 FA                 6895 	.byte	-6
   1D82 1B                 6896 	.byte	27
   1D83 FF                 6897 	.byte	-1
   1D84 0C                 6898 	.byte	12
   1D85 01                 6899 	.byte	1
   1D86 00                 6900 	.byte	0
   1D87 FE                 6901 	.byte	-2
   1D88 F9                 6902 	.byte	-7
   1D89 FF                 6903 	.byte	-1
   1D8A 0B                 6904 	.byte	11
   1D8B 01                 6905 	.byte	1
   1D8C 00                 6906 	.byte	0
   1D8D EF                 6907 	.byte	-17
   1D8E E4                 6908 	.byte	-28
   1D8F FF                 6909 	.byte	-1
   1D90 0B                 6910 	.byte	11
   1D91 01                 6911 	.byte	1
   1D92 00                 6912 	.byte	0
   1D93 F7                 6913 	.byte	-9
   1D94 05                 6914 	.byte	5
   1D95 FF                 6915 	.byte	-1
   1D96 06                 6916 	.byte	6
   1D97 1C                 6917 	.byte	28
   1D98 FF                 6918 	.byte	-1
   1D99 09                 6919 	.byte	9
   1D9A FA                 6920 	.byte	-6
   1D9B FF                 6921 	.byte	-1
   1D9C FA                 6922 	.byte	-6
   1D9D E5                 6923 	.byte	-27
   1D9E FF                 6924 	.byte	-1
   1D9F F7                 6925 	.byte	-9
   1DA0 05                 6926 	.byte	5
   1DA1 01                 6927 	.byte	1
                           6928 	.globl _width2RollingBack1
   1DA2                    6929 _width2RollingBack1:
   1DA2 00                 6930 	.byte	0
   1DA3 02                 6931 	.byte	2
   1DA4 00                 6932 	.byte	0
   1DA5 FF                 6933 	.byte	-1
   1DA6 06                 6934 	.byte	6
   1DA7 1C                 6935 	.byte	28
   1DA8 FF                 6936 	.byte	-1
   1DA9 06                 6937 	.byte	6
   1DAA FA                 6938 	.byte	-6
   1DAB FF                 6939 	.byte	-1
   1DAC FA                 6940 	.byte	-6
   1DAD E5                 6941 	.byte	-27
   1DAE FF                 6942 	.byte	-1
   1DAF FA                 6943 	.byte	-6
   1DB0 05                 6944 	.byte	5
   1DB1 FF                 6945 	.byte	-1
   1DB2 0E                 6946 	.byte	14
   1DB3 00                 6947 	.byte	0
   1DB4 00                 6948 	.byte	0
   1DB5 F8                 6949 	.byte	-8
   1DB6 1C                 6950 	.byte	28
   1DB7 FF                 6951 	.byte	-1
   1DB8 0E                 6952 	.byte	14
   1DB9 FF                 6953 	.byte	-1
   1DBA 00                 6954 	.byte	0
   1DBB F8                 6955 	.byte	-8
   1DBC FB                 6956 	.byte	-5
   1DBD FF                 6957 	.byte	-1
   1DBE 0E                 6958 	.byte	14
   1DBF FF                 6959 	.byte	-1
   1DC0 00                 6960 	.byte	0
   1DC1 EC                 6961 	.byte	-20
   1DC2 E6                 6962 	.byte	-26
   1DC3 FF                 6963 	.byte	-1
   1DC4 0E                 6964 	.byte	14
   1DC5 FF                 6965 	.byte	-1
   1DC6 00                 6966 	.byte	0
   1DC7 FA                 6967 	.byte	-6
   1DC8 06                 6968 	.byte	6
   1DC9 FF                 6969 	.byte	-1
   1DCA 06                 6970 	.byte	6
   1DCB 1B                 6971 	.byte	27
   1DCC FF                 6972 	.byte	-1
   1DCD 06                 6973 	.byte	6
   1DCE FA                 6974 	.byte	-6
   1DCF FF                 6975 	.byte	-1
   1DD0 FA                 6976 	.byte	-6
   1DD1 E5                 6977 	.byte	-27
   1DD2 FF                 6978 	.byte	-1
   1DD3 FA                 6979 	.byte	-6
   1DD4 06                 6980 	.byte	6
   1DD5 01                 6981 	.byte	1
                           6982 	.globl _height2FallingLeft2
   1DD6                    6983 _height2FallingLeft2:
   1DD6 FF                 6984 	.byte	-1
   1DD7 06                 6985 	.byte	6
   1DD8 0E                 6986 	.byte	14
   1DD9 FF                 6987 	.byte	-1
   1DDA 08                 6988 	.byte	8
   1DDB FA                 6989 	.byte	-6
   1DDC FF                 6990 	.byte	-1
   1DDD FA                 6991 	.byte	-6
   1DDE F3                 6992 	.byte	-13
   1DDF FF                 6993 	.byte	-1
   1DE0 F8                 6994 	.byte	-8
   1DE1 05                 6995 	.byte	5
   1DE2 FF                 6996 	.byte	-1
   1DE3 18                 6997 	.byte	24
   1DE4 FA                 6998 	.byte	-6
   1DE5 00                 6999 	.byte	0
   1DE6 EE                 7000 	.byte	-18
   1DE7 14                 7001 	.byte	20
   1DE8 FF                 7002 	.byte	-1
   1DE9 18                 7003 	.byte	24
   1DEA F8                 7004 	.byte	-8
   1DEB 00                 7005 	.byte	0
   1DEC F0                 7006 	.byte	-16
   1DED 02                 7007 	.byte	2
   1DEE FF                 7008 	.byte	-1
   1DEF 18                 7009 	.byte	24
   1DF0 F8                 7010 	.byte	-8
   1DF1 00                 7011 	.byte	0
   1DF2 E2                 7012 	.byte	-30
   1DF3 FB                 7013 	.byte	-5
   1DF4 FF                 7014 	.byte	-1
   1DF5 18                 7015 	.byte	24
   1DF6 F9                 7016 	.byte	-7
   1DF7 00                 7017 	.byte	0
   1DF8 F8                 7018 	.byte	-8
   1DF9 06                 7019 	.byte	6
   1DFA FF                 7020 	.byte	-1
   1DFB 06                 7021 	.byte	6
   1DFC 0C                 7022 	.byte	12
   1DFD FF                 7023 	.byte	-1
   1DFE 08                 7024 	.byte	8
   1DFF FA                 7025 	.byte	-6
   1E00 FF                 7026 	.byte	-1
   1E01 FA                 7027 	.byte	-6
   1E02 F4                 7028 	.byte	-12
   1E03 FF                 7029 	.byte	-1
   1E04 F8                 7030 	.byte	-8
   1E05 06                 7031 	.byte	6
   1E06 01                 7032 	.byte	1
                           7033 	.globl _height2RisingRight2
   1E07                    7034 _height2RisingRight2:
   1E07 00                 7035 	.byte	0
   1E08 06                 7036 	.byte	6
   1E09 1C                 7037 	.byte	28
   1E0A FF                 7038 	.byte	-1
   1E0B 0D                 7039 	.byte	13
   1E0C 05                 7040 	.byte	5
   1E0D FF                 7041 	.byte	-1
   1E0E 08                 7042 	.byte	8
   1E0F FA                 7043 	.byte	-6
   1E10 FF                 7044 	.byte	-1
   1E11 F3                 7045 	.byte	-13
   1E12 FB                 7046 	.byte	-5
   1E13 FF                 7047 	.byte	-1
   1E14 F8                 7048 	.byte	-8
   1E15 06                 7049 	.byte	6
   1E16 FF                 7050 	.byte	-1
   1E17 04                 7051 	.byte	4
   1E18 E6                 7052 	.byte	-26
   1E19 00                 7053 	.byte	0
   1E1A 09                 7054 	.byte	9
   1E1B 1F                 7055 	.byte	31
   1E1C FF                 7056 	.byte	-1
   1E1D 05                 7057 	.byte	5
   1E1E E6                 7058 	.byte	-26
   1E1F 00                 7059 	.byte	0
   1E20 03                 7060 	.byte	3
   1E21 14                 7061 	.byte	20
   1E22 FF                 7062 	.byte	-1
   1E23 05                 7063 	.byte	5
   1E24 E6                 7064 	.byte	-26
   1E25 00                 7065 	.byte	0
   1E26 EE                 7066 	.byte	-18
   1E27 15                 7067 	.byte	21
   1E28 FF                 7068 	.byte	-1
   1E29 04                 7069 	.byte	4
   1E2A E7                 7070 	.byte	-25
   1E2B 00                 7071 	.byte	0
   1E2C F8                 7072 	.byte	-8
   1E2D 05                 7073 	.byte	5
   1E2E FF                 7074 	.byte	-1
   1E2F 0E                 7075 	.byte	14
   1E30 05                 7076 	.byte	5
   1E31 FF                 7077 	.byte	-1
   1E32 08                 7078 	.byte	8
   1E33 FA                 7079 	.byte	-6
   1E34 FF                 7080 	.byte	-1
   1E35 F2                 7081 	.byte	-14
   1E36 FC                 7082 	.byte	-4
   1E37 FF                 7083 	.byte	-1
   1E38 F8                 7084 	.byte	-8
   1E39 05                 7085 	.byte	5
   1E3A 01                 7086 	.byte	1
                           7087 	.globl _height2FallingRight2
   1E3B                    7088 _height2FallingRight2:
   1E3B 00                 7089 	.byte	0
   1E3C 03                 7090 	.byte	3
   1E3D 00                 7091 	.byte	0
   1E3E FF                 7092 	.byte	-1
   1E3F 00                 7093 	.byte	0
   1E40 0E                 7094 	.byte	14
   1E41 FF                 7095 	.byte	-1
   1E42 08                 7096 	.byte	8
   1E43 FA                 7097 	.byte	-6
   1E44 FF                 7098 	.byte	-1
   1E45 00                 7099 	.byte	0
   1E46 F3                 7100 	.byte	-13
   1E47 FF                 7101 	.byte	-1
   1E48 F8                 7102 	.byte	-8
   1E49 05                 7103 	.byte	5
   1E4A FF                 7104 	.byte	-1
   1E4B 1B                 7105 	.byte	27
   1E4C 08                 7106 	.byte	8
   1E4D 00                 7107 	.byte	0
   1E4E E5                 7108 	.byte	-27
   1E4F 06                 7109 	.byte	6
   1E50 FF                 7110 	.byte	-1
   1E51 1B                 7111 	.byte	27
   1E52 07                 7112 	.byte	7
   1E53 00                 7113 	.byte	0
   1E54 ED                 7114 	.byte	-19
   1E55 F3                 7115 	.byte	-13
   1E56 FF                 7116 	.byte	-1
   1E57 1B                 7117 	.byte	27
   1E58 07                 7118 	.byte	7
   1E59 00                 7119 	.byte	0
   1E5A E5                 7120 	.byte	-27
   1E5B EC                 7121 	.byte	-20
   1E5C FF                 7122 	.byte	-1
   1E5D 1B                 7123 	.byte	27
   1E5E 07                 7124 	.byte	7
   1E5F 00                 7125 	.byte	0
   1E60 F8                 7126 	.byte	-8
   1E61 06                 7127 	.byte	6
   1E62 FF                 7128 	.byte	-1
   1E63 00                 7129 	.byte	0
   1E64 0D                 7130 	.byte	13
   1E65 FF                 7131 	.byte	-1
   1E66 08                 7132 	.byte	8
   1E67 FA                 7133 	.byte	-6
   1E68 FF                 7134 	.byte	-1
   1E69 00                 7135 	.byte	0
   1E6A F3                 7136 	.byte	-13
   1E6B FF                 7137 	.byte	-1
   1E6C F8                 7138 	.byte	-8
   1E6D 06                 7139 	.byte	6
   1E6E 01                 7140 	.byte	1
                           7141 	.globl _height2RisingLeft2
   1E6F                    7142 _height2RisingLeft2:
   1E6F 00                 7143 	.byte	0
   1E70 0B                 7144 	.byte	11
   1E71 FC                 7145 	.byte	-4
   1E72 FF                 7146 	.byte	-1
   1E73 F5                 7147 	.byte	-11
   1E74 04                 7148 	.byte	4
   1E75 FF                 7149 	.byte	-1
   1E76 08                 7150 	.byte	8
   1E77 FB                 7151 	.byte	-5
   1E78 FF                 7152 	.byte	-1
   1E79 0B                 7153 	.byte	11
   1E7A FB                 7154 	.byte	-5
   1E7B FF                 7155 	.byte	-1
   1E7C F8                 7156 	.byte	-8
   1E7D 06                 7157 	.byte	6
   1E7E FF                 7158 	.byte	-1
   1E7F 0F                 7159 	.byte	15
   1E80 19                 7160 	.byte	25
   1E81 00                 7161 	.byte	0
   1E82 E6                 7162 	.byte	-26
   1E83 EB                 7163 	.byte	-21
   1E84 FF                 7164 	.byte	-1
   1E85 0F                 7165 	.byte	15
   1E86 1A                 7166 	.byte	26
   1E87 00                 7167 	.byte	0
   1E88 F9                 7168 	.byte	-7
   1E89 E1                 7169 	.byte	-31
   1E8A FF                 7170 	.byte	-1
   1E8B 0F                 7171 	.byte	15
   1E8C 19                 7172 	.byte	25
   1E8D 00                 7173 	.byte	0
   1E8E FC                 7174 	.byte	-4
   1E8F E2                 7175 	.byte	-30
   1E90 FF                 7176 	.byte	-1
   1E91 0F                 7177 	.byte	15
   1E92 19                 7178 	.byte	25
   1E93 00                 7179 	.byte	0
   1E94 F8                 7180 	.byte	-8
   1E95 06                 7181 	.byte	6
   1E96 FF                 7182 	.byte	-1
   1E97 F5                 7183 	.byte	-11
   1E98 05                 7184 	.byte	5
   1E99 FF                 7185 	.byte	-1
   1E9A 08                 7186 	.byte	8
   1E9B FA                 7187 	.byte	-6
   1E9C FF                 7188 	.byte	-1
   1E9D 0B                 7189 	.byte	11
   1E9E FB                 7190 	.byte	-5
   1E9F FF                 7191 	.byte	-1
   1EA0 F8                 7192 	.byte	-8
   1EA1 06                 7193 	.byte	6
   1EA2 01                 7194 	.byte	1
                           7195 	.globl _height2FallingBack2
   1EA3                    7196 _height2FallingBack2:
   1EA3 00                 7197 	.byte	0
   1EA4 04                 7198 	.byte	4
   1EA5 00                 7199 	.byte	0
   1EA6 FF                 7200 	.byte	-1
   1EA7 03                 7201 	.byte	3
   1EA8 0E                 7202 	.byte	14
   1EA9 FF                 7203 	.byte	-1
   1EAA 04                 7204 	.byte	4
   1EAB FA                 7205 	.byte	-6
   1EAC FF                 7206 	.byte	-1
   1EAD FD                 7207 	.byte	-3
   1EAE F3                 7208 	.byte	-13
   1EAF FF                 7209 	.byte	-1
   1EB0 FC                 7210 	.byte	-4
   1EB1 05                 7211 	.byte	5
   1EB2 FF                 7212 	.byte	-1
   1EB3 1D                 7213 	.byte	29
   1EB4 FE                 7214 	.byte	-2
   1EB5 00                 7215 	.byte	0
   1EB6 E6                 7216 	.byte	-26
   1EB7 10                 7217 	.byte	16
   1EB8 FF                 7218 	.byte	-1
   1EB9 1D                 7219 	.byte	29
   1EBA FD                 7220 	.byte	-3
   1EBB 00                 7221 	.byte	0
   1EBC E7                 7222 	.byte	-25
   1EBD FD                 7223 	.byte	-3
   1EBE FF                 7224 	.byte	-1
   1EBF 1D                 7225 	.byte	29
   1EC0 FD                 7226 	.byte	-3
   1EC1 00                 7227 	.byte	0
   1EC2 E0                 7228 	.byte	-32
   1EC3 F6                 7229 	.byte	-10
   1EC4 FF                 7230 	.byte	-1
   1EC5 1D                 7231 	.byte	29
   1EC6 FD                 7232 	.byte	-3
   1EC7 00                 7233 	.byte	0
   1EC8 FC                 7234 	.byte	-4
   1EC9 06                 7235 	.byte	6
   1ECA FF                 7236 	.byte	-1
   1ECB 03                 7237 	.byte	3
   1ECC 0D                 7238 	.byte	13
   1ECD FF                 7239 	.byte	-1
   1ECE 04                 7240 	.byte	4
   1ECF FA                 7241 	.byte	-6
   1ED0 FF                 7242 	.byte	-1
   1ED1 FD                 7243 	.byte	-3
   1ED2 F3                 7244 	.byte	-13
   1ED3 FF                 7245 	.byte	-1
   1ED4 FC                 7246 	.byte	-4
   1ED5 06                 7247 	.byte	6
   1ED6 01                 7248 	.byte	1
                           7249 	.globl _height2RisingFront2
   1ED7                    7250 _height2RisingFront2:
   1ED7 00                 7251 	.byte	0
   1ED8 09                 7252 	.byte	9
   1ED9 02                 7253 	.byte	2
   1EDA FF                 7254 	.byte	-1
   1EDB 03                 7255 	.byte	3
   1EDC 0E                 7256 	.byte	14
   1EDD FF                 7257 	.byte	-1
   1EDE F7                 7258 	.byte	-9
   1EDF FE                 7259 	.byte	-2
   1EE0 FF                 7260 	.byte	-1
   1EE1 FD                 7261 	.byte	-3
   1EE2 F2                 7262 	.byte	-14
   1EE3 FF                 7263 	.byte	-1
   1EE4 09                 7264 	.byte	9
   1EE5 02                 7265 	.byte	2
   1EE6 FF                 7266 	.byte	-1
   1EE7 19                 7267 	.byte	25
   1EE8 F6                 7268 	.byte	-10
   1EE9 00                 7269 	.byte	0
   1EEA EA                 7270 	.byte	-22
   1EEB 18                 7271 	.byte	24
   1EEC FF                 7272 	.byte	-1
   1EED 19                 7273 	.byte	25
   1EEE F5                 7274 	.byte	-11
   1EEF 00                 7275 	.byte	0
   1EF0 DE                 7276 	.byte	-34
   1EF1 09                 7277 	.byte	9
   1EF2 FF                 7278 	.byte	-1
   1EF3 19                 7279 	.byte	25
   1EF4 F5                 7280 	.byte	-11
   1EF5 00                 7281 	.byte	0
   1EF6 E4                 7282 	.byte	-28
   1EF7 FD                 7283 	.byte	-3
   1EF8 FF                 7284 	.byte	-1
   1EF9 19                 7285 	.byte	25
   1EFA F6                 7286 	.byte	-10
   1EFB 00                 7287 	.byte	0
   1EFC 09                 7288 	.byte	9
   1EFD 02                 7289 	.byte	2
   1EFE FF                 7290 	.byte	-1
   1EFF 03                 7291 	.byte	3
   1F00 0D                 7292 	.byte	13
   1F01 FF                 7293 	.byte	-1
   1F02 F7                 7294 	.byte	-9
   1F03 FE                 7295 	.byte	-2
   1F04 FF                 7296 	.byte	-1
   1F05 FD                 7297 	.byte	-3
   1F06 F3                 7298 	.byte	-13
   1F07 FF                 7299 	.byte	-1
   1F08 09                 7300 	.byte	9
   1F09 02                 7301 	.byte	2
   1F0A 01                 7302 	.byte	1
                           7303 	.globl _height2FallingFront2
   1F0B                    7304 _height2FallingFront2:
   1F0B FF                 7305 	.byte	-1
   1F0C 03                 7306 	.byte	3
   1F0D 0E                 7307 	.byte	14
   1F0E FF                 7308 	.byte	-1
   1F0F 0B                 7309 	.byte	11
   1F10 FA                 7310 	.byte	-6
   1F11 FF                 7311 	.byte	-1
   1F12 FD                 7312 	.byte	-3
   1F13 F3                 7313 	.byte	-13
   1F14 FF                 7314 	.byte	-1
   1F15 F5                 7315 	.byte	-11
   1F16 05                 7316 	.byte	5
   1F17 FF                 7317 	.byte	-1
   1F18 15                 7318 	.byte	21
   1F19 03                 7319 	.byte	3
   1F1A 00                 7320 	.byte	0
   1F1B EE                 7321 	.byte	-18
   1F1C 0B                 7322 	.byte	11
   1F1D FF                 7323 	.byte	-1
   1F1E 15                 7324 	.byte	21
   1F1F 03                 7325 	.byte	3
   1F20 00                 7326 	.byte	0
   1F21 F6                 7327 	.byte	-10
   1F22 F7                 7328 	.byte	-9
   1F23 FF                 7329 	.byte	-1
   1F24 15                 7330 	.byte	21
   1F25 03                 7331 	.byte	3
   1F26 00                 7332 	.byte	0
   1F27 E8                 7333 	.byte	-24
   1F28 F0                 7334 	.byte	-16
   1F29 FF                 7335 	.byte	-1
   1F2A 15                 7336 	.byte	21
   1F2B 03                 7337 	.byte	3
   1F2C 00                 7338 	.byte	0
   1F2D F5                 7339 	.byte	-11
   1F2E 05                 7340 	.byte	5
   1F2F FF                 7341 	.byte	-1
   1F30 03                 7342 	.byte	3
   1F31 0E                 7343 	.byte	14
   1F32 FF                 7344 	.byte	-1
   1F33 0B                 7345 	.byte	11
   1F34 FA                 7346 	.byte	-6
   1F35 FF                 7347 	.byte	-1
   1F36 FD                 7348 	.byte	-3
   1F37 F3                 7349 	.byte	-13
   1F38 FF                 7350 	.byte	-1
   1F39 F5                 7351 	.byte	-11
   1F3A 05                 7352 	.byte	5
   1F3B 01                 7353 	.byte	1
                           7354 	.globl _height2RisingBack2
   1F3C                    7355 _height2RisingBack2:
   1F3C 00                 7356 	.byte	0
   1F3D 10                 7357 	.byte	16
   1F3E F5                 7358 	.byte	-11
   1F3F FF                 7359 	.byte	-1
   1F40 03                 7360 	.byte	3
   1F41 0D                 7361 	.byte	13
   1F42 FF                 7362 	.byte	-1
   1F43 0F                 7363 	.byte	15
   1F44 FE                 7364 	.byte	-2
   1F45 FF                 7365 	.byte	-1
   1F46 FD                 7366 	.byte	-3
   1F47 F3                 7367 	.byte	-13
   1F48 FF                 7368 	.byte	-1
   1F49 F1                 7369 	.byte	-15
   1F4A 02                 7370 	.byte	2
   1F4B FF                 7371 	.byte	-1
   1F4C FB                 7372 	.byte	-5
   1F4D 0B                 7373 	.byte	11
   1F4E 00                 7374 	.byte	0
   1F4F 08                 7375 	.byte	8
   1F50 02                 7376 	.byte	2
   1F51 FF                 7377 	.byte	-1
   1F52 FB                 7378 	.byte	-5
   1F53 0B                 7379 	.byte	11
   1F54 00                 7380 	.byte	0
   1F55 14                 7381 	.byte	20
   1F56 F3                 7382 	.byte	-13
   1F57 FF                 7383 	.byte	-1
   1F58 FB                 7384 	.byte	-5
   1F59 0B                 7385 	.byte	11
   1F5A 00                 7386 	.byte	0
   1F5B 02                 7387 	.byte	2
   1F5C E8                 7388 	.byte	-24
   1F5D FF                 7389 	.byte	-1
   1F5E FB                 7390 	.byte	-5
   1F5F 0B                 7391 	.byte	11
   1F60 00                 7392 	.byte	0
   1F61 F1                 7393 	.byte	-15
   1F62 02                 7394 	.byte	2
   1F63 FF                 7395 	.byte	-1
   1F64 03                 7396 	.byte	3
   1F65 0D                 7397 	.byte	13
   1F66 FF                 7398 	.byte	-1
   1F67 0F                 7399 	.byte	15
   1F68 FE                 7400 	.byte	-2
   1F69 FF                 7401 	.byte	-1
   1F6A FD                 7402 	.byte	-3
   1F6B F3                 7403 	.byte	-13
   1F6C FF                 7404 	.byte	-1
   1F6D F1                 7405 	.byte	-15
   1F6E 02                 7406 	.byte	2
   1F6F 01                 7407 	.byte	1
                           7408 	.globl _depth2RollingLeft2
   1F70                    7409 _depth2RollingLeft2:
   1F70 FF                 7410 	.byte	-1
   1F71 06                 7411 	.byte	6
   1F72 0E                 7412 	.byte	14
   1F73 FF                 7413 	.byte	-1
   1F74 10                 7414 	.byte	16
   1F75 F4                 7415 	.byte	-12
   1F76 FF                 7416 	.byte	-1
   1F77 FA                 7417 	.byte	-6
   1F78 F3                 7418 	.byte	-13
   1F79 FF                 7419 	.byte	-1
   1F7A F0                 7420 	.byte	-16
   1F7B 0B                 7421 	.byte	11
   1F7C FF                 7422 	.byte	-1
   1F7D 0C                 7423 	.byte	12
   1F7E FD                 7424 	.byte	-3
   1F7F 00                 7425 	.byte	0
   1F80 FA                 7426 	.byte	-6
   1F81 11                 7427 	.byte	17
   1F82 FF                 7428 	.byte	-1
   1F83 0C                 7429 	.byte	12
   1F84 FC                 7430 	.byte	-4
   1F85 00                 7431 	.byte	0
   1F86 04                 7432 	.byte	4
   1F87 F8                 7433 	.byte	-8
   1F88 FF                 7434 	.byte	-1
   1F89 0C                 7435 	.byte	12
   1F8A FD                 7436 	.byte	-3
   1F8B 00                 7437 	.byte	0
   1F8C EE                 7438 	.byte	-18
   1F8D F6                 7439 	.byte	-10
   1F8E FF                 7440 	.byte	-1
   1F8F 0C                 7441 	.byte	12
   1F90 FC                 7442 	.byte	-4
   1F91 00                 7443 	.byte	0
   1F92 F0                 7444 	.byte	-16
   1F93 0C                 7445 	.byte	12
   1F94 FF                 7446 	.byte	-1
   1F95 06                 7447 	.byte	6
   1F96 0D                 7448 	.byte	13
   1F97 FF                 7449 	.byte	-1
   1F98 10                 7450 	.byte	16
   1F99 F5                 7451 	.byte	-11
   1F9A FF                 7452 	.byte	-1
   1F9B FA                 7453 	.byte	-6
   1F9C F2                 7454 	.byte	-14
   1F9D FF                 7455 	.byte	-1
   1F9E F0                 7456 	.byte	-16
   1F9F 0C                 7457 	.byte	12
   1FA0 01                 7458 	.byte	1
                           7459 	.globl _depth2RollingRight2
   1FA1                    7460 _depth2RollingRight2:
   1FA1 00                 7461 	.byte	0
   1FA2 03                 7462 	.byte	3
   1FA3 00                 7463 	.byte	0
   1FA4 FF                 7464 	.byte	-1
   1FA5 00                 7465 	.byte	0
   1FA6 0E                 7466 	.byte	14
   1FA7 FF                 7467 	.byte	-1
   1FA8 10                 7468 	.byte	16
   1FA9 F4                 7469 	.byte	-12
   1FAA FF                 7470 	.byte	-1
   1FAB 00                 7471 	.byte	0
   1FAC F3                 7472 	.byte	-13
   1FAD FF                 7473 	.byte	-1
   1FAE F0                 7474 	.byte	-16
   1FAF 0B                 7475 	.byte	11
   1FB0 FF                 7476 	.byte	-1
   1FB1 0E                 7477 	.byte	14
   1FB2 04                 7478 	.byte	4
   1FB3 00                 7479 	.byte	0
   1FB4 F2                 7480 	.byte	-14
   1FB5 0A                 7481 	.byte	10
   1FB6 FF                 7482 	.byte	-1
   1FB7 0D                 7483 	.byte	13
   1FB8 04                 7484 	.byte	4
   1FB9 00                 7485 	.byte	0
   1FBA 03                 7486 	.byte	3
   1FBB F0                 7487 	.byte	-16
   1FBC FF                 7488 	.byte	-1
   1FBD 0D                 7489 	.byte	13
   1FBE 04                 7490 	.byte	4
   1FBF 00                 7491 	.byte	0
   1FC0 F3                 7492 	.byte	-13
   1FC1 EF                 7493 	.byte	-17
   1FC2 FF                 7494 	.byte	-1
   1FC3 0E                 7495 	.byte	14
   1FC4 04                 7496 	.byte	4
   1FC5 00                 7497 	.byte	0
   1FC6 F0                 7498 	.byte	-16
   1FC7 0B                 7499 	.byte	11
   1FC8 FF                 7500 	.byte	-1
   1FC9 FF                 7501 	.byte	-1
   1FCA 0E                 7502 	.byte	14
   1FCB FF                 7503 	.byte	-1
   1FCC 10                 7504 	.byte	16
   1FCD F4                 7505 	.byte	-12
   1FCE FF                 7506 	.byte	-1
   1FCF 01                 7507 	.byte	1
   1FD0 F3                 7508 	.byte	-13
   1FD1 FF                 7509 	.byte	-1
   1FD2 F0                 7510 	.byte	-16
   1FD3 0B                 7511 	.byte	11
   1FD4 01                 7512 	.byte	1
                           7513 	.globl _width2RollingFront2
   1FD5                    7514 _width2RollingFront2:
   1FD5 FF                 7515 	.byte	-1
   1FD6 06                 7516 	.byte	6
   1FD7 1C                 7517 	.byte	28
   1FD8 FF                 7518 	.byte	-1
   1FD9 0B                 7519 	.byte	11
   1FDA FA                 7520 	.byte	-6
   1FDB FF                 7521 	.byte	-1
   1FDC FA                 7522 	.byte	-6
   1FDD E5                 7523 	.byte	-27
   1FDE FF                 7524 	.byte	-1
   1FDF F5                 7525 	.byte	-11
   1FE0 05                 7526 	.byte	5
   1FE1 FF                 7527 	.byte	-1
   1FE2 0A                 7528 	.byte	10
   1FE3 02                 7529 	.byte	2
   1FE4 00                 7530 	.byte	0
   1FE5 FC                 7531 	.byte	-4
   1FE6 1A                 7532 	.byte	26
   1FE7 FF                 7533 	.byte	-1
   1FE8 0A                 7534 	.byte	10
   1FE9 02                 7535 	.byte	2
   1FEA 00                 7536 	.byte	0
   1FEB 01                 7537 	.byte	1
   1FEC F8                 7538 	.byte	-8
   1FED FF                 7539 	.byte	-1
   1FEE 0B                 7540 	.byte	11
   1FEF 02                 7541 	.byte	2
   1FF0 00                 7542 	.byte	0
   1FF1 EF                 7543 	.byte	-17
   1FF2 E3                 7544 	.byte	-29
   1FF3 FF                 7545 	.byte	-1
   1FF4 0B                 7546 	.byte	11
   1FF5 02                 7547 	.byte	2
   1FF6 00                 7548 	.byte	0
   1FF7 F4                 7549 	.byte	-12
   1FF8 05                 7550 	.byte	5
   1FF9 FF                 7551 	.byte	-1
   1FFA 06                 7552 	.byte	6
   1FFB 1C                 7553 	.byte	28
   1FFC FF                 7554 	.byte	-1
   1FFD 0C                 7555 	.byte	12
   1FFE FA                 7556 	.byte	-6
   1FFF FF                 7557 	.byte	-1
   2000 FA                 7558 	.byte	-6
   2001 E5                 7559 	.byte	-27
   2002 FF                 7560 	.byte	-1
   2003 F4                 7561 	.byte	-12
   2004 05                 7562 	.byte	5
   2005 01                 7563 	.byte	1
                           7564 	.globl _width2RollingBack2
   2006                    7565 _width2RollingBack2:
   2006 00                 7566 	.byte	0
   2007 04                 7567 	.byte	4
   2008 00                 7568 	.byte	0
   2009 FF                 7569 	.byte	-1
   200A 06                 7570 	.byte	6
   200B 1C                 7571 	.byte	28
   200C FF                 7572 	.byte	-1
   200D 04                 7573 	.byte	4
   200E FA                 7574 	.byte	-6
   200F FF                 7575 	.byte	-1
   2010 FA                 7576 	.byte	-6
   2011 E5                 7577 	.byte	-27
   2012 FF                 7578 	.byte	-1
   2013 FC                 7579 	.byte	-4
   2014 05                 7580 	.byte	5
   2015 FF                 7581 	.byte	-1
   2016 0E                 7582 	.byte	14
   2017 FF                 7583 	.byte	-1
   2018 00                 7584 	.byte	0
   2019 F8                 7585 	.byte	-8
   201A 1D                 7586 	.byte	29
   201B FF                 7587 	.byte	-1
   201C 0E                 7588 	.byte	14
   201D FE                 7589 	.byte	-2
   201E 00                 7590 	.byte	0
   201F F6                 7591 	.byte	-10
   2020 FC                 7592 	.byte	-4
   2021 FF                 7593 	.byte	-1
   2022 0F                 7594 	.byte	15
   2023 FE                 7595 	.byte	-2
   2024 00                 7596 	.byte	0
   2025 EB                 7597 	.byte	-21
   2026 E7                 7598 	.byte	-25
   2027 FF                 7599 	.byte	-1
   2028 0F                 7600 	.byte	15
   2029 FE                 7601 	.byte	-2
   202A 00                 7602 	.byte	0
   202B FB                 7603 	.byte	-5
   202C 06                 7604 	.byte	6
   202D FF                 7605 	.byte	-1
   202E 06                 7606 	.byte	6
   202F 1B                 7607 	.byte	27
   2030 FF                 7608 	.byte	-1
   2031 05                 7609 	.byte	5
   2032 FA                 7610 	.byte	-6
   2033 FF                 7611 	.byte	-1
   2034 FA                 7612 	.byte	-6
   2035 E5                 7613 	.byte	-27
   2036 FF                 7614 	.byte	-1
   2037 FB                 7615 	.byte	-5
   2038 06                 7616 	.byte	6
   2039 01                 7617 	.byte	1
                           7618 	.globl _height2FallingLeft3
   203A                    7619 _height2FallingLeft3:
   203A FF                 7620 	.byte	-1
   203B 08                 7621 	.byte	8
   203C 0D                 7622 	.byte	13
   203D FF                 7623 	.byte	-1
   203E 08                 7624 	.byte	8
   203F FA                 7625 	.byte	-6
   2040 FF                 7626 	.byte	-1
   2041 F8                 7627 	.byte	-8
   2042 F4                 7628 	.byte	-12
   2043 FF                 7629 	.byte	-1
   2044 F8                 7630 	.byte	-8
   2045 05                 7631 	.byte	5
   2046 FF                 7632 	.byte	-1
   2047 16                 7633 	.byte	22
   2048 F6                 7634 	.byte	-10
   2049 00                 7635 	.byte	0
   204A F2                 7636 	.byte	-14
   204B 17                 7637 	.byte	23
   204C FF                 7638 	.byte	-1
   204D 15                 7639 	.byte	21
   204E F5                 7640 	.byte	-11
   204F 00                 7641 	.byte	0
   2050 F3                 7642 	.byte	-13
   2051 05                 7643 	.byte	5
   2052 FF                 7644 	.byte	-1
   2053 15                 7645 	.byte	21
   2054 F6                 7646 	.byte	-10
   2055 00                 7647 	.byte	0
   2056 E3                 7648 	.byte	-29
   2057 FE                 7649 	.byte	-2
   2058 FF                 7650 	.byte	-1
   2059 16                 7651 	.byte	22
   205A F5                 7652 	.byte	-11
   205B 00                 7653 	.byte	0
   205C F8                 7654 	.byte	-8
   205D 06                 7655 	.byte	6
   205E FF                 7656 	.byte	-1
   205F 07                 7657 	.byte	7
   2060 0C                 7658 	.byte	12
   2061 FF                 7659 	.byte	-1
   2062 08                 7660 	.byte	8
   2063 FB                 7661 	.byte	-5
   2064 FF                 7662 	.byte	-1
   2065 F9                 7663 	.byte	-7
   2066 F3                 7664 	.byte	-13
   2067 FF                 7665 	.byte	-1
   2068 F8                 7666 	.byte	-8
   2069 06                 7667 	.byte	6
   206A 01                 7668 	.byte	1
                           7669 	.globl _height2RisingRight3
   206B                    7670 _height2RisingRight3:
   206B 00                 7671 	.byte	0
   206C 06                 7672 	.byte	6
   206D 1C                 7673 	.byte	28
   206E FF                 7674 	.byte	-1
   206F 0D                 7675 	.byte	13
   2070 07                 7676 	.byte	7
   2071 FF                 7677 	.byte	-1
   2072 08                 7678 	.byte	8
   2073 FA                 7679 	.byte	-6
   2074 FF                 7680 	.byte	-1
   2075 F3                 7681 	.byte	-13
   2076 F9                 7682 	.byte	-7
   2077 FF                 7683 	.byte	-1
   2078 F8                 7684 	.byte	-8
   2079 06                 7685 	.byte	6
   207A FF                 7686 	.byte	-1
   207B 08                 7687 	.byte	8
   207C E8                 7688 	.byte	-24
   207D 00                 7689 	.byte	0
   207E 05                 7690 	.byte	5
   207F 1F                 7691 	.byte	31
   2080 FF                 7692 	.byte	-1
   2081 08                 7693 	.byte	8
   2082 E8                 7694 	.byte	-24
   2083 00                 7695 	.byte	0
   2084 00                 7696 	.byte	0
   2085 12                 7697 	.byte	18
   2086 FF                 7698 	.byte	-1
   2087 08                 7699 	.byte	8
   2088 E8                 7700 	.byte	-24
   2089 00                 7701 	.byte	0
   208A EB                 7702 	.byte	-21
   208B 11                 7703 	.byte	17
   208C FF                 7704 	.byte	-1
   208D 08                 7705 	.byte	8
   208E E9                 7706 	.byte	-23
   208F 00                 7707 	.byte	0
   2090 F8                 7708 	.byte	-8
   2091 05                 7709 	.byte	5
   2092 FF                 7710 	.byte	-1
   2093 0D                 7711 	.byte	13
   2094 07                 7712 	.byte	7
   2095 FF                 7713 	.byte	-1
   2096 08                 7714 	.byte	8
   2097 FA                 7715 	.byte	-6
   2098 FF                 7716 	.byte	-1
   2099 F3                 7717 	.byte	-13
   209A FA                 7718 	.byte	-6
   209B FF                 7719 	.byte	-1
   209C F8                 7720 	.byte	-8
   209D 05                 7721 	.byte	5
   209E 01                 7722 	.byte	1
                           7723 	.globl _height2FallingRight3
   209F                    7724 _height2FallingRight3:
   209F 00                 7725 	.byte	0
   20A0 05                 7726 	.byte	5
   20A1 01                 7727 	.byte	1
   20A2 FF                 7728 	.byte	-1
   20A3 FE                 7729 	.byte	-2
   20A4 0D                 7730 	.byte	13
   20A5 FF                 7731 	.byte	-1
   20A6 08                 7732 	.byte	8
   20A7 FA                 7733 	.byte	-6
   20A8 FF                 7734 	.byte	-1
   20A9 02                 7735 	.byte	2
   20AA F4                 7736 	.byte	-12
   20AB FF                 7737 	.byte	-1
   20AC F8                 7738 	.byte	-8
   20AD 05                 7739 	.byte	5
   20AE FF                 7740 	.byte	-1
   20AF 1B                 7741 	.byte	27
   20B0 0B                 7742 	.byte	11
   20B1 00                 7743 	.byte	0
   20B2 E3                 7744 	.byte	-29
   20B3 02                 7745 	.byte	2
   20B4 FF                 7746 	.byte	-1
   20B5 1A                 7747 	.byte	26
   20B6 0B                 7748 	.byte	11
   20B7 00                 7749 	.byte	0
   20B8 EE                 7750 	.byte	-18
   20B9 EF                 7751 	.byte	-17
   20BA FF                 7752 	.byte	-1
   20BB 1A                 7753 	.byte	26
   20BC 0B                 7754 	.byte	11
   20BD 00                 7755 	.byte	0
   20BE E8                 7756 	.byte	-24
   20BF E9                 7757 	.byte	-23
   20C0 FF                 7758 	.byte	-1
   20C1 1B                 7759 	.byte	27
   20C2 0A                 7760 	.byte	10
   20C3 00                 7761 	.byte	0
   20C4 F8                 7762 	.byte	-8
   20C5 06                 7763 	.byte	6
   20C6 FF                 7764 	.byte	-1
   20C7 FD                 7765 	.byte	-3
   20C8 0D                 7766 	.byte	13
   20C9 FF                 7767 	.byte	-1
   20CA 08                 7768 	.byte	8
   20CB FA                 7769 	.byte	-6
   20CC FF                 7770 	.byte	-1
   20CD 03                 7771 	.byte	3
   20CE F3                 7772 	.byte	-13
   20CF FF                 7773 	.byte	-1
   20D0 F8                 7774 	.byte	-8
   20D1 06                 7775 	.byte	6
   20D2 01                 7776 	.byte	1
                           7777 	.globl _height2RisingLeft3
   20D3                    7778 _height2RisingLeft3:
   20D3 00                 7779 	.byte	0
   20D4 0A                 7780 	.byte	10
   20D5 FA                 7781 	.byte	-6
   20D6 FF                 7782 	.byte	-1
   20D7 F6                 7783 	.byte	-10
   20D8 06                 7784 	.byte	6
   20D9 FF                 7785 	.byte	-1
   20DA 08                 7786 	.byte	8
   20DB FB                 7787 	.byte	-5
   20DC FF                 7788 	.byte	-1
   20DD 0A                 7789 	.byte	10
   20DE F9                 7790 	.byte	-7
   20DF FF                 7791 	.byte	-1
   20E0 F8                 7792 	.byte	-8
   20E1 06                 7793 	.byte	6
   20E2 FF                 7794 	.byte	-1
   20E3 12                 7795 	.byte	18
   20E4 17                 7796 	.byte	23
   20E5 00                 7797 	.byte	0
   20E6 E4                 7798 	.byte	-28
   20E7 EF                 7799 	.byte	-17
   20E8 FF                 7800 	.byte	-1
   20E9 12                 7801 	.byte	18
   20EA 18                 7802 	.byte	24
   20EB 00                 7803 	.byte	0
   20EC F6                 7804 	.byte	-10
   20ED E3                 7805 	.byte	-29
   20EE FF                 7806 	.byte	-1
   20EF 12                 7807 	.byte	18
   20F0 17                 7808 	.byte	23
   20F1 00                 7809 	.byte	0
   20F2 F8                 7810 	.byte	-8
   20F3 E2                 7811 	.byte	-30
   20F4 FF                 7812 	.byte	-1
   20F5 12                 7813 	.byte	18
   20F6 17                 7814 	.byte	23
   20F7 00                 7815 	.byte	0
   20F8 F8                 7816 	.byte	-8
   20F9 06                 7817 	.byte	6
   20FA FF                 7818 	.byte	-1
   20FB F6                 7819 	.byte	-10
   20FC 07                 7820 	.byte	7
   20FD FF                 7821 	.byte	-1
   20FE 08                 7822 	.byte	8
   20FF FA                 7823 	.byte	-6
   2100 FF                 7824 	.byte	-1
   2101 0A                 7825 	.byte	10
   2102 F9                 7826 	.byte	-7
   2103 FF                 7827 	.byte	-1
   2104 F8                 7828 	.byte	-8
   2105 06                 7829 	.byte	6
   2106 01                 7830 	.byte	1
                           7831 	.globl _height2FallingBack3
   2107                    7832 _height2FallingBack3:
   2107 00                 7833 	.byte	0
   2108 06                 7834 	.byte	6
   2109 00                 7835 	.byte	0
   210A FF                 7836 	.byte	-1
   210B 03                 7837 	.byte	3
   210C 0E                 7838 	.byte	14
   210D FF                 7839 	.byte	-1
   210E 02                 7840 	.byte	2
   210F FA                 7841 	.byte	-6
   2110 FF                 7842 	.byte	-1
   2111 FD                 7843 	.byte	-3
   2112 F3                 7844 	.byte	-13
   2113 FF                 7845 	.byte	-1
   2114 FE                 7846 	.byte	-2
   2115 05                 7847 	.byte	5
   2116 FF                 7848 	.byte	-1
   2117 1E                 7849 	.byte	30
   2118 FC                 7850 	.byte	-4
   2119 00                 7851 	.byte	0
   211A E5                 7852 	.byte	-27
   211B 12                 7853 	.byte	18
   211C FF                 7854 	.byte	-1
   211D 1E                 7855 	.byte	30
   211E FB                 7856 	.byte	-5
   211F 00                 7857 	.byte	0
   2120 E4                 7858 	.byte	-28
   2121 FF                 7859 	.byte	-1
   2122 FF                 7860 	.byte	-1
   2123 1E                 7861 	.byte	30
   2124 FB                 7862 	.byte	-5
   2125 00                 7863 	.byte	0
   2126 DF                 7864 	.byte	-33
   2127 F8                 7865 	.byte	-8
   2128 FF                 7866 	.byte	-1
   2129 1E                 7867 	.byte	30
   212A FB                 7868 	.byte	-5
   212B 00                 7869 	.byte	0
   212C FE                 7870 	.byte	-2
   212D 06                 7871 	.byte	6
   212E FF                 7872 	.byte	-1
   212F 03                 7873 	.byte	3
   2130 0D                 7874 	.byte	13
   2131 FF                 7875 	.byte	-1
   2132 02                 7876 	.byte	2
   2133 FA                 7877 	.byte	-6
   2134 FF                 7878 	.byte	-1
   2135 FD                 7879 	.byte	-3
   2136 F3                 7880 	.byte	-13
   2137 FF                 7881 	.byte	-1
   2138 FE                 7882 	.byte	-2
   2139 06                 7883 	.byte	6
   213A 01                 7884 	.byte	1
                           7885 	.globl _height2RisingFront3
   213B                    7886 _height2RisingFront3:
   213B 00                 7887 	.byte	0
   213C 07                 7888 	.byte	7
   213D 03                 7889 	.byte	3
   213E FF                 7890 	.byte	-1
   213F 03                 7891 	.byte	3
   2140 0E                 7892 	.byte	14
   2141 FF                 7893 	.byte	-1
   2142 F9                 7894 	.byte	-7
   2143 FD                 7895 	.byte	-3
   2144 FF                 7896 	.byte	-1
   2145 FD                 7897 	.byte	-3
   2146 F2                 7898 	.byte	-14
   2147 FF                 7899 	.byte	-1
   2148 07                 7900 	.byte	7
   2149 03                 7901 	.byte	3
   214A FF                 7902 	.byte	-1
   214B 1B                 7903 	.byte	27
   214C F7                 7904 	.byte	-9
   214D 00                 7905 	.byte	0
   214E E8                 7906 	.byte	-24
   214F 17                 7907 	.byte	23
   2150 FF                 7908 	.byte	-1
   2151 1B                 7909 	.byte	27
   2152 F6                 7910 	.byte	-10
   2153 00                 7911 	.byte	0
   2154 DE                 7912 	.byte	-34
   2155 07                 7913 	.byte	7
   2156 FF                 7914 	.byte	-1
   2157 1B                 7915 	.byte	27
   2158 F6                 7916 	.byte	-10
   2159 00                 7917 	.byte	0
   215A E2                 7918 	.byte	-30
   215B FC                 7919 	.byte	-4
   215C FF                 7920 	.byte	-1
   215D 1B                 7921 	.byte	27
   215E F7                 7922 	.byte	-9
   215F 00                 7923 	.byte	0
   2160 07                 7924 	.byte	7
   2161 03                 7925 	.byte	3
   2162 FF                 7926 	.byte	-1
   2163 03                 7927 	.byte	3
   2164 0D                 7928 	.byte	13
   2165 FF                 7929 	.byte	-1
   2166 F9                 7930 	.byte	-7
   2167 FD                 7931 	.byte	-3
   2168 FF                 7932 	.byte	-1
   2169 FD                 7933 	.byte	-3
   216A F3                 7934 	.byte	-13
   216B FF                 7935 	.byte	-1
   216C 07                 7936 	.byte	7
   216D 03                 7937 	.byte	3
   216E 01                 7938 	.byte	1
                           7939 	.globl _height2FallingFront3
   216F                    7940 _height2FallingFront3:
   216F FF                 7941 	.byte	-1
   2170 03                 7942 	.byte	3
   2171 0E                 7943 	.byte	14
   2172 FF                 7944 	.byte	-1
   2173 0C                 7945 	.byte	12
   2174 FA                 7946 	.byte	-6
   2175 FF                 7947 	.byte	-1
   2176 FD                 7948 	.byte	-3
   2177 F3                 7949 	.byte	-13
   2178 FF                 7950 	.byte	-1
   2179 F4                 7951 	.byte	-12
   217A 05                 7952 	.byte	5
   217B FF                 7953 	.byte	-1
   217C 12                 7954 	.byte	18
   217D 05                 7955 	.byte	5
   217E 00                 7956 	.byte	0
   217F F1                 7957 	.byte	-15
   2180 09                 7958 	.byte	9
   2181 FF                 7959 	.byte	-1
   2182 12                 7960 	.byte	18
   2183 05                 7961 	.byte	5
   2184 00                 7962 	.byte	0
   2185 FA                 7963 	.byte	-6
   2186 F5                 7964 	.byte	-11
   2187 FF                 7965 	.byte	-1
   2188 12                 7966 	.byte	18
   2189 05                 7967 	.byte	5
   218A 00                 7968 	.byte	0
   218B EB                 7969 	.byte	-21
   218C EE                 7970 	.byte	-18
   218D FF                 7971 	.byte	-1
   218E 12                 7972 	.byte	18
   218F 05                 7973 	.byte	5
   2190 00                 7974 	.byte	0
   2191 F4                 7975 	.byte	-12
   2192 05                 7976 	.byte	5
   2193 FF                 7977 	.byte	-1
   2194 03                 7978 	.byte	3
   2195 0E                 7979 	.byte	14
   2196 FF                 7980 	.byte	-1
   2197 0C                 7981 	.byte	12
   2198 FA                 7982 	.byte	-6
   2199 FF                 7983 	.byte	-1
   219A FD                 7984 	.byte	-3
   219B F3                 7985 	.byte	-13
   219C FF                 7986 	.byte	-1
   219D F4                 7987 	.byte	-12
   219E 05                 7988 	.byte	5
   219F 01                 7989 	.byte	1
                           7990 	.globl _height2RisingBack3
   21A0                    7991 _height2RisingBack3:
   21A0 00                 7992 	.byte	0
   21A1 10                 7993 	.byte	16
   21A2 F5                 7994 	.byte	-11
   21A3 FF                 7995 	.byte	-1
   21A4 03                 7996 	.byte	3
   21A5 0D                 7997 	.byte	13
   21A6 FF                 7998 	.byte	-1
   21A7 0F                 7999 	.byte	15
   21A8 FE                 8000 	.byte	-2
   21A9 FF                 8001 	.byte	-1
   21AA FD                 8002 	.byte	-3
   21AB F2                 8003 	.byte	-14
   21AC FF                 8004 	.byte	-1
   21AD F1                 8005 	.byte	-15
   21AE 03                 8006 	.byte	3
   21AF FF                 8007 	.byte	-1
   21B0 FF                 8008 	.byte	-1
   21B1 0A                 8009 	.byte	10
   21B2 00                 8010 	.byte	0
   21B3 04                 8011 	.byte	4
   21B4 03                 8012 	.byte	3
   21B5 FF                 8013 	.byte	-1
   21B6 FF                 8014 	.byte	-1
   21B7 0A                 8015 	.byte	10
   21B8 00                 8016 	.byte	0
   21B9 10                 8017 	.byte	16
   21BA F4                 8018 	.byte	-12
   21BB FF                 8019 	.byte	-1
   21BC FF                 8020 	.byte	-1
   21BD 09                 8021 	.byte	9
   21BE 00                 8022 	.byte	0
   21BF FE                 8023 	.byte	-2
   21C0 E9                 8024 	.byte	-23
   21C1 FF                 8025 	.byte	-1
   21C2 FF                 8026 	.byte	-1
   21C3 0A                 8027 	.byte	10
   21C4 00                 8028 	.byte	0
   21C5 F1                 8029 	.byte	-15
   21C6 03                 8030 	.byte	3
   21C7 FF                 8031 	.byte	-1
   21C8 03                 8032 	.byte	3
   21C9 0D                 8033 	.byte	13
   21CA FF                 8034 	.byte	-1
   21CB 0F                 8035 	.byte	15
   21CC FD                 8036 	.byte	-3
   21CD FF                 8037 	.byte	-1
   21CE FD                 8038 	.byte	-3
   21CF F3                 8039 	.byte	-13
   21D0 FF                 8040 	.byte	-1
   21D1 F1                 8041 	.byte	-15
   21D2 03                 8042 	.byte	3
   21D3 01                 8043 	.byte	1
                           8044 	.globl _depth2RollingLeft3
   21D4                    8045 _depth2RollingLeft3:
   21D4 FF                 8046 	.byte	-1
   21D5 08                 8047 	.byte	8
   21D6 0D                 8048 	.byte	13
   21D7 FF                 8049 	.byte	-1
   21D8 10                 8050 	.byte	16
   21D9 F4                 8051 	.byte	-12
   21DA FF                 8052 	.byte	-1
   21DB F8                 8053 	.byte	-8
   21DC F4                 8054 	.byte	-12
   21DD FF                 8055 	.byte	-1
   21DE F0                 8056 	.byte	-16
   21DF 0B                 8057 	.byte	11
   21E0 FF                 8058 	.byte	-1
   21E1 0B                 8059 	.byte	11
   21E2 FC                 8060 	.byte	-4
   21E3 00                 8061 	.byte	0
   21E4 FD                 8062 	.byte	-3
   21E5 11                 8063 	.byte	17
   21E6 FF                 8064 	.byte	-1
   21E7 0B                 8065 	.byte	11
   21E8 FB                 8066 	.byte	-5
   21E9 00                 8067 	.byte	0
   21EA 05                 8068 	.byte	5
   21EB F9                 8069 	.byte	-7
   21EC FF                 8070 	.byte	-1
   21ED 0B                 8071 	.byte	11
   21EE FC                 8072 	.byte	-4
   21EF 00                 8073 	.byte	0
   21F0 ED                 8074 	.byte	-19
   21F1 F8                 8075 	.byte	-8
   21F2 FF                 8076 	.byte	-1
   21F3 0B                 8077 	.byte	11
   21F4 FB                 8078 	.byte	-5
   21F5 00                 8079 	.byte	0
   21F6 F0                 8080 	.byte	-16
   21F7 0C                 8081 	.byte	12
   21F8 FF                 8082 	.byte	-1
   21F9 08                 8083 	.byte	8
   21FA 0C                 8084 	.byte	12
   21FB FF                 8085 	.byte	-1
   21FC 10                 8086 	.byte	16
   21FD F5                 8087 	.byte	-11
   21FE FF                 8088 	.byte	-1
   21FF F8                 8089 	.byte	-8
   2200 F3                 8090 	.byte	-13
   2201 FF                 8091 	.byte	-1
   2202 F0                 8092 	.byte	-16
   2203 0C                 8093 	.byte	12
   2204 01                 8094 	.byte	1
                           8095 	.globl _depth2RollingRight3
   2205                    8096 _depth2RollingRight3:
   2205 00                 8097 	.byte	0
   2206 05                 8098 	.byte	5
   2207 01                 8099 	.byte	1
   2208 FF                 8100 	.byte	-1
   2209 FE                 8101 	.byte	-2
   220A 0D                 8102 	.byte	13
   220B FF                 8103 	.byte	-1
   220C 10                 8104 	.byte	16
   220D F4                 8105 	.byte	-12
   220E FF                 8106 	.byte	-1
   220F 02                 8107 	.byte	2
   2210 F4                 8108 	.byte	-12
   2211 FF                 8109 	.byte	-1
   2212 F0                 8110 	.byte	-16
   2213 0B                 8111 	.byte	11
   2214 FF                 8112 	.byte	-1
   2215 0D                 8113 	.byte	13
   2216 05                 8114 	.byte	5
   2217 00                 8115 	.byte	0
   2218 F1                 8116 	.byte	-15
   2219 08                 8117 	.byte	8
   221A FF                 8118 	.byte	-1
   221B 0D                 8119 	.byte	13
   221C 05                 8120 	.byte	5
   221D 00                 8121 	.byte	0
   221E 03                 8122 	.byte	3
   221F EF                 8123 	.byte	-17
   2220 FF                 8124 	.byte	-1
   2221 0D                 8125 	.byte	13
   2222 05                 8126 	.byte	5
   2223 00                 8127 	.byte	0
   2224 F5                 8128 	.byte	-11
   2225 EF                 8129 	.byte	-17
   2226 FF                 8130 	.byte	-1
   2227 0D                 8131 	.byte	13
   2228 05                 8132 	.byte	5
   2229 00                 8133 	.byte	0
   222A F0                 8134 	.byte	-16
   222B 0B                 8135 	.byte	11
   222C FF                 8136 	.byte	-1
   222D FE                 8137 	.byte	-2
   222E 0D                 8138 	.byte	13
   222F FF                 8139 	.byte	-1
   2230 10                 8140 	.byte	16
   2231 F4                 8141 	.byte	-12
   2232 FF                 8142 	.byte	-1
   2233 02                 8143 	.byte	2
   2234 F4                 8144 	.byte	-12
   2235 FF                 8145 	.byte	-1
   2236 F0                 8146 	.byte	-16
   2237 0B                 8147 	.byte	11
   2238 01                 8148 	.byte	1
                           8149 	.globl _width2RollingFront3
   2239                    8150 _width2RollingFront3:
   2239 FF                 8151 	.byte	-1
   223A 06                 8152 	.byte	6
   223B 1C                 8153 	.byte	28
   223C FF                 8154 	.byte	-1
   223D 0C                 8155 	.byte	12
   223E FA                 8156 	.byte	-6
   223F FF                 8157 	.byte	-1
   2240 FA                 8158 	.byte	-6
   2241 E5                 8159 	.byte	-27
   2242 FF                 8160 	.byte	-1
   2243 F4                 8161 	.byte	-12
   2244 05                 8162 	.byte	5
   2245 FF                 8163 	.byte	-1
   2246 09                 8164 	.byte	9
   2247 02                 8165 	.byte	2
   2248 00                 8166 	.byte	0
   2249 FD                 8167 	.byte	-3
   224A 1A                 8168 	.byte	26
   224B FF                 8169 	.byte	-1
   224C 09                 8170 	.byte	9
   224D 02                 8171 	.byte	2
   224E 00                 8172 	.byte	0
   224F 03                 8173 	.byte	3
   2250 F8                 8174 	.byte	-8
   2251 FF                 8175 	.byte	-1
   2252 09                 8176 	.byte	9
   2253 03                 8177 	.byte	3
   2254 00                 8178 	.byte	0
   2255 F1                 8179 	.byte	-15
   2256 E2                 8180 	.byte	-30
   2257 FF                 8181 	.byte	-1
   2258 09                 8182 	.byte	9
   2259 03                 8183 	.byte	3
   225A 00                 8184 	.byte	0
   225B F4                 8185 	.byte	-12
   225C 04                 8186 	.byte	4
   225D FF                 8187 	.byte	-1
   225E 06                 8188 	.byte	6
   225F 1C                 8189 	.byte	28
   2260 FF                 8190 	.byte	-1
   2261 0C                 8191 	.byte	12
   2262 FB                 8192 	.byte	-5
   2263 FF                 8193 	.byte	-1
   2264 FA                 8194 	.byte	-6
   2265 E5                 8195 	.byte	-27
   2266 FF                 8196 	.byte	-1
   2267 F4                 8197 	.byte	-12
   2268 04                 8198 	.byte	4
   2269 01                 8199 	.byte	1
                           8200 	.globl _width2RollingBack3
   226A                    8201 _width2RollingBack3:
   226A 00                 8202 	.byte	0
   226B 06                 8203 	.byte	6
   226C 00                 8204 	.byte	0
   226D FF                 8205 	.byte	-1
   226E 06                 8206 	.byte	6
   226F 1C                 8207 	.byte	28
   2270 FF                 8208 	.byte	-1
   2271 02                 8209 	.byte	2
   2272 FA                 8210 	.byte	-6
   2273 FF                 8211 	.byte	-1
   2274 FA                 8212 	.byte	-6
   2275 E5                 8213 	.byte	-27
   2276 FF                 8214 	.byte	-1
   2277 FE                 8215 	.byte	-2
   2278 05                 8216 	.byte	5
   2279 FF                 8217 	.byte	-1
   227A 0F                 8218 	.byte	15
   227B FE                 8219 	.byte	-2
   227C 00                 8220 	.byte	0
   227D F7                 8221 	.byte	-9
   227E 1E                 8222 	.byte	30
   227F FF                 8223 	.byte	-1
   2280 0F                 8224 	.byte	15
   2281 FD                 8225 	.byte	-3
   2282 00                 8226 	.byte	0
   2283 F3                 8227 	.byte	-13
   2284 FD                 8228 	.byte	-3
   2285 FF                 8229 	.byte	-1
   2286 0F                 8230 	.byte	15
   2287 FE                 8231 	.byte	-2
   2288 00                 8232 	.byte	0
   2289 EB                 8233 	.byte	-21
   228A E7                 8234 	.byte	-25
   228B FF                 8235 	.byte	-1
   228C 0F                 8236 	.byte	15
   228D FE                 8237 	.byte	-2
   228E 00                 8238 	.byte	0
   228F FE                 8239 	.byte	-2
   2290 05                 8240 	.byte	5
   2291 FF                 8241 	.byte	-1
   2292 06                 8242 	.byte	6
   2293 1B                 8243 	.byte	27
   2294 FF                 8244 	.byte	-1
   2295 02                 8245 	.byte	2
   2296 FB                 8246 	.byte	-5
   2297 FF                 8247 	.byte	-1
   2298 FA                 8248 	.byte	-6
   2299 E5                 8249 	.byte	-27
   229A FF                 8250 	.byte	-1
   229B FE                 8251 	.byte	-2
   229C 05                 8252 	.byte	5
   229D 01                 8253 	.byte	1
                           8254 	.globl _height2FallingLeft4
   229E                    8255 _height2FallingLeft4:
   229E FF                 8256 	.byte	-1
   229F 09                 8257 	.byte	9
   22A0 0C                 8258 	.byte	12
   22A1 FF                 8259 	.byte	-1
   22A2 08                 8260 	.byte	8
   22A3 FA                 8261 	.byte	-6
   22A4 FF                 8262 	.byte	-1
   22A5 F7                 8263 	.byte	-9
   22A6 F5                 8264 	.byte	-11
   22A7 FF                 8265 	.byte	-1
   22A8 F8                 8266 	.byte	-8
   22A9 05                 8267 	.byte	5
   22AA FF                 8268 	.byte	-1
   22AB 14                 8269 	.byte	20
   22AC F3                 8270 	.byte	-13
   22AD 00                 8271 	.byte	0
   22AE F5                 8272 	.byte	-11
   22AF 19                 8273 	.byte	25
   22B0 FF                 8274 	.byte	-1
   22B1 14                 8275 	.byte	20
   22B2 F3                 8276 	.byte	-13
   22B3 00                 8277 	.byte	0
   22B4 F4                 8278 	.byte	-12
   22B5 07                 8279 	.byte	7
   22B6 FF                 8280 	.byte	-1
   22B7 14                 8281 	.byte	20
   22B8 F3                 8282 	.byte	-13
   22B9 00                 8283 	.byte	0
   22BA E3                 8284 	.byte	-29
   22BB 02                 8285 	.byte	2
   22BC FF                 8286 	.byte	-1
   22BD 14                 8287 	.byte	20
   22BE F2                 8288 	.byte	-14
   22BF 00                 8289 	.byte	0
   22C0 F8                 8290 	.byte	-8
   22C1 06                 8291 	.byte	6
   22C2 FF                 8292 	.byte	-1
   22C3 09                 8293 	.byte	9
   22C4 0C                 8294 	.byte	12
   22C5 FF                 8295 	.byte	-1
   22C6 08                 8296 	.byte	8
   22C7 FA                 8297 	.byte	-6
   22C8 FF                 8298 	.byte	-1
   22C9 F7                 8299 	.byte	-9
   22CA F4                 8300 	.byte	-12
   22CB FF                 8301 	.byte	-1
   22CC F8                 8302 	.byte	-8
   22CD 06                 8303 	.byte	6
   22CE 01                 8304 	.byte	1
                           8305 	.globl _height2RisingRight4
   22CF                    8306 _height2RisingRight4:
   22CF 00                 8307 	.byte	0
   22D0 06                 8308 	.byte	6
   22D1 1C                 8309 	.byte	28
   22D2 FF                 8310 	.byte	-1
   22D3 0C                 8311 	.byte	12
   22D4 09                 8312 	.byte	9
   22D5 FF                 8313 	.byte	-1
   22D6 08                 8314 	.byte	8
   22D7 FA                 8315 	.byte	-6
   22D8 FF                 8316 	.byte	-1
   22D9 F4                 8317 	.byte	-12
   22DA F7                 8318 	.byte	-9
   22DB FF                 8319 	.byte	-1
   22DC F8                 8320 	.byte	-8
   22DD 06                 8321 	.byte	6
   22DE FF                 8322 	.byte	-1
   22DF 0B                 8323 	.byte	11
   22E0 EA                 8324 	.byte	-22
   22E1 00                 8325 	.byte	0
   22E2 01                 8326 	.byte	1
   22E3 1F                 8327 	.byte	31
   22E4 FF                 8328 	.byte	-1
   22E5 0B                 8329 	.byte	11
   22E6 E9                 8330 	.byte	-23
   22E7 00                 8331 	.byte	0
   22E8 FD                 8332 	.byte	-3
   22E9 11                 8333 	.byte	17
   22EA FF                 8334 	.byte	-1
   22EB 0B                 8335 	.byte	11
   22EC E9                 8336 	.byte	-23
   22ED 00                 8337 	.byte	0
   22EE E9                 8338 	.byte	-23
   22EF 0E                 8339 	.byte	14
   22F0 FF                 8340 	.byte	-1
   22F1 0B                 8341 	.byte	11
   22F2 EA                 8342 	.byte	-22
   22F3 00                 8343 	.byte	0
   22F4 F8                 8344 	.byte	-8
   22F5 06                 8345 	.byte	6
   22F6 FF                 8346 	.byte	-1
   22F7 0C                 8347 	.byte	12
   22F8 08                 8348 	.byte	8
   22F9 FF                 8349 	.byte	-1
   22FA 08                 8350 	.byte	8
   22FB FA                 8351 	.byte	-6
   22FC FF                 8352 	.byte	-1
   22FD F4                 8353 	.byte	-12
   22FE F8                 8354 	.byte	-8
   22FF FF                 8355 	.byte	-1
   2300 F8                 8356 	.byte	-8
   2301 06                 8357 	.byte	6
   2302 01                 8358 	.byte	1
                           8359 	.globl _height2FallingRight4
   2303                    8360 _height2FallingRight4:
   2303 00                 8361 	.byte	0
   2304 07                 8362 	.byte	7
   2305 02                 8363 	.byte	2
   2306 FF                 8364 	.byte	-1
   2307 FC                 8365 	.byte	-4
   2308 0C                 8366 	.byte	12
   2309 FF                 8367 	.byte	-1
   230A 08                 8368 	.byte	8
   230B FA                 8369 	.byte	-6
   230C FF                 8370 	.byte	-1
   230D 04                 8371 	.byte	4
   230E F5                 8372 	.byte	-11
   230F FF                 8373 	.byte	-1
   2310 F8                 8374 	.byte	-8
   2311 05                 8375 	.byte	5
   2312 FF                 8376 	.byte	-1
   2313 19                 8377 	.byte	25
   2314 0E                 8378 	.byte	14
   2315 00                 8379 	.byte	0
   2316 E3                 8380 	.byte	-29
   2317 FE                 8381 	.byte	-2
   2318 FF                 8382 	.byte	-1
   2319 1A                 8383 	.byte	26
   231A 0E                 8384 	.byte	14
   231B 00                 8385 	.byte	0
   231C EE                 8386 	.byte	-18
   231D EC                 8387 	.byte	-20
   231E FF                 8388 	.byte	-1
   231F 1A                 8389 	.byte	26
   2320 0E                 8390 	.byte	14
   2321 00                 8391 	.byte	0
   2322 EA                 8392 	.byte	-22
   2323 E7                 8393 	.byte	-25
   2324 FF                 8394 	.byte	-1
   2325 19                 8395 	.byte	25
   2326 0D                 8396 	.byte	13
   2327 00                 8397 	.byte	0
   2328 F8                 8398 	.byte	-8
   2329 06                 8399 	.byte	6
   232A FF                 8400 	.byte	-1
   232B FD                 8401 	.byte	-3
   232C 0C                 8402 	.byte	12
   232D FF                 8403 	.byte	-1
   232E 08                 8404 	.byte	8
   232F FA                 8405 	.byte	-6
   2330 FF                 8406 	.byte	-1
   2331 03                 8407 	.byte	3
   2332 F4                 8408 	.byte	-12
   2333 FF                 8409 	.byte	-1
   2334 F8                 8410 	.byte	-8
   2335 06                 8411 	.byte	6
   2336 01                 8412 	.byte	1
                           8413 	.globl _height2RisingLeft4
   2337                    8414 _height2RisingLeft4:
   2337 00                 8415 	.byte	0
   2338 08                 8416 	.byte	8
   2339 F8                 8417 	.byte	-8
   233A FF                 8418 	.byte	-1
   233B F8                 8419 	.byte	-8
   233C 08                 8420 	.byte	8
   233D FF                 8421 	.byte	-1
   233E 08                 8422 	.byte	8
   233F FB                 8423 	.byte	-5
   2340 FF                 8424 	.byte	-1
   2341 08                 8425 	.byte	8
   2342 F7                 8426 	.byte	-9
   2343 FF                 8427 	.byte	-1
   2344 F8                 8428 	.byte	-8
   2345 06                 8429 	.byte	6
   2346 FF                 8430 	.byte	-1
   2347 15                 8431 	.byte	21
   2348 16                 8432 	.byte	22
   2349 00                 8433 	.byte	0
   234A E3                 8434 	.byte	-29
   234B F2                 8435 	.byte	-14
   234C FF                 8436 	.byte	-1
   234D 15                 8437 	.byte	21
   234E 16                 8438 	.byte	22
   234F 00                 8439 	.byte	0
   2350 F3                 8440 	.byte	-13
   2351 E5                 8441 	.byte	-27
   2352 FF                 8442 	.byte	-1
   2353 15                 8443 	.byte	21
   2354 15                 8444 	.byte	21
   2355 00                 8445 	.byte	0
   2356 F3                 8446 	.byte	-13
   2357 E2                 8447 	.byte	-30
   2358 FF                 8448 	.byte	-1
   2359 15                 8449 	.byte	21
   235A 16                 8450 	.byte	22
   235B 00                 8451 	.byte	0
   235C F8                 8452 	.byte	-8
   235D 06                 8453 	.byte	6
   235E FF                 8454 	.byte	-1
   235F F8                 8455 	.byte	-8
   2360 08                 8456 	.byte	8
   2361 FF                 8457 	.byte	-1
   2362 08                 8458 	.byte	8
   2363 FA                 8459 	.byte	-6
   2364 FF                 8460 	.byte	-1
   2365 08                 8461 	.byte	8
   2366 F8                 8462 	.byte	-8
   2367 FF                 8463 	.byte	-1
   2368 F8                 8464 	.byte	-8
   2369 06                 8465 	.byte	6
   236A 01                 8466 	.byte	1
                           8467 	.globl _height2FallingBack4
   236B                    8468 _height2FallingBack4:
   236B 00                 8469 	.byte	0
   236C 08                 8470 	.byte	8
   236D 00                 8471 	.byte	0
   236E FF                 8472 	.byte	-1
   236F 03                 8473 	.byte	3
   2370 0D                 8474 	.byte	13
   2371 FF                 8475 	.byte	-1
   2372 00                 8476 	.byte	0
   2373 FB                 8477 	.byte	-5
   2374 FF                 8478 	.byte	-1
   2375 FD                 8479 	.byte	-3
   2376 F3                 8480 	.byte	-13
   2377 FF                 8481 	.byte	-1
   2378 00                 8482 	.byte	0
   2379 05                 8483 	.byte	5
   237A FF                 8484 	.byte	-1
   237B 1E                 8485 	.byte	30
   237C FA                 8486 	.byte	-6
   237D 00                 8487 	.byte	0
   237E E5                 8488 	.byte	-27
   237F 13                 8489 	.byte	19
   2380 FF                 8490 	.byte	-1
   2381 1E                 8491 	.byte	30
   2382 FA                 8492 	.byte	-6
   2383 00                 8493 	.byte	0
   2384 E2                 8494 	.byte	-30
   2385 01                 8495 	.byte	1
   2386 FF                 8496 	.byte	-1
   2387 1F                 8497 	.byte	31
   2388 FA                 8498 	.byte	-6
   2389 00                 8499 	.byte	0
   238A DE                 8500 	.byte	-34
   238B F9                 8501 	.byte	-7
   238C FF                 8502 	.byte	-1
   238D 1F                 8503 	.byte	31
   238E FA                 8504 	.byte	-6
   238F 00                 8505 	.byte	0
   2390 FF                 8506 	.byte	-1
   2391 05                 8507 	.byte	5
   2392 FF                 8508 	.byte	-1
   2393 03                 8509 	.byte	3
   2394 0D                 8510 	.byte	13
   2395 FF                 8511 	.byte	-1
   2396 01                 8512 	.byte	1
   2397 FB                 8513 	.byte	-5
   2398 FF                 8514 	.byte	-1
   2399 FD                 8515 	.byte	-3
   239A F3                 8516 	.byte	-13
   239B FF                 8517 	.byte	-1
   239C FF                 8518 	.byte	-1
   239D 05                 8519 	.byte	5
   239E 01                 8520 	.byte	1
                           8521 	.globl _height2RisingFront4
   239F                    8522 _height2RisingFront4:
   239F 00                 8523 	.byte	0
   23A0 05                 8524 	.byte	5
   23A1 04                 8525 	.byte	4
   23A2 FF                 8526 	.byte	-1
   23A3 03                 8527 	.byte	3
   23A4 0E                 8528 	.byte	14
   23A5 FF                 8529 	.byte	-1
   23A6 FB                 8530 	.byte	-5
   23A7 FC                 8531 	.byte	-4
   23A8 FF                 8532 	.byte	-1
   23A9 FD                 8533 	.byte	-3
   23AA F2                 8534 	.byte	-14
   23AB FF                 8535 	.byte	-1
   23AC 05                 8536 	.byte	5
   23AD 04                 8537 	.byte	4
   23AE FF                 8538 	.byte	-1
   23AF 1D                 8539 	.byte	29
   23B0 F7                 8540 	.byte	-9
   23B1 00                 8541 	.byte	0
   23B2 E6                 8542 	.byte	-26
   23B3 17                 8543 	.byte	23
   23B4 FF                 8544 	.byte	-1
   23B5 1D                 8545 	.byte	29
   23B6 F6                 8546 	.byte	-10
   23B7 00                 8547 	.byte	0
   23B8 DE                 8548 	.byte	-34
   23B9 06                 8549 	.byte	6
   23BA FF                 8550 	.byte	-1
   23BB 1D                 8551 	.byte	29
   23BC F6                 8552 	.byte	-10
   23BD 00                 8553 	.byte	0
   23BE E0                 8554 	.byte	-32
   23BF FC                 8555 	.byte	-4
   23C0 FF                 8556 	.byte	-1
   23C1 1D                 8557 	.byte	29
   23C2 F7                 8558 	.byte	-9
   23C3 00                 8559 	.byte	0
   23C4 05                 8560 	.byte	5
   23C5 04                 8561 	.byte	4
   23C6 FF                 8562 	.byte	-1
   23C7 03                 8563 	.byte	3
   23C8 0D                 8564 	.byte	13
   23C9 FF                 8565 	.byte	-1
   23CA FB                 8566 	.byte	-5
   23CB FC                 8567 	.byte	-4
   23CC FF                 8568 	.byte	-1
   23CD FD                 8569 	.byte	-3
   23CE F3                 8570 	.byte	-13
   23CF FF                 8571 	.byte	-1
   23D0 05                 8572 	.byte	5
   23D1 04                 8573 	.byte	4
   23D2 01                 8574 	.byte	1
                           8575 	.globl _height2FallingFront4
   23D3                    8576 _height2FallingFront4:
   23D3 FF                 8577 	.byte	-1
   23D4 03                 8578 	.byte	3
   23D5 0E                 8579 	.byte	14
   23D6 FF                 8580 	.byte	-1
   23D7 0D                 8581 	.byte	13
   23D8 FB                 8582 	.byte	-5
   23D9 FF                 8583 	.byte	-1
   23DA FD                 8584 	.byte	-3
   23DB F3                 8585 	.byte	-13
   23DC FF                 8586 	.byte	-1
   23DD F3                 8587 	.byte	-13
   23DE 04                 8588 	.byte	4
   23DF FF                 8589 	.byte	-1
   23E0 0F                 8590 	.byte	15
   23E1 06                 8591 	.byte	6
   23E2 00                 8592 	.byte	0
   23E3 F4                 8593 	.byte	-12
   23E4 08                 8594 	.byte	8
   23E5 FF                 8595 	.byte	-1
   23E6 0F                 8596 	.byte	15
   23E7 06                 8597 	.byte	6
   23E8 00                 8598 	.byte	0
   23E9 FE                 8599 	.byte	-2
   23EA F5                 8600 	.byte	-11
   23EB FF                 8601 	.byte	-1
   23EC 0F                 8602 	.byte	15
   23ED 06                 8603 	.byte	6
   23EE 00                 8604 	.byte	0
   23EF EE                 8605 	.byte	-18
   23F0 ED                 8606 	.byte	-19
   23F1 FF                 8607 	.byte	-1
   23F2 0F                 8608 	.byte	15
   23F3 05                 8609 	.byte	5
   23F4 00                 8610 	.byte	0
   23F5 F3                 8611 	.byte	-13
   23F6 05                 8612 	.byte	5
   23F7 FF                 8613 	.byte	-1
   23F8 03                 8614 	.byte	3
   23F9 0E                 8615 	.byte	14
   23FA FF                 8616 	.byte	-1
   23FB 0D                 8617 	.byte	13
   23FC FB                 8618 	.byte	-5
   23FD FF                 8619 	.byte	-1
   23FE FD                 8620 	.byte	-3
   23FF F2                 8621 	.byte	-14
   2400 FF                 8622 	.byte	-1
   2401 F3                 8623 	.byte	-13
   2402 05                 8624 	.byte	5
   2403 01                 8625 	.byte	1
                           8626 	.globl _height2RisingBack4
   2404                    8627 _height2RisingBack4:
   2404 00                 8628 	.byte	0
   2405 10                 8629 	.byte	16
   2406 F5                 8630 	.byte	-11
   2407 FF                 8631 	.byte	-1
   2408 03                 8632 	.byte	3
   2409 0D                 8633 	.byte	13
   240A FF                 8634 	.byte	-1
   240B 0F                 8635 	.byte	15
   240C FD                 8636 	.byte	-3
   240D FF                 8637 	.byte	-1
   240E FD                 8638 	.byte	-3
   240F F2                 8639 	.byte	-14
   2410 FF                 8640 	.byte	-1
   2411 F1                 8641 	.byte	-15
   2412 04                 8642 	.byte	4
   2413 FF                 8643 	.byte	-1
   2414 03                 8644 	.byte	3
   2415 0A                 8645 	.byte	10
   2416 00                 8646 	.byte	0
   2417 00                 8647 	.byte	0
   2418 03                 8648 	.byte	3
   2419 FF                 8649 	.byte	-1
   241A 03                 8650 	.byte	3
   241B 0A                 8651 	.byte	10
   241C 00                 8652 	.byte	0
   241D 0C                 8653 	.byte	12
   241E F3                 8654 	.byte	-13
   241F FF                 8655 	.byte	-1
   2420 03                 8656 	.byte	3
   2421 09                 8657 	.byte	9
   2422 00                 8658 	.byte	0
   2423 FA                 8659 	.byte	-6
   2424 E9                 8660 	.byte	-23
   2425 FF                 8661 	.byte	-1
   2426 03                 8662 	.byte	3
   2427 0A                 8663 	.byte	10
   2428 00                 8664 	.byte	0
   2429 F1                 8665 	.byte	-15
   242A 04                 8666 	.byte	4
   242B FF                 8667 	.byte	-1
   242C 03                 8668 	.byte	3
   242D 0D                 8669 	.byte	13
   242E FF                 8670 	.byte	-1
   242F 0F                 8671 	.byte	15
   2430 FC                 8672 	.byte	-4
   2431 FF                 8673 	.byte	-1
   2432 FD                 8674 	.byte	-3
   2433 F3                 8675 	.byte	-13
   2434 FF                 8676 	.byte	-1
   2435 F1                 8677 	.byte	-15
   2436 04                 8678 	.byte	4
   2437 01                 8679 	.byte	1
                           8680 	.globl _depth2RollingLeft4
   2438                    8681 _depth2RollingLeft4:
   2438 FF                 8682 	.byte	-1
   2439 09                 8683 	.byte	9
   243A 0C                 8684 	.byte	12
   243B FF                 8685 	.byte	-1
   243C 10                 8686 	.byte	16
   243D F4                 8687 	.byte	-12
   243E FF                 8688 	.byte	-1
   243F F7                 8689 	.byte	-9
   2440 F5                 8690 	.byte	-11
   2441 FF                 8691 	.byte	-1
   2442 F0                 8692 	.byte	-16
   2443 0B                 8693 	.byte	11
   2444 FF                 8694 	.byte	-1
   2445 0A                 8695 	.byte	10
   2446 FA                 8696 	.byte	-6
   2447 00                 8697 	.byte	0
   2448 FF                 8698 	.byte	-1
   2449 12                 8699 	.byte	18
   244A FF                 8700 	.byte	-1
   244B 0A                 8701 	.byte	10
   244C F9                 8702 	.byte	-7
   244D 00                 8703 	.byte	0
   244E 06                 8704 	.byte	6
   244F FB                 8705 	.byte	-5
   2450 FF                 8706 	.byte	-1
   2451 0A                 8707 	.byte	10
   2452 FA                 8708 	.byte	-6
   2453 00                 8709 	.byte	0
   2454 ED                 8710 	.byte	-19
   2455 FB                 8711 	.byte	-5
   2456 FF                 8712 	.byte	-1
   2457 0A                 8713 	.byte	10
   2458 F9                 8714 	.byte	-7
   2459 00                 8715 	.byte	0
   245A F0                 8716 	.byte	-16
   245B 0C                 8717 	.byte	12
   245C FF                 8718 	.byte	-1
   245D 09                 8719 	.byte	9
   245E 0B                 8720 	.byte	11
   245F FF                 8721 	.byte	-1
   2460 10                 8722 	.byte	16
   2461 F5                 8723 	.byte	-11
   2462 FF                 8724 	.byte	-1
   2463 F7                 8725 	.byte	-9
   2464 F4                 8726 	.byte	-12
   2465 FF                 8727 	.byte	-1
   2466 F0                 8728 	.byte	-16
   2467 0C                 8729 	.byte	12
   2468 01                 8730 	.byte	1
                           8731 	.globl _depth2RollingRight4
   2469                    8732 _depth2RollingRight4:
   2469 00                 8733 	.byte	0
   246A 07                 8734 	.byte	7
   246B 02                 8735 	.byte	2
   246C FF                 8736 	.byte	-1
   246D FC                 8737 	.byte	-4
   246E 0C                 8738 	.byte	12
   246F FF                 8739 	.byte	-1
   2470 10                 8740 	.byte	16
   2471 F4                 8741 	.byte	-12
   2472 FF                 8742 	.byte	-1
   2473 04                 8743 	.byte	4
   2474 F5                 8744 	.byte	-11
   2475 FF                 8745 	.byte	-1
   2476 F0                 8746 	.byte	-16
   2477 0B                 8747 	.byte	11
   2478 FF                 8748 	.byte	-1
   2479 0D                 8749 	.byte	13
   247A 07                 8750 	.byte	7
   247B 00                 8751 	.byte	0
   247C EF                 8752 	.byte	-17
   247D 05                 8753 	.byte	5
   247E FF                 8754 	.byte	-1
   247F 0D                 8755 	.byte	13
   2480 07                 8756 	.byte	7
   2481 00                 8757 	.byte	0
   2482 03                 8758 	.byte	3
   2483 ED                 8759 	.byte	-19
   2484 FF                 8760 	.byte	-1
   2485 0D                 8761 	.byte	13
   2486 07                 8762 	.byte	7
   2487 00                 8763 	.byte	0
   2488 F7                 8764 	.byte	-9
   2489 EE                 8765 	.byte	-18
   248A FF                 8766 	.byte	-1
   248B 0D                 8767 	.byte	13
   248C 07                 8768 	.byte	7
   248D 00                 8769 	.byte	0
   248E F0                 8770 	.byte	-16
   248F 0B                 8771 	.byte	11
   2490 FF                 8772 	.byte	-1
   2491 FC                 8773 	.byte	-4
   2492 0C                 8774 	.byte	12
   2493 FF                 8775 	.byte	-1
   2494 10                 8776 	.byte	16
   2495 F4                 8777 	.byte	-12
   2496 FF                 8778 	.byte	-1
   2497 04                 8779 	.byte	4
   2498 F5                 8780 	.byte	-11
   2499 FF                 8781 	.byte	-1
   249A F0                 8782 	.byte	-16
   249B 0B                 8783 	.byte	11
   249C 01                 8784 	.byte	1
                           8785 	.globl _width2RollingFront4
   249D                    8786 _width2RollingFront4:
   249D FF                 8787 	.byte	-1
   249E 06                 8788 	.byte	6
   249F 1C                 8789 	.byte	28
   24A0 FF                 8790 	.byte	-1
   24A1 0D                 8791 	.byte	13
   24A2 FB                 8792 	.byte	-5
   24A3 FF                 8793 	.byte	-1
   24A4 FA                 8794 	.byte	-6
   24A5 E5                 8795 	.byte	-27
   24A6 FF                 8796 	.byte	-1
   24A7 F3                 8797 	.byte	-13
   24A8 04                 8798 	.byte	4
   24A9 FF                 8799 	.byte	-1
   24AA 07                 8800 	.byte	7
   24AB 03                 8801 	.byte	3
   24AC 00                 8802 	.byte	0
   24AD FF                 8803 	.byte	-1
   24AE 19                 8804 	.byte	25
   24AF FF                 8805 	.byte	-1
   24B0 07                 8806 	.byte	7
   24B1 03                 8807 	.byte	3
   24B2 00                 8808 	.byte	0
   24B3 06                 8809 	.byte	6
   24B4 F8                 8810 	.byte	-8
   24B5 FF                 8811 	.byte	-1
   24B6 08                 8812 	.byte	8
   24B7 03                 8813 	.byte	3
   24B8 00                 8814 	.byte	0
   24B9 F2                 8815 	.byte	-14
   24BA E2                 8816 	.byte	-30
   24BB FF                 8817 	.byte	-1
   24BC 08                 8818 	.byte	8
   24BD 03                 8819 	.byte	3
   24BE 00                 8820 	.byte	0
   24BF F2                 8821 	.byte	-14
   24C0 04                 8822 	.byte	4
   24C1 FF                 8823 	.byte	-1
   24C2 06                 8824 	.byte	6
   24C3 1C                 8825 	.byte	28
   24C4 FF                 8826 	.byte	-1
   24C5 0E                 8827 	.byte	14
   24C6 FB                 8828 	.byte	-5
   24C7 FF                 8829 	.byte	-1
   24C8 FA                 8830 	.byte	-6
   24C9 E5                 8831 	.byte	-27
   24CA FF                 8832 	.byte	-1
   24CB F2                 8833 	.byte	-14
   24CC 04                 8834 	.byte	4
   24CD 01                 8835 	.byte	1
                           8836 	.globl _width2RollingBack4
   24CE                    8837 _width2RollingBack4:
   24CE 00                 8838 	.byte	0
   24CF 08                 8839 	.byte	8
   24D0 00                 8840 	.byte	0
   24D1 FF                 8841 	.byte	-1
   24D2 06                 8842 	.byte	6
   24D3 1B                 8843 	.byte	27
   24D4 FF                 8844 	.byte	-1
   24D5 00                 8845 	.byte	0
   24D6 FB                 8846 	.byte	-5
   24D7 FF                 8847 	.byte	-1
   24D8 FA                 8848 	.byte	-6
   24D9 E5                 8849 	.byte	-27
   24DA FF                 8850 	.byte	-1
   24DB 00                 8851 	.byte	0
   24DC 05                 8852 	.byte	5
   24DD FF                 8853 	.byte	-1
   24DE 0F                 8854 	.byte	15
   24DF FD                 8855 	.byte	-3
   24E0 00                 8856 	.byte	0
   24E1 F7                 8857 	.byte	-9
   24E2 1E                 8858 	.byte	30
   24E3 FF                 8859 	.byte	-1
   24E4 0F                 8860 	.byte	15
   24E5 FD                 8861 	.byte	-3
   24E6 00                 8862 	.byte	0
   24E7 F1                 8863 	.byte	-15
   24E8 FE                 8864 	.byte	-2
   24E9 FF                 8865 	.byte	-1
   24EA 0F                 8866 	.byte	15
   24EB FD                 8867 	.byte	-3
   24EC 00                 8868 	.byte	0
   24ED EB                 8869 	.byte	-21
   24EE E8                 8870 	.byte	-24
   24EF FF                 8871 	.byte	-1
   24F0 0F                 8872 	.byte	15
   24F1 FD                 8873 	.byte	-3
   24F2 00                 8874 	.byte	0
   24F3 00                 8875 	.byte	0
   24F4 05                 8876 	.byte	5
   24F5 FF                 8877 	.byte	-1
   24F6 06                 8878 	.byte	6
   24F7 1B                 8879 	.byte	27
   24F8 FF                 8880 	.byte	-1
   24F9 00                 8881 	.byte	0
   24FA FB                 8882 	.byte	-5
   24FB FF                 8883 	.byte	-1
   24FC FA                 8884 	.byte	-6
   24FD E5                 8885 	.byte	-27
   24FE FF                 8886 	.byte	-1
   24FF 00                 8887 	.byte	0
   2500 05                 8888 	.byte	5
   2501 01                 8889 	.byte	1
                           8890 	.globl _height2FallingLeft5
   2502                    8891 _height2FallingLeft5:
   2502 FF                 8892 	.byte	-1
   2503 0A                 8893 	.byte	10
   2504 0B                 8894 	.byte	11
   2505 FF                 8895 	.byte	-1
   2506 08                 8896 	.byte	8
   2507 FA                 8897 	.byte	-6
   2508 FF                 8898 	.byte	-1
   2509 F6                 8899 	.byte	-10
   250A F6                 8900 	.byte	-10
   250B FF                 8901 	.byte	-1
   250C F8                 8902 	.byte	-8
   250D 05                 8903 	.byte	5
   250E FF                 8904 	.byte	-1
   250F 11                 8905 	.byte	17
   2510 F0                 8906 	.byte	-16
   2511 00                 8907 	.byte	0
   2512 F9                 8908 	.byte	-7
   2513 1B                 8909 	.byte	27
   2514 FF                 8910 	.byte	-1
   2515 11                 8911 	.byte	17
   2516 F0                 8912 	.byte	-16
   2517 00                 8913 	.byte	0
   2518 F7                 8914 	.byte	-9
   2519 0A                 8915 	.byte	10
   251A FF                 8916 	.byte	-1
   251B 11                 8917 	.byte	17
   251C F0                 8918 	.byte	-16
   251D 00                 8919 	.byte	0
   251E E5                 8920 	.byte	-27
   251F 06                 8921 	.byte	6
   2520 FF                 8922 	.byte	-1
   2521 11                 8923 	.byte	17
   2522 EF                 8924 	.byte	-17
   2523 00                 8925 	.byte	0
   2524 F8                 8926 	.byte	-8
   2525 06                 8927 	.byte	6
   2526 FF                 8928 	.byte	-1
   2527 0A                 8929 	.byte	10
   2528 0B                 8930 	.byte	11
   2529 FF                 8931 	.byte	-1
   252A 08                 8932 	.byte	8
   252B FA                 8933 	.byte	-6
   252C FF                 8934 	.byte	-1
   252D F6                 8935 	.byte	-10
   252E F5                 8936 	.byte	-11
   252F FF                 8937 	.byte	-1
   2530 F8                 8938 	.byte	-8
   2531 06                 8939 	.byte	6
   2532 01                 8940 	.byte	1
                           8941 	.globl _height2RisingRight5
   2533                    8942 _height2RisingRight5:
   2533 00                 8943 	.byte	0
   2534 06                 8944 	.byte	6
   2535 1C                 8945 	.byte	28
   2536 FF                 8946 	.byte	-1
   2537 0B                 8947 	.byte	11
   2538 0A                 8948 	.byte	10
   2539 FF                 8949 	.byte	-1
   253A 08                 8950 	.byte	8
   253B FA                 8951 	.byte	-6
   253C FF                 8952 	.byte	-1
   253D F5                 8953 	.byte	-11
   253E F6                 8954 	.byte	-10
   253F FF                 8955 	.byte	-1
   2540 F8                 8956 	.byte	-8
   2541 06                 8957 	.byte	6
   2542 FF                 8958 	.byte	-1
   2543 0E                 8959 	.byte	14
   2544 EC                 8960 	.byte	-20
   2545 00                 8961 	.byte	0
   2546 FD                 8962 	.byte	-3
   2547 1E                 8963 	.byte	30
   2548 FF                 8964 	.byte	-1
   2549 0E                 8965 	.byte	14
   254A EC                 8966 	.byte	-20
   254B 00                 8967 	.byte	0
   254C FA                 8968 	.byte	-6
   254D 0E                 8969 	.byte	14
   254E FF                 8970 	.byte	-1
   254F 0E                 8971 	.byte	14
   2550 EC                 8972 	.byte	-20
   2551 00                 8973 	.byte	0
   2552 E7                 8974 	.byte	-25
   2553 0A                 8975 	.byte	10
   2554 FF                 8976 	.byte	-1
   2555 0E                 8977 	.byte	14
   2556 EC                 8978 	.byte	-20
   2557 00                 8979 	.byte	0
   2558 F8                 8980 	.byte	-8
   2559 06                 8981 	.byte	6
   255A FF                 8982 	.byte	-1
   255B 0B                 8983 	.byte	11
   255C 0A                 8984 	.byte	10
   255D FF                 8985 	.byte	-1
   255E 08                 8986 	.byte	8
   255F FA                 8987 	.byte	-6
   2560 FF                 8988 	.byte	-1
   2561 F5                 8989 	.byte	-11
   2562 F6                 8990 	.byte	-10
   2563 FF                 8991 	.byte	-1
   2564 F8                 8992 	.byte	-8
   2565 06                 8993 	.byte	6
   2566 01                 8994 	.byte	1
                           8995 	.globl _height2FallingRight5
   2567                    8996 _height2FallingRight5:
   2567 00                 8997 	.byte	0
   2568 09                 8998 	.byte	9
   2569 03                 8999 	.byte	3
   256A FF                 9000 	.byte	-1
   256B FA                 9001 	.byte	-6
   256C 0B                 9002 	.byte	11
   256D FF                 9003 	.byte	-1
   256E 08                 9004 	.byte	8
   256F FA                 9005 	.byte	-6
   2570 FF                 9006 	.byte	-1
   2571 06                 9007 	.byte	6
   2572 F6                 9008 	.byte	-10
   2573 FF                 9009 	.byte	-1
   2574 F8                 9010 	.byte	-8
   2575 05                 9011 	.byte	5
   2576 FF                 9012 	.byte	-1
   2577 18                 9013 	.byte	24
   2578 11                 9014 	.byte	17
   2579 00                 9015 	.byte	0
   257A E2                 9016 	.byte	-30
   257B FA                 9017 	.byte	-6
   257C FF                 9018 	.byte	-1
   257D 18                 9019 	.byte	24
   257E 11                 9020 	.byte	17
   257F 00                 9021 	.byte	0
   2580 F0                 9022 	.byte	-16
   2581 E9                 9023 	.byte	-23
   2582 FF                 9024 	.byte	-1
   2583 18                 9025 	.byte	24
   2584 11                 9026 	.byte	17
   2585 00                 9027 	.byte	0
   2586 EE                 9028 	.byte	-18
   2587 E5                 9029 	.byte	-27
   2588 FF                 9030 	.byte	-1
   2589 18                 9031 	.byte	24
   258A 10                 9032 	.byte	16
   258B 00                 9033 	.byte	0
   258C F8                 9034 	.byte	-8
   258D 06                 9035 	.byte	6
   258E FF                 9036 	.byte	-1
   258F FA                 9037 	.byte	-6
   2590 0B                 9038 	.byte	11
   2591 FF                 9039 	.byte	-1
   2592 08                 9040 	.byte	8
   2593 FA                 9041 	.byte	-6
   2594 FF                 9042 	.byte	-1
   2595 06                 9043 	.byte	6
   2596 F5                 9044 	.byte	-11
   2597 FF                 9045 	.byte	-1
   2598 F8                 9046 	.byte	-8
   2599 06                 9047 	.byte	6
   259A 01                 9048 	.byte	1
                           9049 	.globl _height2RisingLeft5
   259B                    9050 _height2RisingLeft5:
   259B 00                 9051 	.byte	0
   259C 07                 9052 	.byte	7
   259D F7                 9053 	.byte	-9
   259E FF                 9054 	.byte	-1
   259F F9                 9055 	.byte	-7
   25A0 09                 9056 	.byte	9
   25A1 FF                 9057 	.byte	-1
   25A2 08                 9058 	.byte	8
   25A3 FB                 9059 	.byte	-5
   25A4 FF                 9060 	.byte	-1
   25A5 07                 9061 	.byte	7
   25A6 F6                 9062 	.byte	-10
   25A7 FF                 9063 	.byte	-1
   25A8 F8                 9064 	.byte	-8
   25A9 06                 9065 	.byte	6
   25AA FF                 9066 	.byte	-1
   25AB 17                 9067 	.byte	23
   25AC 13                 9068 	.byte	19
   25AD 00                 9069 	.byte	0
   25AE E2                 9070 	.byte	-30
   25AF F6                 9071 	.byte	-10
   25B0 FF                 9072 	.byte	-1
   25B1 17                 9073 	.byte	23
   25B2 14                 9074 	.byte	20
   25B3 00                 9075 	.byte	0
   25B4 F1                 9076 	.byte	-15
   25B5 E7                 9077 	.byte	-25
   25B6 FF                 9078 	.byte	-1
   25B7 17                 9079 	.byte	23
   25B8 13                 9080 	.byte	19
   25B9 00                 9081 	.byte	0
   25BA F0                 9082 	.byte	-16
   25BB E3                 9083 	.byte	-29
   25BC FF                 9084 	.byte	-1
   25BD 17                 9085 	.byte	23
   25BE 13                 9086 	.byte	19
   25BF 00                 9087 	.byte	0
   25C0 F8                 9088 	.byte	-8
   25C1 06                 9089 	.byte	6
   25C2 FF                 9090 	.byte	-1
   25C3 F9                 9091 	.byte	-7
   25C4 0A                 9092 	.byte	10
   25C5 FF                 9093 	.byte	-1
   25C6 08                 9094 	.byte	8
   25C7 FA                 9095 	.byte	-6
   25C8 FF                 9096 	.byte	-1
   25C9 07                 9097 	.byte	7
   25CA F6                 9098 	.byte	-10
   25CB FF                 9099 	.byte	-1
   25CC F8                 9100 	.byte	-8
   25CD 06                 9101 	.byte	6
   25CE 01                 9102 	.byte	1
                           9103 	.globl _height2FallingBack5
   25CF                    9104 _height2FallingBack5:
   25CF 00                 9105 	.byte	0
   25D0 0A                 9106 	.byte	10
   25D1 00                 9107 	.byte	0
   25D2 FF                 9108 	.byte	-1
   25D3 03                 9109 	.byte	3
   25D4 0D                 9110 	.byte	13
   25D5 FF                 9111 	.byte	-1
   25D6 FE                 9112 	.byte	-2
   25D7 FB                 9113 	.byte	-5
   25D8 FF                 9114 	.byte	-1
   25D9 FD                 9115 	.byte	-3
   25DA F3                 9116 	.byte	-13
   25DB FF                 9117 	.byte	-1
   25DC 02                 9118 	.byte	2
   25DD 05                 9119 	.byte	5
   25DE FF                 9120 	.byte	-1
   25DF 1E                 9121 	.byte	30
   25E0 F8                 9122 	.byte	-8
   25E1 00                 9123 	.byte	0
   25E2 E5                 9124 	.byte	-27
   25E3 15                 9125 	.byte	21
   25E4 FF                 9126 	.byte	-1
   25E5 1E                 9127 	.byte	30
   25E6 F8                 9128 	.byte	-8
   25E7 00                 9129 	.byte	0
   25E8 E0                 9130 	.byte	-32
   25E9 03                 9131 	.byte	3
   25EA FF                 9132 	.byte	-1
   25EB 1E                 9133 	.byte	30
   25EC F9                 9134 	.byte	-7
   25ED 00                 9135 	.byte	0
   25EE DF                 9136 	.byte	-33
   25EF FA                 9137 	.byte	-6
   25F0 FF                 9138 	.byte	-1
   25F1 1E                 9139 	.byte	30
   25F2 F9                 9140 	.byte	-7
   25F3 00                 9141 	.byte	0
   25F4 02                 9142 	.byte	2
   25F5 04                 9143 	.byte	4
   25F6 FF                 9144 	.byte	-1
   25F7 03                 9145 	.byte	3
   25F8 0D                 9146 	.byte	13
   25F9 FF                 9147 	.byte	-1
   25FA FE                 9148 	.byte	-2
   25FB FC                 9149 	.byte	-4
   25FC FF                 9150 	.byte	-1
   25FD FD                 9151 	.byte	-3
   25FE F3                 9152 	.byte	-13
   25FF FF                 9153 	.byte	-1
   2600 02                 9154 	.byte	2
   2601 04                 9155 	.byte	4
   2602 01                 9156 	.byte	1
                           9157 	.globl _height2RisingFront5
   2603                    9158 _height2RisingFront5:
   2603 00                 9159 	.byte	0
   2604 04                 9160 	.byte	4
   2605 04                 9161 	.byte	4
   2606 FF                 9162 	.byte	-1
   2607 03                 9163 	.byte	3
   2608 0E                 9164 	.byte	14
   2609 FF                 9165 	.byte	-1
   260A FC                 9166 	.byte	-4
   260B FC                 9167 	.byte	-4
   260C FF                 9168 	.byte	-1
   260D FD                 9169 	.byte	-3
   260E F2                 9170 	.byte	-14
   260F FF                 9171 	.byte	-1
   2610 04                 9172 	.byte	4
   2611 04                 9173 	.byte	4
   2612 FF                 9174 	.byte	-1
   2613 1D                 9175 	.byte	29
   2614 F9                 9176 	.byte	-7
   2615 00                 9177 	.byte	0
   2616 E6                 9178 	.byte	-26
   2617 15                 9179 	.byte	21
   2618 FF                 9180 	.byte	-1
   2619 1D                 9181 	.byte	29
   261A F8                 9182 	.byte	-8
   261B 00                 9183 	.byte	0
   261C DF                 9184 	.byte	-33
   261D 04                 9185 	.byte	4
   261E FF                 9186 	.byte	-1
   261F 1E                 9187 	.byte	30
   2620 F8                 9188 	.byte	-8
   2621 00                 9189 	.byte	0
   2622 DF                 9190 	.byte	-33
   2623 FA                 9191 	.byte	-6
   2624 FF                 9192 	.byte	-1
   2625 1E                 9193 	.byte	30
   2626 F9                 9194 	.byte	-7
   2627 00                 9195 	.byte	0
   2628 03                 9196 	.byte	3
   2629 04                 9197 	.byte	4
   262A FF                 9198 	.byte	-1
   262B 03                 9199 	.byte	3
   262C 0D                 9200 	.byte	13
   262D FF                 9201 	.byte	-1
   262E FD                 9202 	.byte	-3
   262F FC                 9203 	.byte	-4
   2630 FF                 9204 	.byte	-1
   2631 FD                 9205 	.byte	-3
   2632 F3                 9206 	.byte	-13
   2633 FF                 9207 	.byte	-1
   2634 03                 9208 	.byte	3
   2635 04                 9209 	.byte	4
   2636 01                 9210 	.byte	1
                           9211 	.globl _height2FallingFront5
   2637                    9212 _height2FallingFront5:
   2637 FF                 9213 	.byte	-1
   2638 03                 9214 	.byte	3
   2639 0E                 9215 	.byte	14
   263A FF                 9216 	.byte	-1
   263B 0E                 9217 	.byte	14
   263C FB                 9218 	.byte	-5
   263D FF                 9219 	.byte	-1
   263E FD                 9220 	.byte	-3
   263F F3                 9221 	.byte	-13
   2640 FF                 9222 	.byte	-1
   2641 F2                 9223 	.byte	-14
   2642 04                 9224 	.byte	4
   2643 FF                 9225 	.byte	-1
   2644 0B                 9226 	.byte	11
   2645 07                 9227 	.byte	7
   2646 00                 9228 	.byte	0
   2647 F8                 9229 	.byte	-8
   2648 07                 9230 	.byte	7
   2649 FF                 9231 	.byte	-1
   264A 0B                 9232 	.byte	11
   264B 07                 9233 	.byte	7
   264C 00                 9234 	.byte	0
   264D 03                 9235 	.byte	3
   264E F4                 9236 	.byte	-12
   264F FF                 9237 	.byte	-1
   2650 0B                 9238 	.byte	11
   2651 08                 9239 	.byte	8
   2652 00                 9240 	.byte	0
   2653 F2                 9241 	.byte	-14
   2654 EB                 9242 	.byte	-21
   2655 FF                 9243 	.byte	-1
   2656 0B                 9244 	.byte	11
   2657 07                 9245 	.byte	7
   2658 00                 9246 	.byte	0
   2659 F2                 9247 	.byte	-14
   265A 04                 9248 	.byte	4
   265B FF                 9249 	.byte	-1
   265C 03                 9250 	.byte	3
   265D 0E                 9251 	.byte	14
   265E FF                 9252 	.byte	-1
   265F 0E                 9253 	.byte	14
   2660 FC                 9254 	.byte	-4
   2661 FF                 9255 	.byte	-1
   2662 FD                 9256 	.byte	-3
   2663 F2                 9257 	.byte	-14
   2664 FF                 9258 	.byte	-1
   2665 F2                 9259 	.byte	-14
   2666 04                 9260 	.byte	4
   2667 01                 9261 	.byte	1
                           9262 	.globl _height2RisingBack5
   2668                    9263 _height2RisingBack5:
   2668 00                 9264 	.byte	0
   2669 10                 9265 	.byte	16
   266A F5                 9266 	.byte	-11
   266B FF                 9267 	.byte	-1
   266C 03                 9268 	.byte	3
   266D 0D                 9269 	.byte	13
   266E FF                 9270 	.byte	-1
   266F 0F                 9271 	.byte	15
   2670 FD                 9272 	.byte	-3
   2671 FF                 9273 	.byte	-1
   2672 FD                 9274 	.byte	-3
   2673 F2                 9275 	.byte	-14
   2674 FF                 9276 	.byte	-1
   2675 F1                 9277 	.byte	-15
   2676 04                 9278 	.byte	4
   2677 FF                 9279 	.byte	-1
   2678 07                 9280 	.byte	7
   2679 08                 9281 	.byte	8
   267A 00                 9282 	.byte	0
   267B FC                 9283 	.byte	-4
   267C 05                 9284 	.byte	5
   267D FF                 9285 	.byte	-1
   267E 07                 9286 	.byte	7
   267F 08                 9287 	.byte	8
   2680 00                 9288 	.byte	0
   2681 08                 9289 	.byte	8
   2682 F5                 9290 	.byte	-11
   2683 FF                 9291 	.byte	-1
   2684 07                 9292 	.byte	7
   2685 07                 9293 	.byte	7
   2686 00                 9294 	.byte	0
   2687 F6                 9295 	.byte	-10
   2688 EB                 9296 	.byte	-21
   2689 FF                 9297 	.byte	-1
   268A 07                 9298 	.byte	7
   268B 08                 9299 	.byte	8
   268C 00                 9300 	.byte	0
   268D F1                 9301 	.byte	-15
   268E 04                 9302 	.byte	4
   268F FF                 9303 	.byte	-1
   2690 03                 9304 	.byte	3
   2691 0D                 9305 	.byte	13
   2692 FF                 9306 	.byte	-1
   2693 0F                 9307 	.byte	15
   2694 FC                 9308 	.byte	-4
   2695 FF                 9309 	.byte	-1
   2696 FD                 9310 	.byte	-3
   2697 F3                 9311 	.byte	-13
   2698 FF                 9312 	.byte	-1
   2699 F1                 9313 	.byte	-15
   269A 04                 9314 	.byte	4
   269B 01                 9315 	.byte	1
                           9316 	.globl _depth2RollingLeft5
   269C                    9317 _depth2RollingLeft5:
   269C FF                 9318 	.byte	-1
   269D 0A                 9319 	.byte	10
   269E 0B                 9320 	.byte	11
   269F FF                 9321 	.byte	-1
   26A0 10                 9322 	.byte	16
   26A1 F5                 9323 	.byte	-11
   26A2 FF                 9324 	.byte	-1
   26A3 F6                 9325 	.byte	-10
   26A4 F5                 9326 	.byte	-11
   26A5 FF                 9327 	.byte	-1
   26A6 F0                 9328 	.byte	-16
   26A7 0B                 9329 	.byte	11
   26A8 FF                 9330 	.byte	-1
   26A9 08                 9331 	.byte	8
   26AA F8                 9332 	.byte	-8
   26AB 00                 9333 	.byte	0
   26AC 02                 9334 	.byte	2
   26AD 13                 9335 	.byte	19
   26AE FF                 9336 	.byte	-1
   26AF 09                 9337 	.byte	9
   26B0 F8                 9338 	.byte	-8
   26B1 00                 9339 	.byte	0
   26B2 07                 9340 	.byte	7
   26B3 FD                 9341 	.byte	-3
   26B4 FF                 9342 	.byte	-1
   26B5 09                 9343 	.byte	9
   26B6 F8                 9344 	.byte	-8
   26B7 00                 9345 	.byte	0
   26B8 ED                 9346 	.byte	-19
   26B9 FD                 9347 	.byte	-3
   26BA FF                 9348 	.byte	-1
   26BB 08                 9349 	.byte	8
   26BC F7                 9350 	.byte	-9
   26BD 00                 9351 	.byte	0
   26BE F0                 9352 	.byte	-16
   26BF 0C                 9353 	.byte	12
   26C0 FF                 9354 	.byte	-1
   26C1 0B                 9355 	.byte	11
   26C2 0B                 9356 	.byte	11
   26C3 FF                 9357 	.byte	-1
   26C4 10                 9358 	.byte	16
   26C5 F5                 9359 	.byte	-11
   26C6 FF                 9360 	.byte	-1
   26C7 F5                 9361 	.byte	-11
   26C8 F4                 9362 	.byte	-12
   26C9 FF                 9363 	.byte	-1
   26CA F0                 9364 	.byte	-16
   26CB 0C                 9365 	.byte	12
   26CC 01                 9366 	.byte	1
                           9367 	.globl _depth2RollingRight5
   26CD                    9368 _depth2RollingRight5:
   26CD 00                 9369 	.byte	0
   26CE 09                 9370 	.byte	9
   26CF 03                 9371 	.byte	3
   26D0 FF                 9372 	.byte	-1
   26D1 FA                 9373 	.byte	-6
   26D2 0B                 9374 	.byte	11
   26D3 FF                 9375 	.byte	-1
   26D4 10                 9376 	.byte	16
   26D5 F4                 9377 	.byte	-12
   26D6 FF                 9378 	.byte	-1
   26D7 06                 9379 	.byte	6
   26D8 F6                 9380 	.byte	-10
   26D9 FF                 9381 	.byte	-1
   26DA F0                 9382 	.byte	-16
   26DB 0B                 9383 	.byte	11
   26DC FF                 9384 	.byte	-1
   26DD 0C                 9385 	.byte	12
   26DE 08                 9386 	.byte	8
   26DF 00                 9387 	.byte	0
   26E0 EE                 9388 	.byte	-18
   26E1 03                 9389 	.byte	3
   26E2 FF                 9390 	.byte	-1
   26E3 0C                 9391 	.byte	12
   26E4 09                 9392 	.byte	9
   26E5 00                 9393 	.byte	0
   26E6 04                 9394 	.byte	4
   26E7 EB                 9395 	.byte	-21
   26E8 FF                 9396 	.byte	-1
   26E9 0C                 9397 	.byte	12
   26EA 09                 9398 	.byte	9
   26EB 00                 9399 	.byte	0
   26EC FA                 9400 	.byte	-6
   26ED ED                 9401 	.byte	-19
   26EE FF                 9402 	.byte	-1
   26EF 0C                 9403 	.byte	12
   26F0 08                 9404 	.byte	8
   26F1 00                 9405 	.byte	0
   26F2 F0                 9406 	.byte	-16
   26F3 0B                 9407 	.byte	11
   26F4 FF                 9408 	.byte	-1
   26F5 FA                 9409 	.byte	-6
   26F6 0C                 9410 	.byte	12
   26F7 FF                 9411 	.byte	-1
   26F8 10                 9412 	.byte	16
   26F9 F4                 9413 	.byte	-12
   26FA FF                 9414 	.byte	-1
   26FB 06                 9415 	.byte	6
   26FC F5                 9416 	.byte	-11
   26FD FF                 9417 	.byte	-1
   26FE F0                 9418 	.byte	-16
   26FF 0B                 9419 	.byte	11
   2700 01                 9420 	.byte	1
                           9421 	.globl _width2RollingFront5
   2701                    9422 _width2RollingFront5:
   2701 FF                 9423 	.byte	-1
   2702 06                 9424 	.byte	6
   2703 1C                 9425 	.byte	28
   2704 FF                 9426 	.byte	-1
   2705 0E                 9427 	.byte	14
   2706 FB                 9428 	.byte	-5
   2707 FF                 9429 	.byte	-1
   2708 FA                 9430 	.byte	-6
   2709 E5                 9431 	.byte	-27
   270A FF                 9432 	.byte	-1
   270B F2                 9433 	.byte	-14
   270C 04                 9434 	.byte	4
   270D FF                 9435 	.byte	-1
   270E 05                 9436 	.byte	5
   270F 04                 9437 	.byte	4
   2710 00                 9438 	.byte	0
   2711 01                 9439 	.byte	1
   2712 18                 9440 	.byte	24
   2713 FF                 9441 	.byte	-1
   2714 05                 9442 	.byte	5
   2715 04                 9443 	.byte	4
   2716 00                 9444 	.byte	0
   2717 09                 9445 	.byte	9
   2718 F7                 9446 	.byte	-9
   2719 FF                 9447 	.byte	-1
   271A 06                 9448 	.byte	6
   271B 04                 9449 	.byte	4
   271C 00                 9450 	.byte	0
   271D F4                 9451 	.byte	-12
   271E E1                 9452 	.byte	-31
   271F FF                 9453 	.byte	-1
   2720 06                 9454 	.byte	6
   2721 04                 9455 	.byte	4
   2722 00                 9456 	.byte	0
   2723 F1                 9457 	.byte	-15
   2724 04                 9458 	.byte	4
   2725 FF                 9459 	.byte	-1
   2726 06                 9460 	.byte	6
   2727 1C                 9461 	.byte	28
   2728 FF                 9462 	.byte	-1
   2729 0F                 9463 	.byte	15
   272A FB                 9464 	.byte	-5
   272B FF                 9465 	.byte	-1
   272C FA                 9466 	.byte	-6
   272D E5                 9467 	.byte	-27
   272E FF                 9468 	.byte	-1
   272F F1                 9469 	.byte	-15
   2730 04                 9470 	.byte	4
   2731 01                 9471 	.byte	1
                           9472 	.globl _width2RollingBack5
   2732                    9473 _width2RollingBack5:
   2732 00                 9474 	.byte	0
   2733 0A                 9475 	.byte	10
   2734 00                 9476 	.byte	0
   2735 FF                 9477 	.byte	-1
   2736 06                 9478 	.byte	6
   2737 1B                 9479 	.byte	27
   2738 FF                 9480 	.byte	-1
   2739 FE                 9481 	.byte	-2
   273A FB                 9482 	.byte	-5
   273B FF                 9483 	.byte	-1
   273C FA                 9484 	.byte	-6
   273D E5                 9485 	.byte	-27
   273E FF                 9486 	.byte	-1
   273F 02                 9487 	.byte	2
   2740 05                 9488 	.byte	5
   2741 FF                 9489 	.byte	-1
   2742 0F                 9490 	.byte	15
   2743 FC                 9491 	.byte	-4
   2744 00                 9492 	.byte	0
   2745 F7                 9493 	.byte	-9
   2746 1F                 9494 	.byte	31
   2747 FF                 9495 	.byte	-1
   2748 0F                 9496 	.byte	15
   2749 FC                 9497 	.byte	-4
   274A 00                 9498 	.byte	0
   274B EF                 9499 	.byte	-17
   274C FF                 9500 	.byte	-1
   274D FF                 9501 	.byte	-1
   274E 0F                 9502 	.byte	15
   274F FC                 9503 	.byte	-4
   2750 00                 9504 	.byte	0
   2751 EB                 9505 	.byte	-21
   2752 E9                 9506 	.byte	-23
   2753 FF                 9507 	.byte	-1
   2754 0F                 9508 	.byte	15
   2755 FC                 9509 	.byte	-4
   2756 00                 9510 	.byte	0
   2757 02                 9511 	.byte	2
   2758 05                 9512 	.byte	5
   2759 FF                 9513 	.byte	-1
   275A 06                 9514 	.byte	6
   275B 1B                 9515 	.byte	27
   275C FF                 9516 	.byte	-1
   275D FE                 9517 	.byte	-2
   275E FB                 9518 	.byte	-5
   275F FF                 9519 	.byte	-1
   2760 FA                 9520 	.byte	-6
   2761 E5                 9521 	.byte	-27
   2762 FF                 9522 	.byte	-1
   2763 02                 9523 	.byte	2
   2764 05                 9524 	.byte	5
   2765 01                 9525 	.byte	1
                           9526 	.globl _height2FallingLeft6
   2766                    9527 _height2FallingLeft6:
   2766 FF                 9528 	.byte	-1
   2767 0B                 9529 	.byte	11
   2768 0A                 9530 	.byte	10
   2769 FF                 9531 	.byte	-1
   276A 08                 9532 	.byte	8
   276B FA                 9533 	.byte	-6
   276C FF                 9534 	.byte	-1
   276D F5                 9535 	.byte	-11
   276E F7                 9536 	.byte	-9
   276F FF                 9537 	.byte	-1
   2770 F8                 9538 	.byte	-8
   2771 05                 9539 	.byte	5
   2772 FF                 9540 	.byte	-1
   2773 0E                 9541 	.byte	14
   2774 ED                 9542 	.byte	-19
   2775 00                 9543 	.byte	0
   2776 FD                 9544 	.byte	-3
   2777 1D                 9545 	.byte	29
   2778 FF                 9546 	.byte	-1
   2779 0E                 9547 	.byte	14
   277A ED                 9548 	.byte	-19
   277B 00                 9549 	.byte	0
   277C FA                 9550 	.byte	-6
   277D 0D                 9551 	.byte	13
   277E FF                 9552 	.byte	-1
   277F 0E                 9553 	.byte	14
   2780 ED                 9554 	.byte	-19
   2781 00                 9555 	.byte	0
   2782 E7                 9556 	.byte	-25
   2783 0A                 9557 	.byte	10
   2784 FF                 9558 	.byte	-1
   2785 0E                 9559 	.byte	14
   2786 EC                 9560 	.byte	-20
   2787 00                 9561 	.byte	0
   2788 F8                 9562 	.byte	-8
   2789 06                 9563 	.byte	6
   278A FF                 9564 	.byte	-1
   278B 0B                 9565 	.byte	11
   278C 0A                 9566 	.byte	10
   278D FF                 9567 	.byte	-1
   278E 08                 9568 	.byte	8
   278F FA                 9569 	.byte	-6
   2790 FF                 9570 	.byte	-1
   2791 F5                 9571 	.byte	-11
   2792 F6                 9572 	.byte	-10
   2793 FF                 9573 	.byte	-1
   2794 F8                 9574 	.byte	-8
   2795 06                 9575 	.byte	6
   2796 01                 9576 	.byte	1
                           9577 	.globl _height2RisingRight6
   2797                    9578 _height2RisingRight6:
   2797 00                 9579 	.byte	0
   2798 06                 9580 	.byte	6
   2799 1C                 9581 	.byte	28
   279A FF                 9582 	.byte	-1
   279B 0A                 9583 	.byte	10
   279C 0B                 9584 	.byte	11
   279D FF                 9585 	.byte	-1
   279E 08                 9586 	.byte	8
   279F FA                 9587 	.byte	-6
   27A0 FF                 9588 	.byte	-1
   27A1 F6                 9589 	.byte	-10
   27A2 F5                 9590 	.byte	-11
   27A3 FF                 9591 	.byte	-1
   27A4 F8                 9592 	.byte	-8
   27A5 06                 9593 	.byte	6
   27A6 FF                 9594 	.byte	-1
   27A7 11                 9595 	.byte	17
   27A8 EF                 9596 	.byte	-17
   27A9 00                 9597 	.byte	0
   27AA F9                 9598 	.byte	-7
   27AB 1C                 9599 	.byte	28
   27AC FF                 9600 	.byte	-1
   27AD 11                 9601 	.byte	17
   27AE EF                 9602 	.byte	-17
   27AF 00                 9603 	.byte	0
   27B0 F7                 9604 	.byte	-9
   27B1 0B                 9605 	.byte	11
   27B2 FF                 9606 	.byte	-1
   27B3 11                 9607 	.byte	17
   27B4 EF                 9608 	.byte	-17
   27B5 00                 9609 	.byte	0
   27B6 E5                 9610 	.byte	-27
   27B7 06                 9611 	.byte	6
   27B8 FF                 9612 	.byte	-1
   27B9 11                 9613 	.byte	17
   27BA EF                 9614 	.byte	-17
   27BB 00                 9615 	.byte	0
   27BC F8                 9616 	.byte	-8
   27BD 06                 9617 	.byte	6
   27BE FF                 9618 	.byte	-1
   27BF 0A                 9619 	.byte	10
   27C0 0B                 9620 	.byte	11
   27C1 FF                 9621 	.byte	-1
   27C2 08                 9622 	.byte	8
   27C3 FA                 9623 	.byte	-6
   27C4 FF                 9624 	.byte	-1
   27C5 F6                 9625 	.byte	-10
   27C6 F5                 9626 	.byte	-11
   27C7 FF                 9627 	.byte	-1
   27C8 F8                 9628 	.byte	-8
   27C9 06                 9629 	.byte	6
   27CA 01                 9630 	.byte	1
                           9631 	.globl _height2FallingRight6
   27CB                    9632 _height2FallingRight6:
   27CB 00                 9633 	.byte	0
   27CC 0A                 9634 	.byte	10
   27CD 04                 9635 	.byte	4
   27CE FF                 9636 	.byte	-1
   27CF F9                 9637 	.byte	-7
   27D0 0A                 9638 	.byte	10
   27D1 FF                 9639 	.byte	-1
   27D2 08                 9640 	.byte	8
   27D3 FA                 9641 	.byte	-6
   27D4 FF                 9642 	.byte	-1
   27D5 07                 9643 	.byte	7
   27D6 F7                 9644 	.byte	-9
   27D7 FF                 9645 	.byte	-1
   27D8 F8                 9646 	.byte	-8
   27D9 05                 9647 	.byte	5
   27DA FF                 9648 	.byte	-1
   27DB 17                 9649 	.byte	23
   27DC 14                 9650 	.byte	20
   27DD 00                 9651 	.byte	0
   27DE E2                 9652 	.byte	-30
   27DF F6                 9653 	.byte	-10
   27E0 FF                 9654 	.byte	-1
   27E1 17                 9655 	.byte	23
   27E2 14                 9656 	.byte	20
   27E3 00                 9657 	.byte	0
   27E4 F1                 9658 	.byte	-15
   27E5 E6                 9659 	.byte	-26
   27E6 FF                 9660 	.byte	-1
   27E7 17                 9661 	.byte	23
   27E8 14                 9662 	.byte	20
   27E9 00                 9663 	.byte	0
   27EA F0                 9664 	.byte	-16
   27EB E3                 9665 	.byte	-29
   27EC FF                 9666 	.byte	-1
   27ED 17                 9667 	.byte	23
   27EE 13                 9668 	.byte	19
   27EF 00                 9669 	.byte	0
   27F0 F8                 9670 	.byte	-8
   27F1 06                 9671 	.byte	6
   27F2 FF                 9672 	.byte	-1
   27F3 F9                 9673 	.byte	-7
   27F4 0A                 9674 	.byte	10
   27F5 FF                 9675 	.byte	-1
   27F6 08                 9676 	.byte	8
   27F7 FA                 9677 	.byte	-6
   27F8 FF                 9678 	.byte	-1
   27F9 07                 9679 	.byte	7
   27FA F6                 9680 	.byte	-10
   27FB FF                 9681 	.byte	-1
   27FC F8                 9682 	.byte	-8
   27FD 06                 9683 	.byte	6
   27FE 01                 9684 	.byte	1
                           9685 	.globl _height2RisingLeft6
   27FF                    9686 _height2RisingLeft6:
   27FF 00                 9687 	.byte	0
   2800 06                 9688 	.byte	6
   2801 F6                 9689 	.byte	-10
   2802 FF                 9690 	.byte	-1
   2803 FA                 9691 	.byte	-6
   2804 0A                 9692 	.byte	10
   2805 FF                 9693 	.byte	-1
   2806 08                 9694 	.byte	8
   2807 FB                 9695 	.byte	-5
   2808 FF                 9696 	.byte	-1
   2809 06                 9697 	.byte	6
   280A F5                 9698 	.byte	-11
   280B FF                 9699 	.byte	-1
   280C F8                 9700 	.byte	-8
   280D 06                 9701 	.byte	6
   280E FF                 9702 	.byte	-1
   280F 18                 9703 	.byte	24
   2810 10                 9704 	.byte	16
   2811 00                 9705 	.byte	0
   2812 E2                 9706 	.byte	-30
   2813 FA                 9707 	.byte	-6
   2814 FF                 9708 	.byte	-1
   2815 18                 9709 	.byte	24
   2816 11                 9710 	.byte	17
   2817 00                 9711 	.byte	0
   2818 F0                 9712 	.byte	-16
   2819 EA                 9713 	.byte	-22
   281A FF                 9714 	.byte	-1
   281B 18                 9715 	.byte	24
   281C 10                 9716 	.byte	16
   281D 00                 9717 	.byte	0
   281E EE                 9718 	.byte	-18
   281F E5                 9719 	.byte	-27
   2820 FF                 9720 	.byte	-1
   2821 18                 9721 	.byte	24
   2822 10                 9722 	.byte	16
   2823 00                 9723 	.byte	0
   2824 F8                 9724 	.byte	-8
   2825 06                 9725 	.byte	6
   2826 FF                 9726 	.byte	-1
   2827 FA                 9727 	.byte	-6
   2828 0B                 9728 	.byte	11
   2829 FF                 9729 	.byte	-1
   282A 08                 9730 	.byte	8
   282B FA                 9731 	.byte	-6
   282C FF                 9732 	.byte	-1
   282D 06                 9733 	.byte	6
   282E F5                 9734 	.byte	-11
   282F FF                 9735 	.byte	-1
   2830 F8                 9736 	.byte	-8
   2831 06                 9737 	.byte	6
   2832 01                 9738 	.byte	1
                           9739 	.globl _height2FallingBack6
   2833                    9740 _height2FallingBack6:
   2833 00                 9741 	.byte	0
   2834 0C                 9742 	.byte	12
   2835 FF                 9743 	.byte	-1
   2836 FF                 9744 	.byte	-1
   2837 03                 9745 	.byte	3
   2838 0D                 9746 	.byte	13
   2839 FF                 9747 	.byte	-1
   283A FC                 9748 	.byte	-4
   283B FC                 9749 	.byte	-4
   283C FF                 9750 	.byte	-1
   283D FD                 9751 	.byte	-3
   283E F3                 9752 	.byte	-13
   283F FF                 9753 	.byte	-1
   2840 04                 9754 	.byte	4
   2841 04                 9755 	.byte	4
   2842 FF                 9756 	.byte	-1
   2843 1D                 9757 	.byte	29
   2844 F8                 9758 	.byte	-8
   2845 00                 9759 	.byte	0
   2846 E6                 9760 	.byte	-26
   2847 15                 9761 	.byte	21
   2848 FF                 9762 	.byte	-1
   2849 1D                 9763 	.byte	29
   284A F8                 9764 	.byte	-8
   284B 00                 9765 	.byte	0
   284C DF                 9766 	.byte	-33
   284D 04                 9767 	.byte	4
   284E FF                 9768 	.byte	-1
   284F 1E                 9769 	.byte	30
   2850 F8                 9770 	.byte	-8
   2851 00                 9771 	.byte	0
   2852 DF                 9772 	.byte	-33
   2853 FB                 9773 	.byte	-5
   2854 FF                 9774 	.byte	-1
   2855 1E                 9775 	.byte	30
   2856 F8                 9776 	.byte	-8
   2857 00                 9777 	.byte	0
   2858 03                 9778 	.byte	3
   2859 04                 9779 	.byte	4
   285A FF                 9780 	.byte	-1
   285B 03                 9781 	.byte	3
   285C 0D                 9782 	.byte	13
   285D FF                 9783 	.byte	-1
   285E FD                 9784 	.byte	-3
   285F FC                 9785 	.byte	-4
   2860 FF                 9786 	.byte	-1
   2861 FD                 9787 	.byte	-3
   2862 F3                 9788 	.byte	-13
   2863 FF                 9789 	.byte	-1
   2864 03                 9790 	.byte	3
   2865 04                 9791 	.byte	4
   2866 01                 9792 	.byte	1
                           9793 	.globl _height2RisingFront6
   2867                    9794 _height2RisingFront6:
   2867 00                 9795 	.byte	0
   2868 02                 9796 	.byte	2
   2869 05                 9797 	.byte	5
   286A FF                 9798 	.byte	-1
   286B 03                 9799 	.byte	3
   286C 0E                 9800 	.byte	14
   286D FF                 9801 	.byte	-1
   286E FE                 9802 	.byte	-2
   286F FB                 9803 	.byte	-5
   2870 FF                 9804 	.byte	-1
   2871 FD                 9805 	.byte	-3
   2872 F2                 9806 	.byte	-14
   2873 FF                 9807 	.byte	-1
   2874 02                 9808 	.byte	2
   2875 05                 9809 	.byte	5
   2876 FF                 9810 	.byte	-1
   2877 1E                 9811 	.byte	30
   2878 F9                 9812 	.byte	-7
   2879 00                 9813 	.byte	0
   287A E5                 9814 	.byte	-27
   287B 15                 9815 	.byte	21
   287C FF                 9816 	.byte	-1
   287D 1E                 9817 	.byte	30
   287E F8                 9818 	.byte	-8
   287F 00                 9819 	.byte	0
   2880 E0                 9820 	.byte	-32
   2881 03                 9821 	.byte	3
   2882 FF                 9822 	.byte	-1
   2883 1E                 9823 	.byte	30
   2884 F9                 9824 	.byte	-7
   2885 00                 9825 	.byte	0
   2886 DF                 9826 	.byte	-33
   2887 F9                 9827 	.byte	-7
   2888 FF                 9828 	.byte	-1
   2889 1E                 9829 	.byte	30
   288A FA                 9830 	.byte	-6
   288B 00                 9831 	.byte	0
   288C 02                 9832 	.byte	2
   288D 04                 9833 	.byte	4
   288E FF                 9834 	.byte	-1
   288F 03                 9835 	.byte	3
   2890 0D                 9836 	.byte	13
   2891 FF                 9837 	.byte	-1
   2892 FE                 9838 	.byte	-2
   2893 FC                 9839 	.byte	-4
   2894 FF                 9840 	.byte	-1
   2895 FD                 9841 	.byte	-3
   2896 F3                 9842 	.byte	-13
   2897 FF                 9843 	.byte	-1
   2898 02                 9844 	.byte	2
   2899 04                 9845 	.byte	4
   289A 01                 9846 	.byte	1
                           9847 	.globl _height2FallingFront6
   289B                    9848 _height2FallingFront6:
   289B FF                 9849 	.byte	-1
   289C 03                 9850 	.byte	3
   289D 0E                 9851 	.byte	14
   289E FF                 9852 	.byte	-1
   289F 0F                 9853 	.byte	15
   28A0 FC                 9854 	.byte	-4
   28A1 FF                 9855 	.byte	-1
   28A2 FD                 9856 	.byte	-3
   28A3 F3                 9857 	.byte	-13
   28A4 FF                 9858 	.byte	-1
   28A5 F1                 9859 	.byte	-15
   28A6 03                 9860 	.byte	3
   28A7 FF                 9861 	.byte	-1
   28A8 07                 9862 	.byte	7
   28A9 08                 9863 	.byte	8
   28AA 00                 9864 	.byte	0
   28AB FC                 9865 	.byte	-4
   28AC 06                 9866 	.byte	6
   28AD FF                 9867 	.byte	-1
   28AE 07                 9868 	.byte	7
   28AF 08                 9869 	.byte	8
   28B0 00                 9870 	.byte	0
   28B1 08                 9871 	.byte	8
   28B2 F4                 9872 	.byte	-12
   28B3 FF                 9873 	.byte	-1
   28B4 07                 9874 	.byte	7
   28B5 08                 9875 	.byte	8
   28B6 00                 9876 	.byte	0
   28B7 F6                 9877 	.byte	-10
   28B8 EB                 9878 	.byte	-21
   28B9 FF                 9879 	.byte	-1
   28BA 07                 9880 	.byte	7
   28BB 07                 9881 	.byte	7
   28BC 00                 9882 	.byte	0
   28BD F1                 9883 	.byte	-15
   28BE 04                 9884 	.byte	4
   28BF FF                 9885 	.byte	-1
   28C0 03                 9886 	.byte	3
   28C1 0E                 9887 	.byte	14
   28C2 FF                 9888 	.byte	-1
   28C3 0F                 9889 	.byte	15
   28C4 FC                 9890 	.byte	-4
   28C5 FF                 9891 	.byte	-1
   28C6 FD                 9892 	.byte	-3
   28C7 F2                 9893 	.byte	-14
   28C8 FF                 9894 	.byte	-1
   28C9 F1                 9895 	.byte	-15
   28CA 04                 9896 	.byte	4
   28CB 01                 9897 	.byte	1
                           9898 	.globl _height2RisingBack6
   28CC                    9899 _height2RisingBack6:
   28CC 00                 9900 	.byte	0
   28CD 10                 9901 	.byte	16
   28CE F5                 9902 	.byte	-11
   28CF FF                 9903 	.byte	-1
   28D0 03                 9904 	.byte	3
   28D1 0D                 9905 	.byte	13
   28D2 FF                 9906 	.byte	-1
   28D3 0E                 9907 	.byte	14
   28D4 FC                 9908 	.byte	-4
   28D5 FF                 9909 	.byte	-1
   28D6 FD                 9910 	.byte	-3
   28D7 F2                 9911 	.byte	-14
   28D8 FF                 9912 	.byte	-1
   28D9 F2                 9913 	.byte	-14
   28DA 05                 9914 	.byte	5
   28DB FF                 9915 	.byte	-1
   28DC 0B                 9916 	.byte	11
   28DD 07                 9917 	.byte	7
   28DE 00                 9918 	.byte	0
   28DF F8                 9919 	.byte	-8
   28E0 06                 9920 	.byte	6
   28E1 FF                 9921 	.byte	-1
   28E2 0B                 9922 	.byte	11
   28E3 07                 9923 	.byte	7
   28E4 00                 9924 	.byte	0
   28E5 03                 9925 	.byte	3
   28E6 F5                 9926 	.byte	-11
   28E7 FF                 9927 	.byte	-1
   28E8 0B                 9928 	.byte	11
   28E9 07                 9929 	.byte	7
   28EA 00                 9930 	.byte	0
   28EB F2                 9931 	.byte	-14
   28EC EB                 9932 	.byte	-21
   28ED FF                 9933 	.byte	-1
   28EE 0B                 9934 	.byte	11
   28EF 08                 9935 	.byte	8
   28F0 00                 9936 	.byte	0
   28F1 F2                 9937 	.byte	-14
   28F2 04                 9938 	.byte	4
   28F3 FF                 9939 	.byte	-1
   28F4 03                 9940 	.byte	3
   28F5 0D                 9941 	.byte	13
   28F6 FF                 9942 	.byte	-1
   28F7 0E                 9943 	.byte	14
   28F8 FC                 9944 	.byte	-4
   28F9 FF                 9945 	.byte	-1
   28FA FD                 9946 	.byte	-3
   28FB F3                 9947 	.byte	-13
   28FC FF                 9948 	.byte	-1
   28FD F2                 9949 	.byte	-14
   28FE 04                 9950 	.byte	4
   28FF 01                 9951 	.byte	1
                           9952 	.globl _depth2RollingLeft6
   2900                    9953 _depth2RollingLeft6:
   2900 FF                 9954 	.byte	-1
   2901 0B                 9955 	.byte	11
   2902 0A                 9956 	.byte	10
   2903 FF                 9957 	.byte	-1
   2904 10                 9958 	.byte	16
   2905 F5                 9959 	.byte	-11
   2906 FF                 9960 	.byte	-1
   2907 F5                 9961 	.byte	-11
   2908 F6                 9962 	.byte	-10
   2909 FF                 9963 	.byte	-1
   290A F0                 9964 	.byte	-16
   290B 0B                 9965 	.byte	11
   290C FF                 9966 	.byte	-1
   290D 07                 9967 	.byte	7
   290E F7                 9968 	.byte	-9
   290F 00                 9969 	.byte	0
   2910 04                 9970 	.byte	4
   2911 13                 9971 	.byte	19
   2912 FF                 9972 	.byte	-1
   2913 07                 9973 	.byte	7
   2914 F6                 9974 	.byte	-10
   2915 00                 9975 	.byte	0
   2916 09                 9976 	.byte	9
   2917 FF                 9977 	.byte	-1
   2918 FF                 9978 	.byte	-1
   2919 07                 9979 	.byte	7
   291A F6                 9980 	.byte	-10
   291B 00                 9981 	.byte	0
   291C EE                 9982 	.byte	-18
   291D 00                 9983 	.byte	0
   291E FF                 9984 	.byte	-1
   291F 07                 9985 	.byte	7
   2920 F6                 9986 	.byte	-10
   2921 00                 9987 	.byte	0
   2922 F0                 9988 	.byte	-16
   2923 0C                 9989 	.byte	12
   2924 FF                 9990 	.byte	-1
   2925 0B                 9991 	.byte	11
   2926 09                 9992 	.byte	9
   2927 FF                 9993 	.byte	-1
   2928 10                 9994 	.byte	16
   2929 F5                 9995 	.byte	-11
   292A FF                 9996 	.byte	-1
   292B F5                 9997 	.byte	-11
   292C F6                 9998 	.byte	-10
   292D FF                 9999 	.byte	-1
   292E F0                10000 	.byte	-16
   292F 0C                10001 	.byte	12
   2930 01                10002 	.byte	1
                          10003 	.globl _depth2RollingRight6
   2931                   10004 _depth2RollingRight6:
   2931 00                10005 	.byte	0
   2932 0A                10006 	.byte	10
   2933 04                10007 	.byte	4
   2934 FF                10008 	.byte	-1
   2935 F9                10009 	.byte	-7
   2936 0A                10010 	.byte	10
   2937 FF                10011 	.byte	-1
   2938 10                10012 	.byte	16
   2939 F4                10013 	.byte	-12
   293A FF                10014 	.byte	-1
   293B 07                10015 	.byte	7
   293C F7                10016 	.byte	-9
   293D FF                10017 	.byte	-1
   293E F0                10018 	.byte	-16
   293F 0B                10019 	.byte	11
   2940 FF                10020 	.byte	-1
   2941 0B                10021 	.byte	11
   2942 0A                10022 	.byte	10
   2943 00                10023 	.byte	0
   2944 EE                10024 	.byte	-18
   2945 00                10025 	.byte	0
   2946 FF                10026 	.byte	-1
   2947 0B                10027 	.byte	11
   2948 0A                10028 	.byte	10
   2949 00                10029 	.byte	0
   294A 05                10030 	.byte	5
   294B EA                10031 	.byte	-22
   294C FF                10032 	.byte	-1
   294D 0B                10033 	.byte	11
   294E 0A                10034 	.byte	10
   294F 00                10035 	.byte	0
   2950 FC                10036 	.byte	-4
   2951 ED                10037 	.byte	-19
   2952 FF                10038 	.byte	-1
   2953 0B                10039 	.byte	11
   2954 09                10040 	.byte	9
   2955 00                10041 	.byte	0
   2956 F0                10042 	.byte	-16
   2957 0C                10043 	.byte	12
   2958 FF                10044 	.byte	-1
   2959 F9                10045 	.byte	-7
   295A 0A                10046 	.byte	10
   295B FF                10047 	.byte	-1
   295C 10                10048 	.byte	16
   295D F4                10049 	.byte	-12
   295E FF                10050 	.byte	-1
   295F 07                10051 	.byte	7
   2960 F6                10052 	.byte	-10
   2961 FF                10053 	.byte	-1
   2962 F0                10054 	.byte	-16
   2963 0C                10055 	.byte	12
   2964 01                10056 	.byte	1
                          10057 	.globl _width2RollingFront6
   2965                   10058 _width2RollingFront6:
   2965 FF                10059 	.byte	-1
   2966 06                10060 	.byte	6
   2967 1C                10061 	.byte	28
   2968 FF                10062 	.byte	-1
   2969 0F                10063 	.byte	15
   296A FC                10064 	.byte	-4
   296B FF                10065 	.byte	-1
   296C FA                10066 	.byte	-6
   296D E5                10067 	.byte	-27
   296E FF                10068 	.byte	-1
   296F F1                10069 	.byte	-15
   2970 03                10070 	.byte	3
   2971 FF                10071 	.byte	-1
   2972 04                10072 	.byte	4
   2973 04                10073 	.byte	4
   2974 00                10074 	.byte	0
   2975 02                10075 	.byte	2
   2976 18                10076 	.byte	24
   2977 FF                10077 	.byte	-1
   2978 04                10078 	.byte	4
   2979 04                10079 	.byte	4
   297A 00                10080 	.byte	0
   297B 0B                10081 	.byte	11
   297C F8                10082 	.byte	-8
   297D FF                10083 	.byte	-1
   297E 03                10084 	.byte	3
   297F 04                10085 	.byte	4
   2980 00                10086 	.byte	0
   2981 F7                10087 	.byte	-9
   2982 E1                10088 	.byte	-31
   2983 FF                10089 	.byte	-1
   2984 03                10090 	.byte	3
   2985 03                10091 	.byte	3
   2986 00                10092 	.byte	0
   2987 F2                10093 	.byte	-14
   2988 04                10094 	.byte	4
   2989 FF                10095 	.byte	-1
   298A 06                10096 	.byte	6
   298B 1C                10097 	.byte	28
   298C FF                10098 	.byte	-1
   298D 0E                10099 	.byte	14
   298E FC                10100 	.byte	-4
   298F FF                10101 	.byte	-1
   2990 FA                10102 	.byte	-6
   2991 E4                10103 	.byte	-28
   2992 FF                10104 	.byte	-1
   2993 F2                10105 	.byte	-14
   2994 04                10106 	.byte	4
   2995 01                10107 	.byte	1
                          10108 	.globl _width2RollingBack6
   2996                   10109 _width2RollingBack6:
   2996 00                10110 	.byte	0
   2997 0C                10111 	.byte	12
   2998 FF                10112 	.byte	-1
   2999 FF                10113 	.byte	-1
   299A 06                10114 	.byte	6
   299B 1B                10115 	.byte	27
   299C FF                10116 	.byte	-1
   299D FC                10117 	.byte	-4
   299E FC                10118 	.byte	-4
   299F FF                10119 	.byte	-1
   29A0 FA                10120 	.byte	-6
   29A1 E5                10121 	.byte	-27
   29A2 FF                10122 	.byte	-1
   29A3 04                10123 	.byte	4
   29A4 04                10124 	.byte	4
   29A5 FF                10125 	.byte	-1
   29A6 0E                10126 	.byte	14
   29A7 FC                10127 	.byte	-4
   29A8 00                10128 	.byte	0
   29A9 F8                10129 	.byte	-8
   29AA 1F                10130 	.byte	31
   29AB FF                10131 	.byte	-1
   29AC 0E                10132 	.byte	14
   29AD FC                10133 	.byte	-4
   29AE 00                10134 	.byte	0
   29AF EE                10135 	.byte	-18
   29B0 00                10136 	.byte	0
   29B1 FF                10137 	.byte	-1
   29B2 0F                10138 	.byte	15
   29B3 FC                10139 	.byte	-4
   29B4 00                10140 	.byte	0
   29B5 EB                10141 	.byte	-21
   29B6 E9                10142 	.byte	-23
   29B7 FF                10143 	.byte	-1
   29B8 0F                10144 	.byte	15
   29B9 FC                10145 	.byte	-4
   29BA 00                10146 	.byte	0
   29BB 03                10147 	.byte	3
   29BC 04                10148 	.byte	4
   29BD FF                10149 	.byte	-1
   29BE 06                10150 	.byte	6
   29BF 1B                10151 	.byte	27
   29C0 FF                10152 	.byte	-1
   29C1 FD                10153 	.byte	-3
   29C2 FC                10154 	.byte	-4
   29C3 FF                10155 	.byte	-1
   29C4 FA                10156 	.byte	-6
   29C5 E5                10157 	.byte	-27
   29C6 FF                10158 	.byte	-1
   29C7 03                10159 	.byte	3
   29C8 04                10160 	.byte	4
   29C9 01                10161 	.byte	1
                          10162 	.globl _height2FallingLeft7
   29CA                   10163 _height2FallingLeft7:
   29CA FF                10164 	.byte	-1
   29CB 0C                10165 	.byte	12
   29CC 09                10166 	.byte	9
   29CD FF                10167 	.byte	-1
   29CE 08                10168 	.byte	8
   29CF FA                10169 	.byte	-6
   29D0 FF                10170 	.byte	-1
   29D1 F4                10171 	.byte	-12
   29D2 F8                10172 	.byte	-8
   29D3 FF                10173 	.byte	-1
   29D4 F8                10174 	.byte	-8
   29D5 05                10175 	.byte	5
   29D6 FF                10176 	.byte	-1
   29D7 0B                10177 	.byte	11
   29D8 EB                10178 	.byte	-21
   29D9 00                10179 	.byte	0
   29DA 01                10180 	.byte	1
   29DB 1E                10181 	.byte	30
   29DC FF                10182 	.byte	-1
   29DD 0B                10183 	.byte	11
   29DE EA                10184 	.byte	-22
   29DF 00                10185 	.byte	0
   29E0 FD                10186 	.byte	-3
   29E1 10                10187 	.byte	16
   29E2 FF                10188 	.byte	-1
   29E3 0B                10189 	.byte	11
   29E4 EA                10190 	.byte	-22
   29E5 00                10191 	.byte	0
   29E6 E9                10192 	.byte	-23
   29E7 0E                10193 	.byte	14
   29E8 FF                10194 	.byte	-1
   29E9 0B                10195 	.byte	11
   29EA EA                10196 	.byte	-22
   29EB 00                10197 	.byte	0
   29EC F8                10198 	.byte	-8
   29ED 06                10199 	.byte	6
   29EE FF                10200 	.byte	-1
   29EF 0C                10201 	.byte	12
   29F0 08                10202 	.byte	8
   29F1 FF                10203 	.byte	-1
   29F2 08                10204 	.byte	8
   29F3 FA                10205 	.byte	-6
   29F4 FF                10206 	.byte	-1
   29F5 F4                10207 	.byte	-12
   29F6 F8                10208 	.byte	-8
   29F7 FF                10209 	.byte	-1
   29F8 F8                10210 	.byte	-8
   29F9 06                10211 	.byte	6
   29FA 01                10212 	.byte	1
                          10213 	.globl _height2RisingRight7
   29FB                   10214 _height2RisingRight7:
   29FB 00                10215 	.byte	0
   29FC 06                10216 	.byte	6
   29FD 1C                10217 	.byte	28
   29FE FF                10218 	.byte	-1
   29FF 09                10219 	.byte	9
   2A00 0C                10220 	.byte	12
   2A01 FF                10221 	.byte	-1
   2A02 08                10222 	.byte	8
   2A03 FA                10223 	.byte	-6
   2A04 FF                10224 	.byte	-1
   2A05 F7                10225 	.byte	-9
   2A06 F4                10226 	.byte	-12
   2A07 FF                10227 	.byte	-1
   2A08 F8                10228 	.byte	-8
   2A09 06                10229 	.byte	6
   2A0A FF                10230 	.byte	-1
   2A0B 14                10231 	.byte	20
   2A0C F2                10232 	.byte	-14
   2A0D 00                10233 	.byte	0
   2A0E F5                10234 	.byte	-11
   2A0F 1A                10235 	.byte	26
   2A10 FF                10236 	.byte	-1
   2A11 14                10237 	.byte	20
   2A12 F2                10238 	.byte	-14
   2A13 00                10239 	.byte	0
   2A14 F4                10240 	.byte	-12
   2A15 08                10241 	.byte	8
   2A16 FF                10242 	.byte	-1
   2A17 14                10243 	.byte	20
   2A18 F2                10244 	.byte	-14
   2A19 00                10245 	.byte	0
   2A1A E3                10246 	.byte	-29
   2A1B 02                10247 	.byte	2
   2A1C FF                10248 	.byte	-1
   2A1D 14                10249 	.byte	20
   2A1E F2                10250 	.byte	-14
   2A1F 00                10251 	.byte	0
   2A20 F8                10252 	.byte	-8
   2A21 06                10253 	.byte	6
   2A22 FF                10254 	.byte	-1
   2A23 09                10255 	.byte	9
   2A24 0C                10256 	.byte	12
   2A25 FF                10257 	.byte	-1
   2A26 08                10258 	.byte	8
   2A27 FA                10259 	.byte	-6
   2A28 FF                10260 	.byte	-1
   2A29 F7                10261 	.byte	-9
   2A2A F4                10262 	.byte	-12
   2A2B FF                10263 	.byte	-1
   2A2C F8                10264 	.byte	-8
   2A2D 06                10265 	.byte	6
   2A2E 01                10266 	.byte	1
                          10267 	.globl _height2FallingRight7
   2A2F                   10268 _height2FallingRight7:
   2A2F 00                10269 	.byte	0
   2A30 0B                10270 	.byte	11
   2A31 05                10271 	.byte	5
   2A32 FF                10272 	.byte	-1
   2A33 F8                10273 	.byte	-8
   2A34 09                10274 	.byte	9
   2A35 FF                10275 	.byte	-1
   2A36 08                10276 	.byte	8
   2A37 FA                10277 	.byte	-6
   2A38 FF                10278 	.byte	-1
   2A39 08                10279 	.byte	8
   2A3A F8                10280 	.byte	-8
   2A3B FF                10281 	.byte	-1
   2A3C F8                10282 	.byte	-8
   2A3D 05                10283 	.byte	5
   2A3E FF                10284 	.byte	-1
   2A3F 15                10285 	.byte	21
   2A40 17                10286 	.byte	23
   2A41 00                10287 	.byte	0
   2A42 E3                10288 	.byte	-29
   2A43 F2                10289 	.byte	-14
   2A44 FF                10290 	.byte	-1
   2A45 15                10291 	.byte	21
   2A46 16                10292 	.byte	22
   2A47 00                10293 	.byte	0
   2A48 F3                10294 	.byte	-13
   2A49 E4                10295 	.byte	-28
   2A4A FF                10296 	.byte	-1
   2A4B 15                10297 	.byte	21
   2A4C 16                10298 	.byte	22
   2A4D 00                10299 	.byte	0
   2A4E F3                10300 	.byte	-13
   2A4F E2                10301 	.byte	-30
   2A50 FF                10302 	.byte	-1
   2A51 15                10303 	.byte	21
   2A52 16                10304 	.byte	22
   2A53 00                10305 	.byte	0
   2A54 F8                10306 	.byte	-8
   2A55 06                10307 	.byte	6
   2A56 FF                10308 	.byte	-1
   2A57 F8                10309 	.byte	-8
   2A58 08                10310 	.byte	8
   2A59 FF                10311 	.byte	-1
   2A5A 08                10312 	.byte	8
   2A5B FA                10313 	.byte	-6
   2A5C FF                10314 	.byte	-1
   2A5D 08                10315 	.byte	8
   2A5E F8                10316 	.byte	-8
   2A5F FF                10317 	.byte	-1
   2A60 F8                10318 	.byte	-8
   2A61 06                10319 	.byte	6
   2A62 01                10320 	.byte	1
                          10321 	.globl _height2RisingLeft7
   2A63                   10322 _height2RisingLeft7:
   2A63 00                10323 	.byte	0
   2A64 04                10324 	.byte	4
   2A65 F5                10325 	.byte	-11
   2A66 FF                10326 	.byte	-1
   2A67 FC                10327 	.byte	-4
   2A68 0B                10328 	.byte	11
   2A69 FF                10329 	.byte	-1
   2A6A 08                10330 	.byte	8
   2A6B FB                10331 	.byte	-5
   2A6C FF                10332 	.byte	-1
   2A6D 04                10333 	.byte	4
   2A6E F4                10334 	.byte	-12
   2A6F FF                10335 	.byte	-1
   2A70 F8                10336 	.byte	-8
   2A71 06                10337 	.byte	6
   2A72 FF                10338 	.byte	-1
   2A73 19                10339 	.byte	25
   2A74 0D                10340 	.byte	13
   2A75 00                10341 	.byte	0
   2A76 E3                10342 	.byte	-29
   2A77 FE                10343 	.byte	-2
   2A78 FF                10344 	.byte	-1
   2A79 1A                10345 	.byte	26
   2A7A 0E                10346 	.byte	14
   2A7B 00                10347 	.byte	0
   2A7C EE                10348 	.byte	-18
   2A7D ED                10349 	.byte	-19
   2A7E FF                10350 	.byte	-1
   2A7F 1A                10351 	.byte	26
   2A80 0D                10352 	.byte	13
   2A81 00                10353 	.byte	0
   2A82 EA                10354 	.byte	-22
   2A83 E7                10355 	.byte	-25
   2A84 FF                10356 	.byte	-1
   2A85 19                10357 	.byte	25
   2A86 0E                10358 	.byte	14
   2A87 00                10359 	.byte	0
   2A88 F8                10360 	.byte	-8
   2A89 05                10361 	.byte	5
   2A8A FF                10362 	.byte	-1
   2A8B FD                10363 	.byte	-3
   2A8C 0C                10364 	.byte	12
   2A8D FF                10365 	.byte	-1
   2A8E 08                10366 	.byte	8
   2A8F FA                10367 	.byte	-6
   2A90 FF                10368 	.byte	-1
   2A91 03                10369 	.byte	3
   2A92 F5                10370 	.byte	-11
   2A93 FF                10371 	.byte	-1
   2A94 F8                10372 	.byte	-8
   2A95 05                10373 	.byte	5
   2A96 01                10374 	.byte	1
                          10375 	.globl _height2FallingBack7
   2A97                   10376 _height2FallingBack7:
   2A97 00                10377 	.byte	0
   2A98 0D                10378 	.byte	13
   2A99 FF                10379 	.byte	-1
   2A9A FF                10380 	.byte	-1
   2A9B 03                10381 	.byte	3
   2A9C 0D                10382 	.byte	13
   2A9D FF                10383 	.byte	-1
   2A9E FB                10384 	.byte	-5
   2A9F FC                10385 	.byte	-4
   2AA0 FF                10386 	.byte	-1
   2AA1 FD                10387 	.byte	-3
   2AA2 F3                10388 	.byte	-13
   2AA3 FF                10389 	.byte	-1
   2AA4 05                10390 	.byte	5
   2AA5 04                10391 	.byte	4
   2AA6 FF                10392 	.byte	-1
   2AA7 1D                10393 	.byte	29
   2AA8 F6                10394 	.byte	-10
   2AA9 00                10395 	.byte	0
   2AAA E6                10396 	.byte	-26
   2AAB 17                10397 	.byte	23
   2AAC FF                10398 	.byte	-1
   2AAD 1D                10399 	.byte	29
   2AAE F6                10400 	.byte	-10
   2AAF 00                10401 	.byte	0
   2AB0 DE                10402 	.byte	-34
   2AB1 06                10403 	.byte	6
   2AB2 FF                10404 	.byte	-1
   2AB3 1D                10405 	.byte	29
   2AB4 F7                10406 	.byte	-9
   2AB5 00                10407 	.byte	0
   2AB6 E0                10408 	.byte	-32
   2AB7 FC                10409 	.byte	-4
   2AB8 FF                10410 	.byte	-1
   2AB9 1D                10411 	.byte	29
   2ABA F6                10412 	.byte	-10
   2ABB 00                10413 	.byte	0
   2ABC 05                10414 	.byte	5
   2ABD 04                10415 	.byte	4
   2ABE FF                10416 	.byte	-1
   2ABF 03                10417 	.byte	3
   2AC0 0D                10418 	.byte	13
   2AC1 FF                10419 	.byte	-1
   2AC2 FB                10420 	.byte	-5
   2AC3 FD                10421 	.byte	-3
   2AC4 FF                10422 	.byte	-1
   2AC5 FD                10423 	.byte	-3
   2AC6 F2                10424 	.byte	-14
   2AC7 FF                10425 	.byte	-1
   2AC8 05                10426 	.byte	5
   2AC9 04                10427 	.byte	4
   2ACA 01                10428 	.byte	1
                          10429 	.globl _height2RisingFront7
   2ACB                   10430 _height2RisingFront7:
   2ACB 00                10431 	.byte	0
   2ACC 00                10432 	.byte	0
   2ACD 05                10433 	.byte	5
   2ACE FF                10434 	.byte	-1
   2ACF 03                10435 	.byte	3
   2AD0 0E                10436 	.byte	14
   2AD1 FF                10437 	.byte	-1
   2AD2 00                10438 	.byte	0
   2AD3 FB                10439 	.byte	-5
   2AD4 FF                10440 	.byte	-1
   2AD5 FD                10441 	.byte	-3
   2AD6 F2                10442 	.byte	-14
   2AD7 FF                10443 	.byte	-1
   2AD8 00                10444 	.byte	0
   2AD9 05                10445 	.byte	5
   2ADA FF                10446 	.byte	-1
   2ADB 1E                10447 	.byte	30
   2ADC FB                10448 	.byte	-5
   2ADD 00                10449 	.byte	0
   2ADE E5                10450 	.byte	-27
   2ADF 13                10451 	.byte	19
   2AE0 FF                10452 	.byte	-1
   2AE1 1E                10453 	.byte	30
   2AE2 FA                10454 	.byte	-6
   2AE3 00                10455 	.byte	0
   2AE4 E2                10456 	.byte	-30
   2AE5 01                10457 	.byte	1
   2AE6 FF                10458 	.byte	-1
   2AE7 1F                10459 	.byte	31
   2AE8 FA                10460 	.byte	-6
   2AE9 00                10461 	.byte	0
   2AEA DE                10462 	.byte	-34
   2AEB F8                10463 	.byte	-8
   2AEC FF                10464 	.byte	-1
   2AED 1F                10465 	.byte	31
   2AEE FB                10466 	.byte	-5
   2AEF 00                10467 	.byte	0
   2AF0 FF                10468 	.byte	-1
   2AF1 05                10469 	.byte	5
   2AF2 FF                10470 	.byte	-1
   2AF3 03                10471 	.byte	3
   2AF4 0D                10472 	.byte	13
   2AF5 FF                10473 	.byte	-1
   2AF6 01                10474 	.byte	1
   2AF7 FB                10475 	.byte	-5
   2AF8 FF                10476 	.byte	-1
   2AF9 FD                10477 	.byte	-3
   2AFA F3                10478 	.byte	-13
   2AFB FF                10479 	.byte	-1
   2AFC FF                10480 	.byte	-1
   2AFD 05                10481 	.byte	5
   2AFE 01                10482 	.byte	1
                          10483 	.globl _height2FallingFront7
   2AFF                   10484 _height2FallingFront7:
   2AFF FF                10485 	.byte	-1
   2B00 03                10486 	.byte	3
   2B01 0E                10487 	.byte	14
   2B02 FF                10488 	.byte	-1
   2B03 0F                10489 	.byte	15
   2B04 FC                10490 	.byte	-4
   2B05 FF                10491 	.byte	-1
   2B06 FD                10492 	.byte	-3
   2B07 F3                10493 	.byte	-13
   2B08 FF                10494 	.byte	-1
   2B09 F1                10495 	.byte	-15
   2B0A 03                10496 	.byte	3
   2B0B FF                10497 	.byte	-1
   2B0C 03                10498 	.byte	3
   2B0D 0A                10499 	.byte	10
   2B0E 00                10500 	.byte	0
   2B0F 00                10501 	.byte	0
   2B10 04                10502 	.byte	4
   2B11 FF                10503 	.byte	-1
   2B12 03                10504 	.byte	3
   2B13 0A                10505 	.byte	10
   2B14 00                10506 	.byte	0
   2B15 0C                10507 	.byte	12
   2B16 F2                10508 	.byte	-14
   2B17 FF                10509 	.byte	-1
   2B18 03                10510 	.byte	3
   2B19 0A                10511 	.byte	10
   2B1A 00                10512 	.byte	0
   2B1B FA                10513 	.byte	-6
   2B1C E9                10514 	.byte	-23
   2B1D FF                10515 	.byte	-1
   2B1E 03                10516 	.byte	3
   2B1F 09                10517 	.byte	9
   2B20 00                10518 	.byte	0
   2B21 F1                10519 	.byte	-15
   2B22 04                10520 	.byte	4
   2B23 FF                10521 	.byte	-1
   2B24 03                10522 	.byte	3
   2B25 0E                10523 	.byte	14
   2B26 FF                10524 	.byte	-1
   2B27 0F                10525 	.byte	15
   2B28 FC                10526 	.byte	-4
   2B29 FF                10527 	.byte	-1
   2B2A FD                10528 	.byte	-3
   2B2B F2                10529 	.byte	-14
   2B2C FF                10530 	.byte	-1
   2B2D F1                10531 	.byte	-15
   2B2E 04                10532 	.byte	4
   2B2F 01                10533 	.byte	1
                          10534 	.globl _height2RisingBack7
   2B30                   10535 _height2RisingBack7:
   2B30 00                10536 	.byte	0
   2B31 10                10537 	.byte	16
   2B32 F5                10538 	.byte	-11
   2B33 FF                10539 	.byte	-1
   2B34 03                10540 	.byte	3
   2B35 0D                10541 	.byte	13
   2B36 FF                10542 	.byte	-1
   2B37 0D                10543 	.byte	13
   2B38 FC                10544 	.byte	-4
   2B39 FF                10545 	.byte	-1
   2B3A FD                10546 	.byte	-3
   2B3B F2                10547 	.byte	-14
   2B3C FF                10548 	.byte	-1
   2B3D F3                10549 	.byte	-13
   2B3E 05                10550 	.byte	5
   2B3F FF                10551 	.byte	-1
   2B40 0F                10552 	.byte	15
   2B41 06                10553 	.byte	6
   2B42 00                10554 	.byte	0
   2B43 F4                10555 	.byte	-12
   2B44 07                10556 	.byte	7
   2B45 FF                10557 	.byte	-1
   2B46 0F                10558 	.byte	15
   2B47 06                10559 	.byte	6
   2B48 00                10560 	.byte	0
   2B49 FE                10561 	.byte	-2
   2B4A F6                10562 	.byte	-10
   2B4B FF                10563 	.byte	-1
   2B4C 0F                10564 	.byte	15
   2B4D 05                10565 	.byte	5
   2B4E 00                10566 	.byte	0
   2B4F EE                10567 	.byte	-18
   2B50 ED                10568 	.byte	-19
   2B51 FF                10569 	.byte	-1
   2B52 0F                10570 	.byte	15
   2B53 06                10571 	.byte	6
   2B54 00                10572 	.byte	0
   2B55 F3                10573 	.byte	-13
   2B56 05                10574 	.byte	5
   2B57 FF                10575 	.byte	-1
   2B58 03                10576 	.byte	3
   2B59 0D                10577 	.byte	13
   2B5A FF                10578 	.byte	-1
   2B5B 0D                10579 	.byte	13
   2B5C FB                10580 	.byte	-5
   2B5D FF                10581 	.byte	-1
   2B5E FD                10582 	.byte	-3
   2B5F F3                10583 	.byte	-13
   2B60 FF                10584 	.byte	-1
   2B61 F3                10585 	.byte	-13
   2B62 05                10586 	.byte	5
   2B63 01                10587 	.byte	1
                          10588 	.globl _depth2RollingLeft7
   2B64                   10589 _depth2RollingLeft7:
   2B64 FF                10590 	.byte	-1
   2B65 0C                10591 	.byte	12
   2B66 09                10592 	.byte	9
   2B67 FF                10593 	.byte	-1
   2B68 10                10594 	.byte	16
   2B69 F5                10595 	.byte	-11
   2B6A FF                10596 	.byte	-1
   2B6B F4                10597 	.byte	-12
   2B6C F7                10598 	.byte	-9
   2B6D FF                10599 	.byte	-1
   2B6E F0                10600 	.byte	-16
   2B6F 0B                10601 	.byte	11
   2B70 FF                10602 	.byte	-1
   2B71 06                10603 	.byte	6
   2B72 F6                10604 	.byte	-10
   2B73 00                10605 	.byte	0
   2B74 06                10606 	.byte	6
   2B75 13                10607 	.byte	19
   2B76 FF                10608 	.byte	-1
   2B77 06                10609 	.byte	6
   2B78 F5                10610 	.byte	-11
   2B79 00                10611 	.byte	0
   2B7A 0A                10612 	.byte	10
   2B7B 00                10613 	.byte	0
   2B7C FF                10614 	.byte	-1
   2B7D 06                10615 	.byte	6
   2B7E F4                10616 	.byte	-12
   2B7F 00                10617 	.byte	0
   2B80 EE                10618 	.byte	-18
   2B81 03                10619 	.byte	3
   2B82 FF                10620 	.byte	-1
   2B83 06                10621 	.byte	6
   2B84 F5                10622 	.byte	-11
   2B85 00                10623 	.byte	0
   2B86 F0                10624 	.byte	-16
   2B87 0C                10625 	.byte	12
   2B88 FF                10626 	.byte	-1
   2B89 0C                10627 	.byte	12
   2B8A 08                10628 	.byte	8
   2B8B FF                10629 	.byte	-1
   2B8C 10                10630 	.byte	16
   2B8D F4                10631 	.byte	-12
   2B8E FF                10632 	.byte	-1
   2B8F F4                10633 	.byte	-12
   2B90 F8                10634 	.byte	-8
   2B91 FF                10635 	.byte	-1
   2B92 F0                10636 	.byte	-16
   2B93 0C                10637 	.byte	12
   2B94 01                10638 	.byte	1
                          10639 	.globl _depth2RollingRight7
   2B95                   10640 _depth2RollingRight7:
   2B95 00                10641 	.byte	0
   2B96 0B                10642 	.byte	11
   2B97 05                10643 	.byte	5
   2B98 FF                10644 	.byte	-1
   2B99 F8                10645 	.byte	-8
   2B9A 09                10646 	.byte	9
   2B9B FF                10647 	.byte	-1
   2B9C 10                10648 	.byte	16
   2B9D F4                10649 	.byte	-12
   2B9E FF                10650 	.byte	-1
   2B9F 08                10651 	.byte	8
   2BA0 F8                10652 	.byte	-8
   2BA1 FF                10653 	.byte	-1
   2BA2 F0                10654 	.byte	-16
   2BA3 0B                10655 	.byte	11
   2BA4 FF                10656 	.byte	-1
   2BA5 0B                10657 	.byte	11
   2BA6 0C                10658 	.byte	12
   2BA7 00                10659 	.byte	0
   2BA8 ED                10660 	.byte	-19
   2BA9 FD                10661 	.byte	-3
   2BAA FF                10662 	.byte	-1
   2BAB 0A                10663 	.byte	10
   2BAC 0B                10664 	.byte	11
   2BAD 00                10665 	.byte	0
   2BAE 06                10666 	.byte	6
   2BAF E9                10667 	.byte	-23
   2BB0 FF                10668 	.byte	-1
   2BB1 0A                10669 	.byte	10
   2BB2 0B                10670 	.byte	11
   2BB3 00                10671 	.byte	0
   2BB4 FE                10672 	.byte	-2
   2BB5 ED                10673 	.byte	-19
   2BB6 FF                10674 	.byte	-1
   2BB7 0B                10675 	.byte	11
   2BB8 0B                10676 	.byte	11
   2BB9 00                10677 	.byte	0
   2BBA F0                10678 	.byte	-16
   2BBB 0C                10679 	.byte	12
   2BBC FF                10680 	.byte	-1
   2BBD F7                10681 	.byte	-9
   2BBE 08                10682 	.byte	8
   2BBF FF                10683 	.byte	-1
   2BC0 10                10684 	.byte	16
   2BC1 F4                10685 	.byte	-12
   2BC2 FF                10686 	.byte	-1
   2BC3 09                10687 	.byte	9
   2BC4 F8                10688 	.byte	-8
   2BC5 FF                10689 	.byte	-1
   2BC6 F0                10690 	.byte	-16
   2BC7 0C                10691 	.byte	12
   2BC8 01                10692 	.byte	1
                          10693 	.globl _width2RollingFront7
   2BC9                   10694 _width2RollingFront7:
   2BC9 FF                10695 	.byte	-1
   2BCA 06                10696 	.byte	6
   2BCB 1C                10697 	.byte	28
   2BCC FF                10698 	.byte	-1
   2BCD 0F                10699 	.byte	15
   2BCE FC                10700 	.byte	-4
   2BCF FF                10701 	.byte	-1
   2BD0 FA                10702 	.byte	-6
   2BD1 E5                10703 	.byte	-27
   2BD2 FF                10704 	.byte	-1
   2BD3 F1                10705 	.byte	-15
   2BD4 03                10706 	.byte	3
   2BD5 FF                10707 	.byte	-1
   2BD6 02                10708 	.byte	2
   2BD7 05                10709 	.byte	5
   2BD8 00                10710 	.byte	0
   2BD9 04                10711 	.byte	4
   2BDA 17                10712 	.byte	23
   2BDB FF                10713 	.byte	-1
   2BDC 02                10714 	.byte	2
   2BDD 05                10715 	.byte	5
   2BDE 00                10716 	.byte	0
   2BDF 0D                10717 	.byte	13
   2BE0 F7                10718 	.byte	-9
   2BE1 FF                10719 	.byte	-1
   2BE2 02                10720 	.byte	2
   2BE3 05                10721 	.byte	5
   2BE4 00                10722 	.byte	0
   2BE5 F8                10723 	.byte	-8
   2BE6 E0                10724 	.byte	-32
   2BE7 FF                10725 	.byte	-1
   2BE8 02                10726 	.byte	2
   2BE9 04                10727 	.byte	4
   2BEA 00                10728 	.byte	0
   2BEB F1                10729 	.byte	-15
   2BEC 04                10730 	.byte	4
   2BED FF                10731 	.byte	-1
   2BEE 06                10732 	.byte	6
   2BEF 1C                10733 	.byte	28
   2BF0 FF                10734 	.byte	-1
   2BF1 0F                10735 	.byte	15
   2BF2 FC                10736 	.byte	-4
   2BF3 FF                10737 	.byte	-1
   2BF4 FA                10738 	.byte	-6
   2BF5 E4                10739 	.byte	-28
   2BF6 FF                10740 	.byte	-1
   2BF7 F1                10741 	.byte	-15
   2BF8 04                10742 	.byte	4
   2BF9 01                10743 	.byte	1
                          10744 	.globl _width2RollingBack7
   2BFA                   10745 _width2RollingBack7:
   2BFA 00                10746 	.byte	0
   2BFB 0D                10747 	.byte	13
   2BFC FF                10748 	.byte	-1
   2BFD FF                10749 	.byte	-1
   2BFE 06                10750 	.byte	6
   2BFF 1B                10751 	.byte	27
   2C00 FF                10752 	.byte	-1
   2C01 FB                10753 	.byte	-5
   2C02 FC                10754 	.byte	-4
   2C03 FF                10755 	.byte	-1
   2C04 FA                10756 	.byte	-6
   2C05 E5                10757 	.byte	-27
   2C06 FF                10758 	.byte	-1
   2C07 05                10759 	.byte	5
   2C08 04                10760 	.byte	4
   2C09 FF                10761 	.byte	-1
   2C0A 0F                10762 	.byte	15
   2C0B FB                10763 	.byte	-5
   2C0C 00                10764 	.byte	0
   2C0D F7                10765 	.byte	-9
   2C0E 20                10766 	.byte	32
   2C0F FF                10767 	.byte	-1
   2C10 0F                10768 	.byte	15
   2C11 FB                10769 	.byte	-5
   2C12 00                10770 	.byte	0
   2C13 EC                10771 	.byte	-20
   2C14 01                10772 	.byte	1
   2C15 FF                10773 	.byte	-1
   2C16 0E                10774 	.byte	14
   2C17 FB                10775 	.byte	-5
   2C18 00                10776 	.byte	0
   2C19 EC                10777 	.byte	-20
   2C1A EA                10778 	.byte	-22
   2C1B FF                10779 	.byte	-1
   2C1C 0E                10780 	.byte	14
   2C1D FB                10781 	.byte	-5
   2C1E 00                10782 	.byte	0
   2C1F 06                10783 	.byte	6
   2C20 04                10784 	.byte	4
   2C21 FF                10785 	.byte	-1
   2C22 06                10786 	.byte	6
   2C23 1B                10787 	.byte	27
   2C24 FF                10788 	.byte	-1
   2C25 FA                10789 	.byte	-6
   2C26 FC                10790 	.byte	-4
   2C27 FF                10791 	.byte	-1
   2C28 FA                10792 	.byte	-6
   2C29 E5                10793 	.byte	-27
   2C2A FF                10794 	.byte	-1
   2C2B 06                10795 	.byte	6
   2C2C 04                10796 	.byte	4
   2C2D 01                10797 	.byte	1
                          10798 	.globl _height2FallingLeft8
   2C2E                   10799 _height2FallingLeft8:
   2C2E FF                10800 	.byte	-1
   2C2F 0D                10801 	.byte	13
   2C30 07                10802 	.byte	7
   2C31 FF                10803 	.byte	-1
   2C32 08                10804 	.byte	8
   2C33 FA                10805 	.byte	-6
   2C34 FF                10806 	.byte	-1
   2C35 F3                10807 	.byte	-13
   2C36 FA                10808 	.byte	-6
   2C37 FF                10809 	.byte	-1
   2C38 F8                10810 	.byte	-8
   2C39 05                10811 	.byte	5
   2C3A FF                10812 	.byte	-1
   2C3B 08                10813 	.byte	8
   2C3C E9                10814 	.byte	-23
   2C3D 00                10815 	.byte	0
   2C3E 05                10816 	.byte	5
   2C3F 1E                10817 	.byte	30
   2C40 FF                10818 	.byte	-1
   2C41 08                10819 	.byte	8
   2C42 E9                10820 	.byte	-23
   2C43 00                10821 	.byte	0
   2C44 00                10822 	.byte	0
   2C45 11                10823 	.byte	17
   2C46 FF                10824 	.byte	-1
   2C47 08                10825 	.byte	8
   2C48 E9                10826 	.byte	-23
   2C49 00                10827 	.byte	0
   2C4A EB                10828 	.byte	-21
   2C4B 11                10829 	.byte	17
   2C4C FF                10830 	.byte	-1
   2C4D 08                10831 	.byte	8
   2C4E E8                10832 	.byte	-24
   2C4F 00                10833 	.byte	0
   2C50 F8                10834 	.byte	-8
   2C51 06                10835 	.byte	6
   2C52 FF                10836 	.byte	-1
   2C53 0D                10837 	.byte	13
   2C54 07                10838 	.byte	7
   2C55 FF                10839 	.byte	-1
   2C56 08                10840 	.byte	8
   2C57 FA                10841 	.byte	-6
   2C58 FF                10842 	.byte	-1
   2C59 F3                10843 	.byte	-13
   2C5A F9                10844 	.byte	-7
   2C5B FF                10845 	.byte	-1
   2C5C F8                10846 	.byte	-8
   2C5D 06                10847 	.byte	6
   2C5E 01                10848 	.byte	1
                          10849 	.globl _height2RisingRight8
   2C5F                   10850 _height2RisingRight8:
   2C5F 00                10851 	.byte	0
   2C60 06                10852 	.byte	6
   2C61 1C                10853 	.byte	28
   2C62 FF                10854 	.byte	-1
   2C63 08                10855 	.byte	8
   2C64 0D                10856 	.byte	13
   2C65 FF                10857 	.byte	-1
   2C66 08                10858 	.byte	8
   2C67 FA                10859 	.byte	-6
   2C68 FF                10860 	.byte	-1
   2C69 F8                10861 	.byte	-8
   2C6A F3                10862 	.byte	-13
   2C6B FF                10863 	.byte	-1
   2C6C F8                10864 	.byte	-8
   2C6D 06                10865 	.byte	6
   2C6E FF                10866 	.byte	-1
   2C6F 16                10867 	.byte	22
   2C70 F5                10868 	.byte	-11
   2C71 00                10869 	.byte	0
   2C72 F2                10870 	.byte	-14
   2C73 18                10871 	.byte	24
   2C74 FF                10872 	.byte	-1
   2C75 15                10873 	.byte	21
   2C76 F5                10874 	.byte	-11
   2C77 00                10875 	.byte	0
   2C78 F3                10876 	.byte	-13
   2C79 05                10877 	.byte	5
   2C7A FF                10878 	.byte	-1
   2C7B 15                10879 	.byte	21
   2C7C F5                10880 	.byte	-11
   2C7D 00                10881 	.byte	0
   2C7E E3                10882 	.byte	-29
   2C7F FE                10883 	.byte	-2
   2C80 FF                10884 	.byte	-1
   2C81 16                10885 	.byte	22
   2C82 F5                10886 	.byte	-11
   2C83 00                10887 	.byte	0
   2C84 F8                10888 	.byte	-8
   2C85 06                10889 	.byte	6
   2C86 FF                10890 	.byte	-1
   2C87 07                10891 	.byte	7
   2C88 0D                10892 	.byte	13
   2C89 FF                10893 	.byte	-1
   2C8A 08                10894 	.byte	8
   2C8B FA                10895 	.byte	-6
   2C8C FF                10896 	.byte	-1
   2C8D F9                10897 	.byte	-7
   2C8E F3                10898 	.byte	-13
   2C8F FF                10899 	.byte	-1
   2C90 F8                10900 	.byte	-8
   2C91 06                10901 	.byte	6
   2C92 01                10902 	.byte	1
                          10903 	.globl _height2FallingRight8
   2C93                   10904 _height2FallingRight8:
   2C93 00                10905 	.byte	0
   2C94 0D                10906 	.byte	13
   2C95 07                10907 	.byte	7
   2C96 FF                10908 	.byte	-1
   2C97 F6                10909 	.byte	-10
   2C98 07                10910 	.byte	7
   2C99 FF                10911 	.byte	-1
   2C9A 08                10912 	.byte	8
   2C9B FA                10913 	.byte	-6
   2C9C FF                10914 	.byte	-1
   2C9D 0A                10915 	.byte	10
   2C9E F9                10916 	.byte	-7
   2C9F FF                10917 	.byte	-1
   2CA0 F8                10918 	.byte	-8
   2CA1 06                10919 	.byte	6
   2CA2 FF                10920 	.byte	-1
   2CA3 12                10921 	.byte	18
   2CA4 18                10922 	.byte	24
   2CA5 00                10923 	.byte	0
   2CA6 E4                10924 	.byte	-28
   2CA7 EF                10925 	.byte	-17
   2CA8 FF                10926 	.byte	-1
   2CA9 12                10927 	.byte	18
   2CAA 18                10928 	.byte	24
   2CAB 00                10929 	.byte	0
   2CAC F6                10930 	.byte	-10
   2CAD E2                10931 	.byte	-30
   2CAE FF                10932 	.byte	-1
   2CAF 12                10933 	.byte	18
   2CB0 18                10934 	.byte	24
   2CB1 00                10935 	.byte	0
   2CB2 F8                10936 	.byte	-8
   2CB3 E1                10937 	.byte	-31
   2CB4 FF                10938 	.byte	-1
   2CB5 12                10939 	.byte	18
   2CB6 18                10940 	.byte	24
   2CB7 00                10941 	.byte	0
   2CB8 F8                10942 	.byte	-8
   2CB9 06                10943 	.byte	6
   2CBA FF                10944 	.byte	-1
   2CBB F6                10945 	.byte	-10
   2CBC 07                10946 	.byte	7
   2CBD FF                10947 	.byte	-1
   2CBE 08                10948 	.byte	8
   2CBF FA                10949 	.byte	-6
   2CC0 FF                10950 	.byte	-1
   2CC1 0A                10951 	.byte	10
   2CC2 F9                10952 	.byte	-7
   2CC3 FF                10953 	.byte	-1
   2CC4 F8                10954 	.byte	-8
   2CC5 06                10955 	.byte	6
   2CC6 01                10956 	.byte	1
                          10957 	.globl _height2RisingLeft8
   2CC7                   10958 _height2RisingLeft8:
   2CC7 00                10959 	.byte	0
   2CC8 02                10960 	.byte	2
   2CC9 F4                10961 	.byte	-12
   2CCA FF                10962 	.byte	-1
   2CCB FE                10963 	.byte	-2
   2CCC 0C                10964 	.byte	12
   2CCD FF                10965 	.byte	-1
   2CCE 08                10966 	.byte	8
   2CCF FB                10967 	.byte	-5
   2CD0 FF                10968 	.byte	-1
   2CD1 02                10969 	.byte	2
   2CD2 F3                10970 	.byte	-13
   2CD3 FF                10971 	.byte	-1
   2CD4 F8                10972 	.byte	-8
   2CD5 06                10973 	.byte	6
   2CD6 FF                10974 	.byte	-1
   2CD7 1B                10975 	.byte	27
   2CD8 0B                10976 	.byte	11
   2CD9 00                10977 	.byte	0
   2CDA E3                10978 	.byte	-29
   2CDB 01                10979 	.byte	1
   2CDC FF                10980 	.byte	-1
   2CDD 1A                10981 	.byte	26
   2CDE 0B                10982 	.byte	11
   2CDF 00                10983 	.byte	0
   2CE0 EE                10984 	.byte	-18
   2CE1 F0                10985 	.byte	-16
   2CE2 FF                10986 	.byte	-1
   2CE3 1A                10987 	.byte	26
   2CE4 0A                10988 	.byte	10
   2CE5 00                10989 	.byte	0
   2CE6 E8                10990 	.byte	-24
   2CE7 E9                10991 	.byte	-23
   2CE8 FF                10992 	.byte	-1
   2CE9 1B                10993 	.byte	27
   2CEA 0B                10994 	.byte	11
   2CEB 00                10995 	.byte	0
   2CEC F8                10996 	.byte	-8
   2CED 06                10997 	.byte	6
   2CEE FF                10998 	.byte	-1
   2CEF FD                10999 	.byte	-3
   2CF0 0C                11000 	.byte	12
   2CF1 FF                11001 	.byte	-1
   2CF2 08                11002 	.byte	8
   2CF3 FA                11003 	.byte	-6
   2CF4 FF                11004 	.byte	-1
   2CF5 03                11005 	.byte	3
   2CF6 F4                11006 	.byte	-12
   2CF7 FF                11007 	.byte	-1
   2CF8 F8                11008 	.byte	-8
   2CF9 06                11009 	.byte	6
   2CFA 01                11010 	.byte	1
                          11011 	.globl _height2FallingBack8
   2CFB                   11012 _height2FallingBack8:
   2CFB 00                11013 	.byte	0
   2CFC 0F                11014 	.byte	15
   2CFD FE                11015 	.byte	-2
   2CFE FF                11016 	.byte	-1
   2CFF 03                11017 	.byte	3
   2D00 0D                11018 	.byte	13
   2D01 FF                11019 	.byte	-1
   2D02 F9                11020 	.byte	-7
   2D03 FD                11021 	.byte	-3
   2D04 FF                11022 	.byte	-1
   2D05 FD                11023 	.byte	-3
   2D06 F3                11024 	.byte	-13
   2D07 FF                11025 	.byte	-1
   2D08 07                11026 	.byte	7
   2D09 03                11027 	.byte	3
   2D0A FF                11028 	.byte	-1
   2D0B 1B                11029 	.byte	27
   2D0C F6                11030 	.byte	-10
   2D0D 00                11031 	.byte	0
   2D0E E8                11032 	.byte	-24
   2D0F 17                11033 	.byte	23
   2D10 FF                11034 	.byte	-1
   2D11 1B                11035 	.byte	27
   2D12 F6                11036 	.byte	-10
   2D13 00                11037 	.byte	0
   2D14 DE                11038 	.byte	-34
   2D15 07                11039 	.byte	7
   2D16 FF                11040 	.byte	-1
   2D17 1B                11041 	.byte	27
   2D18 F7                11042 	.byte	-9
   2D19 00                11043 	.byte	0
   2D1A E2                11044 	.byte	-30
   2D1B FC                11045 	.byte	-4
   2D1C FF                11046 	.byte	-1
   2D1D 1B                11047 	.byte	27
   2D1E F6                11048 	.byte	-10
   2D1F 00                11049 	.byte	0
   2D20 07                11050 	.byte	7
   2D21 03                11051 	.byte	3
   2D22 FF                11052 	.byte	-1
   2D23 03                11053 	.byte	3
   2D24 0D                11054 	.byte	13
   2D25 FF                11055 	.byte	-1
   2D26 F9                11056 	.byte	-7
   2D27 FE                11057 	.byte	-2
   2D28 FF                11058 	.byte	-1
   2D29 FD                11059 	.byte	-3
   2D2A F2                11060 	.byte	-14
   2D2B FF                11061 	.byte	-1
   2D2C 07                11062 	.byte	7
   2D2D 03                11063 	.byte	3
   2D2E 01                11064 	.byte	1
                          11065 	.globl _height2RisingFront8
   2D2F                   11066 _height2RisingFront8:
   2D2F 00                11067 	.byte	0
   2D30 FF                11068 	.byte	-1
   2D31 06                11069 	.byte	6
   2D32 FF                11070 	.byte	-1
   2D33 02                11071 	.byte	2
   2D34 0E                11072 	.byte	14
   2D35 FF                11073 	.byte	-1
   2D36 02                11074 	.byte	2
   2D37 FA                11075 	.byte	-6
   2D38 FF                11076 	.byte	-1
   2D39 FD                11077 	.byte	-3
   2D3A F2                11078 	.byte	-14
   2D3B FF                11079 	.byte	-1
   2D3C FF                11080 	.byte	-1
   2D3D 06                11081 	.byte	6
   2D3E FF                11082 	.byte	-1
   2D3F 1D                11083 	.byte	29
   2D40 FB                11084 	.byte	-5
   2D41 00                11085 	.byte	0
   2D42 E5                11086 	.byte	-27
   2D43 13                11087 	.byte	19
   2D44 FF                11088 	.byte	-1
   2D45 1E                11089 	.byte	30
   2D46 FB                11090 	.byte	-5
   2D47 00                11091 	.byte	0
   2D48 E4                11092 	.byte	-28
   2D49 FF                11093 	.byte	-1
   2D4A FF                11094 	.byte	-1
   2D4B 1E                11095 	.byte	30
   2D4C FB                11096 	.byte	-5
   2D4D 00                11097 	.byte	0
   2D4E DF                11098 	.byte	-33
   2D4F F7                11099 	.byte	-9
   2D50 FF                11100 	.byte	-1
   2D51 1E                11101 	.byte	30
   2D52 FC                11102 	.byte	-4
   2D53 00                11103 	.byte	0
   2D54 FE                11104 	.byte	-2
   2D55 05                11105 	.byte	5
   2D56 FF                11106 	.byte	-1
   2D57 03                11107 	.byte	3
   2D58 0E                11108 	.byte	14
   2D59 FF                11109 	.byte	-1
   2D5A 02                11110 	.byte	2
   2D5B FA                11111 	.byte	-6
   2D5C FF                11112 	.byte	-1
   2D5D FD                11113 	.byte	-3
   2D5E F3                11114 	.byte	-13
   2D5F FF                11115 	.byte	-1
   2D60 FE                11116 	.byte	-2
   2D61 05                11117 	.byte	5
   2D62 01                11118 	.byte	1
                          11119 	.globl _height2FallingFront8
   2D63                   11120 _height2FallingFront8:
   2D63 FF                11121 	.byte	-1
   2D64 03                11122 	.byte	3
   2D65 0E                11123 	.byte	14
   2D66 FF                11124 	.byte	-1
   2D67 0F                11125 	.byte	15
   2D68 FD                11126 	.byte	-3
   2D69 FF                11127 	.byte	-1
   2D6A FD                11128 	.byte	-3
   2D6B F3                11129 	.byte	-13
   2D6C FF                11130 	.byte	-1
   2D6D F1                11131 	.byte	-15
   2D6E 02                11132 	.byte	2
   2D6F FF                11133 	.byte	-1
   2D70 00                11134 	.byte	0
   2D71 0A                11135 	.byte	10
   2D72 00                11136 	.byte	0
   2D73 03                11137 	.byte	3
   2D74 04                11138 	.byte	4
   2D75 FF                11139 	.byte	-1
   2D76 FF                11140 	.byte	-1
   2D77 0A                11141 	.byte	10
   2D78 00                11142 	.byte	0
   2D79 10                11143 	.byte	16
   2D7A F3                11144 	.byte	-13
   2D7B FF                11145 	.byte	-1
   2D7C FF                11146 	.byte	-1
   2D7D 0A                11147 	.byte	10
   2D7E 00                11148 	.byte	0
   2D7F FE                11149 	.byte	-2
   2D80 E9                11150 	.byte	-23
   2D81 FF                11151 	.byte	-1
   2D82 FF                11152 	.byte	-1
   2D83 09                11153 	.byte	9
   2D84 00                11154 	.byte	0
   2D85 F2                11155 	.byte	-14
   2D86 03                11156 	.byte	3
   2D87 FF                11157 	.byte	-1
   2D88 02                11158 	.byte	2
   2D89 0E                11159 	.byte	14
   2D8A FF                11160 	.byte	-1
   2D8B 0F                11161 	.byte	15
   2D8C FD                11162 	.byte	-3
   2D8D FF                11163 	.byte	-1
   2D8E FD                11164 	.byte	-3
   2D8F F2                11165 	.byte	-14
   2D90 FF                11166 	.byte	-1
   2D91 F2                11167 	.byte	-14
   2D92 03                11168 	.byte	3
   2D93 01                11169 	.byte	1
                          11170 	.globl _height2RisingBack8
   2D94                   11171 _height2RisingBack8:
   2D94 00                11172 	.byte	0
   2D95 10                11173 	.byte	16
   2D96 F5                11174 	.byte	-11
   2D97 FF                11175 	.byte	-1
   2D98 03                11176 	.byte	3
   2D99 0D                11177 	.byte	13
   2D9A FF                11178 	.byte	-1
   2D9B 0C                11179 	.byte	12
   2D9C FB                11180 	.byte	-5
   2D9D FF                11181 	.byte	-1
   2D9E FD                11182 	.byte	-3
   2D9F F2                11183 	.byte	-14
   2DA0 FF                11184 	.byte	-1
   2DA1 F4                11185 	.byte	-12
   2DA2 06                11186 	.byte	6
   2DA3 FF                11187 	.byte	-1
   2DA4 12                11188 	.byte	18
   2DA5 05                11189 	.byte	5
   2DA6 00                11190 	.byte	0
   2DA7 F1                11191 	.byte	-15
   2DA8 08                11192 	.byte	8
   2DA9 FF                11193 	.byte	-1
   2DAA 12                11194 	.byte	18
   2DAB 05                11195 	.byte	5
   2DAC 00                11196 	.byte	0
   2DAD FA                11197 	.byte	-6
   2DAE F6                11198 	.byte	-10
   2DAF FF                11199 	.byte	-1
   2DB0 12                11200 	.byte	18
   2DB1 04                11201 	.byte	4
   2DB2 00                11202 	.byte	0
   2DB3 EB                11203 	.byte	-21
   2DB4 EE                11204 	.byte	-18
   2DB5 FF                11205 	.byte	-1
   2DB6 12                11206 	.byte	18
   2DB7 05                11207 	.byte	5
   2DB8 00                11208 	.byte	0
   2DB9 F4                11209 	.byte	-12
   2DBA 06                11210 	.byte	6
   2DBB FF                11211 	.byte	-1
   2DBC 03                11212 	.byte	3
   2DBD 0D                11213 	.byte	13
   2DBE FF                11214 	.byte	-1
   2DBF 0C                11215 	.byte	12
   2DC0 FA                11216 	.byte	-6
   2DC1 FF                11217 	.byte	-1
   2DC2 FD                11218 	.byte	-3
   2DC3 F3                11219 	.byte	-13
   2DC4 FF                11220 	.byte	-1
   2DC5 F4                11221 	.byte	-12
   2DC6 06                11222 	.byte	6
   2DC7 01                11223 	.byte	1
                          11224 	.globl _depth2RollingLeft8
   2DC8                   11225 _depth2RollingLeft8:
   2DC8 FF                11226 	.byte	-1
   2DC9 0D                11227 	.byte	13
   2DCA 07                11228 	.byte	7
   2DCB FF                11229 	.byte	-1
   2DCC 10                11230 	.byte	16
   2DCD F5                11231 	.byte	-11
   2DCE FF                11232 	.byte	-1
   2DCF F3                11233 	.byte	-13
   2DD0 F9                11234 	.byte	-7
   2DD1 FF                11235 	.byte	-1
   2DD2 F0                11236 	.byte	-16
   2DD3 0B                11237 	.byte	11
   2DD4 FF                11238 	.byte	-1
   2DD5 04                11239 	.byte	4
   2DD6 F5                11240 	.byte	-11
   2DD7 00                11241 	.byte	0
   2DD8 09                11242 	.byte	9
   2DD9 12                11243 	.byte	18
   2DDA FF                11244 	.byte	-1
   2DDB 04                11245 	.byte	4
   2DDC F5                11246 	.byte	-11
   2DDD 00                11247 	.byte	0
   2DDE 0C                11248 	.byte	12
   2DDF 00                11249 	.byte	0
   2DE0 FF                11250 	.byte	-1
   2DE1 04                11251 	.byte	4
   2DE2 F4                11252 	.byte	-12
   2DE3 00                11253 	.byte	0
   2DE4 EF                11254 	.byte	-17
   2DE5 05                11255 	.byte	5
   2DE6 FF                11256 	.byte	-1
   2DE7 04                11257 	.byte	4
   2DE8 F4                11258 	.byte	-12
   2DE9 00                11259 	.byte	0
   2DEA F0                11260 	.byte	-16
   2DEB 0C                11261 	.byte	12
   2DEC FF                11262 	.byte	-1
   2DED 0D                11263 	.byte	13
   2DEE 07                11264 	.byte	7
   2DEF FF                11265 	.byte	-1
   2DF0 10                11266 	.byte	16
   2DF1 F4                11267 	.byte	-12
   2DF2 FF                11268 	.byte	-1
   2DF3 F3                11269 	.byte	-13
   2DF4 F9                11270 	.byte	-7
   2DF5 FF                11271 	.byte	-1
   2DF6 F0                11272 	.byte	-16
   2DF7 0C                11273 	.byte	12
   2DF8 01                11274 	.byte	1
                          11275 	.globl _depth2RollingRight8
   2DF9                   11276 _depth2RollingRight8:
   2DF9 00                11277 	.byte	0
   2DFA 0D                11278 	.byte	13
   2DFB 07                11279 	.byte	7
   2DFC FF                11280 	.byte	-1
   2DFD F6                11281 	.byte	-10
   2DFE 07                11282 	.byte	7
   2DFF FF                11283 	.byte	-1
   2E00 10                11284 	.byte	16
   2E01 F4                11285 	.byte	-12
   2E02 FF                11286 	.byte	-1
   2E03 0A                11287 	.byte	10
   2E04 FA                11288 	.byte	-6
   2E05 FF                11289 	.byte	-1
   2E06 F0                11290 	.byte	-16
   2E07 0B                11291 	.byte	11
   2E08 FF                11292 	.byte	-1
   2E09 09                11293 	.byte	9
   2E0A 0C                11294 	.byte	12
   2E0B 00                11295 	.byte	0
   2E0C ED                11296 	.byte	-19
   2E0D FB                11297 	.byte	-5
   2E0E FF                11298 	.byte	-1
   2E0F 09                11299 	.byte	9
   2E10 0C                11300 	.byte	12
   2E11 00                11301 	.byte	0
   2E12 07                11302 	.byte	7
   2E13 E8                11303 	.byte	-24
   2E14 FF                11304 	.byte	-1
   2E15 09                11305 	.byte	9
   2E16 0C                11306 	.byte	12
   2E17 00                11307 	.byte	0
   2E18 01                11308 	.byte	1
   2E19 EE                11309 	.byte	-18
   2E1A FF                11310 	.byte	-1
   2E1B 09                11311 	.byte	9
   2E1C 0B                11312 	.byte	11
   2E1D 00                11313 	.byte	0
   2E1E F0                11314 	.byte	-16
   2E1F 0C                11315 	.byte	12
   2E20 FF                11316 	.byte	-1
   2E21 F6                11317 	.byte	-10
   2E22 07                11318 	.byte	7
   2E23 FF                11319 	.byte	-1
   2E24 10                11320 	.byte	16
   2E25 F4                11321 	.byte	-12
   2E26 FF                11322 	.byte	-1
   2E27 0A                11323 	.byte	10
   2E28 F9                11324 	.byte	-7
   2E29 FF                11325 	.byte	-1
   2E2A F0                11326 	.byte	-16
   2E2B 0C                11327 	.byte	12
   2E2C 01                11328 	.byte	1
                          11329 	.globl _width2RollingFront8
   2E2D                   11330 _width2RollingFront8:
   2E2D FF                11331 	.byte	-1
   2E2E 06                11332 	.byte	6
   2E2F 1C                11333 	.byte	28
   2E30 FF                11334 	.byte	-1
   2E31 0F                11335 	.byte	15
   2E32 FD                11336 	.byte	-3
   2E33 FF                11337 	.byte	-1
   2E34 FA                11338 	.byte	-6
   2E35 E5                11339 	.byte	-27
   2E36 FF                11340 	.byte	-1
   2E37 F1                11341 	.byte	-15
   2E38 02                11342 	.byte	2
   2E39 FF                11343 	.byte	-1
   2E3A 00                11344 	.byte	0
   2E3B 05                11345 	.byte	5
   2E3C 00                11346 	.byte	0
   2E3D 06                11347 	.byte	6
   2E3E 17                11348 	.byte	23
   2E3F FF                11349 	.byte	-1
   2E40 00                11350 	.byte	0
   2E41 05                11351 	.byte	5
   2E42 00                11352 	.byte	0
   2E43 0F                11353 	.byte	15
   2E44 F8                11354 	.byte	-8
   2E45 FF                11355 	.byte	-1
   2E46 00                11356 	.byte	0
   2E47 05                11357 	.byte	5
   2E48 00                11358 	.byte	0
   2E49 FA                11359 	.byte	-6
   2E4A E0                11360 	.byte	-32
   2E4B FF                11361 	.byte	-1
   2E4C 00                11362 	.byte	0
   2E4D 04                11363 	.byte	4
   2E4E 00                11364 	.byte	0
   2E4F F1                11365 	.byte	-15
   2E50 03                11366 	.byte	3
   2E51 FF                11367 	.byte	-1
   2E52 06                11368 	.byte	6
   2E53 1C                11369 	.byte	28
   2E54 FF                11370 	.byte	-1
   2E55 0F                11371 	.byte	15
   2E56 FD                11372 	.byte	-3
   2E57 FF                11373 	.byte	-1
   2E58 FA                11374 	.byte	-6
   2E59 E4                11375 	.byte	-28
   2E5A FF                11376 	.byte	-1
   2E5B F1                11377 	.byte	-15
   2E5C 03                11378 	.byte	3
   2E5D 01                11379 	.byte	1
                          11380 	.globl _width2RollingBack8
   2E5E                   11381 _width2RollingBack8:
   2E5E 00                11382 	.byte	0
   2E5F 0F                11383 	.byte	15
   2E60 FE                11384 	.byte	-2
   2E61 FF                11385 	.byte	-1
   2E62 06                11386 	.byte	6
   2E63 1B                11387 	.byte	27
   2E64 FF                11388 	.byte	-1
   2E65 F9                11389 	.byte	-7
   2E66 FD                11390 	.byte	-3
   2E67 FF                11391 	.byte	-1
   2E68 FA                11392 	.byte	-6
   2E69 E5                11393 	.byte	-27
   2E6A FF                11394 	.byte	-1
   2E6B 07                11395 	.byte	7
   2E6C 03                11396 	.byte	3
   2E6D FF                11397 	.byte	-1
   2E6E 0E                11398 	.byte	14
   2E6F FB                11399 	.byte	-5
   2E70 00                11400 	.byte	0
   2E71 F8                11401 	.byte	-8
   2E72 20                11402 	.byte	32
   2E73 FF                11403 	.byte	-1
   2E74 0E                11404 	.byte	14
   2E75 FB                11405 	.byte	-5
   2E76 00                11406 	.byte	0
   2E77 EB                11407 	.byte	-21
   2E78 02                11408 	.byte	2
   2E79 FF                11409 	.byte	-1
   2E7A 0D                11410 	.byte	13
   2E7B FB                11411 	.byte	-5
   2E7C 00                11412 	.byte	0
   2E7D ED                11413 	.byte	-19
   2E7E EA                11414 	.byte	-22
   2E7F FF                11415 	.byte	-1
   2E80 0D                11416 	.byte	13
   2E81 FB                11417 	.byte	-5
   2E82 00                11418 	.byte	0
   2E83 08                11419 	.byte	8
   2E84 03                11420 	.byte	3
   2E85 FF                11421 	.byte	-1
   2E86 06                11422 	.byte	6
   2E87 1B                11423 	.byte	27
   2E88 FF                11424 	.byte	-1
   2E89 F8                11425 	.byte	-8
   2E8A FD                11426 	.byte	-3
   2E8B FF                11427 	.byte	-1
   2E8C FA                11428 	.byte	-6
   2E8D E5                11429 	.byte	-27
   2E8E FF                11430 	.byte	-1
   2E8F 08                11431 	.byte	8
   2E90 03                11432 	.byte	3
   2E91 01                11433 	.byte	1
                          11434 	.globl _height2FallingLeft9
   2E92                   11435 _height2FallingLeft9:
   2E92 FF                11436 	.byte	-1
   2E93 0D                11437 	.byte	13
   2E94 05                11438 	.byte	5
   2E95 FF                11439 	.byte	-1
   2E96 08                11440 	.byte	8
   2E97 FB                11441 	.byte	-5
   2E98 FF                11442 	.byte	-1
   2E99 F3                11443 	.byte	-13
   2E9A FB                11444 	.byte	-5
   2E9B FF                11445 	.byte	-1
   2E9C F8                11446 	.byte	-8
   2E9D 05                11447 	.byte	5
   2E9E FF                11448 	.byte	-1
   2E9F 04                11449 	.byte	4
   2EA0 E7                11450 	.byte	-25
   2EA1 00                11451 	.byte	0
   2EA2 09                11452 	.byte	9
   2EA3 1E                11453 	.byte	30
   2EA4 FF                11454 	.byte	-1
   2EA5 05                11455 	.byte	5
   2EA6 E7                11456 	.byte	-25
   2EA7 00                11457 	.byte	0
   2EA8 03                11458 	.byte	3
   2EA9 14                11459 	.byte	20
   2EAA FF                11460 	.byte	-1
   2EAB 05                11461 	.byte	5
   2EAC E6                11462 	.byte	-26
   2EAD 00                11463 	.byte	0
   2EAE EE                11464 	.byte	-18
   2EAF 15                11465 	.byte	21
   2EB0 FF                11466 	.byte	-1
   2EB1 04                11467 	.byte	4
   2EB2 E6                11468 	.byte	-26
   2EB3 00                11469 	.byte	0
   2EB4 F8                11470 	.byte	-8
   2EB5 06                11471 	.byte	6
   2EB6 FF                11472 	.byte	-1
   2EB7 0E                11473 	.byte	14
   2EB8 05                11474 	.byte	5
   2EB9 FF                11475 	.byte	-1
   2EBA 08                11476 	.byte	8
   2EBB FA                11477 	.byte	-6
   2EBC FF                11478 	.byte	-1
   2EBD F2                11479 	.byte	-14
   2EBE FB                11480 	.byte	-5
   2EBF FF                11481 	.byte	-1
   2EC0 F8                11482 	.byte	-8
   2EC1 06                11483 	.byte	6
   2EC2 01                11484 	.byte	1
                          11485 	.globl _height2RisingRight9
   2EC3                   11486 _height2RisingRight9:
   2EC3 00                11487 	.byte	0
   2EC4 06                11488 	.byte	6
   2EC5 1C                11489 	.byte	28
   2EC6 FF                11490 	.byte	-1
   2EC7 06                11491 	.byte	6
   2EC8 0E                11492 	.byte	14
   2EC9 FF                11493 	.byte	-1
   2ECA 08                11494 	.byte	8
   2ECB FA                11495 	.byte	-6
   2ECC FF                11496 	.byte	-1
   2ECD FA                11497 	.byte	-6
   2ECE F2                11498 	.byte	-14
   2ECF FF                11499 	.byte	-1
   2ED0 F8                11500 	.byte	-8
   2ED1 06                11501 	.byte	6
   2ED2 FF                11502 	.byte	-1
   2ED3 18                11503 	.byte	24
   2ED4 F9                11504 	.byte	-7
   2ED5 00                11505 	.byte	0
   2ED6 EE                11506 	.byte	-18
   2ED7 15                11507 	.byte	21
   2ED8 FF                11508 	.byte	-1
   2ED9 18                11509 	.byte	24
   2EDA F8                11510 	.byte	-8
   2EDB 00                11511 	.byte	0
   2EDC F0                11512 	.byte	-16
   2EDD 02                11513 	.byte	2
   2EDE FF                11514 	.byte	-1
   2EDF 18                11515 	.byte	24
   2EE0 F8                11516 	.byte	-8
   2EE1 00                11517 	.byte	0
   2EE2 E2                11518 	.byte	-30
   2EE3 FA                11519 	.byte	-6
   2EE4 FF                11520 	.byte	-1
   2EE5 18                11521 	.byte	24
   2EE6 F9                11522 	.byte	-7
   2EE7 00                11523 	.byte	0
   2EE8 F8                11524 	.byte	-8
   2EE9 06                11525 	.byte	6
   2EEA FF                11526 	.byte	-1
   2EEB 06                11527 	.byte	6
   2EEC 0D                11528 	.byte	13
   2EED FF                11529 	.byte	-1
   2EEE 08                11530 	.byte	8
   2EEF FA                11531 	.byte	-6
   2EF0 FF                11532 	.byte	-1
   2EF1 FA                11533 	.byte	-6
   2EF2 F3                11534 	.byte	-13
   2EF3 FF                11535 	.byte	-1
   2EF4 F8                11536 	.byte	-8
   2EF5 06                11537 	.byte	6
   2EF6 01                11538 	.byte	1
                          11539 	.globl _height2FallingRight9
   2EF7                   11540 _height2FallingRight9:
   2EF7 00                11541 	.byte	0
   2EF8 0E                11542 	.byte	14
   2EF9 09                11543 	.byte	9
   2EFA FF                11544 	.byte	-1
   2EFB F5                11545 	.byte	-11
   2EFC 05                11546 	.byte	5
   2EFD FF                11547 	.byte	-1
   2EFE 08                11548 	.byte	8
   2EFF FA                11549 	.byte	-6
   2F00 FF                11550 	.byte	-1
   2F01 0B                11551 	.byte	11
   2F02 FB                11552 	.byte	-5
   2F03 FF                11553 	.byte	-1
   2F04 F8                11554 	.byte	-8
   2F05 06                11555 	.byte	6
   2F06 FF                11556 	.byte	-1
   2F07 0F                11557 	.byte	15
   2F08 1A                11558 	.byte	26
   2F09 00                11559 	.byte	0
   2F0A E6                11560 	.byte	-26
   2F0B EB                11561 	.byte	-21
   2F0C FF                11562 	.byte	-1
   2F0D 0F                11563 	.byte	15
   2F0E 1A                11564 	.byte	26
   2F0F 00                11565 	.byte	0
   2F10 F9                11566 	.byte	-7
   2F11 E0                11567 	.byte	-32
   2F12 FF                11568 	.byte	-1
   2F13 0F                11569 	.byte	15
   2F14 1A                11570 	.byte	26
   2F15 00                11571 	.byte	0
   2F16 FC                11572 	.byte	-4
   2F17 E1                11573 	.byte	-31
   2F18 FF                11574 	.byte	-1
   2F19 0F                11575 	.byte	15
   2F1A 1A                11576 	.byte	26
   2F1B 00                11577 	.byte	0
   2F1C F8                11578 	.byte	-8
   2F1D 06                11579 	.byte	6
   2F1E FF                11580 	.byte	-1
   2F1F F5                11581 	.byte	-11
   2F20 05                11582 	.byte	5
   2F21 FF                11583 	.byte	-1
   2F22 08                11584 	.byte	8
   2F23 FA                11585 	.byte	-6
   2F24 FF                11586 	.byte	-1
   2F25 0B                11587 	.byte	11
   2F26 FB                11588 	.byte	-5
   2F27 FF                11589 	.byte	-1
   2F28 F8                11590 	.byte	-8
   2F29 06                11591 	.byte	6
   2F2A 01                11592 	.byte	1
                          11593 	.globl _height2RisingLeft9
   2F2B                   11594 _height2RisingLeft9:
   2F2B 00                11595 	.byte	0
   2F2C 00                11596 	.byte	0
   2F2D F3                11597 	.byte	-13
   2F2E FF                11598 	.byte	-1
   2F2F 00                11599 	.byte	0
   2F30 0D                11600 	.byte	13
   2F31 FF                11601 	.byte	-1
   2F32 08                11602 	.byte	8
   2F33 FB                11603 	.byte	-5
   2F34 FF                11604 	.byte	-1
   2F35 00                11605 	.byte	0
   2F36 F2                11606 	.byte	-14
   2F37 FF                11607 	.byte	-1
   2F38 F8                11608 	.byte	-8
   2F39 06                11609 	.byte	6
   2F3A FF                11610 	.byte	-1
   2F3B 1B                11611 	.byte	27
   2F3C 08                11612 	.byte	8
   2F3D 00                11613 	.byte	0
   2F3E E5                11614 	.byte	-27
   2F3F 05                11615 	.byte	5
   2F40 FF                11616 	.byte	-1
   2F41 1B                11617 	.byte	27
   2F42 07                11618 	.byte	7
   2F43 00                11619 	.byte	0
   2F44 ED                11620 	.byte	-19
   2F45 F4                11621 	.byte	-12
   2F46 FF                11622 	.byte	-1
   2F47 1B                11623 	.byte	27
   2F48 06                11624 	.byte	6
   2F49 00                11625 	.byte	0
   2F4A E5                11626 	.byte	-27
   2F4B EC                11627 	.byte	-20
   2F4C FF                11628 	.byte	-1
   2F4D 1B                11629 	.byte	27
   2F4E 08                11630 	.byte	8
   2F4F 00                11631 	.byte	0
   2F50 F8                11632 	.byte	-8
   2F51 06                11633 	.byte	6
   2F52 FF                11634 	.byte	-1
   2F53 00                11635 	.byte	0
   2F54 0C                11636 	.byte	12
   2F55 FF                11637 	.byte	-1
   2F56 08                11638 	.byte	8
   2F57 FA                11639 	.byte	-6
   2F58 FF                11640 	.byte	-1
   2F59 00                11641 	.byte	0
   2F5A F4                11642 	.byte	-12
   2F5B FF                11643 	.byte	-1
   2F5C F8                11644 	.byte	-8
   2F5D 06                11645 	.byte	6
   2F5E 01                11646 	.byte	1
                          11647 	.globl _height2FallingBack9
   2F5F                   11648 _height2FallingBack9:
   2F5F 00                11649 	.byte	0
   2F60 11                11650 	.byte	17
   2F61 FD                11651 	.byte	-3
   2F62 FF                11652 	.byte	-1
   2F63 03                11653 	.byte	3
   2F64 0D                11654 	.byte	13
   2F65 FF                11655 	.byte	-1
   2F66 F7                11656 	.byte	-9
   2F67 FE                11657 	.byte	-2
   2F68 FF                11658 	.byte	-1
   2F69 FD                11659 	.byte	-3
   2F6A F3                11660 	.byte	-13
   2F6B FF                11661 	.byte	-1
   2F6C 09                11662 	.byte	9
   2F6D 02                11663 	.byte	2
   2F6E FF                11664 	.byte	-1
   2F6F 19                11665 	.byte	25
   2F70 F5                11666 	.byte	-11
   2F71 00                11667 	.byte	0
   2F72 EA                11668 	.byte	-22
   2F73 18                11669 	.byte	24
   2F74 FF                11670 	.byte	-1
   2F75 19                11671 	.byte	25
   2F76 F6                11672 	.byte	-10
   2F77 00                11673 	.byte	0
   2F78 DE                11674 	.byte	-34
   2F79 08                11675 	.byte	8
   2F7A FF                11676 	.byte	-1
   2F7B 19                11677 	.byte	25
   2F7C F6                11678 	.byte	-10
   2F7D 00                11679 	.byte	0
   2F7E E4                11680 	.byte	-28
   2F7F FD                11681 	.byte	-3
   2F80 FF                11682 	.byte	-1
   2F81 19                11683 	.byte	25
   2F82 F5                11684 	.byte	-11
   2F83 00                11685 	.byte	0
   2F84 09                11686 	.byte	9
   2F85 02                11687 	.byte	2
   2F86 FF                11688 	.byte	-1
   2F87 03                11689 	.byte	3
   2F88 0E                11690 	.byte	14
   2F89 FF                11691 	.byte	-1
   2F8A F7                11692 	.byte	-9
   2F8B FE                11693 	.byte	-2
   2F8C FF                11694 	.byte	-1
   2F8D FD                11695 	.byte	-3
   2F8E F2                11696 	.byte	-14
   2F8F FF                11697 	.byte	-1
   2F90 09                11698 	.byte	9
   2F91 02                11699 	.byte	2
   2F92 01                11700 	.byte	1
                          11701 	.globl _height2RisingFront9
   2F93                   11702 _height2RisingFront9:
   2F93 00                11703 	.byte	0
   2F94 FD                11704 	.byte	-3
   2F95 06                11705 	.byte	6
   2F96 FF                11706 	.byte	-1
   2F97 03                11707 	.byte	3
   2F98 0E                11708 	.byte	14
   2F99 FF                11709 	.byte	-1
   2F9A 03                11710 	.byte	3
   2F9B FA                11711 	.byte	-6
   2F9C FF                11712 	.byte	-1
   2F9D FD                11713 	.byte	-3
   2F9E F2                11714 	.byte	-14
   2F9F FF                11715 	.byte	-1
   2FA0 FD                11716 	.byte	-3
   2FA1 06                11717 	.byte	6
   2FA2 FF                11718 	.byte	-1
   2FA3 1C                11719 	.byte	28
   2FA4 FD                11720 	.byte	-3
   2FA5 00                11721 	.byte	0
   2FA6 E7                11722 	.byte	-25
   2FA7 11                11723 	.byte	17
   2FA8 FF                11724 	.byte	-1
   2FA9 1C                11725 	.byte	28
   2FAA FD                11726 	.byte	-3
   2FAB 00                11727 	.byte	0
   2FAC E7                11728 	.byte	-25
   2FAD FD                11729 	.byte	-3
   2FAE FF                11730 	.byte	-1
   2FAF 1D                11731 	.byte	29
   2FB0 FD                11732 	.byte	-3
   2FB1 00                11733 	.byte	0
   2FB2 E0                11734 	.byte	-32
   2FB3 F5                11735 	.byte	-11
   2FB4 FF                11736 	.byte	-1
   2FB5 1D                11737 	.byte	29
   2FB6 FE                11738 	.byte	-2
   2FB7 00                11739 	.byte	0
   2FB8 FC                11740 	.byte	-4
   2FB9 05                11741 	.byte	5
   2FBA FF                11742 	.byte	-1
   2FBB 03                11743 	.byte	3
   2FBC 0E                11744 	.byte	14
   2FBD FF                11745 	.byte	-1
   2FBE 04                11746 	.byte	4
   2FBF FA                11747 	.byte	-6
   2FC0 FF                11748 	.byte	-1
   2FC1 FD                11749 	.byte	-3
   2FC2 F3                11750 	.byte	-13
   2FC3 FF                11751 	.byte	-1
   2FC4 FC                11752 	.byte	-4
   2FC5 05                11753 	.byte	5
   2FC6 01                11754 	.byte	1
                          11755 	.globl _height2FallingFront9
   2FC7                   11756 _height2FallingFront9:
   2FC7 FF                11757 	.byte	-1
   2FC8 03                11758 	.byte	3
   2FC9 0E                11759 	.byte	14
   2FCA FF                11760 	.byte	-1
   2FCB 0F                11761 	.byte	15
   2FCC FE                11762 	.byte	-2
   2FCD FF                11763 	.byte	-1
   2FCE FD                11764 	.byte	-3
   2FCF F3                11765 	.byte	-13
   2FD0 FF                11766 	.byte	-1
   2FD1 F1                11767 	.byte	-15
   2FD2 01                11768 	.byte	1
   2FD3 FF                11769 	.byte	-1
   2FD4 FC                11770 	.byte	-4
   2FD5 0B                11771 	.byte	11
   2FD6 00                11772 	.byte	0
   2FD7 07                11773 	.byte	7
   2FD8 03                11774 	.byte	3
   2FD9 FF                11775 	.byte	-1
   2FDA FC                11776 	.byte	-4
   2FDB 0B                11777 	.byte	11
   2FDC 00                11778 	.byte	0
   2FDD 13                11779 	.byte	19
   2FDE F3                11780 	.byte	-13
   2FDF FF                11781 	.byte	-1
   2FE0 FB                11782 	.byte	-5
   2FE1 0B                11783 	.byte	11
   2FE2 00                11784 	.byte	0
   2FE3 02                11785 	.byte	2
   2FE4 E8                11786 	.byte	-24
   2FE5 FF                11787 	.byte	-1
   2FE6 FB                11788 	.byte	-5
   2FE7 0A                11789 	.byte	10
   2FE8 00                11790 	.byte	0
   2FE9 F2                11791 	.byte	-14
   2FEA 02                11792 	.byte	2
   2FEB FF                11793 	.byte	-1
   2FEC 03                11794 	.byte	3
   2FED 0E                11795 	.byte	14
   2FEE FF                11796 	.byte	-1
   2FEF 0E                11797 	.byte	14
   2FF0 FE                11798 	.byte	-2
   2FF1 FF                11799 	.byte	-1
   2FF2 FD                11800 	.byte	-3
   2FF3 F2                11801 	.byte	-14
   2FF4 FF                11802 	.byte	-1
   2FF5 F2                11803 	.byte	-14
   2FF6 02                11804 	.byte	2
   2FF7 01                11805 	.byte	1
                          11806 	.globl _height2RisingBack9
   2FF8                   11807 _height2RisingBack9:
   2FF8 00                11808 	.byte	0
   2FF9 10                11809 	.byte	16
   2FFA F5                11810 	.byte	-11
   2FFB FF                11811 	.byte	-1
   2FFC 03                11812 	.byte	3
   2FFD 0D                11813 	.byte	13
   2FFE FF                11814 	.byte	-1
   2FFF 0B                11815 	.byte	11
   3000 FB                11816 	.byte	-5
   3001 FF                11817 	.byte	-1
   3002 FD                11818 	.byte	-3
   3003 F2                11819 	.byte	-14
   3004 FF                11820 	.byte	-1
   3005 F5                11821 	.byte	-11
   3006 06                11822 	.byte	6
   3007 FF                11823 	.byte	-1
   3008 15                11824 	.byte	21
   3009 03                11825 	.byte	3
   300A 00                11826 	.byte	0
   300B EE                11827 	.byte	-18
   300C 0A                11828 	.byte	10
   300D FF                11829 	.byte	-1
   300E 15                11830 	.byte	21
   300F 03                11831 	.byte	3
   3010 00                11832 	.byte	0
   3011 F6                11833 	.byte	-10
   3012 F8                11834 	.byte	-8
   3013 FF                11835 	.byte	-1
   3014 15                11836 	.byte	21
   3015 03                11837 	.byte	3
   3016 00                11838 	.byte	0
   3017 E8                11839 	.byte	-24
   3018 EF                11840 	.byte	-17
   3019 FF                11841 	.byte	-1
   301A 15                11842 	.byte	21
   301B 03                11843 	.byte	3
   301C 00                11844 	.byte	0
   301D F5                11845 	.byte	-11
   301E 06                11846 	.byte	6
   301F FF                11847 	.byte	-1
   3020 03                11848 	.byte	3
   3021 0D                11849 	.byte	13
   3022 FF                11850 	.byte	-1
   3023 0B                11851 	.byte	11
   3024 FB                11852 	.byte	-5
   3025 FF                11853 	.byte	-1
   3026 FD                11854 	.byte	-3
   3027 F2                11855 	.byte	-14
   3028 FF                11856 	.byte	-1
   3029 F5                11857 	.byte	-11
   302A 06                11858 	.byte	6
   302B 01                11859 	.byte	1
                          11860 	.globl _depth2RollingLeft9
   302C                   11861 _depth2RollingLeft9:
   302C FF                11862 	.byte	-1
   302D 0D                11863 	.byte	13
   302E 05                11864 	.byte	5
   302F FF                11865 	.byte	-1
   3030 10                11866 	.byte	16
   3031 F5                11867 	.byte	-11
   3032 FF                11868 	.byte	-1
   3033 F3                11869 	.byte	-13
   3034 FB                11870 	.byte	-5
   3035 FF                11871 	.byte	-1
   3036 F0                11872 	.byte	-16
   3037 0B                11873 	.byte	11
   3038 FF                11874 	.byte	-1
   3039 02                11875 	.byte	2
   303A F4                11876 	.byte	-12
   303B 00                11877 	.byte	0
   303C 0B                11878 	.byte	11
   303D 11                11879 	.byte	17
   303E FF                11880 	.byte	-1
   303F 02                11881 	.byte	2
   3040 F4                11882 	.byte	-12
   3041 00                11883 	.byte	0
   3042 0E                11884 	.byte	14
   3043 01                11885 	.byte	1
   3044 FF                11886 	.byte	-1
   3045 02                11887 	.byte	2
   3046 F3                11888 	.byte	-13
   3047 00                11889 	.byte	0
   3048 F1                11890 	.byte	-15
   3049 08                11891 	.byte	8
   304A FF                11892 	.byte	-1
   304B 02                11893 	.byte	2
   304C F3                11894 	.byte	-13
   304D 00                11895 	.byte	0
   304E F0                11896 	.byte	-16
   304F 0C                11897 	.byte	12
   3050 FF                11898 	.byte	-1
   3051 0D                11899 	.byte	13
   3052 05                11900 	.byte	5
   3053 FF                11901 	.byte	-1
   3054 10                11902 	.byte	16
   3055 F4                11903 	.byte	-12
   3056 FF                11904 	.byte	-1
   3057 F3                11905 	.byte	-13
   3058 FB                11906 	.byte	-5
   3059 FF                11907 	.byte	-1
   305A F0                11908 	.byte	-16
   305B 0C                11909 	.byte	12
   305C 01                11910 	.byte	1
                          11911 	.globl _depth2RollingRight9
   305D                   11912 _depth2RollingRight9:
   305D 00                11913 	.byte	0
   305E 0E                11914 	.byte	14
   305F 09                11915 	.byte	9
   3060 FF                11916 	.byte	-1
   3061 F5                11917 	.byte	-11
   3062 05                11918 	.byte	5
   3063 FF                11919 	.byte	-1
   3064 10                11920 	.byte	16
   3065 F4                11921 	.byte	-12
   3066 FF                11922 	.byte	-1
   3067 0B                11923 	.byte	11
   3068 FC                11924 	.byte	-4
   3069 FF                11925 	.byte	-1
   306A F0                11926 	.byte	-16
   306B 0B                11927 	.byte	11
   306C FF                11928 	.byte	-1
   306D 08                11929 	.byte	8
   306E 0D                11930 	.byte	13
   306F 00                11931 	.byte	0
   3070 ED                11932 	.byte	-19
   3071 F8                11933 	.byte	-8
   3072 FF                11934 	.byte	-1
   3073 08                11935 	.byte	8
   3074 0D                11936 	.byte	13
   3075 00                11937 	.byte	0
   3076 08                11938 	.byte	8
   3077 E7                11939 	.byte	-25
   3078 FF                11940 	.byte	-1
   3079 08                11941 	.byte	8
   307A 0D                11942 	.byte	13
   307B 00                11943 	.byte	0
   307C 03                11944 	.byte	3
   307D EF                11945 	.byte	-17
   307E FF                11946 	.byte	-1
   307F 08                11947 	.byte	8
   3080 0C                11948 	.byte	12
   3081 00                11949 	.byte	0
   3082 F0                11950 	.byte	-16
   3083 0C                11951 	.byte	12
   3084 FF                11952 	.byte	-1
   3085 F5                11953 	.byte	-11
   3086 05                11954 	.byte	5
   3087 FF                11955 	.byte	-1
   3088 10                11956 	.byte	16
   3089 F4                11957 	.byte	-12
   308A FF                11958 	.byte	-1
   308B 0B                11959 	.byte	11
   308C FB                11960 	.byte	-5
   308D FF                11961 	.byte	-1
   308E F0                11962 	.byte	-16
   308F 0C                11963 	.byte	12
   3090 01                11964 	.byte	1
                          11965 	.globl _width2RollingFront9
   3091                   11966 _width2RollingFront9:
   3091 FF                11967 	.byte	-1
   3092 06                11968 	.byte	6
   3093 1C                11969 	.byte	28
   3094 FF                11970 	.byte	-1
   3095 0F                11971 	.byte	15
   3096 FE                11972 	.byte	-2
   3097 FF                11973 	.byte	-1
   3098 FA                11974 	.byte	-6
   3099 E5                11975 	.byte	-27
   309A FF                11976 	.byte	-1
   309B F1                11977 	.byte	-15
   309C 01                11978 	.byte	1
   309D FF                11979 	.byte	-1
   309E FF                11980 	.byte	-1
   309F 06                11981 	.byte	6
   30A0 00                11982 	.byte	0
   30A1 07                11983 	.byte	7
   30A2 16                11984 	.byte	22
   30A3 FF                11985 	.byte	-1
   30A4 FE                11986 	.byte	-2
   30A5 06                11987 	.byte	6
   30A6 00                11988 	.byte	0
   30A7 11                11989 	.byte	17
   30A8 F8                11990 	.byte	-8
   30A9 FF                11991 	.byte	-1
   30AA FE                11992 	.byte	-2
   30AB 05                11993 	.byte	5
   30AC 00                11994 	.byte	0
   30AD FC                11995 	.byte	-4
   30AE E0                11996 	.byte	-32
   30AF FF                11997 	.byte	-1
   30B0 FE                11998 	.byte	-2
   30B1 04                11999 	.byte	4
   30B2 00                12000 	.byte	0
   30B3 F2                12001 	.byte	-14
   30B4 03                12002 	.byte	3
   30B5 FF                12003 	.byte	-1
   30B6 05                12004 	.byte	5
   30B7 1C                12005 	.byte	28
   30B8 FF                12006 	.byte	-1
   30B9 0F                12007 	.byte	15
   30BA FD                12008 	.byte	-3
   30BB FF                12009 	.byte	-1
   30BC FA                12010 	.byte	-6
   30BD E4                12011 	.byte	-28
   30BE FF                12012 	.byte	-1
   30BF F2                12013 	.byte	-14
   30C0 03                12014 	.byte	3
   30C1 01                12015 	.byte	1
                          12016 	.globl _width2RollingBack9
   30C2                   12017 _width2RollingBack9:
   30C2 00                12018 	.byte	0
   30C3 11                12019 	.byte	17
   30C4 FD                12020 	.byte	-3
   30C5 FF                12021 	.byte	-1
   30C6 06                12022 	.byte	6
   30C7 1B                12023 	.byte	27
   30C8 FF                12024 	.byte	-1
   30C9 F7                12025 	.byte	-9
   30CA FE                12026 	.byte	-2
   30CB FF                12027 	.byte	-1
   30CC FA                12028 	.byte	-6
   30CD E5                12029 	.byte	-27
   30CE FF                12030 	.byte	-1
   30CF 09                12031 	.byte	9
   30D0 02                12032 	.byte	2
   30D1 FF                12033 	.byte	-1
   30D2 0C                12034 	.byte	12
   30D3 FB                12035 	.byte	-5
   30D4 00                12036 	.byte	0
   30D5 FA                12037 	.byte	-6
   30D6 20                12038 	.byte	32
   30D7 FF                12039 	.byte	-1
   30D8 0C                12040 	.byte	12
   30D9 FB                12041 	.byte	-5
   30DA 00                12042 	.byte	0
   30DB EB                12043 	.byte	-21
   30DC 03                12044 	.byte	3
   30DD FF                12045 	.byte	-1
   30DE 0C                12046 	.byte	12
   30DF FA                12047 	.byte	-6
   30E0 00                12048 	.byte	0
   30E1 EE                12049 	.byte	-18
   30E2 EB                12050 	.byte	-21
   30E3 FF                12051 	.byte	-1
   30E4 0C                12052 	.byte	12
   30E5 FA                12053 	.byte	-6
   30E6 00                12054 	.byte	0
   30E7 09                12055 	.byte	9
   30E8 03                12056 	.byte	3
   30E9 FF                12057 	.byte	-1
   30EA 06                12058 	.byte	6
   30EB 1B                12059 	.byte	27
   30EC FF                12060 	.byte	-1
   30ED F7                12061 	.byte	-9
   30EE FD                12062 	.byte	-3
   30EF FF                12063 	.byte	-1
   30F0 FA                12064 	.byte	-6
   30F1 E5                12065 	.byte	-27
   30F2 FF                12066 	.byte	-1
   30F3 09                12067 	.byte	9
   30F4 03                12068 	.byte	3
   30F5 01                12069 	.byte	1
                          12070 	.globl _height2FallingLeft10
   30F6                   12071 _height2FallingLeft10:
   30F6 FF                12072 	.byte	-1
   30F7 0D                12073 	.byte	13
   30F8 04                12074 	.byte	4
   30F9 FF                12075 	.byte	-1
   30FA 08                12076 	.byte	8
   30FB FB                12077 	.byte	-5
   30FC FF                12078 	.byte	-1
   30FD F3                12079 	.byte	-13
   30FE FC                12080 	.byte	-4
   30FF FF                12081 	.byte	-1
   3100 F8                12082 	.byte	-8
   3101 05                12083 	.byte	5
   3102 FF                12084 	.byte	-1
   3103 01                12085 	.byte	1
   3104 E6                12086 	.byte	-26
   3105 00                12087 	.byte	0
   3106 0C                12088 	.byte	12
   3107 1E                12089 	.byte	30
   3108 FF                12090 	.byte	-1
   3109 01                12091 	.byte	1
   310A E6                12092 	.byte	-26
   310B 00                12093 	.byte	0
   310C 07                12094 	.byte	7
   310D 15                12095 	.byte	21
   310E FF                12096 	.byte	-1
   310F 01                12097 	.byte	1
   3110 E5                12098 	.byte	-27
   3111 00                12099 	.byte	0
   3112 F2                12100 	.byte	-14
   3113 17                12101 	.byte	23
   3114 FF                12102 	.byte	-1
   3115 01                12103 	.byte	1
   3116 E5                12104 	.byte	-27
   3117 00                12105 	.byte	0
   3118 F8                12106 	.byte	-8
   3119 06                12107 	.byte	6
   311A FF                12108 	.byte	-1
   311B 0D                12109 	.byte	13
   311C 04                12110 	.byte	4
   311D FF                12111 	.byte	-1
   311E 08                12112 	.byte	8
   311F FA                12113 	.byte	-6
   3120 FF                12114 	.byte	-1
   3121 F3                12115 	.byte	-13
   3122 FC                12116 	.byte	-4
   3123 FF                12117 	.byte	-1
   3124 F8                12118 	.byte	-8
   3125 06                12119 	.byte	6
   3126 01                12120 	.byte	1
                          12121 	.globl _height2RisingRight10
   3127                   12122 _height2RisingRight10:
   3127 00                12123 	.byte	0
   3128 06                12124 	.byte	6
   3129 1C                12125 	.byte	28
   312A FF                12126 	.byte	-1
   312B 05                12127 	.byte	5
   312C 0E                12128 	.byte	14
   312D FF                12129 	.byte	-1
   312E 08                12130 	.byte	8
   312F FA                12131 	.byte	-6
   3130 FF                12132 	.byte	-1
   3131 FB                12133 	.byte	-5
   3132 F2                12134 	.byte	-14
   3133 FF                12135 	.byte	-1
   3134 F8                12136 	.byte	-8
   3135 06                12137 	.byte	6
   3136 FF                12138 	.byte	-1
   3137 19                12139 	.byte	25
   3138 FC                12140 	.byte	-4
   3139 00                12141 	.byte	0
   313A EC                12142 	.byte	-20
   313B 12                12143 	.byte	18
   313C FF                12144 	.byte	-1
   313D 19                12145 	.byte	25
   313E FC                12146 	.byte	-4
   313F 00                12147 	.byte	0
   3140 EF                12148 	.byte	-17
   3141 FE                12149 	.byte	-2
   3142 FF                12150 	.byte	-1
   3143 19                12151 	.byte	25
   3144 FC                12152 	.byte	-4
   3145 00                12153 	.byte	0
   3146 E2                12154 	.byte	-30
   3147 F6                12155 	.byte	-10
   3148 FF                12156 	.byte	-1
   3149 19                12157 	.byte	25
   314A FC                12158 	.byte	-4
   314B 00                12159 	.byte	0
   314C F8                12160 	.byte	-8
   314D 06                12161 	.byte	6
   314E FF                12162 	.byte	-1
   314F 05                12163 	.byte	5
   3150 0E                12164 	.byte	14
   3151 FF                12165 	.byte	-1
   3152 08                12166 	.byte	8
   3153 FA                12167 	.byte	-6
   3154 FF                12168 	.byte	-1
   3155 FB                12169 	.byte	-5
   3156 F2                12170 	.byte	-14
   3157 FF                12171 	.byte	-1
   3158 F8                12172 	.byte	-8
   3159 06                12173 	.byte	6
   315A 01                12174 	.byte	1
                          12175 	.globl _height2FallingRight10
   315B                   12176 _height2FallingRight10:
   315B 00                12177 	.byte	0
   315C 0F                12178 	.byte	15
   315D 0A                12179 	.byte	10
   315E FF                12180 	.byte	-1
   315F F4                12181 	.byte	-12
   3160 04                12182 	.byte	4
   3161 FF                12183 	.byte	-1
   3162 08                12184 	.byte	8
   3163 FA                12185 	.byte	-6
   3164 FF                12186 	.byte	-1
   3165 0C                12187 	.byte	12
   3166 FC                12188 	.byte	-4
   3167 FF                12189 	.byte	-1
   3168 F8                12190 	.byte	-8
   3169 06                12191 	.byte	6
   316A FF                12192 	.byte	-1
   316B 0C                12193 	.byte	12
   316C 1B                12194 	.byte	27
   316D 00                12195 	.byte	0
   316E E8                12196 	.byte	-24
   316F E9                12197 	.byte	-23
   3170 FF                12198 	.byte	-1
   3171 0D                12199 	.byte	13
   3172 1B                12200 	.byte	27
   3173 00                12201 	.byte	0
   3174 FB                12202 	.byte	-5
   3175 DF                12203 	.byte	-33
   3176 FF                12204 	.byte	-1
   3177 0D                12205 	.byte	13
   3178 1B                12206 	.byte	27
   3179 00                12207 	.byte	0
   317A FF                12208 	.byte	-1
   317B E1                12209 	.byte	-31
   317C FF                12210 	.byte	-1
   317D 0C                12211 	.byte	12
   317E 1B                12212 	.byte	27
   317F 00                12213 	.byte	0
   3180 F8                12214 	.byte	-8
   3181 06                12215 	.byte	6
   3182 FF                12216 	.byte	-1
   3183 F5                12217 	.byte	-11
   3184 04                12218 	.byte	4
   3185 FF                12219 	.byte	-1
   3186 08                12220 	.byte	8
   3187 FA                12221 	.byte	-6
   3188 FF                12222 	.byte	-1
   3189 0B                12223 	.byte	11
   318A FC                12224 	.byte	-4
   318B FF                12225 	.byte	-1
   318C F8                12226 	.byte	-8
   318D 06                12227 	.byte	6
   318E 01                12228 	.byte	1
                          12229 	.globl _height2RisingLeft10
   318F                   12230 _height2RisingLeft10:
   318F 00                12231 	.byte	0
   3190 00                12232 	.byte	0
   3191 F3                12233 	.byte	-13
   3192 FF                12234 	.byte	-1
   3193 00                12235 	.byte	0
   3194 0D                12236 	.byte	13
   3195 FF                12237 	.byte	-1
   3196 08                12238 	.byte	8
   3197 FB                12239 	.byte	-5
   3198 FF                12240 	.byte	-1
   3199 FF                12241 	.byte	-1
   319A F2                12242 	.byte	-14
   319B FF                12243 	.byte	-1
   319C F9                12244 	.byte	-7
   319D 06                12245 	.byte	6
   319E FF                12246 	.byte	-1
   319F 19                12247 	.byte	25
   31A0 04                12248 	.byte	4
   31A1 00                12249 	.byte	0
   31A2 E7                12250 	.byte	-25
   31A3 09                12251 	.byte	9
   31A4 FF                12252 	.byte	-1
   31A5 1B                12253 	.byte	27
   31A6 04                12254 	.byte	4
   31A7 00                12255 	.byte	0
   31A8 ED                12256 	.byte	-19
   31A9 F7                12257 	.byte	-9
   31AA FF                12258 	.byte	-1
   31AB 1B                12259 	.byte	27
   31AC 04                12260 	.byte	4
   31AD 00                12261 	.byte	0
   31AE E4                12262 	.byte	-28
   31AF EE                12263 	.byte	-18
   31B0 FF                12264 	.byte	-1
   31B1 1A                12265 	.byte	26
   31B2 04                12266 	.byte	4
   31B3 00                12267 	.byte	0
   31B4 F8                12268 	.byte	-8
   31B5 06                12269 	.byte	6
   31B6 FF                12270 	.byte	-1
   31B7 02                12271 	.byte	2
   31B8 0D                12272 	.byte	13
   31B9 FF                12273 	.byte	-1
   31BA 08                12274 	.byte	8
   31BB FB                12275 	.byte	-5
   31BC FF                12276 	.byte	-1
   31BD FE                12277 	.byte	-2
   31BE F2                12278 	.byte	-14
   31BF FF                12279 	.byte	-1
   31C0 F8                12280 	.byte	-8
   31C1 06                12281 	.byte	6
   31C2 01                12282 	.byte	1
                          12283 	.globl _height2FallingBack10
   31C3                   12284 _height2FallingBack10:
   31C3 00                12285 	.byte	0
   31C4 12                12286 	.byte	18
   31C5 FD                12287 	.byte	-3
   31C6 FF                12288 	.byte	-1
   31C7 03                12289 	.byte	3
   31C8 0D                12290 	.byte	13
   31C9 FF                12291 	.byte	-1
   31CA F6                12292 	.byte	-10
   31CB FE                12293 	.byte	-2
   31CC FF                12294 	.byte	-1
   31CD FD                12295 	.byte	-3
   31CE F3                12296 	.byte	-13
   31CF FF                12297 	.byte	-1
   31D0 0A                12298 	.byte	10
   31D1 02                12299 	.byte	2
   31D2 FF                12300 	.byte	-1
   31D3 17                12301 	.byte	23
   31D4 F4                12302 	.byte	-12
   31D5 00                12303 	.byte	0
   31D6 EC                12304 	.byte	-20
   31D7 19                12305 	.byte	25
   31D8 FF                12306 	.byte	-1
   31D9 17                12307 	.byte	23
   31DA F5                12308 	.byte	-11
   31DB 00                12309 	.byte	0
   31DC DF                12310 	.byte	-33
   31DD 09                12311 	.byte	9
   31DE FF                12312 	.byte	-1
   31DF 16                12313 	.byte	22
   31E0 F5                12314 	.byte	-11
   31E1 00                12315 	.byte	0
   31E2 E7                12316 	.byte	-25
   31E3 FE                12317 	.byte	-2
   31E4 FF                12318 	.byte	-1
   31E5 16                12319 	.byte	22
   31E6 F4                12320 	.byte	-12
   31E7 00                12321 	.byte	0
   31E8 0B                12322 	.byte	11
   31E9 02                12323 	.byte	2
   31EA FF                12324 	.byte	-1
   31EB 03                12325 	.byte	3
   31EC 0E                12326 	.byte	14
   31ED FF                12327 	.byte	-1
   31EE F5                12328 	.byte	-11
   31EF FE                12329 	.byte	-2
   31F0 FF                12330 	.byte	-1
   31F1 FD                12331 	.byte	-3
   31F2 F2                12332 	.byte	-14
   31F3 FF                12333 	.byte	-1
   31F4 0B                12334 	.byte	11
   31F5 02                12335 	.byte	2
   31F6 01                12336 	.byte	1
                          12337 	.globl _height2RisingFront10
   31F7                   12338 _height2RisingFront10:
   31F7 00                12339 	.byte	0
   31F8 FB                12340 	.byte	-5
   31F9 06                12341 	.byte	6
   31FA FF                12342 	.byte	-1
   31FB 03                12343 	.byte	3
   31FC 0E                12344 	.byte	14
   31FD FF                12345 	.byte	-1
   31FE 05                12346 	.byte	5
   31FF FA                12347 	.byte	-6
   3200 FF                12348 	.byte	-1
   3201 FD                12349 	.byte	-3
   3202 F2                12350 	.byte	-14
   3203 FF                12351 	.byte	-1
   3204 FB                12352 	.byte	-5
   3205 06                12353 	.byte	6
   3206 FF                12354 	.byte	-1
   3207 1B                12355 	.byte	27
   3208 FE                12356 	.byte	-2
   3209 00                12357 	.byte	0
   320A E8                12358 	.byte	-24
   320B 10                12359 	.byte	16
   320C FF                12360 	.byte	-1
   320D 1B                12361 	.byte	27
   320E FE                12362 	.byte	-2
   320F 00                12363 	.byte	0
   3210 EA                12364 	.byte	-22
   3211 FC                12365 	.byte	-4
   3212 FF                12366 	.byte	-1
   3213 1C                12367 	.byte	28
   3214 FE                12368 	.byte	-2
   3215 00                12369 	.byte	0
   3216 E1                12370 	.byte	-31
   3217 F4                12371 	.byte	-12
   3218 FF                12372 	.byte	-1
   3219 1C                12373 	.byte	28
   321A FF                12374 	.byte	-1
   321B 00                12375 	.byte	0
   321C FA                12376 	.byte	-6
   321D 05                12377 	.byte	5
   321E FF                12378 	.byte	-1
   321F 03                12379 	.byte	3
   3220 0E                12380 	.byte	14
   3221 FF                12381 	.byte	-1
   3222 06                12382 	.byte	6
   3223 FA                12383 	.byte	-6
   3224 FF                12384 	.byte	-1
   3225 FD                12385 	.byte	-3
   3226 F3                12386 	.byte	-13
   3227 FF                12387 	.byte	-1
   3228 FA                12388 	.byte	-6
   3229 05                12389 	.byte	5
   322A 01                12390 	.byte	1
                          12391 	.globl _height2FallingFront10
   322B                   12392 _height2FallingFront10:
   322B FF                12393 	.byte	-1
   322C 03                12394 	.byte	3
   322D 0E                12395 	.byte	14
   322E FF                12396 	.byte	-1
   322F 0F                12397 	.byte	15
   3230 FE                12398 	.byte	-2
   3231 FF                12399 	.byte	-1
   3232 FD                12400 	.byte	-3
   3233 F3                12401 	.byte	-13
   3234 FF                12402 	.byte	-1
   3235 F1                12403 	.byte	-15
   3236 01                12404 	.byte	1
   3237 FF                12405 	.byte	-1
   3238 F8                12406 	.byte	-8
   3239 0C                12407 	.byte	12
   323A 00                12408 	.byte	0
   323B 0B                12409 	.byte	11
   323C 02                12410 	.byte	2
   323D FF                12411 	.byte	-1
   323E F8                12412 	.byte	-8
   323F 0C                12413 	.byte	12
   3240 00                12414 	.byte	0
   3241 17                12415 	.byte	23
   3242 F2                12416 	.byte	-14
   3243 FF                12417 	.byte	-1
   3244 F7                12418 	.byte	-9
   3245 0C                12419 	.byte	12
   3246 00                12420 	.byte	0
   3247 06                12421 	.byte	6
   3248 E7                12422 	.byte	-25
   3249 FF                12423 	.byte	-1
   324A F7                12424 	.byte	-9
   324B 0B                12425 	.byte	11
   324C 00                12426 	.byte	0
   324D F2                12427 	.byte	-14
   324E 02                12428 	.byte	2
   324F FF                12429 	.byte	-1
   3250 03                12430 	.byte	3
   3251 0E                12431 	.byte	14
   3252 FF                12432 	.byte	-1
   3253 0E                12433 	.byte	14
   3254 FE                12434 	.byte	-2
   3255 FF                12435 	.byte	-1
   3256 FD                12436 	.byte	-3
   3257 F2                12437 	.byte	-14
   3258 FF                12438 	.byte	-1
   3259 F2                12439 	.byte	-14
   325A 02                12440 	.byte	2
   325B 01                12441 	.byte	1
                          12442 	.globl _height2RisingBack10
   325C                   12443 _height2RisingBack10:
   325C 00                12444 	.byte	0
   325D 10                12445 	.byte	16
   325E F5                12446 	.byte	-11
   325F FF                12447 	.byte	-1
   3260 03                12448 	.byte	3
   3261 0D                12449 	.byte	13
   3262 FF                12450 	.byte	-1
   3263 0A                12451 	.byte	10
   3264 FB                12452 	.byte	-5
   3265 FF                12453 	.byte	-1
   3266 FD                12454 	.byte	-3
   3267 F2                12455 	.byte	-14
   3268 FF                12456 	.byte	-1
   3269 F6                12457 	.byte	-10
   326A 06                12458 	.byte	6
   326B FF                12459 	.byte	-1
   326C 18                12460 	.byte	24
   326D 02                12461 	.byte	2
   326E 00                12462 	.byte	0
   326F EB                12463 	.byte	-21
   3270 0B                12464 	.byte	11
   3271 FF                12465 	.byte	-1
   3272 18                12466 	.byte	24
   3273 02                12467 	.byte	2
   3274 00                12468 	.byte	0
   3275 F2                12469 	.byte	-14
   3276 F9                12470 	.byte	-7
   3277 FF                12471 	.byte	-1
   3278 17                12472 	.byte	23
   3279 02                12473 	.byte	2
   327A 00                12474 	.byte	0
   327B E6                12475 	.byte	-26
   327C F0                12476 	.byte	-16
   327D FF                12477 	.byte	-1
   327E 17                12478 	.byte	23
   327F 02                12479 	.byte	2
   3280 00                12480 	.byte	0
   3281 F7                12481 	.byte	-9
   3282 06                12482 	.byte	6
   3283 FF                12483 	.byte	-1
   3284 03                12484 	.byte	3
   3285 0D                12485 	.byte	13
   3286 FF                12486 	.byte	-1
   3287 09                12487 	.byte	9
   3288 FB                12488 	.byte	-5
   3289 FF                12489 	.byte	-1
   328A FD                12490 	.byte	-3
   328B F2                12491 	.byte	-14
   328C FF                12492 	.byte	-1
   328D F7                12493 	.byte	-9
   328E 06                12494 	.byte	6
   328F 01                12495 	.byte	1
                          12496 	.globl _depth2RollingLeft10
   3290                   12497 _depth2RollingLeft10:
   3290 FF                12498 	.byte	-1
   3291 0D                12499 	.byte	13
   3292 04                12500 	.byte	4
   3293 FF                12501 	.byte	-1
   3294 10                12502 	.byte	16
   3295 F5                12503 	.byte	-11
   3296 FF                12504 	.byte	-1
   3297 F3                12505 	.byte	-13
   3298 FC                12506 	.byte	-4
   3299 FF                12507 	.byte	-1
   329A F0                12508 	.byte	-16
   329B 0B                12509 	.byte	11
   329C FF                12510 	.byte	-1
   329D 00                12511 	.byte	0
   329E F3                12512 	.byte	-13
   329F 00                12513 	.byte	0
   32A0 0D                12514 	.byte	13
   32A1 11                12515 	.byte	17
   32A2 FF                12516 	.byte	-1
   32A3 01                12517 	.byte	1
   32A4 F3                12518 	.byte	-13
   32A5 00                12519 	.byte	0
   32A6 0F                12520 	.byte	15
   32A7 02                12521 	.byte	2
   32A8 FF                12522 	.byte	-1
   32A9 01                12523 	.byte	1
   32AA F2                12524 	.byte	-14
   32AB 00                12525 	.byte	0
   32AC F2                12526 	.byte	-14
   32AD 0A                12527 	.byte	10
   32AE FF                12528 	.byte	-1
   32AF 00                12529 	.byte	0
   32B0 F2                12530 	.byte	-14
   32B1 00                12531 	.byte	0
   32B2 F0                12532 	.byte	-16
   32B3 0C                12533 	.byte	12
   32B4 FF                12534 	.byte	-1
   32B5 0E                12535 	.byte	14
   32B6 04                12536 	.byte	4
   32B7 FF                12537 	.byte	-1
   32B8 10                12538 	.byte	16
   32B9 F4                12539 	.byte	-12
   32BA FF                12540 	.byte	-1
   32BB F2                12541 	.byte	-14
   32BC FC                12542 	.byte	-4
   32BD FF                12543 	.byte	-1
   32BE F0                12544 	.byte	-16
   32BF 0C                12545 	.byte	12
   32C0 01                12546 	.byte	1
                          12547 	.globl _depth2RollingRight10
   32C1                   12548 _depth2RollingRight10:
   32C1 00                12549 	.byte	0
   32C2 0F                12550 	.byte	15
   32C3 0A                12551 	.byte	10
   32C4 FF                12552 	.byte	-1
   32C5 F4                12553 	.byte	-12
   32C6 04                12554 	.byte	4
   32C7 FF                12555 	.byte	-1
   32C8 10                12556 	.byte	16
   32C9 F4                12557 	.byte	-12
   32CA FF                12558 	.byte	-1
   32CB 0C                12559 	.byte	12
   32CC FD                12560 	.byte	-3
   32CD FF                12561 	.byte	-1
   32CE F0                12562 	.byte	-16
   32CF 0B                12563 	.byte	11
   32D0 FF                12564 	.byte	-1
   32D1 06                12565 	.byte	6
   32D2 0E                12566 	.byte	14
   32D3 00                12567 	.byte	0
   32D4 EE                12568 	.byte	-18
   32D5 F6                12569 	.byte	-10
   32D6 FF                12570 	.byte	-1
   32D7 06                12571 	.byte	6
   32D8 0E                12572 	.byte	14
   32D9 00                12573 	.byte	0
   32DA 0A                12574 	.byte	10
   32DB E6                12575 	.byte	-26
   32DC FF                12576 	.byte	-1
   32DD 06                12577 	.byte	6
   32DE 0E                12578 	.byte	14
   32DF 00                12579 	.byte	0
   32E0 06                12580 	.byte	6
   32E1 EF                12581 	.byte	-17
   32E2 FF                12582 	.byte	-1
   32E3 06                12583 	.byte	6
   32E4 0D                12584 	.byte	13
   32E5 00                12585 	.byte	0
   32E6 F0                12586 	.byte	-16
   32E7 0C                12587 	.byte	12
   32E8 FF                12588 	.byte	-1
   32E9 F4                12589 	.byte	-12
   32EA 04                12590 	.byte	4
   32EB FF                12591 	.byte	-1
   32EC 10                12592 	.byte	16
   32ED F4                12593 	.byte	-12
   32EE FF                12594 	.byte	-1
   32EF 0C                12595 	.byte	12
   32F0 FC                12596 	.byte	-4
   32F1 FF                12597 	.byte	-1
   32F2 F0                12598 	.byte	-16
   32F3 0C                12599 	.byte	12
   32F4 01                12600 	.byte	1
                          12601 	.globl _width2RollingFront10
   32F5                   12602 _width2RollingFront10:
   32F5 FF                12603 	.byte	-1
   32F6 06                12604 	.byte	6
   32F7 1C                12605 	.byte	28
   32F8 FF                12606 	.byte	-1
   32F9 0F                12607 	.byte	15
   32FA FE                12608 	.byte	-2
   32FB FF                12609 	.byte	-1
   32FC FA                12610 	.byte	-6
   32FD E5                12611 	.byte	-27
   32FE FF                12612 	.byte	-1
   32FF F1                12613 	.byte	-15
   3300 01                12614 	.byte	1
   3301 FF                12615 	.byte	-1
   3302 FD                12616 	.byte	-3
   3303 06                12617 	.byte	6
   3304 00                12618 	.byte	0
   3305 09                12619 	.byte	9
   3306 16                12620 	.byte	22
   3307 FF                12621 	.byte	-1
   3308 FC                12622 	.byte	-4
   3309 06                12623 	.byte	6
   330A 00                12624 	.byte	0
   330B 13                12625 	.byte	19
   330C F8                12626 	.byte	-8
   330D FF                12627 	.byte	-1
   330E FB                12628 	.byte	-5
   330F 06                12629 	.byte	6
   3310 00                12630 	.byte	0
   3311 FF                12631 	.byte	-1
   3312 DF                12632 	.byte	-33
   3313 FF                12633 	.byte	-1
   3314 FB                12634 	.byte	-5
   3315 05                12635 	.byte	5
   3316 00                12636 	.byte	0
   3317 F3                12637 	.byte	-13
   3318 02                12638 	.byte	2
   3319 FF                12639 	.byte	-1
   331A 05                12640 	.byte	5
   331B 1C                12641 	.byte	28
   331C FF                12642 	.byte	-1
   331D 0E                12643 	.byte	14
   331E FE                12644 	.byte	-2
   331F FF                12645 	.byte	-1
   3320 FA                12646 	.byte	-6
   3321 E4                12647 	.byte	-28
   3322 FF                12648 	.byte	-1
   3323 F3                12649 	.byte	-13
   3324 02                12650 	.byte	2
   3325 01                12651 	.byte	1
                          12652 	.globl _width2RollingBack10
   3326                   12653 _width2RollingBack10:
   3326 00                12654 	.byte	0
   3327 12                12655 	.byte	18
   3328 FD                12656 	.byte	-3
   3329 FF                12657 	.byte	-1
   332A 06                12658 	.byte	6
   332B 1B                12659 	.byte	27
   332C FF                12660 	.byte	-1
   332D F6                12661 	.byte	-10
   332E FE                12662 	.byte	-2
   332F FF                12663 	.byte	-1
   3330 FA                12664 	.byte	-6
   3331 E5                12665 	.byte	-27
   3332 FF                12666 	.byte	-1
   3333 0A                12667 	.byte	10
   3334 02                12668 	.byte	2
   3335 FF                12669 	.byte	-1
   3336 0C                12670 	.byte	12
   3337 FA                12671 	.byte	-6
   3338 00                12672 	.byte	0
   3339 FA                12673 	.byte	-6
   333A 21                12674 	.byte	33
   333B FF                12675 	.byte	-1
   333C 0C                12676 	.byte	12
   333D FA                12677 	.byte	-6
   333E 00                12678 	.byte	0
   333F EA                12679 	.byte	-22
   3340 04                12680 	.byte	4
   3341 FF                12681 	.byte	-1
   3342 0B                12682 	.byte	11
   3343 FA                12683 	.byte	-6
   3344 00                12684 	.byte	0
   3345 EF                12685 	.byte	-17
   3346 EB                12686 	.byte	-21
   3347 FF                12687 	.byte	-1
   3348 0B                12688 	.byte	11
   3349 FA                12689 	.byte	-6
   334A 00                12690 	.byte	0
   334B 0B                12691 	.byte	11
   334C 02                12692 	.byte	2
   334D FF                12693 	.byte	-1
   334E 06                12694 	.byte	6
   334F 1B                12695 	.byte	27
   3350 FF                12696 	.byte	-1
   3351 F5                12697 	.byte	-11
   3352 FE                12698 	.byte	-2
   3353 FF                12699 	.byte	-1
   3354 FA                12700 	.byte	-6
   3355 E5                12701 	.byte	-27
   3356 FF                12702 	.byte	-1
   3357 0B                12703 	.byte	11
   3358 02                12704 	.byte	2
   3359 01                12705 	.byte	1
                          12706 	.globl _height2FallingLeft11
   335A                   12707 _height2FallingLeft11:
   335A FF                12708 	.byte	-1
   335B 0D                12709 	.byte	13
   335C 02                12710 	.byte	2
   335D FF                12711 	.byte	-1
   335E 08                12712 	.byte	8
   335F FB                12713 	.byte	-5
   3360 FF                12714 	.byte	-1
   3361 F3                12715 	.byte	-13
   3362 FE                12716 	.byte	-2
   3363 FF                12717 	.byte	-1
   3364 F8                12718 	.byte	-8
   3365 05                12719 	.byte	5
   3366 FF                12720 	.byte	-1
   3367 FE                12721 	.byte	-2
   3368 E5                12722 	.byte	-27
   3369 00                12723 	.byte	0
   336A 0F                12724 	.byte	15
   336B 1D                12725 	.byte	29
   336C FF                12726 	.byte	-1
   336D FE                12727 	.byte	-2
   336E E5                12728 	.byte	-27
   336F 00                12729 	.byte	0
   3370 0A                12730 	.byte	10
   3371 16                12731 	.byte	22
   3372 FF                12732 	.byte	-1
   3373 FE                12733 	.byte	-2
   3374 E4                12734 	.byte	-28
   3375 00                12735 	.byte	0
   3376 F5                12736 	.byte	-11
   3377 1A                12737 	.byte	26
   3378 FF                12738 	.byte	-1
   3379 FD                12739 	.byte	-3
   337A E4                12740 	.byte	-28
   337B 00                12741 	.byte	0
   337C F9                12742 	.byte	-7
   337D 06                12743 	.byte	6
   337E FF                12744 	.byte	-1
   337F 0D                12745 	.byte	13
   3380 02                12746 	.byte	2
   3381 FF                12747 	.byte	-1
   3382 08                12748 	.byte	8
   3383 FA                12749 	.byte	-6
   3384 FF                12750 	.byte	-1
   3385 F2                12751 	.byte	-14
   3386 FE                12752 	.byte	-2
   3387 FF                12753 	.byte	-1
   3388 F9                12754 	.byte	-7
   3389 06                12755 	.byte	6
   338A 01                12756 	.byte	1
                          12757 	.globl _height2RisingRight11
   338B                   12758 _height2RisingRight11:
   338B 00                12759 	.byte	0
   338C 06                12760 	.byte	6
   338D 1C                12761 	.byte	28
   338E FF                12762 	.byte	-1
   338F 03                12763 	.byte	3
   3390 0E                12764 	.byte	14
   3391 FF                12765 	.byte	-1
   3392 08                12766 	.byte	8
   3393 FA                12767 	.byte	-6
   3394 FF                12768 	.byte	-1
   3395 FD                12769 	.byte	-3
   3396 F2                12770 	.byte	-14
   3397 FF                12771 	.byte	-1
   3398 F8                12772 	.byte	-8
   3399 06                12773 	.byte	6
   339A FF                12774 	.byte	-1
   339B 1A                12775 	.byte	26
   339C 00                12776 	.byte	0
   339D 00                12777 	.byte	0
   339E E9                12778 	.byte	-23
   339F 0E                12779 	.byte	14
   33A0 FF                12780 	.byte	-1
   33A1 1A                12781 	.byte	26
   33A2 00                12782 	.byte	0
   33A3 00                12783 	.byte	0
   33A4 EE                12784 	.byte	-18
   33A5 FA                12785 	.byte	-6
   33A6 FF                12786 	.byte	-1
   33A7 1A                12787 	.byte	26
   33A8 00                12788 	.byte	0
   33A9 00                12789 	.byte	0
   33AA E3                12790 	.byte	-29
   33AB F2                12791 	.byte	-14
   33AC FF                12792 	.byte	-1
   33AD 1A                12793 	.byte	26
   33AE 00                12794 	.byte	0
   33AF 00                12795 	.byte	0
   33B0 F8                12796 	.byte	-8
   33B1 06                12797 	.byte	6
   33B2 FF                12798 	.byte	-1
   33B3 03                12799 	.byte	3
   33B4 0E                12800 	.byte	14
   33B5 FF                12801 	.byte	-1
   33B6 08                12802 	.byte	8
   33B7 FA                12803 	.byte	-6
   33B8 FF                12804 	.byte	-1
   33B9 FD                12805 	.byte	-3
   33BA F2                12806 	.byte	-14
   33BB FF                12807 	.byte	-1
   33BC F8                12808 	.byte	-8
   33BD 06                12809 	.byte	6
   33BE 01                12810 	.byte	1
                          12811 	.globl _height2FallingRight11
   33BF                   12812 _height2FallingRight11:
   33BF 00                12813 	.byte	0
   33C0 0F                12814 	.byte	15
   33C1 0C                12815 	.byte	12
   33C2 FF                12816 	.byte	-1
   33C3 F4                12817 	.byte	-12
   33C4 02                12818 	.byte	2
   33C5 FF                12819 	.byte	-1
   33C6 08                12820 	.byte	8
   33C7 FA                12821 	.byte	-6
   33C8 FF                12822 	.byte	-1
   33C9 0C                12823 	.byte	12
   33CA FE                12824 	.byte	-2
   33CB FF                12825 	.byte	-1
   33CC F8                12826 	.byte	-8
   33CD 06                12827 	.byte	6
   33CE FF                12828 	.byte	-1
   33CF 0A                12829 	.byte	10
   33D0 1C                12830 	.byte	28
   33D1 00                12831 	.byte	0
   33D2 EA                12832 	.byte	-22
   33D3 E6                12833 	.byte	-26
   33D4 FF                12834 	.byte	-1
   33D5 09                12835 	.byte	9
   33D6 1C                12836 	.byte	28
   33D7 00                12837 	.byte	0
   33D8 FF                12838 	.byte	-1
   33D9 DE                12839 	.byte	-34
   33DA FF                12840 	.byte	-1
   33DB 09                12841 	.byte	9
   33DC 1C                12842 	.byte	28
   33DD 00                12843 	.byte	0
   33DE 03                12844 	.byte	3
   33DF E2                12845 	.byte	-30
   33E0 FF                12846 	.byte	-1
   33E1 0A                12847 	.byte	10
   33E2 1C                12848 	.byte	28
   33E3 00                12849 	.byte	0
   33E4 F8                12850 	.byte	-8
   33E5 06                12851 	.byte	6
   33E6 FF                12852 	.byte	-1
   33E7 F3                12853 	.byte	-13
   33E8 02                12854 	.byte	2
   33E9 FF                12855 	.byte	-1
   33EA 08                12856 	.byte	8
   33EB FA                12857 	.byte	-6
   33EC FF                12858 	.byte	-1
   33ED 0D                12859 	.byte	13
   33EE FE                12860 	.byte	-2
   33EF FF                12861 	.byte	-1
   33F0 F8                12862 	.byte	-8
   33F1 06                12863 	.byte	6
   33F2 01                12864 	.byte	1
                          12865 	.globl _height2RisingLeft11
   33F3                   12866 _height2RisingLeft11:
   33F3 00                12867 	.byte	0
   33F4 FE                12868 	.byte	-2
   33F5 F3                12869 	.byte	-13
   33F6 FF                12870 	.byte	-1
   33F7 02                12871 	.byte	2
   33F8 0D                12872 	.byte	13
   33F9 FF                12873 	.byte	-1
   33FA 08                12874 	.byte	8
   33FB FB                12875 	.byte	-5
   33FC FF                12876 	.byte	-1
   33FD FD                12877 	.byte	-3
   33FE F2                12878 	.byte	-14
   33FF FF                12879 	.byte	-1
   3400 F9                12880 	.byte	-7
   3401 06                12881 	.byte	6
   3402 FF                12882 	.byte	-1
   3403 19                12883 	.byte	25
   3404 00                12884 	.byte	0
   3405 00                12885 	.byte	0
   3406 E9                12886 	.byte	-23
   3407 0D                12887 	.byte	13
   3408 FF                12888 	.byte	-1
   3409 1A                12889 	.byte	26
   340A 00                12890 	.byte	0
   340B 00                12891 	.byte	0
   340C EE                12892 	.byte	-18
   340D FB                12893 	.byte	-5
   340E FF                12894 	.byte	-1
   340F 1A                12895 	.byte	26
   3410 00                12896 	.byte	0
   3411 00                12897 	.byte	0
   3412 E3                12898 	.byte	-29
   3413 F2                12899 	.byte	-14
   3414 FF                12900 	.byte	-1
   3415 1A                12901 	.byte	26
   3416 00                12902 	.byte	0
   3417 00                12903 	.byte	0
   3418 F8                12904 	.byte	-8
   3419 06                12905 	.byte	6
   341A FF                12906 	.byte	-1
   341B 03                12907 	.byte	3
   341C 0D                12908 	.byte	13
   341D FF                12909 	.byte	-1
   341E 08                12910 	.byte	8
   341F FB                12911 	.byte	-5
   3420 FF                12912 	.byte	-1
   3421 FD                12913 	.byte	-3
   3422 F2                12914 	.byte	-14
   3423 FF                12915 	.byte	-1
   3424 F8                12916 	.byte	-8
   3425 06                12917 	.byte	6
   3426 01                12918 	.byte	1
                          12919 	.globl _height2FallingBack11
   3427                   12920 _height2FallingBack11:
   3427 00                12921 	.byte	0
   3428 14                12922 	.byte	20
   3429 FC                12923 	.byte	-4
   342A FF                12924 	.byte	-1
   342B 03                12925 	.byte	3
   342C 0D                12926 	.byte	13
   342D FF                12927 	.byte	-1
   342E F4                12928 	.byte	-12
   342F FF                12929 	.byte	-1
   3430 FF                12930 	.byte	-1
   3431 FD                12931 	.byte	-3
   3432 F3                12932 	.byte	-13
   3433 FF                12933 	.byte	-1
   3434 0C                12934 	.byte	12
   3435 01                12935 	.byte	1
   3436 FF                12936 	.byte	-1
   3437 13                12937 	.byte	19
   3438 F4                12938 	.byte	-12
   3439 00                12939 	.byte	0
   343A F0                12940 	.byte	-16
   343B 19                12941 	.byte	25
   343C FF                12942 	.byte	-1
   343D 13                12943 	.byte	19
   343E F5                12944 	.byte	-11
   343F 00                12945 	.byte	0
   3440 E1                12946 	.byte	-31
   3441 0A                12947 	.byte	10
   3442 FF                12948 	.byte	-1
   3443 13                12949 	.byte	19
   3444 F5                12950 	.byte	-11
   3445 00                12951 	.byte	0
   3446 EA                12952 	.byte	-22
   3447 FE                12953 	.byte	-2
   3448 FF                12954 	.byte	-1
   3449 13                12955 	.byte	19
   344A F4                12956 	.byte	-12
   344B 00                12957 	.byte	0
   344C 0C                12958 	.byte	12
   344D 01                12959 	.byte	1
   344E FF                12960 	.byte	-1
   344F 03                12961 	.byte	3
   3450 0E                12962 	.byte	14
   3451 FF                12963 	.byte	-1
   3452 F4                12964 	.byte	-12
   3453 FF                12965 	.byte	-1
   3454 FF                12966 	.byte	-1
   3455 FD                12967 	.byte	-3
   3456 F2                12968 	.byte	-14
   3457 FF                12969 	.byte	-1
   3458 0C                12970 	.byte	12
   3459 01                12971 	.byte	1
   345A 01                12972 	.byte	1
                          12973 	.globl _height2RisingFront11
   345B                   12974 _height2RisingFront11:
   345B 00                12975 	.byte	0
   345C F9                12976 	.byte	-7
   345D 06                12977 	.byte	6
   345E FF                12978 	.byte	-1
   345F 03                12979 	.byte	3
   3460 0E                12980 	.byte	14
   3461 FF                12981 	.byte	-1
   3462 07                12982 	.byte	7
   3463 FA                12983 	.byte	-6
   3464 FF                12984 	.byte	-1
   3465 FD                12985 	.byte	-3
   3466 F2                12986 	.byte	-14
   3467 FF                12987 	.byte	-1
   3468 F9                12988 	.byte	-7
   3469 06                12989 	.byte	6
   346A FF                12990 	.byte	-1
   346B 19                12991 	.byte	25
   346C 00                12992 	.byte	0
   346D 00                12993 	.byte	0
   346E EA                12994 	.byte	-22
   346F 0E                12995 	.byte	14
   3470 FF                12996 	.byte	-1
   3471 19                12997 	.byte	25
   3472 00                12998 	.byte	0
   3473 00                12999 	.byte	0
   3474 EE                13000 	.byte	-18
   3475 FA                13001 	.byte	-6
   3476 FF                13002 	.byte	-1
   3477 1A                13003 	.byte	26
   3478 00                13004 	.byte	0
   3479 00                13005 	.byte	0
   347A E3                13006 	.byte	-29
   347B F2                13007 	.byte	-14
   347C FF                13008 	.byte	-1
   347D 1A                13009 	.byte	26
   347E 00                13010 	.byte	0
   347F 00                13011 	.byte	0
   3480 F8                13012 	.byte	-8
   3481 06                13013 	.byte	6
   3482 FF                13014 	.byte	-1
   3483 03                13015 	.byte	3
   3484 0E                13016 	.byte	14
   3485 FF                13017 	.byte	-1
   3486 08                13018 	.byte	8
   3487 FA                13019 	.byte	-6
   3488 FF                13020 	.byte	-1
   3489 FD                13021 	.byte	-3
   348A F2                13022 	.byte	-14
   348B FF                13023 	.byte	-1
   348C F8                13024 	.byte	-8
   348D 06                13025 	.byte	6
   348E 01                13026 	.byte	1
                          13027 	.globl _height2FallingFront11
   348F                   13028 _height2FallingFront11:
   348F FF                13029 	.byte	-1
   3490 03                13030 	.byte	3
   3491 0E                13031 	.byte	14
   3492 FF                13032 	.byte	-1
   3493 0E                13033 	.byte	14
   3494 FF                13034 	.byte	-1
   3495 FF                13035 	.byte	-1
   3496 FD                13036 	.byte	-3
   3497 F3                13037 	.byte	-13
   3498 FF                13038 	.byte	-1
   3499 F2                13039 	.byte	-14
   349A 00                13040 	.byte	0
   349B FF                13041 	.byte	-1
   349C F5                13042 	.byte	-11
   349D 0C                13043 	.byte	12
   349E 00                13044 	.byte	0
   349F 0E                13045 	.byte	14
   34A0 02                13046 	.byte	2
   34A1 FF                13047 	.byte	-1
   34A2 F5                13048 	.byte	-11
   34A3 0C                13049 	.byte	12
   34A4 00                13050 	.byte	0
   34A5 19                13051 	.byte	25
   34A6 F3                13052 	.byte	-13
   34A7 FF                13053 	.byte	-1
   34A8 F3                13054 	.byte	-13
   34A9 0C                13055 	.byte	12
   34AA 00                13056 	.byte	0
   34AB 0A                13057 	.byte	10
   34AC E7                13058 	.byte	-25
   34AD FF                13059 	.byte	-1
   34AE F3                13060 	.byte	-13
   34AF 0B                13061 	.byte	11
   34B0 00                13062 	.byte	0
   34B1 F4                13063 	.byte	-12
   34B2 01                13064 	.byte	1
   34B3 FF                13065 	.byte	-1
   34B4 03                13066 	.byte	3
   34B5 0E                13067 	.byte	14
   34B6 FF                13068 	.byte	-1
   34B7 0C                13069 	.byte	12
   34B8 FF                13070 	.byte	-1
   34B9 FF                13071 	.byte	-1
   34BA FD                13072 	.byte	-3
   34BB F2                13073 	.byte	-14
   34BC FF                13074 	.byte	-1
   34BD F4                13075 	.byte	-12
   34BE 01                13076 	.byte	1
   34BF 01                13077 	.byte	1
                          13078 	.globl _height2RisingBack11
   34C0                   13079 _height2RisingBack11:
   34C0 00                13080 	.byte	0
   34C1 10                13081 	.byte	16
   34C2 F5                13082 	.byte	-11
   34C3 FF                13083 	.byte	-1
   34C4 03                13084 	.byte	3
   34C5 0D                13085 	.byte	13
   34C6 FF                13086 	.byte	-1
   34C7 08                13087 	.byte	8
   34C8 FB                13088 	.byte	-5
   34C9 FF                13089 	.byte	-1
   34CA FD                13090 	.byte	-3
   34CB F2                13091 	.byte	-14
   34CC FF                13092 	.byte	-1
   34CD F8                13093 	.byte	-8
   34CE 06                13094 	.byte	6
   34CF FF                13095 	.byte	-1
   34D0 1A                13096 	.byte	26
   34D1 00                13097 	.byte	0
   34D2 00                13098 	.byte	0
   34D3 E9                13099 	.byte	-23
   34D4 0D                13100 	.byte	13
   34D5 FF                13101 	.byte	-1
   34D6 1A                13102 	.byte	26
   34D7 00                13103 	.byte	0
   34D8 00                13104 	.byte	0
   34D9 EE                13105 	.byte	-18
   34DA FB                13106 	.byte	-5
   34DB FF                13107 	.byte	-1
   34DC 1A                13108 	.byte	26
   34DD 00                13109 	.byte	0
   34DE 00                13110 	.byte	0
   34DF E3                13111 	.byte	-29
   34E0 F2                13112 	.byte	-14
   34E1 FF                13113 	.byte	-1
   34E2 1A                13114 	.byte	26
   34E3 00                13115 	.byte	0
   34E4 00                13116 	.byte	0
   34E5 F8                13117 	.byte	-8
   34E6 06                13118 	.byte	6
   34E7 FF                13119 	.byte	-1
   34E8 03                13120 	.byte	3
   34E9 0D                13121 	.byte	13
   34EA FF                13122 	.byte	-1
   34EB 08                13123 	.byte	8
   34EC FB                13124 	.byte	-5
   34ED FF                13125 	.byte	-1
   34EE FD                13126 	.byte	-3
   34EF F2                13127 	.byte	-14
   34F0 FF                13128 	.byte	-1
   34F1 F8                13129 	.byte	-8
   34F2 06                13130 	.byte	6
   34F3 01                13131 	.byte	1
                          13132 	.globl _depth2RollingLeft11
   34F4                   13133 _depth2RollingLeft11:
   34F4 FF                13134 	.byte	-1
   34F5 0D                13135 	.byte	13
   34F6 02                13136 	.byte	2
   34F7 FF                13137 	.byte	-1
   34F8 10                13138 	.byte	16
   34F9 F5                13139 	.byte	-11
   34FA FF                13140 	.byte	-1
   34FB F3                13141 	.byte	-13
   34FC FE                13142 	.byte	-2
   34FD FF                13143 	.byte	-1
   34FE F0                13144 	.byte	-16
   34FF 0B                13145 	.byte	11
   3500 FF                13146 	.byte	-1
   3501 00                13147 	.byte	0
   3502 F3                13148 	.byte	-13
   3503 00                13149 	.byte	0
   3504 0D                13150 	.byte	13
   3505 0F                13151 	.byte	15
   3506 FF                13152 	.byte	-1
   3507 FF                13153 	.byte	-1
   3508 F3                13154 	.byte	-13
   3509 00                13155 	.byte	0
   350A 11                13156 	.byte	17
   350B 02                13157 	.byte	2
   350C FF                13158 	.byte	-1
   350D FF                13159 	.byte	-1
   350E F2                13160 	.byte	-14
   350F 00                13161 	.byte	0
   3510 F4                13162 	.byte	-12
   3511 0C                13163 	.byte	12
   3512 FF                13164 	.byte	-1
   3513 FF                13165 	.byte	-1
   3514 F2                13166 	.byte	-14
   3515 00                13167 	.byte	0
   3516 F1                13168 	.byte	-15
   3517 0C                13169 	.byte	12
   3518 FF                13170 	.byte	-1
   3519 0C                13171 	.byte	12
   351A 02                13172 	.byte	2
   351B FF                13173 	.byte	-1
   351C 10                13174 	.byte	16
   351D F4                13175 	.byte	-12
   351E FF                13176 	.byte	-1
   351F F3                13177 	.byte	-13
   3520 FE                13178 	.byte	-2
   3521 FF                13179 	.byte	-1
   3522 F1                13180 	.byte	-15
   3523 0C                13181 	.byte	12
   3524 01                13182 	.byte	1
                          13183 	.globl _depth2RollingRight11
   3525                   13184 _depth2RollingRight11:
   3525 00                13185 	.byte	0
   3526 0F                13186 	.byte	15
   3527 0C                13187 	.byte	12
   3528 FF                13188 	.byte	-1
   3529 F4                13189 	.byte	-12
   352A 02                13190 	.byte	2
   352B FF                13191 	.byte	-1
   352C 10                13192 	.byte	16
   352D F4                13193 	.byte	-12
   352E FF                13194 	.byte	-1
   352F 0C                13195 	.byte	12
   3530 FE                13196 	.byte	-2
   3531 FF                13197 	.byte	-1
   3532 F0                13198 	.byte	-16
   3533 0C                13199 	.byte	12
   3534 FF                13200 	.byte	-1
   3535 05                13201 	.byte	5
   3536 0E                13202 	.byte	14
   3537 00                13203 	.byte	0
   3538 EF                13204 	.byte	-17
   3539 F4                13205 	.byte	-12
   353A FF                13206 	.byte	-1
   353B 05                13207 	.byte	5
   353C 0E                13208 	.byte	14
   353D 00                13209 	.byte	0
   353E 0B                13210 	.byte	11
   353F E6                13211 	.byte	-26
   3540 FF                13212 	.byte	-1
   3541 05                13213 	.byte	5
   3542 0E                13214 	.byte	14
   3543 00                13215 	.byte	0
   3544 07                13216 	.byte	7
   3545 F0                13217 	.byte	-16
   3546 FF                13218 	.byte	-1
   3547 05                13219 	.byte	5
   3548 0E                13220 	.byte	14
   3549 00                13221 	.byte	0
   354A F0                13222 	.byte	-16
   354B 0C                13223 	.byte	12
   354C FF                13224 	.byte	-1
   354D F4                13225 	.byte	-12
   354E 02                13226 	.byte	2
   354F FF                13227 	.byte	-1
   3550 10                13228 	.byte	16
   3551 F4                13229 	.byte	-12
   3552 FF                13230 	.byte	-1
   3553 0C                13231 	.byte	12
   3554 FE                13232 	.byte	-2
   3555 FF                13233 	.byte	-1
   3556 F0                13234 	.byte	-16
   3557 0C                13235 	.byte	12
   3558 01                13236 	.byte	1
                          13237 	.globl _width2RollingFront11
   3559                   13238 _width2RollingFront11:
   3559 FF                13239 	.byte	-1
   355A 06                13240 	.byte	6
   355B 1C                13241 	.byte	28
   355C FF                13242 	.byte	-1
   355D 0E                13243 	.byte	14
   355E FF                13244 	.byte	-1
   355F FF                13245 	.byte	-1
   3560 FA                13246 	.byte	-6
   3561 E5                13247 	.byte	-27
   3562 FF                13248 	.byte	-1
   3563 F2                13249 	.byte	-14
   3564 00                13250 	.byte	0
   3565 FF                13251 	.byte	-1
   3566 FB                13252 	.byte	-5
   3567 06                13253 	.byte	6
   3568 00                13254 	.byte	0
   3569 0B                13255 	.byte	11
   356A 16                13256 	.byte	22
   356B FF                13257 	.byte	-1
   356C FA                13258 	.byte	-6
   356D 06                13259 	.byte	6
   356E 00                13260 	.byte	0
   356F 14                13261 	.byte	20
   3570 F9                13262 	.byte	-7
   3571 FF                13263 	.byte	-1
   3572 FA                13264 	.byte	-6
   3573 06                13265 	.byte	6
   3574 00                13266 	.byte	0
   3575 00                13267 	.byte	0
   3576 DF                13268 	.byte	-33
   3577 FF                13269 	.byte	-1
   3578 FA                13270 	.byte	-6
   3579 05                13271 	.byte	5
   357A 00                13272 	.byte	0
   357B F3                13273 	.byte	-13
   357C 01                13274 	.byte	1
   357D FF                13275 	.byte	-1
   357E 05                13276 	.byte	5
   357F 1C                13277 	.byte	28
   3580 FF                13278 	.byte	-1
   3581 0E                13279 	.byte	14
   3582 FF                13280 	.byte	-1
   3583 FF                13281 	.byte	-1
   3584 FA                13282 	.byte	-6
   3585 E4                13283 	.byte	-28
   3586 FF                13284 	.byte	-1
   3587 F3                13285 	.byte	-13
   3588 01                13286 	.byte	1
   3589 01                13287 	.byte	1
                          13288 	.globl _width2RollingBack11
   358A                   13289 _width2RollingBack11:
   358A 00                13290 	.byte	0
   358B 14                13291 	.byte	20
   358C FC                13292 	.byte	-4
   358D FF                13293 	.byte	-1
   358E 06                13294 	.byte	6
   358F 1B                13295 	.byte	27
   3590 FF                13296 	.byte	-1
   3591 F4                13297 	.byte	-12
   3592 FF                13298 	.byte	-1
   3593 FF                13299 	.byte	-1
   3594 FA                13300 	.byte	-6
   3595 E5                13301 	.byte	-27
   3596 FF                13302 	.byte	-1
   3597 0C                13303 	.byte	12
   3598 01                13304 	.byte	1
   3599 FF                13305 	.byte	-1
   359A 09                13306 	.byte	9
   359B FA                13307 	.byte	-6
   359C 00                13308 	.byte	0
   359D FD                13309 	.byte	-3
   359E 21                13310 	.byte	33
   359F FF                13311 	.byte	-1
   35A0 09                13312 	.byte	9
   35A1 FA                13313 	.byte	-6
   35A2 00                13314 	.byte	0
   35A3 EB                13315 	.byte	-21
   35A4 05                13316 	.byte	5
   35A5 FF                13317 	.byte	-1
   35A6 0A                13318 	.byte	10
   35A7 FA                13319 	.byte	-6
   35A8 00                13320 	.byte	0
   35A9 F0                13321 	.byte	-16
   35AA EB                13322 	.byte	-21
   35AB FF                13323 	.byte	-1
   35AC 0A                13324 	.byte	10
   35AD FA                13325 	.byte	-6
   35AE 00                13326 	.byte	0
   35AF 0B                13327 	.byte	11
   35B0 01                13328 	.byte	1
   35B1 FF                13329 	.byte	-1
   35B2 06                13330 	.byte	6
   35B3 1B                13331 	.byte	27
   35B4 FF                13332 	.byte	-1
   35B5 F5                13333 	.byte	-11
   35B6 FF                13334 	.byte	-1
   35B7 FF                13335 	.byte	-1
   35B8 FA                13336 	.byte	-6
   35B9 E5                13337 	.byte	-27
   35BA FF                13338 	.byte	-1
   35BB 0B                13339 	.byte	11
   35BC 01                13340 	.byte	1
   35BD 01                13341 	.byte	1
                          13342 	.globl _height2FallingLeft12
   35BE                   13343 _height2FallingLeft12:
   35BE FF                13344 	.byte	-1
   35BF 0D                13345 	.byte	13
   35C0 00                13346 	.byte	0
   35C1 FF                13347 	.byte	-1
   35C2 08                13348 	.byte	8
   35C3 FB                13349 	.byte	-5
   35C4 FF                13350 	.byte	-1
   35C5 F3                13351 	.byte	-13
   35C6 00                13352 	.byte	0
   35C7 FF                13353 	.byte	-1
   35C8 F8                13354 	.byte	-8
   35C9 05                13355 	.byte	5
   35CA FF                13356 	.byte	-1
   35CB FB                13357 	.byte	-5
   35CC E5                13358 	.byte	-27
   35CD 00                13359 	.byte	0
   35CE 12                13360 	.byte	18
   35CF 1B                13361 	.byte	27
   35D0 FF                13362 	.byte	-1
   35D1 FA                13363 	.byte	-6
   35D2 E5                13364 	.byte	-27
   35D3 00                13365 	.byte	0
   35D4 0E                13366 	.byte	14
   35D5 16                13367 	.byte	22
   35D6 FF                13368 	.byte	-1
   35D7 FA                13369 	.byte	-6
   35D8 E4                13370 	.byte	-28
   35D9 00                13371 	.byte	0
   35DA F9                13372 	.byte	-7
   35DB 1C                13373 	.byte	28
   35DC FF                13374 	.byte	-1
   35DD FA                13375 	.byte	-6
   35DE E4                13376 	.byte	-28
   35DF 00                13377 	.byte	0
   35E0 F9                13378 	.byte	-7
   35E1 06                13379 	.byte	6
   35E2 FF                13380 	.byte	-1
   35E3 0C                13381 	.byte	12
   35E4 00                13382 	.byte	0
   35E5 FF                13383 	.byte	-1
   35E6 08                13384 	.byte	8
   35E7 FA                13385 	.byte	-6
   35E8 FF                13386 	.byte	-1
   35E9 F3                13387 	.byte	-13
   35EA 00                13388 	.byte	0
   35EB FF                13389 	.byte	-1
   35EC F9                13390 	.byte	-7
   35ED 06                13391 	.byte	6
   35EE 01                13392 	.byte	1
                          13393 	.globl _height2RisingRight12
   35EF                   13394 _height2RisingRight12:
   35EF 00                13395 	.byte	0
   35F0 06                13396 	.byte	6
   35F1 1C                13397 	.byte	28
   35F2 FF                13398 	.byte	-1
   35F3 01                13399 	.byte	1
   35F4 0E                13400 	.byte	14
   35F5 FF                13401 	.byte	-1
   35F6 08                13402 	.byte	8
   35F7 FA                13403 	.byte	-6
   35F8 FF                13404 	.byte	-1
   35F9 FF                13405 	.byte	-1
   35FA F2                13406 	.byte	-14
   35FB FF                13407 	.byte	-1
   35FC F8                13408 	.byte	-8
   35FD 06                13409 	.byte	6
   35FE FF                13410 	.byte	-1
   35FF 1B                13411 	.byte	27
   3600 04                13412 	.byte	4
   3601 00                13413 	.byte	0
   3602 E6                13414 	.byte	-26
   3603 0A                13415 	.byte	10
   3604 FF                13416 	.byte	-1
   3605 1B                13417 	.byte	27
   3606 04                13418 	.byte	4
   3607 00                13419 	.byte	0
   3608 ED                13420 	.byte	-19
   3609 F6                13421 	.byte	-10
   360A FF                13422 	.byte	-1
   360B 1B                13423 	.byte	27
   360C 04                13424 	.byte	4
   360D 00                13425 	.byte	0
   360E E4                13426 	.byte	-28
   360F EE                13427 	.byte	-18
   3610 FF                13428 	.byte	-1
   3611 1B                13429 	.byte	27
   3612 04                13430 	.byte	4
   3613 00                13431 	.byte	0
   3614 F8                13432 	.byte	-8
   3615 06                13433 	.byte	6
   3616 FF                13434 	.byte	-1
   3617 01                13435 	.byte	1
   3618 0E                13436 	.byte	14
   3619 FF                13437 	.byte	-1
   361A 08                13438 	.byte	8
   361B FA                13439 	.byte	-6
   361C FF                13440 	.byte	-1
   361D FF                13441 	.byte	-1
   361E F2                13442 	.byte	-14
   361F FF                13443 	.byte	-1
   3620 F8                13444 	.byte	-8
   3621 06                13445 	.byte	6
   3622 01                13446 	.byte	1
                          13447 	.globl _height2FallingRight12
   3623                   13448 _height2FallingRight12:
   3623 00                13449 	.byte	0
   3624 10                13450 	.byte	16
   3625 0E                13451 	.byte	14
   3626 FF                13452 	.byte	-1
   3627 F3                13453 	.byte	-13
   3628 00                13454 	.byte	0
   3629 FF                13455 	.byte	-1
   362A 08                13456 	.byte	8
   362B FA                13457 	.byte	-6
   362C FF                13458 	.byte	-1
   362D 0D                13459 	.byte	13
   362E 00                13460 	.byte	0
   362F FF                13461 	.byte	-1
   3630 F8                13462 	.byte	-8
   3631 06                13463 	.byte	6
   3632 FF                13464 	.byte	-1
   3633 06                13465 	.byte	6
   3634 1C                13466 	.byte	28
   3635 00                13467 	.byte	0
   3636 ED                13468 	.byte	-19
   3637 E4                13469 	.byte	-28
   3638 FF                13470 	.byte	-1
   3639 06                13471 	.byte	6
   363A 1C                13472 	.byte	28
   363B 00                13473 	.byte	0
   363C 02                13474 	.byte	2
   363D DE                13475 	.byte	-34
   363E FF                13476 	.byte	-1
   363F 06                13477 	.byte	6
   3640 1C                13478 	.byte	28
   3641 00                13479 	.byte	0
   3642 07                13480 	.byte	7
   3643 E4                13481 	.byte	-28
   3644 FF                13482 	.byte	-1
   3645 06                13483 	.byte	6
   3646 1C                13484 	.byte	28
   3647 00                13485 	.byte	0
   3648 F8                13486 	.byte	-8
   3649 06                13487 	.byte	6
   364A FF                13488 	.byte	-1
   364B F3                13489 	.byte	-13
   364C 00                13490 	.byte	0
   364D FF                13491 	.byte	-1
   364E 08                13492 	.byte	8
   364F FA                13493 	.byte	-6
   3650 FF                13494 	.byte	-1
   3651 0D                13495 	.byte	13
   3652 00                13496 	.byte	0
   3653 FF                13497 	.byte	-1
   3654 F8                13498 	.byte	-8
   3655 06                13499 	.byte	6
   3656 01                13500 	.byte	1
                          13501 	.globl _height2RisingLeft12
   3657                   13502 _height2RisingLeft12:
   3657 00                13503 	.byte	0
   3658 FC                13504 	.byte	-4
   3659 F3                13505 	.byte	-13
   365A FF                13506 	.byte	-1
   365B 04                13507 	.byte	4
   365C 0D                13508 	.byte	13
   365D FF                13509 	.byte	-1
   365E 08                13510 	.byte	8
   365F FB                13511 	.byte	-5
   3660 FF                13512 	.byte	-1
   3661 FB                13513 	.byte	-5
   3662 F2                13514 	.byte	-14
   3663 FF                13515 	.byte	-1
   3664 F9                13516 	.byte	-7
   3665 06                13517 	.byte	6
   3666 FF                13518 	.byte	-1
   3667 18                13519 	.byte	24
   3668 FC                13520 	.byte	-4
   3669 00                13521 	.byte	0
   366A EC                13522 	.byte	-20
   366B 11                13523 	.byte	17
   366C FF                13524 	.byte	-1
   366D 19                13525 	.byte	25
   366E FD                13526 	.byte	-3
   366F 00                13527 	.byte	0
   3670 EF                13528 	.byte	-17
   3671 FE                13529 	.byte	-2
   3672 FF                13530 	.byte	-1
   3673 19                13531 	.byte	25
   3674 FC                13532 	.byte	-4
   3675 00                13533 	.byte	0
   3676 E2                13534 	.byte	-30
   3677 F6                13535 	.byte	-10
   3678 FF                13536 	.byte	-1
   3679 19                13537 	.byte	25
   367A FC                13538 	.byte	-4
   367B 00                13539 	.byte	0
   367C F8                13540 	.byte	-8
   367D 06                13541 	.byte	6
   367E FF                13542 	.byte	-1
   367F 05                13543 	.byte	5
   3680 0E                13544 	.byte	14
   3681 FF                13545 	.byte	-1
   3682 08                13546 	.byte	8
   3683 FA                13547 	.byte	-6
   3684 FF                13548 	.byte	-1
   3685 FB                13549 	.byte	-5
   3686 F2                13550 	.byte	-14
   3687 FF                13551 	.byte	-1
   3688 F8                13552 	.byte	-8
   3689 06                13553 	.byte	6
   368A 01                13554 	.byte	1
                          13555 	.globl _height2FallingBack12
   368B                   13556 _height2FallingBack12:
   368B 00                13557 	.byte	0
   368C 15                13558 	.byte	21
   368D FB                13559 	.byte	-5
   368E FF                13560 	.byte	-1
   368F 03                13561 	.byte	3
   3690 0D                13562 	.byte	13
   3691 FF                13563 	.byte	-1
   3692 F3                13564 	.byte	-13
   3693 00                13565 	.byte	0
   3694 FF                13566 	.byte	-1
   3695 FD                13567 	.byte	-3
   3696 F3                13568 	.byte	-13
   3697 FF                13569 	.byte	-1
   3698 0D                13570 	.byte	13
   3699 00                13571 	.byte	0
   369A FF                13572 	.byte	-1
   369B 10                13573 	.byte	16
   369C F4                13574 	.byte	-12
   369D 00                13575 	.byte	0
   369E F3                13576 	.byte	-13
   369F 19                13577 	.byte	25
   36A0 FF                13578 	.byte	-1
   36A1 10                13579 	.byte	16
   36A2 F5                13580 	.byte	-11
   36A3 00                13581 	.byte	0
   36A4 E3                13582 	.byte	-29
   36A5 0B                13583 	.byte	11
   36A6 FF                13584 	.byte	-1
   36A7 10                13585 	.byte	16
   36A8 F5                13586 	.byte	-11
   36A9 00                13587 	.byte	0
   36AA ED                13588 	.byte	-19
   36AB FE                13589 	.byte	-2
   36AC FF                13590 	.byte	-1
   36AD 10                13591 	.byte	16
   36AE F4                13592 	.byte	-12
   36AF 00                13593 	.byte	0
   36B0 0D                13594 	.byte	13
   36B1 00                13595 	.byte	0
   36B2 FF                13596 	.byte	-1
   36B3 03                13597 	.byte	3
   36B4 0E                13598 	.byte	14
   36B5 FF                13599 	.byte	-1
   36B6 F3                13600 	.byte	-13
   36B7 00                13601 	.byte	0
   36B8 FF                13602 	.byte	-1
   36B9 FD                13603 	.byte	-3
   36BA F2                13604 	.byte	-14
   36BB FF                13605 	.byte	-1
   36BC 0D                13606 	.byte	13
   36BD 00                13607 	.byte	0
   36BE 01                13608 	.byte	1
                          13609 	.globl _height2RisingFront12
   36BF                   13610 _height2RisingFront12:
   36BF 00                13611 	.byte	0
   36C0 F7                13612 	.byte	-9
   36C1 06                13613 	.byte	6
   36C2 FF                13614 	.byte	-1
   36C3 03                13615 	.byte	3
   36C4 0E                13616 	.byte	14
   36C5 FF                13617 	.byte	-1
   36C6 09                13618 	.byte	9
   36C7 FA                13619 	.byte	-6
   36C8 FF                13620 	.byte	-1
   36C9 FD                13621 	.byte	-3
   36CA F2                13622 	.byte	-14
   36CB FF                13623 	.byte	-1
   36CC F7                13624 	.byte	-9
   36CD 06                13625 	.byte	6
   36CE FF                13626 	.byte	-1
   36CF 17                13627 	.byte	23
   36D0 02                13628 	.byte	2
   36D1 00                13629 	.byte	0
   36D2 EC                13630 	.byte	-20
   36D3 0C                13631 	.byte	12
   36D4 FF                13632 	.byte	-1
   36D5 17                13633 	.byte	23
   36D6 02                13634 	.byte	2
   36D7 00                13635 	.byte	0
   36D8 F2                13636 	.byte	-14
   36D9 F8                13637 	.byte	-8
   36DA FF                13638 	.byte	-1
   36DB 18                13639 	.byte	24
   36DC 02                13640 	.byte	2
   36DD 00                13641 	.byte	0
   36DE E5                13642 	.byte	-27
   36DF F0                13643 	.byte	-16
   36E0 FF                13644 	.byte	-1
   36E1 18                13645 	.byte	24
   36E2 02                13646 	.byte	2
   36E3 00                13647 	.byte	0
   36E4 F6                13648 	.byte	-10
   36E5 06                13649 	.byte	6
   36E6 FF                13650 	.byte	-1
   36E7 03                13651 	.byte	3
   36E8 0E                13652 	.byte	14
   36E9 FF                13653 	.byte	-1
   36EA 0A                13654 	.byte	10
   36EB FA                13655 	.byte	-6
   36EC FF                13656 	.byte	-1
   36ED FD                13657 	.byte	-3
   36EE F2                13658 	.byte	-14
   36EF FF                13659 	.byte	-1
   36F0 F6                13660 	.byte	-10
   36F1 06                13661 	.byte	6
   36F2 01                13662 	.byte	1
                          13663 	.globl _height2FallingFront12
   36F3                   13664 _height2FallingFront12:
   36F3 FF                13665 	.byte	-1
   36F4 03                13666 	.byte	3
   36F5 0E                13667 	.byte	14
   36F6 FF                13668 	.byte	-1
   36F7 0D                13669 	.byte	13
   36F8 00                13670 	.byte	0
   36F9 FF                13671 	.byte	-1
   36FA FD                13672 	.byte	-3
   36FB F2                13673 	.byte	-14
   36FC FF                13674 	.byte	-1
   36FD F3                13675 	.byte	-13
   36FE 00                13676 	.byte	0
   36FF FF                13677 	.byte	-1
   3700 F1                13678 	.byte	-15
   3701 0C                13679 	.byte	12
   3702 00                13680 	.byte	0
   3703 12                13681 	.byte	18
   3704 02                13682 	.byte	2
   3705 FF                13683 	.byte	-1
   3706 F1                13684 	.byte	-15
   3707 0C                13685 	.byte	12
   3708 00                13686 	.byte	0
   3709 1C                13687 	.byte	28
   370A F4                13688 	.byte	-12
   370B FF                13689 	.byte	-1
   370C F0                13690 	.byte	-16
   370D 0C                13691 	.byte	12
   370E 00                13692 	.byte	0
   370F 0D                13693 	.byte	13
   3710 E6                13694 	.byte	-26
   3711 FF                13695 	.byte	-1
   3712 F1                13696 	.byte	-15
   3713 0C                13697 	.byte	12
   3714 00                13698 	.byte	0
   3715 F3                13699 	.byte	-13
   3716 00                13700 	.byte	0
   3717 FF                13701 	.byte	-1
   3718 03                13702 	.byte	3
   3719 0E                13703 	.byte	14
   371A FF                13704 	.byte	-1
   371B 0C                13705 	.byte	12
   371C 00                13706 	.byte	0
   371D FF                13707 	.byte	-1
   371E FE                13708 	.byte	-2
   371F F2                13709 	.byte	-14
   3720 FF                13710 	.byte	-1
   3721 F3                13711 	.byte	-13
   3722 00                13712 	.byte	0
   3723 01                13713 	.byte	1
                          13714 	.globl _height2RisingBack12
   3724                   13715 _height2RisingBack12:
   3724 00                13716 	.byte	0
   3725 10                13717 	.byte	16
   3726 F5                13718 	.byte	-11
   3727 FF                13719 	.byte	-1
   3728 03                13720 	.byte	3
   3729 0D                13721 	.byte	13
   372A FF                13722 	.byte	-1
   372B 06                13723 	.byte	6
   372C FB                13724 	.byte	-5
   372D FF                13725 	.byte	-1
   372E FD                13726 	.byte	-3
   372F F2                13727 	.byte	-14
   3730 FF                13728 	.byte	-1
   3731 FA                13729 	.byte	-6
   3732 06                13730 	.byte	6
   3733 FF                13731 	.byte	-1
   3734 1C                13732 	.byte	28
   3735 FE                13733 	.byte	-2
   3736 00                13734 	.byte	0
   3737 E7                13735 	.byte	-25
   3738 0F                13736 	.byte	15
   3739 FF                13737 	.byte	-1
   373A 1C                13738 	.byte	28
   373B FE                13739 	.byte	-2
   373C 00                13740 	.byte	0
   373D EA                13741 	.byte	-22
   373E FD                13742 	.byte	-3
   373F FF                13743 	.byte	-1
   3740 1C                13744 	.byte	28
   3741 FE                13745 	.byte	-2
   3742 00                13746 	.byte	0
   3743 E1                13747 	.byte	-31
   3744 F4                13748 	.byte	-12
   3745 FF                13749 	.byte	-1
   3746 1C                13750 	.byte	28
   3747 FE                13751 	.byte	-2
   3748 00                13752 	.byte	0
   3749 FA                13753 	.byte	-6
   374A 06                13754 	.byte	6
   374B FF                13755 	.byte	-1
   374C 03                13756 	.byte	3
   374D 0D                13757 	.byte	13
   374E FF                13758 	.byte	-1
   374F 06                13759 	.byte	6
   3750 FB                13760 	.byte	-5
   3751 FF                13761 	.byte	-1
   3752 FD                13762 	.byte	-3
   3753 F2                13763 	.byte	-14
   3754 FF                13764 	.byte	-1
   3755 FA                13765 	.byte	-6
   3756 06                13766 	.byte	6
   3757 01                13767 	.byte	1
                          13768 	.globl _depth2RollingLeft12
   3758                   13769 _depth2RollingLeft12:
   3758 FF                13770 	.byte	-1
   3759 0D                13771 	.byte	13
   375A 00                13772 	.byte	0
   375B FF                13773 	.byte	-1
   375C 10                13774 	.byte	16
   375D F5                13775 	.byte	-11
   375E FF                13776 	.byte	-1
   375F F3                13777 	.byte	-13
   3760 00                13778 	.byte	0
   3761 FF                13779 	.byte	-1
   3762 F0                13780 	.byte	-16
   3763 0B                13781 	.byte	11
   3764 FF                13782 	.byte	-1
   3765 FE                13783 	.byte	-2
   3766 F3                13784 	.byte	-13
   3767 00                13785 	.byte	0
   3768 0F                13786 	.byte	15
   3769 0D                13787 	.byte	13
   376A FF                13788 	.byte	-1
   376B FD                13789 	.byte	-3
   376C F3                13790 	.byte	-13
   376D 00                13791 	.byte	0
   376E 13                13792 	.byte	19
   376F 02                13793 	.byte	2
   3770 FF                13794 	.byte	-1
   3771 FD                13795 	.byte	-3
   3772 F2                13796 	.byte	-14
   3773 00                13797 	.byte	0
   3774 F6                13798 	.byte	-10
   3775 0E                13799 	.byte	14
   3776 FF                13800 	.byte	-1
   3777 FD                13801 	.byte	-3
   3778 F2                13802 	.byte	-14
   3779 00                13803 	.byte	0
   377A F1                13804 	.byte	-15
   377B 0C                13805 	.byte	12
   377C FF                13806 	.byte	-1
   377D 0C                13807 	.byte	12
   377E 00                13808 	.byte	0
   377F FF                13809 	.byte	-1
   3780 10                13810 	.byte	16
   3781 F4                13811 	.byte	-12
   3782 FF                13812 	.byte	-1
   3783 F3                13813 	.byte	-13
   3784 00                13814 	.byte	0
   3785 FF                13815 	.byte	-1
   3786 F1                13816 	.byte	-15
   3787 0C                13817 	.byte	12
   3788 01                13818 	.byte	1
                          13819 	.globl _depth2RollingRight12
   3789                   13820 _depth2RollingRight12:
   3789 00                13821 	.byte	0
   378A 10                13822 	.byte	16
   378B 0E                13823 	.byte	14
   378C FF                13824 	.byte	-1
   378D F3                13825 	.byte	-13
   378E 00                13826 	.byte	0
   378F FF                13827 	.byte	-1
   3790 10                13828 	.byte	16
   3791 F4                13829 	.byte	-12
   3792 FF                13830 	.byte	-1
   3793 0D                13831 	.byte	13
   3794 00                13832 	.byte	0
   3795 FF                13833 	.byte	-1
   3796 F0                13834 	.byte	-16
   3797 0C                13835 	.byte	12
   3798 FF                13836 	.byte	-1
   3799 03                13837 	.byte	3
   379A 0E                13838 	.byte	14
   379B 00                13839 	.byte	0
   379C F0                13840 	.byte	-16
   379D F2                13841 	.byte	-14
   379E FF                13842 	.byte	-1
   379F 03                13843 	.byte	3
   37A0 0E                13844 	.byte	14
   37A1 00                13845 	.byte	0
   37A2 0D                13846 	.byte	13
   37A3 E6                13847 	.byte	-26
   37A4 FF                13848 	.byte	-1
   37A5 03                13849 	.byte	3
   37A6 0E                13850 	.byte	14
   37A7 00                13851 	.byte	0
   37A8 0A                13852 	.byte	10
   37A9 F2                13853 	.byte	-14
   37AA FF                13854 	.byte	-1
   37AB 03                13855 	.byte	3
   37AC 0E                13856 	.byte	14
   37AD 00                13857 	.byte	0
   37AE F0                13858 	.byte	-16
   37AF 0C                13859 	.byte	12
   37B0 FF                13860 	.byte	-1
   37B1 F3                13861 	.byte	-13
   37B2 00                13862 	.byte	0
   37B3 FF                13863 	.byte	-1
   37B4 10                13864 	.byte	16
   37B5 F4                13865 	.byte	-12
   37B6 FF                13866 	.byte	-1
   37B7 0D                13867 	.byte	13
   37B8 00                13868 	.byte	0
   37B9 FF                13869 	.byte	-1
   37BA F0                13870 	.byte	-16
   37BB 0C                13871 	.byte	12
   37BC 01                13872 	.byte	1
                          13873 	.globl _width2RollingFront12
   37BD                   13874 _width2RollingFront12:
   37BD FF                13875 	.byte	-1
   37BE 06                13876 	.byte	6
   37BF 1C                13877 	.byte	28
   37C0 FF                13878 	.byte	-1
   37C1 0D                13879 	.byte	13
   37C2 00                13880 	.byte	0
   37C3 FF                13881 	.byte	-1
   37C4 FA                13882 	.byte	-6
   37C5 E4                13883 	.byte	-28
   37C6 FF                13884 	.byte	-1
   37C7 F3                13885 	.byte	-13
   37C8 00                13886 	.byte	0
   37C9 FF                13887 	.byte	-1
   37CA F9                13888 	.byte	-7
   37CB 06                13889 	.byte	6
   37CC 00                13890 	.byte	0
   37CD 0D                13891 	.byte	13
   37CE 16                13892 	.byte	22
   37CF FF                13893 	.byte	-1
   37D0 F9                13894 	.byte	-7
   37D1 06                13895 	.byte	6
   37D2 00                13896 	.byte	0
   37D3 14                13897 	.byte	20
   37D4 FA                13898 	.byte	-6
   37D5 FF                13899 	.byte	-1
   37D6 F8                13900 	.byte	-8
   37D7 06                13901 	.byte	6
   37D8 00                13902 	.byte	0
   37D9 02                13903 	.byte	2
   37DA DE                13904 	.byte	-34
   37DB FF                13905 	.byte	-1
   37DC F8                13906 	.byte	-8
   37DD 06                13907 	.byte	6
   37DE 00                13908 	.byte	0
   37DF F4                13909 	.byte	-12
   37E0 00                13910 	.byte	0
   37E1 FF                13911 	.byte	-1
   37E2 06                13912 	.byte	6
   37E3 1C                13913 	.byte	28
   37E4 FF                13914 	.byte	-1
   37E5 0C                13915 	.byte	12
   37E6 00                13916 	.byte	0
   37E7 FF                13917 	.byte	-1
   37E8 FA                13918 	.byte	-6
   37E9 E4                13919 	.byte	-28
   37EA FF                13920 	.byte	-1
   37EB F4                13921 	.byte	-12
   37EC 00                13922 	.byte	0
   37ED 01                13923 	.byte	1
                          13924 	.globl _width2RollingBack12
   37EE                   13925 _width2RollingBack12:
   37EE 00                13926 	.byte	0
   37EF 15                13927 	.byte	21
   37F0 FB                13928 	.byte	-5
   37F1 FF                13929 	.byte	-1
   37F2 06                13930 	.byte	6
   37F3 1B                13931 	.byte	27
   37F4 FF                13932 	.byte	-1
   37F5 F3                13933 	.byte	-13
   37F6 00                13934 	.byte	0
   37F7 FF                13935 	.byte	-1
   37F8 FA                13936 	.byte	-6
   37F9 E5                13937 	.byte	-27
   37FA FF                13938 	.byte	-1
   37FB 0D                13939 	.byte	13
   37FC 00                13940 	.byte	0
   37FD FF                13941 	.byte	-1
   37FE 08                13942 	.byte	8
   37FF FA                13943 	.byte	-6
   3800 00                13944 	.byte	0
   3801 FE                13945 	.byte	-2
   3802 21                13946 	.byte	33
   3803 FF                13947 	.byte	-1
   3804 08                13948 	.byte	8
   3805 FA                13949 	.byte	-6
   3806 00                13950 	.byte	0
   3807 EB                13951 	.byte	-21
   3808 06                13952 	.byte	6
   3809 FF                13953 	.byte	-1
   380A 08                13954 	.byte	8
   380B FA                13955 	.byte	-6
   380C 00                13956 	.byte	0
   380D F2                13957 	.byte	-14
   380E EB                13958 	.byte	-21
   380F FF                13959 	.byte	-1
   3810 08                13960 	.byte	8
   3811 FA                13961 	.byte	-6
   3812 00                13962 	.byte	0
   3813 0D                13963 	.byte	13
   3814 00                13964 	.byte	0
   3815 FF                13965 	.byte	-1
   3816 06                13966 	.byte	6
   3817 1B                13967 	.byte	27
   3818 FF                13968 	.byte	-1
   3819 F3                13969 	.byte	-13
   381A 00                13970 	.byte	0
   381B FF                13971 	.byte	-1
   381C FA                13972 	.byte	-6
   381D E5                13973 	.byte	-27
   381E FF                13974 	.byte	-1
   381F 0D                13975 	.byte	13
   3820 00                13976 	.byte	0
   3821 01                13977 	.byte	1
                          13978 	.globl _height2FallingLeft
                          13979 	.area	.text
   3822                   13980 _height2FallingLeft:
   3822 19 1A             13981 	.word	_height2FallingLeft0
   3824 1B 72             13982 	.word	_height2FallingLeft1
   3826 1D D6             13983 	.word	_height2FallingLeft2
   3828 20 3A             13984 	.word	_height2FallingLeft3
   382A 22 9E             13985 	.word	_height2FallingLeft4
   382C 25 02             13986 	.word	_height2FallingLeft5
   382E 27 66             13987 	.word	_height2FallingLeft6
   3830 29 CA             13988 	.word	_height2FallingLeft7
   3832 2C 2E             13989 	.word	_height2FallingLeft8
   3834 2E 92             13990 	.word	_height2FallingLeft9
   3836 30 F6             13991 	.word	_height2FallingLeft10
   3838 33 5A             13992 	.word	_height2FallingLeft11
                          13993 	.globl _height2RisingRight
   383A                   13994 _height2RisingRight:
   383A 19 4B             13995 	.word	_height2RisingRight0
   383C 1B A3             13996 	.word	_height2RisingRight1
   383E 1E 07             13997 	.word	_height2RisingRight2
   3840 20 6B             13998 	.word	_height2RisingRight3
   3842 22 CF             13999 	.word	_height2RisingRight4
   3844 25 33             14000 	.word	_height2RisingRight5
   3846 27 97             14001 	.word	_height2RisingRight6
   3848 29 FB             14002 	.word	_height2RisingRight7
   384A 2C 5F             14003 	.word	_height2RisingRight8
   384C 2E C3             14004 	.word	_height2RisingRight9
   384E 31 27             14005 	.word	_height2RisingRight10
   3850 33 8B             14006 	.word	_height2RisingRight11
                          14007 	.globl _height2FallingRight
   3852                   14008 _height2FallingRight:
   3852 19 7F             14009 	.word	_height2FallingRight0
   3854 1B D7             14010 	.word	_height2FallingRight1
   3856 1E 3B             14011 	.word	_height2FallingRight2
   3858 20 9F             14012 	.word	_height2FallingRight3
   385A 23 03             14013 	.word	_height2FallingRight4
   385C 25 67             14014 	.word	_height2FallingRight5
   385E 27 CB             14015 	.word	_height2FallingRight6
   3860 2A 2F             14016 	.word	_height2FallingRight7
   3862 2C 93             14017 	.word	_height2FallingRight8
   3864 2E F7             14018 	.word	_height2FallingRight9
   3866 31 5B             14019 	.word	_height2FallingRight10
   3868 33 BF             14020 	.word	_height2FallingRight11
                          14021 	.globl _height2RisingLeft
   386A                   14022 _height2RisingLeft:
   386A 19 B0             14023 	.word	_height2RisingLeft0
   386C 1C 0B             14024 	.word	_height2RisingLeft1
   386E 1E 6F             14025 	.word	_height2RisingLeft2
   3870 20 D3             14026 	.word	_height2RisingLeft3
   3872 23 37             14027 	.word	_height2RisingLeft4
   3874 25 9B             14028 	.word	_height2RisingLeft5
   3876 27 FF             14029 	.word	_height2RisingLeft6
   3878 2A 63             14030 	.word	_height2RisingLeft7
   387A 2C C7             14031 	.word	_height2RisingLeft8
   387C 2F 2B             14032 	.word	_height2RisingLeft9
   387E 31 8F             14033 	.word	_height2RisingLeft10
   3880 33 F3             14034 	.word	_height2RisingLeft11
                          14035 	.globl _height2FallingBack
   3882                   14036 _height2FallingBack:
   3882 19 E4             14037 	.word	_height2FallingBack0
   3884 1C 3F             14038 	.word	_height2FallingBack1
   3886 1E A3             14039 	.word	_height2FallingBack2
   3888 21 07             14040 	.word	_height2FallingBack3
   388A 23 6B             14041 	.word	_height2FallingBack4
   388C 25 CF             14042 	.word	_height2FallingBack5
   388E 28 33             14043 	.word	_height2FallingBack6
   3890 2A 97             14044 	.word	_height2FallingBack7
   3892 2C FB             14045 	.word	_height2FallingBack8
   3894 2F 5F             14046 	.word	_height2FallingBack9
   3896 31 C3             14047 	.word	_height2FallingBack10
   3898 34 27             14048 	.word	_height2FallingBack11
                          14049 	.globl _height2RisingFront
   389A                   14050 _height2RisingFront:
   389A 1A 15             14051 	.word	_height2RisingFront0
   389C 1C 73             14052 	.word	_height2RisingFront1
   389E 1E D7             14053 	.word	_height2RisingFront2
   38A0 21 3B             14054 	.word	_height2RisingFront3
   38A2 23 9F             14055 	.word	_height2RisingFront4
   38A4 26 03             14056 	.word	_height2RisingFront5
   38A6 28 67             14057 	.word	_height2RisingFront6
   38A8 2A CB             14058 	.word	_height2RisingFront7
   38AA 2D 2F             14059 	.word	_height2RisingFront8
   38AC 2F 93             14060 	.word	_height2RisingFront9
   38AE 31 F7             14061 	.word	_height2RisingFront10
   38B0 34 5B             14062 	.word	_height2RisingFront11
                          14063 	.globl _height2FallingFront
   38B2                   14064 _height2FallingFront:
   38B2 1A 49             14065 	.word	_height2FallingFront0
   38B4 1C A7             14066 	.word	_height2FallingFront1
   38B6 1F 0B             14067 	.word	_height2FallingFront2
   38B8 21 6F             14068 	.word	_height2FallingFront3
   38BA 23 D3             14069 	.word	_height2FallingFront4
   38BC 26 37             14070 	.word	_height2FallingFront5
   38BE 28 9B             14071 	.word	_height2FallingFront6
   38C0 2A FF             14072 	.word	_height2FallingFront7
   38C2 2D 63             14073 	.word	_height2FallingFront8
   38C4 2F C7             14074 	.word	_height2FallingFront9
   38C6 32 2B             14075 	.word	_height2FallingFront10
   38C8 34 8F             14076 	.word	_height2FallingFront11
                          14077 	.globl _height2RisingBack
   38CA                   14078 _height2RisingBack:
   38CA 1A 7A             14079 	.word	_height2RisingBack0
   38CC 1C D8             14080 	.word	_height2RisingBack1
   38CE 1F 3C             14081 	.word	_height2RisingBack2
   38D0 21 A0             14082 	.word	_height2RisingBack3
   38D2 24 04             14083 	.word	_height2RisingBack4
   38D4 26 68             14084 	.word	_height2RisingBack5
   38D6 28 CC             14085 	.word	_height2RisingBack6
   38D8 2B 30             14086 	.word	_height2RisingBack7
   38DA 2D 94             14087 	.word	_height2RisingBack8
   38DC 2F F8             14088 	.word	_height2RisingBack9
   38DE 32 5C             14089 	.word	_height2RisingBack10
   38E0 34 C0             14090 	.word	_height2RisingBack11
                          14091 	.globl _depth2RollingLeft
   38E2                   14092 _depth2RollingLeft:
   38E2 1A AE             14093 	.word	_depth2RollingLeft0
   38E4 1D 0C             14094 	.word	_depth2RollingLeft1
   38E6 1F 70             14095 	.word	_depth2RollingLeft2
   38E8 21 D4             14096 	.word	_depth2RollingLeft3
   38EA 24 38             14097 	.word	_depth2RollingLeft4
   38EC 26 9C             14098 	.word	_depth2RollingLeft5
   38EE 29 00             14099 	.word	_depth2RollingLeft6
   38F0 2B 64             14100 	.word	_depth2RollingLeft7
   38F2 2D C8             14101 	.word	_depth2RollingLeft8
   38F4 30 2C             14102 	.word	_depth2RollingLeft9
   38F6 32 90             14103 	.word	_depth2RollingLeft10
   38F8 34 F4             14104 	.word	_depth2RollingLeft11
                          14105 	.globl _depth2RollingRight
   38FA                   14106 _depth2RollingRight:
   38FA 1A DF             14107 	.word	_depth2RollingRight0
   38FC 1D 3D             14108 	.word	_depth2RollingRight1
   38FE 1F A1             14109 	.word	_depth2RollingRight2
   3900 22 05             14110 	.word	_depth2RollingRight3
   3902 24 69             14111 	.word	_depth2RollingRight4
   3904 26 CD             14112 	.word	_depth2RollingRight5
   3906 29 31             14113 	.word	_depth2RollingRight6
   3908 2B 95             14114 	.word	_depth2RollingRight7
   390A 2D F9             14115 	.word	_depth2RollingRight8
   390C 30 5D             14116 	.word	_depth2RollingRight9
   390E 32 C1             14117 	.word	_depth2RollingRight10
   3910 35 25             14118 	.word	_depth2RollingRight11
                          14119 	.globl _width2RollingFront
   3912                   14120 _width2RollingFront:
   3912 1B 10             14121 	.word	_width2RollingFront0
   3914 1D 71             14122 	.word	_width2RollingFront1
   3916 1F D5             14123 	.word	_width2RollingFront2
   3918 22 39             14124 	.word	_width2RollingFront3
   391A 24 9D             14125 	.word	_width2RollingFront4
   391C 27 01             14126 	.word	_width2RollingFront5
   391E 29 65             14127 	.word	_width2RollingFront6
   3920 2B C9             14128 	.word	_width2RollingFront7
   3922 2E 2D             14129 	.word	_width2RollingFront8
   3924 30 91             14130 	.word	_width2RollingFront9
   3926 32 F5             14131 	.word	_width2RollingFront10
   3928 35 59             14132 	.word	_width2RollingFront11
                          14133 	.globl _width2RollingBack
   392A                   14134 _width2RollingBack:
   392A 1B 41             14135 	.word	_width2RollingBack0
   392C 1D A2             14136 	.word	_width2RollingBack1
   392E 20 06             14137 	.word	_width2RollingBack2
   3930 22 6A             14138 	.word	_width2RollingBack3
   3932 24 CE             14139 	.word	_width2RollingBack4
   3934 27 32             14140 	.word	_width2RollingBack5
   3936 29 96             14141 	.word	_width2RollingBack6
   3938 2B FA             14142 	.word	_width2RollingBack7
   393A 2E 5E             14143 	.word	_width2RollingBack8
   393C 30 C2             14144 	.word	_width2RollingBack9
   393E 33 26             14145 	.word	_width2RollingBack10
   3940 35 8A             14146 	.word	_width2RollingBack11
                          14147 	.globl _lineCount
                          14148 	.area .data
   C888                   14149 _lineCount:
   C888 00                14150 	.byte	0	;skip space
                          14151 	.globl _startX
   C889                   14152 _startX:
   C889 00                14153 	.byte	0	;skip space
                          14154 	.globl _startY
   C88A                   14155 _startY:
   C88A 00                14156 	.byte	0	;skip space
                          14157 	.globl _endX
   C88B                   14158 _endX:
   C88B 00                14159 	.byte	0	;skip space
                          14160 	.globl _endY
   C88C                   14161 _endY:
   C88C 00                14162 	.byte	0	;skip space
                          14163 	.globl _levelNumber
   C88D                   14164 _levelNumber:
   C88D 00                14165 	.byte	0	;skip space
                          14166 	.area .bss
                          14167 	.globl	_infoText
   C891                   14168 _infoText:	.blkb	10
                          14169 	.globl	_moveCount
   C89B                   14170 _moveCount:	.blkb	2
                          14171 	.globl	_picAvailable
   C89D                   14172 _picAvailable:	.blkb	1
                          14173 	.globl	_lineX0
   C89E                   14174 _lineX0:	.blkb	120
                          14175 	.globl	_lineY0
   C916                   14176 _lineY0:	.blkb	120
                          14177 	.globl	_lineX1
   C98E                   14178 _lineX1:	.blkb	120
                          14179 	.globl	_lineY1
   CA06                   14180 _lineY1:	.blkb	120
                          14181 	.globl	_blockOrientation
   CA7E                   14182 _blockOrientation:	.blkb	1
                          14183 	.globl	_blockX
   CA7F                   14184 _blockX:	.blkb	1
                          14185 	.globl	_blockY
   CA80                   14186 _blockY:	.blkb	1
                          14187 	.globl	_blockAnimation
   CA81                   14188 _blockAnimation:	.blkb	2
                          14189 	.globl	_nextBlockAnimation
   CA83                   14190 _nextBlockAnimation:	.blkb	2
                          14191 	.globl	_blockAnimationStep
   CA85                   14192 _blockAnimationStep:	.blkb	1
                          14193 	.globl	_blockAnimating
   CA86                   14194 _blockAnimating:	.blkb	1
                          14195 	.globl	_nextBlockX
   CA87                   14196 _nextBlockX:	.blkb	1
                          14197 	.globl	_nextBlockY
   CA88                   14198 _nextBlockY:	.blkb	1
                          14199 	.globl	_lastBlockDirection
   CA89                   14200 _lastBlockDirection:	.blkb	1
                          14201 	.globl	_blockYOfs
   CA8A                   14202 _blockYOfs:	.blkb	1
                          14203 	.globl	_level
   CA8B                   14204 _level:	.blkb	2
                          14205 	.globl	_levelHighscore
   CA8D                   14206 _levelHighscore:	.blkb	2
                          14207 	.globl	_gameState
   CA8F                   14208 _gameState:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$bloxorz$100      0043 GR  |   2 A$bloxorz$1005     03CB GR
  2 A$bloxorz$1011     03CE GR  |   2 A$bloxorz$1012     03D1 GR
  2 A$bloxorz$1013     03D4 GR  |   2 A$bloxorz$1014     03D7 GR
  2 A$bloxorz$1015     03DA GR  |   2 A$bloxorz$1016     03DD GR
  2 A$bloxorz$1022     03E0 GR  |   2 A$bloxorz$1023     03E2 GR
  2 A$bloxorz$1024     03E6 GR  |   2 A$bloxorz$1025     03E8 GR
  2 A$bloxorz$1026     03EB GR  |   2 A$bloxorz$1033     03ED GR
  2 A$bloxorz$1034     03F0 GR  |   2 A$bloxorz$1035     03F2 GR
  2 A$bloxorz$1036     03F5 GR  |   2 A$bloxorz$1037     03F7 GR
  2 A$bloxorz$1047     03F9 GR  |   2 A$bloxorz$1048     03FB GR
  2 A$bloxorz$1049     03FD GR  |   2 A$bloxorz$1050     03FF GR
  2 A$bloxorz$1051     0402 GR  |   2 A$bloxorz$1052     0404 GR
  2 A$bloxorz$1053     0406 GR  |   2 A$bloxorz$1054     0407 GR
  2 A$bloxorz$1055     0408 GR  |   2 A$bloxorz$1056     040A GR
  2 A$bloxorz$1057     040C GR  |   2 A$bloxorz$1058     040E GR
  2 A$bloxorz$1059     0410 GR  |   2 A$bloxorz$1060     0412 GR
  2 A$bloxorz$1061     0414 GR  |   2 A$bloxorz$1068     0416 GR
  2 A$bloxorz$107      0045 GR  |   2 A$bloxorz$1074     0418 GR
  2 A$bloxorz$1075     041B GR  |   2 A$bloxorz$1076     041D GR
  2 A$bloxorz$1077     041F GR  |   2 A$bloxorz$1078     0421 GR
  2 A$bloxorz$1079     0423 GR  |   2 A$bloxorz$1080     0425 GR
  2 A$bloxorz$1081     0427 GR  |   2 A$bloxorz$1082     0429 GR
  2 A$bloxorz$1083     042C GR  |   2 A$bloxorz$1084     042E GR
  2 A$bloxorz$1085     0430 GR  |   2 A$bloxorz$1092     0432 GR
  2 A$bloxorz$1093     0434 GR  |   2 A$bloxorz$1094     0436 GR
  2 A$bloxorz$1095     0438 GR  |   2 A$bloxorz$1096     043A GR
  2 A$bloxorz$1097     043C GR  |   2 A$bloxorz$1098     043E GR
  2 A$bloxorz$1099     0440 GR  |   2 A$bloxorz$1100     0442 GR
  2 A$bloxorz$1101     0444 GR  |   2 A$bloxorz$1102     0447 GR
  2 A$bloxorz$1103     0449 GR  |   2 A$bloxorz$1104     044B GR
  2 A$bloxorz$1105     044F GR  |   2 A$bloxorz$1106     0452 GR
  2 A$bloxorz$1109     0454 GR  |   2 A$bloxorz$1110     0456 GR
  2 A$bloxorz$1125     0458 GR  |   2 A$bloxorz$1126     045C GR
  2 A$bloxorz$1127     045E GR  |   2 A$bloxorz$113      0047 GR
  2 A$bloxorz$114      004A GR  |   2 A$bloxorz$1140     0460 GR
  2 A$bloxorz$1141     0462 GR  |   2 A$bloxorz$1143     0463 GR
  2 A$bloxorz$1146     0465 GR  |   2 A$bloxorz$1147     0467 GR
  2 A$bloxorz$1148     0469 GR  |   2 A$bloxorz$1149     046B GR
  2 A$bloxorz$115      004C GR  |   2 A$bloxorz$1150     046C GR
  2 A$bloxorz$1151     046E GR  |   2 A$bloxorz$1152     0470 GR
  2 A$bloxorz$1153     0472 GR  |   2 A$bloxorz$1154     0474 GR
  2 A$bloxorz$1155     0476 GR  |   2 A$bloxorz$1156     0478 GR
  2 A$bloxorz$1157     047A GR  |   2 A$bloxorz$1158     047C GR
  2 A$bloxorz$116      004E GR  |   2 A$bloxorz$1160     047F GR
  2 A$bloxorz$1161     0481 GR  |   2 A$bloxorz$1162     0485 GR
  2 A$bloxorz$1163     0487 GR  |   2 A$bloxorz$1169     048B GR
  2 A$bloxorz$117      0050 GR  |   2 A$bloxorz$1170     048D GR
  2 A$bloxorz$1171     048F GR  |   2 A$bloxorz$1172     0493 GR
  2 A$bloxorz$1173     0495 GR  |   2 A$bloxorz$1174     0499 GR
  2 A$bloxorz$1175     049B GR  |   2 A$bloxorz$118      0052 GR
  2 A$bloxorz$1181     049F GR  |   2 A$bloxorz$1182     04A1 GR
  2 A$bloxorz$1183     04A3 GR  |   2 A$bloxorz$1189     04A7 GR
  2 A$bloxorz$119      0054 GR  |   2 A$bloxorz$1190     04A9 GR
  2 A$bloxorz$1191     04AA GR  |   2 A$bloxorz$1197     04AC GR
  2 A$bloxorz$1198     04AF GR  |   2 A$bloxorz$120      0057 GR
  2 A$bloxorz$1207     04B1 GR  |   2 A$bloxorz$1208     04B2 GR
  2 A$bloxorz$1209     04B4 GR  |   2 A$bloxorz$121      0059 GR
  2 A$bloxorz$1210     04B6 GR  |   2 A$bloxorz$1211     04B8 GR
  2 A$bloxorz$1213     04B9 GR  |   2 A$bloxorz$1214     04BB GR
  2 A$bloxorz$122      005C GR  |   2 A$bloxorz$1226     04BF GR
  2 A$bloxorz$1227     04C1 GR  |   2 A$bloxorz$1228     04C3 GR
  2 A$bloxorz$1229     04C5 GR  |   2 A$bloxorz$123      005E GR
  2 A$bloxorz$1230     04C7 GR  |   2 A$bloxorz$1231     04C9 GR
  2 A$bloxorz$124      0060 GR  |   2 A$bloxorz$1243     04CD GR
  2 A$bloxorz$1244     04CF GR  |   2 A$bloxorz$1245     04D1 GR
  2 A$bloxorz$1246     04D2 GR  |   2 A$bloxorz$1248     04D4 GR
  2 A$bloxorz$1249     04D6 GR  |   2 A$bloxorz$1261     04DA GR
  2 A$bloxorz$1262     04DC GR  |   2 A$bloxorz$1263     04DE GR
  2 A$bloxorz$1264     04E0 GR  |   2 A$bloxorz$1265     04E2 GR
  2 A$bloxorz$1266     04E4 GR  |   2 A$bloxorz$1272     04E8 GR
  2 A$bloxorz$1273     04EA GR  |   2 A$bloxorz$1274     04EB GR
  2 A$bloxorz$1280     04EE GR  |   2 A$bloxorz$1281     04F0 GR
  2 A$bloxorz$1283     04F2 GR  |   2 A$bloxorz$1284     04F4 GR
  2 A$bloxorz$1285     04F6 GR  |   2 A$bloxorz$1286     04F8 GR
  2 A$bloxorz$1287     04FA GR  |   2 A$bloxorz$1297     04FE GR
  2 A$bloxorz$1298     0500 GR  |   2 A$bloxorz$1304     0502 GR
  2 A$bloxorz$1305     0504 GR  |   2 A$bloxorz$131      0062 GR
  2 A$bloxorz$1314     0506 GR  |   2 A$bloxorz$1315     0508 GR
  2 A$bloxorz$1316     050A GR  |   2 A$bloxorz$132      0064 GR
  2 A$bloxorz$1323     050E GR  |   2 A$bloxorz$1324     0510 GR
  2 A$bloxorz$1325     0512 GR  |   2 A$bloxorz$133      0066 GR
  2 A$bloxorz$1332     0514 GR  |   2 A$bloxorz$1333     0516 GR
  2 A$bloxorz$1334     0518 GR  |   2 A$bloxorz$1335     051A GR
  2 A$bloxorz$1336     051C GR  |   2 A$bloxorz$1337     051E GR
  2 A$bloxorz$1338     0520 GR  |   2 A$bloxorz$134      0068 GR
  2 A$bloxorz$1340     0524 GR  |   2 A$bloxorz$1341     0526 GR
  2 A$bloxorz$1342     0528 GR  |   2 A$bloxorz$1343     052A GR
  2 A$bloxorz$1344     052C GR  |   2 A$bloxorz$1345     0530 GR
  2 A$bloxorz$1346     0532 GR  |   2 A$bloxorz$1348     0534 GR
  2 A$bloxorz$1349     0536 GR  |   2 A$bloxorz$135      006A GR
  2 A$bloxorz$1350     0538 GR  |   2 A$bloxorz$1353     053A GR
  2 A$bloxorz$1354     053C GR  |   2 A$bloxorz$1355     053F GR
  2 A$bloxorz$136      006C GR  |   2 A$bloxorz$1361     0541 GR
  2 A$bloxorz$1362     0543 GR  |   2 A$bloxorz$1368     0546 GR
  2 A$bloxorz$1369     0548 GR  |   2 A$bloxorz$137      006E GR
  2 A$bloxorz$1375     054B GR  |   2 A$bloxorz$1376     054E GR
  2 A$bloxorz$1377     0550 GR  |   2 A$bloxorz$1378     0554 GR
  2 A$bloxorz$1379     0558 GR  |   2 A$bloxorz$138      0070 GR
  2 A$bloxorz$1380     055A GR  |   2 A$bloxorz$1387     055E GR
  2 A$bloxorz$1388     0561 GR  |   2 A$bloxorz$1389     0565 GR
  2 A$bloxorz$139      0072 GR  |   2 A$bloxorz$1390     0567 GR
  2 A$bloxorz$1391     0569 GR  |   2 A$bloxorz$140      0074 GR
  2 A$bloxorz$1404     056C GR  |   2 A$bloxorz$1405     056F GR
  2 A$bloxorz$1406     0572 GR  |   2 A$bloxorz$1407     0575 GR
  2 A$bloxorz$1408     0578 GR  |   2 A$bloxorz$1409     057B GR
  2 A$bloxorz$141      0077 GR  |   2 A$bloxorz$1415     057E GR
  2 A$bloxorz$1416     0580 GR  |   2 A$bloxorz$1417     0584 GR
  2 A$bloxorz$1418     0586 GR  |   2 A$bloxorz$1419     0589 GR
  2 A$bloxorz$142      0079 GR  |   2 A$bloxorz$1426     058B GR
  2 A$bloxorz$1427     058E GR  |   2 A$bloxorz$1428     0590 GR
  2 A$bloxorz$1429     0593 GR  |   2 A$bloxorz$143      007B GR
  2 A$bloxorz$1430     0596 GR  |   2 A$bloxorz$144      007F GR
  2 A$bloxorz$1440     0598 GR  |   2 A$bloxorz$1441     059A GR
  2 A$bloxorz$1442     059C GR  |   2 A$bloxorz$1443     059F GR
  2 A$bloxorz$1444     05A2 GR  |   2 A$bloxorz$1445     05A4 GR
  2 A$bloxorz$1446     05A6 GR  |   2 A$bloxorz$1447     05A7 GR
  2 A$bloxorz$1448     05A8 GR  |   2 A$bloxorz$1449     05AA GR
  2 A$bloxorz$145      0082 GR  |   2 A$bloxorz$1450     05AC GR
  2 A$bloxorz$1451     05AE GR  |   2 A$bloxorz$1452     05B0 GR
  2 A$bloxorz$1453     05B2 GR  |   2 A$bloxorz$1454     05B4 GR
  2 A$bloxorz$1461     05B6 GR  |   2 A$bloxorz$1467     05B8 GR
  2 A$bloxorz$1468     05BB GR  |   2 A$bloxorz$1469     05BD GR
  2 A$bloxorz$1470     05BF GR  |   2 A$bloxorz$1471     05C1 GR
  2 A$bloxorz$1472     05C3 GR  |   2 A$bloxorz$1473     05C5 GR
  2 A$bloxorz$1474     05C7 GR  |   2 A$bloxorz$1475     05C9 GR
  2 A$bloxorz$1476     05CC GR  |   2 A$bloxorz$1477     05CE GR
  2 A$bloxorz$1478     05D0 GR  |   2 A$bloxorz$1485     05D3 GR
  2 A$bloxorz$1486     05D6 GR  |   2 A$bloxorz$1487     05D8 GR
  2 A$bloxorz$1488     05DB GR  |   2 A$bloxorz$1489     05DD GR
  2 A$bloxorz$1490     05DF GR  |   2 A$bloxorz$1491     05E1 GR
  2 A$bloxorz$1492     05E3 GR  |   2 A$bloxorz$1493     05E5 GR
  2 A$bloxorz$1494     05E7 GR  |   2 A$bloxorz$1495     05EA GR
  2 A$bloxorz$1496     05EC GR  |   2 A$bloxorz$1497     05EE GR
  2 A$bloxorz$1503     05F2 GR  |   2 A$bloxorz$1509     05F5 GR
  2 A$bloxorz$1510     05F8 GR  |   2 A$bloxorz$1511     05FB GR
  2 A$bloxorz$1512     05FE GR  |   2 A$bloxorz$1513     0601 GR
  2 A$bloxorz$1514     0604 GR  |   2 A$bloxorz$1520     0607 GR
  2 A$bloxorz$1521     0609 GR  |   2 A$bloxorz$1522     060D GR
  2 A$bloxorz$1523     060F GR  |   2 A$bloxorz$1524     0612 GR
  2 A$bloxorz$153      0084 GR  |   2 A$bloxorz$1531     0614 GR
  2 A$bloxorz$1532     0617 GR  |   2 A$bloxorz$1533     0619 GR
  2 A$bloxorz$1534     061C GR  |   2 A$bloxorz$1535     061E GR
  2 A$bloxorz$154      0086 GR  |   2 A$bloxorz$1545     0620 GR
  2 A$bloxorz$1546     0622 GR  |   2 A$bloxorz$1547     0624 GR
  2 A$bloxorz$1548     0626 GR  |   2 A$bloxorz$1549     0629 GR
  2 A$bloxorz$155      0088 GR  |   2 A$bloxorz$1550     062B GR
  2 A$bloxorz$1551     062D GR  |   2 A$bloxorz$1552     062E GR
  2 A$bloxorz$1553     062F GR  |   2 A$bloxorz$1554     0631 GR
  2 A$bloxorz$1555     0633 GR  |   2 A$bloxorz$1556     0635 GR
  2 A$bloxorz$1557     0637 GR  |   2 A$bloxorz$1558     0639 GR
  2 A$bloxorz$1559     063B GR  |   2 A$bloxorz$156      008A GR
  2 A$bloxorz$1566     063D GR  |   2 A$bloxorz$157      008C GR
  2 A$bloxorz$1572     063F GR  |   2 A$bloxorz$1573     0642 GR
  2 A$bloxorz$1574     0644 GR  |   2 A$bloxorz$1575     0646 GR
  2 A$bloxorz$1576     0648 GR  |   2 A$bloxorz$1577     064A GR
  2 A$bloxorz$1578     064C GR  |   2 A$bloxorz$1579     064F GR
  2 A$bloxorz$158      008E GR  |   2 A$bloxorz$1580     0651 GR
  2 A$bloxorz$1581     0654 GR  |   2 A$bloxorz$1582     0656 GR
  2 A$bloxorz$1583     0658 GR  |   2 A$bloxorz$159      008F GR
  2 A$bloxorz$1590     065A GR  |   2 A$bloxorz$1591     065C GR
  2 A$bloxorz$1592     065E GR  |   2 A$bloxorz$1593     0660 GR
  2 A$bloxorz$1594     0662 GR  |   2 A$bloxorz$1595     0664 GR
  2 A$bloxorz$1596     0666 GR  |   2 A$bloxorz$1597     0668 GR
  2 A$bloxorz$1598     066A GR  |   2 A$bloxorz$1599     066C GR
  2 A$bloxorz$160      0092 GR  |   2 A$bloxorz$1600     066F GR
  2 A$bloxorz$1601     0671 GR  |   2 A$bloxorz$1602     0673 GR
  2 A$bloxorz$1603     0677 GR  |   2 A$bloxorz$1604     067A GR
  2 A$bloxorz$161      0094 GR  |   2 A$bloxorz$1611     067C GR
  2 A$bloxorz$1612     067E GR  |   2 A$bloxorz$1613     0680 GR
  2 A$bloxorz$1614     0684 GR  |   2 A$bloxorz$162      0095 GR
  2 A$bloxorz$1620     0688 GR  |   2 A$bloxorz$1621     068B GR
  2 A$bloxorz$1627     068E GR  |   2 A$bloxorz$1628     0691 GR
  2 A$bloxorz$163      0096 GR  |   2 A$bloxorz$1634     0694 GR
  2 A$bloxorz$1635     0697 GR  |   2 A$bloxorz$1636     0699 GR
  2 A$bloxorz$164      0097 GR  |   2 A$bloxorz$1642     069C GR
  2 A$bloxorz$1643     069F GR  |   2 A$bloxorz$1649     06A2 GR
  2 A$bloxorz$165      0099 GR  |   2 A$bloxorz$1650     06A4 GR
  2 A$bloxorz$1662     06A7 GR  |   2 A$bloxorz$1669     06AA GR
  2 A$bloxorz$167      009A GR  |   2 A$bloxorz$1670     06AC GR
  2 A$bloxorz$1671     06AE GR  |   2 A$bloxorz$1672     06B2 GR
  2 A$bloxorz$1678     06B6 GR  |   2 A$bloxorz$1679     06B9 GR
  2 A$bloxorz$168      009C GR  |   2 A$bloxorz$1685     06BC GR
  2 A$bloxorz$1686     06BF GR  |   2 A$bloxorz$1692     06C2 GR
  2 A$bloxorz$1693     06C5 GR  |   2 A$bloxorz$1694     06C6 GR
  2 A$bloxorz$1700     06C9 GR  |   2 A$bloxorz$1701     06CC GR
  2 A$bloxorz$1707     06CF GR  |   2 A$bloxorz$171      009D GR
  2 A$bloxorz$1719     06D2 GR  |   2 A$bloxorz$172      009F GR
  2 A$bloxorz$1726     06D5 GR  |   2 A$bloxorz$1727     06D7 GR
  2 A$bloxorz$1728     06D9 GR  |   2 A$bloxorz$1729     06DB GR
  2 A$bloxorz$173      00A1 GR  |   2 A$bloxorz$1735     06DF GR
  2 A$bloxorz$1736     06E2 GR  |   2 A$bloxorz$1742     06E5 GR
  2 A$bloxorz$1748     06E8 GR  |   2 A$bloxorz$1749     06EB GR
  2 A$bloxorz$1750     06EC GR  |   2 A$bloxorz$1756     06EF GR
  2 A$bloxorz$1757     06F2 GR  |   2 A$bloxorz$1769     06F5 GR
  2 A$bloxorz$1776     06F8 GR  |   2 A$bloxorz$1777     06FB GR
  2 A$bloxorz$1783     06FE GR  |   2 A$bloxorz$1784     0701 GR
  2 A$bloxorz$1790     0704 GR  |   2 A$bloxorz$1791     0707 GR
  2 A$bloxorz$1797     070A GR  |   2 A$bloxorz$1798     070D GR
  2 A$bloxorz$1799     070F GR  |   2 A$bloxorz$1805     0712 GR
  2 A$bloxorz$1811     0715 GR  |   2 A$bloxorz$1818     0717 GR
  2 A$bloxorz$1819     071A GR  |   2 A$bloxorz$182      00A3 GR
  2 A$bloxorz$1825     071D GR  |   2 A$bloxorz$183      00A5 GR
  2 A$bloxorz$1831     0720 GR  |   2 A$bloxorz$1832     0723 GR
  2 A$bloxorz$1838     0726 GR  |   2 A$bloxorz$1839     0729 GR
  2 A$bloxorz$184      00A7 GR  |   2 A$bloxorz$1840     072A GR
  2 A$bloxorz$1846     072D GR  |   2 A$bloxorz$185      00A8 GR
  2 A$bloxorz$1853     0730 GR  |   2 A$bloxorz$1854     0733 GR
  2 A$bloxorz$186      00AA GR  |   2 A$bloxorz$1860     0736 GR
  2 A$bloxorz$1861     0739 GR  |   2 A$bloxorz$1867     073C GR
  2 A$bloxorz$1868     073F GR  |   2 A$bloxorz$187      00AC GR
  2 A$bloxorz$1874     0742 GR  |   2 A$bloxorz$1875     0745 GR
  2 A$bloxorz$1876     0746 GR  |   2 A$bloxorz$188      00AE GR
  2 A$bloxorz$1882     0749 GR  |   2 A$bloxorz$1883     074B GR
  2 A$bloxorz$1889     074E GR  |   2 A$bloxorz$189      00B0 GR
  2 A$bloxorz$1891     0751 GR  |   2 A$bloxorz$1892     0753 GR
  2 A$bloxorz$1893     0757 GR  |   2 A$bloxorz$1894     0759 GR
  2 A$bloxorz$190      00B1 GR  |   2 A$bloxorz$1900     075D GR
  2 A$bloxorz$1901     0760 GR  |   2 A$bloxorz$1907     0763 GR
  2 A$bloxorz$1908     0766 GR  |   2 A$bloxorz$191      00B3 GR
  2 A$bloxorz$1914     0769 GR  |   2 A$bloxorz$1915     076C GR
  2 A$bloxorz$192      00B5 GR  |   2 A$bloxorz$1921     076F GR
  2 A$bloxorz$1922     0772 GR  |   2 A$bloxorz$1923     0773 GR
  2 A$bloxorz$1929     0776 GR  |   2 A$bloxorz$193      00B7 GR
  2 A$bloxorz$1931     0779 GR  |   2 A$bloxorz$1932     077B GR
  2 A$bloxorz$1933     077F GR  |   2 A$bloxorz$1934     0781 GR
  2 A$bloxorz$194      00B9 GR  |   2 A$bloxorz$1940     0785 GR
  2 A$bloxorz$1941     0788 GR  |   2 A$bloxorz$1947     078B GR
  2 A$bloxorz$1948     078E GR  |   2 A$bloxorz$195      00BB GR
  2 A$bloxorz$1954     0791 GR  |   2 A$bloxorz$1955     0794 GR
  2 A$bloxorz$196      00BD GR  |   2 A$bloxorz$1961     0797 GR
  2 A$bloxorz$1962     079A GR  |   2 A$bloxorz$1963     079C GR
  2 A$bloxorz$1969     079F GR  |   2 A$bloxorz$197      00BF GR
  2 A$bloxorz$1970     07A1 GR  |   2 A$bloxorz$1976     07A4 GR
  2 A$bloxorz$1978     07A7 GR  |   2 A$bloxorz$1979     07A9 GR
  2 A$bloxorz$198      00C1 GR  |   2 A$bloxorz$1980     07AB GR
  2 A$bloxorz$1981     07AD GR  |   2 A$bloxorz$1987     07B1 GR
  2 A$bloxorz$1988     07B4 GR  |   2 A$bloxorz$1994     07B7 GR
  2 A$bloxorz$1995     07BA GR  |   2 A$bloxorz$2001     07BD GR
  2 A$bloxorz$2002     07C0 GR  |   2 A$bloxorz$2008     07C3 GR
  2 A$bloxorz$2009     07C6 GR  |   2 A$bloxorz$201      00C3 GR
  2 A$bloxorz$2010     07C7 GR  |   2 A$bloxorz$2016     07CA GR
  2 A$bloxorz$2022     07CD GR  |   2 A$bloxorz$2029     07D0 GR
  2 A$bloxorz$2030     07D3 GR  |   2 A$bloxorz$2036     07D6 GR
  2 A$bloxorz$2037     07D9 GR  |   2 A$bloxorz$2043     07DC GR
  2 A$bloxorz$2044     07DF GR  |   2 A$bloxorz$2045     07E0 GR
  2 A$bloxorz$2051     07E3 GR  |   2 A$bloxorz$2052     07E6 GR
  2 A$bloxorz$2058     07E9 GR  |   2 A$bloxorz$2065     07EC GR
  2 A$bloxorz$2066     07EF GR  |   2 A$bloxorz$2072     07F2 GR
  2 A$bloxorz$2073     07F5 GR  |   2 A$bloxorz$2079     07F8 GR
  2 A$bloxorz$2080     07FB GR  |   2 A$bloxorz$2081     07FC GR
  2 A$bloxorz$2087     07FF GR  |   2 A$bloxorz$2088     0802 GR
  2 A$bloxorz$2094     0805 GR  |   2 A$bloxorz$2095     0807 GR
  2 A$bloxorz$210      00C5 GR  |   2 A$bloxorz$2101     080A GR
  2 A$bloxorz$2108     080D GR  |   2 A$bloxorz$2109     0810 GR
  2 A$bloxorz$211      00C7 GR  |   2 A$bloxorz$2115     0813 GR
  2 A$bloxorz$2116     0816 GR  |   2 A$bloxorz$212      00C9 GR
  2 A$bloxorz$2122     0819 GR  |   2 A$bloxorz$2123     081C GR
  2 A$bloxorz$2124     081E GR  |   2 A$bloxorz$213      00CB GR
  2 A$bloxorz$2130     0821 GR  |   2 A$bloxorz$2131     0824 GR
  2 A$bloxorz$2137     0827 GR  |   2 A$bloxorz$214      00CC GR
  2 A$bloxorz$2143     082A GR  |   2 A$bloxorz$215      00CE GR
  2 A$bloxorz$2151     082D GR  |   2 A$bloxorz$2152     082F GR
  2 A$bloxorz$2158     0832 GR  |   2 A$bloxorz$216      00D0 GR
  2 A$bloxorz$2164     0835 GR  |   2 A$bloxorz$2165     0838 GR
  2 A$bloxorz$217      00D2 GR  |   2 A$bloxorz$2174     083B GR
  2 A$bloxorz$2175     083D GR  |   2 A$bloxorz$218      00D4 GR
  2 A$bloxorz$2181     0840 GR  |   2 A$bloxorz$2182     0843 GR
  2 A$bloxorz$2183     0846 GR  |   2 A$bloxorz$2186     0847 GR
  2 A$bloxorz$2187     0849 GR  |   2 A$bloxorz$219      00D6 GR
  2 A$bloxorz$220      00D8 GR  |   2 A$bloxorz$2202     084C GR
  2 A$bloxorz$2203     084F GR  |   2 A$bloxorz$2204     0852 GR
  2 A$bloxorz$2205     0854 GR  |   2 A$bloxorz$221      00DA GR
  2 A$bloxorz$2218     0857 GR  |   2 A$bloxorz$2219     085A GR
  2 A$bloxorz$222      00DC GR  |   2 A$bloxorz$2220     085C GR
  2 A$bloxorz$2221     085E GR  |   2 A$bloxorz$2222     0860 GR
  2 A$bloxorz$2223     0862 GR  |   2 A$bloxorz$2224     0864 GR
  2 A$bloxorz$2225     0865 GR  |   2 A$bloxorz$2226     0866 GR
  2 A$bloxorz$2227     0867 GR  |   2 A$bloxorz$2228     0869 GR
  2 A$bloxorz$2229     086B GR  |   2 A$bloxorz$223      00DD GR
  2 A$bloxorz$2230     086D GR  |   2 A$bloxorz$2231     086F GR
  2 A$bloxorz$2232     0872 GR  |   2 A$bloxorz$2233     0874 GR
  2 A$bloxorz$2234     0877 GR  |   2 A$bloxorz$2235     087B GR
  2 A$bloxorz$2236     087D GR  |   2 A$bloxorz$2237     087F GR
  2 A$bloxorz$2238     0881 GR  |   2 A$bloxorz$2239     0884 GR
  2 A$bloxorz$224      00DF GR  |   2 A$bloxorz$2240     0886 GR
  2 A$bloxorz$2241     0887 GR  |   2 A$bloxorz$2242     0889 GR
  2 A$bloxorz$225      00E1 GR  |   2 A$bloxorz$2252     088C GR
  2 A$bloxorz$2253     088E GR  |   2 A$bloxorz$226      00E3 GR
  2 A$bloxorz$2262     0890 GR  |   2 A$bloxorz$2263     0892 GR
  2 A$bloxorz$2264     0894 GR  |   2 A$bloxorz$2265     0898 GR
  2 A$bloxorz$2266     089A GR  |   2 A$bloxorz$2267     089E GR
  2 A$bloxorz$2268     08A0 GR  |   2 A$bloxorz$227      00E5 GR
  2 A$bloxorz$2274     08A4 GR  |   2 A$bloxorz$2275     08A6 GR
  2 A$bloxorz$2276     08A8 GR  |   2 A$bloxorz$2277     08AC GR
  2 A$bloxorz$2278     08AE GR  |   2 A$bloxorz$2279     08B2 GR
  2 A$bloxorz$2280     08B4 GR  |   2 A$bloxorz$2286     08B8 GR
  2 A$bloxorz$2287     08BA GR  |   2 A$bloxorz$2288     08BC GR
  2 A$bloxorz$2294     08C0 GR  |   2 A$bloxorz$2295     08C2 GR
  2 A$bloxorz$2296     08C3 GR  |   2 A$bloxorz$230      00E6 GR
  2 A$bloxorz$2302     08C5 GR  |   2 A$bloxorz$2303     08C8 GR
  2 A$bloxorz$231      00E8 GR  |   2 A$bloxorz$2312     08CA GR
  2 A$bloxorz$2313     08CB GR  |   2 A$bloxorz$2314     08CD GR
  2 A$bloxorz$2315     08CF GR  |   2 A$bloxorz$2316     08D1 GR
  2 A$bloxorz$2317     08D3 GR  |   2 A$bloxorz$2318     08D5 GR
  2 A$bloxorz$2319     08D6 GR  |   2 A$bloxorz$232      00EA GR
  2 A$bloxorz$2320     08D8 GR  |   2 A$bloxorz$2321     08DA GR
  2 A$bloxorz$2322     08DC GR  |   2 A$bloxorz$2323     08DE GR
  2 A$bloxorz$2324     08E0 GR  |   2 A$bloxorz$2325     08E2 GR
  2 A$bloxorz$2337     08E6 GR  |   2 A$bloxorz$2338     08E8 GR
  2 A$bloxorz$2339     08E9 GR  |   2 A$bloxorz$2340     08EB GR
  2 A$bloxorz$2341     08ED GR  |   2 A$bloxorz$2353     08F1 GR
  2 A$bloxorz$2354     08F3 GR  |   2 A$bloxorz$2355     08F5 GR
  2 A$bloxorz$2356     08F7 GR  |   2 A$bloxorz$2357     08F8 GR
  2 A$bloxorz$2358     08FA GR  |   2 A$bloxorz$2360     08FC GR
  2 A$bloxorz$2361     08FE GR  |   2 A$bloxorz$2373     0902 GR
  2 A$bloxorz$2374     0904 GR  |   2 A$bloxorz$2375     0905 GR
  2 A$bloxorz$2376     0907 GR  |   2 A$bloxorz$2377     0909 GR
  2 A$bloxorz$238      00EC GR  |   2 A$bloxorz$2383     090D GR
  2 A$bloxorz$2384     090F GR  |   2 A$bloxorz$2385     0910 GR
  2 A$bloxorz$239      00EF GR  |   2 A$bloxorz$2391     0913 GR
  2 A$bloxorz$2392     0915 GR  |   2 A$bloxorz$2394     0917 GR
  2 A$bloxorz$2395     0919 GR  |   2 A$bloxorz$2396     091B GR
  2 A$bloxorz$2397     091E GR  |   2 A$bloxorz$2398     0920 GR
  2 A$bloxorz$2399     0923 GR  |   2 A$bloxorz$2400     0927 GR
  2 A$bloxorz$2402     092B GR  |   2 A$bloxorz$2403     092D GR
  2 A$bloxorz$2412     092F GR  |   2 A$bloxorz$2413     0931 GR
  2 A$bloxorz$2419     0933 GR  |   2 A$bloxorz$2420     0935 GR
  2 A$bloxorz$2427     0937 GR  |   2 A$bloxorz$2428     0939 GR
  2 A$bloxorz$2434     093D GR  |   2 A$bloxorz$2435     093F GR
  2 A$bloxorz$2441     0942 GR  |   2 A$bloxorz$2442     0944 GR
  2 A$bloxorz$2443     0947 GR  |   2 A$bloxorz$2450     094A GR
  2 A$bloxorz$2451     094C GR  |   2 A$bloxorz$2452     094E GR
  2 A$bloxorz$2459     0950 GR  |   2 A$bloxorz$2460     0952 GR
  2 A$bloxorz$2461     0954 GR  |   2 A$bloxorz$2463     0957 GR
  2 A$bloxorz$2464     0959 GR  |   2 A$bloxorz$2465     095B GR
  2 A$bloxorz$2475     095D GR  |   2 A$bloxorz$2476     0960 GR
  2 A$bloxorz$248      00F1 GR  |   2 A$bloxorz$2485     0962 GR
  2 A$bloxorz$2486     0964 GR  |   2 A$bloxorz$2487     0966 GR
  2 A$bloxorz$2489     0967 GR  |   2 A$bloxorz$249      00F2 GR
  2 A$bloxorz$2492     0969 GR  |   2 A$bloxorz$2493     096C GR
  2 A$bloxorz$2494     096E GR  |   2 A$bloxorz$2495     096F GR
  2 A$bloxorz$2496     0971 GR  |   2 A$bloxorz$2497     0974 GR
  2 A$bloxorz$2498     0976 GR  |   2 A$bloxorz$2499     0979 GR
  2 A$bloxorz$250      00F4 GR  |   2 A$bloxorz$2500     097C GR
  2 A$bloxorz$251      00F6 GR  |   2 A$bloxorz$2512     0980 GR
  2 A$bloxorz$2513     0982 GR  |   2 A$bloxorz$2514     0983 GR
  2 A$bloxorz$2515     0985 GR  |   2 A$bloxorz$2516     0987 GR
  2 A$bloxorz$2517     0989 GR  |   2 A$bloxorz$2518     098A GR
  2 A$bloxorz$2519     098B GR  |   2 A$bloxorz$252      00F8 GR
  2 A$bloxorz$2520     098C GR  |   2 A$bloxorz$2521     098E GR
  2 A$bloxorz$2522     0991 GR  |   2 A$bloxorz$2523     0993 GR
  2 A$bloxorz$253      00F9 GR  |   2 A$bloxorz$2535     0997 GR
  2 A$bloxorz$2536     099A GR  |   2 A$bloxorz$254      00FB GR
  2 A$bloxorz$2548     099E GR  |   2 A$bloxorz$2549     09A0 GR
  2 A$bloxorz$255      00FD GR  |   2 A$bloxorz$2550     09A1 GR
  2 A$bloxorz$2551     09A2 GR  |   2 A$bloxorz$2552     09A3 GR
  2 A$bloxorz$2553     09A5 GR  |   2 A$bloxorz$2554     09A7 GR
  2 A$bloxorz$2555     09A9 GR  |   2 A$bloxorz$256      00FF GR
  2 A$bloxorz$2561     09AD GR  |   2 A$bloxorz$2562     09AF GR
  2 A$bloxorz$2563     09B0 GR  |   2 A$bloxorz$257      0101 GR
  2 A$bloxorz$2575     09B2 GR  |   2 A$bloxorz$2576     09B3 GR
  2 A$bloxorz$2577     09B5 GR  |   2 A$bloxorz$2578     09B8 GR
  2 A$bloxorz$2579     09BA GR  |   2 A$bloxorz$258      0103 GR
  2 A$bloxorz$2580     09BD GR  |   2 A$bloxorz$2581     09C0 GR
  2 A$bloxorz$2582     09C3 GR  |   2 A$bloxorz$2583     09C7 GR
  2 A$bloxorz$2584     09CA GR  |   2 A$bloxorz$2585     09CC GR
  2 A$bloxorz$259      0104 GR  |   2 A$bloxorz$2597     09CF GR
  2 A$bloxorz$2598     09D2 GR  |   2 A$bloxorz$2599     09D4 GR
  2 A$bloxorz$260      0106 GR  |   2 A$bloxorz$2600     09D7 GR
  2 A$bloxorz$2601     09D9 GR  |   2 A$bloxorz$2602     09DC GR
  2 A$bloxorz$261      0108 GR  |   2 A$bloxorz$2614     09E0 GR
  2 A$bloxorz$2615     09E3 GR  |   2 A$bloxorz$2616     09E5 GR
  2 A$bloxorz$262      010A GR  |   2 A$bloxorz$2628     09E9 GR
  2 A$bloxorz$2629     09EB GR  |   2 A$bloxorz$263      010C GR
  2 A$bloxorz$2630     09ED GR  |   2 A$bloxorz$2631     09EF GR
  2 A$bloxorz$2637     09F3 GR  |   2 A$bloxorz$2638     09F5 GR
  2 A$bloxorz$2639     09F6 GR  |   2 A$bloxorz$264      010E GR
  2 A$bloxorz$2645     09F9 GR  |   2 A$bloxorz$2646     09FB GR
  2 A$bloxorz$265      0110 GR  |   2 A$bloxorz$2652     09FE GR
  2 A$bloxorz$2653     0A00 GR  |   2 A$bloxorz$2654     0A03 GR
  2 A$bloxorz$2655     0A05 GR  |   2 A$bloxorz$2657     0A08 GR
  2 A$bloxorz$2658     0A0A GR  |   2 A$bloxorz$2659     0A0C GR
  2 A$bloxorz$266      0112 GR  |   2 A$bloxorz$2660     0A0E GR
  2 A$bloxorz$2661     0A11 GR  |   2 A$bloxorz$2662     0A14 GR
  2 A$bloxorz$2663     0A17 GR  |   2 A$bloxorz$2664     0A1A GR
  2 A$bloxorz$2665     0A1C GR  |   2 A$bloxorz$2666     0A1E GR
  2 A$bloxorz$2667     0A22 GR  |   2 A$bloxorz$2668     0A25 GR
  2 A$bloxorz$267      0114 GR  |   2 A$bloxorz$2671     0A27 GR
  2 A$bloxorz$2672     0A29 GR  |   2 A$bloxorz$2678     0A2B GR
  2 A$bloxorz$2687     0A2E GR  |   2 A$bloxorz$2693     0A31 GR
  2 A$bloxorz$2694     0A33 GR  |   2 A$bloxorz$2697     0A35 GR
  2 A$bloxorz$2698     0A37 GR  |   2 A$bloxorz$2707     0A3A GR
  2 A$bloxorz$2708     0A3C GR  |   2 A$bloxorz$2711     0A3E GR
  2 A$bloxorz$2712     0A40 GR  |   2 A$bloxorz$2713     0A42 GR
  2 A$bloxorz$2719     0A45 GR  |   2 A$bloxorz$2720     0A48 GR
  2 A$bloxorz$2738     0A4A GR  |   2 A$bloxorz$2739     0A4B GR
  2 A$bloxorz$2740     0A4D GR  |   2 A$bloxorz$2741     0A4F GR
  2 A$bloxorz$2742     0A52 GR  |   2 A$bloxorz$2743     0A53 GR
  2 A$bloxorz$2744     0A54 GR  |   2 A$bloxorz$2745     0A55 GR
  2 A$bloxorz$2746     0A57 GR  |   2 A$bloxorz$2747     0A59 GR
  2 A$bloxorz$2748     0A5B GR  |   2 A$bloxorz$2749     0A5D GR
  2 A$bloxorz$2750     0A5F GR  |   2 A$bloxorz$2751     0A61 GR
  2 A$bloxorz$2752     0A63 GR  |   2 A$bloxorz$2753     0A65 GR
  2 A$bloxorz$2754     0A66 GR  |   2 A$bloxorz$2755     0A68 GR
  2 A$bloxorz$2756     0A6B GR  |   2 A$bloxorz$2757     0A6D GR
  2 A$bloxorz$2758     0A6E GR  |   2 A$bloxorz$2759     0A70 GR
  2 A$bloxorz$2760     0A72 GR  |   2 A$bloxorz$2761     0A74 GR
  2 A$bloxorz$2762     0A76 GR  |   2 A$bloxorz$2763     0A78 GR
  2 A$bloxorz$2766     0A7A GR  |   2 A$bloxorz$2767     0A7C GR
  2 A$bloxorz$2768     0A7E GR  |   2 A$bloxorz$2774     0A81 GR
  2 A$bloxorz$2775     0A84 GR  |   2 A$bloxorz$2776     0A85 GR
  2 A$bloxorz$2777     0A87 GR  |   2 A$bloxorz$2778     0A88 GR
  2 A$bloxorz$2779     0A89 GR  |   2 A$bloxorz$2780     0A8C GR
  2 A$bloxorz$2781     0A8E GR  |   2 A$bloxorz$2785     0A90 GR
  2 A$bloxorz$279      0118 GR  |   2 A$bloxorz$2790     0A92 GR
  2 A$bloxorz$2799     0A95 GR  |   2 A$bloxorz$280      011A GR
  2 A$bloxorz$2800     0A98 GR  |   2 A$bloxorz$2806     0A9A GR
  2 A$bloxorz$2807     0A9D GR  |   2 A$bloxorz$2808     0AA0 GR
  2 A$bloxorz$2809     0AA2 GR  |   2 A$bloxorz$281      011B GR
  2 A$bloxorz$2816     0AA6 GR  |   2 A$bloxorz$2817     0AA9 GR
  2 A$bloxorz$282      011D GR  |   2 A$bloxorz$2823     0AAD GR
  2 A$bloxorz$2824     0AB0 GR  |   2 A$bloxorz$2825     0AB2 GR
  2 A$bloxorz$2826     0AB3 GR  |   2 A$bloxorz$2827     0AB5 GR
  2 A$bloxorz$2828     0AB8 GR  |   2 A$bloxorz$2829     0AB9 GR
  2 A$bloxorz$283      011F GR  |   2 A$bloxorz$2830     0ABB GR
  2 A$bloxorz$2831     0ABD GR  |   2 A$bloxorz$2832     0ABF GR
  2 A$bloxorz$2838     0AC1 GR  |   2 A$bloxorz$2839     0AC3 GR
  2 A$bloxorz$284      0121 GR  |   2 A$bloxorz$2840     0AC6 GR
  2 A$bloxorz$2841     0AC8 GR  |   2 A$bloxorz$2847     0ACA GR
  2 A$bloxorz$2848     0ACC GR  |   2 A$bloxorz$2849     0AD0 GR
  2 A$bloxorz$285      0123 GR  |   2 A$bloxorz$2850     0AD2 GR
  2 A$bloxorz$2851     0AD6 GR  |   2 A$bloxorz$2852     0AD8 GR
  2 A$bloxorz$2853     0AD9 GR  |   2 A$bloxorz$2854     0ADC GR
  2 A$bloxorz$2855     0ADE GR  |   2 A$bloxorz$2856     0ADF GR
  2 A$bloxorz$2857     0AE0 GR  |   2 A$bloxorz$2858     0AE1 GR
  2 A$bloxorz$2859     0AE3 GR  |   2 A$bloxorz$286      0125 GR
  2 A$bloxorz$2866     0AE5 GR  |   2 A$bloxorz$287      0127 GR
  2 A$bloxorz$2872     0AE7 GR  |   2 A$bloxorz$2873     0AE9 GR
  2 A$bloxorz$2874     0AED GR  |   2 A$bloxorz$2875     0AEF GR
  2 A$bloxorz$2876     0AF3 GR  |   2 A$bloxorz$2877     0AF5 GR
  2 A$bloxorz$2878     0AF6 GR  |   2 A$bloxorz$2879     0AF9 GR
  2 A$bloxorz$2880     0AFB GR  |   2 A$bloxorz$2881     0AFC GR
  2 A$bloxorz$2882     0AFD GR  |   2 A$bloxorz$2883     0AFE GR
  2 A$bloxorz$2884     0B00 GR  |   2 A$bloxorz$2891     0B02 GR
  2 A$bloxorz$2897     0B04 GR  |   2 A$bloxorz$2898     0B06 GR
  2 A$bloxorz$2899     0B08 GR  |   2 A$bloxorz$2900     0B0A GR
  2 A$bloxorz$2901     0B0C GR  |   2 A$bloxorz$2902     0B0E GR
  2 A$bloxorz$2903     0B0F GR  |   2 A$bloxorz$2904     0B12 GR
  2 A$bloxorz$2905     0B14 GR  |   2 A$bloxorz$2906     0B15 GR
  2 A$bloxorz$2907     0B16 GR  |   2 A$bloxorz$2908     0B17 GR
  2 A$bloxorz$2909     0B19 GR  |   2 A$bloxorz$2915     0B1B GR
  2 A$bloxorz$2916     0B1E GR  |   2 A$bloxorz$2917     0B20 GR
  2 A$bloxorz$2919     0B22 GR  |   2 A$bloxorz$2920     0B24 GR
  2 A$bloxorz$2921     0B28 GR  |   2 A$bloxorz$2922     0B2A GR
  2 A$bloxorz$2929     0B2E GR  |   2 A$bloxorz$2930     0B31 GR
  2 A$bloxorz$2931     0B33 GR  |   2 A$bloxorz$2932     0B36 GR
  2 A$bloxorz$2933     0B39 GR  |   2 A$bloxorz$2940     0B3D GR
  2 A$bloxorz$2941     0B40 GR  |   2 A$bloxorz$2942     0B42 GR
  2 A$bloxorz$2948     0B44 GR  |   2 A$bloxorz$2949     0B46 GR
  2 A$bloxorz$2951     0B49 GR  |   2 A$bloxorz$2952     0B4C GR
  2 A$bloxorz$2954     0B4E GR  |   2 A$bloxorz$2955     0B50 GR
  2 A$bloxorz$2956     0B52 GR  |   2 A$bloxorz$2958     0B55 GR
  2 A$bloxorz$2959     0B57 GR  |   2 A$bloxorz$2965     0B59 GR
  2 A$bloxorz$2966     0B5C GR  |   2 A$bloxorz$2967     0B5E GR
  2 A$bloxorz$2974     0B60 GR  |   2 A$bloxorz$2975     0B62 GR
  2 A$bloxorz$2976     0B64 GR  |   2 A$bloxorz$2977     0B66 GR
  2 A$bloxorz$2984     0B68 GR  |   2 A$bloxorz$299      012B GR
  2 A$bloxorz$2991     0B6B GR  |   2 A$bloxorz$2993     0B6E GR
  2 A$bloxorz$2994     0B70 GR  |   2 A$bloxorz$2995     0B72 GR
  2 A$bloxorz$300      012D GR  |   2 A$bloxorz$3002     0B75 GR
  2 A$bloxorz$3003     0B77 GR  |   2 A$bloxorz$301      012F GR
  2 A$bloxorz$3010     0B7B GR  |   2 A$bloxorz$3017     0B7E GR
  2 A$bloxorz$3018     0B81 GR  |   2 A$bloxorz$302      0130 GR
  2 A$bloxorz$3024     0B84 GR  |   2 A$bloxorz$3025     0B87 GR
  2 A$bloxorz$303      0132 GR  |   2 A$bloxorz$3031     0B8A GR
  2 A$bloxorz$3037     0B8D GR  |   2 A$bloxorz$3038     0B90 GR
  2 A$bloxorz$304      0134 GR  |   2 A$bloxorz$3044     0B93 GR
  2 A$bloxorz$3045     0B96 GR  |   2 A$bloxorz$305      0136 GR
  2 A$bloxorz$3052     0B99 GR  |   2 A$bloxorz$3053     0B9B GR
  2 A$bloxorz$3054     0B9D GR  |   2 A$bloxorz$3055     0B9F GR
  2 A$bloxorz$306      0138 GR  |   2 A$bloxorz$3062     0BA1 GR
  2 A$bloxorz$3069     0BA4 GR  |   2 A$bloxorz$307      013A GR
  2 A$bloxorz$3071     0BA7 GR  |   2 A$bloxorz$3072     0BAA GR
  2 A$bloxorz$3073     0BAD GR  |   2 A$bloxorz$3079     0BB1 GR
  2 A$bloxorz$308      013B GR  |   2 A$bloxorz$3085     0BB4 GR
  2 A$bloxorz$3086     0BB6 GR  |   2 A$bloxorz$309      013D GR
  2 A$bloxorz$3095     0BB9 GR  |   2 A$bloxorz$3096     0BBB GR
  2 A$bloxorz$310      013F GR  |   2 A$bloxorz$3102     0BBE GR
  2 A$bloxorz$3103     0BC1 GR  |   2 A$bloxorz$3104     0BC4 GR
  2 A$bloxorz$311      0141 GR  |   2 A$bloxorz$3111     0BC7 GR
  2 A$bloxorz$3112     0BCA GR  |   2 A$bloxorz$3115     0BCD GR
  2 A$bloxorz$3116     0BCF GR  |   2 A$bloxorz$312      0143 GR
  2 A$bloxorz$3122     0BD1 GR  |   2 A$bloxorz$3128     0BD4 GR
  2 A$bloxorz$3129     0BD7 GR  |   2 A$bloxorz$313      0145 GR
  2 A$bloxorz$3135     0BD9 GR  |   2 A$bloxorz$314      0147 GR
  2 A$bloxorz$3141     0BDC GR  |   2 A$bloxorz$3142     0BDE GR
  2 A$bloxorz$3145     0BE0 GR  |   2 A$bloxorz$3146     0BE2 GR
  2 A$bloxorz$315      0149 GR  |   2 A$bloxorz$3155     0BE5 GR
  2 A$bloxorz$3156     0BE7 GR  |   2 A$bloxorz$3157     0BE9 GR
  2 A$bloxorz$316      014B GR  |   2 A$bloxorz$3160     0BEB GR
  2 A$bloxorz$3161     0BED GR  |   2 A$bloxorz$3162     0BEF GR
  2 A$bloxorz$3168     0BF2 GR  |   2 A$bloxorz$3169     0BF5 GR
  2 A$bloxorz$3187     0BF7 GR  |   2 A$bloxorz$3188     0BF8 GR
  2 A$bloxorz$3189     0BFA GR  |   2 A$bloxorz$3190     0BFC GR
  2 A$bloxorz$3191     0BFF GR  |   2 A$bloxorz$3192     0C00 GR
  2 A$bloxorz$3193     0C01 GR  |   2 A$bloxorz$3194     0C02 GR
  2 A$bloxorz$3195     0C04 GR  |   2 A$bloxorz$3196     0C06 GR
  2 A$bloxorz$3197     0C08 GR  |   2 A$bloxorz$3198     0C0A GR
  2 A$bloxorz$3199     0C0C GR  |   2 A$bloxorz$3200     0C0E GR
  2 A$bloxorz$3201     0C10 GR  |   2 A$bloxorz$3202     0C12 GR
  2 A$bloxorz$3203     0C13 GR  |   2 A$bloxorz$3204     0C15 GR
  2 A$bloxorz$3205     0C18 GR  |   2 A$bloxorz$3206     0C1A GR
  2 A$bloxorz$3207     0C1B GR  |   2 A$bloxorz$3208     0C1D GR
  2 A$bloxorz$3209     0C1F GR  |   2 A$bloxorz$3210     0C21 GR
  2 A$bloxorz$3211     0C23 GR  |   2 A$bloxorz$3212     0C25 GR
  2 A$bloxorz$3215     0C27 GR  |   2 A$bloxorz$3216     0C29 GR
  2 A$bloxorz$3217     0C2B GR  |   2 A$bloxorz$3223     0C2E GR
  2 A$bloxorz$3224     0C31 GR  |   2 A$bloxorz$3225     0C32 GR
  2 A$bloxorz$3226     0C34 GR  |   2 A$bloxorz$3227     0C35 GR
  2 A$bloxorz$3228     0C36 GR  |   2 A$bloxorz$3229     0C39 GR
  2 A$bloxorz$3230     0C3B GR  |   2 A$bloxorz$3234     0C3D GR
  2 A$bloxorz$3239     0C3F GR  |   2 A$bloxorz$3245     0C42 GR
  2 A$bloxorz$3246     0C45 GR  |   2 A$bloxorz$3252     0C48 GR
  2 A$bloxorz$3253     0C49 GR  |   2 A$bloxorz$3259     0C4B GR
  2 A$bloxorz$3260     0C4D GR  |   2 A$bloxorz$3262     0C50 GR
  2 A$bloxorz$3263     0C52 GR  |   2 A$bloxorz$3266     0C54 GR
  2 A$bloxorz$3267     0C56 GR  |   2 A$bloxorz$3273     0C58 GR
  2 A$bloxorz$328      014F GR  |   2 A$bloxorz$3282     0C5B GR
  2 A$bloxorz$3288     0C5E GR  |   2 A$bloxorz$3289     0C60 GR
  2 A$bloxorz$329      0151 GR  |   2 A$bloxorz$3292     0C62 GR
  2 A$bloxorz$3293     0C64 GR  |   2 A$bloxorz$330      0152 GR
  2 A$bloxorz$3302     0C67 GR  |   2 A$bloxorz$3303     0C69 GR
  2 A$bloxorz$3306     0C6B GR  |   2 A$bloxorz$3307     0C6D GR
  2 A$bloxorz$3308     0C6F GR  |   2 A$bloxorz$331      0154 GR
  2 A$bloxorz$3314     0C72 GR  |   2 A$bloxorz$3315     0C75 GR
  2 A$bloxorz$332      0156 GR  |   2 A$bloxorz$333      0158 GR
  2 A$bloxorz$3333     0C77 GR  |   2 A$bloxorz$3334     0C78 GR
  2 A$bloxorz$3335     0C7A GR  |   2 A$bloxorz$3336     0C7C GR
  2 A$bloxorz$3337     0C7F GR  |   2 A$bloxorz$3338     0C80 GR
  2 A$bloxorz$3339     0C81 GR  |   2 A$bloxorz$334      015A GR
  2 A$bloxorz$3340     0C82 GR  |   2 A$bloxorz$3341     0C84 GR
  2 A$bloxorz$3342     0C86 GR  |   2 A$bloxorz$3343     0C88 GR
  2 A$bloxorz$3344     0C8A GR  |   2 A$bloxorz$3345     0C8C GR
  2 A$bloxorz$3346     0C8E GR  |   2 A$bloxorz$3347     0C90 GR
  2 A$bloxorz$3348     0C92 GR  |   2 A$bloxorz$3349     0C93 GR
  2 A$bloxorz$335      015C GR  |   2 A$bloxorz$3350     0C95 GR
  2 A$bloxorz$3351     0C98 GR  |   2 A$bloxorz$3352     0C9A GR
  2 A$bloxorz$3353     0C9B GR  |   2 A$bloxorz$3354     0C9D GR
  2 A$bloxorz$3355     0C9F GR  |   2 A$bloxorz$3356     0CA1 GR
  2 A$bloxorz$3357     0CA3 GR  |   2 A$bloxorz$3358     0CA5 GR
  2 A$bloxorz$336      015E GR  |   2 A$bloxorz$3361     0CA7 GR
  2 A$bloxorz$3362     0CA9 GR  |   2 A$bloxorz$3363     0CAB GR
  2 A$bloxorz$3369     0CAE GR  |   2 A$bloxorz$3370     0CB1 GR
  2 A$bloxorz$3371     0CB2 GR  |   2 A$bloxorz$3372     0CB4 GR
  2 A$bloxorz$3373     0CB5 GR  |   2 A$bloxorz$3374     0CB6 GR
  2 A$bloxorz$3375     0CB9 GR  |   2 A$bloxorz$3376     0CBB GR
  2 A$bloxorz$3380     0CBD GR  |   2 A$bloxorz$3385     0CBF GR
  2 A$bloxorz$3391     0CC2 GR  |   2 A$bloxorz$3397     0CC5 GR
  2 A$bloxorz$3398     0CC8 GR  |   2 A$bloxorz$3399     0CCA GR
  2 A$bloxorz$3400     0CCE GR  |   2 A$bloxorz$3401     0CD1 GR
  2 A$bloxorz$3402     0CD3 GR  |   2 A$bloxorz$3403     0CD5 GR
  2 A$bloxorz$3404     0CD8 GR  |   2 A$bloxorz$3405     0CDA GR
  2 A$bloxorz$3406     0CDE GR  |   2 A$bloxorz$3407     0CE1 GR
  2 A$bloxorz$3408     0CE3 GR  |   2 A$bloxorz$3415     0CE7 GR
  2 A$bloxorz$3416     0CEA GR  |   2 A$bloxorz$3417     0CEC GR
  2 A$bloxorz$342      0162 GR  |   2 A$bloxorz$3426     0CEE GR
  2 A$bloxorz$3427     0CF0 GR  |   2 A$bloxorz$343      0164 GR
  2 A$bloxorz$3433     0CF3 GR  |   2 A$bloxorz$3434     0CF6 GR
  2 A$bloxorz$3436     0CF9 GR  |   2 A$bloxorz$3437     0CFB GR
  2 A$bloxorz$344      0165 GR  |   2 A$bloxorz$3444     0CFD GR
  2 A$bloxorz$3445     0CFF GR  |   2 A$bloxorz$345      0168 GR
  2 A$bloxorz$3451     0D02 GR  |   2 A$bloxorz$3452     0D04 GR
  2 A$bloxorz$3453     0D07 GR  |   2 A$bloxorz$346      016A GR
  2 A$bloxorz$3460     0D09 GR  |   2 A$bloxorz$3461     0D0A GR
  2 A$bloxorz$3467     0D0D GR  |   2 A$bloxorz$3468     0D0F GR
  2 A$bloxorz$3469     0D12 GR  |   2 A$bloxorz$3476     0D15 GR
  2 A$bloxorz$3477     0D17 GR  |   2 A$bloxorz$3483     0D1A GR
  2 A$bloxorz$3484     0D1C GR  |   2 A$bloxorz$3485     0D1F GR
  2 A$bloxorz$349      016C GR  |   2 A$bloxorz$3492     0D22 GR
  2 A$bloxorz$3493     0D24 GR  |   2 A$bloxorz$3499     0D27 GR
  2 A$bloxorz$350      016E GR  |   2 A$bloxorz$3500     0D29 GR
  2 A$bloxorz$3501     0D2C GR  |   2 A$bloxorz$3504     0D2F GR
  2 A$bloxorz$351      0170 GR  |   2 A$bloxorz$3510     0D31 GR
  2 A$bloxorz$3511     0D34 GR  |   2 A$bloxorz$3523     0D38 GR
  2 A$bloxorz$3524     0D3A GR  |   2 A$bloxorz$3530     0D3D GR
  2 A$bloxorz$3531     0D3F GR  |   2 A$bloxorz$3537     0D42 GR
  2 A$bloxorz$3538     0D44 GR  |   2 A$bloxorz$3544     0D47 GR
  2 A$bloxorz$3550     0D4A GR  |   2 A$bloxorz$3565     0D4D GR
  2 A$bloxorz$3566     0D4F GR  |   2 A$bloxorz$357      0172 GR
  2 A$bloxorz$3572     0D52 GR  |   2 A$bloxorz$3573     0D54 GR
  2 A$bloxorz$3579     0D57 GR  |   2 A$bloxorz$358      0175 GR
  2 A$bloxorz$3580     0D59 GR  |   2 A$bloxorz$3586     0D5C GR
  2 A$bloxorz$3592     0D5F GR  |   2 A$bloxorz$3599     0D62 GR
  2 A$bloxorz$3600     0D64 GR  |   2 A$bloxorz$3603     0D65 GR
  2 A$bloxorz$3604     0D67 GR  |   2 A$bloxorz$3610     0D69 GR
  2 A$bloxorz$3611     0D6C GR  |   2 A$bloxorz$3617     0D6E GR
  2 A$bloxorz$3618     0D70 GR  |   2 A$bloxorz$3619     0D72 GR
  2 A$bloxorz$3620     0D74 GR  |   2 A$bloxorz$3633     0D75 GR
  2 A$bloxorz$3634     0D77 GR  |   2 A$bloxorz$3640     0D7A GR
  2 A$bloxorz$3641     0D7C GR  |   2 A$bloxorz$3647     0D7F GR
  2 A$bloxorz$3648     0D81 GR  |   2 A$bloxorz$3654     0D84 GR
  2 A$bloxorz$3655     0D87 GR  |   2 A$bloxorz$3661     0D89 GR
  2 A$bloxorz$3667     0D8C GR  |   2 A$bloxorz$3668     0D8E GR
  2 A$bloxorz$3669     0D90 GR  |   2 A$bloxorz$367      0177 GR
  2 A$bloxorz$3672     0D91 GR  |   2 A$bloxorz$3673     0D93 GR
  2 A$bloxorz$3679     0D96 GR  |   2 A$bloxorz$368      0179 GR
  2 A$bloxorz$3680     0D99 GR  |   2 A$bloxorz$3681     0D9B GR
  2 A$bloxorz$3687     0D9F GR  |   2 A$bloxorz$3688     0DA2 GR
  2 A$bloxorz$369      017B GR  |   2 A$bloxorz$3698     0DA5 GR
  2 A$bloxorz$3699     0DA8 GR  |   2 A$bloxorz$370      017D GR
  2 A$bloxorz$3705     0DAC GR  |   2 A$bloxorz$3707     0DAF GR
  2 A$bloxorz$371      017F GR  |   2 A$bloxorz$3716     0DB2 GR
  2 A$bloxorz$3717     0DB5 GR  |   2 A$bloxorz$372      0180 GR
  2 A$bloxorz$3723     0DB9 GR  |   2 A$bloxorz$3725     0DBC GR
  2 A$bloxorz$3726     0DBF GR  |   2 A$bloxorz$3727     0DC2 GR
  2 A$bloxorz$373      0182 GR  |   2 A$bloxorz$3733     0DC5 GR
  2 A$bloxorz$3734     0DC9 GR  |   2 A$bloxorz$3735     0DCB GR
  2 A$bloxorz$3736     0DCE GR  |   2 A$bloxorz$374      0184 GR
  2 A$bloxorz$3743     0DD1 GR  |   2 A$bloxorz$3749     0DD4 GR
  2 A$bloxorz$375      0186 GR  |   2 A$bloxorz$376      0188 GR
  2 A$bloxorz$3767     0DD7 GR  |   2 A$bloxorz$3768     0DDB GR
  2 A$bloxorz$3769     0DDD GR  |   2 A$bloxorz$377      018A GR
  2 A$bloxorz$378      018C GR  |   2 A$bloxorz$3782     0DDF GR
  2 A$bloxorz$3783     0DE1 GR  |   2 A$bloxorz$3785     0DE2 GR
  2 A$bloxorz$3788     0DE4 GR  |   2 A$bloxorz$3789     0DE6 GR
  2 A$bloxorz$379      018F GR  |   2 A$bloxorz$3790     0DE8 GR
  2 A$bloxorz$3791     0DEA GR  |   2 A$bloxorz$3792     0DEB GR
  2 A$bloxorz$3793     0DED GR  |   2 A$bloxorz$3794     0DEF GR
  2 A$bloxorz$3795     0DF1 GR  |   2 A$bloxorz$3796     0DF3 GR
  2 A$bloxorz$3797     0DF5 GR  |   2 A$bloxorz$3798     0DF7 GR
  2 A$bloxorz$3799     0DFA GR  |   2 A$bloxorz$380      0191 GR
  2 A$bloxorz$3800     0DFD GR  |   2 A$bloxorz$3802     0E00 GR
  2 A$bloxorz$3803     0E02 GR  |   2 A$bloxorz$3804     0E06 GR
  2 A$bloxorz$3805     0E08 GR  |   2 A$bloxorz$3811     0E0C GR
  2 A$bloxorz$3812     0E0E GR  |   2 A$bloxorz$3813     0E10 GR
  2 A$bloxorz$3814     0E14 GR  |   2 A$bloxorz$3815     0E16 GR
  2 A$bloxorz$3816     0E1A GR  |   2 A$bloxorz$3817     0E1C GR
  2 A$bloxorz$382      0192 GR  |   2 A$bloxorz$3823     0E20 GR
  2 A$bloxorz$3824     0E23 GR  |   2 A$bloxorz$3825     0E25 GR
  2 A$bloxorz$3831     0E29 GR  |   2 A$bloxorz$3832     0E2C GR
  2 A$bloxorz$3833     0E2D GR  |   2 A$bloxorz$3839     0E2F GR
  2 A$bloxorz$3840     0E32 GR  |   2 A$bloxorz$3849     0E34 GR
  2 A$bloxorz$385      0194 GR  |   2 A$bloxorz$3850     0E35 GR
  2 A$bloxorz$3851     0E37 GR  |   2 A$bloxorz$3852     0E3A GR
  2 A$bloxorz$3853     0E3C GR  |   2 A$bloxorz$3855     0E3D GR
  2 A$bloxorz$3856     0E3F GR  |   2 A$bloxorz$386      0196 GR
  2 A$bloxorz$3868     0E43 GR  |   2 A$bloxorz$3869     0E46 GR
  2 A$bloxorz$387      0198 GR  |   2 A$bloxorz$3870     0E49 GR
  2 A$bloxorz$3871     0E4C GR  |   2 A$bloxorz$3872     0E4F GR
  2 A$bloxorz$3873     0E51 GR  |   2 A$bloxorz$388      0199 GR
  2 A$bloxorz$3885     0E55 GR  |   2 A$bloxorz$3886     0E57 GR
  2 A$bloxorz$3887     0E59 GR  |   2 A$bloxorz$3888     0E5A GR
  2 A$bloxorz$389      019B GR  |   2 A$bloxorz$3890     0E5C GR
  2 A$bloxorz$3891     0E5E GR  |   2 A$bloxorz$390      019D GR
  2 A$bloxorz$3903     0E62 GR  |   2 A$bloxorz$3904     0E64 GR
  2 A$bloxorz$3905     0E66 GR  |   2 A$bloxorz$3906     0E68 GR
  2 A$bloxorz$3907     0E6A GR  |   2 A$bloxorz$3908     0E6C GR
  2 A$bloxorz$391      019F GR  |   2 A$bloxorz$3914     0E70 GR
  2 A$bloxorz$3915     0E72 GR  |   2 A$bloxorz$3916     0E73 GR
  2 A$bloxorz$3922     0E76 GR  |   2 A$bloxorz$3923     0E78 GR
  2 A$bloxorz$3925     0E7B GR  |   2 A$bloxorz$3926     0E7D GR
  2 A$bloxorz$3927     0E7F GR  |   2 A$bloxorz$3928     0E81 GR
  2 A$bloxorz$3929     0E83 GR  |   2 A$bloxorz$3939     0E87 GR
  2 A$bloxorz$3940     0E89 GR  |   2 A$bloxorz$3946     0E8B GR
  2 A$bloxorz$3947     0E8D GR  |   2 A$bloxorz$3956     0E8F GR
  2 A$bloxorz$3957     0E91 GR  |   2 A$bloxorz$3958     0E93 GR
  2 A$bloxorz$3965     0E97 GR  |   2 A$bloxorz$3966     0E9A GR
  2 A$bloxorz$3967     0E9C GR  |   2 A$bloxorz$3974     0EA0 GR
  2 A$bloxorz$3975     0EA2 GR  |   2 A$bloxorz$3976     0EA5 GR
  2 A$bloxorz$3977     0EA7 GR  |   2 A$bloxorz$3978     0EA9 GR
  2 A$bloxorz$3979     0EAB GR  |   2 A$bloxorz$3980     0EAD GR
  2 A$bloxorz$3982     0EB1 GR  |   2 A$bloxorz$3983     0EB3 GR
  2 A$bloxorz$3984     0EB5 GR  |   2 A$bloxorz$3985     0EB7 GR
  2 A$bloxorz$3986     0EB9 GR  |   2 A$bloxorz$3992     0EBD GR
  2 A$bloxorz$3993     0EC0 GR  |   2 A$bloxorz$3999     0EC3 GR
  2 A$bloxorz$4000     0EC6 GR  |   2 A$bloxorz$4006     0EC9 GR
  2 A$bloxorz$4007     0ECC GR  |   2 A$bloxorz$4013     0ECF GR
  2 A$bloxorz$4019     0ED2 GR  |   2 A$bloxorz$4025     0ED5 GR
  2 A$bloxorz$403      01A3 GR  |   2 A$bloxorz$4031     0ED8 GR
  2 A$bloxorz$4032     0EDA GR  |   2 A$bloxorz$4038     0EDD GR
  2 A$bloxorz$404      01A5 GR  |   2 A$bloxorz$4047     0EE0 GR
  2 A$bloxorz$4048     0EE2 GR  |   2 A$bloxorz$405      01A6 GR
  2 A$bloxorz$4054     0EE5 GR  |   2 A$bloxorz$4055     0EE8 GR
  2 A$bloxorz$406      01A8 GR  |   2 A$bloxorz$4061     0EEB GR
  2 A$bloxorz$4062     0EEE GR  |   2 A$bloxorz$407      01AA GR
  2 A$bloxorz$4074     0EF1 GR  |   2 A$bloxorz$4075     0EF4 GR
  2 A$bloxorz$4076     0EF7 GR  |   2 A$bloxorz$4077     0EFA GR
  2 A$bloxorz$4078     0EFD GR  |   2 A$bloxorz$4079     0F00 GR
  2 A$bloxorz$408      01AC GR  |   2 A$bloxorz$4088     0F03 GR
  2 A$bloxorz$4089     0F06 GR  |   2 A$bloxorz$409      01AF GR
  2 A$bloxorz$4090     0F09 GR  |   2 A$bloxorz$4091     0F0C GR
  2 A$bloxorz$4092     0F0F GR  |   2 A$bloxorz$4093     0F12 GR
  2 A$bloxorz$4094     0F14 GR  |   2 A$bloxorz$410      01B0 GR
  2 A$bloxorz$4104     0F17 GR  |   2 A$bloxorz$4105     0F19 GR
  2 A$bloxorz$4106     0F1B GR  |   2 A$bloxorz$4107     0F1D GR
  2 A$bloxorz$4108     0F20 GR  |   2 A$bloxorz$4109     0F22 GR
  2 A$bloxorz$411      01B1 GR  |   2 A$bloxorz$4110     0F24 GR
  2 A$bloxorz$4111     0F25 GR  |   2 A$bloxorz$4112     0F26 GR
  2 A$bloxorz$4113     0F28 GR  |   2 A$bloxorz$4114     0F2B GR
  2 A$bloxorz$4115     0F2D GR  |   2 A$bloxorz$4116     0F2F GR
  2 A$bloxorz$4117     0F31 GR  |   2 A$bloxorz$4118     0F33 GR
  2 A$bloxorz$412      01B2 GR  |   2 A$bloxorz$4125     0F35 GR
  2 A$bloxorz$413      01B4 GR  |   2 A$bloxorz$4131     0F37 GR
  2 A$bloxorz$4132     0F3A GR  |   2 A$bloxorz$4133     0F3C GR
  2 A$bloxorz$4134     0F3F GR  |   2 A$bloxorz$4135     0F41 GR
  2 A$bloxorz$4136     0F43 GR  |   2 A$bloxorz$4137     0F45 GR
  2 A$bloxorz$4138     0F47 GR  |   2 A$bloxorz$4139     0F49 GR
  2 A$bloxorz$414      01B6 GR  |   2 A$bloxorz$4140     0F4C GR
  2 A$bloxorz$4141     0F4E GR  |   2 A$bloxorz$4142     0F50 GR
  2 A$bloxorz$4149     0F52 GR  |   2 A$bloxorz$4150     0F55 GR
  2 A$bloxorz$4151     0F57 GR  |   2 A$bloxorz$4152     0F5A GR
  2 A$bloxorz$4153     0F5C GR  |   2 A$bloxorz$4154     0F5E GR
  2 A$bloxorz$4155     0F61 GR  |   2 A$bloxorz$4156     0F63 GR
  2 A$bloxorz$4157     0F66 GR  |   2 A$bloxorz$4158     0F68 GR
  2 A$bloxorz$4159     0F6B GR  |   2 A$bloxorz$4160     0F6D GR
  2 A$bloxorz$4161     0F6F GR  |   2 A$bloxorz$4167     0F73 GR
  2 A$bloxorz$4173     0F76 GR  |   2 A$bloxorz$4174     0F79 GR
  2 A$bloxorz$4175     0F7C GR  |   2 A$bloxorz$4176     0F7F GR
  2 A$bloxorz$4177     0F82 GR  |   2 A$bloxorz$4178     0F85 GR
  2 A$bloxorz$4184     0F88 GR  |   2 A$bloxorz$4185     0F8A GR
  2 A$bloxorz$4186     0F8E GR  |   2 A$bloxorz$4187     0F90 GR
  2 A$bloxorz$4188     0F93 GR  |   2 A$bloxorz$4195     0F95 GR
  2 A$bloxorz$4196     0F98 GR  |   2 A$bloxorz$4197     0F9B GR
  2 A$bloxorz$4198     0F9E GR  |   2 A$bloxorz$4199     0FA1 GR
  2 A$bloxorz$420      01BA GR  |   2 A$bloxorz$4209     0FA4 GR
  2 A$bloxorz$421      01BD GR  |   2 A$bloxorz$4210     0FA6 GR
  2 A$bloxorz$4211     0FA8 GR  |   2 A$bloxorz$4212     0FAB GR
  2 A$bloxorz$4213     0FAE GR  |   2 A$bloxorz$4214     0FB0 GR
  2 A$bloxorz$4215     0FB2 GR  |   2 A$bloxorz$4216     0FB3 GR
  2 A$bloxorz$4217     0FB4 GR  |   2 A$bloxorz$4218     0FB6 GR
  2 A$bloxorz$4219     0FB9 GR  |   2 A$bloxorz$422      01BE GR
  2 A$bloxorz$4220     0FBB GR  |   2 A$bloxorz$4221     0FBD GR
  2 A$bloxorz$4222     0FBF GR  |   2 A$bloxorz$4223     0FC1 GR
  2 A$bloxorz$423      01C0 GR  |   2 A$bloxorz$4230     0FC3 GR
  2 A$bloxorz$4236     0FC5 GR  |   2 A$bloxorz$4237     0FC8 GR
  2 A$bloxorz$4238     0FCA GR  |   2 A$bloxorz$4239     0FCD GR
  2 A$bloxorz$424      01C2 GR  |   2 A$bloxorz$4240     0FCF GR
  2 A$bloxorz$4241     0FD1 GR  |   2 A$bloxorz$4242     0FD3 GR
  2 A$bloxorz$4243     0FD6 GR  |   2 A$bloxorz$4244     0FD8 GR
  2 A$bloxorz$4245     0FDB GR  |   2 A$bloxorz$4246     0FDD GR
  2 A$bloxorz$4247     0FDF GR  |   2 A$bloxorz$425      01C3 GR
  2 A$bloxorz$4254     0FE2 GR  |   2 A$bloxorz$4255     0FE5 GR
  2 A$bloxorz$4256     0FE7 GR  |   2 A$bloxorz$4257     0FEA GR
  2 A$bloxorz$4258     0FEC GR  |   2 A$bloxorz$4259     0FEE GR
  2 A$bloxorz$4260     0FF1 GR  |   2 A$bloxorz$4261     0FF3 GR
  2 A$bloxorz$4262     0FF6 GR  |   2 A$bloxorz$4263     0FF8 GR
  2 A$bloxorz$4264     0FFB GR  |   2 A$bloxorz$4265     0FFD GR
  2 A$bloxorz$4266     0FFF GR  |   2 A$bloxorz$4267     1003 GR
  2 A$bloxorz$4268     1006 GR  |   2 A$bloxorz$4270     1008 GR
  2 A$bloxorz$4271     100A GR  |   2 A$bloxorz$4272     100D GR
  2 A$bloxorz$4274     1010 GR  |   2 A$bloxorz$4275     1012 GR
  2 A$bloxorz$4281     1014 GR  |   2 A$bloxorz$4282     1017 GR
  2 A$bloxorz$4283     101A GR  |   2 A$bloxorz$4290     101D GR
  2 A$bloxorz$4291     1020 GR  |   2 A$bloxorz$4292     1023 GR
  2 A$bloxorz$4305     1026 GR  |   2 A$bloxorz$4306     1028 GR
  2 A$bloxorz$4312     102B GR  |   2 A$bloxorz$4313     102D GR
  2 A$bloxorz$4319     1030 GR  |   2 A$bloxorz$4320     1032 GR
  2 A$bloxorz$4321     1034 GR  |   2 A$bloxorz$4327     1037 GR
  2 A$bloxorz$4328     103A GR  |   2 A$bloxorz$4334     103C GR
  2 A$bloxorz$434      01C5 GR  |   2 A$bloxorz$4340     103F GR
  2 A$bloxorz$4341     1041 GR  |   2 A$bloxorz$4342     1042 GR
  2 A$bloxorz$4343     1044 GR  |   2 A$bloxorz$4344     1047 GR
  2 A$bloxorz$4345     1049 GR  |   2 A$bloxorz$435      01C7 GR
  2 A$bloxorz$4358     104C GR  |   2 A$bloxorz$4359     104E GR
  2 A$bloxorz$436      01C9 GR  |   2 A$bloxorz$4365     1051 GR
  2 A$bloxorz$4366     1053 GR  |   2 A$bloxorz$437      01CB GR
  2 A$bloxorz$4372     1056 GR  |   2 A$bloxorz$4373     1058 GR
  2 A$bloxorz$4374     105A GR  |   2 A$bloxorz$4375     105C GR
  2 A$bloxorz$4381     105F GR  |   2 A$bloxorz$4382     1062 GR
  2 A$bloxorz$4388     1064 GR  |   2 A$bloxorz$439      01CC GR
  2 A$bloxorz$4394     1067 GR  |   2 A$bloxorz$4395     1069 GR
  2 A$bloxorz$4396     106B GR  |   2 A$bloxorz$4397     106C GR
  2 A$bloxorz$44       0000 GR  |   2 A$bloxorz$4400     106F GR
  2 A$bloxorz$4401     1071 GR  |   2 A$bloxorz$4407     1073 GR
  2 A$bloxorz$4413     1076 GR  |   2 A$bloxorz$4414     1079 GR
  2 A$bloxorz$4415     107A GR  |   2 A$bloxorz$4416     107C GR
  2 A$bloxorz$442      01CE GR  |   2 A$bloxorz$4422     107F GR
  2 A$bloxorz$4423     1081 GR  |   2 A$bloxorz$443      01D0 GR
  2 A$bloxorz$4430     1083 GR  |   2 A$bloxorz$4431     1086 GR
  2 A$bloxorz$4432     1088 GR  |   2 A$bloxorz$4433     108C GR
  2 A$bloxorz$4434     108E GR  |   2 A$bloxorz$444      01D2 GR
  2 A$bloxorz$4444     1090 GR  |   2 A$bloxorz$445      01D4 GR
  2 A$bloxorz$4450     1093 GR  |   2 A$bloxorz$4451     1095 GR
  2 A$bloxorz$4454     1097 GR  |   2 A$bloxorz$4455     1099 GR
  2 A$bloxorz$4464     109C GR  |   2 A$bloxorz$4465     109E GR
  2 A$bloxorz$4466     109F GR  |   2 A$bloxorz$4467     10A1 GR
  2 A$bloxorz$4468     10A2 GR  |   2 A$bloxorz$4469     10A4 GR
  2 A$bloxorz$447      01D5 GR  |   2 A$bloxorz$4472     10A6 GR
  2 A$bloxorz$4473     10A8 GR  |   2 A$bloxorz$4474     10AA GR
  2 A$bloxorz$4480     10AD GR  |   2 A$bloxorz$4481     10B0 GR
  2 A$bloxorz$4499     10B2 GR  |   2 A$bloxorz$45       0002 GR
  2 A$bloxorz$450      01D7 GR  |   2 A$bloxorz$4500     10B3 GR
  2 A$bloxorz$4501     10B5 GR  |   2 A$bloxorz$4502     10B7 GR
  2 A$bloxorz$4503     10BA GR  |   2 A$bloxorz$4504     10BB GR
  2 A$bloxorz$4505     10BC GR  |   2 A$bloxorz$4506     10BD GR
  2 A$bloxorz$4507     10BF GR  |   2 A$bloxorz$4508     10C1 GR
  2 A$bloxorz$4509     10C3 GR  |   2 A$bloxorz$451      01D9 GR
  2 A$bloxorz$4510     10C5 GR  |   2 A$bloxorz$4511     10C7 GR
  2 A$bloxorz$4512     10C9 GR  |   2 A$bloxorz$4513     10CB GR
  2 A$bloxorz$4514     10CD GR  |   2 A$bloxorz$4515     10CE GR
  2 A$bloxorz$4516     10D0 GR  |   2 A$bloxorz$4517     10D3 GR
  2 A$bloxorz$4518     10D5 GR  |   2 A$bloxorz$4519     10D6 GR
  2 A$bloxorz$452      01DB GR  |   2 A$bloxorz$4520     10D8 GR
  2 A$bloxorz$4521     10DA GR  |   2 A$bloxorz$4522     10DC GR
  2 A$bloxorz$4523     10DE GR  |   2 A$bloxorz$4524     10E0 GR
  2 A$bloxorz$4527     10E2 GR  |   2 A$bloxorz$4528     10E4 GR
  2 A$bloxorz$4529     10E6 GR  |   2 A$bloxorz$4535     10E9 GR
  2 A$bloxorz$4536     10EC GR  |   2 A$bloxorz$4537     10ED GR
  2 A$bloxorz$4538     10EF GR  |   2 A$bloxorz$4539     10F0 GR
  2 A$bloxorz$4540     10F1 GR  |   2 A$bloxorz$4541     10F4 GR
  2 A$bloxorz$4542     10F6 GR  |   2 A$bloxorz$4546     10F8 GR
  2 A$bloxorz$4551     10FA GR  |   2 A$bloxorz$4560     10FD GR
  2 A$bloxorz$4561     1100 GR  |   2 A$bloxorz$4567     1104 GR
  2 A$bloxorz$4568     1107 GR  |   2 A$bloxorz$4569     110A GR
  2 A$bloxorz$4570     110C GR  |   2 A$bloxorz$4576     1110 GR
  2 A$bloxorz$4577     1113 GR  |   2 A$bloxorz$4583     1116 GR
  2 A$bloxorz$4584     1119 GR  |   2 A$bloxorz$4590     111C GR
  2 A$bloxorz$4596     111F GR  |   2 A$bloxorz$4597     1122 GR
  2 A$bloxorz$4603     1125 GR  |   2 A$bloxorz$4604     1128 GR
  2 A$bloxorz$4611     112B GR  |   2 A$bloxorz$4612     112E GR
  2 A$bloxorz$4613     1130 GR  |   2 A$bloxorz$4616     1132 GR
  2 A$bloxorz$4617     1134 GR  |   2 A$bloxorz$4623     1136 GR
  2 A$bloxorz$4629     1139 GR  |   2 A$bloxorz$4630     113C GR
  2 A$bloxorz$4636     113E GR  |   2 A$bloxorz$464      01DF GR
  2 A$bloxorz$4642     1141 GR  |   2 A$bloxorz$4643     1143 GR
  2 A$bloxorz$4646     1145 GR  |   2 A$bloxorz$4647     1147 GR
  2 A$bloxorz$465      01E1 GR  |   2 A$bloxorz$4656     114A GR
  2 A$bloxorz$4657     114C GR  |   2 A$bloxorz$4658     114E GR
  2 A$bloxorz$466      01E2 GR  |   2 A$bloxorz$4661     1150 GR
  2 A$bloxorz$4662     1152 GR  |   2 A$bloxorz$4663     1154 GR
  2 A$bloxorz$4669     1157 GR  |   2 A$bloxorz$467      01E4 GR
  2 A$bloxorz$4670     115A GR  |   2 A$bloxorz$468      01E6 GR
  2 A$bloxorz$4688     115C GR  |   2 A$bloxorz$4689     115D GR
  2 A$bloxorz$469      01E8 GR  |   2 A$bloxorz$4690     115F GR
  2 A$bloxorz$4691     1161 GR  |   2 A$bloxorz$4692     1164 GR
  2 A$bloxorz$4693     1165 GR  |   2 A$bloxorz$4694     1166 GR
  2 A$bloxorz$4695     1167 GR  |   2 A$bloxorz$4696     1169 GR
  2 A$bloxorz$4697     116B GR  |   2 A$bloxorz$4698     116D GR
  2 A$bloxorz$4699     116F GR  |   2 A$bloxorz$470      01EA GR
  2 A$bloxorz$4700     1171 GR  |   2 A$bloxorz$4701     1173 GR
  2 A$bloxorz$4702     1175 GR  |   2 A$bloxorz$4703     1177 GR
  2 A$bloxorz$4704     1178 GR  |   2 A$bloxorz$4705     117A GR
  2 A$bloxorz$4706     117D GR  |   2 A$bloxorz$4707     117F GR
  2 A$bloxorz$4708     1180 GR  |   2 A$bloxorz$4709     1182 GR
  2 A$bloxorz$471      01EB GR  |   2 A$bloxorz$4710     1184 GR
  2 A$bloxorz$4711     1186 GR  |   2 A$bloxorz$4712     1188 GR
  2 A$bloxorz$4713     118A GR  |   2 A$bloxorz$4716     118C GR
  2 A$bloxorz$4717     118E GR  |   2 A$bloxorz$4718     1190 GR
  2 A$bloxorz$472      01EC GR  |   2 A$bloxorz$4724     1193 GR
  2 A$bloxorz$4725     1196 GR  |   2 A$bloxorz$4726     1197 GR
  2 A$bloxorz$4727     1199 GR  |   2 A$bloxorz$4728     119A GR
  2 A$bloxorz$4729     119B GR  |   2 A$bloxorz$473      01ED GR
  2 A$bloxorz$4730     119E GR  |   2 A$bloxorz$4731     11A0 GR
  2 A$bloxorz$4735     11A2 GR  |   2 A$bloxorz$474      01EF GR
  2 A$bloxorz$4740     11A4 GR  |   2 A$bloxorz$4746     11A7 GR
  2 A$bloxorz$4747     11AA GR  |   2 A$bloxorz$475      01F1 GR
  2 A$bloxorz$4753     11AD GR  |   2 A$bloxorz$4754     11AF GR
  2 A$bloxorz$4755     11B1 GR  |   2 A$bloxorz$4756     11B3 GR
  2 A$bloxorz$476      01F3 GR  |   2 A$bloxorz$4763     11B5 GR
  2 A$bloxorz$4764     11B8 GR  |   2 A$bloxorz$4765     11BC GR
  2 A$bloxorz$4772     11BE GR  |   2 A$bloxorz$4773     11C1 GR
  2 A$bloxorz$4779     11C4 GR  |   2 A$bloxorz$4780     11C6 GR
  2 A$bloxorz$4781     11C8 GR  |   2 A$bloxorz$4788     11CB GR
  2 A$bloxorz$4789     11CE GR  |   2 A$bloxorz$4790     11D0 GR
  2 A$bloxorz$4797     11D2 GR  |   2 A$bloxorz$4803     11D5 GR
  2 A$bloxorz$4804     11D8 GR  |   2 A$bloxorz$4810     11DA GR
  2 A$bloxorz$4811     11DB GR  |   2 A$bloxorz$4812     11DD GR
  2 A$bloxorz$4813     11DF GR  |   2 A$bloxorz$4819     11E2 GR
  2 A$bloxorz$482      01F7 GR  |   2 A$bloxorz$4820     11E4 GR
  2 A$bloxorz$4821     11E6 GR  |   2 A$bloxorz$4822     11E8 GR
  2 A$bloxorz$4823     11EB GR  |   2 A$bloxorz$4824     11ED GR
  2 A$bloxorz$4825     11F0 GR  |   2 A$bloxorz$483      01F9 GR
  2 A$bloxorz$4835     11F3 GR  |   2 A$bloxorz$4836     11F6 GR
  2 A$bloxorz$484      01FA GR  |   2 A$bloxorz$4842     11FA GR
  2 A$bloxorz$4843     11FB GR  |   2 A$bloxorz$4844     11FC GR
  2 A$bloxorz$4845     11FE GR  |   2 A$bloxorz$4846     1200 GR
  2 A$bloxorz$4852     1203 GR  |   2 A$bloxorz$4853     1205 GR
  2 A$bloxorz$4854     1207 GR  |   2 A$bloxorz$4855     1208 GR
  2 A$bloxorz$4856     120A GR  |   2 A$bloxorz$4857     120C GR
  2 A$bloxorz$4858     120F GR  |   2 A$bloxorz$4859     1211 GR
  2 A$bloxorz$4862     1214 GR  |   2 A$bloxorz$4863     1216 GR
  2 A$bloxorz$4869     1218 GR  |   2 A$bloxorz$4881     121B GR
  2 A$bloxorz$4882     121D GR  |   2 A$bloxorz$4888     1220 GR
  2 A$bloxorz$4889     1222 GR  |   2 A$bloxorz$4895     1225 GR
  2 A$bloxorz$4896     1226 GR  |   2 A$bloxorz$4902     1229 GR
  2 A$bloxorz$4908     122C GR  |   2 A$bloxorz$4923     122F GR
  2 A$bloxorz$4924     1231 GR  |   2 A$bloxorz$4930     1234 GR
  2 A$bloxorz$4931     1236 GR  |   2 A$bloxorz$4937     1239 GR
  2 A$bloxorz$4938     123A GR  |   2 A$bloxorz$4944     123D GR
  2 A$bloxorz$4950     1240 GR  |   2 A$bloxorz$496      01FC GR
  2 A$bloxorz$4965     1243 GR  |   2 A$bloxorz$4966     1245 GR
  2 A$bloxorz$497      01FD GR  |   2 A$bloxorz$4972     1248 GR
  2 A$bloxorz$4973     124A GR  |   2 A$bloxorz$4979     124D GR
  2 A$bloxorz$498      01FF GR  |   2 A$bloxorz$4980     124E GR
  2 A$bloxorz$4986     1251 GR  |   2 A$bloxorz$4987     1254 GR
  2 A$bloxorz$499      0201 GR  |   2 A$bloxorz$4993     1256 GR
  2 A$bloxorz$4999     1259 GR  |   2 A$bloxorz$500      0203 GR
  2 A$bloxorz$5000     125B GR  |   2 A$bloxorz$5001     125D GR
  2 A$bloxorz$5008     1261 GR  |   2 A$bloxorz$5009     1264 GR
  2 A$bloxorz$5010     1267 GR  |   2 A$bloxorz$5011     126A GR
  2 A$bloxorz$5012     126D GR  |   2 A$bloxorz$5013     1270 GR
  2 A$bloxorz$5014     1273 GR  |   2 A$bloxorz$5015     1276 GR
  2 A$bloxorz$5016     1279 GR  |   2 A$bloxorz$5017     127C GR
  2 A$bloxorz$5023     127F GR  |   2 A$bloxorz$5024     1281 GR
  2 A$bloxorz$5030     1284 GR  |   2 A$bloxorz$5031     1286 GR
  2 A$bloxorz$5037     1289 GR  |   2 A$bloxorz$5043     128C GR
  2 A$bloxorz$5049     128F GR  |   2 A$bloxorz$5061     1292 GR
  2 A$bloxorz$5067     1295 GR  |   2 A$bloxorz$5068     1297 GR
  2 A$bloxorz$5071     1299 GR  |   2 A$bloxorz$5072     129B GR
  2 A$bloxorz$5078     129E GR  |   2 A$bloxorz$5079     12A0 GR
  2 A$bloxorz$5085     12A3 GR  |   2 A$bloxorz$5086     12A5 GR
  2 A$bloxorz$5087     12A7 GR  |   2 A$bloxorz$5088     12A9 GR
  2 A$bloxorz$5089     12AC GR  |   2 A$bloxorz$5092     12AE GR
  2 A$bloxorz$5093     12B0 GR  |   2 A$bloxorz$5094     12B2 GR
  2 A$bloxorz$5095     12B4 GR  |   2 A$bloxorz$51       0004 GR
  2 A$bloxorz$5101     12B7 GR  |   2 A$bloxorz$5102     12BA GR
  2 A$bloxorz$5103     12BC GR  |   2 A$bloxorz$5104     12BE GR
  2 A$bloxorz$5105     12BF GR  |   2 A$bloxorz$5106     12C1 GR
  2 A$bloxorz$5107     12C2 GR  |   2 A$bloxorz$5108     12C3 GR
  2 A$bloxorz$5109     12C5 GR  |   2 A$bloxorz$512      0207 GR
  2 A$bloxorz$5122     12D3 GR  |   2 A$bloxorz$513      0209 GR
  2 A$bloxorz$5134     12D6 GR  |   2 A$bloxorz$514      020B GR
  2 A$bloxorz$5140     12D9 GR  |   2 A$bloxorz$5141     12DC GR
  2 A$bloxorz$5144     12DE GR  |   2 A$bloxorz$5145     12E0 GR
  2 A$bloxorz$5151     12E3 GR  |   2 A$bloxorz$5157     12E6 GR
  2 A$bloxorz$5160     12E9 GR  |   2 A$bloxorz$5167     12EC GR
  2 A$bloxorz$5173     12EF GR  |   2 A$bloxorz$5183     12F2 GR
  2 A$bloxorz$5189     12F5 GR  |   2 A$bloxorz$5190     12F8 GR
  2 A$bloxorz$5196     12FA GR  |   2 A$bloxorz$52       0007 GR
  2 A$bloxorz$5202     12FD GR  |   2 A$bloxorz$5203     12FF GR
  2 A$bloxorz$5206     1301 GR  |   2 A$bloxorz$5207     1303 GR
  2 A$bloxorz$5216     1306 GR  |   2 A$bloxorz$5217     1308 GR
  2 A$bloxorz$5218     130A GR  |   2 A$bloxorz$5221     130C GR
  2 A$bloxorz$5222     130E GR  |   2 A$bloxorz$5223     1310 GR
  2 A$bloxorz$5229     1313 GR  |   2 A$bloxorz$5230     1316 GR
  2 A$bloxorz$5248     1318 GR  |   2 A$bloxorz$5249     1319 GR
  2 A$bloxorz$5250     131B GR  |   2 A$bloxorz$5251     131D GR
  2 A$bloxorz$5252     1320 GR  |   2 A$bloxorz$5253     1321 GR
  2 A$bloxorz$5254     1322 GR  |   2 A$bloxorz$5255     1323 GR
  2 A$bloxorz$5256     1325 GR  |   2 A$bloxorz$5257     1327 GR
  2 A$bloxorz$5258     1329 GR  |   2 A$bloxorz$5259     132B GR
  2 A$bloxorz$526      020F GR  |   2 A$bloxorz$5260     132D GR
  2 A$bloxorz$5261     132F GR  |   2 A$bloxorz$5262     1331 GR
  2 A$bloxorz$5263     1333 GR  |   2 A$bloxorz$5264     1334 GR
  2 A$bloxorz$5265     1336 GR  |   2 A$bloxorz$5266     1339 GR
  2 A$bloxorz$5267     133B GR  |   2 A$bloxorz$5268     133C GR
  2 A$bloxorz$5269     133E GR  |   2 A$bloxorz$527      0211 GR
  2 A$bloxorz$5270     1340 GR  |   2 A$bloxorz$5271     1342 GR
  2 A$bloxorz$5272     1344 GR  |   2 A$bloxorz$5273     1346 GR
  2 A$bloxorz$5276     1348 GR  |   2 A$bloxorz$5277     134A GR
  2 A$bloxorz$5278     134C GR  |   2 A$bloxorz$528      0213 GR
  2 A$bloxorz$5284     134F GR  |   2 A$bloxorz$5285     1352 GR
  2 A$bloxorz$5286     1353 GR  |   2 A$bloxorz$5287     1355 GR
  2 A$bloxorz$5288     1356 GR  |   2 A$bloxorz$5289     1357 GR
  2 A$bloxorz$5290     135A GR  |   2 A$bloxorz$5291     135C GR
  2 A$bloxorz$5295     135E GR  |   2 A$bloxorz$53       0009 GR
  2 A$bloxorz$5300     1360 GR  |   2 A$bloxorz$5306     1363 GR
  2 A$bloxorz$5307     1366 GR  |   2 A$bloxorz$5313     1369 GR
  2 A$bloxorz$5314     136A GR  |   2 A$bloxorz$5320     136C GR
  2 A$bloxorz$5321     136E GR  |   2 A$bloxorz$5328     1371 GR
  2 A$bloxorz$5338     1374 GR  |   2 A$bloxorz$5344     1377 GR
  2 A$bloxorz$5345     137A GR  |   2 A$bloxorz$5346     137B GR
  2 A$bloxorz$5347     137D GR  |   2 A$bloxorz$5353     1380 GR
  2 A$bloxorz$5354     1382 GR  |   2 A$bloxorz$5361     1384 GR
  2 A$bloxorz$5362     1387 GR  |   2 A$bloxorz$5363     1389 GR
  2 A$bloxorz$5370     138D GR  |   2 A$bloxorz$5377     1390 GR
  2 A$bloxorz$5383     1393 GR  |   2 A$bloxorz$5393     1396 GR
  2 A$bloxorz$5399     1399 GR  |   2 A$bloxorz$54       000C GR
  2 A$bloxorz$540      0217 GR  |   2 A$bloxorz$5400     139B GR
  2 A$bloxorz$5403     139D GR  |   2 A$bloxorz$5404     139F GR
  2 A$bloxorz$541      0219 GR  |   2 A$bloxorz$5413     13A2 GR
  2 A$bloxorz$5414     13A4 GR  |   2 A$bloxorz$5415     13A5 GR
  2 A$bloxorz$5416     13A7 GR  |   2 A$bloxorz$5417     13A8 GR
  2 A$bloxorz$5418     13AA GR  |   2 A$bloxorz$542      021B GR
  2 A$bloxorz$5421     13AC GR  |   2 A$bloxorz$5422     13AE GR
  2 A$bloxorz$5423     13B0 GR  |   2 A$bloxorz$5429     13B3 GR
  2 A$bloxorz$5430     13B6 GR  |   2 A$bloxorz$5448     13B8 GR
  2 A$bloxorz$5449     13B9 GR  |   2 A$bloxorz$5450     13BB GR
  2 A$bloxorz$5451     13BD GR  |   2 A$bloxorz$5452     13C0 GR
  2 A$bloxorz$5453     13C1 GR  |   2 A$bloxorz$5454     13C2 GR
  2 A$bloxorz$5455     13C3 GR  |   2 A$bloxorz$5456     13C5 GR
  2 A$bloxorz$5457     13C7 GR  |   2 A$bloxorz$5458     13C9 GR
  2 A$bloxorz$5459     13CB GR  |   2 A$bloxorz$5460     13CD GR
  2 A$bloxorz$5461     13CF GR  |   2 A$bloxorz$5462     13D1 GR
  2 A$bloxorz$5463     13D3 GR  |   2 A$bloxorz$5464     13D4 GR
  2 A$bloxorz$5465     13D6 GR  |   2 A$bloxorz$5466     13D9 GR
  2 A$bloxorz$5467     13DB GR  |   2 A$bloxorz$5468     13DC GR
  2 A$bloxorz$5469     13DE GR  |   2 A$bloxorz$5470     13E0 GR
  2 A$bloxorz$5471     13E2 GR  |   2 A$bloxorz$5472     13E4 GR
  2 A$bloxorz$5473     13E6 GR  |   2 A$bloxorz$5476     13E8 GR
  2 A$bloxorz$5477     13EA GR  |   2 A$bloxorz$5478     13EC GR
  2 A$bloxorz$548      021F GR  |   2 A$bloxorz$5484     13EF GR
  2 A$bloxorz$5485     13F2 GR  |   2 A$bloxorz$5486     13F3 GR
  2 A$bloxorz$5487     13F5 GR  |   2 A$bloxorz$5488     13F6 GR
  2 A$bloxorz$5489     13F7 GR  |   2 A$bloxorz$549      0221 GR
  2 A$bloxorz$5490     13FA GR  |   2 A$bloxorz$5491     13FC GR
  2 A$bloxorz$5495     13FE GR  |   2 A$bloxorz$55       000E GR
  2 A$bloxorz$550      0222 GR  |   2 A$bloxorz$5500     1400 GR
  2 A$bloxorz$5509     1403 GR  |   2 A$bloxorz$551      0225 GR
  2 A$bloxorz$5510     1406 GR  |   2 A$bloxorz$5516     140A GR
  2 A$bloxorz$5517     140D GR  |   2 A$bloxorz$5518     1410 GR
  2 A$bloxorz$5519     1412 GR  |   2 A$bloxorz$552      0227 GR
  2 A$bloxorz$5525     1416 GR  |   2 A$bloxorz$5526     1419 GR
  2 A$bloxorz$5532     141C GR  |   2 A$bloxorz$5533     141F GR
  2 A$bloxorz$5539     1422 GR  |   2 A$bloxorz$5545     1425 GR
  2 A$bloxorz$5546     1428 GR  |   2 A$bloxorz$5552     142B GR
  2 A$bloxorz$5558     142E GR  |   2 A$bloxorz$5559     1431 GR
  2 A$bloxorz$5560     1433 GR  |   2 A$bloxorz$5567     1437 GR
  2 A$bloxorz$5568     143A GR  |   2 A$bloxorz$5575     143D GR
  2 A$bloxorz$5576     143F GR  |   2 A$bloxorz$5577     1442 GR
  2 A$bloxorz$56       0011 GR  |   2 A$bloxorz$560      0229 GR
  2 A$bloxorz$561      022B GR  |   2 A$bloxorz$567      022E GR
  2 A$bloxorz$568      0231 GR  |   2 A$bloxorz$571      0232 GR
  2 A$bloxorz$577      0234 GR  |   2 A$bloxorz$578      0236 GR
  2 A$bloxorz$581      0238 GR  |   2 A$bloxorz$582      023A GR
  2 A$bloxorz$585      023D GR  |   2 A$bloxorz$588      023F GR
  2 A$bloxorz$591      0241 GR  |   2 A$bloxorz$594      0243 GR
  2 A$bloxorz$597      0246 GR  |   2 A$bloxorz$603      0249 GR
  2 A$bloxorz$606      024B GR  |   2 A$bloxorz$609      024D GR
  2 A$bloxorz$612      0250 GR  |   2 A$bloxorz$615      0252 GR
  2 A$bloxorz$618      0256 GR  |   2 A$bloxorz$62       0013 GR
  2 A$bloxorz$621      025A GR  |   2 A$bloxorz$624      025C GR
  2 A$bloxorz$627      025F GR  |   2 A$bloxorz$63       0015 GR
  2 A$bloxorz$630      0261 GR  |   2 A$bloxorz$633      0265 GR
  2 A$bloxorz$636      0269 GR  |   2 A$bloxorz$639      026D GR
  2 A$bloxorz$64       0018 GR  |   2 A$bloxorz$642      0271 GR
  2 A$bloxorz$645      0273 GR  |   2 A$bloxorz$648      0276 GR
  2 A$bloxorz$65       001A GR  |   2 A$bloxorz$651      0278 GR
  2 A$bloxorz$654      027A GR  |   2 A$bloxorz$657      027C GR
  2 A$bloxorz$66       001D GR  |   2 A$bloxorz$660      027D GR
  2 A$bloxorz$663      027F GR  |   2 A$bloxorz$666      0281 GR
  2 A$bloxorz$667      0283 GR  |   2 A$bloxorz$670      0284 GR
  2 A$bloxorz$671      0286 GR  |   2 A$bloxorz$672      0288 GR
  2 A$bloxorz$678      028A GR  |   2 A$bloxorz$684      028D GR
  2 A$bloxorz$685      028F GR  |   2 A$bloxorz$688      0291 GR
  2 A$bloxorz$689      0293 GR  |   2 A$bloxorz$698      0296 GR
  2 A$bloxorz$699      0298 GR  |   2 A$bloxorz$700      029A GR
  2 A$bloxorz$703      029C GR  |   2 A$bloxorz$704      029E GR
  2 A$bloxorz$705      02A0 GR  |   2 A$bloxorz$711      02A3 GR
  2 A$bloxorz$712      02A6 GR  |   2 A$bloxorz$73       001F GR
  2 A$bloxorz$730      02A8 GR  |   2 A$bloxorz$731      02A9 GR
  2 A$bloxorz$732      02AB GR  |   2 A$bloxorz$733      02AD GR
  2 A$bloxorz$734      02B0 GR  |   2 A$bloxorz$735      02B1 GR
  2 A$bloxorz$736      02B2 GR  |   2 A$bloxorz$737      02B3 GR
  2 A$bloxorz$738      02B5 GR  |   2 A$bloxorz$739      02B7 GR
  2 A$bloxorz$74       0021 GR  |   2 A$bloxorz$740      02B9 GR
  2 A$bloxorz$741      02BB GR  |   2 A$bloxorz$742      02BD GR
  2 A$bloxorz$743      02BF GR  |   2 A$bloxorz$744      02C1 GR
  2 A$bloxorz$745      02C3 GR  |   2 A$bloxorz$746      02C4 GR
  2 A$bloxorz$747      02C6 GR  |   2 A$bloxorz$748      02C9 GR
  2 A$bloxorz$749      02CB GR  |   2 A$bloxorz$75       0023 GR
  2 A$bloxorz$750      02CC GR  |   2 A$bloxorz$751      02CE GR
  2 A$bloxorz$752      02D0 GR  |   2 A$bloxorz$753      02D2 GR
  2 A$bloxorz$754      02D4 GR  |   2 A$bloxorz$755      02D6 GR
  2 A$bloxorz$758      02D8 GR  |   2 A$bloxorz$759      02DA GR
  2 A$bloxorz$76       0026 GR  |   2 A$bloxorz$760      02DC GR
  2 A$bloxorz$766      02DF GR  |   2 A$bloxorz$767      02E2 GR
  2 A$bloxorz$768      02E3 GR  |   2 A$bloxorz$769      02E5 GR
  2 A$bloxorz$770      02E6 GR  |   2 A$bloxorz$771      02E7 GR
  2 A$bloxorz$772      02EA GR  |   2 A$bloxorz$773      02EC GR
  2 A$bloxorz$777      02EE GR  |   2 A$bloxorz$782      02F0 GR
  2 A$bloxorz$785      02F3 GR  |   2 A$bloxorz$786      02F5 GR
  2 A$bloxorz$794      02F7 GR  |   2 A$bloxorz$795      02FA GR
  2 A$bloxorz$801      02FC GR  |   2 A$bloxorz$802      02FF GR
  2 A$bloxorz$803      0302 GR  |   2 A$bloxorz$804      0304 GR
  2 A$bloxorz$806      0306 GR  |   2 A$bloxorz$813      0307 GR
  2 A$bloxorz$814      030A GR  |   2 A$bloxorz$820      030D GR
  2 A$bloxorz$821      0310 GR  |   2 A$bloxorz$827      0313 GR
  2 A$bloxorz$833      0316 GR  |   2 A$bloxorz$834      0319 GR
  2 A$bloxorz$840      031C GR  |   2 A$bloxorz$841      031F GR
  2 A$bloxorz$844      0320 GR  |   2 A$bloxorz$845      0322 GR
  2 A$bloxorz$854      0324 GR  |   2 A$bloxorz$855      0326 GR
  2 A$bloxorz$86       0028 GR  |   2 A$bloxorz$861      0329 GR
  2 A$bloxorz$862      032B GR  |   2 A$bloxorz$868      032E GR
  2 A$bloxorz$869      0330 GR  |   2 A$bloxorz$87       002A GR
  2 A$bloxorz$875      0333 GR  |   2 A$bloxorz$876      0336 GR
  2 A$bloxorz$88       002C GR  |   2 A$bloxorz$882      0338 GR
  2 A$bloxorz$888      033B GR  |   2 A$bloxorz$889      033D GR
  2 A$bloxorz$89       002E GR  |   2 A$bloxorz$890      033F GR
  2 A$bloxorz$893      0340 GR  |   2 A$bloxorz$894      0342 GR
  2 A$bloxorz$90       0031 GR  |   2 A$bloxorz$900      0345 GR
  2 A$bloxorz$906      0348 GR  |   2 A$bloxorz$907      034B GR
  2 A$bloxorz$908      034E GR  |   2 A$bloxorz$909      0351 GR
  2 A$bloxorz$91       0033 GR  |   2 A$bloxorz$910      0354 GR
  2 A$bloxorz$911      0357 GR  |   2 A$bloxorz$917      035A GR
  2 A$bloxorz$918      035C GR  |   2 A$bloxorz$919      0360 GR
  2 A$bloxorz$92       0035 GR  |   2 A$bloxorz$920      0362 GR
  2 A$bloxorz$921      0365 GR  |   2 A$bloxorz$928      0367 GR
  2 A$bloxorz$929      036A GR  |   2 A$bloxorz$93       0036 GR
  2 A$bloxorz$930      036C GR  |   2 A$bloxorz$931      036F GR
  2 A$bloxorz$932      0371 GR  |   2 A$bloxorz$94       0037 GR
  2 A$bloxorz$942      0373 GR  |   2 A$bloxorz$943      0375 GR
  2 A$bloxorz$944      0377 GR  |   2 A$bloxorz$945      037A GR
  2 A$bloxorz$946      037D GR  |   2 A$bloxorz$947      037F GR
  2 A$bloxorz$948      0381 GR  |   2 A$bloxorz$949      0382 GR
  2 A$bloxorz$95       0039 GR  |   2 A$bloxorz$950      0383 GR
  2 A$bloxorz$951      0385 GR  |   2 A$bloxorz$952      0387 GR
  2 A$bloxorz$953      0389 GR  |   2 A$bloxorz$954      038B GR
  2 A$bloxorz$955      038D GR  |   2 A$bloxorz$956      038F GR
  2 A$bloxorz$96       003B GR  |   2 A$bloxorz$963      0391 GR
  2 A$bloxorz$969      0393 GR  |   2 A$bloxorz$97       003D GR
  2 A$bloxorz$970      0396 GR  |   2 A$bloxorz$971      0398 GR
  2 A$bloxorz$972      039A GR  |   2 A$bloxorz$973      039C GR
  2 A$bloxorz$974      039E GR  |   2 A$bloxorz$975      03A0 GR
  2 A$bloxorz$976      03A2 GR  |   2 A$bloxorz$977      03A4 GR
  2 A$bloxorz$978      03A7 GR  |   2 A$bloxorz$979      03A9 GR
  2 A$bloxorz$98       003F GR  |   2 A$bloxorz$980      03AB GR
  2 A$bloxorz$987      03AE GR  |   2 A$bloxorz$988      03B0 GR
  2 A$bloxorz$989      03B2 GR  |   2 A$bloxorz$99       0041 GR
  2 A$bloxorz$990      03B4 GR  |   2 A$bloxorz$991      03B6 GR
  2 A$bloxorz$992      03B8 GR  |   2 A$bloxorz$993      03BA GR
  2 A$bloxorz$994      03BC GR  |   2 A$bloxorz$995      03BE GR
  2 A$bloxorz$996      03C0 GR  |   2 A$bloxorz$997      03C3 GR
  2 A$bloxorz$998      03C5 GR  |   2 A$bloxorz$999      03C7 GR
  2 L100               063D R   |   2 L101               0620 R
  2 L107               06AA R   |   2 L108               0779 R
  2 L109               0751 R   |   2 L110               07A7 R
  2 L114               0937 R   |   2 L115               088C R
  2 L116               094A R   |   2 L119               0950 R
  2 L12                009A R   |   2 L120               0917 R
  2 L121               092B R   |   2 L122               0857 R
  2 L131               0A08 R   |   2 L132               095D R
  2 L133               0957 R   |   2 L135               0AA6 R
  2 L137               0B4E R   |   2 L139               0AE5 R
  2 L140               0B6E R   |   2 L142               0B02 R
  2 L143               0B55 R   |   2 L146               0B2E R
  2 L147               0B75 R   |   2 L148               0B60 R
  2 L150               0B7B R   |   2 L151               0B68 R
  2 L152               0B6B R   |   2 L153               0BA1 R
  2 L154               0BA4 R   |   2 L155               0B3D R
  2 L156               0B49 R   |   2 L157               0B7E R
  2 L158               0B99 R   |   2 L159               0BA7 R
  2 L160               0B22 R   |   2 L161               0BC7 R
  2 L164               0C50 R   |   2 L167               0CE7 R
  2 L171               0CF9 R   |   2 L172               0D09 R
  2 L173               0CFD R   |   2 L174               0D15 R
  2 L175               0D22 R   |   2 L178               0D62 R
  2 L183               0D75 R   |   2 L185               1010 R
  2 L186               0DA5 R   |   2 L189               0DAF R
  2 L191               0DBC R   |   2 L192               0DD1 R
  2 L193               0E97 R   |   2 L196               0EA0 R
  2 L197               0E7B R   |   2 L198               0E87 R
  2 L199               0DDF R   |   2 L2                 001F R
  2 L201               0F52 R   |   2 L202               0F35 R
  2 L203               0F17 R   |   2 L204               0F95 R
  2 L206               0FE2 R   |   2 L207               0FC3 R
  2 L208               0FA4 R   |   2 L221               1026 R
  2 L222               104C R   |   2 L223               0EB1 R
  2 L224               0E00 R   |   2 L225               1008 R
  2 L226               101D R   |   2 L228               1083 R
  2 L231               1090 R   |   2 L232               112B R
  2 L235               11BE R   |   2 L236               11F3 R
  2 L237               11CB R   |   2 L239               11B5 R
  2 L240               11D2 R   |   2 L242               1261 R
  2 L243               12D6 R   |   2 L244               12F2 R
  2 L245               12EC R   |   2 L246               1390 R
  2 L247               1374 R   |   2 L248               12D3 R
  2 L249               12C9 R   |   2 L250               1371 R
  2 L251               1384 R   |   2 L252               138D R
  2 L253               1292 R   |   2 L255               143D R
  2 L256               1396 R   |   2 L257               1437 R
  2 L32                0306 R   |   2 L33                0307 R
  2 L37                0367 R   |   2 L39                03AE R
  2 L4                 0062 R   |   2 L40                0391 R
  2 L41                0373 R   |   2 L42                03ED R
  2 L44                0432 R   |   2 L45                0416 R
  2 L46                03F9 R   |   2 L5                 0045 R
  2 L53                050E R   |   2 L56                0514 R
  2 L57                04F2 R   |   2 L58                04FE R
  2 L59                0460 R   |   2 L6                 0028 R
  2 L68                0524 R   |   2 L69                047F R
  2 L70                0534 R   |   2 L72                055E R
  2 L73                067C R   |   2 L74                06D5 R
  2 L76                06A7 R   |   2 L78                0730 R
  2 L79                07EC R   |   2 L81                06F5 R
  2 L83                06F8 R   |   2 L84                07D0 R
  2 L86                06D2 R   |   2 L88                0717 R
  2 L89                080D R   |   2 L91                056C R
  2 L92                058B R   |   2 L94                05D3 R
  2 L95                05B6 R   |   2 L96                0598 R
  2 L97                0614 R   |   2 L99                065A R
  2 LC0                14A7 R   |   2 LC1                1574 R
  2 LC2                1641 R   |     _Vec_Text_Widt     **** GX
    ___DP_to_C8        **** GX  |     ___DP_to_D0        **** GX
    ___Do_Sound        **** GX  |     ___Draw_VLp_7F     **** GX
    ___Init_Music_     **** GX  |     ___Intensity_a     **** GX
    ___Joy_Digital     **** GX  |     ___Moveto_d_7F     **** GX
    ___Print_Str_d     **** GX  |     ___Reset0Ref       **** GX
    ___Wait_Recal      **** GX  |   2 _addLine           00E6 GR
  2 _addTarget         016C GR  |   4 _blockAnimatin     01F5 GR
  4 _blockAnimatio     01F0 GR  |   4 _blockAnimatio     01F4 GR
  2 _blockFalling      106F GR  |   2 _blockMoving       0A27 GR
  2 _blockMovingAt     1132 GR  |   2 _blockMovingTo     0BCD GR
  4 _blockOrientat     01ED GR  |   2 _blockWaiting      0C54 GR
  4 _blockX            01EE GR  |   4 _blockY            01EF GR
  4 _blockYOfs         01F9 GR  |   2 _changeMusic       0229 GR
  3 _currentMusic      0000 GR  |     _delay10ms         **** GX
  2 _depth2Rolling     36D6 GR  |   2 _depth2Rolling     18A2 GR
  2 _depth2Rolling     1B00 GR  |   2 _depth2Rolling     3084 GR
  2 _depth2Rolling     32E8 GR  |   2 _depth2Rolling     354C GR
  2 _depth2Rolling     1D64 GR  |   2 _depth2Rolling     1FC8 GR
  2 _depth2Rolling     222C GR  |   2 _depth2Rolling     2490 GR
  2 _depth2Rolling     26F4 GR  |   2 _depth2Rolling     2958 GR
  2 _depth2Rolling     2BBC GR  |   2 _depth2Rolling     2E20 GR
  2 _depth2Rolling     36EE GR  |   2 _depth2Rolling     18D3 GR
  2 _depth2Rolling     1B31 GR  |   2 _depth2Rolling     30B5 GR
  2 _depth2Rolling     3319 GR  |   2 _depth2Rolling     357D GR
  2 _depth2Rolling     1D95 GR  |   2 _depth2Rolling     1FF9 GR
  2 _depth2Rolling     225D GR  |   2 _depth2Rolling     24C1 GR
  2 _depth2Rolling     2725 GR  |   2 _depth2Rolling     2989 GR
  2 _depth2Rolling     2BED GR  |   2 _depth2Rolling     2E51 GR
  2 _doBlockAnimat     02F7 GR  |   2 _drawBlock         0284 GR
  2 _drawField         0232 GR  |   3 _endX              000B GR
  3 _endY              000C GR  |   2 _fallingMusic      147F GR
  4 _gameState         01FE GR  |   2 _height2Fallin     3676 GR
  2 _height2Fallin     17D8 GR  |   2 _height2Fallin     1A33 GR
  2 _height2Fallin     2FB7 GR  |   2 _height2Fallin     321B GR
  2 _height2Fallin     347F GR  |   2 _height2Fallin     1C97 GR
  2 _height2Fallin     1EFB GR  |   2 _height2Fallin     215F GR
  2 _height2Fallin     23C3 GR  |   2 _height2Fallin     2627 GR
  2 _height2Fallin     288B GR  |   2 _height2Fallin     2AEF GR
  2 _height2Fallin     2D53 GR  |   2 _height2Fallin     36A6 GR
  2 _height2Fallin     183D GR  |   2 _height2Fallin     1A9B GR
  2 _height2Fallin     301F GR  |   2 _height2Fallin     3283 GR
  2 _height2Fallin     34E7 GR  |   2 _height2Fallin     1CFF GR
  2 _height2Fallin     1F63 GR  |   2 _height2Fallin     21C7 GR
  2 _height2Fallin     242B GR  |   2 _height2Fallin     268F GR
  2 _height2Fallin     28F3 GR  |   2 _height2Fallin     2B57 GR
  2 _height2Fallin     2DBB GR  |   2 _height2Fallin     3616 GR
  2 _height2Fallin     170E GR  |   2 _height2Fallin     1966 GR
  2 _height2Fallin     2EEA GR  |   2 _height2Fallin     314E GR
  2 _height2Fallin     33B2 GR  |   2 _height2Fallin     1BCA GR
  2 _height2Fallin     1E2E GR  |   2 _height2Fallin     2092 GR
  2 _height2Fallin     22F6 GR  |   2 _height2Fallin     255A GR
  2 _height2Fallin     27BE GR  |   2 _height2Fallin     2A22 GR
  2 _height2Fallin     2C86 GR  |   2 _height2Fallin     3646 GR
  2 _height2Fallin     1773 GR  |   2 _height2Fallin     19CB GR
  2 _height2Fallin     2F4F GR  |   2 _height2Fallin     31B3 GR
  2 _height2Fallin     3417 GR  |   2 _height2Fallin     1C2F GR
  2 _height2Fallin     1E93 GR  |   2 _height2Fallin     20F7 GR
  2 _height2Fallin     235B GR  |   2 _height2Fallin     25BF GR
  2 _height2Fallin     2823 GR  |   2 _height2Fallin     2A87 GR
  2 _height2Fallin     2CEB GR  |   2 _height2Rising     36BE GR
  2 _height2Rising     186E GR  |   2 _height2Rising     1ACC GR
  2 _height2Rising     3050 GR  |   2 _height2Rising     32B4 GR
  2 _height2Rising     3518 GR  |   2 _height2Rising     1D30 GR
  2 _height2Rising     1F94 GR  |   2 _height2Rising     21F8 GR
  2 _height2Rising     245C GR  |   2 _height2Rising     26C0 GR
  2 _height2Rising     2924 GR  |   2 _height2Rising     2B88 GR
  2 _height2Rising     2DEC GR  |   2 _height2Rising     368E GR
  2 _height2Rising     1809 GR  |   2 _height2Rising     1A67 GR
  2 _height2Rising     2FEB GR  |   2 _height2Rising     324F GR
  2 _height2Rising     34B3 GR  |   2 _height2Rising     1CCB GR
  2 _height2Rising     1F2F GR  |   2 _height2Rising     2193 GR
  2 _height2Rising     23F7 GR  |   2 _height2Rising     265B GR
  2 _height2Rising     28BF GR  |   2 _height2Rising     2B23 GR
  2 _height2Rising     2D87 GR  |   2 _height2Rising     365E GR
  2 _height2Rising     17A4 GR  |   2 _height2Rising     19FF GR
  2 _height2Rising     2F83 GR  |   2 _height2Rising     31E7 GR
  2 _height2Rising     344B GR  |   2 _height2Rising     1C63 GR
  2 _height2Rising     1EC7 GR  |   2 _height2Rising     212B GR
  2 _height2Rising     238F GR  |   2 _height2Rising     25F3 GR
  2 _height2Rising     2857 GR  |   2 _height2Rising     2ABB GR
  2 _height2Rising     2D1F GR  |   2 _height2Rising     362E GR
  2 _height2Rising     173F GR  |   2 _height2Rising     1997 GR
  2 _height2Rising     2F1B GR  |   2 _height2Rising     317F GR
  2 _height2Rising     33E3 GR  |   2 _height2Rising     1BFB GR
  2 _height2Rising     1E5F GR  |   2 _height2Rising     20C3 GR
  2 _height2Rising     2327 GR  |   2 _height2Rising     258B GR
  2 _height2Rising     27EF GR  |   2 _height2Rising     2A53 GR
  2 _height2Rising     2CB7 GR  |   4 _infoText          0000 GR
  2 _isField           0084 GR  |   2 _itoa              0000 GR
  4 _lastBlockDire     01F8 GR  |   4 _level             01FA GR
  3 _level0            0002 GR  |   3 _level1            0004 GR
  3 _level2            0006 GR  |   2 _levelEndMusic     1465 GR
  4 _levelHighscor     01FC GR  |   3 _levelNumber       000D GR
  3 _lineCount         0008 GR  |   4 _lineX0            000D GR
  4 _lineX1            00FD GR  |   4 _lineY0            0085 GR
  4 _lineY1            0175 GR  |   2 _main              1214 GR
  2 _moveBlock         053A GR  |   4 _moveCount         000A GR
  2 _movingMusic       149F GR  |   4 _nextBlockAnim     01F2 GR
  4 _nextBlockX        01F6 GR  |   4 _nextBlockY        01F7 GR
  4 _picAvailable      000C GR  |     _picRead           **** GX
    _picWrite          **** GX  |   2 _readEeprom        0D65 GR
  2 _sendCommand       0320 GR  |   2 _setupX            0847 GR
  2 _setupY            0454 GR  |   2 _startBlockFal     082D GR
  2 _startLevel        0D91 GR  |   2 _startMusic        1445 GR
  3 _startX            0009 GR  |   3 _startY            000A GR
  2 _updateInfoTex     0340 GR  |   2 _width2Rolling     371E GR
  2 _width2Rolling     1935 GR  |   2 _width2Rolling     1B96 GR
  2 _width2Rolling     311A GR  |   2 _width2Rolling     337E GR
  2 _width2Rolling     35E2 GR  |   2 _width2Rolling     1DFA GR
  2 _width2Rolling     205E GR  |   2 _width2Rolling     22C2 GR
  2 _width2Rolling     2526 GR  |   2 _width2Rolling     278A GR
  2 _width2Rolling     29EE GR  |   2 _width2Rolling     2C52 GR
  2 _width2Rolling     2EB6 GR  |   2 _width2Rolling     3706 GR
  2 _width2Rolling     1904 GR  |   2 _width2Rolling     1B65 GR
  2 _width2Rolling     30E9 GR  |   2 _width2Rolling     334D GR
  2 _width2Rolling     35B1 GR  |   2 _width2Rolling     1DC9 GR
  2 _width2Rolling     202D GR  |   2 _width2Rolling     2291 GR
  2 _width2Rolling     24F5 GR  |   2 _width2Rolling     2759 GR
  2 _width2Rolling     29BD GR  |   2 _width2Rolling     2C21 GR
  2 _width2Rolling     2E85 GR  |   2 _writeEeprom       0D2F GR
  2 _x3d               009D GR  |   2 _y3d               00C3 GR
  2 drawFieldLoop      0249 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size 3736   flags  100
   3 .data            size    E   flags  100
   4 .bss             size  1FF   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

