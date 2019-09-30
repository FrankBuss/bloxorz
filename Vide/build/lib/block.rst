                              1 ;;; gcc for m6809 : Sep 13 2017 10:25:42
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mint8
                              5 	.module	block.enr.c
                              6 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ;  -fno-time-report -I/home/frank/bin/Vide/C/PeerC/vectrex/include
                             12 ;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
                             13 ;  /home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c
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
                             32 	.globl _moveBlockImpl
   0155                      33 _moveBlockImpl:
   0155 32 7F         [ 5]   34 	leas	-1,s	; ,,
   0157 E7 E4         [ 4]   35 	stb	,s	;  move, move
                             36 ;----- asm -----
                             37 ;  29 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             38 	; #ENR#[28]	blockAnimating = 1;
                             39 ;  0 "" 2
                             40 ;--- end asm ---
   0159 C6 01         [ 2]   41 	ldb	#1	; ,
   015B F7 C8 8B      [ 5]   42 	stb	_blockAnimating	; , blockAnimating
                             43 ;----- asm -----
                             44 ;  31 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             45 	; #ENR#[29]	lastBlockDirection = move;
                             46 ;  0 "" 2
                             47 ;--- end asm ---
   015E E6 E4         [ 4]   48 	ldb	,s	; , move
   0160 F7 C8 8A      [ 5]   49 	stb	_lastBlockDirection	; , lastBlockDirection
                             50 ;----- asm -----
                             51 ;  33 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             52 	; #ENR#[30]	if (splitMode) {
                             53 ;  0 "" 2
                             54 ;--- end asm ---
   0163 7D C8 8C      [ 7]   55 	tst	_splitMode	;  splitMode
   0166 10 27 00 84   [ 6]   56 	lbeq	L2	; 
                             57 ;----- asm -----
                             58 ;  35 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             59 	; #ENR#[31]    	switch (blockOrientation) {
                             60 ;  0 "" 2
                             61 ;--- end asm ---
   016A 7D C8 88      [ 7]   62 	tst	_blockOrientation	;  blockOrientation
   016D 10 26 00 7A   [ 6]   63 	lbne	L30	; 
                             64 ;----- asm -----
                             65 ;  39 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             66 	; #ENR#[33]            		switch (move) {
                             67 ;  0 "" 2
                             68 ;--- end asm ---
   0171 E6 E4         [ 4]   69 	ldb	,s	; , move
   0173 C1 01         [ 2]   70 	cmpb	#1	;cmpqi:	; ,
   0175 10 27 00 41   [ 6]   71 	lbeq	L7	; 
   0179 25 0D         [ 3]   72 	blo	L6	; 
   017B C1 02         [ 2]   73 	cmpb	#2	;cmpqi:	; ,
   017D 27 22         [ 3]   74 	beq	L8	; 
   017F C1 03         [ 2]   75 	cmpb	#3	;cmpqi:	; ,
   0181 10 26 00 63   [ 6]   76 	lbne	L5	; 
   0185 7E 01 D2      [ 4]   77 	jmp	L31	; 
   0188                      78 L6:
                             79 ;----- asm -----
                             80 ;  43 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             81 	; #ENR#[35]                			blockAnimation = height1FallingLeft;
                             82 ;  0 "" 2
                             83 ;--- end asm ---
   0188 8E 2F E1      [ 3]   84 	ldx	#_height1FallingLeft	;  tmp29,
   018B BF C8 91      [ 6]   85 	stx	_blockAnimation	;  tmp29, blockAnimation
                             86 ;----- asm -----
                             87 ;  45 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             88 	; #ENR#[36]                 			nextBlockAnimation = height1FallingLeft;
                             89 ;  0 "" 2
                             90 ;--- end asm ---
   018E BF C8 93      [ 6]   91 	stx	_nextBlockAnimation	;  tmp29, nextBlockAnimation
                             92 ;----- asm -----
                             93 ;  47 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             94 	; #ENR#[37]                 			nextBlockX = blockX - 1;
                             95 ;  0 "" 2
                             96 ;--- end asm ---
   0191 F6 C8 8D      [ 5]   97 	ldb	_blockX	; , blockX
   0194 5A            [ 2]   98 	decb	; 
   0195 F7 C8 96      [ 5]   99 	stb	_nextBlockX	; , nextBlockX
                            100 ;----- asm -----
                            101 ;  49 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            102 	; #ENR#[38]                 			nextBlockY = blockY;
                            103 ;  0 "" 2
                            104 ;--- end asm ---
   0198 F6 C8 8E      [ 5]  105 	ldb	_blockY	; , blockY
   019B F7 C8 97      [ 5]  106 	stb	_nextBlockY	; , nextBlockY
                            107 ;----- asm -----
                            108 ;  51 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            109 	; #ENR#[39]                 			break;
                            110 ;  0 "" 2
                            111 ;--- end asm ---
   019E 7E 01 E8      [ 4]  112 	jmp	L5	; 
   01A1                     113 L8:
                            114 ;----- asm -----
                            115 ;  55 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            116 	; #ENR#[41]                 			blockAnimation = height1FallingRight;
                            117 ;  0 "" 2
                            118 ;--- end asm ---
   01A1 8E 2F F9      [ 3]  119 	ldx	#_height1FallingRight	;  tmp31,
   01A4 BF C8 91      [ 6]  120 	stx	_blockAnimation	;  tmp31, blockAnimation
                            121 ;----- asm -----
                            122 ;  57 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            123 	; #ENR#[42]                 			nextBlockAnimation = height1FallingRight;
                            124 ;  0 "" 2
                            125 ;--- end asm ---
   01A7 BF C8 93      [ 6]  126 	stx	_nextBlockAnimation	;  tmp31, nextBlockAnimation
                            127 ;----- asm -----
                            128 ;  59 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            129 	; #ENR#[43]                 			nextBlockX = blockX + 1;
                            130 ;  0 "" 2
                            131 ;--- end asm ---
   01AA F6 C8 8D      [ 5]  132 	ldb	_blockX	; , blockX
   01AD 5C            [ 2]  133 	incb	; 
   01AE F7 C8 96      [ 5]  134 	stb	_nextBlockX	; , nextBlockX
                            135 ;----- asm -----
                            136 ;  61 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            137 	; #ENR#[44]                 			nextBlockY = blockY;
                            138 ;  0 "" 2
                            139 ;--- end asm ---
   01B1 F6 C8 8E      [ 5]  140 	ldb	_blockY	; , blockY
   01B4 F7 C8 97      [ 5]  141 	stb	_nextBlockY	; , nextBlockY
                            142 ;----- asm -----
                            143 ;  63 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            144 	; #ENR#[45]                 			break;
                            145 ;  0 "" 2
                            146 ;--- end asm ---
   01B7 7E 01 E8      [ 4]  147 	jmp	L5	; 
   01BA                     148 L7:
                            149 ;----- asm -----
                            150 ;  67 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            151 	; #ENR#[47]                 			blockAnimation = height1FallingBack;
                            152 ;  0 "" 2
                            153 ;--- end asm ---
   01BA 8E 30 11      [ 3]  154 	ldx	#_height1FallingBack	;  tmp33,
   01BD BF C8 91      [ 6]  155 	stx	_blockAnimation	;  tmp33, blockAnimation
                            156 ;----- asm -----
                            157 ;  69 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            158 	; #ENR#[48]                 			nextBlockAnimation = height1FallingBack;
                            159 ;  0 "" 2
                            160 ;--- end asm ---
   01C0 BF C8 93      [ 6]  161 	stx	_nextBlockAnimation	;  tmp33, nextBlockAnimation
                            162 ;----- asm -----
                            163 ;  71 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            164 	; #ENR#[49]                 			nextBlockX = blockX;
                            165 ;  0 "" 2
                            166 ;--- end asm ---
   01C3 F6 C8 8D      [ 5]  167 	ldb	_blockX	; , blockX
   01C6 F7 C8 96      [ 5]  168 	stb	_nextBlockX	; , nextBlockX
                            169 ;----- asm -----
                            170 ;  73 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            171 	; #ENR#[50]                 			nextBlockY = blockY + 1;
                            172 ;  0 "" 2
                            173 ;--- end asm ---
   01C9 F6 C8 8E      [ 5]  174 	ldb	_blockY	; , blockY
   01CC 5C            [ 2]  175 	incb	; 
   01CD F7 C8 97      [ 5]  176 	stb	_nextBlockY	; , nextBlockY
                            177 ;----- asm -----
                            178 ;  75 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            179 	; #ENR#[51]                 			break;
                            180 ;  0 "" 2
                            181 ;--- end asm ---
   01D0 20 16         [ 3]  182 	bra	L5	; 
   01D2                     183 L31:
                            184 ;----- asm -----
                            185 ;  79 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            186 	; #ENR#[53]                 			blockAnimation = height1FallingFront;
                            187 ;  0 "" 2
                            188 ;--- end asm ---
   01D2 8E 30 29      [ 3]  189 	ldx	#_height1FallingFront	;  tmp35,
   01D5 BF C8 91      [ 6]  190 	stx	_blockAnimation	;  tmp35, blockAnimation
                            191 ;----- asm -----
                            192 ;  81 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            193 	; #ENR#[54]                 			nextBlockAnimation = height1FallingFront;
                            194 ;  0 "" 2
                            195 ;--- end asm ---
   01D8 BF C8 93      [ 6]  196 	stx	_nextBlockAnimation	;  tmp35, nextBlockAnimation
                            197 ;----- asm -----
                            198 ;  83 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            199 	; #ENR#[55]                 			nextBlockX = blockX;
                            200 ;  0 "" 2
                            201 ;--- end asm ---
   01DB F6 C8 8D      [ 5]  202 	ldb	_blockX	; , blockX
   01DE F7 C8 96      [ 5]  203 	stb	_nextBlockX	; , nextBlockX
                            204 ;----- asm -----
                            205 ;  85 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            206 	; #ENR#[56]                 			nextBlockY = blockY - 1;
                            207 ;  0 "" 2
                            208 ;--- end asm ---
   01E1 F6 C8 8E      [ 5]  209 	ldb	_blockY	; , blockY
   01E4 5A            [ 2]  210 	decb	; 
   01E5 F7 C8 97      [ 5]  211 	stb	_nextBlockY	; , nextBlockY
                            212 ;----- asm -----
                            213 ;  87 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            214 	; #ENR#[57]                 			break;
                            215 ;  0 "" 2
                            216 ;--- end asm ---
   01E8                     217 L5:
                            218 ;----- asm -----
                            219 ;  90 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            220 	; #ENR#[59]            		break;
                            221 ;  0 "" 2
                            222 ;--- end asm ---
   01E8 7E 03 AF      [ 4]  223 	jmp	L29	; 
   01EB                     224 L30:
                            225 ;----- asm -----
                            226 ;  94 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            227 	; #ENR#[61]			break;
                            228 ;  0 "" 2
                            229 ;--- end asm ---
   01EB 7E 03 AF      [ 4]  230 	jmp	L29	; 
   01EE                     231 L2:
                            232 ;----- asm -----
                            233 ;  98 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            234 	; #ENR#[64]    	switch (blockOrientation) {
                            235 ;  0 "" 2
                            236 ;--- end asm ---
   01EE F6 C8 88      [ 5]  237 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   01F1 C1 01         [ 2]  238 	cmpb	#1	;cmpqi:	;  blockOrientation,
   01F3 10 27 00 A7   [ 6]  239 	lbeq	L12	; 
   01F7 25 09         [ 3]  240 	blo	L11	; 
   01F9 C1 02         [ 2]  241 	cmpb	#2	;cmpqi:	;  blockOrientation,
   01FB 10 26 01 B0   [ 6]  242 	lbne	L29	; 
   01FF 7E 03 28      [ 4]  243 	jmp	L32	; 
   0202                     244 L11:
                            245 ;----- asm -----
                            246 ;  102 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            247 	; #ENR#[66]            		switch (move) {
                            248 ;  0 "" 2
                            249 ;--- end asm ---
   0202 E6 E4         [ 4]  250 	ldb	,s	; , move
   0204 C1 01         [ 2]  251 	cmpb	#1	;cmpqi:	; ,
   0206 10 27 00 52   [ 6]  252 	lbeq	L16	; 
   020A 25 0D         [ 3]  253 	blo	L15	; 
   020C C1 02         [ 2]  254 	cmpb	#2	;cmpqi:	; ,
   020E 27 2B         [ 3]  255 	beq	L17	; 
   0210 C1 03         [ 2]  256 	cmpb	#3	;cmpqi:	; ,
   0212 10 26 00 85   [ 6]  257 	lbne	L14	; 
   0216 7E 02 7C      [ 4]  258 	jmp	L33	; 
   0219                     259 L15:
                            260 ;----- asm -----
                            261 ;  106 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            262 	; #ENR#[68]                			blockAnimation = height2FallingLeft;
                            263 ;  0 "" 2
                            264 ;--- end asm ---
   0219 8E 2E C1      [ 3]  265 	ldx	#_height2FallingLeft	; ,
   021C BF C8 91      [ 6]  266 	stx	_blockAnimation	; , blockAnimation
                            267 ;----- asm -----
                            268 ;  108 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            269 	; #ENR#[69]                 			nextBlockAnimation = width2RollingFront;
                            270 ;  0 "" 2
                            271 ;--- end asm ---
   021F 8E 2F B1      [ 3]  272 	ldx	#_width2RollingFront	; ,
   0222 BF C8 93      [ 6]  273 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            274 ;----- asm -----
                            275 ;  110 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            276 	; #ENR#[70]                 			nextBlockX = blockX - 2;
                            277 ;  0 "" 2
                            278 ;--- end asm ---
   0225 F6 C8 8D      [ 5]  279 	ldb	_blockX	; , blockX
   0228 CB FE         [ 2]  280 	addb	#-2	; ,
   022A F7 C8 96      [ 5]  281 	stb	_nextBlockX	; , nextBlockX
                            282 ;----- asm -----
                            283 ;  112 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            284 	; #ENR#[71]                 			nextBlockY = blockY;
                            285 ;  0 "" 2
                            286 ;--- end asm ---
   022D F6 C8 8E      [ 5]  287 	ldb	_blockY	; , blockY
   0230 F7 C8 97      [ 5]  288 	stb	_nextBlockY	; , nextBlockY
                            289 ;----- asm -----
                            290 ;  114 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            291 	; #ENR#[72]                 			blockOrientation = Horizontal;
                            292 ;  0 "" 2
                            293 ;--- end asm ---
   0233 C6 02         [ 2]  294 	ldb	#2	; ,
   0235 F7 C8 88      [ 5]  295 	stb	_blockOrientation	; , blockOrientation
                            296 ;----- asm -----
                            297 ;  116 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            298 	; #ENR#[73]                 			break;
                            299 ;  0 "" 2
                            300 ;--- end asm ---
   0238 7E 02 9B      [ 4]  301 	jmp	L14	; 
   023B                     302 L17:
                            303 ;----- asm -----
                            304 ;  120 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            305 	; #ENR#[75]                 			blockAnimation = height2FallingRight;
                            306 ;  0 "" 2
                            307 ;--- end asm ---
   023B 8E 2E F1      [ 3]  308 	ldx	#_height2FallingRight	; ,
   023E BF C8 91      [ 6]  309 	stx	_blockAnimation	; , blockAnimation
                            310 ;----- asm -----
                            311 ;  122 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            312 	; #ENR#[76]                 			nextBlockAnimation = width2RollingFront;
                            313 ;  0 "" 2
                            314 ;--- end asm ---
   0241 8E 2F B1      [ 3]  315 	ldx	#_width2RollingFront	; ,
   0244 BF C8 93      [ 6]  316 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            317 ;----- asm -----
                            318 ;  124 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            319 	; #ENR#[77]                 			nextBlockX = blockX + 1;
                            320 ;  0 "" 2
                            321 ;--- end asm ---
   0247 F6 C8 8D      [ 5]  322 	ldb	_blockX	; , blockX
   024A 5C            [ 2]  323 	incb	; 
   024B F7 C8 96      [ 5]  324 	stb	_nextBlockX	; , nextBlockX
                            325 ;----- asm -----
                            326 ;  126 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            327 	; #ENR#[78]                 			nextBlockY = blockY;
                            328 ;  0 "" 2
                            329 ;--- end asm ---
   024E F6 C8 8E      [ 5]  330 	ldb	_blockY	; , blockY
   0251 F7 C8 97      [ 5]  331 	stb	_nextBlockY	; , nextBlockY
                            332 ;----- asm -----
                            333 ;  128 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            334 	; #ENR#[79]                 			blockOrientation = Horizontal;
                            335 ;  0 "" 2
                            336 ;--- end asm ---
   0254 C6 02         [ 2]  337 	ldb	#2	; ,
   0256 F7 C8 88      [ 5]  338 	stb	_blockOrientation	; , blockOrientation
                            339 ;----- asm -----
                            340 ;  130 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            341 	; #ENR#[80]                 			break;
                            342 ;  0 "" 2
                            343 ;--- end asm ---
   0259 7E 02 9B      [ 4]  344 	jmp	L14	; 
   025C                     345 L16:
                            346 ;----- asm -----
                            347 ;  134 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            348 	; #ENR#[82]                 			blockAnimation = height2FallingBack;
                            349 ;  0 "" 2
                            350 ;--- end asm ---
   025C 8E 2F 21      [ 3]  351 	ldx	#_height2FallingBack	; ,
   025F BF C8 91      [ 6]  352 	stx	_blockAnimation	; , blockAnimation
                            353 ;----- asm -----
                            354 ;  136 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            355 	; #ENR#[83]                 			nextBlockAnimation = depth2RollingLeft;
                            356 ;  0 "" 2
                            357 ;--- end asm ---
   0262 8E 2F 81      [ 3]  358 	ldx	#_depth2RollingLeft	; ,
   0265 BF C8 93      [ 6]  359 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            360 ;----- asm -----
                            361 ;  138 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            362 	; #ENR#[84]                 			nextBlockX = blockX;
                            363 ;  0 "" 2
                            364 ;--- end asm ---
   0268 F6 C8 8D      [ 5]  365 	ldb	_blockX	; , blockX
   026B F7 C8 96      [ 5]  366 	stb	_nextBlockX	; , nextBlockX
                            367 ;----- asm -----
                            368 ;  140 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            369 	; #ENR#[85]                 			nextBlockY = blockY + 1;
                            370 ;  0 "" 2
                            371 ;--- end asm ---
   026E F6 C8 8E      [ 5]  372 	ldb	_blockY	; , blockY
   0271 5C            [ 2]  373 	incb	; 
   0272 F7 C8 97      [ 5]  374 	stb	_nextBlockY	; , nextBlockY
                            375 ;----- asm -----
                            376 ;  142 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            377 	; #ENR#[86]                 			blockOrientation = Vertical;
                            378 ;  0 "" 2
                            379 ;--- end asm ---
   0275 C6 01         [ 2]  380 	ldb	#1	; ,
   0277 F7 C8 88      [ 5]  381 	stb	_blockOrientation	; , blockOrientation
                            382 ;----- asm -----
                            383 ;  144 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            384 	; #ENR#[87]                 			break;
                            385 ;  0 "" 2
                            386 ;--- end asm ---
   027A 20 1F         [ 3]  387 	bra	L14	; 
   027C                     388 L33:
                            389 ;----- asm -----
                            390 ;  148 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            391 	; #ENR#[89]                 			blockAnimation = height2FallingFront;
                            392 ;  0 "" 2
                            393 ;--- end asm ---
   027C 8E 2F 51      [ 3]  394 	ldx	#_height2FallingFront	; ,
   027F BF C8 91      [ 6]  395 	stx	_blockAnimation	; , blockAnimation
                            396 ;----- asm -----
                            397 ;  150 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            398 	; #ENR#[90]                 			nextBlockAnimation = depth2RollingLeft;
                            399 ;  0 "" 2
                            400 ;--- end asm ---
   0282 8E 2F 81      [ 3]  401 	ldx	#_depth2RollingLeft	; ,
   0285 BF C8 93      [ 6]  402 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            403 ;----- asm -----
                            404 ;  152 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            405 	; #ENR#[91]                 			nextBlockX = blockX;
                            406 ;  0 "" 2
                            407 ;--- end asm ---
   0288 F6 C8 8D      [ 5]  408 	ldb	_blockX	; , blockX
   028B F7 C8 96      [ 5]  409 	stb	_nextBlockX	; , nextBlockX
                            410 ;----- asm -----
                            411 ;  154 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            412 	; #ENR#[92]                 			nextBlockY = blockY - 2;
                            413 ;  0 "" 2
                            414 ;--- end asm ---
   028E F6 C8 8E      [ 5]  415 	ldb	_blockY	; , blockY
   0291 CB FE         [ 2]  416 	addb	#-2	; ,
   0293 F7 C8 97      [ 5]  417 	stb	_nextBlockY	; , nextBlockY
                            418 ;----- asm -----
                            419 ;  156 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            420 	; #ENR#[93]                 			blockOrientation = Vertical;
                            421 ;  0 "" 2
                            422 ;--- end asm ---
   0296 C6 01         [ 2]  423 	ldb	#1	; ,
   0298 F7 C8 88      [ 5]  424 	stb	_blockOrientation	; , blockOrientation
                            425 ;----- asm -----
                            426 ;  158 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            427 	; #ENR#[94]                 			break;
                            428 ;  0 "" 2
                            429 ;--- end asm ---
   029B                     430 L14:
                            431 ;----- asm -----
                            432 ;  161 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            433 	; #ENR#[96]            		break;
                            434 ;  0 "" 2
                            435 ;--- end asm ---
   029B 7E 03 AF      [ 4]  436 	jmp	L29	; 
   029E                     437 L12:
                            438 ;----- asm -----
                            439 ;  165 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            440 	; #ENR#[98]            		switch (move) {
                            441 ;  0 "" 2
                            442 ;--- end asm ---
   029E E6 E4         [ 4]  443 	ldb	,s	; , move
   02A0 C1 01         [ 2]  444 	cmpb	#1	;cmpqi:	; ,
   02A2 10 27 00 44   [ 6]  445 	lbeq	L21	; 
   02A6 25 0D         [ 3]  446 	blo	L20	; 
   02A8 C1 02         [ 2]  447 	cmpb	#2	;cmpqi:	; ,
   02AA 27 22         [ 3]  448 	beq	L22	; 
   02AC C1 03         [ 2]  449 	cmpb	#3	;cmpqi:	; ,
   02AE 10 26 00 73   [ 6]  450 	lbne	L19	; 
   02B2 7E 03 09      [ 4]  451 	jmp	L34	; 
   02B5                     452 L20:
                            453 ;----- asm -----
                            454 ;  169 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            455 	; #ENR#[100]                			blockAnimation = depth2RollingLeft;
                            456 ;  0 "" 2
                            457 ;--- end asm ---
   02B5 8E 2F 81      [ 3]  458 	ldx	#_depth2RollingLeft	;  tmp46,
   02B8 BF C8 91      [ 6]  459 	stx	_blockAnimation	;  tmp46, blockAnimation
                            460 ;----- asm -----
                            461 ;  171 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            462 	; #ENR#[101]                			nextBlockAnimation = depth2RollingLeft;
                            463 ;  0 "" 2
                            464 ;--- end asm ---
   02BB BF C8 93      [ 6]  465 	stx	_nextBlockAnimation	;  tmp46, nextBlockAnimation
                            466 ;----- asm -----
                            467 ;  173 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            468 	; #ENR#[102]                			nextBlockX = blockX - 1;
                            469 ;  0 "" 2
                            470 ;--- end asm ---
   02BE F6 C8 8D      [ 5]  471 	ldb	_blockX	; , blockX
   02C1 5A            [ 2]  472 	decb	; 
   02C2 F7 C8 96      [ 5]  473 	stb	_nextBlockX	; , nextBlockX
                            474 ;----- asm -----
                            475 ;  175 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            476 	; #ENR#[103]                			nextBlockY = blockY;
                            477 ;  0 "" 2
                            478 ;--- end asm ---
   02C5 F6 C8 8E      [ 5]  479 	ldb	_blockY	; , blockY
   02C8 F7 C8 97      [ 5]  480 	stb	_nextBlockY	; , nextBlockY
                            481 ;----- asm -----
                            482 ;  177 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            483 	; #ENR#[104]                			break;
                            484 ;  0 "" 2
                            485 ;--- end asm ---
   02CB 7E 03 25      [ 4]  486 	jmp	L19	; 
   02CE                     487 L22:
                            488 ;----- asm -----
                            489 ;  181 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            490 	; #ENR#[106]                			blockAnimation = depth2RollingRight;
                            491 ;  0 "" 2
                            492 ;--- end asm ---
   02CE 8E 2F 99      [ 3]  493 	ldx	#_depth2RollingRight	; ,
   02D1 BF C8 91      [ 6]  494 	stx	_blockAnimation	; , blockAnimation
                            495 ;----- asm -----
                            496 ;  183 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            497 	; #ENR#[107]                			nextBlockAnimation = depth2RollingLeft;
                            498 ;  0 "" 2
                            499 ;--- end asm ---
   02D4 8E 2F 81      [ 3]  500 	ldx	#_depth2RollingLeft	; ,
   02D7 BF C8 93      [ 6]  501 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            502 ;----- asm -----
                            503 ;  185 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            504 	; #ENR#[108]                			nextBlockX = blockX + 1;
                            505 ;  0 "" 2
                            506 ;--- end asm ---
   02DA F6 C8 8D      [ 5]  507 	ldb	_blockX	; , blockX
   02DD 5C            [ 2]  508 	incb	; 
   02DE F7 C8 96      [ 5]  509 	stb	_nextBlockX	; , nextBlockX
                            510 ;----- asm -----
                            511 ;  187 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            512 	; #ENR#[109]                			nextBlockY = blockY;
                            513 ;  0 "" 2
                            514 ;--- end asm ---
   02E1 F6 C8 8E      [ 5]  515 	ldb	_blockY	; , blockY
   02E4 F7 C8 97      [ 5]  516 	stb	_nextBlockY	; , nextBlockY
                            517 ;----- asm -----
                            518 ;  189 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            519 	; #ENR#[110]                			break;
                            520 ;  0 "" 2
                            521 ;--- end asm ---
   02E7 7E 03 25      [ 4]  522 	jmp	L19	; 
   02EA                     523 L21:
                            524 ;----- asm -----
                            525 ;  193 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            526 	; #ENR#[112]                			blockAnimation = height2RisingBack;
                            527 ;  0 "" 2
                            528 ;--- end asm ---
   02EA 8E 2F 69      [ 3]  529 	ldx	#_height2RisingBack	; ,
   02ED BF C8 91      [ 6]  530 	stx	_blockAnimation	; , blockAnimation
                            531 ;----- asm -----
                            532 ;  195 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            533 	; #ENR#[113]                			nextBlockAnimation = height2FallingFront;
                            534 ;  0 "" 2
                            535 ;--- end asm ---
   02F0 8E 2F 51      [ 3]  536 	ldx	#_height2FallingFront	; ,
   02F3 BF C8 93      [ 6]  537 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            538 ;----- asm -----
                            539 ;  197 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            540 	; #ENR#[114]                			nextBlockX = blockX;
                            541 ;  0 "" 2
                            542 ;--- end asm ---
   02F6 F6 C8 8D      [ 5]  543 	ldb	_blockX	; , blockX
   02F9 F7 C8 96      [ 5]  544 	stb	_nextBlockX	; , nextBlockX
                            545 ;----- asm -----
                            546 ;  199 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            547 	; #ENR#[115]                			nextBlockY = blockY + 2;
                            548 ;  0 "" 2
                            549 ;--- end asm ---
   02FC F6 C8 8E      [ 5]  550 	ldb	_blockY	; , blockY
   02FF CB 02         [ 2]  551 	addb	#2	; ,
   0301 F7 C8 97      [ 5]  552 	stb	_nextBlockY	; , nextBlockY
                            553 ;----- asm -----
                            554 ;  201 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            555 	; #ENR#[116]                			blockOrientation = Standing;
                            556 ;  0 "" 2
                            557 ;--- end asm ---
   0304 7F C8 88      [ 7]  558 	clr	_blockOrientation	;  blockOrientation
                            559 ;----- asm -----
                            560 ;  203 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            561 	; #ENR#[117]                			break;
                            562 ;  0 "" 2
                            563 ;--- end asm ---
   0307 20 1C         [ 3]  564 	bra	L19	; 
   0309                     565 L34:
                            566 ;----- asm -----
                            567 ;  207 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            568 	; #ENR#[119]                			blockAnimation = height2RisingFront;
                            569 ;  0 "" 2
                            570 ;--- end asm ---
   0309 8E 2F 39      [ 3]  571 	ldx	#_height2RisingFront	; ,
   030C BF C8 91      [ 6]  572 	stx	_blockAnimation	; , blockAnimation
                            573 ;----- asm -----
                            574 ;  209 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            575 	; #ENR#[120]                			nextBlockAnimation = height2FallingFront;
                            576 ;  0 "" 2
                            577 ;--- end asm ---
   030F 8E 2F 51      [ 3]  578 	ldx	#_height2FallingFront	; ,
   0312 BF C8 93      [ 6]  579 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            580 ;----- asm -----
                            581 ;  211 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            582 	; #ENR#[121]                			nextBlockX = blockX;
                            583 ;  0 "" 2
                            584 ;--- end asm ---
   0315 F6 C8 8D      [ 5]  585 	ldb	_blockX	; , blockX
   0318 F7 C8 96      [ 5]  586 	stb	_nextBlockX	; , nextBlockX
                            587 ;----- asm -----
                            588 ;  213 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            589 	; #ENR#[122]                			nextBlockY = blockY - 1;
                            590 ;  0 "" 2
                            591 ;--- end asm ---
   031B F6 C8 8E      [ 5]  592 	ldb	_blockY	; , blockY
   031E 5A            [ 2]  593 	decb	; 
   031F F7 C8 97      [ 5]  594 	stb	_nextBlockY	; , nextBlockY
                            595 ;----- asm -----
                            596 ;  215 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            597 	; #ENR#[123]                			blockOrientation = Standing;
                            598 ;  0 "" 2
                            599 ;--- end asm ---
   0322 7F C8 88      [ 7]  600 	clr	_blockOrientation	;  blockOrientation
                            601 ;----- asm -----
                            602 ;  217 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            603 	; #ENR#[124]                			break;
                            604 ;  0 "" 2
                            605 ;--- end asm ---
   0325                     606 L19:
                            607 ;----- asm -----
                            608 ;  220 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            609 	; #ENR#[126]            		break;
                            610 ;  0 "" 2
                            611 ;--- end asm ---
   0325 7E 03 AF      [ 4]  612 	jmp	L29	; 
   0328                     613 L32:
                            614 ;----- asm -----
                            615 ;  224 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            616 	; #ENR#[128]            		switch (move) {
                            617 ;  0 "" 2
                            618 ;--- end asm ---
   0328 E6 E4         [ 4]  619 	ldb	,s	; , move
   032A C1 01         [ 2]  620 	cmpb	#1	;cmpqi:	; ,
   032C 10 27 00 4E   [ 6]  621 	lbeq	L26	; 
   0330 25 0D         [ 3]  622 	blo	L25	; 
   0332 C1 02         [ 2]  623 	cmpb	#2	;cmpqi:	; ,
   0334 27 28         [ 3]  624 	beq	L27	; 
   0336 C1 03         [ 2]  625 	cmpb	#3	;cmpqi:	; ,
   0338 10 26 00 73   [ 6]  626 	lbne	L24	; 
   033C 7E 03 96      [ 4]  627 	jmp	L35	; 
   033F                     628 L25:
                            629 ;----- asm -----
                            630 ;  228 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            631 	; #ENR#[130]                			blockAnimation = height2RisingLeft;
                            632 ;  0 "" 2
                            633 ;--- end asm ---
   033F 8E 2F 09      [ 3]  634 	ldx	#_height2RisingLeft	; ,
   0342 BF C8 91      [ 6]  635 	stx	_blockAnimation	; , blockAnimation
                            636 ;----- asm -----
                            637 ;  230 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            638 	; #ENR#[131]                			nextBlockAnimation = height2FallingRight;
                            639 ;  0 "" 2
                            640 ;--- end asm ---
   0345 8E 2E F1      [ 3]  641 	ldx	#_height2FallingRight	; ,
   0348 BF C8 93      [ 6]  642 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            643 ;----- asm -----
                            644 ;  232 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            645 	; #ENR#[132]                			nextBlockX = blockX - 1;
                            646 ;  0 "" 2
                            647 ;--- end asm ---
   034B F6 C8 8D      [ 5]  648 	ldb	_blockX	; , blockX
   034E 5A            [ 2]  649 	decb	; 
   034F F7 C8 96      [ 5]  650 	stb	_nextBlockX	; , nextBlockX
                            651 ;----- asm -----
                            652 ;  234 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            653 	; #ENR#[133]                			nextBlockY = blockY;
                            654 ;  0 "" 2
                            655 ;--- end asm ---
   0352 F6 C8 8E      [ 5]  656 	ldb	_blockY	; , blockY
   0355 F7 C8 97      [ 5]  657 	stb	_nextBlockY	; , nextBlockY
                            658 ;----- asm -----
                            659 ;  236 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            660 	; #ENR#[134]                			blockOrientation = Standing;
                            661 ;  0 "" 2
                            662 ;--- end asm ---
   0358 7F C8 88      [ 7]  663 	clr	_blockOrientation	;  blockOrientation
                            664 ;----- asm -----
                            665 ;  238 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            666 	; #ENR#[135]                			break;
                            667 ;  0 "" 2
                            668 ;--- end asm ---
   035B 7E 03 AF      [ 4]  669 	jmp	L24	; 
   035E                     670 L27:
                            671 ;----- asm -----
                            672 ;  242 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            673 	; #ENR#[137]                			blockAnimation = height2RisingRight;
                            674 ;  0 "" 2
                            675 ;--- end asm ---
   035E 8E 2E D9      [ 3]  676 	ldx	#_height2RisingRight	; ,
   0361 BF C8 91      [ 6]  677 	stx	_blockAnimation	; , blockAnimation
                            678 ;----- asm -----
                            679 ;  244 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            680 	; #ENR#[138]                			nextBlockAnimation = height2FallingLeft;
                            681 ;  0 "" 2
                            682 ;--- end asm ---
   0364 8E 2E C1      [ 3]  683 	ldx	#_height2FallingLeft	; ,
   0367 BF C8 93      [ 6]  684 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            685 ;----- asm -----
                            686 ;  246 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            687 	; #ENR#[139]                			nextBlockX = blockX + 2;
                            688 ;  0 "" 2
                            689 ;--- end asm ---
   036A F6 C8 8D      [ 5]  690 	ldb	_blockX	; , blockX
   036D CB 02         [ 2]  691 	addb	#2	; ,
   036F F7 C8 96      [ 5]  692 	stb	_nextBlockX	; , nextBlockX
                            693 ;----- asm -----
                            694 ;  248 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            695 	; #ENR#[140]                			nextBlockY = blockY;
                            696 ;  0 "" 2
                            697 ;--- end asm ---
   0372 F6 C8 8E      [ 5]  698 	ldb	_blockY	; , blockY
   0375 F7 C8 97      [ 5]  699 	stb	_nextBlockY	; , nextBlockY
                            700 ;----- asm -----
                            701 ;  250 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            702 	; #ENR#[141]                			blockOrientation = Standing;
                            703 ;  0 "" 2
                            704 ;--- end asm ---
   0378 7F C8 88      [ 7]  705 	clr	_blockOrientation	;  blockOrientation
                            706 ;----- asm -----
                            707 ;  252 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            708 	; #ENR#[142]                			break;
                            709 ;  0 "" 2
                            710 ;--- end asm ---
   037B 7E 03 AF      [ 4]  711 	jmp	L24	; 
   037E                     712 L26:
                            713 ;----- asm -----
                            714 ;  256 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            715 	; #ENR#[144]                			blockAnimation = width2RollingBack;
                            716 ;  0 "" 2
                            717 ;--- end asm ---
   037E 8E 2F C9      [ 3]  718 	ldx	#_width2RollingBack	;  tmp58,
   0381 BF C8 91      [ 6]  719 	stx	_blockAnimation	;  tmp58, blockAnimation
                            720 ;----- asm -----
                            721 ;  258 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            722 	; #ENR#[145]                			nextBlockAnimation = width2RollingBack;
                            723 ;  0 "" 2
                            724 ;--- end asm ---
   0384 BF C8 93      [ 6]  725 	stx	_nextBlockAnimation	;  tmp58, nextBlockAnimation
                            726 ;----- asm -----
                            727 ;  260 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            728 	; #ENR#[146]                			nextBlockX = blockX;
                            729 ;  0 "" 2
                            730 ;--- end asm ---
   0387 F6 C8 8D      [ 5]  731 	ldb	_blockX	; , blockX
   038A F7 C8 96      [ 5]  732 	stb	_nextBlockX	; , nextBlockX
                            733 ;----- asm -----
                            734 ;  262 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            735 	; #ENR#[147]                			nextBlockY = blockY + 1;
                            736 ;  0 "" 2
                            737 ;--- end asm ---
   038D F6 C8 8E      [ 5]  738 	ldb	_blockY	; , blockY
   0390 5C            [ 2]  739 	incb	; 
   0391 F7 C8 97      [ 5]  740 	stb	_nextBlockY	; , nextBlockY
                            741 ;----- asm -----
                            742 ;  264 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            743 	; #ENR#[148]                			break;
                            744 ;  0 "" 2
                            745 ;--- end asm ---
   0394 20 19         [ 3]  746 	bra	L24	; 
   0396                     747 L35:
                            748 ;----- asm -----
                            749 ;  268 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            750 	; #ENR#[150]                			blockAnimation = width2RollingFront;
                            751 ;  0 "" 2
                            752 ;--- end asm ---
   0396 8E 2F B1      [ 3]  753 	ldx	#_width2RollingFront	; ,
   0399 BF C8 91      [ 6]  754 	stx	_blockAnimation	; , blockAnimation
                            755 ;----- asm -----
                            756 ;  270 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            757 	; #ENR#[151]                			nextBlockAnimation = width2RollingBack;
                            758 ;  0 "" 2
                            759 ;--- end asm ---
   039C 8E 2F C9      [ 3]  760 	ldx	#_width2RollingBack	; ,
   039F BF C8 93      [ 6]  761 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            762 ;----- asm -----
                            763 ;  272 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            764 	; #ENR#[152]                			nextBlockX = blockX;
                            765 ;  0 "" 2
                            766 ;--- end asm ---
   03A2 F6 C8 8D      [ 5]  767 	ldb	_blockX	; , blockX
   03A5 F7 C8 96      [ 5]  768 	stb	_nextBlockX	; , nextBlockX
                            769 ;----- asm -----
                            770 ;  274 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            771 	; #ENR#[153]                			nextBlockY = blockY - 1;
                            772 ;  0 "" 2
                            773 ;--- end asm ---
   03A8 F6 C8 8E      [ 5]  774 	ldb	_blockY	; , blockY
   03AB 5A            [ 2]  775 	decb	; 
   03AC F7 C8 97      [ 5]  776 	stb	_nextBlockY	; , nextBlockY
                            777 ;----- asm -----
                            778 ;  276 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            779 	; #ENR#[154]                			break;
                            780 ;  0 "" 2
                            781 ;--- end asm ---
   03AF                     782 L24:
                            783 ;----- asm -----
                            784 ;  279 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            785 	; #ENR#[156]            		break;
                            786 ;  0 "" 2
                            787 ;--- end asm ---
   03AF                     788 L29:
   03AF 32 61         [ 5]  789 	leas	1,s	; ,,
   03B1 39            [ 5]  790 	rts
                            791 	.globl _doBlockAnimation
   03B2                     792 _doBlockAnimation:
                            793 ;----- asm -----
                            794 ;  317 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            795 	; #ENR#[182]	if (blockAnimating) {
                            796 ;  0 "" 2
                            797 ;--- end asm ---
   03B2 7D C8 8B      [ 7]  798 	tst	_blockAnimating	;  blockAnimating
   03B5 27 23         [ 3]  799 	beq	L38	; 
                            800 ;----- asm -----
                            801 ;  319 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            802 	; #ENR#[183]		if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
                            803 ;  0 "" 2
                            804 ;--- end asm ---
   03B7 F6 C8 95      [ 5]  805 	ldb	_blockAnimationStep	;  blockAnimationStep.23, blockAnimationStep
   03BA 5C            [ 2]  806 	incb	;  blockAnimationStep.23
   03BB F7 C8 95      [ 5]  807 	stb	_blockAnimationStep	;  blockAnimationStep.23, blockAnimationStep
   03BE C1 0C         [ 2]  808 	cmpb	#12	;cmpqi:	;  blockAnimationStep.23,
   03C0 26 18         [ 3]  809 	bne	L38	; 
                            810 ;----- asm -----
                            811 ;  321 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            812 	; #ENR#[184]			blockX = nextBlockX;
                            813 ;  0 "" 2
                            814 ;--- end asm ---
   03C2 F6 C8 96      [ 5]  815 	ldb	_nextBlockX	; , nextBlockX
   03C5 F7 C8 8D      [ 5]  816 	stb	_blockX	; , blockX
                            817 ;----- asm -----
                            818 ;  323 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            819 	; #ENR#[185]			blockY = nextBlockY;
                            820 ;  0 "" 2
                            821 ;--- end asm ---
   03C8 F6 C8 97      [ 5]  822 	ldb	_nextBlockY	; , nextBlockY
   03CB F7 C8 8E      [ 5]  823 	stb	_blockY	; , blockY
                            824 ;----- asm -----
                            825 ;  325 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            826 	; #ENR#[186]			blockAnimationStep = 0;
                            827 ;  0 "" 2
                            828 ;--- end asm ---
   03CE 7F C8 95      [ 7]  829 	clr	_blockAnimationStep	;  blockAnimationStep
                            830 ;----- asm -----
                            831 ;  327 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            832 	; #ENR#[187]			blockAnimation = nextBlockAnimation;
                            833 ;  0 "" 2
                            834 ;--- end asm ---
   03D1 BE C8 93      [ 6]  835 	ldx	_nextBlockAnimation	; , nextBlockAnimation
   03D4 BF C8 91      [ 6]  836 	stx	_blockAnimation	; , blockAnimation
                            837 ;----- asm -----
                            838 ;  329 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            839 	; #ENR#[188]			blockAnimating = 0;
                            840 ;  0 "" 2
                            841 ;--- end asm ---
   03D7 7F C8 8B      [ 7]  842 	clr	_blockAnimating	;  blockAnimating
   03DA                     843 L38:
   03DA 39            [ 5]  844 	rts
                            845 	.globl _blockStartLevel
   03DB                     846 _blockStartLevel:
                            847 ;----- asm -----
                            848 ;  337 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            849 	; #ENR#[195]	blockAnimation = height2FallingLeft;
                            850 ;  0 "" 2
                            851 ;--- end asm ---
   03DB 8E 2E C1      [ 3]  852 	ldx	#_height2FallingLeft	; ,
   03DE BF C8 91      [ 6]  853 	stx	_blockAnimation	; , blockAnimation
                            854 ;----- asm -----
                            855 ;  339 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            856 	; #ENR#[196]	blockAnimationStep = 0;
                            857 ;  0 "" 2
                            858 ;--- end asm ---
   03E1 7F C8 95      [ 7]  859 	clr	_blockAnimationStep	;  blockAnimationStep
                            860 ;----- asm -----
                            861 ;  341 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            862 	; #ENR#[197]	blockAnimating = 0;
                            863 ;  0 "" 2
                            864 ;--- end asm ---
   03E4 7F C8 8B      [ 7]  865 	clr	_blockAnimating	;  blockAnimating
                            866 ;----- asm -----
                            867 ;  343 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            868 	; #ENR#[198]	blockOrientation = Standing;
                            869 ;  0 "" 2
                            870 ;--- end asm ---
   03E7 7F C8 88      [ 7]  871 	clr	_blockOrientation	;  blockOrientation
                            872 ;----- asm -----
                            873 ;  345 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            874 	; #ENR#[199]	splitMode = 0;
                            875 ;  0 "" 2
                            876 ;--- end asm ---
   03EA 7F C8 8C      [ 7]  877 	clr	_splitMode	;  splitMode
   03ED 39            [ 5]  878 	rts
                            879 	.globl _setSplitMode
   03EE                     880 _setSplitMode:
                            881 ;----- asm -----
                            882 ;  351 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            883 	; #ENR#[204]	blockAnimation = height1FallingLeft;
                            884 ;  0 "" 2
                            885 ;--- end asm ---
   03EE 8E 2F E1      [ 3]  886 	ldx	#_height1FallingLeft	; ,
   03F1 BF C8 91      [ 6]  887 	stx	_blockAnimation	; , blockAnimation
                            888 ;----- asm -----
                            889 ;  353 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            890 	; #ENR#[205]	blockOrientation = Standing;
                            891 ;  0 "" 2
                            892 ;--- end asm ---
   03F4 7F C8 88      [ 7]  893 	clr	_blockOrientation	;  blockOrientation
                            894 ;----- asm -----
                            895 ;  355 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            896 	; #ENR#[206]	splitMode = 1;
                            897 ;  0 "" 2
                            898 ;--- end asm ---
   03F7 C6 01         [ 2]  899 	ldb	#1	; ,
   03F9 F7 C8 8C      [ 5]  900 	stb	_splitMode	; , splitMode
   03FC 39            [ 5]  901 	rts
                            902 	.globl _testMerge
   03FD                     903 _testMerge:
   03FD 32 7C         [ 5]  904 	leas	-4,s	; ,,
                            905 ;----- asm -----
                            906 ;  361 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            907 	; #ENR#[211]	if (blockY == blockY2) {
                            908 ;  0 "" 2
                            909 ;--- end asm ---
   03FF F6 C8 8E      [ 5]  910 	ldb	_blockY	; , blockY
   0402 E7 E4         [ 4]  911 	stb	,s	; , blockY.27
   0404 F6 C8 90      [ 5]  912 	ldb	_blockY2	; , blockY2
   0407 E7 61         [ 5]  913 	stb	1,s	; , blockY2.28
   0409 E6 E4         [ 4]  914 	ldb	,s	; , blockY.27
   040B E1 61         [ 5]  915 	cmpb	1,s	;cmpqi:	; , blockY2.28
   040D 10 26 00 3F   [ 6]  916 	lbne	L44	; 
                            917 ;----- asm -----
                            918 ;  363 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            919 	; #ENR#[212]		if (blockX == blockX2 + 1) {
                            920 ;  0 "" 2
                            921 ;--- end asm ---
   0411 F6 C8 8F      [ 5]  922 	ldb	_blockX2	; , blockX2
   0414 E7 62         [ 5]  923 	stb	2,s	; , blockX2.29
   0416 F6 C8 8D      [ 5]  924 	ldb	_blockX	; , blockX
   0419 E7 63         [ 5]  925 	stb	3,s	; , blockX.30
   041B E6 62         [ 5]  926 	ldb	2,s	;  tmp31, blockX2.29
   041D 5C            [ 2]  927 	incb	;  tmp31
   041E E1 63         [ 5]  928 	cmpb	3,s	;cmpqi:	;  tmp31, blockX.30
   0420 26 14         [ 3]  929 	bne	L45	; 
                            930 ;----- asm -----
                            931 ;  365 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            932 	; #ENR#[213]			blockAnimation = width2RollingFront;
                            933 ;  0 "" 2
                            934 ;--- end asm ---
   0422 8E 2F B1      [ 3]  935 	ldx	#_width2RollingFront	; ,
   0425 BF C8 91      [ 6]  936 	stx	_blockAnimation	; , blockAnimation
                            937 ;----- asm -----
                            938 ;  367 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            939 	; #ENR#[214]			blockOrientation = Horizontal;
                            940 ;  0 "" 2
                            941 ;--- end asm ---
   0428 C6 02         [ 2]  942 	ldb	#2	; ,
   042A F7 C8 88      [ 5]  943 	stb	_blockOrientation	; , blockOrientation
                            944 ;----- asm -----
                            945 ;  369 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            946 	; #ENR#[215]			blockX--;
                            947 ;  0 "" 2
                            948 ;--- end asm ---
   042D 7A C8 8D      [ 7]  949 	dec	_blockX	;  blockX
                            950 ;----- asm -----
                            951 ;  371 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            952 	; #ENR#[216]			splitMode = 0;
                            953 ;  0 "" 2
                            954 ;--- end asm ---
   0430 7F C8 8C      [ 7]  955 	clr	_splitMode	;  splitMode
   0433 7E 04 8C      [ 4]  956 	jmp	L48	; 
   0436                     957 L45:
   0436 E6 62         [ 5]  958 	ldb	2,s	;  tmp33, blockX2.29
   0438 5A            [ 2]  959 	decb	;  tmp33
   0439 E1 63         [ 5]  960 	cmpb	3,s	;cmpqi:(R)	;  tmp33, blockX.30
   043B 10 26 00 4D   [ 6]  961 	lbne	L48	; 
                            962 ;----- asm -----
                            963 ;  374 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            964 	; #ENR#[218]			blockAnimation = width2RollingFront;
                            965 ;  0 "" 2
                            966 ;--- end asm ---
   043F 8E 2F B1      [ 3]  967 	ldx	#_width2RollingFront	; ,
   0442 BF C8 91      [ 6]  968 	stx	_blockAnimation	; , blockAnimation
                            969 ;----- asm -----
                            970 ;  376 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            971 	; #ENR#[219]			blockOrientation = Horizontal;
                            972 ;  0 "" 2
                            973 ;--- end asm ---
   0445 C6 02         [ 2]  974 	ldb	#2	; ,
   0447 F7 C8 88      [ 5]  975 	stb	_blockOrientation	; , blockOrientation
                            976 ;----- asm -----
                            977 ;  378 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            978 	; #ENR#[220]			splitMode = 0;
                            979 ;  0 "" 2
                            980 ;--- end asm ---
   044A 7F C8 8C      [ 7]  981 	clr	_splitMode	;  splitMode
   044D 7E 04 8C      [ 4]  982 	jmp	L48	; 
   0450                     983 L44:
   0450 F6 C8 8D      [ 5]  984 	ldb	_blockX	; , blockX
   0453 F1 C8 8F      [ 5]  985 	cmpb	_blockX2	;cmpqi:	; , blockX2
   0456 10 26 00 32   [ 6]  986 	lbne	L48	; 
                            987 ;----- asm -----
                            988 ;  382 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            989 	; #ENR#[223]		if (blockY == blockY2 + 1) {
                            990 ;  0 "" 2
                            991 ;--- end asm ---
   045A E6 61         [ 5]  992 	ldb	1,s	;  tmp35, blockY2.28
   045C 5C            [ 2]  993 	incb	;  tmp35
   045D E1 E4         [ 4]  994 	cmpb	,s	;cmpqi:(R)	;  tmp35, blockY.27
   045F 26 16         [ 3]  995 	bne	L47	; 
                            996 ;----- asm -----
                            997 ;  384 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            998 	; #ENR#[224]			blockAnimation = depth2RollingLeft;
                            999 ;  0 "" 2
                           1000 ;--- end asm ---
   0461 8E 2F 81      [ 3] 1001 	ldx	#_depth2RollingLeft	; ,
   0464 BF C8 91      [ 6] 1002 	stx	_blockAnimation	; , blockAnimation
                           1003 ;----- asm -----
                           1004 ;  386 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1005 	; #ENR#[225]			blockOrientation = Vertical;
                           1006 ;  0 "" 2
                           1007 ;--- end asm ---
   0467 C6 01         [ 2] 1008 	ldb	#1	; ,
   0469 F7 C8 88      [ 5] 1009 	stb	_blockOrientation	; , blockOrientation
                           1010 ;----- asm -----
                           1011 ;  388 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1012 	; #ENR#[226]			blockY--;
                           1013 ;  0 "" 2
                           1014 ;--- end asm ---
   046C E6 E4         [ 4] 1015 	ldb	,s	; , blockY.27
   046E 5A            [ 2] 1016 	decb	; 
   046F F7 C8 8E      [ 5] 1017 	stb	_blockY	; , blockY
                           1018 ;----- asm -----
                           1019 ;  390 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1020 	; #ENR#[227]			splitMode = 0;
                           1021 ;  0 "" 2
                           1022 ;--- end asm ---
   0472 7F C8 8C      [ 7] 1023 	clr	_splitMode	;  splitMode
   0475 20 15         [ 3] 1024 	bra	L48	; 
   0477                    1025 L47:
   0477 E6 61         [ 5] 1026 	ldb	1,s	;  tmp37, blockY2.28
   0479 5A            [ 2] 1027 	decb	;  tmp37
   047A E1 E4         [ 4] 1028 	cmpb	,s	;cmpqi:(R)	;  tmp37, blockY.27
   047C 26 0E         [ 3] 1029 	bne	L48	; 
                           1030 ;----- asm -----
                           1031 ;  393 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1032 	; #ENR#[229]			blockAnimation = depth2RollingLeft;
                           1033 ;  0 "" 2
                           1034 ;--- end asm ---
   047E 8E 2F 81      [ 3] 1035 	ldx	#_depth2RollingLeft	; ,
   0481 BF C8 91      [ 6] 1036 	stx	_blockAnimation	; , blockAnimation
                           1037 ;----- asm -----
                           1038 ;  395 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1039 	; #ENR#[230]			blockOrientation = Vertical;;
                           1040 ;  0 "" 2
                           1041 ;--- end asm ---
   0484 C6 01         [ 2] 1042 	ldb	#1	; ,
   0486 F7 C8 88      [ 5] 1043 	stb	_blockOrientation	; , blockOrientation
                           1044 ;----- asm -----
                           1045 ;  397 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1046 	; #ENR#[231]			splitMode = 0;
                           1047 ;  0 "" 2
                           1048 ;--- end asm ---
   0489 7F C8 8C      [ 7] 1049 	clr	_splitMode	;  splitMode
   048C                    1050 L48:
   048C 32 64         [ 5] 1051 	leas	4,s	; ,,
   048E 39            [ 5] 1052 	rts
                           1053 	.globl _swapSplit
   048F                    1054 _swapSplit:
   048F 32 7E         [ 5] 1055 	leas	-2,s	; ,,
                           1056 ;----- asm -----
                           1057 ;  405 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1058 	; #ENR#[238]	int8_t xt = blockX;
                           1059 ;  0 "" 2
                           1060 ;--- end asm ---
   0491 F6 C8 8D      [ 5] 1061 	ldb	_blockX	; , blockX
   0494 E7 E4         [ 4] 1062 	stb	,s	; , xt
                           1063 ;----- asm -----
                           1064 ;  407 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1065 	; #ENR#[239]	int8_t yt = blockY;
                           1066 ;  0 "" 2
                           1067 ;--- end asm ---
   0496 F6 C8 8E      [ 5] 1068 	ldb	_blockY	; , blockY
   0499 E7 61         [ 5] 1069 	stb	1,s	; , yt
                           1070 ;----- asm -----
                           1071 ;  409 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1072 	; #ENR#[240]	blockX = blockX2;
                           1073 ;  0 "" 2
                           1074 ;--- end asm ---
   049B F6 C8 8F      [ 5] 1075 	ldb	_blockX2	; , blockX2
   049E F7 C8 8D      [ 5] 1076 	stb	_blockX	; , blockX
                           1077 ;----- asm -----
                           1078 ;  411 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1079 	; #ENR#[241]	blockY = blockY2;
                           1080 ;  0 "" 2
                           1081 ;--- end asm ---
   04A1 F6 C8 90      [ 5] 1082 	ldb	_blockY2	; , blockY2
   04A4 F7 C8 8E      [ 5] 1083 	stb	_blockY	; , blockY
                           1084 ;----- asm -----
                           1085 ;  413 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1086 	; #ENR#[242]	blockX2 = xt;
                           1087 ;  0 "" 2
                           1088 ;--- end asm ---
   04A7 E6 E4         [ 4] 1089 	ldb	,s	; , xt
   04A9 F7 C8 8F      [ 5] 1090 	stb	_blockX2	; , blockX2
                           1091 ;----- asm -----
                           1092 ;  415 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1093 	; #ENR#[243]	blockY2 = yt;
                           1094 ;  0 "" 2
                           1095 ;--- end asm ---
   04AC E6 61         [ 5] 1096 	ldb	1,s	; , yt
   04AE F7 C8 90      [ 5] 1097 	stb	_blockY2	; , blockY2
   04B1 32 62         [ 5] 1098 	leas	2,s	; ,,
   04B3 39            [ 5] 1099 	rts
                           1100 	.globl _drawBlock
   04B4                    1101 _drawBlock:
   04B4 34 40         [ 6] 1102 	pshs	u	; 
   04B6 32 78         [ 5] 1103 	leas	-8,s	; ,,
   04B8 E7 62         [ 5] 1104 	stb	2,s	;  yofs, yofs
                           1105 ;----- asm -----
                           1106 ;  287 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1107 	; #ENR#[163]	zergnd();
                           1108 ;  0 "" 2
                           1109 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   04BA BD F3 54      [ 8] 1110 	jsr ___Reset0Ref; BIOS call
                           1111 ;  0 "" 2
                           1112 ;  289 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1113 	; #ENR#[164]	intens(0x63);
                           1114 ;  0 "" 2
                           1115 ;--- end asm ---
   04BD C6 63         [ 2] 1116 	ldb	#99	; ,
   04BF E7 65         [ 5] 1117 	stb	5,s	; , a
                           1118 ;----- asm -----
                           1119 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   04C1 A6 65         [ 5] 1120 	lda 5,s	;  a
   04C3 BD F2 AB      [ 8] 1121 	jsr ___Intensity_a; BIOS call
                           1122 ;  0 "" 2
                           1123 ;  291 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1124 	; #ENR#[165]	positd(0, yofs);
                           1125 ;  0 "" 2
                           1126 ;--- end asm ---
   04C6 C6 80         [ 2] 1127 	ldb	#-128	; ,
   04C8 D7 04         [ 4] 1128 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   04CA E6 62         [ 5] 1129 	ldb	2,s	; , yofs
   04CC E7 67         [ 5] 1130 	stb	7,s	; , a
   04CE 6F 65         [ 7] 1131 	clr	5,s	;  b
                           1132 ;----- asm -----
                           1133 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   04D0 A6 67         [ 5] 1134 	lda 7,s	;  a
   04D2 E6 65         [ 5] 1135 	ldb 5,s	;  b
   04D4 BD F3 12      [ 8] 1136 	jsr ___Moveto_d; BIOS call
                           1137 ;  0 "" 2
                           1138 ;  294 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1139 	; #ENR#[167]	positd(x3d(blockX, blockY), y3d(blockX, 0, blockY));
                           1140 ;  0 "" 2
                           1141 ;--- end asm ---
   04D7 F6 C8 8E      [ 5] 1142 	ldb	_blockY	; , blockY
   04DA E7 E2         [ 6] 1143 	stb	,-s	; ,
   04DC 6F E2         [ 8] 1144 	clr	,-s	; 
   04DE F6 C8 8D      [ 5] 1145 	ldb	_blockX	; , blockX
   04E1 BD 37 28      [ 8] 1146 	jsr	_y3d	; 
   04E4 E7 65         [ 5] 1147 	stb	5,s	; , D.2455
   04E6 F6 C8 8E      [ 5] 1148 	ldb	_blockY	; , blockY
   04E9 E7 E2         [ 6] 1149 	stb	,-s	; ,
   04EB F6 C8 8D      [ 5] 1150 	ldb	_blockX	; , blockX
   04EE BD 37 07      [ 8] 1151 	jsr	_x3d	; 
   04F1 E7 6A         [ 5] 1152 	stb	10,s	; , b
   04F3 C6 80         [ 2] 1153 	ldb	#-128	; ,
   04F5 D7 04         [ 4] 1154 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   04F7 E6 66         [ 5] 1155 	ldb	6,s	; , D.2455
   04F9 E7 68         [ 5] 1156 	stb	8,s	; , a
                           1157 ;----- asm -----
                           1158 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   04FB A6 68         [ 5] 1159 	lda 8,s	;  a
   04FD E6 6A         [ 5] 1160 	ldb 10,s	;  b
   04FF BD F3 12      [ 8] 1161 	jsr ___Moveto_d; BIOS call
                           1162 ;  0 "" 2
                           1163 ;  296 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1164 	; #ENR#[168]	pack1x((void*)(blockAnimation[blockAnimationStep]));
                           1165 ;  0 "" 2
                           1166 ;--- end asm ---
   0502 F6 C8 95      [ 5] 1167 	ldb	_blockAnimationStep	; , blockAnimationStep
   0505 1D            [ 2] 1168 	sex		;extendqihi2: R:b -> R:d	; ,
   0506 ED 63         [ 6] 1169 	std	3,s	; ,
   0508 58            [ 2] 1170 	aslb	; 
   0509 49            [ 2] 1171 	rola	; 
   050A FE C8 91      [ 6] 1172 	ldu	_blockAnimation	; , blockAnimation
   050D 30 CB         [ 8] 1173 	leax	d,u	;  tmp37, tmp36,
   050F AE 84         [ 5] 1174 	ldx	,x	;  D.2462,
   0511 C6 80         [ 2] 1175 	ldb	#-128	; ,
   0513 D7 04         [ 4] 1176 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1177 ; Applied peep: 2 (no load after store)
                           1178 ;----- asm -----
                           1179 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0515 AF 68         [ 6] 1180 	stx	8,s	;  D.2462, x
                           1181 ; ORG>	stx	8,s	;  D.2462, x
                           1182 ; ORG>;----- asm -----
                           1183 ; ORG>;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
                           1184 ; ORG>	ldx 8,s	;  x
   0517 BD F4 10      [ 8] 1185 	jsr ___Draw_VLp; BIOS call
                           1186 ;  0 "" 2
                           1187 ;  300 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1188 	; #ENR#[171]	if (splitMode) {
                           1189 ;  0 "" 2
                           1190 ;--- end asm ---
   051A 32 63         [ 5] 1191 	leas	3,s	; ,,
   051C 7D C8 8C      [ 7] 1192 	tst	_splitMode	;  splitMode
   051F 10 27 00 56   [ 6] 1193 	lbeq	L53	; 
                           1194 ;----- asm -----
                           1195 ;  302 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1196 	; #ENR#[172]	    	zergnd();
                           1197 ;  0 "" 2
                           1198 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0523 BD F3 54      [ 8] 1199 	jsr ___Reset0Ref; BIOS call
                           1200 ;  0 "" 2
                           1201 ;  304 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1202 	; #ENR#[173]	    	intens(0x35);
                           1203 ;  0 "" 2
                           1204 ;--- end asm ---
   0526 C6 35         [ 2] 1205 	ldb	#53	; ,
   0528 E7 65         [ 5] 1206 	stb	5,s	; , a
                           1207 ;----- asm -----
                           1208 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   052A A6 65         [ 5] 1209 	lda 5,s	;  a
   052C BD F2 AB      [ 8] 1210 	jsr ___Intensity_a; BIOS call
                           1211 ;  0 "" 2
                           1212 ;  306 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1213 	; #ENR#[174]	    	positd(0, yofs);
                           1214 ;  0 "" 2
                           1215 ;--- end asm ---
   052F C6 80         [ 2] 1216 	ldb	#-128	; ,
   0531 D7 04         [ 4] 1217 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   0533 E6 62         [ 5] 1218 	ldb	2,s	; , yofs
   0535 E7 67         [ 5] 1219 	stb	7,s	; , a
   0537 6F 65         [ 7] 1220 	clr	5,s	;  b
                           1221 ;----- asm -----
                           1222 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0539 A6 67         [ 5] 1223 	lda 7,s	;  a
   053B E6 65         [ 5] 1224 	ldb 5,s	;  b
   053D BD F3 12      [ 8] 1225 	jsr ___Moveto_d; BIOS call
                           1226 ;  0 "" 2
                           1227 ;  308 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1228 	; #ENR#[175]	    	positd(x3d(blockX2, blockY2), y3d(blockX2, 0, blockY2));
                           1229 ;  0 "" 2
                           1230 ;--- end asm ---
   0540 F6 C8 90      [ 5] 1231 	ldb	_blockY2	; , blockY2
   0543 E7 E2         [ 6] 1232 	stb	,-s	; ,
   0545 6F E2         [ 8] 1233 	clr	,-s	; 
   0547 F6 C8 8F      [ 5] 1234 	ldb	_blockX2	; , blockX2
   054A BD 37 28      [ 8] 1235 	jsr	_y3d	; 
   054D E7 66         [ 5] 1236 	stb	6,s	; , D.2466
   054F F6 C8 90      [ 5] 1237 	ldb	_blockY2	; , blockY2
   0552 E7 E2         [ 6] 1238 	stb	,-s	; ,
   0554 F6 C8 8F      [ 5] 1239 	ldb	_blockX2	; , blockX2
   0557 BD 37 07      [ 8] 1240 	jsr	_x3d	; 
   055A E7 6A         [ 5] 1241 	stb	10,s	; , b
   055C C6 80         [ 2] 1242 	ldb	#-128	; ,
   055E D7 04         [ 4] 1243 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   0560 E6 67         [ 5] 1244 	ldb	7,s	; , D.2466
   0562 E7 68         [ 5] 1245 	stb	8,s	; , a
                           1246 ;----- asm -----
                           1247 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0564 A6 68         [ 5] 1248 	lda 8,s	;  a
   0566 E6 6A         [ 5] 1249 	ldb 10,s	;  b
   0568 BD F3 12      [ 8] 1250 	jsr ___Moveto_d; BIOS call
                           1251 ;  0 "" 2
                           1252 ;  310 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1253 	; #ENR#[176]	    	pack1x((void*)(height1FallingLeft[0]));
                           1254 ;  0 "" 2
                           1255 ;--- end asm ---
   056B C6 80         [ 2] 1256 	ldb	#-128	; ,
   056D D7 04         [ 4] 1257 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   056F BE 2F E1      [ 6] 1258 	ldx	_height1FallingLeft	; , height1FallingLeft
                           1259 ; Applied peep: 2 (no load after store)
                           1260 ;----- asm -----
                           1261 ;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0572 AF 68         [ 6] 1262 	stx	8,s	; , x
                           1263 ; ORG>	stx	8,s	; , x
                           1264 ; ORG>;----- asm -----
                           1265 ; ORG>;  1610 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
                           1266 ; ORG>	ldx 8,s	;  x
   0574 BD F4 10      [ 8] 1267 	jsr ___Draw_VLp; BIOS call
                           1268 ;  0 "" 2
                           1269 ;--- end asm ---
   0577 32 63         [ 5] 1270 	leas	3,s	; ,,
   0579                    1271 L53:
   0579 32 68         [ 5] 1272 	leas	8,s	; ,,
   057B 35 C0         [ 7] 1273 	puls	u,pc	; 
                           1274 	.globl _height2FallingLeft0
   057D                    1275 _height2FallingLeft0:
   057D FF                 1276 	.byte	-1
   057E 03                 1277 	.byte	3
   057F 0E                 1278 	.byte	14
   0580 FF                 1279 	.byte	-1
   0581 08                 1280 	.byte	8
   0582 FA                 1281 	.byte	-6
   0583 FF                 1282 	.byte	-1
   0584 FD                 1283 	.byte	-3
   0585 F3                 1284 	.byte	-13
   0586 FF                 1285 	.byte	-1
   0587 F8                 1286 	.byte	-8
   0588 05                 1287 	.byte	5
   0589 FF                 1288 	.byte	-1
   058A 1A                 1289 	.byte	26
   058B 00                 1290 	.byte	0
   058C 00                 1291 	.byte	0
   058D E9                 1292 	.byte	-23
   058E 0E                 1293 	.byte	14
   058F FF                 1294 	.byte	-1
   0590 1A                 1295 	.byte	26
   0591 00                 1296 	.byte	0
   0592 00                 1297 	.byte	0
   0593 EE                 1298 	.byte	-18
   0594 FA                 1299 	.byte	-6
   0595 FF                 1300 	.byte	-1
   0596 1A                 1301 	.byte	26
   0597 00                 1302 	.byte	0
   0598 00                 1303 	.byte	0
   0599 E3                 1304 	.byte	-29
   059A F3                 1305 	.byte	-13
   059B FF                 1306 	.byte	-1
   059C 1A                 1307 	.byte	26
   059D 00                 1308 	.byte	0
   059E 00                 1309 	.byte	0
   059F F8                 1310 	.byte	-8
   05A0 05                 1311 	.byte	5
   05A1 FF                 1312 	.byte	-1
   05A2 03                 1313 	.byte	3
   05A3 0E                 1314 	.byte	14
   05A4 FF                 1315 	.byte	-1
   05A5 08                 1316 	.byte	8
   05A6 FA                 1317 	.byte	-6
   05A7 FF                 1318 	.byte	-1
   05A8 FD                 1319 	.byte	-3
   05A9 F3                 1320 	.byte	-13
   05AA FF                 1321 	.byte	-1
   05AB F8                 1322 	.byte	-8
   05AC 05                 1323 	.byte	5
   05AD 01                 1324 	.byte	1
                           1325 	.globl _height2RisingRight0
   05AE                    1326 _height2RisingRight0:
   05AE 00                 1327 	.byte	0
   05AF 06                 1328 	.byte	6
   05B0 1C                 1329 	.byte	28
   05B1 FF                 1330 	.byte	-1
   05B2 0D                 1331 	.byte	13
   05B3 02                 1332 	.byte	2
   05B4 FF                 1333 	.byte	-1
   05B5 08                 1334 	.byte	8
   05B6 FA                 1335 	.byte	-6
   05B7 FF                 1336 	.byte	-1
   05B8 F3                 1337 	.byte	-13
   05B9 FE                 1338 	.byte	-2
   05BA FF                 1339 	.byte	-1
   05BB F8                 1340 	.byte	-8
   05BC 06                 1341 	.byte	6
   05BD FF                 1342 	.byte	-1
   05BE FD                 1343 	.byte	-3
   05BF E4                 1344 	.byte	-28
   05C0 00                 1345 	.byte	0
   05C1 10                 1346 	.byte	16
   05C2 1E                 1347 	.byte	30
   05C3 FF                 1348 	.byte	-1
   05C4 FE                 1349 	.byte	-2
   05C5 E4                 1350 	.byte	-28
   05C6 00                 1351 	.byte	0
   05C7 0A                 1352 	.byte	10
   05C8 16                 1353 	.byte	22
   05C9 FF                 1354 	.byte	-1
   05CA FE                 1355 	.byte	-2
   05CB E5                 1356 	.byte	-27
   05CC 00                 1357 	.byte	0
   05CD F5                 1358 	.byte	-11
   05CE 19                 1359 	.byte	25
   05CF FF                 1360 	.byte	-1
   05D0 FD                 1361 	.byte	-3
   05D1 E5                 1362 	.byte	-27
   05D2 00                 1363 	.byte	0
   05D3 F8                 1364 	.byte	-8
   05D4 05                 1365 	.byte	5
   05D5 FF                 1366 	.byte	-1
   05D6 0E                 1367 	.byte	14
   05D7 02                 1368 	.byte	2
   05D8 FF                 1369 	.byte	-1
   05D9 08                 1370 	.byte	8
   05DA FB                 1371 	.byte	-5
   05DB FF                 1372 	.byte	-1
   05DC F2                 1373 	.byte	-14
   05DD FE                 1374 	.byte	-2
   05DE FF                 1375 	.byte	-1
   05DF F8                 1376 	.byte	-8
   05E0 05                 1377 	.byte	5
   05E1 01                 1378 	.byte	1
                           1379 	.globl _height2FallingRight0
   05E2                    1380 _height2FallingRight0:
   05E2 FF                 1381 	.byte	-1
   05E3 03                 1382 	.byte	3
   05E4 0E                 1383 	.byte	14
   05E5 FF                 1384 	.byte	-1
   05E6 08                 1385 	.byte	8
   05E7 FA                 1386 	.byte	-6
   05E8 FF                 1387 	.byte	-1
   05E9 FD                 1388 	.byte	-3
   05EA F3                 1389 	.byte	-13
   05EB FF                 1390 	.byte	-1
   05EC F8                 1391 	.byte	-8
   05ED 05                 1392 	.byte	5
   05EE FF                 1393 	.byte	-1
   05EF 1A                 1394 	.byte	26
   05F0 00                 1395 	.byte	0
   05F1 00                 1396 	.byte	0
   05F2 E9                 1397 	.byte	-23
   05F3 0E                 1398 	.byte	14
   05F4 FF                 1399 	.byte	-1
   05F5 1A                 1400 	.byte	26
   05F6 00                 1401 	.byte	0
   05F7 00                 1402 	.byte	0
   05F8 EE                 1403 	.byte	-18
   05F9 FA                 1404 	.byte	-6
   05FA FF                 1405 	.byte	-1
   05FB 1A                 1406 	.byte	26
   05FC 00                 1407 	.byte	0
   05FD 00                 1408 	.byte	0
   05FE E3                 1409 	.byte	-29
   05FF F3                 1410 	.byte	-13
   0600 FF                 1411 	.byte	-1
   0601 1A                 1412 	.byte	26
   0602 00                 1413 	.byte	0
   0603 00                 1414 	.byte	0
   0604 F8                 1415 	.byte	-8
   0605 05                 1416 	.byte	5
   0606 FF                 1417 	.byte	-1
   0607 03                 1418 	.byte	3
   0608 0E                 1419 	.byte	14
   0609 FF                 1420 	.byte	-1
   060A 08                 1421 	.byte	8
   060B FA                 1422 	.byte	-6
   060C FF                 1423 	.byte	-1
   060D FD                 1424 	.byte	-3
   060E F3                 1425 	.byte	-13
   060F FF                 1426 	.byte	-1
   0610 F8                 1427 	.byte	-8
   0611 05                 1428 	.byte	5
   0612 01                 1429 	.byte	1
                           1430 	.globl _height2RisingLeft0
   0613                    1431 _height2RisingLeft0:
   0613 00                 1432 	.byte	0
   0614 0C                 1433 	.byte	12
   0615 FF                 1434 	.byte	-1
   0616 FF                 1435 	.byte	-1
   0617 F4                 1436 	.byte	-12
   0618 01                 1437 	.byte	1
   0619 FF                 1438 	.byte	-1
   061A 08                 1439 	.byte	8
   061B FB                 1440 	.byte	-5
   061C FF                 1441 	.byte	-1
   061D 0C                 1442 	.byte	12
   061E FE                 1443 	.byte	-2
   061F FF                 1444 	.byte	-1
   0620 F8                 1445 	.byte	-8
   0621 06                 1446 	.byte	6
   0622 FF                 1447 	.byte	-1
   0623 0A                 1448 	.byte	10
   0624 1B                 1449 	.byte	27
   0625 00                 1450 	.byte	0
   0626 EA                 1451 	.byte	-22
   0627 E6                 1452 	.byte	-26
   0628 FF                 1453 	.byte	-1
   0629 09                 1454 	.byte	9
   062A 1C                 1455 	.byte	28
   062B 00                 1456 	.byte	0
   062C FF                 1457 	.byte	-1
   062D DF                 1458 	.byte	-33
   062E FF                 1459 	.byte	-1
   062F 09                 1460 	.byte	9
   0630 1B                 1461 	.byte	27
   0631 00                 1462 	.byte	0
   0632 03                 1463 	.byte	3
   0633 E3                 1464 	.byte	-29
   0634 FF                 1465 	.byte	-1
   0635 0A                 1466 	.byte	10
   0636 1B                 1467 	.byte	27
   0637 00                 1468 	.byte	0
   0638 F8                 1469 	.byte	-8
   0639 06                 1470 	.byte	6
   063A FF                 1471 	.byte	-1
   063B F3                 1472 	.byte	-13
   063C 02                 1473 	.byte	2
   063D FF                 1474 	.byte	-1
   063E 08                 1475 	.byte	8
   063F FA                 1476 	.byte	-6
   0640 FF                 1477 	.byte	-1
   0641 0D                 1478 	.byte	13
   0642 FE                 1479 	.byte	-2
   0643 FF                 1480 	.byte	-1
   0644 F8                 1481 	.byte	-8
   0645 06                 1482 	.byte	6
   0646 01                 1483 	.byte	1
                           1484 	.globl _height2FallingBack0
   0647                    1485 _height2FallingBack0:
   0647 FF                 1486 	.byte	-1
   0648 03                 1487 	.byte	3
   0649 0E                 1488 	.byte	14
   064A FF                 1489 	.byte	-1
   064B 08                 1490 	.byte	8
   064C FA                 1491 	.byte	-6
   064D FF                 1492 	.byte	-1
   064E FD                 1493 	.byte	-3
   064F F3                 1494 	.byte	-13
   0650 FF                 1495 	.byte	-1
   0651 F8                 1496 	.byte	-8
   0652 05                 1497 	.byte	5
   0653 FF                 1498 	.byte	-1
   0654 1A                 1499 	.byte	26
   0655 00                 1500 	.byte	0
   0656 00                 1501 	.byte	0
   0657 E9                 1502 	.byte	-23
   0658 0E                 1503 	.byte	14
   0659 FF                 1504 	.byte	-1
   065A 1A                 1505 	.byte	26
   065B 00                 1506 	.byte	0
   065C 00                 1507 	.byte	0
   065D EE                 1508 	.byte	-18
   065E FA                 1509 	.byte	-6
   065F FF                 1510 	.byte	-1
   0660 1A                 1511 	.byte	26
   0661 00                 1512 	.byte	0
   0662 00                 1513 	.byte	0
   0663 E3                 1514 	.byte	-29
   0664 F3                 1515 	.byte	-13
   0665 FF                 1516 	.byte	-1
   0666 1A                 1517 	.byte	26
   0667 00                 1518 	.byte	0
   0668 00                 1519 	.byte	0
   0669 F8                 1520 	.byte	-8
   066A 05                 1521 	.byte	5
   066B FF                 1522 	.byte	-1
   066C 03                 1523 	.byte	3
   066D 0E                 1524 	.byte	14
   066E FF                 1525 	.byte	-1
   066F 08                 1526 	.byte	8
   0670 FA                 1527 	.byte	-6
   0671 FF                 1528 	.byte	-1
   0672 FD                 1529 	.byte	-3
   0673 F3                 1530 	.byte	-13
   0674 FF                 1531 	.byte	-1
   0675 F8                 1532 	.byte	-8
   0676 05                 1533 	.byte	5
   0677 01                 1534 	.byte	1
                           1535 	.globl _height2RisingFront0
   0678                    1536 _height2RisingFront0:
   0678 00                 1537 	.byte	0
   0679 0C                 1538 	.byte	12
   067A 01                 1539 	.byte	1
   067B FF                 1540 	.byte	-1
   067C 03                 1541 	.byte	3
   067D 0E                 1542 	.byte	14
   067E FF                 1543 	.byte	-1
   067F F4                 1544 	.byte	-12
   0680 FF                 1545 	.byte	-1
   0681 FF                 1546 	.byte	-1
   0682 FD                 1547 	.byte	-3
   0683 F2                 1548 	.byte	-14
   0684 FF                 1549 	.byte	-1
   0685 0C                 1550 	.byte	12
   0686 01                 1551 	.byte	1
   0687 FF                 1552 	.byte	-1
   0688 13                 1553 	.byte	19
   0689 F5                 1554 	.byte	-11
   068A 00                 1555 	.byte	0
   068B F0                 1556 	.byte	-16
   068C 19                 1557 	.byte	25
   068D FF                 1558 	.byte	-1
   068E 13                 1559 	.byte	19
   068F F4                 1560 	.byte	-12
   0690 00                 1561 	.byte	0
   0691 E1                 1562 	.byte	-31
   0692 0B                 1563 	.byte	11
   0693 FF                 1564 	.byte	-1
   0694 13                 1565 	.byte	19
   0695 F4                 1566 	.byte	-12
   0696 00                 1567 	.byte	0
   0697 EA                 1568 	.byte	-22
   0698 FE                 1569 	.byte	-2
   0699 FF                 1570 	.byte	-1
   069A 13                 1571 	.byte	19
   069B F5                 1572 	.byte	-11
   069C 00                 1573 	.byte	0
   069D 0C                 1574 	.byte	12
   069E 01                 1575 	.byte	1
   069F FF                 1576 	.byte	-1
   06A0 03                 1577 	.byte	3
   06A1 0D                 1578 	.byte	13
   06A2 FF                 1579 	.byte	-1
   06A3 F4                 1580 	.byte	-12
   06A4 FF                 1581 	.byte	-1
   06A5 FF                 1582 	.byte	-1
   06A6 FD                 1583 	.byte	-3
   06A7 F3                 1584 	.byte	-13
   06A8 FF                 1585 	.byte	-1
   06A9 0C                 1586 	.byte	12
   06AA 01                 1587 	.byte	1
   06AB 01                 1588 	.byte	1
                           1589 	.globl _height2FallingFront0
   06AC                    1590 _height2FallingFront0:
   06AC FF                 1591 	.byte	-1
   06AD 03                 1592 	.byte	3
   06AE 0E                 1593 	.byte	14
   06AF FF                 1594 	.byte	-1
   06B0 08                 1595 	.byte	8
   06B1 FA                 1596 	.byte	-6
   06B2 FF                 1597 	.byte	-1
   06B3 FD                 1598 	.byte	-3
   06B4 F3                 1599 	.byte	-13
   06B5 FF                 1600 	.byte	-1
   06B6 F8                 1601 	.byte	-8
   06B7 05                 1602 	.byte	5
   06B8 FF                 1603 	.byte	-1
   06B9 1A                 1604 	.byte	26
   06BA 00                 1605 	.byte	0
   06BB 00                 1606 	.byte	0
   06BC E9                 1607 	.byte	-23
   06BD 0E                 1608 	.byte	14
   06BE FF                 1609 	.byte	-1
   06BF 1A                 1610 	.byte	26
   06C0 00                 1611 	.byte	0
   06C1 00                 1612 	.byte	0
   06C2 EE                 1613 	.byte	-18
   06C3 FA                 1614 	.byte	-6
   06C4 FF                 1615 	.byte	-1
   06C5 1A                 1616 	.byte	26
   06C6 00                 1617 	.byte	0
   06C7 00                 1618 	.byte	0
   06C8 E3                 1619 	.byte	-29
   06C9 F3                 1620 	.byte	-13
   06CA FF                 1621 	.byte	-1
   06CB 1A                 1622 	.byte	26
   06CC 00                 1623 	.byte	0
   06CD 00                 1624 	.byte	0
   06CE F8                 1625 	.byte	-8
   06CF 05                 1626 	.byte	5
   06D0 FF                 1627 	.byte	-1
   06D1 03                 1628 	.byte	3
   06D2 0E                 1629 	.byte	14
   06D3 FF                 1630 	.byte	-1
   06D4 08                 1631 	.byte	8
   06D5 FA                 1632 	.byte	-6
   06D6 FF                 1633 	.byte	-1
   06D7 FD                 1634 	.byte	-3
   06D8 F3                 1635 	.byte	-13
   06D9 FF                 1636 	.byte	-1
   06DA F8                 1637 	.byte	-8
   06DB 05                 1638 	.byte	5
   06DC 01                 1639 	.byte	1
                           1640 	.globl _height2RisingBack0
   06DD                    1641 _height2RisingBack0:
   06DD 00                 1642 	.byte	0
   06DE 10                 1643 	.byte	16
   06DF F5                 1644 	.byte	-11
   06E0 FF                 1645 	.byte	-1
   06E1 03                 1646 	.byte	3
   06E2 0D                 1647 	.byte	13
   06E3 FF                 1648 	.byte	-1
   06E4 0E                 1649 	.byte	14
   06E5 FF                 1650 	.byte	-1
   06E6 FF                 1651 	.byte	-1
   06E7 FD                 1652 	.byte	-3
   06E8 F3                 1653 	.byte	-13
   06E9 FF                 1654 	.byte	-1
   06EA F2                 1655 	.byte	-14
   06EB 01                 1656 	.byte	1
   06EC FF                 1657 	.byte	-1
   06ED F4                 1658 	.byte	-12
   06EE 0B                 1659 	.byte	11
   06EF 00                 1660 	.byte	0
   06F0 0F                 1661 	.byte	15
   06F1 02                 1662 	.byte	2
   06F2 FF                 1663 	.byte	-1
   06F3 F4                 1664 	.byte	-12
   06F4 0C                 1665 	.byte	12
   06F5 00                 1666 	.byte	0
   06F6 1A                 1667 	.byte	26
   06F7 F3                 1668 	.byte	-13
   06F8 FF                 1669 	.byte	-1
   06F9 F3                 1670 	.byte	-13
   06FA 0C                 1671 	.byte	12
   06FB 00                 1672 	.byte	0
   06FC 0A                 1673 	.byte	10
   06FD E7                 1674 	.byte	-25
   06FE FF                 1675 	.byte	-1
   06FF F3                 1676 	.byte	-13
   0700 0C                 1677 	.byte	12
   0701 00                 1678 	.byte	0
   0702 F3                 1679 	.byte	-13
   0703 00                 1680 	.byte	0
   0704 FF                 1681 	.byte	-1
   0705 03                 1682 	.byte	3
   0706 0E                 1683 	.byte	14
   0707 FF                 1684 	.byte	-1
   0708 0D                 1685 	.byte	13
   0709 FF                 1686 	.byte	-1
   070A FF                 1687 	.byte	-1
   070B FD                 1688 	.byte	-3
   070C F3                 1689 	.byte	-13
   070D FF                 1690 	.byte	-1
   070E F3                 1691 	.byte	-13
   070F 00                 1692 	.byte	0
   0710 01                 1693 	.byte	1
                           1694 	.globl _depth2RollingLeft0
   0711                    1695 _depth2RollingLeft0:
   0711 FF                 1696 	.byte	-1
   0712 03                 1697 	.byte	3
   0713 0E                 1698 	.byte	14
   0714 FF                 1699 	.byte	-1
   0715 10                 1700 	.byte	16
   0716 F4                 1701 	.byte	-12
   0717 FF                 1702 	.byte	-1
   0718 FD                 1703 	.byte	-3
   0719 F3                 1704 	.byte	-13
   071A FF                 1705 	.byte	-1
   071B F0                 1706 	.byte	-16
   071C 0B                 1707 	.byte	11
   071D FF                 1708 	.byte	-1
   071E 0D                 1709 	.byte	13
   071F 00                 1710 	.byte	0
   0720 00                 1711 	.byte	0
   0721 F6                 1712 	.byte	-10
   0722 0E                 1713 	.byte	14
   0723 FF                 1714 	.byte	-1
   0724 0D                 1715 	.byte	13
   0725 00                 1716 	.byte	0
   0726 00                 1717 	.byte	0
   0727 03                 1718 	.byte	3
   0728 F4                 1719 	.byte	-12
   0729 FF                 1720 	.byte	-1
   072A 0D                 1721 	.byte	13
   072B 00                 1722 	.byte	0
   072C 00                 1723 	.byte	0
   072D F0                 1724 	.byte	-16
   072E F3                 1725 	.byte	-13
   072F FF                 1726 	.byte	-1
   0730 0D                 1727 	.byte	13
   0731 00                 1728 	.byte	0
   0732 00                 1729 	.byte	0
   0733 F0                 1730 	.byte	-16
   0734 0B                 1731 	.byte	11
   0735 FF                 1732 	.byte	-1
   0736 03                 1733 	.byte	3
   0737 0E                 1734 	.byte	14
   0738 FF                 1735 	.byte	-1
   0739 10                 1736 	.byte	16
   073A F4                 1737 	.byte	-12
   073B FF                 1738 	.byte	-1
   073C FD                 1739 	.byte	-3
   073D F3                 1740 	.byte	-13
   073E FF                 1741 	.byte	-1
   073F F0                 1742 	.byte	-16
   0740 0B                 1743 	.byte	11
   0741 01                 1744 	.byte	1
                           1745 	.globl _depth2RollingRight0
   0742                    1746 _depth2RollingRight0:
   0742 FF                 1747 	.byte	-1
   0743 03                 1748 	.byte	3
   0744 0E                 1749 	.byte	14
   0745 FF                 1750 	.byte	-1
   0746 10                 1751 	.byte	16
   0747 F4                 1752 	.byte	-12
   0748 FF                 1753 	.byte	-1
   0749 FD                 1754 	.byte	-3
   074A F3                 1755 	.byte	-13
   074B FF                 1756 	.byte	-1
   074C F0                 1757 	.byte	-16
   074D 0B                 1758 	.byte	11
   074E FF                 1759 	.byte	-1
   074F 0D                 1760 	.byte	13
   0750 00                 1761 	.byte	0
   0751 00                 1762 	.byte	0
   0752 F6                 1763 	.byte	-10
   0753 0E                 1764 	.byte	14
   0754 FF                 1765 	.byte	-1
   0755 0D                 1766 	.byte	13
   0756 00                 1767 	.byte	0
   0757 00                 1768 	.byte	0
   0758 03                 1769 	.byte	3
   0759 F4                 1770 	.byte	-12
   075A FF                 1771 	.byte	-1
   075B 0D                 1772 	.byte	13
   075C 00                 1773 	.byte	0
   075D 00                 1774 	.byte	0
   075E F0                 1775 	.byte	-16
   075F F3                 1776 	.byte	-13
   0760 FF                 1777 	.byte	-1
   0761 0D                 1778 	.byte	13
   0762 00                 1779 	.byte	0
   0763 00                 1780 	.byte	0
   0764 F0                 1781 	.byte	-16
   0765 0B                 1782 	.byte	11
   0766 FF                 1783 	.byte	-1
   0767 03                 1784 	.byte	3
   0768 0E                 1785 	.byte	14
   0769 FF                 1786 	.byte	-1
   076A 10                 1787 	.byte	16
   076B F4                 1788 	.byte	-12
   076C FF                 1789 	.byte	-1
   076D FD                 1790 	.byte	-3
   076E F3                 1791 	.byte	-13
   076F FF                 1792 	.byte	-1
   0770 F0                 1793 	.byte	-16
   0771 0B                 1794 	.byte	11
   0772 01                 1795 	.byte	1
                           1796 	.globl _width2RollingFront0
   0773                    1797 _width2RollingFront0:
   0773 FF                 1798 	.byte	-1
   0774 06                 1799 	.byte	6
   0775 1C                 1800 	.byte	28
   0776 FF                 1801 	.byte	-1
   0777 08                 1802 	.byte	8
   0778 FA                 1803 	.byte	-6
   0779 FF                 1804 	.byte	-1
   077A FA                 1805 	.byte	-6
   077B E5                 1806 	.byte	-27
   077C FF                 1807 	.byte	-1
   077D F8                 1808 	.byte	-8
   077E 05                 1809 	.byte	5
   077F FF                 1810 	.byte	-1
   0780 0D                 1811 	.byte	13
   0781 00                 1812 	.byte	0
   0782 00                 1813 	.byte	0
   0783 F9                 1814 	.byte	-7
   0784 1C                 1815 	.byte	28
   0785 FF                 1816 	.byte	-1
   0786 0D                 1817 	.byte	13
   0787 00                 1818 	.byte	0
   0788 00                 1819 	.byte	0
   0789 FB                 1820 	.byte	-5
   078A FA                 1821 	.byte	-6
   078B FF                 1822 	.byte	-1
   078C 0D                 1823 	.byte	13
   078D 00                 1824 	.byte	0
   078E 00                 1825 	.byte	0
   078F ED                 1826 	.byte	-19
   0790 E5                 1827 	.byte	-27
   0791 FF                 1828 	.byte	-1
   0792 0D                 1829 	.byte	13
   0793 00                 1830 	.byte	0
   0794 00                 1831 	.byte	0
   0795 F8                 1832 	.byte	-8
   0796 05                 1833 	.byte	5
   0797 FF                 1834 	.byte	-1
   0798 06                 1835 	.byte	6
   0799 1C                 1836 	.byte	28
   079A FF                 1837 	.byte	-1
   079B 08                 1838 	.byte	8
   079C FA                 1839 	.byte	-6
   079D FF                 1840 	.byte	-1
   079E FA                 1841 	.byte	-6
   079F E5                 1842 	.byte	-27
   07A0 FF                 1843 	.byte	-1
   07A1 F8                 1844 	.byte	-8
   07A2 05                 1845 	.byte	5
   07A3 01                 1846 	.byte	1
                           1847 	.globl _width2RollingBack0
   07A4                    1848 _width2RollingBack0:
   07A4 FF                 1849 	.byte	-1
   07A5 06                 1850 	.byte	6
   07A6 1C                 1851 	.byte	28
   07A7 FF                 1852 	.byte	-1
   07A8 08                 1853 	.byte	8
   07A9 FA                 1854 	.byte	-6
   07AA FF                 1855 	.byte	-1
   07AB FA                 1856 	.byte	-6
   07AC E5                 1857 	.byte	-27
   07AD FF                 1858 	.byte	-1
   07AE F8                 1859 	.byte	-8
   07AF 05                 1860 	.byte	5
   07B0 FF                 1861 	.byte	-1
   07B1 0D                 1862 	.byte	13
   07B2 00                 1863 	.byte	0
   07B3 00                 1864 	.byte	0
   07B4 F9                 1865 	.byte	-7
   07B5 1C                 1866 	.byte	28
   07B6 FF                 1867 	.byte	-1
   07B7 0D                 1868 	.byte	13
   07B8 00                 1869 	.byte	0
   07B9 00                 1870 	.byte	0
   07BA FB                 1871 	.byte	-5
   07BB FA                 1872 	.byte	-6
   07BC FF                 1873 	.byte	-1
   07BD 0D                 1874 	.byte	13
   07BE 00                 1875 	.byte	0
   07BF 00                 1876 	.byte	0
   07C0 ED                 1877 	.byte	-19
   07C1 E5                 1878 	.byte	-27
   07C2 FF                 1879 	.byte	-1
   07C3 0D                 1880 	.byte	13
   07C4 00                 1881 	.byte	0
   07C5 00                 1882 	.byte	0
   07C6 F8                 1883 	.byte	-8
   07C7 05                 1884 	.byte	5
   07C8 FF                 1885 	.byte	-1
   07C9 06                 1886 	.byte	6
   07CA 1C                 1887 	.byte	28
   07CB FF                 1888 	.byte	-1
   07CC 08                 1889 	.byte	8
   07CD FA                 1890 	.byte	-6
   07CE FF                 1891 	.byte	-1
   07CF FA                 1892 	.byte	-6
   07D0 E5                 1893 	.byte	-27
   07D1 FF                 1894 	.byte	-1
   07D2 F8                 1895 	.byte	-8
   07D3 05                 1896 	.byte	5
   07D4 01                 1897 	.byte	1
                           1898 	.globl _height1FallingLeft0
   07D5                    1899 _height1FallingLeft0:
   07D5 FF                 1900 	.byte	-1
   07D6 03                 1901 	.byte	3
   07D7 0E                 1902 	.byte	14
   07D8 FF                 1903 	.byte	-1
   07D9 08                 1904 	.byte	8
   07DA FA                 1905 	.byte	-6
   07DB FF                 1906 	.byte	-1
   07DC FD                 1907 	.byte	-3
   07DD F3                 1908 	.byte	-13
   07DE FF                 1909 	.byte	-1
   07DF F8                 1910 	.byte	-8
   07E0 05                 1911 	.byte	5
   07E1 FF                 1912 	.byte	-1
   07E2 0D                 1913 	.byte	13
   07E3 00                 1914 	.byte	0
   07E4 00                 1915 	.byte	0
   07E5 F6                 1916 	.byte	-10
   07E6 0E                 1917 	.byte	14
   07E7 FF                 1918 	.byte	-1
   07E8 0D                 1919 	.byte	13
   07E9 00                 1920 	.byte	0
   07EA 00                 1921 	.byte	0
   07EB FB                 1922 	.byte	-5
   07EC FA                 1923 	.byte	-6
   07ED FF                 1924 	.byte	-1
   07EE 0D                 1925 	.byte	13
   07EF 00                 1926 	.byte	0
   07F0 00                 1927 	.byte	0
   07F1 F0                 1928 	.byte	-16
   07F2 F3                 1929 	.byte	-13
   07F3 FF                 1930 	.byte	-1
   07F4 0D                 1931 	.byte	13
   07F5 00                 1932 	.byte	0
   07F6 00                 1933 	.byte	0
   07F7 F8                 1934 	.byte	-8
   07F8 05                 1935 	.byte	5
   07F9 FF                 1936 	.byte	-1
   07FA 03                 1937 	.byte	3
   07FB 0E                 1938 	.byte	14
   07FC FF                 1939 	.byte	-1
   07FD 08                 1940 	.byte	8
   07FE FA                 1941 	.byte	-6
   07FF FF                 1942 	.byte	-1
   0800 FD                 1943 	.byte	-3
   0801 F3                 1944 	.byte	-13
   0802 FF                 1945 	.byte	-1
   0803 F8                 1946 	.byte	-8
   0804 05                 1947 	.byte	5
   0805 01                 1948 	.byte	1
                           1949 	.globl _height1FallingRight0
   0806                    1950 _height1FallingRight0:
   0806 FF                 1951 	.byte	-1
   0807 03                 1952 	.byte	3
   0808 0E                 1953 	.byte	14
   0809 FF                 1954 	.byte	-1
   080A 08                 1955 	.byte	8
   080B FA                 1956 	.byte	-6
   080C FF                 1957 	.byte	-1
   080D FD                 1958 	.byte	-3
   080E F3                 1959 	.byte	-13
   080F FF                 1960 	.byte	-1
   0810 F8                 1961 	.byte	-8
   0811 05                 1962 	.byte	5
   0812 FF                 1963 	.byte	-1
   0813 0D                 1964 	.byte	13
   0814 00                 1965 	.byte	0
   0815 00                 1966 	.byte	0
   0816 F6                 1967 	.byte	-10
   0817 0E                 1968 	.byte	14
   0818 FF                 1969 	.byte	-1
   0819 0D                 1970 	.byte	13
   081A 00                 1971 	.byte	0
   081B 00                 1972 	.byte	0
   081C FB                 1973 	.byte	-5
   081D FA                 1974 	.byte	-6
   081E FF                 1975 	.byte	-1
   081F 0D                 1976 	.byte	13
   0820 00                 1977 	.byte	0
   0821 00                 1978 	.byte	0
   0822 F0                 1979 	.byte	-16
   0823 F3                 1980 	.byte	-13
   0824 FF                 1981 	.byte	-1
   0825 0D                 1982 	.byte	13
   0826 00                 1983 	.byte	0
   0827 00                 1984 	.byte	0
   0828 F8                 1985 	.byte	-8
   0829 05                 1986 	.byte	5
   082A FF                 1987 	.byte	-1
   082B 03                 1988 	.byte	3
   082C 0E                 1989 	.byte	14
   082D FF                 1990 	.byte	-1
   082E 08                 1991 	.byte	8
   082F FA                 1992 	.byte	-6
   0830 FF                 1993 	.byte	-1
   0831 FD                 1994 	.byte	-3
   0832 F3                 1995 	.byte	-13
   0833 FF                 1996 	.byte	-1
   0834 F8                 1997 	.byte	-8
   0835 05                 1998 	.byte	5
   0836 01                 1999 	.byte	1
                           2000 	.globl _height1FallingBack0
   0837                    2001 _height1FallingBack0:
   0837 FF                 2002 	.byte	-1
   0838 03                 2003 	.byte	3
   0839 0E                 2004 	.byte	14
   083A FF                 2005 	.byte	-1
   083B 08                 2006 	.byte	8
   083C FA                 2007 	.byte	-6
   083D FF                 2008 	.byte	-1
   083E FD                 2009 	.byte	-3
   083F F3                 2010 	.byte	-13
   0840 FF                 2011 	.byte	-1
   0841 F8                 2012 	.byte	-8
   0842 05                 2013 	.byte	5
   0843 FF                 2014 	.byte	-1
   0844 0D                 2015 	.byte	13
   0845 00                 2016 	.byte	0
   0846 00                 2017 	.byte	0
   0847 F6                 2018 	.byte	-10
   0848 0E                 2019 	.byte	14
   0849 FF                 2020 	.byte	-1
   084A 0D                 2021 	.byte	13
   084B 00                 2022 	.byte	0
   084C 00                 2023 	.byte	0
   084D FB                 2024 	.byte	-5
   084E FA                 2025 	.byte	-6
   084F FF                 2026 	.byte	-1
   0850 0D                 2027 	.byte	13
   0851 00                 2028 	.byte	0
   0852 00                 2029 	.byte	0
   0853 F0                 2030 	.byte	-16
   0854 F3                 2031 	.byte	-13
   0855 FF                 2032 	.byte	-1
   0856 0D                 2033 	.byte	13
   0857 00                 2034 	.byte	0
   0858 00                 2035 	.byte	0
   0859 F8                 2036 	.byte	-8
   085A 05                 2037 	.byte	5
   085B FF                 2038 	.byte	-1
   085C 03                 2039 	.byte	3
   085D 0E                 2040 	.byte	14
   085E FF                 2041 	.byte	-1
   085F 08                 2042 	.byte	8
   0860 FA                 2043 	.byte	-6
   0861 FF                 2044 	.byte	-1
   0862 FD                 2045 	.byte	-3
   0863 F3                 2046 	.byte	-13
   0864 FF                 2047 	.byte	-1
   0865 F8                 2048 	.byte	-8
   0866 05                 2049 	.byte	5
   0867 01                 2050 	.byte	1
                           2051 	.globl _height1FallingFront0
   0868                    2052 _height1FallingFront0:
   0868 FF                 2053 	.byte	-1
   0869 03                 2054 	.byte	3
   086A 0E                 2055 	.byte	14
   086B FF                 2056 	.byte	-1
   086C 08                 2057 	.byte	8
   086D FA                 2058 	.byte	-6
   086E FF                 2059 	.byte	-1
   086F FD                 2060 	.byte	-3
   0870 F3                 2061 	.byte	-13
   0871 FF                 2062 	.byte	-1
   0872 F8                 2063 	.byte	-8
   0873 05                 2064 	.byte	5
   0874 FF                 2065 	.byte	-1
   0875 0D                 2066 	.byte	13
   0876 00                 2067 	.byte	0
   0877 00                 2068 	.byte	0
   0878 F6                 2069 	.byte	-10
   0879 0E                 2070 	.byte	14
   087A FF                 2071 	.byte	-1
   087B 0D                 2072 	.byte	13
   087C 00                 2073 	.byte	0
   087D 00                 2074 	.byte	0
   087E FB                 2075 	.byte	-5
   087F FA                 2076 	.byte	-6
   0880 FF                 2077 	.byte	-1
   0881 0D                 2078 	.byte	13
   0882 00                 2079 	.byte	0
   0883 00                 2080 	.byte	0
   0884 F0                 2081 	.byte	-16
   0885 F3                 2082 	.byte	-13
   0886 FF                 2083 	.byte	-1
   0887 0D                 2084 	.byte	13
   0888 00                 2085 	.byte	0
   0889 00                 2086 	.byte	0
   088A F8                 2087 	.byte	-8
   088B 05                 2088 	.byte	5
   088C FF                 2089 	.byte	-1
   088D 03                 2090 	.byte	3
   088E 0E                 2091 	.byte	14
   088F FF                 2092 	.byte	-1
   0890 08                 2093 	.byte	8
   0891 FA                 2094 	.byte	-6
   0892 FF                 2095 	.byte	-1
   0893 FD                 2096 	.byte	-3
   0894 F3                 2097 	.byte	-13
   0895 FF                 2098 	.byte	-1
   0896 F8                 2099 	.byte	-8
   0897 05                 2100 	.byte	5
   0898 01                 2101 	.byte	1
                           2102 	.globl _height2FallingLeft1
   0899                    2103 _height2FallingLeft1:
   0899 FF                 2104 	.byte	-1
   089A 05                 2105 	.byte	5
   089B 0E                 2106 	.byte	14
   089C FF                 2107 	.byte	-1
   089D 08                 2108 	.byte	8
   089E FA                 2109 	.byte	-6
   089F FF                 2110 	.byte	-1
   08A0 FB                 2111 	.byte	-5
   08A1 F3                 2112 	.byte	-13
   08A2 FF                 2113 	.byte	-1
   08A3 F8                 2114 	.byte	-8
   08A4 05                 2115 	.byte	5
   08A5 FF                 2116 	.byte	-1
   08A6 19                 2117 	.byte	25
   08A7 FD                 2118 	.byte	-3
   08A8 00                 2119 	.byte	0
   08A9 EC                 2120 	.byte	-20
   08AA 11                 2121 	.byte	17
   08AB FF                 2122 	.byte	-1
   08AC 19                 2123 	.byte	25
   08AD FC                 2124 	.byte	-4
   08AE 00                 2125 	.byte	0
   08AF EF                 2126 	.byte	-17
   08B0 FE                 2127 	.byte	-2
   08B1 FF                 2128 	.byte	-1
   08B2 19                 2129 	.byte	25
   08B3 FC                 2130 	.byte	-4
   08B4 00                 2131 	.byte	0
   08B5 E2                 2132 	.byte	-30
   08B6 F7                 2133 	.byte	-9
   08B7 FF                 2134 	.byte	-1
   08B8 19                 2135 	.byte	25
   08B9 FC                 2136 	.byte	-4
   08BA 00                 2137 	.byte	0
   08BB F8                 2138 	.byte	-8
   08BC 06                 2139 	.byte	6
   08BD FF                 2140 	.byte	-1
   08BE 05                 2141 	.byte	5
   08BF 0D                 2142 	.byte	13
   08C0 FF                 2143 	.byte	-1
   08C1 08                 2144 	.byte	8
   08C2 FA                 2145 	.byte	-6
   08C3 FF                 2146 	.byte	-1
   08C4 FB                 2147 	.byte	-5
   08C5 F3                 2148 	.byte	-13
   08C6 FF                 2149 	.byte	-1
   08C7 F8                 2150 	.byte	-8
   08C8 06                 2151 	.byte	6
   08C9 01                 2152 	.byte	1
                           2153 	.globl _height2RisingRight1
   08CA                    2154 _height2RisingRight1:
   08CA 00                 2155 	.byte	0
   08CB 06                 2156 	.byte	6
   08CC 1C                 2157 	.byte	28
   08CD FF                 2158 	.byte	-1
   08CE 0D                 2159 	.byte	13
   08CF 04                 2160 	.byte	4
   08D0 FF                 2161 	.byte	-1
   08D1 08                 2162 	.byte	8
   08D2 FA                 2163 	.byte	-6
   08D3 FF                 2164 	.byte	-1
   08D4 F3                 2165 	.byte	-13
   08D5 FC                 2166 	.byte	-4
   08D6 FF                 2167 	.byte	-1
   08D7 F8                 2168 	.byte	-8
   08D8 06                 2169 	.byte	6
   08D9 FF                 2170 	.byte	-1
   08DA 01                 2171 	.byte	1
   08DB E5                 2172 	.byte	-27
   08DC 00                 2173 	.byte	0
   08DD 0C                 2174 	.byte	12
   08DE 1F                 2175 	.byte	31
   08DF FF                 2176 	.byte	-1
   08E0 01                 2177 	.byte	1
   08E1 E5                 2178 	.byte	-27
   08E2 00                 2179 	.byte	0
   08E3 07                 2180 	.byte	7
   08E4 15                 2181 	.byte	21
   08E5 FF                 2182 	.byte	-1
   08E6 01                 2183 	.byte	1
   08E7 E6                 2184 	.byte	-26
   08E8 00                 2185 	.byte	0
   08E9 F2                 2186 	.byte	-14
   08EA 16                 2187 	.byte	22
   08EB FF                 2188 	.byte	-1
   08EC 01                 2189 	.byte	1
   08ED E6                 2190 	.byte	-26
   08EE 00                 2191 	.byte	0
   08EF F8                 2192 	.byte	-8
   08F0 05                 2193 	.byte	5
   08F1 FF                 2194 	.byte	-1
   08F2 0D                 2195 	.byte	13
   08F3 04                 2196 	.byte	4
   08F4 FF                 2197 	.byte	-1
   08F5 08                 2198 	.byte	8
   08F6 FB                 2199 	.byte	-5
   08F7 FF                 2200 	.byte	-1
   08F8 F3                 2201 	.byte	-13
   08F9 FC                 2202 	.byte	-4
   08FA FF                 2203 	.byte	-1
   08FB F8                 2204 	.byte	-8
   08FC 05                 2205 	.byte	5
   08FD 01                 2206 	.byte	1
                           2207 	.globl _height2FallingRight1
   08FE                    2208 _height2FallingRight1:
   08FE 00                 2209 	.byte	0
   08FF 02                 2210 	.byte	2
   0900 00                 2211 	.byte	0
   0901 FF                 2212 	.byte	-1
   0902 01                 2213 	.byte	1
   0903 0E                 2214 	.byte	14
   0904 FF                 2215 	.byte	-1
   0905 08                 2216 	.byte	8
   0906 FA                 2217 	.byte	-6
   0907 FF                 2218 	.byte	-1
   0908 FF                 2219 	.byte	-1
   0909 F3                 2220 	.byte	-13
   090A FF                 2221 	.byte	-1
   090B F8                 2222 	.byte	-8
   090C 05                 2223 	.byte	5
   090D FF                 2224 	.byte	-1
   090E 1A                 2225 	.byte	26
   090F 04                 2226 	.byte	4
   0910 00                 2227 	.byte	0
   0911 E7                 2228 	.byte	-25
   0912 0A                 2229 	.byte	10
   0913 FF                 2230 	.byte	-1
   0914 1B                 2231 	.byte	27
   0915 04                 2232 	.byte	4
   0916 00                 2233 	.byte	0
   0917 ED                 2234 	.byte	-19
   0918 F6                 2235 	.byte	-10
   0919 FF                 2236 	.byte	-1
   091A 1B                 2237 	.byte	27
   091B 04                 2238 	.byte	4
   091C 00                 2239 	.byte	0
   091D E4                 2240 	.byte	-28
   091E EF                 2241 	.byte	-17
   091F FF                 2242 	.byte	-1
   0920 1A                 2243 	.byte	26
   0921 04                 2244 	.byte	4
   0922 00                 2245 	.byte	0
   0923 F8                 2246 	.byte	-8
   0924 05                 2247 	.byte	5
   0925 FF                 2248 	.byte	-1
   0926 02                 2249 	.byte	2
   0927 0E                 2250 	.byte	14
   0928 FF                 2251 	.byte	-1
   0929 08                 2252 	.byte	8
   092A FA                 2253 	.byte	-6
   092B FF                 2254 	.byte	-1
   092C FE                 2255 	.byte	-2
   092D F3                 2256 	.byte	-13
   092E FF                 2257 	.byte	-1
   092F F8                 2258 	.byte	-8
   0930 05                 2259 	.byte	5
   0931 01                 2260 	.byte	1
                           2261 	.globl _height2RisingLeft1
   0932                    2262 _height2RisingLeft1:
   0932 00                 2263 	.byte	0
   0933 0C                 2264 	.byte	12
   0934 FD                 2265 	.byte	-3
   0935 FF                 2266 	.byte	-1
   0936 F4                 2267 	.byte	-12
   0937 03                 2268 	.byte	3
   0938 FF                 2269 	.byte	-1
   0939 08                 2270 	.byte	8
   093A FB                 2271 	.byte	-5
   093B FF                 2272 	.byte	-1
   093C 0C                 2273 	.byte	12
   093D FC                 2274 	.byte	-4
   093E FF                 2275 	.byte	-1
   093F F8                 2276 	.byte	-8
   0940 06                 2277 	.byte	6
   0941 FF                 2278 	.byte	-1
   0942 0C                 2279 	.byte	12
   0943 1A                 2280 	.byte	26
   0944 00                 2281 	.byte	0
   0945 E8                 2282 	.byte	-24
   0946 E9                 2283 	.byte	-23
   0947 FF                 2284 	.byte	-1
   0948 0D                 2285 	.byte	13
   0949 1B                 2286 	.byte	27
   094A 00                 2287 	.byte	0
   094B FB                 2288 	.byte	-5
   094C E0                 2289 	.byte	-32
   094D FF                 2290 	.byte	-1
   094E 0D                 2291 	.byte	13
   094F 1A                 2292 	.byte	26
   0950 00                 2293 	.byte	0
   0951 FF                 2294 	.byte	-1
   0952 E2                 2295 	.byte	-30
   0953 FF                 2296 	.byte	-1
   0954 0C                 2297 	.byte	12
   0955 1A                 2298 	.byte	26
   0956 00                 2299 	.byte	0
   0957 F8                 2300 	.byte	-8
   0958 06                 2301 	.byte	6
   0959 FF                 2302 	.byte	-1
   095A F5                 2303 	.byte	-11
   095B 04                 2304 	.byte	4
   095C FF                 2305 	.byte	-1
   095D 08                 2306 	.byte	8
   095E FA                 2307 	.byte	-6
   095F FF                 2308 	.byte	-1
   0960 0B                 2309 	.byte	11
   0961 FC                 2310 	.byte	-4
   0962 FF                 2311 	.byte	-1
   0963 F8                 2312 	.byte	-8
   0964 06                 2313 	.byte	6
   0965 01                 2314 	.byte	1
                           2315 	.globl _height2FallingBack1
   0966                    2316 _height2FallingBack1:
   0966 00                 2317 	.byte	0
   0967 02                 2318 	.byte	2
   0968 00                 2319 	.byte	0
   0969 FF                 2320 	.byte	-1
   096A 03                 2321 	.byte	3
   096B 0E                 2322 	.byte	14
   096C FF                 2323 	.byte	-1
   096D 06                 2324 	.byte	6
   096E FA                 2325 	.byte	-6
   096F FF                 2326 	.byte	-1
   0970 FD                 2327 	.byte	-3
   0971 F3                 2328 	.byte	-13
   0972 FF                 2329 	.byte	-1
   0973 FA                 2330 	.byte	-6
   0974 05                 2331 	.byte	5
   0975 FF                 2332 	.byte	-1
   0976 1C                 2333 	.byte	28
   0977 FF                 2334 	.byte	-1
   0978 00                 2335 	.byte	0
   0979 E7                 2336 	.byte	-25
   097A 0F                 2337 	.byte	15
   097B FF                 2338 	.byte	-1
   097C 1C                 2339 	.byte	28
   097D FE                 2340 	.byte	-2
   097E 00                 2341 	.byte	0
   097F EA                 2342 	.byte	-22
   0980 FC                 2343 	.byte	-4
   0981 FF                 2344 	.byte	-1
   0982 1C                 2345 	.byte	28
   0983 FE                 2346 	.byte	-2
   0984 00                 2347 	.byte	0
   0985 E1                 2348 	.byte	-31
   0986 F5                 2349 	.byte	-11
   0987 FF                 2350 	.byte	-1
   0988 1C                 2351 	.byte	28
   0989 FE                 2352 	.byte	-2
   098A 00                 2353 	.byte	0
   098B FA                 2354 	.byte	-6
   098C 06                 2355 	.byte	6
   098D FF                 2356 	.byte	-1
   098E 03                 2357 	.byte	3
   098F 0D                 2358 	.byte	13
   0990 FF                 2359 	.byte	-1
   0991 06                 2360 	.byte	6
   0992 FA                 2361 	.byte	-6
   0993 FF                 2362 	.byte	-1
   0994 FD                 2363 	.byte	-3
   0995 F3                 2364 	.byte	-13
   0996 FF                 2365 	.byte	-1
   0997 FA                 2366 	.byte	-6
   0998 06                 2367 	.byte	6
   0999 01                 2368 	.byte	1
                           2369 	.globl _height2RisingFront1
   099A                    2370 _height2RisingFront1:
   099A 00                 2371 	.byte	0
   099B 0A                 2372 	.byte	10
   099C 02                 2373 	.byte	2
   099D FF                 2374 	.byte	-1
   099E 03                 2375 	.byte	3
   099F 0E                 2376 	.byte	14
   09A0 FF                 2377 	.byte	-1
   09A1 F6                 2378 	.byte	-10
   09A2 FE                 2379 	.byte	-2
   09A3 FF                 2380 	.byte	-1
   09A4 FD                 2381 	.byte	-3
   09A5 F2                 2382 	.byte	-14
   09A6 FF                 2383 	.byte	-1
   09A7 0A                 2384 	.byte	10
   09A8 02                 2385 	.byte	2
   09A9 FF                 2386 	.byte	-1
   09AA 17                 2387 	.byte	23
   09AB F5                 2388 	.byte	-11
   09AC 00                 2389 	.byte	0
   09AD EC                 2390 	.byte	-20
   09AE 19                 2391 	.byte	25
   09AF FF                 2392 	.byte	-1
   09B0 17                 2393 	.byte	23
   09B1 F4                 2394 	.byte	-12
   09B2 00                 2395 	.byte	0
   09B3 DF                 2396 	.byte	-33
   09B4 0A                 2397 	.byte	10
   09B5 FF                 2398 	.byte	-1
   09B6 16                 2399 	.byte	22
   09B7 F4                 2400 	.byte	-12
   09B8 00                 2401 	.byte	0
   09B9 E7                 2402 	.byte	-25
   09BA FE                 2403 	.byte	-2
   09BB FF                 2404 	.byte	-1
   09BC 16                 2405 	.byte	22
   09BD F5                 2406 	.byte	-11
   09BE 00                 2407 	.byte	0
   09BF 0B                 2408 	.byte	11
   09C0 02                 2409 	.byte	2
   09C1 FF                 2410 	.byte	-1
   09C2 03                 2411 	.byte	3
   09C3 0D                 2412 	.byte	13
   09C4 FF                 2413 	.byte	-1
   09C5 F5                 2414 	.byte	-11
   09C6 FE                 2415 	.byte	-2
   09C7 FF                 2416 	.byte	-1
   09C8 FD                 2417 	.byte	-3
   09C9 F3                 2418 	.byte	-13
   09CA FF                 2419 	.byte	-1
   09CB 0B                 2420 	.byte	11
   09CC 02                 2421 	.byte	2
   09CD 01                 2422 	.byte	1
                           2423 	.globl _height2FallingFront1
   09CE                    2424 _height2FallingFront1:
   09CE FF                 2425 	.byte	-1
   09CF 03                 2426 	.byte	3
   09D0 0E                 2427 	.byte	14
   09D1 FF                 2428 	.byte	-1
   09D2 0A                 2429 	.byte	10
   09D3 FA                 2430 	.byte	-6
   09D4 FF                 2431 	.byte	-1
   09D5 FD                 2432 	.byte	-3
   09D6 F3                 2433 	.byte	-13
   09D7 FF                 2434 	.byte	-1
   09D8 F6                 2435 	.byte	-10
   09D9 05                 2436 	.byte	5
   09DA FF                 2437 	.byte	-1
   09DB 18                 2438 	.byte	24
   09DC 02                 2439 	.byte	2
   09DD 00                 2440 	.byte	0
   09DE EB                 2441 	.byte	-21
   09DF 0C                 2442 	.byte	12
   09E0 FF                 2443 	.byte	-1
   09E1 18                 2444 	.byte	24
   09E2 02                 2445 	.byte	2
   09E3 00                 2446 	.byte	0
   09E4 F2                 2447 	.byte	-14
   09E5 F8                 2448 	.byte	-8
   09E6 FF                 2449 	.byte	-1
   09E7 17                 2450 	.byte	23
   09E8 02                 2451 	.byte	2
   09E9 00                 2452 	.byte	0
   09EA E6                 2453 	.byte	-26
   09EB F1                 2454 	.byte	-15
   09EC FF                 2455 	.byte	-1
   09ED 17                 2456 	.byte	23
   09EE 02                 2457 	.byte	2
   09EF 00                 2458 	.byte	0
   09F0 F7                 2459 	.byte	-9
   09F1 05                 2460 	.byte	5
   09F2 FF                 2461 	.byte	-1
   09F3 03                 2462 	.byte	3
   09F4 0E                 2463 	.byte	14
   09F5 FF                 2464 	.byte	-1
   09F6 09                 2465 	.byte	9
   09F7 FA                 2466 	.byte	-6
   09F8 FF                 2467 	.byte	-1
   09F9 FD                 2468 	.byte	-3
   09FA F3                 2469 	.byte	-13
   09FB FF                 2470 	.byte	-1
   09FC F7                 2471 	.byte	-9
   09FD 05                 2472 	.byte	5
   09FE 01                 2473 	.byte	1
                           2474 	.globl _height2RisingBack1
   09FF                    2475 _height2RisingBack1:
   09FF 00                 2476 	.byte	0
   0A00 10                 2477 	.byte	16
   0A01 F5                 2478 	.byte	-11
   0A02 FF                 2479 	.byte	-1
   0A03 03                 2480 	.byte	3
   0A04 0D                 2481 	.byte	13
   0A05 FF                 2482 	.byte	-1
   0A06 0F                 2483 	.byte	15
   0A07 FE                 2484 	.byte	-2
   0A08 FF                 2485 	.byte	-1
   0A09 FD                 2486 	.byte	-3
   0A0A F3                 2487 	.byte	-13
   0A0B FF                 2488 	.byte	-1
   0A0C F1                 2489 	.byte	-15
   0A0D 02                 2490 	.byte	2
   0A0E FF                 2491 	.byte	-1
   0A0F F7                 2492 	.byte	-9
   0A10 0B                 2493 	.byte	11
   0A11 00                 2494 	.byte	0
   0A12 0C                 2495 	.byte	12
   0A13 02                 2496 	.byte	2
   0A14 FF                 2497 	.byte	-1
   0A15 F7                 2498 	.byte	-9
   0A16 0C                 2499 	.byte	12
   0A17 00                 2500 	.byte	0
   0A18 18                 2501 	.byte	24
   0A19 F2                 2502 	.byte	-14
   0A1A FF                 2503 	.byte	-1
   0A1B F7                 2504 	.byte	-9
   0A1C 0C                 2505 	.byte	12
   0A1D 00                 2506 	.byte	0
   0A1E 06                 2507 	.byte	6
   0A1F E7                 2508 	.byte	-25
   0A20 FF                 2509 	.byte	-1
   0A21 F7                 2510 	.byte	-9
   0A22 0C                 2511 	.byte	12
   0A23 00                 2512 	.byte	0
   0A24 F1                 2513 	.byte	-15
   0A25 01                 2514 	.byte	1
   0A26 FF                 2515 	.byte	-1
   0A27 03                 2516 	.byte	3
   0A28 0E                 2517 	.byte	14
   0A29 FF                 2518 	.byte	-1
   0A2A 0F                 2519 	.byte	15
   0A2B FE                 2520 	.byte	-2
   0A2C FF                 2521 	.byte	-1
   0A2D FD                 2522 	.byte	-3
   0A2E F3                 2523 	.byte	-13
   0A2F FF                 2524 	.byte	-1
   0A30 F1                 2525 	.byte	-15
   0A31 01                 2526 	.byte	1
   0A32 01                 2527 	.byte	1
                           2528 	.globl _depth2RollingLeft1
   0A33                    2529 _depth2RollingLeft1:
   0A33 FF                 2530 	.byte	-1
   0A34 05                 2531 	.byte	5
   0A35 0E                 2532 	.byte	14
   0A36 FF                 2533 	.byte	-1
   0A37 10                 2534 	.byte	16
   0A38 F4                 2535 	.byte	-12
   0A39 FF                 2536 	.byte	-1
   0A3A FB                 2537 	.byte	-5
   0A3B F3                 2538 	.byte	-13
   0A3C FF                 2539 	.byte	-1
   0A3D F0                 2540 	.byte	-16
   0A3E 0B                 2541 	.byte	11
   0A3F FF                 2542 	.byte	-1
   0A40 0C                 2543 	.byte	12
   0A41 FF                 2544 	.byte	-1
   0A42 00                 2545 	.byte	0
   0A43 F9                 2546 	.byte	-7
   0A44 0F                 2547 	.byte	15
   0A45 FF                 2548 	.byte	-1
   0A46 0C                 2549 	.byte	12
   0A47 FE                 2550 	.byte	-2
   0A48 00                 2551 	.byte	0
   0A49 04                 2552 	.byte	4
   0A4A F6                 2553 	.byte	-10
   0A4B FF                 2554 	.byte	-1
   0A4C 0C                 2555 	.byte	12
   0A4D FE                 2556 	.byte	-2
   0A4E 00                 2557 	.byte	0
   0A4F EF                 2558 	.byte	-17
   0A50 F5                 2559 	.byte	-11
   0A51 FF                 2560 	.byte	-1
   0A52 0C                 2561 	.byte	12
   0A53 FE                 2562 	.byte	-2
   0A54 00                 2563 	.byte	0
   0A55 F0                 2564 	.byte	-16
   0A56 0C                 2565 	.byte	12
   0A57 FF                 2566 	.byte	-1
   0A58 05                 2567 	.byte	5
   0A59 0D                 2568 	.byte	13
   0A5A FF                 2569 	.byte	-1
   0A5B 10                 2570 	.byte	16
   0A5C F4                 2571 	.byte	-12
   0A5D FF                 2572 	.byte	-1
   0A5E FB                 2573 	.byte	-5
   0A5F F3                 2574 	.byte	-13
   0A60 FF                 2575 	.byte	-1
   0A61 F0                 2576 	.byte	-16
   0A62 0C                 2577 	.byte	12
   0A63 01                 2578 	.byte	1
                           2579 	.globl _depth2RollingRight1
   0A64                    2580 _depth2RollingRight1:
   0A64 00                 2581 	.byte	0
   0A65 02                 2582 	.byte	2
   0A66 00                 2583 	.byte	0
   0A67 FF                 2584 	.byte	-1
   0A68 01                 2585 	.byte	1
   0A69 0E                 2586 	.byte	14
   0A6A FF                 2587 	.byte	-1
   0A6B 10                 2588 	.byte	16
   0A6C F4                 2589 	.byte	-12
   0A6D FF                 2590 	.byte	-1
   0A6E FF                 2591 	.byte	-1
   0A6F F3                 2592 	.byte	-13
   0A70 FF                 2593 	.byte	-1
   0A71 F0                 2594 	.byte	-16
   0A72 0B                 2595 	.byte	11
   0A73 FF                 2596 	.byte	-1
   0A74 0D                 2597 	.byte	13
   0A75 02                 2598 	.byte	2
   0A76 00                 2599 	.byte	0
   0A77 F4                 2600 	.byte	-12
   0A78 0C                 2601 	.byte	12
   0A79 FF                 2602 	.byte	-1
   0A7A 0D                 2603 	.byte	13
   0A7B 02                 2604 	.byte	2
   0A7C 00                 2605 	.byte	0
   0A7D 03                 2606 	.byte	3
   0A7E F2                 2607 	.byte	-14
   0A7F FF                 2608 	.byte	-1
   0A80 0D                 2609 	.byte	13
   0A81 02                 2610 	.byte	2
   0A82 00                 2611 	.byte	0
   0A83 F2                 2612 	.byte	-14
   0A84 F1                 2613 	.byte	-15
   0A85 FF                 2614 	.byte	-1
   0A86 0D                 2615 	.byte	13
   0A87 02                 2616 	.byte	2
   0A88 00                 2617 	.byte	0
   0A89 F0                 2618 	.byte	-16
   0A8A 0B                 2619 	.byte	11
   0A8B FF                 2620 	.byte	-1
   0A8C 01                 2621 	.byte	1
   0A8D 0E                 2622 	.byte	14
   0A8E FF                 2623 	.byte	-1
   0A8F 10                 2624 	.byte	16
   0A90 F4                 2625 	.byte	-12
   0A91 FF                 2626 	.byte	-1
   0A92 FF                 2627 	.byte	-1
   0A93 F3                 2628 	.byte	-13
   0A94 FF                 2629 	.byte	-1
   0A95 F0                 2630 	.byte	-16
   0A96 0B                 2631 	.byte	11
   0A97 01                 2632 	.byte	1
                           2633 	.globl _width2RollingFront1
   0A98                    2634 _width2RollingFront1:
   0A98 FF                 2635 	.byte	-1
   0A99 06                 2636 	.byte	6
   0A9A 1C                 2637 	.byte	28
   0A9B FF                 2638 	.byte	-1
   0A9C 0A                 2639 	.byte	10
   0A9D FA                 2640 	.byte	-6
   0A9E FF                 2641 	.byte	-1
   0A9F FA                 2642 	.byte	-6
   0AA0 E5                 2643 	.byte	-27
   0AA1 FF                 2644 	.byte	-1
   0AA2 F6                 2645 	.byte	-10
   0AA3 05                 2646 	.byte	5
   0AA4 FF                 2647 	.byte	-1
   0AA5 0C                 2648 	.byte	12
   0AA6 01                 2649 	.byte	1
   0AA7 00                 2650 	.byte	0
   0AA8 FA                 2651 	.byte	-6
   0AA9 1B                 2652 	.byte	27
   0AAA FF                 2653 	.byte	-1
   0AAB 0C                 2654 	.byte	12
   0AAC 01                 2655 	.byte	1
   0AAD 00                 2656 	.byte	0
   0AAE FE                 2657 	.byte	-2
   0AAF F9                 2658 	.byte	-7
   0AB0 FF                 2659 	.byte	-1
   0AB1 0B                 2660 	.byte	11
   0AB2 01                 2661 	.byte	1
   0AB3 00                 2662 	.byte	0
   0AB4 EF                 2663 	.byte	-17
   0AB5 E4                 2664 	.byte	-28
   0AB6 FF                 2665 	.byte	-1
   0AB7 0B                 2666 	.byte	11
   0AB8 01                 2667 	.byte	1
   0AB9 00                 2668 	.byte	0
   0ABA F7                 2669 	.byte	-9
   0ABB 05                 2670 	.byte	5
   0ABC FF                 2671 	.byte	-1
   0ABD 06                 2672 	.byte	6
   0ABE 1C                 2673 	.byte	28
   0ABF FF                 2674 	.byte	-1
   0AC0 09                 2675 	.byte	9
   0AC1 FA                 2676 	.byte	-6
   0AC2 FF                 2677 	.byte	-1
   0AC3 FA                 2678 	.byte	-6
   0AC4 E5                 2679 	.byte	-27
   0AC5 FF                 2680 	.byte	-1
   0AC6 F7                 2681 	.byte	-9
   0AC7 05                 2682 	.byte	5
   0AC8 01                 2683 	.byte	1
                           2684 	.globl _width2RollingBack1
   0AC9                    2685 _width2RollingBack1:
   0AC9 00                 2686 	.byte	0
   0ACA 02                 2687 	.byte	2
   0ACB 00                 2688 	.byte	0
   0ACC FF                 2689 	.byte	-1
   0ACD 06                 2690 	.byte	6
   0ACE 1C                 2691 	.byte	28
   0ACF FF                 2692 	.byte	-1
   0AD0 06                 2693 	.byte	6
   0AD1 FA                 2694 	.byte	-6
   0AD2 FF                 2695 	.byte	-1
   0AD3 FA                 2696 	.byte	-6
   0AD4 E5                 2697 	.byte	-27
   0AD5 FF                 2698 	.byte	-1
   0AD6 FA                 2699 	.byte	-6
   0AD7 05                 2700 	.byte	5
   0AD8 FF                 2701 	.byte	-1
   0AD9 0E                 2702 	.byte	14
   0ADA 00                 2703 	.byte	0
   0ADB 00                 2704 	.byte	0
   0ADC F8                 2705 	.byte	-8
   0ADD 1C                 2706 	.byte	28
   0ADE FF                 2707 	.byte	-1
   0ADF 0E                 2708 	.byte	14
   0AE0 FF                 2709 	.byte	-1
   0AE1 00                 2710 	.byte	0
   0AE2 F8                 2711 	.byte	-8
   0AE3 FB                 2712 	.byte	-5
   0AE4 FF                 2713 	.byte	-1
   0AE5 0E                 2714 	.byte	14
   0AE6 FF                 2715 	.byte	-1
   0AE7 00                 2716 	.byte	0
   0AE8 EC                 2717 	.byte	-20
   0AE9 E6                 2718 	.byte	-26
   0AEA FF                 2719 	.byte	-1
   0AEB 0E                 2720 	.byte	14
   0AEC FF                 2721 	.byte	-1
   0AED 00                 2722 	.byte	0
   0AEE FA                 2723 	.byte	-6
   0AEF 06                 2724 	.byte	6
   0AF0 FF                 2725 	.byte	-1
   0AF1 06                 2726 	.byte	6
   0AF2 1B                 2727 	.byte	27
   0AF3 FF                 2728 	.byte	-1
   0AF4 06                 2729 	.byte	6
   0AF5 FA                 2730 	.byte	-6
   0AF6 FF                 2731 	.byte	-1
   0AF7 FA                 2732 	.byte	-6
   0AF8 E5                 2733 	.byte	-27
   0AF9 FF                 2734 	.byte	-1
   0AFA FA                 2735 	.byte	-6
   0AFB 06                 2736 	.byte	6
   0AFC 01                 2737 	.byte	1
                           2738 	.globl _height1FallingLeft1
   0AFD                    2739 _height1FallingLeft1:
   0AFD FF                 2740 	.byte	-1
   0AFE 05                 2741 	.byte	5
   0AFF 0E                 2742 	.byte	14
   0B00 FF                 2743 	.byte	-1
   0B01 08                 2744 	.byte	8
   0B02 FA                 2745 	.byte	-6
   0B03 FF                 2746 	.byte	-1
   0B04 FB                 2747 	.byte	-5
   0B05 F3                 2748 	.byte	-13
   0B06 FF                 2749 	.byte	-1
   0B07 F8                 2750 	.byte	-8
   0B08 05                 2751 	.byte	5
   0B09 FF                 2752 	.byte	-1
   0B0A 0C                 2753 	.byte	12
   0B0B FF                 2754 	.byte	-1
   0B0C 00                 2755 	.byte	0
   0B0D F9                 2756 	.byte	-7
   0B0E 0F                 2757 	.byte	15
   0B0F FF                 2758 	.byte	-1
   0B10 0C                 2759 	.byte	12
   0B11 FE                 2760 	.byte	-2
   0B12 00                 2761 	.byte	0
   0B13 FC                 2762 	.byte	-4
   0B14 FC                 2763 	.byte	-4
   0B15 FF                 2764 	.byte	-1
   0B16 0C                 2765 	.byte	12
   0B17 FE                 2766 	.byte	-2
   0B18 00                 2767 	.byte	0
   0B19 EF                 2768 	.byte	-17
   0B1A F5                 2769 	.byte	-11
   0B1B FF                 2770 	.byte	-1
   0B1C 0C                 2771 	.byte	12
   0B1D FE                 2772 	.byte	-2
   0B1E 00                 2773 	.byte	0
   0B1F F8                 2774 	.byte	-8
   0B20 06                 2775 	.byte	6
   0B21 FF                 2776 	.byte	-1
   0B22 05                 2777 	.byte	5
   0B23 0D                 2778 	.byte	13
   0B24 FF                 2779 	.byte	-1
   0B25 08                 2780 	.byte	8
   0B26 FA                 2781 	.byte	-6
   0B27 FF                 2782 	.byte	-1
   0B28 FB                 2783 	.byte	-5
   0B29 F3                 2784 	.byte	-13
   0B2A FF                 2785 	.byte	-1
   0B2B F8                 2786 	.byte	-8
   0B2C 06                 2787 	.byte	6
   0B2D 01                 2788 	.byte	1
                           2789 	.globl _height1FallingRight1
   0B2E                    2790 _height1FallingRight1:
   0B2E 00                 2791 	.byte	0
   0B2F 02                 2792 	.byte	2
   0B30 00                 2793 	.byte	0
   0B31 FF                 2794 	.byte	-1
   0B32 01                 2795 	.byte	1
   0B33 0E                 2796 	.byte	14
   0B34 FF                 2797 	.byte	-1
   0B35 08                 2798 	.byte	8
   0B36 FA                 2799 	.byte	-6
   0B37 FF                 2800 	.byte	-1
   0B38 FF                 2801 	.byte	-1
   0B39 F3                 2802 	.byte	-13
   0B3A FF                 2803 	.byte	-1
   0B3B F8                 2804 	.byte	-8
   0B3C 05                 2805 	.byte	5
   0B3D FF                 2806 	.byte	-1
   0B3E 0D                 2807 	.byte	13
   0B3F 02                 2808 	.byte	2
   0B40 00                 2809 	.byte	0
   0B41 F4                 2810 	.byte	-12
   0B42 0C                 2811 	.byte	12
   0B43 FF                 2812 	.byte	-1
   0B44 0D                 2813 	.byte	13
   0B45 02                 2814 	.byte	2
   0B46 00                 2815 	.byte	0
   0B47 FB                 2816 	.byte	-5
   0B48 F8                 2817 	.byte	-8
   0B49 FF                 2818 	.byte	-1
   0B4A 0D                 2819 	.byte	13
   0B4B 02                 2820 	.byte	2
   0B4C 00                 2821 	.byte	0
   0B4D F2                 2822 	.byte	-14
   0B4E F1                 2823 	.byte	-15
   0B4F FF                 2824 	.byte	-1
   0B50 0D                 2825 	.byte	13
   0B51 02                 2826 	.byte	2
   0B52 00                 2827 	.byte	0
   0B53 F8                 2828 	.byte	-8
   0B54 05                 2829 	.byte	5
   0B55 FF                 2830 	.byte	-1
   0B56 01                 2831 	.byte	1
   0B57 0E                 2832 	.byte	14
   0B58 FF                 2833 	.byte	-1
   0B59 08                 2834 	.byte	8
   0B5A FA                 2835 	.byte	-6
   0B5B FF                 2836 	.byte	-1
   0B5C FF                 2837 	.byte	-1
   0B5D F3                 2838 	.byte	-13
   0B5E FF                 2839 	.byte	-1
   0B5F F8                 2840 	.byte	-8
   0B60 05                 2841 	.byte	5
   0B61 01                 2842 	.byte	1
                           2843 	.globl _height1FallingBack1
   0B62                    2844 _height1FallingBack1:
   0B62 00                 2845 	.byte	0
   0B63 02                 2846 	.byte	2
   0B64 00                 2847 	.byte	0
   0B65 FF                 2848 	.byte	-1
   0B66 03                 2849 	.byte	3
   0B67 0E                 2850 	.byte	14
   0B68 FF                 2851 	.byte	-1
   0B69 06                 2852 	.byte	6
   0B6A FA                 2853 	.byte	-6
   0B6B FF                 2854 	.byte	-1
   0B6C FD                 2855 	.byte	-3
   0B6D F3                 2856 	.byte	-13
   0B6E FF                 2857 	.byte	-1
   0B6F FA                 2858 	.byte	-6
   0B70 05                 2859 	.byte	5
   0B71 FF                 2860 	.byte	-1
   0B72 0E                 2861 	.byte	14
   0B73 00                 2862 	.byte	0
   0B74 00                 2863 	.byte	0
   0B75 F5                 2864 	.byte	-11
   0B76 0E                 2865 	.byte	14
   0B77 FF                 2866 	.byte	-1
   0B78 0E                 2867 	.byte	14
   0B79 FF                 2868 	.byte	-1
   0B7A 00                 2869 	.byte	0
   0B7B F8                 2870 	.byte	-8
   0B7C FB                 2871 	.byte	-5
   0B7D FF                 2872 	.byte	-1
   0B7E 0E                 2873 	.byte	14
   0B7F FF                 2874 	.byte	-1
   0B80 00                 2875 	.byte	0
   0B81 EF                 2876 	.byte	-17
   0B82 F4                 2877 	.byte	-12
   0B83 FF                 2878 	.byte	-1
   0B84 0E                 2879 	.byte	14
   0B85 FF                 2880 	.byte	-1
   0B86 00                 2881 	.byte	0
   0B87 FA                 2882 	.byte	-6
   0B88 06                 2883 	.byte	6
   0B89 FF                 2884 	.byte	-1
   0B8A 03                 2885 	.byte	3
   0B8B 0D                 2886 	.byte	13
   0B8C FF                 2887 	.byte	-1
   0B8D 06                 2888 	.byte	6
   0B8E FA                 2889 	.byte	-6
   0B8F FF                 2890 	.byte	-1
   0B90 FD                 2891 	.byte	-3
   0B91 F3                 2892 	.byte	-13
   0B92 FF                 2893 	.byte	-1
   0B93 FA                 2894 	.byte	-6
   0B94 06                 2895 	.byte	6
   0B95 01                 2896 	.byte	1
                           2897 	.globl _height1FallingFront1
   0B96                    2898 _height1FallingFront1:
   0B96 FF                 2899 	.byte	-1
   0B97 03                 2900 	.byte	3
   0B98 0E                 2901 	.byte	14
   0B99 FF                 2902 	.byte	-1
   0B9A 0A                 2903 	.byte	10
   0B9B FA                 2904 	.byte	-6
   0B9C FF                 2905 	.byte	-1
   0B9D FD                 2906 	.byte	-3
   0B9E F3                 2907 	.byte	-13
   0B9F FF                 2908 	.byte	-1
   0BA0 F6                 2909 	.byte	-10
   0BA1 05                 2910 	.byte	5
   0BA2 FF                 2911 	.byte	-1
   0BA3 0C                 2912 	.byte	12
   0BA4 01                 2913 	.byte	1
   0BA5 00                 2914 	.byte	0
   0BA6 F7                 2915 	.byte	-9
   0BA7 0D                 2916 	.byte	13
   0BA8 FF                 2917 	.byte	-1
   0BA9 0C                 2918 	.byte	12
   0BAA 01                 2919 	.byte	1
   0BAB 00                 2920 	.byte	0
   0BAC FE                 2921 	.byte	-2
   0BAD F9                 2922 	.byte	-7
   0BAE FF                 2923 	.byte	-1
   0BAF 0B                 2924 	.byte	11
   0BB0 01                 2925 	.byte	1
   0BB1 00                 2926 	.byte	0
   0BB2 F2                 2927 	.byte	-14
   0BB3 F2                 2928 	.byte	-14
   0BB4 FF                 2929 	.byte	-1
   0BB5 0B                 2930 	.byte	11
   0BB6 01                 2931 	.byte	1
   0BB7 00                 2932 	.byte	0
   0BB8 F7                 2933 	.byte	-9
   0BB9 05                 2934 	.byte	5
   0BBA FF                 2935 	.byte	-1
   0BBB 03                 2936 	.byte	3
   0BBC 0E                 2937 	.byte	14
   0BBD FF                 2938 	.byte	-1
   0BBE 09                 2939 	.byte	9
   0BBF FA                 2940 	.byte	-6
   0BC0 FF                 2941 	.byte	-1
   0BC1 FD                 2942 	.byte	-3
   0BC2 F3                 2943 	.byte	-13
   0BC3 FF                 2944 	.byte	-1
   0BC4 F7                 2945 	.byte	-9
   0BC5 05                 2946 	.byte	5
   0BC6 01                 2947 	.byte	1
                           2948 	.globl _height2FallingLeft2
   0BC7                    2949 _height2FallingLeft2:
   0BC7 FF                 2950 	.byte	-1
   0BC8 06                 2951 	.byte	6
   0BC9 0E                 2952 	.byte	14
   0BCA FF                 2953 	.byte	-1
   0BCB 08                 2954 	.byte	8
   0BCC FA                 2955 	.byte	-6
   0BCD FF                 2956 	.byte	-1
   0BCE FA                 2957 	.byte	-6
   0BCF F3                 2958 	.byte	-13
   0BD0 FF                 2959 	.byte	-1
   0BD1 F8                 2960 	.byte	-8
   0BD2 05                 2961 	.byte	5
   0BD3 FF                 2962 	.byte	-1
   0BD4 18                 2963 	.byte	24
   0BD5 FA                 2964 	.byte	-6
   0BD6 00                 2965 	.byte	0
   0BD7 EE                 2966 	.byte	-18
   0BD8 14                 2967 	.byte	20
   0BD9 FF                 2968 	.byte	-1
   0BDA 18                 2969 	.byte	24
   0BDB F8                 2970 	.byte	-8
   0BDC 00                 2971 	.byte	0
   0BDD F0                 2972 	.byte	-16
   0BDE 02                 2973 	.byte	2
   0BDF FF                 2974 	.byte	-1
   0BE0 18                 2975 	.byte	24
   0BE1 F8                 2976 	.byte	-8
   0BE2 00                 2977 	.byte	0
   0BE3 E2                 2978 	.byte	-30
   0BE4 FB                 2979 	.byte	-5
   0BE5 FF                 2980 	.byte	-1
   0BE6 18                 2981 	.byte	24
   0BE7 F9                 2982 	.byte	-7
   0BE8 00                 2983 	.byte	0
   0BE9 F8                 2984 	.byte	-8
   0BEA 06                 2985 	.byte	6
   0BEB FF                 2986 	.byte	-1
   0BEC 06                 2987 	.byte	6
   0BED 0C                 2988 	.byte	12
   0BEE FF                 2989 	.byte	-1
   0BEF 08                 2990 	.byte	8
   0BF0 FA                 2991 	.byte	-6
   0BF1 FF                 2992 	.byte	-1
   0BF2 FA                 2993 	.byte	-6
   0BF3 F4                 2994 	.byte	-12
   0BF4 FF                 2995 	.byte	-1
   0BF5 F8                 2996 	.byte	-8
   0BF6 06                 2997 	.byte	6
   0BF7 01                 2998 	.byte	1
                           2999 	.globl _height2RisingRight2
   0BF8                    3000 _height2RisingRight2:
   0BF8 00                 3001 	.byte	0
   0BF9 06                 3002 	.byte	6
   0BFA 1C                 3003 	.byte	28
   0BFB FF                 3004 	.byte	-1
   0BFC 0D                 3005 	.byte	13
   0BFD 05                 3006 	.byte	5
   0BFE FF                 3007 	.byte	-1
   0BFF 08                 3008 	.byte	8
   0C00 FA                 3009 	.byte	-6
   0C01 FF                 3010 	.byte	-1
   0C02 F3                 3011 	.byte	-13
   0C03 FB                 3012 	.byte	-5
   0C04 FF                 3013 	.byte	-1
   0C05 F8                 3014 	.byte	-8
   0C06 06                 3015 	.byte	6
   0C07 FF                 3016 	.byte	-1
   0C08 04                 3017 	.byte	4
   0C09 E6                 3018 	.byte	-26
   0C0A 00                 3019 	.byte	0
   0C0B 09                 3020 	.byte	9
   0C0C 1F                 3021 	.byte	31
   0C0D FF                 3022 	.byte	-1
   0C0E 05                 3023 	.byte	5
   0C0F E6                 3024 	.byte	-26
   0C10 00                 3025 	.byte	0
   0C11 03                 3026 	.byte	3
   0C12 14                 3027 	.byte	20
   0C13 FF                 3028 	.byte	-1
   0C14 05                 3029 	.byte	5
   0C15 E6                 3030 	.byte	-26
   0C16 00                 3031 	.byte	0
   0C17 EE                 3032 	.byte	-18
   0C18 15                 3033 	.byte	21
   0C19 FF                 3034 	.byte	-1
   0C1A 04                 3035 	.byte	4
   0C1B E7                 3036 	.byte	-25
   0C1C 00                 3037 	.byte	0
   0C1D F8                 3038 	.byte	-8
   0C1E 05                 3039 	.byte	5
   0C1F FF                 3040 	.byte	-1
   0C20 0E                 3041 	.byte	14
   0C21 05                 3042 	.byte	5
   0C22 FF                 3043 	.byte	-1
   0C23 08                 3044 	.byte	8
   0C24 FA                 3045 	.byte	-6
   0C25 FF                 3046 	.byte	-1
   0C26 F2                 3047 	.byte	-14
   0C27 FC                 3048 	.byte	-4
   0C28 FF                 3049 	.byte	-1
   0C29 F8                 3050 	.byte	-8
   0C2A 05                 3051 	.byte	5
   0C2B 01                 3052 	.byte	1
                           3053 	.globl _height2FallingRight2
   0C2C                    3054 _height2FallingRight2:
   0C2C 00                 3055 	.byte	0
   0C2D 03                 3056 	.byte	3
   0C2E 00                 3057 	.byte	0
   0C2F FF                 3058 	.byte	-1
   0C30 00                 3059 	.byte	0
   0C31 0E                 3060 	.byte	14
   0C32 FF                 3061 	.byte	-1
   0C33 08                 3062 	.byte	8
   0C34 FA                 3063 	.byte	-6
   0C35 FF                 3064 	.byte	-1
   0C36 00                 3065 	.byte	0
   0C37 F3                 3066 	.byte	-13
   0C38 FF                 3067 	.byte	-1
   0C39 F8                 3068 	.byte	-8
   0C3A 05                 3069 	.byte	5
   0C3B FF                 3070 	.byte	-1
   0C3C 1B                 3071 	.byte	27
   0C3D 08                 3072 	.byte	8
   0C3E 00                 3073 	.byte	0
   0C3F E5                 3074 	.byte	-27
   0C40 06                 3075 	.byte	6
   0C41 FF                 3076 	.byte	-1
   0C42 1B                 3077 	.byte	27
   0C43 07                 3078 	.byte	7
   0C44 00                 3079 	.byte	0
   0C45 ED                 3080 	.byte	-19
   0C46 F3                 3081 	.byte	-13
   0C47 FF                 3082 	.byte	-1
   0C48 1B                 3083 	.byte	27
   0C49 07                 3084 	.byte	7
   0C4A 00                 3085 	.byte	0
   0C4B E5                 3086 	.byte	-27
   0C4C EC                 3087 	.byte	-20
   0C4D FF                 3088 	.byte	-1
   0C4E 1B                 3089 	.byte	27
   0C4F 07                 3090 	.byte	7
   0C50 00                 3091 	.byte	0
   0C51 F8                 3092 	.byte	-8
   0C52 06                 3093 	.byte	6
   0C53 FF                 3094 	.byte	-1
   0C54 00                 3095 	.byte	0
   0C55 0D                 3096 	.byte	13
   0C56 FF                 3097 	.byte	-1
   0C57 08                 3098 	.byte	8
   0C58 FA                 3099 	.byte	-6
   0C59 FF                 3100 	.byte	-1
   0C5A 00                 3101 	.byte	0
   0C5B F3                 3102 	.byte	-13
   0C5C FF                 3103 	.byte	-1
   0C5D F8                 3104 	.byte	-8
   0C5E 06                 3105 	.byte	6
   0C5F 01                 3106 	.byte	1
                           3107 	.globl _height2RisingLeft2
   0C60                    3108 _height2RisingLeft2:
   0C60 00                 3109 	.byte	0
   0C61 0B                 3110 	.byte	11
   0C62 FC                 3111 	.byte	-4
   0C63 FF                 3112 	.byte	-1
   0C64 F5                 3113 	.byte	-11
   0C65 04                 3114 	.byte	4
   0C66 FF                 3115 	.byte	-1
   0C67 08                 3116 	.byte	8
   0C68 FB                 3117 	.byte	-5
   0C69 FF                 3118 	.byte	-1
   0C6A 0B                 3119 	.byte	11
   0C6B FB                 3120 	.byte	-5
   0C6C FF                 3121 	.byte	-1
   0C6D F8                 3122 	.byte	-8
   0C6E 06                 3123 	.byte	6
   0C6F FF                 3124 	.byte	-1
   0C70 0F                 3125 	.byte	15
   0C71 19                 3126 	.byte	25
   0C72 00                 3127 	.byte	0
   0C73 E6                 3128 	.byte	-26
   0C74 EB                 3129 	.byte	-21
   0C75 FF                 3130 	.byte	-1
   0C76 0F                 3131 	.byte	15
   0C77 1A                 3132 	.byte	26
   0C78 00                 3133 	.byte	0
   0C79 F9                 3134 	.byte	-7
   0C7A E1                 3135 	.byte	-31
   0C7B FF                 3136 	.byte	-1
   0C7C 0F                 3137 	.byte	15
   0C7D 19                 3138 	.byte	25
   0C7E 00                 3139 	.byte	0
   0C7F FC                 3140 	.byte	-4
   0C80 E2                 3141 	.byte	-30
   0C81 FF                 3142 	.byte	-1
   0C82 0F                 3143 	.byte	15
   0C83 19                 3144 	.byte	25
   0C84 00                 3145 	.byte	0
   0C85 F8                 3146 	.byte	-8
   0C86 06                 3147 	.byte	6
   0C87 FF                 3148 	.byte	-1
   0C88 F5                 3149 	.byte	-11
   0C89 05                 3150 	.byte	5
   0C8A FF                 3151 	.byte	-1
   0C8B 08                 3152 	.byte	8
   0C8C FA                 3153 	.byte	-6
   0C8D FF                 3154 	.byte	-1
   0C8E 0B                 3155 	.byte	11
   0C8F FB                 3156 	.byte	-5
   0C90 FF                 3157 	.byte	-1
   0C91 F8                 3158 	.byte	-8
   0C92 06                 3159 	.byte	6
   0C93 01                 3160 	.byte	1
                           3161 	.globl _height2FallingBack2
   0C94                    3162 _height2FallingBack2:
   0C94 00                 3163 	.byte	0
   0C95 04                 3164 	.byte	4
   0C96 00                 3165 	.byte	0
   0C97 FF                 3166 	.byte	-1
   0C98 03                 3167 	.byte	3
   0C99 0E                 3168 	.byte	14
   0C9A FF                 3169 	.byte	-1
   0C9B 04                 3170 	.byte	4
   0C9C FA                 3171 	.byte	-6
   0C9D FF                 3172 	.byte	-1
   0C9E FD                 3173 	.byte	-3
   0C9F F3                 3174 	.byte	-13
   0CA0 FF                 3175 	.byte	-1
   0CA1 FC                 3176 	.byte	-4
   0CA2 05                 3177 	.byte	5
   0CA3 FF                 3178 	.byte	-1
   0CA4 1D                 3179 	.byte	29
   0CA5 FE                 3180 	.byte	-2
   0CA6 00                 3181 	.byte	0
   0CA7 E6                 3182 	.byte	-26
   0CA8 10                 3183 	.byte	16
   0CA9 FF                 3184 	.byte	-1
   0CAA 1D                 3185 	.byte	29
   0CAB FD                 3186 	.byte	-3
   0CAC 00                 3187 	.byte	0
   0CAD E7                 3188 	.byte	-25
   0CAE FD                 3189 	.byte	-3
   0CAF FF                 3190 	.byte	-1
   0CB0 1D                 3191 	.byte	29
   0CB1 FD                 3192 	.byte	-3
   0CB2 00                 3193 	.byte	0
   0CB3 E0                 3194 	.byte	-32
   0CB4 F6                 3195 	.byte	-10
   0CB5 FF                 3196 	.byte	-1
   0CB6 1D                 3197 	.byte	29
   0CB7 FD                 3198 	.byte	-3
   0CB8 00                 3199 	.byte	0
   0CB9 FC                 3200 	.byte	-4
   0CBA 06                 3201 	.byte	6
   0CBB FF                 3202 	.byte	-1
   0CBC 03                 3203 	.byte	3
   0CBD 0D                 3204 	.byte	13
   0CBE FF                 3205 	.byte	-1
   0CBF 04                 3206 	.byte	4
   0CC0 FA                 3207 	.byte	-6
   0CC1 FF                 3208 	.byte	-1
   0CC2 FD                 3209 	.byte	-3
   0CC3 F3                 3210 	.byte	-13
   0CC4 FF                 3211 	.byte	-1
   0CC5 FC                 3212 	.byte	-4
   0CC6 06                 3213 	.byte	6
   0CC7 01                 3214 	.byte	1
                           3215 	.globl _height2RisingFront2
   0CC8                    3216 _height2RisingFront2:
   0CC8 00                 3217 	.byte	0
   0CC9 09                 3218 	.byte	9
   0CCA 02                 3219 	.byte	2
   0CCB FF                 3220 	.byte	-1
   0CCC 03                 3221 	.byte	3
   0CCD 0E                 3222 	.byte	14
   0CCE FF                 3223 	.byte	-1
   0CCF F7                 3224 	.byte	-9
   0CD0 FE                 3225 	.byte	-2
   0CD1 FF                 3226 	.byte	-1
   0CD2 FD                 3227 	.byte	-3
   0CD3 F2                 3228 	.byte	-14
   0CD4 FF                 3229 	.byte	-1
   0CD5 09                 3230 	.byte	9
   0CD6 02                 3231 	.byte	2
   0CD7 FF                 3232 	.byte	-1
   0CD8 19                 3233 	.byte	25
   0CD9 F6                 3234 	.byte	-10
   0CDA 00                 3235 	.byte	0
   0CDB EA                 3236 	.byte	-22
   0CDC 18                 3237 	.byte	24
   0CDD FF                 3238 	.byte	-1
   0CDE 19                 3239 	.byte	25
   0CDF F5                 3240 	.byte	-11
   0CE0 00                 3241 	.byte	0
   0CE1 DE                 3242 	.byte	-34
   0CE2 09                 3243 	.byte	9
   0CE3 FF                 3244 	.byte	-1
   0CE4 19                 3245 	.byte	25
   0CE5 F5                 3246 	.byte	-11
   0CE6 00                 3247 	.byte	0
   0CE7 E4                 3248 	.byte	-28
   0CE8 FD                 3249 	.byte	-3
   0CE9 FF                 3250 	.byte	-1
   0CEA 19                 3251 	.byte	25
   0CEB F6                 3252 	.byte	-10
   0CEC 00                 3253 	.byte	0
   0CED 09                 3254 	.byte	9
   0CEE 02                 3255 	.byte	2
   0CEF FF                 3256 	.byte	-1
   0CF0 03                 3257 	.byte	3
   0CF1 0D                 3258 	.byte	13
   0CF2 FF                 3259 	.byte	-1
   0CF3 F7                 3260 	.byte	-9
   0CF4 FE                 3261 	.byte	-2
   0CF5 FF                 3262 	.byte	-1
   0CF6 FD                 3263 	.byte	-3
   0CF7 F3                 3264 	.byte	-13
   0CF8 FF                 3265 	.byte	-1
   0CF9 09                 3266 	.byte	9
   0CFA 02                 3267 	.byte	2
   0CFB 01                 3268 	.byte	1
                           3269 	.globl _height2FallingFront2
   0CFC                    3270 _height2FallingFront2:
   0CFC FF                 3271 	.byte	-1
   0CFD 03                 3272 	.byte	3
   0CFE 0E                 3273 	.byte	14
   0CFF FF                 3274 	.byte	-1
   0D00 0B                 3275 	.byte	11
   0D01 FA                 3276 	.byte	-6
   0D02 FF                 3277 	.byte	-1
   0D03 FD                 3278 	.byte	-3
   0D04 F3                 3279 	.byte	-13
   0D05 FF                 3280 	.byte	-1
   0D06 F5                 3281 	.byte	-11
   0D07 05                 3282 	.byte	5
   0D08 FF                 3283 	.byte	-1
   0D09 15                 3284 	.byte	21
   0D0A 03                 3285 	.byte	3
   0D0B 00                 3286 	.byte	0
   0D0C EE                 3287 	.byte	-18
   0D0D 0B                 3288 	.byte	11
   0D0E FF                 3289 	.byte	-1
   0D0F 15                 3290 	.byte	21
   0D10 03                 3291 	.byte	3
   0D11 00                 3292 	.byte	0
   0D12 F6                 3293 	.byte	-10
   0D13 F7                 3294 	.byte	-9
   0D14 FF                 3295 	.byte	-1
   0D15 15                 3296 	.byte	21
   0D16 03                 3297 	.byte	3
   0D17 00                 3298 	.byte	0
   0D18 E8                 3299 	.byte	-24
   0D19 F0                 3300 	.byte	-16
   0D1A FF                 3301 	.byte	-1
   0D1B 15                 3302 	.byte	21
   0D1C 03                 3303 	.byte	3
   0D1D 00                 3304 	.byte	0
   0D1E F5                 3305 	.byte	-11
   0D1F 05                 3306 	.byte	5
   0D20 FF                 3307 	.byte	-1
   0D21 03                 3308 	.byte	3
   0D22 0E                 3309 	.byte	14
   0D23 FF                 3310 	.byte	-1
   0D24 0B                 3311 	.byte	11
   0D25 FA                 3312 	.byte	-6
   0D26 FF                 3313 	.byte	-1
   0D27 FD                 3314 	.byte	-3
   0D28 F3                 3315 	.byte	-13
   0D29 FF                 3316 	.byte	-1
   0D2A F5                 3317 	.byte	-11
   0D2B 05                 3318 	.byte	5
   0D2C 01                 3319 	.byte	1
                           3320 	.globl _height2RisingBack2
   0D2D                    3321 _height2RisingBack2:
   0D2D 00                 3322 	.byte	0
   0D2E 10                 3323 	.byte	16
   0D2F F5                 3324 	.byte	-11
   0D30 FF                 3325 	.byte	-1
   0D31 03                 3326 	.byte	3
   0D32 0D                 3327 	.byte	13
   0D33 FF                 3328 	.byte	-1
   0D34 0F                 3329 	.byte	15
   0D35 FE                 3330 	.byte	-2
   0D36 FF                 3331 	.byte	-1
   0D37 FD                 3332 	.byte	-3
   0D38 F3                 3333 	.byte	-13
   0D39 FF                 3334 	.byte	-1
   0D3A F1                 3335 	.byte	-15
   0D3B 02                 3336 	.byte	2
   0D3C FF                 3337 	.byte	-1
   0D3D FB                 3338 	.byte	-5
   0D3E 0B                 3339 	.byte	11
   0D3F 00                 3340 	.byte	0
   0D40 08                 3341 	.byte	8
   0D41 02                 3342 	.byte	2
   0D42 FF                 3343 	.byte	-1
   0D43 FB                 3344 	.byte	-5
   0D44 0B                 3345 	.byte	11
   0D45 00                 3346 	.byte	0
   0D46 14                 3347 	.byte	20
   0D47 F3                 3348 	.byte	-13
   0D48 FF                 3349 	.byte	-1
   0D49 FB                 3350 	.byte	-5
   0D4A 0B                 3351 	.byte	11
   0D4B 00                 3352 	.byte	0
   0D4C 02                 3353 	.byte	2
   0D4D E8                 3354 	.byte	-24
   0D4E FF                 3355 	.byte	-1
   0D4F FB                 3356 	.byte	-5
   0D50 0B                 3357 	.byte	11
   0D51 00                 3358 	.byte	0
   0D52 F1                 3359 	.byte	-15
   0D53 02                 3360 	.byte	2
   0D54 FF                 3361 	.byte	-1
   0D55 03                 3362 	.byte	3
   0D56 0D                 3363 	.byte	13
   0D57 FF                 3364 	.byte	-1
   0D58 0F                 3365 	.byte	15
   0D59 FE                 3366 	.byte	-2
   0D5A FF                 3367 	.byte	-1
   0D5B FD                 3368 	.byte	-3
   0D5C F3                 3369 	.byte	-13
   0D5D FF                 3370 	.byte	-1
   0D5E F1                 3371 	.byte	-15
   0D5F 02                 3372 	.byte	2
   0D60 01                 3373 	.byte	1
                           3374 	.globl _depth2RollingLeft2
   0D61                    3375 _depth2RollingLeft2:
   0D61 FF                 3376 	.byte	-1
   0D62 06                 3377 	.byte	6
   0D63 0E                 3378 	.byte	14
   0D64 FF                 3379 	.byte	-1
   0D65 10                 3380 	.byte	16
   0D66 F4                 3381 	.byte	-12
   0D67 FF                 3382 	.byte	-1
   0D68 FA                 3383 	.byte	-6
   0D69 F3                 3384 	.byte	-13
   0D6A FF                 3385 	.byte	-1
   0D6B F0                 3386 	.byte	-16
   0D6C 0B                 3387 	.byte	11
   0D6D FF                 3388 	.byte	-1
   0D6E 0C                 3389 	.byte	12
   0D6F FD                 3390 	.byte	-3
   0D70 00                 3391 	.byte	0
   0D71 FA                 3392 	.byte	-6
   0D72 11                 3393 	.byte	17
   0D73 FF                 3394 	.byte	-1
   0D74 0C                 3395 	.byte	12
   0D75 FC                 3396 	.byte	-4
   0D76 00                 3397 	.byte	0
   0D77 04                 3398 	.byte	4
   0D78 F8                 3399 	.byte	-8
   0D79 FF                 3400 	.byte	-1
   0D7A 0C                 3401 	.byte	12
   0D7B FD                 3402 	.byte	-3
   0D7C 00                 3403 	.byte	0
   0D7D EE                 3404 	.byte	-18
   0D7E F6                 3405 	.byte	-10
   0D7F FF                 3406 	.byte	-1
   0D80 0C                 3407 	.byte	12
   0D81 FC                 3408 	.byte	-4
   0D82 00                 3409 	.byte	0
   0D83 F0                 3410 	.byte	-16
   0D84 0C                 3411 	.byte	12
   0D85 FF                 3412 	.byte	-1
   0D86 06                 3413 	.byte	6
   0D87 0D                 3414 	.byte	13
   0D88 FF                 3415 	.byte	-1
   0D89 10                 3416 	.byte	16
   0D8A F5                 3417 	.byte	-11
   0D8B FF                 3418 	.byte	-1
   0D8C FA                 3419 	.byte	-6
   0D8D F2                 3420 	.byte	-14
   0D8E FF                 3421 	.byte	-1
   0D8F F0                 3422 	.byte	-16
   0D90 0C                 3423 	.byte	12
   0D91 01                 3424 	.byte	1
                           3425 	.globl _depth2RollingRight2
   0D92                    3426 _depth2RollingRight2:
   0D92 00                 3427 	.byte	0
   0D93 03                 3428 	.byte	3
   0D94 00                 3429 	.byte	0
   0D95 FF                 3430 	.byte	-1
   0D96 00                 3431 	.byte	0
   0D97 0E                 3432 	.byte	14
   0D98 FF                 3433 	.byte	-1
   0D99 10                 3434 	.byte	16
   0D9A F4                 3435 	.byte	-12
   0D9B FF                 3436 	.byte	-1
   0D9C 00                 3437 	.byte	0
   0D9D F3                 3438 	.byte	-13
   0D9E FF                 3439 	.byte	-1
   0D9F F0                 3440 	.byte	-16
   0DA0 0B                 3441 	.byte	11
   0DA1 FF                 3442 	.byte	-1
   0DA2 0E                 3443 	.byte	14
   0DA3 04                 3444 	.byte	4
   0DA4 00                 3445 	.byte	0
   0DA5 F2                 3446 	.byte	-14
   0DA6 0A                 3447 	.byte	10
   0DA7 FF                 3448 	.byte	-1
   0DA8 0D                 3449 	.byte	13
   0DA9 04                 3450 	.byte	4
   0DAA 00                 3451 	.byte	0
   0DAB 03                 3452 	.byte	3
   0DAC F0                 3453 	.byte	-16
   0DAD FF                 3454 	.byte	-1
   0DAE 0D                 3455 	.byte	13
   0DAF 04                 3456 	.byte	4
   0DB0 00                 3457 	.byte	0
   0DB1 F3                 3458 	.byte	-13
   0DB2 EF                 3459 	.byte	-17
   0DB3 FF                 3460 	.byte	-1
   0DB4 0E                 3461 	.byte	14
   0DB5 04                 3462 	.byte	4
   0DB6 00                 3463 	.byte	0
   0DB7 F0                 3464 	.byte	-16
   0DB8 0B                 3465 	.byte	11
   0DB9 FF                 3466 	.byte	-1
   0DBA FF                 3467 	.byte	-1
   0DBB 0E                 3468 	.byte	14
   0DBC FF                 3469 	.byte	-1
   0DBD 10                 3470 	.byte	16
   0DBE F4                 3471 	.byte	-12
   0DBF FF                 3472 	.byte	-1
   0DC0 01                 3473 	.byte	1
   0DC1 F3                 3474 	.byte	-13
   0DC2 FF                 3475 	.byte	-1
   0DC3 F0                 3476 	.byte	-16
   0DC4 0B                 3477 	.byte	11
   0DC5 01                 3478 	.byte	1
                           3479 	.globl _width2RollingFront2
   0DC6                    3480 _width2RollingFront2:
   0DC6 FF                 3481 	.byte	-1
   0DC7 06                 3482 	.byte	6
   0DC8 1C                 3483 	.byte	28
   0DC9 FF                 3484 	.byte	-1
   0DCA 0B                 3485 	.byte	11
   0DCB FA                 3486 	.byte	-6
   0DCC FF                 3487 	.byte	-1
   0DCD FA                 3488 	.byte	-6
   0DCE E5                 3489 	.byte	-27
   0DCF FF                 3490 	.byte	-1
   0DD0 F5                 3491 	.byte	-11
   0DD1 05                 3492 	.byte	5
   0DD2 FF                 3493 	.byte	-1
   0DD3 0A                 3494 	.byte	10
   0DD4 02                 3495 	.byte	2
   0DD5 00                 3496 	.byte	0
   0DD6 FC                 3497 	.byte	-4
   0DD7 1A                 3498 	.byte	26
   0DD8 FF                 3499 	.byte	-1
   0DD9 0A                 3500 	.byte	10
   0DDA 02                 3501 	.byte	2
   0DDB 00                 3502 	.byte	0
   0DDC 01                 3503 	.byte	1
   0DDD F8                 3504 	.byte	-8
   0DDE FF                 3505 	.byte	-1
   0DDF 0B                 3506 	.byte	11
   0DE0 02                 3507 	.byte	2
   0DE1 00                 3508 	.byte	0
   0DE2 EF                 3509 	.byte	-17
   0DE3 E3                 3510 	.byte	-29
   0DE4 FF                 3511 	.byte	-1
   0DE5 0B                 3512 	.byte	11
   0DE6 02                 3513 	.byte	2
   0DE7 00                 3514 	.byte	0
   0DE8 F4                 3515 	.byte	-12
   0DE9 05                 3516 	.byte	5
   0DEA FF                 3517 	.byte	-1
   0DEB 06                 3518 	.byte	6
   0DEC 1C                 3519 	.byte	28
   0DED FF                 3520 	.byte	-1
   0DEE 0C                 3521 	.byte	12
   0DEF FA                 3522 	.byte	-6
   0DF0 FF                 3523 	.byte	-1
   0DF1 FA                 3524 	.byte	-6
   0DF2 E5                 3525 	.byte	-27
   0DF3 FF                 3526 	.byte	-1
   0DF4 F4                 3527 	.byte	-12
   0DF5 05                 3528 	.byte	5
   0DF6 01                 3529 	.byte	1
                           3530 	.globl _width2RollingBack2
   0DF7                    3531 _width2RollingBack2:
   0DF7 00                 3532 	.byte	0
   0DF8 04                 3533 	.byte	4
   0DF9 00                 3534 	.byte	0
   0DFA FF                 3535 	.byte	-1
   0DFB 06                 3536 	.byte	6
   0DFC 1C                 3537 	.byte	28
   0DFD FF                 3538 	.byte	-1
   0DFE 04                 3539 	.byte	4
   0DFF FA                 3540 	.byte	-6
   0E00 FF                 3541 	.byte	-1
   0E01 FA                 3542 	.byte	-6
   0E02 E5                 3543 	.byte	-27
   0E03 FF                 3544 	.byte	-1
   0E04 FC                 3545 	.byte	-4
   0E05 05                 3546 	.byte	5
   0E06 FF                 3547 	.byte	-1
   0E07 0E                 3548 	.byte	14
   0E08 FF                 3549 	.byte	-1
   0E09 00                 3550 	.byte	0
   0E0A F8                 3551 	.byte	-8
   0E0B 1D                 3552 	.byte	29
   0E0C FF                 3553 	.byte	-1
   0E0D 0E                 3554 	.byte	14
   0E0E FE                 3555 	.byte	-2
   0E0F 00                 3556 	.byte	0
   0E10 F6                 3557 	.byte	-10
   0E11 FC                 3558 	.byte	-4
   0E12 FF                 3559 	.byte	-1
   0E13 0F                 3560 	.byte	15
   0E14 FE                 3561 	.byte	-2
   0E15 00                 3562 	.byte	0
   0E16 EB                 3563 	.byte	-21
   0E17 E7                 3564 	.byte	-25
   0E18 FF                 3565 	.byte	-1
   0E19 0F                 3566 	.byte	15
   0E1A FE                 3567 	.byte	-2
   0E1B 00                 3568 	.byte	0
   0E1C FB                 3569 	.byte	-5
   0E1D 06                 3570 	.byte	6
   0E1E FF                 3571 	.byte	-1
   0E1F 06                 3572 	.byte	6
   0E20 1B                 3573 	.byte	27
   0E21 FF                 3574 	.byte	-1
   0E22 05                 3575 	.byte	5
   0E23 FA                 3576 	.byte	-6
   0E24 FF                 3577 	.byte	-1
   0E25 FA                 3578 	.byte	-6
   0E26 E5                 3579 	.byte	-27
   0E27 FF                 3580 	.byte	-1
   0E28 FB                 3581 	.byte	-5
   0E29 06                 3582 	.byte	6
   0E2A 01                 3583 	.byte	1
                           3584 	.globl _height1FallingLeft2
   0E2B                    3585 _height1FallingLeft2:
   0E2B FF                 3586 	.byte	-1
   0E2C 06                 3587 	.byte	6
   0E2D 0E                 3588 	.byte	14
   0E2E FF                 3589 	.byte	-1
   0E2F 08                 3590 	.byte	8
   0E30 FA                 3591 	.byte	-6
   0E31 FF                 3592 	.byte	-1
   0E32 FA                 3593 	.byte	-6
   0E33 F3                 3594 	.byte	-13
   0E34 FF                 3595 	.byte	-1
   0E35 F8                 3596 	.byte	-8
   0E36 05                 3597 	.byte	5
   0E37 FF                 3598 	.byte	-1
   0E38 0C                 3599 	.byte	12
   0E39 FD                 3600 	.byte	-3
   0E3A 00                 3601 	.byte	0
   0E3B FA                 3602 	.byte	-6
   0E3C 11                 3603 	.byte	17
   0E3D FF                 3604 	.byte	-1
   0E3E 0C                 3605 	.byte	12
   0E3F FC                 3606 	.byte	-4
   0E40 00                 3607 	.byte	0
   0E41 FC                 3608 	.byte	-4
   0E42 FE                 3609 	.byte	-2
   0E43 FF                 3610 	.byte	-1
   0E44 0C                 3611 	.byte	12
   0E45 FC                 3612 	.byte	-4
   0E46 00                 3613 	.byte	0
   0E47 EE                 3614 	.byte	-18
   0E48 F7                 3615 	.byte	-9
   0E49 FF                 3616 	.byte	-1
   0E4A 0C                 3617 	.byte	12
   0E4B FC                 3618 	.byte	-4
   0E4C 00                 3619 	.byte	0
   0E4D F8                 3620 	.byte	-8
   0E4E 06                 3621 	.byte	6
   0E4F FF                 3622 	.byte	-1
   0E50 06                 3623 	.byte	6
   0E51 0D                 3624 	.byte	13
   0E52 FF                 3625 	.byte	-1
   0E53 08                 3626 	.byte	8
   0E54 FA                 3627 	.byte	-6
   0E55 FF                 3628 	.byte	-1
   0E56 FA                 3629 	.byte	-6
   0E57 F3                 3630 	.byte	-13
   0E58 FF                 3631 	.byte	-1
   0E59 F8                 3632 	.byte	-8
   0E5A 06                 3633 	.byte	6
   0E5B 01                 3634 	.byte	1
                           3635 	.globl _height1FallingRight2
   0E5C                    3636 _height1FallingRight2:
   0E5C 00                 3637 	.byte	0
   0E5D 03                 3638 	.byte	3
   0E5E 00                 3639 	.byte	0
   0E5F FF                 3640 	.byte	-1
   0E60 00                 3641 	.byte	0
   0E61 0E                 3642 	.byte	14
   0E62 FF                 3643 	.byte	-1
   0E63 08                 3644 	.byte	8
   0E64 FA                 3645 	.byte	-6
   0E65 FF                 3646 	.byte	-1
   0E66 00                 3647 	.byte	0
   0E67 F3                 3648 	.byte	-13
   0E68 FF                 3649 	.byte	-1
   0E69 F8                 3650 	.byte	-8
   0E6A 05                 3651 	.byte	5
   0E6B FF                 3652 	.byte	-1
   0E6C 0E                 3653 	.byte	14
   0E6D 04                 3654 	.byte	4
   0E6E 00                 3655 	.byte	0
   0E6F F2                 3656 	.byte	-14
   0E70 0A                 3657 	.byte	10
   0E71 FF                 3658 	.byte	-1
   0E72 0D                 3659 	.byte	13
   0E73 04                 3660 	.byte	4
   0E74 00                 3661 	.byte	0
   0E75 FB                 3662 	.byte	-5
   0E76 F6                 3663 	.byte	-10
   0E77 FF                 3664 	.byte	-1
   0E78 0D                 3665 	.byte	13
   0E79 04                 3666 	.byte	4
   0E7A 00                 3667 	.byte	0
   0E7B F3                 3668 	.byte	-13
   0E7C EF                 3669 	.byte	-17
   0E7D FF                 3670 	.byte	-1
   0E7E 0E                 3671 	.byte	14
   0E7F 04                 3672 	.byte	4
   0E80 00                 3673 	.byte	0
   0E81 F8                 3674 	.byte	-8
   0E82 05                 3675 	.byte	5
   0E83 FF                 3676 	.byte	-1
   0E84 FF                 3677 	.byte	-1
   0E85 0E                 3678 	.byte	14
   0E86 FF                 3679 	.byte	-1
   0E87 08                 3680 	.byte	8
   0E88 FA                 3681 	.byte	-6
   0E89 FF                 3682 	.byte	-1
   0E8A 01                 3683 	.byte	1
   0E8B F3                 3684 	.byte	-13
   0E8C FF                 3685 	.byte	-1
   0E8D F8                 3686 	.byte	-8
   0E8E 05                 3687 	.byte	5
   0E8F 01                 3688 	.byte	1
                           3689 	.globl _height1FallingBack2
   0E90                    3690 _height1FallingBack2:
   0E90 00                 3691 	.byte	0
   0E91 04                 3692 	.byte	4
   0E92 00                 3693 	.byte	0
   0E93 FF                 3694 	.byte	-1
   0E94 03                 3695 	.byte	3
   0E95 0E                 3696 	.byte	14
   0E96 FF                 3697 	.byte	-1
   0E97 04                 3698 	.byte	4
   0E98 FA                 3699 	.byte	-6
   0E99 FF                 3700 	.byte	-1
   0E9A FD                 3701 	.byte	-3
   0E9B F3                 3702 	.byte	-13
   0E9C FF                 3703 	.byte	-1
   0E9D FC                 3704 	.byte	-4
   0E9E 05                 3705 	.byte	5
   0E9F FF                 3706 	.byte	-1
   0EA0 0E                 3707 	.byte	14
   0EA1 FF                 3708 	.byte	-1
   0EA2 00                 3709 	.byte	0
   0EA3 F5                 3710 	.byte	-11
   0EA4 0F                 3711 	.byte	15
   0EA5 FF                 3712 	.byte	-1
   0EA6 0E                 3713 	.byte	14
   0EA7 FE                 3714 	.byte	-2
   0EA8 00                 3715 	.byte	0
   0EA9 F6                 3716 	.byte	-10
   0EAA FC                 3717 	.byte	-4
   0EAB FF                 3718 	.byte	-1
   0EAC 0F                 3719 	.byte	15
   0EAD FE                 3720 	.byte	-2
   0EAE 00                 3721 	.byte	0
   0EAF EE                 3722 	.byte	-18
   0EB0 F5                 3723 	.byte	-11
   0EB1 FF                 3724 	.byte	-1
   0EB2 0F                 3725 	.byte	15
   0EB3 FE                 3726 	.byte	-2
   0EB4 00                 3727 	.byte	0
   0EB5 FB                 3728 	.byte	-5
   0EB6 06                 3729 	.byte	6
   0EB7 FF                 3730 	.byte	-1
   0EB8 03                 3731 	.byte	3
   0EB9 0D                 3732 	.byte	13
   0EBA FF                 3733 	.byte	-1
   0EBB 05                 3734 	.byte	5
   0EBC FA                 3735 	.byte	-6
   0EBD FF                 3736 	.byte	-1
   0EBE FD                 3737 	.byte	-3
   0EBF F3                 3738 	.byte	-13
   0EC0 FF                 3739 	.byte	-1
   0EC1 FB                 3740 	.byte	-5
   0EC2 06                 3741 	.byte	6
   0EC3 01                 3742 	.byte	1
                           3743 	.globl _height1FallingFront2
   0EC4                    3744 _height1FallingFront2:
   0EC4 FF                 3745 	.byte	-1
   0EC5 03                 3746 	.byte	3
   0EC6 0E                 3747 	.byte	14
   0EC7 FF                 3748 	.byte	-1
   0EC8 0B                 3749 	.byte	11
   0EC9 FA                 3750 	.byte	-6
   0ECA FF                 3751 	.byte	-1
   0ECB FD                 3752 	.byte	-3
   0ECC F3                 3753 	.byte	-13
   0ECD FF                 3754 	.byte	-1
   0ECE F5                 3755 	.byte	-11
   0ECF 05                 3756 	.byte	5
   0ED0 FF                 3757 	.byte	-1
   0ED1 0A                 3758 	.byte	10
   0ED2 02                 3759 	.byte	2
   0ED3 00                 3760 	.byte	0
   0ED4 F9                 3761 	.byte	-7
   0ED5 0C                 3762 	.byte	12
   0ED6 FF                 3763 	.byte	-1
   0ED7 0A                 3764 	.byte	10
   0ED8 02                 3765 	.byte	2
   0ED9 00                 3766 	.byte	0
   0EDA 01                 3767 	.byte	1
   0EDB F8                 3768 	.byte	-8
   0EDC FF                 3769 	.byte	-1
   0EDD 0B                 3770 	.byte	11
   0EDE 02                 3771 	.byte	2
   0EDF 00                 3772 	.byte	0
   0EE0 F2                 3773 	.byte	-14
   0EE1 F1                 3774 	.byte	-15
   0EE2 FF                 3775 	.byte	-1
   0EE3 0B                 3776 	.byte	11
   0EE4 02                 3777 	.byte	2
   0EE5 00                 3778 	.byte	0
   0EE6 F4                 3779 	.byte	-12
   0EE7 05                 3780 	.byte	5
   0EE8 FF                 3781 	.byte	-1
   0EE9 03                 3782 	.byte	3
   0EEA 0E                 3783 	.byte	14
   0EEB FF                 3784 	.byte	-1
   0EEC 0C                 3785 	.byte	12
   0EED FA                 3786 	.byte	-6
   0EEE FF                 3787 	.byte	-1
   0EEF FD                 3788 	.byte	-3
   0EF0 F3                 3789 	.byte	-13
   0EF1 FF                 3790 	.byte	-1
   0EF2 F4                 3791 	.byte	-12
   0EF3 05                 3792 	.byte	5
   0EF4 01                 3793 	.byte	1
                           3794 	.globl _height2FallingLeft3
   0EF5                    3795 _height2FallingLeft3:
   0EF5 FF                 3796 	.byte	-1
   0EF6 08                 3797 	.byte	8
   0EF7 0D                 3798 	.byte	13
   0EF8 FF                 3799 	.byte	-1
   0EF9 08                 3800 	.byte	8
   0EFA FA                 3801 	.byte	-6
   0EFB FF                 3802 	.byte	-1
   0EFC F8                 3803 	.byte	-8
   0EFD F4                 3804 	.byte	-12
   0EFE FF                 3805 	.byte	-1
   0EFF F8                 3806 	.byte	-8
   0F00 05                 3807 	.byte	5
   0F01 FF                 3808 	.byte	-1
   0F02 16                 3809 	.byte	22
   0F03 F6                 3810 	.byte	-10
   0F04 00                 3811 	.byte	0
   0F05 F2                 3812 	.byte	-14
   0F06 17                 3813 	.byte	23
   0F07 FF                 3814 	.byte	-1
   0F08 15                 3815 	.byte	21
   0F09 F5                 3816 	.byte	-11
   0F0A 00                 3817 	.byte	0
   0F0B F3                 3818 	.byte	-13
   0F0C 05                 3819 	.byte	5
   0F0D FF                 3820 	.byte	-1
   0F0E 15                 3821 	.byte	21
   0F0F F6                 3822 	.byte	-10
   0F10 00                 3823 	.byte	0
   0F11 E3                 3824 	.byte	-29
   0F12 FE                 3825 	.byte	-2
   0F13 FF                 3826 	.byte	-1
   0F14 16                 3827 	.byte	22
   0F15 F5                 3828 	.byte	-11
   0F16 00                 3829 	.byte	0
   0F17 F8                 3830 	.byte	-8
   0F18 06                 3831 	.byte	6
   0F19 FF                 3832 	.byte	-1
   0F1A 07                 3833 	.byte	7
   0F1B 0C                 3834 	.byte	12
   0F1C FF                 3835 	.byte	-1
   0F1D 08                 3836 	.byte	8
   0F1E FB                 3837 	.byte	-5
   0F1F FF                 3838 	.byte	-1
   0F20 F9                 3839 	.byte	-7
   0F21 F3                 3840 	.byte	-13
   0F22 FF                 3841 	.byte	-1
   0F23 F8                 3842 	.byte	-8
   0F24 06                 3843 	.byte	6
   0F25 01                 3844 	.byte	1
                           3845 	.globl _height2RisingRight3
   0F26                    3846 _height2RisingRight3:
   0F26 00                 3847 	.byte	0
   0F27 06                 3848 	.byte	6
   0F28 1C                 3849 	.byte	28
   0F29 FF                 3850 	.byte	-1
   0F2A 0D                 3851 	.byte	13
   0F2B 07                 3852 	.byte	7
   0F2C FF                 3853 	.byte	-1
   0F2D 08                 3854 	.byte	8
   0F2E FA                 3855 	.byte	-6
   0F2F FF                 3856 	.byte	-1
   0F30 F3                 3857 	.byte	-13
   0F31 F9                 3858 	.byte	-7
   0F32 FF                 3859 	.byte	-1
   0F33 F8                 3860 	.byte	-8
   0F34 06                 3861 	.byte	6
   0F35 FF                 3862 	.byte	-1
   0F36 08                 3863 	.byte	8
   0F37 E8                 3864 	.byte	-24
   0F38 00                 3865 	.byte	0
   0F39 05                 3866 	.byte	5
   0F3A 1F                 3867 	.byte	31
   0F3B FF                 3868 	.byte	-1
   0F3C 08                 3869 	.byte	8
   0F3D E8                 3870 	.byte	-24
   0F3E 00                 3871 	.byte	0
   0F3F 00                 3872 	.byte	0
   0F40 12                 3873 	.byte	18
   0F41 FF                 3874 	.byte	-1
   0F42 08                 3875 	.byte	8
   0F43 E8                 3876 	.byte	-24
   0F44 00                 3877 	.byte	0
   0F45 EB                 3878 	.byte	-21
   0F46 11                 3879 	.byte	17
   0F47 FF                 3880 	.byte	-1
   0F48 08                 3881 	.byte	8
   0F49 E9                 3882 	.byte	-23
   0F4A 00                 3883 	.byte	0
   0F4B F8                 3884 	.byte	-8
   0F4C 05                 3885 	.byte	5
   0F4D FF                 3886 	.byte	-1
   0F4E 0D                 3887 	.byte	13
   0F4F 07                 3888 	.byte	7
   0F50 FF                 3889 	.byte	-1
   0F51 08                 3890 	.byte	8
   0F52 FA                 3891 	.byte	-6
   0F53 FF                 3892 	.byte	-1
   0F54 F3                 3893 	.byte	-13
   0F55 FA                 3894 	.byte	-6
   0F56 FF                 3895 	.byte	-1
   0F57 F8                 3896 	.byte	-8
   0F58 05                 3897 	.byte	5
   0F59 01                 3898 	.byte	1
                           3899 	.globl _height2FallingRight3
   0F5A                    3900 _height2FallingRight3:
   0F5A 00                 3901 	.byte	0
   0F5B 05                 3902 	.byte	5
   0F5C 01                 3903 	.byte	1
   0F5D FF                 3904 	.byte	-1
   0F5E FE                 3905 	.byte	-2
   0F5F 0D                 3906 	.byte	13
   0F60 FF                 3907 	.byte	-1
   0F61 08                 3908 	.byte	8
   0F62 FA                 3909 	.byte	-6
   0F63 FF                 3910 	.byte	-1
   0F64 02                 3911 	.byte	2
   0F65 F4                 3912 	.byte	-12
   0F66 FF                 3913 	.byte	-1
   0F67 F8                 3914 	.byte	-8
   0F68 05                 3915 	.byte	5
   0F69 FF                 3916 	.byte	-1
   0F6A 1B                 3917 	.byte	27
   0F6B 0B                 3918 	.byte	11
   0F6C 00                 3919 	.byte	0
   0F6D E3                 3920 	.byte	-29
   0F6E 02                 3921 	.byte	2
   0F6F FF                 3922 	.byte	-1
   0F70 1A                 3923 	.byte	26
   0F71 0B                 3924 	.byte	11
   0F72 00                 3925 	.byte	0
   0F73 EE                 3926 	.byte	-18
   0F74 EF                 3927 	.byte	-17
   0F75 FF                 3928 	.byte	-1
   0F76 1A                 3929 	.byte	26
   0F77 0B                 3930 	.byte	11
   0F78 00                 3931 	.byte	0
   0F79 E8                 3932 	.byte	-24
   0F7A E9                 3933 	.byte	-23
   0F7B FF                 3934 	.byte	-1
   0F7C 1B                 3935 	.byte	27
   0F7D 0A                 3936 	.byte	10
   0F7E 00                 3937 	.byte	0
   0F7F F8                 3938 	.byte	-8
   0F80 06                 3939 	.byte	6
   0F81 FF                 3940 	.byte	-1
   0F82 FD                 3941 	.byte	-3
   0F83 0D                 3942 	.byte	13
   0F84 FF                 3943 	.byte	-1
   0F85 08                 3944 	.byte	8
   0F86 FA                 3945 	.byte	-6
   0F87 FF                 3946 	.byte	-1
   0F88 03                 3947 	.byte	3
   0F89 F3                 3948 	.byte	-13
   0F8A FF                 3949 	.byte	-1
   0F8B F8                 3950 	.byte	-8
   0F8C 06                 3951 	.byte	6
   0F8D 01                 3952 	.byte	1
                           3953 	.globl _height2RisingLeft3
   0F8E                    3954 _height2RisingLeft3:
   0F8E 00                 3955 	.byte	0
   0F8F 0A                 3956 	.byte	10
   0F90 FA                 3957 	.byte	-6
   0F91 FF                 3958 	.byte	-1
   0F92 F6                 3959 	.byte	-10
   0F93 06                 3960 	.byte	6
   0F94 FF                 3961 	.byte	-1
   0F95 08                 3962 	.byte	8
   0F96 FB                 3963 	.byte	-5
   0F97 FF                 3964 	.byte	-1
   0F98 0A                 3965 	.byte	10
   0F99 F9                 3966 	.byte	-7
   0F9A FF                 3967 	.byte	-1
   0F9B F8                 3968 	.byte	-8
   0F9C 06                 3969 	.byte	6
   0F9D FF                 3970 	.byte	-1
   0F9E 12                 3971 	.byte	18
   0F9F 17                 3972 	.byte	23
   0FA0 00                 3973 	.byte	0
   0FA1 E4                 3974 	.byte	-28
   0FA2 EF                 3975 	.byte	-17
   0FA3 FF                 3976 	.byte	-1
   0FA4 12                 3977 	.byte	18
   0FA5 18                 3978 	.byte	24
   0FA6 00                 3979 	.byte	0
   0FA7 F6                 3980 	.byte	-10
   0FA8 E3                 3981 	.byte	-29
   0FA9 FF                 3982 	.byte	-1
   0FAA 12                 3983 	.byte	18
   0FAB 17                 3984 	.byte	23
   0FAC 00                 3985 	.byte	0
   0FAD F8                 3986 	.byte	-8
   0FAE E2                 3987 	.byte	-30
   0FAF FF                 3988 	.byte	-1
   0FB0 12                 3989 	.byte	18
   0FB1 17                 3990 	.byte	23
   0FB2 00                 3991 	.byte	0
   0FB3 F8                 3992 	.byte	-8
   0FB4 06                 3993 	.byte	6
   0FB5 FF                 3994 	.byte	-1
   0FB6 F6                 3995 	.byte	-10
   0FB7 07                 3996 	.byte	7
   0FB8 FF                 3997 	.byte	-1
   0FB9 08                 3998 	.byte	8
   0FBA FA                 3999 	.byte	-6
   0FBB FF                 4000 	.byte	-1
   0FBC 0A                 4001 	.byte	10
   0FBD F9                 4002 	.byte	-7
   0FBE FF                 4003 	.byte	-1
   0FBF F8                 4004 	.byte	-8
   0FC0 06                 4005 	.byte	6
   0FC1 01                 4006 	.byte	1
                           4007 	.globl _height2FallingBack3
   0FC2                    4008 _height2FallingBack3:
   0FC2 00                 4009 	.byte	0
   0FC3 06                 4010 	.byte	6
   0FC4 00                 4011 	.byte	0
   0FC5 FF                 4012 	.byte	-1
   0FC6 03                 4013 	.byte	3
   0FC7 0E                 4014 	.byte	14
   0FC8 FF                 4015 	.byte	-1
   0FC9 02                 4016 	.byte	2
   0FCA FA                 4017 	.byte	-6
   0FCB FF                 4018 	.byte	-1
   0FCC FD                 4019 	.byte	-3
   0FCD F3                 4020 	.byte	-13
   0FCE FF                 4021 	.byte	-1
   0FCF FE                 4022 	.byte	-2
   0FD0 05                 4023 	.byte	5
   0FD1 FF                 4024 	.byte	-1
   0FD2 1E                 4025 	.byte	30
   0FD3 FC                 4026 	.byte	-4
   0FD4 00                 4027 	.byte	0
   0FD5 E5                 4028 	.byte	-27
   0FD6 12                 4029 	.byte	18
   0FD7 FF                 4030 	.byte	-1
   0FD8 1E                 4031 	.byte	30
   0FD9 FB                 4032 	.byte	-5
   0FDA 00                 4033 	.byte	0
   0FDB E4                 4034 	.byte	-28
   0FDC FF                 4035 	.byte	-1
   0FDD FF                 4036 	.byte	-1
   0FDE 1E                 4037 	.byte	30
   0FDF FB                 4038 	.byte	-5
   0FE0 00                 4039 	.byte	0
   0FE1 DF                 4040 	.byte	-33
   0FE2 F8                 4041 	.byte	-8
   0FE3 FF                 4042 	.byte	-1
   0FE4 1E                 4043 	.byte	30
   0FE5 FB                 4044 	.byte	-5
   0FE6 00                 4045 	.byte	0
   0FE7 FE                 4046 	.byte	-2
   0FE8 06                 4047 	.byte	6
   0FE9 FF                 4048 	.byte	-1
   0FEA 03                 4049 	.byte	3
   0FEB 0D                 4050 	.byte	13
   0FEC FF                 4051 	.byte	-1
   0FED 02                 4052 	.byte	2
   0FEE FA                 4053 	.byte	-6
   0FEF FF                 4054 	.byte	-1
   0FF0 FD                 4055 	.byte	-3
   0FF1 F3                 4056 	.byte	-13
   0FF2 FF                 4057 	.byte	-1
   0FF3 FE                 4058 	.byte	-2
   0FF4 06                 4059 	.byte	6
   0FF5 01                 4060 	.byte	1
                           4061 	.globl _height2RisingFront3
   0FF6                    4062 _height2RisingFront3:
   0FF6 00                 4063 	.byte	0
   0FF7 07                 4064 	.byte	7
   0FF8 03                 4065 	.byte	3
   0FF9 FF                 4066 	.byte	-1
   0FFA 03                 4067 	.byte	3
   0FFB 0E                 4068 	.byte	14
   0FFC FF                 4069 	.byte	-1
   0FFD F9                 4070 	.byte	-7
   0FFE FD                 4071 	.byte	-3
   0FFF FF                 4072 	.byte	-1
   1000 FD                 4073 	.byte	-3
   1001 F2                 4074 	.byte	-14
   1002 FF                 4075 	.byte	-1
   1003 07                 4076 	.byte	7
   1004 03                 4077 	.byte	3
   1005 FF                 4078 	.byte	-1
   1006 1B                 4079 	.byte	27
   1007 F7                 4080 	.byte	-9
   1008 00                 4081 	.byte	0
   1009 E8                 4082 	.byte	-24
   100A 17                 4083 	.byte	23
   100B FF                 4084 	.byte	-1
   100C 1B                 4085 	.byte	27
   100D F6                 4086 	.byte	-10
   100E 00                 4087 	.byte	0
   100F DE                 4088 	.byte	-34
   1010 07                 4089 	.byte	7
   1011 FF                 4090 	.byte	-1
   1012 1B                 4091 	.byte	27
   1013 F6                 4092 	.byte	-10
   1014 00                 4093 	.byte	0
   1015 E2                 4094 	.byte	-30
   1016 FC                 4095 	.byte	-4
   1017 FF                 4096 	.byte	-1
   1018 1B                 4097 	.byte	27
   1019 F7                 4098 	.byte	-9
   101A 00                 4099 	.byte	0
   101B 07                 4100 	.byte	7
   101C 03                 4101 	.byte	3
   101D FF                 4102 	.byte	-1
   101E 03                 4103 	.byte	3
   101F 0D                 4104 	.byte	13
   1020 FF                 4105 	.byte	-1
   1021 F9                 4106 	.byte	-7
   1022 FD                 4107 	.byte	-3
   1023 FF                 4108 	.byte	-1
   1024 FD                 4109 	.byte	-3
   1025 F3                 4110 	.byte	-13
   1026 FF                 4111 	.byte	-1
   1027 07                 4112 	.byte	7
   1028 03                 4113 	.byte	3
   1029 01                 4114 	.byte	1
                           4115 	.globl _height2FallingFront3
   102A                    4116 _height2FallingFront3:
   102A FF                 4117 	.byte	-1
   102B 03                 4118 	.byte	3
   102C 0E                 4119 	.byte	14
   102D FF                 4120 	.byte	-1
   102E 0C                 4121 	.byte	12
   102F FA                 4122 	.byte	-6
   1030 FF                 4123 	.byte	-1
   1031 FD                 4124 	.byte	-3
   1032 F3                 4125 	.byte	-13
   1033 FF                 4126 	.byte	-1
   1034 F4                 4127 	.byte	-12
   1035 05                 4128 	.byte	5
   1036 FF                 4129 	.byte	-1
   1037 12                 4130 	.byte	18
   1038 05                 4131 	.byte	5
   1039 00                 4132 	.byte	0
   103A F1                 4133 	.byte	-15
   103B 09                 4134 	.byte	9
   103C FF                 4135 	.byte	-1
   103D 12                 4136 	.byte	18
   103E 05                 4137 	.byte	5
   103F 00                 4138 	.byte	0
   1040 FA                 4139 	.byte	-6
   1041 F5                 4140 	.byte	-11
   1042 FF                 4141 	.byte	-1
   1043 12                 4142 	.byte	18
   1044 05                 4143 	.byte	5
   1045 00                 4144 	.byte	0
   1046 EB                 4145 	.byte	-21
   1047 EE                 4146 	.byte	-18
   1048 FF                 4147 	.byte	-1
   1049 12                 4148 	.byte	18
   104A 05                 4149 	.byte	5
   104B 00                 4150 	.byte	0
   104C F4                 4151 	.byte	-12
   104D 05                 4152 	.byte	5
   104E FF                 4153 	.byte	-1
   104F 03                 4154 	.byte	3
   1050 0E                 4155 	.byte	14
   1051 FF                 4156 	.byte	-1
   1052 0C                 4157 	.byte	12
   1053 FA                 4158 	.byte	-6
   1054 FF                 4159 	.byte	-1
   1055 FD                 4160 	.byte	-3
   1056 F3                 4161 	.byte	-13
   1057 FF                 4162 	.byte	-1
   1058 F4                 4163 	.byte	-12
   1059 05                 4164 	.byte	5
   105A 01                 4165 	.byte	1
                           4166 	.globl _height2RisingBack3
   105B                    4167 _height2RisingBack3:
   105B 00                 4168 	.byte	0
   105C 10                 4169 	.byte	16
   105D F5                 4170 	.byte	-11
   105E FF                 4171 	.byte	-1
   105F 03                 4172 	.byte	3
   1060 0D                 4173 	.byte	13
   1061 FF                 4174 	.byte	-1
   1062 0F                 4175 	.byte	15
   1063 FE                 4176 	.byte	-2
   1064 FF                 4177 	.byte	-1
   1065 FD                 4178 	.byte	-3
   1066 F2                 4179 	.byte	-14
   1067 FF                 4180 	.byte	-1
   1068 F1                 4181 	.byte	-15
   1069 03                 4182 	.byte	3
   106A FF                 4183 	.byte	-1
   106B FF                 4184 	.byte	-1
   106C 0A                 4185 	.byte	10
   106D 00                 4186 	.byte	0
   106E 04                 4187 	.byte	4
   106F 03                 4188 	.byte	3
   1070 FF                 4189 	.byte	-1
   1071 FF                 4190 	.byte	-1
   1072 0A                 4191 	.byte	10
   1073 00                 4192 	.byte	0
   1074 10                 4193 	.byte	16
   1075 F4                 4194 	.byte	-12
   1076 FF                 4195 	.byte	-1
   1077 FF                 4196 	.byte	-1
   1078 09                 4197 	.byte	9
   1079 00                 4198 	.byte	0
   107A FE                 4199 	.byte	-2
   107B E9                 4200 	.byte	-23
   107C FF                 4201 	.byte	-1
   107D FF                 4202 	.byte	-1
   107E 0A                 4203 	.byte	10
   107F 00                 4204 	.byte	0
   1080 F1                 4205 	.byte	-15
   1081 03                 4206 	.byte	3
   1082 FF                 4207 	.byte	-1
   1083 03                 4208 	.byte	3
   1084 0D                 4209 	.byte	13
   1085 FF                 4210 	.byte	-1
   1086 0F                 4211 	.byte	15
   1087 FD                 4212 	.byte	-3
   1088 FF                 4213 	.byte	-1
   1089 FD                 4214 	.byte	-3
   108A F3                 4215 	.byte	-13
   108B FF                 4216 	.byte	-1
   108C F1                 4217 	.byte	-15
   108D 03                 4218 	.byte	3
   108E 01                 4219 	.byte	1
                           4220 	.globl _depth2RollingLeft3
   108F                    4221 _depth2RollingLeft3:
   108F FF                 4222 	.byte	-1
   1090 08                 4223 	.byte	8
   1091 0D                 4224 	.byte	13
   1092 FF                 4225 	.byte	-1
   1093 10                 4226 	.byte	16
   1094 F4                 4227 	.byte	-12
   1095 FF                 4228 	.byte	-1
   1096 F8                 4229 	.byte	-8
   1097 F4                 4230 	.byte	-12
   1098 FF                 4231 	.byte	-1
   1099 F0                 4232 	.byte	-16
   109A 0B                 4233 	.byte	11
   109B FF                 4234 	.byte	-1
   109C 0B                 4235 	.byte	11
   109D FC                 4236 	.byte	-4
   109E 00                 4237 	.byte	0
   109F FD                 4238 	.byte	-3
   10A0 11                 4239 	.byte	17
   10A1 FF                 4240 	.byte	-1
   10A2 0B                 4241 	.byte	11
   10A3 FB                 4242 	.byte	-5
   10A4 00                 4243 	.byte	0
   10A5 05                 4244 	.byte	5
   10A6 F9                 4245 	.byte	-7
   10A7 FF                 4246 	.byte	-1
   10A8 0B                 4247 	.byte	11
   10A9 FC                 4248 	.byte	-4
   10AA 00                 4249 	.byte	0
   10AB ED                 4250 	.byte	-19
   10AC F8                 4251 	.byte	-8
   10AD FF                 4252 	.byte	-1
   10AE 0B                 4253 	.byte	11
   10AF FB                 4254 	.byte	-5
   10B0 00                 4255 	.byte	0
   10B1 F0                 4256 	.byte	-16
   10B2 0C                 4257 	.byte	12
   10B3 FF                 4258 	.byte	-1
   10B4 08                 4259 	.byte	8
   10B5 0C                 4260 	.byte	12
   10B6 FF                 4261 	.byte	-1
   10B7 10                 4262 	.byte	16
   10B8 F5                 4263 	.byte	-11
   10B9 FF                 4264 	.byte	-1
   10BA F8                 4265 	.byte	-8
   10BB F3                 4266 	.byte	-13
   10BC FF                 4267 	.byte	-1
   10BD F0                 4268 	.byte	-16
   10BE 0C                 4269 	.byte	12
   10BF 01                 4270 	.byte	1
                           4271 	.globl _depth2RollingRight3
   10C0                    4272 _depth2RollingRight3:
   10C0 00                 4273 	.byte	0
   10C1 05                 4274 	.byte	5
   10C2 01                 4275 	.byte	1
   10C3 FF                 4276 	.byte	-1
   10C4 FE                 4277 	.byte	-2
   10C5 0D                 4278 	.byte	13
   10C6 FF                 4279 	.byte	-1
   10C7 10                 4280 	.byte	16
   10C8 F4                 4281 	.byte	-12
   10C9 FF                 4282 	.byte	-1
   10CA 02                 4283 	.byte	2
   10CB F4                 4284 	.byte	-12
   10CC FF                 4285 	.byte	-1
   10CD F0                 4286 	.byte	-16
   10CE 0B                 4287 	.byte	11
   10CF FF                 4288 	.byte	-1
   10D0 0D                 4289 	.byte	13
   10D1 05                 4290 	.byte	5
   10D2 00                 4291 	.byte	0
   10D3 F1                 4292 	.byte	-15
   10D4 08                 4293 	.byte	8
   10D5 FF                 4294 	.byte	-1
   10D6 0D                 4295 	.byte	13
   10D7 05                 4296 	.byte	5
   10D8 00                 4297 	.byte	0
   10D9 03                 4298 	.byte	3
   10DA EF                 4299 	.byte	-17
   10DB FF                 4300 	.byte	-1
   10DC 0D                 4301 	.byte	13
   10DD 05                 4302 	.byte	5
   10DE 00                 4303 	.byte	0
   10DF F5                 4304 	.byte	-11
   10E0 EF                 4305 	.byte	-17
   10E1 FF                 4306 	.byte	-1
   10E2 0D                 4307 	.byte	13
   10E3 05                 4308 	.byte	5
   10E4 00                 4309 	.byte	0
   10E5 F0                 4310 	.byte	-16
   10E6 0B                 4311 	.byte	11
   10E7 FF                 4312 	.byte	-1
   10E8 FE                 4313 	.byte	-2
   10E9 0D                 4314 	.byte	13
   10EA FF                 4315 	.byte	-1
   10EB 10                 4316 	.byte	16
   10EC F4                 4317 	.byte	-12
   10ED FF                 4318 	.byte	-1
   10EE 02                 4319 	.byte	2
   10EF F4                 4320 	.byte	-12
   10F0 FF                 4321 	.byte	-1
   10F1 F0                 4322 	.byte	-16
   10F2 0B                 4323 	.byte	11
   10F3 01                 4324 	.byte	1
                           4325 	.globl _width2RollingFront3
   10F4                    4326 _width2RollingFront3:
   10F4 FF                 4327 	.byte	-1
   10F5 06                 4328 	.byte	6
   10F6 1C                 4329 	.byte	28
   10F7 FF                 4330 	.byte	-1
   10F8 0C                 4331 	.byte	12
   10F9 FA                 4332 	.byte	-6
   10FA FF                 4333 	.byte	-1
   10FB FA                 4334 	.byte	-6
   10FC E5                 4335 	.byte	-27
   10FD FF                 4336 	.byte	-1
   10FE F4                 4337 	.byte	-12
   10FF 05                 4338 	.byte	5
   1100 FF                 4339 	.byte	-1
   1101 09                 4340 	.byte	9
   1102 02                 4341 	.byte	2
   1103 00                 4342 	.byte	0
   1104 FD                 4343 	.byte	-3
   1105 1A                 4344 	.byte	26
   1106 FF                 4345 	.byte	-1
   1107 09                 4346 	.byte	9
   1108 02                 4347 	.byte	2
   1109 00                 4348 	.byte	0
   110A 03                 4349 	.byte	3
   110B F8                 4350 	.byte	-8
   110C FF                 4351 	.byte	-1
   110D 09                 4352 	.byte	9
   110E 03                 4353 	.byte	3
   110F 00                 4354 	.byte	0
   1110 F1                 4355 	.byte	-15
   1111 E2                 4356 	.byte	-30
   1112 FF                 4357 	.byte	-1
   1113 09                 4358 	.byte	9
   1114 03                 4359 	.byte	3
   1115 00                 4360 	.byte	0
   1116 F4                 4361 	.byte	-12
   1117 04                 4362 	.byte	4
   1118 FF                 4363 	.byte	-1
   1119 06                 4364 	.byte	6
   111A 1C                 4365 	.byte	28
   111B FF                 4366 	.byte	-1
   111C 0C                 4367 	.byte	12
   111D FB                 4368 	.byte	-5
   111E FF                 4369 	.byte	-1
   111F FA                 4370 	.byte	-6
   1120 E5                 4371 	.byte	-27
   1121 FF                 4372 	.byte	-1
   1122 F4                 4373 	.byte	-12
   1123 04                 4374 	.byte	4
   1124 01                 4375 	.byte	1
                           4376 	.globl _width2RollingBack3
   1125                    4377 _width2RollingBack3:
   1125 00                 4378 	.byte	0
   1126 06                 4379 	.byte	6
   1127 00                 4380 	.byte	0
   1128 FF                 4381 	.byte	-1
   1129 06                 4382 	.byte	6
   112A 1C                 4383 	.byte	28
   112B FF                 4384 	.byte	-1
   112C 02                 4385 	.byte	2
   112D FA                 4386 	.byte	-6
   112E FF                 4387 	.byte	-1
   112F FA                 4388 	.byte	-6
   1130 E5                 4389 	.byte	-27
   1131 FF                 4390 	.byte	-1
   1132 FE                 4391 	.byte	-2
   1133 05                 4392 	.byte	5
   1134 FF                 4393 	.byte	-1
   1135 0F                 4394 	.byte	15
   1136 FE                 4395 	.byte	-2
   1137 00                 4396 	.byte	0
   1138 F7                 4397 	.byte	-9
   1139 1E                 4398 	.byte	30
   113A FF                 4399 	.byte	-1
   113B 0F                 4400 	.byte	15
   113C FD                 4401 	.byte	-3
   113D 00                 4402 	.byte	0
   113E F3                 4403 	.byte	-13
   113F FD                 4404 	.byte	-3
   1140 FF                 4405 	.byte	-1
   1141 0F                 4406 	.byte	15
   1142 FE                 4407 	.byte	-2
   1143 00                 4408 	.byte	0
   1144 EB                 4409 	.byte	-21
   1145 E7                 4410 	.byte	-25
   1146 FF                 4411 	.byte	-1
   1147 0F                 4412 	.byte	15
   1148 FE                 4413 	.byte	-2
   1149 00                 4414 	.byte	0
   114A FE                 4415 	.byte	-2
   114B 05                 4416 	.byte	5
   114C FF                 4417 	.byte	-1
   114D 06                 4418 	.byte	6
   114E 1B                 4419 	.byte	27
   114F FF                 4420 	.byte	-1
   1150 02                 4421 	.byte	2
   1151 FB                 4422 	.byte	-5
   1152 FF                 4423 	.byte	-1
   1153 FA                 4424 	.byte	-6
   1154 E5                 4425 	.byte	-27
   1155 FF                 4426 	.byte	-1
   1156 FE                 4427 	.byte	-2
   1157 05                 4428 	.byte	5
   1158 01                 4429 	.byte	1
                           4430 	.globl _height1FallingLeft3
   1159                    4431 _height1FallingLeft3:
   1159 FF                 4432 	.byte	-1
   115A 08                 4433 	.byte	8
   115B 0D                 4434 	.byte	13
   115C FF                 4435 	.byte	-1
   115D 08                 4436 	.byte	8
   115E FA                 4437 	.byte	-6
   115F FF                 4438 	.byte	-1
   1160 F8                 4439 	.byte	-8
   1161 F4                 4440 	.byte	-12
   1162 FF                 4441 	.byte	-1
   1163 F8                 4442 	.byte	-8
   1164 05                 4443 	.byte	5
   1165 FF                 4444 	.byte	-1
   1166 0B                 4445 	.byte	11
   1167 FC                 4446 	.byte	-4
   1168 00                 4447 	.byte	0
   1169 FD                 4448 	.byte	-3
   116A 11                 4449 	.byte	17
   116B FF                 4450 	.byte	-1
   116C 0B                 4451 	.byte	11
   116D FB                 4452 	.byte	-5
   116E 00                 4453 	.byte	0
   116F FD                 4454 	.byte	-3
   1170 FF                 4455 	.byte	-1
   1171 FF                 4456 	.byte	-1
   1172 0B                 4457 	.byte	11
   1173 FB                 4458 	.byte	-5
   1174 00                 4459 	.byte	0
   1175 ED                 4460 	.byte	-19
   1176 F9                 4461 	.byte	-7
   1177 FF                 4462 	.byte	-1
   1178 0B                 4463 	.byte	11
   1179 FB                 4464 	.byte	-5
   117A 00                 4465 	.byte	0
   117B F8                 4466 	.byte	-8
   117C 06                 4467 	.byte	6
   117D FF                 4468 	.byte	-1
   117E 08                 4469 	.byte	8
   117F 0C                 4470 	.byte	12
   1180 FF                 4471 	.byte	-1
   1181 08                 4472 	.byte	8
   1182 FA                 4473 	.byte	-6
   1183 FF                 4474 	.byte	-1
   1184 F8                 4475 	.byte	-8
   1185 F4                 4476 	.byte	-12
   1186 FF                 4477 	.byte	-1
   1187 F8                 4478 	.byte	-8
   1188 06                 4479 	.byte	6
   1189 01                 4480 	.byte	1
                           4481 	.globl _height1FallingRight3
   118A                    4482 _height1FallingRight3:
   118A 00                 4483 	.byte	0
   118B 05                 4484 	.byte	5
   118C 01                 4485 	.byte	1
   118D FF                 4486 	.byte	-1
   118E FE                 4487 	.byte	-2
   118F 0D                 4488 	.byte	13
   1190 FF                 4489 	.byte	-1
   1191 08                 4490 	.byte	8
   1192 FA                 4491 	.byte	-6
   1193 FF                 4492 	.byte	-1
   1194 02                 4493 	.byte	2
   1195 F4                 4494 	.byte	-12
   1196 FF                 4495 	.byte	-1
   1197 F8                 4496 	.byte	-8
   1198 05                 4497 	.byte	5
   1199 FF                 4498 	.byte	-1
   119A 0D                 4499 	.byte	13
   119B 05                 4500 	.byte	5
   119C 00                 4501 	.byte	0
   119D F1                 4502 	.byte	-15
   119E 08                 4503 	.byte	8
   119F FF                 4504 	.byte	-1
   11A0 0D                 4505 	.byte	13
   11A1 05                 4506 	.byte	5
   11A2 00                 4507 	.byte	0
   11A3 FB                 4508 	.byte	-5
   11A4 F5                 4509 	.byte	-11
   11A5 FF                 4510 	.byte	-1
   11A6 0D                 4511 	.byte	13
   11A7 05                 4512 	.byte	5
   11A8 00                 4513 	.byte	0
   11A9 F5                 4514 	.byte	-11
   11AA EF                 4515 	.byte	-17
   11AB FF                 4516 	.byte	-1
   11AC 0D                 4517 	.byte	13
   11AD 04                 4518 	.byte	4
   11AE 00                 4519 	.byte	0
   11AF F8                 4520 	.byte	-8
   11B0 06                 4521 	.byte	6
   11B1 FF                 4522 	.byte	-1
   11B2 FE                 4523 	.byte	-2
   11B3 0D                 4524 	.byte	13
   11B4 FF                 4525 	.byte	-1
   11B5 08                 4526 	.byte	8
   11B6 FA                 4527 	.byte	-6
   11B7 FF                 4528 	.byte	-1
   11B8 02                 4529 	.byte	2
   11B9 F3                 4530 	.byte	-13
   11BA FF                 4531 	.byte	-1
   11BB F8                 4532 	.byte	-8
   11BC 06                 4533 	.byte	6
   11BD 01                 4534 	.byte	1
                           4535 	.globl _height1FallingBack3
   11BE                    4536 _height1FallingBack3:
   11BE 00                 4537 	.byte	0
   11BF 06                 4538 	.byte	6
   11C0 00                 4539 	.byte	0
   11C1 FF                 4540 	.byte	-1
   11C2 03                 4541 	.byte	3
   11C3 0E                 4542 	.byte	14
   11C4 FF                 4543 	.byte	-1
   11C5 02                 4544 	.byte	2
   11C6 FA                 4545 	.byte	-6
   11C7 FF                 4546 	.byte	-1
   11C8 FD                 4547 	.byte	-3
   11C9 F3                 4548 	.byte	-13
   11CA FF                 4549 	.byte	-1
   11CB FE                 4550 	.byte	-2
   11CC 05                 4551 	.byte	5
   11CD FF                 4552 	.byte	-1
   11CE 0F                 4553 	.byte	15
   11CF FE                 4554 	.byte	-2
   11D0 00                 4555 	.byte	0
   11D1 F4                 4556 	.byte	-12
   11D2 10                 4557 	.byte	16
   11D3 FF                 4558 	.byte	-1
   11D4 0F                 4559 	.byte	15
   11D5 FD                 4560 	.byte	-3
   11D6 00                 4561 	.byte	0
   11D7 F3                 4562 	.byte	-13
   11D8 FD                 4563 	.byte	-3
   11D9 FF                 4564 	.byte	-1
   11DA 0F                 4565 	.byte	15
   11DB FE                 4566 	.byte	-2
   11DC 00                 4567 	.byte	0
   11DD EE                 4568 	.byte	-18
   11DE F5                 4569 	.byte	-11
   11DF FF                 4570 	.byte	-1
   11E0 0F                 4571 	.byte	15
   11E1 FE                 4572 	.byte	-2
   11E2 00                 4573 	.byte	0
   11E3 FE                 4574 	.byte	-2
   11E4 05                 4575 	.byte	5
   11E5 FF                 4576 	.byte	-1
   11E6 03                 4577 	.byte	3
   11E7 0D                 4578 	.byte	13
   11E8 FF                 4579 	.byte	-1
   11E9 02                 4580 	.byte	2
   11EA FB                 4581 	.byte	-5
   11EB FF                 4582 	.byte	-1
   11EC FD                 4583 	.byte	-3
   11ED F3                 4584 	.byte	-13
   11EE FF                 4585 	.byte	-1
   11EF FE                 4586 	.byte	-2
   11F0 05                 4587 	.byte	5
   11F1 01                 4588 	.byte	1
                           4589 	.globl _height1FallingFront3
   11F2                    4590 _height1FallingFront3:
   11F2 FF                 4591 	.byte	-1
   11F3 03                 4592 	.byte	3
   11F4 0E                 4593 	.byte	14
   11F5 FF                 4594 	.byte	-1
   11F6 0C                 4595 	.byte	12
   11F7 FA                 4596 	.byte	-6
   11F8 FF                 4597 	.byte	-1
   11F9 FD                 4598 	.byte	-3
   11FA F3                 4599 	.byte	-13
   11FB FF                 4600 	.byte	-1
   11FC F4                 4601 	.byte	-12
   11FD 05                 4602 	.byte	5
   11FE FF                 4603 	.byte	-1
   11FF 09                 4604 	.byte	9
   1200 02                 4605 	.byte	2
   1201 00                 4606 	.byte	0
   1202 FA                 4607 	.byte	-6
   1203 0C                 4608 	.byte	12
   1204 FF                 4609 	.byte	-1
   1205 09                 4610 	.byte	9
   1206 02                 4611 	.byte	2
   1207 00                 4612 	.byte	0
   1208 03                 4613 	.byte	3
   1209 F8                 4614 	.byte	-8
   120A FF                 4615 	.byte	-1
   120B 09                 4616 	.byte	9
   120C 03                 4617 	.byte	3
   120D 00                 4618 	.byte	0
   120E F4                 4619 	.byte	-12
   120F F0                 4620 	.byte	-16
   1210 FF                 4621 	.byte	-1
   1211 09                 4622 	.byte	9
   1212 03                 4623 	.byte	3
   1213 00                 4624 	.byte	0
   1214 F4                 4625 	.byte	-12
   1215 04                 4626 	.byte	4
   1216 FF                 4627 	.byte	-1
   1217 03                 4628 	.byte	3
   1218 0E                 4629 	.byte	14
   1219 FF                 4630 	.byte	-1
   121A 0C                 4631 	.byte	12
   121B FB                 4632 	.byte	-5
   121C FF                 4633 	.byte	-1
   121D FD                 4634 	.byte	-3
   121E F3                 4635 	.byte	-13
   121F FF                 4636 	.byte	-1
   1220 F4                 4637 	.byte	-12
   1221 04                 4638 	.byte	4
   1222 01                 4639 	.byte	1
                           4640 	.globl _height2FallingLeft4
   1223                    4641 _height2FallingLeft4:
   1223 FF                 4642 	.byte	-1
   1224 09                 4643 	.byte	9
   1225 0C                 4644 	.byte	12
   1226 FF                 4645 	.byte	-1
   1227 08                 4646 	.byte	8
   1228 FA                 4647 	.byte	-6
   1229 FF                 4648 	.byte	-1
   122A F7                 4649 	.byte	-9
   122B F5                 4650 	.byte	-11
   122C FF                 4651 	.byte	-1
   122D F8                 4652 	.byte	-8
   122E 05                 4653 	.byte	5
   122F FF                 4654 	.byte	-1
   1230 14                 4655 	.byte	20
   1231 F3                 4656 	.byte	-13
   1232 00                 4657 	.byte	0
   1233 F5                 4658 	.byte	-11
   1234 19                 4659 	.byte	25
   1235 FF                 4660 	.byte	-1
   1236 14                 4661 	.byte	20
   1237 F3                 4662 	.byte	-13
   1238 00                 4663 	.byte	0
   1239 F4                 4664 	.byte	-12
   123A 07                 4665 	.byte	7
   123B FF                 4666 	.byte	-1
   123C 14                 4667 	.byte	20
   123D F3                 4668 	.byte	-13
   123E 00                 4669 	.byte	0
   123F E3                 4670 	.byte	-29
   1240 02                 4671 	.byte	2
   1241 FF                 4672 	.byte	-1
   1242 14                 4673 	.byte	20
   1243 F2                 4674 	.byte	-14
   1244 00                 4675 	.byte	0
   1245 F8                 4676 	.byte	-8
   1246 06                 4677 	.byte	6
   1247 FF                 4678 	.byte	-1
   1248 09                 4679 	.byte	9
   1249 0C                 4680 	.byte	12
   124A FF                 4681 	.byte	-1
   124B 08                 4682 	.byte	8
   124C FA                 4683 	.byte	-6
   124D FF                 4684 	.byte	-1
   124E F7                 4685 	.byte	-9
   124F F4                 4686 	.byte	-12
   1250 FF                 4687 	.byte	-1
   1251 F8                 4688 	.byte	-8
   1252 06                 4689 	.byte	6
   1253 01                 4690 	.byte	1
                           4691 	.globl _height2RisingRight4
   1254                    4692 _height2RisingRight4:
   1254 00                 4693 	.byte	0
   1255 06                 4694 	.byte	6
   1256 1C                 4695 	.byte	28
   1257 FF                 4696 	.byte	-1
   1258 0C                 4697 	.byte	12
   1259 09                 4698 	.byte	9
   125A FF                 4699 	.byte	-1
   125B 08                 4700 	.byte	8
   125C FA                 4701 	.byte	-6
   125D FF                 4702 	.byte	-1
   125E F4                 4703 	.byte	-12
   125F F7                 4704 	.byte	-9
   1260 FF                 4705 	.byte	-1
   1261 F8                 4706 	.byte	-8
   1262 06                 4707 	.byte	6
   1263 FF                 4708 	.byte	-1
   1264 0B                 4709 	.byte	11
   1265 EA                 4710 	.byte	-22
   1266 00                 4711 	.byte	0
   1267 01                 4712 	.byte	1
   1268 1F                 4713 	.byte	31
   1269 FF                 4714 	.byte	-1
   126A 0B                 4715 	.byte	11
   126B E9                 4716 	.byte	-23
   126C 00                 4717 	.byte	0
   126D FD                 4718 	.byte	-3
   126E 11                 4719 	.byte	17
   126F FF                 4720 	.byte	-1
   1270 0B                 4721 	.byte	11
   1271 E9                 4722 	.byte	-23
   1272 00                 4723 	.byte	0
   1273 E9                 4724 	.byte	-23
   1274 0E                 4725 	.byte	14
   1275 FF                 4726 	.byte	-1
   1276 0B                 4727 	.byte	11
   1277 EA                 4728 	.byte	-22
   1278 00                 4729 	.byte	0
   1279 F8                 4730 	.byte	-8
   127A 06                 4731 	.byte	6
   127B FF                 4732 	.byte	-1
   127C 0C                 4733 	.byte	12
   127D 08                 4734 	.byte	8
   127E FF                 4735 	.byte	-1
   127F 08                 4736 	.byte	8
   1280 FA                 4737 	.byte	-6
   1281 FF                 4738 	.byte	-1
   1282 F4                 4739 	.byte	-12
   1283 F8                 4740 	.byte	-8
   1284 FF                 4741 	.byte	-1
   1285 F8                 4742 	.byte	-8
   1286 06                 4743 	.byte	6
   1287 01                 4744 	.byte	1
                           4745 	.globl _height2FallingRight4
   1288                    4746 _height2FallingRight4:
   1288 00                 4747 	.byte	0
   1289 07                 4748 	.byte	7
   128A 02                 4749 	.byte	2
   128B FF                 4750 	.byte	-1
   128C FC                 4751 	.byte	-4
   128D 0C                 4752 	.byte	12
   128E FF                 4753 	.byte	-1
   128F 08                 4754 	.byte	8
   1290 FA                 4755 	.byte	-6
   1291 FF                 4756 	.byte	-1
   1292 04                 4757 	.byte	4
   1293 F5                 4758 	.byte	-11
   1294 FF                 4759 	.byte	-1
   1295 F8                 4760 	.byte	-8
   1296 05                 4761 	.byte	5
   1297 FF                 4762 	.byte	-1
   1298 19                 4763 	.byte	25
   1299 0E                 4764 	.byte	14
   129A 00                 4765 	.byte	0
   129B E3                 4766 	.byte	-29
   129C FE                 4767 	.byte	-2
   129D FF                 4768 	.byte	-1
   129E 1A                 4769 	.byte	26
   129F 0E                 4770 	.byte	14
   12A0 00                 4771 	.byte	0
   12A1 EE                 4772 	.byte	-18
   12A2 EC                 4773 	.byte	-20
   12A3 FF                 4774 	.byte	-1
   12A4 1A                 4775 	.byte	26
   12A5 0E                 4776 	.byte	14
   12A6 00                 4777 	.byte	0
   12A7 EA                 4778 	.byte	-22
   12A8 E7                 4779 	.byte	-25
   12A9 FF                 4780 	.byte	-1
   12AA 19                 4781 	.byte	25
   12AB 0D                 4782 	.byte	13
   12AC 00                 4783 	.byte	0
   12AD F8                 4784 	.byte	-8
   12AE 06                 4785 	.byte	6
   12AF FF                 4786 	.byte	-1
   12B0 FD                 4787 	.byte	-3
   12B1 0C                 4788 	.byte	12
   12B2 FF                 4789 	.byte	-1
   12B3 08                 4790 	.byte	8
   12B4 FA                 4791 	.byte	-6
   12B5 FF                 4792 	.byte	-1
   12B6 03                 4793 	.byte	3
   12B7 F4                 4794 	.byte	-12
   12B8 FF                 4795 	.byte	-1
   12B9 F8                 4796 	.byte	-8
   12BA 06                 4797 	.byte	6
   12BB 01                 4798 	.byte	1
                           4799 	.globl _height2RisingLeft4
   12BC                    4800 _height2RisingLeft4:
   12BC 00                 4801 	.byte	0
   12BD 08                 4802 	.byte	8
   12BE F8                 4803 	.byte	-8
   12BF FF                 4804 	.byte	-1
   12C0 F8                 4805 	.byte	-8
   12C1 08                 4806 	.byte	8
   12C2 FF                 4807 	.byte	-1
   12C3 08                 4808 	.byte	8
   12C4 FB                 4809 	.byte	-5
   12C5 FF                 4810 	.byte	-1
   12C6 08                 4811 	.byte	8
   12C7 F7                 4812 	.byte	-9
   12C8 FF                 4813 	.byte	-1
   12C9 F8                 4814 	.byte	-8
   12CA 06                 4815 	.byte	6
   12CB FF                 4816 	.byte	-1
   12CC 15                 4817 	.byte	21
   12CD 16                 4818 	.byte	22
   12CE 00                 4819 	.byte	0
   12CF E3                 4820 	.byte	-29
   12D0 F2                 4821 	.byte	-14
   12D1 FF                 4822 	.byte	-1
   12D2 15                 4823 	.byte	21
   12D3 16                 4824 	.byte	22
   12D4 00                 4825 	.byte	0
   12D5 F3                 4826 	.byte	-13
   12D6 E5                 4827 	.byte	-27
   12D7 FF                 4828 	.byte	-1
   12D8 15                 4829 	.byte	21
   12D9 15                 4830 	.byte	21
   12DA 00                 4831 	.byte	0
   12DB F3                 4832 	.byte	-13
   12DC E2                 4833 	.byte	-30
   12DD FF                 4834 	.byte	-1
   12DE 15                 4835 	.byte	21
   12DF 16                 4836 	.byte	22
   12E0 00                 4837 	.byte	0
   12E1 F8                 4838 	.byte	-8
   12E2 06                 4839 	.byte	6
   12E3 FF                 4840 	.byte	-1
   12E4 F8                 4841 	.byte	-8
   12E5 08                 4842 	.byte	8
   12E6 FF                 4843 	.byte	-1
   12E7 08                 4844 	.byte	8
   12E8 FA                 4845 	.byte	-6
   12E9 FF                 4846 	.byte	-1
   12EA 08                 4847 	.byte	8
   12EB F8                 4848 	.byte	-8
   12EC FF                 4849 	.byte	-1
   12ED F8                 4850 	.byte	-8
   12EE 06                 4851 	.byte	6
   12EF 01                 4852 	.byte	1
                           4853 	.globl _height2FallingBack4
   12F0                    4854 _height2FallingBack4:
   12F0 00                 4855 	.byte	0
   12F1 08                 4856 	.byte	8
   12F2 00                 4857 	.byte	0
   12F3 FF                 4858 	.byte	-1
   12F4 03                 4859 	.byte	3
   12F5 0D                 4860 	.byte	13
   12F6 FF                 4861 	.byte	-1
   12F7 00                 4862 	.byte	0
   12F8 FB                 4863 	.byte	-5
   12F9 FF                 4864 	.byte	-1
   12FA FD                 4865 	.byte	-3
   12FB F3                 4866 	.byte	-13
   12FC FF                 4867 	.byte	-1
   12FD 00                 4868 	.byte	0
   12FE 05                 4869 	.byte	5
   12FF FF                 4870 	.byte	-1
   1300 1E                 4871 	.byte	30
   1301 FA                 4872 	.byte	-6
   1302 00                 4873 	.byte	0
   1303 E5                 4874 	.byte	-27
   1304 13                 4875 	.byte	19
   1305 FF                 4876 	.byte	-1
   1306 1E                 4877 	.byte	30
   1307 FA                 4878 	.byte	-6
   1308 00                 4879 	.byte	0
   1309 E2                 4880 	.byte	-30
   130A 01                 4881 	.byte	1
   130B FF                 4882 	.byte	-1
   130C 1F                 4883 	.byte	31
   130D FA                 4884 	.byte	-6
   130E 00                 4885 	.byte	0
   130F DE                 4886 	.byte	-34
   1310 F9                 4887 	.byte	-7
   1311 FF                 4888 	.byte	-1
   1312 1F                 4889 	.byte	31
   1313 FA                 4890 	.byte	-6
   1314 00                 4891 	.byte	0
   1315 FF                 4892 	.byte	-1
   1316 05                 4893 	.byte	5
   1317 FF                 4894 	.byte	-1
   1318 03                 4895 	.byte	3
   1319 0D                 4896 	.byte	13
   131A FF                 4897 	.byte	-1
   131B 01                 4898 	.byte	1
   131C FB                 4899 	.byte	-5
   131D FF                 4900 	.byte	-1
   131E FD                 4901 	.byte	-3
   131F F3                 4902 	.byte	-13
   1320 FF                 4903 	.byte	-1
   1321 FF                 4904 	.byte	-1
   1322 05                 4905 	.byte	5
   1323 01                 4906 	.byte	1
                           4907 	.globl _height2RisingFront4
   1324                    4908 _height2RisingFront4:
   1324 00                 4909 	.byte	0
   1325 05                 4910 	.byte	5
   1326 04                 4911 	.byte	4
   1327 FF                 4912 	.byte	-1
   1328 03                 4913 	.byte	3
   1329 0E                 4914 	.byte	14
   132A FF                 4915 	.byte	-1
   132B FB                 4916 	.byte	-5
   132C FC                 4917 	.byte	-4
   132D FF                 4918 	.byte	-1
   132E FD                 4919 	.byte	-3
   132F F2                 4920 	.byte	-14
   1330 FF                 4921 	.byte	-1
   1331 05                 4922 	.byte	5
   1332 04                 4923 	.byte	4
   1333 FF                 4924 	.byte	-1
   1334 1D                 4925 	.byte	29
   1335 F7                 4926 	.byte	-9
   1336 00                 4927 	.byte	0
   1337 E6                 4928 	.byte	-26
   1338 17                 4929 	.byte	23
   1339 FF                 4930 	.byte	-1
   133A 1D                 4931 	.byte	29
   133B F6                 4932 	.byte	-10
   133C 00                 4933 	.byte	0
   133D DE                 4934 	.byte	-34
   133E 06                 4935 	.byte	6
   133F FF                 4936 	.byte	-1
   1340 1D                 4937 	.byte	29
   1341 F6                 4938 	.byte	-10
   1342 00                 4939 	.byte	0
   1343 E0                 4940 	.byte	-32
   1344 FC                 4941 	.byte	-4
   1345 FF                 4942 	.byte	-1
   1346 1D                 4943 	.byte	29
   1347 F7                 4944 	.byte	-9
   1348 00                 4945 	.byte	0
   1349 05                 4946 	.byte	5
   134A 04                 4947 	.byte	4
   134B FF                 4948 	.byte	-1
   134C 03                 4949 	.byte	3
   134D 0D                 4950 	.byte	13
   134E FF                 4951 	.byte	-1
   134F FB                 4952 	.byte	-5
   1350 FC                 4953 	.byte	-4
   1351 FF                 4954 	.byte	-1
   1352 FD                 4955 	.byte	-3
   1353 F3                 4956 	.byte	-13
   1354 FF                 4957 	.byte	-1
   1355 05                 4958 	.byte	5
   1356 04                 4959 	.byte	4
   1357 01                 4960 	.byte	1
                           4961 	.globl _height2FallingFront4
   1358                    4962 _height2FallingFront4:
   1358 FF                 4963 	.byte	-1
   1359 03                 4964 	.byte	3
   135A 0E                 4965 	.byte	14
   135B FF                 4966 	.byte	-1
   135C 0D                 4967 	.byte	13
   135D FB                 4968 	.byte	-5
   135E FF                 4969 	.byte	-1
   135F FD                 4970 	.byte	-3
   1360 F3                 4971 	.byte	-13
   1361 FF                 4972 	.byte	-1
   1362 F3                 4973 	.byte	-13
   1363 04                 4974 	.byte	4
   1364 FF                 4975 	.byte	-1
   1365 0F                 4976 	.byte	15
   1366 06                 4977 	.byte	6
   1367 00                 4978 	.byte	0
   1368 F4                 4979 	.byte	-12
   1369 08                 4980 	.byte	8
   136A FF                 4981 	.byte	-1
   136B 0F                 4982 	.byte	15
   136C 06                 4983 	.byte	6
   136D 00                 4984 	.byte	0
   136E FE                 4985 	.byte	-2
   136F F5                 4986 	.byte	-11
   1370 FF                 4987 	.byte	-1
   1371 0F                 4988 	.byte	15
   1372 06                 4989 	.byte	6
   1373 00                 4990 	.byte	0
   1374 EE                 4991 	.byte	-18
   1375 ED                 4992 	.byte	-19
   1376 FF                 4993 	.byte	-1
   1377 0F                 4994 	.byte	15
   1378 05                 4995 	.byte	5
   1379 00                 4996 	.byte	0
   137A F3                 4997 	.byte	-13
   137B 05                 4998 	.byte	5
   137C FF                 4999 	.byte	-1
   137D 03                 5000 	.byte	3
   137E 0E                 5001 	.byte	14
   137F FF                 5002 	.byte	-1
   1380 0D                 5003 	.byte	13
   1381 FB                 5004 	.byte	-5
   1382 FF                 5005 	.byte	-1
   1383 FD                 5006 	.byte	-3
   1384 F2                 5007 	.byte	-14
   1385 FF                 5008 	.byte	-1
   1386 F3                 5009 	.byte	-13
   1387 05                 5010 	.byte	5
   1388 01                 5011 	.byte	1
                           5012 	.globl _height2RisingBack4
   1389                    5013 _height2RisingBack4:
   1389 00                 5014 	.byte	0
   138A 10                 5015 	.byte	16
   138B F5                 5016 	.byte	-11
   138C FF                 5017 	.byte	-1
   138D 03                 5018 	.byte	3
   138E 0D                 5019 	.byte	13
   138F FF                 5020 	.byte	-1
   1390 0F                 5021 	.byte	15
   1391 FD                 5022 	.byte	-3
   1392 FF                 5023 	.byte	-1
   1393 FD                 5024 	.byte	-3
   1394 F2                 5025 	.byte	-14
   1395 FF                 5026 	.byte	-1
   1396 F1                 5027 	.byte	-15
   1397 04                 5028 	.byte	4
   1398 FF                 5029 	.byte	-1
   1399 03                 5030 	.byte	3
   139A 0A                 5031 	.byte	10
   139B 00                 5032 	.byte	0
   139C 00                 5033 	.byte	0
   139D 03                 5034 	.byte	3
   139E FF                 5035 	.byte	-1
   139F 03                 5036 	.byte	3
   13A0 0A                 5037 	.byte	10
   13A1 00                 5038 	.byte	0
   13A2 0C                 5039 	.byte	12
   13A3 F3                 5040 	.byte	-13
   13A4 FF                 5041 	.byte	-1
   13A5 03                 5042 	.byte	3
   13A6 09                 5043 	.byte	9
   13A7 00                 5044 	.byte	0
   13A8 FA                 5045 	.byte	-6
   13A9 E9                 5046 	.byte	-23
   13AA FF                 5047 	.byte	-1
   13AB 03                 5048 	.byte	3
   13AC 0A                 5049 	.byte	10
   13AD 00                 5050 	.byte	0
   13AE F1                 5051 	.byte	-15
   13AF 04                 5052 	.byte	4
   13B0 FF                 5053 	.byte	-1
   13B1 03                 5054 	.byte	3
   13B2 0D                 5055 	.byte	13
   13B3 FF                 5056 	.byte	-1
   13B4 0F                 5057 	.byte	15
   13B5 FC                 5058 	.byte	-4
   13B6 FF                 5059 	.byte	-1
   13B7 FD                 5060 	.byte	-3
   13B8 F3                 5061 	.byte	-13
   13B9 FF                 5062 	.byte	-1
   13BA F1                 5063 	.byte	-15
   13BB 04                 5064 	.byte	4
   13BC 01                 5065 	.byte	1
                           5066 	.globl _depth2RollingLeft4
   13BD                    5067 _depth2RollingLeft4:
   13BD FF                 5068 	.byte	-1
   13BE 09                 5069 	.byte	9
   13BF 0C                 5070 	.byte	12
   13C0 FF                 5071 	.byte	-1
   13C1 10                 5072 	.byte	16
   13C2 F4                 5073 	.byte	-12
   13C3 FF                 5074 	.byte	-1
   13C4 F7                 5075 	.byte	-9
   13C5 F5                 5076 	.byte	-11
   13C6 FF                 5077 	.byte	-1
   13C7 F0                 5078 	.byte	-16
   13C8 0B                 5079 	.byte	11
   13C9 FF                 5080 	.byte	-1
   13CA 0A                 5081 	.byte	10
   13CB FA                 5082 	.byte	-6
   13CC 00                 5083 	.byte	0
   13CD FF                 5084 	.byte	-1
   13CE 12                 5085 	.byte	18
   13CF FF                 5086 	.byte	-1
   13D0 0A                 5087 	.byte	10
   13D1 F9                 5088 	.byte	-7
   13D2 00                 5089 	.byte	0
   13D3 06                 5090 	.byte	6
   13D4 FB                 5091 	.byte	-5
   13D5 FF                 5092 	.byte	-1
   13D6 0A                 5093 	.byte	10
   13D7 FA                 5094 	.byte	-6
   13D8 00                 5095 	.byte	0
   13D9 ED                 5096 	.byte	-19
   13DA FB                 5097 	.byte	-5
   13DB FF                 5098 	.byte	-1
   13DC 0A                 5099 	.byte	10
   13DD F9                 5100 	.byte	-7
   13DE 00                 5101 	.byte	0
   13DF F0                 5102 	.byte	-16
   13E0 0C                 5103 	.byte	12
   13E1 FF                 5104 	.byte	-1
   13E2 09                 5105 	.byte	9
   13E3 0B                 5106 	.byte	11
   13E4 FF                 5107 	.byte	-1
   13E5 10                 5108 	.byte	16
   13E6 F5                 5109 	.byte	-11
   13E7 FF                 5110 	.byte	-1
   13E8 F7                 5111 	.byte	-9
   13E9 F4                 5112 	.byte	-12
   13EA FF                 5113 	.byte	-1
   13EB F0                 5114 	.byte	-16
   13EC 0C                 5115 	.byte	12
   13ED 01                 5116 	.byte	1
                           5117 	.globl _depth2RollingRight4
   13EE                    5118 _depth2RollingRight4:
   13EE 00                 5119 	.byte	0
   13EF 07                 5120 	.byte	7
   13F0 02                 5121 	.byte	2
   13F1 FF                 5122 	.byte	-1
   13F2 FC                 5123 	.byte	-4
   13F3 0C                 5124 	.byte	12
   13F4 FF                 5125 	.byte	-1
   13F5 10                 5126 	.byte	16
   13F6 F4                 5127 	.byte	-12
   13F7 FF                 5128 	.byte	-1
   13F8 04                 5129 	.byte	4
   13F9 F5                 5130 	.byte	-11
   13FA FF                 5131 	.byte	-1
   13FB F0                 5132 	.byte	-16
   13FC 0B                 5133 	.byte	11
   13FD FF                 5134 	.byte	-1
   13FE 0D                 5135 	.byte	13
   13FF 07                 5136 	.byte	7
   1400 00                 5137 	.byte	0
   1401 EF                 5138 	.byte	-17
   1402 05                 5139 	.byte	5
   1403 FF                 5140 	.byte	-1
   1404 0D                 5141 	.byte	13
   1405 07                 5142 	.byte	7
   1406 00                 5143 	.byte	0
   1407 03                 5144 	.byte	3
   1408 ED                 5145 	.byte	-19
   1409 FF                 5146 	.byte	-1
   140A 0D                 5147 	.byte	13
   140B 07                 5148 	.byte	7
   140C 00                 5149 	.byte	0
   140D F7                 5150 	.byte	-9
   140E EE                 5151 	.byte	-18
   140F FF                 5152 	.byte	-1
   1410 0D                 5153 	.byte	13
   1411 07                 5154 	.byte	7
   1412 00                 5155 	.byte	0
   1413 F0                 5156 	.byte	-16
   1414 0B                 5157 	.byte	11
   1415 FF                 5158 	.byte	-1
   1416 FC                 5159 	.byte	-4
   1417 0C                 5160 	.byte	12
   1418 FF                 5161 	.byte	-1
   1419 10                 5162 	.byte	16
   141A F4                 5163 	.byte	-12
   141B FF                 5164 	.byte	-1
   141C 04                 5165 	.byte	4
   141D F5                 5166 	.byte	-11
   141E FF                 5167 	.byte	-1
   141F F0                 5168 	.byte	-16
   1420 0B                 5169 	.byte	11
   1421 01                 5170 	.byte	1
                           5171 	.globl _width2RollingFront4
   1422                    5172 _width2RollingFront4:
   1422 FF                 5173 	.byte	-1
   1423 06                 5174 	.byte	6
   1424 1C                 5175 	.byte	28
   1425 FF                 5176 	.byte	-1
   1426 0D                 5177 	.byte	13
   1427 FB                 5178 	.byte	-5
   1428 FF                 5179 	.byte	-1
   1429 FA                 5180 	.byte	-6
   142A E5                 5181 	.byte	-27
   142B FF                 5182 	.byte	-1
   142C F3                 5183 	.byte	-13
   142D 04                 5184 	.byte	4
   142E FF                 5185 	.byte	-1
   142F 07                 5186 	.byte	7
   1430 03                 5187 	.byte	3
   1431 00                 5188 	.byte	0
   1432 FF                 5189 	.byte	-1
   1433 19                 5190 	.byte	25
   1434 FF                 5191 	.byte	-1
   1435 07                 5192 	.byte	7
   1436 03                 5193 	.byte	3
   1437 00                 5194 	.byte	0
   1438 06                 5195 	.byte	6
   1439 F8                 5196 	.byte	-8
   143A FF                 5197 	.byte	-1
   143B 08                 5198 	.byte	8
   143C 03                 5199 	.byte	3
   143D 00                 5200 	.byte	0
   143E F2                 5201 	.byte	-14
   143F E2                 5202 	.byte	-30
   1440 FF                 5203 	.byte	-1
   1441 08                 5204 	.byte	8
   1442 03                 5205 	.byte	3
   1443 00                 5206 	.byte	0
   1444 F2                 5207 	.byte	-14
   1445 04                 5208 	.byte	4
   1446 FF                 5209 	.byte	-1
   1447 06                 5210 	.byte	6
   1448 1C                 5211 	.byte	28
   1449 FF                 5212 	.byte	-1
   144A 0E                 5213 	.byte	14
   144B FB                 5214 	.byte	-5
   144C FF                 5215 	.byte	-1
   144D FA                 5216 	.byte	-6
   144E E5                 5217 	.byte	-27
   144F FF                 5218 	.byte	-1
   1450 F2                 5219 	.byte	-14
   1451 04                 5220 	.byte	4
   1452 01                 5221 	.byte	1
                           5222 	.globl _width2RollingBack4
   1453                    5223 _width2RollingBack4:
   1453 00                 5224 	.byte	0
   1454 08                 5225 	.byte	8
   1455 00                 5226 	.byte	0
   1456 FF                 5227 	.byte	-1
   1457 06                 5228 	.byte	6
   1458 1B                 5229 	.byte	27
   1459 FF                 5230 	.byte	-1
   145A 00                 5231 	.byte	0
   145B FB                 5232 	.byte	-5
   145C FF                 5233 	.byte	-1
   145D FA                 5234 	.byte	-6
   145E E5                 5235 	.byte	-27
   145F FF                 5236 	.byte	-1
   1460 00                 5237 	.byte	0
   1461 05                 5238 	.byte	5
   1462 FF                 5239 	.byte	-1
   1463 0F                 5240 	.byte	15
   1464 FD                 5241 	.byte	-3
   1465 00                 5242 	.byte	0
   1466 F7                 5243 	.byte	-9
   1467 1E                 5244 	.byte	30
   1468 FF                 5245 	.byte	-1
   1469 0F                 5246 	.byte	15
   146A FD                 5247 	.byte	-3
   146B 00                 5248 	.byte	0
   146C F1                 5249 	.byte	-15
   146D FE                 5250 	.byte	-2
   146E FF                 5251 	.byte	-1
   146F 0F                 5252 	.byte	15
   1470 FD                 5253 	.byte	-3
   1471 00                 5254 	.byte	0
   1472 EB                 5255 	.byte	-21
   1473 E8                 5256 	.byte	-24
   1474 FF                 5257 	.byte	-1
   1475 0F                 5258 	.byte	15
   1476 FD                 5259 	.byte	-3
   1477 00                 5260 	.byte	0
   1478 00                 5261 	.byte	0
   1479 05                 5262 	.byte	5
   147A FF                 5263 	.byte	-1
   147B 06                 5264 	.byte	6
   147C 1B                 5265 	.byte	27
   147D FF                 5266 	.byte	-1
   147E 00                 5267 	.byte	0
   147F FB                 5268 	.byte	-5
   1480 FF                 5269 	.byte	-1
   1481 FA                 5270 	.byte	-6
   1482 E5                 5271 	.byte	-27
   1483 FF                 5272 	.byte	-1
   1484 00                 5273 	.byte	0
   1485 05                 5274 	.byte	5
   1486 01                 5275 	.byte	1
                           5276 	.globl _height1FallingLeft4
   1487                    5277 _height1FallingLeft4:
   1487 FF                 5278 	.byte	-1
   1488 09                 5279 	.byte	9
   1489 0C                 5280 	.byte	12
   148A FF                 5281 	.byte	-1
   148B 08                 5282 	.byte	8
   148C FA                 5283 	.byte	-6
   148D FF                 5284 	.byte	-1
   148E F7                 5285 	.byte	-9
   148F F5                 5286 	.byte	-11
   1490 FF                 5287 	.byte	-1
   1491 F8                 5288 	.byte	-8
   1492 05                 5289 	.byte	5
   1493 FF                 5290 	.byte	-1
   1494 0A                 5291 	.byte	10
   1495 FA                 5292 	.byte	-6
   1496 00                 5293 	.byte	0
   1497 FF                 5294 	.byte	-1
   1498 12                 5295 	.byte	18
   1499 FF                 5296 	.byte	-1
   149A 0A                 5297 	.byte	10
   149B F9                 5298 	.byte	-7
   149C 00                 5299 	.byte	0
   149D FE                 5300 	.byte	-2
   149E 01                 5301 	.byte	1
   149F FF                 5302 	.byte	-1
   14A0 0A                 5303 	.byte	10
   14A1 FA                 5304 	.byte	-6
   14A2 00                 5305 	.byte	0
   14A3 ED                 5306 	.byte	-19
   14A4 FB                 5307 	.byte	-5
   14A5 FF                 5308 	.byte	-1
   14A6 0A                 5309 	.byte	10
   14A7 F9                 5310 	.byte	-7
   14A8 00                 5311 	.byte	0
   14A9 F8                 5312 	.byte	-8
   14AA 06                 5313 	.byte	6
   14AB FF                 5314 	.byte	-1
   14AC 09                 5315 	.byte	9
   14AD 0B                 5316 	.byte	11
   14AE FF                 5317 	.byte	-1
   14AF 08                 5318 	.byte	8
   14B0 FB                 5319 	.byte	-5
   14B1 FF                 5320 	.byte	-1
   14B2 F7                 5321 	.byte	-9
   14B3 F4                 5322 	.byte	-12
   14B4 FF                 5323 	.byte	-1
   14B5 F8                 5324 	.byte	-8
   14B6 06                 5325 	.byte	6
   14B7 01                 5326 	.byte	1
                           5327 	.globl _height1FallingRight4
   14B8                    5328 _height1FallingRight4:
   14B8 00                 5329 	.byte	0
   14B9 07                 5330 	.byte	7
   14BA 02                 5331 	.byte	2
   14BB FF                 5332 	.byte	-1
   14BC FC                 5333 	.byte	-4
   14BD 0C                 5334 	.byte	12
   14BE FF                 5335 	.byte	-1
   14BF 08                 5336 	.byte	8
   14C0 FA                 5337 	.byte	-6
   14C1 FF                 5338 	.byte	-1
   14C2 04                 5339 	.byte	4
   14C3 F5                 5340 	.byte	-11
   14C4 FF                 5341 	.byte	-1
   14C5 F8                 5342 	.byte	-8
   14C6 05                 5343 	.byte	5
   14C7 FF                 5344 	.byte	-1
   14C8 0D                 5345 	.byte	13
   14C9 07                 5346 	.byte	7
   14CA 00                 5347 	.byte	0
   14CB EF                 5348 	.byte	-17
   14CC 05                 5349 	.byte	5
   14CD FF                 5350 	.byte	-1
   14CE 0D                 5351 	.byte	13
   14CF 07                 5352 	.byte	7
   14D0 00                 5353 	.byte	0
   14D1 FB                 5354 	.byte	-5
   14D2 F3                 5355 	.byte	-13
   14D3 FF                 5356 	.byte	-1
   14D4 0D                 5357 	.byte	13
   14D5 07                 5358 	.byte	7
   14D6 00                 5359 	.byte	0
   14D7 F7                 5360 	.byte	-9
   14D8 EE                 5361 	.byte	-18
   14D9 FF                 5362 	.byte	-1
   14DA 0D                 5363 	.byte	13
   14DB 06                 5364 	.byte	6
   14DC 00                 5365 	.byte	0
   14DD F8                 5366 	.byte	-8
   14DE 06                 5367 	.byte	6
   14DF FF                 5368 	.byte	-1
   14E0 FC                 5369 	.byte	-4
   14E1 0C                 5370 	.byte	12
   14E2 FF                 5371 	.byte	-1
   14E3 08                 5372 	.byte	8
   14E4 FA                 5373 	.byte	-6
   14E5 FF                 5374 	.byte	-1
   14E6 04                 5375 	.byte	4
   14E7 F4                 5376 	.byte	-12
   14E8 FF                 5377 	.byte	-1
   14E9 F8                 5378 	.byte	-8
   14EA 06                 5379 	.byte	6
   14EB 01                 5380 	.byte	1
                           5381 	.globl _height1FallingBack4
   14EC                    5382 _height1FallingBack4:
   14EC 00                 5383 	.byte	0
   14ED 08                 5384 	.byte	8
   14EE 00                 5385 	.byte	0
   14EF FF                 5386 	.byte	-1
   14F0 03                 5387 	.byte	3
   14F1 0D                 5388 	.byte	13
   14F2 FF                 5389 	.byte	-1
   14F3 00                 5390 	.byte	0
   14F4 FB                 5391 	.byte	-5
   14F5 FF                 5392 	.byte	-1
   14F6 FD                 5393 	.byte	-3
   14F7 F3                 5394 	.byte	-13
   14F8 FF                 5395 	.byte	-1
   14F9 00                 5396 	.byte	0
   14FA 05                 5397 	.byte	5
   14FB FF                 5398 	.byte	-1
   14FC 0F                 5399 	.byte	15
   14FD FD                 5400 	.byte	-3
   14FE 00                 5401 	.byte	0
   14FF F4                 5402 	.byte	-12
   1500 10                 5403 	.byte	16
   1501 FF                 5404 	.byte	-1
   1502 0F                 5405 	.byte	15
   1503 FD                 5406 	.byte	-3
   1504 00                 5407 	.byte	0
   1505 F1                 5408 	.byte	-15
   1506 FE                 5409 	.byte	-2
   1507 FF                 5410 	.byte	-1
   1508 0F                 5411 	.byte	15
   1509 FD                 5412 	.byte	-3
   150A 00                 5413 	.byte	0
   150B EE                 5414 	.byte	-18
   150C F6                 5415 	.byte	-10
   150D FF                 5416 	.byte	-1
   150E 0F                 5417 	.byte	15
   150F FD                 5418 	.byte	-3
   1510 00                 5419 	.byte	0
   1511 00                 5420 	.byte	0
   1512 05                 5421 	.byte	5
   1513 FF                 5422 	.byte	-1
   1514 03                 5423 	.byte	3
   1515 0D                 5424 	.byte	13
   1516 FF                 5425 	.byte	-1
   1517 00                 5426 	.byte	0
   1518 FB                 5427 	.byte	-5
   1519 FF                 5428 	.byte	-1
   151A FD                 5429 	.byte	-3
   151B F3                 5430 	.byte	-13
   151C FF                 5431 	.byte	-1
   151D 00                 5432 	.byte	0
   151E 05                 5433 	.byte	5
   151F 01                 5434 	.byte	1
                           5435 	.globl _height1FallingFront4
   1520                    5436 _height1FallingFront4:
   1520 FF                 5437 	.byte	-1
   1521 03                 5438 	.byte	3
   1522 0E                 5439 	.byte	14
   1523 FF                 5440 	.byte	-1
   1524 0D                 5441 	.byte	13
   1525 FB                 5442 	.byte	-5
   1526 FF                 5443 	.byte	-1
   1527 FD                 5444 	.byte	-3
   1528 F3                 5445 	.byte	-13
   1529 FF                 5446 	.byte	-1
   152A F3                 5447 	.byte	-13
   152B 04                 5448 	.byte	4
   152C FF                 5449 	.byte	-1
   152D 07                 5450 	.byte	7
   152E 03                 5451 	.byte	3
   152F 00                 5452 	.byte	0
   1530 FC                 5453 	.byte	-4
   1531 0B                 5454 	.byte	11
   1532 FF                 5455 	.byte	-1
   1533 07                 5456 	.byte	7
   1534 03                 5457 	.byte	3
   1535 00                 5458 	.byte	0
   1536 06                 5459 	.byte	6
   1537 F8                 5460 	.byte	-8
   1538 FF                 5461 	.byte	-1
   1539 08                 5462 	.byte	8
   153A 03                 5463 	.byte	3
   153B 00                 5464 	.byte	0
   153C F5                 5465 	.byte	-11
   153D F0                 5466 	.byte	-16
   153E FF                 5467 	.byte	-1
   153F 08                 5468 	.byte	8
   1540 03                 5469 	.byte	3
   1541 00                 5470 	.byte	0
   1542 F2                 5471 	.byte	-14
   1543 04                 5472 	.byte	4
   1544 FF                 5473 	.byte	-1
   1545 03                 5474 	.byte	3
   1546 0E                 5475 	.byte	14
   1547 FF                 5476 	.byte	-1
   1548 0E                 5477 	.byte	14
   1549 FB                 5478 	.byte	-5
   154A FF                 5479 	.byte	-1
   154B FD                 5480 	.byte	-3
   154C F3                 5481 	.byte	-13
   154D FF                 5482 	.byte	-1
   154E F2                 5483 	.byte	-14
   154F 04                 5484 	.byte	4
   1550 01                 5485 	.byte	1
                           5486 	.globl _height2FallingLeft5
   1551                    5487 _height2FallingLeft5:
   1551 FF                 5488 	.byte	-1
   1552 0A                 5489 	.byte	10
   1553 0B                 5490 	.byte	11
   1554 FF                 5491 	.byte	-1
   1555 08                 5492 	.byte	8
   1556 FA                 5493 	.byte	-6
   1557 FF                 5494 	.byte	-1
   1558 F6                 5495 	.byte	-10
   1559 F6                 5496 	.byte	-10
   155A FF                 5497 	.byte	-1
   155B F8                 5498 	.byte	-8
   155C 05                 5499 	.byte	5
   155D FF                 5500 	.byte	-1
   155E 11                 5501 	.byte	17
   155F F0                 5502 	.byte	-16
   1560 00                 5503 	.byte	0
   1561 F9                 5504 	.byte	-7
   1562 1B                 5505 	.byte	27
   1563 FF                 5506 	.byte	-1
   1564 11                 5507 	.byte	17
   1565 F0                 5508 	.byte	-16
   1566 00                 5509 	.byte	0
   1567 F7                 5510 	.byte	-9
   1568 0A                 5511 	.byte	10
   1569 FF                 5512 	.byte	-1
   156A 11                 5513 	.byte	17
   156B F0                 5514 	.byte	-16
   156C 00                 5515 	.byte	0
   156D E5                 5516 	.byte	-27
   156E 06                 5517 	.byte	6
   156F FF                 5518 	.byte	-1
   1570 11                 5519 	.byte	17
   1571 EF                 5520 	.byte	-17
   1572 00                 5521 	.byte	0
   1573 F8                 5522 	.byte	-8
   1574 06                 5523 	.byte	6
   1575 FF                 5524 	.byte	-1
   1576 0A                 5525 	.byte	10
   1577 0B                 5526 	.byte	11
   1578 FF                 5527 	.byte	-1
   1579 08                 5528 	.byte	8
   157A FA                 5529 	.byte	-6
   157B FF                 5530 	.byte	-1
   157C F6                 5531 	.byte	-10
   157D F5                 5532 	.byte	-11
   157E FF                 5533 	.byte	-1
   157F F8                 5534 	.byte	-8
   1580 06                 5535 	.byte	6
   1581 01                 5536 	.byte	1
                           5537 	.globl _height2RisingRight5
   1582                    5538 _height2RisingRight5:
   1582 00                 5539 	.byte	0
   1583 06                 5540 	.byte	6
   1584 1C                 5541 	.byte	28
   1585 FF                 5542 	.byte	-1
   1586 0B                 5543 	.byte	11
   1587 0A                 5544 	.byte	10
   1588 FF                 5545 	.byte	-1
   1589 08                 5546 	.byte	8
   158A FA                 5547 	.byte	-6
   158B FF                 5548 	.byte	-1
   158C F5                 5549 	.byte	-11
   158D F6                 5550 	.byte	-10
   158E FF                 5551 	.byte	-1
   158F F8                 5552 	.byte	-8
   1590 06                 5553 	.byte	6
   1591 FF                 5554 	.byte	-1
   1592 0E                 5555 	.byte	14
   1593 EC                 5556 	.byte	-20
   1594 00                 5557 	.byte	0
   1595 FD                 5558 	.byte	-3
   1596 1E                 5559 	.byte	30
   1597 FF                 5560 	.byte	-1
   1598 0E                 5561 	.byte	14
   1599 EC                 5562 	.byte	-20
   159A 00                 5563 	.byte	0
   159B FA                 5564 	.byte	-6
   159C 0E                 5565 	.byte	14
   159D FF                 5566 	.byte	-1
   159E 0E                 5567 	.byte	14
   159F EC                 5568 	.byte	-20
   15A0 00                 5569 	.byte	0
   15A1 E7                 5570 	.byte	-25
   15A2 0A                 5571 	.byte	10
   15A3 FF                 5572 	.byte	-1
   15A4 0E                 5573 	.byte	14
   15A5 EC                 5574 	.byte	-20
   15A6 00                 5575 	.byte	0
   15A7 F8                 5576 	.byte	-8
   15A8 06                 5577 	.byte	6
   15A9 FF                 5578 	.byte	-1
   15AA 0B                 5579 	.byte	11
   15AB 0A                 5580 	.byte	10
   15AC FF                 5581 	.byte	-1
   15AD 08                 5582 	.byte	8
   15AE FA                 5583 	.byte	-6
   15AF FF                 5584 	.byte	-1
   15B0 F5                 5585 	.byte	-11
   15B1 F6                 5586 	.byte	-10
   15B2 FF                 5587 	.byte	-1
   15B3 F8                 5588 	.byte	-8
   15B4 06                 5589 	.byte	6
   15B5 01                 5590 	.byte	1
                           5591 	.globl _height2FallingRight5
   15B6                    5592 _height2FallingRight5:
   15B6 00                 5593 	.byte	0
   15B7 09                 5594 	.byte	9
   15B8 03                 5595 	.byte	3
   15B9 FF                 5596 	.byte	-1
   15BA FA                 5597 	.byte	-6
   15BB 0B                 5598 	.byte	11
   15BC FF                 5599 	.byte	-1
   15BD 08                 5600 	.byte	8
   15BE FA                 5601 	.byte	-6
   15BF FF                 5602 	.byte	-1
   15C0 06                 5603 	.byte	6
   15C1 F6                 5604 	.byte	-10
   15C2 FF                 5605 	.byte	-1
   15C3 F8                 5606 	.byte	-8
   15C4 05                 5607 	.byte	5
   15C5 FF                 5608 	.byte	-1
   15C6 18                 5609 	.byte	24
   15C7 11                 5610 	.byte	17
   15C8 00                 5611 	.byte	0
   15C9 E2                 5612 	.byte	-30
   15CA FA                 5613 	.byte	-6
   15CB FF                 5614 	.byte	-1
   15CC 18                 5615 	.byte	24
   15CD 11                 5616 	.byte	17
   15CE 00                 5617 	.byte	0
   15CF F0                 5618 	.byte	-16
   15D0 E9                 5619 	.byte	-23
   15D1 FF                 5620 	.byte	-1
   15D2 18                 5621 	.byte	24
   15D3 11                 5622 	.byte	17
   15D4 00                 5623 	.byte	0
   15D5 EE                 5624 	.byte	-18
   15D6 E5                 5625 	.byte	-27
   15D7 FF                 5626 	.byte	-1
   15D8 18                 5627 	.byte	24
   15D9 10                 5628 	.byte	16
   15DA 00                 5629 	.byte	0
   15DB F8                 5630 	.byte	-8
   15DC 06                 5631 	.byte	6
   15DD FF                 5632 	.byte	-1
   15DE FA                 5633 	.byte	-6
   15DF 0B                 5634 	.byte	11
   15E0 FF                 5635 	.byte	-1
   15E1 08                 5636 	.byte	8
   15E2 FA                 5637 	.byte	-6
   15E3 FF                 5638 	.byte	-1
   15E4 06                 5639 	.byte	6
   15E5 F5                 5640 	.byte	-11
   15E6 FF                 5641 	.byte	-1
   15E7 F8                 5642 	.byte	-8
   15E8 06                 5643 	.byte	6
   15E9 01                 5644 	.byte	1
                           5645 	.globl _height2RisingLeft5
   15EA                    5646 _height2RisingLeft5:
   15EA 00                 5647 	.byte	0
   15EB 07                 5648 	.byte	7
   15EC F7                 5649 	.byte	-9
   15ED FF                 5650 	.byte	-1
   15EE F9                 5651 	.byte	-7
   15EF 09                 5652 	.byte	9
   15F0 FF                 5653 	.byte	-1
   15F1 08                 5654 	.byte	8
   15F2 FB                 5655 	.byte	-5
   15F3 FF                 5656 	.byte	-1
   15F4 07                 5657 	.byte	7
   15F5 F6                 5658 	.byte	-10
   15F6 FF                 5659 	.byte	-1
   15F7 F8                 5660 	.byte	-8
   15F8 06                 5661 	.byte	6
   15F9 FF                 5662 	.byte	-1
   15FA 17                 5663 	.byte	23
   15FB 13                 5664 	.byte	19
   15FC 00                 5665 	.byte	0
   15FD E2                 5666 	.byte	-30
   15FE F6                 5667 	.byte	-10
   15FF FF                 5668 	.byte	-1
   1600 17                 5669 	.byte	23
   1601 14                 5670 	.byte	20
   1602 00                 5671 	.byte	0
   1603 F1                 5672 	.byte	-15
   1604 E7                 5673 	.byte	-25
   1605 FF                 5674 	.byte	-1
   1606 17                 5675 	.byte	23
   1607 13                 5676 	.byte	19
   1608 00                 5677 	.byte	0
   1609 F0                 5678 	.byte	-16
   160A E3                 5679 	.byte	-29
   160B FF                 5680 	.byte	-1
   160C 17                 5681 	.byte	23
   160D 13                 5682 	.byte	19
   160E 00                 5683 	.byte	0
   160F F8                 5684 	.byte	-8
   1610 06                 5685 	.byte	6
   1611 FF                 5686 	.byte	-1
   1612 F9                 5687 	.byte	-7
   1613 0A                 5688 	.byte	10
   1614 FF                 5689 	.byte	-1
   1615 08                 5690 	.byte	8
   1616 FA                 5691 	.byte	-6
   1617 FF                 5692 	.byte	-1
   1618 07                 5693 	.byte	7
   1619 F6                 5694 	.byte	-10
   161A FF                 5695 	.byte	-1
   161B F8                 5696 	.byte	-8
   161C 06                 5697 	.byte	6
   161D 01                 5698 	.byte	1
                           5699 	.globl _height2FallingBack5
   161E                    5700 _height2FallingBack5:
   161E 00                 5701 	.byte	0
   161F 0A                 5702 	.byte	10
   1620 00                 5703 	.byte	0
   1621 FF                 5704 	.byte	-1
   1622 03                 5705 	.byte	3
   1623 0D                 5706 	.byte	13
   1624 FF                 5707 	.byte	-1
   1625 FE                 5708 	.byte	-2
   1626 FB                 5709 	.byte	-5
   1627 FF                 5710 	.byte	-1
   1628 FD                 5711 	.byte	-3
   1629 F3                 5712 	.byte	-13
   162A FF                 5713 	.byte	-1
   162B 02                 5714 	.byte	2
   162C 05                 5715 	.byte	5
   162D FF                 5716 	.byte	-1
   162E 1E                 5717 	.byte	30
   162F F8                 5718 	.byte	-8
   1630 00                 5719 	.byte	0
   1631 E5                 5720 	.byte	-27
   1632 15                 5721 	.byte	21
   1633 FF                 5722 	.byte	-1
   1634 1E                 5723 	.byte	30
   1635 F8                 5724 	.byte	-8
   1636 00                 5725 	.byte	0
   1637 E0                 5726 	.byte	-32
   1638 03                 5727 	.byte	3
   1639 FF                 5728 	.byte	-1
   163A 1E                 5729 	.byte	30
   163B F9                 5730 	.byte	-7
   163C 00                 5731 	.byte	0
   163D DF                 5732 	.byte	-33
   163E FA                 5733 	.byte	-6
   163F FF                 5734 	.byte	-1
   1640 1E                 5735 	.byte	30
   1641 F9                 5736 	.byte	-7
   1642 00                 5737 	.byte	0
   1643 02                 5738 	.byte	2
   1644 04                 5739 	.byte	4
   1645 FF                 5740 	.byte	-1
   1646 03                 5741 	.byte	3
   1647 0D                 5742 	.byte	13
   1648 FF                 5743 	.byte	-1
   1649 FE                 5744 	.byte	-2
   164A FC                 5745 	.byte	-4
   164B FF                 5746 	.byte	-1
   164C FD                 5747 	.byte	-3
   164D F3                 5748 	.byte	-13
   164E FF                 5749 	.byte	-1
   164F 02                 5750 	.byte	2
   1650 04                 5751 	.byte	4
   1651 01                 5752 	.byte	1
                           5753 	.globl _height2RisingFront5
   1652                    5754 _height2RisingFront5:
   1652 00                 5755 	.byte	0
   1653 04                 5756 	.byte	4
   1654 04                 5757 	.byte	4
   1655 FF                 5758 	.byte	-1
   1656 03                 5759 	.byte	3
   1657 0E                 5760 	.byte	14
   1658 FF                 5761 	.byte	-1
   1659 FC                 5762 	.byte	-4
   165A FC                 5763 	.byte	-4
   165B FF                 5764 	.byte	-1
   165C FD                 5765 	.byte	-3
   165D F2                 5766 	.byte	-14
   165E FF                 5767 	.byte	-1
   165F 04                 5768 	.byte	4
   1660 04                 5769 	.byte	4
   1661 FF                 5770 	.byte	-1
   1662 1D                 5771 	.byte	29
   1663 F9                 5772 	.byte	-7
   1664 00                 5773 	.byte	0
   1665 E6                 5774 	.byte	-26
   1666 15                 5775 	.byte	21
   1667 FF                 5776 	.byte	-1
   1668 1D                 5777 	.byte	29
   1669 F8                 5778 	.byte	-8
   166A 00                 5779 	.byte	0
   166B DF                 5780 	.byte	-33
   166C 04                 5781 	.byte	4
   166D FF                 5782 	.byte	-1
   166E 1E                 5783 	.byte	30
   166F F8                 5784 	.byte	-8
   1670 00                 5785 	.byte	0
   1671 DF                 5786 	.byte	-33
   1672 FA                 5787 	.byte	-6
   1673 FF                 5788 	.byte	-1
   1674 1E                 5789 	.byte	30
   1675 F9                 5790 	.byte	-7
   1676 00                 5791 	.byte	0
   1677 03                 5792 	.byte	3
   1678 04                 5793 	.byte	4
   1679 FF                 5794 	.byte	-1
   167A 03                 5795 	.byte	3
   167B 0D                 5796 	.byte	13
   167C FF                 5797 	.byte	-1
   167D FD                 5798 	.byte	-3
   167E FC                 5799 	.byte	-4
   167F FF                 5800 	.byte	-1
   1680 FD                 5801 	.byte	-3
   1681 F3                 5802 	.byte	-13
   1682 FF                 5803 	.byte	-1
   1683 03                 5804 	.byte	3
   1684 04                 5805 	.byte	4
   1685 01                 5806 	.byte	1
                           5807 	.globl _height2FallingFront5
   1686                    5808 _height2FallingFront5:
   1686 FF                 5809 	.byte	-1
   1687 03                 5810 	.byte	3
   1688 0E                 5811 	.byte	14
   1689 FF                 5812 	.byte	-1
   168A 0E                 5813 	.byte	14
   168B FB                 5814 	.byte	-5
   168C FF                 5815 	.byte	-1
   168D FD                 5816 	.byte	-3
   168E F3                 5817 	.byte	-13
   168F FF                 5818 	.byte	-1
   1690 F2                 5819 	.byte	-14
   1691 04                 5820 	.byte	4
   1692 FF                 5821 	.byte	-1
   1693 0B                 5822 	.byte	11
   1694 07                 5823 	.byte	7
   1695 00                 5824 	.byte	0
   1696 F8                 5825 	.byte	-8
   1697 07                 5826 	.byte	7
   1698 FF                 5827 	.byte	-1
   1699 0B                 5828 	.byte	11
   169A 07                 5829 	.byte	7
   169B 00                 5830 	.byte	0
   169C 03                 5831 	.byte	3
   169D F4                 5832 	.byte	-12
   169E FF                 5833 	.byte	-1
   169F 0B                 5834 	.byte	11
   16A0 08                 5835 	.byte	8
   16A1 00                 5836 	.byte	0
   16A2 F2                 5837 	.byte	-14
   16A3 EB                 5838 	.byte	-21
   16A4 FF                 5839 	.byte	-1
   16A5 0B                 5840 	.byte	11
   16A6 07                 5841 	.byte	7
   16A7 00                 5842 	.byte	0
   16A8 F2                 5843 	.byte	-14
   16A9 04                 5844 	.byte	4
   16AA FF                 5845 	.byte	-1
   16AB 03                 5846 	.byte	3
   16AC 0E                 5847 	.byte	14
   16AD FF                 5848 	.byte	-1
   16AE 0E                 5849 	.byte	14
   16AF FC                 5850 	.byte	-4
   16B0 FF                 5851 	.byte	-1
   16B1 FD                 5852 	.byte	-3
   16B2 F2                 5853 	.byte	-14
   16B3 FF                 5854 	.byte	-1
   16B4 F2                 5855 	.byte	-14
   16B5 04                 5856 	.byte	4
   16B6 01                 5857 	.byte	1
                           5858 	.globl _height2RisingBack5
   16B7                    5859 _height2RisingBack5:
   16B7 00                 5860 	.byte	0
   16B8 10                 5861 	.byte	16
   16B9 F5                 5862 	.byte	-11
   16BA FF                 5863 	.byte	-1
   16BB 03                 5864 	.byte	3
   16BC 0D                 5865 	.byte	13
   16BD FF                 5866 	.byte	-1
   16BE 0F                 5867 	.byte	15
   16BF FD                 5868 	.byte	-3
   16C0 FF                 5869 	.byte	-1
   16C1 FD                 5870 	.byte	-3
   16C2 F2                 5871 	.byte	-14
   16C3 FF                 5872 	.byte	-1
   16C4 F1                 5873 	.byte	-15
   16C5 04                 5874 	.byte	4
   16C6 FF                 5875 	.byte	-1
   16C7 07                 5876 	.byte	7
   16C8 08                 5877 	.byte	8
   16C9 00                 5878 	.byte	0
   16CA FC                 5879 	.byte	-4
   16CB 05                 5880 	.byte	5
   16CC FF                 5881 	.byte	-1
   16CD 07                 5882 	.byte	7
   16CE 08                 5883 	.byte	8
   16CF 00                 5884 	.byte	0
   16D0 08                 5885 	.byte	8
   16D1 F5                 5886 	.byte	-11
   16D2 FF                 5887 	.byte	-1
   16D3 07                 5888 	.byte	7
   16D4 07                 5889 	.byte	7
   16D5 00                 5890 	.byte	0
   16D6 F6                 5891 	.byte	-10
   16D7 EB                 5892 	.byte	-21
   16D8 FF                 5893 	.byte	-1
   16D9 07                 5894 	.byte	7
   16DA 08                 5895 	.byte	8
   16DB 00                 5896 	.byte	0
   16DC F1                 5897 	.byte	-15
   16DD 04                 5898 	.byte	4
   16DE FF                 5899 	.byte	-1
   16DF 03                 5900 	.byte	3
   16E0 0D                 5901 	.byte	13
   16E1 FF                 5902 	.byte	-1
   16E2 0F                 5903 	.byte	15
   16E3 FC                 5904 	.byte	-4
   16E4 FF                 5905 	.byte	-1
   16E5 FD                 5906 	.byte	-3
   16E6 F3                 5907 	.byte	-13
   16E7 FF                 5908 	.byte	-1
   16E8 F1                 5909 	.byte	-15
   16E9 04                 5910 	.byte	4
   16EA 01                 5911 	.byte	1
                           5912 	.globl _depth2RollingLeft5
   16EB                    5913 _depth2RollingLeft5:
   16EB FF                 5914 	.byte	-1
   16EC 0A                 5915 	.byte	10
   16ED 0B                 5916 	.byte	11
   16EE FF                 5917 	.byte	-1
   16EF 10                 5918 	.byte	16
   16F0 F5                 5919 	.byte	-11
   16F1 FF                 5920 	.byte	-1
   16F2 F6                 5921 	.byte	-10
   16F3 F5                 5922 	.byte	-11
   16F4 FF                 5923 	.byte	-1
   16F5 F0                 5924 	.byte	-16
   16F6 0B                 5925 	.byte	11
   16F7 FF                 5926 	.byte	-1
   16F8 08                 5927 	.byte	8
   16F9 F8                 5928 	.byte	-8
   16FA 00                 5929 	.byte	0
   16FB 02                 5930 	.byte	2
   16FC 13                 5931 	.byte	19
   16FD FF                 5932 	.byte	-1
   16FE 09                 5933 	.byte	9
   16FF F8                 5934 	.byte	-8
   1700 00                 5935 	.byte	0
   1701 07                 5936 	.byte	7
   1702 FD                 5937 	.byte	-3
   1703 FF                 5938 	.byte	-1
   1704 09                 5939 	.byte	9
   1705 F8                 5940 	.byte	-8
   1706 00                 5941 	.byte	0
   1707 ED                 5942 	.byte	-19
   1708 FD                 5943 	.byte	-3
   1709 FF                 5944 	.byte	-1
   170A 08                 5945 	.byte	8
   170B F7                 5946 	.byte	-9
   170C 00                 5947 	.byte	0
   170D F0                 5948 	.byte	-16
   170E 0C                 5949 	.byte	12
   170F FF                 5950 	.byte	-1
   1710 0B                 5951 	.byte	11
   1711 0B                 5952 	.byte	11
   1712 FF                 5953 	.byte	-1
   1713 10                 5954 	.byte	16
   1714 F5                 5955 	.byte	-11
   1715 FF                 5956 	.byte	-1
   1716 F5                 5957 	.byte	-11
   1717 F4                 5958 	.byte	-12
   1718 FF                 5959 	.byte	-1
   1719 F0                 5960 	.byte	-16
   171A 0C                 5961 	.byte	12
   171B 01                 5962 	.byte	1
                           5963 	.globl _depth2RollingRight5
   171C                    5964 _depth2RollingRight5:
   171C 00                 5965 	.byte	0
   171D 09                 5966 	.byte	9
   171E 03                 5967 	.byte	3
   171F FF                 5968 	.byte	-1
   1720 FA                 5969 	.byte	-6
   1721 0B                 5970 	.byte	11
   1722 FF                 5971 	.byte	-1
   1723 10                 5972 	.byte	16
   1724 F4                 5973 	.byte	-12
   1725 FF                 5974 	.byte	-1
   1726 06                 5975 	.byte	6
   1727 F6                 5976 	.byte	-10
   1728 FF                 5977 	.byte	-1
   1729 F0                 5978 	.byte	-16
   172A 0B                 5979 	.byte	11
   172B FF                 5980 	.byte	-1
   172C 0C                 5981 	.byte	12
   172D 08                 5982 	.byte	8
   172E 00                 5983 	.byte	0
   172F EE                 5984 	.byte	-18
   1730 03                 5985 	.byte	3
   1731 FF                 5986 	.byte	-1
   1732 0C                 5987 	.byte	12
   1733 09                 5988 	.byte	9
   1734 00                 5989 	.byte	0
   1735 04                 5990 	.byte	4
   1736 EB                 5991 	.byte	-21
   1737 FF                 5992 	.byte	-1
   1738 0C                 5993 	.byte	12
   1739 09                 5994 	.byte	9
   173A 00                 5995 	.byte	0
   173B FA                 5996 	.byte	-6
   173C ED                 5997 	.byte	-19
   173D FF                 5998 	.byte	-1
   173E 0C                 5999 	.byte	12
   173F 08                 6000 	.byte	8
   1740 00                 6001 	.byte	0
   1741 F0                 6002 	.byte	-16
   1742 0B                 6003 	.byte	11
   1743 FF                 6004 	.byte	-1
   1744 FA                 6005 	.byte	-6
   1745 0C                 6006 	.byte	12
   1746 FF                 6007 	.byte	-1
   1747 10                 6008 	.byte	16
   1748 F4                 6009 	.byte	-12
   1749 FF                 6010 	.byte	-1
   174A 06                 6011 	.byte	6
   174B F5                 6012 	.byte	-11
   174C FF                 6013 	.byte	-1
   174D F0                 6014 	.byte	-16
   174E 0B                 6015 	.byte	11
   174F 01                 6016 	.byte	1
                           6017 	.globl _width2RollingFront5
   1750                    6018 _width2RollingFront5:
   1750 FF                 6019 	.byte	-1
   1751 06                 6020 	.byte	6
   1752 1C                 6021 	.byte	28
   1753 FF                 6022 	.byte	-1
   1754 0E                 6023 	.byte	14
   1755 FB                 6024 	.byte	-5
   1756 FF                 6025 	.byte	-1
   1757 FA                 6026 	.byte	-6
   1758 E5                 6027 	.byte	-27
   1759 FF                 6028 	.byte	-1
   175A F2                 6029 	.byte	-14
   175B 04                 6030 	.byte	4
   175C FF                 6031 	.byte	-1
   175D 05                 6032 	.byte	5
   175E 04                 6033 	.byte	4
   175F 00                 6034 	.byte	0
   1760 01                 6035 	.byte	1
   1761 18                 6036 	.byte	24
   1762 FF                 6037 	.byte	-1
   1763 05                 6038 	.byte	5
   1764 04                 6039 	.byte	4
   1765 00                 6040 	.byte	0
   1766 09                 6041 	.byte	9
   1767 F7                 6042 	.byte	-9
   1768 FF                 6043 	.byte	-1
   1769 06                 6044 	.byte	6
   176A 04                 6045 	.byte	4
   176B 00                 6046 	.byte	0
   176C F4                 6047 	.byte	-12
   176D E1                 6048 	.byte	-31
   176E FF                 6049 	.byte	-1
   176F 06                 6050 	.byte	6
   1770 04                 6051 	.byte	4
   1771 00                 6052 	.byte	0
   1772 F1                 6053 	.byte	-15
   1773 04                 6054 	.byte	4
   1774 FF                 6055 	.byte	-1
   1775 06                 6056 	.byte	6
   1776 1C                 6057 	.byte	28
   1777 FF                 6058 	.byte	-1
   1778 0F                 6059 	.byte	15
   1779 FB                 6060 	.byte	-5
   177A FF                 6061 	.byte	-1
   177B FA                 6062 	.byte	-6
   177C E5                 6063 	.byte	-27
   177D FF                 6064 	.byte	-1
   177E F1                 6065 	.byte	-15
   177F 04                 6066 	.byte	4
   1780 01                 6067 	.byte	1
                           6068 	.globl _width2RollingBack5
   1781                    6069 _width2RollingBack5:
   1781 00                 6070 	.byte	0
   1782 0A                 6071 	.byte	10
   1783 00                 6072 	.byte	0
   1784 FF                 6073 	.byte	-1
   1785 06                 6074 	.byte	6
   1786 1B                 6075 	.byte	27
   1787 FF                 6076 	.byte	-1
   1788 FE                 6077 	.byte	-2
   1789 FB                 6078 	.byte	-5
   178A FF                 6079 	.byte	-1
   178B FA                 6080 	.byte	-6
   178C E5                 6081 	.byte	-27
   178D FF                 6082 	.byte	-1
   178E 02                 6083 	.byte	2
   178F 05                 6084 	.byte	5
   1790 FF                 6085 	.byte	-1
   1791 0F                 6086 	.byte	15
   1792 FC                 6087 	.byte	-4
   1793 00                 6088 	.byte	0
   1794 F7                 6089 	.byte	-9
   1795 1F                 6090 	.byte	31
   1796 FF                 6091 	.byte	-1
   1797 0F                 6092 	.byte	15
   1798 FC                 6093 	.byte	-4
   1799 00                 6094 	.byte	0
   179A EF                 6095 	.byte	-17
   179B FF                 6096 	.byte	-1
   179C FF                 6097 	.byte	-1
   179D 0F                 6098 	.byte	15
   179E FC                 6099 	.byte	-4
   179F 00                 6100 	.byte	0
   17A0 EB                 6101 	.byte	-21
   17A1 E9                 6102 	.byte	-23
   17A2 FF                 6103 	.byte	-1
   17A3 0F                 6104 	.byte	15
   17A4 FC                 6105 	.byte	-4
   17A5 00                 6106 	.byte	0
   17A6 02                 6107 	.byte	2
   17A7 05                 6108 	.byte	5
   17A8 FF                 6109 	.byte	-1
   17A9 06                 6110 	.byte	6
   17AA 1B                 6111 	.byte	27
   17AB FF                 6112 	.byte	-1
   17AC FE                 6113 	.byte	-2
   17AD FB                 6114 	.byte	-5
   17AE FF                 6115 	.byte	-1
   17AF FA                 6116 	.byte	-6
   17B0 E5                 6117 	.byte	-27
   17B1 FF                 6118 	.byte	-1
   17B2 02                 6119 	.byte	2
   17B3 05                 6120 	.byte	5
   17B4 01                 6121 	.byte	1
                           6122 	.globl _height1FallingLeft5
   17B5                    6123 _height1FallingLeft5:
   17B5 FF                 6124 	.byte	-1
   17B6 0A                 6125 	.byte	10
   17B7 0B                 6126 	.byte	11
   17B8 FF                 6127 	.byte	-1
   17B9 08                 6128 	.byte	8
   17BA FA                 6129 	.byte	-6
   17BB FF                 6130 	.byte	-1
   17BC F6                 6131 	.byte	-10
   17BD F6                 6132 	.byte	-10
   17BE FF                 6133 	.byte	-1
   17BF F8                 6134 	.byte	-8
   17C0 05                 6135 	.byte	5
   17C1 FF                 6136 	.byte	-1
   17C2 08                 6137 	.byte	8
   17C3 F8                 6138 	.byte	-8
   17C4 00                 6139 	.byte	0
   17C5 02                 6140 	.byte	2
   17C6 13                 6141 	.byte	19
   17C7 FF                 6142 	.byte	-1
   17C8 09                 6143 	.byte	9
   17C9 F8                 6144 	.byte	-8
   17CA 00                 6145 	.byte	0
   17CB FF                 6146 	.byte	-1
   17CC 02                 6147 	.byte	2
   17CD FF                 6148 	.byte	-1
   17CE 09                 6149 	.byte	9
   17CF F9                 6150 	.byte	-7
   17D0 00                 6151 	.byte	0
   17D1 ED                 6152 	.byte	-19
   17D2 FD                 6153 	.byte	-3
   17D3 FF                 6154 	.byte	-1
   17D4 08                 6155 	.byte	8
   17D5 F7                 6156 	.byte	-9
   17D6 00                 6157 	.byte	0
   17D7 F8                 6158 	.byte	-8
   17D8 06                 6159 	.byte	6
   17D9 FF                 6160 	.byte	-1
   17DA 0B                 6161 	.byte	11
   17DB 0B                 6162 	.byte	11
   17DC FF                 6163 	.byte	-1
   17DD 08                 6164 	.byte	8
   17DE FB                 6165 	.byte	-5
   17DF FF                 6166 	.byte	-1
   17E0 F5                 6167 	.byte	-11
   17E1 F4                 6168 	.byte	-12
   17E2 FF                 6169 	.byte	-1
   17E3 F8                 6170 	.byte	-8
   17E4 06                 6171 	.byte	6
   17E5 01                 6172 	.byte	1
                           6173 	.globl _height1FallingRight5
   17E6                    6174 _height1FallingRight5:
   17E6 00                 6175 	.byte	0
   17E7 09                 6176 	.byte	9
   17E8 03                 6177 	.byte	3
   17E9 FF                 6178 	.byte	-1
   17EA FA                 6179 	.byte	-6
   17EB 0B                 6180 	.byte	11
   17EC FF                 6181 	.byte	-1
   17ED 08                 6182 	.byte	8
   17EE FA                 6183 	.byte	-6
   17EF FF                 6184 	.byte	-1
   17F0 06                 6185 	.byte	6
   17F1 F6                 6186 	.byte	-10
   17F2 FF                 6187 	.byte	-1
   17F3 F8                 6188 	.byte	-8
   17F4 05                 6189 	.byte	5
   17F5 FF                 6190 	.byte	-1
   17F6 0C                 6191 	.byte	12
   17F7 08                 6192 	.byte	8
   17F8 00                 6193 	.byte	0
   17F9 EE                 6194 	.byte	-18
   17FA 03                 6195 	.byte	3
   17FB FF                 6196 	.byte	-1
   17FC 0C                 6197 	.byte	12
   17FD 09                 6198 	.byte	9
   17FE 00                 6199 	.byte	0
   17FF FC                 6200 	.byte	-4
   1800 F1                 6201 	.byte	-15
   1801 FF                 6202 	.byte	-1
   1802 0C                 6203 	.byte	12
   1803 09                 6204 	.byte	9
   1804 00                 6205 	.byte	0
   1805 FA                 6206 	.byte	-6
   1806 ED                 6207 	.byte	-19
   1807 FF                 6208 	.byte	-1
   1808 0C                 6209 	.byte	12
   1809 07                 6210 	.byte	7
   180A 00                 6211 	.byte	0
   180B F8                 6212 	.byte	-8
   180C 06                 6213 	.byte	6
   180D FF                 6214 	.byte	-1
   180E FA                 6215 	.byte	-6
   180F 0C                 6216 	.byte	12
   1810 FF                 6217 	.byte	-1
   1811 08                 6218 	.byte	8
   1812 FA                 6219 	.byte	-6
   1813 FF                 6220 	.byte	-1
   1814 06                 6221 	.byte	6
   1815 F4                 6222 	.byte	-12
   1816 FF                 6223 	.byte	-1
   1817 F8                 6224 	.byte	-8
   1818 06                 6225 	.byte	6
   1819 01                 6226 	.byte	1
                           6227 	.globl _height1FallingBack5
   181A                    6228 _height1FallingBack5:
   181A 00                 6229 	.byte	0
   181B 0A                 6230 	.byte	10
   181C 00                 6231 	.byte	0
   181D FF                 6232 	.byte	-1
   181E 03                 6233 	.byte	3
   181F 0D                 6234 	.byte	13
   1820 FF                 6235 	.byte	-1
   1821 FE                 6236 	.byte	-2
   1822 FB                 6237 	.byte	-5
   1823 FF                 6238 	.byte	-1
   1824 FD                 6239 	.byte	-3
   1825 F3                 6240 	.byte	-13
   1826 FF                 6241 	.byte	-1
   1827 02                 6242 	.byte	2
   1828 05                 6243 	.byte	5
   1829 FF                 6244 	.byte	-1
   182A 0F                 6245 	.byte	15
   182B FC                 6246 	.byte	-4
   182C 00                 6247 	.byte	0
   182D F4                 6248 	.byte	-12
   182E 11                 6249 	.byte	17
   182F FF                 6250 	.byte	-1
   1830 0F                 6251 	.byte	15
   1831 FC                 6252 	.byte	-4
   1832 00                 6253 	.byte	0
   1833 EF                 6254 	.byte	-17
   1834 FF                 6255 	.byte	-1
   1835 FF                 6256 	.byte	-1
   1836 0F                 6257 	.byte	15
   1837 FC                 6258 	.byte	-4
   1838 00                 6259 	.byte	0
   1839 EE                 6260 	.byte	-18
   183A F7                 6261 	.byte	-9
   183B FF                 6262 	.byte	-1
   183C 0F                 6263 	.byte	15
   183D FC                 6264 	.byte	-4
   183E 00                 6265 	.byte	0
   183F 02                 6266 	.byte	2
   1840 05                 6267 	.byte	5
   1841 FF                 6268 	.byte	-1
   1842 03                 6269 	.byte	3
   1843 0D                 6270 	.byte	13
   1844 FF                 6271 	.byte	-1
   1845 FE                 6272 	.byte	-2
   1846 FB                 6273 	.byte	-5
   1847 FF                 6274 	.byte	-1
   1848 FD                 6275 	.byte	-3
   1849 F3                 6276 	.byte	-13
   184A FF                 6277 	.byte	-1
   184B 02                 6278 	.byte	2
   184C 05                 6279 	.byte	5
   184D 01                 6280 	.byte	1
                           6281 	.globl _height1FallingFront5
   184E                    6282 _height1FallingFront5:
   184E FF                 6283 	.byte	-1
   184F 03                 6284 	.byte	3
   1850 0E                 6285 	.byte	14
   1851 FF                 6286 	.byte	-1
   1852 0E                 6287 	.byte	14
   1853 FB                 6288 	.byte	-5
   1854 FF                 6289 	.byte	-1
   1855 FD                 6290 	.byte	-3
   1856 F3                 6291 	.byte	-13
   1857 FF                 6292 	.byte	-1
   1858 F2                 6293 	.byte	-14
   1859 04                 6294 	.byte	4
   185A FF                 6295 	.byte	-1
   185B 05                 6296 	.byte	5
   185C 04                 6297 	.byte	4
   185D 00                 6298 	.byte	0
   185E FE                 6299 	.byte	-2
   185F 0A                 6300 	.byte	10
   1860 FF                 6301 	.byte	-1
   1861 05                 6302 	.byte	5
   1862 04                 6303 	.byte	4
   1863 00                 6304 	.byte	0
   1864 09                 6305 	.byte	9
   1865 F7                 6306 	.byte	-9
   1866 FF                 6307 	.byte	-1
   1867 06                 6308 	.byte	6
   1868 04                 6309 	.byte	4
   1869 00                 6310 	.byte	0
   186A F7                 6311 	.byte	-9
   186B EF                 6312 	.byte	-17
   186C FF                 6313 	.byte	-1
   186D 06                 6314 	.byte	6
   186E 04                 6315 	.byte	4
   186F 00                 6316 	.byte	0
   1870 F1                 6317 	.byte	-15
   1871 04                 6318 	.byte	4
   1872 FF                 6319 	.byte	-1
   1873 03                 6320 	.byte	3
   1874 0E                 6321 	.byte	14
   1875 FF                 6322 	.byte	-1
   1876 0F                 6323 	.byte	15
   1877 FB                 6324 	.byte	-5
   1878 FF                 6325 	.byte	-1
   1879 FD                 6326 	.byte	-3
   187A F3                 6327 	.byte	-13
   187B FF                 6328 	.byte	-1
   187C F1                 6329 	.byte	-15
   187D 04                 6330 	.byte	4
   187E 01                 6331 	.byte	1
                           6332 	.globl _height2FallingLeft6
   187F                    6333 _height2FallingLeft6:
   187F FF                 6334 	.byte	-1
   1880 0B                 6335 	.byte	11
   1881 0A                 6336 	.byte	10
   1882 FF                 6337 	.byte	-1
   1883 08                 6338 	.byte	8
   1884 FA                 6339 	.byte	-6
   1885 FF                 6340 	.byte	-1
   1886 F5                 6341 	.byte	-11
   1887 F7                 6342 	.byte	-9
   1888 FF                 6343 	.byte	-1
   1889 F8                 6344 	.byte	-8
   188A 05                 6345 	.byte	5
   188B FF                 6346 	.byte	-1
   188C 0E                 6347 	.byte	14
   188D ED                 6348 	.byte	-19
   188E 00                 6349 	.byte	0
   188F FD                 6350 	.byte	-3
   1890 1D                 6351 	.byte	29
   1891 FF                 6352 	.byte	-1
   1892 0E                 6353 	.byte	14
   1893 ED                 6354 	.byte	-19
   1894 00                 6355 	.byte	0
   1895 FA                 6356 	.byte	-6
   1896 0D                 6357 	.byte	13
   1897 FF                 6358 	.byte	-1
   1898 0E                 6359 	.byte	14
   1899 ED                 6360 	.byte	-19
   189A 00                 6361 	.byte	0
   189B E7                 6362 	.byte	-25
   189C 0A                 6363 	.byte	10
   189D FF                 6364 	.byte	-1
   189E 0E                 6365 	.byte	14
   189F EC                 6366 	.byte	-20
   18A0 00                 6367 	.byte	0
   18A1 F8                 6368 	.byte	-8
   18A2 06                 6369 	.byte	6
   18A3 FF                 6370 	.byte	-1
   18A4 0B                 6371 	.byte	11
   18A5 0A                 6372 	.byte	10
   18A6 FF                 6373 	.byte	-1
   18A7 08                 6374 	.byte	8
   18A8 FA                 6375 	.byte	-6
   18A9 FF                 6376 	.byte	-1
   18AA F5                 6377 	.byte	-11
   18AB F6                 6378 	.byte	-10
   18AC FF                 6379 	.byte	-1
   18AD F8                 6380 	.byte	-8
   18AE 06                 6381 	.byte	6
   18AF 01                 6382 	.byte	1
                           6383 	.globl _height2RisingRight6
   18B0                    6384 _height2RisingRight6:
   18B0 00                 6385 	.byte	0
   18B1 06                 6386 	.byte	6
   18B2 1C                 6387 	.byte	28
   18B3 FF                 6388 	.byte	-1
   18B4 0A                 6389 	.byte	10
   18B5 0B                 6390 	.byte	11
   18B6 FF                 6391 	.byte	-1
   18B7 08                 6392 	.byte	8
   18B8 FA                 6393 	.byte	-6
   18B9 FF                 6394 	.byte	-1
   18BA F6                 6395 	.byte	-10
   18BB F5                 6396 	.byte	-11
   18BC FF                 6397 	.byte	-1
   18BD F8                 6398 	.byte	-8
   18BE 06                 6399 	.byte	6
   18BF FF                 6400 	.byte	-1
   18C0 11                 6401 	.byte	17
   18C1 EF                 6402 	.byte	-17
   18C2 00                 6403 	.byte	0
   18C3 F9                 6404 	.byte	-7
   18C4 1C                 6405 	.byte	28
   18C5 FF                 6406 	.byte	-1
   18C6 11                 6407 	.byte	17
   18C7 EF                 6408 	.byte	-17
   18C8 00                 6409 	.byte	0
   18C9 F7                 6410 	.byte	-9
   18CA 0B                 6411 	.byte	11
   18CB FF                 6412 	.byte	-1
   18CC 11                 6413 	.byte	17
   18CD EF                 6414 	.byte	-17
   18CE 00                 6415 	.byte	0
   18CF E5                 6416 	.byte	-27
   18D0 06                 6417 	.byte	6
   18D1 FF                 6418 	.byte	-1
   18D2 11                 6419 	.byte	17
   18D3 EF                 6420 	.byte	-17
   18D4 00                 6421 	.byte	0
   18D5 F8                 6422 	.byte	-8
   18D6 06                 6423 	.byte	6
   18D7 FF                 6424 	.byte	-1
   18D8 0A                 6425 	.byte	10
   18D9 0B                 6426 	.byte	11
   18DA FF                 6427 	.byte	-1
   18DB 08                 6428 	.byte	8
   18DC FA                 6429 	.byte	-6
   18DD FF                 6430 	.byte	-1
   18DE F6                 6431 	.byte	-10
   18DF F5                 6432 	.byte	-11
   18E0 FF                 6433 	.byte	-1
   18E1 F8                 6434 	.byte	-8
   18E2 06                 6435 	.byte	6
   18E3 01                 6436 	.byte	1
                           6437 	.globl _height2FallingRight6
   18E4                    6438 _height2FallingRight6:
   18E4 00                 6439 	.byte	0
   18E5 0A                 6440 	.byte	10
   18E6 04                 6441 	.byte	4
   18E7 FF                 6442 	.byte	-1
   18E8 F9                 6443 	.byte	-7
   18E9 0A                 6444 	.byte	10
   18EA FF                 6445 	.byte	-1
   18EB 08                 6446 	.byte	8
   18EC FA                 6447 	.byte	-6
   18ED FF                 6448 	.byte	-1
   18EE 07                 6449 	.byte	7
   18EF F7                 6450 	.byte	-9
   18F0 FF                 6451 	.byte	-1
   18F1 F8                 6452 	.byte	-8
   18F2 05                 6453 	.byte	5
   18F3 FF                 6454 	.byte	-1
   18F4 17                 6455 	.byte	23
   18F5 14                 6456 	.byte	20
   18F6 00                 6457 	.byte	0
   18F7 E2                 6458 	.byte	-30
   18F8 F6                 6459 	.byte	-10
   18F9 FF                 6460 	.byte	-1
   18FA 17                 6461 	.byte	23
   18FB 14                 6462 	.byte	20
   18FC 00                 6463 	.byte	0
   18FD F1                 6464 	.byte	-15
   18FE E6                 6465 	.byte	-26
   18FF FF                 6466 	.byte	-1
   1900 17                 6467 	.byte	23
   1901 14                 6468 	.byte	20
   1902 00                 6469 	.byte	0
   1903 F0                 6470 	.byte	-16
   1904 E3                 6471 	.byte	-29
   1905 FF                 6472 	.byte	-1
   1906 17                 6473 	.byte	23
   1907 13                 6474 	.byte	19
   1908 00                 6475 	.byte	0
   1909 F8                 6476 	.byte	-8
   190A 06                 6477 	.byte	6
   190B FF                 6478 	.byte	-1
   190C F9                 6479 	.byte	-7
   190D 0A                 6480 	.byte	10
   190E FF                 6481 	.byte	-1
   190F 08                 6482 	.byte	8
   1910 FA                 6483 	.byte	-6
   1911 FF                 6484 	.byte	-1
   1912 07                 6485 	.byte	7
   1913 F6                 6486 	.byte	-10
   1914 FF                 6487 	.byte	-1
   1915 F8                 6488 	.byte	-8
   1916 06                 6489 	.byte	6
   1917 01                 6490 	.byte	1
                           6491 	.globl _height2RisingLeft6
   1918                    6492 _height2RisingLeft6:
   1918 00                 6493 	.byte	0
   1919 06                 6494 	.byte	6
   191A F6                 6495 	.byte	-10
   191B FF                 6496 	.byte	-1
   191C FA                 6497 	.byte	-6
   191D 0A                 6498 	.byte	10
   191E FF                 6499 	.byte	-1
   191F 08                 6500 	.byte	8
   1920 FB                 6501 	.byte	-5
   1921 FF                 6502 	.byte	-1
   1922 06                 6503 	.byte	6
   1923 F5                 6504 	.byte	-11
   1924 FF                 6505 	.byte	-1
   1925 F8                 6506 	.byte	-8
   1926 06                 6507 	.byte	6
   1927 FF                 6508 	.byte	-1
   1928 18                 6509 	.byte	24
   1929 10                 6510 	.byte	16
   192A 00                 6511 	.byte	0
   192B E2                 6512 	.byte	-30
   192C FA                 6513 	.byte	-6
   192D FF                 6514 	.byte	-1
   192E 18                 6515 	.byte	24
   192F 11                 6516 	.byte	17
   1930 00                 6517 	.byte	0
   1931 F0                 6518 	.byte	-16
   1932 EA                 6519 	.byte	-22
   1933 FF                 6520 	.byte	-1
   1934 18                 6521 	.byte	24
   1935 10                 6522 	.byte	16
   1936 00                 6523 	.byte	0
   1937 EE                 6524 	.byte	-18
   1938 E5                 6525 	.byte	-27
   1939 FF                 6526 	.byte	-1
   193A 18                 6527 	.byte	24
   193B 10                 6528 	.byte	16
   193C 00                 6529 	.byte	0
   193D F8                 6530 	.byte	-8
   193E 06                 6531 	.byte	6
   193F FF                 6532 	.byte	-1
   1940 FA                 6533 	.byte	-6
   1941 0B                 6534 	.byte	11
   1942 FF                 6535 	.byte	-1
   1943 08                 6536 	.byte	8
   1944 FA                 6537 	.byte	-6
   1945 FF                 6538 	.byte	-1
   1946 06                 6539 	.byte	6
   1947 F5                 6540 	.byte	-11
   1948 FF                 6541 	.byte	-1
   1949 F8                 6542 	.byte	-8
   194A 06                 6543 	.byte	6
   194B 01                 6544 	.byte	1
                           6545 	.globl _height2FallingBack6
   194C                    6546 _height2FallingBack6:
   194C 00                 6547 	.byte	0
   194D 0C                 6548 	.byte	12
   194E FF                 6549 	.byte	-1
   194F FF                 6550 	.byte	-1
   1950 03                 6551 	.byte	3
   1951 0D                 6552 	.byte	13
   1952 FF                 6553 	.byte	-1
   1953 FC                 6554 	.byte	-4
   1954 FC                 6555 	.byte	-4
   1955 FF                 6556 	.byte	-1
   1956 FD                 6557 	.byte	-3
   1957 F3                 6558 	.byte	-13
   1958 FF                 6559 	.byte	-1
   1959 04                 6560 	.byte	4
   195A 04                 6561 	.byte	4
   195B FF                 6562 	.byte	-1
   195C 1D                 6563 	.byte	29
   195D F8                 6564 	.byte	-8
   195E 00                 6565 	.byte	0
   195F E6                 6566 	.byte	-26
   1960 15                 6567 	.byte	21
   1961 FF                 6568 	.byte	-1
   1962 1D                 6569 	.byte	29
   1963 F8                 6570 	.byte	-8
   1964 00                 6571 	.byte	0
   1965 DF                 6572 	.byte	-33
   1966 04                 6573 	.byte	4
   1967 FF                 6574 	.byte	-1
   1968 1E                 6575 	.byte	30
   1969 F8                 6576 	.byte	-8
   196A 00                 6577 	.byte	0
   196B DF                 6578 	.byte	-33
   196C FB                 6579 	.byte	-5
   196D FF                 6580 	.byte	-1
   196E 1E                 6581 	.byte	30
   196F F8                 6582 	.byte	-8
   1970 00                 6583 	.byte	0
   1971 03                 6584 	.byte	3
   1972 04                 6585 	.byte	4
   1973 FF                 6586 	.byte	-1
   1974 03                 6587 	.byte	3
   1975 0D                 6588 	.byte	13
   1976 FF                 6589 	.byte	-1
   1977 FD                 6590 	.byte	-3
   1978 FC                 6591 	.byte	-4
   1979 FF                 6592 	.byte	-1
   197A FD                 6593 	.byte	-3
   197B F3                 6594 	.byte	-13
   197C FF                 6595 	.byte	-1
   197D 03                 6596 	.byte	3
   197E 04                 6597 	.byte	4
   197F 01                 6598 	.byte	1
                           6599 	.globl _height2RisingFront6
   1980                    6600 _height2RisingFront6:
   1980 00                 6601 	.byte	0
   1981 02                 6602 	.byte	2
   1982 05                 6603 	.byte	5
   1983 FF                 6604 	.byte	-1
   1984 03                 6605 	.byte	3
   1985 0E                 6606 	.byte	14
   1986 FF                 6607 	.byte	-1
   1987 FE                 6608 	.byte	-2
   1988 FB                 6609 	.byte	-5
   1989 FF                 6610 	.byte	-1
   198A FD                 6611 	.byte	-3
   198B F2                 6612 	.byte	-14
   198C FF                 6613 	.byte	-1
   198D 02                 6614 	.byte	2
   198E 05                 6615 	.byte	5
   198F FF                 6616 	.byte	-1
   1990 1E                 6617 	.byte	30
   1991 F9                 6618 	.byte	-7
   1992 00                 6619 	.byte	0
   1993 E5                 6620 	.byte	-27
   1994 15                 6621 	.byte	21
   1995 FF                 6622 	.byte	-1
   1996 1E                 6623 	.byte	30
   1997 F8                 6624 	.byte	-8
   1998 00                 6625 	.byte	0
   1999 E0                 6626 	.byte	-32
   199A 03                 6627 	.byte	3
   199B FF                 6628 	.byte	-1
   199C 1E                 6629 	.byte	30
   199D F9                 6630 	.byte	-7
   199E 00                 6631 	.byte	0
   199F DF                 6632 	.byte	-33
   19A0 F9                 6633 	.byte	-7
   19A1 FF                 6634 	.byte	-1
   19A2 1E                 6635 	.byte	30
   19A3 FA                 6636 	.byte	-6
   19A4 00                 6637 	.byte	0
   19A5 02                 6638 	.byte	2
   19A6 04                 6639 	.byte	4
   19A7 FF                 6640 	.byte	-1
   19A8 03                 6641 	.byte	3
   19A9 0D                 6642 	.byte	13
   19AA FF                 6643 	.byte	-1
   19AB FE                 6644 	.byte	-2
   19AC FC                 6645 	.byte	-4
   19AD FF                 6646 	.byte	-1
   19AE FD                 6647 	.byte	-3
   19AF F3                 6648 	.byte	-13
   19B0 FF                 6649 	.byte	-1
   19B1 02                 6650 	.byte	2
   19B2 04                 6651 	.byte	4
   19B3 01                 6652 	.byte	1
                           6653 	.globl _height2FallingFront6
   19B4                    6654 _height2FallingFront6:
   19B4 FF                 6655 	.byte	-1
   19B5 03                 6656 	.byte	3
   19B6 0E                 6657 	.byte	14
   19B7 FF                 6658 	.byte	-1
   19B8 0F                 6659 	.byte	15
   19B9 FC                 6660 	.byte	-4
   19BA FF                 6661 	.byte	-1
   19BB FD                 6662 	.byte	-3
   19BC F3                 6663 	.byte	-13
   19BD FF                 6664 	.byte	-1
   19BE F1                 6665 	.byte	-15
   19BF 03                 6666 	.byte	3
   19C0 FF                 6667 	.byte	-1
   19C1 07                 6668 	.byte	7
   19C2 08                 6669 	.byte	8
   19C3 00                 6670 	.byte	0
   19C4 FC                 6671 	.byte	-4
   19C5 06                 6672 	.byte	6
   19C6 FF                 6673 	.byte	-1
   19C7 07                 6674 	.byte	7
   19C8 08                 6675 	.byte	8
   19C9 00                 6676 	.byte	0
   19CA 08                 6677 	.byte	8
   19CB F4                 6678 	.byte	-12
   19CC FF                 6679 	.byte	-1
   19CD 07                 6680 	.byte	7
   19CE 08                 6681 	.byte	8
   19CF 00                 6682 	.byte	0
   19D0 F6                 6683 	.byte	-10
   19D1 EB                 6684 	.byte	-21
   19D2 FF                 6685 	.byte	-1
   19D3 07                 6686 	.byte	7
   19D4 07                 6687 	.byte	7
   19D5 00                 6688 	.byte	0
   19D6 F1                 6689 	.byte	-15
   19D7 04                 6690 	.byte	4
   19D8 FF                 6691 	.byte	-1
   19D9 03                 6692 	.byte	3
   19DA 0E                 6693 	.byte	14
   19DB FF                 6694 	.byte	-1
   19DC 0F                 6695 	.byte	15
   19DD FC                 6696 	.byte	-4
   19DE FF                 6697 	.byte	-1
   19DF FD                 6698 	.byte	-3
   19E0 F2                 6699 	.byte	-14
   19E1 FF                 6700 	.byte	-1
   19E2 F1                 6701 	.byte	-15
   19E3 04                 6702 	.byte	4
   19E4 01                 6703 	.byte	1
                           6704 	.globl _height2RisingBack6
   19E5                    6705 _height2RisingBack6:
   19E5 00                 6706 	.byte	0
   19E6 10                 6707 	.byte	16
   19E7 F5                 6708 	.byte	-11
   19E8 FF                 6709 	.byte	-1
   19E9 03                 6710 	.byte	3
   19EA 0D                 6711 	.byte	13
   19EB FF                 6712 	.byte	-1
   19EC 0E                 6713 	.byte	14
   19ED FC                 6714 	.byte	-4
   19EE FF                 6715 	.byte	-1
   19EF FD                 6716 	.byte	-3
   19F0 F2                 6717 	.byte	-14
   19F1 FF                 6718 	.byte	-1
   19F2 F2                 6719 	.byte	-14
   19F3 05                 6720 	.byte	5
   19F4 FF                 6721 	.byte	-1
   19F5 0B                 6722 	.byte	11
   19F6 07                 6723 	.byte	7
   19F7 00                 6724 	.byte	0
   19F8 F8                 6725 	.byte	-8
   19F9 06                 6726 	.byte	6
   19FA FF                 6727 	.byte	-1
   19FB 0B                 6728 	.byte	11
   19FC 07                 6729 	.byte	7
   19FD 00                 6730 	.byte	0
   19FE 03                 6731 	.byte	3
   19FF F5                 6732 	.byte	-11
   1A00 FF                 6733 	.byte	-1
   1A01 0B                 6734 	.byte	11
   1A02 07                 6735 	.byte	7
   1A03 00                 6736 	.byte	0
   1A04 F2                 6737 	.byte	-14
   1A05 EB                 6738 	.byte	-21
   1A06 FF                 6739 	.byte	-1
   1A07 0B                 6740 	.byte	11
   1A08 08                 6741 	.byte	8
   1A09 00                 6742 	.byte	0
   1A0A F2                 6743 	.byte	-14
   1A0B 04                 6744 	.byte	4
   1A0C FF                 6745 	.byte	-1
   1A0D 03                 6746 	.byte	3
   1A0E 0D                 6747 	.byte	13
   1A0F FF                 6748 	.byte	-1
   1A10 0E                 6749 	.byte	14
   1A11 FC                 6750 	.byte	-4
   1A12 FF                 6751 	.byte	-1
   1A13 FD                 6752 	.byte	-3
   1A14 F3                 6753 	.byte	-13
   1A15 FF                 6754 	.byte	-1
   1A16 F2                 6755 	.byte	-14
   1A17 04                 6756 	.byte	4
   1A18 01                 6757 	.byte	1
                           6758 	.globl _depth2RollingLeft6
   1A19                    6759 _depth2RollingLeft6:
   1A19 FF                 6760 	.byte	-1
   1A1A 0B                 6761 	.byte	11
   1A1B 0A                 6762 	.byte	10
   1A1C FF                 6763 	.byte	-1
   1A1D 10                 6764 	.byte	16
   1A1E F5                 6765 	.byte	-11
   1A1F FF                 6766 	.byte	-1
   1A20 F5                 6767 	.byte	-11
   1A21 F6                 6768 	.byte	-10
   1A22 FF                 6769 	.byte	-1
   1A23 F0                 6770 	.byte	-16
   1A24 0B                 6771 	.byte	11
   1A25 FF                 6772 	.byte	-1
   1A26 07                 6773 	.byte	7
   1A27 F7                 6774 	.byte	-9
   1A28 00                 6775 	.byte	0
   1A29 04                 6776 	.byte	4
   1A2A 13                 6777 	.byte	19
   1A2B FF                 6778 	.byte	-1
   1A2C 07                 6779 	.byte	7
   1A2D F6                 6780 	.byte	-10
   1A2E 00                 6781 	.byte	0
   1A2F 09                 6782 	.byte	9
   1A30 FF                 6783 	.byte	-1
   1A31 FF                 6784 	.byte	-1
   1A32 07                 6785 	.byte	7
   1A33 F6                 6786 	.byte	-10
   1A34 00                 6787 	.byte	0
   1A35 EE                 6788 	.byte	-18
   1A36 00                 6789 	.byte	0
   1A37 FF                 6790 	.byte	-1
   1A38 07                 6791 	.byte	7
   1A39 F6                 6792 	.byte	-10
   1A3A 00                 6793 	.byte	0
   1A3B F0                 6794 	.byte	-16
   1A3C 0C                 6795 	.byte	12
   1A3D FF                 6796 	.byte	-1
   1A3E 0B                 6797 	.byte	11
   1A3F 09                 6798 	.byte	9
   1A40 FF                 6799 	.byte	-1
   1A41 10                 6800 	.byte	16
   1A42 F5                 6801 	.byte	-11
   1A43 FF                 6802 	.byte	-1
   1A44 F5                 6803 	.byte	-11
   1A45 F6                 6804 	.byte	-10
   1A46 FF                 6805 	.byte	-1
   1A47 F0                 6806 	.byte	-16
   1A48 0C                 6807 	.byte	12
   1A49 01                 6808 	.byte	1
                           6809 	.globl _depth2RollingRight6
   1A4A                    6810 _depth2RollingRight6:
   1A4A 00                 6811 	.byte	0
   1A4B 0A                 6812 	.byte	10
   1A4C 04                 6813 	.byte	4
   1A4D FF                 6814 	.byte	-1
   1A4E F9                 6815 	.byte	-7
   1A4F 0A                 6816 	.byte	10
   1A50 FF                 6817 	.byte	-1
   1A51 10                 6818 	.byte	16
   1A52 F4                 6819 	.byte	-12
   1A53 FF                 6820 	.byte	-1
   1A54 07                 6821 	.byte	7
   1A55 F7                 6822 	.byte	-9
   1A56 FF                 6823 	.byte	-1
   1A57 F0                 6824 	.byte	-16
   1A58 0B                 6825 	.byte	11
   1A59 FF                 6826 	.byte	-1
   1A5A 0B                 6827 	.byte	11
   1A5B 0A                 6828 	.byte	10
   1A5C 00                 6829 	.byte	0
   1A5D EE                 6830 	.byte	-18
   1A5E 00                 6831 	.byte	0
   1A5F FF                 6832 	.byte	-1
   1A60 0B                 6833 	.byte	11
   1A61 0A                 6834 	.byte	10
   1A62 00                 6835 	.byte	0
   1A63 05                 6836 	.byte	5
   1A64 EA                 6837 	.byte	-22
   1A65 FF                 6838 	.byte	-1
   1A66 0B                 6839 	.byte	11
   1A67 0A                 6840 	.byte	10
   1A68 00                 6841 	.byte	0
   1A69 FC                 6842 	.byte	-4
   1A6A ED                 6843 	.byte	-19
   1A6B FF                 6844 	.byte	-1
   1A6C 0B                 6845 	.byte	11
   1A6D 09                 6846 	.byte	9
   1A6E 00                 6847 	.byte	0
   1A6F F0                 6848 	.byte	-16
   1A70 0C                 6849 	.byte	12
   1A71 FF                 6850 	.byte	-1
   1A72 F9                 6851 	.byte	-7
   1A73 0A                 6852 	.byte	10
   1A74 FF                 6853 	.byte	-1
   1A75 10                 6854 	.byte	16
   1A76 F4                 6855 	.byte	-12
   1A77 FF                 6856 	.byte	-1
   1A78 07                 6857 	.byte	7
   1A79 F6                 6858 	.byte	-10
   1A7A FF                 6859 	.byte	-1
   1A7B F0                 6860 	.byte	-16
   1A7C 0C                 6861 	.byte	12
   1A7D 01                 6862 	.byte	1
                           6863 	.globl _width2RollingFront6
   1A7E                    6864 _width2RollingFront6:
   1A7E FF                 6865 	.byte	-1
   1A7F 06                 6866 	.byte	6
   1A80 1C                 6867 	.byte	28
   1A81 FF                 6868 	.byte	-1
   1A82 0F                 6869 	.byte	15
   1A83 FC                 6870 	.byte	-4
   1A84 FF                 6871 	.byte	-1
   1A85 FA                 6872 	.byte	-6
   1A86 E5                 6873 	.byte	-27
   1A87 FF                 6874 	.byte	-1
   1A88 F1                 6875 	.byte	-15
   1A89 03                 6876 	.byte	3
   1A8A FF                 6877 	.byte	-1
   1A8B 04                 6878 	.byte	4
   1A8C 04                 6879 	.byte	4
   1A8D 00                 6880 	.byte	0
   1A8E 02                 6881 	.byte	2
   1A8F 18                 6882 	.byte	24
   1A90 FF                 6883 	.byte	-1
   1A91 04                 6884 	.byte	4
   1A92 04                 6885 	.byte	4
   1A93 00                 6886 	.byte	0
   1A94 0B                 6887 	.byte	11
   1A95 F8                 6888 	.byte	-8
   1A96 FF                 6889 	.byte	-1
   1A97 03                 6890 	.byte	3
   1A98 04                 6891 	.byte	4
   1A99 00                 6892 	.byte	0
   1A9A F7                 6893 	.byte	-9
   1A9B E1                 6894 	.byte	-31
   1A9C FF                 6895 	.byte	-1
   1A9D 03                 6896 	.byte	3
   1A9E 03                 6897 	.byte	3
   1A9F 00                 6898 	.byte	0
   1AA0 F2                 6899 	.byte	-14
   1AA1 04                 6900 	.byte	4
   1AA2 FF                 6901 	.byte	-1
   1AA3 06                 6902 	.byte	6
   1AA4 1C                 6903 	.byte	28
   1AA5 FF                 6904 	.byte	-1
   1AA6 0E                 6905 	.byte	14
   1AA7 FC                 6906 	.byte	-4
   1AA8 FF                 6907 	.byte	-1
   1AA9 FA                 6908 	.byte	-6
   1AAA E4                 6909 	.byte	-28
   1AAB FF                 6910 	.byte	-1
   1AAC F2                 6911 	.byte	-14
   1AAD 04                 6912 	.byte	4
   1AAE 01                 6913 	.byte	1
                           6914 	.globl _width2RollingBack6
   1AAF                    6915 _width2RollingBack6:
   1AAF 00                 6916 	.byte	0
   1AB0 0C                 6917 	.byte	12
   1AB1 FF                 6918 	.byte	-1
   1AB2 FF                 6919 	.byte	-1
   1AB3 06                 6920 	.byte	6
   1AB4 1B                 6921 	.byte	27
   1AB5 FF                 6922 	.byte	-1
   1AB6 FC                 6923 	.byte	-4
   1AB7 FC                 6924 	.byte	-4
   1AB8 FF                 6925 	.byte	-1
   1AB9 FA                 6926 	.byte	-6
   1ABA E5                 6927 	.byte	-27
   1ABB FF                 6928 	.byte	-1
   1ABC 04                 6929 	.byte	4
   1ABD 04                 6930 	.byte	4
   1ABE FF                 6931 	.byte	-1
   1ABF 0E                 6932 	.byte	14
   1AC0 FC                 6933 	.byte	-4
   1AC1 00                 6934 	.byte	0
   1AC2 F8                 6935 	.byte	-8
   1AC3 1F                 6936 	.byte	31
   1AC4 FF                 6937 	.byte	-1
   1AC5 0E                 6938 	.byte	14
   1AC6 FC                 6939 	.byte	-4
   1AC7 00                 6940 	.byte	0
   1AC8 EE                 6941 	.byte	-18
   1AC9 00                 6942 	.byte	0
   1ACA FF                 6943 	.byte	-1
   1ACB 0F                 6944 	.byte	15
   1ACC FC                 6945 	.byte	-4
   1ACD 00                 6946 	.byte	0
   1ACE EB                 6947 	.byte	-21
   1ACF E9                 6948 	.byte	-23
   1AD0 FF                 6949 	.byte	-1
   1AD1 0F                 6950 	.byte	15
   1AD2 FC                 6951 	.byte	-4
   1AD3 00                 6952 	.byte	0
   1AD4 03                 6953 	.byte	3
   1AD5 04                 6954 	.byte	4
   1AD6 FF                 6955 	.byte	-1
   1AD7 06                 6956 	.byte	6
   1AD8 1B                 6957 	.byte	27
   1AD9 FF                 6958 	.byte	-1
   1ADA FD                 6959 	.byte	-3
   1ADB FC                 6960 	.byte	-4
   1ADC FF                 6961 	.byte	-1
   1ADD FA                 6962 	.byte	-6
   1ADE E5                 6963 	.byte	-27
   1ADF FF                 6964 	.byte	-1
   1AE0 03                 6965 	.byte	3
   1AE1 04                 6966 	.byte	4
   1AE2 01                 6967 	.byte	1
                           6968 	.globl _height1FallingLeft6
   1AE3                    6969 _height1FallingLeft6:
   1AE3 FF                 6970 	.byte	-1
   1AE4 0B                 6971 	.byte	11
   1AE5 0A                 6972 	.byte	10
   1AE6 FF                 6973 	.byte	-1
   1AE7 08                 6974 	.byte	8
   1AE8 FA                 6975 	.byte	-6
   1AE9 FF                 6976 	.byte	-1
   1AEA F5                 6977 	.byte	-11
   1AEB F7                 6978 	.byte	-9
   1AEC FF                 6979 	.byte	-1
   1AED F8                 6980 	.byte	-8
   1AEE 05                 6981 	.byte	5
   1AEF FF                 6982 	.byte	-1
   1AF0 07                 6983 	.byte	7
   1AF1 F7                 6984 	.byte	-9
   1AF2 00                 6985 	.byte	0
   1AF3 04                 6986 	.byte	4
   1AF4 13                 6987 	.byte	19
   1AF5 FF                 6988 	.byte	-1
   1AF6 07                 6989 	.byte	7
   1AF7 F6                 6990 	.byte	-10
   1AF8 00                 6991 	.byte	0
   1AF9 01                 6992 	.byte	1
   1AFA 04                 6993 	.byte	4
   1AFB FF                 6994 	.byte	-1
   1AFC 07                 6995 	.byte	7
   1AFD F7                 6996 	.byte	-9
   1AFE 00                 6997 	.byte	0
   1AFF EE                 6998 	.byte	-18
   1B00 00                 6999 	.byte	0
   1B01 FF                 7000 	.byte	-1
   1B02 07                 7001 	.byte	7
   1B03 F6                 7002 	.byte	-10
   1B04 00                 7003 	.byte	0
   1B05 F8                 7004 	.byte	-8
   1B06 06                 7005 	.byte	6
   1B07 FF                 7006 	.byte	-1
   1B08 0B                 7007 	.byte	11
   1B09 09                 7008 	.byte	9
   1B0A FF                 7009 	.byte	-1
   1B0B 08                 7010 	.byte	8
   1B0C FB                 7011 	.byte	-5
   1B0D FF                 7012 	.byte	-1
   1B0E F5                 7013 	.byte	-11
   1B0F F6                 7014 	.byte	-10
   1B10 FF                 7015 	.byte	-1
   1B11 F8                 7016 	.byte	-8
   1B12 06                 7017 	.byte	6
   1B13 01                 7018 	.byte	1
                           7019 	.globl _height1FallingRight6
   1B14                    7020 _height1FallingRight6:
   1B14 00                 7021 	.byte	0
   1B15 0A                 7022 	.byte	10
   1B16 04                 7023 	.byte	4
   1B17 FF                 7024 	.byte	-1
   1B18 F9                 7025 	.byte	-7
   1B19 0A                 7026 	.byte	10
   1B1A FF                 7027 	.byte	-1
   1B1B 08                 7028 	.byte	8
   1B1C FA                 7029 	.byte	-6
   1B1D FF                 7030 	.byte	-1
   1B1E 07                 7031 	.byte	7
   1B1F F7                 7032 	.byte	-9
   1B20 FF                 7033 	.byte	-1
   1B21 F8                 7034 	.byte	-8
   1B22 05                 7035 	.byte	5
   1B23 FF                 7036 	.byte	-1
   1B24 0B                 7037 	.byte	11
   1B25 0A                 7038 	.byte	10
   1B26 00                 7039 	.byte	0
   1B27 EE                 7040 	.byte	-18
   1B28 00                 7041 	.byte	0
   1B29 FF                 7042 	.byte	-1
   1B2A 0B                 7043 	.byte	11
   1B2B 0A                 7044 	.byte	10
   1B2C 00                 7045 	.byte	0
   1B2D FD                 7046 	.byte	-3
   1B2E F0                 7047 	.byte	-16
   1B2F FF                 7048 	.byte	-1
   1B30 0B                 7049 	.byte	11
   1B31 0A                 7050 	.byte	10
   1B32 00                 7051 	.byte	0
   1B33 FC                 7052 	.byte	-4
   1B34 ED                 7053 	.byte	-19
   1B35 FF                 7054 	.byte	-1
   1B36 0B                 7055 	.byte	11
   1B37 09                 7056 	.byte	9
   1B38 00                 7057 	.byte	0
   1B39 F8                 7058 	.byte	-8
   1B3A 06                 7059 	.byte	6
   1B3B FF                 7060 	.byte	-1
   1B3C F9                 7061 	.byte	-7
   1B3D 0A                 7062 	.byte	10
   1B3E FF                 7063 	.byte	-1
   1B3F 08                 7064 	.byte	8
   1B40 FA                 7065 	.byte	-6
   1B41 FF                 7066 	.byte	-1
   1B42 07                 7067 	.byte	7
   1B43 F6                 7068 	.byte	-10
   1B44 FF                 7069 	.byte	-1
   1B45 F8                 7070 	.byte	-8
   1B46 06                 7071 	.byte	6
   1B47 01                 7072 	.byte	1
                           7073 	.globl _height1FallingBack6
   1B48                    7074 _height1FallingBack6:
   1B48 00                 7075 	.byte	0
   1B49 0C                 7076 	.byte	12
   1B4A FF                 7077 	.byte	-1
   1B4B FF                 7078 	.byte	-1
   1B4C 03                 7079 	.byte	3
   1B4D 0D                 7080 	.byte	13
   1B4E FF                 7081 	.byte	-1
   1B4F FC                 7082 	.byte	-4
   1B50 FC                 7083 	.byte	-4
   1B51 FF                 7084 	.byte	-1
   1B52 FD                 7085 	.byte	-3
   1B53 F3                 7086 	.byte	-13
   1B54 FF                 7087 	.byte	-1
   1B55 04                 7088 	.byte	4
   1B56 04                 7089 	.byte	4
   1B57 FF                 7090 	.byte	-1
   1B58 0E                 7091 	.byte	14
   1B59 FC                 7092 	.byte	-4
   1B5A 00                 7093 	.byte	0
   1B5B F5                 7094 	.byte	-11
   1B5C 11                 7095 	.byte	17
   1B5D FF                 7096 	.byte	-1
   1B5E 0E                 7097 	.byte	14
   1B5F FC                 7098 	.byte	-4
   1B60 00                 7099 	.byte	0
   1B61 EE                 7100 	.byte	-18
   1B62 00                 7101 	.byte	0
   1B63 FF                 7102 	.byte	-1
   1B64 0F                 7103 	.byte	15
   1B65 FC                 7104 	.byte	-4
   1B66 00                 7105 	.byte	0
   1B67 EE                 7106 	.byte	-18
   1B68 F7                 7107 	.byte	-9
   1B69 FF                 7108 	.byte	-1
   1B6A 0F                 7109 	.byte	15
   1B6B FC                 7110 	.byte	-4
   1B6C 00                 7111 	.byte	0
   1B6D 03                 7112 	.byte	3
   1B6E 04                 7113 	.byte	4
   1B6F FF                 7114 	.byte	-1
   1B70 03                 7115 	.byte	3
   1B71 0D                 7116 	.byte	13
   1B72 FF                 7117 	.byte	-1
   1B73 FD                 7118 	.byte	-3
   1B74 FC                 7119 	.byte	-4
   1B75 FF                 7120 	.byte	-1
   1B76 FD                 7121 	.byte	-3
   1B77 F3                 7122 	.byte	-13
   1B78 FF                 7123 	.byte	-1
   1B79 03                 7124 	.byte	3
   1B7A 04                 7125 	.byte	4
   1B7B 01                 7126 	.byte	1
                           7127 	.globl _height1FallingFront6
   1B7C                    7128 _height1FallingFront6:
   1B7C FF                 7129 	.byte	-1
   1B7D 03                 7130 	.byte	3
   1B7E 0E                 7131 	.byte	14
   1B7F FF                 7132 	.byte	-1
   1B80 0F                 7133 	.byte	15
   1B81 FC                 7134 	.byte	-4
   1B82 FF                 7135 	.byte	-1
   1B83 FD                 7136 	.byte	-3
   1B84 F3                 7137 	.byte	-13
   1B85 FF                 7138 	.byte	-1
   1B86 F1                 7139 	.byte	-15
   1B87 03                 7140 	.byte	3
   1B88 FF                 7141 	.byte	-1
   1B89 04                 7142 	.byte	4
   1B8A 04                 7143 	.byte	4
   1B8B 00                 7144 	.byte	0
   1B8C FF                 7145 	.byte	-1
   1B8D 0A                 7146 	.byte	10
   1B8E FF                 7147 	.byte	-1
   1B8F 04                 7148 	.byte	4
   1B90 04                 7149 	.byte	4
   1B91 00                 7150 	.byte	0
   1B92 0B                 7151 	.byte	11
   1B93 F8                 7152 	.byte	-8
   1B94 FF                 7153 	.byte	-1
   1B95 03                 7154 	.byte	3
   1B96 04                 7155 	.byte	4
   1B97 00                 7156 	.byte	0
   1B98 FA                 7157 	.byte	-6
   1B99 EF                 7158 	.byte	-17
   1B9A FF                 7159 	.byte	-1
   1B9B 03                 7160 	.byte	3
   1B9C 03                 7161 	.byte	3
   1B9D 00                 7162 	.byte	0
   1B9E F2                 7163 	.byte	-14
   1B9F 04                 7164 	.byte	4
   1BA0 FF                 7165 	.byte	-1
   1BA1 03                 7166 	.byte	3
   1BA2 0E                 7167 	.byte	14
   1BA3 FF                 7168 	.byte	-1
   1BA4 0E                 7169 	.byte	14
   1BA5 FC                 7170 	.byte	-4
   1BA6 FF                 7171 	.byte	-1
   1BA7 FD                 7172 	.byte	-3
   1BA8 F2                 7173 	.byte	-14
   1BA9 FF                 7174 	.byte	-1
   1BAA F2                 7175 	.byte	-14
   1BAB 04                 7176 	.byte	4
   1BAC 01                 7177 	.byte	1
                           7178 	.globl _height2FallingLeft7
   1BAD                    7179 _height2FallingLeft7:
   1BAD FF                 7180 	.byte	-1
   1BAE 0C                 7181 	.byte	12
   1BAF 09                 7182 	.byte	9
   1BB0 FF                 7183 	.byte	-1
   1BB1 08                 7184 	.byte	8
   1BB2 FA                 7185 	.byte	-6
   1BB3 FF                 7186 	.byte	-1
   1BB4 F4                 7187 	.byte	-12
   1BB5 F8                 7188 	.byte	-8
   1BB6 FF                 7189 	.byte	-1
   1BB7 F8                 7190 	.byte	-8
   1BB8 05                 7191 	.byte	5
   1BB9 FF                 7192 	.byte	-1
   1BBA 0B                 7193 	.byte	11
   1BBB EB                 7194 	.byte	-21
   1BBC 00                 7195 	.byte	0
   1BBD 01                 7196 	.byte	1
   1BBE 1E                 7197 	.byte	30
   1BBF FF                 7198 	.byte	-1
   1BC0 0B                 7199 	.byte	11
   1BC1 EA                 7200 	.byte	-22
   1BC2 00                 7201 	.byte	0
   1BC3 FD                 7202 	.byte	-3
   1BC4 10                 7203 	.byte	16
   1BC5 FF                 7204 	.byte	-1
   1BC6 0B                 7205 	.byte	11
   1BC7 EA                 7206 	.byte	-22
   1BC8 00                 7207 	.byte	0
   1BC9 E9                 7208 	.byte	-23
   1BCA 0E                 7209 	.byte	14
   1BCB FF                 7210 	.byte	-1
   1BCC 0B                 7211 	.byte	11
   1BCD EA                 7212 	.byte	-22
   1BCE 00                 7213 	.byte	0
   1BCF F8                 7214 	.byte	-8
   1BD0 06                 7215 	.byte	6
   1BD1 FF                 7216 	.byte	-1
   1BD2 0C                 7217 	.byte	12
   1BD3 08                 7218 	.byte	8
   1BD4 FF                 7219 	.byte	-1
   1BD5 08                 7220 	.byte	8
   1BD6 FA                 7221 	.byte	-6
   1BD7 FF                 7222 	.byte	-1
   1BD8 F4                 7223 	.byte	-12
   1BD9 F8                 7224 	.byte	-8
   1BDA FF                 7225 	.byte	-1
   1BDB F8                 7226 	.byte	-8
   1BDC 06                 7227 	.byte	6
   1BDD 01                 7228 	.byte	1
                           7229 	.globl _height2RisingRight7
   1BDE                    7230 _height2RisingRight7:
   1BDE 00                 7231 	.byte	0
   1BDF 06                 7232 	.byte	6
   1BE0 1C                 7233 	.byte	28
   1BE1 FF                 7234 	.byte	-1
   1BE2 09                 7235 	.byte	9
   1BE3 0C                 7236 	.byte	12
   1BE4 FF                 7237 	.byte	-1
   1BE5 08                 7238 	.byte	8
   1BE6 FA                 7239 	.byte	-6
   1BE7 FF                 7240 	.byte	-1
   1BE8 F7                 7241 	.byte	-9
   1BE9 F4                 7242 	.byte	-12
   1BEA FF                 7243 	.byte	-1
   1BEB F8                 7244 	.byte	-8
   1BEC 06                 7245 	.byte	6
   1BED FF                 7246 	.byte	-1
   1BEE 14                 7247 	.byte	20
   1BEF F2                 7248 	.byte	-14
   1BF0 00                 7249 	.byte	0
   1BF1 F5                 7250 	.byte	-11
   1BF2 1A                 7251 	.byte	26
   1BF3 FF                 7252 	.byte	-1
   1BF4 14                 7253 	.byte	20
   1BF5 F2                 7254 	.byte	-14
   1BF6 00                 7255 	.byte	0
   1BF7 F4                 7256 	.byte	-12
   1BF8 08                 7257 	.byte	8
   1BF9 FF                 7258 	.byte	-1
   1BFA 14                 7259 	.byte	20
   1BFB F2                 7260 	.byte	-14
   1BFC 00                 7261 	.byte	0
   1BFD E3                 7262 	.byte	-29
   1BFE 02                 7263 	.byte	2
   1BFF FF                 7264 	.byte	-1
   1C00 14                 7265 	.byte	20
   1C01 F2                 7266 	.byte	-14
   1C02 00                 7267 	.byte	0
   1C03 F8                 7268 	.byte	-8
   1C04 06                 7269 	.byte	6
   1C05 FF                 7270 	.byte	-1
   1C06 09                 7271 	.byte	9
   1C07 0C                 7272 	.byte	12
   1C08 FF                 7273 	.byte	-1
   1C09 08                 7274 	.byte	8
   1C0A FA                 7275 	.byte	-6
   1C0B FF                 7276 	.byte	-1
   1C0C F7                 7277 	.byte	-9
   1C0D F4                 7278 	.byte	-12
   1C0E FF                 7279 	.byte	-1
   1C0F F8                 7280 	.byte	-8
   1C10 06                 7281 	.byte	6
   1C11 01                 7282 	.byte	1
                           7283 	.globl _height2FallingRight7
   1C12                    7284 _height2FallingRight7:
   1C12 00                 7285 	.byte	0
   1C13 0B                 7286 	.byte	11
   1C14 05                 7287 	.byte	5
   1C15 FF                 7288 	.byte	-1
   1C16 F8                 7289 	.byte	-8
   1C17 09                 7290 	.byte	9
   1C18 FF                 7291 	.byte	-1
   1C19 08                 7292 	.byte	8
   1C1A FA                 7293 	.byte	-6
   1C1B FF                 7294 	.byte	-1
   1C1C 08                 7295 	.byte	8
   1C1D F8                 7296 	.byte	-8
   1C1E FF                 7297 	.byte	-1
   1C1F F8                 7298 	.byte	-8
   1C20 05                 7299 	.byte	5
   1C21 FF                 7300 	.byte	-1
   1C22 15                 7301 	.byte	21
   1C23 17                 7302 	.byte	23
   1C24 00                 7303 	.byte	0
   1C25 E3                 7304 	.byte	-29
   1C26 F2                 7305 	.byte	-14
   1C27 FF                 7306 	.byte	-1
   1C28 15                 7307 	.byte	21
   1C29 16                 7308 	.byte	22
   1C2A 00                 7309 	.byte	0
   1C2B F3                 7310 	.byte	-13
   1C2C E4                 7311 	.byte	-28
   1C2D FF                 7312 	.byte	-1
   1C2E 15                 7313 	.byte	21
   1C2F 16                 7314 	.byte	22
   1C30 00                 7315 	.byte	0
   1C31 F3                 7316 	.byte	-13
   1C32 E2                 7317 	.byte	-30
   1C33 FF                 7318 	.byte	-1
   1C34 15                 7319 	.byte	21
   1C35 16                 7320 	.byte	22
   1C36 00                 7321 	.byte	0
   1C37 F8                 7322 	.byte	-8
   1C38 06                 7323 	.byte	6
   1C39 FF                 7324 	.byte	-1
   1C3A F8                 7325 	.byte	-8
   1C3B 08                 7326 	.byte	8
   1C3C FF                 7327 	.byte	-1
   1C3D 08                 7328 	.byte	8
   1C3E FA                 7329 	.byte	-6
   1C3F FF                 7330 	.byte	-1
   1C40 08                 7331 	.byte	8
   1C41 F8                 7332 	.byte	-8
   1C42 FF                 7333 	.byte	-1
   1C43 F8                 7334 	.byte	-8
   1C44 06                 7335 	.byte	6
   1C45 01                 7336 	.byte	1
                           7337 	.globl _height2RisingLeft7
   1C46                    7338 _height2RisingLeft7:
   1C46 00                 7339 	.byte	0
   1C47 04                 7340 	.byte	4
   1C48 F5                 7341 	.byte	-11
   1C49 FF                 7342 	.byte	-1
   1C4A FC                 7343 	.byte	-4
   1C4B 0B                 7344 	.byte	11
   1C4C FF                 7345 	.byte	-1
   1C4D 08                 7346 	.byte	8
   1C4E FB                 7347 	.byte	-5
   1C4F FF                 7348 	.byte	-1
   1C50 04                 7349 	.byte	4
   1C51 F4                 7350 	.byte	-12
   1C52 FF                 7351 	.byte	-1
   1C53 F8                 7352 	.byte	-8
   1C54 06                 7353 	.byte	6
   1C55 FF                 7354 	.byte	-1
   1C56 19                 7355 	.byte	25
   1C57 0D                 7356 	.byte	13
   1C58 00                 7357 	.byte	0
   1C59 E3                 7358 	.byte	-29
   1C5A FE                 7359 	.byte	-2
   1C5B FF                 7360 	.byte	-1
   1C5C 1A                 7361 	.byte	26
   1C5D 0E                 7362 	.byte	14
   1C5E 00                 7363 	.byte	0
   1C5F EE                 7364 	.byte	-18
   1C60 ED                 7365 	.byte	-19
   1C61 FF                 7366 	.byte	-1
   1C62 1A                 7367 	.byte	26
   1C63 0D                 7368 	.byte	13
   1C64 00                 7369 	.byte	0
   1C65 EA                 7370 	.byte	-22
   1C66 E7                 7371 	.byte	-25
   1C67 FF                 7372 	.byte	-1
   1C68 19                 7373 	.byte	25
   1C69 0E                 7374 	.byte	14
   1C6A 00                 7375 	.byte	0
   1C6B F8                 7376 	.byte	-8
   1C6C 05                 7377 	.byte	5
   1C6D FF                 7378 	.byte	-1
   1C6E FD                 7379 	.byte	-3
   1C6F 0C                 7380 	.byte	12
   1C70 FF                 7381 	.byte	-1
   1C71 08                 7382 	.byte	8
   1C72 FA                 7383 	.byte	-6
   1C73 FF                 7384 	.byte	-1
   1C74 03                 7385 	.byte	3
   1C75 F5                 7386 	.byte	-11
   1C76 FF                 7387 	.byte	-1
   1C77 F8                 7388 	.byte	-8
   1C78 05                 7389 	.byte	5
   1C79 01                 7390 	.byte	1
                           7391 	.globl _height2FallingBack7
   1C7A                    7392 _height2FallingBack7:
   1C7A 00                 7393 	.byte	0
   1C7B 0D                 7394 	.byte	13
   1C7C FF                 7395 	.byte	-1
   1C7D FF                 7396 	.byte	-1
   1C7E 03                 7397 	.byte	3
   1C7F 0D                 7398 	.byte	13
   1C80 FF                 7399 	.byte	-1
   1C81 FB                 7400 	.byte	-5
   1C82 FC                 7401 	.byte	-4
   1C83 FF                 7402 	.byte	-1
   1C84 FD                 7403 	.byte	-3
   1C85 F3                 7404 	.byte	-13
   1C86 FF                 7405 	.byte	-1
   1C87 05                 7406 	.byte	5
   1C88 04                 7407 	.byte	4
   1C89 FF                 7408 	.byte	-1
   1C8A 1D                 7409 	.byte	29
   1C8B F6                 7410 	.byte	-10
   1C8C 00                 7411 	.byte	0
   1C8D E6                 7412 	.byte	-26
   1C8E 17                 7413 	.byte	23
   1C8F FF                 7414 	.byte	-1
   1C90 1D                 7415 	.byte	29
   1C91 F6                 7416 	.byte	-10
   1C92 00                 7417 	.byte	0
   1C93 DE                 7418 	.byte	-34
   1C94 06                 7419 	.byte	6
   1C95 FF                 7420 	.byte	-1
   1C96 1D                 7421 	.byte	29
   1C97 F7                 7422 	.byte	-9
   1C98 00                 7423 	.byte	0
   1C99 E0                 7424 	.byte	-32
   1C9A FC                 7425 	.byte	-4
   1C9B FF                 7426 	.byte	-1
   1C9C 1D                 7427 	.byte	29
   1C9D F6                 7428 	.byte	-10
   1C9E 00                 7429 	.byte	0
   1C9F 05                 7430 	.byte	5
   1CA0 04                 7431 	.byte	4
   1CA1 FF                 7432 	.byte	-1
   1CA2 03                 7433 	.byte	3
   1CA3 0D                 7434 	.byte	13
   1CA4 FF                 7435 	.byte	-1
   1CA5 FB                 7436 	.byte	-5
   1CA6 FD                 7437 	.byte	-3
   1CA7 FF                 7438 	.byte	-1
   1CA8 FD                 7439 	.byte	-3
   1CA9 F2                 7440 	.byte	-14
   1CAA FF                 7441 	.byte	-1
   1CAB 05                 7442 	.byte	5
   1CAC 04                 7443 	.byte	4
   1CAD 01                 7444 	.byte	1
                           7445 	.globl _height2RisingFront7
   1CAE                    7446 _height2RisingFront7:
   1CAE 00                 7447 	.byte	0
   1CAF 00                 7448 	.byte	0
   1CB0 05                 7449 	.byte	5
   1CB1 FF                 7450 	.byte	-1
   1CB2 03                 7451 	.byte	3
   1CB3 0E                 7452 	.byte	14
   1CB4 FF                 7453 	.byte	-1
   1CB5 00                 7454 	.byte	0
   1CB6 FB                 7455 	.byte	-5
   1CB7 FF                 7456 	.byte	-1
   1CB8 FD                 7457 	.byte	-3
   1CB9 F2                 7458 	.byte	-14
   1CBA FF                 7459 	.byte	-1
   1CBB 00                 7460 	.byte	0
   1CBC 05                 7461 	.byte	5
   1CBD FF                 7462 	.byte	-1
   1CBE 1E                 7463 	.byte	30
   1CBF FB                 7464 	.byte	-5
   1CC0 00                 7465 	.byte	0
   1CC1 E5                 7466 	.byte	-27
   1CC2 13                 7467 	.byte	19
   1CC3 FF                 7468 	.byte	-1
   1CC4 1E                 7469 	.byte	30
   1CC5 FA                 7470 	.byte	-6
   1CC6 00                 7471 	.byte	0
   1CC7 E2                 7472 	.byte	-30
   1CC8 01                 7473 	.byte	1
   1CC9 FF                 7474 	.byte	-1
   1CCA 1F                 7475 	.byte	31
   1CCB FA                 7476 	.byte	-6
   1CCC 00                 7477 	.byte	0
   1CCD DE                 7478 	.byte	-34
   1CCE F8                 7479 	.byte	-8
   1CCF FF                 7480 	.byte	-1
   1CD0 1F                 7481 	.byte	31
   1CD1 FB                 7482 	.byte	-5
   1CD2 00                 7483 	.byte	0
   1CD3 FF                 7484 	.byte	-1
   1CD4 05                 7485 	.byte	5
   1CD5 FF                 7486 	.byte	-1
   1CD6 03                 7487 	.byte	3
   1CD7 0D                 7488 	.byte	13
   1CD8 FF                 7489 	.byte	-1
   1CD9 01                 7490 	.byte	1
   1CDA FB                 7491 	.byte	-5
   1CDB FF                 7492 	.byte	-1
   1CDC FD                 7493 	.byte	-3
   1CDD F3                 7494 	.byte	-13
   1CDE FF                 7495 	.byte	-1
   1CDF FF                 7496 	.byte	-1
   1CE0 05                 7497 	.byte	5
   1CE1 01                 7498 	.byte	1
                           7499 	.globl _height2FallingFront7
   1CE2                    7500 _height2FallingFront7:
   1CE2 FF                 7501 	.byte	-1
   1CE3 03                 7502 	.byte	3
   1CE4 0E                 7503 	.byte	14
   1CE5 FF                 7504 	.byte	-1
   1CE6 0F                 7505 	.byte	15
   1CE7 FC                 7506 	.byte	-4
   1CE8 FF                 7507 	.byte	-1
   1CE9 FD                 7508 	.byte	-3
   1CEA F3                 7509 	.byte	-13
   1CEB FF                 7510 	.byte	-1
   1CEC F1                 7511 	.byte	-15
   1CED 03                 7512 	.byte	3
   1CEE FF                 7513 	.byte	-1
   1CEF 03                 7514 	.byte	3
   1CF0 0A                 7515 	.byte	10
   1CF1 00                 7516 	.byte	0
   1CF2 00                 7517 	.byte	0
   1CF3 04                 7518 	.byte	4
   1CF4 FF                 7519 	.byte	-1
   1CF5 03                 7520 	.byte	3
   1CF6 0A                 7521 	.byte	10
   1CF7 00                 7522 	.byte	0
   1CF8 0C                 7523 	.byte	12
   1CF9 F2                 7524 	.byte	-14
   1CFA FF                 7525 	.byte	-1
   1CFB 03                 7526 	.byte	3
   1CFC 0A                 7527 	.byte	10
   1CFD 00                 7528 	.byte	0
   1CFE FA                 7529 	.byte	-6
   1CFF E9                 7530 	.byte	-23
   1D00 FF                 7531 	.byte	-1
   1D01 03                 7532 	.byte	3
   1D02 09                 7533 	.byte	9
   1D03 00                 7534 	.byte	0
   1D04 F1                 7535 	.byte	-15
   1D05 04                 7536 	.byte	4
   1D06 FF                 7537 	.byte	-1
   1D07 03                 7538 	.byte	3
   1D08 0E                 7539 	.byte	14
   1D09 FF                 7540 	.byte	-1
   1D0A 0F                 7541 	.byte	15
   1D0B FC                 7542 	.byte	-4
   1D0C FF                 7543 	.byte	-1
   1D0D FD                 7544 	.byte	-3
   1D0E F2                 7545 	.byte	-14
   1D0F FF                 7546 	.byte	-1
   1D10 F1                 7547 	.byte	-15
   1D11 04                 7548 	.byte	4
   1D12 01                 7549 	.byte	1
                           7550 	.globl _height2RisingBack7
   1D13                    7551 _height2RisingBack7:
   1D13 00                 7552 	.byte	0
   1D14 10                 7553 	.byte	16
   1D15 F5                 7554 	.byte	-11
   1D16 FF                 7555 	.byte	-1
   1D17 03                 7556 	.byte	3
   1D18 0D                 7557 	.byte	13
   1D19 FF                 7558 	.byte	-1
   1D1A 0D                 7559 	.byte	13
   1D1B FC                 7560 	.byte	-4
   1D1C FF                 7561 	.byte	-1
   1D1D FD                 7562 	.byte	-3
   1D1E F2                 7563 	.byte	-14
   1D1F FF                 7564 	.byte	-1
   1D20 F3                 7565 	.byte	-13
   1D21 05                 7566 	.byte	5
   1D22 FF                 7567 	.byte	-1
   1D23 0F                 7568 	.byte	15
   1D24 06                 7569 	.byte	6
   1D25 00                 7570 	.byte	0
   1D26 F4                 7571 	.byte	-12
   1D27 07                 7572 	.byte	7
   1D28 FF                 7573 	.byte	-1
   1D29 0F                 7574 	.byte	15
   1D2A 06                 7575 	.byte	6
   1D2B 00                 7576 	.byte	0
   1D2C FE                 7577 	.byte	-2
   1D2D F6                 7578 	.byte	-10
   1D2E FF                 7579 	.byte	-1
   1D2F 0F                 7580 	.byte	15
   1D30 05                 7581 	.byte	5
   1D31 00                 7582 	.byte	0
   1D32 EE                 7583 	.byte	-18
   1D33 ED                 7584 	.byte	-19
   1D34 FF                 7585 	.byte	-1
   1D35 0F                 7586 	.byte	15
   1D36 06                 7587 	.byte	6
   1D37 00                 7588 	.byte	0
   1D38 F3                 7589 	.byte	-13
   1D39 05                 7590 	.byte	5
   1D3A FF                 7591 	.byte	-1
   1D3B 03                 7592 	.byte	3
   1D3C 0D                 7593 	.byte	13
   1D3D FF                 7594 	.byte	-1
   1D3E 0D                 7595 	.byte	13
   1D3F FB                 7596 	.byte	-5
   1D40 FF                 7597 	.byte	-1
   1D41 FD                 7598 	.byte	-3
   1D42 F3                 7599 	.byte	-13
   1D43 FF                 7600 	.byte	-1
   1D44 F3                 7601 	.byte	-13
   1D45 05                 7602 	.byte	5
   1D46 01                 7603 	.byte	1
                           7604 	.globl _depth2RollingLeft7
   1D47                    7605 _depth2RollingLeft7:
   1D47 FF                 7606 	.byte	-1
   1D48 0C                 7607 	.byte	12
   1D49 09                 7608 	.byte	9
   1D4A FF                 7609 	.byte	-1
   1D4B 10                 7610 	.byte	16
   1D4C F5                 7611 	.byte	-11
   1D4D FF                 7612 	.byte	-1
   1D4E F4                 7613 	.byte	-12
   1D4F F7                 7614 	.byte	-9
   1D50 FF                 7615 	.byte	-1
   1D51 F0                 7616 	.byte	-16
   1D52 0B                 7617 	.byte	11
   1D53 FF                 7618 	.byte	-1
   1D54 06                 7619 	.byte	6
   1D55 F6                 7620 	.byte	-10
   1D56 00                 7621 	.byte	0
   1D57 06                 7622 	.byte	6
   1D58 13                 7623 	.byte	19
   1D59 FF                 7624 	.byte	-1
   1D5A 06                 7625 	.byte	6
   1D5B F5                 7626 	.byte	-11
   1D5C 00                 7627 	.byte	0
   1D5D 0A                 7628 	.byte	10
   1D5E 00                 7629 	.byte	0
   1D5F FF                 7630 	.byte	-1
   1D60 06                 7631 	.byte	6
   1D61 F4                 7632 	.byte	-12
   1D62 00                 7633 	.byte	0
   1D63 EE                 7634 	.byte	-18
   1D64 03                 7635 	.byte	3
   1D65 FF                 7636 	.byte	-1
   1D66 06                 7637 	.byte	6
   1D67 F5                 7638 	.byte	-11
   1D68 00                 7639 	.byte	0
   1D69 F0                 7640 	.byte	-16
   1D6A 0C                 7641 	.byte	12
   1D6B FF                 7642 	.byte	-1
   1D6C 0C                 7643 	.byte	12
   1D6D 08                 7644 	.byte	8
   1D6E FF                 7645 	.byte	-1
   1D6F 10                 7646 	.byte	16
   1D70 F4                 7647 	.byte	-12
   1D71 FF                 7648 	.byte	-1
   1D72 F4                 7649 	.byte	-12
   1D73 F8                 7650 	.byte	-8
   1D74 FF                 7651 	.byte	-1
   1D75 F0                 7652 	.byte	-16
   1D76 0C                 7653 	.byte	12
   1D77 01                 7654 	.byte	1
                           7655 	.globl _depth2RollingRight7
   1D78                    7656 _depth2RollingRight7:
   1D78 00                 7657 	.byte	0
   1D79 0B                 7658 	.byte	11
   1D7A 05                 7659 	.byte	5
   1D7B FF                 7660 	.byte	-1
   1D7C F8                 7661 	.byte	-8
   1D7D 09                 7662 	.byte	9
   1D7E FF                 7663 	.byte	-1
   1D7F 10                 7664 	.byte	16
   1D80 F4                 7665 	.byte	-12
   1D81 FF                 7666 	.byte	-1
   1D82 08                 7667 	.byte	8
   1D83 F8                 7668 	.byte	-8
   1D84 FF                 7669 	.byte	-1
   1D85 F0                 7670 	.byte	-16
   1D86 0B                 7671 	.byte	11
   1D87 FF                 7672 	.byte	-1
   1D88 0B                 7673 	.byte	11
   1D89 0C                 7674 	.byte	12
   1D8A 00                 7675 	.byte	0
   1D8B ED                 7676 	.byte	-19
   1D8C FD                 7677 	.byte	-3
   1D8D FF                 7678 	.byte	-1
   1D8E 0A                 7679 	.byte	10
   1D8F 0B                 7680 	.byte	11
   1D90 00                 7681 	.byte	0
   1D91 06                 7682 	.byte	6
   1D92 E9                 7683 	.byte	-23
   1D93 FF                 7684 	.byte	-1
   1D94 0A                 7685 	.byte	10
   1D95 0B                 7686 	.byte	11
   1D96 00                 7687 	.byte	0
   1D97 FE                 7688 	.byte	-2
   1D98 ED                 7689 	.byte	-19
   1D99 FF                 7690 	.byte	-1
   1D9A 0B                 7691 	.byte	11
   1D9B 0B                 7692 	.byte	11
   1D9C 00                 7693 	.byte	0
   1D9D F0                 7694 	.byte	-16
   1D9E 0C                 7695 	.byte	12
   1D9F FF                 7696 	.byte	-1
   1DA0 F7                 7697 	.byte	-9
   1DA1 08                 7698 	.byte	8
   1DA2 FF                 7699 	.byte	-1
   1DA3 10                 7700 	.byte	16
   1DA4 F4                 7701 	.byte	-12
   1DA5 FF                 7702 	.byte	-1
   1DA6 09                 7703 	.byte	9
   1DA7 F8                 7704 	.byte	-8
   1DA8 FF                 7705 	.byte	-1
   1DA9 F0                 7706 	.byte	-16
   1DAA 0C                 7707 	.byte	12
   1DAB 01                 7708 	.byte	1
                           7709 	.globl _width2RollingFront7
   1DAC                    7710 _width2RollingFront7:
   1DAC FF                 7711 	.byte	-1
   1DAD 06                 7712 	.byte	6
   1DAE 1C                 7713 	.byte	28
   1DAF FF                 7714 	.byte	-1
   1DB0 0F                 7715 	.byte	15
   1DB1 FC                 7716 	.byte	-4
   1DB2 FF                 7717 	.byte	-1
   1DB3 FA                 7718 	.byte	-6
   1DB4 E5                 7719 	.byte	-27
   1DB5 FF                 7720 	.byte	-1
   1DB6 F1                 7721 	.byte	-15
   1DB7 03                 7722 	.byte	3
   1DB8 FF                 7723 	.byte	-1
   1DB9 02                 7724 	.byte	2
   1DBA 05                 7725 	.byte	5
   1DBB 00                 7726 	.byte	0
   1DBC 04                 7727 	.byte	4
   1DBD 17                 7728 	.byte	23
   1DBE FF                 7729 	.byte	-1
   1DBF 02                 7730 	.byte	2
   1DC0 05                 7731 	.byte	5
   1DC1 00                 7732 	.byte	0
   1DC2 0D                 7733 	.byte	13
   1DC3 F7                 7734 	.byte	-9
   1DC4 FF                 7735 	.byte	-1
   1DC5 02                 7736 	.byte	2
   1DC6 05                 7737 	.byte	5
   1DC7 00                 7738 	.byte	0
   1DC8 F8                 7739 	.byte	-8
   1DC9 E0                 7740 	.byte	-32
   1DCA FF                 7741 	.byte	-1
   1DCB 02                 7742 	.byte	2
   1DCC 04                 7743 	.byte	4
   1DCD 00                 7744 	.byte	0
   1DCE F1                 7745 	.byte	-15
   1DCF 04                 7746 	.byte	4
   1DD0 FF                 7747 	.byte	-1
   1DD1 06                 7748 	.byte	6
   1DD2 1C                 7749 	.byte	28
   1DD3 FF                 7750 	.byte	-1
   1DD4 0F                 7751 	.byte	15
   1DD5 FC                 7752 	.byte	-4
   1DD6 FF                 7753 	.byte	-1
   1DD7 FA                 7754 	.byte	-6
   1DD8 E4                 7755 	.byte	-28
   1DD9 FF                 7756 	.byte	-1
   1DDA F1                 7757 	.byte	-15
   1DDB 04                 7758 	.byte	4
   1DDC 01                 7759 	.byte	1
                           7760 	.globl _width2RollingBack7
   1DDD                    7761 _width2RollingBack7:
   1DDD 00                 7762 	.byte	0
   1DDE 0D                 7763 	.byte	13
   1DDF FF                 7764 	.byte	-1
   1DE0 FF                 7765 	.byte	-1
   1DE1 06                 7766 	.byte	6
   1DE2 1B                 7767 	.byte	27
   1DE3 FF                 7768 	.byte	-1
   1DE4 FB                 7769 	.byte	-5
   1DE5 FC                 7770 	.byte	-4
   1DE6 FF                 7771 	.byte	-1
   1DE7 FA                 7772 	.byte	-6
   1DE8 E5                 7773 	.byte	-27
   1DE9 FF                 7774 	.byte	-1
   1DEA 05                 7775 	.byte	5
   1DEB 04                 7776 	.byte	4
   1DEC FF                 7777 	.byte	-1
   1DED 0F                 7778 	.byte	15
   1DEE FB                 7779 	.byte	-5
   1DEF 00                 7780 	.byte	0
   1DF0 F7                 7781 	.byte	-9
   1DF1 20                 7782 	.byte	32
   1DF2 FF                 7783 	.byte	-1
   1DF3 0F                 7784 	.byte	15
   1DF4 FB                 7785 	.byte	-5
   1DF5 00                 7786 	.byte	0
   1DF6 EC                 7787 	.byte	-20
   1DF7 01                 7788 	.byte	1
   1DF8 FF                 7789 	.byte	-1
   1DF9 0E                 7790 	.byte	14
   1DFA FB                 7791 	.byte	-5
   1DFB 00                 7792 	.byte	0
   1DFC EC                 7793 	.byte	-20
   1DFD EA                 7794 	.byte	-22
   1DFE FF                 7795 	.byte	-1
   1DFF 0E                 7796 	.byte	14
   1E00 FB                 7797 	.byte	-5
   1E01 00                 7798 	.byte	0
   1E02 06                 7799 	.byte	6
   1E03 04                 7800 	.byte	4
   1E04 FF                 7801 	.byte	-1
   1E05 06                 7802 	.byte	6
   1E06 1B                 7803 	.byte	27
   1E07 FF                 7804 	.byte	-1
   1E08 FA                 7805 	.byte	-6
   1E09 FC                 7806 	.byte	-4
   1E0A FF                 7807 	.byte	-1
   1E0B FA                 7808 	.byte	-6
   1E0C E5                 7809 	.byte	-27
   1E0D FF                 7810 	.byte	-1
   1E0E 06                 7811 	.byte	6
   1E0F 04                 7812 	.byte	4
   1E10 01                 7813 	.byte	1
                           7814 	.globl _height1FallingLeft7
   1E11                    7815 _height1FallingLeft7:
   1E11 FF                 7816 	.byte	-1
   1E12 0C                 7817 	.byte	12
   1E13 09                 7818 	.byte	9
   1E14 FF                 7819 	.byte	-1
   1E15 08                 7820 	.byte	8
   1E16 FA                 7821 	.byte	-6
   1E17 FF                 7822 	.byte	-1
   1E18 F4                 7823 	.byte	-12
   1E19 F8                 7824 	.byte	-8
   1E1A FF                 7825 	.byte	-1
   1E1B F8                 7826 	.byte	-8
   1E1C 05                 7827 	.byte	5
   1E1D FF                 7828 	.byte	-1
   1E1E 06                 7829 	.byte	6
   1E1F F6                 7830 	.byte	-10
   1E20 00                 7831 	.byte	0
   1E21 06                 7832 	.byte	6
   1E22 13                 7833 	.byte	19
   1E23 FF                 7834 	.byte	-1
   1E24 06                 7835 	.byte	6
   1E25 F5                 7836 	.byte	-11
   1E26 00                 7837 	.byte	0
   1E27 02                 7838 	.byte	2
   1E28 05                 7839 	.byte	5
   1E29 FF                 7840 	.byte	-1
   1E2A 06                 7841 	.byte	6
   1E2B F5                 7842 	.byte	-11
   1E2C 00                 7843 	.byte	0
   1E2D EE                 7844 	.byte	-18
   1E2E 03                 7845 	.byte	3
   1E2F FF                 7846 	.byte	-1
   1E30 06                 7847 	.byte	6
   1E31 F5                 7848 	.byte	-11
   1E32 00                 7849 	.byte	0
   1E33 F8                 7850 	.byte	-8
   1E34 06                 7851 	.byte	6
   1E35 FF                 7852 	.byte	-1
   1E36 0C                 7853 	.byte	12
   1E37 08                 7854 	.byte	8
   1E38 FF                 7855 	.byte	-1
   1E39 08                 7856 	.byte	8
   1E3A FA                 7857 	.byte	-6
   1E3B FF                 7858 	.byte	-1
   1E3C F4                 7859 	.byte	-12
   1E3D F8                 7860 	.byte	-8
   1E3E FF                 7861 	.byte	-1
   1E3F F8                 7862 	.byte	-8
   1E40 06                 7863 	.byte	6
   1E41 01                 7864 	.byte	1
                           7865 	.globl _height1FallingRight7
   1E42                    7866 _height1FallingRight7:
   1E42 00                 7867 	.byte	0
   1E43 0B                 7868 	.byte	11
   1E44 05                 7869 	.byte	5
   1E45 FF                 7870 	.byte	-1
   1E46 F8                 7871 	.byte	-8
   1E47 09                 7872 	.byte	9
   1E48 FF                 7873 	.byte	-1
   1E49 08                 7874 	.byte	8
   1E4A FA                 7875 	.byte	-6
   1E4B FF                 7876 	.byte	-1
   1E4C 08                 7877 	.byte	8
   1E4D F8                 7878 	.byte	-8
   1E4E FF                 7879 	.byte	-1
   1E4F F8                 7880 	.byte	-8
   1E50 05                 7881 	.byte	5
   1E51 FF                 7882 	.byte	-1
   1E52 0B                 7883 	.byte	11
   1E53 0C                 7884 	.byte	12
   1E54 00                 7885 	.byte	0
   1E55 ED                 7886 	.byte	-19
   1E56 FD                 7887 	.byte	-3
   1E57 FF                 7888 	.byte	-1
   1E58 0A                 7889 	.byte	10
   1E59 0B                 7890 	.byte	11
   1E5A 00                 7891 	.byte	0
   1E5B FE                 7892 	.byte	-2
   1E5C EF                 7893 	.byte	-17
   1E5D FF                 7894 	.byte	-1
   1E5E 0A                 7895 	.byte	10
   1E5F 0B                 7896 	.byte	11
   1E60 00                 7897 	.byte	0
   1E61 FE                 7898 	.byte	-2
   1E62 ED                 7899 	.byte	-19
   1E63 FF                 7900 	.byte	-1
   1E64 0B                 7901 	.byte	11
   1E65 0B                 7902 	.byte	11
   1E66 00                 7903 	.byte	0
   1E67 F8                 7904 	.byte	-8
   1E68 06                 7905 	.byte	6
   1E69 FF                 7906 	.byte	-1
   1E6A F7                 7907 	.byte	-9
   1E6B 08                 7908 	.byte	8
   1E6C FF                 7909 	.byte	-1
   1E6D 08                 7910 	.byte	8
   1E6E FA                 7911 	.byte	-6
   1E6F FF                 7912 	.byte	-1
   1E70 09                 7913 	.byte	9
   1E71 F8                 7914 	.byte	-8
   1E72 FF                 7915 	.byte	-1
   1E73 F8                 7916 	.byte	-8
   1E74 06                 7917 	.byte	6
   1E75 01                 7918 	.byte	1
                           7919 	.globl _height1FallingBack7
   1E76                    7920 _height1FallingBack7:
   1E76 00                 7921 	.byte	0
   1E77 0D                 7922 	.byte	13
   1E78 FF                 7923 	.byte	-1
   1E79 FF                 7924 	.byte	-1
   1E7A 03                 7925 	.byte	3
   1E7B 0D                 7926 	.byte	13
   1E7C FF                 7927 	.byte	-1
   1E7D FB                 7928 	.byte	-5
   1E7E FC                 7929 	.byte	-4
   1E7F FF                 7930 	.byte	-1
   1E80 FD                 7931 	.byte	-3
   1E81 F3                 7932 	.byte	-13
   1E82 FF                 7933 	.byte	-1
   1E83 05                 7934 	.byte	5
   1E84 04                 7935 	.byte	4
   1E85 FF                 7936 	.byte	-1
   1E86 0F                 7937 	.byte	15
   1E87 FB                 7938 	.byte	-5
   1E88 00                 7939 	.byte	0
   1E89 F4                 7940 	.byte	-12
   1E8A 12                 7941 	.byte	18
   1E8B FF                 7942 	.byte	-1
   1E8C 0F                 7943 	.byte	15
   1E8D FB                 7944 	.byte	-5
   1E8E 00                 7945 	.byte	0
   1E8F EC                 7946 	.byte	-20
   1E90 01                 7947 	.byte	1
   1E91 FF                 7948 	.byte	-1
   1E92 0E                 7949 	.byte	14
   1E93 FB                 7950 	.byte	-5
   1E94 00                 7951 	.byte	0
   1E95 EF                 7952 	.byte	-17
   1E96 F8                 7953 	.byte	-8
   1E97 FF                 7954 	.byte	-1
   1E98 0E                 7955 	.byte	14
   1E99 FB                 7956 	.byte	-5
   1E9A 00                 7957 	.byte	0
   1E9B 06                 7958 	.byte	6
   1E9C 04                 7959 	.byte	4
   1E9D FF                 7960 	.byte	-1
   1E9E 03                 7961 	.byte	3
   1E9F 0D                 7962 	.byte	13
   1EA0 FF                 7963 	.byte	-1
   1EA1 FA                 7964 	.byte	-6
   1EA2 FC                 7965 	.byte	-4
   1EA3 FF                 7966 	.byte	-1
   1EA4 FD                 7967 	.byte	-3
   1EA5 F3                 7968 	.byte	-13
   1EA6 FF                 7969 	.byte	-1
   1EA7 06                 7970 	.byte	6
   1EA8 04                 7971 	.byte	4
   1EA9 01                 7972 	.byte	1
                           7973 	.globl _height1FallingFront7
   1EAA                    7974 _height1FallingFront7:
   1EAA FF                 7975 	.byte	-1
   1EAB 03                 7976 	.byte	3
   1EAC 0E                 7977 	.byte	14
   1EAD FF                 7978 	.byte	-1
   1EAE 0F                 7979 	.byte	15
   1EAF FC                 7980 	.byte	-4
   1EB0 FF                 7981 	.byte	-1
   1EB1 FD                 7982 	.byte	-3
   1EB2 F3                 7983 	.byte	-13
   1EB3 FF                 7984 	.byte	-1
   1EB4 F1                 7985 	.byte	-15
   1EB5 03                 7986 	.byte	3
   1EB6 FF                 7987 	.byte	-1
   1EB7 02                 7988 	.byte	2
   1EB8 05                 7989 	.byte	5
   1EB9 00                 7990 	.byte	0
   1EBA 01                 7991 	.byte	1
   1EBB 09                 7992 	.byte	9
   1EBC FF                 7993 	.byte	-1
   1EBD 02                 7994 	.byte	2
   1EBE 05                 7995 	.byte	5
   1EBF 00                 7996 	.byte	0
   1EC0 0D                 7997 	.byte	13
   1EC1 F7                 7998 	.byte	-9
   1EC2 FF                 7999 	.byte	-1
   1EC3 02                 8000 	.byte	2
   1EC4 05                 8001 	.byte	5
   1EC5 00                 8002 	.byte	0
   1EC6 FB                 8003 	.byte	-5
   1EC7 EE                 8004 	.byte	-18
   1EC8 FF                 8005 	.byte	-1
   1EC9 02                 8006 	.byte	2
   1ECA 04                 8007 	.byte	4
   1ECB 00                 8008 	.byte	0
   1ECC F1                 8009 	.byte	-15
   1ECD 04                 8010 	.byte	4
   1ECE FF                 8011 	.byte	-1
   1ECF 03                 8012 	.byte	3
   1ED0 0E                 8013 	.byte	14
   1ED1 FF                 8014 	.byte	-1
   1ED2 0F                 8015 	.byte	15
   1ED3 FC                 8016 	.byte	-4
   1ED4 FF                 8017 	.byte	-1
   1ED5 FD                 8018 	.byte	-3
   1ED6 F2                 8019 	.byte	-14
   1ED7 FF                 8020 	.byte	-1
   1ED8 F1                 8021 	.byte	-15
   1ED9 04                 8022 	.byte	4
   1EDA 01                 8023 	.byte	1
                           8024 	.globl _height2FallingLeft8
   1EDB                    8025 _height2FallingLeft8:
   1EDB FF                 8026 	.byte	-1
   1EDC 0D                 8027 	.byte	13
   1EDD 07                 8028 	.byte	7
   1EDE FF                 8029 	.byte	-1
   1EDF 08                 8030 	.byte	8
   1EE0 FA                 8031 	.byte	-6
   1EE1 FF                 8032 	.byte	-1
   1EE2 F3                 8033 	.byte	-13
   1EE3 FA                 8034 	.byte	-6
   1EE4 FF                 8035 	.byte	-1
   1EE5 F8                 8036 	.byte	-8
   1EE6 05                 8037 	.byte	5
   1EE7 FF                 8038 	.byte	-1
   1EE8 08                 8039 	.byte	8
   1EE9 E9                 8040 	.byte	-23
   1EEA 00                 8041 	.byte	0
   1EEB 05                 8042 	.byte	5
   1EEC 1E                 8043 	.byte	30
   1EED FF                 8044 	.byte	-1
   1EEE 08                 8045 	.byte	8
   1EEF E9                 8046 	.byte	-23
   1EF0 00                 8047 	.byte	0
   1EF1 00                 8048 	.byte	0
   1EF2 11                 8049 	.byte	17
   1EF3 FF                 8050 	.byte	-1
   1EF4 08                 8051 	.byte	8
   1EF5 E9                 8052 	.byte	-23
   1EF6 00                 8053 	.byte	0
   1EF7 EB                 8054 	.byte	-21
   1EF8 11                 8055 	.byte	17
   1EF9 FF                 8056 	.byte	-1
   1EFA 08                 8057 	.byte	8
   1EFB E8                 8058 	.byte	-24
   1EFC 00                 8059 	.byte	0
   1EFD F8                 8060 	.byte	-8
   1EFE 06                 8061 	.byte	6
   1EFF FF                 8062 	.byte	-1
   1F00 0D                 8063 	.byte	13
   1F01 07                 8064 	.byte	7
   1F02 FF                 8065 	.byte	-1
   1F03 08                 8066 	.byte	8
   1F04 FA                 8067 	.byte	-6
   1F05 FF                 8068 	.byte	-1
   1F06 F3                 8069 	.byte	-13
   1F07 F9                 8070 	.byte	-7
   1F08 FF                 8071 	.byte	-1
   1F09 F8                 8072 	.byte	-8
   1F0A 06                 8073 	.byte	6
   1F0B 01                 8074 	.byte	1
                           8075 	.globl _height2RisingRight8
   1F0C                    8076 _height2RisingRight8:
   1F0C 00                 8077 	.byte	0
   1F0D 06                 8078 	.byte	6
   1F0E 1C                 8079 	.byte	28
   1F0F FF                 8080 	.byte	-1
   1F10 08                 8081 	.byte	8
   1F11 0D                 8082 	.byte	13
   1F12 FF                 8083 	.byte	-1
   1F13 08                 8084 	.byte	8
   1F14 FA                 8085 	.byte	-6
   1F15 FF                 8086 	.byte	-1
   1F16 F8                 8087 	.byte	-8
   1F17 F3                 8088 	.byte	-13
   1F18 FF                 8089 	.byte	-1
   1F19 F8                 8090 	.byte	-8
   1F1A 06                 8091 	.byte	6
   1F1B FF                 8092 	.byte	-1
   1F1C 16                 8093 	.byte	22
   1F1D F5                 8094 	.byte	-11
   1F1E 00                 8095 	.byte	0
   1F1F F2                 8096 	.byte	-14
   1F20 18                 8097 	.byte	24
   1F21 FF                 8098 	.byte	-1
   1F22 15                 8099 	.byte	21
   1F23 F5                 8100 	.byte	-11
   1F24 00                 8101 	.byte	0
   1F25 F3                 8102 	.byte	-13
   1F26 05                 8103 	.byte	5
   1F27 FF                 8104 	.byte	-1
   1F28 15                 8105 	.byte	21
   1F29 F5                 8106 	.byte	-11
   1F2A 00                 8107 	.byte	0
   1F2B E3                 8108 	.byte	-29
   1F2C FE                 8109 	.byte	-2
   1F2D FF                 8110 	.byte	-1
   1F2E 16                 8111 	.byte	22
   1F2F F5                 8112 	.byte	-11
   1F30 00                 8113 	.byte	0
   1F31 F8                 8114 	.byte	-8
   1F32 06                 8115 	.byte	6
   1F33 FF                 8116 	.byte	-1
   1F34 07                 8117 	.byte	7
   1F35 0D                 8118 	.byte	13
   1F36 FF                 8119 	.byte	-1
   1F37 08                 8120 	.byte	8
   1F38 FA                 8121 	.byte	-6
   1F39 FF                 8122 	.byte	-1
   1F3A F9                 8123 	.byte	-7
   1F3B F3                 8124 	.byte	-13
   1F3C FF                 8125 	.byte	-1
   1F3D F8                 8126 	.byte	-8
   1F3E 06                 8127 	.byte	6
   1F3F 01                 8128 	.byte	1
                           8129 	.globl _height2FallingRight8
   1F40                    8130 _height2FallingRight8:
   1F40 00                 8131 	.byte	0
   1F41 0D                 8132 	.byte	13
   1F42 07                 8133 	.byte	7
   1F43 FF                 8134 	.byte	-1
   1F44 F6                 8135 	.byte	-10
   1F45 07                 8136 	.byte	7
   1F46 FF                 8137 	.byte	-1
   1F47 08                 8138 	.byte	8
   1F48 FA                 8139 	.byte	-6
   1F49 FF                 8140 	.byte	-1
   1F4A 0A                 8141 	.byte	10
   1F4B F9                 8142 	.byte	-7
   1F4C FF                 8143 	.byte	-1
   1F4D F8                 8144 	.byte	-8
   1F4E 06                 8145 	.byte	6
   1F4F FF                 8146 	.byte	-1
   1F50 12                 8147 	.byte	18
   1F51 18                 8148 	.byte	24
   1F52 00                 8149 	.byte	0
   1F53 E4                 8150 	.byte	-28
   1F54 EF                 8151 	.byte	-17
   1F55 FF                 8152 	.byte	-1
   1F56 12                 8153 	.byte	18
   1F57 18                 8154 	.byte	24
   1F58 00                 8155 	.byte	0
   1F59 F6                 8156 	.byte	-10
   1F5A E2                 8157 	.byte	-30
   1F5B FF                 8158 	.byte	-1
   1F5C 12                 8159 	.byte	18
   1F5D 18                 8160 	.byte	24
   1F5E 00                 8161 	.byte	0
   1F5F F8                 8162 	.byte	-8
   1F60 E1                 8163 	.byte	-31
   1F61 FF                 8164 	.byte	-1
   1F62 12                 8165 	.byte	18
   1F63 18                 8166 	.byte	24
   1F64 00                 8167 	.byte	0
   1F65 F8                 8168 	.byte	-8
   1F66 06                 8169 	.byte	6
   1F67 FF                 8170 	.byte	-1
   1F68 F6                 8171 	.byte	-10
   1F69 07                 8172 	.byte	7
   1F6A FF                 8173 	.byte	-1
   1F6B 08                 8174 	.byte	8
   1F6C FA                 8175 	.byte	-6
   1F6D FF                 8176 	.byte	-1
   1F6E 0A                 8177 	.byte	10
   1F6F F9                 8178 	.byte	-7
   1F70 FF                 8179 	.byte	-1
   1F71 F8                 8180 	.byte	-8
   1F72 06                 8181 	.byte	6
   1F73 01                 8182 	.byte	1
                           8183 	.globl _height2RisingLeft8
   1F74                    8184 _height2RisingLeft8:
   1F74 00                 8185 	.byte	0
   1F75 02                 8186 	.byte	2
   1F76 F4                 8187 	.byte	-12
   1F77 FF                 8188 	.byte	-1
   1F78 FE                 8189 	.byte	-2
   1F79 0C                 8190 	.byte	12
   1F7A FF                 8191 	.byte	-1
   1F7B 08                 8192 	.byte	8
   1F7C FB                 8193 	.byte	-5
   1F7D FF                 8194 	.byte	-1
   1F7E 02                 8195 	.byte	2
   1F7F F3                 8196 	.byte	-13
   1F80 FF                 8197 	.byte	-1
   1F81 F8                 8198 	.byte	-8
   1F82 06                 8199 	.byte	6
   1F83 FF                 8200 	.byte	-1
   1F84 1B                 8201 	.byte	27
   1F85 0B                 8202 	.byte	11
   1F86 00                 8203 	.byte	0
   1F87 E3                 8204 	.byte	-29
   1F88 01                 8205 	.byte	1
   1F89 FF                 8206 	.byte	-1
   1F8A 1A                 8207 	.byte	26
   1F8B 0B                 8208 	.byte	11
   1F8C 00                 8209 	.byte	0
   1F8D EE                 8210 	.byte	-18
   1F8E F0                 8211 	.byte	-16
   1F8F FF                 8212 	.byte	-1
   1F90 1A                 8213 	.byte	26
   1F91 0A                 8214 	.byte	10
   1F92 00                 8215 	.byte	0
   1F93 E8                 8216 	.byte	-24
   1F94 E9                 8217 	.byte	-23
   1F95 FF                 8218 	.byte	-1
   1F96 1B                 8219 	.byte	27
   1F97 0B                 8220 	.byte	11
   1F98 00                 8221 	.byte	0
   1F99 F8                 8222 	.byte	-8
   1F9A 06                 8223 	.byte	6
   1F9B FF                 8224 	.byte	-1
   1F9C FD                 8225 	.byte	-3
   1F9D 0C                 8226 	.byte	12
   1F9E FF                 8227 	.byte	-1
   1F9F 08                 8228 	.byte	8
   1FA0 FA                 8229 	.byte	-6
   1FA1 FF                 8230 	.byte	-1
   1FA2 03                 8231 	.byte	3
   1FA3 F4                 8232 	.byte	-12
   1FA4 FF                 8233 	.byte	-1
   1FA5 F8                 8234 	.byte	-8
   1FA6 06                 8235 	.byte	6
   1FA7 01                 8236 	.byte	1
                           8237 	.globl _height2FallingBack8
   1FA8                    8238 _height2FallingBack8:
   1FA8 00                 8239 	.byte	0
   1FA9 0F                 8240 	.byte	15
   1FAA FE                 8241 	.byte	-2
   1FAB FF                 8242 	.byte	-1
   1FAC 03                 8243 	.byte	3
   1FAD 0D                 8244 	.byte	13
   1FAE FF                 8245 	.byte	-1
   1FAF F9                 8246 	.byte	-7
   1FB0 FD                 8247 	.byte	-3
   1FB1 FF                 8248 	.byte	-1
   1FB2 FD                 8249 	.byte	-3
   1FB3 F3                 8250 	.byte	-13
   1FB4 FF                 8251 	.byte	-1
   1FB5 07                 8252 	.byte	7
   1FB6 03                 8253 	.byte	3
   1FB7 FF                 8254 	.byte	-1
   1FB8 1B                 8255 	.byte	27
   1FB9 F6                 8256 	.byte	-10
   1FBA 00                 8257 	.byte	0
   1FBB E8                 8258 	.byte	-24
   1FBC 17                 8259 	.byte	23
   1FBD FF                 8260 	.byte	-1
   1FBE 1B                 8261 	.byte	27
   1FBF F6                 8262 	.byte	-10
   1FC0 00                 8263 	.byte	0
   1FC1 DE                 8264 	.byte	-34
   1FC2 07                 8265 	.byte	7
   1FC3 FF                 8266 	.byte	-1
   1FC4 1B                 8267 	.byte	27
   1FC5 F7                 8268 	.byte	-9
   1FC6 00                 8269 	.byte	0
   1FC7 E2                 8270 	.byte	-30
   1FC8 FC                 8271 	.byte	-4
   1FC9 FF                 8272 	.byte	-1
   1FCA 1B                 8273 	.byte	27
   1FCB F6                 8274 	.byte	-10
   1FCC 00                 8275 	.byte	0
   1FCD 07                 8276 	.byte	7
   1FCE 03                 8277 	.byte	3
   1FCF FF                 8278 	.byte	-1
   1FD0 03                 8279 	.byte	3
   1FD1 0D                 8280 	.byte	13
   1FD2 FF                 8281 	.byte	-1
   1FD3 F9                 8282 	.byte	-7
   1FD4 FE                 8283 	.byte	-2
   1FD5 FF                 8284 	.byte	-1
   1FD6 FD                 8285 	.byte	-3
   1FD7 F2                 8286 	.byte	-14
   1FD8 FF                 8287 	.byte	-1
   1FD9 07                 8288 	.byte	7
   1FDA 03                 8289 	.byte	3
   1FDB 01                 8290 	.byte	1
                           8291 	.globl _height2RisingFront8
   1FDC                    8292 _height2RisingFront8:
   1FDC 00                 8293 	.byte	0
   1FDD FF                 8294 	.byte	-1
   1FDE 06                 8295 	.byte	6
   1FDF FF                 8296 	.byte	-1
   1FE0 02                 8297 	.byte	2
   1FE1 0E                 8298 	.byte	14
   1FE2 FF                 8299 	.byte	-1
   1FE3 02                 8300 	.byte	2
   1FE4 FA                 8301 	.byte	-6
   1FE5 FF                 8302 	.byte	-1
   1FE6 FD                 8303 	.byte	-3
   1FE7 F2                 8304 	.byte	-14
   1FE8 FF                 8305 	.byte	-1
   1FE9 FF                 8306 	.byte	-1
   1FEA 06                 8307 	.byte	6
   1FEB FF                 8308 	.byte	-1
   1FEC 1D                 8309 	.byte	29
   1FED FB                 8310 	.byte	-5
   1FEE 00                 8311 	.byte	0
   1FEF E5                 8312 	.byte	-27
   1FF0 13                 8313 	.byte	19
   1FF1 FF                 8314 	.byte	-1
   1FF2 1E                 8315 	.byte	30
   1FF3 FB                 8316 	.byte	-5
   1FF4 00                 8317 	.byte	0
   1FF5 E4                 8318 	.byte	-28
   1FF6 FF                 8319 	.byte	-1
   1FF7 FF                 8320 	.byte	-1
   1FF8 1E                 8321 	.byte	30
   1FF9 FB                 8322 	.byte	-5
   1FFA 00                 8323 	.byte	0
   1FFB DF                 8324 	.byte	-33
   1FFC F7                 8325 	.byte	-9
   1FFD FF                 8326 	.byte	-1
   1FFE 1E                 8327 	.byte	30
   1FFF FC                 8328 	.byte	-4
   2000 00                 8329 	.byte	0
   2001 FE                 8330 	.byte	-2
   2002 05                 8331 	.byte	5
   2003 FF                 8332 	.byte	-1
   2004 03                 8333 	.byte	3
   2005 0E                 8334 	.byte	14
   2006 FF                 8335 	.byte	-1
   2007 02                 8336 	.byte	2
   2008 FA                 8337 	.byte	-6
   2009 FF                 8338 	.byte	-1
   200A FD                 8339 	.byte	-3
   200B F3                 8340 	.byte	-13
   200C FF                 8341 	.byte	-1
   200D FE                 8342 	.byte	-2
   200E 05                 8343 	.byte	5
   200F 01                 8344 	.byte	1
                           8345 	.globl _height2FallingFront8
   2010                    8346 _height2FallingFront8:
   2010 FF                 8347 	.byte	-1
   2011 03                 8348 	.byte	3
   2012 0E                 8349 	.byte	14
   2013 FF                 8350 	.byte	-1
   2014 0F                 8351 	.byte	15
   2015 FD                 8352 	.byte	-3
   2016 FF                 8353 	.byte	-1
   2017 FD                 8354 	.byte	-3
   2018 F3                 8355 	.byte	-13
   2019 FF                 8356 	.byte	-1
   201A F1                 8357 	.byte	-15
   201B 02                 8358 	.byte	2
   201C FF                 8359 	.byte	-1
   201D 00                 8360 	.byte	0
   201E 0A                 8361 	.byte	10
   201F 00                 8362 	.byte	0
   2020 03                 8363 	.byte	3
   2021 04                 8364 	.byte	4
   2022 FF                 8365 	.byte	-1
   2023 FF                 8366 	.byte	-1
   2024 0A                 8367 	.byte	10
   2025 00                 8368 	.byte	0
   2026 10                 8369 	.byte	16
   2027 F3                 8370 	.byte	-13
   2028 FF                 8371 	.byte	-1
   2029 FF                 8372 	.byte	-1
   202A 0A                 8373 	.byte	10
   202B 00                 8374 	.byte	0
   202C FE                 8375 	.byte	-2
   202D E9                 8376 	.byte	-23
   202E FF                 8377 	.byte	-1
   202F FF                 8378 	.byte	-1
   2030 09                 8379 	.byte	9
   2031 00                 8380 	.byte	0
   2032 F2                 8381 	.byte	-14
   2033 03                 8382 	.byte	3
   2034 FF                 8383 	.byte	-1
   2035 02                 8384 	.byte	2
   2036 0E                 8385 	.byte	14
   2037 FF                 8386 	.byte	-1
   2038 0F                 8387 	.byte	15
   2039 FD                 8388 	.byte	-3
   203A FF                 8389 	.byte	-1
   203B FD                 8390 	.byte	-3
   203C F2                 8391 	.byte	-14
   203D FF                 8392 	.byte	-1
   203E F2                 8393 	.byte	-14
   203F 03                 8394 	.byte	3
   2040 01                 8395 	.byte	1
                           8396 	.globl _height2RisingBack8
   2041                    8397 _height2RisingBack8:
   2041 00                 8398 	.byte	0
   2042 10                 8399 	.byte	16
   2043 F5                 8400 	.byte	-11
   2044 FF                 8401 	.byte	-1
   2045 03                 8402 	.byte	3
   2046 0D                 8403 	.byte	13
   2047 FF                 8404 	.byte	-1
   2048 0C                 8405 	.byte	12
   2049 FB                 8406 	.byte	-5
   204A FF                 8407 	.byte	-1
   204B FD                 8408 	.byte	-3
   204C F2                 8409 	.byte	-14
   204D FF                 8410 	.byte	-1
   204E F4                 8411 	.byte	-12
   204F 06                 8412 	.byte	6
   2050 FF                 8413 	.byte	-1
   2051 12                 8414 	.byte	18
   2052 05                 8415 	.byte	5
   2053 00                 8416 	.byte	0
   2054 F1                 8417 	.byte	-15
   2055 08                 8418 	.byte	8
   2056 FF                 8419 	.byte	-1
   2057 12                 8420 	.byte	18
   2058 05                 8421 	.byte	5
   2059 00                 8422 	.byte	0
   205A FA                 8423 	.byte	-6
   205B F6                 8424 	.byte	-10
   205C FF                 8425 	.byte	-1
   205D 12                 8426 	.byte	18
   205E 04                 8427 	.byte	4
   205F 00                 8428 	.byte	0
   2060 EB                 8429 	.byte	-21
   2061 EE                 8430 	.byte	-18
   2062 FF                 8431 	.byte	-1
   2063 12                 8432 	.byte	18
   2064 05                 8433 	.byte	5
   2065 00                 8434 	.byte	0
   2066 F4                 8435 	.byte	-12
   2067 06                 8436 	.byte	6
   2068 FF                 8437 	.byte	-1
   2069 03                 8438 	.byte	3
   206A 0D                 8439 	.byte	13
   206B FF                 8440 	.byte	-1
   206C 0C                 8441 	.byte	12
   206D FA                 8442 	.byte	-6
   206E FF                 8443 	.byte	-1
   206F FD                 8444 	.byte	-3
   2070 F3                 8445 	.byte	-13
   2071 FF                 8446 	.byte	-1
   2072 F4                 8447 	.byte	-12
   2073 06                 8448 	.byte	6
   2074 01                 8449 	.byte	1
                           8450 	.globl _depth2RollingLeft8
   2075                    8451 _depth2RollingLeft8:
   2075 FF                 8452 	.byte	-1
   2076 0D                 8453 	.byte	13
   2077 07                 8454 	.byte	7
   2078 FF                 8455 	.byte	-1
   2079 10                 8456 	.byte	16
   207A F5                 8457 	.byte	-11
   207B FF                 8458 	.byte	-1
   207C F3                 8459 	.byte	-13
   207D F9                 8460 	.byte	-7
   207E FF                 8461 	.byte	-1
   207F F0                 8462 	.byte	-16
   2080 0B                 8463 	.byte	11
   2081 FF                 8464 	.byte	-1
   2082 04                 8465 	.byte	4
   2083 F5                 8466 	.byte	-11
   2084 00                 8467 	.byte	0
   2085 09                 8468 	.byte	9
   2086 12                 8469 	.byte	18
   2087 FF                 8470 	.byte	-1
   2088 04                 8471 	.byte	4
   2089 F5                 8472 	.byte	-11
   208A 00                 8473 	.byte	0
   208B 0C                 8474 	.byte	12
   208C 00                 8475 	.byte	0
   208D FF                 8476 	.byte	-1
   208E 04                 8477 	.byte	4
   208F F4                 8478 	.byte	-12
   2090 00                 8479 	.byte	0
   2091 EF                 8480 	.byte	-17
   2092 05                 8481 	.byte	5
   2093 FF                 8482 	.byte	-1
   2094 04                 8483 	.byte	4
   2095 F4                 8484 	.byte	-12
   2096 00                 8485 	.byte	0
   2097 F0                 8486 	.byte	-16
   2098 0C                 8487 	.byte	12
   2099 FF                 8488 	.byte	-1
   209A 0D                 8489 	.byte	13
   209B 07                 8490 	.byte	7
   209C FF                 8491 	.byte	-1
   209D 10                 8492 	.byte	16
   209E F4                 8493 	.byte	-12
   209F FF                 8494 	.byte	-1
   20A0 F3                 8495 	.byte	-13
   20A1 F9                 8496 	.byte	-7
   20A2 FF                 8497 	.byte	-1
   20A3 F0                 8498 	.byte	-16
   20A4 0C                 8499 	.byte	12
   20A5 01                 8500 	.byte	1
                           8501 	.globl _depth2RollingRight8
   20A6                    8502 _depth2RollingRight8:
   20A6 00                 8503 	.byte	0
   20A7 0D                 8504 	.byte	13
   20A8 07                 8505 	.byte	7
   20A9 FF                 8506 	.byte	-1
   20AA F6                 8507 	.byte	-10
   20AB 07                 8508 	.byte	7
   20AC FF                 8509 	.byte	-1
   20AD 10                 8510 	.byte	16
   20AE F4                 8511 	.byte	-12
   20AF FF                 8512 	.byte	-1
   20B0 0A                 8513 	.byte	10
   20B1 FA                 8514 	.byte	-6
   20B2 FF                 8515 	.byte	-1
   20B3 F0                 8516 	.byte	-16
   20B4 0B                 8517 	.byte	11
   20B5 FF                 8518 	.byte	-1
   20B6 09                 8519 	.byte	9
   20B7 0C                 8520 	.byte	12
   20B8 00                 8521 	.byte	0
   20B9 ED                 8522 	.byte	-19
   20BA FB                 8523 	.byte	-5
   20BB FF                 8524 	.byte	-1
   20BC 09                 8525 	.byte	9
   20BD 0C                 8526 	.byte	12
   20BE 00                 8527 	.byte	0
   20BF 07                 8528 	.byte	7
   20C0 E8                 8529 	.byte	-24
   20C1 FF                 8530 	.byte	-1
   20C2 09                 8531 	.byte	9
   20C3 0C                 8532 	.byte	12
   20C4 00                 8533 	.byte	0
   20C5 01                 8534 	.byte	1
   20C6 EE                 8535 	.byte	-18
   20C7 FF                 8536 	.byte	-1
   20C8 09                 8537 	.byte	9
   20C9 0B                 8538 	.byte	11
   20CA 00                 8539 	.byte	0
   20CB F0                 8540 	.byte	-16
   20CC 0C                 8541 	.byte	12
   20CD FF                 8542 	.byte	-1
   20CE F6                 8543 	.byte	-10
   20CF 07                 8544 	.byte	7
   20D0 FF                 8545 	.byte	-1
   20D1 10                 8546 	.byte	16
   20D2 F4                 8547 	.byte	-12
   20D3 FF                 8548 	.byte	-1
   20D4 0A                 8549 	.byte	10
   20D5 F9                 8550 	.byte	-7
   20D6 FF                 8551 	.byte	-1
   20D7 F0                 8552 	.byte	-16
   20D8 0C                 8553 	.byte	12
   20D9 01                 8554 	.byte	1
                           8555 	.globl _width2RollingFront8
   20DA                    8556 _width2RollingFront8:
   20DA FF                 8557 	.byte	-1
   20DB 06                 8558 	.byte	6
   20DC 1C                 8559 	.byte	28
   20DD FF                 8560 	.byte	-1
   20DE 0F                 8561 	.byte	15
   20DF FD                 8562 	.byte	-3
   20E0 FF                 8563 	.byte	-1
   20E1 FA                 8564 	.byte	-6
   20E2 E5                 8565 	.byte	-27
   20E3 FF                 8566 	.byte	-1
   20E4 F1                 8567 	.byte	-15
   20E5 02                 8568 	.byte	2
   20E6 FF                 8569 	.byte	-1
   20E7 00                 8570 	.byte	0
   20E8 05                 8571 	.byte	5
   20E9 00                 8572 	.byte	0
   20EA 06                 8573 	.byte	6
   20EB 17                 8574 	.byte	23
   20EC FF                 8575 	.byte	-1
   20ED 00                 8576 	.byte	0
   20EE 05                 8577 	.byte	5
   20EF 00                 8578 	.byte	0
   20F0 0F                 8579 	.byte	15
   20F1 F8                 8580 	.byte	-8
   20F2 FF                 8581 	.byte	-1
   20F3 00                 8582 	.byte	0
   20F4 05                 8583 	.byte	5
   20F5 00                 8584 	.byte	0
   20F6 FA                 8585 	.byte	-6
   20F7 E0                 8586 	.byte	-32
   20F8 FF                 8587 	.byte	-1
   20F9 00                 8588 	.byte	0
   20FA 04                 8589 	.byte	4
   20FB 00                 8590 	.byte	0
   20FC F1                 8591 	.byte	-15
   20FD 03                 8592 	.byte	3
   20FE FF                 8593 	.byte	-1
   20FF 06                 8594 	.byte	6
   2100 1C                 8595 	.byte	28
   2101 FF                 8596 	.byte	-1
   2102 0F                 8597 	.byte	15
   2103 FD                 8598 	.byte	-3
   2104 FF                 8599 	.byte	-1
   2105 FA                 8600 	.byte	-6
   2106 E4                 8601 	.byte	-28
   2107 FF                 8602 	.byte	-1
   2108 F1                 8603 	.byte	-15
   2109 03                 8604 	.byte	3
   210A 01                 8605 	.byte	1
                           8606 	.globl _width2RollingBack8
   210B                    8607 _width2RollingBack8:
   210B 00                 8608 	.byte	0
   210C 0F                 8609 	.byte	15
   210D FE                 8610 	.byte	-2
   210E FF                 8611 	.byte	-1
   210F 06                 8612 	.byte	6
   2110 1B                 8613 	.byte	27
   2111 FF                 8614 	.byte	-1
   2112 F9                 8615 	.byte	-7
   2113 FD                 8616 	.byte	-3
   2114 FF                 8617 	.byte	-1
   2115 FA                 8618 	.byte	-6
   2116 E5                 8619 	.byte	-27
   2117 FF                 8620 	.byte	-1
   2118 07                 8621 	.byte	7
   2119 03                 8622 	.byte	3
   211A FF                 8623 	.byte	-1
   211B 0E                 8624 	.byte	14
   211C FB                 8625 	.byte	-5
   211D 00                 8626 	.byte	0
   211E F8                 8627 	.byte	-8
   211F 20                 8628 	.byte	32
   2120 FF                 8629 	.byte	-1
   2121 0E                 8630 	.byte	14
   2122 FB                 8631 	.byte	-5
   2123 00                 8632 	.byte	0
   2124 EB                 8633 	.byte	-21
   2125 02                 8634 	.byte	2
   2126 FF                 8635 	.byte	-1
   2127 0D                 8636 	.byte	13
   2128 FB                 8637 	.byte	-5
   2129 00                 8638 	.byte	0
   212A ED                 8639 	.byte	-19
   212B EA                 8640 	.byte	-22
   212C FF                 8641 	.byte	-1
   212D 0D                 8642 	.byte	13
   212E FB                 8643 	.byte	-5
   212F 00                 8644 	.byte	0
   2130 08                 8645 	.byte	8
   2131 03                 8646 	.byte	3
   2132 FF                 8647 	.byte	-1
   2133 06                 8648 	.byte	6
   2134 1B                 8649 	.byte	27
   2135 FF                 8650 	.byte	-1
   2136 F8                 8651 	.byte	-8
   2137 FD                 8652 	.byte	-3
   2138 FF                 8653 	.byte	-1
   2139 FA                 8654 	.byte	-6
   213A E5                 8655 	.byte	-27
   213B FF                 8656 	.byte	-1
   213C 08                 8657 	.byte	8
   213D 03                 8658 	.byte	3
   213E 01                 8659 	.byte	1
                           8660 	.globl _height1FallingLeft8
   213F                    8661 _height1FallingLeft8:
   213F FF                 8662 	.byte	-1
   2140 0D                 8663 	.byte	13
   2141 07                 8664 	.byte	7
   2142 FF                 8665 	.byte	-1
   2143 08                 8666 	.byte	8
   2144 FA                 8667 	.byte	-6
   2145 FF                 8668 	.byte	-1
   2146 F3                 8669 	.byte	-13
   2147 FA                 8670 	.byte	-6
   2148 FF                 8671 	.byte	-1
   2149 F8                 8672 	.byte	-8
   214A 05                 8673 	.byte	5
   214B FF                 8674 	.byte	-1
   214C 04                 8675 	.byte	4
   214D F5                 8676 	.byte	-11
   214E 00                 8677 	.byte	0
   214F 09                 8678 	.byte	9
   2150 12                 8679 	.byte	18
   2151 FF                 8680 	.byte	-1
   2152 04                 8681 	.byte	4
   2153 F5                 8682 	.byte	-11
   2154 00                 8683 	.byte	0
   2155 04                 8684 	.byte	4
   2156 05                 8685 	.byte	5
   2157 FF                 8686 	.byte	-1
   2158 04                 8687 	.byte	4
   2159 F5                 8688 	.byte	-11
   215A 00                 8689 	.byte	0
   215B EF                 8690 	.byte	-17
   215C 05                 8691 	.byte	5
   215D FF                 8692 	.byte	-1
   215E 04                 8693 	.byte	4
   215F F4                 8694 	.byte	-12
   2160 00                 8695 	.byte	0
   2161 F8                 8696 	.byte	-8
   2162 06                 8697 	.byte	6
   2163 FF                 8698 	.byte	-1
   2164 0D                 8699 	.byte	13
   2165 07                 8700 	.byte	7
   2166 FF                 8701 	.byte	-1
   2167 08                 8702 	.byte	8
   2168 FA                 8703 	.byte	-6
   2169 FF                 8704 	.byte	-1
   216A F3                 8705 	.byte	-13
   216B F9                 8706 	.byte	-7
   216C FF                 8707 	.byte	-1
   216D F8                 8708 	.byte	-8
   216E 06                 8709 	.byte	6
   216F 01                 8710 	.byte	1
                           8711 	.globl _height1FallingRight8
   2170                    8712 _height1FallingRight8:
   2170 00                 8713 	.byte	0
   2171 0D                 8714 	.byte	13
   2172 07                 8715 	.byte	7
   2173 FF                 8716 	.byte	-1
   2174 F6                 8717 	.byte	-10
   2175 07                 8718 	.byte	7
   2176 FF                 8719 	.byte	-1
   2177 08                 8720 	.byte	8
   2178 FA                 8721 	.byte	-6
   2179 FF                 8722 	.byte	-1
   217A 0A                 8723 	.byte	10
   217B F9                 8724 	.byte	-7
   217C FF                 8725 	.byte	-1
   217D F8                 8726 	.byte	-8
   217E 06                 8727 	.byte	6
   217F FF                 8728 	.byte	-1
   2180 09                 8729 	.byte	9
   2181 0C                 8730 	.byte	12
   2182 00                 8731 	.byte	0
   2183 ED                 8732 	.byte	-19
   2184 FB                 8733 	.byte	-5
   2185 FF                 8734 	.byte	-1
   2186 09                 8735 	.byte	9
   2187 0C                 8736 	.byte	12
   2188 00                 8737 	.byte	0
   2189 FF                 8738 	.byte	-1
   218A EE                 8739 	.byte	-18
   218B FF                 8740 	.byte	-1
   218C 09                 8741 	.byte	9
   218D 0C                 8742 	.byte	12
   218E 00                 8743 	.byte	0
   218F 01                 8744 	.byte	1
   2190 ED                 8745 	.byte	-19
   2191 FF                 8746 	.byte	-1
   2192 09                 8747 	.byte	9
   2193 0C                 8748 	.byte	12
   2194 00                 8749 	.byte	0
   2195 F8                 8750 	.byte	-8
   2196 06                 8751 	.byte	6
   2197 FF                 8752 	.byte	-1
   2198 F6                 8753 	.byte	-10
   2199 07                 8754 	.byte	7
   219A FF                 8755 	.byte	-1
   219B 08                 8756 	.byte	8
   219C FA                 8757 	.byte	-6
   219D FF                 8758 	.byte	-1
   219E 0A                 8759 	.byte	10
   219F F9                 8760 	.byte	-7
   21A0 FF                 8761 	.byte	-1
   21A1 F8                 8762 	.byte	-8
   21A2 06                 8763 	.byte	6
   21A3 01                 8764 	.byte	1
                           8765 	.globl _height1FallingBack8
   21A4                    8766 _height1FallingBack8:
   21A4 00                 8767 	.byte	0
   21A5 0F                 8768 	.byte	15
   21A6 FE                 8769 	.byte	-2
   21A7 FF                 8770 	.byte	-1
   21A8 03                 8771 	.byte	3
   21A9 0D                 8772 	.byte	13
   21AA FF                 8773 	.byte	-1
   21AB F9                 8774 	.byte	-7
   21AC FD                 8775 	.byte	-3
   21AD FF                 8776 	.byte	-1
   21AE FD                 8777 	.byte	-3
   21AF F3                 8778 	.byte	-13
   21B0 FF                 8779 	.byte	-1
   21B1 07                 8780 	.byte	7
   21B2 03                 8781 	.byte	3
   21B3 FF                 8782 	.byte	-1
   21B4 0E                 8783 	.byte	14
   21B5 FB                 8784 	.byte	-5
   21B6 00                 8785 	.byte	0
   21B7 F5                 8786 	.byte	-11
   21B8 12                 8787 	.byte	18
   21B9 FF                 8788 	.byte	-1
   21BA 0E                 8789 	.byte	14
   21BB FB                 8790 	.byte	-5
   21BC 00                 8791 	.byte	0
   21BD EB                 8792 	.byte	-21
   21BE 02                 8793 	.byte	2
   21BF FF                 8794 	.byte	-1
   21C0 0D                 8795 	.byte	13
   21C1 FB                 8796 	.byte	-5
   21C2 00                 8797 	.byte	0
   21C3 F0                 8798 	.byte	-16
   21C4 F8                 8799 	.byte	-8
   21C5 FF                 8800 	.byte	-1
   21C6 0D                 8801 	.byte	13
   21C7 FB                 8802 	.byte	-5
   21C8 00                 8803 	.byte	0
   21C9 08                 8804 	.byte	8
   21CA 03                 8805 	.byte	3
   21CB FF                 8806 	.byte	-1
   21CC 03                 8807 	.byte	3
   21CD 0D                 8808 	.byte	13
   21CE FF                 8809 	.byte	-1
   21CF F8                 8810 	.byte	-8
   21D0 FD                 8811 	.byte	-3
   21D1 FF                 8812 	.byte	-1
   21D2 FD                 8813 	.byte	-3
   21D3 F3                 8814 	.byte	-13
   21D4 FF                 8815 	.byte	-1
   21D5 08                 8816 	.byte	8
   21D6 03                 8817 	.byte	3
   21D7 01                 8818 	.byte	1
                           8819 	.globl _height1FallingFront8
   21D8                    8820 _height1FallingFront8:
   21D8 FF                 8821 	.byte	-1
   21D9 03                 8822 	.byte	3
   21DA 0E                 8823 	.byte	14
   21DB FF                 8824 	.byte	-1
   21DC 0F                 8825 	.byte	15
   21DD FD                 8826 	.byte	-3
   21DE FF                 8827 	.byte	-1
   21DF FD                 8828 	.byte	-3
   21E0 F3                 8829 	.byte	-13
   21E1 FF                 8830 	.byte	-1
   21E2 F1                 8831 	.byte	-15
   21E3 02                 8832 	.byte	2
   21E4 FF                 8833 	.byte	-1
   21E5 00                 8834 	.byte	0
   21E6 05                 8835 	.byte	5
   21E7 00                 8836 	.byte	0
   21E8 03                 8837 	.byte	3
   21E9 09                 8838 	.byte	9
   21EA FF                 8839 	.byte	-1
   21EB 00                 8840 	.byte	0
   21EC 05                 8841 	.byte	5
   21ED 00                 8842 	.byte	0
   21EE 0F                 8843 	.byte	15
   21EF F8                 8844 	.byte	-8
   21F0 FF                 8845 	.byte	-1
   21F1 00                 8846 	.byte	0
   21F2 05                 8847 	.byte	5
   21F3 00                 8848 	.byte	0
   21F4 FD                 8849 	.byte	-3
   21F5 EE                 8850 	.byte	-18
   21F6 FF                 8851 	.byte	-1
   21F7 00                 8852 	.byte	0
   21F8 04                 8853 	.byte	4
   21F9 00                 8854 	.byte	0
   21FA F1                 8855 	.byte	-15
   21FB 03                 8856 	.byte	3
   21FC FF                 8857 	.byte	-1
   21FD 03                 8858 	.byte	3
   21FE 0E                 8859 	.byte	14
   21FF FF                 8860 	.byte	-1
   2200 0F                 8861 	.byte	15
   2201 FD                 8862 	.byte	-3
   2202 FF                 8863 	.byte	-1
   2203 FD                 8864 	.byte	-3
   2204 F2                 8865 	.byte	-14
   2205 FF                 8866 	.byte	-1
   2206 F1                 8867 	.byte	-15
   2207 03                 8868 	.byte	3
   2208 01                 8869 	.byte	1
                           8870 	.globl _height2FallingLeft9
   2209                    8871 _height2FallingLeft9:
   2209 FF                 8872 	.byte	-1
   220A 0D                 8873 	.byte	13
   220B 05                 8874 	.byte	5
   220C FF                 8875 	.byte	-1
   220D 08                 8876 	.byte	8
   220E FB                 8877 	.byte	-5
   220F FF                 8878 	.byte	-1
   2210 F3                 8879 	.byte	-13
   2211 FB                 8880 	.byte	-5
   2212 FF                 8881 	.byte	-1
   2213 F8                 8882 	.byte	-8
   2214 05                 8883 	.byte	5
   2215 FF                 8884 	.byte	-1
   2216 04                 8885 	.byte	4
   2217 E7                 8886 	.byte	-25
   2218 00                 8887 	.byte	0
   2219 09                 8888 	.byte	9
   221A 1E                 8889 	.byte	30
   221B FF                 8890 	.byte	-1
   221C 05                 8891 	.byte	5
   221D E7                 8892 	.byte	-25
   221E 00                 8893 	.byte	0
   221F 03                 8894 	.byte	3
   2220 14                 8895 	.byte	20
   2221 FF                 8896 	.byte	-1
   2222 05                 8897 	.byte	5
   2223 E6                 8898 	.byte	-26
   2224 00                 8899 	.byte	0
   2225 EE                 8900 	.byte	-18
   2226 15                 8901 	.byte	21
   2227 FF                 8902 	.byte	-1
   2228 04                 8903 	.byte	4
   2229 E6                 8904 	.byte	-26
   222A 00                 8905 	.byte	0
   222B F8                 8906 	.byte	-8
   222C 06                 8907 	.byte	6
   222D FF                 8908 	.byte	-1
   222E 0E                 8909 	.byte	14
   222F 05                 8910 	.byte	5
   2230 FF                 8911 	.byte	-1
   2231 08                 8912 	.byte	8
   2232 FA                 8913 	.byte	-6
   2233 FF                 8914 	.byte	-1
   2234 F2                 8915 	.byte	-14
   2235 FB                 8916 	.byte	-5
   2236 FF                 8917 	.byte	-1
   2237 F8                 8918 	.byte	-8
   2238 06                 8919 	.byte	6
   2239 01                 8920 	.byte	1
                           8921 	.globl _height2RisingRight9
   223A                    8922 _height2RisingRight9:
   223A 00                 8923 	.byte	0
   223B 06                 8924 	.byte	6
   223C 1C                 8925 	.byte	28
   223D FF                 8926 	.byte	-1
   223E 06                 8927 	.byte	6
   223F 0E                 8928 	.byte	14
   2240 FF                 8929 	.byte	-1
   2241 08                 8930 	.byte	8
   2242 FA                 8931 	.byte	-6
   2243 FF                 8932 	.byte	-1
   2244 FA                 8933 	.byte	-6
   2245 F2                 8934 	.byte	-14
   2246 FF                 8935 	.byte	-1
   2247 F8                 8936 	.byte	-8
   2248 06                 8937 	.byte	6
   2249 FF                 8938 	.byte	-1
   224A 18                 8939 	.byte	24
   224B F9                 8940 	.byte	-7
   224C 00                 8941 	.byte	0
   224D EE                 8942 	.byte	-18
   224E 15                 8943 	.byte	21
   224F FF                 8944 	.byte	-1
   2250 18                 8945 	.byte	24
   2251 F8                 8946 	.byte	-8
   2252 00                 8947 	.byte	0
   2253 F0                 8948 	.byte	-16
   2254 02                 8949 	.byte	2
   2255 FF                 8950 	.byte	-1
   2256 18                 8951 	.byte	24
   2257 F8                 8952 	.byte	-8
   2258 00                 8953 	.byte	0
   2259 E2                 8954 	.byte	-30
   225A FA                 8955 	.byte	-6
   225B FF                 8956 	.byte	-1
   225C 18                 8957 	.byte	24
   225D F9                 8958 	.byte	-7
   225E 00                 8959 	.byte	0
   225F F8                 8960 	.byte	-8
   2260 06                 8961 	.byte	6
   2261 FF                 8962 	.byte	-1
   2262 06                 8963 	.byte	6
   2263 0D                 8964 	.byte	13
   2264 FF                 8965 	.byte	-1
   2265 08                 8966 	.byte	8
   2266 FA                 8967 	.byte	-6
   2267 FF                 8968 	.byte	-1
   2268 FA                 8969 	.byte	-6
   2269 F3                 8970 	.byte	-13
   226A FF                 8971 	.byte	-1
   226B F8                 8972 	.byte	-8
   226C 06                 8973 	.byte	6
   226D 01                 8974 	.byte	1
                           8975 	.globl _height2FallingRight9
   226E                    8976 _height2FallingRight9:
   226E 00                 8977 	.byte	0
   226F 0E                 8978 	.byte	14
   2270 09                 8979 	.byte	9
   2271 FF                 8980 	.byte	-1
   2272 F5                 8981 	.byte	-11
   2273 05                 8982 	.byte	5
   2274 FF                 8983 	.byte	-1
   2275 08                 8984 	.byte	8
   2276 FA                 8985 	.byte	-6
   2277 FF                 8986 	.byte	-1
   2278 0B                 8987 	.byte	11
   2279 FB                 8988 	.byte	-5
   227A FF                 8989 	.byte	-1
   227B F8                 8990 	.byte	-8
   227C 06                 8991 	.byte	6
   227D FF                 8992 	.byte	-1
   227E 0F                 8993 	.byte	15
   227F 1A                 8994 	.byte	26
   2280 00                 8995 	.byte	0
   2281 E6                 8996 	.byte	-26
   2282 EB                 8997 	.byte	-21
   2283 FF                 8998 	.byte	-1
   2284 0F                 8999 	.byte	15
   2285 1A                 9000 	.byte	26
   2286 00                 9001 	.byte	0
   2287 F9                 9002 	.byte	-7
   2288 E0                 9003 	.byte	-32
   2289 FF                 9004 	.byte	-1
   228A 0F                 9005 	.byte	15
   228B 1A                 9006 	.byte	26
   228C 00                 9007 	.byte	0
   228D FC                 9008 	.byte	-4
   228E E1                 9009 	.byte	-31
   228F FF                 9010 	.byte	-1
   2290 0F                 9011 	.byte	15
   2291 1A                 9012 	.byte	26
   2292 00                 9013 	.byte	0
   2293 F8                 9014 	.byte	-8
   2294 06                 9015 	.byte	6
   2295 FF                 9016 	.byte	-1
   2296 F5                 9017 	.byte	-11
   2297 05                 9018 	.byte	5
   2298 FF                 9019 	.byte	-1
   2299 08                 9020 	.byte	8
   229A FA                 9021 	.byte	-6
   229B FF                 9022 	.byte	-1
   229C 0B                 9023 	.byte	11
   229D FB                 9024 	.byte	-5
   229E FF                 9025 	.byte	-1
   229F F8                 9026 	.byte	-8
   22A0 06                 9027 	.byte	6
   22A1 01                 9028 	.byte	1
                           9029 	.globl _height2RisingLeft9
   22A2                    9030 _height2RisingLeft9:
   22A2 00                 9031 	.byte	0
   22A3 00                 9032 	.byte	0
   22A4 F3                 9033 	.byte	-13
   22A5 FF                 9034 	.byte	-1
   22A6 00                 9035 	.byte	0
   22A7 0D                 9036 	.byte	13
   22A8 FF                 9037 	.byte	-1
   22A9 08                 9038 	.byte	8
   22AA FB                 9039 	.byte	-5
   22AB FF                 9040 	.byte	-1
   22AC 00                 9041 	.byte	0
   22AD F2                 9042 	.byte	-14
   22AE FF                 9043 	.byte	-1
   22AF F8                 9044 	.byte	-8
   22B0 06                 9045 	.byte	6
   22B1 FF                 9046 	.byte	-1
   22B2 1B                 9047 	.byte	27
   22B3 08                 9048 	.byte	8
   22B4 00                 9049 	.byte	0
   22B5 E5                 9050 	.byte	-27
   22B6 05                 9051 	.byte	5
   22B7 FF                 9052 	.byte	-1
   22B8 1B                 9053 	.byte	27
   22B9 07                 9054 	.byte	7
   22BA 00                 9055 	.byte	0
   22BB ED                 9056 	.byte	-19
   22BC F4                 9057 	.byte	-12
   22BD FF                 9058 	.byte	-1
   22BE 1B                 9059 	.byte	27
   22BF 06                 9060 	.byte	6
   22C0 00                 9061 	.byte	0
   22C1 E5                 9062 	.byte	-27
   22C2 EC                 9063 	.byte	-20
   22C3 FF                 9064 	.byte	-1
   22C4 1B                 9065 	.byte	27
   22C5 08                 9066 	.byte	8
   22C6 00                 9067 	.byte	0
   22C7 F8                 9068 	.byte	-8
   22C8 06                 9069 	.byte	6
   22C9 FF                 9070 	.byte	-1
   22CA 00                 9071 	.byte	0
   22CB 0C                 9072 	.byte	12
   22CC FF                 9073 	.byte	-1
   22CD 08                 9074 	.byte	8
   22CE FA                 9075 	.byte	-6
   22CF FF                 9076 	.byte	-1
   22D0 00                 9077 	.byte	0
   22D1 F4                 9078 	.byte	-12
   22D2 FF                 9079 	.byte	-1
   22D3 F8                 9080 	.byte	-8
   22D4 06                 9081 	.byte	6
   22D5 01                 9082 	.byte	1
                           9083 	.globl _height2FallingBack9
   22D6                    9084 _height2FallingBack9:
   22D6 00                 9085 	.byte	0
   22D7 11                 9086 	.byte	17
   22D8 FD                 9087 	.byte	-3
   22D9 FF                 9088 	.byte	-1
   22DA 03                 9089 	.byte	3
   22DB 0D                 9090 	.byte	13
   22DC FF                 9091 	.byte	-1
   22DD F7                 9092 	.byte	-9
   22DE FE                 9093 	.byte	-2
   22DF FF                 9094 	.byte	-1
   22E0 FD                 9095 	.byte	-3
   22E1 F3                 9096 	.byte	-13
   22E2 FF                 9097 	.byte	-1
   22E3 09                 9098 	.byte	9
   22E4 02                 9099 	.byte	2
   22E5 FF                 9100 	.byte	-1
   22E6 19                 9101 	.byte	25
   22E7 F5                 9102 	.byte	-11
   22E8 00                 9103 	.byte	0
   22E9 EA                 9104 	.byte	-22
   22EA 18                 9105 	.byte	24
   22EB FF                 9106 	.byte	-1
   22EC 19                 9107 	.byte	25
   22ED F6                 9108 	.byte	-10
   22EE 00                 9109 	.byte	0
   22EF DE                 9110 	.byte	-34
   22F0 08                 9111 	.byte	8
   22F1 FF                 9112 	.byte	-1
   22F2 19                 9113 	.byte	25
   22F3 F6                 9114 	.byte	-10
   22F4 00                 9115 	.byte	0
   22F5 E4                 9116 	.byte	-28
   22F6 FD                 9117 	.byte	-3
   22F7 FF                 9118 	.byte	-1
   22F8 19                 9119 	.byte	25
   22F9 F5                 9120 	.byte	-11
   22FA 00                 9121 	.byte	0
   22FB 09                 9122 	.byte	9
   22FC 02                 9123 	.byte	2
   22FD FF                 9124 	.byte	-1
   22FE 03                 9125 	.byte	3
   22FF 0E                 9126 	.byte	14
   2300 FF                 9127 	.byte	-1
   2301 F7                 9128 	.byte	-9
   2302 FE                 9129 	.byte	-2
   2303 FF                 9130 	.byte	-1
   2304 FD                 9131 	.byte	-3
   2305 F2                 9132 	.byte	-14
   2306 FF                 9133 	.byte	-1
   2307 09                 9134 	.byte	9
   2308 02                 9135 	.byte	2
   2309 01                 9136 	.byte	1
                           9137 	.globl _height2RisingFront9
   230A                    9138 _height2RisingFront9:
   230A 00                 9139 	.byte	0
   230B FD                 9140 	.byte	-3
   230C 06                 9141 	.byte	6
   230D FF                 9142 	.byte	-1
   230E 03                 9143 	.byte	3
   230F 0E                 9144 	.byte	14
   2310 FF                 9145 	.byte	-1
   2311 03                 9146 	.byte	3
   2312 FA                 9147 	.byte	-6
   2313 FF                 9148 	.byte	-1
   2314 FD                 9149 	.byte	-3
   2315 F2                 9150 	.byte	-14
   2316 FF                 9151 	.byte	-1
   2317 FD                 9152 	.byte	-3
   2318 06                 9153 	.byte	6
   2319 FF                 9154 	.byte	-1
   231A 1C                 9155 	.byte	28
   231B FD                 9156 	.byte	-3
   231C 00                 9157 	.byte	0
   231D E7                 9158 	.byte	-25
   231E 11                 9159 	.byte	17
   231F FF                 9160 	.byte	-1
   2320 1C                 9161 	.byte	28
   2321 FD                 9162 	.byte	-3
   2322 00                 9163 	.byte	0
   2323 E7                 9164 	.byte	-25
   2324 FD                 9165 	.byte	-3
   2325 FF                 9166 	.byte	-1
   2326 1D                 9167 	.byte	29
   2327 FD                 9168 	.byte	-3
   2328 00                 9169 	.byte	0
   2329 E0                 9170 	.byte	-32
   232A F5                 9171 	.byte	-11
   232B FF                 9172 	.byte	-1
   232C 1D                 9173 	.byte	29
   232D FE                 9174 	.byte	-2
   232E 00                 9175 	.byte	0
   232F FC                 9176 	.byte	-4
   2330 05                 9177 	.byte	5
   2331 FF                 9178 	.byte	-1
   2332 03                 9179 	.byte	3
   2333 0E                 9180 	.byte	14
   2334 FF                 9181 	.byte	-1
   2335 04                 9182 	.byte	4
   2336 FA                 9183 	.byte	-6
   2337 FF                 9184 	.byte	-1
   2338 FD                 9185 	.byte	-3
   2339 F3                 9186 	.byte	-13
   233A FF                 9187 	.byte	-1
   233B FC                 9188 	.byte	-4
   233C 05                 9189 	.byte	5
   233D 01                 9190 	.byte	1
                           9191 	.globl _height2FallingFront9
   233E                    9192 _height2FallingFront9:
   233E FF                 9193 	.byte	-1
   233F 03                 9194 	.byte	3
   2340 0E                 9195 	.byte	14
   2341 FF                 9196 	.byte	-1
   2342 0F                 9197 	.byte	15
   2343 FE                 9198 	.byte	-2
   2344 FF                 9199 	.byte	-1
   2345 FD                 9200 	.byte	-3
   2346 F3                 9201 	.byte	-13
   2347 FF                 9202 	.byte	-1
   2348 F1                 9203 	.byte	-15
   2349 01                 9204 	.byte	1
   234A FF                 9205 	.byte	-1
   234B FC                 9206 	.byte	-4
   234C 0B                 9207 	.byte	11
   234D 00                 9208 	.byte	0
   234E 07                 9209 	.byte	7
   234F 03                 9210 	.byte	3
   2350 FF                 9211 	.byte	-1
   2351 FC                 9212 	.byte	-4
   2352 0B                 9213 	.byte	11
   2353 00                 9214 	.byte	0
   2354 13                 9215 	.byte	19
   2355 F3                 9216 	.byte	-13
   2356 FF                 9217 	.byte	-1
   2357 FB                 9218 	.byte	-5
   2358 0B                 9219 	.byte	11
   2359 00                 9220 	.byte	0
   235A 02                 9221 	.byte	2
   235B E8                 9222 	.byte	-24
   235C FF                 9223 	.byte	-1
   235D FB                 9224 	.byte	-5
   235E 0A                 9225 	.byte	10
   235F 00                 9226 	.byte	0
   2360 F2                 9227 	.byte	-14
   2361 02                 9228 	.byte	2
   2362 FF                 9229 	.byte	-1
   2363 03                 9230 	.byte	3
   2364 0E                 9231 	.byte	14
   2365 FF                 9232 	.byte	-1
   2366 0E                 9233 	.byte	14
   2367 FE                 9234 	.byte	-2
   2368 FF                 9235 	.byte	-1
   2369 FD                 9236 	.byte	-3
   236A F2                 9237 	.byte	-14
   236B FF                 9238 	.byte	-1
   236C F2                 9239 	.byte	-14
   236D 02                 9240 	.byte	2
   236E 01                 9241 	.byte	1
                           9242 	.globl _height2RisingBack9
   236F                    9243 _height2RisingBack9:
   236F 00                 9244 	.byte	0
   2370 10                 9245 	.byte	16
   2371 F5                 9246 	.byte	-11
   2372 FF                 9247 	.byte	-1
   2373 03                 9248 	.byte	3
   2374 0D                 9249 	.byte	13
   2375 FF                 9250 	.byte	-1
   2376 0B                 9251 	.byte	11
   2377 FB                 9252 	.byte	-5
   2378 FF                 9253 	.byte	-1
   2379 FD                 9254 	.byte	-3
   237A F2                 9255 	.byte	-14
   237B FF                 9256 	.byte	-1
   237C F5                 9257 	.byte	-11
   237D 06                 9258 	.byte	6
   237E FF                 9259 	.byte	-1
   237F 15                 9260 	.byte	21
   2380 03                 9261 	.byte	3
   2381 00                 9262 	.byte	0
   2382 EE                 9263 	.byte	-18
   2383 0A                 9264 	.byte	10
   2384 FF                 9265 	.byte	-1
   2385 15                 9266 	.byte	21
   2386 03                 9267 	.byte	3
   2387 00                 9268 	.byte	0
   2388 F6                 9269 	.byte	-10
   2389 F8                 9270 	.byte	-8
   238A FF                 9271 	.byte	-1
   238B 15                 9272 	.byte	21
   238C 03                 9273 	.byte	3
   238D 00                 9274 	.byte	0
   238E E8                 9275 	.byte	-24
   238F EF                 9276 	.byte	-17
   2390 FF                 9277 	.byte	-1
   2391 15                 9278 	.byte	21
   2392 03                 9279 	.byte	3
   2393 00                 9280 	.byte	0
   2394 F5                 9281 	.byte	-11
   2395 06                 9282 	.byte	6
   2396 FF                 9283 	.byte	-1
   2397 03                 9284 	.byte	3
   2398 0D                 9285 	.byte	13
   2399 FF                 9286 	.byte	-1
   239A 0B                 9287 	.byte	11
   239B FB                 9288 	.byte	-5
   239C FF                 9289 	.byte	-1
   239D FD                 9290 	.byte	-3
   239E F2                 9291 	.byte	-14
   239F FF                 9292 	.byte	-1
   23A0 F5                 9293 	.byte	-11
   23A1 06                 9294 	.byte	6
   23A2 01                 9295 	.byte	1
                           9296 	.globl _depth2RollingLeft9
   23A3                    9297 _depth2RollingLeft9:
   23A3 FF                 9298 	.byte	-1
   23A4 0D                 9299 	.byte	13
   23A5 05                 9300 	.byte	5
   23A6 FF                 9301 	.byte	-1
   23A7 10                 9302 	.byte	16
   23A8 F5                 9303 	.byte	-11
   23A9 FF                 9304 	.byte	-1
   23AA F3                 9305 	.byte	-13
   23AB FB                 9306 	.byte	-5
   23AC FF                 9307 	.byte	-1
   23AD F0                 9308 	.byte	-16
   23AE 0B                 9309 	.byte	11
   23AF FF                 9310 	.byte	-1
   23B0 02                 9311 	.byte	2
   23B1 F4                 9312 	.byte	-12
   23B2 00                 9313 	.byte	0
   23B3 0B                 9314 	.byte	11
   23B4 11                 9315 	.byte	17
   23B5 FF                 9316 	.byte	-1
   23B6 02                 9317 	.byte	2
   23B7 F4                 9318 	.byte	-12
   23B8 00                 9319 	.byte	0
   23B9 0E                 9320 	.byte	14
   23BA 01                 9321 	.byte	1
   23BB FF                 9322 	.byte	-1
   23BC 02                 9323 	.byte	2
   23BD F3                 9324 	.byte	-13
   23BE 00                 9325 	.byte	0
   23BF F1                 9326 	.byte	-15
   23C0 08                 9327 	.byte	8
   23C1 FF                 9328 	.byte	-1
   23C2 02                 9329 	.byte	2
   23C3 F3                 9330 	.byte	-13
   23C4 00                 9331 	.byte	0
   23C5 F0                 9332 	.byte	-16
   23C6 0C                 9333 	.byte	12
   23C7 FF                 9334 	.byte	-1
   23C8 0D                 9335 	.byte	13
   23C9 05                 9336 	.byte	5
   23CA FF                 9337 	.byte	-1
   23CB 10                 9338 	.byte	16
   23CC F4                 9339 	.byte	-12
   23CD FF                 9340 	.byte	-1
   23CE F3                 9341 	.byte	-13
   23CF FB                 9342 	.byte	-5
   23D0 FF                 9343 	.byte	-1
   23D1 F0                 9344 	.byte	-16
   23D2 0C                 9345 	.byte	12
   23D3 01                 9346 	.byte	1
                           9347 	.globl _depth2RollingRight9
   23D4                    9348 _depth2RollingRight9:
   23D4 00                 9349 	.byte	0
   23D5 0E                 9350 	.byte	14
   23D6 09                 9351 	.byte	9
   23D7 FF                 9352 	.byte	-1
   23D8 F5                 9353 	.byte	-11
   23D9 05                 9354 	.byte	5
   23DA FF                 9355 	.byte	-1
   23DB 10                 9356 	.byte	16
   23DC F4                 9357 	.byte	-12
   23DD FF                 9358 	.byte	-1
   23DE 0B                 9359 	.byte	11
   23DF FC                 9360 	.byte	-4
   23E0 FF                 9361 	.byte	-1
   23E1 F0                 9362 	.byte	-16
   23E2 0B                 9363 	.byte	11
   23E3 FF                 9364 	.byte	-1
   23E4 08                 9365 	.byte	8
   23E5 0D                 9366 	.byte	13
   23E6 00                 9367 	.byte	0
   23E7 ED                 9368 	.byte	-19
   23E8 F8                 9369 	.byte	-8
   23E9 FF                 9370 	.byte	-1
   23EA 08                 9371 	.byte	8
   23EB 0D                 9372 	.byte	13
   23EC 00                 9373 	.byte	0
   23ED 08                 9374 	.byte	8
   23EE E7                 9375 	.byte	-25
   23EF FF                 9376 	.byte	-1
   23F0 08                 9377 	.byte	8
   23F1 0D                 9378 	.byte	13
   23F2 00                 9379 	.byte	0
   23F3 03                 9380 	.byte	3
   23F4 EF                 9381 	.byte	-17
   23F5 FF                 9382 	.byte	-1
   23F6 08                 9383 	.byte	8
   23F7 0C                 9384 	.byte	12
   23F8 00                 9385 	.byte	0
   23F9 F0                 9386 	.byte	-16
   23FA 0C                 9387 	.byte	12
   23FB FF                 9388 	.byte	-1
   23FC F5                 9389 	.byte	-11
   23FD 05                 9390 	.byte	5
   23FE FF                 9391 	.byte	-1
   23FF 10                 9392 	.byte	16
   2400 F4                 9393 	.byte	-12
   2401 FF                 9394 	.byte	-1
   2402 0B                 9395 	.byte	11
   2403 FB                 9396 	.byte	-5
   2404 FF                 9397 	.byte	-1
   2405 F0                 9398 	.byte	-16
   2406 0C                 9399 	.byte	12
   2407 01                 9400 	.byte	1
                           9401 	.globl _width2RollingFront9
   2408                    9402 _width2RollingFront9:
   2408 FF                 9403 	.byte	-1
   2409 06                 9404 	.byte	6
   240A 1C                 9405 	.byte	28
   240B FF                 9406 	.byte	-1
   240C 0F                 9407 	.byte	15
   240D FE                 9408 	.byte	-2
   240E FF                 9409 	.byte	-1
   240F FA                 9410 	.byte	-6
   2410 E5                 9411 	.byte	-27
   2411 FF                 9412 	.byte	-1
   2412 F1                 9413 	.byte	-15
   2413 01                 9414 	.byte	1
   2414 FF                 9415 	.byte	-1
   2415 FF                 9416 	.byte	-1
   2416 06                 9417 	.byte	6
   2417 00                 9418 	.byte	0
   2418 07                 9419 	.byte	7
   2419 16                 9420 	.byte	22
   241A FF                 9421 	.byte	-1
   241B FE                 9422 	.byte	-2
   241C 06                 9423 	.byte	6
   241D 00                 9424 	.byte	0
   241E 11                 9425 	.byte	17
   241F F8                 9426 	.byte	-8
   2420 FF                 9427 	.byte	-1
   2421 FE                 9428 	.byte	-2
   2422 05                 9429 	.byte	5
   2423 00                 9430 	.byte	0
   2424 FC                 9431 	.byte	-4
   2425 E0                 9432 	.byte	-32
   2426 FF                 9433 	.byte	-1
   2427 FE                 9434 	.byte	-2
   2428 04                 9435 	.byte	4
   2429 00                 9436 	.byte	0
   242A F2                 9437 	.byte	-14
   242B 03                 9438 	.byte	3
   242C FF                 9439 	.byte	-1
   242D 05                 9440 	.byte	5
   242E 1C                 9441 	.byte	28
   242F FF                 9442 	.byte	-1
   2430 0F                 9443 	.byte	15
   2431 FD                 9444 	.byte	-3
   2432 FF                 9445 	.byte	-1
   2433 FA                 9446 	.byte	-6
   2434 E4                 9447 	.byte	-28
   2435 FF                 9448 	.byte	-1
   2436 F2                 9449 	.byte	-14
   2437 03                 9450 	.byte	3
   2438 01                 9451 	.byte	1
                           9452 	.globl _width2RollingBack9
   2439                    9453 _width2RollingBack9:
   2439 00                 9454 	.byte	0
   243A 11                 9455 	.byte	17
   243B FD                 9456 	.byte	-3
   243C FF                 9457 	.byte	-1
   243D 06                 9458 	.byte	6
   243E 1B                 9459 	.byte	27
   243F FF                 9460 	.byte	-1
   2440 F7                 9461 	.byte	-9
   2441 FE                 9462 	.byte	-2
   2442 FF                 9463 	.byte	-1
   2443 FA                 9464 	.byte	-6
   2444 E5                 9465 	.byte	-27
   2445 FF                 9466 	.byte	-1
   2446 09                 9467 	.byte	9
   2447 02                 9468 	.byte	2
   2448 FF                 9469 	.byte	-1
   2449 0C                 9470 	.byte	12
   244A FB                 9471 	.byte	-5
   244B 00                 9472 	.byte	0
   244C FA                 9473 	.byte	-6
   244D 20                 9474 	.byte	32
   244E FF                 9475 	.byte	-1
   244F 0C                 9476 	.byte	12
   2450 FB                 9477 	.byte	-5
   2451 00                 9478 	.byte	0
   2452 EB                 9479 	.byte	-21
   2453 03                 9480 	.byte	3
   2454 FF                 9481 	.byte	-1
   2455 0C                 9482 	.byte	12
   2456 FA                 9483 	.byte	-6
   2457 00                 9484 	.byte	0
   2458 EE                 9485 	.byte	-18
   2459 EB                 9486 	.byte	-21
   245A FF                 9487 	.byte	-1
   245B 0C                 9488 	.byte	12
   245C FA                 9489 	.byte	-6
   245D 00                 9490 	.byte	0
   245E 09                 9491 	.byte	9
   245F 03                 9492 	.byte	3
   2460 FF                 9493 	.byte	-1
   2461 06                 9494 	.byte	6
   2462 1B                 9495 	.byte	27
   2463 FF                 9496 	.byte	-1
   2464 F7                 9497 	.byte	-9
   2465 FD                 9498 	.byte	-3
   2466 FF                 9499 	.byte	-1
   2467 FA                 9500 	.byte	-6
   2468 E5                 9501 	.byte	-27
   2469 FF                 9502 	.byte	-1
   246A 09                 9503 	.byte	9
   246B 03                 9504 	.byte	3
   246C 01                 9505 	.byte	1
                           9506 	.globl _height1FallingLeft9
   246D                    9507 _height1FallingLeft9:
   246D FF                 9508 	.byte	-1
   246E 0D                 9509 	.byte	13
   246F 05                 9510 	.byte	5
   2470 FF                 9511 	.byte	-1
   2471 08                 9512 	.byte	8
   2472 FB                 9513 	.byte	-5
   2473 FF                 9514 	.byte	-1
   2474 F3                 9515 	.byte	-13
   2475 FB                 9516 	.byte	-5
   2476 FF                 9517 	.byte	-1
   2477 F8                 9518 	.byte	-8
   2478 05                 9519 	.byte	5
   2479 FF                 9520 	.byte	-1
   247A 02                 9521 	.byte	2
   247B F4                 9522 	.byte	-12
   247C 00                 9523 	.byte	0
   247D 0B                 9524 	.byte	11
   247E 11                 9525 	.byte	17
   247F FF                 9526 	.byte	-1
   2480 02                 9527 	.byte	2
   2481 F4                 9528 	.byte	-12
   2482 00                 9529 	.byte	0
   2483 06                 9530 	.byte	6
   2484 07                 9531 	.byte	7
   2485 FF                 9532 	.byte	-1
   2486 02                 9533 	.byte	2
   2487 F3                 9534 	.byte	-13
   2488 00                 9535 	.byte	0
   2489 F1                 9536 	.byte	-15
   248A 08                 9537 	.byte	8
   248B FF                 9538 	.byte	-1
   248C 02                 9539 	.byte	2
   248D F3                 9540 	.byte	-13
   248E 00                 9541 	.byte	0
   248F F8                 9542 	.byte	-8
   2490 06                 9543 	.byte	6
   2491 FF                 9544 	.byte	-1
   2492 0D                 9545 	.byte	13
   2493 05                 9546 	.byte	5
   2494 FF                 9547 	.byte	-1
   2495 08                 9548 	.byte	8
   2496 FA                 9549 	.byte	-6
   2497 FF                 9550 	.byte	-1
   2498 F3                 9551 	.byte	-13
   2499 FB                 9552 	.byte	-5
   249A FF                 9553 	.byte	-1
   249B F8                 9554 	.byte	-8
   249C 06                 9555 	.byte	6
   249D 01                 9556 	.byte	1
                           9557 	.globl _height1FallingRight9
   249E                    9558 _height1FallingRight9:
   249E 00                 9559 	.byte	0
   249F 0E                 9560 	.byte	14
   24A0 09                 9561 	.byte	9
   24A1 FF                 9562 	.byte	-1
   24A2 F5                 9563 	.byte	-11
   24A3 05                 9564 	.byte	5
   24A4 FF                 9565 	.byte	-1
   24A5 08                 9566 	.byte	8
   24A6 FA                 9567 	.byte	-6
   24A7 FF                 9568 	.byte	-1
   24A8 0B                 9569 	.byte	11
   24A9 FB                 9570 	.byte	-5
   24AA FF                 9571 	.byte	-1
   24AB F8                 9572 	.byte	-8
   24AC 06                 9573 	.byte	6
   24AD FF                 9574 	.byte	-1
   24AE 08                 9575 	.byte	8
   24AF 0D                 9576 	.byte	13
   24B0 00                 9577 	.byte	0
   24B1 ED                 9578 	.byte	-19
   24B2 F8                 9579 	.byte	-8
   24B3 FF                 9580 	.byte	-1
   24B4 08                 9581 	.byte	8
   24B5 0D                 9582 	.byte	13
   24B6 00                 9583 	.byte	0
   24B7 00                 9584 	.byte	0
   24B8 ED                 9585 	.byte	-19
   24B9 FF                 9586 	.byte	-1
   24BA 08                 9587 	.byte	8
   24BB 0D                 9588 	.byte	13
   24BC 00                 9589 	.byte	0
   24BD 03                 9590 	.byte	3
   24BE EE                 9591 	.byte	-18
   24BF FF                 9592 	.byte	-1
   24C0 08                 9593 	.byte	8
   24C1 0D                 9594 	.byte	13
   24C2 00                 9595 	.byte	0
   24C3 F8                 9596 	.byte	-8
   24C4 06                 9597 	.byte	6
   24C5 FF                 9598 	.byte	-1
   24C6 F5                 9599 	.byte	-11
   24C7 05                 9600 	.byte	5
   24C8 FF                 9601 	.byte	-1
   24C9 08                 9602 	.byte	8
   24CA FA                 9603 	.byte	-6
   24CB FF                 9604 	.byte	-1
   24CC 0B                 9605 	.byte	11
   24CD FB                 9606 	.byte	-5
   24CE FF                 9607 	.byte	-1
   24CF F8                 9608 	.byte	-8
   24D0 06                 9609 	.byte	6
   24D1 01                 9610 	.byte	1
                           9611 	.globl _height1FallingBack9
   24D2                    9612 _height1FallingBack9:
   24D2 00                 9613 	.byte	0
   24D3 11                 9614 	.byte	17
   24D4 FD                 9615 	.byte	-3
   24D5 FF                 9616 	.byte	-1
   24D6 03                 9617 	.byte	3
   24D7 0D                 9618 	.byte	13
   24D8 FF                 9619 	.byte	-1
   24D9 F7                 9620 	.byte	-9
   24DA FE                 9621 	.byte	-2
   24DB FF                 9622 	.byte	-1
   24DC FD                 9623 	.byte	-3
   24DD F3                 9624 	.byte	-13
   24DE FF                 9625 	.byte	-1
   24DF 09                 9626 	.byte	9
   24E0 02                 9627 	.byte	2
   24E1 FF                 9628 	.byte	-1
   24E2 0C                 9629 	.byte	12
   24E3 FB                 9630 	.byte	-5
   24E4 00                 9631 	.byte	0
   24E5 F7                 9632 	.byte	-9
   24E6 12                 9633 	.byte	18
   24E7 FF                 9634 	.byte	-1
   24E8 0C                 9635 	.byte	12
   24E9 FB                 9636 	.byte	-5
   24EA 00                 9637 	.byte	0
   24EB EB                 9638 	.byte	-21
   24EC 03                 9639 	.byte	3
   24ED FF                 9640 	.byte	-1
   24EE 0C                 9641 	.byte	12
   24EF FA                 9642 	.byte	-6
   24F0 00                 9643 	.byte	0
   24F1 F1                 9644 	.byte	-15
   24F2 F9                 9645 	.byte	-7
   24F3 FF                 9646 	.byte	-1
   24F4 0C                 9647 	.byte	12
   24F5 FA                 9648 	.byte	-6
   24F6 00                 9649 	.byte	0
   24F7 09                 9650 	.byte	9
   24F8 03                 9651 	.byte	3
   24F9 FF                 9652 	.byte	-1
   24FA 03                 9653 	.byte	3
   24FB 0D                 9654 	.byte	13
   24FC FF                 9655 	.byte	-1
   24FD F7                 9656 	.byte	-9
   24FE FD                 9657 	.byte	-3
   24FF FF                 9658 	.byte	-1
   2500 FD                 9659 	.byte	-3
   2501 F3                 9660 	.byte	-13
   2502 FF                 9661 	.byte	-1
   2503 09                 9662 	.byte	9
   2504 03                 9663 	.byte	3
   2505 01                 9664 	.byte	1
                           9665 	.globl _height1FallingFront9
   2506                    9666 _height1FallingFront9:
   2506 FF                 9667 	.byte	-1
   2507 03                 9668 	.byte	3
   2508 0E                 9669 	.byte	14
   2509 FF                 9670 	.byte	-1
   250A 0F                 9671 	.byte	15
   250B FE                 9672 	.byte	-2
   250C FF                 9673 	.byte	-1
   250D FD                 9674 	.byte	-3
   250E F3                 9675 	.byte	-13
   250F FF                 9676 	.byte	-1
   2510 F1                 9677 	.byte	-15
   2511 01                 9678 	.byte	1
   2512 FF                 9679 	.byte	-1
   2513 FF                 9680 	.byte	-1
   2514 06                 9681 	.byte	6
   2515 00                 9682 	.byte	0
   2516 04                 9683 	.byte	4
   2517 08                 9684 	.byte	8
   2518 FF                 9685 	.byte	-1
   2519 FE                 9686 	.byte	-2
   251A 06                 9687 	.byte	6
   251B 00                 9688 	.byte	0
   251C 11                 9689 	.byte	17
   251D F8                 9690 	.byte	-8
   251E FF                 9691 	.byte	-1
   251F FE                 9692 	.byte	-2
   2520 05                 9693 	.byte	5
   2521 00                 9694 	.byte	0
   2522 FF                 9695 	.byte	-1
   2523 EE                 9696 	.byte	-18
   2524 FF                 9697 	.byte	-1
   2525 FE                 9698 	.byte	-2
   2526 04                 9699 	.byte	4
   2527 00                 9700 	.byte	0
   2528 F2                 9701 	.byte	-14
   2529 03                 9702 	.byte	3
   252A FF                 9703 	.byte	-1
   252B 02                 9704 	.byte	2
   252C 0E                 9705 	.byte	14
   252D FF                 9706 	.byte	-1
   252E 0F                 9707 	.byte	15
   252F FD                 9708 	.byte	-3
   2530 FF                 9709 	.byte	-1
   2531 FD                 9710 	.byte	-3
   2532 F2                 9711 	.byte	-14
   2533 FF                 9712 	.byte	-1
   2534 F2                 9713 	.byte	-14
   2535 03                 9714 	.byte	3
   2536 01                 9715 	.byte	1
                           9716 	.globl _height2FallingLeft10
   2537                    9717 _height2FallingLeft10:
   2537 FF                 9718 	.byte	-1
   2538 0D                 9719 	.byte	13
   2539 04                 9720 	.byte	4
   253A FF                 9721 	.byte	-1
   253B 08                 9722 	.byte	8
   253C FB                 9723 	.byte	-5
   253D FF                 9724 	.byte	-1
   253E F3                 9725 	.byte	-13
   253F FC                 9726 	.byte	-4
   2540 FF                 9727 	.byte	-1
   2541 F8                 9728 	.byte	-8
   2542 05                 9729 	.byte	5
   2543 FF                 9730 	.byte	-1
   2544 01                 9731 	.byte	1
   2545 E6                 9732 	.byte	-26
   2546 00                 9733 	.byte	0
   2547 0C                 9734 	.byte	12
   2548 1E                 9735 	.byte	30
   2549 FF                 9736 	.byte	-1
   254A 01                 9737 	.byte	1
   254B E6                 9738 	.byte	-26
   254C 00                 9739 	.byte	0
   254D 07                 9740 	.byte	7
   254E 15                 9741 	.byte	21
   254F FF                 9742 	.byte	-1
   2550 01                 9743 	.byte	1
   2551 E5                 9744 	.byte	-27
   2552 00                 9745 	.byte	0
   2553 F2                 9746 	.byte	-14
   2554 17                 9747 	.byte	23
   2555 FF                 9748 	.byte	-1
   2556 01                 9749 	.byte	1
   2557 E5                 9750 	.byte	-27
   2558 00                 9751 	.byte	0
   2559 F8                 9752 	.byte	-8
   255A 06                 9753 	.byte	6
   255B FF                 9754 	.byte	-1
   255C 0D                 9755 	.byte	13
   255D 04                 9756 	.byte	4
   255E FF                 9757 	.byte	-1
   255F 08                 9758 	.byte	8
   2560 FA                 9759 	.byte	-6
   2561 FF                 9760 	.byte	-1
   2562 F3                 9761 	.byte	-13
   2563 FC                 9762 	.byte	-4
   2564 FF                 9763 	.byte	-1
   2565 F8                 9764 	.byte	-8
   2566 06                 9765 	.byte	6
   2567 01                 9766 	.byte	1
                           9767 	.globl _height2RisingRight10
   2568                    9768 _height2RisingRight10:
   2568 00                 9769 	.byte	0
   2569 06                 9770 	.byte	6
   256A 1C                 9771 	.byte	28
   256B FF                 9772 	.byte	-1
   256C 05                 9773 	.byte	5
   256D 0E                 9774 	.byte	14
   256E FF                 9775 	.byte	-1
   256F 08                 9776 	.byte	8
   2570 FA                 9777 	.byte	-6
   2571 FF                 9778 	.byte	-1
   2572 FB                 9779 	.byte	-5
   2573 F2                 9780 	.byte	-14
   2574 FF                 9781 	.byte	-1
   2575 F8                 9782 	.byte	-8
   2576 06                 9783 	.byte	6
   2577 FF                 9784 	.byte	-1
   2578 19                 9785 	.byte	25
   2579 FC                 9786 	.byte	-4
   257A 00                 9787 	.byte	0
   257B EC                 9788 	.byte	-20
   257C 12                 9789 	.byte	18
   257D FF                 9790 	.byte	-1
   257E 19                 9791 	.byte	25
   257F FC                 9792 	.byte	-4
   2580 00                 9793 	.byte	0
   2581 EF                 9794 	.byte	-17
   2582 FE                 9795 	.byte	-2
   2583 FF                 9796 	.byte	-1
   2584 19                 9797 	.byte	25
   2585 FC                 9798 	.byte	-4
   2586 00                 9799 	.byte	0
   2587 E2                 9800 	.byte	-30
   2588 F6                 9801 	.byte	-10
   2589 FF                 9802 	.byte	-1
   258A 19                 9803 	.byte	25
   258B FC                 9804 	.byte	-4
   258C 00                 9805 	.byte	0
   258D F8                 9806 	.byte	-8
   258E 06                 9807 	.byte	6
   258F FF                 9808 	.byte	-1
   2590 05                 9809 	.byte	5
   2591 0E                 9810 	.byte	14
   2592 FF                 9811 	.byte	-1
   2593 08                 9812 	.byte	8
   2594 FA                 9813 	.byte	-6
   2595 FF                 9814 	.byte	-1
   2596 FB                 9815 	.byte	-5
   2597 F2                 9816 	.byte	-14
   2598 FF                 9817 	.byte	-1
   2599 F8                 9818 	.byte	-8
   259A 06                 9819 	.byte	6
   259B 01                 9820 	.byte	1
                           9821 	.globl _height2FallingRight10
   259C                    9822 _height2FallingRight10:
   259C 00                 9823 	.byte	0
   259D 0F                 9824 	.byte	15
   259E 0A                 9825 	.byte	10
   259F FF                 9826 	.byte	-1
   25A0 F4                 9827 	.byte	-12
   25A1 04                 9828 	.byte	4
   25A2 FF                 9829 	.byte	-1
   25A3 08                 9830 	.byte	8
   25A4 FA                 9831 	.byte	-6
   25A5 FF                 9832 	.byte	-1
   25A6 0C                 9833 	.byte	12
   25A7 FC                 9834 	.byte	-4
   25A8 FF                 9835 	.byte	-1
   25A9 F8                 9836 	.byte	-8
   25AA 06                 9837 	.byte	6
   25AB FF                 9838 	.byte	-1
   25AC 0C                 9839 	.byte	12
   25AD 1B                 9840 	.byte	27
   25AE 00                 9841 	.byte	0
   25AF E8                 9842 	.byte	-24
   25B0 E9                 9843 	.byte	-23
   25B1 FF                 9844 	.byte	-1
   25B2 0D                 9845 	.byte	13
   25B3 1B                 9846 	.byte	27
   25B4 00                 9847 	.byte	0
   25B5 FB                 9848 	.byte	-5
   25B6 DF                 9849 	.byte	-33
   25B7 FF                 9850 	.byte	-1
   25B8 0D                 9851 	.byte	13
   25B9 1B                 9852 	.byte	27
   25BA 00                 9853 	.byte	0
   25BB FF                 9854 	.byte	-1
   25BC E1                 9855 	.byte	-31
   25BD FF                 9856 	.byte	-1
   25BE 0C                 9857 	.byte	12
   25BF 1B                 9858 	.byte	27
   25C0 00                 9859 	.byte	0
   25C1 F8                 9860 	.byte	-8
   25C2 06                 9861 	.byte	6
   25C3 FF                 9862 	.byte	-1
   25C4 F5                 9863 	.byte	-11
   25C5 04                 9864 	.byte	4
   25C6 FF                 9865 	.byte	-1
   25C7 08                 9866 	.byte	8
   25C8 FA                 9867 	.byte	-6
   25C9 FF                 9868 	.byte	-1
   25CA 0B                 9869 	.byte	11
   25CB FC                 9870 	.byte	-4
   25CC FF                 9871 	.byte	-1
   25CD F8                 9872 	.byte	-8
   25CE 06                 9873 	.byte	6
   25CF 01                 9874 	.byte	1
                           9875 	.globl _height2RisingLeft10
   25D0                    9876 _height2RisingLeft10:
   25D0 00                 9877 	.byte	0
   25D1 00                 9878 	.byte	0
   25D2 F3                 9879 	.byte	-13
   25D3 FF                 9880 	.byte	-1
   25D4 00                 9881 	.byte	0
   25D5 0D                 9882 	.byte	13
   25D6 FF                 9883 	.byte	-1
   25D7 08                 9884 	.byte	8
   25D8 FB                 9885 	.byte	-5
   25D9 FF                 9886 	.byte	-1
   25DA FF                 9887 	.byte	-1
   25DB F2                 9888 	.byte	-14
   25DC FF                 9889 	.byte	-1
   25DD F9                 9890 	.byte	-7
   25DE 06                 9891 	.byte	6
   25DF FF                 9892 	.byte	-1
   25E0 19                 9893 	.byte	25
   25E1 04                 9894 	.byte	4
   25E2 00                 9895 	.byte	0
   25E3 E7                 9896 	.byte	-25
   25E4 09                 9897 	.byte	9
   25E5 FF                 9898 	.byte	-1
   25E6 1B                 9899 	.byte	27
   25E7 04                 9900 	.byte	4
   25E8 00                 9901 	.byte	0
   25E9 ED                 9902 	.byte	-19
   25EA F7                 9903 	.byte	-9
   25EB FF                 9904 	.byte	-1
   25EC 1B                 9905 	.byte	27
   25ED 04                 9906 	.byte	4
   25EE 00                 9907 	.byte	0
   25EF E4                 9908 	.byte	-28
   25F0 EE                 9909 	.byte	-18
   25F1 FF                 9910 	.byte	-1
   25F2 1A                 9911 	.byte	26
   25F3 04                 9912 	.byte	4
   25F4 00                 9913 	.byte	0
   25F5 F8                 9914 	.byte	-8
   25F6 06                 9915 	.byte	6
   25F7 FF                 9916 	.byte	-1
   25F8 02                 9917 	.byte	2
   25F9 0D                 9918 	.byte	13
   25FA FF                 9919 	.byte	-1
   25FB 08                 9920 	.byte	8
   25FC FB                 9921 	.byte	-5
   25FD FF                 9922 	.byte	-1
   25FE FE                 9923 	.byte	-2
   25FF F2                 9924 	.byte	-14
   2600 FF                 9925 	.byte	-1
   2601 F8                 9926 	.byte	-8
   2602 06                 9927 	.byte	6
   2603 01                 9928 	.byte	1
                           9929 	.globl _height2FallingBack10
   2604                    9930 _height2FallingBack10:
   2604 00                 9931 	.byte	0
   2605 12                 9932 	.byte	18
   2606 FD                 9933 	.byte	-3
   2607 FF                 9934 	.byte	-1
   2608 03                 9935 	.byte	3
   2609 0D                 9936 	.byte	13
   260A FF                 9937 	.byte	-1
   260B F6                 9938 	.byte	-10
   260C FE                 9939 	.byte	-2
   260D FF                 9940 	.byte	-1
   260E FD                 9941 	.byte	-3
   260F F3                 9942 	.byte	-13
   2610 FF                 9943 	.byte	-1
   2611 0A                 9944 	.byte	10
   2612 02                 9945 	.byte	2
   2613 FF                 9946 	.byte	-1
   2614 17                 9947 	.byte	23
   2615 F4                 9948 	.byte	-12
   2616 00                 9949 	.byte	0
   2617 EC                 9950 	.byte	-20
   2618 19                 9951 	.byte	25
   2619 FF                 9952 	.byte	-1
   261A 17                 9953 	.byte	23
   261B F5                 9954 	.byte	-11
   261C 00                 9955 	.byte	0
   261D DF                 9956 	.byte	-33
   261E 09                 9957 	.byte	9
   261F FF                 9958 	.byte	-1
   2620 16                 9959 	.byte	22
   2621 F5                 9960 	.byte	-11
   2622 00                 9961 	.byte	0
   2623 E7                 9962 	.byte	-25
   2624 FE                 9963 	.byte	-2
   2625 FF                 9964 	.byte	-1
   2626 16                 9965 	.byte	22
   2627 F4                 9966 	.byte	-12
   2628 00                 9967 	.byte	0
   2629 0B                 9968 	.byte	11
   262A 02                 9969 	.byte	2
   262B FF                 9970 	.byte	-1
   262C 03                 9971 	.byte	3
   262D 0E                 9972 	.byte	14
   262E FF                 9973 	.byte	-1
   262F F5                 9974 	.byte	-11
   2630 FE                 9975 	.byte	-2
   2631 FF                 9976 	.byte	-1
   2632 FD                 9977 	.byte	-3
   2633 F2                 9978 	.byte	-14
   2634 FF                 9979 	.byte	-1
   2635 0B                 9980 	.byte	11
   2636 02                 9981 	.byte	2
   2637 01                 9982 	.byte	1
                           9983 	.globl _height2RisingFront10
   2638                    9984 _height2RisingFront10:
   2638 00                 9985 	.byte	0
   2639 FB                 9986 	.byte	-5
   263A 06                 9987 	.byte	6
   263B FF                 9988 	.byte	-1
   263C 03                 9989 	.byte	3
   263D 0E                 9990 	.byte	14
   263E FF                 9991 	.byte	-1
   263F 05                 9992 	.byte	5
   2640 FA                 9993 	.byte	-6
   2641 FF                 9994 	.byte	-1
   2642 FD                 9995 	.byte	-3
   2643 F2                 9996 	.byte	-14
   2644 FF                 9997 	.byte	-1
   2645 FB                 9998 	.byte	-5
   2646 06                 9999 	.byte	6
   2647 FF                10000 	.byte	-1
   2648 1B                10001 	.byte	27
   2649 FE                10002 	.byte	-2
   264A 00                10003 	.byte	0
   264B E8                10004 	.byte	-24
   264C 10                10005 	.byte	16
   264D FF                10006 	.byte	-1
   264E 1B                10007 	.byte	27
   264F FE                10008 	.byte	-2
   2650 00                10009 	.byte	0
   2651 EA                10010 	.byte	-22
   2652 FC                10011 	.byte	-4
   2653 FF                10012 	.byte	-1
   2654 1C                10013 	.byte	28
   2655 FE                10014 	.byte	-2
   2656 00                10015 	.byte	0
   2657 E1                10016 	.byte	-31
   2658 F4                10017 	.byte	-12
   2659 FF                10018 	.byte	-1
   265A 1C                10019 	.byte	28
   265B FF                10020 	.byte	-1
   265C 00                10021 	.byte	0
   265D FA                10022 	.byte	-6
   265E 05                10023 	.byte	5
   265F FF                10024 	.byte	-1
   2660 03                10025 	.byte	3
   2661 0E                10026 	.byte	14
   2662 FF                10027 	.byte	-1
   2663 06                10028 	.byte	6
   2664 FA                10029 	.byte	-6
   2665 FF                10030 	.byte	-1
   2666 FD                10031 	.byte	-3
   2667 F3                10032 	.byte	-13
   2668 FF                10033 	.byte	-1
   2669 FA                10034 	.byte	-6
   266A 05                10035 	.byte	5
   266B 01                10036 	.byte	1
                          10037 	.globl _height2FallingFront10
   266C                   10038 _height2FallingFront10:
   266C FF                10039 	.byte	-1
   266D 03                10040 	.byte	3
   266E 0E                10041 	.byte	14
   266F FF                10042 	.byte	-1
   2670 0F                10043 	.byte	15
   2671 FE                10044 	.byte	-2
   2672 FF                10045 	.byte	-1
   2673 FD                10046 	.byte	-3
   2674 F3                10047 	.byte	-13
   2675 FF                10048 	.byte	-1
   2676 F1                10049 	.byte	-15
   2677 01                10050 	.byte	1
   2678 FF                10051 	.byte	-1
   2679 F8                10052 	.byte	-8
   267A 0C                10053 	.byte	12
   267B 00                10054 	.byte	0
   267C 0B                10055 	.byte	11
   267D 02                10056 	.byte	2
   267E FF                10057 	.byte	-1
   267F F8                10058 	.byte	-8
   2680 0C                10059 	.byte	12
   2681 00                10060 	.byte	0
   2682 17                10061 	.byte	23
   2683 F2                10062 	.byte	-14
   2684 FF                10063 	.byte	-1
   2685 F7                10064 	.byte	-9
   2686 0C                10065 	.byte	12
   2687 00                10066 	.byte	0
   2688 06                10067 	.byte	6
   2689 E7                10068 	.byte	-25
   268A FF                10069 	.byte	-1
   268B F7                10070 	.byte	-9
   268C 0B                10071 	.byte	11
   268D 00                10072 	.byte	0
   268E F2                10073 	.byte	-14
   268F 02                10074 	.byte	2
   2690 FF                10075 	.byte	-1
   2691 03                10076 	.byte	3
   2692 0E                10077 	.byte	14
   2693 FF                10078 	.byte	-1
   2694 0E                10079 	.byte	14
   2695 FE                10080 	.byte	-2
   2696 FF                10081 	.byte	-1
   2697 FD                10082 	.byte	-3
   2698 F2                10083 	.byte	-14
   2699 FF                10084 	.byte	-1
   269A F2                10085 	.byte	-14
   269B 02                10086 	.byte	2
   269C 01                10087 	.byte	1
                          10088 	.globl _height2RisingBack10
   269D                   10089 _height2RisingBack10:
   269D 00                10090 	.byte	0
   269E 10                10091 	.byte	16
   269F F5                10092 	.byte	-11
   26A0 FF                10093 	.byte	-1
   26A1 03                10094 	.byte	3
   26A2 0D                10095 	.byte	13
   26A3 FF                10096 	.byte	-1
   26A4 0A                10097 	.byte	10
   26A5 FB                10098 	.byte	-5
   26A6 FF                10099 	.byte	-1
   26A7 FD                10100 	.byte	-3
   26A8 F2                10101 	.byte	-14
   26A9 FF                10102 	.byte	-1
   26AA F6                10103 	.byte	-10
   26AB 06                10104 	.byte	6
   26AC FF                10105 	.byte	-1
   26AD 18                10106 	.byte	24
   26AE 02                10107 	.byte	2
   26AF 00                10108 	.byte	0
   26B0 EB                10109 	.byte	-21
   26B1 0B                10110 	.byte	11
   26B2 FF                10111 	.byte	-1
   26B3 18                10112 	.byte	24
   26B4 02                10113 	.byte	2
   26B5 00                10114 	.byte	0
   26B6 F2                10115 	.byte	-14
   26B7 F9                10116 	.byte	-7
   26B8 FF                10117 	.byte	-1
   26B9 17                10118 	.byte	23
   26BA 02                10119 	.byte	2
   26BB 00                10120 	.byte	0
   26BC E6                10121 	.byte	-26
   26BD F0                10122 	.byte	-16
   26BE FF                10123 	.byte	-1
   26BF 17                10124 	.byte	23
   26C0 02                10125 	.byte	2
   26C1 00                10126 	.byte	0
   26C2 F7                10127 	.byte	-9
   26C3 06                10128 	.byte	6
   26C4 FF                10129 	.byte	-1
   26C5 03                10130 	.byte	3
   26C6 0D                10131 	.byte	13
   26C7 FF                10132 	.byte	-1
   26C8 09                10133 	.byte	9
   26C9 FB                10134 	.byte	-5
   26CA FF                10135 	.byte	-1
   26CB FD                10136 	.byte	-3
   26CC F2                10137 	.byte	-14
   26CD FF                10138 	.byte	-1
   26CE F7                10139 	.byte	-9
   26CF 06                10140 	.byte	6
   26D0 01                10141 	.byte	1
                          10142 	.globl _depth2RollingLeft10
   26D1                   10143 _depth2RollingLeft10:
   26D1 FF                10144 	.byte	-1
   26D2 0D                10145 	.byte	13
   26D3 04                10146 	.byte	4
   26D4 FF                10147 	.byte	-1
   26D5 10                10148 	.byte	16
   26D6 F5                10149 	.byte	-11
   26D7 FF                10150 	.byte	-1
   26D8 F3                10151 	.byte	-13
   26D9 FC                10152 	.byte	-4
   26DA FF                10153 	.byte	-1
   26DB F0                10154 	.byte	-16
   26DC 0B                10155 	.byte	11
   26DD FF                10156 	.byte	-1
   26DE 00                10157 	.byte	0
   26DF F3                10158 	.byte	-13
   26E0 00                10159 	.byte	0
   26E1 0D                10160 	.byte	13
   26E2 11                10161 	.byte	17
   26E3 FF                10162 	.byte	-1
   26E4 01                10163 	.byte	1
   26E5 F3                10164 	.byte	-13
   26E6 00                10165 	.byte	0
   26E7 0F                10166 	.byte	15
   26E8 02                10167 	.byte	2
   26E9 FF                10168 	.byte	-1
   26EA 01                10169 	.byte	1
   26EB F2                10170 	.byte	-14
   26EC 00                10171 	.byte	0
   26ED F2                10172 	.byte	-14
   26EE 0A                10173 	.byte	10
   26EF FF                10174 	.byte	-1
   26F0 00                10175 	.byte	0
   26F1 F2                10176 	.byte	-14
   26F2 00                10177 	.byte	0
   26F3 F0                10178 	.byte	-16
   26F4 0C                10179 	.byte	12
   26F5 FF                10180 	.byte	-1
   26F6 0E                10181 	.byte	14
   26F7 04                10182 	.byte	4
   26F8 FF                10183 	.byte	-1
   26F9 10                10184 	.byte	16
   26FA F4                10185 	.byte	-12
   26FB FF                10186 	.byte	-1
   26FC F2                10187 	.byte	-14
   26FD FC                10188 	.byte	-4
   26FE FF                10189 	.byte	-1
   26FF F0                10190 	.byte	-16
   2700 0C                10191 	.byte	12
   2701 01                10192 	.byte	1
                          10193 	.globl _depth2RollingRight10
   2702                   10194 _depth2RollingRight10:
   2702 00                10195 	.byte	0
   2703 0F                10196 	.byte	15
   2704 0A                10197 	.byte	10
   2705 FF                10198 	.byte	-1
   2706 F4                10199 	.byte	-12
   2707 04                10200 	.byte	4
   2708 FF                10201 	.byte	-1
   2709 10                10202 	.byte	16
   270A F4                10203 	.byte	-12
   270B FF                10204 	.byte	-1
   270C 0C                10205 	.byte	12
   270D FD                10206 	.byte	-3
   270E FF                10207 	.byte	-1
   270F F0                10208 	.byte	-16
   2710 0B                10209 	.byte	11
   2711 FF                10210 	.byte	-1
   2712 06                10211 	.byte	6
   2713 0E                10212 	.byte	14
   2714 00                10213 	.byte	0
   2715 EE                10214 	.byte	-18
   2716 F6                10215 	.byte	-10
   2717 FF                10216 	.byte	-1
   2718 06                10217 	.byte	6
   2719 0E                10218 	.byte	14
   271A 00                10219 	.byte	0
   271B 0A                10220 	.byte	10
   271C E6                10221 	.byte	-26
   271D FF                10222 	.byte	-1
   271E 06                10223 	.byte	6
   271F 0E                10224 	.byte	14
   2720 00                10225 	.byte	0
   2721 06                10226 	.byte	6
   2722 EF                10227 	.byte	-17
   2723 FF                10228 	.byte	-1
   2724 06                10229 	.byte	6
   2725 0D                10230 	.byte	13
   2726 00                10231 	.byte	0
   2727 F0                10232 	.byte	-16
   2728 0C                10233 	.byte	12
   2729 FF                10234 	.byte	-1
   272A F4                10235 	.byte	-12
   272B 04                10236 	.byte	4
   272C FF                10237 	.byte	-1
   272D 10                10238 	.byte	16
   272E F4                10239 	.byte	-12
   272F FF                10240 	.byte	-1
   2730 0C                10241 	.byte	12
   2731 FC                10242 	.byte	-4
   2732 FF                10243 	.byte	-1
   2733 F0                10244 	.byte	-16
   2734 0C                10245 	.byte	12
   2735 01                10246 	.byte	1
                          10247 	.globl _width2RollingFront10
   2736                   10248 _width2RollingFront10:
   2736 FF                10249 	.byte	-1
   2737 06                10250 	.byte	6
   2738 1C                10251 	.byte	28
   2739 FF                10252 	.byte	-1
   273A 0F                10253 	.byte	15
   273B FE                10254 	.byte	-2
   273C FF                10255 	.byte	-1
   273D FA                10256 	.byte	-6
   273E E5                10257 	.byte	-27
   273F FF                10258 	.byte	-1
   2740 F1                10259 	.byte	-15
   2741 01                10260 	.byte	1
   2742 FF                10261 	.byte	-1
   2743 FD                10262 	.byte	-3
   2744 06                10263 	.byte	6
   2745 00                10264 	.byte	0
   2746 09                10265 	.byte	9
   2747 16                10266 	.byte	22
   2748 FF                10267 	.byte	-1
   2749 FC                10268 	.byte	-4
   274A 06                10269 	.byte	6
   274B 00                10270 	.byte	0
   274C 13                10271 	.byte	19
   274D F8                10272 	.byte	-8
   274E FF                10273 	.byte	-1
   274F FB                10274 	.byte	-5
   2750 06                10275 	.byte	6
   2751 00                10276 	.byte	0
   2752 FF                10277 	.byte	-1
   2753 DF                10278 	.byte	-33
   2754 FF                10279 	.byte	-1
   2755 FB                10280 	.byte	-5
   2756 05                10281 	.byte	5
   2757 00                10282 	.byte	0
   2758 F3                10283 	.byte	-13
   2759 02                10284 	.byte	2
   275A FF                10285 	.byte	-1
   275B 05                10286 	.byte	5
   275C 1C                10287 	.byte	28
   275D FF                10288 	.byte	-1
   275E 0E                10289 	.byte	14
   275F FE                10290 	.byte	-2
   2760 FF                10291 	.byte	-1
   2761 FA                10292 	.byte	-6
   2762 E4                10293 	.byte	-28
   2763 FF                10294 	.byte	-1
   2764 F3                10295 	.byte	-13
   2765 02                10296 	.byte	2
   2766 01                10297 	.byte	1
                          10298 	.globl _width2RollingBack10
   2767                   10299 _width2RollingBack10:
   2767 00                10300 	.byte	0
   2768 12                10301 	.byte	18
   2769 FD                10302 	.byte	-3
   276A FF                10303 	.byte	-1
   276B 06                10304 	.byte	6
   276C 1B                10305 	.byte	27
   276D FF                10306 	.byte	-1
   276E F6                10307 	.byte	-10
   276F FE                10308 	.byte	-2
   2770 FF                10309 	.byte	-1
   2771 FA                10310 	.byte	-6
   2772 E5                10311 	.byte	-27
   2773 FF                10312 	.byte	-1
   2774 0A                10313 	.byte	10
   2775 02                10314 	.byte	2
   2776 FF                10315 	.byte	-1
   2777 0C                10316 	.byte	12
   2778 FA                10317 	.byte	-6
   2779 00                10318 	.byte	0
   277A FA                10319 	.byte	-6
   277B 21                10320 	.byte	33
   277C FF                10321 	.byte	-1
   277D 0C                10322 	.byte	12
   277E FA                10323 	.byte	-6
   277F 00                10324 	.byte	0
   2780 EA                10325 	.byte	-22
   2781 04                10326 	.byte	4
   2782 FF                10327 	.byte	-1
   2783 0B                10328 	.byte	11
   2784 FA                10329 	.byte	-6
   2785 00                10330 	.byte	0
   2786 EF                10331 	.byte	-17
   2787 EB                10332 	.byte	-21
   2788 FF                10333 	.byte	-1
   2789 0B                10334 	.byte	11
   278A FA                10335 	.byte	-6
   278B 00                10336 	.byte	0
   278C 0B                10337 	.byte	11
   278D 02                10338 	.byte	2
   278E FF                10339 	.byte	-1
   278F 06                10340 	.byte	6
   2790 1B                10341 	.byte	27
   2791 FF                10342 	.byte	-1
   2792 F5                10343 	.byte	-11
   2793 FE                10344 	.byte	-2
   2794 FF                10345 	.byte	-1
   2795 FA                10346 	.byte	-6
   2796 E5                10347 	.byte	-27
   2797 FF                10348 	.byte	-1
   2798 0B                10349 	.byte	11
   2799 02                10350 	.byte	2
   279A 01                10351 	.byte	1
                          10352 	.globl _height1FallingLeft10
   279B                   10353 _height1FallingLeft10:
   279B FF                10354 	.byte	-1
   279C 0D                10355 	.byte	13
   279D 04                10356 	.byte	4
   279E FF                10357 	.byte	-1
   279F 08                10358 	.byte	8
   27A0 FB                10359 	.byte	-5
   27A1 FF                10360 	.byte	-1
   27A2 F3                10361 	.byte	-13
   27A3 FC                10362 	.byte	-4
   27A4 FF                10363 	.byte	-1
   27A5 F8                10364 	.byte	-8
   27A6 05                10365 	.byte	5
   27A7 FF                10366 	.byte	-1
   27A8 00                10367 	.byte	0
   27A9 F3                10368 	.byte	-13
   27AA 00                10369 	.byte	0
   27AB 0D                10370 	.byte	13
   27AC 11                10371 	.byte	17
   27AD FF                10372 	.byte	-1
   27AE 01                10373 	.byte	1
   27AF F3                10374 	.byte	-13
   27B0 00                10375 	.byte	0
   27B1 07                10376 	.byte	7
   27B2 08                10377 	.byte	8
   27B3 FF                10378 	.byte	-1
   27B4 01                10379 	.byte	1
   27B5 F2                10380 	.byte	-14
   27B6 00                10381 	.byte	0
   27B7 F2                10382 	.byte	-14
   27B8 0A                10383 	.byte	10
   27B9 FF                10384 	.byte	-1
   27BA 00                10385 	.byte	0
   27BB F2                10386 	.byte	-14
   27BC 00                10387 	.byte	0
   27BD F8                10388 	.byte	-8
   27BE 06                10389 	.byte	6
   27BF FF                10390 	.byte	-1
   27C0 0E                10391 	.byte	14
   27C1 04                10392 	.byte	4
   27C2 FF                10393 	.byte	-1
   27C3 08                10394 	.byte	8
   27C4 FA                10395 	.byte	-6
   27C5 FF                10396 	.byte	-1
   27C6 F2                10397 	.byte	-14
   27C7 FC                10398 	.byte	-4
   27C8 FF                10399 	.byte	-1
   27C9 F8                10400 	.byte	-8
   27CA 06                10401 	.byte	6
   27CB 01                10402 	.byte	1
                          10403 	.globl _height1FallingRight10
   27CC                   10404 _height1FallingRight10:
   27CC 00                10405 	.byte	0
   27CD 0F                10406 	.byte	15
   27CE 0A                10407 	.byte	10
   27CF FF                10408 	.byte	-1
   27D0 F4                10409 	.byte	-12
   27D1 04                10410 	.byte	4
   27D2 FF                10411 	.byte	-1
   27D3 08                10412 	.byte	8
   27D4 FA                10413 	.byte	-6
   27D5 FF                10414 	.byte	-1
   27D6 0C                10415 	.byte	12
   27D7 FC                10416 	.byte	-4
   27D8 FF                10417 	.byte	-1
   27D9 F8                10418 	.byte	-8
   27DA 06                10419 	.byte	6
   27DB FF                10420 	.byte	-1
   27DC 06                10421 	.byte	6
   27DD 0E                10422 	.byte	14
   27DE 00                10423 	.byte	0
   27DF EE                10424 	.byte	-18
   27E0 F6                10425 	.byte	-10
   27E1 FF                10426 	.byte	-1
   27E2 06                10427 	.byte	6
   27E3 0E                10428 	.byte	14
   27E4 00                10429 	.byte	0
   27E5 02                10430 	.byte	2
   27E6 EC                10431 	.byte	-20
   27E7 FF                10432 	.byte	-1
   27E8 06                10433 	.byte	6
   27E9 0E                10434 	.byte	14
   27EA 00                10435 	.byte	0
   27EB 06                10436 	.byte	6
   27EC EE                10437 	.byte	-18
   27ED FF                10438 	.byte	-1
   27EE 06                10439 	.byte	6
   27EF 0E                10440 	.byte	14
   27F0 00                10441 	.byte	0
   27F1 F8                10442 	.byte	-8
   27F2 06                10443 	.byte	6
   27F3 FF                10444 	.byte	-1
   27F4 F4                10445 	.byte	-12
   27F5 04                10446 	.byte	4
   27F6 FF                10447 	.byte	-1
   27F7 08                10448 	.byte	8
   27F8 FA                10449 	.byte	-6
   27F9 FF                10450 	.byte	-1
   27FA 0C                10451 	.byte	12
   27FB FC                10452 	.byte	-4
   27FC FF                10453 	.byte	-1
   27FD F8                10454 	.byte	-8
   27FE 06                10455 	.byte	6
   27FF 01                10456 	.byte	1
                          10457 	.globl _height1FallingBack10
   2800                   10458 _height1FallingBack10:
   2800 00                10459 	.byte	0
   2801 12                10460 	.byte	18
   2802 FD                10461 	.byte	-3
   2803 FF                10462 	.byte	-1
   2804 03                10463 	.byte	3
   2805 0D                10464 	.byte	13
   2806 FF                10465 	.byte	-1
   2807 F6                10466 	.byte	-10
   2808 FE                10467 	.byte	-2
   2809 FF                10468 	.byte	-1
   280A FD                10469 	.byte	-3
   280B F3                10470 	.byte	-13
   280C FF                10471 	.byte	-1
   280D 0A                10472 	.byte	10
   280E 02                10473 	.byte	2
   280F FF                10474 	.byte	-1
   2810 0C                10475 	.byte	12
   2811 FA                10476 	.byte	-6
   2812 00                10477 	.byte	0
   2813 F7                10478 	.byte	-9
   2814 13                10479 	.byte	19
   2815 FF                10480 	.byte	-1
   2816 0C                10481 	.byte	12
   2817 FA                10482 	.byte	-6
   2818 00                10483 	.byte	0
   2819 EA                10484 	.byte	-22
   281A 04                10485 	.byte	4
   281B FF                10486 	.byte	-1
   281C 0B                10487 	.byte	11
   281D FA                10488 	.byte	-6
   281E 00                10489 	.byte	0
   281F F2                10490 	.byte	-14
   2820 F9                10491 	.byte	-7
   2821 FF                10492 	.byte	-1
   2822 0B                10493 	.byte	11
   2823 FA                10494 	.byte	-6
   2824 00                10495 	.byte	0
   2825 0B                10496 	.byte	11
   2826 02                10497 	.byte	2
   2827 FF                10498 	.byte	-1
   2828 03                10499 	.byte	3
   2829 0D                10500 	.byte	13
   282A FF                10501 	.byte	-1
   282B F5                10502 	.byte	-11
   282C FE                10503 	.byte	-2
   282D FF                10504 	.byte	-1
   282E FD                10505 	.byte	-3
   282F F3                10506 	.byte	-13
   2830 FF                10507 	.byte	-1
   2831 0B                10508 	.byte	11
   2832 02                10509 	.byte	2
   2833 01                10510 	.byte	1
                          10511 	.globl _height1FallingFront10
   2834                   10512 _height1FallingFront10:
   2834 FF                10513 	.byte	-1
   2835 03                10514 	.byte	3
   2836 0E                10515 	.byte	14
   2837 FF                10516 	.byte	-1
   2838 0F                10517 	.byte	15
   2839 FE                10518 	.byte	-2
   283A FF                10519 	.byte	-1
   283B FD                10520 	.byte	-3
   283C F3                10521 	.byte	-13
   283D FF                10522 	.byte	-1
   283E F1                10523 	.byte	-15
   283F 01                10524 	.byte	1
   2840 FF                10525 	.byte	-1
   2841 FD                10526 	.byte	-3
   2842 06                10527 	.byte	6
   2843 00                10528 	.byte	0
   2844 06                10529 	.byte	6
   2845 08                10530 	.byte	8
   2846 FF                10531 	.byte	-1
   2847 FD                10532 	.byte	-3
   2848 06                10533 	.byte	6
   2849 00                10534 	.byte	0
   284A 12                10535 	.byte	18
   284B F8                10536 	.byte	-8
   284C FF                10537 	.byte	-1
   284D FB                10538 	.byte	-5
   284E 06                10539 	.byte	6
   284F 00                10540 	.byte	0
   2850 02                10541 	.byte	2
   2851 ED                10542 	.byte	-19
   2852 FF                10543 	.byte	-1
   2853 FB                10544 	.byte	-5
   2854 05                10545 	.byte	5
   2855 00                10546 	.byte	0
   2856 F3                10547 	.byte	-13
   2857 02                10548 	.byte	2
   2858 FF                10549 	.byte	-1
   2859 03                10550 	.byte	3
   285A 0E                10551 	.byte	14
   285B FF                10552 	.byte	-1
   285C 0D                10553 	.byte	13
   285D FE                10554 	.byte	-2
   285E FF                10555 	.byte	-1
   285F FD                10556 	.byte	-3
   2860 F2                10557 	.byte	-14
   2861 FF                10558 	.byte	-1
   2862 F3                10559 	.byte	-13
   2863 02                10560 	.byte	2
   2864 01                10561 	.byte	1
                          10562 	.globl _height2FallingLeft11
   2865                   10563 _height2FallingLeft11:
   2865 FF                10564 	.byte	-1
   2866 0D                10565 	.byte	13
   2867 02                10566 	.byte	2
   2868 FF                10567 	.byte	-1
   2869 08                10568 	.byte	8
   286A FB                10569 	.byte	-5
   286B FF                10570 	.byte	-1
   286C F3                10571 	.byte	-13
   286D FE                10572 	.byte	-2
   286E FF                10573 	.byte	-1
   286F F8                10574 	.byte	-8
   2870 05                10575 	.byte	5
   2871 FF                10576 	.byte	-1
   2872 FE                10577 	.byte	-2
   2873 E5                10578 	.byte	-27
   2874 00                10579 	.byte	0
   2875 0F                10580 	.byte	15
   2876 1D                10581 	.byte	29
   2877 FF                10582 	.byte	-1
   2878 FE                10583 	.byte	-2
   2879 E5                10584 	.byte	-27
   287A 00                10585 	.byte	0
   287B 0A                10586 	.byte	10
   287C 16                10587 	.byte	22
   287D FF                10588 	.byte	-1
   287E FE                10589 	.byte	-2
   287F E4                10590 	.byte	-28
   2880 00                10591 	.byte	0
   2881 F5                10592 	.byte	-11
   2882 1A                10593 	.byte	26
   2883 FF                10594 	.byte	-1
   2884 FD                10595 	.byte	-3
   2885 E4                10596 	.byte	-28
   2886 00                10597 	.byte	0
   2887 F9                10598 	.byte	-7
   2888 06                10599 	.byte	6
   2889 FF                10600 	.byte	-1
   288A 0D                10601 	.byte	13
   288B 02                10602 	.byte	2
   288C FF                10603 	.byte	-1
   288D 08                10604 	.byte	8
   288E FA                10605 	.byte	-6
   288F FF                10606 	.byte	-1
   2890 F2                10607 	.byte	-14
   2891 FE                10608 	.byte	-2
   2892 FF                10609 	.byte	-1
   2893 F9                10610 	.byte	-7
   2894 06                10611 	.byte	6
   2895 01                10612 	.byte	1
                          10613 	.globl _height2RisingRight11
   2896                   10614 _height2RisingRight11:
   2896 00                10615 	.byte	0
   2897 06                10616 	.byte	6
   2898 1C                10617 	.byte	28
   2899 FF                10618 	.byte	-1
   289A 03                10619 	.byte	3
   289B 0E                10620 	.byte	14
   289C FF                10621 	.byte	-1
   289D 08                10622 	.byte	8
   289E FA                10623 	.byte	-6
   289F FF                10624 	.byte	-1
   28A0 FD                10625 	.byte	-3
   28A1 F2                10626 	.byte	-14
   28A2 FF                10627 	.byte	-1
   28A3 F8                10628 	.byte	-8
   28A4 06                10629 	.byte	6
   28A5 FF                10630 	.byte	-1
   28A6 1A                10631 	.byte	26
   28A7 00                10632 	.byte	0
   28A8 00                10633 	.byte	0
   28A9 E9                10634 	.byte	-23
   28AA 0E                10635 	.byte	14
   28AB FF                10636 	.byte	-1
   28AC 1A                10637 	.byte	26
   28AD 00                10638 	.byte	0
   28AE 00                10639 	.byte	0
   28AF EE                10640 	.byte	-18
   28B0 FA                10641 	.byte	-6
   28B1 FF                10642 	.byte	-1
   28B2 1A                10643 	.byte	26
   28B3 00                10644 	.byte	0
   28B4 00                10645 	.byte	0
   28B5 E3                10646 	.byte	-29
   28B6 F2                10647 	.byte	-14
   28B7 FF                10648 	.byte	-1
   28B8 1A                10649 	.byte	26
   28B9 00                10650 	.byte	0
   28BA 00                10651 	.byte	0
   28BB F8                10652 	.byte	-8
   28BC 06                10653 	.byte	6
   28BD FF                10654 	.byte	-1
   28BE 03                10655 	.byte	3
   28BF 0E                10656 	.byte	14
   28C0 FF                10657 	.byte	-1
   28C1 08                10658 	.byte	8
   28C2 FA                10659 	.byte	-6
   28C3 FF                10660 	.byte	-1
   28C4 FD                10661 	.byte	-3
   28C5 F2                10662 	.byte	-14
   28C6 FF                10663 	.byte	-1
   28C7 F8                10664 	.byte	-8
   28C8 06                10665 	.byte	6
   28C9 01                10666 	.byte	1
                          10667 	.globl _height2FallingRight11
   28CA                   10668 _height2FallingRight11:
   28CA 00                10669 	.byte	0
   28CB 0F                10670 	.byte	15
   28CC 0C                10671 	.byte	12
   28CD FF                10672 	.byte	-1
   28CE F4                10673 	.byte	-12
   28CF 02                10674 	.byte	2
   28D0 FF                10675 	.byte	-1
   28D1 08                10676 	.byte	8
   28D2 FA                10677 	.byte	-6
   28D3 FF                10678 	.byte	-1
   28D4 0C                10679 	.byte	12
   28D5 FE                10680 	.byte	-2
   28D6 FF                10681 	.byte	-1
   28D7 F8                10682 	.byte	-8
   28D8 06                10683 	.byte	6
   28D9 FF                10684 	.byte	-1
   28DA 0A                10685 	.byte	10
   28DB 1C                10686 	.byte	28
   28DC 00                10687 	.byte	0
   28DD EA                10688 	.byte	-22
   28DE E6                10689 	.byte	-26
   28DF FF                10690 	.byte	-1
   28E0 09                10691 	.byte	9
   28E1 1C                10692 	.byte	28
   28E2 00                10693 	.byte	0
   28E3 FF                10694 	.byte	-1
   28E4 DE                10695 	.byte	-34
   28E5 FF                10696 	.byte	-1
   28E6 09                10697 	.byte	9
   28E7 1C                10698 	.byte	28
   28E8 00                10699 	.byte	0
   28E9 03                10700 	.byte	3
   28EA E2                10701 	.byte	-30
   28EB FF                10702 	.byte	-1
   28EC 0A                10703 	.byte	10
   28ED 1C                10704 	.byte	28
   28EE 00                10705 	.byte	0
   28EF F8                10706 	.byte	-8
   28F0 06                10707 	.byte	6
   28F1 FF                10708 	.byte	-1
   28F2 F3                10709 	.byte	-13
   28F3 02                10710 	.byte	2
   28F4 FF                10711 	.byte	-1
   28F5 08                10712 	.byte	8
   28F6 FA                10713 	.byte	-6
   28F7 FF                10714 	.byte	-1
   28F8 0D                10715 	.byte	13
   28F9 FE                10716 	.byte	-2
   28FA FF                10717 	.byte	-1
   28FB F8                10718 	.byte	-8
   28FC 06                10719 	.byte	6
   28FD 01                10720 	.byte	1
                          10721 	.globl _height2RisingLeft11
   28FE                   10722 _height2RisingLeft11:
   28FE 00                10723 	.byte	0
   28FF FE                10724 	.byte	-2
   2900 F3                10725 	.byte	-13
   2901 FF                10726 	.byte	-1
   2902 02                10727 	.byte	2
   2903 0D                10728 	.byte	13
   2904 FF                10729 	.byte	-1
   2905 08                10730 	.byte	8
   2906 FB                10731 	.byte	-5
   2907 FF                10732 	.byte	-1
   2908 FD                10733 	.byte	-3
   2909 F2                10734 	.byte	-14
   290A FF                10735 	.byte	-1
   290B F9                10736 	.byte	-7
   290C 06                10737 	.byte	6
   290D FF                10738 	.byte	-1
   290E 19                10739 	.byte	25
   290F 00                10740 	.byte	0
   2910 00                10741 	.byte	0
   2911 E9                10742 	.byte	-23
   2912 0D                10743 	.byte	13
   2913 FF                10744 	.byte	-1
   2914 1A                10745 	.byte	26
   2915 00                10746 	.byte	0
   2916 00                10747 	.byte	0
   2917 EE                10748 	.byte	-18
   2918 FB                10749 	.byte	-5
   2919 FF                10750 	.byte	-1
   291A 1A                10751 	.byte	26
   291B 00                10752 	.byte	0
   291C 00                10753 	.byte	0
   291D E3                10754 	.byte	-29
   291E F2                10755 	.byte	-14
   291F FF                10756 	.byte	-1
   2920 1A                10757 	.byte	26
   2921 00                10758 	.byte	0
   2922 00                10759 	.byte	0
   2923 F8                10760 	.byte	-8
   2924 06                10761 	.byte	6
   2925 FF                10762 	.byte	-1
   2926 03                10763 	.byte	3
   2927 0D                10764 	.byte	13
   2928 FF                10765 	.byte	-1
   2929 08                10766 	.byte	8
   292A FB                10767 	.byte	-5
   292B FF                10768 	.byte	-1
   292C FD                10769 	.byte	-3
   292D F2                10770 	.byte	-14
   292E FF                10771 	.byte	-1
   292F F8                10772 	.byte	-8
   2930 06                10773 	.byte	6
   2931 01                10774 	.byte	1
                          10775 	.globl _height2FallingBack11
   2932                   10776 _height2FallingBack11:
   2932 00                10777 	.byte	0
   2933 14                10778 	.byte	20
   2934 FC                10779 	.byte	-4
   2935 FF                10780 	.byte	-1
   2936 03                10781 	.byte	3
   2937 0D                10782 	.byte	13
   2938 FF                10783 	.byte	-1
   2939 F4                10784 	.byte	-12
   293A FF                10785 	.byte	-1
   293B FF                10786 	.byte	-1
   293C FD                10787 	.byte	-3
   293D F3                10788 	.byte	-13
   293E FF                10789 	.byte	-1
   293F 0C                10790 	.byte	12
   2940 01                10791 	.byte	1
   2941 FF                10792 	.byte	-1
   2942 13                10793 	.byte	19
   2943 F4                10794 	.byte	-12
   2944 00                10795 	.byte	0
   2945 F0                10796 	.byte	-16
   2946 19                10797 	.byte	25
   2947 FF                10798 	.byte	-1
   2948 13                10799 	.byte	19
   2949 F5                10800 	.byte	-11
   294A 00                10801 	.byte	0
   294B E1                10802 	.byte	-31
   294C 0A                10803 	.byte	10
   294D FF                10804 	.byte	-1
   294E 13                10805 	.byte	19
   294F F5                10806 	.byte	-11
   2950 00                10807 	.byte	0
   2951 EA                10808 	.byte	-22
   2952 FE                10809 	.byte	-2
   2953 FF                10810 	.byte	-1
   2954 13                10811 	.byte	19
   2955 F4                10812 	.byte	-12
   2956 00                10813 	.byte	0
   2957 0C                10814 	.byte	12
   2958 01                10815 	.byte	1
   2959 FF                10816 	.byte	-1
   295A 03                10817 	.byte	3
   295B 0E                10818 	.byte	14
   295C FF                10819 	.byte	-1
   295D F4                10820 	.byte	-12
   295E FF                10821 	.byte	-1
   295F FF                10822 	.byte	-1
   2960 FD                10823 	.byte	-3
   2961 F2                10824 	.byte	-14
   2962 FF                10825 	.byte	-1
   2963 0C                10826 	.byte	12
   2964 01                10827 	.byte	1
   2965 01                10828 	.byte	1
                          10829 	.globl _height2RisingFront11
   2966                   10830 _height2RisingFront11:
   2966 00                10831 	.byte	0
   2967 F9                10832 	.byte	-7
   2968 06                10833 	.byte	6
   2969 FF                10834 	.byte	-1
   296A 03                10835 	.byte	3
   296B 0E                10836 	.byte	14
   296C FF                10837 	.byte	-1
   296D 07                10838 	.byte	7
   296E FA                10839 	.byte	-6
   296F FF                10840 	.byte	-1
   2970 FD                10841 	.byte	-3
   2971 F2                10842 	.byte	-14
   2972 FF                10843 	.byte	-1
   2973 F9                10844 	.byte	-7
   2974 06                10845 	.byte	6
   2975 FF                10846 	.byte	-1
   2976 19                10847 	.byte	25
   2977 00                10848 	.byte	0
   2978 00                10849 	.byte	0
   2979 EA                10850 	.byte	-22
   297A 0E                10851 	.byte	14
   297B FF                10852 	.byte	-1
   297C 19                10853 	.byte	25
   297D 00                10854 	.byte	0
   297E 00                10855 	.byte	0
   297F EE                10856 	.byte	-18
   2980 FA                10857 	.byte	-6
   2981 FF                10858 	.byte	-1
   2982 1A                10859 	.byte	26
   2983 00                10860 	.byte	0
   2984 00                10861 	.byte	0
   2985 E3                10862 	.byte	-29
   2986 F2                10863 	.byte	-14
   2987 FF                10864 	.byte	-1
   2988 1A                10865 	.byte	26
   2989 00                10866 	.byte	0
   298A 00                10867 	.byte	0
   298B F8                10868 	.byte	-8
   298C 06                10869 	.byte	6
   298D FF                10870 	.byte	-1
   298E 03                10871 	.byte	3
   298F 0E                10872 	.byte	14
   2990 FF                10873 	.byte	-1
   2991 08                10874 	.byte	8
   2992 FA                10875 	.byte	-6
   2993 FF                10876 	.byte	-1
   2994 FD                10877 	.byte	-3
   2995 F2                10878 	.byte	-14
   2996 FF                10879 	.byte	-1
   2997 F8                10880 	.byte	-8
   2998 06                10881 	.byte	6
   2999 01                10882 	.byte	1
                          10883 	.globl _height2FallingFront11
   299A                   10884 _height2FallingFront11:
   299A FF                10885 	.byte	-1
   299B 03                10886 	.byte	3
   299C 0E                10887 	.byte	14
   299D FF                10888 	.byte	-1
   299E 0E                10889 	.byte	14
   299F FF                10890 	.byte	-1
   29A0 FF                10891 	.byte	-1
   29A1 FD                10892 	.byte	-3
   29A2 F3                10893 	.byte	-13
   29A3 FF                10894 	.byte	-1
   29A4 F2                10895 	.byte	-14
   29A5 00                10896 	.byte	0
   29A6 FF                10897 	.byte	-1
   29A7 F5                10898 	.byte	-11
   29A8 0C                10899 	.byte	12
   29A9 00                10900 	.byte	0
   29AA 0E                10901 	.byte	14
   29AB 02                10902 	.byte	2
   29AC FF                10903 	.byte	-1
   29AD F5                10904 	.byte	-11
   29AE 0C                10905 	.byte	12
   29AF 00                10906 	.byte	0
   29B0 19                10907 	.byte	25
   29B1 F3                10908 	.byte	-13
   29B2 FF                10909 	.byte	-1
   29B3 F3                10910 	.byte	-13
   29B4 0C                10911 	.byte	12
   29B5 00                10912 	.byte	0
   29B6 0A                10913 	.byte	10
   29B7 E7                10914 	.byte	-25
   29B8 FF                10915 	.byte	-1
   29B9 F3                10916 	.byte	-13
   29BA 0B                10917 	.byte	11
   29BB 00                10918 	.byte	0
   29BC F4                10919 	.byte	-12
   29BD 01                10920 	.byte	1
   29BE FF                10921 	.byte	-1
   29BF 03                10922 	.byte	3
   29C0 0E                10923 	.byte	14
   29C1 FF                10924 	.byte	-1
   29C2 0C                10925 	.byte	12
   29C3 FF                10926 	.byte	-1
   29C4 FF                10927 	.byte	-1
   29C5 FD                10928 	.byte	-3
   29C6 F2                10929 	.byte	-14
   29C7 FF                10930 	.byte	-1
   29C8 F4                10931 	.byte	-12
   29C9 01                10932 	.byte	1
   29CA 01                10933 	.byte	1
                          10934 	.globl _height2RisingBack11
   29CB                   10935 _height2RisingBack11:
   29CB 00                10936 	.byte	0
   29CC 10                10937 	.byte	16
   29CD F5                10938 	.byte	-11
   29CE FF                10939 	.byte	-1
   29CF 03                10940 	.byte	3
   29D0 0D                10941 	.byte	13
   29D1 FF                10942 	.byte	-1
   29D2 08                10943 	.byte	8
   29D3 FB                10944 	.byte	-5
   29D4 FF                10945 	.byte	-1
   29D5 FD                10946 	.byte	-3
   29D6 F2                10947 	.byte	-14
   29D7 FF                10948 	.byte	-1
   29D8 F8                10949 	.byte	-8
   29D9 06                10950 	.byte	6
   29DA FF                10951 	.byte	-1
   29DB 1A                10952 	.byte	26
   29DC 00                10953 	.byte	0
   29DD 00                10954 	.byte	0
   29DE E9                10955 	.byte	-23
   29DF 0D                10956 	.byte	13
   29E0 FF                10957 	.byte	-1
   29E1 1A                10958 	.byte	26
   29E2 00                10959 	.byte	0
   29E3 00                10960 	.byte	0
   29E4 EE                10961 	.byte	-18
   29E5 FB                10962 	.byte	-5
   29E6 FF                10963 	.byte	-1
   29E7 1A                10964 	.byte	26
   29E8 00                10965 	.byte	0
   29E9 00                10966 	.byte	0
   29EA E3                10967 	.byte	-29
   29EB F2                10968 	.byte	-14
   29EC FF                10969 	.byte	-1
   29ED 1A                10970 	.byte	26
   29EE 00                10971 	.byte	0
   29EF 00                10972 	.byte	0
   29F0 F8                10973 	.byte	-8
   29F1 06                10974 	.byte	6
   29F2 FF                10975 	.byte	-1
   29F3 03                10976 	.byte	3
   29F4 0D                10977 	.byte	13
   29F5 FF                10978 	.byte	-1
   29F6 08                10979 	.byte	8
   29F7 FB                10980 	.byte	-5
   29F8 FF                10981 	.byte	-1
   29F9 FD                10982 	.byte	-3
   29FA F2                10983 	.byte	-14
   29FB FF                10984 	.byte	-1
   29FC F8                10985 	.byte	-8
   29FD 06                10986 	.byte	6
   29FE 01                10987 	.byte	1
                          10988 	.globl _depth2RollingLeft11
   29FF                   10989 _depth2RollingLeft11:
   29FF FF                10990 	.byte	-1
   2A00 0D                10991 	.byte	13
   2A01 02                10992 	.byte	2
   2A02 FF                10993 	.byte	-1
   2A03 10                10994 	.byte	16
   2A04 F5                10995 	.byte	-11
   2A05 FF                10996 	.byte	-1
   2A06 F3                10997 	.byte	-13
   2A07 FE                10998 	.byte	-2
   2A08 FF                10999 	.byte	-1
   2A09 F0                11000 	.byte	-16
   2A0A 0B                11001 	.byte	11
   2A0B FF                11002 	.byte	-1
   2A0C 00                11003 	.byte	0
   2A0D F3                11004 	.byte	-13
   2A0E 00                11005 	.byte	0
   2A0F 0D                11006 	.byte	13
   2A10 0F                11007 	.byte	15
   2A11 FF                11008 	.byte	-1
   2A12 FF                11009 	.byte	-1
   2A13 F3                11010 	.byte	-13
   2A14 00                11011 	.byte	0
   2A15 11                11012 	.byte	17
   2A16 02                11013 	.byte	2
   2A17 FF                11014 	.byte	-1
   2A18 FF                11015 	.byte	-1
   2A19 F2                11016 	.byte	-14
   2A1A 00                11017 	.byte	0
   2A1B F4                11018 	.byte	-12
   2A1C 0C                11019 	.byte	12
   2A1D FF                11020 	.byte	-1
   2A1E FF                11021 	.byte	-1
   2A1F F2                11022 	.byte	-14
   2A20 00                11023 	.byte	0
   2A21 F1                11024 	.byte	-15
   2A22 0C                11025 	.byte	12
   2A23 FF                11026 	.byte	-1
   2A24 0C                11027 	.byte	12
   2A25 02                11028 	.byte	2
   2A26 FF                11029 	.byte	-1
   2A27 10                11030 	.byte	16
   2A28 F4                11031 	.byte	-12
   2A29 FF                11032 	.byte	-1
   2A2A F3                11033 	.byte	-13
   2A2B FE                11034 	.byte	-2
   2A2C FF                11035 	.byte	-1
   2A2D F1                11036 	.byte	-15
   2A2E 0C                11037 	.byte	12
   2A2F 01                11038 	.byte	1
                          11039 	.globl _depth2RollingRight11
   2A30                   11040 _depth2RollingRight11:
   2A30 00                11041 	.byte	0
   2A31 0F                11042 	.byte	15
   2A32 0C                11043 	.byte	12
   2A33 FF                11044 	.byte	-1
   2A34 F4                11045 	.byte	-12
   2A35 02                11046 	.byte	2
   2A36 FF                11047 	.byte	-1
   2A37 10                11048 	.byte	16
   2A38 F4                11049 	.byte	-12
   2A39 FF                11050 	.byte	-1
   2A3A 0C                11051 	.byte	12
   2A3B FE                11052 	.byte	-2
   2A3C FF                11053 	.byte	-1
   2A3D F0                11054 	.byte	-16
   2A3E 0C                11055 	.byte	12
   2A3F FF                11056 	.byte	-1
   2A40 05                11057 	.byte	5
   2A41 0E                11058 	.byte	14
   2A42 00                11059 	.byte	0
   2A43 EF                11060 	.byte	-17
   2A44 F4                11061 	.byte	-12
   2A45 FF                11062 	.byte	-1
   2A46 05                11063 	.byte	5
   2A47 0E                11064 	.byte	14
   2A48 00                11065 	.byte	0
   2A49 0B                11066 	.byte	11
   2A4A E6                11067 	.byte	-26
   2A4B FF                11068 	.byte	-1
   2A4C 05                11069 	.byte	5
   2A4D 0E                11070 	.byte	14
   2A4E 00                11071 	.byte	0
   2A4F 07                11072 	.byte	7
   2A50 F0                11073 	.byte	-16
   2A51 FF                11074 	.byte	-1
   2A52 05                11075 	.byte	5
   2A53 0E                11076 	.byte	14
   2A54 00                11077 	.byte	0
   2A55 F0                11078 	.byte	-16
   2A56 0C                11079 	.byte	12
   2A57 FF                11080 	.byte	-1
   2A58 F4                11081 	.byte	-12
   2A59 02                11082 	.byte	2
   2A5A FF                11083 	.byte	-1
   2A5B 10                11084 	.byte	16
   2A5C F4                11085 	.byte	-12
   2A5D FF                11086 	.byte	-1
   2A5E 0C                11087 	.byte	12
   2A5F FE                11088 	.byte	-2
   2A60 FF                11089 	.byte	-1
   2A61 F0                11090 	.byte	-16
   2A62 0C                11091 	.byte	12
   2A63 01                11092 	.byte	1
                          11093 	.globl _width2RollingFront11
   2A64                   11094 _width2RollingFront11:
   2A64 FF                11095 	.byte	-1
   2A65 06                11096 	.byte	6
   2A66 1C                11097 	.byte	28
   2A67 FF                11098 	.byte	-1
   2A68 0E                11099 	.byte	14
   2A69 FF                11100 	.byte	-1
   2A6A FF                11101 	.byte	-1
   2A6B FA                11102 	.byte	-6
   2A6C E5                11103 	.byte	-27
   2A6D FF                11104 	.byte	-1
   2A6E F2                11105 	.byte	-14
   2A6F 00                11106 	.byte	0
   2A70 FF                11107 	.byte	-1
   2A71 FB                11108 	.byte	-5
   2A72 06                11109 	.byte	6
   2A73 00                11110 	.byte	0
   2A74 0B                11111 	.byte	11
   2A75 16                11112 	.byte	22
   2A76 FF                11113 	.byte	-1
   2A77 FA                11114 	.byte	-6
   2A78 06                11115 	.byte	6
   2A79 00                11116 	.byte	0
   2A7A 14                11117 	.byte	20
   2A7B F9                11118 	.byte	-7
   2A7C FF                11119 	.byte	-1
   2A7D FA                11120 	.byte	-6
   2A7E 06                11121 	.byte	6
   2A7F 00                11122 	.byte	0
   2A80 00                11123 	.byte	0
   2A81 DF                11124 	.byte	-33
   2A82 FF                11125 	.byte	-1
   2A83 FA                11126 	.byte	-6
   2A84 05                11127 	.byte	5
   2A85 00                11128 	.byte	0
   2A86 F3                11129 	.byte	-13
   2A87 01                11130 	.byte	1
   2A88 FF                11131 	.byte	-1
   2A89 05                11132 	.byte	5
   2A8A 1C                11133 	.byte	28
   2A8B FF                11134 	.byte	-1
   2A8C 0E                11135 	.byte	14
   2A8D FF                11136 	.byte	-1
   2A8E FF                11137 	.byte	-1
   2A8F FA                11138 	.byte	-6
   2A90 E4                11139 	.byte	-28
   2A91 FF                11140 	.byte	-1
   2A92 F3                11141 	.byte	-13
   2A93 01                11142 	.byte	1
   2A94 01                11143 	.byte	1
                          11144 	.globl _width2RollingBack11
   2A95                   11145 _width2RollingBack11:
   2A95 00                11146 	.byte	0
   2A96 14                11147 	.byte	20
   2A97 FC                11148 	.byte	-4
   2A98 FF                11149 	.byte	-1
   2A99 06                11150 	.byte	6
   2A9A 1B                11151 	.byte	27
   2A9B FF                11152 	.byte	-1
   2A9C F4                11153 	.byte	-12
   2A9D FF                11154 	.byte	-1
   2A9E FF                11155 	.byte	-1
   2A9F FA                11156 	.byte	-6
   2AA0 E5                11157 	.byte	-27
   2AA1 FF                11158 	.byte	-1
   2AA2 0C                11159 	.byte	12
   2AA3 01                11160 	.byte	1
   2AA4 FF                11161 	.byte	-1
   2AA5 09                11162 	.byte	9
   2AA6 FA                11163 	.byte	-6
   2AA7 00                11164 	.byte	0
   2AA8 FD                11165 	.byte	-3
   2AA9 21                11166 	.byte	33
   2AAA FF                11167 	.byte	-1
   2AAB 09                11168 	.byte	9
   2AAC FA                11169 	.byte	-6
   2AAD 00                11170 	.byte	0
   2AAE EB                11171 	.byte	-21
   2AAF 05                11172 	.byte	5
   2AB0 FF                11173 	.byte	-1
   2AB1 0A                11174 	.byte	10
   2AB2 FA                11175 	.byte	-6
   2AB3 00                11176 	.byte	0
   2AB4 F0                11177 	.byte	-16
   2AB5 EB                11178 	.byte	-21
   2AB6 FF                11179 	.byte	-1
   2AB7 0A                11180 	.byte	10
   2AB8 FA                11181 	.byte	-6
   2AB9 00                11182 	.byte	0
   2ABA 0B                11183 	.byte	11
   2ABB 01                11184 	.byte	1
   2ABC FF                11185 	.byte	-1
   2ABD 06                11186 	.byte	6
   2ABE 1B                11187 	.byte	27
   2ABF FF                11188 	.byte	-1
   2AC0 F5                11189 	.byte	-11
   2AC1 FF                11190 	.byte	-1
   2AC2 FF                11191 	.byte	-1
   2AC3 FA                11192 	.byte	-6
   2AC4 E5                11193 	.byte	-27
   2AC5 FF                11194 	.byte	-1
   2AC6 0B                11195 	.byte	11
   2AC7 01                11196 	.byte	1
   2AC8 01                11197 	.byte	1
                          11198 	.globl _height1FallingLeft11
   2AC9                   11199 _height1FallingLeft11:
   2AC9 FF                11200 	.byte	-1
   2ACA 0D                11201 	.byte	13
   2ACB 02                11202 	.byte	2
   2ACC FF                11203 	.byte	-1
   2ACD 08                11204 	.byte	8
   2ACE FB                11205 	.byte	-5
   2ACF FF                11206 	.byte	-1
   2AD0 F3                11207 	.byte	-13
   2AD1 FE                11208 	.byte	-2
   2AD2 FF                11209 	.byte	-1
   2AD3 F8                11210 	.byte	-8
   2AD4 05                11211 	.byte	5
   2AD5 FF                11212 	.byte	-1
   2AD6 00                11213 	.byte	0
   2AD7 F3                11214 	.byte	-13
   2AD8 00                11215 	.byte	0
   2AD9 0D                11216 	.byte	13
   2ADA 0F                11217 	.byte	15
   2ADB FF                11218 	.byte	-1
   2ADC FF                11219 	.byte	-1
   2ADD F3                11220 	.byte	-13
   2ADE 00                11221 	.byte	0
   2ADF 09                11222 	.byte	9
   2AE0 08                11223 	.byte	8
   2AE1 FF                11224 	.byte	-1
   2AE2 FF                11225 	.byte	-1
   2AE3 F2                11226 	.byte	-14
   2AE4 00                11227 	.byte	0
   2AE5 F4                11228 	.byte	-12
   2AE6 0C                11229 	.byte	12
   2AE7 FF                11230 	.byte	-1
   2AE8 FF                11231 	.byte	-1
   2AE9 F2                11232 	.byte	-14
   2AEA 00                11233 	.byte	0
   2AEB F9                11234 	.byte	-7
   2AEC 06                11235 	.byte	6
   2AED FF                11236 	.byte	-1
   2AEE 0C                11237 	.byte	12
   2AEF 02                11238 	.byte	2
   2AF0 FF                11239 	.byte	-1
   2AF1 08                11240 	.byte	8
   2AF2 FA                11241 	.byte	-6
   2AF3 FF                11242 	.byte	-1
   2AF4 F3                11243 	.byte	-13
   2AF5 FE                11244 	.byte	-2
   2AF6 FF                11245 	.byte	-1
   2AF7 F9                11246 	.byte	-7
   2AF8 06                11247 	.byte	6
   2AF9 01                11248 	.byte	1
                          11249 	.globl _height1FallingRight11
   2AFA                   11250 _height1FallingRight11:
   2AFA 00                11251 	.byte	0
   2AFB 0F                11252 	.byte	15
   2AFC 0C                11253 	.byte	12
   2AFD FF                11254 	.byte	-1
   2AFE F4                11255 	.byte	-12
   2AFF 02                11256 	.byte	2
   2B00 FF                11257 	.byte	-1
   2B01 08                11258 	.byte	8
   2B02 FA                11259 	.byte	-6
   2B03 FF                11260 	.byte	-1
   2B04 0C                11261 	.byte	12
   2B05 FE                11262 	.byte	-2
   2B06 FF                11263 	.byte	-1
   2B07 F8                11264 	.byte	-8
   2B08 06                11265 	.byte	6
   2B09 FF                11266 	.byte	-1
   2B0A 05                11267 	.byte	5
   2B0B 0E                11268 	.byte	14
   2B0C 00                11269 	.byte	0
   2B0D EF                11270 	.byte	-17
   2B0E F4                11271 	.byte	-12
   2B0F FF                11272 	.byte	-1
   2B10 05                11273 	.byte	5
   2B11 0E                11274 	.byte	14
   2B12 00                11275 	.byte	0
   2B13 03                11276 	.byte	3
   2B14 EC                11277 	.byte	-20
   2B15 FF                11278 	.byte	-1
   2B16 05                11279 	.byte	5
   2B17 0E                11280 	.byte	14
   2B18 00                11281 	.byte	0
   2B19 07                11282 	.byte	7
   2B1A F0                11283 	.byte	-16
   2B1B FF                11284 	.byte	-1
   2B1C 05                11285 	.byte	5
   2B1D 0E                11286 	.byte	14
   2B1E 00                11287 	.byte	0
   2B1F F8                11288 	.byte	-8
   2B20 06                11289 	.byte	6
   2B21 FF                11290 	.byte	-1
   2B22 F4                11291 	.byte	-12
   2B23 02                11292 	.byte	2
   2B24 FF                11293 	.byte	-1
   2B25 08                11294 	.byte	8
   2B26 FA                11295 	.byte	-6
   2B27 FF                11296 	.byte	-1
   2B28 0C                11297 	.byte	12
   2B29 FE                11298 	.byte	-2
   2B2A FF                11299 	.byte	-1
   2B2B F8                11300 	.byte	-8
   2B2C 06                11301 	.byte	6
   2B2D 01                11302 	.byte	1
                          11303 	.globl _height1FallingBack11
   2B2E                   11304 _height1FallingBack11:
   2B2E 00                11305 	.byte	0
   2B2F 14                11306 	.byte	20
   2B30 FC                11307 	.byte	-4
   2B31 FF                11308 	.byte	-1
   2B32 03                11309 	.byte	3
   2B33 0D                11310 	.byte	13
   2B34 FF                11311 	.byte	-1
   2B35 F4                11312 	.byte	-12
   2B36 FF                11313 	.byte	-1
   2B37 FF                11314 	.byte	-1
   2B38 FD                11315 	.byte	-3
   2B39 F3                11316 	.byte	-13
   2B3A FF                11317 	.byte	-1
   2B3B 0C                11318 	.byte	12
   2B3C 01                11319 	.byte	1
   2B3D FF                11320 	.byte	-1
   2B3E 09                11321 	.byte	9
   2B3F FA                11322 	.byte	-6
   2B40 00                11323 	.byte	0
   2B41 FA                11324 	.byte	-6
   2B42 13                11325 	.byte	19
   2B43 FF                11326 	.byte	-1
   2B44 09                11327 	.byte	9
   2B45 FA                11328 	.byte	-6
   2B46 00                11329 	.byte	0
   2B47 EB                11330 	.byte	-21
   2B48 05                11331 	.byte	5
   2B49 FF                11332 	.byte	-1
   2B4A 0A                11333 	.byte	10
   2B4B FA                11334 	.byte	-6
   2B4C 00                11335 	.byte	0
   2B4D F3                11336 	.byte	-13
   2B4E F9                11337 	.byte	-7
   2B4F FF                11338 	.byte	-1
   2B50 0A                11339 	.byte	10
   2B51 FA                11340 	.byte	-6
   2B52 00                11341 	.byte	0
   2B53 0B                11342 	.byte	11
   2B54 01                11343 	.byte	1
   2B55 FF                11344 	.byte	-1
   2B56 03                11345 	.byte	3
   2B57 0D                11346 	.byte	13
   2B58 FF                11347 	.byte	-1
   2B59 F5                11348 	.byte	-11
   2B5A FF                11349 	.byte	-1
   2B5B FF                11350 	.byte	-1
   2B5C FD                11351 	.byte	-3
   2B5D F3                11352 	.byte	-13
   2B5E FF                11353 	.byte	-1
   2B5F 0B                11354 	.byte	11
   2B60 01                11355 	.byte	1
   2B61 01                11356 	.byte	1
                          11357 	.globl _height1FallingFront11
   2B62                   11358 _height1FallingFront11:
   2B62 FF                11359 	.byte	-1
   2B63 03                11360 	.byte	3
   2B64 0E                11361 	.byte	14
   2B65 FF                11362 	.byte	-1
   2B66 0E                11363 	.byte	14
   2B67 FF                11364 	.byte	-1
   2B68 FF                11365 	.byte	-1
   2B69 FD                11366 	.byte	-3
   2B6A F3                11367 	.byte	-13
   2B6B FF                11368 	.byte	-1
   2B6C F2                11369 	.byte	-14
   2B6D 00                11370 	.byte	0
   2B6E FF                11371 	.byte	-1
   2B6F FB                11372 	.byte	-5
   2B70 06                11373 	.byte	6
   2B71 00                11374 	.byte	0
   2B72 08                11375 	.byte	8
   2B73 08                11376 	.byte	8
   2B74 FF                11377 	.byte	-1
   2B75 FB                11378 	.byte	-5
   2B76 06                11379 	.byte	6
   2B77 00                11380 	.byte	0
   2B78 13                11381 	.byte	19
   2B79 F9                11382 	.byte	-7
   2B7A FF                11383 	.byte	-1
   2B7B FA                11384 	.byte	-6
   2B7C 06                11385 	.byte	6
   2B7D 00                11386 	.byte	0
   2B7E 03                11387 	.byte	3
   2B7F ED                11388 	.byte	-19
   2B80 FF                11389 	.byte	-1
   2B81 FA                11390 	.byte	-6
   2B82 05                11391 	.byte	5
   2B83 00                11392 	.byte	0
   2B84 F3                11393 	.byte	-13
   2B85 01                11394 	.byte	1
   2B86 FF                11395 	.byte	-1
   2B87 03                11396 	.byte	3
   2B88 0E                11397 	.byte	14
   2B89 FF                11398 	.byte	-1
   2B8A 0D                11399 	.byte	13
   2B8B FF                11400 	.byte	-1
   2B8C FF                11401 	.byte	-1
   2B8D FD                11402 	.byte	-3
   2B8E F2                11403 	.byte	-14
   2B8F FF                11404 	.byte	-1
   2B90 F3                11405 	.byte	-13
   2B91 01                11406 	.byte	1
   2B92 01                11407 	.byte	1
                          11408 	.globl _height2FallingLeft12
   2B93                   11409 _height2FallingLeft12:
   2B93 FF                11410 	.byte	-1
   2B94 0D                11411 	.byte	13
   2B95 00                11412 	.byte	0
   2B96 FF                11413 	.byte	-1
   2B97 08                11414 	.byte	8
   2B98 FB                11415 	.byte	-5
   2B99 FF                11416 	.byte	-1
   2B9A F3                11417 	.byte	-13
   2B9B 00                11418 	.byte	0
   2B9C FF                11419 	.byte	-1
   2B9D F8                11420 	.byte	-8
   2B9E 05                11421 	.byte	5
   2B9F FF                11422 	.byte	-1
   2BA0 FB                11423 	.byte	-5
   2BA1 E5                11424 	.byte	-27
   2BA2 00                11425 	.byte	0
   2BA3 12                11426 	.byte	18
   2BA4 1B                11427 	.byte	27
   2BA5 FF                11428 	.byte	-1
   2BA6 FA                11429 	.byte	-6
   2BA7 E5                11430 	.byte	-27
   2BA8 00                11431 	.byte	0
   2BA9 0E                11432 	.byte	14
   2BAA 16                11433 	.byte	22
   2BAB FF                11434 	.byte	-1
   2BAC FA                11435 	.byte	-6
   2BAD E4                11436 	.byte	-28
   2BAE 00                11437 	.byte	0
   2BAF F9                11438 	.byte	-7
   2BB0 1C                11439 	.byte	28
   2BB1 FF                11440 	.byte	-1
   2BB2 FA                11441 	.byte	-6
   2BB3 E4                11442 	.byte	-28
   2BB4 00                11443 	.byte	0
   2BB5 F9                11444 	.byte	-7
   2BB6 06                11445 	.byte	6
   2BB7 FF                11446 	.byte	-1
   2BB8 0C                11447 	.byte	12
   2BB9 00                11448 	.byte	0
   2BBA FF                11449 	.byte	-1
   2BBB 08                11450 	.byte	8
   2BBC FA                11451 	.byte	-6
   2BBD FF                11452 	.byte	-1
   2BBE F3                11453 	.byte	-13
   2BBF 00                11454 	.byte	0
   2BC0 FF                11455 	.byte	-1
   2BC1 F9                11456 	.byte	-7
   2BC2 06                11457 	.byte	6
   2BC3 01                11458 	.byte	1
                          11459 	.globl _height2RisingRight12
   2BC4                   11460 _height2RisingRight12:
   2BC4 00                11461 	.byte	0
   2BC5 06                11462 	.byte	6
   2BC6 1C                11463 	.byte	28
   2BC7 FF                11464 	.byte	-1
   2BC8 01                11465 	.byte	1
   2BC9 0E                11466 	.byte	14
   2BCA FF                11467 	.byte	-1
   2BCB 08                11468 	.byte	8
   2BCC FA                11469 	.byte	-6
   2BCD FF                11470 	.byte	-1
   2BCE FF                11471 	.byte	-1
   2BCF F2                11472 	.byte	-14
   2BD0 FF                11473 	.byte	-1
   2BD1 F8                11474 	.byte	-8
   2BD2 06                11475 	.byte	6
   2BD3 FF                11476 	.byte	-1
   2BD4 1B                11477 	.byte	27
   2BD5 04                11478 	.byte	4
   2BD6 00                11479 	.byte	0
   2BD7 E6                11480 	.byte	-26
   2BD8 0A                11481 	.byte	10
   2BD9 FF                11482 	.byte	-1
   2BDA 1B                11483 	.byte	27
   2BDB 04                11484 	.byte	4
   2BDC 00                11485 	.byte	0
   2BDD ED                11486 	.byte	-19
   2BDE F6                11487 	.byte	-10
   2BDF FF                11488 	.byte	-1
   2BE0 1B                11489 	.byte	27
   2BE1 04                11490 	.byte	4
   2BE2 00                11491 	.byte	0
   2BE3 E4                11492 	.byte	-28
   2BE4 EE                11493 	.byte	-18
   2BE5 FF                11494 	.byte	-1
   2BE6 1B                11495 	.byte	27
   2BE7 04                11496 	.byte	4
   2BE8 00                11497 	.byte	0
   2BE9 F8                11498 	.byte	-8
   2BEA 06                11499 	.byte	6
   2BEB FF                11500 	.byte	-1
   2BEC 01                11501 	.byte	1
   2BED 0E                11502 	.byte	14
   2BEE FF                11503 	.byte	-1
   2BEF 08                11504 	.byte	8
   2BF0 FA                11505 	.byte	-6
   2BF1 FF                11506 	.byte	-1
   2BF2 FF                11507 	.byte	-1
   2BF3 F2                11508 	.byte	-14
   2BF4 FF                11509 	.byte	-1
   2BF5 F8                11510 	.byte	-8
   2BF6 06                11511 	.byte	6
   2BF7 01                11512 	.byte	1
                          11513 	.globl _height2FallingRight12
   2BF8                   11514 _height2FallingRight12:
   2BF8 00                11515 	.byte	0
   2BF9 10                11516 	.byte	16
   2BFA 0E                11517 	.byte	14
   2BFB FF                11518 	.byte	-1
   2BFC F3                11519 	.byte	-13
   2BFD 00                11520 	.byte	0
   2BFE FF                11521 	.byte	-1
   2BFF 08                11522 	.byte	8
   2C00 FA                11523 	.byte	-6
   2C01 FF                11524 	.byte	-1
   2C02 0D                11525 	.byte	13
   2C03 00                11526 	.byte	0
   2C04 FF                11527 	.byte	-1
   2C05 F8                11528 	.byte	-8
   2C06 06                11529 	.byte	6
   2C07 FF                11530 	.byte	-1
   2C08 06                11531 	.byte	6
   2C09 1C                11532 	.byte	28
   2C0A 00                11533 	.byte	0
   2C0B ED                11534 	.byte	-19
   2C0C E4                11535 	.byte	-28
   2C0D FF                11536 	.byte	-1
   2C0E 06                11537 	.byte	6
   2C0F 1C                11538 	.byte	28
   2C10 00                11539 	.byte	0
   2C11 02                11540 	.byte	2
   2C12 DE                11541 	.byte	-34
   2C13 FF                11542 	.byte	-1
   2C14 06                11543 	.byte	6
   2C15 1C                11544 	.byte	28
   2C16 00                11545 	.byte	0
   2C17 07                11546 	.byte	7
   2C18 E4                11547 	.byte	-28
   2C19 FF                11548 	.byte	-1
   2C1A 06                11549 	.byte	6
   2C1B 1C                11550 	.byte	28
   2C1C 00                11551 	.byte	0
   2C1D F8                11552 	.byte	-8
   2C1E 06                11553 	.byte	6
   2C1F FF                11554 	.byte	-1
   2C20 F3                11555 	.byte	-13
   2C21 00                11556 	.byte	0
   2C22 FF                11557 	.byte	-1
   2C23 08                11558 	.byte	8
   2C24 FA                11559 	.byte	-6
   2C25 FF                11560 	.byte	-1
   2C26 0D                11561 	.byte	13
   2C27 00                11562 	.byte	0
   2C28 FF                11563 	.byte	-1
   2C29 F8                11564 	.byte	-8
   2C2A 06                11565 	.byte	6
   2C2B 01                11566 	.byte	1
                          11567 	.globl _height2RisingLeft12
   2C2C                   11568 _height2RisingLeft12:
   2C2C 00                11569 	.byte	0
   2C2D FC                11570 	.byte	-4
   2C2E F3                11571 	.byte	-13
   2C2F FF                11572 	.byte	-1
   2C30 04                11573 	.byte	4
   2C31 0D                11574 	.byte	13
   2C32 FF                11575 	.byte	-1
   2C33 08                11576 	.byte	8
   2C34 FB                11577 	.byte	-5
   2C35 FF                11578 	.byte	-1
   2C36 FB                11579 	.byte	-5
   2C37 F2                11580 	.byte	-14
   2C38 FF                11581 	.byte	-1
   2C39 F9                11582 	.byte	-7
   2C3A 06                11583 	.byte	6
   2C3B FF                11584 	.byte	-1
   2C3C 18                11585 	.byte	24
   2C3D FC                11586 	.byte	-4
   2C3E 00                11587 	.byte	0
   2C3F EC                11588 	.byte	-20
   2C40 11                11589 	.byte	17
   2C41 FF                11590 	.byte	-1
   2C42 19                11591 	.byte	25
   2C43 FD                11592 	.byte	-3
   2C44 00                11593 	.byte	0
   2C45 EF                11594 	.byte	-17
   2C46 FE                11595 	.byte	-2
   2C47 FF                11596 	.byte	-1
   2C48 19                11597 	.byte	25
   2C49 FC                11598 	.byte	-4
   2C4A 00                11599 	.byte	0
   2C4B E2                11600 	.byte	-30
   2C4C F6                11601 	.byte	-10
   2C4D FF                11602 	.byte	-1
   2C4E 19                11603 	.byte	25
   2C4F FC                11604 	.byte	-4
   2C50 00                11605 	.byte	0
   2C51 F8                11606 	.byte	-8
   2C52 06                11607 	.byte	6
   2C53 FF                11608 	.byte	-1
   2C54 05                11609 	.byte	5
   2C55 0E                11610 	.byte	14
   2C56 FF                11611 	.byte	-1
   2C57 08                11612 	.byte	8
   2C58 FA                11613 	.byte	-6
   2C59 FF                11614 	.byte	-1
   2C5A FB                11615 	.byte	-5
   2C5B F2                11616 	.byte	-14
   2C5C FF                11617 	.byte	-1
   2C5D F8                11618 	.byte	-8
   2C5E 06                11619 	.byte	6
   2C5F 01                11620 	.byte	1
                          11621 	.globl _height2FallingBack12
   2C60                   11622 _height2FallingBack12:
   2C60 00                11623 	.byte	0
   2C61 15                11624 	.byte	21
   2C62 FB                11625 	.byte	-5
   2C63 FF                11626 	.byte	-1
   2C64 03                11627 	.byte	3
   2C65 0D                11628 	.byte	13
   2C66 FF                11629 	.byte	-1
   2C67 F3                11630 	.byte	-13
   2C68 00                11631 	.byte	0
   2C69 FF                11632 	.byte	-1
   2C6A FD                11633 	.byte	-3
   2C6B F3                11634 	.byte	-13
   2C6C FF                11635 	.byte	-1
   2C6D 0D                11636 	.byte	13
   2C6E 00                11637 	.byte	0
   2C6F FF                11638 	.byte	-1
   2C70 10                11639 	.byte	16
   2C71 F4                11640 	.byte	-12
   2C72 00                11641 	.byte	0
   2C73 F3                11642 	.byte	-13
   2C74 19                11643 	.byte	25
   2C75 FF                11644 	.byte	-1
   2C76 10                11645 	.byte	16
   2C77 F5                11646 	.byte	-11
   2C78 00                11647 	.byte	0
   2C79 E3                11648 	.byte	-29
   2C7A 0B                11649 	.byte	11
   2C7B FF                11650 	.byte	-1
   2C7C 10                11651 	.byte	16
   2C7D F5                11652 	.byte	-11
   2C7E 00                11653 	.byte	0
   2C7F ED                11654 	.byte	-19
   2C80 FE                11655 	.byte	-2
   2C81 FF                11656 	.byte	-1
   2C82 10                11657 	.byte	16
   2C83 F4                11658 	.byte	-12
   2C84 00                11659 	.byte	0
   2C85 0D                11660 	.byte	13
   2C86 00                11661 	.byte	0
   2C87 FF                11662 	.byte	-1
   2C88 03                11663 	.byte	3
   2C89 0E                11664 	.byte	14
   2C8A FF                11665 	.byte	-1
   2C8B F3                11666 	.byte	-13
   2C8C 00                11667 	.byte	0
   2C8D FF                11668 	.byte	-1
   2C8E FD                11669 	.byte	-3
   2C8F F2                11670 	.byte	-14
   2C90 FF                11671 	.byte	-1
   2C91 0D                11672 	.byte	13
   2C92 00                11673 	.byte	0
   2C93 01                11674 	.byte	1
                          11675 	.globl _height2RisingFront12
   2C94                   11676 _height2RisingFront12:
   2C94 00                11677 	.byte	0
   2C95 F7                11678 	.byte	-9
   2C96 06                11679 	.byte	6
   2C97 FF                11680 	.byte	-1
   2C98 03                11681 	.byte	3
   2C99 0E                11682 	.byte	14
   2C9A FF                11683 	.byte	-1
   2C9B 09                11684 	.byte	9
   2C9C FA                11685 	.byte	-6
   2C9D FF                11686 	.byte	-1
   2C9E FD                11687 	.byte	-3
   2C9F F2                11688 	.byte	-14
   2CA0 FF                11689 	.byte	-1
   2CA1 F7                11690 	.byte	-9
   2CA2 06                11691 	.byte	6
   2CA3 FF                11692 	.byte	-1
   2CA4 17                11693 	.byte	23
   2CA5 02                11694 	.byte	2
   2CA6 00                11695 	.byte	0
   2CA7 EC                11696 	.byte	-20
   2CA8 0C                11697 	.byte	12
   2CA9 FF                11698 	.byte	-1
   2CAA 17                11699 	.byte	23
   2CAB 02                11700 	.byte	2
   2CAC 00                11701 	.byte	0
   2CAD F2                11702 	.byte	-14
   2CAE F8                11703 	.byte	-8
   2CAF FF                11704 	.byte	-1
   2CB0 18                11705 	.byte	24
   2CB1 02                11706 	.byte	2
   2CB2 00                11707 	.byte	0
   2CB3 E5                11708 	.byte	-27
   2CB4 F0                11709 	.byte	-16
   2CB5 FF                11710 	.byte	-1
   2CB6 18                11711 	.byte	24
   2CB7 02                11712 	.byte	2
   2CB8 00                11713 	.byte	0
   2CB9 F6                11714 	.byte	-10
   2CBA 06                11715 	.byte	6
   2CBB FF                11716 	.byte	-1
   2CBC 03                11717 	.byte	3
   2CBD 0E                11718 	.byte	14
   2CBE FF                11719 	.byte	-1
   2CBF 0A                11720 	.byte	10
   2CC0 FA                11721 	.byte	-6
   2CC1 FF                11722 	.byte	-1
   2CC2 FD                11723 	.byte	-3
   2CC3 F2                11724 	.byte	-14
   2CC4 FF                11725 	.byte	-1
   2CC5 F6                11726 	.byte	-10
   2CC6 06                11727 	.byte	6
   2CC7 01                11728 	.byte	1
                          11729 	.globl _height2FallingFront12
   2CC8                   11730 _height2FallingFront12:
   2CC8 FF                11731 	.byte	-1
   2CC9 03                11732 	.byte	3
   2CCA 0E                11733 	.byte	14
   2CCB FF                11734 	.byte	-1
   2CCC 0D                11735 	.byte	13
   2CCD 00                11736 	.byte	0
   2CCE FF                11737 	.byte	-1
   2CCF FD                11738 	.byte	-3
   2CD0 F2                11739 	.byte	-14
   2CD1 FF                11740 	.byte	-1
   2CD2 F3                11741 	.byte	-13
   2CD3 00                11742 	.byte	0
   2CD4 FF                11743 	.byte	-1
   2CD5 F1                11744 	.byte	-15
   2CD6 0C                11745 	.byte	12
   2CD7 00                11746 	.byte	0
   2CD8 12                11747 	.byte	18
   2CD9 02                11748 	.byte	2
   2CDA FF                11749 	.byte	-1
   2CDB F1                11750 	.byte	-15
   2CDC 0C                11751 	.byte	12
   2CDD 00                11752 	.byte	0
   2CDE 1C                11753 	.byte	28
   2CDF F4                11754 	.byte	-12
   2CE0 FF                11755 	.byte	-1
   2CE1 F0                11756 	.byte	-16
   2CE2 0C                11757 	.byte	12
   2CE3 00                11758 	.byte	0
   2CE4 0D                11759 	.byte	13
   2CE5 E6                11760 	.byte	-26
   2CE6 FF                11761 	.byte	-1
   2CE7 F1                11762 	.byte	-15
   2CE8 0C                11763 	.byte	12
   2CE9 00                11764 	.byte	0
   2CEA F3                11765 	.byte	-13
   2CEB 00                11766 	.byte	0
   2CEC FF                11767 	.byte	-1
   2CED 03                11768 	.byte	3
   2CEE 0E                11769 	.byte	14
   2CEF FF                11770 	.byte	-1
   2CF0 0C                11771 	.byte	12
   2CF1 00                11772 	.byte	0
   2CF2 FF                11773 	.byte	-1
   2CF3 FE                11774 	.byte	-2
   2CF4 F2                11775 	.byte	-14
   2CF5 FF                11776 	.byte	-1
   2CF6 F3                11777 	.byte	-13
   2CF7 00                11778 	.byte	0
   2CF8 01                11779 	.byte	1
                          11780 	.globl _height2RisingBack12
   2CF9                   11781 _height2RisingBack12:
   2CF9 00                11782 	.byte	0
   2CFA 10                11783 	.byte	16
   2CFB F5                11784 	.byte	-11
   2CFC FF                11785 	.byte	-1
   2CFD 03                11786 	.byte	3
   2CFE 0D                11787 	.byte	13
   2CFF FF                11788 	.byte	-1
   2D00 06                11789 	.byte	6
   2D01 FB                11790 	.byte	-5
   2D02 FF                11791 	.byte	-1
   2D03 FD                11792 	.byte	-3
   2D04 F2                11793 	.byte	-14
   2D05 FF                11794 	.byte	-1
   2D06 FA                11795 	.byte	-6
   2D07 06                11796 	.byte	6
   2D08 FF                11797 	.byte	-1
   2D09 1C                11798 	.byte	28
   2D0A FE                11799 	.byte	-2
   2D0B 00                11800 	.byte	0
   2D0C E7                11801 	.byte	-25
   2D0D 0F                11802 	.byte	15
   2D0E FF                11803 	.byte	-1
   2D0F 1C                11804 	.byte	28
   2D10 FE                11805 	.byte	-2
   2D11 00                11806 	.byte	0
   2D12 EA                11807 	.byte	-22
   2D13 FD                11808 	.byte	-3
   2D14 FF                11809 	.byte	-1
   2D15 1C                11810 	.byte	28
   2D16 FE                11811 	.byte	-2
   2D17 00                11812 	.byte	0
   2D18 E1                11813 	.byte	-31
   2D19 F4                11814 	.byte	-12
   2D1A FF                11815 	.byte	-1
   2D1B 1C                11816 	.byte	28
   2D1C FE                11817 	.byte	-2
   2D1D 00                11818 	.byte	0
   2D1E FA                11819 	.byte	-6
   2D1F 06                11820 	.byte	6
   2D20 FF                11821 	.byte	-1
   2D21 03                11822 	.byte	3
   2D22 0D                11823 	.byte	13
   2D23 FF                11824 	.byte	-1
   2D24 06                11825 	.byte	6
   2D25 FB                11826 	.byte	-5
   2D26 FF                11827 	.byte	-1
   2D27 FD                11828 	.byte	-3
   2D28 F2                11829 	.byte	-14
   2D29 FF                11830 	.byte	-1
   2D2A FA                11831 	.byte	-6
   2D2B 06                11832 	.byte	6
   2D2C 01                11833 	.byte	1
                          11834 	.globl _depth2RollingLeft12
   2D2D                   11835 _depth2RollingLeft12:
   2D2D FF                11836 	.byte	-1
   2D2E 0D                11837 	.byte	13
   2D2F 00                11838 	.byte	0
   2D30 FF                11839 	.byte	-1
   2D31 10                11840 	.byte	16
   2D32 F5                11841 	.byte	-11
   2D33 FF                11842 	.byte	-1
   2D34 F3                11843 	.byte	-13
   2D35 00                11844 	.byte	0
   2D36 FF                11845 	.byte	-1
   2D37 F0                11846 	.byte	-16
   2D38 0B                11847 	.byte	11
   2D39 FF                11848 	.byte	-1
   2D3A FE                11849 	.byte	-2
   2D3B F3                11850 	.byte	-13
   2D3C 00                11851 	.byte	0
   2D3D 0F                11852 	.byte	15
   2D3E 0D                11853 	.byte	13
   2D3F FF                11854 	.byte	-1
   2D40 FD                11855 	.byte	-3
   2D41 F3                11856 	.byte	-13
   2D42 00                11857 	.byte	0
   2D43 13                11858 	.byte	19
   2D44 02                11859 	.byte	2
   2D45 FF                11860 	.byte	-1
   2D46 FD                11861 	.byte	-3
   2D47 F2                11862 	.byte	-14
   2D48 00                11863 	.byte	0
   2D49 F6                11864 	.byte	-10
   2D4A 0E                11865 	.byte	14
   2D4B FF                11866 	.byte	-1
   2D4C FD                11867 	.byte	-3
   2D4D F2                11868 	.byte	-14
   2D4E 00                11869 	.byte	0
   2D4F F1                11870 	.byte	-15
   2D50 0C                11871 	.byte	12
   2D51 FF                11872 	.byte	-1
   2D52 0C                11873 	.byte	12
   2D53 00                11874 	.byte	0
   2D54 FF                11875 	.byte	-1
   2D55 10                11876 	.byte	16
   2D56 F4                11877 	.byte	-12
   2D57 FF                11878 	.byte	-1
   2D58 F3                11879 	.byte	-13
   2D59 00                11880 	.byte	0
   2D5A FF                11881 	.byte	-1
   2D5B F1                11882 	.byte	-15
   2D5C 0C                11883 	.byte	12
   2D5D 01                11884 	.byte	1
                          11885 	.globl _depth2RollingRight12
   2D5E                   11886 _depth2RollingRight12:
   2D5E 00                11887 	.byte	0
   2D5F 10                11888 	.byte	16
   2D60 0E                11889 	.byte	14
   2D61 FF                11890 	.byte	-1
   2D62 F3                11891 	.byte	-13
   2D63 00                11892 	.byte	0
   2D64 FF                11893 	.byte	-1
   2D65 10                11894 	.byte	16
   2D66 F4                11895 	.byte	-12
   2D67 FF                11896 	.byte	-1
   2D68 0D                11897 	.byte	13
   2D69 00                11898 	.byte	0
   2D6A FF                11899 	.byte	-1
   2D6B F0                11900 	.byte	-16
   2D6C 0C                11901 	.byte	12
   2D6D FF                11902 	.byte	-1
   2D6E 03                11903 	.byte	3
   2D6F 0E                11904 	.byte	14
   2D70 00                11905 	.byte	0
   2D71 F0                11906 	.byte	-16
   2D72 F2                11907 	.byte	-14
   2D73 FF                11908 	.byte	-1
   2D74 03                11909 	.byte	3
   2D75 0E                11910 	.byte	14
   2D76 00                11911 	.byte	0
   2D77 0D                11912 	.byte	13
   2D78 E6                11913 	.byte	-26
   2D79 FF                11914 	.byte	-1
   2D7A 03                11915 	.byte	3
   2D7B 0E                11916 	.byte	14
   2D7C 00                11917 	.byte	0
   2D7D 0A                11918 	.byte	10
   2D7E F2                11919 	.byte	-14
   2D7F FF                11920 	.byte	-1
   2D80 03                11921 	.byte	3
   2D81 0E                11922 	.byte	14
   2D82 00                11923 	.byte	0
   2D83 F0                11924 	.byte	-16
   2D84 0C                11925 	.byte	12
   2D85 FF                11926 	.byte	-1
   2D86 F3                11927 	.byte	-13
   2D87 00                11928 	.byte	0
   2D88 FF                11929 	.byte	-1
   2D89 10                11930 	.byte	16
   2D8A F4                11931 	.byte	-12
   2D8B FF                11932 	.byte	-1
   2D8C 0D                11933 	.byte	13
   2D8D 00                11934 	.byte	0
   2D8E FF                11935 	.byte	-1
   2D8F F0                11936 	.byte	-16
   2D90 0C                11937 	.byte	12
   2D91 01                11938 	.byte	1
                          11939 	.globl _width2RollingFront12
   2D92                   11940 _width2RollingFront12:
   2D92 FF                11941 	.byte	-1
   2D93 06                11942 	.byte	6
   2D94 1C                11943 	.byte	28
   2D95 FF                11944 	.byte	-1
   2D96 0D                11945 	.byte	13
   2D97 00                11946 	.byte	0
   2D98 FF                11947 	.byte	-1
   2D99 FA                11948 	.byte	-6
   2D9A E4                11949 	.byte	-28
   2D9B FF                11950 	.byte	-1
   2D9C F3                11951 	.byte	-13
   2D9D 00                11952 	.byte	0
   2D9E FF                11953 	.byte	-1
   2D9F F9                11954 	.byte	-7
   2DA0 06                11955 	.byte	6
   2DA1 00                11956 	.byte	0
   2DA2 0D                11957 	.byte	13
   2DA3 16                11958 	.byte	22
   2DA4 FF                11959 	.byte	-1
   2DA5 F9                11960 	.byte	-7
   2DA6 06                11961 	.byte	6
   2DA7 00                11962 	.byte	0
   2DA8 14                11963 	.byte	20
   2DA9 FA                11964 	.byte	-6
   2DAA FF                11965 	.byte	-1
   2DAB F8                11966 	.byte	-8
   2DAC 06                11967 	.byte	6
   2DAD 00                11968 	.byte	0
   2DAE 02                11969 	.byte	2
   2DAF DE                11970 	.byte	-34
   2DB0 FF                11971 	.byte	-1
   2DB1 F8                11972 	.byte	-8
   2DB2 06                11973 	.byte	6
   2DB3 00                11974 	.byte	0
   2DB4 F4                11975 	.byte	-12
   2DB5 00                11976 	.byte	0
   2DB6 FF                11977 	.byte	-1
   2DB7 06                11978 	.byte	6
   2DB8 1C                11979 	.byte	28
   2DB9 FF                11980 	.byte	-1
   2DBA 0C                11981 	.byte	12
   2DBB 00                11982 	.byte	0
   2DBC FF                11983 	.byte	-1
   2DBD FA                11984 	.byte	-6
   2DBE E4                11985 	.byte	-28
   2DBF FF                11986 	.byte	-1
   2DC0 F4                11987 	.byte	-12
   2DC1 00                11988 	.byte	0
   2DC2 01                11989 	.byte	1
                          11990 	.globl _width2RollingBack12
   2DC3                   11991 _width2RollingBack12:
   2DC3 00                11992 	.byte	0
   2DC4 15                11993 	.byte	21
   2DC5 FB                11994 	.byte	-5
   2DC6 FF                11995 	.byte	-1
   2DC7 06                11996 	.byte	6
   2DC8 1B                11997 	.byte	27
   2DC9 FF                11998 	.byte	-1
   2DCA F3                11999 	.byte	-13
   2DCB 00                12000 	.byte	0
   2DCC FF                12001 	.byte	-1
   2DCD FA                12002 	.byte	-6
   2DCE E5                12003 	.byte	-27
   2DCF FF                12004 	.byte	-1
   2DD0 0D                12005 	.byte	13
   2DD1 00                12006 	.byte	0
   2DD2 FF                12007 	.byte	-1
   2DD3 08                12008 	.byte	8
   2DD4 FA                12009 	.byte	-6
   2DD5 00                12010 	.byte	0
   2DD6 FE                12011 	.byte	-2
   2DD7 21                12012 	.byte	33
   2DD8 FF                12013 	.byte	-1
   2DD9 08                12014 	.byte	8
   2DDA FA                12015 	.byte	-6
   2DDB 00                12016 	.byte	0
   2DDC EB                12017 	.byte	-21
   2DDD 06                12018 	.byte	6
   2DDE FF                12019 	.byte	-1
   2DDF 08                12020 	.byte	8
   2DE0 FA                12021 	.byte	-6
   2DE1 00                12022 	.byte	0
   2DE2 F2                12023 	.byte	-14
   2DE3 EB                12024 	.byte	-21
   2DE4 FF                12025 	.byte	-1
   2DE5 08                12026 	.byte	8
   2DE6 FA                12027 	.byte	-6
   2DE7 00                12028 	.byte	0
   2DE8 0D                12029 	.byte	13
   2DE9 00                12030 	.byte	0
   2DEA FF                12031 	.byte	-1
   2DEB 06                12032 	.byte	6
   2DEC 1B                12033 	.byte	27
   2DED FF                12034 	.byte	-1
   2DEE F3                12035 	.byte	-13
   2DEF 00                12036 	.byte	0
   2DF0 FF                12037 	.byte	-1
   2DF1 FA                12038 	.byte	-6
   2DF2 E5                12039 	.byte	-27
   2DF3 FF                12040 	.byte	-1
   2DF4 0D                12041 	.byte	13
   2DF5 00                12042 	.byte	0
   2DF6 01                12043 	.byte	1
                          12044 	.globl _height1FallingLeft12
   2DF7                   12045 _height1FallingLeft12:
   2DF7 FF                12046 	.byte	-1
   2DF8 0D                12047 	.byte	13
   2DF9 00                12048 	.byte	0
   2DFA FF                12049 	.byte	-1
   2DFB 08                12050 	.byte	8
   2DFC FB                12051 	.byte	-5
   2DFD FF                12052 	.byte	-1
   2DFE F3                12053 	.byte	-13
   2DFF 00                12054 	.byte	0
   2E00 FF                12055 	.byte	-1
   2E01 F8                12056 	.byte	-8
   2E02 05                12057 	.byte	5
   2E03 FF                12058 	.byte	-1
   2E04 FE                12059 	.byte	-2
   2E05 F3                12060 	.byte	-13
   2E06 00                12061 	.byte	0
   2E07 0F                12062 	.byte	15
   2E08 0D                12063 	.byte	13
   2E09 FF                12064 	.byte	-1
   2E0A FD                12065 	.byte	-3
   2E0B F3                12066 	.byte	-13
   2E0C 00                12067 	.byte	0
   2E0D 0B                12068 	.byte	11
   2E0E 08                12069 	.byte	8
   2E0F FF                12070 	.byte	-1
   2E10 FD                12071 	.byte	-3
   2E11 F2                12072 	.byte	-14
   2E12 00                12073 	.byte	0
   2E13 F6                12074 	.byte	-10
   2E14 0E                12075 	.byte	14
   2E15 FF                12076 	.byte	-1
   2E16 FD                12077 	.byte	-3
   2E17 F2                12078 	.byte	-14
   2E18 00                12079 	.byte	0
   2E19 F9                12080 	.byte	-7
   2E1A 06                12081 	.byte	6
   2E1B FF                12082 	.byte	-1
   2E1C 0C                12083 	.byte	12
   2E1D 00                12084 	.byte	0
   2E1E FF                12085 	.byte	-1
   2E1F 08                12086 	.byte	8
   2E20 FA                12087 	.byte	-6
   2E21 FF                12088 	.byte	-1
   2E22 F3                12089 	.byte	-13
   2E23 00                12090 	.byte	0
   2E24 FF                12091 	.byte	-1
   2E25 F9                12092 	.byte	-7
   2E26 06                12093 	.byte	6
   2E27 01                12094 	.byte	1
                          12095 	.globl _height1FallingRight12
   2E28                   12096 _height1FallingRight12:
   2E28 00                12097 	.byte	0
   2E29 10                12098 	.byte	16
   2E2A 0E                12099 	.byte	14
   2E2B FF                12100 	.byte	-1
   2E2C F3                12101 	.byte	-13
   2E2D 00                12102 	.byte	0
   2E2E FF                12103 	.byte	-1
   2E2F 08                12104 	.byte	8
   2E30 FA                12105 	.byte	-6
   2E31 FF                12106 	.byte	-1
   2E32 0D                12107 	.byte	13
   2E33 00                12108 	.byte	0
   2E34 FF                12109 	.byte	-1
   2E35 F8                12110 	.byte	-8
   2E36 06                12111 	.byte	6
   2E37 FF                12112 	.byte	-1
   2E38 03                12113 	.byte	3
   2E39 0E                12114 	.byte	14
   2E3A 00                12115 	.byte	0
   2E3B F0                12116 	.byte	-16
   2E3C F2                12117 	.byte	-14
   2E3D FF                12118 	.byte	-1
   2E3E 03                12119 	.byte	3
   2E3F 0E                12120 	.byte	14
   2E40 00                12121 	.byte	0
   2E41 05                12122 	.byte	5
   2E42 EC                12123 	.byte	-20
   2E43 FF                12124 	.byte	-1
   2E44 03                12125 	.byte	3
   2E45 0E                12126 	.byte	14
   2E46 00                12127 	.byte	0
   2E47 0A                12128 	.byte	10
   2E48 F2                12129 	.byte	-14
   2E49 FF                12130 	.byte	-1
   2E4A 03                12131 	.byte	3
   2E4B 0E                12132 	.byte	14
   2E4C 00                12133 	.byte	0
   2E4D F8                12134 	.byte	-8
   2E4E 06                12135 	.byte	6
   2E4F FF                12136 	.byte	-1
   2E50 F3                12137 	.byte	-13
   2E51 00                12138 	.byte	0
   2E52 FF                12139 	.byte	-1
   2E53 08                12140 	.byte	8
   2E54 FA                12141 	.byte	-6
   2E55 FF                12142 	.byte	-1
   2E56 0D                12143 	.byte	13
   2E57 00                12144 	.byte	0
   2E58 FF                12145 	.byte	-1
   2E59 F8                12146 	.byte	-8
   2E5A 06                12147 	.byte	6
   2E5B 01                12148 	.byte	1
                          12149 	.globl _height1FallingBack12
   2E5C                   12150 _height1FallingBack12:
   2E5C 00                12151 	.byte	0
   2E5D 15                12152 	.byte	21
   2E5E FB                12153 	.byte	-5
   2E5F FF                12154 	.byte	-1
   2E60 03                12155 	.byte	3
   2E61 0D                12156 	.byte	13
   2E62 FF                12157 	.byte	-1
   2E63 F3                12158 	.byte	-13
   2E64 00                12159 	.byte	0
   2E65 FF                12160 	.byte	-1
   2E66 FD                12161 	.byte	-3
   2E67 F3                12162 	.byte	-13
   2E68 FF                12163 	.byte	-1
   2E69 0D                12164 	.byte	13
   2E6A 00                12165 	.byte	0
   2E6B FF                12166 	.byte	-1
   2E6C 08                12167 	.byte	8
   2E6D FA                12168 	.byte	-6
   2E6E 00                12169 	.byte	0
   2E6F FB                12170 	.byte	-5
   2E70 13                12171 	.byte	19
   2E71 FF                12172 	.byte	-1
   2E72 08                12173 	.byte	8
   2E73 FA                12174 	.byte	-6
   2E74 00                12175 	.byte	0
   2E75 EB                12176 	.byte	-21
   2E76 06                12177 	.byte	6
   2E77 FF                12178 	.byte	-1
   2E78 08                12179 	.byte	8
   2E79 FA                12180 	.byte	-6
   2E7A 00                12181 	.byte	0
   2E7B F5                12182 	.byte	-11
   2E7C F9                12183 	.byte	-7
   2E7D FF                12184 	.byte	-1
   2E7E 08                12185 	.byte	8
   2E7F FA                12186 	.byte	-6
   2E80 00                12187 	.byte	0
   2E81 0D                12188 	.byte	13
   2E82 00                12189 	.byte	0
   2E83 FF                12190 	.byte	-1
   2E84 03                12191 	.byte	3
   2E85 0D                12192 	.byte	13
   2E86 FF                12193 	.byte	-1
   2E87 F3                12194 	.byte	-13
   2E88 00                12195 	.byte	0
   2E89 FF                12196 	.byte	-1
   2E8A FD                12197 	.byte	-3
   2E8B F3                12198 	.byte	-13
   2E8C FF                12199 	.byte	-1
   2E8D 0D                12200 	.byte	13
   2E8E 00                12201 	.byte	0
   2E8F 01                12202 	.byte	1
                          12203 	.globl _height1FallingFront12
   2E90                   12204 _height1FallingFront12:
   2E90 FF                12205 	.byte	-1
   2E91 03                12206 	.byte	3
   2E92 0E                12207 	.byte	14
   2E93 FF                12208 	.byte	-1
   2E94 0D                12209 	.byte	13
   2E95 00                12210 	.byte	0
   2E96 FF                12211 	.byte	-1
   2E97 FD                12212 	.byte	-3
   2E98 F2                12213 	.byte	-14
   2E99 FF                12214 	.byte	-1
   2E9A F3                12215 	.byte	-13
   2E9B 00                12216 	.byte	0
   2E9C FF                12217 	.byte	-1
   2E9D F9                12218 	.byte	-7
   2E9E 06                12219 	.byte	6
   2E9F 00                12220 	.byte	0
   2EA0 0A                12221 	.byte	10
   2EA1 08                12222 	.byte	8
   2EA2 FF                12223 	.byte	-1
   2EA3 F9                12224 	.byte	-7
   2EA4 06                12225 	.byte	6
   2EA5 00                12226 	.byte	0
   2EA6 14                12227 	.byte	20
   2EA7 FA                12228 	.byte	-6
   2EA8 FF                12229 	.byte	-1
   2EA9 F8                12230 	.byte	-8
   2EAA 06                12231 	.byte	6
   2EAB 00                12232 	.byte	0
   2EAC 05                12233 	.byte	5
   2EAD EC                12234 	.byte	-20
   2EAE FF                12235 	.byte	-1
   2EAF F8                12236 	.byte	-8
   2EB0 06                12237 	.byte	6
   2EB1 00                12238 	.byte	0
   2EB2 F4                12239 	.byte	-12
   2EB3 00                12240 	.byte	0
   2EB4 FF                12241 	.byte	-1
   2EB5 03                12242 	.byte	3
   2EB6 0E                12243 	.byte	14
   2EB7 FF                12244 	.byte	-1
   2EB8 0C                12245 	.byte	12
   2EB9 00                12246 	.byte	0
   2EBA FF                12247 	.byte	-1
   2EBB FD                12248 	.byte	-3
   2EBC F2                12249 	.byte	-14
   2EBD FF                12250 	.byte	-1
   2EBE F4                12251 	.byte	-12
   2EBF 00                12252 	.byte	0
   2EC0 01                12253 	.byte	1
                          12254 	.globl _height2FallingLeft
                          12255 	.area	.text
   2EC1                   12256 _height2FallingLeft:
   2EC1 05 7D             12257 	.word	_height2FallingLeft0
   2EC3 08 99             12258 	.word	_height2FallingLeft1
   2EC5 0B C7             12259 	.word	_height2FallingLeft2
   2EC7 0E F5             12260 	.word	_height2FallingLeft3
   2EC9 12 23             12261 	.word	_height2FallingLeft4
   2ECB 15 51             12262 	.word	_height2FallingLeft5
   2ECD 18 7F             12263 	.word	_height2FallingLeft6
   2ECF 1B AD             12264 	.word	_height2FallingLeft7
   2ED1 1E DB             12265 	.word	_height2FallingLeft8
   2ED3 22 09             12266 	.word	_height2FallingLeft9
   2ED5 25 37             12267 	.word	_height2FallingLeft10
   2ED7 28 65             12268 	.word	_height2FallingLeft11
                          12269 	.globl _height2RisingRight
   2ED9                   12270 _height2RisingRight:
   2ED9 05 AE             12271 	.word	_height2RisingRight0
   2EDB 08 CA             12272 	.word	_height2RisingRight1
   2EDD 0B F8             12273 	.word	_height2RisingRight2
   2EDF 0F 26             12274 	.word	_height2RisingRight3
   2EE1 12 54             12275 	.word	_height2RisingRight4
   2EE3 15 82             12276 	.word	_height2RisingRight5
   2EE5 18 B0             12277 	.word	_height2RisingRight6
   2EE7 1B DE             12278 	.word	_height2RisingRight7
   2EE9 1F 0C             12279 	.word	_height2RisingRight8
   2EEB 22 3A             12280 	.word	_height2RisingRight9
   2EED 25 68             12281 	.word	_height2RisingRight10
   2EEF 28 96             12282 	.word	_height2RisingRight11
                          12283 	.globl _height2FallingRight
   2EF1                   12284 _height2FallingRight:
   2EF1 05 E2             12285 	.word	_height2FallingRight0
   2EF3 08 FE             12286 	.word	_height2FallingRight1
   2EF5 0C 2C             12287 	.word	_height2FallingRight2
   2EF7 0F 5A             12288 	.word	_height2FallingRight3
   2EF9 12 88             12289 	.word	_height2FallingRight4
   2EFB 15 B6             12290 	.word	_height2FallingRight5
   2EFD 18 E4             12291 	.word	_height2FallingRight6
   2EFF 1C 12             12292 	.word	_height2FallingRight7
   2F01 1F 40             12293 	.word	_height2FallingRight8
   2F03 22 6E             12294 	.word	_height2FallingRight9
   2F05 25 9C             12295 	.word	_height2FallingRight10
   2F07 28 CA             12296 	.word	_height2FallingRight11
                          12297 	.globl _height2RisingLeft
   2F09                   12298 _height2RisingLeft:
   2F09 06 13             12299 	.word	_height2RisingLeft0
   2F0B 09 32             12300 	.word	_height2RisingLeft1
   2F0D 0C 60             12301 	.word	_height2RisingLeft2
   2F0F 0F 8E             12302 	.word	_height2RisingLeft3
   2F11 12 BC             12303 	.word	_height2RisingLeft4
   2F13 15 EA             12304 	.word	_height2RisingLeft5
   2F15 19 18             12305 	.word	_height2RisingLeft6
   2F17 1C 46             12306 	.word	_height2RisingLeft7
   2F19 1F 74             12307 	.word	_height2RisingLeft8
   2F1B 22 A2             12308 	.word	_height2RisingLeft9
   2F1D 25 D0             12309 	.word	_height2RisingLeft10
   2F1F 28 FE             12310 	.word	_height2RisingLeft11
                          12311 	.globl _height2FallingBack
   2F21                   12312 _height2FallingBack:
   2F21 06 47             12313 	.word	_height2FallingBack0
   2F23 09 66             12314 	.word	_height2FallingBack1
   2F25 0C 94             12315 	.word	_height2FallingBack2
   2F27 0F C2             12316 	.word	_height2FallingBack3
   2F29 12 F0             12317 	.word	_height2FallingBack4
   2F2B 16 1E             12318 	.word	_height2FallingBack5
   2F2D 19 4C             12319 	.word	_height2FallingBack6
   2F2F 1C 7A             12320 	.word	_height2FallingBack7
   2F31 1F A8             12321 	.word	_height2FallingBack8
   2F33 22 D6             12322 	.word	_height2FallingBack9
   2F35 26 04             12323 	.word	_height2FallingBack10
   2F37 29 32             12324 	.word	_height2FallingBack11
                          12325 	.globl _height2RisingFront
   2F39                   12326 _height2RisingFront:
   2F39 06 78             12327 	.word	_height2RisingFront0
   2F3B 09 9A             12328 	.word	_height2RisingFront1
   2F3D 0C C8             12329 	.word	_height2RisingFront2
   2F3F 0F F6             12330 	.word	_height2RisingFront3
   2F41 13 24             12331 	.word	_height2RisingFront4
   2F43 16 52             12332 	.word	_height2RisingFront5
   2F45 19 80             12333 	.word	_height2RisingFront6
   2F47 1C AE             12334 	.word	_height2RisingFront7
   2F49 1F DC             12335 	.word	_height2RisingFront8
   2F4B 23 0A             12336 	.word	_height2RisingFront9
   2F4D 26 38             12337 	.word	_height2RisingFront10
   2F4F 29 66             12338 	.word	_height2RisingFront11
                          12339 	.globl _height2FallingFront
   2F51                   12340 _height2FallingFront:
   2F51 06 AC             12341 	.word	_height2FallingFront0
   2F53 09 CE             12342 	.word	_height2FallingFront1
   2F55 0C FC             12343 	.word	_height2FallingFront2
   2F57 10 2A             12344 	.word	_height2FallingFront3
   2F59 13 58             12345 	.word	_height2FallingFront4
   2F5B 16 86             12346 	.word	_height2FallingFront5
   2F5D 19 B4             12347 	.word	_height2FallingFront6
   2F5F 1C E2             12348 	.word	_height2FallingFront7
   2F61 20 10             12349 	.word	_height2FallingFront8
   2F63 23 3E             12350 	.word	_height2FallingFront9
   2F65 26 6C             12351 	.word	_height2FallingFront10
   2F67 29 9A             12352 	.word	_height2FallingFront11
                          12353 	.globl _height2RisingBack
   2F69                   12354 _height2RisingBack:
   2F69 06 DD             12355 	.word	_height2RisingBack0
   2F6B 09 FF             12356 	.word	_height2RisingBack1
   2F6D 0D 2D             12357 	.word	_height2RisingBack2
   2F6F 10 5B             12358 	.word	_height2RisingBack3
   2F71 13 89             12359 	.word	_height2RisingBack4
   2F73 16 B7             12360 	.word	_height2RisingBack5
   2F75 19 E5             12361 	.word	_height2RisingBack6
   2F77 1D 13             12362 	.word	_height2RisingBack7
   2F79 20 41             12363 	.word	_height2RisingBack8
   2F7B 23 6F             12364 	.word	_height2RisingBack9
   2F7D 26 9D             12365 	.word	_height2RisingBack10
   2F7F 29 CB             12366 	.word	_height2RisingBack11
                          12367 	.globl _depth2RollingLeft
   2F81                   12368 _depth2RollingLeft:
   2F81 07 11             12369 	.word	_depth2RollingLeft0
   2F83 0A 33             12370 	.word	_depth2RollingLeft1
   2F85 0D 61             12371 	.word	_depth2RollingLeft2
   2F87 10 8F             12372 	.word	_depth2RollingLeft3
   2F89 13 BD             12373 	.word	_depth2RollingLeft4
   2F8B 16 EB             12374 	.word	_depth2RollingLeft5
   2F8D 1A 19             12375 	.word	_depth2RollingLeft6
   2F8F 1D 47             12376 	.word	_depth2RollingLeft7
   2F91 20 75             12377 	.word	_depth2RollingLeft8
   2F93 23 A3             12378 	.word	_depth2RollingLeft9
   2F95 26 D1             12379 	.word	_depth2RollingLeft10
   2F97 29 FF             12380 	.word	_depth2RollingLeft11
                          12381 	.globl _depth2RollingRight
   2F99                   12382 _depth2RollingRight:
   2F99 07 42             12383 	.word	_depth2RollingRight0
   2F9B 0A 64             12384 	.word	_depth2RollingRight1
   2F9D 0D 92             12385 	.word	_depth2RollingRight2
   2F9F 10 C0             12386 	.word	_depth2RollingRight3
   2FA1 13 EE             12387 	.word	_depth2RollingRight4
   2FA3 17 1C             12388 	.word	_depth2RollingRight5
   2FA5 1A 4A             12389 	.word	_depth2RollingRight6
   2FA7 1D 78             12390 	.word	_depth2RollingRight7
   2FA9 20 A6             12391 	.word	_depth2RollingRight8
   2FAB 23 D4             12392 	.word	_depth2RollingRight9
   2FAD 27 02             12393 	.word	_depth2RollingRight10
   2FAF 2A 30             12394 	.word	_depth2RollingRight11
                          12395 	.globl _width2RollingFront
   2FB1                   12396 _width2RollingFront:
   2FB1 07 73             12397 	.word	_width2RollingFront0
   2FB3 0A 98             12398 	.word	_width2RollingFront1
   2FB5 0D C6             12399 	.word	_width2RollingFront2
   2FB7 10 F4             12400 	.word	_width2RollingFront3
   2FB9 14 22             12401 	.word	_width2RollingFront4
   2FBB 17 50             12402 	.word	_width2RollingFront5
   2FBD 1A 7E             12403 	.word	_width2RollingFront6
   2FBF 1D AC             12404 	.word	_width2RollingFront7
   2FC1 20 DA             12405 	.word	_width2RollingFront8
   2FC3 24 08             12406 	.word	_width2RollingFront9
   2FC5 27 36             12407 	.word	_width2RollingFront10
   2FC7 2A 64             12408 	.word	_width2RollingFront11
                          12409 	.globl _width2RollingBack
   2FC9                   12410 _width2RollingBack:
   2FC9 07 A4             12411 	.word	_width2RollingBack0
   2FCB 0A C9             12412 	.word	_width2RollingBack1
   2FCD 0D F7             12413 	.word	_width2RollingBack2
   2FCF 11 25             12414 	.word	_width2RollingBack3
   2FD1 14 53             12415 	.word	_width2RollingBack4
   2FD3 17 81             12416 	.word	_width2RollingBack5
   2FD5 1A AF             12417 	.word	_width2RollingBack6
   2FD7 1D DD             12418 	.word	_width2RollingBack7
   2FD9 21 0B             12419 	.word	_width2RollingBack8
   2FDB 24 39             12420 	.word	_width2RollingBack9
   2FDD 27 67             12421 	.word	_width2RollingBack10
   2FDF 2A 95             12422 	.word	_width2RollingBack11
                          12423 	.globl _height1FallingLeft
   2FE1                   12424 _height1FallingLeft:
   2FE1 07 D5             12425 	.word	_height1FallingLeft0
   2FE3 0A FD             12426 	.word	_height1FallingLeft1
   2FE5 0E 2B             12427 	.word	_height1FallingLeft2
   2FE7 11 59             12428 	.word	_height1FallingLeft3
   2FE9 14 87             12429 	.word	_height1FallingLeft4
   2FEB 17 B5             12430 	.word	_height1FallingLeft5
   2FED 1A E3             12431 	.word	_height1FallingLeft6
   2FEF 1E 11             12432 	.word	_height1FallingLeft7
   2FF1 21 3F             12433 	.word	_height1FallingLeft8
   2FF3 24 6D             12434 	.word	_height1FallingLeft9
   2FF5 27 9B             12435 	.word	_height1FallingLeft10
   2FF7 2A C9             12436 	.word	_height1FallingLeft11
                          12437 	.globl _height1FallingRight
   2FF9                   12438 _height1FallingRight:
   2FF9 08 06             12439 	.word	_height1FallingRight0
   2FFB 0B 2E             12440 	.word	_height1FallingRight1
   2FFD 0E 5C             12441 	.word	_height1FallingRight2
   2FFF 11 8A             12442 	.word	_height1FallingRight3
   3001 14 B8             12443 	.word	_height1FallingRight4
   3003 17 E6             12444 	.word	_height1FallingRight5
   3005 1B 14             12445 	.word	_height1FallingRight6
   3007 1E 42             12446 	.word	_height1FallingRight7
   3009 21 70             12447 	.word	_height1FallingRight8
   300B 24 9E             12448 	.word	_height1FallingRight9
   300D 27 CC             12449 	.word	_height1FallingRight10
   300F 2A FA             12450 	.word	_height1FallingRight11
                          12451 	.globl _height1FallingBack
   3011                   12452 _height1FallingBack:
   3011 08 37             12453 	.word	_height1FallingBack0
   3013 0B 62             12454 	.word	_height1FallingBack1
   3015 0E 90             12455 	.word	_height1FallingBack2
   3017 11 BE             12456 	.word	_height1FallingBack3
   3019 14 EC             12457 	.word	_height1FallingBack4
   301B 18 1A             12458 	.word	_height1FallingBack5
   301D 1B 48             12459 	.word	_height1FallingBack6
   301F 1E 76             12460 	.word	_height1FallingBack7
   3021 21 A4             12461 	.word	_height1FallingBack8
   3023 24 D2             12462 	.word	_height1FallingBack9
   3025 28 00             12463 	.word	_height1FallingBack10
   3027 2B 2E             12464 	.word	_height1FallingBack11
                          12465 	.globl _height1FallingFront
   3029                   12466 _height1FallingFront:
   3029 08 68             12467 	.word	_height1FallingFront0
   302B 0B 96             12468 	.word	_height1FallingFront1
   302D 0E C4             12469 	.word	_height1FallingFront2
   302F 11 F2             12470 	.word	_height1FallingFront3
   3031 15 20             12471 	.word	_height1FallingFront4
   3033 18 4E             12472 	.word	_height1FallingFront5
   3035 1B 7C             12473 	.word	_height1FallingFront6
   3037 1E AA             12474 	.word	_height1FallingFront7
   3039 21 D8             12475 	.word	_height1FallingFront8
   303B 25 06             12476 	.word	_height1FallingFront9
   303D 28 34             12477 	.word	_height1FallingFront10
   303F 2B 62             12478 	.word	_height1FallingFront11
                          12479 	.area .bss
                          12480 	.globl	_blockOrientation
   C888                   12481 _blockOrientation:	.blkb	1
                          12482 	.globl	_blockYOfs
   C889                   12483 _blockYOfs:	.blkb	1
                          12484 	.globl	_lastBlockDirection
   C88A                   12485 _lastBlockDirection:	.blkb	1
                          12486 	.globl	_blockAnimating
   C88B                   12487 _blockAnimating:	.blkb	1
                          12488 	.globl	_splitMode
   C88C                   12489 _splitMode:	.blkb	1
                          12490 	.globl	_blockX
   C88D                   12491 _blockX:	.blkb	1
                          12492 	.globl	_blockY
   C88E                   12493 _blockY:	.blkb	1
                          12494 	.globl	_blockX2
   C88F                   12495 _blockX2:	.blkb	1
                          12496 	.globl	_blockY2
   C890                   12497 _blockY2:	.blkb	1
                          12498 	.globl	_blockAnimation
   C891                   12499 _blockAnimation:	.blkb	2
                          12500 	.globl	_nextBlockAnimation
   C893                   12501 _nextBlockAnimation:	.blkb	2
                          12502 	.globl	_blockAnimationStep
   C895                   12503 _blockAnimationStep:	.blkb	1
                          12504 	.globl	_nextBlockX
   C896                   12505 _nextBlockX:	.blkb	1
                          12506 	.globl	_nextBlockY
   C897                   12507 _nextBlockY:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$block$1001       030C GR  |   2 A$block$1002       030F GR
  2 A$block$1008       0312 GR  |   2 A$block$1009       0314 GR
  2 A$block$1015       0317 GR  |   2 A$block$1016       0319 GR
  2 A$block$1017       031A GR  |   2 A$block$1023       031D GR
  2 A$block$1024       0320 GR  |   2 A$block$1026       0322 GR
  2 A$block$1027       0324 GR  |   2 A$block$1028       0325 GR
  2 A$block$1029       0327 GR  |   2 A$block$1035       0329 GR
  2 A$block$1036       032C GR  |   2 A$block$1042       032F GR
  2 A$block$1043       0331 GR  |   2 A$block$1049       0334 GR
  2 A$block$105        0043 GR  |   2 A$block$1051       0337 GR
  2 A$block$1052       0339 GR  |   2 A$block$1055       033A GR
  2 A$block$106        0046 GR  |   2 A$block$1061       033C GR
  2 A$block$1062       033F GR  |   2 A$block$1068       0341 GR
  2 A$block$1069       0344 GR  |   2 A$block$1075       0346 GR
  2 A$block$1076       0349 GR  |   2 A$block$1082       034C GR
  2 A$block$1083       034F GR  |   2 A$block$1089       0352 GR
  2 A$block$1090       0354 GR  |   2 A$block$1096       0357 GR
  2 A$block$1097       0359 GR  |   2 A$block$1098       035C GR
  2 A$block$1099       035E GR  |   2 A$block$1102       035F GR
  2 A$block$1103       0361 GR  |   2 A$block$1104       0363 GR
  2 A$block$1110       0365 GR  |   2 A$block$1116       0368 GR
  2 A$block$1117       036A GR  |   2 A$block$112        0049 GR
  2 A$block$1120       036C GR  |   2 A$block$1121       036E GR
  2 A$block$1127       0371 GR  |   2 A$block$1128       0373 GR
  2 A$block$1129       0375 GR  |   2 A$block$1130       0377 GR
  2 A$block$1131       0379 GR  |   2 A$block$1134       037B GR
  2 A$block$1135       037D GR  |   2 A$block$1136       037F GR
  2 A$block$1142       0382 GR  |   2 A$block$1143       0385 GR
  2 A$block$1144       0387 GR  |   2 A$block$1145       0389 GR
  2 A$block$1146       038C GR  |   2 A$block$1147       038F GR
  2 A$block$1148       0391 GR  |   2 A$block$1149       0394 GR
  2 A$block$1150       0396 GR  |   2 A$block$1151       0399 GR
  2 A$block$1152       039C GR  |   2 A$block$1153       039E GR
  2 A$block$1154       03A0 GR  |   2 A$block$1155       03A2 GR
  2 A$block$1156       03A4 GR  |   2 A$block$1159       03A6 GR
  2 A$block$1160       03A8 GR  |   2 A$block$1161       03AA GR
  2 A$block$1167       03AD GR  |   2 A$block$1168       03B0 GR
  2 A$block$1169       03B1 GR  |   2 A$block$1170       03B3 GR
  2 A$block$1171       03B4 GR  |   2 A$block$1172       03B5 GR
  2 A$block$1173       03B8 GR  |   2 A$block$1174       03BA GR
  2 A$block$1175       03BC GR  |   2 A$block$1176       03BE GR
  2 A$block$1180       03C0 GR  |   2 A$block$1185       03C2 GR
  2 A$block$119        004C GR  |   2 A$block$1191       03C5 GR
  2 A$block$1192       03C7 GR  |   2 A$block$1193       03CA GR
  2 A$block$1199       03CE GR  |   2 A$block$120        004F GR
  2 A$block$1205       03D1 GR  |   2 A$block$1206       03D3 GR
  2 A$block$1209       03D5 GR  |   2 A$block$1210       03D7 GR
  2 A$block$1216       03DA GR  |   2 A$block$1217       03DC GR
  2 A$block$1218       03DE GR  |   2 A$block$1219       03E0 GR
  2 A$block$1220       03E2 GR  |   2 A$block$1223       03E4 GR
  2 A$block$1224       03E6 GR  |   2 A$block$1225       03E8 GR
  2 A$block$1231       03EB GR  |   2 A$block$1232       03EE GR
  2 A$block$1233       03F0 GR  |   2 A$block$1234       03F2 GR
  2 A$block$1235       03F5 GR  |   2 A$block$1236       03F8 GR
  2 A$block$1237       03FA GR  |   2 A$block$1238       03FD GR
  2 A$block$1239       03FF GR  |   2 A$block$1240       0402 GR
  2 A$block$1241       0405 GR  |   2 A$block$1242       0407 GR
  2 A$block$1243       0409 GR  |   2 A$block$1244       040B GR
  2 A$block$1245       040D GR  |   2 A$block$1248       040F GR
  2 A$block$1249       0411 GR  |   2 A$block$1250       0413 GR
  2 A$block$1256       0416 GR  |   2 A$block$1257       0418 GR
  2 A$block$1258       041A GR  |   2 A$block$126        0052 GR
  2 A$block$1262       041D GR  |   2 A$block$1267       041F GR
  2 A$block$1270       0422 GR  |   2 A$block$1272       0424 GR
  2 A$block$1273       0426 GR  |   2 A$block$132        0055 GR
  2 A$block$133        0058 GR  |   2 A$block$134        0059 GR
  2 A$block$140        005C GR  |   2 A$block$141        005F GR
  2 A$block$147        0062 GR  |   2 A$block$154        0065 GR
  2 A$block$155        0068 GR  |   2 A$block$161        006B GR
  2 A$block$167        006E GR  |   2 A$block$168        0071 GR
  2 A$block$174        0074 GR  |   2 A$block$175        0077 GR
  2 A$block$176        0078 GR  |   2 A$block$182        007B GR
  2 A$block$189        007D GR  |   2 A$block$190        0080 GR
  2 A$block$196        0083 GR  |   2 A$block$202        0086 GR
  2 A$block$203        0089 GR  |   2 A$block$209        008C GR
  2 A$block$210        008F GR  |   2 A$block$211        0090 GR
  2 A$block$223        0093 GR  |   2 A$block$230        0096 GR
  2 A$block$237        0099 GR  |   2 A$block$238        009C GR
  2 A$block$239        009E GR  |   2 A$block$240        00A2 GR
  2 A$block$241        00A4 GR  |   2 A$block$242        00A6 GR
  2 A$block$243        00AA GR  |   2 A$block$250        00AD GR
  2 A$block$251        00AF GR  |   2 A$block$252        00B1 GR
  2 A$block$253        00B5 GR  |   2 A$block$254        00B7 GR
  2 A$block$255        00B9 GR  |   2 A$block$256        00BB GR
  2 A$block$257        00BD GR  |   2 A$block$258        00C1 GR
  2 A$block$265        00C4 GR  |   2 A$block$266        00C7 GR
  2 A$block$272        00CA GR  |   2 A$block$273        00CD GR
  2 A$block$279        00D0 GR  |   2 A$block$280        00D3 GR
  2 A$block$281        00D5 GR  |   2 A$block$287        00D8 GR
  2 A$block$288        00DB GR  |   2 A$block$294        00DE GR
  2 A$block$295        00E0 GR  |   2 A$block$301        00E3 GR
  2 A$block$308        00E6 GR  |   2 A$block$309        00E9 GR
  2 A$block$315        00EC GR  |   2 A$block$316        00EF GR
  2 A$block$322        00F2 GR  |   2 A$block$323        00F5 GR
  2 A$block$324        00F6 GR  |   2 A$block$330        00F9 GR
  2 A$block$331        00FC GR  |   2 A$block$337        00FF GR
  2 A$block$338        0101 GR  |   2 A$block$34         0000 GR
  2 A$block$344        0104 GR  |   2 A$block$35         0002 GR
  2 A$block$351        0107 GR  |   2 A$block$352        010A GR
  2 A$block$358        010D GR  |   2 A$block$359        0110 GR
  2 A$block$365        0113 GR  |   2 A$block$366        0116 GR
  2 A$block$372        0119 GR  |   2 A$block$373        011C GR
  2 A$block$374        011D GR  |   2 A$block$380        0120 GR
  2 A$block$381        0122 GR  |   2 A$block$387        0125 GR
  2 A$block$394        0127 GR  |   2 A$block$395        012A GR
  2 A$block$401        012D GR  |   2 A$block$402        0130 GR
  2 A$block$408        0133 GR  |   2 A$block$409        0136 GR
  2 A$block$41         0004 GR  |   2 A$block$415        0139 GR
  2 A$block$416        013C GR  |   2 A$block$417        013E GR
  2 A$block$42         0006 GR  |   2 A$block$423        0141 GR
  2 A$block$424        0143 GR  |   2 A$block$436        0146 GR
  2 A$block$443        0149 GR  |   2 A$block$444        014B GR
  2 A$block$445        014D GR  |   2 A$block$446        0151 GR
  2 A$block$447        0153 GR  |   2 A$block$448        0155 GR
  2 A$block$449        0157 GR  |   2 A$block$450        0159 GR
  2 A$block$451        015D GR  |   2 A$block$458        0160 GR
  2 A$block$459        0163 GR  |   2 A$block$465        0166 GR
  2 A$block$471        0169 GR  |   2 A$block$472        016C GR
  2 A$block$473        016D GR  |   2 A$block$479        0170 GR
  2 A$block$48         0009 GR  |   2 A$block$480        0173 GR
  2 A$block$486        0176 GR  |   2 A$block$49         000B GR
  2 A$block$493        0179 GR  |   2 A$block$494        017C GR
  2 A$block$500        017F GR  |   2 A$block$501        0182 GR
  2 A$block$507        0185 GR  |   2 A$block$508        0188 GR
  2 A$block$509        0189 GR  |   2 A$block$515        018C GR
  2 A$block$516        018F GR  |   2 A$block$522        0192 GR
  2 A$block$529        0195 GR  |   2 A$block$530        0198 GR
  2 A$block$536        019B GR  |   2 A$block$537        019E GR
  2 A$block$543        01A1 GR  |   2 A$block$544        01A4 GR
  2 A$block$55         000E GR  |   2 A$block$550        01A7 GR
  2 A$block$551        01AA GR  |   2 A$block$552        01AC GR
  2 A$block$558        01AF GR  |   2 A$block$56         0011 GR
  2 A$block$564        01B2 GR  |   2 A$block$571        01B4 GR
  2 A$block$572        01B7 GR  |   2 A$block$578        01BA GR
  2 A$block$579        01BD GR  |   2 A$block$585        01C0 GR
  2 A$block$586        01C3 GR  |   2 A$block$592        01C6 GR
  2 A$block$593        01C9 GR  |   2 A$block$594        01CA GR
  2 A$block$600        01CD GR  |   2 A$block$612        01D0 GR
  2 A$block$619        01D3 GR  |   2 A$block$62         0015 GR
  2 A$block$620        01D5 GR  |   2 A$block$621        01D7 GR
  2 A$block$622        01DB GR  |   2 A$block$623        01DD GR
  2 A$block$624        01DF GR  |   2 A$block$625        01E1 GR
  2 A$block$626        01E3 GR  |   2 A$block$627        01E7 GR
  2 A$block$63         0018 GR  |   2 A$block$634        01EA GR
  2 A$block$635        01ED GR  |   2 A$block$641        01F0 GR
  2 A$block$642        01F3 GR  |   2 A$block$648        01F6 GR
  2 A$block$649        01F9 GR  |   2 A$block$650        01FA GR
  2 A$block$656        01FD GR  |   2 A$block$657        0200 GR
  2 A$block$663        0203 GR  |   2 A$block$669        0206 GR
  2 A$block$676        0209 GR  |   2 A$block$677        020C GR
  2 A$block$683        020F GR  |   2 A$block$684        0212 GR
  2 A$block$69         001C GR  |   2 A$block$690        0215 GR
  2 A$block$691        0218 GR  |   2 A$block$692        021A GR
  2 A$block$698        021D GR  |   2 A$block$699        0220 GR
  2 A$block$70         001E GR  |   2 A$block$705        0223 GR
  2 A$block$71         0020 GR  |   2 A$block$711        0226 GR
  2 A$block$718        0229 GR  |   2 A$block$719        022C GR
  2 A$block$72         0024 GR  |   2 A$block$725        022F GR
  2 A$block$73         0026 GR  |   2 A$block$731        0232 GR
  2 A$block$732        0235 GR  |   2 A$block$738        0238 GR
  2 A$block$739        023B GR  |   2 A$block$74         0028 GR
  2 A$block$740        023C GR  |   2 A$block$746        023F GR
  2 A$block$75         002A GR  |   2 A$block$753        0241 GR
  2 A$block$754        0244 GR  |   2 A$block$76         002C GR
  2 A$block$760        0247 GR  |   2 A$block$761        024A GR
  2 A$block$767        024D GR  |   2 A$block$768        0250 GR
  2 A$block$77         0030 GR  |   2 A$block$774        0253 GR
  2 A$block$775        0256 GR  |   2 A$block$776        0257 GR
  2 A$block$789        025A GR  |   2 A$block$790        025C GR
  2 A$block$798        025D GR  |   2 A$block$799        0260 GR
  2 A$block$805        0262 GR  |   2 A$block$806        0265 GR
  2 A$block$807        0266 GR  |   2 A$block$808        0269 GR
  2 A$block$809        026B GR  |   2 A$block$815        026D GR
  2 A$block$816        0270 GR  |   2 A$block$822        0273 GR
  2 A$block$823        0276 GR  |   2 A$block$829        0279 GR
  2 A$block$835        027C GR  |   2 A$block$836        027F GR
  2 A$block$84         0033 GR  |   2 A$block$842        0282 GR
  2 A$block$844        0285 GR  |   2 A$block$85         0036 GR
  2 A$block$852        0286 GR  |   2 A$block$853        0289 GR
  2 A$block$859        028C GR  |   2 A$block$865        028F GR
  2 A$block$871        0292 GR  |   2 A$block$877        0295 GR
  2 A$block$878        0298 GR  |   2 A$block$886        0299 GR
  2 A$block$887        029C GR  |   2 A$block$893        029F GR
  2 A$block$899        02A2 GR  |   2 A$block$900        02A4 GR
  2 A$block$901        02A7 GR  |   2 A$block$904        02A8 GR
  2 A$block$91         0039 GR  |   2 A$block$910        02AA GR
  2 A$block$911        02AD GR  |   2 A$block$912        02AF GR
  2 A$block$913        02B2 GR  |   2 A$block$914        02B4 GR
  2 A$block$915        02B6 GR  |   2 A$block$916        02B8 GR
  2 A$block$922        02BC GR  |   2 A$block$923        02BF GR
  2 A$block$924        02C1 GR  |   2 A$block$925        02C4 GR
  2 A$block$926        02C6 GR  |   2 A$block$927        02C8 GR
  2 A$block$928        02C9 GR  |   2 A$block$929        02CB GR
  2 A$block$935        02CD GR  |   2 A$block$936        02D0 GR
  2 A$block$942        02D3 GR  |   2 A$block$943        02D5 GR
  2 A$block$949        02D8 GR  |   2 A$block$955        02DB GR
  2 A$block$956        02DE GR  |   2 A$block$958        02E1 GR
  2 A$block$959        02E3 GR  |   2 A$block$960        02E4 GR
  2 A$block$961        02E6 GR  |   2 A$block$967        02EA GR
  2 A$block$968        02ED GR  |   2 A$block$97         003C GR
  2 A$block$974        02F0 GR  |   2 A$block$975        02F2 GR
  2 A$block$98         003F GR  |   2 A$block$981        02F5 GR
  2 A$block$982        02F8 GR  |   2 A$block$984        02FB GR
  2 A$block$985        02FE GR  |   2 A$block$986        0301 GR
  2 A$block$99         0040 GR  |   2 A$block$992        0305 GR
  2 A$block$993        0307 GR  |   2 A$block$994        0308 GR
  2 A$block$995        030A GR  |   2 L11                00AD R
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

