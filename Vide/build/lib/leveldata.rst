                              1 ;;; gcc for m6809 : Mar 17 2019 12:45:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O1
                              5 	.module	leveldata.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 7.4.0, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ; -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ; -fno-time-report
                             12 ; -IC:\tmp\Vide2.5.1.java\Vide.java\C\PeerC\vectrex\include
                             13 ; -D__INLINE_RUM=1 -DOMMIT_FRAMEPOINTER=1
                             14 ; C:\data\bloxorz\Vide\source\leveldata.enr.c
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
                             32 	.globl	_levelCount
                             33 	.area	.text
   44B3                      34 _levelCount:
   44B3 0F                   35 	.byte	15
                             36 	.globl	_levelOffset
   44B4                      37 _levelOffset:
   44B4 01                   38 	.byte	1
                             39 	.globl	_nextBank
   44B5                      40 _nextBank:
   44B5 01                   41 	.byte	1
                             42 	.globl	_swatch_1_0
   44B6                      43 _swatch_1_0:
                             44 ; type:
   44B6 01                   45 	.byte	1
                             46 ; position:
                             47 ; x:
   44B7 07                   48 	.byte	7
                             49 ; y:
   44B8 08                   50 	.byte	8
                             51 ; fields_count:
   44B9 02                   52 	.byte	2
                             53 ; fields:
   44BA 4E DA                54 	.word	___compound_literal.0
   44BC 4E DD                55 	.word	___compound_literal.1
                             56 	.globl	_swatch_1_1
   44BE                      57 _swatch_1_1:
                             58 ; type:
   44BE 00                   59 	.byte	0
                             60 ; position:
                             61 ; x:
   44BF 06                   62 	.byte	6
                             63 ; y:
   44C0 02                   64 	.byte	2
                             65 ; fields_count:
   44C1 02                   66 	.byte	2
                             67 ; fields:
   44C2 4E E0                68 	.word	___compound_literal.2
   44C4 4E E3                69 	.word	___compound_literal.3
                             70 	.globl	_swatch_4_0
   44C6                      71 _swatch_4_0:
                             72 ; type:
   44C6 00                   73 	.byte	0
                             74 ; position:
                             75 ; x:
   44C7 08                   76 	.byte	8
                             77 ; y:
   44C8 08                   78 	.byte	8
                             79 ; fields_count:
   44C9 02                   80 	.byte	2
                             81 ; fields:
   44CA 4E E6                82 	.word	___compound_literal.4
   44CC 4E E9                83 	.word	___compound_literal.5
                             84 	.globl	_swatch_4_1
   44CE                      85 _swatch_4_1:
                             86 ; type:
   44CE 00                   87 	.byte	0
                             88 ; position:
                             89 ; x:
   44CF 06                   90 	.byte	6
                             91 ; y:
   44D0 03                   92 	.byte	3
                             93 ; fields_count:
   44D1 02                   94 	.byte	2
                             95 ; fields:
   44D2 4E EC                96 	.word	___compound_literal.6
   44D4 4E EF                97 	.word	___compound_literal.7
                             98 	.globl	_swatch_4_2
   44D6                      99 _swatch_4_2:
                            100 ; type:
   44D6 00                  101 	.byte	0
                            102 ; position:
                            103 ; x:
   44D7 04                  104 	.byte	4
                            105 ; y:
   44D8 06                  106 	.byte	6
                            107 ; fields_count:
   44D9 02                  108 	.byte	2
                            109 ; fields:
   44DA 4E F2               110 	.word	___compound_literal.8
   44DC 4E F5               111 	.word	___compound_literal.9
                            112 	.globl	_swatch_4_3
   44DE                     113 _swatch_4_3:
                            114 ; type:
   44DE 00                  115 	.byte	0
                            116 ; position:
                            117 ; x:
   44DF 03                  118 	.byte	3
                            119 ; y:
   44E0 0E                  120 	.byte	14
                            121 ; fields_count:
   44E1 02                  122 	.byte	2
                            123 ; fields:
   44E2 4E F8               124 	.word	___compound_literal.10
   44E4 4E FB               125 	.word	___compound_literal.11
                            126 	.globl	_swatch_6_0
   44E6                     127 _swatch_6_0:
                            128 ; type:
   44E6 01                  129 	.byte	1
                            130 ; position:
                            131 ; x:
   44E7 04                  132 	.byte	4
                            133 ; y:
   44E8 09                  134 	.byte	9
                            135 ; fields_count:
   44E9 01                  136 	.byte	1
                            137 ; fields:
   44EA 4E FE               138 	.word	___compound_literal.12
                            139 	.globl	_swatch_7_0
   44EC                     140 _swatch_7_0:
                            141 ; type:
   44EC 02                  142 	.byte	2
                            143 ; position:
                            144 ; x:
   44ED 05                  145 	.byte	5
                            146 ; y:
   44EE 04                  147 	.byte	4
                            148 ; fields_count:
   44EF 02                  149 	.byte	2
                            150 ; fields:
   44F0 4F 01               151 	.word	___compound_literal.13
   44F2 4F 04               152 	.word	___compound_literal.14
                            153 	.globl	_swatch_8_0
   44F4                     154 _swatch_8_0:
                            155 ; type:
   44F4 02                  156 	.byte	2
                            157 ; position:
                            158 ; x:
   44F5 05                  159 	.byte	5
                            160 ; y:
   44F6 0D                  161 	.byte	13
                            162 ; fields_count:
   44F7 02                  163 	.byte	2
                            164 ; fields:
   44F8 4F 07               165 	.word	___compound_literal.15
   44FA 4F 0A               166 	.word	___compound_literal.16
                            167 	.globl	_swatch_9_0
   44FC                     168 _swatch_9_0:
                            169 ; type:
   44FC 02                  170 	.byte	2
                            171 ; position:
                            172 ; x:
   44FD 08                  173 	.byte	8
                            174 ; y:
   44FE 0D                  175 	.byte	13
                            176 ; fields_count:
   44FF 02                  177 	.byte	2
                            178 ; fields:
   4500 4F 0D               179 	.word	___compound_literal.17
   4502 4F 10               180 	.word	___compound_literal.18
                            181 	.globl	_swatch_9_1
   4504                     182 _swatch_9_1:
                            183 ; type:
   4504 00                  184 	.byte	0
                            185 ; position:
                            186 ; x:
   4505 00                  187 	.byte	0
                            188 ; y:
   4506 06                  189 	.byte	6
                            190 ; fields_count:
   4507 02                  191 	.byte	2
                            192 ; fields:
   4508 4F 13               193 	.word	___compound_literal.19
   450A 4F 16               194 	.word	___compound_literal.20
                            195 	.globl	_swatch_9_2
   450C                     196 _swatch_9_2:
                            197 ; type:
   450C 01                  198 	.byte	1
                            199 ; position:
                            200 ; x:
   450D 00                  201 	.byte	0
                            202 ; y:
   450E 0C                  203 	.byte	12
                            204 ; fields_count:
   450F 04                  205 	.byte	4
                            206 ; fields:
   4510 4F 19               207 	.word	___compound_literal.21
   4512 4F 1C               208 	.word	___compound_literal.22
   4514 4F 1F               209 	.word	___compound_literal.23
   4516 4F 22               210 	.word	___compound_literal.24
                            211 	.globl	_swatch_10_0
   4518                     212 _swatch_10_0:
                            213 ; type:
   4518 00                  214 	.byte	0
                            215 ; position:
                            216 ; x:
   4519 03                  217 	.byte	3
                            218 ; y:
   451A 08                  219 	.byte	8
                            220 ; fields_count:
   451B 02                  221 	.byte	2
                            222 ; fields:
   451C 4F 25               223 	.word	___compound_literal.25
   451E 4F 28               224 	.word	___compound_literal.26
                            225 	.globl	_swatch_11_0
   4520                     226 _swatch_11_0:
                            227 ; type:
   4520 01                  228 	.byte	1
                            229 ; position:
                            230 ; x:
   4521 09                  231 	.byte	9
                            232 ; y:
   4522 0D                  233 	.byte	13
                            234 ; fields_count:
   4523 01                  235 	.byte	1
                            236 ; fields:
   4524 4F 2B               237 	.word	___compound_literal.27
                            238 	.globl	_swatch_11_1
   4526                     239 _swatch_11_1:
                            240 ; type:
   4526 01                  241 	.byte	1
                            242 ; position:
                            243 ; x:
   4527 07                  244 	.byte	7
                            245 ; y:
   4528 07                  246 	.byte	7
                            247 ; fields_count:
   4529 01                  248 	.byte	1
                            249 ; fields:
   452A 4F 2E               250 	.word	___compound_literal.28
                            251 	.globl	_swatch_13_0
   452C                     252 _swatch_13_0:
                            253 ; type:
   452C 01                  254 	.byte	1
                            255 ; position:
                            256 ; x:
   452D 06                  257 	.byte	6
                            258 ; y:
   452E 0C                  259 	.byte	12
                            260 ; fields_count:
   452F 02                  261 	.byte	2
                            262 ; fields:
   4530 4F 31               263 	.word	___compound_literal.29
   4532 4F 34               264 	.word	___compound_literal.30
                            265 	.globl	_swatch_13_1
   4534                     266 _swatch_13_1:
                            267 ; type:
   4534 01                  268 	.byte	1
                            269 ; position:
                            270 ; x:
   4535 00                  271 	.byte	0
                            272 ; y:
   4536 0D                  273 	.byte	13
                            274 ; fields_count:
   4537 02                  275 	.byte	2
                            276 ; fields:
   4538 4F 37               277 	.word	___compound_literal.31
   453A 4F 3A               278 	.word	___compound_literal.32
                            279 	.globl	_swatch_14_0
   453C                     280 _swatch_14_0:
                            281 ; type:
   453C 01                  282 	.byte	1
                            283 ; position:
                            284 ; x:
   453D 08                  285 	.byte	8
                            286 ; y:
   453E 0C                  287 	.byte	12
                            288 ; fields_count:
   453F 04                  289 	.byte	4
                            290 ; fields:
   4540 4F 3D               291 	.word	___compound_literal.33
   4542 4F 40               292 	.word	___compound_literal.34
   4544 4F 43               293 	.word	___compound_literal.35
   4546 4F 46               294 	.word	___compound_literal.36
                            295 	.globl	_swatch_14_1
   4548                     296 _swatch_14_1:
                            297 ; type:
   4548 00                  298 	.byte	0
                            299 ; position:
                            300 ; x:
   4549 06                  301 	.byte	6
                            302 ; y:
   454A 08                  303 	.byte	8
                            304 ; fields_count:
   454B 04                  305 	.byte	4
                            306 ; fields:
   454C 4F 49               307 	.word	___compound_literal.37
   454E 4F 4C               308 	.word	___compound_literal.38
   4550 4F 4F               309 	.word	___compound_literal.39
   4552 4F 52               310 	.word	___compound_literal.40
                            311 	.globl	_swatch_14_2
   4554                     312 _swatch_14_2:
                            313 ; type:
   4554 02                  314 	.byte	2
                            315 ; position:
                            316 ; x:
   4555 04                  317 	.byte	4
                            318 ; y:
   4556 07                  319 	.byte	7
                            320 ; fields_count:
   4557 02                  321 	.byte	2
                            322 ; fields:
   4558 4F 55               323 	.word	___compound_literal.41
   455A 4F 58               324 	.word	___compound_literal.42
                            325 	.globl	_swatch_14_3
   455C                     326 _swatch_14_3:
                            327 ; type:
   455C 00                  328 	.byte	0
                            329 ; position:
                            330 ; x:
   455D 02                  331 	.byte	2
                            332 ; y:
   455E 0B                  333 	.byte	11
                            334 ; fields_count:
   455F 02                  335 	.byte	2
                            336 ; fields:
   4560 4F 5B               337 	.word	___compound_literal.43
   4562 4F 5E               338 	.word	___compound_literal.44
                            339 	.globl	_swatch_14_4
   4564                     340 _swatch_14_4:
                            341 ; type:
   4564 00                  342 	.byte	0
                            343 ; position:
                            344 ; x:
   4565 00                  345 	.byte	0
                            346 ; y:
   4566 0B                  347 	.byte	11
                            348 ; fields_count:
   4567 02                  349 	.byte	2
                            350 ; fields:
   4568 4F 61               351 	.word	___compound_literal.45
   456A 4F 64               352 	.word	___compound_literal.46
                            353 	.globl	_level0
   456C                     354 LC0:
   456C 20 20 20 20 20 20   355 	.ascii	"                         bbb      bbbb      bbbb"
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 62 62
        62 62 20 20 20 20
        20 20 62 62 62 62
   459C 20 20 20 20 20 20   356 	.ascii	"      bbb       bbb      bbbb     bbbb      bebb"
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 62 62 62 62 20
        20 20 20 20 62 62
        62 62 20 20 20 20
        20 20 62 65 62 62
   45CC 20 20 20 20 20 20   357 	.ascii	"      bbbb       bb                             "
        62 62 62 62 20 20
        20 20 20 20 20 62
        62 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
   45FC 20 20 20 20 20 20   358 	.ascii	"      \0"
        00
   4603                     359 _level0:
                            360 ; geometry:
   4603 45 6C               361 	.word	LC0
                            362 ; start:
                            363 ; x:
   4605 06                  364 	.byte	6
                            365 ; y:
   4606 03                  366 	.byte	3
                            367 ; swatches_count:
   4607 00                  368 	.byte	0
                            369 	.globl	_level1
   4608                     370 LC1:
   4608 20 20 20 62 62 62   371 	.ascii	"   bbbbb     bbbbb     bbbsb     bbbbb      l   "
        62 62 20 20 20 20
        20 62 62 62 62 62
        20 20 20 20 20 62
        62 62 73 62 20 20
        20 20 20 62 62 62
        62 62 20 20 20 20
        20 20 6C 20 20 20
   4638 20 20 20 20 20 20   372 	.ascii	"      r        bbbbbb    bbbbbb    bbbbhb    bbb"
        72 20 20 20 20 20
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 62 62 62 62
        62 20 20 20 20 62
        62 62 62 68 62 20
        20 20 20 62 62 62
   4668 62 62 62 20 20 20   373 	.ascii	"bbb     l         r         bbbbb     bbbeb     "
        20 20 6C 20 20 20
        20 20 20 20 20 20
        72 20 20 20 20 20
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 62 62 62 65
        62 20 20 20 20 20
   4698 62 62 62 62 62 20   374 	.ascii	"bbbbb \0"
        00
   469F                     375 _level1:
                            376 ; geometry:
   469F 46 08               377 	.word	LC1
                            378 ; start:
                            379 ; x:
   46A1 04                  380 	.byte	4
                            381 ; y:
   46A2 01                  382 	.byte	1
                            383 ; swatches_count:
   46A3 02                  384 	.byte	2
                            385 ; swatches:
   46A4 44 B6               386 	.word	_swatch_1_0
   46A6 44 BE               387 	.word	_swatch_1_1
                            388 	.globl	_level2
   46A8                     389 LC2:
   46A8 20 20 20 62 62 62   390 	.ascii	"   bbbb      bbbb      bbbb      bbbb        b  "
        62 20 20 20 20 20
        20 62 62 62 62 20
        20 20 20 20 20 62
        62 62 62 20 20 20
        20 20 20 62 62 62
        62 20 20 20 20 20
        20 20 20 62 20 20
   46D8 20 20 20 20 20 20   391 	.ascii	"       b         bbb       bbb       bbb        "
        20 62 20 20 20 20
        20 20 20 20 20 62
        62 62 20 20 20 20
        20 20 20 62 62 62
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 20 20
   4708 20 62 20 20 20 20   392 	.ascii	" b         b     bbbbb    bbbbbb    bbeb      bb"
        20 20 20 20 20 62
        20 20 20 20 20 62
        62 62 62 62 20 20
        20 20 62 62 62 62
        62 62 20 20 20 20
        62 62 65 62 20 20
        20 20 20 20 62 62
   4738 62 62 20 20 20 20   393 	.ascii	"bb    \0"
        00
   473F                     394 _level2:
                            395 ; geometry:
   473F 46 A8               396 	.word	LC2
                            397 ; start:
                            398 ; x:
   4741 04                  399 	.byte	4
                            400 ; y:
   4742 01                  401 	.byte	1
                            402 ; swatches_count:
   4743 00                  403 	.byte	0
                            404 	.globl	_level3
   4744                     405 LC3:
   4744 20 20 62 62 62 62   406 	.ascii	"  bbbbb     bbbbb     bbbbb         bff        f"
        62 20 20 20 20 20
        62 62 62 62 62 20
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 20 20 20 20
        62 66 66 20 20 20
        20 20 20 20 20 66
   4774 66 20 62 62 62 62   407 	.ascii	"f bbbb   ff bebb   ff bbbb   ff   bb   ff   ff  "
        20 20 20 66 66 20
        62 65 62 62 20 20
        20 66 66 20 62 62
        62 62 20 20 20 66
        66 20 20 20 62 62
        20 20 20 66 66 20
        20 20 66 66 20 20
   47A4 62 66 66 20 66 66   408 	.ascii	"bff ffffbbb   ffffbbb   fbff      ffff          "
        66 66 62 62 62 20
        20 20 66 66 66 66
        62 62 62 20 20 20
        66 62 66 66 20 20
        20 20 20 20 66 66
        66 66 20 20 20 20
        20 20 20 20 20 20
   47D4 20 20 20 20 20 20   409 	.ascii	"      \0"
        00
   47DB                     410 _level3:
                            411 ; geometry:
   47DB 47 44               412 	.word	LC3
                            413 ; start:
                            414 ; x:
   47DD 03                  415 	.byte	3
                            416 ; y:
   47DE 01                  417 	.byte	1
                            418 ; swatches_count:
   47DF 00                  419 	.byte	0
                            420 	.globl	_level4
   47E0                     421 LC4:
   47E0 62 62 62 20 20 20   422 	.ascii	"bbb       beb  bbbb bbb  bbbb bb  bbsbb  b  bbbb"
        20 20 20 20 62 65
        62 20 20 62 62 62
        62 20 62 62 62 20
        20 62 62 62 62 20
        62 62 20 20 62 62
        73 62 62 20 20 62
        20 20 62 62 62 62
   4810 62 20 20 6B 20 20   423 	.ascii	"b  k  b   k  q  s   q  b  b   b  b  k   s  b  q "
        62 20 20 20 6B 20
        20 71 20 20 73 20
        20 20 71 20 20 62
        20 20 62 20 20 20
        62 20 20 62 20 20
        6B 20 20 20 73 20
        20 62 20 20 71 20
   4840 20 20 62 20 20 62   424 	.ascii	"  b  bbbb   b  bbbb   bb bbbb  bbb  bb   bbb  bs"
        62 62 62 20 20 20
        62 20 20 62 62 62
        62 20 20 20 62 62
        20 62 62 62 62 20
        20 62 62 62 20 20
        62 62 20 20 20 62
        62 62 20 20 62 73
   4870 20 20 20 62 62 62   425 	.ascii	"   bbb\0"
        00
   4877                     426 _level4:
                            427 ; geometry:
   4877 47 E0               428 	.word	LC4
                            429 ; start:
                            430 ; x:
   4879 08                  431 	.byte	8
                            432 ; y:
   487A 0D                  433 	.byte	13
                            434 ; swatches_count:
   487B 04                  435 	.byte	4
                            436 ; swatches:
   487C 44 C6               437 	.word	_swatch_4_0
   487E 44 CE               438 	.word	_swatch_4_1
   4880 44 D6               439 	.word	_swatch_4_2
   4882 44 DE               440 	.word	_swatch_4_3
                            441 	.globl	_level5
   4884                     442 LC5:
   4884 20 20 20 20 20 20   443 	.ascii	"      b         b         b         b       bbb "
        62 20 20 20 20 20
        20 20 20 20 62 20
        20 20 20 20 20 20
        20 20 62 20 20 20
        20 20 20 20 20 20
        62 20 20 20 20 20
        20 20 62 62 62 20
   48B4 20 20 20 20 20 20   444 	.ascii	"      bbbbbb bbbbb   bbbb      bbbb    bbbbbbb  "
        62 62 62 62 62 62
        20 62 62 62 62 62
        20 20 20 62 62 62
        62 20 20 20 20 20
        20 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 62 20 20
   48E4 20 62 62 62 20 62   445 	.ascii	" bbb bbb   bbb     bbb      bbbb      beb       "
        62 62 20 20 20 62
        62 62 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 62 62
        62 62 20 20 20 20
        20 20 62 65 62 20
        20 20 20 20 20 20
   4914 62 62 62 20 20 20   446 	.ascii	"bbb   \0"
        00
   491B                     447 _level5:
                            448 ; geometry:
   491B 48 84               449 	.word	LC5
                            450 ; start:
                            451 ; x:
   491D 06                  452 	.byte	6
                            453 ; y:
   491E 00                  454 	.byte	0
                            455 ; swatches_count:
   491F 00                  456 	.byte	0
                            457 	.globl	_level6
   4920                     458 LC6:
   4920 20 20 20 62 62 62   459 	.ascii	"   bbbb     bbbbb    bbbbbb    bl  b     b   b  "
        62 20 20 20 20 20
        62 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 6C 20 20 62
        20 20 20 20 20 62
        20 20 20 62 20 20
   4950 20 20 20 62 20 20   460 	.ascii	"   b   b     b   b     bbbbb       bbbbbb    bh "
        20 62 20 20 20 20
        20 62 20 20 20 62
        20 20 20 20 20 62
        62 62 62 62 20 20
        20 20 20 20 20 62
        62 62 62 62 62 20
        20 20 20 62 68 20
   4980 20 62 62 20 20 20   461 	.ascii	" bb        bb       bbb    bbbb      bbeb      b"
        20 20 20 20 20 62
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 62 62 62
        62 20 20 20 20 20
        20 62 62 65 62 20
        20 20 20 20 20 62
   49B0 62 62 62 20 20 20   462 	.ascii	"bbb   \0"
        00
   49B7                     463 _level6:
                            464 ; geometry:
   49B7 49 20               465 	.word	LC6
                            466 ; start:
                            467 ; x:
   49B9 05                  468 	.byte	5
                            469 ; y:
   49BA 01                  470 	.byte	1
                            471 ; swatches_count:
   49BB 01                  472 	.byte	1
                            473 ; swatches:
   49BC 44 E6               474 	.word	_swatch_6_0
                            475 	.globl	_level7
   49BE                     476 LC7:
   49BE 20 20 20 20 62 62   477 	.ascii	"    bbb       bbb       bbb       bbb       bvb "
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 76 62 20
   49EE 20 20 20 20 20 20   478 	.ascii	"      bbb                                  bbbbb"
        62 62 62 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 62 62 62 62 62
   4A1E 62 62 62 62 20 62   479 	.ascii	"bbbb bbbbbbbbb bbbbbbbbb    bbb       beb       "
        62 62 62 62 62 62
        62 62 20 62 62 62
        62 62 62 62 62 62
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 65 62 20
        20 20 20 20 20 20
   4A4E 62 62 62 20 20 20   480 	.ascii	"bbb   \0"
        00
   4A55                     481 _level7:
                            482 ; geometry:
   4A55 49 BE               483 	.word	LC7
                            484 ; start:
                            485 ; x:
   4A57 05                  486 	.byte	5
                            487 ; y:
   4A58 01                  488 	.byte	1
                            489 ; swatches_count:
   4A59 01                  490 	.byte	1
                            491 ; swatches:
   4A5A 44 EC               492 	.word	_swatch_7_0
                            493 	.globl	_level8
   4A5C                     494 LC8:
   4A5C 20 20 20 20 62 62   495 	.ascii	"    bbb       bbb       bbb       bbb       b   "
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 20 20 20
   4A8C 20 20 20 20 20 20   496 	.ascii	"      b       bbb       bebbb     bbb         b "
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 65 62 62 62 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 20 20 62 20
   4ABC 20 20 20 20 20 20   497 	.ascii	"        b         bbb       bbb       bvb       "
        20 20 62 20 20 20
        20 20 20 20 20 20
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 76 62 20
        20 20 20 20 20 20
   4AEC 62 62 62 20 20 20   498 	.ascii	"bbb   \0"
        00
   4AF3                     499 _level8:
                            500 ; geometry:
   4AF3 4A 5C               501 	.word	LC8
                            502 ; start:
                            503 ; x:
   4AF5 05                  504 	.byte	5
                            505 ; y:
   4AF6 01                  506 	.byte	1
                            507 ; swatches_count:
   4AF7 01                  508 	.byte	1
                            509 ; swatches:
   4AF8 44 F4               510 	.word	_swatch_8_0
                            511 	.globl	_level9
   4AFA                     512 LC9:
   4AFA 20 20 20 20 20 20   513 	.ascii	"                 bbb       beb       bbb        "
        20 20 20 20 20 20
        20 20 20 20 20 62
        62 62 20 20 20 20
        20 20 20 62 65 62
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 20 20
   4B2A 6C 20 62 62 20 20   514 	.ascii	"l bb      r sb      b  b      l  b      r bb    "
        20 20 20 20 72 20
        73 62 20 20 20 20
        20 20 62 20 20 62
        20 20 20 20 20 20
        6C 20 20 62 20 20
        20 20 20 20 72 20
        62 62 20 20 20 20
   4B5A 20 62 62 62 62 20   515 	.ascii	" bbbb     bbbbb     bbbbhbb  bbbbbbbbbbbllvb    "
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 62 62 62 62
        68 62 62 20 20 62
        62 62 62 62 62 62
        62 62 62 62 6C 6C
        76 62 20 20 20 20
   4B8A 20 20 20 20 62 62   516 	.ascii	"    bb\0"
        00
   4B91                     517 _level9:
                            518 ; geometry:
   4B91 4A FA               519 	.word	LC9
                            520 ; start:
                            521 ; x:
   4B93 08                  522 	.byte	8
                            523 ; y:
   4B94 0A                  524 	.byte	10
                            525 ; swatches_count:
   4B95 03                  526 	.byte	3
                            527 ; swatches:
   4B96 44 FC               528 	.word	_swatch_9_0
   4B98 45 04               529 	.word	_swatch_9_1
   4B9A 45 0C               530 	.word	_swatch_9_2
                            531 	.globl	_level10
   4B9C                     532 LC10:
   4B9C 20 20 20 20 20 20   533 	.ascii	"                        b         bbbbbb    b  b"
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        62 20 20 20 20 20
        20 20 20 20 62 62
        62 62 62 62 20 20
        20 20 62 20 20 62
   4BCC 65 62 20 20 20 20   534 	.ascii	"eb    b  bbb    b   kk bbbbbb    bbsbbb    bb   "
        62 20 20 62 62 62
        20 20 20 20 62 20
        20 20 6B 6B 20 62
        62 62 62 62 62 20
        20 20 20 62 62 73
        62 62 62 20 20 20
        20 62 62 20 20 20
   4BFC 62 20 20 20 62 62   535 	.ascii	"b   bbb   b   bb  bbb   bb  bbb    bbbb         "
        62 20 20 20 62 20
        20 20 62 62 20 20
        62 62 62 20 20 20
        62 62 20 20 62 62
        62 20 20 20 20 62
        62 62 62 20 20 20
        20 20 20 20 20 20
   4C2C 20 20 20 20 20 20   536 	.ascii	"      \0"
        00
   4C33                     537 _level10:
                            538 ; geometry:
   4C33 4B 9C               539 	.word	LC10
                            540 ; start:
                            541 ; x:
   4C35 04                  542 	.byte	4
                            543 ; y:
   4C36 02                  544 	.byte	2
                            545 ; swatches_count:
   4C37 01                  546 	.byte	1
                            547 ; swatches:
   4C38 45 18               548 	.word	_swatch_10_0
                            549 	.globl	_level11
   4C3A                     550 LC11:
   4C3A 20 20 20 20 20 20   551 	.ascii	"            bb        bbb       bbb       bbbbb "
        20 20 20 20 20 20
        62 62 20 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 62 62 62 62 20
   4C6A 20 20 20 20 20 20   552 	.ascii	"      beb   bb  bbbbb bbb  lbhb bbb   bbb   b   "
        62 65 62 20 20 20
        62 62 20 20 62 62
        62 62 62 20 62 62
        62 20 20 6C 62 68
        62 20 62 62 62 20
        20 20 62 62 62 20
        20 20 62 20 20 20
   4C9A 20 62 20 20 20 20   553 	.ascii	" b    bbb  b    bbbbbbb    bbbbbb    bb  lbh    "
        62 62 62 20 20 62
        20 20 20 20 62 62
        62 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 62 20 20 6C
        62 68 20 20 20 20
   4CCA 20 20 20 20 20 20   554 	.ascii	"      \0"
        00
   4CD1                     555 _level11:
                            556 ; geometry:
   4CD1 4C 3A               557 	.word	LC11
                            558 ; start:
                            559 ; x:
   4CD3 03                  560 	.byte	3
                            561 ; y:
   4CD4 03                  562 	.byte	3
                            563 ; swatches_count:
   4CD5 02                  564 	.byte	2
                            565 ; swatches:
   4CD6 45 20               566 	.word	_swatch_11_0
   4CD8 45 26               567 	.word	_swatch_11_1
                            568 	.globl	_level12
   4CDA                     569 LC12:
   4CDA 20 20 20 20 20 20   570 	.ascii	"              bbbbbb    bbbbbb  bbbbb  bbbb  f  "
        20 20 20 20 20 20
        20 20 62 62 62 62
        62 62 20 20 20 20
        62 62 62 62 62 62
        20 20 62 62 62 62
        62 20 20 62 62 62
        62 20 20 66 20 20
   4D0A 20 66 62 62 62 20   571 	.ascii	" fbbb  f   bbfffff   b fffbbb  b fbfbeb  bbfffbb"
        20 66 20 20 20 62
        62 66 66 66 66 66
        20 20 20 62 20 66
        66 66 62 62 62 20
        20 62 20 66 62 66
        62 65 62 20 20 62
        62 66 66 66 62 62
   4D3A 62 20 20 66 62 66   572 	.ascii	"b  fbfff     b ffb    bb   bbbbbbb     bbbbb    "
        66 66 20 20 20 20
        20 62 20 66 66 62
        20 20 20 20 62 62
        20 20 20 62 62 62
        62 62 62 62 20 20
        20 20 20 62 62 62
        62 62 20 20 20 20
   4D6A 20 62 62 62 20 20   573 	.ascii	" bbb  \0"
        00
   4D71                     574 _level12:
                            575 ; geometry:
   4D71 4C DA               576 	.word	LC12
                            577 ; start:
                            578 ; x:
   4D73 06                  579 	.byte	6
                            580 ; y:
   4D74 0D                  581 	.byte	13
                            582 ; swatches_count:
   4D75 00                  583 	.byte	0
                            584 	.globl	_level13
   4D76                     585 LC13:
   4D76 20 20 62 62 62 62   586 	.ascii	"  bbbbbb   bb   ll  bbb   rr  beb   bbb bbb   bb"
        62 62 20 20 20 62
        62 20 20 20 6C 6C
        20 20 62 62 62 20
        20 20 72 72 20 20
        62 65 62 20 20 20
        62 62 62 20 62 62
        62 20 20 20 62 62
   4DA6 62 20 20 20 20 20   587 	.ascii	"b       bbb        b         b  bbbb   bbbbbbb  "
        20 20 62 62 62 20
        20 20 20 20 20 20
        20 62 20 20 20 20
        20 20 20 20 20 62
        20 20 62 62 62 62
        20 20 20 62 62 62
        62 62 62 62 20 20
   4DD6 20 62 62 62 62 62   588 	.ascii	" bbbbbbb   bbbb  b   b  b  bbbhb  h  bbbbb      "
        62 62 20 20 20 62
        62 62 62 20 20 62
        20 20 20 62 20 20
        62 20 20 62 62 62
        68 62 20 20 68 20
        20 62 62 62 62 62
        20 20 20 20 20 20
   4E06 20 20 20 20 20 20   589 	.ascii	"      \0"
        00
   4E0D                     590 _level13:
                            591 ; geometry:
   4E0D 4D 76               592 	.word	LC13
                            593 ; start:
                            594 ; x:
   4E0F 07                  595 	.byte	7
                            596 ; y:
   4E10 04                  597 	.byte	4
                            598 ; swatches_count:
   4E11 02                  599 	.byte	2
                            600 ; swatches:
   4E12 45 2C               601 	.word	_swatch_13_0
   4E14 45 34               602 	.word	_swatch_13_1
                            603 	.globl	_level14
   4E16                     604 LC14:
   4E16 62 62 62 20 20 62   605 	.ascii	"bbb  bbb  bbbbbbbb  bbb   bl   b    br   b    bb"
        62 62 20 20 62 62
        62 62 62 62 62 62
        20 20 62 62 62 20
        20 20 62 6C 20 20
        20 62 20 20 20 20
        62 72 20 20 20 62
        20 20 20 20 62 62
   4E46 62 20 20 62 20 20   606 	.ascii	"b  b      k bbb     q bbbbv  bbbbbb   sbbb k    "
        20 20 20 20 6B 20
        62 62 62 20 20 20
        20 20 71 20 62 62
        62 62 76 20 20 62
        62 62 62 62 62 20
        20 20 73 62 62 62
        20 6B 20 20 20 20
   4E76 20 62 62 62 20 71   607 	.ascii	" bbb q      l sbs     r beb    bhbbbb    bbb    "
        20 20 20 20 20 20
        6C 20 73 62 73 20
        20 20 20 20 72 20
        62 65 62 20 20 20
        20 62 68 62 62 62
        62 20 20 20 20 62
        62 62 20 20 20 20
   4EA6 20 20 20 62 62 62   608 	.ascii	"   bbb\0"
        00
   4EAD                     609 _level14:
                            610 ; geometry:
   4EAD 4E 16               611 	.word	LC14
                            612 ; start:
                            613 ; x:
   4EAF 01                  614 	.byte	1
                            615 ; y:
   4EB0 01                  616 	.byte	1
                            617 ; swatches_count:
   4EB1 05                  618 	.byte	5
                            619 ; swatches:
   4EB2 45 3C               620 	.word	_swatch_14_0
   4EB4 45 48               621 	.word	_swatch_14_1
   4EB6 45 54               622 	.word	_swatch_14_2
   4EB8 45 5C               623 	.word	_swatch_14_3
   4EBA 45 64               624 	.word	_swatch_14_4
                            625 	.globl	_levels
   4EBC                     626 _levels:
   4EBC 46 03               627 	.word	_level0
   4EBE 46 9F               628 	.word	_level1
   4EC0 47 3F               629 	.word	_level2
   4EC2 47 DB               630 	.word	_level3
   4EC4 48 77               631 	.word	_level4
   4EC6 49 1B               632 	.word	_level5
   4EC8 49 B7               633 	.word	_level6
   4ECA 4A 55               634 	.word	_level7
   4ECC 4A F3               635 	.word	_level8
   4ECE 4B 91               636 	.word	_level9
   4ED0 4C 33               637 	.word	_level10
   4ED2 4C D1               638 	.word	_level11
   4ED4 4D 71               639 	.word	_level12
   4ED6 4E 0D               640 	.word	_level13
   4ED8 4E AD               641 	.word	_level14
   4EDA                     642 ___compound_literal.0:
                            643 ; action:
   4EDA 00                  644 	.byte	0
                            645 ; position:
                            646 ; x:
   4EDB 04                  647 	.byte	4
                            648 ; y:
   4EDC 0A                  649 	.byte	10
   4EDD                     650 ___compound_literal.1:
                            651 ; action:
   4EDD 00                  652 	.byte	0
                            653 ; position:
                            654 ; x:
   4EDE 04                  655 	.byte	4
                            656 ; y:
   4EDF 0B                  657 	.byte	11
   4EE0                     658 ___compound_literal.2:
                            659 ; action:
   4EE0 00                  660 	.byte	0
                            661 ; position:
                            662 ; x:
   4EE1 04                  663 	.byte	4
                            664 ; y:
   4EE2 04                  665 	.byte	4
   4EE3                     666 ___compound_literal.3:
                            667 ; action:
   4EE3 00                  668 	.byte	0
                            669 ; position:
                            670 ; x:
   4EE4 04                  671 	.byte	4
                            672 ; y:
   4EE5 05                  673 	.byte	5
   4EE6                     674 ___compound_literal.4:
                            675 ; action:
   4EE6 00                  676 	.byte	0
                            677 ; position:
                            678 ; x:
   4EE7 08                  679 	.byte	8
                            680 ; y:
   4EE8 06                  681 	.byte	6
   4EE9                     682 ___compound_literal.5:
                            683 ; action:
   4EE9 00                  684 	.byte	0
                            685 ; position:
                            686 ; x:
   4EEA 08                  687 	.byte	8
                            688 ; y:
   4EEB 05                  689 	.byte	5
   4EEC                     690 ___compound_literal.6:
                            691 ; action:
   4EEC 01                  692 	.byte	1
                            693 ; position:
                            694 ; x:
   4EED 01                  695 	.byte	1
                            696 ; y:
   4EEE 05                  697 	.byte	5
   4EEF                     698 ___compound_literal.7:
                            699 ; action:
   4EEF 01                  700 	.byte	1
                            701 ; position:
                            702 ; x:
   4EF0 01                  703 	.byte	1
                            704 ; y:
   4EF1 06                  705 	.byte	6
   4EF2                     706 ___compound_literal.8:
                            707 ; action:
   4EF2 02                  708 	.byte	2
                            709 ; position:
                            710 ; x:
   4EF3 01                  711 	.byte	1
                            712 ; y:
   4EF4 05                  713 	.byte	5
   4EF5                     714 ___compound_literal.9:
                            715 ; action:
   4EF5 02                  716 	.byte	2
                            717 ; position:
                            718 ; x:
   4EF6 01                  719 	.byte	1
                            720 ; y:
   4EF7 06                  721 	.byte	6
   4EF8                     722 ___compound_literal.10:
                            723 ; action:
   4EF8 00                  724 	.byte	0
                            725 ; position:
                            726 ; x:
   4EF9 01                  727 	.byte	1
                            728 ; y:
   4EFA 05                  729 	.byte	5
   4EFB                     730 ___compound_literal.11:
                            731 ; action:
   4EFB 00                  732 	.byte	0
                            733 ; position:
                            734 ; x:
   4EFC 01                  735 	.byte	1
                            736 ; y:
   4EFD 06                  737 	.byte	6
   4EFE                     738 ___compound_literal.12:
                            739 ; action:
   4EFE 00                  740 	.byte	0
                            741 ; position:
                            742 ; x:
   4EFF 02                  743 	.byte	2
                            744 ; y:
   4F00 03                  745 	.byte	3
   4F01                     746 ___compound_literal.13:
                            747 ; action:
   4F01 03                  748 	.byte	3
                            749 ; position:
                            750 ; x:
   4F02 08                  751 	.byte	8
                            752 ; y:
   4F03 0A                  753 	.byte	10
   4F04                     754 ___compound_literal.14:
                            755 ; action:
   4F04 04                  756 	.byte	4
                            757 ; position:
                            758 ; x:
   4F05 02                  759 	.byte	2
                            760 ; y:
   4F06 0A                  761 	.byte	10
   4F07                     762 ___compound_literal.15:
                            763 ; action:
   4F07 03                  764 	.byte	3
                            765 ; position:
                            766 ; x:
   4F08 05                  767 	.byte	5
                            768 ; y:
   4F09 0C                  769 	.byte	12
   4F0A                     770 ___compound_literal.16:
                            771 ; action:
   4F0A 04                  772 	.byte	4
                            773 ; position:
                            774 ; x:
   4F0B 05                  775 	.byte	5
                            776 ; y:
   4F0C 02                  777 	.byte	2
   4F0D                     778 ___compound_literal.17:
                            779 ; action:
   4F0D 03                  780 	.byte	3
                            781 ; position:
                            782 ; x:
   4F0E 08                  783 	.byte	8
                            784 ; y:
   4F0F 0D                  785 	.byte	13
   4F10                     786 ___compound_literal.18:
                            787 ; action:
   4F10 04                  788 	.byte	4
                            789 ; position:
                            790 ; x:
   4F11 08                  791 	.byte	8
                            792 ; y:
   4F12 0A                  793 	.byte	10
   4F13                     794 ___compound_literal.19:
                            795 ; action:
   4F13 00                  796 	.byte	0
                            797 ; position:
                            798 ; x:
   4F14 08                  799 	.byte	8
                            800 ; y:
   4F15 04                  801 	.byte	4
   4F16                     802 ___compound_literal.20:
                            803 ; action:
   4F16 00                  804 	.byte	0
                            805 ; position:
                            806 ; x:
   4F17 08                  807 	.byte	8
                            808 ; y:
   4F18 05                  809 	.byte	5
   4F19                     810 ___compound_literal.21:
                            811 ; action:
   4F19 00                  812 	.byte	0
                            813 ; position:
                            814 ; x:
   4F1A 08                  815 	.byte	8
                            816 ; y:
   4F1B 07                  817 	.byte	7
   4F1C                     818 ___compound_literal.22:
                            819 ; action:
   4F1C 00                  820 	.byte	0
                            821 ; position:
                            822 ; x:
   4F1D 08                  823 	.byte	8
                            824 ; y:
   4F1E 08                  825 	.byte	8
   4F1F                     826 ___compound_literal.23:
                            827 ; action:
   4F1F 00                  828 	.byte	0
                            829 ; position:
                            830 ; x:
   4F20 07                  831 	.byte	7
                            832 ; y:
   4F21 0D                  833 	.byte	13
   4F22                     834 ___compound_literal.24:
                            835 ; action:
   4F22 00                  836 	.byte	0
                            837 ; position:
                            838 ; x:
   4F23 06                  839 	.byte	6
                            840 ; y:
   4F24 0D                  841 	.byte	13
   4F25                     842 ___compound_literal.25:
                            843 ; action:
   4F25 02                  844 	.byte	2
                            845 ; position:
                            846 ; x:
   4F26 09                  847 	.byte	9
                            848 ; y:
   4F27 06                  849 	.byte	6
   4F28                     850 ___compound_literal.26:
                            851 ; action:
   4F28 02                  852 	.byte	2
                            853 ; position:
                            854 ; x:
   4F29 08                  855 	.byte	8
                            856 ; y:
   4F2A 06                  857 	.byte	6
   4F2B                     858 ___compound_literal.27:
                            859 ; action:
   4F2B 00                  860 	.byte	0
                            861 ; position:
                            862 ; x:
   4F2C 05                  863 	.byte	5
                            864 ; y:
   4F2D 07                  865 	.byte	7
   4F2E                     866 ___compound_literal.28:
                            867 ; action:
   4F2E 00                  868 	.byte	0
                            869 ; position:
                            870 ; x:
   4F2F 07                  871 	.byte	7
                            872 ; y:
   4F30 0D                  873 	.byte	13
   4F31                     874 ___compound_literal.29:
                            875 ; action:
   4F31 00                  876 	.byte	0
                            877 ; position:
                            878 ; x:
   4F32 07                  879 	.byte	7
                            880 ; y:
   4F33 01                  881 	.byte	1
   4F34                     882 ___compound_literal.30:
                            883 ; action:
   4F34 00                  884 	.byte	0
                            885 ; position:
                            886 ; x:
   4F35 07                  887 	.byte	7
                            888 ; y:
   4F36 02                  889 	.byte	2
   4F37                     890 ___compound_literal.31:
                            891 ; action:
   4F37 00                  892 	.byte	0
                            893 ; position:
                            894 ; x:
   4F38 06                  895 	.byte	6
                            896 ; y:
   4F39 01                  897 	.byte	1
   4F3A                     898 ___compound_literal.32:
                            899 ; action:
   4F3A 00                  900 	.byte	0
                            901 ; position:
                            902 ; x:
   4F3B 06                  903 	.byte	6
                            904 ; y:
   4F3C 02                  905 	.byte	2
   4F3D                     906 ___compound_literal.33:
                            907 ; action:
   4F3D 00                  908 	.byte	0
                            909 ; position:
                            910 ; x:
   4F3E 07                  911 	.byte	7
                            912 ; y:
   4F3F 02                  913 	.byte	2
   4F40                     914 ___compound_literal.34:
                            915 ; action:
   4F40 00                  916 	.byte	0
                            917 ; position:
                            918 ; x:
   4F41 07                  919 	.byte	7
                            920 ; y:
   4F42 03                  921 	.byte	3
   4F43                     922 ___compound_literal.35:
                            923 ; action:
   4F43 00                  924 	.byte	0
                            925 ; position:
                            926 ; x:
   4F44 08                  927 	.byte	8
                            928 ; y:
   4F45 05                  929 	.byte	5
   4F46                     930 ___compound_literal.36:
                            931 ; action:
   4F46 00                  932 	.byte	0
                            933 ; position:
                            934 ; x:
   4F47 08                  935 	.byte	8
                            936 ; y:
   4F48 06                  937 	.byte	6
   4F49                     938 ___compound_literal.37:
                            939 ; action:
   4F49 00                  940 	.byte	0
                            941 ; position:
                            942 ; x:
   4F4A 08                  943 	.byte	8
                            944 ; y:
   4F4B 05                  945 	.byte	5
   4F4C                     946 ___compound_literal.38:
                            947 ; action:
   4F4C 00                  948 	.byte	0
                            949 ; position:
                            950 ; x:
   4F4D 08                  951 	.byte	8
                            952 ; y:
   4F4E 06                  953 	.byte	6
   4F4F                     954 ___compound_literal.39:
                            955 ; action:
   4F4F 00                  956 	.byte	0
                            957 ; position:
                            958 ; x:
   4F50 08                  959 	.byte	8
                            960 ; y:
   4F51 0A                  961 	.byte	10
   4F52                     962 ___compound_literal.40:
                            963 ; action:
   4F52 00                  964 	.byte	0
                            965 ; position:
                            966 ; x:
   4F53 08                  967 	.byte	8
                            968 ; y:
   4F54 0B                  969 	.byte	11
   4F55                     970 ___compound_literal.41:
                            971 ; action:
   4F55 03                  972 	.byte	3
                            973 ; position:
                            974 ; x:
   4F56 08                  975 	.byte	8
                            976 ; y:
   4F57 0D                  977 	.byte	13
   4F58                     978 ___compound_literal.42:
                            979 ; action:
   4F58 04                  980 	.byte	4
                            981 ; position:
                            982 ; x:
   4F59 01                  983 	.byte	1
                            984 ; y:
   4F5A 01                  985 	.byte	1
   4F5B                     986 ___compound_literal.43:
                            987 ; action:
   4F5B 02                  988 	.byte	2
                            989 ; position:
                            990 ; x:
   4F5C 01                  991 	.byte	1
                            992 ; y:
   4F5D 09                  993 	.byte	9
   4F5E                     994 ___compound_literal.44:
                            995 ; action:
   4F5E 02                  996 	.byte	2
                            997 ; position:
                            998 ; x:
   4F5F 01                  999 	.byte	1
                           1000 ; y:
   4F60 0A                 1001 	.byte	10
   4F61                    1002 ___compound_literal.45:
                           1003 ; action:
   4F61 02                 1004 	.byte	2
                           1005 ; position:
                           1006 ; x:
   4F62 01                 1007 	.byte	1
                           1008 ; y:
   4F63 09                 1009 	.byte	9
   4F64                    1010 ___compound_literal.46:
                           1011 ; action:
   4F64 02                 1012 	.byte	2
                           1013 ; position:
                           1014 ; x:
   4F65 01                 1015 	.byte	1
                           1016 ; y:
   4F66 0A                 1017 	.byte	10
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 LC0                00B9 R   |   2 LC1                0155 R
  2 LC10               06E9 R   |   2 LC11               0787 R
  2 LC12               0827 R   |   2 LC13               08C3 R
  2 LC14               0963 R   |   2 LC2                01F5 R
  2 LC3                0291 R   |   2 LC4                032D R
  2 LC5                03D1 R   |   2 LC6                046D R
  2 LC7                050B R   |   2 LC8                05A9 R
  2 LC9                0647 R   |   2 ___compound_li     0A27 R
  2 ___compound_li     0A2A R   |   2 ___compound_li     0A45 R
  2 ___compound_li     0A48 R   |   2 ___compound_li     0A4B R
  2 ___compound_li     0A4E R   |   2 ___compound_li     0A51 R
  2 ___compound_li     0A54 R   |   2 ___compound_li     0A57 R
  2 ___compound_li     0A5A R   |   2 ___compound_li     0A5D R
  2 ___compound_li     0A60 R   |   2 ___compound_li     0A2D R
  2 ___compound_li     0A63 R   |   2 ___compound_li     0A66 R
  2 ___compound_li     0A69 R   |   2 ___compound_li     0A6C R
  2 ___compound_li     0A6F R   |   2 ___compound_li     0A72 R
  2 ___compound_li     0A75 R   |   2 ___compound_li     0A78 R
  2 ___compound_li     0A7B R   |   2 ___compound_li     0A7E R
  2 ___compound_li     0A30 R   |   2 ___compound_li     0A81 R
  2 ___compound_li     0A84 R   |   2 ___compound_li     0A87 R
  2 ___compound_li     0A8A R   |   2 ___compound_li     0A8D R
  2 ___compound_li     0A90 R   |   2 ___compound_li     0A93 R
  2 ___compound_li     0A96 R   |   2 ___compound_li     0A99 R
  2 ___compound_li     0A9C R   |   2 ___compound_li     0A33 R
  2 ___compound_li     0A9F R   |   2 ___compound_li     0AA2 R
  2 ___compound_li     0AA5 R   |   2 ___compound_li     0AA8 R
  2 ___compound_li     0AAB R   |   2 ___compound_li     0AAE R
  2 ___compound_li     0AB1 R   |   2 ___compound_li     0A36 R
  2 ___compound_li     0A39 R   |   2 ___compound_li     0A3C R
  2 ___compound_li     0A3F R   |   2 ___compound_li     0A42 R
  2 _level0            0150 GR  |   2 _level1            01EC GR
  2 _level10           0780 GR  |   2 _level11           081E GR
  2 _level12           08BE GR  |   2 _level13           095A GR
  2 _level14           09FA GR  |   2 _level2            028C GR
  2 _level3            0328 GR  |   2 _level4            03C4 GR
  2 _level5            0468 GR  |   2 _level6            0504 GR
  2 _level7            05A2 GR  |   2 _level8            0640 GR
  2 _level9            06DE GR  |   2 _levelCount        0000 GR
  2 _levelOffset       0001 GR  |   2 _levels            0A09 GR
  2 _nextBank          0002 GR  |   2 _swatch_10_0       0065 GR
  2 _swatch_11_0       006D GR  |   2 _swatch_11_1       0073 GR
  2 _swatch_13_0       0079 GR  |   2 _swatch_13_1       0081 GR
  2 _swatch_14_0       0089 GR  |   2 _swatch_14_1       0095 GR
  2 _swatch_14_2       00A1 GR  |   2 _swatch_14_3       00A9 GR
  2 _swatch_14_4       00B1 GR  |   2 _swatch_1_0        0003 GR
  2 _swatch_1_1        000B GR  |   2 _swatch_4_0        0013 GR
  2 _swatch_4_1        001B GR  |   2 _swatch_4_2        0023 GR
  2 _swatch_4_3        002B GR  |   2 _swatch_6_0        0033 GR
  2 _swatch_7_0        0039 GR  |   2 _swatch_8_0        0041 GR
  2 _swatch_9_0        0049 GR  |   2 _swatch_9_1        0051 GR
  2 _swatch_9_2        0059 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  AB4   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

