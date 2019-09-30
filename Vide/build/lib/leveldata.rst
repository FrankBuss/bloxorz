                              1 ;;; gcc for m6809 : Sep 13 2017 10:25:42
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mint8
                              5 	.module	leveldata.enr.c
                              6 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ; 	compiled by GNU C version 5.4.0 20160609, GMP version 4.3.2, MPFR version 2.4.2.
                              8 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ;  -fno-time-report -I/home/frank/bin/Vide/C/PeerC/vectrex/include
                             12 ;  -D__RUM_INLINE=1 -DOMMIT_FRAMEPOINTER=1
                             13 ;  /home/frank/bin/Vide/../../data/projects/bloxorz/Vide/source/leveldata.enr.c
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
                             31 	.globl _levelCount
                             32 	.area .text
   547F                      33 _levelCount:
   547F 0F                   34 	.byte	15
                             35 	.globl _levelOffset
   5480                      36 _levelOffset:
   5480 01                   37 	.byte	1
                             38 	.globl _nextBank
   5481                      39 _nextBank:
   5481 01                   40 	.byte	1
                             41 	.globl _swatch_1_0
   5482                      42 _swatch_1_0:
                             43 ;  type:
   5482 01                   44 	.byte	1
                             45 ;  position:
                             46 ;  x:
   5483 07                   47 	.byte	7
                             48 ;  y:
   5484 08                   49 	.byte	8
                             50 ;  fields_count:
   5485 02                   51 	.byte	2
                             52 ;  fields:
   5486 5E A6                53 	.word	___compound_literal.0
   5488 5E A9                54 	.word	___compound_literal.1
                             55 	.globl _swatch_1_1
   548A                      56 _swatch_1_1:
                             57 ;  type:
   548A 00                   58 	.byte	0
                             59 ;  position:
                             60 ;  x:
   548B 06                   61 	.byte	6
                             62 ;  y:
   548C 02                   63 	.byte	2
                             64 ;  fields_count:
   548D 02                   65 	.byte	2
                             66 ;  fields:
   548E 5E AC                67 	.word	___compound_literal.2
   5490 5E AF                68 	.word	___compound_literal.3
                             69 	.globl _swatch_4_0
   5492                      70 _swatch_4_0:
                             71 ;  type:
   5492 00                   72 	.byte	0
                             73 ;  position:
                             74 ;  x:
   5493 08                   75 	.byte	8
                             76 ;  y:
   5494 08                   77 	.byte	8
                             78 ;  fields_count:
   5495 02                   79 	.byte	2
                             80 ;  fields:
   5496 5E B2                81 	.word	___compound_literal.4
   5498 5E B5                82 	.word	___compound_literal.5
                             83 	.globl _swatch_4_1
   549A                      84 _swatch_4_1:
                             85 ;  type:
   549A 00                   86 	.byte	0
                             87 ;  position:
                             88 ;  x:
   549B 06                   89 	.byte	6
                             90 ;  y:
   549C 03                   91 	.byte	3
                             92 ;  fields_count:
   549D 02                   93 	.byte	2
                             94 ;  fields:
   549E 5E B8                95 	.word	___compound_literal.6
   54A0 5E BB                96 	.word	___compound_literal.7
                             97 	.globl _swatch_4_2
   54A2                      98 _swatch_4_2:
                             99 ;  type:
   54A2 00                  100 	.byte	0
                            101 ;  position:
                            102 ;  x:
   54A3 04                  103 	.byte	4
                            104 ;  y:
   54A4 06                  105 	.byte	6
                            106 ;  fields_count:
   54A5 02                  107 	.byte	2
                            108 ;  fields:
   54A6 5E BE               109 	.word	___compound_literal.8
   54A8 5E C1               110 	.word	___compound_literal.9
                            111 	.globl _swatch_4_3
   54AA                     112 _swatch_4_3:
                            113 ;  type:
   54AA 00                  114 	.byte	0
                            115 ;  position:
                            116 ;  x:
   54AB 03                  117 	.byte	3
                            118 ;  y:
   54AC 0E                  119 	.byte	14
                            120 ;  fields_count:
   54AD 02                  121 	.byte	2
                            122 ;  fields:
   54AE 5E C4               123 	.word	___compound_literal.10
   54B0 5E C7               124 	.word	___compound_literal.11
                            125 	.globl _swatch_6_0
   54B2                     126 _swatch_6_0:
                            127 ;  type:
   54B2 01                  128 	.byte	1
                            129 ;  position:
                            130 ;  x:
   54B3 04                  131 	.byte	4
                            132 ;  y:
   54B4 09                  133 	.byte	9
                            134 ;  fields_count:
   54B5 01                  135 	.byte	1
                            136 ;  fields:
   54B6 5E CA               137 	.word	___compound_literal.12
                            138 	.globl _swatch_7_0
   54B8                     139 _swatch_7_0:
                            140 ;  type:
   54B8 02                  141 	.byte	2
                            142 ;  position:
                            143 ;  x:
   54B9 05                  144 	.byte	5
                            145 ;  y:
   54BA 04                  146 	.byte	4
                            147 ;  fields_count:
   54BB 02                  148 	.byte	2
                            149 ;  fields:
   54BC 5E CD               150 	.word	___compound_literal.13
   54BE 5E D0               151 	.word	___compound_literal.14
                            152 	.globl _swatch_8_0
   54C0                     153 _swatch_8_0:
                            154 ;  type:
   54C0 02                  155 	.byte	2
                            156 ;  position:
                            157 ;  x:
   54C1 05                  158 	.byte	5
                            159 ;  y:
   54C2 0D                  160 	.byte	13
                            161 ;  fields_count:
   54C3 02                  162 	.byte	2
                            163 ;  fields:
   54C4 5E D3               164 	.word	___compound_literal.15
   54C6 5E D6               165 	.word	___compound_literal.16
                            166 	.globl _swatch_9_0
   54C8                     167 _swatch_9_0:
                            168 ;  type:
   54C8 02                  169 	.byte	2
                            170 ;  position:
                            171 ;  x:
   54C9 08                  172 	.byte	8
                            173 ;  y:
   54CA 0D                  174 	.byte	13
                            175 ;  fields_count:
   54CB 02                  176 	.byte	2
                            177 ;  fields:
   54CC 5E D9               178 	.word	___compound_literal.17
   54CE 5E DC               179 	.word	___compound_literal.18
                            180 	.globl _swatch_9_1
   54D0                     181 _swatch_9_1:
                            182 ;  type:
   54D0 00                  183 	.byte	0
                            184 ;  position:
                            185 ;  x:
   54D1 00                  186 	.byte	0
                            187 ;  y:
   54D2 06                  188 	.byte	6
                            189 ;  fields_count:
   54D3 02                  190 	.byte	2
                            191 ;  fields:
   54D4 5E DF               192 	.word	___compound_literal.19
   54D6 5E E2               193 	.word	___compound_literal.20
                            194 	.globl _swatch_9_2
   54D8                     195 _swatch_9_2:
                            196 ;  type:
   54D8 01                  197 	.byte	1
                            198 ;  position:
                            199 ;  x:
   54D9 00                  200 	.byte	0
                            201 ;  y:
   54DA 0C                  202 	.byte	12
                            203 ;  fields_count:
   54DB 04                  204 	.byte	4
                            205 ;  fields:
   54DC 5E E5               206 	.word	___compound_literal.21
   54DE 5E E8               207 	.word	___compound_literal.22
   54E0 5E EB               208 	.word	___compound_literal.23
   54E2 5E EE               209 	.word	___compound_literal.24
                            210 	.globl _swatch_10_0
   54E4                     211 _swatch_10_0:
                            212 ;  type:
   54E4 00                  213 	.byte	0
                            214 ;  position:
                            215 ;  x:
   54E5 03                  216 	.byte	3
                            217 ;  y:
   54E6 08                  218 	.byte	8
                            219 ;  fields_count:
   54E7 02                  220 	.byte	2
                            221 ;  fields:
   54E8 5E F1               222 	.word	___compound_literal.25
   54EA 5E F4               223 	.word	___compound_literal.26
                            224 	.globl _swatch_11_0
   54EC                     225 _swatch_11_0:
                            226 ;  type:
   54EC 01                  227 	.byte	1
                            228 ;  position:
                            229 ;  x:
   54ED 09                  230 	.byte	9
                            231 ;  y:
   54EE 0D                  232 	.byte	13
                            233 ;  fields_count:
   54EF 01                  234 	.byte	1
                            235 ;  fields:
   54F0 5E F7               236 	.word	___compound_literal.27
                            237 	.globl _swatch_11_1
   54F2                     238 _swatch_11_1:
                            239 ;  type:
   54F2 01                  240 	.byte	1
                            241 ;  position:
                            242 ;  x:
   54F3 07                  243 	.byte	7
                            244 ;  y:
   54F4 07                  245 	.byte	7
                            246 ;  fields_count:
   54F5 01                  247 	.byte	1
                            248 ;  fields:
   54F6 5E FA               249 	.word	___compound_literal.28
                            250 	.globl _swatch_13_0
   54F8                     251 _swatch_13_0:
                            252 ;  type:
   54F8 01                  253 	.byte	1
                            254 ;  position:
                            255 ;  x:
   54F9 06                  256 	.byte	6
                            257 ;  y:
   54FA 0C                  258 	.byte	12
                            259 ;  fields_count:
   54FB 02                  260 	.byte	2
                            261 ;  fields:
   54FC 5E FD               262 	.word	___compound_literal.29
   54FE 5F 00               263 	.word	___compound_literal.30
                            264 	.globl _swatch_13_1
   5500                     265 _swatch_13_1:
                            266 ;  type:
   5500 01                  267 	.byte	1
                            268 ;  position:
                            269 ;  x:
   5501 00                  270 	.byte	0
                            271 ;  y:
   5502 0D                  272 	.byte	13
                            273 ;  fields_count:
   5503 02                  274 	.byte	2
                            275 ;  fields:
   5504 5F 03               276 	.word	___compound_literal.31
   5506 5F 06               277 	.word	___compound_literal.32
                            278 	.globl _swatch_14_0
   5508                     279 _swatch_14_0:
                            280 ;  type:
   5508 01                  281 	.byte	1
                            282 ;  position:
                            283 ;  x:
   5509 08                  284 	.byte	8
                            285 ;  y:
   550A 0C                  286 	.byte	12
                            287 ;  fields_count:
   550B 04                  288 	.byte	4
                            289 ;  fields:
   550C 5F 09               290 	.word	___compound_literal.33
   550E 5F 0C               291 	.word	___compound_literal.34
   5510 5F 0F               292 	.word	___compound_literal.35
   5512 5F 12               293 	.word	___compound_literal.36
                            294 	.globl _swatch_14_1
   5514                     295 _swatch_14_1:
                            296 ;  type:
   5514 00                  297 	.byte	0
                            298 ;  position:
                            299 ;  x:
   5515 06                  300 	.byte	6
                            301 ;  y:
   5516 08                  302 	.byte	8
                            303 ;  fields_count:
   5517 04                  304 	.byte	4
                            305 ;  fields:
   5518 5F 15               306 	.word	___compound_literal.37
   551A 5F 18               307 	.word	___compound_literal.38
   551C 5F 1B               308 	.word	___compound_literal.39
   551E 5F 1E               309 	.word	___compound_literal.40
                            310 	.globl _swatch_14_2
   5520                     311 _swatch_14_2:
                            312 ;  type:
   5520 02                  313 	.byte	2
                            314 ;  position:
                            315 ;  x:
   5521 04                  316 	.byte	4
                            317 ;  y:
   5522 07                  318 	.byte	7
                            319 ;  fields_count:
   5523 02                  320 	.byte	2
                            321 ;  fields:
   5524 5F 21               322 	.word	___compound_literal.41
   5526 5F 24               323 	.word	___compound_literal.42
                            324 	.globl _swatch_14_3
   5528                     325 _swatch_14_3:
                            326 ;  type:
   5528 00                  327 	.byte	0
                            328 ;  position:
                            329 ;  x:
   5529 02                  330 	.byte	2
                            331 ;  y:
   552A 0B                  332 	.byte	11
                            333 ;  fields_count:
   552B 02                  334 	.byte	2
                            335 ;  fields:
   552C 5F 27               336 	.word	___compound_literal.43
   552E 5F 2A               337 	.word	___compound_literal.44
                            338 	.globl _swatch_14_4
   5530                     339 _swatch_14_4:
                            340 ;  type:
   5530 00                  341 	.byte	0
                            342 ;  position:
                            343 ;  x:
   5531 00                  344 	.byte	0
                            345 ;  y:
   5532 0B                  346 	.byte	11
                            347 ;  fields_count:
   5533 02                  348 	.byte	2
                            349 ;  fields:
   5534 5F 2D               350 	.word	___compound_literal.45
   5536 5F 30               351 	.word	___compound_literal.46
                            352 	.globl _level0
   5538                     353 LC0:
   5538 20 20 20 20 20 20   354 	.ascii "                         bbb      bbbb      bbbb"
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 62 62
        62 62 20 20 20 20
        20 20 62 62 62 62
   5568 20 20 20 20 20 20   355 	.ascii "      bbb       bbb      bbbb     bbbb      bebb"
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 62 62 62 62 20
        20 20 20 20 62 62
        62 62 20 20 20 20
        20 20 62 65 62 62
   5598 20 20 20 20 20 20   356 	.ascii "      bbbb       bb                             "
        62 62 62 62 20 20
        20 20 20 20 20 62
        62 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
   55C8 20 20 20 20 20 20   357 	.ascii "      \0"
        00
   55CF                     358 _level0:
                            359 ;  geometry:
   55CF 55 38               360 	.word	LC0
                            361 ;  start:
                            362 ;  x:
   55D1 06                  363 	.byte	6
                            364 ;  y:
   55D2 03                  365 	.byte	3
                            366 ;  swatches_count:
   55D3 00                  367 	.byte	0
                            368 	.globl _level1
   55D4                     369 LC1:
   55D4 20 20 20 62 62 62   370 	.ascii "   bbbbb     bbbbb     bbbsb     bbbbb      l   "
        62 62 20 20 20 20
        20 62 62 62 62 62
        20 20 20 20 20 62
        62 62 73 62 20 20
        20 20 20 62 62 62
        62 62 20 20 20 20
        20 20 6C 20 20 20
   5604 20 20 20 20 20 20   371 	.ascii "      r        bbbbbb    bbbbbb    bbbbhb    bbb"
        72 20 20 20 20 20
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 62 62 62 62
        62 20 20 20 20 62
        62 62 62 68 62 20
        20 20 20 62 62 62
   5634 62 62 62 20 20 20   372 	.ascii "bbb     l         r         bbbbb     bbbeb     "
        20 20 6C 20 20 20
        20 20 20 20 20 20
        72 20 20 20 20 20
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 62 62 62 65
        62 20 20 20 20 20
   5664 62 62 62 62 62 20   373 	.ascii "bbbbb \0"
        00
   566B                     374 _level1:
                            375 ;  geometry:
   566B 55 D4               376 	.word	LC1
                            377 ;  start:
                            378 ;  x:
   566D 04                  379 	.byte	4
                            380 ;  y:
   566E 01                  381 	.byte	1
                            382 ;  swatches_count:
   566F 02                  383 	.byte	2
                            384 ;  swatches:
   5670 54 82               385 	.word	_swatch_1_0
   5672 54 8A               386 	.word	_swatch_1_1
                            387 	.globl _level2
   5674                     388 LC2:
   5674 20 20 20 62 62 62   389 	.ascii "   bbbb      bbbb      bbbb      bbbb        b  "
        62 20 20 20 20 20
        20 62 62 62 62 20
        20 20 20 20 20 62
        62 62 62 20 20 20
        20 20 20 62 62 62
        62 20 20 20 20 20
        20 20 20 62 20 20
   56A4 20 20 20 20 20 20   390 	.ascii "       b         bbb       bbb       bbb        "
        20 62 20 20 20 20
        20 20 20 20 20 62
        62 62 20 20 20 20
        20 20 20 62 62 62
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 20 20
   56D4 20 62 20 20 20 20   391 	.ascii " b         b     bbbbb    bbbbbb    bbeb      bb"
        20 20 20 20 20 62
        20 20 20 20 20 62
        62 62 62 62 20 20
        20 20 62 62 62 62
        62 62 20 20 20 20
        62 62 65 62 20 20
        20 20 20 20 62 62
   5704 62 62 20 20 20 20   392 	.ascii "bb    \0"
        00
   570B                     393 _level2:
                            394 ;  geometry:
   570B 56 74               395 	.word	LC2
                            396 ;  start:
                            397 ;  x:
   570D 04                  398 	.byte	4
                            399 ;  y:
   570E 01                  400 	.byte	1
                            401 ;  swatches_count:
   570F 00                  402 	.byte	0
                            403 	.globl _level3
   5710                     404 LC3:
   5710 20 20 62 62 62 62   405 	.ascii "  bbbbb     bbbbb     bbbbb         bff        f"
        62 20 20 20 20 20
        62 62 62 62 62 20
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 20 20 20 20
        62 66 66 20 20 20
        20 20 20 20 20 66
   5740 66 20 62 62 62 62   406 	.ascii "f bbbb   ff bebb   ff bbbb   ff   bb   ff   ff  "
        20 20 20 66 66 20
        62 65 62 62 20 20
        20 66 66 20 62 62
        62 62 20 20 20 66
        66 20 20 20 62 62
        20 20 20 66 66 20
        20 20 66 66 20 20
   5770 62 66 66 20 66 66   407 	.ascii "bff ffffbbb   ffffbbb   fbff      ffff          "
        66 66 62 62 62 20
        20 20 66 66 66 66
        62 62 62 20 20 20
        66 62 66 66 20 20
        20 20 20 20 66 66
        66 66 20 20 20 20
        20 20 20 20 20 20
   57A0 20 20 20 20 20 20   408 	.ascii "      \0"
        00
   57A7                     409 _level3:
                            410 ;  geometry:
   57A7 57 10               411 	.word	LC3
                            412 ;  start:
                            413 ;  x:
   57A9 03                  414 	.byte	3
                            415 ;  y:
   57AA 01                  416 	.byte	1
                            417 ;  swatches_count:
   57AB 00                  418 	.byte	0
                            419 	.globl _level4
   57AC                     420 LC4:
   57AC 62 62 62 20 20 20   421 	.ascii "bbb       beb  bbbb bbb  bbbb bb  bbsbb  b  bbbb"
        20 20 20 20 62 65
        62 20 20 62 62 62
        62 20 62 62 62 20
        20 62 62 62 62 20
        62 62 20 20 62 62
        73 62 62 20 20 62
        20 20 62 62 62 62
   57DC 62 20 20 6B 20 20   422 	.ascii "b  k  b   k  q  s   q  b  b   b  b  k   s  b  q "
        62 20 20 20 6B 20
        20 71 20 20 73 20
        20 20 71 20 20 62
        20 20 62 20 20 20
        62 20 20 62 20 20
        6B 20 20 20 73 20
        20 62 20 20 71 20
   580C 20 20 62 20 20 62   423 	.ascii "  b  bbbb   b  bbbb   bb bbbb  bbb  bb   bbb  bs"
        62 62 62 20 20 20
        62 20 20 62 62 62
        62 20 20 20 62 62
        20 62 62 62 62 20
        20 62 62 62 20 20
        62 62 20 20 20 62
        62 62 20 20 62 73
   583C 20 20 20 62 62 62   424 	.ascii "   bbb\0"
        00
   5843                     425 _level4:
                            426 ;  geometry:
   5843 57 AC               427 	.word	LC4
                            428 ;  start:
                            429 ;  x:
   5845 08                  430 	.byte	8
                            431 ;  y:
   5846 0D                  432 	.byte	13
                            433 ;  swatches_count:
   5847 04                  434 	.byte	4
                            435 ;  swatches:
   5848 54 92               436 	.word	_swatch_4_0
   584A 54 9A               437 	.word	_swatch_4_1
   584C 54 A2               438 	.word	_swatch_4_2
   584E 54 AA               439 	.word	_swatch_4_3
                            440 	.globl _level5
   5850                     441 LC5:
   5850 20 20 20 20 20 20   442 	.ascii "      b         b         b         b       bbb "
        62 20 20 20 20 20
        20 20 20 20 62 20
        20 20 20 20 20 20
        20 20 62 20 20 20
        20 20 20 20 20 20
        62 20 20 20 20 20
        20 20 62 62 62 20
   5880 20 20 20 20 20 20   443 	.ascii "      bbbbbb bbbbb   bbbb      bbbb    bbbbbbb  "
        62 62 62 62 62 62
        20 62 62 62 62 62
        20 20 20 62 62 62
        62 20 20 20 20 20
        20 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 62 20 20
   58B0 20 62 62 62 20 62   444 	.ascii " bbb bbb   bbb     bbb      bbbb      beb       "
        62 62 20 20 20 62
        62 62 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 62 62
        62 62 20 20 20 20
        20 20 62 65 62 20
        20 20 20 20 20 20
   58E0 62 62 62 20 20 20   445 	.ascii "bbb   \0"
        00
   58E7                     446 _level5:
                            447 ;  geometry:
   58E7 58 50               448 	.word	LC5
                            449 ;  start:
                            450 ;  x:
   58E9 06                  451 	.byte	6
                            452 ;  y:
   58EA 00                  453 	.byte	0
                            454 ;  swatches_count:
   58EB 00                  455 	.byte	0
                            456 	.globl _level6
   58EC                     457 LC6:
   58EC 20 20 20 62 62 62   458 	.ascii "   bbbb     bbbbb    bbbbbb    bl  b     b   b  "
        62 20 20 20 20 20
        62 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 6C 20 20 62
        20 20 20 20 20 62
        20 20 20 62 20 20
   591C 20 20 20 62 20 20   459 	.ascii "   b   b     b   b     bbbbb       bbbbbb    bh "
        20 62 20 20 20 20
        20 62 20 20 20 62
        20 20 20 20 20 62
        62 62 62 62 20 20
        20 20 20 20 20 62
        62 62 62 62 62 20
        20 20 20 62 68 20
   594C 20 62 62 20 20 20   460 	.ascii " bb        bb       bbb    bbbb      bbeb      b"
        20 20 20 20 20 62
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 62 62 62
        62 20 20 20 20 20
        20 62 62 65 62 20
        20 20 20 20 20 62
   597C 62 62 62 20 20 20   461 	.ascii "bbb   \0"
        00
   5983                     462 _level6:
                            463 ;  geometry:
   5983 58 EC               464 	.word	LC6
                            465 ;  start:
                            466 ;  x:
   5985 05                  467 	.byte	5
                            468 ;  y:
   5986 01                  469 	.byte	1
                            470 ;  swatches_count:
   5987 01                  471 	.byte	1
                            472 ;  swatches:
   5988 54 B2               473 	.word	_swatch_6_0
                            474 	.globl _level7
   598A                     475 LC7:
   598A 20 20 20 20 62 62   476 	.ascii "    bbb       bbb       bbb       bbb       bvb "
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 76 62 20
   59BA 20 20 20 20 20 20   477 	.ascii "      bbb                                  bbbbb"
        62 62 62 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 62 62 62 62 62
   59EA 62 62 62 62 20 62   478 	.ascii "bbbb bbbbbbbbb bbbbbbbbb    bbb       beb       "
        62 62 62 62 62 62
        62 62 20 62 62 62
        62 62 62 62 62 62
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 65 62 20
        20 20 20 20 20 20
   5A1A 62 62 62 20 20 20   479 	.ascii "bbb   \0"
        00
   5A21                     480 _level7:
                            481 ;  geometry:
   5A21 59 8A               482 	.word	LC7
                            483 ;  start:
                            484 ;  x:
   5A23 05                  485 	.byte	5
                            486 ;  y:
   5A24 01                  487 	.byte	1
                            488 ;  swatches_count:
   5A25 01                  489 	.byte	1
                            490 ;  swatches:
   5A26 54 B8               491 	.word	_swatch_7_0
                            492 	.globl _level8
   5A28                     493 LC8:
   5A28 20 20 20 20 62 62   494 	.ascii "    bbb       bbb       bbb       bbb       b   "
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 20 20 20
   5A58 20 20 20 20 20 20   495 	.ascii "      b       bbb       bebbb     bbb         b "
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 65 62 62 62 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 20 20 62 20
   5A88 20 20 20 20 20 20   496 	.ascii "        b         bbb       bbb       bvb       "
        20 20 62 20 20 20
        20 20 20 20 20 20
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 76 62 20
        20 20 20 20 20 20
   5AB8 62 62 62 20 20 20   497 	.ascii "bbb   \0"
        00
   5ABF                     498 _level8:
                            499 ;  geometry:
   5ABF 5A 28               500 	.word	LC8
                            501 ;  start:
                            502 ;  x:
   5AC1 05                  503 	.byte	5
                            504 ;  y:
   5AC2 01                  505 	.byte	1
                            506 ;  swatches_count:
   5AC3 01                  507 	.byte	1
                            508 ;  swatches:
   5AC4 54 C0               509 	.word	_swatch_8_0
                            510 	.globl _level9
   5AC6                     511 LC9:
   5AC6 20 20 20 20 20 20   512 	.ascii "                 bbb       beb       bbb        "
        20 20 20 20 20 20
        20 20 20 20 20 62
        62 62 20 20 20 20
        20 20 20 62 65 62
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 20 20
   5AF6 6C 20 62 62 20 20   513 	.ascii "l bb      r sb      b  b      l  b      r bb    "
        20 20 20 20 72 20
        73 62 20 20 20 20
        20 20 62 20 20 62
        20 20 20 20 20 20
        6C 20 20 62 20 20
        20 20 20 20 72 20
        62 62 20 20 20 20
   5B26 20 62 62 62 62 20   514 	.ascii " bbbb     bbbbb     bbbbhbb  bbbbbbbbbbbllvb    "
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 62 62 62 62
        68 62 62 20 20 62
        62 62 62 62 62 62
        62 62 62 62 6C 6C
        76 62 20 20 20 20
   5B56 20 20 20 20 62 62   515 	.ascii "    bb\0"
        00
   5B5D                     516 _level9:
                            517 ;  geometry:
   5B5D 5A C6               518 	.word	LC9
                            519 ;  start:
                            520 ;  x:
   5B5F 08                  521 	.byte	8
                            522 ;  y:
   5B60 0A                  523 	.byte	10
                            524 ;  swatches_count:
   5B61 03                  525 	.byte	3
                            526 ;  swatches:
   5B62 54 C8               527 	.word	_swatch_9_0
   5B64 54 D0               528 	.word	_swatch_9_1
   5B66 54 D8               529 	.word	_swatch_9_2
                            530 	.globl _level10
   5B68                     531 LC10:
   5B68 20 20 20 20 20 20   532 	.ascii "                        b         bbbbbb    b  b"
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        62 20 20 20 20 20
        20 20 20 20 62 62
        62 62 62 62 20 20
        20 20 62 20 20 62
   5B98 65 62 20 20 20 20   533 	.ascii "eb    b  bbb    b   kk bbbbbb    bbsbbb    bb   "
        62 20 20 62 62 62
        20 20 20 20 62 20
        20 20 6B 6B 20 62
        62 62 62 62 62 20
        20 20 20 62 62 73
        62 62 62 20 20 20
        20 62 62 20 20 20
   5BC8 62 20 20 20 62 62   534 	.ascii "b   bbb   b   bb  bbb   bb  bbb    bbbb         "
        62 20 20 20 62 20
        20 20 62 62 20 20
        62 62 62 20 20 20
        62 62 20 20 62 62
        62 20 20 20 20 62
        62 62 62 20 20 20
        20 20 20 20 20 20
   5BF8 20 20 20 20 20 20   535 	.ascii "      \0"
        00
   5BFF                     536 _level10:
                            537 ;  geometry:
   5BFF 5B 68               538 	.word	LC10
                            539 ;  start:
                            540 ;  x:
   5C01 04                  541 	.byte	4
                            542 ;  y:
   5C02 02                  543 	.byte	2
                            544 ;  swatches_count:
   5C03 01                  545 	.byte	1
                            546 ;  swatches:
   5C04 54 E4               547 	.word	_swatch_10_0
                            548 	.globl _level11
   5C06                     549 LC11:
   5C06 20 20 20 20 20 20   550 	.ascii "            bb        bbb       bbb       bbbbb "
        20 20 20 20 20 20
        62 62 20 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 62 62 62 62 20
   5C36 20 20 20 20 20 20   551 	.ascii "      beb   bb  bbbbb bbb  lbhb bbb   bbb   b   "
        62 65 62 20 20 20
        62 62 20 20 62 62
        62 62 62 20 62 62
        62 20 20 6C 62 68
        62 20 62 62 62 20
        20 20 62 62 62 20
        20 20 62 20 20 20
   5C66 20 62 20 20 20 20   552 	.ascii " b    bbb  b    bbbbbbb    bbbbbb    bb  lbh    "
        62 62 62 20 20 62
        20 20 20 20 62 62
        62 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 62 20 20 6C
        62 68 20 20 20 20
   5C96 20 20 20 20 20 20   553 	.ascii "      \0"
        00
   5C9D                     554 _level11:
                            555 ;  geometry:
   5C9D 5C 06               556 	.word	LC11
                            557 ;  start:
                            558 ;  x:
   5C9F 03                  559 	.byte	3
                            560 ;  y:
   5CA0 03                  561 	.byte	3
                            562 ;  swatches_count:
   5CA1 02                  563 	.byte	2
                            564 ;  swatches:
   5CA2 54 EC               565 	.word	_swatch_11_0
   5CA4 54 F2               566 	.word	_swatch_11_1
                            567 	.globl _level12
   5CA6                     568 LC12:
   5CA6 20 20 20 20 20 20   569 	.ascii "              bbbbbb    bbbbbb  bbbbb  bbbb  f  "
        20 20 20 20 20 20
        20 20 62 62 62 62
        62 62 20 20 20 20
        62 62 62 62 62 62
        20 20 62 62 62 62
        62 20 20 62 62 62
        62 20 20 66 20 20
   5CD6 20 66 62 62 62 20   570 	.ascii " fbbb  f   bbfffff   b fffbbb  b fbfbeb  bbfffbb"
        20 66 20 20 20 62
        62 66 66 66 66 66
        20 20 20 62 20 66
        66 66 62 62 62 20
        20 62 20 66 62 66
        62 65 62 20 20 62
        62 66 66 66 62 62
   5D06 62 20 20 66 62 66   571 	.ascii "b  fbfff     b ffb    bb   bbbbbbb     bbbbb    "
        66 66 20 20 20 20
        20 62 20 66 66 62
        20 20 20 20 62 62
        20 20 20 62 62 62
        62 62 62 62 20 20
        20 20 20 62 62 62
        62 62 20 20 20 20
   5D36 20 62 62 62 20 20   572 	.ascii " bbb  \0"
        00
   5D3D                     573 _level12:
                            574 ;  geometry:
   5D3D 5C A6               575 	.word	LC12
                            576 ;  start:
                            577 ;  x:
   5D3F 06                  578 	.byte	6
                            579 ;  y:
   5D40 0D                  580 	.byte	13
                            581 ;  swatches_count:
   5D41 00                  582 	.byte	0
                            583 	.globl _level13
   5D42                     584 LC13:
   5D42 20 20 62 62 62 62   585 	.ascii "  bbbbbb   bb   ll  bbb   rr  beb   bbb bbb   bb"
        62 62 20 20 20 62
        62 20 20 20 6C 6C
        20 20 62 62 62 20
        20 20 72 72 20 20
        62 65 62 20 20 20
        62 62 62 20 62 62
        62 20 20 20 62 62
   5D72 62 20 20 20 20 20   586 	.ascii "b       bbb        b         b  bbbb   bbbbbbb  "
        20 20 62 62 62 20
        20 20 20 20 20 20
        20 62 20 20 20 20
        20 20 20 20 20 62
        20 20 62 62 62 62
        20 20 20 62 62 62
        62 62 62 62 20 20
   5DA2 20 62 62 62 62 62   587 	.ascii " bbbbbbb   bbbb  b   b  b  bbbhb  h  bbbbb      "
        62 62 20 20 20 62
        62 62 62 20 20 62
        20 20 20 62 20 20
        62 20 20 62 62 62
        68 62 20 20 68 20
        20 62 62 62 62 62
        20 20 20 20 20 20
   5DD2 20 20 20 20 20 20   588 	.ascii "      \0"
        00
   5DD9                     589 _level13:
                            590 ;  geometry:
   5DD9 5D 42               591 	.word	LC13
                            592 ;  start:
                            593 ;  x:
   5DDB 07                  594 	.byte	7
                            595 ;  y:
   5DDC 04                  596 	.byte	4
                            597 ;  swatches_count:
   5DDD 02                  598 	.byte	2
                            599 ;  swatches:
   5DDE 54 F8               600 	.word	_swatch_13_0
   5DE0 55 00               601 	.word	_swatch_13_1
                            602 	.globl _level14
   5DE2                     603 LC14:
   5DE2 62 62 62 20 20 62   604 	.ascii "bbb  bbb  bbbbbbbb  bbb   bl   b    br   b    bb"
        62 62 20 20 62 62
        62 62 62 62 62 62
        20 20 62 62 62 20
        20 20 62 6C 20 20
        20 62 20 20 20 20
        62 72 20 20 20 62
        20 20 20 20 62 62
   5E12 62 20 20 62 20 20   605 	.ascii "b  b      k bbb     q bbbbv  bbbbbb   sbbb k    "
        20 20 20 20 6B 20
        62 62 62 20 20 20
        20 20 71 20 62 62
        62 62 76 20 20 62
        62 62 62 62 62 20
        20 20 73 62 62 62
        20 6B 20 20 20 20
   5E42 20 62 62 62 20 71   606 	.ascii " bbb q      l sbs     r beb    bhbbbb    bbb    "
        20 20 20 20 20 20
        6C 20 73 62 73 20
        20 20 20 20 72 20
        62 65 62 20 20 20
        20 62 68 62 62 62
        62 20 20 20 20 62
        62 62 20 20 20 20
   5E72 20 20 20 62 62 62   607 	.ascii "   bbb\0"
        00
   5E79                     608 _level14:
                            609 ;  geometry:
   5E79 5D E2               610 	.word	LC14
                            611 ;  start:
                            612 ;  x:
   5E7B 01                  613 	.byte	1
                            614 ;  y:
   5E7C 01                  615 	.byte	1
                            616 ;  swatches_count:
   5E7D 05                  617 	.byte	5
                            618 ;  swatches:
   5E7E 55 08               619 	.word	_swatch_14_0
   5E80 55 14               620 	.word	_swatch_14_1
   5E82 55 20               621 	.word	_swatch_14_2
   5E84 55 28               622 	.word	_swatch_14_3
   5E86 55 30               623 	.word	_swatch_14_4
                            624 	.globl _levels
   5E88                     625 _levels:
   5E88 55 CF               626 	.word	_level0
   5E8A 56 6B               627 	.word	_level1
   5E8C 57 0B               628 	.word	_level2
   5E8E 57 A7               629 	.word	_level3
   5E90 58 43               630 	.word	_level4
   5E92 58 E7               631 	.word	_level5
   5E94 59 83               632 	.word	_level6
   5E96 5A 21               633 	.word	_level7
   5E98 5A BF               634 	.word	_level8
   5E9A 5B 5D               635 	.word	_level9
   5E9C 5B FF               636 	.word	_level10
   5E9E 5C 9D               637 	.word	_level11
   5EA0 5D 3D               638 	.word	_level12
   5EA2 5D D9               639 	.word	_level13
   5EA4 5E 79               640 	.word	_level14
   5EA6                     641 ___compound_literal.0:
                            642 ;  action:
   5EA6 00                  643 	.byte	0
                            644 ;  position:
                            645 ;  x:
   5EA7 04                  646 	.byte	4
                            647 ;  y:
   5EA8 0A                  648 	.byte	10
   5EA9                     649 ___compound_literal.1:
                            650 ;  action:
   5EA9 00                  651 	.byte	0
                            652 ;  position:
                            653 ;  x:
   5EAA 04                  654 	.byte	4
                            655 ;  y:
   5EAB 0B                  656 	.byte	11
   5EAC                     657 ___compound_literal.2:
                            658 ;  action:
   5EAC 00                  659 	.byte	0
                            660 ;  position:
                            661 ;  x:
   5EAD 04                  662 	.byte	4
                            663 ;  y:
   5EAE 04                  664 	.byte	4
   5EAF                     665 ___compound_literal.3:
                            666 ;  action:
   5EAF 00                  667 	.byte	0
                            668 ;  position:
                            669 ;  x:
   5EB0 04                  670 	.byte	4
                            671 ;  y:
   5EB1 05                  672 	.byte	5
   5EB2                     673 ___compound_literal.4:
                            674 ;  action:
   5EB2 00                  675 	.byte	0
                            676 ;  position:
                            677 ;  x:
   5EB3 08                  678 	.byte	8
                            679 ;  y:
   5EB4 06                  680 	.byte	6
   5EB5                     681 ___compound_literal.5:
                            682 ;  action:
   5EB5 00                  683 	.byte	0
                            684 ;  position:
                            685 ;  x:
   5EB6 08                  686 	.byte	8
                            687 ;  y:
   5EB7 05                  688 	.byte	5
   5EB8                     689 ___compound_literal.6:
                            690 ;  action:
   5EB8 01                  691 	.byte	1
                            692 ;  position:
                            693 ;  x:
   5EB9 01                  694 	.byte	1
                            695 ;  y:
   5EBA 05                  696 	.byte	5
   5EBB                     697 ___compound_literal.7:
                            698 ;  action:
   5EBB 01                  699 	.byte	1
                            700 ;  position:
                            701 ;  x:
   5EBC 01                  702 	.byte	1
                            703 ;  y:
   5EBD 06                  704 	.byte	6
   5EBE                     705 ___compound_literal.8:
                            706 ;  action:
   5EBE 02                  707 	.byte	2
                            708 ;  position:
                            709 ;  x:
   5EBF 01                  710 	.byte	1
                            711 ;  y:
   5EC0 05                  712 	.byte	5
   5EC1                     713 ___compound_literal.9:
                            714 ;  action:
   5EC1 02                  715 	.byte	2
                            716 ;  position:
                            717 ;  x:
   5EC2 01                  718 	.byte	1
                            719 ;  y:
   5EC3 06                  720 	.byte	6
   5EC4                     721 ___compound_literal.10:
                            722 ;  action:
   5EC4 00                  723 	.byte	0
                            724 ;  position:
                            725 ;  x:
   5EC5 01                  726 	.byte	1
                            727 ;  y:
   5EC6 05                  728 	.byte	5
   5EC7                     729 ___compound_literal.11:
                            730 ;  action:
   5EC7 00                  731 	.byte	0
                            732 ;  position:
                            733 ;  x:
   5EC8 01                  734 	.byte	1
                            735 ;  y:
   5EC9 06                  736 	.byte	6
   5ECA                     737 ___compound_literal.12:
                            738 ;  action:
   5ECA 00                  739 	.byte	0
                            740 ;  position:
                            741 ;  x:
   5ECB 02                  742 	.byte	2
                            743 ;  y:
   5ECC 03                  744 	.byte	3
   5ECD                     745 ___compound_literal.13:
                            746 ;  action:
   5ECD 03                  747 	.byte	3
                            748 ;  position:
                            749 ;  x:
   5ECE 08                  750 	.byte	8
                            751 ;  y:
   5ECF 0A                  752 	.byte	10
   5ED0                     753 ___compound_literal.14:
                            754 ;  action:
   5ED0 04                  755 	.byte	4
                            756 ;  position:
                            757 ;  x:
   5ED1 02                  758 	.byte	2
                            759 ;  y:
   5ED2 0A                  760 	.byte	10
   5ED3                     761 ___compound_literal.15:
                            762 ;  action:
   5ED3 03                  763 	.byte	3
                            764 ;  position:
                            765 ;  x:
   5ED4 05                  766 	.byte	5
                            767 ;  y:
   5ED5 0C                  768 	.byte	12
   5ED6                     769 ___compound_literal.16:
                            770 ;  action:
   5ED6 04                  771 	.byte	4
                            772 ;  position:
                            773 ;  x:
   5ED7 05                  774 	.byte	5
                            775 ;  y:
   5ED8 02                  776 	.byte	2
   5ED9                     777 ___compound_literal.17:
                            778 ;  action:
   5ED9 03                  779 	.byte	3
                            780 ;  position:
                            781 ;  x:
   5EDA 08                  782 	.byte	8
                            783 ;  y:
   5EDB 0D                  784 	.byte	13
   5EDC                     785 ___compound_literal.18:
                            786 ;  action:
   5EDC 04                  787 	.byte	4
                            788 ;  position:
                            789 ;  x:
   5EDD 08                  790 	.byte	8
                            791 ;  y:
   5EDE 0A                  792 	.byte	10
   5EDF                     793 ___compound_literal.19:
                            794 ;  action:
   5EDF 00                  795 	.byte	0
                            796 ;  position:
                            797 ;  x:
   5EE0 08                  798 	.byte	8
                            799 ;  y:
   5EE1 04                  800 	.byte	4
   5EE2                     801 ___compound_literal.20:
                            802 ;  action:
   5EE2 00                  803 	.byte	0
                            804 ;  position:
                            805 ;  x:
   5EE3 08                  806 	.byte	8
                            807 ;  y:
   5EE4 05                  808 	.byte	5
   5EE5                     809 ___compound_literal.21:
                            810 ;  action:
   5EE5 00                  811 	.byte	0
                            812 ;  position:
                            813 ;  x:
   5EE6 08                  814 	.byte	8
                            815 ;  y:
   5EE7 07                  816 	.byte	7
   5EE8                     817 ___compound_literal.22:
                            818 ;  action:
   5EE8 00                  819 	.byte	0
                            820 ;  position:
                            821 ;  x:
   5EE9 08                  822 	.byte	8
                            823 ;  y:
   5EEA 08                  824 	.byte	8
   5EEB                     825 ___compound_literal.23:
                            826 ;  action:
   5EEB 00                  827 	.byte	0
                            828 ;  position:
                            829 ;  x:
   5EEC 07                  830 	.byte	7
                            831 ;  y:
   5EED 0D                  832 	.byte	13
   5EEE                     833 ___compound_literal.24:
                            834 ;  action:
   5EEE 00                  835 	.byte	0
                            836 ;  position:
                            837 ;  x:
   5EEF 06                  838 	.byte	6
                            839 ;  y:
   5EF0 0D                  840 	.byte	13
   5EF1                     841 ___compound_literal.25:
                            842 ;  action:
   5EF1 02                  843 	.byte	2
                            844 ;  position:
                            845 ;  x:
   5EF2 09                  846 	.byte	9
                            847 ;  y:
   5EF3 06                  848 	.byte	6
   5EF4                     849 ___compound_literal.26:
                            850 ;  action:
   5EF4 02                  851 	.byte	2
                            852 ;  position:
                            853 ;  x:
   5EF5 08                  854 	.byte	8
                            855 ;  y:
   5EF6 06                  856 	.byte	6
   5EF7                     857 ___compound_literal.27:
                            858 ;  action:
   5EF7 00                  859 	.byte	0
                            860 ;  position:
                            861 ;  x:
   5EF8 05                  862 	.byte	5
                            863 ;  y:
   5EF9 07                  864 	.byte	7
   5EFA                     865 ___compound_literal.28:
                            866 ;  action:
   5EFA 00                  867 	.byte	0
                            868 ;  position:
                            869 ;  x:
   5EFB 07                  870 	.byte	7
                            871 ;  y:
   5EFC 0D                  872 	.byte	13
   5EFD                     873 ___compound_literal.29:
                            874 ;  action:
   5EFD 00                  875 	.byte	0
                            876 ;  position:
                            877 ;  x:
   5EFE 07                  878 	.byte	7
                            879 ;  y:
   5EFF 01                  880 	.byte	1
   5F00                     881 ___compound_literal.30:
                            882 ;  action:
   5F00 00                  883 	.byte	0
                            884 ;  position:
                            885 ;  x:
   5F01 07                  886 	.byte	7
                            887 ;  y:
   5F02 02                  888 	.byte	2
   5F03                     889 ___compound_literal.31:
                            890 ;  action:
   5F03 00                  891 	.byte	0
                            892 ;  position:
                            893 ;  x:
   5F04 06                  894 	.byte	6
                            895 ;  y:
   5F05 01                  896 	.byte	1
   5F06                     897 ___compound_literal.32:
                            898 ;  action:
   5F06 00                  899 	.byte	0
                            900 ;  position:
                            901 ;  x:
   5F07 06                  902 	.byte	6
                            903 ;  y:
   5F08 02                  904 	.byte	2
   5F09                     905 ___compound_literal.33:
                            906 ;  action:
   5F09 00                  907 	.byte	0
                            908 ;  position:
                            909 ;  x:
   5F0A 07                  910 	.byte	7
                            911 ;  y:
   5F0B 02                  912 	.byte	2
   5F0C                     913 ___compound_literal.34:
                            914 ;  action:
   5F0C 00                  915 	.byte	0
                            916 ;  position:
                            917 ;  x:
   5F0D 07                  918 	.byte	7
                            919 ;  y:
   5F0E 03                  920 	.byte	3
   5F0F                     921 ___compound_literal.35:
                            922 ;  action:
   5F0F 00                  923 	.byte	0
                            924 ;  position:
                            925 ;  x:
   5F10 08                  926 	.byte	8
                            927 ;  y:
   5F11 05                  928 	.byte	5
   5F12                     929 ___compound_literal.36:
                            930 ;  action:
   5F12 00                  931 	.byte	0
                            932 ;  position:
                            933 ;  x:
   5F13 08                  934 	.byte	8
                            935 ;  y:
   5F14 06                  936 	.byte	6
   5F15                     937 ___compound_literal.37:
                            938 ;  action:
   5F15 00                  939 	.byte	0
                            940 ;  position:
                            941 ;  x:
   5F16 08                  942 	.byte	8
                            943 ;  y:
   5F17 05                  944 	.byte	5
   5F18                     945 ___compound_literal.38:
                            946 ;  action:
   5F18 00                  947 	.byte	0
                            948 ;  position:
                            949 ;  x:
   5F19 08                  950 	.byte	8
                            951 ;  y:
   5F1A 06                  952 	.byte	6
   5F1B                     953 ___compound_literal.39:
                            954 ;  action:
   5F1B 00                  955 	.byte	0
                            956 ;  position:
                            957 ;  x:
   5F1C 08                  958 	.byte	8
                            959 ;  y:
   5F1D 0A                  960 	.byte	10
   5F1E                     961 ___compound_literal.40:
                            962 ;  action:
   5F1E 00                  963 	.byte	0
                            964 ;  position:
                            965 ;  x:
   5F1F 08                  966 	.byte	8
                            967 ;  y:
   5F20 0B                  968 	.byte	11
   5F21                     969 ___compound_literal.41:
                            970 ;  action:
   5F21 03                  971 	.byte	3
                            972 ;  position:
                            973 ;  x:
   5F22 08                  974 	.byte	8
                            975 ;  y:
   5F23 0D                  976 	.byte	13
   5F24                     977 ___compound_literal.42:
                            978 ;  action:
   5F24 04                  979 	.byte	4
                            980 ;  position:
                            981 ;  x:
   5F25 01                  982 	.byte	1
                            983 ;  y:
   5F26 01                  984 	.byte	1
   5F27                     985 ___compound_literal.43:
                            986 ;  action:
   5F27 02                  987 	.byte	2
                            988 ;  position:
                            989 ;  x:
   5F28 01                  990 	.byte	1
                            991 ;  y:
   5F29 09                  992 	.byte	9
   5F2A                     993 ___compound_literal.44:
                            994 ;  action:
   5F2A 02                  995 	.byte	2
                            996 ;  position:
                            997 ;  x:
   5F2B 01                  998 	.byte	1
                            999 ;  y:
   5F2C 0A                 1000 	.byte	10
   5F2D                    1001 ___compound_literal.45:
                           1002 ;  action:
   5F2D 02                 1003 	.byte	2
                           1004 ;  position:
                           1005 ;  x:
   5F2E 01                 1006 	.byte	1
                           1007 ;  y:
   5F2F 09                 1008 	.byte	9
   5F30                    1009 ___compound_literal.46:
                           1010 ;  action:
   5F30 02                 1011 	.byte	2
                           1012 ;  position:
                           1013 ;  x:
   5F31 01                 1014 	.byte	1
                           1015 ;  y:
   5F32 0A                 1016 	.byte	10
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

