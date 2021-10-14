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
                             38 	; #ENR#[28]    blockAnimating = 1;
                             39 ;  0 "" 2
                             40 ;--- end asm ---
   0159 C6 01         [ 2]   41 	ldb	#1	; ,
   015B F7 C8 90      [ 5]   42 	stb	_blockAnimating	; , blockAnimating
                             43 ;----- asm -----
                             44 ;  31 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             45 	; #ENR#[29]    lastBlockDirection = move;
                             46 ;  0 "" 2
                             47 ;--- end asm ---
   015E E6 E4         [ 4]   48 	ldb	,s	; , move
   0160 F7 C8 8F      [ 5]   49 	stb	_lastBlockDirection	; , lastBlockDirection
                             50 ;----- asm -----
                             51 ;  33 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             52 	; #ENR#[30]    if (splitMode) {
                             53 ;  0 "" 2
                             54 ;--- end asm ---
   0163 7D C8 91      [ 7]   55 	tst	_splitMode	;  splitMode
   0166 10 27 00 84   [ 6]   56 	lbeq	L2	; 
                             57 ;----- asm -----
                             58 ;  35 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             59 	; #ENR#[31]        switch (blockOrientation) {
                             60 ;  0 "" 2
                             61 ;--- end asm ---
   016A 7D C8 8D      [ 7]   62 	tst	_blockOrientation	;  blockOrientation
   016D 10 26 00 7A   [ 6]   63 	lbne	L30	; 
                             64 ;----- asm -----
                             65 ;  39 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             66 	; #ENR#[33]            switch (move) {
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
                             81 	; #ENR#[35]                blockAnimation = height1FallingLeft;
                             82 ;  0 "" 2
                             83 ;--- end asm ---
   0188 8E 30 78      [ 3]   84 	ldx	#_height1FallingLeft	;  tmp29,
   018B BF C8 96      [ 6]   85 	stx	_blockAnimation	;  tmp29, blockAnimation
                             86 ;----- asm -----
                             87 ;  45 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             88 	; #ENR#[36]                nextBlockAnimation = height1FallingLeft;
                             89 ;  0 "" 2
                             90 ;--- end asm ---
   018E BF C8 98      [ 6]   91 	stx	_nextBlockAnimation	;  tmp29, nextBlockAnimation
                             92 ;----- asm -----
                             93 ;  47 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                             94 	; #ENR#[37]                nextBlockX = blockX - 1;
                             95 ;  0 "" 2
                             96 ;--- end asm ---
   0191 F6 C8 92      [ 5]   97 	ldb	_blockX	; , blockX
   0194 5A            [ 2]   98 	decb	; 
   0195 F7 C8 9B      [ 5]   99 	stb	_nextBlockX	; , nextBlockX
                            100 ;----- asm -----
                            101 ;  49 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            102 	; #ENR#[38]                nextBlockY = blockY;
                            103 ;  0 "" 2
                            104 ;--- end asm ---
   0198 F6 C8 93      [ 5]  105 	ldb	_blockY	; , blockY
   019B F7 C8 9C      [ 5]  106 	stb	_nextBlockY	; , nextBlockY
                            107 ;----- asm -----
                            108 ;  51 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            109 	; #ENR#[39]                break;
                            110 ;  0 "" 2
                            111 ;--- end asm ---
   019E 7E 01 E8      [ 4]  112 	jmp	L5	; 
   01A1                     113 L8:
                            114 ;----- asm -----
                            115 ;  55 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            116 	; #ENR#[41]                blockAnimation = height1FallingRight;
                            117 ;  0 "" 2
                            118 ;--- end asm ---
   01A1 8E 30 90      [ 3]  119 	ldx	#_height1FallingRight	;  tmp31,
   01A4 BF C8 96      [ 6]  120 	stx	_blockAnimation	;  tmp31, blockAnimation
                            121 ;----- asm -----
                            122 ;  57 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            123 	; #ENR#[42]                nextBlockAnimation = height1FallingRight;
                            124 ;  0 "" 2
                            125 ;--- end asm ---
   01A7 BF C8 98      [ 6]  126 	stx	_nextBlockAnimation	;  tmp31, nextBlockAnimation
                            127 ;----- asm -----
                            128 ;  59 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            129 	; #ENR#[43]                nextBlockX = blockX + 1;
                            130 ;  0 "" 2
                            131 ;--- end asm ---
   01AA F6 C8 92      [ 5]  132 	ldb	_blockX	; , blockX
   01AD 5C            [ 2]  133 	incb	; 
   01AE F7 C8 9B      [ 5]  134 	stb	_nextBlockX	; , nextBlockX
                            135 ;----- asm -----
                            136 ;  61 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            137 	; #ENR#[44]                nextBlockY = blockY;
                            138 ;  0 "" 2
                            139 ;--- end asm ---
   01B1 F6 C8 93      [ 5]  140 	ldb	_blockY	; , blockY
   01B4 F7 C8 9C      [ 5]  141 	stb	_nextBlockY	; , nextBlockY
                            142 ;----- asm -----
                            143 ;  63 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            144 	; #ENR#[45]                break;
                            145 ;  0 "" 2
                            146 ;--- end asm ---
   01B7 7E 01 E8      [ 4]  147 	jmp	L5	; 
   01BA                     148 L7:
                            149 ;----- asm -----
                            150 ;  67 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            151 	; #ENR#[47]                blockAnimation = height1FallingBack;
                            152 ;  0 "" 2
                            153 ;--- end asm ---
   01BA 8E 30 A8      [ 3]  154 	ldx	#_height1FallingBack	;  tmp33,
   01BD BF C8 96      [ 6]  155 	stx	_blockAnimation	;  tmp33, blockAnimation
                            156 ;----- asm -----
                            157 ;  69 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            158 	; #ENR#[48]                nextBlockAnimation = height1FallingBack;
                            159 ;  0 "" 2
                            160 ;--- end asm ---
   01C0 BF C8 98      [ 6]  161 	stx	_nextBlockAnimation	;  tmp33, nextBlockAnimation
                            162 ;----- asm -----
                            163 ;  71 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            164 	; #ENR#[49]                nextBlockX = blockX;
                            165 ;  0 "" 2
                            166 ;--- end asm ---
   01C3 F6 C8 92      [ 5]  167 	ldb	_blockX	; , blockX
   01C6 F7 C8 9B      [ 5]  168 	stb	_nextBlockX	; , nextBlockX
                            169 ;----- asm -----
                            170 ;  73 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            171 	; #ENR#[50]                nextBlockY = blockY + 1;
                            172 ;  0 "" 2
                            173 ;--- end asm ---
   01C9 F6 C8 93      [ 5]  174 	ldb	_blockY	; , blockY
   01CC 5C            [ 2]  175 	incb	; 
   01CD F7 C8 9C      [ 5]  176 	stb	_nextBlockY	; , nextBlockY
                            177 ;----- asm -----
                            178 ;  75 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            179 	; #ENR#[51]                break;
                            180 ;  0 "" 2
                            181 ;--- end asm ---
   01D0 20 16         [ 3]  182 	bra	L5	; 
   01D2                     183 L31:
                            184 ;----- asm -----
                            185 ;  79 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            186 	; #ENR#[53]                blockAnimation = height1FallingFront;
                            187 ;  0 "" 2
                            188 ;--- end asm ---
   01D2 8E 30 C0      [ 3]  189 	ldx	#_height1FallingFront	;  tmp35,
   01D5 BF C8 96      [ 6]  190 	stx	_blockAnimation	;  tmp35, blockAnimation
                            191 ;----- asm -----
                            192 ;  81 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            193 	; #ENR#[54]                nextBlockAnimation = height1FallingFront;
                            194 ;  0 "" 2
                            195 ;--- end asm ---
   01D8 BF C8 98      [ 6]  196 	stx	_nextBlockAnimation	;  tmp35, nextBlockAnimation
                            197 ;----- asm -----
                            198 ;  83 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            199 	; #ENR#[55]                nextBlockX = blockX;
                            200 ;  0 "" 2
                            201 ;--- end asm ---
   01DB F6 C8 92      [ 5]  202 	ldb	_blockX	; , blockX
   01DE F7 C8 9B      [ 5]  203 	stb	_nextBlockX	; , nextBlockX
                            204 ;----- asm -----
                            205 ;  85 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            206 	; #ENR#[56]                nextBlockY = blockY - 1;
                            207 ;  0 "" 2
                            208 ;--- end asm ---
   01E1 F6 C8 93      [ 5]  209 	ldb	_blockY	; , blockY
   01E4 5A            [ 2]  210 	decb	; 
   01E5 F7 C8 9C      [ 5]  211 	stb	_nextBlockY	; , nextBlockY
                            212 ;----- asm -----
                            213 ;  87 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            214 	; #ENR#[57]                break;
                            215 ;  0 "" 2
                            216 ;--- end asm ---
   01E8                     217 L5:
                            218 ;----- asm -----
                            219 ;  90 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            220 	; #ENR#[59]            break;
                            221 ;  0 "" 2
                            222 ;--- end asm ---
   01E8 7E 03 AF      [ 4]  223 	jmp	L29	; 
   01EB                     224 L30:
                            225 ;----- asm -----
                            226 ;  94 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            227 	; #ENR#[61]            break;
                            228 ;  0 "" 2
                            229 ;--- end asm ---
   01EB 7E 03 AF      [ 4]  230 	jmp	L29	; 
   01EE                     231 L2:
                            232 ;----- asm -----
                            233 ;  98 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            234 	; #ENR#[64]        switch (blockOrientation) {
                            235 ;  0 "" 2
                            236 ;--- end asm ---
   01EE F6 C8 8D      [ 5]  237 	ldb	_blockOrientation	;  blockOrientation, blockOrientation
   01F1 C1 01         [ 2]  238 	cmpb	#1	;cmpqi:	;  blockOrientation,
   01F3 10 27 00 A7   [ 6]  239 	lbeq	L12	; 
   01F7 25 09         [ 3]  240 	blo	L11	; 
   01F9 C1 02         [ 2]  241 	cmpb	#2	;cmpqi:	;  blockOrientation,
   01FB 10 26 01 B0   [ 6]  242 	lbne	L29	; 
   01FF 7E 03 28      [ 4]  243 	jmp	L32	; 
   0202                     244 L11:
                            245 ;----- asm -----
                            246 ;  102 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            247 	; #ENR#[66]            switch (move) {
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
                            262 	; #ENR#[68]                blockAnimation = height2FallingLeft;
                            263 ;  0 "" 2
                            264 ;--- end asm ---
   0219 8E 2F 58      [ 3]  265 	ldx	#_height2FallingLeft	; ,
   021C BF C8 96      [ 6]  266 	stx	_blockAnimation	; , blockAnimation
                            267 ;----- asm -----
                            268 ;  108 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            269 	; #ENR#[69]                nextBlockAnimation = width2RollingFront;
                            270 ;  0 "" 2
                            271 ;--- end asm ---
   021F 8E 30 48      [ 3]  272 	ldx	#_width2RollingFront	; ,
   0222 BF C8 98      [ 6]  273 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            274 ;----- asm -----
                            275 ;  110 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            276 	; #ENR#[70]                nextBlockX = blockX - 2;
                            277 ;  0 "" 2
                            278 ;--- end asm ---
   0225 F6 C8 92      [ 5]  279 	ldb	_blockX	; , blockX
   0228 CB FE         [ 2]  280 	addb	#-2	; ,
   022A F7 C8 9B      [ 5]  281 	stb	_nextBlockX	; , nextBlockX
                            282 ;----- asm -----
                            283 ;  112 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            284 	; #ENR#[71]                nextBlockY = blockY;
                            285 ;  0 "" 2
                            286 ;--- end asm ---
   022D F6 C8 93      [ 5]  287 	ldb	_blockY	; , blockY
   0230 F7 C8 9C      [ 5]  288 	stb	_nextBlockY	; , nextBlockY
                            289 ;----- asm -----
                            290 ;  114 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            291 	; #ENR#[72]                blockOrientation = Horizontal;
                            292 ;  0 "" 2
                            293 ;--- end asm ---
   0233 C6 02         [ 2]  294 	ldb	#2	; ,
   0235 F7 C8 8D      [ 5]  295 	stb	_blockOrientation	; , blockOrientation
                            296 ;----- asm -----
                            297 ;  116 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            298 	; #ENR#[73]                break;
                            299 ;  0 "" 2
                            300 ;--- end asm ---
   0238 7E 02 9B      [ 4]  301 	jmp	L14	; 
   023B                     302 L17:
                            303 ;----- asm -----
                            304 ;  120 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            305 	; #ENR#[75]                blockAnimation = height2FallingRight;
                            306 ;  0 "" 2
                            307 ;--- end asm ---
   023B 8E 2F 88      [ 3]  308 	ldx	#_height2FallingRight	; ,
   023E BF C8 96      [ 6]  309 	stx	_blockAnimation	; , blockAnimation
                            310 ;----- asm -----
                            311 ;  122 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            312 	; #ENR#[76]                nextBlockAnimation = width2RollingFront;
                            313 ;  0 "" 2
                            314 ;--- end asm ---
   0241 8E 30 48      [ 3]  315 	ldx	#_width2RollingFront	; ,
   0244 BF C8 98      [ 6]  316 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            317 ;----- asm -----
                            318 ;  124 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            319 	; #ENR#[77]                nextBlockX = blockX + 1;
                            320 ;  0 "" 2
                            321 ;--- end asm ---
   0247 F6 C8 92      [ 5]  322 	ldb	_blockX	; , blockX
   024A 5C            [ 2]  323 	incb	; 
   024B F7 C8 9B      [ 5]  324 	stb	_nextBlockX	; , nextBlockX
                            325 ;----- asm -----
                            326 ;  126 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            327 	; #ENR#[78]                nextBlockY = blockY;
                            328 ;  0 "" 2
                            329 ;--- end asm ---
   024E F6 C8 93      [ 5]  330 	ldb	_blockY	; , blockY
   0251 F7 C8 9C      [ 5]  331 	stb	_nextBlockY	; , nextBlockY
                            332 ;----- asm -----
                            333 ;  128 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            334 	; #ENR#[79]                blockOrientation = Horizontal;
                            335 ;  0 "" 2
                            336 ;--- end asm ---
   0254 C6 02         [ 2]  337 	ldb	#2	; ,
   0256 F7 C8 8D      [ 5]  338 	stb	_blockOrientation	; , blockOrientation
                            339 ;----- asm -----
                            340 ;  130 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            341 	; #ENR#[80]                break;
                            342 ;  0 "" 2
                            343 ;--- end asm ---
   0259 7E 02 9B      [ 4]  344 	jmp	L14	; 
   025C                     345 L16:
                            346 ;----- asm -----
                            347 ;  134 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            348 	; #ENR#[82]                blockAnimation = height2FallingBack;
                            349 ;  0 "" 2
                            350 ;--- end asm ---
   025C 8E 2F B8      [ 3]  351 	ldx	#_height2FallingBack	; ,
   025F BF C8 96      [ 6]  352 	stx	_blockAnimation	; , blockAnimation
                            353 ;----- asm -----
                            354 ;  136 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            355 	; #ENR#[83]                nextBlockAnimation = depth2RollingLeft;
                            356 ;  0 "" 2
                            357 ;--- end asm ---
   0262 8E 30 18      [ 3]  358 	ldx	#_depth2RollingLeft	; ,
   0265 BF C8 98      [ 6]  359 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            360 ;----- asm -----
                            361 ;  138 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            362 	; #ENR#[84]                nextBlockX = blockX;
                            363 ;  0 "" 2
                            364 ;--- end asm ---
   0268 F6 C8 92      [ 5]  365 	ldb	_blockX	; , blockX
   026B F7 C8 9B      [ 5]  366 	stb	_nextBlockX	; , nextBlockX
                            367 ;----- asm -----
                            368 ;  140 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            369 	; #ENR#[85]                nextBlockY = blockY + 1;
                            370 ;  0 "" 2
                            371 ;--- end asm ---
   026E F6 C8 93      [ 5]  372 	ldb	_blockY	; , blockY
   0271 5C            [ 2]  373 	incb	; 
   0272 F7 C8 9C      [ 5]  374 	stb	_nextBlockY	; , nextBlockY
                            375 ;----- asm -----
                            376 ;  142 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            377 	; #ENR#[86]                blockOrientation = Vertical;
                            378 ;  0 "" 2
                            379 ;--- end asm ---
   0275 C6 01         [ 2]  380 	ldb	#1	; ,
   0277 F7 C8 8D      [ 5]  381 	stb	_blockOrientation	; , blockOrientation
                            382 ;----- asm -----
                            383 ;  144 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            384 	; #ENR#[87]                break;
                            385 ;  0 "" 2
                            386 ;--- end asm ---
   027A 20 1F         [ 3]  387 	bra	L14	; 
   027C                     388 L33:
                            389 ;----- asm -----
                            390 ;  148 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            391 	; #ENR#[89]                blockAnimation = height2FallingFront;
                            392 ;  0 "" 2
                            393 ;--- end asm ---
   027C 8E 2F E8      [ 3]  394 	ldx	#_height2FallingFront	; ,
   027F BF C8 96      [ 6]  395 	stx	_blockAnimation	; , blockAnimation
                            396 ;----- asm -----
                            397 ;  150 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            398 	; #ENR#[90]                nextBlockAnimation = depth2RollingLeft;
                            399 ;  0 "" 2
                            400 ;--- end asm ---
   0282 8E 30 18      [ 3]  401 	ldx	#_depth2RollingLeft	; ,
   0285 BF C8 98      [ 6]  402 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            403 ;----- asm -----
                            404 ;  152 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            405 	; #ENR#[91]                nextBlockX = blockX;
                            406 ;  0 "" 2
                            407 ;--- end asm ---
   0288 F6 C8 92      [ 5]  408 	ldb	_blockX	; , blockX
   028B F7 C8 9B      [ 5]  409 	stb	_nextBlockX	; , nextBlockX
                            410 ;----- asm -----
                            411 ;  154 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            412 	; #ENR#[92]                nextBlockY = blockY - 2;
                            413 ;  0 "" 2
                            414 ;--- end asm ---
   028E F6 C8 93      [ 5]  415 	ldb	_blockY	; , blockY
   0291 CB FE         [ 2]  416 	addb	#-2	; ,
   0293 F7 C8 9C      [ 5]  417 	stb	_nextBlockY	; , nextBlockY
                            418 ;----- asm -----
                            419 ;  156 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            420 	; #ENR#[93]                blockOrientation = Vertical;
                            421 ;  0 "" 2
                            422 ;--- end asm ---
   0296 C6 01         [ 2]  423 	ldb	#1	; ,
   0298 F7 C8 8D      [ 5]  424 	stb	_blockOrientation	; , blockOrientation
                            425 ;----- asm -----
                            426 ;  158 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            427 	; #ENR#[94]                break;
                            428 ;  0 "" 2
                            429 ;--- end asm ---
   029B                     430 L14:
                            431 ;----- asm -----
                            432 ;  161 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            433 	; #ENR#[96]            break;
                            434 ;  0 "" 2
                            435 ;--- end asm ---
   029B 7E 03 AF      [ 4]  436 	jmp	L29	; 
   029E                     437 L12:
                            438 ;----- asm -----
                            439 ;  165 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            440 	; #ENR#[98]            switch (move) {
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
                            455 	; #ENR#[100]                blockAnimation = depth2RollingLeft;
                            456 ;  0 "" 2
                            457 ;--- end asm ---
   02B5 8E 30 18      [ 3]  458 	ldx	#_depth2RollingLeft	;  tmp46,
   02B8 BF C8 96      [ 6]  459 	stx	_blockAnimation	;  tmp46, blockAnimation
                            460 ;----- asm -----
                            461 ;  171 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            462 	; #ENR#[101]                nextBlockAnimation = depth2RollingLeft;
                            463 ;  0 "" 2
                            464 ;--- end asm ---
   02BB BF C8 98      [ 6]  465 	stx	_nextBlockAnimation	;  tmp46, nextBlockAnimation
                            466 ;----- asm -----
                            467 ;  173 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            468 	; #ENR#[102]                nextBlockX = blockX - 1;
                            469 ;  0 "" 2
                            470 ;--- end asm ---
   02BE F6 C8 92      [ 5]  471 	ldb	_blockX	; , blockX
   02C1 5A            [ 2]  472 	decb	; 
   02C2 F7 C8 9B      [ 5]  473 	stb	_nextBlockX	; , nextBlockX
                            474 ;----- asm -----
                            475 ;  175 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            476 	; #ENR#[103]                nextBlockY = blockY;
                            477 ;  0 "" 2
                            478 ;--- end asm ---
   02C5 F6 C8 93      [ 5]  479 	ldb	_blockY	; , blockY
   02C8 F7 C8 9C      [ 5]  480 	stb	_nextBlockY	; , nextBlockY
                            481 ;----- asm -----
                            482 ;  177 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            483 	; #ENR#[104]                break;
                            484 ;  0 "" 2
                            485 ;--- end asm ---
   02CB 7E 03 25      [ 4]  486 	jmp	L19	; 
   02CE                     487 L22:
                            488 ;----- asm -----
                            489 ;  181 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            490 	; #ENR#[106]                blockAnimation = depth2RollingRight;
                            491 ;  0 "" 2
                            492 ;--- end asm ---
   02CE 8E 30 30      [ 3]  493 	ldx	#_depth2RollingRight	; ,
   02D1 BF C8 96      [ 6]  494 	stx	_blockAnimation	; , blockAnimation
                            495 ;----- asm -----
                            496 ;  183 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            497 	; #ENR#[107]                nextBlockAnimation = depth2RollingLeft;
                            498 ;  0 "" 2
                            499 ;--- end asm ---
   02D4 8E 30 18      [ 3]  500 	ldx	#_depth2RollingLeft	; ,
   02D7 BF C8 98      [ 6]  501 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            502 ;----- asm -----
                            503 ;  185 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            504 	; #ENR#[108]                nextBlockX = blockX + 1;
                            505 ;  0 "" 2
                            506 ;--- end asm ---
   02DA F6 C8 92      [ 5]  507 	ldb	_blockX	; , blockX
   02DD 5C            [ 2]  508 	incb	; 
   02DE F7 C8 9B      [ 5]  509 	stb	_nextBlockX	; , nextBlockX
                            510 ;----- asm -----
                            511 ;  187 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            512 	; #ENR#[109]                nextBlockY = blockY;
                            513 ;  0 "" 2
                            514 ;--- end asm ---
   02E1 F6 C8 93      [ 5]  515 	ldb	_blockY	; , blockY
   02E4 F7 C8 9C      [ 5]  516 	stb	_nextBlockY	; , nextBlockY
                            517 ;----- asm -----
                            518 ;  189 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            519 	; #ENR#[110]                break;
                            520 ;  0 "" 2
                            521 ;--- end asm ---
   02E7 7E 03 25      [ 4]  522 	jmp	L19	; 
   02EA                     523 L21:
                            524 ;----- asm -----
                            525 ;  193 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            526 	; #ENR#[112]                blockAnimation = height2RisingBack;
                            527 ;  0 "" 2
                            528 ;--- end asm ---
   02EA 8E 30 00      [ 3]  529 	ldx	#_height2RisingBack	; ,
   02ED BF C8 96      [ 6]  530 	stx	_blockAnimation	; , blockAnimation
                            531 ;----- asm -----
                            532 ;  195 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            533 	; #ENR#[113]                nextBlockAnimation = height2FallingFront;
                            534 ;  0 "" 2
                            535 ;--- end asm ---
   02F0 8E 2F E8      [ 3]  536 	ldx	#_height2FallingFront	; ,
   02F3 BF C8 98      [ 6]  537 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            538 ;----- asm -----
                            539 ;  197 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            540 	; #ENR#[114]                nextBlockX = blockX;
                            541 ;  0 "" 2
                            542 ;--- end asm ---
   02F6 F6 C8 92      [ 5]  543 	ldb	_blockX	; , blockX
   02F9 F7 C8 9B      [ 5]  544 	stb	_nextBlockX	; , nextBlockX
                            545 ;----- asm -----
                            546 ;  199 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            547 	; #ENR#[115]                nextBlockY = blockY + 2;
                            548 ;  0 "" 2
                            549 ;--- end asm ---
   02FC F6 C8 93      [ 5]  550 	ldb	_blockY	; , blockY
   02FF CB 02         [ 2]  551 	addb	#2	; ,
   0301 F7 C8 9C      [ 5]  552 	stb	_nextBlockY	; , nextBlockY
                            553 ;----- asm -----
                            554 ;  201 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            555 	; #ENR#[116]                blockOrientation = Standing;
                            556 ;  0 "" 2
                            557 ;--- end asm ---
   0304 7F C8 8D      [ 7]  558 	clr	_blockOrientation	;  blockOrientation
                            559 ;----- asm -----
                            560 ;  203 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            561 	; #ENR#[117]                break;
                            562 ;  0 "" 2
                            563 ;--- end asm ---
   0307 20 1C         [ 3]  564 	bra	L19	; 
   0309                     565 L34:
                            566 ;----- asm -----
                            567 ;  207 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            568 	; #ENR#[119]                blockAnimation = height2RisingFront;
                            569 ;  0 "" 2
                            570 ;--- end asm ---
   0309 8E 2F D0      [ 3]  571 	ldx	#_height2RisingFront	; ,
   030C BF C8 96      [ 6]  572 	stx	_blockAnimation	; , blockAnimation
                            573 ;----- asm -----
                            574 ;  209 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            575 	; #ENR#[120]                nextBlockAnimation = height2FallingFront;
                            576 ;  0 "" 2
                            577 ;--- end asm ---
   030F 8E 2F E8      [ 3]  578 	ldx	#_height2FallingFront	; ,
   0312 BF C8 98      [ 6]  579 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            580 ;----- asm -----
                            581 ;  211 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            582 	; #ENR#[121]                nextBlockX = blockX;
                            583 ;  0 "" 2
                            584 ;--- end asm ---
   0315 F6 C8 92      [ 5]  585 	ldb	_blockX	; , blockX
   0318 F7 C8 9B      [ 5]  586 	stb	_nextBlockX	; , nextBlockX
                            587 ;----- asm -----
                            588 ;  213 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            589 	; #ENR#[122]                nextBlockY = blockY - 1;
                            590 ;  0 "" 2
                            591 ;--- end asm ---
   031B F6 C8 93      [ 5]  592 	ldb	_blockY	; , blockY
   031E 5A            [ 2]  593 	decb	; 
   031F F7 C8 9C      [ 5]  594 	stb	_nextBlockY	; , nextBlockY
                            595 ;----- asm -----
                            596 ;  215 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            597 	; #ENR#[123]                blockOrientation = Standing;
                            598 ;  0 "" 2
                            599 ;--- end asm ---
   0322 7F C8 8D      [ 7]  600 	clr	_blockOrientation	;  blockOrientation
                            601 ;----- asm -----
                            602 ;  217 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            603 	; #ENR#[124]                break;
                            604 ;  0 "" 2
                            605 ;--- end asm ---
   0325                     606 L19:
                            607 ;----- asm -----
                            608 ;  220 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            609 	; #ENR#[126]            break;
                            610 ;  0 "" 2
                            611 ;--- end asm ---
   0325 7E 03 AF      [ 4]  612 	jmp	L29	; 
   0328                     613 L32:
                            614 ;----- asm -----
                            615 ;  224 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            616 	; #ENR#[128]            switch (move) {
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
                            631 	; #ENR#[130]                blockAnimation = height2RisingLeft;
                            632 ;  0 "" 2
                            633 ;--- end asm ---
   033F 8E 2F A0      [ 3]  634 	ldx	#_height2RisingLeft	; ,
   0342 BF C8 96      [ 6]  635 	stx	_blockAnimation	; , blockAnimation
                            636 ;----- asm -----
                            637 ;  230 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            638 	; #ENR#[131]                nextBlockAnimation = height2FallingRight;
                            639 ;  0 "" 2
                            640 ;--- end asm ---
   0345 8E 2F 88      [ 3]  641 	ldx	#_height2FallingRight	; ,
   0348 BF C8 98      [ 6]  642 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            643 ;----- asm -----
                            644 ;  232 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            645 	; #ENR#[132]                nextBlockX = blockX - 1;
                            646 ;  0 "" 2
                            647 ;--- end asm ---
   034B F6 C8 92      [ 5]  648 	ldb	_blockX	; , blockX
   034E 5A            [ 2]  649 	decb	; 
   034F F7 C8 9B      [ 5]  650 	stb	_nextBlockX	; , nextBlockX
                            651 ;----- asm -----
                            652 ;  234 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            653 	; #ENR#[133]                nextBlockY = blockY;
                            654 ;  0 "" 2
                            655 ;--- end asm ---
   0352 F6 C8 93      [ 5]  656 	ldb	_blockY	; , blockY
   0355 F7 C8 9C      [ 5]  657 	stb	_nextBlockY	; , nextBlockY
                            658 ;----- asm -----
                            659 ;  236 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            660 	; #ENR#[134]                blockOrientation = Standing;
                            661 ;  0 "" 2
                            662 ;--- end asm ---
   0358 7F C8 8D      [ 7]  663 	clr	_blockOrientation	;  blockOrientation
                            664 ;----- asm -----
                            665 ;  238 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            666 	; #ENR#[135]                break;
                            667 ;  0 "" 2
                            668 ;--- end asm ---
   035B 7E 03 AF      [ 4]  669 	jmp	L24	; 
   035E                     670 L27:
                            671 ;----- asm -----
                            672 ;  242 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            673 	; #ENR#[137]                blockAnimation = height2RisingRight;
                            674 ;  0 "" 2
                            675 ;--- end asm ---
   035E 8E 2F 70      [ 3]  676 	ldx	#_height2RisingRight	; ,
   0361 BF C8 96      [ 6]  677 	stx	_blockAnimation	; , blockAnimation
                            678 ;----- asm -----
                            679 ;  244 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            680 	; #ENR#[138]                nextBlockAnimation = height2FallingLeft;
                            681 ;  0 "" 2
                            682 ;--- end asm ---
   0364 8E 2F 58      [ 3]  683 	ldx	#_height2FallingLeft	; ,
   0367 BF C8 98      [ 6]  684 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            685 ;----- asm -----
                            686 ;  246 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            687 	; #ENR#[139]                nextBlockX = blockX + 2;
                            688 ;  0 "" 2
                            689 ;--- end asm ---
   036A F6 C8 92      [ 5]  690 	ldb	_blockX	; , blockX
   036D CB 02         [ 2]  691 	addb	#2	; ,
   036F F7 C8 9B      [ 5]  692 	stb	_nextBlockX	; , nextBlockX
                            693 ;----- asm -----
                            694 ;  248 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            695 	; #ENR#[140]                nextBlockY = blockY;
                            696 ;  0 "" 2
                            697 ;--- end asm ---
   0372 F6 C8 93      [ 5]  698 	ldb	_blockY	; , blockY
   0375 F7 C8 9C      [ 5]  699 	stb	_nextBlockY	; , nextBlockY
                            700 ;----- asm -----
                            701 ;  250 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            702 	; #ENR#[141]                blockOrientation = Standing;
                            703 ;  0 "" 2
                            704 ;--- end asm ---
   0378 7F C8 8D      [ 7]  705 	clr	_blockOrientation	;  blockOrientation
                            706 ;----- asm -----
                            707 ;  252 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            708 	; #ENR#[142]                break;
                            709 ;  0 "" 2
                            710 ;--- end asm ---
   037B 7E 03 AF      [ 4]  711 	jmp	L24	; 
   037E                     712 L26:
                            713 ;----- asm -----
                            714 ;  256 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            715 	; #ENR#[144]                blockAnimation = width2RollingBack;
                            716 ;  0 "" 2
                            717 ;--- end asm ---
   037E 8E 30 60      [ 3]  718 	ldx	#_width2RollingBack	;  tmp58,
   0381 BF C8 96      [ 6]  719 	stx	_blockAnimation	;  tmp58, blockAnimation
                            720 ;----- asm -----
                            721 ;  258 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            722 	; #ENR#[145]                nextBlockAnimation = width2RollingBack;
                            723 ;  0 "" 2
                            724 ;--- end asm ---
   0384 BF C8 98      [ 6]  725 	stx	_nextBlockAnimation	;  tmp58, nextBlockAnimation
                            726 ;----- asm -----
                            727 ;  260 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            728 	; #ENR#[146]                nextBlockX = blockX;
                            729 ;  0 "" 2
                            730 ;--- end asm ---
   0387 F6 C8 92      [ 5]  731 	ldb	_blockX	; , blockX
   038A F7 C8 9B      [ 5]  732 	stb	_nextBlockX	; , nextBlockX
                            733 ;----- asm -----
                            734 ;  262 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            735 	; #ENR#[147]                nextBlockY = blockY + 1;
                            736 ;  0 "" 2
                            737 ;--- end asm ---
   038D F6 C8 93      [ 5]  738 	ldb	_blockY	; , blockY
   0390 5C            [ 2]  739 	incb	; 
   0391 F7 C8 9C      [ 5]  740 	stb	_nextBlockY	; , nextBlockY
                            741 ;----- asm -----
                            742 ;  264 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            743 	; #ENR#[148]                break;
                            744 ;  0 "" 2
                            745 ;--- end asm ---
   0394 20 19         [ 3]  746 	bra	L24	; 
   0396                     747 L35:
                            748 ;----- asm -----
                            749 ;  268 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            750 	; #ENR#[150]                blockAnimation = width2RollingFront;
                            751 ;  0 "" 2
                            752 ;--- end asm ---
   0396 8E 30 48      [ 3]  753 	ldx	#_width2RollingFront	; ,
   0399 BF C8 96      [ 6]  754 	stx	_blockAnimation	; , blockAnimation
                            755 ;----- asm -----
                            756 ;  270 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            757 	; #ENR#[151]                nextBlockAnimation = width2RollingBack;
                            758 ;  0 "" 2
                            759 ;--- end asm ---
   039C 8E 30 60      [ 3]  760 	ldx	#_width2RollingBack	; ,
   039F BF C8 98      [ 6]  761 	stx	_nextBlockAnimation	; , nextBlockAnimation
                            762 ;----- asm -----
                            763 ;  272 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            764 	; #ENR#[152]                nextBlockX = blockX;
                            765 ;  0 "" 2
                            766 ;--- end asm ---
   03A2 F6 C8 92      [ 5]  767 	ldb	_blockX	; , blockX
   03A5 F7 C8 9B      [ 5]  768 	stb	_nextBlockX	; , nextBlockX
                            769 ;----- asm -----
                            770 ;  274 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            771 	; #ENR#[153]                nextBlockY = blockY - 1;
                            772 ;  0 "" 2
                            773 ;--- end asm ---
   03A8 F6 C8 93      [ 5]  774 	ldb	_blockY	; , blockY
   03AB 5A            [ 2]  775 	decb	; 
   03AC F7 C8 9C      [ 5]  776 	stb	_nextBlockY	; , nextBlockY
                            777 ;----- asm -----
                            778 ;  276 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            779 	; #ENR#[154]                break;
                            780 ;  0 "" 2
                            781 ;--- end asm ---
   03AF                     782 L24:
                            783 ;----- asm -----
                            784 ;  279 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            785 	; #ENR#[156]            break;
                            786 ;  0 "" 2
                            787 ;--- end asm ---
   03AF                     788 L29:
   03AF 32 61         [ 5]  789 	leas	1,s	; ,,
   03B1 39            [ 5]  790 	rts
                            791 	.globl _Draw_VLpo
   03B2                     792 _Draw_VLpo:
                            793 ;----- asm -----
                            794 ;  287 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            795 	; #ENR#[163]    (void) x;
                            796 ;  0 "" 2
                            797 ;  289 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03B2 EC 01         [ 6]  798 	                    LDD      1,X                          ;Get next coordinate pair  
                            799 ;  0 "" 2
                            800 ;  290 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03B4                     801 	shiftOff1:  
                            802 ;  0 "" 2
                            803 ;  291 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03B4 97 01         [ 4]  804 	                    STA      *0xd001                  ;Send Y to A/D  
                            805 ;  0 "" 2
                            806 ;  292 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03B6 0F 00         [ 6]  807 	                    CLR      *0xd000                  ;Enable mux  
                            808 ;  0 "" 2
                            809 ;  293 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03B8 A6 84         [ 4]  810 	                    LDA      ,X                           ;Get pattern byte  
                            811 ;  0 "" 2
                            812 ;  294 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03BA 0C 00         [ 6]  813 	                    INC      *0xd000                  ;Disable mux  
                            814 ;  0 "" 2
                            815 ;  295 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03BC D7 01         [ 4]  816 	                    STB      *0xd001                  ;Send X to A/D  
                            817 ;  0 "" 2
                            818 ;  296 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03BE C6 00         [ 2]  819 	                    ldb      #0  
                            820 ;  0 "" 2
                            821 ;  297 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03C0 97 0A         [ 4]  822 	                    STA      *0xd00a               ;Store pattern in shift register  
                            823 ;  0 "" 2
                            824 ;  298 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03C2 D7 05         [ 4]  825 	                    STB      *0xd005               ;Clear T1H  
                            826 ;  0 "" 2
                            827 ;  300 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03C4 30 03         [ 5]  828 	                    LEAX     3,X                          ;Advance to next point in list  
                            829 ;  0 "" 2
                            830 ;  302 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03C6 1F 88         [ 6]  831 		    tfr a,a    ; 6 
                            832 ;  0 "" 2
                            833 ;  303 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03C8 1F 88         [ 6]  834 		    tfr a,a    ; 6 
                            835 ;  0 "" 2
                            836 ;  304 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03CA 1F 88         [ 6]  837 		    tfr a,a    ; 6 
                            838 ;  0 "" 2
                            839 ;  305 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03CC 1F 88         [ 6]  840 		    tfr a,a    ; 6 
                            841 ;  0 "" 2
                            842 ;  307 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03CE A6 84         [ 4]  843 	                    LDA      ,X                           ;Get next pattern byte  
                            844 ;  0 "" 2
                            845 ;  309 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03D0 2E 29         [ 3]  846 	                    bgt      macroEnd2  
                            847 ;  0 "" 2
                            848 ;  311 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03D2 EC 01         [ 6]  849 	                    LDD      1,X                          ;Get next coordinate pair  
                            850 ;  0 "" 2
                            851 ;  312 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03D4                     852 	shiftOn1:  
                            853 ;  0 "" 2
                            854 ;  313 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03D4 97 01         [ 4]  855 	                    STA      *0xd001                  ;Send Y to A/D  
                            856 ;  0 "" 2
                            857 ;  314 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03D6 0F 00         [ 6]  858 	                    CLR      *0xd000                  ;Enable mux  
                            859 ;  0 "" 2
                            860 ;  315 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03D8 A6 84         [ 4]  861 	                    LDA      ,X                           ;Get pattern byte  
                            862 ;  0 "" 2
                            863 ;  316 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03DA 0C 00         [ 6]  864 	                    INC      *0xd000                  ;Disable mux  
                            865 ;  0 "" 2
                            866 ;  317 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03DC D7 01         [ 4]  867 	                    STB      *0xd001                  ;Send X to A/D  
                            868 ;  0 "" 2
                            869 ;  318 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03DE C6 00         [ 2]  870 	                    ldb      #0  
                            871 ;  0 "" 2
                            872 ;  319 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03E0 97 0A         [ 4]  873 	                    STA      *0xd00a               ;Store pattern in shift register  
                            874 ;  0 "" 2
                            875 ;  320 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03E2 D7 05         [ 4]  876 	                    STB      *0xd005               ;Clear T1H  
                            877 ;  0 "" 2
                            878 ;  321 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03E4 30 03         [ 5]  879 	                    LEAX     3,X                          ;Advance to next point in list  
                            880 ;  0 "" 2
                            881 ;  323 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03E6 EC 01         [ 6]  882 	                    LDD      1,X                          ;Get next coordinate pair  
                            883 ;  0 "" 2
                            884 ;  324 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03E8 1F 88         [ 6]  885 		    tfr a,a    ; 6 
                            886 ;  0 "" 2
                            887 ;  325 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03EA 1F 88         [ 6]  888 		    tfr a,a    ; 6 
                            889 ;  0 "" 2
                            890 ;  326 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03EC 1F 88         [ 6]  891 		    tfr a,a    ; 6 
                            892 ;  0 "" 2
                            893 ;  327 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03EE 12            [ 2]  894 		    nop    ; 6 
                            895 ;  0 "" 2
                            896 ;  329 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03EF 6D 84         [ 6]  897 	                    tst      ,X  
                            898 ;  0 "" 2
                            899 ;  330 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03F1 27 C1         [ 3]  900 	                    beq      shiftOff1  
                            901 ;  0 "" 2
                            902 ;  331 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03F3 2B DF         [ 3]  903 	                    bmi      shiftOn1  
                            904 ;  0 "" 2
                            905 ;  332 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03F5 1F 88         [ 6]  906 		    tfr a,a    ; 6 
                            907 ;  0 "" 2
                            908 ;  333 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03F7 C6 00         [ 2]  909 	                    ldb      #0  
                            910 ;  0 "" 2
                            911 ;  334 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03F9 D7 0A         [ 4]  912 	                    STB      *0xd00a               ;Clear shift register (blank output)  
                            913 ;  0 "" 2
                            914 ;  335 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
   03FB                     915 	macroEnd2:  
                            916 ;  0 "" 2
                            917 ;--- end asm ---
   03FB 39            [ 5]  918 	rts
                            919 	.globl _doBlockAnimation
   03FC                     920 _doBlockAnimation:
                            921 ;----- asm -----
                            922 ;  401 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            923 	; #ENR#[258]    if (blockAnimating) {
                            924 ;  0 "" 2
                            925 ;--- end asm ---
   03FC 7D C8 90      [ 7]  926 	tst	_blockAnimating	;  blockAnimating
   03FF 27 23         [ 3]  927 	beq	L40	; 
                            928 ;----- asm -----
                            929 ;  403 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            930 	; #ENR#[259]        if (++blockAnimationStep == BLOCK_STEPS_COUNT) {
                            931 ;  0 "" 2
                            932 ;--- end asm ---
   0401 F6 C8 9A      [ 5]  933 	ldb	_blockAnimationStep	;  blockAnimationStep.25, blockAnimationStep
   0404 5C            [ 2]  934 	incb	;  blockAnimationStep.25
   0405 F7 C8 9A      [ 5]  935 	stb	_blockAnimationStep	;  blockAnimationStep.25, blockAnimationStep
   0408 C1 0C         [ 2]  936 	cmpb	#12	;cmpqi:	;  blockAnimationStep.25,
   040A 26 18         [ 3]  937 	bne	L40	; 
                            938 ;----- asm -----
                            939 ;  405 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            940 	; #ENR#[260]            blockX = nextBlockX;
                            941 ;  0 "" 2
                            942 ;--- end asm ---
   040C F6 C8 9B      [ 5]  943 	ldb	_nextBlockX	; , nextBlockX
   040F F7 C8 92      [ 5]  944 	stb	_blockX	; , blockX
                            945 ;----- asm -----
                            946 ;  407 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            947 	; #ENR#[261]            blockY = nextBlockY;
                            948 ;  0 "" 2
                            949 ;--- end asm ---
   0412 F6 C8 9C      [ 5]  950 	ldb	_nextBlockY	; , nextBlockY
   0415 F7 C8 93      [ 5]  951 	stb	_blockY	; , blockY
                            952 ;----- asm -----
                            953 ;  409 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            954 	; #ENR#[262]            blockAnimationStep = 0;
                            955 ;  0 "" 2
                            956 ;--- end asm ---
   0418 7F C8 9A      [ 7]  957 	clr	_blockAnimationStep	;  blockAnimationStep
                            958 ;----- asm -----
                            959 ;  411 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            960 	; #ENR#[263]            blockAnimation = nextBlockAnimation;
                            961 ;  0 "" 2
                            962 ;--- end asm ---
   041B BE C8 98      [ 6]  963 	ldx	_nextBlockAnimation	; , nextBlockAnimation
   041E BF C8 96      [ 6]  964 	stx	_blockAnimation	; , blockAnimation
                            965 ;----- asm -----
                            966 ;  413 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            967 	; #ENR#[264]            blockAnimating = 0;
                            968 ;  0 "" 2
                            969 ;--- end asm ---
   0421 7F C8 90      [ 7]  970 	clr	_blockAnimating	;  blockAnimating
   0424                     971 L40:
   0424 39            [ 5]  972 	rts
                            973 	.globl _blockStartLevel
   0425                     974 _blockStartLevel:
                            975 ;----- asm -----
                            976 ;  421 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            977 	; #ENR#[271]    blockAnimation = height2FallingLeft;
                            978 ;  0 "" 2
                            979 ;--- end asm ---
   0425 8E 2F 58      [ 3]  980 	ldx	#_height2FallingLeft	; ,
   0428 BF C8 96      [ 6]  981 	stx	_blockAnimation	; , blockAnimation
                            982 ;----- asm -----
                            983 ;  423 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            984 	; #ENR#[272]    blockAnimationStep = 0;
                            985 ;  0 "" 2
                            986 ;--- end asm ---
   042B 7F C8 9A      [ 7]  987 	clr	_blockAnimationStep	;  blockAnimationStep
                            988 ;----- asm -----
                            989 ;  425 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            990 	; #ENR#[273]    blockAnimating = 0;
                            991 ;  0 "" 2
                            992 ;--- end asm ---
   042E 7F C8 90      [ 7]  993 	clr	_blockAnimating	;  blockAnimating
                            994 ;----- asm -----
                            995 ;  427 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                            996 	; #ENR#[274]    blockOrientation = Standing;
                            997 ;  0 "" 2
                            998 ;--- end asm ---
   0431 7F C8 8D      [ 7]  999 	clr	_blockOrientation	;  blockOrientation
                           1000 ;----- asm -----
                           1001 ;  429 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1002 	; #ENR#[275]    splitMode = 0;
                           1003 ;  0 "" 2
                           1004 ;--- end asm ---
   0434 7F C8 91      [ 7] 1005 	clr	_splitMode	;  splitMode
   0437 39            [ 5] 1006 	rts
                           1007 	.globl _setSplitMode
   0438                    1008 _setSplitMode:
                           1009 ;----- asm -----
                           1010 ;  435 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1011 	; #ENR#[280]    blockAnimation = height1FallingLeft;
                           1012 ;  0 "" 2
                           1013 ;--- end asm ---
   0438 8E 30 78      [ 3] 1014 	ldx	#_height1FallingLeft	; ,
   043B BF C8 96      [ 6] 1015 	stx	_blockAnimation	; , blockAnimation
                           1016 ;----- asm -----
                           1017 ;  437 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1018 	; #ENR#[281]    blockOrientation = Standing;
                           1019 ;  0 "" 2
                           1020 ;--- end asm ---
   043E 7F C8 8D      [ 7] 1021 	clr	_blockOrientation	;  blockOrientation
                           1022 ;----- asm -----
                           1023 ;  439 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1024 	; #ENR#[282]    splitMode = 1;
                           1025 ;  0 "" 2
                           1026 ;--- end asm ---
   0441 C6 01         [ 2] 1027 	ldb	#1	; ,
   0443 F7 C8 91      [ 5] 1028 	stb	_splitMode	; , splitMode
   0446 39            [ 5] 1029 	rts
                           1030 	.globl _testMerge
   0447                    1031 _testMerge:
   0447 32 7C         [ 5] 1032 	leas	-4,s	; ,,
                           1033 ;----- asm -----
                           1034 ;  445 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1035 	; #ENR#[287]    if (blockY == blockY2) {
                           1036 ;  0 "" 2
                           1037 ;--- end asm ---
   0449 F6 C8 93      [ 5] 1038 	ldb	_blockY	; , blockY
   044C E7 E4         [ 4] 1039 	stb	,s	; , blockY.29
   044E F6 C8 95      [ 5] 1040 	ldb	_blockY2	; , blockY2
   0451 E7 61         [ 5] 1041 	stb	1,s	; , blockY2.30
   0453 E6 E4         [ 4] 1042 	ldb	,s	; , blockY.29
   0455 E1 61         [ 5] 1043 	cmpb	1,s	;cmpqi:	; , blockY2.30
   0457 10 26 00 3F   [ 6] 1044 	lbne	L46	; 
                           1045 ;----- asm -----
                           1046 ;  447 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1047 	; #ENR#[288]        if (blockX == blockX2 + 1) {
                           1048 ;  0 "" 2
                           1049 ;--- end asm ---
   045B F6 C8 94      [ 5] 1050 	ldb	_blockX2	; , blockX2
   045E E7 62         [ 5] 1051 	stb	2,s	; , blockX2.31
   0460 F6 C8 92      [ 5] 1052 	ldb	_blockX	; , blockX
   0463 E7 63         [ 5] 1053 	stb	3,s	; , blockX.32
   0465 E6 62         [ 5] 1054 	ldb	2,s	;  tmp31, blockX2.31
   0467 5C            [ 2] 1055 	incb	;  tmp31
   0468 E1 63         [ 5] 1056 	cmpb	3,s	;cmpqi:	;  tmp31, blockX.32
   046A 26 14         [ 3] 1057 	bne	L47	; 
                           1058 ;----- asm -----
                           1059 ;  449 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1060 	; #ENR#[289]            blockAnimation = width2RollingFront;
                           1061 ;  0 "" 2
                           1062 ;--- end asm ---
   046C 8E 30 48      [ 3] 1063 	ldx	#_width2RollingFront	; ,
   046F BF C8 96      [ 6] 1064 	stx	_blockAnimation	; , blockAnimation
                           1065 ;----- asm -----
                           1066 ;  451 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1067 	; #ENR#[290]            blockOrientation = Horizontal;
                           1068 ;  0 "" 2
                           1069 ;--- end asm ---
   0472 C6 02         [ 2] 1070 	ldb	#2	; ,
   0474 F7 C8 8D      [ 5] 1071 	stb	_blockOrientation	; , blockOrientation
                           1072 ;----- asm -----
                           1073 ;  453 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1074 	; #ENR#[291]            blockX--;
                           1075 ;  0 "" 2
                           1076 ;--- end asm ---
   0477 7A C8 92      [ 7] 1077 	dec	_blockX	;  blockX
                           1078 ;----- asm -----
                           1079 ;  455 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1080 	; #ENR#[292]            splitMode = 0;
                           1081 ;  0 "" 2
                           1082 ;--- end asm ---
   047A 7F C8 91      [ 7] 1083 	clr	_splitMode	;  splitMode
   047D 7E 04 D6      [ 4] 1084 	jmp	L50	; 
   0480                    1085 L47:
   0480 E6 62         [ 5] 1086 	ldb	2,s	;  tmp33, blockX2.31
   0482 5A            [ 2] 1087 	decb	;  tmp33
   0483 E1 63         [ 5] 1088 	cmpb	3,s	;cmpqi:(R)	;  tmp33, blockX.32
   0485 10 26 00 4D   [ 6] 1089 	lbne	L50	; 
                           1090 ;----- asm -----
                           1091 ;  458 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1092 	; #ENR#[294]            blockAnimation = width2RollingFront;
                           1093 ;  0 "" 2
                           1094 ;--- end asm ---
   0489 8E 30 48      [ 3] 1095 	ldx	#_width2RollingFront	; ,
   048C BF C8 96      [ 6] 1096 	stx	_blockAnimation	; , blockAnimation
                           1097 ;----- asm -----
                           1098 ;  460 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1099 	; #ENR#[295]            blockOrientation = Horizontal;
                           1100 ;  0 "" 2
                           1101 ;--- end asm ---
   048F C6 02         [ 2] 1102 	ldb	#2	; ,
   0491 F7 C8 8D      [ 5] 1103 	stb	_blockOrientation	; , blockOrientation
                           1104 ;----- asm -----
                           1105 ;  462 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1106 	; #ENR#[296]            splitMode = 0;
                           1107 ;  0 "" 2
                           1108 ;--- end asm ---
   0494 7F C8 91      [ 7] 1109 	clr	_splitMode	;  splitMode
   0497 7E 04 D6      [ 4] 1110 	jmp	L50	; 
   049A                    1111 L46:
   049A F6 C8 92      [ 5] 1112 	ldb	_blockX	; , blockX
   049D F1 C8 94      [ 5] 1113 	cmpb	_blockX2	;cmpqi:	; , blockX2
   04A0 10 26 00 32   [ 6] 1114 	lbne	L50	; 
                           1115 ;----- asm -----
                           1116 ;  466 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1117 	; #ENR#[299]        if (blockY == blockY2 + 1) {
                           1118 ;  0 "" 2
                           1119 ;--- end asm ---
   04A4 E6 61         [ 5] 1120 	ldb	1,s	;  tmp35, blockY2.30
   04A6 5C            [ 2] 1121 	incb	;  tmp35
   04A7 E1 E4         [ 4] 1122 	cmpb	,s	;cmpqi:(R)	;  tmp35, blockY.29
   04A9 26 16         [ 3] 1123 	bne	L49	; 
                           1124 ;----- asm -----
                           1125 ;  468 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1126 	; #ENR#[300]            blockAnimation = depth2RollingLeft;
                           1127 ;  0 "" 2
                           1128 ;--- end asm ---
   04AB 8E 30 18      [ 3] 1129 	ldx	#_depth2RollingLeft	; ,
   04AE BF C8 96      [ 6] 1130 	stx	_blockAnimation	; , blockAnimation
                           1131 ;----- asm -----
                           1132 ;  470 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1133 	; #ENR#[301]            blockOrientation = Vertical;
                           1134 ;  0 "" 2
                           1135 ;--- end asm ---
   04B1 C6 01         [ 2] 1136 	ldb	#1	; ,
   04B3 F7 C8 8D      [ 5] 1137 	stb	_blockOrientation	; , blockOrientation
                           1138 ;----- asm -----
                           1139 ;  472 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1140 	; #ENR#[302]            blockY--;
                           1141 ;  0 "" 2
                           1142 ;--- end asm ---
   04B6 E6 E4         [ 4] 1143 	ldb	,s	; , blockY.29
   04B8 5A            [ 2] 1144 	decb	; 
   04B9 F7 C8 93      [ 5] 1145 	stb	_blockY	; , blockY
                           1146 ;----- asm -----
                           1147 ;  474 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1148 	; #ENR#[303]            splitMode = 0;
                           1149 ;  0 "" 2
                           1150 ;--- end asm ---
   04BC 7F C8 91      [ 7] 1151 	clr	_splitMode	;  splitMode
   04BF 20 15         [ 3] 1152 	bra	L50	; 
   04C1                    1153 L49:
   04C1 E6 61         [ 5] 1154 	ldb	1,s	;  tmp37, blockY2.30
   04C3 5A            [ 2] 1155 	decb	;  tmp37
   04C4 E1 E4         [ 4] 1156 	cmpb	,s	;cmpqi:(R)	;  tmp37, blockY.29
   04C6 26 0E         [ 3] 1157 	bne	L50	; 
                           1158 ;----- asm -----
                           1159 ;  477 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1160 	; #ENR#[305]            blockAnimation = depth2RollingLeft;
                           1161 ;  0 "" 2
                           1162 ;--- end asm ---
   04C8 8E 30 18      [ 3] 1163 	ldx	#_depth2RollingLeft	; ,
   04CB BF C8 96      [ 6] 1164 	stx	_blockAnimation	; , blockAnimation
                           1165 ;----- asm -----
                           1166 ;  479 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1167 	; #ENR#[306]            blockOrientation = Vertical;;
                           1168 ;  0 "" 2
                           1169 ;--- end asm ---
   04CE C6 01         [ 2] 1170 	ldb	#1	; ,
   04D0 F7 C8 8D      [ 5] 1171 	stb	_blockOrientation	; , blockOrientation
                           1172 ;----- asm -----
                           1173 ;  481 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1174 	; #ENR#[307]            splitMode = 0;
                           1175 ;  0 "" 2
                           1176 ;--- end asm ---
   04D3 7F C8 91      [ 7] 1177 	clr	_splitMode	;  splitMode
   04D6                    1178 L50:
   04D6 32 64         [ 5] 1179 	leas	4,s	; ,,
   04D8 39            [ 5] 1180 	rts
                           1181 	.globl _swapSplit
   04D9                    1182 _swapSplit:
   04D9 32 7E         [ 5] 1183 	leas	-2,s	; ,,
                           1184 ;----- asm -----
                           1185 ;  489 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1186 	; #ENR#[314]    int8_t xt = blockX;
                           1187 ;  0 "" 2
                           1188 ;--- end asm ---
   04DB F6 C8 92      [ 5] 1189 	ldb	_blockX	; , blockX
   04DE E7 E4         [ 4] 1190 	stb	,s	; , xt
                           1191 ;----- asm -----
                           1192 ;  491 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1193 	; #ENR#[315]    int8_t yt = blockY;
                           1194 ;  0 "" 2
                           1195 ;--- end asm ---
   04E0 F6 C8 93      [ 5] 1196 	ldb	_blockY	; , blockY
   04E3 E7 61         [ 5] 1197 	stb	1,s	; , yt
                           1198 ;----- asm -----
                           1199 ;  493 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1200 	; #ENR#[316]    blockX = blockX2;
                           1201 ;  0 "" 2
                           1202 ;--- end asm ---
   04E5 F6 C8 94      [ 5] 1203 	ldb	_blockX2	; , blockX2
   04E8 F7 C8 92      [ 5] 1204 	stb	_blockX	; , blockX
                           1205 ;----- asm -----
                           1206 ;  495 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1207 	; #ENR#[317]    blockY = blockY2;
                           1208 ;  0 "" 2
                           1209 ;--- end asm ---
   04EB F6 C8 95      [ 5] 1210 	ldb	_blockY2	; , blockY2
   04EE F7 C8 93      [ 5] 1211 	stb	_blockY	; , blockY
                           1212 ;----- asm -----
                           1213 ;  497 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1214 	; #ENR#[318]    blockX2 = xt;
                           1215 ;  0 "" 2
                           1216 ;--- end asm ---
   04F1 E6 E4         [ 4] 1217 	ldb	,s	; , xt
   04F3 F7 C8 94      [ 5] 1218 	stb	_blockX2	; , blockX2
                           1219 ;----- asm -----
                           1220 ;  499 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1221 	; #ENR#[319]    blockY2 = yt;
                           1222 ;  0 "" 2
                           1223 ;--- end asm ---
   04F6 E6 61         [ 5] 1224 	ldb	1,s	; , yt
   04F8 F7 C8 95      [ 5] 1225 	stb	_blockY2	; , blockY2
   04FB 32 62         [ 5] 1226 	leas	2,s	; ,,
   04FD 39            [ 5] 1227 	rts
                           1228 	.globl _drawBlock
   04FE                    1229 _drawBlock:
   04FE 34 40         [ 6] 1230 	pshs	u	; 
   0500 32 79         [ 5] 1231 	leas	-7,s	; ,,
   0502 E7 62         [ 5] 1232 	stb	2,s	;  yofs, yofs
                           1233 ;----- asm -----
                           1234 ;  341 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1235 	; #ENR#[216]    intens(0x63);
                           1236 ;  0 "" 2
                           1237 ;--- end asm ---
   0504 C6 63         [ 2] 1238 	ldb	#99	; ,
   0506 E7 65         [ 5] 1239 	stb	5,s	; , a
                           1240 ;----- asm -----
                           1241 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0508 A6 65         [ 5] 1242 	lda 5,s	;  a
   050A BD F2 AB      [ 8] 1243 	jsr ___Intensity_a; BIOS call
                           1244 ;  0 "" 2
                           1245 ;  343 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1246 	; #ENR#[217]    int8_t yy = y3d(blockX, 0, blockY);
                           1247 ;  0 "" 2
                           1248 ;--- end asm ---
   050D F6 C8 93      [ 5] 1249 	ldb	_blockY	; , blockY
   0510 E7 E2         [ 6] 1250 	stb	,-s	; ,
   0512 6F E2         [ 8] 1251 	clr	,-s	; 
   0514 F6 C8 92      [ 5] 1252 	ldb	_blockX	; , blockX
   0517 BD 37 76      [ 8] 1253 	jsr	_y3d	; 
   051A E7 65         [ 5] 1254 	stb	5,s	; , yy
                           1255 ;----- asm -----
                           1256 ;  346 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1257 	; #ENR#[219]    if (yofs < -30)
                           1258 ;  0 "" 2
                           1259 ;--- end asm ---
   051C 32 62         [ 5] 1260 	leas	2,s	; ,,
   051E E6 62         [ 5] 1261 	ldb	2,s	; , yofs
   0520 C1 E2         [ 2] 1262 	cmpb	#-30	;cmpqi:	; ,
   0522 2C 31         [ 3] 1263 	bge	L54	; 
                           1264 ;----- asm -----
                           1265 ;  349 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1266 	; #ENR#[221]        positd(0, yofs);
                           1267 ;  0 "" 2
                           1268 ;--- end asm ---
   0524 C6 80         [ 2] 1269 	ldb	#-128	; ,
   0526 D7 04         [ 4] 1270 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   0528 E6 62         [ 5] 1271 	ldb	2,s	; , yofs
   052A E7 66         [ 5] 1272 	stb	6,s	; , a
   052C 6F 65         [ 7] 1273 	clr	5,s	;  b
                           1274 ;----- asm -----
                           1275 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   052E A6 66         [ 5] 1276 	lda 6,s	;  a
   0530 E6 65         [ 5] 1277 	ldb 5,s	;  b
   0532 BD F3 12      [ 8] 1278 	jsr ___Moveto_d; BIOS call
                           1279 ;  0 "" 2
                           1280 ;  351 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1281 	; #ENR#[222]        positd(x3d(blockX, blockY), yy);
                           1282 ;  0 "" 2
                           1283 ;--- end asm ---
   0535 F6 C8 93      [ 5] 1284 	ldb	_blockY	; , blockY
   0538 E7 E2         [ 6] 1285 	stb	,-s	; ,
   053A F6 C8 92      [ 5] 1286 	ldb	_blockX	; , blockX
   053D BD 37 55      [ 8] 1287 	jsr	_x3d	; 
   0540 E7 67         [ 5] 1288 	stb	7,s	; , b
   0542 C6 80         [ 2] 1289 	ldb	#-128	; ,
   0544 D7 04         [ 4] 1290 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   0546 E6 64         [ 5] 1291 	ldb	4,s	; , yy
   0548 E7 66         [ 5] 1292 	stb	6,s	; , a
                           1293 ;----- asm -----
                           1294 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   054A A6 66         [ 5] 1295 	lda 6,s	;  a
   054C E6 67         [ 5] 1296 	ldb 7,s	;  b
   054E BD F3 12      [ 8] 1297 	jsr ___Moveto_d; BIOS call
                           1298 ;  0 "" 2
                           1299 ;--- end asm ---
   0551 32 61         [ 5] 1300 	leas	1,s	; ,,
   0553 20 20         [ 3] 1301 	bra	L55	; 
   0555                    1302 L54:
                           1303 ;----- asm -----
                           1304 ;  356 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1305 	; #ENR#[226]        positd(x3d(blockX, blockY), yy+yofs);
                           1306 ;  0 "" 2
                           1307 ;--- end asm ---
   0555 F6 C8 93      [ 5] 1308 	ldb	_blockY	; , blockY
   0558 E7 E2         [ 6] 1309 	stb	,-s	; ,
   055A F6 C8 92      [ 5] 1310 	ldb	_blockX	; , blockX
   055D BD 37 55      [ 8] 1311 	jsr	_x3d	; 
   0560 E7 66         [ 5] 1312 	stb	6,s	; , b
   0562 C6 80         [ 2] 1313 	ldb	#-128	; ,
   0564 D7 04         [ 4] 1314 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   0566 E6 64         [ 5] 1315 	ldb	4,s	; , yy
   0568 EB 63         [ 5] 1316 	addb	3,s	; , yofs
   056A E7 67         [ 5] 1317 	stb	7,s	; , a
                           1318 ;----- asm -----
                           1319 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   056C A6 67         [ 5] 1320 	lda 7,s	;  a
   056E E6 66         [ 5] 1321 	ldb 6,s	;  b
   0570 BD F3 12      [ 8] 1322 	jsr ___Moveto_d; BIOS call
                           1323 ;  0 "" 2
                           1324 ;--- end asm ---
   0573 32 61         [ 5] 1325 	leas	1,s	; ,,
   0575                    1326 L55:
                           1327 ;----- asm -----
                           1328 ;  360 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1329 	; #ENR#[229]	dp_VIA_t1_cnt_lo = 0x7f/FACTOR; // scale
                           1330 ;  0 "" 2
                           1331 ;--- end asm ---
   0575 C6 2A         [ 2] 1332 	ldb	#42	; ,
   0577 D7 04         [ 4] 1333 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1334 ;----- asm -----
                           1335 ;  363 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1336 	; #ENR#[231]    Draw_VLpo((void*)(blockAnimation[blockAnimationStep]));
                           1337 ;  0 "" 2
                           1338 ;--- end asm ---
   0579 F6 C8 9A      [ 5] 1339 	ldb	_blockAnimationStep	; , blockAnimationStep
   057C 1D            [ 2] 1340 	sex		;extendqihi2: R:b -> R:d	; ,
   057D ED E4         [ 5] 1341 	std	,s	; ,
   057F 58            [ 2] 1342 	aslb	; 
   0580 49            [ 2] 1343 	rola	; 
   0581 FE C8 96      [ 6] 1344 	ldu	_blockAnimation	; , blockAnimation
   0584 30 CB         [ 8] 1345 	leax	d,u	;  tmp37, tmp36,
   0586 AE 84         [ 5] 1346 	ldx	,x	; ,
   0588 BD 03 B2      [ 8] 1347 	jsr	_Draw_VLpo	; 
                           1348 ;----- asm -----
                           1349 ;  367 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1350 	; #ENR#[234]    if (splitMode) {
                           1351 ;  0 "" 2
                           1352 ;--- end asm ---
   058B 7D C8 91      [ 7] 1353 	tst	_splitMode	;  splitMode
   058E 10 27 00 7E   [ 6] 1354 	lbeq	L59	; 
                           1355 ;----- asm -----
                           1356 ;  369 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1357 	; #ENR#[235]        zergnd();
                           1358 ;  0 "" 2
                           1359 ;  181 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0592 BD F3 54      [ 8] 1360 	jsr ___Reset0Ref; BIOS call
                           1361 ;  0 "" 2
                           1362 ;  371 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1363 	; #ENR#[236]        intens(0x35);
                           1364 ;  0 "" 2
                           1365 ;--- end asm ---
   0595 C6 35         [ 2] 1366 	ldb	#53	; ,
   0597 E7 66         [ 5] 1367 	stb	6,s	; , a
                           1368 ;----- asm -----
                           1369 ;  3427 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   0599 A6 66         [ 5] 1370 	lda 6,s	;  a
   059B BD F2 AB      [ 8] 1371 	jsr ___Intensity_a; BIOS call
                           1372 ;  0 "" 2
                           1373 ;  373 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1374 	; #ENR#[237]        yy = y3d(blockX2, 0, blockY2);
                           1375 ;  0 "" 2
                           1376 ;--- end asm ---
   059E F6 C8 95      [ 5] 1377 	ldb	_blockY2	; , blockY2
   05A1 E7 E2         [ 6] 1378 	stb	,-s	; ,
   05A3 6F E2         [ 8] 1379 	clr	,-s	; 
   05A5 F6 C8 94      [ 5] 1380 	ldb	_blockX2	; , blockX2
   05A8 BD 37 76      [ 8] 1381 	jsr	_y3d	; 
   05AB E7 66         [ 5] 1382 	stb	6,s	; , yy.133
                           1383 ;----- asm -----
                           1384 ;  376 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1385 	; #ENR#[239]        if (yofs < -50)
                           1386 ;  0 "" 2
                           1387 ;--- end asm ---
   05AD 32 62         [ 5] 1388 	leas	2,s	; ,,
   05AF E6 62         [ 5] 1389 	ldb	2,s	; , yofs
   05B1 C1 CE         [ 2] 1390 	cmpb	#-50	;cmpqi:	; ,
   05B3 2C 31         [ 3] 1391 	bge	L57	; 
                           1392 ;----- asm -----
                           1393 ;  379 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1394 	; #ENR#[241]            positd(0, yofs);
                           1395 ;  0 "" 2
                           1396 ;--- end asm ---
   05B5 C6 80         [ 2] 1397 	ldb	#-128	; ,
   05B7 D7 04         [ 4] 1398 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   05B9 E6 62         [ 5] 1399 	ldb	2,s	; , yofs
   05BB E7 65         [ 5] 1400 	stb	5,s	; , a
   05BD 6F 66         [ 7] 1401 	clr	6,s	;  b
                           1402 ;----- asm -----
                           1403 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   05BF A6 65         [ 5] 1404 	lda 5,s	;  a
   05C1 E6 66         [ 5] 1405 	ldb 6,s	;  b
   05C3 BD F3 12      [ 8] 1406 	jsr ___Moveto_d; BIOS call
                           1407 ;  0 "" 2
                           1408 ;  381 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1409 	; #ENR#[242]            positd(x3d(blockX2, blockY2),yy );
                           1410 ;  0 "" 2
                           1411 ;--- end asm ---
   05C6 F6 C8 95      [ 5] 1412 	ldb	_blockY2	; , blockY2
   05C9 E7 E2         [ 6] 1413 	stb	,-s	; ,
   05CB F6 C8 94      [ 5] 1414 	ldb	_blockX2	; , blockX2
   05CE BD 37 55      [ 8] 1415 	jsr	_x3d	; 
   05D1 E7 66         [ 5] 1416 	stb	6,s	; , b
   05D3 C6 80         [ 2] 1417 	ldb	#-128	; ,
   05D5 D7 04         [ 4] 1418 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   05D7 E6 65         [ 5] 1419 	ldb	5,s	; , yy.133
   05D9 E7 67         [ 5] 1420 	stb	7,s	; , a
                           1421 ;----- asm -----
                           1422 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   05DB A6 67         [ 5] 1423 	lda 7,s	;  a
   05DD E6 66         [ 5] 1424 	ldb 6,s	;  b
   05DF BD F3 12      [ 8] 1425 	jsr ___Moveto_d; BIOS call
                           1426 ;  0 "" 2
                           1427 ;--- end asm ---
   05E2 32 61         [ 5] 1428 	leas	1,s	; ,,
   05E4 20 20         [ 3] 1429 	bra	L58	; 
   05E6                    1430 L57:
                           1431 ;----- asm -----
                           1432 ;  386 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1433 	; #ENR#[246]            positd(x3d(blockX2, blockY2),yy+yofs );
                           1434 ;  0 "" 2
                           1435 ;--- end asm ---
   05E6 F6 C8 95      [ 5] 1436 	ldb	_blockY2	; , blockY2
   05E9 E7 E2         [ 6] 1437 	stb	,-s	; ,
   05EB F6 C8 94      [ 5] 1438 	ldb	_blockX2	; , blockX2
   05EE BD 37 55      [ 8] 1439 	jsr	_x3d	; 
   05F1 E7 67         [ 5] 1440 	stb	7,s	; , b
   05F3 C6 80         [ 2] 1441 	ldb	#-128	; ,
   05F5 D7 04         [ 4] 1442 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
   05F7 E6 65         [ 5] 1443 	ldb	5,s	; , yy.133
   05F9 EB 63         [ 5] 1444 	addb	3,s	; , yofs
   05FB E7 66         [ 5] 1445 	stb	6,s	; , a
                           1446 ;----- asm -----
                           1447 ;  3315 "/home/frank/bin/Vide/C/PeerC/vectrex/include/vec_rum_inl.h" 1
   05FD A6 66         [ 5] 1448 	lda 6,s	;  a
   05FF E6 67         [ 5] 1449 	ldb 7,s	;  b
   0601 BD F3 12      [ 8] 1450 	jsr ___Moveto_d; BIOS call
                           1451 ;  0 "" 2
                           1452 ;--- end asm ---
   0604 32 61         [ 5] 1453 	leas	1,s	; ,,
   0606                    1454 L58:
                           1455 ;----- asm -----
                           1456 ;  391 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1457 	; #ENR#[250]	dp_VIA_t1_cnt_lo = 0x7f/FACTOR; // scale
                           1458 ;  0 "" 2
                           1459 ;--- end asm ---
   0606 C6 2A         [ 2] 1460 	ldb	#42	; ,
   0608 D7 04         [ 4] 1461 	stb	*_dp_VIA_t1_cnt_lo	; , dp_VIA_t1_cnt_lo
                           1462 ;----- asm -----
                           1463 ;  394 "/home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/block.enr.c" 1
                           1464 	; #ENR#[252]    Draw_VLpo((void*)(height1FallingLeft[0]));
                           1465 ;  0 "" 2
                           1466 ;--- end asm ---
   060A BE 30 78      [ 6] 1467 	ldx	_height1FallingLeft	; , height1FallingLeft
   060D BD 03 B2      [ 8] 1468 	jsr	_Draw_VLpo	; 
   0610                    1469 L59:
   0610 32 67         [ 5] 1470 	leas	7,s	; ,,
   0612 35 C0         [ 7] 1471 	puls	u,pc	; 
                           1472 	.globl _height2FallingLeft0
   0614                    1473 _height2FallingLeft0:
   0614 FF                 1474 	.byte	-1
   0615 09                 1475 	.byte	9
   0616 2A                 1476 	.byte	42
   0617 FF                 1477 	.byte	-1
   0618 18                 1478 	.byte	24
   0619 EE                 1479 	.byte	-18
   061A FF                 1480 	.byte	-1
   061B F7                 1481 	.byte	-9
   061C D9                 1482 	.byte	-39
   061D FF                 1483 	.byte	-1
   061E E8                 1484 	.byte	-24
   061F 0F                 1485 	.byte	15
   0620 FF                 1486 	.byte	-1
   0621 4E                 1487 	.byte	78
   0622 00                 1488 	.byte	0
   0623 00                 1489 	.byte	0
   0624 BB                 1490 	.byte	-69
   0625 2A                 1491 	.byte	42
   0626 FF                 1492 	.byte	-1
   0627 4E                 1493 	.byte	78
   0628 00                 1494 	.byte	0
   0629 00                 1495 	.byte	0
   062A CA                 1496 	.byte	-54
   062B EE                 1497 	.byte	-18
   062C FF                 1498 	.byte	-1
   062D 4E                 1499 	.byte	78
   062E 00                 1500 	.byte	0
   062F 00                 1501 	.byte	0
   0630 A9                 1502 	.byte	-87
   0631 D9                 1503 	.byte	-39
   0632 FF                 1504 	.byte	-1
   0633 4E                 1505 	.byte	78
   0634 00                 1506 	.byte	0
   0635 00                 1507 	.byte	0
   0636 E8                 1508 	.byte	-24
   0637 0F                 1509 	.byte	15
   0638 FF                 1510 	.byte	-1
   0639 09                 1511 	.byte	9
   063A 2A                 1512 	.byte	42
   063B FF                 1513 	.byte	-1
   063C 18                 1514 	.byte	24
   063D EE                 1515 	.byte	-18
   063E FF                 1516 	.byte	-1
   063F F7                 1517 	.byte	-9
   0640 D9                 1518 	.byte	-39
   0641 FF                 1519 	.byte	-1
   0642 E8                 1520 	.byte	-24
   0643 0F                 1521 	.byte	15
   0644 01                 1522 	.byte	1
                           1523 	.globl _height2RisingRight0
   0645                    1524 _height2RisingRight0:
   0645 00                 1525 	.byte	0
   0646 12                 1526 	.byte	18
   0647 54                 1527 	.byte	84
   0648 FF                 1528 	.byte	-1
   0649 27                 1529 	.byte	39
   064A 06                 1530 	.byte	6
   064B FF                 1531 	.byte	-1
   064C 18                 1532 	.byte	24
   064D EE                 1533 	.byte	-18
   064E FF                 1534 	.byte	-1
   064F D9                 1535 	.byte	-39
   0650 FA                 1536 	.byte	-6
   0651 FF                 1537 	.byte	-1
   0652 E8                 1538 	.byte	-24
   0653 12                 1539 	.byte	18
   0654 FF                 1540 	.byte	-1
   0655 F7                 1541 	.byte	-9
   0656 AC                 1542 	.byte	-84
   0657 00                 1543 	.byte	0
   0658 30                 1544 	.byte	48
   0659 5A                 1545 	.byte	90
   065A FF                 1546 	.byte	-1
   065B FA                 1547 	.byte	-6
   065C AC                 1548 	.byte	-84
   065D 00                 1549 	.byte	0
   065E 1E                 1550 	.byte	30
   065F 42                 1551 	.byte	66
   0660 FF                 1552 	.byte	-1
   0661 FA                 1553 	.byte	-6
   0662 AF                 1554 	.byte	-81
   0663 00                 1555 	.byte	0
   0664 DF                 1556 	.byte	-33
   0665 4B                 1557 	.byte	75
   0666 FF                 1558 	.byte	-1
   0667 F7                 1559 	.byte	-9
   0668 AF                 1560 	.byte	-81
   0669 00                 1561 	.byte	0
   066A E8                 1562 	.byte	-24
   066B 0F                 1563 	.byte	15
   066C FF                 1564 	.byte	-1
   066D 2A                 1565 	.byte	42
   066E 06                 1566 	.byte	6
   066F FF                 1567 	.byte	-1
   0670 18                 1568 	.byte	24
   0671 F1                 1569 	.byte	-15
   0672 FF                 1570 	.byte	-1
   0673 D6                 1571 	.byte	-42
   0674 FA                 1572 	.byte	-6
   0675 FF                 1573 	.byte	-1
   0676 E8                 1574 	.byte	-24
   0677 0F                 1575 	.byte	15
   0678 01                 1576 	.byte	1
                           1577 	.globl _height2FallingRight0
   0679                    1578 _height2FallingRight0:
   0679 FF                 1579 	.byte	-1
   067A 09                 1580 	.byte	9
   067B 2A                 1581 	.byte	42
   067C FF                 1582 	.byte	-1
   067D 18                 1583 	.byte	24
   067E EE                 1584 	.byte	-18
   067F FF                 1585 	.byte	-1
   0680 F7                 1586 	.byte	-9
   0681 D9                 1587 	.byte	-39
   0682 FF                 1588 	.byte	-1
   0683 E8                 1589 	.byte	-24
   0684 0F                 1590 	.byte	15
   0685 FF                 1591 	.byte	-1
   0686 4E                 1592 	.byte	78
   0687 00                 1593 	.byte	0
   0688 00                 1594 	.byte	0
   0689 BB                 1595 	.byte	-69
   068A 2A                 1596 	.byte	42
   068B FF                 1597 	.byte	-1
   068C 4E                 1598 	.byte	78
   068D 00                 1599 	.byte	0
   068E 00                 1600 	.byte	0
   068F CA                 1601 	.byte	-54
   0690 EE                 1602 	.byte	-18
   0691 FF                 1603 	.byte	-1
   0692 4E                 1604 	.byte	78
   0693 00                 1605 	.byte	0
   0694 00                 1606 	.byte	0
   0695 A9                 1607 	.byte	-87
   0696 D9                 1608 	.byte	-39
   0697 FF                 1609 	.byte	-1
   0698 4E                 1610 	.byte	78
   0699 00                 1611 	.byte	0
   069A 00                 1612 	.byte	0
   069B E8                 1613 	.byte	-24
   069C 0F                 1614 	.byte	15
   069D FF                 1615 	.byte	-1
   069E 09                 1616 	.byte	9
   069F 2A                 1617 	.byte	42
   06A0 FF                 1618 	.byte	-1
   06A1 18                 1619 	.byte	24
   06A2 EE                 1620 	.byte	-18
   06A3 FF                 1621 	.byte	-1
   06A4 F7                 1622 	.byte	-9
   06A5 D9                 1623 	.byte	-39
   06A6 FF                 1624 	.byte	-1
   06A7 E8                 1625 	.byte	-24
   06A8 0F                 1626 	.byte	15
   06A9 01                 1627 	.byte	1
                           1628 	.globl _height2RisingLeft0
   06AA                    1629 _height2RisingLeft0:
   06AA 00                 1630 	.byte	0
   06AB 24                 1631 	.byte	36
   06AC FD                 1632 	.byte	-3
   06AD FF                 1633 	.byte	-1
   06AE DC                 1634 	.byte	-36
   06AF 03                 1635 	.byte	3
   06B0 FF                 1636 	.byte	-1
   06B1 18                 1637 	.byte	24
   06B2 F1                 1638 	.byte	-15
   06B3 FF                 1639 	.byte	-1
   06B4 24                 1640 	.byte	36
   06B5 FA                 1641 	.byte	-6
   06B6 FF                 1642 	.byte	-1
   06B7 E8                 1643 	.byte	-24
   06B8 12                 1644 	.byte	18
   06B9 FF                 1645 	.byte	-1
   06BA 1E                 1646 	.byte	30
   06BB 51                 1647 	.byte	81
   06BC 00                 1648 	.byte	0
   06BD BE                 1649 	.byte	-66
   06BE B2                 1650 	.byte	-78
   06BF FF                 1651 	.byte	-1
   06C0 1B                 1652 	.byte	27
   06C1 54                 1653 	.byte	84
   06C2 00                 1654 	.byte	0
   06C3 FD                 1655 	.byte	-3
   06C4 9D                 1656 	.byte	-99
   06C5 FF                 1657 	.byte	-1
   06C6 1B                 1658 	.byte	27
   06C7 51                 1659 	.byte	81
   06C8 00                 1660 	.byte	0
   06C9 09                 1661 	.byte	9
   06CA A9                 1662 	.byte	-87
   06CB FF                 1663 	.byte	-1
   06CC 1E                 1664 	.byte	30
   06CD 51                 1665 	.byte	81
   06CE 00                 1666 	.byte	0
   06CF E8                 1667 	.byte	-24
   06D0 12                 1668 	.byte	18
   06D1 FF                 1669 	.byte	-1
   06D2 D9                 1670 	.byte	-39
   06D3 06                 1671 	.byte	6
   06D4 FF                 1672 	.byte	-1
   06D5 18                 1673 	.byte	24
   06D6 EE                 1674 	.byte	-18
   06D7 FF                 1675 	.byte	-1
   06D8 27                 1676 	.byte	39
   06D9 FA                 1677 	.byte	-6
   06DA FF                 1678 	.byte	-1
   06DB E8                 1679 	.byte	-24
   06DC 12                 1680 	.byte	18
   06DD 01                 1681 	.byte	1
                           1682 	.globl _height2FallingBack0
   06DE                    1683 _height2FallingBack0:
   06DE FF                 1684 	.byte	-1
   06DF 09                 1685 	.byte	9
   06E0 2A                 1686 	.byte	42
   06E1 FF                 1687 	.byte	-1
   06E2 18                 1688 	.byte	24
   06E3 EE                 1689 	.byte	-18
   06E4 FF                 1690 	.byte	-1
   06E5 F7                 1691 	.byte	-9
   06E6 D9                 1692 	.byte	-39
   06E7 FF                 1693 	.byte	-1
   06E8 E8                 1694 	.byte	-24
   06E9 0F                 1695 	.byte	15
   06EA FF                 1696 	.byte	-1
   06EB 4E                 1697 	.byte	78
   06EC 00                 1698 	.byte	0
   06ED 00                 1699 	.byte	0
   06EE BB                 1700 	.byte	-69
   06EF 2A                 1701 	.byte	42
   06F0 FF                 1702 	.byte	-1
   06F1 4E                 1703 	.byte	78
   06F2 00                 1704 	.byte	0
   06F3 00                 1705 	.byte	0
   06F4 CA                 1706 	.byte	-54
   06F5 EE                 1707 	.byte	-18
   06F6 FF                 1708 	.byte	-1
   06F7 4E                 1709 	.byte	78
   06F8 00                 1710 	.byte	0
   06F9 00                 1711 	.byte	0
   06FA A9                 1712 	.byte	-87
   06FB D9                 1713 	.byte	-39
   06FC FF                 1714 	.byte	-1
   06FD 4E                 1715 	.byte	78
   06FE 00                 1716 	.byte	0
   06FF 00                 1717 	.byte	0
   0700 E8                 1718 	.byte	-24
   0701 0F                 1719 	.byte	15
   0702 FF                 1720 	.byte	-1
   0703 09                 1721 	.byte	9
   0704 2A                 1722 	.byte	42
   0705 FF                 1723 	.byte	-1
   0706 18                 1724 	.byte	24
   0707 EE                 1725 	.byte	-18
   0708 FF                 1726 	.byte	-1
   0709 F7                 1727 	.byte	-9
   070A D9                 1728 	.byte	-39
   070B FF                 1729 	.byte	-1
   070C E8                 1730 	.byte	-24
   070D 0F                 1731 	.byte	15
   070E 01                 1732 	.byte	1
                           1733 	.globl _height2RisingFront0
   070F                    1734 _height2RisingFront0:
   070F 00                 1735 	.byte	0
   0710 24                 1736 	.byte	36
   0711 03                 1737 	.byte	3
   0712 FF                 1738 	.byte	-1
   0713 09                 1739 	.byte	9
   0714 2A                 1740 	.byte	42
   0715 FF                 1741 	.byte	-1
   0716 DC                 1742 	.byte	-36
   0717 FD                 1743 	.byte	-3
   0718 FF                 1744 	.byte	-1
   0719 F7                 1745 	.byte	-9
   071A D6                 1746 	.byte	-42
   071B FF                 1747 	.byte	-1
   071C 24                 1748 	.byte	36
   071D 03                 1749 	.byte	3
   071E FF                 1750 	.byte	-1
   071F 39                 1751 	.byte	57
   0720 DF                 1752 	.byte	-33
   0721 00                 1753 	.byte	0
   0722 D0                 1754 	.byte	-48
   0723 4B                 1755 	.byte	75
   0724 FF                 1756 	.byte	-1
   0725 39                 1757 	.byte	57
   0726 DC                 1758 	.byte	-36
   0727 00                 1759 	.byte	0
   0728 A3                 1760 	.byte	-93
   0729 21                 1761 	.byte	33
   072A FF                 1762 	.byte	-1
   072B 39                 1763 	.byte	57
   072C DC                 1764 	.byte	-36
   072D 00                 1765 	.byte	0
   072E BE                 1766 	.byte	-66
   072F FA                 1767 	.byte	-6
   0730 FF                 1768 	.byte	-1
   0731 39                 1769 	.byte	57
   0732 DF                 1770 	.byte	-33
   0733 00                 1771 	.byte	0
   0734 24                 1772 	.byte	36
   0735 03                 1773 	.byte	3
   0736 FF                 1774 	.byte	-1
   0737 09                 1775 	.byte	9
   0738 27                 1776 	.byte	39
   0739 FF                 1777 	.byte	-1
   073A DC                 1778 	.byte	-36
   073B FD                 1779 	.byte	-3
   073C FF                 1780 	.byte	-1
   073D F7                 1781 	.byte	-9
   073E D9                 1782 	.byte	-39
   073F FF                 1783 	.byte	-1
   0740 24                 1784 	.byte	36
   0741 03                 1785 	.byte	3
   0742 01                 1786 	.byte	1
                           1787 	.globl _height2FallingFront0
   0743                    1788 _height2FallingFront0:
   0743 FF                 1789 	.byte	-1
   0744 09                 1790 	.byte	9
   0745 2A                 1791 	.byte	42
   0746 FF                 1792 	.byte	-1
   0747 18                 1793 	.byte	24
   0748 EE                 1794 	.byte	-18
   0749 FF                 1795 	.byte	-1
   074A F7                 1796 	.byte	-9
   074B D9                 1797 	.byte	-39
   074C FF                 1798 	.byte	-1
   074D E8                 1799 	.byte	-24
   074E 0F                 1800 	.byte	15
   074F FF                 1801 	.byte	-1
   0750 4E                 1802 	.byte	78
   0751 00                 1803 	.byte	0
   0752 00                 1804 	.byte	0
   0753 BB                 1805 	.byte	-69
   0754 2A                 1806 	.byte	42
   0755 FF                 1807 	.byte	-1
   0756 4E                 1808 	.byte	78
   0757 00                 1809 	.byte	0
   0758 00                 1810 	.byte	0
   0759 CA                 1811 	.byte	-54
   075A EE                 1812 	.byte	-18
   075B FF                 1813 	.byte	-1
   075C 4E                 1814 	.byte	78
   075D 00                 1815 	.byte	0
   075E 00                 1816 	.byte	0
   075F A9                 1817 	.byte	-87
   0760 D9                 1818 	.byte	-39
   0761 FF                 1819 	.byte	-1
   0762 4E                 1820 	.byte	78
   0763 00                 1821 	.byte	0
   0764 00                 1822 	.byte	0
   0765 E8                 1823 	.byte	-24
   0766 0F                 1824 	.byte	15
   0767 FF                 1825 	.byte	-1
   0768 09                 1826 	.byte	9
   0769 2A                 1827 	.byte	42
   076A FF                 1828 	.byte	-1
   076B 18                 1829 	.byte	24
   076C EE                 1830 	.byte	-18
   076D FF                 1831 	.byte	-1
   076E F7                 1832 	.byte	-9
   076F D9                 1833 	.byte	-39
   0770 FF                 1834 	.byte	-1
   0771 E8                 1835 	.byte	-24
   0772 0F                 1836 	.byte	15
   0773 01                 1837 	.byte	1
                           1838 	.globl _height2RisingBack0
   0774                    1839 _height2RisingBack0:
   0774 00                 1840 	.byte	0
   0775 30                 1841 	.byte	48
   0776 DF                 1842 	.byte	-33
   0777 FF                 1843 	.byte	-1
   0778 09                 1844 	.byte	9
   0779 27                 1845 	.byte	39
   077A FF                 1846 	.byte	-1
   077B 2A                 1847 	.byte	42
   077C FD                 1848 	.byte	-3
   077D FF                 1849 	.byte	-1
   077E F7                 1850 	.byte	-9
   077F D9                 1851 	.byte	-39
   0780 FF                 1852 	.byte	-1
   0781 D6                 1853 	.byte	-42
   0782 03                 1854 	.byte	3
   0783 FF                 1855 	.byte	-1
   0784 DC                 1856 	.byte	-36
   0785 21                 1857 	.byte	33
   0786 00                 1858 	.byte	0
   0787 2D                 1859 	.byte	45
   0788 06                 1860 	.byte	6
   0789 FF                 1861 	.byte	-1
   078A DC                 1862 	.byte	-36
   078B 24                 1863 	.byte	36
   078C 00                 1864 	.byte	0
   078D 4E                 1865 	.byte	78
   078E D9                 1866 	.byte	-39
   078F FF                 1867 	.byte	-1
   0790 D9                 1868 	.byte	-39
   0791 24                 1869 	.byte	36
   0792 00                 1870 	.byte	0
   0793 1E                 1871 	.byte	30
   0794 B5                 1872 	.byte	-75
   0795 FF                 1873 	.byte	-1
   0796 D9                 1874 	.byte	-39
   0797 24                 1875 	.byte	36
   0798 00                 1876 	.byte	0
   0799 D9                 1877 	.byte	-39
   079A 00                 1878 	.byte	0
   079B FF                 1879 	.byte	-1
   079C 09                 1880 	.byte	9
   079D 2A                 1881 	.byte	42
   079E FF                 1882 	.byte	-1
   079F 27                 1883 	.byte	39
   07A0 FD                 1884 	.byte	-3
   07A1 FF                 1885 	.byte	-1
   07A2 F7                 1886 	.byte	-9
   07A3 D9                 1887 	.byte	-39
   07A4 FF                 1888 	.byte	-1
   07A5 D9                 1889 	.byte	-39
   07A6 00                 1890 	.byte	0
   07A7 01                 1891 	.byte	1
                           1892 	.globl _depth2RollingLeft0
   07A8                    1893 _depth2RollingLeft0:
   07A8 FF                 1894 	.byte	-1
   07A9 09                 1895 	.byte	9
   07AA 2A                 1896 	.byte	42
   07AB FF                 1897 	.byte	-1
   07AC 30                 1898 	.byte	48
   07AD DC                 1899 	.byte	-36
   07AE FF                 1900 	.byte	-1
   07AF F7                 1901 	.byte	-9
   07B0 D9                 1902 	.byte	-39
   07B1 FF                 1903 	.byte	-1
   07B2 D0                 1904 	.byte	-48
   07B3 21                 1905 	.byte	33
   07B4 FF                 1906 	.byte	-1
   07B5 27                 1907 	.byte	39
   07B6 00                 1908 	.byte	0
   07B7 00                 1909 	.byte	0
   07B8 E2                 1910 	.byte	-30
   07B9 2A                 1911 	.byte	42
   07BA FF                 1912 	.byte	-1
   07BB 27                 1913 	.byte	39
   07BC 00                 1914 	.byte	0
   07BD 00                 1915 	.byte	0
   07BE 09                 1916 	.byte	9
   07BF DC                 1917 	.byte	-36
   07C0 FF                 1918 	.byte	-1
   07C1 27                 1919 	.byte	39
   07C2 00                 1920 	.byte	0
   07C3 00                 1921 	.byte	0
   07C4 D0                 1922 	.byte	-48
   07C5 D9                 1923 	.byte	-39
   07C6 FF                 1924 	.byte	-1
   07C7 27                 1925 	.byte	39
   07C8 00                 1926 	.byte	0
   07C9 00                 1927 	.byte	0
   07CA D0                 1928 	.byte	-48
   07CB 21                 1929 	.byte	33
   07CC FF                 1930 	.byte	-1
   07CD 09                 1931 	.byte	9
   07CE 2A                 1932 	.byte	42
   07CF FF                 1933 	.byte	-1
   07D0 30                 1934 	.byte	48
   07D1 DC                 1935 	.byte	-36
   07D2 FF                 1936 	.byte	-1
   07D3 F7                 1937 	.byte	-9
   07D4 D9                 1938 	.byte	-39
   07D5 FF                 1939 	.byte	-1
   07D6 D0                 1940 	.byte	-48
   07D7 21                 1941 	.byte	33
   07D8 01                 1942 	.byte	1
                           1943 	.globl _depth2RollingRight0
   07D9                    1944 _depth2RollingRight0:
   07D9 FF                 1945 	.byte	-1
   07DA 09                 1946 	.byte	9
   07DB 2A                 1947 	.byte	42
   07DC FF                 1948 	.byte	-1
   07DD 30                 1949 	.byte	48
   07DE DC                 1950 	.byte	-36
   07DF FF                 1951 	.byte	-1
   07E0 F7                 1952 	.byte	-9
   07E1 D9                 1953 	.byte	-39
   07E2 FF                 1954 	.byte	-1
   07E3 D0                 1955 	.byte	-48
   07E4 21                 1956 	.byte	33
   07E5 FF                 1957 	.byte	-1
   07E6 27                 1958 	.byte	39
   07E7 00                 1959 	.byte	0
   07E8 00                 1960 	.byte	0
   07E9 E2                 1961 	.byte	-30
   07EA 2A                 1962 	.byte	42
   07EB FF                 1963 	.byte	-1
   07EC 27                 1964 	.byte	39
   07ED 00                 1965 	.byte	0
   07EE 00                 1966 	.byte	0
   07EF 09                 1967 	.byte	9
   07F0 DC                 1968 	.byte	-36
   07F1 FF                 1969 	.byte	-1
   07F2 27                 1970 	.byte	39
   07F3 00                 1971 	.byte	0
   07F4 00                 1972 	.byte	0
   07F5 D0                 1973 	.byte	-48
   07F6 D9                 1974 	.byte	-39
   07F7 FF                 1975 	.byte	-1
   07F8 27                 1976 	.byte	39
   07F9 00                 1977 	.byte	0
   07FA 00                 1978 	.byte	0
   07FB D0                 1979 	.byte	-48
   07FC 21                 1980 	.byte	33
   07FD FF                 1981 	.byte	-1
   07FE 09                 1982 	.byte	9
   07FF 2A                 1983 	.byte	42
   0800 FF                 1984 	.byte	-1
   0801 30                 1985 	.byte	48
   0802 DC                 1986 	.byte	-36
   0803 FF                 1987 	.byte	-1
   0804 F7                 1988 	.byte	-9
   0805 D9                 1989 	.byte	-39
   0806 FF                 1990 	.byte	-1
   0807 D0                 1991 	.byte	-48
   0808 21                 1992 	.byte	33
   0809 01                 1993 	.byte	1
                           1994 	.globl _width2RollingFront0
   080A                    1995 _width2RollingFront0:
   080A FF                 1996 	.byte	-1
   080B 12                 1997 	.byte	18
   080C 54                 1998 	.byte	84
   080D FF                 1999 	.byte	-1
   080E 18                 2000 	.byte	24
   080F EE                 2001 	.byte	-18
   0810 FF                 2002 	.byte	-1
   0811 EE                 2003 	.byte	-18
   0812 AF                 2004 	.byte	-81
   0813 FF                 2005 	.byte	-1
   0814 E8                 2006 	.byte	-24
   0815 0F                 2007 	.byte	15
   0816 FF                 2008 	.byte	-1
   0817 27                 2009 	.byte	39
   0818 00                 2010 	.byte	0
   0819 00                 2011 	.byte	0
   081A EB                 2012 	.byte	-21
   081B 54                 2013 	.byte	84
   081C FF                 2014 	.byte	-1
   081D 27                 2015 	.byte	39
   081E 00                 2016 	.byte	0
   081F 00                 2017 	.byte	0
   0820 F1                 2018 	.byte	-15
   0821 EE                 2019 	.byte	-18
   0822 FF                 2020 	.byte	-1
   0823 27                 2021 	.byte	39
   0824 00                 2022 	.byte	0
   0825 00                 2023 	.byte	0
   0826 C7                 2024 	.byte	-57
   0827 AF                 2025 	.byte	-81
   0828 FF                 2026 	.byte	-1
   0829 27                 2027 	.byte	39
   082A 00                 2028 	.byte	0
   082B 00                 2029 	.byte	0
   082C E8                 2030 	.byte	-24
   082D 0F                 2031 	.byte	15
   082E FF                 2032 	.byte	-1
   082F 12                 2033 	.byte	18
   0830 54                 2034 	.byte	84
   0831 FF                 2035 	.byte	-1
   0832 18                 2036 	.byte	24
   0833 EE                 2037 	.byte	-18
   0834 FF                 2038 	.byte	-1
   0835 EE                 2039 	.byte	-18
   0836 AF                 2040 	.byte	-81
   0837 FF                 2041 	.byte	-1
   0838 E8                 2042 	.byte	-24
   0839 0F                 2043 	.byte	15
   083A 01                 2044 	.byte	1
                           2045 	.globl _width2RollingBack0
   083B                    2046 _width2RollingBack0:
   083B FF                 2047 	.byte	-1
   083C 12                 2048 	.byte	18
   083D 54                 2049 	.byte	84
   083E FF                 2050 	.byte	-1
   083F 18                 2051 	.byte	24
   0840 EE                 2052 	.byte	-18
   0841 FF                 2053 	.byte	-1
   0842 EE                 2054 	.byte	-18
   0843 AF                 2055 	.byte	-81
   0844 FF                 2056 	.byte	-1
   0845 E8                 2057 	.byte	-24
   0846 0F                 2058 	.byte	15
   0847 FF                 2059 	.byte	-1
   0848 27                 2060 	.byte	39
   0849 00                 2061 	.byte	0
   084A 00                 2062 	.byte	0
   084B EB                 2063 	.byte	-21
   084C 54                 2064 	.byte	84
   084D FF                 2065 	.byte	-1
   084E 27                 2066 	.byte	39
   084F 00                 2067 	.byte	0
   0850 00                 2068 	.byte	0
   0851 F1                 2069 	.byte	-15
   0852 EE                 2070 	.byte	-18
   0853 FF                 2071 	.byte	-1
   0854 27                 2072 	.byte	39
   0855 00                 2073 	.byte	0
   0856 00                 2074 	.byte	0
   0857 C7                 2075 	.byte	-57
   0858 AF                 2076 	.byte	-81
   0859 FF                 2077 	.byte	-1
   085A 27                 2078 	.byte	39
   085B 00                 2079 	.byte	0
   085C 00                 2080 	.byte	0
   085D E8                 2081 	.byte	-24
   085E 0F                 2082 	.byte	15
   085F FF                 2083 	.byte	-1
   0860 12                 2084 	.byte	18
   0861 54                 2085 	.byte	84
   0862 FF                 2086 	.byte	-1
   0863 18                 2087 	.byte	24
   0864 EE                 2088 	.byte	-18
   0865 FF                 2089 	.byte	-1
   0866 EE                 2090 	.byte	-18
   0867 AF                 2091 	.byte	-81
   0868 FF                 2092 	.byte	-1
   0869 E8                 2093 	.byte	-24
   086A 0F                 2094 	.byte	15
   086B 01                 2095 	.byte	1
                           2096 	.globl _height1FallingLeft0
   086C                    2097 _height1FallingLeft0:
   086C FF                 2098 	.byte	-1
   086D 09                 2099 	.byte	9
   086E 2A                 2100 	.byte	42
   086F FF                 2101 	.byte	-1
   0870 18                 2102 	.byte	24
   0871 EE                 2103 	.byte	-18
   0872 FF                 2104 	.byte	-1
   0873 F7                 2105 	.byte	-9
   0874 D9                 2106 	.byte	-39
   0875 FF                 2107 	.byte	-1
   0876 E8                 2108 	.byte	-24
   0877 0F                 2109 	.byte	15
   0878 FF                 2110 	.byte	-1
   0879 27                 2111 	.byte	39
   087A 00                 2112 	.byte	0
   087B 00                 2113 	.byte	0
   087C E2                 2114 	.byte	-30
   087D 2A                 2115 	.byte	42
   087E FF                 2116 	.byte	-1
   087F 27                 2117 	.byte	39
   0880 00                 2118 	.byte	0
   0881 00                 2119 	.byte	0
   0882 F1                 2120 	.byte	-15
   0883 EE                 2121 	.byte	-18
   0884 FF                 2122 	.byte	-1
   0885 27                 2123 	.byte	39
   0886 00                 2124 	.byte	0
   0887 00                 2125 	.byte	0
   0888 D0                 2126 	.byte	-48
   0889 D9                 2127 	.byte	-39
   088A FF                 2128 	.byte	-1
   088B 27                 2129 	.byte	39
   088C 00                 2130 	.byte	0
   088D 00                 2131 	.byte	0
   088E E8                 2132 	.byte	-24
   088F 0F                 2133 	.byte	15
   0890 FF                 2134 	.byte	-1
   0891 09                 2135 	.byte	9
   0892 2A                 2136 	.byte	42
   0893 FF                 2137 	.byte	-1
   0894 18                 2138 	.byte	24
   0895 EE                 2139 	.byte	-18
   0896 FF                 2140 	.byte	-1
   0897 F7                 2141 	.byte	-9
   0898 D9                 2142 	.byte	-39
   0899 FF                 2143 	.byte	-1
   089A E8                 2144 	.byte	-24
   089B 0F                 2145 	.byte	15
   089C 01                 2146 	.byte	1
                           2147 	.globl _height1FallingRight0
   089D                    2148 _height1FallingRight0:
   089D FF                 2149 	.byte	-1
   089E 09                 2150 	.byte	9
   089F 2A                 2151 	.byte	42
   08A0 FF                 2152 	.byte	-1
   08A1 18                 2153 	.byte	24
   08A2 EE                 2154 	.byte	-18
   08A3 FF                 2155 	.byte	-1
   08A4 F7                 2156 	.byte	-9
   08A5 D9                 2157 	.byte	-39
   08A6 FF                 2158 	.byte	-1
   08A7 E8                 2159 	.byte	-24
   08A8 0F                 2160 	.byte	15
   08A9 FF                 2161 	.byte	-1
   08AA 27                 2162 	.byte	39
   08AB 00                 2163 	.byte	0
   08AC 00                 2164 	.byte	0
   08AD E2                 2165 	.byte	-30
   08AE 2A                 2166 	.byte	42
   08AF FF                 2167 	.byte	-1
   08B0 27                 2168 	.byte	39
   08B1 00                 2169 	.byte	0
   08B2 00                 2170 	.byte	0
   08B3 F1                 2171 	.byte	-15
   08B4 EE                 2172 	.byte	-18
   08B5 FF                 2173 	.byte	-1
   08B6 27                 2174 	.byte	39
   08B7 00                 2175 	.byte	0
   08B8 00                 2176 	.byte	0
   08B9 D0                 2177 	.byte	-48
   08BA D9                 2178 	.byte	-39
   08BB FF                 2179 	.byte	-1
   08BC 27                 2180 	.byte	39
   08BD 00                 2181 	.byte	0
   08BE 00                 2182 	.byte	0
   08BF E8                 2183 	.byte	-24
   08C0 0F                 2184 	.byte	15
   08C1 FF                 2185 	.byte	-1
   08C2 09                 2186 	.byte	9
   08C3 2A                 2187 	.byte	42
   08C4 FF                 2188 	.byte	-1
   08C5 18                 2189 	.byte	24
   08C6 EE                 2190 	.byte	-18
   08C7 FF                 2191 	.byte	-1
   08C8 F7                 2192 	.byte	-9
   08C9 D9                 2193 	.byte	-39
   08CA FF                 2194 	.byte	-1
   08CB E8                 2195 	.byte	-24
   08CC 0F                 2196 	.byte	15
   08CD 01                 2197 	.byte	1
                           2198 	.globl _height1FallingBack0
   08CE                    2199 _height1FallingBack0:
   08CE FF                 2200 	.byte	-1
   08CF 09                 2201 	.byte	9
   08D0 2A                 2202 	.byte	42
   08D1 FF                 2203 	.byte	-1
   08D2 18                 2204 	.byte	24
   08D3 EE                 2205 	.byte	-18
   08D4 FF                 2206 	.byte	-1
   08D5 F7                 2207 	.byte	-9
   08D6 D9                 2208 	.byte	-39
   08D7 FF                 2209 	.byte	-1
   08D8 E8                 2210 	.byte	-24
   08D9 0F                 2211 	.byte	15
   08DA FF                 2212 	.byte	-1
   08DB 27                 2213 	.byte	39
   08DC 00                 2214 	.byte	0
   08DD 00                 2215 	.byte	0
   08DE E2                 2216 	.byte	-30
   08DF 2A                 2217 	.byte	42
   08E0 FF                 2218 	.byte	-1
   08E1 27                 2219 	.byte	39
   08E2 00                 2220 	.byte	0
   08E3 00                 2221 	.byte	0
   08E4 F1                 2222 	.byte	-15
   08E5 EE                 2223 	.byte	-18
   08E6 FF                 2224 	.byte	-1
   08E7 27                 2225 	.byte	39
   08E8 00                 2226 	.byte	0
   08E9 00                 2227 	.byte	0
   08EA D0                 2228 	.byte	-48
   08EB D9                 2229 	.byte	-39
   08EC FF                 2230 	.byte	-1
   08ED 27                 2231 	.byte	39
   08EE 00                 2232 	.byte	0
   08EF 00                 2233 	.byte	0
   08F0 E8                 2234 	.byte	-24
   08F1 0F                 2235 	.byte	15
   08F2 FF                 2236 	.byte	-1
   08F3 09                 2237 	.byte	9
   08F4 2A                 2238 	.byte	42
   08F5 FF                 2239 	.byte	-1
   08F6 18                 2240 	.byte	24
   08F7 EE                 2241 	.byte	-18
   08F8 FF                 2242 	.byte	-1
   08F9 F7                 2243 	.byte	-9
   08FA D9                 2244 	.byte	-39
   08FB FF                 2245 	.byte	-1
   08FC E8                 2246 	.byte	-24
   08FD 0F                 2247 	.byte	15
   08FE 01                 2248 	.byte	1
                           2249 	.globl _height1FallingFront0
   08FF                    2250 _height1FallingFront0:
   08FF FF                 2251 	.byte	-1
   0900 09                 2252 	.byte	9
   0901 2A                 2253 	.byte	42
   0902 FF                 2254 	.byte	-1
   0903 18                 2255 	.byte	24
   0904 EE                 2256 	.byte	-18
   0905 FF                 2257 	.byte	-1
   0906 F7                 2258 	.byte	-9
   0907 D9                 2259 	.byte	-39
   0908 FF                 2260 	.byte	-1
   0909 E8                 2261 	.byte	-24
   090A 0F                 2262 	.byte	15
   090B FF                 2263 	.byte	-1
   090C 27                 2264 	.byte	39
   090D 00                 2265 	.byte	0
   090E 00                 2266 	.byte	0
   090F E2                 2267 	.byte	-30
   0910 2A                 2268 	.byte	42
   0911 FF                 2269 	.byte	-1
   0912 27                 2270 	.byte	39
   0913 00                 2271 	.byte	0
   0914 00                 2272 	.byte	0
   0915 F1                 2273 	.byte	-15
   0916 EE                 2274 	.byte	-18
   0917 FF                 2275 	.byte	-1
   0918 27                 2276 	.byte	39
   0919 00                 2277 	.byte	0
   091A 00                 2278 	.byte	0
   091B D0                 2279 	.byte	-48
   091C D9                 2280 	.byte	-39
   091D FF                 2281 	.byte	-1
   091E 27                 2282 	.byte	39
   091F 00                 2283 	.byte	0
   0920 00                 2284 	.byte	0
   0921 E8                 2285 	.byte	-24
   0922 0F                 2286 	.byte	15
   0923 FF                 2287 	.byte	-1
   0924 09                 2288 	.byte	9
   0925 2A                 2289 	.byte	42
   0926 FF                 2290 	.byte	-1
   0927 18                 2291 	.byte	24
   0928 EE                 2292 	.byte	-18
   0929 FF                 2293 	.byte	-1
   092A F7                 2294 	.byte	-9
   092B D9                 2295 	.byte	-39
   092C FF                 2296 	.byte	-1
   092D E8                 2297 	.byte	-24
   092E 0F                 2298 	.byte	15
   092F 01                 2299 	.byte	1
                           2300 	.globl _height2FallingLeft1
   0930                    2301 _height2FallingLeft1:
   0930 FF                 2302 	.byte	-1
   0931 0F                 2303 	.byte	15
   0932 2A                 2304 	.byte	42
   0933 FF                 2305 	.byte	-1
   0934 18                 2306 	.byte	24
   0935 EE                 2307 	.byte	-18
   0936 FF                 2308 	.byte	-1
   0937 F1                 2309 	.byte	-15
   0938 D9                 2310 	.byte	-39
   0939 FF                 2311 	.byte	-1
   093A E8                 2312 	.byte	-24
   093B 0F                 2313 	.byte	15
   093C FF                 2314 	.byte	-1
   093D 4B                 2315 	.byte	75
   093E F7                 2316 	.byte	-9
   093F 00                 2317 	.byte	0
   0940 C4                 2318 	.byte	-60
   0941 33                 2319 	.byte	51
   0942 FF                 2320 	.byte	-1
   0943 4B                 2321 	.byte	75
   0944 F4                 2322 	.byte	-12
   0945 00                 2323 	.byte	0
   0946 CD                 2324 	.byte	-51
   0947 FA                 2325 	.byte	-6
   0948 FF                 2326 	.byte	-1
   0949 4B                 2327 	.byte	75
   094A F4                 2328 	.byte	-12
   094B 00                 2329 	.byte	0
   094C A6                 2330 	.byte	-90
   094D E5                 2331 	.byte	-27
   094E FF                 2332 	.byte	-1
   094F 4B                 2333 	.byte	75
   0950 F4                 2334 	.byte	-12
   0951 00                 2335 	.byte	0
   0952 E8                 2336 	.byte	-24
   0953 12                 2337 	.byte	18
   0954 FF                 2338 	.byte	-1
   0955 0F                 2339 	.byte	15
   0956 27                 2340 	.byte	39
   0957 FF                 2341 	.byte	-1
   0958 18                 2342 	.byte	24
   0959 EE                 2343 	.byte	-18
   095A FF                 2344 	.byte	-1
   095B F1                 2345 	.byte	-15
   095C D9                 2346 	.byte	-39
   095D FF                 2347 	.byte	-1
   095E E8                 2348 	.byte	-24
   095F 12                 2349 	.byte	18
   0960 01                 2350 	.byte	1
                           2351 	.globl _height2RisingRight1
   0961                    2352 _height2RisingRight1:
   0961 00                 2353 	.byte	0
   0962 12                 2354 	.byte	18
   0963 54                 2355 	.byte	84
   0964 FF                 2356 	.byte	-1
   0965 27                 2357 	.byte	39
   0966 0C                 2358 	.byte	12
   0967 FF                 2359 	.byte	-1
   0968 18                 2360 	.byte	24
   0969 EE                 2361 	.byte	-18
   096A FF                 2362 	.byte	-1
   096B D9                 2363 	.byte	-39
   096C F4                 2364 	.byte	-12
   096D FF                 2365 	.byte	-1
   096E E8                 2366 	.byte	-24
   096F 12                 2367 	.byte	18
   0970 FF                 2368 	.byte	-1
   0971 03                 2369 	.byte	3
   0972 AF                 2370 	.byte	-81
   0973 00                 2371 	.byte	0
   0974 24                 2372 	.byte	36
   0975 5D                 2373 	.byte	93
   0976 FF                 2374 	.byte	-1
   0977 03                 2375 	.byte	3
   0978 AF                 2376 	.byte	-81
   0979 00                 2377 	.byte	0
   097A 15                 2378 	.byte	21
   097B 3F                 2379 	.byte	63
   097C FF                 2380 	.byte	-1
   097D 03                 2381 	.byte	3
   097E B2                 2382 	.byte	-78
   097F 00                 2383 	.byte	0
   0980 D6                 2384 	.byte	-42
   0981 42                 2385 	.byte	66
   0982 FF                 2386 	.byte	-1
   0983 03                 2387 	.byte	3
   0984 B2                 2388 	.byte	-78
   0985 00                 2389 	.byte	0
   0986 E8                 2390 	.byte	-24
   0987 0F                 2391 	.byte	15
   0988 FF                 2392 	.byte	-1
   0989 27                 2393 	.byte	39
   098A 0C                 2394 	.byte	12
   098B FF                 2395 	.byte	-1
   098C 18                 2396 	.byte	24
   098D F1                 2397 	.byte	-15
   098E FF                 2398 	.byte	-1
   098F D9                 2399 	.byte	-39
   0990 F4                 2400 	.byte	-12
   0991 FF                 2401 	.byte	-1
   0992 E8                 2402 	.byte	-24
   0993 0F                 2403 	.byte	15
   0994 01                 2404 	.byte	1
                           2405 	.globl _height2FallingRight1
   0995                    2406 _height2FallingRight1:
   0995 00                 2407 	.byte	0
   0996 06                 2408 	.byte	6
   0997 00                 2409 	.byte	0
   0998 FF                 2410 	.byte	-1
   0999 03                 2411 	.byte	3
   099A 2A                 2412 	.byte	42
   099B FF                 2413 	.byte	-1
   099C 18                 2414 	.byte	24
   099D EE                 2415 	.byte	-18
   099E FF                 2416 	.byte	-1
   099F FD                 2417 	.byte	-3
   09A0 D9                 2418 	.byte	-39
   09A1 FF                 2419 	.byte	-1
   09A2 E8                 2420 	.byte	-24
   09A3 0F                 2421 	.byte	15
   09A4 FF                 2422 	.byte	-1
   09A5 4E                 2423 	.byte	78
   09A6 0C                 2424 	.byte	12
   09A7 00                 2425 	.byte	0
   09A8 B5                 2426 	.byte	-75
   09A9 1E                 2427 	.byte	30
   09AA FF                 2428 	.byte	-1
   09AB 51                 2429 	.byte	81
   09AC 0C                 2430 	.byte	12
   09AD 00                 2431 	.byte	0
   09AE C7                 2432 	.byte	-57
   09AF E2                 2433 	.byte	-30
   09B0 FF                 2434 	.byte	-1
   09B1 51                 2435 	.byte	81
   09B2 0C                 2436 	.byte	12
   09B3 00                 2437 	.byte	0
   09B4 AC                 2438 	.byte	-84
   09B5 CD                 2439 	.byte	-51
   09B6 FF                 2440 	.byte	-1
   09B7 4E                 2441 	.byte	78
   09B8 0C                 2442 	.byte	12
   09B9 00                 2443 	.byte	0
   09BA E8                 2444 	.byte	-24
   09BB 0F                 2445 	.byte	15
   09BC FF                 2446 	.byte	-1
   09BD 06                 2447 	.byte	6
   09BE 2A                 2448 	.byte	42
   09BF FF                 2449 	.byte	-1
   09C0 18                 2450 	.byte	24
   09C1 EE                 2451 	.byte	-18
   09C2 FF                 2452 	.byte	-1
   09C3 FA                 2453 	.byte	-6
   09C4 D9                 2454 	.byte	-39
   09C5 FF                 2455 	.byte	-1
   09C6 E8                 2456 	.byte	-24
   09C7 0F                 2457 	.byte	15
   09C8 01                 2458 	.byte	1
                           2459 	.globl _height2RisingLeft1
   09C9                    2460 _height2RisingLeft1:
   09C9 00                 2461 	.byte	0
   09CA 24                 2462 	.byte	36
   09CB F7                 2463 	.byte	-9
   09CC FF                 2464 	.byte	-1
   09CD DC                 2465 	.byte	-36
   09CE 09                 2466 	.byte	9
   09CF FF                 2467 	.byte	-1
   09D0 18                 2468 	.byte	24
   09D1 F1                 2469 	.byte	-15
   09D2 FF                 2470 	.byte	-1
   09D3 24                 2471 	.byte	36
   09D4 F4                 2472 	.byte	-12
   09D5 FF                 2473 	.byte	-1
   09D6 E8                 2474 	.byte	-24
   09D7 12                 2475 	.byte	18
   09D8 FF                 2476 	.byte	-1
   09D9 24                 2477 	.byte	36
   09DA 4E                 2478 	.byte	78
   09DB 00                 2479 	.byte	0
   09DC B8                 2480 	.byte	-72
   09DD BB                 2481 	.byte	-69
   09DE FF                 2482 	.byte	-1
   09DF 27                 2483 	.byte	39
   09E0 51                 2484 	.byte	81
   09E1 00                 2485 	.byte	0
   09E2 F1                 2486 	.byte	-15
   09E3 A0                 2487 	.byte	-96
   09E4 FF                 2488 	.byte	-1
   09E5 27                 2489 	.byte	39
   09E6 4E                 2490 	.byte	78
   09E7 00                 2491 	.byte	0
   09E8 FD                 2492 	.byte	-3
   09E9 A6                 2493 	.byte	-90
   09EA FF                 2494 	.byte	-1
   09EB 24                 2495 	.byte	36
   09EC 4E                 2496 	.byte	78
   09ED 00                 2497 	.byte	0
   09EE E8                 2498 	.byte	-24
   09EF 12                 2499 	.byte	18
   09F0 FF                 2500 	.byte	-1
   09F1 DF                 2501 	.byte	-33
   09F2 0C                 2502 	.byte	12
   09F3 FF                 2503 	.byte	-1
   09F4 18                 2504 	.byte	24
   09F5 EE                 2505 	.byte	-18
   09F6 FF                 2506 	.byte	-1
   09F7 21                 2507 	.byte	33
   09F8 F4                 2508 	.byte	-12
   09F9 FF                 2509 	.byte	-1
   09FA E8                 2510 	.byte	-24
   09FB 12                 2511 	.byte	18
   09FC 01                 2512 	.byte	1
                           2513 	.globl _height2FallingBack1
   09FD                    2514 _height2FallingBack1:
   09FD 00                 2515 	.byte	0
   09FE 06                 2516 	.byte	6
   09FF 00                 2517 	.byte	0
   0A00 FF                 2518 	.byte	-1
   0A01 09                 2519 	.byte	9
   0A02 2A                 2520 	.byte	42
   0A03 FF                 2521 	.byte	-1
   0A04 12                 2522 	.byte	18
   0A05 EE                 2523 	.byte	-18
   0A06 FF                 2524 	.byte	-1
   0A07 F7                 2525 	.byte	-9
   0A08 D9                 2526 	.byte	-39
   0A09 FF                 2527 	.byte	-1
   0A0A EE                 2528 	.byte	-18
   0A0B 0F                 2529 	.byte	15
   0A0C FF                 2530 	.byte	-1
   0A0D 54                 2531 	.byte	84
   0A0E FD                 2532 	.byte	-3
   0A0F 00                 2533 	.byte	0
   0A10 B5                 2534 	.byte	-75
   0A11 2D                 2535 	.byte	45
   0A12 FF                 2536 	.byte	-1
   0A13 54                 2537 	.byte	84
   0A14 FA                 2538 	.byte	-6
   0A15 00                 2539 	.byte	0
   0A16 BE                 2540 	.byte	-66
   0A17 F4                 2541 	.byte	-12
   0A18 FF                 2542 	.byte	-1
   0A19 54                 2543 	.byte	84
   0A1A FA                 2544 	.byte	-6
   0A1B 00                 2545 	.byte	0
   0A1C A3                 2546 	.byte	-93
   0A1D DF                 2547 	.byte	-33
   0A1E FF                 2548 	.byte	-1
   0A1F 54                 2549 	.byte	84
   0A20 FA                 2550 	.byte	-6
   0A21 00                 2551 	.byte	0
   0A22 EE                 2552 	.byte	-18
   0A23 12                 2553 	.byte	18
   0A24 FF                 2554 	.byte	-1
   0A25 09                 2555 	.byte	9
   0A26 27                 2556 	.byte	39
   0A27 FF                 2557 	.byte	-1
   0A28 12                 2558 	.byte	18
   0A29 EE                 2559 	.byte	-18
   0A2A FF                 2560 	.byte	-1
   0A2B F7                 2561 	.byte	-9
   0A2C D9                 2562 	.byte	-39
   0A2D FF                 2563 	.byte	-1
   0A2E EE                 2564 	.byte	-18
   0A2F 12                 2565 	.byte	18
   0A30 01                 2566 	.byte	1
                           2567 	.globl _height2RisingFront1
   0A31                    2568 _height2RisingFront1:
   0A31 00                 2569 	.byte	0
   0A32 1E                 2570 	.byte	30
   0A33 06                 2571 	.byte	6
   0A34 FF                 2572 	.byte	-1
   0A35 09                 2573 	.byte	9
   0A36 2A                 2574 	.byte	42
   0A37 FF                 2575 	.byte	-1
   0A38 E2                 2576 	.byte	-30
   0A39 FA                 2577 	.byte	-6
   0A3A FF                 2578 	.byte	-1
   0A3B F7                 2579 	.byte	-9
   0A3C D6                 2580 	.byte	-42
   0A3D FF                 2581 	.byte	-1
   0A3E 1E                 2582 	.byte	30
   0A3F 06                 2583 	.byte	6
   0A40 FF                 2584 	.byte	-1
   0A41 45                 2585 	.byte	69
   0A42 DF                 2586 	.byte	-33
   0A43 00                 2587 	.byte	0
   0A44 C4                 2588 	.byte	-60
   0A45 4B                 2589 	.byte	75
   0A46 FF                 2590 	.byte	-1
   0A47 45                 2591 	.byte	69
   0A48 DC                 2592 	.byte	-36
   0A49 00                 2593 	.byte	0
   0A4A 9D                 2594 	.byte	-99
   0A4B 1E                 2595 	.byte	30
   0A4C FF                 2596 	.byte	-1
   0A4D 42                 2597 	.byte	66
   0A4E DC                 2598 	.byte	-36
   0A4F 00                 2599 	.byte	0
   0A50 B5                 2600 	.byte	-75
   0A51 FA                 2601 	.byte	-6
   0A52 FF                 2602 	.byte	-1
   0A53 42                 2603 	.byte	66
   0A54 DF                 2604 	.byte	-33
   0A55 00                 2605 	.byte	0
   0A56 21                 2606 	.byte	33
   0A57 06                 2607 	.byte	6
   0A58 FF                 2608 	.byte	-1
   0A59 09                 2609 	.byte	9
   0A5A 27                 2610 	.byte	39
   0A5B FF                 2611 	.byte	-1
   0A5C DF                 2612 	.byte	-33
   0A5D FA                 2613 	.byte	-6
   0A5E FF                 2614 	.byte	-1
   0A5F F7                 2615 	.byte	-9
   0A60 D9                 2616 	.byte	-39
   0A61 FF                 2617 	.byte	-1
   0A62 21                 2618 	.byte	33
   0A63 06                 2619 	.byte	6
   0A64 01                 2620 	.byte	1
                           2621 	.globl _height2FallingFront1
   0A65                    2622 _height2FallingFront1:
   0A65 FF                 2623 	.byte	-1
   0A66 09                 2624 	.byte	9
   0A67 2A                 2625 	.byte	42
   0A68 FF                 2626 	.byte	-1
   0A69 1E                 2627 	.byte	30
   0A6A EE                 2628 	.byte	-18
   0A6B FF                 2629 	.byte	-1
   0A6C F7                 2630 	.byte	-9
   0A6D D9                 2631 	.byte	-39
   0A6E FF                 2632 	.byte	-1
   0A6F E2                 2633 	.byte	-30
   0A70 0F                 2634 	.byte	15
   0A71 FF                 2635 	.byte	-1
   0A72 48                 2636 	.byte	72
   0A73 06                 2637 	.byte	6
   0A74 00                 2638 	.byte	0
   0A75 C1                 2639 	.byte	-63
   0A76 24                 2640 	.byte	36
   0A77 FF                 2641 	.byte	-1
   0A78 48                 2642 	.byte	72
   0A79 06                 2643 	.byte	6
   0A7A 00                 2644 	.byte	0
   0A7B D6                 2645 	.byte	-42
   0A7C E8                 2646 	.byte	-24
   0A7D FF                 2647 	.byte	-1
   0A7E 45                 2648 	.byte	69
   0A7F 06                 2649 	.byte	6
   0A80 00                 2650 	.byte	0
   0A81 B2                 2651 	.byte	-78
   0A82 D3                 2652 	.byte	-45
   0A83 FF                 2653 	.byte	-1
   0A84 45                 2654 	.byte	69
   0A85 06                 2655 	.byte	6
   0A86 00                 2656 	.byte	0
   0A87 E5                 2657 	.byte	-27
   0A88 0F                 2658 	.byte	15
   0A89 FF                 2659 	.byte	-1
   0A8A 09                 2660 	.byte	9
   0A8B 2A                 2661 	.byte	42
   0A8C FF                 2662 	.byte	-1
   0A8D 1B                 2663 	.byte	27
   0A8E EE                 2664 	.byte	-18
   0A8F FF                 2665 	.byte	-1
   0A90 F7                 2666 	.byte	-9
   0A91 D9                 2667 	.byte	-39
   0A92 FF                 2668 	.byte	-1
   0A93 E5                 2669 	.byte	-27
   0A94 0F                 2670 	.byte	15
   0A95 01                 2671 	.byte	1
                           2672 	.globl _height2RisingBack1
   0A96                    2673 _height2RisingBack1:
   0A96 00                 2674 	.byte	0
   0A97 30                 2675 	.byte	48
   0A98 DF                 2676 	.byte	-33
   0A99 FF                 2677 	.byte	-1
   0A9A 09                 2678 	.byte	9
   0A9B 27                 2679 	.byte	39
   0A9C FF                 2680 	.byte	-1
   0A9D 2D                 2681 	.byte	45
   0A9E FA                 2682 	.byte	-6
   0A9F FF                 2683 	.byte	-1
   0AA0 F7                 2684 	.byte	-9
   0AA1 D9                 2685 	.byte	-39
   0AA2 FF                 2686 	.byte	-1
   0AA3 D3                 2687 	.byte	-45
   0AA4 06                 2688 	.byte	6
   0AA5 FF                 2689 	.byte	-1
   0AA6 E5                 2690 	.byte	-27
   0AA7 21                 2691 	.byte	33
   0AA8 00                 2692 	.byte	0
   0AA9 24                 2693 	.byte	36
   0AAA 06                 2694 	.byte	6
   0AAB FF                 2695 	.byte	-1
   0AAC E5                 2696 	.byte	-27
   0AAD 24                 2697 	.byte	36
   0AAE 00                 2698 	.byte	0
   0AAF 48                 2699 	.byte	72
   0AB0 D6                 2700 	.byte	-42
   0AB1 FF                 2701 	.byte	-1
   0AB2 E5                 2702 	.byte	-27
   0AB3 24                 2703 	.byte	36
   0AB4 00                 2704 	.byte	0
   0AB5 12                 2705 	.byte	18
   0AB6 B5                 2706 	.byte	-75
   0AB7 FF                 2707 	.byte	-1
   0AB8 E5                 2708 	.byte	-27
   0AB9 24                 2709 	.byte	36
   0ABA 00                 2710 	.byte	0
   0ABB D3                 2711 	.byte	-45
   0ABC 03                 2712 	.byte	3
   0ABD FF                 2713 	.byte	-1
   0ABE 09                 2714 	.byte	9
   0ABF 2A                 2715 	.byte	42
   0AC0 FF                 2716 	.byte	-1
   0AC1 2D                 2717 	.byte	45
   0AC2 FA                 2718 	.byte	-6
   0AC3 FF                 2719 	.byte	-1
   0AC4 F7                 2720 	.byte	-9
   0AC5 D9                 2721 	.byte	-39
   0AC6 FF                 2722 	.byte	-1
   0AC7 D3                 2723 	.byte	-45
   0AC8 03                 2724 	.byte	3
   0AC9 01                 2725 	.byte	1
                           2726 	.globl _depth2RollingLeft1
   0ACA                    2727 _depth2RollingLeft1:
   0ACA FF                 2728 	.byte	-1
   0ACB 0F                 2729 	.byte	15
   0ACC 2A                 2730 	.byte	42
   0ACD FF                 2731 	.byte	-1
   0ACE 30                 2732 	.byte	48
   0ACF DC                 2733 	.byte	-36
   0AD0 FF                 2734 	.byte	-1
   0AD1 F1                 2735 	.byte	-15
   0AD2 D9                 2736 	.byte	-39
   0AD3 FF                 2737 	.byte	-1
   0AD4 D0                 2738 	.byte	-48
   0AD5 21                 2739 	.byte	33
   0AD6 FF                 2740 	.byte	-1
   0AD7 24                 2741 	.byte	36
   0AD8 FD                 2742 	.byte	-3
   0AD9 00                 2743 	.byte	0
   0ADA EB                 2744 	.byte	-21
   0ADB 2D                 2745 	.byte	45
   0ADC FF                 2746 	.byte	-1
   0ADD 24                 2747 	.byte	36
   0ADE FA                 2748 	.byte	-6
   0ADF 00                 2749 	.byte	0
   0AE0 0C                 2750 	.byte	12
   0AE1 E2                 2751 	.byte	-30
   0AE2 FF                 2752 	.byte	-1
   0AE3 24                 2753 	.byte	36
   0AE4 FA                 2754 	.byte	-6
   0AE5 00                 2755 	.byte	0
   0AE6 CD                 2756 	.byte	-51
   0AE7 DF                 2757 	.byte	-33
   0AE8 FF                 2758 	.byte	-1
   0AE9 24                 2759 	.byte	36
   0AEA FA                 2760 	.byte	-6
   0AEB 00                 2761 	.byte	0
   0AEC D0                 2762 	.byte	-48
   0AED 24                 2763 	.byte	36
   0AEE FF                 2764 	.byte	-1
   0AEF 0F                 2765 	.byte	15
   0AF0 27                 2766 	.byte	39
   0AF1 FF                 2767 	.byte	-1
   0AF2 30                 2768 	.byte	48
   0AF3 DC                 2769 	.byte	-36
   0AF4 FF                 2770 	.byte	-1
   0AF5 F1                 2771 	.byte	-15
   0AF6 D9                 2772 	.byte	-39
   0AF7 FF                 2773 	.byte	-1
   0AF8 D0                 2774 	.byte	-48
   0AF9 24                 2775 	.byte	36
   0AFA 01                 2776 	.byte	1
                           2777 	.globl _depth2RollingRight1
   0AFB                    2778 _depth2RollingRight1:
   0AFB 00                 2779 	.byte	0
   0AFC 06                 2780 	.byte	6
   0AFD 00                 2781 	.byte	0
   0AFE FF                 2782 	.byte	-1
   0AFF 03                 2783 	.byte	3
   0B00 2A                 2784 	.byte	42
   0B01 FF                 2785 	.byte	-1
   0B02 30                 2786 	.byte	48
   0B03 DC                 2787 	.byte	-36
   0B04 FF                 2788 	.byte	-1
   0B05 FD                 2789 	.byte	-3
   0B06 D9                 2790 	.byte	-39
   0B07 FF                 2791 	.byte	-1
   0B08 D0                 2792 	.byte	-48
   0B09 21                 2793 	.byte	33
   0B0A FF                 2794 	.byte	-1
   0B0B 27                 2795 	.byte	39
   0B0C 06                 2796 	.byte	6
   0B0D 00                 2797 	.byte	0
   0B0E DC                 2798 	.byte	-36
   0B0F 24                 2799 	.byte	36
   0B10 FF                 2800 	.byte	-1
   0B11 27                 2801 	.byte	39
   0B12 06                 2802 	.byte	6
   0B13 00                 2803 	.byte	0
   0B14 09                 2804 	.byte	9
   0B15 D6                 2805 	.byte	-42
   0B16 FF                 2806 	.byte	-1
   0B17 27                 2807 	.byte	39
   0B18 06                 2808 	.byte	6
   0B19 00                 2809 	.byte	0
   0B1A D6                 2810 	.byte	-42
   0B1B D3                 2811 	.byte	-45
   0B1C FF                 2812 	.byte	-1
   0B1D 27                 2813 	.byte	39
   0B1E 06                 2814 	.byte	6
   0B1F 00                 2815 	.byte	0
   0B20 D0                 2816 	.byte	-48
   0B21 21                 2817 	.byte	33
   0B22 FF                 2818 	.byte	-1
   0B23 03                 2819 	.byte	3
   0B24 2A                 2820 	.byte	42
   0B25 FF                 2821 	.byte	-1
   0B26 30                 2822 	.byte	48
   0B27 DC                 2823 	.byte	-36
   0B28 FF                 2824 	.byte	-1
   0B29 FD                 2825 	.byte	-3
   0B2A D9                 2826 	.byte	-39
   0B2B FF                 2827 	.byte	-1
   0B2C D0                 2828 	.byte	-48
   0B2D 21                 2829 	.byte	33
   0B2E 01                 2830 	.byte	1
                           2831 	.globl _width2RollingFront1
   0B2F                    2832 _width2RollingFront1:
   0B2F FF                 2833 	.byte	-1
   0B30 12                 2834 	.byte	18
   0B31 54                 2835 	.byte	84
   0B32 FF                 2836 	.byte	-1
   0B33 1E                 2837 	.byte	30
   0B34 EE                 2838 	.byte	-18
   0B35 FF                 2839 	.byte	-1
   0B36 EE                 2840 	.byte	-18
   0B37 AF                 2841 	.byte	-81
   0B38 FF                 2842 	.byte	-1
   0B39 E2                 2843 	.byte	-30
   0B3A 0F                 2844 	.byte	15
   0B3B FF                 2845 	.byte	-1
   0B3C 24                 2846 	.byte	36
   0B3D 03                 2847 	.byte	3
   0B3E 00                 2848 	.byte	0
   0B3F EE                 2849 	.byte	-18
   0B40 51                 2850 	.byte	81
   0B41 FF                 2851 	.byte	-1
   0B42 24                 2852 	.byte	36
   0B43 03                 2853 	.byte	3
   0B44 00                 2854 	.byte	0
   0B45 FA                 2855 	.byte	-6
   0B46 EB                 2856 	.byte	-21
   0B47 FF                 2857 	.byte	-1
   0B48 21                 2858 	.byte	33
   0B49 03                 2859 	.byte	3
   0B4A 00                 2860 	.byte	0
   0B4B CD                 2861 	.byte	-51
   0B4C AC                 2862 	.byte	-84
   0B4D FF                 2863 	.byte	-1
   0B4E 21                 2864 	.byte	33
   0B4F 03                 2865 	.byte	3
   0B50 00                 2866 	.byte	0
   0B51 E5                 2867 	.byte	-27
   0B52 0F                 2868 	.byte	15
   0B53 FF                 2869 	.byte	-1
   0B54 12                 2870 	.byte	18
   0B55 54                 2871 	.byte	84
   0B56 FF                 2872 	.byte	-1
   0B57 1B                 2873 	.byte	27
   0B58 EE                 2874 	.byte	-18
   0B59 FF                 2875 	.byte	-1
   0B5A EE                 2876 	.byte	-18
   0B5B AF                 2877 	.byte	-81
   0B5C FF                 2878 	.byte	-1
   0B5D E5                 2879 	.byte	-27
   0B5E 0F                 2880 	.byte	15
   0B5F 01                 2881 	.byte	1
                           2882 	.globl _width2RollingBack1
   0B60                    2883 _width2RollingBack1:
   0B60 00                 2884 	.byte	0
   0B61 06                 2885 	.byte	6
   0B62 00                 2886 	.byte	0
   0B63 FF                 2887 	.byte	-1
   0B64 12                 2888 	.byte	18
   0B65 54                 2889 	.byte	84
   0B66 FF                 2890 	.byte	-1
   0B67 12                 2891 	.byte	18
   0B68 EE                 2892 	.byte	-18
   0B69 FF                 2893 	.byte	-1
   0B6A EE                 2894 	.byte	-18
   0B6B AF                 2895 	.byte	-81
   0B6C FF                 2896 	.byte	-1
   0B6D EE                 2897 	.byte	-18
   0B6E 0F                 2898 	.byte	15
   0B6F FF                 2899 	.byte	-1
   0B70 2A                 2900 	.byte	42
   0B71 00                 2901 	.byte	0
   0B72 00                 2902 	.byte	0
   0B73 E8                 2903 	.byte	-24
   0B74 54                 2904 	.byte	84
   0B75 FF                 2905 	.byte	-1
   0B76 2A                 2906 	.byte	42
   0B77 FD                 2907 	.byte	-3
   0B78 00                 2908 	.byte	0
   0B79 E8                 2909 	.byte	-24
   0B7A F1                 2910 	.byte	-15
   0B7B FF                 2911 	.byte	-1
   0B7C 2A                 2912 	.byte	42
   0B7D FD                 2913 	.byte	-3
   0B7E 00                 2914 	.byte	0
   0B7F C4                 2915 	.byte	-60
   0B80 B2                 2916 	.byte	-78
   0B81 FF                 2917 	.byte	-1
   0B82 2A                 2918 	.byte	42
   0B83 FD                 2919 	.byte	-3
   0B84 00                 2920 	.byte	0
   0B85 EE                 2921 	.byte	-18
   0B86 12                 2922 	.byte	18
   0B87 FF                 2923 	.byte	-1
   0B88 12                 2924 	.byte	18
   0B89 51                 2925 	.byte	81
   0B8A FF                 2926 	.byte	-1
   0B8B 12                 2927 	.byte	18
   0B8C EE                 2928 	.byte	-18
   0B8D FF                 2929 	.byte	-1
   0B8E EE                 2930 	.byte	-18
   0B8F AF                 2931 	.byte	-81
   0B90 FF                 2932 	.byte	-1
   0B91 EE                 2933 	.byte	-18
   0B92 12                 2934 	.byte	18
   0B93 01                 2935 	.byte	1
                           2936 	.globl _height1FallingLeft1
   0B94                    2937 _height1FallingLeft1:
   0B94 FF                 2938 	.byte	-1
   0B95 0F                 2939 	.byte	15
   0B96 2A                 2940 	.byte	42
   0B97 FF                 2941 	.byte	-1
   0B98 18                 2942 	.byte	24
   0B99 EE                 2943 	.byte	-18
   0B9A FF                 2944 	.byte	-1
   0B9B F1                 2945 	.byte	-15
   0B9C D9                 2946 	.byte	-39
   0B9D FF                 2947 	.byte	-1
   0B9E E8                 2948 	.byte	-24
   0B9F 0F                 2949 	.byte	15
   0BA0 FF                 2950 	.byte	-1
   0BA1 24                 2951 	.byte	36
   0BA2 FD                 2952 	.byte	-3
   0BA3 00                 2953 	.byte	0
   0BA4 EB                 2954 	.byte	-21
   0BA5 2D                 2955 	.byte	45
   0BA6 FF                 2956 	.byte	-1
   0BA7 24                 2957 	.byte	36
   0BA8 FA                 2958 	.byte	-6
   0BA9 00                 2959 	.byte	0
   0BAA F4                 2960 	.byte	-12
   0BAB F4                 2961 	.byte	-12
   0BAC FF                 2962 	.byte	-1
   0BAD 24                 2963 	.byte	36
   0BAE FA                 2964 	.byte	-6
   0BAF 00                 2965 	.byte	0
   0BB0 CD                 2966 	.byte	-51
   0BB1 DF                 2967 	.byte	-33
   0BB2 FF                 2968 	.byte	-1
   0BB3 24                 2969 	.byte	36
   0BB4 FA                 2970 	.byte	-6
   0BB5 00                 2971 	.byte	0
   0BB6 E8                 2972 	.byte	-24
   0BB7 12                 2973 	.byte	18
   0BB8 FF                 2974 	.byte	-1
   0BB9 0F                 2975 	.byte	15
   0BBA 27                 2976 	.byte	39
   0BBB FF                 2977 	.byte	-1
   0BBC 18                 2978 	.byte	24
   0BBD EE                 2979 	.byte	-18
   0BBE FF                 2980 	.byte	-1
   0BBF F1                 2981 	.byte	-15
   0BC0 D9                 2982 	.byte	-39
   0BC1 FF                 2983 	.byte	-1
   0BC2 E8                 2984 	.byte	-24
   0BC3 12                 2985 	.byte	18
   0BC4 01                 2986 	.byte	1
                           2987 	.globl _height1FallingRight1
   0BC5                    2988 _height1FallingRight1:
   0BC5 00                 2989 	.byte	0
   0BC6 06                 2990 	.byte	6
   0BC7 00                 2991 	.byte	0
   0BC8 FF                 2992 	.byte	-1
   0BC9 03                 2993 	.byte	3
   0BCA 2A                 2994 	.byte	42
   0BCB FF                 2995 	.byte	-1
   0BCC 18                 2996 	.byte	24
   0BCD EE                 2997 	.byte	-18
   0BCE FF                 2998 	.byte	-1
   0BCF FD                 2999 	.byte	-3
   0BD0 D9                 3000 	.byte	-39
   0BD1 FF                 3001 	.byte	-1
   0BD2 E8                 3002 	.byte	-24
   0BD3 0F                 3003 	.byte	15
   0BD4 FF                 3004 	.byte	-1
   0BD5 27                 3005 	.byte	39
   0BD6 06                 3006 	.byte	6
   0BD7 00                 3007 	.byte	0
   0BD8 DC                 3008 	.byte	-36
   0BD9 24                 3009 	.byte	36
   0BDA FF                 3010 	.byte	-1
   0BDB 27                 3011 	.byte	39
   0BDC 06                 3012 	.byte	6
   0BDD 00                 3013 	.byte	0
   0BDE F1                 3014 	.byte	-15
   0BDF E8                 3015 	.byte	-24
   0BE0 FF                 3016 	.byte	-1
   0BE1 27                 3017 	.byte	39
   0BE2 06                 3018 	.byte	6
   0BE3 00                 3019 	.byte	0
   0BE4 D6                 3020 	.byte	-42
   0BE5 D3                 3021 	.byte	-45
   0BE6 FF                 3022 	.byte	-1
   0BE7 27                 3023 	.byte	39
   0BE8 06                 3024 	.byte	6
   0BE9 00                 3025 	.byte	0
   0BEA E8                 3026 	.byte	-24
   0BEB 0F                 3027 	.byte	15
   0BEC FF                 3028 	.byte	-1
   0BED 03                 3029 	.byte	3
   0BEE 2A                 3030 	.byte	42
   0BEF FF                 3031 	.byte	-1
   0BF0 18                 3032 	.byte	24
   0BF1 EE                 3033 	.byte	-18
   0BF2 FF                 3034 	.byte	-1
   0BF3 FD                 3035 	.byte	-3
   0BF4 D9                 3036 	.byte	-39
   0BF5 FF                 3037 	.byte	-1
   0BF6 E8                 3038 	.byte	-24
   0BF7 0F                 3039 	.byte	15
   0BF8 01                 3040 	.byte	1
                           3041 	.globl _height1FallingBack1
   0BF9                    3042 _height1FallingBack1:
   0BF9 00                 3043 	.byte	0
   0BFA 06                 3044 	.byte	6
   0BFB 00                 3045 	.byte	0
   0BFC FF                 3046 	.byte	-1
   0BFD 09                 3047 	.byte	9
   0BFE 2A                 3048 	.byte	42
   0BFF FF                 3049 	.byte	-1
   0C00 12                 3050 	.byte	18
   0C01 EE                 3051 	.byte	-18
   0C02 FF                 3052 	.byte	-1
   0C03 F7                 3053 	.byte	-9
   0C04 D9                 3054 	.byte	-39
   0C05 FF                 3055 	.byte	-1
   0C06 EE                 3056 	.byte	-18
   0C07 0F                 3057 	.byte	15
   0C08 FF                 3058 	.byte	-1
   0C09 2A                 3059 	.byte	42
   0C0A 00                 3060 	.byte	0
   0C0B 00                 3061 	.byte	0
   0C0C DF                 3062 	.byte	-33
   0C0D 2A                 3063 	.byte	42
   0C0E FF                 3064 	.byte	-1
   0C0F 2A                 3065 	.byte	42
   0C10 FD                 3066 	.byte	-3
   0C11 00                 3067 	.byte	0
   0C12 E8                 3068 	.byte	-24
   0C13 F1                 3069 	.byte	-15
   0C14 FF                 3070 	.byte	-1
   0C15 2A                 3071 	.byte	42
   0C16 FD                 3072 	.byte	-3
   0C17 00                 3073 	.byte	0
   0C18 CD                 3074 	.byte	-51
   0C19 DC                 3075 	.byte	-36
   0C1A FF                 3076 	.byte	-1
   0C1B 2A                 3077 	.byte	42
   0C1C FD                 3078 	.byte	-3
   0C1D 00                 3079 	.byte	0
   0C1E EE                 3080 	.byte	-18
   0C1F 12                 3081 	.byte	18
   0C20 FF                 3082 	.byte	-1
   0C21 09                 3083 	.byte	9
   0C22 27                 3084 	.byte	39
   0C23 FF                 3085 	.byte	-1
   0C24 12                 3086 	.byte	18
   0C25 EE                 3087 	.byte	-18
   0C26 FF                 3088 	.byte	-1
   0C27 F7                 3089 	.byte	-9
   0C28 D9                 3090 	.byte	-39
   0C29 FF                 3091 	.byte	-1
   0C2A EE                 3092 	.byte	-18
   0C2B 12                 3093 	.byte	18
   0C2C 01                 3094 	.byte	1
                           3095 	.globl _height1FallingFront1
   0C2D                    3096 _height1FallingFront1:
   0C2D FF                 3097 	.byte	-1
   0C2E 09                 3098 	.byte	9
   0C2F 2A                 3099 	.byte	42
   0C30 FF                 3100 	.byte	-1
   0C31 1E                 3101 	.byte	30
   0C32 EE                 3102 	.byte	-18
   0C33 FF                 3103 	.byte	-1
   0C34 F7                 3104 	.byte	-9
   0C35 D9                 3105 	.byte	-39
   0C36 FF                 3106 	.byte	-1
   0C37 E2                 3107 	.byte	-30
   0C38 0F                 3108 	.byte	15
   0C39 FF                 3109 	.byte	-1
   0C3A 24                 3110 	.byte	36
   0C3B 03                 3111 	.byte	3
   0C3C 00                 3112 	.byte	0
   0C3D E5                 3113 	.byte	-27
   0C3E 27                 3114 	.byte	39
   0C3F FF                 3115 	.byte	-1
   0C40 24                 3116 	.byte	36
   0C41 03                 3117 	.byte	3
   0C42 00                 3118 	.byte	0
   0C43 FA                 3119 	.byte	-6
   0C44 EB                 3120 	.byte	-21
   0C45 FF                 3121 	.byte	-1
   0C46 21                 3122 	.byte	33
   0C47 03                 3123 	.byte	3
   0C48 00                 3124 	.byte	0
   0C49 D6                 3125 	.byte	-42
   0C4A D6                 3126 	.byte	-42
   0C4B FF                 3127 	.byte	-1
   0C4C 21                 3128 	.byte	33
   0C4D 03                 3129 	.byte	3
   0C4E 00                 3130 	.byte	0
   0C4F E5                 3131 	.byte	-27
   0C50 0F                 3132 	.byte	15
   0C51 FF                 3133 	.byte	-1
   0C52 09                 3134 	.byte	9
   0C53 2A                 3135 	.byte	42
   0C54 FF                 3136 	.byte	-1
   0C55 1B                 3137 	.byte	27
   0C56 EE                 3138 	.byte	-18
   0C57 FF                 3139 	.byte	-1
   0C58 F7                 3140 	.byte	-9
   0C59 D9                 3141 	.byte	-39
   0C5A FF                 3142 	.byte	-1
   0C5B E5                 3143 	.byte	-27
   0C5C 0F                 3144 	.byte	15
   0C5D 01                 3145 	.byte	1
                           3146 	.globl _height2FallingLeft2
   0C5E                    3147 _height2FallingLeft2:
   0C5E FF                 3148 	.byte	-1
   0C5F 12                 3149 	.byte	18
   0C60 2A                 3150 	.byte	42
   0C61 FF                 3151 	.byte	-1
   0C62 18                 3152 	.byte	24
   0C63 EE                 3153 	.byte	-18
   0C64 FF                 3154 	.byte	-1
   0C65 EE                 3155 	.byte	-18
   0C66 D9                 3156 	.byte	-39
   0C67 FF                 3157 	.byte	-1
   0C68 E8                 3158 	.byte	-24
   0C69 0F                 3159 	.byte	15
   0C6A FF                 3160 	.byte	-1
   0C6B 48                 3161 	.byte	72
   0C6C EE                 3162 	.byte	-18
   0C6D 00                 3163 	.byte	0
   0C6E CA                 3164 	.byte	-54
   0C6F 3C                 3165 	.byte	60
   0C70 FF                 3166 	.byte	-1
   0C71 48                 3167 	.byte	72
   0C72 E8                 3168 	.byte	-24
   0C73 00                 3169 	.byte	0
   0C74 D0                 3170 	.byte	-48
   0C75 06                 3171 	.byte	6
   0C76 FF                 3172 	.byte	-1
   0C77 48                 3173 	.byte	72
   0C78 E8                 3174 	.byte	-24
   0C79 00                 3175 	.byte	0
   0C7A A6                 3176 	.byte	-90
   0C7B F1                 3177 	.byte	-15
   0C7C FF                 3178 	.byte	-1
   0C7D 48                 3179 	.byte	72
   0C7E EB                 3180 	.byte	-21
   0C7F 00                 3181 	.byte	0
   0C80 E8                 3182 	.byte	-24
   0C81 12                 3183 	.byte	18
   0C82 FF                 3184 	.byte	-1
   0C83 12                 3185 	.byte	18
   0C84 24                 3186 	.byte	36
   0C85 FF                 3187 	.byte	-1
   0C86 18                 3188 	.byte	24
   0C87 EE                 3189 	.byte	-18
   0C88 FF                 3190 	.byte	-1
   0C89 EE                 3191 	.byte	-18
   0C8A DC                 3192 	.byte	-36
   0C8B FF                 3193 	.byte	-1
   0C8C E8                 3194 	.byte	-24
   0C8D 12                 3195 	.byte	18
   0C8E 01                 3196 	.byte	1
                           3197 	.globl _height2RisingRight2
   0C8F                    3198 _height2RisingRight2:
   0C8F 00                 3199 	.byte	0
   0C90 12                 3200 	.byte	18
   0C91 54                 3201 	.byte	84
   0C92 FF                 3202 	.byte	-1
   0C93 27                 3203 	.byte	39
   0C94 0F                 3204 	.byte	15
   0C95 FF                 3205 	.byte	-1
   0C96 18                 3206 	.byte	24
   0C97 EE                 3207 	.byte	-18
   0C98 FF                 3208 	.byte	-1
   0C99 D9                 3209 	.byte	-39
   0C9A F1                 3210 	.byte	-15
   0C9B FF                 3211 	.byte	-1
   0C9C E8                 3212 	.byte	-24
   0C9D 12                 3213 	.byte	18
   0C9E FF                 3214 	.byte	-1
   0C9F 0C                 3215 	.byte	12
   0CA0 B2                 3216 	.byte	-78
   0CA1 00                 3217 	.byte	0
   0CA2 1B                 3218 	.byte	27
   0CA3 5D                 3219 	.byte	93
   0CA4 FF                 3220 	.byte	-1
   0CA5 0F                 3221 	.byte	15
   0CA6 B2                 3222 	.byte	-78
   0CA7 00                 3223 	.byte	0
   0CA8 09                 3224 	.byte	9
   0CA9 3C                 3225 	.byte	60
   0CAA FF                 3226 	.byte	-1
   0CAB 0F                 3227 	.byte	15
   0CAC B2                 3228 	.byte	-78
   0CAD 00                 3229 	.byte	0
   0CAE CA                 3230 	.byte	-54
   0CAF 3F                 3231 	.byte	63
   0CB0 FF                 3232 	.byte	-1
   0CB1 0C                 3233 	.byte	12
   0CB2 B5                 3234 	.byte	-75
   0CB3 00                 3235 	.byte	0
   0CB4 E8                 3236 	.byte	-24
   0CB5 0F                 3237 	.byte	15
   0CB6 FF                 3238 	.byte	-1
   0CB7 2A                 3239 	.byte	42
   0CB8 0F                 3240 	.byte	15
   0CB9 FF                 3241 	.byte	-1
   0CBA 18                 3242 	.byte	24
   0CBB EE                 3243 	.byte	-18
   0CBC FF                 3244 	.byte	-1
   0CBD D6                 3245 	.byte	-42
   0CBE F4                 3246 	.byte	-12
   0CBF FF                 3247 	.byte	-1
   0CC0 E8                 3248 	.byte	-24
   0CC1 0F                 3249 	.byte	15
   0CC2 01                 3250 	.byte	1
                           3251 	.globl _height2FallingRight2
   0CC3                    3252 _height2FallingRight2:
   0CC3 00                 3253 	.byte	0
   0CC4 09                 3254 	.byte	9
   0CC5 00                 3255 	.byte	0
   0CC6 FF                 3256 	.byte	-1
   0CC7 00                 3257 	.byte	0
   0CC8 2A                 3258 	.byte	42
   0CC9 FF                 3259 	.byte	-1
   0CCA 18                 3260 	.byte	24
   0CCB EE                 3261 	.byte	-18
   0CCC FF                 3262 	.byte	-1
   0CCD 00                 3263 	.byte	0
   0CCE D9                 3264 	.byte	-39
   0CCF FF                 3265 	.byte	-1
   0CD0 E8                 3266 	.byte	-24
   0CD1 0F                 3267 	.byte	15
   0CD2 FF                 3268 	.byte	-1
   0CD3 51                 3269 	.byte	81
   0CD4 18                 3270 	.byte	24
   0CD5 00                 3271 	.byte	0
   0CD6 AF                 3272 	.byte	-81
   0CD7 12                 3273 	.byte	18
   0CD8 FF                 3274 	.byte	-1
   0CD9 51                 3275 	.byte	81
   0CDA 15                 3276 	.byte	21
   0CDB 00                 3277 	.byte	0
   0CDC C7                 3278 	.byte	-57
   0CDD D9                 3279 	.byte	-39
   0CDE FF                 3280 	.byte	-1
   0CDF 51                 3281 	.byte	81
   0CE0 15                 3282 	.byte	21
   0CE1 00                 3283 	.byte	0
   0CE2 AF                 3284 	.byte	-81
   0CE3 C4                 3285 	.byte	-60
   0CE4 FF                 3286 	.byte	-1
   0CE5 51                 3287 	.byte	81
   0CE6 15                 3288 	.byte	21
   0CE7 00                 3289 	.byte	0
   0CE8 E8                 3290 	.byte	-24
   0CE9 12                 3291 	.byte	18
   0CEA FF                 3292 	.byte	-1
   0CEB 00                 3293 	.byte	0
   0CEC 27                 3294 	.byte	39
   0CED FF                 3295 	.byte	-1
   0CEE 18                 3296 	.byte	24
   0CEF EE                 3297 	.byte	-18
   0CF0 FF                 3298 	.byte	-1
   0CF1 00                 3299 	.byte	0
   0CF2 D9                 3300 	.byte	-39
   0CF3 FF                 3301 	.byte	-1
   0CF4 E8                 3302 	.byte	-24
   0CF5 12                 3303 	.byte	18
   0CF6 01                 3304 	.byte	1
                           3305 	.globl _height2RisingLeft2
   0CF7                    3306 _height2RisingLeft2:
   0CF7 00                 3307 	.byte	0
   0CF8 21                 3308 	.byte	33
   0CF9 F4                 3309 	.byte	-12
   0CFA FF                 3310 	.byte	-1
   0CFB DF                 3311 	.byte	-33
   0CFC 0C                 3312 	.byte	12
   0CFD FF                 3313 	.byte	-1
   0CFE 18                 3314 	.byte	24
   0CFF F1                 3315 	.byte	-15
   0D00 FF                 3316 	.byte	-1
   0D01 21                 3317 	.byte	33
   0D02 F1                 3318 	.byte	-15
   0D03 FF                 3319 	.byte	-1
   0D04 E8                 3320 	.byte	-24
   0D05 12                 3321 	.byte	18
   0D06 FF                 3322 	.byte	-1
   0D07 2D                 3323 	.byte	45
   0D08 4B                 3324 	.byte	75
   0D09 00                 3325 	.byte	0
   0D0A B2                 3326 	.byte	-78
   0D0B C1                 3327 	.byte	-63
   0D0C FF                 3328 	.byte	-1
   0D0D 2D                 3329 	.byte	45
   0D0E 4E                 3330 	.byte	78
   0D0F 00                 3331 	.byte	0
   0D10 EB                 3332 	.byte	-21
   0D11 A3                 3333 	.byte	-93
   0D12 FF                 3334 	.byte	-1
   0D13 2D                 3335 	.byte	45
   0D14 4B                 3336 	.byte	75
   0D15 00                 3337 	.byte	0
   0D16 F4                 3338 	.byte	-12
   0D17 A6                 3339 	.byte	-90
   0D18 FF                 3340 	.byte	-1
   0D19 2D                 3341 	.byte	45
   0D1A 4B                 3342 	.byte	75
   0D1B 00                 3343 	.byte	0
   0D1C E8                 3344 	.byte	-24
   0D1D 12                 3345 	.byte	18
   0D1E FF                 3346 	.byte	-1
   0D1F DF                 3347 	.byte	-33
   0D20 0F                 3348 	.byte	15
   0D21 FF                 3349 	.byte	-1
   0D22 18                 3350 	.byte	24
   0D23 EE                 3351 	.byte	-18
   0D24 FF                 3352 	.byte	-1
   0D25 21                 3353 	.byte	33
   0D26 F1                 3354 	.byte	-15
   0D27 FF                 3355 	.byte	-1
   0D28 E8                 3356 	.byte	-24
   0D29 12                 3357 	.byte	18
   0D2A 01                 3358 	.byte	1
                           3359 	.globl _height2FallingBack2
   0D2B                    3360 _height2FallingBack2:
   0D2B 00                 3361 	.byte	0
   0D2C 0C                 3362 	.byte	12
   0D2D 00                 3363 	.byte	0
   0D2E FF                 3364 	.byte	-1
   0D2F 09                 3365 	.byte	9
   0D30 2A                 3366 	.byte	42
   0D31 FF                 3367 	.byte	-1
   0D32 0C                 3368 	.byte	12
   0D33 EE                 3369 	.byte	-18
   0D34 FF                 3370 	.byte	-1
   0D35 F7                 3371 	.byte	-9
   0D36 D9                 3372 	.byte	-39
   0D37 FF                 3373 	.byte	-1
   0D38 F4                 3374 	.byte	-12
   0D39 0F                 3375 	.byte	15
   0D3A FF                 3376 	.byte	-1
   0D3B 57                 3377 	.byte	87
   0D3C FA                 3378 	.byte	-6
   0D3D 00                 3379 	.byte	0
   0D3E B2                 3380 	.byte	-78
   0D3F 30                 3381 	.byte	48
   0D40 FF                 3382 	.byte	-1
   0D41 57                 3383 	.byte	87
   0D42 F7                 3384 	.byte	-9
   0D43 00                 3385 	.byte	0
   0D44 B5                 3386 	.byte	-75
   0D45 F7                 3387 	.byte	-9
   0D46 FF                 3388 	.byte	-1
   0D47 57                 3389 	.byte	87
   0D48 F7                 3390 	.byte	-9
   0D49 00                 3391 	.byte	0
   0D4A A0                 3392 	.byte	-96
   0D4B E2                 3393 	.byte	-30
   0D4C FF                 3394 	.byte	-1
   0D4D 57                 3395 	.byte	87
   0D4E F7                 3396 	.byte	-9
   0D4F 00                 3397 	.byte	0
   0D50 F4                 3398 	.byte	-12
   0D51 12                 3399 	.byte	18
   0D52 FF                 3400 	.byte	-1
   0D53 09                 3401 	.byte	9
   0D54 27                 3402 	.byte	39
   0D55 FF                 3403 	.byte	-1
   0D56 0C                 3404 	.byte	12
   0D57 EE                 3405 	.byte	-18
   0D58 FF                 3406 	.byte	-1
   0D59 F7                 3407 	.byte	-9
   0D5A D9                 3408 	.byte	-39
   0D5B FF                 3409 	.byte	-1
   0D5C F4                 3410 	.byte	-12
   0D5D 12                 3411 	.byte	18
   0D5E 01                 3412 	.byte	1
                           3413 	.globl _height2RisingFront2
   0D5F                    3414 _height2RisingFront2:
   0D5F 00                 3415 	.byte	0
   0D60 1B                 3416 	.byte	27
   0D61 06                 3417 	.byte	6
   0D62 FF                 3418 	.byte	-1
   0D63 09                 3419 	.byte	9
   0D64 2A                 3420 	.byte	42
   0D65 FF                 3421 	.byte	-1
   0D66 E5                 3422 	.byte	-27
   0D67 FA                 3423 	.byte	-6
   0D68 FF                 3424 	.byte	-1
   0D69 F7                 3425 	.byte	-9
   0D6A D6                 3426 	.byte	-42
   0D6B FF                 3427 	.byte	-1
   0D6C 1B                 3428 	.byte	27
   0D6D 06                 3429 	.byte	6
   0D6E FF                 3430 	.byte	-1
   0D6F 4B                 3431 	.byte	75
   0D70 E2                 3432 	.byte	-30
   0D71 00                 3433 	.byte	0
   0D72 BE                 3434 	.byte	-66
   0D73 48                 3435 	.byte	72
   0D74 FF                 3436 	.byte	-1
   0D75 4B                 3437 	.byte	75
   0D76 DF                 3438 	.byte	-33
   0D77 00                 3439 	.byte	0
   0D78 9A                 3440 	.byte	-102
   0D79 1B                 3441 	.byte	27
   0D7A FF                 3442 	.byte	-1
   0D7B 4B                 3443 	.byte	75
   0D7C DF                 3444 	.byte	-33
   0D7D 00                 3445 	.byte	0
   0D7E AC                 3446 	.byte	-84
   0D7F F7                 3447 	.byte	-9
   0D80 FF                 3448 	.byte	-1
   0D81 4B                 3449 	.byte	75
   0D82 E2                 3450 	.byte	-30
   0D83 00                 3451 	.byte	0
   0D84 1B                 3452 	.byte	27
   0D85 06                 3453 	.byte	6
   0D86 FF                 3454 	.byte	-1
   0D87 09                 3455 	.byte	9
   0D88 27                 3456 	.byte	39
   0D89 FF                 3457 	.byte	-1
   0D8A E5                 3458 	.byte	-27
   0D8B FA                 3459 	.byte	-6
   0D8C FF                 3460 	.byte	-1
   0D8D F7                 3461 	.byte	-9
   0D8E D9                 3462 	.byte	-39
   0D8F FF                 3463 	.byte	-1
   0D90 1B                 3464 	.byte	27
   0D91 06                 3465 	.byte	6
   0D92 01                 3466 	.byte	1
                           3467 	.globl _height2FallingFront2
   0D93                    3468 _height2FallingFront2:
   0D93 FF                 3469 	.byte	-1
   0D94 09                 3470 	.byte	9
   0D95 2A                 3471 	.byte	42
   0D96 FF                 3472 	.byte	-1
   0D97 21                 3473 	.byte	33
   0D98 EE                 3474 	.byte	-18
   0D99 FF                 3475 	.byte	-1
   0D9A F7                 3476 	.byte	-9
   0D9B D9                 3477 	.byte	-39
   0D9C FF                 3478 	.byte	-1
   0D9D DF                 3479 	.byte	-33
   0D9E 0F                 3480 	.byte	15
   0D9F FF                 3481 	.byte	-1
   0DA0 3F                 3482 	.byte	63
   0DA1 09                 3483 	.byte	9
   0DA2 00                 3484 	.byte	0
   0DA3 CA                 3485 	.byte	-54
   0DA4 21                 3486 	.byte	33
   0DA5 FF                 3487 	.byte	-1
   0DA6 3F                 3488 	.byte	63
   0DA7 09                 3489 	.byte	9
   0DA8 00                 3490 	.byte	0
   0DA9 E2                 3491 	.byte	-30
   0DAA E5                 3492 	.byte	-27
   0DAB FF                 3493 	.byte	-1
   0DAC 3F                 3494 	.byte	63
   0DAD 09                 3495 	.byte	9
   0DAE 00                 3496 	.byte	0
   0DAF B8                 3497 	.byte	-72
   0DB0 D0                 3498 	.byte	-48
   0DB1 FF                 3499 	.byte	-1
   0DB2 3F                 3500 	.byte	63
   0DB3 09                 3501 	.byte	9
   0DB4 00                 3502 	.byte	0
   0DB5 DF                 3503 	.byte	-33
   0DB6 0F                 3504 	.byte	15
   0DB7 FF                 3505 	.byte	-1
   0DB8 09                 3506 	.byte	9
   0DB9 2A                 3507 	.byte	42
   0DBA FF                 3508 	.byte	-1
   0DBB 21                 3509 	.byte	33
   0DBC EE                 3510 	.byte	-18
   0DBD FF                 3511 	.byte	-1
   0DBE F7                 3512 	.byte	-9
   0DBF D9                 3513 	.byte	-39
   0DC0 FF                 3514 	.byte	-1
   0DC1 DF                 3515 	.byte	-33
   0DC2 0F                 3516 	.byte	15
   0DC3 01                 3517 	.byte	1
                           3518 	.globl _height2RisingBack2
   0DC4                    3519 _height2RisingBack2:
   0DC4 00                 3520 	.byte	0
   0DC5 30                 3521 	.byte	48
   0DC6 DF                 3522 	.byte	-33
   0DC7 FF                 3523 	.byte	-1
   0DC8 09                 3524 	.byte	9
   0DC9 27                 3525 	.byte	39
   0DCA FF                 3526 	.byte	-1
   0DCB 2D                 3527 	.byte	45
   0DCC FA                 3528 	.byte	-6
   0DCD FF                 3529 	.byte	-1
   0DCE F7                 3530 	.byte	-9
   0DCF D9                 3531 	.byte	-39
   0DD0 FF                 3532 	.byte	-1
   0DD1 D3                 3533 	.byte	-45
   0DD2 06                 3534 	.byte	6
   0DD3 FF                 3535 	.byte	-1
   0DD4 F1                 3536 	.byte	-15
   0DD5 21                 3537 	.byte	33
   0DD6 00                 3538 	.byte	0
   0DD7 18                 3539 	.byte	24
   0DD8 06                 3540 	.byte	6
   0DD9 FF                 3541 	.byte	-1
   0DDA F1                 3542 	.byte	-15
   0DDB 21                 3543 	.byte	33
   0DDC 00                 3544 	.byte	0
   0DDD 3C                 3545 	.byte	60
   0DDE D9                 3546 	.byte	-39
   0DDF FF                 3547 	.byte	-1
   0DE0 F1                 3548 	.byte	-15
   0DE1 21                 3549 	.byte	33
   0DE2 00                 3550 	.byte	0
   0DE3 06                 3551 	.byte	6
   0DE4 B8                 3552 	.byte	-72
   0DE5 FF                 3553 	.byte	-1
   0DE6 F1                 3554 	.byte	-15
   0DE7 21                 3555 	.byte	33
   0DE8 00                 3556 	.byte	0
   0DE9 D3                 3557 	.byte	-45
   0DEA 06                 3558 	.byte	6
   0DEB FF                 3559 	.byte	-1
   0DEC 09                 3560 	.byte	9
   0DED 27                 3561 	.byte	39
   0DEE FF                 3562 	.byte	-1
   0DEF 2D                 3563 	.byte	45
   0DF0 FA                 3564 	.byte	-6
   0DF1 FF                 3565 	.byte	-1
   0DF2 F7                 3566 	.byte	-9
   0DF3 D9                 3567 	.byte	-39
   0DF4 FF                 3568 	.byte	-1
   0DF5 D3                 3569 	.byte	-45
   0DF6 06                 3570 	.byte	6
   0DF7 01                 3571 	.byte	1
                           3572 	.globl _depth2RollingLeft2
   0DF8                    3573 _depth2RollingLeft2:
   0DF8 FF                 3574 	.byte	-1
   0DF9 12                 3575 	.byte	18
   0DFA 2A                 3576 	.byte	42
   0DFB FF                 3577 	.byte	-1
   0DFC 30                 3578 	.byte	48
   0DFD DC                 3579 	.byte	-36
   0DFE FF                 3580 	.byte	-1
   0DFF EE                 3581 	.byte	-18
   0E00 D9                 3582 	.byte	-39
   0E01 FF                 3583 	.byte	-1
   0E02 D0                 3584 	.byte	-48
   0E03 21                 3585 	.byte	33
   0E04 FF                 3586 	.byte	-1
   0E05 24                 3587 	.byte	36
   0E06 F7                 3588 	.byte	-9
   0E07 00                 3589 	.byte	0
   0E08 EE                 3590 	.byte	-18
   0E09 33                 3591 	.byte	51
   0E0A FF                 3592 	.byte	-1
   0E0B 24                 3593 	.byte	36
   0E0C F4                 3594 	.byte	-12
   0E0D 00                 3595 	.byte	0
   0E0E 0C                 3596 	.byte	12
   0E0F E8                 3597 	.byte	-24
   0E10 FF                 3598 	.byte	-1
   0E11 24                 3599 	.byte	36
   0E12 F7                 3600 	.byte	-9
   0E13 00                 3601 	.byte	0
   0E14 CA                 3602 	.byte	-54
   0E15 E2                 3603 	.byte	-30
   0E16 FF                 3604 	.byte	-1
   0E17 24                 3605 	.byte	36
   0E18 F4                 3606 	.byte	-12
   0E19 00                 3607 	.byte	0
   0E1A D0                 3608 	.byte	-48
   0E1B 24                 3609 	.byte	36
   0E1C FF                 3610 	.byte	-1
   0E1D 12                 3611 	.byte	18
   0E1E 27                 3612 	.byte	39
   0E1F FF                 3613 	.byte	-1
   0E20 30                 3614 	.byte	48
   0E21 DF                 3615 	.byte	-33
   0E22 FF                 3616 	.byte	-1
   0E23 EE                 3617 	.byte	-18
   0E24 D6                 3618 	.byte	-42
   0E25 FF                 3619 	.byte	-1
   0E26 D0                 3620 	.byte	-48
   0E27 24                 3621 	.byte	36
   0E28 01                 3622 	.byte	1
                           3623 	.globl _depth2RollingRight2
   0E29                    3624 _depth2RollingRight2:
   0E29 00                 3625 	.byte	0
   0E2A 09                 3626 	.byte	9
   0E2B 00                 3627 	.byte	0
   0E2C FF                 3628 	.byte	-1
   0E2D 00                 3629 	.byte	0
   0E2E 2A                 3630 	.byte	42
   0E2F FF                 3631 	.byte	-1
   0E30 30                 3632 	.byte	48
   0E31 DC                 3633 	.byte	-36
   0E32 FF                 3634 	.byte	-1
   0E33 00                 3635 	.byte	0
   0E34 D9                 3636 	.byte	-39
   0E35 FF                 3637 	.byte	-1
   0E36 D0                 3638 	.byte	-48
   0E37 21                 3639 	.byte	33
   0E38 FF                 3640 	.byte	-1
   0E39 2A                 3641 	.byte	42
   0E3A 0C                 3642 	.byte	12
   0E3B 00                 3643 	.byte	0
   0E3C D6                 3644 	.byte	-42
   0E3D 1E                 3645 	.byte	30
   0E3E FF                 3646 	.byte	-1
   0E3F 27                 3647 	.byte	39
   0E40 0C                 3648 	.byte	12
   0E41 00                 3649 	.byte	0
   0E42 09                 3650 	.byte	9
   0E43 D0                 3651 	.byte	-48
   0E44 FF                 3652 	.byte	-1
   0E45 27                 3653 	.byte	39
   0E46 0C                 3654 	.byte	12
   0E47 00                 3655 	.byte	0
   0E48 D9                 3656 	.byte	-39
   0E49 CD                 3657 	.byte	-51
   0E4A FF                 3658 	.byte	-1
   0E4B 2A                 3659 	.byte	42
   0E4C 0C                 3660 	.byte	12
   0E4D 00                 3661 	.byte	0
   0E4E D0                 3662 	.byte	-48
   0E4F 21                 3663 	.byte	33
   0E50 FF                 3664 	.byte	-1
   0E51 FD                 3665 	.byte	-3
   0E52 2A                 3666 	.byte	42
   0E53 FF                 3667 	.byte	-1
   0E54 30                 3668 	.byte	48
   0E55 DC                 3669 	.byte	-36
   0E56 FF                 3670 	.byte	-1
   0E57 03                 3671 	.byte	3
   0E58 D9                 3672 	.byte	-39
   0E59 FF                 3673 	.byte	-1
   0E5A D0                 3674 	.byte	-48
   0E5B 21                 3675 	.byte	33
   0E5C 01                 3676 	.byte	1
                           3677 	.globl _width2RollingFront2
   0E5D                    3678 _width2RollingFront2:
   0E5D FF                 3679 	.byte	-1
   0E5E 12                 3680 	.byte	18
   0E5F 54                 3681 	.byte	84
   0E60 FF                 3682 	.byte	-1
   0E61 21                 3683 	.byte	33
   0E62 EE                 3684 	.byte	-18
   0E63 FF                 3685 	.byte	-1
   0E64 EE                 3686 	.byte	-18
   0E65 AF                 3687 	.byte	-81
   0E66 FF                 3688 	.byte	-1
   0E67 DF                 3689 	.byte	-33
   0E68 0F                 3690 	.byte	15
   0E69 FF                 3691 	.byte	-1
   0E6A 1E                 3692 	.byte	30
   0E6B 06                 3693 	.byte	6
   0E6C 00                 3694 	.byte	0
   0E6D F4                 3695 	.byte	-12
   0E6E 4E                 3696 	.byte	78
   0E6F FF                 3697 	.byte	-1
   0E70 1E                 3698 	.byte	30
   0E71 06                 3699 	.byte	6
   0E72 00                 3700 	.byte	0
   0E73 03                 3701 	.byte	3
   0E74 E8                 3702 	.byte	-24
   0E75 FF                 3703 	.byte	-1
   0E76 21                 3704 	.byte	33
   0E77 06                 3705 	.byte	6
   0E78 00                 3706 	.byte	0
   0E79 CD                 3707 	.byte	-51
   0E7A A9                 3708 	.byte	-87
   0E7B FF                 3709 	.byte	-1
   0E7C 21                 3710 	.byte	33
   0E7D 06                 3711 	.byte	6
   0E7E 00                 3712 	.byte	0
   0E7F DC                 3713 	.byte	-36
   0E80 0F                 3714 	.byte	15
   0E81 FF                 3715 	.byte	-1
   0E82 12                 3716 	.byte	18
   0E83 54                 3717 	.byte	84
   0E84 FF                 3718 	.byte	-1
   0E85 24                 3719 	.byte	36
   0E86 EE                 3720 	.byte	-18
   0E87 FF                 3721 	.byte	-1
   0E88 EE                 3722 	.byte	-18
   0E89 AF                 3723 	.byte	-81
   0E8A FF                 3724 	.byte	-1
   0E8B DC                 3725 	.byte	-36
   0E8C 0F                 3726 	.byte	15
   0E8D 01                 3727 	.byte	1
                           3728 	.globl _width2RollingBack2
   0E8E                    3729 _width2RollingBack2:
   0E8E 00                 3730 	.byte	0
   0E8F 0C                 3731 	.byte	12
   0E90 00                 3732 	.byte	0
   0E91 FF                 3733 	.byte	-1
   0E92 12                 3734 	.byte	18
   0E93 54                 3735 	.byte	84
   0E94 FF                 3736 	.byte	-1
   0E95 0C                 3737 	.byte	12
   0E96 EE                 3738 	.byte	-18
   0E97 FF                 3739 	.byte	-1
   0E98 EE                 3740 	.byte	-18
   0E99 AF                 3741 	.byte	-81
   0E9A FF                 3742 	.byte	-1
   0E9B F4                 3743 	.byte	-12
   0E9C 0F                 3744 	.byte	15
   0E9D FF                 3745 	.byte	-1
   0E9E 2A                 3746 	.byte	42
   0E9F FD                 3747 	.byte	-3
   0EA0 00                 3748 	.byte	0
   0EA1 E8                 3749 	.byte	-24
   0EA2 57                 3750 	.byte	87
   0EA3 FF                 3751 	.byte	-1
   0EA4 2A                 3752 	.byte	42
   0EA5 FA                 3753 	.byte	-6
   0EA6 00                 3754 	.byte	0
   0EA7 E2                 3755 	.byte	-30
   0EA8 F4                 3756 	.byte	-12
   0EA9 FF                 3757 	.byte	-1
   0EAA 2D                 3758 	.byte	45
   0EAB FA                 3759 	.byte	-6
   0EAC 00                 3760 	.byte	0
   0EAD C1                 3761 	.byte	-63
   0EAE B5                 3762 	.byte	-75
   0EAF FF                 3763 	.byte	-1
   0EB0 2D                 3764 	.byte	45
   0EB1 FA                 3765 	.byte	-6
   0EB2 00                 3766 	.byte	0
   0EB3 F1                 3767 	.byte	-15
   0EB4 12                 3768 	.byte	18
   0EB5 FF                 3769 	.byte	-1
   0EB6 12                 3770 	.byte	18
   0EB7 51                 3771 	.byte	81
   0EB8 FF                 3772 	.byte	-1
   0EB9 0F                 3773 	.byte	15
   0EBA EE                 3774 	.byte	-18
   0EBB FF                 3775 	.byte	-1
   0EBC EE                 3776 	.byte	-18
   0EBD AF                 3777 	.byte	-81
   0EBE FF                 3778 	.byte	-1
   0EBF F1                 3779 	.byte	-15
   0EC0 12                 3780 	.byte	18
   0EC1 01                 3781 	.byte	1
                           3782 	.globl _height1FallingLeft2
   0EC2                    3783 _height1FallingLeft2:
   0EC2 FF                 3784 	.byte	-1
   0EC3 12                 3785 	.byte	18
   0EC4 2A                 3786 	.byte	42
   0EC5 FF                 3787 	.byte	-1
   0EC6 18                 3788 	.byte	24
   0EC7 EE                 3789 	.byte	-18
   0EC8 FF                 3790 	.byte	-1
   0EC9 EE                 3791 	.byte	-18
   0ECA D9                 3792 	.byte	-39
   0ECB FF                 3793 	.byte	-1
   0ECC E8                 3794 	.byte	-24
   0ECD 0F                 3795 	.byte	15
   0ECE FF                 3796 	.byte	-1
   0ECF 24                 3797 	.byte	36
   0ED0 F7                 3798 	.byte	-9
   0ED1 00                 3799 	.byte	0
   0ED2 EE                 3800 	.byte	-18
   0ED3 33                 3801 	.byte	51
   0ED4 FF                 3802 	.byte	-1
   0ED5 24                 3803 	.byte	36
   0ED6 F4                 3804 	.byte	-12
   0ED7 00                 3805 	.byte	0
   0ED8 F4                 3806 	.byte	-12
   0ED9 FA                 3807 	.byte	-6
   0EDA FF                 3808 	.byte	-1
   0EDB 24                 3809 	.byte	36
   0EDC F4                 3810 	.byte	-12
   0EDD 00                 3811 	.byte	0
   0EDE CA                 3812 	.byte	-54
   0EDF E5                 3813 	.byte	-27
   0EE0 FF                 3814 	.byte	-1
   0EE1 24                 3815 	.byte	36
   0EE2 F4                 3816 	.byte	-12
   0EE3 00                 3817 	.byte	0
   0EE4 E8                 3818 	.byte	-24
   0EE5 12                 3819 	.byte	18
   0EE6 FF                 3820 	.byte	-1
   0EE7 12                 3821 	.byte	18
   0EE8 27                 3822 	.byte	39
   0EE9 FF                 3823 	.byte	-1
   0EEA 18                 3824 	.byte	24
   0EEB EE                 3825 	.byte	-18
   0EEC FF                 3826 	.byte	-1
   0EED EE                 3827 	.byte	-18
   0EEE D9                 3828 	.byte	-39
   0EEF FF                 3829 	.byte	-1
   0EF0 E8                 3830 	.byte	-24
   0EF1 12                 3831 	.byte	18
   0EF2 01                 3832 	.byte	1
                           3833 	.globl _height1FallingRight2
   0EF3                    3834 _height1FallingRight2:
   0EF3 00                 3835 	.byte	0
   0EF4 09                 3836 	.byte	9
   0EF5 00                 3837 	.byte	0
   0EF6 FF                 3838 	.byte	-1
   0EF7 00                 3839 	.byte	0
   0EF8 2A                 3840 	.byte	42
   0EF9 FF                 3841 	.byte	-1
   0EFA 18                 3842 	.byte	24
   0EFB EE                 3843 	.byte	-18
   0EFC FF                 3844 	.byte	-1
   0EFD 00                 3845 	.byte	0
   0EFE D9                 3846 	.byte	-39
   0EFF FF                 3847 	.byte	-1
   0F00 E8                 3848 	.byte	-24
   0F01 0F                 3849 	.byte	15
   0F02 FF                 3850 	.byte	-1
   0F03 2A                 3851 	.byte	42
   0F04 0C                 3852 	.byte	12
   0F05 00                 3853 	.byte	0
   0F06 D6                 3854 	.byte	-42
   0F07 1E                 3855 	.byte	30
   0F08 FF                 3856 	.byte	-1
   0F09 27                 3857 	.byte	39
   0F0A 0C                 3858 	.byte	12
   0F0B 00                 3859 	.byte	0
   0F0C F1                 3860 	.byte	-15
   0F0D E2                 3861 	.byte	-30
   0F0E FF                 3862 	.byte	-1
   0F0F 27                 3863 	.byte	39
   0F10 0C                 3864 	.byte	12
   0F11 00                 3865 	.byte	0
   0F12 D9                 3866 	.byte	-39
   0F13 CD                 3867 	.byte	-51
   0F14 FF                 3868 	.byte	-1
   0F15 2A                 3869 	.byte	42
   0F16 0C                 3870 	.byte	12
   0F17 00                 3871 	.byte	0
   0F18 E8                 3872 	.byte	-24
   0F19 0F                 3873 	.byte	15
   0F1A FF                 3874 	.byte	-1
   0F1B FD                 3875 	.byte	-3
   0F1C 2A                 3876 	.byte	42
   0F1D FF                 3877 	.byte	-1
   0F1E 18                 3878 	.byte	24
   0F1F EE                 3879 	.byte	-18
   0F20 FF                 3880 	.byte	-1
   0F21 03                 3881 	.byte	3
   0F22 D9                 3882 	.byte	-39
   0F23 FF                 3883 	.byte	-1
   0F24 E8                 3884 	.byte	-24
   0F25 0F                 3885 	.byte	15
   0F26 01                 3886 	.byte	1
                           3887 	.globl _height1FallingBack2
   0F27                    3888 _height1FallingBack2:
   0F27 00                 3889 	.byte	0
   0F28 0C                 3890 	.byte	12
   0F29 00                 3891 	.byte	0
   0F2A FF                 3892 	.byte	-1
   0F2B 09                 3893 	.byte	9
   0F2C 2A                 3894 	.byte	42
   0F2D FF                 3895 	.byte	-1
   0F2E 0C                 3896 	.byte	12
   0F2F EE                 3897 	.byte	-18
   0F30 FF                 3898 	.byte	-1
   0F31 F7                 3899 	.byte	-9
   0F32 D9                 3900 	.byte	-39
   0F33 FF                 3901 	.byte	-1
   0F34 F4                 3902 	.byte	-12
   0F35 0F                 3903 	.byte	15
   0F36 FF                 3904 	.byte	-1
   0F37 2A                 3905 	.byte	42
   0F38 FD                 3906 	.byte	-3
   0F39 00                 3907 	.byte	0
   0F3A DF                 3908 	.byte	-33
   0F3B 2D                 3909 	.byte	45
   0F3C FF                 3910 	.byte	-1
   0F3D 2A                 3911 	.byte	42
   0F3E FA                 3912 	.byte	-6
   0F3F 00                 3913 	.byte	0
   0F40 E2                 3914 	.byte	-30
   0F41 F4                 3915 	.byte	-12
   0F42 FF                 3916 	.byte	-1
   0F43 2D                 3917 	.byte	45
   0F44 FA                 3918 	.byte	-6
   0F45 00                 3919 	.byte	0
   0F46 CA                 3920 	.byte	-54
   0F47 DF                 3921 	.byte	-33
   0F48 FF                 3922 	.byte	-1
   0F49 2D                 3923 	.byte	45
   0F4A FA                 3924 	.byte	-6
   0F4B 00                 3925 	.byte	0
   0F4C F1                 3926 	.byte	-15
   0F4D 12                 3927 	.byte	18
   0F4E FF                 3928 	.byte	-1
   0F4F 09                 3929 	.byte	9
   0F50 27                 3930 	.byte	39
   0F51 FF                 3931 	.byte	-1
   0F52 0F                 3932 	.byte	15
   0F53 EE                 3933 	.byte	-18
   0F54 FF                 3934 	.byte	-1
   0F55 F7                 3935 	.byte	-9
   0F56 D9                 3936 	.byte	-39
   0F57 FF                 3937 	.byte	-1
   0F58 F1                 3938 	.byte	-15
   0F59 12                 3939 	.byte	18
   0F5A 01                 3940 	.byte	1
                           3941 	.globl _height1FallingFront2
   0F5B                    3942 _height1FallingFront2:
   0F5B FF                 3943 	.byte	-1
   0F5C 09                 3944 	.byte	9
   0F5D 2A                 3945 	.byte	42
   0F5E FF                 3946 	.byte	-1
   0F5F 21                 3947 	.byte	33
   0F60 EE                 3948 	.byte	-18
   0F61 FF                 3949 	.byte	-1
   0F62 F7                 3950 	.byte	-9
   0F63 D9                 3951 	.byte	-39
   0F64 FF                 3952 	.byte	-1
   0F65 DF                 3953 	.byte	-33
   0F66 0F                 3954 	.byte	15
   0F67 FF                 3955 	.byte	-1
   0F68 1E                 3956 	.byte	30
   0F69 06                 3957 	.byte	6
   0F6A 00                 3958 	.byte	0
   0F6B EB                 3959 	.byte	-21
   0F6C 24                 3960 	.byte	36
   0F6D FF                 3961 	.byte	-1
   0F6E 1E                 3962 	.byte	30
   0F6F 06                 3963 	.byte	6
   0F70 00                 3964 	.byte	0
   0F71 03                 3965 	.byte	3
   0F72 E8                 3966 	.byte	-24
   0F73 FF                 3967 	.byte	-1
   0F74 21                 3968 	.byte	33
   0F75 06                 3969 	.byte	6
   0F76 00                 3970 	.byte	0
   0F77 D6                 3971 	.byte	-42
   0F78 D3                 3972 	.byte	-45
   0F79 FF                 3973 	.byte	-1
   0F7A 21                 3974 	.byte	33
   0F7B 06                 3975 	.byte	6
   0F7C 00                 3976 	.byte	0
   0F7D DC                 3977 	.byte	-36
   0F7E 0F                 3978 	.byte	15
   0F7F FF                 3979 	.byte	-1
   0F80 09                 3980 	.byte	9
   0F81 2A                 3981 	.byte	42
   0F82 FF                 3982 	.byte	-1
   0F83 24                 3983 	.byte	36
   0F84 EE                 3984 	.byte	-18
   0F85 FF                 3985 	.byte	-1
   0F86 F7                 3986 	.byte	-9
   0F87 D9                 3987 	.byte	-39
   0F88 FF                 3988 	.byte	-1
   0F89 DC                 3989 	.byte	-36
   0F8A 0F                 3990 	.byte	15
   0F8B 01                 3991 	.byte	1
                           3992 	.globl _height2FallingLeft3
   0F8C                    3993 _height2FallingLeft3:
   0F8C FF                 3994 	.byte	-1
   0F8D 18                 3995 	.byte	24
   0F8E 27                 3996 	.byte	39
   0F8F FF                 3997 	.byte	-1
   0F90 18                 3998 	.byte	24
   0F91 EE                 3999 	.byte	-18
   0F92 FF                 4000 	.byte	-1
   0F93 E8                 4001 	.byte	-24
   0F94 DC                 4002 	.byte	-36
   0F95 FF                 4003 	.byte	-1
   0F96 E8                 4004 	.byte	-24
   0F97 0F                 4005 	.byte	15
   0F98 FF                 4006 	.byte	-1
   0F99 42                 4007 	.byte	66
   0F9A E2                 4008 	.byte	-30
   0F9B 00                 4009 	.byte	0
   0F9C D6                 4010 	.byte	-42
   0F9D 45                 4011 	.byte	69
   0F9E FF                 4012 	.byte	-1
   0F9F 3F                 4013 	.byte	63
   0FA0 DF                 4014 	.byte	-33
   0FA1 00                 4015 	.byte	0
   0FA2 D9                 4016 	.byte	-39
   0FA3 0F                 4017 	.byte	15
   0FA4 FF                 4018 	.byte	-1
   0FA5 3F                 4019 	.byte	63
   0FA6 E2                 4020 	.byte	-30
   0FA7 00                 4021 	.byte	0
   0FA8 A9                 4022 	.byte	-87
   0FA9 FA                 4023 	.byte	-6
   0FAA FF                 4024 	.byte	-1
   0FAB 42                 4025 	.byte	66
   0FAC DF                 4026 	.byte	-33
   0FAD 00                 4027 	.byte	0
   0FAE E8                 4028 	.byte	-24
   0FAF 12                 4029 	.byte	18
   0FB0 FF                 4030 	.byte	-1
   0FB1 15                 4031 	.byte	21
   0FB2 24                 4032 	.byte	36
   0FB3 FF                 4033 	.byte	-1
   0FB4 18                 4034 	.byte	24
   0FB5 F1                 4035 	.byte	-15
   0FB6 FF                 4036 	.byte	-1
   0FB7 EB                 4037 	.byte	-21
   0FB8 D9                 4038 	.byte	-39
   0FB9 FF                 4039 	.byte	-1
   0FBA E8                 4040 	.byte	-24
   0FBB 12                 4041 	.byte	18
   0FBC 01                 4042 	.byte	1
                           4043 	.globl _height2RisingRight3
   0FBD                    4044 _height2RisingRight3:
   0FBD 00                 4045 	.byte	0
   0FBE 12                 4046 	.byte	18
   0FBF 54                 4047 	.byte	84
   0FC0 FF                 4048 	.byte	-1
   0FC1 27                 4049 	.byte	39
   0FC2 15                 4050 	.byte	21
   0FC3 FF                 4051 	.byte	-1
   0FC4 18                 4052 	.byte	24
   0FC5 EE                 4053 	.byte	-18
   0FC6 FF                 4054 	.byte	-1
   0FC7 D9                 4055 	.byte	-39
   0FC8 EB                 4056 	.byte	-21
   0FC9 FF                 4057 	.byte	-1
   0FCA E8                 4058 	.byte	-24
   0FCB 12                 4059 	.byte	18
   0FCC FF                 4060 	.byte	-1
   0FCD 18                 4061 	.byte	24
   0FCE B8                 4062 	.byte	-72
   0FCF 00                 4063 	.byte	0
   0FD0 0F                 4064 	.byte	15
   0FD1 5D                 4065 	.byte	93
   0FD2 FF                 4066 	.byte	-1
   0FD3 18                 4067 	.byte	24
   0FD4 B8                 4068 	.byte	-72
   0FD5 00                 4069 	.byte	0
   0FD6 00                 4070 	.byte	0
   0FD7 36                 4071 	.byte	54
   0FD8 FF                 4072 	.byte	-1
   0FD9 18                 4073 	.byte	24
   0FDA B8                 4074 	.byte	-72
   0FDB 00                 4075 	.byte	0
   0FDC C1                 4076 	.byte	-63
   0FDD 33                 4077 	.byte	51
   0FDE FF                 4078 	.byte	-1
   0FDF 18                 4079 	.byte	24
   0FE0 BB                 4080 	.byte	-69
   0FE1 00                 4081 	.byte	0
   0FE2 E8                 4082 	.byte	-24
   0FE3 0F                 4083 	.byte	15
   0FE4 FF                 4084 	.byte	-1
   0FE5 27                 4085 	.byte	39
   0FE6 15                 4086 	.byte	21
   0FE7 FF                 4087 	.byte	-1
   0FE8 18                 4088 	.byte	24
   0FE9 EE                 4089 	.byte	-18
   0FEA FF                 4090 	.byte	-1
   0FEB D9                 4091 	.byte	-39
   0FEC EE                 4092 	.byte	-18
   0FED FF                 4093 	.byte	-1
   0FEE E8                 4094 	.byte	-24
   0FEF 0F                 4095 	.byte	15
   0FF0 01                 4096 	.byte	1
                           4097 	.globl _height2FallingRight3
   0FF1                    4098 _height2FallingRight3:
   0FF1 00                 4099 	.byte	0
   0FF2 0F                 4100 	.byte	15
   0FF3 03                 4101 	.byte	3
   0FF4 FF                 4102 	.byte	-1
   0FF5 FA                 4103 	.byte	-6
   0FF6 27                 4104 	.byte	39
   0FF7 FF                 4105 	.byte	-1
   0FF8 18                 4106 	.byte	24
   0FF9 EE                 4107 	.byte	-18
   0FFA FF                 4108 	.byte	-1
   0FFB 06                 4109 	.byte	6
   0FFC DC                 4110 	.byte	-36
   0FFD FF                 4111 	.byte	-1
   0FFE E8                 4112 	.byte	-24
   0FFF 0F                 4113 	.byte	15
   1000 FF                 4114 	.byte	-1
   1001 51                 4115 	.byte	81
   1002 21                 4116 	.byte	33
   1003 00                 4117 	.byte	0
   1004 A9                 4118 	.byte	-87
   1005 06                 4119 	.byte	6
   1006 FF                 4120 	.byte	-1
   1007 4E                 4121 	.byte	78
   1008 21                 4122 	.byte	33
   1009 00                 4123 	.byte	0
   100A CA                 4124 	.byte	-54
   100B CD                 4125 	.byte	-51
   100C FF                 4126 	.byte	-1
   100D 4E                 4127 	.byte	78
   100E 21                 4128 	.byte	33
   100F 00                 4129 	.byte	0
   1010 B8                 4130 	.byte	-72
   1011 BB                 4131 	.byte	-69
   1012 FF                 4132 	.byte	-1
   1013 51                 4133 	.byte	81
   1014 1E                 4134 	.byte	30
   1015 00                 4135 	.byte	0
   1016 E8                 4136 	.byte	-24
   1017 12                 4137 	.byte	18
   1018 FF                 4138 	.byte	-1
   1019 F7                 4139 	.byte	-9
   101A 27                 4140 	.byte	39
   101B FF                 4141 	.byte	-1
   101C 18                 4142 	.byte	24
   101D EE                 4143 	.byte	-18
   101E FF                 4144 	.byte	-1
   101F 09                 4145 	.byte	9
   1020 D9                 4146 	.byte	-39
   1021 FF                 4147 	.byte	-1
   1022 E8                 4148 	.byte	-24
   1023 12                 4149 	.byte	18
   1024 01                 4150 	.byte	1
                           4151 	.globl _height2RisingLeft3
   1025                    4152 _height2RisingLeft3:
   1025 00                 4153 	.byte	0
   1026 1E                 4154 	.byte	30
   1027 EE                 4155 	.byte	-18
   1028 FF                 4156 	.byte	-1
   1029 E2                 4157 	.byte	-30
   102A 12                 4158 	.byte	18
   102B FF                 4159 	.byte	-1
   102C 18                 4160 	.byte	24
   102D F1                 4161 	.byte	-15
   102E FF                 4162 	.byte	-1
   102F 1E                 4163 	.byte	30
   1030 EB                 4164 	.byte	-21
   1031 FF                 4165 	.byte	-1
   1032 E8                 4166 	.byte	-24
   1033 12                 4167 	.byte	18
   1034 FF                 4168 	.byte	-1
   1035 36                 4169 	.byte	54
   1036 45                 4170 	.byte	69
   1037 00                 4171 	.byte	0
   1038 AC                 4172 	.byte	-84
   1039 CD                 4173 	.byte	-51
   103A FF                 4174 	.byte	-1
   103B 36                 4175 	.byte	54
   103C 48                 4176 	.byte	72
   103D 00                 4177 	.byte	0
   103E E2                 4178 	.byte	-30
   103F A9                 4179 	.byte	-87
   1040 FF                 4180 	.byte	-1
   1041 36                 4181 	.byte	54
   1042 45                 4182 	.byte	69
   1043 00                 4183 	.byte	0
   1044 E8                 4184 	.byte	-24
   1045 A6                 4185 	.byte	-90
   1046 FF                 4186 	.byte	-1
   1047 36                 4187 	.byte	54
   1048 45                 4188 	.byte	69
   1049 00                 4189 	.byte	0
   104A E8                 4190 	.byte	-24
   104B 12                 4191 	.byte	18
   104C FF                 4192 	.byte	-1
   104D E2                 4193 	.byte	-30
   104E 15                 4194 	.byte	21
   104F FF                 4195 	.byte	-1
   1050 18                 4196 	.byte	24
   1051 EE                 4197 	.byte	-18
   1052 FF                 4198 	.byte	-1
   1053 1E                 4199 	.byte	30
   1054 EB                 4200 	.byte	-21
   1055 FF                 4201 	.byte	-1
   1056 E8                 4202 	.byte	-24
   1057 12                 4203 	.byte	18
   1058 01                 4204 	.byte	1
                           4205 	.globl _height2FallingBack3
   1059                    4206 _height2FallingBack3:
   1059 00                 4207 	.byte	0
   105A 12                 4208 	.byte	18
   105B 00                 4209 	.byte	0
   105C FF                 4210 	.byte	-1
   105D 09                 4211 	.byte	9
   105E 2A                 4212 	.byte	42
   105F FF                 4213 	.byte	-1
   1060 06                 4214 	.byte	6
   1061 EE                 4215 	.byte	-18
   1062 FF                 4216 	.byte	-1
   1063 F7                 4217 	.byte	-9
   1064 D9                 4218 	.byte	-39
   1065 FF                 4219 	.byte	-1
   1066 FA                 4220 	.byte	-6
   1067 0F                 4221 	.byte	15
   1068 FF                 4222 	.byte	-1
   1069 5A                 4223 	.byte	90
   106A F4                 4224 	.byte	-12
   106B 00                 4225 	.byte	0
   106C AF                 4226 	.byte	-81
   106D 36                 4227 	.byte	54
   106E FF                 4228 	.byte	-1
   106F 5A                 4229 	.byte	90
   1070 F1                 4230 	.byte	-15
   1071 00                 4231 	.byte	0
   1072 AC                 4232 	.byte	-84
   1073 FD                 4233 	.byte	-3
   1074 FF                 4234 	.byte	-1
   1075 5A                 4235 	.byte	90
   1076 F1                 4236 	.byte	-15
   1077 00                 4237 	.byte	0
   1078 9D                 4238 	.byte	-99
   1079 E8                 4239 	.byte	-24
   107A FF                 4240 	.byte	-1
   107B 5A                 4241 	.byte	90
   107C F1                 4242 	.byte	-15
   107D 00                 4243 	.byte	0
   107E FA                 4244 	.byte	-6
   107F 12                 4245 	.byte	18
   1080 FF                 4246 	.byte	-1
   1081 09                 4247 	.byte	9
   1082 27                 4248 	.byte	39
   1083 FF                 4249 	.byte	-1
   1084 06                 4250 	.byte	6
   1085 EE                 4251 	.byte	-18
   1086 FF                 4252 	.byte	-1
   1087 F7                 4253 	.byte	-9
   1088 D9                 4254 	.byte	-39
   1089 FF                 4255 	.byte	-1
   108A FA                 4256 	.byte	-6
   108B 12                 4257 	.byte	18
   108C 01                 4258 	.byte	1
                           4259 	.globl _height2RisingFront3
   108D                    4260 _height2RisingFront3:
   108D 00                 4261 	.byte	0
   108E 15                 4262 	.byte	21
   108F 09                 4263 	.byte	9
   1090 FF                 4264 	.byte	-1
   1091 09                 4265 	.byte	9
   1092 2A                 4266 	.byte	42
   1093 FF                 4267 	.byte	-1
   1094 EB                 4268 	.byte	-21
   1095 F7                 4269 	.byte	-9
   1096 FF                 4270 	.byte	-1
   1097 F7                 4271 	.byte	-9
   1098 D6                 4272 	.byte	-42
   1099 FF                 4273 	.byte	-1
   109A 15                 4274 	.byte	21
   109B 09                 4275 	.byte	9
   109C FF                 4276 	.byte	-1
   109D 51                 4277 	.byte	81
   109E E5                 4278 	.byte	-27
   109F 00                 4279 	.byte	0
   10A0 B8                 4280 	.byte	-72
   10A1 45                 4281 	.byte	69
   10A2 FF                 4282 	.byte	-1
   10A3 51                 4283 	.byte	81
   10A4 E2                 4284 	.byte	-30
   10A5 00                 4285 	.byte	0
   10A6 9A                 4286 	.byte	-102
   10A7 15                 4287 	.byte	21
   10A8 FF                 4288 	.byte	-1
   10A9 51                 4289 	.byte	81
   10AA E2                 4290 	.byte	-30
   10AB 00                 4291 	.byte	0
   10AC A6                 4292 	.byte	-90
   10AD F4                 4293 	.byte	-12
   10AE FF                 4294 	.byte	-1
   10AF 51                 4295 	.byte	81
   10B0 E5                 4296 	.byte	-27
   10B1 00                 4297 	.byte	0
   10B2 15                 4298 	.byte	21
   10B3 09                 4299 	.byte	9
   10B4 FF                 4300 	.byte	-1
   10B5 09                 4301 	.byte	9
   10B6 27                 4302 	.byte	39
   10B7 FF                 4303 	.byte	-1
   10B8 EB                 4304 	.byte	-21
   10B9 F7                 4305 	.byte	-9
   10BA FF                 4306 	.byte	-1
   10BB F7                 4307 	.byte	-9
   10BC D9                 4308 	.byte	-39
   10BD FF                 4309 	.byte	-1
   10BE 15                 4310 	.byte	21
   10BF 09                 4311 	.byte	9
   10C0 01                 4312 	.byte	1
                           4313 	.globl _height2FallingFront3
   10C1                    4314 _height2FallingFront3:
   10C1 FF                 4315 	.byte	-1
   10C2 09                 4316 	.byte	9
   10C3 2A                 4317 	.byte	42
   10C4 FF                 4318 	.byte	-1
   10C5 24                 4319 	.byte	36
   10C6 EE                 4320 	.byte	-18
   10C7 FF                 4321 	.byte	-1
   10C8 F7                 4322 	.byte	-9
   10C9 D9                 4323 	.byte	-39
   10CA FF                 4324 	.byte	-1
   10CB DC                 4325 	.byte	-36
   10CC 0F                 4326 	.byte	15
   10CD FF                 4327 	.byte	-1
   10CE 36                 4328 	.byte	54
   10CF 0F                 4329 	.byte	15
   10D0 00                 4330 	.byte	0
   10D1 D3                 4331 	.byte	-45
   10D2 1B                 4332 	.byte	27
   10D3 FF                 4333 	.byte	-1
   10D4 36                 4334 	.byte	54
   10D5 0F                 4335 	.byte	15
   10D6 00                 4336 	.byte	0
   10D7 EE                 4337 	.byte	-18
   10D8 DF                 4338 	.byte	-33
   10D9 FF                 4339 	.byte	-1
   10DA 36                 4340 	.byte	54
   10DB 0F                 4341 	.byte	15
   10DC 00                 4342 	.byte	0
   10DD C1                 4343 	.byte	-63
   10DE CA                 4344 	.byte	-54
   10DF FF                 4345 	.byte	-1
   10E0 36                 4346 	.byte	54
   10E1 0F                 4347 	.byte	15
   10E2 00                 4348 	.byte	0
   10E3 DC                 4349 	.byte	-36
   10E4 0F                 4350 	.byte	15
   10E5 FF                 4351 	.byte	-1
   10E6 09                 4352 	.byte	9
   10E7 2A                 4353 	.byte	42
   10E8 FF                 4354 	.byte	-1
   10E9 24                 4355 	.byte	36
   10EA EE                 4356 	.byte	-18
   10EB FF                 4357 	.byte	-1
   10EC F7                 4358 	.byte	-9
   10ED D9                 4359 	.byte	-39
   10EE FF                 4360 	.byte	-1
   10EF DC                 4361 	.byte	-36
   10F0 0F                 4362 	.byte	15
   10F1 01                 4363 	.byte	1
                           4364 	.globl _height2RisingBack3
   10F2                    4365 _height2RisingBack3:
   10F2 00                 4366 	.byte	0
   10F3 30                 4367 	.byte	48
   10F4 DF                 4368 	.byte	-33
   10F5 FF                 4369 	.byte	-1
   10F6 09                 4370 	.byte	9
   10F7 27                 4371 	.byte	39
   10F8 FF                 4372 	.byte	-1
   10F9 2D                 4373 	.byte	45
   10FA FA                 4374 	.byte	-6
   10FB FF                 4375 	.byte	-1
   10FC F7                 4376 	.byte	-9
   10FD D6                 4377 	.byte	-42
   10FE FF                 4378 	.byte	-1
   10FF D3                 4379 	.byte	-45
   1100 09                 4380 	.byte	9
   1101 FF                 4381 	.byte	-1
   1102 FD                 4382 	.byte	-3
   1103 1E                 4383 	.byte	30
   1104 00                 4384 	.byte	0
   1105 0C                 4385 	.byte	12
   1106 09                 4386 	.byte	9
   1107 FF                 4387 	.byte	-1
   1108 FD                 4388 	.byte	-3
   1109 1E                 4389 	.byte	30
   110A 00                 4390 	.byte	0
   110B 30                 4391 	.byte	48
   110C DC                 4392 	.byte	-36
   110D FF                 4393 	.byte	-1
   110E FD                 4394 	.byte	-3
   110F 1B                 4395 	.byte	27
   1110 00                 4396 	.byte	0
   1111 FA                 4397 	.byte	-6
   1112 BB                 4398 	.byte	-69
   1113 FF                 4399 	.byte	-1
   1114 FD                 4400 	.byte	-3
   1115 1E                 4401 	.byte	30
   1116 00                 4402 	.byte	0
   1117 D3                 4403 	.byte	-45
   1118 09                 4404 	.byte	9
   1119 FF                 4405 	.byte	-1
   111A 09                 4406 	.byte	9
   111B 27                 4407 	.byte	39
   111C FF                 4408 	.byte	-1
   111D 2D                 4409 	.byte	45
   111E F7                 4410 	.byte	-9
   111F FF                 4411 	.byte	-1
   1120 F7                 4412 	.byte	-9
   1121 D9                 4413 	.byte	-39
   1122 FF                 4414 	.byte	-1
   1123 D3                 4415 	.byte	-45
   1124 09                 4416 	.byte	9
   1125 01                 4417 	.byte	1
                           4418 	.globl _depth2RollingLeft3
   1126                    4419 _depth2RollingLeft3:
   1126 FF                 4420 	.byte	-1
   1127 18                 4421 	.byte	24
   1128 27                 4422 	.byte	39
   1129 FF                 4423 	.byte	-1
   112A 30                 4424 	.byte	48
   112B DC                 4425 	.byte	-36
   112C FF                 4426 	.byte	-1
   112D E8                 4427 	.byte	-24
   112E DC                 4428 	.byte	-36
   112F FF                 4429 	.byte	-1
   1130 D0                 4430 	.byte	-48
   1131 21                 4431 	.byte	33
   1132 FF                 4432 	.byte	-1
   1133 21                 4433 	.byte	33
   1134 F4                 4434 	.byte	-12
   1135 00                 4435 	.byte	0
   1136 F7                 4436 	.byte	-9
   1137 33                 4437 	.byte	51
   1138 FF                 4438 	.byte	-1
   1139 21                 4439 	.byte	33
   113A F1                 4440 	.byte	-15
   113B 00                 4441 	.byte	0
   113C 0F                 4442 	.byte	15
   113D EB                 4443 	.byte	-21
   113E FF                 4444 	.byte	-1
   113F 21                 4445 	.byte	33
   1140 F4                 4446 	.byte	-12
   1141 00                 4447 	.byte	0
   1142 C7                 4448 	.byte	-57
   1143 E8                 4449 	.byte	-24
   1144 FF                 4450 	.byte	-1
   1145 21                 4451 	.byte	33
   1146 F1                 4452 	.byte	-15
   1147 00                 4453 	.byte	0
   1148 D0                 4454 	.byte	-48
   1149 24                 4455 	.byte	36
   114A FF                 4456 	.byte	-1
   114B 18                 4457 	.byte	24
   114C 24                 4458 	.byte	36
   114D FF                 4459 	.byte	-1
   114E 30                 4460 	.byte	48
   114F DF                 4461 	.byte	-33
   1150 FF                 4462 	.byte	-1
   1151 E8                 4463 	.byte	-24
   1152 D9                 4464 	.byte	-39
   1153 FF                 4465 	.byte	-1
   1154 D0                 4466 	.byte	-48
   1155 24                 4467 	.byte	36
   1156 01                 4468 	.byte	1
                           4469 	.globl _depth2RollingRight3
   1157                    4470 _depth2RollingRight3:
   1157 00                 4471 	.byte	0
   1158 0F                 4472 	.byte	15
   1159 03                 4473 	.byte	3
   115A FF                 4474 	.byte	-1
   115B FA                 4475 	.byte	-6
   115C 27                 4476 	.byte	39
   115D FF                 4477 	.byte	-1
   115E 30                 4478 	.byte	48
   115F DC                 4479 	.byte	-36
   1160 FF                 4480 	.byte	-1
   1161 06                 4481 	.byte	6
   1162 DC                 4482 	.byte	-36
   1163 FF                 4483 	.byte	-1
   1164 D0                 4484 	.byte	-48
   1165 21                 4485 	.byte	33
   1166 FF                 4486 	.byte	-1
   1167 27                 4487 	.byte	39
   1168 0F                 4488 	.byte	15
   1169 00                 4489 	.byte	0
   116A D3                 4490 	.byte	-45
   116B 18                 4491 	.byte	24
   116C FF                 4492 	.byte	-1
   116D 27                 4493 	.byte	39
   116E 0F                 4494 	.byte	15
   116F 00                 4495 	.byte	0
   1170 09                 4496 	.byte	9
   1171 CD                 4497 	.byte	-51
   1172 FF                 4498 	.byte	-1
   1173 27                 4499 	.byte	39
   1174 0F                 4500 	.byte	15
   1175 00                 4501 	.byte	0
   1176 DF                 4502 	.byte	-33
   1177 CD                 4503 	.byte	-51
   1178 FF                 4504 	.byte	-1
   1179 27                 4505 	.byte	39
   117A 0F                 4506 	.byte	15
   117B 00                 4507 	.byte	0
   117C D0                 4508 	.byte	-48
   117D 21                 4509 	.byte	33
   117E FF                 4510 	.byte	-1
   117F FA                 4511 	.byte	-6
   1180 27                 4512 	.byte	39
   1181 FF                 4513 	.byte	-1
   1182 30                 4514 	.byte	48
   1183 DC                 4515 	.byte	-36
   1184 FF                 4516 	.byte	-1
   1185 06                 4517 	.byte	6
   1186 DC                 4518 	.byte	-36
   1187 FF                 4519 	.byte	-1
   1188 D0                 4520 	.byte	-48
   1189 21                 4521 	.byte	33
   118A 01                 4522 	.byte	1
                           4523 	.globl _width2RollingFront3
   118B                    4524 _width2RollingFront3:
   118B FF                 4525 	.byte	-1
   118C 12                 4526 	.byte	18
   118D 54                 4527 	.byte	84
   118E FF                 4528 	.byte	-1
   118F 24                 4529 	.byte	36
   1190 EE                 4530 	.byte	-18
   1191 FF                 4531 	.byte	-1
   1192 EE                 4532 	.byte	-18
   1193 AF                 4533 	.byte	-81
   1194 FF                 4534 	.byte	-1
   1195 DC                 4535 	.byte	-36
   1196 0F                 4536 	.byte	15
   1197 FF                 4537 	.byte	-1
   1198 1B                 4538 	.byte	27
   1199 06                 4539 	.byte	6
   119A 00                 4540 	.byte	0
   119B F7                 4541 	.byte	-9
   119C 4E                 4542 	.byte	78
   119D FF                 4543 	.byte	-1
   119E 1B                 4544 	.byte	27
   119F 06                 4545 	.byte	6
   11A0 00                 4546 	.byte	0
   11A1 09                 4547 	.byte	9
   11A2 E8                 4548 	.byte	-24
   11A3 FF                 4549 	.byte	-1
   11A4 1B                 4550 	.byte	27
   11A5 09                 4551 	.byte	9
   11A6 00                 4552 	.byte	0
   11A7 D3                 4553 	.byte	-45
   11A8 A6                 4554 	.byte	-90
   11A9 FF                 4555 	.byte	-1
   11AA 1B                 4556 	.byte	27
   11AB 09                 4557 	.byte	9
   11AC 00                 4558 	.byte	0
   11AD DC                 4559 	.byte	-36
   11AE 0C                 4560 	.byte	12
   11AF FF                 4561 	.byte	-1
   11B0 12                 4562 	.byte	18
   11B1 54                 4563 	.byte	84
   11B2 FF                 4564 	.byte	-1
   11B3 24                 4565 	.byte	36
   11B4 F1                 4566 	.byte	-15
   11B5 FF                 4567 	.byte	-1
   11B6 EE                 4568 	.byte	-18
   11B7 AF                 4569 	.byte	-81
   11B8 FF                 4570 	.byte	-1
   11B9 DC                 4571 	.byte	-36
   11BA 0C                 4572 	.byte	12
   11BB 01                 4573 	.byte	1
                           4574 	.globl _width2RollingBack3
   11BC                    4575 _width2RollingBack3:
   11BC 00                 4576 	.byte	0
   11BD 12                 4577 	.byte	18
   11BE 00                 4578 	.byte	0
   11BF FF                 4579 	.byte	-1
   11C0 12                 4580 	.byte	18
   11C1 54                 4581 	.byte	84
   11C2 FF                 4582 	.byte	-1
   11C3 06                 4583 	.byte	6
   11C4 EE                 4584 	.byte	-18
   11C5 FF                 4585 	.byte	-1
   11C6 EE                 4586 	.byte	-18
   11C7 AF                 4587 	.byte	-81
   11C8 FF                 4588 	.byte	-1
   11C9 FA                 4589 	.byte	-6
   11CA 0F                 4590 	.byte	15
   11CB FF                 4591 	.byte	-1
   11CC 2D                 4592 	.byte	45
   11CD FA                 4593 	.byte	-6
   11CE 00                 4594 	.byte	0
   11CF E5                 4595 	.byte	-27
   11D0 5A                 4596 	.byte	90
   11D1 FF                 4597 	.byte	-1
   11D2 2D                 4598 	.byte	45
   11D3 F7                 4599 	.byte	-9
   11D4 00                 4600 	.byte	0
   11D5 D9                 4601 	.byte	-39
   11D6 F7                 4602 	.byte	-9
   11D7 FF                 4603 	.byte	-1
   11D8 2D                 4604 	.byte	45
   11D9 FA                 4605 	.byte	-6
   11DA 00                 4606 	.byte	0
   11DB C1                 4607 	.byte	-63
   11DC B5                 4608 	.byte	-75
   11DD FF                 4609 	.byte	-1
   11DE 2D                 4610 	.byte	45
   11DF FA                 4611 	.byte	-6
   11E0 00                 4612 	.byte	0
   11E1 FA                 4613 	.byte	-6
   11E2 0F                 4614 	.byte	15
   11E3 FF                 4615 	.byte	-1
   11E4 12                 4616 	.byte	18
   11E5 51                 4617 	.byte	81
   11E6 FF                 4618 	.byte	-1
   11E7 06                 4619 	.byte	6
   11E8 F1                 4620 	.byte	-15
   11E9 FF                 4621 	.byte	-1
   11EA EE                 4622 	.byte	-18
   11EB AF                 4623 	.byte	-81
   11EC FF                 4624 	.byte	-1
   11ED FA                 4625 	.byte	-6
   11EE 0F                 4626 	.byte	15
   11EF 01                 4627 	.byte	1
                           4628 	.globl _height1FallingLeft3
   11F0                    4629 _height1FallingLeft3:
   11F0 FF                 4630 	.byte	-1
   11F1 18                 4631 	.byte	24
   11F2 27                 4632 	.byte	39
   11F3 FF                 4633 	.byte	-1
   11F4 18                 4634 	.byte	24
   11F5 EE                 4635 	.byte	-18
   11F6 FF                 4636 	.byte	-1
   11F7 E8                 4637 	.byte	-24
   11F8 DC                 4638 	.byte	-36
   11F9 FF                 4639 	.byte	-1
   11FA E8                 4640 	.byte	-24
   11FB 0F                 4641 	.byte	15
   11FC FF                 4642 	.byte	-1
   11FD 21                 4643 	.byte	33
   11FE F4                 4644 	.byte	-12
   11FF 00                 4645 	.byte	0
   1200 F7                 4646 	.byte	-9
   1201 33                 4647 	.byte	51
   1202 FF                 4648 	.byte	-1
   1203 21                 4649 	.byte	33
   1204 F1                 4650 	.byte	-15
   1205 00                 4651 	.byte	0
   1206 F7                 4652 	.byte	-9
   1207 FD                 4653 	.byte	-3
   1208 FF                 4654 	.byte	-1
   1209 21                 4655 	.byte	33
   120A F1                 4656 	.byte	-15
   120B 00                 4657 	.byte	0
   120C C7                 4658 	.byte	-57
   120D EB                 4659 	.byte	-21
   120E FF                 4660 	.byte	-1
   120F 21                 4661 	.byte	33
   1210 F1                 4662 	.byte	-15
   1211 00                 4663 	.byte	0
   1212 E8                 4664 	.byte	-24
   1213 12                 4665 	.byte	18
   1214 FF                 4666 	.byte	-1
   1215 18                 4667 	.byte	24
   1216 24                 4668 	.byte	36
   1217 FF                 4669 	.byte	-1
   1218 18                 4670 	.byte	24
   1219 EE                 4671 	.byte	-18
   121A FF                 4672 	.byte	-1
   121B E8                 4673 	.byte	-24
   121C DC                 4674 	.byte	-36
   121D FF                 4675 	.byte	-1
   121E E8                 4676 	.byte	-24
   121F 12                 4677 	.byte	18
   1220 01                 4678 	.byte	1
                           4679 	.globl _height1FallingRight3
   1221                    4680 _height1FallingRight3:
   1221 00                 4681 	.byte	0
   1222 0F                 4682 	.byte	15
   1223 03                 4683 	.byte	3
   1224 FF                 4684 	.byte	-1
   1225 FA                 4685 	.byte	-6
   1226 27                 4686 	.byte	39
   1227 FF                 4687 	.byte	-1
   1228 18                 4688 	.byte	24
   1229 EE                 4689 	.byte	-18
   122A FF                 4690 	.byte	-1
   122B 06                 4691 	.byte	6
   122C DC                 4692 	.byte	-36
   122D FF                 4693 	.byte	-1
   122E E8                 4694 	.byte	-24
   122F 0F                 4695 	.byte	15
   1230 FF                 4696 	.byte	-1
   1231 27                 4697 	.byte	39
   1232 0F                 4698 	.byte	15
   1233 00                 4699 	.byte	0
   1234 D3                 4700 	.byte	-45
   1235 18                 4701 	.byte	24
   1236 FF                 4702 	.byte	-1
   1237 27                 4703 	.byte	39
   1238 0F                 4704 	.byte	15
   1239 00                 4705 	.byte	0
   123A F1                 4706 	.byte	-15
   123B DF                 4707 	.byte	-33
   123C FF                 4708 	.byte	-1
   123D 27                 4709 	.byte	39
   123E 0F                 4710 	.byte	15
   123F 00                 4711 	.byte	0
   1240 DF                 4712 	.byte	-33
   1241 CD                 4713 	.byte	-51
   1242 FF                 4714 	.byte	-1
   1243 27                 4715 	.byte	39
   1244 0C                 4716 	.byte	12
   1245 00                 4717 	.byte	0
   1246 E8                 4718 	.byte	-24
   1247 12                 4719 	.byte	18
   1248 FF                 4720 	.byte	-1
   1249 FA                 4721 	.byte	-6
   124A 27                 4722 	.byte	39
   124B FF                 4723 	.byte	-1
   124C 18                 4724 	.byte	24
   124D EE                 4725 	.byte	-18
   124E FF                 4726 	.byte	-1
   124F 06                 4727 	.byte	6
   1250 D9                 4728 	.byte	-39
   1251 FF                 4729 	.byte	-1
   1252 E8                 4730 	.byte	-24
   1253 12                 4731 	.byte	18
   1254 01                 4732 	.byte	1
                           4733 	.globl _height1FallingBack3
   1255                    4734 _height1FallingBack3:
   1255 00                 4735 	.byte	0
   1256 12                 4736 	.byte	18
   1257 00                 4737 	.byte	0
   1258 FF                 4738 	.byte	-1
   1259 09                 4739 	.byte	9
   125A 2A                 4740 	.byte	42
   125B FF                 4741 	.byte	-1
   125C 06                 4742 	.byte	6
   125D EE                 4743 	.byte	-18
   125E FF                 4744 	.byte	-1
   125F F7                 4745 	.byte	-9
   1260 D9                 4746 	.byte	-39
   1261 FF                 4747 	.byte	-1
   1262 FA                 4748 	.byte	-6
   1263 0F                 4749 	.byte	15
   1264 FF                 4750 	.byte	-1
   1265 2D                 4751 	.byte	45
   1266 FA                 4752 	.byte	-6
   1267 00                 4753 	.byte	0
   1268 DC                 4754 	.byte	-36
   1269 30                 4755 	.byte	48
   126A FF                 4756 	.byte	-1
   126B 2D                 4757 	.byte	45
   126C F7                 4758 	.byte	-9
   126D 00                 4759 	.byte	0
   126E D9                 4760 	.byte	-39
   126F F7                 4761 	.byte	-9
   1270 FF                 4762 	.byte	-1
   1271 2D                 4763 	.byte	45
   1272 FA                 4764 	.byte	-6
   1273 00                 4765 	.byte	0
   1274 CA                 4766 	.byte	-54
   1275 DF                 4767 	.byte	-33
   1276 FF                 4768 	.byte	-1
   1277 2D                 4769 	.byte	45
   1278 FA                 4770 	.byte	-6
   1279 00                 4771 	.byte	0
   127A FA                 4772 	.byte	-6
   127B 0F                 4773 	.byte	15
   127C FF                 4774 	.byte	-1
   127D 09                 4775 	.byte	9
   127E 27                 4776 	.byte	39
   127F FF                 4777 	.byte	-1
   1280 06                 4778 	.byte	6
   1281 F1                 4779 	.byte	-15
   1282 FF                 4780 	.byte	-1
   1283 F7                 4781 	.byte	-9
   1284 D9                 4782 	.byte	-39
   1285 FF                 4783 	.byte	-1
   1286 FA                 4784 	.byte	-6
   1287 0F                 4785 	.byte	15
   1288 01                 4786 	.byte	1
                           4787 	.globl _height1FallingFront3
   1289                    4788 _height1FallingFront3:
   1289 FF                 4789 	.byte	-1
   128A 09                 4790 	.byte	9
   128B 2A                 4791 	.byte	42
   128C FF                 4792 	.byte	-1
   128D 24                 4793 	.byte	36
   128E EE                 4794 	.byte	-18
   128F FF                 4795 	.byte	-1
   1290 F7                 4796 	.byte	-9
   1291 D9                 4797 	.byte	-39
   1292 FF                 4798 	.byte	-1
   1293 DC                 4799 	.byte	-36
   1294 0F                 4800 	.byte	15
   1295 FF                 4801 	.byte	-1
   1296 1B                 4802 	.byte	27
   1297 06                 4803 	.byte	6
   1298 00                 4804 	.byte	0
   1299 EE                 4805 	.byte	-18
   129A 24                 4806 	.byte	36
   129B FF                 4807 	.byte	-1
   129C 1B                 4808 	.byte	27
   129D 06                 4809 	.byte	6
   129E 00                 4810 	.byte	0
   129F 09                 4811 	.byte	9
   12A0 E8                 4812 	.byte	-24
   12A1 FF                 4813 	.byte	-1
   12A2 1B                 4814 	.byte	27
   12A3 09                 4815 	.byte	9
   12A4 00                 4816 	.byte	0
   12A5 DC                 4817 	.byte	-36
   12A6 D0                 4818 	.byte	-48
   12A7 FF                 4819 	.byte	-1
   12A8 1B                 4820 	.byte	27
   12A9 09                 4821 	.byte	9
   12AA 00                 4822 	.byte	0
   12AB DC                 4823 	.byte	-36
   12AC 0C                 4824 	.byte	12
   12AD FF                 4825 	.byte	-1
   12AE 09                 4826 	.byte	9
   12AF 2A                 4827 	.byte	42
   12B0 FF                 4828 	.byte	-1
   12B1 24                 4829 	.byte	36
   12B2 F1                 4830 	.byte	-15
   12B3 FF                 4831 	.byte	-1
   12B4 F7                 4832 	.byte	-9
   12B5 D9                 4833 	.byte	-39
   12B6 FF                 4834 	.byte	-1
   12B7 DC                 4835 	.byte	-36
   12B8 0C                 4836 	.byte	12
   12B9 01                 4837 	.byte	1
                           4838 	.globl _height2FallingLeft4
   12BA                    4839 _height2FallingLeft4:
   12BA FF                 4840 	.byte	-1
   12BB 1B                 4841 	.byte	27
   12BC 24                 4842 	.byte	36
   12BD FF                 4843 	.byte	-1
   12BE 18                 4844 	.byte	24
   12BF EE                 4845 	.byte	-18
   12C0 FF                 4846 	.byte	-1
   12C1 E5                 4847 	.byte	-27
   12C2 DF                 4848 	.byte	-33
   12C3 FF                 4849 	.byte	-1
   12C4 E8                 4850 	.byte	-24
   12C5 0F                 4851 	.byte	15
   12C6 FF                 4852 	.byte	-1
   12C7 3C                 4853 	.byte	60
   12C8 D9                 4854 	.byte	-39
   12C9 00                 4855 	.byte	0
   12CA DF                 4856 	.byte	-33
   12CB 4B                 4857 	.byte	75
   12CC FF                 4858 	.byte	-1
   12CD 3C                 4859 	.byte	60
   12CE D9                 4860 	.byte	-39
   12CF 00                 4861 	.byte	0
   12D0 DC                 4862 	.byte	-36
   12D1 15                 4863 	.byte	21
   12D2 FF                 4864 	.byte	-1
   12D3 3C                 4865 	.byte	60
   12D4 D9                 4866 	.byte	-39
   12D5 00                 4867 	.byte	0
   12D6 A9                 4868 	.byte	-87
   12D7 06                 4869 	.byte	6
   12D8 FF                 4870 	.byte	-1
   12D9 3C                 4871 	.byte	60
   12DA D6                 4872 	.byte	-42
   12DB 00                 4873 	.byte	0
   12DC E8                 4874 	.byte	-24
   12DD 12                 4875 	.byte	18
   12DE FF                 4876 	.byte	-1
   12DF 1B                 4877 	.byte	27
   12E0 24                 4878 	.byte	36
   12E1 FF                 4879 	.byte	-1
   12E2 18                 4880 	.byte	24
   12E3 EE                 4881 	.byte	-18
   12E4 FF                 4882 	.byte	-1
   12E5 E5                 4883 	.byte	-27
   12E6 DC                 4884 	.byte	-36
   12E7 FF                 4885 	.byte	-1
   12E8 E8                 4886 	.byte	-24
   12E9 12                 4887 	.byte	18
   12EA 01                 4888 	.byte	1
                           4889 	.globl _height2RisingRight4
   12EB                    4890 _height2RisingRight4:
   12EB 00                 4891 	.byte	0
   12EC 12                 4892 	.byte	18
   12ED 54                 4893 	.byte	84
   12EE FF                 4894 	.byte	-1
   12EF 24                 4895 	.byte	36
   12F0 1B                 4896 	.byte	27
   12F1 FF                 4897 	.byte	-1
   12F2 18                 4898 	.byte	24
   12F3 EE                 4899 	.byte	-18
   12F4 FF                 4900 	.byte	-1
   12F5 DC                 4901 	.byte	-36
   12F6 E5                 4902 	.byte	-27
   12F7 FF                 4903 	.byte	-1
   12F8 E8                 4904 	.byte	-24
   12F9 12                 4905 	.byte	18
   12FA FF                 4906 	.byte	-1
   12FB 21                 4907 	.byte	33
   12FC BE                 4908 	.byte	-66
   12FD 00                 4909 	.byte	0
   12FE 03                 4910 	.byte	3
   12FF 5D                 4911 	.byte	93
   1300 FF                 4912 	.byte	-1
   1301 21                 4913 	.byte	33
   1302 BB                 4914 	.byte	-69
   1303 00                 4915 	.byte	0
   1304 F7                 4916 	.byte	-9
   1305 33                 4917 	.byte	51
   1306 FF                 4918 	.byte	-1
   1307 21                 4919 	.byte	33
   1308 BB                 4920 	.byte	-69
   1309 00                 4921 	.byte	0
   130A BB                 4922 	.byte	-69
   130B 2A                 4923 	.byte	42
   130C FF                 4924 	.byte	-1
   130D 21                 4925 	.byte	33
   130E BE                 4926 	.byte	-66
   130F 00                 4927 	.byte	0
   1310 E8                 4928 	.byte	-24
   1311 12                 4929 	.byte	18
   1312 FF                 4930 	.byte	-1
   1313 24                 4931 	.byte	36
   1314 18                 4932 	.byte	24
   1315 FF                 4933 	.byte	-1
   1316 18                 4934 	.byte	24
   1317 EE                 4935 	.byte	-18
   1318 FF                 4936 	.byte	-1
   1319 DC                 4937 	.byte	-36
   131A E8                 4938 	.byte	-24
   131B FF                 4939 	.byte	-1
   131C E8                 4940 	.byte	-24
   131D 12                 4941 	.byte	18
   131E 01                 4942 	.byte	1
                           4943 	.globl _height2FallingRight4
   131F                    4944 _height2FallingRight4:
   131F 00                 4945 	.byte	0
   1320 15                 4946 	.byte	21
   1321 06                 4947 	.byte	6
   1322 FF                 4948 	.byte	-1
   1323 F4                 4949 	.byte	-12
   1324 24                 4950 	.byte	36
   1325 FF                 4951 	.byte	-1
   1326 18                 4952 	.byte	24
   1327 EE                 4953 	.byte	-18
   1328 FF                 4954 	.byte	-1
   1329 0C                 4955 	.byte	12
   132A DF                 4956 	.byte	-33
   132B FF                 4957 	.byte	-1
   132C E8                 4958 	.byte	-24
   132D 0F                 4959 	.byte	15
   132E FF                 4960 	.byte	-1
   132F 4B                 4961 	.byte	75
   1330 2A                 4962 	.byte	42
   1331 00                 4963 	.byte	0
   1332 A9                 4964 	.byte	-87
   1333 FA                 4965 	.byte	-6
   1334 FF                 4966 	.byte	-1
   1335 4E                 4967 	.byte	78
   1336 2A                 4968 	.byte	42
   1337 00                 4969 	.byte	0
   1338 CA                 4970 	.byte	-54
   1339 C4                 4971 	.byte	-60
   133A FF                 4972 	.byte	-1
   133B 4E                 4973 	.byte	78
   133C 2A                 4974 	.byte	42
   133D 00                 4975 	.byte	0
   133E BE                 4976 	.byte	-66
   133F B5                 4977 	.byte	-75
   1340 FF                 4978 	.byte	-1
   1341 4B                 4979 	.byte	75
   1342 27                 4980 	.byte	39
   1343 00                 4981 	.byte	0
   1344 E8                 4982 	.byte	-24
   1345 12                 4983 	.byte	18
   1346 FF                 4984 	.byte	-1
   1347 F7                 4985 	.byte	-9
   1348 24                 4986 	.byte	36
   1349 FF                 4987 	.byte	-1
   134A 18                 4988 	.byte	24
   134B EE                 4989 	.byte	-18
   134C FF                 4990 	.byte	-1
   134D 09                 4991 	.byte	9
   134E DC                 4992 	.byte	-36
   134F FF                 4993 	.byte	-1
   1350 E8                 4994 	.byte	-24
   1351 12                 4995 	.byte	18
   1352 01                 4996 	.byte	1
                           4997 	.globl _height2RisingLeft4
   1353                    4998 _height2RisingLeft4:
   1353 00                 4999 	.byte	0
   1354 18                 5000 	.byte	24
   1355 E8                 5001 	.byte	-24
   1356 FF                 5002 	.byte	-1
   1357 E8                 5003 	.byte	-24
   1358 18                 5004 	.byte	24
   1359 FF                 5005 	.byte	-1
   135A 18                 5006 	.byte	24
   135B F1                 5007 	.byte	-15
   135C FF                 5008 	.byte	-1
   135D 18                 5009 	.byte	24
   135E E5                 5010 	.byte	-27
   135F FF                 5011 	.byte	-1
   1360 E8                 5012 	.byte	-24
   1361 12                 5013 	.byte	18
   1362 FF                 5014 	.byte	-1
   1363 3F                 5015 	.byte	63
   1364 42                 5016 	.byte	66
   1365 00                 5017 	.byte	0
   1366 A9                 5018 	.byte	-87
   1367 D6                 5019 	.byte	-42
   1368 FF                 5020 	.byte	-1
   1369 3F                 5021 	.byte	63
   136A 42                 5022 	.byte	66
   136B 00                 5023 	.byte	0
   136C D9                 5024 	.byte	-39
   136D AF                 5025 	.byte	-81
   136E FF                 5026 	.byte	-1
   136F 3F                 5027 	.byte	63
   1370 3F                 5028 	.byte	63
   1371 00                 5029 	.byte	0
   1372 D9                 5030 	.byte	-39
   1373 A6                 5031 	.byte	-90
   1374 FF                 5032 	.byte	-1
   1375 3F                 5033 	.byte	63
   1376 42                 5034 	.byte	66
   1377 00                 5035 	.byte	0
   1378 E8                 5036 	.byte	-24
   1379 12                 5037 	.byte	18
   137A FF                 5038 	.byte	-1
   137B E8                 5039 	.byte	-24
   137C 18                 5040 	.byte	24
   137D FF                 5041 	.byte	-1
   137E 18                 5042 	.byte	24
   137F EE                 5043 	.byte	-18
   1380 FF                 5044 	.byte	-1
   1381 18                 5045 	.byte	24
   1382 E8                 5046 	.byte	-24
   1383 FF                 5047 	.byte	-1
   1384 E8                 5048 	.byte	-24
   1385 12                 5049 	.byte	18
   1386 01                 5050 	.byte	1
                           5051 	.globl _height2FallingBack4
   1387                    5052 _height2FallingBack4:
   1387 00                 5053 	.byte	0
   1388 18                 5054 	.byte	24
   1389 00                 5055 	.byte	0
   138A FF                 5056 	.byte	-1
   138B 09                 5057 	.byte	9
   138C 27                 5058 	.byte	39
   138D FF                 5059 	.byte	-1
   138E 00                 5060 	.byte	0
   138F F1                 5061 	.byte	-15
   1390 FF                 5062 	.byte	-1
   1391 F7                 5063 	.byte	-9
   1392 D9                 5064 	.byte	-39
   1393 FF                 5065 	.byte	-1
   1394 00                 5066 	.byte	0
   1395 0F                 5067 	.byte	15
   1396 FF                 5068 	.byte	-1
   1397 5A                 5069 	.byte	90
   1398 EE                 5070 	.byte	-18
   1399 00                 5071 	.byte	0
   139A AF                 5072 	.byte	-81
   139B 39                 5073 	.byte	57
   139C FF                 5074 	.byte	-1
   139D 5A                 5075 	.byte	90
   139E EE                 5076 	.byte	-18
   139F 00                 5077 	.byte	0
   13A0 A6                 5078 	.byte	-90
   13A1 03                 5079 	.byte	3
   13A2 FF                 5080 	.byte	-1
   13A3 5D                 5081 	.byte	93
   13A4 EE                 5082 	.byte	-18
   13A5 00                 5083 	.byte	0
   13A6 9A                 5084 	.byte	-102
   13A7 EB                 5085 	.byte	-21
   13A8 FF                 5086 	.byte	-1
   13A9 5D                 5087 	.byte	93
   13AA EE                 5088 	.byte	-18
   13AB 00                 5089 	.byte	0
   13AC FD                 5090 	.byte	-3
   13AD 0F                 5091 	.byte	15
   13AE FF                 5092 	.byte	-1
   13AF 09                 5093 	.byte	9
   13B0 27                 5094 	.byte	39
   13B1 FF                 5095 	.byte	-1
   13B2 03                 5096 	.byte	3
   13B3 F1                 5097 	.byte	-15
   13B4 FF                 5098 	.byte	-1
   13B5 F7                 5099 	.byte	-9
   13B6 D9                 5100 	.byte	-39
   13B7 FF                 5101 	.byte	-1
   13B8 FD                 5102 	.byte	-3
   13B9 0F                 5103 	.byte	15
   13BA 01                 5104 	.byte	1
                           5105 	.globl _height2RisingFront4
   13BB                    5106 _height2RisingFront4:
   13BB 00                 5107 	.byte	0
   13BC 0F                 5108 	.byte	15
   13BD 0C                 5109 	.byte	12
   13BE FF                 5110 	.byte	-1
   13BF 09                 5111 	.byte	9
   13C0 2A                 5112 	.byte	42
   13C1 FF                 5113 	.byte	-1
   13C2 F1                 5114 	.byte	-15
   13C3 F4                 5115 	.byte	-12
   13C4 FF                 5116 	.byte	-1
   13C5 F7                 5117 	.byte	-9
   13C6 D6                 5118 	.byte	-42
   13C7 FF                 5119 	.byte	-1
   13C8 0F                 5120 	.byte	15
   13C9 0C                 5121 	.byte	12
   13CA FF                 5122 	.byte	-1
   13CB 57                 5123 	.byte	87
   13CC E5                 5124 	.byte	-27
   13CD 00                 5125 	.byte	0
   13CE B2                 5126 	.byte	-78
   13CF 45                 5127 	.byte	69
   13D0 FF                 5128 	.byte	-1
   13D1 57                 5129 	.byte	87
   13D2 E2                 5130 	.byte	-30
   13D3 00                 5131 	.byte	0
   13D4 9A                 5132 	.byte	-102
   13D5 12                 5133 	.byte	18
   13D6 FF                 5134 	.byte	-1
   13D7 57                 5135 	.byte	87
   13D8 E2                 5136 	.byte	-30
   13D9 00                 5137 	.byte	0
   13DA A0                 5138 	.byte	-96
   13DB F4                 5139 	.byte	-12
   13DC FF                 5140 	.byte	-1
   13DD 57                 5141 	.byte	87
   13DE E5                 5142 	.byte	-27
   13DF 00                 5143 	.byte	0
   13E0 0F                 5144 	.byte	15
   13E1 0C                 5145 	.byte	12
   13E2 FF                 5146 	.byte	-1
   13E3 09                 5147 	.byte	9
   13E4 27                 5148 	.byte	39
   13E5 FF                 5149 	.byte	-1
   13E6 F1                 5150 	.byte	-15
   13E7 F4                 5151 	.byte	-12
   13E8 FF                 5152 	.byte	-1
   13E9 F7                 5153 	.byte	-9
   13EA D9                 5154 	.byte	-39
   13EB FF                 5155 	.byte	-1
   13EC 0F                 5156 	.byte	15
   13ED 0C                 5157 	.byte	12
   13EE 01                 5158 	.byte	1
                           5159 	.globl _height2FallingFront4
   13EF                    5160 _height2FallingFront4:
   13EF FF                 5161 	.byte	-1
   13F0 09                 5162 	.byte	9
   13F1 2A                 5163 	.byte	42
   13F2 FF                 5164 	.byte	-1
   13F3 27                 5165 	.byte	39
   13F4 F1                 5166 	.byte	-15
   13F5 FF                 5167 	.byte	-1
   13F6 F7                 5168 	.byte	-9
   13F7 D9                 5169 	.byte	-39
   13F8 FF                 5170 	.byte	-1
   13F9 D9                 5171 	.byte	-39
   13FA 0C                 5172 	.byte	12
   13FB FF                 5173 	.byte	-1
   13FC 2D                 5174 	.byte	45
   13FD 12                 5175 	.byte	18
   13FE 00                 5176 	.byte	0
   13FF DC                 5177 	.byte	-36
   1400 18                 5178 	.byte	24
   1401 FF                 5179 	.byte	-1
   1402 2D                 5180 	.byte	45
   1403 12                 5181 	.byte	18
   1404 00                 5182 	.byte	0
   1405 FA                 5183 	.byte	-6
   1406 DF                 5184 	.byte	-33
   1407 FF                 5185 	.byte	-1
   1408 2D                 5186 	.byte	45
   1409 12                 5187 	.byte	18
   140A 00                 5188 	.byte	0
   140B CA                 5189 	.byte	-54
   140C C7                 5190 	.byte	-57
   140D FF                 5191 	.byte	-1
   140E 2D                 5192 	.byte	45
   140F 0F                 5193 	.byte	15
   1410 00                 5194 	.byte	0
   1411 D9                 5195 	.byte	-39
   1412 0F                 5196 	.byte	15
   1413 FF                 5197 	.byte	-1
   1414 09                 5198 	.byte	9
   1415 2A                 5199 	.byte	42
   1416 FF                 5200 	.byte	-1
   1417 27                 5201 	.byte	39
   1418 F1                 5202 	.byte	-15
   1419 FF                 5203 	.byte	-1
   141A F7                 5204 	.byte	-9
   141B D6                 5205 	.byte	-42
   141C FF                 5206 	.byte	-1
   141D D9                 5207 	.byte	-39
   141E 0F                 5208 	.byte	15
   141F 01                 5209 	.byte	1
                           5210 	.globl _height2RisingBack4
   1420                    5211 _height2RisingBack4:
   1420 00                 5212 	.byte	0
   1421 30                 5213 	.byte	48
   1422 DF                 5214 	.byte	-33
   1423 FF                 5215 	.byte	-1
   1424 09                 5216 	.byte	9
   1425 27                 5217 	.byte	39
   1426 FF                 5218 	.byte	-1
   1427 2D                 5219 	.byte	45
   1428 F7                 5220 	.byte	-9
   1429 FF                 5221 	.byte	-1
   142A F7                 5222 	.byte	-9
   142B D6                 5223 	.byte	-42
   142C FF                 5224 	.byte	-1
   142D D3                 5225 	.byte	-45
   142E 0C                 5226 	.byte	12
   142F FF                 5227 	.byte	-1
   1430 09                 5228 	.byte	9
   1431 1E                 5229 	.byte	30
   1432 00                 5230 	.byte	0
   1433 00                 5231 	.byte	0
   1434 09                 5232 	.byte	9
   1435 FF                 5233 	.byte	-1
   1436 09                 5234 	.byte	9
   1437 1E                 5235 	.byte	30
   1438 00                 5236 	.byte	0
   1439 24                 5237 	.byte	36
   143A D9                 5238 	.byte	-39
   143B FF                 5239 	.byte	-1
   143C 09                 5240 	.byte	9
   143D 1B                 5241 	.byte	27
   143E 00                 5242 	.byte	0
   143F EE                 5243 	.byte	-18
   1440 BB                 5244 	.byte	-69
   1441 FF                 5245 	.byte	-1
   1442 09                 5246 	.byte	9
   1443 1E                 5247 	.byte	30
   1444 00                 5248 	.byte	0
   1445 D3                 5249 	.byte	-45
   1446 0C                 5250 	.byte	12
   1447 FF                 5251 	.byte	-1
   1448 09                 5252 	.byte	9
   1449 27                 5253 	.byte	39
   144A FF                 5254 	.byte	-1
   144B 2D                 5255 	.byte	45
   144C F4                 5256 	.byte	-12
   144D FF                 5257 	.byte	-1
   144E F7                 5258 	.byte	-9
   144F D9                 5259 	.byte	-39
   1450 FF                 5260 	.byte	-1
   1451 D3                 5261 	.byte	-45
   1452 0C                 5262 	.byte	12
   1453 01                 5263 	.byte	1
                           5264 	.globl _depth2RollingLeft4
   1454                    5265 _depth2RollingLeft4:
   1454 FF                 5266 	.byte	-1
   1455 1B                 5267 	.byte	27
   1456 24                 5268 	.byte	36
   1457 FF                 5269 	.byte	-1
   1458 30                 5270 	.byte	48
   1459 DC                 5271 	.byte	-36
   145A FF                 5272 	.byte	-1
   145B E5                 5273 	.byte	-27
   145C DF                 5274 	.byte	-33
   145D FF                 5275 	.byte	-1
   145E D0                 5276 	.byte	-48
   145F 21                 5277 	.byte	33
   1460 FF                 5278 	.byte	-1
   1461 1E                 5279 	.byte	30
   1462 EE                 5280 	.byte	-18
   1463 00                 5281 	.byte	0
   1464 FD                 5282 	.byte	-3
   1465 36                 5283 	.byte	54
   1466 FF                 5284 	.byte	-1
   1467 1E                 5285 	.byte	30
   1468 EB                 5286 	.byte	-21
   1469 00                 5287 	.byte	0
   146A 12                 5288 	.byte	18
   146B F1                 5289 	.byte	-15
   146C FF                 5290 	.byte	-1
   146D 1E                 5291 	.byte	30
   146E EE                 5292 	.byte	-18
   146F 00                 5293 	.byte	0
   1470 C7                 5294 	.byte	-57
   1471 F1                 5295 	.byte	-15
   1472 FF                 5296 	.byte	-1
   1473 1E                 5297 	.byte	30
   1474 EB                 5298 	.byte	-21
   1475 00                 5299 	.byte	0
   1476 D0                 5300 	.byte	-48
   1477 24                 5301 	.byte	36
   1478 FF                 5302 	.byte	-1
   1479 1B                 5303 	.byte	27
   147A 21                 5304 	.byte	33
   147B FF                 5305 	.byte	-1
   147C 30                 5306 	.byte	48
   147D DF                 5307 	.byte	-33
   147E FF                 5308 	.byte	-1
   147F E5                 5309 	.byte	-27
   1480 DC                 5310 	.byte	-36
   1481 FF                 5311 	.byte	-1
   1482 D0                 5312 	.byte	-48
   1483 24                 5313 	.byte	36
   1484 01                 5314 	.byte	1
                           5315 	.globl _depth2RollingRight4
   1485                    5316 _depth2RollingRight4:
   1485 00                 5317 	.byte	0
   1486 15                 5318 	.byte	21
   1487 06                 5319 	.byte	6
   1488 FF                 5320 	.byte	-1
   1489 F4                 5321 	.byte	-12
   148A 24                 5322 	.byte	36
   148B FF                 5323 	.byte	-1
   148C 30                 5324 	.byte	48
   148D DC                 5325 	.byte	-36
   148E FF                 5326 	.byte	-1
   148F 0C                 5327 	.byte	12
   1490 DF                 5328 	.byte	-33
   1491 FF                 5329 	.byte	-1
   1492 D0                 5330 	.byte	-48
   1493 21                 5331 	.byte	33
   1494 FF                 5332 	.byte	-1
   1495 27                 5333 	.byte	39
   1496 15                 5334 	.byte	21
   1497 00                 5335 	.byte	0
   1498 CD                 5336 	.byte	-51
   1499 0F                 5337 	.byte	15
   149A FF                 5338 	.byte	-1
   149B 27                 5339 	.byte	39
   149C 15                 5340 	.byte	21
   149D 00                 5341 	.byte	0
   149E 09                 5342 	.byte	9
   149F C7                 5343 	.byte	-57
   14A0 FF                 5344 	.byte	-1
   14A1 27                 5345 	.byte	39
   14A2 15                 5346 	.byte	21
   14A3 00                 5347 	.byte	0
   14A4 E5                 5348 	.byte	-27
   14A5 CA                 5349 	.byte	-54
   14A6 FF                 5350 	.byte	-1
   14A7 27                 5351 	.byte	39
   14A8 15                 5352 	.byte	21
   14A9 00                 5353 	.byte	0
   14AA D0                 5354 	.byte	-48
   14AB 21                 5355 	.byte	33
   14AC FF                 5356 	.byte	-1
   14AD F4                 5357 	.byte	-12
   14AE 24                 5358 	.byte	36
   14AF FF                 5359 	.byte	-1
   14B0 30                 5360 	.byte	48
   14B1 DC                 5361 	.byte	-36
   14B2 FF                 5362 	.byte	-1
   14B3 0C                 5363 	.byte	12
   14B4 DF                 5364 	.byte	-33
   14B5 FF                 5365 	.byte	-1
   14B6 D0                 5366 	.byte	-48
   14B7 21                 5367 	.byte	33
   14B8 01                 5368 	.byte	1
                           5369 	.globl _width2RollingFront4
   14B9                    5370 _width2RollingFront4:
   14B9 FF                 5371 	.byte	-1
   14BA 12                 5372 	.byte	18
   14BB 54                 5373 	.byte	84
   14BC FF                 5374 	.byte	-1
   14BD 27                 5375 	.byte	39
   14BE F1                 5376 	.byte	-15
   14BF FF                 5377 	.byte	-1
   14C0 EE                 5378 	.byte	-18
   14C1 AF                 5379 	.byte	-81
   14C2 FF                 5380 	.byte	-1
   14C3 D9                 5381 	.byte	-39
   14C4 0C                 5382 	.byte	12
   14C5 FF                 5383 	.byte	-1
   14C6 15                 5384 	.byte	21
   14C7 09                 5385 	.byte	9
   14C8 00                 5386 	.byte	0
   14C9 FD                 5387 	.byte	-3
   14CA 4B                 5388 	.byte	75
   14CB FF                 5389 	.byte	-1
   14CC 15                 5390 	.byte	21
   14CD 09                 5391 	.byte	9
   14CE 00                 5392 	.byte	0
   14CF 12                 5393 	.byte	18
   14D0 E8                 5394 	.byte	-24
   14D1 FF                 5395 	.byte	-1
   14D2 18                 5396 	.byte	24
   14D3 09                 5397 	.byte	9
   14D4 00                 5398 	.byte	0
   14D5 D6                 5399 	.byte	-42
   14D6 A6                 5400 	.byte	-90
   14D7 FF                 5401 	.byte	-1
   14D8 18                 5402 	.byte	24
   14D9 09                 5403 	.byte	9
   14DA 00                 5404 	.byte	0
   14DB D6                 5405 	.byte	-42
   14DC 0C                 5406 	.byte	12
   14DD FF                 5407 	.byte	-1
   14DE 12                 5408 	.byte	18
   14DF 54                 5409 	.byte	84
   14E0 FF                 5410 	.byte	-1
   14E1 2A                 5411 	.byte	42
   14E2 F1                 5412 	.byte	-15
   14E3 FF                 5413 	.byte	-1
   14E4 EE                 5414 	.byte	-18
   14E5 AF                 5415 	.byte	-81
   14E6 FF                 5416 	.byte	-1
   14E7 D6                 5417 	.byte	-42
   14E8 0C                 5418 	.byte	12
   14E9 01                 5419 	.byte	1
                           5420 	.globl _width2RollingBack4
   14EA                    5421 _width2RollingBack4:
   14EA 00                 5422 	.byte	0
   14EB 18                 5423 	.byte	24
   14EC 00                 5424 	.byte	0
   14ED FF                 5425 	.byte	-1
   14EE 12                 5426 	.byte	18
   14EF 51                 5427 	.byte	81
   14F0 FF                 5428 	.byte	-1
   14F1 00                 5429 	.byte	0
   14F2 F1                 5430 	.byte	-15
   14F3 FF                 5431 	.byte	-1
   14F4 EE                 5432 	.byte	-18
   14F5 AF                 5433 	.byte	-81
   14F6 FF                 5434 	.byte	-1
   14F7 00                 5435 	.byte	0
   14F8 0F                 5436 	.byte	15
   14F9 FF                 5437 	.byte	-1
   14FA 2D                 5438 	.byte	45
   14FB F7                 5439 	.byte	-9
   14FC 00                 5440 	.byte	0
   14FD E5                 5441 	.byte	-27
   14FE 5A                 5442 	.byte	90
   14FF FF                 5443 	.byte	-1
   1500 2D                 5444 	.byte	45
   1501 F7                 5445 	.byte	-9
   1502 00                 5446 	.byte	0
   1503 D3                 5447 	.byte	-45
   1504 FA                 5448 	.byte	-6
   1505 FF                 5449 	.byte	-1
   1506 2D                 5450 	.byte	45
   1507 F7                 5451 	.byte	-9
   1508 00                 5452 	.byte	0
   1509 C1                 5453 	.byte	-63
   150A B8                 5454 	.byte	-72
   150B FF                 5455 	.byte	-1
   150C 2D                 5456 	.byte	45
   150D F7                 5457 	.byte	-9
   150E 00                 5458 	.byte	0
   150F 00                 5459 	.byte	0
   1510 0F                 5460 	.byte	15
   1511 FF                 5461 	.byte	-1
   1512 12                 5462 	.byte	18
   1513 51                 5463 	.byte	81
   1514 FF                 5464 	.byte	-1
   1515 00                 5465 	.byte	0
   1516 F1                 5466 	.byte	-15
   1517 FF                 5467 	.byte	-1
   1518 EE                 5468 	.byte	-18
   1519 AF                 5469 	.byte	-81
   151A FF                 5470 	.byte	-1
   151B 00                 5471 	.byte	0
   151C 0F                 5472 	.byte	15
   151D 01                 5473 	.byte	1
                           5474 	.globl _height1FallingLeft4
   151E                    5475 _height1FallingLeft4:
   151E FF                 5476 	.byte	-1
   151F 1B                 5477 	.byte	27
   1520 24                 5478 	.byte	36
   1521 FF                 5479 	.byte	-1
   1522 18                 5480 	.byte	24
   1523 EE                 5481 	.byte	-18
   1524 FF                 5482 	.byte	-1
   1525 E5                 5483 	.byte	-27
   1526 DF                 5484 	.byte	-33
   1527 FF                 5485 	.byte	-1
   1528 E8                 5486 	.byte	-24
   1529 0F                 5487 	.byte	15
   152A FF                 5488 	.byte	-1
   152B 1E                 5489 	.byte	30
   152C EE                 5490 	.byte	-18
   152D 00                 5491 	.byte	0
   152E FD                 5492 	.byte	-3
   152F 36                 5493 	.byte	54
   1530 FF                 5494 	.byte	-1
   1531 1E                 5495 	.byte	30
   1532 EB                 5496 	.byte	-21
   1533 00                 5497 	.byte	0
   1534 FA                 5498 	.byte	-6
   1535 03                 5499 	.byte	3
   1536 FF                 5500 	.byte	-1
   1537 1E                 5501 	.byte	30
   1538 EE                 5502 	.byte	-18
   1539 00                 5503 	.byte	0
   153A C7                 5504 	.byte	-57
   153B F1                 5505 	.byte	-15
   153C FF                 5506 	.byte	-1
   153D 1E                 5507 	.byte	30
   153E EB                 5508 	.byte	-21
   153F 00                 5509 	.byte	0
   1540 E8                 5510 	.byte	-24
   1541 12                 5511 	.byte	18
   1542 FF                 5512 	.byte	-1
   1543 1B                 5513 	.byte	27
   1544 21                 5514 	.byte	33
   1545 FF                 5515 	.byte	-1
   1546 18                 5516 	.byte	24
   1547 F1                 5517 	.byte	-15
   1548 FF                 5518 	.byte	-1
   1549 E5                 5519 	.byte	-27
   154A DC                 5520 	.byte	-36
   154B FF                 5521 	.byte	-1
   154C E8                 5522 	.byte	-24
   154D 12                 5523 	.byte	18
   154E 01                 5524 	.byte	1
                           5525 	.globl _height1FallingRight4
   154F                    5526 _height1FallingRight4:
   154F 00                 5527 	.byte	0
   1550 15                 5528 	.byte	21
   1551 06                 5529 	.byte	6
   1552 FF                 5530 	.byte	-1
   1553 F4                 5531 	.byte	-12
   1554 24                 5532 	.byte	36
   1555 FF                 5533 	.byte	-1
   1556 18                 5534 	.byte	24
   1557 EE                 5535 	.byte	-18
   1558 FF                 5536 	.byte	-1
   1559 0C                 5537 	.byte	12
   155A DF                 5538 	.byte	-33
   155B FF                 5539 	.byte	-1
   155C E8                 5540 	.byte	-24
   155D 0F                 5541 	.byte	15
   155E FF                 5542 	.byte	-1
   155F 27                 5543 	.byte	39
   1560 15                 5544 	.byte	21
   1561 00                 5545 	.byte	0
   1562 CD                 5546 	.byte	-51
   1563 0F                 5547 	.byte	15
   1564 FF                 5548 	.byte	-1
   1565 27                 5549 	.byte	39
   1566 15                 5550 	.byte	21
   1567 00                 5551 	.byte	0
   1568 F1                 5552 	.byte	-15
   1569 D9                 5553 	.byte	-39
   156A FF                 5554 	.byte	-1
   156B 27                 5555 	.byte	39
   156C 15                 5556 	.byte	21
   156D 00                 5557 	.byte	0
   156E E5                 5558 	.byte	-27
   156F CA                 5559 	.byte	-54
   1570 FF                 5560 	.byte	-1
   1571 27                 5561 	.byte	39
   1572 12                 5562 	.byte	18
   1573 00                 5563 	.byte	0
   1574 E8                 5564 	.byte	-24
   1575 12                 5565 	.byte	18
   1576 FF                 5566 	.byte	-1
   1577 F4                 5567 	.byte	-12
   1578 24                 5568 	.byte	36
   1579 FF                 5569 	.byte	-1
   157A 18                 5570 	.byte	24
   157B EE                 5571 	.byte	-18
   157C FF                 5572 	.byte	-1
   157D 0C                 5573 	.byte	12
   157E DC                 5574 	.byte	-36
   157F FF                 5575 	.byte	-1
   1580 E8                 5576 	.byte	-24
   1581 12                 5577 	.byte	18
   1582 01                 5578 	.byte	1
                           5579 	.globl _height1FallingBack4
   1583                    5580 _height1FallingBack4:
   1583 00                 5581 	.byte	0
   1584 18                 5582 	.byte	24
   1585 00                 5583 	.byte	0
   1586 FF                 5584 	.byte	-1
   1587 09                 5585 	.byte	9
   1588 27                 5586 	.byte	39
   1589 FF                 5587 	.byte	-1
   158A 00                 5588 	.byte	0
   158B F1                 5589 	.byte	-15
   158C FF                 5590 	.byte	-1
   158D F7                 5591 	.byte	-9
   158E D9                 5592 	.byte	-39
   158F FF                 5593 	.byte	-1
   1590 00                 5594 	.byte	0
   1591 0F                 5595 	.byte	15
   1592 FF                 5596 	.byte	-1
   1593 2D                 5597 	.byte	45
   1594 F7                 5598 	.byte	-9
   1595 00                 5599 	.byte	0
   1596 DC                 5600 	.byte	-36
   1597 30                 5601 	.byte	48
   1598 FF                 5602 	.byte	-1
   1599 2D                 5603 	.byte	45
   159A F7                 5604 	.byte	-9
   159B 00                 5605 	.byte	0
   159C D3                 5606 	.byte	-45
   159D FA                 5607 	.byte	-6
   159E FF                 5608 	.byte	-1
   159F 2D                 5609 	.byte	45
   15A0 F7                 5610 	.byte	-9
   15A1 00                 5611 	.byte	0
   15A2 CA                 5612 	.byte	-54
   15A3 E2                 5613 	.byte	-30
   15A4 FF                 5614 	.byte	-1
   15A5 2D                 5615 	.byte	45
   15A6 F7                 5616 	.byte	-9
   15A7 00                 5617 	.byte	0
   15A8 00                 5618 	.byte	0
   15A9 0F                 5619 	.byte	15
   15AA FF                 5620 	.byte	-1
   15AB 09                 5621 	.byte	9
   15AC 27                 5622 	.byte	39
   15AD FF                 5623 	.byte	-1
   15AE 00                 5624 	.byte	0
   15AF F1                 5625 	.byte	-15
   15B0 FF                 5626 	.byte	-1
   15B1 F7                 5627 	.byte	-9
   15B2 D9                 5628 	.byte	-39
   15B3 FF                 5629 	.byte	-1
   15B4 00                 5630 	.byte	0
   15B5 0F                 5631 	.byte	15
   15B6 01                 5632 	.byte	1
                           5633 	.globl _height1FallingFront4
   15B7                    5634 _height1FallingFront4:
   15B7 FF                 5635 	.byte	-1
   15B8 09                 5636 	.byte	9
   15B9 2A                 5637 	.byte	42
   15BA FF                 5638 	.byte	-1
   15BB 27                 5639 	.byte	39
   15BC F1                 5640 	.byte	-15
   15BD FF                 5641 	.byte	-1
   15BE F7                 5642 	.byte	-9
   15BF D9                 5643 	.byte	-39
   15C0 FF                 5644 	.byte	-1
   15C1 D9                 5645 	.byte	-39
   15C2 0C                 5646 	.byte	12
   15C3 FF                 5647 	.byte	-1
   15C4 15                 5648 	.byte	21
   15C5 09                 5649 	.byte	9
   15C6 00                 5650 	.byte	0
   15C7 F4                 5651 	.byte	-12
   15C8 21                 5652 	.byte	33
   15C9 FF                 5653 	.byte	-1
   15CA 15                 5654 	.byte	21
   15CB 09                 5655 	.byte	9
   15CC 00                 5656 	.byte	0
   15CD 12                 5657 	.byte	18
   15CE E8                 5658 	.byte	-24
   15CF FF                 5659 	.byte	-1
   15D0 18                 5660 	.byte	24
   15D1 09                 5661 	.byte	9
   15D2 00                 5662 	.byte	0
   15D3 DF                 5663 	.byte	-33
   15D4 D0                 5664 	.byte	-48
   15D5 FF                 5665 	.byte	-1
   15D6 18                 5666 	.byte	24
   15D7 09                 5667 	.byte	9
   15D8 00                 5668 	.byte	0
   15D9 D6                 5669 	.byte	-42
   15DA 0C                 5670 	.byte	12
   15DB FF                 5671 	.byte	-1
   15DC 09                 5672 	.byte	9
   15DD 2A                 5673 	.byte	42
   15DE FF                 5674 	.byte	-1
   15DF 2A                 5675 	.byte	42
   15E0 F1                 5676 	.byte	-15
   15E1 FF                 5677 	.byte	-1
   15E2 F7                 5678 	.byte	-9
   15E3 D9                 5679 	.byte	-39
   15E4 FF                 5680 	.byte	-1
   15E5 D6                 5681 	.byte	-42
   15E6 0C                 5682 	.byte	12
   15E7 01                 5683 	.byte	1
                           5684 	.globl _height2FallingLeft5
   15E8                    5685 _height2FallingLeft5:
   15E8 FF                 5686 	.byte	-1
   15E9 1E                 5687 	.byte	30
   15EA 21                 5688 	.byte	33
   15EB FF                 5689 	.byte	-1
   15EC 18                 5690 	.byte	24
   15ED EE                 5691 	.byte	-18
   15EE FF                 5692 	.byte	-1
   15EF E2                 5693 	.byte	-30
   15F0 E2                 5694 	.byte	-30
   15F1 FF                 5695 	.byte	-1
   15F2 E8                 5696 	.byte	-24
   15F3 0F                 5697 	.byte	15
   15F4 FF                 5698 	.byte	-1
   15F5 33                 5699 	.byte	51
   15F6 D0                 5700 	.byte	-48
   15F7 00                 5701 	.byte	0
   15F8 EB                 5702 	.byte	-21
   15F9 51                 5703 	.byte	81
   15FA FF                 5704 	.byte	-1
   15FB 33                 5705 	.byte	51
   15FC D0                 5706 	.byte	-48
   15FD 00                 5707 	.byte	0
   15FE E5                 5708 	.byte	-27
   15FF 1E                 5709 	.byte	30
   1600 FF                 5710 	.byte	-1
   1601 33                 5711 	.byte	51
   1602 D0                 5712 	.byte	-48
   1603 00                 5713 	.byte	0
   1604 AF                 5714 	.byte	-81
   1605 12                 5715 	.byte	18
   1606 FF                 5716 	.byte	-1
   1607 33                 5717 	.byte	51
   1608 CD                 5718 	.byte	-51
   1609 00                 5719 	.byte	0
   160A E8                 5720 	.byte	-24
   160B 12                 5721 	.byte	18
   160C FF                 5722 	.byte	-1
   160D 1E                 5723 	.byte	30
   160E 21                 5724 	.byte	33
   160F FF                 5725 	.byte	-1
   1610 18                 5726 	.byte	24
   1611 EE                 5727 	.byte	-18
   1612 FF                 5728 	.byte	-1
   1613 E2                 5729 	.byte	-30
   1614 DF                 5730 	.byte	-33
   1615 FF                 5731 	.byte	-1
   1616 E8                 5732 	.byte	-24
   1617 12                 5733 	.byte	18
   1618 01                 5734 	.byte	1
                           5735 	.globl _height2RisingRight5
   1619                    5736 _height2RisingRight5:
   1619 00                 5737 	.byte	0
   161A 12                 5738 	.byte	18
   161B 54                 5739 	.byte	84
   161C FF                 5740 	.byte	-1
   161D 21                 5741 	.byte	33
   161E 1E                 5742 	.byte	30
   161F FF                 5743 	.byte	-1
   1620 18                 5744 	.byte	24
   1621 EE                 5745 	.byte	-18
   1622 FF                 5746 	.byte	-1
   1623 DF                 5747 	.byte	-33
   1624 E2                 5748 	.byte	-30
   1625 FF                 5749 	.byte	-1
   1626 E8                 5750 	.byte	-24
   1627 12                 5751 	.byte	18
   1628 FF                 5752 	.byte	-1
   1629 2A                 5753 	.byte	42
   162A C4                 5754 	.byte	-60
   162B 00                 5755 	.byte	0
   162C F7                 5756 	.byte	-9
   162D 5A                 5757 	.byte	90
   162E FF                 5758 	.byte	-1
   162F 2A                 5759 	.byte	42
   1630 C4                 5760 	.byte	-60
   1631 00                 5761 	.byte	0
   1632 EE                 5762 	.byte	-18
   1633 2A                 5763 	.byte	42
   1634 FF                 5764 	.byte	-1
   1635 2A                 5765 	.byte	42
   1636 C4                 5766 	.byte	-60
   1637 00                 5767 	.byte	0
   1638 B5                 5768 	.byte	-75
   1639 1E                 5769 	.byte	30
   163A FF                 5770 	.byte	-1
   163B 2A                 5771 	.byte	42
   163C C4                 5772 	.byte	-60
   163D 00                 5773 	.byte	0
   163E E8                 5774 	.byte	-24
   163F 12                 5775 	.byte	18
   1640 FF                 5776 	.byte	-1
   1641 21                 5777 	.byte	33
   1642 1E                 5778 	.byte	30
   1643 FF                 5779 	.byte	-1
   1644 18                 5780 	.byte	24
   1645 EE                 5781 	.byte	-18
   1646 FF                 5782 	.byte	-1
   1647 DF                 5783 	.byte	-33
   1648 E2                 5784 	.byte	-30
   1649 FF                 5785 	.byte	-1
   164A E8                 5786 	.byte	-24
   164B 12                 5787 	.byte	18
   164C 01                 5788 	.byte	1
                           5789 	.globl _height2FallingRight5
   164D                    5790 _height2FallingRight5:
   164D 00                 5791 	.byte	0
   164E 1B                 5792 	.byte	27
   164F 09                 5793 	.byte	9
   1650 FF                 5794 	.byte	-1
   1651 EE                 5795 	.byte	-18
   1652 21                 5796 	.byte	33
   1653 FF                 5797 	.byte	-1
   1654 18                 5798 	.byte	24
   1655 EE                 5799 	.byte	-18
   1656 FF                 5800 	.byte	-1
   1657 12                 5801 	.byte	18
   1658 E2                 5802 	.byte	-30
   1659 FF                 5803 	.byte	-1
   165A E8                 5804 	.byte	-24
   165B 0F                 5805 	.byte	15
   165C FF                 5806 	.byte	-1
   165D 48                 5807 	.byte	72
   165E 33                 5808 	.byte	51
   165F 00                 5809 	.byte	0
   1660 A6                 5810 	.byte	-90
   1661 EE                 5811 	.byte	-18
   1662 FF                 5812 	.byte	-1
   1663 48                 5813 	.byte	72
   1664 33                 5814 	.byte	51
   1665 00                 5815 	.byte	0
   1666 D0                 5816 	.byte	-48
   1667 BB                 5817 	.byte	-69
   1668 FF                 5818 	.byte	-1
   1669 48                 5819 	.byte	72
   166A 33                 5820 	.byte	51
   166B 00                 5821 	.byte	0
   166C CA                 5822 	.byte	-54
   166D AF                 5823 	.byte	-81
   166E FF                 5824 	.byte	-1
   166F 48                 5825 	.byte	72
   1670 30                 5826 	.byte	48
   1671 00                 5827 	.byte	0
   1672 E8                 5828 	.byte	-24
   1673 12                 5829 	.byte	18
   1674 FF                 5830 	.byte	-1
   1675 EE                 5831 	.byte	-18
   1676 21                 5832 	.byte	33
   1677 FF                 5833 	.byte	-1
   1678 18                 5834 	.byte	24
   1679 EE                 5835 	.byte	-18
   167A FF                 5836 	.byte	-1
   167B 12                 5837 	.byte	18
   167C DF                 5838 	.byte	-33
   167D FF                 5839 	.byte	-1
   167E E8                 5840 	.byte	-24
   167F 12                 5841 	.byte	18
   1680 01                 5842 	.byte	1
                           5843 	.globl _height2RisingLeft5
   1681                    5844 _height2RisingLeft5:
   1681 00                 5845 	.byte	0
   1682 15                 5846 	.byte	21
   1683 E5                 5847 	.byte	-27
   1684 FF                 5848 	.byte	-1
   1685 EB                 5849 	.byte	-21
   1686 1B                 5850 	.byte	27
   1687 FF                 5851 	.byte	-1
   1688 18                 5852 	.byte	24
   1689 F1                 5853 	.byte	-15
   168A FF                 5854 	.byte	-1
   168B 15                 5855 	.byte	21
   168C E2                 5856 	.byte	-30
   168D FF                 5857 	.byte	-1
   168E E8                 5858 	.byte	-24
   168F 12                 5859 	.byte	18
   1690 FF                 5860 	.byte	-1
   1691 45                 5861 	.byte	69
   1692 39                 5862 	.byte	57
   1693 00                 5863 	.byte	0
   1694 A6                 5864 	.byte	-90
   1695 E2                 5865 	.byte	-30
   1696 FF                 5866 	.byte	-1
   1697 45                 5867 	.byte	69
   1698 3C                 5868 	.byte	60
   1699 00                 5869 	.byte	0
   169A D3                 5870 	.byte	-45
   169B B5                 5871 	.byte	-75
   169C FF                 5872 	.byte	-1
   169D 45                 5873 	.byte	69
   169E 39                 5874 	.byte	57
   169F 00                 5875 	.byte	0
   16A0 D0                 5876 	.byte	-48
   16A1 A9                 5877 	.byte	-87
   16A2 FF                 5878 	.byte	-1
   16A3 45                 5879 	.byte	69
   16A4 39                 5880 	.byte	57
   16A5 00                 5881 	.byte	0
   16A6 E8                 5882 	.byte	-24
   16A7 12                 5883 	.byte	18
   16A8 FF                 5884 	.byte	-1
   16A9 EB                 5885 	.byte	-21
   16AA 1E                 5886 	.byte	30
   16AB FF                 5887 	.byte	-1
   16AC 18                 5888 	.byte	24
   16AD EE                 5889 	.byte	-18
   16AE FF                 5890 	.byte	-1
   16AF 15                 5891 	.byte	21
   16B0 E2                 5892 	.byte	-30
   16B1 FF                 5893 	.byte	-1
   16B2 E8                 5894 	.byte	-24
   16B3 12                 5895 	.byte	18
   16B4 01                 5896 	.byte	1
                           5897 	.globl _height2FallingBack5
   16B5                    5898 _height2FallingBack5:
   16B5 00                 5899 	.byte	0
   16B6 1E                 5900 	.byte	30
   16B7 00                 5901 	.byte	0
   16B8 FF                 5902 	.byte	-1
   16B9 09                 5903 	.byte	9
   16BA 27                 5904 	.byte	39
   16BB FF                 5905 	.byte	-1
   16BC FA                 5906 	.byte	-6
   16BD F1                 5907 	.byte	-15
   16BE FF                 5908 	.byte	-1
   16BF F7                 5909 	.byte	-9
   16C0 D9                 5910 	.byte	-39
   16C1 FF                 5911 	.byte	-1
   16C2 06                 5912 	.byte	6
   16C3 0F                 5913 	.byte	15
   16C4 FF                 5914 	.byte	-1
   16C5 5A                 5915 	.byte	90
   16C6 E8                 5916 	.byte	-24
   16C7 00                 5917 	.byte	0
   16C8 AF                 5918 	.byte	-81
   16C9 3F                 5919 	.byte	63
   16CA FF                 5920 	.byte	-1
   16CB 5A                 5921 	.byte	90
   16CC E8                 5922 	.byte	-24
   16CD 00                 5923 	.byte	0
   16CE A0                 5924 	.byte	-96
   16CF 09                 5925 	.byte	9
   16D0 FF                 5926 	.byte	-1
   16D1 5A                 5927 	.byte	90
   16D2 EB                 5928 	.byte	-21
   16D3 00                 5929 	.byte	0
   16D4 9D                 5930 	.byte	-99
   16D5 EE                 5931 	.byte	-18
   16D6 FF                 5932 	.byte	-1
   16D7 5A                 5933 	.byte	90
   16D8 EB                 5934 	.byte	-21
   16D9 00                 5935 	.byte	0
   16DA 06                 5936 	.byte	6
   16DB 0C                 5937 	.byte	12
   16DC FF                 5938 	.byte	-1
   16DD 09                 5939 	.byte	9
   16DE 27                 5940 	.byte	39
   16DF FF                 5941 	.byte	-1
   16E0 FA                 5942 	.byte	-6
   16E1 F4                 5943 	.byte	-12
   16E2 FF                 5944 	.byte	-1
   16E3 F7                 5945 	.byte	-9
   16E4 D9                 5946 	.byte	-39
   16E5 FF                 5947 	.byte	-1
   16E6 06                 5948 	.byte	6
   16E7 0C                 5949 	.byte	12
   16E8 01                 5950 	.byte	1
                           5951 	.globl _height2RisingFront5
   16E9                    5952 _height2RisingFront5:
   16E9 00                 5953 	.byte	0
   16EA 0C                 5954 	.byte	12
   16EB 0C                 5955 	.byte	12
   16EC FF                 5956 	.byte	-1
   16ED 09                 5957 	.byte	9
   16EE 2A                 5958 	.byte	42
   16EF FF                 5959 	.byte	-1
   16F0 F4                 5960 	.byte	-12
   16F1 F4                 5961 	.byte	-12
   16F2 FF                 5962 	.byte	-1
   16F3 F7                 5963 	.byte	-9
   16F4 D6                 5964 	.byte	-42
   16F5 FF                 5965 	.byte	-1
   16F6 0C                 5966 	.byte	12
   16F7 0C                 5967 	.byte	12
   16F8 FF                 5968 	.byte	-1
   16F9 57                 5969 	.byte	87
   16FA EB                 5970 	.byte	-21
   16FB 00                 5971 	.byte	0
   16FC B2                 5972 	.byte	-78
   16FD 3F                 5973 	.byte	63
   16FE FF                 5974 	.byte	-1
   16FF 57                 5975 	.byte	87
   1700 E8                 5976 	.byte	-24
   1701 00                 5977 	.byte	0
   1702 9D                 5978 	.byte	-99
   1703 0C                 5979 	.byte	12
   1704 FF                 5980 	.byte	-1
   1705 5A                 5981 	.byte	90
   1706 E8                 5982 	.byte	-24
   1707 00                 5983 	.byte	0
   1708 9D                 5984 	.byte	-99
   1709 EE                 5985 	.byte	-18
   170A FF                 5986 	.byte	-1
   170B 5A                 5987 	.byte	90
   170C EB                 5988 	.byte	-21
   170D 00                 5989 	.byte	0
   170E 09                 5990 	.byte	9
   170F 0C                 5991 	.byte	12
   1710 FF                 5992 	.byte	-1
   1711 09                 5993 	.byte	9
   1712 27                 5994 	.byte	39
   1713 FF                 5995 	.byte	-1
   1714 F7                 5996 	.byte	-9
   1715 F4                 5997 	.byte	-12
   1716 FF                 5998 	.byte	-1
   1717 F7                 5999 	.byte	-9
   1718 D9                 6000 	.byte	-39
   1719 FF                 6001 	.byte	-1
   171A 09                 6002 	.byte	9
   171B 0C                 6003 	.byte	12
   171C 01                 6004 	.byte	1
                           6005 	.globl _height2FallingFront5
   171D                    6006 _height2FallingFront5:
   171D FF                 6007 	.byte	-1
   171E 09                 6008 	.byte	9
   171F 2A                 6009 	.byte	42
   1720 FF                 6010 	.byte	-1
   1721 2A                 6011 	.byte	42
   1722 F1                 6012 	.byte	-15
   1723 FF                 6013 	.byte	-1
   1724 F7                 6014 	.byte	-9
   1725 D9                 6015 	.byte	-39
   1726 FF                 6016 	.byte	-1
   1727 D6                 6017 	.byte	-42
   1728 0C                 6018 	.byte	12
   1729 FF                 6019 	.byte	-1
   172A 21                 6020 	.byte	33
   172B 15                 6021 	.byte	21
   172C 00                 6022 	.byte	0
   172D E8                 6023 	.byte	-24
   172E 15                 6024 	.byte	21
   172F FF                 6025 	.byte	-1
   1730 21                 6026 	.byte	33
   1731 15                 6027 	.byte	21
   1732 00                 6028 	.byte	0
   1733 09                 6029 	.byte	9
   1734 DC                 6030 	.byte	-36
   1735 FF                 6031 	.byte	-1
   1736 21                 6032 	.byte	33
   1737 18                 6033 	.byte	24
   1738 00                 6034 	.byte	0
   1739 D6                 6035 	.byte	-42
   173A C1                 6036 	.byte	-63
   173B FF                 6037 	.byte	-1
   173C 21                 6038 	.byte	33
   173D 15                 6039 	.byte	21
   173E 00                 6040 	.byte	0
   173F D6                 6041 	.byte	-42
   1740 0C                 6042 	.byte	12
   1741 FF                 6043 	.byte	-1
   1742 09                 6044 	.byte	9
   1743 2A                 6045 	.byte	42
   1744 FF                 6046 	.byte	-1
   1745 2A                 6047 	.byte	42
   1746 F4                 6048 	.byte	-12
   1747 FF                 6049 	.byte	-1
   1748 F7                 6050 	.byte	-9
   1749 D6                 6051 	.byte	-42
   174A FF                 6052 	.byte	-1
   174B D6                 6053 	.byte	-42
   174C 0C                 6054 	.byte	12
   174D 01                 6055 	.byte	1
                           6056 	.globl _height2RisingBack5
   174E                    6057 _height2RisingBack5:
   174E 00                 6058 	.byte	0
   174F 30                 6059 	.byte	48
   1750 DF                 6060 	.byte	-33
   1751 FF                 6061 	.byte	-1
   1752 09                 6062 	.byte	9
   1753 27                 6063 	.byte	39
   1754 FF                 6064 	.byte	-1
   1755 2D                 6065 	.byte	45
   1756 F7                 6066 	.byte	-9
   1757 FF                 6067 	.byte	-1
   1758 F7                 6068 	.byte	-9
   1759 D6                 6069 	.byte	-42
   175A FF                 6070 	.byte	-1
   175B D3                 6071 	.byte	-45
   175C 0C                 6072 	.byte	12
   175D FF                 6073 	.byte	-1
   175E 15                 6074 	.byte	21
   175F 18                 6075 	.byte	24
   1760 00                 6076 	.byte	0
   1761 F4                 6077 	.byte	-12
   1762 0F                 6078 	.byte	15
   1763 FF                 6079 	.byte	-1
   1764 15                 6080 	.byte	21
   1765 18                 6081 	.byte	24
   1766 00                 6082 	.byte	0
   1767 18                 6083 	.byte	24
   1768 DF                 6084 	.byte	-33
   1769 FF                 6085 	.byte	-1
   176A 15                 6086 	.byte	21
   176B 15                 6087 	.byte	21
   176C 00                 6088 	.byte	0
   176D E2                 6089 	.byte	-30
   176E C1                 6090 	.byte	-63
   176F FF                 6091 	.byte	-1
   1770 15                 6092 	.byte	21
   1771 18                 6093 	.byte	24
   1772 00                 6094 	.byte	0
   1773 D3                 6095 	.byte	-45
   1774 0C                 6096 	.byte	12
   1775 FF                 6097 	.byte	-1
   1776 09                 6098 	.byte	9
   1777 27                 6099 	.byte	39
   1778 FF                 6100 	.byte	-1
   1779 2D                 6101 	.byte	45
   177A F4                 6102 	.byte	-12
   177B FF                 6103 	.byte	-1
   177C F7                 6104 	.byte	-9
   177D D9                 6105 	.byte	-39
   177E FF                 6106 	.byte	-1
   177F D3                 6107 	.byte	-45
   1780 0C                 6108 	.byte	12
   1781 01                 6109 	.byte	1
                           6110 	.globl _depth2RollingLeft5
   1782                    6111 _depth2RollingLeft5:
   1782 FF                 6112 	.byte	-1
   1783 1E                 6113 	.byte	30
   1784 21                 6114 	.byte	33
   1785 FF                 6115 	.byte	-1
   1786 30                 6116 	.byte	48
   1787 DF                 6117 	.byte	-33
   1788 FF                 6118 	.byte	-1
   1789 E2                 6119 	.byte	-30
   178A DF                 6120 	.byte	-33
   178B FF                 6121 	.byte	-1
   178C D0                 6122 	.byte	-48
   178D 21                 6123 	.byte	33
   178E FF                 6124 	.byte	-1
   178F 18                 6125 	.byte	24
   1790 E8                 6126 	.byte	-24
   1791 00                 6127 	.byte	0
   1792 06                 6128 	.byte	6
   1793 39                 6129 	.byte	57
   1794 FF                 6130 	.byte	-1
   1795 1B                 6131 	.byte	27
   1796 E8                 6132 	.byte	-24
   1797 00                 6133 	.byte	0
   1798 15                 6134 	.byte	21
   1799 F7                 6135 	.byte	-9
   179A FF                 6136 	.byte	-1
   179B 1B                 6137 	.byte	27
   179C E8                 6138 	.byte	-24
   179D 00                 6139 	.byte	0
   179E C7                 6140 	.byte	-57
   179F F7                 6141 	.byte	-9
   17A0 FF                 6142 	.byte	-1
   17A1 18                 6143 	.byte	24
   17A2 E5                 6144 	.byte	-27
   17A3 00                 6145 	.byte	0
   17A4 D0                 6146 	.byte	-48
   17A5 24                 6147 	.byte	36
   17A6 FF                 6148 	.byte	-1
   17A7 21                 6149 	.byte	33
   17A8 21                 6150 	.byte	33
   17A9 FF                 6151 	.byte	-1
   17AA 30                 6152 	.byte	48
   17AB DF                 6153 	.byte	-33
   17AC FF                 6154 	.byte	-1
   17AD DF                 6155 	.byte	-33
   17AE DC                 6156 	.byte	-36
   17AF FF                 6157 	.byte	-1
   17B0 D0                 6158 	.byte	-48
   17B1 24                 6159 	.byte	36
   17B2 01                 6160 	.byte	1
                           6161 	.globl _depth2RollingRight5
   17B3                    6162 _depth2RollingRight5:
   17B3 00                 6163 	.byte	0
   17B4 1B                 6164 	.byte	27
   17B5 09                 6165 	.byte	9
   17B6 FF                 6166 	.byte	-1
   17B7 EE                 6167 	.byte	-18
   17B8 21                 6168 	.byte	33
   17B9 FF                 6169 	.byte	-1
   17BA 30                 6170 	.byte	48
   17BB DC                 6171 	.byte	-36
   17BC FF                 6172 	.byte	-1
   17BD 12                 6173 	.byte	18
   17BE E2                 6174 	.byte	-30
   17BF FF                 6175 	.byte	-1
   17C0 D0                 6176 	.byte	-48
   17C1 21                 6177 	.byte	33
   17C2 FF                 6178 	.byte	-1
   17C3 24                 6179 	.byte	36
   17C4 18                 6180 	.byte	24
   17C5 00                 6181 	.byte	0
   17C6 CA                 6182 	.byte	-54
   17C7 09                 6183 	.byte	9
   17C8 FF                 6184 	.byte	-1
   17C9 24                 6185 	.byte	36
   17CA 1B                 6186 	.byte	27
   17CB 00                 6187 	.byte	0
   17CC 0C                 6188 	.byte	12
   17CD C1                 6189 	.byte	-63
   17CE FF                 6190 	.byte	-1
   17CF 24                 6191 	.byte	36
   17D0 1B                 6192 	.byte	27
   17D1 00                 6193 	.byte	0
   17D2 EE                 6194 	.byte	-18
   17D3 C7                 6195 	.byte	-57
   17D4 FF                 6196 	.byte	-1
   17D5 24                 6197 	.byte	36
   17D6 18                 6198 	.byte	24
   17D7 00                 6199 	.byte	0
   17D8 D0                 6200 	.byte	-48
   17D9 21                 6201 	.byte	33
   17DA FF                 6202 	.byte	-1
   17DB EE                 6203 	.byte	-18
   17DC 24                 6204 	.byte	36
   17DD FF                 6205 	.byte	-1
   17DE 30                 6206 	.byte	48
   17DF DC                 6207 	.byte	-36
   17E0 FF                 6208 	.byte	-1
   17E1 12                 6209 	.byte	18
   17E2 DF                 6210 	.byte	-33
   17E3 FF                 6211 	.byte	-1
   17E4 D0                 6212 	.byte	-48
   17E5 21                 6213 	.byte	33
   17E6 01                 6214 	.byte	1
                           6215 	.globl _width2RollingFront5
   17E7                    6216 _width2RollingFront5:
   17E7 FF                 6217 	.byte	-1
   17E8 12                 6218 	.byte	18
   17E9 54                 6219 	.byte	84
   17EA FF                 6220 	.byte	-1
   17EB 2A                 6221 	.byte	42
   17EC F1                 6222 	.byte	-15
   17ED FF                 6223 	.byte	-1
   17EE EE                 6224 	.byte	-18
   17EF AF                 6225 	.byte	-81
   17F0 FF                 6226 	.byte	-1
   17F1 D6                 6227 	.byte	-42
   17F2 0C                 6228 	.byte	12
   17F3 FF                 6229 	.byte	-1
   17F4 0F                 6230 	.byte	15
   17F5 0C                 6231 	.byte	12
   17F6 00                 6232 	.byte	0
   17F7 03                 6233 	.byte	3
   17F8 48                 6234 	.byte	72
   17F9 FF                 6235 	.byte	-1
   17FA 0F                 6236 	.byte	15
   17FB 0C                 6237 	.byte	12
   17FC 00                 6238 	.byte	0
   17FD 1B                 6239 	.byte	27
   17FE E5                 6240 	.byte	-27
   17FF FF                 6241 	.byte	-1
   1800 12                 6242 	.byte	18
   1801 0C                 6243 	.byte	12
   1802 00                 6244 	.byte	0
   1803 DC                 6245 	.byte	-36
   1804 A3                 6246 	.byte	-93
   1805 FF                 6247 	.byte	-1
   1806 12                 6248 	.byte	18
   1807 0C                 6249 	.byte	12
   1808 00                 6250 	.byte	0
   1809 D3                 6251 	.byte	-45
   180A 0C                 6252 	.byte	12
   180B FF                 6253 	.byte	-1
   180C 12                 6254 	.byte	18
   180D 54                 6255 	.byte	84
   180E FF                 6256 	.byte	-1
   180F 2D                 6257 	.byte	45
   1810 F1                 6258 	.byte	-15
   1811 FF                 6259 	.byte	-1
   1812 EE                 6260 	.byte	-18
   1813 AF                 6261 	.byte	-81
   1814 FF                 6262 	.byte	-1
   1815 D3                 6263 	.byte	-45
   1816 0C                 6264 	.byte	12
   1817 01                 6265 	.byte	1
                           6266 	.globl _width2RollingBack5
   1818                    6267 _width2RollingBack5:
   1818 00                 6268 	.byte	0
   1819 1E                 6269 	.byte	30
   181A 00                 6270 	.byte	0
   181B FF                 6271 	.byte	-1
   181C 12                 6272 	.byte	18
   181D 51                 6273 	.byte	81
   181E FF                 6274 	.byte	-1
   181F FA                 6275 	.byte	-6
   1820 F1                 6276 	.byte	-15
   1821 FF                 6277 	.byte	-1
   1822 EE                 6278 	.byte	-18
   1823 AF                 6279 	.byte	-81
   1824 FF                 6280 	.byte	-1
   1825 06                 6281 	.byte	6
   1826 0F                 6282 	.byte	15
   1827 FF                 6283 	.byte	-1
   1828 2D                 6284 	.byte	45
   1829 F4                 6285 	.byte	-12
   182A 00                 6286 	.byte	0
   182B E5                 6287 	.byte	-27
   182C 5D                 6288 	.byte	93
   182D FF                 6289 	.byte	-1
   182E 2D                 6290 	.byte	45
   182F F4                 6291 	.byte	-12
   1830 00                 6292 	.byte	0
   1831 CD                 6293 	.byte	-51
   1832 FD                 6294 	.byte	-3
   1833 FF                 6295 	.byte	-1
   1834 2D                 6296 	.byte	45
   1835 F4                 6297 	.byte	-12
   1836 00                 6298 	.byte	0
   1837 C1                 6299 	.byte	-63
   1838 BB                 6300 	.byte	-69
   1839 FF                 6301 	.byte	-1
   183A 2D                 6302 	.byte	45
   183B F4                 6303 	.byte	-12
   183C 00                 6304 	.byte	0
   183D 06                 6305 	.byte	6
   183E 0F                 6306 	.byte	15
   183F FF                 6307 	.byte	-1
   1840 12                 6308 	.byte	18
   1841 51                 6309 	.byte	81
   1842 FF                 6310 	.byte	-1
   1843 FA                 6311 	.byte	-6
   1844 F1                 6312 	.byte	-15
   1845 FF                 6313 	.byte	-1
   1846 EE                 6314 	.byte	-18
   1847 AF                 6315 	.byte	-81
   1848 FF                 6316 	.byte	-1
   1849 06                 6317 	.byte	6
   184A 0F                 6318 	.byte	15
   184B 01                 6319 	.byte	1
                           6320 	.globl _height1FallingLeft5
   184C                    6321 _height1FallingLeft5:
   184C FF                 6322 	.byte	-1
   184D 1E                 6323 	.byte	30
   184E 21                 6324 	.byte	33
   184F FF                 6325 	.byte	-1
   1850 18                 6326 	.byte	24
   1851 EE                 6327 	.byte	-18
   1852 FF                 6328 	.byte	-1
   1853 E2                 6329 	.byte	-30
   1854 E2                 6330 	.byte	-30
   1855 FF                 6331 	.byte	-1
   1856 E8                 6332 	.byte	-24
   1857 0F                 6333 	.byte	15
   1858 FF                 6334 	.byte	-1
   1859 18                 6335 	.byte	24
   185A E8                 6336 	.byte	-24
   185B 00                 6337 	.byte	0
   185C 06                 6338 	.byte	6
   185D 39                 6339 	.byte	57
   185E FF                 6340 	.byte	-1
   185F 1B                 6341 	.byte	27
   1860 E8                 6342 	.byte	-24
   1861 00                 6343 	.byte	0
   1862 FD                 6344 	.byte	-3
   1863 06                 6345 	.byte	6
   1864 FF                 6346 	.byte	-1
   1865 1B                 6347 	.byte	27
   1866 EB                 6348 	.byte	-21
   1867 00                 6349 	.byte	0
   1868 C7                 6350 	.byte	-57
   1869 F7                 6351 	.byte	-9
   186A FF                 6352 	.byte	-1
   186B 18                 6353 	.byte	24
   186C E5                 6354 	.byte	-27
   186D 00                 6355 	.byte	0
   186E E8                 6356 	.byte	-24
   186F 12                 6357 	.byte	18
   1870 FF                 6358 	.byte	-1
   1871 21                 6359 	.byte	33
   1872 21                 6360 	.byte	33
   1873 FF                 6361 	.byte	-1
   1874 18                 6362 	.byte	24
   1875 F1                 6363 	.byte	-15
   1876 FF                 6364 	.byte	-1
   1877 DF                 6365 	.byte	-33
   1878 DC                 6366 	.byte	-36
   1879 FF                 6367 	.byte	-1
   187A E8                 6368 	.byte	-24
   187B 12                 6369 	.byte	18
   187C 01                 6370 	.byte	1
                           6371 	.globl _height1FallingRight5
   187D                    6372 _height1FallingRight5:
   187D 00                 6373 	.byte	0
   187E 1B                 6374 	.byte	27
   187F 09                 6375 	.byte	9
   1880 FF                 6376 	.byte	-1
   1881 EE                 6377 	.byte	-18
   1882 21                 6378 	.byte	33
   1883 FF                 6379 	.byte	-1
   1884 18                 6380 	.byte	24
   1885 EE                 6381 	.byte	-18
   1886 FF                 6382 	.byte	-1
   1887 12                 6383 	.byte	18
   1888 E2                 6384 	.byte	-30
   1889 FF                 6385 	.byte	-1
   188A E8                 6386 	.byte	-24
   188B 0F                 6387 	.byte	15
   188C FF                 6388 	.byte	-1
   188D 24                 6389 	.byte	36
   188E 18                 6390 	.byte	24
   188F 00                 6391 	.byte	0
   1890 CA                 6392 	.byte	-54
   1891 09                 6393 	.byte	9
   1892 FF                 6394 	.byte	-1
   1893 24                 6395 	.byte	36
   1894 1B                 6396 	.byte	27
   1895 00                 6397 	.byte	0
   1896 F4                 6398 	.byte	-12
   1897 D3                 6399 	.byte	-45
   1898 FF                 6400 	.byte	-1
   1899 24                 6401 	.byte	36
   189A 1B                 6402 	.byte	27
   189B 00                 6403 	.byte	0
   189C EE                 6404 	.byte	-18
   189D C7                 6405 	.byte	-57
   189E FF                 6406 	.byte	-1
   189F 24                 6407 	.byte	36
   18A0 15                 6408 	.byte	21
   18A1 00                 6409 	.byte	0
   18A2 E8                 6410 	.byte	-24
   18A3 12                 6411 	.byte	18
   18A4 FF                 6412 	.byte	-1
   18A5 EE                 6413 	.byte	-18
   18A6 24                 6414 	.byte	36
   18A7 FF                 6415 	.byte	-1
   18A8 18                 6416 	.byte	24
   18A9 EE                 6417 	.byte	-18
   18AA FF                 6418 	.byte	-1
   18AB 12                 6419 	.byte	18
   18AC DC                 6420 	.byte	-36
   18AD FF                 6421 	.byte	-1
   18AE E8                 6422 	.byte	-24
   18AF 12                 6423 	.byte	18
   18B0 01                 6424 	.byte	1
                           6425 	.globl _height1FallingBack5
   18B1                    6426 _height1FallingBack5:
   18B1 00                 6427 	.byte	0
   18B2 1E                 6428 	.byte	30
   18B3 00                 6429 	.byte	0
   18B4 FF                 6430 	.byte	-1
   18B5 09                 6431 	.byte	9
   18B6 27                 6432 	.byte	39
   18B7 FF                 6433 	.byte	-1
   18B8 FA                 6434 	.byte	-6
   18B9 F1                 6435 	.byte	-15
   18BA FF                 6436 	.byte	-1
   18BB F7                 6437 	.byte	-9
   18BC D9                 6438 	.byte	-39
   18BD FF                 6439 	.byte	-1
   18BE 06                 6440 	.byte	6
   18BF 0F                 6441 	.byte	15
   18C0 FF                 6442 	.byte	-1
   18C1 2D                 6443 	.byte	45
   18C2 F4                 6444 	.byte	-12
   18C3 00                 6445 	.byte	0
   18C4 DC                 6446 	.byte	-36
   18C5 33                 6447 	.byte	51
   18C6 FF                 6448 	.byte	-1
   18C7 2D                 6449 	.byte	45
   18C8 F4                 6450 	.byte	-12
   18C9 00                 6451 	.byte	0
   18CA CD                 6452 	.byte	-51
   18CB FD                 6453 	.byte	-3
   18CC FF                 6454 	.byte	-1
   18CD 2D                 6455 	.byte	45
   18CE F4                 6456 	.byte	-12
   18CF 00                 6457 	.byte	0
   18D0 CA                 6458 	.byte	-54
   18D1 E5                 6459 	.byte	-27
   18D2 FF                 6460 	.byte	-1
   18D3 2D                 6461 	.byte	45
   18D4 F4                 6462 	.byte	-12
   18D5 00                 6463 	.byte	0
   18D6 06                 6464 	.byte	6
   18D7 0F                 6465 	.byte	15
   18D8 FF                 6466 	.byte	-1
   18D9 09                 6467 	.byte	9
   18DA 27                 6468 	.byte	39
   18DB FF                 6469 	.byte	-1
   18DC FA                 6470 	.byte	-6
   18DD F1                 6471 	.byte	-15
   18DE FF                 6472 	.byte	-1
   18DF F7                 6473 	.byte	-9
   18E0 D9                 6474 	.byte	-39
   18E1 FF                 6475 	.byte	-1
   18E2 06                 6476 	.byte	6
   18E3 0F                 6477 	.byte	15
   18E4 01                 6478 	.byte	1
                           6479 	.globl _height1FallingFront5
   18E5                    6480 _height1FallingFront5:
   18E5 FF                 6481 	.byte	-1
   18E6 09                 6482 	.byte	9
   18E7 2A                 6483 	.byte	42
   18E8 FF                 6484 	.byte	-1
   18E9 2A                 6485 	.byte	42
   18EA F1                 6486 	.byte	-15
   18EB FF                 6487 	.byte	-1
   18EC F7                 6488 	.byte	-9
   18ED D9                 6489 	.byte	-39
   18EE FF                 6490 	.byte	-1
   18EF D6                 6491 	.byte	-42
   18F0 0C                 6492 	.byte	12
   18F1 FF                 6493 	.byte	-1
   18F2 0F                 6494 	.byte	15
   18F3 0C                 6495 	.byte	12
   18F4 00                 6496 	.byte	0
   18F5 FA                 6497 	.byte	-6
   18F6 1E                 6498 	.byte	30
   18F7 FF                 6499 	.byte	-1
   18F8 0F                 6500 	.byte	15
   18F9 0C                 6501 	.byte	12
   18FA 00                 6502 	.byte	0
   18FB 1B                 6503 	.byte	27
   18FC E5                 6504 	.byte	-27
   18FD FF                 6505 	.byte	-1
   18FE 12                 6506 	.byte	18
   18FF 0C                 6507 	.byte	12
   1900 00                 6508 	.byte	0
   1901 E5                 6509 	.byte	-27
   1902 CD                 6510 	.byte	-51
   1903 FF                 6511 	.byte	-1
   1904 12                 6512 	.byte	18
   1905 0C                 6513 	.byte	12
   1906 00                 6514 	.byte	0
   1907 D3                 6515 	.byte	-45
   1908 0C                 6516 	.byte	12
   1909 FF                 6517 	.byte	-1
   190A 09                 6518 	.byte	9
   190B 2A                 6519 	.byte	42
   190C FF                 6520 	.byte	-1
   190D 2D                 6521 	.byte	45
   190E F1                 6522 	.byte	-15
   190F FF                 6523 	.byte	-1
   1910 F7                 6524 	.byte	-9
   1911 D9                 6525 	.byte	-39
   1912 FF                 6526 	.byte	-1
   1913 D3                 6527 	.byte	-45
   1914 0C                 6528 	.byte	12
   1915 01                 6529 	.byte	1
                           6530 	.globl _height2FallingLeft6
   1916                    6531 _height2FallingLeft6:
   1916 FF                 6532 	.byte	-1
   1917 21                 6533 	.byte	33
   1918 1E                 6534 	.byte	30
   1919 FF                 6535 	.byte	-1
   191A 18                 6536 	.byte	24
   191B EE                 6537 	.byte	-18
   191C FF                 6538 	.byte	-1
   191D DF                 6539 	.byte	-33
   191E E5                 6540 	.byte	-27
   191F FF                 6541 	.byte	-1
   1920 E8                 6542 	.byte	-24
   1921 0F                 6543 	.byte	15
   1922 FF                 6544 	.byte	-1
   1923 2A                 6545 	.byte	42
   1924 C7                 6546 	.byte	-57
   1925 00                 6547 	.byte	0
   1926 F7                 6548 	.byte	-9
   1927 57                 6549 	.byte	87
   1928 FF                 6550 	.byte	-1
   1929 2A                 6551 	.byte	42
   192A C7                 6552 	.byte	-57
   192B 00                 6553 	.byte	0
   192C EE                 6554 	.byte	-18
   192D 27                 6555 	.byte	39
   192E FF                 6556 	.byte	-1
   192F 2A                 6557 	.byte	42
   1930 C7                 6558 	.byte	-57
   1931 00                 6559 	.byte	0
   1932 B5                 6560 	.byte	-75
   1933 1E                 6561 	.byte	30
   1934 FF                 6562 	.byte	-1
   1935 2A                 6563 	.byte	42
   1936 C4                 6564 	.byte	-60
   1937 00                 6565 	.byte	0
   1938 E8                 6566 	.byte	-24
   1939 12                 6567 	.byte	18
   193A FF                 6568 	.byte	-1
   193B 21                 6569 	.byte	33
   193C 1E                 6570 	.byte	30
   193D FF                 6571 	.byte	-1
   193E 18                 6572 	.byte	24
   193F EE                 6573 	.byte	-18
   1940 FF                 6574 	.byte	-1
   1941 DF                 6575 	.byte	-33
   1942 E2                 6576 	.byte	-30
   1943 FF                 6577 	.byte	-1
   1944 E8                 6578 	.byte	-24
   1945 12                 6579 	.byte	18
   1946 01                 6580 	.byte	1
                           6581 	.globl _height2RisingRight6
   1947                    6582 _height2RisingRight6:
   1947 00                 6583 	.byte	0
   1948 12                 6584 	.byte	18
   1949 54                 6585 	.byte	84
   194A FF                 6586 	.byte	-1
   194B 1E                 6587 	.byte	30
   194C 21                 6588 	.byte	33
   194D FF                 6589 	.byte	-1
   194E 18                 6590 	.byte	24
   194F EE                 6591 	.byte	-18
   1950 FF                 6592 	.byte	-1
   1951 E2                 6593 	.byte	-30
   1952 DF                 6594 	.byte	-33
   1953 FF                 6595 	.byte	-1
   1954 E8                 6596 	.byte	-24
   1955 12                 6597 	.byte	18
   1956 FF                 6598 	.byte	-1
   1957 33                 6599 	.byte	51
   1958 CD                 6600 	.byte	-51
   1959 00                 6601 	.byte	0
   195A EB                 6602 	.byte	-21
   195B 54                 6603 	.byte	84
   195C FF                 6604 	.byte	-1
   195D 33                 6605 	.byte	51
   195E CD                 6606 	.byte	-51
   195F 00                 6607 	.byte	0
   1960 E5                 6608 	.byte	-27
   1961 21                 6609 	.byte	33
   1962 FF                 6610 	.byte	-1
   1963 33                 6611 	.byte	51
   1964 CD                 6612 	.byte	-51
   1965 00                 6613 	.byte	0
   1966 AF                 6614 	.byte	-81
   1967 12                 6615 	.byte	18
   1968 FF                 6616 	.byte	-1
   1969 33                 6617 	.byte	51
   196A CD                 6618 	.byte	-51
   196B 00                 6619 	.byte	0
   196C E8                 6620 	.byte	-24
   196D 12                 6621 	.byte	18
   196E FF                 6622 	.byte	-1
   196F 1E                 6623 	.byte	30
   1970 21                 6624 	.byte	33
   1971 FF                 6625 	.byte	-1
   1972 18                 6626 	.byte	24
   1973 EE                 6627 	.byte	-18
   1974 FF                 6628 	.byte	-1
   1975 E2                 6629 	.byte	-30
   1976 DF                 6630 	.byte	-33
   1977 FF                 6631 	.byte	-1
   1978 E8                 6632 	.byte	-24
   1979 12                 6633 	.byte	18
   197A 01                 6634 	.byte	1
                           6635 	.globl _height2FallingRight6
   197B                    6636 _height2FallingRight6:
   197B 00                 6637 	.byte	0
   197C 1E                 6638 	.byte	30
   197D 0C                 6639 	.byte	12
   197E FF                 6640 	.byte	-1
   197F EB                 6641 	.byte	-21
   1980 1E                 6642 	.byte	30
   1981 FF                 6643 	.byte	-1
   1982 18                 6644 	.byte	24
   1983 EE                 6645 	.byte	-18
   1984 FF                 6646 	.byte	-1
   1985 15                 6647 	.byte	21
   1986 E5                 6648 	.byte	-27
   1987 FF                 6649 	.byte	-1
   1988 E8                 6650 	.byte	-24
   1989 0F                 6651 	.byte	15
   198A FF                 6652 	.byte	-1
   198B 45                 6653 	.byte	69
   198C 3C                 6654 	.byte	60
   198D 00                 6655 	.byte	0
   198E A6                 6656 	.byte	-90
   198F E2                 6657 	.byte	-30
   1990 FF                 6658 	.byte	-1
   1991 45                 6659 	.byte	69
   1992 3C                 6660 	.byte	60
   1993 00                 6661 	.byte	0
   1994 D3                 6662 	.byte	-45
   1995 B2                 6663 	.byte	-78
   1996 FF                 6664 	.byte	-1
   1997 45                 6665 	.byte	69
   1998 3C                 6666 	.byte	60
   1999 00                 6667 	.byte	0
   199A D0                 6668 	.byte	-48
   199B A9                 6669 	.byte	-87
   199C FF                 6670 	.byte	-1
   199D 45                 6671 	.byte	69
   199E 39                 6672 	.byte	57
   199F 00                 6673 	.byte	0
   19A0 E8                 6674 	.byte	-24
   19A1 12                 6675 	.byte	18
   19A2 FF                 6676 	.byte	-1
   19A3 EB                 6677 	.byte	-21
   19A4 1E                 6678 	.byte	30
   19A5 FF                 6679 	.byte	-1
   19A6 18                 6680 	.byte	24
   19A7 EE                 6681 	.byte	-18
   19A8 FF                 6682 	.byte	-1
   19A9 15                 6683 	.byte	21
   19AA E2                 6684 	.byte	-30
   19AB FF                 6685 	.byte	-1
   19AC E8                 6686 	.byte	-24
   19AD 12                 6687 	.byte	18
   19AE 01                 6688 	.byte	1
                           6689 	.globl _height2RisingLeft6
   19AF                    6690 _height2RisingLeft6:
   19AF 00                 6691 	.byte	0
   19B0 12                 6692 	.byte	18
   19B1 E2                 6693 	.byte	-30
   19B2 FF                 6694 	.byte	-1
   19B3 EE                 6695 	.byte	-18
   19B4 1E                 6696 	.byte	30
   19B5 FF                 6697 	.byte	-1
   19B6 18                 6698 	.byte	24
   19B7 F1                 6699 	.byte	-15
   19B8 FF                 6700 	.byte	-1
   19B9 12                 6701 	.byte	18
   19BA DF                 6702 	.byte	-33
   19BB FF                 6703 	.byte	-1
   19BC E8                 6704 	.byte	-24
   19BD 12                 6705 	.byte	18
   19BE FF                 6706 	.byte	-1
   19BF 48                 6707 	.byte	72
   19C0 30                 6708 	.byte	48
   19C1 00                 6709 	.byte	0
   19C2 A6                 6710 	.byte	-90
   19C3 EE                 6711 	.byte	-18
   19C4 FF                 6712 	.byte	-1
   19C5 48                 6713 	.byte	72
   19C6 33                 6714 	.byte	51
   19C7 00                 6715 	.byte	0
   19C8 D0                 6716 	.byte	-48
   19C9 BE                 6717 	.byte	-66
   19CA FF                 6718 	.byte	-1
   19CB 48                 6719 	.byte	72
   19CC 30                 6720 	.byte	48
   19CD 00                 6721 	.byte	0
   19CE CA                 6722 	.byte	-54
   19CF AF                 6723 	.byte	-81
   19D0 FF                 6724 	.byte	-1
   19D1 48                 6725 	.byte	72
   19D2 30                 6726 	.byte	48
   19D3 00                 6727 	.byte	0
   19D4 E8                 6728 	.byte	-24
   19D5 12                 6729 	.byte	18
   19D6 FF                 6730 	.byte	-1
   19D7 EE                 6731 	.byte	-18
   19D8 21                 6732 	.byte	33
   19D9 FF                 6733 	.byte	-1
   19DA 18                 6734 	.byte	24
   19DB EE                 6735 	.byte	-18
   19DC FF                 6736 	.byte	-1
   19DD 12                 6737 	.byte	18
   19DE DF                 6738 	.byte	-33
   19DF FF                 6739 	.byte	-1
   19E0 E8                 6740 	.byte	-24
   19E1 12                 6741 	.byte	18
   19E2 01                 6742 	.byte	1
                           6743 	.globl _height2FallingBack6
   19E3                    6744 _height2FallingBack6:
   19E3 00                 6745 	.byte	0
   19E4 24                 6746 	.byte	36
   19E5 FD                 6747 	.byte	-3
   19E6 FF                 6748 	.byte	-1
   19E7 09                 6749 	.byte	9
   19E8 27                 6750 	.byte	39
   19E9 FF                 6751 	.byte	-1
   19EA F4                 6752 	.byte	-12
   19EB F4                 6753 	.byte	-12
   19EC FF                 6754 	.byte	-1
   19ED F7                 6755 	.byte	-9
   19EE D9                 6756 	.byte	-39
   19EF FF                 6757 	.byte	-1
   19F0 0C                 6758 	.byte	12
   19F1 0C                 6759 	.byte	12
   19F2 FF                 6760 	.byte	-1
   19F3 57                 6761 	.byte	87
   19F4 E8                 6762 	.byte	-24
   19F5 00                 6763 	.byte	0
   19F6 B2                 6764 	.byte	-78
   19F7 3F                 6765 	.byte	63
   19F8 FF                 6766 	.byte	-1
   19F9 57                 6767 	.byte	87
   19FA E8                 6768 	.byte	-24
   19FB 00                 6769 	.byte	0
   19FC 9D                 6770 	.byte	-99
   19FD 0C                 6771 	.byte	12
   19FE FF                 6772 	.byte	-1
   19FF 5A                 6773 	.byte	90
   1A00 E8                 6774 	.byte	-24
   1A01 00                 6775 	.byte	0
   1A02 9D                 6776 	.byte	-99
   1A03 F1                 6777 	.byte	-15
   1A04 FF                 6778 	.byte	-1
   1A05 5A                 6779 	.byte	90
   1A06 E8                 6780 	.byte	-24
   1A07 00                 6781 	.byte	0
   1A08 09                 6782 	.byte	9
   1A09 0C                 6783 	.byte	12
   1A0A FF                 6784 	.byte	-1
   1A0B 09                 6785 	.byte	9
   1A0C 27                 6786 	.byte	39
   1A0D FF                 6787 	.byte	-1
   1A0E F7                 6788 	.byte	-9
   1A0F F4                 6789 	.byte	-12
   1A10 FF                 6790 	.byte	-1
   1A11 F7                 6791 	.byte	-9
   1A12 D9                 6792 	.byte	-39
   1A13 FF                 6793 	.byte	-1
   1A14 09                 6794 	.byte	9
   1A15 0C                 6795 	.byte	12
   1A16 01                 6796 	.byte	1
                           6797 	.globl _height2RisingFront6
   1A17                    6798 _height2RisingFront6:
   1A17 00                 6799 	.byte	0
   1A18 06                 6800 	.byte	6
   1A19 0F                 6801 	.byte	15
   1A1A FF                 6802 	.byte	-1
   1A1B 09                 6803 	.byte	9
   1A1C 2A                 6804 	.byte	42
   1A1D FF                 6805 	.byte	-1
   1A1E FA                 6806 	.byte	-6
   1A1F F1                 6807 	.byte	-15
   1A20 FF                 6808 	.byte	-1
   1A21 F7                 6809 	.byte	-9
   1A22 D6                 6810 	.byte	-42
   1A23 FF                 6811 	.byte	-1
   1A24 06                 6812 	.byte	6
   1A25 0F                 6813 	.byte	15
   1A26 FF                 6814 	.byte	-1
   1A27 5A                 6815 	.byte	90
   1A28 EB                 6816 	.byte	-21
   1A29 00                 6817 	.byte	0
   1A2A AF                 6818 	.byte	-81
   1A2B 3F                 6819 	.byte	63
   1A2C FF                 6820 	.byte	-1
   1A2D 5A                 6821 	.byte	90
   1A2E E8                 6822 	.byte	-24
   1A2F 00                 6823 	.byte	0
   1A30 A0                 6824 	.byte	-96
   1A31 09                 6825 	.byte	9
   1A32 FF                 6826 	.byte	-1
   1A33 5A                 6827 	.byte	90
   1A34 EB                 6828 	.byte	-21
   1A35 00                 6829 	.byte	0
   1A36 9D                 6830 	.byte	-99
   1A37 EB                 6831 	.byte	-21
   1A38 FF                 6832 	.byte	-1
   1A39 5A                 6833 	.byte	90
   1A3A EE                 6834 	.byte	-18
   1A3B 00                 6835 	.byte	0
   1A3C 06                 6836 	.byte	6
   1A3D 0C                 6837 	.byte	12
   1A3E FF                 6838 	.byte	-1
   1A3F 09                 6839 	.byte	9
   1A40 27                 6840 	.byte	39
   1A41 FF                 6841 	.byte	-1
   1A42 FA                 6842 	.byte	-6
   1A43 F4                 6843 	.byte	-12
   1A44 FF                 6844 	.byte	-1
   1A45 F7                 6845 	.byte	-9
   1A46 D9                 6846 	.byte	-39
   1A47 FF                 6847 	.byte	-1
   1A48 06                 6848 	.byte	6
   1A49 0C                 6849 	.byte	12
   1A4A 01                 6850 	.byte	1
                           6851 	.globl _height2FallingFront6
   1A4B                    6852 _height2FallingFront6:
   1A4B FF                 6853 	.byte	-1
   1A4C 09                 6854 	.byte	9
   1A4D 2A                 6855 	.byte	42
   1A4E FF                 6856 	.byte	-1
   1A4F 2D                 6857 	.byte	45
   1A50 F4                 6858 	.byte	-12
   1A51 FF                 6859 	.byte	-1
   1A52 F7                 6860 	.byte	-9
   1A53 D9                 6861 	.byte	-39
   1A54 FF                 6862 	.byte	-1
   1A55 D3                 6863 	.byte	-45
   1A56 09                 6864 	.byte	9
   1A57 FF                 6865 	.byte	-1
   1A58 15                 6866 	.byte	21
   1A59 18                 6867 	.byte	24
   1A5A 00                 6868 	.byte	0
   1A5B F4                 6869 	.byte	-12
   1A5C 12                 6870 	.byte	18
   1A5D FF                 6871 	.byte	-1
   1A5E 15                 6872 	.byte	21
   1A5F 18                 6873 	.byte	24
   1A60 00                 6874 	.byte	0
   1A61 18                 6875 	.byte	24
   1A62 DC                 6876 	.byte	-36
   1A63 FF                 6877 	.byte	-1
   1A64 15                 6878 	.byte	21
   1A65 18                 6879 	.byte	24
   1A66 00                 6880 	.byte	0
   1A67 E2                 6881 	.byte	-30
   1A68 C1                 6882 	.byte	-63
   1A69 FF                 6883 	.byte	-1
   1A6A 15                 6884 	.byte	21
   1A6B 15                 6885 	.byte	21
   1A6C 00                 6886 	.byte	0
   1A6D D3                 6887 	.byte	-45
   1A6E 0C                 6888 	.byte	12
   1A6F FF                 6889 	.byte	-1
   1A70 09                 6890 	.byte	9
   1A71 2A                 6891 	.byte	42
   1A72 FF                 6892 	.byte	-1
   1A73 2D                 6893 	.byte	45
   1A74 F4                 6894 	.byte	-12
   1A75 FF                 6895 	.byte	-1
   1A76 F7                 6896 	.byte	-9
   1A77 D6                 6897 	.byte	-42
   1A78 FF                 6898 	.byte	-1
   1A79 D3                 6899 	.byte	-45
   1A7A 0C                 6900 	.byte	12
   1A7B 01                 6901 	.byte	1
                           6902 	.globl _height2RisingBack6
   1A7C                    6903 _height2RisingBack6:
   1A7C 00                 6904 	.byte	0
   1A7D 30                 6905 	.byte	48
   1A7E DF                 6906 	.byte	-33
   1A7F FF                 6907 	.byte	-1
   1A80 09                 6908 	.byte	9
   1A81 27                 6909 	.byte	39
   1A82 FF                 6910 	.byte	-1
   1A83 2A                 6911 	.byte	42
   1A84 F4                 6912 	.byte	-12
   1A85 FF                 6913 	.byte	-1
   1A86 F7                 6914 	.byte	-9
   1A87 D6                 6915 	.byte	-42
   1A88 FF                 6916 	.byte	-1
   1A89 D6                 6917 	.byte	-42
   1A8A 0F                 6918 	.byte	15
   1A8B FF                 6919 	.byte	-1
   1A8C 21                 6920 	.byte	33
   1A8D 15                 6921 	.byte	21
   1A8E 00                 6922 	.byte	0
   1A8F E8                 6923 	.byte	-24
   1A90 12                 6924 	.byte	18
   1A91 FF                 6925 	.byte	-1
   1A92 21                 6926 	.byte	33
   1A93 15                 6927 	.byte	21
   1A94 00                 6928 	.byte	0
   1A95 09                 6929 	.byte	9
   1A96 DF                 6930 	.byte	-33
   1A97 FF                 6931 	.byte	-1
   1A98 21                 6932 	.byte	33
   1A99 15                 6933 	.byte	21
   1A9A 00                 6934 	.byte	0
   1A9B D6                 6935 	.byte	-42
   1A9C C1                 6936 	.byte	-63
   1A9D FF                 6937 	.byte	-1
   1A9E 21                 6938 	.byte	33
   1A9F 18                 6939 	.byte	24
   1AA0 00                 6940 	.byte	0
   1AA1 D6                 6941 	.byte	-42
   1AA2 0C                 6942 	.byte	12
   1AA3 FF                 6943 	.byte	-1
   1AA4 09                 6944 	.byte	9
   1AA5 27                 6945 	.byte	39
   1AA6 FF                 6946 	.byte	-1
   1AA7 2A                 6947 	.byte	42
   1AA8 F4                 6948 	.byte	-12
   1AA9 FF                 6949 	.byte	-1
   1AAA F7                 6950 	.byte	-9
   1AAB D9                 6951 	.byte	-39
   1AAC FF                 6952 	.byte	-1
   1AAD D6                 6953 	.byte	-42
   1AAE 0C                 6954 	.byte	12
   1AAF 01                 6955 	.byte	1
                           6956 	.globl _depth2RollingLeft6
   1AB0                    6957 _depth2RollingLeft6:
   1AB0 FF                 6958 	.byte	-1
   1AB1 21                 6959 	.byte	33
   1AB2 1E                 6960 	.byte	30
   1AB3 FF                 6961 	.byte	-1
   1AB4 30                 6962 	.byte	48
   1AB5 DF                 6963 	.byte	-33
   1AB6 FF                 6964 	.byte	-1
   1AB7 DF                 6965 	.byte	-33
   1AB8 E2                 6966 	.byte	-30
   1AB9 FF                 6967 	.byte	-1
   1ABA D0                 6968 	.byte	-48
   1ABB 21                 6969 	.byte	33
   1ABC FF                 6970 	.byte	-1
   1ABD 15                 6971 	.byte	21
   1ABE E5                 6972 	.byte	-27
   1ABF 00                 6973 	.byte	0
   1AC0 0C                 6974 	.byte	12
   1AC1 39                 6975 	.byte	57
   1AC2 FF                 6976 	.byte	-1
   1AC3 15                 6977 	.byte	21
   1AC4 E2                 6978 	.byte	-30
   1AC5 00                 6979 	.byte	0
   1AC6 1B                 6980 	.byte	27
   1AC7 FD                 6981 	.byte	-3
   1AC8 FF                 6982 	.byte	-1
   1AC9 15                 6983 	.byte	21
   1ACA E2                 6984 	.byte	-30
   1ACB 00                 6985 	.byte	0
   1ACC CA                 6986 	.byte	-54
   1ACD 00                 6987 	.byte	0
   1ACE FF                 6988 	.byte	-1
   1ACF 15                 6989 	.byte	21
   1AD0 E2                 6990 	.byte	-30
   1AD1 00                 6991 	.byte	0
   1AD2 D0                 6992 	.byte	-48
   1AD3 24                 6993 	.byte	36
   1AD4 FF                 6994 	.byte	-1
   1AD5 21                 6995 	.byte	33
   1AD6 1B                 6996 	.byte	27
   1AD7 FF                 6997 	.byte	-1
   1AD8 30                 6998 	.byte	48
   1AD9 DF                 6999 	.byte	-33
   1ADA FF                 7000 	.byte	-1
   1ADB DF                 7001 	.byte	-33
   1ADC E2                 7002 	.byte	-30
   1ADD FF                 7003 	.byte	-1
   1ADE D0                 7004 	.byte	-48
   1ADF 24                 7005 	.byte	36
   1AE0 01                 7006 	.byte	1
                           7007 	.globl _depth2RollingRight6
   1AE1                    7008 _depth2RollingRight6:
   1AE1 00                 7009 	.byte	0
   1AE2 1E                 7010 	.byte	30
   1AE3 0C                 7011 	.byte	12
   1AE4 FF                 7012 	.byte	-1
   1AE5 EB                 7013 	.byte	-21
   1AE6 1E                 7014 	.byte	30
   1AE7 FF                 7015 	.byte	-1
   1AE8 30                 7016 	.byte	48
   1AE9 DC                 7017 	.byte	-36
   1AEA FF                 7018 	.byte	-1
   1AEB 15                 7019 	.byte	21
   1AEC E5                 7020 	.byte	-27
   1AED FF                 7021 	.byte	-1
   1AEE D0                 7022 	.byte	-48
   1AEF 21                 7023 	.byte	33
   1AF0 FF                 7024 	.byte	-1
   1AF1 21                 7025 	.byte	33
   1AF2 1E                 7026 	.byte	30
   1AF3 00                 7027 	.byte	0
   1AF4 CA                 7028 	.byte	-54
   1AF5 00                 7029 	.byte	0
   1AF6 FF                 7030 	.byte	-1
   1AF7 21                 7031 	.byte	33
   1AF8 1E                 7032 	.byte	30
   1AF9 00                 7033 	.byte	0
   1AFA 0F                 7034 	.byte	15
   1AFB BE                 7035 	.byte	-66
   1AFC FF                 7036 	.byte	-1
   1AFD 21                 7037 	.byte	33
   1AFE 1E                 7038 	.byte	30
   1AFF 00                 7039 	.byte	0
   1B00 F4                 7040 	.byte	-12
   1B01 C7                 7041 	.byte	-57
   1B02 FF                 7042 	.byte	-1
   1B03 21                 7043 	.byte	33
   1B04 1B                 7044 	.byte	27
   1B05 00                 7045 	.byte	0
   1B06 D0                 7046 	.byte	-48
   1B07 24                 7047 	.byte	36
   1B08 FF                 7048 	.byte	-1
   1B09 EB                 7049 	.byte	-21
   1B0A 1E                 7050 	.byte	30
   1B0B FF                 7051 	.byte	-1
   1B0C 30                 7052 	.byte	48
   1B0D DC                 7053 	.byte	-36
   1B0E FF                 7054 	.byte	-1
   1B0F 15                 7055 	.byte	21
   1B10 E2                 7056 	.byte	-30
   1B11 FF                 7057 	.byte	-1
   1B12 D0                 7058 	.byte	-48
   1B13 24                 7059 	.byte	36
   1B14 01                 7060 	.byte	1
                           7061 	.globl _width2RollingFront6
   1B15                    7062 _width2RollingFront6:
   1B15 FF                 7063 	.byte	-1
   1B16 12                 7064 	.byte	18
   1B17 54                 7065 	.byte	84
   1B18 FF                 7066 	.byte	-1
   1B19 2D                 7067 	.byte	45
   1B1A F4                 7068 	.byte	-12
   1B1B FF                 7069 	.byte	-1
   1B1C EE                 7070 	.byte	-18
   1B1D AF                 7071 	.byte	-81
   1B1E FF                 7072 	.byte	-1
   1B1F D3                 7073 	.byte	-45
   1B20 09                 7074 	.byte	9
   1B21 FF                 7075 	.byte	-1
   1B22 0C                 7076 	.byte	12
   1B23 0C                 7077 	.byte	12
   1B24 00                 7078 	.byte	0
   1B25 06                 7079 	.byte	6
   1B26 48                 7080 	.byte	72
   1B27 FF                 7081 	.byte	-1
   1B28 0C                 7082 	.byte	12
   1B29 0C                 7083 	.byte	12
   1B2A 00                 7084 	.byte	0
   1B2B 21                 7085 	.byte	33
   1B2C E8                 7086 	.byte	-24
   1B2D FF                 7087 	.byte	-1
   1B2E 09                 7088 	.byte	9
   1B2F 0C                 7089 	.byte	12
   1B30 00                 7090 	.byte	0
   1B31 E5                 7091 	.byte	-27
   1B32 A3                 7092 	.byte	-93
   1B33 FF                 7093 	.byte	-1
   1B34 09                 7094 	.byte	9
   1B35 09                 7095 	.byte	9
   1B36 00                 7096 	.byte	0
   1B37 D6                 7097 	.byte	-42
   1B38 0C                 7098 	.byte	12
   1B39 FF                 7099 	.byte	-1
   1B3A 12                 7100 	.byte	18
   1B3B 54                 7101 	.byte	84
   1B3C FF                 7102 	.byte	-1
   1B3D 2A                 7103 	.byte	42
   1B3E F4                 7104 	.byte	-12
   1B3F FF                 7105 	.byte	-1
   1B40 EE                 7106 	.byte	-18
   1B41 AC                 7107 	.byte	-84
   1B42 FF                 7108 	.byte	-1
   1B43 D6                 7109 	.byte	-42
   1B44 0C                 7110 	.byte	12
   1B45 01                 7111 	.byte	1
                           7112 	.globl _width2RollingBack6
   1B46                    7113 _width2RollingBack6:
   1B46 00                 7114 	.byte	0
   1B47 24                 7115 	.byte	36
   1B48 FD                 7116 	.byte	-3
   1B49 FF                 7117 	.byte	-1
   1B4A 12                 7118 	.byte	18
   1B4B 51                 7119 	.byte	81
   1B4C FF                 7120 	.byte	-1
   1B4D F4                 7121 	.byte	-12
   1B4E F4                 7122 	.byte	-12
   1B4F FF                 7123 	.byte	-1
   1B50 EE                 7124 	.byte	-18
   1B51 AF                 7125 	.byte	-81
   1B52 FF                 7126 	.byte	-1
   1B53 0C                 7127 	.byte	12
   1B54 0C                 7128 	.byte	12
   1B55 FF                 7129 	.byte	-1
   1B56 2A                 7130 	.byte	42
   1B57 F4                 7131 	.byte	-12
   1B58 00                 7132 	.byte	0
   1B59 E8                 7133 	.byte	-24
   1B5A 5D                 7134 	.byte	93
   1B5B FF                 7135 	.byte	-1
   1B5C 2A                 7136 	.byte	42
   1B5D F4                 7137 	.byte	-12
   1B5E 00                 7138 	.byte	0
   1B5F CA                 7139 	.byte	-54
   1B60 00                 7140 	.byte	0
   1B61 FF                 7141 	.byte	-1
   1B62 2D                 7142 	.byte	45
   1B63 F4                 7143 	.byte	-12
   1B64 00                 7144 	.byte	0
   1B65 C1                 7145 	.byte	-63
   1B66 BB                 7146 	.byte	-69
   1B67 FF                 7147 	.byte	-1
   1B68 2D                 7148 	.byte	45
   1B69 F4                 7149 	.byte	-12
   1B6A 00                 7150 	.byte	0
   1B6B 09                 7151 	.byte	9
   1B6C 0C                 7152 	.byte	12
   1B6D FF                 7153 	.byte	-1
   1B6E 12                 7154 	.byte	18
   1B6F 51                 7155 	.byte	81
   1B70 FF                 7156 	.byte	-1
   1B71 F7                 7157 	.byte	-9
   1B72 F4                 7158 	.byte	-12
   1B73 FF                 7159 	.byte	-1
   1B74 EE                 7160 	.byte	-18
   1B75 AF                 7161 	.byte	-81
   1B76 FF                 7162 	.byte	-1
   1B77 09                 7163 	.byte	9
   1B78 0C                 7164 	.byte	12
   1B79 01                 7165 	.byte	1
                           7166 	.globl _height1FallingLeft6
   1B7A                    7167 _height1FallingLeft6:
   1B7A FF                 7168 	.byte	-1
   1B7B 21                 7169 	.byte	33
   1B7C 1E                 7170 	.byte	30
   1B7D FF                 7171 	.byte	-1
   1B7E 18                 7172 	.byte	24
   1B7F EE                 7173 	.byte	-18
   1B80 FF                 7174 	.byte	-1
   1B81 DF                 7175 	.byte	-33
   1B82 E5                 7176 	.byte	-27
   1B83 FF                 7177 	.byte	-1
   1B84 E8                 7178 	.byte	-24
   1B85 0F                 7179 	.byte	15
   1B86 FF                 7180 	.byte	-1
   1B87 15                 7181 	.byte	21
   1B88 E5                 7182 	.byte	-27
   1B89 00                 7183 	.byte	0
   1B8A 0C                 7184 	.byte	12
   1B8B 39                 7185 	.byte	57
   1B8C FF                 7186 	.byte	-1
   1B8D 15                 7187 	.byte	21
   1B8E E2                 7188 	.byte	-30
   1B8F 00                 7189 	.byte	0
   1B90 03                 7190 	.byte	3
   1B91 0C                 7191 	.byte	12
   1B92 FF                 7192 	.byte	-1
   1B93 15                 7193 	.byte	21
   1B94 E5                 7194 	.byte	-27
   1B95 00                 7195 	.byte	0
   1B96 CA                 7196 	.byte	-54
   1B97 00                 7197 	.byte	0
   1B98 FF                 7198 	.byte	-1
   1B99 15                 7199 	.byte	21
   1B9A E2                 7200 	.byte	-30
   1B9B 00                 7201 	.byte	0
   1B9C E8                 7202 	.byte	-24
   1B9D 12                 7203 	.byte	18
   1B9E FF                 7204 	.byte	-1
   1B9F 21                 7205 	.byte	33
   1BA0 1B                 7206 	.byte	27
   1BA1 FF                 7207 	.byte	-1
   1BA2 18                 7208 	.byte	24
   1BA3 F1                 7209 	.byte	-15
   1BA4 FF                 7210 	.byte	-1
   1BA5 DF                 7211 	.byte	-33
   1BA6 E2                 7212 	.byte	-30
   1BA7 FF                 7213 	.byte	-1
   1BA8 E8                 7214 	.byte	-24
   1BA9 12                 7215 	.byte	18
   1BAA 01                 7216 	.byte	1
                           7217 	.globl _height1FallingRight6
   1BAB                    7218 _height1FallingRight6:
   1BAB 00                 7219 	.byte	0
   1BAC 1E                 7220 	.byte	30
   1BAD 0C                 7221 	.byte	12
   1BAE FF                 7222 	.byte	-1
   1BAF EB                 7223 	.byte	-21
   1BB0 1E                 7224 	.byte	30
   1BB1 FF                 7225 	.byte	-1
   1BB2 18                 7226 	.byte	24
   1BB3 EE                 7227 	.byte	-18
   1BB4 FF                 7228 	.byte	-1
   1BB5 15                 7229 	.byte	21
   1BB6 E5                 7230 	.byte	-27
   1BB7 FF                 7231 	.byte	-1
   1BB8 E8                 7232 	.byte	-24
   1BB9 0F                 7233 	.byte	15
   1BBA FF                 7234 	.byte	-1
   1BBB 21                 7235 	.byte	33
   1BBC 1E                 7236 	.byte	30
   1BBD 00                 7237 	.byte	0
   1BBE CA                 7238 	.byte	-54
   1BBF 00                 7239 	.byte	0
   1BC0 FF                 7240 	.byte	-1
   1BC1 21                 7241 	.byte	33
   1BC2 1E                 7242 	.byte	30
   1BC3 00                 7243 	.byte	0
   1BC4 F7                 7244 	.byte	-9
   1BC5 D0                 7245 	.byte	-48
   1BC6 FF                 7246 	.byte	-1
   1BC7 21                 7247 	.byte	33
   1BC8 1E                 7248 	.byte	30
   1BC9 00                 7249 	.byte	0
   1BCA F4                 7250 	.byte	-12
   1BCB C7                 7251 	.byte	-57
   1BCC FF                 7252 	.byte	-1
   1BCD 21                 7253 	.byte	33
   1BCE 1B                 7254 	.byte	27
   1BCF 00                 7255 	.byte	0
   1BD0 E8                 7256 	.byte	-24
   1BD1 12                 7257 	.byte	18
   1BD2 FF                 7258 	.byte	-1
   1BD3 EB                 7259 	.byte	-21
   1BD4 1E                 7260 	.byte	30
   1BD5 FF                 7261 	.byte	-1
   1BD6 18                 7262 	.byte	24
   1BD7 EE                 7263 	.byte	-18
   1BD8 FF                 7264 	.byte	-1
   1BD9 15                 7265 	.byte	21
   1BDA E2                 7266 	.byte	-30
   1BDB FF                 7267 	.byte	-1
   1BDC E8                 7268 	.byte	-24
   1BDD 12                 7269 	.byte	18
   1BDE 01                 7270 	.byte	1
                           7271 	.globl _height1FallingBack6
   1BDF                    7272 _height1FallingBack6:
   1BDF 00                 7273 	.byte	0
   1BE0 24                 7274 	.byte	36
   1BE1 FD                 7275 	.byte	-3
   1BE2 FF                 7276 	.byte	-1
   1BE3 09                 7277 	.byte	9
   1BE4 27                 7278 	.byte	39
   1BE5 FF                 7279 	.byte	-1
   1BE6 F4                 7280 	.byte	-12
   1BE7 F4                 7281 	.byte	-12
   1BE8 FF                 7282 	.byte	-1
   1BE9 F7                 7283 	.byte	-9
   1BEA D9                 7284 	.byte	-39
   1BEB FF                 7285 	.byte	-1
   1BEC 0C                 7286 	.byte	12
   1BED 0C                 7287 	.byte	12
   1BEE FF                 7288 	.byte	-1
   1BEF 2A                 7289 	.byte	42
   1BF0 F4                 7290 	.byte	-12
   1BF1 00                 7291 	.byte	0
   1BF2 DF                 7292 	.byte	-33
   1BF3 33                 7293 	.byte	51
   1BF4 FF                 7294 	.byte	-1
   1BF5 2A                 7295 	.byte	42
   1BF6 F4                 7296 	.byte	-12
   1BF7 00                 7297 	.byte	0
   1BF8 CA                 7298 	.byte	-54
   1BF9 00                 7299 	.byte	0
   1BFA FF                 7300 	.byte	-1
   1BFB 2D                 7301 	.byte	45
   1BFC F4                 7302 	.byte	-12
   1BFD 00                 7303 	.byte	0
   1BFE CA                 7304 	.byte	-54
   1BFF E5                 7305 	.byte	-27
   1C00 FF                 7306 	.byte	-1
   1C01 2D                 7307 	.byte	45
   1C02 F4                 7308 	.byte	-12
   1C03 00                 7309 	.byte	0
   1C04 09                 7310 	.byte	9
   1C05 0C                 7311 	.byte	12
   1C06 FF                 7312 	.byte	-1
   1C07 09                 7313 	.byte	9
   1C08 27                 7314 	.byte	39
   1C09 FF                 7315 	.byte	-1
   1C0A F7                 7316 	.byte	-9
   1C0B F4                 7317 	.byte	-12
   1C0C FF                 7318 	.byte	-1
   1C0D F7                 7319 	.byte	-9
   1C0E D9                 7320 	.byte	-39
   1C0F FF                 7321 	.byte	-1
   1C10 09                 7322 	.byte	9
   1C11 0C                 7323 	.byte	12
   1C12 01                 7324 	.byte	1
                           7325 	.globl _height1FallingFront6
   1C13                    7326 _height1FallingFront6:
   1C13 FF                 7327 	.byte	-1
   1C14 09                 7328 	.byte	9
   1C15 2A                 7329 	.byte	42
   1C16 FF                 7330 	.byte	-1
   1C17 2D                 7331 	.byte	45
   1C18 F4                 7332 	.byte	-12
   1C19 FF                 7333 	.byte	-1
   1C1A F7                 7334 	.byte	-9
   1C1B D9                 7335 	.byte	-39
   1C1C FF                 7336 	.byte	-1
   1C1D D3                 7337 	.byte	-45
   1C1E 09                 7338 	.byte	9
   1C1F FF                 7339 	.byte	-1
   1C20 0C                 7340 	.byte	12
   1C21 0C                 7341 	.byte	12
   1C22 00                 7342 	.byte	0
   1C23 FD                 7343 	.byte	-3
   1C24 1E                 7344 	.byte	30
   1C25 FF                 7345 	.byte	-1
   1C26 0C                 7346 	.byte	12
   1C27 0C                 7347 	.byte	12
   1C28 00                 7348 	.byte	0
   1C29 21                 7349 	.byte	33
   1C2A E8                 7350 	.byte	-24
   1C2B FF                 7351 	.byte	-1
   1C2C 09                 7352 	.byte	9
   1C2D 0C                 7353 	.byte	12
   1C2E 00                 7354 	.byte	0
   1C2F EE                 7355 	.byte	-18
   1C30 CD                 7356 	.byte	-51
   1C31 FF                 7357 	.byte	-1
   1C32 09                 7358 	.byte	9
   1C33 09                 7359 	.byte	9
   1C34 00                 7360 	.byte	0
   1C35 D6                 7361 	.byte	-42
   1C36 0C                 7362 	.byte	12
   1C37 FF                 7363 	.byte	-1
   1C38 09                 7364 	.byte	9
   1C39 2A                 7365 	.byte	42
   1C3A FF                 7366 	.byte	-1
   1C3B 2A                 7367 	.byte	42
   1C3C F4                 7368 	.byte	-12
   1C3D FF                 7369 	.byte	-1
   1C3E F7                 7370 	.byte	-9
   1C3F D6                 7371 	.byte	-42
   1C40 FF                 7372 	.byte	-1
   1C41 D6                 7373 	.byte	-42
   1C42 0C                 7374 	.byte	12
   1C43 01                 7375 	.byte	1
                           7376 	.globl _height2FallingLeft7
   1C44                    7377 _height2FallingLeft7:
   1C44 FF                 7378 	.byte	-1
   1C45 24                 7379 	.byte	36
   1C46 1B                 7380 	.byte	27
   1C47 FF                 7381 	.byte	-1
   1C48 18                 7382 	.byte	24
   1C49 EE                 7383 	.byte	-18
   1C4A FF                 7384 	.byte	-1
   1C4B DC                 7385 	.byte	-36
   1C4C E8                 7386 	.byte	-24
   1C4D FF                 7387 	.byte	-1
   1C4E E8                 7388 	.byte	-24
   1C4F 0F                 7389 	.byte	15
   1C50 FF                 7390 	.byte	-1
   1C51 21                 7391 	.byte	33
   1C52 C1                 7392 	.byte	-63
   1C53 00                 7393 	.byte	0
   1C54 03                 7394 	.byte	3
   1C55 5A                 7395 	.byte	90
   1C56 FF                 7396 	.byte	-1
   1C57 21                 7397 	.byte	33
   1C58 BE                 7398 	.byte	-66
   1C59 00                 7399 	.byte	0
   1C5A F7                 7400 	.byte	-9
   1C5B 30                 7401 	.byte	48
   1C5C FF                 7402 	.byte	-1
   1C5D 21                 7403 	.byte	33
   1C5E BE                 7404 	.byte	-66
   1C5F 00                 7405 	.byte	0
   1C60 BB                 7406 	.byte	-69
   1C61 2A                 7407 	.byte	42
   1C62 FF                 7408 	.byte	-1
   1C63 21                 7409 	.byte	33
   1C64 BE                 7410 	.byte	-66
   1C65 00                 7411 	.byte	0
   1C66 E8                 7412 	.byte	-24
   1C67 12                 7413 	.byte	18
   1C68 FF                 7414 	.byte	-1
   1C69 24                 7415 	.byte	36
   1C6A 18                 7416 	.byte	24
   1C6B FF                 7417 	.byte	-1
   1C6C 18                 7418 	.byte	24
   1C6D EE                 7419 	.byte	-18
   1C6E FF                 7420 	.byte	-1
   1C6F DC                 7421 	.byte	-36
   1C70 E8                 7422 	.byte	-24
   1C71 FF                 7423 	.byte	-1
   1C72 E8                 7424 	.byte	-24
   1C73 12                 7425 	.byte	18
   1C74 01                 7426 	.byte	1
                           7427 	.globl _height2RisingRight7
   1C75                    7428 _height2RisingRight7:
   1C75 00                 7429 	.byte	0
   1C76 12                 7430 	.byte	18
   1C77 54                 7431 	.byte	84
   1C78 FF                 7432 	.byte	-1
   1C79 1B                 7433 	.byte	27
   1C7A 24                 7434 	.byte	36
   1C7B FF                 7435 	.byte	-1
   1C7C 18                 7436 	.byte	24
   1C7D EE                 7437 	.byte	-18
   1C7E FF                 7438 	.byte	-1
   1C7F E5                 7439 	.byte	-27
   1C80 DC                 7440 	.byte	-36
   1C81 FF                 7441 	.byte	-1
   1C82 E8                 7442 	.byte	-24
   1C83 12                 7443 	.byte	18
   1C84 FF                 7444 	.byte	-1
   1C85 3C                 7445 	.byte	60
   1C86 D6                 7446 	.byte	-42
   1C87 00                 7447 	.byte	0
   1C88 DF                 7448 	.byte	-33
   1C89 4E                 7449 	.byte	78
   1C8A FF                 7450 	.byte	-1
   1C8B 3C                 7451 	.byte	60
   1C8C D6                 7452 	.byte	-42
   1C8D 00                 7453 	.byte	0
   1C8E DC                 7454 	.byte	-36
   1C8F 18                 7455 	.byte	24
   1C90 FF                 7456 	.byte	-1
   1C91 3C                 7457 	.byte	60
   1C92 D6                 7458 	.byte	-42
   1C93 00                 7459 	.byte	0
   1C94 A9                 7460 	.byte	-87
   1C95 06                 7461 	.byte	6
   1C96 FF                 7462 	.byte	-1
   1C97 3C                 7463 	.byte	60
   1C98 D6                 7464 	.byte	-42
   1C99 00                 7465 	.byte	0
   1C9A E8                 7466 	.byte	-24
   1C9B 12                 7467 	.byte	18
   1C9C FF                 7468 	.byte	-1
   1C9D 1B                 7469 	.byte	27
   1C9E 24                 7470 	.byte	36
   1C9F FF                 7471 	.byte	-1
   1CA0 18                 7472 	.byte	24
   1CA1 EE                 7473 	.byte	-18
   1CA2 FF                 7474 	.byte	-1
   1CA3 E5                 7475 	.byte	-27
   1CA4 DC                 7476 	.byte	-36
   1CA5 FF                 7477 	.byte	-1
   1CA6 E8                 7478 	.byte	-24
   1CA7 12                 7479 	.byte	18
   1CA8 01                 7480 	.byte	1
                           7481 	.globl _height2FallingRight7
   1CA9                    7482 _height2FallingRight7:
   1CA9 00                 7483 	.byte	0
   1CAA 21                 7484 	.byte	33
   1CAB 0F                 7485 	.byte	15
   1CAC FF                 7486 	.byte	-1
   1CAD E8                 7487 	.byte	-24
   1CAE 1B                 7488 	.byte	27
   1CAF FF                 7489 	.byte	-1
   1CB0 18                 7490 	.byte	24
   1CB1 EE                 7491 	.byte	-18
   1CB2 FF                 7492 	.byte	-1
   1CB3 18                 7493 	.byte	24
   1CB4 E8                 7494 	.byte	-24
   1CB5 FF                 7495 	.byte	-1
   1CB6 E8                 7496 	.byte	-24
   1CB7 0F                 7497 	.byte	15
   1CB8 FF                 7498 	.byte	-1
   1CB9 3F                 7499 	.byte	63
   1CBA 45                 7500 	.byte	69
   1CBB 00                 7501 	.byte	0
   1CBC A9                 7502 	.byte	-87
   1CBD D6                 7503 	.byte	-42
   1CBE FF                 7504 	.byte	-1
   1CBF 3F                 7505 	.byte	63
   1CC0 42                 7506 	.byte	66
   1CC1 00                 7507 	.byte	0
   1CC2 D9                 7508 	.byte	-39
   1CC3 AC                 7509 	.byte	-84
   1CC4 FF                 7510 	.byte	-1
   1CC5 3F                 7511 	.byte	63
   1CC6 42                 7512 	.byte	66
   1CC7 00                 7513 	.byte	0
   1CC8 D9                 7514 	.byte	-39
   1CC9 A6                 7515 	.byte	-90
   1CCA FF                 7516 	.byte	-1
   1CCB 3F                 7517 	.byte	63
   1CCC 42                 7518 	.byte	66
   1CCD 00                 7519 	.byte	0
   1CCE E8                 7520 	.byte	-24
   1CCF 12                 7521 	.byte	18
   1CD0 FF                 7522 	.byte	-1
   1CD1 E8                 7523 	.byte	-24
   1CD2 18                 7524 	.byte	24
   1CD3 FF                 7525 	.byte	-1
   1CD4 18                 7526 	.byte	24
   1CD5 EE                 7527 	.byte	-18
   1CD6 FF                 7528 	.byte	-1
   1CD7 18                 7529 	.byte	24
   1CD8 E8                 7530 	.byte	-24
   1CD9 FF                 7531 	.byte	-1
   1CDA E8                 7532 	.byte	-24
   1CDB 12                 7533 	.byte	18
   1CDC 01                 7534 	.byte	1
                           7535 	.globl _height2RisingLeft7
   1CDD                    7536 _height2RisingLeft7:
   1CDD 00                 7537 	.byte	0
   1CDE 0C                 7538 	.byte	12
   1CDF DF                 7539 	.byte	-33
   1CE0 FF                 7540 	.byte	-1
   1CE1 F4                 7541 	.byte	-12
   1CE2 21                 7542 	.byte	33
   1CE3 FF                 7543 	.byte	-1
   1CE4 18                 7544 	.byte	24
   1CE5 F1                 7545 	.byte	-15
   1CE6 FF                 7546 	.byte	-1
   1CE7 0C                 7547 	.byte	12
   1CE8 DC                 7548 	.byte	-36
   1CE9 FF                 7549 	.byte	-1
   1CEA E8                 7550 	.byte	-24
   1CEB 12                 7551 	.byte	18
   1CEC FF                 7552 	.byte	-1
   1CED 4B                 7553 	.byte	75
   1CEE 27                 7554 	.byte	39
   1CEF 00                 7555 	.byte	0
   1CF0 A9                 7556 	.byte	-87
   1CF1 FA                 7557 	.byte	-6
   1CF2 FF                 7558 	.byte	-1
   1CF3 4E                 7559 	.byte	78
   1CF4 2A                 7560 	.byte	42
   1CF5 00                 7561 	.byte	0
   1CF6 CA                 7562 	.byte	-54
   1CF7 C7                 7563 	.byte	-57
   1CF8 FF                 7564 	.byte	-1
   1CF9 4E                 7565 	.byte	78
   1CFA 27                 7566 	.byte	39
   1CFB 00                 7567 	.byte	0
   1CFC BE                 7568 	.byte	-66
   1CFD B5                 7569 	.byte	-75
   1CFE FF                 7570 	.byte	-1
   1CFF 4B                 7571 	.byte	75
   1D00 2A                 7572 	.byte	42
   1D01 00                 7573 	.byte	0
   1D02 E8                 7574 	.byte	-24
   1D03 0F                 7575 	.byte	15
   1D04 FF                 7576 	.byte	-1
   1D05 F7                 7577 	.byte	-9
   1D06 24                 7578 	.byte	36
   1D07 FF                 7579 	.byte	-1
   1D08 18                 7580 	.byte	24
   1D09 EE                 7581 	.byte	-18
   1D0A FF                 7582 	.byte	-1
   1D0B 09                 7583 	.byte	9
   1D0C DF                 7584 	.byte	-33
   1D0D FF                 7585 	.byte	-1
   1D0E E8                 7586 	.byte	-24
   1D0F 0F                 7587 	.byte	15
   1D10 01                 7588 	.byte	1
                           7589 	.globl _height2FallingBack7
   1D11                    7590 _height2FallingBack7:
   1D11 00                 7591 	.byte	0
   1D12 27                 7592 	.byte	39
   1D13 FD                 7593 	.byte	-3
   1D14 FF                 7594 	.byte	-1
   1D15 09                 7595 	.byte	9
   1D16 27                 7596 	.byte	39
   1D17 FF                 7597 	.byte	-1
   1D18 F1                 7598 	.byte	-15
   1D19 F4                 7599 	.byte	-12
   1D1A FF                 7600 	.byte	-1
   1D1B F7                 7601 	.byte	-9
   1D1C D9                 7602 	.byte	-39
   1D1D FF                 7603 	.byte	-1
   1D1E 0F                 7604 	.byte	15
   1D1F 0C                 7605 	.byte	12
   1D20 FF                 7606 	.byte	-1
   1D21 57                 7607 	.byte	87
   1D22 E2                 7608 	.byte	-30
   1D23 00                 7609 	.byte	0
   1D24 B2                 7610 	.byte	-78
   1D25 45                 7611 	.byte	69
   1D26 FF                 7612 	.byte	-1
   1D27 57                 7613 	.byte	87
   1D28 E2                 7614 	.byte	-30
   1D29 00                 7615 	.byte	0
   1D2A 9A                 7616 	.byte	-102
   1D2B 12                 7617 	.byte	18
   1D2C FF                 7618 	.byte	-1
   1D2D 57                 7619 	.byte	87
   1D2E E5                 7620 	.byte	-27
   1D2F 00                 7621 	.byte	0
   1D30 A0                 7622 	.byte	-96
   1D31 F4                 7623 	.byte	-12
   1D32 FF                 7624 	.byte	-1
   1D33 57                 7625 	.byte	87
   1D34 E2                 7626 	.byte	-30
   1D35 00                 7627 	.byte	0
   1D36 0F                 7628 	.byte	15
   1D37 0C                 7629 	.byte	12
   1D38 FF                 7630 	.byte	-1
   1D39 09                 7631 	.byte	9
   1D3A 27                 7632 	.byte	39
   1D3B FF                 7633 	.byte	-1
   1D3C F1                 7634 	.byte	-15
   1D3D F7                 7635 	.byte	-9
   1D3E FF                 7636 	.byte	-1
   1D3F F7                 7637 	.byte	-9
   1D40 D6                 7638 	.byte	-42
   1D41 FF                 7639 	.byte	-1
   1D42 0F                 7640 	.byte	15
   1D43 0C                 7641 	.byte	12
   1D44 01                 7642 	.byte	1
                           7643 	.globl _height2RisingFront7
   1D45                    7644 _height2RisingFront7:
   1D45 00                 7645 	.byte	0
   1D46 00                 7646 	.byte	0
   1D47 0F                 7647 	.byte	15
   1D48 FF                 7648 	.byte	-1
   1D49 09                 7649 	.byte	9
   1D4A 2A                 7650 	.byte	42
   1D4B FF                 7651 	.byte	-1
   1D4C 00                 7652 	.byte	0
   1D4D F1                 7653 	.byte	-15
   1D4E FF                 7654 	.byte	-1
   1D4F F7                 7655 	.byte	-9
   1D50 D6                 7656 	.byte	-42
   1D51 FF                 7657 	.byte	-1
   1D52 00                 7658 	.byte	0
   1D53 0F                 7659 	.byte	15
   1D54 FF                 7660 	.byte	-1
   1D55 5A                 7661 	.byte	90
   1D56 F1                 7662 	.byte	-15
   1D57 00                 7663 	.byte	0
   1D58 AF                 7664 	.byte	-81
   1D59 39                 7665 	.byte	57
   1D5A FF                 7666 	.byte	-1
   1D5B 5A                 7667 	.byte	90
   1D5C EE                 7668 	.byte	-18
   1D5D 00                 7669 	.byte	0
   1D5E A6                 7670 	.byte	-90
   1D5F 03                 7671 	.byte	3
   1D60 FF                 7672 	.byte	-1
   1D61 5D                 7673 	.byte	93
   1D62 EE                 7674 	.byte	-18
   1D63 00                 7675 	.byte	0
   1D64 9A                 7676 	.byte	-102
   1D65 E8                 7677 	.byte	-24
   1D66 FF                 7678 	.byte	-1
   1D67 5D                 7679 	.byte	93
   1D68 F1                 7680 	.byte	-15
   1D69 00                 7681 	.byte	0
   1D6A FD                 7682 	.byte	-3
   1D6B 0F                 7683 	.byte	15
   1D6C FF                 7684 	.byte	-1
   1D6D 09                 7685 	.byte	9
   1D6E 27                 7686 	.byte	39
   1D6F FF                 7687 	.byte	-1
   1D70 03                 7688 	.byte	3
   1D71 F1                 7689 	.byte	-15
   1D72 FF                 7690 	.byte	-1
   1D73 F7                 7691 	.byte	-9
   1D74 D9                 7692 	.byte	-39
   1D75 FF                 7693 	.byte	-1
   1D76 FD                 7694 	.byte	-3
   1D77 0F                 7695 	.byte	15
   1D78 01                 7696 	.byte	1
                           7697 	.globl _height2FallingFront7
   1D79                    7698 _height2FallingFront7:
   1D79 FF                 7699 	.byte	-1
   1D7A 09                 7700 	.byte	9
   1D7B 2A                 7701 	.byte	42
   1D7C FF                 7702 	.byte	-1
   1D7D 2D                 7703 	.byte	45
   1D7E F4                 7704 	.byte	-12
   1D7F FF                 7705 	.byte	-1
   1D80 F7                 7706 	.byte	-9
   1D81 D9                 7707 	.byte	-39
   1D82 FF                 7708 	.byte	-1
   1D83 D3                 7709 	.byte	-45
   1D84 09                 7710 	.byte	9
   1D85 FF                 7711 	.byte	-1
   1D86 09                 7712 	.byte	9
   1D87 1E                 7713 	.byte	30
   1D88 00                 7714 	.byte	0
   1D89 00                 7715 	.byte	0
   1D8A 0C                 7716 	.byte	12
   1D8B FF                 7717 	.byte	-1
   1D8C 09                 7718 	.byte	9
   1D8D 1E                 7719 	.byte	30
   1D8E 00                 7720 	.byte	0
   1D8F 24                 7721 	.byte	36
   1D90 D6                 7722 	.byte	-42
   1D91 FF                 7723 	.byte	-1
   1D92 09                 7724 	.byte	9
   1D93 1E                 7725 	.byte	30
   1D94 00                 7726 	.byte	0
   1D95 EE                 7727 	.byte	-18
   1D96 BB                 7728 	.byte	-69
   1D97 FF                 7729 	.byte	-1
   1D98 09                 7730 	.byte	9
   1D99 1B                 7731 	.byte	27
   1D9A 00                 7732 	.byte	0
   1D9B D3                 7733 	.byte	-45
   1D9C 0C                 7734 	.byte	12
   1D9D FF                 7735 	.byte	-1
   1D9E 09                 7736 	.byte	9
   1D9F 2A                 7737 	.byte	42
   1DA0 FF                 7738 	.byte	-1
   1DA1 2D                 7739 	.byte	45
   1DA2 F4                 7740 	.byte	-12
   1DA3 FF                 7741 	.byte	-1
   1DA4 F7                 7742 	.byte	-9
   1DA5 D6                 7743 	.byte	-42
   1DA6 FF                 7744 	.byte	-1
   1DA7 D3                 7745 	.byte	-45
   1DA8 0C                 7746 	.byte	12
   1DA9 01                 7747 	.byte	1
                           7748 	.globl _height2RisingBack7
   1DAA                    7749 _height2RisingBack7:
   1DAA 00                 7750 	.byte	0
   1DAB 30                 7751 	.byte	48
   1DAC DF                 7752 	.byte	-33
   1DAD FF                 7753 	.byte	-1
   1DAE 09                 7754 	.byte	9
   1DAF 27                 7755 	.byte	39
   1DB0 FF                 7756 	.byte	-1
   1DB1 27                 7757 	.byte	39
   1DB2 F4                 7758 	.byte	-12
   1DB3 FF                 7759 	.byte	-1
   1DB4 F7                 7760 	.byte	-9
   1DB5 D6                 7761 	.byte	-42
   1DB6 FF                 7762 	.byte	-1
   1DB7 D9                 7763 	.byte	-39
   1DB8 0F                 7764 	.byte	15
   1DB9 FF                 7765 	.byte	-1
   1DBA 2D                 7766 	.byte	45
   1DBB 12                 7767 	.byte	18
   1DBC 00                 7768 	.byte	0
   1DBD DC                 7769 	.byte	-36
   1DBE 15                 7770 	.byte	21
   1DBF FF                 7771 	.byte	-1
   1DC0 2D                 7772 	.byte	45
   1DC1 12                 7773 	.byte	18
   1DC2 00                 7774 	.byte	0
   1DC3 FA                 7775 	.byte	-6
   1DC4 E2                 7776 	.byte	-30
   1DC5 FF                 7777 	.byte	-1
   1DC6 2D                 7778 	.byte	45
   1DC7 0F                 7779 	.byte	15
   1DC8 00                 7780 	.byte	0
   1DC9 CA                 7781 	.byte	-54
   1DCA C7                 7782 	.byte	-57
   1DCB FF                 7783 	.byte	-1
   1DCC 2D                 7784 	.byte	45
   1DCD 12                 7785 	.byte	18
   1DCE 00                 7786 	.byte	0
   1DCF D9                 7787 	.byte	-39
   1DD0 0F                 7788 	.byte	15
   1DD1 FF                 7789 	.byte	-1
   1DD2 09                 7790 	.byte	9
   1DD3 27                 7791 	.byte	39
   1DD4 FF                 7792 	.byte	-1
   1DD5 27                 7793 	.byte	39
   1DD6 F1                 7794 	.byte	-15
   1DD7 FF                 7795 	.byte	-1
   1DD8 F7                 7796 	.byte	-9
   1DD9 D9                 7797 	.byte	-39
   1DDA FF                 7798 	.byte	-1
   1DDB D9                 7799 	.byte	-39
   1DDC 0F                 7800 	.byte	15
   1DDD 01                 7801 	.byte	1
                           7802 	.globl _depth2RollingLeft7
   1DDE                    7803 _depth2RollingLeft7:
   1DDE FF                 7804 	.byte	-1
   1DDF 24                 7805 	.byte	36
   1DE0 1B                 7806 	.byte	27
   1DE1 FF                 7807 	.byte	-1
   1DE2 30                 7808 	.byte	48
   1DE3 DF                 7809 	.byte	-33
   1DE4 FF                 7810 	.byte	-1
   1DE5 DC                 7811 	.byte	-36
   1DE6 E5                 7812 	.byte	-27
   1DE7 FF                 7813 	.byte	-1
   1DE8 D0                 7814 	.byte	-48
   1DE9 21                 7815 	.byte	33
   1DEA FF                 7816 	.byte	-1
   1DEB 12                 7817 	.byte	18
   1DEC E2                 7818 	.byte	-30
   1DED 00                 7819 	.byte	0
   1DEE 12                 7820 	.byte	18
   1DEF 39                 7821 	.byte	57
   1DF0 FF                 7822 	.byte	-1
   1DF1 12                 7823 	.byte	18
   1DF2 DF                 7824 	.byte	-33
   1DF3 00                 7825 	.byte	0
   1DF4 1E                 7826 	.byte	30
   1DF5 00                 7827 	.byte	0
   1DF6 FF                 7828 	.byte	-1
   1DF7 12                 7829 	.byte	18
   1DF8 DC                 7830 	.byte	-36
   1DF9 00                 7831 	.byte	0
   1DFA CA                 7832 	.byte	-54
   1DFB 09                 7833 	.byte	9
   1DFC FF                 7834 	.byte	-1
   1DFD 12                 7835 	.byte	18
   1DFE DF                 7836 	.byte	-33
   1DFF 00                 7837 	.byte	0
   1E00 D0                 7838 	.byte	-48
   1E01 24                 7839 	.byte	36
   1E02 FF                 7840 	.byte	-1
   1E03 24                 7841 	.byte	36
   1E04 18                 7842 	.byte	24
   1E05 FF                 7843 	.byte	-1
   1E06 30                 7844 	.byte	48
   1E07 DC                 7845 	.byte	-36
   1E08 FF                 7846 	.byte	-1
   1E09 DC                 7847 	.byte	-36
   1E0A E8                 7848 	.byte	-24
   1E0B FF                 7849 	.byte	-1
   1E0C D0                 7850 	.byte	-48
   1E0D 24                 7851 	.byte	36
   1E0E 01                 7852 	.byte	1
                           7853 	.globl _depth2RollingRight7
   1E0F                    7854 _depth2RollingRight7:
   1E0F 00                 7855 	.byte	0
   1E10 21                 7856 	.byte	33
   1E11 0F                 7857 	.byte	15
   1E12 FF                 7858 	.byte	-1
   1E13 E8                 7859 	.byte	-24
   1E14 1B                 7860 	.byte	27
   1E15 FF                 7861 	.byte	-1
   1E16 30                 7862 	.byte	48
   1E17 DC                 7863 	.byte	-36
   1E18 FF                 7864 	.byte	-1
   1E19 18                 7865 	.byte	24
   1E1A E8                 7866 	.byte	-24
   1E1B FF                 7867 	.byte	-1
   1E1C D0                 7868 	.byte	-48
   1E1D 21                 7869 	.byte	33
   1E1E FF                 7870 	.byte	-1
   1E1F 21                 7871 	.byte	33
   1E20 24                 7872 	.byte	36
   1E21 00                 7873 	.byte	0
   1E22 C7                 7874 	.byte	-57
   1E23 F7                 7875 	.byte	-9
   1E24 FF                 7876 	.byte	-1
   1E25 1E                 7877 	.byte	30
   1E26 21                 7878 	.byte	33
   1E27 00                 7879 	.byte	0
   1E28 12                 7880 	.byte	18
   1E29 BB                 7881 	.byte	-69
   1E2A FF                 7882 	.byte	-1
   1E2B 1E                 7883 	.byte	30
   1E2C 21                 7884 	.byte	33
   1E2D 00                 7885 	.byte	0
   1E2E FA                 7886 	.byte	-6
   1E2F C7                 7887 	.byte	-57
   1E30 FF                 7888 	.byte	-1
   1E31 21                 7889 	.byte	33
   1E32 21                 7890 	.byte	33
   1E33 00                 7891 	.byte	0
   1E34 D0                 7892 	.byte	-48
   1E35 24                 7893 	.byte	36
   1E36 FF                 7894 	.byte	-1
   1E37 E5                 7895 	.byte	-27
   1E38 18                 7896 	.byte	24
   1E39 FF                 7897 	.byte	-1
   1E3A 30                 7898 	.byte	48
   1E3B DC                 7899 	.byte	-36
   1E3C FF                 7900 	.byte	-1
   1E3D 1B                 7901 	.byte	27
   1E3E E8                 7902 	.byte	-24
   1E3F FF                 7903 	.byte	-1
   1E40 D0                 7904 	.byte	-48
   1E41 24                 7905 	.byte	36
   1E42 01                 7906 	.byte	1
                           7907 	.globl _width2RollingFront7
   1E43                    7908 _width2RollingFront7:
   1E43 FF                 7909 	.byte	-1
   1E44 12                 7910 	.byte	18
   1E45 54                 7911 	.byte	84
   1E46 FF                 7912 	.byte	-1
   1E47 2D                 7913 	.byte	45
   1E48 F4                 7914 	.byte	-12
   1E49 FF                 7915 	.byte	-1
   1E4A EE                 7916 	.byte	-18
   1E4B AF                 7917 	.byte	-81
   1E4C FF                 7918 	.byte	-1
   1E4D D3                 7919 	.byte	-45
   1E4E 09                 7920 	.byte	9
   1E4F FF                 7921 	.byte	-1
   1E50 06                 7922 	.byte	6
   1E51 0F                 7923 	.byte	15
   1E52 00                 7924 	.byte	0
   1E53 0C                 7925 	.byte	12
   1E54 45                 7926 	.byte	69
   1E55 FF                 7927 	.byte	-1
   1E56 06                 7928 	.byte	6
   1E57 0F                 7929 	.byte	15
   1E58 00                 7930 	.byte	0
   1E59 27                 7931 	.byte	39
   1E5A E5                 7932 	.byte	-27
   1E5B FF                 7933 	.byte	-1
   1E5C 06                 7934 	.byte	6
   1E5D 0F                 7935 	.byte	15
   1E5E 00                 7936 	.byte	0
   1E5F E8                 7937 	.byte	-24
   1E60 A0                 7938 	.byte	-96
   1E61 FF                 7939 	.byte	-1
   1E62 06                 7940 	.byte	6
   1E63 0C                 7941 	.byte	12
   1E64 00                 7942 	.byte	0
   1E65 D3                 7943 	.byte	-45
   1E66 0C                 7944 	.byte	12
   1E67 FF                 7945 	.byte	-1
   1E68 12                 7946 	.byte	18
   1E69 54                 7947 	.byte	84
   1E6A FF                 7948 	.byte	-1
   1E6B 2D                 7949 	.byte	45
   1E6C F4                 7950 	.byte	-12
   1E6D FF                 7951 	.byte	-1
   1E6E EE                 7952 	.byte	-18
   1E6F AC                 7953 	.byte	-84
   1E70 FF                 7954 	.byte	-1
   1E71 D3                 7955 	.byte	-45
   1E72 0C                 7956 	.byte	12
   1E73 01                 7957 	.byte	1
                           7958 	.globl _width2RollingBack7
   1E74                    7959 _width2RollingBack7:
   1E74 00                 7960 	.byte	0
   1E75 27                 7961 	.byte	39
   1E76 FD                 7962 	.byte	-3
   1E77 FF                 7963 	.byte	-1
   1E78 12                 7964 	.byte	18
   1E79 51                 7965 	.byte	81
   1E7A FF                 7966 	.byte	-1
   1E7B F1                 7967 	.byte	-15
   1E7C F4                 7968 	.byte	-12
   1E7D FF                 7969 	.byte	-1
   1E7E EE                 7970 	.byte	-18
   1E7F AF                 7971 	.byte	-81
   1E80 FF                 7972 	.byte	-1
   1E81 0F                 7973 	.byte	15
   1E82 0C                 7974 	.byte	12
   1E83 FF                 7975 	.byte	-1
   1E84 2D                 7976 	.byte	45
   1E85 F1                 7977 	.byte	-15
   1E86 00                 7978 	.byte	0
   1E87 E5                 7979 	.byte	-27
   1E88 60                 7980 	.byte	96
   1E89 FF                 7981 	.byte	-1
   1E8A 2D                 7982 	.byte	45
   1E8B F1                 7983 	.byte	-15
   1E8C 00                 7984 	.byte	0
   1E8D C4                 7985 	.byte	-60
   1E8E 03                 7986 	.byte	3
   1E8F FF                 7987 	.byte	-1
   1E90 2A                 7988 	.byte	42
   1E91 F1                 7989 	.byte	-15
   1E92 00                 7990 	.byte	0
   1E93 C4                 7991 	.byte	-60
   1E94 BE                 7992 	.byte	-66
   1E95 FF                 7993 	.byte	-1
   1E96 2A                 7994 	.byte	42
   1E97 F1                 7995 	.byte	-15
   1E98 00                 7996 	.byte	0
   1E99 12                 7997 	.byte	18
   1E9A 0C                 7998 	.byte	12
   1E9B FF                 7999 	.byte	-1
   1E9C 12                 8000 	.byte	18
   1E9D 51                 8001 	.byte	81
   1E9E FF                 8002 	.byte	-1
   1E9F EE                 8003 	.byte	-18
   1EA0 F4                 8004 	.byte	-12
   1EA1 FF                 8005 	.byte	-1
   1EA2 EE                 8006 	.byte	-18
   1EA3 AF                 8007 	.byte	-81
   1EA4 FF                 8008 	.byte	-1
   1EA5 12                 8009 	.byte	18
   1EA6 0C                 8010 	.byte	12
   1EA7 01                 8011 	.byte	1
                           8012 	.globl _height1FallingLeft7
   1EA8                    8013 _height1FallingLeft7:
   1EA8 FF                 8014 	.byte	-1
   1EA9 24                 8015 	.byte	36
   1EAA 1B                 8016 	.byte	27
   1EAB FF                 8017 	.byte	-1
   1EAC 18                 8018 	.byte	24
   1EAD EE                 8019 	.byte	-18
   1EAE FF                 8020 	.byte	-1
   1EAF DC                 8021 	.byte	-36
   1EB0 E8                 8022 	.byte	-24
   1EB1 FF                 8023 	.byte	-1
   1EB2 E8                 8024 	.byte	-24
   1EB3 0F                 8025 	.byte	15
   1EB4 FF                 8026 	.byte	-1
   1EB5 12                 8027 	.byte	18
   1EB6 E2                 8028 	.byte	-30
   1EB7 00                 8029 	.byte	0
   1EB8 12                 8030 	.byte	18
   1EB9 39                 8031 	.byte	57
   1EBA FF                 8032 	.byte	-1
   1EBB 12                 8033 	.byte	18
   1EBC DF                 8034 	.byte	-33
   1EBD 00                 8035 	.byte	0
   1EBE 06                 8036 	.byte	6
   1EBF 0F                 8037 	.byte	15
   1EC0 FF                 8038 	.byte	-1
   1EC1 12                 8039 	.byte	18
   1EC2 DF                 8040 	.byte	-33
   1EC3 00                 8041 	.byte	0
   1EC4 CA                 8042 	.byte	-54
   1EC5 09                 8043 	.byte	9
   1EC6 FF                 8044 	.byte	-1
   1EC7 12                 8045 	.byte	18
   1EC8 DF                 8046 	.byte	-33
   1EC9 00                 8047 	.byte	0
   1ECA E8                 8048 	.byte	-24
   1ECB 12                 8049 	.byte	18
   1ECC FF                 8050 	.byte	-1
   1ECD 24                 8051 	.byte	36
   1ECE 18                 8052 	.byte	24
   1ECF FF                 8053 	.byte	-1
   1ED0 18                 8054 	.byte	24
   1ED1 EE                 8055 	.byte	-18
   1ED2 FF                 8056 	.byte	-1
   1ED3 DC                 8057 	.byte	-36
   1ED4 E8                 8058 	.byte	-24
   1ED5 FF                 8059 	.byte	-1
   1ED6 E8                 8060 	.byte	-24
   1ED7 12                 8061 	.byte	18
   1ED8 01                 8062 	.byte	1
                           8063 	.globl _height1FallingRight7
   1ED9                    8064 _height1FallingRight7:
   1ED9 00                 8065 	.byte	0
   1EDA 21                 8066 	.byte	33
   1EDB 0F                 8067 	.byte	15
   1EDC FF                 8068 	.byte	-1
   1EDD E8                 8069 	.byte	-24
   1EDE 1B                 8070 	.byte	27
   1EDF FF                 8071 	.byte	-1
   1EE0 18                 8072 	.byte	24
   1EE1 EE                 8073 	.byte	-18
   1EE2 FF                 8074 	.byte	-1
   1EE3 18                 8075 	.byte	24
   1EE4 E8                 8076 	.byte	-24
   1EE5 FF                 8077 	.byte	-1
   1EE6 E8                 8078 	.byte	-24
   1EE7 0F                 8079 	.byte	15
   1EE8 FF                 8080 	.byte	-1
   1EE9 21                 8081 	.byte	33
   1EEA 24                 8082 	.byte	36
   1EEB 00                 8083 	.byte	0
   1EEC C7                 8084 	.byte	-57
   1EED F7                 8085 	.byte	-9
   1EEE FF                 8086 	.byte	-1
   1EEF 1E                 8087 	.byte	30
   1EF0 21                 8088 	.byte	33
   1EF1 00                 8089 	.byte	0
   1EF2 FA                 8090 	.byte	-6
   1EF3 CD                 8091 	.byte	-51
   1EF4 FF                 8092 	.byte	-1
   1EF5 1E                 8093 	.byte	30
   1EF6 21                 8094 	.byte	33
   1EF7 00                 8095 	.byte	0
   1EF8 FA                 8096 	.byte	-6
   1EF9 C7                 8097 	.byte	-57
   1EFA FF                 8098 	.byte	-1
   1EFB 21                 8099 	.byte	33
   1EFC 21                 8100 	.byte	33
   1EFD 00                 8101 	.byte	0
   1EFE E8                 8102 	.byte	-24
   1EFF 12                 8103 	.byte	18
   1F00 FF                 8104 	.byte	-1
   1F01 E5                 8105 	.byte	-27
   1F02 18                 8106 	.byte	24
   1F03 FF                 8107 	.byte	-1
   1F04 18                 8108 	.byte	24
   1F05 EE                 8109 	.byte	-18
   1F06 FF                 8110 	.byte	-1
   1F07 1B                 8111 	.byte	27
   1F08 E8                 8112 	.byte	-24
   1F09 FF                 8113 	.byte	-1
   1F0A E8                 8114 	.byte	-24
   1F0B 12                 8115 	.byte	18
   1F0C 01                 8116 	.byte	1
                           8117 	.globl _height1FallingBack7
   1F0D                    8118 _height1FallingBack7:
   1F0D 00                 8119 	.byte	0
   1F0E 27                 8120 	.byte	39
   1F0F FD                 8121 	.byte	-3
   1F10 FF                 8122 	.byte	-1
   1F11 09                 8123 	.byte	9
   1F12 27                 8124 	.byte	39
   1F13 FF                 8125 	.byte	-1
   1F14 F1                 8126 	.byte	-15
   1F15 F4                 8127 	.byte	-12
   1F16 FF                 8128 	.byte	-1
   1F17 F7                 8129 	.byte	-9
   1F18 D9                 8130 	.byte	-39
   1F19 FF                 8131 	.byte	-1
   1F1A 0F                 8132 	.byte	15
   1F1B 0C                 8133 	.byte	12
   1F1C FF                 8134 	.byte	-1
   1F1D 2D                 8135 	.byte	45
   1F1E F1                 8136 	.byte	-15
   1F1F 00                 8137 	.byte	0
   1F20 DC                 8138 	.byte	-36
   1F21 36                 8139 	.byte	54
   1F22 FF                 8140 	.byte	-1
   1F23 2D                 8141 	.byte	45
   1F24 F1                 8142 	.byte	-15
   1F25 00                 8143 	.byte	0
   1F26 C4                 8144 	.byte	-60
   1F27 03                 8145 	.byte	3
   1F28 FF                 8146 	.byte	-1
   1F29 2A                 8147 	.byte	42
   1F2A F1                 8148 	.byte	-15
   1F2B 00                 8149 	.byte	0
   1F2C CD                 8150 	.byte	-51
   1F2D E8                 8151 	.byte	-24
   1F2E FF                 8152 	.byte	-1
   1F2F 2A                 8153 	.byte	42
   1F30 F1                 8154 	.byte	-15
   1F31 00                 8155 	.byte	0
   1F32 12                 8156 	.byte	18
   1F33 0C                 8157 	.byte	12
   1F34 FF                 8158 	.byte	-1
   1F35 09                 8159 	.byte	9
   1F36 27                 8160 	.byte	39
   1F37 FF                 8161 	.byte	-1
   1F38 EE                 8162 	.byte	-18
   1F39 F4                 8163 	.byte	-12
   1F3A FF                 8164 	.byte	-1
   1F3B F7                 8165 	.byte	-9
   1F3C D9                 8166 	.byte	-39
   1F3D FF                 8167 	.byte	-1
   1F3E 12                 8168 	.byte	18
   1F3F 0C                 8169 	.byte	12
   1F40 01                 8170 	.byte	1
                           8171 	.globl _height1FallingFront7
   1F41                    8172 _height1FallingFront7:
   1F41 FF                 8173 	.byte	-1
   1F42 09                 8174 	.byte	9
   1F43 2A                 8175 	.byte	42
   1F44 FF                 8176 	.byte	-1
   1F45 2D                 8177 	.byte	45
   1F46 F4                 8178 	.byte	-12
   1F47 FF                 8179 	.byte	-1
   1F48 F7                 8180 	.byte	-9
   1F49 D9                 8181 	.byte	-39
   1F4A FF                 8182 	.byte	-1
   1F4B D3                 8183 	.byte	-45
   1F4C 09                 8184 	.byte	9
   1F4D FF                 8185 	.byte	-1
   1F4E 06                 8186 	.byte	6
   1F4F 0F                 8187 	.byte	15
   1F50 00                 8188 	.byte	0
   1F51 03                 8189 	.byte	3
   1F52 1B                 8190 	.byte	27
   1F53 FF                 8191 	.byte	-1
   1F54 06                 8192 	.byte	6
   1F55 0F                 8193 	.byte	15
   1F56 00                 8194 	.byte	0
   1F57 27                 8195 	.byte	39
   1F58 E5                 8196 	.byte	-27
   1F59 FF                 8197 	.byte	-1
   1F5A 06                 8198 	.byte	6
   1F5B 0F                 8199 	.byte	15
   1F5C 00                 8200 	.byte	0
   1F5D F1                 8201 	.byte	-15
   1F5E CA                 8202 	.byte	-54
   1F5F FF                 8203 	.byte	-1
   1F60 06                 8204 	.byte	6
   1F61 0C                 8205 	.byte	12
   1F62 00                 8206 	.byte	0
   1F63 D3                 8207 	.byte	-45
   1F64 0C                 8208 	.byte	12
   1F65 FF                 8209 	.byte	-1
   1F66 09                 8210 	.byte	9
   1F67 2A                 8211 	.byte	42
   1F68 FF                 8212 	.byte	-1
   1F69 2D                 8213 	.byte	45
   1F6A F4                 8214 	.byte	-12
   1F6B FF                 8215 	.byte	-1
   1F6C F7                 8216 	.byte	-9
   1F6D D6                 8217 	.byte	-42
   1F6E FF                 8218 	.byte	-1
   1F6F D3                 8219 	.byte	-45
   1F70 0C                 8220 	.byte	12
   1F71 01                 8221 	.byte	1
                           8222 	.globl _height2FallingLeft8
   1F72                    8223 _height2FallingLeft8:
   1F72 FF                 8224 	.byte	-1
   1F73 27                 8225 	.byte	39
   1F74 15                 8226 	.byte	21
   1F75 FF                 8227 	.byte	-1
   1F76 18                 8228 	.byte	24
   1F77 EE                 8229 	.byte	-18
   1F78 FF                 8230 	.byte	-1
   1F79 D9                 8231 	.byte	-39
   1F7A EE                 8232 	.byte	-18
   1F7B FF                 8233 	.byte	-1
   1F7C E8                 8234 	.byte	-24
   1F7D 0F                 8235 	.byte	15
   1F7E FF                 8236 	.byte	-1
   1F7F 18                 8237 	.byte	24
   1F80 BB                 8238 	.byte	-69
   1F81 00                 8239 	.byte	0
   1F82 0F                 8240 	.byte	15
   1F83 5A                 8241 	.byte	90
   1F84 FF                 8242 	.byte	-1
   1F85 18                 8243 	.byte	24
   1F86 BB                 8244 	.byte	-69
   1F87 00                 8245 	.byte	0
   1F88 00                 8246 	.byte	0
   1F89 33                 8247 	.byte	51
   1F8A FF                 8248 	.byte	-1
   1F8B 18                 8249 	.byte	24
   1F8C BB                 8250 	.byte	-69
   1F8D 00                 8251 	.byte	0
   1F8E C1                 8252 	.byte	-63
   1F8F 33                 8253 	.byte	51
   1F90 FF                 8254 	.byte	-1
   1F91 18                 8255 	.byte	24
   1F92 B8                 8256 	.byte	-72
   1F93 00                 8257 	.byte	0
   1F94 E8                 8258 	.byte	-24
   1F95 12                 8259 	.byte	18
   1F96 FF                 8260 	.byte	-1
   1F97 27                 8261 	.byte	39
   1F98 15                 8262 	.byte	21
   1F99 FF                 8263 	.byte	-1
   1F9A 18                 8264 	.byte	24
   1F9B EE                 8265 	.byte	-18
   1F9C FF                 8266 	.byte	-1
   1F9D D9                 8267 	.byte	-39
   1F9E EB                 8268 	.byte	-21
   1F9F FF                 8269 	.byte	-1
   1FA0 E8                 8270 	.byte	-24
   1FA1 12                 8271 	.byte	18
   1FA2 01                 8272 	.byte	1
                           8273 	.globl _height2RisingRight8
   1FA3                    8274 _height2RisingRight8:
   1FA3 00                 8275 	.byte	0
   1FA4 12                 8276 	.byte	18
   1FA5 54                 8277 	.byte	84
   1FA6 FF                 8278 	.byte	-1
   1FA7 18                 8279 	.byte	24
   1FA8 27                 8280 	.byte	39
   1FA9 FF                 8281 	.byte	-1
   1FAA 18                 8282 	.byte	24
   1FAB EE                 8283 	.byte	-18
   1FAC FF                 8284 	.byte	-1
   1FAD E8                 8285 	.byte	-24
   1FAE D9                 8286 	.byte	-39
   1FAF FF                 8287 	.byte	-1
   1FB0 E8                 8288 	.byte	-24
   1FB1 12                 8289 	.byte	18
   1FB2 FF                 8290 	.byte	-1
   1FB3 42                 8291 	.byte	66
   1FB4 DF                 8292 	.byte	-33
   1FB5 00                 8293 	.byte	0
   1FB6 D6                 8294 	.byte	-42
   1FB7 48                 8295 	.byte	72
   1FB8 FF                 8296 	.byte	-1
   1FB9 3F                 8297 	.byte	63
   1FBA DF                 8298 	.byte	-33
   1FBB 00                 8299 	.byte	0
   1FBC D9                 8300 	.byte	-39
   1FBD 0F                 8301 	.byte	15
   1FBE FF                 8302 	.byte	-1
   1FBF 3F                 8303 	.byte	63
   1FC0 DF                 8304 	.byte	-33
   1FC1 00                 8305 	.byte	0
   1FC2 A9                 8306 	.byte	-87
   1FC3 FA                 8307 	.byte	-6
   1FC4 FF                 8308 	.byte	-1
   1FC5 42                 8309 	.byte	66
   1FC6 DF                 8310 	.byte	-33
   1FC7 00                 8311 	.byte	0
   1FC8 E8                 8312 	.byte	-24
   1FC9 12                 8313 	.byte	18
   1FCA FF                 8314 	.byte	-1
   1FCB 15                 8315 	.byte	21
   1FCC 27                 8316 	.byte	39
   1FCD FF                 8317 	.byte	-1
   1FCE 18                 8318 	.byte	24
   1FCF EE                 8319 	.byte	-18
   1FD0 FF                 8320 	.byte	-1
   1FD1 EB                 8321 	.byte	-21
   1FD2 D9                 8322 	.byte	-39
   1FD3 FF                 8323 	.byte	-1
   1FD4 E8                 8324 	.byte	-24
   1FD5 12                 8325 	.byte	18
   1FD6 01                 8326 	.byte	1
                           8327 	.globl _height2FallingRight8
   1FD7                    8328 _height2FallingRight8:
   1FD7 00                 8329 	.byte	0
   1FD8 27                 8330 	.byte	39
   1FD9 15                 8331 	.byte	21
   1FDA FF                 8332 	.byte	-1
   1FDB E2                 8333 	.byte	-30
   1FDC 15                 8334 	.byte	21
   1FDD FF                 8335 	.byte	-1
   1FDE 18                 8336 	.byte	24
   1FDF EE                 8337 	.byte	-18
   1FE0 FF                 8338 	.byte	-1
   1FE1 1E                 8339 	.byte	30
   1FE2 EB                 8340 	.byte	-21
   1FE3 FF                 8341 	.byte	-1
   1FE4 E8                 8342 	.byte	-24
   1FE5 12                 8343 	.byte	18
   1FE6 FF                 8344 	.byte	-1
   1FE7 36                 8345 	.byte	54
   1FE8 48                 8346 	.byte	72
   1FE9 00                 8347 	.byte	0
   1FEA AC                 8348 	.byte	-84
   1FEB CD                 8349 	.byte	-51
   1FEC FF                 8350 	.byte	-1
   1FED 36                 8351 	.byte	54
   1FEE 48                 8352 	.byte	72
   1FEF 00                 8353 	.byte	0
   1FF0 E2                 8354 	.byte	-30
   1FF1 A6                 8355 	.byte	-90
   1FF2 FF                 8356 	.byte	-1
   1FF3 36                 8357 	.byte	54
   1FF4 48                 8358 	.byte	72
   1FF5 00                 8359 	.byte	0
   1FF6 E8                 8360 	.byte	-24
   1FF7 A3                 8361 	.byte	-93
   1FF8 FF                 8362 	.byte	-1
   1FF9 36                 8363 	.byte	54
   1FFA 48                 8364 	.byte	72
   1FFB 00                 8365 	.byte	0
   1FFC E8                 8366 	.byte	-24
   1FFD 12                 8367 	.byte	18
   1FFE FF                 8368 	.byte	-1
   1FFF E2                 8369 	.byte	-30
   2000 15                 8370 	.byte	21
   2001 FF                 8371 	.byte	-1
   2002 18                 8372 	.byte	24
   2003 EE                 8373 	.byte	-18
   2004 FF                 8374 	.byte	-1
   2005 1E                 8375 	.byte	30
   2006 EB                 8376 	.byte	-21
   2007 FF                 8377 	.byte	-1
   2008 E8                 8378 	.byte	-24
   2009 12                 8379 	.byte	18
   200A 01                 8380 	.byte	1
                           8381 	.globl _height2RisingLeft8
   200B                    8382 _height2RisingLeft8:
   200B 00                 8383 	.byte	0
   200C 06                 8384 	.byte	6
   200D DC                 8385 	.byte	-36
   200E FF                 8386 	.byte	-1
   200F FA                 8387 	.byte	-6
   2010 24                 8388 	.byte	36
   2011 FF                 8389 	.byte	-1
   2012 18                 8390 	.byte	24
   2013 F1                 8391 	.byte	-15
   2014 FF                 8392 	.byte	-1
   2015 06                 8393 	.byte	6
   2016 D9                 8394 	.byte	-39
   2017 FF                 8395 	.byte	-1
   2018 E8                 8396 	.byte	-24
   2019 12                 8397 	.byte	18
   201A FF                 8398 	.byte	-1
   201B 51                 8399 	.byte	81
   201C 21                 8400 	.byte	33
   201D 00                 8401 	.byte	0
   201E A9                 8402 	.byte	-87
   201F 03                 8403 	.byte	3
   2020 FF                 8404 	.byte	-1
   2021 4E                 8405 	.byte	78
   2022 21                 8406 	.byte	33
   2023 00                 8407 	.byte	0
   2024 CA                 8408 	.byte	-54
   2025 D0                 8409 	.byte	-48
   2026 FF                 8410 	.byte	-1
   2027 4E                 8411 	.byte	78
   2028 1E                 8412 	.byte	30
   2029 00                 8413 	.byte	0
   202A B8                 8414 	.byte	-72
   202B BB                 8415 	.byte	-69
   202C FF                 8416 	.byte	-1
   202D 51                 8417 	.byte	81
   202E 21                 8418 	.byte	33
   202F 00                 8419 	.byte	0
   2030 E8                 8420 	.byte	-24
   2031 12                 8421 	.byte	18
   2032 FF                 8422 	.byte	-1
   2033 F7                 8423 	.byte	-9
   2034 24                 8424 	.byte	36
   2035 FF                 8425 	.byte	-1
   2036 18                 8426 	.byte	24
   2037 EE                 8427 	.byte	-18
   2038 FF                 8428 	.byte	-1
   2039 09                 8429 	.byte	9
   203A DC                 8430 	.byte	-36
   203B FF                 8431 	.byte	-1
   203C E8                 8432 	.byte	-24
   203D 12                 8433 	.byte	18
   203E 01                 8434 	.byte	1
                           8435 	.globl _height2FallingBack8
   203F                    8436 _height2FallingBack8:
   203F 00                 8437 	.byte	0
   2040 2D                 8438 	.byte	45
   2041 FA                 8439 	.byte	-6
   2042 FF                 8440 	.byte	-1
   2043 09                 8441 	.byte	9
   2044 27                 8442 	.byte	39
   2045 FF                 8443 	.byte	-1
   2046 EB                 8444 	.byte	-21
   2047 F7                 8445 	.byte	-9
   2048 FF                 8446 	.byte	-1
   2049 F7                 8447 	.byte	-9
   204A D9                 8448 	.byte	-39
   204B FF                 8449 	.byte	-1
   204C 15                 8450 	.byte	21
   204D 09                 8451 	.byte	9
   204E FF                 8452 	.byte	-1
   204F 51                 8453 	.byte	81
   2050 E2                 8454 	.byte	-30
   2051 00                 8455 	.byte	0
   2052 B8                 8456 	.byte	-72
   2053 45                 8457 	.byte	69
   2054 FF                 8458 	.byte	-1
   2055 51                 8459 	.byte	81
   2056 E2                 8460 	.byte	-30
   2057 00                 8461 	.byte	0
   2058 9A                 8462 	.byte	-102
   2059 15                 8463 	.byte	21
   205A FF                 8464 	.byte	-1
   205B 51                 8465 	.byte	81
   205C E5                 8466 	.byte	-27
   205D 00                 8467 	.byte	0
   205E A6                 8468 	.byte	-90
   205F F4                 8469 	.byte	-12
   2060 FF                 8470 	.byte	-1
   2061 51                 8471 	.byte	81
   2062 E2                 8472 	.byte	-30
   2063 00                 8473 	.byte	0
   2064 15                 8474 	.byte	21
   2065 09                 8475 	.byte	9
   2066 FF                 8476 	.byte	-1
   2067 09                 8477 	.byte	9
   2068 27                 8478 	.byte	39
   2069 FF                 8479 	.byte	-1
   206A EB                 8480 	.byte	-21
   206B FA                 8481 	.byte	-6
   206C FF                 8482 	.byte	-1
   206D F7                 8483 	.byte	-9
   206E D6                 8484 	.byte	-42
   206F FF                 8485 	.byte	-1
   2070 15                 8486 	.byte	21
   2071 09                 8487 	.byte	9
   2072 01                 8488 	.byte	1
                           8489 	.globl _height2RisingFront8
   2073                    8490 _height2RisingFront8:
   2073 00                 8491 	.byte	0
   2074 FD                 8492 	.byte	-3
   2075 12                 8493 	.byte	18
   2076 FF                 8494 	.byte	-1
   2077 06                 8495 	.byte	6
   2078 2A                 8496 	.byte	42
   2079 FF                 8497 	.byte	-1
   207A 06                 8498 	.byte	6
   207B EE                 8499 	.byte	-18
   207C FF                 8500 	.byte	-1
   207D F7                 8501 	.byte	-9
   207E D6                 8502 	.byte	-42
   207F FF                 8503 	.byte	-1
   2080 FD                 8504 	.byte	-3
   2081 12                 8505 	.byte	18
   2082 FF                 8506 	.byte	-1
   2083 57                 8507 	.byte	87
   2084 F1                 8508 	.byte	-15
   2085 00                 8509 	.byte	0
   2086 AF                 8510 	.byte	-81
   2087 39                 8511 	.byte	57
   2088 FF                 8512 	.byte	-1
   2089 5A                 8513 	.byte	90
   208A F1                 8514 	.byte	-15
   208B 00                 8515 	.byte	0
   208C AC                 8516 	.byte	-84
   208D FD                 8517 	.byte	-3
   208E FF                 8518 	.byte	-1
   208F 5A                 8519 	.byte	90
   2090 F1                 8520 	.byte	-15
   2091 00                 8521 	.byte	0
   2092 9D                 8522 	.byte	-99
   2093 E5                 8523 	.byte	-27
   2094 FF                 8524 	.byte	-1
   2095 5A                 8525 	.byte	90
   2096 F4                 8526 	.byte	-12
   2097 00                 8527 	.byte	0
   2098 FA                 8528 	.byte	-6
   2099 0F                 8529 	.byte	15
   209A FF                 8530 	.byte	-1
   209B 09                 8531 	.byte	9
   209C 2A                 8532 	.byte	42
   209D FF                 8533 	.byte	-1
   209E 06                 8534 	.byte	6
   209F EE                 8535 	.byte	-18
   20A0 FF                 8536 	.byte	-1
   20A1 F7                 8537 	.byte	-9
   20A2 D9                 8538 	.byte	-39
   20A3 FF                 8539 	.byte	-1
   20A4 FA                 8540 	.byte	-6
   20A5 0F                 8541 	.byte	15
   20A6 01                 8542 	.byte	1
                           8543 	.globl _height2FallingFront8
   20A7                    8544 _height2FallingFront8:
   20A7 FF                 8545 	.byte	-1
   20A8 09                 8546 	.byte	9
   20A9 2A                 8547 	.byte	42
   20AA FF                 8548 	.byte	-1
   20AB 2D                 8549 	.byte	45
   20AC F7                 8550 	.byte	-9
   20AD FF                 8551 	.byte	-1
   20AE F7                 8552 	.byte	-9
   20AF D9                 8553 	.byte	-39
   20B0 FF                 8554 	.byte	-1
   20B1 D3                 8555 	.byte	-45
   20B2 06                 8556 	.byte	6
   20B3 FF                 8557 	.byte	-1
   20B4 00                 8558 	.byte	0
   20B5 1E                 8559 	.byte	30
   20B6 00                 8560 	.byte	0
   20B7 09                 8561 	.byte	9
   20B8 0C                 8562 	.byte	12
   20B9 FF                 8563 	.byte	-1
   20BA FD                 8564 	.byte	-3
   20BB 1E                 8565 	.byte	30
   20BC 00                 8566 	.byte	0
   20BD 30                 8567 	.byte	48
   20BE D9                 8568 	.byte	-39
   20BF FF                 8569 	.byte	-1
   20C0 FD                 8570 	.byte	-3
   20C1 1E                 8571 	.byte	30
   20C2 00                 8572 	.byte	0
   20C3 FA                 8573 	.byte	-6
   20C4 BB                 8574 	.byte	-69
   20C5 FF                 8575 	.byte	-1
   20C6 FD                 8576 	.byte	-3
   20C7 1B                 8577 	.byte	27
   20C8 00                 8578 	.byte	0
   20C9 D6                 8579 	.byte	-42
   20CA 09                 8580 	.byte	9
   20CB FF                 8581 	.byte	-1
   20CC 06                 8582 	.byte	6
   20CD 2A                 8583 	.byte	42
   20CE FF                 8584 	.byte	-1
   20CF 2D                 8585 	.byte	45
   20D0 F7                 8586 	.byte	-9
   20D1 FF                 8587 	.byte	-1
   20D2 F7                 8588 	.byte	-9
   20D3 D6                 8589 	.byte	-42
   20D4 FF                 8590 	.byte	-1
   20D5 D6                 8591 	.byte	-42
   20D6 09                 8592 	.byte	9
   20D7 01                 8593 	.byte	1
                           8594 	.globl _height2RisingBack8
   20D8                    8595 _height2RisingBack8:
   20D8 00                 8596 	.byte	0
   20D9 30                 8597 	.byte	48
   20DA DF                 8598 	.byte	-33
   20DB FF                 8599 	.byte	-1
   20DC 09                 8600 	.byte	9
   20DD 27                 8601 	.byte	39
   20DE FF                 8602 	.byte	-1
   20DF 24                 8603 	.byte	36
   20E0 F1                 8604 	.byte	-15
   20E1 FF                 8605 	.byte	-1
   20E2 F7                 8606 	.byte	-9
   20E3 D6                 8607 	.byte	-42
   20E4 FF                 8608 	.byte	-1
   20E5 DC                 8609 	.byte	-36
   20E6 12                 8610 	.byte	18
   20E7 FF                 8611 	.byte	-1
   20E8 36                 8612 	.byte	54
   20E9 0F                 8613 	.byte	15
   20EA 00                 8614 	.byte	0
   20EB D3                 8615 	.byte	-45
   20EC 18                 8616 	.byte	24
   20ED FF                 8617 	.byte	-1
   20EE 36                 8618 	.byte	54
   20EF 0F                 8619 	.byte	15
   20F0 00                 8620 	.byte	0
   20F1 EE                 8621 	.byte	-18
   20F2 E2                 8622 	.byte	-30
   20F3 FF                 8623 	.byte	-1
   20F4 36                 8624 	.byte	54
   20F5 0C                 8625 	.byte	12
   20F6 00                 8626 	.byte	0
   20F7 C1                 8627 	.byte	-63
   20F8 CA                 8628 	.byte	-54
   20F9 FF                 8629 	.byte	-1
   20FA 36                 8630 	.byte	54
   20FB 0F                 8631 	.byte	15
   20FC 00                 8632 	.byte	0
   20FD DC                 8633 	.byte	-36
   20FE 12                 8634 	.byte	18
   20FF FF                 8635 	.byte	-1
   2100 09                 8636 	.byte	9
   2101 27                 8637 	.byte	39
   2102 FF                 8638 	.byte	-1
   2103 24                 8639 	.byte	36
   2104 EE                 8640 	.byte	-18
   2105 FF                 8641 	.byte	-1
   2106 F7                 8642 	.byte	-9
   2107 D9                 8643 	.byte	-39
   2108 FF                 8644 	.byte	-1
   2109 DC                 8645 	.byte	-36
   210A 12                 8646 	.byte	18
   210B 01                 8647 	.byte	1
                           8648 	.globl _depth2RollingLeft8
   210C                    8649 _depth2RollingLeft8:
   210C FF                 8650 	.byte	-1
   210D 27                 8651 	.byte	39
   210E 15                 8652 	.byte	21
   210F FF                 8653 	.byte	-1
   2110 30                 8654 	.byte	48
   2111 DF                 8655 	.byte	-33
   2112 FF                 8656 	.byte	-1
   2113 D9                 8657 	.byte	-39
   2114 EB                 8658 	.byte	-21
   2115 FF                 8659 	.byte	-1
   2116 D0                 8660 	.byte	-48
   2117 21                 8661 	.byte	33
   2118 FF                 8662 	.byte	-1
   2119 0C                 8663 	.byte	12
   211A DF                 8664 	.byte	-33
   211B 00                 8665 	.byte	0
   211C 1B                 8666 	.byte	27
   211D 36                 8667 	.byte	54
   211E FF                 8668 	.byte	-1
   211F 0C                 8669 	.byte	12
   2120 DF                 8670 	.byte	-33
   2121 00                 8671 	.byte	0
   2122 24                 8672 	.byte	36
   2123 00                 8673 	.byte	0
   2124 FF                 8674 	.byte	-1
   2125 0C                 8675 	.byte	12
   2126 DC                 8676 	.byte	-36
   2127 00                 8677 	.byte	0
   2128 CD                 8678 	.byte	-51
   2129 0F                 8679 	.byte	15
   212A FF                 8680 	.byte	-1
   212B 0C                 8681 	.byte	12
   212C DC                 8682 	.byte	-36
   212D 00                 8683 	.byte	0
   212E D0                 8684 	.byte	-48
   212F 24                 8685 	.byte	36
   2130 FF                 8686 	.byte	-1
   2131 27                 8687 	.byte	39
   2132 15                 8688 	.byte	21
   2133 FF                 8689 	.byte	-1
   2134 30                 8690 	.byte	48
   2135 DC                 8691 	.byte	-36
   2136 FF                 8692 	.byte	-1
   2137 D9                 8693 	.byte	-39
   2138 EB                 8694 	.byte	-21
   2139 FF                 8695 	.byte	-1
   213A D0                 8696 	.byte	-48
   213B 24                 8697 	.byte	36
   213C 01                 8698 	.byte	1
                           8699 	.globl _depth2RollingRight8
   213D                    8700 _depth2RollingRight8:
   213D 00                 8701 	.byte	0
   213E 27                 8702 	.byte	39
   213F 15                 8703 	.byte	21
   2140 FF                 8704 	.byte	-1
   2141 E2                 8705 	.byte	-30
   2142 15                 8706 	.byte	21
   2143 FF                 8707 	.byte	-1
   2144 30                 8708 	.byte	48
   2145 DC                 8709 	.byte	-36
   2146 FF                 8710 	.byte	-1
   2147 1E                 8711 	.byte	30
   2148 EE                 8712 	.byte	-18
   2149 FF                 8713 	.byte	-1
   214A D0                 8714 	.byte	-48
   214B 21                 8715 	.byte	33
   214C FF                 8716 	.byte	-1
   214D 1B                 8717 	.byte	27
   214E 24                 8718 	.byte	36
   214F 00                 8719 	.byte	0
   2150 C7                 8720 	.byte	-57
   2151 F1                 8721 	.byte	-15
   2152 FF                 8722 	.byte	-1
   2153 1B                 8723 	.byte	27
   2154 24                 8724 	.byte	36
   2155 00                 8725 	.byte	0
   2156 15                 8726 	.byte	21
   2157 B8                 8727 	.byte	-72
   2158 FF                 8728 	.byte	-1
   2159 1B                 8729 	.byte	27
   215A 24                 8730 	.byte	36
   215B 00                 8731 	.byte	0
   215C 03                 8732 	.byte	3
   215D CA                 8733 	.byte	-54
   215E FF                 8734 	.byte	-1
   215F 1B                 8735 	.byte	27
   2160 21                 8736 	.byte	33
   2161 00                 8737 	.byte	0
   2162 D0                 8738 	.byte	-48
   2163 24                 8739 	.byte	36
   2164 FF                 8740 	.byte	-1
   2165 E2                 8741 	.byte	-30
   2166 15                 8742 	.byte	21
   2167 FF                 8743 	.byte	-1
   2168 30                 8744 	.byte	48
   2169 DC                 8745 	.byte	-36
   216A FF                 8746 	.byte	-1
   216B 1E                 8747 	.byte	30
   216C EB                 8748 	.byte	-21
   216D FF                 8749 	.byte	-1
   216E D0                 8750 	.byte	-48
   216F 24                 8751 	.byte	36
   2170 01                 8752 	.byte	1
                           8753 	.globl _width2RollingFront8
   2171                    8754 _width2RollingFront8:
   2171 FF                 8755 	.byte	-1
   2172 12                 8756 	.byte	18
   2173 54                 8757 	.byte	84
   2174 FF                 8758 	.byte	-1
   2175 2D                 8759 	.byte	45
   2176 F7                 8760 	.byte	-9
   2177 FF                 8761 	.byte	-1
   2178 EE                 8762 	.byte	-18
   2179 AF                 8763 	.byte	-81
   217A FF                 8764 	.byte	-1
   217B D3                 8765 	.byte	-45
   217C 06                 8766 	.byte	6
   217D FF                 8767 	.byte	-1
   217E 00                 8768 	.byte	0
   217F 0F                 8769 	.byte	15
   2180 00                 8770 	.byte	0
   2181 12                 8771 	.byte	18
   2182 45                 8772 	.byte	69
   2183 FF                 8773 	.byte	-1
   2184 00                 8774 	.byte	0
   2185 0F                 8775 	.byte	15
   2186 00                 8776 	.byte	0
   2187 2D                 8777 	.byte	45
   2188 E8                 8778 	.byte	-24
   2189 FF                 8779 	.byte	-1
   218A 00                 8780 	.byte	0
   218B 0F                 8781 	.byte	15
   218C 00                 8782 	.byte	0
   218D EE                 8783 	.byte	-18
   218E A0                 8784 	.byte	-96
   218F FF                 8785 	.byte	-1
   2190 00                 8786 	.byte	0
   2191 0C                 8787 	.byte	12
   2192 00                 8788 	.byte	0
   2193 D3                 8789 	.byte	-45
   2194 09                 8790 	.byte	9
   2195 FF                 8791 	.byte	-1
   2196 12                 8792 	.byte	18
   2197 54                 8793 	.byte	84
   2198 FF                 8794 	.byte	-1
   2199 2D                 8795 	.byte	45
   219A F7                 8796 	.byte	-9
   219B FF                 8797 	.byte	-1
   219C EE                 8798 	.byte	-18
   219D AC                 8799 	.byte	-84
   219E FF                 8800 	.byte	-1
   219F D3                 8801 	.byte	-45
   21A0 09                 8802 	.byte	9
   21A1 01                 8803 	.byte	1
                           8804 	.globl _width2RollingBack8
   21A2                    8805 _width2RollingBack8:
   21A2 00                 8806 	.byte	0
   21A3 2D                 8807 	.byte	45
   21A4 FA                 8808 	.byte	-6
   21A5 FF                 8809 	.byte	-1
   21A6 12                 8810 	.byte	18
   21A7 51                 8811 	.byte	81
   21A8 FF                 8812 	.byte	-1
   21A9 EB                 8813 	.byte	-21
   21AA F7                 8814 	.byte	-9
   21AB FF                 8815 	.byte	-1
   21AC EE                 8816 	.byte	-18
   21AD AF                 8817 	.byte	-81
   21AE FF                 8818 	.byte	-1
   21AF 15                 8819 	.byte	21
   21B0 09                 8820 	.byte	9
   21B1 FF                 8821 	.byte	-1
   21B2 2A                 8822 	.byte	42
   21B3 F1                 8823 	.byte	-15
   21B4 00                 8824 	.byte	0
   21B5 E8                 8825 	.byte	-24
   21B6 60                 8826 	.byte	96
   21B7 FF                 8827 	.byte	-1
   21B8 2A                 8828 	.byte	42
   21B9 F1                 8829 	.byte	-15
   21BA 00                 8830 	.byte	0
   21BB C1                 8831 	.byte	-63
   21BC 06                 8832 	.byte	6
   21BD FF                 8833 	.byte	-1
   21BE 27                 8834 	.byte	39
   21BF F1                 8835 	.byte	-15
   21C0 00                 8836 	.byte	0
   21C1 C7                 8837 	.byte	-57
   21C2 BE                 8838 	.byte	-66
   21C3 FF                 8839 	.byte	-1
   21C4 27                 8840 	.byte	39
   21C5 F1                 8841 	.byte	-15
   21C6 00                 8842 	.byte	0
   21C7 18                 8843 	.byte	24
   21C8 09                 8844 	.byte	9
   21C9 FF                 8845 	.byte	-1
   21CA 12                 8846 	.byte	18
   21CB 51                 8847 	.byte	81
   21CC FF                 8848 	.byte	-1
   21CD E8                 8849 	.byte	-24
   21CE F7                 8850 	.byte	-9
   21CF FF                 8851 	.byte	-1
   21D0 EE                 8852 	.byte	-18
   21D1 AF                 8853 	.byte	-81
   21D2 FF                 8854 	.byte	-1
   21D3 18                 8855 	.byte	24
   21D4 09                 8856 	.byte	9
   21D5 01                 8857 	.byte	1
                           8858 	.globl _height1FallingLeft8
   21D6                    8859 _height1FallingLeft8:
   21D6 FF                 8860 	.byte	-1
   21D7 27                 8861 	.byte	39
   21D8 15                 8862 	.byte	21
   21D9 FF                 8863 	.byte	-1
   21DA 18                 8864 	.byte	24
   21DB EE                 8865 	.byte	-18
   21DC FF                 8866 	.byte	-1
   21DD D9                 8867 	.byte	-39
   21DE EE                 8868 	.byte	-18
   21DF FF                 8869 	.byte	-1
   21E0 E8                 8870 	.byte	-24
   21E1 0F                 8871 	.byte	15
   21E2 FF                 8872 	.byte	-1
   21E3 0C                 8873 	.byte	12
   21E4 DF                 8874 	.byte	-33
   21E5 00                 8875 	.byte	0
   21E6 1B                 8876 	.byte	27
   21E7 36                 8877 	.byte	54
   21E8 FF                 8878 	.byte	-1
   21E9 0C                 8879 	.byte	12
   21EA DF                 8880 	.byte	-33
   21EB 00                 8881 	.byte	0
   21EC 0C                 8882 	.byte	12
   21ED 0F                 8883 	.byte	15
   21EE FF                 8884 	.byte	-1
   21EF 0C                 8885 	.byte	12
   21F0 DF                 8886 	.byte	-33
   21F1 00                 8887 	.byte	0
   21F2 CD                 8888 	.byte	-51
   21F3 0F                 8889 	.byte	15
   21F4 FF                 8890 	.byte	-1
   21F5 0C                 8891 	.byte	12
   21F6 DC                 8892 	.byte	-36
   21F7 00                 8893 	.byte	0
   21F8 E8                 8894 	.byte	-24
   21F9 12                 8895 	.byte	18
   21FA FF                 8896 	.byte	-1
   21FB 27                 8897 	.byte	39
   21FC 15                 8898 	.byte	21
   21FD FF                 8899 	.byte	-1
   21FE 18                 8900 	.byte	24
   21FF EE                 8901 	.byte	-18
   2200 FF                 8902 	.byte	-1
   2201 D9                 8903 	.byte	-39
   2202 EB                 8904 	.byte	-21
   2203 FF                 8905 	.byte	-1
   2204 E8                 8906 	.byte	-24
   2205 12                 8907 	.byte	18
   2206 01                 8908 	.byte	1
                           8909 	.globl _height1FallingRight8
   2207                    8910 _height1FallingRight8:
   2207 00                 8911 	.byte	0
   2208 27                 8912 	.byte	39
   2209 15                 8913 	.byte	21
   220A FF                 8914 	.byte	-1
   220B E2                 8915 	.byte	-30
   220C 15                 8916 	.byte	21
   220D FF                 8917 	.byte	-1
   220E 18                 8918 	.byte	24
   220F EE                 8919 	.byte	-18
   2210 FF                 8920 	.byte	-1
   2211 1E                 8921 	.byte	30
   2212 EB                 8922 	.byte	-21
   2213 FF                 8923 	.byte	-1
   2214 E8                 8924 	.byte	-24
   2215 12                 8925 	.byte	18
   2216 FF                 8926 	.byte	-1
   2217 1B                 8927 	.byte	27
   2218 24                 8928 	.byte	36
   2219 00                 8929 	.byte	0
   221A C7                 8930 	.byte	-57
   221B F1                 8931 	.byte	-15
   221C FF                 8932 	.byte	-1
   221D 1B                 8933 	.byte	27
   221E 24                 8934 	.byte	36
   221F 00                 8935 	.byte	0
   2220 FD                 8936 	.byte	-3
   2221 CA                 8937 	.byte	-54
   2222 FF                 8938 	.byte	-1
   2223 1B                 8939 	.byte	27
   2224 24                 8940 	.byte	36
   2225 00                 8941 	.byte	0
   2226 03                 8942 	.byte	3
   2227 C7                 8943 	.byte	-57
   2228 FF                 8944 	.byte	-1
   2229 1B                 8945 	.byte	27
   222A 24                 8946 	.byte	36
   222B 00                 8947 	.byte	0
   222C E8                 8948 	.byte	-24
   222D 12                 8949 	.byte	18
   222E FF                 8950 	.byte	-1
   222F E2                 8951 	.byte	-30
   2230 15                 8952 	.byte	21
   2231 FF                 8953 	.byte	-1
   2232 18                 8954 	.byte	24
   2233 EE                 8955 	.byte	-18
   2234 FF                 8956 	.byte	-1
   2235 1E                 8957 	.byte	30
   2236 EB                 8958 	.byte	-21
   2237 FF                 8959 	.byte	-1
   2238 E8                 8960 	.byte	-24
   2239 12                 8961 	.byte	18
   223A 01                 8962 	.byte	1
                           8963 	.globl _height1FallingBack8
   223B                    8964 _height1FallingBack8:
   223B 00                 8965 	.byte	0
   223C 2D                 8966 	.byte	45
   223D FA                 8967 	.byte	-6
   223E FF                 8968 	.byte	-1
   223F 09                 8969 	.byte	9
   2240 27                 8970 	.byte	39
   2241 FF                 8971 	.byte	-1
   2242 EB                 8972 	.byte	-21
   2243 F7                 8973 	.byte	-9
   2244 FF                 8974 	.byte	-1
   2245 F7                 8975 	.byte	-9
   2246 D9                 8976 	.byte	-39
   2247 FF                 8977 	.byte	-1
   2248 15                 8978 	.byte	21
   2249 09                 8979 	.byte	9
   224A FF                 8980 	.byte	-1
   224B 2A                 8981 	.byte	42
   224C F1                 8982 	.byte	-15
   224D 00                 8983 	.byte	0
   224E DF                 8984 	.byte	-33
   224F 36                 8985 	.byte	54
   2250 FF                 8986 	.byte	-1
   2251 2A                 8987 	.byte	42
   2252 F1                 8988 	.byte	-15
   2253 00                 8989 	.byte	0
   2254 C1                 8990 	.byte	-63
   2255 06                 8991 	.byte	6
   2256 FF                 8992 	.byte	-1
   2257 27                 8993 	.byte	39
   2258 F1                 8994 	.byte	-15
   2259 00                 8995 	.byte	0
   225A D0                 8996 	.byte	-48
   225B E8                 8997 	.byte	-24
   225C FF                 8998 	.byte	-1
   225D 27                 8999 	.byte	39
   225E F1                 9000 	.byte	-15
   225F 00                 9001 	.byte	0
   2260 18                 9002 	.byte	24
   2261 09                 9003 	.byte	9
   2262 FF                 9004 	.byte	-1
   2263 09                 9005 	.byte	9
   2264 27                 9006 	.byte	39
   2265 FF                 9007 	.byte	-1
   2266 E8                 9008 	.byte	-24
   2267 F7                 9009 	.byte	-9
   2268 FF                 9010 	.byte	-1
   2269 F7                 9011 	.byte	-9
   226A D9                 9012 	.byte	-39
   226B FF                 9013 	.byte	-1
   226C 18                 9014 	.byte	24
   226D 09                 9015 	.byte	9
   226E 01                 9016 	.byte	1
                           9017 	.globl _height1FallingFront8
   226F                    9018 _height1FallingFront8:
   226F FF                 9019 	.byte	-1
   2270 09                 9020 	.byte	9
   2271 2A                 9021 	.byte	42
   2272 FF                 9022 	.byte	-1
   2273 2D                 9023 	.byte	45
   2274 F7                 9024 	.byte	-9
   2275 FF                 9025 	.byte	-1
   2276 F7                 9026 	.byte	-9
   2277 D9                 9027 	.byte	-39
   2278 FF                 9028 	.byte	-1
   2279 D3                 9029 	.byte	-45
   227A 06                 9030 	.byte	6
   227B FF                 9031 	.byte	-1
   227C 00                 9032 	.byte	0
   227D 0F                 9033 	.byte	15
   227E 00                 9034 	.byte	0
   227F 09                 9035 	.byte	9
   2280 1B                 9036 	.byte	27
   2281 FF                 9037 	.byte	-1
   2282 00                 9038 	.byte	0
   2283 0F                 9039 	.byte	15
   2284 00                 9040 	.byte	0
   2285 2D                 9041 	.byte	45
   2286 E8                 9042 	.byte	-24
   2287 FF                 9043 	.byte	-1
   2288 00                 9044 	.byte	0
   2289 0F                 9045 	.byte	15
   228A 00                 9046 	.byte	0
   228B F7                 9047 	.byte	-9
   228C CA                 9048 	.byte	-54
   228D FF                 9049 	.byte	-1
   228E 00                 9050 	.byte	0
   228F 0C                 9051 	.byte	12
   2290 00                 9052 	.byte	0
   2291 D3                 9053 	.byte	-45
   2292 09                 9054 	.byte	9
   2293 FF                 9055 	.byte	-1
   2294 09                 9056 	.byte	9
   2295 2A                 9057 	.byte	42
   2296 FF                 9058 	.byte	-1
   2297 2D                 9059 	.byte	45
   2298 F7                 9060 	.byte	-9
   2299 FF                 9061 	.byte	-1
   229A F7                 9062 	.byte	-9
   229B D6                 9063 	.byte	-42
   229C FF                 9064 	.byte	-1
   229D D3                 9065 	.byte	-45
   229E 09                 9066 	.byte	9
   229F 01                 9067 	.byte	1
                           9068 	.globl _height2FallingLeft9
   22A0                    9069 _height2FallingLeft9:
   22A0 FF                 9070 	.byte	-1
   22A1 27                 9071 	.byte	39
   22A2 0F                 9072 	.byte	15
   22A3 FF                 9073 	.byte	-1
   22A4 18                 9074 	.byte	24
   22A5 F1                 9075 	.byte	-15
   22A6 FF                 9076 	.byte	-1
   22A7 D9                 9077 	.byte	-39
   22A8 F1                 9078 	.byte	-15
   22A9 FF                 9079 	.byte	-1
   22AA E8                 9080 	.byte	-24
   22AB 0F                 9081 	.byte	15
   22AC FF                 9082 	.byte	-1
   22AD 0C                 9083 	.byte	12
   22AE B5                 9084 	.byte	-75
   22AF 00                 9085 	.byte	0
   22B0 1B                 9086 	.byte	27
   22B1 5A                 9087 	.byte	90
   22B2 FF                 9088 	.byte	-1
   22B3 0F                 9089 	.byte	15
   22B4 B5                 9090 	.byte	-75
   22B5 00                 9091 	.byte	0
   22B6 09                 9092 	.byte	9
   22B7 3C                 9093 	.byte	60
   22B8 FF                 9094 	.byte	-1
   22B9 0F                 9095 	.byte	15
   22BA B2                 9096 	.byte	-78
   22BB 00                 9097 	.byte	0
   22BC CA                 9098 	.byte	-54
   22BD 3F                 9099 	.byte	63
   22BE FF                 9100 	.byte	-1
   22BF 0C                 9101 	.byte	12
   22C0 B2                 9102 	.byte	-78
   22C1 00                 9103 	.byte	0
   22C2 E8                 9104 	.byte	-24
   22C3 12                 9105 	.byte	18
   22C4 FF                 9106 	.byte	-1
   22C5 2A                 9107 	.byte	42
   22C6 0F                 9108 	.byte	15
   22C7 FF                 9109 	.byte	-1
   22C8 18                 9110 	.byte	24
   22C9 EE                 9111 	.byte	-18
   22CA FF                 9112 	.byte	-1
   22CB D6                 9113 	.byte	-42
   22CC F1                 9114 	.byte	-15
   22CD FF                 9115 	.byte	-1
   22CE E8                 9116 	.byte	-24
   22CF 12                 9117 	.byte	18
   22D0 01                 9118 	.byte	1
                           9119 	.globl _height2RisingRight9
   22D1                    9120 _height2RisingRight9:
   22D1 00                 9121 	.byte	0
   22D2 12                 9122 	.byte	18
   22D3 54                 9123 	.byte	84
   22D4 FF                 9124 	.byte	-1
   22D5 12                 9125 	.byte	18
   22D6 2A                 9126 	.byte	42
   22D7 FF                 9127 	.byte	-1
   22D8 18                 9128 	.byte	24
   22D9 EE                 9129 	.byte	-18
   22DA FF                 9130 	.byte	-1
   22DB EE                 9131 	.byte	-18
   22DC D6                 9132 	.byte	-42
   22DD FF                 9133 	.byte	-1
   22DE E8                 9134 	.byte	-24
   22DF 12                 9135 	.byte	18
   22E0 FF                 9136 	.byte	-1
   22E1 48                 9137 	.byte	72
   22E2 EB                 9138 	.byte	-21
   22E3 00                 9139 	.byte	0
   22E4 CA                 9140 	.byte	-54
   22E5 3F                 9141 	.byte	63
   22E6 FF                 9142 	.byte	-1
   22E7 48                 9143 	.byte	72
   22E8 E8                 9144 	.byte	-24
   22E9 00                 9145 	.byte	0
   22EA D0                 9146 	.byte	-48
   22EB 06                 9147 	.byte	6
   22EC FF                 9148 	.byte	-1
   22ED 48                 9149 	.byte	72
   22EE E8                 9150 	.byte	-24
   22EF 00                 9151 	.byte	0
   22F0 A6                 9152 	.byte	-90
   22F1 EE                 9153 	.byte	-18
   22F2 FF                 9154 	.byte	-1
   22F3 48                 9155 	.byte	72
   22F4 EB                 9156 	.byte	-21
   22F5 00                 9157 	.byte	0
   22F6 E8                 9158 	.byte	-24
   22F7 12                 9159 	.byte	18
   22F8 FF                 9160 	.byte	-1
   22F9 12                 9161 	.byte	18
   22FA 27                 9162 	.byte	39
   22FB FF                 9163 	.byte	-1
   22FC 18                 9164 	.byte	24
   22FD EE                 9165 	.byte	-18
   22FE FF                 9166 	.byte	-1
   22FF EE                 9167 	.byte	-18
   2300 D9                 9168 	.byte	-39
   2301 FF                 9169 	.byte	-1
   2302 E8                 9170 	.byte	-24
   2303 12                 9171 	.byte	18
   2304 01                 9172 	.byte	1
                           9173 	.globl _height2FallingRight9
   2305                    9174 _height2FallingRight9:
   2305 00                 9175 	.byte	0
   2306 2A                 9176 	.byte	42
   2307 1B                 9177 	.byte	27
   2308 FF                 9178 	.byte	-1
   2309 DF                 9179 	.byte	-33
   230A 0F                 9180 	.byte	15
   230B FF                 9181 	.byte	-1
   230C 18                 9182 	.byte	24
   230D EE                 9183 	.byte	-18
   230E FF                 9184 	.byte	-1
   230F 21                 9185 	.byte	33
   2310 F1                 9186 	.byte	-15
   2311 FF                 9187 	.byte	-1
   2312 E8                 9188 	.byte	-24
   2313 12                 9189 	.byte	18
   2314 FF                 9190 	.byte	-1
   2315 2D                 9191 	.byte	45
   2316 4E                 9192 	.byte	78
   2317 00                 9193 	.byte	0
   2318 B2                 9194 	.byte	-78
   2319 C1                 9195 	.byte	-63
   231A FF                 9196 	.byte	-1
   231B 2D                 9197 	.byte	45
   231C 4E                 9198 	.byte	78
   231D 00                 9199 	.byte	0
   231E EB                 9200 	.byte	-21
   231F A0                 9201 	.byte	-96
   2320 FF                 9202 	.byte	-1
   2321 2D                 9203 	.byte	45
   2322 4E                 9204 	.byte	78
   2323 00                 9205 	.byte	0
   2324 F4                 9206 	.byte	-12
   2325 A3                 9207 	.byte	-93
   2326 FF                 9208 	.byte	-1
   2327 2D                 9209 	.byte	45
   2328 4E                 9210 	.byte	78
   2329 00                 9211 	.byte	0
   232A E8                 9212 	.byte	-24
   232B 12                 9213 	.byte	18
   232C FF                 9214 	.byte	-1
   232D DF                 9215 	.byte	-33
   232E 0F                 9216 	.byte	15
   232F FF                 9217 	.byte	-1
   2330 18                 9218 	.byte	24
   2331 EE                 9219 	.byte	-18
   2332 FF                 9220 	.byte	-1
   2333 21                 9221 	.byte	33
   2334 F1                 9222 	.byte	-15
   2335 FF                 9223 	.byte	-1
   2336 E8                 9224 	.byte	-24
   2337 12                 9225 	.byte	18
   2338 01                 9226 	.byte	1
                           9227 	.globl _height2RisingLeft9
   2339                    9228 _height2RisingLeft9:
   2339 00                 9229 	.byte	0
   233A 00                 9230 	.byte	0
   233B D9                 9231 	.byte	-39
   233C FF                 9232 	.byte	-1
   233D 00                 9233 	.byte	0
   233E 27                 9234 	.byte	39
   233F FF                 9235 	.byte	-1
   2340 18                 9236 	.byte	24
   2341 F1                 9237 	.byte	-15
   2342 FF                 9238 	.byte	-1
   2343 00                 9239 	.byte	0
   2344 D6                 9240 	.byte	-42
   2345 FF                 9241 	.byte	-1
   2346 E8                 9242 	.byte	-24
   2347 12                 9243 	.byte	18
   2348 FF                 9244 	.byte	-1
   2349 51                 9245 	.byte	81
   234A 18                 9246 	.byte	24
   234B 00                 9247 	.byte	0
   234C AF                 9248 	.byte	-81
   234D 0F                 9249 	.byte	15
   234E FF                 9250 	.byte	-1
   234F 51                 9251 	.byte	81
   2350 15                 9252 	.byte	21
   2351 00                 9253 	.byte	0
   2352 C7                 9254 	.byte	-57
   2353 DC                 9255 	.byte	-36
   2354 FF                 9256 	.byte	-1
   2355 51                 9257 	.byte	81
   2356 12                 9258 	.byte	18
   2357 00                 9259 	.byte	0
   2358 AF                 9260 	.byte	-81
   2359 C4                 9261 	.byte	-60
   235A FF                 9262 	.byte	-1
   235B 51                 9263 	.byte	81
   235C 18                 9264 	.byte	24
   235D 00                 9265 	.byte	0
   235E E8                 9266 	.byte	-24
   235F 12                 9267 	.byte	18
   2360 FF                 9268 	.byte	-1
   2361 00                 9269 	.byte	0
   2362 24                 9270 	.byte	36
   2363 FF                 9271 	.byte	-1
   2364 18                 9272 	.byte	24
   2365 EE                 9273 	.byte	-18
   2366 FF                 9274 	.byte	-1
   2367 00                 9275 	.byte	0
   2368 DC                 9276 	.byte	-36
   2369 FF                 9277 	.byte	-1
   236A E8                 9278 	.byte	-24
   236B 12                 9279 	.byte	18
   236C 01                 9280 	.byte	1
                           9281 	.globl _height2FallingBack9
   236D                    9282 _height2FallingBack9:
   236D 00                 9283 	.byte	0
   236E 33                 9284 	.byte	51
   236F F7                 9285 	.byte	-9
   2370 FF                 9286 	.byte	-1
   2371 09                 9287 	.byte	9
   2372 27                 9288 	.byte	39
   2373 FF                 9289 	.byte	-1
   2374 E5                 9290 	.byte	-27
   2375 FA                 9291 	.byte	-6
   2376 FF                 9292 	.byte	-1
   2377 F7                 9293 	.byte	-9
   2378 D9                 9294 	.byte	-39
   2379 FF                 9295 	.byte	-1
   237A 1B                 9296 	.byte	27
   237B 06                 9297 	.byte	6
   237C FF                 9298 	.byte	-1
   237D 4B                 9299 	.byte	75
   237E DF                 9300 	.byte	-33
   237F 00                 9301 	.byte	0
   2380 BE                 9302 	.byte	-66
   2381 48                 9303 	.byte	72
   2382 FF                 9304 	.byte	-1
   2383 4B                 9305 	.byte	75
   2384 E2                 9306 	.byte	-30
   2385 00                 9307 	.byte	0
   2386 9A                 9308 	.byte	-102
   2387 18                 9309 	.byte	24
   2388 FF                 9310 	.byte	-1
   2389 4B                 9311 	.byte	75
   238A E2                 9312 	.byte	-30
   238B 00                 9313 	.byte	0
   238C AC                 9314 	.byte	-84
   238D F7                 9315 	.byte	-9
   238E FF                 9316 	.byte	-1
   238F 4B                 9317 	.byte	75
   2390 DF                 9318 	.byte	-33
   2391 00                 9319 	.byte	0
   2392 1B                 9320 	.byte	27
   2393 06                 9321 	.byte	6
   2394 FF                 9322 	.byte	-1
   2395 09                 9323 	.byte	9
   2396 2A                 9324 	.byte	42
   2397 FF                 9325 	.byte	-1
   2398 E5                 9326 	.byte	-27
   2399 FA                 9327 	.byte	-6
   239A FF                 9328 	.byte	-1
   239B F7                 9329 	.byte	-9
   239C D6                 9330 	.byte	-42
   239D FF                 9331 	.byte	-1
   239E 1B                 9332 	.byte	27
   239F 06                 9333 	.byte	6
   23A0 01                 9334 	.byte	1
                           9335 	.globl _height2RisingFront9
   23A1                    9336 _height2RisingFront9:
   23A1 00                 9337 	.byte	0
   23A2 F7                 9338 	.byte	-9
   23A3 12                 9339 	.byte	18
   23A4 FF                 9340 	.byte	-1
   23A5 09                 9341 	.byte	9
   23A6 2A                 9342 	.byte	42
   23A7 FF                 9343 	.byte	-1
   23A8 09                 9344 	.byte	9
   23A9 EE                 9345 	.byte	-18
   23AA FF                 9346 	.byte	-1
   23AB F7                 9347 	.byte	-9
   23AC D6                 9348 	.byte	-42
   23AD FF                 9349 	.byte	-1
   23AE F7                 9350 	.byte	-9
   23AF 12                 9351 	.byte	18
   23B0 FF                 9352 	.byte	-1
   23B1 54                 9353 	.byte	84
   23B2 F7                 9354 	.byte	-9
   23B3 00                 9355 	.byte	0
   23B4 B5                 9356 	.byte	-75
   23B5 33                 9357 	.byte	51
   23B6 FF                 9358 	.byte	-1
   23B7 54                 9359 	.byte	84
   23B8 F7                 9360 	.byte	-9
   23B9 00                 9361 	.byte	0
   23BA B5                 9362 	.byte	-75
   23BB F7                 9363 	.byte	-9
   23BC FF                 9364 	.byte	-1
   23BD 57                 9365 	.byte	87
   23BE F7                 9366 	.byte	-9
   23BF 00                 9367 	.byte	0
   23C0 A0                 9368 	.byte	-96
   23C1 DF                 9369 	.byte	-33
   23C2 FF                 9370 	.byte	-1
   23C3 57                 9371 	.byte	87
   23C4 FA                 9372 	.byte	-6
   23C5 00                 9373 	.byte	0
   23C6 F4                 9374 	.byte	-12
   23C7 0F                 9375 	.byte	15
   23C8 FF                 9376 	.byte	-1
   23C9 09                 9377 	.byte	9
   23CA 2A                 9378 	.byte	42
   23CB FF                 9379 	.byte	-1
   23CC 0C                 9380 	.byte	12
   23CD EE                 9381 	.byte	-18
   23CE FF                 9382 	.byte	-1
   23CF F7                 9383 	.byte	-9
   23D0 D9                 9384 	.byte	-39
   23D1 FF                 9385 	.byte	-1
   23D2 F4                 9386 	.byte	-12
   23D3 0F                 9387 	.byte	15
   23D4 01                 9388 	.byte	1
                           9389 	.globl _height2FallingFront9
   23D5                    9390 _height2FallingFront9:
   23D5 FF                 9391 	.byte	-1
   23D6 09                 9392 	.byte	9
   23D7 2A                 9393 	.byte	42
   23D8 FF                 9394 	.byte	-1
   23D9 2D                 9395 	.byte	45
   23DA FA                 9396 	.byte	-6
   23DB FF                 9397 	.byte	-1
   23DC F7                 9398 	.byte	-9
   23DD D9                 9399 	.byte	-39
   23DE FF                 9400 	.byte	-1
   23DF D3                 9401 	.byte	-45
   23E0 03                 9402 	.byte	3
   23E1 FF                 9403 	.byte	-1
   23E2 F4                 9404 	.byte	-12
   23E3 21                 9405 	.byte	33
   23E4 00                 9406 	.byte	0
   23E5 15                 9407 	.byte	21
   23E6 09                 9408 	.byte	9
   23E7 FF                 9409 	.byte	-1
   23E8 F4                 9410 	.byte	-12
   23E9 21                 9411 	.byte	33
   23EA 00                 9412 	.byte	0
   23EB 39                 9413 	.byte	57
   23EC D9                 9414 	.byte	-39
   23ED FF                 9415 	.byte	-1
   23EE F1                 9416 	.byte	-15
   23EF 21                 9417 	.byte	33
   23F0 00                 9418 	.byte	0
   23F1 06                 9419 	.byte	6
   23F2 B8                 9420 	.byte	-72
   23F3 FF                 9421 	.byte	-1
   23F4 F1                 9422 	.byte	-15
   23F5 1E                 9423 	.byte	30
   23F6 00                 9424 	.byte	0
   23F7 D6                 9425 	.byte	-42
   23F8 06                 9426 	.byte	6
   23F9 FF                 9427 	.byte	-1
   23FA 09                 9428 	.byte	9
   23FB 2A                 9429 	.byte	42
   23FC FF                 9430 	.byte	-1
   23FD 2A                 9431 	.byte	42
   23FE FA                 9432 	.byte	-6
   23FF FF                 9433 	.byte	-1
   2400 F7                 9434 	.byte	-9
   2401 D6                 9435 	.byte	-42
   2402 FF                 9436 	.byte	-1
   2403 D6                 9437 	.byte	-42
   2404 06                 9438 	.byte	6
   2405 01                 9439 	.byte	1
                           9440 	.globl _height2RisingBack9
   2406                    9441 _height2RisingBack9:
   2406 00                 9442 	.byte	0
   2407 30                 9443 	.byte	48
   2408 DF                 9444 	.byte	-33
   2409 FF                 9445 	.byte	-1
   240A 09                 9446 	.byte	9
   240B 27                 9447 	.byte	39
   240C FF                 9448 	.byte	-1
   240D 21                 9449 	.byte	33
   240E F1                 9450 	.byte	-15
   240F FF                 9451 	.byte	-1
   2410 F7                 9452 	.byte	-9
   2411 D6                 9453 	.byte	-42
   2412 FF                 9454 	.byte	-1
   2413 DF                 9455 	.byte	-33
   2414 12                 9456 	.byte	18
   2415 FF                 9457 	.byte	-1
   2416 3F                 9458 	.byte	63
   2417 09                 9459 	.byte	9
   2418 00                 9460 	.byte	0
   2419 CA                 9461 	.byte	-54
   241A 1E                 9462 	.byte	30
   241B FF                 9463 	.byte	-1
   241C 3F                 9464 	.byte	63
   241D 09                 9465 	.byte	9
   241E 00                 9466 	.byte	0
   241F E2                 9467 	.byte	-30
   2420 E8                 9468 	.byte	-24
   2421 FF                 9469 	.byte	-1
   2422 3F                 9470 	.byte	63
   2423 09                 9471 	.byte	9
   2424 00                 9472 	.byte	0
   2425 B8                 9473 	.byte	-72
   2426 CD                 9474 	.byte	-51
   2427 FF                 9475 	.byte	-1
   2428 3F                 9476 	.byte	63
   2429 09                 9477 	.byte	9
   242A 00                 9478 	.byte	0
   242B DF                 9479 	.byte	-33
   242C 12                 9480 	.byte	18
   242D FF                 9481 	.byte	-1
   242E 09                 9482 	.byte	9
   242F 27                 9483 	.byte	39
   2430 FF                 9484 	.byte	-1
   2431 21                 9485 	.byte	33
   2432 F1                 9486 	.byte	-15
   2433 FF                 9487 	.byte	-1
   2434 F7                 9488 	.byte	-9
   2435 D6                 9489 	.byte	-42
   2436 FF                 9490 	.byte	-1
   2437 DF                 9491 	.byte	-33
   2438 12                 9492 	.byte	18
   2439 01                 9493 	.byte	1
                           9494 	.globl _depth2RollingLeft9
   243A                    9495 _depth2RollingLeft9:
   243A FF                 9496 	.byte	-1
   243B 27                 9497 	.byte	39
   243C 0F                 9498 	.byte	15
   243D FF                 9499 	.byte	-1
   243E 30                 9500 	.byte	48
   243F DF                 9501 	.byte	-33
   2440 FF                 9502 	.byte	-1
   2441 D9                 9503 	.byte	-39
   2442 F1                 9504 	.byte	-15
   2443 FF                 9505 	.byte	-1
   2444 D0                 9506 	.byte	-48
   2445 21                 9507 	.byte	33
   2446 FF                 9508 	.byte	-1
   2447 06                 9509 	.byte	6
   2448 DC                 9510 	.byte	-36
   2449 00                 9511 	.byte	0
   244A 21                 9512 	.byte	33
   244B 33                 9513 	.byte	51
   244C FF                 9514 	.byte	-1
   244D 06                 9515 	.byte	6
   244E DC                 9516 	.byte	-36
   244F 00                 9517 	.byte	0
   2450 2A                 9518 	.byte	42
   2451 03                 9519 	.byte	3
   2452 FF                 9520 	.byte	-1
   2453 06                 9521 	.byte	6
   2454 D9                 9522 	.byte	-39
   2455 00                 9523 	.byte	0
   2456 D3                 9524 	.byte	-45
   2457 18                 9525 	.byte	24
   2458 FF                 9526 	.byte	-1
   2459 06                 9527 	.byte	6
   245A D9                 9528 	.byte	-39
   245B 00                 9529 	.byte	0
   245C D0                 9530 	.byte	-48
   245D 24                 9531 	.byte	36
   245E FF                 9532 	.byte	-1
   245F 27                 9533 	.byte	39
   2460 0F                 9534 	.byte	15
   2461 FF                 9535 	.byte	-1
   2462 30                 9536 	.byte	48
   2463 DC                 9537 	.byte	-36
   2464 FF                 9538 	.byte	-1
   2465 D9                 9539 	.byte	-39
   2466 F1                 9540 	.byte	-15
   2467 FF                 9541 	.byte	-1
   2468 D0                 9542 	.byte	-48
   2469 24                 9543 	.byte	36
   246A 01                 9544 	.byte	1
                           9545 	.globl _depth2RollingRight9
   246B                    9546 _depth2RollingRight9:
   246B 00                 9547 	.byte	0
   246C 2A                 9548 	.byte	42
   246D 1B                 9549 	.byte	27
   246E FF                 9550 	.byte	-1
   246F DF                 9551 	.byte	-33
   2470 0F                 9552 	.byte	15
   2471 FF                 9553 	.byte	-1
   2472 30                 9554 	.byte	48
   2473 DC                 9555 	.byte	-36
   2474 FF                 9556 	.byte	-1
   2475 21                 9557 	.byte	33
   2476 F4                 9558 	.byte	-12
   2477 FF                 9559 	.byte	-1
   2478 D0                 9560 	.byte	-48
   2479 21                 9561 	.byte	33
   247A FF                 9562 	.byte	-1
   247B 18                 9563 	.byte	24
   247C 27                 9564 	.byte	39
   247D 00                 9565 	.byte	0
   247E C7                 9566 	.byte	-57
   247F E8                 9567 	.byte	-24
   2480 FF                 9568 	.byte	-1
   2481 18                 9569 	.byte	24
   2482 27                 9570 	.byte	39
   2483 00                 9571 	.byte	0
   2484 18                 9572 	.byte	24
   2485 B5                 9573 	.byte	-75
   2486 FF                 9574 	.byte	-1
   2487 18                 9575 	.byte	24
   2488 27                 9576 	.byte	39
   2489 00                 9577 	.byte	0
   248A 09                 9578 	.byte	9
   248B CD                 9579 	.byte	-51
   248C FF                 9580 	.byte	-1
   248D 18                 9581 	.byte	24
   248E 24                 9582 	.byte	36
   248F 00                 9583 	.byte	0
   2490 D0                 9584 	.byte	-48
   2491 24                 9585 	.byte	36
   2492 FF                 9586 	.byte	-1
   2493 DF                 9587 	.byte	-33
   2494 0F                 9588 	.byte	15
   2495 FF                 9589 	.byte	-1
   2496 30                 9590 	.byte	48
   2497 DC                 9591 	.byte	-36
   2498 FF                 9592 	.byte	-1
   2499 21                 9593 	.byte	33
   249A F1                 9594 	.byte	-15
   249B FF                 9595 	.byte	-1
   249C D0                 9596 	.byte	-48
   249D 24                 9597 	.byte	36
   249E 01                 9598 	.byte	1
                           9599 	.globl _width2RollingFront9
   249F                    9600 _width2RollingFront9:
   249F FF                 9601 	.byte	-1
   24A0 12                 9602 	.byte	18
   24A1 54                 9603 	.byte	84
   24A2 FF                 9604 	.byte	-1
   24A3 2D                 9605 	.byte	45
   24A4 FA                 9606 	.byte	-6
   24A5 FF                 9607 	.byte	-1
   24A6 EE                 9608 	.byte	-18
   24A7 AF                 9609 	.byte	-81
   24A8 FF                 9610 	.byte	-1
   24A9 D3                 9611 	.byte	-45
   24AA 03                 9612 	.byte	3
   24AB FF                 9613 	.byte	-1
   24AC FD                 9614 	.byte	-3
   24AD 12                 9615 	.byte	18
   24AE 00                 9616 	.byte	0
   24AF 15                 9617 	.byte	21
   24B0 42                 9618 	.byte	66
   24B1 FF                 9619 	.byte	-1
   24B2 FA                 9620 	.byte	-6
   24B3 12                 9621 	.byte	18
   24B4 00                 9622 	.byte	0
   24B5 33                 9623 	.byte	51
   24B6 E8                 9624 	.byte	-24
   24B7 FF                 9625 	.byte	-1
   24B8 FA                 9626 	.byte	-6
   24B9 0F                 9627 	.byte	15
   24BA 00                 9628 	.byte	0
   24BB F4                 9629 	.byte	-12
   24BC A0                 9630 	.byte	-96
   24BD FF                 9631 	.byte	-1
   24BE FA                 9632 	.byte	-6
   24BF 0C                 9633 	.byte	12
   24C0 00                 9634 	.byte	0
   24C1 D6                 9635 	.byte	-42
   24C2 09                 9636 	.byte	9
   24C3 FF                 9637 	.byte	-1
   24C4 0F                 9638 	.byte	15
   24C5 54                 9639 	.byte	84
   24C6 FF                 9640 	.byte	-1
   24C7 2D                 9641 	.byte	45
   24C8 F7                 9642 	.byte	-9
   24C9 FF                 9643 	.byte	-1
   24CA EE                 9644 	.byte	-18
   24CB AC                 9645 	.byte	-84
   24CC FF                 9646 	.byte	-1
   24CD D6                 9647 	.byte	-42
   24CE 09                 9648 	.byte	9
   24CF 01                 9649 	.byte	1
                           9650 	.globl _width2RollingBack9
   24D0                    9651 _width2RollingBack9:
   24D0 00                 9652 	.byte	0
   24D1 33                 9653 	.byte	51
   24D2 F7                 9654 	.byte	-9
   24D3 FF                 9655 	.byte	-1
   24D4 12                 9656 	.byte	18
   24D5 51                 9657 	.byte	81
   24D6 FF                 9658 	.byte	-1
   24D7 E5                 9659 	.byte	-27
   24D8 FA                 9660 	.byte	-6
   24D9 FF                 9661 	.byte	-1
   24DA EE                 9662 	.byte	-18
   24DB AF                 9663 	.byte	-81
   24DC FF                 9664 	.byte	-1
   24DD 1B                 9665 	.byte	27
   24DE 06                 9666 	.byte	6
   24DF FF                 9667 	.byte	-1
   24E0 24                 9668 	.byte	36
   24E1 F1                 9669 	.byte	-15
   24E2 00                 9670 	.byte	0
   24E3 EE                 9671 	.byte	-18
   24E4 60                 9672 	.byte	96
   24E5 FF                 9673 	.byte	-1
   24E6 24                 9674 	.byte	36
   24E7 F1                 9675 	.byte	-15
   24E8 00                 9676 	.byte	0
   24E9 C1                 9677 	.byte	-63
   24EA 09                 9678 	.byte	9
   24EB FF                 9679 	.byte	-1
   24EC 24                 9680 	.byte	36
   24ED EE                 9681 	.byte	-18
   24EE 00                 9682 	.byte	0
   24EF CA                 9683 	.byte	-54
   24F0 C1                 9684 	.byte	-63
   24F1 FF                 9685 	.byte	-1
   24F2 24                 9686 	.byte	36
   24F3 EE                 9687 	.byte	-18
   24F4 00                 9688 	.byte	0
   24F5 1B                 9689 	.byte	27
   24F6 09                 9690 	.byte	9
   24F7 FF                 9691 	.byte	-1
   24F8 12                 9692 	.byte	18
   24F9 51                 9693 	.byte	81
   24FA FF                 9694 	.byte	-1
   24FB E5                 9695 	.byte	-27
   24FC F7                 9696 	.byte	-9
   24FD FF                 9697 	.byte	-1
   24FE EE                 9698 	.byte	-18
   24FF AF                 9699 	.byte	-81
   2500 FF                 9700 	.byte	-1
   2501 1B                 9701 	.byte	27
   2502 09                 9702 	.byte	9
   2503 01                 9703 	.byte	1
                           9704 	.globl _height1FallingLeft9
   2504                    9705 _height1FallingLeft9:
   2504 FF                 9706 	.byte	-1
   2505 27                 9707 	.byte	39
   2506 0F                 9708 	.byte	15
   2507 FF                 9709 	.byte	-1
   2508 18                 9710 	.byte	24
   2509 F1                 9711 	.byte	-15
   250A FF                 9712 	.byte	-1
   250B D9                 9713 	.byte	-39
   250C F1                 9714 	.byte	-15
   250D FF                 9715 	.byte	-1
   250E E8                 9716 	.byte	-24
   250F 0F                 9717 	.byte	15
   2510 FF                 9718 	.byte	-1
   2511 06                 9719 	.byte	6
   2512 DC                 9720 	.byte	-36
   2513 00                 9721 	.byte	0
   2514 21                 9722 	.byte	33
   2515 33                 9723 	.byte	51
   2516 FF                 9724 	.byte	-1
   2517 06                 9725 	.byte	6
   2518 DC                 9726 	.byte	-36
   2519 00                 9727 	.byte	0
   251A 12                 9728 	.byte	18
   251B 15                 9729 	.byte	21
   251C FF                 9730 	.byte	-1
   251D 06                 9731 	.byte	6
   251E D9                 9732 	.byte	-39
   251F 00                 9733 	.byte	0
   2520 D3                 9734 	.byte	-45
   2521 18                 9735 	.byte	24
   2522 FF                 9736 	.byte	-1
   2523 06                 9737 	.byte	6
   2524 D9                 9738 	.byte	-39
   2525 00                 9739 	.byte	0
   2526 E8                 9740 	.byte	-24
   2527 12                 9741 	.byte	18
   2528 FF                 9742 	.byte	-1
   2529 27                 9743 	.byte	39
   252A 0F                 9744 	.byte	15
   252B FF                 9745 	.byte	-1
   252C 18                 9746 	.byte	24
   252D EE                 9747 	.byte	-18
   252E FF                 9748 	.byte	-1
   252F D9                 9749 	.byte	-39
   2530 F1                 9750 	.byte	-15
   2531 FF                 9751 	.byte	-1
   2532 E8                 9752 	.byte	-24
   2533 12                 9753 	.byte	18
   2534 01                 9754 	.byte	1
                           9755 	.globl _height1FallingRight9
   2535                    9756 _height1FallingRight9:
   2535 00                 9757 	.byte	0
   2536 2A                 9758 	.byte	42
   2537 1B                 9759 	.byte	27
   2538 FF                 9760 	.byte	-1
   2539 DF                 9761 	.byte	-33
   253A 0F                 9762 	.byte	15
   253B FF                 9763 	.byte	-1
   253C 18                 9764 	.byte	24
   253D EE                 9765 	.byte	-18
   253E FF                 9766 	.byte	-1
   253F 21                 9767 	.byte	33
   2540 F1                 9768 	.byte	-15
   2541 FF                 9769 	.byte	-1
   2542 E8                 9770 	.byte	-24
   2543 12                 9771 	.byte	18
   2544 FF                 9772 	.byte	-1
   2545 18                 9773 	.byte	24
   2546 27                 9774 	.byte	39
   2547 00                 9775 	.byte	0
   2548 C7                 9776 	.byte	-57
   2549 E8                 9777 	.byte	-24
   254A FF                 9778 	.byte	-1
   254B 18                 9779 	.byte	24
   254C 27                 9780 	.byte	39
   254D 00                 9781 	.byte	0
   254E 00                 9782 	.byte	0
   254F C7                 9783 	.byte	-57
   2550 FF                 9784 	.byte	-1
   2551 18                 9785 	.byte	24
   2552 27                 9786 	.byte	39
   2553 00                 9787 	.byte	0
   2554 09                 9788 	.byte	9
   2555 CA                 9789 	.byte	-54
   2556 FF                 9790 	.byte	-1
   2557 18                 9791 	.byte	24
   2558 27                 9792 	.byte	39
   2559 00                 9793 	.byte	0
   255A E8                 9794 	.byte	-24
   255B 12                 9795 	.byte	18
   255C FF                 9796 	.byte	-1
   255D DF                 9797 	.byte	-33
   255E 0F                 9798 	.byte	15
   255F FF                 9799 	.byte	-1
   2560 18                 9800 	.byte	24
   2561 EE                 9801 	.byte	-18
   2562 FF                 9802 	.byte	-1
   2563 21                 9803 	.byte	33
   2564 F1                 9804 	.byte	-15
   2565 FF                 9805 	.byte	-1
   2566 E8                 9806 	.byte	-24
   2567 12                 9807 	.byte	18
   2568 01                 9808 	.byte	1
                           9809 	.globl _height1FallingBack9
   2569                    9810 _height1FallingBack9:
   2569 00                 9811 	.byte	0
   256A 33                 9812 	.byte	51
   256B F7                 9813 	.byte	-9
   256C FF                 9814 	.byte	-1
   256D 09                 9815 	.byte	9
   256E 27                 9816 	.byte	39
   256F FF                 9817 	.byte	-1
   2570 E5                 9818 	.byte	-27
   2571 FA                 9819 	.byte	-6
   2572 FF                 9820 	.byte	-1
   2573 F7                 9821 	.byte	-9
   2574 D9                 9822 	.byte	-39
   2575 FF                 9823 	.byte	-1
   2576 1B                 9824 	.byte	27
   2577 06                 9825 	.byte	6
   2578 FF                 9826 	.byte	-1
   2579 24                 9827 	.byte	36
   257A F1                 9828 	.byte	-15
   257B 00                 9829 	.byte	0
   257C E5                 9830 	.byte	-27
   257D 36                 9831 	.byte	54
   257E FF                 9832 	.byte	-1
   257F 24                 9833 	.byte	36
   2580 F1                 9834 	.byte	-15
   2581 00                 9835 	.byte	0
   2582 C1                 9836 	.byte	-63
   2583 09                 9837 	.byte	9
   2584 FF                 9838 	.byte	-1
   2585 24                 9839 	.byte	36
   2586 EE                 9840 	.byte	-18
   2587 00                 9841 	.byte	0
   2588 D3                 9842 	.byte	-45
   2589 EB                 9843 	.byte	-21
   258A FF                 9844 	.byte	-1
   258B 24                 9845 	.byte	36
   258C EE                 9846 	.byte	-18
   258D 00                 9847 	.byte	0
   258E 1B                 9848 	.byte	27
   258F 09                 9849 	.byte	9
   2590 FF                 9850 	.byte	-1
   2591 09                 9851 	.byte	9
   2592 27                 9852 	.byte	39
   2593 FF                 9853 	.byte	-1
   2594 E5                 9854 	.byte	-27
   2595 F7                 9855 	.byte	-9
   2596 FF                 9856 	.byte	-1
   2597 F7                 9857 	.byte	-9
   2598 D9                 9858 	.byte	-39
   2599 FF                 9859 	.byte	-1
   259A 1B                 9860 	.byte	27
   259B 09                 9861 	.byte	9
   259C 01                 9862 	.byte	1
                           9863 	.globl _height1FallingFront9
   259D                    9864 _height1FallingFront9:
   259D FF                 9865 	.byte	-1
   259E 09                 9866 	.byte	9
   259F 2A                 9867 	.byte	42
   25A0 FF                 9868 	.byte	-1
   25A1 2D                 9869 	.byte	45
   25A2 FA                 9870 	.byte	-6
   25A3 FF                 9871 	.byte	-1
   25A4 F7                 9872 	.byte	-9
   25A5 D9                 9873 	.byte	-39
   25A6 FF                 9874 	.byte	-1
   25A7 D3                 9875 	.byte	-45
   25A8 03                 9876 	.byte	3
   25A9 FF                 9877 	.byte	-1
   25AA FD                 9878 	.byte	-3
   25AB 12                 9879 	.byte	18
   25AC 00                 9880 	.byte	0
   25AD 0C                 9881 	.byte	12
   25AE 18                 9882 	.byte	24
   25AF FF                 9883 	.byte	-1
   25B0 FA                 9884 	.byte	-6
   25B1 12                 9885 	.byte	18
   25B2 00                 9886 	.byte	0
   25B3 33                 9887 	.byte	51
   25B4 E8                 9888 	.byte	-24
   25B5 FF                 9889 	.byte	-1
   25B6 FA                 9890 	.byte	-6
   25B7 0F                 9891 	.byte	15
   25B8 00                 9892 	.byte	0
   25B9 FD                 9893 	.byte	-3
   25BA CA                 9894 	.byte	-54
   25BB FF                 9895 	.byte	-1
   25BC FA                 9896 	.byte	-6
   25BD 0C                 9897 	.byte	12
   25BE 00                 9898 	.byte	0
   25BF D6                 9899 	.byte	-42
   25C0 09                 9900 	.byte	9
   25C1 FF                 9901 	.byte	-1
   25C2 06                 9902 	.byte	6
   25C3 2A                 9903 	.byte	42
   25C4 FF                 9904 	.byte	-1
   25C5 2D                 9905 	.byte	45
   25C6 F7                 9906 	.byte	-9
   25C7 FF                 9907 	.byte	-1
   25C8 F7                 9908 	.byte	-9
   25C9 D6                 9909 	.byte	-42
   25CA FF                 9910 	.byte	-1
   25CB D6                 9911 	.byte	-42
   25CC 09                 9912 	.byte	9
   25CD 01                 9913 	.byte	1
                           9914 	.globl _height2FallingLeft10
   25CE                    9915 _height2FallingLeft10:
   25CE FF                 9916 	.byte	-1
   25CF 27                 9917 	.byte	39
   25D0 0C                 9918 	.byte	12
   25D1 FF                 9919 	.byte	-1
   25D2 18                 9920 	.byte	24
   25D3 F1                 9921 	.byte	-15
   25D4 FF                 9922 	.byte	-1
   25D5 D9                 9923 	.byte	-39
   25D6 F4                 9924 	.byte	-12
   25D7 FF                 9925 	.byte	-1
   25D8 E8                 9926 	.byte	-24
   25D9 0F                 9927 	.byte	15
   25DA FF                 9928 	.byte	-1
   25DB 03                 9929 	.byte	3
   25DC B2                 9930 	.byte	-78
   25DD 00                 9931 	.byte	0
   25DE 24                 9932 	.byte	36
   25DF 5A                 9933 	.byte	90
   25E0 FF                 9934 	.byte	-1
   25E1 03                 9935 	.byte	3
   25E2 B2                 9936 	.byte	-78
   25E3 00                 9937 	.byte	0
   25E4 15                 9938 	.byte	21
   25E5 3F                 9939 	.byte	63
   25E6 FF                 9940 	.byte	-1
   25E7 03                 9941 	.byte	3
   25E8 AF                 9942 	.byte	-81
   25E9 00                 9943 	.byte	0
   25EA D6                 9944 	.byte	-42
   25EB 45                 9945 	.byte	69
   25EC FF                 9946 	.byte	-1
   25ED 03                 9947 	.byte	3
   25EE AF                 9948 	.byte	-81
   25EF 00                 9949 	.byte	0
   25F0 E8                 9950 	.byte	-24
   25F1 12                 9951 	.byte	18
   25F2 FF                 9952 	.byte	-1
   25F3 27                 9953 	.byte	39
   25F4 0C                 9954 	.byte	12
   25F5 FF                 9955 	.byte	-1
   25F6 18                 9956 	.byte	24
   25F7 EE                 9957 	.byte	-18
   25F8 FF                 9958 	.byte	-1
   25F9 D9                 9959 	.byte	-39
   25FA F4                 9960 	.byte	-12
   25FB FF                 9961 	.byte	-1
   25FC E8                 9962 	.byte	-24
   25FD 12                 9963 	.byte	18
   25FE 01                 9964 	.byte	1
                           9965 	.globl _height2RisingRight10
   25FF                    9966 _height2RisingRight10:
   25FF 00                 9967 	.byte	0
   2600 12                 9968 	.byte	18
   2601 54                 9969 	.byte	84
   2602 FF                 9970 	.byte	-1
   2603 0F                 9971 	.byte	15
   2604 2A                 9972 	.byte	42
   2605 FF                 9973 	.byte	-1
   2606 18                 9974 	.byte	24
   2607 EE                 9975 	.byte	-18
   2608 FF                 9976 	.byte	-1
   2609 F1                 9977 	.byte	-15
   260A D6                 9978 	.byte	-42
   260B FF                 9979 	.byte	-1
   260C E8                 9980 	.byte	-24
   260D 12                 9981 	.byte	18
   260E FF                 9982 	.byte	-1
   260F 4B                 9983 	.byte	75
   2610 F4                 9984 	.byte	-12
   2611 00                 9985 	.byte	0
   2612 C4                 9986 	.byte	-60
   2613 36                 9987 	.byte	54
   2614 FF                 9988 	.byte	-1
   2615 4B                 9989 	.byte	75
   2616 F4                 9990 	.byte	-12
   2617 00                 9991 	.byte	0
   2618 CD                 9992 	.byte	-51
   2619 FA                 9993 	.byte	-6
   261A FF                 9994 	.byte	-1
   261B 4B                 9995 	.byte	75
   261C F4                 9996 	.byte	-12
   261D 00                 9997 	.byte	0
   261E A6                 9998 	.byte	-90
   261F E2                 9999 	.byte	-30
   2620 FF                10000 	.byte	-1
   2621 4B                10001 	.byte	75
   2622 F4                10002 	.byte	-12
   2623 00                10003 	.byte	0
   2624 E8                10004 	.byte	-24
   2625 12                10005 	.byte	18
   2626 FF                10006 	.byte	-1
   2627 0F                10007 	.byte	15
   2628 2A                10008 	.byte	42
   2629 FF                10009 	.byte	-1
   262A 18                10010 	.byte	24
   262B EE                10011 	.byte	-18
   262C FF                10012 	.byte	-1
   262D F1                10013 	.byte	-15
   262E D6                10014 	.byte	-42
   262F FF                10015 	.byte	-1
   2630 E8                10016 	.byte	-24
   2631 12                10017 	.byte	18
   2632 01                10018 	.byte	1
                          10019 	.globl _height2FallingRight10
   2633                   10020 _height2FallingRight10:
   2633 00                10021 	.byte	0
   2634 2D                10022 	.byte	45
   2635 1E                10023 	.byte	30
   2636 FF                10024 	.byte	-1
   2637 DC                10025 	.byte	-36
   2638 0C                10026 	.byte	12
   2639 FF                10027 	.byte	-1
   263A 18                10028 	.byte	24
   263B EE                10029 	.byte	-18
   263C FF                10030 	.byte	-1
   263D 24                10031 	.byte	36
   263E F4                10032 	.byte	-12
   263F FF                10033 	.byte	-1
   2640 E8                10034 	.byte	-24
   2641 12                10035 	.byte	18
   2642 FF                10036 	.byte	-1
   2643 24                10037 	.byte	36
   2644 51                10038 	.byte	81
   2645 00                10039 	.byte	0
   2646 B8                10040 	.byte	-72
   2647 BB                10041 	.byte	-69
   2648 FF                10042 	.byte	-1
   2649 27                10043 	.byte	39
   264A 51                10044 	.byte	81
   264B 00                10045 	.byte	0
   264C F1                10046 	.byte	-15
   264D 9D                10047 	.byte	-99
   264E FF                10048 	.byte	-1
   264F 27                10049 	.byte	39
   2650 51                10050 	.byte	81
   2651 00                10051 	.byte	0
   2652 FD                10052 	.byte	-3
   2653 A3                10053 	.byte	-93
   2654 FF                10054 	.byte	-1
   2655 24                10055 	.byte	36
   2656 51                10056 	.byte	81
   2657 00                10057 	.byte	0
   2658 E8                10058 	.byte	-24
   2659 12                10059 	.byte	18
   265A FF                10060 	.byte	-1
   265B DF                10061 	.byte	-33
   265C 0C                10062 	.byte	12
   265D FF                10063 	.byte	-1
   265E 18                10064 	.byte	24
   265F EE                10065 	.byte	-18
   2660 FF                10066 	.byte	-1
   2661 21                10067 	.byte	33
   2662 F4                10068 	.byte	-12
   2663 FF                10069 	.byte	-1
   2664 E8                10070 	.byte	-24
   2665 12                10071 	.byte	18
   2666 01                10072 	.byte	1
                          10073 	.globl _height2RisingLeft10
   2667                   10074 _height2RisingLeft10:
   2667 00                10075 	.byte	0
   2668 00                10076 	.byte	0
   2669 D9                10077 	.byte	-39
   266A FF                10078 	.byte	-1
   266B 00                10079 	.byte	0
   266C 27                10080 	.byte	39
   266D FF                10081 	.byte	-1
   266E 18                10082 	.byte	24
   266F F1                10083 	.byte	-15
   2670 FF                10084 	.byte	-1
   2671 FD                10085 	.byte	-3
   2672 D6                10086 	.byte	-42
   2673 FF                10087 	.byte	-1
   2674 EB                10088 	.byte	-21
   2675 12                10089 	.byte	18
   2676 FF                10090 	.byte	-1
   2677 4B                10091 	.byte	75
   2678 0C                10092 	.byte	12
   2679 00                10093 	.byte	0
   267A B5                10094 	.byte	-75
   267B 1B                10095 	.byte	27
   267C FF                10096 	.byte	-1
   267D 51                10097 	.byte	81
   267E 0C                10098 	.byte	12
   267F 00                10099 	.byte	0
   2680 C7                10100 	.byte	-57
   2681 E5                10101 	.byte	-27
   2682 FF                10102 	.byte	-1
   2683 51                10103 	.byte	81
   2684 0C                10104 	.byte	12
   2685 00                10105 	.byte	0
   2686 AC                10106 	.byte	-84
   2687 CA                10107 	.byte	-54
   2688 FF                10108 	.byte	-1
   2689 4E                10109 	.byte	78
   268A 0C                10110 	.byte	12
   268B 00                10111 	.byte	0
   268C E8                10112 	.byte	-24
   268D 12                10113 	.byte	18
   268E FF                10114 	.byte	-1
   268F 06                10115 	.byte	6
   2690 27                10116 	.byte	39
   2691 FF                10117 	.byte	-1
   2692 18                10118 	.byte	24
   2693 F1                10119 	.byte	-15
   2694 FF                10120 	.byte	-1
   2695 FA                10121 	.byte	-6
   2696 D6                10122 	.byte	-42
   2697 FF                10123 	.byte	-1
   2698 E8                10124 	.byte	-24
   2699 12                10125 	.byte	18
   269A 01                10126 	.byte	1
                          10127 	.globl _height2FallingBack10
   269B                   10128 _height2FallingBack10:
   269B 00                10129 	.byte	0
   269C 36                10130 	.byte	54
   269D F7                10131 	.byte	-9
   269E FF                10132 	.byte	-1
   269F 09                10133 	.byte	9
   26A0 27                10134 	.byte	39
   26A1 FF                10135 	.byte	-1
   26A2 E2                10136 	.byte	-30
   26A3 FA                10137 	.byte	-6
   26A4 FF                10138 	.byte	-1
   26A5 F7                10139 	.byte	-9
   26A6 D9                10140 	.byte	-39
   26A7 FF                10141 	.byte	-1
   26A8 1E                10142 	.byte	30
   26A9 06                10143 	.byte	6
   26AA FF                10144 	.byte	-1
   26AB 45                10145 	.byte	69
   26AC DC                10146 	.byte	-36
   26AD 00                10147 	.byte	0
   26AE C4                10148 	.byte	-60
   26AF 4B                10149 	.byte	75
   26B0 FF                10150 	.byte	-1
   26B1 45                10151 	.byte	69
   26B2 DF                10152 	.byte	-33
   26B3 00                10153 	.byte	0
   26B4 9D                10154 	.byte	-99
   26B5 1B                10155 	.byte	27
   26B6 FF                10156 	.byte	-1
   26B7 42                10157 	.byte	66
   26B8 DF                10158 	.byte	-33
   26B9 00                10159 	.byte	0
   26BA B5                10160 	.byte	-75
   26BB FA                10161 	.byte	-6
   26BC FF                10162 	.byte	-1
   26BD 42                10163 	.byte	66
   26BE DC                10164 	.byte	-36
   26BF 00                10165 	.byte	0
   26C0 21                10166 	.byte	33
   26C1 06                10167 	.byte	6
   26C2 FF                10168 	.byte	-1
   26C3 09                10169 	.byte	9
   26C4 2A                10170 	.byte	42
   26C5 FF                10171 	.byte	-1
   26C6 DF                10172 	.byte	-33
   26C7 FA                10173 	.byte	-6
   26C8 FF                10174 	.byte	-1
   26C9 F7                10175 	.byte	-9
   26CA D6                10176 	.byte	-42
   26CB FF                10177 	.byte	-1
   26CC 21                10178 	.byte	33
   26CD 06                10179 	.byte	6
   26CE 01                10180 	.byte	1
                          10181 	.globl _height2RisingFront10
   26CF                   10182 _height2RisingFront10:
   26CF 00                10183 	.byte	0
   26D0 F1                10184 	.byte	-15
   26D1 12                10185 	.byte	18
   26D2 FF                10186 	.byte	-1
   26D3 09                10187 	.byte	9
   26D4 2A                10188 	.byte	42
   26D5 FF                10189 	.byte	-1
   26D6 0F                10190 	.byte	15
   26D7 EE                10191 	.byte	-18
   26D8 FF                10192 	.byte	-1
   26D9 F7                10193 	.byte	-9
   26DA D6                10194 	.byte	-42
   26DB FF                10195 	.byte	-1
   26DC F1                10196 	.byte	-15
   26DD 12                10197 	.byte	18
   26DE FF                10198 	.byte	-1
   26DF 51                10199 	.byte	81
   26E0 FA                10200 	.byte	-6
   26E1 00                10201 	.byte	0
   26E2 B8                10202 	.byte	-72
   26E3 30                10203 	.byte	48
   26E4 FF                10204 	.byte	-1
   26E5 51                10205 	.byte	81
   26E6 FA                10206 	.byte	-6
   26E7 00                10207 	.byte	0
   26E8 BE                10208 	.byte	-66
   26E9 F4                10209 	.byte	-12
   26EA FF                10210 	.byte	-1
   26EB 54                10211 	.byte	84
   26EC FA                10212 	.byte	-6
   26ED 00                10213 	.byte	0
   26EE A3                10214 	.byte	-93
   26EF DC                10215 	.byte	-36
   26F0 FF                10216 	.byte	-1
   26F1 54                10217 	.byte	84
   26F2 FD                10218 	.byte	-3
   26F3 00                10219 	.byte	0
   26F4 EE                10220 	.byte	-18
   26F5 0F                10221 	.byte	15
   26F6 FF                10222 	.byte	-1
   26F7 09                10223 	.byte	9
   26F8 2A                10224 	.byte	42
   26F9 FF                10225 	.byte	-1
   26FA 12                10226 	.byte	18
   26FB EE                10227 	.byte	-18
   26FC FF                10228 	.byte	-1
   26FD F7                10229 	.byte	-9
   26FE D9                10230 	.byte	-39
   26FF FF                10231 	.byte	-1
   2700 EE                10232 	.byte	-18
   2701 0F                10233 	.byte	15
   2702 01                10234 	.byte	1
                          10235 	.globl _height2FallingFront10
   2703                   10236 _height2FallingFront10:
   2703 FF                10237 	.byte	-1
   2704 09                10238 	.byte	9
   2705 2A                10239 	.byte	42
   2706 FF                10240 	.byte	-1
   2707 2D                10241 	.byte	45
   2708 FA                10242 	.byte	-6
   2709 FF                10243 	.byte	-1
   270A F7                10244 	.byte	-9
   270B D9                10245 	.byte	-39
   270C FF                10246 	.byte	-1
   270D D3                10247 	.byte	-45
   270E 03                10248 	.byte	3
   270F FF                10249 	.byte	-1
   2710 E8                10250 	.byte	-24
   2711 24                10251 	.byte	36
   2712 00                10252 	.byte	0
   2713 21                10253 	.byte	33
   2714 06                10254 	.byte	6
   2715 FF                10255 	.byte	-1
   2716 E8                10256 	.byte	-24
   2717 24                10257 	.byte	36
   2718 00                10258 	.byte	0
   2719 45                10259 	.byte	69
   271A D6                10260 	.byte	-42
   271B FF                10261 	.byte	-1
   271C E5                10262 	.byte	-27
   271D 24                10263 	.byte	36
   271E 00                10264 	.byte	0
   271F 12                10265 	.byte	18
   2720 B5                10266 	.byte	-75
   2721 FF                10267 	.byte	-1
   2722 E5                10268 	.byte	-27
   2723 21                10269 	.byte	33
   2724 00                10270 	.byte	0
   2725 D6                10271 	.byte	-42
   2726 06                10272 	.byte	6
   2727 FF                10273 	.byte	-1
   2728 09                10274 	.byte	9
   2729 2A                10275 	.byte	42
   272A FF                10276 	.byte	-1
   272B 2A                10277 	.byte	42
   272C FA                10278 	.byte	-6
   272D FF                10279 	.byte	-1
   272E F7                10280 	.byte	-9
   272F D6                10281 	.byte	-42
   2730 FF                10282 	.byte	-1
   2731 D6                10283 	.byte	-42
   2732 06                10284 	.byte	6
   2733 01                10285 	.byte	1
                          10286 	.globl _height2RisingBack10
   2734                   10287 _height2RisingBack10:
   2734 00                10288 	.byte	0
   2735 30                10289 	.byte	48
   2736 DF                10290 	.byte	-33
   2737 FF                10291 	.byte	-1
   2738 09                10292 	.byte	9
   2739 27                10293 	.byte	39
   273A FF                10294 	.byte	-1
   273B 1E                10295 	.byte	30
   273C F1                10296 	.byte	-15
   273D FF                10297 	.byte	-1
   273E F7                10298 	.byte	-9
   273F D6                10299 	.byte	-42
   2740 FF                10300 	.byte	-1
   2741 E2                10301 	.byte	-30
   2742 12                10302 	.byte	18
   2743 FF                10303 	.byte	-1
   2744 48                10304 	.byte	72
   2745 06                10305 	.byte	6
   2746 00                10306 	.byte	0
   2747 C1                10307 	.byte	-63
   2748 21                10308 	.byte	33
   2749 FF                10309 	.byte	-1
   274A 48                10310 	.byte	72
   274B 06                10311 	.byte	6
   274C 00                10312 	.byte	0
   274D D6                10313 	.byte	-42
   274E EB                10314 	.byte	-21
   274F FF                10315 	.byte	-1
   2750 45                10316 	.byte	69
   2751 06                10317 	.byte	6
   2752 00                10318 	.byte	0
   2753 B2                10319 	.byte	-78
   2754 D0                10320 	.byte	-48
   2755 FF                10321 	.byte	-1
   2756 45                10322 	.byte	69
   2757 06                10323 	.byte	6
   2758 00                10324 	.byte	0
   2759 E5                10325 	.byte	-27
   275A 12                10326 	.byte	18
   275B FF                10327 	.byte	-1
   275C 09                10328 	.byte	9
   275D 27                10329 	.byte	39
   275E FF                10330 	.byte	-1
   275F 1B                10331 	.byte	27
   2760 F1                10332 	.byte	-15
   2761 FF                10333 	.byte	-1
   2762 F7                10334 	.byte	-9
   2763 D6                10335 	.byte	-42
   2764 FF                10336 	.byte	-1
   2765 E5                10337 	.byte	-27
   2766 12                10338 	.byte	18
   2767 01                10339 	.byte	1
                          10340 	.globl _depth2RollingLeft10
   2768                   10341 _depth2RollingLeft10:
   2768 FF                10342 	.byte	-1
   2769 27                10343 	.byte	39
   276A 0C                10344 	.byte	12
   276B FF                10345 	.byte	-1
   276C 30                10346 	.byte	48
   276D DF                10347 	.byte	-33
   276E FF                10348 	.byte	-1
   276F D9                10349 	.byte	-39
   2770 F4                10350 	.byte	-12
   2771 FF                10351 	.byte	-1
   2772 D0                10352 	.byte	-48
   2773 21                10353 	.byte	33
   2774 FF                10354 	.byte	-1
   2775 00                10355 	.byte	0
   2776 D9                10356 	.byte	-39
   2777 00                10357 	.byte	0
   2778 27                10358 	.byte	39
   2779 33                10359 	.byte	51
   277A FF                10360 	.byte	-1
   277B 03                10361 	.byte	3
   277C D9                10362 	.byte	-39
   277D 00                10363 	.byte	0
   277E 2D                10364 	.byte	45
   277F 06                10365 	.byte	6
   2780 FF                10366 	.byte	-1
   2781 03                10367 	.byte	3
   2782 D6                10368 	.byte	-42
   2783 00                10369 	.byte	0
   2784 D6                10370 	.byte	-42
   2785 1E                10371 	.byte	30
   2786 FF                10372 	.byte	-1
   2787 00                10373 	.byte	0
   2788 D6                10374 	.byte	-42
   2789 00                10375 	.byte	0
   278A D0                10376 	.byte	-48
   278B 24                10377 	.byte	36
   278C FF                10378 	.byte	-1
   278D 2A                10379 	.byte	42
   278E 0C                10380 	.byte	12
   278F FF                10381 	.byte	-1
   2790 30                10382 	.byte	48
   2791 DC                10383 	.byte	-36
   2792 FF                10384 	.byte	-1
   2793 D6                10385 	.byte	-42
   2794 F4                10386 	.byte	-12
   2795 FF                10387 	.byte	-1
   2796 D0                10388 	.byte	-48
   2797 24                10389 	.byte	36
   2798 01                10390 	.byte	1
                          10391 	.globl _depth2RollingRight10
   2799                   10392 _depth2RollingRight10:
   2799 00                10393 	.byte	0
   279A 2D                10394 	.byte	45
   279B 1E                10395 	.byte	30
   279C FF                10396 	.byte	-1
   279D DC                10397 	.byte	-36
   279E 0C                10398 	.byte	12
   279F FF                10399 	.byte	-1
   27A0 30                10400 	.byte	48
   27A1 DC                10401 	.byte	-36
   27A2 FF                10402 	.byte	-1
   27A3 24                10403 	.byte	36
   27A4 F7                10404 	.byte	-9
   27A5 FF                10405 	.byte	-1
   27A6 D0                10406 	.byte	-48
   27A7 21                10407 	.byte	33
   27A8 FF                10408 	.byte	-1
   27A9 12                10409 	.byte	18
   27AA 2A                10410 	.byte	42
   27AB 00                10411 	.byte	0
   27AC CA                10412 	.byte	-54
   27AD E2                10413 	.byte	-30
   27AE FF                10414 	.byte	-1
   27AF 12                10415 	.byte	18
   27B0 2A                10416 	.byte	42
   27B1 00                10417 	.byte	0
   27B2 1E                10418 	.byte	30
   27B3 B2                10419 	.byte	-78
   27B4 FF                10420 	.byte	-1
   27B5 12                10421 	.byte	18
   27B6 2A                10422 	.byte	42
   27B7 00                10423 	.byte	0
   27B8 12                10424 	.byte	18
   27B9 CD                10425 	.byte	-51
   27BA FF                10426 	.byte	-1
   27BB 12                10427 	.byte	18
   27BC 27                10428 	.byte	39
   27BD 00                10429 	.byte	0
   27BE D0                10430 	.byte	-48
   27BF 24                10431 	.byte	36
   27C0 FF                10432 	.byte	-1
   27C1 DC                10433 	.byte	-36
   27C2 0C                10434 	.byte	12
   27C3 FF                10435 	.byte	-1
   27C4 30                10436 	.byte	48
   27C5 DC                10437 	.byte	-36
   27C6 FF                10438 	.byte	-1
   27C7 24                10439 	.byte	36
   27C8 F4                10440 	.byte	-12
   27C9 FF                10441 	.byte	-1
   27CA D0                10442 	.byte	-48
   27CB 24                10443 	.byte	36
   27CC 01                10444 	.byte	1
                          10445 	.globl _width2RollingFront10
   27CD                   10446 _width2RollingFront10:
   27CD FF                10447 	.byte	-1
   27CE 12                10448 	.byte	18
   27CF 54                10449 	.byte	84
   27D0 FF                10450 	.byte	-1
   27D1 2D                10451 	.byte	45
   27D2 FA                10452 	.byte	-6
   27D3 FF                10453 	.byte	-1
   27D4 EE                10454 	.byte	-18
   27D5 AF                10455 	.byte	-81
   27D6 FF                10456 	.byte	-1
   27D7 D3                10457 	.byte	-45
   27D8 03                10458 	.byte	3
   27D9 FF                10459 	.byte	-1
   27DA F7                10460 	.byte	-9
   27DB 12                10461 	.byte	18
   27DC 00                10462 	.byte	0
   27DD 1B                10463 	.byte	27
   27DE 42                10464 	.byte	66
   27DF FF                10465 	.byte	-1
   27E0 F4                10466 	.byte	-12
   27E1 12                10467 	.byte	18
   27E2 00                10468 	.byte	0
   27E3 39                10469 	.byte	57
   27E4 E8                10470 	.byte	-24
   27E5 FF                10471 	.byte	-1
   27E6 F1                10472 	.byte	-15
   27E7 12                10473 	.byte	18
   27E8 00                10474 	.byte	0
   27E9 FD                10475 	.byte	-3
   27EA 9D                10476 	.byte	-99
   27EB FF                10477 	.byte	-1
   27EC F1                10478 	.byte	-15
   27ED 0F                10479 	.byte	15
   27EE 00                10480 	.byte	0
   27EF D9                10481 	.byte	-39
   27F0 06                10482 	.byte	6
   27F1 FF                10483 	.byte	-1
   27F2 0F                10484 	.byte	15
   27F3 54                10485 	.byte	84
   27F4 FF                10486 	.byte	-1
   27F5 2A                10487 	.byte	42
   27F6 FA                10488 	.byte	-6
   27F7 FF                10489 	.byte	-1
   27F8 EE                10490 	.byte	-18
   27F9 AC                10491 	.byte	-84
   27FA FF                10492 	.byte	-1
   27FB D9                10493 	.byte	-39
   27FC 06                10494 	.byte	6
   27FD 01                10495 	.byte	1
                          10496 	.globl _width2RollingBack10
   27FE                   10497 _width2RollingBack10:
   27FE 00                10498 	.byte	0
   27FF 36                10499 	.byte	54
   2800 F7                10500 	.byte	-9
   2801 FF                10501 	.byte	-1
   2802 12                10502 	.byte	18
   2803 51                10503 	.byte	81
   2804 FF                10504 	.byte	-1
   2805 E2                10505 	.byte	-30
   2806 FA                10506 	.byte	-6
   2807 FF                10507 	.byte	-1
   2808 EE                10508 	.byte	-18
   2809 AF                10509 	.byte	-81
   280A FF                10510 	.byte	-1
   280B 1E                10511 	.byte	30
   280C 06                10512 	.byte	6
   280D FF                10513 	.byte	-1
   280E 24                10514 	.byte	36
   280F EE                10515 	.byte	-18
   2810 00                10516 	.byte	0
   2811 EE                10517 	.byte	-18
   2812 63                10518 	.byte	99
   2813 FF                10519 	.byte	-1
   2814 24                10520 	.byte	36
   2815 EE                10521 	.byte	-18
   2816 00                10522 	.byte	0
   2817 BE                10523 	.byte	-66
   2818 0C                10524 	.byte	12
   2819 FF                10525 	.byte	-1
   281A 21                10526 	.byte	33
   281B EE                10527 	.byte	-18
   281C 00                10528 	.byte	0
   281D CD                10529 	.byte	-51
   281E C1                10530 	.byte	-63
   281F FF                10531 	.byte	-1
   2820 21                10532 	.byte	33
   2821 EE                10533 	.byte	-18
   2822 00                10534 	.byte	0
   2823 21                10535 	.byte	33
   2824 06                10536 	.byte	6
   2825 FF                10537 	.byte	-1
   2826 12                10538 	.byte	18
   2827 51                10539 	.byte	81
   2828 FF                10540 	.byte	-1
   2829 DF                10541 	.byte	-33
   282A FA                10542 	.byte	-6
   282B FF                10543 	.byte	-1
   282C EE                10544 	.byte	-18
   282D AF                10545 	.byte	-81
   282E FF                10546 	.byte	-1
   282F 21                10547 	.byte	33
   2830 06                10548 	.byte	6
   2831 01                10549 	.byte	1
                          10550 	.globl _height1FallingLeft10
   2832                   10551 _height1FallingLeft10:
   2832 FF                10552 	.byte	-1
   2833 27                10553 	.byte	39
   2834 0C                10554 	.byte	12
   2835 FF                10555 	.byte	-1
   2836 18                10556 	.byte	24
   2837 F1                10557 	.byte	-15
   2838 FF                10558 	.byte	-1
   2839 D9                10559 	.byte	-39
   283A F4                10560 	.byte	-12
   283B FF                10561 	.byte	-1
   283C E8                10562 	.byte	-24
   283D 0F                10563 	.byte	15
   283E FF                10564 	.byte	-1
   283F 00                10565 	.byte	0
   2840 D9                10566 	.byte	-39
   2841 00                10567 	.byte	0
   2842 27                10568 	.byte	39
   2843 33                10569 	.byte	51
   2844 FF                10570 	.byte	-1
   2845 03                10571 	.byte	3
   2846 D9                10572 	.byte	-39
   2847 00                10573 	.byte	0
   2848 15                10574 	.byte	21
   2849 18                10575 	.byte	24
   284A FF                10576 	.byte	-1
   284B 03                10577 	.byte	3
   284C D6                10578 	.byte	-42
   284D 00                10579 	.byte	0
   284E D6                10580 	.byte	-42
   284F 1E                10581 	.byte	30
   2850 FF                10582 	.byte	-1
   2851 00                10583 	.byte	0
   2852 D6                10584 	.byte	-42
   2853 00                10585 	.byte	0
   2854 E8                10586 	.byte	-24
   2855 12                10587 	.byte	18
   2856 FF                10588 	.byte	-1
   2857 2A                10589 	.byte	42
   2858 0C                10590 	.byte	12
   2859 FF                10591 	.byte	-1
   285A 18                10592 	.byte	24
   285B EE                10593 	.byte	-18
   285C FF                10594 	.byte	-1
   285D D6                10595 	.byte	-42
   285E F4                10596 	.byte	-12
   285F FF                10597 	.byte	-1
   2860 E8                10598 	.byte	-24
   2861 12                10599 	.byte	18
   2862 01                10600 	.byte	1
                          10601 	.globl _height1FallingRight10
   2863                   10602 _height1FallingRight10:
   2863 00                10603 	.byte	0
   2864 2D                10604 	.byte	45
   2865 1E                10605 	.byte	30
   2866 FF                10606 	.byte	-1
   2867 DC                10607 	.byte	-36
   2868 0C                10608 	.byte	12
   2869 FF                10609 	.byte	-1
   286A 18                10610 	.byte	24
   286B EE                10611 	.byte	-18
   286C FF                10612 	.byte	-1
   286D 24                10613 	.byte	36
   286E F4                10614 	.byte	-12
   286F FF                10615 	.byte	-1
   2870 E8                10616 	.byte	-24
   2871 12                10617 	.byte	18
   2872 FF                10618 	.byte	-1
   2873 12                10619 	.byte	18
   2874 2A                10620 	.byte	42
   2875 00                10621 	.byte	0
   2876 CA                10622 	.byte	-54
   2877 E2                10623 	.byte	-30
   2878 FF                10624 	.byte	-1
   2879 12                10625 	.byte	18
   287A 2A                10626 	.byte	42
   287B 00                10627 	.byte	0
   287C 06                10628 	.byte	6
   287D C4                10629 	.byte	-60
   287E FF                10630 	.byte	-1
   287F 12                10631 	.byte	18
   2880 2A                10632 	.byte	42
   2881 00                10633 	.byte	0
   2882 12                10634 	.byte	18
   2883 CA                10635 	.byte	-54
   2884 FF                10636 	.byte	-1
   2885 12                10637 	.byte	18
   2886 2A                10638 	.byte	42
   2887 00                10639 	.byte	0
   2888 E8                10640 	.byte	-24
   2889 12                10641 	.byte	18
   288A FF                10642 	.byte	-1
   288B DC                10643 	.byte	-36
   288C 0C                10644 	.byte	12
   288D FF                10645 	.byte	-1
   288E 18                10646 	.byte	24
   288F EE                10647 	.byte	-18
   2890 FF                10648 	.byte	-1
   2891 24                10649 	.byte	36
   2892 F4                10650 	.byte	-12
   2893 FF                10651 	.byte	-1
   2894 E8                10652 	.byte	-24
   2895 12                10653 	.byte	18
   2896 01                10654 	.byte	1
                          10655 	.globl _height1FallingBack10
   2897                   10656 _height1FallingBack10:
   2897 00                10657 	.byte	0
   2898 36                10658 	.byte	54
   2899 F7                10659 	.byte	-9
   289A FF                10660 	.byte	-1
   289B 09                10661 	.byte	9
   289C 27                10662 	.byte	39
   289D FF                10663 	.byte	-1
   289E E2                10664 	.byte	-30
   289F FA                10665 	.byte	-6
   28A0 FF                10666 	.byte	-1
   28A1 F7                10667 	.byte	-9
   28A2 D9                10668 	.byte	-39
   28A3 FF                10669 	.byte	-1
   28A4 1E                10670 	.byte	30
   28A5 06                10671 	.byte	6
   28A6 FF                10672 	.byte	-1
   28A7 24                10673 	.byte	36
   28A8 EE                10674 	.byte	-18
   28A9 00                10675 	.byte	0
   28AA E5                10676 	.byte	-27
   28AB 39                10677 	.byte	57
   28AC FF                10678 	.byte	-1
   28AD 24                10679 	.byte	36
   28AE EE                10680 	.byte	-18
   28AF 00                10681 	.byte	0
   28B0 BE                10682 	.byte	-66
   28B1 0C                10683 	.byte	12
   28B2 FF                10684 	.byte	-1
   28B3 21                10685 	.byte	33
   28B4 EE                10686 	.byte	-18
   28B5 00                10687 	.byte	0
   28B6 D6                10688 	.byte	-42
   28B7 EB                10689 	.byte	-21
   28B8 FF                10690 	.byte	-1
   28B9 21                10691 	.byte	33
   28BA EE                10692 	.byte	-18
   28BB 00                10693 	.byte	0
   28BC 21                10694 	.byte	33
   28BD 06                10695 	.byte	6
   28BE FF                10696 	.byte	-1
   28BF 09                10697 	.byte	9
   28C0 27                10698 	.byte	39
   28C1 FF                10699 	.byte	-1
   28C2 DF                10700 	.byte	-33
   28C3 FA                10701 	.byte	-6
   28C4 FF                10702 	.byte	-1
   28C5 F7                10703 	.byte	-9
   28C6 D9                10704 	.byte	-39
   28C7 FF                10705 	.byte	-1
   28C8 21                10706 	.byte	33
   28C9 06                10707 	.byte	6
   28CA 01                10708 	.byte	1
                          10709 	.globl _height1FallingFront10
   28CB                   10710 _height1FallingFront10:
   28CB FF                10711 	.byte	-1
   28CC 09                10712 	.byte	9
   28CD 2A                10713 	.byte	42
   28CE FF                10714 	.byte	-1
   28CF 2D                10715 	.byte	45
   28D0 FA                10716 	.byte	-6
   28D1 FF                10717 	.byte	-1
   28D2 F7                10718 	.byte	-9
   28D3 D9                10719 	.byte	-39
   28D4 FF                10720 	.byte	-1
   28D5 D3                10721 	.byte	-45
   28D6 03                10722 	.byte	3
   28D7 FF                10723 	.byte	-1
   28D8 F7                10724 	.byte	-9
   28D9 12                10725 	.byte	18
   28DA 00                10726 	.byte	0
   28DB 12                10727 	.byte	18
   28DC 18                10728 	.byte	24
   28DD FF                10729 	.byte	-1
   28DE F7                10730 	.byte	-9
   28DF 12                10731 	.byte	18
   28E0 00                10732 	.byte	0
   28E1 36                10733 	.byte	54
   28E2 E8                10734 	.byte	-24
   28E3 FF                10735 	.byte	-1
   28E4 F1                10736 	.byte	-15
   28E5 12                10737 	.byte	18
   28E6 00                10738 	.byte	0
   28E7 06                10739 	.byte	6
   28E8 C7                10740 	.byte	-57
   28E9 FF                10741 	.byte	-1
   28EA F1                10742 	.byte	-15
   28EB 0F                10743 	.byte	15
   28EC 00                10744 	.byte	0
   28ED D9                10745 	.byte	-39
   28EE 06                10746 	.byte	6
   28EF FF                10747 	.byte	-1
   28F0 09                10748 	.byte	9
   28F1 2A                10749 	.byte	42
   28F2 FF                10750 	.byte	-1
   28F3 27                10751 	.byte	39
   28F4 FA                10752 	.byte	-6
   28F5 FF                10753 	.byte	-1
   28F6 F7                10754 	.byte	-9
   28F7 D6                10755 	.byte	-42
   28F8 FF                10756 	.byte	-1
   28F9 D9                10757 	.byte	-39
   28FA 06                10758 	.byte	6
   28FB 01                10759 	.byte	1
                          10760 	.globl _height2FallingLeft11
   28FC                   10761 _height2FallingLeft11:
   28FC FF                10762 	.byte	-1
   28FD 27                10763 	.byte	39
   28FE 06                10764 	.byte	6
   28FF FF                10765 	.byte	-1
   2900 18                10766 	.byte	24
   2901 F1                10767 	.byte	-15
   2902 FF                10768 	.byte	-1
   2903 D9                10769 	.byte	-39
   2904 FA                10770 	.byte	-6
   2905 FF                10771 	.byte	-1
   2906 E8                10772 	.byte	-24
   2907 0F                10773 	.byte	15
   2908 FF                10774 	.byte	-1
   2909 FA                10775 	.byte	-6
   290A AF                10776 	.byte	-81
   290B 00                10777 	.byte	0
   290C 2D                10778 	.byte	45
   290D 57                10779 	.byte	87
   290E FF                10780 	.byte	-1
   290F FA                10781 	.byte	-6
   2910 AF                10782 	.byte	-81
   2911 00                10783 	.byte	0
   2912 1E                10784 	.byte	30
   2913 42                10785 	.byte	66
   2914 FF                10786 	.byte	-1
   2915 FA                10787 	.byte	-6
   2916 AC                10788 	.byte	-84
   2917 00                10789 	.byte	0
   2918 DF                10790 	.byte	-33
   2919 4E                10791 	.byte	78
   291A FF                10792 	.byte	-1
   291B F7                10793 	.byte	-9
   291C AC                10794 	.byte	-84
   291D 00                10795 	.byte	0
   291E EB                10796 	.byte	-21
   291F 12                10797 	.byte	18
   2920 FF                10798 	.byte	-1
   2921 27                10799 	.byte	39
   2922 06                10800 	.byte	6
   2923 FF                10801 	.byte	-1
   2924 18                10802 	.byte	24
   2925 EE                10803 	.byte	-18
   2926 FF                10804 	.byte	-1
   2927 D6                10805 	.byte	-42
   2928 FA                10806 	.byte	-6
   2929 FF                10807 	.byte	-1
   292A EB                10808 	.byte	-21
   292B 12                10809 	.byte	18
   292C 01                10810 	.byte	1
                          10811 	.globl _height2RisingRight11
   292D                   10812 _height2RisingRight11:
   292D 00                10813 	.byte	0
   292E 12                10814 	.byte	18
   292F 54                10815 	.byte	84
   2930 FF                10816 	.byte	-1
   2931 09                10817 	.byte	9
   2932 2A                10818 	.byte	42
   2933 FF                10819 	.byte	-1
   2934 18                10820 	.byte	24
   2935 EE                10821 	.byte	-18
   2936 FF                10822 	.byte	-1
   2937 F7                10823 	.byte	-9
   2938 D6                10824 	.byte	-42
   2939 FF                10825 	.byte	-1
   293A E8                10826 	.byte	-24
   293B 12                10827 	.byte	18
   293C FF                10828 	.byte	-1
   293D 4E                10829 	.byte	78
   293E 00                10830 	.byte	0
   293F 00                10831 	.byte	0
   2940 BB                10832 	.byte	-69
   2941 2A                10833 	.byte	42
   2942 FF                10834 	.byte	-1
   2943 4E                10835 	.byte	78
   2944 00                10836 	.byte	0
   2945 00                10837 	.byte	0
   2946 CA                10838 	.byte	-54
   2947 EE                10839 	.byte	-18
   2948 FF                10840 	.byte	-1
   2949 4E                10841 	.byte	78
   294A 00                10842 	.byte	0
   294B 00                10843 	.byte	0
   294C A9                10844 	.byte	-87
   294D D6                10845 	.byte	-42
   294E FF                10846 	.byte	-1
   294F 4E                10847 	.byte	78
   2950 00                10848 	.byte	0
   2951 00                10849 	.byte	0
   2952 E8                10850 	.byte	-24
   2953 12                10851 	.byte	18
   2954 FF                10852 	.byte	-1
   2955 09                10853 	.byte	9
   2956 2A                10854 	.byte	42
   2957 FF                10855 	.byte	-1
   2958 18                10856 	.byte	24
   2959 EE                10857 	.byte	-18
   295A FF                10858 	.byte	-1
   295B F7                10859 	.byte	-9
   295C D6                10860 	.byte	-42
   295D FF                10861 	.byte	-1
   295E E8                10862 	.byte	-24
   295F 12                10863 	.byte	18
   2960 01                10864 	.byte	1
                          10865 	.globl _height2FallingRight11
   2961                   10866 _height2FallingRight11:
   2961 00                10867 	.byte	0
   2962 2D                10868 	.byte	45
   2963 24                10869 	.byte	36
   2964 FF                10870 	.byte	-1
   2965 DC                10871 	.byte	-36
   2966 06                10872 	.byte	6
   2967 FF                10873 	.byte	-1
   2968 18                10874 	.byte	24
   2969 EE                10875 	.byte	-18
   296A FF                10876 	.byte	-1
   296B 24                10877 	.byte	36
   296C FA                10878 	.byte	-6
   296D FF                10879 	.byte	-1
   296E E8                10880 	.byte	-24
   296F 12                10881 	.byte	18
   2970 FF                10882 	.byte	-1
   2971 1E                10883 	.byte	30
   2972 54                10884 	.byte	84
   2973 00                10885 	.byte	0
   2974 BE                10886 	.byte	-66
   2975 B2                10887 	.byte	-78
   2976 FF                10888 	.byte	-1
   2977 1B                10889 	.byte	27
   2978 54                10890 	.byte	84
   2979 00                10891 	.byte	0
   297A FD                10892 	.byte	-3
   297B 9A                10893 	.byte	-102
   297C FF                10894 	.byte	-1
   297D 1B                10895 	.byte	27
   297E 54                10896 	.byte	84
   297F 00                10897 	.byte	0
   2980 09                10898 	.byte	9
   2981 A6                10899 	.byte	-90
   2982 FF                10900 	.byte	-1
   2983 1E                10901 	.byte	30
   2984 54                10902 	.byte	84
   2985 00                10903 	.byte	0
   2986 E8                10904 	.byte	-24
   2987 12                10905 	.byte	18
   2988 FF                10906 	.byte	-1
   2989 D9                10907 	.byte	-39
   298A 06                10908 	.byte	6
   298B FF                10909 	.byte	-1
   298C 18                10910 	.byte	24
   298D EE                10911 	.byte	-18
   298E FF                10912 	.byte	-1
   298F 27                10913 	.byte	39
   2990 FA                10914 	.byte	-6
   2991 FF                10915 	.byte	-1
   2992 E8                10916 	.byte	-24
   2993 12                10917 	.byte	18
   2994 01                10918 	.byte	1
                          10919 	.globl _height2RisingLeft11
   2995                   10920 _height2RisingLeft11:
   2995 00                10921 	.byte	0
   2996 FA                10922 	.byte	-6
   2997 D9                10923 	.byte	-39
   2998 FF                10924 	.byte	-1
   2999 06                10925 	.byte	6
   299A 27                10926 	.byte	39
   299B FF                10927 	.byte	-1
   299C 18                10928 	.byte	24
   299D F1                10929 	.byte	-15
   299E FF                10930 	.byte	-1
   299F F7                10931 	.byte	-9
   29A0 D6                10932 	.byte	-42
   29A1 FF                10933 	.byte	-1
   29A2 EB                10934 	.byte	-21
   29A3 12                10935 	.byte	18
   29A4 FF                10936 	.byte	-1
   29A5 4B                10937 	.byte	75
   29A6 00                10938 	.byte	0
   29A7 00                10939 	.byte	0
   29A8 BB                10940 	.byte	-69
   29A9 27                10941 	.byte	39
   29AA FF                10942 	.byte	-1
   29AB 4E                10943 	.byte	78
   29AC 00                10944 	.byte	0
   29AD 00                10945 	.byte	0
   29AE CA                10946 	.byte	-54
   29AF F1                10947 	.byte	-15
   29B0 FF                10948 	.byte	-1
   29B1 4E                10949 	.byte	78
   29B2 00                10950 	.byte	0
   29B3 00                10951 	.byte	0
   29B4 A9                10952 	.byte	-87
   29B5 D6                10953 	.byte	-42
   29B6 FF                10954 	.byte	-1
   29B7 4E                10955 	.byte	78
   29B8 00                10956 	.byte	0
   29B9 00                10957 	.byte	0
   29BA E8                10958 	.byte	-24
   29BB 12                10959 	.byte	18
   29BC FF                10960 	.byte	-1
   29BD 09                10961 	.byte	9
   29BE 27                10962 	.byte	39
   29BF FF                10963 	.byte	-1
   29C0 18                10964 	.byte	24
   29C1 F1                10965 	.byte	-15
   29C2 FF                10966 	.byte	-1
   29C3 F7                10967 	.byte	-9
   29C4 D6                10968 	.byte	-42
   29C5 FF                10969 	.byte	-1
   29C6 E8                10970 	.byte	-24
   29C7 12                10971 	.byte	18
   29C8 01                10972 	.byte	1
                          10973 	.globl _height2FallingBack11
   29C9                   10974 _height2FallingBack11:
   29C9 00                10975 	.byte	0
   29CA 3C                10976 	.byte	60
   29CB F4                10977 	.byte	-12
   29CC FF                10978 	.byte	-1
   29CD 09                10979 	.byte	9
   29CE 27                10980 	.byte	39
   29CF FF                10981 	.byte	-1
   29D0 DC                10982 	.byte	-36
   29D1 FD                10983 	.byte	-3
   29D2 FF                10984 	.byte	-1
   29D3 F7                10985 	.byte	-9
   29D4 D9                10986 	.byte	-39
   29D5 FF                10987 	.byte	-1
   29D6 24                10988 	.byte	36
   29D7 03                10989 	.byte	3
   29D8 FF                10990 	.byte	-1
   29D9 39                10991 	.byte	57
   29DA DC                10992 	.byte	-36
   29DB 00                10993 	.byte	0
   29DC D0                10994 	.byte	-48
   29DD 4B                10995 	.byte	75
   29DE FF                10996 	.byte	-1
   29DF 39                10997 	.byte	57
   29E0 DF                10998 	.byte	-33
   29E1 00                10999 	.byte	0
   29E2 A3                11000 	.byte	-93
   29E3 1E                11001 	.byte	30
   29E4 FF                11002 	.byte	-1
   29E5 39                11003 	.byte	57
   29E6 DF                11004 	.byte	-33
   29E7 00                11005 	.byte	0
   29E8 BE                11006 	.byte	-66
   29E9 FA                11007 	.byte	-6
   29EA FF                11008 	.byte	-1
   29EB 39                11009 	.byte	57
   29EC DC                11010 	.byte	-36
   29ED 00                11011 	.byte	0
   29EE 24                11012 	.byte	36
   29EF 03                11013 	.byte	3
   29F0 FF                11014 	.byte	-1
   29F1 09                11015 	.byte	9
   29F2 2A                11016 	.byte	42
   29F3 FF                11017 	.byte	-1
   29F4 DC                11018 	.byte	-36
   29F5 FD                11019 	.byte	-3
   29F6 FF                11020 	.byte	-1
   29F7 F7                11021 	.byte	-9
   29F8 D6                11022 	.byte	-42
   29F9 FF                11023 	.byte	-1
   29FA 24                11024 	.byte	36
   29FB 03                11025 	.byte	3
   29FC 01                11026 	.byte	1
                          11027 	.globl _height2RisingFront11
   29FD                   11028 _height2RisingFront11:
   29FD 00                11029 	.byte	0
   29FE EB                11030 	.byte	-21
   29FF 12                11031 	.byte	18
   2A00 FF                11032 	.byte	-1
   2A01 09                11033 	.byte	9
   2A02 2A                11034 	.byte	42
   2A03 FF                11035 	.byte	-1
   2A04 15                11036 	.byte	21
   2A05 EE                11037 	.byte	-18
   2A06 FF                11038 	.byte	-1
   2A07 F7                11039 	.byte	-9
   2A08 D6                11040 	.byte	-42
   2A09 FF                11041 	.byte	-1
   2A0A EB                11042 	.byte	-21
   2A0B 12                11043 	.byte	18
   2A0C FF                11044 	.byte	-1
   2A0D 4B                11045 	.byte	75
   2A0E 00                11046 	.byte	0
   2A0F 00                11047 	.byte	0
   2A10 BE                11048 	.byte	-66
   2A11 2A                11049 	.byte	42
   2A12 FF                11050 	.byte	-1
   2A13 4B                11051 	.byte	75
   2A14 00                11052 	.byte	0
   2A15 00                11053 	.byte	0
   2A16 CA                11054 	.byte	-54
   2A17 EE                11055 	.byte	-18
   2A18 FF                11056 	.byte	-1
   2A19 4E                11057 	.byte	78
   2A1A 00                11058 	.byte	0
   2A1B 00                11059 	.byte	0
   2A1C A9                11060 	.byte	-87
   2A1D D6                11061 	.byte	-42
   2A1E FF                11062 	.byte	-1
   2A1F 4E                11063 	.byte	78
   2A20 00                11064 	.byte	0
   2A21 00                11065 	.byte	0
   2A22 E8                11066 	.byte	-24
   2A23 12                11067 	.byte	18
   2A24 FF                11068 	.byte	-1
   2A25 09                11069 	.byte	9
   2A26 2A                11070 	.byte	42
   2A27 FF                11071 	.byte	-1
   2A28 18                11072 	.byte	24
   2A29 EE                11073 	.byte	-18
   2A2A FF                11074 	.byte	-1
   2A2B F7                11075 	.byte	-9
   2A2C D6                11076 	.byte	-42
   2A2D FF                11077 	.byte	-1
   2A2E E8                11078 	.byte	-24
   2A2F 12                11079 	.byte	18
   2A30 01                11080 	.byte	1
                          11081 	.globl _height2FallingFront11
   2A31                   11082 _height2FallingFront11:
   2A31 FF                11083 	.byte	-1
   2A32 09                11084 	.byte	9
   2A33 2A                11085 	.byte	42
   2A34 FF                11086 	.byte	-1
   2A35 2A                11087 	.byte	42
   2A36 FD                11088 	.byte	-3
   2A37 FF                11089 	.byte	-1
   2A38 F7                11090 	.byte	-9
   2A39 D9                11091 	.byte	-39
   2A3A FF                11092 	.byte	-1
   2A3B D6                11093 	.byte	-42
   2A3C 00                11094 	.byte	0
   2A3D FF                11095 	.byte	-1
   2A3E DF                11096 	.byte	-33
   2A3F 24                11097 	.byte	36
   2A40 00                11098 	.byte	0
   2A41 2A                11099 	.byte	42
   2A42 06                11100 	.byte	6
   2A43 FF                11101 	.byte	-1
   2A44 DF                11102 	.byte	-33
   2A45 24                11103 	.byte	36
   2A46 00                11104 	.byte	0
   2A47 4B                11105 	.byte	75
   2A48 D9                11106 	.byte	-39
   2A49 FF                11107 	.byte	-1
   2A4A D9                11108 	.byte	-39
   2A4B 24                11109 	.byte	36
   2A4C 00                11110 	.byte	0
   2A4D 1E                11111 	.byte	30
   2A4E B5                11112 	.byte	-75
   2A4F FF                11113 	.byte	-1
   2A50 D9                11114 	.byte	-39
   2A51 21                11115 	.byte	33
   2A52 00                11116 	.byte	0
   2A53 DC                11117 	.byte	-36
   2A54 03                11118 	.byte	3
   2A55 FF                11119 	.byte	-1
   2A56 09                11120 	.byte	9
   2A57 2A                11121 	.byte	42
   2A58 FF                11122 	.byte	-1
   2A59 24                11123 	.byte	36
   2A5A FD                11124 	.byte	-3
   2A5B FF                11125 	.byte	-1
   2A5C F7                11126 	.byte	-9
   2A5D D6                11127 	.byte	-42
   2A5E FF                11128 	.byte	-1
   2A5F DC                11129 	.byte	-36
   2A60 03                11130 	.byte	3
   2A61 01                11131 	.byte	1
                          11132 	.globl _height2RisingBack11
   2A62                   11133 _height2RisingBack11:
   2A62 00                11134 	.byte	0
   2A63 30                11135 	.byte	48
   2A64 DF                11136 	.byte	-33
   2A65 FF                11137 	.byte	-1
   2A66 09                11138 	.byte	9
   2A67 27                11139 	.byte	39
   2A68 FF                11140 	.byte	-1
   2A69 18                11141 	.byte	24
   2A6A F1                11142 	.byte	-15
   2A6B FF                11143 	.byte	-1
   2A6C F7                11144 	.byte	-9
   2A6D D6                11145 	.byte	-42
   2A6E FF                11146 	.byte	-1
   2A6F E8                11147 	.byte	-24
   2A70 12                11148 	.byte	18
   2A71 FF                11149 	.byte	-1
   2A72 4E                11150 	.byte	78
   2A73 00                11151 	.byte	0
   2A74 00                11152 	.byte	0
   2A75 BB                11153 	.byte	-69
   2A76 27                11154 	.byte	39
   2A77 FF                11155 	.byte	-1
   2A78 4E                11156 	.byte	78
   2A79 00                11157 	.byte	0
   2A7A 00                11158 	.byte	0
   2A7B CA                11159 	.byte	-54
   2A7C F1                11160 	.byte	-15
   2A7D FF                11161 	.byte	-1
   2A7E 4E                11162 	.byte	78
   2A7F 00                11163 	.byte	0
   2A80 00                11164 	.byte	0
   2A81 A9                11165 	.byte	-87
   2A82 D6                11166 	.byte	-42
   2A83 FF                11167 	.byte	-1
   2A84 4E                11168 	.byte	78
   2A85 00                11169 	.byte	0
   2A86 00                11170 	.byte	0
   2A87 E8                11171 	.byte	-24
   2A88 12                11172 	.byte	18
   2A89 FF                11173 	.byte	-1
   2A8A 09                11174 	.byte	9
   2A8B 27                11175 	.byte	39
   2A8C FF                11176 	.byte	-1
   2A8D 18                11177 	.byte	24
   2A8E F1                11178 	.byte	-15
   2A8F FF                11179 	.byte	-1
   2A90 F7                11180 	.byte	-9
   2A91 D6                11181 	.byte	-42
   2A92 FF                11182 	.byte	-1
   2A93 E8                11183 	.byte	-24
   2A94 12                11184 	.byte	18
   2A95 01                11185 	.byte	1
                          11186 	.globl _depth2RollingLeft11
   2A96                   11187 _depth2RollingLeft11:
   2A96 FF                11188 	.byte	-1
   2A97 27                11189 	.byte	39
   2A98 06                11190 	.byte	6
   2A99 FF                11191 	.byte	-1
   2A9A 30                11192 	.byte	48
   2A9B DF                11193 	.byte	-33
   2A9C FF                11194 	.byte	-1
   2A9D D9                11195 	.byte	-39
   2A9E FA                11196 	.byte	-6
   2A9F FF                11197 	.byte	-1
   2AA0 D0                11198 	.byte	-48
   2AA1 21                11199 	.byte	33
   2AA2 FF                11200 	.byte	-1
   2AA3 00                11201 	.byte	0
   2AA4 D9                11202 	.byte	-39
   2AA5 00                11203 	.byte	0
   2AA6 27                11204 	.byte	39
   2AA7 2D                11205 	.byte	45
   2AA8 FF                11206 	.byte	-1
   2AA9 FD                11207 	.byte	-3
   2AAA D9                11208 	.byte	-39
   2AAB 00                11209 	.byte	0
   2AAC 33                11210 	.byte	51
   2AAD 06                11211 	.byte	6
   2AAE FF                11212 	.byte	-1
   2AAF FD                11213 	.byte	-3
   2AB0 D6                11214 	.byte	-42
   2AB1 00                11215 	.byte	0
   2AB2 DC                11216 	.byte	-36
   2AB3 24                11217 	.byte	36
   2AB4 FF                11218 	.byte	-1
   2AB5 FD                11219 	.byte	-3
   2AB6 D6                11220 	.byte	-42
   2AB7 00                11221 	.byte	0
   2AB8 D3                11222 	.byte	-45
   2AB9 24                11223 	.byte	36
   2ABA FF                11224 	.byte	-1
   2ABB 24                11225 	.byte	36
   2ABC 06                11226 	.byte	6
   2ABD FF                11227 	.byte	-1
   2ABE 30                11228 	.byte	48
   2ABF DC                11229 	.byte	-36
   2AC0 FF                11230 	.byte	-1
   2AC1 D9                11231 	.byte	-39
   2AC2 FA                11232 	.byte	-6
   2AC3 FF                11233 	.byte	-1
   2AC4 D3                11234 	.byte	-45
   2AC5 24                11235 	.byte	36
   2AC6 01                11236 	.byte	1
                          11237 	.globl _depth2RollingRight11
   2AC7                   11238 _depth2RollingRight11:
   2AC7 00                11239 	.byte	0
   2AC8 2D                11240 	.byte	45
   2AC9 24                11241 	.byte	36
   2ACA FF                11242 	.byte	-1
   2ACB DC                11243 	.byte	-36
   2ACC 06                11244 	.byte	6
   2ACD FF                11245 	.byte	-1
   2ACE 30                11246 	.byte	48
   2ACF DC                11247 	.byte	-36
   2AD0 FF                11248 	.byte	-1
   2AD1 24                11249 	.byte	36
   2AD2 FA                11250 	.byte	-6
   2AD3 FF                11251 	.byte	-1
   2AD4 D0                11252 	.byte	-48
   2AD5 24                11253 	.byte	36
   2AD6 FF                11254 	.byte	-1
   2AD7 0F                11255 	.byte	15
   2AD8 2A                11256 	.byte	42
   2AD9 00                11257 	.byte	0
   2ADA CD                11258 	.byte	-51
   2ADB DC                11259 	.byte	-36
   2ADC FF                11260 	.byte	-1
   2ADD 0F                11261 	.byte	15
   2ADE 2A                11262 	.byte	42
   2ADF 00                11263 	.byte	0
   2AE0 21                11264 	.byte	33
   2AE1 B2                11265 	.byte	-78
   2AE2 FF                11266 	.byte	-1
   2AE3 0F                11267 	.byte	15
   2AE4 2A                11268 	.byte	42
   2AE5 00                11269 	.byte	0
   2AE6 15                11270 	.byte	21
   2AE7 D0                11271 	.byte	-48
   2AE8 FF                11272 	.byte	-1
   2AE9 0F                11273 	.byte	15
   2AEA 2A                11274 	.byte	42
   2AEB 00                11275 	.byte	0
   2AEC D0                11276 	.byte	-48
   2AED 24                11277 	.byte	36
   2AEE FF                11278 	.byte	-1
   2AEF DC                11279 	.byte	-36
   2AF0 06                11280 	.byte	6
   2AF1 FF                11281 	.byte	-1
   2AF2 30                11282 	.byte	48
   2AF3 DC                11283 	.byte	-36
   2AF4 FF                11284 	.byte	-1
   2AF5 24                11285 	.byte	36
   2AF6 FA                11286 	.byte	-6
   2AF7 FF                11287 	.byte	-1
   2AF8 D0                11288 	.byte	-48
   2AF9 24                11289 	.byte	36
   2AFA 01                11290 	.byte	1
                          11291 	.globl _width2RollingFront11
   2AFB                   11292 _width2RollingFront11:
   2AFB FF                11293 	.byte	-1
   2AFC 12                11294 	.byte	18
   2AFD 54                11295 	.byte	84
   2AFE FF                11296 	.byte	-1
   2AFF 2A                11297 	.byte	42
   2B00 FD                11298 	.byte	-3
   2B01 FF                11299 	.byte	-1
   2B02 EE                11300 	.byte	-18
   2B03 AF                11301 	.byte	-81
   2B04 FF                11302 	.byte	-1
   2B05 D6                11303 	.byte	-42
   2B06 00                11304 	.byte	0
   2B07 FF                11305 	.byte	-1
   2B08 F1                11306 	.byte	-15
   2B09 12                11307 	.byte	18
   2B0A 00                11308 	.byte	0
   2B0B 21                11309 	.byte	33
   2B0C 42                11310 	.byte	66
   2B0D FF                11311 	.byte	-1
   2B0E EE                11312 	.byte	-18
   2B0F 12                11313 	.byte	18
   2B10 00                11314 	.byte	0
   2B11 3C                11315 	.byte	60
   2B12 EB                11316 	.byte	-21
   2B13 FF                11317 	.byte	-1
   2B14 EE                11318 	.byte	-18
   2B15 12                11319 	.byte	18
   2B16 00                11320 	.byte	0
   2B17 00                11321 	.byte	0
   2B18 9D                11322 	.byte	-99
   2B19 FF                11323 	.byte	-1
   2B1A EE                11324 	.byte	-18
   2B1B 0F                11325 	.byte	15
   2B1C 00                11326 	.byte	0
   2B1D D9                11327 	.byte	-39
   2B1E 03                11328 	.byte	3
   2B1F FF                11329 	.byte	-1
   2B20 0F                11330 	.byte	15
   2B21 54                11331 	.byte	84
   2B22 FF                11332 	.byte	-1
   2B23 2A                11333 	.byte	42
   2B24 FD                11334 	.byte	-3
   2B25 FF                11335 	.byte	-1
   2B26 EE                11336 	.byte	-18
   2B27 AC                11337 	.byte	-84
   2B28 FF                11338 	.byte	-1
   2B29 D9                11339 	.byte	-39
   2B2A 03                11340 	.byte	3
   2B2B 01                11341 	.byte	1
                          11342 	.globl _width2RollingBack11
   2B2C                   11343 _width2RollingBack11:
   2B2C 00                11344 	.byte	0
   2B2D 3C                11345 	.byte	60
   2B2E F4                11346 	.byte	-12
   2B2F FF                11347 	.byte	-1
   2B30 12                11348 	.byte	18
   2B31 51                11349 	.byte	81
   2B32 FF                11350 	.byte	-1
   2B33 DC                11351 	.byte	-36
   2B34 FD                11352 	.byte	-3
   2B35 FF                11353 	.byte	-1
   2B36 EE                11354 	.byte	-18
   2B37 AF                11355 	.byte	-81
   2B38 FF                11356 	.byte	-1
   2B39 24                11357 	.byte	36
   2B3A 03                11358 	.byte	3
   2B3B FF                11359 	.byte	-1
   2B3C 1B                11360 	.byte	27
   2B3D EE                11361 	.byte	-18
   2B3E 00                11362 	.byte	0
   2B3F F7                11363 	.byte	-9
   2B40 63                11364 	.byte	99
   2B41 FF                11365 	.byte	-1
   2B42 1B                11366 	.byte	27
   2B43 EE                11367 	.byte	-18
   2B44 00                11368 	.byte	0
   2B45 C1                11369 	.byte	-63
   2B46 0F                11370 	.byte	15
   2B47 FF                11371 	.byte	-1
   2B48 1E                11372 	.byte	30
   2B49 EE                11373 	.byte	-18
   2B4A 00                11374 	.byte	0
   2B4B D0                11375 	.byte	-48
   2B4C C1                11376 	.byte	-63
   2B4D FF                11377 	.byte	-1
   2B4E 1E                11378 	.byte	30
   2B4F EE                11379 	.byte	-18
   2B50 00                11380 	.byte	0
   2B51 21                11381 	.byte	33
   2B52 03                11382 	.byte	3
   2B53 FF                11383 	.byte	-1
   2B54 12                11384 	.byte	18
   2B55 51                11385 	.byte	81
   2B56 FF                11386 	.byte	-1
   2B57 DF                11387 	.byte	-33
   2B58 FD                11388 	.byte	-3
   2B59 FF                11389 	.byte	-1
   2B5A EE                11390 	.byte	-18
   2B5B AF                11391 	.byte	-81
   2B5C FF                11392 	.byte	-1
   2B5D 21                11393 	.byte	33
   2B5E 03                11394 	.byte	3
   2B5F 01                11395 	.byte	1
                          11396 	.globl _height1FallingLeft11
   2B60                   11397 _height1FallingLeft11:
   2B60 FF                11398 	.byte	-1
   2B61 27                11399 	.byte	39
   2B62 06                11400 	.byte	6
   2B63 FF                11401 	.byte	-1
   2B64 18                11402 	.byte	24
   2B65 F1                11403 	.byte	-15
   2B66 FF                11404 	.byte	-1
   2B67 D9                11405 	.byte	-39
   2B68 FA                11406 	.byte	-6
   2B69 FF                11407 	.byte	-1
   2B6A E8                11408 	.byte	-24
   2B6B 0F                11409 	.byte	15
   2B6C FF                11410 	.byte	-1
   2B6D 00                11411 	.byte	0
   2B6E D9                11412 	.byte	-39
   2B6F 00                11413 	.byte	0
   2B70 27                11414 	.byte	39
   2B71 2D                11415 	.byte	45
   2B72 FF                11416 	.byte	-1
   2B73 FD                11417 	.byte	-3
   2B74 D9                11418 	.byte	-39
   2B75 00                11419 	.byte	0
   2B76 1B                11420 	.byte	27
   2B77 18                11421 	.byte	24
   2B78 FF                11422 	.byte	-1
   2B79 FD                11423 	.byte	-3
   2B7A D6                11424 	.byte	-42
   2B7B 00                11425 	.byte	0
   2B7C DC                11426 	.byte	-36
   2B7D 24                11427 	.byte	36
   2B7E FF                11428 	.byte	-1
   2B7F FD                11429 	.byte	-3
   2B80 D6                11430 	.byte	-42
   2B81 00                11431 	.byte	0
   2B82 EB                11432 	.byte	-21
   2B83 12                11433 	.byte	18
   2B84 FF                11434 	.byte	-1
   2B85 24                11435 	.byte	36
   2B86 06                11436 	.byte	6
   2B87 FF                11437 	.byte	-1
   2B88 18                11438 	.byte	24
   2B89 EE                11439 	.byte	-18
   2B8A FF                11440 	.byte	-1
   2B8B D9                11441 	.byte	-39
   2B8C FA                11442 	.byte	-6
   2B8D FF                11443 	.byte	-1
   2B8E EB                11444 	.byte	-21
   2B8F 12                11445 	.byte	18
   2B90 01                11446 	.byte	1
                          11447 	.globl _height1FallingRight11
   2B91                   11448 _height1FallingRight11:
   2B91 00                11449 	.byte	0
   2B92 2D                11450 	.byte	45
   2B93 24                11451 	.byte	36
   2B94 FF                11452 	.byte	-1
   2B95 DC                11453 	.byte	-36
   2B96 06                11454 	.byte	6
   2B97 FF                11455 	.byte	-1
   2B98 18                11456 	.byte	24
   2B99 EE                11457 	.byte	-18
   2B9A FF                11458 	.byte	-1
   2B9B 24                11459 	.byte	36
   2B9C FA                11460 	.byte	-6
   2B9D FF                11461 	.byte	-1
   2B9E E8                11462 	.byte	-24
   2B9F 12                11463 	.byte	18
   2BA0 FF                11464 	.byte	-1
   2BA1 0F                11465 	.byte	15
   2BA2 2A                11466 	.byte	42
   2BA3 00                11467 	.byte	0
   2BA4 CD                11468 	.byte	-51
   2BA5 DC                11469 	.byte	-36
   2BA6 FF                11470 	.byte	-1
   2BA7 0F                11471 	.byte	15
   2BA8 2A                11472 	.byte	42
   2BA9 00                11473 	.byte	0
   2BAA 09                11474 	.byte	9
   2BAB C4                11475 	.byte	-60
   2BAC FF                11476 	.byte	-1
   2BAD 0F                11477 	.byte	15
   2BAE 2A                11478 	.byte	42
   2BAF 00                11479 	.byte	0
   2BB0 15                11480 	.byte	21
   2BB1 D0                11481 	.byte	-48
   2BB2 FF                11482 	.byte	-1
   2BB3 0F                11483 	.byte	15
   2BB4 2A                11484 	.byte	42
   2BB5 00                11485 	.byte	0
   2BB6 E8                11486 	.byte	-24
   2BB7 12                11487 	.byte	18
   2BB8 FF                11488 	.byte	-1
   2BB9 DC                11489 	.byte	-36
   2BBA 06                11490 	.byte	6
   2BBB FF                11491 	.byte	-1
   2BBC 18                11492 	.byte	24
   2BBD EE                11493 	.byte	-18
   2BBE FF                11494 	.byte	-1
   2BBF 24                11495 	.byte	36
   2BC0 FA                11496 	.byte	-6
   2BC1 FF                11497 	.byte	-1
   2BC2 E8                11498 	.byte	-24
   2BC3 12                11499 	.byte	18
   2BC4 01                11500 	.byte	1
                          11501 	.globl _height1FallingBack11
   2BC5                   11502 _height1FallingBack11:
   2BC5 00                11503 	.byte	0
   2BC6 3C                11504 	.byte	60
   2BC7 F4                11505 	.byte	-12
   2BC8 FF                11506 	.byte	-1
   2BC9 09                11507 	.byte	9
   2BCA 27                11508 	.byte	39
   2BCB FF                11509 	.byte	-1
   2BCC DC                11510 	.byte	-36
   2BCD FD                11511 	.byte	-3
   2BCE FF                11512 	.byte	-1
   2BCF F7                11513 	.byte	-9
   2BD0 D9                11514 	.byte	-39
   2BD1 FF                11515 	.byte	-1
   2BD2 24                11516 	.byte	36
   2BD3 03                11517 	.byte	3
   2BD4 FF                11518 	.byte	-1
   2BD5 1B                11519 	.byte	27
   2BD6 EE                11520 	.byte	-18
   2BD7 00                11521 	.byte	0
   2BD8 EE                11522 	.byte	-18
   2BD9 39                11523 	.byte	57
   2BDA FF                11524 	.byte	-1
   2BDB 1B                11525 	.byte	27
   2BDC EE                11526 	.byte	-18
   2BDD 00                11527 	.byte	0
   2BDE C1                11528 	.byte	-63
   2BDF 0F                11529 	.byte	15
   2BE0 FF                11530 	.byte	-1
   2BE1 1E                11531 	.byte	30
   2BE2 EE                11532 	.byte	-18
   2BE3 00                11533 	.byte	0
   2BE4 D9                11534 	.byte	-39
   2BE5 EB                11535 	.byte	-21
   2BE6 FF                11536 	.byte	-1
   2BE7 1E                11537 	.byte	30
   2BE8 EE                11538 	.byte	-18
   2BE9 00                11539 	.byte	0
   2BEA 21                11540 	.byte	33
   2BEB 03                11541 	.byte	3
   2BEC FF                11542 	.byte	-1
   2BED 09                11543 	.byte	9
   2BEE 27                11544 	.byte	39
   2BEF FF                11545 	.byte	-1
   2BF0 DF                11546 	.byte	-33
   2BF1 FD                11547 	.byte	-3
   2BF2 FF                11548 	.byte	-1
   2BF3 F7                11549 	.byte	-9
   2BF4 D9                11550 	.byte	-39
   2BF5 FF                11551 	.byte	-1
   2BF6 21                11552 	.byte	33
   2BF7 03                11553 	.byte	3
   2BF8 01                11554 	.byte	1
                          11555 	.globl _height1FallingFront11
   2BF9                   11556 _height1FallingFront11:
   2BF9 FF                11557 	.byte	-1
   2BFA 09                11558 	.byte	9
   2BFB 2A                11559 	.byte	42
   2BFC FF                11560 	.byte	-1
   2BFD 2A                11561 	.byte	42
   2BFE FD                11562 	.byte	-3
   2BFF FF                11563 	.byte	-1
   2C00 F7                11564 	.byte	-9
   2C01 D9                11565 	.byte	-39
   2C02 FF                11566 	.byte	-1
   2C03 D6                11567 	.byte	-42
   2C04 00                11568 	.byte	0
   2C05 FF                11569 	.byte	-1
   2C06 F1                11570 	.byte	-15
   2C07 12                11571 	.byte	18
   2C08 00                11572 	.byte	0
   2C09 18                11573 	.byte	24
   2C0A 18                11574 	.byte	24
   2C0B FF                11575 	.byte	-1
   2C0C F1                11576 	.byte	-15
   2C0D 12                11577 	.byte	18
   2C0E 00                11578 	.byte	0
   2C0F 39                11579 	.byte	57
   2C10 EB                11580 	.byte	-21
   2C11 FF                11581 	.byte	-1
   2C12 EE                11582 	.byte	-18
   2C13 12                11583 	.byte	18
   2C14 00                11584 	.byte	0
   2C15 09                11585 	.byte	9
   2C16 C7                11586 	.byte	-57
   2C17 FF                11587 	.byte	-1
   2C18 EE                11588 	.byte	-18
   2C19 0F                11589 	.byte	15
   2C1A 00                11590 	.byte	0
   2C1B D9                11591 	.byte	-39
   2C1C 03                11592 	.byte	3
   2C1D FF                11593 	.byte	-1
   2C1E 09                11594 	.byte	9
   2C1F 2A                11595 	.byte	42
   2C20 FF                11596 	.byte	-1
   2C21 27                11597 	.byte	39
   2C22 FD                11598 	.byte	-3
   2C23 FF                11599 	.byte	-1
   2C24 F7                11600 	.byte	-9
   2C25 D6                11601 	.byte	-42
   2C26 FF                11602 	.byte	-1
   2C27 D9                11603 	.byte	-39
   2C28 03                11604 	.byte	3
   2C29 01                11605 	.byte	1
                          11606 	.globl _height2FallingLeft12
   2C2A                   11607 _height2FallingLeft12:
   2C2A FF                11608 	.byte	-1
   2C2B 27                11609 	.byte	39
   2C2C 00                11610 	.byte	0
   2C2D FF                11611 	.byte	-1
   2C2E 18                11612 	.byte	24
   2C2F F1                11613 	.byte	-15
   2C30 FF                11614 	.byte	-1
   2C31 D9                11615 	.byte	-39
   2C32 00                11616 	.byte	0
   2C33 FF                11617 	.byte	-1
   2C34 E8                11618 	.byte	-24
   2C35 0F                11619 	.byte	15
   2C36 FF                11620 	.byte	-1
   2C37 F1                11621 	.byte	-15
   2C38 AF                11622 	.byte	-81
   2C39 00                11623 	.byte	0
   2C3A 36                11624 	.byte	54
   2C3B 51                11625 	.byte	81
   2C3C FF                11626 	.byte	-1
   2C3D EE                11627 	.byte	-18
   2C3E AF                11628 	.byte	-81
   2C3F 00                11629 	.byte	0
   2C40 2A                11630 	.byte	42
   2C41 42                11631 	.byte	66
   2C42 FF                11632 	.byte	-1
   2C43 EE                11633 	.byte	-18
   2C44 AC                11634 	.byte	-84
   2C45 00                11635 	.byte	0
   2C46 EB                11636 	.byte	-21
   2C47 54                11637 	.byte	84
   2C48 FF                11638 	.byte	-1
   2C49 EE                11639 	.byte	-18
   2C4A AC                11640 	.byte	-84
   2C4B 00                11641 	.byte	0
   2C4C EB                11642 	.byte	-21
   2C4D 12                11643 	.byte	18
   2C4E FF                11644 	.byte	-1
   2C4F 24                11645 	.byte	36
   2C50 00                11646 	.byte	0
   2C51 FF                11647 	.byte	-1
   2C52 18                11648 	.byte	24
   2C53 EE                11649 	.byte	-18
   2C54 FF                11650 	.byte	-1
   2C55 D9                11651 	.byte	-39
   2C56 00                11652 	.byte	0
   2C57 FF                11653 	.byte	-1
   2C58 EB                11654 	.byte	-21
   2C59 12                11655 	.byte	18
   2C5A 01                11656 	.byte	1
                          11657 	.globl _height2RisingRight12
   2C5B                   11658 _height2RisingRight12:
   2C5B 00                11659 	.byte	0
   2C5C 12                11660 	.byte	18
   2C5D 54                11661 	.byte	84
   2C5E FF                11662 	.byte	-1
   2C5F 03                11663 	.byte	3
   2C60 2A                11664 	.byte	42
   2C61 FF                11665 	.byte	-1
   2C62 18                11666 	.byte	24
   2C63 EE                11667 	.byte	-18
   2C64 FF                11668 	.byte	-1
   2C65 FD                11669 	.byte	-3
   2C66 D6                11670 	.byte	-42
   2C67 FF                11671 	.byte	-1
   2C68 E8                11672 	.byte	-24
   2C69 12                11673 	.byte	18
   2C6A FF                11674 	.byte	-1
   2C6B 51                11675 	.byte	81
   2C6C 0C                11676 	.byte	12
   2C6D 00                11677 	.byte	0
   2C6E B2                11678 	.byte	-78
   2C6F 1E                11679 	.byte	30
   2C70 FF                11680 	.byte	-1
   2C71 51                11681 	.byte	81
   2C72 0C                11682 	.byte	12
   2C73 00                11683 	.byte	0
   2C74 C7                11684 	.byte	-57
   2C75 E2                11685 	.byte	-30
   2C76 FF                11686 	.byte	-1
   2C77 51                11687 	.byte	81
   2C78 0C                11688 	.byte	12
   2C79 00                11689 	.byte	0
   2C7A AC                11690 	.byte	-84
   2C7B CA                11691 	.byte	-54
   2C7C FF                11692 	.byte	-1
   2C7D 51                11693 	.byte	81
   2C7E 0C                11694 	.byte	12
   2C7F 00                11695 	.byte	0
   2C80 E8                11696 	.byte	-24
   2C81 12                11697 	.byte	18
   2C82 FF                11698 	.byte	-1
   2C83 03                11699 	.byte	3
   2C84 2A                11700 	.byte	42
   2C85 FF                11701 	.byte	-1
   2C86 18                11702 	.byte	24
   2C87 EE                11703 	.byte	-18
   2C88 FF                11704 	.byte	-1
   2C89 FD                11705 	.byte	-3
   2C8A D6                11706 	.byte	-42
   2C8B FF                11707 	.byte	-1
   2C8C E8                11708 	.byte	-24
   2C8D 12                11709 	.byte	18
   2C8E 01                11710 	.byte	1
                          11711 	.globl _height2FallingRight12
   2C8F                   11712 _height2FallingRight12:
   2C8F 00                11713 	.byte	0
   2C90 30                11714 	.byte	48
   2C91 2A                11715 	.byte	42
   2C92 FF                11716 	.byte	-1
   2C93 D9                11717 	.byte	-39
   2C94 00                11718 	.byte	0
   2C95 FF                11719 	.byte	-1
   2C96 18                11720 	.byte	24
   2C97 EE                11721 	.byte	-18
   2C98 FF                11722 	.byte	-1
   2C99 27                11723 	.byte	39
   2C9A 00                11724 	.byte	0
   2C9B FF                11725 	.byte	-1
   2C9C E8                11726 	.byte	-24
   2C9D 12                11727 	.byte	18
   2C9E FF                11728 	.byte	-1
   2C9F 12                11729 	.byte	18
   2CA0 54                11730 	.byte	84
   2CA1 00                11731 	.byte	0
   2CA2 C7                11732 	.byte	-57
   2CA3 AC                11733 	.byte	-84
   2CA4 FF                11734 	.byte	-1
   2CA5 12                11735 	.byte	18
   2CA6 54                11736 	.byte	84
   2CA7 00                11737 	.byte	0
   2CA8 06                11738 	.byte	6
   2CA9 9A                11739 	.byte	-102
   2CAA FF                11740 	.byte	-1
   2CAB 12                11741 	.byte	18
   2CAC 54                11742 	.byte	84
   2CAD 00                11743 	.byte	0
   2CAE 15                11744 	.byte	21
   2CAF AC                11745 	.byte	-84
   2CB0 FF                11746 	.byte	-1
   2CB1 12                11747 	.byte	18
   2CB2 54                11748 	.byte	84
   2CB3 00                11749 	.byte	0
   2CB4 E8                11750 	.byte	-24
   2CB5 12                11751 	.byte	18
   2CB6 FF                11752 	.byte	-1
   2CB7 D9                11753 	.byte	-39
   2CB8 00                11754 	.byte	0
   2CB9 FF                11755 	.byte	-1
   2CBA 18                11756 	.byte	24
   2CBB EE                11757 	.byte	-18
   2CBC FF                11758 	.byte	-1
   2CBD 27                11759 	.byte	39
   2CBE 00                11760 	.byte	0
   2CBF FF                11761 	.byte	-1
   2CC0 E8                11762 	.byte	-24
   2CC1 12                11763 	.byte	18
   2CC2 01                11764 	.byte	1
                          11765 	.globl _height2RisingLeft12
   2CC3                   11766 _height2RisingLeft12:
   2CC3 00                11767 	.byte	0
   2CC4 F4                11768 	.byte	-12
   2CC5 D9                11769 	.byte	-39
   2CC6 FF                11770 	.byte	-1
   2CC7 0C                11771 	.byte	12
   2CC8 27                11772 	.byte	39
   2CC9 FF                11773 	.byte	-1
   2CCA 18                11774 	.byte	24
   2CCB F1                11775 	.byte	-15
   2CCC FF                11776 	.byte	-1
   2CCD F1                11777 	.byte	-15
   2CCE D6                11778 	.byte	-42
   2CCF FF                11779 	.byte	-1
   2CD0 EB                11780 	.byte	-21
   2CD1 12                11781 	.byte	18
   2CD2 FF                11782 	.byte	-1
   2CD3 48                11783 	.byte	72
   2CD4 F4                11784 	.byte	-12
   2CD5 00                11785 	.byte	0
   2CD6 C4                11786 	.byte	-60
   2CD7 33                11787 	.byte	51
   2CD8 FF                11788 	.byte	-1
   2CD9 4B                11789 	.byte	75
   2CDA F7                11790 	.byte	-9
   2CDB 00                11791 	.byte	0
   2CDC CD                11792 	.byte	-51
   2CDD FA                11793 	.byte	-6
   2CDE FF                11794 	.byte	-1
   2CDF 4B                11795 	.byte	75
   2CE0 F4                11796 	.byte	-12
   2CE1 00                11797 	.byte	0
   2CE2 A6                11798 	.byte	-90
   2CE3 E2                11799 	.byte	-30
   2CE4 FF                11800 	.byte	-1
   2CE5 4B                11801 	.byte	75
   2CE6 F4                11802 	.byte	-12
   2CE7 00                11803 	.byte	0
   2CE8 E8                11804 	.byte	-24
   2CE9 12                11805 	.byte	18
   2CEA FF                11806 	.byte	-1
   2CEB 0F                11807 	.byte	15
   2CEC 2A                11808 	.byte	42
   2CED FF                11809 	.byte	-1
   2CEE 18                11810 	.byte	24
   2CEF EE                11811 	.byte	-18
   2CF0 FF                11812 	.byte	-1
   2CF1 F1                11813 	.byte	-15
   2CF2 D6                11814 	.byte	-42
   2CF3 FF                11815 	.byte	-1
   2CF4 E8                11816 	.byte	-24
   2CF5 12                11817 	.byte	18
   2CF6 01                11818 	.byte	1
                          11819 	.globl _height2FallingBack12
   2CF7                   11820 _height2FallingBack12:
   2CF7 00                11821 	.byte	0
   2CF8 3F                11822 	.byte	63
   2CF9 F1                11823 	.byte	-15
   2CFA FF                11824 	.byte	-1
   2CFB 09                11825 	.byte	9
   2CFC 27                11826 	.byte	39
   2CFD FF                11827 	.byte	-1
   2CFE D9                11828 	.byte	-39
   2CFF 00                11829 	.byte	0
   2D00 FF                11830 	.byte	-1
   2D01 F7                11831 	.byte	-9
   2D02 D9                11832 	.byte	-39
   2D03 FF                11833 	.byte	-1
   2D04 27                11834 	.byte	39
   2D05 00                11835 	.byte	0
   2D06 FF                11836 	.byte	-1
   2D07 30                11837 	.byte	48
   2D08 DC                11838 	.byte	-36
   2D09 00                11839 	.byte	0
   2D0A D9                11840 	.byte	-39
   2D0B 4B                11841 	.byte	75
   2D0C FF                11842 	.byte	-1
   2D0D 30                11843 	.byte	48
   2D0E DF                11844 	.byte	-33
   2D0F 00                11845 	.byte	0
   2D10 A9                11846 	.byte	-87
   2D11 21                11847 	.byte	33
   2D12 FF                11848 	.byte	-1
   2D13 30                11849 	.byte	48
   2D14 DF                11850 	.byte	-33
   2D15 00                11851 	.byte	0
   2D16 C7                11852 	.byte	-57
   2D17 FA                11853 	.byte	-6
   2D18 FF                11854 	.byte	-1
   2D19 30                11855 	.byte	48
   2D1A DC                11856 	.byte	-36
   2D1B 00                11857 	.byte	0
   2D1C 27                11858 	.byte	39
   2D1D 00                11859 	.byte	0
   2D1E FF                11860 	.byte	-1
   2D1F 09                11861 	.byte	9
   2D20 2A                11862 	.byte	42
   2D21 FF                11863 	.byte	-1
   2D22 D9                11864 	.byte	-39
   2D23 00                11865 	.byte	0
   2D24 FF                11866 	.byte	-1
   2D25 F7                11867 	.byte	-9
   2D26 D6                11868 	.byte	-42
   2D27 FF                11869 	.byte	-1
   2D28 27                11870 	.byte	39
   2D29 00                11871 	.byte	0
   2D2A 01                11872 	.byte	1
                          11873 	.globl _height2RisingFront12
   2D2B                   11874 _height2RisingFront12:
   2D2B 00                11875 	.byte	0
   2D2C E5                11876 	.byte	-27
   2D2D 12                11877 	.byte	18
   2D2E FF                11878 	.byte	-1
   2D2F 09                11879 	.byte	9
   2D30 2A                11880 	.byte	42
   2D31 FF                11881 	.byte	-1
   2D32 1B                11882 	.byte	27
   2D33 EE                11883 	.byte	-18
   2D34 FF                11884 	.byte	-1
   2D35 F7                11885 	.byte	-9
   2D36 D6                11886 	.byte	-42
   2D37 FF                11887 	.byte	-1
   2D38 E5                11888 	.byte	-27
   2D39 12                11889 	.byte	18
   2D3A FF                11890 	.byte	-1
   2D3B 45                11891 	.byte	69
   2D3C 06                11892 	.byte	6
   2D3D 00                11893 	.byte	0
   2D3E C4                11894 	.byte	-60
   2D3F 24                11895 	.byte	36
   2D40 FF                11896 	.byte	-1
   2D41 45                11897 	.byte	69
   2D42 06                11898 	.byte	6
   2D43 00                11899 	.byte	0
   2D44 D6                11900 	.byte	-42
   2D45 E8                11901 	.byte	-24
   2D46 FF                11902 	.byte	-1
   2D47 48                11903 	.byte	72
   2D48 06                11904 	.byte	6
   2D49 00                11905 	.byte	0
   2D4A AF                11906 	.byte	-81
   2D4B D0                11907 	.byte	-48
   2D4C FF                11908 	.byte	-1
   2D4D 48                11909 	.byte	72
   2D4E 06                11910 	.byte	6
   2D4F 00                11911 	.byte	0
   2D50 E2                11912 	.byte	-30
   2D51 12                11913 	.byte	18
   2D52 FF                11914 	.byte	-1
   2D53 09                11915 	.byte	9
   2D54 2A                11916 	.byte	42
   2D55 FF                11917 	.byte	-1
   2D56 1E                11918 	.byte	30
   2D57 EE                11919 	.byte	-18
   2D58 FF                11920 	.byte	-1
   2D59 F7                11921 	.byte	-9
   2D5A D6                11922 	.byte	-42
   2D5B FF                11923 	.byte	-1
   2D5C E2                11924 	.byte	-30
   2D5D 12                11925 	.byte	18
   2D5E 01                11926 	.byte	1
                          11927 	.globl _height2FallingFront12
   2D5F                   11928 _height2FallingFront12:
   2D5F FF                11929 	.byte	-1
   2D60 09                11930 	.byte	9
   2D61 2A                11931 	.byte	42
   2D62 FF                11932 	.byte	-1
   2D63 27                11933 	.byte	39
   2D64 00                11934 	.byte	0
   2D65 FF                11935 	.byte	-1
   2D66 F7                11936 	.byte	-9
   2D67 D6                11937 	.byte	-42
   2D68 FF                11938 	.byte	-1
   2D69 D9                11939 	.byte	-39
   2D6A 00                11940 	.byte	0
   2D6B FF                11941 	.byte	-1
   2D6C D3                11942 	.byte	-45
   2D6D 24                11943 	.byte	36
   2D6E 00                11944 	.byte	0
   2D6F 36                11945 	.byte	54
   2D70 06                11946 	.byte	6
   2D71 FF                11947 	.byte	-1
   2D72 D3                11948 	.byte	-45
   2D73 24                11949 	.byte	36
   2D74 00                11950 	.byte	0
   2D75 54                11951 	.byte	84
   2D76 DC                11952 	.byte	-36
   2D77 FF                11953 	.byte	-1
   2D78 D0                11954 	.byte	-48
   2D79 24                11955 	.byte	36
   2D7A 00                11956 	.byte	0
   2D7B 27                11957 	.byte	39
   2D7C B2                11958 	.byte	-78
   2D7D FF                11959 	.byte	-1
   2D7E D3                11960 	.byte	-45
   2D7F 24                11961 	.byte	36
   2D80 00                11962 	.byte	0
   2D81 D9                11963 	.byte	-39
   2D82 00                11964 	.byte	0
   2D83 FF                11965 	.byte	-1
   2D84 09                11966 	.byte	9
   2D85 2A                11967 	.byte	42
   2D86 FF                11968 	.byte	-1
   2D87 24                11969 	.byte	36
   2D88 00                11970 	.byte	0
   2D89 FF                11971 	.byte	-1
   2D8A FA                11972 	.byte	-6
   2D8B D6                11973 	.byte	-42
   2D8C FF                11974 	.byte	-1
   2D8D D9                11975 	.byte	-39
   2D8E 00                11976 	.byte	0
   2D8F 01                11977 	.byte	1
                          11978 	.globl _height2RisingBack12
   2D90                   11979 _height2RisingBack12:
   2D90 00                11980 	.byte	0
   2D91 30                11981 	.byte	48
   2D92 DF                11982 	.byte	-33
   2D93 FF                11983 	.byte	-1
   2D94 09                11984 	.byte	9
   2D95 27                11985 	.byte	39
   2D96 FF                11986 	.byte	-1
   2D97 12                11987 	.byte	18
   2D98 F1                11988 	.byte	-15
   2D99 FF                11989 	.byte	-1
   2D9A F7                11990 	.byte	-9
   2D9B D6                11991 	.byte	-42
   2D9C FF                11992 	.byte	-1
   2D9D EE                11993 	.byte	-18
   2D9E 12                11994 	.byte	18
   2D9F FF                11995 	.byte	-1
   2DA0 54                11996 	.byte	84
   2DA1 FA                11997 	.byte	-6
   2DA2 00                11998 	.byte	0
   2DA3 B5                11999 	.byte	-75
   2DA4 2D                12000 	.byte	45
   2DA5 FF                12001 	.byte	-1
   2DA6 54                12002 	.byte	84
   2DA7 FA                12003 	.byte	-6
   2DA8 00                12004 	.byte	0
   2DA9 BE                12005 	.byte	-66
   2DAA F7                12006 	.byte	-9
   2DAB FF                12007 	.byte	-1
   2DAC 54                12008 	.byte	84
   2DAD FA                12009 	.byte	-6
   2DAE 00                12010 	.byte	0
   2DAF A3                12011 	.byte	-93
   2DB0 DC                12012 	.byte	-36
   2DB1 FF                12013 	.byte	-1
   2DB2 54                12014 	.byte	84
   2DB3 FA                12015 	.byte	-6
   2DB4 00                12016 	.byte	0
   2DB5 EE                12017 	.byte	-18
   2DB6 12                12018 	.byte	18
   2DB7 FF                12019 	.byte	-1
   2DB8 09                12020 	.byte	9
   2DB9 27                12021 	.byte	39
   2DBA FF                12022 	.byte	-1
   2DBB 12                12023 	.byte	18
   2DBC F1                12024 	.byte	-15
   2DBD FF                12025 	.byte	-1
   2DBE F7                12026 	.byte	-9
   2DBF D6                12027 	.byte	-42
   2DC0 FF                12028 	.byte	-1
   2DC1 EE                12029 	.byte	-18
   2DC2 12                12030 	.byte	18
   2DC3 01                12031 	.byte	1
                          12032 	.globl _depth2RollingLeft12
   2DC4                   12033 _depth2RollingLeft12:
   2DC4 FF                12034 	.byte	-1
   2DC5 27                12035 	.byte	39
   2DC6 00                12036 	.byte	0
   2DC7 FF                12037 	.byte	-1
   2DC8 30                12038 	.byte	48
   2DC9 DF                12039 	.byte	-33
   2DCA FF                12040 	.byte	-1
   2DCB D9                12041 	.byte	-39
   2DCC 00                12042 	.byte	0
   2DCD FF                12043 	.byte	-1
   2DCE D0                12044 	.byte	-48
   2DCF 21                12045 	.byte	33
   2DD0 FF                12046 	.byte	-1
   2DD1 FA                12047 	.byte	-6
   2DD2 D9                12048 	.byte	-39
   2DD3 00                12049 	.byte	0
   2DD4 2D                12050 	.byte	45
   2DD5 27                12051 	.byte	39
   2DD6 FF                12052 	.byte	-1
   2DD7 F7                12053 	.byte	-9
   2DD8 D9                12054 	.byte	-39
   2DD9 00                12055 	.byte	0
   2DDA 39                12056 	.byte	57
   2DDB 06                12057 	.byte	6
   2DDC FF                12058 	.byte	-1
   2DDD F7                12059 	.byte	-9
   2DDE D6                12060 	.byte	-42
   2DDF 00                12061 	.byte	0
   2DE0 E2                12062 	.byte	-30
   2DE1 2A                12063 	.byte	42
   2DE2 FF                12064 	.byte	-1
   2DE3 F7                12065 	.byte	-9
   2DE4 D6                12066 	.byte	-42
   2DE5 00                12067 	.byte	0
   2DE6 D3                12068 	.byte	-45
   2DE7 24                12069 	.byte	36
   2DE8 FF                12070 	.byte	-1
   2DE9 24                12071 	.byte	36
   2DEA 00                12072 	.byte	0
   2DEB FF                12073 	.byte	-1
   2DEC 30                12074 	.byte	48
   2DED DC                12075 	.byte	-36
   2DEE FF                12076 	.byte	-1
   2DEF D9                12077 	.byte	-39
   2DF0 00                12078 	.byte	0
   2DF1 FF                12079 	.byte	-1
   2DF2 D3                12080 	.byte	-45
   2DF3 24                12081 	.byte	36
   2DF4 01                12082 	.byte	1
                          12083 	.globl _depth2RollingRight12
   2DF5                   12084 _depth2RollingRight12:
   2DF5 00                12085 	.byte	0
   2DF6 30                12086 	.byte	48
   2DF7 2A                12087 	.byte	42
   2DF8 FF                12088 	.byte	-1
   2DF9 D9                12089 	.byte	-39
   2DFA 00                12090 	.byte	0
   2DFB FF                12091 	.byte	-1
   2DFC 30                12092 	.byte	48
   2DFD DC                12093 	.byte	-36
   2DFE FF                12094 	.byte	-1
   2DFF 27                12095 	.byte	39
   2E00 00                12096 	.byte	0
   2E01 FF                12097 	.byte	-1
   2E02 D0                12098 	.byte	-48
   2E03 24                12099 	.byte	36
   2E04 FF                12100 	.byte	-1
   2E05 09                12101 	.byte	9
   2E06 2A                12102 	.byte	42
   2E07 00                12103 	.byte	0
   2E08 D0                12104 	.byte	-48
   2E09 D6                12105 	.byte	-42
   2E0A FF                12106 	.byte	-1
   2E0B 09                12107 	.byte	9
   2E0C 2A                12108 	.byte	42
   2E0D 00                12109 	.byte	0
   2E0E 27                12110 	.byte	39
   2E0F B2                12111 	.byte	-78
   2E10 FF                12112 	.byte	-1
   2E11 09                12113 	.byte	9
   2E12 2A                12114 	.byte	42
   2E13 00                12115 	.byte	0
   2E14 1E                12116 	.byte	30
   2E15 D6                12117 	.byte	-42
   2E16 FF                12118 	.byte	-1
   2E17 09                12119 	.byte	9
   2E18 2A                12120 	.byte	42
   2E19 00                12121 	.byte	0
   2E1A D0                12122 	.byte	-48
   2E1B 24                12123 	.byte	36
   2E1C FF                12124 	.byte	-1
   2E1D D9                12125 	.byte	-39
   2E1E 00                12126 	.byte	0
   2E1F FF                12127 	.byte	-1
   2E20 30                12128 	.byte	48
   2E21 DC                12129 	.byte	-36
   2E22 FF                12130 	.byte	-1
   2E23 27                12131 	.byte	39
   2E24 00                12132 	.byte	0
   2E25 FF                12133 	.byte	-1
   2E26 D0                12134 	.byte	-48
   2E27 24                12135 	.byte	36
   2E28 01                12136 	.byte	1
                          12137 	.globl _width2RollingFront12
   2E29                   12138 _width2RollingFront12:
   2E29 FF                12139 	.byte	-1
   2E2A 12                12140 	.byte	18
   2E2B 54                12141 	.byte	84
   2E2C FF                12142 	.byte	-1
   2E2D 27                12143 	.byte	39
   2E2E 00                12144 	.byte	0
   2E2F FF                12145 	.byte	-1
   2E30 EE                12146 	.byte	-18
   2E31 AC                12147 	.byte	-84
   2E32 FF                12148 	.byte	-1
   2E33 D9                12149 	.byte	-39
   2E34 00                12150 	.byte	0
   2E35 FF                12151 	.byte	-1
   2E36 EB                12152 	.byte	-21
   2E37 12                12153 	.byte	18
   2E38 00                12154 	.byte	0
   2E39 27                12155 	.byte	39
   2E3A 42                12156 	.byte	66
   2E3B FF                12157 	.byte	-1
   2E3C EB                12158 	.byte	-21
   2E3D 12                12159 	.byte	18
   2E3E 00                12160 	.byte	0
   2E3F 3C                12161 	.byte	60
   2E40 EE                12162 	.byte	-18
   2E41 FF                12163 	.byte	-1
   2E42 E8                12164 	.byte	-24
   2E43 12                12165 	.byte	18
   2E44 00                12166 	.byte	0
   2E45 06                12167 	.byte	6
   2E46 9A                12168 	.byte	-102
   2E47 FF                12169 	.byte	-1
   2E48 E8                12170 	.byte	-24
   2E49 12                12171 	.byte	18
   2E4A 00                12172 	.byte	0
   2E4B DC                12173 	.byte	-36
   2E4C 00                12174 	.byte	0
   2E4D FF                12175 	.byte	-1
   2E4E 12                12176 	.byte	18
   2E4F 54                12177 	.byte	84
   2E50 FF                12178 	.byte	-1
   2E51 24                12179 	.byte	36
   2E52 00                12180 	.byte	0
   2E53 FF                12181 	.byte	-1
   2E54 EE                12182 	.byte	-18
   2E55 AC                12183 	.byte	-84
   2E56 FF                12184 	.byte	-1
   2E57 DC                12185 	.byte	-36
   2E58 00                12186 	.byte	0
   2E59 01                12187 	.byte	1
                          12188 	.globl _width2RollingBack12
   2E5A                   12189 _width2RollingBack12:
   2E5A 00                12190 	.byte	0
   2E5B 3F                12191 	.byte	63
   2E5C F1                12192 	.byte	-15
   2E5D FF                12193 	.byte	-1
   2E5E 12                12194 	.byte	18
   2E5F 51                12195 	.byte	81
   2E60 FF                12196 	.byte	-1
   2E61 D9                12197 	.byte	-39
   2E62 00                12198 	.byte	0
   2E63 FF                12199 	.byte	-1
   2E64 EE                12200 	.byte	-18
   2E65 AF                12201 	.byte	-81
   2E66 FF                12202 	.byte	-1
   2E67 27                12203 	.byte	39
   2E68 00                12204 	.byte	0
   2E69 FF                12205 	.byte	-1
   2E6A 18                12206 	.byte	24
   2E6B EE                12207 	.byte	-18
   2E6C 00                12208 	.byte	0
   2E6D FA                12209 	.byte	-6
   2E6E 63                12210 	.byte	99
   2E6F FF                12211 	.byte	-1
   2E70 18                12212 	.byte	24
   2E71 EE                12213 	.byte	-18
   2E72 00                12214 	.byte	0
   2E73 C1                12215 	.byte	-63
   2E74 12                12216 	.byte	18
   2E75 FF                12217 	.byte	-1
   2E76 18                12218 	.byte	24
   2E77 EE                12219 	.byte	-18
   2E78 00                12220 	.byte	0
   2E79 D6                12221 	.byte	-42
   2E7A C1                12222 	.byte	-63
   2E7B FF                12223 	.byte	-1
   2E7C 18                12224 	.byte	24
   2E7D EE                12225 	.byte	-18
   2E7E 00                12226 	.byte	0
   2E7F 27                12227 	.byte	39
   2E80 00                12228 	.byte	0
   2E81 FF                12229 	.byte	-1
   2E82 12                12230 	.byte	18
   2E83 51                12231 	.byte	81
   2E84 FF                12232 	.byte	-1
   2E85 D9                12233 	.byte	-39
   2E86 00                12234 	.byte	0
   2E87 FF                12235 	.byte	-1
   2E88 EE                12236 	.byte	-18
   2E89 AF                12237 	.byte	-81
   2E8A FF                12238 	.byte	-1
   2E8B 27                12239 	.byte	39
   2E8C 00                12240 	.byte	0
   2E8D 01                12241 	.byte	1
                          12242 	.globl _height1FallingLeft12
   2E8E                   12243 _height1FallingLeft12:
   2E8E FF                12244 	.byte	-1
   2E8F 27                12245 	.byte	39
   2E90 00                12246 	.byte	0
   2E91 FF                12247 	.byte	-1
   2E92 18                12248 	.byte	24
   2E93 F1                12249 	.byte	-15
   2E94 FF                12250 	.byte	-1
   2E95 D9                12251 	.byte	-39
   2E96 00                12252 	.byte	0
   2E97 FF                12253 	.byte	-1
   2E98 E8                12254 	.byte	-24
   2E99 0F                12255 	.byte	15
   2E9A FF                12256 	.byte	-1
   2E9B FA                12257 	.byte	-6
   2E9C D9                12258 	.byte	-39
   2E9D 00                12259 	.byte	0
   2E9E 2D                12260 	.byte	45
   2E9F 27                12261 	.byte	39
   2EA0 FF                12262 	.byte	-1
   2EA1 F7                12263 	.byte	-9
   2EA2 D9                12264 	.byte	-39
   2EA3 00                12265 	.byte	0
   2EA4 21                12266 	.byte	33
   2EA5 18                12267 	.byte	24
   2EA6 FF                12268 	.byte	-1
   2EA7 F7                12269 	.byte	-9
   2EA8 D6                12270 	.byte	-42
   2EA9 00                12271 	.byte	0
   2EAA E2                12272 	.byte	-30
   2EAB 2A                12273 	.byte	42
   2EAC FF                12274 	.byte	-1
   2EAD F7                12275 	.byte	-9
   2EAE D6                12276 	.byte	-42
   2EAF 00                12277 	.byte	0
   2EB0 EB                12278 	.byte	-21
   2EB1 12                12279 	.byte	18
   2EB2 FF                12280 	.byte	-1
   2EB3 24                12281 	.byte	36
   2EB4 00                12282 	.byte	0
   2EB5 FF                12283 	.byte	-1
   2EB6 18                12284 	.byte	24
   2EB7 EE                12285 	.byte	-18
   2EB8 FF                12286 	.byte	-1
   2EB9 D9                12287 	.byte	-39
   2EBA 00                12288 	.byte	0
   2EBB FF                12289 	.byte	-1
   2EBC EB                12290 	.byte	-21
   2EBD 12                12291 	.byte	18
   2EBE 01                12292 	.byte	1
                          12293 	.globl _height1FallingRight12
   2EBF                   12294 _height1FallingRight12:
   2EBF 00                12295 	.byte	0
   2EC0 30                12296 	.byte	48
   2EC1 2A                12297 	.byte	42
   2EC2 FF                12298 	.byte	-1
   2EC3 D9                12299 	.byte	-39
   2EC4 00                12300 	.byte	0
   2EC5 FF                12301 	.byte	-1
   2EC6 18                12302 	.byte	24
   2EC7 EE                12303 	.byte	-18
   2EC8 FF                12304 	.byte	-1
   2EC9 27                12305 	.byte	39
   2ECA 00                12306 	.byte	0
   2ECB FF                12307 	.byte	-1
   2ECC E8                12308 	.byte	-24
   2ECD 12                12309 	.byte	18
   2ECE FF                12310 	.byte	-1
   2ECF 09                12311 	.byte	9
   2ED0 2A                12312 	.byte	42
   2ED1 00                12313 	.byte	0
   2ED2 D0                12314 	.byte	-48
   2ED3 D6                12315 	.byte	-42
   2ED4 FF                12316 	.byte	-1
   2ED5 09                12317 	.byte	9
   2ED6 2A                12318 	.byte	42
   2ED7 00                12319 	.byte	0
   2ED8 0F                12320 	.byte	15
   2ED9 C4                12321 	.byte	-60
   2EDA FF                12322 	.byte	-1
   2EDB 09                12323 	.byte	9
   2EDC 2A                12324 	.byte	42
   2EDD 00                12325 	.byte	0
   2EDE 1E                12326 	.byte	30
   2EDF D6                12327 	.byte	-42
   2EE0 FF                12328 	.byte	-1
   2EE1 09                12329 	.byte	9
   2EE2 2A                12330 	.byte	42
   2EE3 00                12331 	.byte	0
   2EE4 E8                12332 	.byte	-24
   2EE5 12                12333 	.byte	18
   2EE6 FF                12334 	.byte	-1
   2EE7 D9                12335 	.byte	-39
   2EE8 00                12336 	.byte	0
   2EE9 FF                12337 	.byte	-1
   2EEA 18                12338 	.byte	24
   2EEB EE                12339 	.byte	-18
   2EEC FF                12340 	.byte	-1
   2EED 27                12341 	.byte	39
   2EEE 00                12342 	.byte	0
   2EEF FF                12343 	.byte	-1
   2EF0 E8                12344 	.byte	-24
   2EF1 12                12345 	.byte	18
   2EF2 01                12346 	.byte	1
                          12347 	.globl _height1FallingBack12
   2EF3                   12348 _height1FallingBack12:
   2EF3 00                12349 	.byte	0
   2EF4 3F                12350 	.byte	63
   2EF5 F1                12351 	.byte	-15
   2EF6 FF                12352 	.byte	-1
   2EF7 09                12353 	.byte	9
   2EF8 27                12354 	.byte	39
   2EF9 FF                12355 	.byte	-1
   2EFA D9                12356 	.byte	-39
   2EFB 00                12357 	.byte	0
   2EFC FF                12358 	.byte	-1
   2EFD F7                12359 	.byte	-9
   2EFE D9                12360 	.byte	-39
   2EFF FF                12361 	.byte	-1
   2F00 27                12362 	.byte	39
   2F01 00                12363 	.byte	0
   2F02 FF                12364 	.byte	-1
   2F03 18                12365 	.byte	24
   2F04 EE                12366 	.byte	-18
   2F05 00                12367 	.byte	0
   2F06 F1                12368 	.byte	-15
   2F07 39                12369 	.byte	57
   2F08 FF                12370 	.byte	-1
   2F09 18                12371 	.byte	24
   2F0A EE                12372 	.byte	-18
   2F0B 00                12373 	.byte	0
   2F0C C1                12374 	.byte	-63
   2F0D 12                12375 	.byte	18
   2F0E FF                12376 	.byte	-1
   2F0F 18                12377 	.byte	24
   2F10 EE                12378 	.byte	-18
   2F11 00                12379 	.byte	0
   2F12 DF                12380 	.byte	-33
   2F13 EB                12381 	.byte	-21
   2F14 FF                12382 	.byte	-1
   2F15 18                12383 	.byte	24
   2F16 EE                12384 	.byte	-18
   2F17 00                12385 	.byte	0
   2F18 27                12386 	.byte	39
   2F19 00                12387 	.byte	0
   2F1A FF                12388 	.byte	-1
   2F1B 09                12389 	.byte	9
   2F1C 27                12390 	.byte	39
   2F1D FF                12391 	.byte	-1
   2F1E D9                12392 	.byte	-39
   2F1F 00                12393 	.byte	0
   2F20 FF                12394 	.byte	-1
   2F21 F7                12395 	.byte	-9
   2F22 D9                12396 	.byte	-39
   2F23 FF                12397 	.byte	-1
   2F24 27                12398 	.byte	39
   2F25 00                12399 	.byte	0
   2F26 01                12400 	.byte	1
                          12401 	.globl _height1FallingFront12
   2F27                   12402 _height1FallingFront12:
   2F27 FF                12403 	.byte	-1
   2F28 09                12404 	.byte	9
   2F29 2A                12405 	.byte	42
   2F2A FF                12406 	.byte	-1
   2F2B 27                12407 	.byte	39
   2F2C 00                12408 	.byte	0
   2F2D FF                12409 	.byte	-1
   2F2E F7                12410 	.byte	-9
   2F2F D6                12411 	.byte	-42
   2F30 FF                12412 	.byte	-1
   2F31 D9                12413 	.byte	-39
   2F32 00                12414 	.byte	0
   2F33 FF                12415 	.byte	-1
   2F34 EB                12416 	.byte	-21
   2F35 12                12417 	.byte	18
   2F36 00                12418 	.byte	0
   2F37 1E                12419 	.byte	30
   2F38 18                12420 	.byte	24
   2F39 FF                12421 	.byte	-1
   2F3A EB                12422 	.byte	-21
   2F3B 12                12423 	.byte	18
   2F3C 00                12424 	.byte	0
   2F3D 3C                12425 	.byte	60
   2F3E EE                12426 	.byte	-18
   2F3F FF                12427 	.byte	-1
   2F40 E8                12428 	.byte	-24
   2F41 12                12429 	.byte	18
   2F42 00                12430 	.byte	0
   2F43 0F                12431 	.byte	15
   2F44 C4                12432 	.byte	-60
   2F45 FF                12433 	.byte	-1
   2F46 E8                12434 	.byte	-24
   2F47 12                12435 	.byte	18
   2F48 00                12436 	.byte	0
   2F49 DC                12437 	.byte	-36
   2F4A 00                12438 	.byte	0
   2F4B FF                12439 	.byte	-1
   2F4C 09                12440 	.byte	9
   2F4D 2A                12441 	.byte	42
   2F4E FF                12442 	.byte	-1
   2F4F 24                12443 	.byte	36
   2F50 00                12444 	.byte	0
   2F51 FF                12445 	.byte	-1
   2F52 F7                12446 	.byte	-9
   2F53 D6                12447 	.byte	-42
   2F54 FF                12448 	.byte	-1
   2F55 DC                12449 	.byte	-36
   2F56 00                12450 	.byte	0
   2F57 01                12451 	.byte	1
                          12452 	.globl _height2FallingLeft
                          12453 	.area	.text
   2F58                   12454 _height2FallingLeft:
   2F58 06 14             12455 	.word	_height2FallingLeft0
   2F5A 09 30             12456 	.word	_height2FallingLeft1
   2F5C 0C 5E             12457 	.word	_height2FallingLeft2
   2F5E 0F 8C             12458 	.word	_height2FallingLeft3
   2F60 12 BA             12459 	.word	_height2FallingLeft4
   2F62 15 E8             12460 	.word	_height2FallingLeft5
   2F64 19 16             12461 	.word	_height2FallingLeft6
   2F66 1C 44             12462 	.word	_height2FallingLeft7
   2F68 1F 72             12463 	.word	_height2FallingLeft8
   2F6A 22 A0             12464 	.word	_height2FallingLeft9
   2F6C 25 CE             12465 	.word	_height2FallingLeft10
   2F6E 28 FC             12466 	.word	_height2FallingLeft11
                          12467 	.globl _height2RisingRight
   2F70                   12468 _height2RisingRight:
   2F70 06 45             12469 	.word	_height2RisingRight0
   2F72 09 61             12470 	.word	_height2RisingRight1
   2F74 0C 8F             12471 	.word	_height2RisingRight2
   2F76 0F BD             12472 	.word	_height2RisingRight3
   2F78 12 EB             12473 	.word	_height2RisingRight4
   2F7A 16 19             12474 	.word	_height2RisingRight5
   2F7C 19 47             12475 	.word	_height2RisingRight6
   2F7E 1C 75             12476 	.word	_height2RisingRight7
   2F80 1F A3             12477 	.word	_height2RisingRight8
   2F82 22 D1             12478 	.word	_height2RisingRight9
   2F84 25 FF             12479 	.word	_height2RisingRight10
   2F86 29 2D             12480 	.word	_height2RisingRight11
                          12481 	.globl _height2FallingRight
   2F88                   12482 _height2FallingRight:
   2F88 06 79             12483 	.word	_height2FallingRight0
   2F8A 09 95             12484 	.word	_height2FallingRight1
   2F8C 0C C3             12485 	.word	_height2FallingRight2
   2F8E 0F F1             12486 	.word	_height2FallingRight3
   2F90 13 1F             12487 	.word	_height2FallingRight4
   2F92 16 4D             12488 	.word	_height2FallingRight5
   2F94 19 7B             12489 	.word	_height2FallingRight6
   2F96 1C A9             12490 	.word	_height2FallingRight7
   2F98 1F D7             12491 	.word	_height2FallingRight8
   2F9A 23 05             12492 	.word	_height2FallingRight9
   2F9C 26 33             12493 	.word	_height2FallingRight10
   2F9E 29 61             12494 	.word	_height2FallingRight11
                          12495 	.globl _height2RisingLeft
   2FA0                   12496 _height2RisingLeft:
   2FA0 06 AA             12497 	.word	_height2RisingLeft0
   2FA2 09 C9             12498 	.word	_height2RisingLeft1
   2FA4 0C F7             12499 	.word	_height2RisingLeft2
   2FA6 10 25             12500 	.word	_height2RisingLeft3
   2FA8 13 53             12501 	.word	_height2RisingLeft4
   2FAA 16 81             12502 	.word	_height2RisingLeft5
   2FAC 19 AF             12503 	.word	_height2RisingLeft6
   2FAE 1C DD             12504 	.word	_height2RisingLeft7
   2FB0 20 0B             12505 	.word	_height2RisingLeft8
   2FB2 23 39             12506 	.word	_height2RisingLeft9
   2FB4 26 67             12507 	.word	_height2RisingLeft10
   2FB6 29 95             12508 	.word	_height2RisingLeft11
                          12509 	.globl _height2FallingBack
   2FB8                   12510 _height2FallingBack:
   2FB8 06 DE             12511 	.word	_height2FallingBack0
   2FBA 09 FD             12512 	.word	_height2FallingBack1
   2FBC 0D 2B             12513 	.word	_height2FallingBack2
   2FBE 10 59             12514 	.word	_height2FallingBack3
   2FC0 13 87             12515 	.word	_height2FallingBack4
   2FC2 16 B5             12516 	.word	_height2FallingBack5
   2FC4 19 E3             12517 	.word	_height2FallingBack6
   2FC6 1D 11             12518 	.word	_height2FallingBack7
   2FC8 20 3F             12519 	.word	_height2FallingBack8
   2FCA 23 6D             12520 	.word	_height2FallingBack9
   2FCC 26 9B             12521 	.word	_height2FallingBack10
   2FCE 29 C9             12522 	.word	_height2FallingBack11
                          12523 	.globl _height2RisingFront
   2FD0                   12524 _height2RisingFront:
   2FD0 07 0F             12525 	.word	_height2RisingFront0
   2FD2 0A 31             12526 	.word	_height2RisingFront1
   2FD4 0D 5F             12527 	.word	_height2RisingFront2
   2FD6 10 8D             12528 	.word	_height2RisingFront3
   2FD8 13 BB             12529 	.word	_height2RisingFront4
   2FDA 16 E9             12530 	.word	_height2RisingFront5
   2FDC 1A 17             12531 	.word	_height2RisingFront6
   2FDE 1D 45             12532 	.word	_height2RisingFront7
   2FE0 20 73             12533 	.word	_height2RisingFront8
   2FE2 23 A1             12534 	.word	_height2RisingFront9
   2FE4 26 CF             12535 	.word	_height2RisingFront10
   2FE6 29 FD             12536 	.word	_height2RisingFront11
                          12537 	.globl _height2FallingFront
   2FE8                   12538 _height2FallingFront:
   2FE8 07 43             12539 	.word	_height2FallingFront0
   2FEA 0A 65             12540 	.word	_height2FallingFront1
   2FEC 0D 93             12541 	.word	_height2FallingFront2
   2FEE 10 C1             12542 	.word	_height2FallingFront3
   2FF0 13 EF             12543 	.word	_height2FallingFront4
   2FF2 17 1D             12544 	.word	_height2FallingFront5
   2FF4 1A 4B             12545 	.word	_height2FallingFront6
   2FF6 1D 79             12546 	.word	_height2FallingFront7
   2FF8 20 A7             12547 	.word	_height2FallingFront8
   2FFA 23 D5             12548 	.word	_height2FallingFront9
   2FFC 27 03             12549 	.word	_height2FallingFront10
   2FFE 2A 31             12550 	.word	_height2FallingFront11
                          12551 	.globl _height2RisingBack
   3000                   12552 _height2RisingBack:
   3000 07 74             12553 	.word	_height2RisingBack0
   3002 0A 96             12554 	.word	_height2RisingBack1
   3004 0D C4             12555 	.word	_height2RisingBack2
   3006 10 F2             12556 	.word	_height2RisingBack3
   3008 14 20             12557 	.word	_height2RisingBack4
   300A 17 4E             12558 	.word	_height2RisingBack5
   300C 1A 7C             12559 	.word	_height2RisingBack6
   300E 1D AA             12560 	.word	_height2RisingBack7
   3010 20 D8             12561 	.word	_height2RisingBack8
   3012 24 06             12562 	.word	_height2RisingBack9
   3014 27 34             12563 	.word	_height2RisingBack10
   3016 2A 62             12564 	.word	_height2RisingBack11
                          12565 	.globl _depth2RollingLeft
   3018                   12566 _depth2RollingLeft:
   3018 07 A8             12567 	.word	_depth2RollingLeft0
   301A 0A CA             12568 	.word	_depth2RollingLeft1
   301C 0D F8             12569 	.word	_depth2RollingLeft2
   301E 11 26             12570 	.word	_depth2RollingLeft3
   3020 14 54             12571 	.word	_depth2RollingLeft4
   3022 17 82             12572 	.word	_depth2RollingLeft5
   3024 1A B0             12573 	.word	_depth2RollingLeft6
   3026 1D DE             12574 	.word	_depth2RollingLeft7
   3028 21 0C             12575 	.word	_depth2RollingLeft8
   302A 24 3A             12576 	.word	_depth2RollingLeft9
   302C 27 68             12577 	.word	_depth2RollingLeft10
   302E 2A 96             12578 	.word	_depth2RollingLeft11
                          12579 	.globl _depth2RollingRight
   3030                   12580 _depth2RollingRight:
   3030 07 D9             12581 	.word	_depth2RollingRight0
   3032 0A FB             12582 	.word	_depth2RollingRight1
   3034 0E 29             12583 	.word	_depth2RollingRight2
   3036 11 57             12584 	.word	_depth2RollingRight3
   3038 14 85             12585 	.word	_depth2RollingRight4
   303A 17 B3             12586 	.word	_depth2RollingRight5
   303C 1A E1             12587 	.word	_depth2RollingRight6
   303E 1E 0F             12588 	.word	_depth2RollingRight7
   3040 21 3D             12589 	.word	_depth2RollingRight8
   3042 24 6B             12590 	.word	_depth2RollingRight9
   3044 27 99             12591 	.word	_depth2RollingRight10
   3046 2A C7             12592 	.word	_depth2RollingRight11
                          12593 	.globl _width2RollingFront
   3048                   12594 _width2RollingFront:
   3048 08 0A             12595 	.word	_width2RollingFront0
   304A 0B 2F             12596 	.word	_width2RollingFront1
   304C 0E 5D             12597 	.word	_width2RollingFront2
   304E 11 8B             12598 	.word	_width2RollingFront3
   3050 14 B9             12599 	.word	_width2RollingFront4
   3052 17 E7             12600 	.word	_width2RollingFront5
   3054 1B 15             12601 	.word	_width2RollingFront6
   3056 1E 43             12602 	.word	_width2RollingFront7
   3058 21 71             12603 	.word	_width2RollingFront8
   305A 24 9F             12604 	.word	_width2RollingFront9
   305C 27 CD             12605 	.word	_width2RollingFront10
   305E 2A FB             12606 	.word	_width2RollingFront11
                          12607 	.globl _width2RollingBack
   3060                   12608 _width2RollingBack:
   3060 08 3B             12609 	.word	_width2RollingBack0
   3062 0B 60             12610 	.word	_width2RollingBack1
   3064 0E 8E             12611 	.word	_width2RollingBack2
   3066 11 BC             12612 	.word	_width2RollingBack3
   3068 14 EA             12613 	.word	_width2RollingBack4
   306A 18 18             12614 	.word	_width2RollingBack5
   306C 1B 46             12615 	.word	_width2RollingBack6
   306E 1E 74             12616 	.word	_width2RollingBack7
   3070 21 A2             12617 	.word	_width2RollingBack8
   3072 24 D0             12618 	.word	_width2RollingBack9
   3074 27 FE             12619 	.word	_width2RollingBack10
   3076 2B 2C             12620 	.word	_width2RollingBack11
                          12621 	.globl _height1FallingLeft
   3078                   12622 _height1FallingLeft:
   3078 08 6C             12623 	.word	_height1FallingLeft0
   307A 0B 94             12624 	.word	_height1FallingLeft1
   307C 0E C2             12625 	.word	_height1FallingLeft2
   307E 11 F0             12626 	.word	_height1FallingLeft3
   3080 15 1E             12627 	.word	_height1FallingLeft4
   3082 18 4C             12628 	.word	_height1FallingLeft5
   3084 1B 7A             12629 	.word	_height1FallingLeft6
   3086 1E A8             12630 	.word	_height1FallingLeft7
   3088 21 D6             12631 	.word	_height1FallingLeft8
   308A 25 04             12632 	.word	_height1FallingLeft9
   308C 28 32             12633 	.word	_height1FallingLeft10
   308E 2B 60             12634 	.word	_height1FallingLeft11
                          12635 	.globl _height1FallingRight
   3090                   12636 _height1FallingRight:
   3090 08 9D             12637 	.word	_height1FallingRight0
   3092 0B C5             12638 	.word	_height1FallingRight1
   3094 0E F3             12639 	.word	_height1FallingRight2
   3096 12 21             12640 	.word	_height1FallingRight3
   3098 15 4F             12641 	.word	_height1FallingRight4
   309A 18 7D             12642 	.word	_height1FallingRight5
   309C 1B AB             12643 	.word	_height1FallingRight6
   309E 1E D9             12644 	.word	_height1FallingRight7
   30A0 22 07             12645 	.word	_height1FallingRight8
   30A2 25 35             12646 	.word	_height1FallingRight9
   30A4 28 63             12647 	.word	_height1FallingRight10
   30A6 2B 91             12648 	.word	_height1FallingRight11
                          12649 	.globl _height1FallingBack
   30A8                   12650 _height1FallingBack:
   30A8 08 CE             12651 	.word	_height1FallingBack0
   30AA 0B F9             12652 	.word	_height1FallingBack1
   30AC 0F 27             12653 	.word	_height1FallingBack2
   30AE 12 55             12654 	.word	_height1FallingBack3
   30B0 15 83             12655 	.word	_height1FallingBack4
   30B2 18 B1             12656 	.word	_height1FallingBack5
   30B4 1B DF             12657 	.word	_height1FallingBack6
   30B6 1F 0D             12658 	.word	_height1FallingBack7
   30B8 22 3B             12659 	.word	_height1FallingBack8
   30BA 25 69             12660 	.word	_height1FallingBack9
   30BC 28 97             12661 	.word	_height1FallingBack10
   30BE 2B C5             12662 	.word	_height1FallingBack11
                          12663 	.globl _height1FallingFront
   30C0                   12664 _height1FallingFront:
   30C0 08 FF             12665 	.word	_height1FallingFront0
   30C2 0C 2D             12666 	.word	_height1FallingFront1
   30C4 0F 5B             12667 	.word	_height1FallingFront2
   30C6 12 89             12668 	.word	_height1FallingFront3
   30C8 15 B7             12669 	.word	_height1FallingFront4
   30CA 18 E5             12670 	.word	_height1FallingFront5
   30CC 1C 13             12671 	.word	_height1FallingFront6
   30CE 1F 41             12672 	.word	_height1FallingFront7
   30D0 22 6F             12673 	.word	_height1FallingFront8
   30D2 25 9D             12674 	.word	_height1FallingFront9
   30D4 28 CB             12675 	.word	_height1FallingFront10
   30D6 2B F9             12676 	.word	_height1FallingFront11
                          12677 	.area .bss
                          12678 	.globl	_blockOrientation
   C88D                   12679 _blockOrientation:	.blkb	1
                          12680 	.globl	_blockYOfs
   C88E                   12681 _blockYOfs:	.blkb	1
                          12682 	.globl	_lastBlockDirection
   C88F                   12683 _lastBlockDirection:	.blkb	1
                          12684 	.globl	_blockAnimating
   C890                   12685 _blockAnimating:	.blkb	1
                          12686 	.globl	_splitMode
   C891                   12687 _splitMode:	.blkb	1
                          12688 	.globl	_blockX
   C892                   12689 _blockX:	.blkb	1
                          12690 	.globl	_blockY
   C893                   12691 _blockY:	.blkb	1
                          12692 	.globl	_blockX2
   C894                   12693 _blockX2:	.blkb	1
                          12694 	.globl	_blockY2
   C895                   12695 _blockY2:	.blkb	1
                          12696 	.globl	_blockAnimation
   C896                   12697 _blockAnimation:	.blkb	2
                          12698 	.globl	_nextBlockAnimation
   C898                   12699 _nextBlockAnimation:	.blkb	2
                          12700 	.globl	_blockAnimationStep
   C89A                   12701 _blockAnimationStep:	.blkb	1
                          12702 	.globl	_nextBlockX
   C89B                   12703 _nextBlockX:	.blkb	1
                          12704 	.globl	_nextBlockY
   C89C                   12705 _nextBlockY:	.blkb	1
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 A$block$1005       02DF GR  |   2 A$block$1006       02E2 GR
  2 A$block$1014       02E3 GR  |   2 A$block$1015       02E6 GR
  2 A$block$1021       02E9 GR  |   2 A$block$1027       02EC GR
  2 A$block$1028       02EE GR  |   2 A$block$1029       02F1 GR
  2 A$block$1032       02F2 GR  |   2 A$block$1038       02F4 GR
  2 A$block$1039       02F7 GR  |   2 A$block$1040       02F9 GR
  2 A$block$1041       02FC GR  |   2 A$block$1042       02FE GR
  2 A$block$1043       0300 GR  |   2 A$block$1044       0302 GR
  2 A$block$105        0043 GR  |   2 A$block$1050       0306 GR
  2 A$block$1051       0309 GR  |   2 A$block$1052       030B GR
  2 A$block$1053       030E GR  |   2 A$block$1054       0310 GR
  2 A$block$1055       0312 GR  |   2 A$block$1056       0313 GR
  2 A$block$1057       0315 GR  |   2 A$block$106        0046 GR
  2 A$block$1063       0317 GR  |   2 A$block$1064       031A GR
  2 A$block$1070       031D GR  |   2 A$block$1071       031F GR
  2 A$block$1077       0322 GR  |   2 A$block$1083       0325 GR
  2 A$block$1084       0328 GR  |   2 A$block$1086       032B GR
  2 A$block$1087       032D GR  |   2 A$block$1088       032E GR
  2 A$block$1089       0330 GR  |   2 A$block$1095       0334 GR
  2 A$block$1096       0337 GR  |   2 A$block$1102       033A GR
  2 A$block$1103       033C GR  |   2 A$block$1109       033F GR
  2 A$block$1110       0342 GR  |   2 A$block$1112       0345 GR
  2 A$block$1113       0348 GR  |   2 A$block$1114       034B GR
  2 A$block$112        0049 GR  |   2 A$block$1120       034F GR
  2 A$block$1121       0351 GR  |   2 A$block$1122       0352 GR
  2 A$block$1123       0354 GR  |   2 A$block$1129       0356 GR
  2 A$block$1130       0359 GR  |   2 A$block$1136       035C GR
  2 A$block$1137       035E GR  |   2 A$block$1143       0361 GR
  2 A$block$1144       0363 GR  |   2 A$block$1145       0364 GR
  2 A$block$1151       0367 GR  |   2 A$block$1152       036A GR
  2 A$block$1154       036C GR  |   2 A$block$1155       036E GR
  2 A$block$1156       036F GR  |   2 A$block$1157       0371 GR
  2 A$block$1163       0373 GR  |   2 A$block$1164       0376 GR
  2 A$block$1170       0379 GR  |   2 A$block$1171       037B GR
  2 A$block$1177       037E GR  |   2 A$block$1179       0381 GR
  2 A$block$1180       0383 GR  |   2 A$block$1183       0384 GR
  2 A$block$1189       0386 GR  |   2 A$block$119        004C GR
  2 A$block$1190       0389 GR  |   2 A$block$1196       038B GR
  2 A$block$1197       038E GR  |   2 A$block$120        004F GR
  2 A$block$1203       0390 GR  |   2 A$block$1204       0393 GR
  2 A$block$1210       0396 GR  |   2 A$block$1211       0399 GR
  2 A$block$1217       039C GR  |   2 A$block$1218       039E GR
  2 A$block$1224       03A1 GR  |   2 A$block$1225       03A3 GR
  2 A$block$1226       03A6 GR  |   2 A$block$1227       03A8 GR
  2 A$block$1230       03A9 GR  |   2 A$block$1231       03AB GR
  2 A$block$1232       03AD GR  |   2 A$block$1238       03AF GR
  2 A$block$1239       03B1 GR  |   2 A$block$1242       03B3 GR
  2 A$block$1243       03B5 GR  |   2 A$block$1249       03B8 GR
  2 A$block$1250       03BB GR  |   2 A$block$1251       03BD GR
  2 A$block$1252       03BF GR  |   2 A$block$1253       03C2 GR
  2 A$block$1254       03C5 GR  |   2 A$block$126        0052 GR
  2 A$block$1260       03C7 GR  |   2 A$block$1261       03C9 GR
  2 A$block$1262       03CB GR  |   2 A$block$1263       03CD GR
  2 A$block$1269       03CF GR  |   2 A$block$1270       03D1 GR
  2 A$block$1271       03D3 GR  |   2 A$block$1272       03D5 GR
  2 A$block$1273       03D7 GR  |   2 A$block$1276       03D9 GR
  2 A$block$1277       03DB GR  |   2 A$block$1278       03DD GR
  2 A$block$1284       03E0 GR  |   2 A$block$1285       03E3 GR
  2 A$block$1286       03E5 GR  |   2 A$block$1287       03E8 GR
  2 A$block$1288       03EB GR  |   2 A$block$1289       03ED GR
  2 A$block$1290       03EF GR  |   2 A$block$1291       03F1 GR
  2 A$block$1292       03F3 GR  |   2 A$block$1295       03F5 GR
  2 A$block$1296       03F7 GR  |   2 A$block$1297       03F9 GR
  2 A$block$1300       03FC GR  |   2 A$block$1301       03FE GR
  2 A$block$1308       0400 GR  |   2 A$block$1309       0403 GR
  2 A$block$1310       0405 GR  |   2 A$block$1311       0408 GR
  2 A$block$1312       040B GR  |   2 A$block$1313       040D GR
  2 A$block$1314       040F GR  |   2 A$block$1315       0411 GR
  2 A$block$1316       0413 GR  |   2 A$block$1317       0415 GR
  2 A$block$132        0055 GR  |   2 A$block$1320       0417 GR
  2 A$block$1321       0419 GR  |   2 A$block$1322       041B GR
  2 A$block$1325       041E GR  |   2 A$block$133        0058 GR
  2 A$block$1332       0420 GR  |   2 A$block$1333       0422 GR
  2 A$block$1339       0424 GR  |   2 A$block$134        0059 GR
  2 A$block$1340       0427 GR  |   2 A$block$1341       0428 GR
  2 A$block$1342       042A GR  |   2 A$block$1343       042B GR
  2 A$block$1344       042C GR  |   2 A$block$1345       042F GR
  2 A$block$1346       0431 GR  |   2 A$block$1347       0433 GR
  2 A$block$1353       0436 GR  |   2 A$block$1354       0439 GR
  2 A$block$1360       043D GR  |   2 A$block$1366       0440 GR
  2 A$block$1367       0442 GR  |   2 A$block$1370       0444 GR
  2 A$block$1371       0446 GR  |   2 A$block$1377       0449 GR
  2 A$block$1378       044C GR  |   2 A$block$1379       044E GR
  2 A$block$1380       0450 GR  |   2 A$block$1381       0453 GR
  2 A$block$1382       0456 GR  |   2 A$block$1388       0458 GR
  2 A$block$1389       045A GR  |   2 A$block$1390       045C GR
  2 A$block$1391       045E GR  |   2 A$block$1397       0460 GR
  2 A$block$1398       0462 GR  |   2 A$block$1399       0464 GR
  2 A$block$140        005C GR  |   2 A$block$1400       0466 GR
  2 A$block$1401       0468 GR  |   2 A$block$1404       046A GR
  2 A$block$1405       046C GR  |   2 A$block$1406       046E GR
  2 A$block$141        005F GR  |   2 A$block$1412       0471 GR
  2 A$block$1413       0474 GR  |   2 A$block$1414       0476 GR
  2 A$block$1415       0479 GR  |   2 A$block$1416       047C GR
  2 A$block$1417       047E GR  |   2 A$block$1418       0480 GR
  2 A$block$1419       0482 GR  |   2 A$block$1420       0484 GR
  2 A$block$1423       0486 GR  |   2 A$block$1424       0488 GR
  2 A$block$1425       048A GR  |   2 A$block$1428       048D GR
  2 A$block$1429       048F GR  |   2 A$block$1436       0491 GR
  2 A$block$1437       0494 GR  |   2 A$block$1438       0496 GR
  2 A$block$1439       0499 GR  |   2 A$block$1440       049C GR
  2 A$block$1441       049E GR  |   2 A$block$1442       04A0 GR
  2 A$block$1443       04A2 GR  |   2 A$block$1444       04A4 GR
  2 A$block$1445       04A6 GR  |   2 A$block$1448       04A8 GR
  2 A$block$1449       04AA GR  |   2 A$block$1450       04AC GR
  2 A$block$1453       04AF GR  |   2 A$block$1460       04B1 GR
  2 A$block$1461       04B3 GR  |   2 A$block$1467       04B5 GR
  2 A$block$1468       04B8 GR  |   2 A$block$147        0062 GR
  2 A$block$1470       04BB GR  |   2 A$block$1471       04BD GR
  2 A$block$154        0065 GR  |   2 A$block$155        0068 GR
  2 A$block$161        006B GR  |   2 A$block$167        006E GR
  2 A$block$168        0071 GR  |   2 A$block$174        0074 GR
  2 A$block$175        0077 GR  |   2 A$block$176        0078 GR
  2 A$block$182        007B GR  |   2 A$block$189        007D GR
  2 A$block$190        0080 GR  |   2 A$block$196        0083 GR
  2 A$block$202        0086 GR  |   2 A$block$203        0089 GR
  2 A$block$209        008C GR  |   2 A$block$210        008F GR
  2 A$block$211        0090 GR  |   2 A$block$223        0093 GR
  2 A$block$230        0096 GR  |   2 A$block$237        0099 GR
  2 A$block$238        009C GR  |   2 A$block$239        009E GR
  2 A$block$240        00A2 GR  |   2 A$block$241        00A4 GR
  2 A$block$242        00A6 GR  |   2 A$block$243        00AA GR
  2 A$block$250        00AD GR  |   2 A$block$251        00AF GR
  2 A$block$252        00B1 GR  |   2 A$block$253        00B5 GR
  2 A$block$254        00B7 GR  |   2 A$block$255        00B9 GR
  2 A$block$256        00BB GR  |   2 A$block$257        00BD GR
  2 A$block$258        00C1 GR  |   2 A$block$265        00C4 GR
  2 A$block$266        00C7 GR  |   2 A$block$272        00CA GR
  2 A$block$273        00CD GR  |   2 A$block$279        00D0 GR
  2 A$block$280        00D3 GR  |   2 A$block$281        00D5 GR
  2 A$block$287        00D8 GR  |   2 A$block$288        00DB GR
  2 A$block$294        00DE GR  |   2 A$block$295        00E0 GR
  2 A$block$301        00E3 GR  |   2 A$block$308        00E6 GR
  2 A$block$309        00E9 GR  |   2 A$block$315        00EC GR
  2 A$block$316        00EF GR  |   2 A$block$322        00F2 GR
  2 A$block$323        00F5 GR  |   2 A$block$324        00F6 GR
  2 A$block$330        00F9 GR  |   2 A$block$331        00FC GR
  2 A$block$337        00FF GR  |   2 A$block$338        0101 GR
  2 A$block$34         0000 GR  |   2 A$block$344        0104 GR
  2 A$block$35         0002 GR  |   2 A$block$351        0107 GR
  2 A$block$352        010A GR  |   2 A$block$358        010D GR
  2 A$block$359        0110 GR  |   2 A$block$365        0113 GR
  2 A$block$366        0116 GR  |   2 A$block$372        0119 GR
  2 A$block$373        011C GR  |   2 A$block$374        011D GR
  2 A$block$380        0120 GR  |   2 A$block$381        0122 GR
  2 A$block$387        0125 GR  |   2 A$block$394        0127 GR
  2 A$block$395        012A GR  |   2 A$block$401        012D GR
  2 A$block$402        0130 GR  |   2 A$block$408        0133 GR
  2 A$block$409        0136 GR  |   2 A$block$41         0004 GR
  2 A$block$415        0139 GR  |   2 A$block$416        013C GR
  2 A$block$417        013E GR  |   2 A$block$42         0006 GR
  2 A$block$423        0141 GR  |   2 A$block$424        0143 GR
  2 A$block$436        0146 GR  |   2 A$block$443        0149 GR
  2 A$block$444        014B GR  |   2 A$block$445        014D GR
  2 A$block$446        0151 GR  |   2 A$block$447        0153 GR
  2 A$block$448        0155 GR  |   2 A$block$449        0157 GR
  2 A$block$450        0159 GR  |   2 A$block$451        015D GR
  2 A$block$458        0160 GR  |   2 A$block$459        0163 GR
  2 A$block$465        0166 GR  |   2 A$block$471        0169 GR
  2 A$block$472        016C GR  |   2 A$block$473        016D GR
  2 A$block$479        0170 GR  |   2 A$block$48         0009 GR
  2 A$block$480        0173 GR  |   2 A$block$486        0176 GR
  2 A$block$49         000B GR  |   2 A$block$493        0179 GR
  2 A$block$494        017C GR  |   2 A$block$500        017F GR
  2 A$block$501        0182 GR  |   2 A$block$507        0185 GR
  2 A$block$508        0188 GR  |   2 A$block$509        0189 GR
  2 A$block$515        018C GR  |   2 A$block$516        018F GR
  2 A$block$522        0192 GR  |   2 A$block$529        0195 GR
  2 A$block$530        0198 GR  |   2 A$block$536        019B GR
  2 A$block$537        019E GR  |   2 A$block$543        01A1 GR
  2 A$block$544        01A4 GR  |   2 A$block$55         000E GR
  2 A$block$550        01A7 GR  |   2 A$block$551        01AA GR
  2 A$block$552        01AC GR  |   2 A$block$558        01AF GR
  2 A$block$56         0011 GR  |   2 A$block$564        01B2 GR
  2 A$block$571        01B4 GR  |   2 A$block$572        01B7 GR
  2 A$block$578        01BA GR  |   2 A$block$579        01BD GR
  2 A$block$585        01C0 GR  |   2 A$block$586        01C3 GR
  2 A$block$592        01C6 GR  |   2 A$block$593        01C9 GR
  2 A$block$594        01CA GR  |   2 A$block$600        01CD GR
  2 A$block$612        01D0 GR  |   2 A$block$619        01D3 GR
  2 A$block$62         0015 GR  |   2 A$block$620        01D5 GR
  2 A$block$621        01D7 GR  |   2 A$block$622        01DB GR
  2 A$block$623        01DD GR  |   2 A$block$624        01DF GR
  2 A$block$625        01E1 GR  |   2 A$block$626        01E3 GR
  2 A$block$627        01E7 GR  |   2 A$block$63         0018 GR
  2 A$block$634        01EA GR  |   2 A$block$635        01ED GR
  2 A$block$641        01F0 GR  |   2 A$block$642        01F3 GR
  2 A$block$648        01F6 GR  |   2 A$block$649        01F9 GR
  2 A$block$650        01FA GR  |   2 A$block$656        01FD GR
  2 A$block$657        0200 GR  |   2 A$block$663        0203 GR
  2 A$block$669        0206 GR  |   2 A$block$676        0209 GR
  2 A$block$677        020C GR  |   2 A$block$683        020F GR
  2 A$block$684        0212 GR  |   2 A$block$69         001C GR
  2 A$block$690        0215 GR  |   2 A$block$691        0218 GR
  2 A$block$692        021A GR  |   2 A$block$698        021D GR
  2 A$block$699        0220 GR  |   2 A$block$70         001E GR
  2 A$block$705        0223 GR  |   2 A$block$71         0020 GR
  2 A$block$711        0226 GR  |   2 A$block$718        0229 GR
  2 A$block$719        022C GR  |   2 A$block$72         0024 GR
  2 A$block$725        022F GR  |   2 A$block$73         0026 GR
  2 A$block$731        0232 GR  |   2 A$block$732        0235 GR
  2 A$block$738        0238 GR  |   2 A$block$739        023B GR
  2 A$block$74         0028 GR  |   2 A$block$740        023C GR
  2 A$block$746        023F GR  |   2 A$block$75         002A GR
  2 A$block$753        0241 GR  |   2 A$block$754        0244 GR
  2 A$block$76         002C GR  |   2 A$block$760        0247 GR
  2 A$block$761        024A GR  |   2 A$block$767        024D GR
  2 A$block$768        0250 GR  |   2 A$block$77         0030 GR
  2 A$block$774        0253 GR  |   2 A$block$775        0256 GR
  2 A$block$776        0257 GR  |   2 A$block$789        025A GR
  2 A$block$790        025C GR  |   2 A$block$798        025D GR
  2 A$block$804        025F GR  |   2 A$block$807        0261 GR
  2 A$block$810        0263 GR  |   2 A$block$813        0265 GR
  2 A$block$816        0267 GR  |   2 A$block$819        0269 GR
  2 A$block$822        026B GR  |   2 A$block$825        026D GR
  2 A$block$828        026F GR  |   2 A$block$831        0271 GR
  2 A$block$834        0273 GR  |   2 A$block$837        0275 GR
  2 A$block$84         0033 GR  |   2 A$block$840        0277 GR
  2 A$block$843        0279 GR  |   2 A$block$846        027B GR
  2 A$block$849        027D GR  |   2 A$block$85         0036 GR
  2 A$block$855        027F GR  |   2 A$block$858        0281 GR
  2 A$block$861        0283 GR  |   2 A$block$864        0285 GR
  2 A$block$867        0287 GR  |   2 A$block$870        0289 GR
  2 A$block$873        028B GR  |   2 A$block$876        028D GR
  2 A$block$879        028F GR  |   2 A$block$882        0291 GR
  2 A$block$885        0293 GR  |   2 A$block$888        0295 GR
  2 A$block$891        0297 GR  |   2 A$block$894        0299 GR
  2 A$block$897        029A GR  |   2 A$block$900        029C GR
  2 A$block$903        029E GR  |   2 A$block$906        02A0 GR
  2 A$block$909        02A2 GR  |   2 A$block$91         0039 GR
  2 A$block$912        02A4 GR  |   2 A$block$918        02A6 GR
  2 A$block$926        02A7 GR  |   2 A$block$927        02AA GR
  2 A$block$933        02AC GR  |   2 A$block$934        02AF GR
  2 A$block$935        02B0 GR  |   2 A$block$936        02B3 GR
  2 A$block$937        02B5 GR  |   2 A$block$943        02B7 GR
  2 A$block$944        02BA GR  |   2 A$block$950        02BD GR
  2 A$block$951        02C0 GR  |   2 A$block$957        02C3 GR
  2 A$block$963        02C6 GR  |   2 A$block$964        02C9 GR
  2 A$block$97         003C GR  |   2 A$block$970        02CC GR
  2 A$block$972        02CF GR  |   2 A$block$98         003F GR
  2 A$block$980        02D0 GR  |   2 A$block$981        02D3 GR
  2 A$block$987        02D6 GR  |   2 A$block$99         0040 GR
  2 A$block$993        02D9 GR  |   2 A$block$999        02DC GR
  2 L11                00AD R   |   2 L12                0149 R
  2 L14                0146 R   |   2 L15                00C4 R
  2 L16                0107 R   |   2 L17                00E6 R
  2 L19                01D0 R   |   2 L2                 0099 R
  2 L20                0160 R   |   2 L21                0195 R
  2 L22                0179 R   |   2 L24                025A R
  2 L25                01EA R   |   2 L26                0229 R
  2 L27                0209 R   |   2 L29                025A R
  2 L30                0096 R   |   2 L31                007D R
  2 L32                01D3 R   |   2 L33                0127 R
  2 L34                01B4 R   |   2 L35                0241 R
  2 L40                02CF R   |   2 L46                0345 R
  2 L47                032B R   |   2 L49                036C R
  2 L5                 0093 R   |   2 L50                0381 R
  2 L54                0400 R   |   2 L55                0420 R
  2 L57                0491 R   |   2 L58                04B1 R
  2 L59                04BB R   |   2 L6                 0033 R
  2 L7                 0065 R   |   2 L8                 004C R
  2 _Draw_VLpo         025D GR  |     ___Intensity_a     **** GX
    ___Moveto_d        **** GX  |     ___Reset0Ref       **** GX
  3 _blockAnimatin     0003 GR  |   3 _blockAnimatio     0009 GR
  3 _blockAnimatio     000D GR  |   3 _blockOrientat     0000 GR
  2 _blockStartLev     02D0 GR  |   3 _blockX            0005 GR
  3 _blockX2           0007 GR  |   3 _blockY            0006 GR
  3 _blockY2           0008 GR  |   3 _blockYOfs         0001 GR
  2 _depth2Rolling     2EC3 GR  |   2 _depth2Rolling     0653 GR
  2 _depth2Rolling     0975 GR  |   2 _depth2Rolling     2613 GR
  2 _depth2Rolling     2941 GR  |   2 _depth2Rolling     2C6F GR
  2 _depth2Rolling     0CA3 GR  |   2 _depth2Rolling     0FD1 GR
  2 _depth2Rolling     12FF GR  |   2 _depth2Rolling     162D GR
  2 _depth2Rolling     195B GR  |   2 _depth2Rolling     1C89 GR
  2 _depth2Rolling     1FB7 GR  |   2 _depth2Rolling     22E5 GR
  2 _depth2Rolling     2EDB GR  |   2 _depth2Rolling     0684 GR
  2 _depth2Rolling     09A6 GR  |   2 _depth2Rolling     2644 GR
  2 _depth2Rolling     2972 GR  |   2 _depth2Rolling     2CA0 GR
  2 _depth2Rolling     0CD4 GR  |   2 _depth2Rolling     1002 GR
  2 _depth2Rolling     1330 GR  |   2 _depth2Rolling     165E GR
  2 _depth2Rolling     198C GR  |   2 _depth2Rolling     1CBA GR
  2 _depth2Rolling     1FE8 GR  |   2 _depth2Rolling     2316 GR
  2 _doBlockAnimat     02A7 GR  |     _dp_VIA_t1_cnt     **** GX
  2 _drawBlock         03A9 GR  |   2 _height1Fallin     2F53 GR
  2 _height1Fallin     0779 GR  |   2 _height1Fallin     0AA4 GR
  2 _height1Fallin     2742 GR  |   2 _height1Fallin     2A70 GR
  2 _height1Fallin     2D9E GR  |   2 _height1Fallin     0DD2 GR
  2 _height1Fallin     1100 GR  |   2 _height1Fallin     142E GR
  2 _height1Fallin     175C GR  |   2 _height1Fallin     1A8A GR
  2 _height1Fallin     1DB8 GR  |   2 _height1Fallin     20E6 GR
  2 _height1Fallin     2414 GR  |   2 _height1Fallin     2F6B GR
  2 _height1Fallin     07AA GR  |   2 _height1Fallin     0AD8 GR
  2 _height1Fallin     2776 GR  |   2 _height1Fallin     2AA4 GR
  2 _height1Fallin     2DD2 GR  |   2 _height1Fallin     0E06 GR
  2 _height1Fallin     1134 GR  |   2 _height1Fallin     1462 GR
  2 _height1Fallin     1790 GR  |   2 _height1Fallin     1ABE GR
  2 _height1Fallin     1DEC GR  |   2 _height1Fallin     211A GR
  2 _height1Fallin     2448 GR  |   2 _height1Fallin     2F23 GR
  2 _height1Fallin     0717 GR  |   2 _height1Fallin     0A3F GR
  2 _height1Fallin     26DD GR  |   2 _height1Fallin     2A0B GR
  2 _height1Fallin     2D39 GR  |   2 _height1Fallin     0D6D GR
  2 _height1Fallin     109B GR  |   2 _height1Fallin     13C9 GR
  2 _height1Fallin     16F7 GR  |   2 _height1Fallin     1A25 GR
  2 _height1Fallin     1D53 GR  |   2 _height1Fallin     2081 GR
  2 _height1Fallin     23AF GR  |   2 _height1Fallin     2F3B GR
  2 _height1Fallin     0748 GR  |   2 _height1Fallin     0A70 GR
  2 _height1Fallin     270E GR  |   2 _height1Fallin     2A3C GR
  2 _height1Fallin     2D6A GR  |   2 _height1Fallin     0D9E GR
  2 _height1Fallin     10CC GR  |   2 _height1Fallin     13FA GR
  2 _height1Fallin     1728 GR  |   2 _height1Fallin     1A56 GR
  2 _height1Fallin     1D84 GR  |   2 _height1Fallin     20B2 GR
  2 _height1Fallin     23E0 GR  |   2 _height2Fallin     2E63 GR
  2 _height2Fallin     0589 GR  |   2 _height2Fallin     08A8 GR
  2 _height2Fallin     2546 GR  |   2 _height2Fallin     2874 GR
  2 _height2Fallin     2BA2 GR  |   2 _height2Fallin     0BD6 GR
  2 _height2Fallin     0F04 GR  |   2 _height2Fallin     1232 GR
  2 _height2Fallin     1560 GR  |   2 _height2Fallin     188E GR
  2 _height2Fallin     1BBC GR  |   2 _height2Fallin     1EEA GR
  2 _height2Fallin     2218 GR  |   2 _height2Fallin     2E93 GR
  2 _height2Fallin     05EE GR  |   2 _height2Fallin     0910 GR
  2 _height2Fallin     25AE GR  |   2 _height2Fallin     28DC GR
  2 _height2Fallin     2C0A GR  |   2 _height2Fallin     0C3E GR
  2 _height2Fallin     0F6C GR  |   2 _height2Fallin     129A GR
  2 _height2Fallin     15C8 GR  |   2 _height2Fallin     18F6 GR
  2 _height2Fallin     1C24 GR  |   2 _height2Fallin     1F52 GR
  2 _height2Fallin     2280 GR  |   2 _height2Fallin     2E03 GR
  2 _height2Fallin     04BF GR  |   2 _height2Fallin     07DB GR
  2 _height2Fallin     2479 GR  |   2 _height2Fallin     27A7 GR
  2 _height2Fallin     2AD5 GR  |   2 _height2Fallin     0B09 GR
  2 _height2Fallin     0E37 GR  |   2 _height2Fallin     1165 GR
  2 _height2Fallin     1493 GR  |   2 _height2Fallin     17C1 GR
  2 _height2Fallin     1AEF GR  |   2 _height2Fallin     1E1D GR
  2 _height2Fallin     214B GR  |   2 _height2Fallin     2E33 GR
  2 _height2Fallin     0524 GR  |   2 _height2Fallin     0840 GR
  2 _height2Fallin     24DE GR  |   2 _height2Fallin     280C GR
  2 _height2Fallin     2B3A GR  |   2 _height2Fallin     0B6E GR
  2 _height2Fallin     0E9C GR  |   2 _height2Fallin     11CA GR
  2 _height2Fallin     14F8 GR  |   2 _height2Fallin     1826 GR
  2 _height2Fallin     1B54 GR  |   2 _height2Fallin     1E82 GR
  2 _height2Fallin     21B0 GR  |   2 _height2Rising     2EAB GR
  2 _height2Rising     061F GR  |   2 _height2Rising     0941 GR
  2 _height2Rising     25DF GR  |   2 _height2Rising     290D GR
  2 _height2Rising     2C3B GR  |   2 _height2Rising     0C6F GR
  2 _height2Rising     0F9D GR  |   2 _height2Rising     12CB GR
  2 _height2Rising     15F9 GR  |   2 _height2Rising     1927 GR
  2 _height2Rising     1C55 GR  |   2 _height2Rising     1F83 GR
  2 _height2Rising     22B1 GR  |   2 _height2Rising     2E7B GR
  2 _height2Rising     05BA GR  |   2 _height2Rising     08DC GR
  2 _height2Rising     257A GR  |   2 _height2Rising     28A8 GR
  2 _height2Rising     2BD6 GR  |   2 _height2Rising     0C0A GR
  2 _height2Rising     0F38 GR  |   2 _height2Rising     1266 GR
  2 _height2Rising     1594 GR  |   2 _height2Rising     18C2 GR
  2 _height2Rising     1BF0 GR  |   2 _height2Rising     1F1E GR
  2 _height2Rising     224C GR  |   2 _height2Rising     2E4B GR
  2 _height2Rising     0555 GR  |   2 _height2Rising     0874 GR
  2 _height2Rising     2512 GR  |   2 _height2Rising     2840 GR
  2 _height2Rising     2B6E GR  |   2 _height2Rising     0BA2 GR
  2 _height2Rising     0ED0 GR  |   2 _height2Rising     11FE GR
  2 _height2Rising     152C GR  |   2 _height2Rising     185A GR
  2 _height2Rising     1B88 GR  |   2 _height2Rising     1EB6 GR
  2 _height2Rising     21E4 GR  |   2 _height2Rising     2E1B GR
  2 _height2Rising     04F0 GR  |   2 _height2Rising     080C GR
  2 _height2Rising     24AA GR  |   2 _height2Rising     27D8 GR
  2 _height2Rising     2B06 GR  |   2 _height2Rising     0B3A GR
  2 _height2Rising     0E68 GR  |   2 _height2Rising     1196 GR
  2 _height2Rising     14C4 GR  |   2 _height2Rising     17F2 GR
  2 _height2Rising     1B20 GR  |   2 _height2Rising     1E4E GR
  2 _height2Rising     217C GR  |   3 _lastBlockDire     0002 GR
  2 _moveBlockImpl     0000 GR  |   3 _nextBlockAnim     000B GR
  3 _nextBlockX        000E GR  |   3 _nextBlockY        000F GR
  2 _setSplitMode      02E3 GR  |   3 _splitMode         0004 GR
  2 _swapSplit         0384 GR  |   2 _testMerge         02F2 GR
  2 _width2Rolling     2F0B GR  |   2 _width2Rolling     06E6 GR
  2 _width2Rolling     0A0B GR  |   2 _width2Rolling     26A9 GR
  2 _width2Rolling     29D7 GR  |   2 _width2Rolling     2D05 GR
  2 _width2Rolling     0D39 GR  |   2 _width2Rolling     1067 GR
  2 _width2Rolling     1395 GR  |   2 _width2Rolling     16C3 GR
  2 _width2Rolling     19F1 GR  |   2 _width2Rolling     1D1F GR
  2 _width2Rolling     204D GR  |   2 _width2Rolling     237B GR
  2 _width2Rolling     2EF3 GR  |   2 _width2Rolling     06B5 GR
  2 _width2Rolling     09DA GR  |   2 _width2Rolling     2678 GR
  2 _width2Rolling     29A6 GR  |   2 _width2Rolling     2CD4 GR
  2 _width2Rolling     0D08 GR  |   2 _width2Rolling     1036 GR
  2 _width2Rolling     1364 GR  |   2 _width2Rolling     1692 GR
  2 _width2Rolling     19C0 GR  |   2 _width2Rolling     1CEE GR
  2 _width2Rolling     201C GR  |   2 _width2Rolling     234A GR
    _x3d               **** GX  |     _y3d               **** GX
  2 macroEnd2          02A6 R   |   2 shiftOff1          025F R
  2 shiftOn1           027F R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size 2F83   flags  100
   3 .bss             size   10   flags    0
[_DSEG]
   1 _DATA            size    0   flags C0C0

