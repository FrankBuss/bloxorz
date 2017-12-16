                              1 
                              2 ;;; gcc for m6809 : Sep 13 2017 10:25:42
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	bloxorz.enr.c
                              7 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              8 ; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
                              9 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                             10 ;  options passed:  -O3 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             11 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             12 ;  -fno-time-report
                             13 ;  -I/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf
                             14 ;  -DOMMIT_FRAMEPOINTER=1
                             15 ;  -I/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/include
                             16 ;  /home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c
                             17 ;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             18 ;  -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
                             19 ;  -fcrossjumping -fcse-follow-jumps -fdefer-pop
                             20 ;  -fdelete-null-pointer-checks -fearly-inlining
                             21 ;  -feliminate-unused-debug-types -fexpensive-optimizations
                             22 ;  -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
                             23 ;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             24 ;  -finline-functions -finline-functions-called-once
                             25 ;  -finline-small-functions -fipa-pure-const -fipa-reference -fivopts
                             26 ;  -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             27 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             28 ;  -foptimize-register-move -foptimize-sibling-calls -fpcc-struct-return
                             29 ;  -fpeephole -fpeephole2 -fpredictive-commoning -fregmove -freorder-blocks
                             30 ;  -freorder-functions -frerun-cse-after-loop -fsched-interblock
                             31 ;  -fsched-spec -fsched-stalled-insns-dep -fsigned-zeros
                             32 ;  -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
                             33 ;  -fstrict-overflow -fthread-jumps -ftoplevel-reorder -ftrapping-math
                             34 ;  -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             35 ;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             36 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             37 ;  -ftree-pre -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink
                             38 ;  -ftree-sra -ftree-store-ccp -ftree-ter -ftree-vect-loop-version
                             39 ;  -ftree-vectorize -ftree-vrp -funit-at-a-time -funswitch-loops
                             40 ;  -fverbose-asm -fzero-initialized-in-bss
                             41 
                             42 ;  Compiler executable checksum: 2c98d3c5ec6c12badb1abdde57df156f
                             43 
                             44 	.area .text
                             45 	.globl _isField
   01E6                      46 _isField:
                             47 ;----- asm -----
                             48 ;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                             49 	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
                             50 ;  0 "" 2
                             51 ;--- end asm ---
   01E6 C1 2E         [ 2]   52 	cmpb	#46	;cmpqi:	;  c,
   01E8 27 12         [ 3]   53 	beq	L2	; 
   01EA C1 61         [ 2]   54 	cmpb	#97	;cmpqi:	;  c,
   01EC 27 0E         [ 3]   55 	beq	L2	; 
   01EE C8 6F         [ 2]   56 	eorb	#111	;  c,
   01F0 4F            [ 2]   57 	clra		;zero_extendqihi: R:b -> R:d	;  c, tmp32
   01F1 C3 FF FF      [ 4]   58 	addd	#-1	;  tmp33,
   01F4 1F 89         [ 6]   59 	tfr	a,b	; ,
   01F6 4F            [ 2]   60 	clra		;zero_extendqihi: R:b -> R:d	; ,
   01F7 59            [ 2]   61 	rolb	; 
   01F8 59            [ 2]   62 	rolb	; 
   01F9 C4 01         [ 2]   63 	andb	#1	; ,
   01FB 39            [ 5]   64 	rts
   01FC                      65 L2:
   01FC C6 01         [ 2]   66 	ldb	#1	;  prephitmp.116,
   01FE 39            [ 5]   67 	rts
                             68 	.globl _x3d
   01FF                      69 _x3d:
   01FF 34 20         [ 6]   70 	pshs	y	; 
   0201 32 7E         [ 5]   71 	leas	-2,s	; ,,
   0203 E7 E4         [ 4]   72 	stb	,s	;  x, x
                             73 ;----- asm -----
                             74 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                             75 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                             76 ;  0 "" 2
                             77 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                             78 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                             79 ;  0 "" 2
                             80 ;--- end asm ---
   0205 E6 67         [ 5]   81 	ldb	7,s	; , z
   0207 86 FA         [ 2]   82 	lda	#-6	;mulqihi3	; 
   0209 3D            [11]   83 	mul
   020A 1F 02         [ 6]   84 	tfr	d,y	; , tmp32
   020C E6 E4         [ 4]   85 	ldb	,s	; , x
   020E CB FE         [ 2]   86 	addb	#-2	; ,
   0210 86 0E         [ 2]   87 	lda	#14	;mulqihi3	; 
   0212 3D            [11]   88 	mul
   0213 1F 01         [ 6]   89 	tfr	d,x	; , tmp34
   0215 1F 20         [ 6]   90 	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp32,
   0217 E7 E4         [ 4]   91 	stb	,s	; ,
   0219 1F 10         [ 6]   92 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp34,
   021B E7 61         [ 5]   93 	stb	1,s	; ,
   021D E6 E4         [ 4]   94 	ldb	,s	; ,
   021F EB 61         [ 5]   95 	addb	1,s	; ,
   0221 32 62         [ 5]   96 	leas	2,s	; ,,
   0223 35 A0         [ 7]   97 	puls	y,pc	; 
                             98 	.globl _y3d
   0225                      99 _y3d:
   0225 34 04         [ 6]  100 	pshs	b	; 
                            101 ;----- asm -----
                            102 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            103 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                            104 ;  0 "" 2
                            105 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            106 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                            107 ;  0 "" 2
                            108 ;--- end asm ---
   0227 E6 63         [ 5]  109 	ldb	3,s	; , y
   0229 CB F8         [ 2]  110 	addb	#-8	; ,
   022B 86 0D         [ 2]  111 	lda	#13	;mulqihi3	; 
   022D 3D            [11]  112 	mul
   022E 1F 01         [ 6]  113 	tfr	d,x	; , tmp33
   0230 68 64         [ 7]  114 	asl	4,s	;  z
   0232 68 64         [ 7]  115 	asl	4,s	;  z
   0234 68 64         [ 7]  116 	asl	4,s	;  z
   0236 1F 10         [ 6]  117 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp33, tmp36
   0238 EB 64         [ 5]  118 	addb	4,s	;  tmp36, z
   023A E7 64         [ 5]  119 	stb	4,s	;  tmp36, z
   023C E6 E4         [ 4]  120 	ldb	,s	;  tmp38, x
   023E 58            [ 2]  121 	aslb	;  tmp38
   023F EB E4         [ 4]  122 	addb	,s	;  tmp38, x
   0241 EB 64         [ 5]  123 	addb	4,s	;  tmp38, z
   0243 E7 64         [ 5]  124 	stb	4,s	;  tmp38, z
   0245 32 61         [ 5]  125 	leas	1,s	; ,,
   0247 39            [ 5]  126 	rts
                            127 	.globl _addLine
   0248                     128 _addLine:
   0248 34 60         [ 7]  129 	pshs	y,u	; 
   024A 32 7C         [ 5]  130 	leas	-4,s	; ,,
   024C E7 62         [ 5]  131 	stb	2,s	;  x0, x0
                            132 ;----- asm -----
                            133 ;  202 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            134 	; #ENR#[195]	lineX0[lineCount] = x3d(x0, 0, y0);
                            135 ;  0 "" 2
                            136 ;--- end asm ---
   024E F6 C8 90      [ 5]  137 	ldb	_lineCount	; , lineCount
   0251 E7 63         [ 5]  138 	stb	3,s	; , lineCount.51
                            139 ;----- asm -----
                            140 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            141 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                            142 ;  0 "" 2
                            143 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            144 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                            145 ;  0 "" 2
                            146 ;--- end asm ---
   0253 1D            [ 2]  147 	sex		;extendqihi2: R:b -> R:d	; ,
   0254 1F 02         [ 6]  148 	tfr	d,y	; , lineCount.51
   0256 E6 6A         [ 5]  149 	ldb	10,s	; , y0
   0258 86 FA         [ 2]  150 	lda	#-6	;mulqihi3	; 
   025A 3D            [11]  151 	mul
   025B 1F 01         [ 6]  152 	tfr	d,x	; , tmp35
   025D E6 62         [ 5]  153 	ldb	2,s	; , x0
   025F CB FE         [ 2]  154 	addb	#-2	; ,
   0261 E7 62         [ 5]  155 	stb	2,s	; , x0
   0263 86 0E         [ 2]  156 	lda	#14	;mulqihi3	; 
   0265 3D            [11]  157 	mul
   0266 1F 03         [ 6]  158 	tfr	d,u	; , tmp37
   0268 E6 62         [ 5]  159 	ldb	2,s	; , x0
   026A CB 02         [ 2]  160 	addb	#2	; ,
   026C E7 62         [ 5]  161 	stb	2,s	; , x0
   026E 1F 10         [ 6]  162 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp35,
   0270 E7 61         [ 5]  163 	stb	1,s	; ,
   0272 1F 30         [ 6]  164 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp37, tmp39
   0274 EB 61         [ 5]  165 	addb	1,s	;  tmp39,
   0276 E7 A9 C8 96   [ 8]  166 	stb	_lineX0,y	;  tmp39, lineX0
                            167 ;----- asm -----
                            168 ;  204 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            169 	; #ENR#[196]	lineY0[lineCount] = y3d(x0, 0, y0);
                            170 ;  0 "" 2
                            171 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            172 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                            173 ;  0 "" 2
                            174 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            175 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                            176 ;  0 "" 2
                            177 ;--- end asm ---
   027A E6 62         [ 5]  178 	ldb	2,s	;  tmp44, x0
   027C 58            [ 2]  179 	aslb	;  tmp44
   027D EB 62         [ 5]  180 	addb	2,s	;  tmp44, x0
   027F CB 98         [ 2]  181 	addb	#-104	;  tmp44,
   0281 68 6A         [ 7]  182 	asl	10,s	;  y0
   0283 68 6A         [ 7]  183 	asl	10,s	;  y0
   0285 68 6A         [ 7]  184 	asl	10,s	;  y0
   0287 EB 6A         [ 5]  185 	addb	10,s	;  tmp44, y0
   0289 E7 A9 C9 0E   [ 8]  186 	stb	_lineY0,y	;  tmp44, lineY0
                            187 ;----- asm -----
                            188 ;  206 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            189 	; #ENR#[197]	lineX1[lineCount] = x3d(x1, 0, y1);
                            190 ;  0 "" 2
                            191 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            192 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                            193 ;  0 "" 2
                            194 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            195 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                            196 ;  0 "" 2
                            197 ;--- end asm ---
   028D E6 6C         [ 5]  198 	ldb	12,s	; , y1
   028F 86 FA         [ 2]  199 	lda	#-6	;mulqihi3	; 
   0291 3D            [11]  200 	mul
   0292 1F 01         [ 6]  201 	tfr	d,x	; , tmp51
   0294 E6 6B         [ 5]  202 	ldb	11,s	; , x1
   0296 CB FE         [ 2]  203 	addb	#-2	; ,
   0298 E7 6B         [ 5]  204 	stb	11,s	; , x1
   029A 86 0E         [ 2]  205 	lda	#14	;mulqihi3	; 
   029C 3D            [11]  206 	mul
   029D 1F 03         [ 6]  207 	tfr	d,u	; , tmp53
   029F E6 6B         [ 5]  208 	ldb	11,s	; , x1
   02A1 CB 02         [ 2]  209 	addb	#2	; ,
   02A3 E7 6B         [ 5]  210 	stb	11,s	; , x1
   02A5 1F 10         [ 6]  211 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp51,
   02A7 E7 E4         [ 4]  212 	stb	,s	; ,
   02A9 1F 30         [ 6]  213 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp53, tmp55
   02AB EB E4         [ 4]  214 	addb	,s	;  tmp55,
   02AD E7 A9 C9 86   [ 8]  215 	stb	_lineX1,y	;  tmp55, lineX1
                            216 ;----- asm -----
                            217 ;  208 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            218 	; #ENR#[198]	lineY1[lineCount] = y3d(x1, 0, y1);
                            219 ;  0 "" 2
                            220 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            221 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                            222 ;  0 "" 2
                            223 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            224 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                            225 ;  0 "" 2
                            226 ;--- end asm ---
   02B1 E6 6B         [ 5]  227 	ldb	11,s	;  tmp60, x1
   02B3 58            [ 2]  228 	aslb	;  tmp60
   02B4 EB 6B         [ 5]  229 	addb	11,s	;  tmp60, x1
   02B6 CB 98         [ 2]  230 	addb	#-104	;  tmp60,
   02B8 68 6C         [ 7]  231 	asl	12,s	;  y1
   02BA 68 6C         [ 7]  232 	asl	12,s	;  y1
   02BC 68 6C         [ 7]  233 	asl	12,s	;  y1
   02BE EB 6C         [ 5]  234 	addb	12,s	;  tmp60, y1
   02C0 E7 A9 C9 FE   [ 8]  235 	stb	_lineY1,y	;  tmp60, lineY1
                            236 ;----- asm -----
                            237 ;  210 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            238 	; #ENR#[199]	lineCount++;
                            239 ;  0 "" 2
                            240 ;--- end asm ---
   02C4 E6 63         [ 5]  241 	ldb	3,s	; , lineCount.51
   02C6 5C            [ 2]  242 	incb	; 
   02C7 F7 C8 90      [ 5]  243 	stb	_lineCount	; , lineCount
   02CA 32 64         [ 5]  244 	leas	4,s	; ,,
   02CC 35 E0         [ 8]  245 	puls	y,u,pc	; 
                            246 	.globl _addTarget
   02CE                     247 _addTarget:
   02CE 34 40         [ 6]  248 	pshs	u	; 
   02D0 32 73         [ 5]  249 	leas	-13,s	; ,,
   02D2 E7 61         [ 5]  250 	stb	1,s	;  x, x
                            251 ;----- asm -----
                            252 ;  216 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            253 	; #ENR#[204]	lineX0[lineCount] = x3d(x, 0, y);
                            254 ;  0 "" 2
                            255 ;--- end asm ---
   02D4 F6 C8 90      [ 5]  256 	ldb	_lineCount	; , lineCount
   02D7 E7 62         [ 5]  257 	stb	2,s	; , lineCount.53
                            258 ;----- asm -----
                            259 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            260 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                            261 ;  0 "" 2
                            262 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            263 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                            264 ;  0 "" 2
                            265 ;--- end asm ---
   02D9 E6 61         [ 5]  266 	ldb	1,s	; , x
   02DB CB FE         [ 2]  267 	addb	#-2	; ,
   02DD E7 61         [ 5]  268 	stb	1,s	; , x
   02DF 86 0E         [ 2]  269 	lda	#14	;mulqihi3	; 
   02E1 3D            [11]  270 	mul
   02E2 1F 01         [ 6]  271 	tfr	d,x	; , tmp42
   02E4 E6 61         [ 5]  272 	ldb	1,s	; , x
   02E6 CB 02         [ 2]  273 	addb	#2	; ,
   02E8 E7 61         [ 5]  274 	stb	1,s	; , x
   02EA 1F 10         [ 6]  275 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp42,
   02EC E7 67         [ 5]  276 	stb	7,s	; , D.2405
   02EE E6 E8 11      [ 5]  277 	ldb	17,s	; , y
   02F1 86 FA         [ 2]  278 	lda	#-6	;mulqihi3	; 
   02F3 3D            [11]  279 	mul
   02F4 1F 01         [ 6]  280 	tfr	d,x	; , tmp43
   02F6 1F 10         [ 6]  281 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp43,
   02F8 E7 66         [ 5]  282 	stb	6,s	; , D.2406
   02FA E6 62         [ 5]  283 	ldb	2,s	; , lineCount.53
   02FC 1D            [ 2]  284 	sex		;extendqihi2: R:b -> R:d	; ,
   02FD 1F 01         [ 6]  285 	tfr	d,x	; , lineCount.53
   02FF E6 66         [ 5]  286 	ldb	6,s	; , D.2406
   0301 EB 67         [ 5]  287 	addb	7,s	; , D.2405
   0303 E7 89 C8 96   [ 8]  288 	stb	_lineX0,x	; , lineX0
                            289 ;----- asm -----
                            290 ;  218 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            291 	; #ENR#[205]	lineY0[lineCount] = y3d(x, 0, y);
                            292 ;  0 "" 2
                            293 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            294 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                            295 ;  0 "" 2
                            296 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            297 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                            298 ;  0 "" 2
                            299 ;--- end asm ---
   0307 E6 61         [ 5]  300 	ldb	1,s	; , x
   0309 58            [ 2]  301 	aslb	; 
   030A EB 61         [ 5]  302 	addb	1,s	; , x
   030C CB 98         [ 2]  303 	addb	#-104	; ,
   030E E7 69         [ 5]  304 	stb	9,s	; , D.2414
   0310 E6 E8 11      [ 5]  305 	ldb	17,s	; , y
   0313 58            [ 2]  306 	aslb	; 
   0314 58            [ 2]  307 	aslb	; 
   0315 58            [ 2]  308 	aslb	; 
   0316 E7 68         [ 5]  309 	stb	8,s	; , D.2415
   0318 EB 69         [ 5]  310 	addb	9,s	; , D.2414
   031A E7 89 C9 0E   [ 8]  311 	stb	_lineY0,x	; , lineY0
                            312 ;----- asm -----
                            313 ;  220 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            314 	; #ENR#[206]	lineX1[lineCount] = x3d(x + 1, 0, y + 1);
                            315 ;  0 "" 2
                            316 ;--- end asm ---
   031E E6 E8 11      [ 5]  317 	ldb	17,s	; , y
   0321 5C            [ 2]  318 	incb	; 
   0322 E7 63         [ 5]  319 	stb	3,s	; , D.2079
   0324 E6 61         [ 5]  320 	ldb	1,s	; , x
   0326 5C            [ 2]  321 	incb	; 
   0327 E7 64         [ 5]  322 	stb	4,s	; , D.2080
                            323 ;----- asm -----
                            324 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            325 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                            326 ;  0 "" 2
                            327 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            328 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                            329 ;  0 "" 2
                            330 ;--- end asm ---
   0329 6A 61         [ 7]  331 	dec	1,s	;  x
   032B E6 61         [ 5]  332 	ldb	1,s	; , x
   032D 86 0E         [ 2]  333 	lda	#14	;mulqihi3	; 
   032F 3D            [11]  334 	mul
   0330 1F 03         [ 6]  335 	tfr	d,u	; , tmp54
   0332 1F 30         [ 6]  336 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp54,
   0334 E7 6B         [ 5]  337 	stb	11,s	; , D.2421
   0336 E6 63         [ 5]  338 	ldb	3,s	; , D.2079
   0338 86 FA         [ 2]  339 	lda	#-6	;mulqihi3	; 
   033A 3D            [11]  340 	mul
   033B 1F 03         [ 6]  341 	tfr	d,u	; , tmp55
   033D 1F 30         [ 6]  342 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp55,
   033F E7 6A         [ 5]  343 	stb	10,s	; , D.2422
   0341 EB 6B         [ 5]  344 	addb	11,s	; , D.2421
   0343 E7 89 C9 86   [ 8]  345 	stb	_lineX1,x	; , lineX1
                            346 ;----- asm -----
                            347 ;  222 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            348 	; #ENR#[207]	lineY1[lineCount] = y3d(x + 1, 0, y + 1);
                            349 ;  0 "" 2
                            350 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            351 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                            352 ;  0 "" 2
                            353 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            354 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                            355 ;  0 "" 2
                            356 ;--- end asm ---
   0347 E6 64         [ 5]  357 	ldb	4,s	; , D.2080
   0349 58            [ 2]  358 	aslb	; 
   034A EB 64         [ 5]  359 	addb	4,s	; , D.2080
   034C CB 98         [ 2]  360 	addb	#-104	; ,
   034E E7 E4         [ 4]  361 	stb	,s	; , D.2430
   0350 E6 63         [ 5]  362 	ldb	3,s	; , D.2079
   0352 58            [ 2]  363 	aslb	; 
   0353 58            [ 2]  364 	aslb	; 
   0354 58            [ 2]  365 	aslb	; 
   0355 E7 6C         [ 5]  366 	stb	12,s	; , D.2431
   0357 E6 E4         [ 4]  367 	ldb	,s	; , D.2430
   0359 EB 6C         [ 5]  368 	addb	12,s	; , D.2431
   035B E7 89 C9 FE   [ 8]  369 	stb	_lineY1,x	; , lineY1
                            370 ;----- asm -----
                            371 ;  224 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            372 	; #ENR#[208]	lineCount++;
                            373 ;  0 "" 2
                            374 ;--- end asm ---
   035F E6 62         [ 5]  375 	ldb	2,s	; , lineCount.53
   0361 5C            [ 2]  376 	incb	; 
   0362 E7 65         [ 5]  377 	stb	5,s	; , lineCount.54
                            378 ;----- asm -----
                            379 ;  226 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            380 	; #ENR#[209]	lineX0[lineCount] = x3d(x + 1, 0, y);
                            381 ;  0 "" 2
                            382 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            383 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                            384 ;  0 "" 2
                            385 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            386 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                            387 ;  0 "" 2
                            388 ;--- end asm ---
   0364 1D            [ 2]  389 	sex		;extendqihi2: R:b -> R:d	; ,
   0365 1F 01         [ 6]  390 	tfr	d,x	; , lineCount.54
   0367 E6 6B         [ 5]  391 	ldb	11,s	; , D.2421
   0369 EB 66         [ 5]  392 	addb	6,s	; , D.2406
   036B E7 89 C8 96   [ 8]  393 	stb	_lineX0,x	; , lineX0
                            394 ;----- asm -----
                            395 ;  228 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            396 	; #ENR#[210]	lineY0[lineCount] = y3d(x + 1, 0, y);
                            397 ;  0 "" 2
                            398 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            399 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                            400 ;  0 "" 2
                            401 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            402 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                            403 ;  0 "" 2
                            404 ;--- end asm ---
   036F E6 E4         [ 4]  405 	ldb	,s	; , D.2430
   0371 EB 68         [ 5]  406 	addb	8,s	; , D.2415
   0373 E7 89 C9 0E   [ 8]  407 	stb	_lineY0,x	; , lineY0
                            408 ;----- asm -----
                            409 ;  230 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            410 	; #ENR#[211]	lineX1[lineCount] = x3d(x, 0, y + 1);
                            411 ;  0 "" 2
                            412 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            413 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                            414 ;  0 "" 2
                            415 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            416 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                            417 ;  0 "" 2
                            418 ;--- end asm ---
   0377 E6 6A         [ 5]  419 	ldb	10,s	; , D.2422
   0379 EB 67         [ 5]  420 	addb	7,s	; , D.2405
   037B E7 89 C9 86   [ 8]  421 	stb	_lineX1,x	; , lineX1
                            422 ;----- asm -----
                            423 ;  232 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            424 	; #ENR#[212]	lineY1[lineCount] = y3d(x, 0, y + 1);
                            425 ;  0 "" 2
                            426 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            427 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                            428 ;  0 "" 2
                            429 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            430 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                            431 ;  0 "" 2
                            432 ;--- end asm ---
   037F E6 6C         [ 5]  433 	ldb	12,s	; , D.2431
   0381 EB 69         [ 5]  434 	addb	9,s	; , D.2414
   0383 E7 89 C9 FE   [ 8]  435 	stb	_lineY1,x	; , lineY1
                            436 ;----- asm -----
                            437 ;  234 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            438 	; #ENR#[213]	lineCount++;
                            439 ;  0 "" 2
                            440 ;--- end asm ---
   0387 E6 65         [ 5]  441 	ldb	5,s	; , lineCount.54
   0389 5C            [ 2]  442 	incb	; 
   038A F7 C8 90      [ 5]  443 	stb	_lineCount	; , lineCount
   038D 32 6D         [ 5]  444 	leas	13,s	; ,,
   038F 35 C0         [ 7]  445 	puls	u,pc	; 
                            446 	.globl _changeMusic
   0391                     447 _changeMusic:
                            448 ;----- asm -----
                            449 ;  358 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            450 	; #ENR#[296]	tstat = 1;
                            451 ;  0 "" 2
                            452 ;--- end asm ---
   0391 C6 01         [ 2]  453 	ldb	#1	; ,
   0393 F7 C8 56      [ 5]  454 	stb	-14250	; ,
                            455 ;----- asm -----
                            456 ;  360 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            457 	; #ENR#[297]	currentMusic = music;
                            458 ;  0 "" 2
                            459 ;--- end asm ---
   0396 BF C8 88      [ 6]  460 	stx	_currentMusic	;  music, currentMusic
   0399 39            [ 5]  461 	rts
                            462 	.globl _moveBlock
   039A                     463 _moveBlock:
   039A 34 04         [ 6]  464 	pshs	b	; 
                            465 ;----- asm -----
                            466 ;  366 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            467 	; #ENR#[302]	blockAnimating = 1;
                            468 ;  0 "" 2
                            469 ;--- end asm ---
   039C C6 01         [ 2]  470 	ldb	#1	; ,
   039E F7 CA 7E      [ 5]  471 	stb	_blockAnimating	; , blockAnimating
                            472 ;----- asm -----
                            473 ;  368 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            474 	; #ENR#[303]	lastBlockDirection = move;
                            475 ;  0 "" 2
                            476 ;--- end asm ---
   03A1 E6 E4         [ 4]  477 	ldb	,s	; , move
   03A3 F7 CA 81      [ 5]  478 	stb	_lastBlockDirection	; , lastBlockDirection
                            479 ;----- asm -----
                            480 ;  370 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            481 	; #ENR#[304]	switch (blockOrientation) {
                            482 ;  0 "" 2
                            483 ;--- end asm ---
   03A6 F6 CA 76      [ 5]  484 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   03A9 C1 01         [ 2]  485 	cmpb	#1	;cmpqi:	;  blockOrientation,
   03AB 10 27 00 39   [ 6]  486 	lbeq	L20	; 
   03AF 25 09         [ 3]  487 	blo	L19	; 
   03B1 C1 02         [ 2]  488 	cmpb	#2	;cmpqi:	;  blockOrientation,
   03B3 10 27 00 56   [ 6]  489 	lbeq	L38	; 
   03B7 32 61         [ 5]  490 	leas	1,s	; ,,
   03B9 39            [ 5]  491 	rts
   03BA                     492 L19:
                            493 ;----- asm -----
                            494 ;  374 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            495 	; #ENR#[306]		switch (move) {
                            496 ;  0 "" 2
                            497 ;--- end asm ---
   03BA E6 E4         [ 4]  498 	ldb	,s	; , move
   03BC C1 01         [ 2]  499 	cmpb	#1	;cmpqi:	; ,
   03BE 10 27 00 AE   [ 6]  500 	lbeq	L24	; 
   03C2 10 24 00 F6   [ 6]  501 	lbhs	L39	; 
                            502 ;----- asm -----
                            503 ;  378 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            504 	; #ENR#[308]			blockAnimation = height2FallingLeft;
                            505 ;  0 "" 2
                            506 ;--- end asm ---
   03C6 8E 33 04      [ 3]  507 	ldx	#_height2FallingLeft	; ,
   03C9 BF CA 79      [ 6]  508 	stx	_blockAnimation	; , blockAnimation
                            509 ;----- asm -----
                            510 ;  380 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            511 	; #ENR#[309]			nextBlockAnimation = width2RollingFront;
                            512 ;  0 "" 2
                            513 ;--- end asm ---
   03CC 8E 33 F4      [ 3]  514 	ldx	#_width2RollingFront	; ,
   03CF BF CA 7B      [ 6]  515 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            516 ;----- asm -----
                            517 ;  382 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            518 	; #ENR#[310]			nextBlockX = blockX - 2;
                            519 ;  0 "" 2
                            520 ;--- end asm ---
   03D2 F6 CA 77      [ 5]  521 	ldb	_blockX	; , blockX
   03D5 CB FE         [ 2]  522 	addb	#-2	; ,
   03D7 F7 CA 7F      [ 5]  523 	stb	_nextBlockX	; , nextBlockX
                            524 ;----- asm -----
                            525 ;  384 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            526 	; #ENR#[311]			nextBlockY = blockY;
                            527 ;  0 "" 2
                            528 ;--- end asm ---
   03DA F6 CA 78      [ 5]  529 	ldb	_blockY	; , blockY
   03DD F7 CA 80      [ 5]  530 	stb	_nextBlockY	; , nextBlockY
                            531 ;----- asm -----
                            532 ;  386 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            533 	; #ENR#[312]			blockOrientation = Horizontal;
                            534 ;  0 "" 2
                            535 ;--- end asm ---
   03E0 C6 02         [ 2]  536 	ldb	#2	; ,
   03E2 F7 CA 76      [ 5]  537 	stb	_blockOrientation	; , blockOrientation
                            538 ;----- asm -----
                            539 ;  388 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            540 	; #ENR#[313]			break;
                            541 ;  0 "" 2
                            542 ;--- end asm ---
   03E5                     543 L22:
                            544 ;----- asm -----
                            545 ;  433 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            546 	; #ENR#[336]		break;
                            547 ;  0 "" 2
                            548 ;--- end asm ---
   03E5 32 61         [ 5]  549 	leas	1,s	; ,,
   03E7 39            [ 5]  550 	rts
   03E8                     551 L20:
                            552 ;----- asm -----
                            553 ;  437 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            554 	; #ENR#[338]		switch (move) {
                            555 ;  0 "" 2
                            556 ;--- end asm ---
   03E8 E6 E4         [ 4]  557 	ldb	,s	; , move
   03EA C1 01         [ 2]  558 	cmpb	#1	;cmpqi:	; ,
   03EC 10 27 00 60   [ 6]  559 	lbeq	L29	; 
   03F0 10 24 00 9D   [ 6]  560 	lbhs	L40	; 
                            561 ;----- asm -----
                            562 ;  441 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            563 	; #ENR#[340]			blockAnimation = depth2RollingLeft;
                            564 ;  0 "" 2
                            565 ;--- end asm ---
   03F4 8E 33 C4      [ 3]  566 	ldx	#_depth2RollingLeft	; ,
   03F7 BF CA 79      [ 6]  567 	stx	_blockAnimation	; , blockAnimation
                            568 ;----- asm -----
                            569 ;  443 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            570 	; #ENR#[341]			nextBlockAnimation = depth2RollingLeft;
                            571 ;  0 "" 2
                            572 ;--- end asm ---
   03FA BF CA 7B      [ 6]  573 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            574 ;----- asm -----
                            575 ;  445 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            576 	; #ENR#[342]			nextBlockX = blockX - 1;
                            577 ;  0 "" 2
                            578 ;--- end asm ---
   03FD F6 CA 77      [ 5]  579 	ldb	_blockX	; , blockX
   0400 5A            [ 2]  580 	decb	; 
   0401 F7 CA 7F      [ 5]  581 	stb	_nextBlockX	; , nextBlockX
                            582 ;----- asm -----
                            583 ;  447 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            584 	; #ENR#[343]			nextBlockY = blockY;
                            585 ;  0 "" 2
                            586 ;--- end asm ---
   0404 F6 CA 78      [ 5]  587 	ldb	_blockY	; , blockY
   0407 F7 CA 80      [ 5]  588 	stb	_nextBlockY	; , nextBlockY
                            589 ;----- asm -----
                            590 ;  449 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            591 	; #ENR#[344]			break;
                            592 ;  0 "" 2
                            593 ;--- end asm ---
   040A                     594 L27:
                            595 ;----- asm -----
                            596 ;  492 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            597 	; #ENR#[366]		break;
                            598 ;  0 "" 2
                            599 ;--- end asm ---
   040A 32 61         [ 5]  600 	leas	1,s	; ,,
   040C 39            [ 5]  601 	rts
   040D                     602 L38:
                            603 ;----- asm -----
                            604 ;  496 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            605 	; #ENR#[368]		switch (move) {
                            606 ;  0 "" 2
                            607 ;--- end asm ---
   040D E6 E4         [ 4]  608 	ldb	,s	; , move
   040F C1 01         [ 2]  609 	cmpb	#1	;cmpqi:	; ,
   0411 10 27 00 23   [ 6]  610 	lbeq	L34	; 
   0415 10 24 00 D1   [ 6]  611 	lbhs	L41	; 
                            612 ;----- asm -----
                            613 ;  500 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            614 	; #ENR#[370]			blockAnimation = height2RisingLeft;
                            615 ;  0 "" 2
                            616 ;--- end asm ---
   0419 8E 33 4C      [ 3]  617 	ldx	#_height2RisingLeft	; ,
   041C BF CA 79      [ 6]  618 	stx	_blockAnimation	; , blockAnimation
                            619 ;----- asm -----
                            620 ;  502 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            621 	; #ENR#[371]			nextBlockAnimation = height2FallingRight;
                            622 ;  0 "" 2
                            623 ;--- end asm ---
   041F 8E 33 34      [ 3]  624 	ldx	#_height2FallingRight	; ,
   0422 BF CA 7B      [ 6]  625 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            626 ;----- asm -----
                            627 ;  504 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            628 	; #ENR#[372]			nextBlockX = blockX - 1;
                            629 ;  0 "" 2
                            630 ;--- end asm ---
   0425 F6 CA 77      [ 5]  631 	ldb	_blockX	; , blockX
   0428 5A            [ 2]  632 	decb	; 
   0429 F7 CA 7F      [ 5]  633 	stb	_nextBlockX	; , nextBlockX
                            634 ;----- asm -----
                            635 ;  506 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            636 	; #ENR#[373]			nextBlockY = blockY;
                            637 ;  0 "" 2
                            638 ;--- end asm ---
   042C F6 CA 78      [ 5]  639 	ldb	_blockY	; , blockY
   042F F7 CA 80      [ 5]  640 	stb	_nextBlockY	; , nextBlockY
                            641 ;----- asm -----
                            642 ;  508 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            643 	; #ENR#[374]			blockOrientation = Standing;
                            644 ;  0 "" 2
                            645 ;--- end asm ---
   0432 7F CA 76      [ 7]  646 	clr	_blockOrientation	;  blockOrientation
                            647 ;----- asm -----
                            648 ;  510 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            649 	; #ENR#[375]			break;
                            650 ;  0 "" 2
                            651 ;--- end asm ---
   0435                     652 L32:
                            653 ;----- asm -----
                            654 ;  551 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            655 	; #ENR#[396]		break;
                            656 ;  0 "" 2
                            657 ;--- end asm ---
   0435 32 61         [ 5]  658 	leas	1,s	; ,,
   0437 39            [ 5]  659 	rts
   0438                     660 L34:
                            661 ;----- asm -----
                            662 ;  528 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            663 	; #ENR#[384]			blockAnimation = width2RollingBack;
                            664 ;  0 "" 2
                            665 ;--- end asm ---
   0438 8E 34 0C      [ 3]  666 	ldx	#_width2RollingBack	; ,
   043B BF CA 79      [ 6]  667 	stx	_blockAnimation	; , blockAnimation
                            668 ;----- asm -----
                            669 ;  530 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            670 	; #ENR#[385]			nextBlockAnimation = width2RollingBack;
                            671 ;  0 "" 2
                            672 ;--- end asm ---
   043E BF CA 7B      [ 6]  673 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            674 ;----- asm -----
                            675 ;  532 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            676 	; #ENR#[386]			nextBlockX = blockX;
                            677 ;  0 "" 2
                            678 ;--- end asm ---
   0441 F6 CA 77      [ 5]  679 	ldb	_blockX	; , blockX
   0444 F7 CA 7F      [ 5]  680 	stb	_nextBlockX	; , nextBlockX
                            681 ;----- asm -----
                            682 ;  534 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            683 	; #ENR#[387]			nextBlockY = blockY + 1;
                            684 ;  0 "" 2
                            685 ;--- end asm ---
   0447 F6 CA 78      [ 5]  686 	ldb	_blockY	; , blockY
   044A 5C            [ 2]  687 	incb	; 
   044B F7 CA 80      [ 5]  688 	stb	_nextBlockY	; , nextBlockY
                            689 ;----- asm -----
                            690 ;  536 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            691 	; #ENR#[388]			break;
                            692 ;  0 "" 2
                            693 ;--- end asm ---
   044E 20 E5         [ 3]  694 	bra	L32	; 
   0450                     695 L29:
                            696 ;----- asm -----
                            697 ;  465 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            698 	; #ENR#[352]			blockAnimation = height2RisingBack;
                            699 ;  0 "" 2
                            700 ;--- end asm ---
   0450 8E 33 AC      [ 3]  701 	ldx	#_height2RisingBack	; ,
   0453 BF CA 79      [ 6]  702 	stx	_blockAnimation	; , blockAnimation
                            703 ;----- asm -----
                            704 ;  467 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            705 	; #ENR#[353]			nextBlockAnimation = height2FallingFront;
                            706 ;  0 "" 2
                            707 ;--- end asm ---
   0456 8E 33 94      [ 3]  708 	ldx	#_height2FallingFront	; ,
   0459 BF CA 7B      [ 6]  709 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            710 ;----- asm -----
                            711 ;  469 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            712 	; #ENR#[354]			nextBlockX = blockX;
                            713 ;  0 "" 2
                            714 ;--- end asm ---
   045C F6 CA 77      [ 5]  715 	ldb	_blockX	; , blockX
   045F F7 CA 7F      [ 5]  716 	stb	_nextBlockX	; , nextBlockX
                            717 ;----- asm -----
                            718 ;  471 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            719 	; #ENR#[355]			nextBlockY = blockY + 2;
                            720 ;  0 "" 2
                            721 ;--- end asm ---
   0462 F6 CA 78      [ 5]  722 	ldb	_blockY	; , blockY
   0465 CB 02         [ 2]  723 	addb	#2	; ,
   0467 F7 CA 80      [ 5]  724 	stb	_nextBlockY	; , nextBlockY
                            725 ;----- asm -----
                            726 ;  473 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            727 	; #ENR#[356]			blockOrientation = Standing;
                            728 ;  0 "" 2
                            729 ;--- end asm ---
   046A 7F CA 76      [ 7]  730 	clr	_blockOrientation	;  blockOrientation
                            731 ;----- asm -----
                            732 ;  475 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            733 	; #ENR#[357]			break;
                            734 ;  0 "" 2
                            735 ;--- end asm ---
   046D 7E 04 0A      [ 4]  736 	jmp	L27	; 
   0470                     737 L24:
                            738 ;----- asm -----
                            739 ;  406 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            740 	; #ENR#[322]			blockAnimation = height2FallingBack;
                            741 ;  0 "" 2
                            742 ;--- end asm ---
   0470 8E 33 64      [ 3]  743 	ldx	#_height2FallingBack	; ,
   0473 BF CA 79      [ 6]  744 	stx	_blockAnimation	; , blockAnimation
                            745 ;----- asm -----
                            746 ;  408 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            747 	; #ENR#[323]			nextBlockAnimation = depth2RollingLeft;
                            748 ;  0 "" 2
                            749 ;--- end asm ---
   0476 8E 33 C4      [ 3]  750 	ldx	#_depth2RollingLeft	; ,
   0479 BF CA 7B      [ 6]  751 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            752 ;----- asm -----
                            753 ;  410 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            754 	; #ENR#[324]			nextBlockX = blockX;
                            755 ;  0 "" 2
                            756 ;--- end asm ---
   047C F6 CA 77      [ 5]  757 	ldb	_blockX	; , blockX
   047F F7 CA 7F      [ 5]  758 	stb	_nextBlockX	; , nextBlockX
                            759 ;----- asm -----
                            760 ;  412 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            761 	; #ENR#[325]			nextBlockY = blockY + 1;
                            762 ;  0 "" 2
                            763 ;--- end asm ---
   0482 F6 CA 78      [ 5]  764 	ldb	_blockY	; , blockY
   0485 5C            [ 2]  765 	incb	; 
   0486 F7 CA 80      [ 5]  766 	stb	_nextBlockY	; , nextBlockY
                            767 ;----- asm -----
                            768 ;  414 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            769 	; #ENR#[326]			blockOrientation = Vertical;
                            770 ;  0 "" 2
                            771 ;--- end asm ---
   0489 E6 E4         [ 4]  772 	ldb	,s	; , move
   048B F7 CA 76      [ 5]  773 	stb	_blockOrientation	; , blockOrientation
                            774 ;----- asm -----
                            775 ;  416 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            776 	; #ENR#[327]			break;
                            777 ;  0 "" 2
                            778 ;--- end asm ---
   048E 7E 03 E5      [ 4]  779 	jmp	L22	; 
   0491                     780 L40:
   0491 C1 02         [ 2]  781 	cmpb	#2	;cmpqi:	; ,
   0493 10 27 00 BA   [ 6]  782 	lbeq	L30	; 
   0497 C1 03         [ 2]  783 	cmpb	#3	;cmpqi:	; ,
   0499 10 26 FF 6D   [ 6]  784 	lbne	L27	; 
                            785 ;----- asm -----
                            786 ;  479 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            787 	; #ENR#[359]			blockAnimation = height2RisingFront;
                            788 ;  0 "" 2
                            789 ;--- end asm ---
   049D 8E 33 7C      [ 3]  790 	ldx	#_height2RisingFront	; ,
   04A0 BF CA 79      [ 6]  791 	stx	_blockAnimation	; , blockAnimation
                            792 ;----- asm -----
                            793 ;  481 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            794 	; #ENR#[360]			nextBlockAnimation = height2FallingFront;
                            795 ;  0 "" 2
                            796 ;--- end asm ---
   04A3 8E 33 94      [ 3]  797 	ldx	#_height2FallingFront	; ,
   04A6 BF CA 7B      [ 6]  798 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            799 ;----- asm -----
                            800 ;  483 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            801 	; #ENR#[361]			nextBlockX = blockX;
                            802 ;  0 "" 2
                            803 ;--- end asm ---
   04A9 F6 CA 77      [ 5]  804 	ldb	_blockX	; , blockX
   04AC F7 CA 7F      [ 5]  805 	stb	_nextBlockX	; , nextBlockX
                            806 ;----- asm -----
                            807 ;  485 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            808 	; #ENR#[362]			nextBlockY = blockY - 1;
                            809 ;  0 "" 2
                            810 ;--- end asm ---
   04AF F6 CA 78      [ 5]  811 	ldb	_blockY	; , blockY
   04B2 5A            [ 2]  812 	decb	; 
   04B3 F7 CA 80      [ 5]  813 	stb	_nextBlockY	; , nextBlockY
                            814 ;----- asm -----
                            815 ;  487 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            816 	; #ENR#[363]			blockOrientation = Standing;
                            817 ;  0 "" 2
                            818 ;--- end asm ---
   04B6 7F CA 76      [ 7]  819 	clr	_blockOrientation	;  blockOrientation
                            820 ;----- asm -----
                            821 ;  489 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            822 	; #ENR#[364]			break;
                            823 ;  0 "" 2
                            824 ;--- end asm ---
   04B9 7E 04 0A      [ 4]  825 	jmp	L27	; 
   04BC                     826 L39:
   04BC C1 02         [ 2]  827 	cmpb	#2	;cmpqi:	; ,
   04BE 10 27 00 6E   [ 6]  828 	lbeq	L25	; 
   04C2 C1 03         [ 2]  829 	cmpb	#3	;cmpqi:	; ,
   04C4 10 26 FF 1D   [ 6]  830 	lbne	L22	; 
                            831 ;----- asm -----
                            832 ;  420 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            833 	; #ENR#[329]			blockAnimation = height2FallingFront;
                            834 ;  0 "" 2
                            835 ;--- end asm ---
   04C8 8E 33 94      [ 3]  836 	ldx	#_height2FallingFront	; ,
   04CB BF CA 79      [ 6]  837 	stx	_blockAnimation	; , blockAnimation
                            838 ;----- asm -----
                            839 ;  422 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            840 	; #ENR#[330]			nextBlockAnimation = depth2RollingLeft;
                            841 ;  0 "" 2
                            842 ;--- end asm ---
   04CE 8E 33 C4      [ 3]  843 	ldx	#_depth2RollingLeft	; ,
   04D1 BF CA 7B      [ 6]  844 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            845 ;----- asm -----
                            846 ;  424 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            847 	; #ENR#[331]			nextBlockX = blockX;
                            848 ;  0 "" 2
                            849 ;--- end asm ---
   04D4 F6 CA 77      [ 5]  850 	ldb	_blockX	; , blockX
   04D7 F7 CA 7F      [ 5]  851 	stb	_nextBlockX	; , nextBlockX
                            852 ;----- asm -----
                            853 ;  426 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            854 	; #ENR#[332]			nextBlockY = blockY - 2;
                            855 ;  0 "" 2
                            856 ;--- end asm ---
   04DA F6 CA 78      [ 5]  857 	ldb	_blockY	; , blockY
   04DD CB FE         [ 2]  858 	addb	#-2	; ,
   04DF F7 CA 80      [ 5]  859 	stb	_nextBlockY	; , nextBlockY
                            860 ;----- asm -----
                            861 ;  428 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            862 	; #ENR#[333]			blockOrientation = Vertical;
                            863 ;  0 "" 2
                            864 ;--- end asm ---
   04E2 C6 01         [ 2]  865 	ldb	#1	; ,
   04E4 F7 CA 76      [ 5]  866 	stb	_blockOrientation	; , blockOrientation
                            867 ;----- asm -----
                            868 ;  430 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            869 	; #ENR#[334]			break;
                            870 ;  0 "" 2
                            871 ;--- end asm ---
   04E7 7E 03 E5      [ 4]  872 	jmp	L22	; 
   04EA                     873 L41:
   04EA C1 02         [ 2]  874 	cmpb	#2	;cmpqi:	; ,
   04EC 27 22         [ 3]  875 	beq	L35	; 
   04EE C1 03         [ 2]  876 	cmpb	#3	;cmpqi:	; ,
   04F0 10 26 FF 41   [ 6]  877 	lbne	L32	; 
                            878 ;----- asm -----
                            879 ;  540 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            880 	; #ENR#[390]			blockAnimation = width2RollingFront;
                            881 ;  0 "" 2
                            882 ;--- end asm ---
   04F4 8E 33 F4      [ 3]  883 	ldx	#_width2RollingFront	; ,
   04F7 BF CA 79      [ 6]  884 	stx	_blockAnimation	; , blockAnimation
                            885 ;----- asm -----
                            886 ;  542 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            887 	; #ENR#[391]			nextBlockAnimation = width2RollingBack;
                            888 ;  0 "" 2
                            889 ;--- end asm ---
   04FA 8E 34 0C      [ 3]  890 	ldx	#_width2RollingBack	; ,
   04FD BF CA 7B      [ 6]  891 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            892 ;----- asm -----
                            893 ;  544 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            894 	; #ENR#[392]			nextBlockX = blockX;
                            895 ;  0 "" 2
                            896 ;--- end asm ---
   0500 F6 CA 77      [ 5]  897 	ldb	_blockX	; , blockX
   0503 F7 CA 7F      [ 5]  898 	stb	_nextBlockX	; , nextBlockX
                            899 ;----- asm -----
                            900 ;  546 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            901 	; #ENR#[393]			nextBlockY = blockY - 1;
                            902 ;  0 "" 2
                            903 ;--- end asm ---
   0506 F6 CA 78      [ 5]  904 	ldb	_blockY	; , blockY
   0509 5A            [ 2]  905 	decb	; 
   050A F7 CA 80      [ 5]  906 	stb	_nextBlockY	; , nextBlockY
                            907 ;----- asm -----
                            908 ;  548 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            909 	; #ENR#[394]			break;
                            910 ;  0 "" 2
                            911 ;--- end asm ---
   050D 7E 04 35      [ 4]  912 	jmp	L32	; 
   0510                     913 L35:
                            914 ;----- asm -----
                            915 ;  514 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            916 	; #ENR#[377]			blockAnimation = height2RisingRight;
                            917 ;  0 "" 2
                            918 ;--- end asm ---
   0510 8E 33 1C      [ 3]  919 	ldx	#_height2RisingRight	; ,
   0513 BF CA 79      [ 6]  920 	stx	_blockAnimation	; , blockAnimation
                            921 ;----- asm -----
                            922 ;  516 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            923 	; #ENR#[378]			nextBlockAnimation = height2FallingLeft;
                            924 ;  0 "" 2
                            925 ;--- end asm ---
   0516 8E 33 04      [ 3]  926 	ldx	#_height2FallingLeft	; ,
   0519 BF CA 7B      [ 6]  927 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            928 ;----- asm -----
                            929 ;  518 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            930 	; #ENR#[379]			nextBlockX = blockX + 2;
                            931 ;  0 "" 2
                            932 ;--- end asm ---
   051C F6 CA 77      [ 5]  933 	ldb	_blockX	; , blockX
   051F CB 02         [ 2]  934 	addb	#2	; ,
   0521 F7 CA 7F      [ 5]  935 	stb	_nextBlockX	; , nextBlockX
                            936 ;----- asm -----
                            937 ;  520 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            938 	; #ENR#[380]			nextBlockY = blockY;
                            939 ;  0 "" 2
                            940 ;--- end asm ---
   0524 F6 CA 78      [ 5]  941 	ldb	_blockY	; , blockY
   0527 F7 CA 80      [ 5]  942 	stb	_nextBlockY	; , nextBlockY
                            943 ;----- asm -----
                            944 ;  522 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            945 	; #ENR#[381]			blockOrientation = Standing;
                            946 ;  0 "" 2
                            947 ;--- end asm ---
   052A 7F CA 76      [ 7]  948 	clr	_blockOrientation	;  blockOrientation
                            949 ;----- asm -----
                            950 ;  524 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            951 	; #ENR#[382]			break;
                            952 ;  0 "" 2
                            953 ;--- end asm ---
   052D 7E 04 35      [ 4]  954 	jmp	L32	; 
   0530                     955 L25:
                            956 ;----- asm -----
                            957 ;  392 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            958 	; #ENR#[315]			blockAnimation = height2FallingRight;
                            959 ;  0 "" 2
                            960 ;--- end asm ---
   0530 8E 33 34      [ 3]  961 	ldx	#_height2FallingRight	; ,
   0533 BF CA 79      [ 6]  962 	stx	_blockAnimation	; , blockAnimation
                            963 ;----- asm -----
                            964 ;  394 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            965 	; #ENR#[316]			nextBlockAnimation = width2RollingFront;
                            966 ;  0 "" 2
                            967 ;--- end asm ---
   0536 8E 33 F4      [ 3]  968 	ldx	#_width2RollingFront	; ,
   0539 BF CA 7B      [ 6]  969 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            970 ;----- asm -----
                            971 ;  396 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            972 	; #ENR#[317]			nextBlockX = blockX + 1;
                            973 ;  0 "" 2
                            974 ;--- end asm ---
   053C F6 CA 77      [ 5]  975 	ldb	_blockX	; , blockX
   053F 5C            [ 2]  976 	incb	; 
   0540 F7 CA 7F      [ 5]  977 	stb	_nextBlockX	; , nextBlockX
                            978 ;----- asm -----
                            979 ;  398 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            980 	; #ENR#[318]			nextBlockY = blockY;
                            981 ;  0 "" 2
                            982 ;--- end asm ---
   0543 F6 CA 78      [ 5]  983 	ldb	_blockY	; , blockY
   0546 F7 CA 80      [ 5]  984 	stb	_nextBlockY	; , nextBlockY
                            985 ;----- asm -----
                            986 ;  400 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            987 	; #ENR#[319]			blockOrientation = Horizontal;
                            988 ;  0 "" 2
                            989 ;--- end asm ---
   0549 E6 E4         [ 4]  990 	ldb	,s	; , move
   054B F7 CA 76      [ 5]  991 	stb	_blockOrientation	; , blockOrientation
                            992 ;----- asm -----
                            993 ;  402 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                            994 	; #ENR#[320]			break;
                            995 ;  0 "" 2
                            996 ;--- end asm ---
   054E 7E 03 E5      [ 4]  997 	jmp	L22	; 
   0551                     998 L30:
                            999 ;----- asm -----
                           1000 ;  453 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1001 	; #ENR#[346]			blockAnimation = depth2RollingRight;
                           1002 ;  0 "" 2
                           1003 ;--- end asm ---
   0551 8E 33 DC      [ 3] 1004 	ldx	#_depth2RollingRight	; ,
   0554 BF CA 79      [ 6] 1005 	stx	_blockAnimation	; , blockAnimation
                           1006 ;----- asm -----
                           1007 ;  455 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1008 	; #ENR#[347]			nextBlockAnimation = depth2RollingLeft;
                           1009 ;  0 "" 2
                           1010 ;--- end asm ---
   0557 8E 33 C4      [ 3] 1011 	ldx	#_depth2RollingLeft	; ,
   055A BF CA 7B      [ 6] 1012 	stx	_nextBlockAnimation	; , nextBlockAnimation
                           1013 ;----- asm -----
                           1014 ;  457 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1015 	; #ENR#[348]			nextBlockX = blockX + 1;
                           1016 ;  0 "" 2
                           1017 ;--- end asm ---
   055D F6 CA 77      [ 5] 1018 	ldb	_blockX	; , blockX
   0560 5C            [ 2] 1019 	incb	; 
   0561 F7 CA 7F      [ 5] 1020 	stb	_nextBlockX	; , nextBlockX
                           1021 ;----- asm -----
                           1022 ;  459 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1023 	; #ENR#[349]			nextBlockY = blockY;
                           1024 ;  0 "" 2
                           1025 ;--- end asm ---
   0564 F6 CA 78      [ 5] 1026 	ldb	_blockY	; , blockY
   0567 F7 CA 80      [ 5] 1027 	stb	_nextBlockY	; , nextBlockY
                           1028 ;----- asm -----
                           1029 ;  461 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1030 	; #ENR#[350]			break;
                           1031 ;  0 "" 2
                           1032 ;--- end asm ---
   056A 7E 04 0A      [ 4] 1033 	jmp	L27	; 
                           1034 	.globl _startBlockFalling
   056D                    1035 _startBlockFalling:
                           1036 ;----- asm -----
                           1037 ;  558 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1038 	; #ENR#[402]	gameState = BlockFalling;
                           1039 ;  0 "" 2
                           1040 ;--- end asm ---
   056D C6 03         [ 2] 1041 	ldb	#3	; ,
   056F F7 CA 85      [ 5] 1042 	stb	_gameState	; , gameState
                           1043 ;----- asm -----
                           1044 ;  560 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1045 	; #ENR#[403]	blockYOfs = 0;
                           1046 ;  0 "" 2
                           1047 ;--- end asm ---
   0572 7F CA 82      [ 7] 1048 	clr	_blockYOfs	;  blockYOfs
                           1049 ;----- asm -----
                           1050 ;  562 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1051 	; #ENR#[404]	moveBlock(lastBlockDirection);
                           1052 ;  0 "" 2
                           1053 ;--- end asm ---
   0575 F6 CA 81      [ 5] 1054 	ldb	_lastBlockDirection	; , lastBlockDirection
   0578 BD 03 9A      [ 8] 1055 	jsr	_moveBlock	; 
                           1056 ;----- asm -----
                           1057 ;  564 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1058 	; #ENR#[405]	changeMusic(fallingMusic);
                           1059 ;  0 "" 2
                           1060 ;  358 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1061 	; #ENR#[296]	tstat = 1;
                           1062 ;  0 "" 2
                           1063 ;--- end asm ---
   057B C6 01         [ 2] 1064 	ldb	#1	; ,
   057D F7 C8 56      [ 5] 1065 	stb	-14250	; ,
                           1066 ;----- asm -----
                           1067 ;  360 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1068 	; #ENR#[297]	currentMusic = music;
                           1069 ;  0 "" 2
                           1070 ;--- end asm ---
   0580 8E 11 6D      [ 3] 1071 	ldx	#_fallingMusic	; ,
   0583 BF C8 88      [ 6] 1072 	stx	_currentMusic	; , currentMusic
   0586 39            [ 5] 1073 	rts
                           1074 	.globl _drawField
   0587                    1075 _drawField:
                           1076 ;----- asm -----
                           1077 ;  611 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1078 	; #ENR#[435]	intens(0x55);
                           1079 ;  0 "" 2
                           1080 ;--- end asm ---
   0587 C6 55         [ 2] 1081 	ldb	#85	;  a.49,
                           1082 ;----- asm -----
                           1083 ;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0589 1F 98         [ 6] 1084 	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a.49
   058B BD F2 AB      [ 8] 1085 	jsr 0xF2AB; Vec_Sub_INTENS
                           1086 	
                           1087 ;  0 "" 2
                           1088 ;  626 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   058E 34 5E         [10] 1089 		pshs a, b, dp, x, u
                           1090 ;  0 "" 2
                           1091 ;  627 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   0590 86 D0         [ 2] 1092 		lda #0xd0
                           1093 ;  0 "" 2
                           1094 ;  628 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   0592 1F 8B         [ 6] 1095 		tfr a, dp
                           1096 ;  0 "" 2
                           1097 ;  629 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   0594 8E 00 00      [ 3] 1098 		ldx #0
                           1099 ;  0 "" 2
                           1100 ;  630 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   0597 F6 C8 90      [ 5] 1101 		ldb _lineCount
                           1102 ;  0 "" 2
                           1103 ;  631 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   059A                    1104 	drawFieldLoop:
                           1105 ;  0 "" 2
                           1106 ;  632 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   059A 34 04         [ 6] 1107 		pshs b
                           1108 ;  0 "" 2
                           1109 ;  633 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   059C 34 10         [ 6] 1110 		pshs x
                           1111 ;  0 "" 2
                           1112 ;  634 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   059E BD F3 54      [ 8] 1113 		jsr 0xf354
                           1114 ;  0 "" 2
                           1115 ;  635 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05A1 35 10         [ 6] 1116 		puls x
                           1117 ;  0 "" 2
                           1118 ;  636 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05A3 A6 89 C9 0E   [ 8] 1119 		lda _lineY0,x
                           1120 ;  0 "" 2
                           1121 ;  637 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05A7 E6 89 C8 96   [ 8] 1122 		ldb _lineX0,x
                           1123 ;  0 "" 2
                           1124 ;  638 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05AB 34 10         [ 6] 1125 		pshs x
                           1126 ;  0 "" 2
                           1127 ;  639 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05AD BD F2 FC      [ 8] 1128 		jsr 0xf2fc
                           1129 ;  0 "" 2
                           1130 ;  640 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05B0 35 10         [ 6] 1131 		puls x
                           1132 ;  0 "" 2
                           1133 ;  641 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05B2 A6 89 C9 FE   [ 8] 1134 		lda _lineY1,x
                           1135 ;  0 "" 2
                           1136 ;  642 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05B6 E6 89 C9 86   [ 8] 1137 		ldb _lineX1,x
                           1138 ;  0 "" 2
                           1139 ;  643 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05BA A0 89 C9 0E   [ 8] 1140 		suba _lineY0,x
                           1141 ;  0 "" 2
                           1142 ;  644 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05BE E0 89 C8 96   [ 8] 1143 		subb _lineX0,x
                           1144 ;  0 "" 2
                           1145 ;  645 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05C2 34 10         [ 6] 1146 		pshs x
                           1147 ;  0 "" 2
                           1148 ;  646 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05C4 BD F3 DF      [ 8] 1149 		jsr 0xf3df
                           1150 ;  0 "" 2
                           1151 ;  647 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05C7 35 10         [ 6] 1152 		puls x
                           1153 ;  0 "" 2
                           1154 ;  648 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05C9 A6 80         [ 6] 1155 		lda ,x+
                           1156 ;  0 "" 2
                           1157 ;  649 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05CB 35 04         [ 6] 1158 		puls b
                           1159 ;  0 "" 2
                           1160 ;  650 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05CD 5A            [ 2] 1161 		decb
                           1162 ;  0 "" 2
                           1163 ;  651 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05CE 26 CA         [ 3] 1164 		bne drawFieldLoop
                           1165 ;  0 "" 2
                           1166 ;  652 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
   05D0 35 5E         [10] 1167 		puls a, b, dp, x, u
                           1168 ;  0 "" 2
                           1169 ;--- end asm ---
   05D2 39            [ 5] 1170 	rts
                           1171 	.globl _drawBlock
   05D3                    1172 _drawBlock:
   05D3 34 40         [ 6] 1173 	pshs	u	; 
   05D5 32 78         [ 5] 1174 	leas	-8,s	; ,,
   05D7 E7 64         [ 5] 1175 	stb	4,s	;  yofs, yofs
                           1176 ;----- asm -----
                           1177 ;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1178 	; #ENR#[481]	zergnd();
                           1179 ;  0 "" 2
                           1180 ;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   05D9 BD F3 54      [ 8] 1181 	jsr 0xF354; Vec_Sub_ZEROIT
                           1182 	
                           1183 ;  0 "" 2
                           1184 ;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1185 	; #ENR#[482]	intens(0x63);
                           1186 ;  0 "" 2
                           1187 ;--- end asm ---
   05DC C6 63         [ 2] 1188 	ldb	#99	;  a.49,
                           1189 ;----- asm -----
                           1190 ;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   05DE 1F 98         [ 6] 1191 	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a.49
   05E0 BD F2 AB      [ 8] 1192 	jsr 0xF2AB; Vec_Sub_INTENS
                           1193 	
                           1194 ;  0 "" 2
                           1195 ;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1196 	; #ENR#[483]	positd(0, yofs);
                           1197 ;  0 "" 2
                           1198 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1199 	; #ENR#[40]	Moveto_d_7F(y,x);
                           1200 ;  0 "" 2
                           1201 ;--- end asm ---
   05E3 E6 64         [ 5] 1202 	ldb	4,s	; , yofs
   05E5 E7 67         [ 5] 1203 	stb	7,s	; , a
   05E7 6F 66         [ 7] 1204 	clr	6,s	;  b
                           1205 ;----- asm -----
                           1206 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   05E9 A6 67         [ 5] 1207 	lda 7,s	;  a
   05EB E6 66         [ 5] 1208 	ldb 6,s	;  b
   05ED BD F2 FC      [ 8] 1209 	jsr 0xF2FC; Vec_Sub_POSITD
                           1210 	
                           1211 ;  0 "" 2
                           1212 ;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1213 	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           1214 ;  0 "" 2
                           1215 ;--- end asm ---
   05F0 F6 CA 77      [ 5] 1216 	ldb	_blockX	; , blockX
   05F3 E7 65         [ 5] 1217 	stb	5,s	; , blockX.78
                           1218 ;----- asm -----
                           1219 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1220 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           1221 ;  0 "" 2
                           1222 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1223 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           1224 ;  0 "" 2
                           1225 ;--- end asm ---
   05F5 58            [ 2] 1226 	aslb	; 
   05F6 EB 65         [ 5] 1227 	addb	5,s	; , blockX.78
   05F8 E7 63         [ 5] 1228 	stb	3,s	; ,
   05FA F6 CA 78      [ 5] 1229 	ldb	_blockY	;  tmp40, blockY
   05FD 58            [ 2] 1230 	aslb	;  tmp40
   05FE 58            [ 2] 1231 	aslb	;  tmp40
   05FF 58            [ 2] 1232 	aslb	;  tmp40
   0600 EB 63         [ 5] 1233 	addb	3,s	;  tmp40,
   0602 CB 98         [ 2] 1234 	addb	#-104	;  tmp40,
   0604 E7 63         [ 5] 1235 	stb	3,s	;  tmp40,
                           1236 ;----- asm -----
                           1237 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1238 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           1239 ;  0 "" 2
                           1240 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1241 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           1242 ;  0 "" 2
                           1243 ;--- end asm ---
   0606 E6 65         [ 5] 1244 	ldb	5,s	; , blockX.78
   0608 CB FE         [ 2] 1245 	addb	#-2	; ,
   060A 86 0E         [ 2] 1246 	lda	#14	;mulqihi3	; 
   060C 3D            [11] 1247 	mul
   060D 1F 03         [ 6] 1248 	tfr	d,u	; , tmp43
   060F F6 CA 78      [ 5] 1249 	ldb	_blockY	; , blockY
   0612 86 FA         [ 2] 1250 	lda	#-6	;mulqihi3	; 
   0614 3D            [11] 1251 	mul
   0615 1F 01         [ 6] 1252 	tfr	d,x	; , tmp44
   0617 1F 30         [ 6] 1253 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp43,
   0619 E7 62         [ 5] 1254 	stb	2,s	; ,
   061B 1F 10         [ 6] 1255 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp44, tmp46
   061D EB 62         [ 5] 1256 	addb	2,s	;  tmp46,
   061F E7 62         [ 5] 1257 	stb	2,s	;  tmp46,
                           1258 ;----- asm -----
                           1259 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1260 	; #ENR#[40]	Moveto_d_7F(y,x);
                           1261 ;  0 "" 2
                           1262 ;--- end asm ---
   0621 E6 63         [ 5] 1263 	ldb	3,s	; ,
   0623 E7 66         [ 5] 1264 	stb	6,s	; , a
   0625 E6 62         [ 5] 1265 	ldb	2,s	; ,
   0627 E7 67         [ 5] 1266 	stb	7,s	; , b
                           1267 ;----- asm -----
                           1268 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0629 A6 66         [ 5] 1269 	lda 6,s	;  a
   062B E6 67         [ 5] 1270 	ldb 7,s	;  b
   062D BD F2 FC      [ 8] 1271 	jsr 0xF2FC; Vec_Sub_POSITD
                           1272 	
                           1273 ;  0 "" 2
                           1274 ;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1275 	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           1276 ;  0 "" 2
                           1277 ;--- end asm ---
   0630 F6 CA 7D      [ 5] 1278 	ldb	_blockAnimationStep	; , blockAnimationStep
   0633 1D            [ 2] 1279 	sex		;extendqihi2: R:b -> R:d	; ,
   0634 ED E4         [ 5] 1280 	std	,s	; ,
   0636 58            [ 2] 1281 	aslb	; 
   0637 49            [ 2] 1282 	rola	; 
   0638 FE CA 79      [ 6] 1283 	ldu	_blockAnimation	; , blockAnimation
   063B 30 CB         [ 8] 1284 	leax	d,u	;  tmp50, tmp49,
   063D AE 84         [ 5] 1285 	ldx	,x	;  x.25,
                           1286 ;----- asm -----
                           1287 ;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   063F BD F4 08      [ 8] 1288 	jsr 0xF408; Vec_Sub_PACK1X
                           1289 	
                           1290 ;  0 "" 2
                           1291 ;--- end asm ---
   0642 32 68         [ 5] 1292 	leas	8,s	; ,,
   0644 35 C0         [ 7] 1293 	puls	u,pc	; 
                           1294 	.globl _doBlockAnimation
   0646                    1295 _doBlockAnimation:
                           1296 ;----- asm -----
                           1297 ;  726 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1298 	; #ENR#[525]	if (blockAnimating) {
                           1299 ;  0 "" 2
                           1300 ;--- end asm ---
   0646 7D CA 7E      [ 7] 1301 	tst	_blockAnimating	;  blockAnimating
   0649 27 0A         [ 3] 1302 	beq	L50	; 
                           1303 ;----- asm -----
                           1304 ;  728 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1305 	; #ENR#[526]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
                           1306 ;  0 "" 2
                           1307 ;--- end asm ---
   064B 7C CA 7D      [ 7] 1308 	inc	_blockAnimationStep	;  blockAnimationStep
   064E F6 CA 7D      [ 5] 1309 	ldb	_blockAnimationStep	;  blockAnimationStep.86, blockAnimationStep
   0651 C1 0C         [ 2] 1310 	cmpb	#12	;cmpqi:	;  blockAnimationStep.86,
   0653 27 01         [ 3] 1311 	beq	L51	; 
   0655                    1312 L50:
   0655 39            [ 5] 1313 	rts
   0656                    1314 L51:
                           1315 ;----- asm -----
                           1316 ;  730 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1317 	; #ENR#[527]			blockX = nextBlockX;
                           1318 ;  0 "" 2
                           1319 ;--- end asm ---
   0656 F6 CA 7F      [ 5] 1320 	ldb	_nextBlockX	; , nextBlockX
   0659 F7 CA 77      [ 5] 1321 	stb	_blockX	; , blockX
                           1322 ;----- asm -----
                           1323 ;  732 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1324 	; #ENR#[528]			blockY = nextBlockY;
                           1325 ;  0 "" 2
                           1326 ;--- end asm ---
   065C F6 CA 80      [ 5] 1327 	ldb	_nextBlockY	; , nextBlockY
   065F F7 CA 78      [ 5] 1328 	stb	_blockY	; , blockY
                           1329 ;----- asm -----
                           1330 ;  734 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1331 	; #ENR#[529]			blockAnimationStep = 0;
                           1332 ;  0 "" 2
                           1333 ;--- end asm ---
   0662 7F CA 7D      [ 7] 1334 	clr	_blockAnimationStep	;  blockAnimationStep
                           1335 ;----- asm -----
                           1336 ;  736 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1337 	; #ENR#[530]			blockAnimation = nextBlockAnimation;
                           1338 ;  0 "" 2
                           1339 ;--- end asm ---
   0665 BE CA 7B      [ 6] 1340 	ldx	_nextBlockAnimation	; , nextBlockAnimation
   0668 BF CA 79      [ 6] 1341 	stx	_blockAnimation	; , blockAnimation
                           1342 ;----- asm -----
                           1343 ;  738 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1344 	; #ENR#[531]			blockAnimating = 0;
                           1345 ;  0 "" 2
                           1346 ;--- end asm ---
   066B 7F CA 7E      [ 7] 1347 	clr	_blockAnimating	;  blockAnimating
   066E 39            [ 5] 1348 	rts
                           1349 	.globl _setupY
   066F                    1350 _setupY:
   066F 34 60         [ 7] 1351 	pshs	y,u	; 
   0671 32 72         [ 5] 1352 	leas	-14,s	; ,,
                           1353 ;----- asm -----
                           1354 ;  313 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1355 	; #ENR#[267]	unsigned long int index;
                           1356 ;  0 "" 2
                           1357 ;  315 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1358 	; #ENR#[268]	int8_t x = 0;
                           1359 ;  0 "" 2
                           1360 ;  317 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1361 	; #ENR#[269]	int8_t y = 0;
                           1362 ;  0 "" 2
                           1363 ;  319 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1364 	; #ENR#[270]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
                           1365 ;  0 "" 2
                           1366 ;--- end asm ---
   0673 BE CA 83      [ 6] 1367 	ldx	_level	; , level
   0676 AF 6C         [ 6] 1368 	stx	12,s	; , ivtmp.299
   0678 31 84         [ 4] 1369 	leay	,x	;  ivtmp.300,
   067A C6 F2         [ 2] 1370 	ldb	#-14	; ,
   067C E7 6B         [ 5] 1371 	stb	11,s	; , ivtmp.295
   067E                    1372 L59:
                           1373 ;----- asm -----
                           1374 ;  321 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1375 	; #ENR#[271]		int8_t y0 = -1;
                           1376 ;  0 "" 2
                           1377 ;  323 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1378 	; #ENR#[272]		int8_t y1 = -1;
                           1379 ;  0 "" 2
                           1380 ;  325 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1381 	; #ENR#[273]		for (y = 0; y < LEVEL_HEIGHT; y++) {
                           1382 ;  0 "" 2
                           1383 ;--- end asm ---
   067E EC 6C         [ 6] 1384 	ldd	12,s	; , ivtmp.299
   0680 E7 62         [ 5] 1385 	stb	2,s	;movlsbqihi: R:d -> 2,s	; ,
   0682 E6 62         [ 5] 1386 	ldb	2,s	; ,
   0684 58            [ 2] 1387 	aslb	; 
   0685 E7 6A         [ 5] 1388 	stb	10,s	; , D.2871
   0687 E6 62         [ 5] 1389 	ldb	2,s	; ,
   0689 EB 6A         [ 5] 1390 	addb	10,s	; , D.2871
   068B E7 6A         [ 5] 1391 	stb	10,s	; , D.2871
   068D 60 6A         [ 7] 1392 	neg	10,s	;  D.2871
   068F E6 6A         [ 5] 1393 	ldb	10,s	; , D.2871
   0691 CB 9B         [ 2] 1394 	addb	#-101	; ,
   0693 E7 6A         [ 5] 1395 	stb	10,s	; , D.2871
   0695 1F 20         [ 6] 1396 	tfr	y,d	;movlsbqihi: R:y -> R:b	;  ivtmp.300,
   0697 E7 63         [ 5] 1397 	stb	3,s	; ,
   0699 58            [ 2] 1398 	aslb	;  tmp111
   069A EB 63         [ 5] 1399 	addb	3,s	;  tmp111,
   069C EB 6A         [ 5] 1400 	addb	10,s	;  tmp111, D.2871
   069E E7 6A         [ 5] 1401 	stb	10,s	;  tmp111, D.2871
   06A0 33 A4         [ 4] 1402 	leau	,y	;  ivtmp.301, ivtmp.300
   06A2 6F 65         [ 7] 1403 	clr	5,s	;  y
   06A4 C6 FF         [ 2] 1404 	ldb	#-1	; ,
   06A6 E7 66         [ 5] 1405 	stb	6,s	; , y0
   06A8 E7 67         [ 5] 1406 	stb	7,s	; , y1
   06AA 7E 07 2C      [ 4] 1407 	jmp	L58	; 
   06AD                    1408 L69:
   06AD C1 61         [ 2] 1409 	cmpb	#97	;cmpqi:	; ,
   06AF 10 27 00 89   [ 6] 1410 	lbeq	L53	; 
   06B3 C1 6F         [ 2] 1411 	cmpb	#111	;cmpqi:	; ,
   06B5 10 27 00 83   [ 6] 1412 	lbeq	L53	; 
                           1413 ;----- asm -----
                           1414 ;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1415 	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
                           1416 ;  0 "" 2
                           1417 ;--- end asm ---
   06B9 E6 68         [ 5] 1418 	ldb	8,s	; , c1
   06BB C1 2E         [ 2] 1419 	cmpb	#46	;cmpqi:	; ,
   06BD 10 27 00 7B   [ 6] 1420 	lbeq	L53	; 
   06C1 C1 61         [ 2] 1421 	cmpb	#97	;cmpqi:	; ,
   06C3 10 27 00 75   [ 6] 1422 	lbeq	L53	; 
   06C7 C1 6F         [ 2] 1423 	cmpb	#111	;cmpqi:	; ,
   06C9 10 27 00 6F   [ 6] 1424 	lbeq	L53	; 
                           1425 ;----- asm -----
                           1426 ;  344 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1427 	; #ENR#[285]				if (y0 >= 0) {
                           1428 ;  0 "" 2
                           1429 ;--- end asm ---
   06CD E6 66         [ 5] 1430 	ldb	6,s	; , y0
   06CF C1 FF         [ 2] 1431 	cmpb	#-1	;cmpqi:	; ,
   06D1 10 27 00 4B   [ 6] 1432 	lbeq	L57	; 
                           1433 ;----- asm -----
                           1434 ;  346 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1435 	; #ENR#[286]					addLine(x + 1, y0, x + 1, y1 + 1);
                           1436 ;  0 "" 2
                           1437 ;--- end asm ---
   06D5 E6 67         [ 5] 1438 	ldb	7,s	; , y1
   06D7 5C            [ 2] 1439 	incb	; 
   06D8 E7 64         [ 5] 1440 	stb	4,s	; , D.2142
                           1441 ;----- asm -----
                           1442 ;  202 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1443 	; #ENR#[195]	lineX0[lineCount] = x3d(x0, 0, y0);
                           1444 ;  0 "" 2
                           1445 ;--- end asm ---
   06DA F6 C8 90      [ 5] 1446 	ldb	_lineCount	; , lineCount
   06DD E7 69         [ 5] 1447 	stb	9,s	; , lineCount.51
                           1448 ;----- asm -----
                           1449 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1450 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           1451 ;  0 "" 2
                           1452 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1453 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           1454 ;  0 "" 2
                           1455 ;--- end asm ---
   06DF 1D            [ 2] 1456 	sex		;extendqihi2: R:b -> R:d	; ,
   06E0 1F 01         [ 6] 1457 	tfr	d,x	; , lineCount.51
   06E2 E6 66         [ 5] 1458 	ldb	6,s	; , y0
   06E4 86 FA         [ 2] 1459 	lda	#-6	;mulqihi3	; 
   06E6 3D            [11] 1460 	mul
                           1461 		;movlsbqihi: D->B
   06E7 EB 6B         [ 5] 1462 	addb	11,s	;  tmp117, ivtmp.295
   06E9 E7 89 C8 96   [ 8] 1463 	stb	_lineX0,x	;  tmp117, lineX0
                           1464 ;----- asm -----
                           1465 ;  204 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1466 	; #ENR#[196]	lineY0[lineCount] = y3d(x0, 0, y0);
                           1467 ;  0 "" 2
                           1468 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1469 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           1470 ;  0 "" 2
                           1471 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1472 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           1473 ;  0 "" 2
                           1474 ;--- end asm ---
   06ED 68 66         [ 7] 1475 	asl	6,s	;  y0
   06EF 68 66         [ 7] 1476 	asl	6,s	;  y0
   06F1 68 66         [ 7] 1477 	asl	6,s	;  y0
   06F3 E6 66         [ 5] 1478 	ldb	6,s	; , y0
   06F5 EB 6A         [ 5] 1479 	addb	10,s	; , D.2871
   06F7 E7 89 C9 0E   [ 8] 1480 	stb	_lineY0,x	; , lineY0
                           1481 ;----- asm -----
                           1482 ;  206 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1483 	; #ENR#[197]	lineX1[lineCount] = x3d(x1, 0, y1);
                           1484 ;  0 "" 2
                           1485 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1486 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           1487 ;  0 "" 2
                           1488 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1489 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           1490 ;  0 "" 2
                           1491 ;--- end asm ---
   06FB E6 64         [ 5] 1492 	ldb	4,s	; , D.2142
   06FD 86 FA         [ 2] 1493 	lda	#-6	;mulqihi3	; 
   06FF 3D            [11] 1494 	mul
   0700 ED E4         [ 5] 1495 	std	,s	; ,
                           1496 		;movlsbqihi: D->B
   0702 EB 6B         [ 5] 1497 	addb	11,s	;  tmp126, ivtmp.295
   0704 E7 89 C9 86   [ 8] 1498 	stb	_lineX1,x	;  tmp126, lineX1
                           1499 ;----- asm -----
                           1500 ;  208 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1501 	; #ENR#[198]	lineY1[lineCount] = y3d(x1, 0, y1);
                           1502 ;  0 "" 2
                           1503 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1504 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           1505 ;  0 "" 2
                           1506 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1507 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           1508 ;  0 "" 2
                           1509 ;--- end asm ---
   0708 68 64         [ 7] 1510 	asl	4,s	;  D.2142
   070A 68 64         [ 7] 1511 	asl	4,s	;  D.2142
   070C 68 64         [ 7] 1512 	asl	4,s	;  D.2142
   070E E6 64         [ 5] 1513 	ldb	4,s	; , D.2142
   0710 EB 6A         [ 5] 1514 	addb	10,s	; , D.2871
   0712 E7 89 C9 FE   [ 8] 1515 	stb	_lineY1,x	; , lineY1
                           1516 ;----- asm -----
                           1517 ;  210 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1518 	; #ENR#[199]	lineCount++;
                           1519 ;  0 "" 2
                           1520 ;--- end asm ---
   0716 E6 69         [ 5] 1521 	ldb	9,s	; , lineCount.51
   0718 5C            [ 2] 1522 	incb	; 
   0719 F7 C8 90      [ 5] 1523 	stb	_lineCount	; , lineCount
                           1524 ;----- asm -----
                           1525 ;  348 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1526 	; #ENR#[287]					y0 = -1;
                           1527 ;  0 "" 2
                           1528 ;--- end asm ---
   071C C6 FF         [ 2] 1529 	ldb	#-1	; ,
   071E E7 66         [ 5] 1530 	stb	6,s	; , y0
   0720                    1531 L57:
   0720 6C 65         [ 7] 1532 	inc	5,s	;  y
   0722 33 4C         [ 5] 1533 	leau	12,u	;  ivtmp.301,, ivtmp.301
   0724 E6 65         [ 5] 1534 	ldb	5,s	; , y
   0726 C1 11         [ 2] 1535 	cmpb	#17	;cmpqi:	; ,
   0728 10 27 00 26   [ 6] 1536 	lbeq	L68	; 
   072C                    1537 L58:
                           1538 ;----- asm -----
                           1539 ;  331 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1540 	; #ENR#[278]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
                           1541 ;  0 "" 2
                           1542 ;  333 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1543 	; #ENR#[279]			char c0 = level[index];
                           1544 ;  0 "" 2
                           1545 ;--- end asm ---
   072C E6 C4         [ 4] 1546 	ldb	,u	; ,* ivtmp.301
   072E E7 62         [ 5] 1547 	stb	2,s	; , c0
                           1548 ;----- asm -----
                           1549 ;  335 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1550 	; #ENR#[280]			char c1 = level[index+1];
                           1551 ;  0 "" 2
                           1552 ;--- end asm ---
   0730 E6 41         [ 5] 1553 	ldb	1,u	; ,
   0732 E7 68         [ 5] 1554 	stb	8,s	; , c1
                           1555 ;----- asm -----
                           1556 ;  337 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1557 	; #ENR#[281]			if (isField(c0) || isField(c1)) {
                           1558 ;  0 "" 2
                           1559 ;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1560 	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
                           1561 ;  0 "" 2
                           1562 ;--- end asm ---
   0734 E6 62         [ 5] 1563 	ldb	2,s	; , c0
   0736 C1 2E         [ 2] 1564 	cmpb	#46	;cmpqi:	; ,
   0738 10 26 FF 71   [ 6] 1565 	lbne	L69	; 
   073C                    1566 L53:
                           1567 ;----- asm -----
                           1568 ;  339 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1569 	; #ENR#[282]				if (y0 < 0) y0 = y;
                           1570 ;  0 "" 2
                           1571 ;--- end asm ---
   073C E6 66         [ 5] 1572 	ldb	6,s	; , y0
   073E C1 FF         [ 2] 1573 	cmpb	#-1	;cmpqi:	; ,
   0740 27 22         [ 3] 1574 	beq	L70	; 
   0742                    1575 L56:
                           1576 ;----- asm -----
                           1577 ;  341 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1578 	; #ENR#[283]				y1 = y;
                           1579 ;  0 "" 2
                           1580 ;--- end asm ---
   0742 E6 65         [ 5] 1581 	ldb	5,s	; , y
   0744 E7 67         [ 5] 1582 	stb	7,s	; , y1
   0746 6C 65         [ 7] 1583 	inc	5,s	;  y
   0748 33 4C         [ 5] 1584 	leau	12,u	;  ivtmp.301,, ivtmp.301
   074A E6 65         [ 5] 1585 	ldb	5,s	; , y
   074C C1 11         [ 2] 1586 	cmpb	#17	;cmpqi:	; ,
   074E 10 26 FF DA   [ 6] 1587 	lbne	L58	; 
   0752                    1588 L68:
   0752 E6 6B         [ 5] 1589 	ldb	11,s	; , ivtmp.295
   0754 CB 0E         [ 2] 1590 	addb	#14	; ,
   0756 E7 6B         [ 5] 1591 	stb	11,s	; , ivtmp.295
   0758 31 21         [ 5] 1592 	leay	1,y	;  ivtmp.300,, ivtmp.300
   075A C1 8C         [ 2] 1593 	cmpb	#-116	;cmpqi:	; ,
   075C 10 26 FF 1E   [ 6] 1594 	lbne	L59	; 
   0760 32 6E         [ 5] 1595 	leas	14,s	; ,,
   0762 35 E0         [ 8] 1596 	puls	y,u,pc	; 
   0764                    1597 L70:
   0764 E6 65         [ 5] 1598 	ldb	5,s	; , y
   0766 E7 66         [ 5] 1599 	stb	6,s	; , y0
   0768 20 D8         [ 3] 1600 	bra	L56	; 
                           1601 	.globl _setupX
   076A                    1602 _setupX:
   076A 34 60         [ 7] 1603 	pshs	y,u	; 
   076C 32 E8 EA      [ 5] 1604 	leas	-22,s	; ,,
                           1605 ;----- asm -----
                           1606 ;  250 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1607 	; #ENR#[228]	unsigned long int index;
                           1608 ;  0 "" 2
                           1609 ;  252 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1610 	; #ENR#[229]	int8_t x = 0;
                           1611 ;  0 "" 2
                           1612 ;  254 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1613 	; #ENR#[230]	int8_t y = 0;
                           1614 ;  0 "" 2
                           1615 ;  256 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1616 	; #ENR#[231]	for (y = 0; y < LEVEL_HEIGHT - 1; y++) {
                           1617 ;  0 "" 2
                           1618 ;--- end asm ---
   076F BE CA 83      [ 6] 1619 	ldx	_level	; , level
   0772 AF E8 14      [ 6] 1620 	stx	20,s	; , ivtmp.351
   0775 6F 68         [ 7] 1621 	clr	8,s	;  y
   0777 6F E8 13      [ 7] 1622 	clr	19,s	;  ivtmp.347
   077A                    1623 L80:
                           1624 ;----- asm -----
                           1625 ;  258 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1626 	; #ENR#[232]		int8_t x0 = -1;
                           1627 ;  0 "" 2
                           1628 ;  260 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1629 	; #ENR#[233]		int8_t x1 = -1;
                           1630 ;  0 "" 2
                           1631 ;  262 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1632 	; #ENR#[234]		for (x = 0; x < LEVEL_WIDTH; x++) {
                           1633 ;  0 "" 2
                           1634 ;--- end asm ---
   077A E6 E8 13      [ 5] 1635 	ldb	19,s	; , ivtmp.347
   077D CB FA         [ 2] 1636 	addb	#-6	; ,
   077F E7 64         [ 5] 1637 	stb	4,s	; ,
   0781 E6 68         [ 5] 1638 	ldb	8,s	; , y
   0783 CB 14         [ 2] 1639 	addb	#20	; ,
   0785 E7 68         [ 5] 1640 	stb	8,s	; , y
   0787 58            [ 2] 1641 	aslb	; 
   0788 58            [ 2] 1642 	aslb	; 
   0789 58            [ 2] 1643 	aslb	; 
   078A E7 6F         [ 5] 1644 	stb	15,s	; , D.3011
   078C E6 68         [ 5] 1645 	ldb	8,s	; , y
   078E CB EC         [ 2] 1646 	addb	#-20	; ,
   0790 E7 68         [ 5] 1647 	stb	8,s	; , y
   0792 E6 E8 13      [ 5] 1648 	ldb	19,s	; , ivtmp.347
   0795 CB EC         [ 2] 1649 	addb	#-20	; ,
   0797 E7 E8 10      [ 5] 1650 	stb	16,s	; , ivtmp.332
   079A 10 AE E8 14   [ 7] 1651 	ldy	20,s	;  ivtmp.355, ivtmp.351
   079E C6 FF         [ 2] 1652 	ldb	#-1	; ,
   07A0 E7 69         [ 5] 1653 	stb	9,s	; , x0
   07A2 E7 6A         [ 5] 1654 	stb	10,s	; , x1
   07A4 CE 00 00      [ 3] 1655 	ldu	#0	;  ivtmp.319,
   07A7 E6 68         [ 5] 1656 	ldb	8,s	; , y
   07A9 5C            [ 2] 1657 	incb	; 
   07AA E7 63         [ 5] 1658 	stb	3,s	; ,
   07AC 7E 08 4E      [ 4] 1659 	jmp	L79	; 
   07AF                    1660 L73:
                           1661 ;----- asm -----
                           1662 ;  287 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1663 	; #ENR#[249]			index += LEVEL_WIDTH;
                           1664 ;  0 "" 2
                           1665 ;  289 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1666 	; #ENR#[250]			char c1 = level[index];
                           1667 ;  0 "" 2
                           1668 ;--- end asm ---
   07AF E6 2C         [ 5] 1669 	ldb	12,y	; ,
   07B1 E7 62         [ 5] 1670 	stb	2,s	; , c1
                           1671 ;----- asm -----
                           1672 ;  291 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1673 	; #ENR#[251]			if (isField(c0) || isField(c1)) {
                           1674 ;  0 "" 2
                           1675 ;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1676 	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
                           1677 ;  0 "" 2
                           1678 ;--- end asm ---
   07B3 E6 6B         [ 5] 1679 	ldb	11,s	; , c0
   07B5 C1 2E         [ 2] 1680 	cmpb	#46	;cmpqi:	; ,
   07B7 10 27 00 B2   [ 6] 1681 	lbeq	L74	; 
   07BB C1 61         [ 2] 1682 	cmpb	#97	;cmpqi:	; ,
   07BD 10 27 00 AC   [ 6] 1683 	lbeq	L74	; 
   07C1 C1 6F         [ 2] 1684 	cmpb	#111	;cmpqi:	; ,
   07C3 10 27 00 A6   [ 6] 1685 	lbeq	L74	; 
                           1686 ;----- asm -----
                           1687 ;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1688 	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
                           1689 ;  0 "" 2
                           1690 ;--- end asm ---
   07C7 E6 62         [ 5] 1691 	ldb	2,s	; , c1
   07C9 C1 2E         [ 2] 1692 	cmpb	#46	;cmpqi:	; ,
   07CB 10 27 00 9E   [ 6] 1693 	lbeq	L74	; 
   07CF C1 61         [ 2] 1694 	cmpb	#97	;cmpqi:	; ,
   07D1 10 27 00 98   [ 6] 1695 	lbeq	L74	; 
   07D5 C1 6F         [ 2] 1696 	cmpb	#111	;cmpqi:	; ,
   07D7 10 27 00 92   [ 6] 1697 	lbeq	L74	; 
                           1698 ;----- asm -----
                           1699 ;  298 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1700 	; #ENR#[255]				if (x0 >= 0) {
                           1701 ;  0 "" 2
                           1702 ;--- end asm ---
   07DB E6 69         [ 5] 1703 	ldb	9,s	; , x0
   07DD C1 FF         [ 2] 1704 	cmpb	#-1	;cmpqi:	; ,
   07DF 10 27 00 57   [ 6] 1705 	lbeq	L78	; 
                           1706 ;----- asm -----
                           1707 ;  300 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1708 	; #ENR#[256]					addLine(x0, y + 1, x1 + 1, y + 1);
                           1709 ;  0 "" 2
                           1710 ;--- end asm ---
   07E3 E6 6A         [ 5] 1711 	ldb	10,s	; , x1
   07E5 5C            [ 2] 1712 	incb	; 
   07E6 E7 66         [ 5] 1713 	stb	6,s	; , D.2114
                           1714 ;----- asm -----
                           1715 ;  202 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1716 	; #ENR#[195]	lineX0[lineCount] = x3d(x0, 0, y0);
                           1717 ;  0 "" 2
                           1718 ;--- end asm ---
   07E8 F6 C8 90      [ 5] 1719 	ldb	_lineCount	; , lineCount
   07EB E7 6E         [ 5] 1720 	stb	14,s	; , lineCount.51
                           1721 ;----- asm -----
                           1722 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1723 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           1724 ;  0 "" 2
                           1725 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1726 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           1727 ;  0 "" 2
                           1728 ;--- end asm ---
   07ED 1D            [ 2] 1729 	sex		;extendqihi2: R:b -> R:d	; ,
   07EE 1F 01         [ 6] 1730 	tfr	d,x	; , lineCount.51
   07F0 E6 69         [ 5] 1731 	ldb	9,s	; , x0
   07F2 CB FE         [ 2] 1732 	addb	#-2	; ,
   07F4 E7 69         [ 5] 1733 	stb	9,s	; , x0
   07F6 86 0E         [ 2] 1734 	lda	#14	;mulqihi3	; 
   07F8 3D            [11] 1735 	mul
   07F9 ED E4         [ 5] 1736 	std	,s	; ,
   07FB E6 69         [ 5] 1737 	ldb	9,s	; , x0
   07FD CB 02         [ 2] 1738 	addb	#2	; ,
   07FF E7 69         [ 5] 1739 	stb	9,s	; , x0
   0801 E6 61         [ 5] 1740 	ldb	1,s	;movlsbqihi: msb:,s -> R:b	;  tmp329,
   0803 EB 64         [ 5] 1741 	addb	4,s	;  tmp329,
   0805 E7 89 C8 96   [ 8] 1742 	stb	_lineX0,x	;  tmp329, lineX0
                           1743 ;----- asm -----
                           1744 ;  204 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1745 	; #ENR#[196]	lineY0[lineCount] = y3d(x0, 0, y0);
                           1746 ;  0 "" 2
                           1747 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1748 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           1749 ;  0 "" 2
                           1750 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1751 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           1752 ;  0 "" 2
                           1753 ;--- end asm ---
   0809 E6 69         [ 5] 1754 	ldb	9,s	;  tmp334, x0
   080B 58            [ 2] 1755 	aslb	;  tmp334
   080C EB 69         [ 5] 1756 	addb	9,s	;  tmp334, x0
   080E EB 6F         [ 5] 1757 	addb	15,s	;  tmp334, D.3011
   0810 E7 89 C9 0E   [ 8] 1758 	stb	_lineY0,x	;  tmp334, lineY0
                           1759 ;----- asm -----
                           1760 ;  206 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1761 	; #ENR#[197]	lineX1[lineCount] = x3d(x1, 0, y1);
                           1762 ;  0 "" 2
                           1763 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1764 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           1765 ;  0 "" 2
                           1766 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1767 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           1768 ;  0 "" 2
                           1769 ;--- end asm ---
   0814 6A 6A         [ 7] 1770 	dec	10,s	;  x1
   0816 E6 6A         [ 5] 1771 	ldb	10,s	; , x1
   0818 86 0E         [ 2] 1772 	lda	#14	;mulqihi3	; 
   081A 3D            [11] 1773 	mul
   081B ED E4         [ 5] 1774 	std	,s	; ,
   081D 6C 6A         [ 7] 1775 	inc	10,s	;  x1
                           1776 		;movlsbqihi: D->B
   081F EB 64         [ 5] 1777 	addb	4,s	;  tmp341,
   0821 E7 89 C9 86   [ 8] 1778 	stb	_lineX1,x	;  tmp341, lineX1
                           1779 ;----- asm -----
                           1780 ;  208 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1781 	; #ENR#[198]	lineY1[lineCount] = y3d(x1, 0, y1);
                           1782 ;  0 "" 2
                           1783 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1784 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           1785 ;  0 "" 2
                           1786 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1787 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           1788 ;  0 "" 2
                           1789 ;--- end asm ---
   0825 E6 66         [ 5] 1790 	ldb	6,s	;  tmp346, D.2114
   0827 58            [ 2] 1791 	aslb	;  tmp346
   0828 EB 66         [ 5] 1792 	addb	6,s	;  tmp346, D.2114
   082A EB 6F         [ 5] 1793 	addb	15,s	;  tmp346, D.3011
   082C E7 89 C9 FE   [ 8] 1794 	stb	_lineY1,x	;  tmp346, lineY1
                           1795 ;----- asm -----
                           1796 ;  210 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1797 	; #ENR#[199]	lineCount++;
                           1798 ;  0 "" 2
                           1799 ;--- end asm ---
   0830 E6 6E         [ 5] 1800 	ldb	14,s	; , lineCount.51
   0832 5C            [ 2] 1801 	incb	; 
   0833 F7 C8 90      [ 5] 1802 	stb	_lineCount	; , lineCount
                           1803 ;----- asm -----
                           1804 ;  302 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1805 	; #ENR#[257]					x0 = -1;
                           1806 ;  0 "" 2
                           1807 ;--- end asm ---
   0836 C6 FF         [ 2] 1808 	ldb	#-1	; ,
   0838 E7 69         [ 5] 1809 	stb	9,s	; , x0
   083A                    1810 L78:
   083A 33 41         [ 5] 1811 	leau	1,u	;  ivtmp.319,, ivtmp.319
   083C 31 21         [ 5] 1812 	leay	1,y	;  ivtmp.355,, ivtmp.355
   083E E6 E8 10      [ 5] 1813 	ldb	16,s	; , ivtmp.332
   0841 CB 0E         [ 2] 1814 	addb	#14	; ,
   0843 E7 E8 10      [ 5] 1815 	stb	16,s	; , ivtmp.332
   0846 11 83 00 0C   [ 5] 1816 	cmpu	#12	;cmphi:	;  ivtmp.319,
   084A 10 27 00 DF   [ 6] 1817 	lbeq	L89	; 
   084E                    1818 L79:
   084E 1F 30         [ 6] 1819 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  ivtmp.319,
   0850 E7 67         [ 5] 1820 	stb	7,s	; , x
                           1821 ;----- asm -----
                           1822 ;  265 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1823 	; #ENR#[236]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
                           1824 ;  0 "" 2
                           1825 ;  267 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1826 	; #ENR#[237]			char c0 = level[index];
                           1827 ;  0 "" 2
                           1828 ;--- end asm ---
   0852 E6 A4         [ 4] 1829 	ldb	,y	; ,* ivtmp.355
   0854 E7 6B         [ 5] 1830 	stb	11,s	; , c0
                           1831 ;----- asm -----
                           1832 ;  270 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1833 	; #ENR#[239]			if (c0 == 'o') {
                           1834 ;  0 "" 2
                           1835 ;--- end asm ---
   0856 C1 6F         [ 2] 1836 	cmpb	#111	;cmpqi:	; ,
   0858 27 26         [ 3] 1837 	beq	L90	; 
   085A                    1838 L72:
                           1839 ;----- asm -----
                           1840 ;  279 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1841 	; #ENR#[244]			if (c0 == 'a') {
                           1842 ;  0 "" 2
                           1843 ;--- end asm ---
   085A C1 61         [ 2] 1844 	cmpb	#97	;cmpqi:	; ,
   085C 10 26 FF 4F   [ 6] 1845 	lbne	L73	; 
                           1846 ;----- asm -----
                           1847 ;  281 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1848 	; #ENR#[245]				startX = x;
                           1849 ;  0 "" 2
                           1850 ;--- end asm ---
   0860 E6 67         [ 5] 1851 	ldb	7,s	; , x
   0862 F7 C8 91      [ 5] 1852 	stb	_startX	; , startX
                           1853 ;----- asm -----
                           1854 ;  283 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1855 	; #ENR#[246]				startY = y;
                           1856 ;  0 "" 2
                           1857 ;--- end asm ---
   0865 E6 68         [ 5] 1858 	ldb	8,s	; , y
   0867 F7 C8 92      [ 5] 1859 	stb	_startY	; , startY
   086A 7E 07 AF      [ 4] 1860 	jmp	L73	; 
   086D                    1861 L74:
                           1862 ;----- asm -----
                           1863 ;  293 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1864 	; #ENR#[252]				if (x0 < 0) x0 = x;
                           1865 ;  0 "" 2
                           1866 ;--- end asm ---
   086D E6 69         [ 5] 1867 	ldb	9,s	; , x0
   086F C1 FF         [ 2] 1868 	cmpb	#-1	;cmpqi:	; ,
   0871 27 07         [ 3] 1869 	beq	L91	; 
   0873                    1870 L77:
                           1871 ;----- asm -----
                           1872 ;  295 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1873 	; #ENR#[253]				x1 = x;
                           1874 ;  0 "" 2
                           1875 ;--- end asm ---
   0873 E6 67         [ 5] 1876 	ldb	7,s	; , x
   0875 E7 6A         [ 5] 1877 	stb	10,s	; , x1
   0877 7E 08 3A      [ 4] 1878 	jmp	L78	; 
   087A                    1879 L91:
   087A E6 67         [ 5] 1880 	ldb	7,s	; , x
   087C E7 69         [ 5] 1881 	stb	9,s	; , x0
   087E 20 F3         [ 3] 1882 	bra	L77	; 
   0880                    1883 L90:
                           1884 ;----- asm -----
                           1885 ;  272 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1886 	; #ENR#[240]				addTarget(x, y);
                           1887 ;  0 "" 2
                           1888 ;  216 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1889 	; #ENR#[204]	lineX0[lineCount] = x3d(x, 0, y);
                           1890 ;  0 "" 2
                           1891 ;--- end asm ---
   0880 F6 C8 90      [ 5] 1892 	ldb	_lineCount	; , lineCount
   0883 E7 6C         [ 5] 1893 	stb	12,s	; , lineCount.53
                           1894 ;----- asm -----
                           1895 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1896 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           1897 ;  0 "" 2
                           1898 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1899 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           1900 ;  0 "" 2
                           1901 ;--- end asm ---
   0885 E6 67         [ 5] 1902 	ldb	7,s	; , x
   0887 86 0E         [ 2] 1903 	lda	#14	;umulqihi3	; 
   0889 3D            [11] 1904 	mul
   088A 1F 01         [ 6] 1905 	tfr	d,x	; , tmp289
   088C 1F 10         [ 6] 1906 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp289,
   088E E7 E8 11      [ 5] 1907 	stb	17,s	; , D.3060
   0891 E6 6C         [ 5] 1908 	ldb	12,s	; , lineCount.53
   0893 1D            [ 2] 1909 	sex		;extendqihi2: R:b -> R:d	; ,
   0894 1F 01         [ 6] 1910 	tfr	d,x	; , lineCount.53
   0896 E6 E8 13      [ 5] 1911 	ldb	19,s	; , ivtmp.347
   0899 CB E4         [ 2] 1912 	addb	#-28	; ,
   089B E7 E8 13      [ 5] 1913 	stb	19,s	; , ivtmp.347
   089E EB E8 11      [ 5] 1914 	addb	17,s	; , D.3060
   08A1 E7 89 C8 96   [ 8] 1915 	stb	_lineX0,x	; , lineX0
                           1916 ;----- asm -----
                           1917 ;  218 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1918 	; #ENR#[205]	lineY0[lineCount] = y3d(x, 0, y);
                           1919 ;  0 "" 2
                           1920 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1921 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           1922 ;  0 "" 2
                           1923 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1924 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           1925 ;  0 "" 2
                           1926 ;--- end asm ---
   08A5 E6 67         [ 5] 1927 	ldb	7,s	; , x
   08A7 58            [ 2] 1928 	aslb	; 
   08A8 EB 67         [ 5] 1929 	addb	7,s	; , x
   08AA E7 65         [ 5] 1930 	stb	5,s	; ,
   08AC E6 68         [ 5] 1931 	ldb	8,s	; , y
   08AE 58            [ 2] 1932 	aslb	; 
   08AF 58            [ 2] 1933 	aslb	; 
   08B0 58            [ 2] 1934 	aslb	; 
   08B1 CB 98         [ 2] 1935 	addb	#-104	; ,
   08B3 E7 E8 12      [ 5] 1936 	stb	18,s	; , D.3066
   08B6 EB 65         [ 5] 1937 	addb	5,s	; ,
   08B8 E7 89 C9 0E   [ 8] 1938 	stb	_lineY0,x	; , lineY0
                           1939 ;----- asm -----
                           1940 ;  220 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1941 	; #ENR#[206]	lineX1[lineCount] = x3d(x + 1, 0, y + 1);
                           1942 ;  0 "" 2
                           1943 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1944 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           1945 ;  0 "" 2
                           1946 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1947 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           1948 ;  0 "" 2
                           1949 ;--- end asm ---
   08BC E6 E8 10      [ 5] 1950 	ldb	16,s	; , ivtmp.332
   08BF E7 89 C9 86   [ 8] 1951 	stb	_lineX1,x	; , lineX1
                           1952 ;----- asm -----
                           1953 ;  222 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1954 	; #ENR#[207]	lineY1[lineCount] = y3d(x + 1, 0, y + 1);
                           1955 ;  0 "" 2
                           1956 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1957 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           1958 ;  0 "" 2
                           1959 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1960 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           1961 ;  0 "" 2
                           1962 ;--- end asm ---
   08C3 E6 63         [ 5] 1963 	ldb	3,s	; ,
   08C5 58            [ 2] 1964 	aslb	; 
   08C6 58            [ 2] 1965 	aslb	; 
   08C7 58            [ 2] 1966 	aslb	; 
   08C8 CB 9B         [ 2] 1967 	addb	#-101	; ,
   08CA E7 62         [ 5] 1968 	stb	2,s	; , D.3071
   08CC EB 65         [ 5] 1969 	addb	5,s	; ,
   08CE E7 89 C9 FE   [ 8] 1970 	stb	_lineY1,x	; , lineY1
                           1971 ;----- asm -----
                           1972 ;  224 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1973 	; #ENR#[208]	lineCount++;
                           1974 ;  0 "" 2
                           1975 ;--- end asm ---
   08D2 E6 6C         [ 5] 1976 	ldb	12,s	; , lineCount.53
   08D4 5C            [ 2] 1977 	incb	; 
   08D5 E7 6D         [ 5] 1978 	stb	13,s	; , lineCount.54
                           1979 ;----- asm -----
                           1980 ;  226 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1981 	; #ENR#[209]	lineX0[lineCount] = x3d(x + 1, 0, y);
                           1982 ;  0 "" 2
                           1983 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1984 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           1985 ;  0 "" 2
                           1986 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           1987 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           1988 ;  0 "" 2
                           1989 ;--- end asm ---
   08D7 1D            [ 2] 1990 	sex		;extendqihi2: R:b -> R:d	; ,
   08D8 1F 01         [ 6] 1991 	tfr	d,x	; , lineCount.54
   08DA E6 E8 13      [ 5] 1992 	ldb	19,s	; , ivtmp.347
   08DD CB 0E         [ 2] 1993 	addb	#14	; ,
   08DF E7 E8 13      [ 5] 1994 	stb	19,s	; , ivtmp.347
   08E2 E6 E8 11      [ 5] 1995 	ldb	17,s	; , D.3060
   08E5 EB E8 13      [ 5] 1996 	addb	19,s	; , ivtmp.347
   08E8 E7 89 C8 96   [ 8] 1997 	stb	_lineX0,x	; , lineX0
   08EC E6 E8 13      [ 5] 1998 	ldb	19,s	; , ivtmp.347
   08EF CB 0E         [ 2] 1999 	addb	#14	; ,
   08F1 E7 E8 13      [ 5] 2000 	stb	19,s	; , ivtmp.347
                           2001 ;----- asm -----
                           2002 ;  228 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2003 	; #ENR#[210]	lineY0[lineCount] = y3d(x + 1, 0, y);
                           2004 ;  0 "" 2
                           2005 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2006 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           2007 ;  0 "" 2
                           2008 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2009 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           2010 ;  0 "" 2
                           2011 ;--- end asm ---
   08F4 E6 E8 12      [ 5] 2012 	ldb	18,s	; , D.3066
   08F7 CB 03         [ 2] 2013 	addb	#3	; ,
   08F9 E7 E8 12      [ 5] 2014 	stb	18,s	; , D.3066
   08FC E6 65         [ 5] 2015 	ldb	5,s	; ,
   08FE EB E8 12      [ 5] 2016 	addb	18,s	; , D.3066
   0901 E7 89 C9 0E   [ 8] 2017 	stb	_lineY0,x	; , lineY0
                           2018 ;----- asm -----
                           2019 ;  230 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2020 	; #ENR#[211]	lineX1[lineCount] = x3d(x, 0, y + 1);
                           2021 ;  0 "" 2
                           2022 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2023 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           2024 ;  0 "" 2
                           2025 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2026 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           2027 ;  0 "" 2
                           2028 ;--- end asm ---
   0905 E6 E8 10      [ 5] 2029 	ldb	16,s	; , ivtmp.332
   0908 CB F2         [ 2] 2030 	addb	#-14	; ,
   090A E7 89 C9 86   [ 8] 2031 	stb	_lineX1,x	; , lineX1
                           2032 ;----- asm -----
                           2033 ;  232 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2034 	; #ENR#[212]	lineY1[lineCount] = y3d(x, 0, y + 1);
                           2035 ;  0 "" 2
                           2036 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2037 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           2038 ;  0 "" 2
                           2039 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2040 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           2041 ;  0 "" 2
                           2042 ;--- end asm ---
   090E E6 62         [ 5] 2043 	ldb	2,s	; , D.3071
   0910 CB FD         [ 2] 2044 	addb	#-3	; ,
   0912 EB 65         [ 5] 2045 	addb	5,s	; ,
   0914 E7 89 C9 FE   [ 8] 2046 	stb	_lineY1,x	; , lineY1
                           2047 ;----- asm -----
                           2048 ;  234 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2049 	; #ENR#[213]	lineCount++;
                           2050 ;  0 "" 2
                           2051 ;--- end asm ---
   0918 E6 6D         [ 5] 2052 	ldb	13,s	; , lineCount.54
   091A 5C            [ 2] 2053 	incb	; 
   091B F7 C8 90      [ 5] 2054 	stb	_lineCount	; , lineCount
                           2055 ;----- asm -----
                           2056 ;  274 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2057 	; #ENR#[241]				endX = x;
                           2058 ;  0 "" 2
                           2059 ;--- end asm ---
   091E 1F 30         [ 6] 2060 	tfr	u,d	;  ivtmp.319,
   0920 F7 C8 93      [ 5] 2061 	stb	_endX	;movlsbqihi: R:d -> _endX	;  endX,
                           2062 ;----- asm -----
                           2063 ;  276 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2064 	; #ENR#[242]				endY = y;
                           2065 ;  0 "" 2
                           2066 ;--- end asm ---
   0923 E6 68         [ 5] 2067 	ldb	8,s	; , y
   0925 F7 C8 94      [ 5] 2068 	stb	_endY	; , endY
   0928 E6 6B         [ 5] 2069 	ldb	11,s	; , c0
   092A 7E 08 5A      [ 4] 2070 	jmp	L72	; 
   092D                    2071 L89:
   092D E6 63         [ 5] 2072 	ldb	3,s	; ,
   092F E7 68         [ 5] 2073 	stb	8,s	; , y
   0931 E6 64         [ 5] 2074 	ldb	4,s	; ,
   0933 E7 E8 13      [ 5] 2075 	stb	19,s	; , ivtmp.347
   0936 EC E8 14      [ 6] 2076 	ldd	20,s	; , ivtmp.351
   0939 C3 00 0C      [ 4] 2077 	addd	#12	; ,
   093C ED E8 14      [ 6] 2078 	std	20,s	; , ivtmp.351
   093F E6 68         [ 5] 2079 	ldb	8,s	; , y
   0941 C1 10         [ 2] 2080 	cmpb	#16	;cmpqi:	; ,
   0943 10 26 FE 33   [ 6] 2081 	lbne	L80	; 
   0947 32 E8 16      [ 5] 2082 	leas	22,s	; ,,
   094A 35 E0         [ 8] 2083 	puls	y,u,pc	; 
                           2084 	.globl _blockMoving
   094C                    2085 _blockMoving:
   094C 34 40         [ 6] 2086 	pshs	u	; 
   094E 32 73         [ 5] 2087 	leas	-13,s	; ,,
                           2088 ;----- asm -----
                           2089 ;  746 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2090 	; #ENR#[538]	drawField();
                           2091 ;  0 "" 2
                           2092 ;--- end asm ---
   0950 BD 05 87      [ 8] 2093 	jsr	_drawField	; 
                           2094 ;----- asm -----
                           2095 ;  748 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2096 	; #ENR#[539]	drawBlock(0);
                           2097 ;  0 "" 2
                           2098 ;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2099 	; #ENR#[481]	zergnd();
                           2100 ;  0 "" 2
                           2101 ;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0953 BD F3 54      [ 8] 2102 	jsr 0xF354; Vec_Sub_ZEROIT
                           2103 	
                           2104 ;  0 "" 2
                           2105 ;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2106 	; #ENR#[482]	intens(0x63);
                           2107 ;  0 "" 2
                           2108 ;--- end asm ---
   0956 C6 63         [ 2] 2109 	ldb	#99	;  a,
                           2110 ;----- asm -----
                           2111 ;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0958 1F 98         [ 6] 2112 	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
   095A BD F2 AB      [ 8] 2113 	jsr 0xF2AB; Vec_Sub_INTENS
                           2114 	
                           2115 ;  0 "" 2
                           2116 ;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2117 	; #ENR#[483]	positd(0, yofs);
                           2118 ;  0 "" 2
                           2119 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2120 	; #ENR#[40]	Moveto_d_7F(y,x);
                           2121 ;  0 "" 2
                           2122 ;--- end asm ---
   095D 6F 6C         [ 7] 2123 	clr	12,s	;  a
   095F 6F 6B         [ 7] 2124 	clr	11,s	;  b
                           2125 ;----- asm -----
                           2126 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0961 A6 6C         [ 5] 2127 	lda 12,s	;  a
   0963 E6 6B         [ 5] 2128 	ldb 11,s	;  b
   0965 BD F2 FC      [ 8] 2129 	jsr 0xF2FC; Vec_Sub_POSITD
                           2130 	
                           2131 ;  0 "" 2
                           2132 ;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2133 	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           2134 ;  0 "" 2
                           2135 ;--- end asm ---
   0968 F6 CA 77      [ 5] 2136 	ldb	_blockX	; , blockX
   096B E7 68         [ 5] 2137 	stb	8,s	; , blockX.78
                           2138 ;----- asm -----
                           2139 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2140 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           2141 ;  0 "" 2
                           2142 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2143 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           2144 ;  0 "" 2
                           2145 ;--- end asm ---
   096D 58            [ 2] 2146 	aslb	; 
   096E EB 68         [ 5] 2147 	addb	8,s	; , blockX.78
   0970 E7 63         [ 5] 2148 	stb	3,s	; ,
   0972 F6 CA 78      [ 5] 2149 	ldb	_blockY	;  tmp48, blockY
   0975 58            [ 2] 2150 	aslb	;  tmp48
   0976 58            [ 2] 2151 	aslb	;  tmp48
   0977 58            [ 2] 2152 	aslb	;  tmp48
   0978 EB 63         [ 5] 2153 	addb	3,s	;  tmp48,
   097A CB 98         [ 2] 2154 	addb	#-104	;  tmp48,
   097C E7 63         [ 5] 2155 	stb	3,s	;  tmp48,
                           2156 ;----- asm -----
                           2157 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2158 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           2159 ;  0 "" 2
                           2160 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2161 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           2162 ;  0 "" 2
                           2163 ;--- end asm ---
   097E E6 68         [ 5] 2164 	ldb	8,s	; , blockX.78
   0980 CB FE         [ 2] 2165 	addb	#-2	; ,
   0982 86 0E         [ 2] 2166 	lda	#14	;mulqihi3	; 
   0984 3D            [11] 2167 	mul
   0985 1F 03         [ 6] 2168 	tfr	d,u	; , tmp51
   0987 F6 CA 78      [ 5] 2169 	ldb	_blockY	; , blockY
   098A 86 FA         [ 2] 2170 	lda	#-6	;mulqihi3	; 
   098C 3D            [11] 2171 	mul
   098D 1F 01         [ 6] 2172 	tfr	d,x	; , tmp52
   098F 1F 30         [ 6] 2173 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp51,
   0991 E7 62         [ 5] 2174 	stb	2,s	; ,
   0993 1F 10         [ 6] 2175 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp52, tmp54
   0995 EB 62         [ 5] 2176 	addb	2,s	;  tmp54,
   0997 E7 62         [ 5] 2177 	stb	2,s	;  tmp54,
                           2178 ;----- asm -----
                           2179 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2180 	; #ENR#[40]	Moveto_d_7F(y,x);
                           2181 ;  0 "" 2
                           2182 ;--- end asm ---
   0999 E6 63         [ 5] 2183 	ldb	3,s	; ,
   099B E7 6B         [ 5] 2184 	stb	11,s	; , a
   099D E6 62         [ 5] 2185 	ldb	2,s	; ,
   099F E7 6C         [ 5] 2186 	stb	12,s	; , b
                           2187 ;----- asm -----
                           2188 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   09A1 A6 6B         [ 5] 2189 	lda 11,s	;  a
   09A3 E6 6C         [ 5] 2190 	ldb 12,s	;  b
   09A5 BD F2 FC      [ 8] 2191 	jsr 0xF2FC; Vec_Sub_POSITD
                           2192 	
                           2193 ;  0 "" 2
                           2194 ;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2195 	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           2196 ;  0 "" 2
                           2197 ;--- end asm ---
   09A8 F6 CA 7D      [ 5] 2198 	ldb	_blockAnimationStep	; , blockAnimationStep
   09AB 1D            [ 2] 2199 	sex		;extendqihi2: R:b -> R:d	; ,
   09AC ED E4         [ 5] 2200 	std	,s	; ,
   09AE 58            [ 2] 2201 	aslb	; 
   09AF 49            [ 2] 2202 	rola	; 
   09B0 FE CA 79      [ 6] 2203 	ldu	_blockAnimation	; , blockAnimation
   09B3 30 CB         [ 8] 2204 	leax	d,u	;  tmp58, tmp57,
   09B5 AE 84         [ 5] 2205 	ldx	,x	;  D.3148,
                           2206 ;----- asm -----
                           2207 ;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   09B7 BD F4 08      [ 8] 2208 	jsr 0xF408; Vec_Sub_PACK1X
                           2209 	
                           2210 ;  0 "" 2
                           2211 ;  750 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2212 	; #ENR#[540]	doBlockAnimation();
                           2213 ;  0 "" 2
                           2214 ;  726 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2215 	; #ENR#[525]	if (blockAnimating) {
                           2216 ;  0 "" 2
                           2217 ;--- end asm ---
   09BA 7D CA 7E      [ 7] 2218 	tst	_blockAnimating	;  blockAnimating
   09BD 27 0C         [ 3] 2219 	beq	L93	; 
                           2220 ;----- asm -----
                           2221 ;  728 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2222 	; #ENR#[526]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
                           2223 ;  0 "" 2
                           2224 ;--- end asm ---
   09BF 7C CA 7D      [ 7] 2225 	inc	_blockAnimationStep	;  blockAnimationStep
   09C2 F6 CA 7D      [ 5] 2226 	ldb	_blockAnimationStep	;  blockAnimationStep.86, blockAnimationStep
   09C5 C1 0C         [ 2] 2227 	cmpb	#12	;cmpqi:	;  blockAnimationStep.86,
   09C7 10 27 00 D7   [ 6] 2228 	lbeq	L115	; 
   09CB                    2229 L93:
                           2230 ;----- asm -----
                           2231 ;  752 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2232 	; #ENR#[541]	if (!blockAnimating) {
                           2233 ;  0 "" 2
                           2234 ;--- end asm ---
   09CB 7D CA 7E      [ 7] 2235 	tst	_blockAnimating	;  blockAnimating
   09CE 10 26 00 9C   [ 6] 2236 	lbne	L114	; 
                           2237 ;----- asm -----
                           2238 ;  758 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2239 	; #ENR#[546]		unsigned long int index = (unsigned long int )blockY * LEVEL_WIDTH + (unsigned long int)blockX;
                           2240 ;  0 "" 2
                           2241 ;--- end asm ---
   09D2 F6 CA 78      [ 5] 2242 	ldb	_blockY	; , blockY
   09D5 86 0C         [ 2] 2243 	lda	#12	;mulqihi3	; 
   09D7 3D            [11] 2244 	mul
   09D8 1F 03         [ 6] 2245 	tfr	d,u	; , tmp60
   09DA F6 CA 77      [ 5] 2246 	ldb	_blockX	; , blockX
   09DD 1D            [ 2] 2247 	sex		;extendqihi2: R:b -> R:d	; ,
   09DE 1F 01         [ 6] 2248 	tfr	d,x	; , blockX
   09E0 1F 30         [ 6] 2249 	tfr	u,d	;  tmp60,
   09E2 30 8B         [ 8] 2250 	leax	d,x	; ,, blockX
   09E4 AF E4         [ 5] 2251 	stx	,s	; , index
                           2252 ;----- asm -----
                           2253 ;  760 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2254 	; #ENR#[547]		char c0 = isField(level[index]);
                           2255 ;  0 "" 2
                           2256 ;--- end asm ---
   09E6 1E 01         [ 8] 2257 	exg	d,x	; , tmp70
   09E8 F3 CA 83      [ 7] 2258 	addd	_level	; , level
   09EB 1E 01         [ 8] 2259 	exg	d,x	; , tmp70
   09ED E6 84         [ 4] 2260 	ldb	,x	;  D.2252,
                           2261 ;----- asm -----
                           2262 ;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2263 	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
                           2264 ;  0 "" 2
                           2265 ;--- end asm ---
   09EF C1 2E         [ 2] 2266 	cmpb	#46	;cmpqi:	;  D.2252,
   09F1 10 27 00 7D   [ 6] 2267 	lbeq	L95	; 
   09F5 C1 61         [ 2] 2268 	cmpb	#97	;cmpqi:	;  D.2252,
   09F7 10 27 00 77   [ 6] 2269 	lbeq	L95	; 
   09FB C8 6F         [ 2] 2270 	eorb	#111	;  D.2252,
   09FD 4F            [ 2] 2271 	clra		;zero_extendqihi: R:b -> R:d	;  D.2252, tmp72
   09FE C3 FF FF      [ 4] 2272 	addd	#-1	;  tmp73,
   0A01 1F 89         [ 6] 2273 	tfr	a,b	; ,
   0A03 4F            [ 2] 2274 	clra		;zero_extendqihi: R:b -> R:d	; ,
   0A04 59            [ 2] 2275 	rolb	; 
   0A05 59            [ 2] 2276 	rolb	; 
   0A06 C4 01         [ 2] 2277 	andb	#1	; ,
   0A08 E7 6A         [ 5] 2278 	stb	10,s	; , prephitmp.370
   0A0A                    2279 L97:
                           2280 ;----- asm -----
                           2281 ;  762 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2282 	; #ENR#[548]		char c1 = isField(level[index+1]);
                           2283 ;  0 "" 2
                           2284 ;--- end asm ---
   0A0A E6 01         [ 5] 2285 	ldb	1,x	;  D.2256,
                           2286 ;----- asm -----
                           2287 ;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2288 	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
                           2289 ;  0 "" 2
                           2290 ;--- end asm ---
   0A0C C1 2E         [ 2] 2291 	cmpb	#46	;cmpqi:	;  D.2256,
   0A0E 10 27 00 80   [ 6] 2292 	lbeq	L98	; 
   0A12 C1 61         [ 2] 2293 	cmpb	#97	;cmpqi:	;  D.2256,
   0A14 10 27 00 7A   [ 6] 2294 	lbeq	L98	; 
   0A18 C8 6F         [ 2] 2295 	eorb	#111	;  D.2256,
   0A1A 4F            [ 2] 2296 	clra		;zero_extendqihi: R:b -> R:d	;  D.2256, tmp76
   0A1B C3 FF FF      [ 4] 2297 	addd	#-1	;  tmp77,
   0A1E 1F 89         [ 6] 2298 	tfr	a,b	; ,
   0A20 4F            [ 2] 2299 	clra		;zero_extendqihi: R:b -> R:d	; ,
   0A21 59            [ 2] 2300 	rolb	; 
   0A22 59            [ 2] 2301 	rolb	; 
   0A23 C4 01         [ 2] 2302 	andb	#1	; ,
   0A25 E7 65         [ 5] 2303 	stb	5,s	; , iftmp.50
   0A27                    2304 L100:
                           2305 ;----- asm -----
                           2306 ;  764 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2307 	; #ENR#[549]		char c2 = isField(level[index + LEVEL_WIDTH]);
                           2308 ;  0 "" 2
                           2309 ;--- end asm ---
   0A27 E6 0C         [ 5] 2310 	ldb	12,x	;  D.2260,
                           2311 ;----- asm -----
                           2312 ;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2313 	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
                           2314 ;  0 "" 2
                           2315 ;--- end asm ---
   0A29 C1 2E         [ 2] 2316 	cmpb	#46	;cmpqi:	;  D.2260,
   0A2B 27 4C         [ 3] 2317 	beq	L101	; 
   0A2D C1 61         [ 2] 2318 	cmpb	#97	;cmpqi:	;  D.2260,
   0A2F 27 48         [ 3] 2319 	beq	L101	; 
   0A31 C8 6F         [ 2] 2320 	eorb	#111	;  D.2260,
   0A33 4F            [ 2] 2321 	clra		;zero_extendqihi: R:b -> R:d	;  D.2260, tmp80
   0A34 C3 FF FF      [ 4] 2322 	addd	#-1	;  tmp81,
   0A37 1F 89         [ 6] 2323 	tfr	a,b	; ,
   0A39 4F            [ 2] 2324 	clra		;zero_extendqihi: R:b -> R:d	; ,
   0A3A 59            [ 2] 2325 	rolb	; 
   0A3B 59            [ 2] 2326 	rolb	; 
   0A3C C4 01         [ 2] 2327 	andb	#1	; ,
   0A3E E7 67         [ 5] 2328 	stb	7,s	; , iftmp.50
                           2329 ;----- asm -----
                           2330 ;  766 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2331 	; #ENR#[550]		switch (blockOrientation) {
                           2332 ;  0 "" 2
                           2333 ;--- end asm ---
   0A40 F6 CA 76      [ 5] 2334 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   0A43 C1 01         [ 2] 2335 	cmpb	#1	;cmpqi:	;  blockOrientation,
   0A45 27 3D         [ 3] 2336 	beq	L106	; 
   0A47                    2337 L118:
   0A47 C1 01         [ 2] 2338 	cmpb	#1	;cmpqi:	;  blockOrientation,
   0A49 10 25 00 4C   [ 6] 2339 	lblo	L105	; 
   0A4D C1 02         [ 2] 2340 	cmpb	#2	;cmpqi:	;  blockOrientation,
   0A4F 10 27 00 6A   [ 6] 2341 	lbeq	L116	; 
   0A53                    2342 L104:
                           2343 ;----- asm -----
                           2344 ;  798 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2345 	; #ENR#[569]		if (blockOrientation == Standing && blockX == endX && blockY == endY) {
                           2346 ;  0 "" 2
                           2347 ;--- end asm ---
   0A53 7D CA 76      [ 7] 2348 	tst	_blockOrientation	;  blockOrientation
   0A56 26 0A         [ 3] 2349 	bne	L113	; 
   0A58 F6 CA 77      [ 5] 2350 	ldb	_blockX	; , blockX
   0A5B F1 C8 93      [ 5] 2351 	cmpb	_endX	;cmpqi:	; , endX
   0A5E 10 27 00 69   [ 6] 2352 	lbeq	L117	; 
   0A62                    2353 L113:
                           2354 ;----- asm -----
                           2355 ;  808 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2356 	; #ENR#[575]			if (gameState != BlockFalling) {
                           2357 ;  0 "" 2
                           2358 ;--- end asm ---
   0A62 F6 CA 85      [ 5] 2359 	ldb	_gameState	; , gameState
   0A65 C1 03         [ 2] 2360 	cmpb	#3	;cmpqi:	; ,
   0A67 27 05         [ 3] 2361 	beq	L114	; 
                           2362 ;----- asm -----
                           2363 ;  810 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2364 	; #ENR#[576]				gameState = BlockWaiting;
                           2365 ;  0 "" 2
                           2366 ;--- end asm ---
   0A69 C6 01         [ 2] 2367 	ldb	#1	; ,
   0A6B F7 CA 85      [ 5] 2368 	stb	_gameState	; , gameState
   0A6E                    2369 L114:
   0A6E 32 6D         [ 5] 2370 	leas	13,s	; ,,
   0A70 35 C0         [ 7] 2371 	puls	u,pc	; 
   0A72                    2372 L95:
   0A72 C6 01         [ 2] 2373 	ldb	#1	; ,
   0A74 E7 6A         [ 5] 2374 	stb	10,s	; , prephitmp.370
   0A76 7E 0A 0A      [ 4] 2375 	jmp	L97	; 
   0A79                    2376 L101:
   0A79 C6 01         [ 2] 2377 	ldb	#1	; ,
   0A7B E7 67         [ 5] 2378 	stb	7,s	; , iftmp.50
                           2379 ;----- asm -----
                           2380 ;  766 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2381 	; #ENR#[550]		switch (blockOrientation) {
                           2382 ;  0 "" 2
                           2383 ;--- end asm ---
   0A7D F6 CA 76      [ 5] 2384 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   0A80 C1 01         [ 2] 2385 	cmpb	#1	;cmpqi:	;  blockOrientation,
   0A82 26 C3         [ 3] 2386 	bne	L118	; 
   0A84                    2387 L106:
                           2388 ;----- asm -----
                           2389 ;  779 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2390 	; #ENR#[557]			if (!c0 || !c2) {
                           2391 ;  0 "" 2
                           2392 ;--- end asm ---
   0A84 6D 6A         [ 7] 2393 	tst	10,s	;  prephitmp.370
   0A86 27 04         [ 3] 2394 	beq	L109	; 
   0A88 6D 67         [ 7] 2395 	tst	7,s	;  iftmp.50
   0A8A 26 03         [ 3] 2396 	bne	L110	; 
   0A8C                    2397 L109:
                           2398 ;----- asm -----
                           2399 ;  781 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2400 	; #ENR#[558]				startBlockFalling();
                           2401 ;  0 "" 2
                           2402 ;--- end asm ---
   0A8C BD 05 6D      [ 8] 2403 	jsr	_startBlockFalling	; 
   0A8F                    2404 L110:
                           2405 ;----- asm -----
                           2406 ;  784 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2407 	; #ENR#[560]			break;
                           2408 ;  0 "" 2
                           2409 ;--- end asm ---
   0A8F 7E 0A 53      [ 4] 2410 	jmp	L104	; 
   0A92                    2411 L98:
   0A92 C6 01         [ 2] 2412 	ldb	#1	; ,
   0A94 E7 65         [ 5] 2413 	stb	5,s	; , iftmp.50
   0A96 7E 0A 27      [ 4] 2414 	jmp	L100	; 
   0A99                    2415 L105:
                           2416 ;----- asm -----
                           2417 ;  770 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2418 	; #ENR#[552]			if (!c0) {
                           2419 ;  0 "" 2
                           2420 ;--- end asm ---
   0A99 6D 6A         [ 7] 2421 	tst	10,s	;  prephitmp.370
   0A9B 10 27 00 4C   [ 6] 2422 	lbeq	L119	; 
   0A9F                    2423 L108:
                           2424 ;----- asm -----
                           2425 ;  775 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2426 	; #ENR#[555]			break;
                           2427 ;  0 "" 2
                           2428 ;--- end asm ---
   0A9F 7E 0A 53      [ 4] 2429 	jmp	L104	; 
   0AA2                    2430 L115:
                           2431 ;----- asm -----
                           2432 ;  730 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2433 	; #ENR#[527]			blockX = nextBlockX;
                           2434 ;  0 "" 2
                           2435 ;--- end asm ---
   0AA2 F6 CA 7F      [ 5] 2436 	ldb	_nextBlockX	; , nextBlockX
   0AA5 F7 CA 77      [ 5] 2437 	stb	_blockX	; , blockX
                           2438 ;----- asm -----
                           2439 ;  732 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2440 	; #ENR#[528]			blockY = nextBlockY;
                           2441 ;  0 "" 2
                           2442 ;--- end asm ---
   0AA8 F6 CA 80      [ 5] 2443 	ldb	_nextBlockY	; , nextBlockY
   0AAB F7 CA 78      [ 5] 2444 	stb	_blockY	; , blockY
                           2445 ;----- asm -----
                           2446 ;  734 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2447 	; #ENR#[529]			blockAnimationStep = 0;
                           2448 ;  0 "" 2
                           2449 ;--- end asm ---
   0AAE 7F CA 7D      [ 7] 2450 	clr	_blockAnimationStep	;  blockAnimationStep
                           2451 ;----- asm -----
                           2452 ;  736 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2453 	; #ENR#[530]			blockAnimation = nextBlockAnimation;
                           2454 ;  0 "" 2
                           2455 ;--- end asm ---
   0AB1 BE CA 7B      [ 6] 2456 	ldx	_nextBlockAnimation	; , nextBlockAnimation
   0AB4 BF CA 79      [ 6] 2457 	stx	_blockAnimation	; , blockAnimation
                           2458 ;----- asm -----
                           2459 ;  738 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2460 	; #ENR#[531]			blockAnimating = 0;
                           2461 ;  0 "" 2
                           2462 ;--- end asm ---
   0AB7 7F CA 7E      [ 7] 2463 	clr	_blockAnimating	;  blockAnimating
   0ABA 7E 09 CB      [ 4] 2464 	jmp	L93	; 
   0ABD                    2465 L116:
                           2466 ;----- asm -----
                           2467 ;  788 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2468 	; #ENR#[562]			if (!c0 || ! c1) {
                           2469 ;  0 "" 2
                           2470 ;--- end asm ---
   0ABD 6D 6A         [ 7] 2471 	tst	10,s	;  prephitmp.370
   0ABF 27 04         [ 3] 2472 	beq	L111	; 
   0AC1 6D 65         [ 7] 2473 	tst	5,s	;  iftmp.50
   0AC3 26 03         [ 3] 2474 	bne	L112	; 
   0AC5                    2475 L111:
                           2476 ;----- asm -----
                           2477 ;  790 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2478 	; #ENR#[563]				startBlockFalling();
                           2479 ;  0 "" 2
                           2480 ;--- end asm ---
   0AC5 BD 05 6D      [ 8] 2481 	jsr	_startBlockFalling	; 
   0AC8                    2482 L112:
                           2483 ;----- asm -----
                           2484 ;  793 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2485 	; #ENR#[565]			break;
                           2486 ;  0 "" 2
                           2487 ;--- end asm ---
   0AC8 7E 0A 53      [ 4] 2488 	jmp	L104	; 
   0ACB                    2489 L117:
   0ACB F6 CA 78      [ 5] 2490 	ldb	_blockY	; , blockY
   0ACE F1 C8 94      [ 5] 2491 	cmpb	_endY	;cmpqi:	; , endY
   0AD1 10 26 FF 8D   [ 6] 2492 	lbne	L113	; 
                           2493 ;----- asm -----
                           2494 ;  800 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2495 	; #ENR#[570]			blockYOfs = 0;
                           2496 ;  0 "" 2
                           2497 ;--- end asm ---
   0AD5 7F CA 82      [ 7] 2498 	clr	_blockYOfs	;  blockYOfs
                           2499 ;----- asm -----
                           2500 ;  802 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2501 	; #ENR#[571]			gameState = BlockMovingAtEnd;
                           2502 ;  0 "" 2
                           2503 ;--- end asm ---
   0AD8 C6 04         [ 2] 2504 	ldb	#4	; ,
   0ADA F7 CA 85      [ 5] 2505 	stb	_gameState	; , gameState
                           2506 ;----- asm -----
                           2507 ;  804 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2508 	; #ENR#[572]			changeMusic(levelEndMusic);
                           2509 ;  0 "" 2
                           2510 ;  358 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2511 	; #ENR#[296]	tstat = 1;
                           2512 ;  0 "" 2
                           2513 ;--- end asm ---
   0ADD C6 01         [ 2] 2514 	ldb	#1	; ,
   0ADF F7 C8 56      [ 5] 2515 	stb	-14250	; ,
                           2516 ;----- asm -----
                           2517 ;  360 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2518 	; #ENR#[297]	currentMusic = music;
                           2519 ;  0 "" 2
                           2520 ;--- end asm ---
   0AE2 8E 11 53      [ 3] 2521 	ldx	#_levelEndMusic	; ,
   0AE5 BF C8 88      [ 6] 2522 	stx	_currentMusic	; , currentMusic
   0AE8 7E 0A 6E      [ 4] 2523 	jmp	L114	; 
   0AEB                    2524 L119:
                           2525 ;----- asm -----
                           2526 ;  772 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2527 	; #ENR#[553]				startBlockFalling();
                           2528 ;  0 "" 2
                           2529 ;--- end asm ---
   0AEB BD 05 6D      [ 8] 2530 	jsr	_startBlockFalling	; 
   0AEE 7E 0A 9F      [ 4] 2531 	jmp	L108	; 
                           2532 	.globl _blockMovingToStart
   0AF1                    2533 _blockMovingToStart:
   0AF1 34 40         [ 6] 2534 	pshs	u	; 
   0AF3 32 78         [ 5] 2535 	leas	-8,s	; ,,
                           2536 ;----- asm -----
                           2537 ;  674 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2538 	; #ENR#[492]	drawField();
                           2539 ;  0 "" 2
                           2540 ;--- end asm ---
   0AF5 BD 05 87      [ 8] 2541 	jsr	_drawField	; 
                           2542 ;----- asm -----
                           2543 ;  676 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2544 	; #ENR#[493]	drawBlock(blockYOfs);
                           2545 ;  0 "" 2
                           2546 ;--- end asm ---
   0AF8 F6 CA 82      [ 5] 2547 	ldb	_blockYOfs	; , blockYOfs
   0AFB E7 64         [ 5] 2548 	stb	4,s	; , blockYOfs.81
                           2549 ;----- asm -----
                           2550 ;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2551 	; #ENR#[481]	zergnd();
                           2552 ;  0 "" 2
                           2553 ;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0AFD BD F3 54      [ 8] 2554 	jsr 0xF354; Vec_Sub_ZEROIT
                           2555 	
                           2556 ;  0 "" 2
                           2557 ;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2558 	; #ENR#[482]	intens(0x63);
                           2559 ;  0 "" 2
                           2560 ;--- end asm ---
   0B00 C6 63         [ 2] 2561 	ldb	#99	;  a,
                           2562 ;----- asm -----
                           2563 ;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0B02 1F 98         [ 6] 2564 	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
   0B04 BD F2 AB      [ 8] 2565 	jsr 0xF2AB; Vec_Sub_INTENS
                           2566 	
                           2567 ;  0 "" 2
                           2568 ;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2569 	; #ENR#[483]	positd(0, yofs);
                           2570 ;  0 "" 2
                           2571 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2572 	; #ENR#[40]	Moveto_d_7F(y,x);
                           2573 ;  0 "" 2
                           2574 ;--- end asm ---
   0B07 E6 64         [ 5] 2575 	ldb	4,s	; , blockYOfs.81
   0B09 E7 67         [ 5] 2576 	stb	7,s	; , a
   0B0B 6F 66         [ 7] 2577 	clr	6,s	;  b
                           2578 ;----- asm -----
                           2579 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0B0D A6 67         [ 5] 2580 	lda 7,s	;  a
   0B0F E6 66         [ 5] 2581 	ldb 6,s	;  b
   0B11 BD F2 FC      [ 8] 2582 	jsr 0xF2FC; Vec_Sub_POSITD
                           2583 	
                           2584 ;  0 "" 2
                           2585 ;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2586 	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           2587 ;  0 "" 2
                           2588 ;--- end asm ---
   0B14 F6 CA 77      [ 5] 2589 	ldb	_blockX	; , blockX
   0B17 E7 65         [ 5] 2590 	stb	5,s	; , blockX.78
                           2591 ;----- asm -----
                           2592 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2593 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           2594 ;  0 "" 2
                           2595 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2596 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           2597 ;  0 "" 2
                           2598 ;--- end asm ---
   0B19 58            [ 2] 2599 	aslb	; 
   0B1A EB 65         [ 5] 2600 	addb	5,s	; , blockX.78
   0B1C E7 63         [ 5] 2601 	stb	3,s	; ,
   0B1E F6 CA 78      [ 5] 2602 	ldb	_blockY	;  tmp41, blockY
   0B21 58            [ 2] 2603 	aslb	;  tmp41
   0B22 58            [ 2] 2604 	aslb	;  tmp41
   0B23 58            [ 2] 2605 	aslb	;  tmp41
   0B24 EB 63         [ 5] 2606 	addb	3,s	;  tmp41,
   0B26 CB 98         [ 2] 2607 	addb	#-104	;  tmp41,
   0B28 E7 63         [ 5] 2608 	stb	3,s	;  tmp41,
                           2609 ;----- asm -----
                           2610 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2611 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           2612 ;  0 "" 2
                           2613 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2614 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           2615 ;  0 "" 2
                           2616 ;--- end asm ---
   0B2A E6 65         [ 5] 2617 	ldb	5,s	; , blockX.78
   0B2C CB FE         [ 2] 2618 	addb	#-2	; ,
   0B2E 86 0E         [ 2] 2619 	lda	#14	;mulqihi3	; 
   0B30 3D            [11] 2620 	mul
   0B31 1F 03         [ 6] 2621 	tfr	d,u	; , tmp44
   0B33 F6 CA 78      [ 5] 2622 	ldb	_blockY	; , blockY
   0B36 86 FA         [ 2] 2623 	lda	#-6	;mulqihi3	; 
   0B38 3D            [11] 2624 	mul
   0B39 1F 01         [ 6] 2625 	tfr	d,x	; , tmp45
   0B3B 1F 30         [ 6] 2626 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp44,
   0B3D E7 62         [ 5] 2627 	stb	2,s	; ,
   0B3F 1F 10         [ 6] 2628 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp45, tmp47
   0B41 EB 62         [ 5] 2629 	addb	2,s	;  tmp47,
   0B43 E7 62         [ 5] 2630 	stb	2,s	;  tmp47,
                           2631 ;----- asm -----
                           2632 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2633 	; #ENR#[40]	Moveto_d_7F(y,x);
                           2634 ;  0 "" 2
                           2635 ;--- end asm ---
   0B45 E6 63         [ 5] 2636 	ldb	3,s	; ,
   0B47 E7 66         [ 5] 2637 	stb	6,s	; , a
   0B49 E6 62         [ 5] 2638 	ldb	2,s	; ,
   0B4B E7 67         [ 5] 2639 	stb	7,s	; , b
                           2640 ;----- asm -----
                           2641 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0B4D A6 66         [ 5] 2642 	lda 6,s	;  a
   0B4F E6 67         [ 5] 2643 	ldb 7,s	;  b
   0B51 BD F2 FC      [ 8] 2644 	jsr 0xF2FC; Vec_Sub_POSITD
                           2645 	
                           2646 ;  0 "" 2
                           2647 ;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2648 	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           2649 ;  0 "" 2
                           2650 ;--- end asm ---
   0B54 F6 CA 7D      [ 5] 2651 	ldb	_blockAnimationStep	; , blockAnimationStep
   0B57 1D            [ 2] 2652 	sex		;extendqihi2: R:b -> R:d	; ,
   0B58 ED E4         [ 5] 2653 	std	,s	; ,
   0B5A 58            [ 2] 2654 	aslb	; 
   0B5B 49            [ 2] 2655 	rola	; 
   0B5C FE CA 79      [ 6] 2656 	ldu	_blockAnimation	; , blockAnimation
   0B5F 30 CB         [ 8] 2657 	leax	d,u	;  tmp51, tmp50,
   0B61 AE 84         [ 5] 2658 	ldx	,x	;  D.3218,
                           2659 ;----- asm -----
                           2660 ;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0B63 BD F4 08      [ 8] 2661 	jsr 0xF408; Vec_Sub_PACK1X
                           2662 	
                           2663 ;  0 "" 2
                           2664 ;  678 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2665 	; #ENR#[494]	blockYOfs++;
                           2666 ;  0 "" 2
                           2667 ;--- end asm ---
   0B66 7C CA 82      [ 7] 2668 	inc	_blockYOfs	;  blockYOfs
   0B69 F6 CA 82      [ 5] 2669 	ldb	_blockYOfs	;  blockYOfs.82, blockYOfs
                           2670 ;----- asm -----
                           2671 ;  680 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2672 	; #ENR#[495]	if (blockYOfs == 0) {
                           2673 ;  0 "" 2
                           2674 ;--- end asm ---
   0B6C 5D            [ 2] 2675 	tstb	;  blockYOfs.82
   0B6D 26 05         [ 3] 2676 	bne	L122	; 
                           2677 ;----- asm -----
                           2678 ;  682 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2679 	; #ENR#[496]		gameState = BlockWaiting;
                           2680 ;  0 "" 2
                           2681 ;--- end asm ---
   0B6F C6 01         [ 2] 2682 	ldb	#1	; ,
   0B71 F7 CA 85      [ 5] 2683 	stb	_gameState	; , gameState
   0B74                    2684 L122:
   0B74 32 68         [ 5] 2685 	leas	8,s	; ,,
   0B76 35 C0         [ 7] 2686 	puls	u,pc	; 
                           2687 	.globl _blockWaiting
   0B78                    2688 _blockWaiting:
   0B78 34 40         [ 6] 2689 	pshs	u	; 
   0B7A 32 79         [ 5] 2690 	leas	-7,s	; ,,
                           2691 ;----- asm -----
                           2692 ;  689 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2693 	; #ENR#[502]	drawField();
                           2694 ;  0 "" 2
                           2695 ;--- end asm ---
   0B7C BD 05 87      [ 8] 2696 	jsr	_drawField	; 
                           2697 ;----- asm -----
                           2698 ;  691 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2699 	; #ENR#[503]	drawBlock(0);
                           2700 ;  0 "" 2
                           2701 ;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2702 	; #ENR#[481]	zergnd();
                           2703 ;  0 "" 2
                           2704 ;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0B7F BD F3 54      [ 8] 2705 	jsr 0xF354; Vec_Sub_ZEROIT
                           2706 	
                           2707 ;  0 "" 2
                           2708 ;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2709 	; #ENR#[482]	intens(0x63);
                           2710 ;  0 "" 2
                           2711 ;--- end asm ---
   0B82 C6 63         [ 2] 2712 	ldb	#99	;  a,
                           2713 ;----- asm -----
                           2714 ;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0B84 1F 98         [ 6] 2715 	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
   0B86 BD F2 AB      [ 8] 2716 	jsr 0xF2AB; Vec_Sub_INTENS
                           2717 	
                           2718 ;  0 "" 2
                           2719 ;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2720 	; #ENR#[483]	positd(0, yofs);
                           2721 ;  0 "" 2
                           2722 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2723 	; #ENR#[40]	Moveto_d_7F(y,x);
                           2724 ;  0 "" 2
                           2725 ;--- end asm ---
   0B89 6F 66         [ 7] 2726 	clr	6,s	;  a
   0B8B 6F 65         [ 7] 2727 	clr	5,s	;  b
                           2728 ;----- asm -----
                           2729 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0B8D A6 66         [ 5] 2730 	lda 6,s	;  a
   0B8F E6 65         [ 5] 2731 	ldb 5,s	;  b
   0B91 BD F2 FC      [ 8] 2732 	jsr 0xF2FC; Vec_Sub_POSITD
                           2733 	
                           2734 ;  0 "" 2
                           2735 ;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2736 	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           2737 ;  0 "" 2
                           2738 ;--- end asm ---
   0B94 F6 CA 77      [ 5] 2739 	ldb	_blockX	; , blockX
   0B97 E7 64         [ 5] 2740 	stb	4,s	; , blockX.78
                           2741 ;----- asm -----
                           2742 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2743 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           2744 ;  0 "" 2
                           2745 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2746 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           2747 ;  0 "" 2
                           2748 ;--- end asm ---
   0B99 58            [ 2] 2749 	aslb	; 
   0B9A EB 64         [ 5] 2750 	addb	4,s	; , blockX.78
   0B9C E7 63         [ 5] 2751 	stb	3,s	; ,
   0B9E F6 CA 78      [ 5] 2752 	ldb	_blockY	;  tmp43, blockY
   0BA1 58            [ 2] 2753 	aslb	;  tmp43
   0BA2 58            [ 2] 2754 	aslb	;  tmp43
   0BA3 58            [ 2] 2755 	aslb	;  tmp43
   0BA4 EB 63         [ 5] 2756 	addb	3,s	;  tmp43,
   0BA6 CB 98         [ 2] 2757 	addb	#-104	;  tmp43,
   0BA8 E7 63         [ 5] 2758 	stb	3,s	;  tmp43,
                           2759 ;----- asm -----
                           2760 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2761 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           2762 ;  0 "" 2
                           2763 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2764 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           2765 ;  0 "" 2
                           2766 ;--- end asm ---
   0BAA E6 64         [ 5] 2767 	ldb	4,s	; , blockX.78
   0BAC CB FE         [ 2] 2768 	addb	#-2	; ,
   0BAE 86 0E         [ 2] 2769 	lda	#14	;mulqihi3	; 
   0BB0 3D            [11] 2770 	mul
   0BB1 1F 03         [ 6] 2771 	tfr	d,u	; , tmp46
   0BB3 F6 CA 78      [ 5] 2772 	ldb	_blockY	; , blockY
   0BB6 86 FA         [ 2] 2773 	lda	#-6	;mulqihi3	; 
   0BB8 3D            [11] 2774 	mul
   0BB9 1F 01         [ 6] 2775 	tfr	d,x	; , tmp47
   0BBB 1F 30         [ 6] 2776 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp46,
   0BBD E7 62         [ 5] 2777 	stb	2,s	; ,
   0BBF 1F 10         [ 6] 2778 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp47, tmp49
   0BC1 EB 62         [ 5] 2779 	addb	2,s	;  tmp49,
   0BC3 E7 62         [ 5] 2780 	stb	2,s	;  tmp49,
                           2781 ;----- asm -----
                           2782 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2783 	; #ENR#[40]	Moveto_d_7F(y,x);
                           2784 ;  0 "" 2
                           2785 ;--- end asm ---
   0BC5 E6 63         [ 5] 2786 	ldb	3,s	; ,
   0BC7 E7 65         [ 5] 2787 	stb	5,s	; , a
   0BC9 E6 62         [ 5] 2788 	ldb	2,s	; ,
   0BCB E7 66         [ 5] 2789 	stb	6,s	; , b
                           2790 ;----- asm -----
                           2791 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0BCD A6 65         [ 5] 2792 	lda 5,s	;  a
   0BCF E6 66         [ 5] 2793 	ldb 6,s	;  b
   0BD1 BD F2 FC      [ 8] 2794 	jsr 0xF2FC; Vec_Sub_POSITD
                           2795 	
                           2796 ;  0 "" 2
                           2797 ;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2798 	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           2799 ;  0 "" 2
                           2800 ;--- end asm ---
   0BD4 F6 CA 7D      [ 5] 2801 	ldb	_blockAnimationStep	; , blockAnimationStep
   0BD7 1D            [ 2] 2802 	sex		;extendqihi2: R:b -> R:d	; ,
   0BD8 ED E4         [ 5] 2803 	std	,s	; ,
   0BDA 58            [ 2] 2804 	aslb	; 
   0BDB 49            [ 2] 2805 	rola	; 
   0BDC FE CA 79      [ 6] 2806 	ldu	_blockAnimation	; , blockAnimation
   0BDF 30 CB         [ 8] 2807 	leax	d,u	;  tmp53, tmp52,
   0BE1 AE 84         [ 5] 2808 	ldx	,x	;  D.3267,
                           2809 ;----- asm -----
                           2810 ;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0BE3 BD F4 08      [ 8] 2811 	jsr 0xF408; Vec_Sub_PACK1X
                           2812 	
                           2813 ;  0 "" 2
                           2814 ;  693 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2815 	; #ENR#[504]	joybit();
                           2816 ;  0 "" 2
                           2817 ;  359 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0BE6 BD F1 F8      [ 8] 2818 	jsr 0xF1F8; Vec_Sub_JOYBIT
                           2819 	
                           2820 ;  0 "" 2
                           2821 ;  695 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2822 	; #ENR#[505]	if (pot0 < -10) {
                           2823 ;  0 "" 2
                           2824 ;--- end asm ---
   0BE9 F6 C8 1B      [ 5] 2825 	ldb	-14309	;  D.2220,
   0BEC C1 F6         [ 2] 2826 	cmpb	#-10	;cmpqi:	;  D.2220,
   0BEE 10 2D 00 3B   [ 6] 2827 	lblt	L130	; 
   0BF2 F6 C8 1B      [ 5] 2828 	ldb	-14309	;  D.2221,
   0BF5 C1 0A         [ 2] 2829 	cmpb	#10	;cmpqi:	;  D.2221,
   0BF7 2E 28         [ 3] 2830 	bgt	L131	; 
   0BF9 F6 C8 1C      [ 5] 2831 	ldb	-14308	;  D.2223,
   0BFC C1 F6         [ 2] 2832 	cmpb	#-10	;cmpqi:	;  D.2223,
   0BFE 10 2D 00 37   [ 6] 2833 	lblt	L132	; 
   0C02 F6 C8 1C      [ 5] 2834 	ldb	-14308	;  D.2224,
   0C05 C1 0A         [ 2] 2835 	cmpb	#10	;cmpqi:	;  D.2224,
   0C07 10 2E 00 3B   [ 6] 2836 	lbgt	L133	; 
   0C0B                    2837 L125:
                           2838 ;----- asm -----
                           2839 ;  717 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2840 	; #ENR#[518]	if (gameState == BlockMoving) {
                           2841 ;  0 "" 2
                           2842 ;--- end asm ---
   0C0B F6 CA 85      [ 5] 2843 	ldb	_gameState	; , gameState
   0C0E C1 02         [ 2] 2844 	cmpb	#2	;cmpqi:	; ,
   0C10 26 0B         [ 3] 2845 	bne	L129	; 
                           2846 ;----- asm -----
                           2847 ;  719 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2848 	; #ENR#[519]		changeMusic(movingMusic);
                           2849 ;  0 "" 2
                           2850 ;  358 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2851 	; #ENR#[296]	tstat = 1;
                           2852 ;  0 "" 2
                           2853 ;--- end asm ---
   0C12 C6 01         [ 2] 2854 	ldb	#1	; ,
   0C14 F7 C8 56      [ 5] 2855 	stb	-14250	; ,
                           2856 ;----- asm -----
                           2857 ;  360 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2858 	; #ENR#[297]	currentMusic = music;
                           2859 ;  0 "" 2
                           2860 ;--- end asm ---
   0C17 8E 11 8D      [ 3] 2861 	ldx	#_movingMusic	; ,
   0C1A BF C8 88      [ 6] 2862 	stx	_currentMusic	; , currentMusic
   0C1D                    2863 L129:
   0C1D 32 67         [ 5] 2864 	leas	7,s	; ,,
   0C1F 35 C0         [ 7] 2865 	puls	u,pc	; 
   0C21                    2866 L131:
                           2867 ;----- asm -----
                           2868 ;  702 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2869 	; #ENR#[509]		moveBlock(Right);
                           2870 ;  0 "" 2
                           2871 ;--- end asm ---
   0C21 C6 02         [ 2] 2872 	ldb	#2	; ,
   0C23 BD 03 9A      [ 8] 2873 	jsr	_moveBlock	; 
                           2874 ;----- asm -----
                           2875 ;  704 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2876 	; #ENR#[510]		gameState = BlockMoving;
                           2877 ;  0 "" 2
                           2878 ;--- end asm ---
   0C26 C6 02         [ 2] 2879 	ldb	#2	; ,
   0C28 F7 CA 85      [ 5] 2880 	stb	_gameState	; , gameState
   0C2B 20 DE         [ 3] 2881 	bra	L125	; 
   0C2D                    2882 L130:
                           2883 ;----- asm -----
                           2884 ;  697 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2885 	; #ENR#[506]		moveBlock(Left);
                           2886 ;  0 "" 2
                           2887 ;--- end asm ---
   0C2D 5F            [ 2] 2888 	clrb	; 
   0C2E BD 03 9A      [ 8] 2889 	jsr	_moveBlock	; 
                           2890 ;----- asm -----
                           2891 ;  699 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2892 	; #ENR#[507]		gameState = BlockMoving;
                           2893 ;  0 "" 2
                           2894 ;--- end asm ---
   0C31 C6 02         [ 2] 2895 	ldb	#2	; ,
   0C33 F7 CA 85      [ 5] 2896 	stb	_gameState	; , gameState
   0C36 7E 0C 0B      [ 4] 2897 	jmp	L125	; 
   0C39                    2898 L132:
                           2899 ;----- asm -----
                           2900 ;  707 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2901 	; #ENR#[512]		moveBlock(Down);
                           2902 ;  0 "" 2
                           2903 ;--- end asm ---
   0C39 C6 03         [ 2] 2904 	ldb	#3	; ,
   0C3B BD 03 9A      [ 8] 2905 	jsr	_moveBlock	; 
                           2906 ;----- asm -----
                           2907 ;  709 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2908 	; #ENR#[513]		gameState = BlockMoving;
                           2909 ;  0 "" 2
                           2910 ;--- end asm ---
   0C3E C6 02         [ 2] 2911 	ldb	#2	; ,
   0C40 F7 CA 85      [ 5] 2912 	stb	_gameState	; , gameState
   0C43 7E 0C 0B      [ 4] 2913 	jmp	L125	; 
   0C46                    2914 L133:
                           2915 ;----- asm -----
                           2916 ;  712 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2917 	; #ENR#[515]		moveBlock(Up);
                           2918 ;  0 "" 2
                           2919 ;--- end asm ---
   0C46 C6 01         [ 2] 2920 	ldb	#1	; ,
   0C48 BD 03 9A      [ 8] 2921 	jsr	_moveBlock	; 
                           2922 ;----- asm -----
                           2923 ;  714 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2924 	; #ENR#[516]		gameState = BlockMoving;
                           2925 ;  0 "" 2
                           2926 ;--- end asm ---
   0C4B C6 02         [ 2] 2927 	ldb	#2	; ,
   0C4D F7 CA 85      [ 5] 2928 	stb	_gameState	; , gameState
   0C50 7E 0C 0B      [ 4] 2929 	jmp	L125	; 
                           2930 	.globl _startLevel
   0C53                    2931 _startLevel:
   0C53 34 60         [ 7] 2932 	pshs	y,u	; 
   0C55 32 74         [ 5] 2933 	leas	-12,s	; ,,
                           2934 ;----- asm -----
                           2935 ;  570 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2936 	; #ENR#[410]	if (levelNumber == 0) {
                           2937 ;  0 "" 2
                           2938 ;--- end asm ---
   0C57 F6 C8 95      [ 5] 2939 	ldb	_levelNumber	;  levelNumber.71, levelNumber
   0C5A 10 27 01 27   [ 6] 2940 	lbeq	L152	; 
   0C5E C1 01         [ 2] 2941 	cmpb	#1	;cmpqi:	;  levelNumber.71,
   0C60 10 27 01 2A   [ 6] 2942 	lbeq	L153	; 
                           2943 ;----- asm -----
                           2944 ;  578 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2945 	; #ENR#[415]		level = level2;
                           2946 ;  0 "" 2
                           2947 ;--- end asm ---
   0C64 BE C8 8E      [ 6] 2948 	ldx	_level2	; , level2
   0C67 BF CA 83      [ 6] 2949 	stx	_level	; , level
   0C6A                    2950 L136:
                           2951 ;----- asm -----
                           2952 ;  581 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2953 	; #ENR#[417]	lineCount = 0;
                           2954 ;  0 "" 2
                           2955 ;--- end asm ---
   0C6A 7F C8 90      [ 7] 2956 	clr	_lineCount	;  lineCount
                           2957 ;----- asm -----
                           2958 ;  583 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2959 	; #ENR#[418]	setupX();
                           2960 ;  0 "" 2
                           2961 ;--- end asm ---
   0C6D BD 07 6A      [ 8] 2962 	jsr	_setupX	; 
                           2963 ;----- asm -----
                           2964 ;  585 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2965 	; #ENR#[419]	setupY();
                           2966 ;  0 "" 2
                           2967 ;  313 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2968 	; #ENR#[267]	unsigned long int index;
                           2969 ;  0 "" 2
                           2970 ;  315 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2971 	; #ENR#[268]	int8_t x = 0;
                           2972 ;  0 "" 2
                           2973 ;  317 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2974 	; #ENR#[269]	int8_t y = 0;
                           2975 ;  0 "" 2
                           2976 ;  319 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2977 	; #ENR#[270]	for (x = 0; x < LEVEL_WIDTH - 1; x++) {
                           2978 ;  0 "" 2
                           2979 ;--- end asm ---
   0C70 10 BE CA 83   [ 7] 2980 	ldy	_level	;  ivtmp.448, level
   0C74 6F 64         [ 7] 2981 	clr	4,s	;  x
   0C76 E6 64         [ 5] 2982 	ldb	4,s	; , x
   0C78                    2983 L144:
                           2984 ;----- asm -----
                           2985 ;  321 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2986 	; #ENR#[271]		int8_t y0 = -1;
                           2987 ;  0 "" 2
                           2988 ;  323 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2989 	; #ENR#[272]		int8_t y1 = -1;
                           2990 ;  0 "" 2
                           2991 ;  325 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           2992 	; #ENR#[273]		for (y = 0; y < LEVEL_HEIGHT; y++) {
                           2993 ;  0 "" 2
                           2994 ;--- end asm ---
   0C78 86 0E         [ 2] 2995 	lda	#14	;umulqihi3	; 
   0C7A 3D            [11] 2996 	mul
   0C7B 1F 01         [ 6] 2997 	tfr	d,x	; , tmp79
   0C7D 1F 10         [ 6] 2998 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp79,
   0C7F CB F2         [ 2] 2999 	addb	#-14	; ,
   0C81 E7 68         [ 5] 3000 	stb	8,s	; , D.3327
   0C83 E6 64         [ 5] 3001 	ldb	4,s	; , x
   0C85 58            [ 2] 3002 	aslb	; 
   0C86 EB 64         [ 5] 3003 	addb	4,s	; , x
   0C88 CB 9B         [ 2] 3004 	addb	#-101	; ,
   0C8A E7 69         [ 5] 3005 	stb	9,s	; , D.3330
   0C8C 33 A4         [ 4] 3006 	leau	,y	;  ivtmp.451, ivtmp.448
   0C8E 6F 65         [ 7] 3007 	clr	5,s	;  y0
   0C90 C6 FF         [ 2] 3008 	ldb	#-1	; ,
   0C92 E7 6A         [ 5] 3009 	stb	10,s	; , y0.449
   0C94 E7 6B         [ 5] 3010 	stb	11,s	; , y0.450
   0C96 7E 0D 18      [ 4] 3011 	jmp	L143	; 
   0C99                    3012 L155:
   0C99 C1 61         [ 2] 3013 	cmpb	#97	;cmpqi:	; ,
   0C9B 10 27 00 89   [ 6] 3014 	lbeq	L138	; 
   0C9F C1 6F         [ 2] 3015 	cmpb	#111	;cmpqi:	; ,
   0CA1 10 27 00 83   [ 6] 3016 	lbeq	L138	; 
                           3017 ;----- asm -----
                           3018 ;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3019 	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
                           3020 ;  0 "" 2
                           3021 ;--- end asm ---
   0CA5 E6 66         [ 5] 3022 	ldb	6,s	; , c1
   0CA7 C1 2E         [ 2] 3023 	cmpb	#46	;cmpqi:	; ,
   0CA9 10 27 00 7B   [ 6] 3024 	lbeq	L138	; 
   0CAD C1 61         [ 2] 3025 	cmpb	#97	;cmpqi:	; ,
   0CAF 10 27 00 75   [ 6] 3026 	lbeq	L138	; 
   0CB3 C1 6F         [ 2] 3027 	cmpb	#111	;cmpqi:	; ,
   0CB5 10 27 00 6F   [ 6] 3028 	lbeq	L138	; 
                           3029 ;----- asm -----
                           3030 ;  344 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3031 	; #ENR#[285]				if (y0 >= 0) {
                           3032 ;  0 "" 2
                           3033 ;--- end asm ---
   0CB9 E6 6A         [ 5] 3034 	ldb	10,s	; , y0.449
   0CBB C1 FF         [ 2] 3035 	cmpb	#-1	;cmpqi:	; ,
   0CBD 10 27 00 4B   [ 6] 3036 	lbeq	L142	; 
                           3037 ;----- asm -----
                           3038 ;  346 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3039 	; #ENR#[286]					addLine(x + 1, y0, x + 1, y1 + 1);
                           3040 ;  0 "" 2
                           3041 ;--- end asm ---
   0CC1 E6 6B         [ 5] 3042 	ldb	11,s	; , y0.450
   0CC3 5C            [ 2] 3043 	incb	; 
   0CC4 E7 63         [ 5] 3044 	stb	3,s	; , D.3304
                           3045 ;----- asm -----
                           3046 ;  202 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3047 	; #ENR#[195]	lineX0[lineCount] = x3d(x0, 0, y0);
                           3048 ;  0 "" 2
                           3049 ;--- end asm ---
   0CC6 F6 C8 90      [ 5] 3050 	ldb	_lineCount	; , lineCount
   0CC9 E7 67         [ 5] 3051 	stb	7,s	; , lineCount.51
                           3052 ;----- asm -----
                           3053 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3054 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           3055 ;  0 "" 2
                           3056 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3057 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           3058 ;  0 "" 2
                           3059 ;--- end asm ---
   0CCB 1D            [ 2] 3060 	sex		;extendqihi2: R:b -> R:d	; ,
   0CCC 1F 01         [ 6] 3061 	tfr	d,x	; , lineCount.51
   0CCE E6 6A         [ 5] 3062 	ldb	10,s	; , y0.449
   0CD0 86 FA         [ 2] 3063 	lda	#-6	;mulqihi3	; 
   0CD2 3D            [11] 3064 	mul
                           3065 		;movlsbqihi: D->B
   0CD3 EB 68         [ 5] 3066 	addb	8,s	;  tmp88, D.3327
   0CD5 E7 89 C8 96   [ 8] 3067 	stb	_lineX0,x	;  tmp88, lineX0
                           3068 ;----- asm -----
                           3069 ;  204 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3070 	; #ENR#[196]	lineY0[lineCount] = y3d(x0, 0, y0);
                           3071 ;  0 "" 2
                           3072 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3073 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           3074 ;  0 "" 2
                           3075 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3076 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           3077 ;  0 "" 2
                           3078 ;--- end asm ---
   0CD9 68 6A         [ 7] 3079 	asl	10,s	;  y0.449
   0CDB 68 6A         [ 7] 3080 	asl	10,s	;  y0.449
   0CDD 68 6A         [ 7] 3081 	asl	10,s	;  y0.449
   0CDF E6 6A         [ 5] 3082 	ldb	10,s	; , y0.449
   0CE1 EB 69         [ 5] 3083 	addb	9,s	; , D.3330
   0CE3 E7 89 C9 0E   [ 8] 3084 	stb	_lineY0,x	; , lineY0
                           3085 ;----- asm -----
                           3086 ;  206 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3087 	; #ENR#[197]	lineX1[lineCount] = x3d(x1, 0, y1);
                           3088 ;  0 "" 2
                           3089 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3090 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           3091 ;  0 "" 2
                           3092 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3093 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           3094 ;  0 "" 2
                           3095 ;--- end asm ---
   0CE7 E6 63         [ 5] 3096 	ldb	3,s	; , D.3304
   0CE9 86 FA         [ 2] 3097 	lda	#-6	;mulqihi3	; 
   0CEB 3D            [11] 3098 	mul
   0CEC ED E4         [ 5] 3099 	std	,s	; ,
                           3100 		;movlsbqihi: D->B
   0CEE EB 68         [ 5] 3101 	addb	8,s	;  tmp97, D.3327
   0CF0 E7 89 C9 86   [ 8] 3102 	stb	_lineX1,x	;  tmp97, lineX1
                           3103 ;----- asm -----
                           3104 ;  208 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3105 	; #ENR#[198]	lineY1[lineCount] = y3d(x1, 0, y1);
                           3106 ;  0 "" 2
                           3107 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3108 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           3109 ;  0 "" 2
                           3110 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3111 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           3112 ;  0 "" 2
                           3113 ;--- end asm ---
   0CF4 68 63         [ 7] 3114 	asl	3,s	;  D.3304
   0CF6 68 63         [ 7] 3115 	asl	3,s	;  D.3304
   0CF8 68 63         [ 7] 3116 	asl	3,s	;  D.3304
   0CFA E6 63         [ 5] 3117 	ldb	3,s	; , D.3304
   0CFC EB 69         [ 5] 3118 	addb	9,s	; , D.3330
   0CFE E7 89 C9 FE   [ 8] 3119 	stb	_lineY1,x	; , lineY1
                           3120 ;----- asm -----
                           3121 ;  210 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3122 	; #ENR#[199]	lineCount++;
                           3123 ;  0 "" 2
                           3124 ;--- end asm ---
   0D02 E6 67         [ 5] 3125 	ldb	7,s	; , lineCount.51
   0D04 5C            [ 2] 3126 	incb	; 
   0D05 F7 C8 90      [ 5] 3127 	stb	_lineCount	; , lineCount
                           3128 ;----- asm -----
                           3129 ;  348 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3130 	; #ENR#[287]					y0 = -1;
                           3131 ;  0 "" 2
                           3132 ;--- end asm ---
   0D08 C6 FF         [ 2] 3133 	ldb	#-1	; ,
   0D0A E7 6A         [ 5] 3134 	stb	10,s	; , y0.449
   0D0C                    3135 L142:
   0D0C 6C 65         [ 7] 3136 	inc	5,s	;  y0
   0D0E 33 4C         [ 5] 3137 	leau	12,u	;  ivtmp.451,, ivtmp.451
   0D10 E6 65         [ 5] 3138 	ldb	5,s	; , y0
   0D12 C1 11         [ 2] 3139 	cmpb	#17	;cmpqi:	; ,
   0D14 10 27 00 28   [ 6] 3140 	lbeq	L154	; 
   0D18                    3141 L143:
                           3142 ;----- asm -----
                           3143 ;  331 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3144 	; #ENR#[278]			index = (unsigned long int) y*LEVEL_WIDTH +  (unsigned long int)x;
                           3145 ;  0 "" 2
                           3146 ;  333 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3147 	; #ENR#[279]			char c0 = level[index];
                           3148 ;  0 "" 2
                           3149 ;--- end asm ---
   0D18 E6 C4         [ 4] 3150 	ldb	,u	; ,* ivtmp.451
   0D1A E7 62         [ 5] 3151 	stb	2,s	; , c0
                           3152 ;----- asm -----
                           3153 ;  335 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3154 	; #ENR#[280]			char c1 = level[index+1];
                           3155 ;  0 "" 2
                           3156 ;--- end asm ---
   0D1C E6 41         [ 5] 3157 	ldb	1,u	; ,
   0D1E E7 66         [ 5] 3158 	stb	6,s	; , c1
                           3159 ;----- asm -----
                           3160 ;  337 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3161 	; #ENR#[281]			if (isField(c0) || isField(c1)) {
                           3162 ;  0 "" 2
                           3163 ;  178 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3164 	; #ENR#[176]	return (char)(c == '.' || c == 'a' || c == 'o');
                           3165 ;  0 "" 2
                           3166 ;--- end asm ---
   0D20 E6 62         [ 5] 3167 	ldb	2,s	; , c0
   0D22 C1 2E         [ 2] 3168 	cmpb	#46	;cmpqi:	; ,
   0D24 10 26 FF 71   [ 6] 3169 	lbne	L155	; 
   0D28                    3170 L138:
                           3171 ;----- asm -----
                           3172 ;  339 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3173 	; #ENR#[282]				if (y0 < 0) y0 = y;
                           3174 ;  0 "" 2
                           3175 ;--- end asm ---
   0D28 E6 6A         [ 5] 3176 	ldb	10,s	; , y0.449
   0D2A C1 FF         [ 2] 3177 	cmpb	#-1	;cmpqi:	; ,
   0D2C 10 27 00 4E   [ 6] 3178 	lbeq	L156	; 
   0D30                    3179 L141:
                           3180 ;----- asm -----
                           3181 ;  341 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3182 	; #ENR#[283]				y1 = y;
                           3183 ;  0 "" 2
                           3184 ;--- end asm ---
   0D30 E6 65         [ 5] 3185 	ldb	5,s	; , y0
   0D32 E7 6B         [ 5] 3186 	stb	11,s	; , y0.450
   0D34 6C 65         [ 7] 3187 	inc	5,s	;  y0
   0D36 33 4C         [ 5] 3188 	leau	12,u	;  ivtmp.451,, ivtmp.451
   0D38 E6 65         [ 5] 3189 	ldb	5,s	; , y0
   0D3A C1 11         [ 2] 3190 	cmpb	#17	;cmpqi:	; ,
   0D3C 10 26 FF D8   [ 6] 3191 	lbne	L143	; 
   0D40                    3192 L154:
   0D40 6C 64         [ 7] 3193 	inc	4,s	;  x
   0D42 31 21         [ 5] 3194 	leay	1,y	;  ivtmp.448,, ivtmp.448
   0D44 E6 64         [ 5] 3195 	ldb	4,s	; , x
   0D46 C1 0B         [ 2] 3196 	cmpb	#11	;cmpqi:	; ,
   0D48 10 26 FF 2C   [ 6] 3197 	lbne	L144	; 
                           3198 ;----- asm -----
                           3199 ;  587 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3200 	; #ENR#[420]	blockX = startX;
                           3201 ;  0 "" 2
                           3202 ;--- end asm ---
   0D4C F6 C8 91      [ 5] 3203 	ldb	_startX	; , startX
   0D4F F7 CA 77      [ 5] 3204 	stb	_blockX	; , blockX
                           3205 ;----- asm -----
                           3206 ;  589 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3207 	; #ENR#[421]	blockY = startY;
                           3208 ;  0 "" 2
                           3209 ;--- end asm ---
   0D52 F6 C8 92      [ 5] 3210 	ldb	_startY	; , startY
   0D55 F7 CA 78      [ 5] 3211 	stb	_blockY	; , blockY
                           3212 ;----- asm -----
                           3213 ;  591 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3214 	; #ENR#[422]	blockAnimation = height2FallingLeft;
                           3215 ;  0 "" 2
                           3216 ;--- end asm ---
   0D58 8E 33 04      [ 3] 3217 	ldx	#_height2FallingLeft	; ,
   0D5B BF CA 79      [ 6] 3218 	stx	_blockAnimation	; , blockAnimation
                           3219 ;----- asm -----
                           3220 ;  593 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3221 	; #ENR#[423]	blockAnimationStep = 0;
                           3222 ;  0 "" 2
                           3223 ;--- end asm ---
   0D5E 7F CA 7D      [ 7] 3224 	clr	_blockAnimationStep	;  blockAnimationStep
                           3225 ;----- asm -----
                           3226 ;  595 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3227 	; #ENR#[424]	blockAnimating = 0;
                           3228 ;  0 "" 2
                           3229 ;--- end asm ---
   0D61 7F CA 7E      [ 7] 3230 	clr	_blockAnimating	;  blockAnimating
                           3231 ;----- asm -----
                           3232 ;  597 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3233 	; #ENR#[425]	blockOrientation = Standing;
                           3234 ;  0 "" 2
                           3235 ;--- end asm ---
   0D64 7F CA 76      [ 7] 3236 	clr	_blockOrientation	;  blockOrientation
                           3237 ;----- asm -----
                           3238 ;  599 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3239 	; #ENR#[426]	blockYOfs = -30;
                           3240 ;  0 "" 2
                           3241 ;--- end asm ---
   0D67 C6 E2         [ 2] 3242 	ldb	#-30	; ,
   0D69 F7 CA 82      [ 5] 3243 	stb	_blockYOfs	; , blockYOfs
                           3244 ;----- asm -----
                           3245 ;  601 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3246 	; #ENR#[427]	gameState = BlockMovingToStart;
                           3247 ;  0 "" 2
                           3248 ;--- end asm ---
   0D6C 7F CA 85      [ 7] 3249 	clr	_gameState	;  gameState
                           3250 ;----- asm -----
                           3251 ;  603 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3252 	; #ENR#[428]	changeMusic(startMusic);
                           3253 ;  0 "" 2
                           3254 ;  358 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3255 	; #ENR#[296]	tstat = 1;
                           3256 ;  0 "" 2
                           3257 ;--- end asm ---
   0D6F C6 01         [ 2] 3258 	ldb	#1	; ,
   0D71 F7 C8 56      [ 5] 3259 	stb	-14250	; ,
                           3260 ;----- asm -----
                           3261 ;  360 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3262 	; #ENR#[297]	currentMusic = music;
                           3263 ;  0 "" 2
                           3264 ;--- end asm ---
   0D74 8E 11 33      [ 3] 3265 	ldx	#_startMusic	; ,
   0D77 BF C8 88      [ 6] 3266 	stx	_currentMusic	; , currentMusic
   0D7A 32 6C         [ 5] 3267 	leas	12,s	; ,,
   0D7C 35 E0         [ 8] 3268 	puls	y,u,pc	; 
   0D7E                    3269 L156:
   0D7E E6 65         [ 5] 3270 	ldb	5,s	; , y0
   0D80 E7 6A         [ 5] 3271 	stb	10,s	; , y0.449
   0D82 7E 0D 30      [ 4] 3272 	jmp	L141	; 
   0D85                    3273 L152:
                           3274 ;----- asm -----
                           3275 ;  572 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3276 	; #ENR#[411]		level = level0;
                           3277 ;  0 "" 2
                           3278 ;--- end asm ---
   0D85 BE C8 8A      [ 6] 3279 	ldx	_level0	; , level0
   0D88 BF CA 83      [ 6] 3280 	stx	_level	; , level
   0D8B 7E 0C 6A      [ 4] 3281 	jmp	L136	; 
   0D8E                    3282 L153:
                           3283 ;----- asm -----
                           3284 ;  575 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3285 	; #ENR#[413]		level = level1;
                           3286 ;  0 "" 2
                           3287 ;--- end asm ---
   0D8E FC C8 8C      [ 6] 3288 	ldd	_level1	; , level1
   0D91 FD CA 83      [ 6] 3289 	std	_level	; , level
   0D94 7E 0C 6A      [ 4] 3290 	jmp	L136	; 
                           3291 	.globl _blockMovingAtEnd
   0D97                    3292 _blockMovingAtEnd:
   0D97 34 40         [ 6] 3293 	pshs	u	; 
   0D99 32 78         [ 5] 3294 	leas	-8,s	; ,,
                           3295 ;----- asm -----
                           3296 ;  839 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3297 	; #ENR#[597]	drawField();
                           3298 ;  0 "" 2
                           3299 ;--- end asm ---
   0D9B BD 05 87      [ 8] 3300 	jsr	_drawField	; 
                           3301 ;----- asm -----
                           3302 ;  841 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3303 	; #ENR#[598]	drawBlock(blockYOfs);
                           3304 ;  0 "" 2
                           3305 ;--- end asm ---
   0D9E F6 CA 82      [ 5] 3306 	ldb	_blockYOfs	; , blockYOfs
   0DA1 E7 64         [ 5] 3307 	stb	4,s	; , blockYOfs.103
                           3308 ;----- asm -----
                           3309 ;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3310 	; #ENR#[481]	zergnd();
                           3311 ;  0 "" 2
                           3312 ;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0DA3 BD F3 54      [ 8] 3313 	jsr 0xF354; Vec_Sub_ZEROIT
                           3314 	
                           3315 ;  0 "" 2
                           3316 ;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3317 	; #ENR#[482]	intens(0x63);
                           3318 ;  0 "" 2
                           3319 ;--- end asm ---
   0DA6 C6 63         [ 2] 3320 	ldb	#99	;  a,
                           3321 ;----- asm -----
                           3322 ;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0DA8 1F 98         [ 6] 3323 	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
   0DAA BD F2 AB      [ 8] 3324 	jsr 0xF2AB; Vec_Sub_INTENS
                           3325 	
                           3326 ;  0 "" 2
                           3327 ;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3328 	; #ENR#[483]	positd(0, yofs);
                           3329 ;  0 "" 2
                           3330 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3331 	; #ENR#[40]	Moveto_d_7F(y,x);
                           3332 ;  0 "" 2
                           3333 ;--- end asm ---
   0DAD E6 64         [ 5] 3334 	ldb	4,s	; , blockYOfs.103
   0DAF E7 67         [ 5] 3335 	stb	7,s	; , a
   0DB1 6F 66         [ 7] 3336 	clr	6,s	;  b
                           3337 ;----- asm -----
                           3338 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0DB3 A6 67         [ 5] 3339 	lda 7,s	;  a
   0DB5 E6 66         [ 5] 3340 	ldb 6,s	;  b
   0DB7 BD F2 FC      [ 8] 3341 	jsr 0xF2FC; Vec_Sub_POSITD
                           3342 	
                           3343 ;  0 "" 2
                           3344 ;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3345 	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           3346 ;  0 "" 2
                           3347 ;--- end asm ---
   0DBA F6 CA 77      [ 5] 3348 	ldb	_blockX	; , blockX
   0DBD E7 65         [ 5] 3349 	stb	5,s	; , blockX.78
                           3350 ;----- asm -----
                           3351 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3352 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           3353 ;  0 "" 2
                           3354 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3355 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           3356 ;  0 "" 2
                           3357 ;--- end asm ---
   0DBF 58            [ 2] 3358 	aslb	; 
   0DC0 EB 65         [ 5] 3359 	addb	5,s	; , blockX.78
   0DC2 E7 63         [ 5] 3360 	stb	3,s	; ,
   0DC4 F6 CA 78      [ 5] 3361 	ldb	_blockY	;  tmp42, blockY
   0DC7 58            [ 2] 3362 	aslb	;  tmp42
   0DC8 58            [ 2] 3363 	aslb	;  tmp42
   0DC9 58            [ 2] 3364 	aslb	;  tmp42
   0DCA EB 63         [ 5] 3365 	addb	3,s	;  tmp42,
   0DCC CB 98         [ 2] 3366 	addb	#-104	;  tmp42,
   0DCE E7 63         [ 5] 3367 	stb	3,s	;  tmp42,
                           3368 ;----- asm -----
                           3369 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3370 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           3371 ;  0 "" 2
                           3372 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3373 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           3374 ;  0 "" 2
                           3375 ;--- end asm ---
   0DD0 E6 65         [ 5] 3376 	ldb	5,s	; , blockX.78
   0DD2 CB FE         [ 2] 3377 	addb	#-2	; ,
   0DD4 86 0E         [ 2] 3378 	lda	#14	;mulqihi3	; 
   0DD6 3D            [11] 3379 	mul
   0DD7 1F 03         [ 6] 3380 	tfr	d,u	; , tmp45
   0DD9 F6 CA 78      [ 5] 3381 	ldb	_blockY	; , blockY
   0DDC 86 FA         [ 2] 3382 	lda	#-6	;mulqihi3	; 
   0DDE 3D            [11] 3383 	mul
   0DDF 1F 01         [ 6] 3384 	tfr	d,x	; , tmp46
   0DE1 1F 30         [ 6] 3385 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp45,
   0DE3 E7 62         [ 5] 3386 	stb	2,s	; ,
   0DE5 1F 10         [ 6] 3387 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp46, tmp48
   0DE7 EB 62         [ 5] 3388 	addb	2,s	;  tmp48,
   0DE9 E7 62         [ 5] 3389 	stb	2,s	;  tmp48,
                           3390 ;----- asm -----
                           3391 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3392 	; #ENR#[40]	Moveto_d_7F(y,x);
                           3393 ;  0 "" 2
                           3394 ;--- end asm ---
   0DEB E6 63         [ 5] 3395 	ldb	3,s	; ,
   0DED E7 66         [ 5] 3396 	stb	6,s	; , a
   0DEF E6 62         [ 5] 3397 	ldb	2,s	; ,
   0DF1 E7 67         [ 5] 3398 	stb	7,s	; , b
                           3399 ;----- asm -----
                           3400 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0DF3 A6 66         [ 5] 3401 	lda 6,s	;  a
   0DF5 E6 67         [ 5] 3402 	ldb 7,s	;  b
   0DF7 BD F2 FC      [ 8] 3403 	jsr 0xF2FC; Vec_Sub_POSITD
                           3404 	
                           3405 ;  0 "" 2
                           3406 ;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3407 	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           3408 ;  0 "" 2
                           3409 ;--- end asm ---
   0DFA F6 CA 7D      [ 5] 3410 	ldb	_blockAnimationStep	; , blockAnimationStep
   0DFD 1D            [ 2] 3411 	sex		;extendqihi2: R:b -> R:d	; ,
   0DFE ED E4         [ 5] 3412 	std	,s	; ,
   0E00 58            [ 2] 3413 	aslb	; 
   0E01 49            [ 2] 3414 	rola	; 
   0E02 FE CA 79      [ 6] 3415 	ldu	_blockAnimation	; , blockAnimation
   0E05 30 CB         [ 8] 3416 	leax	d,u	;  tmp52, tmp51,
   0E07 AE 84         [ 5] 3417 	ldx	,x	;  D.3428,
                           3418 ;----- asm -----
                           3419 ;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0E09 BD F4 08      [ 8] 3420 	jsr 0xF408; Vec_Sub_PACK1X
                           3421 	
                           3422 ;  0 "" 2
                           3423 ;  843 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3424 	; #ENR#[599]	blockYOfs++;
                           3425 ;  0 "" 2
                           3426 ;--- end asm ---
   0E0C 7C CA 82      [ 7] 3427 	inc	_blockYOfs	;  blockYOfs
   0E0F F6 CA 82      [ 5] 3428 	ldb	_blockYOfs	;  blockYOfs.104, blockYOfs
                           3429 ;----- asm -----
                           3430 ;  845 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3431 	; #ENR#[600]	if (blockYOfs == 30) {
                           3432 ;  0 "" 2
                           3433 ;--- end asm ---
   0E12 C1 1E         [ 2] 3434 	cmpb	#30	;cmpqi:	;  blockYOfs.104,
   0E14 27 04         [ 3] 3435 	beq	L161	; 
   0E16 32 68         [ 5] 3436 	leas	8,s	; ,,
   0E18 35 C0         [ 7] 3437 	puls	u,pc	; 
   0E1A                    3438 L161:
                           3439 ;----- asm -----
                           3440 ;  847 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3441 	; #ENR#[601]		levelNumber++;
                           3442 ;  0 "" 2
                           3443 ;--- end asm ---
   0E1A 7C C8 95      [ 7] 3444 	inc	_levelNumber	;  levelNumber
   0E1D F6 C8 95      [ 5] 3445 	ldb	_levelNumber	;  levelNumber.106, levelNumber
                           3446 ;----- asm -----
                           3447 ;  849 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3448 	; #ENR#[602]		if (levelNumber > 2) levelNumber = 0;
                           3449 ;  0 "" 2
                           3450 ;--- end asm ---
   0E20 C1 02         [ 2] 3451 	cmpb	#2	;cmpqi:	;  levelNumber.106,
   0E22 2F 03         [ 3] 3452 	ble	L159	; 
   0E24 7F C8 95      [ 7] 3453 	clr	_levelNumber	;  levelNumber
   0E27                    3454 L159:
                           3455 ;----- asm -----
                           3456 ;  851 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3457 	; #ENR#[603]		startLevel();
                           3458 ;  0 "" 2
                           3459 ;--- end asm ---
   0E27 BD 0C 53      [ 8] 3460 	jsr	_startLevel	; 
   0E2A 32 68         [ 5] 3461 	leas	8,s	; ,,
   0E2C 35 C0         [ 7] 3462 	puls	u,pc	; 
                           3463 	.globl _main
   0E2E                    3464 _main:
   0E2E 34 60         [ 7] 3465 	pshs	y,u	; 
   0E30 32 E8 EE      [ 5] 3466 	leas	-18,s	; ,,
                           3467 ;----- asm -----
                           3468 ;  862 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3469 	; #ENR#[613]	epot0 = 1;
                           3470 ;  0 "" 2
                           3471 ;--- end asm ---
   0E33 C6 01         [ 2] 3472 	ldb	#1	; ,
   0E35 F7 C8 1F      [ 5] 3473 	stb	-14305	; ,
                           3474 ;----- asm -----
                           3475 ;  864 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3476 	; #ENR#[614]	epot1 = 3;
                           3477 ;  0 "" 2
                           3478 ;--- end asm ---
   0E38 C6 03         [ 2] 3479 	ldb	#3	; ,
   0E3A F7 C8 20      [ 5] 3480 	stb	-14304	; ,
                           3481 ;----- asm -----
                           3482 ;  866 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3483 	; #ENR#[615]	epot2 = 0;
                           3484 ;  0 "" 2
                           3485 ;--- end asm ---
   0E3D 7F C8 21      [ 7] 3486 	clr	-14303	; 
                           3487 ;----- asm -----
                           3488 ;  868 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3489 	; #ENR#[616]	epot3 = 0;
                           3490 ;  0 "" 2
                           3491 ;--- end asm ---
   0E40 7F C8 22      [ 7] 3492 	clr	-14302	; 
                           3493 ;----- asm -----
                           3494 ;  871 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3495 	; #ENR#[618]	startLevel();
                           3496 ;  0 "" 2
                           3497 ;--- end asm ---
   0E43 BD 0C 53      [ 8] 3498 	jsr	_startLevel	; 
                           3499 ;----- asm -----
                           3500 ;  873 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3501 	; #ENR#[619]	while (1) {
                           3502 ;  0 "" 2
                           3503 ;--- end asm ---
   0E46                    3504 L175:
                           3505 ;----- asm -----
                           3506 ;  876 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3507 	; #ENR#[621]		frwait();
                           3508 ;  0 "" 2
                           3509 ;  56 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0E46 BD F1 92      [ 8] 3510 	jsr 0xF192; Vec_Sub_FRWAIT
                           3511 	
                           3512 ;  0 "" 2
                           3513 ;  879 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3514 	; #ENR#[623]		switch (gameState) {
                           3515 ;  0 "" 2
                           3516 ;--- end asm ---
   0E49 F6 CA 85      [ 5] 3517 	ldb	_gameState	; , gameState
   0E4C C1 04         [ 2] 3518 	cmpb	#4	;cmpqi:	; ,
   0E4E 10 22 00 96   [ 6] 3519 	lbhi	L163	; 
   0E52 4F            [ 2] 3520 	clra		;zero_extendqihi: R:b -> R:d	; ,
   0E53 58            [ 2] 3521 	aslb	; 
   0E54 49            [ 2] 3522 	rola	; 
   0E55 1F 01         [ 6] 3523 	tfr	d,x	; , tmp70
   0E57 6E 99 0E 5B   [10] 3524 	jmp	[L169,x]	; , tmp70
   0E5B                    3525 L169:
   0E5B 0F 1E              3526 	.word L164
   0E5D 0F A6              3527 	.word L165
   0E5F 0F 18              3528 	.word L166
   0E61 0E FA              3529 	.word L167
   0E63 0E 65              3530 	.word L168
   0E65                    3531 L168:
                           3532 ;----- asm -----
                           3533 ;  907 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3534 	; #ENR#[637]			blockMovingAtEnd();
                           3535 ;  0 "" 2
                           3536 ;  839 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3537 	; #ENR#[597]	drawField();
                           3538 ;  0 "" 2
                           3539 ;--- end asm ---
   0E65 BD 05 87      [ 8] 3540 	jsr	_drawField	; 
                           3541 ;----- asm -----
                           3542 ;  841 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3543 	; #ENR#[598]	drawBlock(blockYOfs);
                           3544 ;  0 "" 2
                           3545 ;--- end asm ---
   0E68 F6 CA 82      [ 5] 3546 	ldb	_blockYOfs	; , blockYOfs
   0E6B E7 6E         [ 5] 3547 	stb	14,s	; , blockYOfs.103
                           3548 ;----- asm -----
                           3549 ;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3550 	; #ENR#[481]	zergnd();
                           3551 ;  0 "" 2
                           3552 ;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0E6D BD F3 54      [ 8] 3553 	jsr 0xF354; Vec_Sub_ZEROIT
                           3554 	
                           3555 ;  0 "" 2
                           3556 ;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3557 	; #ENR#[482]	intens(0x63);
                           3558 ;  0 "" 2
                           3559 ;--- end asm ---
   0E70 C6 63         [ 2] 3560 	ldb	#99	;  a,
                           3561 ;----- asm -----
                           3562 ;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0E72 1F 98         [ 6] 3563 	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
   0E74 BD F2 AB      [ 8] 3564 	jsr 0xF2AB; Vec_Sub_INTENS
                           3565 	
                           3566 ;  0 "" 2
                           3567 ;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3568 	; #ENR#[483]	positd(0, yofs);
                           3569 ;  0 "" 2
                           3570 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3571 	; #ENR#[40]	Moveto_d_7F(y,x);
                           3572 ;  0 "" 2
                           3573 ;--- end asm ---
   0E77 E6 6E         [ 5] 3574 	ldb	14,s	; , blockYOfs.103
   0E79 E7 E8 11      [ 5] 3575 	stb	17,s	; , a
   0E7C 6F E8 10      [ 7] 3576 	clr	16,s	;  b
                           3577 ;----- asm -----
                           3578 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0E7F A6 E8 11      [ 5] 3579 	lda 17,s	;  a
   0E82 E6 E8 10      [ 5] 3580 	ldb 16,s	;  b
   0E85 BD F2 FC      [ 8] 3581 	jsr 0xF2FC; Vec_Sub_POSITD
                           3582 	
                           3583 ;  0 "" 2
                           3584 ;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3585 	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           3586 ;  0 "" 2
                           3587 ;--- end asm ---
   0E88 F6 CA 77      [ 5] 3588 	ldb	_blockX	; , blockX
   0E8B E7 6F         [ 5] 3589 	stb	15,s	; , blockX.78
                           3590 ;----- asm -----
                           3591 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3592 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           3593 ;  0 "" 2
                           3594 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3595 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           3596 ;  0 "" 2
                           3597 ;--- end asm ---
   0E8D 58            [ 2] 3598 	aslb	; 
   0E8E EB 6F         [ 5] 3599 	addb	15,s	; , blockX.78
   0E90 E7 63         [ 5] 3600 	stb	3,s	; ,
   0E92 F6 CA 78      [ 5] 3601 	ldb	_blockY	;  tmp107, blockY
   0E95 58            [ 2] 3602 	aslb	;  tmp107
   0E96 58            [ 2] 3603 	aslb	;  tmp107
   0E97 58            [ 2] 3604 	aslb	;  tmp107
   0E98 EB 63         [ 5] 3605 	addb	3,s	;  tmp107,
   0E9A CB 98         [ 2] 3606 	addb	#-104	;  tmp107,
   0E9C E7 63         [ 5] 3607 	stb	3,s	;  tmp107,
                           3608 ;----- asm -----
                           3609 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3610 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           3611 ;  0 "" 2
                           3612 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3613 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           3614 ;  0 "" 2
                           3615 ;--- end asm ---
   0E9E E6 6F         [ 5] 3616 	ldb	15,s	; , blockX.78
   0EA0 CB FE         [ 2] 3617 	addb	#-2	; ,
   0EA2 86 0E         [ 2] 3618 	lda	#14	;mulqihi3	; 
   0EA4 3D            [11] 3619 	mul
   0EA5 1F 02         [ 6] 3620 	tfr	d,y	; , tmp110
   0EA7 F6 CA 78      [ 5] 3621 	ldb	_blockY	; , blockY
   0EAA 86 FA         [ 2] 3622 	lda	#-6	;mulqihi3	; 
   0EAC 3D            [11] 3623 	mul
   0EAD 1F 01         [ 6] 3624 	tfr	d,x	; , tmp111
   0EAF 1F 20         [ 6] 3625 	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp110,
   0EB1 E7 62         [ 5] 3626 	stb	2,s	; ,
   0EB3 1F 10         [ 6] 3627 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp111, tmp113
   0EB5 EB 62         [ 5] 3628 	addb	2,s	;  tmp113,
   0EB7 E7 62         [ 5] 3629 	stb	2,s	;  tmp113,
                           3630 ;----- asm -----
                           3631 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3632 	; #ENR#[40]	Moveto_d_7F(y,x);
                           3633 ;  0 "" 2
                           3634 ;--- end asm ---
   0EB9 E6 63         [ 5] 3635 	ldb	3,s	; ,
   0EBB E7 E8 10      [ 5] 3636 	stb	16,s	; , a
   0EBE E6 62         [ 5] 3637 	ldb	2,s	; ,
   0EC0 E7 E8 11      [ 5] 3638 	stb	17,s	; , b
                           3639 ;----- asm -----
                           3640 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0EC3 A6 E8 10      [ 5] 3641 	lda 16,s	;  a
   0EC6 E6 E8 11      [ 5] 3642 	ldb 17,s	;  b
   0EC9 BD F2 FC      [ 8] 3643 	jsr 0xF2FC; Vec_Sub_POSITD
                           3644 	
                           3645 ;  0 "" 2
                           3646 ;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3647 	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           3648 ;  0 "" 2
                           3649 ;--- end asm ---
   0ECC F6 CA 7D      [ 5] 3650 	ldb	_blockAnimationStep	; , blockAnimationStep
   0ECF 1D            [ 2] 3651 	sex		;extendqihi2: R:b -> R:d	; ,
   0ED0 58            [ 2] 3652 	aslb	; 
   0ED1 49            [ 2] 3653 	rola	; 
   0ED2 FE CA 79      [ 6] 3654 	ldu	_blockAnimation	; , blockAnimation
   0ED5 30 CB         [ 8] 3655 	leax	d,u	;  tmp117, tmp116,
   0ED7 AE 84         [ 5] 3656 	ldx	,x	;  D.3561,
                           3657 ;----- asm -----
                           3658 ;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0ED9 BD F4 08      [ 8] 3659 	jsr 0xF408; Vec_Sub_PACK1X
                           3660 	
                           3661 ;  0 "" 2
                           3662 ;  843 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3663 	; #ENR#[599]	blockYOfs++;
                           3664 ;  0 "" 2
                           3665 ;--- end asm ---
   0EDC 7C CA 82      [ 7] 3666 	inc	_blockYOfs	;  blockYOfs
   0EDF F6 CA 82      [ 5] 3667 	ldb	_blockYOfs	;  blockYOfs.104, blockYOfs
                           3668 ;----- asm -----
                           3669 ;  845 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3670 	; #ENR#[600]	if (blockYOfs == 30) {
                           3671 ;  0 "" 2
                           3672 ;--- end asm ---
   0EE2 C1 1E         [ 2] 3673 	cmpb	#30	;cmpqi:	;  blockYOfs.104,
   0EE4 10 27 00 C4   [ 6] 3674 	lbeq	L177	; 
   0EE8                    3675 L173:
                           3676 ;----- asm -----
                           3677 ;  909 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3678 	; #ENR#[638]			break;
                           3679 ;  0 "" 2
                           3680 ;--- end asm ---
   0EE8                    3681 L163:
                           3682 ;----- asm -----
                           3683 ;  914 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3684 	; #ENR#[642]		DP_to_C8();
                           3685 ;  0 "" 2
                           3686 ;  89 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0EE8 BD F1 AF      [ 8] 3687 	jsr 0xF1AF; Vec_Sub_DPRAM
                           3688 	
                           3689 ;  0 "" 2
                           3690 ;  916 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3691 	; #ENR#[643]		replay(currentMusic);
                           3692 ;  0 "" 2
                           3693 ;  476 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0EEB FE C8 88      [ 6] 3694 	ldu _currentMusic	;  currentMusic
   0EEE BD F6 87      [ 8] 3695 	jsr 0xF687; Vec_Sub_REPLAY
                           3696 	
                           3697 ;  0 "" 2
                           3698 ;  918 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3699 	; #ENR#[644]		DP_to_D0();
                           3700 ;  0 "" 2
                           3701 ;  88 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0EF1 BD F1 AA      [ 8] 3702 	jsr 0xF1AA; Vec_Sub_DPIO
                           3703 	
                           3704 ;  0 "" 2
                           3705 ;  920 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3706 	; #ENR#[645]		reqout();
                           3707 ;  0 "" 2
                           3708 ;  474 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0EF4 BD F2 89      [ 8] 3709 	jsr 0xF289; Vec_Sub_REQOUT
                           3710 	
                           3711 ;  0 "" 2
                           3712 ;--- end asm ---
   0EF7 7E 0E 46      [ 4] 3713 	jmp	L175	; 
   0EFA                    3714 L167:
                           3715 ;----- asm -----
                           3716 ;  901 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3717 	; #ENR#[634]			blockFalling();
                           3718 ;  0 "" 2
                           3719 ;  819 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3720 	; #ENR#[584]	drawField();
                           3721 ;  0 "" 2
                           3722 ;--- end asm ---
   0EFA BD 05 87      [ 8] 3723 	jsr	_drawField	; 
                           3724 ;----- asm -----
                           3725 ;  821 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3726 	; #ENR#[585]	blockYOfs++;
                           3727 ;  0 "" 2
                           3728 ;--- end asm ---
   0EFD F6 CA 82      [ 5] 3729 	ldb	_blockYOfs	; , blockYOfs
   0F00 5C            [ 2] 3730 	incb	; 
   0F01 E7 6C         [ 5] 3731 	stb	12,s	; , blockYOfs.102
   0F03 F7 CA 82      [ 5] 3732 	stb	_blockYOfs	; , blockYOfs
                           3733 ;----- asm -----
                           3734 ;  823 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3735 	; #ENR#[586]	if (blockYOfs < 12) {
                           3736 ;  0 "" 2
                           3737 ;--- end asm ---
   0F06 C1 0B         [ 2] 3738 	cmpb	#11	;cmpqi:	; ,
   0F08 10 2F 00 B3   [ 6] 3739 	lble	L178	; 
   0F0C                    3740 L171:
                           3741 ;----- asm -----
                           3742 ;  830 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3743 	; #ENR#[590]	if (blockYOfs == 50) {
                           3744 ;  0 "" 2
                           3745 ;--- end asm ---
   0F0C F6 CA 82      [ 5] 3746 	ldb	_blockYOfs	; , blockYOfs
   0F0F C1 32         [ 2] 3747 	cmpb	#50	;cmpqi:	; ,
   0F11 10 27 01 53   [ 6] 3748 	lbeq	L179	; 
   0F15                    3749 L172:
                           3750 ;----- asm -----
                           3751 ;  903 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3752 	; #ENR#[635]			break;
                           3753 ;  0 "" 2
                           3754 ;--- end asm ---
   0F15 7E 0E E8      [ 4] 3755 	jmp	L163	; 
   0F18                    3756 L166:
                           3757 ;----- asm -----
                           3758 ;  895 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3759 	; #ENR#[631]			blockMoving();
                           3760 ;  0 "" 2
                           3761 ;--- end asm ---
   0F18 BD 09 4C      [ 8] 3762 	jsr	_blockMoving	; 
                           3763 ;----- asm -----
                           3764 ;  897 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3765 	; #ENR#[632]			break;
                           3766 ;  0 "" 2
                           3767 ;--- end asm ---
   0F1B 7E 0E E8      [ 4] 3768 	jmp	L163	; 
   0F1E                    3769 L164:
                           3770 ;----- asm -----
                           3771 ;  883 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3772 	; #ENR#[625]			blockMovingToStart();
                           3773 ;  0 "" 2
                           3774 ;  674 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3775 	; #ENR#[492]	drawField();
                           3776 ;  0 "" 2
                           3777 ;--- end asm ---
   0F1E BD 05 87      [ 8] 3778 	jsr	_drawField	; 
                           3779 ;----- asm -----
                           3780 ;  676 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3781 	; #ENR#[493]	drawBlock(blockYOfs);
                           3782 ;  0 "" 2
                           3783 ;--- end asm ---
   0F21 F6 CA 82      [ 5] 3784 	ldb	_blockYOfs	; , blockYOfs
   0F24 E7 6A         [ 5] 3785 	stb	10,s	; , blockYOfs.81
                           3786 ;----- asm -----
                           3787 ;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3788 	; #ENR#[481]	zergnd();
                           3789 ;  0 "" 2
                           3790 ;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0F26 BD F3 54      [ 8] 3791 	jsr 0xF354; Vec_Sub_ZEROIT
                           3792 	
                           3793 ;  0 "" 2
                           3794 ;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3795 	; #ENR#[482]	intens(0x63);
                           3796 ;  0 "" 2
                           3797 ;--- end asm ---
   0F29 C6 63         [ 2] 3798 	ldb	#99	;  a,
                           3799 ;----- asm -----
                           3800 ;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0F2B 1F 98         [ 6] 3801 	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
   0F2D BD F2 AB      [ 8] 3802 	jsr 0xF2AB; Vec_Sub_INTENS
                           3803 	
                           3804 ;  0 "" 2
                           3805 ;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3806 	; #ENR#[483]	positd(0, yofs);
                           3807 ;  0 "" 2
                           3808 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3809 	; #ENR#[40]	Moveto_d_7F(y,x);
                           3810 ;  0 "" 2
                           3811 ;--- end asm ---
   0F30 E6 6A         [ 5] 3812 	ldb	10,s	; , blockYOfs.81
   0F32 E7 E8 11      [ 5] 3813 	stb	17,s	; , a
   0F35 6F E8 10      [ 7] 3814 	clr	16,s	;  b
                           3815 ;----- asm -----
                           3816 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0F38 A6 E8 11      [ 5] 3817 	lda 17,s	;  a
   0F3B E6 E8 10      [ 5] 3818 	ldb 16,s	;  b
   0F3E BD F2 FC      [ 8] 3819 	jsr 0xF2FC; Vec_Sub_POSITD
                           3820 	
                           3821 ;  0 "" 2
                           3822 ;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3823 	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           3824 ;  0 "" 2
                           3825 ;--- end asm ---
   0F41 F6 CA 77      [ 5] 3826 	ldb	_blockX	; , blockX
   0F44 E7 6B         [ 5] 3827 	stb	11,s	; , blockX.78
                           3828 ;----- asm -----
                           3829 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3830 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           3831 ;  0 "" 2
                           3832 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3833 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           3834 ;  0 "" 2
                           3835 ;--- end asm ---
   0F46 58            [ 2] 3836 	aslb	; 
   0F47 EB 6B         [ 5] 3837 	addb	11,s	; , blockX.78
   0F49 E7 69         [ 5] 3838 	stb	9,s	; ,
   0F4B F6 CA 78      [ 5] 3839 	ldb	_blockY	;  tmp76, blockY
   0F4E 58            [ 2] 3840 	aslb	;  tmp76
   0F4F 58            [ 2] 3841 	aslb	;  tmp76
   0F50 58            [ 2] 3842 	aslb	;  tmp76
   0F51 EB 69         [ 5] 3843 	addb	9,s	;  tmp76,
   0F53 CB 98         [ 2] 3844 	addb	#-104	;  tmp76,
   0F55 E7 69         [ 5] 3845 	stb	9,s	;  tmp76,
                           3846 ;----- asm -----
                           3847 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3848 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           3849 ;  0 "" 2
                           3850 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3851 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           3852 ;  0 "" 2
                           3853 ;--- end asm ---
   0F57 E6 6B         [ 5] 3854 	ldb	11,s	; , blockX.78
   0F59 CB FE         [ 2] 3855 	addb	#-2	; ,
   0F5B 86 0E         [ 2] 3856 	lda	#14	;mulqihi3	; 
   0F5D 3D            [11] 3857 	mul
   0F5E 1F 02         [ 6] 3858 	tfr	d,y	; , tmp79
   0F60 F6 CA 78      [ 5] 3859 	ldb	_blockY	; , blockY
   0F63 86 FA         [ 2] 3860 	lda	#-6	;mulqihi3	; 
   0F65 3D            [11] 3861 	mul
   0F66 1F 01         [ 6] 3862 	tfr	d,x	; , tmp80
   0F68 1F 20         [ 6] 3863 	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp79,
   0F6A E7 68         [ 5] 3864 	stb	8,s	; ,
   0F6C 1F 10         [ 6] 3865 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp80, tmp82
   0F6E EB 68         [ 5] 3866 	addb	8,s	;  tmp82,
   0F70 E7 68         [ 5] 3867 	stb	8,s	;  tmp82,
                           3868 ;----- asm -----
                           3869 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3870 	; #ENR#[40]	Moveto_d_7F(y,x);
                           3871 ;  0 "" 2
                           3872 ;--- end asm ---
   0F72 E6 69         [ 5] 3873 	ldb	9,s	; ,
   0F74 E7 E8 10      [ 5] 3874 	stb	16,s	; , a
   0F77 E6 68         [ 5] 3875 	ldb	8,s	; ,
   0F79 E7 E8 11      [ 5] 3876 	stb	17,s	; , b
                           3877 ;----- asm -----
                           3878 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0F7C A6 E8 10      [ 5] 3879 	lda 16,s	;  a
   0F7F E6 E8 11      [ 5] 3880 	ldb 17,s	;  b
   0F82 BD F2 FC      [ 8] 3881 	jsr 0xF2FC; Vec_Sub_POSITD
                           3882 	
                           3883 ;  0 "" 2
                           3884 ;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3885 	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           3886 ;  0 "" 2
                           3887 ;--- end asm ---
   0F85 F6 CA 7D      [ 5] 3888 	ldb	_blockAnimationStep	; , blockAnimationStep
   0F88 1D            [ 2] 3889 	sex		;extendqihi2: R:b -> R:d	; ,
   0F89 58            [ 2] 3890 	aslb	; 
   0F8A 49            [ 2] 3891 	rola	; 
   0F8B FE CA 79      [ 6] 3892 	ldu	_blockAnimation	; , blockAnimation
   0F8E 30 CB         [ 8] 3893 	leax	d,u	;  tmp86, tmp85,
   0F90 AE 84         [ 5] 3894 	ldx	,x	;  D.3479,
                           3895 ;----- asm -----
                           3896 ;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0F92 BD F4 08      [ 8] 3897 	jsr 0xF408; Vec_Sub_PACK1X
                           3898 	
                           3899 ;  0 "" 2
                           3900 ;  678 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3901 	; #ENR#[494]	blockYOfs++;
                           3902 ;  0 "" 2
                           3903 ;--- end asm ---
   0F95 7C CA 82      [ 7] 3904 	inc	_blockYOfs	;  blockYOfs
   0F98 F6 CA 82      [ 5] 3905 	ldb	_blockYOfs	;  blockYOfs.82, blockYOfs
                           3906 ;----- asm -----
                           3907 ;  680 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3908 	; #ENR#[495]	if (blockYOfs == 0) {
                           3909 ;  0 "" 2
                           3910 ;--- end asm ---
   0F9B 5D            [ 2] 3911 	tstb	;  blockYOfs.82
   0F9C 26 05         [ 3] 3912 	bne	L170	; 
                           3913 ;----- asm -----
                           3914 ;  682 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3915 	; #ENR#[496]		gameState = BlockWaiting;
                           3916 ;  0 "" 2
                           3917 ;--- end asm ---
   0F9E C6 01         [ 2] 3918 	ldb	#1	; ,
   0FA0 F7 CA 85      [ 5] 3919 	stb	_gameState	; , gameState
   0FA3                    3920 L170:
                           3921 ;----- asm -----
                           3922 ;  885 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3923 	; #ENR#[626]			break;
                           3924 ;  0 "" 2
                           3925 ;--- end asm ---
   0FA3 7E 0E E8      [ 4] 3926 	jmp	L163	; 
   0FA6                    3927 L165:
                           3928 ;----- asm -----
                           3929 ;  889 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3930 	; #ENR#[628]			blockWaiting();
                           3931 ;  0 "" 2
                           3932 ;--- end asm ---
   0FA6 BD 0B 78      [ 8] 3933 	jsr	_blockWaiting	; 
                           3934 ;----- asm -----
                           3935 ;  891 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3936 	; #ENR#[629]			break;
                           3937 ;  0 "" 2
                           3938 ;--- end asm ---
   0FA9 7E 0E E8      [ 4] 3939 	jmp	L163	; 
   0FAC                    3940 L177:
                           3941 ;----- asm -----
                           3942 ;  847 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3943 	; #ENR#[601]		levelNumber++;
                           3944 ;  0 "" 2
                           3945 ;--- end asm ---
   0FAC 7C C8 95      [ 7] 3946 	inc	_levelNumber	;  levelNumber
   0FAF F6 C8 95      [ 5] 3947 	ldb	_levelNumber	;  levelNumber.106, levelNumber
                           3948 ;----- asm -----
                           3949 ;  849 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3950 	; #ENR#[602]		if (levelNumber > 2) levelNumber = 0;
                           3951 ;  0 "" 2
                           3952 ;--- end asm ---
   0FB2 C1 02         [ 2] 3953 	cmpb	#2	;cmpqi:	;  levelNumber.106,
   0FB4 2F 03         [ 3] 3954 	ble	L174	; 
   0FB6 7F C8 95      [ 7] 3955 	clr	_levelNumber	;  levelNumber
   0FB9                    3956 L174:
                           3957 ;----- asm -----
                           3958 ;  851 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3959 	; #ENR#[603]		startLevel();
                           3960 ;  0 "" 2
                           3961 ;--- end asm ---
   0FB9 BD 0C 53      [ 8] 3962 	jsr	_startLevel	; 
   0FBC 7E 0E E8      [ 4] 3963 	jmp	L173	; 
   0FBF                    3964 L178:
                           3965 ;----- asm -----
                           3966 ;  825 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3967 	; #ENR#[587]		drawBlock(-blockYOfs*blockYOfs);
                           3968 ;  0 "" 2
                           3969 ;--- end asm ---
   0FBF 50            [ 2] 3970 	negb	;  tmp87
   0FC0 A6 6C         [ 5] 3971 	lda	12,s	;mulqihi3	;  blockYOfs.102
   0FC2 3D            [11] 3972 	mul
   0FC3 ED 66         [ 6] 3973 	std	6,s	; ,
                           3974 ;----- asm -----
                           3975 ;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3976 	; #ENR#[481]	zergnd();
                           3977 ;  0 "" 2
                           3978 ;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0FC5 BD F3 54      [ 8] 3979 	jsr 0xF354; Vec_Sub_ZEROIT
                           3980 	
                           3981 ;  0 "" 2
                           3982 ;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3983 	; #ENR#[482]	intens(0x63);
                           3984 ;  0 "" 2
                           3985 ;--- end asm ---
   0FC8 C6 63         [ 2] 3986 	ldb	#99	;  a,
                           3987 ;----- asm -----
                           3988 ;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0FCA 1F 98         [ 6] 3989 	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
   0FCC BD F2 AB      [ 8] 3990 	jsr 0xF2AB; Vec_Sub_INTENS
                           3991 	
                           3992 ;  0 "" 2
                           3993 ;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3994 	; #ENR#[483]	positd(0, yofs);
                           3995 ;  0 "" 2
                           3996 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           3997 	; #ENR#[40]	Moveto_d_7F(y,x);
                           3998 ;  0 "" 2
                           3999 ;--- end asm ---
   0FCF EC 66         [ 6] 4000 	ldd	6,s	; ,
   0FD1 E7 E8 11      [ 5] 4001 	stb	17,s	;movlsbqihi: R:d -> 17,s	;  a,
   0FD4 6F E8 10      [ 7] 4002 	clr	16,s	;  b
                           4003 ;----- asm -----
                           4004 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   0FD7 A6 E8 11      [ 5] 4005 	lda 17,s	;  a
   0FDA E6 E8 10      [ 5] 4006 	ldb 16,s	;  b
   0FDD BD F2 FC      [ 8] 4007 	jsr 0xF2FC; Vec_Sub_POSITD
                           4008 	
                           4009 ;  0 "" 2
                           4010 ;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4011 	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           4012 ;  0 "" 2
                           4013 ;--- end asm ---
   0FE0 F6 CA 77      [ 5] 4014 	ldb	_blockX	; , blockX
   0FE3 E7 6D         [ 5] 4015 	stb	13,s	; , blockX.78
                           4016 ;----- asm -----
                           4017 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4018 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           4019 ;  0 "" 2
                           4020 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4021 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           4022 ;  0 "" 2
                           4023 ;--- end asm ---
   0FE5 58            [ 2] 4024 	aslb	; 
   0FE6 EB 6D         [ 5] 4025 	addb	13,s	; , blockX.78
   0FE8 E7 65         [ 5] 4026 	stb	5,s	; ,
   0FEA F6 CA 78      [ 5] 4027 	ldb	_blockY	;  tmp92, blockY
   0FED 58            [ 2] 4028 	aslb	;  tmp92
   0FEE 58            [ 2] 4029 	aslb	;  tmp92
   0FEF 58            [ 2] 4030 	aslb	;  tmp92
   0FF0 EB 65         [ 5] 4031 	addb	5,s	;  tmp92,
   0FF2 CB 98         [ 2] 4032 	addb	#-104	;  tmp92,
   0FF4 E7 65         [ 5] 4033 	stb	5,s	;  tmp92,
                           4034 ;----- asm -----
                           4035 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4036 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           4037 ;  0 "" 2
                           4038 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4039 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           4040 ;  0 "" 2
                           4041 ;--- end asm ---
   0FF6 E6 6D         [ 5] 4042 	ldb	13,s	; , blockX.78
   0FF8 CB FE         [ 2] 4043 	addb	#-2	; ,
   0FFA 86 0E         [ 2] 4044 	lda	#14	;mulqihi3	; 
   0FFC 3D            [11] 4045 	mul
   0FFD 1F 02         [ 6] 4046 	tfr	d,y	; , tmp95
   0FFF F6 CA 78      [ 5] 4047 	ldb	_blockY	; , blockY
   1002 86 FA         [ 2] 4048 	lda	#-6	;mulqihi3	; 
   1004 3D            [11] 4049 	mul
   1005 1F 01         [ 6] 4050 	tfr	d,x	; , tmp96
   1007 1F 20         [ 6] 4051 	tfr	y,d	;movlsbqihi: R:y -> R:b	;  tmp95,
   1009 E7 64         [ 5] 4052 	stb	4,s	; ,
   100B 1F 10         [ 6] 4053 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp96, tmp98
   100D EB 64         [ 5] 4054 	addb	4,s	;  tmp98,
   100F E7 64         [ 5] 4055 	stb	4,s	;  tmp98,
                           4056 ;----- asm -----
                           4057 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4058 	; #ENR#[40]	Moveto_d_7F(y,x);
                           4059 ;  0 "" 2
                           4060 ;--- end asm ---
   1011 E6 65         [ 5] 4061 	ldb	5,s	; ,
   1013 E7 E8 10      [ 5] 4062 	stb	16,s	; , a
   1016 E6 64         [ 5] 4063 	ldb	4,s	; ,
   1018 E7 E8 11      [ 5] 4064 	stb	17,s	; , b
                           4065 ;----- asm -----
                           4066 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   101B A6 E8 10      [ 5] 4067 	lda 16,s	;  a
   101E E6 E8 11      [ 5] 4068 	ldb 17,s	;  b
   1021 BD F2 FC      [ 8] 4069 	jsr 0xF2FC; Vec_Sub_POSITD
                           4070 	
                           4071 ;  0 "" 2
                           4072 ;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4073 	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           4074 ;  0 "" 2
                           4075 ;--- end asm ---
   1024 F6 CA 7D      [ 5] 4076 	ldb	_blockAnimationStep	; , blockAnimationStep
   1027 1D            [ 2] 4077 	sex		;extendqihi2: R:b -> R:d	; ,
   1028 58            [ 2] 4078 	aslb	; 
   1029 49            [ 2] 4079 	rola	; 
   102A FE CA 79      [ 6] 4080 	ldu	_blockAnimation	; , blockAnimation
   102D 30 CB         [ 8] 4081 	leax	d,u	;  tmp102, tmp101,
   102F AE 84         [ 5] 4082 	ldx	,x	;  D.3517,
                           4083 ;----- asm -----
                           4084 ;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   1031 BD F4 08      [ 8] 4085 	jsr 0xF408; Vec_Sub_PACK1X
                           4086 	
                           4087 ;  0 "" 2
                           4088 ;  827 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4089 	; #ENR#[588]		doBlockAnimation();
                           4090 ;  0 "" 2
                           4091 ;  726 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4092 	; #ENR#[525]	if (blockAnimating) {
                           4093 ;  0 "" 2
                           4094 ;--- end asm ---
   1034 7D CA 7E      [ 7] 4095 	tst	_blockAnimating	;  blockAnimating
   1037 10 27 FE D1   [ 6] 4096 	lbeq	L171	; 
                           4097 ;----- asm -----
                           4098 ;  728 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4099 	; #ENR#[526]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
                           4100 ;  0 "" 2
                           4101 ;--- end asm ---
   103B 7C CA 7D      [ 7] 4102 	inc	_blockAnimationStep	;  blockAnimationStep
   103E F6 CA 7D      [ 5] 4103 	ldb	_blockAnimationStep	;  blockAnimationStep.86, blockAnimationStep
   1041 C1 0C         [ 2] 4104 	cmpb	#12	;cmpqi:	;  blockAnimationStep.86,
   1043 10 26 FE C5   [ 6] 4105 	lbne	L171	; 
                           4106 ;----- asm -----
                           4107 ;  730 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4108 	; #ENR#[527]			blockX = nextBlockX;
                           4109 ;  0 "" 2
                           4110 ;--- end asm ---
   1047 F6 CA 7F      [ 5] 4111 	ldb	_nextBlockX	; , nextBlockX
   104A F7 CA 77      [ 5] 4112 	stb	_blockX	; , blockX
                           4113 ;----- asm -----
                           4114 ;  732 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4115 	; #ENR#[528]			blockY = nextBlockY;
                           4116 ;  0 "" 2
                           4117 ;--- end asm ---
   104D F6 CA 80      [ 5] 4118 	ldb	_nextBlockY	; , nextBlockY
   1050 F7 CA 78      [ 5] 4119 	stb	_blockY	; , blockY
                           4120 ;----- asm -----
                           4121 ;  734 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4122 	; #ENR#[529]			blockAnimationStep = 0;
                           4123 ;  0 "" 2
                           4124 ;--- end asm ---
   1053 7F CA 7D      [ 7] 4125 	clr	_blockAnimationStep	;  blockAnimationStep
                           4126 ;----- asm -----
                           4127 ;  736 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4128 	; #ENR#[530]			blockAnimation = nextBlockAnimation;
                           4129 ;  0 "" 2
                           4130 ;--- end asm ---
   1056 BE CA 7B      [ 6] 4131 	ldx	_nextBlockAnimation	; , nextBlockAnimation
   1059 BF CA 79      [ 6] 4132 	stx	_blockAnimation	; , blockAnimation
                           4133 ;----- asm -----
                           4134 ;  738 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4135 	; #ENR#[531]			blockAnimating = 0;
                           4136 ;  0 "" 2
                           4137 ;--- end asm ---
   105C 7F CA 7E      [ 7] 4138 	clr	_blockAnimating	;  blockAnimating
                           4139 ;----- asm -----
                           4140 ;  830 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4141 	; #ENR#[590]	if (blockYOfs == 50) {
                           4142 ;  0 "" 2
                           4143 ;--- end asm ---
   105F F6 CA 82      [ 5] 4144 	ldb	_blockYOfs	; , blockYOfs
   1062 C1 32         [ 2] 4145 	cmpb	#50	;cmpqi:	; ,
   1064 10 26 FE AD   [ 6] 4146 	lbne	L172	; 
   1068                    4147 L179:
                           4148 ;----- asm -----
                           4149 ;  832 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4150 	; #ENR#[591]		startLevel();
                           4151 ;  0 "" 2
                           4152 ;--- end asm ---
   1068 BD 0C 53      [ 8] 4153 	jsr	_startLevel	; 
   106B 7E 0F 15      [ 4] 4154 	jmp	L172	; 
                           4155 	.globl _blockFalling
   106E                    4156 _blockFalling:
   106E 34 40         [ 6] 4157 	pshs	u	; 
   1070 32 76         [ 5] 4158 	leas	-10,s	; ,,
                           4159 ;----- asm -----
                           4160 ;  819 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4161 	; #ENR#[584]	drawField();
                           4162 ;  0 "" 2
                           4163 ;--- end asm ---
   1072 BD 05 87      [ 8] 4164 	jsr	_drawField	; 
                           4165 ;----- asm -----
                           4166 ;  821 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4167 	; #ENR#[585]	blockYOfs++;
                           4168 ;  0 "" 2
                           4169 ;--- end asm ---
   1075 F6 CA 82      [ 5] 4170 	ldb	_blockYOfs	; , blockYOfs
   1078 5C            [ 2] 4171 	incb	; 
   1079 E7 66         [ 5] 4172 	stb	6,s	; , blockYOfs.102
   107B F7 CA 82      [ 5] 4173 	stb	_blockYOfs	; , blockYOfs
                           4174 ;----- asm -----
                           4175 ;  823 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4176 	; #ENR#[586]	if (blockYOfs < 12) {
                           4177 ;  0 "" 2
                           4178 ;--- end asm ---
   107E C1 0B         [ 2] 4179 	cmpb	#11	;cmpqi:	; ,
   1080 2F 0D         [ 3] 4180 	ble	L184	; 
   1082                    4181 L181:
                           4182 ;----- asm -----
                           4183 ;  830 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4184 	; #ENR#[590]	if (blockYOfs == 50) {
                           4185 ;  0 "" 2
                           4186 ;--- end asm ---
   1082 F6 CA 82      [ 5] 4187 	ldb	_blockYOfs	; , blockYOfs
   1085 C1 32         [ 2] 4188 	cmpb	#50	;cmpqi:	; ,
   1087 10 27 00 A1   [ 6] 4189 	lbeq	L185	; 
   108B 32 6A         [ 5] 4190 	leas	10,s	; ,,
   108D 35 C0         [ 7] 4191 	puls	u,pc	; 
   108F                    4192 L184:
                           4193 ;----- asm -----
                           4194 ;  825 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4195 	; #ENR#[587]		drawBlock(-blockYOfs*blockYOfs);
                           4196 ;  0 "" 2
                           4197 ;--- end asm ---
   108F 50            [ 2] 4198 	negb	;  tmp39
   1090 A6 66         [ 5] 4199 	lda	6,s	;mulqihi3	;  blockYOfs.102
   1092 3D            [11] 4200 	mul
   1093 ED 64         [ 6] 4201 	std	4,s	; ,
                           4202 ;----- asm -----
                           4203 ;  658 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4204 	; #ENR#[481]	zergnd();
                           4205 ;  0 "" 2
                           4206 ;  61 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   1095 BD F3 54      [ 8] 4207 	jsr 0xF354; Vec_Sub_ZEROIT
                           4208 	
                           4209 ;  0 "" 2
                           4210 ;  660 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4211 	; #ENR#[482]	intens(0x63);
                           4212 ;  0 "" 2
                           4213 ;--- end asm ---
   1098 C6 63         [ 2] 4214 	ldb	#99	;  a,
                           4215 ;----- asm -----
                           4216 ;  546 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   109A 1F 98         [ 6] 4217 	tfr b,a	; #VIDE_CHANGE_B_TO_A# 	;  a
   109C BD F2 AB      [ 8] 4218 	jsr 0xF2AB; Vec_Sub_INTENS
                           4219 	
                           4220 ;  0 "" 2
                           4221 ;  662 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4222 	; #ENR#[483]	positd(0, yofs);
                           4223 ;  0 "" 2
                           4224 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4225 	; #ENR#[40]	Moveto_d_7F(y,x);
                           4226 ;  0 "" 2
                           4227 ;--- end asm ---
   109F EC 64         [ 6] 4228 	ldd	4,s	; ,
   10A1 E7 69         [ 5] 4229 	stb	9,s	;movlsbqihi: R:d -> 9,s	;  a,
   10A3 6F 68         [ 7] 4230 	clr	8,s	;  b
                           4231 ;----- asm -----
                           4232 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   10A5 A6 69         [ 5] 4233 	lda 9,s	;  a
   10A7 E6 68         [ 5] 4234 	ldb 8,s	;  b
   10A9 BD F2 FC      [ 8] 4235 	jsr 0xF2FC; Vec_Sub_POSITD
                           4236 	
                           4237 ;  0 "" 2
                           4238 ;  665 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4239 	; #ENR#[485]	positd(x3d(blockX, 0, blockY), y3d(blockX, 0, blockY));
                           4240 ;  0 "" 2
                           4241 ;--- end asm ---
   10AC F6 CA 77      [ 5] 4242 	ldb	_blockX	; , blockX
   10AF E7 67         [ 5] 4243 	stb	7,s	; , blockX.78
                           4244 ;----- asm -----
                           4245 ;  194 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4246 	; #ENR#[189]	y -= LEVEL_HEIGHT / 2;
                           4247 ;  0 "" 2
                           4248 ;  196 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4249 	; #ENR#[190]	return 3 * x + 13 * y + 8 * z;
                           4250 ;  0 "" 2
                           4251 ;--- end asm ---
   10B1 58            [ 2] 4252 	aslb	; 
   10B2 EB 67         [ 5] 4253 	addb	7,s	; , blockX.78
   10B4 E7 63         [ 5] 4254 	stb	3,s	; ,
   10B6 F6 CA 78      [ 5] 4255 	ldb	_blockY	;  tmp44, blockY
   10B9 58            [ 2] 4256 	aslb	;  tmp44
   10BA 58            [ 2] 4257 	aslb	;  tmp44
   10BB 58            [ 2] 4258 	aslb	;  tmp44
   10BC EB 63         [ 5] 4259 	addb	3,s	;  tmp44,
   10BE CB 98         [ 2] 4260 	addb	#-104	;  tmp44,
   10C0 E7 63         [ 5] 4261 	stb	3,s	;  tmp44,
                           4262 ;----- asm -----
                           4263 ;  185 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4264 	; #ENR#[182]	x -= LEVEL_WIDTH / 2 - 4;
                           4265 ;  0 "" 2
                           4266 ;  187 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4267 	; #ENR#[183]	return 14 * x - 6 * z+0*y;
                           4268 ;  0 "" 2
                           4269 ;--- end asm ---
   10C2 E6 67         [ 5] 4270 	ldb	7,s	; , blockX.78
   10C4 CB FE         [ 2] 4271 	addb	#-2	; ,
   10C6 86 0E         [ 2] 4272 	lda	#14	;mulqihi3	; 
   10C8 3D            [11] 4273 	mul
   10C9 1F 03         [ 6] 4274 	tfr	d,u	; , tmp47
   10CB F6 CA 78      [ 5] 4275 	ldb	_blockY	; , blockY
   10CE 86 FA         [ 2] 4276 	lda	#-6	;mulqihi3	; 
   10D0 3D            [11] 4277 	mul
   10D1 1F 01         [ 6] 4278 	tfr	d,x	; , tmp48
   10D3 1F 30         [ 6] 4279 	tfr	u,d	;movlsbqihi: R:u -> R:b	;  tmp47,
   10D5 E7 62         [ 5] 4280 	stb	2,s	; ,
   10D7 1F 10         [ 6] 4281 	tfr	x,d	;movlsbqihi: R:x -> R:b	;  tmp48, tmp50
   10D9 EB 62         [ 5] 4282 	addb	2,s	;  tmp50,
   10DB E7 62         [ 5] 4283 	stb	2,s	;  tmp50,
                           4284 ;----- asm -----
                           4285 ;  41 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4286 	; #ENR#[40]	Moveto_d_7F(y,x);
                           4287 ;  0 "" 2
                           4288 ;--- end asm ---
   10DD E6 63         [ 5] 4289 	ldb	3,s	; ,
   10DF E7 68         [ 5] 4290 	stb	8,s	; , a
   10E1 E6 62         [ 5] 4291 	ldb	2,s	; ,
   10E3 E7 69         [ 5] 4292 	stb	9,s	; , b
                           4293 ;----- asm -----
                           4294 ;  524 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   10E5 A6 68         [ 5] 4295 	lda 8,s	;  a
   10E7 E6 69         [ 5] 4296 	ldb 9,s	;  b
   10E9 BD F2 FC      [ 8] 4297 	jsr 0xF2FC; Vec_Sub_POSITD
                           4298 	
                           4299 ;  0 "" 2
                           4300 ;  668 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4301 	; #ENR#[487]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           4302 ;  0 "" 2
                           4303 ;--- end asm ---
   10EC F6 CA 7D      [ 5] 4304 	ldb	_blockAnimationStep	; , blockAnimationStep
   10EF 1D            [ 2] 4305 	sex		;extendqihi2: R:b -> R:d	; ,
   10F0 ED E4         [ 5] 4306 	std	,s	; ,
   10F2 58            [ 2] 4307 	aslb	; 
   10F3 49            [ 2] 4308 	rola	; 
   10F4 FE CA 79      [ 6] 4309 	ldu	_blockAnimation	; , blockAnimation
   10F7 30 CB         [ 8] 4310 	leax	d,u	;  tmp54, tmp53,
   10F9 AE 84         [ 5] 4311 	ldx	,x	;  D.3616,
                           4312 ;----- asm -----
                           4313 ;  260 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1
   10FB BD F4 08      [ 8] 4314 	jsr 0xF408; Vec_Sub_PACK1X
                           4315 	
                           4316 ;  0 "" 2
                           4317 ;  827 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4318 	; #ENR#[588]		doBlockAnimation();
                           4319 ;  0 "" 2
                           4320 ;  726 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4321 	; #ENR#[525]	if (blockAnimating) {
                           4322 ;  0 "" 2
                           4323 ;--- end asm ---
   10FE 7D CA 7E      [ 7] 4324 	tst	_blockAnimating	;  blockAnimating
   1101 10 27 FF 7D   [ 6] 4325 	lbeq	L181	; 
                           4326 ;----- asm -----
                           4327 ;  728 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4328 	; #ENR#[526]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
                           4329 ;  0 "" 2
                           4330 ;--- end asm ---
   1105 7C CA 7D      [ 7] 4331 	inc	_blockAnimationStep	;  blockAnimationStep
   1108 F6 CA 7D      [ 5] 4332 	ldb	_blockAnimationStep	;  blockAnimationStep.86, blockAnimationStep
   110B C1 0C         [ 2] 4333 	cmpb	#12	;cmpqi:	;  blockAnimationStep.86,
   110D 10 26 FF 71   [ 6] 4334 	lbne	L181	; 
                           4335 ;----- asm -----
                           4336 ;  730 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4337 	; #ENR#[527]			blockX = nextBlockX;
                           4338 ;  0 "" 2
                           4339 ;--- end asm ---
   1111 F6 CA 7F      [ 5] 4340 	ldb	_nextBlockX	; , nextBlockX
   1114 F7 CA 77      [ 5] 4341 	stb	_blockX	; , blockX
                           4342 ;----- asm -----
                           4343 ;  732 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4344 	; #ENR#[528]			blockY = nextBlockY;
                           4345 ;  0 "" 2
                           4346 ;--- end asm ---
   1117 F6 CA 80      [ 5] 4347 	ldb	_nextBlockY	; , nextBlockY
   111A F7 CA 78      [ 5] 4348 	stb	_blockY	; , blockY
                           4349 ;----- asm -----
                           4350 ;  734 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4351 	; #ENR#[529]			blockAnimationStep = 0;
                           4352 ;  0 "" 2
                           4353 ;--- end asm ---
   111D 7F CA 7D      [ 7] 4354 	clr	_blockAnimationStep	;  blockAnimationStep
                           4355 ;----- asm -----
                           4356 ;  736 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4357 	; #ENR#[530]			blockAnimation = nextBlockAnimation;
                           4358 ;  0 "" 2
                           4359 ;--- end asm ---
   1120 BE CA 7B      [ 6] 4360 	ldx	_nextBlockAnimation	; , nextBlockAnimation
   1123 BF CA 79      [ 6] 4361 	stx	_blockAnimation	; , blockAnimation
                           4362 ;----- asm -----
                           4363 ;  738 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4364 	; #ENR#[531]			blockAnimating = 0;
                           4365 ;  0 "" 2
                           4366 ;--- end asm ---
   1126 7F CA 7E      [ 7] 4367 	clr	_blockAnimating	;  blockAnimating
   1129 7E 10 82      [ 4] 4368 	jmp	L181	; 
   112C                    4369 L185:
                           4370 ;----- asm -----
                           4371 ;  832 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/bloxorz.enr.c" 1
                           4372 	; #ENR#[591]		startLevel();
                           4373 ;  0 "" 2
                           4374 ;--- end asm ---
   112C BD 0C 53      [ 8] 4375 	jsr	_startLevel	; 
   112F 32 6A         [ 5] 4376 	leas	10,s	; ,,
   1131 35 C0         [ 7] 4377 	puls	u,pc	; 
                           4378 	.globl _startMusic
   1133                    4379 _startMusic:
   1133 FE                 4380 	.byte	-2
   1134 E8                 4381 	.byte	-24
   1135 FE                 4382 	.byte	-2
   1136 B6                 4383 	.byte	-74
   1137 01                 4384 	.byte	1
   1138 01                 4385 	.byte	1
   1139 02                 4386 	.byte	2
   113A 01                 4387 	.byte	1
   113B 03                 4388 	.byte	3
   113C 01                 4389 	.byte	1
   113D 04                 4390 	.byte	4
   113E 01                 4391 	.byte	1
   113F 05                 4392 	.byte	5
   1140 01                 4393 	.byte	1
   1141 06                 4394 	.byte	6
   1142 01                 4395 	.byte	1
   1143 07                 4396 	.byte	7
   1144 01                 4397 	.byte	1
   1145 08                 4398 	.byte	8
   1146 01                 4399 	.byte	1
   1147 09                 4400 	.byte	9
   1148 01                 4401 	.byte	1
   1149 0A                 4402 	.byte	10
   114A 01                 4403 	.byte	1
   114B 0B                 4404 	.byte	11
   114C 01                 4405 	.byte	1
   114D 0C                 4406 	.byte	12
   114E 01                 4407 	.byte	1
   114F 0D                 4408 	.byte	13
   1150 01                 4409 	.byte	1
   1151 00                 4410 	.byte	0
   1152 80                 4411 	.byte	-128
                           4412 	.globl _levelEndMusic
   1153                    4413 _levelEndMusic:
   1153 FE                 4414 	.byte	-2
   1154 E8                 4415 	.byte	-24
   1155 FE                 4416 	.byte	-2
   1156 B6                 4417 	.byte	-74
   1157 0D                 4418 	.byte	13
   1158 01                 4419 	.byte	1
   1159 0E                 4420 	.byte	14
   115A 01                 4421 	.byte	1
   115B 0F                 4422 	.byte	15
   115C 01                 4423 	.byte	1
   115D 10                 4424 	.byte	16
   115E 01                 4425 	.byte	1
   115F 11                 4426 	.byte	17
   1160 01                 4427 	.byte	1
   1161 12                 4428 	.byte	18
   1162 01                 4429 	.byte	1
   1163 13                 4430 	.byte	19
   1164 01                 4431 	.byte	1
   1165 14                 4432 	.byte	20
   1166 01                 4433 	.byte	1
   1167 15                 4434 	.byte	21
   1168 01                 4435 	.byte	1
   1169 16                 4436 	.byte	22
   116A 01                 4437 	.byte	1
   116B 00                 4438 	.byte	0
   116C 80                 4439 	.byte	-128
                           4440 	.globl _fallingMusic
   116D                    4441 _fallingMusic:
   116D FE                 4442 	.byte	-2
   116E E8                 4443 	.byte	-24
   116F FE                 4444 	.byte	-2
   1170 B6                 4445 	.byte	-74
   1171 0D                 4446 	.byte	13
   1172 02                 4447 	.byte	2
   1173 0C                 4448 	.byte	12
   1174 02                 4449 	.byte	2
   1175 0B                 4450 	.byte	11
   1176 02                 4451 	.byte	2
   1177 0A                 4452 	.byte	10
   1178 02                 4453 	.byte	2
   1179 09                 4454 	.byte	9
   117A 02                 4455 	.byte	2
   117B 08                 4456 	.byte	8
   117C 02                 4457 	.byte	2
   117D 07                 4458 	.byte	7
   117E 02                 4459 	.byte	2
   117F 06                 4460 	.byte	6
   1180 02                 4461 	.byte	2
   1181 05                 4462 	.byte	5
   1182 02                 4463 	.byte	2
   1183 04                 4464 	.byte	4
   1184 02                 4465 	.byte	2
   1185 03                 4466 	.byte	3
   1186 02                 4467 	.byte	2
   1187 02                 4468 	.byte	2
   1188 02                 4469 	.byte	2
   1189 01                 4470 	.byte	1
   118A 02                 4471 	.byte	2
   118B 00                 4472 	.byte	0
   118C 80                 4473 	.byte	-128
                           4474 	.globl _movingMusic
   118D                    4475 _movingMusic:
   118D FD                 4476 	.byte	-3
   118E C3                 4477 	.byte	-61
   118F FE                 4478 	.byte	-2
   1190 B6                 4479 	.byte	-74
   1191 01                 4480 	.byte	1
   1192 05                 4481 	.byte	5
   1193 00                 4482 	.byte	0
   1194 80                 4483 	.byte	-128
                           4484 	.globl _currentMusic
                           4485 	.area .data
   C888                    4486 _currentMusic:
   C888 11 33              4487 	.word	_startMusic
                           4488 	.globl _level0
                           4489 	.area .text
   1195                    4490 LC0:
   1195 20 20 20 20 20 20  4491 	.ascii "                                          ...   "
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        2E 2E 2E 20 20 20
   11C5 20 20 20 20 20 2E  4492 	.ascii "     ..a.        ....        ...         ...    "
        2E 61 2E 20 20 20
        20 20 20 20 20 2E
        2E 2E 2E 20 20 20
        20 20 20 20 20 2E
        2E 2E 20 20 20 20
        20 20 20 20 20 2E
        2E 2E 20 20 20 20
   11F5 20 20 20 20 2E 2E  4493 	.ascii "    ....       ....        .o..        ....     "
        2E 2E 20 20 20 20
        20 20 20 2E 2E 2E
        2E 20 20 20 20 20
        20 20 20 2E 6F 2E
        2E 20 20 20 20 20
        20 20 20 2E 2E 2E
        2E 20 20 20 20 20
   1225 20 20 20 20 2E 2E  4494 	.ascii "    ..                                          "
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
   1255 20 20 20 20 20 20  4495 	.ascii "            \0"
        20 20 20 20 20 20
        00
                           4496 	.area .data
   C88A                    4497 _level0:
   C88A 11 95              4498 	.word	LC0
                           4499 	.globl _level1
                           4500 	.area .text
   1262                    4501 LC1:
   1262 20 20 20 20 20 20  4502 	.ascii "                ....        .a..        ....    "
        20 20 20 20 20 20
        20 20 20 20 2E 2E
        2E 2E 20 20 20 20
        20 20 20 20 2E 61
        2E 2E 20 20 20 20
        20 20 20 20 2E 2E
        2E 2E 20 20 20 20
   1292 20 20 20 20 2E 2E  4503 	.ascii "    ....          .           .           ...   "
        2E 2E 20 20 20 20
        20 20 20 20 20 20
        2E 20 20 20 20 20
        20 20 20 20 20 20
        2E 20 20 20 20 20
        20 20 20 20 20 20
        2E 2E 2E 20 20 20
   12C2 20 20 20 20 20 20  4504 	.ascii "      ...         ...           .           .   "
        2E 2E 2E 20 20 20
        20 20 20 20 20 20
        2E 2E 2E 20 20 20
        20 20 20 20 20 20
        20 20 2E 20 20 20
        20 20 20 20 20 20
        20 20 2E 20 20 20
   12F2 20 20 20 20 2E 2E  4505 	.ascii "    .....      ......      ..o.        ....     "
        2E 2E 2E 20 20 20
        20 20 20 2E 2E 2E
        2E 2E 2E 20 20 20
        20 20 20 2E 2E 6F
        2E 20 20 20 20 20
        20 20 20 2E 2E 2E
        2E 20 20 20 20 20
   1322 20 20 20 20 20 20  4506 	.ascii "            \0"
        20 20 20 20 20 20
        00
                           4507 	.area .data
   C88C                    4508 _level1:
   C88C 12 62              4509 	.word	LC1
                           4510 	.globl _level2
                           4511 	.area .text
   132F                    4512 LC2:
   132F 20 20 20 20 20 20  4513 	.ascii "                a           .           .       "
        20 20 20 20 20 20
        20 20 20 20 61 20
        20 20 20 20 20 20
        20 20 20 20 2E 20
        20 20 20 20 20 20
        20 20 20 20 2E 20
        20 20 20 20 20 20
   135F 20 20 20 20 2E 20  4514 	.ascii "    .           ...      ......      .   .....  "
        20 20 20 20 20 20
        20 20 20 20 2E 2E
        2E 20 20 20 20 20
        20 2E 2E 2E 2E 2E
        2E 20 20 20 20 20
        20 2E 20 20 20 2E
        2E 2E 2E 2E 20 20
   138F 20 2E 20 20 20 20  4515 	.ascii " .      ...  ...    ...  ...   ....  ...   ...  "
        20 20 2E 2E 2E 20
        20 2E 2E 2E 20 20
        20 20 2E 2E 2E 20
        20 2E 2E 2E 20 20
        20 2E 2E 2E 2E 20
        20 2E 2E 2E 20 20
        20 2E 2E 2E 20 20
   13BF 20 20 20 2E 2E 2E  4516 	.ascii "   ...         ....         .o.         ...     "
        20 20 20 20 20 20
        20 20 20 2E 2E 2E
        2E 20 20 20 20 20
        20 20 20 20 2E 6F
        2E 20 20 20 20 20
        20 20 20 20 2E 2E
        2E 20 20 20 20 20
   13EF 20 20 20 20 20 20  4517 	.ascii "            \0"
        20 20 20 20 20 20
        00
                           4518 	.area .data
   C88E                    4519 _level2:
   C88E 13 2F              4520 	.word	LC2
                           4521 	.globl _height2FallingLeft0
                           4522 	.area .text
   13FC                    4523 _height2FallingLeft0:
   13FC FF                 4524 	.byte	-1
   13FD 03                 4525 	.byte	3
   13FE 0E                 4526 	.byte	14
   13FF FF                 4527 	.byte	-1
   1400 08                 4528 	.byte	8
   1401 FA                 4529 	.byte	-6
   1402 FF                 4530 	.byte	-1
   1403 FD                 4531 	.byte	-3
   1404 F3                 4532 	.byte	-13
   1405 FF                 4533 	.byte	-1
   1406 F8                 4534 	.byte	-8
   1407 05                 4535 	.byte	5
   1408 FF                 4536 	.byte	-1
   1409 1A                 4537 	.byte	26
   140A 00                 4538 	.byte	0
   140B 00                 4539 	.byte	0
   140C E9                 4540 	.byte	-23
   140D 0E                 4541 	.byte	14
   140E FF                 4542 	.byte	-1
   140F 1A                 4543 	.byte	26
   1410 00                 4544 	.byte	0
   1411 00                 4545 	.byte	0
   1412 EE                 4546 	.byte	-18
   1413 FA                 4547 	.byte	-6
   1414 FF                 4548 	.byte	-1
   1415 1A                 4549 	.byte	26
   1416 00                 4550 	.byte	0
   1417 00                 4551 	.byte	0
   1418 E3                 4552 	.byte	-29
   1419 F3                 4553 	.byte	-13
   141A FF                 4554 	.byte	-1
   141B 1A                 4555 	.byte	26
   141C 00                 4556 	.byte	0
   141D 00                 4557 	.byte	0
   141E F8                 4558 	.byte	-8
   141F 05                 4559 	.byte	5
   1420 FF                 4560 	.byte	-1
   1421 03                 4561 	.byte	3
   1422 0E                 4562 	.byte	14
   1423 FF                 4563 	.byte	-1
   1424 08                 4564 	.byte	8
   1425 FA                 4565 	.byte	-6
   1426 FF                 4566 	.byte	-1
   1427 FD                 4567 	.byte	-3
   1428 F3                 4568 	.byte	-13
   1429 FF                 4569 	.byte	-1
   142A F8                 4570 	.byte	-8
   142B 05                 4571 	.byte	5
   142C 01                 4572 	.byte	1
                           4573 	.globl _height2RisingRight0
   142D                    4574 _height2RisingRight0:
   142D 00                 4575 	.byte	0
   142E 06                 4576 	.byte	6
   142F 1C                 4577 	.byte	28
   1430 FF                 4578 	.byte	-1
   1431 0D                 4579 	.byte	13
   1432 02                 4580 	.byte	2
   1433 FF                 4581 	.byte	-1
   1434 08                 4582 	.byte	8
   1435 FA                 4583 	.byte	-6
   1436 FF                 4584 	.byte	-1
   1437 F3                 4585 	.byte	-13
   1438 FE                 4586 	.byte	-2
   1439 FF                 4587 	.byte	-1
   143A F8                 4588 	.byte	-8
   143B 06                 4589 	.byte	6
   143C FF                 4590 	.byte	-1
   143D FD                 4591 	.byte	-3
   143E E4                 4592 	.byte	-28
   143F 00                 4593 	.byte	0
   1440 10                 4594 	.byte	16
   1441 1E                 4595 	.byte	30
   1442 FF                 4596 	.byte	-1
   1443 FE                 4597 	.byte	-2
   1444 E4                 4598 	.byte	-28
   1445 00                 4599 	.byte	0
   1446 0A                 4600 	.byte	10
   1447 16                 4601 	.byte	22
   1448 FF                 4602 	.byte	-1
   1449 FE                 4603 	.byte	-2
   144A E5                 4604 	.byte	-27
   144B 00                 4605 	.byte	0
   144C F5                 4606 	.byte	-11
   144D 19                 4607 	.byte	25
   144E FF                 4608 	.byte	-1
   144F FD                 4609 	.byte	-3
   1450 E5                 4610 	.byte	-27
   1451 00                 4611 	.byte	0
   1452 F8                 4612 	.byte	-8
   1453 05                 4613 	.byte	5
   1454 FF                 4614 	.byte	-1
   1455 0E                 4615 	.byte	14
   1456 02                 4616 	.byte	2
   1457 FF                 4617 	.byte	-1
   1458 08                 4618 	.byte	8
   1459 FB                 4619 	.byte	-5
   145A FF                 4620 	.byte	-1
   145B F2                 4621 	.byte	-14
   145C FE                 4622 	.byte	-2
   145D FF                 4623 	.byte	-1
   145E F8                 4624 	.byte	-8
   145F 05                 4625 	.byte	5
   1460 01                 4626 	.byte	1
                           4627 	.globl _height2FallingRight0
   1461                    4628 _height2FallingRight0:
   1461 FF                 4629 	.byte	-1
   1462 03                 4630 	.byte	3
   1463 0E                 4631 	.byte	14
   1464 FF                 4632 	.byte	-1
   1465 08                 4633 	.byte	8
   1466 FA                 4634 	.byte	-6
   1467 FF                 4635 	.byte	-1
   1468 FD                 4636 	.byte	-3
   1469 F3                 4637 	.byte	-13
   146A FF                 4638 	.byte	-1
   146B F8                 4639 	.byte	-8
   146C 05                 4640 	.byte	5
   146D FF                 4641 	.byte	-1
   146E 1A                 4642 	.byte	26
   146F 00                 4643 	.byte	0
   1470 00                 4644 	.byte	0
   1471 E9                 4645 	.byte	-23
   1472 0E                 4646 	.byte	14
   1473 FF                 4647 	.byte	-1
   1474 1A                 4648 	.byte	26
   1475 00                 4649 	.byte	0
   1476 00                 4650 	.byte	0
   1477 EE                 4651 	.byte	-18
   1478 FA                 4652 	.byte	-6
   1479 FF                 4653 	.byte	-1
   147A 1A                 4654 	.byte	26
   147B 00                 4655 	.byte	0
   147C 00                 4656 	.byte	0
   147D E3                 4657 	.byte	-29
   147E F3                 4658 	.byte	-13
   147F FF                 4659 	.byte	-1
   1480 1A                 4660 	.byte	26
   1481 00                 4661 	.byte	0
   1482 00                 4662 	.byte	0
   1483 F8                 4663 	.byte	-8
   1484 05                 4664 	.byte	5
   1485 FF                 4665 	.byte	-1
   1486 03                 4666 	.byte	3
   1487 0E                 4667 	.byte	14
   1488 FF                 4668 	.byte	-1
   1489 08                 4669 	.byte	8
   148A FA                 4670 	.byte	-6
   148B FF                 4671 	.byte	-1
   148C FD                 4672 	.byte	-3
   148D F3                 4673 	.byte	-13
   148E FF                 4674 	.byte	-1
   148F F8                 4675 	.byte	-8
   1490 05                 4676 	.byte	5
   1491 01                 4677 	.byte	1
                           4678 	.globl _height2RisingLeft0
   1492                    4679 _height2RisingLeft0:
   1492 00                 4680 	.byte	0
   1493 0C                 4681 	.byte	12
   1494 FF                 4682 	.byte	-1
   1495 FF                 4683 	.byte	-1
   1496 F4                 4684 	.byte	-12
   1497 01                 4685 	.byte	1
   1498 FF                 4686 	.byte	-1
   1499 08                 4687 	.byte	8
   149A FB                 4688 	.byte	-5
   149B FF                 4689 	.byte	-1
   149C 0C                 4690 	.byte	12
   149D FE                 4691 	.byte	-2
   149E FF                 4692 	.byte	-1
   149F F8                 4693 	.byte	-8
   14A0 06                 4694 	.byte	6
   14A1 FF                 4695 	.byte	-1
   14A2 0A                 4696 	.byte	10
   14A3 1B                 4697 	.byte	27
   14A4 00                 4698 	.byte	0
   14A5 EA                 4699 	.byte	-22
   14A6 E6                 4700 	.byte	-26
   14A7 FF                 4701 	.byte	-1
   14A8 09                 4702 	.byte	9
   14A9 1C                 4703 	.byte	28
   14AA 00                 4704 	.byte	0
   14AB FF                 4705 	.byte	-1
   14AC DF                 4706 	.byte	-33
   14AD FF                 4707 	.byte	-1
   14AE 09                 4708 	.byte	9
   14AF 1B                 4709 	.byte	27
   14B0 00                 4710 	.byte	0
   14B1 03                 4711 	.byte	3
   14B2 E3                 4712 	.byte	-29
   14B3 FF                 4713 	.byte	-1
   14B4 0A                 4714 	.byte	10
   14B5 1B                 4715 	.byte	27
   14B6 00                 4716 	.byte	0
   14B7 F8                 4717 	.byte	-8
   14B8 06                 4718 	.byte	6
   14B9 FF                 4719 	.byte	-1
   14BA F3                 4720 	.byte	-13
   14BB 02                 4721 	.byte	2
   14BC FF                 4722 	.byte	-1
   14BD 08                 4723 	.byte	8
   14BE FA                 4724 	.byte	-6
   14BF FF                 4725 	.byte	-1
   14C0 0D                 4726 	.byte	13
   14C1 FE                 4727 	.byte	-2
   14C2 FF                 4728 	.byte	-1
   14C3 F8                 4729 	.byte	-8
   14C4 06                 4730 	.byte	6
   14C5 01                 4731 	.byte	1
                           4732 	.globl _height2FallingBack0
   14C6                    4733 _height2FallingBack0:
   14C6 FF                 4734 	.byte	-1
   14C7 03                 4735 	.byte	3
   14C8 0E                 4736 	.byte	14
   14C9 FF                 4737 	.byte	-1
   14CA 08                 4738 	.byte	8
   14CB FA                 4739 	.byte	-6
   14CC FF                 4740 	.byte	-1
   14CD FD                 4741 	.byte	-3
   14CE F3                 4742 	.byte	-13
   14CF FF                 4743 	.byte	-1
   14D0 F8                 4744 	.byte	-8
   14D1 05                 4745 	.byte	5
   14D2 FF                 4746 	.byte	-1
   14D3 1A                 4747 	.byte	26
   14D4 00                 4748 	.byte	0
   14D5 00                 4749 	.byte	0
   14D6 E9                 4750 	.byte	-23
   14D7 0E                 4751 	.byte	14
   14D8 FF                 4752 	.byte	-1
   14D9 1A                 4753 	.byte	26
   14DA 00                 4754 	.byte	0
   14DB 00                 4755 	.byte	0
   14DC EE                 4756 	.byte	-18
   14DD FA                 4757 	.byte	-6
   14DE FF                 4758 	.byte	-1
   14DF 1A                 4759 	.byte	26
   14E0 00                 4760 	.byte	0
   14E1 00                 4761 	.byte	0
   14E2 E3                 4762 	.byte	-29
   14E3 F3                 4763 	.byte	-13
   14E4 FF                 4764 	.byte	-1
   14E5 1A                 4765 	.byte	26
   14E6 00                 4766 	.byte	0
   14E7 00                 4767 	.byte	0
   14E8 F8                 4768 	.byte	-8
   14E9 05                 4769 	.byte	5
   14EA FF                 4770 	.byte	-1
   14EB 03                 4771 	.byte	3
   14EC 0E                 4772 	.byte	14
   14ED FF                 4773 	.byte	-1
   14EE 08                 4774 	.byte	8
   14EF FA                 4775 	.byte	-6
   14F0 FF                 4776 	.byte	-1
   14F1 FD                 4777 	.byte	-3
   14F2 F3                 4778 	.byte	-13
   14F3 FF                 4779 	.byte	-1
   14F4 F8                 4780 	.byte	-8
   14F5 05                 4781 	.byte	5
   14F6 01                 4782 	.byte	1
                           4783 	.globl _height2RisingFront0
   14F7                    4784 _height2RisingFront0:
   14F7 00                 4785 	.byte	0
   14F8 0C                 4786 	.byte	12
   14F9 01                 4787 	.byte	1
   14FA FF                 4788 	.byte	-1
   14FB 03                 4789 	.byte	3
   14FC 0E                 4790 	.byte	14
   14FD FF                 4791 	.byte	-1
   14FE F4                 4792 	.byte	-12
   14FF FF                 4793 	.byte	-1
   1500 FF                 4794 	.byte	-1
   1501 FD                 4795 	.byte	-3
   1502 F2                 4796 	.byte	-14
   1503 FF                 4797 	.byte	-1
   1504 0C                 4798 	.byte	12
   1505 01                 4799 	.byte	1
   1506 FF                 4800 	.byte	-1
   1507 13                 4801 	.byte	19
   1508 F5                 4802 	.byte	-11
   1509 00                 4803 	.byte	0
   150A F0                 4804 	.byte	-16
   150B 19                 4805 	.byte	25
   150C FF                 4806 	.byte	-1
   150D 13                 4807 	.byte	19
   150E F4                 4808 	.byte	-12
   150F 00                 4809 	.byte	0
   1510 E1                 4810 	.byte	-31
   1511 0B                 4811 	.byte	11
   1512 FF                 4812 	.byte	-1
   1513 13                 4813 	.byte	19
   1514 F4                 4814 	.byte	-12
   1515 00                 4815 	.byte	0
   1516 EA                 4816 	.byte	-22
   1517 FE                 4817 	.byte	-2
   1518 FF                 4818 	.byte	-1
   1519 13                 4819 	.byte	19
   151A F5                 4820 	.byte	-11
   151B 00                 4821 	.byte	0
   151C 0C                 4822 	.byte	12
   151D 01                 4823 	.byte	1
   151E FF                 4824 	.byte	-1
   151F 03                 4825 	.byte	3
   1520 0D                 4826 	.byte	13
   1521 FF                 4827 	.byte	-1
   1522 F4                 4828 	.byte	-12
   1523 FF                 4829 	.byte	-1
   1524 FF                 4830 	.byte	-1
   1525 FD                 4831 	.byte	-3
   1526 F3                 4832 	.byte	-13
   1527 FF                 4833 	.byte	-1
   1528 0C                 4834 	.byte	12
   1529 01                 4835 	.byte	1
   152A 01                 4836 	.byte	1
                           4837 	.globl _height2FallingFront0
   152B                    4838 _height2FallingFront0:
   152B FF                 4839 	.byte	-1
   152C 03                 4840 	.byte	3
   152D 0E                 4841 	.byte	14
   152E FF                 4842 	.byte	-1
   152F 08                 4843 	.byte	8
   1530 FA                 4844 	.byte	-6
   1531 FF                 4845 	.byte	-1
   1532 FD                 4846 	.byte	-3
   1533 F3                 4847 	.byte	-13
   1534 FF                 4848 	.byte	-1
   1535 F8                 4849 	.byte	-8
   1536 05                 4850 	.byte	5
   1537 FF                 4851 	.byte	-1
   1538 1A                 4852 	.byte	26
   1539 00                 4853 	.byte	0
   153A 00                 4854 	.byte	0
   153B E9                 4855 	.byte	-23
   153C 0E                 4856 	.byte	14
   153D FF                 4857 	.byte	-1
   153E 1A                 4858 	.byte	26
   153F 00                 4859 	.byte	0
   1540 00                 4860 	.byte	0
   1541 EE                 4861 	.byte	-18
   1542 FA                 4862 	.byte	-6
   1543 FF                 4863 	.byte	-1
   1544 1A                 4864 	.byte	26
   1545 00                 4865 	.byte	0
   1546 00                 4866 	.byte	0
   1547 E3                 4867 	.byte	-29
   1548 F3                 4868 	.byte	-13
   1549 FF                 4869 	.byte	-1
   154A 1A                 4870 	.byte	26
   154B 00                 4871 	.byte	0
   154C 00                 4872 	.byte	0
   154D F8                 4873 	.byte	-8
   154E 05                 4874 	.byte	5
   154F FF                 4875 	.byte	-1
   1550 03                 4876 	.byte	3
   1551 0E                 4877 	.byte	14
   1552 FF                 4878 	.byte	-1
   1553 08                 4879 	.byte	8
   1554 FA                 4880 	.byte	-6
   1555 FF                 4881 	.byte	-1
   1556 FD                 4882 	.byte	-3
   1557 F3                 4883 	.byte	-13
   1558 FF                 4884 	.byte	-1
   1559 F8                 4885 	.byte	-8
   155A 05                 4886 	.byte	5
   155B 01                 4887 	.byte	1
                           4888 	.globl _height2RisingBack0
   155C                    4889 _height2RisingBack0:
   155C 00                 4890 	.byte	0
   155D 10                 4891 	.byte	16
   155E F5                 4892 	.byte	-11
   155F FF                 4893 	.byte	-1
   1560 03                 4894 	.byte	3
   1561 0D                 4895 	.byte	13
   1562 FF                 4896 	.byte	-1
   1563 0E                 4897 	.byte	14
   1564 FF                 4898 	.byte	-1
   1565 FF                 4899 	.byte	-1
   1566 FD                 4900 	.byte	-3
   1567 F3                 4901 	.byte	-13
   1568 FF                 4902 	.byte	-1
   1569 F2                 4903 	.byte	-14
   156A 01                 4904 	.byte	1
   156B FF                 4905 	.byte	-1
   156C F4                 4906 	.byte	-12
   156D 0B                 4907 	.byte	11
   156E 00                 4908 	.byte	0
   156F 0F                 4909 	.byte	15
   1570 02                 4910 	.byte	2
   1571 FF                 4911 	.byte	-1
   1572 F4                 4912 	.byte	-12
   1573 0C                 4913 	.byte	12
   1574 00                 4914 	.byte	0
   1575 1A                 4915 	.byte	26
   1576 F3                 4916 	.byte	-13
   1577 FF                 4917 	.byte	-1
   1578 F3                 4918 	.byte	-13
   1579 0C                 4919 	.byte	12
   157A 00                 4920 	.byte	0
   157B 0A                 4921 	.byte	10
   157C E7                 4922 	.byte	-25
   157D FF                 4923 	.byte	-1
   157E F3                 4924 	.byte	-13
   157F 0C                 4925 	.byte	12
   1580 00                 4926 	.byte	0
   1581 F3                 4927 	.byte	-13
   1582 00                 4928 	.byte	0
   1583 FF                 4929 	.byte	-1
   1584 03                 4930 	.byte	3
   1585 0E                 4931 	.byte	14
   1586 FF                 4932 	.byte	-1
   1587 0D                 4933 	.byte	13
   1588 FF                 4934 	.byte	-1
   1589 FF                 4935 	.byte	-1
   158A FD                 4936 	.byte	-3
   158B F3                 4937 	.byte	-13
   158C FF                 4938 	.byte	-1
   158D F3                 4939 	.byte	-13
   158E 00                 4940 	.byte	0
   158F 01                 4941 	.byte	1
                           4942 	.globl _depth2RollingLeft0
   1590                    4943 _depth2RollingLeft0:
   1590 FF                 4944 	.byte	-1
   1591 03                 4945 	.byte	3
   1592 0E                 4946 	.byte	14
   1593 FF                 4947 	.byte	-1
   1594 10                 4948 	.byte	16
   1595 F4                 4949 	.byte	-12
   1596 FF                 4950 	.byte	-1
   1597 FD                 4951 	.byte	-3
   1598 F3                 4952 	.byte	-13
   1599 FF                 4953 	.byte	-1
   159A F0                 4954 	.byte	-16
   159B 0B                 4955 	.byte	11
   159C FF                 4956 	.byte	-1
   159D 0D                 4957 	.byte	13
   159E 00                 4958 	.byte	0
   159F 00                 4959 	.byte	0
   15A0 F6                 4960 	.byte	-10
   15A1 0E                 4961 	.byte	14
   15A2 FF                 4962 	.byte	-1
   15A3 0D                 4963 	.byte	13
   15A4 00                 4964 	.byte	0
   15A5 00                 4965 	.byte	0
   15A6 03                 4966 	.byte	3
   15A7 F4                 4967 	.byte	-12
   15A8 FF                 4968 	.byte	-1
   15A9 0D                 4969 	.byte	13
   15AA 00                 4970 	.byte	0
   15AB 00                 4971 	.byte	0
   15AC F0                 4972 	.byte	-16
   15AD F3                 4973 	.byte	-13
   15AE FF                 4974 	.byte	-1
   15AF 0D                 4975 	.byte	13
   15B0 00                 4976 	.byte	0
   15B1 00                 4977 	.byte	0
   15B2 F0                 4978 	.byte	-16
   15B3 0B                 4979 	.byte	11
   15B4 FF                 4980 	.byte	-1
   15B5 03                 4981 	.byte	3
   15B6 0E                 4982 	.byte	14
   15B7 FF                 4983 	.byte	-1
   15B8 10                 4984 	.byte	16
   15B9 F4                 4985 	.byte	-12
   15BA FF                 4986 	.byte	-1
   15BB FD                 4987 	.byte	-3
   15BC F3                 4988 	.byte	-13
   15BD FF                 4989 	.byte	-1
   15BE F0                 4990 	.byte	-16
   15BF 0B                 4991 	.byte	11
   15C0 01                 4992 	.byte	1
                           4993 	.globl _depth2RollingRight0
   15C1                    4994 _depth2RollingRight0:
   15C1 FF                 4995 	.byte	-1
   15C2 03                 4996 	.byte	3
   15C3 0E                 4997 	.byte	14
   15C4 FF                 4998 	.byte	-1
   15C5 10                 4999 	.byte	16
   15C6 F4                 5000 	.byte	-12
   15C7 FF                 5001 	.byte	-1
   15C8 FD                 5002 	.byte	-3
   15C9 F3                 5003 	.byte	-13
   15CA FF                 5004 	.byte	-1
   15CB F0                 5005 	.byte	-16
   15CC 0B                 5006 	.byte	11
   15CD FF                 5007 	.byte	-1
   15CE 0D                 5008 	.byte	13
   15CF 00                 5009 	.byte	0
   15D0 00                 5010 	.byte	0
   15D1 F6                 5011 	.byte	-10
   15D2 0E                 5012 	.byte	14
   15D3 FF                 5013 	.byte	-1
   15D4 0D                 5014 	.byte	13
   15D5 00                 5015 	.byte	0
   15D6 00                 5016 	.byte	0
   15D7 03                 5017 	.byte	3
   15D8 F4                 5018 	.byte	-12
   15D9 FF                 5019 	.byte	-1
   15DA 0D                 5020 	.byte	13
   15DB 00                 5021 	.byte	0
   15DC 00                 5022 	.byte	0
   15DD F0                 5023 	.byte	-16
   15DE F3                 5024 	.byte	-13
   15DF FF                 5025 	.byte	-1
   15E0 0D                 5026 	.byte	13
   15E1 00                 5027 	.byte	0
   15E2 00                 5028 	.byte	0
   15E3 F0                 5029 	.byte	-16
   15E4 0B                 5030 	.byte	11
   15E5 FF                 5031 	.byte	-1
   15E6 03                 5032 	.byte	3
   15E7 0E                 5033 	.byte	14
   15E8 FF                 5034 	.byte	-1
   15E9 10                 5035 	.byte	16
   15EA F4                 5036 	.byte	-12
   15EB FF                 5037 	.byte	-1
   15EC FD                 5038 	.byte	-3
   15ED F3                 5039 	.byte	-13
   15EE FF                 5040 	.byte	-1
   15EF F0                 5041 	.byte	-16
   15F0 0B                 5042 	.byte	11
   15F1 01                 5043 	.byte	1
                           5044 	.globl _width2RollingFront0
   15F2                    5045 _width2RollingFront0:
   15F2 FF                 5046 	.byte	-1
   15F3 06                 5047 	.byte	6
   15F4 1C                 5048 	.byte	28
   15F5 FF                 5049 	.byte	-1
   15F6 08                 5050 	.byte	8
   15F7 FA                 5051 	.byte	-6
   15F8 FF                 5052 	.byte	-1
   15F9 FA                 5053 	.byte	-6
   15FA E5                 5054 	.byte	-27
   15FB FF                 5055 	.byte	-1
   15FC F8                 5056 	.byte	-8
   15FD 05                 5057 	.byte	5
   15FE FF                 5058 	.byte	-1
   15FF 0D                 5059 	.byte	13
   1600 00                 5060 	.byte	0
   1601 00                 5061 	.byte	0
   1602 F9                 5062 	.byte	-7
   1603 1C                 5063 	.byte	28
   1604 FF                 5064 	.byte	-1
   1605 0D                 5065 	.byte	13
   1606 00                 5066 	.byte	0
   1607 00                 5067 	.byte	0
   1608 FB                 5068 	.byte	-5
   1609 FA                 5069 	.byte	-6
   160A FF                 5070 	.byte	-1
   160B 0D                 5071 	.byte	13
   160C 00                 5072 	.byte	0
   160D 00                 5073 	.byte	0
   160E ED                 5074 	.byte	-19
   160F E5                 5075 	.byte	-27
   1610 FF                 5076 	.byte	-1
   1611 0D                 5077 	.byte	13
   1612 00                 5078 	.byte	0
   1613 00                 5079 	.byte	0
   1614 F8                 5080 	.byte	-8
   1615 05                 5081 	.byte	5
   1616 FF                 5082 	.byte	-1
   1617 06                 5083 	.byte	6
   1618 1C                 5084 	.byte	28
   1619 FF                 5085 	.byte	-1
   161A 08                 5086 	.byte	8
   161B FA                 5087 	.byte	-6
   161C FF                 5088 	.byte	-1
   161D FA                 5089 	.byte	-6
   161E E5                 5090 	.byte	-27
   161F FF                 5091 	.byte	-1
   1620 F8                 5092 	.byte	-8
   1621 05                 5093 	.byte	5
   1622 01                 5094 	.byte	1
                           5095 	.globl _width2RollingBack0
   1623                    5096 _width2RollingBack0:
   1623 FF                 5097 	.byte	-1
   1624 06                 5098 	.byte	6
   1625 1C                 5099 	.byte	28
   1626 FF                 5100 	.byte	-1
   1627 08                 5101 	.byte	8
   1628 FA                 5102 	.byte	-6
   1629 FF                 5103 	.byte	-1
   162A FA                 5104 	.byte	-6
   162B E5                 5105 	.byte	-27
   162C FF                 5106 	.byte	-1
   162D F8                 5107 	.byte	-8
   162E 05                 5108 	.byte	5
   162F FF                 5109 	.byte	-1
   1630 0D                 5110 	.byte	13
   1631 00                 5111 	.byte	0
   1632 00                 5112 	.byte	0
   1633 F9                 5113 	.byte	-7
   1634 1C                 5114 	.byte	28
   1635 FF                 5115 	.byte	-1
   1636 0D                 5116 	.byte	13
   1637 00                 5117 	.byte	0
   1638 00                 5118 	.byte	0
   1639 FB                 5119 	.byte	-5
   163A FA                 5120 	.byte	-6
   163B FF                 5121 	.byte	-1
   163C 0D                 5122 	.byte	13
   163D 00                 5123 	.byte	0
   163E 00                 5124 	.byte	0
   163F ED                 5125 	.byte	-19
   1640 E5                 5126 	.byte	-27
   1641 FF                 5127 	.byte	-1
   1642 0D                 5128 	.byte	13
   1643 00                 5129 	.byte	0
   1644 00                 5130 	.byte	0
   1645 F8                 5131 	.byte	-8
   1646 05                 5132 	.byte	5
   1647 FF                 5133 	.byte	-1
   1648 06                 5134 	.byte	6
   1649 1C                 5135 	.byte	28
   164A FF                 5136 	.byte	-1
   164B 08                 5137 	.byte	8
   164C FA                 5138 	.byte	-6
   164D FF                 5139 	.byte	-1
   164E FA                 5140 	.byte	-6
   164F E5                 5141 	.byte	-27
   1650 FF                 5142 	.byte	-1
   1651 F8                 5143 	.byte	-8
   1652 05                 5144 	.byte	5
   1653 01                 5145 	.byte	1
                           5146 	.globl _height2FallingLeft1
   1654                    5147 _height2FallingLeft1:
   1654 FF                 5148 	.byte	-1
   1655 05                 5149 	.byte	5
   1656 0E                 5150 	.byte	14
   1657 FF                 5151 	.byte	-1
   1658 08                 5152 	.byte	8
   1659 FA                 5153 	.byte	-6
   165A FF                 5154 	.byte	-1
   165B FB                 5155 	.byte	-5
   165C F3                 5156 	.byte	-13
   165D FF                 5157 	.byte	-1
   165E F8                 5158 	.byte	-8
   165F 05                 5159 	.byte	5
   1660 FF                 5160 	.byte	-1
   1661 19                 5161 	.byte	25
   1662 FD                 5162 	.byte	-3
   1663 00                 5163 	.byte	0
   1664 EC                 5164 	.byte	-20
   1665 11                 5165 	.byte	17
   1666 FF                 5166 	.byte	-1
   1667 19                 5167 	.byte	25
   1668 FC                 5168 	.byte	-4
   1669 00                 5169 	.byte	0
   166A EF                 5170 	.byte	-17
   166B FE                 5171 	.byte	-2
   166C FF                 5172 	.byte	-1
   166D 19                 5173 	.byte	25
   166E FC                 5174 	.byte	-4
   166F 00                 5175 	.byte	0
   1670 E2                 5176 	.byte	-30
   1671 F7                 5177 	.byte	-9
   1672 FF                 5178 	.byte	-1
   1673 19                 5179 	.byte	25
   1674 FC                 5180 	.byte	-4
   1675 00                 5181 	.byte	0
   1676 F8                 5182 	.byte	-8
   1677 06                 5183 	.byte	6
   1678 FF                 5184 	.byte	-1
   1679 05                 5185 	.byte	5
   167A 0D                 5186 	.byte	13
   167B FF                 5187 	.byte	-1
   167C 08                 5188 	.byte	8
   167D FA                 5189 	.byte	-6
   167E FF                 5190 	.byte	-1
   167F FB                 5191 	.byte	-5
   1680 F3                 5192 	.byte	-13
   1681 FF                 5193 	.byte	-1
   1682 F8                 5194 	.byte	-8
   1683 06                 5195 	.byte	6
   1684 01                 5196 	.byte	1
                           5197 	.globl _height2RisingRight1
   1685                    5198 _height2RisingRight1:
   1685 00                 5199 	.byte	0
   1686 06                 5200 	.byte	6
   1687 1C                 5201 	.byte	28
   1688 FF                 5202 	.byte	-1
   1689 0D                 5203 	.byte	13
   168A 04                 5204 	.byte	4
   168B FF                 5205 	.byte	-1
   168C 08                 5206 	.byte	8
   168D FA                 5207 	.byte	-6
   168E FF                 5208 	.byte	-1
   168F F3                 5209 	.byte	-13
   1690 FC                 5210 	.byte	-4
   1691 FF                 5211 	.byte	-1
   1692 F8                 5212 	.byte	-8
   1693 06                 5213 	.byte	6
   1694 FF                 5214 	.byte	-1
   1695 01                 5215 	.byte	1
   1696 E5                 5216 	.byte	-27
   1697 00                 5217 	.byte	0
   1698 0C                 5218 	.byte	12
   1699 1F                 5219 	.byte	31
   169A FF                 5220 	.byte	-1
   169B 01                 5221 	.byte	1
   169C E5                 5222 	.byte	-27
   169D 00                 5223 	.byte	0
   169E 07                 5224 	.byte	7
   169F 15                 5225 	.byte	21
   16A0 FF                 5226 	.byte	-1
   16A1 01                 5227 	.byte	1
   16A2 E6                 5228 	.byte	-26
   16A3 00                 5229 	.byte	0
   16A4 F2                 5230 	.byte	-14
   16A5 16                 5231 	.byte	22
   16A6 FF                 5232 	.byte	-1
   16A7 01                 5233 	.byte	1
   16A8 E6                 5234 	.byte	-26
   16A9 00                 5235 	.byte	0
   16AA F8                 5236 	.byte	-8
   16AB 05                 5237 	.byte	5
   16AC FF                 5238 	.byte	-1
   16AD 0D                 5239 	.byte	13
   16AE 04                 5240 	.byte	4
   16AF FF                 5241 	.byte	-1
   16B0 08                 5242 	.byte	8
   16B1 FB                 5243 	.byte	-5
   16B2 FF                 5244 	.byte	-1
   16B3 F3                 5245 	.byte	-13
   16B4 FC                 5246 	.byte	-4
   16B5 FF                 5247 	.byte	-1
   16B6 F8                 5248 	.byte	-8
   16B7 05                 5249 	.byte	5
   16B8 01                 5250 	.byte	1
                           5251 	.globl _height2FallingRight1
   16B9                    5252 _height2FallingRight1:
   16B9 00                 5253 	.byte	0
   16BA 02                 5254 	.byte	2
   16BB 00                 5255 	.byte	0
   16BC FF                 5256 	.byte	-1
   16BD 01                 5257 	.byte	1
   16BE 0E                 5258 	.byte	14
   16BF FF                 5259 	.byte	-1
   16C0 08                 5260 	.byte	8
   16C1 FA                 5261 	.byte	-6
   16C2 FF                 5262 	.byte	-1
   16C3 FF                 5263 	.byte	-1
   16C4 F3                 5264 	.byte	-13
   16C5 FF                 5265 	.byte	-1
   16C6 F8                 5266 	.byte	-8
   16C7 05                 5267 	.byte	5
   16C8 FF                 5268 	.byte	-1
   16C9 1A                 5269 	.byte	26
   16CA 04                 5270 	.byte	4
   16CB 00                 5271 	.byte	0
   16CC E7                 5272 	.byte	-25
   16CD 0A                 5273 	.byte	10
   16CE FF                 5274 	.byte	-1
   16CF 1B                 5275 	.byte	27
   16D0 04                 5276 	.byte	4
   16D1 00                 5277 	.byte	0
   16D2 ED                 5278 	.byte	-19
   16D3 F6                 5279 	.byte	-10
   16D4 FF                 5280 	.byte	-1
   16D5 1B                 5281 	.byte	27
   16D6 04                 5282 	.byte	4
   16D7 00                 5283 	.byte	0
   16D8 E4                 5284 	.byte	-28
   16D9 EF                 5285 	.byte	-17
   16DA FF                 5286 	.byte	-1
   16DB 1A                 5287 	.byte	26
   16DC 04                 5288 	.byte	4
   16DD 00                 5289 	.byte	0
   16DE F8                 5290 	.byte	-8
   16DF 05                 5291 	.byte	5
   16E0 FF                 5292 	.byte	-1
   16E1 02                 5293 	.byte	2
   16E2 0E                 5294 	.byte	14
   16E3 FF                 5295 	.byte	-1
   16E4 08                 5296 	.byte	8
   16E5 FA                 5297 	.byte	-6
   16E6 FF                 5298 	.byte	-1
   16E7 FE                 5299 	.byte	-2
   16E8 F3                 5300 	.byte	-13
   16E9 FF                 5301 	.byte	-1
   16EA F8                 5302 	.byte	-8
   16EB 05                 5303 	.byte	5
   16EC 01                 5304 	.byte	1
                           5305 	.globl _height2RisingLeft1
   16ED                    5306 _height2RisingLeft1:
   16ED 00                 5307 	.byte	0
   16EE 0C                 5308 	.byte	12
   16EF FD                 5309 	.byte	-3
   16F0 FF                 5310 	.byte	-1
   16F1 F4                 5311 	.byte	-12
   16F2 03                 5312 	.byte	3
   16F3 FF                 5313 	.byte	-1
   16F4 08                 5314 	.byte	8
   16F5 FB                 5315 	.byte	-5
   16F6 FF                 5316 	.byte	-1
   16F7 0C                 5317 	.byte	12
   16F8 FC                 5318 	.byte	-4
   16F9 FF                 5319 	.byte	-1
   16FA F8                 5320 	.byte	-8
   16FB 06                 5321 	.byte	6
   16FC FF                 5322 	.byte	-1
   16FD 0C                 5323 	.byte	12
   16FE 1A                 5324 	.byte	26
   16FF 00                 5325 	.byte	0
   1700 E8                 5326 	.byte	-24
   1701 E9                 5327 	.byte	-23
   1702 FF                 5328 	.byte	-1
   1703 0D                 5329 	.byte	13
   1704 1B                 5330 	.byte	27
   1705 00                 5331 	.byte	0
   1706 FB                 5332 	.byte	-5
   1707 E0                 5333 	.byte	-32
   1708 FF                 5334 	.byte	-1
   1709 0D                 5335 	.byte	13
   170A 1A                 5336 	.byte	26
   170B 00                 5337 	.byte	0
   170C FF                 5338 	.byte	-1
   170D E2                 5339 	.byte	-30
   170E FF                 5340 	.byte	-1
   170F 0C                 5341 	.byte	12
   1710 1A                 5342 	.byte	26
   1711 00                 5343 	.byte	0
   1712 F8                 5344 	.byte	-8
   1713 06                 5345 	.byte	6
   1714 FF                 5346 	.byte	-1
   1715 F5                 5347 	.byte	-11
   1716 04                 5348 	.byte	4
   1717 FF                 5349 	.byte	-1
   1718 08                 5350 	.byte	8
   1719 FA                 5351 	.byte	-6
   171A FF                 5352 	.byte	-1
   171B 0B                 5353 	.byte	11
   171C FC                 5354 	.byte	-4
   171D FF                 5355 	.byte	-1
   171E F8                 5356 	.byte	-8
   171F 06                 5357 	.byte	6
   1720 01                 5358 	.byte	1
                           5359 	.globl _height2FallingBack1
   1721                    5360 _height2FallingBack1:
   1721 00                 5361 	.byte	0
   1722 02                 5362 	.byte	2
   1723 00                 5363 	.byte	0
   1724 FF                 5364 	.byte	-1
   1725 03                 5365 	.byte	3
   1726 0E                 5366 	.byte	14
   1727 FF                 5367 	.byte	-1
   1728 06                 5368 	.byte	6
   1729 FA                 5369 	.byte	-6
   172A FF                 5370 	.byte	-1
   172B FD                 5371 	.byte	-3
   172C F3                 5372 	.byte	-13
   172D FF                 5373 	.byte	-1
   172E FA                 5374 	.byte	-6
   172F 05                 5375 	.byte	5
   1730 FF                 5376 	.byte	-1
   1731 1C                 5377 	.byte	28
   1732 FF                 5378 	.byte	-1
   1733 00                 5379 	.byte	0
   1734 E7                 5380 	.byte	-25
   1735 0F                 5381 	.byte	15
   1736 FF                 5382 	.byte	-1
   1737 1C                 5383 	.byte	28
   1738 FE                 5384 	.byte	-2
   1739 00                 5385 	.byte	0
   173A EA                 5386 	.byte	-22
   173B FC                 5387 	.byte	-4
   173C FF                 5388 	.byte	-1
   173D 1C                 5389 	.byte	28
   173E FE                 5390 	.byte	-2
   173F 00                 5391 	.byte	0
   1740 E1                 5392 	.byte	-31
   1741 F5                 5393 	.byte	-11
   1742 FF                 5394 	.byte	-1
   1743 1C                 5395 	.byte	28
   1744 FE                 5396 	.byte	-2
   1745 00                 5397 	.byte	0
   1746 FA                 5398 	.byte	-6
   1747 06                 5399 	.byte	6
   1748 FF                 5400 	.byte	-1
   1749 03                 5401 	.byte	3
   174A 0D                 5402 	.byte	13
   174B FF                 5403 	.byte	-1
   174C 06                 5404 	.byte	6
   174D FA                 5405 	.byte	-6
   174E FF                 5406 	.byte	-1
   174F FD                 5407 	.byte	-3
   1750 F3                 5408 	.byte	-13
   1751 FF                 5409 	.byte	-1
   1752 FA                 5410 	.byte	-6
   1753 06                 5411 	.byte	6
   1754 01                 5412 	.byte	1
                           5413 	.globl _height2RisingFront1
   1755                    5414 _height2RisingFront1:
   1755 00                 5415 	.byte	0
   1756 0A                 5416 	.byte	10
   1757 02                 5417 	.byte	2
   1758 FF                 5418 	.byte	-1
   1759 03                 5419 	.byte	3
   175A 0E                 5420 	.byte	14
   175B FF                 5421 	.byte	-1
   175C F6                 5422 	.byte	-10
   175D FE                 5423 	.byte	-2
   175E FF                 5424 	.byte	-1
   175F FD                 5425 	.byte	-3
   1760 F2                 5426 	.byte	-14
   1761 FF                 5427 	.byte	-1
   1762 0A                 5428 	.byte	10
   1763 02                 5429 	.byte	2
   1764 FF                 5430 	.byte	-1
   1765 17                 5431 	.byte	23
   1766 F5                 5432 	.byte	-11
   1767 00                 5433 	.byte	0
   1768 EC                 5434 	.byte	-20
   1769 19                 5435 	.byte	25
   176A FF                 5436 	.byte	-1
   176B 17                 5437 	.byte	23
   176C F4                 5438 	.byte	-12
   176D 00                 5439 	.byte	0
   176E DF                 5440 	.byte	-33
   176F 0A                 5441 	.byte	10
   1770 FF                 5442 	.byte	-1
   1771 16                 5443 	.byte	22
   1772 F4                 5444 	.byte	-12
   1773 00                 5445 	.byte	0
   1774 E7                 5446 	.byte	-25
   1775 FE                 5447 	.byte	-2
   1776 FF                 5448 	.byte	-1
   1777 16                 5449 	.byte	22
   1778 F5                 5450 	.byte	-11
   1779 00                 5451 	.byte	0
   177A 0B                 5452 	.byte	11
   177B 02                 5453 	.byte	2
   177C FF                 5454 	.byte	-1
   177D 03                 5455 	.byte	3
   177E 0D                 5456 	.byte	13
   177F FF                 5457 	.byte	-1
   1780 F5                 5458 	.byte	-11
   1781 FE                 5459 	.byte	-2
   1782 FF                 5460 	.byte	-1
   1783 FD                 5461 	.byte	-3
   1784 F3                 5462 	.byte	-13
   1785 FF                 5463 	.byte	-1
   1786 0B                 5464 	.byte	11
   1787 02                 5465 	.byte	2
   1788 01                 5466 	.byte	1
                           5467 	.globl _height2FallingFront1
   1789                    5468 _height2FallingFront1:
   1789 FF                 5469 	.byte	-1
   178A 03                 5470 	.byte	3
   178B 0E                 5471 	.byte	14
   178C FF                 5472 	.byte	-1
   178D 0A                 5473 	.byte	10
   178E FA                 5474 	.byte	-6
   178F FF                 5475 	.byte	-1
   1790 FD                 5476 	.byte	-3
   1791 F3                 5477 	.byte	-13
   1792 FF                 5478 	.byte	-1
   1793 F6                 5479 	.byte	-10
   1794 05                 5480 	.byte	5
   1795 FF                 5481 	.byte	-1
   1796 18                 5482 	.byte	24
   1797 02                 5483 	.byte	2
   1798 00                 5484 	.byte	0
   1799 EB                 5485 	.byte	-21
   179A 0C                 5486 	.byte	12
   179B FF                 5487 	.byte	-1
   179C 18                 5488 	.byte	24
   179D 02                 5489 	.byte	2
   179E 00                 5490 	.byte	0
   179F F2                 5491 	.byte	-14
   17A0 F8                 5492 	.byte	-8
   17A1 FF                 5493 	.byte	-1
   17A2 17                 5494 	.byte	23
   17A3 02                 5495 	.byte	2
   17A4 00                 5496 	.byte	0
   17A5 E6                 5497 	.byte	-26
   17A6 F1                 5498 	.byte	-15
   17A7 FF                 5499 	.byte	-1
   17A8 17                 5500 	.byte	23
   17A9 02                 5501 	.byte	2
   17AA 00                 5502 	.byte	0
   17AB F7                 5503 	.byte	-9
   17AC 05                 5504 	.byte	5
   17AD FF                 5505 	.byte	-1
   17AE 03                 5506 	.byte	3
   17AF 0E                 5507 	.byte	14
   17B0 FF                 5508 	.byte	-1
   17B1 09                 5509 	.byte	9
   17B2 FA                 5510 	.byte	-6
   17B3 FF                 5511 	.byte	-1
   17B4 FD                 5512 	.byte	-3
   17B5 F3                 5513 	.byte	-13
   17B6 FF                 5514 	.byte	-1
   17B7 F7                 5515 	.byte	-9
   17B8 05                 5516 	.byte	5
   17B9 01                 5517 	.byte	1
                           5518 	.globl _height2RisingBack1
   17BA                    5519 _height2RisingBack1:
   17BA 00                 5520 	.byte	0
   17BB 10                 5521 	.byte	16
   17BC F5                 5522 	.byte	-11
   17BD FF                 5523 	.byte	-1
   17BE 03                 5524 	.byte	3
   17BF 0D                 5525 	.byte	13
   17C0 FF                 5526 	.byte	-1
   17C1 0F                 5527 	.byte	15
   17C2 FE                 5528 	.byte	-2
   17C3 FF                 5529 	.byte	-1
   17C4 FD                 5530 	.byte	-3
   17C5 F3                 5531 	.byte	-13
   17C6 FF                 5532 	.byte	-1
   17C7 F1                 5533 	.byte	-15
   17C8 02                 5534 	.byte	2
   17C9 FF                 5535 	.byte	-1
   17CA F7                 5536 	.byte	-9
   17CB 0B                 5537 	.byte	11
   17CC 00                 5538 	.byte	0
   17CD 0C                 5539 	.byte	12
   17CE 02                 5540 	.byte	2
   17CF FF                 5541 	.byte	-1
   17D0 F7                 5542 	.byte	-9
   17D1 0C                 5543 	.byte	12
   17D2 00                 5544 	.byte	0
   17D3 18                 5545 	.byte	24
   17D4 F2                 5546 	.byte	-14
   17D5 FF                 5547 	.byte	-1
   17D6 F7                 5548 	.byte	-9
   17D7 0C                 5549 	.byte	12
   17D8 00                 5550 	.byte	0
   17D9 06                 5551 	.byte	6
   17DA E7                 5552 	.byte	-25
   17DB FF                 5553 	.byte	-1
   17DC F7                 5554 	.byte	-9
   17DD 0C                 5555 	.byte	12
   17DE 00                 5556 	.byte	0
   17DF F1                 5557 	.byte	-15
   17E0 01                 5558 	.byte	1
   17E1 FF                 5559 	.byte	-1
   17E2 03                 5560 	.byte	3
   17E3 0E                 5561 	.byte	14
   17E4 FF                 5562 	.byte	-1
   17E5 0F                 5563 	.byte	15
   17E6 FE                 5564 	.byte	-2
   17E7 FF                 5565 	.byte	-1
   17E8 FD                 5566 	.byte	-3
   17E9 F3                 5567 	.byte	-13
   17EA FF                 5568 	.byte	-1
   17EB F1                 5569 	.byte	-15
   17EC 01                 5570 	.byte	1
   17ED 01                 5571 	.byte	1
                           5572 	.globl _depth2RollingLeft1
   17EE                    5573 _depth2RollingLeft1:
   17EE FF                 5574 	.byte	-1
   17EF 05                 5575 	.byte	5
   17F0 0E                 5576 	.byte	14
   17F1 FF                 5577 	.byte	-1
   17F2 10                 5578 	.byte	16
   17F3 F4                 5579 	.byte	-12
   17F4 FF                 5580 	.byte	-1
   17F5 FB                 5581 	.byte	-5
   17F6 F3                 5582 	.byte	-13
   17F7 FF                 5583 	.byte	-1
   17F8 F0                 5584 	.byte	-16
   17F9 0B                 5585 	.byte	11
   17FA FF                 5586 	.byte	-1
   17FB 0C                 5587 	.byte	12
   17FC FF                 5588 	.byte	-1
   17FD 00                 5589 	.byte	0
   17FE F9                 5590 	.byte	-7
   17FF 0F                 5591 	.byte	15
   1800 FF                 5592 	.byte	-1
   1801 0C                 5593 	.byte	12
   1802 FE                 5594 	.byte	-2
   1803 00                 5595 	.byte	0
   1804 04                 5596 	.byte	4
   1805 F6                 5597 	.byte	-10
   1806 FF                 5598 	.byte	-1
   1807 0C                 5599 	.byte	12
   1808 FE                 5600 	.byte	-2
   1809 00                 5601 	.byte	0
   180A EF                 5602 	.byte	-17
   180B F5                 5603 	.byte	-11
   180C FF                 5604 	.byte	-1
   180D 0C                 5605 	.byte	12
   180E FE                 5606 	.byte	-2
   180F 00                 5607 	.byte	0
   1810 F0                 5608 	.byte	-16
   1811 0C                 5609 	.byte	12
   1812 FF                 5610 	.byte	-1
   1813 05                 5611 	.byte	5
   1814 0D                 5612 	.byte	13
   1815 FF                 5613 	.byte	-1
   1816 10                 5614 	.byte	16
   1817 F4                 5615 	.byte	-12
   1818 FF                 5616 	.byte	-1
   1819 FB                 5617 	.byte	-5
   181A F3                 5618 	.byte	-13
   181B FF                 5619 	.byte	-1
   181C F0                 5620 	.byte	-16
   181D 0C                 5621 	.byte	12
   181E 01                 5622 	.byte	1
                           5623 	.globl _depth2RollingRight1
   181F                    5624 _depth2RollingRight1:
   181F 00                 5625 	.byte	0
   1820 02                 5626 	.byte	2
   1821 00                 5627 	.byte	0
   1822 FF                 5628 	.byte	-1
   1823 01                 5629 	.byte	1
   1824 0E                 5630 	.byte	14
   1825 FF                 5631 	.byte	-1
   1826 10                 5632 	.byte	16
   1827 F4                 5633 	.byte	-12
   1828 FF                 5634 	.byte	-1
   1829 FF                 5635 	.byte	-1
   182A F3                 5636 	.byte	-13
   182B FF                 5637 	.byte	-1
   182C F0                 5638 	.byte	-16
   182D 0B                 5639 	.byte	11
   182E FF                 5640 	.byte	-1
   182F 0D                 5641 	.byte	13
   1830 02                 5642 	.byte	2
   1831 00                 5643 	.byte	0
   1832 F4                 5644 	.byte	-12
   1833 0C                 5645 	.byte	12
   1834 FF                 5646 	.byte	-1
   1835 0D                 5647 	.byte	13
   1836 02                 5648 	.byte	2
   1837 00                 5649 	.byte	0
   1838 03                 5650 	.byte	3
   1839 F2                 5651 	.byte	-14
   183A FF                 5652 	.byte	-1
   183B 0D                 5653 	.byte	13
   183C 02                 5654 	.byte	2
   183D 00                 5655 	.byte	0
   183E F2                 5656 	.byte	-14
   183F F1                 5657 	.byte	-15
   1840 FF                 5658 	.byte	-1
   1841 0D                 5659 	.byte	13
   1842 02                 5660 	.byte	2
   1843 00                 5661 	.byte	0
   1844 F0                 5662 	.byte	-16
   1845 0B                 5663 	.byte	11
   1846 FF                 5664 	.byte	-1
   1847 01                 5665 	.byte	1
   1848 0E                 5666 	.byte	14
   1849 FF                 5667 	.byte	-1
   184A 10                 5668 	.byte	16
   184B F4                 5669 	.byte	-12
   184C FF                 5670 	.byte	-1
   184D FF                 5671 	.byte	-1
   184E F3                 5672 	.byte	-13
   184F FF                 5673 	.byte	-1
   1850 F0                 5674 	.byte	-16
   1851 0B                 5675 	.byte	11
   1852 01                 5676 	.byte	1
                           5677 	.globl _width2RollingFront1
   1853                    5678 _width2RollingFront1:
   1853 FF                 5679 	.byte	-1
   1854 06                 5680 	.byte	6
   1855 1C                 5681 	.byte	28
   1856 FF                 5682 	.byte	-1
   1857 0A                 5683 	.byte	10
   1858 FA                 5684 	.byte	-6
   1859 FF                 5685 	.byte	-1
   185A FA                 5686 	.byte	-6
   185B E5                 5687 	.byte	-27
   185C FF                 5688 	.byte	-1
   185D F6                 5689 	.byte	-10
   185E 05                 5690 	.byte	5
   185F FF                 5691 	.byte	-1
   1860 0C                 5692 	.byte	12
   1861 01                 5693 	.byte	1
   1862 00                 5694 	.byte	0
   1863 FA                 5695 	.byte	-6
   1864 1B                 5696 	.byte	27
   1865 FF                 5697 	.byte	-1
   1866 0C                 5698 	.byte	12
   1867 01                 5699 	.byte	1
   1868 00                 5700 	.byte	0
   1869 FE                 5701 	.byte	-2
   186A F9                 5702 	.byte	-7
   186B FF                 5703 	.byte	-1
   186C 0B                 5704 	.byte	11
   186D 01                 5705 	.byte	1
   186E 00                 5706 	.byte	0
   186F EF                 5707 	.byte	-17
   1870 E4                 5708 	.byte	-28
   1871 FF                 5709 	.byte	-1
   1872 0B                 5710 	.byte	11
   1873 01                 5711 	.byte	1
   1874 00                 5712 	.byte	0
   1875 F7                 5713 	.byte	-9
   1876 05                 5714 	.byte	5
   1877 FF                 5715 	.byte	-1
   1878 06                 5716 	.byte	6
   1879 1C                 5717 	.byte	28
   187A FF                 5718 	.byte	-1
   187B 09                 5719 	.byte	9
   187C FA                 5720 	.byte	-6
   187D FF                 5721 	.byte	-1
   187E FA                 5722 	.byte	-6
   187F E5                 5723 	.byte	-27
   1880 FF                 5724 	.byte	-1
   1881 F7                 5725 	.byte	-9
   1882 05                 5726 	.byte	5
   1883 01                 5727 	.byte	1
                           5728 	.globl _width2RollingBack1
   1884                    5729 _width2RollingBack1:
   1884 00                 5730 	.byte	0
   1885 02                 5731 	.byte	2
   1886 00                 5732 	.byte	0
   1887 FF                 5733 	.byte	-1
   1888 06                 5734 	.byte	6
   1889 1C                 5735 	.byte	28
   188A FF                 5736 	.byte	-1
   188B 06                 5737 	.byte	6
   188C FA                 5738 	.byte	-6
   188D FF                 5739 	.byte	-1
   188E FA                 5740 	.byte	-6
   188F E5                 5741 	.byte	-27
   1890 FF                 5742 	.byte	-1
   1891 FA                 5743 	.byte	-6
   1892 05                 5744 	.byte	5
   1893 FF                 5745 	.byte	-1
   1894 0E                 5746 	.byte	14
   1895 00                 5747 	.byte	0
   1896 00                 5748 	.byte	0
   1897 F8                 5749 	.byte	-8
   1898 1C                 5750 	.byte	28
   1899 FF                 5751 	.byte	-1
   189A 0E                 5752 	.byte	14
   189B FF                 5753 	.byte	-1
   189C 00                 5754 	.byte	0
   189D F8                 5755 	.byte	-8
   189E FB                 5756 	.byte	-5
   189F FF                 5757 	.byte	-1
   18A0 0E                 5758 	.byte	14
   18A1 FF                 5759 	.byte	-1
   18A2 00                 5760 	.byte	0
   18A3 EC                 5761 	.byte	-20
   18A4 E6                 5762 	.byte	-26
   18A5 FF                 5763 	.byte	-1
   18A6 0E                 5764 	.byte	14
   18A7 FF                 5765 	.byte	-1
   18A8 00                 5766 	.byte	0
   18A9 FA                 5767 	.byte	-6
   18AA 06                 5768 	.byte	6
   18AB FF                 5769 	.byte	-1
   18AC 06                 5770 	.byte	6
   18AD 1B                 5771 	.byte	27
   18AE FF                 5772 	.byte	-1
   18AF 06                 5773 	.byte	6
   18B0 FA                 5774 	.byte	-6
   18B1 FF                 5775 	.byte	-1
   18B2 FA                 5776 	.byte	-6
   18B3 E5                 5777 	.byte	-27
   18B4 FF                 5778 	.byte	-1
   18B5 FA                 5779 	.byte	-6
   18B6 06                 5780 	.byte	6
   18B7 01                 5781 	.byte	1
                           5782 	.globl _height2FallingLeft2
   18B8                    5783 _height2FallingLeft2:
   18B8 FF                 5784 	.byte	-1
   18B9 06                 5785 	.byte	6
   18BA 0E                 5786 	.byte	14
   18BB FF                 5787 	.byte	-1
   18BC 08                 5788 	.byte	8
   18BD FA                 5789 	.byte	-6
   18BE FF                 5790 	.byte	-1
   18BF FA                 5791 	.byte	-6
   18C0 F3                 5792 	.byte	-13
   18C1 FF                 5793 	.byte	-1
   18C2 F8                 5794 	.byte	-8
   18C3 05                 5795 	.byte	5
   18C4 FF                 5796 	.byte	-1
   18C5 18                 5797 	.byte	24
   18C6 FA                 5798 	.byte	-6
   18C7 00                 5799 	.byte	0
   18C8 EE                 5800 	.byte	-18
   18C9 14                 5801 	.byte	20
   18CA FF                 5802 	.byte	-1
   18CB 18                 5803 	.byte	24
   18CC F8                 5804 	.byte	-8
   18CD 00                 5805 	.byte	0
   18CE F0                 5806 	.byte	-16
   18CF 02                 5807 	.byte	2
   18D0 FF                 5808 	.byte	-1
   18D1 18                 5809 	.byte	24
   18D2 F8                 5810 	.byte	-8
   18D3 00                 5811 	.byte	0
   18D4 E2                 5812 	.byte	-30
   18D5 FB                 5813 	.byte	-5
   18D6 FF                 5814 	.byte	-1
   18D7 18                 5815 	.byte	24
   18D8 F9                 5816 	.byte	-7
   18D9 00                 5817 	.byte	0
   18DA F8                 5818 	.byte	-8
   18DB 06                 5819 	.byte	6
   18DC FF                 5820 	.byte	-1
   18DD 06                 5821 	.byte	6
   18DE 0C                 5822 	.byte	12
   18DF FF                 5823 	.byte	-1
   18E0 08                 5824 	.byte	8
   18E1 FA                 5825 	.byte	-6
   18E2 FF                 5826 	.byte	-1
   18E3 FA                 5827 	.byte	-6
   18E4 F4                 5828 	.byte	-12
   18E5 FF                 5829 	.byte	-1
   18E6 F8                 5830 	.byte	-8
   18E7 06                 5831 	.byte	6
   18E8 01                 5832 	.byte	1
                           5833 	.globl _height2RisingRight2
   18E9                    5834 _height2RisingRight2:
   18E9 00                 5835 	.byte	0
   18EA 06                 5836 	.byte	6
   18EB 1C                 5837 	.byte	28
   18EC FF                 5838 	.byte	-1
   18ED 0D                 5839 	.byte	13
   18EE 05                 5840 	.byte	5
   18EF FF                 5841 	.byte	-1
   18F0 08                 5842 	.byte	8
   18F1 FA                 5843 	.byte	-6
   18F2 FF                 5844 	.byte	-1
   18F3 F3                 5845 	.byte	-13
   18F4 FB                 5846 	.byte	-5
   18F5 FF                 5847 	.byte	-1
   18F6 F8                 5848 	.byte	-8
   18F7 06                 5849 	.byte	6
   18F8 FF                 5850 	.byte	-1
   18F9 04                 5851 	.byte	4
   18FA E6                 5852 	.byte	-26
   18FB 00                 5853 	.byte	0
   18FC 09                 5854 	.byte	9
   18FD 1F                 5855 	.byte	31
   18FE FF                 5856 	.byte	-1
   18FF 05                 5857 	.byte	5
   1900 E6                 5858 	.byte	-26
   1901 00                 5859 	.byte	0
   1902 03                 5860 	.byte	3
   1903 14                 5861 	.byte	20
   1904 FF                 5862 	.byte	-1
   1905 05                 5863 	.byte	5
   1906 E6                 5864 	.byte	-26
   1907 00                 5865 	.byte	0
   1908 EE                 5866 	.byte	-18
   1909 15                 5867 	.byte	21
   190A FF                 5868 	.byte	-1
   190B 04                 5869 	.byte	4
   190C E7                 5870 	.byte	-25
   190D 00                 5871 	.byte	0
   190E F8                 5872 	.byte	-8
   190F 05                 5873 	.byte	5
   1910 FF                 5874 	.byte	-1
   1911 0E                 5875 	.byte	14
   1912 05                 5876 	.byte	5
   1913 FF                 5877 	.byte	-1
   1914 08                 5878 	.byte	8
   1915 FA                 5879 	.byte	-6
   1916 FF                 5880 	.byte	-1
   1917 F2                 5881 	.byte	-14
   1918 FC                 5882 	.byte	-4
   1919 FF                 5883 	.byte	-1
   191A F8                 5884 	.byte	-8
   191B 05                 5885 	.byte	5
   191C 01                 5886 	.byte	1
                           5887 	.globl _height2FallingRight2
   191D                    5888 _height2FallingRight2:
   191D 00                 5889 	.byte	0
   191E 03                 5890 	.byte	3
   191F 00                 5891 	.byte	0
   1920 FF                 5892 	.byte	-1
   1921 00                 5893 	.byte	0
   1922 0E                 5894 	.byte	14
   1923 FF                 5895 	.byte	-1
   1924 08                 5896 	.byte	8
   1925 FA                 5897 	.byte	-6
   1926 FF                 5898 	.byte	-1
   1927 00                 5899 	.byte	0
   1928 F3                 5900 	.byte	-13
   1929 FF                 5901 	.byte	-1
   192A F8                 5902 	.byte	-8
   192B 05                 5903 	.byte	5
   192C FF                 5904 	.byte	-1
   192D 1B                 5905 	.byte	27
   192E 08                 5906 	.byte	8
   192F 00                 5907 	.byte	0
   1930 E5                 5908 	.byte	-27
   1931 06                 5909 	.byte	6
   1932 FF                 5910 	.byte	-1
   1933 1B                 5911 	.byte	27
   1934 07                 5912 	.byte	7
   1935 00                 5913 	.byte	0
   1936 ED                 5914 	.byte	-19
   1937 F3                 5915 	.byte	-13
   1938 FF                 5916 	.byte	-1
   1939 1B                 5917 	.byte	27
   193A 07                 5918 	.byte	7
   193B 00                 5919 	.byte	0
   193C E5                 5920 	.byte	-27
   193D EC                 5921 	.byte	-20
   193E FF                 5922 	.byte	-1
   193F 1B                 5923 	.byte	27
   1940 07                 5924 	.byte	7
   1941 00                 5925 	.byte	0
   1942 F8                 5926 	.byte	-8
   1943 06                 5927 	.byte	6
   1944 FF                 5928 	.byte	-1
   1945 00                 5929 	.byte	0
   1946 0D                 5930 	.byte	13
   1947 FF                 5931 	.byte	-1
   1948 08                 5932 	.byte	8
   1949 FA                 5933 	.byte	-6
   194A FF                 5934 	.byte	-1
   194B 00                 5935 	.byte	0
   194C F3                 5936 	.byte	-13
   194D FF                 5937 	.byte	-1
   194E F8                 5938 	.byte	-8
   194F 06                 5939 	.byte	6
   1950 01                 5940 	.byte	1
                           5941 	.globl _height2RisingLeft2
   1951                    5942 _height2RisingLeft2:
   1951 00                 5943 	.byte	0
   1952 0B                 5944 	.byte	11
   1953 FC                 5945 	.byte	-4
   1954 FF                 5946 	.byte	-1
   1955 F5                 5947 	.byte	-11
   1956 04                 5948 	.byte	4
   1957 FF                 5949 	.byte	-1
   1958 08                 5950 	.byte	8
   1959 FB                 5951 	.byte	-5
   195A FF                 5952 	.byte	-1
   195B 0B                 5953 	.byte	11
   195C FB                 5954 	.byte	-5
   195D FF                 5955 	.byte	-1
   195E F8                 5956 	.byte	-8
   195F 06                 5957 	.byte	6
   1960 FF                 5958 	.byte	-1
   1961 0F                 5959 	.byte	15
   1962 19                 5960 	.byte	25
   1963 00                 5961 	.byte	0
   1964 E6                 5962 	.byte	-26
   1965 EB                 5963 	.byte	-21
   1966 FF                 5964 	.byte	-1
   1967 0F                 5965 	.byte	15
   1968 1A                 5966 	.byte	26
   1969 00                 5967 	.byte	0
   196A F9                 5968 	.byte	-7
   196B E1                 5969 	.byte	-31
   196C FF                 5970 	.byte	-1
   196D 0F                 5971 	.byte	15
   196E 19                 5972 	.byte	25
   196F 00                 5973 	.byte	0
   1970 FC                 5974 	.byte	-4
   1971 E2                 5975 	.byte	-30
   1972 FF                 5976 	.byte	-1
   1973 0F                 5977 	.byte	15
   1974 19                 5978 	.byte	25
   1975 00                 5979 	.byte	0
   1976 F8                 5980 	.byte	-8
   1977 06                 5981 	.byte	6
   1978 FF                 5982 	.byte	-1
   1979 F5                 5983 	.byte	-11
   197A 05                 5984 	.byte	5
   197B FF                 5985 	.byte	-1
   197C 08                 5986 	.byte	8
   197D FA                 5987 	.byte	-6
   197E FF                 5988 	.byte	-1
   197F 0B                 5989 	.byte	11
   1980 FB                 5990 	.byte	-5
   1981 FF                 5991 	.byte	-1
   1982 F8                 5992 	.byte	-8
   1983 06                 5993 	.byte	6
   1984 01                 5994 	.byte	1
                           5995 	.globl _height2FallingBack2
   1985                    5996 _height2FallingBack2:
   1985 00                 5997 	.byte	0
   1986 04                 5998 	.byte	4
   1987 00                 5999 	.byte	0
   1988 FF                 6000 	.byte	-1
   1989 03                 6001 	.byte	3
   198A 0E                 6002 	.byte	14
   198B FF                 6003 	.byte	-1
   198C 04                 6004 	.byte	4
   198D FA                 6005 	.byte	-6
   198E FF                 6006 	.byte	-1
   198F FD                 6007 	.byte	-3
   1990 F3                 6008 	.byte	-13
   1991 FF                 6009 	.byte	-1
   1992 FC                 6010 	.byte	-4
   1993 05                 6011 	.byte	5
   1994 FF                 6012 	.byte	-1
   1995 1D                 6013 	.byte	29
   1996 FE                 6014 	.byte	-2
   1997 00                 6015 	.byte	0
   1998 E6                 6016 	.byte	-26
   1999 10                 6017 	.byte	16
   199A FF                 6018 	.byte	-1
   199B 1D                 6019 	.byte	29
   199C FD                 6020 	.byte	-3
   199D 00                 6021 	.byte	0
   199E E7                 6022 	.byte	-25
   199F FD                 6023 	.byte	-3
   19A0 FF                 6024 	.byte	-1
   19A1 1D                 6025 	.byte	29
   19A2 FD                 6026 	.byte	-3
   19A3 00                 6027 	.byte	0
   19A4 E0                 6028 	.byte	-32
   19A5 F6                 6029 	.byte	-10
   19A6 FF                 6030 	.byte	-1
   19A7 1D                 6031 	.byte	29
   19A8 FD                 6032 	.byte	-3
   19A9 00                 6033 	.byte	0
   19AA FC                 6034 	.byte	-4
   19AB 06                 6035 	.byte	6
   19AC FF                 6036 	.byte	-1
   19AD 03                 6037 	.byte	3
   19AE 0D                 6038 	.byte	13
   19AF FF                 6039 	.byte	-1
   19B0 04                 6040 	.byte	4
   19B1 FA                 6041 	.byte	-6
   19B2 FF                 6042 	.byte	-1
   19B3 FD                 6043 	.byte	-3
   19B4 F3                 6044 	.byte	-13
   19B5 FF                 6045 	.byte	-1
   19B6 FC                 6046 	.byte	-4
   19B7 06                 6047 	.byte	6
   19B8 01                 6048 	.byte	1
                           6049 	.globl _height2RisingFront2
   19B9                    6050 _height2RisingFront2:
   19B9 00                 6051 	.byte	0
   19BA 09                 6052 	.byte	9
   19BB 02                 6053 	.byte	2
   19BC FF                 6054 	.byte	-1
   19BD 03                 6055 	.byte	3
   19BE 0E                 6056 	.byte	14
   19BF FF                 6057 	.byte	-1
   19C0 F7                 6058 	.byte	-9
   19C1 FE                 6059 	.byte	-2
   19C2 FF                 6060 	.byte	-1
   19C3 FD                 6061 	.byte	-3
   19C4 F2                 6062 	.byte	-14
   19C5 FF                 6063 	.byte	-1
   19C6 09                 6064 	.byte	9
   19C7 02                 6065 	.byte	2
   19C8 FF                 6066 	.byte	-1
   19C9 19                 6067 	.byte	25
   19CA F6                 6068 	.byte	-10
   19CB 00                 6069 	.byte	0
   19CC EA                 6070 	.byte	-22
   19CD 18                 6071 	.byte	24
   19CE FF                 6072 	.byte	-1
   19CF 19                 6073 	.byte	25
   19D0 F5                 6074 	.byte	-11
   19D1 00                 6075 	.byte	0
   19D2 DE                 6076 	.byte	-34
   19D3 09                 6077 	.byte	9
   19D4 FF                 6078 	.byte	-1
   19D5 19                 6079 	.byte	25
   19D6 F5                 6080 	.byte	-11
   19D7 00                 6081 	.byte	0
   19D8 E4                 6082 	.byte	-28
   19D9 FD                 6083 	.byte	-3
   19DA FF                 6084 	.byte	-1
   19DB 19                 6085 	.byte	25
   19DC F6                 6086 	.byte	-10
   19DD 00                 6087 	.byte	0
   19DE 09                 6088 	.byte	9
   19DF 02                 6089 	.byte	2
   19E0 FF                 6090 	.byte	-1
   19E1 03                 6091 	.byte	3
   19E2 0D                 6092 	.byte	13
   19E3 FF                 6093 	.byte	-1
   19E4 F7                 6094 	.byte	-9
   19E5 FE                 6095 	.byte	-2
   19E6 FF                 6096 	.byte	-1
   19E7 FD                 6097 	.byte	-3
   19E8 F3                 6098 	.byte	-13
   19E9 FF                 6099 	.byte	-1
   19EA 09                 6100 	.byte	9
   19EB 02                 6101 	.byte	2
   19EC 01                 6102 	.byte	1
                           6103 	.globl _height2FallingFront2
   19ED                    6104 _height2FallingFront2:
   19ED FF                 6105 	.byte	-1
   19EE 03                 6106 	.byte	3
   19EF 0E                 6107 	.byte	14
   19F0 FF                 6108 	.byte	-1
   19F1 0B                 6109 	.byte	11
   19F2 FA                 6110 	.byte	-6
   19F3 FF                 6111 	.byte	-1
   19F4 FD                 6112 	.byte	-3
   19F5 F3                 6113 	.byte	-13
   19F6 FF                 6114 	.byte	-1
   19F7 F5                 6115 	.byte	-11
   19F8 05                 6116 	.byte	5
   19F9 FF                 6117 	.byte	-1
   19FA 15                 6118 	.byte	21
   19FB 03                 6119 	.byte	3
   19FC 00                 6120 	.byte	0
   19FD EE                 6121 	.byte	-18
   19FE 0B                 6122 	.byte	11
   19FF FF                 6123 	.byte	-1
   1A00 15                 6124 	.byte	21
   1A01 03                 6125 	.byte	3
   1A02 00                 6126 	.byte	0
   1A03 F6                 6127 	.byte	-10
   1A04 F7                 6128 	.byte	-9
   1A05 FF                 6129 	.byte	-1
   1A06 15                 6130 	.byte	21
   1A07 03                 6131 	.byte	3
   1A08 00                 6132 	.byte	0
   1A09 E8                 6133 	.byte	-24
   1A0A F0                 6134 	.byte	-16
   1A0B FF                 6135 	.byte	-1
   1A0C 15                 6136 	.byte	21
   1A0D 03                 6137 	.byte	3
   1A0E 00                 6138 	.byte	0
   1A0F F5                 6139 	.byte	-11
   1A10 05                 6140 	.byte	5
   1A11 FF                 6141 	.byte	-1
   1A12 03                 6142 	.byte	3
   1A13 0E                 6143 	.byte	14
   1A14 FF                 6144 	.byte	-1
   1A15 0B                 6145 	.byte	11
   1A16 FA                 6146 	.byte	-6
   1A17 FF                 6147 	.byte	-1
   1A18 FD                 6148 	.byte	-3
   1A19 F3                 6149 	.byte	-13
   1A1A FF                 6150 	.byte	-1
   1A1B F5                 6151 	.byte	-11
   1A1C 05                 6152 	.byte	5
   1A1D 01                 6153 	.byte	1
                           6154 	.globl _height2RisingBack2
   1A1E                    6155 _height2RisingBack2:
   1A1E 00                 6156 	.byte	0
   1A1F 10                 6157 	.byte	16
   1A20 F5                 6158 	.byte	-11
   1A21 FF                 6159 	.byte	-1
   1A22 03                 6160 	.byte	3
   1A23 0D                 6161 	.byte	13
   1A24 FF                 6162 	.byte	-1
   1A25 0F                 6163 	.byte	15
   1A26 FE                 6164 	.byte	-2
   1A27 FF                 6165 	.byte	-1
   1A28 FD                 6166 	.byte	-3
   1A29 F3                 6167 	.byte	-13
   1A2A FF                 6168 	.byte	-1
   1A2B F1                 6169 	.byte	-15
   1A2C 02                 6170 	.byte	2
   1A2D FF                 6171 	.byte	-1
   1A2E FB                 6172 	.byte	-5
   1A2F 0B                 6173 	.byte	11
   1A30 00                 6174 	.byte	0
   1A31 08                 6175 	.byte	8
   1A32 02                 6176 	.byte	2
   1A33 FF                 6177 	.byte	-1
   1A34 FB                 6178 	.byte	-5
   1A35 0B                 6179 	.byte	11
   1A36 00                 6180 	.byte	0
   1A37 14                 6181 	.byte	20
   1A38 F3                 6182 	.byte	-13
   1A39 FF                 6183 	.byte	-1
   1A3A FB                 6184 	.byte	-5
   1A3B 0B                 6185 	.byte	11
   1A3C 00                 6186 	.byte	0
   1A3D 02                 6187 	.byte	2
   1A3E E8                 6188 	.byte	-24
   1A3F FF                 6189 	.byte	-1
   1A40 FB                 6190 	.byte	-5
   1A41 0B                 6191 	.byte	11
   1A42 00                 6192 	.byte	0
   1A43 F1                 6193 	.byte	-15
   1A44 02                 6194 	.byte	2
   1A45 FF                 6195 	.byte	-1
   1A46 03                 6196 	.byte	3
   1A47 0D                 6197 	.byte	13
   1A48 FF                 6198 	.byte	-1
   1A49 0F                 6199 	.byte	15
   1A4A FE                 6200 	.byte	-2
   1A4B FF                 6201 	.byte	-1
   1A4C FD                 6202 	.byte	-3
   1A4D F3                 6203 	.byte	-13
   1A4E FF                 6204 	.byte	-1
   1A4F F1                 6205 	.byte	-15
   1A50 02                 6206 	.byte	2
   1A51 01                 6207 	.byte	1
                           6208 	.globl _depth2RollingLeft2
   1A52                    6209 _depth2RollingLeft2:
   1A52 FF                 6210 	.byte	-1
   1A53 06                 6211 	.byte	6
   1A54 0E                 6212 	.byte	14
   1A55 FF                 6213 	.byte	-1
   1A56 10                 6214 	.byte	16
   1A57 F4                 6215 	.byte	-12
   1A58 FF                 6216 	.byte	-1
   1A59 FA                 6217 	.byte	-6
   1A5A F3                 6218 	.byte	-13
   1A5B FF                 6219 	.byte	-1
   1A5C F0                 6220 	.byte	-16
   1A5D 0B                 6221 	.byte	11
   1A5E FF                 6222 	.byte	-1
   1A5F 0C                 6223 	.byte	12
   1A60 FD                 6224 	.byte	-3
   1A61 00                 6225 	.byte	0
   1A62 FA                 6226 	.byte	-6
   1A63 11                 6227 	.byte	17
   1A64 FF                 6228 	.byte	-1
   1A65 0C                 6229 	.byte	12
   1A66 FC                 6230 	.byte	-4
   1A67 00                 6231 	.byte	0
   1A68 04                 6232 	.byte	4
   1A69 F8                 6233 	.byte	-8
   1A6A FF                 6234 	.byte	-1
   1A6B 0C                 6235 	.byte	12
   1A6C FD                 6236 	.byte	-3
   1A6D 00                 6237 	.byte	0
   1A6E EE                 6238 	.byte	-18
   1A6F F6                 6239 	.byte	-10
   1A70 FF                 6240 	.byte	-1
   1A71 0C                 6241 	.byte	12
   1A72 FC                 6242 	.byte	-4
   1A73 00                 6243 	.byte	0
   1A74 F0                 6244 	.byte	-16
   1A75 0C                 6245 	.byte	12
   1A76 FF                 6246 	.byte	-1
   1A77 06                 6247 	.byte	6
   1A78 0D                 6248 	.byte	13
   1A79 FF                 6249 	.byte	-1
   1A7A 10                 6250 	.byte	16
   1A7B F5                 6251 	.byte	-11
   1A7C FF                 6252 	.byte	-1
   1A7D FA                 6253 	.byte	-6
   1A7E F2                 6254 	.byte	-14
   1A7F FF                 6255 	.byte	-1
   1A80 F0                 6256 	.byte	-16
   1A81 0C                 6257 	.byte	12
   1A82 01                 6258 	.byte	1
                           6259 	.globl _depth2RollingRight2
   1A83                    6260 _depth2RollingRight2:
   1A83 00                 6261 	.byte	0
   1A84 03                 6262 	.byte	3
   1A85 00                 6263 	.byte	0
   1A86 FF                 6264 	.byte	-1
   1A87 00                 6265 	.byte	0
   1A88 0E                 6266 	.byte	14
   1A89 FF                 6267 	.byte	-1
   1A8A 10                 6268 	.byte	16
   1A8B F4                 6269 	.byte	-12
   1A8C FF                 6270 	.byte	-1
   1A8D 00                 6271 	.byte	0
   1A8E F3                 6272 	.byte	-13
   1A8F FF                 6273 	.byte	-1
   1A90 F0                 6274 	.byte	-16
   1A91 0B                 6275 	.byte	11
   1A92 FF                 6276 	.byte	-1
   1A93 0E                 6277 	.byte	14
   1A94 04                 6278 	.byte	4
   1A95 00                 6279 	.byte	0
   1A96 F2                 6280 	.byte	-14
   1A97 0A                 6281 	.byte	10
   1A98 FF                 6282 	.byte	-1
   1A99 0D                 6283 	.byte	13
   1A9A 04                 6284 	.byte	4
   1A9B 00                 6285 	.byte	0
   1A9C 03                 6286 	.byte	3
   1A9D F0                 6287 	.byte	-16
   1A9E FF                 6288 	.byte	-1
   1A9F 0D                 6289 	.byte	13
   1AA0 04                 6290 	.byte	4
   1AA1 00                 6291 	.byte	0
   1AA2 F3                 6292 	.byte	-13
   1AA3 EF                 6293 	.byte	-17
   1AA4 FF                 6294 	.byte	-1
   1AA5 0E                 6295 	.byte	14
   1AA6 04                 6296 	.byte	4
   1AA7 00                 6297 	.byte	0
   1AA8 F0                 6298 	.byte	-16
   1AA9 0B                 6299 	.byte	11
   1AAA FF                 6300 	.byte	-1
   1AAB FF                 6301 	.byte	-1
   1AAC 0E                 6302 	.byte	14
   1AAD FF                 6303 	.byte	-1
   1AAE 10                 6304 	.byte	16
   1AAF F4                 6305 	.byte	-12
   1AB0 FF                 6306 	.byte	-1
   1AB1 01                 6307 	.byte	1
   1AB2 F3                 6308 	.byte	-13
   1AB3 FF                 6309 	.byte	-1
   1AB4 F0                 6310 	.byte	-16
   1AB5 0B                 6311 	.byte	11
   1AB6 01                 6312 	.byte	1
                           6313 	.globl _width2RollingFront2
   1AB7                    6314 _width2RollingFront2:
   1AB7 FF                 6315 	.byte	-1
   1AB8 06                 6316 	.byte	6
   1AB9 1C                 6317 	.byte	28
   1ABA FF                 6318 	.byte	-1
   1ABB 0B                 6319 	.byte	11
   1ABC FA                 6320 	.byte	-6
   1ABD FF                 6321 	.byte	-1
   1ABE FA                 6322 	.byte	-6
   1ABF E5                 6323 	.byte	-27
   1AC0 FF                 6324 	.byte	-1
   1AC1 F5                 6325 	.byte	-11
   1AC2 05                 6326 	.byte	5
   1AC3 FF                 6327 	.byte	-1
   1AC4 0A                 6328 	.byte	10
   1AC5 02                 6329 	.byte	2
   1AC6 00                 6330 	.byte	0
   1AC7 FC                 6331 	.byte	-4
   1AC8 1A                 6332 	.byte	26
   1AC9 FF                 6333 	.byte	-1
   1ACA 0A                 6334 	.byte	10
   1ACB 02                 6335 	.byte	2
   1ACC 00                 6336 	.byte	0
   1ACD 01                 6337 	.byte	1
   1ACE F8                 6338 	.byte	-8
   1ACF FF                 6339 	.byte	-1
   1AD0 0B                 6340 	.byte	11
   1AD1 02                 6341 	.byte	2
   1AD2 00                 6342 	.byte	0
   1AD3 EF                 6343 	.byte	-17
   1AD4 E3                 6344 	.byte	-29
   1AD5 FF                 6345 	.byte	-1
   1AD6 0B                 6346 	.byte	11
   1AD7 02                 6347 	.byte	2
   1AD8 00                 6348 	.byte	0
   1AD9 F4                 6349 	.byte	-12
   1ADA 05                 6350 	.byte	5
   1ADB FF                 6351 	.byte	-1
   1ADC 06                 6352 	.byte	6
   1ADD 1C                 6353 	.byte	28
   1ADE FF                 6354 	.byte	-1
   1ADF 0C                 6355 	.byte	12
   1AE0 FA                 6356 	.byte	-6
   1AE1 FF                 6357 	.byte	-1
   1AE2 FA                 6358 	.byte	-6
   1AE3 E5                 6359 	.byte	-27
   1AE4 FF                 6360 	.byte	-1
   1AE5 F4                 6361 	.byte	-12
   1AE6 05                 6362 	.byte	5
   1AE7 01                 6363 	.byte	1
                           6364 	.globl _width2RollingBack2
   1AE8                    6365 _width2RollingBack2:
   1AE8 00                 6366 	.byte	0
   1AE9 04                 6367 	.byte	4
   1AEA 00                 6368 	.byte	0
   1AEB FF                 6369 	.byte	-1
   1AEC 06                 6370 	.byte	6
   1AED 1C                 6371 	.byte	28
   1AEE FF                 6372 	.byte	-1
   1AEF 04                 6373 	.byte	4
   1AF0 FA                 6374 	.byte	-6
   1AF1 FF                 6375 	.byte	-1
   1AF2 FA                 6376 	.byte	-6
   1AF3 E5                 6377 	.byte	-27
   1AF4 FF                 6378 	.byte	-1
   1AF5 FC                 6379 	.byte	-4
   1AF6 05                 6380 	.byte	5
   1AF7 FF                 6381 	.byte	-1
   1AF8 0E                 6382 	.byte	14
   1AF9 FF                 6383 	.byte	-1
   1AFA 00                 6384 	.byte	0
   1AFB F8                 6385 	.byte	-8
   1AFC 1D                 6386 	.byte	29
   1AFD FF                 6387 	.byte	-1
   1AFE 0E                 6388 	.byte	14
   1AFF FE                 6389 	.byte	-2
   1B00 00                 6390 	.byte	0
   1B01 F6                 6391 	.byte	-10
   1B02 FC                 6392 	.byte	-4
   1B03 FF                 6393 	.byte	-1
   1B04 0F                 6394 	.byte	15
   1B05 FE                 6395 	.byte	-2
   1B06 00                 6396 	.byte	0
   1B07 EB                 6397 	.byte	-21
   1B08 E7                 6398 	.byte	-25
   1B09 FF                 6399 	.byte	-1
   1B0A 0F                 6400 	.byte	15
   1B0B FE                 6401 	.byte	-2
   1B0C 00                 6402 	.byte	0
   1B0D FB                 6403 	.byte	-5
   1B0E 06                 6404 	.byte	6
   1B0F FF                 6405 	.byte	-1
   1B10 06                 6406 	.byte	6
   1B11 1B                 6407 	.byte	27
   1B12 FF                 6408 	.byte	-1
   1B13 05                 6409 	.byte	5
   1B14 FA                 6410 	.byte	-6
   1B15 FF                 6411 	.byte	-1
   1B16 FA                 6412 	.byte	-6
   1B17 E5                 6413 	.byte	-27
   1B18 FF                 6414 	.byte	-1
   1B19 FB                 6415 	.byte	-5
   1B1A 06                 6416 	.byte	6
   1B1B 01                 6417 	.byte	1
                           6418 	.globl _height2FallingLeft3
   1B1C                    6419 _height2FallingLeft3:
   1B1C FF                 6420 	.byte	-1
   1B1D 08                 6421 	.byte	8
   1B1E 0D                 6422 	.byte	13
   1B1F FF                 6423 	.byte	-1
   1B20 08                 6424 	.byte	8
   1B21 FA                 6425 	.byte	-6
   1B22 FF                 6426 	.byte	-1
   1B23 F8                 6427 	.byte	-8
   1B24 F4                 6428 	.byte	-12
   1B25 FF                 6429 	.byte	-1
   1B26 F8                 6430 	.byte	-8
   1B27 05                 6431 	.byte	5
   1B28 FF                 6432 	.byte	-1
   1B29 16                 6433 	.byte	22
   1B2A F6                 6434 	.byte	-10
   1B2B 00                 6435 	.byte	0
   1B2C F2                 6436 	.byte	-14
   1B2D 17                 6437 	.byte	23
   1B2E FF                 6438 	.byte	-1
   1B2F 15                 6439 	.byte	21
   1B30 F5                 6440 	.byte	-11
   1B31 00                 6441 	.byte	0
   1B32 F3                 6442 	.byte	-13
   1B33 05                 6443 	.byte	5
   1B34 FF                 6444 	.byte	-1
   1B35 15                 6445 	.byte	21
   1B36 F6                 6446 	.byte	-10
   1B37 00                 6447 	.byte	0
   1B38 E3                 6448 	.byte	-29
   1B39 FE                 6449 	.byte	-2
   1B3A FF                 6450 	.byte	-1
   1B3B 16                 6451 	.byte	22
   1B3C F5                 6452 	.byte	-11
   1B3D 00                 6453 	.byte	0
   1B3E F8                 6454 	.byte	-8
   1B3F 06                 6455 	.byte	6
   1B40 FF                 6456 	.byte	-1
   1B41 07                 6457 	.byte	7
   1B42 0C                 6458 	.byte	12
   1B43 FF                 6459 	.byte	-1
   1B44 08                 6460 	.byte	8
   1B45 FB                 6461 	.byte	-5
   1B46 FF                 6462 	.byte	-1
   1B47 F9                 6463 	.byte	-7
   1B48 F3                 6464 	.byte	-13
   1B49 FF                 6465 	.byte	-1
   1B4A F8                 6466 	.byte	-8
   1B4B 06                 6467 	.byte	6
   1B4C 01                 6468 	.byte	1
                           6469 	.globl _height2RisingRight3
   1B4D                    6470 _height2RisingRight3:
   1B4D 00                 6471 	.byte	0
   1B4E 06                 6472 	.byte	6
   1B4F 1C                 6473 	.byte	28
   1B50 FF                 6474 	.byte	-1
   1B51 0D                 6475 	.byte	13
   1B52 07                 6476 	.byte	7
   1B53 FF                 6477 	.byte	-1
   1B54 08                 6478 	.byte	8
   1B55 FA                 6479 	.byte	-6
   1B56 FF                 6480 	.byte	-1
   1B57 F3                 6481 	.byte	-13
   1B58 F9                 6482 	.byte	-7
   1B59 FF                 6483 	.byte	-1
   1B5A F8                 6484 	.byte	-8
   1B5B 06                 6485 	.byte	6
   1B5C FF                 6486 	.byte	-1
   1B5D 08                 6487 	.byte	8
   1B5E E8                 6488 	.byte	-24
   1B5F 00                 6489 	.byte	0
   1B60 05                 6490 	.byte	5
   1B61 1F                 6491 	.byte	31
   1B62 FF                 6492 	.byte	-1
   1B63 08                 6493 	.byte	8
   1B64 E8                 6494 	.byte	-24
   1B65 00                 6495 	.byte	0
   1B66 00                 6496 	.byte	0
   1B67 12                 6497 	.byte	18
   1B68 FF                 6498 	.byte	-1
   1B69 08                 6499 	.byte	8
   1B6A E8                 6500 	.byte	-24
   1B6B 00                 6501 	.byte	0
   1B6C EB                 6502 	.byte	-21
   1B6D 11                 6503 	.byte	17
   1B6E FF                 6504 	.byte	-1
   1B6F 08                 6505 	.byte	8
   1B70 E9                 6506 	.byte	-23
   1B71 00                 6507 	.byte	0
   1B72 F8                 6508 	.byte	-8
   1B73 05                 6509 	.byte	5
   1B74 FF                 6510 	.byte	-1
   1B75 0D                 6511 	.byte	13
   1B76 07                 6512 	.byte	7
   1B77 FF                 6513 	.byte	-1
   1B78 08                 6514 	.byte	8
   1B79 FA                 6515 	.byte	-6
   1B7A FF                 6516 	.byte	-1
   1B7B F3                 6517 	.byte	-13
   1B7C FA                 6518 	.byte	-6
   1B7D FF                 6519 	.byte	-1
   1B7E F8                 6520 	.byte	-8
   1B7F 05                 6521 	.byte	5
   1B80 01                 6522 	.byte	1
                           6523 	.globl _height2FallingRight3
   1B81                    6524 _height2FallingRight3:
   1B81 00                 6525 	.byte	0
   1B82 05                 6526 	.byte	5
   1B83 01                 6527 	.byte	1
   1B84 FF                 6528 	.byte	-1
   1B85 FE                 6529 	.byte	-2
   1B86 0D                 6530 	.byte	13
   1B87 FF                 6531 	.byte	-1
   1B88 08                 6532 	.byte	8
   1B89 FA                 6533 	.byte	-6
   1B8A FF                 6534 	.byte	-1
   1B8B 02                 6535 	.byte	2
   1B8C F4                 6536 	.byte	-12
   1B8D FF                 6537 	.byte	-1
   1B8E F8                 6538 	.byte	-8
   1B8F 05                 6539 	.byte	5
   1B90 FF                 6540 	.byte	-1
   1B91 1B                 6541 	.byte	27
   1B92 0B                 6542 	.byte	11
   1B93 00                 6543 	.byte	0
   1B94 E3                 6544 	.byte	-29
   1B95 02                 6545 	.byte	2
   1B96 FF                 6546 	.byte	-1
   1B97 1A                 6547 	.byte	26
   1B98 0B                 6548 	.byte	11
   1B99 00                 6549 	.byte	0
   1B9A EE                 6550 	.byte	-18
   1B9B EF                 6551 	.byte	-17
   1B9C FF                 6552 	.byte	-1
   1B9D 1A                 6553 	.byte	26
   1B9E 0B                 6554 	.byte	11
   1B9F 00                 6555 	.byte	0
   1BA0 E8                 6556 	.byte	-24
   1BA1 E9                 6557 	.byte	-23
   1BA2 FF                 6558 	.byte	-1
   1BA3 1B                 6559 	.byte	27
   1BA4 0A                 6560 	.byte	10
   1BA5 00                 6561 	.byte	0
   1BA6 F8                 6562 	.byte	-8
   1BA7 06                 6563 	.byte	6
   1BA8 FF                 6564 	.byte	-1
   1BA9 FD                 6565 	.byte	-3
   1BAA 0D                 6566 	.byte	13
   1BAB FF                 6567 	.byte	-1
   1BAC 08                 6568 	.byte	8
   1BAD FA                 6569 	.byte	-6
   1BAE FF                 6570 	.byte	-1
   1BAF 03                 6571 	.byte	3
   1BB0 F3                 6572 	.byte	-13
   1BB1 FF                 6573 	.byte	-1
   1BB2 F8                 6574 	.byte	-8
   1BB3 06                 6575 	.byte	6
   1BB4 01                 6576 	.byte	1
                           6577 	.globl _height2RisingLeft3
   1BB5                    6578 _height2RisingLeft3:
   1BB5 00                 6579 	.byte	0
   1BB6 0A                 6580 	.byte	10
   1BB7 FA                 6581 	.byte	-6
   1BB8 FF                 6582 	.byte	-1
   1BB9 F6                 6583 	.byte	-10
   1BBA 06                 6584 	.byte	6
   1BBB FF                 6585 	.byte	-1
   1BBC 08                 6586 	.byte	8
   1BBD FB                 6587 	.byte	-5
   1BBE FF                 6588 	.byte	-1
   1BBF 0A                 6589 	.byte	10
   1BC0 F9                 6590 	.byte	-7
   1BC1 FF                 6591 	.byte	-1
   1BC2 F8                 6592 	.byte	-8
   1BC3 06                 6593 	.byte	6
   1BC4 FF                 6594 	.byte	-1
   1BC5 12                 6595 	.byte	18
   1BC6 17                 6596 	.byte	23
   1BC7 00                 6597 	.byte	0
   1BC8 E4                 6598 	.byte	-28
   1BC9 EF                 6599 	.byte	-17
   1BCA FF                 6600 	.byte	-1
   1BCB 12                 6601 	.byte	18
   1BCC 18                 6602 	.byte	24
   1BCD 00                 6603 	.byte	0
   1BCE F6                 6604 	.byte	-10
   1BCF E3                 6605 	.byte	-29
   1BD0 FF                 6606 	.byte	-1
   1BD1 12                 6607 	.byte	18
   1BD2 17                 6608 	.byte	23
   1BD3 00                 6609 	.byte	0
   1BD4 F8                 6610 	.byte	-8
   1BD5 E2                 6611 	.byte	-30
   1BD6 FF                 6612 	.byte	-1
   1BD7 12                 6613 	.byte	18
   1BD8 17                 6614 	.byte	23
   1BD9 00                 6615 	.byte	0
   1BDA F8                 6616 	.byte	-8
   1BDB 06                 6617 	.byte	6
   1BDC FF                 6618 	.byte	-1
   1BDD F6                 6619 	.byte	-10
   1BDE 07                 6620 	.byte	7
   1BDF FF                 6621 	.byte	-1
   1BE0 08                 6622 	.byte	8
   1BE1 FA                 6623 	.byte	-6
   1BE2 FF                 6624 	.byte	-1
   1BE3 0A                 6625 	.byte	10
   1BE4 F9                 6626 	.byte	-7
   1BE5 FF                 6627 	.byte	-1
   1BE6 F8                 6628 	.byte	-8
   1BE7 06                 6629 	.byte	6
   1BE8 01                 6630 	.byte	1
                           6631 	.globl _height2FallingBack3
   1BE9                    6632 _height2FallingBack3:
   1BE9 00                 6633 	.byte	0
   1BEA 06                 6634 	.byte	6
   1BEB 00                 6635 	.byte	0
   1BEC FF                 6636 	.byte	-1
   1BED 03                 6637 	.byte	3
   1BEE 0E                 6638 	.byte	14
   1BEF FF                 6639 	.byte	-1
   1BF0 02                 6640 	.byte	2
   1BF1 FA                 6641 	.byte	-6
   1BF2 FF                 6642 	.byte	-1
   1BF3 FD                 6643 	.byte	-3
   1BF4 F3                 6644 	.byte	-13
   1BF5 FF                 6645 	.byte	-1
   1BF6 FE                 6646 	.byte	-2
   1BF7 05                 6647 	.byte	5
   1BF8 FF                 6648 	.byte	-1
   1BF9 1E                 6649 	.byte	30
   1BFA FC                 6650 	.byte	-4
   1BFB 00                 6651 	.byte	0
   1BFC E5                 6652 	.byte	-27
   1BFD 12                 6653 	.byte	18
   1BFE FF                 6654 	.byte	-1
   1BFF 1E                 6655 	.byte	30
   1C00 FB                 6656 	.byte	-5
   1C01 00                 6657 	.byte	0
   1C02 E4                 6658 	.byte	-28
   1C03 FF                 6659 	.byte	-1
   1C04 FF                 6660 	.byte	-1
   1C05 1E                 6661 	.byte	30
   1C06 FB                 6662 	.byte	-5
   1C07 00                 6663 	.byte	0
   1C08 DF                 6664 	.byte	-33
   1C09 F8                 6665 	.byte	-8
   1C0A FF                 6666 	.byte	-1
   1C0B 1E                 6667 	.byte	30
   1C0C FB                 6668 	.byte	-5
   1C0D 00                 6669 	.byte	0
   1C0E FE                 6670 	.byte	-2
   1C0F 06                 6671 	.byte	6
   1C10 FF                 6672 	.byte	-1
   1C11 03                 6673 	.byte	3
   1C12 0D                 6674 	.byte	13
   1C13 FF                 6675 	.byte	-1
   1C14 02                 6676 	.byte	2
   1C15 FA                 6677 	.byte	-6
   1C16 FF                 6678 	.byte	-1
   1C17 FD                 6679 	.byte	-3
   1C18 F3                 6680 	.byte	-13
   1C19 FF                 6681 	.byte	-1
   1C1A FE                 6682 	.byte	-2
   1C1B 06                 6683 	.byte	6
   1C1C 01                 6684 	.byte	1
                           6685 	.globl _height2RisingFront3
   1C1D                    6686 _height2RisingFront3:
   1C1D 00                 6687 	.byte	0
   1C1E 07                 6688 	.byte	7
   1C1F 03                 6689 	.byte	3
   1C20 FF                 6690 	.byte	-1
   1C21 03                 6691 	.byte	3
   1C22 0E                 6692 	.byte	14
   1C23 FF                 6693 	.byte	-1
   1C24 F9                 6694 	.byte	-7
   1C25 FD                 6695 	.byte	-3
   1C26 FF                 6696 	.byte	-1
   1C27 FD                 6697 	.byte	-3
   1C28 F2                 6698 	.byte	-14
   1C29 FF                 6699 	.byte	-1
   1C2A 07                 6700 	.byte	7
   1C2B 03                 6701 	.byte	3
   1C2C FF                 6702 	.byte	-1
   1C2D 1B                 6703 	.byte	27
   1C2E F7                 6704 	.byte	-9
   1C2F 00                 6705 	.byte	0
   1C30 E8                 6706 	.byte	-24
   1C31 17                 6707 	.byte	23
   1C32 FF                 6708 	.byte	-1
   1C33 1B                 6709 	.byte	27
   1C34 F6                 6710 	.byte	-10
   1C35 00                 6711 	.byte	0
   1C36 DE                 6712 	.byte	-34
   1C37 07                 6713 	.byte	7
   1C38 FF                 6714 	.byte	-1
   1C39 1B                 6715 	.byte	27
   1C3A F6                 6716 	.byte	-10
   1C3B 00                 6717 	.byte	0
   1C3C E2                 6718 	.byte	-30
   1C3D FC                 6719 	.byte	-4
   1C3E FF                 6720 	.byte	-1
   1C3F 1B                 6721 	.byte	27
   1C40 F7                 6722 	.byte	-9
   1C41 00                 6723 	.byte	0
   1C42 07                 6724 	.byte	7
   1C43 03                 6725 	.byte	3
   1C44 FF                 6726 	.byte	-1
   1C45 03                 6727 	.byte	3
   1C46 0D                 6728 	.byte	13
   1C47 FF                 6729 	.byte	-1
   1C48 F9                 6730 	.byte	-7
   1C49 FD                 6731 	.byte	-3
   1C4A FF                 6732 	.byte	-1
   1C4B FD                 6733 	.byte	-3
   1C4C F3                 6734 	.byte	-13
   1C4D FF                 6735 	.byte	-1
   1C4E 07                 6736 	.byte	7
   1C4F 03                 6737 	.byte	3
   1C50 01                 6738 	.byte	1
                           6739 	.globl _height2FallingFront3
   1C51                    6740 _height2FallingFront3:
   1C51 FF                 6741 	.byte	-1
   1C52 03                 6742 	.byte	3
   1C53 0E                 6743 	.byte	14
   1C54 FF                 6744 	.byte	-1
   1C55 0C                 6745 	.byte	12
   1C56 FA                 6746 	.byte	-6
   1C57 FF                 6747 	.byte	-1
   1C58 FD                 6748 	.byte	-3
   1C59 F3                 6749 	.byte	-13
   1C5A FF                 6750 	.byte	-1
   1C5B F4                 6751 	.byte	-12
   1C5C 05                 6752 	.byte	5
   1C5D FF                 6753 	.byte	-1
   1C5E 12                 6754 	.byte	18
   1C5F 05                 6755 	.byte	5
   1C60 00                 6756 	.byte	0
   1C61 F1                 6757 	.byte	-15
   1C62 09                 6758 	.byte	9
   1C63 FF                 6759 	.byte	-1
   1C64 12                 6760 	.byte	18
   1C65 05                 6761 	.byte	5
   1C66 00                 6762 	.byte	0
   1C67 FA                 6763 	.byte	-6
   1C68 F5                 6764 	.byte	-11
   1C69 FF                 6765 	.byte	-1
   1C6A 12                 6766 	.byte	18
   1C6B 05                 6767 	.byte	5
   1C6C 00                 6768 	.byte	0
   1C6D EB                 6769 	.byte	-21
   1C6E EE                 6770 	.byte	-18
   1C6F FF                 6771 	.byte	-1
   1C70 12                 6772 	.byte	18
   1C71 05                 6773 	.byte	5
   1C72 00                 6774 	.byte	0
   1C73 F4                 6775 	.byte	-12
   1C74 05                 6776 	.byte	5
   1C75 FF                 6777 	.byte	-1
   1C76 03                 6778 	.byte	3
   1C77 0E                 6779 	.byte	14
   1C78 FF                 6780 	.byte	-1
   1C79 0C                 6781 	.byte	12
   1C7A FA                 6782 	.byte	-6
   1C7B FF                 6783 	.byte	-1
   1C7C FD                 6784 	.byte	-3
   1C7D F3                 6785 	.byte	-13
   1C7E FF                 6786 	.byte	-1
   1C7F F4                 6787 	.byte	-12
   1C80 05                 6788 	.byte	5
   1C81 01                 6789 	.byte	1
                           6790 	.globl _height2RisingBack3
   1C82                    6791 _height2RisingBack3:
   1C82 00                 6792 	.byte	0
   1C83 10                 6793 	.byte	16
   1C84 F5                 6794 	.byte	-11
   1C85 FF                 6795 	.byte	-1
   1C86 03                 6796 	.byte	3
   1C87 0D                 6797 	.byte	13
   1C88 FF                 6798 	.byte	-1
   1C89 0F                 6799 	.byte	15
   1C8A FE                 6800 	.byte	-2
   1C8B FF                 6801 	.byte	-1
   1C8C FD                 6802 	.byte	-3
   1C8D F2                 6803 	.byte	-14
   1C8E FF                 6804 	.byte	-1
   1C8F F1                 6805 	.byte	-15
   1C90 03                 6806 	.byte	3
   1C91 FF                 6807 	.byte	-1
   1C92 FF                 6808 	.byte	-1
   1C93 0A                 6809 	.byte	10
   1C94 00                 6810 	.byte	0
   1C95 04                 6811 	.byte	4
   1C96 03                 6812 	.byte	3
   1C97 FF                 6813 	.byte	-1
   1C98 FF                 6814 	.byte	-1
   1C99 0A                 6815 	.byte	10
   1C9A 00                 6816 	.byte	0
   1C9B 10                 6817 	.byte	16
   1C9C F4                 6818 	.byte	-12
   1C9D FF                 6819 	.byte	-1
   1C9E FF                 6820 	.byte	-1
   1C9F 09                 6821 	.byte	9
   1CA0 00                 6822 	.byte	0
   1CA1 FE                 6823 	.byte	-2
   1CA2 E9                 6824 	.byte	-23
   1CA3 FF                 6825 	.byte	-1
   1CA4 FF                 6826 	.byte	-1
   1CA5 0A                 6827 	.byte	10
   1CA6 00                 6828 	.byte	0
   1CA7 F1                 6829 	.byte	-15
   1CA8 03                 6830 	.byte	3
   1CA9 FF                 6831 	.byte	-1
   1CAA 03                 6832 	.byte	3
   1CAB 0D                 6833 	.byte	13
   1CAC FF                 6834 	.byte	-1
   1CAD 0F                 6835 	.byte	15
   1CAE FD                 6836 	.byte	-3
   1CAF FF                 6837 	.byte	-1
   1CB0 FD                 6838 	.byte	-3
   1CB1 F3                 6839 	.byte	-13
   1CB2 FF                 6840 	.byte	-1
   1CB3 F1                 6841 	.byte	-15
   1CB4 03                 6842 	.byte	3
   1CB5 01                 6843 	.byte	1
                           6844 	.globl _depth2RollingLeft3
   1CB6                    6845 _depth2RollingLeft3:
   1CB6 FF                 6846 	.byte	-1
   1CB7 08                 6847 	.byte	8
   1CB8 0D                 6848 	.byte	13
   1CB9 FF                 6849 	.byte	-1
   1CBA 10                 6850 	.byte	16
   1CBB F4                 6851 	.byte	-12
   1CBC FF                 6852 	.byte	-1
   1CBD F8                 6853 	.byte	-8
   1CBE F4                 6854 	.byte	-12
   1CBF FF                 6855 	.byte	-1
   1CC0 F0                 6856 	.byte	-16
   1CC1 0B                 6857 	.byte	11
   1CC2 FF                 6858 	.byte	-1
   1CC3 0B                 6859 	.byte	11
   1CC4 FC                 6860 	.byte	-4
   1CC5 00                 6861 	.byte	0
   1CC6 FD                 6862 	.byte	-3
   1CC7 11                 6863 	.byte	17
   1CC8 FF                 6864 	.byte	-1
   1CC9 0B                 6865 	.byte	11
   1CCA FB                 6866 	.byte	-5
   1CCB 00                 6867 	.byte	0
   1CCC 05                 6868 	.byte	5
   1CCD F9                 6869 	.byte	-7
   1CCE FF                 6870 	.byte	-1
   1CCF 0B                 6871 	.byte	11
   1CD0 FC                 6872 	.byte	-4
   1CD1 00                 6873 	.byte	0
   1CD2 ED                 6874 	.byte	-19
   1CD3 F8                 6875 	.byte	-8
   1CD4 FF                 6876 	.byte	-1
   1CD5 0B                 6877 	.byte	11
   1CD6 FB                 6878 	.byte	-5
   1CD7 00                 6879 	.byte	0
   1CD8 F0                 6880 	.byte	-16
   1CD9 0C                 6881 	.byte	12
   1CDA FF                 6882 	.byte	-1
   1CDB 08                 6883 	.byte	8
   1CDC 0C                 6884 	.byte	12
   1CDD FF                 6885 	.byte	-1
   1CDE 10                 6886 	.byte	16
   1CDF F5                 6887 	.byte	-11
   1CE0 FF                 6888 	.byte	-1
   1CE1 F8                 6889 	.byte	-8
   1CE2 F3                 6890 	.byte	-13
   1CE3 FF                 6891 	.byte	-1
   1CE4 F0                 6892 	.byte	-16
   1CE5 0C                 6893 	.byte	12
   1CE6 01                 6894 	.byte	1
                           6895 	.globl _depth2RollingRight3
   1CE7                    6896 _depth2RollingRight3:
   1CE7 00                 6897 	.byte	0
   1CE8 05                 6898 	.byte	5
   1CE9 01                 6899 	.byte	1
   1CEA FF                 6900 	.byte	-1
   1CEB FE                 6901 	.byte	-2
   1CEC 0D                 6902 	.byte	13
   1CED FF                 6903 	.byte	-1
   1CEE 10                 6904 	.byte	16
   1CEF F4                 6905 	.byte	-12
   1CF0 FF                 6906 	.byte	-1
   1CF1 02                 6907 	.byte	2
   1CF2 F4                 6908 	.byte	-12
   1CF3 FF                 6909 	.byte	-1
   1CF4 F0                 6910 	.byte	-16
   1CF5 0B                 6911 	.byte	11
   1CF6 FF                 6912 	.byte	-1
   1CF7 0D                 6913 	.byte	13
   1CF8 05                 6914 	.byte	5
   1CF9 00                 6915 	.byte	0
   1CFA F1                 6916 	.byte	-15
   1CFB 08                 6917 	.byte	8
   1CFC FF                 6918 	.byte	-1
   1CFD 0D                 6919 	.byte	13
   1CFE 05                 6920 	.byte	5
   1CFF 00                 6921 	.byte	0
   1D00 03                 6922 	.byte	3
   1D01 EF                 6923 	.byte	-17
   1D02 FF                 6924 	.byte	-1
   1D03 0D                 6925 	.byte	13
   1D04 05                 6926 	.byte	5
   1D05 00                 6927 	.byte	0
   1D06 F5                 6928 	.byte	-11
   1D07 EF                 6929 	.byte	-17
   1D08 FF                 6930 	.byte	-1
   1D09 0D                 6931 	.byte	13
   1D0A 05                 6932 	.byte	5
   1D0B 00                 6933 	.byte	0
   1D0C F0                 6934 	.byte	-16
   1D0D 0B                 6935 	.byte	11
   1D0E FF                 6936 	.byte	-1
   1D0F FE                 6937 	.byte	-2
   1D10 0D                 6938 	.byte	13
   1D11 FF                 6939 	.byte	-1
   1D12 10                 6940 	.byte	16
   1D13 F4                 6941 	.byte	-12
   1D14 FF                 6942 	.byte	-1
   1D15 02                 6943 	.byte	2
   1D16 F4                 6944 	.byte	-12
   1D17 FF                 6945 	.byte	-1
   1D18 F0                 6946 	.byte	-16
   1D19 0B                 6947 	.byte	11
   1D1A 01                 6948 	.byte	1
                           6949 	.globl _width2RollingFront3
   1D1B                    6950 _width2RollingFront3:
   1D1B FF                 6951 	.byte	-1
   1D1C 06                 6952 	.byte	6
   1D1D 1C                 6953 	.byte	28
   1D1E FF                 6954 	.byte	-1
   1D1F 0C                 6955 	.byte	12
   1D20 FA                 6956 	.byte	-6
   1D21 FF                 6957 	.byte	-1
   1D22 FA                 6958 	.byte	-6
   1D23 E5                 6959 	.byte	-27
   1D24 FF                 6960 	.byte	-1
   1D25 F4                 6961 	.byte	-12
   1D26 05                 6962 	.byte	5
   1D27 FF                 6963 	.byte	-1
   1D28 09                 6964 	.byte	9
   1D29 02                 6965 	.byte	2
   1D2A 00                 6966 	.byte	0
   1D2B FD                 6967 	.byte	-3
   1D2C 1A                 6968 	.byte	26
   1D2D FF                 6969 	.byte	-1
   1D2E 09                 6970 	.byte	9
   1D2F 02                 6971 	.byte	2
   1D30 00                 6972 	.byte	0
   1D31 03                 6973 	.byte	3
   1D32 F8                 6974 	.byte	-8
   1D33 FF                 6975 	.byte	-1
   1D34 09                 6976 	.byte	9
   1D35 03                 6977 	.byte	3
   1D36 00                 6978 	.byte	0
   1D37 F1                 6979 	.byte	-15
   1D38 E2                 6980 	.byte	-30
   1D39 FF                 6981 	.byte	-1
   1D3A 09                 6982 	.byte	9
   1D3B 03                 6983 	.byte	3
   1D3C 00                 6984 	.byte	0
   1D3D F4                 6985 	.byte	-12
   1D3E 04                 6986 	.byte	4
   1D3F FF                 6987 	.byte	-1
   1D40 06                 6988 	.byte	6
   1D41 1C                 6989 	.byte	28
   1D42 FF                 6990 	.byte	-1
   1D43 0C                 6991 	.byte	12
   1D44 FB                 6992 	.byte	-5
   1D45 FF                 6993 	.byte	-1
   1D46 FA                 6994 	.byte	-6
   1D47 E5                 6995 	.byte	-27
   1D48 FF                 6996 	.byte	-1
   1D49 F4                 6997 	.byte	-12
   1D4A 04                 6998 	.byte	4
   1D4B 01                 6999 	.byte	1
                           7000 	.globl _width2RollingBack3
   1D4C                    7001 _width2RollingBack3:
   1D4C 00                 7002 	.byte	0
   1D4D 06                 7003 	.byte	6
   1D4E 00                 7004 	.byte	0
   1D4F FF                 7005 	.byte	-1
   1D50 06                 7006 	.byte	6
   1D51 1C                 7007 	.byte	28
   1D52 FF                 7008 	.byte	-1
   1D53 02                 7009 	.byte	2
   1D54 FA                 7010 	.byte	-6
   1D55 FF                 7011 	.byte	-1
   1D56 FA                 7012 	.byte	-6
   1D57 E5                 7013 	.byte	-27
   1D58 FF                 7014 	.byte	-1
   1D59 FE                 7015 	.byte	-2
   1D5A 05                 7016 	.byte	5
   1D5B FF                 7017 	.byte	-1
   1D5C 0F                 7018 	.byte	15
   1D5D FE                 7019 	.byte	-2
   1D5E 00                 7020 	.byte	0
   1D5F F7                 7021 	.byte	-9
   1D60 1E                 7022 	.byte	30
   1D61 FF                 7023 	.byte	-1
   1D62 0F                 7024 	.byte	15
   1D63 FD                 7025 	.byte	-3
   1D64 00                 7026 	.byte	0
   1D65 F3                 7027 	.byte	-13
   1D66 FD                 7028 	.byte	-3
   1D67 FF                 7029 	.byte	-1
   1D68 0F                 7030 	.byte	15
   1D69 FE                 7031 	.byte	-2
   1D6A 00                 7032 	.byte	0
   1D6B EB                 7033 	.byte	-21
   1D6C E7                 7034 	.byte	-25
   1D6D FF                 7035 	.byte	-1
   1D6E 0F                 7036 	.byte	15
   1D6F FE                 7037 	.byte	-2
   1D70 00                 7038 	.byte	0
   1D71 FE                 7039 	.byte	-2
   1D72 05                 7040 	.byte	5
   1D73 FF                 7041 	.byte	-1
   1D74 06                 7042 	.byte	6
   1D75 1B                 7043 	.byte	27
   1D76 FF                 7044 	.byte	-1
   1D77 02                 7045 	.byte	2
   1D78 FB                 7046 	.byte	-5
   1D79 FF                 7047 	.byte	-1
   1D7A FA                 7048 	.byte	-6
   1D7B E5                 7049 	.byte	-27
   1D7C FF                 7050 	.byte	-1
   1D7D FE                 7051 	.byte	-2
   1D7E 05                 7052 	.byte	5
   1D7F 01                 7053 	.byte	1
                           7054 	.globl _height2FallingLeft4
   1D80                    7055 _height2FallingLeft4:
   1D80 FF                 7056 	.byte	-1
   1D81 09                 7057 	.byte	9
   1D82 0C                 7058 	.byte	12
   1D83 FF                 7059 	.byte	-1
   1D84 08                 7060 	.byte	8
   1D85 FA                 7061 	.byte	-6
   1D86 FF                 7062 	.byte	-1
   1D87 F7                 7063 	.byte	-9
   1D88 F5                 7064 	.byte	-11
   1D89 FF                 7065 	.byte	-1
   1D8A F8                 7066 	.byte	-8
   1D8B 05                 7067 	.byte	5
   1D8C FF                 7068 	.byte	-1
   1D8D 14                 7069 	.byte	20
   1D8E F3                 7070 	.byte	-13
   1D8F 00                 7071 	.byte	0
   1D90 F5                 7072 	.byte	-11
   1D91 19                 7073 	.byte	25
   1D92 FF                 7074 	.byte	-1
   1D93 14                 7075 	.byte	20
   1D94 F3                 7076 	.byte	-13
   1D95 00                 7077 	.byte	0
   1D96 F4                 7078 	.byte	-12
   1D97 07                 7079 	.byte	7
   1D98 FF                 7080 	.byte	-1
   1D99 14                 7081 	.byte	20
   1D9A F3                 7082 	.byte	-13
   1D9B 00                 7083 	.byte	0
   1D9C E3                 7084 	.byte	-29
   1D9D 02                 7085 	.byte	2
   1D9E FF                 7086 	.byte	-1
   1D9F 14                 7087 	.byte	20
   1DA0 F2                 7088 	.byte	-14
   1DA1 00                 7089 	.byte	0
   1DA2 F8                 7090 	.byte	-8
   1DA3 06                 7091 	.byte	6
   1DA4 FF                 7092 	.byte	-1
   1DA5 09                 7093 	.byte	9
   1DA6 0C                 7094 	.byte	12
   1DA7 FF                 7095 	.byte	-1
   1DA8 08                 7096 	.byte	8
   1DA9 FA                 7097 	.byte	-6
   1DAA FF                 7098 	.byte	-1
   1DAB F7                 7099 	.byte	-9
   1DAC F4                 7100 	.byte	-12
   1DAD FF                 7101 	.byte	-1
   1DAE F8                 7102 	.byte	-8
   1DAF 06                 7103 	.byte	6
   1DB0 01                 7104 	.byte	1
                           7105 	.globl _height2RisingRight4
   1DB1                    7106 _height2RisingRight4:
   1DB1 00                 7107 	.byte	0
   1DB2 06                 7108 	.byte	6
   1DB3 1C                 7109 	.byte	28
   1DB4 FF                 7110 	.byte	-1
   1DB5 0C                 7111 	.byte	12
   1DB6 09                 7112 	.byte	9
   1DB7 FF                 7113 	.byte	-1
   1DB8 08                 7114 	.byte	8
   1DB9 FA                 7115 	.byte	-6
   1DBA FF                 7116 	.byte	-1
   1DBB F4                 7117 	.byte	-12
   1DBC F7                 7118 	.byte	-9
   1DBD FF                 7119 	.byte	-1
   1DBE F8                 7120 	.byte	-8
   1DBF 06                 7121 	.byte	6
   1DC0 FF                 7122 	.byte	-1
   1DC1 0B                 7123 	.byte	11
   1DC2 EA                 7124 	.byte	-22
   1DC3 00                 7125 	.byte	0
   1DC4 01                 7126 	.byte	1
   1DC5 1F                 7127 	.byte	31
   1DC6 FF                 7128 	.byte	-1
   1DC7 0B                 7129 	.byte	11
   1DC8 E9                 7130 	.byte	-23
   1DC9 00                 7131 	.byte	0
   1DCA FD                 7132 	.byte	-3
   1DCB 11                 7133 	.byte	17
   1DCC FF                 7134 	.byte	-1
   1DCD 0B                 7135 	.byte	11
   1DCE E9                 7136 	.byte	-23
   1DCF 00                 7137 	.byte	0
   1DD0 E9                 7138 	.byte	-23
   1DD1 0E                 7139 	.byte	14
   1DD2 FF                 7140 	.byte	-1
   1DD3 0B                 7141 	.byte	11
   1DD4 EA                 7142 	.byte	-22
   1DD5 00                 7143 	.byte	0
   1DD6 F8                 7144 	.byte	-8
   1DD7 06                 7145 	.byte	6
   1DD8 FF                 7146 	.byte	-1
   1DD9 0C                 7147 	.byte	12
   1DDA 08                 7148 	.byte	8
   1DDB FF                 7149 	.byte	-1
   1DDC 08                 7150 	.byte	8
   1DDD FA                 7151 	.byte	-6
   1DDE FF                 7152 	.byte	-1
   1DDF F4                 7153 	.byte	-12
   1DE0 F8                 7154 	.byte	-8
   1DE1 FF                 7155 	.byte	-1
   1DE2 F8                 7156 	.byte	-8
   1DE3 06                 7157 	.byte	6
   1DE4 01                 7158 	.byte	1
                           7159 	.globl _height2FallingRight4
   1DE5                    7160 _height2FallingRight4:
   1DE5 00                 7161 	.byte	0
   1DE6 07                 7162 	.byte	7
   1DE7 02                 7163 	.byte	2
   1DE8 FF                 7164 	.byte	-1
   1DE9 FC                 7165 	.byte	-4
   1DEA 0C                 7166 	.byte	12
   1DEB FF                 7167 	.byte	-1
   1DEC 08                 7168 	.byte	8
   1DED FA                 7169 	.byte	-6
   1DEE FF                 7170 	.byte	-1
   1DEF 04                 7171 	.byte	4
   1DF0 F5                 7172 	.byte	-11
   1DF1 FF                 7173 	.byte	-1
   1DF2 F8                 7174 	.byte	-8
   1DF3 05                 7175 	.byte	5
   1DF4 FF                 7176 	.byte	-1
   1DF5 19                 7177 	.byte	25
   1DF6 0E                 7178 	.byte	14
   1DF7 00                 7179 	.byte	0
   1DF8 E3                 7180 	.byte	-29
   1DF9 FE                 7181 	.byte	-2
   1DFA FF                 7182 	.byte	-1
   1DFB 1A                 7183 	.byte	26
   1DFC 0E                 7184 	.byte	14
   1DFD 00                 7185 	.byte	0
   1DFE EE                 7186 	.byte	-18
   1DFF EC                 7187 	.byte	-20
   1E00 FF                 7188 	.byte	-1
   1E01 1A                 7189 	.byte	26
   1E02 0E                 7190 	.byte	14
   1E03 00                 7191 	.byte	0
   1E04 EA                 7192 	.byte	-22
   1E05 E7                 7193 	.byte	-25
   1E06 FF                 7194 	.byte	-1
   1E07 19                 7195 	.byte	25
   1E08 0D                 7196 	.byte	13
   1E09 00                 7197 	.byte	0
   1E0A F8                 7198 	.byte	-8
   1E0B 06                 7199 	.byte	6
   1E0C FF                 7200 	.byte	-1
   1E0D FD                 7201 	.byte	-3
   1E0E 0C                 7202 	.byte	12
   1E0F FF                 7203 	.byte	-1
   1E10 08                 7204 	.byte	8
   1E11 FA                 7205 	.byte	-6
   1E12 FF                 7206 	.byte	-1
   1E13 03                 7207 	.byte	3
   1E14 F4                 7208 	.byte	-12
   1E15 FF                 7209 	.byte	-1
   1E16 F8                 7210 	.byte	-8
   1E17 06                 7211 	.byte	6
   1E18 01                 7212 	.byte	1
                           7213 	.globl _height2RisingLeft4
   1E19                    7214 _height2RisingLeft4:
   1E19 00                 7215 	.byte	0
   1E1A 08                 7216 	.byte	8
   1E1B F8                 7217 	.byte	-8
   1E1C FF                 7218 	.byte	-1
   1E1D F8                 7219 	.byte	-8
   1E1E 08                 7220 	.byte	8
   1E1F FF                 7221 	.byte	-1
   1E20 08                 7222 	.byte	8
   1E21 FB                 7223 	.byte	-5
   1E22 FF                 7224 	.byte	-1
   1E23 08                 7225 	.byte	8
   1E24 F7                 7226 	.byte	-9
   1E25 FF                 7227 	.byte	-1
   1E26 F8                 7228 	.byte	-8
   1E27 06                 7229 	.byte	6
   1E28 FF                 7230 	.byte	-1
   1E29 15                 7231 	.byte	21
   1E2A 16                 7232 	.byte	22
   1E2B 00                 7233 	.byte	0
   1E2C E3                 7234 	.byte	-29
   1E2D F2                 7235 	.byte	-14
   1E2E FF                 7236 	.byte	-1
   1E2F 15                 7237 	.byte	21
   1E30 16                 7238 	.byte	22
   1E31 00                 7239 	.byte	0
   1E32 F3                 7240 	.byte	-13
   1E33 E5                 7241 	.byte	-27
   1E34 FF                 7242 	.byte	-1
   1E35 15                 7243 	.byte	21
   1E36 15                 7244 	.byte	21
   1E37 00                 7245 	.byte	0
   1E38 F3                 7246 	.byte	-13
   1E39 E2                 7247 	.byte	-30
   1E3A FF                 7248 	.byte	-1
   1E3B 15                 7249 	.byte	21
   1E3C 16                 7250 	.byte	22
   1E3D 00                 7251 	.byte	0
   1E3E F8                 7252 	.byte	-8
   1E3F 06                 7253 	.byte	6
   1E40 FF                 7254 	.byte	-1
   1E41 F8                 7255 	.byte	-8
   1E42 08                 7256 	.byte	8
   1E43 FF                 7257 	.byte	-1
   1E44 08                 7258 	.byte	8
   1E45 FA                 7259 	.byte	-6
   1E46 FF                 7260 	.byte	-1
   1E47 08                 7261 	.byte	8
   1E48 F8                 7262 	.byte	-8
   1E49 FF                 7263 	.byte	-1
   1E4A F8                 7264 	.byte	-8
   1E4B 06                 7265 	.byte	6
   1E4C 01                 7266 	.byte	1
                           7267 	.globl _height2FallingBack4
   1E4D                    7268 _height2FallingBack4:
   1E4D 00                 7269 	.byte	0
   1E4E 08                 7270 	.byte	8
   1E4F 00                 7271 	.byte	0
   1E50 FF                 7272 	.byte	-1
   1E51 03                 7273 	.byte	3
   1E52 0D                 7274 	.byte	13
   1E53 FF                 7275 	.byte	-1
   1E54 00                 7276 	.byte	0
   1E55 FB                 7277 	.byte	-5
   1E56 FF                 7278 	.byte	-1
   1E57 FD                 7279 	.byte	-3
   1E58 F3                 7280 	.byte	-13
   1E59 FF                 7281 	.byte	-1
   1E5A 00                 7282 	.byte	0
   1E5B 05                 7283 	.byte	5
   1E5C FF                 7284 	.byte	-1
   1E5D 1E                 7285 	.byte	30
   1E5E FA                 7286 	.byte	-6
   1E5F 00                 7287 	.byte	0
   1E60 E5                 7288 	.byte	-27
   1E61 13                 7289 	.byte	19
   1E62 FF                 7290 	.byte	-1
   1E63 1E                 7291 	.byte	30
   1E64 FA                 7292 	.byte	-6
   1E65 00                 7293 	.byte	0
   1E66 E2                 7294 	.byte	-30
   1E67 01                 7295 	.byte	1
   1E68 FF                 7296 	.byte	-1
   1E69 1F                 7297 	.byte	31
   1E6A FA                 7298 	.byte	-6
   1E6B 00                 7299 	.byte	0
   1E6C DE                 7300 	.byte	-34
   1E6D F9                 7301 	.byte	-7
   1E6E FF                 7302 	.byte	-1
   1E6F 1F                 7303 	.byte	31
   1E70 FA                 7304 	.byte	-6
   1E71 00                 7305 	.byte	0
   1E72 FF                 7306 	.byte	-1
   1E73 05                 7307 	.byte	5
   1E74 FF                 7308 	.byte	-1
   1E75 03                 7309 	.byte	3
   1E76 0D                 7310 	.byte	13
   1E77 FF                 7311 	.byte	-1
   1E78 01                 7312 	.byte	1
   1E79 FB                 7313 	.byte	-5
   1E7A FF                 7314 	.byte	-1
   1E7B FD                 7315 	.byte	-3
   1E7C F3                 7316 	.byte	-13
   1E7D FF                 7317 	.byte	-1
   1E7E FF                 7318 	.byte	-1
   1E7F 05                 7319 	.byte	5
   1E80 01                 7320 	.byte	1
                           7321 	.globl _height2RisingFront4
   1E81                    7322 _height2RisingFront4:
   1E81 00                 7323 	.byte	0
   1E82 05                 7324 	.byte	5
   1E83 04                 7325 	.byte	4
   1E84 FF                 7326 	.byte	-1
   1E85 03                 7327 	.byte	3
   1E86 0E                 7328 	.byte	14
   1E87 FF                 7329 	.byte	-1
   1E88 FB                 7330 	.byte	-5
   1E89 FC                 7331 	.byte	-4
   1E8A FF                 7332 	.byte	-1
   1E8B FD                 7333 	.byte	-3
   1E8C F2                 7334 	.byte	-14
   1E8D FF                 7335 	.byte	-1
   1E8E 05                 7336 	.byte	5
   1E8F 04                 7337 	.byte	4
   1E90 FF                 7338 	.byte	-1
   1E91 1D                 7339 	.byte	29
   1E92 F7                 7340 	.byte	-9
   1E93 00                 7341 	.byte	0
   1E94 E6                 7342 	.byte	-26
   1E95 17                 7343 	.byte	23
   1E96 FF                 7344 	.byte	-1
   1E97 1D                 7345 	.byte	29
   1E98 F6                 7346 	.byte	-10
   1E99 00                 7347 	.byte	0
   1E9A DE                 7348 	.byte	-34
   1E9B 06                 7349 	.byte	6
   1E9C FF                 7350 	.byte	-1
   1E9D 1D                 7351 	.byte	29
   1E9E F6                 7352 	.byte	-10
   1E9F 00                 7353 	.byte	0
   1EA0 E0                 7354 	.byte	-32
   1EA1 FC                 7355 	.byte	-4
   1EA2 FF                 7356 	.byte	-1
   1EA3 1D                 7357 	.byte	29
   1EA4 F7                 7358 	.byte	-9
   1EA5 00                 7359 	.byte	0
   1EA6 05                 7360 	.byte	5
   1EA7 04                 7361 	.byte	4
   1EA8 FF                 7362 	.byte	-1
   1EA9 03                 7363 	.byte	3
   1EAA 0D                 7364 	.byte	13
   1EAB FF                 7365 	.byte	-1
   1EAC FB                 7366 	.byte	-5
   1EAD FC                 7367 	.byte	-4
   1EAE FF                 7368 	.byte	-1
   1EAF FD                 7369 	.byte	-3
   1EB0 F3                 7370 	.byte	-13
   1EB1 FF                 7371 	.byte	-1
   1EB2 05                 7372 	.byte	5
   1EB3 04                 7373 	.byte	4
   1EB4 01                 7374 	.byte	1
                           7375 	.globl _height2FallingFront4
   1EB5                    7376 _height2FallingFront4:
   1EB5 FF                 7377 	.byte	-1
   1EB6 03                 7378 	.byte	3
   1EB7 0E                 7379 	.byte	14
   1EB8 FF                 7380 	.byte	-1
   1EB9 0D                 7381 	.byte	13
   1EBA FB                 7382 	.byte	-5
   1EBB FF                 7383 	.byte	-1
   1EBC FD                 7384 	.byte	-3
   1EBD F3                 7385 	.byte	-13
   1EBE FF                 7386 	.byte	-1
   1EBF F3                 7387 	.byte	-13
   1EC0 04                 7388 	.byte	4
   1EC1 FF                 7389 	.byte	-1
   1EC2 0F                 7390 	.byte	15
   1EC3 06                 7391 	.byte	6
   1EC4 00                 7392 	.byte	0
   1EC5 F4                 7393 	.byte	-12
   1EC6 08                 7394 	.byte	8
   1EC7 FF                 7395 	.byte	-1
   1EC8 0F                 7396 	.byte	15
   1EC9 06                 7397 	.byte	6
   1ECA 00                 7398 	.byte	0
   1ECB FE                 7399 	.byte	-2
   1ECC F5                 7400 	.byte	-11
   1ECD FF                 7401 	.byte	-1
   1ECE 0F                 7402 	.byte	15
   1ECF 06                 7403 	.byte	6
   1ED0 00                 7404 	.byte	0
   1ED1 EE                 7405 	.byte	-18
   1ED2 ED                 7406 	.byte	-19
   1ED3 FF                 7407 	.byte	-1
   1ED4 0F                 7408 	.byte	15
   1ED5 05                 7409 	.byte	5
   1ED6 00                 7410 	.byte	0
   1ED7 F3                 7411 	.byte	-13
   1ED8 05                 7412 	.byte	5
   1ED9 FF                 7413 	.byte	-1
   1EDA 03                 7414 	.byte	3
   1EDB 0E                 7415 	.byte	14
   1EDC FF                 7416 	.byte	-1
   1EDD 0D                 7417 	.byte	13
   1EDE FB                 7418 	.byte	-5
   1EDF FF                 7419 	.byte	-1
   1EE0 FD                 7420 	.byte	-3
   1EE1 F2                 7421 	.byte	-14
   1EE2 FF                 7422 	.byte	-1
   1EE3 F3                 7423 	.byte	-13
   1EE4 05                 7424 	.byte	5
   1EE5 01                 7425 	.byte	1
                           7426 	.globl _height2RisingBack4
   1EE6                    7427 _height2RisingBack4:
   1EE6 00                 7428 	.byte	0
   1EE7 10                 7429 	.byte	16
   1EE8 F5                 7430 	.byte	-11
   1EE9 FF                 7431 	.byte	-1
   1EEA 03                 7432 	.byte	3
   1EEB 0D                 7433 	.byte	13
   1EEC FF                 7434 	.byte	-1
   1EED 0F                 7435 	.byte	15
   1EEE FD                 7436 	.byte	-3
   1EEF FF                 7437 	.byte	-1
   1EF0 FD                 7438 	.byte	-3
   1EF1 F2                 7439 	.byte	-14
   1EF2 FF                 7440 	.byte	-1
   1EF3 F1                 7441 	.byte	-15
   1EF4 04                 7442 	.byte	4
   1EF5 FF                 7443 	.byte	-1
   1EF6 03                 7444 	.byte	3
   1EF7 0A                 7445 	.byte	10
   1EF8 00                 7446 	.byte	0
   1EF9 00                 7447 	.byte	0
   1EFA 03                 7448 	.byte	3
   1EFB FF                 7449 	.byte	-1
   1EFC 03                 7450 	.byte	3
   1EFD 0A                 7451 	.byte	10
   1EFE 00                 7452 	.byte	0
   1EFF 0C                 7453 	.byte	12
   1F00 F3                 7454 	.byte	-13
   1F01 FF                 7455 	.byte	-1
   1F02 03                 7456 	.byte	3
   1F03 09                 7457 	.byte	9
   1F04 00                 7458 	.byte	0
   1F05 FA                 7459 	.byte	-6
   1F06 E9                 7460 	.byte	-23
   1F07 FF                 7461 	.byte	-1
   1F08 03                 7462 	.byte	3
   1F09 0A                 7463 	.byte	10
   1F0A 00                 7464 	.byte	0
   1F0B F1                 7465 	.byte	-15
   1F0C 04                 7466 	.byte	4
   1F0D FF                 7467 	.byte	-1
   1F0E 03                 7468 	.byte	3
   1F0F 0D                 7469 	.byte	13
   1F10 FF                 7470 	.byte	-1
   1F11 0F                 7471 	.byte	15
   1F12 FC                 7472 	.byte	-4
   1F13 FF                 7473 	.byte	-1
   1F14 FD                 7474 	.byte	-3
   1F15 F3                 7475 	.byte	-13
   1F16 FF                 7476 	.byte	-1
   1F17 F1                 7477 	.byte	-15
   1F18 04                 7478 	.byte	4
   1F19 01                 7479 	.byte	1
                           7480 	.globl _depth2RollingLeft4
   1F1A                    7481 _depth2RollingLeft4:
   1F1A FF                 7482 	.byte	-1
   1F1B 09                 7483 	.byte	9
   1F1C 0C                 7484 	.byte	12
   1F1D FF                 7485 	.byte	-1
   1F1E 10                 7486 	.byte	16
   1F1F F4                 7487 	.byte	-12
   1F20 FF                 7488 	.byte	-1
   1F21 F7                 7489 	.byte	-9
   1F22 F5                 7490 	.byte	-11
   1F23 FF                 7491 	.byte	-1
   1F24 F0                 7492 	.byte	-16
   1F25 0B                 7493 	.byte	11
   1F26 FF                 7494 	.byte	-1
   1F27 0A                 7495 	.byte	10
   1F28 FA                 7496 	.byte	-6
   1F29 00                 7497 	.byte	0
   1F2A FF                 7498 	.byte	-1
   1F2B 12                 7499 	.byte	18
   1F2C FF                 7500 	.byte	-1
   1F2D 0A                 7501 	.byte	10
   1F2E F9                 7502 	.byte	-7
   1F2F 00                 7503 	.byte	0
   1F30 06                 7504 	.byte	6
   1F31 FB                 7505 	.byte	-5
   1F32 FF                 7506 	.byte	-1
   1F33 0A                 7507 	.byte	10
   1F34 FA                 7508 	.byte	-6
   1F35 00                 7509 	.byte	0
   1F36 ED                 7510 	.byte	-19
   1F37 FB                 7511 	.byte	-5
   1F38 FF                 7512 	.byte	-1
   1F39 0A                 7513 	.byte	10
   1F3A F9                 7514 	.byte	-7
   1F3B 00                 7515 	.byte	0
   1F3C F0                 7516 	.byte	-16
   1F3D 0C                 7517 	.byte	12
   1F3E FF                 7518 	.byte	-1
   1F3F 09                 7519 	.byte	9
   1F40 0B                 7520 	.byte	11
   1F41 FF                 7521 	.byte	-1
   1F42 10                 7522 	.byte	16
   1F43 F5                 7523 	.byte	-11
   1F44 FF                 7524 	.byte	-1
   1F45 F7                 7525 	.byte	-9
   1F46 F4                 7526 	.byte	-12
   1F47 FF                 7527 	.byte	-1
   1F48 F0                 7528 	.byte	-16
   1F49 0C                 7529 	.byte	12
   1F4A 01                 7530 	.byte	1
                           7531 	.globl _depth2RollingRight4
   1F4B                    7532 _depth2RollingRight4:
   1F4B 00                 7533 	.byte	0
   1F4C 07                 7534 	.byte	7
   1F4D 02                 7535 	.byte	2
   1F4E FF                 7536 	.byte	-1
   1F4F FC                 7537 	.byte	-4
   1F50 0C                 7538 	.byte	12
   1F51 FF                 7539 	.byte	-1
   1F52 10                 7540 	.byte	16
   1F53 F4                 7541 	.byte	-12
   1F54 FF                 7542 	.byte	-1
   1F55 04                 7543 	.byte	4
   1F56 F5                 7544 	.byte	-11
   1F57 FF                 7545 	.byte	-1
   1F58 F0                 7546 	.byte	-16
   1F59 0B                 7547 	.byte	11
   1F5A FF                 7548 	.byte	-1
   1F5B 0D                 7549 	.byte	13
   1F5C 07                 7550 	.byte	7
   1F5D 00                 7551 	.byte	0
   1F5E EF                 7552 	.byte	-17
   1F5F 05                 7553 	.byte	5
   1F60 FF                 7554 	.byte	-1
   1F61 0D                 7555 	.byte	13
   1F62 07                 7556 	.byte	7
   1F63 00                 7557 	.byte	0
   1F64 03                 7558 	.byte	3
   1F65 ED                 7559 	.byte	-19
   1F66 FF                 7560 	.byte	-1
   1F67 0D                 7561 	.byte	13
   1F68 07                 7562 	.byte	7
   1F69 00                 7563 	.byte	0
   1F6A F7                 7564 	.byte	-9
   1F6B EE                 7565 	.byte	-18
   1F6C FF                 7566 	.byte	-1
   1F6D 0D                 7567 	.byte	13
   1F6E 07                 7568 	.byte	7
   1F6F 00                 7569 	.byte	0
   1F70 F0                 7570 	.byte	-16
   1F71 0B                 7571 	.byte	11
   1F72 FF                 7572 	.byte	-1
   1F73 FC                 7573 	.byte	-4
   1F74 0C                 7574 	.byte	12
   1F75 FF                 7575 	.byte	-1
   1F76 10                 7576 	.byte	16
   1F77 F4                 7577 	.byte	-12
   1F78 FF                 7578 	.byte	-1
   1F79 04                 7579 	.byte	4
   1F7A F5                 7580 	.byte	-11
   1F7B FF                 7581 	.byte	-1
   1F7C F0                 7582 	.byte	-16
   1F7D 0B                 7583 	.byte	11
   1F7E 01                 7584 	.byte	1
                           7585 	.globl _width2RollingFront4
   1F7F                    7586 _width2RollingFront4:
   1F7F FF                 7587 	.byte	-1
   1F80 06                 7588 	.byte	6
   1F81 1C                 7589 	.byte	28
   1F82 FF                 7590 	.byte	-1
   1F83 0D                 7591 	.byte	13
   1F84 FB                 7592 	.byte	-5
   1F85 FF                 7593 	.byte	-1
   1F86 FA                 7594 	.byte	-6
   1F87 E5                 7595 	.byte	-27
   1F88 FF                 7596 	.byte	-1
   1F89 F3                 7597 	.byte	-13
   1F8A 04                 7598 	.byte	4
   1F8B FF                 7599 	.byte	-1
   1F8C 07                 7600 	.byte	7
   1F8D 03                 7601 	.byte	3
   1F8E 00                 7602 	.byte	0
   1F8F FF                 7603 	.byte	-1
   1F90 19                 7604 	.byte	25
   1F91 FF                 7605 	.byte	-1
   1F92 07                 7606 	.byte	7
   1F93 03                 7607 	.byte	3
   1F94 00                 7608 	.byte	0
   1F95 06                 7609 	.byte	6
   1F96 F8                 7610 	.byte	-8
   1F97 FF                 7611 	.byte	-1
   1F98 08                 7612 	.byte	8
   1F99 03                 7613 	.byte	3
   1F9A 00                 7614 	.byte	0
   1F9B F2                 7615 	.byte	-14
   1F9C E2                 7616 	.byte	-30
   1F9D FF                 7617 	.byte	-1
   1F9E 08                 7618 	.byte	8
   1F9F 03                 7619 	.byte	3
   1FA0 00                 7620 	.byte	0
   1FA1 F2                 7621 	.byte	-14
   1FA2 04                 7622 	.byte	4
   1FA3 FF                 7623 	.byte	-1
   1FA4 06                 7624 	.byte	6
   1FA5 1C                 7625 	.byte	28
   1FA6 FF                 7626 	.byte	-1
   1FA7 0E                 7627 	.byte	14
   1FA8 FB                 7628 	.byte	-5
   1FA9 FF                 7629 	.byte	-1
   1FAA FA                 7630 	.byte	-6
   1FAB E5                 7631 	.byte	-27
   1FAC FF                 7632 	.byte	-1
   1FAD F2                 7633 	.byte	-14
   1FAE 04                 7634 	.byte	4
   1FAF 01                 7635 	.byte	1
                           7636 	.globl _width2RollingBack4
   1FB0                    7637 _width2RollingBack4:
   1FB0 00                 7638 	.byte	0
   1FB1 08                 7639 	.byte	8
   1FB2 00                 7640 	.byte	0
   1FB3 FF                 7641 	.byte	-1
   1FB4 06                 7642 	.byte	6
   1FB5 1B                 7643 	.byte	27
   1FB6 FF                 7644 	.byte	-1
   1FB7 00                 7645 	.byte	0
   1FB8 FB                 7646 	.byte	-5
   1FB9 FF                 7647 	.byte	-1
   1FBA FA                 7648 	.byte	-6
   1FBB E5                 7649 	.byte	-27
   1FBC FF                 7650 	.byte	-1
   1FBD 00                 7651 	.byte	0
   1FBE 05                 7652 	.byte	5
   1FBF FF                 7653 	.byte	-1
   1FC0 0F                 7654 	.byte	15
   1FC1 FD                 7655 	.byte	-3
   1FC2 00                 7656 	.byte	0
   1FC3 F7                 7657 	.byte	-9
   1FC4 1E                 7658 	.byte	30
   1FC5 FF                 7659 	.byte	-1
   1FC6 0F                 7660 	.byte	15
   1FC7 FD                 7661 	.byte	-3
   1FC8 00                 7662 	.byte	0
   1FC9 F1                 7663 	.byte	-15
   1FCA FE                 7664 	.byte	-2
   1FCB FF                 7665 	.byte	-1
   1FCC 0F                 7666 	.byte	15
   1FCD FD                 7667 	.byte	-3
   1FCE 00                 7668 	.byte	0
   1FCF EB                 7669 	.byte	-21
   1FD0 E8                 7670 	.byte	-24
   1FD1 FF                 7671 	.byte	-1
   1FD2 0F                 7672 	.byte	15
   1FD3 FD                 7673 	.byte	-3
   1FD4 00                 7674 	.byte	0
   1FD5 00                 7675 	.byte	0
   1FD6 05                 7676 	.byte	5
   1FD7 FF                 7677 	.byte	-1
   1FD8 06                 7678 	.byte	6
   1FD9 1B                 7679 	.byte	27
   1FDA FF                 7680 	.byte	-1
   1FDB 00                 7681 	.byte	0
   1FDC FB                 7682 	.byte	-5
   1FDD FF                 7683 	.byte	-1
   1FDE FA                 7684 	.byte	-6
   1FDF E5                 7685 	.byte	-27
   1FE0 FF                 7686 	.byte	-1
   1FE1 00                 7687 	.byte	0
   1FE2 05                 7688 	.byte	5
   1FE3 01                 7689 	.byte	1
                           7690 	.globl _height2FallingLeft5
   1FE4                    7691 _height2FallingLeft5:
   1FE4 FF                 7692 	.byte	-1
   1FE5 0A                 7693 	.byte	10
   1FE6 0B                 7694 	.byte	11
   1FE7 FF                 7695 	.byte	-1
   1FE8 08                 7696 	.byte	8
   1FE9 FA                 7697 	.byte	-6
   1FEA FF                 7698 	.byte	-1
   1FEB F6                 7699 	.byte	-10
   1FEC F6                 7700 	.byte	-10
   1FED FF                 7701 	.byte	-1
   1FEE F8                 7702 	.byte	-8
   1FEF 05                 7703 	.byte	5
   1FF0 FF                 7704 	.byte	-1
   1FF1 11                 7705 	.byte	17
   1FF2 F0                 7706 	.byte	-16
   1FF3 00                 7707 	.byte	0
   1FF4 F9                 7708 	.byte	-7
   1FF5 1B                 7709 	.byte	27
   1FF6 FF                 7710 	.byte	-1
   1FF7 11                 7711 	.byte	17
   1FF8 F0                 7712 	.byte	-16
   1FF9 00                 7713 	.byte	0
   1FFA F7                 7714 	.byte	-9
   1FFB 0A                 7715 	.byte	10
   1FFC FF                 7716 	.byte	-1
   1FFD 11                 7717 	.byte	17
   1FFE F0                 7718 	.byte	-16
   1FFF 00                 7719 	.byte	0
   2000 E5                 7720 	.byte	-27
   2001 06                 7721 	.byte	6
   2002 FF                 7722 	.byte	-1
   2003 11                 7723 	.byte	17
   2004 EF                 7724 	.byte	-17
   2005 00                 7725 	.byte	0
   2006 F8                 7726 	.byte	-8
   2007 06                 7727 	.byte	6
   2008 FF                 7728 	.byte	-1
   2009 0A                 7729 	.byte	10
   200A 0B                 7730 	.byte	11
   200B FF                 7731 	.byte	-1
   200C 08                 7732 	.byte	8
   200D FA                 7733 	.byte	-6
   200E FF                 7734 	.byte	-1
   200F F6                 7735 	.byte	-10
   2010 F5                 7736 	.byte	-11
   2011 FF                 7737 	.byte	-1
   2012 F8                 7738 	.byte	-8
   2013 06                 7739 	.byte	6
   2014 01                 7740 	.byte	1
                           7741 	.globl _height2RisingRight5
   2015                    7742 _height2RisingRight5:
   2015 00                 7743 	.byte	0
   2016 06                 7744 	.byte	6
   2017 1C                 7745 	.byte	28
   2018 FF                 7746 	.byte	-1
   2019 0B                 7747 	.byte	11
   201A 0A                 7748 	.byte	10
   201B FF                 7749 	.byte	-1
   201C 08                 7750 	.byte	8
   201D FA                 7751 	.byte	-6
   201E FF                 7752 	.byte	-1
   201F F5                 7753 	.byte	-11
   2020 F6                 7754 	.byte	-10
   2021 FF                 7755 	.byte	-1
   2022 F8                 7756 	.byte	-8
   2023 06                 7757 	.byte	6
   2024 FF                 7758 	.byte	-1
   2025 0E                 7759 	.byte	14
   2026 EC                 7760 	.byte	-20
   2027 00                 7761 	.byte	0
   2028 FD                 7762 	.byte	-3
   2029 1E                 7763 	.byte	30
   202A FF                 7764 	.byte	-1
   202B 0E                 7765 	.byte	14
   202C EC                 7766 	.byte	-20
   202D 00                 7767 	.byte	0
   202E FA                 7768 	.byte	-6
   202F 0E                 7769 	.byte	14
   2030 FF                 7770 	.byte	-1
   2031 0E                 7771 	.byte	14
   2032 EC                 7772 	.byte	-20
   2033 00                 7773 	.byte	0
   2034 E7                 7774 	.byte	-25
   2035 0A                 7775 	.byte	10
   2036 FF                 7776 	.byte	-1
   2037 0E                 7777 	.byte	14
   2038 EC                 7778 	.byte	-20
   2039 00                 7779 	.byte	0
   203A F8                 7780 	.byte	-8
   203B 06                 7781 	.byte	6
   203C FF                 7782 	.byte	-1
   203D 0B                 7783 	.byte	11
   203E 0A                 7784 	.byte	10
   203F FF                 7785 	.byte	-1
   2040 08                 7786 	.byte	8
   2041 FA                 7787 	.byte	-6
   2042 FF                 7788 	.byte	-1
   2043 F5                 7789 	.byte	-11
   2044 F6                 7790 	.byte	-10
   2045 FF                 7791 	.byte	-1
   2046 F8                 7792 	.byte	-8
   2047 06                 7793 	.byte	6
   2048 01                 7794 	.byte	1
                           7795 	.globl _height2FallingRight5
   2049                    7796 _height2FallingRight5:
   2049 00                 7797 	.byte	0
   204A 09                 7798 	.byte	9
   204B 03                 7799 	.byte	3
   204C FF                 7800 	.byte	-1
   204D FA                 7801 	.byte	-6
   204E 0B                 7802 	.byte	11
   204F FF                 7803 	.byte	-1
   2050 08                 7804 	.byte	8
   2051 FA                 7805 	.byte	-6
   2052 FF                 7806 	.byte	-1
   2053 06                 7807 	.byte	6
   2054 F6                 7808 	.byte	-10
   2055 FF                 7809 	.byte	-1
   2056 F8                 7810 	.byte	-8
   2057 05                 7811 	.byte	5
   2058 FF                 7812 	.byte	-1
   2059 18                 7813 	.byte	24
   205A 11                 7814 	.byte	17
   205B 00                 7815 	.byte	0
   205C E2                 7816 	.byte	-30
   205D FA                 7817 	.byte	-6
   205E FF                 7818 	.byte	-1
   205F 18                 7819 	.byte	24
   2060 11                 7820 	.byte	17
   2061 00                 7821 	.byte	0
   2062 F0                 7822 	.byte	-16
   2063 E9                 7823 	.byte	-23
   2064 FF                 7824 	.byte	-1
   2065 18                 7825 	.byte	24
   2066 11                 7826 	.byte	17
   2067 00                 7827 	.byte	0
   2068 EE                 7828 	.byte	-18
   2069 E5                 7829 	.byte	-27
   206A FF                 7830 	.byte	-1
   206B 18                 7831 	.byte	24
   206C 10                 7832 	.byte	16
   206D 00                 7833 	.byte	0
   206E F8                 7834 	.byte	-8
   206F 06                 7835 	.byte	6
   2070 FF                 7836 	.byte	-1
   2071 FA                 7837 	.byte	-6
   2072 0B                 7838 	.byte	11
   2073 FF                 7839 	.byte	-1
   2074 08                 7840 	.byte	8
   2075 FA                 7841 	.byte	-6
   2076 FF                 7842 	.byte	-1
   2077 06                 7843 	.byte	6
   2078 F5                 7844 	.byte	-11
   2079 FF                 7845 	.byte	-1
   207A F8                 7846 	.byte	-8
   207B 06                 7847 	.byte	6
   207C 01                 7848 	.byte	1
                           7849 	.globl _height2RisingLeft5
   207D                    7850 _height2RisingLeft5:
   207D 00                 7851 	.byte	0
   207E 07                 7852 	.byte	7
   207F F7                 7853 	.byte	-9
   2080 FF                 7854 	.byte	-1
   2081 F9                 7855 	.byte	-7
   2082 09                 7856 	.byte	9
   2083 FF                 7857 	.byte	-1
   2084 08                 7858 	.byte	8
   2085 FB                 7859 	.byte	-5
   2086 FF                 7860 	.byte	-1
   2087 07                 7861 	.byte	7
   2088 F6                 7862 	.byte	-10
   2089 FF                 7863 	.byte	-1
   208A F8                 7864 	.byte	-8
   208B 06                 7865 	.byte	6
   208C FF                 7866 	.byte	-1
   208D 17                 7867 	.byte	23
   208E 13                 7868 	.byte	19
   208F 00                 7869 	.byte	0
   2090 E2                 7870 	.byte	-30
   2091 F6                 7871 	.byte	-10
   2092 FF                 7872 	.byte	-1
   2093 17                 7873 	.byte	23
   2094 14                 7874 	.byte	20
   2095 00                 7875 	.byte	0
   2096 F1                 7876 	.byte	-15
   2097 E7                 7877 	.byte	-25
   2098 FF                 7878 	.byte	-1
   2099 17                 7879 	.byte	23
   209A 13                 7880 	.byte	19
   209B 00                 7881 	.byte	0
   209C F0                 7882 	.byte	-16
   209D E3                 7883 	.byte	-29
   209E FF                 7884 	.byte	-1
   209F 17                 7885 	.byte	23
   20A0 13                 7886 	.byte	19
   20A1 00                 7887 	.byte	0
   20A2 F8                 7888 	.byte	-8
   20A3 06                 7889 	.byte	6
   20A4 FF                 7890 	.byte	-1
   20A5 F9                 7891 	.byte	-7
   20A6 0A                 7892 	.byte	10
   20A7 FF                 7893 	.byte	-1
   20A8 08                 7894 	.byte	8
   20A9 FA                 7895 	.byte	-6
   20AA FF                 7896 	.byte	-1
   20AB 07                 7897 	.byte	7
   20AC F6                 7898 	.byte	-10
   20AD FF                 7899 	.byte	-1
   20AE F8                 7900 	.byte	-8
   20AF 06                 7901 	.byte	6
   20B0 01                 7902 	.byte	1
                           7903 	.globl _height2FallingBack5
   20B1                    7904 _height2FallingBack5:
   20B1 00                 7905 	.byte	0
   20B2 0A                 7906 	.byte	10
   20B3 00                 7907 	.byte	0
   20B4 FF                 7908 	.byte	-1
   20B5 03                 7909 	.byte	3
   20B6 0D                 7910 	.byte	13
   20B7 FF                 7911 	.byte	-1
   20B8 FE                 7912 	.byte	-2
   20B9 FB                 7913 	.byte	-5
   20BA FF                 7914 	.byte	-1
   20BB FD                 7915 	.byte	-3
   20BC F3                 7916 	.byte	-13
   20BD FF                 7917 	.byte	-1
   20BE 02                 7918 	.byte	2
   20BF 05                 7919 	.byte	5
   20C0 FF                 7920 	.byte	-1
   20C1 1E                 7921 	.byte	30
   20C2 F8                 7922 	.byte	-8
   20C3 00                 7923 	.byte	0
   20C4 E5                 7924 	.byte	-27
   20C5 15                 7925 	.byte	21
   20C6 FF                 7926 	.byte	-1
   20C7 1E                 7927 	.byte	30
   20C8 F8                 7928 	.byte	-8
   20C9 00                 7929 	.byte	0
   20CA E0                 7930 	.byte	-32
   20CB 03                 7931 	.byte	3
   20CC FF                 7932 	.byte	-1
   20CD 1E                 7933 	.byte	30
   20CE F9                 7934 	.byte	-7
   20CF 00                 7935 	.byte	0
   20D0 DF                 7936 	.byte	-33
   20D1 FA                 7937 	.byte	-6
   20D2 FF                 7938 	.byte	-1
   20D3 1E                 7939 	.byte	30
   20D4 F9                 7940 	.byte	-7
   20D5 00                 7941 	.byte	0
   20D6 02                 7942 	.byte	2
   20D7 04                 7943 	.byte	4
   20D8 FF                 7944 	.byte	-1
   20D9 03                 7945 	.byte	3
   20DA 0D                 7946 	.byte	13
   20DB FF                 7947 	.byte	-1
   20DC FE                 7948 	.byte	-2
   20DD FC                 7949 	.byte	-4
   20DE FF                 7950 	.byte	-1
   20DF FD                 7951 	.byte	-3
   20E0 F3                 7952 	.byte	-13
   20E1 FF                 7953 	.byte	-1
   20E2 02                 7954 	.byte	2
   20E3 04                 7955 	.byte	4
   20E4 01                 7956 	.byte	1
                           7957 	.globl _height2RisingFront5
   20E5                    7958 _height2RisingFront5:
   20E5 00                 7959 	.byte	0
   20E6 04                 7960 	.byte	4
   20E7 04                 7961 	.byte	4
   20E8 FF                 7962 	.byte	-1
   20E9 03                 7963 	.byte	3
   20EA 0E                 7964 	.byte	14
   20EB FF                 7965 	.byte	-1
   20EC FC                 7966 	.byte	-4
   20ED FC                 7967 	.byte	-4
   20EE FF                 7968 	.byte	-1
   20EF FD                 7969 	.byte	-3
   20F0 F2                 7970 	.byte	-14
   20F1 FF                 7971 	.byte	-1
   20F2 04                 7972 	.byte	4
   20F3 04                 7973 	.byte	4
   20F4 FF                 7974 	.byte	-1
   20F5 1D                 7975 	.byte	29
   20F6 F9                 7976 	.byte	-7
   20F7 00                 7977 	.byte	0
   20F8 E6                 7978 	.byte	-26
   20F9 15                 7979 	.byte	21
   20FA FF                 7980 	.byte	-1
   20FB 1D                 7981 	.byte	29
   20FC F8                 7982 	.byte	-8
   20FD 00                 7983 	.byte	0
   20FE DF                 7984 	.byte	-33
   20FF 04                 7985 	.byte	4
   2100 FF                 7986 	.byte	-1
   2101 1E                 7987 	.byte	30
   2102 F8                 7988 	.byte	-8
   2103 00                 7989 	.byte	0
   2104 DF                 7990 	.byte	-33
   2105 FA                 7991 	.byte	-6
   2106 FF                 7992 	.byte	-1
   2107 1E                 7993 	.byte	30
   2108 F9                 7994 	.byte	-7
   2109 00                 7995 	.byte	0
   210A 03                 7996 	.byte	3
   210B 04                 7997 	.byte	4
   210C FF                 7998 	.byte	-1
   210D 03                 7999 	.byte	3
   210E 0D                 8000 	.byte	13
   210F FF                 8001 	.byte	-1
   2110 FD                 8002 	.byte	-3
   2111 FC                 8003 	.byte	-4
   2112 FF                 8004 	.byte	-1
   2113 FD                 8005 	.byte	-3
   2114 F3                 8006 	.byte	-13
   2115 FF                 8007 	.byte	-1
   2116 03                 8008 	.byte	3
   2117 04                 8009 	.byte	4
   2118 01                 8010 	.byte	1
                           8011 	.globl _height2FallingFront5
   2119                    8012 _height2FallingFront5:
   2119 FF                 8013 	.byte	-1
   211A 03                 8014 	.byte	3
   211B 0E                 8015 	.byte	14
   211C FF                 8016 	.byte	-1
   211D 0E                 8017 	.byte	14
   211E FB                 8018 	.byte	-5
   211F FF                 8019 	.byte	-1
   2120 FD                 8020 	.byte	-3
   2121 F3                 8021 	.byte	-13
   2122 FF                 8022 	.byte	-1
   2123 F2                 8023 	.byte	-14
   2124 04                 8024 	.byte	4
   2125 FF                 8025 	.byte	-1
   2126 0B                 8026 	.byte	11
   2127 07                 8027 	.byte	7
   2128 00                 8028 	.byte	0
   2129 F8                 8029 	.byte	-8
   212A 07                 8030 	.byte	7
   212B FF                 8031 	.byte	-1
   212C 0B                 8032 	.byte	11
   212D 07                 8033 	.byte	7
   212E 00                 8034 	.byte	0
   212F 03                 8035 	.byte	3
   2130 F4                 8036 	.byte	-12
   2131 FF                 8037 	.byte	-1
   2132 0B                 8038 	.byte	11
   2133 08                 8039 	.byte	8
   2134 00                 8040 	.byte	0
   2135 F2                 8041 	.byte	-14
   2136 EB                 8042 	.byte	-21
   2137 FF                 8043 	.byte	-1
   2138 0B                 8044 	.byte	11
   2139 07                 8045 	.byte	7
   213A 00                 8046 	.byte	0
   213B F2                 8047 	.byte	-14
   213C 04                 8048 	.byte	4
   213D FF                 8049 	.byte	-1
   213E 03                 8050 	.byte	3
   213F 0E                 8051 	.byte	14
   2140 FF                 8052 	.byte	-1
   2141 0E                 8053 	.byte	14
   2142 FC                 8054 	.byte	-4
   2143 FF                 8055 	.byte	-1
   2144 FD                 8056 	.byte	-3
   2145 F2                 8057 	.byte	-14
   2146 FF                 8058 	.byte	-1
   2147 F2                 8059 	.byte	-14
   2148 04                 8060 	.byte	4
   2149 01                 8061 	.byte	1
                           8062 	.globl _height2RisingBack5
   214A                    8063 _height2RisingBack5:
   214A 00                 8064 	.byte	0
   214B 10                 8065 	.byte	16
   214C F5                 8066 	.byte	-11
   214D FF                 8067 	.byte	-1
   214E 03                 8068 	.byte	3
   214F 0D                 8069 	.byte	13
   2150 FF                 8070 	.byte	-1
   2151 0F                 8071 	.byte	15
   2152 FD                 8072 	.byte	-3
   2153 FF                 8073 	.byte	-1
   2154 FD                 8074 	.byte	-3
   2155 F2                 8075 	.byte	-14
   2156 FF                 8076 	.byte	-1
   2157 F1                 8077 	.byte	-15
   2158 04                 8078 	.byte	4
   2159 FF                 8079 	.byte	-1
   215A 07                 8080 	.byte	7
   215B 08                 8081 	.byte	8
   215C 00                 8082 	.byte	0
   215D FC                 8083 	.byte	-4
   215E 05                 8084 	.byte	5
   215F FF                 8085 	.byte	-1
   2160 07                 8086 	.byte	7
   2161 08                 8087 	.byte	8
   2162 00                 8088 	.byte	0
   2163 08                 8089 	.byte	8
   2164 F5                 8090 	.byte	-11
   2165 FF                 8091 	.byte	-1
   2166 07                 8092 	.byte	7
   2167 07                 8093 	.byte	7
   2168 00                 8094 	.byte	0
   2169 F6                 8095 	.byte	-10
   216A EB                 8096 	.byte	-21
   216B FF                 8097 	.byte	-1
   216C 07                 8098 	.byte	7
   216D 08                 8099 	.byte	8
   216E 00                 8100 	.byte	0
   216F F1                 8101 	.byte	-15
   2170 04                 8102 	.byte	4
   2171 FF                 8103 	.byte	-1
   2172 03                 8104 	.byte	3
   2173 0D                 8105 	.byte	13
   2174 FF                 8106 	.byte	-1
   2175 0F                 8107 	.byte	15
   2176 FC                 8108 	.byte	-4
   2177 FF                 8109 	.byte	-1
   2178 FD                 8110 	.byte	-3
   2179 F3                 8111 	.byte	-13
   217A FF                 8112 	.byte	-1
   217B F1                 8113 	.byte	-15
   217C 04                 8114 	.byte	4
   217D 01                 8115 	.byte	1
                           8116 	.globl _depth2RollingLeft5
   217E                    8117 _depth2RollingLeft5:
   217E FF                 8118 	.byte	-1
   217F 0A                 8119 	.byte	10
   2180 0B                 8120 	.byte	11
   2181 FF                 8121 	.byte	-1
   2182 10                 8122 	.byte	16
   2183 F5                 8123 	.byte	-11
   2184 FF                 8124 	.byte	-1
   2185 F6                 8125 	.byte	-10
   2186 F5                 8126 	.byte	-11
   2187 FF                 8127 	.byte	-1
   2188 F0                 8128 	.byte	-16
   2189 0B                 8129 	.byte	11
   218A FF                 8130 	.byte	-1
   218B 08                 8131 	.byte	8
   218C F8                 8132 	.byte	-8
   218D 00                 8133 	.byte	0
   218E 02                 8134 	.byte	2
   218F 13                 8135 	.byte	19
   2190 FF                 8136 	.byte	-1
   2191 09                 8137 	.byte	9
   2192 F8                 8138 	.byte	-8
   2193 00                 8139 	.byte	0
   2194 07                 8140 	.byte	7
   2195 FD                 8141 	.byte	-3
   2196 FF                 8142 	.byte	-1
   2197 09                 8143 	.byte	9
   2198 F8                 8144 	.byte	-8
   2199 00                 8145 	.byte	0
   219A ED                 8146 	.byte	-19
   219B FD                 8147 	.byte	-3
   219C FF                 8148 	.byte	-1
   219D 08                 8149 	.byte	8
   219E F7                 8150 	.byte	-9
   219F 00                 8151 	.byte	0
   21A0 F0                 8152 	.byte	-16
   21A1 0C                 8153 	.byte	12
   21A2 FF                 8154 	.byte	-1
   21A3 0B                 8155 	.byte	11
   21A4 0B                 8156 	.byte	11
   21A5 FF                 8157 	.byte	-1
   21A6 10                 8158 	.byte	16
   21A7 F5                 8159 	.byte	-11
   21A8 FF                 8160 	.byte	-1
   21A9 F5                 8161 	.byte	-11
   21AA F4                 8162 	.byte	-12
   21AB FF                 8163 	.byte	-1
   21AC F0                 8164 	.byte	-16
   21AD 0C                 8165 	.byte	12
   21AE 01                 8166 	.byte	1
                           8167 	.globl _depth2RollingRight5
   21AF                    8168 _depth2RollingRight5:
   21AF 00                 8169 	.byte	0
   21B0 09                 8170 	.byte	9
   21B1 03                 8171 	.byte	3
   21B2 FF                 8172 	.byte	-1
   21B3 FA                 8173 	.byte	-6
   21B4 0B                 8174 	.byte	11
   21B5 FF                 8175 	.byte	-1
   21B6 10                 8176 	.byte	16
   21B7 F4                 8177 	.byte	-12
   21B8 FF                 8178 	.byte	-1
   21B9 06                 8179 	.byte	6
   21BA F6                 8180 	.byte	-10
   21BB FF                 8181 	.byte	-1
   21BC F0                 8182 	.byte	-16
   21BD 0B                 8183 	.byte	11
   21BE FF                 8184 	.byte	-1
   21BF 0C                 8185 	.byte	12
   21C0 08                 8186 	.byte	8
   21C1 00                 8187 	.byte	0
   21C2 EE                 8188 	.byte	-18
   21C3 03                 8189 	.byte	3
   21C4 FF                 8190 	.byte	-1
   21C5 0C                 8191 	.byte	12
   21C6 09                 8192 	.byte	9
   21C7 00                 8193 	.byte	0
   21C8 04                 8194 	.byte	4
   21C9 EB                 8195 	.byte	-21
   21CA FF                 8196 	.byte	-1
   21CB 0C                 8197 	.byte	12
   21CC 09                 8198 	.byte	9
   21CD 00                 8199 	.byte	0
   21CE FA                 8200 	.byte	-6
   21CF ED                 8201 	.byte	-19
   21D0 FF                 8202 	.byte	-1
   21D1 0C                 8203 	.byte	12
   21D2 08                 8204 	.byte	8
   21D3 00                 8205 	.byte	0
   21D4 F0                 8206 	.byte	-16
   21D5 0B                 8207 	.byte	11
   21D6 FF                 8208 	.byte	-1
   21D7 FA                 8209 	.byte	-6
   21D8 0C                 8210 	.byte	12
   21D9 FF                 8211 	.byte	-1
   21DA 10                 8212 	.byte	16
   21DB F4                 8213 	.byte	-12
   21DC FF                 8214 	.byte	-1
   21DD 06                 8215 	.byte	6
   21DE F5                 8216 	.byte	-11
   21DF FF                 8217 	.byte	-1
   21E0 F0                 8218 	.byte	-16
   21E1 0B                 8219 	.byte	11
   21E2 01                 8220 	.byte	1
                           8221 	.globl _width2RollingFront5
   21E3                    8222 _width2RollingFront5:
   21E3 FF                 8223 	.byte	-1
   21E4 06                 8224 	.byte	6
   21E5 1C                 8225 	.byte	28
   21E6 FF                 8226 	.byte	-1
   21E7 0E                 8227 	.byte	14
   21E8 FB                 8228 	.byte	-5
   21E9 FF                 8229 	.byte	-1
   21EA FA                 8230 	.byte	-6
   21EB E5                 8231 	.byte	-27
   21EC FF                 8232 	.byte	-1
   21ED F2                 8233 	.byte	-14
   21EE 04                 8234 	.byte	4
   21EF FF                 8235 	.byte	-1
   21F0 05                 8236 	.byte	5
   21F1 04                 8237 	.byte	4
   21F2 00                 8238 	.byte	0
   21F3 01                 8239 	.byte	1
   21F4 18                 8240 	.byte	24
   21F5 FF                 8241 	.byte	-1
   21F6 05                 8242 	.byte	5
   21F7 04                 8243 	.byte	4
   21F8 00                 8244 	.byte	0
   21F9 09                 8245 	.byte	9
   21FA F7                 8246 	.byte	-9
   21FB FF                 8247 	.byte	-1
   21FC 06                 8248 	.byte	6
   21FD 04                 8249 	.byte	4
   21FE 00                 8250 	.byte	0
   21FF F4                 8251 	.byte	-12
   2200 E1                 8252 	.byte	-31
   2201 FF                 8253 	.byte	-1
   2202 06                 8254 	.byte	6
   2203 04                 8255 	.byte	4
   2204 00                 8256 	.byte	0
   2205 F1                 8257 	.byte	-15
   2206 04                 8258 	.byte	4
   2207 FF                 8259 	.byte	-1
   2208 06                 8260 	.byte	6
   2209 1C                 8261 	.byte	28
   220A FF                 8262 	.byte	-1
   220B 0F                 8263 	.byte	15
   220C FB                 8264 	.byte	-5
   220D FF                 8265 	.byte	-1
   220E FA                 8266 	.byte	-6
   220F E5                 8267 	.byte	-27
   2210 FF                 8268 	.byte	-1
   2211 F1                 8269 	.byte	-15
   2212 04                 8270 	.byte	4
   2213 01                 8271 	.byte	1
                           8272 	.globl _width2RollingBack5
   2214                    8273 _width2RollingBack5:
   2214 00                 8274 	.byte	0
   2215 0A                 8275 	.byte	10
   2216 00                 8276 	.byte	0
   2217 FF                 8277 	.byte	-1
   2218 06                 8278 	.byte	6
   2219 1B                 8279 	.byte	27
   221A FF                 8280 	.byte	-1
   221B FE                 8281 	.byte	-2
   221C FB                 8282 	.byte	-5
   221D FF                 8283 	.byte	-1
   221E FA                 8284 	.byte	-6
   221F E5                 8285 	.byte	-27
   2220 FF                 8286 	.byte	-1
   2221 02                 8287 	.byte	2
   2222 05                 8288 	.byte	5
   2223 FF                 8289 	.byte	-1
   2224 0F                 8290 	.byte	15
   2225 FC                 8291 	.byte	-4
   2226 00                 8292 	.byte	0
   2227 F7                 8293 	.byte	-9
   2228 1F                 8294 	.byte	31
   2229 FF                 8295 	.byte	-1
   222A 0F                 8296 	.byte	15
   222B FC                 8297 	.byte	-4
   222C 00                 8298 	.byte	0
   222D EF                 8299 	.byte	-17
   222E FF                 8300 	.byte	-1
   222F FF                 8301 	.byte	-1
   2230 0F                 8302 	.byte	15
   2231 FC                 8303 	.byte	-4
   2232 00                 8304 	.byte	0
   2233 EB                 8305 	.byte	-21
   2234 E9                 8306 	.byte	-23
   2235 FF                 8307 	.byte	-1
   2236 0F                 8308 	.byte	15
   2237 FC                 8309 	.byte	-4
   2238 00                 8310 	.byte	0
   2239 02                 8311 	.byte	2
   223A 05                 8312 	.byte	5
   223B FF                 8313 	.byte	-1
   223C 06                 8314 	.byte	6
   223D 1B                 8315 	.byte	27
   223E FF                 8316 	.byte	-1
   223F FE                 8317 	.byte	-2
   2240 FB                 8318 	.byte	-5
   2241 FF                 8319 	.byte	-1
   2242 FA                 8320 	.byte	-6
   2243 E5                 8321 	.byte	-27
   2244 FF                 8322 	.byte	-1
   2245 02                 8323 	.byte	2
   2246 05                 8324 	.byte	5
   2247 01                 8325 	.byte	1
                           8326 	.globl _height2FallingLeft6
   2248                    8327 _height2FallingLeft6:
   2248 FF                 8328 	.byte	-1
   2249 0B                 8329 	.byte	11
   224A 0A                 8330 	.byte	10
   224B FF                 8331 	.byte	-1
   224C 08                 8332 	.byte	8
   224D FA                 8333 	.byte	-6
   224E FF                 8334 	.byte	-1
   224F F5                 8335 	.byte	-11
   2250 F7                 8336 	.byte	-9
   2251 FF                 8337 	.byte	-1
   2252 F8                 8338 	.byte	-8
   2253 05                 8339 	.byte	5
   2254 FF                 8340 	.byte	-1
   2255 0E                 8341 	.byte	14
   2256 ED                 8342 	.byte	-19
   2257 00                 8343 	.byte	0
   2258 FD                 8344 	.byte	-3
   2259 1D                 8345 	.byte	29
   225A FF                 8346 	.byte	-1
   225B 0E                 8347 	.byte	14
   225C ED                 8348 	.byte	-19
   225D 00                 8349 	.byte	0
   225E FA                 8350 	.byte	-6
   225F 0D                 8351 	.byte	13
   2260 FF                 8352 	.byte	-1
   2261 0E                 8353 	.byte	14
   2262 ED                 8354 	.byte	-19
   2263 00                 8355 	.byte	0
   2264 E7                 8356 	.byte	-25
   2265 0A                 8357 	.byte	10
   2266 FF                 8358 	.byte	-1
   2267 0E                 8359 	.byte	14
   2268 EC                 8360 	.byte	-20
   2269 00                 8361 	.byte	0
   226A F8                 8362 	.byte	-8
   226B 06                 8363 	.byte	6
   226C FF                 8364 	.byte	-1
   226D 0B                 8365 	.byte	11
   226E 0A                 8366 	.byte	10
   226F FF                 8367 	.byte	-1
   2270 08                 8368 	.byte	8
   2271 FA                 8369 	.byte	-6
   2272 FF                 8370 	.byte	-1
   2273 F5                 8371 	.byte	-11
   2274 F6                 8372 	.byte	-10
   2275 FF                 8373 	.byte	-1
   2276 F8                 8374 	.byte	-8
   2277 06                 8375 	.byte	6
   2278 01                 8376 	.byte	1
                           8377 	.globl _height2RisingRight6
   2279                    8378 _height2RisingRight6:
   2279 00                 8379 	.byte	0
   227A 06                 8380 	.byte	6
   227B 1C                 8381 	.byte	28
   227C FF                 8382 	.byte	-1
   227D 0A                 8383 	.byte	10
   227E 0B                 8384 	.byte	11
   227F FF                 8385 	.byte	-1
   2280 08                 8386 	.byte	8
   2281 FA                 8387 	.byte	-6
   2282 FF                 8388 	.byte	-1
   2283 F6                 8389 	.byte	-10
   2284 F5                 8390 	.byte	-11
   2285 FF                 8391 	.byte	-1
   2286 F8                 8392 	.byte	-8
   2287 06                 8393 	.byte	6
   2288 FF                 8394 	.byte	-1
   2289 11                 8395 	.byte	17
   228A EF                 8396 	.byte	-17
   228B 00                 8397 	.byte	0
   228C F9                 8398 	.byte	-7
   228D 1C                 8399 	.byte	28
   228E FF                 8400 	.byte	-1
   228F 11                 8401 	.byte	17
   2290 EF                 8402 	.byte	-17
   2291 00                 8403 	.byte	0
   2292 F7                 8404 	.byte	-9
   2293 0B                 8405 	.byte	11
   2294 FF                 8406 	.byte	-1
   2295 11                 8407 	.byte	17
   2296 EF                 8408 	.byte	-17
   2297 00                 8409 	.byte	0
   2298 E5                 8410 	.byte	-27
   2299 06                 8411 	.byte	6
   229A FF                 8412 	.byte	-1
   229B 11                 8413 	.byte	17
   229C EF                 8414 	.byte	-17
   229D 00                 8415 	.byte	0
   229E F8                 8416 	.byte	-8
   229F 06                 8417 	.byte	6
   22A0 FF                 8418 	.byte	-1
   22A1 0A                 8419 	.byte	10
   22A2 0B                 8420 	.byte	11
   22A3 FF                 8421 	.byte	-1
   22A4 08                 8422 	.byte	8
   22A5 FA                 8423 	.byte	-6
   22A6 FF                 8424 	.byte	-1
   22A7 F6                 8425 	.byte	-10
   22A8 F5                 8426 	.byte	-11
   22A9 FF                 8427 	.byte	-1
   22AA F8                 8428 	.byte	-8
   22AB 06                 8429 	.byte	6
   22AC 01                 8430 	.byte	1
                           8431 	.globl _height2FallingRight6
   22AD                    8432 _height2FallingRight6:
   22AD 00                 8433 	.byte	0
   22AE 0A                 8434 	.byte	10
   22AF 04                 8435 	.byte	4
   22B0 FF                 8436 	.byte	-1
   22B1 F9                 8437 	.byte	-7
   22B2 0A                 8438 	.byte	10
   22B3 FF                 8439 	.byte	-1
   22B4 08                 8440 	.byte	8
   22B5 FA                 8441 	.byte	-6
   22B6 FF                 8442 	.byte	-1
   22B7 07                 8443 	.byte	7
   22B8 F7                 8444 	.byte	-9
   22B9 FF                 8445 	.byte	-1
   22BA F8                 8446 	.byte	-8
   22BB 05                 8447 	.byte	5
   22BC FF                 8448 	.byte	-1
   22BD 17                 8449 	.byte	23
   22BE 14                 8450 	.byte	20
   22BF 00                 8451 	.byte	0
   22C0 E2                 8452 	.byte	-30
   22C1 F6                 8453 	.byte	-10
   22C2 FF                 8454 	.byte	-1
   22C3 17                 8455 	.byte	23
   22C4 14                 8456 	.byte	20
   22C5 00                 8457 	.byte	0
   22C6 F1                 8458 	.byte	-15
   22C7 E6                 8459 	.byte	-26
   22C8 FF                 8460 	.byte	-1
   22C9 17                 8461 	.byte	23
   22CA 14                 8462 	.byte	20
   22CB 00                 8463 	.byte	0
   22CC F0                 8464 	.byte	-16
   22CD E3                 8465 	.byte	-29
   22CE FF                 8466 	.byte	-1
   22CF 17                 8467 	.byte	23
   22D0 13                 8468 	.byte	19
   22D1 00                 8469 	.byte	0
   22D2 F8                 8470 	.byte	-8
   22D3 06                 8471 	.byte	6
   22D4 FF                 8472 	.byte	-1
   22D5 F9                 8473 	.byte	-7
   22D6 0A                 8474 	.byte	10
   22D7 FF                 8475 	.byte	-1
   22D8 08                 8476 	.byte	8
   22D9 FA                 8477 	.byte	-6
   22DA FF                 8478 	.byte	-1
   22DB 07                 8479 	.byte	7
   22DC F6                 8480 	.byte	-10
   22DD FF                 8481 	.byte	-1
   22DE F8                 8482 	.byte	-8
   22DF 06                 8483 	.byte	6
   22E0 01                 8484 	.byte	1
                           8485 	.globl _height2RisingLeft6
   22E1                    8486 _height2RisingLeft6:
   22E1 00                 8487 	.byte	0
   22E2 06                 8488 	.byte	6
   22E3 F6                 8489 	.byte	-10
   22E4 FF                 8490 	.byte	-1
   22E5 FA                 8491 	.byte	-6
   22E6 0A                 8492 	.byte	10
   22E7 FF                 8493 	.byte	-1
   22E8 08                 8494 	.byte	8
   22E9 FB                 8495 	.byte	-5
   22EA FF                 8496 	.byte	-1
   22EB 06                 8497 	.byte	6
   22EC F5                 8498 	.byte	-11
   22ED FF                 8499 	.byte	-1
   22EE F8                 8500 	.byte	-8
   22EF 06                 8501 	.byte	6
   22F0 FF                 8502 	.byte	-1
   22F1 18                 8503 	.byte	24
   22F2 10                 8504 	.byte	16
   22F3 00                 8505 	.byte	0
   22F4 E2                 8506 	.byte	-30
   22F5 FA                 8507 	.byte	-6
   22F6 FF                 8508 	.byte	-1
   22F7 18                 8509 	.byte	24
   22F8 11                 8510 	.byte	17
   22F9 00                 8511 	.byte	0
   22FA F0                 8512 	.byte	-16
   22FB EA                 8513 	.byte	-22
   22FC FF                 8514 	.byte	-1
   22FD 18                 8515 	.byte	24
   22FE 10                 8516 	.byte	16
   22FF 00                 8517 	.byte	0
   2300 EE                 8518 	.byte	-18
   2301 E5                 8519 	.byte	-27
   2302 FF                 8520 	.byte	-1
   2303 18                 8521 	.byte	24
   2304 10                 8522 	.byte	16
   2305 00                 8523 	.byte	0
   2306 F8                 8524 	.byte	-8
   2307 06                 8525 	.byte	6
   2308 FF                 8526 	.byte	-1
   2309 FA                 8527 	.byte	-6
   230A 0B                 8528 	.byte	11
   230B FF                 8529 	.byte	-1
   230C 08                 8530 	.byte	8
   230D FA                 8531 	.byte	-6
   230E FF                 8532 	.byte	-1
   230F 06                 8533 	.byte	6
   2310 F5                 8534 	.byte	-11
   2311 FF                 8535 	.byte	-1
   2312 F8                 8536 	.byte	-8
   2313 06                 8537 	.byte	6
   2314 01                 8538 	.byte	1
                           8539 	.globl _height2FallingBack6
   2315                    8540 _height2FallingBack6:
   2315 00                 8541 	.byte	0
   2316 0C                 8542 	.byte	12
   2317 FF                 8543 	.byte	-1
   2318 FF                 8544 	.byte	-1
   2319 03                 8545 	.byte	3
   231A 0D                 8546 	.byte	13
   231B FF                 8547 	.byte	-1
   231C FC                 8548 	.byte	-4
   231D FC                 8549 	.byte	-4
   231E FF                 8550 	.byte	-1
   231F FD                 8551 	.byte	-3
   2320 F3                 8552 	.byte	-13
   2321 FF                 8553 	.byte	-1
   2322 04                 8554 	.byte	4
   2323 04                 8555 	.byte	4
   2324 FF                 8556 	.byte	-1
   2325 1D                 8557 	.byte	29
   2326 F8                 8558 	.byte	-8
   2327 00                 8559 	.byte	0
   2328 E6                 8560 	.byte	-26
   2329 15                 8561 	.byte	21
   232A FF                 8562 	.byte	-1
   232B 1D                 8563 	.byte	29
   232C F8                 8564 	.byte	-8
   232D 00                 8565 	.byte	0
   232E DF                 8566 	.byte	-33
   232F 04                 8567 	.byte	4
   2330 FF                 8568 	.byte	-1
   2331 1E                 8569 	.byte	30
   2332 F8                 8570 	.byte	-8
   2333 00                 8571 	.byte	0
   2334 DF                 8572 	.byte	-33
   2335 FB                 8573 	.byte	-5
   2336 FF                 8574 	.byte	-1
   2337 1E                 8575 	.byte	30
   2338 F8                 8576 	.byte	-8
   2339 00                 8577 	.byte	0
   233A 03                 8578 	.byte	3
   233B 04                 8579 	.byte	4
   233C FF                 8580 	.byte	-1
   233D 03                 8581 	.byte	3
   233E 0D                 8582 	.byte	13
   233F FF                 8583 	.byte	-1
   2340 FD                 8584 	.byte	-3
   2341 FC                 8585 	.byte	-4
   2342 FF                 8586 	.byte	-1
   2343 FD                 8587 	.byte	-3
   2344 F3                 8588 	.byte	-13
   2345 FF                 8589 	.byte	-1
   2346 03                 8590 	.byte	3
   2347 04                 8591 	.byte	4
   2348 01                 8592 	.byte	1
                           8593 	.globl _height2RisingFront6
   2349                    8594 _height2RisingFront6:
   2349 00                 8595 	.byte	0
   234A 02                 8596 	.byte	2
   234B 05                 8597 	.byte	5
   234C FF                 8598 	.byte	-1
   234D 03                 8599 	.byte	3
   234E 0E                 8600 	.byte	14
   234F FF                 8601 	.byte	-1
   2350 FE                 8602 	.byte	-2
   2351 FB                 8603 	.byte	-5
   2352 FF                 8604 	.byte	-1
   2353 FD                 8605 	.byte	-3
   2354 F2                 8606 	.byte	-14
   2355 FF                 8607 	.byte	-1
   2356 02                 8608 	.byte	2
   2357 05                 8609 	.byte	5
   2358 FF                 8610 	.byte	-1
   2359 1E                 8611 	.byte	30
   235A F9                 8612 	.byte	-7
   235B 00                 8613 	.byte	0
   235C E5                 8614 	.byte	-27
   235D 15                 8615 	.byte	21
   235E FF                 8616 	.byte	-1
   235F 1E                 8617 	.byte	30
   2360 F8                 8618 	.byte	-8
   2361 00                 8619 	.byte	0
   2362 E0                 8620 	.byte	-32
   2363 03                 8621 	.byte	3
   2364 FF                 8622 	.byte	-1
   2365 1E                 8623 	.byte	30
   2366 F9                 8624 	.byte	-7
   2367 00                 8625 	.byte	0
   2368 DF                 8626 	.byte	-33
   2369 F9                 8627 	.byte	-7
   236A FF                 8628 	.byte	-1
   236B 1E                 8629 	.byte	30
   236C FA                 8630 	.byte	-6
   236D 00                 8631 	.byte	0
   236E 02                 8632 	.byte	2
   236F 04                 8633 	.byte	4
   2370 FF                 8634 	.byte	-1
   2371 03                 8635 	.byte	3
   2372 0D                 8636 	.byte	13
   2373 FF                 8637 	.byte	-1
   2374 FE                 8638 	.byte	-2
   2375 FC                 8639 	.byte	-4
   2376 FF                 8640 	.byte	-1
   2377 FD                 8641 	.byte	-3
   2378 F3                 8642 	.byte	-13
   2379 FF                 8643 	.byte	-1
   237A 02                 8644 	.byte	2
   237B 04                 8645 	.byte	4
   237C 01                 8646 	.byte	1
                           8647 	.globl _height2FallingFront6
   237D                    8648 _height2FallingFront6:
   237D FF                 8649 	.byte	-1
   237E 03                 8650 	.byte	3
   237F 0E                 8651 	.byte	14
   2380 FF                 8652 	.byte	-1
   2381 0F                 8653 	.byte	15
   2382 FC                 8654 	.byte	-4
   2383 FF                 8655 	.byte	-1
   2384 FD                 8656 	.byte	-3
   2385 F3                 8657 	.byte	-13
   2386 FF                 8658 	.byte	-1
   2387 F1                 8659 	.byte	-15
   2388 03                 8660 	.byte	3
   2389 FF                 8661 	.byte	-1
   238A 07                 8662 	.byte	7
   238B 08                 8663 	.byte	8
   238C 00                 8664 	.byte	0
   238D FC                 8665 	.byte	-4
   238E 06                 8666 	.byte	6
   238F FF                 8667 	.byte	-1
   2390 07                 8668 	.byte	7
   2391 08                 8669 	.byte	8
   2392 00                 8670 	.byte	0
   2393 08                 8671 	.byte	8
   2394 F4                 8672 	.byte	-12
   2395 FF                 8673 	.byte	-1
   2396 07                 8674 	.byte	7
   2397 08                 8675 	.byte	8
   2398 00                 8676 	.byte	0
   2399 F6                 8677 	.byte	-10
   239A EB                 8678 	.byte	-21
   239B FF                 8679 	.byte	-1
   239C 07                 8680 	.byte	7
   239D 07                 8681 	.byte	7
   239E 00                 8682 	.byte	0
   239F F1                 8683 	.byte	-15
   23A0 04                 8684 	.byte	4
   23A1 FF                 8685 	.byte	-1
   23A2 03                 8686 	.byte	3
   23A3 0E                 8687 	.byte	14
   23A4 FF                 8688 	.byte	-1
   23A5 0F                 8689 	.byte	15
   23A6 FC                 8690 	.byte	-4
   23A7 FF                 8691 	.byte	-1
   23A8 FD                 8692 	.byte	-3
   23A9 F2                 8693 	.byte	-14
   23AA FF                 8694 	.byte	-1
   23AB F1                 8695 	.byte	-15
   23AC 04                 8696 	.byte	4
   23AD 01                 8697 	.byte	1
                           8698 	.globl _height2RisingBack6
   23AE                    8699 _height2RisingBack6:
   23AE 00                 8700 	.byte	0
   23AF 10                 8701 	.byte	16
   23B0 F5                 8702 	.byte	-11
   23B1 FF                 8703 	.byte	-1
   23B2 03                 8704 	.byte	3
   23B3 0D                 8705 	.byte	13
   23B4 FF                 8706 	.byte	-1
   23B5 0E                 8707 	.byte	14
   23B6 FC                 8708 	.byte	-4
   23B7 FF                 8709 	.byte	-1
   23B8 FD                 8710 	.byte	-3
   23B9 F2                 8711 	.byte	-14
   23BA FF                 8712 	.byte	-1
   23BB F2                 8713 	.byte	-14
   23BC 05                 8714 	.byte	5
   23BD FF                 8715 	.byte	-1
   23BE 0B                 8716 	.byte	11
   23BF 07                 8717 	.byte	7
   23C0 00                 8718 	.byte	0
   23C1 F8                 8719 	.byte	-8
   23C2 06                 8720 	.byte	6
   23C3 FF                 8721 	.byte	-1
   23C4 0B                 8722 	.byte	11
   23C5 07                 8723 	.byte	7
   23C6 00                 8724 	.byte	0
   23C7 03                 8725 	.byte	3
   23C8 F5                 8726 	.byte	-11
   23C9 FF                 8727 	.byte	-1
   23CA 0B                 8728 	.byte	11
   23CB 07                 8729 	.byte	7
   23CC 00                 8730 	.byte	0
   23CD F2                 8731 	.byte	-14
   23CE EB                 8732 	.byte	-21
   23CF FF                 8733 	.byte	-1
   23D0 0B                 8734 	.byte	11
   23D1 08                 8735 	.byte	8
   23D2 00                 8736 	.byte	0
   23D3 F2                 8737 	.byte	-14
   23D4 04                 8738 	.byte	4
   23D5 FF                 8739 	.byte	-1
   23D6 03                 8740 	.byte	3
   23D7 0D                 8741 	.byte	13
   23D8 FF                 8742 	.byte	-1
   23D9 0E                 8743 	.byte	14
   23DA FC                 8744 	.byte	-4
   23DB FF                 8745 	.byte	-1
   23DC FD                 8746 	.byte	-3
   23DD F3                 8747 	.byte	-13
   23DE FF                 8748 	.byte	-1
   23DF F2                 8749 	.byte	-14
   23E0 04                 8750 	.byte	4
   23E1 01                 8751 	.byte	1
                           8752 	.globl _depth2RollingLeft6
   23E2                    8753 _depth2RollingLeft6:
   23E2 FF                 8754 	.byte	-1
   23E3 0B                 8755 	.byte	11
   23E4 0A                 8756 	.byte	10
   23E5 FF                 8757 	.byte	-1
   23E6 10                 8758 	.byte	16
   23E7 F5                 8759 	.byte	-11
   23E8 FF                 8760 	.byte	-1
   23E9 F5                 8761 	.byte	-11
   23EA F6                 8762 	.byte	-10
   23EB FF                 8763 	.byte	-1
   23EC F0                 8764 	.byte	-16
   23ED 0B                 8765 	.byte	11
   23EE FF                 8766 	.byte	-1
   23EF 07                 8767 	.byte	7
   23F0 F7                 8768 	.byte	-9
   23F1 00                 8769 	.byte	0
   23F2 04                 8770 	.byte	4
   23F3 13                 8771 	.byte	19
   23F4 FF                 8772 	.byte	-1
   23F5 07                 8773 	.byte	7
   23F6 F6                 8774 	.byte	-10
   23F7 00                 8775 	.byte	0
   23F8 09                 8776 	.byte	9
   23F9 FF                 8777 	.byte	-1
   23FA FF                 8778 	.byte	-1
   23FB 07                 8779 	.byte	7
   23FC F6                 8780 	.byte	-10
   23FD 00                 8781 	.byte	0
   23FE EE                 8782 	.byte	-18
   23FF 00                 8783 	.byte	0
   2400 FF                 8784 	.byte	-1
   2401 07                 8785 	.byte	7
   2402 F6                 8786 	.byte	-10
   2403 00                 8787 	.byte	0
   2404 F0                 8788 	.byte	-16
   2405 0C                 8789 	.byte	12
   2406 FF                 8790 	.byte	-1
   2407 0B                 8791 	.byte	11
   2408 09                 8792 	.byte	9
   2409 FF                 8793 	.byte	-1
   240A 10                 8794 	.byte	16
   240B F5                 8795 	.byte	-11
   240C FF                 8796 	.byte	-1
   240D F5                 8797 	.byte	-11
   240E F6                 8798 	.byte	-10
   240F FF                 8799 	.byte	-1
   2410 F0                 8800 	.byte	-16
   2411 0C                 8801 	.byte	12
   2412 01                 8802 	.byte	1
                           8803 	.globl _depth2RollingRight6
   2413                    8804 _depth2RollingRight6:
   2413 00                 8805 	.byte	0
   2414 0A                 8806 	.byte	10
   2415 04                 8807 	.byte	4
   2416 FF                 8808 	.byte	-1
   2417 F9                 8809 	.byte	-7
   2418 0A                 8810 	.byte	10
   2419 FF                 8811 	.byte	-1
   241A 10                 8812 	.byte	16
   241B F4                 8813 	.byte	-12
   241C FF                 8814 	.byte	-1
   241D 07                 8815 	.byte	7
   241E F7                 8816 	.byte	-9
   241F FF                 8817 	.byte	-1
   2420 F0                 8818 	.byte	-16
   2421 0B                 8819 	.byte	11
   2422 FF                 8820 	.byte	-1
   2423 0B                 8821 	.byte	11
   2424 0A                 8822 	.byte	10
   2425 00                 8823 	.byte	0
   2426 EE                 8824 	.byte	-18
   2427 00                 8825 	.byte	0
   2428 FF                 8826 	.byte	-1
   2429 0B                 8827 	.byte	11
   242A 0A                 8828 	.byte	10
   242B 00                 8829 	.byte	0
   242C 05                 8830 	.byte	5
   242D EA                 8831 	.byte	-22
   242E FF                 8832 	.byte	-1
   242F 0B                 8833 	.byte	11
   2430 0A                 8834 	.byte	10
   2431 00                 8835 	.byte	0
   2432 FC                 8836 	.byte	-4
   2433 ED                 8837 	.byte	-19
   2434 FF                 8838 	.byte	-1
   2435 0B                 8839 	.byte	11
   2436 09                 8840 	.byte	9
   2437 00                 8841 	.byte	0
   2438 F0                 8842 	.byte	-16
   2439 0C                 8843 	.byte	12
   243A FF                 8844 	.byte	-1
   243B F9                 8845 	.byte	-7
   243C 0A                 8846 	.byte	10
   243D FF                 8847 	.byte	-1
   243E 10                 8848 	.byte	16
   243F F4                 8849 	.byte	-12
   2440 FF                 8850 	.byte	-1
   2441 07                 8851 	.byte	7
   2442 F6                 8852 	.byte	-10
   2443 FF                 8853 	.byte	-1
   2444 F0                 8854 	.byte	-16
   2445 0C                 8855 	.byte	12
   2446 01                 8856 	.byte	1
                           8857 	.globl _width2RollingFront6
   2447                    8858 _width2RollingFront6:
   2447 FF                 8859 	.byte	-1
   2448 06                 8860 	.byte	6
   2449 1C                 8861 	.byte	28
   244A FF                 8862 	.byte	-1
   244B 0F                 8863 	.byte	15
   244C FC                 8864 	.byte	-4
   244D FF                 8865 	.byte	-1
   244E FA                 8866 	.byte	-6
   244F E5                 8867 	.byte	-27
   2450 FF                 8868 	.byte	-1
   2451 F1                 8869 	.byte	-15
   2452 03                 8870 	.byte	3
   2453 FF                 8871 	.byte	-1
   2454 04                 8872 	.byte	4
   2455 04                 8873 	.byte	4
   2456 00                 8874 	.byte	0
   2457 02                 8875 	.byte	2
   2458 18                 8876 	.byte	24
   2459 FF                 8877 	.byte	-1
   245A 04                 8878 	.byte	4
   245B 04                 8879 	.byte	4
   245C 00                 8880 	.byte	0
   245D 0B                 8881 	.byte	11
   245E F8                 8882 	.byte	-8
   245F FF                 8883 	.byte	-1
   2460 03                 8884 	.byte	3
   2461 04                 8885 	.byte	4
   2462 00                 8886 	.byte	0
   2463 F7                 8887 	.byte	-9
   2464 E1                 8888 	.byte	-31
   2465 FF                 8889 	.byte	-1
   2466 03                 8890 	.byte	3
   2467 03                 8891 	.byte	3
   2468 00                 8892 	.byte	0
   2469 F2                 8893 	.byte	-14
   246A 04                 8894 	.byte	4
   246B FF                 8895 	.byte	-1
   246C 06                 8896 	.byte	6
   246D 1C                 8897 	.byte	28
   246E FF                 8898 	.byte	-1
   246F 0E                 8899 	.byte	14
   2470 FC                 8900 	.byte	-4
   2471 FF                 8901 	.byte	-1
   2472 FA                 8902 	.byte	-6
   2473 E4                 8903 	.byte	-28
   2474 FF                 8904 	.byte	-1
   2475 F2                 8905 	.byte	-14
   2476 04                 8906 	.byte	4
   2477 01                 8907 	.byte	1
                           8908 	.globl _width2RollingBack6
   2478                    8909 _width2RollingBack6:
   2478 00                 8910 	.byte	0
   2479 0C                 8911 	.byte	12
   247A FF                 8912 	.byte	-1
   247B FF                 8913 	.byte	-1
   247C 06                 8914 	.byte	6
   247D 1B                 8915 	.byte	27
   247E FF                 8916 	.byte	-1
   247F FC                 8917 	.byte	-4
   2480 FC                 8918 	.byte	-4
   2481 FF                 8919 	.byte	-1
   2482 FA                 8920 	.byte	-6
   2483 E5                 8921 	.byte	-27
   2484 FF                 8922 	.byte	-1
   2485 04                 8923 	.byte	4
   2486 04                 8924 	.byte	4
   2487 FF                 8925 	.byte	-1
   2488 0E                 8926 	.byte	14
   2489 FC                 8927 	.byte	-4
   248A 00                 8928 	.byte	0
   248B F8                 8929 	.byte	-8
   248C 1F                 8930 	.byte	31
   248D FF                 8931 	.byte	-1
   248E 0E                 8932 	.byte	14
   248F FC                 8933 	.byte	-4
   2490 00                 8934 	.byte	0
   2491 EE                 8935 	.byte	-18
   2492 00                 8936 	.byte	0
   2493 FF                 8937 	.byte	-1
   2494 0F                 8938 	.byte	15
   2495 FC                 8939 	.byte	-4
   2496 00                 8940 	.byte	0
   2497 EB                 8941 	.byte	-21
   2498 E9                 8942 	.byte	-23
   2499 FF                 8943 	.byte	-1
   249A 0F                 8944 	.byte	15
   249B FC                 8945 	.byte	-4
   249C 00                 8946 	.byte	0
   249D 03                 8947 	.byte	3
   249E 04                 8948 	.byte	4
   249F FF                 8949 	.byte	-1
   24A0 06                 8950 	.byte	6
   24A1 1B                 8951 	.byte	27
   24A2 FF                 8952 	.byte	-1
   24A3 FD                 8953 	.byte	-3
   24A4 FC                 8954 	.byte	-4
   24A5 FF                 8955 	.byte	-1
   24A6 FA                 8956 	.byte	-6
   24A7 E5                 8957 	.byte	-27
   24A8 FF                 8958 	.byte	-1
   24A9 03                 8959 	.byte	3
   24AA 04                 8960 	.byte	4
   24AB 01                 8961 	.byte	1
                           8962 	.globl _height2FallingLeft7
   24AC                    8963 _height2FallingLeft7:
   24AC FF                 8964 	.byte	-1
   24AD 0C                 8965 	.byte	12
   24AE 09                 8966 	.byte	9
   24AF FF                 8967 	.byte	-1
   24B0 08                 8968 	.byte	8
   24B1 FA                 8969 	.byte	-6
   24B2 FF                 8970 	.byte	-1
   24B3 F4                 8971 	.byte	-12
   24B4 F8                 8972 	.byte	-8
   24B5 FF                 8973 	.byte	-1
   24B6 F8                 8974 	.byte	-8
   24B7 05                 8975 	.byte	5
   24B8 FF                 8976 	.byte	-1
   24B9 0B                 8977 	.byte	11
   24BA EB                 8978 	.byte	-21
   24BB 00                 8979 	.byte	0
   24BC 01                 8980 	.byte	1
   24BD 1E                 8981 	.byte	30
   24BE FF                 8982 	.byte	-1
   24BF 0B                 8983 	.byte	11
   24C0 EA                 8984 	.byte	-22
   24C1 00                 8985 	.byte	0
   24C2 FD                 8986 	.byte	-3
   24C3 10                 8987 	.byte	16
   24C4 FF                 8988 	.byte	-1
   24C5 0B                 8989 	.byte	11
   24C6 EA                 8990 	.byte	-22
   24C7 00                 8991 	.byte	0
   24C8 E9                 8992 	.byte	-23
   24C9 0E                 8993 	.byte	14
   24CA FF                 8994 	.byte	-1
   24CB 0B                 8995 	.byte	11
   24CC EA                 8996 	.byte	-22
   24CD 00                 8997 	.byte	0
   24CE F8                 8998 	.byte	-8
   24CF 06                 8999 	.byte	6
   24D0 FF                 9000 	.byte	-1
   24D1 0C                 9001 	.byte	12
   24D2 08                 9002 	.byte	8
   24D3 FF                 9003 	.byte	-1
   24D4 08                 9004 	.byte	8
   24D5 FA                 9005 	.byte	-6
   24D6 FF                 9006 	.byte	-1
   24D7 F4                 9007 	.byte	-12
   24D8 F8                 9008 	.byte	-8
   24D9 FF                 9009 	.byte	-1
   24DA F8                 9010 	.byte	-8
   24DB 06                 9011 	.byte	6
   24DC 01                 9012 	.byte	1
                           9013 	.globl _height2RisingRight7
   24DD                    9014 _height2RisingRight7:
   24DD 00                 9015 	.byte	0
   24DE 06                 9016 	.byte	6
   24DF 1C                 9017 	.byte	28
   24E0 FF                 9018 	.byte	-1
   24E1 09                 9019 	.byte	9
   24E2 0C                 9020 	.byte	12
   24E3 FF                 9021 	.byte	-1
   24E4 08                 9022 	.byte	8
   24E5 FA                 9023 	.byte	-6
   24E6 FF                 9024 	.byte	-1
   24E7 F7                 9025 	.byte	-9
   24E8 F4                 9026 	.byte	-12
   24E9 FF                 9027 	.byte	-1
   24EA F8                 9028 	.byte	-8
   24EB 06                 9029 	.byte	6
   24EC FF                 9030 	.byte	-1
   24ED 14                 9031 	.byte	20
   24EE F2                 9032 	.byte	-14
   24EF 00                 9033 	.byte	0
   24F0 F5                 9034 	.byte	-11
   24F1 1A                 9035 	.byte	26
   24F2 FF                 9036 	.byte	-1
   24F3 14                 9037 	.byte	20
   24F4 F2                 9038 	.byte	-14
   24F5 00                 9039 	.byte	0
   24F6 F4                 9040 	.byte	-12
   24F7 08                 9041 	.byte	8
   24F8 FF                 9042 	.byte	-1
   24F9 14                 9043 	.byte	20
   24FA F2                 9044 	.byte	-14
   24FB 00                 9045 	.byte	0
   24FC E3                 9046 	.byte	-29
   24FD 02                 9047 	.byte	2
   24FE FF                 9048 	.byte	-1
   24FF 14                 9049 	.byte	20
   2500 F2                 9050 	.byte	-14
   2501 00                 9051 	.byte	0
   2502 F8                 9052 	.byte	-8
   2503 06                 9053 	.byte	6
   2504 FF                 9054 	.byte	-1
   2505 09                 9055 	.byte	9
   2506 0C                 9056 	.byte	12
   2507 FF                 9057 	.byte	-1
   2508 08                 9058 	.byte	8
   2509 FA                 9059 	.byte	-6
   250A FF                 9060 	.byte	-1
   250B F7                 9061 	.byte	-9
   250C F4                 9062 	.byte	-12
   250D FF                 9063 	.byte	-1
   250E F8                 9064 	.byte	-8
   250F 06                 9065 	.byte	6
   2510 01                 9066 	.byte	1
                           9067 	.globl _height2FallingRight7
   2511                    9068 _height2FallingRight7:
   2511 00                 9069 	.byte	0
   2512 0B                 9070 	.byte	11
   2513 05                 9071 	.byte	5
   2514 FF                 9072 	.byte	-1
   2515 F8                 9073 	.byte	-8
   2516 09                 9074 	.byte	9
   2517 FF                 9075 	.byte	-1
   2518 08                 9076 	.byte	8
   2519 FA                 9077 	.byte	-6
   251A FF                 9078 	.byte	-1
   251B 08                 9079 	.byte	8
   251C F8                 9080 	.byte	-8
   251D FF                 9081 	.byte	-1
   251E F8                 9082 	.byte	-8
   251F 05                 9083 	.byte	5
   2520 FF                 9084 	.byte	-1
   2521 15                 9085 	.byte	21
   2522 17                 9086 	.byte	23
   2523 00                 9087 	.byte	0
   2524 E3                 9088 	.byte	-29
   2525 F2                 9089 	.byte	-14
   2526 FF                 9090 	.byte	-1
   2527 15                 9091 	.byte	21
   2528 16                 9092 	.byte	22
   2529 00                 9093 	.byte	0
   252A F3                 9094 	.byte	-13
   252B E4                 9095 	.byte	-28
   252C FF                 9096 	.byte	-1
   252D 15                 9097 	.byte	21
   252E 16                 9098 	.byte	22
   252F 00                 9099 	.byte	0
   2530 F3                 9100 	.byte	-13
   2531 E2                 9101 	.byte	-30
   2532 FF                 9102 	.byte	-1
   2533 15                 9103 	.byte	21
   2534 16                 9104 	.byte	22
   2535 00                 9105 	.byte	0
   2536 F8                 9106 	.byte	-8
   2537 06                 9107 	.byte	6
   2538 FF                 9108 	.byte	-1
   2539 F8                 9109 	.byte	-8
   253A 08                 9110 	.byte	8
   253B FF                 9111 	.byte	-1
   253C 08                 9112 	.byte	8
   253D FA                 9113 	.byte	-6
   253E FF                 9114 	.byte	-1
   253F 08                 9115 	.byte	8
   2540 F8                 9116 	.byte	-8
   2541 FF                 9117 	.byte	-1
   2542 F8                 9118 	.byte	-8
   2543 06                 9119 	.byte	6
   2544 01                 9120 	.byte	1
                           9121 	.globl _height2RisingLeft7
   2545                    9122 _height2RisingLeft7:
   2545 00                 9123 	.byte	0
   2546 04                 9124 	.byte	4
   2547 F5                 9125 	.byte	-11
   2548 FF                 9126 	.byte	-1
   2549 FC                 9127 	.byte	-4
   254A 0B                 9128 	.byte	11
   254B FF                 9129 	.byte	-1
   254C 08                 9130 	.byte	8
   254D FB                 9131 	.byte	-5
   254E FF                 9132 	.byte	-1
   254F 04                 9133 	.byte	4
   2550 F4                 9134 	.byte	-12
   2551 FF                 9135 	.byte	-1
   2552 F8                 9136 	.byte	-8
   2553 06                 9137 	.byte	6
   2554 FF                 9138 	.byte	-1
   2555 19                 9139 	.byte	25
   2556 0D                 9140 	.byte	13
   2557 00                 9141 	.byte	0
   2558 E3                 9142 	.byte	-29
   2559 FE                 9143 	.byte	-2
   255A FF                 9144 	.byte	-1
   255B 1A                 9145 	.byte	26
   255C 0E                 9146 	.byte	14
   255D 00                 9147 	.byte	0
   255E EE                 9148 	.byte	-18
   255F ED                 9149 	.byte	-19
   2560 FF                 9150 	.byte	-1
   2561 1A                 9151 	.byte	26
   2562 0D                 9152 	.byte	13
   2563 00                 9153 	.byte	0
   2564 EA                 9154 	.byte	-22
   2565 E7                 9155 	.byte	-25
   2566 FF                 9156 	.byte	-1
   2567 19                 9157 	.byte	25
   2568 0E                 9158 	.byte	14
   2569 00                 9159 	.byte	0
   256A F8                 9160 	.byte	-8
   256B 05                 9161 	.byte	5
   256C FF                 9162 	.byte	-1
   256D FD                 9163 	.byte	-3
   256E 0C                 9164 	.byte	12
   256F FF                 9165 	.byte	-1
   2570 08                 9166 	.byte	8
   2571 FA                 9167 	.byte	-6
   2572 FF                 9168 	.byte	-1
   2573 03                 9169 	.byte	3
   2574 F5                 9170 	.byte	-11
   2575 FF                 9171 	.byte	-1
   2576 F8                 9172 	.byte	-8
   2577 05                 9173 	.byte	5
   2578 01                 9174 	.byte	1
                           9175 	.globl _height2FallingBack7
   2579                    9176 _height2FallingBack7:
   2579 00                 9177 	.byte	0
   257A 0D                 9178 	.byte	13
   257B FF                 9179 	.byte	-1
   257C FF                 9180 	.byte	-1
   257D 03                 9181 	.byte	3
   257E 0D                 9182 	.byte	13
   257F FF                 9183 	.byte	-1
   2580 FB                 9184 	.byte	-5
   2581 FC                 9185 	.byte	-4
   2582 FF                 9186 	.byte	-1
   2583 FD                 9187 	.byte	-3
   2584 F3                 9188 	.byte	-13
   2585 FF                 9189 	.byte	-1
   2586 05                 9190 	.byte	5
   2587 04                 9191 	.byte	4
   2588 FF                 9192 	.byte	-1
   2589 1D                 9193 	.byte	29
   258A F6                 9194 	.byte	-10
   258B 00                 9195 	.byte	0
   258C E6                 9196 	.byte	-26
   258D 17                 9197 	.byte	23
   258E FF                 9198 	.byte	-1
   258F 1D                 9199 	.byte	29
   2590 F6                 9200 	.byte	-10
   2591 00                 9201 	.byte	0
   2592 DE                 9202 	.byte	-34
   2593 06                 9203 	.byte	6
   2594 FF                 9204 	.byte	-1
   2595 1D                 9205 	.byte	29
   2596 F7                 9206 	.byte	-9
   2597 00                 9207 	.byte	0
   2598 E0                 9208 	.byte	-32
   2599 FC                 9209 	.byte	-4
   259A FF                 9210 	.byte	-1
   259B 1D                 9211 	.byte	29
   259C F6                 9212 	.byte	-10
   259D 00                 9213 	.byte	0
   259E 05                 9214 	.byte	5
   259F 04                 9215 	.byte	4
   25A0 FF                 9216 	.byte	-1
   25A1 03                 9217 	.byte	3
   25A2 0D                 9218 	.byte	13
   25A3 FF                 9219 	.byte	-1
   25A4 FB                 9220 	.byte	-5
   25A5 FD                 9221 	.byte	-3
   25A6 FF                 9222 	.byte	-1
   25A7 FD                 9223 	.byte	-3
   25A8 F2                 9224 	.byte	-14
   25A9 FF                 9225 	.byte	-1
   25AA 05                 9226 	.byte	5
   25AB 04                 9227 	.byte	4
   25AC 01                 9228 	.byte	1
                           9229 	.globl _height2RisingFront7
   25AD                    9230 _height2RisingFront7:
   25AD 00                 9231 	.byte	0
   25AE 00                 9232 	.byte	0
   25AF 05                 9233 	.byte	5
   25B0 FF                 9234 	.byte	-1
   25B1 03                 9235 	.byte	3
   25B2 0E                 9236 	.byte	14
   25B3 FF                 9237 	.byte	-1
   25B4 00                 9238 	.byte	0
   25B5 FB                 9239 	.byte	-5
   25B6 FF                 9240 	.byte	-1
   25B7 FD                 9241 	.byte	-3
   25B8 F2                 9242 	.byte	-14
   25B9 FF                 9243 	.byte	-1
   25BA 00                 9244 	.byte	0
   25BB 05                 9245 	.byte	5
   25BC FF                 9246 	.byte	-1
   25BD 1E                 9247 	.byte	30
   25BE FB                 9248 	.byte	-5
   25BF 00                 9249 	.byte	0
   25C0 E5                 9250 	.byte	-27
   25C1 13                 9251 	.byte	19
   25C2 FF                 9252 	.byte	-1
   25C3 1E                 9253 	.byte	30
   25C4 FA                 9254 	.byte	-6
   25C5 00                 9255 	.byte	0
   25C6 E2                 9256 	.byte	-30
   25C7 01                 9257 	.byte	1
   25C8 FF                 9258 	.byte	-1
   25C9 1F                 9259 	.byte	31
   25CA FA                 9260 	.byte	-6
   25CB 00                 9261 	.byte	0
   25CC DE                 9262 	.byte	-34
   25CD F8                 9263 	.byte	-8
   25CE FF                 9264 	.byte	-1
   25CF 1F                 9265 	.byte	31
   25D0 FB                 9266 	.byte	-5
   25D1 00                 9267 	.byte	0
   25D2 FF                 9268 	.byte	-1
   25D3 05                 9269 	.byte	5
   25D4 FF                 9270 	.byte	-1
   25D5 03                 9271 	.byte	3
   25D6 0D                 9272 	.byte	13
   25D7 FF                 9273 	.byte	-1
   25D8 01                 9274 	.byte	1
   25D9 FB                 9275 	.byte	-5
   25DA FF                 9276 	.byte	-1
   25DB FD                 9277 	.byte	-3
   25DC F3                 9278 	.byte	-13
   25DD FF                 9279 	.byte	-1
   25DE FF                 9280 	.byte	-1
   25DF 05                 9281 	.byte	5
   25E0 01                 9282 	.byte	1
                           9283 	.globl _height2FallingFront7
   25E1                    9284 _height2FallingFront7:
   25E1 FF                 9285 	.byte	-1
   25E2 03                 9286 	.byte	3
   25E3 0E                 9287 	.byte	14
   25E4 FF                 9288 	.byte	-1
   25E5 0F                 9289 	.byte	15
   25E6 FC                 9290 	.byte	-4
   25E7 FF                 9291 	.byte	-1
   25E8 FD                 9292 	.byte	-3
   25E9 F3                 9293 	.byte	-13
   25EA FF                 9294 	.byte	-1
   25EB F1                 9295 	.byte	-15
   25EC 03                 9296 	.byte	3
   25ED FF                 9297 	.byte	-1
   25EE 03                 9298 	.byte	3
   25EF 0A                 9299 	.byte	10
   25F0 00                 9300 	.byte	0
   25F1 00                 9301 	.byte	0
   25F2 04                 9302 	.byte	4
   25F3 FF                 9303 	.byte	-1
   25F4 03                 9304 	.byte	3
   25F5 0A                 9305 	.byte	10
   25F6 00                 9306 	.byte	0
   25F7 0C                 9307 	.byte	12
   25F8 F2                 9308 	.byte	-14
   25F9 FF                 9309 	.byte	-1
   25FA 03                 9310 	.byte	3
   25FB 0A                 9311 	.byte	10
   25FC 00                 9312 	.byte	0
   25FD FA                 9313 	.byte	-6
   25FE E9                 9314 	.byte	-23
   25FF FF                 9315 	.byte	-1
   2600 03                 9316 	.byte	3
   2601 09                 9317 	.byte	9
   2602 00                 9318 	.byte	0
   2603 F1                 9319 	.byte	-15
   2604 04                 9320 	.byte	4
   2605 FF                 9321 	.byte	-1
   2606 03                 9322 	.byte	3
   2607 0E                 9323 	.byte	14
   2608 FF                 9324 	.byte	-1
   2609 0F                 9325 	.byte	15
   260A FC                 9326 	.byte	-4
   260B FF                 9327 	.byte	-1
   260C FD                 9328 	.byte	-3
   260D F2                 9329 	.byte	-14
   260E FF                 9330 	.byte	-1
   260F F1                 9331 	.byte	-15
   2610 04                 9332 	.byte	4
   2611 01                 9333 	.byte	1
                           9334 	.globl _height2RisingBack7
   2612                    9335 _height2RisingBack7:
   2612 00                 9336 	.byte	0
   2613 10                 9337 	.byte	16
   2614 F5                 9338 	.byte	-11
   2615 FF                 9339 	.byte	-1
   2616 03                 9340 	.byte	3
   2617 0D                 9341 	.byte	13
   2618 FF                 9342 	.byte	-1
   2619 0D                 9343 	.byte	13
   261A FC                 9344 	.byte	-4
   261B FF                 9345 	.byte	-1
   261C FD                 9346 	.byte	-3
   261D F2                 9347 	.byte	-14
   261E FF                 9348 	.byte	-1
   261F F3                 9349 	.byte	-13
   2620 05                 9350 	.byte	5
   2621 FF                 9351 	.byte	-1
   2622 0F                 9352 	.byte	15
   2623 06                 9353 	.byte	6
   2624 00                 9354 	.byte	0
   2625 F4                 9355 	.byte	-12
   2626 07                 9356 	.byte	7
   2627 FF                 9357 	.byte	-1
   2628 0F                 9358 	.byte	15
   2629 06                 9359 	.byte	6
   262A 00                 9360 	.byte	0
   262B FE                 9361 	.byte	-2
   262C F6                 9362 	.byte	-10
   262D FF                 9363 	.byte	-1
   262E 0F                 9364 	.byte	15
   262F 05                 9365 	.byte	5
   2630 00                 9366 	.byte	0
   2631 EE                 9367 	.byte	-18
   2632 ED                 9368 	.byte	-19
   2633 FF                 9369 	.byte	-1
   2634 0F                 9370 	.byte	15
   2635 06                 9371 	.byte	6
   2636 00                 9372 	.byte	0
   2637 F3                 9373 	.byte	-13
   2638 05                 9374 	.byte	5
   2639 FF                 9375 	.byte	-1
   263A 03                 9376 	.byte	3
   263B 0D                 9377 	.byte	13
   263C FF                 9378 	.byte	-1
   263D 0D                 9379 	.byte	13
   263E FB                 9380 	.byte	-5
   263F FF                 9381 	.byte	-1
   2640 FD                 9382 	.byte	-3
   2641 F3                 9383 	.byte	-13
   2642 FF                 9384 	.byte	-1
   2643 F3                 9385 	.byte	-13
   2644 05                 9386 	.byte	5
   2645 01                 9387 	.byte	1
                           9388 	.globl _depth2RollingLeft7
   2646                    9389 _depth2RollingLeft7:
   2646 FF                 9390 	.byte	-1
   2647 0C                 9391 	.byte	12
   2648 09                 9392 	.byte	9
   2649 FF                 9393 	.byte	-1
   264A 10                 9394 	.byte	16
   264B F5                 9395 	.byte	-11
   264C FF                 9396 	.byte	-1
   264D F4                 9397 	.byte	-12
   264E F7                 9398 	.byte	-9
   264F FF                 9399 	.byte	-1
   2650 F0                 9400 	.byte	-16
   2651 0B                 9401 	.byte	11
   2652 FF                 9402 	.byte	-1
   2653 06                 9403 	.byte	6
   2654 F6                 9404 	.byte	-10
   2655 00                 9405 	.byte	0
   2656 06                 9406 	.byte	6
   2657 13                 9407 	.byte	19
   2658 FF                 9408 	.byte	-1
   2659 06                 9409 	.byte	6
   265A F5                 9410 	.byte	-11
   265B 00                 9411 	.byte	0
   265C 0A                 9412 	.byte	10
   265D 00                 9413 	.byte	0
   265E FF                 9414 	.byte	-1
   265F 06                 9415 	.byte	6
   2660 F4                 9416 	.byte	-12
   2661 00                 9417 	.byte	0
   2662 EE                 9418 	.byte	-18
   2663 03                 9419 	.byte	3
   2664 FF                 9420 	.byte	-1
   2665 06                 9421 	.byte	6
   2666 F5                 9422 	.byte	-11
   2667 00                 9423 	.byte	0
   2668 F0                 9424 	.byte	-16
   2669 0C                 9425 	.byte	12
   266A FF                 9426 	.byte	-1
   266B 0C                 9427 	.byte	12
   266C 08                 9428 	.byte	8
   266D FF                 9429 	.byte	-1
   266E 10                 9430 	.byte	16
   266F F4                 9431 	.byte	-12
   2670 FF                 9432 	.byte	-1
   2671 F4                 9433 	.byte	-12
   2672 F8                 9434 	.byte	-8
   2673 FF                 9435 	.byte	-1
   2674 F0                 9436 	.byte	-16
   2675 0C                 9437 	.byte	12
   2676 01                 9438 	.byte	1
                           9439 	.globl _depth2RollingRight7
   2677                    9440 _depth2RollingRight7:
   2677 00                 9441 	.byte	0
   2678 0B                 9442 	.byte	11
   2679 05                 9443 	.byte	5
   267A FF                 9444 	.byte	-1
   267B F8                 9445 	.byte	-8
   267C 09                 9446 	.byte	9
   267D FF                 9447 	.byte	-1
   267E 10                 9448 	.byte	16
   267F F4                 9449 	.byte	-12
   2680 FF                 9450 	.byte	-1
   2681 08                 9451 	.byte	8
   2682 F8                 9452 	.byte	-8
   2683 FF                 9453 	.byte	-1
   2684 F0                 9454 	.byte	-16
   2685 0B                 9455 	.byte	11
   2686 FF                 9456 	.byte	-1
   2687 0B                 9457 	.byte	11
   2688 0C                 9458 	.byte	12
   2689 00                 9459 	.byte	0
   268A ED                 9460 	.byte	-19
   268B FD                 9461 	.byte	-3
   268C FF                 9462 	.byte	-1
   268D 0A                 9463 	.byte	10
   268E 0B                 9464 	.byte	11
   268F 00                 9465 	.byte	0
   2690 06                 9466 	.byte	6
   2691 E9                 9467 	.byte	-23
   2692 FF                 9468 	.byte	-1
   2693 0A                 9469 	.byte	10
   2694 0B                 9470 	.byte	11
   2695 00                 9471 	.byte	0
   2696 FE                 9472 	.byte	-2
   2697 ED                 9473 	.byte	-19
   2698 FF                 9474 	.byte	-1
   2699 0B                 9475 	.byte	11
   269A 0B                 9476 	.byte	11
   269B 00                 9477 	.byte	0
   269C F0                 9478 	.byte	-16
   269D 0C                 9479 	.byte	12
   269E FF                 9480 	.byte	-1
   269F F7                 9481 	.byte	-9
   26A0 08                 9482 	.byte	8
   26A1 FF                 9483 	.byte	-1
   26A2 10                 9484 	.byte	16
   26A3 F4                 9485 	.byte	-12
   26A4 FF                 9486 	.byte	-1
   26A5 09                 9487 	.byte	9
   26A6 F8                 9488 	.byte	-8
   26A7 FF                 9489 	.byte	-1
   26A8 F0                 9490 	.byte	-16
   26A9 0C                 9491 	.byte	12
   26AA 01                 9492 	.byte	1
                           9493 	.globl _width2RollingFront7
   26AB                    9494 _width2RollingFront7:
   26AB FF                 9495 	.byte	-1
   26AC 06                 9496 	.byte	6
   26AD 1C                 9497 	.byte	28
   26AE FF                 9498 	.byte	-1
   26AF 0F                 9499 	.byte	15
   26B0 FC                 9500 	.byte	-4
   26B1 FF                 9501 	.byte	-1
   26B2 FA                 9502 	.byte	-6
   26B3 E5                 9503 	.byte	-27
   26B4 FF                 9504 	.byte	-1
   26B5 F1                 9505 	.byte	-15
   26B6 03                 9506 	.byte	3
   26B7 FF                 9507 	.byte	-1
   26B8 02                 9508 	.byte	2
   26B9 05                 9509 	.byte	5
   26BA 00                 9510 	.byte	0
   26BB 04                 9511 	.byte	4
   26BC 17                 9512 	.byte	23
   26BD FF                 9513 	.byte	-1
   26BE 02                 9514 	.byte	2
   26BF 05                 9515 	.byte	5
   26C0 00                 9516 	.byte	0
   26C1 0D                 9517 	.byte	13
   26C2 F7                 9518 	.byte	-9
   26C3 FF                 9519 	.byte	-1
   26C4 02                 9520 	.byte	2
   26C5 05                 9521 	.byte	5
   26C6 00                 9522 	.byte	0
   26C7 F8                 9523 	.byte	-8
   26C8 E0                 9524 	.byte	-32
   26C9 FF                 9525 	.byte	-1
   26CA 02                 9526 	.byte	2
   26CB 04                 9527 	.byte	4
   26CC 00                 9528 	.byte	0
   26CD F1                 9529 	.byte	-15
   26CE 04                 9530 	.byte	4
   26CF FF                 9531 	.byte	-1
   26D0 06                 9532 	.byte	6
   26D1 1C                 9533 	.byte	28
   26D2 FF                 9534 	.byte	-1
   26D3 0F                 9535 	.byte	15
   26D4 FC                 9536 	.byte	-4
   26D5 FF                 9537 	.byte	-1
   26D6 FA                 9538 	.byte	-6
   26D7 E4                 9539 	.byte	-28
   26D8 FF                 9540 	.byte	-1
   26D9 F1                 9541 	.byte	-15
   26DA 04                 9542 	.byte	4
   26DB 01                 9543 	.byte	1
                           9544 	.globl _width2RollingBack7
   26DC                    9545 _width2RollingBack7:
   26DC 00                 9546 	.byte	0
   26DD 0D                 9547 	.byte	13
   26DE FF                 9548 	.byte	-1
   26DF FF                 9549 	.byte	-1
   26E0 06                 9550 	.byte	6
   26E1 1B                 9551 	.byte	27
   26E2 FF                 9552 	.byte	-1
   26E3 FB                 9553 	.byte	-5
   26E4 FC                 9554 	.byte	-4
   26E5 FF                 9555 	.byte	-1
   26E6 FA                 9556 	.byte	-6
   26E7 E5                 9557 	.byte	-27
   26E8 FF                 9558 	.byte	-1
   26E9 05                 9559 	.byte	5
   26EA 04                 9560 	.byte	4
   26EB FF                 9561 	.byte	-1
   26EC 0F                 9562 	.byte	15
   26ED FB                 9563 	.byte	-5
   26EE 00                 9564 	.byte	0
   26EF F7                 9565 	.byte	-9
   26F0 20                 9566 	.byte	32
   26F1 FF                 9567 	.byte	-1
   26F2 0F                 9568 	.byte	15
   26F3 FB                 9569 	.byte	-5
   26F4 00                 9570 	.byte	0
   26F5 EC                 9571 	.byte	-20
   26F6 01                 9572 	.byte	1
   26F7 FF                 9573 	.byte	-1
   26F8 0E                 9574 	.byte	14
   26F9 FB                 9575 	.byte	-5
   26FA 00                 9576 	.byte	0
   26FB EC                 9577 	.byte	-20
   26FC EA                 9578 	.byte	-22
   26FD FF                 9579 	.byte	-1
   26FE 0E                 9580 	.byte	14
   26FF FB                 9581 	.byte	-5
   2700 00                 9582 	.byte	0
   2701 06                 9583 	.byte	6
   2702 04                 9584 	.byte	4
   2703 FF                 9585 	.byte	-1
   2704 06                 9586 	.byte	6
   2705 1B                 9587 	.byte	27
   2706 FF                 9588 	.byte	-1
   2707 FA                 9589 	.byte	-6
   2708 FC                 9590 	.byte	-4
   2709 FF                 9591 	.byte	-1
   270A FA                 9592 	.byte	-6
   270B E5                 9593 	.byte	-27
   270C FF                 9594 	.byte	-1
   270D 06                 9595 	.byte	6
   270E 04                 9596 	.byte	4
   270F 01                 9597 	.byte	1
                           9598 	.globl _height2FallingLeft8
   2710                    9599 _height2FallingLeft8:
   2710 FF                 9600 	.byte	-1
   2711 0D                 9601 	.byte	13
   2712 07                 9602 	.byte	7
   2713 FF                 9603 	.byte	-1
   2714 08                 9604 	.byte	8
   2715 FA                 9605 	.byte	-6
   2716 FF                 9606 	.byte	-1
   2717 F3                 9607 	.byte	-13
   2718 FA                 9608 	.byte	-6
   2719 FF                 9609 	.byte	-1
   271A F8                 9610 	.byte	-8
   271B 05                 9611 	.byte	5
   271C FF                 9612 	.byte	-1
   271D 08                 9613 	.byte	8
   271E E9                 9614 	.byte	-23
   271F 00                 9615 	.byte	0
   2720 05                 9616 	.byte	5
   2721 1E                 9617 	.byte	30
   2722 FF                 9618 	.byte	-1
   2723 08                 9619 	.byte	8
   2724 E9                 9620 	.byte	-23
   2725 00                 9621 	.byte	0
   2726 00                 9622 	.byte	0
   2727 11                 9623 	.byte	17
   2728 FF                 9624 	.byte	-1
   2729 08                 9625 	.byte	8
   272A E9                 9626 	.byte	-23
   272B 00                 9627 	.byte	0
   272C EB                 9628 	.byte	-21
   272D 11                 9629 	.byte	17
   272E FF                 9630 	.byte	-1
   272F 08                 9631 	.byte	8
   2730 E8                 9632 	.byte	-24
   2731 00                 9633 	.byte	0
   2732 F8                 9634 	.byte	-8
   2733 06                 9635 	.byte	6
   2734 FF                 9636 	.byte	-1
   2735 0D                 9637 	.byte	13
   2736 07                 9638 	.byte	7
   2737 FF                 9639 	.byte	-1
   2738 08                 9640 	.byte	8
   2739 FA                 9641 	.byte	-6
   273A FF                 9642 	.byte	-1
   273B F3                 9643 	.byte	-13
   273C F9                 9644 	.byte	-7
   273D FF                 9645 	.byte	-1
   273E F8                 9646 	.byte	-8
   273F 06                 9647 	.byte	6
   2740 01                 9648 	.byte	1
                           9649 	.globl _height2RisingRight8
   2741                    9650 _height2RisingRight8:
   2741 00                 9651 	.byte	0
   2742 06                 9652 	.byte	6
   2743 1C                 9653 	.byte	28
   2744 FF                 9654 	.byte	-1
   2745 08                 9655 	.byte	8
   2746 0D                 9656 	.byte	13
   2747 FF                 9657 	.byte	-1
   2748 08                 9658 	.byte	8
   2749 FA                 9659 	.byte	-6
   274A FF                 9660 	.byte	-1
   274B F8                 9661 	.byte	-8
   274C F3                 9662 	.byte	-13
   274D FF                 9663 	.byte	-1
   274E F8                 9664 	.byte	-8
   274F 06                 9665 	.byte	6
   2750 FF                 9666 	.byte	-1
   2751 16                 9667 	.byte	22
   2752 F5                 9668 	.byte	-11
   2753 00                 9669 	.byte	0
   2754 F2                 9670 	.byte	-14
   2755 18                 9671 	.byte	24
   2756 FF                 9672 	.byte	-1
   2757 15                 9673 	.byte	21
   2758 F5                 9674 	.byte	-11
   2759 00                 9675 	.byte	0
   275A F3                 9676 	.byte	-13
   275B 05                 9677 	.byte	5
   275C FF                 9678 	.byte	-1
   275D 15                 9679 	.byte	21
   275E F5                 9680 	.byte	-11
   275F 00                 9681 	.byte	0
   2760 E3                 9682 	.byte	-29
   2761 FE                 9683 	.byte	-2
   2762 FF                 9684 	.byte	-1
   2763 16                 9685 	.byte	22
   2764 F5                 9686 	.byte	-11
   2765 00                 9687 	.byte	0
   2766 F8                 9688 	.byte	-8
   2767 06                 9689 	.byte	6
   2768 FF                 9690 	.byte	-1
   2769 07                 9691 	.byte	7
   276A 0D                 9692 	.byte	13
   276B FF                 9693 	.byte	-1
   276C 08                 9694 	.byte	8
   276D FA                 9695 	.byte	-6
   276E FF                 9696 	.byte	-1
   276F F9                 9697 	.byte	-7
   2770 F3                 9698 	.byte	-13
   2771 FF                 9699 	.byte	-1
   2772 F8                 9700 	.byte	-8
   2773 06                 9701 	.byte	6
   2774 01                 9702 	.byte	1
                           9703 	.globl _height2FallingRight8
   2775                    9704 _height2FallingRight8:
   2775 00                 9705 	.byte	0
   2776 0D                 9706 	.byte	13
   2777 07                 9707 	.byte	7
   2778 FF                 9708 	.byte	-1
   2779 F6                 9709 	.byte	-10
   277A 07                 9710 	.byte	7
   277B FF                 9711 	.byte	-1
   277C 08                 9712 	.byte	8
   277D FA                 9713 	.byte	-6
   277E FF                 9714 	.byte	-1
   277F 0A                 9715 	.byte	10
   2780 F9                 9716 	.byte	-7
   2781 FF                 9717 	.byte	-1
   2782 F8                 9718 	.byte	-8
   2783 06                 9719 	.byte	6
   2784 FF                 9720 	.byte	-1
   2785 12                 9721 	.byte	18
   2786 18                 9722 	.byte	24
   2787 00                 9723 	.byte	0
   2788 E4                 9724 	.byte	-28
   2789 EF                 9725 	.byte	-17
   278A FF                 9726 	.byte	-1
   278B 12                 9727 	.byte	18
   278C 18                 9728 	.byte	24
   278D 00                 9729 	.byte	0
   278E F6                 9730 	.byte	-10
   278F E2                 9731 	.byte	-30
   2790 FF                 9732 	.byte	-1
   2791 12                 9733 	.byte	18
   2792 18                 9734 	.byte	24
   2793 00                 9735 	.byte	0
   2794 F8                 9736 	.byte	-8
   2795 E1                 9737 	.byte	-31
   2796 FF                 9738 	.byte	-1
   2797 12                 9739 	.byte	18
   2798 18                 9740 	.byte	24
   2799 00                 9741 	.byte	0
   279A F8                 9742 	.byte	-8
   279B 06                 9743 	.byte	6
   279C FF                 9744 	.byte	-1
   279D F6                 9745 	.byte	-10
   279E 07                 9746 	.byte	7
   279F FF                 9747 	.byte	-1
   27A0 08                 9748 	.byte	8
   27A1 FA                 9749 	.byte	-6
   27A2 FF                 9750 	.byte	-1
   27A3 0A                 9751 	.byte	10
   27A4 F9                 9752 	.byte	-7
   27A5 FF                 9753 	.byte	-1
   27A6 F8                 9754 	.byte	-8
   27A7 06                 9755 	.byte	6
   27A8 01                 9756 	.byte	1
                           9757 	.globl _height2RisingLeft8
   27A9                    9758 _height2RisingLeft8:
   27A9 00                 9759 	.byte	0
   27AA 02                 9760 	.byte	2
   27AB F4                 9761 	.byte	-12
   27AC FF                 9762 	.byte	-1
   27AD FE                 9763 	.byte	-2
   27AE 0C                 9764 	.byte	12
   27AF FF                 9765 	.byte	-1
   27B0 08                 9766 	.byte	8
   27B1 FB                 9767 	.byte	-5
   27B2 FF                 9768 	.byte	-1
   27B3 02                 9769 	.byte	2
   27B4 F3                 9770 	.byte	-13
   27B5 FF                 9771 	.byte	-1
   27B6 F8                 9772 	.byte	-8
   27B7 06                 9773 	.byte	6
   27B8 FF                 9774 	.byte	-1
   27B9 1B                 9775 	.byte	27
   27BA 0B                 9776 	.byte	11
   27BB 00                 9777 	.byte	0
   27BC E3                 9778 	.byte	-29
   27BD 01                 9779 	.byte	1
   27BE FF                 9780 	.byte	-1
   27BF 1A                 9781 	.byte	26
   27C0 0B                 9782 	.byte	11
   27C1 00                 9783 	.byte	0
   27C2 EE                 9784 	.byte	-18
   27C3 F0                 9785 	.byte	-16
   27C4 FF                 9786 	.byte	-1
   27C5 1A                 9787 	.byte	26
   27C6 0A                 9788 	.byte	10
   27C7 00                 9789 	.byte	0
   27C8 E8                 9790 	.byte	-24
   27C9 E9                 9791 	.byte	-23
   27CA FF                 9792 	.byte	-1
   27CB 1B                 9793 	.byte	27
   27CC 0B                 9794 	.byte	11
   27CD 00                 9795 	.byte	0
   27CE F8                 9796 	.byte	-8
   27CF 06                 9797 	.byte	6
   27D0 FF                 9798 	.byte	-1
   27D1 FD                 9799 	.byte	-3
   27D2 0C                 9800 	.byte	12
   27D3 FF                 9801 	.byte	-1
   27D4 08                 9802 	.byte	8
   27D5 FA                 9803 	.byte	-6
   27D6 FF                 9804 	.byte	-1
   27D7 03                 9805 	.byte	3
   27D8 F4                 9806 	.byte	-12
   27D9 FF                 9807 	.byte	-1
   27DA F8                 9808 	.byte	-8
   27DB 06                 9809 	.byte	6
   27DC 01                 9810 	.byte	1
                           9811 	.globl _height2FallingBack8
   27DD                    9812 _height2FallingBack8:
   27DD 00                 9813 	.byte	0
   27DE 0F                 9814 	.byte	15
   27DF FE                 9815 	.byte	-2
   27E0 FF                 9816 	.byte	-1
   27E1 03                 9817 	.byte	3
   27E2 0D                 9818 	.byte	13
   27E3 FF                 9819 	.byte	-1
   27E4 F9                 9820 	.byte	-7
   27E5 FD                 9821 	.byte	-3
   27E6 FF                 9822 	.byte	-1
   27E7 FD                 9823 	.byte	-3
   27E8 F3                 9824 	.byte	-13
   27E9 FF                 9825 	.byte	-1
   27EA 07                 9826 	.byte	7
   27EB 03                 9827 	.byte	3
   27EC FF                 9828 	.byte	-1
   27ED 1B                 9829 	.byte	27
   27EE F6                 9830 	.byte	-10
   27EF 00                 9831 	.byte	0
   27F0 E8                 9832 	.byte	-24
   27F1 17                 9833 	.byte	23
   27F2 FF                 9834 	.byte	-1
   27F3 1B                 9835 	.byte	27
   27F4 F6                 9836 	.byte	-10
   27F5 00                 9837 	.byte	0
   27F6 DE                 9838 	.byte	-34
   27F7 07                 9839 	.byte	7
   27F8 FF                 9840 	.byte	-1
   27F9 1B                 9841 	.byte	27
   27FA F7                 9842 	.byte	-9
   27FB 00                 9843 	.byte	0
   27FC E2                 9844 	.byte	-30
   27FD FC                 9845 	.byte	-4
   27FE FF                 9846 	.byte	-1
   27FF 1B                 9847 	.byte	27
   2800 F6                 9848 	.byte	-10
   2801 00                 9849 	.byte	0
   2802 07                 9850 	.byte	7
   2803 03                 9851 	.byte	3
   2804 FF                 9852 	.byte	-1
   2805 03                 9853 	.byte	3
   2806 0D                 9854 	.byte	13
   2807 FF                 9855 	.byte	-1
   2808 F9                 9856 	.byte	-7
   2809 FE                 9857 	.byte	-2
   280A FF                 9858 	.byte	-1
   280B FD                 9859 	.byte	-3
   280C F2                 9860 	.byte	-14
   280D FF                 9861 	.byte	-1
   280E 07                 9862 	.byte	7
   280F 03                 9863 	.byte	3
   2810 01                 9864 	.byte	1
                           9865 	.globl _height2RisingFront8
   2811                    9866 _height2RisingFront8:
   2811 00                 9867 	.byte	0
   2812 FF                 9868 	.byte	-1
   2813 06                 9869 	.byte	6
   2814 FF                 9870 	.byte	-1
   2815 02                 9871 	.byte	2
   2816 0E                 9872 	.byte	14
   2817 FF                 9873 	.byte	-1
   2818 02                 9874 	.byte	2
   2819 FA                 9875 	.byte	-6
   281A FF                 9876 	.byte	-1
   281B FD                 9877 	.byte	-3
   281C F2                 9878 	.byte	-14
   281D FF                 9879 	.byte	-1
   281E FF                 9880 	.byte	-1
   281F 06                 9881 	.byte	6
   2820 FF                 9882 	.byte	-1
   2821 1D                 9883 	.byte	29
   2822 FB                 9884 	.byte	-5
   2823 00                 9885 	.byte	0
   2824 E5                 9886 	.byte	-27
   2825 13                 9887 	.byte	19
   2826 FF                 9888 	.byte	-1
   2827 1E                 9889 	.byte	30
   2828 FB                 9890 	.byte	-5
   2829 00                 9891 	.byte	0
   282A E4                 9892 	.byte	-28
   282B FF                 9893 	.byte	-1
   282C FF                 9894 	.byte	-1
   282D 1E                 9895 	.byte	30
   282E FB                 9896 	.byte	-5
   282F 00                 9897 	.byte	0
   2830 DF                 9898 	.byte	-33
   2831 F7                 9899 	.byte	-9
   2832 FF                 9900 	.byte	-1
   2833 1E                 9901 	.byte	30
   2834 FC                 9902 	.byte	-4
   2835 00                 9903 	.byte	0
   2836 FE                 9904 	.byte	-2
   2837 05                 9905 	.byte	5
   2838 FF                 9906 	.byte	-1
   2839 03                 9907 	.byte	3
   283A 0E                 9908 	.byte	14
   283B FF                 9909 	.byte	-1
   283C 02                 9910 	.byte	2
   283D FA                 9911 	.byte	-6
   283E FF                 9912 	.byte	-1
   283F FD                 9913 	.byte	-3
   2840 F3                 9914 	.byte	-13
   2841 FF                 9915 	.byte	-1
   2842 FE                 9916 	.byte	-2
   2843 05                 9917 	.byte	5
   2844 01                 9918 	.byte	1
                           9919 	.globl _height2FallingFront8
   2845                    9920 _height2FallingFront8:
   2845 FF                 9921 	.byte	-1
   2846 03                 9922 	.byte	3
   2847 0E                 9923 	.byte	14
   2848 FF                 9924 	.byte	-1
   2849 0F                 9925 	.byte	15
   284A FD                 9926 	.byte	-3
   284B FF                 9927 	.byte	-1
   284C FD                 9928 	.byte	-3
   284D F3                 9929 	.byte	-13
   284E FF                 9930 	.byte	-1
   284F F1                 9931 	.byte	-15
   2850 02                 9932 	.byte	2
   2851 FF                 9933 	.byte	-1
   2852 00                 9934 	.byte	0
   2853 0A                 9935 	.byte	10
   2854 00                 9936 	.byte	0
   2855 03                 9937 	.byte	3
   2856 04                 9938 	.byte	4
   2857 FF                 9939 	.byte	-1
   2858 FF                 9940 	.byte	-1
   2859 0A                 9941 	.byte	10
   285A 00                 9942 	.byte	0
   285B 10                 9943 	.byte	16
   285C F3                 9944 	.byte	-13
   285D FF                 9945 	.byte	-1
   285E FF                 9946 	.byte	-1
   285F 0A                 9947 	.byte	10
   2860 00                 9948 	.byte	0
   2861 FE                 9949 	.byte	-2
   2862 E9                 9950 	.byte	-23
   2863 FF                 9951 	.byte	-1
   2864 FF                 9952 	.byte	-1
   2865 09                 9953 	.byte	9
   2866 00                 9954 	.byte	0
   2867 F2                 9955 	.byte	-14
   2868 03                 9956 	.byte	3
   2869 FF                 9957 	.byte	-1
   286A 02                 9958 	.byte	2
   286B 0E                 9959 	.byte	14
   286C FF                 9960 	.byte	-1
   286D 0F                 9961 	.byte	15
   286E FD                 9962 	.byte	-3
   286F FF                 9963 	.byte	-1
   2870 FD                 9964 	.byte	-3
   2871 F2                 9965 	.byte	-14
   2872 FF                 9966 	.byte	-1
   2873 F2                 9967 	.byte	-14
   2874 03                 9968 	.byte	3
   2875 01                 9969 	.byte	1
                           9970 	.globl _height2RisingBack8
   2876                    9971 _height2RisingBack8:
   2876 00                 9972 	.byte	0
   2877 10                 9973 	.byte	16
   2878 F5                 9974 	.byte	-11
   2879 FF                 9975 	.byte	-1
   287A 03                 9976 	.byte	3
   287B 0D                 9977 	.byte	13
   287C FF                 9978 	.byte	-1
   287D 0C                 9979 	.byte	12
   287E FB                 9980 	.byte	-5
   287F FF                 9981 	.byte	-1
   2880 FD                 9982 	.byte	-3
   2881 F2                 9983 	.byte	-14
   2882 FF                 9984 	.byte	-1
   2883 F4                 9985 	.byte	-12
   2884 06                 9986 	.byte	6
   2885 FF                 9987 	.byte	-1
   2886 12                 9988 	.byte	18
   2887 05                 9989 	.byte	5
   2888 00                 9990 	.byte	0
   2889 F1                 9991 	.byte	-15
   288A 08                 9992 	.byte	8
   288B FF                 9993 	.byte	-1
   288C 12                 9994 	.byte	18
   288D 05                 9995 	.byte	5
   288E 00                 9996 	.byte	0
   288F FA                 9997 	.byte	-6
   2890 F6                 9998 	.byte	-10
   2891 FF                 9999 	.byte	-1
   2892 12                10000 	.byte	18
   2893 04                10001 	.byte	4
   2894 00                10002 	.byte	0
   2895 EB                10003 	.byte	-21
   2896 EE                10004 	.byte	-18
   2897 FF                10005 	.byte	-1
   2898 12                10006 	.byte	18
   2899 05                10007 	.byte	5
   289A 00                10008 	.byte	0
   289B F4                10009 	.byte	-12
   289C 06                10010 	.byte	6
   289D FF                10011 	.byte	-1
   289E 03                10012 	.byte	3
   289F 0D                10013 	.byte	13
   28A0 FF                10014 	.byte	-1
   28A1 0C                10015 	.byte	12
   28A2 FA                10016 	.byte	-6
   28A3 FF                10017 	.byte	-1
   28A4 FD                10018 	.byte	-3
   28A5 F3                10019 	.byte	-13
   28A6 FF                10020 	.byte	-1
   28A7 F4                10021 	.byte	-12
   28A8 06                10022 	.byte	6
   28A9 01                10023 	.byte	1
                          10024 	.globl _depth2RollingLeft8
   28AA                   10025 _depth2RollingLeft8:
   28AA FF                10026 	.byte	-1
   28AB 0D                10027 	.byte	13
   28AC 07                10028 	.byte	7
   28AD FF                10029 	.byte	-1
   28AE 10                10030 	.byte	16
   28AF F5                10031 	.byte	-11
   28B0 FF                10032 	.byte	-1
   28B1 F3                10033 	.byte	-13
   28B2 F9                10034 	.byte	-7
   28B3 FF                10035 	.byte	-1
   28B4 F0                10036 	.byte	-16
   28B5 0B                10037 	.byte	11
   28B6 FF                10038 	.byte	-1
   28B7 04                10039 	.byte	4
   28B8 F5                10040 	.byte	-11
   28B9 00                10041 	.byte	0
   28BA 09                10042 	.byte	9
   28BB 12                10043 	.byte	18
   28BC FF                10044 	.byte	-1
   28BD 04                10045 	.byte	4
   28BE F5                10046 	.byte	-11
   28BF 00                10047 	.byte	0
   28C0 0C                10048 	.byte	12
   28C1 00                10049 	.byte	0
   28C2 FF                10050 	.byte	-1
   28C3 04                10051 	.byte	4
   28C4 F4                10052 	.byte	-12
   28C5 00                10053 	.byte	0
   28C6 EF                10054 	.byte	-17
   28C7 05                10055 	.byte	5
   28C8 FF                10056 	.byte	-1
   28C9 04                10057 	.byte	4
   28CA F4                10058 	.byte	-12
   28CB 00                10059 	.byte	0
   28CC F0                10060 	.byte	-16
   28CD 0C                10061 	.byte	12
   28CE FF                10062 	.byte	-1
   28CF 0D                10063 	.byte	13
   28D0 07                10064 	.byte	7
   28D1 FF                10065 	.byte	-1
   28D2 10                10066 	.byte	16
   28D3 F4                10067 	.byte	-12
   28D4 FF                10068 	.byte	-1
   28D5 F3                10069 	.byte	-13
   28D6 F9                10070 	.byte	-7
   28D7 FF                10071 	.byte	-1
   28D8 F0                10072 	.byte	-16
   28D9 0C                10073 	.byte	12
   28DA 01                10074 	.byte	1
                          10075 	.globl _depth2RollingRight8
   28DB                   10076 _depth2RollingRight8:
   28DB 00                10077 	.byte	0
   28DC 0D                10078 	.byte	13
   28DD 07                10079 	.byte	7
   28DE FF                10080 	.byte	-1
   28DF F6                10081 	.byte	-10
   28E0 07                10082 	.byte	7
   28E1 FF                10083 	.byte	-1
   28E2 10                10084 	.byte	16
   28E3 F4                10085 	.byte	-12
   28E4 FF                10086 	.byte	-1
   28E5 0A                10087 	.byte	10
   28E6 FA                10088 	.byte	-6
   28E7 FF                10089 	.byte	-1
   28E8 F0                10090 	.byte	-16
   28E9 0B                10091 	.byte	11
   28EA FF                10092 	.byte	-1
   28EB 09                10093 	.byte	9
   28EC 0C                10094 	.byte	12
   28ED 00                10095 	.byte	0
   28EE ED                10096 	.byte	-19
   28EF FB                10097 	.byte	-5
   28F0 FF                10098 	.byte	-1
   28F1 09                10099 	.byte	9
   28F2 0C                10100 	.byte	12
   28F3 00                10101 	.byte	0
   28F4 07                10102 	.byte	7
   28F5 E8                10103 	.byte	-24
   28F6 FF                10104 	.byte	-1
   28F7 09                10105 	.byte	9
   28F8 0C                10106 	.byte	12
   28F9 00                10107 	.byte	0
   28FA 01                10108 	.byte	1
   28FB EE                10109 	.byte	-18
   28FC FF                10110 	.byte	-1
   28FD 09                10111 	.byte	9
   28FE 0B                10112 	.byte	11
   28FF 00                10113 	.byte	0
   2900 F0                10114 	.byte	-16
   2901 0C                10115 	.byte	12
   2902 FF                10116 	.byte	-1
   2903 F6                10117 	.byte	-10
   2904 07                10118 	.byte	7
   2905 FF                10119 	.byte	-1
   2906 10                10120 	.byte	16
   2907 F4                10121 	.byte	-12
   2908 FF                10122 	.byte	-1
   2909 0A                10123 	.byte	10
   290A F9                10124 	.byte	-7
   290B FF                10125 	.byte	-1
   290C F0                10126 	.byte	-16
   290D 0C                10127 	.byte	12
   290E 01                10128 	.byte	1
                          10129 	.globl _width2RollingFront8
   290F                   10130 _width2RollingFront8:
   290F FF                10131 	.byte	-1
   2910 06                10132 	.byte	6
   2911 1C                10133 	.byte	28
   2912 FF                10134 	.byte	-1
   2913 0F                10135 	.byte	15
   2914 FD                10136 	.byte	-3
   2915 FF                10137 	.byte	-1
   2916 FA                10138 	.byte	-6
   2917 E5                10139 	.byte	-27
   2918 FF                10140 	.byte	-1
   2919 F1                10141 	.byte	-15
   291A 02                10142 	.byte	2
   291B FF                10143 	.byte	-1
   291C 00                10144 	.byte	0
   291D 05                10145 	.byte	5
   291E 00                10146 	.byte	0
   291F 06                10147 	.byte	6
   2920 17                10148 	.byte	23
   2921 FF                10149 	.byte	-1
   2922 00                10150 	.byte	0
   2923 05                10151 	.byte	5
   2924 00                10152 	.byte	0
   2925 0F                10153 	.byte	15
   2926 F8                10154 	.byte	-8
   2927 FF                10155 	.byte	-1
   2928 00                10156 	.byte	0
   2929 05                10157 	.byte	5
   292A 00                10158 	.byte	0
   292B FA                10159 	.byte	-6
   292C E0                10160 	.byte	-32
   292D FF                10161 	.byte	-1
   292E 00                10162 	.byte	0
   292F 04                10163 	.byte	4
   2930 00                10164 	.byte	0
   2931 F1                10165 	.byte	-15
   2932 03                10166 	.byte	3
   2933 FF                10167 	.byte	-1
   2934 06                10168 	.byte	6
   2935 1C                10169 	.byte	28
   2936 FF                10170 	.byte	-1
   2937 0F                10171 	.byte	15
   2938 FD                10172 	.byte	-3
   2939 FF                10173 	.byte	-1
   293A FA                10174 	.byte	-6
   293B E4                10175 	.byte	-28
   293C FF                10176 	.byte	-1
   293D F1                10177 	.byte	-15
   293E 03                10178 	.byte	3
   293F 01                10179 	.byte	1
                          10180 	.globl _width2RollingBack8
   2940                   10181 _width2RollingBack8:
   2940 00                10182 	.byte	0
   2941 0F                10183 	.byte	15
   2942 FE                10184 	.byte	-2
   2943 FF                10185 	.byte	-1
   2944 06                10186 	.byte	6
   2945 1B                10187 	.byte	27
   2946 FF                10188 	.byte	-1
   2947 F9                10189 	.byte	-7
   2948 FD                10190 	.byte	-3
   2949 FF                10191 	.byte	-1
   294A FA                10192 	.byte	-6
   294B E5                10193 	.byte	-27
   294C FF                10194 	.byte	-1
   294D 07                10195 	.byte	7
   294E 03                10196 	.byte	3
   294F FF                10197 	.byte	-1
   2950 0E                10198 	.byte	14
   2951 FB                10199 	.byte	-5
   2952 00                10200 	.byte	0
   2953 F8                10201 	.byte	-8
   2954 20                10202 	.byte	32
   2955 FF                10203 	.byte	-1
   2956 0E                10204 	.byte	14
   2957 FB                10205 	.byte	-5
   2958 00                10206 	.byte	0
   2959 EB                10207 	.byte	-21
   295A 02                10208 	.byte	2
   295B FF                10209 	.byte	-1
   295C 0D                10210 	.byte	13
   295D FB                10211 	.byte	-5
   295E 00                10212 	.byte	0
   295F ED                10213 	.byte	-19
   2960 EA                10214 	.byte	-22
   2961 FF                10215 	.byte	-1
   2962 0D                10216 	.byte	13
   2963 FB                10217 	.byte	-5
   2964 00                10218 	.byte	0
   2965 08                10219 	.byte	8
   2966 03                10220 	.byte	3
   2967 FF                10221 	.byte	-1
   2968 06                10222 	.byte	6
   2969 1B                10223 	.byte	27
   296A FF                10224 	.byte	-1
   296B F8                10225 	.byte	-8
   296C FD                10226 	.byte	-3
   296D FF                10227 	.byte	-1
   296E FA                10228 	.byte	-6
   296F E5                10229 	.byte	-27
   2970 FF                10230 	.byte	-1
   2971 08                10231 	.byte	8
   2972 03                10232 	.byte	3
   2973 01                10233 	.byte	1
                          10234 	.globl _height2FallingLeft9
   2974                   10235 _height2FallingLeft9:
   2974 FF                10236 	.byte	-1
   2975 0D                10237 	.byte	13
   2976 05                10238 	.byte	5
   2977 FF                10239 	.byte	-1
   2978 08                10240 	.byte	8
   2979 FB                10241 	.byte	-5
   297A FF                10242 	.byte	-1
   297B F3                10243 	.byte	-13
   297C FB                10244 	.byte	-5
   297D FF                10245 	.byte	-1
   297E F8                10246 	.byte	-8
   297F 05                10247 	.byte	5
   2980 FF                10248 	.byte	-1
   2981 04                10249 	.byte	4
   2982 E7                10250 	.byte	-25
   2983 00                10251 	.byte	0
   2984 09                10252 	.byte	9
   2985 1E                10253 	.byte	30
   2986 FF                10254 	.byte	-1
   2987 05                10255 	.byte	5
   2988 E7                10256 	.byte	-25
   2989 00                10257 	.byte	0
   298A 03                10258 	.byte	3
   298B 14                10259 	.byte	20
   298C FF                10260 	.byte	-1
   298D 05                10261 	.byte	5
   298E E6                10262 	.byte	-26
   298F 00                10263 	.byte	0
   2990 EE                10264 	.byte	-18
   2991 15                10265 	.byte	21
   2992 FF                10266 	.byte	-1
   2993 04                10267 	.byte	4
   2994 E6                10268 	.byte	-26
   2995 00                10269 	.byte	0
   2996 F8                10270 	.byte	-8
   2997 06                10271 	.byte	6
   2998 FF                10272 	.byte	-1
   2999 0E                10273 	.byte	14
   299A 05                10274 	.byte	5
   299B FF                10275 	.byte	-1
   299C 08                10276 	.byte	8
   299D FA                10277 	.byte	-6
   299E FF                10278 	.byte	-1
   299F F2                10279 	.byte	-14
   29A0 FB                10280 	.byte	-5
   29A1 FF                10281 	.byte	-1
   29A2 F8                10282 	.byte	-8
   29A3 06                10283 	.byte	6
   29A4 01                10284 	.byte	1
                          10285 	.globl _height2RisingRight9
   29A5                   10286 _height2RisingRight9:
   29A5 00                10287 	.byte	0
   29A6 06                10288 	.byte	6
   29A7 1C                10289 	.byte	28
   29A8 FF                10290 	.byte	-1
   29A9 06                10291 	.byte	6
   29AA 0E                10292 	.byte	14
   29AB FF                10293 	.byte	-1
   29AC 08                10294 	.byte	8
   29AD FA                10295 	.byte	-6
   29AE FF                10296 	.byte	-1
   29AF FA                10297 	.byte	-6
   29B0 F2                10298 	.byte	-14
   29B1 FF                10299 	.byte	-1
   29B2 F8                10300 	.byte	-8
   29B3 06                10301 	.byte	6
   29B4 FF                10302 	.byte	-1
   29B5 18                10303 	.byte	24
   29B6 F9                10304 	.byte	-7
   29B7 00                10305 	.byte	0
   29B8 EE                10306 	.byte	-18
   29B9 15                10307 	.byte	21
   29BA FF                10308 	.byte	-1
   29BB 18                10309 	.byte	24
   29BC F8                10310 	.byte	-8
   29BD 00                10311 	.byte	0
   29BE F0                10312 	.byte	-16
   29BF 02                10313 	.byte	2
   29C0 FF                10314 	.byte	-1
   29C1 18                10315 	.byte	24
   29C2 F8                10316 	.byte	-8
   29C3 00                10317 	.byte	0
   29C4 E2                10318 	.byte	-30
   29C5 FA                10319 	.byte	-6
   29C6 FF                10320 	.byte	-1
   29C7 18                10321 	.byte	24
   29C8 F9                10322 	.byte	-7
   29C9 00                10323 	.byte	0
   29CA F8                10324 	.byte	-8
   29CB 06                10325 	.byte	6
   29CC FF                10326 	.byte	-1
   29CD 06                10327 	.byte	6
   29CE 0D                10328 	.byte	13
   29CF FF                10329 	.byte	-1
   29D0 08                10330 	.byte	8
   29D1 FA                10331 	.byte	-6
   29D2 FF                10332 	.byte	-1
   29D3 FA                10333 	.byte	-6
   29D4 F3                10334 	.byte	-13
   29D5 FF                10335 	.byte	-1
   29D6 F8                10336 	.byte	-8
   29D7 06                10337 	.byte	6
   29D8 01                10338 	.byte	1
                          10339 	.globl _height2FallingRight9
   29D9                   10340 _height2FallingRight9:
   29D9 00                10341 	.byte	0
   29DA 0E                10342 	.byte	14
   29DB 09                10343 	.byte	9
   29DC FF                10344 	.byte	-1
   29DD F5                10345 	.byte	-11
   29DE 05                10346 	.byte	5
   29DF FF                10347 	.byte	-1
   29E0 08                10348 	.byte	8
   29E1 FA                10349 	.byte	-6
   29E2 FF                10350 	.byte	-1
   29E3 0B                10351 	.byte	11
   29E4 FB                10352 	.byte	-5
   29E5 FF                10353 	.byte	-1
   29E6 F8                10354 	.byte	-8
   29E7 06                10355 	.byte	6
   29E8 FF                10356 	.byte	-1
   29E9 0F                10357 	.byte	15
   29EA 1A                10358 	.byte	26
   29EB 00                10359 	.byte	0
   29EC E6                10360 	.byte	-26
   29ED EB                10361 	.byte	-21
   29EE FF                10362 	.byte	-1
   29EF 0F                10363 	.byte	15
   29F0 1A                10364 	.byte	26
   29F1 00                10365 	.byte	0
   29F2 F9                10366 	.byte	-7
   29F3 E0                10367 	.byte	-32
   29F4 FF                10368 	.byte	-1
   29F5 0F                10369 	.byte	15
   29F6 1A                10370 	.byte	26
   29F7 00                10371 	.byte	0
   29F8 FC                10372 	.byte	-4
   29F9 E1                10373 	.byte	-31
   29FA FF                10374 	.byte	-1
   29FB 0F                10375 	.byte	15
   29FC 1A                10376 	.byte	26
   29FD 00                10377 	.byte	0
   29FE F8                10378 	.byte	-8
   29FF 06                10379 	.byte	6
   2A00 FF                10380 	.byte	-1
   2A01 F5                10381 	.byte	-11
   2A02 05                10382 	.byte	5
   2A03 FF                10383 	.byte	-1
   2A04 08                10384 	.byte	8
   2A05 FA                10385 	.byte	-6
   2A06 FF                10386 	.byte	-1
   2A07 0B                10387 	.byte	11
   2A08 FB                10388 	.byte	-5
   2A09 FF                10389 	.byte	-1
   2A0A F8                10390 	.byte	-8
   2A0B 06                10391 	.byte	6
   2A0C 01                10392 	.byte	1
                          10393 	.globl _height2RisingLeft9
   2A0D                   10394 _height2RisingLeft9:
   2A0D 00                10395 	.byte	0
   2A0E 00                10396 	.byte	0
   2A0F F3                10397 	.byte	-13
   2A10 FF                10398 	.byte	-1
   2A11 00                10399 	.byte	0
   2A12 0D                10400 	.byte	13
   2A13 FF                10401 	.byte	-1
   2A14 08                10402 	.byte	8
   2A15 FB                10403 	.byte	-5
   2A16 FF                10404 	.byte	-1
   2A17 00                10405 	.byte	0
   2A18 F2                10406 	.byte	-14
   2A19 FF                10407 	.byte	-1
   2A1A F8                10408 	.byte	-8
   2A1B 06                10409 	.byte	6
   2A1C FF                10410 	.byte	-1
   2A1D 1B                10411 	.byte	27
   2A1E 08                10412 	.byte	8
   2A1F 00                10413 	.byte	0
   2A20 E5                10414 	.byte	-27
   2A21 05                10415 	.byte	5
   2A22 FF                10416 	.byte	-1
   2A23 1B                10417 	.byte	27
   2A24 07                10418 	.byte	7
   2A25 00                10419 	.byte	0
   2A26 ED                10420 	.byte	-19
   2A27 F4                10421 	.byte	-12
   2A28 FF                10422 	.byte	-1
   2A29 1B                10423 	.byte	27
   2A2A 06                10424 	.byte	6
   2A2B 00                10425 	.byte	0
   2A2C E5                10426 	.byte	-27
   2A2D EC                10427 	.byte	-20
   2A2E FF                10428 	.byte	-1
   2A2F 1B                10429 	.byte	27
   2A30 08                10430 	.byte	8
   2A31 00                10431 	.byte	0
   2A32 F8                10432 	.byte	-8
   2A33 06                10433 	.byte	6
   2A34 FF                10434 	.byte	-1
   2A35 00                10435 	.byte	0
   2A36 0C                10436 	.byte	12
   2A37 FF                10437 	.byte	-1
   2A38 08                10438 	.byte	8
   2A39 FA                10439 	.byte	-6
   2A3A FF                10440 	.byte	-1
   2A3B 00                10441 	.byte	0
   2A3C F4                10442 	.byte	-12
   2A3D FF                10443 	.byte	-1
   2A3E F8                10444 	.byte	-8
   2A3F 06                10445 	.byte	6
   2A40 01                10446 	.byte	1
                          10447 	.globl _height2FallingBack9
   2A41                   10448 _height2FallingBack9:
   2A41 00                10449 	.byte	0
   2A42 11                10450 	.byte	17
   2A43 FD                10451 	.byte	-3
   2A44 FF                10452 	.byte	-1
   2A45 03                10453 	.byte	3
   2A46 0D                10454 	.byte	13
   2A47 FF                10455 	.byte	-1
   2A48 F7                10456 	.byte	-9
   2A49 FE                10457 	.byte	-2
   2A4A FF                10458 	.byte	-1
   2A4B FD                10459 	.byte	-3
   2A4C F3                10460 	.byte	-13
   2A4D FF                10461 	.byte	-1
   2A4E 09                10462 	.byte	9
   2A4F 02                10463 	.byte	2
   2A50 FF                10464 	.byte	-1
   2A51 19                10465 	.byte	25
   2A52 F5                10466 	.byte	-11
   2A53 00                10467 	.byte	0
   2A54 EA                10468 	.byte	-22
   2A55 18                10469 	.byte	24
   2A56 FF                10470 	.byte	-1
   2A57 19                10471 	.byte	25
   2A58 F6                10472 	.byte	-10
   2A59 00                10473 	.byte	0
   2A5A DE                10474 	.byte	-34
   2A5B 08                10475 	.byte	8
   2A5C FF                10476 	.byte	-1
   2A5D 19                10477 	.byte	25
   2A5E F6                10478 	.byte	-10
   2A5F 00                10479 	.byte	0
   2A60 E4                10480 	.byte	-28
   2A61 FD                10481 	.byte	-3
   2A62 FF                10482 	.byte	-1
   2A63 19                10483 	.byte	25
   2A64 F5                10484 	.byte	-11
   2A65 00                10485 	.byte	0
   2A66 09                10486 	.byte	9
   2A67 02                10487 	.byte	2
   2A68 FF                10488 	.byte	-1
   2A69 03                10489 	.byte	3
   2A6A 0E                10490 	.byte	14
   2A6B FF                10491 	.byte	-1
   2A6C F7                10492 	.byte	-9
   2A6D FE                10493 	.byte	-2
   2A6E FF                10494 	.byte	-1
   2A6F FD                10495 	.byte	-3
   2A70 F2                10496 	.byte	-14
   2A71 FF                10497 	.byte	-1
   2A72 09                10498 	.byte	9
   2A73 02                10499 	.byte	2
   2A74 01                10500 	.byte	1
                          10501 	.globl _height2RisingFront9
   2A75                   10502 _height2RisingFront9:
   2A75 00                10503 	.byte	0
   2A76 FD                10504 	.byte	-3
   2A77 06                10505 	.byte	6
   2A78 FF                10506 	.byte	-1
   2A79 03                10507 	.byte	3
   2A7A 0E                10508 	.byte	14
   2A7B FF                10509 	.byte	-1
   2A7C 03                10510 	.byte	3
   2A7D FA                10511 	.byte	-6
   2A7E FF                10512 	.byte	-1
   2A7F FD                10513 	.byte	-3
   2A80 F2                10514 	.byte	-14
   2A81 FF                10515 	.byte	-1
   2A82 FD                10516 	.byte	-3
   2A83 06                10517 	.byte	6
   2A84 FF                10518 	.byte	-1
   2A85 1C                10519 	.byte	28
   2A86 FD                10520 	.byte	-3
   2A87 00                10521 	.byte	0
   2A88 E7                10522 	.byte	-25
   2A89 11                10523 	.byte	17
   2A8A FF                10524 	.byte	-1
   2A8B 1C                10525 	.byte	28
   2A8C FD                10526 	.byte	-3
   2A8D 00                10527 	.byte	0
   2A8E E7                10528 	.byte	-25
   2A8F FD                10529 	.byte	-3
   2A90 FF                10530 	.byte	-1
   2A91 1D                10531 	.byte	29
   2A92 FD                10532 	.byte	-3
   2A93 00                10533 	.byte	0
   2A94 E0                10534 	.byte	-32
   2A95 F5                10535 	.byte	-11
   2A96 FF                10536 	.byte	-1
   2A97 1D                10537 	.byte	29
   2A98 FE                10538 	.byte	-2
   2A99 00                10539 	.byte	0
   2A9A FC                10540 	.byte	-4
   2A9B 05                10541 	.byte	5
   2A9C FF                10542 	.byte	-1
   2A9D 03                10543 	.byte	3
   2A9E 0E                10544 	.byte	14
   2A9F FF                10545 	.byte	-1
   2AA0 04                10546 	.byte	4
   2AA1 FA                10547 	.byte	-6
   2AA2 FF                10548 	.byte	-1
   2AA3 FD                10549 	.byte	-3
   2AA4 F3                10550 	.byte	-13
   2AA5 FF                10551 	.byte	-1
   2AA6 FC                10552 	.byte	-4
   2AA7 05                10553 	.byte	5
   2AA8 01                10554 	.byte	1
                          10555 	.globl _height2FallingFront9
   2AA9                   10556 _height2FallingFront9:
   2AA9 FF                10557 	.byte	-1
   2AAA 03                10558 	.byte	3
   2AAB 0E                10559 	.byte	14
   2AAC FF                10560 	.byte	-1
   2AAD 0F                10561 	.byte	15
   2AAE FE                10562 	.byte	-2
   2AAF FF                10563 	.byte	-1
   2AB0 FD                10564 	.byte	-3
   2AB1 F3                10565 	.byte	-13
   2AB2 FF                10566 	.byte	-1
   2AB3 F1                10567 	.byte	-15
   2AB4 01                10568 	.byte	1
   2AB5 FF                10569 	.byte	-1
   2AB6 FC                10570 	.byte	-4
   2AB7 0B                10571 	.byte	11
   2AB8 00                10572 	.byte	0
   2AB9 07                10573 	.byte	7
   2ABA 03                10574 	.byte	3
   2ABB FF                10575 	.byte	-1
   2ABC FC                10576 	.byte	-4
   2ABD 0B                10577 	.byte	11
   2ABE 00                10578 	.byte	0
   2ABF 13                10579 	.byte	19
   2AC0 F3                10580 	.byte	-13
   2AC1 FF                10581 	.byte	-1
   2AC2 FB                10582 	.byte	-5
   2AC3 0B                10583 	.byte	11
   2AC4 00                10584 	.byte	0
   2AC5 02                10585 	.byte	2
   2AC6 E8                10586 	.byte	-24
   2AC7 FF                10587 	.byte	-1
   2AC8 FB                10588 	.byte	-5
   2AC9 0A                10589 	.byte	10
   2ACA 00                10590 	.byte	0
   2ACB F2                10591 	.byte	-14
   2ACC 02                10592 	.byte	2
   2ACD FF                10593 	.byte	-1
   2ACE 03                10594 	.byte	3
   2ACF 0E                10595 	.byte	14
   2AD0 FF                10596 	.byte	-1
   2AD1 0E                10597 	.byte	14
   2AD2 FE                10598 	.byte	-2
   2AD3 FF                10599 	.byte	-1
   2AD4 FD                10600 	.byte	-3
   2AD5 F2                10601 	.byte	-14
   2AD6 FF                10602 	.byte	-1
   2AD7 F2                10603 	.byte	-14
   2AD8 02                10604 	.byte	2
   2AD9 01                10605 	.byte	1
                          10606 	.globl _height2RisingBack9
   2ADA                   10607 _height2RisingBack9:
   2ADA 00                10608 	.byte	0
   2ADB 10                10609 	.byte	16
   2ADC F5                10610 	.byte	-11
   2ADD FF                10611 	.byte	-1
   2ADE 03                10612 	.byte	3
   2ADF 0D                10613 	.byte	13
   2AE0 FF                10614 	.byte	-1
   2AE1 0B                10615 	.byte	11
   2AE2 FB                10616 	.byte	-5
   2AE3 FF                10617 	.byte	-1
   2AE4 FD                10618 	.byte	-3
   2AE5 F2                10619 	.byte	-14
   2AE6 FF                10620 	.byte	-1
   2AE7 F5                10621 	.byte	-11
   2AE8 06                10622 	.byte	6
   2AE9 FF                10623 	.byte	-1
   2AEA 15                10624 	.byte	21
   2AEB 03                10625 	.byte	3
   2AEC 00                10626 	.byte	0
   2AED EE                10627 	.byte	-18
   2AEE 0A                10628 	.byte	10
   2AEF FF                10629 	.byte	-1
   2AF0 15                10630 	.byte	21
   2AF1 03                10631 	.byte	3
   2AF2 00                10632 	.byte	0
   2AF3 F6                10633 	.byte	-10
   2AF4 F8                10634 	.byte	-8
   2AF5 FF                10635 	.byte	-1
   2AF6 15                10636 	.byte	21
   2AF7 03                10637 	.byte	3
   2AF8 00                10638 	.byte	0
   2AF9 E8                10639 	.byte	-24
   2AFA EF                10640 	.byte	-17
   2AFB FF                10641 	.byte	-1
   2AFC 15                10642 	.byte	21
   2AFD 03                10643 	.byte	3
   2AFE 00                10644 	.byte	0
   2AFF F5                10645 	.byte	-11
   2B00 06                10646 	.byte	6
   2B01 FF                10647 	.byte	-1
   2B02 03                10648 	.byte	3
   2B03 0D                10649 	.byte	13
   2B04 FF                10650 	.byte	-1
   2B05 0B                10651 	.byte	11
   2B06 FB                10652 	.byte	-5
   2B07 FF                10653 	.byte	-1
   2B08 FD                10654 	.byte	-3
   2B09 F2                10655 	.byte	-14
   2B0A FF                10656 	.byte	-1
   2B0B F5                10657 	.byte	-11
   2B0C 06                10658 	.byte	6
   2B0D 01                10659 	.byte	1
                          10660 	.globl _depth2RollingLeft9
   2B0E                   10661 _depth2RollingLeft9:
   2B0E FF                10662 	.byte	-1
   2B0F 0D                10663 	.byte	13
   2B10 05                10664 	.byte	5
   2B11 FF                10665 	.byte	-1
   2B12 10                10666 	.byte	16
   2B13 F5                10667 	.byte	-11
   2B14 FF                10668 	.byte	-1
   2B15 F3                10669 	.byte	-13
   2B16 FB                10670 	.byte	-5
   2B17 FF                10671 	.byte	-1
   2B18 F0                10672 	.byte	-16
   2B19 0B                10673 	.byte	11
   2B1A FF                10674 	.byte	-1
   2B1B 02                10675 	.byte	2
   2B1C F4                10676 	.byte	-12
   2B1D 00                10677 	.byte	0
   2B1E 0B                10678 	.byte	11
   2B1F 11                10679 	.byte	17
   2B20 FF                10680 	.byte	-1
   2B21 02                10681 	.byte	2
   2B22 F4                10682 	.byte	-12
   2B23 00                10683 	.byte	0
   2B24 0E                10684 	.byte	14
   2B25 01                10685 	.byte	1
   2B26 FF                10686 	.byte	-1
   2B27 02                10687 	.byte	2
   2B28 F3                10688 	.byte	-13
   2B29 00                10689 	.byte	0
   2B2A F1                10690 	.byte	-15
   2B2B 08                10691 	.byte	8
   2B2C FF                10692 	.byte	-1
   2B2D 02                10693 	.byte	2
   2B2E F3                10694 	.byte	-13
   2B2F 00                10695 	.byte	0
   2B30 F0                10696 	.byte	-16
   2B31 0C                10697 	.byte	12
   2B32 FF                10698 	.byte	-1
   2B33 0D                10699 	.byte	13
   2B34 05                10700 	.byte	5
   2B35 FF                10701 	.byte	-1
   2B36 10                10702 	.byte	16
   2B37 F4                10703 	.byte	-12
   2B38 FF                10704 	.byte	-1
   2B39 F3                10705 	.byte	-13
   2B3A FB                10706 	.byte	-5
   2B3B FF                10707 	.byte	-1
   2B3C F0                10708 	.byte	-16
   2B3D 0C                10709 	.byte	12
   2B3E 01                10710 	.byte	1
                          10711 	.globl _depth2RollingRight9
   2B3F                   10712 _depth2RollingRight9:
   2B3F 00                10713 	.byte	0
   2B40 0E                10714 	.byte	14
   2B41 09                10715 	.byte	9
   2B42 FF                10716 	.byte	-1
   2B43 F5                10717 	.byte	-11
   2B44 05                10718 	.byte	5
   2B45 FF                10719 	.byte	-1
   2B46 10                10720 	.byte	16
   2B47 F4                10721 	.byte	-12
   2B48 FF                10722 	.byte	-1
   2B49 0B                10723 	.byte	11
   2B4A FC                10724 	.byte	-4
   2B4B FF                10725 	.byte	-1
   2B4C F0                10726 	.byte	-16
   2B4D 0B                10727 	.byte	11
   2B4E FF                10728 	.byte	-1
   2B4F 08                10729 	.byte	8
   2B50 0D                10730 	.byte	13
   2B51 00                10731 	.byte	0
   2B52 ED                10732 	.byte	-19
   2B53 F8                10733 	.byte	-8
   2B54 FF                10734 	.byte	-1
   2B55 08                10735 	.byte	8
   2B56 0D                10736 	.byte	13
   2B57 00                10737 	.byte	0
   2B58 08                10738 	.byte	8
   2B59 E7                10739 	.byte	-25
   2B5A FF                10740 	.byte	-1
   2B5B 08                10741 	.byte	8
   2B5C 0D                10742 	.byte	13
   2B5D 00                10743 	.byte	0
   2B5E 03                10744 	.byte	3
   2B5F EF                10745 	.byte	-17
   2B60 FF                10746 	.byte	-1
   2B61 08                10747 	.byte	8
   2B62 0C                10748 	.byte	12
   2B63 00                10749 	.byte	0
   2B64 F0                10750 	.byte	-16
   2B65 0C                10751 	.byte	12
   2B66 FF                10752 	.byte	-1
   2B67 F5                10753 	.byte	-11
   2B68 05                10754 	.byte	5
   2B69 FF                10755 	.byte	-1
   2B6A 10                10756 	.byte	16
   2B6B F4                10757 	.byte	-12
   2B6C FF                10758 	.byte	-1
   2B6D 0B                10759 	.byte	11
   2B6E FB                10760 	.byte	-5
   2B6F FF                10761 	.byte	-1
   2B70 F0                10762 	.byte	-16
   2B71 0C                10763 	.byte	12
   2B72 01                10764 	.byte	1
                          10765 	.globl _width2RollingFront9
   2B73                   10766 _width2RollingFront9:
   2B73 FF                10767 	.byte	-1
   2B74 06                10768 	.byte	6
   2B75 1C                10769 	.byte	28
   2B76 FF                10770 	.byte	-1
   2B77 0F                10771 	.byte	15
   2B78 FE                10772 	.byte	-2
   2B79 FF                10773 	.byte	-1
   2B7A FA                10774 	.byte	-6
   2B7B E5                10775 	.byte	-27
   2B7C FF                10776 	.byte	-1
   2B7D F1                10777 	.byte	-15
   2B7E 01                10778 	.byte	1
   2B7F FF                10779 	.byte	-1
   2B80 FF                10780 	.byte	-1
   2B81 06                10781 	.byte	6
   2B82 00                10782 	.byte	0
   2B83 07                10783 	.byte	7
   2B84 16                10784 	.byte	22
   2B85 FF                10785 	.byte	-1
   2B86 FE                10786 	.byte	-2
   2B87 06                10787 	.byte	6
   2B88 00                10788 	.byte	0
   2B89 11                10789 	.byte	17
   2B8A F8                10790 	.byte	-8
   2B8B FF                10791 	.byte	-1
   2B8C FE                10792 	.byte	-2
   2B8D 05                10793 	.byte	5
   2B8E 00                10794 	.byte	0
   2B8F FC                10795 	.byte	-4
   2B90 E0                10796 	.byte	-32
   2B91 FF                10797 	.byte	-1
   2B92 FE                10798 	.byte	-2
   2B93 04                10799 	.byte	4
   2B94 00                10800 	.byte	0
   2B95 F2                10801 	.byte	-14
   2B96 03                10802 	.byte	3
   2B97 FF                10803 	.byte	-1
   2B98 05                10804 	.byte	5
   2B99 1C                10805 	.byte	28
   2B9A FF                10806 	.byte	-1
   2B9B 0F                10807 	.byte	15
   2B9C FD                10808 	.byte	-3
   2B9D FF                10809 	.byte	-1
   2B9E FA                10810 	.byte	-6
   2B9F E4                10811 	.byte	-28
   2BA0 FF                10812 	.byte	-1
   2BA1 F2                10813 	.byte	-14
   2BA2 03                10814 	.byte	3
   2BA3 01                10815 	.byte	1
                          10816 	.globl _width2RollingBack9
   2BA4                   10817 _width2RollingBack9:
   2BA4 00                10818 	.byte	0
   2BA5 11                10819 	.byte	17
   2BA6 FD                10820 	.byte	-3
   2BA7 FF                10821 	.byte	-1
   2BA8 06                10822 	.byte	6
   2BA9 1B                10823 	.byte	27
   2BAA FF                10824 	.byte	-1
   2BAB F7                10825 	.byte	-9
   2BAC FE                10826 	.byte	-2
   2BAD FF                10827 	.byte	-1
   2BAE FA                10828 	.byte	-6
   2BAF E5                10829 	.byte	-27
   2BB0 FF                10830 	.byte	-1
   2BB1 09                10831 	.byte	9
   2BB2 02                10832 	.byte	2
   2BB3 FF                10833 	.byte	-1
   2BB4 0C                10834 	.byte	12
   2BB5 FB                10835 	.byte	-5
   2BB6 00                10836 	.byte	0
   2BB7 FA                10837 	.byte	-6
   2BB8 20                10838 	.byte	32
   2BB9 FF                10839 	.byte	-1
   2BBA 0C                10840 	.byte	12
   2BBB FB                10841 	.byte	-5
   2BBC 00                10842 	.byte	0
   2BBD EB                10843 	.byte	-21
   2BBE 03                10844 	.byte	3
   2BBF FF                10845 	.byte	-1
   2BC0 0C                10846 	.byte	12
   2BC1 FA                10847 	.byte	-6
   2BC2 00                10848 	.byte	0
   2BC3 EE                10849 	.byte	-18
   2BC4 EB                10850 	.byte	-21
   2BC5 FF                10851 	.byte	-1
   2BC6 0C                10852 	.byte	12
   2BC7 FA                10853 	.byte	-6
   2BC8 00                10854 	.byte	0
   2BC9 09                10855 	.byte	9
   2BCA 03                10856 	.byte	3
   2BCB FF                10857 	.byte	-1
   2BCC 06                10858 	.byte	6
   2BCD 1B                10859 	.byte	27
   2BCE FF                10860 	.byte	-1
   2BCF F7                10861 	.byte	-9
   2BD0 FD                10862 	.byte	-3
   2BD1 FF                10863 	.byte	-1
   2BD2 FA                10864 	.byte	-6
   2BD3 E5                10865 	.byte	-27
   2BD4 FF                10866 	.byte	-1
   2BD5 09                10867 	.byte	9
   2BD6 03                10868 	.byte	3
   2BD7 01                10869 	.byte	1
                          10870 	.globl _height2FallingLeft10
   2BD8                   10871 _height2FallingLeft10:
   2BD8 FF                10872 	.byte	-1
   2BD9 0D                10873 	.byte	13
   2BDA 04                10874 	.byte	4
   2BDB FF                10875 	.byte	-1
   2BDC 08                10876 	.byte	8
   2BDD FB                10877 	.byte	-5
   2BDE FF                10878 	.byte	-1
   2BDF F3                10879 	.byte	-13
   2BE0 FC                10880 	.byte	-4
   2BE1 FF                10881 	.byte	-1
   2BE2 F8                10882 	.byte	-8
   2BE3 05                10883 	.byte	5
   2BE4 FF                10884 	.byte	-1
   2BE5 01                10885 	.byte	1
   2BE6 E6                10886 	.byte	-26
   2BE7 00                10887 	.byte	0
   2BE8 0C                10888 	.byte	12
   2BE9 1E                10889 	.byte	30
   2BEA FF                10890 	.byte	-1
   2BEB 01                10891 	.byte	1
   2BEC E6                10892 	.byte	-26
   2BED 00                10893 	.byte	0
   2BEE 07                10894 	.byte	7
   2BEF 15                10895 	.byte	21
   2BF0 FF                10896 	.byte	-1
   2BF1 01                10897 	.byte	1
   2BF2 E5                10898 	.byte	-27
   2BF3 00                10899 	.byte	0
   2BF4 F2                10900 	.byte	-14
   2BF5 17                10901 	.byte	23
   2BF6 FF                10902 	.byte	-1
   2BF7 01                10903 	.byte	1
   2BF8 E5                10904 	.byte	-27
   2BF9 00                10905 	.byte	0
   2BFA F8                10906 	.byte	-8
   2BFB 06                10907 	.byte	6
   2BFC FF                10908 	.byte	-1
   2BFD 0D                10909 	.byte	13
   2BFE 04                10910 	.byte	4
   2BFF FF                10911 	.byte	-1
   2C00 08                10912 	.byte	8
   2C01 FA                10913 	.byte	-6
   2C02 FF                10914 	.byte	-1
   2C03 F3                10915 	.byte	-13
   2C04 FC                10916 	.byte	-4
   2C05 FF                10917 	.byte	-1
   2C06 F8                10918 	.byte	-8
   2C07 06                10919 	.byte	6
   2C08 01                10920 	.byte	1
                          10921 	.globl _height2RisingRight10
   2C09                   10922 _height2RisingRight10:
   2C09 00                10923 	.byte	0
   2C0A 06                10924 	.byte	6
   2C0B 1C                10925 	.byte	28
   2C0C FF                10926 	.byte	-1
   2C0D 05                10927 	.byte	5
   2C0E 0E                10928 	.byte	14
   2C0F FF                10929 	.byte	-1
   2C10 08                10930 	.byte	8
   2C11 FA                10931 	.byte	-6
   2C12 FF                10932 	.byte	-1
   2C13 FB                10933 	.byte	-5
   2C14 F2                10934 	.byte	-14
   2C15 FF                10935 	.byte	-1
   2C16 F8                10936 	.byte	-8
   2C17 06                10937 	.byte	6
   2C18 FF                10938 	.byte	-1
   2C19 19                10939 	.byte	25
   2C1A FC                10940 	.byte	-4
   2C1B 00                10941 	.byte	0
   2C1C EC                10942 	.byte	-20
   2C1D 12                10943 	.byte	18
   2C1E FF                10944 	.byte	-1
   2C1F 19                10945 	.byte	25
   2C20 FC                10946 	.byte	-4
   2C21 00                10947 	.byte	0
   2C22 EF                10948 	.byte	-17
   2C23 FE                10949 	.byte	-2
   2C24 FF                10950 	.byte	-1
   2C25 19                10951 	.byte	25
   2C26 FC                10952 	.byte	-4
   2C27 00                10953 	.byte	0
   2C28 E2                10954 	.byte	-30
   2C29 F6                10955 	.byte	-10
   2C2A FF                10956 	.byte	-1
   2C2B 19                10957 	.byte	25
   2C2C FC                10958 	.byte	-4
   2C2D 00                10959 	.byte	0
   2C2E F8                10960 	.byte	-8
   2C2F 06                10961 	.byte	6
   2C30 FF                10962 	.byte	-1
   2C31 05                10963 	.byte	5
   2C32 0E                10964 	.byte	14
   2C33 FF                10965 	.byte	-1
   2C34 08                10966 	.byte	8
   2C35 FA                10967 	.byte	-6
   2C36 FF                10968 	.byte	-1
   2C37 FB                10969 	.byte	-5
   2C38 F2                10970 	.byte	-14
   2C39 FF                10971 	.byte	-1
   2C3A F8                10972 	.byte	-8
   2C3B 06                10973 	.byte	6
   2C3C 01                10974 	.byte	1
                          10975 	.globl _height2FallingRight10
   2C3D                   10976 _height2FallingRight10:
   2C3D 00                10977 	.byte	0
   2C3E 0F                10978 	.byte	15
   2C3F 0A                10979 	.byte	10
   2C40 FF                10980 	.byte	-1
   2C41 F4                10981 	.byte	-12
   2C42 04                10982 	.byte	4
   2C43 FF                10983 	.byte	-1
   2C44 08                10984 	.byte	8
   2C45 FA                10985 	.byte	-6
   2C46 FF                10986 	.byte	-1
   2C47 0C                10987 	.byte	12
   2C48 FC                10988 	.byte	-4
   2C49 FF                10989 	.byte	-1
   2C4A F8                10990 	.byte	-8
   2C4B 06                10991 	.byte	6
   2C4C FF                10992 	.byte	-1
   2C4D 0C                10993 	.byte	12
   2C4E 1B                10994 	.byte	27
   2C4F 00                10995 	.byte	0
   2C50 E8                10996 	.byte	-24
   2C51 E9                10997 	.byte	-23
   2C52 FF                10998 	.byte	-1
   2C53 0D                10999 	.byte	13
   2C54 1B                11000 	.byte	27
   2C55 00                11001 	.byte	0
   2C56 FB                11002 	.byte	-5
   2C57 DF                11003 	.byte	-33
   2C58 FF                11004 	.byte	-1
   2C59 0D                11005 	.byte	13
   2C5A 1B                11006 	.byte	27
   2C5B 00                11007 	.byte	0
   2C5C FF                11008 	.byte	-1
   2C5D E1                11009 	.byte	-31
   2C5E FF                11010 	.byte	-1
   2C5F 0C                11011 	.byte	12
   2C60 1B                11012 	.byte	27
   2C61 00                11013 	.byte	0
   2C62 F8                11014 	.byte	-8
   2C63 06                11015 	.byte	6
   2C64 FF                11016 	.byte	-1
   2C65 F5                11017 	.byte	-11
   2C66 04                11018 	.byte	4
   2C67 FF                11019 	.byte	-1
   2C68 08                11020 	.byte	8
   2C69 FA                11021 	.byte	-6
   2C6A FF                11022 	.byte	-1
   2C6B 0B                11023 	.byte	11
   2C6C FC                11024 	.byte	-4
   2C6D FF                11025 	.byte	-1
   2C6E F8                11026 	.byte	-8
   2C6F 06                11027 	.byte	6
   2C70 01                11028 	.byte	1
                          11029 	.globl _height2RisingLeft10
   2C71                   11030 _height2RisingLeft10:
   2C71 00                11031 	.byte	0
   2C72 00                11032 	.byte	0
   2C73 F3                11033 	.byte	-13
   2C74 FF                11034 	.byte	-1
   2C75 00                11035 	.byte	0
   2C76 0D                11036 	.byte	13
   2C77 FF                11037 	.byte	-1
   2C78 08                11038 	.byte	8
   2C79 FB                11039 	.byte	-5
   2C7A FF                11040 	.byte	-1
   2C7B FF                11041 	.byte	-1
   2C7C F2                11042 	.byte	-14
   2C7D FF                11043 	.byte	-1
   2C7E F9                11044 	.byte	-7
   2C7F 06                11045 	.byte	6
   2C80 FF                11046 	.byte	-1
   2C81 19                11047 	.byte	25
   2C82 04                11048 	.byte	4
   2C83 00                11049 	.byte	0
   2C84 E7                11050 	.byte	-25
   2C85 09                11051 	.byte	9
   2C86 FF                11052 	.byte	-1
   2C87 1B                11053 	.byte	27
   2C88 04                11054 	.byte	4
   2C89 00                11055 	.byte	0
   2C8A ED                11056 	.byte	-19
   2C8B F7                11057 	.byte	-9
   2C8C FF                11058 	.byte	-1
   2C8D 1B                11059 	.byte	27
   2C8E 04                11060 	.byte	4
   2C8F 00                11061 	.byte	0
   2C90 E4                11062 	.byte	-28
   2C91 EE                11063 	.byte	-18
   2C92 FF                11064 	.byte	-1
   2C93 1A                11065 	.byte	26
   2C94 04                11066 	.byte	4
   2C95 00                11067 	.byte	0
   2C96 F8                11068 	.byte	-8
   2C97 06                11069 	.byte	6
   2C98 FF                11070 	.byte	-1
   2C99 02                11071 	.byte	2
   2C9A 0D                11072 	.byte	13
   2C9B FF                11073 	.byte	-1
   2C9C 08                11074 	.byte	8
   2C9D FB                11075 	.byte	-5
   2C9E FF                11076 	.byte	-1
   2C9F FE                11077 	.byte	-2
   2CA0 F2                11078 	.byte	-14
   2CA1 FF                11079 	.byte	-1
   2CA2 F8                11080 	.byte	-8
   2CA3 06                11081 	.byte	6
   2CA4 01                11082 	.byte	1
                          11083 	.globl _height2FallingBack10
   2CA5                   11084 _height2FallingBack10:
   2CA5 00                11085 	.byte	0
   2CA6 12                11086 	.byte	18
   2CA7 FD                11087 	.byte	-3
   2CA8 FF                11088 	.byte	-1
   2CA9 03                11089 	.byte	3
   2CAA 0D                11090 	.byte	13
   2CAB FF                11091 	.byte	-1
   2CAC F6                11092 	.byte	-10
   2CAD FE                11093 	.byte	-2
   2CAE FF                11094 	.byte	-1
   2CAF FD                11095 	.byte	-3
   2CB0 F3                11096 	.byte	-13
   2CB1 FF                11097 	.byte	-1
   2CB2 0A                11098 	.byte	10
   2CB3 02                11099 	.byte	2
   2CB4 FF                11100 	.byte	-1
   2CB5 17                11101 	.byte	23
   2CB6 F4                11102 	.byte	-12
   2CB7 00                11103 	.byte	0
   2CB8 EC                11104 	.byte	-20
   2CB9 19                11105 	.byte	25
   2CBA FF                11106 	.byte	-1
   2CBB 17                11107 	.byte	23
   2CBC F5                11108 	.byte	-11
   2CBD 00                11109 	.byte	0
   2CBE DF                11110 	.byte	-33
   2CBF 09                11111 	.byte	9
   2CC0 FF                11112 	.byte	-1
   2CC1 16                11113 	.byte	22
   2CC2 F5                11114 	.byte	-11
   2CC3 00                11115 	.byte	0
   2CC4 E7                11116 	.byte	-25
   2CC5 FE                11117 	.byte	-2
   2CC6 FF                11118 	.byte	-1
   2CC7 16                11119 	.byte	22
   2CC8 F4                11120 	.byte	-12
   2CC9 00                11121 	.byte	0
   2CCA 0B                11122 	.byte	11
   2CCB 02                11123 	.byte	2
   2CCC FF                11124 	.byte	-1
   2CCD 03                11125 	.byte	3
   2CCE 0E                11126 	.byte	14
   2CCF FF                11127 	.byte	-1
   2CD0 F5                11128 	.byte	-11
   2CD1 FE                11129 	.byte	-2
   2CD2 FF                11130 	.byte	-1
   2CD3 FD                11131 	.byte	-3
   2CD4 F2                11132 	.byte	-14
   2CD5 FF                11133 	.byte	-1
   2CD6 0B                11134 	.byte	11
   2CD7 02                11135 	.byte	2
   2CD8 01                11136 	.byte	1
                          11137 	.globl _height2RisingFront10
   2CD9                   11138 _height2RisingFront10:
   2CD9 00                11139 	.byte	0
   2CDA FB                11140 	.byte	-5
   2CDB 06                11141 	.byte	6
   2CDC FF                11142 	.byte	-1
   2CDD 03                11143 	.byte	3
   2CDE 0E                11144 	.byte	14
   2CDF FF                11145 	.byte	-1
   2CE0 05                11146 	.byte	5
   2CE1 FA                11147 	.byte	-6
   2CE2 FF                11148 	.byte	-1
   2CE3 FD                11149 	.byte	-3
   2CE4 F2                11150 	.byte	-14
   2CE5 FF                11151 	.byte	-1
   2CE6 FB                11152 	.byte	-5
   2CE7 06                11153 	.byte	6
   2CE8 FF                11154 	.byte	-1
   2CE9 1B                11155 	.byte	27
   2CEA FE                11156 	.byte	-2
   2CEB 00                11157 	.byte	0
   2CEC E8                11158 	.byte	-24
   2CED 10                11159 	.byte	16
   2CEE FF                11160 	.byte	-1
   2CEF 1B                11161 	.byte	27
   2CF0 FE                11162 	.byte	-2
   2CF1 00                11163 	.byte	0
   2CF2 EA                11164 	.byte	-22
   2CF3 FC                11165 	.byte	-4
   2CF4 FF                11166 	.byte	-1
   2CF5 1C                11167 	.byte	28
   2CF6 FE                11168 	.byte	-2
   2CF7 00                11169 	.byte	0
   2CF8 E1                11170 	.byte	-31
   2CF9 F4                11171 	.byte	-12
   2CFA FF                11172 	.byte	-1
   2CFB 1C                11173 	.byte	28
   2CFC FF                11174 	.byte	-1
   2CFD 00                11175 	.byte	0
   2CFE FA                11176 	.byte	-6
   2CFF 05                11177 	.byte	5
   2D00 FF                11178 	.byte	-1
   2D01 03                11179 	.byte	3
   2D02 0E                11180 	.byte	14
   2D03 FF                11181 	.byte	-1
   2D04 06                11182 	.byte	6
   2D05 FA                11183 	.byte	-6
   2D06 FF                11184 	.byte	-1
   2D07 FD                11185 	.byte	-3
   2D08 F3                11186 	.byte	-13
   2D09 FF                11187 	.byte	-1
   2D0A FA                11188 	.byte	-6
   2D0B 05                11189 	.byte	5
   2D0C 01                11190 	.byte	1
                          11191 	.globl _height2FallingFront10
   2D0D                   11192 _height2FallingFront10:
   2D0D FF                11193 	.byte	-1
   2D0E 03                11194 	.byte	3
   2D0F 0E                11195 	.byte	14
   2D10 FF                11196 	.byte	-1
   2D11 0F                11197 	.byte	15
   2D12 FE                11198 	.byte	-2
   2D13 FF                11199 	.byte	-1
   2D14 FD                11200 	.byte	-3
   2D15 F3                11201 	.byte	-13
   2D16 FF                11202 	.byte	-1
   2D17 F1                11203 	.byte	-15
   2D18 01                11204 	.byte	1
   2D19 FF                11205 	.byte	-1
   2D1A F8                11206 	.byte	-8
   2D1B 0C                11207 	.byte	12
   2D1C 00                11208 	.byte	0
   2D1D 0B                11209 	.byte	11
   2D1E 02                11210 	.byte	2
   2D1F FF                11211 	.byte	-1
   2D20 F8                11212 	.byte	-8
   2D21 0C                11213 	.byte	12
   2D22 00                11214 	.byte	0
   2D23 17                11215 	.byte	23
   2D24 F2                11216 	.byte	-14
   2D25 FF                11217 	.byte	-1
   2D26 F7                11218 	.byte	-9
   2D27 0C                11219 	.byte	12
   2D28 00                11220 	.byte	0
   2D29 06                11221 	.byte	6
   2D2A E7                11222 	.byte	-25
   2D2B FF                11223 	.byte	-1
   2D2C F7                11224 	.byte	-9
   2D2D 0B                11225 	.byte	11
   2D2E 00                11226 	.byte	0
   2D2F F2                11227 	.byte	-14
   2D30 02                11228 	.byte	2
   2D31 FF                11229 	.byte	-1
   2D32 03                11230 	.byte	3
   2D33 0E                11231 	.byte	14
   2D34 FF                11232 	.byte	-1
   2D35 0E                11233 	.byte	14
   2D36 FE                11234 	.byte	-2
   2D37 FF                11235 	.byte	-1
   2D38 FD                11236 	.byte	-3
   2D39 F2                11237 	.byte	-14
   2D3A FF                11238 	.byte	-1
   2D3B F2                11239 	.byte	-14
   2D3C 02                11240 	.byte	2
   2D3D 01                11241 	.byte	1
                          11242 	.globl _height2RisingBack10
   2D3E                   11243 _height2RisingBack10:
   2D3E 00                11244 	.byte	0
   2D3F 10                11245 	.byte	16
   2D40 F5                11246 	.byte	-11
   2D41 FF                11247 	.byte	-1
   2D42 03                11248 	.byte	3
   2D43 0D                11249 	.byte	13
   2D44 FF                11250 	.byte	-1
   2D45 0A                11251 	.byte	10
   2D46 FB                11252 	.byte	-5
   2D47 FF                11253 	.byte	-1
   2D48 FD                11254 	.byte	-3
   2D49 F2                11255 	.byte	-14
   2D4A FF                11256 	.byte	-1
   2D4B F6                11257 	.byte	-10
   2D4C 06                11258 	.byte	6
   2D4D FF                11259 	.byte	-1
   2D4E 18                11260 	.byte	24
   2D4F 02                11261 	.byte	2
   2D50 00                11262 	.byte	0
   2D51 EB                11263 	.byte	-21
   2D52 0B                11264 	.byte	11
   2D53 FF                11265 	.byte	-1
   2D54 18                11266 	.byte	24
   2D55 02                11267 	.byte	2
   2D56 00                11268 	.byte	0
   2D57 F2                11269 	.byte	-14
   2D58 F9                11270 	.byte	-7
   2D59 FF                11271 	.byte	-1
   2D5A 17                11272 	.byte	23
   2D5B 02                11273 	.byte	2
   2D5C 00                11274 	.byte	0
   2D5D E6                11275 	.byte	-26
   2D5E F0                11276 	.byte	-16
   2D5F FF                11277 	.byte	-1
   2D60 17                11278 	.byte	23
   2D61 02                11279 	.byte	2
   2D62 00                11280 	.byte	0
   2D63 F7                11281 	.byte	-9
   2D64 06                11282 	.byte	6
   2D65 FF                11283 	.byte	-1
   2D66 03                11284 	.byte	3
   2D67 0D                11285 	.byte	13
   2D68 FF                11286 	.byte	-1
   2D69 09                11287 	.byte	9
   2D6A FB                11288 	.byte	-5
   2D6B FF                11289 	.byte	-1
   2D6C FD                11290 	.byte	-3
   2D6D F2                11291 	.byte	-14
   2D6E FF                11292 	.byte	-1
   2D6F F7                11293 	.byte	-9
   2D70 06                11294 	.byte	6
   2D71 01                11295 	.byte	1
                          11296 	.globl _depth2RollingLeft10
   2D72                   11297 _depth2RollingLeft10:
   2D72 FF                11298 	.byte	-1
   2D73 0D                11299 	.byte	13
   2D74 04                11300 	.byte	4
   2D75 FF                11301 	.byte	-1
   2D76 10                11302 	.byte	16
   2D77 F5                11303 	.byte	-11
   2D78 FF                11304 	.byte	-1
   2D79 F3                11305 	.byte	-13
   2D7A FC                11306 	.byte	-4
   2D7B FF                11307 	.byte	-1
   2D7C F0                11308 	.byte	-16
   2D7D 0B                11309 	.byte	11
   2D7E FF                11310 	.byte	-1
   2D7F 00                11311 	.byte	0
   2D80 F3                11312 	.byte	-13
   2D81 00                11313 	.byte	0
   2D82 0D                11314 	.byte	13
   2D83 11                11315 	.byte	17
   2D84 FF                11316 	.byte	-1
   2D85 01                11317 	.byte	1
   2D86 F3                11318 	.byte	-13
   2D87 00                11319 	.byte	0
   2D88 0F                11320 	.byte	15
   2D89 02                11321 	.byte	2
   2D8A FF                11322 	.byte	-1
   2D8B 01                11323 	.byte	1
   2D8C F2                11324 	.byte	-14
   2D8D 00                11325 	.byte	0
   2D8E F2                11326 	.byte	-14
   2D8F 0A                11327 	.byte	10
   2D90 FF                11328 	.byte	-1
   2D91 00                11329 	.byte	0
   2D92 F2                11330 	.byte	-14
   2D93 00                11331 	.byte	0
   2D94 F0                11332 	.byte	-16
   2D95 0C                11333 	.byte	12
   2D96 FF                11334 	.byte	-1
   2D97 0E                11335 	.byte	14
   2D98 04                11336 	.byte	4
   2D99 FF                11337 	.byte	-1
   2D9A 10                11338 	.byte	16
   2D9B F4                11339 	.byte	-12
   2D9C FF                11340 	.byte	-1
   2D9D F2                11341 	.byte	-14
   2D9E FC                11342 	.byte	-4
   2D9F FF                11343 	.byte	-1
   2DA0 F0                11344 	.byte	-16
   2DA1 0C                11345 	.byte	12
   2DA2 01                11346 	.byte	1
                          11347 	.globl _depth2RollingRight10
   2DA3                   11348 _depth2RollingRight10:
   2DA3 00                11349 	.byte	0
   2DA4 0F                11350 	.byte	15
   2DA5 0A                11351 	.byte	10
   2DA6 FF                11352 	.byte	-1
   2DA7 F4                11353 	.byte	-12
   2DA8 04                11354 	.byte	4
   2DA9 FF                11355 	.byte	-1
   2DAA 10                11356 	.byte	16
   2DAB F4                11357 	.byte	-12
   2DAC FF                11358 	.byte	-1
   2DAD 0C                11359 	.byte	12
   2DAE FD                11360 	.byte	-3
   2DAF FF                11361 	.byte	-1
   2DB0 F0                11362 	.byte	-16
   2DB1 0B                11363 	.byte	11
   2DB2 FF                11364 	.byte	-1
   2DB3 06                11365 	.byte	6
   2DB4 0E                11366 	.byte	14
   2DB5 00                11367 	.byte	0
   2DB6 EE                11368 	.byte	-18
   2DB7 F6                11369 	.byte	-10
   2DB8 FF                11370 	.byte	-1
   2DB9 06                11371 	.byte	6
   2DBA 0E                11372 	.byte	14
   2DBB 00                11373 	.byte	0
   2DBC 0A                11374 	.byte	10
   2DBD E6                11375 	.byte	-26
   2DBE FF                11376 	.byte	-1
   2DBF 06                11377 	.byte	6
   2DC0 0E                11378 	.byte	14
   2DC1 00                11379 	.byte	0
   2DC2 06                11380 	.byte	6
   2DC3 EF                11381 	.byte	-17
   2DC4 FF                11382 	.byte	-1
   2DC5 06                11383 	.byte	6
   2DC6 0D                11384 	.byte	13
   2DC7 00                11385 	.byte	0
   2DC8 F0                11386 	.byte	-16
   2DC9 0C                11387 	.byte	12
   2DCA FF                11388 	.byte	-1
   2DCB F4                11389 	.byte	-12
   2DCC 04                11390 	.byte	4
   2DCD FF                11391 	.byte	-1
   2DCE 10                11392 	.byte	16
   2DCF F4                11393 	.byte	-12
   2DD0 FF                11394 	.byte	-1
   2DD1 0C                11395 	.byte	12
   2DD2 FC                11396 	.byte	-4
   2DD3 FF                11397 	.byte	-1
   2DD4 F0                11398 	.byte	-16
   2DD5 0C                11399 	.byte	12
   2DD6 01                11400 	.byte	1
                          11401 	.globl _width2RollingFront10
   2DD7                   11402 _width2RollingFront10:
   2DD7 FF                11403 	.byte	-1
   2DD8 06                11404 	.byte	6
   2DD9 1C                11405 	.byte	28
   2DDA FF                11406 	.byte	-1
   2DDB 0F                11407 	.byte	15
   2DDC FE                11408 	.byte	-2
   2DDD FF                11409 	.byte	-1
   2DDE FA                11410 	.byte	-6
   2DDF E5                11411 	.byte	-27
   2DE0 FF                11412 	.byte	-1
   2DE1 F1                11413 	.byte	-15
   2DE2 01                11414 	.byte	1
   2DE3 FF                11415 	.byte	-1
   2DE4 FD                11416 	.byte	-3
   2DE5 06                11417 	.byte	6
   2DE6 00                11418 	.byte	0
   2DE7 09                11419 	.byte	9
   2DE8 16                11420 	.byte	22
   2DE9 FF                11421 	.byte	-1
   2DEA FC                11422 	.byte	-4
   2DEB 06                11423 	.byte	6
   2DEC 00                11424 	.byte	0
   2DED 13                11425 	.byte	19
   2DEE F8                11426 	.byte	-8
   2DEF FF                11427 	.byte	-1
   2DF0 FB                11428 	.byte	-5
   2DF1 06                11429 	.byte	6
   2DF2 00                11430 	.byte	0
   2DF3 FF                11431 	.byte	-1
   2DF4 DF                11432 	.byte	-33
   2DF5 FF                11433 	.byte	-1
   2DF6 FB                11434 	.byte	-5
   2DF7 05                11435 	.byte	5
   2DF8 00                11436 	.byte	0
   2DF9 F3                11437 	.byte	-13
   2DFA 02                11438 	.byte	2
   2DFB FF                11439 	.byte	-1
   2DFC 05                11440 	.byte	5
   2DFD 1C                11441 	.byte	28
   2DFE FF                11442 	.byte	-1
   2DFF 0E                11443 	.byte	14
   2E00 FE                11444 	.byte	-2
   2E01 FF                11445 	.byte	-1
   2E02 FA                11446 	.byte	-6
   2E03 E4                11447 	.byte	-28
   2E04 FF                11448 	.byte	-1
   2E05 F3                11449 	.byte	-13
   2E06 02                11450 	.byte	2
   2E07 01                11451 	.byte	1
                          11452 	.globl _width2RollingBack10
   2E08                   11453 _width2RollingBack10:
   2E08 00                11454 	.byte	0
   2E09 12                11455 	.byte	18
   2E0A FD                11456 	.byte	-3
   2E0B FF                11457 	.byte	-1
   2E0C 06                11458 	.byte	6
   2E0D 1B                11459 	.byte	27
   2E0E FF                11460 	.byte	-1
   2E0F F6                11461 	.byte	-10
   2E10 FE                11462 	.byte	-2
   2E11 FF                11463 	.byte	-1
   2E12 FA                11464 	.byte	-6
   2E13 E5                11465 	.byte	-27
   2E14 FF                11466 	.byte	-1
   2E15 0A                11467 	.byte	10
   2E16 02                11468 	.byte	2
   2E17 FF                11469 	.byte	-1
   2E18 0C                11470 	.byte	12
   2E19 FA                11471 	.byte	-6
   2E1A 00                11472 	.byte	0
   2E1B FA                11473 	.byte	-6
   2E1C 21                11474 	.byte	33
   2E1D FF                11475 	.byte	-1
   2E1E 0C                11476 	.byte	12
   2E1F FA                11477 	.byte	-6
   2E20 00                11478 	.byte	0
   2E21 EA                11479 	.byte	-22
   2E22 04                11480 	.byte	4
   2E23 FF                11481 	.byte	-1
   2E24 0B                11482 	.byte	11
   2E25 FA                11483 	.byte	-6
   2E26 00                11484 	.byte	0
   2E27 EF                11485 	.byte	-17
   2E28 EB                11486 	.byte	-21
   2E29 FF                11487 	.byte	-1
   2E2A 0B                11488 	.byte	11
   2E2B FA                11489 	.byte	-6
   2E2C 00                11490 	.byte	0
   2E2D 0B                11491 	.byte	11
   2E2E 02                11492 	.byte	2
   2E2F FF                11493 	.byte	-1
   2E30 06                11494 	.byte	6
   2E31 1B                11495 	.byte	27
   2E32 FF                11496 	.byte	-1
   2E33 F5                11497 	.byte	-11
   2E34 FE                11498 	.byte	-2
   2E35 FF                11499 	.byte	-1
   2E36 FA                11500 	.byte	-6
   2E37 E5                11501 	.byte	-27
   2E38 FF                11502 	.byte	-1
   2E39 0B                11503 	.byte	11
   2E3A 02                11504 	.byte	2
   2E3B 01                11505 	.byte	1
                          11506 	.globl _height2FallingLeft11
   2E3C                   11507 _height2FallingLeft11:
   2E3C FF                11508 	.byte	-1
   2E3D 0D                11509 	.byte	13
   2E3E 02                11510 	.byte	2
   2E3F FF                11511 	.byte	-1
   2E40 08                11512 	.byte	8
   2E41 FB                11513 	.byte	-5
   2E42 FF                11514 	.byte	-1
   2E43 F3                11515 	.byte	-13
   2E44 FE                11516 	.byte	-2
   2E45 FF                11517 	.byte	-1
   2E46 F8                11518 	.byte	-8
   2E47 05                11519 	.byte	5
   2E48 FF                11520 	.byte	-1
   2E49 FE                11521 	.byte	-2
   2E4A E5                11522 	.byte	-27
   2E4B 00                11523 	.byte	0
   2E4C 0F                11524 	.byte	15
   2E4D 1D                11525 	.byte	29
   2E4E FF                11526 	.byte	-1
   2E4F FE                11527 	.byte	-2
   2E50 E5                11528 	.byte	-27
   2E51 00                11529 	.byte	0
   2E52 0A                11530 	.byte	10
   2E53 16                11531 	.byte	22
   2E54 FF                11532 	.byte	-1
   2E55 FE                11533 	.byte	-2
   2E56 E4                11534 	.byte	-28
   2E57 00                11535 	.byte	0
   2E58 F5                11536 	.byte	-11
   2E59 1A                11537 	.byte	26
   2E5A FF                11538 	.byte	-1
   2E5B FD                11539 	.byte	-3
   2E5C E4                11540 	.byte	-28
   2E5D 00                11541 	.byte	0
   2E5E F9                11542 	.byte	-7
   2E5F 06                11543 	.byte	6
   2E60 FF                11544 	.byte	-1
   2E61 0D                11545 	.byte	13
   2E62 02                11546 	.byte	2
   2E63 FF                11547 	.byte	-1
   2E64 08                11548 	.byte	8
   2E65 FA                11549 	.byte	-6
   2E66 FF                11550 	.byte	-1
   2E67 F2                11551 	.byte	-14
   2E68 FE                11552 	.byte	-2
   2E69 FF                11553 	.byte	-1
   2E6A F9                11554 	.byte	-7
   2E6B 06                11555 	.byte	6
   2E6C 01                11556 	.byte	1
                          11557 	.globl _height2RisingRight11
   2E6D                   11558 _height2RisingRight11:
   2E6D 00                11559 	.byte	0
   2E6E 06                11560 	.byte	6
   2E6F 1C                11561 	.byte	28
   2E70 FF                11562 	.byte	-1
   2E71 03                11563 	.byte	3
   2E72 0E                11564 	.byte	14
   2E73 FF                11565 	.byte	-1
   2E74 08                11566 	.byte	8
   2E75 FA                11567 	.byte	-6
   2E76 FF                11568 	.byte	-1
   2E77 FD                11569 	.byte	-3
   2E78 F2                11570 	.byte	-14
   2E79 FF                11571 	.byte	-1
   2E7A F8                11572 	.byte	-8
   2E7B 06                11573 	.byte	6
   2E7C FF                11574 	.byte	-1
   2E7D 1A                11575 	.byte	26
   2E7E 00                11576 	.byte	0
   2E7F 00                11577 	.byte	0
   2E80 E9                11578 	.byte	-23
   2E81 0E                11579 	.byte	14
   2E82 FF                11580 	.byte	-1
   2E83 1A                11581 	.byte	26
   2E84 00                11582 	.byte	0
   2E85 00                11583 	.byte	0
   2E86 EE                11584 	.byte	-18
   2E87 FA                11585 	.byte	-6
   2E88 FF                11586 	.byte	-1
   2E89 1A                11587 	.byte	26
   2E8A 00                11588 	.byte	0
   2E8B 00                11589 	.byte	0
   2E8C E3                11590 	.byte	-29
   2E8D F2                11591 	.byte	-14
   2E8E FF                11592 	.byte	-1
   2E8F 1A                11593 	.byte	26
   2E90 00                11594 	.byte	0
   2E91 00                11595 	.byte	0
   2E92 F8                11596 	.byte	-8
   2E93 06                11597 	.byte	6
   2E94 FF                11598 	.byte	-1
   2E95 03                11599 	.byte	3
   2E96 0E                11600 	.byte	14
   2E97 FF                11601 	.byte	-1
   2E98 08                11602 	.byte	8
   2E99 FA                11603 	.byte	-6
   2E9A FF                11604 	.byte	-1
   2E9B FD                11605 	.byte	-3
   2E9C F2                11606 	.byte	-14
   2E9D FF                11607 	.byte	-1
   2E9E F8                11608 	.byte	-8
   2E9F 06                11609 	.byte	6
   2EA0 01                11610 	.byte	1
                          11611 	.globl _height2FallingRight11
   2EA1                   11612 _height2FallingRight11:
   2EA1 00                11613 	.byte	0
   2EA2 0F                11614 	.byte	15
   2EA3 0C                11615 	.byte	12
   2EA4 FF                11616 	.byte	-1
   2EA5 F4                11617 	.byte	-12
   2EA6 02                11618 	.byte	2
   2EA7 FF                11619 	.byte	-1
   2EA8 08                11620 	.byte	8
   2EA9 FA                11621 	.byte	-6
   2EAA FF                11622 	.byte	-1
   2EAB 0C                11623 	.byte	12
   2EAC FE                11624 	.byte	-2
   2EAD FF                11625 	.byte	-1
   2EAE F8                11626 	.byte	-8
   2EAF 06                11627 	.byte	6
   2EB0 FF                11628 	.byte	-1
   2EB1 0A                11629 	.byte	10
   2EB2 1C                11630 	.byte	28
   2EB3 00                11631 	.byte	0
   2EB4 EA                11632 	.byte	-22
   2EB5 E6                11633 	.byte	-26
   2EB6 FF                11634 	.byte	-1
   2EB7 09                11635 	.byte	9
   2EB8 1C                11636 	.byte	28
   2EB9 00                11637 	.byte	0
   2EBA FF                11638 	.byte	-1
   2EBB DE                11639 	.byte	-34
   2EBC FF                11640 	.byte	-1
   2EBD 09                11641 	.byte	9
   2EBE 1C                11642 	.byte	28
   2EBF 00                11643 	.byte	0
   2EC0 03                11644 	.byte	3
   2EC1 E2                11645 	.byte	-30
   2EC2 FF                11646 	.byte	-1
   2EC3 0A                11647 	.byte	10
   2EC4 1C                11648 	.byte	28
   2EC5 00                11649 	.byte	0
   2EC6 F8                11650 	.byte	-8
   2EC7 06                11651 	.byte	6
   2EC8 FF                11652 	.byte	-1
   2EC9 F3                11653 	.byte	-13
   2ECA 02                11654 	.byte	2
   2ECB FF                11655 	.byte	-1
   2ECC 08                11656 	.byte	8
   2ECD FA                11657 	.byte	-6
   2ECE FF                11658 	.byte	-1
   2ECF 0D                11659 	.byte	13
   2ED0 FE                11660 	.byte	-2
   2ED1 FF                11661 	.byte	-1
   2ED2 F8                11662 	.byte	-8
   2ED3 06                11663 	.byte	6
   2ED4 01                11664 	.byte	1
                          11665 	.globl _height2RisingLeft11
   2ED5                   11666 _height2RisingLeft11:
   2ED5 00                11667 	.byte	0
   2ED6 FE                11668 	.byte	-2
   2ED7 F3                11669 	.byte	-13
   2ED8 FF                11670 	.byte	-1
   2ED9 02                11671 	.byte	2
   2EDA 0D                11672 	.byte	13
   2EDB FF                11673 	.byte	-1
   2EDC 08                11674 	.byte	8
   2EDD FB                11675 	.byte	-5
   2EDE FF                11676 	.byte	-1
   2EDF FD                11677 	.byte	-3
   2EE0 F2                11678 	.byte	-14
   2EE1 FF                11679 	.byte	-1
   2EE2 F9                11680 	.byte	-7
   2EE3 06                11681 	.byte	6
   2EE4 FF                11682 	.byte	-1
   2EE5 19                11683 	.byte	25
   2EE6 00                11684 	.byte	0
   2EE7 00                11685 	.byte	0
   2EE8 E9                11686 	.byte	-23
   2EE9 0D                11687 	.byte	13
   2EEA FF                11688 	.byte	-1
   2EEB 1A                11689 	.byte	26
   2EEC 00                11690 	.byte	0
   2EED 00                11691 	.byte	0
   2EEE EE                11692 	.byte	-18
   2EEF FB                11693 	.byte	-5
   2EF0 FF                11694 	.byte	-1
   2EF1 1A                11695 	.byte	26
   2EF2 00                11696 	.byte	0
   2EF3 00                11697 	.byte	0
   2EF4 E3                11698 	.byte	-29
   2EF5 F2                11699 	.byte	-14
   2EF6 FF                11700 	.byte	-1
   2EF7 1A                11701 	.byte	26
   2EF8 00                11702 	.byte	0
   2EF9 00                11703 	.byte	0
   2EFA F8                11704 	.byte	-8
   2EFB 06                11705 	.byte	6
   2EFC FF                11706 	.byte	-1
   2EFD 03                11707 	.byte	3
   2EFE 0D                11708 	.byte	13
   2EFF FF                11709 	.byte	-1
   2F00 08                11710 	.byte	8
   2F01 FB                11711 	.byte	-5
   2F02 FF                11712 	.byte	-1
   2F03 FD                11713 	.byte	-3
   2F04 F2                11714 	.byte	-14
   2F05 FF                11715 	.byte	-1
   2F06 F8                11716 	.byte	-8
   2F07 06                11717 	.byte	6
   2F08 01                11718 	.byte	1
                          11719 	.globl _height2FallingBack11
   2F09                   11720 _height2FallingBack11:
   2F09 00                11721 	.byte	0
   2F0A 14                11722 	.byte	20
   2F0B FC                11723 	.byte	-4
   2F0C FF                11724 	.byte	-1
   2F0D 03                11725 	.byte	3
   2F0E 0D                11726 	.byte	13
   2F0F FF                11727 	.byte	-1
   2F10 F4                11728 	.byte	-12
   2F11 FF                11729 	.byte	-1
   2F12 FF                11730 	.byte	-1
   2F13 FD                11731 	.byte	-3
   2F14 F3                11732 	.byte	-13
   2F15 FF                11733 	.byte	-1
   2F16 0C                11734 	.byte	12
   2F17 01                11735 	.byte	1
   2F18 FF                11736 	.byte	-1
   2F19 13                11737 	.byte	19
   2F1A F4                11738 	.byte	-12
   2F1B 00                11739 	.byte	0
   2F1C F0                11740 	.byte	-16
   2F1D 19                11741 	.byte	25
   2F1E FF                11742 	.byte	-1
   2F1F 13                11743 	.byte	19
   2F20 F5                11744 	.byte	-11
   2F21 00                11745 	.byte	0
   2F22 E1                11746 	.byte	-31
   2F23 0A                11747 	.byte	10
   2F24 FF                11748 	.byte	-1
   2F25 13                11749 	.byte	19
   2F26 F5                11750 	.byte	-11
   2F27 00                11751 	.byte	0
   2F28 EA                11752 	.byte	-22
   2F29 FE                11753 	.byte	-2
   2F2A FF                11754 	.byte	-1
   2F2B 13                11755 	.byte	19
   2F2C F4                11756 	.byte	-12
   2F2D 00                11757 	.byte	0
   2F2E 0C                11758 	.byte	12
   2F2F 01                11759 	.byte	1
   2F30 FF                11760 	.byte	-1
   2F31 03                11761 	.byte	3
   2F32 0E                11762 	.byte	14
   2F33 FF                11763 	.byte	-1
   2F34 F4                11764 	.byte	-12
   2F35 FF                11765 	.byte	-1
   2F36 FF                11766 	.byte	-1
   2F37 FD                11767 	.byte	-3
   2F38 F2                11768 	.byte	-14
   2F39 FF                11769 	.byte	-1
   2F3A 0C                11770 	.byte	12
   2F3B 01                11771 	.byte	1
   2F3C 01                11772 	.byte	1
                          11773 	.globl _height2RisingFront11
   2F3D                   11774 _height2RisingFront11:
   2F3D 00                11775 	.byte	0
   2F3E F9                11776 	.byte	-7
   2F3F 06                11777 	.byte	6
   2F40 FF                11778 	.byte	-1
   2F41 03                11779 	.byte	3
   2F42 0E                11780 	.byte	14
   2F43 FF                11781 	.byte	-1
   2F44 07                11782 	.byte	7
   2F45 FA                11783 	.byte	-6
   2F46 FF                11784 	.byte	-1
   2F47 FD                11785 	.byte	-3
   2F48 F2                11786 	.byte	-14
   2F49 FF                11787 	.byte	-1
   2F4A F9                11788 	.byte	-7
   2F4B 06                11789 	.byte	6
   2F4C FF                11790 	.byte	-1
   2F4D 19                11791 	.byte	25
   2F4E 00                11792 	.byte	0
   2F4F 00                11793 	.byte	0
   2F50 EA                11794 	.byte	-22
   2F51 0E                11795 	.byte	14
   2F52 FF                11796 	.byte	-1
   2F53 19                11797 	.byte	25
   2F54 00                11798 	.byte	0
   2F55 00                11799 	.byte	0
   2F56 EE                11800 	.byte	-18
   2F57 FA                11801 	.byte	-6
   2F58 FF                11802 	.byte	-1
   2F59 1A                11803 	.byte	26
   2F5A 00                11804 	.byte	0
   2F5B 00                11805 	.byte	0
   2F5C E3                11806 	.byte	-29
   2F5D F2                11807 	.byte	-14
   2F5E FF                11808 	.byte	-1
   2F5F 1A                11809 	.byte	26
   2F60 00                11810 	.byte	0
   2F61 00                11811 	.byte	0
   2F62 F8                11812 	.byte	-8
   2F63 06                11813 	.byte	6
   2F64 FF                11814 	.byte	-1
   2F65 03                11815 	.byte	3
   2F66 0E                11816 	.byte	14
   2F67 FF                11817 	.byte	-1
   2F68 08                11818 	.byte	8
   2F69 FA                11819 	.byte	-6
   2F6A FF                11820 	.byte	-1
   2F6B FD                11821 	.byte	-3
   2F6C F2                11822 	.byte	-14
   2F6D FF                11823 	.byte	-1
   2F6E F8                11824 	.byte	-8
   2F6F 06                11825 	.byte	6
   2F70 01                11826 	.byte	1
                          11827 	.globl _height2FallingFront11
   2F71                   11828 _height2FallingFront11:
   2F71 FF                11829 	.byte	-1
   2F72 03                11830 	.byte	3
   2F73 0E                11831 	.byte	14
   2F74 FF                11832 	.byte	-1
   2F75 0E                11833 	.byte	14
   2F76 FF                11834 	.byte	-1
   2F77 FF                11835 	.byte	-1
   2F78 FD                11836 	.byte	-3
   2F79 F3                11837 	.byte	-13
   2F7A FF                11838 	.byte	-1
   2F7B F2                11839 	.byte	-14
   2F7C 00                11840 	.byte	0
   2F7D FF                11841 	.byte	-1
   2F7E F5                11842 	.byte	-11
   2F7F 0C                11843 	.byte	12
   2F80 00                11844 	.byte	0
   2F81 0E                11845 	.byte	14
   2F82 02                11846 	.byte	2
   2F83 FF                11847 	.byte	-1
   2F84 F5                11848 	.byte	-11
   2F85 0C                11849 	.byte	12
   2F86 00                11850 	.byte	0
   2F87 19                11851 	.byte	25
   2F88 F3                11852 	.byte	-13
   2F89 FF                11853 	.byte	-1
   2F8A F3                11854 	.byte	-13
   2F8B 0C                11855 	.byte	12
   2F8C 00                11856 	.byte	0
   2F8D 0A                11857 	.byte	10
   2F8E E7                11858 	.byte	-25
   2F8F FF                11859 	.byte	-1
   2F90 F3                11860 	.byte	-13
   2F91 0B                11861 	.byte	11
   2F92 00                11862 	.byte	0
   2F93 F4                11863 	.byte	-12
   2F94 01                11864 	.byte	1
   2F95 FF                11865 	.byte	-1
   2F96 03                11866 	.byte	3
   2F97 0E                11867 	.byte	14
   2F98 FF                11868 	.byte	-1
   2F99 0C                11869 	.byte	12
   2F9A FF                11870 	.byte	-1
   2F9B FF                11871 	.byte	-1
   2F9C FD                11872 	.byte	-3
   2F9D F2                11873 	.byte	-14
   2F9E FF                11874 	.byte	-1
   2F9F F4                11875 	.byte	-12
   2FA0 01                11876 	.byte	1
   2FA1 01                11877 	.byte	1
                          11878 	.globl _height2RisingBack11
   2FA2                   11879 _height2RisingBack11:
   2FA2 00                11880 	.byte	0
   2FA3 10                11881 	.byte	16
   2FA4 F5                11882 	.byte	-11
   2FA5 FF                11883 	.byte	-1
   2FA6 03                11884 	.byte	3
   2FA7 0D                11885 	.byte	13
   2FA8 FF                11886 	.byte	-1
   2FA9 08                11887 	.byte	8
   2FAA FB                11888 	.byte	-5
   2FAB FF                11889 	.byte	-1
   2FAC FD                11890 	.byte	-3
   2FAD F2                11891 	.byte	-14
   2FAE FF                11892 	.byte	-1
   2FAF F8                11893 	.byte	-8
   2FB0 06                11894 	.byte	6
   2FB1 FF                11895 	.byte	-1
   2FB2 1A                11896 	.byte	26
   2FB3 00                11897 	.byte	0
   2FB4 00                11898 	.byte	0
   2FB5 E9                11899 	.byte	-23
   2FB6 0D                11900 	.byte	13
   2FB7 FF                11901 	.byte	-1
   2FB8 1A                11902 	.byte	26
   2FB9 00                11903 	.byte	0
   2FBA 00                11904 	.byte	0
   2FBB EE                11905 	.byte	-18
   2FBC FB                11906 	.byte	-5
   2FBD FF                11907 	.byte	-1
   2FBE 1A                11908 	.byte	26
   2FBF 00                11909 	.byte	0
   2FC0 00                11910 	.byte	0
   2FC1 E3                11911 	.byte	-29
   2FC2 F2                11912 	.byte	-14
   2FC3 FF                11913 	.byte	-1
   2FC4 1A                11914 	.byte	26
   2FC5 00                11915 	.byte	0
   2FC6 00                11916 	.byte	0
   2FC7 F8                11917 	.byte	-8
   2FC8 06                11918 	.byte	6
   2FC9 FF                11919 	.byte	-1
   2FCA 03                11920 	.byte	3
   2FCB 0D                11921 	.byte	13
   2FCC FF                11922 	.byte	-1
   2FCD 08                11923 	.byte	8
   2FCE FB                11924 	.byte	-5
   2FCF FF                11925 	.byte	-1
   2FD0 FD                11926 	.byte	-3
   2FD1 F2                11927 	.byte	-14
   2FD2 FF                11928 	.byte	-1
   2FD3 F8                11929 	.byte	-8
   2FD4 06                11930 	.byte	6
   2FD5 01                11931 	.byte	1
                          11932 	.globl _depth2RollingLeft11
   2FD6                   11933 _depth2RollingLeft11:
   2FD6 FF                11934 	.byte	-1
   2FD7 0D                11935 	.byte	13
   2FD8 02                11936 	.byte	2
   2FD9 FF                11937 	.byte	-1
   2FDA 10                11938 	.byte	16
   2FDB F5                11939 	.byte	-11
   2FDC FF                11940 	.byte	-1
   2FDD F3                11941 	.byte	-13
   2FDE FE                11942 	.byte	-2
   2FDF FF                11943 	.byte	-1
   2FE0 F0                11944 	.byte	-16
   2FE1 0B                11945 	.byte	11
   2FE2 FF                11946 	.byte	-1
   2FE3 00                11947 	.byte	0
   2FE4 F3                11948 	.byte	-13
   2FE5 00                11949 	.byte	0
   2FE6 0D                11950 	.byte	13
   2FE7 0F                11951 	.byte	15
   2FE8 FF                11952 	.byte	-1
   2FE9 FF                11953 	.byte	-1
   2FEA F3                11954 	.byte	-13
   2FEB 00                11955 	.byte	0
   2FEC 11                11956 	.byte	17
   2FED 02                11957 	.byte	2
   2FEE FF                11958 	.byte	-1
   2FEF FF                11959 	.byte	-1
   2FF0 F2                11960 	.byte	-14
   2FF1 00                11961 	.byte	0
   2FF2 F4                11962 	.byte	-12
   2FF3 0C                11963 	.byte	12
   2FF4 FF                11964 	.byte	-1
   2FF5 FF                11965 	.byte	-1
   2FF6 F2                11966 	.byte	-14
   2FF7 00                11967 	.byte	0
   2FF8 F1                11968 	.byte	-15
   2FF9 0C                11969 	.byte	12
   2FFA FF                11970 	.byte	-1
   2FFB 0C                11971 	.byte	12
   2FFC 02                11972 	.byte	2
   2FFD FF                11973 	.byte	-1
   2FFE 10                11974 	.byte	16
   2FFF F4                11975 	.byte	-12
   3000 FF                11976 	.byte	-1
   3001 F3                11977 	.byte	-13
   3002 FE                11978 	.byte	-2
   3003 FF                11979 	.byte	-1
   3004 F1                11980 	.byte	-15
   3005 0C                11981 	.byte	12
   3006 01                11982 	.byte	1
                          11983 	.globl _depth2RollingRight11
   3007                   11984 _depth2RollingRight11:
   3007 00                11985 	.byte	0
   3008 0F                11986 	.byte	15
   3009 0C                11987 	.byte	12
   300A FF                11988 	.byte	-1
   300B F4                11989 	.byte	-12
   300C 02                11990 	.byte	2
   300D FF                11991 	.byte	-1
   300E 10                11992 	.byte	16
   300F F4                11993 	.byte	-12
   3010 FF                11994 	.byte	-1
   3011 0C                11995 	.byte	12
   3012 FE                11996 	.byte	-2
   3013 FF                11997 	.byte	-1
   3014 F0                11998 	.byte	-16
   3015 0C                11999 	.byte	12
   3016 FF                12000 	.byte	-1
   3017 05                12001 	.byte	5
   3018 0E                12002 	.byte	14
   3019 00                12003 	.byte	0
   301A EF                12004 	.byte	-17
   301B F4                12005 	.byte	-12
   301C FF                12006 	.byte	-1
   301D 05                12007 	.byte	5
   301E 0E                12008 	.byte	14
   301F 00                12009 	.byte	0
   3020 0B                12010 	.byte	11
   3021 E6                12011 	.byte	-26
   3022 FF                12012 	.byte	-1
   3023 05                12013 	.byte	5
   3024 0E                12014 	.byte	14
   3025 00                12015 	.byte	0
   3026 07                12016 	.byte	7
   3027 F0                12017 	.byte	-16
   3028 FF                12018 	.byte	-1
   3029 05                12019 	.byte	5
   302A 0E                12020 	.byte	14
   302B 00                12021 	.byte	0
   302C F0                12022 	.byte	-16
   302D 0C                12023 	.byte	12
   302E FF                12024 	.byte	-1
   302F F4                12025 	.byte	-12
   3030 02                12026 	.byte	2
   3031 FF                12027 	.byte	-1
   3032 10                12028 	.byte	16
   3033 F4                12029 	.byte	-12
   3034 FF                12030 	.byte	-1
   3035 0C                12031 	.byte	12
   3036 FE                12032 	.byte	-2
   3037 FF                12033 	.byte	-1
   3038 F0                12034 	.byte	-16
   3039 0C                12035 	.byte	12
   303A 01                12036 	.byte	1
                          12037 	.globl _width2RollingFront11
   303B                   12038 _width2RollingFront11:
   303B FF                12039 	.byte	-1
   303C 06                12040 	.byte	6
   303D 1C                12041 	.byte	28
   303E FF                12042 	.byte	-1
   303F 0E                12043 	.byte	14
   3040 FF                12044 	.byte	-1
   3041 FF                12045 	.byte	-1
   3042 FA                12046 	.byte	-6
   3043 E5                12047 	.byte	-27
   3044 FF                12048 	.byte	-1
   3045 F2                12049 	.byte	-14
   3046 00                12050 	.byte	0
   3047 FF                12051 	.byte	-1
   3048 FB                12052 	.byte	-5
   3049 06                12053 	.byte	6
   304A 00                12054 	.byte	0
   304B 0B                12055 	.byte	11
   304C 16                12056 	.byte	22
   304D FF                12057 	.byte	-1
   304E FA                12058 	.byte	-6
   304F 06                12059 	.byte	6
   3050 00                12060 	.byte	0
   3051 14                12061 	.byte	20
   3052 F9                12062 	.byte	-7
   3053 FF                12063 	.byte	-1
   3054 FA                12064 	.byte	-6
   3055 06                12065 	.byte	6
   3056 00                12066 	.byte	0
   3057 00                12067 	.byte	0
   3058 DF                12068 	.byte	-33
   3059 FF                12069 	.byte	-1
   305A FA                12070 	.byte	-6
   305B 05                12071 	.byte	5
   305C 00                12072 	.byte	0
   305D F3                12073 	.byte	-13
   305E 01                12074 	.byte	1
   305F FF                12075 	.byte	-1
   3060 05                12076 	.byte	5
   3061 1C                12077 	.byte	28
   3062 FF                12078 	.byte	-1
   3063 0E                12079 	.byte	14
   3064 FF                12080 	.byte	-1
   3065 FF                12081 	.byte	-1
   3066 FA                12082 	.byte	-6
   3067 E4                12083 	.byte	-28
   3068 FF                12084 	.byte	-1
   3069 F3                12085 	.byte	-13
   306A 01                12086 	.byte	1
   306B 01                12087 	.byte	1
                          12088 	.globl _width2RollingBack11
   306C                   12089 _width2RollingBack11:
   306C 00                12090 	.byte	0
   306D 14                12091 	.byte	20
   306E FC                12092 	.byte	-4
   306F FF                12093 	.byte	-1
   3070 06                12094 	.byte	6
   3071 1B                12095 	.byte	27
   3072 FF                12096 	.byte	-1
   3073 F4                12097 	.byte	-12
   3074 FF                12098 	.byte	-1
   3075 FF                12099 	.byte	-1
   3076 FA                12100 	.byte	-6
   3077 E5                12101 	.byte	-27
   3078 FF                12102 	.byte	-1
   3079 0C                12103 	.byte	12
   307A 01                12104 	.byte	1
   307B FF                12105 	.byte	-1
   307C 09                12106 	.byte	9
   307D FA                12107 	.byte	-6
   307E 00                12108 	.byte	0
   307F FD                12109 	.byte	-3
   3080 21                12110 	.byte	33
   3081 FF                12111 	.byte	-1
   3082 09                12112 	.byte	9
   3083 FA                12113 	.byte	-6
   3084 00                12114 	.byte	0
   3085 EB                12115 	.byte	-21
   3086 05                12116 	.byte	5
   3087 FF                12117 	.byte	-1
   3088 0A                12118 	.byte	10
   3089 FA                12119 	.byte	-6
   308A 00                12120 	.byte	0
   308B F0                12121 	.byte	-16
   308C EB                12122 	.byte	-21
   308D FF                12123 	.byte	-1
   308E 0A                12124 	.byte	10
   308F FA                12125 	.byte	-6
   3090 00                12126 	.byte	0
   3091 0B                12127 	.byte	11
   3092 01                12128 	.byte	1
   3093 FF                12129 	.byte	-1
   3094 06                12130 	.byte	6
   3095 1B                12131 	.byte	27
   3096 FF                12132 	.byte	-1
   3097 F5                12133 	.byte	-11
   3098 FF                12134 	.byte	-1
   3099 FF                12135 	.byte	-1
   309A FA                12136 	.byte	-6
   309B E5                12137 	.byte	-27
   309C FF                12138 	.byte	-1
   309D 0B                12139 	.byte	11
   309E 01                12140 	.byte	1
   309F 01                12141 	.byte	1
                          12142 	.globl _height2FallingLeft12
   30A0                   12143 _height2FallingLeft12:
   30A0 FF                12144 	.byte	-1
   30A1 0D                12145 	.byte	13
   30A2 00                12146 	.byte	0
   30A3 FF                12147 	.byte	-1
   30A4 08                12148 	.byte	8
   30A5 FB                12149 	.byte	-5
   30A6 FF                12150 	.byte	-1
   30A7 F3                12151 	.byte	-13
   30A8 00                12152 	.byte	0
   30A9 FF                12153 	.byte	-1
   30AA F8                12154 	.byte	-8
   30AB 05                12155 	.byte	5
   30AC FF                12156 	.byte	-1
   30AD FB                12157 	.byte	-5
   30AE E5                12158 	.byte	-27
   30AF 00                12159 	.byte	0
   30B0 12                12160 	.byte	18
   30B1 1B                12161 	.byte	27
   30B2 FF                12162 	.byte	-1
   30B3 FA                12163 	.byte	-6
   30B4 E5                12164 	.byte	-27
   30B5 00                12165 	.byte	0
   30B6 0E                12166 	.byte	14
   30B7 16                12167 	.byte	22
   30B8 FF                12168 	.byte	-1
   30B9 FA                12169 	.byte	-6
   30BA E4                12170 	.byte	-28
   30BB 00                12171 	.byte	0
   30BC F9                12172 	.byte	-7
   30BD 1C                12173 	.byte	28
   30BE FF                12174 	.byte	-1
   30BF FA                12175 	.byte	-6
   30C0 E4                12176 	.byte	-28
   30C1 00                12177 	.byte	0
   30C2 F9                12178 	.byte	-7
   30C3 06                12179 	.byte	6
   30C4 FF                12180 	.byte	-1
   30C5 0C                12181 	.byte	12
   30C6 00                12182 	.byte	0
   30C7 FF                12183 	.byte	-1
   30C8 08                12184 	.byte	8
   30C9 FA                12185 	.byte	-6
   30CA FF                12186 	.byte	-1
   30CB F3                12187 	.byte	-13
   30CC 00                12188 	.byte	0
   30CD FF                12189 	.byte	-1
   30CE F9                12190 	.byte	-7
   30CF 06                12191 	.byte	6
   30D0 01                12192 	.byte	1
                          12193 	.globl _height2RisingRight12
   30D1                   12194 _height2RisingRight12:
   30D1 00                12195 	.byte	0
   30D2 06                12196 	.byte	6
   30D3 1C                12197 	.byte	28
   30D4 FF                12198 	.byte	-1
   30D5 01                12199 	.byte	1
   30D6 0E                12200 	.byte	14
   30D7 FF                12201 	.byte	-1
   30D8 08                12202 	.byte	8
   30D9 FA                12203 	.byte	-6
   30DA FF                12204 	.byte	-1
   30DB FF                12205 	.byte	-1
   30DC F2                12206 	.byte	-14
   30DD FF                12207 	.byte	-1
   30DE F8                12208 	.byte	-8
   30DF 06                12209 	.byte	6
   30E0 FF                12210 	.byte	-1
   30E1 1B                12211 	.byte	27
   30E2 04                12212 	.byte	4
   30E3 00                12213 	.byte	0
   30E4 E6                12214 	.byte	-26
   30E5 0A                12215 	.byte	10
   30E6 FF                12216 	.byte	-1
   30E7 1B                12217 	.byte	27
   30E8 04                12218 	.byte	4
   30E9 00                12219 	.byte	0
   30EA ED                12220 	.byte	-19
   30EB F6                12221 	.byte	-10
   30EC FF                12222 	.byte	-1
   30ED 1B                12223 	.byte	27
   30EE 04                12224 	.byte	4
   30EF 00                12225 	.byte	0
   30F0 E4                12226 	.byte	-28
   30F1 EE                12227 	.byte	-18
   30F2 FF                12228 	.byte	-1
   30F3 1B                12229 	.byte	27
   30F4 04                12230 	.byte	4
   30F5 00                12231 	.byte	0
   30F6 F8                12232 	.byte	-8
   30F7 06                12233 	.byte	6
   30F8 FF                12234 	.byte	-1
   30F9 01                12235 	.byte	1
   30FA 0E                12236 	.byte	14
   30FB FF                12237 	.byte	-1
   30FC 08                12238 	.byte	8
   30FD FA                12239 	.byte	-6
   30FE FF                12240 	.byte	-1
   30FF FF                12241 	.byte	-1
   3100 F2                12242 	.byte	-14
   3101 FF                12243 	.byte	-1
   3102 F8                12244 	.byte	-8
   3103 06                12245 	.byte	6
   3104 01                12246 	.byte	1
                          12247 	.globl _height2FallingRight12
   3105                   12248 _height2FallingRight12:
   3105 00                12249 	.byte	0
   3106 10                12250 	.byte	16
   3107 0E                12251 	.byte	14
   3108 FF                12252 	.byte	-1
   3109 F3                12253 	.byte	-13
   310A 00                12254 	.byte	0
   310B FF                12255 	.byte	-1
   310C 08                12256 	.byte	8
   310D FA                12257 	.byte	-6
   310E FF                12258 	.byte	-1
   310F 0D                12259 	.byte	13
   3110 00                12260 	.byte	0
   3111 FF                12261 	.byte	-1
   3112 F8                12262 	.byte	-8
   3113 06                12263 	.byte	6
   3114 FF                12264 	.byte	-1
   3115 06                12265 	.byte	6
   3116 1C                12266 	.byte	28
   3117 00                12267 	.byte	0
   3118 ED                12268 	.byte	-19
   3119 E4                12269 	.byte	-28
   311A FF                12270 	.byte	-1
   311B 06                12271 	.byte	6
   311C 1C                12272 	.byte	28
   311D 00                12273 	.byte	0
   311E 02                12274 	.byte	2
   311F DE                12275 	.byte	-34
   3120 FF                12276 	.byte	-1
   3121 06                12277 	.byte	6
   3122 1C                12278 	.byte	28
   3123 00                12279 	.byte	0
   3124 07                12280 	.byte	7
   3125 E4                12281 	.byte	-28
   3126 FF                12282 	.byte	-1
   3127 06                12283 	.byte	6
   3128 1C                12284 	.byte	28
   3129 00                12285 	.byte	0
   312A F8                12286 	.byte	-8
   312B 06                12287 	.byte	6
   312C FF                12288 	.byte	-1
   312D F3                12289 	.byte	-13
   312E 00                12290 	.byte	0
   312F FF                12291 	.byte	-1
   3130 08                12292 	.byte	8
   3131 FA                12293 	.byte	-6
   3132 FF                12294 	.byte	-1
   3133 0D                12295 	.byte	13
   3134 00                12296 	.byte	0
   3135 FF                12297 	.byte	-1
   3136 F8                12298 	.byte	-8
   3137 06                12299 	.byte	6
   3138 01                12300 	.byte	1
                          12301 	.globl _height2RisingLeft12
   3139                   12302 _height2RisingLeft12:
   3139 00                12303 	.byte	0
   313A FC                12304 	.byte	-4
   313B F3                12305 	.byte	-13
   313C FF                12306 	.byte	-1
   313D 04                12307 	.byte	4
   313E 0D                12308 	.byte	13
   313F FF                12309 	.byte	-1
   3140 08                12310 	.byte	8
   3141 FB                12311 	.byte	-5
   3142 FF                12312 	.byte	-1
   3143 FB                12313 	.byte	-5
   3144 F2                12314 	.byte	-14
   3145 FF                12315 	.byte	-1
   3146 F9                12316 	.byte	-7
   3147 06                12317 	.byte	6
   3148 FF                12318 	.byte	-1
   3149 18                12319 	.byte	24
   314A FC                12320 	.byte	-4
   314B 00                12321 	.byte	0
   314C EC                12322 	.byte	-20
   314D 11                12323 	.byte	17
   314E FF                12324 	.byte	-1
   314F 19                12325 	.byte	25
   3150 FD                12326 	.byte	-3
   3151 00                12327 	.byte	0
   3152 EF                12328 	.byte	-17
   3153 FE                12329 	.byte	-2
   3154 FF                12330 	.byte	-1
   3155 19                12331 	.byte	25
   3156 FC                12332 	.byte	-4
   3157 00                12333 	.byte	0
   3158 E2                12334 	.byte	-30
   3159 F6                12335 	.byte	-10
   315A FF                12336 	.byte	-1
   315B 19                12337 	.byte	25
   315C FC                12338 	.byte	-4
   315D 00                12339 	.byte	0
   315E F8                12340 	.byte	-8
   315F 06                12341 	.byte	6
   3160 FF                12342 	.byte	-1
   3161 05                12343 	.byte	5
   3162 0E                12344 	.byte	14
   3163 FF                12345 	.byte	-1
   3164 08                12346 	.byte	8
   3165 FA                12347 	.byte	-6
   3166 FF                12348 	.byte	-1
   3167 FB                12349 	.byte	-5
   3168 F2                12350 	.byte	-14
   3169 FF                12351 	.byte	-1
   316A F8                12352 	.byte	-8
   316B 06                12353 	.byte	6
   316C 01                12354 	.byte	1
                          12355 	.globl _height2FallingBack12
   316D                   12356 _height2FallingBack12:
   316D 00                12357 	.byte	0
   316E 15                12358 	.byte	21
   316F FB                12359 	.byte	-5
   3170 FF                12360 	.byte	-1
   3171 03                12361 	.byte	3
   3172 0D                12362 	.byte	13
   3173 FF                12363 	.byte	-1
   3174 F3                12364 	.byte	-13
   3175 00                12365 	.byte	0
   3176 FF                12366 	.byte	-1
   3177 FD                12367 	.byte	-3
   3178 F3                12368 	.byte	-13
   3179 FF                12369 	.byte	-1
   317A 0D                12370 	.byte	13
   317B 00                12371 	.byte	0
   317C FF                12372 	.byte	-1
   317D 10                12373 	.byte	16
   317E F4                12374 	.byte	-12
   317F 00                12375 	.byte	0
   3180 F3                12376 	.byte	-13
   3181 19                12377 	.byte	25
   3182 FF                12378 	.byte	-1
   3183 10                12379 	.byte	16
   3184 F5                12380 	.byte	-11
   3185 00                12381 	.byte	0
   3186 E3                12382 	.byte	-29
   3187 0B                12383 	.byte	11
   3188 FF                12384 	.byte	-1
   3189 10                12385 	.byte	16
   318A F5                12386 	.byte	-11
   318B 00                12387 	.byte	0
   318C ED                12388 	.byte	-19
   318D FE                12389 	.byte	-2
   318E FF                12390 	.byte	-1
   318F 10                12391 	.byte	16
   3190 F4                12392 	.byte	-12
   3191 00                12393 	.byte	0
   3192 0D                12394 	.byte	13
   3193 00                12395 	.byte	0
   3194 FF                12396 	.byte	-1
   3195 03                12397 	.byte	3
   3196 0E                12398 	.byte	14
   3197 FF                12399 	.byte	-1
   3198 F3                12400 	.byte	-13
   3199 00                12401 	.byte	0
   319A FF                12402 	.byte	-1
   319B FD                12403 	.byte	-3
   319C F2                12404 	.byte	-14
   319D FF                12405 	.byte	-1
   319E 0D                12406 	.byte	13
   319F 00                12407 	.byte	0
   31A0 01                12408 	.byte	1
                          12409 	.globl _height2RisingFront12
   31A1                   12410 _height2RisingFront12:
   31A1 00                12411 	.byte	0
   31A2 F7                12412 	.byte	-9
   31A3 06                12413 	.byte	6
   31A4 FF                12414 	.byte	-1
   31A5 03                12415 	.byte	3
   31A6 0E                12416 	.byte	14
   31A7 FF                12417 	.byte	-1
   31A8 09                12418 	.byte	9
   31A9 FA                12419 	.byte	-6
   31AA FF                12420 	.byte	-1
   31AB FD                12421 	.byte	-3
   31AC F2                12422 	.byte	-14
   31AD FF                12423 	.byte	-1
   31AE F7                12424 	.byte	-9
   31AF 06                12425 	.byte	6
   31B0 FF                12426 	.byte	-1
   31B1 17                12427 	.byte	23
   31B2 02                12428 	.byte	2
   31B3 00                12429 	.byte	0
   31B4 EC                12430 	.byte	-20
   31B5 0C                12431 	.byte	12
   31B6 FF                12432 	.byte	-1
   31B7 17                12433 	.byte	23
   31B8 02                12434 	.byte	2
   31B9 00                12435 	.byte	0
   31BA F2                12436 	.byte	-14
   31BB F8                12437 	.byte	-8
   31BC FF                12438 	.byte	-1
   31BD 18                12439 	.byte	24
   31BE 02                12440 	.byte	2
   31BF 00                12441 	.byte	0
   31C0 E5                12442 	.byte	-27
   31C1 F0                12443 	.byte	-16
   31C2 FF                12444 	.byte	-1
   31C3 18                12445 	.byte	24
   31C4 02                12446 	.byte	2
   31C5 00                12447 	.byte	0
   31C6 F6                12448 	.byte	-10
   31C7 06                12449 	.byte	6
   31C8 FF                12450 	.byte	-1
   31C9 03                12451 	.byte	3
   31CA 0E                12452 	.byte	14
   31CB FF                12453 	.byte	-1
   31CC 0A                12454 	.byte	10
   31CD FA                12455 	.byte	-6
   31CE FF                12456 	.byte	-1
   31CF FD                12457 	.byte	-3
   31D0 F2                12458 	.byte	-14
   31D1 FF                12459 	.byte	-1
   31D2 F6                12460 	.byte	-10
   31D3 06                12461 	.byte	6
   31D4 01                12462 	.byte	1
                          12463 	.globl _height2FallingFront12
   31D5                   12464 _height2FallingFront12:
   31D5 FF                12465 	.byte	-1
   31D6 03                12466 	.byte	3
   31D7 0E                12467 	.byte	14
   31D8 FF                12468 	.byte	-1
   31D9 0D                12469 	.byte	13
   31DA 00                12470 	.byte	0
   31DB FF                12471 	.byte	-1
   31DC FD                12472 	.byte	-3
   31DD F2                12473 	.byte	-14
   31DE FF                12474 	.byte	-1
   31DF F3                12475 	.byte	-13
   31E0 00                12476 	.byte	0
   31E1 FF                12477 	.byte	-1
   31E2 F1                12478 	.byte	-15
   31E3 0C                12479 	.byte	12
   31E4 00                12480 	.byte	0
   31E5 12                12481 	.byte	18
   31E6 02                12482 	.byte	2
   31E7 FF                12483 	.byte	-1
   31E8 F1                12484 	.byte	-15
   31E9 0C                12485 	.byte	12
   31EA 00                12486 	.byte	0
   31EB 1C                12487 	.byte	28
   31EC F4                12488 	.byte	-12
   31ED FF                12489 	.byte	-1
   31EE F0                12490 	.byte	-16
   31EF 0C                12491 	.byte	12
   31F0 00                12492 	.byte	0
   31F1 0D                12493 	.byte	13
   31F2 E6                12494 	.byte	-26
   31F3 FF                12495 	.byte	-1
   31F4 F1                12496 	.byte	-15
   31F5 0C                12497 	.byte	12
   31F6 00                12498 	.byte	0
   31F7 F3                12499 	.byte	-13
   31F8 00                12500 	.byte	0
   31F9 FF                12501 	.byte	-1
   31FA 03                12502 	.byte	3
   31FB 0E                12503 	.byte	14
   31FC FF                12504 	.byte	-1
   31FD 0C                12505 	.byte	12
   31FE 00                12506 	.byte	0
   31FF FF                12507 	.byte	-1
   3200 FE                12508 	.byte	-2
   3201 F2                12509 	.byte	-14
   3202 FF                12510 	.byte	-1
   3203 F3                12511 	.byte	-13
   3204 00                12512 	.byte	0
   3205 01                12513 	.byte	1
                          12514 	.globl _height2RisingBack12
   3206                   12515 _height2RisingBack12:
   3206 00                12516 	.byte	0
   3207 10                12517 	.byte	16
   3208 F5                12518 	.byte	-11
   3209 FF                12519 	.byte	-1
   320A 03                12520 	.byte	3
   320B 0D                12521 	.byte	13
   320C FF                12522 	.byte	-1
   320D 06                12523 	.byte	6
   320E FB                12524 	.byte	-5
   320F FF                12525 	.byte	-1
   3210 FD                12526 	.byte	-3
   3211 F2                12527 	.byte	-14
   3212 FF                12528 	.byte	-1
   3213 FA                12529 	.byte	-6
   3214 06                12530 	.byte	6
   3215 FF                12531 	.byte	-1
   3216 1C                12532 	.byte	28
   3217 FE                12533 	.byte	-2
   3218 00                12534 	.byte	0
   3219 E7                12535 	.byte	-25
   321A 0F                12536 	.byte	15
   321B FF                12537 	.byte	-1
   321C 1C                12538 	.byte	28
   321D FE                12539 	.byte	-2
   321E 00                12540 	.byte	0
   321F EA                12541 	.byte	-22
   3220 FD                12542 	.byte	-3
   3221 FF                12543 	.byte	-1
   3222 1C                12544 	.byte	28
   3223 FE                12545 	.byte	-2
   3224 00                12546 	.byte	0
   3225 E1                12547 	.byte	-31
   3226 F4                12548 	.byte	-12
   3227 FF                12549 	.byte	-1
   3228 1C                12550 	.byte	28
   3229 FE                12551 	.byte	-2
   322A 00                12552 	.byte	0
   322B FA                12553 	.byte	-6
   322C 06                12554 	.byte	6
   322D FF                12555 	.byte	-1
   322E 03                12556 	.byte	3
   322F 0D                12557 	.byte	13
   3230 FF                12558 	.byte	-1
   3231 06                12559 	.byte	6
   3232 FB                12560 	.byte	-5
   3233 FF                12561 	.byte	-1
   3234 FD                12562 	.byte	-3
   3235 F2                12563 	.byte	-14
   3236 FF                12564 	.byte	-1
   3237 FA                12565 	.byte	-6
   3238 06                12566 	.byte	6
   3239 01                12567 	.byte	1
                          12568 	.globl _depth2RollingLeft12
   323A                   12569 _depth2RollingLeft12:
   323A FF                12570 	.byte	-1
   323B 0D                12571 	.byte	13
   323C 00                12572 	.byte	0
   323D FF                12573 	.byte	-1
   323E 10                12574 	.byte	16
   323F F5                12575 	.byte	-11
   3240 FF                12576 	.byte	-1
   3241 F3                12577 	.byte	-13
   3242 00                12578 	.byte	0
   3243 FF                12579 	.byte	-1
   3244 F0                12580 	.byte	-16
   3245 0B                12581 	.byte	11
   3246 FF                12582 	.byte	-1
   3247 FE                12583 	.byte	-2
   3248 F3                12584 	.byte	-13
   3249 00                12585 	.byte	0
   324A 0F                12586 	.byte	15
   324B 0D                12587 	.byte	13
   324C FF                12588 	.byte	-1
   324D FD                12589 	.byte	-3
   324E F3                12590 	.byte	-13
   324F 00                12591 	.byte	0
   3250 13                12592 	.byte	19
   3251 02                12593 	.byte	2
   3252 FF                12594 	.byte	-1
   3253 FD                12595 	.byte	-3
   3254 F2                12596 	.byte	-14
   3255 00                12597 	.byte	0
   3256 F6                12598 	.byte	-10
   3257 0E                12599 	.byte	14
   3258 FF                12600 	.byte	-1
   3259 FD                12601 	.byte	-3
   325A F2                12602 	.byte	-14
   325B 00                12603 	.byte	0
   325C F1                12604 	.byte	-15
   325D 0C                12605 	.byte	12
   325E FF                12606 	.byte	-1
   325F 0C                12607 	.byte	12
   3260 00                12608 	.byte	0
   3261 FF                12609 	.byte	-1
   3262 10                12610 	.byte	16
   3263 F4                12611 	.byte	-12
   3264 FF                12612 	.byte	-1
   3265 F3                12613 	.byte	-13
   3266 00                12614 	.byte	0
   3267 FF                12615 	.byte	-1
   3268 F1                12616 	.byte	-15
   3269 0C                12617 	.byte	12
   326A 01                12618 	.byte	1
                          12619 	.globl _depth2RollingRight12
   326B                   12620 _depth2RollingRight12:
   326B 00                12621 	.byte	0
   326C 10                12622 	.byte	16
   326D 0E                12623 	.byte	14
   326E FF                12624 	.byte	-1
   326F F3                12625 	.byte	-13
   3270 00                12626 	.byte	0
   3271 FF                12627 	.byte	-1
   3272 10                12628 	.byte	16
   3273 F4                12629 	.byte	-12
   3274 FF                12630 	.byte	-1
   3275 0D                12631 	.byte	13
   3276 00                12632 	.byte	0
   3277 FF                12633 	.byte	-1
   3278 F0                12634 	.byte	-16
   3279 0C                12635 	.byte	12
   327A FF                12636 	.byte	-1
   327B 03                12637 	.byte	3
   327C 0E                12638 	.byte	14
   327D 00                12639 	.byte	0
   327E F0                12640 	.byte	-16
   327F F2                12641 	.byte	-14
   3280 FF                12642 	.byte	-1
   3281 03                12643 	.byte	3
   3282 0E                12644 	.byte	14
   3283 00                12645 	.byte	0
   3284 0D                12646 	.byte	13
   3285 E6                12647 	.byte	-26
   3286 FF                12648 	.byte	-1
   3287 03                12649 	.byte	3
   3288 0E                12650 	.byte	14
   3289 00                12651 	.byte	0
   328A 0A                12652 	.byte	10
   328B F2                12653 	.byte	-14
   328C FF                12654 	.byte	-1
   328D 03                12655 	.byte	3
   328E 0E                12656 	.byte	14
   328F 00                12657 	.byte	0
   3290 F0                12658 	.byte	-16
   3291 0C                12659 	.byte	12
   3292 FF                12660 	.byte	-1
   3293 F3                12661 	.byte	-13
   3294 00                12662 	.byte	0
   3295 FF                12663 	.byte	-1
   3296 10                12664 	.byte	16
   3297 F4                12665 	.byte	-12
   3298 FF                12666 	.byte	-1
   3299 0D                12667 	.byte	13
   329A 00                12668 	.byte	0
   329B FF                12669 	.byte	-1
   329C F0                12670 	.byte	-16
   329D 0C                12671 	.byte	12
   329E 01                12672 	.byte	1
                          12673 	.globl _width2RollingFront12
   329F                   12674 _width2RollingFront12:
   329F FF                12675 	.byte	-1
   32A0 06                12676 	.byte	6
   32A1 1C                12677 	.byte	28
   32A2 FF                12678 	.byte	-1
   32A3 0D                12679 	.byte	13
   32A4 00                12680 	.byte	0
   32A5 FF                12681 	.byte	-1
   32A6 FA                12682 	.byte	-6
   32A7 E4                12683 	.byte	-28
   32A8 FF                12684 	.byte	-1
   32A9 F3                12685 	.byte	-13
   32AA 00                12686 	.byte	0
   32AB FF                12687 	.byte	-1
   32AC F9                12688 	.byte	-7
   32AD 06                12689 	.byte	6
   32AE 00                12690 	.byte	0
   32AF 0D                12691 	.byte	13
   32B0 16                12692 	.byte	22
   32B1 FF                12693 	.byte	-1
   32B2 F9                12694 	.byte	-7
   32B3 06                12695 	.byte	6
   32B4 00                12696 	.byte	0
   32B5 14                12697 	.byte	20
   32B6 FA                12698 	.byte	-6
   32B7 FF                12699 	.byte	-1
   32B8 F8                12700 	.byte	-8
   32B9 06                12701 	.byte	6
   32BA 00                12702 	.byte	0
   32BB 02                12703 	.byte	2
   32BC DE                12704 	.byte	-34
   32BD FF                12705 	.byte	-1
   32BE F8                12706 	.byte	-8
   32BF 06                12707 	.byte	6
   32C0 00                12708 	.byte	0
   32C1 F4                12709 	.byte	-12
   32C2 00                12710 	.byte	0
   32C3 FF                12711 	.byte	-1
   32C4 06                12712 	.byte	6
   32C5 1C                12713 	.byte	28
   32C6 FF                12714 	.byte	-1
   32C7 0C                12715 	.byte	12
   32C8 00                12716 	.byte	0
   32C9 FF                12717 	.byte	-1
   32CA FA                12718 	.byte	-6
   32CB E4                12719 	.byte	-28
   32CC FF                12720 	.byte	-1
   32CD F4                12721 	.byte	-12
   32CE 00                12722 	.byte	0
   32CF 01                12723 	.byte	1
                          12724 	.globl _width2RollingBack12
   32D0                   12725 _width2RollingBack12:
   32D0 00                12726 	.byte	0
   32D1 15                12727 	.byte	21
   32D2 FB                12728 	.byte	-5
   32D3 FF                12729 	.byte	-1
   32D4 06                12730 	.byte	6
   32D5 1B                12731 	.byte	27
   32D6 FF                12732 	.byte	-1
   32D7 F3                12733 	.byte	-13
   32D8 00                12734 	.byte	0
   32D9 FF                12735 	.byte	-1
   32DA FA                12736 	.byte	-6
   32DB E5                12737 	.byte	-27
   32DC FF                12738 	.byte	-1
   32DD 0D                12739 	.byte	13
   32DE 00                12740 	.byte	0
   32DF FF                12741 	.byte	-1
   32E0 08                12742 	.byte	8
   32E1 FA                12743 	.byte	-6
   32E2 00                12744 	.byte	0
   32E3 FE                12745 	.byte	-2
   32E4 21                12746 	.byte	33
   32E5 FF                12747 	.byte	-1
   32E6 08                12748 	.byte	8
   32E7 FA                12749 	.byte	-6
   32E8 00                12750 	.byte	0
   32E9 EB                12751 	.byte	-21
   32EA 06                12752 	.byte	6
   32EB FF                12753 	.byte	-1
   32EC 08                12754 	.byte	8
   32ED FA                12755 	.byte	-6
   32EE 00                12756 	.byte	0
   32EF F2                12757 	.byte	-14
   32F0 EB                12758 	.byte	-21
   32F1 FF                12759 	.byte	-1
   32F2 08                12760 	.byte	8
   32F3 FA                12761 	.byte	-6
   32F4 00                12762 	.byte	0
   32F5 0D                12763 	.byte	13
   32F6 00                12764 	.byte	0
   32F7 FF                12765 	.byte	-1
   32F8 06                12766 	.byte	6
   32F9 1B                12767 	.byte	27
   32FA FF                12768 	.byte	-1
   32FB F3                12769 	.byte	-13
   32FC 00                12770 	.byte	0
   32FD FF                12771 	.byte	-1
   32FE FA                12772 	.byte	-6
   32FF E5                12773 	.byte	-27
   3300 FF                12774 	.byte	-1
   3301 0D                12775 	.byte	13
   3302 00                12776 	.byte	0
   3303 01                12777 	.byte	1
                          12778 	.globl _height2FallingLeft
                          12779 	.area	.text
   3304                   12780 _height2FallingLeft:
   3304 13 FC             12781 	.word	_height2FallingLeft0
   3306 16 54             12782 	.word	_height2FallingLeft1
   3308 18 B8             12783 	.word	_height2FallingLeft2
   330A 1B 1C             12784 	.word	_height2FallingLeft3
   330C 1D 80             12785 	.word	_height2FallingLeft4
   330E 1F E4             12786 	.word	_height2FallingLeft5
   3310 22 48             12787 	.word	_height2FallingLeft6
   3312 24 AC             12788 	.word	_height2FallingLeft7
   3314 27 10             12789 	.word	_height2FallingLeft8
   3316 29 74             12790 	.word	_height2FallingLeft9
   3318 2B D8             12791 	.word	_height2FallingLeft10
   331A 2E 3C             12792 	.word	_height2FallingLeft11
                          12793 	.globl _height2RisingRight
   331C                   12794 _height2RisingRight:
   331C 14 2D             12795 	.word	_height2RisingRight0
   331E 16 85             12796 	.word	_height2RisingRight1
   3320 18 E9             12797 	.word	_height2RisingRight2
   3322 1B 4D             12798 	.word	_height2RisingRight3
   3324 1D B1             12799 	.word	_height2RisingRight4
   3326 20 15             12800 	.word	_height2RisingRight5
   3328 22 79             12801 	.word	_height2RisingRight6
   332A 24 DD             12802 	.word	_height2RisingRight7
   332C 27 41             12803 	.word	_height2RisingRight8
   332E 29 A5             12804 	.word	_height2RisingRight9
   3330 2C 09             12805 	.word	_height2RisingRight10
   3332 2E 6D             12806 	.word	_height2RisingRight11
                          12807 	.globl _height2FallingRight
   3334                   12808 _height2FallingRight:
   3334 14 61             12809 	.word	_height2FallingRight0
   3336 16 B9             12810 	.word	_height2FallingRight1
   3338 19 1D             12811 	.word	_height2FallingRight2
   333A 1B 81             12812 	.word	_height2FallingRight3
   333C 1D E5             12813 	.word	_height2FallingRight4
   333E 20 49             12814 	.word	_height2FallingRight5
   3340 22 AD             12815 	.word	_height2FallingRight6
   3342 25 11             12816 	.word	_height2FallingRight7
   3344 27 75             12817 	.word	_height2FallingRight8
   3346 29 D9             12818 	.word	_height2FallingRight9
   3348 2C 3D             12819 	.word	_height2FallingRight10
   334A 2E A1             12820 	.word	_height2FallingRight11
                          12821 	.globl _height2RisingLeft
   334C                   12822 _height2RisingLeft:
   334C 14 92             12823 	.word	_height2RisingLeft0
   334E 16 ED             12824 	.word	_height2RisingLeft1
   3350 19 51             12825 	.word	_height2RisingLeft2
   3352 1B B5             12826 	.word	_height2RisingLeft3
   3354 1E 19             12827 	.word	_height2RisingLeft4
   3356 20 7D             12828 	.word	_height2RisingLeft5
   3358 22 E1             12829 	.word	_height2RisingLeft6
   335A 25 45             12830 	.word	_height2RisingLeft7
   335C 27 A9             12831 	.word	_height2RisingLeft8
   335E 2A 0D             12832 	.word	_height2RisingLeft9
   3360 2C 71             12833 	.word	_height2RisingLeft10
   3362 2E D5             12834 	.word	_height2RisingLeft11
                          12835 	.globl _height2FallingBack
   3364                   12836 _height2FallingBack:
   3364 14 C6             12837 	.word	_height2FallingBack0
   3366 17 21             12838 	.word	_height2FallingBack1
   3368 19 85             12839 	.word	_height2FallingBack2
   336A 1B E9             12840 	.word	_height2FallingBack3
   336C 1E 4D             12841 	.word	_height2FallingBack4
   336E 20 B1             12842 	.word	_height2FallingBack5
   3370 23 15             12843 	.word	_height2FallingBack6
   3372 25 79             12844 	.word	_height2FallingBack7
   3374 27 DD             12845 	.word	_height2FallingBack8
   3376 2A 41             12846 	.word	_height2FallingBack9
   3378 2C A5             12847 	.word	_height2FallingBack10
   337A 2F 09             12848 	.word	_height2FallingBack11
                          12849 	.globl _height2RisingFront
   337C                   12850 _height2RisingFront:
   337C 14 F7             12851 	.word	_height2RisingFront0
   337E 17 55             12852 	.word	_height2RisingFront1
   3380 19 B9             12853 	.word	_height2RisingFront2
   3382 1C 1D             12854 	.word	_height2RisingFront3
   3384 1E 81             12855 	.word	_height2RisingFront4
   3386 20 E5             12856 	.word	_height2RisingFront5
   3388 23 49             12857 	.word	_height2RisingFront6
   338A 25 AD             12858 	.word	_height2RisingFront7
   338C 28 11             12859 	.word	_height2RisingFront8
   338E 2A 75             12860 	.word	_height2RisingFront9
   3390 2C D9             12861 	.word	_height2RisingFront10
   3392 2F 3D             12862 	.word	_height2RisingFront11
                          12863 	.globl _height2FallingFront
   3394                   12864 _height2FallingFront:
   3394 15 2B             12865 	.word	_height2FallingFront0
   3396 17 89             12866 	.word	_height2FallingFront1
   3398 19 ED             12867 	.word	_height2FallingFront2
   339A 1C 51             12868 	.word	_height2FallingFront3
   339C 1E B5             12869 	.word	_height2FallingFront4
   339E 21 19             12870 	.word	_height2FallingFront5
   33A0 23 7D             12871 	.word	_height2FallingFront6
   33A2 25 E1             12872 	.word	_height2FallingFront7
   33A4 28 45             12873 	.word	_height2FallingFront8
   33A6 2A A9             12874 	.word	_height2FallingFront9
   33A8 2D 0D             12875 	.word	_height2FallingFront10
   33AA 2F 71             12876 	.word	_height2FallingFront11
                          12877 	.globl _height2RisingBack
   33AC                   12878 _height2RisingBack:
   33AC 15 5C             12879 	.word	_height2RisingBack0
   33AE 17 BA             12880 	.word	_height2RisingBack1
   33B0 1A 1E             12881 	.word	_height2RisingBack2
   33B2 1C 82             12882 	.word	_height2RisingBack3
   33B4 1E E6             12883 	.word	_height2RisingBack4
   33B6 21 4A             12884 	.word	_height2RisingBack5
   33B8 23 AE             12885 	.word	_height2RisingBack6
   33BA 26 12             12886 	.word	_height2RisingBack7
   33BC 28 76             12887 	.word	_height2RisingBack8
   33BE 2A DA             12888 	.word	_height2RisingBack9
   33C0 2D 3E             12889 	.word	_height2RisingBack10
   33C2 2F A2             12890 	.word	_height2RisingBack11
                          12891 	.globl _depth2RollingLeft
   33C4                   12892 _depth2RollingLeft:
   33C4 15 90             12893 	.word	_depth2RollingLeft0
   33C6 17 EE             12894 	.word	_depth2RollingLeft1
   33C8 1A 52             12895 	.word	_depth2RollingLeft2
   33CA 1C B6             12896 	.word	_depth2RollingLeft3
   33CC 1F 1A             12897 	.word	_depth2RollingLeft4
   33CE 21 7E             12898 	.word	_depth2RollingLeft5
   33D0 23 E2             12899 	.word	_depth2RollingLeft6
   33D2 26 46             12900 	.word	_depth2RollingLeft7
   33D4 28 AA             12901 	.word	_depth2RollingLeft8
   33D6 2B 0E             12902 	.word	_depth2RollingLeft9
   33D8 2D 72             12903 	.word	_depth2RollingLeft10
   33DA 2F D6             12904 	.word	_depth2RollingLeft11
                          12905 	.globl _depth2RollingRight
   33DC                   12906 _depth2RollingRight:
   33DC 15 C1             12907 	.word	_depth2RollingRight0
   33DE 18 1F             12908 	.word	_depth2RollingRight1
   33E0 1A 83             12909 	.word	_depth2RollingRight2
   33E2 1C E7             12910 	.word	_depth2RollingRight3
   33E4 1F 4B             12911 	.word	_depth2RollingRight4
   33E6 21 AF             12912 	.word	_depth2RollingRight5
   33E8 24 13             12913 	.word	_depth2RollingRight6
   33EA 26 77             12914 	.word	_depth2RollingRight7
   33EC 28 DB             12915 	.word	_depth2RollingRight8
   33EE 2B 3F             12916 	.word	_depth2RollingRight9
   33F0 2D A3             12917 	.word	_depth2RollingRight10
   33F2 30 07             12918 	.word	_depth2RollingRight11
                          12919 	.globl _width2RollingFront
   33F4                   12920 _width2RollingFront:
   33F4 15 F2             12921 	.word	_width2RollingFront0
   33F6 18 53             12922 	.word	_width2RollingFront1
   33F8 1A B7             12923 	.word	_width2RollingFront2
   33FA 1D 1B             12924 	.word	_width2RollingFront3
   33FC 1F 7F             12925 	.word	_width2RollingFront4
   33FE 21 E3             12926 	.word	_width2RollingFront5
   3400 24 47             12927 	.word	_width2RollingFront6
   3402 26 AB             12928 	.word	_width2RollingFront7
   3404 29 0F             12929 	.word	_width2RollingFront8
   3406 2B 73             12930 	.word	_width2RollingFront9
   3408 2D D7             12931 	.word	_width2RollingFront10
   340A 30 3B             12932 	.word	_width2RollingFront11
                          12933 	.globl _width2RollingBack
   340C                   12934 _width2RollingBack:
   340C 16 23             12935 	.word	_width2RollingBack0
   340E 18 84             12936 	.word	_width2RollingBack1
   3410 1A E8             12937 	.word	_width2RollingBack2
   3412 1D 4C             12938 	.word	_width2RollingBack3
   3414 1F B0             12939 	.word	_width2RollingBack4
   3416 22 14             12940 	.word	_width2RollingBack5
   3418 24 78             12941 	.word	_width2RollingBack6
   341A 26 DC             12942 	.word	_width2RollingBack7
   341C 29 40             12943 	.word	_width2RollingBack8
   341E 2B A4             12944 	.word	_width2RollingBack9
   3420 2E 08             12945 	.word	_width2RollingBack10
   3422 30 6C             12946 	.word	_width2RollingBack11
                          12947 	.globl _lineCount
                          12948 	.area .data
   C890                   12949 _lineCount:
   C890 00                12950 	.byte	0	;skip space
                          12951 	.globl _startX
   C891                   12952 _startX:
   C891 00                12953 	.byte	0	;skip space
                          12954 	.globl _startY
   C892                   12955 _startY:
   C892 00                12956 	.byte	0	;skip space
                          12957 	.globl _endX
   C893                   12958 _endX:
   C893 00                12959 	.byte	0	;skip space
                          12960 	.globl _endY
   C894                   12961 _endY:
   C894 00                12962 	.byte	0	;skip space
                          12963 	.globl _levelNumber
   C895                   12964 _levelNumber:
   C895 00                12965 	.byte	0	;skip space
                          12966 	.area .bss
                          12967 	.globl	_lineX0
   C896                   12968 _lineX0:	.blkb	120
                          12969 	.globl	_lineY0
   C90E                   12970 _lineY0:	.blkb	120
                          12971 	.globl	_lineX1
   C986                   12972 _lineX1:	.blkb	120
                          12973 	.globl	_lineY1
   C9FE                   12974 _lineY1:	.blkb	120
                          12975 	.globl	_blockOrientation
   CA76                   12976 _blockOrientation:	.blkb	1
                          12977 	.globl	_blockX
   CA77                   12978 _blockX:	.blkb	1
                          12979 	.globl	_blockY
   CA78                   12980 _blockY:	.blkb	1
                          12981 	.globl	_blockAnimation
   CA79                   12982 _blockAnimation:	.blkb	2
                          12983 	.globl	_nextBlockAnimation
   CA7B                   12984 _nextBlockAnimation:	.blkb	2
                          12985 	.globl	_blockAnimationStep
   CA7D                   12986 _blockAnimationStep:	.blkb	1
                          12987 	.globl	_blockAnimating
   CA7E                   12988 _blockAnimating:	.blkb	1
                          12989 	.globl	_nextBlockX
   CA7F                   12990 _nextBlockX:	.blkb	1
                          12991 	.globl	_nextBlockY
   CA80                   12992 _nextBlockY:	.blkb	1
                          12993 	.globl	_lastBlockDirection
   CA81                   12994 _lastBlockDirection:	.blkb	1
                          12995 	.globl	_blockYOfs
   CA82                   12996 _blockYOfs:	.blkb	1
                          12997 	.globl	_level
   CA83                   12998 _level:	.blkb	2
                          12999 	.globl	_gameState
   CA85                   13000 _gameState:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$bloxorz$100      003F GR  |   2 A$bloxorz$1004     036B GR
  2 A$bloxorz$1005     036E GR  |   2 A$bloxorz$1011     0371 GR
  2 A$bloxorz$1012     0374 GR  |   2 A$bloxorz$1018     0377 GR
  2 A$bloxorz$1019     037A GR  |   2 A$bloxorz$1020     037B GR
  2 A$bloxorz$1026     037E GR  |   2 A$bloxorz$1027     0381 GR
  2 A$bloxorz$1033     0384 GR  |   2 A$bloxorz$1041     0387 GR
  2 A$bloxorz$1042     0389 GR  |   2 A$bloxorz$1048     038C GR
  2 A$bloxorz$1054     038F GR  |   2 A$bloxorz$1055     0392 GR
  2 A$bloxorz$1064     0395 GR  |   2 A$bloxorz$1065     0397 GR
  2 A$bloxorz$1071     039A GR  |   2 A$bloxorz$1072     039D GR
  2 A$bloxorz$1073     03A0 GR  |   2 A$bloxorz$1081     03A1 GR
  2 A$bloxorz$1084     03A3 GR  |   2 A$bloxorz$1085     03A5 GR
  2 A$bloxorz$1089     03A8 GR  |   2 A$bloxorz$109      0041 GR
  2 A$bloxorz$1092     03AA GR  |   2 A$bloxorz$1095     03AC GR
  2 A$bloxorz$1098     03AE GR  |   2 A$bloxorz$110      0043 GR
  2 A$bloxorz$1101     03B1 GR  |   2 A$bloxorz$1107     03B4 GR
  2 A$bloxorz$111      0045 GR  |   2 A$bloxorz$1110     03B6 GR
  2 A$bloxorz$1113     03B8 GR  |   2 A$bloxorz$1116     03BB GR
  2 A$bloxorz$1119     03BD GR  |   2 A$bloxorz$112      0047 GR
  2 A$bloxorz$1122     03C1 GR  |   2 A$bloxorz$1125     03C5 GR
  2 A$bloxorz$1128     03C7 GR  |   2 A$bloxorz$113      0048 GR
  2 A$bloxorz$1131     03CA GR  |   2 A$bloxorz$1134     03CC GR
  2 A$bloxorz$1137     03D0 GR  |   2 A$bloxorz$114      004A GR
  2 A$bloxorz$1140     03D4 GR  |   2 A$bloxorz$1143     03D8 GR
  2 A$bloxorz$1146     03DC GR  |   2 A$bloxorz$1149     03DE GR
  2 A$bloxorz$115      004C GR  |   2 A$bloxorz$1152     03E1 GR
  2 A$bloxorz$1155     03E3 GR  |   2 A$bloxorz$1158     03E5 GR
  2 A$bloxorz$116      004E GR  |   2 A$bloxorz$1161     03E7 GR
  2 A$bloxorz$1164     03E8 GR  |   2 A$bloxorz$1167     03EA GR
  2 A$bloxorz$117      0050 GR  |   2 A$bloxorz$1170     03EC GR
  2 A$bloxorz$1173     03ED GR  |   2 A$bloxorz$1174     03EF GR
  2 A$bloxorz$1175     03F1 GR  |   2 A$bloxorz$118      0052 GR
  2 A$bloxorz$1181     03F3 GR  |   2 A$bloxorz$1188     03F6 GR
  2 A$bloxorz$119      0054 GR  |   2 A$bloxorz$1191     03F8 GR
  2 A$bloxorz$1192     03FA GR  |   2 A$bloxorz$120      0056 GR
  2 A$bloxorz$1202     03FD GR  |   2 A$bloxorz$1203     03FF GR
  2 A$bloxorz$1204     0401 GR  |   2 A$bloxorz$1207     0403 GR
  2 A$bloxorz$1208     0405 GR  |   2 A$bloxorz$1209     0407 GR
  2 A$bloxorz$121      0058 GR  |   2 A$bloxorz$1216     040A GR
  2 A$bloxorz$1217     040D GR  |   2 A$bloxorz$122      0059 GR
  2 A$bloxorz$1226     040F GR  |   2 A$bloxorz$1227     0410 GR
  2 A$bloxorz$1228     0412 GR  |   2 A$bloxorz$1229     0414 GR
  2 A$bloxorz$123      005B GR  |   2 A$bloxorz$1230     0417 GR
  2 A$bloxorz$1231     0418 GR  |   2 A$bloxorz$1232     0419 GR
  2 A$bloxorz$1233     041A GR  |   2 A$bloxorz$1234     041C GR
  2 A$bloxorz$1235     041E GR  |   2 A$bloxorz$124      005D GR
  2 A$bloxorz$1244     0420 GR  |   2 A$bloxorz$1245     0422 GR
  2 A$bloxorz$1246     0424 GR  |   2 A$bloxorz$1247     0426 GR
  2 A$bloxorz$1248     0427 GR  |   2 A$bloxorz$1249     0429 GR
  2 A$bloxorz$125      005F GR  |   2 A$bloxorz$1250     042C GR
  2 A$bloxorz$1251     042E GR  |   2 A$bloxorz$1252     042F GR
  2 A$bloxorz$1253     0431 GR  |   2 A$bloxorz$1254     0433 GR
  2 A$bloxorz$1255     0435 GR  |   2 A$bloxorz$1256     0437 GR
  2 A$bloxorz$1257     0439 GR  |   2 A$bloxorz$126      0061 GR
  2 A$bloxorz$1263     043B GR  |   2 A$bloxorz$1264     043D GR
  2 A$bloxorz$1265     043F GR  |   2 A$bloxorz$1266     0441 GR
  2 A$bloxorz$1269     0443 GR  |   2 A$bloxorz$1270     0445 GR
  2 A$bloxorz$1271     0447 GR  |   2 A$bloxorz$1278     044A GR
  2 A$bloxorz$1279     044D GR  |   2 A$bloxorz$1280     044E GR
  2 A$bloxorz$1281     0450 GR  |   2 A$bloxorz$1282     0451 GR
  2 A$bloxorz$1283     0452 GR  |   2 A$bloxorz$1284     0455 GR
  2 A$bloxorz$1285     0457 GR  |   2 A$bloxorz$1288     0459 GR
  2 A$bloxorz$129      0062 GR  |   2 A$bloxorz$1292     045C GR
  2 A$bloxorz$1293     045E GR  |   2 A$bloxorz$130      0064 GR
  2 A$bloxorz$1301     0460 GR  |   2 A$bloxorz$1302     0463 GR
  2 A$bloxorz$1308     0465 GR  |   2 A$bloxorz$1309     0468 GR
  2 A$bloxorz$131      0066 GR  |   2 A$bloxorz$1310     046B GR
  2 A$bloxorz$1311     046D GR  |   2 A$bloxorz$1313     046F GR
  2 A$bloxorz$1320     0470 GR  |   2 A$bloxorz$1321     0473 GR
  2 A$bloxorz$1327     0476 GR  |   2 A$bloxorz$1328     0479 GR
  2 A$bloxorz$1334     047C GR  |   2 A$bloxorz$1340     047F GR
  2 A$bloxorz$1341     0482 GR  |   2 A$bloxorz$1347     0485 GR
  2 A$bloxorz$1348     0488 GR  |   2 A$bloxorz$1351     0489 GR
  2 A$bloxorz$1352     048B GR  |   2 A$bloxorz$1367     048D GR
  2 A$bloxorz$1368     0490 GR  |   2 A$bloxorz$1369     0492 GR
  2 A$bloxorz$137      0068 GR  |   2 A$bloxorz$1370     0494 GR
  2 A$bloxorz$1371     0496 GR  |   2 A$bloxorz$138      006B GR
  2 A$bloxorz$1384     0498 GR  |   2 A$bloxorz$1385     049A GR
  2 A$bloxorz$1386     049C GR  |   2 A$bloxorz$1387     049E GR
  2 A$bloxorz$1388     049F GR  |   2 A$bloxorz$1389     04A1 GR
  2 A$bloxorz$1390     04A3 GR  |   2 A$bloxorz$1391     04A5 GR
  2 A$bloxorz$1392     04A7 GR  |   2 A$bloxorz$1393     04A9 GR
  2 A$bloxorz$1394     04AB GR  |   2 A$bloxorz$1395     04AD GR
  2 A$bloxorz$1396     04AF GR  |   2 A$bloxorz$1397     04B1 GR
  2 A$bloxorz$1398     04B3 GR  |   2 A$bloxorz$1399     04B4 GR
  2 A$bloxorz$1400     04B6 GR  |   2 A$bloxorz$1401     04B8 GR
  2 A$bloxorz$1402     04BA GR  |   2 A$bloxorz$1403     04BC GR
  2 A$bloxorz$1404     04BE GR  |   2 A$bloxorz$1405     04C0 GR
  2 A$bloxorz$1406     04C2 GR  |   2 A$bloxorz$1407     04C4 GR
  2 A$bloxorz$1409     04C7 GR  |   2 A$bloxorz$1410     04C9 GR
  2 A$bloxorz$1411     04CD GR  |   2 A$bloxorz$1412     04CF GR
  2 A$bloxorz$1418     04D3 GR  |   2 A$bloxorz$1419     04D5 GR
  2 A$bloxorz$1420     04D7 GR  |   2 A$bloxorz$1421     04DB GR
  2 A$bloxorz$1422     04DD GR  |   2 A$bloxorz$1423     04E1 GR
  2 A$bloxorz$1424     04E3 GR  |   2 A$bloxorz$1430     04E7 GR
  2 A$bloxorz$1431     04E9 GR  |   2 A$bloxorz$1432     04EB GR
  2 A$bloxorz$1438     04EF GR  |   2 A$bloxorz$1439     04F1 GR
  2 A$bloxorz$1440     04F2 GR  |   2 A$bloxorz$1446     04F4 GR
  2 A$bloxorz$1447     04F7 GR  |   2 A$bloxorz$1456     04F9 GR
  2 A$bloxorz$1457     04FA GR  |   2 A$bloxorz$1458     04FC GR
  2 A$bloxorz$1459     04FE GR  |   2 A$bloxorz$1460     0500 GR
  2 A$bloxorz$1462     0501 GR  |   2 A$bloxorz$1463     0503 GR
  2 A$bloxorz$147      006D GR  |   2 A$bloxorz$1475     0507 GR
  2 A$bloxorz$1476     0509 GR  |   2 A$bloxorz$1477     050B GR
  2 A$bloxorz$1478     050D GR  |   2 A$bloxorz$1479     050F GR
  2 A$bloxorz$148      006E GR  |   2 A$bloxorz$1480     0511 GR
  2 A$bloxorz$149      0070 GR  |   2 A$bloxorz$1492     0515 GR
  2 A$bloxorz$1493     0517 GR  |   2 A$bloxorz$1494     0519 GR
  2 A$bloxorz$1495     051A GR  |   2 A$bloxorz$1497     051C GR
  2 A$bloxorz$1498     051E GR  |   2 A$bloxorz$150      0072 GR
  2 A$bloxorz$151      0074 GR  |   2 A$bloxorz$1510     0522 GR
  2 A$bloxorz$1511     0524 GR  |   2 A$bloxorz$1512     0526 GR
  2 A$bloxorz$1513     0528 GR  |   2 A$bloxorz$1514     052A GR
  2 A$bloxorz$1515     052C GR  |   2 A$bloxorz$152      0075 GR
  2 A$bloxorz$1521     0530 GR  |   2 A$bloxorz$1522     0532 GR
  2 A$bloxorz$1523     0533 GR  |   2 A$bloxorz$1529     0536 GR
  2 A$bloxorz$153      0077 GR  |   2 A$bloxorz$1530     0538 GR
  2 A$bloxorz$1532     053A GR  |   2 A$bloxorz$1533     053C GR
  2 A$bloxorz$1534     053E GR  |   2 A$bloxorz$1535     0540 GR
  2 A$bloxorz$1536     0542 GR  |   2 A$bloxorz$154      0079 GR
  2 A$bloxorz$1546     0546 GR  |   2 A$bloxorz$1547     0548 GR
  2 A$bloxorz$155      007B GR  |   2 A$bloxorz$1553     054A GR
  2 A$bloxorz$1554     054C GR  |   2 A$bloxorz$156      007D GR
  2 A$bloxorz$1563     054E GR  |   2 A$bloxorz$1564     0550 GR
  2 A$bloxorz$1565     0552 GR  |   2 A$bloxorz$157      007F GR
  2 A$bloxorz$1572     0556 GR  |   2 A$bloxorz$1573     0558 GR
  2 A$bloxorz$1574     055A GR  |   2 A$bloxorz$158      0080 GR
  2 A$bloxorz$1581     055C GR  |   2 A$bloxorz$1582     055E GR
  2 A$bloxorz$1583     0560 GR  |   2 A$bloxorz$1584     0562 GR
  2 A$bloxorz$1585     0564 GR  |   2 A$bloxorz$1586     0566 GR
  2 A$bloxorz$1587     0568 GR  |   2 A$bloxorz$1589     056C GR
  2 A$bloxorz$159      0082 GR  |   2 A$bloxorz$1590     056E GR
  2 A$bloxorz$1591     0570 GR  |   2 A$bloxorz$1592     0572 GR
  2 A$bloxorz$1593     0574 GR  |   2 A$bloxorz$1594     0576 GR
  2 A$bloxorz$1595     057A GR  |   2 A$bloxorz$1596     057C GR
  2 A$bloxorz$1598     057E GR  |   2 A$bloxorz$1599     0580 GR
  2 A$bloxorz$160      0084 GR  |   2 A$bloxorz$1600     0582 GR
  2 A$bloxorz$1603     0584 GR  |   2 A$bloxorz$1604     0586 GR
  2 A$bloxorz$161      0086 GR  |   2 A$bloxorz$1619     0589 GR
  2 A$bloxorz$162      0088 GR  |   2 A$bloxorz$1620     058C GR
  2 A$bloxorz$1621     058F GR  |   2 A$bloxorz$1622     0591 GR
  2 A$bloxorz$163      008A GR  |   2 A$bloxorz$1635     0594 GR
  2 A$bloxorz$1636     0597 GR  |   2 A$bloxorz$1637     0599 GR
  2 A$bloxorz$1638     059B GR  |   2 A$bloxorz$1639     059D GR
  2 A$bloxorz$164      008C GR  |   2 A$bloxorz$1640     059F GR
  2 A$bloxorz$1641     05A1 GR  |   2 A$bloxorz$1642     05A2 GR
  2 A$bloxorz$1643     05A3 GR  |   2 A$bloxorz$1644     05A4 GR
  2 A$bloxorz$1645     05A6 GR  |   2 A$bloxorz$1646     05A8 GR
  2 A$bloxorz$1647     05AA GR  |   2 A$bloxorz$1648     05AC GR
  2 A$bloxorz$1649     05AF GR  |   2 A$bloxorz$165      008E GR
  2 A$bloxorz$1650     05B1 GR  |   2 A$bloxorz$1651     05B4 GR
  2 A$bloxorz$1652     05B8 GR  |   2 A$bloxorz$1653     05BA GR
  2 A$bloxorz$1654     05BC GR  |   2 A$bloxorz$1655     05BE GR
  2 A$bloxorz$1656     05C1 GR  |   2 A$bloxorz$1657     05C3 GR
  2 A$bloxorz$1658     05C4 GR  |   2 A$bloxorz$1659     05C6 GR
  2 A$bloxorz$166      0090 GR  |   2 A$bloxorz$1669     05C9 GR
  2 A$bloxorz$1670     05CB GR  |   2 A$bloxorz$1679     05CD GR
  2 A$bloxorz$1680     05CF GR  |   2 A$bloxorz$1681     05D1 GR
  2 A$bloxorz$1682     05D5 GR  |   2 A$bloxorz$1683     05D7 GR
  2 A$bloxorz$1684     05DB GR  |   2 A$bloxorz$1685     05DD GR
  2 A$bloxorz$1691     05E1 GR  |   2 A$bloxorz$1692     05E3 GR
  2 A$bloxorz$1693     05E5 GR  |   2 A$bloxorz$1694     05E9 GR
  2 A$bloxorz$1695     05EB GR  |   2 A$bloxorz$1696     05EF GR
  2 A$bloxorz$1697     05F1 GR  |   2 A$bloxorz$1703     05F5 GR
  2 A$bloxorz$1704     05F7 GR  |   2 A$bloxorz$1705     05F9 GR
  2 A$bloxorz$1711     05FD GR  |   2 A$bloxorz$1712     05FF GR
  2 A$bloxorz$1713     0600 GR  |   2 A$bloxorz$1719     0602 GR
  2 A$bloxorz$1720     0605 GR  |   2 A$bloxorz$1729     0607 GR
  2 A$bloxorz$1730     0608 GR  |   2 A$bloxorz$1731     060A GR
  2 A$bloxorz$1732     060C GR  |   2 A$bloxorz$1733     060E GR
  2 A$bloxorz$1734     0610 GR  |   2 A$bloxorz$1735     0612 GR
  2 A$bloxorz$1736     0613 GR  |   2 A$bloxorz$1737     0615 GR
  2 A$bloxorz$1738     0617 GR  |   2 A$bloxorz$1739     0619 GR
  2 A$bloxorz$1740     061B GR  |   2 A$bloxorz$1741     061D GR
  2 A$bloxorz$1742     061F GR  |   2 A$bloxorz$1754     0623 GR
  2 A$bloxorz$1755     0625 GR  |   2 A$bloxorz$1756     0626 GR
  2 A$bloxorz$1757     0628 GR  |   2 A$bloxorz$1758     062A GR
  2 A$bloxorz$1770     062E GR  |   2 A$bloxorz$1771     0630 GR
  2 A$bloxorz$1772     0632 GR  |   2 A$bloxorz$1773     0634 GR
  2 A$bloxorz$1774     0635 GR  |   2 A$bloxorz$1775     0637 GR
  2 A$bloxorz$1777     0639 GR  |   2 A$bloxorz$1778     063B GR
  2 A$bloxorz$178      0094 GR  |   2 A$bloxorz$179      0096 GR
  2 A$bloxorz$1790     063F GR  |   2 A$bloxorz$1791     0641 GR
  2 A$bloxorz$1792     0642 GR  |   2 A$bloxorz$1793     0644 GR
  2 A$bloxorz$1794     0646 GR  |   2 A$bloxorz$180      0097 GR
  2 A$bloxorz$1800     064A GR  |   2 A$bloxorz$1801     064C GR
  2 A$bloxorz$1802     064D GR  |   2 A$bloxorz$1808     0650 GR
  2 A$bloxorz$1809     0652 GR  |   2 A$bloxorz$181      0099 GR
  2 A$bloxorz$1811     0654 GR  |   2 A$bloxorz$1812     0656 GR
  2 A$bloxorz$1813     0658 GR  |   2 A$bloxorz$1814     065B GR
  2 A$bloxorz$1815     065D GR  |   2 A$bloxorz$1816     0660 GR
  2 A$bloxorz$1817     0664 GR  |   2 A$bloxorz$1819     0668 GR
  2 A$bloxorz$182      009B GR  |   2 A$bloxorz$1820     066A GR
  2 A$bloxorz$1829     066C GR  |   2 A$bloxorz$183      009D GR
  2 A$bloxorz$1830     066E GR  |   2 A$bloxorz$1836     0670 GR
  2 A$bloxorz$1837     0672 GR  |   2 A$bloxorz$184      009F GR
  2 A$bloxorz$1844     0674 GR  |   2 A$bloxorz$1845     0676 GR
  2 A$bloxorz$185      00A1 GR  |   2 A$bloxorz$1851     067A GR
  2 A$bloxorz$1852     067C GR  |   2 A$bloxorz$1858     067F GR
  2 A$bloxorz$1859     0681 GR  |   2 A$bloxorz$186      00A3 GR
  2 A$bloxorz$1860     0684 GR  |   2 A$bloxorz$1867     0687 GR
  2 A$bloxorz$1868     0689 GR  |   2 A$bloxorz$1869     068B GR
  2 A$bloxorz$1876     068D GR  |   2 A$bloxorz$1877     068F GR
  2 A$bloxorz$1878     0691 GR  |   2 A$bloxorz$1880     0694 GR
  2 A$bloxorz$1881     0696 GR  |   2 A$bloxorz$1882     0698 GR
  2 A$bloxorz$1892     069A GR  |   2 A$bloxorz$1893     069D GR
  2 A$bloxorz$1902     069F GR  |   2 A$bloxorz$1903     06A1 GR
  2 A$bloxorz$1904     06A3 GR  |   2 A$bloxorz$1905     06A4 GR
  2 A$bloxorz$1906     06A6 GR  |   2 A$bloxorz$1907     06A8 GR
  2 A$bloxorz$1908     06AB GR  |   2 A$bloxorz$1909     06AD GR
  2 A$bloxorz$1910     06AE GR  |   2 A$bloxorz$1911     06B0 GR
  2 A$bloxorz$1912     06B3 GR  |   2 A$bloxorz$1913     06B5 GR
  2 A$bloxorz$1914     06B8 GR  |   2 A$bloxorz$1915     06BB GR
  2 A$bloxorz$1927     06BF GR  |   2 A$bloxorz$1928     06C1 GR
  2 A$bloxorz$1929     06C2 GR  |   2 A$bloxorz$1930     06C4 GR
  2 A$bloxorz$1931     06C6 GR  |   2 A$bloxorz$1932     06C8 GR
  2 A$bloxorz$1933     06C9 GR  |   2 A$bloxorz$1934     06CA GR
  2 A$bloxorz$1935     06CB GR  |   2 A$bloxorz$1936     06CD GR
  2 A$bloxorz$1937     06D0 GR  |   2 A$bloxorz$1938     06D2 GR
  2 A$bloxorz$1950     06D6 GR  |   2 A$bloxorz$1951     06D9 GR
  2 A$bloxorz$1963     06DD GR  |   2 A$bloxorz$1964     06DF GR
  2 A$bloxorz$1965     06E0 GR  |   2 A$bloxorz$1966     06E1 GR
  2 A$bloxorz$1967     06E2 GR  |   2 A$bloxorz$1968     06E4 GR
  2 A$bloxorz$1969     06E6 GR  |   2 A$bloxorz$1970     06E8 GR
  2 A$bloxorz$1976     06EC GR  |   2 A$bloxorz$1977     06EE GR
  2 A$bloxorz$1978     06EF GR  |   2 A$bloxorz$198      00A7 GR
  2 A$bloxorz$199      00A9 GR  |   2 A$bloxorz$1990     06F1 GR
  2 A$bloxorz$1991     06F2 GR  |   2 A$bloxorz$1992     06F4 GR
  2 A$bloxorz$1993     06F7 GR  |   2 A$bloxorz$1994     06F9 GR
  2 A$bloxorz$1995     06FC GR  |   2 A$bloxorz$1996     06FF GR
  2 A$bloxorz$1997     0702 GR  |   2 A$bloxorz$1998     0706 GR
  2 A$bloxorz$1999     0709 GR  |   2 A$bloxorz$200      00AB GR
  2 A$bloxorz$2000     070B GR  |   2 A$bloxorz$201      00AC GR
  2 A$bloxorz$2012     070E GR  |   2 A$bloxorz$2013     0711 GR
  2 A$bloxorz$2014     0713 GR  |   2 A$bloxorz$2015     0716 GR
  2 A$bloxorz$2016     0718 GR  |   2 A$bloxorz$2017     071B GR
  2 A$bloxorz$202      00AE GR  |   2 A$bloxorz$2029     071F GR
  2 A$bloxorz$203      00B0 GR  |   2 A$bloxorz$2030     0722 GR
  2 A$bloxorz$2031     0724 GR  |   2 A$bloxorz$204      00B2 GR
  2 A$bloxorz$2043     0728 GR  |   2 A$bloxorz$2044     072A GR
  2 A$bloxorz$2045     072C GR  |   2 A$bloxorz$2046     072E GR
  2 A$bloxorz$205      00B4 GR  |   2 A$bloxorz$2052     0732 GR
  2 A$bloxorz$2053     0734 GR  |   2 A$bloxorz$2054     0735 GR
  2 A$bloxorz$206      00B6 GR  |   2 A$bloxorz$2060     0738 GR
  2 A$bloxorz$2061     073A GR  |   2 A$bloxorz$2067     073D GR
  2 A$bloxorz$2068     073F GR  |   2 A$bloxorz$2069     0742 GR
  2 A$bloxorz$207      00B7 GR  |   2 A$bloxorz$2070     0744 GR
  2 A$bloxorz$2072     0747 GR  |   2 A$bloxorz$2073     0749 GR
  2 A$bloxorz$2074     074B GR  |   2 A$bloxorz$2075     074D GR
  2 A$bloxorz$2076     0750 GR  |   2 A$bloxorz$2077     0753 GR
  2 A$bloxorz$2078     0756 GR  |   2 A$bloxorz$2079     0759 GR
  2 A$bloxorz$208      00B9 GR  |   2 A$bloxorz$2080     075B GR
  2 A$bloxorz$2081     075D GR  |   2 A$bloxorz$2082     0761 GR
  2 A$bloxorz$2083     0764 GR  |   2 A$bloxorz$2086     0766 GR
  2 A$bloxorz$2087     0768 GR  |   2 A$bloxorz$209      00BB GR
  2 A$bloxorz$2093     076A GR  |   2 A$bloxorz$210      00BD GR
  2 A$bloxorz$2102     076D GR  |   2 A$bloxorz$2109     0770 GR
  2 A$bloxorz$211      00BF GR  |   2 A$bloxorz$2112     0772 GR
  2 A$bloxorz$2113     0774 GR  |   2 A$bloxorz$212      00C1 GR
  2 A$bloxorz$2123     0777 GR  |   2 A$bloxorz$2124     0779 GR
  2 A$bloxorz$2127     077B GR  |   2 A$bloxorz$2128     077D GR
  2 A$bloxorz$2129     077F GR  |   2 A$bloxorz$213      00C3 GR
  2 A$bloxorz$2136     0782 GR  |   2 A$bloxorz$2137     0785 GR
  2 A$bloxorz$214      00C5 GR  |   2 A$bloxorz$2146     0787 GR
  2 A$bloxorz$2147     0788 GR  |   2 A$bloxorz$2148     078A GR
  2 A$bloxorz$2149     078C GR  |   2 A$bloxorz$215      00C7 GR
  2 A$bloxorz$2150     078F GR  |   2 A$bloxorz$2151     0790 GR
  2 A$bloxorz$2152     0791 GR  |   2 A$bloxorz$2153     0792 GR
  2 A$bloxorz$2154     0794 GR  |   2 A$bloxorz$2155     0796 GR
  2 A$bloxorz$2164     0798 GR  |   2 A$bloxorz$2165     079A GR
  2 A$bloxorz$2166     079C GR  |   2 A$bloxorz$2167     079E GR
  2 A$bloxorz$2168     079F GR  |   2 A$bloxorz$2169     07A1 GR
  2 A$bloxorz$2170     07A4 GR  |   2 A$bloxorz$2171     07A6 GR
  2 A$bloxorz$2172     07A7 GR  |   2 A$bloxorz$2173     07A9 GR
  2 A$bloxorz$2174     07AB GR  |   2 A$bloxorz$2175     07AD GR
  2 A$bloxorz$2176     07AF GR  |   2 A$bloxorz$2177     07B1 GR
  2 A$bloxorz$2183     07B3 GR  |   2 A$bloxorz$2184     07B5 GR
  2 A$bloxorz$2185     07B7 GR  |   2 A$bloxorz$2186     07B9 GR
  2 A$bloxorz$2189     07BB GR  |   2 A$bloxorz$2190     07BD GR
  2 A$bloxorz$2191     07BF GR  |   2 A$bloxorz$2198     07C2 GR
  2 A$bloxorz$2199     07C5 GR  |   2 A$bloxorz$2200     07C6 GR
  2 A$bloxorz$2201     07C8 GR  |   2 A$bloxorz$2202     07C9 GR
  2 A$bloxorz$2203     07CA GR  |   2 A$bloxorz$2204     07CD GR
  2 A$bloxorz$2205     07CF GR  |   2 A$bloxorz$2208     07D1 GR
  2 A$bloxorz$2218     07D4 GR  |   2 A$bloxorz$2219     07D7 GR
  2 A$bloxorz$2225     07D9 GR  |   2 A$bloxorz$2226     07DC GR
  2 A$bloxorz$2227     07DF GR  |   2 A$bloxorz$2228     07E1 GR
  2 A$bloxorz$2235     07E5 GR  |   2 A$bloxorz$2236     07E8 GR
  2 A$bloxorz$2242     07EC GR  |   2 A$bloxorz$2243     07EF GR
  2 A$bloxorz$2244     07F1 GR  |   2 A$bloxorz$2245     07F2 GR
  2 A$bloxorz$2246     07F4 GR  |   2 A$bloxorz$2247     07F7 GR
  2 A$bloxorz$2248     07F8 GR  |   2 A$bloxorz$2249     07FA GR
  2 A$bloxorz$2250     07FC GR  |   2 A$bloxorz$2251     07FE GR
  2 A$bloxorz$2257     0800 GR  |   2 A$bloxorz$2258     0802 GR
  2 A$bloxorz$2259     0805 GR  |   2 A$bloxorz$2260     0807 GR
  2 A$bloxorz$2266     0809 GR  |   2 A$bloxorz$2267     080B GR
  2 A$bloxorz$2268     080F GR  |   2 A$bloxorz$2269     0811 GR
  2 A$bloxorz$227      00CB GR  |   2 A$bloxorz$2270     0815 GR
  2 A$bloxorz$2271     0817 GR  |   2 A$bloxorz$2272     0818 GR
  2 A$bloxorz$2273     081B GR  |   2 A$bloxorz$2274     081D GR
  2 A$bloxorz$2275     081E GR  |   2 A$bloxorz$2276     081F GR
  2 A$bloxorz$2277     0820 GR  |   2 A$bloxorz$2278     0822 GR
  2 A$bloxorz$228      00CD GR  |   2 A$bloxorz$2285     0824 GR
  2 A$bloxorz$229      00CE GR  |   2 A$bloxorz$2291     0826 GR
  2 A$bloxorz$2292     0828 GR  |   2 A$bloxorz$2293     082C GR
  2 A$bloxorz$2294     082E GR  |   2 A$bloxorz$2295     0832 GR
  2 A$bloxorz$2296     0834 GR  |   2 A$bloxorz$2297     0835 GR
  2 A$bloxorz$2298     0838 GR  |   2 A$bloxorz$2299     083A GR
  2 A$bloxorz$230      00D0 GR  |   2 A$bloxorz$2300     083B GR
  2 A$bloxorz$2301     083C GR  |   2 A$bloxorz$2302     083D GR
  2 A$bloxorz$2303     083F GR  |   2 A$bloxorz$231      00D2 GR
  2 A$bloxorz$2310     0841 GR  |   2 A$bloxorz$2316     0843 GR
  2 A$bloxorz$2317     0845 GR  |   2 A$bloxorz$2318     0847 GR
  2 A$bloxorz$2319     0849 GR  |   2 A$bloxorz$232      00D4 GR
  2 A$bloxorz$2320     084B GR  |   2 A$bloxorz$2321     084D GR
  2 A$bloxorz$2322     084E GR  |   2 A$bloxorz$2323     0851 GR
  2 A$bloxorz$2324     0853 GR  |   2 A$bloxorz$2325     0854 GR
  2 A$bloxorz$2326     0855 GR  |   2 A$bloxorz$2327     0856 GR
  2 A$bloxorz$2328     0858 GR  |   2 A$bloxorz$233      00D6 GR
  2 A$bloxorz$2334     085A GR  |   2 A$bloxorz$2335     085D GR
  2 A$bloxorz$2336     085F GR  |   2 A$bloxorz$2338     0861 GR
  2 A$bloxorz$2339     0863 GR  |   2 A$bloxorz$234      00D8 GR
  2 A$bloxorz$2340     0867 GR  |   2 A$bloxorz$2341     0869 GR
  2 A$bloxorz$2348     086D GR  |   2 A$bloxorz$2349     0870 GR
  2 A$bloxorz$235      00DA GR  |   2 A$bloxorz$2350     0872 GR
  2 A$bloxorz$2351     0875 GR  |   2 A$bloxorz$2352     0878 GR
  2 A$bloxorz$2359     087C GR  |   2 A$bloxorz$2360     087F GR
  2 A$bloxorz$2361     0881 GR  |   2 A$bloxorz$2367     0883 GR
  2 A$bloxorz$2368     0885 GR  |   2 A$bloxorz$2370     0888 GR
  2 A$bloxorz$2371     088A GR  |   2 A$bloxorz$2373     088C GR
  2 A$bloxorz$2374     088E GR  |   2 A$bloxorz$2375     0890 GR
  2 A$bloxorz$2377     0893 GR  |   2 A$bloxorz$2378     0895 GR
  2 A$bloxorz$2384     0897 GR  |   2 A$bloxorz$2385     089A GR
  2 A$bloxorz$2386     089C GR  |   2 A$bloxorz$2393     089E GR
  2 A$bloxorz$2394     08A0 GR  |   2 A$bloxorz$2395     08A2 GR
  2 A$bloxorz$2396     08A4 GR  |   2 A$bloxorz$2403     08A6 GR
  2 A$bloxorz$241      00DE GR  |   2 A$bloxorz$2410     08A9 GR
  2 A$bloxorz$2412     08AC GR  |   2 A$bloxorz$2413     08AE GR
  2 A$bloxorz$2414     08B0 GR  |   2 A$bloxorz$242      00E0 GR
  2 A$bloxorz$2421     08B3 GR  |   2 A$bloxorz$2422     08B5 GR
  2 A$bloxorz$2429     08B9 GR  |   2 A$bloxorz$243      00E1 GR
  2 A$bloxorz$2436     08BC GR  |   2 A$bloxorz$2437     08BF GR
  2 A$bloxorz$244      00E4 GR  |   2 A$bloxorz$2443     08C2 GR
  2 A$bloxorz$2444     08C5 GR  |   2 A$bloxorz$245      00E6 GR
  2 A$bloxorz$2450     08C8 GR  |   2 A$bloxorz$2456     08CB GR
  2 A$bloxorz$2457     08CE GR  |   2 A$bloxorz$2463     08D1 GR
  2 A$bloxorz$2464     08D4 GR  |   2 A$bloxorz$2471     08D7 GR
  2 A$bloxorz$2472     08D9 GR  |   2 A$bloxorz$2473     08DB GR
  2 A$bloxorz$2474     08DD GR  |   2 A$bloxorz$248      00E8 GR
  2 A$bloxorz$2481     08DF GR  |   2 A$bloxorz$2488     08E2 GR
  2 A$bloxorz$249      00EA GR  |   2 A$bloxorz$2490     08E5 GR
  2 A$bloxorz$2491     08E8 GR  |   2 A$bloxorz$2492     08EB GR
  2 A$bloxorz$2498     08EF GR  |   2 A$bloxorz$250      00EC GR
  2 A$bloxorz$2504     08F2 GR  |   2 A$bloxorz$2505     08F4 GR
  2 A$bloxorz$2514     08F7 GR  |   2 A$bloxorz$2515     08F9 GR
  2 A$bloxorz$2521     08FC GR  |   2 A$bloxorz$2522     08FF GR
  2 A$bloxorz$2523     0902 GR  |   2 A$bloxorz$2530     0905 GR
  2 A$bloxorz$2531     0908 GR  |   2 A$bloxorz$2534     090B GR
  2 A$bloxorz$2535     090D GR  |   2 A$bloxorz$2541     090F GR
  2 A$bloxorz$2547     0912 GR  |   2 A$bloxorz$2548     0915 GR
  2 A$bloxorz$2554     0917 GR  |   2 A$bloxorz$256      00EE GR
  2 A$bloxorz$2561     091A GR  |   2 A$bloxorz$2564     091C GR
  2 A$bloxorz$2565     091E GR  |   2 A$bloxorz$257      00F1 GR
  2 A$bloxorz$2575     0921 GR  |   2 A$bloxorz$2576     0923 GR
  2 A$bloxorz$2577     0925 GR  |   2 A$bloxorz$2580     0927 GR
  2 A$bloxorz$2581     0929 GR  |   2 A$bloxorz$2582     092B GR
  2 A$bloxorz$2589     092E GR  |   2 A$bloxorz$2590     0931 GR
  2 A$bloxorz$2599     0933 GR  |   2 A$bloxorz$2600     0934 GR
  2 A$bloxorz$2601     0936 GR  |   2 A$bloxorz$2602     0938 GR
  2 A$bloxorz$2603     093B GR  |   2 A$bloxorz$2604     093C GR
  2 A$bloxorz$2605     093D GR  |   2 A$bloxorz$2606     093E GR
  2 A$bloxorz$2607     0940 GR  |   2 A$bloxorz$2608     0942 GR
  2 A$bloxorz$2617     0944 GR  |   2 A$bloxorz$2618     0946 GR
  2 A$bloxorz$2619     0948 GR  |   2 A$bloxorz$2620     094A GR
  2 A$bloxorz$2621     094B GR  |   2 A$bloxorz$2622     094D GR
  2 A$bloxorz$2623     0950 GR  |   2 A$bloxorz$2624     0952 GR
  2 A$bloxorz$2625     0953 GR  |   2 A$bloxorz$2626     0955 GR
  2 A$bloxorz$2627     0957 GR  |   2 A$bloxorz$2628     0959 GR
  2 A$bloxorz$2629     095B GR  |   2 A$bloxorz$2630     095D GR
  2 A$bloxorz$2636     095F GR  |   2 A$bloxorz$2637     0961 GR
  2 A$bloxorz$2638     0963 GR  |   2 A$bloxorz$2639     0965 GR
  2 A$bloxorz$2642     0967 GR  |   2 A$bloxorz$2643     0969 GR
  2 A$bloxorz$2644     096B GR  |   2 A$bloxorz$2651     096E GR
  2 A$bloxorz$2652     0971 GR  |   2 A$bloxorz$2653     0972 GR
  2 A$bloxorz$2654     0974 GR  |   2 A$bloxorz$2655     0975 GR
  2 A$bloxorz$2656     0976 GR  |   2 A$bloxorz$2657     0979 GR
  2 A$bloxorz$2658     097B GR  |   2 A$bloxorz$266      00F3 GR
  2 A$bloxorz$2661     097D GR  |   2 A$bloxorz$2668     0980 GR
  2 A$bloxorz$2669     0983 GR  |   2 A$bloxorz$267      00F5 GR
  2 A$bloxorz$2675     0986 GR  |   2 A$bloxorz$2676     0987 GR
  2 A$bloxorz$268      00F7 GR  |   2 A$bloxorz$2682     0989 GR
  2 A$bloxorz$2683     098B GR  |   2 A$bloxorz$2685     098E GR
  2 A$bloxorz$2686     0990 GR  |   2 A$bloxorz$2689     0992 GR
  2 A$bloxorz$269      00F9 GR  |   2 A$bloxorz$2690     0994 GR
  2 A$bloxorz$2696     0996 GR  |   2 A$bloxorz$270      00FB GR
  2 A$bloxorz$2705     0999 GR  |   2 A$bloxorz$271      00FC GR
  2 A$bloxorz$2712     099C GR  |   2 A$bloxorz$2715     099E GR
  2 A$bloxorz$2716     09A0 GR  |   2 A$bloxorz$272      00FE GR
  2 A$bloxorz$2726     09A3 GR  |   2 A$bloxorz$2727     09A5 GR
  2 A$bloxorz$273      0100 GR  |   2 A$bloxorz$2730     09A7 GR
  2 A$bloxorz$2731     09A9 GR  |   2 A$bloxorz$2732     09AB GR
  2 A$bloxorz$2739     09AE GR  |   2 A$bloxorz$274      0102 GR
  2 A$bloxorz$2740     09B1 GR  |   2 A$bloxorz$2749     09B3 GR
  2 A$bloxorz$275      0104 GR  |   2 A$bloxorz$2750     09B4 GR
  2 A$bloxorz$2751     09B6 GR  |   2 A$bloxorz$2752     09B8 GR
  2 A$bloxorz$2753     09BB GR  |   2 A$bloxorz$2754     09BC GR
  2 A$bloxorz$2755     09BD GR  |   2 A$bloxorz$2756     09BE GR
  2 A$bloxorz$2757     09C0 GR  |   2 A$bloxorz$2758     09C2 GR
  2 A$bloxorz$276      0106 GR  |   2 A$bloxorz$2767     09C4 GR
  2 A$bloxorz$2768     09C6 GR  |   2 A$bloxorz$2769     09C8 GR
  2 A$bloxorz$277      0108 GR  |   2 A$bloxorz$2770     09CA GR
  2 A$bloxorz$2771     09CB GR  |   2 A$bloxorz$2772     09CD GR
  2 A$bloxorz$2773     09D0 GR  |   2 A$bloxorz$2774     09D2 GR
  2 A$bloxorz$2775     09D3 GR  |   2 A$bloxorz$2776     09D5 GR
  2 A$bloxorz$2777     09D7 GR  |   2 A$bloxorz$2778     09D9 GR
  2 A$bloxorz$2779     09DB GR  |   2 A$bloxorz$278      010B GR
  2 A$bloxorz$2780     09DD GR  |   2 A$bloxorz$2786     09DF GR
  2 A$bloxorz$2787     09E1 GR  |   2 A$bloxorz$2788     09E3 GR
  2 A$bloxorz$2789     09E5 GR  |   2 A$bloxorz$279      010D GR
  2 A$bloxorz$2792     09E7 GR  |   2 A$bloxorz$2793     09E9 GR
  2 A$bloxorz$2794     09EB GR  |   2 A$bloxorz$280      010E GR
  2 A$bloxorz$2801     09EE GR  |   2 A$bloxorz$2802     09F1 GR
  2 A$bloxorz$2803     09F2 GR  |   2 A$bloxorz$2804     09F4 GR
  2 A$bloxorz$2805     09F5 GR  |   2 A$bloxorz$2806     09F6 GR
  2 A$bloxorz$2807     09F9 GR  |   2 A$bloxorz$2808     09FB GR
  2 A$bloxorz$281      0110 GR  |   2 A$bloxorz$2811     09FD GR
  2 A$bloxorz$2818     0A00 GR  |   2 A$bloxorz$282      0112 GR
  2 A$bloxorz$2825     0A03 GR  |   2 A$bloxorz$2826     0A06 GR
  2 A$bloxorz$2827     0A08 GR  |   2 A$bloxorz$2828     0A0C GR
  2 A$bloxorz$2829     0A0F GR  |   2 A$bloxorz$283      0114 GR
  2 A$bloxorz$2830     0A11 GR  |   2 A$bloxorz$2831     0A13 GR
  2 A$bloxorz$2832     0A16 GR  |   2 A$bloxorz$2833     0A18 GR
  2 A$bloxorz$2834     0A1C GR  |   2 A$bloxorz$2835     0A1F GR
  2 A$bloxorz$2836     0A21 GR  |   2 A$bloxorz$284      0116 GR
  2 A$bloxorz$2843     0A25 GR  |   2 A$bloxorz$2844     0A28 GR
  2 A$bloxorz$2845     0A2A GR  |   2 A$bloxorz$285      0117 GR
  2 A$bloxorz$2854     0A2C GR  |   2 A$bloxorz$2855     0A2E GR
  2 A$bloxorz$286      0119 GR  |   2 A$bloxorz$2861     0A31 GR
  2 A$bloxorz$2862     0A34 GR  |   2 A$bloxorz$2864     0A37 GR
  2 A$bloxorz$2865     0A39 GR  |   2 A$bloxorz$287      011B GR
  2 A$bloxorz$2872     0A3B GR  |   2 A$bloxorz$2873     0A3D GR
  2 A$bloxorz$2879     0A40 GR  |   2 A$bloxorz$288      011D GR
  2 A$bloxorz$2880     0A42 GR  |   2 A$bloxorz$2881     0A45 GR
  2 A$bloxorz$2888     0A47 GR  |   2 A$bloxorz$2889     0A48 GR
  2 A$bloxorz$2895     0A4B GR  |   2 A$bloxorz$2896     0A4D GR
  2 A$bloxorz$2897     0A50 GR  |   2 A$bloxorz$2904     0A53 GR
  2 A$bloxorz$2905     0A55 GR  |   2 A$bloxorz$2911     0A58 GR
  2 A$bloxorz$2912     0A5A GR  |   2 A$bloxorz$2913     0A5D GR
  2 A$bloxorz$2920     0A60 GR  |   2 A$bloxorz$2921     0A62 GR
  2 A$bloxorz$2927     0A65 GR  |   2 A$bloxorz$2928     0A67 GR
  2 A$bloxorz$2929     0A6A GR  |   2 A$bloxorz$2932     0A6D GR
  2 A$bloxorz$2933     0A6F GR  |   2 A$bloxorz$2939     0A71 GR
  2 A$bloxorz$2940     0A74 GR  |   2 A$bloxorz$2941     0A78 GR
  2 A$bloxorz$2942     0A7A GR  |   2 A$bloxorz$2948     0A7E GR
  2 A$bloxorz$2949     0A81 GR  |   2 A$bloxorz$2956     0A84 GR
  2 A$bloxorz$2962     0A87 GR  |   2 A$bloxorz$2980     0A8A GR
  2 A$bloxorz$2981     0A8E GR  |   2 A$bloxorz$2982     0A90 GR
  2 A$bloxorz$2995     0A92 GR  |   2 A$bloxorz$2996     0A94 GR
  2 A$bloxorz$2997     0A95 GR  |   2 A$bloxorz$2998     0A97 GR
  2 A$bloxorz$2999     0A99 GR  |   2 A$bloxorz$300      0121 GR
  2 A$bloxorz$3000     0A9B GR  |   2 A$bloxorz$3001     0A9D GR
  2 A$bloxorz$3002     0A9F GR  |   2 A$bloxorz$3003     0AA0 GR
  2 A$bloxorz$3004     0AA2 GR  |   2 A$bloxorz$3005     0AA4 GR
  2 A$bloxorz$3006     0AA6 GR  |   2 A$bloxorz$3007     0AA8 GR
  2 A$bloxorz$3008     0AAA GR  |   2 A$bloxorz$3009     0AAC GR
  2 A$bloxorz$301      0123 GR  |   2 A$bloxorz$3010     0AAE GR
  2 A$bloxorz$3011     0AB0 GR  |   2 A$bloxorz$3013     0AB3 GR
  2 A$bloxorz$3014     0AB5 GR  |   2 A$bloxorz$3015     0AB9 GR
  2 A$bloxorz$3016     0ABB GR  |   2 A$bloxorz$302      0124 GR
  2 A$bloxorz$3022     0ABF GR  |   2 A$bloxorz$3023     0AC1 GR
  2 A$bloxorz$3024     0AC3 GR  |   2 A$bloxorz$3025     0AC7 GR
  2 A$bloxorz$3026     0AC9 GR  |   2 A$bloxorz$3027     0ACD GR
  2 A$bloxorz$3028     0ACF GR  |   2 A$bloxorz$303      0126 GR
  2 A$bloxorz$3034     0AD3 GR  |   2 A$bloxorz$3035     0AD5 GR
  2 A$bloxorz$3036     0AD7 GR  |   2 A$bloxorz$304      0128 GR
  2 A$bloxorz$3042     0ADB GR  |   2 A$bloxorz$3043     0ADD GR
  2 A$bloxorz$3044     0ADE GR  |   2 A$bloxorz$305      012A GR
  2 A$bloxorz$3050     0AE0 GR  |   2 A$bloxorz$3051     0AE3 GR
  2 A$bloxorz$306      012D GR  |   2 A$bloxorz$3060     0AE5 GR
  2 A$bloxorz$3061     0AE6 GR  |   2 A$bloxorz$3062     0AE8 GR
  2 A$bloxorz$3063     0AEA GR  |   2 A$bloxorz$3064     0AEC GR
  2 A$bloxorz$3066     0AED GR  |   2 A$bloxorz$3067     0AEF GR
  2 A$bloxorz$307      012E GR  |   2 A$bloxorz$3079     0AF3 GR
  2 A$bloxorz$308      012F GR  |   2 A$bloxorz$3080     0AF5 GR
  2 A$bloxorz$3081     0AF7 GR  |   2 A$bloxorz$3082     0AF9 GR
  2 A$bloxorz$3083     0AFB GR  |   2 A$bloxorz$3084     0AFD GR
  2 A$bloxorz$309      0130 GR  |   2 A$bloxorz$3096     0B01 GR
  2 A$bloxorz$3097     0B03 GR  |   2 A$bloxorz$3098     0B05 GR
  2 A$bloxorz$3099     0B06 GR  |   2 A$bloxorz$310      0132 GR
  2 A$bloxorz$3101     0B08 GR  |   2 A$bloxorz$3102     0B0A GR
  2 A$bloxorz$311      0134 GR  |   2 A$bloxorz$3114     0B0E GR
  2 A$bloxorz$3115     0B10 GR  |   2 A$bloxorz$3116     0B12 GR
  2 A$bloxorz$3117     0B14 GR  |   2 A$bloxorz$3118     0B16 GR
  2 A$bloxorz$3119     0B18 GR  |   2 A$bloxorz$3125     0B1C GR
  2 A$bloxorz$3126     0B1E GR  |   2 A$bloxorz$3127     0B1F GR
  2 A$bloxorz$3133     0B22 GR  |   2 A$bloxorz$3134     0B24 GR
  2 A$bloxorz$3136     0B26 GR  |   2 A$bloxorz$3137     0B28 GR
  2 A$bloxorz$3138     0B2A GR  |   2 A$bloxorz$3139     0B2C GR
  2 A$bloxorz$3140     0B2E GR  |   2 A$bloxorz$3150     0B32 GR
  2 A$bloxorz$3151     0B34 GR  |   2 A$bloxorz$3157     0B36 GR
  2 A$bloxorz$3158     0B38 GR  |   2 A$bloxorz$3167     0B3A GR
  2 A$bloxorz$3168     0B3C GR  |   2 A$bloxorz$3169     0B3E GR
  2 A$bloxorz$317      0138 GR  |   2 A$bloxorz$3176     0B42 GR
  2 A$bloxorz$3177     0B44 GR  |   2 A$bloxorz$3178     0B46 GR
  2 A$bloxorz$318      013B GR  |   2 A$bloxorz$3185     0B4A GR
  2 A$bloxorz$3186     0B4C GR  |   2 A$bloxorz$3187     0B4E GR
  2 A$bloxorz$3188     0B50 GR  |   2 A$bloxorz$3189     0B52 GR
  2 A$bloxorz$319      013C GR  |   2 A$bloxorz$3190     0B54 GR
  2 A$bloxorz$3191     0B56 GR  |   2 A$bloxorz$3193     0B5A GR
  2 A$bloxorz$3194     0B5C GR  |   2 A$bloxorz$3195     0B5E GR
  2 A$bloxorz$3196     0B60 GR  |   2 A$bloxorz$3197     0B62 GR
  2 A$bloxorz$320      013E GR  |   2 A$bloxorz$3203     0B66 GR
  2 A$bloxorz$3204     0B69 GR  |   2 A$bloxorz$321      0140 GR
  2 A$bloxorz$3210     0B6C GR  |   2 A$bloxorz$3211     0B6F GR
  2 A$bloxorz$3217     0B72 GR  |   2 A$bloxorz$3218     0B75 GR
  2 A$bloxorz$322      0141 GR  |   2 A$bloxorz$3224     0B78 GR
  2 A$bloxorz$3230     0B7B GR  |   2 A$bloxorz$3236     0B7E GR
  2 A$bloxorz$3242     0B81 GR  |   2 A$bloxorz$3243     0B83 GR
  2 A$bloxorz$3249     0B86 GR  |   2 A$bloxorz$3258     0B89 GR
  2 A$bloxorz$3259     0B8B GR  |   2 A$bloxorz$3265     0B8E GR
  2 A$bloxorz$3266     0B91 GR  |   2 A$bloxorz$3267     0B94 GR
  2 A$bloxorz$3268     0B96 GR  |   2 A$bloxorz$3270     0B98 GR
  2 A$bloxorz$3271     0B9A GR  |   2 A$bloxorz$3272     0B9C GR
  2 A$bloxorz$3279     0B9F GR  |   2 A$bloxorz$3280     0BA2 GR
  2 A$bloxorz$3281     0BA5 GR  |   2 A$bloxorz$3288     0BA8 GR
  2 A$bloxorz$3289     0BAB GR  |   2 A$bloxorz$3290     0BAE GR
  2 A$bloxorz$3293     0BB1 GR  |   2 A$bloxorz$3294     0BB3 GR
  2 A$bloxorz$3300     0BB5 GR  |   2 A$bloxorz$3306     0BB8 GR
  2 A$bloxorz$3307     0BBB GR  |   2 A$bloxorz$331      0143 GR
  2 A$bloxorz$3313     0BBD GR  |   2 A$bloxorz$332      0145 GR
  2 A$bloxorz$3320     0BC0 GR  |   2 A$bloxorz$3323     0BC2 GR
  2 A$bloxorz$3324     0BC4 GR  |   2 A$bloxorz$333      0147 GR
  2 A$bloxorz$3334     0BC7 GR  |   2 A$bloxorz$3335     0BC9 GR
  2 A$bloxorz$3336     0BCB GR  |   2 A$bloxorz$3339     0BCD GR
  2 A$bloxorz$334      0149 GR  |   2 A$bloxorz$3340     0BCF GR
  2 A$bloxorz$3341     0BD1 GR  |   2 A$bloxorz$3348     0BD4 GR
  2 A$bloxorz$3349     0BD7 GR  |   2 A$bloxorz$335      014A GR
  2 A$bloxorz$3358     0BD9 GR  |   2 A$bloxorz$3359     0BDA GR
  2 A$bloxorz$336      014C GR  |   2 A$bloxorz$3360     0BDC GR
  2 A$bloxorz$3361     0BDE GR  |   2 A$bloxorz$3362     0BE1 GR
  2 A$bloxorz$3363     0BE2 GR  |   2 A$bloxorz$3364     0BE3 GR
  2 A$bloxorz$3365     0BE4 GR  |   2 A$bloxorz$3366     0BE6 GR
  2 A$bloxorz$3367     0BE8 GR  |   2 A$bloxorz$337      014E GR
  2 A$bloxorz$3376     0BEA GR  |   2 A$bloxorz$3377     0BEC GR
  2 A$bloxorz$3378     0BEE GR  |   2 A$bloxorz$3379     0BF0 GR
  2 A$bloxorz$338      0150 GR  |   2 A$bloxorz$3380     0BF1 GR
  2 A$bloxorz$3381     0BF3 GR  |   2 A$bloxorz$3382     0BF6 GR
  2 A$bloxorz$3383     0BF8 GR  |   2 A$bloxorz$3384     0BF9 GR
  2 A$bloxorz$3385     0BFB GR  |   2 A$bloxorz$3386     0BFD GR
  2 A$bloxorz$3387     0BFF GR  |   2 A$bloxorz$3388     0C01 GR
  2 A$bloxorz$3389     0C03 GR  |   2 A$bloxorz$339      0152 GR
  2 A$bloxorz$3395     0C05 GR  |   2 A$bloxorz$3396     0C07 GR
  2 A$bloxorz$3397     0C09 GR  |   2 A$bloxorz$3398     0C0B GR
  2 A$bloxorz$340      0154 GR  |   2 A$bloxorz$3401     0C0D GR
  2 A$bloxorz$3402     0C0F GR  |   2 A$bloxorz$3403     0C11 GR
  2 A$bloxorz$341      0155 GR  |   2 A$bloxorz$3410     0C14 GR
  2 A$bloxorz$3411     0C17 GR  |   2 A$bloxorz$3412     0C18 GR
  2 A$bloxorz$3413     0C1A GR  |   2 A$bloxorz$3414     0C1B GR
  2 A$bloxorz$3415     0C1C GR  |   2 A$bloxorz$3416     0C1F GR
  2 A$bloxorz$3417     0C21 GR  |   2 A$bloxorz$342      0157 GR
  2 A$bloxorz$3420     0C23 GR  |   2 A$bloxorz$3427     0C26 GR
  2 A$bloxorz$3428     0C29 GR  |   2 A$bloxorz$343      0159 GR
  2 A$bloxorz$3434     0C2C GR  |   2 A$bloxorz$3435     0C2E GR
  2 A$bloxorz$3436     0C30 GR  |   2 A$bloxorz$3437     0C32 GR
  2 A$bloxorz$344      015B GR  |   2 A$bloxorz$3444     0C34 GR
  2 A$bloxorz$3445     0C37 GR  |   2 A$bloxorz$345      015D GR
  2 A$bloxorz$3451     0C3A GR  |   2 A$bloxorz$3452     0C3C GR
  2 A$bloxorz$3453     0C3E GR  |   2 A$bloxorz$3460     0C41 GR
  2 A$bloxorz$3461     0C44 GR  |   2 A$bloxorz$3462     0C46 GR
  2 A$bloxorz$3465     0C48 GR  |   2 A$bloxorz$3466     0C4A GR
  2 A$bloxorz$3472     0C4D GR  |   2 A$bloxorz$3473     0C4F GR
  2 A$bloxorz$3479     0C52 GR  |   2 A$bloxorz$3480     0C54 GR
  2 A$bloxorz$3486     0C57 GR  |   2 A$bloxorz$3492     0C5A GR
  2 A$bloxorz$3498     0C5D GR  |   2 A$bloxorz$3510     0C60 GR
  2 A$bloxorz$3517     0C63 GR  |   2 A$bloxorz$3518     0C66 GR
  2 A$bloxorz$3519     0C68 GR  |   2 A$bloxorz$3520     0C6C GR
  2 A$bloxorz$3521     0C6D GR  |   2 A$bloxorz$3522     0C6E GR
  2 A$bloxorz$3523     0C6F GR  |   2 A$bloxorz$3524     0C71 GR
  2 A$bloxorz$3540     0C7F GR  |   2 A$bloxorz$3546     0C82 GR
  2 A$bloxorz$3547     0C85 GR  |   2 A$bloxorz$3553     0C87 GR
  2 A$bloxorz$3560     0C8A GR  |   2 A$bloxorz$3563     0C8C GR
  2 A$bloxorz$3564     0C8E GR  |   2 A$bloxorz$357      0161 GR
  2 A$bloxorz$3574     0C91 GR  |   2 A$bloxorz$3575     0C93 GR
  2 A$bloxorz$3576     0C96 GR  |   2 A$bloxorz$3579     0C99 GR
  2 A$bloxorz$358      0163 GR  |   2 A$bloxorz$3580     0C9C GR
  2 A$bloxorz$3581     0C9F GR  |   2 A$bloxorz$3588     0CA2 GR
  2 A$bloxorz$3589     0CA5 GR  |   2 A$bloxorz$359      0164 GR
  2 A$bloxorz$3598     0CA7 GR  |   2 A$bloxorz$3599     0CA8 GR
  2 A$bloxorz$360      0166 GR  |   2 A$bloxorz$3600     0CAA GR
  2 A$bloxorz$3601     0CAC GR  |   2 A$bloxorz$3602     0CAF GR
  2 A$bloxorz$3603     0CB0 GR  |   2 A$bloxorz$3604     0CB1 GR
  2 A$bloxorz$3605     0CB2 GR  |   2 A$bloxorz$3606     0CB4 GR
  2 A$bloxorz$3607     0CB6 GR  |   2 A$bloxorz$361      0168 GR
  2 A$bloxorz$3616     0CB8 GR  |   2 A$bloxorz$3617     0CBA GR
  2 A$bloxorz$3618     0CBC GR  |   2 A$bloxorz$3619     0CBE GR
  2 A$bloxorz$362      016A GR  |   2 A$bloxorz$3620     0CBF GR
  2 A$bloxorz$3621     0CC1 GR  |   2 A$bloxorz$3622     0CC4 GR
  2 A$bloxorz$3623     0CC6 GR  |   2 A$bloxorz$3624     0CC7 GR
  2 A$bloxorz$3625     0CC9 GR  |   2 A$bloxorz$3626     0CCB GR
  2 A$bloxorz$3627     0CCD GR  |   2 A$bloxorz$3628     0CCF GR
  2 A$bloxorz$3629     0CD1 GR  |   2 A$bloxorz$363      016C GR
  2 A$bloxorz$3635     0CD3 GR  |   2 A$bloxorz$3636     0CD5 GR
  2 A$bloxorz$3637     0CD8 GR  |   2 A$bloxorz$3638     0CDA GR
  2 A$bloxorz$364      016D GR  |   2 A$bloxorz$3641     0CDD GR
  2 A$bloxorz$3642     0CE0 GR  |   2 A$bloxorz$3643     0CE3 GR
  2 A$bloxorz$365      016E GR  |   2 A$bloxorz$3650     0CE6 GR
  2 A$bloxorz$3651     0CE9 GR  |   2 A$bloxorz$3652     0CEA GR
  2 A$bloxorz$3653     0CEB GR  |   2 A$bloxorz$3654     0CEC GR
  2 A$bloxorz$3655     0CEF GR  |   2 A$bloxorz$3656     0CF1 GR
  2 A$bloxorz$3659     0CF3 GR  |   2 A$bloxorz$366      016F GR
  2 A$bloxorz$3666     0CF6 GR  |   2 A$bloxorz$3667     0CF9 GR
  2 A$bloxorz$367      0171 GR  |   2 A$bloxorz$3673     0CFC GR
  2 A$bloxorz$3674     0CFE GR  |   2 A$bloxorz$368      0173 GR
  2 A$bloxorz$3687     0D02 GR  |   2 A$bloxorz$369      0175 GR
  2 A$bloxorz$3694     0D05 GR  |   2 A$bloxorz$3695     0D08 GR
  2 A$bloxorz$3702     0D0B GR  |   2 A$bloxorz$3709     0D0E GR
  2 A$bloxorz$3713     0D11 GR  |   2 A$bloxorz$3723     0D14 GR
  2 A$bloxorz$3729     0D17 GR  |   2 A$bloxorz$3730     0D1A GR
  2 A$bloxorz$3731     0D1B GR  |   2 A$bloxorz$3732     0D1D GR
  2 A$bloxorz$3738     0D20 GR  |   2 A$bloxorz$3739     0D22 GR
  2 A$bloxorz$3746     0D26 GR  |   2 A$bloxorz$3747     0D29 GR
  2 A$bloxorz$3748     0D2B GR  |   2 A$bloxorz$375      0179 GR
  2 A$bloxorz$3755     0D2F GR  |   2 A$bloxorz$376      017B GR
  2 A$bloxorz$3762     0D32 GR  |   2 A$bloxorz$3768     0D35 GR
  2 A$bloxorz$377      017C GR  |   2 A$bloxorz$3778     0D38 GR
  2 A$bloxorz$3784     0D3B GR  |   2 A$bloxorz$3785     0D3E GR
  2 A$bloxorz$3791     0D40 GR  |   2 A$bloxorz$3798     0D43 GR
  2 A$bloxorz$3801     0D45 GR  |   2 A$bloxorz$3802     0D47 GR
  2 A$bloxorz$3812     0D4A GR  |   2 A$bloxorz$3813     0D4C GR
  2 A$bloxorz$3814     0D4F GR  |   2 A$bloxorz$3817     0D52 GR
  2 A$bloxorz$3818     0D55 GR  |   2 A$bloxorz$3819     0D58 GR
  2 A$bloxorz$3826     0D5B GR  |   2 A$bloxorz$3827     0D5E GR
  2 A$bloxorz$3836     0D60 GR  |   2 A$bloxorz$3837     0D61 GR
  2 A$bloxorz$3838     0D63 GR  |   2 A$bloxorz$3839     0D65 GR
  2 A$bloxorz$3840     0D68 GR  |   2 A$bloxorz$3841     0D69 GR
  2 A$bloxorz$3842     0D6A GR  |   2 A$bloxorz$3843     0D6B GR
  2 A$bloxorz$3844     0D6D GR  |   2 A$bloxorz$3845     0D6F GR
  2 A$bloxorz$3854     0D71 GR  |   2 A$bloxorz$3855     0D73 GR
  2 A$bloxorz$3856     0D75 GR  |   2 A$bloxorz$3857     0D77 GR
  2 A$bloxorz$3858     0D78 GR  |   2 A$bloxorz$3859     0D7A GR
  2 A$bloxorz$3860     0D7D GR  |   2 A$bloxorz$3861     0D7F GR
  2 A$bloxorz$3862     0D80 GR  |   2 A$bloxorz$3863     0D82 GR
  2 A$bloxorz$3864     0D84 GR  |   2 A$bloxorz$3865     0D86 GR
  2 A$bloxorz$3866     0D88 GR  |   2 A$bloxorz$3867     0D8A GR
  2 A$bloxorz$3873     0D8C GR  |   2 A$bloxorz$3874     0D8E GR
  2 A$bloxorz$3875     0D91 GR  |   2 A$bloxorz$3876     0D93 GR
  2 A$bloxorz$3879     0D96 GR  |   2 A$bloxorz$3880     0D99 GR
  2 A$bloxorz$3881     0D9C GR  |   2 A$bloxorz$3888     0D9F GR
  2 A$bloxorz$3889     0DA2 GR  |   2 A$bloxorz$389      017E GR
  2 A$bloxorz$3890     0DA3 GR  |   2 A$bloxorz$3891     0DA4 GR
  2 A$bloxorz$3892     0DA5 GR  |   2 A$bloxorz$3893     0DA8 GR
  2 A$bloxorz$3894     0DAA GR  |   2 A$bloxorz$3897     0DAC GR
  2 A$bloxorz$390      017F GR  |   2 A$bloxorz$3904     0DAF GR
  2 A$bloxorz$3905     0DB2 GR  |   2 A$bloxorz$391      0181 GR
  2 A$bloxorz$3911     0DB5 GR  |   2 A$bloxorz$3912     0DB6 GR
  2 A$bloxorz$3918     0DB8 GR  |   2 A$bloxorz$3919     0DBA GR
  2 A$bloxorz$392      0183 GR  |   2 A$bloxorz$3926     0DBD GR
  2 A$bloxorz$393      0185 GR  |   2 A$bloxorz$3933     0DC0 GR
  2 A$bloxorz$3939     0DC3 GR  |   2 A$bloxorz$3946     0DC6 GR
  2 A$bloxorz$3947     0DC9 GR  |   2 A$bloxorz$3953     0DCC GR
  2 A$bloxorz$3954     0DCE GR  |   2 A$bloxorz$3955     0DD0 GR
  2 A$bloxorz$3962     0DD3 GR  |   2 A$bloxorz$3963     0DD6 GR
  2 A$bloxorz$3970     0DD9 GR  |   2 A$bloxorz$3971     0DDA GR
  2 A$bloxorz$3972     0DDC GR  |   2 A$bloxorz$3973     0DDD GR
  2 A$bloxorz$3979     0DDF GR  |   2 A$bloxorz$3986     0DE2 GR
  2 A$bloxorz$3989     0DE4 GR  |   2 A$bloxorz$3990     0DE6 GR
  2 A$bloxorz$4000     0DE9 GR  |   2 A$bloxorz$4001     0DEB GR
  2 A$bloxorz$4002     0DEE GR  |   2 A$bloxorz$4005     0DF1 GR
  2 A$bloxorz$4006     0DF4 GR  |   2 A$bloxorz$4007     0DF7 GR
  2 A$bloxorz$4014     0DFA GR  |   2 A$bloxorz$4015     0DFD GR
  2 A$bloxorz$4024     0DFF GR  |   2 A$bloxorz$4025     0E00 GR
  2 A$bloxorz$4026     0E02 GR  |   2 A$bloxorz$4027     0E04 GR
  2 A$bloxorz$4028     0E07 GR  |   2 A$bloxorz$4029     0E08 GR
  2 A$bloxorz$4030     0E09 GR  |   2 A$bloxorz$4031     0E0A GR
  2 A$bloxorz$4032     0E0C GR  |   2 A$bloxorz$4033     0E0E GR
  2 A$bloxorz$4042     0E10 GR  |   2 A$bloxorz$4043     0E12 GR
  2 A$bloxorz$4044     0E14 GR  |   2 A$bloxorz$4045     0E16 GR
  2 A$bloxorz$4046     0E17 GR  |   2 A$bloxorz$4047     0E19 GR
  2 A$bloxorz$4048     0E1C GR  |   2 A$bloxorz$4049     0E1E GR
  2 A$bloxorz$405      0189 GR  |   2 A$bloxorz$4050     0E1F GR
  2 A$bloxorz$4051     0E21 GR  |   2 A$bloxorz$4052     0E23 GR
  2 A$bloxorz$4053     0E25 GR  |   2 A$bloxorz$4054     0E27 GR
  2 A$bloxorz$4055     0E29 GR  |   2 A$bloxorz$406      018B GR
  2 A$bloxorz$4061     0E2B GR  |   2 A$bloxorz$4062     0E2D GR
  2 A$bloxorz$4063     0E30 GR  |   2 A$bloxorz$4064     0E32 GR
  2 A$bloxorz$4067     0E35 GR  |   2 A$bloxorz$4068     0E38 GR
  2 A$bloxorz$4069     0E3B GR  |   2 A$bloxorz$407      018D GR
  2 A$bloxorz$4076     0E3E GR  |   2 A$bloxorz$4077     0E41 GR
  2 A$bloxorz$4078     0E42 GR  |   2 A$bloxorz$4079     0E43 GR
  2 A$bloxorz$4080     0E44 GR  |   2 A$bloxorz$4081     0E47 GR
  2 A$bloxorz$4082     0E49 GR  |   2 A$bloxorz$4085     0E4B GR
  2 A$bloxorz$4095     0E4E GR  |   2 A$bloxorz$4096     0E51 GR
  2 A$bloxorz$4102     0E55 GR  |   2 A$bloxorz$4103     0E58 GR
  2 A$bloxorz$4104     0E5B GR  |   2 A$bloxorz$4105     0E5D GR
  2 A$bloxorz$4111     0E61 GR  |   2 A$bloxorz$4112     0E64 GR
  2 A$bloxorz$4118     0E67 GR  |   2 A$bloxorz$4119     0E6A GR
  2 A$bloxorz$4125     0E6D GR  |   2 A$bloxorz$4131     0E70 GR
  2 A$bloxorz$4132     0E73 GR  |   2 A$bloxorz$4138     0E76 GR
  2 A$bloxorz$4144     0E79 GR  |   2 A$bloxorz$4145     0E7C GR
  2 A$bloxorz$4146     0E7E GR  |   2 A$bloxorz$4153     0E82 GR
  2 A$bloxorz$4154     0E85 GR  |   2 A$bloxorz$4157     0E88 GR
  2 A$bloxorz$4158     0E8A GR  |   2 A$bloxorz$4164     0E8C GR
  2 A$bloxorz$4170     0E8F GR  |   2 A$bloxorz$4171     0E92 GR
  2 A$bloxorz$4172     0E93 GR  |   2 A$bloxorz$4173     0E95 GR
  2 A$bloxorz$4179     0E98 GR  |   2 A$bloxorz$4180     0E9A GR
  2 A$bloxorz$4187     0E9C GR  |   2 A$bloxorz$4188     0E9F GR
  2 A$bloxorz$4189     0EA1 GR  |   2 A$bloxorz$419      0191 GR
  2 A$bloxorz$4190     0EA5 GR  |   2 A$bloxorz$4191     0EA7 GR
  2 A$bloxorz$4198     0EA9 GR  |   2 A$bloxorz$4199     0EAA GR
  2 A$bloxorz$420      0193 GR  |   2 A$bloxorz$4200     0EAC GR
  2 A$bloxorz$4201     0EAD GR  |   2 A$bloxorz$4207     0EAF GR
  2 A$bloxorz$421      0195 GR  |   2 A$bloxorz$4214     0EB2 GR
  2 A$bloxorz$4217     0EB4 GR  |   2 A$bloxorz$4218     0EB6 GR
  2 A$bloxorz$4228     0EB9 GR  |   2 A$bloxorz$4229     0EBB GR
  2 A$bloxorz$4230     0EBD GR  |   2 A$bloxorz$4233     0EBF GR
  2 A$bloxorz$4234     0EC1 GR  |   2 A$bloxorz$4235     0EC3 GR
  2 A$bloxorz$4242     0EC6 GR  |   2 A$bloxorz$4243     0EC9 GR
  2 A$bloxorz$4252     0ECB GR  |   2 A$bloxorz$4253     0ECC GR
  2 A$bloxorz$4254     0ECE GR  |   2 A$bloxorz$4255     0ED0 GR
  2 A$bloxorz$4256     0ED3 GR  |   2 A$bloxorz$4257     0ED4 GR
  2 A$bloxorz$4258     0ED5 GR  |   2 A$bloxorz$4259     0ED6 GR
  2 A$bloxorz$4260     0ED8 GR  |   2 A$bloxorz$4261     0EDA GR
  2 A$bloxorz$4270     0EDC GR  |   2 A$bloxorz$4271     0EDE GR
  2 A$bloxorz$4272     0EE0 GR  |   2 A$bloxorz$4273     0EE2 GR
  2 A$bloxorz$4274     0EE3 GR  |   2 A$bloxorz$4275     0EE5 GR
  2 A$bloxorz$4276     0EE8 GR  |   2 A$bloxorz$4277     0EEA GR
  2 A$bloxorz$4278     0EEB GR  |   2 A$bloxorz$4279     0EED GR
  2 A$bloxorz$4280     0EEF GR  |   2 A$bloxorz$4281     0EF1 GR
  2 A$bloxorz$4282     0EF3 GR  |   2 A$bloxorz$4283     0EF5 GR
  2 A$bloxorz$4289     0EF7 GR  |   2 A$bloxorz$4290     0EF9 GR
  2 A$bloxorz$4291     0EFB GR  |   2 A$bloxorz$4292     0EFD GR
  2 A$bloxorz$4295     0EFF GR  |   2 A$bloxorz$4296     0F01 GR
  2 A$bloxorz$4297     0F03 GR  |   2 A$bloxorz$4304     0F06 GR
  2 A$bloxorz$4305     0F09 GR  |   2 A$bloxorz$4306     0F0A GR
  2 A$bloxorz$4307     0F0C GR  |   2 A$bloxorz$4308     0F0D GR
  2 A$bloxorz$4309     0F0E GR  |   2 A$bloxorz$4310     0F11 GR
  2 A$bloxorz$4311     0F13 GR  |   2 A$bloxorz$4314     0F15 GR
  2 A$bloxorz$4324     0F18 GR  |   2 A$bloxorz$4325     0F1B GR
  2 A$bloxorz$433      0199 GR  |   2 A$bloxorz$4331     0F1F GR
  2 A$bloxorz$4332     0F22 GR  |   2 A$bloxorz$4333     0F25 GR
  2 A$bloxorz$4334     0F27 GR  |   2 A$bloxorz$434      019B GR
  2 A$bloxorz$4340     0F2B GR  |   2 A$bloxorz$4341     0F2E GR
  2 A$bloxorz$4347     0F31 GR  |   2 A$bloxorz$4348     0F34 GR
  2 A$bloxorz$435      019D GR  |   2 A$bloxorz$4354     0F37 GR
  2 A$bloxorz$4360     0F3A GR  |   2 A$bloxorz$4361     0F3D GR
  2 A$bloxorz$4367     0F40 GR  |   2 A$bloxorz$4368     0F43 GR
  2 A$bloxorz$4375     0F46 GR  |   2 A$bloxorz$4376     0F49 GR
  2 A$bloxorz$4377     0F4B GR  |   2 A$bloxorz$441      01A1 GR
  2 A$bloxorz$442      01A3 GR  |   2 A$bloxorz$443      01A4 GR
  2 A$bloxorz$444      01A7 GR  |   2 A$bloxorz$445      01A9 GR
  2 A$bloxorz$453      01AB GR  |   2 A$bloxorz$454      01AD GR
  2 A$bloxorz$460      01B0 GR  |   2 A$bloxorz$461      01B3 GR
  2 A$bloxorz$464      01B4 GR  |   2 A$bloxorz$470      01B6 GR
  2 A$bloxorz$471      01B8 GR  |   2 A$bloxorz$477      01BB GR
  2 A$bloxorz$478      01BD GR  |   2 A$bloxorz$484      01C0 GR
  2 A$bloxorz$485      01C3 GR  |   2 A$bloxorz$486      01C5 GR
  2 A$bloxorz$487      01C9 GR  |   2 A$bloxorz$488      01CB GR
  2 A$bloxorz$489      01CD GR  |   2 A$bloxorz$490      01D1 GR
  2 A$bloxorz$491      01D3 GR  |   2 A$bloxorz$498      01D4 GR
  2 A$bloxorz$499      01D6 GR  |   2 A$bloxorz$500      01D8 GR
  2 A$bloxorz$501      01DC GR  |   2 A$bloxorz$507      01E0 GR
  2 A$bloxorz$508      01E3 GR  |   2 A$bloxorz$514      01E6 GR
  2 A$bloxorz$515      01E9 GR  |   2 A$bloxorz$52       0000 GR
  2 A$bloxorz$521      01EC GR  |   2 A$bloxorz$522      01EF GR
  2 A$bloxorz$523      01F1 GR  |   2 A$bloxorz$529      01F4 GR
  2 A$bloxorz$53       0002 GR  |   2 A$bloxorz$530      01F7 GR
  2 A$bloxorz$536      01FA GR  |   2 A$bloxorz$537      01FC GR
  2 A$bloxorz$54       0004 GR  |   2 A$bloxorz$549      01FF GR
  2 A$bloxorz$55       0006 GR  |   2 A$bloxorz$550      0201 GR
  2 A$bloxorz$557      0202 GR  |   2 A$bloxorz$558      0204 GR
  2 A$bloxorz$559      0206 GR  |   2 A$bloxorz$56       0008 GR
  2 A$bloxorz$560      020A GR  |   2 A$bloxorz$566      020E GR
  2 A$bloxorz$567      0211 GR  |   2 A$bloxorz$57       000A GR
  2 A$bloxorz$573      0214 GR  |   2 A$bloxorz$579      0217 GR
  2 A$bloxorz$58       000B GR  |   2 A$bloxorz$580      021A GR
  2 A$bloxorz$581      021B GR  |   2 A$bloxorz$587      021E GR
  2 A$bloxorz$588      0221 GR  |   2 A$bloxorz$59       000E GR
  2 A$bloxorz$60       0010 GR  |   2 A$bloxorz$600      0224 GR
  2 A$bloxorz$601      0226 GR  |   2 A$bloxorz$608      0227 GR
  2 A$bloxorz$609      0229 GR  |   2 A$bloxorz$61       0011 GR
  2 A$bloxorz$610      022B GR  |   2 A$bloxorz$611      022F GR
  2 A$bloxorz$617      0233 GR  |   2 A$bloxorz$618      0236 GR
  2 A$bloxorz$62       0012 GR  |   2 A$bloxorz$624      0239 GR
  2 A$bloxorz$625      023C GR  |   2 A$bloxorz$63       0013 GR
  2 A$bloxorz$631      023F GR  |   2 A$bloxorz$632      0242 GR
  2 A$bloxorz$633      0243 GR  |   2 A$bloxorz$639      0246 GR
  2 A$bloxorz$64       0015 GR  |   2 A$bloxorz$640      0249 GR
  2 A$bloxorz$646      024C GR  |   2 A$bloxorz$658      024F GR
  2 A$bloxorz$659      0251 GR  |   2 A$bloxorz$66       0016 GR
  2 A$bloxorz$666      0252 GR  |   2 A$bloxorz$667      0255 GR
  2 A$bloxorz$67       0018 GR  |   2 A$bloxorz$673      0258 GR
  2 A$bloxorz$679      025B GR  |   2 A$bloxorz$680      025E GR
  2 A$bloxorz$686      0261 GR  |   2 A$bloxorz$687      0264 GR
  2 A$bloxorz$688      0265 GR  |   2 A$bloxorz$694      0268 GR
  2 A$bloxorz$70       0019 GR  |   2 A$bloxorz$701      026A GR
  2 A$bloxorz$702      026D GR  |   2 A$bloxorz$708      0270 GR
  2 A$bloxorz$709      0273 GR  |   2 A$bloxorz$71       001B GR
  2 A$bloxorz$715      0276 GR  |   2 A$bloxorz$716      0279 GR
  2 A$bloxorz$72       001D GR  |   2 A$bloxorz$722      027C GR
  2 A$bloxorz$723      027F GR  |   2 A$bloxorz$724      0281 GR
  2 A$bloxorz$730      0284 GR  |   2 A$bloxorz$736      0287 GR
  2 A$bloxorz$743      028A GR  |   2 A$bloxorz$744      028D GR
  2 A$bloxorz$750      0290 GR  |   2 A$bloxorz$751      0293 GR
  2 A$bloxorz$757      0296 GR  |   2 A$bloxorz$758      0299 GR
  2 A$bloxorz$764      029C GR  |   2 A$bloxorz$765      029F GR
  2 A$bloxorz$766      02A0 GR  |   2 A$bloxorz$772      02A3 GR
  2 A$bloxorz$773      02A5 GR  |   2 A$bloxorz$779      02A8 GR
  2 A$bloxorz$781      02AB GR  |   2 A$bloxorz$782      02AD GR
  2 A$bloxorz$783      02B1 GR  |   2 A$bloxorz$784      02B3 GR
  2 A$bloxorz$790      02B7 GR  |   2 A$bloxorz$791      02BA GR
  2 A$bloxorz$797      02BD GR  |   2 A$bloxorz$798      02C0 GR
  2 A$bloxorz$804      02C3 GR  |   2 A$bloxorz$805      02C6 GR
  2 A$bloxorz$81       001F GR  |   2 A$bloxorz$811      02C9 GR
  2 A$bloxorz$812      02CC GR  |   2 A$bloxorz$813      02CD GR
  2 A$bloxorz$819      02D0 GR  |   2 A$bloxorz$82       0021 GR
  2 A$bloxorz$825      02D3 GR  |   2 A$bloxorz$827      02D6 GR
  2 A$bloxorz$828      02D8 GR  |   2 A$bloxorz$829      02DC GR
  2 A$bloxorz$83       0023 GR  |   2 A$bloxorz$830      02DE GR
  2 A$bloxorz$836      02E2 GR  |   2 A$bloxorz$837      02E5 GR
  2 A$bloxorz$84       0024 GR  |   2 A$bloxorz$843      02E8 GR
  2 A$bloxorz$844      02EB GR  |   2 A$bloxorz$85       0026 GR
  2 A$bloxorz$850      02EE GR  |   2 A$bloxorz$851      02F1 GR
  2 A$bloxorz$857      02F4 GR  |   2 A$bloxorz$858      02F7 GR
  2 A$bloxorz$859      02F9 GR  |   2 A$bloxorz$86       0028 GR
  2 A$bloxorz$865      02FC GR  |   2 A$bloxorz$866      02FE GR
  2 A$bloxorz$87       002A GR  |   2 A$bloxorz$872      0301 GR
  2 A$bloxorz$874      0304 GR  |   2 A$bloxorz$875      0306 GR
  2 A$bloxorz$876      0308 GR  |   2 A$bloxorz$877      030A GR
  2 A$bloxorz$88       002C GR  |   2 A$bloxorz$883      030E GR
  2 A$bloxorz$884      0311 GR  |   2 A$bloxorz$89       002D GR
  2 A$bloxorz$890      0314 GR  |   2 A$bloxorz$891      0317 GR
  2 A$bloxorz$897      031A GR  |   2 A$bloxorz$898      031D GR
  2 A$bloxorz$90       002F GR  |   2 A$bloxorz$904      0320 GR
  2 A$bloxorz$905      0323 GR  |   2 A$bloxorz$906      0324 GR
  2 A$bloxorz$91       0031 GR  |   2 A$bloxorz$912      0327 GR
  2 A$bloxorz$919      032A GR  |   2 A$bloxorz$92       0033 GR
  2 A$bloxorz$920      032D GR  |   2 A$bloxorz$926      0330 GR
  2 A$bloxorz$927      0333 GR  |   2 A$bloxorz$93       0035 GR
  2 A$bloxorz$933      0336 GR  |   2 A$bloxorz$934      0339 GR
  2 A$bloxorz$935      033B GR  |   2 A$bloxorz$94       0037 GR
  2 A$bloxorz$941      033E GR  |   2 A$bloxorz$942      0341 GR
  2 A$bloxorz$948      0344 GR  |   2 A$bloxorz$95       0039 GR
  2 A$bloxorz$954      0347 GR  |   2 A$bloxorz$96       003B GR
  2 A$bloxorz$961      034A GR  |   2 A$bloxorz$962      034D GR
  2 A$bloxorz$968      0350 GR  |   2 A$bloxorz$969      0353 GR
  2 A$bloxorz$97       003D GR  |   2 A$bloxorz$975      0356 GR
  2 A$bloxorz$976      0359 GR  |   2 A$bloxorz$977      035A GR
  2 A$bloxorz$983      035D GR  |   2 A$bloxorz$984      0360 GR
  2 A$bloxorz$990      0363 GR  |   2 A$bloxorz$991      0365 GR
  2 A$bloxorz$997      0368 GR  |   2 L100               0841 R
  2 L101               0893 R   |   2 L104               086D R
  2 L105               08B3 R   |   2 L106               089E R
  2 L108               08B9 R   |   2 L109               08A6 R
  2 L110               08A9 R   |   2 L111               08DF R
  2 L112               08E2 R   |   2 L113               087C R
  2 L114               0888 R   |   2 L115               08BC R
  2 L116               08D7 R   |   2 L117               08E5 R
  2 L118               0861 R   |   2 L119               0905 R
  2 L122               098E R   |   2 L125               0A25 R
  2 L129               0A37 R   |   2 L130               0A47 R
  2 L131               0A3B R   |   2 L132               0A53 R
  2 L133               0A60 R   |   2 L136               0A84 R
  2 L138               0B42 R   |   2 L141               0B4A R
  2 L142               0B26 R   |   2 L143               0B32 R
  2 L144               0A92 R   |   2 L152               0B9F R
  2 L153               0BA8 R   |   2 L154               0B5A R
  2 L155               0AB3 R   |   2 L156               0B98 R
  2 L159               0C41 R   |   2 L161               0C34 R
  2 L163               0D02 R   |   2 L164               0D38 R
  2 L165               0DC0 R   |   2 L166               0D32 R
  2 L167               0D14 R   |   2 L168               0C7F R
  2 L169               0C75 R   |   2 L170               0DBD R
  2 L171               0D26 R   |   2 L172               0D2F R
  2 L173               0D02 R   |   2 L174               0DD3 R
  2 L175               0C60 R   |   2 L177               0DC6 R
  2 L178               0DD9 R   |   2 L179               0E82 R
  2 L181               0E9C R   |   2 L184               0EA9 R
  2 L185               0F46 R   |   2 L19                01D4 R
  2 L2                 0016 R   |   2 L20                0202 R
  2 L22                01FF R   |   2 L24                028A R
  2 L25                034A R   |   2 L27                0224 R
  2 L29                026A R   |   2 L30                036B R
  2 L32                024F R   |   2 L34                0252 R
  2 L35                032A R   |   2 L38                0227 R
  2 L39                02D6 R   |   2 L40                02AB R
  2 L41                0304 R   |   2 L50                046F R
  2 L51                0470 R   |   2 L53                0556 R
  2 L56                055C R   |   2 L57                053A R
  2 L58                0546 R   |   2 L59                0498 R
  2 L68                056C R   |   2 L69                04C7 R
  2 L70                057E R   |   2 L72                0674 R
  2 L73                05C9 R   |   2 L74                0687 R
  2 L77                068D R   |   2 L78                0654 R
  2 L79                0668 R   |   2 L80                0594 R
  2 L89                0747 R   |   2 L90                069A R
  2 L91                0694 R   |   2 L93                07E5 R
  2 L95                088C R   |   2 L97                0824 R
  2 L98                08AC R   |   2 LC0                0FAF R
  2 LC1                107C R   |   2 LC2                1149 R
  2 _addLine           0062 GR  |   2 _addTarget         00E8 GR
  4 _blockAnimatin     01E8 GR  |   4 _blockAnimatio     01E3 GR
  4 _blockAnimatio     01E7 GR  |   2 _blockFalling      0E88 GR
  2 _blockMoving       0766 GR  |   2 _blockMovingAt     0BB1 GR
  2 _blockMovingTo     090B GR  |   4 _blockOrientat     01E0 GR
  2 _blockWaiting      0992 GR  |   4 _blockX            01E1 GR
  4 _blockY            01E2 GR  |   4 _blockYOfs         01EC GR
  2 _changeMusic       01AB GR  |   3 _currentMusic      0000 GR
  2 _depth2Rolling     31DE GR  |   2 _depth2Rolling     13AA GR
  2 _depth2Rolling     1608 GR  |   2 _depth2Rolling     2B8C GR
  2 _depth2Rolling     2DF0 GR  |   2 _depth2Rolling     3054 GR
  2 _depth2Rolling     186C GR  |   2 _depth2Rolling     1AD0 GR
  2 _depth2Rolling     1D34 GR  |   2 _depth2Rolling     1F98 GR
  2 _depth2Rolling     21FC GR  |   2 _depth2Rolling     2460 GR
  2 _depth2Rolling     26C4 GR  |   2 _depth2Rolling     2928 GR
  2 _depth2Rolling     31F6 GR  |   2 _depth2Rolling     13DB GR
  2 _depth2Rolling     1639 GR  |   2 _depth2Rolling     2BBD GR
  2 _depth2Rolling     2E21 GR  |   2 _depth2Rolling     3085 GR
  2 _depth2Rolling     189D GR  |   2 _depth2Rolling     1B01 GR
  2 _depth2Rolling     1D65 GR  |   2 _depth2Rolling     1FC9 GR
  2 _depth2Rolling     222D GR  |   2 _depth2Rolling     2491 GR
  2 _depth2Rolling     26F5 GR  |   2 _depth2Rolling     2959 GR
  2 _doBlockAnimat     0460 GR  |   2 _drawBlock         03ED GR
  2 _drawField         03A1 GR  |   3 _endX              000B GR
  3 _endY              000C GR  |   2 _fallingMusic      0F87 GR
  4 _gameState         01EF GR  |   2 _height2Fallin     317E GR
  2 _height2Fallin     12E0 GR  |   2 _height2Fallin     153B GR
  2 _height2Fallin     2ABF GR  |   2 _height2Fallin     2D23 GR
  2 _height2Fallin     2F87 GR  |   2 _height2Fallin     179F GR
  2 _height2Fallin     1A03 GR  |   2 _height2Fallin     1C67 GR
  2 _height2Fallin     1ECB GR  |   2 _height2Fallin     212F GR
  2 _height2Fallin     2393 GR  |   2 _height2Fallin     25F7 GR
  2 _height2Fallin     285B GR  |   2 _height2Fallin     31AE GR
  2 _height2Fallin     1345 GR  |   2 _height2Fallin     15A3 GR
  2 _height2Fallin     2B27 GR  |   2 _height2Fallin     2D8B GR
  2 _height2Fallin     2FEF GR  |   2 _height2Fallin     1807 GR
  2 _height2Fallin     1A6B GR  |   2 _height2Fallin     1CCF GR
  2 _height2Fallin     1F33 GR  |   2 _height2Fallin     2197 GR
  2 _height2Fallin     23FB GR  |   2 _height2Fallin     265F GR
  2 _height2Fallin     28C3 GR  |   2 _height2Fallin     311E GR
  2 _height2Fallin     1216 GR  |   2 _height2Fallin     146E GR
  2 _height2Fallin     29F2 GR  |   2 _height2Fallin     2C56 GR
  2 _height2Fallin     2EBA GR  |   2 _height2Fallin     16D2 GR
  2 _height2Fallin     1936 GR  |   2 _height2Fallin     1B9A GR
  2 _height2Fallin     1DFE GR  |   2 _height2Fallin     2062 GR
  2 _height2Fallin     22C6 GR  |   2 _height2Fallin     252A GR
  2 _height2Fallin     278E GR  |   2 _height2Fallin     314E GR
  2 _height2Fallin     127B GR  |   2 _height2Fallin     14D3 GR
  2 _height2Fallin     2A57 GR  |   2 _height2Fallin     2CBB GR
  2 _height2Fallin     2F1F GR  |   2 _height2Fallin     1737 GR
  2 _height2Fallin     199B GR  |   2 _height2Fallin     1BFF GR
  2 _height2Fallin     1E63 GR  |   2 _height2Fallin     20C7 GR
  2 _height2Fallin     232B GR  |   2 _height2Fallin     258F GR
  2 _height2Fallin     27F3 GR  |   2 _height2Rising     31C6 GR
  2 _height2Rising     1376 GR  |   2 _height2Rising     15D4 GR
  2 _height2Rising     2B58 GR  |   2 _height2Rising     2DBC GR
  2 _height2Rising     3020 GR  |   2 _height2Rising     1838 GR
  2 _height2Rising     1A9C GR  |   2 _height2Rising     1D00 GR
  2 _height2Rising     1F64 GR  |   2 _height2Rising     21C8 GR
  2 _height2Rising     242C GR  |   2 _height2Rising     2690 GR
  2 _height2Rising     28F4 GR  |   2 _height2Rising     3196 GR
  2 _height2Rising     1311 GR  |   2 _height2Rising     156F GR
  2 _height2Rising     2AF3 GR  |   2 _height2Rising     2D57 GR
  2 _height2Rising     2FBB GR  |   2 _height2Rising     17D3 GR
  2 _height2Rising     1A37 GR  |   2 _height2Rising     1C9B GR
  2 _height2Rising     1EFF GR  |   2 _height2Rising     2163 GR
  2 _height2Rising     23C7 GR  |   2 _height2Rising     262B GR
  2 _height2Rising     288F GR  |   2 _height2Rising     3166 GR
  2 _height2Rising     12AC GR  |   2 _height2Rising     1507 GR
  2 _height2Rising     2A8B GR  |   2 _height2Rising     2CEF GR
  2 _height2Rising     2F53 GR  |   2 _height2Rising     176B GR
  2 _height2Rising     19CF GR  |   2 _height2Rising     1C33 GR
  2 _height2Rising     1E97 GR  |   2 _height2Rising     20FB GR
  2 _height2Rising     235F GR  |   2 _height2Rising     25C3 GR
  2 _height2Rising     2827 GR  |   2 _height2Rising     3136 GR
  2 _height2Rising     1247 GR  |   2 _height2Rising     149F GR
  2 _height2Rising     2A23 GR  |   2 _height2Rising     2C87 GR
  2 _height2Rising     2EEB GR  |   2 _height2Rising     1703 GR
  2 _height2Rising     1967 GR  |   2 _height2Rising     1BCB GR
  2 _height2Rising     1E2F GR  |   2 _height2Rising     2093 GR
  2 _height2Rising     22F7 GR  |   2 _height2Rising     255B GR
  2 _height2Rising     27BF GR  |   2 _isField           0000 GR
  4 _lastBlockDire     01EB GR  |   4 _level             01ED GR
  3 _level0            0002 GR  |   3 _level1            0004 GR
  3 _level2            0006 GR  |   2 _levelEndMusic     0F6D GR
  3 _levelNumber       000D GR  |   3 _lineCount         0008 GR
  4 _lineX0            0000 GR  |   4 _lineX1            00F0 GR
  4 _lineY0            0078 GR  |   4 _lineY1            0168 GR
  2 _main              0C48 GR  |   2 _moveBlock         01B4 GR
  2 _movingMusic       0FA7 GR  |   4 _nextBlockAnim     01E5 GR
  4 _nextBlockX        01E9 GR  |   4 _nextBlockY        01EA GR
  2 _setupX            0584 GR  |   2 _setupY            0489 GR
  2 _startBlockFal     0387 GR  |   2 _startLevel        0A6D GR
  2 _startMusic        0F4D GR  |   3 _startX            0009 GR
  3 _startY            000A GR  |   2 _width2Rolling     3226 GR
  2 _width2Rolling     143D GR  |   2 _width2Rolling     169E GR
  2 _width2Rolling     2C22 GR  |   2 _width2Rolling     2E86 GR
  2 _width2Rolling     30EA GR  |   2 _width2Rolling     1902 GR
  2 _width2Rolling     1B66 GR  |   2 _width2Rolling     1DCA GR
  2 _width2Rolling     202E GR  |   2 _width2Rolling     2292 GR
  2 _width2Rolling     24F6 GR  |   2 _width2Rolling     275A GR
  2 _width2Rolling     29BE GR  |   2 _width2Rolling     320E GR
  2 _width2Rolling     140C GR  |   2 _width2Rolling     166D GR
  2 _width2Rolling     2BF1 GR  |   2 _width2Rolling     2E55 GR
  2 _width2Rolling     30B9 GR  |   2 _width2Rolling     18D1 GR
  2 _width2Rolling     1B35 GR  |   2 _width2Rolling     1D99 GR
  2 _width2Rolling     1FFD GR  |   2 _width2Rolling     2261 GR
  2 _width2Rolling     24C5 GR  |   2 _width2Rolling     2729 GR
  2 _width2Rolling     298D GR  |   2 _x3d               0019 GR
  2 _y3d               003F GR  |   2 drawFieldLoop      03B4 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size 323E   flags  100
   3 .data            size    E   flags  100
   4 .bss             size  1F0   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

