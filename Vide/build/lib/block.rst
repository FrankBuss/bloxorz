                              1 ;;; gcc for m6809 : Mar 17 2019 12:45:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O1
                              5 	.module	block.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ; -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ; -fno-time-report
                             12 ; -IC:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include
                             13 ; -D__INLINE_RUM=1 -DOMMIT_FRAMEPOINTER=1
                             14 ; C:\data\bloxorz\Vide\source\block.enr.c
                             15 ; options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             16 ; -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
                             17 ; -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
                             18 ; -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             19 ; -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
                             20 ; -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             21 ; -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             22 ; -fpcc-struct-return -fpeephole -fsched-interblock -fsched-spec
                             23 ; -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
                             24 ; -fsplit-wide-types -ftoplevel-reorder -ftrapping-math -ftree-ccp
                             25 ; -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             26 ; -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             27 ; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             28 ; -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
                             29 ; -ftree-ter -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
                             30 ; -fzero-initialized-in-bss
                             31 ; Compiler executable checksum: 8f282e2d9663ae6148257c524e608c63
                             32 	.area	.text
                             33 	.globl	_moveBlockImpl
   0633                      34 _moveBlockImpl:
   0633 32 7F         [ 5]   35 	leas	-1,s	;,,
   0635 E7 E4         [ 4]   36 	stb	,s	; move, move
                             37 ;----- asm -----
                             38 ; 29 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                             39 	; #ENR#[28]	blockAnimating = 1;
                             40 ;--- end asm ---
   0637 C6 01         [ 2]   41 	ldb	#1	;,
   0639 F7 C8 E2      [ 5]   42 	stb	_blockAnimating	;, blockAnimating
                             43 ;----- asm -----
                             44 ; 31 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                             45 	; #ENR#[29]	lastBlockDirection = move;
                             46 ;--- end asm ---
   063C E6 E4         [ 4]   47 	ldb	,s	;, move
   063E F7 C8 E1      [ 5]   48 	stb	_lastBlockDirection	;, lastBlockDirection
                             49 ;----- asm -----
                             50 ; 33 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                             51 	; #ENR#[30]	if (splitMode) {
                             52 ;--- end asm ---
   0641 7D C8 E3      [ 7]   53 	tst	_splitMode	; splitMode
   0644 10 27 00 84   [ 6]   54 	lbeq	L2	;
                             55 ;----- asm -----
                             56 ; 35 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                             57 	; #ENR#[31]    	switch (blockOrientation) {
                             58 ;--- end asm ---
   0648 7D C8 DF      [ 7]   59 	tst	_blockOrientation	; blockOrientation
   064B 10 26 00 7A   [ 6]   60 	lbne	L30	;
                             61 ;----- asm -----
                             62 ; 39 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                             63 	; #ENR#[33]            		switch (move) {
                             64 ;--- end asm ---
   064F E6 E4         [ 4]   65 	ldb	,s	;, move
   0651 C1 01         [ 2]   66 	cmpb	#1	;cmpqi:	;,
   0653 10 27 00 41   [ 6]   67 	lbeq	L7	;
   0657 25 0D         [ 3]   68 	blo	L6	;
   0659 C1 02         [ 2]   69 	cmpb	#2	;cmpqi:	;,
   065B 27 22         [ 3]   70 	beq	L8	;
   065D C1 03         [ 2]   71 	cmpb	#3	;cmpqi:	;,
   065F 10 26 00 63   [ 6]   72 	lbne	L5	;
   0663 16 00 4A      [ 5]   73 	lbra	L31	;
   0666                      74 L6:
                             75 ;----- asm -----
                             76 ; 43 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                             77 	; #ENR#[35]                			blockAnimation = height1FallingLeft;
                             78 ;--- end asm ---
   0666 8E 34 BF      [ 3]   79 	ldx	#_height1FallingLeft	; tmp29,
   0669 BF C8 E8      [ 6]   80 	stx	_blockAnimation	; tmp29, blockAnimation
                             81 ;----- asm -----
                             82 ; 45 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                             83 	; #ENR#[36]                 			nextBlockAnimation = height1FallingLeft;
                             84 ;--- end asm ---
   066C BF C8 EA      [ 6]   85 	stx	_nextBlockAnimation	; tmp29, nextBlockAnimation
                             86 ;----- asm -----
                             87 ; 47 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                             88 	; #ENR#[37]                 			nextBlockX = blockX - 1;
                             89 ;--- end asm ---
   066F F6 C8 E4      [ 5]   90 	ldb	_blockX	;, blockX
   0672 5A            [ 2]   91 	decb	;
   0673 F7 C8 ED      [ 5]   92 	stb	_nextBlockX	;, nextBlockX
                             93 ;----- asm -----
                             94 ; 49 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                             95 	; #ENR#[38]                 			nextBlockY = blockY;
                             96 ;--- end asm ---
   0676 F6 C8 E5      [ 5]   97 	ldb	_blockY	;, blockY
   0679 F7 C8 EE      [ 5]   98 	stb	_nextBlockY	;, nextBlockY
                             99 ;----- asm -----
                            100 ; 51 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            101 	; #ENR#[39]                 			break;
                            102 ;--- end asm ---
   067C 16 00 47      [ 5]  103 	lbra	L5	;
   067F                     104 L8:
                            105 ;----- asm -----
                            106 ; 55 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            107 	; #ENR#[41]                 			blockAnimation = height1FallingRight;
                            108 ;--- end asm ---
   067F 8E 34 D7      [ 3]  109 	ldx	#_height1FallingRight	; tmp31,
   0682 BF C8 E8      [ 6]  110 	stx	_blockAnimation	; tmp31, blockAnimation
                            111 ;----- asm -----
                            112 ; 57 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            113 	; #ENR#[42]                 			nextBlockAnimation = height1FallingRight;
                            114 ;--- end asm ---
   0685 BF C8 EA      [ 6]  115 	stx	_nextBlockAnimation	; tmp31, nextBlockAnimation
                            116 ;----- asm -----
                            117 ; 59 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            118 	; #ENR#[43]                 			nextBlockX = blockX + 1;
                            119 ;--- end asm ---
   0688 F6 C8 E4      [ 5]  120 	ldb	_blockX	;, blockX
   068B 5C            [ 2]  121 	incb	;
   068C F7 C8 ED      [ 5]  122 	stb	_nextBlockX	;, nextBlockX
                            123 ;----- asm -----
                            124 ; 61 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            125 	; #ENR#[44]                 			nextBlockY = blockY;
                            126 ;--- end asm ---
   068F F6 C8 E5      [ 5]  127 	ldb	_blockY	;, blockY
   0692 F7 C8 EE      [ 5]  128 	stb	_nextBlockY	;, nextBlockY
                            129 ;----- asm -----
                            130 ; 63 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            131 	; #ENR#[45]                 			break;
                            132 ;--- end asm ---
   0695 16 00 2E      [ 5]  133 	lbra	L5	;
   0698                     134 L7:
                            135 ;----- asm -----
                            136 ; 67 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            137 	; #ENR#[47]                 			blockAnimation = height1FallingBack;
                            138 ;--- end asm ---
   0698 8E 34 EF      [ 3]  139 	ldx	#_height1FallingBack	; tmp33,
   069B BF C8 E8      [ 6]  140 	stx	_blockAnimation	; tmp33, blockAnimation
                            141 ;----- asm -----
                            142 ; 69 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            143 	; #ENR#[48]                 			nextBlockAnimation = height1FallingBack;
                            144 ;--- end asm ---
   069E BF C8 EA      [ 6]  145 	stx	_nextBlockAnimation	; tmp33, nextBlockAnimation
                            146 ;----- asm -----
                            147 ; 71 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            148 	; #ENR#[49]                 			nextBlockX = blockX;
                            149 ;--- end asm ---
   06A1 F6 C8 E4      [ 5]  150 	ldb	_blockX	;, blockX
   06A4 F7 C8 ED      [ 5]  151 	stb	_nextBlockX	;, nextBlockX
                            152 ;----- asm -----
                            153 ; 73 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            154 	; #ENR#[50]                 			nextBlockY = blockY + 1;
                            155 ;--- end asm ---
   06A7 F6 C8 E5      [ 5]  156 	ldb	_blockY	;, blockY
   06AA 5C            [ 2]  157 	incb	;
   06AB F7 C8 EE      [ 5]  158 	stb	_nextBlockY	;, nextBlockY
                            159 ;----- asm -----
                            160 ; 75 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            161 	; #ENR#[51]                 			break;
                            162 ;--- end asm ---
   06AE 20 16         [ 3]  163 	bra	L5	;
   06B0                     164 L31:
                            165 ;----- asm -----
                            166 ; 79 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            167 	; #ENR#[53]                 			blockAnimation = height1FallingFront;
                            168 ;--- end asm ---
   06B0 8E 35 07      [ 3]  169 	ldx	#_height1FallingFront	; tmp35,
   06B3 BF C8 E8      [ 6]  170 	stx	_blockAnimation	; tmp35, blockAnimation
                            171 ;----- asm -----
                            172 ; 81 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            173 	; #ENR#[54]                 			nextBlockAnimation = height1FallingFront;
                            174 ;--- end asm ---
   06B6 BF C8 EA      [ 6]  175 	stx	_nextBlockAnimation	; tmp35, nextBlockAnimation
                            176 ;----- asm -----
                            177 ; 83 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            178 	; #ENR#[55]                 			nextBlockX = blockX;
                            179 ;--- end asm ---
   06B9 F6 C8 E4      [ 5]  180 	ldb	_blockX	;, blockX
   06BC F7 C8 ED      [ 5]  181 	stb	_nextBlockX	;, nextBlockX
                            182 ;----- asm -----
                            183 ; 85 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            184 	; #ENR#[56]                 			nextBlockY = blockY - 1;
                            185 ;--- end asm ---
   06BF F6 C8 E5      [ 5]  186 	ldb	_blockY	;, blockY
   06C2 5A            [ 2]  187 	decb	;
   06C3 F7 C8 EE      [ 5]  188 	stb	_nextBlockY	;, nextBlockY
                            189 ;----- asm -----
                            190 ; 87 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            191 	; #ENR#[57]                 			break;
                            192 ;--- end asm ---
   06C6                     193 L5:
                            194 ;----- asm -----
                            195 ; 90 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            196 	; #ENR#[59]            		break;
                            197 ;--- end asm ---
   06C6 16 01 C4      [ 5]  198 	lbra	L29	;
   06C9                     199 L30:
                            200 ;----- asm -----
                            201 ; 94 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            202 	; #ENR#[61]			break;
                            203 ;--- end asm ---
   06C9 16 01 C1      [ 5]  204 	lbra	L29	;
   06CC                     205 L2:
                            206 ;----- asm -----
                            207 ; 98 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            208 	; #ENR#[64]    	switch (blockOrientation) {
                            209 ;--- end asm ---
   06CC F6 C8 DF      [ 5]  210 	ldb	_blockOrientation	; blockOrientation, blockOrientation
   06CF C1 01         [ 2]  211 	cmpb	#1	;cmpqi:	; blockOrientation,
   06D1 10 27 00 A7   [ 6]  212 	lbeq	L12	;
   06D5 25 09         [ 3]  213 	blo	L11	;
   06D7 C1 02         [ 2]  214 	cmpb	#2	;cmpqi:	; blockOrientation,
   06D9 10 26 01 B0   [ 6]  215 	lbne	L29	;
   06DD 16 01 26      [ 5]  216 	lbra	L32	;
   06E0                     217 L11:
                            218 ;----- asm -----
                            219 ; 102 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            220 	; #ENR#[66]            		switch (move) {
                            221 ;--- end asm ---
   06E0 E6 E4         [ 4]  222 	ldb	,s	;, move
   06E2 C1 01         [ 2]  223 	cmpb	#1	;cmpqi:	;,
   06E4 10 27 00 52   [ 6]  224 	lbeq	L16	;
   06E8 25 0D         [ 3]  225 	blo	L15	;
   06EA C1 02         [ 2]  226 	cmpb	#2	;cmpqi:	;,
   06EC 27 2B         [ 3]  227 	beq	L17	;
   06EE C1 03         [ 2]  228 	cmpb	#3	;cmpqi:	;,
   06F0 10 26 00 85   [ 6]  229 	lbne	L14	;
   06F4 16 00 63      [ 5]  230 	lbra	L33	;
   06F7                     231 L15:
                            232 ;----- asm -----
                            233 ; 106 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            234 	; #ENR#[68]                			blockAnimation = height2FallingLeft;
                            235 ;--- end asm ---
   06F7 8E 33 9F      [ 3]  236 	ldx	#_height2FallingLeft	;,
   06FA BF C8 E8      [ 6]  237 	stx	_blockAnimation	;, blockAnimation
                            238 ;----- asm -----
                            239 ; 108 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            240 	; #ENR#[69]                 			nextBlockAnimation = width2RollingFront;
                            241 ;--- end asm ---
   06FD 8E 34 8F      [ 3]  242 	ldx	#_width2RollingFront	;,
   0700 BF C8 EA      [ 6]  243 	stx	_nextBlockAnimation	;, nextBlockAnimation
                            244 ;----- asm -----
                            245 ; 110 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            246 	; #ENR#[70]                 			nextBlockX = blockX - 2;
                            247 ;--- end asm ---
   0703 F6 C8 E4      [ 5]  248 	ldb	_blockX	;, blockX
   0706 CB FE         [ 2]  249 	addb	#-2	;,
   0708 F7 C8 ED      [ 5]  250 	stb	_nextBlockX	;, nextBlockX
                            251 ;----- asm -----
                            252 ; 112 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            253 	; #ENR#[71]                 			nextBlockY = blockY;
                            254 ;--- end asm ---
   070B F6 C8 E5      [ 5]  255 	ldb	_blockY	;, blockY
   070E F7 C8 EE      [ 5]  256 	stb	_nextBlockY	;, nextBlockY
                            257 ;----- asm -----
                            258 ; 114 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            259 	; #ENR#[72]                 			blockOrientation = Horizontal;
                            260 ;--- end asm ---
   0711 C6 02         [ 2]  261 	ldb	#2	;,
   0713 F7 C8 DF      [ 5]  262 	stb	_blockOrientation	;, blockOrientation
                            263 ;----- asm -----
                            264 ; 116 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            265 	; #ENR#[73]                 			break;
                            266 ;--- end asm ---
   0716 16 00 60      [ 5]  267 	lbra	L14	;
   0719                     268 L17:
                            269 ;----- asm -----
                            270 ; 120 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            271 	; #ENR#[75]                 			blockAnimation = height2FallingRight;
                            272 ;--- end asm ---
   0719 8E 33 CF      [ 3]  273 	ldx	#_height2FallingRight	;,
   071C BF C8 E8      [ 6]  274 	stx	_blockAnimation	;, blockAnimation
                            275 ;----- asm -----
                            276 ; 122 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            277 	; #ENR#[76]                 			nextBlockAnimation = width2RollingFront;
                            278 ;--- end asm ---
   071F 8E 34 8F      [ 3]  279 	ldx	#_width2RollingFront	;,
   0722 BF C8 EA      [ 6]  280 	stx	_nextBlockAnimation	;, nextBlockAnimation
                            281 ;----- asm -----
                            282 ; 124 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            283 	; #ENR#[77]                 			nextBlockX = blockX + 1;
                            284 ;--- end asm ---
   0725 F6 C8 E4      [ 5]  285 	ldb	_blockX	;, blockX
   0728 5C            [ 2]  286 	incb	;
   0729 F7 C8 ED      [ 5]  287 	stb	_nextBlockX	;, nextBlockX
                            288 ;----- asm -----
                            289 ; 126 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            290 	; #ENR#[78]                 			nextBlockY = blockY;
                            291 ;--- end asm ---
   072C F6 C8 E5      [ 5]  292 	ldb	_blockY	;, blockY
   072F F7 C8 EE      [ 5]  293 	stb	_nextBlockY	;, nextBlockY
                            294 ;----- asm -----
                            295 ; 128 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            296 	; #ENR#[79]                 			blockOrientation = Horizontal;
                            297 ;--- end asm ---
   0732 C6 02         [ 2]  298 	ldb	#2	;,
   0734 F7 C8 DF      [ 5]  299 	stb	_blockOrientation	;, blockOrientation
                            300 ;----- asm -----
                            301 ; 130 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            302 	; #ENR#[80]                 			break;
                            303 ;--- end asm ---
   0737 16 00 3F      [ 5]  304 	lbra	L14	;
   073A                     305 L16:
                            306 ;----- asm -----
                            307 ; 134 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            308 	; #ENR#[82]                 			blockAnimation = height2FallingBack;
                            309 ;--- end asm ---
   073A 8E 33 FF      [ 3]  310 	ldx	#_height2FallingBack	;,
   073D BF C8 E8      [ 6]  311 	stx	_blockAnimation	;, blockAnimation
                            312 ;----- asm -----
                            313 ; 136 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            314 	; #ENR#[83]                 			nextBlockAnimation = depth2RollingLeft;
                            315 ;--- end asm ---
   0740 8E 34 5F      [ 3]  316 	ldx	#_depth2RollingLeft	;,
   0743 BF C8 EA      [ 6]  317 	stx	_nextBlockAnimation	;, nextBlockAnimation
                            318 ;----- asm -----
                            319 ; 138 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            320 	; #ENR#[84]                 			nextBlockX = blockX;
                            321 ;--- end asm ---
   0746 F6 C8 E4      [ 5]  322 	ldb	_blockX	;, blockX
   0749 F7 C8 ED      [ 5]  323 	stb	_nextBlockX	;, nextBlockX
                            324 ;----- asm -----
                            325 ; 140 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            326 	; #ENR#[85]                 			nextBlockY = blockY + 1;
                            327 ;--- end asm ---
   074C F6 C8 E5      [ 5]  328 	ldb	_blockY	;, blockY
   074F 5C            [ 2]  329 	incb	;
   0750 F7 C8 EE      [ 5]  330 	stb	_nextBlockY	;, nextBlockY
                            331 ;----- asm -----
                            332 ; 142 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            333 	; #ENR#[86]                 			blockOrientation = Vertical;
                            334 ;--- end asm ---
   0753 C6 01         [ 2]  335 	ldb	#1	;,
   0755 F7 C8 DF      [ 5]  336 	stb	_blockOrientation	;, blockOrientation
                            337 ;----- asm -----
                            338 ; 144 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            339 	; #ENR#[87]                 			break;
                            340 ;--- end asm ---
   0758 20 1F         [ 3]  341 	bra	L14	;
   075A                     342 L33:
                            343 ;----- asm -----
                            344 ; 148 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            345 	; #ENR#[89]                 			blockAnimation = height2FallingFront;
                            346 ;--- end asm ---
   075A 8E 34 2F      [ 3]  347 	ldx	#_height2FallingFront	;,
   075D BF C8 E8      [ 6]  348 	stx	_blockAnimation	;, blockAnimation
                            349 ;----- asm -----
                            350 ; 150 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            351 	; #ENR#[90]                 			nextBlockAnimation = depth2RollingLeft;
                            352 ;--- end asm ---
   0760 8E 34 5F      [ 3]  353 	ldx	#_depth2RollingLeft	;,
   0763 BF C8 EA      [ 6]  354 	stx	_nextBlockAnimation	;, nextBlockAnimation
                            355 ;----- asm -----
                            356 ; 152 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            357 	; #ENR#[91]                 			nextBlockX = blockX;
                            358 ;--- end asm ---
   0766 F6 C8 E4      [ 5]  359 	ldb	_blockX	;, blockX
   0769 F7 C8 ED      [ 5]  360 	stb	_nextBlockX	;, nextBlockX
                            361 ;----- asm -----
                            362 ; 154 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            363 	; #ENR#[92]                 			nextBlockY = blockY - 2;
                            364 ;--- end asm ---
   076C F6 C8 E5      [ 5]  365 	ldb	_blockY	;, blockY
   076F CB FE         [ 2]  366 	addb	#-2	;,
   0771 F7 C8 EE      [ 5]  367 	stb	_nextBlockY	;, nextBlockY
                            368 ;----- asm -----
                            369 ; 156 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            370 	; #ENR#[93]                 			blockOrientation = Vertical;
                            371 ;--- end asm ---
   0774 C6 01         [ 2]  372 	ldb	#1	;,
   0776 F7 C8 DF      [ 5]  373 	stb	_blockOrientation	;, blockOrientation
                            374 ;----- asm -----
                            375 ; 158 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            376 	; #ENR#[94]                 			break;
                            377 ;--- end asm ---
   0779                     378 L14:
                            379 ;----- asm -----
                            380 ; 161 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            381 	; #ENR#[96]            		break;
                            382 ;--- end asm ---
   0779 16 01 11      [ 5]  383 	lbra	L29	;
   077C                     384 L12:
                            385 ;----- asm -----
                            386 ; 165 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            387 	; #ENR#[98]            		switch (move) {
                            388 ;--- end asm ---
   077C E6 E4         [ 4]  389 	ldb	,s	;, move
   077E C1 01         [ 2]  390 	cmpb	#1	;cmpqi:	;,
   0780 10 27 00 44   [ 6]  391 	lbeq	L21	;
   0784 25 0D         [ 3]  392 	blo	L20	;
   0786 C1 02         [ 2]  393 	cmpb	#2	;cmpqi:	;,
   0788 27 22         [ 3]  394 	beq	L22	;
   078A C1 03         [ 2]  395 	cmpb	#3	;cmpqi:	;,
   078C 10 26 00 73   [ 6]  396 	lbne	L19	;
   0790 16 00 54      [ 5]  397 	lbra	L34	;
   0793                     398 L20:
                            399 ;----- asm -----
                            400 ; 169 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            401 	; #ENR#[100]                			blockAnimation = depth2RollingLeft;
                            402 ;--- end asm ---
   0793 8E 34 5F      [ 3]  403 	ldx	#_depth2RollingLeft	; tmp46,
   0796 BF C8 E8      [ 6]  404 	stx	_blockAnimation	; tmp46, blockAnimation
                            405 ;----- asm -----
                            406 ; 171 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            407 	; #ENR#[101]                			nextBlockAnimation = depth2RollingLeft;
                            408 ;--- end asm ---
   0799 BF C8 EA      [ 6]  409 	stx	_nextBlockAnimation	; tmp46, nextBlockAnimation
                            410 ;----- asm -----
                            411 ; 173 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            412 	; #ENR#[102]                			nextBlockX = blockX - 1;
                            413 ;--- end asm ---
   079C F6 C8 E4      [ 5]  414 	ldb	_blockX	;, blockX
   079F 5A            [ 2]  415 	decb	;
   07A0 F7 C8 ED      [ 5]  416 	stb	_nextBlockX	;, nextBlockX
                            417 ;----- asm -----
                            418 ; 175 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            419 	; #ENR#[103]                			nextBlockY = blockY;
                            420 ;--- end asm ---
   07A3 F6 C8 E5      [ 5]  421 	ldb	_blockY	;, blockY
   07A6 F7 C8 EE      [ 5]  422 	stb	_nextBlockY	;, nextBlockY
                            423 ;----- asm -----
                            424 ; 177 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            425 	; #ENR#[104]                			break;
                            426 ;--- end asm ---
   07A9 16 00 57      [ 5]  427 	lbra	L19	;
   07AC                     428 L22:
                            429 ;----- asm -----
                            430 ; 181 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            431 	; #ENR#[106]                			blockAnimation = depth2RollingRight;
                            432 ;--- end asm ---
   07AC 8E 34 77      [ 3]  433 	ldx	#_depth2RollingRight	;,
   07AF BF C8 E8      [ 6]  434 	stx	_blockAnimation	;, blockAnimation
                            435 ;----- asm -----
                            436 ; 183 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            437 	; #ENR#[107]                			nextBlockAnimation = depth2RollingLeft;
                            438 ;--- end asm ---
   07B2 8E 34 5F      [ 3]  439 	ldx	#_depth2RollingLeft	;,
   07B5 BF C8 EA      [ 6]  440 	stx	_nextBlockAnimation	;, nextBlockAnimation
                            441 ;----- asm -----
                            442 ; 185 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            443 	; #ENR#[108]                			nextBlockX = blockX + 1;
                            444 ;--- end asm ---
   07B8 F6 C8 E4      [ 5]  445 	ldb	_blockX	;, blockX
   07BB 5C            [ 2]  446 	incb	;
   07BC F7 C8 ED      [ 5]  447 	stb	_nextBlockX	;, nextBlockX
                            448 ;----- asm -----
                            449 ; 187 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            450 	; #ENR#[109]                			nextBlockY = blockY;
                            451 ;--- end asm ---
   07BF F6 C8 E5      [ 5]  452 	ldb	_blockY	;, blockY
   07C2 F7 C8 EE      [ 5]  453 	stb	_nextBlockY	;, nextBlockY
                            454 ;----- asm -----
                            455 ; 189 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            456 	; #ENR#[110]                			break;
                            457 ;--- end asm ---
   07C5 16 00 3B      [ 5]  458 	lbra	L19	;
   07C8                     459 L21:
                            460 ;----- asm -----
                            461 ; 193 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            462 	; #ENR#[112]                			blockAnimation = height2RisingBack;
                            463 ;--- end asm ---
   07C8 8E 34 47      [ 3]  464 	ldx	#_height2RisingBack	;,
   07CB BF C8 E8      [ 6]  465 	stx	_blockAnimation	;, blockAnimation
                            466 ;----- asm -----
                            467 ; 195 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            468 	; #ENR#[113]                			nextBlockAnimation = height2FallingFront;
                            469 ;--- end asm ---
   07CE 8E 34 2F      [ 3]  470 	ldx	#_height2FallingFront	;,
   07D1 BF C8 EA      [ 6]  471 	stx	_nextBlockAnimation	;, nextBlockAnimation
                            472 ;----- asm -----
                            473 ; 197 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            474 	; #ENR#[114]                			nextBlockX = blockX;
                            475 ;--- end asm ---
   07D4 F6 C8 E4      [ 5]  476 	ldb	_blockX	;, blockX
   07D7 F7 C8 ED      [ 5]  477 	stb	_nextBlockX	;, nextBlockX
                            478 ;----- asm -----
                            479 ; 199 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            480 	; #ENR#[115]                			nextBlockY = blockY + 2;
                            481 ;--- end asm ---
   07DA F6 C8 E5      [ 5]  482 	ldb	_blockY	;, blockY
   07DD CB 02         [ 2]  483 	addb	#2	;,
   07DF F7 C8 EE      [ 5]  484 	stb	_nextBlockY	;, nextBlockY
                            485 ;----- asm -----
                            486 ; 201 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            487 	; #ENR#[116]                			blockOrientation = Standing;
                            488 ;--- end asm ---
   07E2 7F C8 DF      [ 7]  489 	clr	_blockOrientation	; blockOrientation
                            490 ;----- asm -----
                            491 ; 203 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            492 	; #ENR#[117]                			break;
                            493 ;--- end asm ---
   07E5 20 1C         [ 3]  494 	bra	L19	;
   07E7                     495 L34:
                            496 ;----- asm -----
                            497 ; 207 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            498 	; #ENR#[119]                			blockAnimation = height2RisingFront;
                            499 ;--- end asm ---
   07E7 8E 34 17      [ 3]  500 	ldx	#_height2RisingFront	;,
   07EA BF C8 E8      [ 6]  501 	stx	_blockAnimation	;, blockAnimation
                            502 ;----- asm -----
                            503 ; 209 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            504 	; #ENR#[120]                			nextBlockAnimation = height2FallingFront;
                            505 ;--- end asm ---
   07ED 8E 34 2F      [ 3]  506 	ldx	#_height2FallingFront	;,
   07F0 BF C8 EA      [ 6]  507 	stx	_nextBlockAnimation	;, nextBlockAnimation
                            508 ;----- asm -----
                            509 ; 211 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            510 	; #ENR#[121]                			nextBlockX = blockX;
                            511 ;--- end asm ---
   07F3 F6 C8 E4      [ 5]  512 	ldb	_blockX	;, blockX
   07F6 F7 C8 ED      [ 5]  513 	stb	_nextBlockX	;, nextBlockX
                            514 ;----- asm -----
                            515 ; 213 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            516 	; #ENR#[122]                			nextBlockY = blockY - 1;
                            517 ;--- end asm ---
   07F9 F6 C8 E5      [ 5]  518 	ldb	_blockY	;, blockY
   07FC 5A            [ 2]  519 	decb	;
   07FD F7 C8 EE      [ 5]  520 	stb	_nextBlockY	;, nextBlockY
                            521 ;----- asm -----
                            522 ; 215 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            523 	; #ENR#[123]                			blockOrientation = Standing;
                            524 ;--- end asm ---
   0800 7F C8 DF      [ 7]  525 	clr	_blockOrientation	; blockOrientation
                            526 ;----- asm -----
                            527 ; 217 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            528 	; #ENR#[124]                			break;
                            529 ;--- end asm ---
   0803                     530 L19:
                            531 ;----- asm -----
                            532 ; 220 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            533 	; #ENR#[126]            		break;
                            534 ;--- end asm ---
   0803 16 00 87      [ 5]  535 	lbra	L29	;
   0806                     536 L32:
                            537 ;----- asm -----
                            538 ; 224 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            539 	; #ENR#[128]            		switch (move) {
                            540 ;--- end asm ---
   0806 E6 E4         [ 4]  541 	ldb	,s	;, move
   0808 C1 01         [ 2]  542 	cmpb	#1	;cmpqi:	;,
   080A 10 27 00 4E   [ 6]  543 	lbeq	L26	;
   080E 25 0D         [ 3]  544 	blo	L25	;
   0810 C1 02         [ 2]  545 	cmpb	#2	;cmpqi:	;,
   0812 27 28         [ 3]  546 	beq	L27	;
   0814 C1 03         [ 2]  547 	cmpb	#3	;cmpqi:	;,
   0816 10 26 00 73   [ 6]  548 	lbne	L24	;
   081A 16 00 57      [ 5]  549 	lbra	L35	;
   081D                     550 L25:
                            551 ;----- asm -----
                            552 ; 228 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            553 	; #ENR#[130]                			blockAnimation = height2RisingLeft;
                            554 ;--- end asm ---
   081D 8E 33 E7      [ 3]  555 	ldx	#_height2RisingLeft	;,
   0820 BF C8 E8      [ 6]  556 	stx	_blockAnimation	;, blockAnimation
                            557 ;----- asm -----
                            558 ; 230 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            559 	; #ENR#[131]                			nextBlockAnimation = height2FallingRight;
                            560 ;--- end asm ---
   0823 8E 33 CF      [ 3]  561 	ldx	#_height2FallingRight	;,
   0826 BF C8 EA      [ 6]  562 	stx	_nextBlockAnimation	;, nextBlockAnimation
                            563 ;----- asm -----
                            564 ; 232 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            565 	; #ENR#[132]                			nextBlockX = blockX - 1;
                            566 ;--- end asm ---
   0829 F6 C8 E4      [ 5]  567 	ldb	_blockX	;, blockX
   082C 5A            [ 2]  568 	decb	;
   082D F7 C8 ED      [ 5]  569 	stb	_nextBlockX	;, nextBlockX
                            570 ;----- asm -----
                            571 ; 234 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            572 	; #ENR#[133]                			nextBlockY = blockY;
                            573 ;--- end asm ---
   0830 F6 C8 E5      [ 5]  574 	ldb	_blockY	;, blockY
   0833 F7 C8 EE      [ 5]  575 	stb	_nextBlockY	;, nextBlockY
                            576 ;----- asm -----
                            577 ; 236 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            578 	; #ENR#[134]                			blockOrientation = Standing;
                            579 ;--- end asm ---
   0836 7F C8 DF      [ 7]  580 	clr	_blockOrientation	; blockOrientation
                            581 ;----- asm -----
                            582 ; 238 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            583 	; #ENR#[135]                			break;
                            584 ;--- end asm ---
   0839 16 00 51      [ 5]  585 	lbra	L24	;
   083C                     586 L27:
                            587 ;----- asm -----
                            588 ; 242 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            589 	; #ENR#[137]                			blockAnimation = height2RisingRight;
                            590 ;--- end asm ---
   083C 8E 33 B7      [ 3]  591 	ldx	#_height2RisingRight	;,
   083F BF C8 E8      [ 6]  592 	stx	_blockAnimation	;, blockAnimation
                            593 ;----- asm -----
                            594 ; 244 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            595 	; #ENR#[138]                			nextBlockAnimation = height2FallingLeft;
                            596 ;--- end asm ---
   0842 8E 33 9F      [ 3]  597 	ldx	#_height2FallingLeft	;,
   0845 BF C8 EA      [ 6]  598 	stx	_nextBlockAnimation	;, nextBlockAnimation
                            599 ;----- asm -----
                            600 ; 246 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            601 	; #ENR#[139]                			nextBlockX = blockX + 2;
                            602 ;--- end asm ---
   0848 F6 C8 E4      [ 5]  603 	ldb	_blockX	;, blockX
   084B CB 02         [ 2]  604 	addb	#2	;,
   084D F7 C8 ED      [ 5]  605 	stb	_nextBlockX	;, nextBlockX
                            606 ;----- asm -----
                            607 ; 248 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            608 	; #ENR#[140]                			nextBlockY = blockY;
                            609 ;--- end asm ---
   0850 F6 C8 E5      [ 5]  610 	ldb	_blockY	;, blockY
   0853 F7 C8 EE      [ 5]  611 	stb	_nextBlockY	;, nextBlockY
                            612 ;----- asm -----
                            613 ; 250 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            614 	; #ENR#[141]                			blockOrientation = Standing;
                            615 ;--- end asm ---
   0856 7F C8 DF      [ 7]  616 	clr	_blockOrientation	; blockOrientation
                            617 ;----- asm -----
                            618 ; 252 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            619 	; #ENR#[142]                			break;
                            620 ;--- end asm ---
   0859 16 00 31      [ 5]  621 	lbra	L24	;
   085C                     622 L26:
                            623 ;----- asm -----
                            624 ; 256 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            625 	; #ENR#[144]                			blockAnimation = width2RollingBack;
                            626 ;--- end asm ---
   085C 8E 34 A7      [ 3]  627 	ldx	#_width2RollingBack	; tmp58,
   085F BF C8 E8      [ 6]  628 	stx	_blockAnimation	; tmp58, blockAnimation
                            629 ;----- asm -----
                            630 ; 258 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            631 	; #ENR#[145]                			nextBlockAnimation = width2RollingBack;
                            632 ;--- end asm ---
   0862 BF C8 EA      [ 6]  633 	stx	_nextBlockAnimation	; tmp58, nextBlockAnimation
                            634 ;----- asm -----
                            635 ; 260 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            636 	; #ENR#[146]                			nextBlockX = blockX;
                            637 ;--- end asm ---
   0865 F6 C8 E4      [ 5]  638 	ldb	_blockX	;, blockX
   0868 F7 C8 ED      [ 5]  639 	stb	_nextBlockX	;, nextBlockX
                            640 ;----- asm -----
                            641 ; 262 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            642 	; #ENR#[147]                			nextBlockY = blockY + 1;
                            643 ;--- end asm ---
   086B F6 C8 E5      [ 5]  644 	ldb	_blockY	;, blockY
   086E 5C            [ 2]  645 	incb	;
   086F F7 C8 EE      [ 5]  646 	stb	_nextBlockY	;, nextBlockY
                            647 ;----- asm -----
                            648 ; 264 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            649 	; #ENR#[148]                			break;
                            650 ;--- end asm ---
   0872 20 19         [ 3]  651 	bra	L24	;
   0874                     652 L35:
                            653 ;----- asm -----
                            654 ; 268 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            655 	; #ENR#[150]                			blockAnimation = width2RollingFront;
                            656 ;--- end asm ---
   0874 8E 34 8F      [ 3]  657 	ldx	#_width2RollingFront	;,
   0877 BF C8 E8      [ 6]  658 	stx	_blockAnimation	;, blockAnimation
                            659 ;----- asm -----
                            660 ; 270 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            661 	; #ENR#[151]                			nextBlockAnimation = width2RollingBack;
                            662 ;--- end asm ---
   087A 8E 34 A7      [ 3]  663 	ldx	#_width2RollingBack	;,
   087D BF C8 EA      [ 6]  664 	stx	_nextBlockAnimation	;, nextBlockAnimation
                            665 ;----- asm -----
                            666 ; 272 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            667 	; #ENR#[152]                			nextBlockX = blockX;
                            668 ;--- end asm ---
   0880 F6 C8 E4      [ 5]  669 	ldb	_blockX	;, blockX
   0883 F7 C8 ED      [ 5]  670 	stb	_nextBlockX	;, nextBlockX
                            671 ;----- asm -----
                            672 ; 274 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            673 	; #ENR#[153]                			nextBlockY = blockY - 1;
                            674 ;--- end asm ---
   0886 F6 C8 E5      [ 5]  675 	ldb	_blockY	;, blockY
   0889 5A            [ 2]  676 	decb	;
   088A F7 C8 EE      [ 5]  677 	stb	_nextBlockY	;, nextBlockY
                            678 ;----- asm -----
                            679 ; 276 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            680 	; #ENR#[154]                			break;
                            681 ;--- end asm ---
   088D                     682 L24:
                            683 ;----- asm -----
                            684 ; 279 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            685 	; #ENR#[156]            		break;
                            686 ;--- end asm ---
   088D                     687 L29:
   088D 32 61         [ 5]  688 	leas	1,s	;,,
   088F 39            [ 5]  689 	rts
                            690 	.globl	_doBlockAnimation
   0890                     691 _doBlockAnimation:
                            692 ;----- asm -----
                            693 ; 317 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            694 	; #ENR#[182]	if (blockAnimating) {
                            695 ;--- end asm ---
   0890 7D C8 E2      [ 7]  696 	tst	_blockAnimating	; blockAnimating
   0893 27 23         [ 3]  697 	beq	L38	;
                            698 ;----- asm -----
                            699 ; 319 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            700 	; #ENR#[183]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
                            701 ;--- end asm ---
   0895 F6 C8 EC      [ 5]  702 	ldb	_blockAnimationStep	; blockAnimationStep.23, blockAnimationStep
   0898 5C            [ 2]  703 	incb	; blockAnimationStep.23
   0899 F7 C8 EC      [ 5]  704 	stb	_blockAnimationStep	; blockAnimationStep.23, blockAnimationStep
   089C C1 0C         [ 2]  705 	cmpb	#12	;cmpqi:	; blockAnimationStep.23,
   089E 26 18         [ 3]  706 	bne	L38	;
                            707 ;----- asm -----
                            708 ; 321 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            709 	; #ENR#[184]			blockX = nextBlockX;
                            710 ;--- end asm ---
   08A0 F6 C8 ED      [ 5]  711 	ldb	_nextBlockX	;, nextBlockX
   08A3 F7 C8 E4      [ 5]  712 	stb	_blockX	;, blockX
                            713 ;----- asm -----
                            714 ; 323 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            715 	; #ENR#[185]			blockY = nextBlockY;
                            716 ;--- end asm ---
   08A6 F6 C8 EE      [ 5]  717 	ldb	_nextBlockY	;, nextBlockY
   08A9 F7 C8 E5      [ 5]  718 	stb	_blockY	;, blockY
                            719 ;----- asm -----
                            720 ; 325 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            721 	; #ENR#[186]			blockAnimationStep = 0;
                            722 ;--- end asm ---
   08AC 7F C8 EC      [ 7]  723 	clr	_blockAnimationStep	; blockAnimationStep
                            724 ;----- asm -----
                            725 ; 327 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            726 	; #ENR#[187]			blockAnimation = nextBlockAnimation;
                            727 ;--- end asm ---
   08AF BE C8 EA      [ 6]  728 	ldx	_nextBlockAnimation	;, nextBlockAnimation
   08B2 BF C8 E8      [ 6]  729 	stx	_blockAnimation	;, blockAnimation
                            730 ;----- asm -----
                            731 ; 329 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            732 	; #ENR#[188]			blockAnimating = 0;
                            733 ;--- end asm ---
   08B5 7F C8 E2      [ 7]  734 	clr	_blockAnimating	; blockAnimating
   08B8                     735 L38:
   08B8 39            [ 5]  736 	rts
                            737 	.globl	_blockStartLevel
   08B9                     738 _blockStartLevel:
                            739 ;----- asm -----
                            740 ; 337 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            741 	; #ENR#[195]	blockAnimation = height2FallingLeft;
                            742 ;--- end asm ---
   08B9 8E 33 9F      [ 3]  743 	ldx	#_height2FallingLeft	;,
   08BC BF C8 E8      [ 6]  744 	stx	_blockAnimation	;, blockAnimation
                            745 ;----- asm -----
                            746 ; 339 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            747 	; #ENR#[196]	blockAnimationStep = 0;
                            748 ;--- end asm ---
   08BF 7F C8 EC      [ 7]  749 	clr	_blockAnimationStep	; blockAnimationStep
                            750 ;----- asm -----
                            751 ; 341 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            752 	; #ENR#[197]	blockAnimating = 0;
                            753 ;--- end asm ---
   08C2 7F C8 E2      [ 7]  754 	clr	_blockAnimating	; blockAnimating
                            755 ;----- asm -----
                            756 ; 343 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            757 	; #ENR#[198]	blockOrientation = Standing;
                            758 ;--- end asm ---
   08C5 7F C8 DF      [ 7]  759 	clr	_blockOrientation	; blockOrientation
                            760 ;----- asm -----
                            761 ; 345 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            762 	; #ENR#[199]	splitMode = 0;
                            763 ;--- end asm ---
   08C8 7F C8 E3      [ 7]  764 	clr	_splitMode	; splitMode
   08CB 39            [ 5]  765 	rts
                            766 	.globl	_setSplitMode
   08CC                     767 _setSplitMode:
                            768 ;----- asm -----
                            769 ; 351 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            770 	; #ENR#[204]	blockAnimation = height1FallingLeft;
                            771 ;--- end asm ---
   08CC 8E 34 BF      [ 3]  772 	ldx	#_height1FallingLeft	;,
   08CF BF C8 E8      [ 6]  773 	stx	_blockAnimation	;, blockAnimation
                            774 ;----- asm -----
                            775 ; 353 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            776 	; #ENR#[205]	blockOrientation = Standing;
                            777 ;--- end asm ---
   08D2 7F C8 DF      [ 7]  778 	clr	_blockOrientation	; blockOrientation
                            779 ;----- asm -----
                            780 ; 355 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            781 	; #ENR#[206]	splitMode = 1;
                            782 ;--- end asm ---
   08D5 C6 01         [ 2]  783 	ldb	#1	;,
   08D7 F7 C8 E3      [ 5]  784 	stb	_splitMode	;, splitMode
   08DA 39            [ 5]  785 	rts
                            786 	.globl	_testMerge
   08DB                     787 _testMerge:
   08DB 32 7C         [ 5]  788 	leas	-4,s	;,,
                            789 ;----- asm -----
                            790 ; 361 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            791 	; #ENR#[211]	if (blockY == blockY2) {
                            792 ;--- end asm ---
   08DD F6 C8 E5      [ 5]  793 	ldb	_blockY	;, blockY
   08E0 E7 E4         [ 4]  794 	stb	,s	;, blockY.27
   08E2 F6 C8 E7      [ 5]  795 	ldb	_blockY2	;, blockY2
   08E5 E7 61         [ 5]  796 	stb	1,s	;, blockY2.28
   08E7 E6 E4         [ 4]  797 	ldb	,s	;, blockY.27
   08E9 E1 61         [ 5]  798 	cmpb	1,s	;cmpqi:	;, blockY2.28
   08EB 10 26 00 3F   [ 6]  799 	lbne	L44	;
                            800 ;----- asm -----
                            801 ; 363 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            802 	; #ENR#[212]		if (blockX == blockX2 + 1) {
                            803 ;--- end asm ---
   08EF F6 C8 E6      [ 5]  804 	ldb	_blockX2	;, blockX2
   08F2 E7 62         [ 5]  805 	stb	2,s	;, blockX2.29
   08F4 F6 C8 E4      [ 5]  806 	ldb	_blockX	;, blockX
   08F7 E7 63         [ 5]  807 	stb	3,s	;, blockX.30
   08F9 E6 62         [ 5]  808 	ldb	2,s	; tmp31, blockX2.29
   08FB 5C            [ 2]  809 	incb	; tmp31
   08FC E1 63         [ 5]  810 	cmpb	3,s	;cmpqi:	; tmp31, blockX.30
   08FE 26 14         [ 3]  811 	bne	L45	;
                            812 ;----- asm -----
                            813 ; 365 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            814 	; #ENR#[213]			blockAnimation = width2RollingFront;
                            815 ;--- end asm ---
   0900 8E 34 8F      [ 3]  816 	ldx	#_width2RollingFront	;,
   0903 BF C8 E8      [ 6]  817 	stx	_blockAnimation	;, blockAnimation
                            818 ;----- asm -----
                            819 ; 367 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            820 	; #ENR#[214]			blockOrientation = Horizontal;
                            821 ;--- end asm ---
   0906 C6 02         [ 2]  822 	ldb	#2	;,
   0908 F7 C8 DF      [ 5]  823 	stb	_blockOrientation	;, blockOrientation
                            824 ;----- asm -----
                            825 ; 369 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            826 	; #ENR#[215]			blockX--;
                            827 ;--- end asm ---
   090B 7A C8 E4      [ 7]  828 	dec	_blockX	; blockX
                            829 ;----- asm -----
                            830 ; 371 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            831 	; #ENR#[216]			splitMode = 0;
                            832 ;--- end asm ---
   090E 7F C8 E3      [ 7]  833 	clr	_splitMode	; splitMode
   0911 16 00 56      [ 5]  834 	lbra	L48	;
   0914                     835 L45:
   0914 E6 62         [ 5]  836 	ldb	2,s	; tmp33, blockX2.29
   0916 5A            [ 2]  837 	decb	; tmp33
   0917 E1 63         [ 5]  838 	cmpb	3,s	;cmpqi:(R)	; tmp33, blockX.30
   0919 10 26 00 4D   [ 6]  839 	lbne	L48	;
                            840 ;----- asm -----
                            841 ; 374 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            842 	; #ENR#[218]			blockAnimation = width2RollingFront;
                            843 ;--- end asm ---
   091D 8E 34 8F      [ 3]  844 	ldx	#_width2RollingFront	;,
   0920 BF C8 E8      [ 6]  845 	stx	_blockAnimation	;, blockAnimation
                            846 ;----- asm -----
                            847 ; 376 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            848 	; #ENR#[219]			blockOrientation = Horizontal;
                            849 ;--- end asm ---
   0923 C6 02         [ 2]  850 	ldb	#2	;,
   0925 F7 C8 DF      [ 5]  851 	stb	_blockOrientation	;, blockOrientation
                            852 ;----- asm -----
                            853 ; 378 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            854 	; #ENR#[220]			splitMode = 0;
                            855 ;--- end asm ---
   0928 7F C8 E3      [ 7]  856 	clr	_splitMode	; splitMode
   092B 16 00 3C      [ 5]  857 	lbra	L48	;
   092E                     858 L44:
   092E F6 C8 E4      [ 5]  859 	ldb	_blockX	;, blockX
   0931 F1 C8 E6      [ 5]  860 	cmpb	_blockX2	;cmpqi:	;, blockX2
   0934 10 26 00 32   [ 6]  861 	lbne	L48	;
                            862 ;----- asm -----
                            863 ; 382 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            864 	; #ENR#[223]		if (blockY == blockY2 + 1) {
                            865 ;--- end asm ---
   0938 E6 61         [ 5]  866 	ldb	1,s	; tmp35, blockY2.28
   093A 5C            [ 2]  867 	incb	; tmp35
   093B E1 E4         [ 4]  868 	cmpb	,s	;cmpqi:(R)	; tmp35, blockY.27
   093D 26 16         [ 3]  869 	bne	L47	;
                            870 ;----- asm -----
                            871 ; 384 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            872 	; #ENR#[224]			blockAnimation = depth2RollingLeft;
                            873 ;--- end asm ---
   093F 8E 34 5F      [ 3]  874 	ldx	#_depth2RollingLeft	;,
   0942 BF C8 E8      [ 6]  875 	stx	_blockAnimation	;, blockAnimation
                            876 ;----- asm -----
                            877 ; 386 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            878 	; #ENR#[225]			blockOrientation = Vertical;
                            879 ;--- end asm ---
   0945 C6 01         [ 2]  880 	ldb	#1	;,
   0947 F7 C8 DF      [ 5]  881 	stb	_blockOrientation	;, blockOrientation
                            882 ;----- asm -----
                            883 ; 388 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            884 	; #ENR#[226]			blockY--;
                            885 ;--- end asm ---
   094A E6 E4         [ 4]  886 	ldb	,s	;, blockY.27
   094C 5A            [ 2]  887 	decb	;
   094D F7 C8 E5      [ 5]  888 	stb	_blockY	;, blockY
                            889 ;----- asm -----
                            890 ; 390 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            891 	; #ENR#[227]			splitMode = 0;
                            892 ;--- end asm ---
   0950 7F C8 E3      [ 7]  893 	clr	_splitMode	; splitMode
   0953 20 15         [ 3]  894 	bra	L48	;
   0955                     895 L47:
   0955 E6 61         [ 5]  896 	ldb	1,s	; tmp37, blockY2.28
   0957 5A            [ 2]  897 	decb	; tmp37
   0958 E1 E4         [ 4]  898 	cmpb	,s	;cmpqi:(R)	; tmp37, blockY.27
   095A 26 0E         [ 3]  899 	bne	L48	;
                            900 ;----- asm -----
                            901 ; 393 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            902 	; #ENR#[229]			blockAnimation = depth2RollingLeft;
                            903 ;--- end asm ---
   095C 8E 34 5F      [ 3]  904 	ldx	#_depth2RollingLeft	;,
   095F BF C8 E8      [ 6]  905 	stx	_blockAnimation	;, blockAnimation
                            906 ;----- asm -----
                            907 ; 395 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            908 	; #ENR#[230]			blockOrientation = Vertical;;
                            909 ;--- end asm ---
   0962 C6 01         [ 2]  910 	ldb	#1	;,
   0964 F7 C8 DF      [ 5]  911 	stb	_blockOrientation	;, blockOrientation
                            912 ;----- asm -----
                            913 ; 397 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            914 	; #ENR#[231]			splitMode = 0;
                            915 ;--- end asm ---
   0967 7F C8 E3      [ 7]  916 	clr	_splitMode	; splitMode
   096A                     917 L48:
   096A 32 64         [ 5]  918 	leas	4,s	;,,
   096C 39            [ 5]  919 	rts
                            920 	.globl	_swapSplit
   096D                     921 _swapSplit:
   096D 32 7E         [ 5]  922 	leas	-2,s	;,,
                            923 ;----- asm -----
                            924 ; 405 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            925 	; #ENR#[238]	int8_t xt = blockX;
                            926 ;--- end asm ---
   096F F6 C8 E4      [ 5]  927 	ldb	_blockX	;, blockX
   0972 E7 E4         [ 4]  928 	stb	,s	;, xt
                            929 ;----- asm -----
                            930 ; 407 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            931 	; #ENR#[239]	int8_t yt = blockY;
                            932 ;--- end asm ---
   0974 F6 C8 E5      [ 5]  933 	ldb	_blockY	;, blockY
   0977 E7 61         [ 5]  934 	stb	1,s	;, yt
                            935 ;----- asm -----
                            936 ; 409 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            937 	; #ENR#[240]	blockX = blockX2;
                            938 ;--- end asm ---
   0979 F6 C8 E6      [ 5]  939 	ldb	_blockX2	;, blockX2
   097C F7 C8 E4      [ 5]  940 	stb	_blockX	;, blockX
                            941 ;----- asm -----
                            942 ; 411 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            943 	; #ENR#[241]	blockY = blockY2;
                            944 ;--- end asm ---
   097F F6 C8 E7      [ 5]  945 	ldb	_blockY2	;, blockY2
   0982 F7 C8 E5      [ 5]  946 	stb	_blockY	;, blockY
                            947 ;----- asm -----
                            948 ; 413 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            949 	; #ENR#[242]	blockX2 = xt;
                            950 ;--- end asm ---
   0985 E6 E4         [ 4]  951 	ldb	,s	;, xt
   0987 F7 C8 E6      [ 5]  952 	stb	_blockX2	;, blockX2
                            953 ;----- asm -----
                            954 ; 415 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            955 	; #ENR#[243]	blockY2 = yt;
                            956 ;--- end asm ---
   098A E6 61         [ 5]  957 	ldb	1,s	;, yt
   098C F7 C8 E7      [ 5]  958 	stb	_blockY2	;, blockY2
   098F 32 62         [ 5]  959 	leas	2,s	;,,
   0991 39            [ 5]  960 	rts
                            961 	.globl	_drawBlock
   0992                     962 _drawBlock:
   0992 34 40         [ 6]  963 	pshs	u	;
   0994 32 78         [ 5]  964 	leas	-8,s	;,,
   0996 E7 62         [ 5]  965 	stb	2,s	; yofs, yofs
                            966 ;----- asm -----
                            967 ; 287 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            968 	; #ENR#[163]	zergnd();
                            969 ; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0998 BD F3 54      [ 8]  970 	jsr ___Reset0Ref; BIOS call
                            971 ; 289 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            972 	; #ENR#[164]	intens(0x63);
                            973 ;--- end asm ---
   099B C6 63         [ 2]  974 	ldb	#99	;,
   099D E7 65         [ 5]  975 	stb	5,s	;, a
                            976 ;----- asm -----
                            977 ; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   099F A6 65         [ 5]  978 	lda 5,s	; a
   09A1 BD F2 AB      [ 8]  979 	jsr ___Intensity_a; BIOS call
                            980 ; 291 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            981 	; #ENR#[165]	positd(0, yofs);
                            982 ;--- end asm ---
   09A4 C6 80         [ 2]  983 	ldb	#-128	;,
   09A6 D7 04         [ 4]  984 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   09A8 E6 62         [ 5]  985 	ldb	2,s	;, yofs
   09AA E7 67         [ 5]  986 	stb	7,s	;, a
   09AC 6F 65         [ 7]  987 	clr	5,s	; b
                            988 ;----- asm -----
                            989 ; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   09AE A6 67         [ 5]  990 	lda 7,s	; a
   09B0 E6 65         [ 5]  991 	ldb 5,s	; b
   09B2 BD F3 12      [ 8]  992 	jsr ___Moveto_d; BIOS call
                            993 ; 294 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                            994 	; #ENR#[167]	positd(x3d(blockX, blockY), y3d(blockX, 0, blockY));
                            995 ;--- end asm ---
   09B5 F6 C8 E5      [ 5]  996 	ldb	_blockY	;, blockY
   09B8 E7 E2         [ 6]  997 	stb	,-s	;,
   09BA 6F E2         [ 8]  998 	clr	,-s	;
   09BC F6 C8 E4      [ 5]  999 	ldb	_blockX	;, blockX
   09BF BD 3E C3      [ 8] 1000 	jsr	_y3d
   09C2 E7 65         [ 5] 1001 	stb	5,s	;, D.2447
   09C4 F6 C8 E5      [ 5] 1002 	ldb	_blockY	;, blockY
   09C7 E7 E2         [ 6] 1003 	stb	,-s	;,
   09C9 F6 C8 E4      [ 5] 1004 	ldb	_blockX	;, blockX
   09CC BD 3E A2      [ 8] 1005 	jsr	_x3d
   09CF E7 6A         [ 5] 1006 	stb	10,s	;, b
   09D1 C6 80         [ 2] 1007 	ldb	#-128	;,
   09D3 D7 04         [ 4] 1008 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   09D5 E6 66         [ 5] 1009 	ldb	6,s	;, D.2447
   09D7 E7 68         [ 5] 1010 	stb	8,s	;, a
                           1011 ;----- asm -----
                           1012 ; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   09D9 A6 68         [ 5] 1013 	lda 8,s	; a
   09DB E6 6A         [ 5] 1014 	ldb 10,s	; b
   09DD BD F3 12      [ 8] 1015 	jsr ___Moveto_d; BIOS call
                           1016 ; 296 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                           1017 	; #ENR#[168]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           1018 ;--- end asm ---
   09E0 F6 C8 EC      [ 5] 1019 	ldb	_blockAnimationStep	;, blockAnimationStep
   09E3 1D            [ 2] 1020 	sex		;extendqihi2: R:b -> R:d	;,
   09E4 ED 63         [ 6] 1021 	std	3,s	;,
   09E6 58            [ 2] 1022 	aslb	;
   09E7 49            [ 2] 1023 	rola	;
   09E8 FE C8 E8      [ 6] 1024 	ldu	_blockAnimation	;, blockAnimation
   09EB 30 CB         [ 8] 1025 	leax	d,u	; tmp37, tmp36,
   09ED AE 84         [ 5] 1026 	ldx	,x	; D.2454,
   09EF C6 80         [ 2] 1027 	ldb	#-128	;,
   09F1 D7 04         [ 4] 1028 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
                           1029 ; Applied peep: 2 (no load after store)
                           1030 ;----- asm -----
                           1031 ; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   09F3 AF 68         [ 6] 1032 	stx	8,s	; D.2454, x
                           1033 ; ORG>	stx	8,s	; D.2454, x
                           1034 ; ORG>;----- asm -----
                           1035 ; ORG>; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
                           1036 ; ORG>	ldx 8,s	; x
   09F5 BD F4 10      [ 8] 1037 	jsr ___Draw_VLp; BIOS call
                           1038 ; 300 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                           1039 	; #ENR#[171]	if (splitMode) {
                           1040 ;--- end asm ---
   09F8 32 63         [ 5] 1041 	leas	3,s	;,,
   09FA 7D C8 E3      [ 7] 1042 	tst	_splitMode	; splitMode
   09FD 10 27 00 56   [ 6] 1043 	lbeq	L53	;
                           1044 ;----- asm -----
                           1045 ; 302 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                           1046 	; #ENR#[172]	    	zergnd();
                           1047 ; 181 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0A01 BD F3 54      [ 8] 1048 	jsr ___Reset0Ref; BIOS call
                           1049 ; 304 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                           1050 	; #ENR#[173]	    	intens(0x35);
                           1051 ;--- end asm ---
   0A04 C6 35         [ 2] 1052 	ldb	#53	;,
   0A06 E7 65         [ 5] 1053 	stb	5,s	;, a
                           1054 ;----- asm -----
                           1055 ; 3427 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0A08 A6 65         [ 5] 1056 	lda 5,s	; a
   0A0A BD F2 AB      [ 8] 1057 	jsr ___Intensity_a; BIOS call
                           1058 ; 306 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                           1059 	; #ENR#[174]	    	positd(0, yofs);
                           1060 ;--- end asm ---
   0A0D C6 80         [ 2] 1061 	ldb	#-128	;,
   0A0F D7 04         [ 4] 1062 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   0A11 E6 62         [ 5] 1063 	ldb	2,s	;, yofs
   0A13 E7 67         [ 5] 1064 	stb	7,s	;, a
   0A15 6F 65         [ 7] 1065 	clr	5,s	; b
                           1066 ;----- asm -----
                           1067 ; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0A17 A6 67         [ 5] 1068 	lda 7,s	; a
   0A19 E6 65         [ 5] 1069 	ldb 5,s	; b
   0A1B BD F3 12      [ 8] 1070 	jsr ___Moveto_d; BIOS call
                           1071 ; 308 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                           1072 	; #ENR#[175]	    	positd(x3d(blockX2, blockY2), y3d(blockX2, 0, blockY2));
                           1073 ;--- end asm ---
   0A1E F6 C8 E7      [ 5] 1074 	ldb	_blockY2	;, blockY2
   0A21 E7 E2         [ 6] 1075 	stb	,-s	;,
   0A23 6F E2         [ 8] 1076 	clr	,-s	;
   0A25 F6 C8 E6      [ 5] 1077 	ldb	_blockX2	;, blockX2
   0A28 BD 3E C3      [ 8] 1078 	jsr	_y3d
   0A2B E7 66         [ 5] 1079 	stb	6,s	;, D.2458
   0A2D F6 C8 E7      [ 5] 1080 	ldb	_blockY2	;, blockY2
   0A30 E7 E2         [ 6] 1081 	stb	,-s	;,
   0A32 F6 C8 E6      [ 5] 1082 	ldb	_blockX2	;, blockX2
   0A35 BD 3E A2      [ 8] 1083 	jsr	_x3d
   0A38 E7 6A         [ 5] 1084 	stb	10,s	;, b
   0A3A C6 80         [ 2] 1085 	ldb	#-128	;,
   0A3C D7 04         [ 4] 1086 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   0A3E E6 67         [ 5] 1087 	ldb	7,s	;, D.2458
   0A40 E7 68         [ 5] 1088 	stb	8,s	;, a
                           1089 ;----- asm -----
                           1090 ; 3315 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0A42 A6 68         [ 5] 1091 	lda 8,s	; a
   0A44 E6 6A         [ 5] 1092 	ldb 10,s	; b
   0A46 BD F3 12      [ 8] 1093 	jsr ___Moveto_d; BIOS call
                           1094 ; 310 "C:\data\bloxorz\Vide\source\block.enr.c" 1
                           1095 	; #ENR#[176]	    	pack1x((void*)(height1FallingLeft[0]));
                           1096 ;--- end asm ---
   0A49 C6 80         [ 2] 1097 	ldb	#-128	;,
   0A4B D7 04         [ 4] 1098 	stb	*_dp_VIA_t1_cnt_lo	;, dp_VIA_t1_cnt_lo
   0A4D BE 34 BF      [ 6] 1099 	ldx	_height1FallingLeft	;, height1FallingLeft
                           1100 ; Applied peep: 2 (no load after store)
                           1101 ;----- asm -----
                           1102 ; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
   0A50 AF 68         [ 6] 1103 	stx	8,s	;, x
                           1104 ; ORG>	stx	8,s	;, x
                           1105 ; ORG>;----- asm -----
                           1106 ; ORG>; 1610 "C:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include/vec_rum_inl.h" 1
                           1107 ; ORG>	ldx 8,s	; x
   0A52 BD F4 10      [ 8] 1108 	jsr ___Draw_VLp; BIOS call
                           1109 ;--- end asm ---
   0A55 32 63         [ 5] 1110 	leas	3,s	;,,
   0A57                    1111 L53:
   0A57 32 68         [ 5] 1112 	leas	8,s	;,,
   0A59 35 C0         [ 7] 1113 	puls	u,pc	;
                           1114 	.globl	_height2FallingLeft0
   0A5B                    1115 _height2FallingLeft0:
   0A5B FF                 1116 	.byte	-1
   0A5C 03                 1117 	.byte	3
   0A5D 0E                 1118 	.byte	14
   0A5E FF                 1119 	.byte	-1
   0A5F 08                 1120 	.byte	8
   0A60 FA                 1121 	.byte	-6
   0A61 FF                 1122 	.byte	-1
   0A62 FD                 1123 	.byte	-3
   0A63 F3                 1124 	.byte	-13
   0A64 FF                 1125 	.byte	-1
   0A65 F8                 1126 	.byte	-8
   0A66 05                 1127 	.byte	5
   0A67 FF                 1128 	.byte	-1
   0A68 1A                 1129 	.byte	26
   0A69 00                 1130 	.byte	0
   0A6A 00                 1131 	.byte	0
   0A6B E9                 1132 	.byte	-23
   0A6C 0E                 1133 	.byte	14
   0A6D FF                 1134 	.byte	-1
   0A6E 1A                 1135 	.byte	26
   0A6F 00                 1136 	.byte	0
   0A70 00                 1137 	.byte	0
   0A71 EE                 1138 	.byte	-18
   0A72 FA                 1139 	.byte	-6
   0A73 FF                 1140 	.byte	-1
   0A74 1A                 1141 	.byte	26
   0A75 00                 1142 	.byte	0
   0A76 00                 1143 	.byte	0
   0A77 E3                 1144 	.byte	-29
   0A78 F3                 1145 	.byte	-13
   0A79 FF                 1146 	.byte	-1
   0A7A 1A                 1147 	.byte	26
   0A7B 00                 1148 	.byte	0
   0A7C 00                 1149 	.byte	0
   0A7D F8                 1150 	.byte	-8
   0A7E 05                 1151 	.byte	5
   0A7F FF                 1152 	.byte	-1
   0A80 03                 1153 	.byte	3
   0A81 0E                 1154 	.byte	14
   0A82 FF                 1155 	.byte	-1
   0A83 08                 1156 	.byte	8
   0A84 FA                 1157 	.byte	-6
   0A85 FF                 1158 	.byte	-1
   0A86 FD                 1159 	.byte	-3
   0A87 F3                 1160 	.byte	-13
   0A88 FF                 1161 	.byte	-1
   0A89 F8                 1162 	.byte	-8
   0A8A 05                 1163 	.byte	5
   0A8B 01                 1164 	.byte	1
                           1165 	.globl	_height2RisingRight0
   0A8C                    1166 _height2RisingRight0:
   0A8C 00                 1167 	.byte	0
   0A8D 06                 1168 	.byte	6
   0A8E 1C                 1169 	.byte	28
   0A8F FF                 1170 	.byte	-1
   0A90 0D                 1171 	.byte	13
   0A91 02                 1172 	.byte	2
   0A92 FF                 1173 	.byte	-1
   0A93 08                 1174 	.byte	8
   0A94 FA                 1175 	.byte	-6
   0A95 FF                 1176 	.byte	-1
   0A96 F3                 1177 	.byte	-13
   0A97 FE                 1178 	.byte	-2
   0A98 FF                 1179 	.byte	-1
   0A99 F8                 1180 	.byte	-8
   0A9A 06                 1181 	.byte	6
   0A9B FF                 1182 	.byte	-1
   0A9C FD                 1183 	.byte	-3
   0A9D E4                 1184 	.byte	-28
   0A9E 00                 1185 	.byte	0
   0A9F 10                 1186 	.byte	16
   0AA0 1E                 1187 	.byte	30
   0AA1 FF                 1188 	.byte	-1
   0AA2 FE                 1189 	.byte	-2
   0AA3 E4                 1190 	.byte	-28
   0AA4 00                 1191 	.byte	0
   0AA5 0A                 1192 	.byte	10
   0AA6 16                 1193 	.byte	22
   0AA7 FF                 1194 	.byte	-1
   0AA8 FE                 1195 	.byte	-2
   0AA9 E5                 1196 	.byte	-27
   0AAA 00                 1197 	.byte	0
   0AAB F5                 1198 	.byte	-11
   0AAC 19                 1199 	.byte	25
   0AAD FF                 1200 	.byte	-1
   0AAE FD                 1201 	.byte	-3
   0AAF E5                 1202 	.byte	-27
   0AB0 00                 1203 	.byte	0
   0AB1 F8                 1204 	.byte	-8
   0AB2 05                 1205 	.byte	5
   0AB3 FF                 1206 	.byte	-1
   0AB4 0E                 1207 	.byte	14
   0AB5 02                 1208 	.byte	2
   0AB6 FF                 1209 	.byte	-1
   0AB7 08                 1210 	.byte	8
   0AB8 FB                 1211 	.byte	-5
   0AB9 FF                 1212 	.byte	-1
   0ABA F2                 1213 	.byte	-14
   0ABB FE                 1214 	.byte	-2
   0ABC FF                 1215 	.byte	-1
   0ABD F8                 1216 	.byte	-8
   0ABE 05                 1217 	.byte	5
   0ABF 01                 1218 	.byte	1
                           1219 	.globl	_height2FallingRight0
   0AC0                    1220 _height2FallingRight0:
   0AC0 FF                 1221 	.byte	-1
   0AC1 03                 1222 	.byte	3
   0AC2 0E                 1223 	.byte	14
   0AC3 FF                 1224 	.byte	-1
   0AC4 08                 1225 	.byte	8
   0AC5 FA                 1226 	.byte	-6
   0AC6 FF                 1227 	.byte	-1
   0AC7 FD                 1228 	.byte	-3
   0AC8 F3                 1229 	.byte	-13
   0AC9 FF                 1230 	.byte	-1
   0ACA F8                 1231 	.byte	-8
   0ACB 05                 1232 	.byte	5
   0ACC FF                 1233 	.byte	-1
   0ACD 1A                 1234 	.byte	26
   0ACE 00                 1235 	.byte	0
   0ACF 00                 1236 	.byte	0
   0AD0 E9                 1237 	.byte	-23
   0AD1 0E                 1238 	.byte	14
   0AD2 FF                 1239 	.byte	-1
   0AD3 1A                 1240 	.byte	26
   0AD4 00                 1241 	.byte	0
   0AD5 00                 1242 	.byte	0
   0AD6 EE                 1243 	.byte	-18
   0AD7 FA                 1244 	.byte	-6
   0AD8 FF                 1245 	.byte	-1
   0AD9 1A                 1246 	.byte	26
   0ADA 00                 1247 	.byte	0
   0ADB 00                 1248 	.byte	0
   0ADC E3                 1249 	.byte	-29
   0ADD F3                 1250 	.byte	-13
   0ADE FF                 1251 	.byte	-1
   0ADF 1A                 1252 	.byte	26
   0AE0 00                 1253 	.byte	0
   0AE1 00                 1254 	.byte	0
   0AE2 F8                 1255 	.byte	-8
   0AE3 05                 1256 	.byte	5
   0AE4 FF                 1257 	.byte	-1
   0AE5 03                 1258 	.byte	3
   0AE6 0E                 1259 	.byte	14
   0AE7 FF                 1260 	.byte	-1
   0AE8 08                 1261 	.byte	8
   0AE9 FA                 1262 	.byte	-6
   0AEA FF                 1263 	.byte	-1
   0AEB FD                 1264 	.byte	-3
   0AEC F3                 1265 	.byte	-13
   0AED FF                 1266 	.byte	-1
   0AEE F8                 1267 	.byte	-8
   0AEF 05                 1268 	.byte	5
   0AF0 01                 1269 	.byte	1
                           1270 	.globl	_height2RisingLeft0
   0AF1                    1271 _height2RisingLeft0:
   0AF1 00                 1272 	.byte	0
   0AF2 0C                 1273 	.byte	12
   0AF3 FF                 1274 	.byte	-1
   0AF4 FF                 1275 	.byte	-1
   0AF5 F4                 1276 	.byte	-12
   0AF6 01                 1277 	.byte	1
   0AF7 FF                 1278 	.byte	-1
   0AF8 08                 1279 	.byte	8
   0AF9 FB                 1280 	.byte	-5
   0AFA FF                 1281 	.byte	-1
   0AFB 0C                 1282 	.byte	12
   0AFC FE                 1283 	.byte	-2
   0AFD FF                 1284 	.byte	-1
   0AFE F8                 1285 	.byte	-8
   0AFF 06                 1286 	.byte	6
   0B00 FF                 1287 	.byte	-1
   0B01 0A                 1288 	.byte	10
   0B02 1B                 1289 	.byte	27
   0B03 00                 1290 	.byte	0
   0B04 EA                 1291 	.byte	-22
   0B05 E6                 1292 	.byte	-26
   0B06 FF                 1293 	.byte	-1
   0B07 09                 1294 	.byte	9
   0B08 1C                 1295 	.byte	28
   0B09 00                 1296 	.byte	0
   0B0A FF                 1297 	.byte	-1
   0B0B DF                 1298 	.byte	-33
   0B0C FF                 1299 	.byte	-1
   0B0D 09                 1300 	.byte	9
   0B0E 1B                 1301 	.byte	27
   0B0F 00                 1302 	.byte	0
   0B10 03                 1303 	.byte	3
   0B11 E3                 1304 	.byte	-29
   0B12 FF                 1305 	.byte	-1
   0B13 0A                 1306 	.byte	10
   0B14 1B                 1307 	.byte	27
   0B15 00                 1308 	.byte	0
   0B16 F8                 1309 	.byte	-8
   0B17 06                 1310 	.byte	6
   0B18 FF                 1311 	.byte	-1
   0B19 F3                 1312 	.byte	-13
   0B1A 02                 1313 	.byte	2
   0B1B FF                 1314 	.byte	-1
   0B1C 08                 1315 	.byte	8
   0B1D FA                 1316 	.byte	-6
   0B1E FF                 1317 	.byte	-1
   0B1F 0D                 1318 	.byte	13
   0B20 FE                 1319 	.byte	-2
   0B21 FF                 1320 	.byte	-1
   0B22 F8                 1321 	.byte	-8
   0B23 06                 1322 	.byte	6
   0B24 01                 1323 	.byte	1
                           1324 	.globl	_height2FallingBack0
   0B25                    1325 _height2FallingBack0:
   0B25 FF                 1326 	.byte	-1
   0B26 03                 1327 	.byte	3
   0B27 0E                 1328 	.byte	14
   0B28 FF                 1329 	.byte	-1
   0B29 08                 1330 	.byte	8
   0B2A FA                 1331 	.byte	-6
   0B2B FF                 1332 	.byte	-1
   0B2C FD                 1333 	.byte	-3
   0B2D F3                 1334 	.byte	-13
   0B2E FF                 1335 	.byte	-1
   0B2F F8                 1336 	.byte	-8
   0B30 05                 1337 	.byte	5
   0B31 FF                 1338 	.byte	-1
   0B32 1A                 1339 	.byte	26
   0B33 00                 1340 	.byte	0
   0B34 00                 1341 	.byte	0
   0B35 E9                 1342 	.byte	-23
   0B36 0E                 1343 	.byte	14
   0B37 FF                 1344 	.byte	-1
   0B38 1A                 1345 	.byte	26
   0B39 00                 1346 	.byte	0
   0B3A 00                 1347 	.byte	0
   0B3B EE                 1348 	.byte	-18
   0B3C FA                 1349 	.byte	-6
   0B3D FF                 1350 	.byte	-1
   0B3E 1A                 1351 	.byte	26
   0B3F 00                 1352 	.byte	0
   0B40 00                 1353 	.byte	0
   0B41 E3                 1354 	.byte	-29
   0B42 F3                 1355 	.byte	-13
   0B43 FF                 1356 	.byte	-1
   0B44 1A                 1357 	.byte	26
   0B45 00                 1358 	.byte	0
   0B46 00                 1359 	.byte	0
   0B47 F8                 1360 	.byte	-8
   0B48 05                 1361 	.byte	5
   0B49 FF                 1362 	.byte	-1
   0B4A 03                 1363 	.byte	3
   0B4B 0E                 1364 	.byte	14
   0B4C FF                 1365 	.byte	-1
   0B4D 08                 1366 	.byte	8
   0B4E FA                 1367 	.byte	-6
   0B4F FF                 1368 	.byte	-1
   0B50 FD                 1369 	.byte	-3
   0B51 F3                 1370 	.byte	-13
   0B52 FF                 1371 	.byte	-1
   0B53 F8                 1372 	.byte	-8
   0B54 05                 1373 	.byte	5
   0B55 01                 1374 	.byte	1
                           1375 	.globl	_height2RisingFront0
   0B56                    1376 _height2RisingFront0:
   0B56 00                 1377 	.byte	0
   0B57 0C                 1378 	.byte	12
   0B58 01                 1379 	.byte	1
   0B59 FF                 1380 	.byte	-1
   0B5A 03                 1381 	.byte	3
   0B5B 0E                 1382 	.byte	14
   0B5C FF                 1383 	.byte	-1
   0B5D F4                 1384 	.byte	-12
   0B5E FF                 1385 	.byte	-1
   0B5F FF                 1386 	.byte	-1
   0B60 FD                 1387 	.byte	-3
   0B61 F2                 1388 	.byte	-14
   0B62 FF                 1389 	.byte	-1
   0B63 0C                 1390 	.byte	12
   0B64 01                 1391 	.byte	1
   0B65 FF                 1392 	.byte	-1
   0B66 13                 1393 	.byte	19
   0B67 F5                 1394 	.byte	-11
   0B68 00                 1395 	.byte	0
   0B69 F0                 1396 	.byte	-16
   0B6A 19                 1397 	.byte	25
   0B6B FF                 1398 	.byte	-1
   0B6C 13                 1399 	.byte	19
   0B6D F4                 1400 	.byte	-12
   0B6E 00                 1401 	.byte	0
   0B6F E1                 1402 	.byte	-31
   0B70 0B                 1403 	.byte	11
   0B71 FF                 1404 	.byte	-1
   0B72 13                 1405 	.byte	19
   0B73 F4                 1406 	.byte	-12
   0B74 00                 1407 	.byte	0
   0B75 EA                 1408 	.byte	-22
   0B76 FE                 1409 	.byte	-2
   0B77 FF                 1410 	.byte	-1
   0B78 13                 1411 	.byte	19
   0B79 F5                 1412 	.byte	-11
   0B7A 00                 1413 	.byte	0
   0B7B 0C                 1414 	.byte	12
   0B7C 01                 1415 	.byte	1
   0B7D FF                 1416 	.byte	-1
   0B7E 03                 1417 	.byte	3
   0B7F 0D                 1418 	.byte	13
   0B80 FF                 1419 	.byte	-1
   0B81 F4                 1420 	.byte	-12
   0B82 FF                 1421 	.byte	-1
   0B83 FF                 1422 	.byte	-1
   0B84 FD                 1423 	.byte	-3
   0B85 F3                 1424 	.byte	-13
   0B86 FF                 1425 	.byte	-1
   0B87 0C                 1426 	.byte	12
   0B88 01                 1427 	.byte	1
   0B89 01                 1428 	.byte	1
                           1429 	.globl	_height2FallingFront0
   0B8A                    1430 _height2FallingFront0:
   0B8A FF                 1431 	.byte	-1
   0B8B 03                 1432 	.byte	3
   0B8C 0E                 1433 	.byte	14
   0B8D FF                 1434 	.byte	-1
   0B8E 08                 1435 	.byte	8
   0B8F FA                 1436 	.byte	-6
   0B90 FF                 1437 	.byte	-1
   0B91 FD                 1438 	.byte	-3
   0B92 F3                 1439 	.byte	-13
   0B93 FF                 1440 	.byte	-1
   0B94 F8                 1441 	.byte	-8
   0B95 05                 1442 	.byte	5
   0B96 FF                 1443 	.byte	-1
   0B97 1A                 1444 	.byte	26
   0B98 00                 1445 	.byte	0
   0B99 00                 1446 	.byte	0
   0B9A E9                 1447 	.byte	-23
   0B9B 0E                 1448 	.byte	14
   0B9C FF                 1449 	.byte	-1
   0B9D 1A                 1450 	.byte	26
   0B9E 00                 1451 	.byte	0
   0B9F 00                 1452 	.byte	0
   0BA0 EE                 1453 	.byte	-18
   0BA1 FA                 1454 	.byte	-6
   0BA2 FF                 1455 	.byte	-1
   0BA3 1A                 1456 	.byte	26
   0BA4 00                 1457 	.byte	0
   0BA5 00                 1458 	.byte	0
   0BA6 E3                 1459 	.byte	-29
   0BA7 F3                 1460 	.byte	-13
   0BA8 FF                 1461 	.byte	-1
   0BA9 1A                 1462 	.byte	26
   0BAA 00                 1463 	.byte	0
   0BAB 00                 1464 	.byte	0
   0BAC F8                 1465 	.byte	-8
   0BAD 05                 1466 	.byte	5
   0BAE FF                 1467 	.byte	-1
   0BAF 03                 1468 	.byte	3
   0BB0 0E                 1469 	.byte	14
   0BB1 FF                 1470 	.byte	-1
   0BB2 08                 1471 	.byte	8
   0BB3 FA                 1472 	.byte	-6
   0BB4 FF                 1473 	.byte	-1
   0BB5 FD                 1474 	.byte	-3
   0BB6 F3                 1475 	.byte	-13
   0BB7 FF                 1476 	.byte	-1
   0BB8 F8                 1477 	.byte	-8
   0BB9 05                 1478 	.byte	5
   0BBA 01                 1479 	.byte	1
                           1480 	.globl	_height2RisingBack0
   0BBB                    1481 _height2RisingBack0:
   0BBB 00                 1482 	.byte	0
   0BBC 10                 1483 	.byte	16
   0BBD F5                 1484 	.byte	-11
   0BBE FF                 1485 	.byte	-1
   0BBF 03                 1486 	.byte	3
   0BC0 0D                 1487 	.byte	13
   0BC1 FF                 1488 	.byte	-1
   0BC2 0E                 1489 	.byte	14
   0BC3 FF                 1490 	.byte	-1
   0BC4 FF                 1491 	.byte	-1
   0BC5 FD                 1492 	.byte	-3
   0BC6 F3                 1493 	.byte	-13
   0BC7 FF                 1494 	.byte	-1
   0BC8 F2                 1495 	.byte	-14
   0BC9 01                 1496 	.byte	1
   0BCA FF                 1497 	.byte	-1
   0BCB F4                 1498 	.byte	-12
   0BCC 0B                 1499 	.byte	11
   0BCD 00                 1500 	.byte	0
   0BCE 0F                 1501 	.byte	15
   0BCF 02                 1502 	.byte	2
   0BD0 FF                 1503 	.byte	-1
   0BD1 F4                 1504 	.byte	-12
   0BD2 0C                 1505 	.byte	12
   0BD3 00                 1506 	.byte	0
   0BD4 1A                 1507 	.byte	26
   0BD5 F3                 1508 	.byte	-13
   0BD6 FF                 1509 	.byte	-1
   0BD7 F3                 1510 	.byte	-13
   0BD8 0C                 1511 	.byte	12
   0BD9 00                 1512 	.byte	0
   0BDA 0A                 1513 	.byte	10
   0BDB E7                 1514 	.byte	-25
   0BDC FF                 1515 	.byte	-1
   0BDD F3                 1516 	.byte	-13
   0BDE 0C                 1517 	.byte	12
   0BDF 00                 1518 	.byte	0
   0BE0 F3                 1519 	.byte	-13
   0BE1 00                 1520 	.byte	0
   0BE2 FF                 1521 	.byte	-1
   0BE3 03                 1522 	.byte	3
   0BE4 0E                 1523 	.byte	14
   0BE5 FF                 1524 	.byte	-1
   0BE6 0D                 1525 	.byte	13
   0BE7 FF                 1526 	.byte	-1
   0BE8 FF                 1527 	.byte	-1
   0BE9 FD                 1528 	.byte	-3
   0BEA F3                 1529 	.byte	-13
   0BEB FF                 1530 	.byte	-1
   0BEC F3                 1531 	.byte	-13
   0BED 00                 1532 	.byte	0
   0BEE 01                 1533 	.byte	1
                           1534 	.globl	_depth2RollingLeft0
   0BEF                    1535 _depth2RollingLeft0:
   0BEF FF                 1536 	.byte	-1
   0BF0 03                 1537 	.byte	3
   0BF1 0E                 1538 	.byte	14
   0BF2 FF                 1539 	.byte	-1
   0BF3 10                 1540 	.byte	16
   0BF4 F4                 1541 	.byte	-12
   0BF5 FF                 1542 	.byte	-1
   0BF6 FD                 1543 	.byte	-3
   0BF7 F3                 1544 	.byte	-13
   0BF8 FF                 1545 	.byte	-1
   0BF9 F0                 1546 	.byte	-16
   0BFA 0B                 1547 	.byte	11
   0BFB FF                 1548 	.byte	-1
   0BFC 0D                 1549 	.byte	13
   0BFD 00                 1550 	.byte	0
   0BFE 00                 1551 	.byte	0
   0BFF F6                 1552 	.byte	-10
   0C00 0E                 1553 	.byte	14
   0C01 FF                 1554 	.byte	-1
   0C02 0D                 1555 	.byte	13
   0C03 00                 1556 	.byte	0
   0C04 00                 1557 	.byte	0
   0C05 03                 1558 	.byte	3
   0C06 F4                 1559 	.byte	-12
   0C07 FF                 1560 	.byte	-1
   0C08 0D                 1561 	.byte	13
   0C09 00                 1562 	.byte	0
   0C0A 00                 1563 	.byte	0
   0C0B F0                 1564 	.byte	-16
   0C0C F3                 1565 	.byte	-13
   0C0D FF                 1566 	.byte	-1
   0C0E 0D                 1567 	.byte	13
   0C0F 00                 1568 	.byte	0
   0C10 00                 1569 	.byte	0
   0C11 F0                 1570 	.byte	-16
   0C12 0B                 1571 	.byte	11
   0C13 FF                 1572 	.byte	-1
   0C14 03                 1573 	.byte	3
   0C15 0E                 1574 	.byte	14
   0C16 FF                 1575 	.byte	-1
   0C17 10                 1576 	.byte	16
   0C18 F4                 1577 	.byte	-12
   0C19 FF                 1578 	.byte	-1
   0C1A FD                 1579 	.byte	-3
   0C1B F3                 1580 	.byte	-13
   0C1C FF                 1581 	.byte	-1
   0C1D F0                 1582 	.byte	-16
   0C1E 0B                 1583 	.byte	11
   0C1F 01                 1584 	.byte	1
                           1585 	.globl	_depth2RollingRight0
   0C20                    1586 _depth2RollingRight0:
   0C20 FF                 1587 	.byte	-1
   0C21 03                 1588 	.byte	3
   0C22 0E                 1589 	.byte	14
   0C23 FF                 1590 	.byte	-1
   0C24 10                 1591 	.byte	16
   0C25 F4                 1592 	.byte	-12
   0C26 FF                 1593 	.byte	-1
   0C27 FD                 1594 	.byte	-3
   0C28 F3                 1595 	.byte	-13
   0C29 FF                 1596 	.byte	-1
   0C2A F0                 1597 	.byte	-16
   0C2B 0B                 1598 	.byte	11
   0C2C FF                 1599 	.byte	-1
   0C2D 0D                 1600 	.byte	13
   0C2E 00                 1601 	.byte	0
   0C2F 00                 1602 	.byte	0
   0C30 F6                 1603 	.byte	-10
   0C31 0E                 1604 	.byte	14
   0C32 FF                 1605 	.byte	-1
   0C33 0D                 1606 	.byte	13
   0C34 00                 1607 	.byte	0
   0C35 00                 1608 	.byte	0
   0C36 03                 1609 	.byte	3
   0C37 F4                 1610 	.byte	-12
   0C38 FF                 1611 	.byte	-1
   0C39 0D                 1612 	.byte	13
   0C3A 00                 1613 	.byte	0
   0C3B 00                 1614 	.byte	0
   0C3C F0                 1615 	.byte	-16
   0C3D F3                 1616 	.byte	-13
   0C3E FF                 1617 	.byte	-1
   0C3F 0D                 1618 	.byte	13
   0C40 00                 1619 	.byte	0
   0C41 00                 1620 	.byte	0
   0C42 F0                 1621 	.byte	-16
   0C43 0B                 1622 	.byte	11
   0C44 FF                 1623 	.byte	-1
   0C45 03                 1624 	.byte	3
   0C46 0E                 1625 	.byte	14
   0C47 FF                 1626 	.byte	-1
   0C48 10                 1627 	.byte	16
   0C49 F4                 1628 	.byte	-12
   0C4A FF                 1629 	.byte	-1
   0C4B FD                 1630 	.byte	-3
   0C4C F3                 1631 	.byte	-13
   0C4D FF                 1632 	.byte	-1
   0C4E F0                 1633 	.byte	-16
   0C4F 0B                 1634 	.byte	11
   0C50 01                 1635 	.byte	1
                           1636 	.globl	_width2RollingFront0
   0C51                    1637 _width2RollingFront0:
   0C51 FF                 1638 	.byte	-1
   0C52 06                 1639 	.byte	6
   0C53 1C                 1640 	.byte	28
   0C54 FF                 1641 	.byte	-1
   0C55 08                 1642 	.byte	8
   0C56 FA                 1643 	.byte	-6
   0C57 FF                 1644 	.byte	-1
   0C58 FA                 1645 	.byte	-6
   0C59 E5                 1646 	.byte	-27
   0C5A FF                 1647 	.byte	-1
   0C5B F8                 1648 	.byte	-8
   0C5C 05                 1649 	.byte	5
   0C5D FF                 1650 	.byte	-1
   0C5E 0D                 1651 	.byte	13
   0C5F 00                 1652 	.byte	0
   0C60 00                 1653 	.byte	0
   0C61 F9                 1654 	.byte	-7
   0C62 1C                 1655 	.byte	28
   0C63 FF                 1656 	.byte	-1
   0C64 0D                 1657 	.byte	13
   0C65 00                 1658 	.byte	0
   0C66 00                 1659 	.byte	0
   0C67 FB                 1660 	.byte	-5
   0C68 FA                 1661 	.byte	-6
   0C69 FF                 1662 	.byte	-1
   0C6A 0D                 1663 	.byte	13
   0C6B 00                 1664 	.byte	0
   0C6C 00                 1665 	.byte	0
   0C6D ED                 1666 	.byte	-19
   0C6E E5                 1667 	.byte	-27
   0C6F FF                 1668 	.byte	-1
   0C70 0D                 1669 	.byte	13
   0C71 00                 1670 	.byte	0
   0C72 00                 1671 	.byte	0
   0C73 F8                 1672 	.byte	-8
   0C74 05                 1673 	.byte	5
   0C75 FF                 1674 	.byte	-1
   0C76 06                 1675 	.byte	6
   0C77 1C                 1676 	.byte	28
   0C78 FF                 1677 	.byte	-1
   0C79 08                 1678 	.byte	8
   0C7A FA                 1679 	.byte	-6
   0C7B FF                 1680 	.byte	-1
   0C7C FA                 1681 	.byte	-6
   0C7D E5                 1682 	.byte	-27
   0C7E FF                 1683 	.byte	-1
   0C7F F8                 1684 	.byte	-8
   0C80 05                 1685 	.byte	5
   0C81 01                 1686 	.byte	1
                           1687 	.globl	_width2RollingBack0
   0C82                    1688 _width2RollingBack0:
   0C82 FF                 1689 	.byte	-1
   0C83 06                 1690 	.byte	6
   0C84 1C                 1691 	.byte	28
   0C85 FF                 1692 	.byte	-1
   0C86 08                 1693 	.byte	8
   0C87 FA                 1694 	.byte	-6
   0C88 FF                 1695 	.byte	-1
   0C89 FA                 1696 	.byte	-6
   0C8A E5                 1697 	.byte	-27
   0C8B FF                 1698 	.byte	-1
   0C8C F8                 1699 	.byte	-8
   0C8D 05                 1700 	.byte	5
   0C8E FF                 1701 	.byte	-1
   0C8F 0D                 1702 	.byte	13
   0C90 00                 1703 	.byte	0
   0C91 00                 1704 	.byte	0
   0C92 F9                 1705 	.byte	-7
   0C93 1C                 1706 	.byte	28
   0C94 FF                 1707 	.byte	-1
   0C95 0D                 1708 	.byte	13
   0C96 00                 1709 	.byte	0
   0C97 00                 1710 	.byte	0
   0C98 FB                 1711 	.byte	-5
   0C99 FA                 1712 	.byte	-6
   0C9A FF                 1713 	.byte	-1
   0C9B 0D                 1714 	.byte	13
   0C9C 00                 1715 	.byte	0
   0C9D 00                 1716 	.byte	0
   0C9E ED                 1717 	.byte	-19
   0C9F E5                 1718 	.byte	-27
   0CA0 FF                 1719 	.byte	-1
   0CA1 0D                 1720 	.byte	13
   0CA2 00                 1721 	.byte	0
   0CA3 00                 1722 	.byte	0
   0CA4 F8                 1723 	.byte	-8
   0CA5 05                 1724 	.byte	5
   0CA6 FF                 1725 	.byte	-1
   0CA7 06                 1726 	.byte	6
   0CA8 1C                 1727 	.byte	28
   0CA9 FF                 1728 	.byte	-1
   0CAA 08                 1729 	.byte	8
   0CAB FA                 1730 	.byte	-6
   0CAC FF                 1731 	.byte	-1
   0CAD FA                 1732 	.byte	-6
   0CAE E5                 1733 	.byte	-27
   0CAF FF                 1734 	.byte	-1
   0CB0 F8                 1735 	.byte	-8
   0CB1 05                 1736 	.byte	5
   0CB2 01                 1737 	.byte	1
                           1738 	.globl	_height1FallingLeft0
   0CB3                    1739 _height1FallingLeft0:
   0CB3 FF                 1740 	.byte	-1
   0CB4 03                 1741 	.byte	3
   0CB5 0E                 1742 	.byte	14
   0CB6 FF                 1743 	.byte	-1
   0CB7 08                 1744 	.byte	8
   0CB8 FA                 1745 	.byte	-6
   0CB9 FF                 1746 	.byte	-1
   0CBA FD                 1747 	.byte	-3
   0CBB F3                 1748 	.byte	-13
   0CBC FF                 1749 	.byte	-1
   0CBD F8                 1750 	.byte	-8
   0CBE 05                 1751 	.byte	5
   0CBF FF                 1752 	.byte	-1
   0CC0 0D                 1753 	.byte	13
   0CC1 00                 1754 	.byte	0
   0CC2 00                 1755 	.byte	0
   0CC3 F6                 1756 	.byte	-10
   0CC4 0E                 1757 	.byte	14
   0CC5 FF                 1758 	.byte	-1
   0CC6 0D                 1759 	.byte	13
   0CC7 00                 1760 	.byte	0
   0CC8 00                 1761 	.byte	0
   0CC9 FB                 1762 	.byte	-5
   0CCA FA                 1763 	.byte	-6
   0CCB FF                 1764 	.byte	-1
   0CCC 0D                 1765 	.byte	13
   0CCD 00                 1766 	.byte	0
   0CCE 00                 1767 	.byte	0
   0CCF F0                 1768 	.byte	-16
   0CD0 F3                 1769 	.byte	-13
   0CD1 FF                 1770 	.byte	-1
   0CD2 0D                 1771 	.byte	13
   0CD3 00                 1772 	.byte	0
   0CD4 00                 1773 	.byte	0
   0CD5 F8                 1774 	.byte	-8
   0CD6 05                 1775 	.byte	5
   0CD7 FF                 1776 	.byte	-1
   0CD8 03                 1777 	.byte	3
   0CD9 0E                 1778 	.byte	14
   0CDA FF                 1779 	.byte	-1
   0CDB 08                 1780 	.byte	8
   0CDC FA                 1781 	.byte	-6
   0CDD FF                 1782 	.byte	-1
   0CDE FD                 1783 	.byte	-3
   0CDF F3                 1784 	.byte	-13
   0CE0 FF                 1785 	.byte	-1
   0CE1 F8                 1786 	.byte	-8
   0CE2 05                 1787 	.byte	5
   0CE3 01                 1788 	.byte	1
                           1789 	.globl	_height1FallingRight0
   0CE4                    1790 _height1FallingRight0:
   0CE4 FF                 1791 	.byte	-1
   0CE5 03                 1792 	.byte	3
   0CE6 0E                 1793 	.byte	14
   0CE7 FF                 1794 	.byte	-1
   0CE8 08                 1795 	.byte	8
   0CE9 FA                 1796 	.byte	-6
   0CEA FF                 1797 	.byte	-1
   0CEB FD                 1798 	.byte	-3
   0CEC F3                 1799 	.byte	-13
   0CED FF                 1800 	.byte	-1
   0CEE F8                 1801 	.byte	-8
   0CEF 05                 1802 	.byte	5
   0CF0 FF                 1803 	.byte	-1
   0CF1 0D                 1804 	.byte	13
   0CF2 00                 1805 	.byte	0
   0CF3 00                 1806 	.byte	0
   0CF4 F6                 1807 	.byte	-10
   0CF5 0E                 1808 	.byte	14
   0CF6 FF                 1809 	.byte	-1
   0CF7 0D                 1810 	.byte	13
   0CF8 00                 1811 	.byte	0
   0CF9 00                 1812 	.byte	0
   0CFA FB                 1813 	.byte	-5
   0CFB FA                 1814 	.byte	-6
   0CFC FF                 1815 	.byte	-1
   0CFD 0D                 1816 	.byte	13
   0CFE 00                 1817 	.byte	0
   0CFF 00                 1818 	.byte	0
   0D00 F0                 1819 	.byte	-16
   0D01 F3                 1820 	.byte	-13
   0D02 FF                 1821 	.byte	-1
   0D03 0D                 1822 	.byte	13
   0D04 00                 1823 	.byte	0
   0D05 00                 1824 	.byte	0
   0D06 F8                 1825 	.byte	-8
   0D07 05                 1826 	.byte	5
   0D08 FF                 1827 	.byte	-1
   0D09 03                 1828 	.byte	3
   0D0A 0E                 1829 	.byte	14
   0D0B FF                 1830 	.byte	-1
   0D0C 08                 1831 	.byte	8
   0D0D FA                 1832 	.byte	-6
   0D0E FF                 1833 	.byte	-1
   0D0F FD                 1834 	.byte	-3
   0D10 F3                 1835 	.byte	-13
   0D11 FF                 1836 	.byte	-1
   0D12 F8                 1837 	.byte	-8
   0D13 05                 1838 	.byte	5
   0D14 01                 1839 	.byte	1
                           1840 	.globl	_height1FallingBack0
   0D15                    1841 _height1FallingBack0:
   0D15 FF                 1842 	.byte	-1
   0D16 03                 1843 	.byte	3
   0D17 0E                 1844 	.byte	14
   0D18 FF                 1845 	.byte	-1
   0D19 08                 1846 	.byte	8
   0D1A FA                 1847 	.byte	-6
   0D1B FF                 1848 	.byte	-1
   0D1C FD                 1849 	.byte	-3
   0D1D F3                 1850 	.byte	-13
   0D1E FF                 1851 	.byte	-1
   0D1F F8                 1852 	.byte	-8
   0D20 05                 1853 	.byte	5
   0D21 FF                 1854 	.byte	-1
   0D22 0D                 1855 	.byte	13
   0D23 00                 1856 	.byte	0
   0D24 00                 1857 	.byte	0
   0D25 F6                 1858 	.byte	-10
   0D26 0E                 1859 	.byte	14
   0D27 FF                 1860 	.byte	-1
   0D28 0D                 1861 	.byte	13
   0D29 00                 1862 	.byte	0
   0D2A 00                 1863 	.byte	0
   0D2B FB                 1864 	.byte	-5
   0D2C FA                 1865 	.byte	-6
   0D2D FF                 1866 	.byte	-1
   0D2E 0D                 1867 	.byte	13
   0D2F 00                 1868 	.byte	0
   0D30 00                 1869 	.byte	0
   0D31 F0                 1870 	.byte	-16
   0D32 F3                 1871 	.byte	-13
   0D33 FF                 1872 	.byte	-1
   0D34 0D                 1873 	.byte	13
   0D35 00                 1874 	.byte	0
   0D36 00                 1875 	.byte	0
   0D37 F8                 1876 	.byte	-8
   0D38 05                 1877 	.byte	5
   0D39 FF                 1878 	.byte	-1
   0D3A 03                 1879 	.byte	3
   0D3B 0E                 1880 	.byte	14
   0D3C FF                 1881 	.byte	-1
   0D3D 08                 1882 	.byte	8
   0D3E FA                 1883 	.byte	-6
   0D3F FF                 1884 	.byte	-1
   0D40 FD                 1885 	.byte	-3
   0D41 F3                 1886 	.byte	-13
   0D42 FF                 1887 	.byte	-1
   0D43 F8                 1888 	.byte	-8
   0D44 05                 1889 	.byte	5
   0D45 01                 1890 	.byte	1
                           1891 	.globl	_height1FallingFront0
   0D46                    1892 _height1FallingFront0:
   0D46 FF                 1893 	.byte	-1
   0D47 03                 1894 	.byte	3
   0D48 0E                 1895 	.byte	14
   0D49 FF                 1896 	.byte	-1
   0D4A 08                 1897 	.byte	8
   0D4B FA                 1898 	.byte	-6
   0D4C FF                 1899 	.byte	-1
   0D4D FD                 1900 	.byte	-3
   0D4E F3                 1901 	.byte	-13
   0D4F FF                 1902 	.byte	-1
   0D50 F8                 1903 	.byte	-8
   0D51 05                 1904 	.byte	5
   0D52 FF                 1905 	.byte	-1
   0D53 0D                 1906 	.byte	13
   0D54 00                 1907 	.byte	0
   0D55 00                 1908 	.byte	0
   0D56 F6                 1909 	.byte	-10
   0D57 0E                 1910 	.byte	14
   0D58 FF                 1911 	.byte	-1
   0D59 0D                 1912 	.byte	13
   0D5A 00                 1913 	.byte	0
   0D5B 00                 1914 	.byte	0
   0D5C FB                 1915 	.byte	-5
   0D5D FA                 1916 	.byte	-6
   0D5E FF                 1917 	.byte	-1
   0D5F 0D                 1918 	.byte	13
   0D60 00                 1919 	.byte	0
   0D61 00                 1920 	.byte	0
   0D62 F0                 1921 	.byte	-16
   0D63 F3                 1922 	.byte	-13
   0D64 FF                 1923 	.byte	-1
   0D65 0D                 1924 	.byte	13
   0D66 00                 1925 	.byte	0
   0D67 00                 1926 	.byte	0
   0D68 F8                 1927 	.byte	-8
   0D69 05                 1928 	.byte	5
   0D6A FF                 1929 	.byte	-1
   0D6B 03                 1930 	.byte	3
   0D6C 0E                 1931 	.byte	14
   0D6D FF                 1932 	.byte	-1
   0D6E 08                 1933 	.byte	8
   0D6F FA                 1934 	.byte	-6
   0D70 FF                 1935 	.byte	-1
   0D71 FD                 1936 	.byte	-3
   0D72 F3                 1937 	.byte	-13
   0D73 FF                 1938 	.byte	-1
   0D74 F8                 1939 	.byte	-8
   0D75 05                 1940 	.byte	5
   0D76 01                 1941 	.byte	1
                           1942 	.globl	_height2FallingLeft1
   0D77                    1943 _height2FallingLeft1:
   0D77 FF                 1944 	.byte	-1
   0D78 05                 1945 	.byte	5
   0D79 0E                 1946 	.byte	14
   0D7A FF                 1947 	.byte	-1
   0D7B 08                 1948 	.byte	8
   0D7C FA                 1949 	.byte	-6
   0D7D FF                 1950 	.byte	-1
   0D7E FB                 1951 	.byte	-5
   0D7F F3                 1952 	.byte	-13
   0D80 FF                 1953 	.byte	-1
   0D81 F8                 1954 	.byte	-8
   0D82 05                 1955 	.byte	5
   0D83 FF                 1956 	.byte	-1
   0D84 19                 1957 	.byte	25
   0D85 FD                 1958 	.byte	-3
   0D86 00                 1959 	.byte	0
   0D87 EC                 1960 	.byte	-20
   0D88 11                 1961 	.byte	17
   0D89 FF                 1962 	.byte	-1
   0D8A 19                 1963 	.byte	25
   0D8B FC                 1964 	.byte	-4
   0D8C 00                 1965 	.byte	0
   0D8D EF                 1966 	.byte	-17
   0D8E FE                 1967 	.byte	-2
   0D8F FF                 1968 	.byte	-1
   0D90 19                 1969 	.byte	25
   0D91 FC                 1970 	.byte	-4
   0D92 00                 1971 	.byte	0
   0D93 E2                 1972 	.byte	-30
   0D94 F7                 1973 	.byte	-9
   0D95 FF                 1974 	.byte	-1
   0D96 19                 1975 	.byte	25
   0D97 FC                 1976 	.byte	-4
   0D98 00                 1977 	.byte	0
   0D99 F8                 1978 	.byte	-8
   0D9A 06                 1979 	.byte	6
   0D9B FF                 1980 	.byte	-1
   0D9C 05                 1981 	.byte	5
   0D9D 0D                 1982 	.byte	13
   0D9E FF                 1983 	.byte	-1
   0D9F 08                 1984 	.byte	8
   0DA0 FA                 1985 	.byte	-6
   0DA1 FF                 1986 	.byte	-1
   0DA2 FB                 1987 	.byte	-5
   0DA3 F3                 1988 	.byte	-13
   0DA4 FF                 1989 	.byte	-1
   0DA5 F8                 1990 	.byte	-8
   0DA6 06                 1991 	.byte	6
   0DA7 01                 1992 	.byte	1
                           1993 	.globl	_height2RisingRight1
   0DA8                    1994 _height2RisingRight1:
   0DA8 00                 1995 	.byte	0
   0DA9 06                 1996 	.byte	6
   0DAA 1C                 1997 	.byte	28
   0DAB FF                 1998 	.byte	-1
   0DAC 0D                 1999 	.byte	13
   0DAD 04                 2000 	.byte	4
   0DAE FF                 2001 	.byte	-1
   0DAF 08                 2002 	.byte	8
   0DB0 FA                 2003 	.byte	-6
   0DB1 FF                 2004 	.byte	-1
   0DB2 F3                 2005 	.byte	-13
   0DB3 FC                 2006 	.byte	-4
   0DB4 FF                 2007 	.byte	-1
   0DB5 F8                 2008 	.byte	-8
   0DB6 06                 2009 	.byte	6
   0DB7 FF                 2010 	.byte	-1
   0DB8 01                 2011 	.byte	1
   0DB9 E5                 2012 	.byte	-27
   0DBA 00                 2013 	.byte	0
   0DBB 0C                 2014 	.byte	12
   0DBC 1F                 2015 	.byte	31
   0DBD FF                 2016 	.byte	-1
   0DBE 01                 2017 	.byte	1
   0DBF E5                 2018 	.byte	-27
   0DC0 00                 2019 	.byte	0
   0DC1 07                 2020 	.byte	7
   0DC2 15                 2021 	.byte	21
   0DC3 FF                 2022 	.byte	-1
   0DC4 01                 2023 	.byte	1
   0DC5 E6                 2024 	.byte	-26
   0DC6 00                 2025 	.byte	0
   0DC7 F2                 2026 	.byte	-14
   0DC8 16                 2027 	.byte	22
   0DC9 FF                 2028 	.byte	-1
   0DCA 01                 2029 	.byte	1
   0DCB E6                 2030 	.byte	-26
   0DCC 00                 2031 	.byte	0
   0DCD F8                 2032 	.byte	-8
   0DCE 05                 2033 	.byte	5
   0DCF FF                 2034 	.byte	-1
   0DD0 0D                 2035 	.byte	13
   0DD1 04                 2036 	.byte	4
   0DD2 FF                 2037 	.byte	-1
   0DD3 08                 2038 	.byte	8
   0DD4 FB                 2039 	.byte	-5
   0DD5 FF                 2040 	.byte	-1
   0DD6 F3                 2041 	.byte	-13
   0DD7 FC                 2042 	.byte	-4
   0DD8 FF                 2043 	.byte	-1
   0DD9 F8                 2044 	.byte	-8
   0DDA 05                 2045 	.byte	5
   0DDB 01                 2046 	.byte	1
                           2047 	.globl	_height2FallingRight1
   0DDC                    2048 _height2FallingRight1:
   0DDC 00                 2049 	.byte	0
   0DDD 02                 2050 	.byte	2
   0DDE 00                 2051 	.byte	0
   0DDF FF                 2052 	.byte	-1
   0DE0 01                 2053 	.byte	1
   0DE1 0E                 2054 	.byte	14
   0DE2 FF                 2055 	.byte	-1
   0DE3 08                 2056 	.byte	8
   0DE4 FA                 2057 	.byte	-6
   0DE5 FF                 2058 	.byte	-1
   0DE6 FF                 2059 	.byte	-1
   0DE7 F3                 2060 	.byte	-13
   0DE8 FF                 2061 	.byte	-1
   0DE9 F8                 2062 	.byte	-8
   0DEA 05                 2063 	.byte	5
   0DEB FF                 2064 	.byte	-1
   0DEC 1A                 2065 	.byte	26
   0DED 04                 2066 	.byte	4
   0DEE 00                 2067 	.byte	0
   0DEF E7                 2068 	.byte	-25
   0DF0 0A                 2069 	.byte	10
   0DF1 FF                 2070 	.byte	-1
   0DF2 1B                 2071 	.byte	27
   0DF3 04                 2072 	.byte	4
   0DF4 00                 2073 	.byte	0
   0DF5 ED                 2074 	.byte	-19
   0DF6 F6                 2075 	.byte	-10
   0DF7 FF                 2076 	.byte	-1
   0DF8 1B                 2077 	.byte	27
   0DF9 04                 2078 	.byte	4
   0DFA 00                 2079 	.byte	0
   0DFB E4                 2080 	.byte	-28
   0DFC EF                 2081 	.byte	-17
   0DFD FF                 2082 	.byte	-1
   0DFE 1A                 2083 	.byte	26
   0DFF 04                 2084 	.byte	4
   0E00 00                 2085 	.byte	0
   0E01 F8                 2086 	.byte	-8
   0E02 05                 2087 	.byte	5
   0E03 FF                 2088 	.byte	-1
   0E04 02                 2089 	.byte	2
   0E05 0E                 2090 	.byte	14
   0E06 FF                 2091 	.byte	-1
   0E07 08                 2092 	.byte	8
   0E08 FA                 2093 	.byte	-6
   0E09 FF                 2094 	.byte	-1
   0E0A FE                 2095 	.byte	-2
   0E0B F3                 2096 	.byte	-13
   0E0C FF                 2097 	.byte	-1
   0E0D F8                 2098 	.byte	-8
   0E0E 05                 2099 	.byte	5
   0E0F 01                 2100 	.byte	1
                           2101 	.globl	_height2RisingLeft1
   0E10                    2102 _height2RisingLeft1:
   0E10 00                 2103 	.byte	0
   0E11 0C                 2104 	.byte	12
   0E12 FD                 2105 	.byte	-3
   0E13 FF                 2106 	.byte	-1
   0E14 F4                 2107 	.byte	-12
   0E15 03                 2108 	.byte	3
   0E16 FF                 2109 	.byte	-1
   0E17 08                 2110 	.byte	8
   0E18 FB                 2111 	.byte	-5
   0E19 FF                 2112 	.byte	-1
   0E1A 0C                 2113 	.byte	12
   0E1B FC                 2114 	.byte	-4
   0E1C FF                 2115 	.byte	-1
   0E1D F8                 2116 	.byte	-8
   0E1E 06                 2117 	.byte	6
   0E1F FF                 2118 	.byte	-1
   0E20 0C                 2119 	.byte	12
   0E21 1A                 2120 	.byte	26
   0E22 00                 2121 	.byte	0
   0E23 E8                 2122 	.byte	-24
   0E24 E9                 2123 	.byte	-23
   0E25 FF                 2124 	.byte	-1
   0E26 0D                 2125 	.byte	13
   0E27 1B                 2126 	.byte	27
   0E28 00                 2127 	.byte	0
   0E29 FB                 2128 	.byte	-5
   0E2A E0                 2129 	.byte	-32
   0E2B FF                 2130 	.byte	-1
   0E2C 0D                 2131 	.byte	13
   0E2D 1A                 2132 	.byte	26
   0E2E 00                 2133 	.byte	0
   0E2F FF                 2134 	.byte	-1
   0E30 E2                 2135 	.byte	-30
   0E31 FF                 2136 	.byte	-1
   0E32 0C                 2137 	.byte	12
   0E33 1A                 2138 	.byte	26
   0E34 00                 2139 	.byte	0
   0E35 F8                 2140 	.byte	-8
   0E36 06                 2141 	.byte	6
   0E37 FF                 2142 	.byte	-1
   0E38 F5                 2143 	.byte	-11
   0E39 04                 2144 	.byte	4
   0E3A FF                 2145 	.byte	-1
   0E3B 08                 2146 	.byte	8
   0E3C FA                 2147 	.byte	-6
   0E3D FF                 2148 	.byte	-1
   0E3E 0B                 2149 	.byte	11
   0E3F FC                 2150 	.byte	-4
   0E40 FF                 2151 	.byte	-1
   0E41 F8                 2152 	.byte	-8
   0E42 06                 2153 	.byte	6
   0E43 01                 2154 	.byte	1
                           2155 	.globl	_height2FallingBack1
   0E44                    2156 _height2FallingBack1:
   0E44 00                 2157 	.byte	0
   0E45 02                 2158 	.byte	2
   0E46 00                 2159 	.byte	0
   0E47 FF                 2160 	.byte	-1
   0E48 03                 2161 	.byte	3
   0E49 0E                 2162 	.byte	14
   0E4A FF                 2163 	.byte	-1
   0E4B 06                 2164 	.byte	6
   0E4C FA                 2165 	.byte	-6
   0E4D FF                 2166 	.byte	-1
   0E4E FD                 2167 	.byte	-3
   0E4F F3                 2168 	.byte	-13
   0E50 FF                 2169 	.byte	-1
   0E51 FA                 2170 	.byte	-6
   0E52 05                 2171 	.byte	5
   0E53 FF                 2172 	.byte	-1
   0E54 1C                 2173 	.byte	28
   0E55 FF                 2174 	.byte	-1
   0E56 00                 2175 	.byte	0
   0E57 E7                 2176 	.byte	-25
   0E58 0F                 2177 	.byte	15
   0E59 FF                 2178 	.byte	-1
   0E5A 1C                 2179 	.byte	28
   0E5B FE                 2180 	.byte	-2
   0E5C 00                 2181 	.byte	0
   0E5D EA                 2182 	.byte	-22
   0E5E FC                 2183 	.byte	-4
   0E5F FF                 2184 	.byte	-1
   0E60 1C                 2185 	.byte	28
   0E61 FE                 2186 	.byte	-2
   0E62 00                 2187 	.byte	0
   0E63 E1                 2188 	.byte	-31
   0E64 F5                 2189 	.byte	-11
   0E65 FF                 2190 	.byte	-1
   0E66 1C                 2191 	.byte	28
   0E67 FE                 2192 	.byte	-2
   0E68 00                 2193 	.byte	0
   0E69 FA                 2194 	.byte	-6
   0E6A 06                 2195 	.byte	6
   0E6B FF                 2196 	.byte	-1
   0E6C 03                 2197 	.byte	3
   0E6D 0D                 2198 	.byte	13
   0E6E FF                 2199 	.byte	-1
   0E6F 06                 2200 	.byte	6
   0E70 FA                 2201 	.byte	-6
   0E71 FF                 2202 	.byte	-1
   0E72 FD                 2203 	.byte	-3
   0E73 F3                 2204 	.byte	-13
   0E74 FF                 2205 	.byte	-1
   0E75 FA                 2206 	.byte	-6
   0E76 06                 2207 	.byte	6
   0E77 01                 2208 	.byte	1
                           2209 	.globl	_height2RisingFront1
   0E78                    2210 _height2RisingFront1:
   0E78 00                 2211 	.byte	0
   0E79 0A                 2212 	.byte	10
   0E7A 02                 2213 	.byte	2
   0E7B FF                 2214 	.byte	-1
   0E7C 03                 2215 	.byte	3
   0E7D 0E                 2216 	.byte	14
   0E7E FF                 2217 	.byte	-1
   0E7F F6                 2218 	.byte	-10
   0E80 FE                 2219 	.byte	-2
   0E81 FF                 2220 	.byte	-1
   0E82 FD                 2221 	.byte	-3
   0E83 F2                 2222 	.byte	-14
   0E84 FF                 2223 	.byte	-1
   0E85 0A                 2224 	.byte	10
   0E86 02                 2225 	.byte	2
   0E87 FF                 2226 	.byte	-1
   0E88 17                 2227 	.byte	23
   0E89 F5                 2228 	.byte	-11
   0E8A 00                 2229 	.byte	0
   0E8B EC                 2230 	.byte	-20
   0E8C 19                 2231 	.byte	25
   0E8D FF                 2232 	.byte	-1
   0E8E 17                 2233 	.byte	23
   0E8F F4                 2234 	.byte	-12
   0E90 00                 2235 	.byte	0
   0E91 DF                 2236 	.byte	-33
   0E92 0A                 2237 	.byte	10
   0E93 FF                 2238 	.byte	-1
   0E94 16                 2239 	.byte	22
   0E95 F4                 2240 	.byte	-12
   0E96 00                 2241 	.byte	0
   0E97 E7                 2242 	.byte	-25
   0E98 FE                 2243 	.byte	-2
   0E99 FF                 2244 	.byte	-1
   0E9A 16                 2245 	.byte	22
   0E9B F5                 2246 	.byte	-11
   0E9C 00                 2247 	.byte	0
   0E9D 0B                 2248 	.byte	11
   0E9E 02                 2249 	.byte	2
   0E9F FF                 2250 	.byte	-1
   0EA0 03                 2251 	.byte	3
   0EA1 0D                 2252 	.byte	13
   0EA2 FF                 2253 	.byte	-1
   0EA3 F5                 2254 	.byte	-11
   0EA4 FE                 2255 	.byte	-2
   0EA5 FF                 2256 	.byte	-1
   0EA6 FD                 2257 	.byte	-3
   0EA7 F3                 2258 	.byte	-13
   0EA8 FF                 2259 	.byte	-1
   0EA9 0B                 2260 	.byte	11
   0EAA 02                 2261 	.byte	2
   0EAB 01                 2262 	.byte	1
                           2263 	.globl	_height2FallingFront1
   0EAC                    2264 _height2FallingFront1:
   0EAC FF                 2265 	.byte	-1
   0EAD 03                 2266 	.byte	3
   0EAE 0E                 2267 	.byte	14
   0EAF FF                 2268 	.byte	-1
   0EB0 0A                 2269 	.byte	10
   0EB1 FA                 2270 	.byte	-6
   0EB2 FF                 2271 	.byte	-1
   0EB3 FD                 2272 	.byte	-3
   0EB4 F3                 2273 	.byte	-13
   0EB5 FF                 2274 	.byte	-1
   0EB6 F6                 2275 	.byte	-10
   0EB7 05                 2276 	.byte	5
   0EB8 FF                 2277 	.byte	-1
   0EB9 18                 2278 	.byte	24
   0EBA 02                 2279 	.byte	2
   0EBB 00                 2280 	.byte	0
   0EBC EB                 2281 	.byte	-21
   0EBD 0C                 2282 	.byte	12
   0EBE FF                 2283 	.byte	-1
   0EBF 18                 2284 	.byte	24
   0EC0 02                 2285 	.byte	2
   0EC1 00                 2286 	.byte	0
   0EC2 F2                 2287 	.byte	-14
   0EC3 F8                 2288 	.byte	-8
   0EC4 FF                 2289 	.byte	-1
   0EC5 17                 2290 	.byte	23
   0EC6 02                 2291 	.byte	2
   0EC7 00                 2292 	.byte	0
   0EC8 E6                 2293 	.byte	-26
   0EC9 F1                 2294 	.byte	-15
   0ECA FF                 2295 	.byte	-1
   0ECB 17                 2296 	.byte	23
   0ECC 02                 2297 	.byte	2
   0ECD 00                 2298 	.byte	0
   0ECE F7                 2299 	.byte	-9
   0ECF 05                 2300 	.byte	5
   0ED0 FF                 2301 	.byte	-1
   0ED1 03                 2302 	.byte	3
   0ED2 0E                 2303 	.byte	14
   0ED3 FF                 2304 	.byte	-1
   0ED4 09                 2305 	.byte	9
   0ED5 FA                 2306 	.byte	-6
   0ED6 FF                 2307 	.byte	-1
   0ED7 FD                 2308 	.byte	-3
   0ED8 F3                 2309 	.byte	-13
   0ED9 FF                 2310 	.byte	-1
   0EDA F7                 2311 	.byte	-9
   0EDB 05                 2312 	.byte	5
   0EDC 01                 2313 	.byte	1
                           2314 	.globl	_height2RisingBack1
   0EDD                    2315 _height2RisingBack1:
   0EDD 00                 2316 	.byte	0
   0EDE 10                 2317 	.byte	16
   0EDF F5                 2318 	.byte	-11
   0EE0 FF                 2319 	.byte	-1
   0EE1 03                 2320 	.byte	3
   0EE2 0D                 2321 	.byte	13
   0EE3 FF                 2322 	.byte	-1
   0EE4 0F                 2323 	.byte	15
   0EE5 FE                 2324 	.byte	-2
   0EE6 FF                 2325 	.byte	-1
   0EE7 FD                 2326 	.byte	-3
   0EE8 F3                 2327 	.byte	-13
   0EE9 FF                 2328 	.byte	-1
   0EEA F1                 2329 	.byte	-15
   0EEB 02                 2330 	.byte	2
   0EEC FF                 2331 	.byte	-1
   0EED F7                 2332 	.byte	-9
   0EEE 0B                 2333 	.byte	11
   0EEF 00                 2334 	.byte	0
   0EF0 0C                 2335 	.byte	12
   0EF1 02                 2336 	.byte	2
   0EF2 FF                 2337 	.byte	-1
   0EF3 F7                 2338 	.byte	-9
   0EF4 0C                 2339 	.byte	12
   0EF5 00                 2340 	.byte	0
   0EF6 18                 2341 	.byte	24
   0EF7 F2                 2342 	.byte	-14
   0EF8 FF                 2343 	.byte	-1
   0EF9 F7                 2344 	.byte	-9
   0EFA 0C                 2345 	.byte	12
   0EFB 00                 2346 	.byte	0
   0EFC 06                 2347 	.byte	6
   0EFD E7                 2348 	.byte	-25
   0EFE FF                 2349 	.byte	-1
   0EFF F7                 2350 	.byte	-9
   0F00 0C                 2351 	.byte	12
   0F01 00                 2352 	.byte	0
   0F02 F1                 2353 	.byte	-15
   0F03 01                 2354 	.byte	1
   0F04 FF                 2355 	.byte	-1
   0F05 03                 2356 	.byte	3
   0F06 0E                 2357 	.byte	14
   0F07 FF                 2358 	.byte	-1
   0F08 0F                 2359 	.byte	15
   0F09 FE                 2360 	.byte	-2
   0F0A FF                 2361 	.byte	-1
   0F0B FD                 2362 	.byte	-3
   0F0C F3                 2363 	.byte	-13
   0F0D FF                 2364 	.byte	-1
   0F0E F1                 2365 	.byte	-15
   0F0F 01                 2366 	.byte	1
   0F10 01                 2367 	.byte	1
                           2368 	.globl	_depth2RollingLeft1
   0F11                    2369 _depth2RollingLeft1:
   0F11 FF                 2370 	.byte	-1
   0F12 05                 2371 	.byte	5
   0F13 0E                 2372 	.byte	14
   0F14 FF                 2373 	.byte	-1
   0F15 10                 2374 	.byte	16
   0F16 F4                 2375 	.byte	-12
   0F17 FF                 2376 	.byte	-1
   0F18 FB                 2377 	.byte	-5
   0F19 F3                 2378 	.byte	-13
   0F1A FF                 2379 	.byte	-1
   0F1B F0                 2380 	.byte	-16
   0F1C 0B                 2381 	.byte	11
   0F1D FF                 2382 	.byte	-1
   0F1E 0C                 2383 	.byte	12
   0F1F FF                 2384 	.byte	-1
   0F20 00                 2385 	.byte	0
   0F21 F9                 2386 	.byte	-7
   0F22 0F                 2387 	.byte	15
   0F23 FF                 2388 	.byte	-1
   0F24 0C                 2389 	.byte	12
   0F25 FE                 2390 	.byte	-2
   0F26 00                 2391 	.byte	0
   0F27 04                 2392 	.byte	4
   0F28 F6                 2393 	.byte	-10
   0F29 FF                 2394 	.byte	-1
   0F2A 0C                 2395 	.byte	12
   0F2B FE                 2396 	.byte	-2
   0F2C 00                 2397 	.byte	0
   0F2D EF                 2398 	.byte	-17
   0F2E F5                 2399 	.byte	-11
   0F2F FF                 2400 	.byte	-1
   0F30 0C                 2401 	.byte	12
   0F31 FE                 2402 	.byte	-2
   0F32 00                 2403 	.byte	0
   0F33 F0                 2404 	.byte	-16
   0F34 0C                 2405 	.byte	12
   0F35 FF                 2406 	.byte	-1
   0F36 05                 2407 	.byte	5
   0F37 0D                 2408 	.byte	13
   0F38 FF                 2409 	.byte	-1
   0F39 10                 2410 	.byte	16
   0F3A F4                 2411 	.byte	-12
   0F3B FF                 2412 	.byte	-1
   0F3C FB                 2413 	.byte	-5
   0F3D F3                 2414 	.byte	-13
   0F3E FF                 2415 	.byte	-1
   0F3F F0                 2416 	.byte	-16
   0F40 0C                 2417 	.byte	12
   0F41 01                 2418 	.byte	1
                           2419 	.globl	_depth2RollingRight1
   0F42                    2420 _depth2RollingRight1:
   0F42 00                 2421 	.byte	0
   0F43 02                 2422 	.byte	2
   0F44 00                 2423 	.byte	0
   0F45 FF                 2424 	.byte	-1
   0F46 01                 2425 	.byte	1
   0F47 0E                 2426 	.byte	14
   0F48 FF                 2427 	.byte	-1
   0F49 10                 2428 	.byte	16
   0F4A F4                 2429 	.byte	-12
   0F4B FF                 2430 	.byte	-1
   0F4C FF                 2431 	.byte	-1
   0F4D F3                 2432 	.byte	-13
   0F4E FF                 2433 	.byte	-1
   0F4F F0                 2434 	.byte	-16
   0F50 0B                 2435 	.byte	11
   0F51 FF                 2436 	.byte	-1
   0F52 0D                 2437 	.byte	13
   0F53 02                 2438 	.byte	2
   0F54 00                 2439 	.byte	0
   0F55 F4                 2440 	.byte	-12
   0F56 0C                 2441 	.byte	12
   0F57 FF                 2442 	.byte	-1
   0F58 0D                 2443 	.byte	13
   0F59 02                 2444 	.byte	2
   0F5A 00                 2445 	.byte	0
   0F5B 03                 2446 	.byte	3
   0F5C F2                 2447 	.byte	-14
   0F5D FF                 2448 	.byte	-1
   0F5E 0D                 2449 	.byte	13
   0F5F 02                 2450 	.byte	2
   0F60 00                 2451 	.byte	0
   0F61 F2                 2452 	.byte	-14
   0F62 F1                 2453 	.byte	-15
   0F63 FF                 2454 	.byte	-1
   0F64 0D                 2455 	.byte	13
   0F65 02                 2456 	.byte	2
   0F66 00                 2457 	.byte	0
   0F67 F0                 2458 	.byte	-16
   0F68 0B                 2459 	.byte	11
   0F69 FF                 2460 	.byte	-1
   0F6A 01                 2461 	.byte	1
   0F6B 0E                 2462 	.byte	14
   0F6C FF                 2463 	.byte	-1
   0F6D 10                 2464 	.byte	16
   0F6E F4                 2465 	.byte	-12
   0F6F FF                 2466 	.byte	-1
   0F70 FF                 2467 	.byte	-1
   0F71 F3                 2468 	.byte	-13
   0F72 FF                 2469 	.byte	-1
   0F73 F0                 2470 	.byte	-16
   0F74 0B                 2471 	.byte	11
   0F75 01                 2472 	.byte	1
                           2473 	.globl	_width2RollingFront1
   0F76                    2474 _width2RollingFront1:
   0F76 FF                 2475 	.byte	-1
   0F77 06                 2476 	.byte	6
   0F78 1C                 2477 	.byte	28
   0F79 FF                 2478 	.byte	-1
   0F7A 0A                 2479 	.byte	10
   0F7B FA                 2480 	.byte	-6
   0F7C FF                 2481 	.byte	-1
   0F7D FA                 2482 	.byte	-6
   0F7E E5                 2483 	.byte	-27
   0F7F FF                 2484 	.byte	-1
   0F80 F6                 2485 	.byte	-10
   0F81 05                 2486 	.byte	5
   0F82 FF                 2487 	.byte	-1
   0F83 0C                 2488 	.byte	12
   0F84 01                 2489 	.byte	1
   0F85 00                 2490 	.byte	0
   0F86 FA                 2491 	.byte	-6
   0F87 1B                 2492 	.byte	27
   0F88 FF                 2493 	.byte	-1
   0F89 0C                 2494 	.byte	12
   0F8A 01                 2495 	.byte	1
   0F8B 00                 2496 	.byte	0
   0F8C FE                 2497 	.byte	-2
   0F8D F9                 2498 	.byte	-7
   0F8E FF                 2499 	.byte	-1
   0F8F 0B                 2500 	.byte	11
   0F90 01                 2501 	.byte	1
   0F91 00                 2502 	.byte	0
   0F92 EF                 2503 	.byte	-17
   0F93 E4                 2504 	.byte	-28
   0F94 FF                 2505 	.byte	-1
   0F95 0B                 2506 	.byte	11
   0F96 01                 2507 	.byte	1
   0F97 00                 2508 	.byte	0
   0F98 F7                 2509 	.byte	-9
   0F99 05                 2510 	.byte	5
   0F9A FF                 2511 	.byte	-1
   0F9B 06                 2512 	.byte	6
   0F9C 1C                 2513 	.byte	28
   0F9D FF                 2514 	.byte	-1
   0F9E 09                 2515 	.byte	9
   0F9F FA                 2516 	.byte	-6
   0FA0 FF                 2517 	.byte	-1
   0FA1 FA                 2518 	.byte	-6
   0FA2 E5                 2519 	.byte	-27
   0FA3 FF                 2520 	.byte	-1
   0FA4 F7                 2521 	.byte	-9
   0FA5 05                 2522 	.byte	5
   0FA6 01                 2523 	.byte	1
                           2524 	.globl	_width2RollingBack1
   0FA7                    2525 _width2RollingBack1:
   0FA7 00                 2526 	.byte	0
   0FA8 02                 2527 	.byte	2
   0FA9 00                 2528 	.byte	0
   0FAA FF                 2529 	.byte	-1
   0FAB 06                 2530 	.byte	6
   0FAC 1C                 2531 	.byte	28
   0FAD FF                 2532 	.byte	-1
   0FAE 06                 2533 	.byte	6
   0FAF FA                 2534 	.byte	-6
   0FB0 FF                 2535 	.byte	-1
   0FB1 FA                 2536 	.byte	-6
   0FB2 E5                 2537 	.byte	-27
   0FB3 FF                 2538 	.byte	-1
   0FB4 FA                 2539 	.byte	-6
   0FB5 05                 2540 	.byte	5
   0FB6 FF                 2541 	.byte	-1
   0FB7 0E                 2542 	.byte	14
   0FB8 00                 2543 	.byte	0
   0FB9 00                 2544 	.byte	0
   0FBA F8                 2545 	.byte	-8
   0FBB 1C                 2546 	.byte	28
   0FBC FF                 2547 	.byte	-1
   0FBD 0E                 2548 	.byte	14
   0FBE FF                 2549 	.byte	-1
   0FBF 00                 2550 	.byte	0
   0FC0 F8                 2551 	.byte	-8
   0FC1 FB                 2552 	.byte	-5
   0FC2 FF                 2553 	.byte	-1
   0FC3 0E                 2554 	.byte	14
   0FC4 FF                 2555 	.byte	-1
   0FC5 00                 2556 	.byte	0
   0FC6 EC                 2557 	.byte	-20
   0FC7 E6                 2558 	.byte	-26
   0FC8 FF                 2559 	.byte	-1
   0FC9 0E                 2560 	.byte	14
   0FCA FF                 2561 	.byte	-1
   0FCB 00                 2562 	.byte	0
   0FCC FA                 2563 	.byte	-6
   0FCD 06                 2564 	.byte	6
   0FCE FF                 2565 	.byte	-1
   0FCF 06                 2566 	.byte	6
   0FD0 1B                 2567 	.byte	27
   0FD1 FF                 2568 	.byte	-1
   0FD2 06                 2569 	.byte	6
   0FD3 FA                 2570 	.byte	-6
   0FD4 FF                 2571 	.byte	-1
   0FD5 FA                 2572 	.byte	-6
   0FD6 E5                 2573 	.byte	-27
   0FD7 FF                 2574 	.byte	-1
   0FD8 FA                 2575 	.byte	-6
   0FD9 06                 2576 	.byte	6
   0FDA 01                 2577 	.byte	1
                           2578 	.globl	_height1FallingLeft1
   0FDB                    2579 _height1FallingLeft1:
   0FDB FF                 2580 	.byte	-1
   0FDC 05                 2581 	.byte	5
   0FDD 0E                 2582 	.byte	14
   0FDE FF                 2583 	.byte	-1
   0FDF 08                 2584 	.byte	8
   0FE0 FA                 2585 	.byte	-6
   0FE1 FF                 2586 	.byte	-1
   0FE2 FB                 2587 	.byte	-5
   0FE3 F3                 2588 	.byte	-13
   0FE4 FF                 2589 	.byte	-1
   0FE5 F8                 2590 	.byte	-8
   0FE6 05                 2591 	.byte	5
   0FE7 FF                 2592 	.byte	-1
   0FE8 0C                 2593 	.byte	12
   0FE9 FF                 2594 	.byte	-1
   0FEA 00                 2595 	.byte	0
   0FEB F9                 2596 	.byte	-7
   0FEC 0F                 2597 	.byte	15
   0FED FF                 2598 	.byte	-1
   0FEE 0C                 2599 	.byte	12
   0FEF FE                 2600 	.byte	-2
   0FF0 00                 2601 	.byte	0
   0FF1 FC                 2602 	.byte	-4
   0FF2 FC                 2603 	.byte	-4
   0FF3 FF                 2604 	.byte	-1
   0FF4 0C                 2605 	.byte	12
   0FF5 FE                 2606 	.byte	-2
   0FF6 00                 2607 	.byte	0
   0FF7 EF                 2608 	.byte	-17
   0FF8 F5                 2609 	.byte	-11
   0FF9 FF                 2610 	.byte	-1
   0FFA 0C                 2611 	.byte	12
   0FFB FE                 2612 	.byte	-2
   0FFC 00                 2613 	.byte	0
   0FFD F8                 2614 	.byte	-8
   0FFE 06                 2615 	.byte	6
   0FFF FF                 2616 	.byte	-1
   1000 05                 2617 	.byte	5
   1001 0D                 2618 	.byte	13
   1002 FF                 2619 	.byte	-1
   1003 08                 2620 	.byte	8
   1004 FA                 2621 	.byte	-6
   1005 FF                 2622 	.byte	-1
   1006 FB                 2623 	.byte	-5
   1007 F3                 2624 	.byte	-13
   1008 FF                 2625 	.byte	-1
   1009 F8                 2626 	.byte	-8
   100A 06                 2627 	.byte	6
   100B 01                 2628 	.byte	1
                           2629 	.globl	_height1FallingRight1
   100C                    2630 _height1FallingRight1:
   100C 00                 2631 	.byte	0
   100D 02                 2632 	.byte	2
   100E 00                 2633 	.byte	0
   100F FF                 2634 	.byte	-1
   1010 01                 2635 	.byte	1
   1011 0E                 2636 	.byte	14
   1012 FF                 2637 	.byte	-1
   1013 08                 2638 	.byte	8
   1014 FA                 2639 	.byte	-6
   1015 FF                 2640 	.byte	-1
   1016 FF                 2641 	.byte	-1
   1017 F3                 2642 	.byte	-13
   1018 FF                 2643 	.byte	-1
   1019 F8                 2644 	.byte	-8
   101A 05                 2645 	.byte	5
   101B FF                 2646 	.byte	-1
   101C 0D                 2647 	.byte	13
   101D 02                 2648 	.byte	2
   101E 00                 2649 	.byte	0
   101F F4                 2650 	.byte	-12
   1020 0C                 2651 	.byte	12
   1021 FF                 2652 	.byte	-1
   1022 0D                 2653 	.byte	13
   1023 02                 2654 	.byte	2
   1024 00                 2655 	.byte	0
   1025 FB                 2656 	.byte	-5
   1026 F8                 2657 	.byte	-8
   1027 FF                 2658 	.byte	-1
   1028 0D                 2659 	.byte	13
   1029 02                 2660 	.byte	2
   102A 00                 2661 	.byte	0
   102B F2                 2662 	.byte	-14
   102C F1                 2663 	.byte	-15
   102D FF                 2664 	.byte	-1
   102E 0D                 2665 	.byte	13
   102F 02                 2666 	.byte	2
   1030 00                 2667 	.byte	0
   1031 F8                 2668 	.byte	-8
   1032 05                 2669 	.byte	5
   1033 FF                 2670 	.byte	-1
   1034 01                 2671 	.byte	1
   1035 0E                 2672 	.byte	14
   1036 FF                 2673 	.byte	-1
   1037 08                 2674 	.byte	8
   1038 FA                 2675 	.byte	-6
   1039 FF                 2676 	.byte	-1
   103A FF                 2677 	.byte	-1
   103B F3                 2678 	.byte	-13
   103C FF                 2679 	.byte	-1
   103D F8                 2680 	.byte	-8
   103E 05                 2681 	.byte	5
   103F 01                 2682 	.byte	1
                           2683 	.globl	_height1FallingBack1
   1040                    2684 _height1FallingBack1:
   1040 00                 2685 	.byte	0
   1041 02                 2686 	.byte	2
   1042 00                 2687 	.byte	0
   1043 FF                 2688 	.byte	-1
   1044 03                 2689 	.byte	3
   1045 0E                 2690 	.byte	14
   1046 FF                 2691 	.byte	-1
   1047 06                 2692 	.byte	6
   1048 FA                 2693 	.byte	-6
   1049 FF                 2694 	.byte	-1
   104A FD                 2695 	.byte	-3
   104B F3                 2696 	.byte	-13
   104C FF                 2697 	.byte	-1
   104D FA                 2698 	.byte	-6
   104E 05                 2699 	.byte	5
   104F FF                 2700 	.byte	-1
   1050 0E                 2701 	.byte	14
   1051 00                 2702 	.byte	0
   1052 00                 2703 	.byte	0
   1053 F5                 2704 	.byte	-11
   1054 0E                 2705 	.byte	14
   1055 FF                 2706 	.byte	-1
   1056 0E                 2707 	.byte	14
   1057 FF                 2708 	.byte	-1
   1058 00                 2709 	.byte	0
   1059 F8                 2710 	.byte	-8
   105A FB                 2711 	.byte	-5
   105B FF                 2712 	.byte	-1
   105C 0E                 2713 	.byte	14
   105D FF                 2714 	.byte	-1
   105E 00                 2715 	.byte	0
   105F EF                 2716 	.byte	-17
   1060 F4                 2717 	.byte	-12
   1061 FF                 2718 	.byte	-1
   1062 0E                 2719 	.byte	14
   1063 FF                 2720 	.byte	-1
   1064 00                 2721 	.byte	0
   1065 FA                 2722 	.byte	-6
   1066 06                 2723 	.byte	6
   1067 FF                 2724 	.byte	-1
   1068 03                 2725 	.byte	3
   1069 0D                 2726 	.byte	13
   106A FF                 2727 	.byte	-1
   106B 06                 2728 	.byte	6
   106C FA                 2729 	.byte	-6
   106D FF                 2730 	.byte	-1
   106E FD                 2731 	.byte	-3
   106F F3                 2732 	.byte	-13
   1070 FF                 2733 	.byte	-1
   1071 FA                 2734 	.byte	-6
   1072 06                 2735 	.byte	6
   1073 01                 2736 	.byte	1
                           2737 	.globl	_height1FallingFront1
   1074                    2738 _height1FallingFront1:
   1074 FF                 2739 	.byte	-1
   1075 03                 2740 	.byte	3
   1076 0E                 2741 	.byte	14
   1077 FF                 2742 	.byte	-1
   1078 0A                 2743 	.byte	10
   1079 FA                 2744 	.byte	-6
   107A FF                 2745 	.byte	-1
   107B FD                 2746 	.byte	-3
   107C F3                 2747 	.byte	-13
   107D FF                 2748 	.byte	-1
   107E F6                 2749 	.byte	-10
   107F 05                 2750 	.byte	5
   1080 FF                 2751 	.byte	-1
   1081 0C                 2752 	.byte	12
   1082 01                 2753 	.byte	1
   1083 00                 2754 	.byte	0
   1084 F7                 2755 	.byte	-9
   1085 0D                 2756 	.byte	13
   1086 FF                 2757 	.byte	-1
   1087 0C                 2758 	.byte	12
   1088 01                 2759 	.byte	1
   1089 00                 2760 	.byte	0
   108A FE                 2761 	.byte	-2
   108B F9                 2762 	.byte	-7
   108C FF                 2763 	.byte	-1
   108D 0B                 2764 	.byte	11
   108E 01                 2765 	.byte	1
   108F 00                 2766 	.byte	0
   1090 F2                 2767 	.byte	-14
   1091 F2                 2768 	.byte	-14
   1092 FF                 2769 	.byte	-1
   1093 0B                 2770 	.byte	11
   1094 01                 2771 	.byte	1
   1095 00                 2772 	.byte	0
   1096 F7                 2773 	.byte	-9
   1097 05                 2774 	.byte	5
   1098 FF                 2775 	.byte	-1
   1099 03                 2776 	.byte	3
   109A 0E                 2777 	.byte	14
   109B FF                 2778 	.byte	-1
   109C 09                 2779 	.byte	9
   109D FA                 2780 	.byte	-6
   109E FF                 2781 	.byte	-1
   109F FD                 2782 	.byte	-3
   10A0 F3                 2783 	.byte	-13
   10A1 FF                 2784 	.byte	-1
   10A2 F7                 2785 	.byte	-9
   10A3 05                 2786 	.byte	5
   10A4 01                 2787 	.byte	1
                           2788 	.globl	_height2FallingLeft2
   10A5                    2789 _height2FallingLeft2:
   10A5 FF                 2790 	.byte	-1
   10A6 06                 2791 	.byte	6
   10A7 0E                 2792 	.byte	14
   10A8 FF                 2793 	.byte	-1
   10A9 08                 2794 	.byte	8
   10AA FA                 2795 	.byte	-6
   10AB FF                 2796 	.byte	-1
   10AC FA                 2797 	.byte	-6
   10AD F3                 2798 	.byte	-13
   10AE FF                 2799 	.byte	-1
   10AF F8                 2800 	.byte	-8
   10B0 05                 2801 	.byte	5
   10B1 FF                 2802 	.byte	-1
   10B2 18                 2803 	.byte	24
   10B3 FA                 2804 	.byte	-6
   10B4 00                 2805 	.byte	0
   10B5 EE                 2806 	.byte	-18
   10B6 14                 2807 	.byte	20
   10B7 FF                 2808 	.byte	-1
   10B8 18                 2809 	.byte	24
   10B9 F8                 2810 	.byte	-8
   10BA 00                 2811 	.byte	0
   10BB F0                 2812 	.byte	-16
   10BC 02                 2813 	.byte	2
   10BD FF                 2814 	.byte	-1
   10BE 18                 2815 	.byte	24
   10BF F8                 2816 	.byte	-8
   10C0 00                 2817 	.byte	0
   10C1 E2                 2818 	.byte	-30
   10C2 FB                 2819 	.byte	-5
   10C3 FF                 2820 	.byte	-1
   10C4 18                 2821 	.byte	24
   10C5 F9                 2822 	.byte	-7
   10C6 00                 2823 	.byte	0
   10C7 F8                 2824 	.byte	-8
   10C8 06                 2825 	.byte	6
   10C9 FF                 2826 	.byte	-1
   10CA 06                 2827 	.byte	6
   10CB 0C                 2828 	.byte	12
   10CC FF                 2829 	.byte	-1
   10CD 08                 2830 	.byte	8
   10CE FA                 2831 	.byte	-6
   10CF FF                 2832 	.byte	-1
   10D0 FA                 2833 	.byte	-6
   10D1 F4                 2834 	.byte	-12
   10D2 FF                 2835 	.byte	-1
   10D3 F8                 2836 	.byte	-8
   10D4 06                 2837 	.byte	6
   10D5 01                 2838 	.byte	1
                           2839 	.globl	_height2RisingRight2
   10D6                    2840 _height2RisingRight2:
   10D6 00                 2841 	.byte	0
   10D7 06                 2842 	.byte	6
   10D8 1C                 2843 	.byte	28
   10D9 FF                 2844 	.byte	-1
   10DA 0D                 2845 	.byte	13
   10DB 05                 2846 	.byte	5
   10DC FF                 2847 	.byte	-1
   10DD 08                 2848 	.byte	8
   10DE FA                 2849 	.byte	-6
   10DF FF                 2850 	.byte	-1
   10E0 F3                 2851 	.byte	-13
   10E1 FB                 2852 	.byte	-5
   10E2 FF                 2853 	.byte	-1
   10E3 F8                 2854 	.byte	-8
   10E4 06                 2855 	.byte	6
   10E5 FF                 2856 	.byte	-1
   10E6 04                 2857 	.byte	4
   10E7 E6                 2858 	.byte	-26
   10E8 00                 2859 	.byte	0
   10E9 09                 2860 	.byte	9
   10EA 1F                 2861 	.byte	31
   10EB FF                 2862 	.byte	-1
   10EC 05                 2863 	.byte	5
   10ED E6                 2864 	.byte	-26
   10EE 00                 2865 	.byte	0
   10EF 03                 2866 	.byte	3
   10F0 14                 2867 	.byte	20
   10F1 FF                 2868 	.byte	-1
   10F2 05                 2869 	.byte	5
   10F3 E6                 2870 	.byte	-26
   10F4 00                 2871 	.byte	0
   10F5 EE                 2872 	.byte	-18
   10F6 15                 2873 	.byte	21
   10F7 FF                 2874 	.byte	-1
   10F8 04                 2875 	.byte	4
   10F9 E7                 2876 	.byte	-25
   10FA 00                 2877 	.byte	0
   10FB F8                 2878 	.byte	-8
   10FC 05                 2879 	.byte	5
   10FD FF                 2880 	.byte	-1
   10FE 0E                 2881 	.byte	14
   10FF 05                 2882 	.byte	5
   1100 FF                 2883 	.byte	-1
   1101 08                 2884 	.byte	8
   1102 FA                 2885 	.byte	-6
   1103 FF                 2886 	.byte	-1
   1104 F2                 2887 	.byte	-14
   1105 FC                 2888 	.byte	-4
   1106 FF                 2889 	.byte	-1
   1107 F8                 2890 	.byte	-8
   1108 05                 2891 	.byte	5
   1109 01                 2892 	.byte	1
                           2893 	.globl	_height2FallingRight2
   110A                    2894 _height2FallingRight2:
   110A 00                 2895 	.byte	0
   110B 03                 2896 	.byte	3
   110C 00                 2897 	.byte	0
   110D FF                 2898 	.byte	-1
   110E 00                 2899 	.byte	0
   110F 0E                 2900 	.byte	14
   1110 FF                 2901 	.byte	-1
   1111 08                 2902 	.byte	8
   1112 FA                 2903 	.byte	-6
   1113 FF                 2904 	.byte	-1
   1114 00                 2905 	.byte	0
   1115 F3                 2906 	.byte	-13
   1116 FF                 2907 	.byte	-1
   1117 F8                 2908 	.byte	-8
   1118 05                 2909 	.byte	5
   1119 FF                 2910 	.byte	-1
   111A 1B                 2911 	.byte	27
   111B 08                 2912 	.byte	8
   111C 00                 2913 	.byte	0
   111D E5                 2914 	.byte	-27
   111E 06                 2915 	.byte	6
   111F FF                 2916 	.byte	-1
   1120 1B                 2917 	.byte	27
   1121 07                 2918 	.byte	7
   1122 00                 2919 	.byte	0
   1123 ED                 2920 	.byte	-19
   1124 F3                 2921 	.byte	-13
   1125 FF                 2922 	.byte	-1
   1126 1B                 2923 	.byte	27
   1127 07                 2924 	.byte	7
   1128 00                 2925 	.byte	0
   1129 E5                 2926 	.byte	-27
   112A EC                 2927 	.byte	-20
   112B FF                 2928 	.byte	-1
   112C 1B                 2929 	.byte	27
   112D 07                 2930 	.byte	7
   112E 00                 2931 	.byte	0
   112F F8                 2932 	.byte	-8
   1130 06                 2933 	.byte	6
   1131 FF                 2934 	.byte	-1
   1132 00                 2935 	.byte	0
   1133 0D                 2936 	.byte	13
   1134 FF                 2937 	.byte	-1
   1135 08                 2938 	.byte	8
   1136 FA                 2939 	.byte	-6
   1137 FF                 2940 	.byte	-1
   1138 00                 2941 	.byte	0
   1139 F3                 2942 	.byte	-13
   113A FF                 2943 	.byte	-1
   113B F8                 2944 	.byte	-8
   113C 06                 2945 	.byte	6
   113D 01                 2946 	.byte	1
                           2947 	.globl	_height2RisingLeft2
   113E                    2948 _height2RisingLeft2:
   113E 00                 2949 	.byte	0
   113F 0B                 2950 	.byte	11
   1140 FC                 2951 	.byte	-4
   1141 FF                 2952 	.byte	-1
   1142 F5                 2953 	.byte	-11
   1143 04                 2954 	.byte	4
   1144 FF                 2955 	.byte	-1
   1145 08                 2956 	.byte	8
   1146 FB                 2957 	.byte	-5
   1147 FF                 2958 	.byte	-1
   1148 0B                 2959 	.byte	11
   1149 FB                 2960 	.byte	-5
   114A FF                 2961 	.byte	-1
   114B F8                 2962 	.byte	-8
   114C 06                 2963 	.byte	6
   114D FF                 2964 	.byte	-1
   114E 0F                 2965 	.byte	15
   114F 19                 2966 	.byte	25
   1150 00                 2967 	.byte	0
   1151 E6                 2968 	.byte	-26
   1152 EB                 2969 	.byte	-21
   1153 FF                 2970 	.byte	-1
   1154 0F                 2971 	.byte	15
   1155 1A                 2972 	.byte	26
   1156 00                 2973 	.byte	0
   1157 F9                 2974 	.byte	-7
   1158 E1                 2975 	.byte	-31
   1159 FF                 2976 	.byte	-1
   115A 0F                 2977 	.byte	15
   115B 19                 2978 	.byte	25
   115C 00                 2979 	.byte	0
   115D FC                 2980 	.byte	-4
   115E E2                 2981 	.byte	-30
   115F FF                 2982 	.byte	-1
   1160 0F                 2983 	.byte	15
   1161 19                 2984 	.byte	25
   1162 00                 2985 	.byte	0
   1163 F8                 2986 	.byte	-8
   1164 06                 2987 	.byte	6
   1165 FF                 2988 	.byte	-1
   1166 F5                 2989 	.byte	-11
   1167 05                 2990 	.byte	5
   1168 FF                 2991 	.byte	-1
   1169 08                 2992 	.byte	8
   116A FA                 2993 	.byte	-6
   116B FF                 2994 	.byte	-1
   116C 0B                 2995 	.byte	11
   116D FB                 2996 	.byte	-5
   116E FF                 2997 	.byte	-1
   116F F8                 2998 	.byte	-8
   1170 06                 2999 	.byte	6
   1171 01                 3000 	.byte	1
                           3001 	.globl	_height2FallingBack2
   1172                    3002 _height2FallingBack2:
   1172 00                 3003 	.byte	0
   1173 04                 3004 	.byte	4
   1174 00                 3005 	.byte	0
   1175 FF                 3006 	.byte	-1
   1176 03                 3007 	.byte	3
   1177 0E                 3008 	.byte	14
   1178 FF                 3009 	.byte	-1
   1179 04                 3010 	.byte	4
   117A FA                 3011 	.byte	-6
   117B FF                 3012 	.byte	-1
   117C FD                 3013 	.byte	-3
   117D F3                 3014 	.byte	-13
   117E FF                 3015 	.byte	-1
   117F FC                 3016 	.byte	-4
   1180 05                 3017 	.byte	5
   1181 FF                 3018 	.byte	-1
   1182 1D                 3019 	.byte	29
   1183 FE                 3020 	.byte	-2
   1184 00                 3021 	.byte	0
   1185 E6                 3022 	.byte	-26
   1186 10                 3023 	.byte	16
   1187 FF                 3024 	.byte	-1
   1188 1D                 3025 	.byte	29
   1189 FD                 3026 	.byte	-3
   118A 00                 3027 	.byte	0
   118B E7                 3028 	.byte	-25
   118C FD                 3029 	.byte	-3
   118D FF                 3030 	.byte	-1
   118E 1D                 3031 	.byte	29
   118F FD                 3032 	.byte	-3
   1190 00                 3033 	.byte	0
   1191 E0                 3034 	.byte	-32
   1192 F6                 3035 	.byte	-10
   1193 FF                 3036 	.byte	-1
   1194 1D                 3037 	.byte	29
   1195 FD                 3038 	.byte	-3
   1196 00                 3039 	.byte	0
   1197 FC                 3040 	.byte	-4
   1198 06                 3041 	.byte	6
   1199 FF                 3042 	.byte	-1
   119A 03                 3043 	.byte	3
   119B 0D                 3044 	.byte	13
   119C FF                 3045 	.byte	-1
   119D 04                 3046 	.byte	4
   119E FA                 3047 	.byte	-6
   119F FF                 3048 	.byte	-1
   11A0 FD                 3049 	.byte	-3
   11A1 F3                 3050 	.byte	-13
   11A2 FF                 3051 	.byte	-1
   11A3 FC                 3052 	.byte	-4
   11A4 06                 3053 	.byte	6
   11A5 01                 3054 	.byte	1
                           3055 	.globl	_height2RisingFront2
   11A6                    3056 _height2RisingFront2:
   11A6 00                 3057 	.byte	0
   11A7 09                 3058 	.byte	9
   11A8 02                 3059 	.byte	2
   11A9 FF                 3060 	.byte	-1
   11AA 03                 3061 	.byte	3
   11AB 0E                 3062 	.byte	14
   11AC FF                 3063 	.byte	-1
   11AD F7                 3064 	.byte	-9
   11AE FE                 3065 	.byte	-2
   11AF FF                 3066 	.byte	-1
   11B0 FD                 3067 	.byte	-3
   11B1 F2                 3068 	.byte	-14
   11B2 FF                 3069 	.byte	-1
   11B3 09                 3070 	.byte	9
   11B4 02                 3071 	.byte	2
   11B5 FF                 3072 	.byte	-1
   11B6 19                 3073 	.byte	25
   11B7 F6                 3074 	.byte	-10
   11B8 00                 3075 	.byte	0
   11B9 EA                 3076 	.byte	-22
   11BA 18                 3077 	.byte	24
   11BB FF                 3078 	.byte	-1
   11BC 19                 3079 	.byte	25
   11BD F5                 3080 	.byte	-11
   11BE 00                 3081 	.byte	0
   11BF DE                 3082 	.byte	-34
   11C0 09                 3083 	.byte	9
   11C1 FF                 3084 	.byte	-1
   11C2 19                 3085 	.byte	25
   11C3 F5                 3086 	.byte	-11
   11C4 00                 3087 	.byte	0
   11C5 E4                 3088 	.byte	-28
   11C6 FD                 3089 	.byte	-3
   11C7 FF                 3090 	.byte	-1
   11C8 19                 3091 	.byte	25
   11C9 F6                 3092 	.byte	-10
   11CA 00                 3093 	.byte	0
   11CB 09                 3094 	.byte	9
   11CC 02                 3095 	.byte	2
   11CD FF                 3096 	.byte	-1
   11CE 03                 3097 	.byte	3
   11CF 0D                 3098 	.byte	13
   11D0 FF                 3099 	.byte	-1
   11D1 F7                 3100 	.byte	-9
   11D2 FE                 3101 	.byte	-2
   11D3 FF                 3102 	.byte	-1
   11D4 FD                 3103 	.byte	-3
   11D5 F3                 3104 	.byte	-13
   11D6 FF                 3105 	.byte	-1
   11D7 09                 3106 	.byte	9
   11D8 02                 3107 	.byte	2
   11D9 01                 3108 	.byte	1
                           3109 	.globl	_height2FallingFront2
   11DA                    3110 _height2FallingFront2:
   11DA FF                 3111 	.byte	-1
   11DB 03                 3112 	.byte	3
   11DC 0E                 3113 	.byte	14
   11DD FF                 3114 	.byte	-1
   11DE 0B                 3115 	.byte	11
   11DF FA                 3116 	.byte	-6
   11E0 FF                 3117 	.byte	-1
   11E1 FD                 3118 	.byte	-3
   11E2 F3                 3119 	.byte	-13
   11E3 FF                 3120 	.byte	-1
   11E4 F5                 3121 	.byte	-11
   11E5 05                 3122 	.byte	5
   11E6 FF                 3123 	.byte	-1
   11E7 15                 3124 	.byte	21
   11E8 03                 3125 	.byte	3
   11E9 00                 3126 	.byte	0
   11EA EE                 3127 	.byte	-18
   11EB 0B                 3128 	.byte	11
   11EC FF                 3129 	.byte	-1
   11ED 15                 3130 	.byte	21
   11EE 03                 3131 	.byte	3
   11EF 00                 3132 	.byte	0
   11F0 F6                 3133 	.byte	-10
   11F1 F7                 3134 	.byte	-9
   11F2 FF                 3135 	.byte	-1
   11F3 15                 3136 	.byte	21
   11F4 03                 3137 	.byte	3
   11F5 00                 3138 	.byte	0
   11F6 E8                 3139 	.byte	-24
   11F7 F0                 3140 	.byte	-16
   11F8 FF                 3141 	.byte	-1
   11F9 15                 3142 	.byte	21
   11FA 03                 3143 	.byte	3
   11FB 00                 3144 	.byte	0
   11FC F5                 3145 	.byte	-11
   11FD 05                 3146 	.byte	5
   11FE FF                 3147 	.byte	-1
   11FF 03                 3148 	.byte	3
   1200 0E                 3149 	.byte	14
   1201 FF                 3150 	.byte	-1
   1202 0B                 3151 	.byte	11
   1203 FA                 3152 	.byte	-6
   1204 FF                 3153 	.byte	-1
   1205 FD                 3154 	.byte	-3
   1206 F3                 3155 	.byte	-13
   1207 FF                 3156 	.byte	-1
   1208 F5                 3157 	.byte	-11
   1209 05                 3158 	.byte	5
   120A 01                 3159 	.byte	1
                           3160 	.globl	_height2RisingBack2
   120B                    3161 _height2RisingBack2:
   120B 00                 3162 	.byte	0
   120C 10                 3163 	.byte	16
   120D F5                 3164 	.byte	-11
   120E FF                 3165 	.byte	-1
   120F 03                 3166 	.byte	3
   1210 0D                 3167 	.byte	13
   1211 FF                 3168 	.byte	-1
   1212 0F                 3169 	.byte	15
   1213 FE                 3170 	.byte	-2
   1214 FF                 3171 	.byte	-1
   1215 FD                 3172 	.byte	-3
   1216 F3                 3173 	.byte	-13
   1217 FF                 3174 	.byte	-1
   1218 F1                 3175 	.byte	-15
   1219 02                 3176 	.byte	2
   121A FF                 3177 	.byte	-1
   121B FB                 3178 	.byte	-5
   121C 0B                 3179 	.byte	11
   121D 00                 3180 	.byte	0
   121E 08                 3181 	.byte	8
   121F 02                 3182 	.byte	2
   1220 FF                 3183 	.byte	-1
   1221 FB                 3184 	.byte	-5
   1222 0B                 3185 	.byte	11
   1223 00                 3186 	.byte	0
   1224 14                 3187 	.byte	20
   1225 F3                 3188 	.byte	-13
   1226 FF                 3189 	.byte	-1
   1227 FB                 3190 	.byte	-5
   1228 0B                 3191 	.byte	11
   1229 00                 3192 	.byte	0
   122A 02                 3193 	.byte	2
   122B E8                 3194 	.byte	-24
   122C FF                 3195 	.byte	-1
   122D FB                 3196 	.byte	-5
   122E 0B                 3197 	.byte	11
   122F 00                 3198 	.byte	0
   1230 F1                 3199 	.byte	-15
   1231 02                 3200 	.byte	2
   1232 FF                 3201 	.byte	-1
   1233 03                 3202 	.byte	3
   1234 0D                 3203 	.byte	13
   1235 FF                 3204 	.byte	-1
   1236 0F                 3205 	.byte	15
   1237 FE                 3206 	.byte	-2
   1238 FF                 3207 	.byte	-1
   1239 FD                 3208 	.byte	-3
   123A F3                 3209 	.byte	-13
   123B FF                 3210 	.byte	-1
   123C F1                 3211 	.byte	-15
   123D 02                 3212 	.byte	2
   123E 01                 3213 	.byte	1
                           3214 	.globl	_depth2RollingLeft2
   123F                    3215 _depth2RollingLeft2:
   123F FF                 3216 	.byte	-1
   1240 06                 3217 	.byte	6
   1241 0E                 3218 	.byte	14
   1242 FF                 3219 	.byte	-1
   1243 10                 3220 	.byte	16
   1244 F4                 3221 	.byte	-12
   1245 FF                 3222 	.byte	-1
   1246 FA                 3223 	.byte	-6
   1247 F3                 3224 	.byte	-13
   1248 FF                 3225 	.byte	-1
   1249 F0                 3226 	.byte	-16
   124A 0B                 3227 	.byte	11
   124B FF                 3228 	.byte	-1
   124C 0C                 3229 	.byte	12
   124D FD                 3230 	.byte	-3
   124E 00                 3231 	.byte	0
   124F FA                 3232 	.byte	-6
   1250 11                 3233 	.byte	17
   1251 FF                 3234 	.byte	-1
   1252 0C                 3235 	.byte	12
   1253 FC                 3236 	.byte	-4
   1254 00                 3237 	.byte	0
   1255 04                 3238 	.byte	4
   1256 F8                 3239 	.byte	-8
   1257 FF                 3240 	.byte	-1
   1258 0C                 3241 	.byte	12
   1259 FD                 3242 	.byte	-3
   125A 00                 3243 	.byte	0
   125B EE                 3244 	.byte	-18
   125C F6                 3245 	.byte	-10
   125D FF                 3246 	.byte	-1
   125E 0C                 3247 	.byte	12
   125F FC                 3248 	.byte	-4
   1260 00                 3249 	.byte	0
   1261 F0                 3250 	.byte	-16
   1262 0C                 3251 	.byte	12
   1263 FF                 3252 	.byte	-1
   1264 06                 3253 	.byte	6
   1265 0D                 3254 	.byte	13
   1266 FF                 3255 	.byte	-1
   1267 10                 3256 	.byte	16
   1268 F5                 3257 	.byte	-11
   1269 FF                 3258 	.byte	-1
   126A FA                 3259 	.byte	-6
   126B F2                 3260 	.byte	-14
   126C FF                 3261 	.byte	-1
   126D F0                 3262 	.byte	-16
   126E 0C                 3263 	.byte	12
   126F 01                 3264 	.byte	1
                           3265 	.globl	_depth2RollingRight2
   1270                    3266 _depth2RollingRight2:
   1270 00                 3267 	.byte	0
   1271 03                 3268 	.byte	3
   1272 00                 3269 	.byte	0
   1273 FF                 3270 	.byte	-1
   1274 00                 3271 	.byte	0
   1275 0E                 3272 	.byte	14
   1276 FF                 3273 	.byte	-1
   1277 10                 3274 	.byte	16
   1278 F4                 3275 	.byte	-12
   1279 FF                 3276 	.byte	-1
   127A 00                 3277 	.byte	0
   127B F3                 3278 	.byte	-13
   127C FF                 3279 	.byte	-1
   127D F0                 3280 	.byte	-16
   127E 0B                 3281 	.byte	11
   127F FF                 3282 	.byte	-1
   1280 0E                 3283 	.byte	14
   1281 04                 3284 	.byte	4
   1282 00                 3285 	.byte	0
   1283 F2                 3286 	.byte	-14
   1284 0A                 3287 	.byte	10
   1285 FF                 3288 	.byte	-1
   1286 0D                 3289 	.byte	13
   1287 04                 3290 	.byte	4
   1288 00                 3291 	.byte	0
   1289 03                 3292 	.byte	3
   128A F0                 3293 	.byte	-16
   128B FF                 3294 	.byte	-1
   128C 0D                 3295 	.byte	13
   128D 04                 3296 	.byte	4
   128E 00                 3297 	.byte	0
   128F F3                 3298 	.byte	-13
   1290 EF                 3299 	.byte	-17
   1291 FF                 3300 	.byte	-1
   1292 0E                 3301 	.byte	14
   1293 04                 3302 	.byte	4
   1294 00                 3303 	.byte	0
   1295 F0                 3304 	.byte	-16
   1296 0B                 3305 	.byte	11
   1297 FF                 3306 	.byte	-1
   1298 FF                 3307 	.byte	-1
   1299 0E                 3308 	.byte	14
   129A FF                 3309 	.byte	-1
   129B 10                 3310 	.byte	16
   129C F4                 3311 	.byte	-12
   129D FF                 3312 	.byte	-1
   129E 01                 3313 	.byte	1
   129F F3                 3314 	.byte	-13
   12A0 FF                 3315 	.byte	-1
   12A1 F0                 3316 	.byte	-16
   12A2 0B                 3317 	.byte	11
   12A3 01                 3318 	.byte	1
                           3319 	.globl	_width2RollingFront2
   12A4                    3320 _width2RollingFront2:
   12A4 FF                 3321 	.byte	-1
   12A5 06                 3322 	.byte	6
   12A6 1C                 3323 	.byte	28
   12A7 FF                 3324 	.byte	-1
   12A8 0B                 3325 	.byte	11
   12A9 FA                 3326 	.byte	-6
   12AA FF                 3327 	.byte	-1
   12AB FA                 3328 	.byte	-6
   12AC E5                 3329 	.byte	-27
   12AD FF                 3330 	.byte	-1
   12AE F5                 3331 	.byte	-11
   12AF 05                 3332 	.byte	5
   12B0 FF                 3333 	.byte	-1
   12B1 0A                 3334 	.byte	10
   12B2 02                 3335 	.byte	2
   12B3 00                 3336 	.byte	0
   12B4 FC                 3337 	.byte	-4
   12B5 1A                 3338 	.byte	26
   12B6 FF                 3339 	.byte	-1
   12B7 0A                 3340 	.byte	10
   12B8 02                 3341 	.byte	2
   12B9 00                 3342 	.byte	0
   12BA 01                 3343 	.byte	1
   12BB F8                 3344 	.byte	-8
   12BC FF                 3345 	.byte	-1
   12BD 0B                 3346 	.byte	11
   12BE 02                 3347 	.byte	2
   12BF 00                 3348 	.byte	0
   12C0 EF                 3349 	.byte	-17
   12C1 E3                 3350 	.byte	-29
   12C2 FF                 3351 	.byte	-1
   12C3 0B                 3352 	.byte	11
   12C4 02                 3353 	.byte	2
   12C5 00                 3354 	.byte	0
   12C6 F4                 3355 	.byte	-12
   12C7 05                 3356 	.byte	5
   12C8 FF                 3357 	.byte	-1
   12C9 06                 3358 	.byte	6
   12CA 1C                 3359 	.byte	28
   12CB FF                 3360 	.byte	-1
   12CC 0C                 3361 	.byte	12
   12CD FA                 3362 	.byte	-6
   12CE FF                 3363 	.byte	-1
   12CF FA                 3364 	.byte	-6
   12D0 E5                 3365 	.byte	-27
   12D1 FF                 3366 	.byte	-1
   12D2 F4                 3367 	.byte	-12
   12D3 05                 3368 	.byte	5
   12D4 01                 3369 	.byte	1
                           3370 	.globl	_width2RollingBack2
   12D5                    3371 _width2RollingBack2:
   12D5 00                 3372 	.byte	0
   12D6 04                 3373 	.byte	4
   12D7 00                 3374 	.byte	0
   12D8 FF                 3375 	.byte	-1
   12D9 06                 3376 	.byte	6
   12DA 1C                 3377 	.byte	28
   12DB FF                 3378 	.byte	-1
   12DC 04                 3379 	.byte	4
   12DD FA                 3380 	.byte	-6
   12DE FF                 3381 	.byte	-1
   12DF FA                 3382 	.byte	-6
   12E0 E5                 3383 	.byte	-27
   12E1 FF                 3384 	.byte	-1
   12E2 FC                 3385 	.byte	-4
   12E3 05                 3386 	.byte	5
   12E4 FF                 3387 	.byte	-1
   12E5 0E                 3388 	.byte	14
   12E6 FF                 3389 	.byte	-1
   12E7 00                 3390 	.byte	0
   12E8 F8                 3391 	.byte	-8
   12E9 1D                 3392 	.byte	29
   12EA FF                 3393 	.byte	-1
   12EB 0E                 3394 	.byte	14
   12EC FE                 3395 	.byte	-2
   12ED 00                 3396 	.byte	0
   12EE F6                 3397 	.byte	-10
   12EF FC                 3398 	.byte	-4
   12F0 FF                 3399 	.byte	-1
   12F1 0F                 3400 	.byte	15
   12F2 FE                 3401 	.byte	-2
   12F3 00                 3402 	.byte	0
   12F4 EB                 3403 	.byte	-21
   12F5 E7                 3404 	.byte	-25
   12F6 FF                 3405 	.byte	-1
   12F7 0F                 3406 	.byte	15
   12F8 FE                 3407 	.byte	-2
   12F9 00                 3408 	.byte	0
   12FA FB                 3409 	.byte	-5
   12FB 06                 3410 	.byte	6
   12FC FF                 3411 	.byte	-1
   12FD 06                 3412 	.byte	6
   12FE 1B                 3413 	.byte	27
   12FF FF                 3414 	.byte	-1
   1300 05                 3415 	.byte	5
   1301 FA                 3416 	.byte	-6
   1302 FF                 3417 	.byte	-1
   1303 FA                 3418 	.byte	-6
   1304 E5                 3419 	.byte	-27
   1305 FF                 3420 	.byte	-1
   1306 FB                 3421 	.byte	-5
   1307 06                 3422 	.byte	6
   1308 01                 3423 	.byte	1
                           3424 	.globl	_height1FallingLeft2
   1309                    3425 _height1FallingLeft2:
   1309 FF                 3426 	.byte	-1
   130A 06                 3427 	.byte	6
   130B 0E                 3428 	.byte	14
   130C FF                 3429 	.byte	-1
   130D 08                 3430 	.byte	8
   130E FA                 3431 	.byte	-6
   130F FF                 3432 	.byte	-1
   1310 FA                 3433 	.byte	-6
   1311 F3                 3434 	.byte	-13
   1312 FF                 3435 	.byte	-1
   1313 F8                 3436 	.byte	-8
   1314 05                 3437 	.byte	5
   1315 FF                 3438 	.byte	-1
   1316 0C                 3439 	.byte	12
   1317 FD                 3440 	.byte	-3
   1318 00                 3441 	.byte	0
   1319 FA                 3442 	.byte	-6
   131A 11                 3443 	.byte	17
   131B FF                 3444 	.byte	-1
   131C 0C                 3445 	.byte	12
   131D FC                 3446 	.byte	-4
   131E 00                 3447 	.byte	0
   131F FC                 3448 	.byte	-4
   1320 FE                 3449 	.byte	-2
   1321 FF                 3450 	.byte	-1
   1322 0C                 3451 	.byte	12
   1323 FC                 3452 	.byte	-4
   1324 00                 3453 	.byte	0
   1325 EE                 3454 	.byte	-18
   1326 F7                 3455 	.byte	-9
   1327 FF                 3456 	.byte	-1
   1328 0C                 3457 	.byte	12
   1329 FC                 3458 	.byte	-4
   132A 00                 3459 	.byte	0
   132B F8                 3460 	.byte	-8
   132C 06                 3461 	.byte	6
   132D FF                 3462 	.byte	-1
   132E 06                 3463 	.byte	6
   132F 0D                 3464 	.byte	13
   1330 FF                 3465 	.byte	-1
   1331 08                 3466 	.byte	8
   1332 FA                 3467 	.byte	-6
   1333 FF                 3468 	.byte	-1
   1334 FA                 3469 	.byte	-6
   1335 F3                 3470 	.byte	-13
   1336 FF                 3471 	.byte	-1
   1337 F8                 3472 	.byte	-8
   1338 06                 3473 	.byte	6
   1339 01                 3474 	.byte	1
                           3475 	.globl	_height1FallingRight2
   133A                    3476 _height1FallingRight2:
   133A 00                 3477 	.byte	0
   133B 03                 3478 	.byte	3
   133C 00                 3479 	.byte	0
   133D FF                 3480 	.byte	-1
   133E 00                 3481 	.byte	0
   133F 0E                 3482 	.byte	14
   1340 FF                 3483 	.byte	-1
   1341 08                 3484 	.byte	8
   1342 FA                 3485 	.byte	-6
   1343 FF                 3486 	.byte	-1
   1344 00                 3487 	.byte	0
   1345 F3                 3488 	.byte	-13
   1346 FF                 3489 	.byte	-1
   1347 F8                 3490 	.byte	-8
   1348 05                 3491 	.byte	5
   1349 FF                 3492 	.byte	-1
   134A 0E                 3493 	.byte	14
   134B 04                 3494 	.byte	4
   134C 00                 3495 	.byte	0
   134D F2                 3496 	.byte	-14
   134E 0A                 3497 	.byte	10
   134F FF                 3498 	.byte	-1
   1350 0D                 3499 	.byte	13
   1351 04                 3500 	.byte	4
   1352 00                 3501 	.byte	0
   1353 FB                 3502 	.byte	-5
   1354 F6                 3503 	.byte	-10
   1355 FF                 3504 	.byte	-1
   1356 0D                 3505 	.byte	13
   1357 04                 3506 	.byte	4
   1358 00                 3507 	.byte	0
   1359 F3                 3508 	.byte	-13
   135A EF                 3509 	.byte	-17
   135B FF                 3510 	.byte	-1
   135C 0E                 3511 	.byte	14
   135D 04                 3512 	.byte	4
   135E 00                 3513 	.byte	0
   135F F8                 3514 	.byte	-8
   1360 05                 3515 	.byte	5
   1361 FF                 3516 	.byte	-1
   1362 FF                 3517 	.byte	-1
   1363 0E                 3518 	.byte	14
   1364 FF                 3519 	.byte	-1
   1365 08                 3520 	.byte	8
   1366 FA                 3521 	.byte	-6
   1367 FF                 3522 	.byte	-1
   1368 01                 3523 	.byte	1
   1369 F3                 3524 	.byte	-13
   136A FF                 3525 	.byte	-1
   136B F8                 3526 	.byte	-8
   136C 05                 3527 	.byte	5
   136D 01                 3528 	.byte	1
                           3529 	.globl	_height1FallingBack2
   136E                    3530 _height1FallingBack2:
   136E 00                 3531 	.byte	0
   136F 04                 3532 	.byte	4
   1370 00                 3533 	.byte	0
   1371 FF                 3534 	.byte	-1
   1372 03                 3535 	.byte	3
   1373 0E                 3536 	.byte	14
   1374 FF                 3537 	.byte	-1
   1375 04                 3538 	.byte	4
   1376 FA                 3539 	.byte	-6
   1377 FF                 3540 	.byte	-1
   1378 FD                 3541 	.byte	-3
   1379 F3                 3542 	.byte	-13
   137A FF                 3543 	.byte	-1
   137B FC                 3544 	.byte	-4
   137C 05                 3545 	.byte	5
   137D FF                 3546 	.byte	-1
   137E 0E                 3547 	.byte	14
   137F FF                 3548 	.byte	-1
   1380 00                 3549 	.byte	0
   1381 F5                 3550 	.byte	-11
   1382 0F                 3551 	.byte	15
   1383 FF                 3552 	.byte	-1
   1384 0E                 3553 	.byte	14
   1385 FE                 3554 	.byte	-2
   1386 00                 3555 	.byte	0
   1387 F6                 3556 	.byte	-10
   1388 FC                 3557 	.byte	-4
   1389 FF                 3558 	.byte	-1
   138A 0F                 3559 	.byte	15
   138B FE                 3560 	.byte	-2
   138C 00                 3561 	.byte	0
   138D EE                 3562 	.byte	-18
   138E F5                 3563 	.byte	-11
   138F FF                 3564 	.byte	-1
   1390 0F                 3565 	.byte	15
   1391 FE                 3566 	.byte	-2
   1392 00                 3567 	.byte	0
   1393 FB                 3568 	.byte	-5
   1394 06                 3569 	.byte	6
   1395 FF                 3570 	.byte	-1
   1396 03                 3571 	.byte	3
   1397 0D                 3572 	.byte	13
   1398 FF                 3573 	.byte	-1
   1399 05                 3574 	.byte	5
   139A FA                 3575 	.byte	-6
   139B FF                 3576 	.byte	-1
   139C FD                 3577 	.byte	-3
   139D F3                 3578 	.byte	-13
   139E FF                 3579 	.byte	-1
   139F FB                 3580 	.byte	-5
   13A0 06                 3581 	.byte	6
   13A1 01                 3582 	.byte	1
                           3583 	.globl	_height1FallingFront2
   13A2                    3584 _height1FallingFront2:
   13A2 FF                 3585 	.byte	-1
   13A3 03                 3586 	.byte	3
   13A4 0E                 3587 	.byte	14
   13A5 FF                 3588 	.byte	-1
   13A6 0B                 3589 	.byte	11
   13A7 FA                 3590 	.byte	-6
   13A8 FF                 3591 	.byte	-1
   13A9 FD                 3592 	.byte	-3
   13AA F3                 3593 	.byte	-13
   13AB FF                 3594 	.byte	-1
   13AC F5                 3595 	.byte	-11
   13AD 05                 3596 	.byte	5
   13AE FF                 3597 	.byte	-1
   13AF 0A                 3598 	.byte	10
   13B0 02                 3599 	.byte	2
   13B1 00                 3600 	.byte	0
   13B2 F9                 3601 	.byte	-7
   13B3 0C                 3602 	.byte	12
   13B4 FF                 3603 	.byte	-1
   13B5 0A                 3604 	.byte	10
   13B6 02                 3605 	.byte	2
   13B7 00                 3606 	.byte	0
   13B8 01                 3607 	.byte	1
   13B9 F8                 3608 	.byte	-8
   13BA FF                 3609 	.byte	-1
   13BB 0B                 3610 	.byte	11
   13BC 02                 3611 	.byte	2
   13BD 00                 3612 	.byte	0
   13BE F2                 3613 	.byte	-14
   13BF F1                 3614 	.byte	-15
   13C0 FF                 3615 	.byte	-1
   13C1 0B                 3616 	.byte	11
   13C2 02                 3617 	.byte	2
   13C3 00                 3618 	.byte	0
   13C4 F4                 3619 	.byte	-12
   13C5 05                 3620 	.byte	5
   13C6 FF                 3621 	.byte	-1
   13C7 03                 3622 	.byte	3
   13C8 0E                 3623 	.byte	14
   13C9 FF                 3624 	.byte	-1
   13CA 0C                 3625 	.byte	12
   13CB FA                 3626 	.byte	-6
   13CC FF                 3627 	.byte	-1
   13CD FD                 3628 	.byte	-3
   13CE F3                 3629 	.byte	-13
   13CF FF                 3630 	.byte	-1
   13D0 F4                 3631 	.byte	-12
   13D1 05                 3632 	.byte	5
   13D2 01                 3633 	.byte	1
                           3634 	.globl	_height2FallingLeft3
   13D3                    3635 _height2FallingLeft3:
   13D3 FF                 3636 	.byte	-1
   13D4 08                 3637 	.byte	8
   13D5 0D                 3638 	.byte	13
   13D6 FF                 3639 	.byte	-1
   13D7 08                 3640 	.byte	8
   13D8 FA                 3641 	.byte	-6
   13D9 FF                 3642 	.byte	-1
   13DA F8                 3643 	.byte	-8
   13DB F4                 3644 	.byte	-12
   13DC FF                 3645 	.byte	-1
   13DD F8                 3646 	.byte	-8
   13DE 05                 3647 	.byte	5
   13DF FF                 3648 	.byte	-1
   13E0 16                 3649 	.byte	22
   13E1 F6                 3650 	.byte	-10
   13E2 00                 3651 	.byte	0
   13E3 F2                 3652 	.byte	-14
   13E4 17                 3653 	.byte	23
   13E5 FF                 3654 	.byte	-1
   13E6 15                 3655 	.byte	21
   13E7 F5                 3656 	.byte	-11
   13E8 00                 3657 	.byte	0
   13E9 F3                 3658 	.byte	-13
   13EA 05                 3659 	.byte	5
   13EB FF                 3660 	.byte	-1
   13EC 15                 3661 	.byte	21
   13ED F6                 3662 	.byte	-10
   13EE 00                 3663 	.byte	0
   13EF E3                 3664 	.byte	-29
   13F0 FE                 3665 	.byte	-2
   13F1 FF                 3666 	.byte	-1
   13F2 16                 3667 	.byte	22
   13F3 F5                 3668 	.byte	-11
   13F4 00                 3669 	.byte	0
   13F5 F8                 3670 	.byte	-8
   13F6 06                 3671 	.byte	6
   13F7 FF                 3672 	.byte	-1
   13F8 07                 3673 	.byte	7
   13F9 0C                 3674 	.byte	12
   13FA FF                 3675 	.byte	-1
   13FB 08                 3676 	.byte	8
   13FC FB                 3677 	.byte	-5
   13FD FF                 3678 	.byte	-1
   13FE F9                 3679 	.byte	-7
   13FF F3                 3680 	.byte	-13
   1400 FF                 3681 	.byte	-1
   1401 F8                 3682 	.byte	-8
   1402 06                 3683 	.byte	6
   1403 01                 3684 	.byte	1
                           3685 	.globl	_height2RisingRight3
   1404                    3686 _height2RisingRight3:
   1404 00                 3687 	.byte	0
   1405 06                 3688 	.byte	6
   1406 1C                 3689 	.byte	28
   1407 FF                 3690 	.byte	-1
   1408 0D                 3691 	.byte	13
   1409 07                 3692 	.byte	7
   140A FF                 3693 	.byte	-1
   140B 08                 3694 	.byte	8
   140C FA                 3695 	.byte	-6
   140D FF                 3696 	.byte	-1
   140E F3                 3697 	.byte	-13
   140F F9                 3698 	.byte	-7
   1410 FF                 3699 	.byte	-1
   1411 F8                 3700 	.byte	-8
   1412 06                 3701 	.byte	6
   1413 FF                 3702 	.byte	-1
   1414 08                 3703 	.byte	8
   1415 E8                 3704 	.byte	-24
   1416 00                 3705 	.byte	0
   1417 05                 3706 	.byte	5
   1418 1F                 3707 	.byte	31
   1419 FF                 3708 	.byte	-1
   141A 08                 3709 	.byte	8
   141B E8                 3710 	.byte	-24
   141C 00                 3711 	.byte	0
   141D 00                 3712 	.byte	0
   141E 12                 3713 	.byte	18
   141F FF                 3714 	.byte	-1
   1420 08                 3715 	.byte	8
   1421 E8                 3716 	.byte	-24
   1422 00                 3717 	.byte	0
   1423 EB                 3718 	.byte	-21
   1424 11                 3719 	.byte	17
   1425 FF                 3720 	.byte	-1
   1426 08                 3721 	.byte	8
   1427 E9                 3722 	.byte	-23
   1428 00                 3723 	.byte	0
   1429 F8                 3724 	.byte	-8
   142A 05                 3725 	.byte	5
   142B FF                 3726 	.byte	-1
   142C 0D                 3727 	.byte	13
   142D 07                 3728 	.byte	7
   142E FF                 3729 	.byte	-1
   142F 08                 3730 	.byte	8
   1430 FA                 3731 	.byte	-6
   1431 FF                 3732 	.byte	-1
   1432 F3                 3733 	.byte	-13
   1433 FA                 3734 	.byte	-6
   1434 FF                 3735 	.byte	-1
   1435 F8                 3736 	.byte	-8
   1436 05                 3737 	.byte	5
   1437 01                 3738 	.byte	1
                           3739 	.globl	_height2FallingRight3
   1438                    3740 _height2FallingRight3:
   1438 00                 3741 	.byte	0
   1439 05                 3742 	.byte	5
   143A 01                 3743 	.byte	1
   143B FF                 3744 	.byte	-1
   143C FE                 3745 	.byte	-2
   143D 0D                 3746 	.byte	13
   143E FF                 3747 	.byte	-1
   143F 08                 3748 	.byte	8
   1440 FA                 3749 	.byte	-6
   1441 FF                 3750 	.byte	-1
   1442 02                 3751 	.byte	2
   1443 F4                 3752 	.byte	-12
   1444 FF                 3753 	.byte	-1
   1445 F8                 3754 	.byte	-8
   1446 05                 3755 	.byte	5
   1447 FF                 3756 	.byte	-1
   1448 1B                 3757 	.byte	27
   1449 0B                 3758 	.byte	11
   144A 00                 3759 	.byte	0
   144B E3                 3760 	.byte	-29
   144C 02                 3761 	.byte	2
   144D FF                 3762 	.byte	-1
   144E 1A                 3763 	.byte	26
   144F 0B                 3764 	.byte	11
   1450 00                 3765 	.byte	0
   1451 EE                 3766 	.byte	-18
   1452 EF                 3767 	.byte	-17
   1453 FF                 3768 	.byte	-1
   1454 1A                 3769 	.byte	26
   1455 0B                 3770 	.byte	11
   1456 00                 3771 	.byte	0
   1457 E8                 3772 	.byte	-24
   1458 E9                 3773 	.byte	-23
   1459 FF                 3774 	.byte	-1
   145A 1B                 3775 	.byte	27
   145B 0A                 3776 	.byte	10
   145C 00                 3777 	.byte	0
   145D F8                 3778 	.byte	-8
   145E 06                 3779 	.byte	6
   145F FF                 3780 	.byte	-1
   1460 FD                 3781 	.byte	-3
   1461 0D                 3782 	.byte	13
   1462 FF                 3783 	.byte	-1
   1463 08                 3784 	.byte	8
   1464 FA                 3785 	.byte	-6
   1465 FF                 3786 	.byte	-1
   1466 03                 3787 	.byte	3
   1467 F3                 3788 	.byte	-13
   1468 FF                 3789 	.byte	-1
   1469 F8                 3790 	.byte	-8
   146A 06                 3791 	.byte	6
   146B 01                 3792 	.byte	1
                           3793 	.globl	_height2RisingLeft3
   146C                    3794 _height2RisingLeft3:
   146C 00                 3795 	.byte	0
   146D 0A                 3796 	.byte	10
   146E FA                 3797 	.byte	-6
   146F FF                 3798 	.byte	-1
   1470 F6                 3799 	.byte	-10
   1471 06                 3800 	.byte	6
   1472 FF                 3801 	.byte	-1
   1473 08                 3802 	.byte	8
   1474 FB                 3803 	.byte	-5
   1475 FF                 3804 	.byte	-1
   1476 0A                 3805 	.byte	10
   1477 F9                 3806 	.byte	-7
   1478 FF                 3807 	.byte	-1
   1479 F8                 3808 	.byte	-8
   147A 06                 3809 	.byte	6
   147B FF                 3810 	.byte	-1
   147C 12                 3811 	.byte	18
   147D 17                 3812 	.byte	23
   147E 00                 3813 	.byte	0
   147F E4                 3814 	.byte	-28
   1480 EF                 3815 	.byte	-17
   1481 FF                 3816 	.byte	-1
   1482 12                 3817 	.byte	18
   1483 18                 3818 	.byte	24
   1484 00                 3819 	.byte	0
   1485 F6                 3820 	.byte	-10
   1486 E3                 3821 	.byte	-29
   1487 FF                 3822 	.byte	-1
   1488 12                 3823 	.byte	18
   1489 17                 3824 	.byte	23
   148A 00                 3825 	.byte	0
   148B F8                 3826 	.byte	-8
   148C E2                 3827 	.byte	-30
   148D FF                 3828 	.byte	-1
   148E 12                 3829 	.byte	18
   148F 17                 3830 	.byte	23
   1490 00                 3831 	.byte	0
   1491 F8                 3832 	.byte	-8
   1492 06                 3833 	.byte	6
   1493 FF                 3834 	.byte	-1
   1494 F6                 3835 	.byte	-10
   1495 07                 3836 	.byte	7
   1496 FF                 3837 	.byte	-1
   1497 08                 3838 	.byte	8
   1498 FA                 3839 	.byte	-6
   1499 FF                 3840 	.byte	-1
   149A 0A                 3841 	.byte	10
   149B F9                 3842 	.byte	-7
   149C FF                 3843 	.byte	-1
   149D F8                 3844 	.byte	-8
   149E 06                 3845 	.byte	6
   149F 01                 3846 	.byte	1
                           3847 	.globl	_height2FallingBack3
   14A0                    3848 _height2FallingBack3:
   14A0 00                 3849 	.byte	0
   14A1 06                 3850 	.byte	6
   14A2 00                 3851 	.byte	0
   14A3 FF                 3852 	.byte	-1
   14A4 03                 3853 	.byte	3
   14A5 0E                 3854 	.byte	14
   14A6 FF                 3855 	.byte	-1
   14A7 02                 3856 	.byte	2
   14A8 FA                 3857 	.byte	-6
   14A9 FF                 3858 	.byte	-1
   14AA FD                 3859 	.byte	-3
   14AB F3                 3860 	.byte	-13
   14AC FF                 3861 	.byte	-1
   14AD FE                 3862 	.byte	-2
   14AE 05                 3863 	.byte	5
   14AF FF                 3864 	.byte	-1
   14B0 1E                 3865 	.byte	30
   14B1 FC                 3866 	.byte	-4
   14B2 00                 3867 	.byte	0
   14B3 E5                 3868 	.byte	-27
   14B4 12                 3869 	.byte	18
   14B5 FF                 3870 	.byte	-1
   14B6 1E                 3871 	.byte	30
   14B7 FB                 3872 	.byte	-5
   14B8 00                 3873 	.byte	0
   14B9 E4                 3874 	.byte	-28
   14BA FF                 3875 	.byte	-1
   14BB FF                 3876 	.byte	-1
   14BC 1E                 3877 	.byte	30
   14BD FB                 3878 	.byte	-5
   14BE 00                 3879 	.byte	0
   14BF DF                 3880 	.byte	-33
   14C0 F8                 3881 	.byte	-8
   14C1 FF                 3882 	.byte	-1
   14C2 1E                 3883 	.byte	30
   14C3 FB                 3884 	.byte	-5
   14C4 00                 3885 	.byte	0
   14C5 FE                 3886 	.byte	-2
   14C6 06                 3887 	.byte	6
   14C7 FF                 3888 	.byte	-1
   14C8 03                 3889 	.byte	3
   14C9 0D                 3890 	.byte	13
   14CA FF                 3891 	.byte	-1
   14CB 02                 3892 	.byte	2
   14CC FA                 3893 	.byte	-6
   14CD FF                 3894 	.byte	-1
   14CE FD                 3895 	.byte	-3
   14CF F3                 3896 	.byte	-13
   14D0 FF                 3897 	.byte	-1
   14D1 FE                 3898 	.byte	-2
   14D2 06                 3899 	.byte	6
   14D3 01                 3900 	.byte	1
                           3901 	.globl	_height2RisingFront3
   14D4                    3902 _height2RisingFront3:
   14D4 00                 3903 	.byte	0
   14D5 07                 3904 	.byte	7
   14D6 03                 3905 	.byte	3
   14D7 FF                 3906 	.byte	-1
   14D8 03                 3907 	.byte	3
   14D9 0E                 3908 	.byte	14
   14DA FF                 3909 	.byte	-1
   14DB F9                 3910 	.byte	-7
   14DC FD                 3911 	.byte	-3
   14DD FF                 3912 	.byte	-1
   14DE FD                 3913 	.byte	-3
   14DF F2                 3914 	.byte	-14
   14E0 FF                 3915 	.byte	-1
   14E1 07                 3916 	.byte	7
   14E2 03                 3917 	.byte	3
   14E3 FF                 3918 	.byte	-1
   14E4 1B                 3919 	.byte	27
   14E5 F7                 3920 	.byte	-9
   14E6 00                 3921 	.byte	0
   14E7 E8                 3922 	.byte	-24
   14E8 17                 3923 	.byte	23
   14E9 FF                 3924 	.byte	-1
   14EA 1B                 3925 	.byte	27
   14EB F6                 3926 	.byte	-10
   14EC 00                 3927 	.byte	0
   14ED DE                 3928 	.byte	-34
   14EE 07                 3929 	.byte	7
   14EF FF                 3930 	.byte	-1
   14F0 1B                 3931 	.byte	27
   14F1 F6                 3932 	.byte	-10
   14F2 00                 3933 	.byte	0
   14F3 E2                 3934 	.byte	-30
   14F4 FC                 3935 	.byte	-4
   14F5 FF                 3936 	.byte	-1
   14F6 1B                 3937 	.byte	27
   14F7 F7                 3938 	.byte	-9
   14F8 00                 3939 	.byte	0
   14F9 07                 3940 	.byte	7
   14FA 03                 3941 	.byte	3
   14FB FF                 3942 	.byte	-1
   14FC 03                 3943 	.byte	3
   14FD 0D                 3944 	.byte	13
   14FE FF                 3945 	.byte	-1
   14FF F9                 3946 	.byte	-7
   1500 FD                 3947 	.byte	-3
   1501 FF                 3948 	.byte	-1
   1502 FD                 3949 	.byte	-3
   1503 F3                 3950 	.byte	-13
   1504 FF                 3951 	.byte	-1
   1505 07                 3952 	.byte	7
   1506 03                 3953 	.byte	3
   1507 01                 3954 	.byte	1
                           3955 	.globl	_height2FallingFront3
   1508                    3956 _height2FallingFront3:
   1508 FF                 3957 	.byte	-1
   1509 03                 3958 	.byte	3
   150A 0E                 3959 	.byte	14
   150B FF                 3960 	.byte	-1
   150C 0C                 3961 	.byte	12
   150D FA                 3962 	.byte	-6
   150E FF                 3963 	.byte	-1
   150F FD                 3964 	.byte	-3
   1510 F3                 3965 	.byte	-13
   1511 FF                 3966 	.byte	-1
   1512 F4                 3967 	.byte	-12
   1513 05                 3968 	.byte	5
   1514 FF                 3969 	.byte	-1
   1515 12                 3970 	.byte	18
   1516 05                 3971 	.byte	5
   1517 00                 3972 	.byte	0
   1518 F1                 3973 	.byte	-15
   1519 09                 3974 	.byte	9
   151A FF                 3975 	.byte	-1
   151B 12                 3976 	.byte	18
   151C 05                 3977 	.byte	5
   151D 00                 3978 	.byte	0
   151E FA                 3979 	.byte	-6
   151F F5                 3980 	.byte	-11
   1520 FF                 3981 	.byte	-1
   1521 12                 3982 	.byte	18
   1522 05                 3983 	.byte	5
   1523 00                 3984 	.byte	0
   1524 EB                 3985 	.byte	-21
   1525 EE                 3986 	.byte	-18
   1526 FF                 3987 	.byte	-1
   1527 12                 3988 	.byte	18
   1528 05                 3989 	.byte	5
   1529 00                 3990 	.byte	0
   152A F4                 3991 	.byte	-12
   152B 05                 3992 	.byte	5
   152C FF                 3993 	.byte	-1
   152D 03                 3994 	.byte	3
   152E 0E                 3995 	.byte	14
   152F FF                 3996 	.byte	-1
   1530 0C                 3997 	.byte	12
   1531 FA                 3998 	.byte	-6
   1532 FF                 3999 	.byte	-1
   1533 FD                 4000 	.byte	-3
   1534 F3                 4001 	.byte	-13
   1535 FF                 4002 	.byte	-1
   1536 F4                 4003 	.byte	-12
   1537 05                 4004 	.byte	5
   1538 01                 4005 	.byte	1
                           4006 	.globl	_height2RisingBack3
   1539                    4007 _height2RisingBack3:
   1539 00                 4008 	.byte	0
   153A 10                 4009 	.byte	16
   153B F5                 4010 	.byte	-11
   153C FF                 4011 	.byte	-1
   153D 03                 4012 	.byte	3
   153E 0D                 4013 	.byte	13
   153F FF                 4014 	.byte	-1
   1540 0F                 4015 	.byte	15
   1541 FE                 4016 	.byte	-2
   1542 FF                 4017 	.byte	-1
   1543 FD                 4018 	.byte	-3
   1544 F2                 4019 	.byte	-14
   1545 FF                 4020 	.byte	-1
   1546 F1                 4021 	.byte	-15
   1547 03                 4022 	.byte	3
   1548 FF                 4023 	.byte	-1
   1549 FF                 4024 	.byte	-1
   154A 0A                 4025 	.byte	10
   154B 00                 4026 	.byte	0
   154C 04                 4027 	.byte	4
   154D 03                 4028 	.byte	3
   154E FF                 4029 	.byte	-1
   154F FF                 4030 	.byte	-1
   1550 0A                 4031 	.byte	10
   1551 00                 4032 	.byte	0
   1552 10                 4033 	.byte	16
   1553 F4                 4034 	.byte	-12
   1554 FF                 4035 	.byte	-1
   1555 FF                 4036 	.byte	-1
   1556 09                 4037 	.byte	9
   1557 00                 4038 	.byte	0
   1558 FE                 4039 	.byte	-2
   1559 E9                 4040 	.byte	-23
   155A FF                 4041 	.byte	-1
   155B FF                 4042 	.byte	-1
   155C 0A                 4043 	.byte	10
   155D 00                 4044 	.byte	0
   155E F1                 4045 	.byte	-15
   155F 03                 4046 	.byte	3
   1560 FF                 4047 	.byte	-1
   1561 03                 4048 	.byte	3
   1562 0D                 4049 	.byte	13
   1563 FF                 4050 	.byte	-1
   1564 0F                 4051 	.byte	15
   1565 FD                 4052 	.byte	-3
   1566 FF                 4053 	.byte	-1
   1567 FD                 4054 	.byte	-3
   1568 F3                 4055 	.byte	-13
   1569 FF                 4056 	.byte	-1
   156A F1                 4057 	.byte	-15
   156B 03                 4058 	.byte	3
   156C 01                 4059 	.byte	1
                           4060 	.globl	_depth2RollingLeft3
   156D                    4061 _depth2RollingLeft3:
   156D FF                 4062 	.byte	-1
   156E 08                 4063 	.byte	8
   156F 0D                 4064 	.byte	13
   1570 FF                 4065 	.byte	-1
   1571 10                 4066 	.byte	16
   1572 F4                 4067 	.byte	-12
   1573 FF                 4068 	.byte	-1
   1574 F8                 4069 	.byte	-8
   1575 F4                 4070 	.byte	-12
   1576 FF                 4071 	.byte	-1
   1577 F0                 4072 	.byte	-16
   1578 0B                 4073 	.byte	11
   1579 FF                 4074 	.byte	-1
   157A 0B                 4075 	.byte	11
   157B FC                 4076 	.byte	-4
   157C 00                 4077 	.byte	0
   157D FD                 4078 	.byte	-3
   157E 11                 4079 	.byte	17
   157F FF                 4080 	.byte	-1
   1580 0B                 4081 	.byte	11
   1581 FB                 4082 	.byte	-5
   1582 00                 4083 	.byte	0
   1583 05                 4084 	.byte	5
   1584 F9                 4085 	.byte	-7
   1585 FF                 4086 	.byte	-1
   1586 0B                 4087 	.byte	11
   1587 FC                 4088 	.byte	-4
   1588 00                 4089 	.byte	0
   1589 ED                 4090 	.byte	-19
   158A F8                 4091 	.byte	-8
   158B FF                 4092 	.byte	-1
   158C 0B                 4093 	.byte	11
   158D FB                 4094 	.byte	-5
   158E 00                 4095 	.byte	0
   158F F0                 4096 	.byte	-16
   1590 0C                 4097 	.byte	12
   1591 FF                 4098 	.byte	-1
   1592 08                 4099 	.byte	8
   1593 0C                 4100 	.byte	12
   1594 FF                 4101 	.byte	-1
   1595 10                 4102 	.byte	16
   1596 F5                 4103 	.byte	-11
   1597 FF                 4104 	.byte	-1
   1598 F8                 4105 	.byte	-8
   1599 F3                 4106 	.byte	-13
   159A FF                 4107 	.byte	-1
   159B F0                 4108 	.byte	-16
   159C 0C                 4109 	.byte	12
   159D 01                 4110 	.byte	1
                           4111 	.globl	_depth2RollingRight3
   159E                    4112 _depth2RollingRight3:
   159E 00                 4113 	.byte	0
   159F 05                 4114 	.byte	5
   15A0 01                 4115 	.byte	1
   15A1 FF                 4116 	.byte	-1
   15A2 FE                 4117 	.byte	-2
   15A3 0D                 4118 	.byte	13
   15A4 FF                 4119 	.byte	-1
   15A5 10                 4120 	.byte	16
   15A6 F4                 4121 	.byte	-12
   15A7 FF                 4122 	.byte	-1
   15A8 02                 4123 	.byte	2
   15A9 F4                 4124 	.byte	-12
   15AA FF                 4125 	.byte	-1
   15AB F0                 4126 	.byte	-16
   15AC 0B                 4127 	.byte	11
   15AD FF                 4128 	.byte	-1
   15AE 0D                 4129 	.byte	13
   15AF 05                 4130 	.byte	5
   15B0 00                 4131 	.byte	0
   15B1 F1                 4132 	.byte	-15
   15B2 08                 4133 	.byte	8
   15B3 FF                 4134 	.byte	-1
   15B4 0D                 4135 	.byte	13
   15B5 05                 4136 	.byte	5
   15B6 00                 4137 	.byte	0
   15B7 03                 4138 	.byte	3
   15B8 EF                 4139 	.byte	-17
   15B9 FF                 4140 	.byte	-1
   15BA 0D                 4141 	.byte	13
   15BB 05                 4142 	.byte	5
   15BC 00                 4143 	.byte	0
   15BD F5                 4144 	.byte	-11
   15BE EF                 4145 	.byte	-17
   15BF FF                 4146 	.byte	-1
   15C0 0D                 4147 	.byte	13
   15C1 05                 4148 	.byte	5
   15C2 00                 4149 	.byte	0
   15C3 F0                 4150 	.byte	-16
   15C4 0B                 4151 	.byte	11
   15C5 FF                 4152 	.byte	-1
   15C6 FE                 4153 	.byte	-2
   15C7 0D                 4154 	.byte	13
   15C8 FF                 4155 	.byte	-1
   15C9 10                 4156 	.byte	16
   15CA F4                 4157 	.byte	-12
   15CB FF                 4158 	.byte	-1
   15CC 02                 4159 	.byte	2
   15CD F4                 4160 	.byte	-12
   15CE FF                 4161 	.byte	-1
   15CF F0                 4162 	.byte	-16
   15D0 0B                 4163 	.byte	11
   15D1 01                 4164 	.byte	1
                           4165 	.globl	_width2RollingFront3
   15D2                    4166 _width2RollingFront3:
   15D2 FF                 4167 	.byte	-1
   15D3 06                 4168 	.byte	6
   15D4 1C                 4169 	.byte	28
   15D5 FF                 4170 	.byte	-1
   15D6 0C                 4171 	.byte	12
   15D7 FA                 4172 	.byte	-6
   15D8 FF                 4173 	.byte	-1
   15D9 FA                 4174 	.byte	-6
   15DA E5                 4175 	.byte	-27
   15DB FF                 4176 	.byte	-1
   15DC F4                 4177 	.byte	-12
   15DD 05                 4178 	.byte	5
   15DE FF                 4179 	.byte	-1
   15DF 09                 4180 	.byte	9
   15E0 02                 4181 	.byte	2
   15E1 00                 4182 	.byte	0
   15E2 FD                 4183 	.byte	-3
   15E3 1A                 4184 	.byte	26
   15E4 FF                 4185 	.byte	-1
   15E5 09                 4186 	.byte	9
   15E6 02                 4187 	.byte	2
   15E7 00                 4188 	.byte	0
   15E8 03                 4189 	.byte	3
   15E9 F8                 4190 	.byte	-8
   15EA FF                 4191 	.byte	-1
   15EB 09                 4192 	.byte	9
   15EC 03                 4193 	.byte	3
   15ED 00                 4194 	.byte	0
   15EE F1                 4195 	.byte	-15
   15EF E2                 4196 	.byte	-30
   15F0 FF                 4197 	.byte	-1
   15F1 09                 4198 	.byte	9
   15F2 03                 4199 	.byte	3
   15F3 00                 4200 	.byte	0
   15F4 F4                 4201 	.byte	-12
   15F5 04                 4202 	.byte	4
   15F6 FF                 4203 	.byte	-1
   15F7 06                 4204 	.byte	6
   15F8 1C                 4205 	.byte	28
   15F9 FF                 4206 	.byte	-1
   15FA 0C                 4207 	.byte	12
   15FB FB                 4208 	.byte	-5
   15FC FF                 4209 	.byte	-1
   15FD FA                 4210 	.byte	-6
   15FE E5                 4211 	.byte	-27
   15FF FF                 4212 	.byte	-1
   1600 F4                 4213 	.byte	-12
   1601 04                 4214 	.byte	4
   1602 01                 4215 	.byte	1
                           4216 	.globl	_width2RollingBack3
   1603                    4217 _width2RollingBack3:
   1603 00                 4218 	.byte	0
   1604 06                 4219 	.byte	6
   1605 00                 4220 	.byte	0
   1606 FF                 4221 	.byte	-1
   1607 06                 4222 	.byte	6
   1608 1C                 4223 	.byte	28
   1609 FF                 4224 	.byte	-1
   160A 02                 4225 	.byte	2
   160B FA                 4226 	.byte	-6
   160C FF                 4227 	.byte	-1
   160D FA                 4228 	.byte	-6
   160E E5                 4229 	.byte	-27
   160F FF                 4230 	.byte	-1
   1610 FE                 4231 	.byte	-2
   1611 05                 4232 	.byte	5
   1612 FF                 4233 	.byte	-1
   1613 0F                 4234 	.byte	15
   1614 FE                 4235 	.byte	-2
   1615 00                 4236 	.byte	0
   1616 F7                 4237 	.byte	-9
   1617 1E                 4238 	.byte	30
   1618 FF                 4239 	.byte	-1
   1619 0F                 4240 	.byte	15
   161A FD                 4241 	.byte	-3
   161B 00                 4242 	.byte	0
   161C F3                 4243 	.byte	-13
   161D FD                 4244 	.byte	-3
   161E FF                 4245 	.byte	-1
   161F 0F                 4246 	.byte	15
   1620 FE                 4247 	.byte	-2
   1621 00                 4248 	.byte	0
   1622 EB                 4249 	.byte	-21
   1623 E7                 4250 	.byte	-25
   1624 FF                 4251 	.byte	-1
   1625 0F                 4252 	.byte	15
   1626 FE                 4253 	.byte	-2
   1627 00                 4254 	.byte	0
   1628 FE                 4255 	.byte	-2
   1629 05                 4256 	.byte	5
   162A FF                 4257 	.byte	-1
   162B 06                 4258 	.byte	6
   162C 1B                 4259 	.byte	27
   162D FF                 4260 	.byte	-1
   162E 02                 4261 	.byte	2
   162F FB                 4262 	.byte	-5
   1630 FF                 4263 	.byte	-1
   1631 FA                 4264 	.byte	-6
   1632 E5                 4265 	.byte	-27
   1633 FF                 4266 	.byte	-1
   1634 FE                 4267 	.byte	-2
   1635 05                 4268 	.byte	5
   1636 01                 4269 	.byte	1
                           4270 	.globl	_height1FallingLeft3
   1637                    4271 _height1FallingLeft3:
   1637 FF                 4272 	.byte	-1
   1638 08                 4273 	.byte	8
   1639 0D                 4274 	.byte	13
   163A FF                 4275 	.byte	-1
   163B 08                 4276 	.byte	8
   163C FA                 4277 	.byte	-6
   163D FF                 4278 	.byte	-1
   163E F8                 4279 	.byte	-8
   163F F4                 4280 	.byte	-12
   1640 FF                 4281 	.byte	-1
   1641 F8                 4282 	.byte	-8
   1642 05                 4283 	.byte	5
   1643 FF                 4284 	.byte	-1
   1644 0B                 4285 	.byte	11
   1645 FC                 4286 	.byte	-4
   1646 00                 4287 	.byte	0
   1647 FD                 4288 	.byte	-3
   1648 11                 4289 	.byte	17
   1649 FF                 4290 	.byte	-1
   164A 0B                 4291 	.byte	11
   164B FB                 4292 	.byte	-5
   164C 00                 4293 	.byte	0
   164D FD                 4294 	.byte	-3
   164E FF                 4295 	.byte	-1
   164F FF                 4296 	.byte	-1
   1650 0B                 4297 	.byte	11
   1651 FB                 4298 	.byte	-5
   1652 00                 4299 	.byte	0
   1653 ED                 4300 	.byte	-19
   1654 F9                 4301 	.byte	-7
   1655 FF                 4302 	.byte	-1
   1656 0B                 4303 	.byte	11
   1657 FB                 4304 	.byte	-5
   1658 00                 4305 	.byte	0
   1659 F8                 4306 	.byte	-8
   165A 06                 4307 	.byte	6
   165B FF                 4308 	.byte	-1
   165C 08                 4309 	.byte	8
   165D 0C                 4310 	.byte	12
   165E FF                 4311 	.byte	-1
   165F 08                 4312 	.byte	8
   1660 FA                 4313 	.byte	-6
   1661 FF                 4314 	.byte	-1
   1662 F8                 4315 	.byte	-8
   1663 F4                 4316 	.byte	-12
   1664 FF                 4317 	.byte	-1
   1665 F8                 4318 	.byte	-8
   1666 06                 4319 	.byte	6
   1667 01                 4320 	.byte	1
                           4321 	.globl	_height1FallingRight3
   1668                    4322 _height1FallingRight3:
   1668 00                 4323 	.byte	0
   1669 05                 4324 	.byte	5
   166A 01                 4325 	.byte	1
   166B FF                 4326 	.byte	-1
   166C FE                 4327 	.byte	-2
   166D 0D                 4328 	.byte	13
   166E FF                 4329 	.byte	-1
   166F 08                 4330 	.byte	8
   1670 FA                 4331 	.byte	-6
   1671 FF                 4332 	.byte	-1
   1672 02                 4333 	.byte	2
   1673 F4                 4334 	.byte	-12
   1674 FF                 4335 	.byte	-1
   1675 F8                 4336 	.byte	-8
   1676 05                 4337 	.byte	5
   1677 FF                 4338 	.byte	-1
   1678 0D                 4339 	.byte	13
   1679 05                 4340 	.byte	5
   167A 00                 4341 	.byte	0
   167B F1                 4342 	.byte	-15
   167C 08                 4343 	.byte	8
   167D FF                 4344 	.byte	-1
   167E 0D                 4345 	.byte	13
   167F 05                 4346 	.byte	5
   1680 00                 4347 	.byte	0
   1681 FB                 4348 	.byte	-5
   1682 F5                 4349 	.byte	-11
   1683 FF                 4350 	.byte	-1
   1684 0D                 4351 	.byte	13
   1685 05                 4352 	.byte	5
   1686 00                 4353 	.byte	0
   1687 F5                 4354 	.byte	-11
   1688 EF                 4355 	.byte	-17
   1689 FF                 4356 	.byte	-1
   168A 0D                 4357 	.byte	13
   168B 04                 4358 	.byte	4
   168C 00                 4359 	.byte	0
   168D F8                 4360 	.byte	-8
   168E 06                 4361 	.byte	6
   168F FF                 4362 	.byte	-1
   1690 FE                 4363 	.byte	-2
   1691 0D                 4364 	.byte	13
   1692 FF                 4365 	.byte	-1
   1693 08                 4366 	.byte	8
   1694 FA                 4367 	.byte	-6
   1695 FF                 4368 	.byte	-1
   1696 02                 4369 	.byte	2
   1697 F3                 4370 	.byte	-13
   1698 FF                 4371 	.byte	-1
   1699 F8                 4372 	.byte	-8
   169A 06                 4373 	.byte	6
   169B 01                 4374 	.byte	1
                           4375 	.globl	_height1FallingBack3
   169C                    4376 _height1FallingBack3:
   169C 00                 4377 	.byte	0
   169D 06                 4378 	.byte	6
   169E 00                 4379 	.byte	0
   169F FF                 4380 	.byte	-1
   16A0 03                 4381 	.byte	3
   16A1 0E                 4382 	.byte	14
   16A2 FF                 4383 	.byte	-1
   16A3 02                 4384 	.byte	2
   16A4 FA                 4385 	.byte	-6
   16A5 FF                 4386 	.byte	-1
   16A6 FD                 4387 	.byte	-3
   16A7 F3                 4388 	.byte	-13
   16A8 FF                 4389 	.byte	-1
   16A9 FE                 4390 	.byte	-2
   16AA 05                 4391 	.byte	5
   16AB FF                 4392 	.byte	-1
   16AC 0F                 4393 	.byte	15
   16AD FE                 4394 	.byte	-2
   16AE 00                 4395 	.byte	0
   16AF F4                 4396 	.byte	-12
   16B0 10                 4397 	.byte	16
   16B1 FF                 4398 	.byte	-1
   16B2 0F                 4399 	.byte	15
   16B3 FD                 4400 	.byte	-3
   16B4 00                 4401 	.byte	0
   16B5 F3                 4402 	.byte	-13
   16B6 FD                 4403 	.byte	-3
   16B7 FF                 4404 	.byte	-1
   16B8 0F                 4405 	.byte	15
   16B9 FE                 4406 	.byte	-2
   16BA 00                 4407 	.byte	0
   16BB EE                 4408 	.byte	-18
   16BC F5                 4409 	.byte	-11
   16BD FF                 4410 	.byte	-1
   16BE 0F                 4411 	.byte	15
   16BF FE                 4412 	.byte	-2
   16C0 00                 4413 	.byte	0
   16C1 FE                 4414 	.byte	-2
   16C2 05                 4415 	.byte	5
   16C3 FF                 4416 	.byte	-1
   16C4 03                 4417 	.byte	3
   16C5 0D                 4418 	.byte	13
   16C6 FF                 4419 	.byte	-1
   16C7 02                 4420 	.byte	2
   16C8 FB                 4421 	.byte	-5
   16C9 FF                 4422 	.byte	-1
   16CA FD                 4423 	.byte	-3
   16CB F3                 4424 	.byte	-13
   16CC FF                 4425 	.byte	-1
   16CD FE                 4426 	.byte	-2
   16CE 05                 4427 	.byte	5
   16CF 01                 4428 	.byte	1
                           4429 	.globl	_height1FallingFront3
   16D0                    4430 _height1FallingFront3:
   16D0 FF                 4431 	.byte	-1
   16D1 03                 4432 	.byte	3
   16D2 0E                 4433 	.byte	14
   16D3 FF                 4434 	.byte	-1
   16D4 0C                 4435 	.byte	12
   16D5 FA                 4436 	.byte	-6
   16D6 FF                 4437 	.byte	-1
   16D7 FD                 4438 	.byte	-3
   16D8 F3                 4439 	.byte	-13
   16D9 FF                 4440 	.byte	-1
   16DA F4                 4441 	.byte	-12
   16DB 05                 4442 	.byte	5
   16DC FF                 4443 	.byte	-1
   16DD 09                 4444 	.byte	9
   16DE 02                 4445 	.byte	2
   16DF 00                 4446 	.byte	0
   16E0 FA                 4447 	.byte	-6
   16E1 0C                 4448 	.byte	12
   16E2 FF                 4449 	.byte	-1
   16E3 09                 4450 	.byte	9
   16E4 02                 4451 	.byte	2
   16E5 00                 4452 	.byte	0
   16E6 03                 4453 	.byte	3
   16E7 F8                 4454 	.byte	-8
   16E8 FF                 4455 	.byte	-1
   16E9 09                 4456 	.byte	9
   16EA 03                 4457 	.byte	3
   16EB 00                 4458 	.byte	0
   16EC F4                 4459 	.byte	-12
   16ED F0                 4460 	.byte	-16
   16EE FF                 4461 	.byte	-1
   16EF 09                 4462 	.byte	9
   16F0 03                 4463 	.byte	3
   16F1 00                 4464 	.byte	0
   16F2 F4                 4465 	.byte	-12
   16F3 04                 4466 	.byte	4
   16F4 FF                 4467 	.byte	-1
   16F5 03                 4468 	.byte	3
   16F6 0E                 4469 	.byte	14
   16F7 FF                 4470 	.byte	-1
   16F8 0C                 4471 	.byte	12
   16F9 FB                 4472 	.byte	-5
   16FA FF                 4473 	.byte	-1
   16FB FD                 4474 	.byte	-3
   16FC F3                 4475 	.byte	-13
   16FD FF                 4476 	.byte	-1
   16FE F4                 4477 	.byte	-12
   16FF 04                 4478 	.byte	4
   1700 01                 4479 	.byte	1
                           4480 	.globl	_height2FallingLeft4
   1701                    4481 _height2FallingLeft4:
   1701 FF                 4482 	.byte	-1
   1702 09                 4483 	.byte	9
   1703 0C                 4484 	.byte	12
   1704 FF                 4485 	.byte	-1
   1705 08                 4486 	.byte	8
   1706 FA                 4487 	.byte	-6
   1707 FF                 4488 	.byte	-1
   1708 F7                 4489 	.byte	-9
   1709 F5                 4490 	.byte	-11
   170A FF                 4491 	.byte	-1
   170B F8                 4492 	.byte	-8
   170C 05                 4493 	.byte	5
   170D FF                 4494 	.byte	-1
   170E 14                 4495 	.byte	20
   170F F3                 4496 	.byte	-13
   1710 00                 4497 	.byte	0
   1711 F5                 4498 	.byte	-11
   1712 19                 4499 	.byte	25
   1713 FF                 4500 	.byte	-1
   1714 14                 4501 	.byte	20
   1715 F3                 4502 	.byte	-13
   1716 00                 4503 	.byte	0
   1717 F4                 4504 	.byte	-12
   1718 07                 4505 	.byte	7
   1719 FF                 4506 	.byte	-1
   171A 14                 4507 	.byte	20
   171B F3                 4508 	.byte	-13
   171C 00                 4509 	.byte	0
   171D E3                 4510 	.byte	-29
   171E 02                 4511 	.byte	2
   171F FF                 4512 	.byte	-1
   1720 14                 4513 	.byte	20
   1721 F2                 4514 	.byte	-14
   1722 00                 4515 	.byte	0
   1723 F8                 4516 	.byte	-8
   1724 06                 4517 	.byte	6
   1725 FF                 4518 	.byte	-1
   1726 09                 4519 	.byte	9
   1727 0C                 4520 	.byte	12
   1728 FF                 4521 	.byte	-1
   1729 08                 4522 	.byte	8
   172A FA                 4523 	.byte	-6
   172B FF                 4524 	.byte	-1
   172C F7                 4525 	.byte	-9
   172D F4                 4526 	.byte	-12
   172E FF                 4527 	.byte	-1
   172F F8                 4528 	.byte	-8
   1730 06                 4529 	.byte	6
   1731 01                 4530 	.byte	1
                           4531 	.globl	_height2RisingRight4
   1732                    4532 _height2RisingRight4:
   1732 00                 4533 	.byte	0
   1733 06                 4534 	.byte	6
   1734 1C                 4535 	.byte	28
   1735 FF                 4536 	.byte	-1
   1736 0C                 4537 	.byte	12
   1737 09                 4538 	.byte	9
   1738 FF                 4539 	.byte	-1
   1739 08                 4540 	.byte	8
   173A FA                 4541 	.byte	-6
   173B FF                 4542 	.byte	-1
   173C F4                 4543 	.byte	-12
   173D F7                 4544 	.byte	-9
   173E FF                 4545 	.byte	-1
   173F F8                 4546 	.byte	-8
   1740 06                 4547 	.byte	6
   1741 FF                 4548 	.byte	-1
   1742 0B                 4549 	.byte	11
   1743 EA                 4550 	.byte	-22
   1744 00                 4551 	.byte	0
   1745 01                 4552 	.byte	1
   1746 1F                 4553 	.byte	31
   1747 FF                 4554 	.byte	-1
   1748 0B                 4555 	.byte	11
   1749 E9                 4556 	.byte	-23
   174A 00                 4557 	.byte	0
   174B FD                 4558 	.byte	-3
   174C 11                 4559 	.byte	17
   174D FF                 4560 	.byte	-1
   174E 0B                 4561 	.byte	11
   174F E9                 4562 	.byte	-23
   1750 00                 4563 	.byte	0
   1751 E9                 4564 	.byte	-23
   1752 0E                 4565 	.byte	14
   1753 FF                 4566 	.byte	-1
   1754 0B                 4567 	.byte	11
   1755 EA                 4568 	.byte	-22
   1756 00                 4569 	.byte	0
   1757 F8                 4570 	.byte	-8
   1758 06                 4571 	.byte	6
   1759 FF                 4572 	.byte	-1
   175A 0C                 4573 	.byte	12
   175B 08                 4574 	.byte	8
   175C FF                 4575 	.byte	-1
   175D 08                 4576 	.byte	8
   175E FA                 4577 	.byte	-6
   175F FF                 4578 	.byte	-1
   1760 F4                 4579 	.byte	-12
   1761 F8                 4580 	.byte	-8
   1762 FF                 4581 	.byte	-1
   1763 F8                 4582 	.byte	-8
   1764 06                 4583 	.byte	6
   1765 01                 4584 	.byte	1
                           4585 	.globl	_height2FallingRight4
   1766                    4586 _height2FallingRight4:
   1766 00                 4587 	.byte	0
   1767 07                 4588 	.byte	7
   1768 02                 4589 	.byte	2
   1769 FF                 4590 	.byte	-1
   176A FC                 4591 	.byte	-4
   176B 0C                 4592 	.byte	12
   176C FF                 4593 	.byte	-1
   176D 08                 4594 	.byte	8
   176E FA                 4595 	.byte	-6
   176F FF                 4596 	.byte	-1
   1770 04                 4597 	.byte	4
   1771 F5                 4598 	.byte	-11
   1772 FF                 4599 	.byte	-1
   1773 F8                 4600 	.byte	-8
   1774 05                 4601 	.byte	5
   1775 FF                 4602 	.byte	-1
   1776 19                 4603 	.byte	25
   1777 0E                 4604 	.byte	14
   1778 00                 4605 	.byte	0
   1779 E3                 4606 	.byte	-29
   177A FE                 4607 	.byte	-2
   177B FF                 4608 	.byte	-1
   177C 1A                 4609 	.byte	26
   177D 0E                 4610 	.byte	14
   177E 00                 4611 	.byte	0
   177F EE                 4612 	.byte	-18
   1780 EC                 4613 	.byte	-20
   1781 FF                 4614 	.byte	-1
   1782 1A                 4615 	.byte	26
   1783 0E                 4616 	.byte	14
   1784 00                 4617 	.byte	0
   1785 EA                 4618 	.byte	-22
   1786 E7                 4619 	.byte	-25
   1787 FF                 4620 	.byte	-1
   1788 19                 4621 	.byte	25
   1789 0D                 4622 	.byte	13
   178A 00                 4623 	.byte	0
   178B F8                 4624 	.byte	-8
   178C 06                 4625 	.byte	6
   178D FF                 4626 	.byte	-1
   178E FD                 4627 	.byte	-3
   178F 0C                 4628 	.byte	12
   1790 FF                 4629 	.byte	-1
   1791 08                 4630 	.byte	8
   1792 FA                 4631 	.byte	-6
   1793 FF                 4632 	.byte	-1
   1794 03                 4633 	.byte	3
   1795 F4                 4634 	.byte	-12
   1796 FF                 4635 	.byte	-1
   1797 F8                 4636 	.byte	-8
   1798 06                 4637 	.byte	6
   1799 01                 4638 	.byte	1
                           4639 	.globl	_height2RisingLeft4
   179A                    4640 _height2RisingLeft4:
   179A 00                 4641 	.byte	0
   179B 08                 4642 	.byte	8
   179C F8                 4643 	.byte	-8
   179D FF                 4644 	.byte	-1
   179E F8                 4645 	.byte	-8
   179F 08                 4646 	.byte	8
   17A0 FF                 4647 	.byte	-1
   17A1 08                 4648 	.byte	8
   17A2 FB                 4649 	.byte	-5
   17A3 FF                 4650 	.byte	-1
   17A4 08                 4651 	.byte	8
   17A5 F7                 4652 	.byte	-9
   17A6 FF                 4653 	.byte	-1
   17A7 F8                 4654 	.byte	-8
   17A8 06                 4655 	.byte	6
   17A9 FF                 4656 	.byte	-1
   17AA 15                 4657 	.byte	21
   17AB 16                 4658 	.byte	22
   17AC 00                 4659 	.byte	0
   17AD E3                 4660 	.byte	-29
   17AE F2                 4661 	.byte	-14
   17AF FF                 4662 	.byte	-1
   17B0 15                 4663 	.byte	21
   17B1 16                 4664 	.byte	22
   17B2 00                 4665 	.byte	0
   17B3 F3                 4666 	.byte	-13
   17B4 E5                 4667 	.byte	-27
   17B5 FF                 4668 	.byte	-1
   17B6 15                 4669 	.byte	21
   17B7 15                 4670 	.byte	21
   17B8 00                 4671 	.byte	0
   17B9 F3                 4672 	.byte	-13
   17BA E2                 4673 	.byte	-30
   17BB FF                 4674 	.byte	-1
   17BC 15                 4675 	.byte	21
   17BD 16                 4676 	.byte	22
   17BE 00                 4677 	.byte	0
   17BF F8                 4678 	.byte	-8
   17C0 06                 4679 	.byte	6
   17C1 FF                 4680 	.byte	-1
   17C2 F8                 4681 	.byte	-8
   17C3 08                 4682 	.byte	8
   17C4 FF                 4683 	.byte	-1
   17C5 08                 4684 	.byte	8
   17C6 FA                 4685 	.byte	-6
   17C7 FF                 4686 	.byte	-1
   17C8 08                 4687 	.byte	8
   17C9 F8                 4688 	.byte	-8
   17CA FF                 4689 	.byte	-1
   17CB F8                 4690 	.byte	-8
   17CC 06                 4691 	.byte	6
   17CD 01                 4692 	.byte	1
                           4693 	.globl	_height2FallingBack4
   17CE                    4694 _height2FallingBack4:
   17CE 00                 4695 	.byte	0
   17CF 08                 4696 	.byte	8
   17D0 00                 4697 	.byte	0
   17D1 FF                 4698 	.byte	-1
   17D2 03                 4699 	.byte	3
   17D3 0D                 4700 	.byte	13
   17D4 FF                 4701 	.byte	-1
   17D5 00                 4702 	.byte	0
   17D6 FB                 4703 	.byte	-5
   17D7 FF                 4704 	.byte	-1
   17D8 FD                 4705 	.byte	-3
   17D9 F3                 4706 	.byte	-13
   17DA FF                 4707 	.byte	-1
   17DB 00                 4708 	.byte	0
   17DC 05                 4709 	.byte	5
   17DD FF                 4710 	.byte	-1
   17DE 1E                 4711 	.byte	30
   17DF FA                 4712 	.byte	-6
   17E0 00                 4713 	.byte	0
   17E1 E5                 4714 	.byte	-27
   17E2 13                 4715 	.byte	19
   17E3 FF                 4716 	.byte	-1
   17E4 1E                 4717 	.byte	30
   17E5 FA                 4718 	.byte	-6
   17E6 00                 4719 	.byte	0
   17E7 E2                 4720 	.byte	-30
   17E8 01                 4721 	.byte	1
   17E9 FF                 4722 	.byte	-1
   17EA 1F                 4723 	.byte	31
   17EB FA                 4724 	.byte	-6
   17EC 00                 4725 	.byte	0
   17ED DE                 4726 	.byte	-34
   17EE F9                 4727 	.byte	-7
   17EF FF                 4728 	.byte	-1
   17F0 1F                 4729 	.byte	31
   17F1 FA                 4730 	.byte	-6
   17F2 00                 4731 	.byte	0
   17F3 FF                 4732 	.byte	-1
   17F4 05                 4733 	.byte	5
   17F5 FF                 4734 	.byte	-1
   17F6 03                 4735 	.byte	3
   17F7 0D                 4736 	.byte	13
   17F8 FF                 4737 	.byte	-1
   17F9 01                 4738 	.byte	1
   17FA FB                 4739 	.byte	-5
   17FB FF                 4740 	.byte	-1
   17FC FD                 4741 	.byte	-3
   17FD F3                 4742 	.byte	-13
   17FE FF                 4743 	.byte	-1
   17FF FF                 4744 	.byte	-1
   1800 05                 4745 	.byte	5
   1801 01                 4746 	.byte	1
                           4747 	.globl	_height2RisingFront4
   1802                    4748 _height2RisingFront4:
   1802 00                 4749 	.byte	0
   1803 05                 4750 	.byte	5
   1804 04                 4751 	.byte	4
   1805 FF                 4752 	.byte	-1
   1806 03                 4753 	.byte	3
   1807 0E                 4754 	.byte	14
   1808 FF                 4755 	.byte	-1
   1809 FB                 4756 	.byte	-5
   180A FC                 4757 	.byte	-4
   180B FF                 4758 	.byte	-1
   180C FD                 4759 	.byte	-3
   180D F2                 4760 	.byte	-14
   180E FF                 4761 	.byte	-1
   180F 05                 4762 	.byte	5
   1810 04                 4763 	.byte	4
   1811 FF                 4764 	.byte	-1
   1812 1D                 4765 	.byte	29
   1813 F7                 4766 	.byte	-9
   1814 00                 4767 	.byte	0
   1815 E6                 4768 	.byte	-26
   1816 17                 4769 	.byte	23
   1817 FF                 4770 	.byte	-1
   1818 1D                 4771 	.byte	29
   1819 F6                 4772 	.byte	-10
   181A 00                 4773 	.byte	0
   181B DE                 4774 	.byte	-34
   181C 06                 4775 	.byte	6
   181D FF                 4776 	.byte	-1
   181E 1D                 4777 	.byte	29
   181F F6                 4778 	.byte	-10
   1820 00                 4779 	.byte	0
   1821 E0                 4780 	.byte	-32
   1822 FC                 4781 	.byte	-4
   1823 FF                 4782 	.byte	-1
   1824 1D                 4783 	.byte	29
   1825 F7                 4784 	.byte	-9
   1826 00                 4785 	.byte	0
   1827 05                 4786 	.byte	5
   1828 04                 4787 	.byte	4
   1829 FF                 4788 	.byte	-1
   182A 03                 4789 	.byte	3
   182B 0D                 4790 	.byte	13
   182C FF                 4791 	.byte	-1
   182D FB                 4792 	.byte	-5
   182E FC                 4793 	.byte	-4
   182F FF                 4794 	.byte	-1
   1830 FD                 4795 	.byte	-3
   1831 F3                 4796 	.byte	-13
   1832 FF                 4797 	.byte	-1
   1833 05                 4798 	.byte	5
   1834 04                 4799 	.byte	4
   1835 01                 4800 	.byte	1
                           4801 	.globl	_height2FallingFront4
   1836                    4802 _height2FallingFront4:
   1836 FF                 4803 	.byte	-1
   1837 03                 4804 	.byte	3
   1838 0E                 4805 	.byte	14
   1839 FF                 4806 	.byte	-1
   183A 0D                 4807 	.byte	13
   183B FB                 4808 	.byte	-5
   183C FF                 4809 	.byte	-1
   183D FD                 4810 	.byte	-3
   183E F3                 4811 	.byte	-13
   183F FF                 4812 	.byte	-1
   1840 F3                 4813 	.byte	-13
   1841 04                 4814 	.byte	4
   1842 FF                 4815 	.byte	-1
   1843 0F                 4816 	.byte	15
   1844 06                 4817 	.byte	6
   1845 00                 4818 	.byte	0
   1846 F4                 4819 	.byte	-12
   1847 08                 4820 	.byte	8
   1848 FF                 4821 	.byte	-1
   1849 0F                 4822 	.byte	15
   184A 06                 4823 	.byte	6
   184B 00                 4824 	.byte	0
   184C FE                 4825 	.byte	-2
   184D F5                 4826 	.byte	-11
   184E FF                 4827 	.byte	-1
   184F 0F                 4828 	.byte	15
   1850 06                 4829 	.byte	6
   1851 00                 4830 	.byte	0
   1852 EE                 4831 	.byte	-18
   1853 ED                 4832 	.byte	-19
   1854 FF                 4833 	.byte	-1
   1855 0F                 4834 	.byte	15
   1856 05                 4835 	.byte	5
   1857 00                 4836 	.byte	0
   1858 F3                 4837 	.byte	-13
   1859 05                 4838 	.byte	5
   185A FF                 4839 	.byte	-1
   185B 03                 4840 	.byte	3
   185C 0E                 4841 	.byte	14
   185D FF                 4842 	.byte	-1
   185E 0D                 4843 	.byte	13
   185F FB                 4844 	.byte	-5
   1860 FF                 4845 	.byte	-1
   1861 FD                 4846 	.byte	-3
   1862 F2                 4847 	.byte	-14
   1863 FF                 4848 	.byte	-1
   1864 F3                 4849 	.byte	-13
   1865 05                 4850 	.byte	5
   1866 01                 4851 	.byte	1
                           4852 	.globl	_height2RisingBack4
   1867                    4853 _height2RisingBack4:
   1867 00                 4854 	.byte	0
   1868 10                 4855 	.byte	16
   1869 F5                 4856 	.byte	-11
   186A FF                 4857 	.byte	-1
   186B 03                 4858 	.byte	3
   186C 0D                 4859 	.byte	13
   186D FF                 4860 	.byte	-1
   186E 0F                 4861 	.byte	15
   186F FD                 4862 	.byte	-3
   1870 FF                 4863 	.byte	-1
   1871 FD                 4864 	.byte	-3
   1872 F2                 4865 	.byte	-14
   1873 FF                 4866 	.byte	-1
   1874 F1                 4867 	.byte	-15
   1875 04                 4868 	.byte	4
   1876 FF                 4869 	.byte	-1
   1877 03                 4870 	.byte	3
   1878 0A                 4871 	.byte	10
   1879 00                 4872 	.byte	0
   187A 00                 4873 	.byte	0
   187B 03                 4874 	.byte	3
   187C FF                 4875 	.byte	-1
   187D 03                 4876 	.byte	3
   187E 0A                 4877 	.byte	10
   187F 00                 4878 	.byte	0
   1880 0C                 4879 	.byte	12
   1881 F3                 4880 	.byte	-13
   1882 FF                 4881 	.byte	-1
   1883 03                 4882 	.byte	3
   1884 09                 4883 	.byte	9
   1885 00                 4884 	.byte	0
   1886 FA                 4885 	.byte	-6
   1887 E9                 4886 	.byte	-23
   1888 FF                 4887 	.byte	-1
   1889 03                 4888 	.byte	3
   188A 0A                 4889 	.byte	10
   188B 00                 4890 	.byte	0
   188C F1                 4891 	.byte	-15
   188D 04                 4892 	.byte	4
   188E FF                 4893 	.byte	-1
   188F 03                 4894 	.byte	3
   1890 0D                 4895 	.byte	13
   1891 FF                 4896 	.byte	-1
   1892 0F                 4897 	.byte	15
   1893 FC                 4898 	.byte	-4
   1894 FF                 4899 	.byte	-1
   1895 FD                 4900 	.byte	-3
   1896 F3                 4901 	.byte	-13
   1897 FF                 4902 	.byte	-1
   1898 F1                 4903 	.byte	-15
   1899 04                 4904 	.byte	4
   189A 01                 4905 	.byte	1
                           4906 	.globl	_depth2RollingLeft4
   189B                    4907 _depth2RollingLeft4:
   189B FF                 4908 	.byte	-1
   189C 09                 4909 	.byte	9
   189D 0C                 4910 	.byte	12
   189E FF                 4911 	.byte	-1
   189F 10                 4912 	.byte	16
   18A0 F4                 4913 	.byte	-12
   18A1 FF                 4914 	.byte	-1
   18A2 F7                 4915 	.byte	-9
   18A3 F5                 4916 	.byte	-11
   18A4 FF                 4917 	.byte	-1
   18A5 F0                 4918 	.byte	-16
   18A6 0B                 4919 	.byte	11
   18A7 FF                 4920 	.byte	-1
   18A8 0A                 4921 	.byte	10
   18A9 FA                 4922 	.byte	-6
   18AA 00                 4923 	.byte	0
   18AB FF                 4924 	.byte	-1
   18AC 12                 4925 	.byte	18
   18AD FF                 4926 	.byte	-1
   18AE 0A                 4927 	.byte	10
   18AF F9                 4928 	.byte	-7
   18B0 00                 4929 	.byte	0
   18B1 06                 4930 	.byte	6
   18B2 FB                 4931 	.byte	-5
   18B3 FF                 4932 	.byte	-1
   18B4 0A                 4933 	.byte	10
   18B5 FA                 4934 	.byte	-6
   18B6 00                 4935 	.byte	0
   18B7 ED                 4936 	.byte	-19
   18B8 FB                 4937 	.byte	-5
   18B9 FF                 4938 	.byte	-1
   18BA 0A                 4939 	.byte	10
   18BB F9                 4940 	.byte	-7
   18BC 00                 4941 	.byte	0
   18BD F0                 4942 	.byte	-16
   18BE 0C                 4943 	.byte	12
   18BF FF                 4944 	.byte	-1
   18C0 09                 4945 	.byte	9
   18C1 0B                 4946 	.byte	11
   18C2 FF                 4947 	.byte	-1
   18C3 10                 4948 	.byte	16
   18C4 F5                 4949 	.byte	-11
   18C5 FF                 4950 	.byte	-1
   18C6 F7                 4951 	.byte	-9
   18C7 F4                 4952 	.byte	-12
   18C8 FF                 4953 	.byte	-1
   18C9 F0                 4954 	.byte	-16
   18CA 0C                 4955 	.byte	12
   18CB 01                 4956 	.byte	1
                           4957 	.globl	_depth2RollingRight4
   18CC                    4958 _depth2RollingRight4:
   18CC 00                 4959 	.byte	0
   18CD 07                 4960 	.byte	7
   18CE 02                 4961 	.byte	2
   18CF FF                 4962 	.byte	-1
   18D0 FC                 4963 	.byte	-4
   18D1 0C                 4964 	.byte	12
   18D2 FF                 4965 	.byte	-1
   18D3 10                 4966 	.byte	16
   18D4 F4                 4967 	.byte	-12
   18D5 FF                 4968 	.byte	-1
   18D6 04                 4969 	.byte	4
   18D7 F5                 4970 	.byte	-11
   18D8 FF                 4971 	.byte	-1
   18D9 F0                 4972 	.byte	-16
   18DA 0B                 4973 	.byte	11
   18DB FF                 4974 	.byte	-1
   18DC 0D                 4975 	.byte	13
   18DD 07                 4976 	.byte	7
   18DE 00                 4977 	.byte	0
   18DF EF                 4978 	.byte	-17
   18E0 05                 4979 	.byte	5
   18E1 FF                 4980 	.byte	-1
   18E2 0D                 4981 	.byte	13
   18E3 07                 4982 	.byte	7
   18E4 00                 4983 	.byte	0
   18E5 03                 4984 	.byte	3
   18E6 ED                 4985 	.byte	-19
   18E7 FF                 4986 	.byte	-1
   18E8 0D                 4987 	.byte	13
   18E9 07                 4988 	.byte	7
   18EA 00                 4989 	.byte	0
   18EB F7                 4990 	.byte	-9
   18EC EE                 4991 	.byte	-18
   18ED FF                 4992 	.byte	-1
   18EE 0D                 4993 	.byte	13
   18EF 07                 4994 	.byte	7
   18F0 00                 4995 	.byte	0
   18F1 F0                 4996 	.byte	-16
   18F2 0B                 4997 	.byte	11
   18F3 FF                 4998 	.byte	-1
   18F4 FC                 4999 	.byte	-4
   18F5 0C                 5000 	.byte	12
   18F6 FF                 5001 	.byte	-1
   18F7 10                 5002 	.byte	16
   18F8 F4                 5003 	.byte	-12
   18F9 FF                 5004 	.byte	-1
   18FA 04                 5005 	.byte	4
   18FB F5                 5006 	.byte	-11
   18FC FF                 5007 	.byte	-1
   18FD F0                 5008 	.byte	-16
   18FE 0B                 5009 	.byte	11
   18FF 01                 5010 	.byte	1
                           5011 	.globl	_width2RollingFront4
   1900                    5012 _width2RollingFront4:
   1900 FF                 5013 	.byte	-1
   1901 06                 5014 	.byte	6
   1902 1C                 5015 	.byte	28
   1903 FF                 5016 	.byte	-1
   1904 0D                 5017 	.byte	13
   1905 FB                 5018 	.byte	-5
   1906 FF                 5019 	.byte	-1
   1907 FA                 5020 	.byte	-6
   1908 E5                 5021 	.byte	-27
   1909 FF                 5022 	.byte	-1
   190A F3                 5023 	.byte	-13
   190B 04                 5024 	.byte	4
   190C FF                 5025 	.byte	-1
   190D 07                 5026 	.byte	7
   190E 03                 5027 	.byte	3
   190F 00                 5028 	.byte	0
   1910 FF                 5029 	.byte	-1
   1911 19                 5030 	.byte	25
   1912 FF                 5031 	.byte	-1
   1913 07                 5032 	.byte	7
   1914 03                 5033 	.byte	3
   1915 00                 5034 	.byte	0
   1916 06                 5035 	.byte	6
   1917 F8                 5036 	.byte	-8
   1918 FF                 5037 	.byte	-1
   1919 08                 5038 	.byte	8
   191A 03                 5039 	.byte	3
   191B 00                 5040 	.byte	0
   191C F2                 5041 	.byte	-14
   191D E2                 5042 	.byte	-30
   191E FF                 5043 	.byte	-1
   191F 08                 5044 	.byte	8
   1920 03                 5045 	.byte	3
   1921 00                 5046 	.byte	0
   1922 F2                 5047 	.byte	-14
   1923 04                 5048 	.byte	4
   1924 FF                 5049 	.byte	-1
   1925 06                 5050 	.byte	6
   1926 1C                 5051 	.byte	28
   1927 FF                 5052 	.byte	-1
   1928 0E                 5053 	.byte	14
   1929 FB                 5054 	.byte	-5
   192A FF                 5055 	.byte	-1
   192B FA                 5056 	.byte	-6
   192C E5                 5057 	.byte	-27
   192D FF                 5058 	.byte	-1
   192E F2                 5059 	.byte	-14
   192F 04                 5060 	.byte	4
   1930 01                 5061 	.byte	1
                           5062 	.globl	_width2RollingBack4
   1931                    5063 _width2RollingBack4:
   1931 00                 5064 	.byte	0
   1932 08                 5065 	.byte	8
   1933 00                 5066 	.byte	0
   1934 FF                 5067 	.byte	-1
   1935 06                 5068 	.byte	6
   1936 1B                 5069 	.byte	27
   1937 FF                 5070 	.byte	-1
   1938 00                 5071 	.byte	0
   1939 FB                 5072 	.byte	-5
   193A FF                 5073 	.byte	-1
   193B FA                 5074 	.byte	-6
   193C E5                 5075 	.byte	-27
   193D FF                 5076 	.byte	-1
   193E 00                 5077 	.byte	0
   193F 05                 5078 	.byte	5
   1940 FF                 5079 	.byte	-1
   1941 0F                 5080 	.byte	15
   1942 FD                 5081 	.byte	-3
   1943 00                 5082 	.byte	0
   1944 F7                 5083 	.byte	-9
   1945 1E                 5084 	.byte	30
   1946 FF                 5085 	.byte	-1
   1947 0F                 5086 	.byte	15
   1948 FD                 5087 	.byte	-3
   1949 00                 5088 	.byte	0
   194A F1                 5089 	.byte	-15
   194B FE                 5090 	.byte	-2
   194C FF                 5091 	.byte	-1
   194D 0F                 5092 	.byte	15
   194E FD                 5093 	.byte	-3
   194F 00                 5094 	.byte	0
   1950 EB                 5095 	.byte	-21
   1951 E8                 5096 	.byte	-24
   1952 FF                 5097 	.byte	-1
   1953 0F                 5098 	.byte	15
   1954 FD                 5099 	.byte	-3
   1955 00                 5100 	.byte	0
   1956 00                 5101 	.byte	0
   1957 05                 5102 	.byte	5
   1958 FF                 5103 	.byte	-1
   1959 06                 5104 	.byte	6
   195A 1B                 5105 	.byte	27
   195B FF                 5106 	.byte	-1
   195C 00                 5107 	.byte	0
   195D FB                 5108 	.byte	-5
   195E FF                 5109 	.byte	-1
   195F FA                 5110 	.byte	-6
   1960 E5                 5111 	.byte	-27
   1961 FF                 5112 	.byte	-1
   1962 00                 5113 	.byte	0
   1963 05                 5114 	.byte	5
   1964 01                 5115 	.byte	1
                           5116 	.globl	_height1FallingLeft4
   1965                    5117 _height1FallingLeft4:
   1965 FF                 5118 	.byte	-1
   1966 09                 5119 	.byte	9
   1967 0C                 5120 	.byte	12
   1968 FF                 5121 	.byte	-1
   1969 08                 5122 	.byte	8
   196A FA                 5123 	.byte	-6
   196B FF                 5124 	.byte	-1
   196C F7                 5125 	.byte	-9
   196D F5                 5126 	.byte	-11
   196E FF                 5127 	.byte	-1
   196F F8                 5128 	.byte	-8
   1970 05                 5129 	.byte	5
   1971 FF                 5130 	.byte	-1
   1972 0A                 5131 	.byte	10
   1973 FA                 5132 	.byte	-6
   1974 00                 5133 	.byte	0
   1975 FF                 5134 	.byte	-1
   1976 12                 5135 	.byte	18
   1977 FF                 5136 	.byte	-1
   1978 0A                 5137 	.byte	10
   1979 F9                 5138 	.byte	-7
   197A 00                 5139 	.byte	0
   197B FE                 5140 	.byte	-2
   197C 01                 5141 	.byte	1
   197D FF                 5142 	.byte	-1
   197E 0A                 5143 	.byte	10
   197F FA                 5144 	.byte	-6
   1980 00                 5145 	.byte	0
   1981 ED                 5146 	.byte	-19
   1982 FB                 5147 	.byte	-5
   1983 FF                 5148 	.byte	-1
   1984 0A                 5149 	.byte	10
   1985 F9                 5150 	.byte	-7
   1986 00                 5151 	.byte	0
   1987 F8                 5152 	.byte	-8
   1988 06                 5153 	.byte	6
   1989 FF                 5154 	.byte	-1
   198A 09                 5155 	.byte	9
   198B 0B                 5156 	.byte	11
   198C FF                 5157 	.byte	-1
   198D 08                 5158 	.byte	8
   198E FB                 5159 	.byte	-5
   198F FF                 5160 	.byte	-1
   1990 F7                 5161 	.byte	-9
   1991 F4                 5162 	.byte	-12
   1992 FF                 5163 	.byte	-1
   1993 F8                 5164 	.byte	-8
   1994 06                 5165 	.byte	6
   1995 01                 5166 	.byte	1
                           5167 	.globl	_height1FallingRight4
   1996                    5168 _height1FallingRight4:
   1996 00                 5169 	.byte	0
   1997 07                 5170 	.byte	7
   1998 02                 5171 	.byte	2
   1999 FF                 5172 	.byte	-1
   199A FC                 5173 	.byte	-4
   199B 0C                 5174 	.byte	12
   199C FF                 5175 	.byte	-1
   199D 08                 5176 	.byte	8
   199E FA                 5177 	.byte	-6
   199F FF                 5178 	.byte	-1
   19A0 04                 5179 	.byte	4
   19A1 F5                 5180 	.byte	-11
   19A2 FF                 5181 	.byte	-1
   19A3 F8                 5182 	.byte	-8
   19A4 05                 5183 	.byte	5
   19A5 FF                 5184 	.byte	-1
   19A6 0D                 5185 	.byte	13
   19A7 07                 5186 	.byte	7
   19A8 00                 5187 	.byte	0
   19A9 EF                 5188 	.byte	-17
   19AA 05                 5189 	.byte	5
   19AB FF                 5190 	.byte	-1
   19AC 0D                 5191 	.byte	13
   19AD 07                 5192 	.byte	7
   19AE 00                 5193 	.byte	0
   19AF FB                 5194 	.byte	-5
   19B0 F3                 5195 	.byte	-13
   19B1 FF                 5196 	.byte	-1
   19B2 0D                 5197 	.byte	13
   19B3 07                 5198 	.byte	7
   19B4 00                 5199 	.byte	0
   19B5 F7                 5200 	.byte	-9
   19B6 EE                 5201 	.byte	-18
   19B7 FF                 5202 	.byte	-1
   19B8 0D                 5203 	.byte	13
   19B9 06                 5204 	.byte	6
   19BA 00                 5205 	.byte	0
   19BB F8                 5206 	.byte	-8
   19BC 06                 5207 	.byte	6
   19BD FF                 5208 	.byte	-1
   19BE FC                 5209 	.byte	-4
   19BF 0C                 5210 	.byte	12
   19C0 FF                 5211 	.byte	-1
   19C1 08                 5212 	.byte	8
   19C2 FA                 5213 	.byte	-6
   19C3 FF                 5214 	.byte	-1
   19C4 04                 5215 	.byte	4
   19C5 F4                 5216 	.byte	-12
   19C6 FF                 5217 	.byte	-1
   19C7 F8                 5218 	.byte	-8
   19C8 06                 5219 	.byte	6
   19C9 01                 5220 	.byte	1
                           5221 	.globl	_height1FallingBack4
   19CA                    5222 _height1FallingBack4:
   19CA 00                 5223 	.byte	0
   19CB 08                 5224 	.byte	8
   19CC 00                 5225 	.byte	0
   19CD FF                 5226 	.byte	-1
   19CE 03                 5227 	.byte	3
   19CF 0D                 5228 	.byte	13
   19D0 FF                 5229 	.byte	-1
   19D1 00                 5230 	.byte	0
   19D2 FB                 5231 	.byte	-5
   19D3 FF                 5232 	.byte	-1
   19D4 FD                 5233 	.byte	-3
   19D5 F3                 5234 	.byte	-13
   19D6 FF                 5235 	.byte	-1
   19D7 00                 5236 	.byte	0
   19D8 05                 5237 	.byte	5
   19D9 FF                 5238 	.byte	-1
   19DA 0F                 5239 	.byte	15
   19DB FD                 5240 	.byte	-3
   19DC 00                 5241 	.byte	0
   19DD F4                 5242 	.byte	-12
   19DE 10                 5243 	.byte	16
   19DF FF                 5244 	.byte	-1
   19E0 0F                 5245 	.byte	15
   19E1 FD                 5246 	.byte	-3
   19E2 00                 5247 	.byte	0
   19E3 F1                 5248 	.byte	-15
   19E4 FE                 5249 	.byte	-2
   19E5 FF                 5250 	.byte	-1
   19E6 0F                 5251 	.byte	15
   19E7 FD                 5252 	.byte	-3
   19E8 00                 5253 	.byte	0
   19E9 EE                 5254 	.byte	-18
   19EA F6                 5255 	.byte	-10
   19EB FF                 5256 	.byte	-1
   19EC 0F                 5257 	.byte	15
   19ED FD                 5258 	.byte	-3
   19EE 00                 5259 	.byte	0
   19EF 00                 5260 	.byte	0
   19F0 05                 5261 	.byte	5
   19F1 FF                 5262 	.byte	-1
   19F2 03                 5263 	.byte	3
   19F3 0D                 5264 	.byte	13
   19F4 FF                 5265 	.byte	-1
   19F5 00                 5266 	.byte	0
   19F6 FB                 5267 	.byte	-5
   19F7 FF                 5268 	.byte	-1
   19F8 FD                 5269 	.byte	-3
   19F9 F3                 5270 	.byte	-13
   19FA FF                 5271 	.byte	-1
   19FB 00                 5272 	.byte	0
   19FC 05                 5273 	.byte	5
   19FD 01                 5274 	.byte	1
                           5275 	.globl	_height1FallingFront4
   19FE                    5276 _height1FallingFront4:
   19FE FF                 5277 	.byte	-1
   19FF 03                 5278 	.byte	3
   1A00 0E                 5279 	.byte	14
   1A01 FF                 5280 	.byte	-1
   1A02 0D                 5281 	.byte	13
   1A03 FB                 5282 	.byte	-5
   1A04 FF                 5283 	.byte	-1
   1A05 FD                 5284 	.byte	-3
   1A06 F3                 5285 	.byte	-13
   1A07 FF                 5286 	.byte	-1
   1A08 F3                 5287 	.byte	-13
   1A09 04                 5288 	.byte	4
   1A0A FF                 5289 	.byte	-1
   1A0B 07                 5290 	.byte	7
   1A0C 03                 5291 	.byte	3
   1A0D 00                 5292 	.byte	0
   1A0E FC                 5293 	.byte	-4
   1A0F 0B                 5294 	.byte	11
   1A10 FF                 5295 	.byte	-1
   1A11 07                 5296 	.byte	7
   1A12 03                 5297 	.byte	3
   1A13 00                 5298 	.byte	0
   1A14 06                 5299 	.byte	6
   1A15 F8                 5300 	.byte	-8
   1A16 FF                 5301 	.byte	-1
   1A17 08                 5302 	.byte	8
   1A18 03                 5303 	.byte	3
   1A19 00                 5304 	.byte	0
   1A1A F5                 5305 	.byte	-11
   1A1B F0                 5306 	.byte	-16
   1A1C FF                 5307 	.byte	-1
   1A1D 08                 5308 	.byte	8
   1A1E 03                 5309 	.byte	3
   1A1F 00                 5310 	.byte	0
   1A20 F2                 5311 	.byte	-14
   1A21 04                 5312 	.byte	4
   1A22 FF                 5313 	.byte	-1
   1A23 03                 5314 	.byte	3
   1A24 0E                 5315 	.byte	14
   1A25 FF                 5316 	.byte	-1
   1A26 0E                 5317 	.byte	14
   1A27 FB                 5318 	.byte	-5
   1A28 FF                 5319 	.byte	-1
   1A29 FD                 5320 	.byte	-3
   1A2A F3                 5321 	.byte	-13
   1A2B FF                 5322 	.byte	-1
   1A2C F2                 5323 	.byte	-14
   1A2D 04                 5324 	.byte	4
   1A2E 01                 5325 	.byte	1
                           5326 	.globl	_height2FallingLeft5
   1A2F                    5327 _height2FallingLeft5:
   1A2F FF                 5328 	.byte	-1
   1A30 0A                 5329 	.byte	10
   1A31 0B                 5330 	.byte	11
   1A32 FF                 5331 	.byte	-1
   1A33 08                 5332 	.byte	8
   1A34 FA                 5333 	.byte	-6
   1A35 FF                 5334 	.byte	-1
   1A36 F6                 5335 	.byte	-10
   1A37 F6                 5336 	.byte	-10
   1A38 FF                 5337 	.byte	-1
   1A39 F8                 5338 	.byte	-8
   1A3A 05                 5339 	.byte	5
   1A3B FF                 5340 	.byte	-1
   1A3C 11                 5341 	.byte	17
   1A3D F0                 5342 	.byte	-16
   1A3E 00                 5343 	.byte	0
   1A3F F9                 5344 	.byte	-7
   1A40 1B                 5345 	.byte	27
   1A41 FF                 5346 	.byte	-1
   1A42 11                 5347 	.byte	17
   1A43 F0                 5348 	.byte	-16
   1A44 00                 5349 	.byte	0
   1A45 F7                 5350 	.byte	-9
   1A46 0A                 5351 	.byte	10
   1A47 FF                 5352 	.byte	-1
   1A48 11                 5353 	.byte	17
   1A49 F0                 5354 	.byte	-16
   1A4A 00                 5355 	.byte	0
   1A4B E5                 5356 	.byte	-27
   1A4C 06                 5357 	.byte	6
   1A4D FF                 5358 	.byte	-1
   1A4E 11                 5359 	.byte	17
   1A4F EF                 5360 	.byte	-17
   1A50 00                 5361 	.byte	0
   1A51 F8                 5362 	.byte	-8
   1A52 06                 5363 	.byte	6
   1A53 FF                 5364 	.byte	-1
   1A54 0A                 5365 	.byte	10
   1A55 0B                 5366 	.byte	11
   1A56 FF                 5367 	.byte	-1
   1A57 08                 5368 	.byte	8
   1A58 FA                 5369 	.byte	-6
   1A59 FF                 5370 	.byte	-1
   1A5A F6                 5371 	.byte	-10
   1A5B F5                 5372 	.byte	-11
   1A5C FF                 5373 	.byte	-1
   1A5D F8                 5374 	.byte	-8
   1A5E 06                 5375 	.byte	6
   1A5F 01                 5376 	.byte	1
                           5377 	.globl	_height2RisingRight5
   1A60                    5378 _height2RisingRight5:
   1A60 00                 5379 	.byte	0
   1A61 06                 5380 	.byte	6
   1A62 1C                 5381 	.byte	28
   1A63 FF                 5382 	.byte	-1
   1A64 0B                 5383 	.byte	11
   1A65 0A                 5384 	.byte	10
   1A66 FF                 5385 	.byte	-1
   1A67 08                 5386 	.byte	8
   1A68 FA                 5387 	.byte	-6
   1A69 FF                 5388 	.byte	-1
   1A6A F5                 5389 	.byte	-11
   1A6B F6                 5390 	.byte	-10
   1A6C FF                 5391 	.byte	-1
   1A6D F8                 5392 	.byte	-8
   1A6E 06                 5393 	.byte	6
   1A6F FF                 5394 	.byte	-1
   1A70 0E                 5395 	.byte	14
   1A71 EC                 5396 	.byte	-20
   1A72 00                 5397 	.byte	0
   1A73 FD                 5398 	.byte	-3
   1A74 1E                 5399 	.byte	30
   1A75 FF                 5400 	.byte	-1
   1A76 0E                 5401 	.byte	14
   1A77 EC                 5402 	.byte	-20
   1A78 00                 5403 	.byte	0
   1A79 FA                 5404 	.byte	-6
   1A7A 0E                 5405 	.byte	14
   1A7B FF                 5406 	.byte	-1
   1A7C 0E                 5407 	.byte	14
   1A7D EC                 5408 	.byte	-20
   1A7E 00                 5409 	.byte	0
   1A7F E7                 5410 	.byte	-25
   1A80 0A                 5411 	.byte	10
   1A81 FF                 5412 	.byte	-1
   1A82 0E                 5413 	.byte	14
   1A83 EC                 5414 	.byte	-20
   1A84 00                 5415 	.byte	0
   1A85 F8                 5416 	.byte	-8
   1A86 06                 5417 	.byte	6
   1A87 FF                 5418 	.byte	-1
   1A88 0B                 5419 	.byte	11
   1A89 0A                 5420 	.byte	10
   1A8A FF                 5421 	.byte	-1
   1A8B 08                 5422 	.byte	8
   1A8C FA                 5423 	.byte	-6
   1A8D FF                 5424 	.byte	-1
   1A8E F5                 5425 	.byte	-11
   1A8F F6                 5426 	.byte	-10
   1A90 FF                 5427 	.byte	-1
   1A91 F8                 5428 	.byte	-8
   1A92 06                 5429 	.byte	6
   1A93 01                 5430 	.byte	1
                           5431 	.globl	_height2FallingRight5
   1A94                    5432 _height2FallingRight5:
   1A94 00                 5433 	.byte	0
   1A95 09                 5434 	.byte	9
   1A96 03                 5435 	.byte	3
   1A97 FF                 5436 	.byte	-1
   1A98 FA                 5437 	.byte	-6
   1A99 0B                 5438 	.byte	11
   1A9A FF                 5439 	.byte	-1
   1A9B 08                 5440 	.byte	8
   1A9C FA                 5441 	.byte	-6
   1A9D FF                 5442 	.byte	-1
   1A9E 06                 5443 	.byte	6
   1A9F F6                 5444 	.byte	-10
   1AA0 FF                 5445 	.byte	-1
   1AA1 F8                 5446 	.byte	-8
   1AA2 05                 5447 	.byte	5
   1AA3 FF                 5448 	.byte	-1
   1AA4 18                 5449 	.byte	24
   1AA5 11                 5450 	.byte	17
   1AA6 00                 5451 	.byte	0
   1AA7 E2                 5452 	.byte	-30
   1AA8 FA                 5453 	.byte	-6
   1AA9 FF                 5454 	.byte	-1
   1AAA 18                 5455 	.byte	24
   1AAB 11                 5456 	.byte	17
   1AAC 00                 5457 	.byte	0
   1AAD F0                 5458 	.byte	-16
   1AAE E9                 5459 	.byte	-23
   1AAF FF                 5460 	.byte	-1
   1AB0 18                 5461 	.byte	24
   1AB1 11                 5462 	.byte	17
   1AB2 00                 5463 	.byte	0
   1AB3 EE                 5464 	.byte	-18
   1AB4 E5                 5465 	.byte	-27
   1AB5 FF                 5466 	.byte	-1
   1AB6 18                 5467 	.byte	24
   1AB7 10                 5468 	.byte	16
   1AB8 00                 5469 	.byte	0
   1AB9 F8                 5470 	.byte	-8
   1ABA 06                 5471 	.byte	6
   1ABB FF                 5472 	.byte	-1
   1ABC FA                 5473 	.byte	-6
   1ABD 0B                 5474 	.byte	11
   1ABE FF                 5475 	.byte	-1
   1ABF 08                 5476 	.byte	8
   1AC0 FA                 5477 	.byte	-6
   1AC1 FF                 5478 	.byte	-1
   1AC2 06                 5479 	.byte	6
   1AC3 F5                 5480 	.byte	-11
   1AC4 FF                 5481 	.byte	-1
   1AC5 F8                 5482 	.byte	-8
   1AC6 06                 5483 	.byte	6
   1AC7 01                 5484 	.byte	1
                           5485 	.globl	_height2RisingLeft5
   1AC8                    5486 _height2RisingLeft5:
   1AC8 00                 5487 	.byte	0
   1AC9 07                 5488 	.byte	7
   1ACA F7                 5489 	.byte	-9
   1ACB FF                 5490 	.byte	-1
   1ACC F9                 5491 	.byte	-7
   1ACD 09                 5492 	.byte	9
   1ACE FF                 5493 	.byte	-1
   1ACF 08                 5494 	.byte	8
   1AD0 FB                 5495 	.byte	-5
   1AD1 FF                 5496 	.byte	-1
   1AD2 07                 5497 	.byte	7
   1AD3 F6                 5498 	.byte	-10
   1AD4 FF                 5499 	.byte	-1
   1AD5 F8                 5500 	.byte	-8
   1AD6 06                 5501 	.byte	6
   1AD7 FF                 5502 	.byte	-1
   1AD8 17                 5503 	.byte	23
   1AD9 13                 5504 	.byte	19
   1ADA 00                 5505 	.byte	0
   1ADB E2                 5506 	.byte	-30
   1ADC F6                 5507 	.byte	-10
   1ADD FF                 5508 	.byte	-1
   1ADE 17                 5509 	.byte	23
   1ADF 14                 5510 	.byte	20
   1AE0 00                 5511 	.byte	0
   1AE1 F1                 5512 	.byte	-15
   1AE2 E7                 5513 	.byte	-25
   1AE3 FF                 5514 	.byte	-1
   1AE4 17                 5515 	.byte	23
   1AE5 13                 5516 	.byte	19
   1AE6 00                 5517 	.byte	0
   1AE7 F0                 5518 	.byte	-16
   1AE8 E3                 5519 	.byte	-29
   1AE9 FF                 5520 	.byte	-1
   1AEA 17                 5521 	.byte	23
   1AEB 13                 5522 	.byte	19
   1AEC 00                 5523 	.byte	0
   1AED F8                 5524 	.byte	-8
   1AEE 06                 5525 	.byte	6
   1AEF FF                 5526 	.byte	-1
   1AF0 F9                 5527 	.byte	-7
   1AF1 0A                 5528 	.byte	10
   1AF2 FF                 5529 	.byte	-1
   1AF3 08                 5530 	.byte	8
   1AF4 FA                 5531 	.byte	-6
   1AF5 FF                 5532 	.byte	-1
   1AF6 07                 5533 	.byte	7
   1AF7 F6                 5534 	.byte	-10
   1AF8 FF                 5535 	.byte	-1
   1AF9 F8                 5536 	.byte	-8
   1AFA 06                 5537 	.byte	6
   1AFB 01                 5538 	.byte	1
                           5539 	.globl	_height2FallingBack5
   1AFC                    5540 _height2FallingBack5:
   1AFC 00                 5541 	.byte	0
   1AFD 0A                 5542 	.byte	10
   1AFE 00                 5543 	.byte	0
   1AFF FF                 5544 	.byte	-1
   1B00 03                 5545 	.byte	3
   1B01 0D                 5546 	.byte	13
   1B02 FF                 5547 	.byte	-1
   1B03 FE                 5548 	.byte	-2
   1B04 FB                 5549 	.byte	-5
   1B05 FF                 5550 	.byte	-1
   1B06 FD                 5551 	.byte	-3
   1B07 F3                 5552 	.byte	-13
   1B08 FF                 5553 	.byte	-1
   1B09 02                 5554 	.byte	2
   1B0A 05                 5555 	.byte	5
   1B0B FF                 5556 	.byte	-1
   1B0C 1E                 5557 	.byte	30
   1B0D F8                 5558 	.byte	-8
   1B0E 00                 5559 	.byte	0
   1B0F E5                 5560 	.byte	-27
   1B10 15                 5561 	.byte	21
   1B11 FF                 5562 	.byte	-1
   1B12 1E                 5563 	.byte	30
   1B13 F8                 5564 	.byte	-8
   1B14 00                 5565 	.byte	0
   1B15 E0                 5566 	.byte	-32
   1B16 03                 5567 	.byte	3
   1B17 FF                 5568 	.byte	-1
   1B18 1E                 5569 	.byte	30
   1B19 F9                 5570 	.byte	-7
   1B1A 00                 5571 	.byte	0
   1B1B DF                 5572 	.byte	-33
   1B1C FA                 5573 	.byte	-6
   1B1D FF                 5574 	.byte	-1
   1B1E 1E                 5575 	.byte	30
   1B1F F9                 5576 	.byte	-7
   1B20 00                 5577 	.byte	0
   1B21 02                 5578 	.byte	2
   1B22 04                 5579 	.byte	4
   1B23 FF                 5580 	.byte	-1
   1B24 03                 5581 	.byte	3
   1B25 0D                 5582 	.byte	13
   1B26 FF                 5583 	.byte	-1
   1B27 FE                 5584 	.byte	-2
   1B28 FC                 5585 	.byte	-4
   1B29 FF                 5586 	.byte	-1
   1B2A FD                 5587 	.byte	-3
   1B2B F3                 5588 	.byte	-13
   1B2C FF                 5589 	.byte	-1
   1B2D 02                 5590 	.byte	2
   1B2E 04                 5591 	.byte	4
   1B2F 01                 5592 	.byte	1
                           5593 	.globl	_height2RisingFront5
   1B30                    5594 _height2RisingFront5:
   1B30 00                 5595 	.byte	0
   1B31 04                 5596 	.byte	4
   1B32 04                 5597 	.byte	4
   1B33 FF                 5598 	.byte	-1
   1B34 03                 5599 	.byte	3
   1B35 0E                 5600 	.byte	14
   1B36 FF                 5601 	.byte	-1
   1B37 FC                 5602 	.byte	-4
   1B38 FC                 5603 	.byte	-4
   1B39 FF                 5604 	.byte	-1
   1B3A FD                 5605 	.byte	-3
   1B3B F2                 5606 	.byte	-14
   1B3C FF                 5607 	.byte	-1
   1B3D 04                 5608 	.byte	4
   1B3E 04                 5609 	.byte	4
   1B3F FF                 5610 	.byte	-1
   1B40 1D                 5611 	.byte	29
   1B41 F9                 5612 	.byte	-7
   1B42 00                 5613 	.byte	0
   1B43 E6                 5614 	.byte	-26
   1B44 15                 5615 	.byte	21
   1B45 FF                 5616 	.byte	-1
   1B46 1D                 5617 	.byte	29
   1B47 F8                 5618 	.byte	-8
   1B48 00                 5619 	.byte	0
   1B49 DF                 5620 	.byte	-33
   1B4A 04                 5621 	.byte	4
   1B4B FF                 5622 	.byte	-1
   1B4C 1E                 5623 	.byte	30
   1B4D F8                 5624 	.byte	-8
   1B4E 00                 5625 	.byte	0
   1B4F DF                 5626 	.byte	-33
   1B50 FA                 5627 	.byte	-6
   1B51 FF                 5628 	.byte	-1
   1B52 1E                 5629 	.byte	30
   1B53 F9                 5630 	.byte	-7
   1B54 00                 5631 	.byte	0
   1B55 03                 5632 	.byte	3
   1B56 04                 5633 	.byte	4
   1B57 FF                 5634 	.byte	-1
   1B58 03                 5635 	.byte	3
   1B59 0D                 5636 	.byte	13
   1B5A FF                 5637 	.byte	-1
   1B5B FD                 5638 	.byte	-3
   1B5C FC                 5639 	.byte	-4
   1B5D FF                 5640 	.byte	-1
   1B5E FD                 5641 	.byte	-3
   1B5F F3                 5642 	.byte	-13
   1B60 FF                 5643 	.byte	-1
   1B61 03                 5644 	.byte	3
   1B62 04                 5645 	.byte	4
   1B63 01                 5646 	.byte	1
                           5647 	.globl	_height2FallingFront5
   1B64                    5648 _height2FallingFront5:
   1B64 FF                 5649 	.byte	-1
   1B65 03                 5650 	.byte	3
   1B66 0E                 5651 	.byte	14
   1B67 FF                 5652 	.byte	-1
   1B68 0E                 5653 	.byte	14
   1B69 FB                 5654 	.byte	-5
   1B6A FF                 5655 	.byte	-1
   1B6B FD                 5656 	.byte	-3
   1B6C F3                 5657 	.byte	-13
   1B6D FF                 5658 	.byte	-1
   1B6E F2                 5659 	.byte	-14
   1B6F 04                 5660 	.byte	4
   1B70 FF                 5661 	.byte	-1
   1B71 0B                 5662 	.byte	11
   1B72 07                 5663 	.byte	7
   1B73 00                 5664 	.byte	0
   1B74 F8                 5665 	.byte	-8
   1B75 07                 5666 	.byte	7
   1B76 FF                 5667 	.byte	-1
   1B77 0B                 5668 	.byte	11
   1B78 07                 5669 	.byte	7
   1B79 00                 5670 	.byte	0
   1B7A 03                 5671 	.byte	3
   1B7B F4                 5672 	.byte	-12
   1B7C FF                 5673 	.byte	-1
   1B7D 0B                 5674 	.byte	11
   1B7E 08                 5675 	.byte	8
   1B7F 00                 5676 	.byte	0
   1B80 F2                 5677 	.byte	-14
   1B81 EB                 5678 	.byte	-21
   1B82 FF                 5679 	.byte	-1
   1B83 0B                 5680 	.byte	11
   1B84 07                 5681 	.byte	7
   1B85 00                 5682 	.byte	0
   1B86 F2                 5683 	.byte	-14
   1B87 04                 5684 	.byte	4
   1B88 FF                 5685 	.byte	-1
   1B89 03                 5686 	.byte	3
   1B8A 0E                 5687 	.byte	14
   1B8B FF                 5688 	.byte	-1
   1B8C 0E                 5689 	.byte	14
   1B8D FC                 5690 	.byte	-4
   1B8E FF                 5691 	.byte	-1
   1B8F FD                 5692 	.byte	-3
   1B90 F2                 5693 	.byte	-14
   1B91 FF                 5694 	.byte	-1
   1B92 F2                 5695 	.byte	-14
   1B93 04                 5696 	.byte	4
   1B94 01                 5697 	.byte	1
                           5698 	.globl	_height2RisingBack5
   1B95                    5699 _height2RisingBack5:
   1B95 00                 5700 	.byte	0
   1B96 10                 5701 	.byte	16
   1B97 F5                 5702 	.byte	-11
   1B98 FF                 5703 	.byte	-1
   1B99 03                 5704 	.byte	3
   1B9A 0D                 5705 	.byte	13
   1B9B FF                 5706 	.byte	-1
   1B9C 0F                 5707 	.byte	15
   1B9D FD                 5708 	.byte	-3
   1B9E FF                 5709 	.byte	-1
   1B9F FD                 5710 	.byte	-3
   1BA0 F2                 5711 	.byte	-14
   1BA1 FF                 5712 	.byte	-1
   1BA2 F1                 5713 	.byte	-15
   1BA3 04                 5714 	.byte	4
   1BA4 FF                 5715 	.byte	-1
   1BA5 07                 5716 	.byte	7
   1BA6 08                 5717 	.byte	8
   1BA7 00                 5718 	.byte	0
   1BA8 FC                 5719 	.byte	-4
   1BA9 05                 5720 	.byte	5
   1BAA FF                 5721 	.byte	-1
   1BAB 07                 5722 	.byte	7
   1BAC 08                 5723 	.byte	8
   1BAD 00                 5724 	.byte	0
   1BAE 08                 5725 	.byte	8
   1BAF F5                 5726 	.byte	-11
   1BB0 FF                 5727 	.byte	-1
   1BB1 07                 5728 	.byte	7
   1BB2 07                 5729 	.byte	7
   1BB3 00                 5730 	.byte	0
   1BB4 F6                 5731 	.byte	-10
   1BB5 EB                 5732 	.byte	-21
   1BB6 FF                 5733 	.byte	-1
   1BB7 07                 5734 	.byte	7
   1BB8 08                 5735 	.byte	8
   1BB9 00                 5736 	.byte	0
   1BBA F1                 5737 	.byte	-15
   1BBB 04                 5738 	.byte	4
   1BBC FF                 5739 	.byte	-1
   1BBD 03                 5740 	.byte	3
   1BBE 0D                 5741 	.byte	13
   1BBF FF                 5742 	.byte	-1
   1BC0 0F                 5743 	.byte	15
   1BC1 FC                 5744 	.byte	-4
   1BC2 FF                 5745 	.byte	-1
   1BC3 FD                 5746 	.byte	-3
   1BC4 F3                 5747 	.byte	-13
   1BC5 FF                 5748 	.byte	-1
   1BC6 F1                 5749 	.byte	-15
   1BC7 04                 5750 	.byte	4
   1BC8 01                 5751 	.byte	1
                           5752 	.globl	_depth2RollingLeft5
   1BC9                    5753 _depth2RollingLeft5:
   1BC9 FF                 5754 	.byte	-1
   1BCA 0A                 5755 	.byte	10
   1BCB 0B                 5756 	.byte	11
   1BCC FF                 5757 	.byte	-1
   1BCD 10                 5758 	.byte	16
   1BCE F5                 5759 	.byte	-11
   1BCF FF                 5760 	.byte	-1
   1BD0 F6                 5761 	.byte	-10
   1BD1 F5                 5762 	.byte	-11
   1BD2 FF                 5763 	.byte	-1
   1BD3 F0                 5764 	.byte	-16
   1BD4 0B                 5765 	.byte	11
   1BD5 FF                 5766 	.byte	-1
   1BD6 08                 5767 	.byte	8
   1BD7 F8                 5768 	.byte	-8
   1BD8 00                 5769 	.byte	0
   1BD9 02                 5770 	.byte	2
   1BDA 13                 5771 	.byte	19
   1BDB FF                 5772 	.byte	-1
   1BDC 09                 5773 	.byte	9
   1BDD F8                 5774 	.byte	-8
   1BDE 00                 5775 	.byte	0
   1BDF 07                 5776 	.byte	7
   1BE0 FD                 5777 	.byte	-3
   1BE1 FF                 5778 	.byte	-1
   1BE2 09                 5779 	.byte	9
   1BE3 F8                 5780 	.byte	-8
   1BE4 00                 5781 	.byte	0
   1BE5 ED                 5782 	.byte	-19
   1BE6 FD                 5783 	.byte	-3
   1BE7 FF                 5784 	.byte	-1
   1BE8 08                 5785 	.byte	8
   1BE9 F7                 5786 	.byte	-9
   1BEA 00                 5787 	.byte	0
   1BEB F0                 5788 	.byte	-16
   1BEC 0C                 5789 	.byte	12
   1BED FF                 5790 	.byte	-1
   1BEE 0B                 5791 	.byte	11
   1BEF 0B                 5792 	.byte	11
   1BF0 FF                 5793 	.byte	-1
   1BF1 10                 5794 	.byte	16
   1BF2 F5                 5795 	.byte	-11
   1BF3 FF                 5796 	.byte	-1
   1BF4 F5                 5797 	.byte	-11
   1BF5 F4                 5798 	.byte	-12
   1BF6 FF                 5799 	.byte	-1
   1BF7 F0                 5800 	.byte	-16
   1BF8 0C                 5801 	.byte	12
   1BF9 01                 5802 	.byte	1
                           5803 	.globl	_depth2RollingRight5
   1BFA                    5804 _depth2RollingRight5:
   1BFA 00                 5805 	.byte	0
   1BFB 09                 5806 	.byte	9
   1BFC 03                 5807 	.byte	3
   1BFD FF                 5808 	.byte	-1
   1BFE FA                 5809 	.byte	-6
   1BFF 0B                 5810 	.byte	11
   1C00 FF                 5811 	.byte	-1
   1C01 10                 5812 	.byte	16
   1C02 F4                 5813 	.byte	-12
   1C03 FF                 5814 	.byte	-1
   1C04 06                 5815 	.byte	6
   1C05 F6                 5816 	.byte	-10
   1C06 FF                 5817 	.byte	-1
   1C07 F0                 5818 	.byte	-16
   1C08 0B                 5819 	.byte	11
   1C09 FF                 5820 	.byte	-1
   1C0A 0C                 5821 	.byte	12
   1C0B 08                 5822 	.byte	8
   1C0C 00                 5823 	.byte	0
   1C0D EE                 5824 	.byte	-18
   1C0E 03                 5825 	.byte	3
   1C0F FF                 5826 	.byte	-1
   1C10 0C                 5827 	.byte	12
   1C11 09                 5828 	.byte	9
   1C12 00                 5829 	.byte	0
   1C13 04                 5830 	.byte	4
   1C14 EB                 5831 	.byte	-21
   1C15 FF                 5832 	.byte	-1
   1C16 0C                 5833 	.byte	12
   1C17 09                 5834 	.byte	9
   1C18 00                 5835 	.byte	0
   1C19 FA                 5836 	.byte	-6
   1C1A ED                 5837 	.byte	-19
   1C1B FF                 5838 	.byte	-1
   1C1C 0C                 5839 	.byte	12
   1C1D 08                 5840 	.byte	8
   1C1E 00                 5841 	.byte	0
   1C1F F0                 5842 	.byte	-16
   1C20 0B                 5843 	.byte	11
   1C21 FF                 5844 	.byte	-1
   1C22 FA                 5845 	.byte	-6
   1C23 0C                 5846 	.byte	12
   1C24 FF                 5847 	.byte	-1
   1C25 10                 5848 	.byte	16
   1C26 F4                 5849 	.byte	-12
   1C27 FF                 5850 	.byte	-1
   1C28 06                 5851 	.byte	6
   1C29 F5                 5852 	.byte	-11
   1C2A FF                 5853 	.byte	-1
   1C2B F0                 5854 	.byte	-16
   1C2C 0B                 5855 	.byte	11
   1C2D 01                 5856 	.byte	1
                           5857 	.globl	_width2RollingFront5
   1C2E                    5858 _width2RollingFront5:
   1C2E FF                 5859 	.byte	-1
   1C2F 06                 5860 	.byte	6
   1C30 1C                 5861 	.byte	28
   1C31 FF                 5862 	.byte	-1
   1C32 0E                 5863 	.byte	14
   1C33 FB                 5864 	.byte	-5
   1C34 FF                 5865 	.byte	-1
   1C35 FA                 5866 	.byte	-6
   1C36 E5                 5867 	.byte	-27
   1C37 FF                 5868 	.byte	-1
   1C38 F2                 5869 	.byte	-14
   1C39 04                 5870 	.byte	4
   1C3A FF                 5871 	.byte	-1
   1C3B 05                 5872 	.byte	5
   1C3C 04                 5873 	.byte	4
   1C3D 00                 5874 	.byte	0
   1C3E 01                 5875 	.byte	1
   1C3F 18                 5876 	.byte	24
   1C40 FF                 5877 	.byte	-1
   1C41 05                 5878 	.byte	5
   1C42 04                 5879 	.byte	4
   1C43 00                 5880 	.byte	0
   1C44 09                 5881 	.byte	9
   1C45 F7                 5882 	.byte	-9
   1C46 FF                 5883 	.byte	-1
   1C47 06                 5884 	.byte	6
   1C48 04                 5885 	.byte	4
   1C49 00                 5886 	.byte	0
   1C4A F4                 5887 	.byte	-12
   1C4B E1                 5888 	.byte	-31
   1C4C FF                 5889 	.byte	-1
   1C4D 06                 5890 	.byte	6
   1C4E 04                 5891 	.byte	4
   1C4F 00                 5892 	.byte	0
   1C50 F1                 5893 	.byte	-15
   1C51 04                 5894 	.byte	4
   1C52 FF                 5895 	.byte	-1
   1C53 06                 5896 	.byte	6
   1C54 1C                 5897 	.byte	28
   1C55 FF                 5898 	.byte	-1
   1C56 0F                 5899 	.byte	15
   1C57 FB                 5900 	.byte	-5
   1C58 FF                 5901 	.byte	-1
   1C59 FA                 5902 	.byte	-6
   1C5A E5                 5903 	.byte	-27
   1C5B FF                 5904 	.byte	-1
   1C5C F1                 5905 	.byte	-15
   1C5D 04                 5906 	.byte	4
   1C5E 01                 5907 	.byte	1
                           5908 	.globl	_width2RollingBack5
   1C5F                    5909 _width2RollingBack5:
   1C5F 00                 5910 	.byte	0
   1C60 0A                 5911 	.byte	10
   1C61 00                 5912 	.byte	0
   1C62 FF                 5913 	.byte	-1
   1C63 06                 5914 	.byte	6
   1C64 1B                 5915 	.byte	27
   1C65 FF                 5916 	.byte	-1
   1C66 FE                 5917 	.byte	-2
   1C67 FB                 5918 	.byte	-5
   1C68 FF                 5919 	.byte	-1
   1C69 FA                 5920 	.byte	-6
   1C6A E5                 5921 	.byte	-27
   1C6B FF                 5922 	.byte	-1
   1C6C 02                 5923 	.byte	2
   1C6D 05                 5924 	.byte	5
   1C6E FF                 5925 	.byte	-1
   1C6F 0F                 5926 	.byte	15
   1C70 FC                 5927 	.byte	-4
   1C71 00                 5928 	.byte	0
   1C72 F7                 5929 	.byte	-9
   1C73 1F                 5930 	.byte	31
   1C74 FF                 5931 	.byte	-1
   1C75 0F                 5932 	.byte	15
   1C76 FC                 5933 	.byte	-4
   1C77 00                 5934 	.byte	0
   1C78 EF                 5935 	.byte	-17
   1C79 FF                 5936 	.byte	-1
   1C7A FF                 5937 	.byte	-1
   1C7B 0F                 5938 	.byte	15
   1C7C FC                 5939 	.byte	-4
   1C7D 00                 5940 	.byte	0
   1C7E EB                 5941 	.byte	-21
   1C7F E9                 5942 	.byte	-23
   1C80 FF                 5943 	.byte	-1
   1C81 0F                 5944 	.byte	15
   1C82 FC                 5945 	.byte	-4
   1C83 00                 5946 	.byte	0
   1C84 02                 5947 	.byte	2
   1C85 05                 5948 	.byte	5
   1C86 FF                 5949 	.byte	-1
   1C87 06                 5950 	.byte	6
   1C88 1B                 5951 	.byte	27
   1C89 FF                 5952 	.byte	-1
   1C8A FE                 5953 	.byte	-2
   1C8B FB                 5954 	.byte	-5
   1C8C FF                 5955 	.byte	-1
   1C8D FA                 5956 	.byte	-6
   1C8E E5                 5957 	.byte	-27
   1C8F FF                 5958 	.byte	-1
   1C90 02                 5959 	.byte	2
   1C91 05                 5960 	.byte	5
   1C92 01                 5961 	.byte	1
                           5962 	.globl	_height1FallingLeft5
   1C93                    5963 _height1FallingLeft5:
   1C93 FF                 5964 	.byte	-1
   1C94 0A                 5965 	.byte	10
   1C95 0B                 5966 	.byte	11
   1C96 FF                 5967 	.byte	-1
   1C97 08                 5968 	.byte	8
   1C98 FA                 5969 	.byte	-6
   1C99 FF                 5970 	.byte	-1
   1C9A F6                 5971 	.byte	-10
   1C9B F6                 5972 	.byte	-10
   1C9C FF                 5973 	.byte	-1
   1C9D F8                 5974 	.byte	-8
   1C9E 05                 5975 	.byte	5
   1C9F FF                 5976 	.byte	-1
   1CA0 08                 5977 	.byte	8
   1CA1 F8                 5978 	.byte	-8
   1CA2 00                 5979 	.byte	0
   1CA3 02                 5980 	.byte	2
   1CA4 13                 5981 	.byte	19
   1CA5 FF                 5982 	.byte	-1
   1CA6 09                 5983 	.byte	9
   1CA7 F8                 5984 	.byte	-8
   1CA8 00                 5985 	.byte	0
   1CA9 FF                 5986 	.byte	-1
   1CAA 02                 5987 	.byte	2
   1CAB FF                 5988 	.byte	-1
   1CAC 09                 5989 	.byte	9
   1CAD F9                 5990 	.byte	-7
   1CAE 00                 5991 	.byte	0
   1CAF ED                 5992 	.byte	-19
   1CB0 FD                 5993 	.byte	-3
   1CB1 FF                 5994 	.byte	-1
   1CB2 08                 5995 	.byte	8
   1CB3 F7                 5996 	.byte	-9
   1CB4 00                 5997 	.byte	0
   1CB5 F8                 5998 	.byte	-8
   1CB6 06                 5999 	.byte	6
   1CB7 FF                 6000 	.byte	-1
   1CB8 0B                 6001 	.byte	11
   1CB9 0B                 6002 	.byte	11
   1CBA FF                 6003 	.byte	-1
   1CBB 08                 6004 	.byte	8
   1CBC FB                 6005 	.byte	-5
   1CBD FF                 6006 	.byte	-1
   1CBE F5                 6007 	.byte	-11
   1CBF F4                 6008 	.byte	-12
   1CC0 FF                 6009 	.byte	-1
   1CC1 F8                 6010 	.byte	-8
   1CC2 06                 6011 	.byte	6
   1CC3 01                 6012 	.byte	1
                           6013 	.globl	_height1FallingRight5
   1CC4                    6014 _height1FallingRight5:
   1CC4 00                 6015 	.byte	0
   1CC5 09                 6016 	.byte	9
   1CC6 03                 6017 	.byte	3
   1CC7 FF                 6018 	.byte	-1
   1CC8 FA                 6019 	.byte	-6
   1CC9 0B                 6020 	.byte	11
   1CCA FF                 6021 	.byte	-1
   1CCB 08                 6022 	.byte	8
   1CCC FA                 6023 	.byte	-6
   1CCD FF                 6024 	.byte	-1
   1CCE 06                 6025 	.byte	6
   1CCF F6                 6026 	.byte	-10
   1CD0 FF                 6027 	.byte	-1
   1CD1 F8                 6028 	.byte	-8
   1CD2 05                 6029 	.byte	5
   1CD3 FF                 6030 	.byte	-1
   1CD4 0C                 6031 	.byte	12
   1CD5 08                 6032 	.byte	8
   1CD6 00                 6033 	.byte	0
   1CD7 EE                 6034 	.byte	-18
   1CD8 03                 6035 	.byte	3
   1CD9 FF                 6036 	.byte	-1
   1CDA 0C                 6037 	.byte	12
   1CDB 09                 6038 	.byte	9
   1CDC 00                 6039 	.byte	0
   1CDD FC                 6040 	.byte	-4
   1CDE F1                 6041 	.byte	-15
   1CDF FF                 6042 	.byte	-1
   1CE0 0C                 6043 	.byte	12
   1CE1 09                 6044 	.byte	9
   1CE2 00                 6045 	.byte	0
   1CE3 FA                 6046 	.byte	-6
   1CE4 ED                 6047 	.byte	-19
   1CE5 FF                 6048 	.byte	-1
   1CE6 0C                 6049 	.byte	12
   1CE7 07                 6050 	.byte	7
   1CE8 00                 6051 	.byte	0
   1CE9 F8                 6052 	.byte	-8
   1CEA 06                 6053 	.byte	6
   1CEB FF                 6054 	.byte	-1
   1CEC FA                 6055 	.byte	-6
   1CED 0C                 6056 	.byte	12
   1CEE FF                 6057 	.byte	-1
   1CEF 08                 6058 	.byte	8
   1CF0 FA                 6059 	.byte	-6
   1CF1 FF                 6060 	.byte	-1
   1CF2 06                 6061 	.byte	6
   1CF3 F4                 6062 	.byte	-12
   1CF4 FF                 6063 	.byte	-1
   1CF5 F8                 6064 	.byte	-8
   1CF6 06                 6065 	.byte	6
   1CF7 01                 6066 	.byte	1
                           6067 	.globl	_height1FallingBack5
   1CF8                    6068 _height1FallingBack5:
   1CF8 00                 6069 	.byte	0
   1CF9 0A                 6070 	.byte	10
   1CFA 00                 6071 	.byte	0
   1CFB FF                 6072 	.byte	-1
   1CFC 03                 6073 	.byte	3
   1CFD 0D                 6074 	.byte	13
   1CFE FF                 6075 	.byte	-1
   1CFF FE                 6076 	.byte	-2
   1D00 FB                 6077 	.byte	-5
   1D01 FF                 6078 	.byte	-1
   1D02 FD                 6079 	.byte	-3
   1D03 F3                 6080 	.byte	-13
   1D04 FF                 6081 	.byte	-1
   1D05 02                 6082 	.byte	2
   1D06 05                 6083 	.byte	5
   1D07 FF                 6084 	.byte	-1
   1D08 0F                 6085 	.byte	15
   1D09 FC                 6086 	.byte	-4
   1D0A 00                 6087 	.byte	0
   1D0B F4                 6088 	.byte	-12
   1D0C 11                 6089 	.byte	17
   1D0D FF                 6090 	.byte	-1
   1D0E 0F                 6091 	.byte	15
   1D0F FC                 6092 	.byte	-4
   1D10 00                 6093 	.byte	0
   1D11 EF                 6094 	.byte	-17
   1D12 FF                 6095 	.byte	-1
   1D13 FF                 6096 	.byte	-1
   1D14 0F                 6097 	.byte	15
   1D15 FC                 6098 	.byte	-4
   1D16 00                 6099 	.byte	0
   1D17 EE                 6100 	.byte	-18
   1D18 F7                 6101 	.byte	-9
   1D19 FF                 6102 	.byte	-1
   1D1A 0F                 6103 	.byte	15
   1D1B FC                 6104 	.byte	-4
   1D1C 00                 6105 	.byte	0
   1D1D 02                 6106 	.byte	2
   1D1E 05                 6107 	.byte	5
   1D1F FF                 6108 	.byte	-1
   1D20 03                 6109 	.byte	3
   1D21 0D                 6110 	.byte	13
   1D22 FF                 6111 	.byte	-1
   1D23 FE                 6112 	.byte	-2
   1D24 FB                 6113 	.byte	-5
   1D25 FF                 6114 	.byte	-1
   1D26 FD                 6115 	.byte	-3
   1D27 F3                 6116 	.byte	-13
   1D28 FF                 6117 	.byte	-1
   1D29 02                 6118 	.byte	2
   1D2A 05                 6119 	.byte	5
   1D2B 01                 6120 	.byte	1
                           6121 	.globl	_height1FallingFront5
   1D2C                    6122 _height1FallingFront5:
   1D2C FF                 6123 	.byte	-1
   1D2D 03                 6124 	.byte	3
   1D2E 0E                 6125 	.byte	14
   1D2F FF                 6126 	.byte	-1
   1D30 0E                 6127 	.byte	14
   1D31 FB                 6128 	.byte	-5
   1D32 FF                 6129 	.byte	-1
   1D33 FD                 6130 	.byte	-3
   1D34 F3                 6131 	.byte	-13
   1D35 FF                 6132 	.byte	-1
   1D36 F2                 6133 	.byte	-14
   1D37 04                 6134 	.byte	4
   1D38 FF                 6135 	.byte	-1
   1D39 05                 6136 	.byte	5
   1D3A 04                 6137 	.byte	4
   1D3B 00                 6138 	.byte	0
   1D3C FE                 6139 	.byte	-2
   1D3D 0A                 6140 	.byte	10
   1D3E FF                 6141 	.byte	-1
   1D3F 05                 6142 	.byte	5
   1D40 04                 6143 	.byte	4
   1D41 00                 6144 	.byte	0
   1D42 09                 6145 	.byte	9
   1D43 F7                 6146 	.byte	-9
   1D44 FF                 6147 	.byte	-1
   1D45 06                 6148 	.byte	6
   1D46 04                 6149 	.byte	4
   1D47 00                 6150 	.byte	0
   1D48 F7                 6151 	.byte	-9
   1D49 EF                 6152 	.byte	-17
   1D4A FF                 6153 	.byte	-1
   1D4B 06                 6154 	.byte	6
   1D4C 04                 6155 	.byte	4
   1D4D 00                 6156 	.byte	0
   1D4E F1                 6157 	.byte	-15
   1D4F 04                 6158 	.byte	4
   1D50 FF                 6159 	.byte	-1
   1D51 03                 6160 	.byte	3
   1D52 0E                 6161 	.byte	14
   1D53 FF                 6162 	.byte	-1
   1D54 0F                 6163 	.byte	15
   1D55 FB                 6164 	.byte	-5
   1D56 FF                 6165 	.byte	-1
   1D57 FD                 6166 	.byte	-3
   1D58 F3                 6167 	.byte	-13
   1D59 FF                 6168 	.byte	-1
   1D5A F1                 6169 	.byte	-15
   1D5B 04                 6170 	.byte	4
   1D5C 01                 6171 	.byte	1
                           6172 	.globl	_height2FallingLeft6
   1D5D                    6173 _height2FallingLeft6:
   1D5D FF                 6174 	.byte	-1
   1D5E 0B                 6175 	.byte	11
   1D5F 0A                 6176 	.byte	10
   1D60 FF                 6177 	.byte	-1
   1D61 08                 6178 	.byte	8
   1D62 FA                 6179 	.byte	-6
   1D63 FF                 6180 	.byte	-1
   1D64 F5                 6181 	.byte	-11
   1D65 F7                 6182 	.byte	-9
   1D66 FF                 6183 	.byte	-1
   1D67 F8                 6184 	.byte	-8
   1D68 05                 6185 	.byte	5
   1D69 FF                 6186 	.byte	-1
   1D6A 0E                 6187 	.byte	14
   1D6B ED                 6188 	.byte	-19
   1D6C 00                 6189 	.byte	0
   1D6D FD                 6190 	.byte	-3
   1D6E 1D                 6191 	.byte	29
   1D6F FF                 6192 	.byte	-1
   1D70 0E                 6193 	.byte	14
   1D71 ED                 6194 	.byte	-19
   1D72 00                 6195 	.byte	0
   1D73 FA                 6196 	.byte	-6
   1D74 0D                 6197 	.byte	13
   1D75 FF                 6198 	.byte	-1
   1D76 0E                 6199 	.byte	14
   1D77 ED                 6200 	.byte	-19
   1D78 00                 6201 	.byte	0
   1D79 E7                 6202 	.byte	-25
   1D7A 0A                 6203 	.byte	10
   1D7B FF                 6204 	.byte	-1
   1D7C 0E                 6205 	.byte	14
   1D7D EC                 6206 	.byte	-20
   1D7E 00                 6207 	.byte	0
   1D7F F8                 6208 	.byte	-8
   1D80 06                 6209 	.byte	6
   1D81 FF                 6210 	.byte	-1
   1D82 0B                 6211 	.byte	11
   1D83 0A                 6212 	.byte	10
   1D84 FF                 6213 	.byte	-1
   1D85 08                 6214 	.byte	8
   1D86 FA                 6215 	.byte	-6
   1D87 FF                 6216 	.byte	-1
   1D88 F5                 6217 	.byte	-11
   1D89 F6                 6218 	.byte	-10
   1D8A FF                 6219 	.byte	-1
   1D8B F8                 6220 	.byte	-8
   1D8C 06                 6221 	.byte	6
   1D8D 01                 6222 	.byte	1
                           6223 	.globl	_height2RisingRight6
   1D8E                    6224 _height2RisingRight6:
   1D8E 00                 6225 	.byte	0
   1D8F 06                 6226 	.byte	6
   1D90 1C                 6227 	.byte	28
   1D91 FF                 6228 	.byte	-1
   1D92 0A                 6229 	.byte	10
   1D93 0B                 6230 	.byte	11
   1D94 FF                 6231 	.byte	-1
   1D95 08                 6232 	.byte	8
   1D96 FA                 6233 	.byte	-6
   1D97 FF                 6234 	.byte	-1
   1D98 F6                 6235 	.byte	-10
   1D99 F5                 6236 	.byte	-11
   1D9A FF                 6237 	.byte	-1
   1D9B F8                 6238 	.byte	-8
   1D9C 06                 6239 	.byte	6
   1D9D FF                 6240 	.byte	-1
   1D9E 11                 6241 	.byte	17
   1D9F EF                 6242 	.byte	-17
   1DA0 00                 6243 	.byte	0
   1DA1 F9                 6244 	.byte	-7
   1DA2 1C                 6245 	.byte	28
   1DA3 FF                 6246 	.byte	-1
   1DA4 11                 6247 	.byte	17
   1DA5 EF                 6248 	.byte	-17
   1DA6 00                 6249 	.byte	0
   1DA7 F7                 6250 	.byte	-9
   1DA8 0B                 6251 	.byte	11
   1DA9 FF                 6252 	.byte	-1
   1DAA 11                 6253 	.byte	17
   1DAB EF                 6254 	.byte	-17
   1DAC 00                 6255 	.byte	0
   1DAD E5                 6256 	.byte	-27
   1DAE 06                 6257 	.byte	6
   1DAF FF                 6258 	.byte	-1
   1DB0 11                 6259 	.byte	17
   1DB1 EF                 6260 	.byte	-17
   1DB2 00                 6261 	.byte	0
   1DB3 F8                 6262 	.byte	-8
   1DB4 06                 6263 	.byte	6
   1DB5 FF                 6264 	.byte	-1
   1DB6 0A                 6265 	.byte	10
   1DB7 0B                 6266 	.byte	11
   1DB8 FF                 6267 	.byte	-1
   1DB9 08                 6268 	.byte	8
   1DBA FA                 6269 	.byte	-6
   1DBB FF                 6270 	.byte	-1
   1DBC F6                 6271 	.byte	-10
   1DBD F5                 6272 	.byte	-11
   1DBE FF                 6273 	.byte	-1
   1DBF F8                 6274 	.byte	-8
   1DC0 06                 6275 	.byte	6
   1DC1 01                 6276 	.byte	1
                           6277 	.globl	_height2FallingRight6
   1DC2                    6278 _height2FallingRight6:
   1DC2 00                 6279 	.byte	0
   1DC3 0A                 6280 	.byte	10
   1DC4 04                 6281 	.byte	4
   1DC5 FF                 6282 	.byte	-1
   1DC6 F9                 6283 	.byte	-7
   1DC7 0A                 6284 	.byte	10
   1DC8 FF                 6285 	.byte	-1
   1DC9 08                 6286 	.byte	8
   1DCA FA                 6287 	.byte	-6
   1DCB FF                 6288 	.byte	-1
   1DCC 07                 6289 	.byte	7
   1DCD F7                 6290 	.byte	-9
   1DCE FF                 6291 	.byte	-1
   1DCF F8                 6292 	.byte	-8
   1DD0 05                 6293 	.byte	5
   1DD1 FF                 6294 	.byte	-1
   1DD2 17                 6295 	.byte	23
   1DD3 14                 6296 	.byte	20
   1DD4 00                 6297 	.byte	0
   1DD5 E2                 6298 	.byte	-30
   1DD6 F6                 6299 	.byte	-10
   1DD7 FF                 6300 	.byte	-1
   1DD8 17                 6301 	.byte	23
   1DD9 14                 6302 	.byte	20
   1DDA 00                 6303 	.byte	0
   1DDB F1                 6304 	.byte	-15
   1DDC E6                 6305 	.byte	-26
   1DDD FF                 6306 	.byte	-1
   1DDE 17                 6307 	.byte	23
   1DDF 14                 6308 	.byte	20
   1DE0 00                 6309 	.byte	0
   1DE1 F0                 6310 	.byte	-16
   1DE2 E3                 6311 	.byte	-29
   1DE3 FF                 6312 	.byte	-1
   1DE4 17                 6313 	.byte	23
   1DE5 13                 6314 	.byte	19
   1DE6 00                 6315 	.byte	0
   1DE7 F8                 6316 	.byte	-8
   1DE8 06                 6317 	.byte	6
   1DE9 FF                 6318 	.byte	-1
   1DEA F9                 6319 	.byte	-7
   1DEB 0A                 6320 	.byte	10
   1DEC FF                 6321 	.byte	-1
   1DED 08                 6322 	.byte	8
   1DEE FA                 6323 	.byte	-6
   1DEF FF                 6324 	.byte	-1
   1DF0 07                 6325 	.byte	7
   1DF1 F6                 6326 	.byte	-10
   1DF2 FF                 6327 	.byte	-1
   1DF3 F8                 6328 	.byte	-8
   1DF4 06                 6329 	.byte	6
   1DF5 01                 6330 	.byte	1
                           6331 	.globl	_height2RisingLeft6
   1DF6                    6332 _height2RisingLeft6:
   1DF6 00                 6333 	.byte	0
   1DF7 06                 6334 	.byte	6
   1DF8 F6                 6335 	.byte	-10
   1DF9 FF                 6336 	.byte	-1
   1DFA FA                 6337 	.byte	-6
   1DFB 0A                 6338 	.byte	10
   1DFC FF                 6339 	.byte	-1
   1DFD 08                 6340 	.byte	8
   1DFE FB                 6341 	.byte	-5
   1DFF FF                 6342 	.byte	-1
   1E00 06                 6343 	.byte	6
   1E01 F5                 6344 	.byte	-11
   1E02 FF                 6345 	.byte	-1
   1E03 F8                 6346 	.byte	-8
   1E04 06                 6347 	.byte	6
   1E05 FF                 6348 	.byte	-1
   1E06 18                 6349 	.byte	24
   1E07 10                 6350 	.byte	16
   1E08 00                 6351 	.byte	0
   1E09 E2                 6352 	.byte	-30
   1E0A FA                 6353 	.byte	-6
   1E0B FF                 6354 	.byte	-1
   1E0C 18                 6355 	.byte	24
   1E0D 11                 6356 	.byte	17
   1E0E 00                 6357 	.byte	0
   1E0F F0                 6358 	.byte	-16
   1E10 EA                 6359 	.byte	-22
   1E11 FF                 6360 	.byte	-1
   1E12 18                 6361 	.byte	24
   1E13 10                 6362 	.byte	16
   1E14 00                 6363 	.byte	0
   1E15 EE                 6364 	.byte	-18
   1E16 E5                 6365 	.byte	-27
   1E17 FF                 6366 	.byte	-1
   1E18 18                 6367 	.byte	24
   1E19 10                 6368 	.byte	16
   1E1A 00                 6369 	.byte	0
   1E1B F8                 6370 	.byte	-8
   1E1C 06                 6371 	.byte	6
   1E1D FF                 6372 	.byte	-1
   1E1E FA                 6373 	.byte	-6
   1E1F 0B                 6374 	.byte	11
   1E20 FF                 6375 	.byte	-1
   1E21 08                 6376 	.byte	8
   1E22 FA                 6377 	.byte	-6
   1E23 FF                 6378 	.byte	-1
   1E24 06                 6379 	.byte	6
   1E25 F5                 6380 	.byte	-11
   1E26 FF                 6381 	.byte	-1
   1E27 F8                 6382 	.byte	-8
   1E28 06                 6383 	.byte	6
   1E29 01                 6384 	.byte	1
                           6385 	.globl	_height2FallingBack6
   1E2A                    6386 _height2FallingBack6:
   1E2A 00                 6387 	.byte	0
   1E2B 0C                 6388 	.byte	12
   1E2C FF                 6389 	.byte	-1
   1E2D FF                 6390 	.byte	-1
   1E2E 03                 6391 	.byte	3
   1E2F 0D                 6392 	.byte	13
   1E30 FF                 6393 	.byte	-1
   1E31 FC                 6394 	.byte	-4
   1E32 FC                 6395 	.byte	-4
   1E33 FF                 6396 	.byte	-1
   1E34 FD                 6397 	.byte	-3
   1E35 F3                 6398 	.byte	-13
   1E36 FF                 6399 	.byte	-1
   1E37 04                 6400 	.byte	4
   1E38 04                 6401 	.byte	4
   1E39 FF                 6402 	.byte	-1
   1E3A 1D                 6403 	.byte	29
   1E3B F8                 6404 	.byte	-8
   1E3C 00                 6405 	.byte	0
   1E3D E6                 6406 	.byte	-26
   1E3E 15                 6407 	.byte	21
   1E3F FF                 6408 	.byte	-1
   1E40 1D                 6409 	.byte	29
   1E41 F8                 6410 	.byte	-8
   1E42 00                 6411 	.byte	0
   1E43 DF                 6412 	.byte	-33
   1E44 04                 6413 	.byte	4
   1E45 FF                 6414 	.byte	-1
   1E46 1E                 6415 	.byte	30
   1E47 F8                 6416 	.byte	-8
   1E48 00                 6417 	.byte	0
   1E49 DF                 6418 	.byte	-33
   1E4A FB                 6419 	.byte	-5
   1E4B FF                 6420 	.byte	-1
   1E4C 1E                 6421 	.byte	30
   1E4D F8                 6422 	.byte	-8
   1E4E 00                 6423 	.byte	0
   1E4F 03                 6424 	.byte	3
   1E50 04                 6425 	.byte	4
   1E51 FF                 6426 	.byte	-1
   1E52 03                 6427 	.byte	3
   1E53 0D                 6428 	.byte	13
   1E54 FF                 6429 	.byte	-1
   1E55 FD                 6430 	.byte	-3
   1E56 FC                 6431 	.byte	-4
   1E57 FF                 6432 	.byte	-1
   1E58 FD                 6433 	.byte	-3
   1E59 F3                 6434 	.byte	-13
   1E5A FF                 6435 	.byte	-1
   1E5B 03                 6436 	.byte	3
   1E5C 04                 6437 	.byte	4
   1E5D 01                 6438 	.byte	1
                           6439 	.globl	_height2RisingFront6
   1E5E                    6440 _height2RisingFront6:
   1E5E 00                 6441 	.byte	0
   1E5F 02                 6442 	.byte	2
   1E60 05                 6443 	.byte	5
   1E61 FF                 6444 	.byte	-1
   1E62 03                 6445 	.byte	3
   1E63 0E                 6446 	.byte	14
   1E64 FF                 6447 	.byte	-1
   1E65 FE                 6448 	.byte	-2
   1E66 FB                 6449 	.byte	-5
   1E67 FF                 6450 	.byte	-1
   1E68 FD                 6451 	.byte	-3
   1E69 F2                 6452 	.byte	-14
   1E6A FF                 6453 	.byte	-1
   1E6B 02                 6454 	.byte	2
   1E6C 05                 6455 	.byte	5
   1E6D FF                 6456 	.byte	-1
   1E6E 1E                 6457 	.byte	30
   1E6F F9                 6458 	.byte	-7
   1E70 00                 6459 	.byte	0
   1E71 E5                 6460 	.byte	-27
   1E72 15                 6461 	.byte	21
   1E73 FF                 6462 	.byte	-1
   1E74 1E                 6463 	.byte	30
   1E75 F8                 6464 	.byte	-8
   1E76 00                 6465 	.byte	0
   1E77 E0                 6466 	.byte	-32
   1E78 03                 6467 	.byte	3
   1E79 FF                 6468 	.byte	-1
   1E7A 1E                 6469 	.byte	30
   1E7B F9                 6470 	.byte	-7
   1E7C 00                 6471 	.byte	0
   1E7D DF                 6472 	.byte	-33
   1E7E F9                 6473 	.byte	-7
   1E7F FF                 6474 	.byte	-1
   1E80 1E                 6475 	.byte	30
   1E81 FA                 6476 	.byte	-6
   1E82 00                 6477 	.byte	0
   1E83 02                 6478 	.byte	2
   1E84 04                 6479 	.byte	4
   1E85 FF                 6480 	.byte	-1
   1E86 03                 6481 	.byte	3
   1E87 0D                 6482 	.byte	13
   1E88 FF                 6483 	.byte	-1
   1E89 FE                 6484 	.byte	-2
   1E8A FC                 6485 	.byte	-4
   1E8B FF                 6486 	.byte	-1
   1E8C FD                 6487 	.byte	-3
   1E8D F3                 6488 	.byte	-13
   1E8E FF                 6489 	.byte	-1
   1E8F 02                 6490 	.byte	2
   1E90 04                 6491 	.byte	4
   1E91 01                 6492 	.byte	1
                           6493 	.globl	_height2FallingFront6
   1E92                    6494 _height2FallingFront6:
   1E92 FF                 6495 	.byte	-1
   1E93 03                 6496 	.byte	3
   1E94 0E                 6497 	.byte	14
   1E95 FF                 6498 	.byte	-1
   1E96 0F                 6499 	.byte	15
   1E97 FC                 6500 	.byte	-4
   1E98 FF                 6501 	.byte	-1
   1E99 FD                 6502 	.byte	-3
   1E9A F3                 6503 	.byte	-13
   1E9B FF                 6504 	.byte	-1
   1E9C F1                 6505 	.byte	-15
   1E9D 03                 6506 	.byte	3
   1E9E FF                 6507 	.byte	-1
   1E9F 07                 6508 	.byte	7
   1EA0 08                 6509 	.byte	8
   1EA1 00                 6510 	.byte	0
   1EA2 FC                 6511 	.byte	-4
   1EA3 06                 6512 	.byte	6
   1EA4 FF                 6513 	.byte	-1
   1EA5 07                 6514 	.byte	7
   1EA6 08                 6515 	.byte	8
   1EA7 00                 6516 	.byte	0
   1EA8 08                 6517 	.byte	8
   1EA9 F4                 6518 	.byte	-12
   1EAA FF                 6519 	.byte	-1
   1EAB 07                 6520 	.byte	7
   1EAC 08                 6521 	.byte	8
   1EAD 00                 6522 	.byte	0
   1EAE F6                 6523 	.byte	-10
   1EAF EB                 6524 	.byte	-21
   1EB0 FF                 6525 	.byte	-1
   1EB1 07                 6526 	.byte	7
   1EB2 07                 6527 	.byte	7
   1EB3 00                 6528 	.byte	0
   1EB4 F1                 6529 	.byte	-15
   1EB5 04                 6530 	.byte	4
   1EB6 FF                 6531 	.byte	-1
   1EB7 03                 6532 	.byte	3
   1EB8 0E                 6533 	.byte	14
   1EB9 FF                 6534 	.byte	-1
   1EBA 0F                 6535 	.byte	15
   1EBB FC                 6536 	.byte	-4
   1EBC FF                 6537 	.byte	-1
   1EBD FD                 6538 	.byte	-3
   1EBE F2                 6539 	.byte	-14
   1EBF FF                 6540 	.byte	-1
   1EC0 F1                 6541 	.byte	-15
   1EC1 04                 6542 	.byte	4
   1EC2 01                 6543 	.byte	1
                           6544 	.globl	_height2RisingBack6
   1EC3                    6545 _height2RisingBack6:
   1EC3 00                 6546 	.byte	0
   1EC4 10                 6547 	.byte	16
   1EC5 F5                 6548 	.byte	-11
   1EC6 FF                 6549 	.byte	-1
   1EC7 03                 6550 	.byte	3
   1EC8 0D                 6551 	.byte	13
   1EC9 FF                 6552 	.byte	-1
   1ECA 0E                 6553 	.byte	14
   1ECB FC                 6554 	.byte	-4
   1ECC FF                 6555 	.byte	-1
   1ECD FD                 6556 	.byte	-3
   1ECE F2                 6557 	.byte	-14
   1ECF FF                 6558 	.byte	-1
   1ED0 F2                 6559 	.byte	-14
   1ED1 05                 6560 	.byte	5
   1ED2 FF                 6561 	.byte	-1
   1ED3 0B                 6562 	.byte	11
   1ED4 07                 6563 	.byte	7
   1ED5 00                 6564 	.byte	0
   1ED6 F8                 6565 	.byte	-8
   1ED7 06                 6566 	.byte	6
   1ED8 FF                 6567 	.byte	-1
   1ED9 0B                 6568 	.byte	11
   1EDA 07                 6569 	.byte	7
   1EDB 00                 6570 	.byte	0
   1EDC 03                 6571 	.byte	3
   1EDD F5                 6572 	.byte	-11
   1EDE FF                 6573 	.byte	-1
   1EDF 0B                 6574 	.byte	11
   1EE0 07                 6575 	.byte	7
   1EE1 00                 6576 	.byte	0
   1EE2 F2                 6577 	.byte	-14
   1EE3 EB                 6578 	.byte	-21
   1EE4 FF                 6579 	.byte	-1
   1EE5 0B                 6580 	.byte	11
   1EE6 08                 6581 	.byte	8
   1EE7 00                 6582 	.byte	0
   1EE8 F2                 6583 	.byte	-14
   1EE9 04                 6584 	.byte	4
   1EEA FF                 6585 	.byte	-1
   1EEB 03                 6586 	.byte	3
   1EEC 0D                 6587 	.byte	13
   1EED FF                 6588 	.byte	-1
   1EEE 0E                 6589 	.byte	14
   1EEF FC                 6590 	.byte	-4
   1EF0 FF                 6591 	.byte	-1
   1EF1 FD                 6592 	.byte	-3
   1EF2 F3                 6593 	.byte	-13
   1EF3 FF                 6594 	.byte	-1
   1EF4 F2                 6595 	.byte	-14
   1EF5 04                 6596 	.byte	4
   1EF6 01                 6597 	.byte	1
                           6598 	.globl	_depth2RollingLeft6
   1EF7                    6599 _depth2RollingLeft6:
   1EF7 FF                 6600 	.byte	-1
   1EF8 0B                 6601 	.byte	11
   1EF9 0A                 6602 	.byte	10
   1EFA FF                 6603 	.byte	-1
   1EFB 10                 6604 	.byte	16
   1EFC F5                 6605 	.byte	-11
   1EFD FF                 6606 	.byte	-1
   1EFE F5                 6607 	.byte	-11
   1EFF F6                 6608 	.byte	-10
   1F00 FF                 6609 	.byte	-1
   1F01 F0                 6610 	.byte	-16
   1F02 0B                 6611 	.byte	11
   1F03 FF                 6612 	.byte	-1
   1F04 07                 6613 	.byte	7
   1F05 F7                 6614 	.byte	-9
   1F06 00                 6615 	.byte	0
   1F07 04                 6616 	.byte	4
   1F08 13                 6617 	.byte	19
   1F09 FF                 6618 	.byte	-1
   1F0A 07                 6619 	.byte	7
   1F0B F6                 6620 	.byte	-10
   1F0C 00                 6621 	.byte	0
   1F0D 09                 6622 	.byte	9
   1F0E FF                 6623 	.byte	-1
   1F0F FF                 6624 	.byte	-1
   1F10 07                 6625 	.byte	7
   1F11 F6                 6626 	.byte	-10
   1F12 00                 6627 	.byte	0
   1F13 EE                 6628 	.byte	-18
   1F14 00                 6629 	.byte	0
   1F15 FF                 6630 	.byte	-1
   1F16 07                 6631 	.byte	7
   1F17 F6                 6632 	.byte	-10
   1F18 00                 6633 	.byte	0
   1F19 F0                 6634 	.byte	-16
   1F1A 0C                 6635 	.byte	12
   1F1B FF                 6636 	.byte	-1
   1F1C 0B                 6637 	.byte	11
   1F1D 09                 6638 	.byte	9
   1F1E FF                 6639 	.byte	-1
   1F1F 10                 6640 	.byte	16
   1F20 F5                 6641 	.byte	-11
   1F21 FF                 6642 	.byte	-1
   1F22 F5                 6643 	.byte	-11
   1F23 F6                 6644 	.byte	-10
   1F24 FF                 6645 	.byte	-1
   1F25 F0                 6646 	.byte	-16
   1F26 0C                 6647 	.byte	12
   1F27 01                 6648 	.byte	1
                           6649 	.globl	_depth2RollingRight6
   1F28                    6650 _depth2RollingRight6:
   1F28 00                 6651 	.byte	0
   1F29 0A                 6652 	.byte	10
   1F2A 04                 6653 	.byte	4
   1F2B FF                 6654 	.byte	-1
   1F2C F9                 6655 	.byte	-7
   1F2D 0A                 6656 	.byte	10
   1F2E FF                 6657 	.byte	-1
   1F2F 10                 6658 	.byte	16
   1F30 F4                 6659 	.byte	-12
   1F31 FF                 6660 	.byte	-1
   1F32 07                 6661 	.byte	7
   1F33 F7                 6662 	.byte	-9
   1F34 FF                 6663 	.byte	-1
   1F35 F0                 6664 	.byte	-16
   1F36 0B                 6665 	.byte	11
   1F37 FF                 6666 	.byte	-1
   1F38 0B                 6667 	.byte	11
   1F39 0A                 6668 	.byte	10
   1F3A 00                 6669 	.byte	0
   1F3B EE                 6670 	.byte	-18
   1F3C 00                 6671 	.byte	0
   1F3D FF                 6672 	.byte	-1
   1F3E 0B                 6673 	.byte	11
   1F3F 0A                 6674 	.byte	10
   1F40 00                 6675 	.byte	0
   1F41 05                 6676 	.byte	5
   1F42 EA                 6677 	.byte	-22
   1F43 FF                 6678 	.byte	-1
   1F44 0B                 6679 	.byte	11
   1F45 0A                 6680 	.byte	10
   1F46 00                 6681 	.byte	0
   1F47 FC                 6682 	.byte	-4
   1F48 ED                 6683 	.byte	-19
   1F49 FF                 6684 	.byte	-1
   1F4A 0B                 6685 	.byte	11
   1F4B 09                 6686 	.byte	9
   1F4C 00                 6687 	.byte	0
   1F4D F0                 6688 	.byte	-16
   1F4E 0C                 6689 	.byte	12
   1F4F FF                 6690 	.byte	-1
   1F50 F9                 6691 	.byte	-7
   1F51 0A                 6692 	.byte	10
   1F52 FF                 6693 	.byte	-1
   1F53 10                 6694 	.byte	16
   1F54 F4                 6695 	.byte	-12
   1F55 FF                 6696 	.byte	-1
   1F56 07                 6697 	.byte	7
   1F57 F6                 6698 	.byte	-10
   1F58 FF                 6699 	.byte	-1
   1F59 F0                 6700 	.byte	-16
   1F5A 0C                 6701 	.byte	12
   1F5B 01                 6702 	.byte	1
                           6703 	.globl	_width2RollingFront6
   1F5C                    6704 _width2RollingFront6:
   1F5C FF                 6705 	.byte	-1
   1F5D 06                 6706 	.byte	6
   1F5E 1C                 6707 	.byte	28
   1F5F FF                 6708 	.byte	-1
   1F60 0F                 6709 	.byte	15
   1F61 FC                 6710 	.byte	-4
   1F62 FF                 6711 	.byte	-1
   1F63 FA                 6712 	.byte	-6
   1F64 E5                 6713 	.byte	-27
   1F65 FF                 6714 	.byte	-1
   1F66 F1                 6715 	.byte	-15
   1F67 03                 6716 	.byte	3
   1F68 FF                 6717 	.byte	-1
   1F69 04                 6718 	.byte	4
   1F6A 04                 6719 	.byte	4
   1F6B 00                 6720 	.byte	0
   1F6C 02                 6721 	.byte	2
   1F6D 18                 6722 	.byte	24
   1F6E FF                 6723 	.byte	-1
   1F6F 04                 6724 	.byte	4
   1F70 04                 6725 	.byte	4
   1F71 00                 6726 	.byte	0
   1F72 0B                 6727 	.byte	11
   1F73 F8                 6728 	.byte	-8
   1F74 FF                 6729 	.byte	-1
   1F75 03                 6730 	.byte	3
   1F76 04                 6731 	.byte	4
   1F77 00                 6732 	.byte	0
   1F78 F7                 6733 	.byte	-9
   1F79 E1                 6734 	.byte	-31
   1F7A FF                 6735 	.byte	-1
   1F7B 03                 6736 	.byte	3
   1F7C 03                 6737 	.byte	3
   1F7D 00                 6738 	.byte	0
   1F7E F2                 6739 	.byte	-14
   1F7F 04                 6740 	.byte	4
   1F80 FF                 6741 	.byte	-1
   1F81 06                 6742 	.byte	6
   1F82 1C                 6743 	.byte	28
   1F83 FF                 6744 	.byte	-1
   1F84 0E                 6745 	.byte	14
   1F85 FC                 6746 	.byte	-4
   1F86 FF                 6747 	.byte	-1
   1F87 FA                 6748 	.byte	-6
   1F88 E4                 6749 	.byte	-28
   1F89 FF                 6750 	.byte	-1
   1F8A F2                 6751 	.byte	-14
   1F8B 04                 6752 	.byte	4
   1F8C 01                 6753 	.byte	1
                           6754 	.globl	_width2RollingBack6
   1F8D                    6755 _width2RollingBack6:
   1F8D 00                 6756 	.byte	0
   1F8E 0C                 6757 	.byte	12
   1F8F FF                 6758 	.byte	-1
   1F90 FF                 6759 	.byte	-1
   1F91 06                 6760 	.byte	6
   1F92 1B                 6761 	.byte	27
   1F93 FF                 6762 	.byte	-1
   1F94 FC                 6763 	.byte	-4
   1F95 FC                 6764 	.byte	-4
   1F96 FF                 6765 	.byte	-1
   1F97 FA                 6766 	.byte	-6
   1F98 E5                 6767 	.byte	-27
   1F99 FF                 6768 	.byte	-1
   1F9A 04                 6769 	.byte	4
   1F9B 04                 6770 	.byte	4
   1F9C FF                 6771 	.byte	-1
   1F9D 0E                 6772 	.byte	14
   1F9E FC                 6773 	.byte	-4
   1F9F 00                 6774 	.byte	0
   1FA0 F8                 6775 	.byte	-8
   1FA1 1F                 6776 	.byte	31
   1FA2 FF                 6777 	.byte	-1
   1FA3 0E                 6778 	.byte	14
   1FA4 FC                 6779 	.byte	-4
   1FA5 00                 6780 	.byte	0
   1FA6 EE                 6781 	.byte	-18
   1FA7 00                 6782 	.byte	0
   1FA8 FF                 6783 	.byte	-1
   1FA9 0F                 6784 	.byte	15
   1FAA FC                 6785 	.byte	-4
   1FAB 00                 6786 	.byte	0
   1FAC EB                 6787 	.byte	-21
   1FAD E9                 6788 	.byte	-23
   1FAE FF                 6789 	.byte	-1
   1FAF 0F                 6790 	.byte	15
   1FB0 FC                 6791 	.byte	-4
   1FB1 00                 6792 	.byte	0
   1FB2 03                 6793 	.byte	3
   1FB3 04                 6794 	.byte	4
   1FB4 FF                 6795 	.byte	-1
   1FB5 06                 6796 	.byte	6
   1FB6 1B                 6797 	.byte	27
   1FB7 FF                 6798 	.byte	-1
   1FB8 FD                 6799 	.byte	-3
   1FB9 FC                 6800 	.byte	-4
   1FBA FF                 6801 	.byte	-1
   1FBB FA                 6802 	.byte	-6
   1FBC E5                 6803 	.byte	-27
   1FBD FF                 6804 	.byte	-1
   1FBE 03                 6805 	.byte	3
   1FBF 04                 6806 	.byte	4
   1FC0 01                 6807 	.byte	1
                           6808 	.globl	_height1FallingLeft6
   1FC1                    6809 _height1FallingLeft6:
   1FC1 FF                 6810 	.byte	-1
   1FC2 0B                 6811 	.byte	11
   1FC3 0A                 6812 	.byte	10
   1FC4 FF                 6813 	.byte	-1
   1FC5 08                 6814 	.byte	8
   1FC6 FA                 6815 	.byte	-6
   1FC7 FF                 6816 	.byte	-1
   1FC8 F5                 6817 	.byte	-11
   1FC9 F7                 6818 	.byte	-9
   1FCA FF                 6819 	.byte	-1
   1FCB F8                 6820 	.byte	-8
   1FCC 05                 6821 	.byte	5
   1FCD FF                 6822 	.byte	-1
   1FCE 07                 6823 	.byte	7
   1FCF F7                 6824 	.byte	-9
   1FD0 00                 6825 	.byte	0
   1FD1 04                 6826 	.byte	4
   1FD2 13                 6827 	.byte	19
   1FD3 FF                 6828 	.byte	-1
   1FD4 07                 6829 	.byte	7
   1FD5 F6                 6830 	.byte	-10
   1FD6 00                 6831 	.byte	0
   1FD7 01                 6832 	.byte	1
   1FD8 04                 6833 	.byte	4
   1FD9 FF                 6834 	.byte	-1
   1FDA 07                 6835 	.byte	7
   1FDB F7                 6836 	.byte	-9
   1FDC 00                 6837 	.byte	0
   1FDD EE                 6838 	.byte	-18
   1FDE 00                 6839 	.byte	0
   1FDF FF                 6840 	.byte	-1
   1FE0 07                 6841 	.byte	7
   1FE1 F6                 6842 	.byte	-10
   1FE2 00                 6843 	.byte	0
   1FE3 F8                 6844 	.byte	-8
   1FE4 06                 6845 	.byte	6
   1FE5 FF                 6846 	.byte	-1
   1FE6 0B                 6847 	.byte	11
   1FE7 09                 6848 	.byte	9
   1FE8 FF                 6849 	.byte	-1
   1FE9 08                 6850 	.byte	8
   1FEA FB                 6851 	.byte	-5
   1FEB FF                 6852 	.byte	-1
   1FEC F5                 6853 	.byte	-11
   1FED F6                 6854 	.byte	-10
   1FEE FF                 6855 	.byte	-1
   1FEF F8                 6856 	.byte	-8
   1FF0 06                 6857 	.byte	6
   1FF1 01                 6858 	.byte	1
                           6859 	.globl	_height1FallingRight6
   1FF2                    6860 _height1FallingRight6:
   1FF2 00                 6861 	.byte	0
   1FF3 0A                 6862 	.byte	10
   1FF4 04                 6863 	.byte	4
   1FF5 FF                 6864 	.byte	-1
   1FF6 F9                 6865 	.byte	-7
   1FF7 0A                 6866 	.byte	10
   1FF8 FF                 6867 	.byte	-1
   1FF9 08                 6868 	.byte	8
   1FFA FA                 6869 	.byte	-6
   1FFB FF                 6870 	.byte	-1
   1FFC 07                 6871 	.byte	7
   1FFD F7                 6872 	.byte	-9
   1FFE FF                 6873 	.byte	-1
   1FFF F8                 6874 	.byte	-8
   2000 05                 6875 	.byte	5
   2001 FF                 6876 	.byte	-1
   2002 0B                 6877 	.byte	11
   2003 0A                 6878 	.byte	10
   2004 00                 6879 	.byte	0
   2005 EE                 6880 	.byte	-18
   2006 00                 6881 	.byte	0
   2007 FF                 6882 	.byte	-1
   2008 0B                 6883 	.byte	11
   2009 0A                 6884 	.byte	10
   200A 00                 6885 	.byte	0
   200B FD                 6886 	.byte	-3
   200C F0                 6887 	.byte	-16
   200D FF                 6888 	.byte	-1
   200E 0B                 6889 	.byte	11
   200F 0A                 6890 	.byte	10
   2010 00                 6891 	.byte	0
   2011 FC                 6892 	.byte	-4
   2012 ED                 6893 	.byte	-19
   2013 FF                 6894 	.byte	-1
   2014 0B                 6895 	.byte	11
   2015 09                 6896 	.byte	9
   2016 00                 6897 	.byte	0
   2017 F8                 6898 	.byte	-8
   2018 06                 6899 	.byte	6
   2019 FF                 6900 	.byte	-1
   201A F9                 6901 	.byte	-7
   201B 0A                 6902 	.byte	10
   201C FF                 6903 	.byte	-1
   201D 08                 6904 	.byte	8
   201E FA                 6905 	.byte	-6
   201F FF                 6906 	.byte	-1
   2020 07                 6907 	.byte	7
   2021 F6                 6908 	.byte	-10
   2022 FF                 6909 	.byte	-1
   2023 F8                 6910 	.byte	-8
   2024 06                 6911 	.byte	6
   2025 01                 6912 	.byte	1
                           6913 	.globl	_height1FallingBack6
   2026                    6914 _height1FallingBack6:
   2026 00                 6915 	.byte	0
   2027 0C                 6916 	.byte	12
   2028 FF                 6917 	.byte	-1
   2029 FF                 6918 	.byte	-1
   202A 03                 6919 	.byte	3
   202B 0D                 6920 	.byte	13
   202C FF                 6921 	.byte	-1
   202D FC                 6922 	.byte	-4
   202E FC                 6923 	.byte	-4
   202F FF                 6924 	.byte	-1
   2030 FD                 6925 	.byte	-3
   2031 F3                 6926 	.byte	-13
   2032 FF                 6927 	.byte	-1
   2033 04                 6928 	.byte	4
   2034 04                 6929 	.byte	4
   2035 FF                 6930 	.byte	-1
   2036 0E                 6931 	.byte	14
   2037 FC                 6932 	.byte	-4
   2038 00                 6933 	.byte	0
   2039 F5                 6934 	.byte	-11
   203A 11                 6935 	.byte	17
   203B FF                 6936 	.byte	-1
   203C 0E                 6937 	.byte	14
   203D FC                 6938 	.byte	-4
   203E 00                 6939 	.byte	0
   203F EE                 6940 	.byte	-18
   2040 00                 6941 	.byte	0
   2041 FF                 6942 	.byte	-1
   2042 0F                 6943 	.byte	15
   2043 FC                 6944 	.byte	-4
   2044 00                 6945 	.byte	0
   2045 EE                 6946 	.byte	-18
   2046 F7                 6947 	.byte	-9
   2047 FF                 6948 	.byte	-1
   2048 0F                 6949 	.byte	15
   2049 FC                 6950 	.byte	-4
   204A 00                 6951 	.byte	0
   204B 03                 6952 	.byte	3
   204C 04                 6953 	.byte	4
   204D FF                 6954 	.byte	-1
   204E 03                 6955 	.byte	3
   204F 0D                 6956 	.byte	13
   2050 FF                 6957 	.byte	-1
   2051 FD                 6958 	.byte	-3
   2052 FC                 6959 	.byte	-4
   2053 FF                 6960 	.byte	-1
   2054 FD                 6961 	.byte	-3
   2055 F3                 6962 	.byte	-13
   2056 FF                 6963 	.byte	-1
   2057 03                 6964 	.byte	3
   2058 04                 6965 	.byte	4
   2059 01                 6966 	.byte	1
                           6967 	.globl	_height1FallingFront6
   205A                    6968 _height1FallingFront6:
   205A FF                 6969 	.byte	-1
   205B 03                 6970 	.byte	3
   205C 0E                 6971 	.byte	14
   205D FF                 6972 	.byte	-1
   205E 0F                 6973 	.byte	15
   205F FC                 6974 	.byte	-4
   2060 FF                 6975 	.byte	-1
   2061 FD                 6976 	.byte	-3
   2062 F3                 6977 	.byte	-13
   2063 FF                 6978 	.byte	-1
   2064 F1                 6979 	.byte	-15
   2065 03                 6980 	.byte	3
   2066 FF                 6981 	.byte	-1
   2067 04                 6982 	.byte	4
   2068 04                 6983 	.byte	4
   2069 00                 6984 	.byte	0
   206A FF                 6985 	.byte	-1
   206B 0A                 6986 	.byte	10
   206C FF                 6987 	.byte	-1
   206D 04                 6988 	.byte	4
   206E 04                 6989 	.byte	4
   206F 00                 6990 	.byte	0
   2070 0B                 6991 	.byte	11
   2071 F8                 6992 	.byte	-8
   2072 FF                 6993 	.byte	-1
   2073 03                 6994 	.byte	3
   2074 04                 6995 	.byte	4
   2075 00                 6996 	.byte	0
   2076 FA                 6997 	.byte	-6
   2077 EF                 6998 	.byte	-17
   2078 FF                 6999 	.byte	-1
   2079 03                 7000 	.byte	3
   207A 03                 7001 	.byte	3
   207B 00                 7002 	.byte	0
   207C F2                 7003 	.byte	-14
   207D 04                 7004 	.byte	4
   207E FF                 7005 	.byte	-1
   207F 03                 7006 	.byte	3
   2080 0E                 7007 	.byte	14
   2081 FF                 7008 	.byte	-1
   2082 0E                 7009 	.byte	14
   2083 FC                 7010 	.byte	-4
   2084 FF                 7011 	.byte	-1
   2085 FD                 7012 	.byte	-3
   2086 F2                 7013 	.byte	-14
   2087 FF                 7014 	.byte	-1
   2088 F2                 7015 	.byte	-14
   2089 04                 7016 	.byte	4
   208A 01                 7017 	.byte	1
                           7018 	.globl	_height2FallingLeft7
   208B                    7019 _height2FallingLeft7:
   208B FF                 7020 	.byte	-1
   208C 0C                 7021 	.byte	12
   208D 09                 7022 	.byte	9
   208E FF                 7023 	.byte	-1
   208F 08                 7024 	.byte	8
   2090 FA                 7025 	.byte	-6
   2091 FF                 7026 	.byte	-1
   2092 F4                 7027 	.byte	-12
   2093 F8                 7028 	.byte	-8
   2094 FF                 7029 	.byte	-1
   2095 F8                 7030 	.byte	-8
   2096 05                 7031 	.byte	5
   2097 FF                 7032 	.byte	-1
   2098 0B                 7033 	.byte	11
   2099 EB                 7034 	.byte	-21
   209A 00                 7035 	.byte	0
   209B 01                 7036 	.byte	1
   209C 1E                 7037 	.byte	30
   209D FF                 7038 	.byte	-1
   209E 0B                 7039 	.byte	11
   209F EA                 7040 	.byte	-22
   20A0 00                 7041 	.byte	0
   20A1 FD                 7042 	.byte	-3
   20A2 10                 7043 	.byte	16
   20A3 FF                 7044 	.byte	-1
   20A4 0B                 7045 	.byte	11
   20A5 EA                 7046 	.byte	-22
   20A6 00                 7047 	.byte	0
   20A7 E9                 7048 	.byte	-23
   20A8 0E                 7049 	.byte	14
   20A9 FF                 7050 	.byte	-1
   20AA 0B                 7051 	.byte	11
   20AB EA                 7052 	.byte	-22
   20AC 00                 7053 	.byte	0
   20AD F8                 7054 	.byte	-8
   20AE 06                 7055 	.byte	6
   20AF FF                 7056 	.byte	-1
   20B0 0C                 7057 	.byte	12
   20B1 08                 7058 	.byte	8
   20B2 FF                 7059 	.byte	-1
   20B3 08                 7060 	.byte	8
   20B4 FA                 7061 	.byte	-6
   20B5 FF                 7062 	.byte	-1
   20B6 F4                 7063 	.byte	-12
   20B7 F8                 7064 	.byte	-8
   20B8 FF                 7065 	.byte	-1
   20B9 F8                 7066 	.byte	-8
   20BA 06                 7067 	.byte	6
   20BB 01                 7068 	.byte	1
                           7069 	.globl	_height2RisingRight7
   20BC                    7070 _height2RisingRight7:
   20BC 00                 7071 	.byte	0
   20BD 06                 7072 	.byte	6
   20BE 1C                 7073 	.byte	28
   20BF FF                 7074 	.byte	-1
   20C0 09                 7075 	.byte	9
   20C1 0C                 7076 	.byte	12
   20C2 FF                 7077 	.byte	-1
   20C3 08                 7078 	.byte	8
   20C4 FA                 7079 	.byte	-6
   20C5 FF                 7080 	.byte	-1
   20C6 F7                 7081 	.byte	-9
   20C7 F4                 7082 	.byte	-12
   20C8 FF                 7083 	.byte	-1
   20C9 F8                 7084 	.byte	-8
   20CA 06                 7085 	.byte	6
   20CB FF                 7086 	.byte	-1
   20CC 14                 7087 	.byte	20
   20CD F2                 7088 	.byte	-14
   20CE 00                 7089 	.byte	0
   20CF F5                 7090 	.byte	-11
   20D0 1A                 7091 	.byte	26
   20D1 FF                 7092 	.byte	-1
   20D2 14                 7093 	.byte	20
   20D3 F2                 7094 	.byte	-14
   20D4 00                 7095 	.byte	0
   20D5 F4                 7096 	.byte	-12
   20D6 08                 7097 	.byte	8
   20D7 FF                 7098 	.byte	-1
   20D8 14                 7099 	.byte	20
   20D9 F2                 7100 	.byte	-14
   20DA 00                 7101 	.byte	0
   20DB E3                 7102 	.byte	-29
   20DC 02                 7103 	.byte	2
   20DD FF                 7104 	.byte	-1
   20DE 14                 7105 	.byte	20
   20DF F2                 7106 	.byte	-14
   20E0 00                 7107 	.byte	0
   20E1 F8                 7108 	.byte	-8
   20E2 06                 7109 	.byte	6
   20E3 FF                 7110 	.byte	-1
   20E4 09                 7111 	.byte	9
   20E5 0C                 7112 	.byte	12
   20E6 FF                 7113 	.byte	-1
   20E7 08                 7114 	.byte	8
   20E8 FA                 7115 	.byte	-6
   20E9 FF                 7116 	.byte	-1
   20EA F7                 7117 	.byte	-9
   20EB F4                 7118 	.byte	-12
   20EC FF                 7119 	.byte	-1
   20ED F8                 7120 	.byte	-8
   20EE 06                 7121 	.byte	6
   20EF 01                 7122 	.byte	1
                           7123 	.globl	_height2FallingRight7
   20F0                    7124 _height2FallingRight7:
   20F0 00                 7125 	.byte	0
   20F1 0B                 7126 	.byte	11
   20F2 05                 7127 	.byte	5
   20F3 FF                 7128 	.byte	-1
   20F4 F8                 7129 	.byte	-8
   20F5 09                 7130 	.byte	9
   20F6 FF                 7131 	.byte	-1
   20F7 08                 7132 	.byte	8
   20F8 FA                 7133 	.byte	-6
   20F9 FF                 7134 	.byte	-1
   20FA 08                 7135 	.byte	8
   20FB F8                 7136 	.byte	-8
   20FC FF                 7137 	.byte	-1
   20FD F8                 7138 	.byte	-8
   20FE 05                 7139 	.byte	5
   20FF FF                 7140 	.byte	-1
   2100 15                 7141 	.byte	21
   2101 17                 7142 	.byte	23
   2102 00                 7143 	.byte	0
   2103 E3                 7144 	.byte	-29
   2104 F2                 7145 	.byte	-14
   2105 FF                 7146 	.byte	-1
   2106 15                 7147 	.byte	21
   2107 16                 7148 	.byte	22
   2108 00                 7149 	.byte	0
   2109 F3                 7150 	.byte	-13
   210A E4                 7151 	.byte	-28
   210B FF                 7152 	.byte	-1
   210C 15                 7153 	.byte	21
   210D 16                 7154 	.byte	22
   210E 00                 7155 	.byte	0
   210F F3                 7156 	.byte	-13
   2110 E2                 7157 	.byte	-30
   2111 FF                 7158 	.byte	-1
   2112 15                 7159 	.byte	21
   2113 16                 7160 	.byte	22
   2114 00                 7161 	.byte	0
   2115 F8                 7162 	.byte	-8
   2116 06                 7163 	.byte	6
   2117 FF                 7164 	.byte	-1
   2118 F8                 7165 	.byte	-8
   2119 08                 7166 	.byte	8
   211A FF                 7167 	.byte	-1
   211B 08                 7168 	.byte	8
   211C FA                 7169 	.byte	-6
   211D FF                 7170 	.byte	-1
   211E 08                 7171 	.byte	8
   211F F8                 7172 	.byte	-8
   2120 FF                 7173 	.byte	-1
   2121 F8                 7174 	.byte	-8
   2122 06                 7175 	.byte	6
   2123 01                 7176 	.byte	1
                           7177 	.globl	_height2RisingLeft7
   2124                    7178 _height2RisingLeft7:
   2124 00                 7179 	.byte	0
   2125 04                 7180 	.byte	4
   2126 F5                 7181 	.byte	-11
   2127 FF                 7182 	.byte	-1
   2128 FC                 7183 	.byte	-4
   2129 0B                 7184 	.byte	11
   212A FF                 7185 	.byte	-1
   212B 08                 7186 	.byte	8
   212C FB                 7187 	.byte	-5
   212D FF                 7188 	.byte	-1
   212E 04                 7189 	.byte	4
   212F F4                 7190 	.byte	-12
   2130 FF                 7191 	.byte	-1
   2131 F8                 7192 	.byte	-8
   2132 06                 7193 	.byte	6
   2133 FF                 7194 	.byte	-1
   2134 19                 7195 	.byte	25
   2135 0D                 7196 	.byte	13
   2136 00                 7197 	.byte	0
   2137 E3                 7198 	.byte	-29
   2138 FE                 7199 	.byte	-2
   2139 FF                 7200 	.byte	-1
   213A 1A                 7201 	.byte	26
   213B 0E                 7202 	.byte	14
   213C 00                 7203 	.byte	0
   213D EE                 7204 	.byte	-18
   213E ED                 7205 	.byte	-19
   213F FF                 7206 	.byte	-1
   2140 1A                 7207 	.byte	26
   2141 0D                 7208 	.byte	13
   2142 00                 7209 	.byte	0
   2143 EA                 7210 	.byte	-22
   2144 E7                 7211 	.byte	-25
   2145 FF                 7212 	.byte	-1
   2146 19                 7213 	.byte	25
   2147 0E                 7214 	.byte	14
   2148 00                 7215 	.byte	0
   2149 F8                 7216 	.byte	-8
   214A 05                 7217 	.byte	5
   214B FF                 7218 	.byte	-1
   214C FD                 7219 	.byte	-3
   214D 0C                 7220 	.byte	12
   214E FF                 7221 	.byte	-1
   214F 08                 7222 	.byte	8
   2150 FA                 7223 	.byte	-6
   2151 FF                 7224 	.byte	-1
   2152 03                 7225 	.byte	3
   2153 F5                 7226 	.byte	-11
   2154 FF                 7227 	.byte	-1
   2155 F8                 7228 	.byte	-8
   2156 05                 7229 	.byte	5
   2157 01                 7230 	.byte	1
                           7231 	.globl	_height2FallingBack7
   2158                    7232 _height2FallingBack7:
   2158 00                 7233 	.byte	0
   2159 0D                 7234 	.byte	13
   215A FF                 7235 	.byte	-1
   215B FF                 7236 	.byte	-1
   215C 03                 7237 	.byte	3
   215D 0D                 7238 	.byte	13
   215E FF                 7239 	.byte	-1
   215F FB                 7240 	.byte	-5
   2160 FC                 7241 	.byte	-4
   2161 FF                 7242 	.byte	-1
   2162 FD                 7243 	.byte	-3
   2163 F3                 7244 	.byte	-13
   2164 FF                 7245 	.byte	-1
   2165 05                 7246 	.byte	5
   2166 04                 7247 	.byte	4
   2167 FF                 7248 	.byte	-1
   2168 1D                 7249 	.byte	29
   2169 F6                 7250 	.byte	-10
   216A 00                 7251 	.byte	0
   216B E6                 7252 	.byte	-26
   216C 17                 7253 	.byte	23
   216D FF                 7254 	.byte	-1
   216E 1D                 7255 	.byte	29
   216F F6                 7256 	.byte	-10
   2170 00                 7257 	.byte	0
   2171 DE                 7258 	.byte	-34
   2172 06                 7259 	.byte	6
   2173 FF                 7260 	.byte	-1
   2174 1D                 7261 	.byte	29
   2175 F7                 7262 	.byte	-9
   2176 00                 7263 	.byte	0
   2177 E0                 7264 	.byte	-32
   2178 FC                 7265 	.byte	-4
   2179 FF                 7266 	.byte	-1
   217A 1D                 7267 	.byte	29
   217B F6                 7268 	.byte	-10
   217C 00                 7269 	.byte	0
   217D 05                 7270 	.byte	5
   217E 04                 7271 	.byte	4
   217F FF                 7272 	.byte	-1
   2180 03                 7273 	.byte	3
   2181 0D                 7274 	.byte	13
   2182 FF                 7275 	.byte	-1
   2183 FB                 7276 	.byte	-5
   2184 FD                 7277 	.byte	-3
   2185 FF                 7278 	.byte	-1
   2186 FD                 7279 	.byte	-3
   2187 F2                 7280 	.byte	-14
   2188 FF                 7281 	.byte	-1
   2189 05                 7282 	.byte	5
   218A 04                 7283 	.byte	4
   218B 01                 7284 	.byte	1
                           7285 	.globl	_height2RisingFront7
   218C                    7286 _height2RisingFront7:
   218C 00                 7287 	.byte	0
   218D 00                 7288 	.byte	0
   218E 05                 7289 	.byte	5
   218F FF                 7290 	.byte	-1
   2190 03                 7291 	.byte	3
   2191 0E                 7292 	.byte	14
   2192 FF                 7293 	.byte	-1
   2193 00                 7294 	.byte	0
   2194 FB                 7295 	.byte	-5
   2195 FF                 7296 	.byte	-1
   2196 FD                 7297 	.byte	-3
   2197 F2                 7298 	.byte	-14
   2198 FF                 7299 	.byte	-1
   2199 00                 7300 	.byte	0
   219A 05                 7301 	.byte	5
   219B FF                 7302 	.byte	-1
   219C 1E                 7303 	.byte	30
   219D FB                 7304 	.byte	-5
   219E 00                 7305 	.byte	0
   219F E5                 7306 	.byte	-27
   21A0 13                 7307 	.byte	19
   21A1 FF                 7308 	.byte	-1
   21A2 1E                 7309 	.byte	30
   21A3 FA                 7310 	.byte	-6
   21A4 00                 7311 	.byte	0
   21A5 E2                 7312 	.byte	-30
   21A6 01                 7313 	.byte	1
   21A7 FF                 7314 	.byte	-1
   21A8 1F                 7315 	.byte	31
   21A9 FA                 7316 	.byte	-6
   21AA 00                 7317 	.byte	0
   21AB DE                 7318 	.byte	-34
   21AC F8                 7319 	.byte	-8
   21AD FF                 7320 	.byte	-1
   21AE 1F                 7321 	.byte	31
   21AF FB                 7322 	.byte	-5
   21B0 00                 7323 	.byte	0
   21B1 FF                 7324 	.byte	-1
   21B2 05                 7325 	.byte	5
   21B3 FF                 7326 	.byte	-1
   21B4 03                 7327 	.byte	3
   21B5 0D                 7328 	.byte	13
   21B6 FF                 7329 	.byte	-1
   21B7 01                 7330 	.byte	1
   21B8 FB                 7331 	.byte	-5
   21B9 FF                 7332 	.byte	-1
   21BA FD                 7333 	.byte	-3
   21BB F3                 7334 	.byte	-13
   21BC FF                 7335 	.byte	-1
   21BD FF                 7336 	.byte	-1
   21BE 05                 7337 	.byte	5
   21BF 01                 7338 	.byte	1
                           7339 	.globl	_height2FallingFront7
   21C0                    7340 _height2FallingFront7:
   21C0 FF                 7341 	.byte	-1
   21C1 03                 7342 	.byte	3
   21C2 0E                 7343 	.byte	14
   21C3 FF                 7344 	.byte	-1
   21C4 0F                 7345 	.byte	15
   21C5 FC                 7346 	.byte	-4
   21C6 FF                 7347 	.byte	-1
   21C7 FD                 7348 	.byte	-3
   21C8 F3                 7349 	.byte	-13
   21C9 FF                 7350 	.byte	-1
   21CA F1                 7351 	.byte	-15
   21CB 03                 7352 	.byte	3
   21CC FF                 7353 	.byte	-1
   21CD 03                 7354 	.byte	3
   21CE 0A                 7355 	.byte	10
   21CF 00                 7356 	.byte	0
   21D0 00                 7357 	.byte	0
   21D1 04                 7358 	.byte	4
   21D2 FF                 7359 	.byte	-1
   21D3 03                 7360 	.byte	3
   21D4 0A                 7361 	.byte	10
   21D5 00                 7362 	.byte	0
   21D6 0C                 7363 	.byte	12
   21D7 F2                 7364 	.byte	-14
   21D8 FF                 7365 	.byte	-1
   21D9 03                 7366 	.byte	3
   21DA 0A                 7367 	.byte	10
   21DB 00                 7368 	.byte	0
   21DC FA                 7369 	.byte	-6
   21DD E9                 7370 	.byte	-23
   21DE FF                 7371 	.byte	-1
   21DF 03                 7372 	.byte	3
   21E0 09                 7373 	.byte	9
   21E1 00                 7374 	.byte	0
   21E2 F1                 7375 	.byte	-15
   21E3 04                 7376 	.byte	4
   21E4 FF                 7377 	.byte	-1
   21E5 03                 7378 	.byte	3
   21E6 0E                 7379 	.byte	14
   21E7 FF                 7380 	.byte	-1
   21E8 0F                 7381 	.byte	15
   21E9 FC                 7382 	.byte	-4
   21EA FF                 7383 	.byte	-1
   21EB FD                 7384 	.byte	-3
   21EC F2                 7385 	.byte	-14
   21ED FF                 7386 	.byte	-1
   21EE F1                 7387 	.byte	-15
   21EF 04                 7388 	.byte	4
   21F0 01                 7389 	.byte	1
                           7390 	.globl	_height2RisingBack7
   21F1                    7391 _height2RisingBack7:
   21F1 00                 7392 	.byte	0
   21F2 10                 7393 	.byte	16
   21F3 F5                 7394 	.byte	-11
   21F4 FF                 7395 	.byte	-1
   21F5 03                 7396 	.byte	3
   21F6 0D                 7397 	.byte	13
   21F7 FF                 7398 	.byte	-1
   21F8 0D                 7399 	.byte	13
   21F9 FC                 7400 	.byte	-4
   21FA FF                 7401 	.byte	-1
   21FB FD                 7402 	.byte	-3
   21FC F2                 7403 	.byte	-14
   21FD FF                 7404 	.byte	-1
   21FE F3                 7405 	.byte	-13
   21FF 05                 7406 	.byte	5
   2200 FF                 7407 	.byte	-1
   2201 0F                 7408 	.byte	15
   2202 06                 7409 	.byte	6
   2203 00                 7410 	.byte	0
   2204 F4                 7411 	.byte	-12
   2205 07                 7412 	.byte	7
   2206 FF                 7413 	.byte	-1
   2207 0F                 7414 	.byte	15
   2208 06                 7415 	.byte	6
   2209 00                 7416 	.byte	0
   220A FE                 7417 	.byte	-2
   220B F6                 7418 	.byte	-10
   220C FF                 7419 	.byte	-1
   220D 0F                 7420 	.byte	15
   220E 05                 7421 	.byte	5
   220F 00                 7422 	.byte	0
   2210 EE                 7423 	.byte	-18
   2211 ED                 7424 	.byte	-19
   2212 FF                 7425 	.byte	-1
   2213 0F                 7426 	.byte	15
   2214 06                 7427 	.byte	6
   2215 00                 7428 	.byte	0
   2216 F3                 7429 	.byte	-13
   2217 05                 7430 	.byte	5
   2218 FF                 7431 	.byte	-1
   2219 03                 7432 	.byte	3
   221A 0D                 7433 	.byte	13
   221B FF                 7434 	.byte	-1
   221C 0D                 7435 	.byte	13
   221D FB                 7436 	.byte	-5
   221E FF                 7437 	.byte	-1
   221F FD                 7438 	.byte	-3
   2220 F3                 7439 	.byte	-13
   2221 FF                 7440 	.byte	-1
   2222 F3                 7441 	.byte	-13
   2223 05                 7442 	.byte	5
   2224 01                 7443 	.byte	1
                           7444 	.globl	_depth2RollingLeft7
   2225                    7445 _depth2RollingLeft7:
   2225 FF                 7446 	.byte	-1
   2226 0C                 7447 	.byte	12
   2227 09                 7448 	.byte	9
   2228 FF                 7449 	.byte	-1
   2229 10                 7450 	.byte	16
   222A F5                 7451 	.byte	-11
   222B FF                 7452 	.byte	-1
   222C F4                 7453 	.byte	-12
   222D F7                 7454 	.byte	-9
   222E FF                 7455 	.byte	-1
   222F F0                 7456 	.byte	-16
   2230 0B                 7457 	.byte	11
   2231 FF                 7458 	.byte	-1
   2232 06                 7459 	.byte	6
   2233 F6                 7460 	.byte	-10
   2234 00                 7461 	.byte	0
   2235 06                 7462 	.byte	6
   2236 13                 7463 	.byte	19
   2237 FF                 7464 	.byte	-1
   2238 06                 7465 	.byte	6
   2239 F5                 7466 	.byte	-11
   223A 00                 7467 	.byte	0
   223B 0A                 7468 	.byte	10
   223C 00                 7469 	.byte	0
   223D FF                 7470 	.byte	-1
   223E 06                 7471 	.byte	6
   223F F4                 7472 	.byte	-12
   2240 00                 7473 	.byte	0
   2241 EE                 7474 	.byte	-18
   2242 03                 7475 	.byte	3
   2243 FF                 7476 	.byte	-1
   2244 06                 7477 	.byte	6
   2245 F5                 7478 	.byte	-11
   2246 00                 7479 	.byte	0
   2247 F0                 7480 	.byte	-16
   2248 0C                 7481 	.byte	12
   2249 FF                 7482 	.byte	-1
   224A 0C                 7483 	.byte	12
   224B 08                 7484 	.byte	8
   224C FF                 7485 	.byte	-1
   224D 10                 7486 	.byte	16
   224E F4                 7487 	.byte	-12
   224F FF                 7488 	.byte	-1
   2250 F4                 7489 	.byte	-12
   2251 F8                 7490 	.byte	-8
   2252 FF                 7491 	.byte	-1
   2253 F0                 7492 	.byte	-16
   2254 0C                 7493 	.byte	12
   2255 01                 7494 	.byte	1
                           7495 	.globl	_depth2RollingRight7
   2256                    7496 _depth2RollingRight7:
   2256 00                 7497 	.byte	0
   2257 0B                 7498 	.byte	11
   2258 05                 7499 	.byte	5
   2259 FF                 7500 	.byte	-1
   225A F8                 7501 	.byte	-8
   225B 09                 7502 	.byte	9
   225C FF                 7503 	.byte	-1
   225D 10                 7504 	.byte	16
   225E F4                 7505 	.byte	-12
   225F FF                 7506 	.byte	-1
   2260 08                 7507 	.byte	8
   2261 F8                 7508 	.byte	-8
   2262 FF                 7509 	.byte	-1
   2263 F0                 7510 	.byte	-16
   2264 0B                 7511 	.byte	11
   2265 FF                 7512 	.byte	-1
   2266 0B                 7513 	.byte	11
   2267 0C                 7514 	.byte	12
   2268 00                 7515 	.byte	0
   2269 ED                 7516 	.byte	-19
   226A FD                 7517 	.byte	-3
   226B FF                 7518 	.byte	-1
   226C 0A                 7519 	.byte	10
   226D 0B                 7520 	.byte	11
   226E 00                 7521 	.byte	0
   226F 06                 7522 	.byte	6
   2270 E9                 7523 	.byte	-23
   2271 FF                 7524 	.byte	-1
   2272 0A                 7525 	.byte	10
   2273 0B                 7526 	.byte	11
   2274 00                 7527 	.byte	0
   2275 FE                 7528 	.byte	-2
   2276 ED                 7529 	.byte	-19
   2277 FF                 7530 	.byte	-1
   2278 0B                 7531 	.byte	11
   2279 0B                 7532 	.byte	11
   227A 00                 7533 	.byte	0
   227B F0                 7534 	.byte	-16
   227C 0C                 7535 	.byte	12
   227D FF                 7536 	.byte	-1
   227E F7                 7537 	.byte	-9
   227F 08                 7538 	.byte	8
   2280 FF                 7539 	.byte	-1
   2281 10                 7540 	.byte	16
   2282 F4                 7541 	.byte	-12
   2283 FF                 7542 	.byte	-1
   2284 09                 7543 	.byte	9
   2285 F8                 7544 	.byte	-8
   2286 FF                 7545 	.byte	-1
   2287 F0                 7546 	.byte	-16
   2288 0C                 7547 	.byte	12
   2289 01                 7548 	.byte	1
                           7549 	.globl	_width2RollingFront7
   228A                    7550 _width2RollingFront7:
   228A FF                 7551 	.byte	-1
   228B 06                 7552 	.byte	6
   228C 1C                 7553 	.byte	28
   228D FF                 7554 	.byte	-1
   228E 0F                 7555 	.byte	15
   228F FC                 7556 	.byte	-4
   2290 FF                 7557 	.byte	-1
   2291 FA                 7558 	.byte	-6
   2292 E5                 7559 	.byte	-27
   2293 FF                 7560 	.byte	-1
   2294 F1                 7561 	.byte	-15
   2295 03                 7562 	.byte	3
   2296 FF                 7563 	.byte	-1
   2297 02                 7564 	.byte	2
   2298 05                 7565 	.byte	5
   2299 00                 7566 	.byte	0
   229A 04                 7567 	.byte	4
   229B 17                 7568 	.byte	23
   229C FF                 7569 	.byte	-1
   229D 02                 7570 	.byte	2
   229E 05                 7571 	.byte	5
   229F 00                 7572 	.byte	0
   22A0 0D                 7573 	.byte	13
   22A1 F7                 7574 	.byte	-9
   22A2 FF                 7575 	.byte	-1
   22A3 02                 7576 	.byte	2
   22A4 05                 7577 	.byte	5
   22A5 00                 7578 	.byte	0
   22A6 F8                 7579 	.byte	-8
   22A7 E0                 7580 	.byte	-32
   22A8 FF                 7581 	.byte	-1
   22A9 02                 7582 	.byte	2
   22AA 04                 7583 	.byte	4
   22AB 00                 7584 	.byte	0
   22AC F1                 7585 	.byte	-15
   22AD 04                 7586 	.byte	4
   22AE FF                 7587 	.byte	-1
   22AF 06                 7588 	.byte	6
   22B0 1C                 7589 	.byte	28
   22B1 FF                 7590 	.byte	-1
   22B2 0F                 7591 	.byte	15
   22B3 FC                 7592 	.byte	-4
   22B4 FF                 7593 	.byte	-1
   22B5 FA                 7594 	.byte	-6
   22B6 E4                 7595 	.byte	-28
   22B7 FF                 7596 	.byte	-1
   22B8 F1                 7597 	.byte	-15
   22B9 04                 7598 	.byte	4
   22BA 01                 7599 	.byte	1
                           7600 	.globl	_width2RollingBack7
   22BB                    7601 _width2RollingBack7:
   22BB 00                 7602 	.byte	0
   22BC 0D                 7603 	.byte	13
   22BD FF                 7604 	.byte	-1
   22BE FF                 7605 	.byte	-1
   22BF 06                 7606 	.byte	6
   22C0 1B                 7607 	.byte	27
   22C1 FF                 7608 	.byte	-1
   22C2 FB                 7609 	.byte	-5
   22C3 FC                 7610 	.byte	-4
   22C4 FF                 7611 	.byte	-1
   22C5 FA                 7612 	.byte	-6
   22C6 E5                 7613 	.byte	-27
   22C7 FF                 7614 	.byte	-1
   22C8 05                 7615 	.byte	5
   22C9 04                 7616 	.byte	4
   22CA FF                 7617 	.byte	-1
   22CB 0F                 7618 	.byte	15
   22CC FB                 7619 	.byte	-5
   22CD 00                 7620 	.byte	0
   22CE F7                 7621 	.byte	-9
   22CF 20                 7622 	.byte	32
   22D0 FF                 7623 	.byte	-1
   22D1 0F                 7624 	.byte	15
   22D2 FB                 7625 	.byte	-5
   22D3 00                 7626 	.byte	0
   22D4 EC                 7627 	.byte	-20
   22D5 01                 7628 	.byte	1
   22D6 FF                 7629 	.byte	-1
   22D7 0E                 7630 	.byte	14
   22D8 FB                 7631 	.byte	-5
   22D9 00                 7632 	.byte	0
   22DA EC                 7633 	.byte	-20
   22DB EA                 7634 	.byte	-22
   22DC FF                 7635 	.byte	-1
   22DD 0E                 7636 	.byte	14
   22DE FB                 7637 	.byte	-5
   22DF 00                 7638 	.byte	0
   22E0 06                 7639 	.byte	6
   22E1 04                 7640 	.byte	4
   22E2 FF                 7641 	.byte	-1
   22E3 06                 7642 	.byte	6
   22E4 1B                 7643 	.byte	27
   22E5 FF                 7644 	.byte	-1
   22E6 FA                 7645 	.byte	-6
   22E7 FC                 7646 	.byte	-4
   22E8 FF                 7647 	.byte	-1
   22E9 FA                 7648 	.byte	-6
   22EA E5                 7649 	.byte	-27
   22EB FF                 7650 	.byte	-1
   22EC 06                 7651 	.byte	6
   22ED 04                 7652 	.byte	4
   22EE 01                 7653 	.byte	1
                           7654 	.globl	_height1FallingLeft7
   22EF                    7655 _height1FallingLeft7:
   22EF FF                 7656 	.byte	-1
   22F0 0C                 7657 	.byte	12
   22F1 09                 7658 	.byte	9
   22F2 FF                 7659 	.byte	-1
   22F3 08                 7660 	.byte	8
   22F4 FA                 7661 	.byte	-6
   22F5 FF                 7662 	.byte	-1
   22F6 F4                 7663 	.byte	-12
   22F7 F8                 7664 	.byte	-8
   22F8 FF                 7665 	.byte	-1
   22F9 F8                 7666 	.byte	-8
   22FA 05                 7667 	.byte	5
   22FB FF                 7668 	.byte	-1
   22FC 06                 7669 	.byte	6
   22FD F6                 7670 	.byte	-10
   22FE 00                 7671 	.byte	0
   22FF 06                 7672 	.byte	6
   2300 13                 7673 	.byte	19
   2301 FF                 7674 	.byte	-1
   2302 06                 7675 	.byte	6
   2303 F5                 7676 	.byte	-11
   2304 00                 7677 	.byte	0
   2305 02                 7678 	.byte	2
   2306 05                 7679 	.byte	5
   2307 FF                 7680 	.byte	-1
   2308 06                 7681 	.byte	6
   2309 F5                 7682 	.byte	-11
   230A 00                 7683 	.byte	0
   230B EE                 7684 	.byte	-18
   230C 03                 7685 	.byte	3
   230D FF                 7686 	.byte	-1
   230E 06                 7687 	.byte	6
   230F F5                 7688 	.byte	-11
   2310 00                 7689 	.byte	0
   2311 F8                 7690 	.byte	-8
   2312 06                 7691 	.byte	6
   2313 FF                 7692 	.byte	-1
   2314 0C                 7693 	.byte	12
   2315 08                 7694 	.byte	8
   2316 FF                 7695 	.byte	-1
   2317 08                 7696 	.byte	8
   2318 FA                 7697 	.byte	-6
   2319 FF                 7698 	.byte	-1
   231A F4                 7699 	.byte	-12
   231B F8                 7700 	.byte	-8
   231C FF                 7701 	.byte	-1
   231D F8                 7702 	.byte	-8
   231E 06                 7703 	.byte	6
   231F 01                 7704 	.byte	1
                           7705 	.globl	_height1FallingRight7
   2320                    7706 _height1FallingRight7:
   2320 00                 7707 	.byte	0
   2321 0B                 7708 	.byte	11
   2322 05                 7709 	.byte	5
   2323 FF                 7710 	.byte	-1
   2324 F8                 7711 	.byte	-8
   2325 09                 7712 	.byte	9
   2326 FF                 7713 	.byte	-1
   2327 08                 7714 	.byte	8
   2328 FA                 7715 	.byte	-6
   2329 FF                 7716 	.byte	-1
   232A 08                 7717 	.byte	8
   232B F8                 7718 	.byte	-8
   232C FF                 7719 	.byte	-1
   232D F8                 7720 	.byte	-8
   232E 05                 7721 	.byte	5
   232F FF                 7722 	.byte	-1
   2330 0B                 7723 	.byte	11
   2331 0C                 7724 	.byte	12
   2332 00                 7725 	.byte	0
   2333 ED                 7726 	.byte	-19
   2334 FD                 7727 	.byte	-3
   2335 FF                 7728 	.byte	-1
   2336 0A                 7729 	.byte	10
   2337 0B                 7730 	.byte	11
   2338 00                 7731 	.byte	0
   2339 FE                 7732 	.byte	-2
   233A EF                 7733 	.byte	-17
   233B FF                 7734 	.byte	-1
   233C 0A                 7735 	.byte	10
   233D 0B                 7736 	.byte	11
   233E 00                 7737 	.byte	0
   233F FE                 7738 	.byte	-2
   2340 ED                 7739 	.byte	-19
   2341 FF                 7740 	.byte	-1
   2342 0B                 7741 	.byte	11
   2343 0B                 7742 	.byte	11
   2344 00                 7743 	.byte	0
   2345 F8                 7744 	.byte	-8
   2346 06                 7745 	.byte	6
   2347 FF                 7746 	.byte	-1
   2348 F7                 7747 	.byte	-9
   2349 08                 7748 	.byte	8
   234A FF                 7749 	.byte	-1
   234B 08                 7750 	.byte	8
   234C FA                 7751 	.byte	-6
   234D FF                 7752 	.byte	-1
   234E 09                 7753 	.byte	9
   234F F8                 7754 	.byte	-8
   2350 FF                 7755 	.byte	-1
   2351 F8                 7756 	.byte	-8
   2352 06                 7757 	.byte	6
   2353 01                 7758 	.byte	1
                           7759 	.globl	_height1FallingBack7
   2354                    7760 _height1FallingBack7:
   2354 00                 7761 	.byte	0
   2355 0D                 7762 	.byte	13
   2356 FF                 7763 	.byte	-1
   2357 FF                 7764 	.byte	-1
   2358 03                 7765 	.byte	3
   2359 0D                 7766 	.byte	13
   235A FF                 7767 	.byte	-1
   235B FB                 7768 	.byte	-5
   235C FC                 7769 	.byte	-4
   235D FF                 7770 	.byte	-1
   235E FD                 7771 	.byte	-3
   235F F3                 7772 	.byte	-13
   2360 FF                 7773 	.byte	-1
   2361 05                 7774 	.byte	5
   2362 04                 7775 	.byte	4
   2363 FF                 7776 	.byte	-1
   2364 0F                 7777 	.byte	15
   2365 FB                 7778 	.byte	-5
   2366 00                 7779 	.byte	0
   2367 F4                 7780 	.byte	-12
   2368 12                 7781 	.byte	18
   2369 FF                 7782 	.byte	-1
   236A 0F                 7783 	.byte	15
   236B FB                 7784 	.byte	-5
   236C 00                 7785 	.byte	0
   236D EC                 7786 	.byte	-20
   236E 01                 7787 	.byte	1
   236F FF                 7788 	.byte	-1
   2370 0E                 7789 	.byte	14
   2371 FB                 7790 	.byte	-5
   2372 00                 7791 	.byte	0
   2373 EF                 7792 	.byte	-17
   2374 F8                 7793 	.byte	-8
   2375 FF                 7794 	.byte	-1
   2376 0E                 7795 	.byte	14
   2377 FB                 7796 	.byte	-5
   2378 00                 7797 	.byte	0
   2379 06                 7798 	.byte	6
   237A 04                 7799 	.byte	4
   237B FF                 7800 	.byte	-1
   237C 03                 7801 	.byte	3
   237D 0D                 7802 	.byte	13
   237E FF                 7803 	.byte	-1
   237F FA                 7804 	.byte	-6
   2380 FC                 7805 	.byte	-4
   2381 FF                 7806 	.byte	-1
   2382 FD                 7807 	.byte	-3
   2383 F3                 7808 	.byte	-13
   2384 FF                 7809 	.byte	-1
   2385 06                 7810 	.byte	6
   2386 04                 7811 	.byte	4
   2387 01                 7812 	.byte	1
                           7813 	.globl	_height1FallingFront7
   2388                    7814 _height1FallingFront7:
   2388 FF                 7815 	.byte	-1
   2389 03                 7816 	.byte	3
   238A 0E                 7817 	.byte	14
   238B FF                 7818 	.byte	-1
   238C 0F                 7819 	.byte	15
   238D FC                 7820 	.byte	-4
   238E FF                 7821 	.byte	-1
   238F FD                 7822 	.byte	-3
   2390 F3                 7823 	.byte	-13
   2391 FF                 7824 	.byte	-1
   2392 F1                 7825 	.byte	-15
   2393 03                 7826 	.byte	3
   2394 FF                 7827 	.byte	-1
   2395 02                 7828 	.byte	2
   2396 05                 7829 	.byte	5
   2397 00                 7830 	.byte	0
   2398 01                 7831 	.byte	1
   2399 09                 7832 	.byte	9
   239A FF                 7833 	.byte	-1
   239B 02                 7834 	.byte	2
   239C 05                 7835 	.byte	5
   239D 00                 7836 	.byte	0
   239E 0D                 7837 	.byte	13
   239F F7                 7838 	.byte	-9
   23A0 FF                 7839 	.byte	-1
   23A1 02                 7840 	.byte	2
   23A2 05                 7841 	.byte	5
   23A3 00                 7842 	.byte	0
   23A4 FB                 7843 	.byte	-5
   23A5 EE                 7844 	.byte	-18
   23A6 FF                 7845 	.byte	-1
   23A7 02                 7846 	.byte	2
   23A8 04                 7847 	.byte	4
   23A9 00                 7848 	.byte	0
   23AA F1                 7849 	.byte	-15
   23AB 04                 7850 	.byte	4
   23AC FF                 7851 	.byte	-1
   23AD 03                 7852 	.byte	3
   23AE 0E                 7853 	.byte	14
   23AF FF                 7854 	.byte	-1
   23B0 0F                 7855 	.byte	15
   23B1 FC                 7856 	.byte	-4
   23B2 FF                 7857 	.byte	-1
   23B3 FD                 7858 	.byte	-3
   23B4 F2                 7859 	.byte	-14
   23B5 FF                 7860 	.byte	-1
   23B6 F1                 7861 	.byte	-15
   23B7 04                 7862 	.byte	4
   23B8 01                 7863 	.byte	1
                           7864 	.globl	_height2FallingLeft8
   23B9                    7865 _height2FallingLeft8:
   23B9 FF                 7866 	.byte	-1
   23BA 0D                 7867 	.byte	13
   23BB 07                 7868 	.byte	7
   23BC FF                 7869 	.byte	-1
   23BD 08                 7870 	.byte	8
   23BE FA                 7871 	.byte	-6
   23BF FF                 7872 	.byte	-1
   23C0 F3                 7873 	.byte	-13
   23C1 FA                 7874 	.byte	-6
   23C2 FF                 7875 	.byte	-1
   23C3 F8                 7876 	.byte	-8
   23C4 05                 7877 	.byte	5
   23C5 FF                 7878 	.byte	-1
   23C6 08                 7879 	.byte	8
   23C7 E9                 7880 	.byte	-23
   23C8 00                 7881 	.byte	0
   23C9 05                 7882 	.byte	5
   23CA 1E                 7883 	.byte	30
   23CB FF                 7884 	.byte	-1
   23CC 08                 7885 	.byte	8
   23CD E9                 7886 	.byte	-23
   23CE 00                 7887 	.byte	0
   23CF 00                 7888 	.byte	0
   23D0 11                 7889 	.byte	17
   23D1 FF                 7890 	.byte	-1
   23D2 08                 7891 	.byte	8
   23D3 E9                 7892 	.byte	-23
   23D4 00                 7893 	.byte	0
   23D5 EB                 7894 	.byte	-21
   23D6 11                 7895 	.byte	17
   23D7 FF                 7896 	.byte	-1
   23D8 08                 7897 	.byte	8
   23D9 E8                 7898 	.byte	-24
   23DA 00                 7899 	.byte	0
   23DB F8                 7900 	.byte	-8
   23DC 06                 7901 	.byte	6
   23DD FF                 7902 	.byte	-1
   23DE 0D                 7903 	.byte	13
   23DF 07                 7904 	.byte	7
   23E0 FF                 7905 	.byte	-1
   23E1 08                 7906 	.byte	8
   23E2 FA                 7907 	.byte	-6
   23E3 FF                 7908 	.byte	-1
   23E4 F3                 7909 	.byte	-13
   23E5 F9                 7910 	.byte	-7
   23E6 FF                 7911 	.byte	-1
   23E7 F8                 7912 	.byte	-8
   23E8 06                 7913 	.byte	6
   23E9 01                 7914 	.byte	1
                           7915 	.globl	_height2RisingRight8
   23EA                    7916 _height2RisingRight8:
   23EA 00                 7917 	.byte	0
   23EB 06                 7918 	.byte	6
   23EC 1C                 7919 	.byte	28
   23ED FF                 7920 	.byte	-1
   23EE 08                 7921 	.byte	8
   23EF 0D                 7922 	.byte	13
   23F0 FF                 7923 	.byte	-1
   23F1 08                 7924 	.byte	8
   23F2 FA                 7925 	.byte	-6
   23F3 FF                 7926 	.byte	-1
   23F4 F8                 7927 	.byte	-8
   23F5 F3                 7928 	.byte	-13
   23F6 FF                 7929 	.byte	-1
   23F7 F8                 7930 	.byte	-8
   23F8 06                 7931 	.byte	6
   23F9 FF                 7932 	.byte	-1
   23FA 16                 7933 	.byte	22
   23FB F5                 7934 	.byte	-11
   23FC 00                 7935 	.byte	0
   23FD F2                 7936 	.byte	-14
   23FE 18                 7937 	.byte	24
   23FF FF                 7938 	.byte	-1
   2400 15                 7939 	.byte	21
   2401 F5                 7940 	.byte	-11
   2402 00                 7941 	.byte	0
   2403 F3                 7942 	.byte	-13
   2404 05                 7943 	.byte	5
   2405 FF                 7944 	.byte	-1
   2406 15                 7945 	.byte	21
   2407 F5                 7946 	.byte	-11
   2408 00                 7947 	.byte	0
   2409 E3                 7948 	.byte	-29
   240A FE                 7949 	.byte	-2
   240B FF                 7950 	.byte	-1
   240C 16                 7951 	.byte	22
   240D F5                 7952 	.byte	-11
   240E 00                 7953 	.byte	0
   240F F8                 7954 	.byte	-8
   2410 06                 7955 	.byte	6
   2411 FF                 7956 	.byte	-1
   2412 07                 7957 	.byte	7
   2413 0D                 7958 	.byte	13
   2414 FF                 7959 	.byte	-1
   2415 08                 7960 	.byte	8
   2416 FA                 7961 	.byte	-6
   2417 FF                 7962 	.byte	-1
   2418 F9                 7963 	.byte	-7
   2419 F3                 7964 	.byte	-13
   241A FF                 7965 	.byte	-1
   241B F8                 7966 	.byte	-8
   241C 06                 7967 	.byte	6
   241D 01                 7968 	.byte	1
                           7969 	.globl	_height2FallingRight8
   241E                    7970 _height2FallingRight8:
   241E 00                 7971 	.byte	0
   241F 0D                 7972 	.byte	13
   2420 07                 7973 	.byte	7
   2421 FF                 7974 	.byte	-1
   2422 F6                 7975 	.byte	-10
   2423 07                 7976 	.byte	7
   2424 FF                 7977 	.byte	-1
   2425 08                 7978 	.byte	8
   2426 FA                 7979 	.byte	-6
   2427 FF                 7980 	.byte	-1
   2428 0A                 7981 	.byte	10
   2429 F9                 7982 	.byte	-7
   242A FF                 7983 	.byte	-1
   242B F8                 7984 	.byte	-8
   242C 06                 7985 	.byte	6
   242D FF                 7986 	.byte	-1
   242E 12                 7987 	.byte	18
   242F 18                 7988 	.byte	24
   2430 00                 7989 	.byte	0
   2431 E4                 7990 	.byte	-28
   2432 EF                 7991 	.byte	-17
   2433 FF                 7992 	.byte	-1
   2434 12                 7993 	.byte	18
   2435 18                 7994 	.byte	24
   2436 00                 7995 	.byte	0
   2437 F6                 7996 	.byte	-10
   2438 E2                 7997 	.byte	-30
   2439 FF                 7998 	.byte	-1
   243A 12                 7999 	.byte	18
   243B 18                 8000 	.byte	24
   243C 00                 8001 	.byte	0
   243D F8                 8002 	.byte	-8
   243E E1                 8003 	.byte	-31
   243F FF                 8004 	.byte	-1
   2440 12                 8005 	.byte	18
   2441 18                 8006 	.byte	24
   2442 00                 8007 	.byte	0
   2443 F8                 8008 	.byte	-8
   2444 06                 8009 	.byte	6
   2445 FF                 8010 	.byte	-1
   2446 F6                 8011 	.byte	-10
   2447 07                 8012 	.byte	7
   2448 FF                 8013 	.byte	-1
   2449 08                 8014 	.byte	8
   244A FA                 8015 	.byte	-6
   244B FF                 8016 	.byte	-1
   244C 0A                 8017 	.byte	10
   244D F9                 8018 	.byte	-7
   244E FF                 8019 	.byte	-1
   244F F8                 8020 	.byte	-8
   2450 06                 8021 	.byte	6
   2451 01                 8022 	.byte	1
                           8023 	.globl	_height2RisingLeft8
   2452                    8024 _height2RisingLeft8:
   2452 00                 8025 	.byte	0
   2453 02                 8026 	.byte	2
   2454 F4                 8027 	.byte	-12
   2455 FF                 8028 	.byte	-1
   2456 FE                 8029 	.byte	-2
   2457 0C                 8030 	.byte	12
   2458 FF                 8031 	.byte	-1
   2459 08                 8032 	.byte	8
   245A FB                 8033 	.byte	-5
   245B FF                 8034 	.byte	-1
   245C 02                 8035 	.byte	2
   245D F3                 8036 	.byte	-13
   245E FF                 8037 	.byte	-1
   245F F8                 8038 	.byte	-8
   2460 06                 8039 	.byte	6
   2461 FF                 8040 	.byte	-1
   2462 1B                 8041 	.byte	27
   2463 0B                 8042 	.byte	11
   2464 00                 8043 	.byte	0
   2465 E3                 8044 	.byte	-29
   2466 01                 8045 	.byte	1
   2467 FF                 8046 	.byte	-1
   2468 1A                 8047 	.byte	26
   2469 0B                 8048 	.byte	11
   246A 00                 8049 	.byte	0
   246B EE                 8050 	.byte	-18
   246C F0                 8051 	.byte	-16
   246D FF                 8052 	.byte	-1
   246E 1A                 8053 	.byte	26
   246F 0A                 8054 	.byte	10
   2470 00                 8055 	.byte	0
   2471 E8                 8056 	.byte	-24
   2472 E9                 8057 	.byte	-23
   2473 FF                 8058 	.byte	-1
   2474 1B                 8059 	.byte	27
   2475 0B                 8060 	.byte	11
   2476 00                 8061 	.byte	0
   2477 F8                 8062 	.byte	-8
   2478 06                 8063 	.byte	6
   2479 FF                 8064 	.byte	-1
   247A FD                 8065 	.byte	-3
   247B 0C                 8066 	.byte	12
   247C FF                 8067 	.byte	-1
   247D 08                 8068 	.byte	8
   247E FA                 8069 	.byte	-6
   247F FF                 8070 	.byte	-1
   2480 03                 8071 	.byte	3
   2481 F4                 8072 	.byte	-12
   2482 FF                 8073 	.byte	-1
   2483 F8                 8074 	.byte	-8
   2484 06                 8075 	.byte	6
   2485 01                 8076 	.byte	1
                           8077 	.globl	_height2FallingBack8
   2486                    8078 _height2FallingBack8:
   2486 00                 8079 	.byte	0
   2487 0F                 8080 	.byte	15
   2488 FE                 8081 	.byte	-2
   2489 FF                 8082 	.byte	-1
   248A 03                 8083 	.byte	3
   248B 0D                 8084 	.byte	13
   248C FF                 8085 	.byte	-1
   248D F9                 8086 	.byte	-7
   248E FD                 8087 	.byte	-3
   248F FF                 8088 	.byte	-1
   2490 FD                 8089 	.byte	-3
   2491 F3                 8090 	.byte	-13
   2492 FF                 8091 	.byte	-1
   2493 07                 8092 	.byte	7
   2494 03                 8093 	.byte	3
   2495 FF                 8094 	.byte	-1
   2496 1B                 8095 	.byte	27
   2497 F6                 8096 	.byte	-10
   2498 00                 8097 	.byte	0
   2499 E8                 8098 	.byte	-24
   249A 17                 8099 	.byte	23
   249B FF                 8100 	.byte	-1
   249C 1B                 8101 	.byte	27
   249D F6                 8102 	.byte	-10
   249E 00                 8103 	.byte	0
   249F DE                 8104 	.byte	-34
   24A0 07                 8105 	.byte	7
   24A1 FF                 8106 	.byte	-1
   24A2 1B                 8107 	.byte	27
   24A3 F7                 8108 	.byte	-9
   24A4 00                 8109 	.byte	0
   24A5 E2                 8110 	.byte	-30
   24A6 FC                 8111 	.byte	-4
   24A7 FF                 8112 	.byte	-1
   24A8 1B                 8113 	.byte	27
   24A9 F6                 8114 	.byte	-10
   24AA 00                 8115 	.byte	0
   24AB 07                 8116 	.byte	7
   24AC 03                 8117 	.byte	3
   24AD FF                 8118 	.byte	-1
   24AE 03                 8119 	.byte	3
   24AF 0D                 8120 	.byte	13
   24B0 FF                 8121 	.byte	-1
   24B1 F9                 8122 	.byte	-7
   24B2 FE                 8123 	.byte	-2
   24B3 FF                 8124 	.byte	-1
   24B4 FD                 8125 	.byte	-3
   24B5 F2                 8126 	.byte	-14
   24B6 FF                 8127 	.byte	-1
   24B7 07                 8128 	.byte	7
   24B8 03                 8129 	.byte	3
   24B9 01                 8130 	.byte	1
                           8131 	.globl	_height2RisingFront8
   24BA                    8132 _height2RisingFront8:
   24BA 00                 8133 	.byte	0
   24BB FF                 8134 	.byte	-1
   24BC 06                 8135 	.byte	6
   24BD FF                 8136 	.byte	-1
   24BE 02                 8137 	.byte	2
   24BF 0E                 8138 	.byte	14
   24C0 FF                 8139 	.byte	-1
   24C1 02                 8140 	.byte	2
   24C2 FA                 8141 	.byte	-6
   24C3 FF                 8142 	.byte	-1
   24C4 FD                 8143 	.byte	-3
   24C5 F2                 8144 	.byte	-14
   24C6 FF                 8145 	.byte	-1
   24C7 FF                 8146 	.byte	-1
   24C8 06                 8147 	.byte	6
   24C9 FF                 8148 	.byte	-1
   24CA 1D                 8149 	.byte	29
   24CB FB                 8150 	.byte	-5
   24CC 00                 8151 	.byte	0
   24CD E5                 8152 	.byte	-27
   24CE 13                 8153 	.byte	19
   24CF FF                 8154 	.byte	-1
   24D0 1E                 8155 	.byte	30
   24D1 FB                 8156 	.byte	-5
   24D2 00                 8157 	.byte	0
   24D3 E4                 8158 	.byte	-28
   24D4 FF                 8159 	.byte	-1
   24D5 FF                 8160 	.byte	-1
   24D6 1E                 8161 	.byte	30
   24D7 FB                 8162 	.byte	-5
   24D8 00                 8163 	.byte	0
   24D9 DF                 8164 	.byte	-33
   24DA F7                 8165 	.byte	-9
   24DB FF                 8166 	.byte	-1
   24DC 1E                 8167 	.byte	30
   24DD FC                 8168 	.byte	-4
   24DE 00                 8169 	.byte	0
   24DF FE                 8170 	.byte	-2
   24E0 05                 8171 	.byte	5
   24E1 FF                 8172 	.byte	-1
   24E2 03                 8173 	.byte	3
   24E3 0E                 8174 	.byte	14
   24E4 FF                 8175 	.byte	-1
   24E5 02                 8176 	.byte	2
   24E6 FA                 8177 	.byte	-6
   24E7 FF                 8178 	.byte	-1
   24E8 FD                 8179 	.byte	-3
   24E9 F3                 8180 	.byte	-13
   24EA FF                 8181 	.byte	-1
   24EB FE                 8182 	.byte	-2
   24EC 05                 8183 	.byte	5
   24ED 01                 8184 	.byte	1
                           8185 	.globl	_height2FallingFront8
   24EE                    8186 _height2FallingFront8:
   24EE FF                 8187 	.byte	-1
   24EF 03                 8188 	.byte	3
   24F0 0E                 8189 	.byte	14
   24F1 FF                 8190 	.byte	-1
   24F2 0F                 8191 	.byte	15
   24F3 FD                 8192 	.byte	-3
   24F4 FF                 8193 	.byte	-1
   24F5 FD                 8194 	.byte	-3
   24F6 F3                 8195 	.byte	-13
   24F7 FF                 8196 	.byte	-1
   24F8 F1                 8197 	.byte	-15
   24F9 02                 8198 	.byte	2
   24FA FF                 8199 	.byte	-1
   24FB 00                 8200 	.byte	0
   24FC 0A                 8201 	.byte	10
   24FD 00                 8202 	.byte	0
   24FE 03                 8203 	.byte	3
   24FF 04                 8204 	.byte	4
   2500 FF                 8205 	.byte	-1
   2501 FF                 8206 	.byte	-1
   2502 0A                 8207 	.byte	10
   2503 00                 8208 	.byte	0
   2504 10                 8209 	.byte	16
   2505 F3                 8210 	.byte	-13
   2506 FF                 8211 	.byte	-1
   2507 FF                 8212 	.byte	-1
   2508 0A                 8213 	.byte	10
   2509 00                 8214 	.byte	0
   250A FE                 8215 	.byte	-2
   250B E9                 8216 	.byte	-23
   250C FF                 8217 	.byte	-1
   250D FF                 8218 	.byte	-1
   250E 09                 8219 	.byte	9
   250F 00                 8220 	.byte	0
   2510 F2                 8221 	.byte	-14
   2511 03                 8222 	.byte	3
   2512 FF                 8223 	.byte	-1
   2513 02                 8224 	.byte	2
   2514 0E                 8225 	.byte	14
   2515 FF                 8226 	.byte	-1
   2516 0F                 8227 	.byte	15
   2517 FD                 8228 	.byte	-3
   2518 FF                 8229 	.byte	-1
   2519 FD                 8230 	.byte	-3
   251A F2                 8231 	.byte	-14
   251B FF                 8232 	.byte	-1
   251C F2                 8233 	.byte	-14
   251D 03                 8234 	.byte	3
   251E 01                 8235 	.byte	1
                           8236 	.globl	_height2RisingBack8
   251F                    8237 _height2RisingBack8:
   251F 00                 8238 	.byte	0
   2520 10                 8239 	.byte	16
   2521 F5                 8240 	.byte	-11
   2522 FF                 8241 	.byte	-1
   2523 03                 8242 	.byte	3
   2524 0D                 8243 	.byte	13
   2525 FF                 8244 	.byte	-1
   2526 0C                 8245 	.byte	12
   2527 FB                 8246 	.byte	-5
   2528 FF                 8247 	.byte	-1
   2529 FD                 8248 	.byte	-3
   252A F2                 8249 	.byte	-14
   252B FF                 8250 	.byte	-1
   252C F4                 8251 	.byte	-12
   252D 06                 8252 	.byte	6
   252E FF                 8253 	.byte	-1
   252F 12                 8254 	.byte	18
   2530 05                 8255 	.byte	5
   2531 00                 8256 	.byte	0
   2532 F1                 8257 	.byte	-15
   2533 08                 8258 	.byte	8
   2534 FF                 8259 	.byte	-1
   2535 12                 8260 	.byte	18
   2536 05                 8261 	.byte	5
   2537 00                 8262 	.byte	0
   2538 FA                 8263 	.byte	-6
   2539 F6                 8264 	.byte	-10
   253A FF                 8265 	.byte	-1
   253B 12                 8266 	.byte	18
   253C 04                 8267 	.byte	4
   253D 00                 8268 	.byte	0
   253E EB                 8269 	.byte	-21
   253F EE                 8270 	.byte	-18
   2540 FF                 8271 	.byte	-1
   2541 12                 8272 	.byte	18
   2542 05                 8273 	.byte	5
   2543 00                 8274 	.byte	0
   2544 F4                 8275 	.byte	-12
   2545 06                 8276 	.byte	6
   2546 FF                 8277 	.byte	-1
   2547 03                 8278 	.byte	3
   2548 0D                 8279 	.byte	13
   2549 FF                 8280 	.byte	-1
   254A 0C                 8281 	.byte	12
   254B FA                 8282 	.byte	-6
   254C FF                 8283 	.byte	-1
   254D FD                 8284 	.byte	-3
   254E F3                 8285 	.byte	-13
   254F FF                 8286 	.byte	-1
   2550 F4                 8287 	.byte	-12
   2551 06                 8288 	.byte	6
   2552 01                 8289 	.byte	1
                           8290 	.globl	_depth2RollingLeft8
   2553                    8291 _depth2RollingLeft8:
   2553 FF                 8292 	.byte	-1
   2554 0D                 8293 	.byte	13
   2555 07                 8294 	.byte	7
   2556 FF                 8295 	.byte	-1
   2557 10                 8296 	.byte	16
   2558 F5                 8297 	.byte	-11
   2559 FF                 8298 	.byte	-1
   255A F3                 8299 	.byte	-13
   255B F9                 8300 	.byte	-7
   255C FF                 8301 	.byte	-1
   255D F0                 8302 	.byte	-16
   255E 0B                 8303 	.byte	11
   255F FF                 8304 	.byte	-1
   2560 04                 8305 	.byte	4
   2561 F5                 8306 	.byte	-11
   2562 00                 8307 	.byte	0
   2563 09                 8308 	.byte	9
   2564 12                 8309 	.byte	18
   2565 FF                 8310 	.byte	-1
   2566 04                 8311 	.byte	4
   2567 F5                 8312 	.byte	-11
   2568 00                 8313 	.byte	0
   2569 0C                 8314 	.byte	12
   256A 00                 8315 	.byte	0
   256B FF                 8316 	.byte	-1
   256C 04                 8317 	.byte	4
   256D F4                 8318 	.byte	-12
   256E 00                 8319 	.byte	0
   256F EF                 8320 	.byte	-17
   2570 05                 8321 	.byte	5
   2571 FF                 8322 	.byte	-1
   2572 04                 8323 	.byte	4
   2573 F4                 8324 	.byte	-12
   2574 00                 8325 	.byte	0
   2575 F0                 8326 	.byte	-16
   2576 0C                 8327 	.byte	12
   2577 FF                 8328 	.byte	-1
   2578 0D                 8329 	.byte	13
   2579 07                 8330 	.byte	7
   257A FF                 8331 	.byte	-1
   257B 10                 8332 	.byte	16
   257C F4                 8333 	.byte	-12
   257D FF                 8334 	.byte	-1
   257E F3                 8335 	.byte	-13
   257F F9                 8336 	.byte	-7
   2580 FF                 8337 	.byte	-1
   2581 F0                 8338 	.byte	-16
   2582 0C                 8339 	.byte	12
   2583 01                 8340 	.byte	1
                           8341 	.globl	_depth2RollingRight8
   2584                    8342 _depth2RollingRight8:
   2584 00                 8343 	.byte	0
   2585 0D                 8344 	.byte	13
   2586 07                 8345 	.byte	7
   2587 FF                 8346 	.byte	-1
   2588 F6                 8347 	.byte	-10
   2589 07                 8348 	.byte	7
   258A FF                 8349 	.byte	-1
   258B 10                 8350 	.byte	16
   258C F4                 8351 	.byte	-12
   258D FF                 8352 	.byte	-1
   258E 0A                 8353 	.byte	10
   258F FA                 8354 	.byte	-6
   2590 FF                 8355 	.byte	-1
   2591 F0                 8356 	.byte	-16
   2592 0B                 8357 	.byte	11
   2593 FF                 8358 	.byte	-1
   2594 09                 8359 	.byte	9
   2595 0C                 8360 	.byte	12
   2596 00                 8361 	.byte	0
   2597 ED                 8362 	.byte	-19
   2598 FB                 8363 	.byte	-5
   2599 FF                 8364 	.byte	-1
   259A 09                 8365 	.byte	9
   259B 0C                 8366 	.byte	12
   259C 00                 8367 	.byte	0
   259D 07                 8368 	.byte	7
   259E E8                 8369 	.byte	-24
   259F FF                 8370 	.byte	-1
   25A0 09                 8371 	.byte	9
   25A1 0C                 8372 	.byte	12
   25A2 00                 8373 	.byte	0
   25A3 01                 8374 	.byte	1
   25A4 EE                 8375 	.byte	-18
   25A5 FF                 8376 	.byte	-1
   25A6 09                 8377 	.byte	9
   25A7 0B                 8378 	.byte	11
   25A8 00                 8379 	.byte	0
   25A9 F0                 8380 	.byte	-16
   25AA 0C                 8381 	.byte	12
   25AB FF                 8382 	.byte	-1
   25AC F6                 8383 	.byte	-10
   25AD 07                 8384 	.byte	7
   25AE FF                 8385 	.byte	-1
   25AF 10                 8386 	.byte	16
   25B0 F4                 8387 	.byte	-12
   25B1 FF                 8388 	.byte	-1
   25B2 0A                 8389 	.byte	10
   25B3 F9                 8390 	.byte	-7
   25B4 FF                 8391 	.byte	-1
   25B5 F0                 8392 	.byte	-16
   25B6 0C                 8393 	.byte	12
   25B7 01                 8394 	.byte	1
                           8395 	.globl	_width2RollingFront8
   25B8                    8396 _width2RollingFront8:
   25B8 FF                 8397 	.byte	-1
   25B9 06                 8398 	.byte	6
   25BA 1C                 8399 	.byte	28
   25BB FF                 8400 	.byte	-1
   25BC 0F                 8401 	.byte	15
   25BD FD                 8402 	.byte	-3
   25BE FF                 8403 	.byte	-1
   25BF FA                 8404 	.byte	-6
   25C0 E5                 8405 	.byte	-27
   25C1 FF                 8406 	.byte	-1
   25C2 F1                 8407 	.byte	-15
   25C3 02                 8408 	.byte	2
   25C4 FF                 8409 	.byte	-1
   25C5 00                 8410 	.byte	0
   25C6 05                 8411 	.byte	5
   25C7 00                 8412 	.byte	0
   25C8 06                 8413 	.byte	6
   25C9 17                 8414 	.byte	23
   25CA FF                 8415 	.byte	-1
   25CB 00                 8416 	.byte	0
   25CC 05                 8417 	.byte	5
   25CD 00                 8418 	.byte	0
   25CE 0F                 8419 	.byte	15
   25CF F8                 8420 	.byte	-8
   25D0 FF                 8421 	.byte	-1
   25D1 00                 8422 	.byte	0
   25D2 05                 8423 	.byte	5
   25D3 00                 8424 	.byte	0
   25D4 FA                 8425 	.byte	-6
   25D5 E0                 8426 	.byte	-32
   25D6 FF                 8427 	.byte	-1
   25D7 00                 8428 	.byte	0
   25D8 04                 8429 	.byte	4
   25D9 00                 8430 	.byte	0
   25DA F1                 8431 	.byte	-15
   25DB 03                 8432 	.byte	3
   25DC FF                 8433 	.byte	-1
   25DD 06                 8434 	.byte	6
   25DE 1C                 8435 	.byte	28
   25DF FF                 8436 	.byte	-1
   25E0 0F                 8437 	.byte	15
   25E1 FD                 8438 	.byte	-3
   25E2 FF                 8439 	.byte	-1
   25E3 FA                 8440 	.byte	-6
   25E4 E4                 8441 	.byte	-28
   25E5 FF                 8442 	.byte	-1
   25E6 F1                 8443 	.byte	-15
   25E7 03                 8444 	.byte	3
   25E8 01                 8445 	.byte	1
                           8446 	.globl	_width2RollingBack8
   25E9                    8447 _width2RollingBack8:
   25E9 00                 8448 	.byte	0
   25EA 0F                 8449 	.byte	15
   25EB FE                 8450 	.byte	-2
   25EC FF                 8451 	.byte	-1
   25ED 06                 8452 	.byte	6
   25EE 1B                 8453 	.byte	27
   25EF FF                 8454 	.byte	-1
   25F0 F9                 8455 	.byte	-7
   25F1 FD                 8456 	.byte	-3
   25F2 FF                 8457 	.byte	-1
   25F3 FA                 8458 	.byte	-6
   25F4 E5                 8459 	.byte	-27
   25F5 FF                 8460 	.byte	-1
   25F6 07                 8461 	.byte	7
   25F7 03                 8462 	.byte	3
   25F8 FF                 8463 	.byte	-1
   25F9 0E                 8464 	.byte	14
   25FA FB                 8465 	.byte	-5
   25FB 00                 8466 	.byte	0
   25FC F8                 8467 	.byte	-8
   25FD 20                 8468 	.byte	32
   25FE FF                 8469 	.byte	-1
   25FF 0E                 8470 	.byte	14
   2600 FB                 8471 	.byte	-5
   2601 00                 8472 	.byte	0
   2602 EB                 8473 	.byte	-21
   2603 02                 8474 	.byte	2
   2604 FF                 8475 	.byte	-1
   2605 0D                 8476 	.byte	13
   2606 FB                 8477 	.byte	-5
   2607 00                 8478 	.byte	0
   2608 ED                 8479 	.byte	-19
   2609 EA                 8480 	.byte	-22
   260A FF                 8481 	.byte	-1
   260B 0D                 8482 	.byte	13
   260C FB                 8483 	.byte	-5
   260D 00                 8484 	.byte	0
   260E 08                 8485 	.byte	8
   260F 03                 8486 	.byte	3
   2610 FF                 8487 	.byte	-1
   2611 06                 8488 	.byte	6
   2612 1B                 8489 	.byte	27
   2613 FF                 8490 	.byte	-1
   2614 F8                 8491 	.byte	-8
   2615 FD                 8492 	.byte	-3
   2616 FF                 8493 	.byte	-1
   2617 FA                 8494 	.byte	-6
   2618 E5                 8495 	.byte	-27
   2619 FF                 8496 	.byte	-1
   261A 08                 8497 	.byte	8
   261B 03                 8498 	.byte	3
   261C 01                 8499 	.byte	1
                           8500 	.globl	_height1FallingLeft8
   261D                    8501 _height1FallingLeft8:
   261D FF                 8502 	.byte	-1
   261E 0D                 8503 	.byte	13
   261F 07                 8504 	.byte	7
   2620 FF                 8505 	.byte	-1
   2621 08                 8506 	.byte	8
   2622 FA                 8507 	.byte	-6
   2623 FF                 8508 	.byte	-1
   2624 F3                 8509 	.byte	-13
   2625 FA                 8510 	.byte	-6
   2626 FF                 8511 	.byte	-1
   2627 F8                 8512 	.byte	-8
   2628 05                 8513 	.byte	5
   2629 FF                 8514 	.byte	-1
   262A 04                 8515 	.byte	4
   262B F5                 8516 	.byte	-11
   262C 00                 8517 	.byte	0
   262D 09                 8518 	.byte	9
   262E 12                 8519 	.byte	18
   262F FF                 8520 	.byte	-1
   2630 04                 8521 	.byte	4
   2631 F5                 8522 	.byte	-11
   2632 00                 8523 	.byte	0
   2633 04                 8524 	.byte	4
   2634 05                 8525 	.byte	5
   2635 FF                 8526 	.byte	-1
   2636 04                 8527 	.byte	4
   2637 F5                 8528 	.byte	-11
   2638 00                 8529 	.byte	0
   2639 EF                 8530 	.byte	-17
   263A 05                 8531 	.byte	5
   263B FF                 8532 	.byte	-1
   263C 04                 8533 	.byte	4
   263D F4                 8534 	.byte	-12
   263E 00                 8535 	.byte	0
   263F F8                 8536 	.byte	-8
   2640 06                 8537 	.byte	6
   2641 FF                 8538 	.byte	-1
   2642 0D                 8539 	.byte	13
   2643 07                 8540 	.byte	7
   2644 FF                 8541 	.byte	-1
   2645 08                 8542 	.byte	8
   2646 FA                 8543 	.byte	-6
   2647 FF                 8544 	.byte	-1
   2648 F3                 8545 	.byte	-13
   2649 F9                 8546 	.byte	-7
   264A FF                 8547 	.byte	-1
   264B F8                 8548 	.byte	-8
   264C 06                 8549 	.byte	6
   264D 01                 8550 	.byte	1
                           8551 	.globl	_height1FallingRight8
   264E                    8552 _height1FallingRight8:
   264E 00                 8553 	.byte	0
   264F 0D                 8554 	.byte	13
   2650 07                 8555 	.byte	7
   2651 FF                 8556 	.byte	-1
   2652 F6                 8557 	.byte	-10
   2653 07                 8558 	.byte	7
   2654 FF                 8559 	.byte	-1
   2655 08                 8560 	.byte	8
   2656 FA                 8561 	.byte	-6
   2657 FF                 8562 	.byte	-1
   2658 0A                 8563 	.byte	10
   2659 F9                 8564 	.byte	-7
   265A FF                 8565 	.byte	-1
   265B F8                 8566 	.byte	-8
   265C 06                 8567 	.byte	6
   265D FF                 8568 	.byte	-1
   265E 09                 8569 	.byte	9
   265F 0C                 8570 	.byte	12
   2660 00                 8571 	.byte	0
   2661 ED                 8572 	.byte	-19
   2662 FB                 8573 	.byte	-5
   2663 FF                 8574 	.byte	-1
   2664 09                 8575 	.byte	9
   2665 0C                 8576 	.byte	12
   2666 00                 8577 	.byte	0
   2667 FF                 8578 	.byte	-1
   2668 EE                 8579 	.byte	-18
   2669 FF                 8580 	.byte	-1
   266A 09                 8581 	.byte	9
   266B 0C                 8582 	.byte	12
   266C 00                 8583 	.byte	0
   266D 01                 8584 	.byte	1
   266E ED                 8585 	.byte	-19
   266F FF                 8586 	.byte	-1
   2670 09                 8587 	.byte	9
   2671 0C                 8588 	.byte	12
   2672 00                 8589 	.byte	0
   2673 F8                 8590 	.byte	-8
   2674 06                 8591 	.byte	6
   2675 FF                 8592 	.byte	-1
   2676 F6                 8593 	.byte	-10
   2677 07                 8594 	.byte	7
   2678 FF                 8595 	.byte	-1
   2679 08                 8596 	.byte	8
   267A FA                 8597 	.byte	-6
   267B FF                 8598 	.byte	-1
   267C 0A                 8599 	.byte	10
   267D F9                 8600 	.byte	-7
   267E FF                 8601 	.byte	-1
   267F F8                 8602 	.byte	-8
   2680 06                 8603 	.byte	6
   2681 01                 8604 	.byte	1
                           8605 	.globl	_height1FallingBack8
   2682                    8606 _height1FallingBack8:
   2682 00                 8607 	.byte	0
   2683 0F                 8608 	.byte	15
   2684 FE                 8609 	.byte	-2
   2685 FF                 8610 	.byte	-1
   2686 03                 8611 	.byte	3
   2687 0D                 8612 	.byte	13
   2688 FF                 8613 	.byte	-1
   2689 F9                 8614 	.byte	-7
   268A FD                 8615 	.byte	-3
   268B FF                 8616 	.byte	-1
   268C FD                 8617 	.byte	-3
   268D F3                 8618 	.byte	-13
   268E FF                 8619 	.byte	-1
   268F 07                 8620 	.byte	7
   2690 03                 8621 	.byte	3
   2691 FF                 8622 	.byte	-1
   2692 0E                 8623 	.byte	14
   2693 FB                 8624 	.byte	-5
   2694 00                 8625 	.byte	0
   2695 F5                 8626 	.byte	-11
   2696 12                 8627 	.byte	18
   2697 FF                 8628 	.byte	-1
   2698 0E                 8629 	.byte	14
   2699 FB                 8630 	.byte	-5
   269A 00                 8631 	.byte	0
   269B EB                 8632 	.byte	-21
   269C 02                 8633 	.byte	2
   269D FF                 8634 	.byte	-1
   269E 0D                 8635 	.byte	13
   269F FB                 8636 	.byte	-5
   26A0 00                 8637 	.byte	0
   26A1 F0                 8638 	.byte	-16
   26A2 F8                 8639 	.byte	-8
   26A3 FF                 8640 	.byte	-1
   26A4 0D                 8641 	.byte	13
   26A5 FB                 8642 	.byte	-5
   26A6 00                 8643 	.byte	0
   26A7 08                 8644 	.byte	8
   26A8 03                 8645 	.byte	3
   26A9 FF                 8646 	.byte	-1
   26AA 03                 8647 	.byte	3
   26AB 0D                 8648 	.byte	13
   26AC FF                 8649 	.byte	-1
   26AD F8                 8650 	.byte	-8
   26AE FD                 8651 	.byte	-3
   26AF FF                 8652 	.byte	-1
   26B0 FD                 8653 	.byte	-3
   26B1 F3                 8654 	.byte	-13
   26B2 FF                 8655 	.byte	-1
   26B3 08                 8656 	.byte	8
   26B4 03                 8657 	.byte	3
   26B5 01                 8658 	.byte	1
                           8659 	.globl	_height1FallingFront8
   26B6                    8660 _height1FallingFront8:
   26B6 FF                 8661 	.byte	-1
   26B7 03                 8662 	.byte	3
   26B8 0E                 8663 	.byte	14
   26B9 FF                 8664 	.byte	-1
   26BA 0F                 8665 	.byte	15
   26BB FD                 8666 	.byte	-3
   26BC FF                 8667 	.byte	-1
   26BD FD                 8668 	.byte	-3
   26BE F3                 8669 	.byte	-13
   26BF FF                 8670 	.byte	-1
   26C0 F1                 8671 	.byte	-15
   26C1 02                 8672 	.byte	2
   26C2 FF                 8673 	.byte	-1
   26C3 00                 8674 	.byte	0
   26C4 05                 8675 	.byte	5
   26C5 00                 8676 	.byte	0
   26C6 03                 8677 	.byte	3
   26C7 09                 8678 	.byte	9
   26C8 FF                 8679 	.byte	-1
   26C9 00                 8680 	.byte	0
   26CA 05                 8681 	.byte	5
   26CB 00                 8682 	.byte	0
   26CC 0F                 8683 	.byte	15
   26CD F8                 8684 	.byte	-8
   26CE FF                 8685 	.byte	-1
   26CF 00                 8686 	.byte	0
   26D0 05                 8687 	.byte	5
   26D1 00                 8688 	.byte	0
   26D2 FD                 8689 	.byte	-3
   26D3 EE                 8690 	.byte	-18
   26D4 FF                 8691 	.byte	-1
   26D5 00                 8692 	.byte	0
   26D6 04                 8693 	.byte	4
   26D7 00                 8694 	.byte	0
   26D8 F1                 8695 	.byte	-15
   26D9 03                 8696 	.byte	3
   26DA FF                 8697 	.byte	-1
   26DB 03                 8698 	.byte	3
   26DC 0E                 8699 	.byte	14
   26DD FF                 8700 	.byte	-1
   26DE 0F                 8701 	.byte	15
   26DF FD                 8702 	.byte	-3
   26E0 FF                 8703 	.byte	-1
   26E1 FD                 8704 	.byte	-3
   26E2 F2                 8705 	.byte	-14
   26E3 FF                 8706 	.byte	-1
   26E4 F1                 8707 	.byte	-15
   26E5 03                 8708 	.byte	3
   26E6 01                 8709 	.byte	1
                           8710 	.globl	_height2FallingLeft9
   26E7                    8711 _height2FallingLeft9:
   26E7 FF                 8712 	.byte	-1
   26E8 0D                 8713 	.byte	13
   26E9 05                 8714 	.byte	5
   26EA FF                 8715 	.byte	-1
   26EB 08                 8716 	.byte	8
   26EC FB                 8717 	.byte	-5
   26ED FF                 8718 	.byte	-1
   26EE F3                 8719 	.byte	-13
   26EF FB                 8720 	.byte	-5
   26F0 FF                 8721 	.byte	-1
   26F1 F8                 8722 	.byte	-8
   26F2 05                 8723 	.byte	5
   26F3 FF                 8724 	.byte	-1
   26F4 04                 8725 	.byte	4
   26F5 E7                 8726 	.byte	-25
   26F6 00                 8727 	.byte	0
   26F7 09                 8728 	.byte	9
   26F8 1E                 8729 	.byte	30
   26F9 FF                 8730 	.byte	-1
   26FA 05                 8731 	.byte	5
   26FB E7                 8732 	.byte	-25
   26FC 00                 8733 	.byte	0
   26FD 03                 8734 	.byte	3
   26FE 14                 8735 	.byte	20
   26FF FF                 8736 	.byte	-1
   2700 05                 8737 	.byte	5
   2701 E6                 8738 	.byte	-26
   2702 00                 8739 	.byte	0
   2703 EE                 8740 	.byte	-18
   2704 15                 8741 	.byte	21
   2705 FF                 8742 	.byte	-1
   2706 04                 8743 	.byte	4
   2707 E6                 8744 	.byte	-26
   2708 00                 8745 	.byte	0
   2709 F8                 8746 	.byte	-8
   270A 06                 8747 	.byte	6
   270B FF                 8748 	.byte	-1
   270C 0E                 8749 	.byte	14
   270D 05                 8750 	.byte	5
   270E FF                 8751 	.byte	-1
   270F 08                 8752 	.byte	8
   2710 FA                 8753 	.byte	-6
   2711 FF                 8754 	.byte	-1
   2712 F2                 8755 	.byte	-14
   2713 FB                 8756 	.byte	-5
   2714 FF                 8757 	.byte	-1
   2715 F8                 8758 	.byte	-8
   2716 06                 8759 	.byte	6
   2717 01                 8760 	.byte	1
                           8761 	.globl	_height2RisingRight9
   2718                    8762 _height2RisingRight9:
   2718 00                 8763 	.byte	0
   2719 06                 8764 	.byte	6
   271A 1C                 8765 	.byte	28
   271B FF                 8766 	.byte	-1
   271C 06                 8767 	.byte	6
   271D 0E                 8768 	.byte	14
   271E FF                 8769 	.byte	-1
   271F 08                 8770 	.byte	8
   2720 FA                 8771 	.byte	-6
   2721 FF                 8772 	.byte	-1
   2722 FA                 8773 	.byte	-6
   2723 F2                 8774 	.byte	-14
   2724 FF                 8775 	.byte	-1
   2725 F8                 8776 	.byte	-8
   2726 06                 8777 	.byte	6
   2727 FF                 8778 	.byte	-1
   2728 18                 8779 	.byte	24
   2729 F9                 8780 	.byte	-7
   272A 00                 8781 	.byte	0
   272B EE                 8782 	.byte	-18
   272C 15                 8783 	.byte	21
   272D FF                 8784 	.byte	-1
   272E 18                 8785 	.byte	24
   272F F8                 8786 	.byte	-8
   2730 00                 8787 	.byte	0
   2731 F0                 8788 	.byte	-16
   2732 02                 8789 	.byte	2
   2733 FF                 8790 	.byte	-1
   2734 18                 8791 	.byte	24
   2735 F8                 8792 	.byte	-8
   2736 00                 8793 	.byte	0
   2737 E2                 8794 	.byte	-30
   2738 FA                 8795 	.byte	-6
   2739 FF                 8796 	.byte	-1
   273A 18                 8797 	.byte	24
   273B F9                 8798 	.byte	-7
   273C 00                 8799 	.byte	0
   273D F8                 8800 	.byte	-8
   273E 06                 8801 	.byte	6
   273F FF                 8802 	.byte	-1
   2740 06                 8803 	.byte	6
   2741 0D                 8804 	.byte	13
   2742 FF                 8805 	.byte	-1
   2743 08                 8806 	.byte	8
   2744 FA                 8807 	.byte	-6
   2745 FF                 8808 	.byte	-1
   2746 FA                 8809 	.byte	-6
   2747 F3                 8810 	.byte	-13
   2748 FF                 8811 	.byte	-1
   2749 F8                 8812 	.byte	-8
   274A 06                 8813 	.byte	6
   274B 01                 8814 	.byte	1
                           8815 	.globl	_height2FallingRight9
   274C                    8816 _height2FallingRight9:
   274C 00                 8817 	.byte	0
   274D 0E                 8818 	.byte	14
   274E 09                 8819 	.byte	9
   274F FF                 8820 	.byte	-1
   2750 F5                 8821 	.byte	-11
   2751 05                 8822 	.byte	5
   2752 FF                 8823 	.byte	-1
   2753 08                 8824 	.byte	8
   2754 FA                 8825 	.byte	-6
   2755 FF                 8826 	.byte	-1
   2756 0B                 8827 	.byte	11
   2757 FB                 8828 	.byte	-5
   2758 FF                 8829 	.byte	-1
   2759 F8                 8830 	.byte	-8
   275A 06                 8831 	.byte	6
   275B FF                 8832 	.byte	-1
   275C 0F                 8833 	.byte	15
   275D 1A                 8834 	.byte	26
   275E 00                 8835 	.byte	0
   275F E6                 8836 	.byte	-26
   2760 EB                 8837 	.byte	-21
   2761 FF                 8838 	.byte	-1
   2762 0F                 8839 	.byte	15
   2763 1A                 8840 	.byte	26
   2764 00                 8841 	.byte	0
   2765 F9                 8842 	.byte	-7
   2766 E0                 8843 	.byte	-32
   2767 FF                 8844 	.byte	-1
   2768 0F                 8845 	.byte	15
   2769 1A                 8846 	.byte	26
   276A 00                 8847 	.byte	0
   276B FC                 8848 	.byte	-4
   276C E1                 8849 	.byte	-31
   276D FF                 8850 	.byte	-1
   276E 0F                 8851 	.byte	15
   276F 1A                 8852 	.byte	26
   2770 00                 8853 	.byte	0
   2771 F8                 8854 	.byte	-8
   2772 06                 8855 	.byte	6
   2773 FF                 8856 	.byte	-1
   2774 F5                 8857 	.byte	-11
   2775 05                 8858 	.byte	5
   2776 FF                 8859 	.byte	-1
   2777 08                 8860 	.byte	8
   2778 FA                 8861 	.byte	-6
   2779 FF                 8862 	.byte	-1
   277A 0B                 8863 	.byte	11
   277B FB                 8864 	.byte	-5
   277C FF                 8865 	.byte	-1
   277D F8                 8866 	.byte	-8
   277E 06                 8867 	.byte	6
   277F 01                 8868 	.byte	1
                           8869 	.globl	_height2RisingLeft9
   2780                    8870 _height2RisingLeft9:
   2780 00                 8871 	.byte	0
   2781 00                 8872 	.byte	0
   2782 F3                 8873 	.byte	-13
   2783 FF                 8874 	.byte	-1
   2784 00                 8875 	.byte	0
   2785 0D                 8876 	.byte	13
   2786 FF                 8877 	.byte	-1
   2787 08                 8878 	.byte	8
   2788 FB                 8879 	.byte	-5
   2789 FF                 8880 	.byte	-1
   278A 00                 8881 	.byte	0
   278B F2                 8882 	.byte	-14
   278C FF                 8883 	.byte	-1
   278D F8                 8884 	.byte	-8
   278E 06                 8885 	.byte	6
   278F FF                 8886 	.byte	-1
   2790 1B                 8887 	.byte	27
   2791 08                 8888 	.byte	8
   2792 00                 8889 	.byte	0
   2793 E5                 8890 	.byte	-27
   2794 05                 8891 	.byte	5
   2795 FF                 8892 	.byte	-1
   2796 1B                 8893 	.byte	27
   2797 07                 8894 	.byte	7
   2798 00                 8895 	.byte	0
   2799 ED                 8896 	.byte	-19
   279A F4                 8897 	.byte	-12
   279B FF                 8898 	.byte	-1
   279C 1B                 8899 	.byte	27
   279D 06                 8900 	.byte	6
   279E 00                 8901 	.byte	0
   279F E5                 8902 	.byte	-27
   27A0 EC                 8903 	.byte	-20
   27A1 FF                 8904 	.byte	-1
   27A2 1B                 8905 	.byte	27
   27A3 08                 8906 	.byte	8
   27A4 00                 8907 	.byte	0
   27A5 F8                 8908 	.byte	-8
   27A6 06                 8909 	.byte	6
   27A7 FF                 8910 	.byte	-1
   27A8 00                 8911 	.byte	0
   27A9 0C                 8912 	.byte	12
   27AA FF                 8913 	.byte	-1
   27AB 08                 8914 	.byte	8
   27AC FA                 8915 	.byte	-6
   27AD FF                 8916 	.byte	-1
   27AE 00                 8917 	.byte	0
   27AF F4                 8918 	.byte	-12
   27B0 FF                 8919 	.byte	-1
   27B1 F8                 8920 	.byte	-8
   27B2 06                 8921 	.byte	6
   27B3 01                 8922 	.byte	1
                           8923 	.globl	_height2FallingBack9
   27B4                    8924 _height2FallingBack9:
   27B4 00                 8925 	.byte	0
   27B5 11                 8926 	.byte	17
   27B6 FD                 8927 	.byte	-3
   27B7 FF                 8928 	.byte	-1
   27B8 03                 8929 	.byte	3
   27B9 0D                 8930 	.byte	13
   27BA FF                 8931 	.byte	-1
   27BB F7                 8932 	.byte	-9
   27BC FE                 8933 	.byte	-2
   27BD FF                 8934 	.byte	-1
   27BE FD                 8935 	.byte	-3
   27BF F3                 8936 	.byte	-13
   27C0 FF                 8937 	.byte	-1
   27C1 09                 8938 	.byte	9
   27C2 02                 8939 	.byte	2
   27C3 FF                 8940 	.byte	-1
   27C4 19                 8941 	.byte	25
   27C5 F5                 8942 	.byte	-11
   27C6 00                 8943 	.byte	0
   27C7 EA                 8944 	.byte	-22
   27C8 18                 8945 	.byte	24
   27C9 FF                 8946 	.byte	-1
   27CA 19                 8947 	.byte	25
   27CB F6                 8948 	.byte	-10
   27CC 00                 8949 	.byte	0
   27CD DE                 8950 	.byte	-34
   27CE 08                 8951 	.byte	8
   27CF FF                 8952 	.byte	-1
   27D0 19                 8953 	.byte	25
   27D1 F6                 8954 	.byte	-10
   27D2 00                 8955 	.byte	0
   27D3 E4                 8956 	.byte	-28
   27D4 FD                 8957 	.byte	-3
   27D5 FF                 8958 	.byte	-1
   27D6 19                 8959 	.byte	25
   27D7 F5                 8960 	.byte	-11
   27D8 00                 8961 	.byte	0
   27D9 09                 8962 	.byte	9
   27DA 02                 8963 	.byte	2
   27DB FF                 8964 	.byte	-1
   27DC 03                 8965 	.byte	3
   27DD 0E                 8966 	.byte	14
   27DE FF                 8967 	.byte	-1
   27DF F7                 8968 	.byte	-9
   27E0 FE                 8969 	.byte	-2
   27E1 FF                 8970 	.byte	-1
   27E2 FD                 8971 	.byte	-3
   27E3 F2                 8972 	.byte	-14
   27E4 FF                 8973 	.byte	-1
   27E5 09                 8974 	.byte	9
   27E6 02                 8975 	.byte	2
   27E7 01                 8976 	.byte	1
                           8977 	.globl	_height2RisingFront9
   27E8                    8978 _height2RisingFront9:
   27E8 00                 8979 	.byte	0
   27E9 FD                 8980 	.byte	-3
   27EA 06                 8981 	.byte	6
   27EB FF                 8982 	.byte	-1
   27EC 03                 8983 	.byte	3
   27ED 0E                 8984 	.byte	14
   27EE FF                 8985 	.byte	-1
   27EF 03                 8986 	.byte	3
   27F0 FA                 8987 	.byte	-6
   27F1 FF                 8988 	.byte	-1
   27F2 FD                 8989 	.byte	-3
   27F3 F2                 8990 	.byte	-14
   27F4 FF                 8991 	.byte	-1
   27F5 FD                 8992 	.byte	-3
   27F6 06                 8993 	.byte	6
   27F7 FF                 8994 	.byte	-1
   27F8 1C                 8995 	.byte	28
   27F9 FD                 8996 	.byte	-3
   27FA 00                 8997 	.byte	0
   27FB E7                 8998 	.byte	-25
   27FC 11                 8999 	.byte	17
   27FD FF                 9000 	.byte	-1
   27FE 1C                 9001 	.byte	28
   27FF FD                 9002 	.byte	-3
   2800 00                 9003 	.byte	0
   2801 E7                 9004 	.byte	-25
   2802 FD                 9005 	.byte	-3
   2803 FF                 9006 	.byte	-1
   2804 1D                 9007 	.byte	29
   2805 FD                 9008 	.byte	-3
   2806 00                 9009 	.byte	0
   2807 E0                 9010 	.byte	-32
   2808 F5                 9011 	.byte	-11
   2809 FF                 9012 	.byte	-1
   280A 1D                 9013 	.byte	29
   280B FE                 9014 	.byte	-2
   280C 00                 9015 	.byte	0
   280D FC                 9016 	.byte	-4
   280E 05                 9017 	.byte	5
   280F FF                 9018 	.byte	-1
   2810 03                 9019 	.byte	3
   2811 0E                 9020 	.byte	14
   2812 FF                 9021 	.byte	-1
   2813 04                 9022 	.byte	4
   2814 FA                 9023 	.byte	-6
   2815 FF                 9024 	.byte	-1
   2816 FD                 9025 	.byte	-3
   2817 F3                 9026 	.byte	-13
   2818 FF                 9027 	.byte	-1
   2819 FC                 9028 	.byte	-4
   281A 05                 9029 	.byte	5
   281B 01                 9030 	.byte	1
                           9031 	.globl	_height2FallingFront9
   281C                    9032 _height2FallingFront9:
   281C FF                 9033 	.byte	-1
   281D 03                 9034 	.byte	3
   281E 0E                 9035 	.byte	14
   281F FF                 9036 	.byte	-1
   2820 0F                 9037 	.byte	15
   2821 FE                 9038 	.byte	-2
   2822 FF                 9039 	.byte	-1
   2823 FD                 9040 	.byte	-3
   2824 F3                 9041 	.byte	-13
   2825 FF                 9042 	.byte	-1
   2826 F1                 9043 	.byte	-15
   2827 01                 9044 	.byte	1
   2828 FF                 9045 	.byte	-1
   2829 FC                 9046 	.byte	-4
   282A 0B                 9047 	.byte	11
   282B 00                 9048 	.byte	0
   282C 07                 9049 	.byte	7
   282D 03                 9050 	.byte	3
   282E FF                 9051 	.byte	-1
   282F FC                 9052 	.byte	-4
   2830 0B                 9053 	.byte	11
   2831 00                 9054 	.byte	0
   2832 13                 9055 	.byte	19
   2833 F3                 9056 	.byte	-13
   2834 FF                 9057 	.byte	-1
   2835 FB                 9058 	.byte	-5
   2836 0B                 9059 	.byte	11
   2837 00                 9060 	.byte	0
   2838 02                 9061 	.byte	2
   2839 E8                 9062 	.byte	-24
   283A FF                 9063 	.byte	-1
   283B FB                 9064 	.byte	-5
   283C 0A                 9065 	.byte	10
   283D 00                 9066 	.byte	0
   283E F2                 9067 	.byte	-14
   283F 02                 9068 	.byte	2
   2840 FF                 9069 	.byte	-1
   2841 03                 9070 	.byte	3
   2842 0E                 9071 	.byte	14
   2843 FF                 9072 	.byte	-1
   2844 0E                 9073 	.byte	14
   2845 FE                 9074 	.byte	-2
   2846 FF                 9075 	.byte	-1
   2847 FD                 9076 	.byte	-3
   2848 F2                 9077 	.byte	-14
   2849 FF                 9078 	.byte	-1
   284A F2                 9079 	.byte	-14
   284B 02                 9080 	.byte	2
   284C 01                 9081 	.byte	1
                           9082 	.globl	_height2RisingBack9
   284D                    9083 _height2RisingBack9:
   284D 00                 9084 	.byte	0
   284E 10                 9085 	.byte	16
   284F F5                 9086 	.byte	-11
   2850 FF                 9087 	.byte	-1
   2851 03                 9088 	.byte	3
   2852 0D                 9089 	.byte	13
   2853 FF                 9090 	.byte	-1
   2854 0B                 9091 	.byte	11
   2855 FB                 9092 	.byte	-5
   2856 FF                 9093 	.byte	-1
   2857 FD                 9094 	.byte	-3
   2858 F2                 9095 	.byte	-14
   2859 FF                 9096 	.byte	-1
   285A F5                 9097 	.byte	-11
   285B 06                 9098 	.byte	6
   285C FF                 9099 	.byte	-1
   285D 15                 9100 	.byte	21
   285E 03                 9101 	.byte	3
   285F 00                 9102 	.byte	0
   2860 EE                 9103 	.byte	-18
   2861 0A                 9104 	.byte	10
   2862 FF                 9105 	.byte	-1
   2863 15                 9106 	.byte	21
   2864 03                 9107 	.byte	3
   2865 00                 9108 	.byte	0
   2866 F6                 9109 	.byte	-10
   2867 F8                 9110 	.byte	-8
   2868 FF                 9111 	.byte	-1
   2869 15                 9112 	.byte	21
   286A 03                 9113 	.byte	3
   286B 00                 9114 	.byte	0
   286C E8                 9115 	.byte	-24
   286D EF                 9116 	.byte	-17
   286E FF                 9117 	.byte	-1
   286F 15                 9118 	.byte	21
   2870 03                 9119 	.byte	3
   2871 00                 9120 	.byte	0
   2872 F5                 9121 	.byte	-11
   2873 06                 9122 	.byte	6
   2874 FF                 9123 	.byte	-1
   2875 03                 9124 	.byte	3
   2876 0D                 9125 	.byte	13
   2877 FF                 9126 	.byte	-1
   2878 0B                 9127 	.byte	11
   2879 FB                 9128 	.byte	-5
   287A FF                 9129 	.byte	-1
   287B FD                 9130 	.byte	-3
   287C F2                 9131 	.byte	-14
   287D FF                 9132 	.byte	-1
   287E F5                 9133 	.byte	-11
   287F 06                 9134 	.byte	6
   2880 01                 9135 	.byte	1
                           9136 	.globl	_depth2RollingLeft9
   2881                    9137 _depth2RollingLeft9:
   2881 FF                 9138 	.byte	-1
   2882 0D                 9139 	.byte	13
   2883 05                 9140 	.byte	5
   2884 FF                 9141 	.byte	-1
   2885 10                 9142 	.byte	16
   2886 F5                 9143 	.byte	-11
   2887 FF                 9144 	.byte	-1
   2888 F3                 9145 	.byte	-13
   2889 FB                 9146 	.byte	-5
   288A FF                 9147 	.byte	-1
   288B F0                 9148 	.byte	-16
   288C 0B                 9149 	.byte	11
   288D FF                 9150 	.byte	-1
   288E 02                 9151 	.byte	2
   288F F4                 9152 	.byte	-12
   2890 00                 9153 	.byte	0
   2891 0B                 9154 	.byte	11
   2892 11                 9155 	.byte	17
   2893 FF                 9156 	.byte	-1
   2894 02                 9157 	.byte	2
   2895 F4                 9158 	.byte	-12
   2896 00                 9159 	.byte	0
   2897 0E                 9160 	.byte	14
   2898 01                 9161 	.byte	1
   2899 FF                 9162 	.byte	-1
   289A 02                 9163 	.byte	2
   289B F3                 9164 	.byte	-13
   289C 00                 9165 	.byte	0
   289D F1                 9166 	.byte	-15
   289E 08                 9167 	.byte	8
   289F FF                 9168 	.byte	-1
   28A0 02                 9169 	.byte	2
   28A1 F3                 9170 	.byte	-13
   28A2 00                 9171 	.byte	0
   28A3 F0                 9172 	.byte	-16
   28A4 0C                 9173 	.byte	12
   28A5 FF                 9174 	.byte	-1
   28A6 0D                 9175 	.byte	13
   28A7 05                 9176 	.byte	5
   28A8 FF                 9177 	.byte	-1
   28A9 10                 9178 	.byte	16
   28AA F4                 9179 	.byte	-12
   28AB FF                 9180 	.byte	-1
   28AC F3                 9181 	.byte	-13
   28AD FB                 9182 	.byte	-5
   28AE FF                 9183 	.byte	-1
   28AF F0                 9184 	.byte	-16
   28B0 0C                 9185 	.byte	12
   28B1 01                 9186 	.byte	1
                           9187 	.globl	_depth2RollingRight9
   28B2                    9188 _depth2RollingRight9:
   28B2 00                 9189 	.byte	0
   28B3 0E                 9190 	.byte	14
   28B4 09                 9191 	.byte	9
   28B5 FF                 9192 	.byte	-1
   28B6 F5                 9193 	.byte	-11
   28B7 05                 9194 	.byte	5
   28B8 FF                 9195 	.byte	-1
   28B9 10                 9196 	.byte	16
   28BA F4                 9197 	.byte	-12
   28BB FF                 9198 	.byte	-1
   28BC 0B                 9199 	.byte	11
   28BD FC                 9200 	.byte	-4
   28BE FF                 9201 	.byte	-1
   28BF F0                 9202 	.byte	-16
   28C0 0B                 9203 	.byte	11
   28C1 FF                 9204 	.byte	-1
   28C2 08                 9205 	.byte	8
   28C3 0D                 9206 	.byte	13
   28C4 00                 9207 	.byte	0
   28C5 ED                 9208 	.byte	-19
   28C6 F8                 9209 	.byte	-8
   28C7 FF                 9210 	.byte	-1
   28C8 08                 9211 	.byte	8
   28C9 0D                 9212 	.byte	13
   28CA 00                 9213 	.byte	0
   28CB 08                 9214 	.byte	8
   28CC E7                 9215 	.byte	-25
   28CD FF                 9216 	.byte	-1
   28CE 08                 9217 	.byte	8
   28CF 0D                 9218 	.byte	13
   28D0 00                 9219 	.byte	0
   28D1 03                 9220 	.byte	3
   28D2 EF                 9221 	.byte	-17
   28D3 FF                 9222 	.byte	-1
   28D4 08                 9223 	.byte	8
   28D5 0C                 9224 	.byte	12
   28D6 00                 9225 	.byte	0
   28D7 F0                 9226 	.byte	-16
   28D8 0C                 9227 	.byte	12
   28D9 FF                 9228 	.byte	-1
   28DA F5                 9229 	.byte	-11
   28DB 05                 9230 	.byte	5
   28DC FF                 9231 	.byte	-1
   28DD 10                 9232 	.byte	16
   28DE F4                 9233 	.byte	-12
   28DF FF                 9234 	.byte	-1
   28E0 0B                 9235 	.byte	11
   28E1 FB                 9236 	.byte	-5
   28E2 FF                 9237 	.byte	-1
   28E3 F0                 9238 	.byte	-16
   28E4 0C                 9239 	.byte	12
   28E5 01                 9240 	.byte	1
                           9241 	.globl	_width2RollingFront9
   28E6                    9242 _width2RollingFront9:
   28E6 FF                 9243 	.byte	-1
   28E7 06                 9244 	.byte	6
   28E8 1C                 9245 	.byte	28
   28E9 FF                 9246 	.byte	-1
   28EA 0F                 9247 	.byte	15
   28EB FE                 9248 	.byte	-2
   28EC FF                 9249 	.byte	-1
   28ED FA                 9250 	.byte	-6
   28EE E5                 9251 	.byte	-27
   28EF FF                 9252 	.byte	-1
   28F0 F1                 9253 	.byte	-15
   28F1 01                 9254 	.byte	1
   28F2 FF                 9255 	.byte	-1
   28F3 FF                 9256 	.byte	-1
   28F4 06                 9257 	.byte	6
   28F5 00                 9258 	.byte	0
   28F6 07                 9259 	.byte	7
   28F7 16                 9260 	.byte	22
   28F8 FF                 9261 	.byte	-1
   28F9 FE                 9262 	.byte	-2
   28FA 06                 9263 	.byte	6
   28FB 00                 9264 	.byte	0
   28FC 11                 9265 	.byte	17
   28FD F8                 9266 	.byte	-8
   28FE FF                 9267 	.byte	-1
   28FF FE                 9268 	.byte	-2
   2900 05                 9269 	.byte	5
   2901 00                 9270 	.byte	0
   2902 FC                 9271 	.byte	-4
   2903 E0                 9272 	.byte	-32
   2904 FF                 9273 	.byte	-1
   2905 FE                 9274 	.byte	-2
   2906 04                 9275 	.byte	4
   2907 00                 9276 	.byte	0
   2908 F2                 9277 	.byte	-14
   2909 03                 9278 	.byte	3
   290A FF                 9279 	.byte	-1
   290B 05                 9280 	.byte	5
   290C 1C                 9281 	.byte	28
   290D FF                 9282 	.byte	-1
   290E 0F                 9283 	.byte	15
   290F FD                 9284 	.byte	-3
   2910 FF                 9285 	.byte	-1
   2911 FA                 9286 	.byte	-6
   2912 E4                 9287 	.byte	-28
   2913 FF                 9288 	.byte	-1
   2914 F2                 9289 	.byte	-14
   2915 03                 9290 	.byte	3
   2916 01                 9291 	.byte	1
                           9292 	.globl	_width2RollingBack9
   2917                    9293 _width2RollingBack9:
   2917 00                 9294 	.byte	0
   2918 11                 9295 	.byte	17
   2919 FD                 9296 	.byte	-3
   291A FF                 9297 	.byte	-1
   291B 06                 9298 	.byte	6
   291C 1B                 9299 	.byte	27
   291D FF                 9300 	.byte	-1
   291E F7                 9301 	.byte	-9
   291F FE                 9302 	.byte	-2
   2920 FF                 9303 	.byte	-1
   2921 FA                 9304 	.byte	-6
   2922 E5                 9305 	.byte	-27
   2923 FF                 9306 	.byte	-1
   2924 09                 9307 	.byte	9
   2925 02                 9308 	.byte	2
   2926 FF                 9309 	.byte	-1
   2927 0C                 9310 	.byte	12
   2928 FB                 9311 	.byte	-5
   2929 00                 9312 	.byte	0
   292A FA                 9313 	.byte	-6
   292B 20                 9314 	.byte	32
   292C FF                 9315 	.byte	-1
   292D 0C                 9316 	.byte	12
   292E FB                 9317 	.byte	-5
   292F 00                 9318 	.byte	0
   2930 EB                 9319 	.byte	-21
   2931 03                 9320 	.byte	3
   2932 FF                 9321 	.byte	-1
   2933 0C                 9322 	.byte	12
   2934 FA                 9323 	.byte	-6
   2935 00                 9324 	.byte	0
   2936 EE                 9325 	.byte	-18
   2937 EB                 9326 	.byte	-21
   2938 FF                 9327 	.byte	-1
   2939 0C                 9328 	.byte	12
   293A FA                 9329 	.byte	-6
   293B 00                 9330 	.byte	0
   293C 09                 9331 	.byte	9
   293D 03                 9332 	.byte	3
   293E FF                 9333 	.byte	-1
   293F 06                 9334 	.byte	6
   2940 1B                 9335 	.byte	27
   2941 FF                 9336 	.byte	-1
   2942 F7                 9337 	.byte	-9
   2943 FD                 9338 	.byte	-3
   2944 FF                 9339 	.byte	-1
   2945 FA                 9340 	.byte	-6
   2946 E5                 9341 	.byte	-27
   2947 FF                 9342 	.byte	-1
   2948 09                 9343 	.byte	9
   2949 03                 9344 	.byte	3
   294A 01                 9345 	.byte	1
                           9346 	.globl	_height1FallingLeft9
   294B                    9347 _height1FallingLeft9:
   294B FF                 9348 	.byte	-1
   294C 0D                 9349 	.byte	13
   294D 05                 9350 	.byte	5
   294E FF                 9351 	.byte	-1
   294F 08                 9352 	.byte	8
   2950 FB                 9353 	.byte	-5
   2951 FF                 9354 	.byte	-1
   2952 F3                 9355 	.byte	-13
   2953 FB                 9356 	.byte	-5
   2954 FF                 9357 	.byte	-1
   2955 F8                 9358 	.byte	-8
   2956 05                 9359 	.byte	5
   2957 FF                 9360 	.byte	-1
   2958 02                 9361 	.byte	2
   2959 F4                 9362 	.byte	-12
   295A 00                 9363 	.byte	0
   295B 0B                 9364 	.byte	11
   295C 11                 9365 	.byte	17
   295D FF                 9366 	.byte	-1
   295E 02                 9367 	.byte	2
   295F F4                 9368 	.byte	-12
   2960 00                 9369 	.byte	0
   2961 06                 9370 	.byte	6
   2962 07                 9371 	.byte	7
   2963 FF                 9372 	.byte	-1
   2964 02                 9373 	.byte	2
   2965 F3                 9374 	.byte	-13
   2966 00                 9375 	.byte	0
   2967 F1                 9376 	.byte	-15
   2968 08                 9377 	.byte	8
   2969 FF                 9378 	.byte	-1
   296A 02                 9379 	.byte	2
   296B F3                 9380 	.byte	-13
   296C 00                 9381 	.byte	0
   296D F8                 9382 	.byte	-8
   296E 06                 9383 	.byte	6
   296F FF                 9384 	.byte	-1
   2970 0D                 9385 	.byte	13
   2971 05                 9386 	.byte	5
   2972 FF                 9387 	.byte	-1
   2973 08                 9388 	.byte	8
   2974 FA                 9389 	.byte	-6
   2975 FF                 9390 	.byte	-1
   2976 F3                 9391 	.byte	-13
   2977 FB                 9392 	.byte	-5
   2978 FF                 9393 	.byte	-1
   2979 F8                 9394 	.byte	-8
   297A 06                 9395 	.byte	6
   297B 01                 9396 	.byte	1
                           9397 	.globl	_height1FallingRight9
   297C                    9398 _height1FallingRight9:
   297C 00                 9399 	.byte	0
   297D 0E                 9400 	.byte	14
   297E 09                 9401 	.byte	9
   297F FF                 9402 	.byte	-1
   2980 F5                 9403 	.byte	-11
   2981 05                 9404 	.byte	5
   2982 FF                 9405 	.byte	-1
   2983 08                 9406 	.byte	8
   2984 FA                 9407 	.byte	-6
   2985 FF                 9408 	.byte	-1
   2986 0B                 9409 	.byte	11
   2987 FB                 9410 	.byte	-5
   2988 FF                 9411 	.byte	-1
   2989 F8                 9412 	.byte	-8
   298A 06                 9413 	.byte	6
   298B FF                 9414 	.byte	-1
   298C 08                 9415 	.byte	8
   298D 0D                 9416 	.byte	13
   298E 00                 9417 	.byte	0
   298F ED                 9418 	.byte	-19
   2990 F8                 9419 	.byte	-8
   2991 FF                 9420 	.byte	-1
   2992 08                 9421 	.byte	8
   2993 0D                 9422 	.byte	13
   2994 00                 9423 	.byte	0
   2995 00                 9424 	.byte	0
   2996 ED                 9425 	.byte	-19
   2997 FF                 9426 	.byte	-1
   2998 08                 9427 	.byte	8
   2999 0D                 9428 	.byte	13
   299A 00                 9429 	.byte	0
   299B 03                 9430 	.byte	3
   299C EE                 9431 	.byte	-18
   299D FF                 9432 	.byte	-1
   299E 08                 9433 	.byte	8
   299F 0D                 9434 	.byte	13
   29A0 00                 9435 	.byte	0
   29A1 F8                 9436 	.byte	-8
   29A2 06                 9437 	.byte	6
   29A3 FF                 9438 	.byte	-1
   29A4 F5                 9439 	.byte	-11
   29A5 05                 9440 	.byte	5
   29A6 FF                 9441 	.byte	-1
   29A7 08                 9442 	.byte	8
   29A8 FA                 9443 	.byte	-6
   29A9 FF                 9444 	.byte	-1
   29AA 0B                 9445 	.byte	11
   29AB FB                 9446 	.byte	-5
   29AC FF                 9447 	.byte	-1
   29AD F8                 9448 	.byte	-8
   29AE 06                 9449 	.byte	6
   29AF 01                 9450 	.byte	1
                           9451 	.globl	_height1FallingBack9
   29B0                    9452 _height1FallingBack9:
   29B0 00                 9453 	.byte	0
   29B1 11                 9454 	.byte	17
   29B2 FD                 9455 	.byte	-3
   29B3 FF                 9456 	.byte	-1
   29B4 03                 9457 	.byte	3
   29B5 0D                 9458 	.byte	13
   29B6 FF                 9459 	.byte	-1
   29B7 F7                 9460 	.byte	-9
   29B8 FE                 9461 	.byte	-2
   29B9 FF                 9462 	.byte	-1
   29BA FD                 9463 	.byte	-3
   29BB F3                 9464 	.byte	-13
   29BC FF                 9465 	.byte	-1
   29BD 09                 9466 	.byte	9
   29BE 02                 9467 	.byte	2
   29BF FF                 9468 	.byte	-1
   29C0 0C                 9469 	.byte	12
   29C1 FB                 9470 	.byte	-5
   29C2 00                 9471 	.byte	0
   29C3 F7                 9472 	.byte	-9
   29C4 12                 9473 	.byte	18
   29C5 FF                 9474 	.byte	-1
   29C6 0C                 9475 	.byte	12
   29C7 FB                 9476 	.byte	-5
   29C8 00                 9477 	.byte	0
   29C9 EB                 9478 	.byte	-21
   29CA 03                 9479 	.byte	3
   29CB FF                 9480 	.byte	-1
   29CC 0C                 9481 	.byte	12
   29CD FA                 9482 	.byte	-6
   29CE 00                 9483 	.byte	0
   29CF F1                 9484 	.byte	-15
   29D0 F9                 9485 	.byte	-7
   29D1 FF                 9486 	.byte	-1
   29D2 0C                 9487 	.byte	12
   29D3 FA                 9488 	.byte	-6
   29D4 00                 9489 	.byte	0
   29D5 09                 9490 	.byte	9
   29D6 03                 9491 	.byte	3
   29D7 FF                 9492 	.byte	-1
   29D8 03                 9493 	.byte	3
   29D9 0D                 9494 	.byte	13
   29DA FF                 9495 	.byte	-1
   29DB F7                 9496 	.byte	-9
   29DC FD                 9497 	.byte	-3
   29DD FF                 9498 	.byte	-1
   29DE FD                 9499 	.byte	-3
   29DF F3                 9500 	.byte	-13
   29E0 FF                 9501 	.byte	-1
   29E1 09                 9502 	.byte	9
   29E2 03                 9503 	.byte	3
   29E3 01                 9504 	.byte	1
                           9505 	.globl	_height1FallingFront9
   29E4                    9506 _height1FallingFront9:
   29E4 FF                 9507 	.byte	-1
   29E5 03                 9508 	.byte	3
   29E6 0E                 9509 	.byte	14
   29E7 FF                 9510 	.byte	-1
   29E8 0F                 9511 	.byte	15
   29E9 FE                 9512 	.byte	-2
   29EA FF                 9513 	.byte	-1
   29EB FD                 9514 	.byte	-3
   29EC F3                 9515 	.byte	-13
   29ED FF                 9516 	.byte	-1
   29EE F1                 9517 	.byte	-15
   29EF 01                 9518 	.byte	1
   29F0 FF                 9519 	.byte	-1
   29F1 FF                 9520 	.byte	-1
   29F2 06                 9521 	.byte	6
   29F3 00                 9522 	.byte	0
   29F4 04                 9523 	.byte	4
   29F5 08                 9524 	.byte	8
   29F6 FF                 9525 	.byte	-1
   29F7 FE                 9526 	.byte	-2
   29F8 06                 9527 	.byte	6
   29F9 00                 9528 	.byte	0
   29FA 11                 9529 	.byte	17
   29FB F8                 9530 	.byte	-8
   29FC FF                 9531 	.byte	-1
   29FD FE                 9532 	.byte	-2
   29FE 05                 9533 	.byte	5
   29FF 00                 9534 	.byte	0
   2A00 FF                 9535 	.byte	-1
   2A01 EE                 9536 	.byte	-18
   2A02 FF                 9537 	.byte	-1
   2A03 FE                 9538 	.byte	-2
   2A04 04                 9539 	.byte	4
   2A05 00                 9540 	.byte	0
   2A06 F2                 9541 	.byte	-14
   2A07 03                 9542 	.byte	3
   2A08 FF                 9543 	.byte	-1
   2A09 02                 9544 	.byte	2
   2A0A 0E                 9545 	.byte	14
   2A0B FF                 9546 	.byte	-1
   2A0C 0F                 9547 	.byte	15
   2A0D FD                 9548 	.byte	-3
   2A0E FF                 9549 	.byte	-1
   2A0F FD                 9550 	.byte	-3
   2A10 F2                 9551 	.byte	-14
   2A11 FF                 9552 	.byte	-1
   2A12 F2                 9553 	.byte	-14
   2A13 03                 9554 	.byte	3
   2A14 01                 9555 	.byte	1
                           9556 	.globl	_height2FallingLeft10
   2A15                    9557 _height2FallingLeft10:
   2A15 FF                 9558 	.byte	-1
   2A16 0D                 9559 	.byte	13
   2A17 04                 9560 	.byte	4
   2A18 FF                 9561 	.byte	-1
   2A19 08                 9562 	.byte	8
   2A1A FB                 9563 	.byte	-5
   2A1B FF                 9564 	.byte	-1
   2A1C F3                 9565 	.byte	-13
   2A1D FC                 9566 	.byte	-4
   2A1E FF                 9567 	.byte	-1
   2A1F F8                 9568 	.byte	-8
   2A20 05                 9569 	.byte	5
   2A21 FF                 9570 	.byte	-1
   2A22 01                 9571 	.byte	1
   2A23 E6                 9572 	.byte	-26
   2A24 00                 9573 	.byte	0
   2A25 0C                 9574 	.byte	12
   2A26 1E                 9575 	.byte	30
   2A27 FF                 9576 	.byte	-1
   2A28 01                 9577 	.byte	1
   2A29 E6                 9578 	.byte	-26
   2A2A 00                 9579 	.byte	0
   2A2B 07                 9580 	.byte	7
   2A2C 15                 9581 	.byte	21
   2A2D FF                 9582 	.byte	-1
   2A2E 01                 9583 	.byte	1
   2A2F E5                 9584 	.byte	-27
   2A30 00                 9585 	.byte	0
   2A31 F2                 9586 	.byte	-14
   2A32 17                 9587 	.byte	23
   2A33 FF                 9588 	.byte	-1
   2A34 01                 9589 	.byte	1
   2A35 E5                 9590 	.byte	-27
   2A36 00                 9591 	.byte	0
   2A37 F8                 9592 	.byte	-8
   2A38 06                 9593 	.byte	6
   2A39 FF                 9594 	.byte	-1
   2A3A 0D                 9595 	.byte	13
   2A3B 04                 9596 	.byte	4
   2A3C FF                 9597 	.byte	-1
   2A3D 08                 9598 	.byte	8
   2A3E FA                 9599 	.byte	-6
   2A3F FF                 9600 	.byte	-1
   2A40 F3                 9601 	.byte	-13
   2A41 FC                 9602 	.byte	-4
   2A42 FF                 9603 	.byte	-1
   2A43 F8                 9604 	.byte	-8
   2A44 06                 9605 	.byte	6
   2A45 01                 9606 	.byte	1
                           9607 	.globl	_height2RisingRight10
   2A46                    9608 _height2RisingRight10:
   2A46 00                 9609 	.byte	0
   2A47 06                 9610 	.byte	6
   2A48 1C                 9611 	.byte	28
   2A49 FF                 9612 	.byte	-1
   2A4A 05                 9613 	.byte	5
   2A4B 0E                 9614 	.byte	14
   2A4C FF                 9615 	.byte	-1
   2A4D 08                 9616 	.byte	8
   2A4E FA                 9617 	.byte	-6
   2A4F FF                 9618 	.byte	-1
   2A50 FB                 9619 	.byte	-5
   2A51 F2                 9620 	.byte	-14
   2A52 FF                 9621 	.byte	-1
   2A53 F8                 9622 	.byte	-8
   2A54 06                 9623 	.byte	6
   2A55 FF                 9624 	.byte	-1
   2A56 19                 9625 	.byte	25
   2A57 FC                 9626 	.byte	-4
   2A58 00                 9627 	.byte	0
   2A59 EC                 9628 	.byte	-20
   2A5A 12                 9629 	.byte	18
   2A5B FF                 9630 	.byte	-1
   2A5C 19                 9631 	.byte	25
   2A5D FC                 9632 	.byte	-4
   2A5E 00                 9633 	.byte	0
   2A5F EF                 9634 	.byte	-17
   2A60 FE                 9635 	.byte	-2
   2A61 FF                 9636 	.byte	-1
   2A62 19                 9637 	.byte	25
   2A63 FC                 9638 	.byte	-4
   2A64 00                 9639 	.byte	0
   2A65 E2                 9640 	.byte	-30
   2A66 F6                 9641 	.byte	-10
   2A67 FF                 9642 	.byte	-1
   2A68 19                 9643 	.byte	25
   2A69 FC                 9644 	.byte	-4
   2A6A 00                 9645 	.byte	0
   2A6B F8                 9646 	.byte	-8
   2A6C 06                 9647 	.byte	6
   2A6D FF                 9648 	.byte	-1
   2A6E 05                 9649 	.byte	5
   2A6F 0E                 9650 	.byte	14
   2A70 FF                 9651 	.byte	-1
   2A71 08                 9652 	.byte	8
   2A72 FA                 9653 	.byte	-6
   2A73 FF                 9654 	.byte	-1
   2A74 FB                 9655 	.byte	-5
   2A75 F2                 9656 	.byte	-14
   2A76 FF                 9657 	.byte	-1
   2A77 F8                 9658 	.byte	-8
   2A78 06                 9659 	.byte	6
   2A79 01                 9660 	.byte	1
                           9661 	.globl	_height2FallingRight10
   2A7A                    9662 _height2FallingRight10:
   2A7A 00                 9663 	.byte	0
   2A7B 0F                 9664 	.byte	15
   2A7C 0A                 9665 	.byte	10
   2A7D FF                 9666 	.byte	-1
   2A7E F4                 9667 	.byte	-12
   2A7F 04                 9668 	.byte	4
   2A80 FF                 9669 	.byte	-1
   2A81 08                 9670 	.byte	8
   2A82 FA                 9671 	.byte	-6
   2A83 FF                 9672 	.byte	-1
   2A84 0C                 9673 	.byte	12
   2A85 FC                 9674 	.byte	-4
   2A86 FF                 9675 	.byte	-1
   2A87 F8                 9676 	.byte	-8
   2A88 06                 9677 	.byte	6
   2A89 FF                 9678 	.byte	-1
   2A8A 0C                 9679 	.byte	12
   2A8B 1B                 9680 	.byte	27
   2A8C 00                 9681 	.byte	0
   2A8D E8                 9682 	.byte	-24
   2A8E E9                 9683 	.byte	-23
   2A8F FF                 9684 	.byte	-1
   2A90 0D                 9685 	.byte	13
   2A91 1B                 9686 	.byte	27
   2A92 00                 9687 	.byte	0
   2A93 FB                 9688 	.byte	-5
   2A94 DF                 9689 	.byte	-33
   2A95 FF                 9690 	.byte	-1
   2A96 0D                 9691 	.byte	13
   2A97 1B                 9692 	.byte	27
   2A98 00                 9693 	.byte	0
   2A99 FF                 9694 	.byte	-1
   2A9A E1                 9695 	.byte	-31
   2A9B FF                 9696 	.byte	-1
   2A9C 0C                 9697 	.byte	12
   2A9D 1B                 9698 	.byte	27
   2A9E 00                 9699 	.byte	0
   2A9F F8                 9700 	.byte	-8
   2AA0 06                 9701 	.byte	6
   2AA1 FF                 9702 	.byte	-1
   2AA2 F5                 9703 	.byte	-11
   2AA3 04                 9704 	.byte	4
   2AA4 FF                 9705 	.byte	-1
   2AA5 08                 9706 	.byte	8
   2AA6 FA                 9707 	.byte	-6
   2AA7 FF                 9708 	.byte	-1
   2AA8 0B                 9709 	.byte	11
   2AA9 FC                 9710 	.byte	-4
   2AAA FF                 9711 	.byte	-1
   2AAB F8                 9712 	.byte	-8
   2AAC 06                 9713 	.byte	6
   2AAD 01                 9714 	.byte	1
                           9715 	.globl	_height2RisingLeft10
   2AAE                    9716 _height2RisingLeft10:
   2AAE 00                 9717 	.byte	0
   2AAF 00                 9718 	.byte	0
   2AB0 F3                 9719 	.byte	-13
   2AB1 FF                 9720 	.byte	-1
   2AB2 00                 9721 	.byte	0
   2AB3 0D                 9722 	.byte	13
   2AB4 FF                 9723 	.byte	-1
   2AB5 08                 9724 	.byte	8
   2AB6 FB                 9725 	.byte	-5
   2AB7 FF                 9726 	.byte	-1
   2AB8 FF                 9727 	.byte	-1
   2AB9 F2                 9728 	.byte	-14
   2ABA FF                 9729 	.byte	-1
   2ABB F9                 9730 	.byte	-7
   2ABC 06                 9731 	.byte	6
   2ABD FF                 9732 	.byte	-1
   2ABE 19                 9733 	.byte	25
   2ABF 04                 9734 	.byte	4
   2AC0 00                 9735 	.byte	0
   2AC1 E7                 9736 	.byte	-25
   2AC2 09                 9737 	.byte	9
   2AC3 FF                 9738 	.byte	-1
   2AC4 1B                 9739 	.byte	27
   2AC5 04                 9740 	.byte	4
   2AC6 00                 9741 	.byte	0
   2AC7 ED                 9742 	.byte	-19
   2AC8 F7                 9743 	.byte	-9
   2AC9 FF                 9744 	.byte	-1
   2ACA 1B                 9745 	.byte	27
   2ACB 04                 9746 	.byte	4
   2ACC 00                 9747 	.byte	0
   2ACD E4                 9748 	.byte	-28
   2ACE EE                 9749 	.byte	-18
   2ACF FF                 9750 	.byte	-1
   2AD0 1A                 9751 	.byte	26
   2AD1 04                 9752 	.byte	4
   2AD2 00                 9753 	.byte	0
   2AD3 F8                 9754 	.byte	-8
   2AD4 06                 9755 	.byte	6
   2AD5 FF                 9756 	.byte	-1
   2AD6 02                 9757 	.byte	2
   2AD7 0D                 9758 	.byte	13
   2AD8 FF                 9759 	.byte	-1
   2AD9 08                 9760 	.byte	8
   2ADA FB                 9761 	.byte	-5
   2ADB FF                 9762 	.byte	-1
   2ADC FE                 9763 	.byte	-2
   2ADD F2                 9764 	.byte	-14
   2ADE FF                 9765 	.byte	-1
   2ADF F8                 9766 	.byte	-8
   2AE0 06                 9767 	.byte	6
   2AE1 01                 9768 	.byte	1
                           9769 	.globl	_height2FallingBack10
   2AE2                    9770 _height2FallingBack10:
   2AE2 00                 9771 	.byte	0
   2AE3 12                 9772 	.byte	18
   2AE4 FD                 9773 	.byte	-3
   2AE5 FF                 9774 	.byte	-1
   2AE6 03                 9775 	.byte	3
   2AE7 0D                 9776 	.byte	13
   2AE8 FF                 9777 	.byte	-1
   2AE9 F6                 9778 	.byte	-10
   2AEA FE                 9779 	.byte	-2
   2AEB FF                 9780 	.byte	-1
   2AEC FD                 9781 	.byte	-3
   2AED F3                 9782 	.byte	-13
   2AEE FF                 9783 	.byte	-1
   2AEF 0A                 9784 	.byte	10
   2AF0 02                 9785 	.byte	2
   2AF1 FF                 9786 	.byte	-1
   2AF2 17                 9787 	.byte	23
   2AF3 F4                 9788 	.byte	-12
   2AF4 00                 9789 	.byte	0
   2AF5 EC                 9790 	.byte	-20
   2AF6 19                 9791 	.byte	25
   2AF7 FF                 9792 	.byte	-1
   2AF8 17                 9793 	.byte	23
   2AF9 F5                 9794 	.byte	-11
   2AFA 00                 9795 	.byte	0
   2AFB DF                 9796 	.byte	-33
   2AFC 09                 9797 	.byte	9
   2AFD FF                 9798 	.byte	-1
   2AFE 16                 9799 	.byte	22
   2AFF F5                 9800 	.byte	-11
   2B00 00                 9801 	.byte	0
   2B01 E7                 9802 	.byte	-25
   2B02 FE                 9803 	.byte	-2
   2B03 FF                 9804 	.byte	-1
   2B04 16                 9805 	.byte	22
   2B05 F4                 9806 	.byte	-12
   2B06 00                 9807 	.byte	0
   2B07 0B                 9808 	.byte	11
   2B08 02                 9809 	.byte	2
   2B09 FF                 9810 	.byte	-1
   2B0A 03                 9811 	.byte	3
   2B0B 0E                 9812 	.byte	14
   2B0C FF                 9813 	.byte	-1
   2B0D F5                 9814 	.byte	-11
   2B0E FE                 9815 	.byte	-2
   2B0F FF                 9816 	.byte	-1
   2B10 FD                 9817 	.byte	-3
   2B11 F2                 9818 	.byte	-14
   2B12 FF                 9819 	.byte	-1
   2B13 0B                 9820 	.byte	11
   2B14 02                 9821 	.byte	2
   2B15 01                 9822 	.byte	1
                           9823 	.globl	_height2RisingFront10
   2B16                    9824 _height2RisingFront10:
   2B16 00                 9825 	.byte	0
   2B17 FB                 9826 	.byte	-5
   2B18 06                 9827 	.byte	6
   2B19 FF                 9828 	.byte	-1
   2B1A 03                 9829 	.byte	3
   2B1B 0E                 9830 	.byte	14
   2B1C FF                 9831 	.byte	-1
   2B1D 05                 9832 	.byte	5
   2B1E FA                 9833 	.byte	-6
   2B1F FF                 9834 	.byte	-1
   2B20 FD                 9835 	.byte	-3
   2B21 F2                 9836 	.byte	-14
   2B22 FF                 9837 	.byte	-1
   2B23 FB                 9838 	.byte	-5
   2B24 06                 9839 	.byte	6
   2B25 FF                 9840 	.byte	-1
   2B26 1B                 9841 	.byte	27
   2B27 FE                 9842 	.byte	-2
   2B28 00                 9843 	.byte	0
   2B29 E8                 9844 	.byte	-24
   2B2A 10                 9845 	.byte	16
   2B2B FF                 9846 	.byte	-1
   2B2C 1B                 9847 	.byte	27
   2B2D FE                 9848 	.byte	-2
   2B2E 00                 9849 	.byte	0
   2B2F EA                 9850 	.byte	-22
   2B30 FC                 9851 	.byte	-4
   2B31 FF                 9852 	.byte	-1
   2B32 1C                 9853 	.byte	28
   2B33 FE                 9854 	.byte	-2
   2B34 00                 9855 	.byte	0
   2B35 E1                 9856 	.byte	-31
   2B36 F4                 9857 	.byte	-12
   2B37 FF                 9858 	.byte	-1
   2B38 1C                 9859 	.byte	28
   2B39 FF                 9860 	.byte	-1
   2B3A 00                 9861 	.byte	0
   2B3B FA                 9862 	.byte	-6
   2B3C 05                 9863 	.byte	5
   2B3D FF                 9864 	.byte	-1
   2B3E 03                 9865 	.byte	3
   2B3F 0E                 9866 	.byte	14
   2B40 FF                 9867 	.byte	-1
   2B41 06                 9868 	.byte	6
   2B42 FA                 9869 	.byte	-6
   2B43 FF                 9870 	.byte	-1
   2B44 FD                 9871 	.byte	-3
   2B45 F3                 9872 	.byte	-13
   2B46 FF                 9873 	.byte	-1
   2B47 FA                 9874 	.byte	-6
   2B48 05                 9875 	.byte	5
   2B49 01                 9876 	.byte	1
                           9877 	.globl	_height2FallingFront10
   2B4A                    9878 _height2FallingFront10:
   2B4A FF                 9879 	.byte	-1
   2B4B 03                 9880 	.byte	3
   2B4C 0E                 9881 	.byte	14
   2B4D FF                 9882 	.byte	-1
   2B4E 0F                 9883 	.byte	15
   2B4F FE                 9884 	.byte	-2
   2B50 FF                 9885 	.byte	-1
   2B51 FD                 9886 	.byte	-3
   2B52 F3                 9887 	.byte	-13
   2B53 FF                 9888 	.byte	-1
   2B54 F1                 9889 	.byte	-15
   2B55 01                 9890 	.byte	1
   2B56 FF                 9891 	.byte	-1
   2B57 F8                 9892 	.byte	-8
   2B58 0C                 9893 	.byte	12
   2B59 00                 9894 	.byte	0
   2B5A 0B                 9895 	.byte	11
   2B5B 02                 9896 	.byte	2
   2B5C FF                 9897 	.byte	-1
   2B5D F8                 9898 	.byte	-8
   2B5E 0C                 9899 	.byte	12
   2B5F 00                 9900 	.byte	0
   2B60 17                 9901 	.byte	23
   2B61 F2                 9902 	.byte	-14
   2B62 FF                 9903 	.byte	-1
   2B63 F7                 9904 	.byte	-9
   2B64 0C                 9905 	.byte	12
   2B65 00                 9906 	.byte	0
   2B66 06                 9907 	.byte	6
   2B67 E7                 9908 	.byte	-25
   2B68 FF                 9909 	.byte	-1
   2B69 F7                 9910 	.byte	-9
   2B6A 0B                 9911 	.byte	11
   2B6B 00                 9912 	.byte	0
   2B6C F2                 9913 	.byte	-14
   2B6D 02                 9914 	.byte	2
   2B6E FF                 9915 	.byte	-1
   2B6F 03                 9916 	.byte	3
   2B70 0E                 9917 	.byte	14
   2B71 FF                 9918 	.byte	-1
   2B72 0E                 9919 	.byte	14
   2B73 FE                 9920 	.byte	-2
   2B74 FF                 9921 	.byte	-1
   2B75 FD                 9922 	.byte	-3
   2B76 F2                 9923 	.byte	-14
   2B77 FF                 9924 	.byte	-1
   2B78 F2                 9925 	.byte	-14
   2B79 02                 9926 	.byte	2
   2B7A 01                 9927 	.byte	1
                           9928 	.globl	_height2RisingBack10
   2B7B                    9929 _height2RisingBack10:
   2B7B 00                 9930 	.byte	0
   2B7C 10                 9931 	.byte	16
   2B7D F5                 9932 	.byte	-11
   2B7E FF                 9933 	.byte	-1
   2B7F 03                 9934 	.byte	3
   2B80 0D                 9935 	.byte	13
   2B81 FF                 9936 	.byte	-1
   2B82 0A                 9937 	.byte	10
   2B83 FB                 9938 	.byte	-5
   2B84 FF                 9939 	.byte	-1
   2B85 FD                 9940 	.byte	-3
   2B86 F2                 9941 	.byte	-14
   2B87 FF                 9942 	.byte	-1
   2B88 F6                 9943 	.byte	-10
   2B89 06                 9944 	.byte	6
   2B8A FF                 9945 	.byte	-1
   2B8B 18                 9946 	.byte	24
   2B8C 02                 9947 	.byte	2
   2B8D 00                 9948 	.byte	0
   2B8E EB                 9949 	.byte	-21
   2B8F 0B                 9950 	.byte	11
   2B90 FF                 9951 	.byte	-1
   2B91 18                 9952 	.byte	24
   2B92 02                 9953 	.byte	2
   2B93 00                 9954 	.byte	0
   2B94 F2                 9955 	.byte	-14
   2B95 F9                 9956 	.byte	-7
   2B96 FF                 9957 	.byte	-1
   2B97 17                 9958 	.byte	23
   2B98 02                 9959 	.byte	2
   2B99 00                 9960 	.byte	0
   2B9A E6                 9961 	.byte	-26
   2B9B F0                 9962 	.byte	-16
   2B9C FF                 9963 	.byte	-1
   2B9D 17                 9964 	.byte	23
   2B9E 02                 9965 	.byte	2
   2B9F 00                 9966 	.byte	0
   2BA0 F7                 9967 	.byte	-9
   2BA1 06                 9968 	.byte	6
   2BA2 FF                 9969 	.byte	-1
   2BA3 03                 9970 	.byte	3
   2BA4 0D                 9971 	.byte	13
   2BA5 FF                 9972 	.byte	-1
   2BA6 09                 9973 	.byte	9
   2BA7 FB                 9974 	.byte	-5
   2BA8 FF                 9975 	.byte	-1
   2BA9 FD                 9976 	.byte	-3
   2BAA F2                 9977 	.byte	-14
   2BAB FF                 9978 	.byte	-1
   2BAC F7                 9979 	.byte	-9
   2BAD 06                 9980 	.byte	6
   2BAE 01                 9981 	.byte	1
                           9982 	.globl	_depth2RollingLeft10
   2BAF                    9983 _depth2RollingLeft10:
   2BAF FF                 9984 	.byte	-1
   2BB0 0D                 9985 	.byte	13
   2BB1 04                 9986 	.byte	4
   2BB2 FF                 9987 	.byte	-1
   2BB3 10                 9988 	.byte	16
   2BB4 F5                 9989 	.byte	-11
   2BB5 FF                 9990 	.byte	-1
   2BB6 F3                 9991 	.byte	-13
   2BB7 FC                 9992 	.byte	-4
   2BB8 FF                 9993 	.byte	-1
   2BB9 F0                 9994 	.byte	-16
   2BBA 0B                 9995 	.byte	11
   2BBB FF                 9996 	.byte	-1
   2BBC 00                 9997 	.byte	0
   2BBD F3                 9998 	.byte	-13
   2BBE 00                 9999 	.byte	0
   2BBF 0D                10000 	.byte	13
   2BC0 11                10001 	.byte	17
   2BC1 FF                10002 	.byte	-1
   2BC2 01                10003 	.byte	1
   2BC3 F3                10004 	.byte	-13
   2BC4 00                10005 	.byte	0
   2BC5 0F                10006 	.byte	15
   2BC6 02                10007 	.byte	2
   2BC7 FF                10008 	.byte	-1
   2BC8 01                10009 	.byte	1
   2BC9 F2                10010 	.byte	-14
   2BCA 00                10011 	.byte	0
   2BCB F2                10012 	.byte	-14
   2BCC 0A                10013 	.byte	10
   2BCD FF                10014 	.byte	-1
   2BCE 00                10015 	.byte	0
   2BCF F2                10016 	.byte	-14
   2BD0 00                10017 	.byte	0
   2BD1 F0                10018 	.byte	-16
   2BD2 0C                10019 	.byte	12
   2BD3 FF                10020 	.byte	-1
   2BD4 0E                10021 	.byte	14
   2BD5 04                10022 	.byte	4
   2BD6 FF                10023 	.byte	-1
   2BD7 10                10024 	.byte	16
   2BD8 F4                10025 	.byte	-12
   2BD9 FF                10026 	.byte	-1
   2BDA F2                10027 	.byte	-14
   2BDB FC                10028 	.byte	-4
   2BDC FF                10029 	.byte	-1
   2BDD F0                10030 	.byte	-16
   2BDE 0C                10031 	.byte	12
   2BDF 01                10032 	.byte	1
                          10033 	.globl	_depth2RollingRight10
   2BE0                   10034 _depth2RollingRight10:
   2BE0 00                10035 	.byte	0
   2BE1 0F                10036 	.byte	15
   2BE2 0A                10037 	.byte	10
   2BE3 FF                10038 	.byte	-1
   2BE4 F4                10039 	.byte	-12
   2BE5 04                10040 	.byte	4
   2BE6 FF                10041 	.byte	-1
   2BE7 10                10042 	.byte	16
   2BE8 F4                10043 	.byte	-12
   2BE9 FF                10044 	.byte	-1
   2BEA 0C                10045 	.byte	12
   2BEB FD                10046 	.byte	-3
   2BEC FF                10047 	.byte	-1
   2BED F0                10048 	.byte	-16
   2BEE 0B                10049 	.byte	11
   2BEF FF                10050 	.byte	-1
   2BF0 06                10051 	.byte	6
   2BF1 0E                10052 	.byte	14
   2BF2 00                10053 	.byte	0
   2BF3 EE                10054 	.byte	-18
   2BF4 F6                10055 	.byte	-10
   2BF5 FF                10056 	.byte	-1
   2BF6 06                10057 	.byte	6
   2BF7 0E                10058 	.byte	14
   2BF8 00                10059 	.byte	0
   2BF9 0A                10060 	.byte	10
   2BFA E6                10061 	.byte	-26
   2BFB FF                10062 	.byte	-1
   2BFC 06                10063 	.byte	6
   2BFD 0E                10064 	.byte	14
   2BFE 00                10065 	.byte	0
   2BFF 06                10066 	.byte	6
   2C00 EF                10067 	.byte	-17
   2C01 FF                10068 	.byte	-1
   2C02 06                10069 	.byte	6
   2C03 0D                10070 	.byte	13
   2C04 00                10071 	.byte	0
   2C05 F0                10072 	.byte	-16
   2C06 0C                10073 	.byte	12
   2C07 FF                10074 	.byte	-1
   2C08 F4                10075 	.byte	-12
   2C09 04                10076 	.byte	4
   2C0A FF                10077 	.byte	-1
   2C0B 10                10078 	.byte	16
   2C0C F4                10079 	.byte	-12
   2C0D FF                10080 	.byte	-1
   2C0E 0C                10081 	.byte	12
   2C0F FC                10082 	.byte	-4
   2C10 FF                10083 	.byte	-1
   2C11 F0                10084 	.byte	-16
   2C12 0C                10085 	.byte	12
   2C13 01                10086 	.byte	1
                          10087 	.globl	_width2RollingFront10
   2C14                   10088 _width2RollingFront10:
   2C14 FF                10089 	.byte	-1
   2C15 06                10090 	.byte	6
   2C16 1C                10091 	.byte	28
   2C17 FF                10092 	.byte	-1
   2C18 0F                10093 	.byte	15
   2C19 FE                10094 	.byte	-2
   2C1A FF                10095 	.byte	-1
   2C1B FA                10096 	.byte	-6
   2C1C E5                10097 	.byte	-27
   2C1D FF                10098 	.byte	-1
   2C1E F1                10099 	.byte	-15
   2C1F 01                10100 	.byte	1
   2C20 FF                10101 	.byte	-1
   2C21 FD                10102 	.byte	-3
   2C22 06                10103 	.byte	6
   2C23 00                10104 	.byte	0
   2C24 09                10105 	.byte	9
   2C25 16                10106 	.byte	22
   2C26 FF                10107 	.byte	-1
   2C27 FC                10108 	.byte	-4
   2C28 06                10109 	.byte	6
   2C29 00                10110 	.byte	0
   2C2A 13                10111 	.byte	19
   2C2B F8                10112 	.byte	-8
   2C2C FF                10113 	.byte	-1
   2C2D FB                10114 	.byte	-5
   2C2E 06                10115 	.byte	6
   2C2F 00                10116 	.byte	0
   2C30 FF                10117 	.byte	-1
   2C31 DF                10118 	.byte	-33
   2C32 FF                10119 	.byte	-1
   2C33 FB                10120 	.byte	-5
   2C34 05                10121 	.byte	5
   2C35 00                10122 	.byte	0
   2C36 F3                10123 	.byte	-13
   2C37 02                10124 	.byte	2
   2C38 FF                10125 	.byte	-1
   2C39 05                10126 	.byte	5
   2C3A 1C                10127 	.byte	28
   2C3B FF                10128 	.byte	-1
   2C3C 0E                10129 	.byte	14
   2C3D FE                10130 	.byte	-2
   2C3E FF                10131 	.byte	-1
   2C3F FA                10132 	.byte	-6
   2C40 E4                10133 	.byte	-28
   2C41 FF                10134 	.byte	-1
   2C42 F3                10135 	.byte	-13
   2C43 02                10136 	.byte	2
   2C44 01                10137 	.byte	1
                          10138 	.globl	_width2RollingBack10
   2C45                   10139 _width2RollingBack10:
   2C45 00                10140 	.byte	0
   2C46 12                10141 	.byte	18
   2C47 FD                10142 	.byte	-3
   2C48 FF                10143 	.byte	-1
   2C49 06                10144 	.byte	6
   2C4A 1B                10145 	.byte	27
   2C4B FF                10146 	.byte	-1
   2C4C F6                10147 	.byte	-10
   2C4D FE                10148 	.byte	-2
   2C4E FF                10149 	.byte	-1
   2C4F FA                10150 	.byte	-6
   2C50 E5                10151 	.byte	-27
   2C51 FF                10152 	.byte	-1
   2C52 0A                10153 	.byte	10
   2C53 02                10154 	.byte	2
   2C54 FF                10155 	.byte	-1
   2C55 0C                10156 	.byte	12
   2C56 FA                10157 	.byte	-6
   2C57 00                10158 	.byte	0
   2C58 FA                10159 	.byte	-6
   2C59 21                10160 	.byte	33
   2C5A FF                10161 	.byte	-1
   2C5B 0C                10162 	.byte	12
   2C5C FA                10163 	.byte	-6
   2C5D 00                10164 	.byte	0
   2C5E EA                10165 	.byte	-22
   2C5F 04                10166 	.byte	4
   2C60 FF                10167 	.byte	-1
   2C61 0B                10168 	.byte	11
   2C62 FA                10169 	.byte	-6
   2C63 00                10170 	.byte	0
   2C64 EF                10171 	.byte	-17
   2C65 EB                10172 	.byte	-21
   2C66 FF                10173 	.byte	-1
   2C67 0B                10174 	.byte	11
   2C68 FA                10175 	.byte	-6
   2C69 00                10176 	.byte	0
   2C6A 0B                10177 	.byte	11
   2C6B 02                10178 	.byte	2
   2C6C FF                10179 	.byte	-1
   2C6D 06                10180 	.byte	6
   2C6E 1B                10181 	.byte	27
   2C6F FF                10182 	.byte	-1
   2C70 F5                10183 	.byte	-11
   2C71 FE                10184 	.byte	-2
   2C72 FF                10185 	.byte	-1
   2C73 FA                10186 	.byte	-6
   2C74 E5                10187 	.byte	-27
   2C75 FF                10188 	.byte	-1
   2C76 0B                10189 	.byte	11
   2C77 02                10190 	.byte	2
   2C78 01                10191 	.byte	1
                          10192 	.globl	_height1FallingLeft10
   2C79                   10193 _height1FallingLeft10:
   2C79 FF                10194 	.byte	-1
   2C7A 0D                10195 	.byte	13
   2C7B 04                10196 	.byte	4
   2C7C FF                10197 	.byte	-1
   2C7D 08                10198 	.byte	8
   2C7E FB                10199 	.byte	-5
   2C7F FF                10200 	.byte	-1
   2C80 F3                10201 	.byte	-13
   2C81 FC                10202 	.byte	-4
   2C82 FF                10203 	.byte	-1
   2C83 F8                10204 	.byte	-8
   2C84 05                10205 	.byte	5
   2C85 FF                10206 	.byte	-1
   2C86 00                10207 	.byte	0
   2C87 F3                10208 	.byte	-13
   2C88 00                10209 	.byte	0
   2C89 0D                10210 	.byte	13
   2C8A 11                10211 	.byte	17
   2C8B FF                10212 	.byte	-1
   2C8C 01                10213 	.byte	1
   2C8D F3                10214 	.byte	-13
   2C8E 00                10215 	.byte	0
   2C8F 07                10216 	.byte	7
   2C90 08                10217 	.byte	8
   2C91 FF                10218 	.byte	-1
   2C92 01                10219 	.byte	1
   2C93 F2                10220 	.byte	-14
   2C94 00                10221 	.byte	0
   2C95 F2                10222 	.byte	-14
   2C96 0A                10223 	.byte	10
   2C97 FF                10224 	.byte	-1
   2C98 00                10225 	.byte	0
   2C99 F2                10226 	.byte	-14
   2C9A 00                10227 	.byte	0
   2C9B F8                10228 	.byte	-8
   2C9C 06                10229 	.byte	6
   2C9D FF                10230 	.byte	-1
   2C9E 0E                10231 	.byte	14
   2C9F 04                10232 	.byte	4
   2CA0 FF                10233 	.byte	-1
   2CA1 08                10234 	.byte	8
   2CA2 FA                10235 	.byte	-6
   2CA3 FF                10236 	.byte	-1
   2CA4 F2                10237 	.byte	-14
   2CA5 FC                10238 	.byte	-4
   2CA6 FF                10239 	.byte	-1
   2CA7 F8                10240 	.byte	-8
   2CA8 06                10241 	.byte	6
   2CA9 01                10242 	.byte	1
                          10243 	.globl	_height1FallingRight10
   2CAA                   10244 _height1FallingRight10:
   2CAA 00                10245 	.byte	0
   2CAB 0F                10246 	.byte	15
   2CAC 0A                10247 	.byte	10
   2CAD FF                10248 	.byte	-1
   2CAE F4                10249 	.byte	-12
   2CAF 04                10250 	.byte	4
   2CB0 FF                10251 	.byte	-1
   2CB1 08                10252 	.byte	8
   2CB2 FA                10253 	.byte	-6
   2CB3 FF                10254 	.byte	-1
   2CB4 0C                10255 	.byte	12
   2CB5 FC                10256 	.byte	-4
   2CB6 FF                10257 	.byte	-1
   2CB7 F8                10258 	.byte	-8
   2CB8 06                10259 	.byte	6
   2CB9 FF                10260 	.byte	-1
   2CBA 06                10261 	.byte	6
   2CBB 0E                10262 	.byte	14
   2CBC 00                10263 	.byte	0
   2CBD EE                10264 	.byte	-18
   2CBE F6                10265 	.byte	-10
   2CBF FF                10266 	.byte	-1
   2CC0 06                10267 	.byte	6
   2CC1 0E                10268 	.byte	14
   2CC2 00                10269 	.byte	0
   2CC3 02                10270 	.byte	2
   2CC4 EC                10271 	.byte	-20
   2CC5 FF                10272 	.byte	-1
   2CC6 06                10273 	.byte	6
   2CC7 0E                10274 	.byte	14
   2CC8 00                10275 	.byte	0
   2CC9 06                10276 	.byte	6
   2CCA EE                10277 	.byte	-18
   2CCB FF                10278 	.byte	-1
   2CCC 06                10279 	.byte	6
   2CCD 0E                10280 	.byte	14
   2CCE 00                10281 	.byte	0
   2CCF F8                10282 	.byte	-8
   2CD0 06                10283 	.byte	6
   2CD1 FF                10284 	.byte	-1
   2CD2 F4                10285 	.byte	-12
   2CD3 04                10286 	.byte	4
   2CD4 FF                10287 	.byte	-1
   2CD5 08                10288 	.byte	8
   2CD6 FA                10289 	.byte	-6
   2CD7 FF                10290 	.byte	-1
   2CD8 0C                10291 	.byte	12
   2CD9 FC                10292 	.byte	-4
   2CDA FF                10293 	.byte	-1
   2CDB F8                10294 	.byte	-8
   2CDC 06                10295 	.byte	6
   2CDD 01                10296 	.byte	1
                          10297 	.globl	_height1FallingBack10
   2CDE                   10298 _height1FallingBack10:
   2CDE 00                10299 	.byte	0
   2CDF 12                10300 	.byte	18
   2CE0 FD                10301 	.byte	-3
   2CE1 FF                10302 	.byte	-1
   2CE2 03                10303 	.byte	3
   2CE3 0D                10304 	.byte	13
   2CE4 FF                10305 	.byte	-1
   2CE5 F6                10306 	.byte	-10
   2CE6 FE                10307 	.byte	-2
   2CE7 FF                10308 	.byte	-1
   2CE8 FD                10309 	.byte	-3
   2CE9 F3                10310 	.byte	-13
   2CEA FF                10311 	.byte	-1
   2CEB 0A                10312 	.byte	10
   2CEC 02                10313 	.byte	2
   2CED FF                10314 	.byte	-1
   2CEE 0C                10315 	.byte	12
   2CEF FA                10316 	.byte	-6
   2CF0 00                10317 	.byte	0
   2CF1 F7                10318 	.byte	-9
   2CF2 13                10319 	.byte	19
   2CF3 FF                10320 	.byte	-1
   2CF4 0C                10321 	.byte	12
   2CF5 FA                10322 	.byte	-6
   2CF6 00                10323 	.byte	0
   2CF7 EA                10324 	.byte	-22
   2CF8 04                10325 	.byte	4
   2CF9 FF                10326 	.byte	-1
   2CFA 0B                10327 	.byte	11
   2CFB FA                10328 	.byte	-6
   2CFC 00                10329 	.byte	0
   2CFD F2                10330 	.byte	-14
   2CFE F9                10331 	.byte	-7
   2CFF FF                10332 	.byte	-1
   2D00 0B                10333 	.byte	11
   2D01 FA                10334 	.byte	-6
   2D02 00                10335 	.byte	0
   2D03 0B                10336 	.byte	11
   2D04 02                10337 	.byte	2
   2D05 FF                10338 	.byte	-1
   2D06 03                10339 	.byte	3
   2D07 0D                10340 	.byte	13
   2D08 FF                10341 	.byte	-1
   2D09 F5                10342 	.byte	-11
   2D0A FE                10343 	.byte	-2
   2D0B FF                10344 	.byte	-1
   2D0C FD                10345 	.byte	-3
   2D0D F3                10346 	.byte	-13
   2D0E FF                10347 	.byte	-1
   2D0F 0B                10348 	.byte	11
   2D10 02                10349 	.byte	2
   2D11 01                10350 	.byte	1
                          10351 	.globl	_height1FallingFront10
   2D12                   10352 _height1FallingFront10:
   2D12 FF                10353 	.byte	-1
   2D13 03                10354 	.byte	3
   2D14 0E                10355 	.byte	14
   2D15 FF                10356 	.byte	-1
   2D16 0F                10357 	.byte	15
   2D17 FE                10358 	.byte	-2
   2D18 FF                10359 	.byte	-1
   2D19 FD                10360 	.byte	-3
   2D1A F3                10361 	.byte	-13
   2D1B FF                10362 	.byte	-1
   2D1C F1                10363 	.byte	-15
   2D1D 01                10364 	.byte	1
   2D1E FF                10365 	.byte	-1
   2D1F FD                10366 	.byte	-3
   2D20 06                10367 	.byte	6
   2D21 00                10368 	.byte	0
   2D22 06                10369 	.byte	6
   2D23 08                10370 	.byte	8
   2D24 FF                10371 	.byte	-1
   2D25 FD                10372 	.byte	-3
   2D26 06                10373 	.byte	6
   2D27 00                10374 	.byte	0
   2D28 12                10375 	.byte	18
   2D29 F8                10376 	.byte	-8
   2D2A FF                10377 	.byte	-1
   2D2B FB                10378 	.byte	-5
   2D2C 06                10379 	.byte	6
   2D2D 00                10380 	.byte	0
   2D2E 02                10381 	.byte	2
   2D2F ED                10382 	.byte	-19
   2D30 FF                10383 	.byte	-1
   2D31 FB                10384 	.byte	-5
   2D32 05                10385 	.byte	5
   2D33 00                10386 	.byte	0
   2D34 F3                10387 	.byte	-13
   2D35 02                10388 	.byte	2
   2D36 FF                10389 	.byte	-1
   2D37 03                10390 	.byte	3
   2D38 0E                10391 	.byte	14
   2D39 FF                10392 	.byte	-1
   2D3A 0D                10393 	.byte	13
   2D3B FE                10394 	.byte	-2
   2D3C FF                10395 	.byte	-1
   2D3D FD                10396 	.byte	-3
   2D3E F2                10397 	.byte	-14
   2D3F FF                10398 	.byte	-1
   2D40 F3                10399 	.byte	-13
   2D41 02                10400 	.byte	2
   2D42 01                10401 	.byte	1
                          10402 	.globl	_height2FallingLeft11
   2D43                   10403 _height2FallingLeft11:
   2D43 FF                10404 	.byte	-1
   2D44 0D                10405 	.byte	13
   2D45 02                10406 	.byte	2
   2D46 FF                10407 	.byte	-1
   2D47 08                10408 	.byte	8
   2D48 FB                10409 	.byte	-5
   2D49 FF                10410 	.byte	-1
   2D4A F3                10411 	.byte	-13
   2D4B FE                10412 	.byte	-2
   2D4C FF                10413 	.byte	-1
   2D4D F8                10414 	.byte	-8
   2D4E 05                10415 	.byte	5
   2D4F FF                10416 	.byte	-1
   2D50 FE                10417 	.byte	-2
   2D51 E5                10418 	.byte	-27
   2D52 00                10419 	.byte	0
   2D53 0F                10420 	.byte	15
   2D54 1D                10421 	.byte	29
   2D55 FF                10422 	.byte	-1
   2D56 FE                10423 	.byte	-2
   2D57 E5                10424 	.byte	-27
   2D58 00                10425 	.byte	0
   2D59 0A                10426 	.byte	10
   2D5A 16                10427 	.byte	22
   2D5B FF                10428 	.byte	-1
   2D5C FE                10429 	.byte	-2
   2D5D E4                10430 	.byte	-28
   2D5E 00                10431 	.byte	0
   2D5F F5                10432 	.byte	-11
   2D60 1A                10433 	.byte	26
   2D61 FF                10434 	.byte	-1
   2D62 FD                10435 	.byte	-3
   2D63 E4                10436 	.byte	-28
   2D64 00                10437 	.byte	0
   2D65 F9                10438 	.byte	-7
   2D66 06                10439 	.byte	6
   2D67 FF                10440 	.byte	-1
   2D68 0D                10441 	.byte	13
   2D69 02                10442 	.byte	2
   2D6A FF                10443 	.byte	-1
   2D6B 08                10444 	.byte	8
   2D6C FA                10445 	.byte	-6
   2D6D FF                10446 	.byte	-1
   2D6E F2                10447 	.byte	-14
   2D6F FE                10448 	.byte	-2
   2D70 FF                10449 	.byte	-1
   2D71 F9                10450 	.byte	-7
   2D72 06                10451 	.byte	6
   2D73 01                10452 	.byte	1
                          10453 	.globl	_height2RisingRight11
   2D74                   10454 _height2RisingRight11:
   2D74 00                10455 	.byte	0
   2D75 06                10456 	.byte	6
   2D76 1C                10457 	.byte	28
   2D77 FF                10458 	.byte	-1
   2D78 03                10459 	.byte	3
   2D79 0E                10460 	.byte	14
   2D7A FF                10461 	.byte	-1
   2D7B 08                10462 	.byte	8
   2D7C FA                10463 	.byte	-6
   2D7D FF                10464 	.byte	-1
   2D7E FD                10465 	.byte	-3
   2D7F F2                10466 	.byte	-14
   2D80 FF                10467 	.byte	-1
   2D81 F8                10468 	.byte	-8
   2D82 06                10469 	.byte	6
   2D83 FF                10470 	.byte	-1
   2D84 1A                10471 	.byte	26
   2D85 00                10472 	.byte	0
   2D86 00                10473 	.byte	0
   2D87 E9                10474 	.byte	-23
   2D88 0E                10475 	.byte	14
   2D89 FF                10476 	.byte	-1
   2D8A 1A                10477 	.byte	26
   2D8B 00                10478 	.byte	0
   2D8C 00                10479 	.byte	0
   2D8D EE                10480 	.byte	-18
   2D8E FA                10481 	.byte	-6
   2D8F FF                10482 	.byte	-1
   2D90 1A                10483 	.byte	26
   2D91 00                10484 	.byte	0
   2D92 00                10485 	.byte	0
   2D93 E3                10486 	.byte	-29
   2D94 F2                10487 	.byte	-14
   2D95 FF                10488 	.byte	-1
   2D96 1A                10489 	.byte	26
   2D97 00                10490 	.byte	0
   2D98 00                10491 	.byte	0
   2D99 F8                10492 	.byte	-8
   2D9A 06                10493 	.byte	6
   2D9B FF                10494 	.byte	-1
   2D9C 03                10495 	.byte	3
   2D9D 0E                10496 	.byte	14
   2D9E FF                10497 	.byte	-1
   2D9F 08                10498 	.byte	8
   2DA0 FA                10499 	.byte	-6
   2DA1 FF                10500 	.byte	-1
   2DA2 FD                10501 	.byte	-3
   2DA3 F2                10502 	.byte	-14
   2DA4 FF                10503 	.byte	-1
   2DA5 F8                10504 	.byte	-8
   2DA6 06                10505 	.byte	6
   2DA7 01                10506 	.byte	1
                          10507 	.globl	_height2FallingRight11
   2DA8                   10508 _height2FallingRight11:
   2DA8 00                10509 	.byte	0
   2DA9 0F                10510 	.byte	15
   2DAA 0C                10511 	.byte	12
   2DAB FF                10512 	.byte	-1
   2DAC F4                10513 	.byte	-12
   2DAD 02                10514 	.byte	2
   2DAE FF                10515 	.byte	-1
   2DAF 08                10516 	.byte	8
   2DB0 FA                10517 	.byte	-6
   2DB1 FF                10518 	.byte	-1
   2DB2 0C                10519 	.byte	12
   2DB3 FE                10520 	.byte	-2
   2DB4 FF                10521 	.byte	-1
   2DB5 F8                10522 	.byte	-8
   2DB6 06                10523 	.byte	6
   2DB7 FF                10524 	.byte	-1
   2DB8 0A                10525 	.byte	10
   2DB9 1C                10526 	.byte	28
   2DBA 00                10527 	.byte	0
   2DBB EA                10528 	.byte	-22
   2DBC E6                10529 	.byte	-26
   2DBD FF                10530 	.byte	-1
   2DBE 09                10531 	.byte	9
   2DBF 1C                10532 	.byte	28
   2DC0 00                10533 	.byte	0
   2DC1 FF                10534 	.byte	-1
   2DC2 DE                10535 	.byte	-34
   2DC3 FF                10536 	.byte	-1
   2DC4 09                10537 	.byte	9
   2DC5 1C                10538 	.byte	28
   2DC6 00                10539 	.byte	0
   2DC7 03                10540 	.byte	3
   2DC8 E2                10541 	.byte	-30
   2DC9 FF                10542 	.byte	-1
   2DCA 0A                10543 	.byte	10
   2DCB 1C                10544 	.byte	28
   2DCC 00                10545 	.byte	0
   2DCD F8                10546 	.byte	-8
   2DCE 06                10547 	.byte	6
   2DCF FF                10548 	.byte	-1
   2DD0 F3                10549 	.byte	-13
   2DD1 02                10550 	.byte	2
   2DD2 FF                10551 	.byte	-1
   2DD3 08                10552 	.byte	8
   2DD4 FA                10553 	.byte	-6
   2DD5 FF                10554 	.byte	-1
   2DD6 0D                10555 	.byte	13
   2DD7 FE                10556 	.byte	-2
   2DD8 FF                10557 	.byte	-1
   2DD9 F8                10558 	.byte	-8
   2DDA 06                10559 	.byte	6
   2DDB 01                10560 	.byte	1
                          10561 	.globl	_height2RisingLeft11
   2DDC                   10562 _height2RisingLeft11:
   2DDC 00                10563 	.byte	0
   2DDD FE                10564 	.byte	-2
   2DDE F3                10565 	.byte	-13
   2DDF FF                10566 	.byte	-1
   2DE0 02                10567 	.byte	2
   2DE1 0D                10568 	.byte	13
   2DE2 FF                10569 	.byte	-1
   2DE3 08                10570 	.byte	8
   2DE4 FB                10571 	.byte	-5
   2DE5 FF                10572 	.byte	-1
   2DE6 FD                10573 	.byte	-3
   2DE7 F2                10574 	.byte	-14
   2DE8 FF                10575 	.byte	-1
   2DE9 F9                10576 	.byte	-7
   2DEA 06                10577 	.byte	6
   2DEB FF                10578 	.byte	-1
   2DEC 19                10579 	.byte	25
   2DED 00                10580 	.byte	0
   2DEE 00                10581 	.byte	0
   2DEF E9                10582 	.byte	-23
   2DF0 0D                10583 	.byte	13
   2DF1 FF                10584 	.byte	-1
   2DF2 1A                10585 	.byte	26
   2DF3 00                10586 	.byte	0
   2DF4 00                10587 	.byte	0
   2DF5 EE                10588 	.byte	-18
   2DF6 FB                10589 	.byte	-5
   2DF7 FF                10590 	.byte	-1
   2DF8 1A                10591 	.byte	26
   2DF9 00                10592 	.byte	0
   2DFA 00                10593 	.byte	0
   2DFB E3                10594 	.byte	-29
   2DFC F2                10595 	.byte	-14
   2DFD FF                10596 	.byte	-1
   2DFE 1A                10597 	.byte	26
   2DFF 00                10598 	.byte	0
   2E00 00                10599 	.byte	0
   2E01 F8                10600 	.byte	-8
   2E02 06                10601 	.byte	6
   2E03 FF                10602 	.byte	-1
   2E04 03                10603 	.byte	3
   2E05 0D                10604 	.byte	13
   2E06 FF                10605 	.byte	-1
   2E07 08                10606 	.byte	8
   2E08 FB                10607 	.byte	-5
   2E09 FF                10608 	.byte	-1
   2E0A FD                10609 	.byte	-3
   2E0B F2                10610 	.byte	-14
   2E0C FF                10611 	.byte	-1
   2E0D F8                10612 	.byte	-8
   2E0E 06                10613 	.byte	6
   2E0F 01                10614 	.byte	1
                          10615 	.globl	_height2FallingBack11
   2E10                   10616 _height2FallingBack11:
   2E10 00                10617 	.byte	0
   2E11 14                10618 	.byte	20
   2E12 FC                10619 	.byte	-4
   2E13 FF                10620 	.byte	-1
   2E14 03                10621 	.byte	3
   2E15 0D                10622 	.byte	13
   2E16 FF                10623 	.byte	-1
   2E17 F4                10624 	.byte	-12
   2E18 FF                10625 	.byte	-1
   2E19 FF                10626 	.byte	-1
   2E1A FD                10627 	.byte	-3
   2E1B F3                10628 	.byte	-13
   2E1C FF                10629 	.byte	-1
   2E1D 0C                10630 	.byte	12
   2E1E 01                10631 	.byte	1
   2E1F FF                10632 	.byte	-1
   2E20 13                10633 	.byte	19
   2E21 F4                10634 	.byte	-12
   2E22 00                10635 	.byte	0
   2E23 F0                10636 	.byte	-16
   2E24 19                10637 	.byte	25
   2E25 FF                10638 	.byte	-1
   2E26 13                10639 	.byte	19
   2E27 F5                10640 	.byte	-11
   2E28 00                10641 	.byte	0
   2E29 E1                10642 	.byte	-31
   2E2A 0A                10643 	.byte	10
   2E2B FF                10644 	.byte	-1
   2E2C 13                10645 	.byte	19
   2E2D F5                10646 	.byte	-11
   2E2E 00                10647 	.byte	0
   2E2F EA                10648 	.byte	-22
   2E30 FE                10649 	.byte	-2
   2E31 FF                10650 	.byte	-1
   2E32 13                10651 	.byte	19
   2E33 F4                10652 	.byte	-12
   2E34 00                10653 	.byte	0
   2E35 0C                10654 	.byte	12
   2E36 01                10655 	.byte	1
   2E37 FF                10656 	.byte	-1
   2E38 03                10657 	.byte	3
   2E39 0E                10658 	.byte	14
   2E3A FF                10659 	.byte	-1
   2E3B F4                10660 	.byte	-12
   2E3C FF                10661 	.byte	-1
   2E3D FF                10662 	.byte	-1
   2E3E FD                10663 	.byte	-3
   2E3F F2                10664 	.byte	-14
   2E40 FF                10665 	.byte	-1
   2E41 0C                10666 	.byte	12
   2E42 01                10667 	.byte	1
   2E43 01                10668 	.byte	1
                          10669 	.globl	_height2RisingFront11
   2E44                   10670 _height2RisingFront11:
   2E44 00                10671 	.byte	0
   2E45 F9                10672 	.byte	-7
   2E46 06                10673 	.byte	6
   2E47 FF                10674 	.byte	-1
   2E48 03                10675 	.byte	3
   2E49 0E                10676 	.byte	14
   2E4A FF                10677 	.byte	-1
   2E4B 07                10678 	.byte	7
   2E4C FA                10679 	.byte	-6
   2E4D FF                10680 	.byte	-1
   2E4E FD                10681 	.byte	-3
   2E4F F2                10682 	.byte	-14
   2E50 FF                10683 	.byte	-1
   2E51 F9                10684 	.byte	-7
   2E52 06                10685 	.byte	6
   2E53 FF                10686 	.byte	-1
   2E54 19                10687 	.byte	25
   2E55 00                10688 	.byte	0
   2E56 00                10689 	.byte	0
   2E57 EA                10690 	.byte	-22
   2E58 0E                10691 	.byte	14
   2E59 FF                10692 	.byte	-1
   2E5A 19                10693 	.byte	25
   2E5B 00                10694 	.byte	0
   2E5C 00                10695 	.byte	0
   2E5D EE                10696 	.byte	-18
   2E5E FA                10697 	.byte	-6
   2E5F FF                10698 	.byte	-1
   2E60 1A                10699 	.byte	26
   2E61 00                10700 	.byte	0
   2E62 00                10701 	.byte	0
   2E63 E3                10702 	.byte	-29
   2E64 F2                10703 	.byte	-14
   2E65 FF                10704 	.byte	-1
   2E66 1A                10705 	.byte	26
   2E67 00                10706 	.byte	0
   2E68 00                10707 	.byte	0
   2E69 F8                10708 	.byte	-8
   2E6A 06                10709 	.byte	6
   2E6B FF                10710 	.byte	-1
   2E6C 03                10711 	.byte	3
   2E6D 0E                10712 	.byte	14
   2E6E FF                10713 	.byte	-1
   2E6F 08                10714 	.byte	8
   2E70 FA                10715 	.byte	-6
   2E71 FF                10716 	.byte	-1
   2E72 FD                10717 	.byte	-3
   2E73 F2                10718 	.byte	-14
   2E74 FF                10719 	.byte	-1
   2E75 F8                10720 	.byte	-8
   2E76 06                10721 	.byte	6
   2E77 01                10722 	.byte	1
                          10723 	.globl	_height2FallingFront11
   2E78                   10724 _height2FallingFront11:
   2E78 FF                10725 	.byte	-1
   2E79 03                10726 	.byte	3
   2E7A 0E                10727 	.byte	14
   2E7B FF                10728 	.byte	-1
   2E7C 0E                10729 	.byte	14
   2E7D FF                10730 	.byte	-1
   2E7E FF                10731 	.byte	-1
   2E7F FD                10732 	.byte	-3
   2E80 F3                10733 	.byte	-13
   2E81 FF                10734 	.byte	-1
   2E82 F2                10735 	.byte	-14
   2E83 00                10736 	.byte	0
   2E84 FF                10737 	.byte	-1
   2E85 F5                10738 	.byte	-11
   2E86 0C                10739 	.byte	12
   2E87 00                10740 	.byte	0
   2E88 0E                10741 	.byte	14
   2E89 02                10742 	.byte	2
   2E8A FF                10743 	.byte	-1
   2E8B F5                10744 	.byte	-11
   2E8C 0C                10745 	.byte	12
   2E8D 00                10746 	.byte	0
   2E8E 19                10747 	.byte	25
   2E8F F3                10748 	.byte	-13
   2E90 FF                10749 	.byte	-1
   2E91 F3                10750 	.byte	-13
   2E92 0C                10751 	.byte	12
   2E93 00                10752 	.byte	0
   2E94 0A                10753 	.byte	10
   2E95 E7                10754 	.byte	-25
   2E96 FF                10755 	.byte	-1
   2E97 F3                10756 	.byte	-13
   2E98 0B                10757 	.byte	11
   2E99 00                10758 	.byte	0
   2E9A F4                10759 	.byte	-12
   2E9B 01                10760 	.byte	1
   2E9C FF                10761 	.byte	-1
   2E9D 03                10762 	.byte	3
   2E9E 0E                10763 	.byte	14
   2E9F FF                10764 	.byte	-1
   2EA0 0C                10765 	.byte	12
   2EA1 FF                10766 	.byte	-1
   2EA2 FF                10767 	.byte	-1
   2EA3 FD                10768 	.byte	-3
   2EA4 F2                10769 	.byte	-14
   2EA5 FF                10770 	.byte	-1
   2EA6 F4                10771 	.byte	-12
   2EA7 01                10772 	.byte	1
   2EA8 01                10773 	.byte	1
                          10774 	.globl	_height2RisingBack11
   2EA9                   10775 _height2RisingBack11:
   2EA9 00                10776 	.byte	0
   2EAA 10                10777 	.byte	16
   2EAB F5                10778 	.byte	-11
   2EAC FF                10779 	.byte	-1
   2EAD 03                10780 	.byte	3
   2EAE 0D                10781 	.byte	13
   2EAF FF                10782 	.byte	-1
   2EB0 08                10783 	.byte	8
   2EB1 FB                10784 	.byte	-5
   2EB2 FF                10785 	.byte	-1
   2EB3 FD                10786 	.byte	-3
   2EB4 F2                10787 	.byte	-14
   2EB5 FF                10788 	.byte	-1
   2EB6 F8                10789 	.byte	-8
   2EB7 06                10790 	.byte	6
   2EB8 FF                10791 	.byte	-1
   2EB9 1A                10792 	.byte	26
   2EBA 00                10793 	.byte	0
   2EBB 00                10794 	.byte	0
   2EBC E9                10795 	.byte	-23
   2EBD 0D                10796 	.byte	13
   2EBE FF                10797 	.byte	-1
   2EBF 1A                10798 	.byte	26
   2EC0 00                10799 	.byte	0
   2EC1 00                10800 	.byte	0
   2EC2 EE                10801 	.byte	-18
   2EC3 FB                10802 	.byte	-5
   2EC4 FF                10803 	.byte	-1
   2EC5 1A                10804 	.byte	26
   2EC6 00                10805 	.byte	0
   2EC7 00                10806 	.byte	0
   2EC8 E3                10807 	.byte	-29
   2EC9 F2                10808 	.byte	-14
   2ECA FF                10809 	.byte	-1
   2ECB 1A                10810 	.byte	26
   2ECC 00                10811 	.byte	0
   2ECD 00                10812 	.byte	0
   2ECE F8                10813 	.byte	-8
   2ECF 06                10814 	.byte	6
   2ED0 FF                10815 	.byte	-1
   2ED1 03                10816 	.byte	3
   2ED2 0D                10817 	.byte	13
   2ED3 FF                10818 	.byte	-1
   2ED4 08                10819 	.byte	8
   2ED5 FB                10820 	.byte	-5
   2ED6 FF                10821 	.byte	-1
   2ED7 FD                10822 	.byte	-3
   2ED8 F2                10823 	.byte	-14
   2ED9 FF                10824 	.byte	-1
   2EDA F8                10825 	.byte	-8
   2EDB 06                10826 	.byte	6
   2EDC 01                10827 	.byte	1
                          10828 	.globl	_depth2RollingLeft11
   2EDD                   10829 _depth2RollingLeft11:
   2EDD FF                10830 	.byte	-1
   2EDE 0D                10831 	.byte	13
   2EDF 02                10832 	.byte	2
   2EE0 FF                10833 	.byte	-1
   2EE1 10                10834 	.byte	16
   2EE2 F5                10835 	.byte	-11
   2EE3 FF                10836 	.byte	-1
   2EE4 F3                10837 	.byte	-13
   2EE5 FE                10838 	.byte	-2
   2EE6 FF                10839 	.byte	-1
   2EE7 F0                10840 	.byte	-16
   2EE8 0B                10841 	.byte	11
   2EE9 FF                10842 	.byte	-1
   2EEA 00                10843 	.byte	0
   2EEB F3                10844 	.byte	-13
   2EEC 00                10845 	.byte	0
   2EED 0D                10846 	.byte	13
   2EEE 0F                10847 	.byte	15
   2EEF FF                10848 	.byte	-1
   2EF0 FF                10849 	.byte	-1
   2EF1 F3                10850 	.byte	-13
   2EF2 00                10851 	.byte	0
   2EF3 11                10852 	.byte	17
   2EF4 02                10853 	.byte	2
   2EF5 FF                10854 	.byte	-1
   2EF6 FF                10855 	.byte	-1
   2EF7 F2                10856 	.byte	-14
   2EF8 00                10857 	.byte	0
   2EF9 F4                10858 	.byte	-12
   2EFA 0C                10859 	.byte	12
   2EFB FF                10860 	.byte	-1
   2EFC FF                10861 	.byte	-1
   2EFD F2                10862 	.byte	-14
   2EFE 00                10863 	.byte	0
   2EFF F1                10864 	.byte	-15
   2F00 0C                10865 	.byte	12
   2F01 FF                10866 	.byte	-1
   2F02 0C                10867 	.byte	12
   2F03 02                10868 	.byte	2
   2F04 FF                10869 	.byte	-1
   2F05 10                10870 	.byte	16
   2F06 F4                10871 	.byte	-12
   2F07 FF                10872 	.byte	-1
   2F08 F3                10873 	.byte	-13
   2F09 FE                10874 	.byte	-2
   2F0A FF                10875 	.byte	-1
   2F0B F1                10876 	.byte	-15
   2F0C 0C                10877 	.byte	12
   2F0D 01                10878 	.byte	1
                          10879 	.globl	_depth2RollingRight11
   2F0E                   10880 _depth2RollingRight11:
   2F0E 00                10881 	.byte	0
   2F0F 0F                10882 	.byte	15
   2F10 0C                10883 	.byte	12
   2F11 FF                10884 	.byte	-1
   2F12 F4                10885 	.byte	-12
   2F13 02                10886 	.byte	2
   2F14 FF                10887 	.byte	-1
   2F15 10                10888 	.byte	16
   2F16 F4                10889 	.byte	-12
   2F17 FF                10890 	.byte	-1
   2F18 0C                10891 	.byte	12
   2F19 FE                10892 	.byte	-2
   2F1A FF                10893 	.byte	-1
   2F1B F0                10894 	.byte	-16
   2F1C 0C                10895 	.byte	12
   2F1D FF                10896 	.byte	-1
   2F1E 05                10897 	.byte	5
   2F1F 0E                10898 	.byte	14
   2F20 00                10899 	.byte	0
   2F21 EF                10900 	.byte	-17
   2F22 F4                10901 	.byte	-12
   2F23 FF                10902 	.byte	-1
   2F24 05                10903 	.byte	5
   2F25 0E                10904 	.byte	14
   2F26 00                10905 	.byte	0
   2F27 0B                10906 	.byte	11
   2F28 E6                10907 	.byte	-26
   2F29 FF                10908 	.byte	-1
   2F2A 05                10909 	.byte	5
   2F2B 0E                10910 	.byte	14
   2F2C 00                10911 	.byte	0
   2F2D 07                10912 	.byte	7
   2F2E F0                10913 	.byte	-16
   2F2F FF                10914 	.byte	-1
   2F30 05                10915 	.byte	5
   2F31 0E                10916 	.byte	14
   2F32 00                10917 	.byte	0
   2F33 F0                10918 	.byte	-16
   2F34 0C                10919 	.byte	12
   2F35 FF                10920 	.byte	-1
   2F36 F4                10921 	.byte	-12
   2F37 02                10922 	.byte	2
   2F38 FF                10923 	.byte	-1
   2F39 10                10924 	.byte	16
   2F3A F4                10925 	.byte	-12
   2F3B FF                10926 	.byte	-1
   2F3C 0C                10927 	.byte	12
   2F3D FE                10928 	.byte	-2
   2F3E FF                10929 	.byte	-1
   2F3F F0                10930 	.byte	-16
   2F40 0C                10931 	.byte	12
   2F41 01                10932 	.byte	1
                          10933 	.globl	_width2RollingFront11
   2F42                   10934 _width2RollingFront11:
   2F42 FF                10935 	.byte	-1
   2F43 06                10936 	.byte	6
   2F44 1C                10937 	.byte	28
   2F45 FF                10938 	.byte	-1
   2F46 0E                10939 	.byte	14
   2F47 FF                10940 	.byte	-1
   2F48 FF                10941 	.byte	-1
   2F49 FA                10942 	.byte	-6
   2F4A E5                10943 	.byte	-27
   2F4B FF                10944 	.byte	-1
   2F4C F2                10945 	.byte	-14
   2F4D 00                10946 	.byte	0
   2F4E FF                10947 	.byte	-1
   2F4F FB                10948 	.byte	-5
   2F50 06                10949 	.byte	6
   2F51 00                10950 	.byte	0
   2F52 0B                10951 	.byte	11
   2F53 16                10952 	.byte	22
   2F54 FF                10953 	.byte	-1
   2F55 FA                10954 	.byte	-6
   2F56 06                10955 	.byte	6
   2F57 00                10956 	.byte	0
   2F58 14                10957 	.byte	20
   2F59 F9                10958 	.byte	-7
   2F5A FF                10959 	.byte	-1
   2F5B FA                10960 	.byte	-6
   2F5C 06                10961 	.byte	6
   2F5D 00                10962 	.byte	0
   2F5E 00                10963 	.byte	0
   2F5F DF                10964 	.byte	-33
   2F60 FF                10965 	.byte	-1
   2F61 FA                10966 	.byte	-6
   2F62 05                10967 	.byte	5
   2F63 00                10968 	.byte	0
   2F64 F3                10969 	.byte	-13
   2F65 01                10970 	.byte	1
   2F66 FF                10971 	.byte	-1
   2F67 05                10972 	.byte	5
   2F68 1C                10973 	.byte	28
   2F69 FF                10974 	.byte	-1
   2F6A 0E                10975 	.byte	14
   2F6B FF                10976 	.byte	-1
   2F6C FF                10977 	.byte	-1
   2F6D FA                10978 	.byte	-6
   2F6E E4                10979 	.byte	-28
   2F6F FF                10980 	.byte	-1
   2F70 F3                10981 	.byte	-13
   2F71 01                10982 	.byte	1
   2F72 01                10983 	.byte	1
                          10984 	.globl	_width2RollingBack11
   2F73                   10985 _width2RollingBack11:
   2F73 00                10986 	.byte	0
   2F74 14                10987 	.byte	20
   2F75 FC                10988 	.byte	-4
   2F76 FF                10989 	.byte	-1
   2F77 06                10990 	.byte	6
   2F78 1B                10991 	.byte	27
   2F79 FF                10992 	.byte	-1
   2F7A F4                10993 	.byte	-12
   2F7B FF                10994 	.byte	-1
   2F7C FF                10995 	.byte	-1
   2F7D FA                10996 	.byte	-6
   2F7E E5                10997 	.byte	-27
   2F7F FF                10998 	.byte	-1
   2F80 0C                10999 	.byte	12
   2F81 01                11000 	.byte	1
   2F82 FF                11001 	.byte	-1
   2F83 09                11002 	.byte	9
   2F84 FA                11003 	.byte	-6
   2F85 00                11004 	.byte	0
   2F86 FD                11005 	.byte	-3
   2F87 21                11006 	.byte	33
   2F88 FF                11007 	.byte	-1
   2F89 09                11008 	.byte	9
   2F8A FA                11009 	.byte	-6
   2F8B 00                11010 	.byte	0
   2F8C EB                11011 	.byte	-21
   2F8D 05                11012 	.byte	5
   2F8E FF                11013 	.byte	-1
   2F8F 0A                11014 	.byte	10
   2F90 FA                11015 	.byte	-6
   2F91 00                11016 	.byte	0
   2F92 F0                11017 	.byte	-16
   2F93 EB                11018 	.byte	-21
   2F94 FF                11019 	.byte	-1
   2F95 0A                11020 	.byte	10
   2F96 FA                11021 	.byte	-6
   2F97 00                11022 	.byte	0
   2F98 0B                11023 	.byte	11
   2F99 01                11024 	.byte	1
   2F9A FF                11025 	.byte	-1
   2F9B 06                11026 	.byte	6
   2F9C 1B                11027 	.byte	27
   2F9D FF                11028 	.byte	-1
   2F9E F5                11029 	.byte	-11
   2F9F FF                11030 	.byte	-1
   2FA0 FF                11031 	.byte	-1
   2FA1 FA                11032 	.byte	-6
   2FA2 E5                11033 	.byte	-27
   2FA3 FF                11034 	.byte	-1
   2FA4 0B                11035 	.byte	11
   2FA5 01                11036 	.byte	1
   2FA6 01                11037 	.byte	1
                          11038 	.globl	_height1FallingLeft11
   2FA7                   11039 _height1FallingLeft11:
   2FA7 FF                11040 	.byte	-1
   2FA8 0D                11041 	.byte	13
   2FA9 02                11042 	.byte	2
   2FAA FF                11043 	.byte	-1
   2FAB 08                11044 	.byte	8
   2FAC FB                11045 	.byte	-5
   2FAD FF                11046 	.byte	-1
   2FAE F3                11047 	.byte	-13
   2FAF FE                11048 	.byte	-2
   2FB0 FF                11049 	.byte	-1
   2FB1 F8                11050 	.byte	-8
   2FB2 05                11051 	.byte	5
   2FB3 FF                11052 	.byte	-1
   2FB4 00                11053 	.byte	0
   2FB5 F3                11054 	.byte	-13
   2FB6 00                11055 	.byte	0
   2FB7 0D                11056 	.byte	13
   2FB8 0F                11057 	.byte	15
   2FB9 FF                11058 	.byte	-1
   2FBA FF                11059 	.byte	-1
   2FBB F3                11060 	.byte	-13
   2FBC 00                11061 	.byte	0
   2FBD 09                11062 	.byte	9
   2FBE 08                11063 	.byte	8
   2FBF FF                11064 	.byte	-1
   2FC0 FF                11065 	.byte	-1
   2FC1 F2                11066 	.byte	-14
   2FC2 00                11067 	.byte	0
   2FC3 F4                11068 	.byte	-12
   2FC4 0C                11069 	.byte	12
   2FC5 FF                11070 	.byte	-1
   2FC6 FF                11071 	.byte	-1
   2FC7 F2                11072 	.byte	-14
   2FC8 00                11073 	.byte	0
   2FC9 F9                11074 	.byte	-7
   2FCA 06                11075 	.byte	6
   2FCB FF                11076 	.byte	-1
   2FCC 0C                11077 	.byte	12
   2FCD 02                11078 	.byte	2
   2FCE FF                11079 	.byte	-1
   2FCF 08                11080 	.byte	8
   2FD0 FA                11081 	.byte	-6
   2FD1 FF                11082 	.byte	-1
   2FD2 F3                11083 	.byte	-13
   2FD3 FE                11084 	.byte	-2
   2FD4 FF                11085 	.byte	-1
   2FD5 F9                11086 	.byte	-7
   2FD6 06                11087 	.byte	6
   2FD7 01                11088 	.byte	1
                          11089 	.globl	_height1FallingRight11
   2FD8                   11090 _height1FallingRight11:
   2FD8 00                11091 	.byte	0
   2FD9 0F                11092 	.byte	15
   2FDA 0C                11093 	.byte	12
   2FDB FF                11094 	.byte	-1
   2FDC F4                11095 	.byte	-12
   2FDD 02                11096 	.byte	2
   2FDE FF                11097 	.byte	-1
   2FDF 08                11098 	.byte	8
   2FE0 FA                11099 	.byte	-6
   2FE1 FF                11100 	.byte	-1
   2FE2 0C                11101 	.byte	12
   2FE3 FE                11102 	.byte	-2
   2FE4 FF                11103 	.byte	-1
   2FE5 F8                11104 	.byte	-8
   2FE6 06                11105 	.byte	6
   2FE7 FF                11106 	.byte	-1
   2FE8 05                11107 	.byte	5
   2FE9 0E                11108 	.byte	14
   2FEA 00                11109 	.byte	0
   2FEB EF                11110 	.byte	-17
   2FEC F4                11111 	.byte	-12
   2FED FF                11112 	.byte	-1
   2FEE 05                11113 	.byte	5
   2FEF 0E                11114 	.byte	14
   2FF0 00                11115 	.byte	0
   2FF1 03                11116 	.byte	3
   2FF2 EC                11117 	.byte	-20
   2FF3 FF                11118 	.byte	-1
   2FF4 05                11119 	.byte	5
   2FF5 0E                11120 	.byte	14
   2FF6 00                11121 	.byte	0
   2FF7 07                11122 	.byte	7
   2FF8 F0                11123 	.byte	-16
   2FF9 FF                11124 	.byte	-1
   2FFA 05                11125 	.byte	5
   2FFB 0E                11126 	.byte	14
   2FFC 00                11127 	.byte	0
   2FFD F8                11128 	.byte	-8
   2FFE 06                11129 	.byte	6
   2FFF FF                11130 	.byte	-1
   3000 F4                11131 	.byte	-12
   3001 02                11132 	.byte	2
   3002 FF                11133 	.byte	-1
   3003 08                11134 	.byte	8
   3004 FA                11135 	.byte	-6
   3005 FF                11136 	.byte	-1
   3006 0C                11137 	.byte	12
   3007 FE                11138 	.byte	-2
   3008 FF                11139 	.byte	-1
   3009 F8                11140 	.byte	-8
   300A 06                11141 	.byte	6
   300B 01                11142 	.byte	1
                          11143 	.globl	_height1FallingBack11
   300C                   11144 _height1FallingBack11:
   300C 00                11145 	.byte	0
   300D 14                11146 	.byte	20
   300E FC                11147 	.byte	-4
   300F FF                11148 	.byte	-1
   3010 03                11149 	.byte	3
   3011 0D                11150 	.byte	13
   3012 FF                11151 	.byte	-1
   3013 F4                11152 	.byte	-12
   3014 FF                11153 	.byte	-1
   3015 FF                11154 	.byte	-1
   3016 FD                11155 	.byte	-3
   3017 F3                11156 	.byte	-13
   3018 FF                11157 	.byte	-1
   3019 0C                11158 	.byte	12
   301A 01                11159 	.byte	1
   301B FF                11160 	.byte	-1
   301C 09                11161 	.byte	9
   301D FA                11162 	.byte	-6
   301E 00                11163 	.byte	0
   301F FA                11164 	.byte	-6
   3020 13                11165 	.byte	19
   3021 FF                11166 	.byte	-1
   3022 09                11167 	.byte	9
   3023 FA                11168 	.byte	-6
   3024 00                11169 	.byte	0
   3025 EB                11170 	.byte	-21
   3026 05                11171 	.byte	5
   3027 FF                11172 	.byte	-1
   3028 0A                11173 	.byte	10
   3029 FA                11174 	.byte	-6
   302A 00                11175 	.byte	0
   302B F3                11176 	.byte	-13
   302C F9                11177 	.byte	-7
   302D FF                11178 	.byte	-1
   302E 0A                11179 	.byte	10
   302F FA                11180 	.byte	-6
   3030 00                11181 	.byte	0
   3031 0B                11182 	.byte	11
   3032 01                11183 	.byte	1
   3033 FF                11184 	.byte	-1
   3034 03                11185 	.byte	3
   3035 0D                11186 	.byte	13
   3036 FF                11187 	.byte	-1
   3037 F5                11188 	.byte	-11
   3038 FF                11189 	.byte	-1
   3039 FF                11190 	.byte	-1
   303A FD                11191 	.byte	-3
   303B F3                11192 	.byte	-13
   303C FF                11193 	.byte	-1
   303D 0B                11194 	.byte	11
   303E 01                11195 	.byte	1
   303F 01                11196 	.byte	1
                          11197 	.globl	_height1FallingFront11
   3040                   11198 _height1FallingFront11:
   3040 FF                11199 	.byte	-1
   3041 03                11200 	.byte	3
   3042 0E                11201 	.byte	14
   3043 FF                11202 	.byte	-1
   3044 0E                11203 	.byte	14
   3045 FF                11204 	.byte	-1
   3046 FF                11205 	.byte	-1
   3047 FD                11206 	.byte	-3
   3048 F3                11207 	.byte	-13
   3049 FF                11208 	.byte	-1
   304A F2                11209 	.byte	-14
   304B 00                11210 	.byte	0
   304C FF                11211 	.byte	-1
   304D FB                11212 	.byte	-5
   304E 06                11213 	.byte	6
   304F 00                11214 	.byte	0
   3050 08                11215 	.byte	8
   3051 08                11216 	.byte	8
   3052 FF                11217 	.byte	-1
   3053 FB                11218 	.byte	-5
   3054 06                11219 	.byte	6
   3055 00                11220 	.byte	0
   3056 13                11221 	.byte	19
   3057 F9                11222 	.byte	-7
   3058 FF                11223 	.byte	-1
   3059 FA                11224 	.byte	-6
   305A 06                11225 	.byte	6
   305B 00                11226 	.byte	0
   305C 03                11227 	.byte	3
   305D ED                11228 	.byte	-19
   305E FF                11229 	.byte	-1
   305F FA                11230 	.byte	-6
   3060 05                11231 	.byte	5
   3061 00                11232 	.byte	0
   3062 F3                11233 	.byte	-13
   3063 01                11234 	.byte	1
   3064 FF                11235 	.byte	-1
   3065 03                11236 	.byte	3
   3066 0E                11237 	.byte	14
   3067 FF                11238 	.byte	-1
   3068 0D                11239 	.byte	13
   3069 FF                11240 	.byte	-1
   306A FF                11241 	.byte	-1
   306B FD                11242 	.byte	-3
   306C F2                11243 	.byte	-14
   306D FF                11244 	.byte	-1
   306E F3                11245 	.byte	-13
   306F 01                11246 	.byte	1
   3070 01                11247 	.byte	1
                          11248 	.globl	_height2FallingLeft12
   3071                   11249 _height2FallingLeft12:
   3071 FF                11250 	.byte	-1
   3072 0D                11251 	.byte	13
   3073 00                11252 	.byte	0
   3074 FF                11253 	.byte	-1
   3075 08                11254 	.byte	8
   3076 FB                11255 	.byte	-5
   3077 FF                11256 	.byte	-1
   3078 F3                11257 	.byte	-13
   3079 00                11258 	.byte	0
   307A FF                11259 	.byte	-1
   307B F8                11260 	.byte	-8
   307C 05                11261 	.byte	5
   307D FF                11262 	.byte	-1
   307E FB                11263 	.byte	-5
   307F E5                11264 	.byte	-27
   3080 00                11265 	.byte	0
   3081 12                11266 	.byte	18
   3082 1B                11267 	.byte	27
   3083 FF                11268 	.byte	-1
   3084 FA                11269 	.byte	-6
   3085 E5                11270 	.byte	-27
   3086 00                11271 	.byte	0
   3087 0E                11272 	.byte	14
   3088 16                11273 	.byte	22
   3089 FF                11274 	.byte	-1
   308A FA                11275 	.byte	-6
   308B E4                11276 	.byte	-28
   308C 00                11277 	.byte	0
   308D F9                11278 	.byte	-7
   308E 1C                11279 	.byte	28
   308F FF                11280 	.byte	-1
   3090 FA                11281 	.byte	-6
   3091 E4                11282 	.byte	-28
   3092 00                11283 	.byte	0
   3093 F9                11284 	.byte	-7
   3094 06                11285 	.byte	6
   3095 FF                11286 	.byte	-1
   3096 0C                11287 	.byte	12
   3097 00                11288 	.byte	0
   3098 FF                11289 	.byte	-1
   3099 08                11290 	.byte	8
   309A FA                11291 	.byte	-6
   309B FF                11292 	.byte	-1
   309C F3                11293 	.byte	-13
   309D 00                11294 	.byte	0
   309E FF                11295 	.byte	-1
   309F F9                11296 	.byte	-7
   30A0 06                11297 	.byte	6
   30A1 01                11298 	.byte	1
                          11299 	.globl	_height2RisingRight12
   30A2                   11300 _height2RisingRight12:
   30A2 00                11301 	.byte	0
   30A3 06                11302 	.byte	6
   30A4 1C                11303 	.byte	28
   30A5 FF                11304 	.byte	-1
   30A6 01                11305 	.byte	1
   30A7 0E                11306 	.byte	14
   30A8 FF                11307 	.byte	-1
   30A9 08                11308 	.byte	8
   30AA FA                11309 	.byte	-6
   30AB FF                11310 	.byte	-1
   30AC FF                11311 	.byte	-1
   30AD F2                11312 	.byte	-14
   30AE FF                11313 	.byte	-1
   30AF F8                11314 	.byte	-8
   30B0 06                11315 	.byte	6
   30B1 FF                11316 	.byte	-1
   30B2 1B                11317 	.byte	27
   30B3 04                11318 	.byte	4
   30B4 00                11319 	.byte	0
   30B5 E6                11320 	.byte	-26
   30B6 0A                11321 	.byte	10
   30B7 FF                11322 	.byte	-1
   30B8 1B                11323 	.byte	27
   30B9 04                11324 	.byte	4
   30BA 00                11325 	.byte	0
   30BB ED                11326 	.byte	-19
   30BC F6                11327 	.byte	-10
   30BD FF                11328 	.byte	-1
   30BE 1B                11329 	.byte	27
   30BF 04                11330 	.byte	4
   30C0 00                11331 	.byte	0
   30C1 E4                11332 	.byte	-28
   30C2 EE                11333 	.byte	-18
   30C3 FF                11334 	.byte	-1
   30C4 1B                11335 	.byte	27
   30C5 04                11336 	.byte	4
   30C6 00                11337 	.byte	0
   30C7 F8                11338 	.byte	-8
   30C8 06                11339 	.byte	6
   30C9 FF                11340 	.byte	-1
   30CA 01                11341 	.byte	1
   30CB 0E                11342 	.byte	14
   30CC FF                11343 	.byte	-1
   30CD 08                11344 	.byte	8
   30CE FA                11345 	.byte	-6
   30CF FF                11346 	.byte	-1
   30D0 FF                11347 	.byte	-1
   30D1 F2                11348 	.byte	-14
   30D2 FF                11349 	.byte	-1
   30D3 F8                11350 	.byte	-8
   30D4 06                11351 	.byte	6
   30D5 01                11352 	.byte	1
                          11353 	.globl	_height2FallingRight12
   30D6                   11354 _height2FallingRight12:
   30D6 00                11355 	.byte	0
   30D7 10                11356 	.byte	16
   30D8 0E                11357 	.byte	14
   30D9 FF                11358 	.byte	-1
   30DA F3                11359 	.byte	-13
   30DB 00                11360 	.byte	0
   30DC FF                11361 	.byte	-1
   30DD 08                11362 	.byte	8
   30DE FA                11363 	.byte	-6
   30DF FF                11364 	.byte	-1
   30E0 0D                11365 	.byte	13
   30E1 00                11366 	.byte	0
   30E2 FF                11367 	.byte	-1
   30E3 F8                11368 	.byte	-8
   30E4 06                11369 	.byte	6
   30E5 FF                11370 	.byte	-1
   30E6 06                11371 	.byte	6
   30E7 1C                11372 	.byte	28
   30E8 00                11373 	.byte	0
   30E9 ED                11374 	.byte	-19
   30EA E4                11375 	.byte	-28
   30EB FF                11376 	.byte	-1
   30EC 06                11377 	.byte	6
   30ED 1C                11378 	.byte	28
   30EE 00                11379 	.byte	0
   30EF 02                11380 	.byte	2
   30F0 DE                11381 	.byte	-34
   30F1 FF                11382 	.byte	-1
   30F2 06                11383 	.byte	6
   30F3 1C                11384 	.byte	28
   30F4 00                11385 	.byte	0
   30F5 07                11386 	.byte	7
   30F6 E4                11387 	.byte	-28
   30F7 FF                11388 	.byte	-1
   30F8 06                11389 	.byte	6
   30F9 1C                11390 	.byte	28
   30FA 00                11391 	.byte	0
   30FB F8                11392 	.byte	-8
   30FC 06                11393 	.byte	6
   30FD FF                11394 	.byte	-1
   30FE F3                11395 	.byte	-13
   30FF 00                11396 	.byte	0
   3100 FF                11397 	.byte	-1
   3101 08                11398 	.byte	8
   3102 FA                11399 	.byte	-6
   3103 FF                11400 	.byte	-1
   3104 0D                11401 	.byte	13
   3105 00                11402 	.byte	0
   3106 FF                11403 	.byte	-1
   3107 F8                11404 	.byte	-8
   3108 06                11405 	.byte	6
   3109 01                11406 	.byte	1
                          11407 	.globl	_height2RisingLeft12
   310A                   11408 _height2RisingLeft12:
   310A 00                11409 	.byte	0
   310B FC                11410 	.byte	-4
   310C F3                11411 	.byte	-13
   310D FF                11412 	.byte	-1
   310E 04                11413 	.byte	4
   310F 0D                11414 	.byte	13
   3110 FF                11415 	.byte	-1
   3111 08                11416 	.byte	8
   3112 FB                11417 	.byte	-5
   3113 FF                11418 	.byte	-1
   3114 FB                11419 	.byte	-5
   3115 F2                11420 	.byte	-14
   3116 FF                11421 	.byte	-1
   3117 F9                11422 	.byte	-7
   3118 06                11423 	.byte	6
   3119 FF                11424 	.byte	-1
   311A 18                11425 	.byte	24
   311B FC                11426 	.byte	-4
   311C 00                11427 	.byte	0
   311D EC                11428 	.byte	-20
   311E 11                11429 	.byte	17
   311F FF                11430 	.byte	-1
   3120 19                11431 	.byte	25
   3121 FD                11432 	.byte	-3
   3122 00                11433 	.byte	0
   3123 EF                11434 	.byte	-17
   3124 FE                11435 	.byte	-2
   3125 FF                11436 	.byte	-1
   3126 19                11437 	.byte	25
   3127 FC                11438 	.byte	-4
   3128 00                11439 	.byte	0
   3129 E2                11440 	.byte	-30
   312A F6                11441 	.byte	-10
   312B FF                11442 	.byte	-1
   312C 19                11443 	.byte	25
   312D FC                11444 	.byte	-4
   312E 00                11445 	.byte	0
   312F F8                11446 	.byte	-8
   3130 06                11447 	.byte	6
   3131 FF                11448 	.byte	-1
   3132 05                11449 	.byte	5
   3133 0E                11450 	.byte	14
   3134 FF                11451 	.byte	-1
   3135 08                11452 	.byte	8
   3136 FA                11453 	.byte	-6
   3137 FF                11454 	.byte	-1
   3138 FB                11455 	.byte	-5
   3139 F2                11456 	.byte	-14
   313A FF                11457 	.byte	-1
   313B F8                11458 	.byte	-8
   313C 06                11459 	.byte	6
   313D 01                11460 	.byte	1
                          11461 	.globl	_height2FallingBack12
   313E                   11462 _height2FallingBack12:
   313E 00                11463 	.byte	0
   313F 15                11464 	.byte	21
   3140 FB                11465 	.byte	-5
   3141 FF                11466 	.byte	-1
   3142 03                11467 	.byte	3
   3143 0D                11468 	.byte	13
   3144 FF                11469 	.byte	-1
   3145 F3                11470 	.byte	-13
   3146 00                11471 	.byte	0
   3147 FF                11472 	.byte	-1
   3148 FD                11473 	.byte	-3
   3149 F3                11474 	.byte	-13
   314A FF                11475 	.byte	-1
   314B 0D                11476 	.byte	13
   314C 00                11477 	.byte	0
   314D FF                11478 	.byte	-1
   314E 10                11479 	.byte	16
   314F F4                11480 	.byte	-12
   3150 00                11481 	.byte	0
   3151 F3                11482 	.byte	-13
   3152 19                11483 	.byte	25
   3153 FF                11484 	.byte	-1
   3154 10                11485 	.byte	16
   3155 F5                11486 	.byte	-11
   3156 00                11487 	.byte	0
   3157 E3                11488 	.byte	-29
   3158 0B                11489 	.byte	11
   3159 FF                11490 	.byte	-1
   315A 10                11491 	.byte	16
   315B F5                11492 	.byte	-11
   315C 00                11493 	.byte	0
   315D ED                11494 	.byte	-19
   315E FE                11495 	.byte	-2
   315F FF                11496 	.byte	-1
   3160 10                11497 	.byte	16
   3161 F4                11498 	.byte	-12
   3162 00                11499 	.byte	0
   3163 0D                11500 	.byte	13
   3164 00                11501 	.byte	0
   3165 FF                11502 	.byte	-1
   3166 03                11503 	.byte	3
   3167 0E                11504 	.byte	14
   3168 FF                11505 	.byte	-1
   3169 F3                11506 	.byte	-13
   316A 00                11507 	.byte	0
   316B FF                11508 	.byte	-1
   316C FD                11509 	.byte	-3
   316D F2                11510 	.byte	-14
   316E FF                11511 	.byte	-1
   316F 0D                11512 	.byte	13
   3170 00                11513 	.byte	0
   3171 01                11514 	.byte	1
                          11515 	.globl	_height2RisingFront12
   3172                   11516 _height2RisingFront12:
   3172 00                11517 	.byte	0
   3173 F7                11518 	.byte	-9
   3174 06                11519 	.byte	6
   3175 FF                11520 	.byte	-1
   3176 03                11521 	.byte	3
   3177 0E                11522 	.byte	14
   3178 FF                11523 	.byte	-1
   3179 09                11524 	.byte	9
   317A FA                11525 	.byte	-6
   317B FF                11526 	.byte	-1
   317C FD                11527 	.byte	-3
   317D F2                11528 	.byte	-14
   317E FF                11529 	.byte	-1
   317F F7                11530 	.byte	-9
   3180 06                11531 	.byte	6
   3181 FF                11532 	.byte	-1
   3182 17                11533 	.byte	23
   3183 02                11534 	.byte	2
   3184 00                11535 	.byte	0
   3185 EC                11536 	.byte	-20
   3186 0C                11537 	.byte	12
   3187 FF                11538 	.byte	-1
   3188 17                11539 	.byte	23
   3189 02                11540 	.byte	2
   318A 00                11541 	.byte	0
   318B F2                11542 	.byte	-14
   318C F8                11543 	.byte	-8
   318D FF                11544 	.byte	-1
   318E 18                11545 	.byte	24
   318F 02                11546 	.byte	2
   3190 00                11547 	.byte	0
   3191 E5                11548 	.byte	-27
   3192 F0                11549 	.byte	-16
   3193 FF                11550 	.byte	-1
   3194 18                11551 	.byte	24
   3195 02                11552 	.byte	2
   3196 00                11553 	.byte	0
   3197 F6                11554 	.byte	-10
   3198 06                11555 	.byte	6
   3199 FF                11556 	.byte	-1
   319A 03                11557 	.byte	3
   319B 0E                11558 	.byte	14
   319C FF                11559 	.byte	-1
   319D 0A                11560 	.byte	10
   319E FA                11561 	.byte	-6
   319F FF                11562 	.byte	-1
   31A0 FD                11563 	.byte	-3
   31A1 F2                11564 	.byte	-14
   31A2 FF                11565 	.byte	-1
   31A3 F6                11566 	.byte	-10
   31A4 06                11567 	.byte	6
   31A5 01                11568 	.byte	1
                          11569 	.globl	_height2FallingFront12
   31A6                   11570 _height2FallingFront12:
   31A6 FF                11571 	.byte	-1
   31A7 03                11572 	.byte	3
   31A8 0E                11573 	.byte	14
   31A9 FF                11574 	.byte	-1
   31AA 0D                11575 	.byte	13
   31AB 00                11576 	.byte	0
   31AC FF                11577 	.byte	-1
   31AD FD                11578 	.byte	-3
   31AE F2                11579 	.byte	-14
   31AF FF                11580 	.byte	-1
   31B0 F3                11581 	.byte	-13
   31B1 00                11582 	.byte	0
   31B2 FF                11583 	.byte	-1
   31B3 F1                11584 	.byte	-15
   31B4 0C                11585 	.byte	12
   31B5 00                11586 	.byte	0
   31B6 12                11587 	.byte	18
   31B7 02                11588 	.byte	2
   31B8 FF                11589 	.byte	-1
   31B9 F1                11590 	.byte	-15
   31BA 0C                11591 	.byte	12
   31BB 00                11592 	.byte	0
   31BC 1C                11593 	.byte	28
   31BD F4                11594 	.byte	-12
   31BE FF                11595 	.byte	-1
   31BF F0                11596 	.byte	-16
   31C0 0C                11597 	.byte	12
   31C1 00                11598 	.byte	0
   31C2 0D                11599 	.byte	13
   31C3 E6                11600 	.byte	-26
   31C4 FF                11601 	.byte	-1
   31C5 F1                11602 	.byte	-15
   31C6 0C                11603 	.byte	12
   31C7 00                11604 	.byte	0
   31C8 F3                11605 	.byte	-13
   31C9 00                11606 	.byte	0
   31CA FF                11607 	.byte	-1
   31CB 03                11608 	.byte	3
   31CC 0E                11609 	.byte	14
   31CD FF                11610 	.byte	-1
   31CE 0C                11611 	.byte	12
   31CF 00                11612 	.byte	0
   31D0 FF                11613 	.byte	-1
   31D1 FE                11614 	.byte	-2
   31D2 F2                11615 	.byte	-14
   31D3 FF                11616 	.byte	-1
   31D4 F3                11617 	.byte	-13
   31D5 00                11618 	.byte	0
   31D6 01                11619 	.byte	1
                          11620 	.globl	_height2RisingBack12
   31D7                   11621 _height2RisingBack12:
   31D7 00                11622 	.byte	0
   31D8 10                11623 	.byte	16
   31D9 F5                11624 	.byte	-11
   31DA FF                11625 	.byte	-1
   31DB 03                11626 	.byte	3
   31DC 0D                11627 	.byte	13
   31DD FF                11628 	.byte	-1
   31DE 06                11629 	.byte	6
   31DF FB                11630 	.byte	-5
   31E0 FF                11631 	.byte	-1
   31E1 FD                11632 	.byte	-3
   31E2 F2                11633 	.byte	-14
   31E3 FF                11634 	.byte	-1
   31E4 FA                11635 	.byte	-6
   31E5 06                11636 	.byte	6
   31E6 FF                11637 	.byte	-1
   31E7 1C                11638 	.byte	28
   31E8 FE                11639 	.byte	-2
   31E9 00                11640 	.byte	0
   31EA E7                11641 	.byte	-25
   31EB 0F                11642 	.byte	15
   31EC FF                11643 	.byte	-1
   31ED 1C                11644 	.byte	28
   31EE FE                11645 	.byte	-2
   31EF 00                11646 	.byte	0
   31F0 EA                11647 	.byte	-22
   31F1 FD                11648 	.byte	-3
   31F2 FF                11649 	.byte	-1
   31F3 1C                11650 	.byte	28
   31F4 FE                11651 	.byte	-2
   31F5 00                11652 	.byte	0
   31F6 E1                11653 	.byte	-31
   31F7 F4                11654 	.byte	-12
   31F8 FF                11655 	.byte	-1
   31F9 1C                11656 	.byte	28
   31FA FE                11657 	.byte	-2
   31FB 00                11658 	.byte	0
   31FC FA                11659 	.byte	-6
   31FD 06                11660 	.byte	6
   31FE FF                11661 	.byte	-1
   31FF 03                11662 	.byte	3
   3200 0D                11663 	.byte	13
   3201 FF                11664 	.byte	-1
   3202 06                11665 	.byte	6
   3203 FB                11666 	.byte	-5
   3204 FF                11667 	.byte	-1
   3205 FD                11668 	.byte	-3
   3206 F2                11669 	.byte	-14
   3207 FF                11670 	.byte	-1
   3208 FA                11671 	.byte	-6
   3209 06                11672 	.byte	6
   320A 01                11673 	.byte	1
                          11674 	.globl	_depth2RollingLeft12
   320B                   11675 _depth2RollingLeft12:
   320B FF                11676 	.byte	-1
   320C 0D                11677 	.byte	13
   320D 00                11678 	.byte	0
   320E FF                11679 	.byte	-1
   320F 10                11680 	.byte	16
   3210 F5                11681 	.byte	-11
   3211 FF                11682 	.byte	-1
   3212 F3                11683 	.byte	-13
   3213 00                11684 	.byte	0
   3214 FF                11685 	.byte	-1
   3215 F0                11686 	.byte	-16
   3216 0B                11687 	.byte	11
   3217 FF                11688 	.byte	-1
   3218 FE                11689 	.byte	-2
   3219 F3                11690 	.byte	-13
   321A 00                11691 	.byte	0
   321B 0F                11692 	.byte	15
   321C 0D                11693 	.byte	13
   321D FF                11694 	.byte	-1
   321E FD                11695 	.byte	-3
   321F F3                11696 	.byte	-13
   3220 00                11697 	.byte	0
   3221 13                11698 	.byte	19
   3222 02                11699 	.byte	2
   3223 FF                11700 	.byte	-1
   3224 FD                11701 	.byte	-3
   3225 F2                11702 	.byte	-14
   3226 00                11703 	.byte	0
   3227 F6                11704 	.byte	-10
   3228 0E                11705 	.byte	14
   3229 FF                11706 	.byte	-1
   322A FD                11707 	.byte	-3
   322B F2                11708 	.byte	-14
   322C 00                11709 	.byte	0
   322D F1                11710 	.byte	-15
   322E 0C                11711 	.byte	12
   322F FF                11712 	.byte	-1
   3230 0C                11713 	.byte	12
   3231 00                11714 	.byte	0
   3232 FF                11715 	.byte	-1
   3233 10                11716 	.byte	16
   3234 F4                11717 	.byte	-12
   3235 FF                11718 	.byte	-1
   3236 F3                11719 	.byte	-13
   3237 00                11720 	.byte	0
   3238 FF                11721 	.byte	-1
   3239 F1                11722 	.byte	-15
   323A 0C                11723 	.byte	12
   323B 01                11724 	.byte	1
                          11725 	.globl	_depth2RollingRight12
   323C                   11726 _depth2RollingRight12:
   323C 00                11727 	.byte	0
   323D 10                11728 	.byte	16
   323E 0E                11729 	.byte	14
   323F FF                11730 	.byte	-1
   3240 F3                11731 	.byte	-13
   3241 00                11732 	.byte	0
   3242 FF                11733 	.byte	-1
   3243 10                11734 	.byte	16
   3244 F4                11735 	.byte	-12
   3245 FF                11736 	.byte	-1
   3246 0D                11737 	.byte	13
   3247 00                11738 	.byte	0
   3248 FF                11739 	.byte	-1
   3249 F0                11740 	.byte	-16
   324A 0C                11741 	.byte	12
   324B FF                11742 	.byte	-1
   324C 03                11743 	.byte	3
   324D 0E                11744 	.byte	14
   324E 00                11745 	.byte	0
   324F F0                11746 	.byte	-16
   3250 F2                11747 	.byte	-14
   3251 FF                11748 	.byte	-1
   3252 03                11749 	.byte	3
   3253 0E                11750 	.byte	14
   3254 00                11751 	.byte	0
   3255 0D                11752 	.byte	13
   3256 E6                11753 	.byte	-26
   3257 FF                11754 	.byte	-1
   3258 03                11755 	.byte	3
   3259 0E                11756 	.byte	14
   325A 00                11757 	.byte	0
   325B 0A                11758 	.byte	10
   325C F2                11759 	.byte	-14
   325D FF                11760 	.byte	-1
   325E 03                11761 	.byte	3
   325F 0E                11762 	.byte	14
   3260 00                11763 	.byte	0
   3261 F0                11764 	.byte	-16
   3262 0C                11765 	.byte	12
   3263 FF                11766 	.byte	-1
   3264 F3                11767 	.byte	-13
   3265 00                11768 	.byte	0
   3266 FF                11769 	.byte	-1
   3267 10                11770 	.byte	16
   3268 F4                11771 	.byte	-12
   3269 FF                11772 	.byte	-1
   326A 0D                11773 	.byte	13
   326B 00                11774 	.byte	0
   326C FF                11775 	.byte	-1
   326D F0                11776 	.byte	-16
   326E 0C                11777 	.byte	12
   326F 01                11778 	.byte	1
                          11779 	.globl	_width2RollingFront12
   3270                   11780 _width2RollingFront12:
   3270 FF                11781 	.byte	-1
   3271 06                11782 	.byte	6
   3272 1C                11783 	.byte	28
   3273 FF                11784 	.byte	-1
   3274 0D                11785 	.byte	13
   3275 00                11786 	.byte	0
   3276 FF                11787 	.byte	-1
   3277 FA                11788 	.byte	-6
   3278 E4                11789 	.byte	-28
   3279 FF                11790 	.byte	-1
   327A F3                11791 	.byte	-13
   327B 00                11792 	.byte	0
   327C FF                11793 	.byte	-1
   327D F9                11794 	.byte	-7
   327E 06                11795 	.byte	6
   327F 00                11796 	.byte	0
   3280 0D                11797 	.byte	13
   3281 16                11798 	.byte	22
   3282 FF                11799 	.byte	-1
   3283 F9                11800 	.byte	-7
   3284 06                11801 	.byte	6
   3285 00                11802 	.byte	0
   3286 14                11803 	.byte	20
   3287 FA                11804 	.byte	-6
   3288 FF                11805 	.byte	-1
   3289 F8                11806 	.byte	-8
   328A 06                11807 	.byte	6
   328B 00                11808 	.byte	0
   328C 02                11809 	.byte	2
   328D DE                11810 	.byte	-34
   328E FF                11811 	.byte	-1
   328F F8                11812 	.byte	-8
   3290 06                11813 	.byte	6
   3291 00                11814 	.byte	0
   3292 F4                11815 	.byte	-12
   3293 00                11816 	.byte	0
   3294 FF                11817 	.byte	-1
   3295 06                11818 	.byte	6
   3296 1C                11819 	.byte	28
   3297 FF                11820 	.byte	-1
   3298 0C                11821 	.byte	12
   3299 00                11822 	.byte	0
   329A FF                11823 	.byte	-1
   329B FA                11824 	.byte	-6
   329C E4                11825 	.byte	-28
   329D FF                11826 	.byte	-1
   329E F4                11827 	.byte	-12
   329F 00                11828 	.byte	0
   32A0 01                11829 	.byte	1
                          11830 	.globl	_width2RollingBack12
   32A1                   11831 _width2RollingBack12:
   32A1 00                11832 	.byte	0
   32A2 15                11833 	.byte	21
   32A3 FB                11834 	.byte	-5
   32A4 FF                11835 	.byte	-1
   32A5 06                11836 	.byte	6
   32A6 1B                11837 	.byte	27
   32A7 FF                11838 	.byte	-1
   32A8 F3                11839 	.byte	-13
   32A9 00                11840 	.byte	0
   32AA FF                11841 	.byte	-1
   32AB FA                11842 	.byte	-6
   32AC E5                11843 	.byte	-27
   32AD FF                11844 	.byte	-1
   32AE 0D                11845 	.byte	13
   32AF 00                11846 	.byte	0
   32B0 FF                11847 	.byte	-1
   32B1 08                11848 	.byte	8
   32B2 FA                11849 	.byte	-6
   32B3 00                11850 	.byte	0
   32B4 FE                11851 	.byte	-2
   32B5 21                11852 	.byte	33
   32B6 FF                11853 	.byte	-1
   32B7 08                11854 	.byte	8
   32B8 FA                11855 	.byte	-6
   32B9 00                11856 	.byte	0
   32BA EB                11857 	.byte	-21
   32BB 06                11858 	.byte	6
   32BC FF                11859 	.byte	-1
   32BD 08                11860 	.byte	8
   32BE FA                11861 	.byte	-6
   32BF 00                11862 	.byte	0
   32C0 F2                11863 	.byte	-14
   32C1 EB                11864 	.byte	-21
   32C2 FF                11865 	.byte	-1
   32C3 08                11866 	.byte	8
   32C4 FA                11867 	.byte	-6
   32C5 00                11868 	.byte	0
   32C6 0D                11869 	.byte	13
   32C7 00                11870 	.byte	0
   32C8 FF                11871 	.byte	-1
   32C9 06                11872 	.byte	6
   32CA 1B                11873 	.byte	27
   32CB FF                11874 	.byte	-1
   32CC F3                11875 	.byte	-13
   32CD 00                11876 	.byte	0
   32CE FF                11877 	.byte	-1
   32CF FA                11878 	.byte	-6
   32D0 E5                11879 	.byte	-27
   32D1 FF                11880 	.byte	-1
   32D2 0D                11881 	.byte	13
   32D3 00                11882 	.byte	0
   32D4 01                11883 	.byte	1
                          11884 	.globl	_height1FallingLeft12
   32D5                   11885 _height1FallingLeft12:
   32D5 FF                11886 	.byte	-1
   32D6 0D                11887 	.byte	13
   32D7 00                11888 	.byte	0
   32D8 FF                11889 	.byte	-1
   32D9 08                11890 	.byte	8
   32DA FB                11891 	.byte	-5
   32DB FF                11892 	.byte	-1
   32DC F3                11893 	.byte	-13
   32DD 00                11894 	.byte	0
   32DE FF                11895 	.byte	-1
   32DF F8                11896 	.byte	-8
   32E0 05                11897 	.byte	5
   32E1 FF                11898 	.byte	-1
   32E2 FE                11899 	.byte	-2
   32E3 F3                11900 	.byte	-13
   32E4 00                11901 	.byte	0
   32E5 0F                11902 	.byte	15
   32E6 0D                11903 	.byte	13
   32E7 FF                11904 	.byte	-1
   32E8 FD                11905 	.byte	-3
   32E9 F3                11906 	.byte	-13
   32EA 00                11907 	.byte	0
   32EB 0B                11908 	.byte	11
   32EC 08                11909 	.byte	8
   32ED FF                11910 	.byte	-1
   32EE FD                11911 	.byte	-3
   32EF F2                11912 	.byte	-14
   32F0 00                11913 	.byte	0
   32F1 F6                11914 	.byte	-10
   32F2 0E                11915 	.byte	14
   32F3 FF                11916 	.byte	-1
   32F4 FD                11917 	.byte	-3
   32F5 F2                11918 	.byte	-14
   32F6 00                11919 	.byte	0
   32F7 F9                11920 	.byte	-7
   32F8 06                11921 	.byte	6
   32F9 FF                11922 	.byte	-1
   32FA 0C                11923 	.byte	12
   32FB 00                11924 	.byte	0
   32FC FF                11925 	.byte	-1
   32FD 08                11926 	.byte	8
   32FE FA                11927 	.byte	-6
   32FF FF                11928 	.byte	-1
   3300 F3                11929 	.byte	-13
   3301 00                11930 	.byte	0
   3302 FF                11931 	.byte	-1
   3303 F9                11932 	.byte	-7
   3304 06                11933 	.byte	6
   3305 01                11934 	.byte	1
                          11935 	.globl	_height1FallingRight12
   3306                   11936 _height1FallingRight12:
   3306 00                11937 	.byte	0
   3307 10                11938 	.byte	16
   3308 0E                11939 	.byte	14
   3309 FF                11940 	.byte	-1
   330A F3                11941 	.byte	-13
   330B 00                11942 	.byte	0
   330C FF                11943 	.byte	-1
   330D 08                11944 	.byte	8
   330E FA                11945 	.byte	-6
   330F FF                11946 	.byte	-1
   3310 0D                11947 	.byte	13
   3311 00                11948 	.byte	0
   3312 FF                11949 	.byte	-1
   3313 F8                11950 	.byte	-8
   3314 06                11951 	.byte	6
   3315 FF                11952 	.byte	-1
   3316 03                11953 	.byte	3
   3317 0E                11954 	.byte	14
   3318 00                11955 	.byte	0
   3319 F0                11956 	.byte	-16
   331A F2                11957 	.byte	-14
   331B FF                11958 	.byte	-1
   331C 03                11959 	.byte	3
   331D 0E                11960 	.byte	14
   331E 00                11961 	.byte	0
   331F 05                11962 	.byte	5
   3320 EC                11963 	.byte	-20
   3321 FF                11964 	.byte	-1
   3322 03                11965 	.byte	3
   3323 0E                11966 	.byte	14
   3324 00                11967 	.byte	0
   3325 0A                11968 	.byte	10
   3326 F2                11969 	.byte	-14
   3327 FF                11970 	.byte	-1
   3328 03                11971 	.byte	3
   3329 0E                11972 	.byte	14
   332A 00                11973 	.byte	0
   332B F8                11974 	.byte	-8
   332C 06                11975 	.byte	6
   332D FF                11976 	.byte	-1
   332E F3                11977 	.byte	-13
   332F 00                11978 	.byte	0
   3330 FF                11979 	.byte	-1
   3331 08                11980 	.byte	8
   3332 FA                11981 	.byte	-6
   3333 FF                11982 	.byte	-1
   3334 0D                11983 	.byte	13
   3335 00                11984 	.byte	0
   3336 FF                11985 	.byte	-1
   3337 F8                11986 	.byte	-8
   3338 06                11987 	.byte	6
   3339 01                11988 	.byte	1
                          11989 	.globl	_height1FallingBack12
   333A                   11990 _height1FallingBack12:
   333A 00                11991 	.byte	0
   333B 15                11992 	.byte	21
   333C FB                11993 	.byte	-5
   333D FF                11994 	.byte	-1
   333E 03                11995 	.byte	3
   333F 0D                11996 	.byte	13
   3340 FF                11997 	.byte	-1
   3341 F3                11998 	.byte	-13
   3342 00                11999 	.byte	0
   3343 FF                12000 	.byte	-1
   3344 FD                12001 	.byte	-3
   3345 F3                12002 	.byte	-13
   3346 FF                12003 	.byte	-1
   3347 0D                12004 	.byte	13
   3348 00                12005 	.byte	0
   3349 FF                12006 	.byte	-1
   334A 08                12007 	.byte	8
   334B FA                12008 	.byte	-6
   334C 00                12009 	.byte	0
   334D FB                12010 	.byte	-5
   334E 13                12011 	.byte	19
   334F FF                12012 	.byte	-1
   3350 08                12013 	.byte	8
   3351 FA                12014 	.byte	-6
   3352 00                12015 	.byte	0
   3353 EB                12016 	.byte	-21
   3354 06                12017 	.byte	6
   3355 FF                12018 	.byte	-1
   3356 08                12019 	.byte	8
   3357 FA                12020 	.byte	-6
   3358 00                12021 	.byte	0
   3359 F5                12022 	.byte	-11
   335A F9                12023 	.byte	-7
   335B FF                12024 	.byte	-1
   335C 08                12025 	.byte	8
   335D FA                12026 	.byte	-6
   335E 00                12027 	.byte	0
   335F 0D                12028 	.byte	13
   3360 00                12029 	.byte	0
   3361 FF                12030 	.byte	-1
   3362 03                12031 	.byte	3
   3363 0D                12032 	.byte	13
   3364 FF                12033 	.byte	-1
   3365 F3                12034 	.byte	-13
   3366 00                12035 	.byte	0
   3367 FF                12036 	.byte	-1
   3368 FD                12037 	.byte	-3
   3369 F3                12038 	.byte	-13
   336A FF                12039 	.byte	-1
   336B 0D                12040 	.byte	13
   336C 00                12041 	.byte	0
   336D 01                12042 	.byte	1
                          12043 	.globl	_height1FallingFront12
   336E                   12044 _height1FallingFront12:
   336E FF                12045 	.byte	-1
   336F 03                12046 	.byte	3
   3370 0E                12047 	.byte	14
   3371 FF                12048 	.byte	-1
   3372 0D                12049 	.byte	13
   3373 00                12050 	.byte	0
   3374 FF                12051 	.byte	-1
   3375 FD                12052 	.byte	-3
   3376 F2                12053 	.byte	-14
   3377 FF                12054 	.byte	-1
   3378 F3                12055 	.byte	-13
   3379 00                12056 	.byte	0
   337A FF                12057 	.byte	-1
   337B F9                12058 	.byte	-7
   337C 06                12059 	.byte	6
   337D 00                12060 	.byte	0
   337E 0A                12061 	.byte	10
   337F 08                12062 	.byte	8
   3380 FF                12063 	.byte	-1
   3381 F9                12064 	.byte	-7
   3382 06                12065 	.byte	6
   3383 00                12066 	.byte	0
   3384 14                12067 	.byte	20
   3385 FA                12068 	.byte	-6
   3386 FF                12069 	.byte	-1
   3387 F8                12070 	.byte	-8
   3388 06                12071 	.byte	6
   3389 00                12072 	.byte	0
   338A 05                12073 	.byte	5
   338B EC                12074 	.byte	-20
   338C FF                12075 	.byte	-1
   338D F8                12076 	.byte	-8
   338E 06                12077 	.byte	6
   338F 00                12078 	.byte	0
   3390 F4                12079 	.byte	-12
   3391 00                12080 	.byte	0
   3392 FF                12081 	.byte	-1
   3393 03                12082 	.byte	3
   3394 0E                12083 	.byte	14
   3395 FF                12084 	.byte	-1
   3396 0C                12085 	.byte	12
   3397 00                12086 	.byte	0
   3398 FF                12087 	.byte	-1
   3399 FD                12088 	.byte	-3
   339A F2                12089 	.byte	-14
   339B FF                12090 	.byte	-1
   339C F4                12091 	.byte	-12
   339D 00                12092 	.byte	0
   339E 01                12093 	.byte	1
                          12094 	.globl	_height2FallingLeft
                          12095 	.area	.text
   339F                   12096 _height2FallingLeft:
   339F 0A 5B             12097 	.word	_height2FallingLeft0
   33A1 0D 77             12098 	.word	_height2FallingLeft1
   33A3 10 A5             12099 	.word	_height2FallingLeft2
   33A5 13 D3             12100 	.word	_height2FallingLeft3
   33A7 17 01             12101 	.word	_height2FallingLeft4
   33A9 1A 2F             12102 	.word	_height2FallingLeft5
   33AB 1D 5D             12103 	.word	_height2FallingLeft6
   33AD 20 8B             12104 	.word	_height2FallingLeft7
   33AF 23 B9             12105 	.word	_height2FallingLeft8
   33B1 26 E7             12106 	.word	_height2FallingLeft9
   33B3 2A 15             12107 	.word	_height2FallingLeft10
   33B5 2D 43             12108 	.word	_height2FallingLeft11
                          12109 	.globl	_height2RisingRight
   33B7                   12110 _height2RisingRight:
   33B7 0A 8C             12111 	.word	_height2RisingRight0
   33B9 0D A8             12112 	.word	_height2RisingRight1
   33BB 10 D6             12113 	.word	_height2RisingRight2
   33BD 14 04             12114 	.word	_height2RisingRight3
   33BF 17 32             12115 	.word	_height2RisingRight4
   33C1 1A 60             12116 	.word	_height2RisingRight5
   33C3 1D 8E             12117 	.word	_height2RisingRight6
   33C5 20 BC             12118 	.word	_height2RisingRight7
   33C7 23 EA             12119 	.word	_height2RisingRight8
   33C9 27 18             12120 	.word	_height2RisingRight9
   33CB 2A 46             12121 	.word	_height2RisingRight10
   33CD 2D 74             12122 	.word	_height2RisingRight11
                          12123 	.globl	_height2FallingRight
   33CF                   12124 _height2FallingRight:
   33CF 0A C0             12125 	.word	_height2FallingRight0
   33D1 0D DC             12126 	.word	_height2FallingRight1
   33D3 11 0A             12127 	.word	_height2FallingRight2
   33D5 14 38             12128 	.word	_height2FallingRight3
   33D7 17 66             12129 	.word	_height2FallingRight4
   33D9 1A 94             12130 	.word	_height2FallingRight5
   33DB 1D C2             12131 	.word	_height2FallingRight6
   33DD 20 F0             12132 	.word	_height2FallingRight7
   33DF 24 1E             12133 	.word	_height2FallingRight8
   33E1 27 4C             12134 	.word	_height2FallingRight9
   33E3 2A 7A             12135 	.word	_height2FallingRight10
   33E5 2D A8             12136 	.word	_height2FallingRight11
                          12137 	.globl	_height2RisingLeft
   33E7                   12138 _height2RisingLeft:
   33E7 0A F1             12139 	.word	_height2RisingLeft0
   33E9 0E 10             12140 	.word	_height2RisingLeft1
   33EB 11 3E             12141 	.word	_height2RisingLeft2
   33ED 14 6C             12142 	.word	_height2RisingLeft3
   33EF 17 9A             12143 	.word	_height2RisingLeft4
   33F1 1A C8             12144 	.word	_height2RisingLeft5
   33F3 1D F6             12145 	.word	_height2RisingLeft6
   33F5 21 24             12146 	.word	_height2RisingLeft7
   33F7 24 52             12147 	.word	_height2RisingLeft8
   33F9 27 80             12148 	.word	_height2RisingLeft9
   33FB 2A AE             12149 	.word	_height2RisingLeft10
   33FD 2D DC             12150 	.word	_height2RisingLeft11
                          12151 	.globl	_height2FallingBack
   33FF                   12152 _height2FallingBack:
   33FF 0B 25             12153 	.word	_height2FallingBack0
   3401 0E 44             12154 	.word	_height2FallingBack1
   3403 11 72             12155 	.word	_height2FallingBack2
   3405 14 A0             12156 	.word	_height2FallingBack3
   3407 17 CE             12157 	.word	_height2FallingBack4
   3409 1A FC             12158 	.word	_height2FallingBack5
   340B 1E 2A             12159 	.word	_height2FallingBack6
   340D 21 58             12160 	.word	_height2FallingBack7
   340F 24 86             12161 	.word	_height2FallingBack8
   3411 27 B4             12162 	.word	_height2FallingBack9
   3413 2A E2             12163 	.word	_height2FallingBack10
   3415 2E 10             12164 	.word	_height2FallingBack11
                          12165 	.globl	_height2RisingFront
   3417                   12166 _height2RisingFront:
   3417 0B 56             12167 	.word	_height2RisingFront0
   3419 0E 78             12168 	.word	_height2RisingFront1
   341B 11 A6             12169 	.word	_height2RisingFront2
   341D 14 D4             12170 	.word	_height2RisingFront3
   341F 18 02             12171 	.word	_height2RisingFront4
   3421 1B 30             12172 	.word	_height2RisingFront5
   3423 1E 5E             12173 	.word	_height2RisingFront6
   3425 21 8C             12174 	.word	_height2RisingFront7
   3427 24 BA             12175 	.word	_height2RisingFront8
   3429 27 E8             12176 	.word	_height2RisingFront9
   342B 2B 16             12177 	.word	_height2RisingFront10
   342D 2E 44             12178 	.word	_height2RisingFront11
                          12179 	.globl	_height2FallingFront
   342F                   12180 _height2FallingFront:
   342F 0B 8A             12181 	.word	_height2FallingFront0
   3431 0E AC             12182 	.word	_height2FallingFront1
   3433 11 DA             12183 	.word	_height2FallingFront2
   3435 15 08             12184 	.word	_height2FallingFront3
   3437 18 36             12185 	.word	_height2FallingFront4
   3439 1B 64             12186 	.word	_height2FallingFront5
   343B 1E 92             12187 	.word	_height2FallingFront6
   343D 21 C0             12188 	.word	_height2FallingFront7
   343F 24 EE             12189 	.word	_height2FallingFront8
   3441 28 1C             12190 	.word	_height2FallingFront9
   3443 2B 4A             12191 	.word	_height2FallingFront10
   3445 2E 78             12192 	.word	_height2FallingFront11
                          12193 	.globl	_height2RisingBack
   3447                   12194 _height2RisingBack:
   3447 0B BB             12195 	.word	_height2RisingBack0
   3449 0E DD             12196 	.word	_height2RisingBack1
   344B 12 0B             12197 	.word	_height2RisingBack2
   344D 15 39             12198 	.word	_height2RisingBack3
   344F 18 67             12199 	.word	_height2RisingBack4
   3451 1B 95             12200 	.word	_height2RisingBack5
   3453 1E C3             12201 	.word	_height2RisingBack6
   3455 21 F1             12202 	.word	_height2RisingBack7
   3457 25 1F             12203 	.word	_height2RisingBack8
   3459 28 4D             12204 	.word	_height2RisingBack9
   345B 2B 7B             12205 	.word	_height2RisingBack10
   345D 2E A9             12206 	.word	_height2RisingBack11
                          12207 	.globl	_depth2RollingLeft
   345F                   12208 _depth2RollingLeft:
   345F 0B EF             12209 	.word	_depth2RollingLeft0
   3461 0F 11             12210 	.word	_depth2RollingLeft1
   3463 12 3F             12211 	.word	_depth2RollingLeft2
   3465 15 6D             12212 	.word	_depth2RollingLeft3
   3467 18 9B             12213 	.word	_depth2RollingLeft4
   3469 1B C9             12214 	.word	_depth2RollingLeft5
   346B 1E F7             12215 	.word	_depth2RollingLeft6
   346D 22 25             12216 	.word	_depth2RollingLeft7
   346F 25 53             12217 	.word	_depth2RollingLeft8
   3471 28 81             12218 	.word	_depth2RollingLeft9
   3473 2B AF             12219 	.word	_depth2RollingLeft10
   3475 2E DD             12220 	.word	_depth2RollingLeft11
                          12221 	.globl	_depth2RollingRight
   3477                   12222 _depth2RollingRight:
   3477 0C 20             12223 	.word	_depth2RollingRight0
   3479 0F 42             12224 	.word	_depth2RollingRight1
   347B 12 70             12225 	.word	_depth2RollingRight2
   347D 15 9E             12226 	.word	_depth2RollingRight3
   347F 18 CC             12227 	.word	_depth2RollingRight4
   3481 1B FA             12228 	.word	_depth2RollingRight5
   3483 1F 28             12229 	.word	_depth2RollingRight6
   3485 22 56             12230 	.word	_depth2RollingRight7
   3487 25 84             12231 	.word	_depth2RollingRight8
   3489 28 B2             12232 	.word	_depth2RollingRight9
   348B 2B E0             12233 	.word	_depth2RollingRight10
   348D 2F 0E             12234 	.word	_depth2RollingRight11
                          12235 	.globl	_width2RollingFront
   348F                   12236 _width2RollingFront:
   348F 0C 51             12237 	.word	_width2RollingFront0
   3491 0F 76             12238 	.word	_width2RollingFront1
   3493 12 A4             12239 	.word	_width2RollingFront2
   3495 15 D2             12240 	.word	_width2RollingFront3
   3497 19 00             12241 	.word	_width2RollingFront4
   3499 1C 2E             12242 	.word	_width2RollingFront5
   349B 1F 5C             12243 	.word	_width2RollingFront6
   349D 22 8A             12244 	.word	_width2RollingFront7
   349F 25 B8             12245 	.word	_width2RollingFront8
   34A1 28 E6             12246 	.word	_width2RollingFront9
   34A3 2C 14             12247 	.word	_width2RollingFront10
   34A5 2F 42             12248 	.word	_width2RollingFront11
                          12249 	.globl	_width2RollingBack
   34A7                   12250 _width2RollingBack:
   34A7 0C 82             12251 	.word	_width2RollingBack0
   34A9 0F A7             12252 	.word	_width2RollingBack1
   34AB 12 D5             12253 	.word	_width2RollingBack2
   34AD 16 03             12254 	.word	_width2RollingBack3
   34AF 19 31             12255 	.word	_width2RollingBack4
   34B1 1C 5F             12256 	.word	_width2RollingBack5
   34B3 1F 8D             12257 	.word	_width2RollingBack6
   34B5 22 BB             12258 	.word	_width2RollingBack7
   34B7 25 E9             12259 	.word	_width2RollingBack8
   34B9 29 17             12260 	.word	_width2RollingBack9
   34BB 2C 45             12261 	.word	_width2RollingBack10
   34BD 2F 73             12262 	.word	_width2RollingBack11
                          12263 	.globl	_height1FallingLeft
   34BF                   12264 _height1FallingLeft:
   34BF 0C B3             12265 	.word	_height1FallingLeft0
   34C1 0F DB             12266 	.word	_height1FallingLeft1
   34C3 13 09             12267 	.word	_height1FallingLeft2
   34C5 16 37             12268 	.word	_height1FallingLeft3
   34C7 19 65             12269 	.word	_height1FallingLeft4
   34C9 1C 93             12270 	.word	_height1FallingLeft5
   34CB 1F C1             12271 	.word	_height1FallingLeft6
   34CD 22 EF             12272 	.word	_height1FallingLeft7
   34CF 26 1D             12273 	.word	_height1FallingLeft8
   34D1 29 4B             12274 	.word	_height1FallingLeft9
   34D3 2C 79             12275 	.word	_height1FallingLeft10
   34D5 2F A7             12276 	.word	_height1FallingLeft11
                          12277 	.globl	_height1FallingRight
   34D7                   12278 _height1FallingRight:
   34D7 0C E4             12279 	.word	_height1FallingRight0
   34D9 10 0C             12280 	.word	_height1FallingRight1
   34DB 13 3A             12281 	.word	_height1FallingRight2
   34DD 16 68             12282 	.word	_height1FallingRight3
   34DF 19 96             12283 	.word	_height1FallingRight4
   34E1 1C C4             12284 	.word	_height1FallingRight5
   34E3 1F F2             12285 	.word	_height1FallingRight6
   34E5 23 20             12286 	.word	_height1FallingRight7
   34E7 26 4E             12287 	.word	_height1FallingRight8
   34E9 29 7C             12288 	.word	_height1FallingRight9
   34EB 2C AA             12289 	.word	_height1FallingRight10
   34ED 2F D8             12290 	.word	_height1FallingRight11
                          12291 	.globl	_height1FallingBack
   34EF                   12292 _height1FallingBack:
   34EF 0D 15             12293 	.word	_height1FallingBack0
   34F1 10 40             12294 	.word	_height1FallingBack1
   34F3 13 6E             12295 	.word	_height1FallingBack2
   34F5 16 9C             12296 	.word	_height1FallingBack3
   34F7 19 CA             12297 	.word	_height1FallingBack4
   34F9 1C F8             12298 	.word	_height1FallingBack5
   34FB 20 26             12299 	.word	_height1FallingBack6
   34FD 23 54             12300 	.word	_height1FallingBack7
   34FF 26 82             12301 	.word	_height1FallingBack8
   3501 29 B0             12302 	.word	_height1FallingBack9
   3503 2C DE             12303 	.word	_height1FallingBack10
   3505 30 0C             12304 	.word	_height1FallingBack11
                          12305 	.globl	_height1FallingFront
   3507                   12306 _height1FallingFront:
   3507 0D 46             12307 	.word	_height1FallingFront0
   3509 10 74             12308 	.word	_height1FallingFront1
   350B 13 A2             12309 	.word	_height1FallingFront2
   350D 16 D0             12310 	.word	_height1FallingFront3
   350F 19 FE             12311 	.word	_height1FallingFront4
   3511 1D 2C             12312 	.word	_height1FallingFront5
   3513 20 5A             12313 	.word	_height1FallingFront6
   3515 23 88             12314 	.word	_height1FallingFront7
   3517 26 B6             12315 	.word	_height1FallingFront8
   3519 29 E4             12316 	.word	_height1FallingFront9
   351B 2D 12             12317 	.word	_height1FallingFront10
   351D 30 40             12318 	.word	_height1FallingFront11
                          12319 	.area	.bss
                          12320 	.globl	_blockOrientation
   C8DF                   12321 _blockOrientation:	.blkb	1
                          12322 	.globl	_blockYOfs
   C8E0                   12323 _blockYOfs:	.blkb	1
                          12324 	.globl	_lastBlockDirection
   C8E1                   12325 _lastBlockDirection:	.blkb	1
                          12326 	.globl	_blockAnimating
   C8E2                   12327 _blockAnimating:	.blkb	1
                          12328 	.globl	_splitMode
   C8E3                   12329 _splitMode:	.blkb	1
                          12330 	.globl	_blockX
   C8E4                   12331 _blockX:	.blkb	1
                          12332 	.globl	_blockY
   C8E5                   12333 _blockY:	.blkb	1
                          12334 	.globl	_blockX2
   C8E6                   12335 _blockX2:	.blkb	1
                          12336 	.globl	_blockY2
   C8E7                   12337 _blockY2:	.blkb	1
                          12338 	.globl	_blockAnimation
   C8E8                   12339 _blockAnimation:	.blkb	2
                          12340 	.globl	_nextBlockAnimation
   C8EA                   12341 _nextBlockAnimation:	.blkb	2
                          12342 	.globl	_blockAnimationStep
   C8EC                   12343 _blockAnimationStep:	.blkb	1
                          12344 	.globl	_nextBlockX
   C8ED                   12345 _nextBlockX:	.blkb	1
                          12346 	.globl	_nextBlockY
   C8EE                   12347 _nextBlockY:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$block$1000       038C GR  |   2 A$block$1001       038F GR
  2 A$block$1002       0391 GR  |   2 A$block$1003       0394 GR
  2 A$block$1004       0396 GR  |   2 A$block$1005       0399 GR
  2 A$block$1006       039C GR  |   2 A$block$1007       039E GR
  2 A$block$1008       03A0 GR  |   2 A$block$1009       03A2 GR
  2 A$block$1010       03A4 GR  |   2 A$block$1013       03A6 GR
  2 A$block$1014       03A8 GR  |   2 A$block$1015       03AA GR
  2 A$block$1019       03AD GR  |   2 A$block$1020       03B0 GR
  2 A$block$1021       03B1 GR  |   2 A$block$1022       03B3 GR
  2 A$block$1023       03B4 GR  |   2 A$block$1024       03B5 GR
  2 A$block$1025       03B8 GR  |   2 A$block$1026       03BA GR
  2 A$block$1027       03BC GR  |   2 A$block$1028       03BE GR
  2 A$block$103        0049 GR  |   2 A$block$1032       03C0 GR
  2 A$block$1037       03C2 GR  |   2 A$block$1041       03C5 GR
  2 A$block$1042       03C7 GR  |   2 A$block$1043       03CA GR
  2 A$block$1048       03CE GR  |   2 A$block$1052       03D1 GR
  2 A$block$1053       03D3 GR  |   2 A$block$1056       03D5 GR
  2 A$block$1057       03D7 GR  |   2 A$block$1061       03DA GR
  2 A$block$1062       03DC GR  |   2 A$block$1063       03DE GR
  2 A$block$1064       03E0 GR  |   2 A$block$1065       03E2 GR
  2 A$block$1068       03E4 GR  |   2 A$block$1069       03E6 GR
  2 A$block$1070       03E8 GR  |   2 A$block$1074       03EB GR
  2 A$block$1075       03EE GR  |   2 A$block$1076       03F0 GR
  2 A$block$1077       03F2 GR  |   2 A$block$1078       03F5 GR
  2 A$block$1079       03F8 GR  |   2 A$block$1080       03FA GR
  2 A$block$1081       03FD GR  |   2 A$block$1082       03FF GR
  2 A$block$1083       0402 GR  |   2 A$block$1084       0405 GR
  2 A$block$1085       0407 GR  |   2 A$block$1086       0409 GR
  2 A$block$1087       040B GR  |   2 A$block$1088       040D GR
  2 A$block$109        004C GR  |   2 A$block$1091       040F GR
  2 A$block$1092       0411 GR  |   2 A$block$1093       0413 GR
  2 A$block$1097       0416 GR  |   2 A$block$1098       0418 GR
  2 A$block$1099       041A GR  |   2 A$block$110        004F GR
  2 A$block$1103       041D GR  |   2 A$block$1108       041F GR
  2 A$block$1110       0422 GR  |   2 A$block$1112       0424 GR
  2 A$block$1113       0426 GR  |   2 A$block$115        0052 GR
  2 A$block$120        0055 GR  |   2 A$block$121        0058 GR
  2 A$block$122        0059 GR  |   2 A$block$127        005C GR
  2 A$block$128        005F GR  |   2 A$block$133        0062 GR
  2 A$block$139        0065 GR  |   2 A$block$140        0068 GR
  2 A$block$145        006B GR  |   2 A$block$150        006E GR
  2 A$block$151        0071 GR  |   2 A$block$156        0074 GR
  2 A$block$157        0077 GR  |   2 A$block$158        0078 GR
  2 A$block$163        007B GR  |   2 A$block$169        007D GR
  2 A$block$170        0080 GR  |   2 A$block$175        0083 GR
  2 A$block$180        0086 GR  |   2 A$block$181        0089 GR
  2 A$block$186        008C GR  |   2 A$block$187        008F GR
  2 A$block$188        0090 GR  |   2 A$block$198        0093 GR
  2 A$block$204        0096 GR  |   2 A$block$210        0099 GR
  2 A$block$211        009C GR  |   2 A$block$212        009E GR
  2 A$block$213        00A2 GR  |   2 A$block$214        00A4 GR
  2 A$block$215        00A6 GR  |   2 A$block$216        00AA GR
  2 A$block$222        00AD GR  |   2 A$block$223        00AF GR
  2 A$block$224        00B1 GR  |   2 A$block$225        00B5 GR
  2 A$block$226        00B7 GR  |   2 A$block$227        00B9 GR
  2 A$block$228        00BB GR  |   2 A$block$229        00BD GR
  2 A$block$230        00C1 GR  |   2 A$block$236        00C4 GR
  2 A$block$237        00C7 GR  |   2 A$block$242        00CA GR
  2 A$block$243        00CD GR  |   2 A$block$248        00D0 GR
  2 A$block$249        00D3 GR  |   2 A$block$250        00D5 GR
  2 A$block$255        00D8 GR  |   2 A$block$256        00DB GR
  2 A$block$261        00DE GR  |   2 A$block$262        00E0 GR
  2 A$block$267        00E3 GR  |   2 A$block$273        00E6 GR
  2 A$block$274        00E9 GR  |   2 A$block$279        00EC GR
  2 A$block$280        00EF GR  |   2 A$block$285        00F2 GR
  2 A$block$286        00F5 GR  |   2 A$block$287        00F6 GR
  2 A$block$292        00F9 GR  |   2 A$block$293        00FC GR
  2 A$block$298        00FF GR  |   2 A$block$299        0101 GR
  2 A$block$304        0104 GR  |   2 A$block$310        0107 GR
  2 A$block$311        010A GR  |   2 A$block$316        010D GR
  2 A$block$317        0110 GR  |   2 A$block$322        0113 GR
  2 A$block$323        0116 GR  |   2 A$block$328        0119 GR
  2 A$block$329        011C GR  |   2 A$block$330        011D GR
  2 A$block$335        0120 GR  |   2 A$block$336        0122 GR
  2 A$block$341        0125 GR  |   2 A$block$347        0127 GR
  2 A$block$348        012A GR  |   2 A$block$35         0000 GR
  2 A$block$353        012D GR  |   2 A$block$354        0130 GR
  2 A$block$359        0133 GR  |   2 A$block$36         0002 GR
  2 A$block$360        0136 GR  |   2 A$block$365        0139 GR
  2 A$block$366        013C GR  |   2 A$block$367        013E GR
  2 A$block$372        0141 GR  |   2 A$block$373        0143 GR
  2 A$block$383        0146 GR  |   2 A$block$389        0149 GR
  2 A$block$390        014B GR  |   2 A$block$391        014D GR
  2 A$block$392        0151 GR  |   2 A$block$393        0153 GR
  2 A$block$394        0155 GR  |   2 A$block$395        0157 GR
  2 A$block$396        0159 GR  |   2 A$block$397        015D GR
  2 A$block$403        0160 GR  |   2 A$block$404        0163 GR
  2 A$block$409        0166 GR  |   2 A$block$41         0004 GR
  2 A$block$414        0169 GR  |   2 A$block$415        016C GR
  2 A$block$416        016D GR  |   2 A$block$42         0006 GR
  2 A$block$421        0170 GR  |   2 A$block$422        0173 GR
  2 A$block$427        0176 GR  |   2 A$block$433        0179 GR
  2 A$block$434        017C GR  |   2 A$block$439        017F GR
  2 A$block$440        0182 GR  |   2 A$block$445        0185 GR
  2 A$block$446        0188 GR  |   2 A$block$447        0189 GR
  2 A$block$452        018C GR  |   2 A$block$453        018F GR
  2 A$block$458        0192 GR  |   2 A$block$464        0195 GR
  2 A$block$465        0198 GR  |   2 A$block$47         0009 GR
  2 A$block$470        019B GR  |   2 A$block$471        019E GR
  2 A$block$476        01A1 GR  |   2 A$block$477        01A4 GR
  2 A$block$48         000B GR  |   2 A$block$482        01A7 GR
  2 A$block$483        01AA GR  |   2 A$block$484        01AC GR
  2 A$block$489        01AF GR  |   2 A$block$494        01B2 GR
  2 A$block$500        01B4 GR  |   2 A$block$501        01B7 GR
  2 A$block$506        01BA GR  |   2 A$block$507        01BD GR
  2 A$block$512        01C0 GR  |   2 A$block$513        01C3 GR
  2 A$block$518        01C6 GR  |   2 A$block$519        01C9 GR
  2 A$block$520        01CA GR  |   2 A$block$525        01CD GR
  2 A$block$53         000E GR  |   2 A$block$535        01D0 GR
  2 A$block$54         0011 GR  |   2 A$block$541        01D3 GR
  2 A$block$542        01D5 GR  |   2 A$block$543        01D7 GR
  2 A$block$544        01DB GR  |   2 A$block$545        01DD GR
  2 A$block$546        01DF GR  |   2 A$block$547        01E1 GR
  2 A$block$548        01E3 GR  |   2 A$block$549        01E7 GR
  2 A$block$555        01EA GR  |   2 A$block$556        01ED GR
  2 A$block$561        01F0 GR  |   2 A$block$562        01F3 GR
  2 A$block$567        01F6 GR  |   2 A$block$568        01F9 GR
  2 A$block$569        01FA GR  |   2 A$block$574        01FD GR
  2 A$block$575        0200 GR  |   2 A$block$580        0203 GR
  2 A$block$585        0206 GR  |   2 A$block$59         0015 GR
  2 A$block$591        0209 GR  |   2 A$block$592        020C GR
  2 A$block$597        020F GR  |   2 A$block$598        0212 GR
  2 A$block$60         0018 GR  |   2 A$block$603        0215 GR
  2 A$block$604        0218 GR  |   2 A$block$605        021A GR
  2 A$block$610        021D GR  |   2 A$block$611        0220 GR
  2 A$block$616        0223 GR  |   2 A$block$621        0226 GR
  2 A$block$627        0229 GR  |   2 A$block$628        022C GR
  2 A$block$633        022F GR  |   2 A$block$638        0232 GR
  2 A$block$639        0235 GR  |   2 A$block$644        0238 GR
  2 A$block$645        023B GR  |   2 A$block$646        023C GR
  2 A$block$65         001C GR  |   2 A$block$651        023F GR
  2 A$block$657        0241 GR  |   2 A$block$658        0244 GR
  2 A$block$66         001E GR  |   2 A$block$663        0247 GR
  2 A$block$664        024A GR  |   2 A$block$669        024D GR
  2 A$block$67         0020 GR  |   2 A$block$670        0250 GR
  2 A$block$675        0253 GR  |   2 A$block$676        0256 GR
  2 A$block$677        0257 GR  |   2 A$block$68         0024 GR
  2 A$block$688        025A GR  |   2 A$block$689        025C GR
  2 A$block$69         0026 GR  |   2 A$block$696        025D GR
  2 A$block$697        0260 GR  |   2 A$block$70         0028 GR
  2 A$block$702        0262 GR  |   2 A$block$703        0265 GR
  2 A$block$704        0266 GR  |   2 A$block$705        0269 GR
  2 A$block$706        026B GR  |   2 A$block$71         002A GR
  2 A$block$711        026D GR  |   2 A$block$712        0270 GR
  2 A$block$717        0273 GR  |   2 A$block$718        0276 GR
  2 A$block$72         002C GR  |   2 A$block$723        0279 GR
  2 A$block$728        027C GR  |   2 A$block$729        027F GR
  2 A$block$73         0030 GR  |   2 A$block$734        0282 GR
  2 A$block$736        0285 GR  |   2 A$block$743        0286 GR
  2 A$block$744        0289 GR  |   2 A$block$749        028C GR
  2 A$block$754        028F GR  |   2 A$block$759        0292 GR
  2 A$block$764        0295 GR  |   2 A$block$765        0298 GR
  2 A$block$772        0299 GR  |   2 A$block$773        029C GR
  2 A$block$778        029F GR  |   2 A$block$783        02A2 GR
  2 A$block$784        02A4 GR  |   2 A$block$785        02A7 GR
  2 A$block$788        02A8 GR  |   2 A$block$79         0033 GR
  2 A$block$793        02AA GR  |   2 A$block$794        02AD GR
  2 A$block$795        02AF GR  |   2 A$block$796        02B2 GR
  2 A$block$797        02B4 GR  |   2 A$block$798        02B6 GR
  2 A$block$799        02B8 GR  |   2 A$block$80         0036 GR
  2 A$block$804        02BC GR  |   2 A$block$805        02BF GR
  2 A$block$806        02C1 GR  |   2 A$block$807        02C4 GR
  2 A$block$808        02C6 GR  |   2 A$block$809        02C8 GR
  2 A$block$810        02C9 GR  |   2 A$block$811        02CB GR
  2 A$block$816        02CD GR  |   2 A$block$817        02D0 GR
  2 A$block$822        02D3 GR  |   2 A$block$823        02D5 GR
  2 A$block$828        02D8 GR  |   2 A$block$833        02DB GR
  2 A$block$834        02DE GR  |   2 A$block$836        02E1 GR
  2 A$block$837        02E3 GR  |   2 A$block$838        02E4 GR
  2 A$block$839        02E6 GR  |   2 A$block$844        02EA GR
  2 A$block$845        02ED GR  |   2 A$block$85         0039 GR
  2 A$block$850        02F0 GR  |   2 A$block$851        02F2 GR
  2 A$block$856        02F5 GR  |   2 A$block$857        02F8 GR
  2 A$block$859        02FB GR  |   2 A$block$860        02FE GR
  2 A$block$861        0301 GR  |   2 A$block$866        0305 GR
  2 A$block$867        0307 GR  |   2 A$block$868        0308 GR
  2 A$block$869        030A GR  |   2 A$block$874        030C GR
  2 A$block$875        030F GR  |   2 A$block$880        0312 GR
  2 A$block$881        0314 GR  |   2 A$block$886        0317 GR
  2 A$block$887        0319 GR  |   2 A$block$888        031A GR
  2 A$block$893        031D GR  |   2 A$block$894        0320 GR
  2 A$block$896        0322 GR  |   2 A$block$897        0324 GR
  2 A$block$898        0325 GR  |   2 A$block$899        0327 GR
  2 A$block$90         003C GR  |   2 A$block$904        0329 GR
  2 A$block$905        032C GR  |   2 A$block$91         003F GR
  2 A$block$910        032F GR  |   2 A$block$911        0331 GR
  2 A$block$916        0334 GR  |   2 A$block$918        0337 GR
  2 A$block$919        0339 GR  |   2 A$block$92         0040 GR
  2 A$block$922        033A GR  |   2 A$block$927        033C GR
  2 A$block$928        033F GR  |   2 A$block$933        0341 GR
  2 A$block$934        0344 GR  |   2 A$block$939        0346 GR
  2 A$block$940        0349 GR  |   2 A$block$945        034C GR
  2 A$block$946        034F GR  |   2 A$block$951        0352 GR
  2 A$block$952        0354 GR  |   2 A$block$957        0357 GR
  2 A$block$958        0359 GR  |   2 A$block$959        035C GR
  2 A$block$960        035E GR  |   2 A$block$963        035F GR
  2 A$block$964        0361 GR  |   2 A$block$965        0363 GR
  2 A$block$97         0043 GR  |   2 A$block$970        0365 GR
  2 A$block$974        0368 GR  |   2 A$block$975        036A GR
  2 A$block$978        036C GR  |   2 A$block$979        036E GR
  2 A$block$98         0046 GR  |   2 A$block$983        0371 GR
  2 A$block$984        0373 GR  |   2 A$block$985        0375 GR
  2 A$block$986        0377 GR  |   2 A$block$987        0379 GR
  2 A$block$990        037B GR  |   2 A$block$991        037D GR
  2 A$block$992        037F GR  |   2 A$block$996        0382 GR
  2 A$block$997        0385 GR  |   2 A$block$998        0387 GR
  2 A$block$999        0389 GR  |   2 L11                00AD R
  2 L12                0149 R   |   2 L14                0146 R
  2 L15                00C4 R   |   2 L16                0107 R
  2 L17                00E6 R   |   2 L19                01D0 R
  2 L2                 0099 R   |   2 L20                0160 R
  2 L21                0195 R   |   2 L22                0179 R
  2 L24                025A R   |   2 L25                01EA R
  2 L26                0229 R   |   2 L27                0209 R
  2 L29                025A R   |   2 L30                0096 R
  2 L31                007D R   |   2 L32                01D3 R
  2 L33                0127 R   |   2 L34                01B4 R
  2 L35                0241 R   |   2 L38                0285 R
  2 L44                02FB R   |   2 L45                02E1 R
  2 L47                0322 R   |   2 L48                0337 R
  2 L5                 0093 R   |   2 L53                0424 R
  2 L6                 0033 R   |   2 L7                 0065 R
  2 L8                 004C R   |     ___Draw_VLp        **** GX
    ___Intensity_a     **** GX  |     ___Moveto_d        **** GX
    ___Reset0Ref       **** GX  |   3 _blockAnimatin     0003 GR
  3 _blockAnimatio     0009 GR  |   3 _blockAnimatio     000D GR
  3 _blockOrientat     0000 GR  |   2 _blockStartLev     0286 GR
  3 _blockX            0005 GR  |   3 _blockX2           0007 GR
  3 _blockY            0006 GR  |   3 _blockY2           0008 GR
  3 _blockYOfs         0001 GR  |   2 _depth2Rolling     2E2C GR
  2 _depth2Rolling     05BC GR  |   2 _depth2Rolling     08DE GR
  2 _depth2Rolling     257C GR  |   2 _depth2Rolling     28AA GR
  2 _depth2Rolling     2BD8 GR  |   2 _depth2Rolling     0C0C GR
  2 _depth2Rolling     0F3A GR  |   2 _depth2Rolling     1268 GR
  2 _depth2Rolling     1596 GR  |   2 _depth2Rolling     18C4 GR
  2 _depth2Rolling     1BF2 GR  |   2 _depth2Rolling     1F20 GR
  2 _depth2Rolling     224E GR  |   2 _depth2Rolling     2E44 GR
  2 _depth2Rolling     05ED GR  |   2 _depth2Rolling     090F GR
  2 _depth2Rolling     25AD GR  |   2 _depth2Rolling     28DB GR
  2 _depth2Rolling     2C09 GR  |   2 _depth2Rolling     0C3D GR
  2 _depth2Rolling     0F6B GR  |   2 _depth2Rolling     1299 GR
  2 _depth2Rolling     15C7 GR  |   2 _depth2Rolling     18F5 GR
  2 _depth2Rolling     1C23 GR  |   2 _depth2Rolling     1F51 GR
  2 _depth2Rolling     227F GR  |   2 _doBlockAnimat     025D GR
    _dp_VIA_t1_cnt     **** GX  |   2 _drawBlock         035F GR
  2 _height1Fallin     2EBC GR  |   2 _height1Fallin     06E2 GR
  2 _height1Fallin     0A0D GR  |   2 _height1Fallin     26AB GR
  2 _height1Fallin     29D9 GR  |   2 _height1Fallin     2D07 GR
  2 _height1Fallin     0D3B GR  |   2 _height1Fallin     1069 GR
  2 _height1Fallin     1397 GR  |   2 _height1Fallin     16C5 GR
  2 _height1Fallin     19F3 GR  |   2 _height1Fallin     1D21 GR
  2 _height1Fallin     204F GR  |   2 _height1Fallin     237D GR
  2 _height1Fallin     2ED4 GR  |   2 _height1Fallin     0713 GR
  2 _height1Fallin     0A41 GR  |   2 _height1Fallin     26DF GR
  2 _height1Fallin     2A0D GR  |   2 _height1Fallin     2D3B GR
  2 _height1Fallin     0D6F GR  |   2 _height1Fallin     109D GR
  2 _height1Fallin     13CB GR  |   2 _height1Fallin     16F9 GR
  2 _height1Fallin     1A27 GR  |   2 _height1Fallin     1D55 GR
  2 _height1Fallin     2083 GR  |   2 _height1Fallin     23B1 GR
  2 _height1Fallin     2E8C GR  |   2 _height1Fallin     0680 GR
  2 _height1Fallin     09A8 GR  |   2 _height1Fallin     2646 GR
  2 _height1Fallin     2974 GR  |   2 _height1Fallin     2CA2 GR
  2 _height1Fallin     0CD6 GR  |   2 _height1Fallin     1004 GR
  2 _height1Fallin     1332 GR  |   2 _height1Fallin     1660 GR
  2 _height1Fallin     198E GR  |   2 _height1Fallin     1CBC GR
  2 _height1Fallin     1FEA GR  |   2 _height1Fallin     2318 GR
  2 _height1Fallin     2EA4 GR  |   2 _height1Fallin     06B1 GR
  2 _height1Fallin     09D9 GR  |   2 _height1Fallin     2677 GR
  2 _height1Fallin     29A5 GR  |   2 _height1Fallin     2CD3 GR
  2 _height1Fallin     0D07 GR  |   2 _height1Fallin     1035 GR
  2 _height1Fallin     1363 GR  |   2 _height1Fallin     1691 GR
  2 _height1Fallin     19BF GR  |   2 _height1Fallin     1CED GR
  2 _height1Fallin     201B GR  |   2 _height1Fallin     2349 GR
  2 _height2Fallin     2DCC GR  |   2 _height2Fallin     04F2 GR
  2 _height2Fallin     0811 GR  |   2 _height2Fallin     24AF GR
  2 _height2Fallin     27DD GR  |   2 _height2Fallin     2B0B GR
  2 _height2Fallin     0B3F GR  |   2 _height2Fallin     0E6D GR
  2 _height2Fallin     119B GR  |   2 _height2Fallin     14C9 GR
  2 _height2Fallin     17F7 GR  |   2 _height2Fallin     1B25 GR
  2 _height2Fallin     1E53 GR  |   2 _height2Fallin     2181 GR
  2 _height2Fallin     2DFC GR  |   2 _height2Fallin     0557 GR
  2 _height2Fallin     0879 GR  |   2 _height2Fallin     2517 GR
  2 _height2Fallin     2845 GR  |   2 _height2Fallin     2B73 GR
  2 _height2Fallin     0BA7 GR  |   2 _height2Fallin     0ED5 GR
  2 _height2Fallin     1203 GR  |   2 _height2Fallin     1531 GR
  2 _height2Fallin     185F GR  |   2 _height2Fallin     1B8D GR
  2 _height2Fallin     1EBB GR  |   2 _height2Fallin     21E9 GR
  2 _height2Fallin     2D6C GR  |   2 _height2Fallin     0428 GR
  2 _height2Fallin     0744 GR  |   2 _height2Fallin     23E2 GR
  2 _height2Fallin     2710 GR  |   2 _height2Fallin     2A3E GR
  2 _height2Fallin     0A72 GR  |   2 _height2Fallin     0DA0 GR
  2 _height2Fallin     10CE GR  |   2 _height2Fallin     13FC GR
  2 _height2Fallin     172A GR  |   2 _height2Fallin     1A58 GR
  2 _height2Fallin     1D86 GR  |   2 _height2Fallin     20B4 GR
  2 _height2Fallin     2D9C GR  |   2 _height2Fallin     048D GR
  2 _height2Fallin     07A9 GR  |   2 _height2Fallin     2447 GR
  2 _height2Fallin     2775 GR  |   2 _height2Fallin     2AA3 GR
  2 _height2Fallin     0AD7 GR  |   2 _height2Fallin     0E05 GR
  2 _height2Fallin     1133 GR  |   2 _height2Fallin     1461 GR
  2 _height2Fallin     178F GR  |   2 _height2Fallin     1ABD GR
  2 _height2Fallin     1DEB GR  |   2 _height2Fallin     2119 GR
  2 _height2Rising     2E14 GR  |   2 _height2Rising     0588 GR
  2 _height2Rising     08AA GR  |   2 _height2Rising     2548 GR
  2 _height2Rising     2876 GR  |   2 _height2Rising     2BA4 GR
  2 _height2Rising     0BD8 GR  |   2 _height2Rising     0F06 GR
  2 _height2Rising     1234 GR  |   2 _height2Rising     1562 GR
  2 _height2Rising     1890 GR  |   2 _height2Rising     1BBE GR
  2 _height2Rising     1EEC GR  |   2 _height2Rising     221A GR
  2 _height2Rising     2DE4 GR  |   2 _height2Rising     0523 GR
  2 _height2Rising     0845 GR  |   2 _height2Rising     24E3 GR
  2 _height2Rising     2811 GR  |   2 _height2Rising     2B3F GR
  2 _height2Rising     0B73 GR  |   2 _height2Rising     0EA1 GR
  2 _height2Rising     11CF GR  |   2 _height2Rising     14FD GR
  2 _height2Rising     182B GR  |   2 _height2Rising     1B59 GR
  2 _height2Rising     1E87 GR  |   2 _height2Rising     21B5 GR
  2 _height2Rising     2DB4 GR  |   2 _height2Rising     04BE GR
  2 _height2Rising     07DD GR  |   2 _height2Rising     247B GR
  2 _height2Rising     27A9 GR  |   2 _height2Rising     2AD7 GR
  2 _height2Rising     0B0B GR  |   2 _height2Rising     0E39 GR
  2 _height2Rising     1167 GR  |   2 _height2Rising     1495 GR
  2 _height2Rising     17C3 GR  |   2 _height2Rising     1AF1 GR
  2 _height2Rising     1E1F GR  |   2 _height2Rising     214D GR
  2 _height2Rising     2D84 GR  |   2 _height2Rising     0459 GR
  2 _height2Rising     0775 GR  |   2 _height2Rising     2413 GR
  2 _height2Rising     2741 GR  |   2 _height2Rising     2A6F GR
  2 _height2Rising     0AA3 GR  |   2 _height2Rising     0DD1 GR
  2 _height2Rising     10FF GR  |   2 _height2Rising     142D GR
  2 _height2Rising     175B GR  |   2 _height2Rising     1A89 GR
  2 _height2Rising     1DB7 GR  |   2 _height2Rising     20E5 GR
  3 _lastBlockDire     0002 GR  |   2 _moveBlockImpl     0000 GR
  3 _nextBlockAnim     000B GR  |   3 _nextBlockX        000E GR
  3 _nextBlockY        000F GR  |   2 _setSplitMode      0299 GR
  3 _splitMode         0004 GR  |   2 _swapSplit         033A GR
  2 _testMerge         02A8 GR  |   2 _width2Rolling     2E74 GR
  2 _width2Rolling     064F GR  |   2 _width2Rolling     0974 GR
  2 _width2Rolling     2612 GR  |   2 _width2Rolling     2940 GR
  2 _width2Rolling     2C6E GR  |   2 _width2Rolling     0CA2 GR
  2 _width2Rolling     0FD0 GR  |   2 _width2Rolling     12FE GR
  2 _width2Rolling     162C GR  |   2 _width2Rolling     195A GR
  2 _width2Rolling     1C88 GR  |   2 _width2Rolling     1FB6 GR
  2 _width2Rolling     22E4 GR  |   2 _width2Rolling     2E5C GR
  2 _width2Rolling     061E GR  |   2 _width2Rolling     0943 GR
  2 _width2Rolling     25E1 GR  |   2 _width2Rolling     290F GR
  2 _width2Rolling     2C3D GR  |   2 _width2Rolling     0C71 GR
  2 _width2Rolling     0F9F GR  |   2 _width2Rolling     12CD GR
  2 _width2Rolling     15FB GR  |   2 _width2Rolling     1929 GR
  2 _width2Rolling     1C57 GR  |   2 _width2Rolling     1F85 GR
  2 _width2Rolling     22B3 GR  |     _x3d               **** GX
    _y3d               **** GX

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size 2EEC   flags  100
   3 .bss             size   10   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

