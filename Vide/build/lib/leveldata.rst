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
   42DE                      33 _levelCount:
   42DE 0F                   34 	.byte	15
                             35 	.globl _levelOffset
   42DF                      36 _levelOffset:
   42DF 01                   37 	.byte	1
                             38 	.globl _nextBank
   42E0                      39 _nextBank:
   42E0 01                   40 	.byte	1
                             41 	.globl _swatch_1_0
   42E1                      42 _swatch_1_0:
                             43 ;  type:
   42E1 01                   44 	.byte	1
                             45 ;  position:
                             46 ;  x:
   42E2 07                   47 	.byte	7
                             48 ;  y:
   42E3 08                   49 	.byte	8
                             50 ;  fields_count:
   42E4 02                   51 	.byte	2
                             52 ;  fields:
   42E5 4D 0D                53 	.word	___compound_literal.0
   42E7 4D 10                54 	.word	___compound_literal.1
                             55 	.globl _swatch_1_1
   42E9                      56 _swatch_1_1:
                             57 ;  type:
   42E9 00                   58 	.byte	0
                             59 ;  position:
                             60 ;  x:
   42EA 06                   61 	.byte	6
                             62 ;  y:
   42EB 02                   63 	.byte	2
                             64 ;  fields_count:
   42EC 02                   65 	.byte	2
                             66 ;  fields:
   42ED 4D 13                67 	.word	___compound_literal.2
   42EF 4D 16                68 	.word	___compound_literal.3
                             69 	.globl _swatch_4_0
   42F1                      70 _swatch_4_0:
                             71 ;  type:
   42F1 00                   72 	.byte	0
                             73 ;  position:
                             74 ;  x:
   42F2 08                   75 	.byte	8
                             76 ;  y:
   42F3 08                   77 	.byte	8
                             78 ;  fields_count:
   42F4 02                   79 	.byte	2
                             80 ;  fields:
   42F5 4D 19                81 	.word	___compound_literal.4
   42F7 4D 1C                82 	.word	___compound_literal.5
                             83 	.globl _swatch_4_1
   42F9                      84 _swatch_4_1:
                             85 ;  type:
   42F9 00                   86 	.byte	0
                             87 ;  position:
                             88 ;  x:
   42FA 06                   89 	.byte	6
                             90 ;  y:
   42FB 03                   91 	.byte	3
                             92 ;  fields_count:
   42FC 02                   93 	.byte	2
                             94 ;  fields:
   42FD 4D 1F                95 	.word	___compound_literal.6
   42FF 4D 22                96 	.word	___compound_literal.7
                             97 	.globl _swatch_4_2
   4301                      98 _swatch_4_2:
                             99 ;  type:
   4301 00                  100 	.byte	0
                            101 ;  position:
                            102 ;  x:
   4302 04                  103 	.byte	4
                            104 ;  y:
   4303 06                  105 	.byte	6
                            106 ;  fields_count:
   4304 02                  107 	.byte	2
                            108 ;  fields:
   4305 4D 25               109 	.word	___compound_literal.8
   4307 4D 28               110 	.word	___compound_literal.9
                            111 	.globl _swatch_4_3
   4309                     112 _swatch_4_3:
                            113 ;  type:
   4309 00                  114 	.byte	0
                            115 ;  position:
                            116 ;  x:
   430A 03                  117 	.byte	3
                            118 ;  y:
   430B 0E                  119 	.byte	14
                            120 ;  fields_count:
   430C 02                  121 	.byte	2
                            122 ;  fields:
   430D 4D 2B               123 	.word	___compound_literal.10
   430F 4D 2E               124 	.word	___compound_literal.11
                            125 	.globl _swatch_6_0
   4311                     126 _swatch_6_0:
                            127 ;  type:
   4311 01                  128 	.byte	1
                            129 ;  position:
                            130 ;  x:
   4312 04                  131 	.byte	4
                            132 ;  y:
   4313 09                  133 	.byte	9
                            134 ;  fields_count:
   4314 01                  135 	.byte	1
                            136 ;  fields:
   4315 4D 31               137 	.word	___compound_literal.12
                            138 	.globl _swatch_7_0
   4317                     139 _swatch_7_0:
                            140 ;  type:
   4317 02                  141 	.byte	2
                            142 ;  position:
                            143 ;  x:
   4318 05                  144 	.byte	5
                            145 ;  y:
   4319 04                  146 	.byte	4
                            147 ;  fields_count:
   431A 02                  148 	.byte	2
                            149 ;  fields:
   431B 4D 34               150 	.word	___compound_literal.13
   431D 4D 37               151 	.word	___compound_literal.14
                            152 	.globl _swatch_8_0
   431F                     153 _swatch_8_0:
                            154 ;  type:
   431F 02                  155 	.byte	2
                            156 ;  position:
                            157 ;  x:
   4320 05                  158 	.byte	5
                            159 ;  y:
   4321 0D                  160 	.byte	13
                            161 ;  fields_count:
   4322 02                  162 	.byte	2
                            163 ;  fields:
   4323 4D 3A               164 	.word	___compound_literal.15
   4325 4D 3D               165 	.word	___compound_literal.16
                            166 	.globl _swatch_9_0
   4327                     167 _swatch_9_0:
                            168 ;  type:
   4327 02                  169 	.byte	2
                            170 ;  position:
                            171 ;  x:
   4328 08                  172 	.byte	8
                            173 ;  y:
   4329 0D                  174 	.byte	13
                            175 ;  fields_count:
   432A 02                  176 	.byte	2
                            177 ;  fields:
   432B 4D 40               178 	.word	___compound_literal.17
   432D 4D 43               179 	.word	___compound_literal.18
                            180 	.globl _swatch_9_1
   432F                     181 _swatch_9_1:
                            182 ;  type:
   432F 00                  183 	.byte	0
                            184 ;  position:
                            185 ;  x:
   4330 00                  186 	.byte	0
                            187 ;  y:
   4331 06                  188 	.byte	6
                            189 ;  fields_count:
   4332 02                  190 	.byte	2
                            191 ;  fields:
   4333 4D 46               192 	.word	___compound_literal.19
   4335 4D 49               193 	.word	___compound_literal.20
                            194 	.globl _swatch_9_2
   4337                     195 _swatch_9_2:
                            196 ;  type:
   4337 01                  197 	.byte	1
                            198 ;  position:
                            199 ;  x:
   4338 00                  200 	.byte	0
                            201 ;  y:
   4339 0C                  202 	.byte	12
                            203 ;  fields_count:
   433A 04                  204 	.byte	4
                            205 ;  fields:
   433B 4D 4C               206 	.word	___compound_literal.21
   433D 4D 4F               207 	.word	___compound_literal.22
   433F 4D 52               208 	.word	___compound_literal.23
   4341 4D 55               209 	.word	___compound_literal.24
                            210 	.globl _swatch_10_0
   4343                     211 _swatch_10_0:
                            212 ;  type:
   4343 00                  213 	.byte	0
                            214 ;  position:
                            215 ;  x:
   4344 03                  216 	.byte	3
                            217 ;  y:
   4345 08                  218 	.byte	8
                            219 ;  fields_count:
   4346 02                  220 	.byte	2
                            221 ;  fields:
   4347 4D 58               222 	.word	___compound_literal.25
   4349 4D 5B               223 	.word	___compound_literal.26
                            224 	.globl _swatch_11_0
   434B                     225 _swatch_11_0:
                            226 ;  type:
   434B 01                  227 	.byte	1
                            228 ;  position:
                            229 ;  x:
   434C 09                  230 	.byte	9
                            231 ;  y:
   434D 0D                  232 	.byte	13
                            233 ;  fields_count:
   434E 01                  234 	.byte	1
                            235 ;  fields:
   434F 4D 5E               236 	.word	___compound_literal.27
                            237 	.globl _swatch_11_1
   4351                     238 _swatch_11_1:
                            239 ;  type:
   4351 01                  240 	.byte	1
                            241 ;  position:
                            242 ;  x:
   4352 07                  243 	.byte	7
                            244 ;  y:
   4353 07                  245 	.byte	7
                            246 ;  fields_count:
   4354 01                  247 	.byte	1
                            248 ;  fields:
   4355 4D 61               249 	.word	___compound_literal.28
                            250 	.globl _swatch_13_0
   4357                     251 _swatch_13_0:
                            252 ;  type:
   4357 01                  253 	.byte	1
                            254 ;  position:
                            255 ;  x:
   4358 06                  256 	.byte	6
                            257 ;  y:
   4359 0C                  258 	.byte	12
                            259 ;  fields_count:
   435A 02                  260 	.byte	2
                            261 ;  fields:
   435B 4D 64               262 	.word	___compound_literal.29
   435D 4D 67               263 	.word	___compound_literal.30
                            264 	.globl _swatch_13_1
   435F                     265 _swatch_13_1:
                            266 ;  type:
   435F 01                  267 	.byte	1
                            268 ;  position:
                            269 ;  x:
   4360 00                  270 	.byte	0
                            271 ;  y:
   4361 0D                  272 	.byte	13
                            273 ;  fields_count:
   4362 02                  274 	.byte	2
                            275 ;  fields:
   4363 4D 6A               276 	.word	___compound_literal.31
   4365 4D 6D               277 	.word	___compound_literal.32
                            278 	.globl _swatch_14_0
   4367                     279 _swatch_14_0:
                            280 ;  type:
   4367 01                  281 	.byte	1
                            282 ;  position:
                            283 ;  x:
   4368 08                  284 	.byte	8
                            285 ;  y:
   4369 0C                  286 	.byte	12
                            287 ;  fields_count:
   436A 04                  288 	.byte	4
                            289 ;  fields:
   436B 4D 70               290 	.word	___compound_literal.33
   436D 4D 73               291 	.word	___compound_literal.34
   436F 4D 76               292 	.word	___compound_literal.35
   4371 4D 79               293 	.word	___compound_literal.36
                            294 	.globl _swatch_14_1
   4373                     295 _swatch_14_1:
                            296 ;  type:
   4373 00                  297 	.byte	0
                            298 ;  position:
                            299 ;  x:
   4374 06                  300 	.byte	6
                            301 ;  y:
   4375 08                  302 	.byte	8
                            303 ;  fields_count:
   4376 04                  304 	.byte	4
                            305 ;  fields:
   4377 4D 7C               306 	.word	___compound_literal.37
   4379 4D 7F               307 	.word	___compound_literal.38
   437B 4D 82               308 	.word	___compound_literal.39
   437D 4D 85               309 	.word	___compound_literal.40
                            310 	.globl _swatch_14_2
   437F                     311 _swatch_14_2:
                            312 ;  type:
   437F 02                  313 	.byte	2
                            314 ;  position:
                            315 ;  x:
   4380 04                  316 	.byte	4
                            317 ;  y:
   4381 07                  318 	.byte	7
                            319 ;  fields_count:
   4382 02                  320 	.byte	2
                            321 ;  fields:
   4383 4D 88               322 	.word	___compound_literal.41
   4385 4D 8B               323 	.word	___compound_literal.42
                            324 	.globl _swatch_14_3
   4387                     325 _swatch_14_3:
                            326 ;  type:
   4387 00                  327 	.byte	0
                            328 ;  position:
                            329 ;  x:
   4388 02                  330 	.byte	2
                            331 ;  y:
   4389 0B                  332 	.byte	11
                            333 ;  fields_count:
   438A 02                  334 	.byte	2
                            335 ;  fields:
   438B 4D 8E               336 	.word	___compound_literal.43
   438D 4D 91               337 	.word	___compound_literal.44
                            338 	.globl _swatch_14_4
   438F                     339 _swatch_14_4:
                            340 ;  type:
   438F 00                  341 	.byte	0
                            342 ;  position:
                            343 ;  x:
   4390 00                  344 	.byte	0
                            345 ;  y:
   4391 0B                  346 	.byte	11
                            347 ;  fields_count:
   4392 02                  348 	.byte	2
                            349 ;  fields:
   4393 4D 94               350 	.word	___compound_literal.45
   4395 4D 97               351 	.word	___compound_literal.46
                            352 	.globl _level0
   4397                     353 LC0:
   4397 20 20 20 20 20 20   354 	.ascii "                         bbb      bbbb      bbbb"
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 62 62
        62 62 20 20 20 20
        20 20 62 62 62 62
   43C7 20 20 20 20 20 20   355 	.ascii "      bbb       bbb      bbbb     bbbb      bebb"
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 62 62 62 62 20
        20 20 20 20 62 62
        62 62 20 20 20 20
        20 20 62 65 62 62
   43F7 20 20 20 20 20 20   356 	.ascii "      bbbb       bb                             "
        62 62 62 62 20 20
        20 20 20 20 20 62
        62 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
   4427 20 20 20 20 20 20   357 	.ascii "      \0"
        00
   442E                     358 _level0:
                            359 ;  geometry:
   442E 43 97               360 	.word	LC0
                            361 ;  start:
                            362 ;  x:
   4430 06                  363 	.byte	6
                            364 ;  y:
   4431 03                  365 	.byte	3
                            366 ;  swatches_count:
   4432 00                  367 	.byte	0
                            368 	.globl _level1
   4433                     369 LC1:
   4433 20 20 20 62 62 62   370 	.ascii "   bbbbb     bbbbb     bbbsb     bbbbb      l   "
        62 62 20 20 20 20
        20 62 62 62 62 62
        20 20 20 20 20 62
        62 62 73 62 20 20
        20 20 20 62 62 62
        62 62 20 20 20 20
        20 20 6C 20 20 20
   4463 20 20 20 20 20 20   371 	.ascii "      r        bbbbbb    bbbbbb    bbbbhb    bbb"
        72 20 20 20 20 20
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 62 62 62 62
        62 20 20 20 20 62
        62 62 62 68 62 20
        20 20 20 62 62 62
   4493 62 62 62 20 20 20   372 	.ascii "bbb     l         r         bbbbb     bbbeb     "
        20 20 6C 20 20 20
        20 20 20 20 20 20
        72 20 20 20 20 20
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 62 62 62 65
        62 20 20 20 20 20
   44C3 62 62 62 62 62 20   373 	.ascii "bbbbb \0"
        00
   44CA                     374 _level1:
                            375 ;  geometry:
   44CA 44 33               376 	.word	LC1
                            377 ;  start:
                            378 ;  x:
   44CC 04                  379 	.byte	4
                            380 ;  y:
   44CD 01                  381 	.byte	1
                            382 ;  swatches_count:
   44CE 02                  383 	.byte	2
                            384 ;  swatches:
   44CF 42 E1               385 	.word	_swatch_1_0
   44D1 42 E9               386 	.word	_swatch_1_1
                            387 	.globl _level2
   44D3                     388 LC2:
   44D3 20 20 20 62 62 62   389 	.ascii "   bbbb      bbbb      bbbb      bbbb        b  "
        62 20 20 20 20 20
        20 62 62 62 62 20
        20 20 20 20 20 62
        62 62 62 20 20 20
        20 20 20 62 62 62
        62 20 20 20 20 20
        20 20 20 62 20 20
   4503 20 20 20 20 20 20   390 	.ascii "       b         bbb       bbb       bbb        "
        20 62 20 20 20 20
        20 20 20 20 20 62
        62 62 20 20 20 20
        20 20 20 62 62 62
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 20 20
   4533 20 62 20 20 20 20   391 	.ascii " b         b     bbbbb    bbbbbb    bbeb      bb"
        20 20 20 20 20 62
        20 20 20 20 20 62
        62 62 62 62 20 20
        20 20 62 62 62 62
        62 62 20 20 20 20
        62 62 65 62 20 20
        20 20 20 20 62 62
   4563 62 62 20 20 20 20   392 	.ascii "bb    \0"
        00
   456A                     393 _level2:
                            394 ;  geometry:
   456A 44 D3               395 	.word	LC2
                            396 ;  start:
                            397 ;  x:
   456C 04                  398 	.byte	4
                            399 ;  y:
   456D 01                  400 	.byte	1
                            401 ;  swatches_count:
   456E 00                  402 	.byte	0
                            403 	.globl _level3
   456F                     404 LC3:
   456F 20 20 62 62 62 62   405 	.ascii "  bbbbb     bbbbb     bbbbb         bff        f"
        62 20 20 20 20 20
        62 62 62 62 62 20
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 20 20 20 20
        62 66 66 20 20 20
        20 20 20 20 20 66
   459F 66 20 62 62 62 62   406 	.ascii "f bbbb   ff bebb   ff bbbb   ff   bb   ff   ff  "
        20 20 20 66 66 20
        62 65 62 62 20 20
        20 66 66 20 62 62
        62 62 20 20 20 66
        66 20 20 20 62 62
        20 20 20 66 66 20
        20 20 66 66 20 20
   45CF 62 66 66 20 66 66   407 	.ascii "bff ffffbbb   ffffbbb   fbff      ffff          "
        66 66 62 62 62 20
        20 20 66 66 66 66
        62 62 62 20 20 20
        66 62 66 66 20 20
        20 20 20 20 66 66
        66 66 20 20 20 20
        20 20 20 20 20 20
   45FF 20 20 20 20 20 20   408 	.ascii "      \0"
        00
   4606                     409 _level3:
                            410 ;  geometry:
   4606 45 6F               411 	.word	LC3
                            412 ;  start:
                            413 ;  x:
   4608 03                  414 	.byte	3
                            415 ;  y:
   4609 01                  416 	.byte	1
                            417 ;  swatches_count:
   460A 00                  418 	.byte	0
                            419 	.globl _level4
   460B                     420 LC4:
   460B 62 62 62 20 20 20   421 	.ascii "bbb       beb  bbbb bbb  bbbb bb  bbsbb  b  bbbb"
        20 20 20 20 62 65
        62 20 20 62 62 62
        62 20 62 62 62 20
        20 62 62 62 62 20
        62 62 20 20 62 62
        73 62 62 20 20 62
        20 20 62 62 62 62
   463B 62 20 20 6B 20 20   422 	.ascii "b  k  b   k  q  s   q  b  b   b  b  k   s  b  q "
        62 20 20 20 6B 20
        20 71 20 20 73 20
        20 20 71 20 20 62
        20 20 62 20 20 20
        62 20 20 62 20 20
        6B 20 20 20 73 20
        20 62 20 20 71 20
   466B 20 20 62 20 20 62   423 	.ascii "  b  bbbb   b  bbbb   bb bbbb  bbb  bb   bbb  bs"
        62 62 62 20 20 20
        62 20 20 62 62 62
        62 20 20 20 62 62
        20 62 62 62 62 20
        20 62 62 62 20 20
        62 62 20 20 20 62
        62 62 20 20 62 73
   469B 20 20 20 62 62 62   424 	.ascii "   bbb\0"
        00
   46A2                     425 _level4:
                            426 ;  geometry:
   46A2 46 0B               427 	.word	LC4
                            428 ;  start:
                            429 ;  x:
   46A4 08                  430 	.byte	8
                            431 ;  y:
   46A5 0D                  432 	.byte	13
                            433 ;  swatches_count:
   46A6 04                  434 	.byte	4
                            435 ;  swatches:
   46A7 42 F1               436 	.word	_swatch_4_0
   46A9 42 F9               437 	.word	_swatch_4_1
   46AB 43 01               438 	.word	_swatch_4_2
   46AD 43 09               439 	.word	_swatch_4_3
                            440 	.globl _level5
   46AF                     441 LC5:
   46AF 20 20 20 20 20 20   442 	.ascii "      b         b         b         b       bbb "
        62 20 20 20 20 20
        20 20 20 20 62 20
        20 20 20 20 20 20
        20 20 62 20 20 20
        20 20 20 20 20 20
        62 20 20 20 20 20
        20 20 62 62 62 20
   46DF 20 20 20 20 20 20   443 	.ascii "      bbbbbb bbbbb   bbbb      bbbb    bbbbbbb  "
        62 62 62 62 62 62
        20 62 62 62 62 62
        20 20 20 62 62 62
        62 20 20 20 20 20
        20 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 62 20 20
   470F 20 62 62 62 20 62   444 	.ascii " bbb bbb   bbb     bbb      bbbb      beb       "
        62 62 20 20 20 62
        62 62 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 62 62
        62 62 20 20 20 20
        20 20 62 65 62 20
        20 20 20 20 20 20
   473F 62 62 62 20 20 20   445 	.ascii "bbb   \0"
        00
   4746                     446 _level5:
                            447 ;  geometry:
   4746 46 AF               448 	.word	LC5
                            449 ;  start:
                            450 ;  x:
   4748 06                  451 	.byte	6
                            452 ;  y:
   4749 00                  453 	.byte	0
                            454 ;  swatches_count:
   474A 00                  455 	.byte	0
                            456 	.globl _level6
   474B                     457 LC6:
   474B 20 20 20 62 62 62   458 	.ascii "   bbbb     bbbbb    bbbbbb    bl  b     b   b  "
        62 20 20 20 20 20
        62 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 6C 20 20 62
        20 20 20 20 20 62
        20 20 20 62 20 20
   477B 20 20 20 62 20 20   459 	.ascii "   b   b     b   b     bbbbb       bbbbbb    bh "
        20 62 20 20 20 20
        20 62 20 20 20 62
        20 20 20 20 20 62
        62 62 62 62 20 20
        20 20 20 20 20 62
        62 62 62 62 62 20
        20 20 20 62 68 20
   47AB 20 62 62 20 20 20   460 	.ascii " bb        bb       bbb    bbbb      bbeb      b"
        20 20 20 20 20 62
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 62 62 62
        62 20 20 20 20 20
        20 62 62 65 62 20
        20 20 20 20 20 62
   47DB 62 62 62 20 20 20   461 	.ascii "bbb   \0"
        00
   47E2                     462 _level6:
                            463 ;  geometry:
   47E2 47 4B               464 	.word	LC6
                            465 ;  start:
                            466 ;  x:
   47E4 05                  467 	.byte	5
                            468 ;  y:
   47E5 01                  469 	.byte	1
                            470 ;  swatches_count:
   47E6 01                  471 	.byte	1
                            472 ;  swatches:
   47E7 43 11               473 	.word	_swatch_6_0
                            474 	.globl _level7
   47E9                     475 LC7:
   47E9 20 20 20 20 62 62   476 	.ascii "    bbb       bbb       bbb       bbb       bvb "
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 76 62 20
   4819 20 20 20 20 20 20   477 	.ascii "      bbb                                  bbbbb"
        62 62 62 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 62 62 62 62 62
   4849 62 62 62 62 20 62   478 	.ascii "bbbb bbbbbbbbb bbbbbbbbb    bbb       beb       "
        62 62 62 62 62 62
        62 62 20 62 62 62
        62 62 62 62 62 62
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 65 62 20
        20 20 20 20 20 20
   4879 62 62 62 20 20 20   479 	.ascii "bbb   \0"
        00
   4880                     480 _level7:
                            481 ;  geometry:
   4880 47 E9               482 	.word	LC7
                            483 ;  start:
                            484 ;  x:
   4882 05                  485 	.byte	5
                            486 ;  y:
   4883 01                  487 	.byte	1
                            488 ;  swatches_count:
   4884 01                  489 	.byte	1
                            490 ;  swatches:
   4885 43 17               491 	.word	_swatch_7_0
                            492 	.globl _level8
   4887                     493 LC8:
   4887 20 20 20 20 62 62   494 	.ascii "    bbb       bbb       bbb       bbb       b   "
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 20 20 20
   48B7 20 20 20 20 20 20   495 	.ascii "      b       bbb       bebbb     bbb         b "
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 65 62 62 62 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 20 20 62 20
   48E7 20 20 20 20 20 20   496 	.ascii "        b         bbb       bbb       bvb       "
        20 20 62 20 20 20
        20 20 20 20 20 20
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 76 62 20
        20 20 20 20 20 20
   4917 62 62 62 20 20 20   497 	.ascii "bbb   \0"
        00
   491E                     498 _level8:
                            499 ;  geometry:
   491E 48 87               500 	.word	LC8
                            501 ;  start:
                            502 ;  x:
   4920 05                  503 	.byte	5
                            504 ;  y:
   4921 01                  505 	.byte	1
                            506 ;  swatches_count:
   4922 01                  507 	.byte	1
                            508 ;  swatches:
   4923 43 1F               509 	.word	_swatch_8_0
                            510 	.globl _level9
   4925                     511 LC9:
   4925 20 20 20 20 20 20   512 	.ascii "                 bbb       beb       bbb        "
        20 20 20 20 20 20
        20 20 20 20 20 62
        62 62 20 20 20 20
        20 20 20 62 65 62
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 20 20
   4955 6C 20 62 62 20 20   513 	.ascii "l bb      r sb      b  b      l  b      r bb    "
        20 20 20 20 72 20
        73 62 20 20 20 20
        20 20 62 20 20 62
        20 20 20 20 20 20
        6C 20 20 62 20 20
        20 20 20 20 72 20
        62 62 20 20 20 20
   4985 20 62 62 62 62 20   514 	.ascii " bbbb     bbbbb     bbbbhbb  bbbbbbbbbbbllvb    "
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 62 62 62 62
        68 62 62 20 20 62
        62 62 62 62 62 62
        62 62 62 62 6C 6C
        76 62 20 20 20 20
   49B5 20 20 20 20 62 62   515 	.ascii "    bb\0"
        00
   49BC                     516 _level9:
                            517 ;  geometry:
   49BC 49 25               518 	.word	LC9
                            519 ;  start:
                            520 ;  x:
   49BE 08                  521 	.byte	8
                            522 ;  y:
   49BF 0A                  523 	.byte	10
                            524 ;  swatches_count:
   49C0 03                  525 	.byte	3
                            526 ;  swatches:
   49C1 43 27               527 	.word	_swatch_9_0
   49C3 43 2F               528 	.word	_swatch_9_1
   49C5 43 37               529 	.word	_swatch_9_2
                            530 	.globl _level10
   49C7                     531 LC10:
   49C7 20 20 20 20 20 20   532 	.ascii "                        b         bbbbbb    b  b"
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        62 20 20 20 20 20
        20 20 20 20 62 62
        62 62 62 62 20 20
        20 20 62 20 20 62
   49F7 65 62 20 20 20 20   533 	.ascii "eb    b  bbb    b   kk bbbbbb    bbsbbb    bb   "
        62 20 20 62 62 62
        20 20 20 20 62 20
        20 20 6B 6B 20 62
        62 62 62 62 62 20
        20 20 20 62 62 73
        62 62 62 20 20 20
        20 62 62 20 20 20
   4A27 62 20 20 20 62 62   534 	.ascii "b   bbb   b   bb  bbb   bb  bbb    bbbb         "
        62 20 20 20 62 20
        20 20 62 62 20 20
        62 62 62 20 20 20
        62 62 20 20 62 62
        62 20 20 20 20 62
        62 62 62 20 20 20
        20 20 20 20 20 20
   4A57 20 20 20 20 20 20   535 	.ascii "      \0"
        00
   4A5E                     536 _level10:
                            537 ;  geometry:
   4A5E 49 C7               538 	.word	LC10
                            539 ;  start:
                            540 ;  x:
   4A60 04                  541 	.byte	4
                            542 ;  y:
   4A61 02                  543 	.byte	2
                            544 ;  swatches_count:
   4A62 01                  545 	.byte	1
                            546 ;  swatches:
   4A63 43 43               547 	.word	_swatch_10_0
                            548 	.globl _level11
   4A65                     549 LC11:
   4A65 20 20 20 20 20 20   550 	.ascii "            bb        bbb       bbb       bbbbb "
        20 20 20 20 20 20
        62 62 20 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 62 62 62 62 20
   4A95 20 20 20 20 20 20   551 	.ascii "      beb   bb  bbbbb bbb  lbhb bbb   bbb   b   "
        62 65 62 20 20 20
        62 62 20 20 62 62
        62 62 62 20 62 62
        62 20 20 6C 62 68
        62 20 62 62 62 20
        20 20 62 62 62 20
        20 20 62 20 20 20
   4AC5 20 62 20 20 20 20   552 	.ascii " b    bbb  b    bbbbbbb    bbbbbb    bb  lbh    "
        62 62 62 20 20 62
        20 20 20 20 62 62
        62 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 62 20 20 6C
        62 68 20 20 20 20
   4AF5 20 20 20 20 20 20   553 	.ascii "      \0"
        00
   4AFC                     554 _level11:
                            555 ;  geometry:
   4AFC 4A 65               556 	.word	LC11
                            557 ;  start:
                            558 ;  x:
   4AFE 03                  559 	.byte	3
                            560 ;  y:
   4AFF 03                  561 	.byte	3
                            562 ;  swatches_count:
   4B00 02                  563 	.byte	2
                            564 ;  swatches:
   4B01 43 4B               565 	.word	_swatch_11_0
   4B03 43 51               566 	.word	_swatch_11_1
                            567 	.globl _level12
   4B05                     568 LC12:
   4B05 20 20 20 20 20 20   569 	.ascii "              bbbbbb    bbbbbb  bbbbb  bbbb  f  "
        20 20 20 20 20 20
        20 20 62 62 62 62
        62 62 20 20 20 20
        62 62 62 62 62 62
        20 20 62 62 62 62
        62 20 20 62 62 62
        62 20 20 66 20 20
   4B35 20 66 62 62 62 20   570 	.ascii " fbbb  f   bbfffff   b fffbbb  b fbfbeb  bbfffbb"
        20 66 20 20 20 62
        62 66 66 66 66 66
        20 20 20 62 20 66
        66 66 62 62 62 20
        20 62 20 66 62 66
        62 65 62 20 20 62
        62 66 66 66 62 62
   4B65 62 20 20 66 62 66   571 	.ascii "b  fbfff     b ffb    bb   bbbbbbb     bbbbb    "
        66 66 20 20 20 20
        20 62 20 66 66 62
        20 20 20 20 62 62
        20 20 20 62 62 62
        62 62 62 62 20 20
        20 20 20 62 62 62
        62 62 20 20 20 20
   4B95 20 62 62 62 20 20   572 	.ascii " bbb  \0"
        00
   4B9C                     573 _level12:
                            574 ;  geometry:
   4B9C 4B 05               575 	.word	LC12
                            576 ;  start:
                            577 ;  x:
   4B9E 06                  578 	.byte	6
                            579 ;  y:
   4B9F 0D                  580 	.byte	13
                            581 ;  swatches_count:
   4BA0 00                  582 	.byte	0
                            583 	.globl _level13
   4BA1                     584 LC13:
   4BA1 20 20 62 62 62 62   585 	.ascii "  bbbbbb   bb   ll  bbb   rr  beb   bbb bbb   bb"
        62 62 20 20 20 62
        62 20 20 20 6C 6C
        20 20 62 62 62 20
        20 20 72 72 20 20
        62 65 62 20 20 20
        62 62 62 20 62 62
        62 20 20 20 62 62
   4BD1 62 20 20 20 20 20   586 	.ascii "b       bbb        b         b  bbbb   bbbbbbb  "
        20 20 62 62 62 20
        20 20 20 20 20 20
        20 62 20 20 20 20
        20 20 20 20 20 62
        20 20 62 62 62 62
        20 20 20 62 62 62
        62 62 62 62 20 20
   4C01 20 62 62 62 62 62   587 	.ascii " bbbbbbb   bbbb  b   b  b  bbbhb  h  bbbbb      "
        62 62 20 20 20 62
        62 62 62 20 20 62
        20 20 20 62 20 20
        62 20 20 62 62 62
        68 62 20 20 68 20
        20 62 62 62 62 62
        20 20 20 20 20 20
   4C31 20 20 20 20 20 20   588 	.ascii "      \0"
        00
   4C38                     589 _level13:
                            590 ;  geometry:
   4C38 4B A1               591 	.word	LC13
                            592 ;  start:
                            593 ;  x:
   4C3A 07                  594 	.byte	7
                            595 ;  y:
   4C3B 04                  596 	.byte	4
                            597 ;  swatches_count:
   4C3C 02                  598 	.byte	2
                            599 ;  swatches:
   4C3D 43 57               600 	.word	_swatch_13_0
   4C3F 43 5F               601 	.word	_swatch_13_1
                            602 	.globl _level14
   4C41                     603 LC14:
   4C41 62 62 62 20 20 62   604 	.ascii "bbb  bbb  bbbbbbbb  bbb   bl   b    br   b    bb"
        62 62 20 20 62 62
        62 62 62 62 62 62
        20 20 62 62 62 20
        20 20 62 6C 20 20
        20 62 20 20 20 20
        62 72 20 20 20 62
        20 20 20 20 62 62
   4C71 62 20 20 62 20 20   605 	.ascii "b  b      k bbb     q bbbbv  bbbbbb   sbbb k    "
        20 20 20 20 6B 20
        62 62 62 20 20 20
        20 20 71 20 62 62
        62 62 76 20 20 62
        62 62 62 62 62 20
        20 20 73 62 62 62
        20 6B 20 20 20 20
   4CA1 20 62 62 62 20 71   606 	.ascii " bbb q      l sbs     r beb    bhbbbb    bbb    "
        20 20 20 20 20 20
        6C 20 73 62 73 20
        20 20 20 20 72 20
        62 65 62 20 20 20
        20 62 68 62 62 62
        62 20 20 20 20 62
        62 62 20 20 20 20
   4CD1 20 20 20 62 62 62   607 	.ascii "   bbb\0"
        00
   4CD8                     608 _level14:
                            609 ;  geometry:
   4CD8 4C 41               610 	.word	LC14
                            611 ;  start:
                            612 ;  x:
   4CDA 01                  613 	.byte	1
                            614 ;  y:
   4CDB 01                  615 	.byte	1
                            616 ;  swatches_count:
   4CDC 05                  617 	.byte	5
                            618 ;  swatches:
   4CDD 43 67               619 	.word	_swatch_14_0
   4CDF 43 73               620 	.word	_swatch_14_1
   4CE1 43 7F               621 	.word	_swatch_14_2
   4CE3 43 87               622 	.word	_swatch_14_3
   4CE5 43 8F               623 	.word	_swatch_14_4
                            624 	.globl _levels
   4CE7                     625 _levels:
   4CE7 44 2E               626 	.word	_level0
   4CE9 44 CA               627 	.word	_level1
   4CEB 45 6A               628 	.word	_level2
   4CED 46 06               629 	.word	_level3
   4CEF 46 A2               630 	.word	_level4
   4CF1 47 46               631 	.word	_level5
   4CF3 47 E2               632 	.word	_level6
   4CF5 48 80               633 	.word	_level7
   4CF7 49 1E               634 	.word	_level8
   4CF9 49 BC               635 	.word	_level9
   4CFB 4A 5E               636 	.word	_level10
   4CFD 4A FC               637 	.word	_level11
   4CFF 4B 9C               638 	.word	_level12
   4D01 4C 38               639 	.word	_level13
   4D03 4C D8               640 	.word	_level14
                            641 	.globl _solutions
   4D05                     642 LC15:
   4D05 75 6C 6C 75 75 6C   643 	.ascii "ulluulu\0"
        75 00
                            644 	.area .data
   C887                     645 _solutions:
   C887 4D 05               646 	.word	LC15
                            647 	.area .text
   4D0D                     648 ___compound_literal.0:
                            649 ;  action:
   4D0D 00                  650 	.byte	0
                            651 ;  position:
                            652 ;  x:
   4D0E 04                  653 	.byte	4
                            654 ;  y:
   4D0F 0A                  655 	.byte	10
   4D10                     656 ___compound_literal.1:
                            657 ;  action:
   4D10 00                  658 	.byte	0
                            659 ;  position:
                            660 ;  x:
   4D11 04                  661 	.byte	4
                            662 ;  y:
   4D12 0B                  663 	.byte	11
   4D13                     664 ___compound_literal.2:
                            665 ;  action:
   4D13 00                  666 	.byte	0
                            667 ;  position:
                            668 ;  x:
   4D14 04                  669 	.byte	4
                            670 ;  y:
   4D15 04                  671 	.byte	4
   4D16                     672 ___compound_literal.3:
                            673 ;  action:
   4D16 00                  674 	.byte	0
                            675 ;  position:
                            676 ;  x:
   4D17 04                  677 	.byte	4
                            678 ;  y:
   4D18 05                  679 	.byte	5
   4D19                     680 ___compound_literal.4:
                            681 ;  action:
   4D19 00                  682 	.byte	0
                            683 ;  position:
                            684 ;  x:
   4D1A 08                  685 	.byte	8
                            686 ;  y:
   4D1B 06                  687 	.byte	6
   4D1C                     688 ___compound_literal.5:
                            689 ;  action:
   4D1C 00                  690 	.byte	0
                            691 ;  position:
                            692 ;  x:
   4D1D 08                  693 	.byte	8
                            694 ;  y:
   4D1E 05                  695 	.byte	5
   4D1F                     696 ___compound_literal.6:
                            697 ;  action:
   4D1F 01                  698 	.byte	1
                            699 ;  position:
                            700 ;  x:
   4D20 01                  701 	.byte	1
                            702 ;  y:
   4D21 05                  703 	.byte	5
   4D22                     704 ___compound_literal.7:
                            705 ;  action:
   4D22 01                  706 	.byte	1
                            707 ;  position:
                            708 ;  x:
   4D23 01                  709 	.byte	1
                            710 ;  y:
   4D24 06                  711 	.byte	6
   4D25                     712 ___compound_literal.8:
                            713 ;  action:
   4D25 02                  714 	.byte	2
                            715 ;  position:
                            716 ;  x:
   4D26 01                  717 	.byte	1
                            718 ;  y:
   4D27 05                  719 	.byte	5
   4D28                     720 ___compound_literal.9:
                            721 ;  action:
   4D28 02                  722 	.byte	2
                            723 ;  position:
                            724 ;  x:
   4D29 01                  725 	.byte	1
                            726 ;  y:
   4D2A 06                  727 	.byte	6
   4D2B                     728 ___compound_literal.10:
                            729 ;  action:
   4D2B 00                  730 	.byte	0
                            731 ;  position:
                            732 ;  x:
   4D2C 01                  733 	.byte	1
                            734 ;  y:
   4D2D 05                  735 	.byte	5
   4D2E                     736 ___compound_literal.11:
                            737 ;  action:
   4D2E 00                  738 	.byte	0
                            739 ;  position:
                            740 ;  x:
   4D2F 01                  741 	.byte	1
                            742 ;  y:
   4D30 06                  743 	.byte	6
   4D31                     744 ___compound_literal.12:
                            745 ;  action:
   4D31 00                  746 	.byte	0
                            747 ;  position:
                            748 ;  x:
   4D32 02                  749 	.byte	2
                            750 ;  y:
   4D33 03                  751 	.byte	3
   4D34                     752 ___compound_literal.13:
                            753 ;  action:
   4D34 03                  754 	.byte	3
                            755 ;  position:
                            756 ;  x:
   4D35 08                  757 	.byte	8
                            758 ;  y:
   4D36 0A                  759 	.byte	10
   4D37                     760 ___compound_literal.14:
                            761 ;  action:
   4D37 04                  762 	.byte	4
                            763 ;  position:
                            764 ;  x:
   4D38 02                  765 	.byte	2
                            766 ;  y:
   4D39 0A                  767 	.byte	10
   4D3A                     768 ___compound_literal.15:
                            769 ;  action:
   4D3A 03                  770 	.byte	3
                            771 ;  position:
                            772 ;  x:
   4D3B 05                  773 	.byte	5
                            774 ;  y:
   4D3C 0C                  775 	.byte	12
   4D3D                     776 ___compound_literal.16:
                            777 ;  action:
   4D3D 04                  778 	.byte	4
                            779 ;  position:
                            780 ;  x:
   4D3E 05                  781 	.byte	5
                            782 ;  y:
   4D3F 02                  783 	.byte	2
   4D40                     784 ___compound_literal.17:
                            785 ;  action:
   4D40 03                  786 	.byte	3
                            787 ;  position:
                            788 ;  x:
   4D41 08                  789 	.byte	8
                            790 ;  y:
   4D42 0D                  791 	.byte	13
   4D43                     792 ___compound_literal.18:
                            793 ;  action:
   4D43 04                  794 	.byte	4
                            795 ;  position:
                            796 ;  x:
   4D44 08                  797 	.byte	8
                            798 ;  y:
   4D45 0A                  799 	.byte	10
   4D46                     800 ___compound_literal.19:
                            801 ;  action:
   4D46 00                  802 	.byte	0
                            803 ;  position:
                            804 ;  x:
   4D47 08                  805 	.byte	8
                            806 ;  y:
   4D48 04                  807 	.byte	4
   4D49                     808 ___compound_literal.20:
                            809 ;  action:
   4D49 00                  810 	.byte	0
                            811 ;  position:
                            812 ;  x:
   4D4A 08                  813 	.byte	8
                            814 ;  y:
   4D4B 05                  815 	.byte	5
   4D4C                     816 ___compound_literal.21:
                            817 ;  action:
   4D4C 00                  818 	.byte	0
                            819 ;  position:
                            820 ;  x:
   4D4D 08                  821 	.byte	8
                            822 ;  y:
   4D4E 07                  823 	.byte	7
   4D4F                     824 ___compound_literal.22:
                            825 ;  action:
   4D4F 00                  826 	.byte	0
                            827 ;  position:
                            828 ;  x:
   4D50 08                  829 	.byte	8
                            830 ;  y:
   4D51 08                  831 	.byte	8
   4D52                     832 ___compound_literal.23:
                            833 ;  action:
   4D52 00                  834 	.byte	0
                            835 ;  position:
                            836 ;  x:
   4D53 07                  837 	.byte	7
                            838 ;  y:
   4D54 0D                  839 	.byte	13
   4D55                     840 ___compound_literal.24:
                            841 ;  action:
   4D55 00                  842 	.byte	0
                            843 ;  position:
                            844 ;  x:
   4D56 06                  845 	.byte	6
                            846 ;  y:
   4D57 0D                  847 	.byte	13
   4D58                     848 ___compound_literal.25:
                            849 ;  action:
   4D58 02                  850 	.byte	2
                            851 ;  position:
                            852 ;  x:
   4D59 09                  853 	.byte	9
                            854 ;  y:
   4D5A 06                  855 	.byte	6
   4D5B                     856 ___compound_literal.26:
                            857 ;  action:
   4D5B 02                  858 	.byte	2
                            859 ;  position:
                            860 ;  x:
   4D5C 08                  861 	.byte	8
                            862 ;  y:
   4D5D 06                  863 	.byte	6
   4D5E                     864 ___compound_literal.27:
                            865 ;  action:
   4D5E 00                  866 	.byte	0
                            867 ;  position:
                            868 ;  x:
   4D5F 05                  869 	.byte	5
                            870 ;  y:
   4D60 07                  871 	.byte	7
   4D61                     872 ___compound_literal.28:
                            873 ;  action:
   4D61 00                  874 	.byte	0
                            875 ;  position:
                            876 ;  x:
   4D62 07                  877 	.byte	7
                            878 ;  y:
   4D63 0D                  879 	.byte	13
   4D64                     880 ___compound_literal.29:
                            881 ;  action:
   4D64 00                  882 	.byte	0
                            883 ;  position:
                            884 ;  x:
   4D65 07                  885 	.byte	7
                            886 ;  y:
   4D66 01                  887 	.byte	1
   4D67                     888 ___compound_literal.30:
                            889 ;  action:
   4D67 00                  890 	.byte	0
                            891 ;  position:
                            892 ;  x:
   4D68 07                  893 	.byte	7
                            894 ;  y:
   4D69 02                  895 	.byte	2
   4D6A                     896 ___compound_literal.31:
                            897 ;  action:
   4D6A 00                  898 	.byte	0
                            899 ;  position:
                            900 ;  x:
   4D6B 06                  901 	.byte	6
                            902 ;  y:
   4D6C 01                  903 	.byte	1
   4D6D                     904 ___compound_literal.32:
                            905 ;  action:
   4D6D 00                  906 	.byte	0
                            907 ;  position:
                            908 ;  x:
   4D6E 06                  909 	.byte	6
                            910 ;  y:
   4D6F 02                  911 	.byte	2
   4D70                     912 ___compound_literal.33:
                            913 ;  action:
   4D70 00                  914 	.byte	0
                            915 ;  position:
                            916 ;  x:
   4D71 07                  917 	.byte	7
                            918 ;  y:
   4D72 02                  919 	.byte	2
   4D73                     920 ___compound_literal.34:
                            921 ;  action:
   4D73 00                  922 	.byte	0
                            923 ;  position:
                            924 ;  x:
   4D74 07                  925 	.byte	7
                            926 ;  y:
   4D75 03                  927 	.byte	3
   4D76                     928 ___compound_literal.35:
                            929 ;  action:
   4D76 00                  930 	.byte	0
                            931 ;  position:
                            932 ;  x:
   4D77 08                  933 	.byte	8
                            934 ;  y:
   4D78 05                  935 	.byte	5
   4D79                     936 ___compound_literal.36:
                            937 ;  action:
   4D79 00                  938 	.byte	0
                            939 ;  position:
                            940 ;  x:
   4D7A 08                  941 	.byte	8
                            942 ;  y:
   4D7B 06                  943 	.byte	6
   4D7C                     944 ___compound_literal.37:
                            945 ;  action:
   4D7C 00                  946 	.byte	0
                            947 ;  position:
                            948 ;  x:
   4D7D 08                  949 	.byte	8
                            950 ;  y:
   4D7E 05                  951 	.byte	5
   4D7F                     952 ___compound_literal.38:
                            953 ;  action:
   4D7F 00                  954 	.byte	0
                            955 ;  position:
                            956 ;  x:
   4D80 08                  957 	.byte	8
                            958 ;  y:
   4D81 06                  959 	.byte	6
   4D82                     960 ___compound_literal.39:
                            961 ;  action:
   4D82 00                  962 	.byte	0
                            963 ;  position:
                            964 ;  x:
   4D83 08                  965 	.byte	8
                            966 ;  y:
   4D84 0A                  967 	.byte	10
   4D85                     968 ___compound_literal.40:
                            969 ;  action:
   4D85 00                  970 	.byte	0
                            971 ;  position:
                            972 ;  x:
   4D86 08                  973 	.byte	8
                            974 ;  y:
   4D87 0B                  975 	.byte	11
   4D88                     976 ___compound_literal.41:
                            977 ;  action:
   4D88 03                  978 	.byte	3
                            979 ;  position:
                            980 ;  x:
   4D89 08                  981 	.byte	8
                            982 ;  y:
   4D8A 0D                  983 	.byte	13
   4D8B                     984 ___compound_literal.42:
                            985 ;  action:
   4D8B 04                  986 	.byte	4
                            987 ;  position:
                            988 ;  x:
   4D8C 01                  989 	.byte	1
                            990 ;  y:
   4D8D 01                  991 	.byte	1
   4D8E                     992 ___compound_literal.43:
                            993 ;  action:
   4D8E 02                  994 	.byte	2
                            995 ;  position:
                            996 ;  x:
   4D8F 01                  997 	.byte	1
                            998 ;  y:
   4D90 09                  999 	.byte	9
   4D91                    1000 ___compound_literal.44:
                           1001 ;  action:
   4D91 02                 1002 	.byte	2
                           1003 ;  position:
                           1004 ;  x:
   4D92 01                 1005 	.byte	1
                           1006 ;  y:
   4D93 0A                 1007 	.byte	10
   4D94                    1008 ___compound_literal.45:
                           1009 ;  action:
   4D94 02                 1010 	.byte	2
                           1011 ;  position:
                           1012 ;  x:
   4D95 01                 1013 	.byte	1
                           1014 ;  y:
   4D96 09                 1015 	.byte	9
   4D97                    1016 ___compound_literal.46:
                           1017 ;  action:
   4D97 02                 1018 	.byte	2
                           1019 ;  position:
                           1020 ;  x:
   4D98 01                 1021 	.byte	1
                           1022 ;  y:
   4D99 0A                 1023 	.byte	10
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 LC0                00B9 R   |   2 LC1                0155 R
  2 LC10               06E9 R   |   2 LC11               0787 R
  2 LC12               0827 R   |   2 LC13               08C3 R
  2 LC14               0963 R   |   2 LC15               0A27 R
  2 LC2                01F5 R   |   2 LC3                0291 R
  2 LC4                032D R   |   2 LC5                03D1 R
  2 LC6                046D R   |   2 LC7                050B R
  2 LC8                05A9 R   |   2 LC9                0647 R
  2 ___compound_li     0A2F R   |   2 ___compound_li     0A32 R
  2 ___compound_li     0A4D R   |   2 ___compound_li     0A50 R
  2 ___compound_li     0A53 R   |   2 ___compound_li     0A56 R
  2 ___compound_li     0A59 R   |   2 ___compound_li     0A5C R
  2 ___compound_li     0A5F R   |   2 ___compound_li     0A62 R
  2 ___compound_li     0A65 R   |   2 ___compound_li     0A68 R
  2 ___compound_li     0A35 R   |   2 ___compound_li     0A6B R
  2 ___compound_li     0A6E R   |   2 ___compound_li     0A71 R
  2 ___compound_li     0A74 R   |   2 ___compound_li     0A77 R
  2 ___compound_li     0A7A R   |   2 ___compound_li     0A7D R
  2 ___compound_li     0A80 R   |   2 ___compound_li     0A83 R
  2 ___compound_li     0A86 R   |   2 ___compound_li     0A38 R
  2 ___compound_li     0A89 R   |   2 ___compound_li     0A8C R
  2 ___compound_li     0A8F R   |   2 ___compound_li     0A92 R
  2 ___compound_li     0A95 R   |   2 ___compound_li     0A98 R
  2 ___compound_li     0A9B R   |   2 ___compound_li     0A9E R
  2 ___compound_li     0AA1 R   |   2 ___compound_li     0AA4 R
  2 ___compound_li     0A3B R   |   2 ___compound_li     0AA7 R
  2 ___compound_li     0AAA R   |   2 ___compound_li     0AAD R
  2 ___compound_li     0AB0 R   |   2 ___compound_li     0AB3 R
  2 ___compound_li     0AB6 R   |   2 ___compound_li     0AB9 R
  2 ___compound_li     0A3E R   |   2 ___compound_li     0A41 R
  2 ___compound_li     0A44 R   |   2 ___compound_li     0A47 R
  2 ___compound_li     0A4A R   |   2 _level0            0150 GR
  2 _level1            01EC GR  |   2 _level10           0780 GR
  2 _level11           081E GR  |   2 _level12           08BE GR
  2 _level13           095A GR  |   2 _level14           09FA GR
  2 _level2            028C GR  |   2 _level3            0328 GR
  2 _level4            03C4 GR  |   2 _level5            0468 GR
  2 _level6            0504 GR  |   2 _level7            05A2 GR
  2 _level8            0640 GR  |   2 _level9            06DE GR
  2 _levelCount        0000 GR  |   2 _levelOffset       0001 GR
  2 _levels            0A09 GR  |   2 _nextBank          0002 GR
  3 _solutions         0000 GR  |   2 _swatch_10_0       0065 GR
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
   2 .text            size  ABC   flags  100
   3 .data            size    2   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

