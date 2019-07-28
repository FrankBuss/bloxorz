                              1 ;;; gcc for m6809 : Mar 17 2019 11:56:12
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O1
                              5 	.module	leveldata.enr.c
                              6 ; GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ;	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4.
                              8 ; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ; options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ; -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ; -fno-time-report -I/home/frank/bin/Vide2.5.1.java/C/PeerC/vectrex/include
                             12 ; -D__INLINE_RUM=1 -DOMMIT_FRAMEPOINTER=1
                             13 ; /home/frank/data/projects/bloxorz/Vide/source/leveldata.enr.c
                             14 ; options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
                             15 ; -fbranch-count-reg -fcommon -fcprop-registers -fdefer-pop
                             16 ; -fearly-inlining -feliminate-unused-debug-types -ffunction-cse -fgcse-lm
                             17 ; -fguess-branch-probability -fident -fif-conversion -fif-conversion2
                             18 ; -finline-functions-called-once -fipa-pure-const -fipa-reference -fivopts
                             19 ; -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
                             20 ; -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
                             21 ; -fpcc-struct-return -fpeephole -fsched-interblock -fsched-spec
                             22 ; -fsched-stalled-insns-dep -fsigned-zeros -fsplit-ivs-in-unroller
                             23 ; -fsplit-wide-types -ftoplevel-reorder -ftrapping-math -ftree-ccp
                             24 ; -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-dce
                             25 ; -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
                             26 ; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
                             27 ; -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
                             28 ; -ftree-ter -ftree-vect-loop-version -funit-at-a-time -fverbose-asm
                             29 ; -fzero-initialized-in-bss
                             30 ; Compiler executable checksum: 74a0323a4f41feb77857e3eae52873ae
                             31 	.globl	_levelCount
                             32 	.area	.text
   5183                      33 _levelCount:
   5183 12                   34 	.byte	18
                             35 	.globl	_levelOffset
   5184                      36 _levelOffset:
   5184 10                   37 	.byte	16
                             38 	.globl	_nextBank
   5185                      39 _nextBank:
   5185 00                   40 	.byte	0
                             41 	.globl	_swatch_0_0
   5186                      42 _swatch_0_0:
                             43 ; type:
   5186 02                   44 	.byte	2
                             45 ; position:
                             46 ; x:
   5187 07                   47 	.byte	7
                             48 ; y:
   5188 01                   49 	.byte	1
                             50 ; fields_count:
   5189 02                   51 	.byte	2
                             52 ; fields:
   518A 60 1E                53 	.word	___compound_literal.0
   518C 60 21                54 	.word	___compound_literal.1
                             55 	.globl	_swatch_0_1
   518E                      56 _swatch_0_1:
                             57 ; type:
   518E 02                   58 	.byte	2
                             59 ; position:
                             60 ; x:
   518F 06                   61 	.byte	6
                             62 ; y:
   5190 00                   63 	.byte	0
                             64 ; fields_count:
   5191 02                   65 	.byte	2
                             66 ; fields:
   5192 60 24                67 	.word	___compound_literal.2
   5194 60 27                68 	.word	___compound_literal.3
                             69 	.globl	_swatch_0_2
   5196                      70 _swatch_0_2:
                             71 ; type:
   5196 02                   72 	.byte	2
                             73 ; position:
                             74 ; x:
   5197 06                   75 	.byte	6
                             76 ; y:
   5198 02                   77 	.byte	2
                             78 ; fields_count:
   5199 02                   79 	.byte	2
                             80 ; fields:
   519A 60 2A                81 	.word	___compound_literal.4
   519C 60 2D                82 	.word	___compound_literal.5
                             83 	.globl	_swatch_0_3
   519E                      84 _swatch_0_3:
                             85 ; type:
   519E 01                   86 	.byte	1
                             87 ; position:
                             88 ; x:
   519F 06                   89 	.byte	6
                             90 ; y:
   51A0 05                   91 	.byte	5
                             92 ; fields_count:
   51A1 02                   93 	.byte	2
                             94 ; fields:
   51A2 60 30                95 	.word	___compound_literal.6
   51A4 60 33                96 	.word	___compound_literal.7
                             97 	.globl	_swatch_0_4
   51A6                      98 _swatch_0_4:
                             99 ; type:
   51A6 01                  100 	.byte	1
                            101 ; position:
                            102 ; x:
   51A7 06                  103 	.byte	6
                            104 ; y:
   51A8 06                  105 	.byte	6
                            106 ; fields_count:
   51A9 02                  107 	.byte	2
                            108 ; fields:
   51AA 60 36               109 	.word	___compound_literal.8
   51AC 60 39               110 	.word	___compound_literal.9
                            111 	.globl	_swatch_0_5
   51AE                     112 _swatch_0_5:
                            113 ; type:
   51AE 02                  114 	.byte	2
                            115 ; position:
                            116 ; x:
   51AF 05                  117 	.byte	5
                            118 ; y:
   51B0 01                  119 	.byte	1
                            120 ; fields_count:
   51B1 02                  121 	.byte	2
                            122 ; fields:
   51B2 60 3C               123 	.word	___compound_literal.10
   51B4 60 3F               124 	.word	___compound_literal.11
                            125 	.globl	_swatch_0_6
   51B6                     126 _swatch_0_6:
                            127 ; type:
   51B6 02                  128 	.byte	2
                            129 ; position:
                            130 ; x:
   51B7 01                  131 	.byte	1
                            132 ; y:
   51B8 09                  133 	.byte	9
                            134 ; fields_count:
   51B9 02                  135 	.byte	2
                            136 ; fields:
   51BA 60 42               137 	.word	___compound_literal.12
   51BC 60 45               138 	.word	___compound_literal.13
                            139 	.globl	_swatch_1_0
   51BE                     140 _swatch_1_0:
                            141 ; type:
   51BE 01                  142 	.byte	1
                            143 ; position:
                            144 ; x:
   51BF 06                  145 	.byte	6
                            146 ; y:
   51C0 0C                  147 	.byte	12
                            148 ; fields_count:
   51C1 01                  149 	.byte	1
                            150 ; fields:
   51C2 60 48               151 	.word	___compound_literal.14
                            152 	.globl	_swatch_1_1
   51C4                     153 _swatch_1_1:
                            154 ; type:
   51C4 01                  155 	.byte	1
                            156 ; position:
                            157 ; x:
   51C5 06                  158 	.byte	6
                            159 ; y:
   51C6 0D                  160 	.byte	13
                            161 ; fields_count:
   51C7 01                  162 	.byte	1
                            163 ; fields:
   51C8 60 4B               164 	.word	___compound_literal.15
                            165 	.globl	_swatch_1_2
   51CA                     166 _swatch_1_2:
                            167 ; type:
   51CA 01                  168 	.byte	1
                            169 ; position:
                            170 ; x:
   51CB 03                  171 	.byte	3
                            172 ; y:
   51CC 0C                  173 	.byte	12
                            174 ; fields_count:
   51CD 01                  175 	.byte	1
                            176 ; fields:
   51CE 60 4E               177 	.word	___compound_literal.16
                            178 	.globl	_swatch_1_3
   51D0                     179 _swatch_1_3:
                            180 ; type:
   51D0 00                  181 	.byte	0
                            182 ; position:
                            183 ; x:
   51D1 01                  184 	.byte	1
                            185 ; y:
   51D2 01                  186 	.byte	1
                            187 ; fields_count:
   51D3 01                  188 	.byte	1
                            189 ; fields:
   51D4 60 51               190 	.word	___compound_literal.17
                            191 	.globl	_swatch_1_4
   51D6                     192 _swatch_1_4:
                            193 ; type:
   51D6 01                  194 	.byte	1
                            195 ; position:
                            196 ; x:
   51D7 00                  197 	.byte	0
                            198 ; y:
   51D8 0C                  199 	.byte	12
                            200 ; fields_count:
   51D9 02                  201 	.byte	2
                            202 ; fields:
   51DA 60 54               203 	.word	___compound_literal.18
   51DC 60 57               204 	.word	___compound_literal.19
                            205 	.globl	_swatch_2_0
   51DE                     206 _swatch_2_0:
                            207 ; type:
   51DE 00                  208 	.byte	0
                            209 ; position:
                            210 ; x:
   51DF 08                  211 	.byte	8
                            212 ; y:
   51E0 07                  213 	.byte	7
                            214 ; fields_count:
   51E1 02                  215 	.byte	2
                            216 ; fields:
   51E2 60 5A               217 	.word	___compound_literal.20
   51E4 60 5D               218 	.word	___compound_literal.21
                            219 	.globl	_swatch_2_1
   51E6                     220 _swatch_2_1:
                            221 ; type:
   51E6 00                  222 	.byte	0
                            223 ; position:
                            224 ; x:
   51E7 07                  225 	.byte	7
                            226 ; y:
   51E8 02                  227 	.byte	2
                            228 ; fields_count:
   51E9 04                  229 	.byte	4
                            230 ; fields:
   51EA 60 60               231 	.word	___compound_literal.22
   51EC 60 63               232 	.word	___compound_literal.23
   51EE 60 66               233 	.word	___compound_literal.24
   51F0 60 69               234 	.word	___compound_literal.25
                            235 	.globl	_swatch_2_2
   51F2                     236 _swatch_2_2:
                            237 ; type:
   51F2 00                  238 	.byte	0
                            239 ; position:
                            240 ; x:
   51F3 05                  241 	.byte	5
                            242 ; y:
   51F4 01                  243 	.byte	1
                            244 ; fields_count:
   51F5 02                  245 	.byte	2
                            246 ; fields:
   51F6 60 6C               247 	.word	___compound_literal.26
   51F8 60 6F               248 	.word	___compound_literal.27
                            249 	.globl	_swatch_2_3
   51FA                     250 _swatch_2_3:
                            251 ; type:
   51FA 00                  252 	.byte	0
                            253 ; position:
                            254 ; x:
   51FB 03                  255 	.byte	3
                            256 ; y:
   51FC 02                  257 	.byte	2
                            258 ; fields_count:
   51FD 04                  259 	.byte	4
                            260 ; fields:
   51FE 60 72               261 	.word	___compound_literal.28
   5200 60 75               262 	.word	___compound_literal.29
   5202 60 78               263 	.word	___compound_literal.30
   5204 60 7B               264 	.word	___compound_literal.31
                            265 	.globl	_swatch_2_4
   5206                     266 _swatch_2_4:
                            267 ; type:
   5206 00                  268 	.byte	0
                            269 ; position:
                            270 ; x:
   5207 02                  271 	.byte	2
                            272 ; y:
   5208 08                  273 	.byte	8
                            274 ; fields_count:
   5209 04                  275 	.byte	4
                            276 ; fields:
   520A 60 7E               277 	.word	___compound_literal.32
   520C 60 81               278 	.word	___compound_literal.33
   520E 60 84               279 	.word	___compound_literal.34
   5210 60 87               280 	.word	___compound_literal.35
                            281 	.globl	_swatch_2_5
   5212                     282 _swatch_2_5:
                            283 ; type:
   5212 01                  284 	.byte	1
                            285 ; position:
                            286 ; x:
   5213 00                  287 	.byte	0
                            288 ; y:
   5214 03                  289 	.byte	3
                            290 ; fields_count:
   5215 01                  291 	.byte	1
                            292 ; fields:
   5216 60 8A               293 	.word	___compound_literal.36
                            294 	.globl	_swatch_3_0
   5218                     295 _swatch_3_0:
                            296 ; type:
   5218 00                  297 	.byte	0
                            298 ; position:
                            299 ; x:
   5219 09                  300 	.byte	9
                            301 ; y:
   521A 0A                  302 	.byte	10
                            303 ; fields_count:
   521B 02                  304 	.byte	2
                            305 ; fields:
   521C 60 8D               306 	.word	___compound_literal.37
   521E 60 90               307 	.word	___compound_literal.38
                            308 	.globl	_swatch_3_1
   5220                     309 _swatch_3_1:
                            310 ; type:
   5220 00                  311 	.byte	0
                            312 ; position:
                            313 ; x:
   5221 04                  314 	.byte	4
                            315 ; y:
   5222 0A                  316 	.byte	10
                            317 ; fields_count:
   5223 02                  318 	.byte	2
                            319 ; fields:
   5224 60 93               320 	.word	___compound_literal.39
   5226 60 96               321 	.word	___compound_literal.40
                            322 	.globl	_swatch_3_2
   5228                     323 _swatch_3_2:
                            324 ; type:
   5228 00                  325 	.byte	0
                            326 ; position:
                            327 ; x:
   5229 00                  328 	.byte	0
                            329 ; y:
   522A 0A                  330 	.byte	10
                            331 ; fields_count:
   522B 02                  332 	.byte	2
                            333 ; fields:
   522C 60 99               334 	.word	___compound_literal.41
   522E 60 9C               335 	.word	___compound_literal.42
                            336 	.globl	_swatch_4_0
   5230                     337 _swatch_4_0:
                            338 ; type:
   5230 00                  339 	.byte	0
                            340 ; position:
                            341 ; x:
   5231 07                  342 	.byte	7
                            343 ; y:
   5232 07                  344 	.byte	7
                            345 ; fields_count:
   5233 02                  346 	.byte	2
                            347 ; fields:
   5234 60 9F               348 	.word	___compound_literal.43
   5236 60 A2               349 	.word	___compound_literal.44
                            350 	.globl	_swatch_4_1
   5238                     351 _swatch_4_1:
                            352 ; type:
   5238 00                  353 	.byte	0
                            354 ; position:
                            355 ; x:
   5239 05                  356 	.byte	5
                            357 ; y:
   523A 03                  358 	.byte	3
                            359 ; fields_count:
   523B 02                  360 	.byte	2
                            361 ; fields:
   523C 60 A5               362 	.word	___compound_literal.45
   523E 60 A8               363 	.word	___compound_literal.46
                            364 	.globl	_swatch_4_2
   5240                     365 _swatch_4_2:
                            366 ; type:
   5240 02                  367 	.byte	2
                            368 ; position:
                            369 ; x:
   5241 05                  370 	.byte	5
                            371 ; y:
   5242 07                  372 	.byte	7
                            373 ; fields_count:
   5243 02                  374 	.byte	2
                            375 ; fields:
   5244 60 AB               376 	.word	___compound_literal.47
   5246 60 AE               377 	.word	___compound_literal.48
                            378 	.globl	_swatch_4_3
   5248                     379 _swatch_4_3:
                            380 ; type:
   5248 00                  381 	.byte	0
                            382 ; position:
                            383 ; x:
   5249 05                  384 	.byte	5
                            385 ; y:
   524A 09                  386 	.byte	9
                            387 ; fields_count:
   524B 02                  388 	.byte	2
                            389 ; fields:
   524C 60 B1               390 	.word	___compound_literal.49
   524E 60 B4               391 	.word	___compound_literal.50
                            392 	.globl	_swatch_4_4
   5250                     393 _swatch_4_4:
                            394 ; type:
   5250 00                  395 	.byte	0
                            396 ; position:
                            397 ; x:
   5251 03                  398 	.byte	3
                            399 ; y:
   5252 0C                  400 	.byte	12
                            401 ; fields_count:
   5253 02                  402 	.byte	2
                            403 ; fields:
   5254 60 B7               404 	.word	___compound_literal.51
   5256 60 BA               405 	.word	___compound_literal.52
                            406 	.globl	_swatch_4_5
   5258                     407 _swatch_4_5:
                            408 ; type:
   5258 00                  409 	.byte	0
                            410 ; position:
                            411 ; x:
   5259 02                  412 	.byte	2
                            413 ; y:
   525A 01                  414 	.byte	1
                            415 ; fields_count:
   525B 02                  416 	.byte	2
                            417 ; fields:
   525C 60 BD               418 	.word	___compound_literal.53
   525E 60 C0               419 	.word	___compound_literal.54
                            420 	.globl	_swatch_5_0
   5260                     421 _swatch_5_0:
                            422 ; type:
   5260 01                  423 	.byte	1
                            424 ; position:
                            425 ; x:
   5261 04                  426 	.byte	4
                            427 ; y:
   5262 08                  428 	.byte	8
                            429 ; fields_count:
   5263 01                  430 	.byte	1
                            431 ; fields:
   5264 60 C3               432 	.word	___compound_literal.55
                            433 	.globl	_swatch_5_1
   5266                     434 _swatch_5_1:
                            435 ; type:
   5266 01                  436 	.byte	1
                            437 ; position:
                            438 ; x:
   5267 03                  439 	.byte	3
                            440 ; y:
   5268 08                  441 	.byte	8
                            442 ; fields_count:
   5269 01                  443 	.byte	1
                            444 ; fields:
   526A 60 C6               445 	.word	___compound_literal.56
                            446 	.globl	_swatch_6_0
   526C                     447 _swatch_6_0:
                            448 ; type:
   526C 00                  449 	.byte	0
                            450 ; position:
                            451 ; x:
   526D 07                  452 	.byte	7
                            453 ; y:
   526E 07                  454 	.byte	7
                            455 ; fields_count:
   526F 02                  456 	.byte	2
                            457 ; fields:
   5270 60 C9               458 	.word	___compound_literal.57
   5272 60 CC               459 	.word	___compound_literal.58
                            460 	.globl	_swatch_6_1
   5274                     461 _swatch_6_1:
                            462 ; type:
   5274 00                  463 	.byte	0
                            464 ; position:
                            465 ; x:
   5275 06                  466 	.byte	6
                            467 ; y:
   5276 05                  468 	.byte	5
                            469 ; fields_count:
   5277 02                  470 	.byte	2
                            471 ; fields:
   5278 60 CF               472 	.word	___compound_literal.59
   527A 60 D2               473 	.word	___compound_literal.60
                            474 	.globl	_swatch_6_2
   527C                     475 _swatch_6_2:
                            476 ; type:
   527C 01                  477 	.byte	1
                            478 ; position:
                            479 ; x:
   527D 00                  480 	.byte	0
                            481 ; y:
   527E 03                  482 	.byte	3
                            483 ; fields_count:
   527F 01                  484 	.byte	1
                            485 ; fields:
   5280 60 D5               486 	.word	___compound_literal.61
                            487 	.globl	_swatch_6_3
   5282                     488 _swatch_6_3:
                            489 ; type:
   5282 01                  490 	.byte	1
                            491 ; position:
                            492 ; x:
   5283 00                  493 	.byte	0
                            494 ; y:
   5284 0A                  495 	.byte	10
                            496 ; fields_count:
   5285 01                  497 	.byte	1
                            498 ; fields:
   5286 60 D8               499 	.word	___compound_literal.62
                            500 	.globl	_swatch_7_0
   5288                     501 _swatch_7_0:
                            502 ; type:
   5288 01                  503 	.byte	1
                            504 ; position:
                            505 ; x:
   5289 08                  506 	.byte	8
                            507 ; y:
   528A 02                  508 	.byte	2
                            509 ; fields_count:
   528B 01                  510 	.byte	1
                            511 ; fields:
   528C 60 DB               512 	.word	___compound_literal.63
                            513 	.globl	_swatch_7_1
   528E                     514 _swatch_7_1:
                            515 ; type:
   528E 00                  516 	.byte	0
                            517 ; position:
                            518 ; x:
   528F 08                  519 	.byte	8
                            520 ; y:
   5290 0D                  521 	.byte	13
                            522 ; fields_count:
   5291 03                  523 	.byte	3
                            524 ; fields:
   5292 60 DE               525 	.word	___compound_literal.64
   5294 60 E1               526 	.word	___compound_literal.65
   5296 60 E4               527 	.word	___compound_literal.66
                            528 	.globl	_swatch_7_2
   5298                     529 _swatch_7_2:
                            530 ; type:
   5298 00                  531 	.byte	0
                            532 ; position:
                            533 ; x:
   5299 06                  534 	.byte	6
                            535 ; y:
   529A 0E                  536 	.byte	14
                            537 ; fields_count:
   529B 03                  538 	.byte	3
                            539 ; fields:
   529C 60 E7               540 	.word	___compound_literal.67
   529E 60 EA               541 	.word	___compound_literal.68
   52A0 60 ED               542 	.word	___compound_literal.69
                            543 	.globl	_swatch_7_3
   52A2                     544 _swatch_7_3:
                            545 ; type:
   52A2 00                  546 	.byte	0
                            547 ; position:
                            548 ; x:
   52A3 04                  549 	.byte	4
                            550 ; y:
   52A4 00                  551 	.byte	0
                            552 ; fields_count:
   52A5 03                  553 	.byte	3
                            554 ; fields:
   52A6 60 F0               555 	.word	___compound_literal.70
   52A8 60 F3               556 	.word	___compound_literal.71
   52AA 60 F6               557 	.word	___compound_literal.72
                            558 	.globl	_swatch_7_4
   52AC                     559 _swatch_7_4:
                            560 ; type:
   52AC 02                  561 	.byte	2
                            562 ; position:
                            563 ; x:
   52AD 02                  564 	.byte	2
                            565 ; y:
   52AE 0C                  566 	.byte	12
                            567 ; fields_count:
   52AF 02                  568 	.byte	2
                            569 ; fields:
   52B0 60 F9               570 	.word	___compound_literal.73
   52B2 60 FC               571 	.word	___compound_literal.74
                            572 	.globl	_swatch_8_0
   52B4                     573 _swatch_8_0:
                            574 ; type:
   52B4 01                  575 	.byte	1
                            576 ; position:
                            577 ; x:
   52B5 07                  578 	.byte	7
                            579 ; y:
   52B6 0C                  580 	.byte	12
                            581 ; fields_count:
   52B7 02                  582 	.byte	2
                            583 ; fields:
   52B8 60 FF               584 	.word	___compound_literal.75
   52BA 61 02               585 	.word	___compound_literal.76
                            586 	.globl	_swatch_8_1
   52BC                     587 _swatch_8_1:
                            588 ; type:
   52BC 02                  589 	.byte	2
                            590 ; position:
                            591 ; x:
   52BD 07                  592 	.byte	7
                            593 ; y:
   52BE 0E                  594 	.byte	14
                            595 ; fields_count:
   52BF 02                  596 	.byte	2
                            597 ; fields:
   52C0 61 05               598 	.word	___compound_literal.77
   52C2 61 08               599 	.word	___compound_literal.78
                            600 	.globl	_swatch_8_2
   52C4                     601 _swatch_8_2:
                            602 ; type:
   52C4 01                  603 	.byte	1
                            604 ; position:
                            605 ; x:
   52C5 06                  606 	.byte	6
                            607 ; y:
   52C6 06                  608 	.byte	6
                            609 ; fields_count:
   52C7 01                  610 	.byte	1
                            611 ; fields:
   52C8 61 0B               612 	.word	___compound_literal.79
                            613 	.globl	_swatch_8_3
   52CA                     614 _swatch_8_3:
                            615 ; type:
   52CA 01                  616 	.byte	1
                            617 ; position:
                            618 ; x:
   52CB 05                  619 	.byte	5
                            620 ; y:
   52CC 01                  621 	.byte	1
                            622 ; fields_count:
   52CD 01                  623 	.byte	1
                            624 ; fields:
   52CE 61 0E               625 	.word	___compound_literal.80
                            626 	.globl	_swatch_8_4
   52D0                     627 _swatch_8_4:
                            628 ; type:
   52D0 01                  629 	.byte	1
                            630 ; position:
                            631 ; x:
   52D1 01                  632 	.byte	1
                            633 ; y:
   52D2 06                  634 	.byte	6
                            635 ; fields_count:
   52D3 02                  636 	.byte	2
                            637 ; fields:
   52D4 61 11               638 	.word	___compound_literal.81
   52D6 61 14               639 	.word	___compound_literal.82
                            640 	.globl	_swatch_9_0
   52D8                     641 _swatch_9_0:
                            642 ; type:
   52D8 00                  643 	.byte	0
                            644 ; position:
                            645 ; x:
   52D9 07                  646 	.byte	7
                            647 ; y:
   52DA 04                  648 	.byte	4
                            649 ; fields_count:
   52DB 04                  650 	.byte	4
                            651 ; fields:
   52DC 61 17               652 	.word	___compound_literal.83
   52DE 61 1A               653 	.word	___compound_literal.84
   52E0 61 1D               654 	.word	___compound_literal.85
   52E2 61 20               655 	.word	___compound_literal.86
                            656 	.globl	_swatch_9_1
   52E4                     657 _swatch_9_1:
                            658 ; type:
   52E4 01                  659 	.byte	1
                            660 ; position:
                            661 ; x:
   52E5 03                  662 	.byte	3
                            663 ; y:
   52E6 02                  664 	.byte	2
                            665 ; fields_count:
   52E7 02                  666 	.byte	2
                            667 ; fields:
   52E8 61 23               668 	.word	___compound_literal.87
   52EA 61 26               669 	.word	___compound_literal.88
                            670 	.globl	_swatch_9_2
   52EC                     671 _swatch_9_2:
                            672 ; type:
   52EC 00                  673 	.byte	0
                            674 ; position:
                            675 ; x:
   52ED 01                  676 	.byte	1
                            677 ; y:
   52EE 08                  678 	.byte	8
                            679 ; fields_count:
   52EF 03                  680 	.byte	3
                            681 ; fields:
   52F0 61 29               682 	.word	___compound_literal.89
   52F2 61 2C               683 	.word	___compound_literal.90
   52F4 61 2F               684 	.word	___compound_literal.91
                            685 	.globl	_swatch_10_0
   52F6                     686 _swatch_10_0:
                            687 ; type:
   52F6 02                  688 	.byte	2
                            689 ; position:
                            690 ; x:
   52F7 09                  691 	.byte	9
                            692 ; y:
   52F8 0D                  693 	.byte	13
                            694 ; fields_count:
   52F9 02                  695 	.byte	2
                            696 ; fields:
   52FA 61 32               697 	.word	___compound_literal.92
   52FC 61 35               698 	.word	___compound_literal.93
                            699 	.globl	_swatch_10_1
   52FE                     700 _swatch_10_1:
                            701 ; type:
   52FE 00                  702 	.byte	0
                            703 ; position:
                            704 ; x:
   52FF 08                  705 	.byte	8
                            706 ; y:
   5300 07                  707 	.byte	7
                            708 ; fields_count:
   5301 02                  709 	.byte	2
                            710 ; fields:
   5302 61 38               711 	.word	___compound_literal.94
   5304 61 3B               712 	.word	___compound_literal.95
                            713 	.globl	_swatch_10_2
   5306                     714 _swatch_10_2:
                            715 ; type:
   5306 01                  716 	.byte	1
                            717 ; position:
                            718 ; x:
   5307 02                  719 	.byte	2
                            720 ; y:
   5308 01                  721 	.byte	1
                            722 ; fields_count:
   5309 02                  723 	.byte	2
                            724 ; fields:
   530A 61 3E               725 	.word	___compound_literal.96
   530C 61 41               726 	.word	___compound_literal.97
                            727 	.globl	_swatch_11_0
   530E                     728 _swatch_11_0:
                            729 ; type:
   530E 01                  730 	.byte	1
                            731 ; position:
                            732 ; x:
   530F 06                  733 	.byte	6
                            734 ; y:
   5310 0D                  735 	.byte	13
                            736 ; fields_count:
   5311 02                  737 	.byte	2
                            738 ; fields:
   5312 61 44               739 	.word	___compound_literal.98
   5314 61 47               740 	.word	___compound_literal.99
                            741 	.globl	_swatch_11_1
   5316                     742 _swatch_11_1:
                            743 ; type:
   5316 00                  744 	.byte	0
                            745 ; position:
                            746 ; x:
   5317 04                  747 	.byte	4
                            748 ; y:
   5318 0C                  749 	.byte	12
                            750 ; fields_count:
   5319 01                  751 	.byte	1
                            752 ; fields:
   531A 61 4A               753 	.word	___compound_literal.100
                            754 	.globl	_swatch_11_2
   531C                     755 _swatch_11_2:
                            756 ; type:
   531C 00                  757 	.byte	0
                            758 ; position:
                            759 ; x:
   531D 04                  760 	.byte	4
                            761 ; y:
   531E 0D                  762 	.byte	13
                            763 ; fields_count:
   531F 01                  764 	.byte	1
                            765 ; fields:
   5320 61 4D               766 	.word	___compound_literal.101
                            767 	.globl	_swatch_12_0
   5322                     768 _swatch_12_0:
                            769 ; type:
   5322 02                  770 	.byte	2
                            771 ; position:
                            772 ; x:
   5323 04                  773 	.byte	4
                            774 ; y:
   5324 0B                  775 	.byte	11
                            776 ; fields_count:
   5325 02                  777 	.byte	2
                            778 ; fields:
   5326 61 50               779 	.word	___compound_literal.102
   5328 61 53               780 	.word	___compound_literal.103
                            781 	.globl	_swatch_12_1
   532A                     782 _swatch_12_1:
                            783 ; type:
   532A 00                  784 	.byte	0
                            785 ; position:
                            786 ; x:
   532B 02                  787 	.byte	2
                            788 ; y:
   532C 0B                  789 	.byte	11
                            790 ; fields_count:
   532D 04                  791 	.byte	4
                            792 ; fields:
   532E 61 56               793 	.word	___compound_literal.104
   5330 61 59               794 	.word	___compound_literal.105
   5332 61 5C               795 	.word	___compound_literal.106
   5334 61 5F               796 	.word	___compound_literal.107
                            797 	.globl	_swatch_13_0
   5336                     798 _swatch_13_0:
                            799 ; type:
   5336 00                  800 	.byte	0
                            801 ; position:
                            802 ; x:
   5337 09                  803 	.byte	9
                            804 ; y:
   5338 02                  805 	.byte	2
                            806 ; fields_count:
   5339 04                  807 	.byte	4
                            808 ; fields:
   533A 61 62               809 	.word	___compound_literal.108
   533C 61 65               810 	.word	___compound_literal.109
   533E 61 68               811 	.word	___compound_literal.110
   5340 61 6B               812 	.word	___compound_literal.111
                            813 	.globl	_swatch_13_1
   5342                     814 _swatch_13_1:
                            815 ; type:
   5342 01                  816 	.byte	1
                            817 ; position:
                            818 ; x:
   5343 09                  819 	.byte	9
                            820 ; y:
   5344 0C                  821 	.byte	12
                            822 ; fields_count:
   5345 02                  823 	.byte	2
                            824 ; fields:
   5346 61 6E               825 	.word	___compound_literal.112
   5348 61 71               826 	.word	___compound_literal.113
                            827 	.globl	_swatch_13_2
   534A                     828 _swatch_13_2:
                            829 ; type:
   534A 01                  830 	.byte	1
                            831 ; position:
                            832 ; x:
   534B 06                  833 	.byte	6
                            834 ; y:
   534C 00                  835 	.byte	0
                            836 ; fields_count:
   534D 04                  837 	.byte	4
                            838 ; fields:
   534E 61 74               839 	.word	___compound_literal.114
   5350 61 77               840 	.word	___compound_literal.115
   5352 61 7A               841 	.word	___compound_literal.116
   5354 61 7D               842 	.word	___compound_literal.117
                            843 	.globl	_swatch_13_3
   5356                     844 _swatch_13_3:
                            845 ; type:
   5356 01                  846 	.byte	1
                            847 ; position:
                            848 ; x:
   5357 06                  849 	.byte	6
                            850 ; y:
   5358 0E                  851 	.byte	14
                            852 ; fields_count:
   5359 01                  853 	.byte	1
                            854 ; fields:
   535A 61 80               855 	.word	___compound_literal.118
                            856 	.globl	_swatch_13_4
   535C                     857 _swatch_13_4:
                            858 ; type:
   535C 00                  859 	.byte	0
                            860 ; position:
                            861 ; x:
   535D 03                  862 	.byte	3
                            863 ; y:
   535E 0C                  864 	.byte	12
                            865 ; fields_count:
   535F 02                  866 	.byte	2
                            867 ; fields:
   5360 61 83               868 	.word	___compound_literal.119
   5362 61 86               869 	.word	___compound_literal.120
                            870 	.globl	_swatch_13_5
   5364                     871 _swatch_13_5:
                            872 ; type:
   5364 00                  873 	.byte	0
                            874 ; position:
                            875 ; x:
   5365 00                  876 	.byte	0
                            877 ; y:
   5366 0C                  878 	.byte	12
                            879 ; fields_count:
   5367 08                  880 	.byte	8
                            881 ; fields:
   5368 61 89               882 	.word	___compound_literal.121
   536A 61 8C               883 	.word	___compound_literal.122
   536C 61 8F               884 	.word	___compound_literal.123
   536E 61 92               885 	.word	___compound_literal.124
   5370 61 95               886 	.word	___compound_literal.125
   5372 61 98               887 	.word	___compound_literal.126
   5374 61 9B               888 	.word	___compound_literal.127
   5376 61 9E               889 	.word	___compound_literal.128
                            890 	.globl	_swatch_14_0
   5378                     891 _swatch_14_0:
                            892 ; type:
   5378 01                  893 	.byte	1
                            894 ; position:
                            895 ; x:
   5379 07                  896 	.byte	7
                            897 ; y:
   537A 0E                  898 	.byte	14
                            899 ; fields_count:
   537B 04                  900 	.byte	4
                            901 ; fields:
   537C 61 A1               902 	.word	___compound_literal.129
   537E 61 A4               903 	.word	___compound_literal.130
   5380 61 A7               904 	.word	___compound_literal.131
   5382 61 AA               905 	.word	___compound_literal.132
                            906 	.globl	_swatch_14_1
   5384                     907 _swatch_14_1:
                            908 ; type:
   5384 01                  909 	.byte	1
                            910 ; position:
                            911 ; x:
   5385 04                  912 	.byte	4
                            913 ; y:
   5386 01                  914 	.byte	1
                            915 ; fields_count:
   5387 02                  916 	.byte	2
                            917 ; fields:
   5388 61 AD               918 	.word	___compound_literal.133
   538A 61 B0               919 	.word	___compound_literal.134
                            920 	.globl	_swatch_14_2
   538C                     921 _swatch_14_2:
                            922 ; type:
   538C 01                  923 	.byte	1
                            924 ; position:
                            925 ; x:
   538D 02                  926 	.byte	2
                            927 ; y:
   538E 0C                  928 	.byte	12
                            929 ; fields_count:
   538F 01                  930 	.byte	1
                            931 ; fields:
   5390 61 B3               932 	.word	___compound_literal.135
                            933 	.globl	_swatch_15_0
   5392                     934 _swatch_15_0:
                            935 ; type:
   5392 01                  936 	.byte	1
                            937 ; position:
                            938 ; x:
   5393 08                  939 	.byte	8
                            940 ; y:
   5394 08                  941 	.byte	8
                            942 ; fields_count:
   5395 02                  943 	.byte	2
                            944 ; fields:
   5396 61 B6               945 	.word	___compound_literal.136
   5398 61 B9               946 	.word	___compound_literal.137
                            947 	.globl	_swatch_15_1
   539A                     948 _swatch_15_1:
                            949 ; type:
   539A 00                  950 	.byte	0
                            951 ; position:
                            952 ; x:
   539B 05                  953 	.byte	5
                            954 ; y:
   539C 06                  955 	.byte	6
                            956 ; fields_count:
   539D 08                  957 	.byte	8
                            958 ; fields:
   539E 61 BC               959 	.word	___compound_literal.138
   53A0 61 BF               960 	.word	___compound_literal.139
   53A2 61 C2               961 	.word	___compound_literal.140
   53A4 61 C5               962 	.word	___compound_literal.141
   53A6 61 C8               963 	.word	___compound_literal.142
   53A8 61 CB               964 	.word	___compound_literal.143
   53AA 61 CE               965 	.word	___compound_literal.144
   53AC 61 D1               966 	.word	___compound_literal.145
                            967 	.globl	_swatch_15_2
   53AE                     968 _swatch_15_2:
                            969 ; type:
   53AE 00                  970 	.byte	0
                            971 ; position:
                            972 ; x:
   53AF 02                  973 	.byte	2
                            974 ; y:
   53B0 07                  975 	.byte	7
                            976 ; fields_count:
   53B1 08                  977 	.byte	8
                            978 ; fields:
   53B2 61 D4               979 	.word	___compound_literal.146
   53B4 61 D7               980 	.word	___compound_literal.147
   53B6 61 DA               981 	.word	___compound_literal.148
   53B8 61 DD               982 	.word	___compound_literal.149
   53BA 61 E0               983 	.word	___compound_literal.150
   53BC 61 E3               984 	.word	___compound_literal.151
   53BE 61 E6               985 	.word	___compound_literal.152
   53C0 61 E9               986 	.word	___compound_literal.153
                            987 	.globl	_swatch_15_3
   53C2                     988 _swatch_15_3:
                            989 ; type:
   53C2 01                  990 	.byte	1
                            991 ; position:
                            992 ; x:
   53C3 01                  993 	.byte	1
                            994 ; y:
   53C4 02                  995 	.byte	2
                            996 ; fields_count:
   53C5 05                  997 	.byte	5
                            998 ; fields:
   53C6 61 EC               999 	.word	___compound_literal.154
   53C8 61 EF              1000 	.word	___compound_literal.155
   53CA 61 F2              1001 	.word	___compound_literal.156
   53CC 61 F5              1002 	.word	___compound_literal.157
   53CE 61 F8              1003 	.word	___compound_literal.158
                           1004 	.globl	_swatch_15_4
   53D0                    1005 _swatch_15_4:
                           1006 ; type:
   53D0 01                 1007 	.byte	1
                           1008 ; position:
                           1009 ; x:
   53D1 01                 1010 	.byte	1
                           1011 ; y:
   53D2 06                 1012 	.byte	6
                           1013 ; fields_count:
   53D3 02                 1014 	.byte	2
                           1015 ; fields:
   53D4 61 FB              1016 	.word	___compound_literal.159
   53D6 61 FE              1017 	.word	___compound_literal.160
                           1018 	.globl	_swatch_16_0
   53D8                    1019 _swatch_16_0:
                           1020 ; type:
   53D8 01                 1021 	.byte	1
                           1022 ; position:
                           1023 ; x:
   53D9 09                 1024 	.byte	9
                           1025 ; y:
   53DA 0E                 1026 	.byte	14
                           1027 ; fields_count:
   53DB 04                 1028 	.byte	4
                           1029 ; fields:
   53DC 62 01              1030 	.word	___compound_literal.161
   53DE 62 04              1031 	.word	___compound_literal.162
   53E0 62 07              1032 	.word	___compound_literal.163
   53E2 62 0A              1033 	.word	___compound_literal.164
                           1034 	.globl	_swatch_16_1
   53E4                    1035 _swatch_16_1:
                           1036 ; type:
   53E4 01                 1037 	.byte	1
                           1038 ; position:
                           1039 ; x:
   53E5 07                 1040 	.byte	7
                           1041 ; y:
   53E6 0C                 1042 	.byte	12
                           1043 ; fields_count:
   53E7 02                 1044 	.byte	2
                           1045 ; fields:
   53E8 62 0D              1046 	.word	___compound_literal.165
   53EA 62 10              1047 	.word	___compound_literal.166
                           1048 	.globl	_swatch_16_2
   53EC                    1049 _swatch_16_2:
                           1050 ; type:
   53EC 01                 1051 	.byte	1
                           1052 ; position:
                           1053 ; x:
   53ED 02                 1054 	.byte	2
                           1055 ; y:
   53EE 06                 1056 	.byte	6
                           1057 ; fields_count:
   53EF 02                 1058 	.byte	2
                           1059 ; fields:
   53F0 62 13              1060 	.word	___compound_literal.167
   53F2 62 16              1061 	.word	___compound_literal.168
                           1062 	.globl	_swatch_17_0
   53F4                    1063 _swatch_17_0:
                           1064 ; type:
   53F4 00                 1065 	.byte	0
                           1066 ; position:
                           1067 ; x:
   53F5 09                 1068 	.byte	9
                           1069 ; y:
   53F6 07                 1070 	.byte	7
                           1071 ; fields_count:
   53F7 02                 1072 	.byte	2
                           1073 ; fields:
   53F8 62 19              1074 	.word	___compound_literal.169
   53FA 62 1C              1075 	.word	___compound_literal.170
                           1076 	.globl	_swatch_17_1
   53FC                    1077 _swatch_17_1:
                           1078 ; type:
   53FC 00                 1079 	.byte	0
                           1080 ; position:
                           1081 ; x:
   53FD 07                 1082 	.byte	7
                           1083 ; y:
   53FE 05                 1084 	.byte	5
                           1085 ; fields_count:
   53FF 02                 1086 	.byte	2
                           1087 ; fields:
   5400 62 1F              1088 	.word	___compound_literal.171
   5402 62 22              1089 	.word	___compound_literal.172
                           1090 	.globl	_swatch_17_2
   5404                    1091 _swatch_17_2:
                           1092 ; type:
   5404 00                 1093 	.byte	0
                           1094 ; position:
                           1095 ; x:
   5405 07                 1096 	.byte	7
                           1097 ; y:
   5406 08                 1098 	.byte	8
                           1099 ; fields_count:
   5407 02                 1100 	.byte	2
                           1101 ; fields:
   5408 62 25              1102 	.word	___compound_literal.173
   540A 62 28              1103 	.word	___compound_literal.174
                           1104 	.globl	_swatch_17_3
   540C                    1105 _swatch_17_3:
                           1106 ; type:
   540C 00                 1107 	.byte	0
                           1108 ; position:
                           1109 ; x:
   540D 06                 1110 	.byte	6
                           1111 ; y:
   540E 09                 1112 	.byte	9
                           1113 ; fields_count:
   540F 02                 1114 	.byte	2
                           1115 ; fields:
   5410 62 2B              1116 	.word	___compound_literal.175
   5412 62 2E              1117 	.word	___compound_literal.176
                           1118 	.globl	_swatch_17_4
   5414                    1119 _swatch_17_4:
                           1120 ; type:
   5414 00                 1121 	.byte	0
                           1122 ; position:
                           1123 ; x:
   5415 06                 1124 	.byte	6
                           1125 ; y:
   5416 0A                 1126 	.byte	10
                           1127 ; fields_count:
   5417 02                 1128 	.byte	2
                           1129 ; fields:
   5418 62 31              1130 	.word	___compound_literal.177
   541A 62 34              1131 	.word	___compound_literal.178
                           1132 	.globl	_swatch_17_5
   541C                    1133 _swatch_17_5:
                           1134 ; type:
   541C 00                 1135 	.byte	0
                           1136 ; position:
                           1137 ; x:
   541D 06                 1138 	.byte	6
                           1139 ; y:
   541E 0D                 1140 	.byte	13
                           1141 ; fields_count:
   541F 02                 1142 	.byte	2
                           1143 ; fields:
   5420 62 37              1144 	.word	___compound_literal.179
   5422 62 3A              1145 	.word	___compound_literal.180
                           1146 	.globl	_swatch_17_6
   5424                    1147 _swatch_17_6:
                           1148 ; type:
   5424 00                 1149 	.byte	0
                           1150 ; position:
                           1151 ; x:
   5425 05                 1152 	.byte	5
                           1153 ; y:
   5426 07                 1154 	.byte	7
                           1155 ; fields_count:
   5427 02                 1156 	.byte	2
                           1157 ; fields:
   5428 62 3D              1158 	.word	___compound_literal.181
   542A 62 40              1159 	.word	___compound_literal.182
                           1160 	.globl	_swatch_17_7
   542C                    1161 _swatch_17_7:
                           1162 ; type:
   542C 00                 1163 	.byte	0
                           1164 ; position:
                           1165 ; x:
   542D 05                 1166 	.byte	5
                           1167 ; y:
   542E 0A                 1168 	.byte	10
                           1169 ; fields_count:
   542F 02                 1170 	.byte	2
                           1171 ; fields:
   5430 62 43              1172 	.word	___compound_literal.183
   5432 62 46              1173 	.word	___compound_literal.184
                           1174 	.globl	_swatch_17_8
   5434                    1175 _swatch_17_8:
                           1176 ; type:
   5434 00                 1177 	.byte	0
                           1178 ; position:
                           1179 ; x:
   5435 04                 1180 	.byte	4
                           1181 ; y:
   5436 0B                 1182 	.byte	11
                           1183 ; fields_count:
   5437 02                 1184 	.byte	2
                           1185 ; fields:
   5438 62 49              1186 	.word	___compound_literal.185
   543A 62 4C              1187 	.word	___compound_literal.186
                           1188 	.globl	_swatch_17_9
   543C                    1189 _swatch_17_9:
                           1190 ; type:
   543C 00                 1191 	.byte	0
                           1192 ; position:
                           1193 ; x:
   543D 03                 1194 	.byte	3
                           1195 ; y:
   543E 0B                 1196 	.byte	11
                           1197 ; fields_count:
   543F 02                 1198 	.byte	2
                           1199 ; fields:
   5440 62 4F              1200 	.word	___compound_literal.187
   5442 62 52              1201 	.word	___compound_literal.188
                           1202 	.globl	_swatch_17_10
   5444                    1203 _swatch_17_10:
                           1204 ; type:
   5444 00                 1205 	.byte	0
                           1206 ; position:
                           1207 ; x:
   5445 02                 1208 	.byte	2
                           1209 ; y:
   5446 06                 1210 	.byte	6
                           1211 ; fields_count:
   5447 02                 1212 	.byte	2
                           1213 ; fields:
   5448 62 55              1214 	.word	___compound_literal.189
   544A 62 58              1215 	.word	___compound_literal.190
                           1216 	.globl	_swatch_17_11
   544C                    1217 _swatch_17_11:
                           1218 ; type:
   544C 00                 1219 	.byte	0
                           1220 ; position:
                           1221 ; x:
   544D 02                 1222 	.byte	2
                           1223 ; y:
   544E 0D                 1224 	.byte	13
                           1225 ; fields_count:
   544F 02                 1226 	.byte	2
                           1227 ; fields:
   5450 62 5B              1228 	.word	___compound_literal.191
   5452 62 5E              1229 	.word	___compound_literal.192
                           1230 	.globl	_swatch_17_12
   5454                    1231 _swatch_17_12:
                           1232 ; type:
   5454 01                 1233 	.byte	1
                           1234 ; position:
                           1235 ; x:
   5455 02                 1236 	.byte	2
                           1237 ; y:
   5456 0E                 1238 	.byte	14
                           1239 ; fields_count:
   5457 01                 1240 	.byte	1
                           1241 ; fields:
   5458 62 61              1242 	.word	___compound_literal.193
                           1243 	.globl	_level0
   545A                    1244 LC0:
   545A 20 20 20 20 20 20  1245 	.ascii	"      v        vbv  bbb   v   bbb   l   bbb   r "
        76 20 20 20 20 20
        20 20 20 76 62 76
        20 20 62 62 62 20
        20 20 76 20 20 20
        62 62 62 20 20 20
        6C 20 20 20 62 62
        62 20 20 20 72 20
   548A 20 20 20 62 20 20  1246 	.ascii	"   b    h    b    h    b    b   bbb   l   bvb   "
        20 20 68 20 20 20
        20 62 20 20 20 20
        68 20 20 20 20 62
        20 20 20 20 62 20
        20 20 62 62 62 20
        20 20 6C 20 20 20
        62 76 62 20 20 20
   54BA 72 20 20 20 62 62  1247 	.ascii	"r   bbb  bbb       beb       bbb                "
        62 20 20 62 62 62
        20 20 20 20 20 20
        20 62 65 62 20 20
        20 20 20 20 20 62
        62 62 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
   54EA 20 20 20 20 20 20  1248 	.ascii	"      \0"
        00
   54F1                    1249 _level0:
                           1250 ; geometry:
   54F1 54 5A              1251 	.word	LC0
                           1252 ; start:
                           1253 ; x:
   54F3 01                 1254 	.byte	1
                           1255 ; y:
   54F4 03                 1256 	.byte	3
                           1257 ; swatches_count:
   54F5 07                 1258 	.byte	7
                           1259 ; swatches:
   54F6 51 86              1260 	.word	_swatch_0_0
   54F8 51 8E              1261 	.word	_swatch_0_1
   54FA 51 96              1262 	.word	_swatch_0_2
   54FC 51 9E              1263 	.word	_swatch_0_3
   54FE 51 A6              1264 	.word	_swatch_0_4
   5500 51 AE              1265 	.word	_swatch_0_5
   5502 51 B6              1266 	.word	_swatch_0_6
                           1267 	.globl	_level1
   5504                    1268 LC1:
   5504 62 62 62 62 62 62  1269 	.ascii	"bbbbbbbbbbbsbbbbbbbbbbbbbbbbbb  b     b   b     "
        62 62 62 62 62 73
        62 62 62 62 62 62
        62 62 62 62 62 62
        62 62 62 62 62 62
        20 20 62 20 20 20
        20 20 62 20 20 20
        62 20 20 20 20 20
   5534 62 20 20 20 62 20  1270 	.ascii	"b   b     b   br    b   bb   rb   lb   bb    b  "
        20 20 20 20 62 20
        20 20 62 72 20 20
        20 20 62 20 20 20
        62 62 20 20 20 72
        62 20 20 20 6C 62
        20 20 20 62 62 20
        20 20 20 62 20 20
   5564 20 62 6C 20 20 20  1271 	.ascii	" bl    b   b  bbbb   b  hbbh  hbb       heb     "
        20 62 20 20 20 62
        20 20 62 62 62 62
        20 20 20 62 20 20
        68 62 62 68 20 20
        68 62 62 20 20 20
        20 20 20 20 68 65
        62 20 20 20 20 20
   5594 20 20 62 62 62 20  1272 	.ascii	"  bbb \0"
        00
   559B                    1273 _level1:
                           1274 ; geometry:
   559B 55 04              1275 	.word	LC1
                           1276 ; start:
                           1277 ; x:
   559D 08                 1278 	.byte	8
                           1279 ; y:
   559E 01                 1280 	.byte	1
                           1281 ; swatches_count:
   559F 05                 1282 	.byte	5
                           1283 ; swatches:
   55A0 51 BE              1284 	.word	_swatch_1_0
   55A2 51 C4              1285 	.word	_swatch_1_1
   55A4 51 CA              1286 	.word	_swatch_1_2
   55A6 51 D0              1287 	.word	_swatch_1_3
   55A8 51 D6              1288 	.word	_swatch_1_4
                           1289 	.globl	_level2
   55AA                    1290 LC2:
   55AA 62 62 62 62 62 62  1291 	.ascii	"bbbbbbbb  l  bbsbb  r  sbbbs  h  bbbbb      bbb "
        62 62 20 20 6C 20
        20 62 62 73 62 62
        20 20 72 20 20 73
        62 62 62 73 20 20
        68 20 20 62 62 62
        62 62 20 20 20 20
        20 20 62 62 62 20
   55DA 20 20 20 20 20 20  1292 	.ascii	"      lb         b         bbbs   sbbl         r"
        6C 62 20 20 20 20
        20 20 20 20 20 62
        20 20 20 20 20 20
        20 20 20 62 62 62
        73 20 20 20 73 62
        62 6C 20 20 20 20
        20 20 20 20 20 72
   560A 20 20 20 20 62 62  1293 	.ascii	"    bb   b    bbb  b    bebbbl    bbb  r        "
        20 20 20 62 20 20
        20 20 62 62 62 20
        20 62 20 20 20 20
        62 65 62 62 62 6C
        20 20 20 20 62 62
        62 20 20 72 20 20
        20 20 20 20 20 20
   563A 20 62 20 20 20 20  1294 	.ascii	" b    \0"
        00
   5641                    1295 _level2:
                           1296 ; geometry:
   5641 55 AA              1297 	.word	LC2
                           1298 ; start:
                           1299 ; x:
   5643 05                 1300 	.byte	5
                           1301 ; y:
   5644 02                 1302 	.byte	2
                           1303 ; swatches_count:
   5645 06                 1304 	.byte	6
                           1305 ; swatches:
   5646 51 DE              1306 	.word	_swatch_2_0
   5648 51 E6              1307 	.word	_swatch_2_1
   564A 51 F2              1308 	.word	_swatch_2_2
   564C 51 FA              1309 	.word	_swatch_2_3
   564E 52 06              1310 	.word	_swatch_2_4
   5650 52 12              1311 	.word	_swatch_2_5
                           1312 	.globl	_level3
   5652                    1313 LC3:
   5652 20 20 62 62 62 20  1314 	.ascii	"  bbb     bbbeb    bkbbbb    bq        bb       "
        20 20 20 20 62 62
        62 65 62 20 20 20
        20 62 6B 62 62 62
        62 20 20 20 20 62
        71 20 20 20 20 20
        20 20 20 62 62 20
        20 20 20 20 20 20
   5682 20 62 62 62 62 62  1315 	.ascii	" bbbbbb  bbbbbbbb  bbbb   l    bb   r    bb   b "
        62 20 20 62 62 62
        62 62 62 62 62 20
        20 62 62 62 62 20
        20 20 6C 20 20 20
        20 62 62 20 20 20
        72 20 20 20 20 62
        62 20 20 20 62 20
   56B2 20 20 20 62 73 20  1316 	.ascii	"   bs   s    sb   b    bb   b    bb   bbbbbb    "
        20 20 73 20 20 20
        20 73 62 20 20 20
        62 20 20 20 20 62
        62 20 20 20 62 20
        20 20 20 62 62 20
        20 20 62 62 62 62
        62 62 20 20 20 20
   56E2 62 62 62 62 62 62  1317 	.ascii	"bbbbbb\0"
        00
   56E9                    1318 _level3:
                           1319 ; geometry:
   56E9 56 52              1320 	.word	LC3
                           1321 ; start:
                           1322 ; x:
   56EB 09                 1323 	.byte	9
                           1324 ; y:
   56EC 01                 1325 	.byte	1
                           1326 ; swatches_count:
   56ED 03                 1327 	.byte	3
                           1328 ; swatches:
   56EE 52 18              1329 	.word	_swatch_3_0
   56F0 52 20              1330 	.word	_swatch_3_1
   56F2 52 28              1331 	.word	_swatch_3_2
                           1332 	.globl	_level4
   56F4                    1333 LC4:
   56F4 20 20 62 62 20 20  1334 	.ascii	"  bb        sb         bbbbbb    bbsbbb     bbbb"
        20 20 20 20 20 20
        73 62 20 20 20 20
        20 20 20 20 20 62
        62 62 62 62 62 20
        20 20 20 62 62 73
        62 62 62 20 20 20
        20 20 62 62 62 62
   5724 62 20 20 20 20 20  1335 	.ascii	"b         k         q    bbvbsb    bbbbbb    bbs"
        20 20 20 20 6B 20
        20 20 20 20 20 20
        20 20 71 20 20 20
        20 62 62 76 62 73
        62 20 20 20 20 62
        62 62 62 62 62 20
        20 20 20 62 62 73
   5754 62 62 62 20 20 20  1336 	.ascii	"bbb    l    l    r    r bbbs   bbbbebb   bbbbbbb"
        20 6C 20 20 20 20
        6C 20 20 20 20 72
        20 20 20 20 72 20
        62 62 62 73 20 20
        20 62 62 62 62 65
        62 62 20 20 20 62
        62 62 62 62 62 62
   5784 20 20 20 62 62 62  1337 	.ascii	"   bbb\0"
        00
   578B                    1338 _level4:
                           1339 ; geometry:
   578B 56 F4              1340 	.word	LC4
                           1341 ; start:
                           1342 ; x:
   578D 07                 1343 	.byte	7
                           1344 ; y:
   578E 08                 1345 	.byte	8
                           1346 ; swatches_count:
   578F 06                 1347 	.byte	6
                           1348 ; swatches:
   5790 52 30              1349 	.word	_swatch_4_0
   5792 52 38              1350 	.word	_swatch_4_1
   5794 52 40              1351 	.word	_swatch_4_2
   5796 52 48              1352 	.word	_swatch_4_3
   5798 52 50              1353 	.word	_swatch_4_4
   579A 52 58              1354 	.word	_swatch_4_5
                           1355 	.globl	_level5
   579C                    1356 LC5:
   579C 20 20 20 20 20 62  1357 	.ascii	"     bbb      bbbb    bbbbb   rbb  bb   bbb   bb"
        62 62 20 20 20 20
        20 20 62 62 62 62
        20 20 20 20 62 62
        62 62 62 20 20 20
        72 62 62 20 20 62
        62 20 20 20 62 62
        62 20 20 20 62 62
   57CC 20 20 62 62 6C 20  1358 	.ascii	"  bbl   bb  b      b  b      bb bbbhhbbbbbbbbbb "
        20 20 62 62 20 20
        62 20 20 20 20 20
        20 62 20 20 62 20
        20 20 20 20 20 62
        62 20 62 62 62 68
        68 62 62 62 62 62
        62 62 62 62 62 20
   57FC 20 62 62 62 20 20  1359 	.ascii	" bbb    b         b        bbb       beb       b"
        20 20 62 20 20 20
        20 20 20 20 20 20
        62 20 20 20 20 20
        20 20 20 62 62 62
        20 20 20 20 20 20
        20 62 65 62 20 20
        20 20 20 20 20 62
   582C 62 62 20 20 20 20  1360 	.ascii	"bb    \0"
        00
   5833                    1361 _level5:
                           1362 ; geometry:
   5833 57 9C              1363 	.word	LC5
                           1364 ; start:
                           1365 ; x:
   5835 06                 1366 	.byte	6
                           1367 ; y:
   5836 01                 1368 	.byte	1
                           1369 ; swatches_count:
   5837 02                 1370 	.byte	2
                           1371 ; swatches:
   5838 52 60              1372 	.word	_swatch_5_0
   583A 52 66              1373 	.word	_swatch_5_1
                           1374 	.globl	_level6
   583C                    1375 LC6:
   583C 20 20 20 20 20 20  1376 	.ascii	"               bbb   bbbbbbb  hbl  bbb        bb"
        20 20 20 20 20 20
        20 20 20 62 62 62
        20 20 20 62 62 62
        62 62 62 62 20 20
        68 62 6C 20 20 62
        62 62 20 20 20 20
        20 20 20 20 62 62
   586C 62 20 20 20 20 20  1377 	.ascii	"b       sbb        bbb       sbb      bbb       "
        20 20 73 62 62 20
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 20 73
        62 62 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
   589C 62 62 62 20 68 62  1378 	.ascii	"bbb hbq  bbb   bbbbbbb       bbbbb      lbeb    "
        71 20 20 62 62 62
        20 20 20 62 62 62
        62 62 62 62 20 20
        20 20 20 20 20 62
        62 62 62 62 20 20
        20 20 20 20 6C 62
        65 62 20 20 20 20
   58CC 20 20 20 62 62 62  1379 	.ascii	"   bbb\0"
        00
   58D3                    1380 _level6:
                           1381 ; geometry:
   58D3 58 3C              1382 	.word	LC6
                           1383 ; start:
                           1384 ; x:
   58D5 06                 1385 	.byte	6
                           1386 ; y:
   58D6 02                 1387 	.byte	2
                           1388 ; swatches_count:
   58D7 04                 1389 	.byte	4
                           1390 ; swatches:
   58D8 52 6C              1391 	.word	_swatch_6_0
   58DA 52 74              1392 	.word	_swatch_6_1
   58DC 52 7C              1393 	.word	_swatch_6_2
   58DE 52 82              1394 	.word	_swatch_6_3
                           1395 	.globl	_level7
   58E0                    1396 LC7:
   58E0 20 20 20 62 73 62  1397 	.ascii	"   bsbr      l  bbbb   r  bbhbbbbb  bbbbbbbbbbl "
        72 20 20 20 20 20
        20 6C 20 20 62 62
        62 62 20 20 20 72
        20 20 62 62 68 62
        62 62 62 62 20 20
        62 62 62 62 62 62
        62 62 62 62 6C 20
   5910 20 20 62 62 62 62  1398 	.ascii	"  bbbb      bfff      bffffbbb  lffffbeb   ffffb"
        20 20 20 20 20 20
        62 66 66 66 20 20
        20 20 20 20 62 66
        66 66 66 62 62 62
        20 20 6C 66 66 66
        66 62 65 62 20 20
        20 66 66 66 66 62
   5940 62 62 20 20 20 66  1399 	.ascii	"bb   fff   k   bbb   q   bvb  bbbb bbb  bbsb   k"
        66 66 20 20 20 6B
        20 20 20 62 62 62
        20 20 20 71 20 20
        20 62 76 62 20 20
        62 62 62 62 20 62
        62 62 20 20 62 62
        73 62 20 20 20 6B
   5970 62 62 73 62 62 62  1400 	.ascii	"bbsbbb\0"
        00
   5977                    1401 _level7:
                           1402 ; geometry:
   5977 58 E0              1403 	.word	LC7
                           1404 ; start:
                           1405 ; x:
   5979 02                 1406 	.byte	2
                           1407 ; y:
   597A 04                 1408 	.byte	4
                           1409 ; swatches_count:
   597B 05                 1410 	.byte	5
                           1411 ; swatches:
   597C 52 88              1412 	.word	_swatch_7_0
   597E 52 8E              1413 	.word	_swatch_7_1
   5980 52 98              1414 	.word	_swatch_7_2
   5982 52 A2              1415 	.word	_swatch_7_3
   5984 52 AC              1416 	.word	_swatch_7_4
                           1417 	.globl	_level8
   5986                    1418 LC8:
   5986 20 20 20 20 20 20  1419 	.ascii	"            bbbh      bbbbb     bb  l      b  rr"
        20 20 20 20 20 20
        62 62 62 68 20 20
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 62 62 20 20
        6C 20 20 20 20 20
        20 62 20 20 72 72
   59B6 20 20 20 20 20 62  1420 	.ascii	"     bbbbb   hb  bhb   bb   bb   lb    b    l   "
        62 62 62 62 20 20
        20 68 62 20 20 62
        68 62 20 20 20 62
        62 20 20 20 62 62
        20 20 20 6C 62 20
        20 20 20 62 20 20
        20 20 6C 20 20 20
   59E6 20 62 20 20 20 20  1421 	.ascii	" b    r    b   bbb  bbb  beb  bhb  bbbbbbbb     "
        72 20 20 20 20 62
        20 20 20 62 62 62
        20 20 62 62 62 20
        20 62 65 62 20 20
        62 68 62 20 20 62
        62 62 62 62 62 62
        62 20 20 20 20 20
   5A16 20 20 62 76 62 20  1422 	.ascii	"  bvb \0"
        00
   5A1D                    1423 _level8:
                           1424 ; geometry:
   5A1D 59 86              1425 	.word	LC8
                           1426 ; start:
                           1427 ; x:
   5A1F 06                 1428 	.byte	6
                           1429 ; y:
   5A20 02                 1430 	.byte	2
                           1431 ; swatches_count:
   5A21 05                 1432 	.byte	5
                           1433 ; swatches:
   5A22 52 B4              1434 	.word	_swatch_8_0
   5A24 52 BC              1435 	.word	_swatch_8_1
   5A26 52 C4              1436 	.word	_swatch_8_2
   5A28 52 CA              1437 	.word	_swatch_8_3
   5A2A 52 D0              1438 	.word	_swatch_8_4
                           1439 	.globl	_level9
   5A2C                    1440 LC9:
   5A2C 20 62 62 62 20 20  1441 	.ascii	" bbb       bbbb      kkhb  bbb   b  bbbb   k  bs"
        20 20 20 20 20 62
        62 62 62 20 20 20
        20 20 20 6B 6B 68
        62 20 20 62 62 62
        20 20 20 62 20 20
        62 62 62 62 20 20
        20 6B 20 20 62 73
   5A5C 62 20 20 20 20 71  1442 	.ascii	"b    q  b    bbbbbb    bbbbbl    s   l     b   r"
        20 20 62 20 20 20
        20 62 62 62 62 62
        62 20 20 20 20 62
        62 62 62 62 6C 20
        20 20 20 73 20 20
        20 6C 20 20 20 20
        20 62 20 20 20 72
   5A8C 20 20 20 20 20 62  1443 	.ascii	"     b   bbb  bbb  beb  bbb  bbb  bbb   ll      "
        20 20 20 62 62 62
        20 20 62 62 62 20
        20 62 65 62 20 20
        62 62 62 20 20 62
        62 62 20 20 62 62
        62 20 20 20 6C 6C
        20 20 20 20 20 20
   5ABC 20 20 20 20 20 20  1444 	.ascii	"      \0"
        00
   5AC3                    1445 _level9:
                           1446 ; geometry:
   5AC3 5A 2C              1447 	.word	LC9
                           1448 ; start:
                           1449 ; x:
   5AC5 02                 1450 	.byte	2
                           1451 ; y:
   5AC6 01                 1452 	.byte	1
                           1453 ; swatches_count:
   5AC7 03                 1454 	.byte	3
                           1455 ; swatches:
   5AC8 52 D8              1456 	.word	_swatch_9_0
   5ACA 52 E4              1457 	.word	_swatch_9_1
   5ACC 52 EC              1458 	.word	_swatch_9_2
                           1459 	.globl	_level10
   5ACE                    1460 LC10:
   5ACE 20 20 20 20 62 62  1461 	.ascii	"    bbb     hbbbb       bbk        lq         bb"
        62 20 20 20 20 20
        68 62 62 62 62 20
        20 20 20 20 20 20
        62 62 6B 20 20 20
        20 20 20 20 20 6C
        71 20 20 20 20 20
        20 20 20 20 62 62
   5AFE 20 20 20 20 20 20  1462 	.ascii	"        bbbb bbbbbbbbb beb  bbsb bbb   bbb  l   "
        20 20 62 62 62 62
        20 62 62 62 62 62
        62 62 62 62 20 62
        65 62 20 20 62 62
        73 62 20 62 62 62
        20 20 20 62 62 62
        20 20 6C 20 20 20
   5B2E 20 62 62 20 20 20  1463 	.ascii	" bb     bbbbb      bb         b         bbbv    "
        20 20 62 62 62 62
        62 20 20 20 20 20
        20 62 62 20 20 20
        20 20 20 20 20 20
        62 20 20 20 20 20
        20 20 20 20 62 62
        62 76 20 20 20 20
   5B5E 20 20 20 20 20 20  1464 	.ascii	"      \0"
        00
   5B65                    1465 _level10:
                           1466 ; geometry:
   5B65 5A CE              1467 	.word	LC10
                           1468 ; start:
                           1469 ; x:
   5B67 04                 1470 	.byte	4
                           1471 ; y:
   5B68 0A                 1472 	.byte	10
                           1473 ; swatches_count:
   5B69 03                 1474 	.byte	3
                           1475 ; swatches:
   5B6A 52 F6              1476 	.word	_swatch_10_0
   5B6C 52 FE              1477 	.word	_swatch_10_1
   5B6E 53 06              1478 	.word	_swatch_10_2
                           1479 	.globl	_level11
   5B70                    1480 LC11:
   5B70 20 20 62 62 62 20  1481 	.ascii	"  bbb  bbb  beb  bbb  bbb  bbb  ff    b   ff    "
        20 62 62 62 20 20
        62 65 62 20 20 62
        62 62 20 20 62 62
        62 20 20 62 62 62
        20 20 66 66 20 20
        20 20 62 20 20 20
        66 66 20 20 20 20
   5BA0 62 20 20 66 66 66  1482 	.ascii	"b  ffff   b qffff   b bffff  bbbbffff  bbbkfffb "
        66 20 20 20 62 20
        71 66 66 66 66 20
        20 20 62 20 62 66
        66 66 66 20 20 62
        62 62 62 66 66 66
        66 20 20 62 62 62
        6B 66 66 66 62 20
   5BD0 20 20 62 62 20 66  1483 	.ascii	"  bb ff     bb ff      b bbbsbb  b bbbsbhbbb bbb"
        66 20 20 20 20 20
        62 62 20 66 66 20
        20 20 20 20 20 62
        20 62 62 62 73 62
        62 20 20 62 20 62
        62 62 73 62 68 62
        62 62 20 62 62 62
   5C00 20 20 62 62 62 62  1484 	.ascii	"  bbbb\0"
        00
   5C07                    1485 _level11:
                           1486 ; geometry:
   5C07 5B 70              1487 	.word	LC11
                           1488 ; start:
                           1489 ; x:
   5C09 08                 1490 	.byte	8
                           1491 ; y:
   5C0A 01                 1492 	.byte	1
                           1493 ; swatches_count:
   5C0B 03                 1494 	.byte	3
                           1495 ; swatches:
   5C0C 53 0E              1496 	.word	_swatch_11_0
   5C0E 53 16              1497 	.word	_swatch_11_1
   5C10 53 1C              1498 	.word	_swatch_11_2
                           1499 	.globl	_level12
   5C12                    1500 LC12:
   5C12 20 20 20 20 66 66  1501 	.ascii	"    ffff    bbbfffbbbbbeb  bbb  bbb    k  b     "
        66 66 20 20 20 20
        62 62 62 66 66 66
        62 62 62 62 62 65
        62 20 20 62 62 62
        20 20 62 62 62 20
        20 20 20 6B 20 20
        62 20 20 20 20 20
   5C42 20 71 62 62 62 20  1502 	.ascii	" qbbb    bbbbbb    bbbb     bbb k    bbb  q   bb"
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 62 62 62 20
        20 20 20 20 62 62
        62 20 6B 20 20 20
        20 62 62 62 20 20
        71 20 20 20 62 62
   5C72 62 20 20 20 62 62  1503 	.ascii	"b   bbbbbb    bbsbv     bbbb        bb        bb"
        62 62 62 62 20 20
        20 20 62 62 73 62
        76 20 20 20 20 20
        62 62 62 62 20 20
        20 20 20 20 20 20
        62 62 20 20 20 20
        20 20 20 20 62 62
   5CA2 20 20 20 20 20 20  1504 	.ascii	"      \0"
        00
   5CA9                    1505 _level12:
                           1506 ; geometry:
   5CA9 5C 12              1507 	.word	LC12
                           1508 ; start:
                           1509 ; x:
   5CAB 07                 1510 	.byte	7
                           1511 ; y:
   5CAC 02                 1512 	.byte	2
                           1513 ; swatches_count:
   5CAD 02                 1514 	.byte	2
                           1515 ; swatches:
   5CAE 53 22              1516 	.word	_swatch_12_0
   5CB0 53 2A              1517 	.word	_swatch_12_1
                           1518 	.globl	_level13
   5CB2                    1519 LC13:
   5CB2 62 62 62 20 20 20  1520 	.ascii	"bbb   h   beb   l   bbb   r  sll    b  k r    b "
        68 20 20 20 62 65
        62 20 20 20 6C 20
        20 20 62 62 62 20
        20 20 72 20 20 73
        6C 6C 20 20 20 20
        62 20 20 6B 20 72
        20 20 20 20 62 20
   5CE2 20 71 20 62 62 72  1521 	.ascii	" q bbrrbbbbb  bbbbbb       bbb       bbb  bbbbbb"
        72 62 62 62 62 62
        20 20 62 62 62 62
        62 62 20 20 20 20
        20 20 20 62 62 62
        20 20 20 20 20 20
        20 62 62 62 20 20
        62 62 62 62 62 62
   5D12 62 62 62 62 6B 20  1522 	.ascii	"bbbbk  k  b  lq  q  b  rs  s  l  h      r       "
        20 6B 20 20 62 20
        20 6C 71 20 20 71
        20 20 62 20 20 72
        73 20 20 73 20 20
        6C 20 20 68 20 20
        20 20 20 20 72 20
        20 20 20 20 20 20
   5D42 20 20 68 20 20 20  1523 	.ascii	"  h   \0"
        00
   5D49                    1524 _level13:
                           1525 ; geometry:
   5D49 5C B2              1526 	.word	LC13
                           1527 ; start:
                           1528 ; x:
   5D4B 06                 1529 	.byte	6
                           1530 ; y:
   5D4C 07                 1531 	.byte	7
                           1532 ; swatches_count:
   5D4D 06                 1533 	.byte	6
                           1534 ; swatches:
   5D4E 53 36              1535 	.word	_swatch_13_0
   5D50 53 42              1536 	.word	_swatch_13_1
   5D52 53 4A              1537 	.word	_swatch_13_2
   5D54 53 56              1538 	.word	_swatch_13_3
   5D56 53 5C              1539 	.word	_swatch_13_4
   5D58 53 64              1540 	.word	_swatch_13_5
                           1541 	.globl	_level14
   5D5A                    1542 LC14:
   5D5A 20 62 66 66 20 20  1543 	.ascii	" bff      ffffh     bfffbb    ffbff  bbbfff    b"
        20 20 20 20 66 66
        66 66 68 20 20 20
        20 20 62 66 66 66
        62 62 20 20 20 20
        66 66 62 66 66 20
        20 62 62 62 66 66
        66 20 20 20 20 62
   5D8A 65 62 66 66 62 20  1544 	.ascii	"ebffb    bbb ff     bb ffbfff  bffbbffb  ffffl  "
        20 20 20 62 62 62
        20 66 66 20 20 20
        20 20 62 62 20 66
        66 62 66 66 66 20
        20 62 66 66 62 62
        66 66 62 20 20 66
        66 66 66 6C 20 20
   5DBA 62 20 20 66 66 66  1545 	.ascii	"b  fff    k  bff    q  bbbhr  bffb  bb  bbbb  lb"
        20 20 20 20 6B 20
        20 62 66 66 20 20
        20 20 71 20 20 62
        62 62 68 72 20 20
        62 66 66 62 20 20
        62 62 20 20 62 62
        62 62 20 20 6C 62
   5DEA 62 62 62 68 20 20  1546 	.ascii	"bbbh  \0"
        00
   5DF1                    1547 _level14:
                           1548 ; geometry:
   5DF1 5D 5A              1549 	.word	LC14
                           1550 ; start:
                           1551 ; x:
   5DF3 05                 1552 	.byte	5
                           1553 ; y:
   5DF4 02                 1554 	.byte	2
                           1555 ; swatches_count:
   5DF5 03                 1556 	.byte	3
                           1557 ; swatches:
   5DF6 53 78              1558 	.word	_swatch_14_0
   5DF8 53 84              1559 	.word	_swatch_14_1
   5DFA 53 8C              1560 	.word	_swatch_14_2
                           1561 	.globl	_level15
   5DFC                    1562 LC15:
   5DFC 71 71 71 20 20 20  1563 	.ascii	"qqq       bbb  fbbb bhbbffbbb bbb  fbbb   l    k"
        20 20 20 20 62 62
        62 20 20 66 62 62
        62 20 62 68 62 62
        66 66 62 62 62 20
        62 62 62 20 20 66
        62 62 62 20 20 20
        6C 20 20 20 20 6B
   5E2C 20 20 20 20 72 20  1564 	.ascii	"    r    q   hbbbsbb    sbbbbb    bbbbbbh   k   "
        20 20 20 71 20 20
        20 68 62 62 62 73
        62 62 20 20 20 20
        73 62 62 62 62 62
        20 20 20 20 62 62
        62 62 62 62 68 20
        20 20 6B 20 20 20
   5E5C 20 6C 20 20 20 20  1565 	.ascii	" l    q    r   bbbf  bbb bbbffbbeb bbbf  bbb    "
        71 20 20 20 20 72
        20 20 20 62 62 62
        66 20 20 62 62 62
        20 62 62 62 66 66
        62 62 65 62 20 62
        62 62 66 20 20 62
        62 62 20 20 20 20
   5E8C 20 20 20 6C 6C 6C  1566 	.ascii	"   lll\0"
        00
   5E93                    1567 _level15:
                           1568 ; geometry:
   5E93 5D FC              1569 	.word	LC15
                           1570 ; start:
                           1571 ; x:
   5E95 02                 1572 	.byte	2
                           1573 ; y:
   5E96 0C                 1574 	.byte	12
                           1575 ; swatches_count:
   5E97 05                 1576 	.byte	5
                           1577 ; swatches:
   5E98 53 92              1578 	.word	_swatch_15_0
   5E9A 53 9A              1579 	.word	_swatch_15_1
   5E9C 53 AE              1580 	.word	_swatch_15_2
   5E9E 53 C2              1581 	.word	_swatch_15_3
   5EA0 53 D0              1582 	.word	_swatch_15_4
                           1583 	.globl	_level16
   5EA2                    1584 LC16:
   5EA2 20 20 20 20 20 20  1585 	.ascii	"           bb        bb  bbb   ll  bebb  rr  bbb"
        20 20 20 20 20 62
        62 20 20 20 20 20
        20 20 20 62 62 20
        20 62 62 62 20 20
        20 6C 6C 20 20 62
        65 62 62 20 20 72
        72 20 20 62 62 62
   5ED2 62 20 20 62 62 62  1586 	.ascii	"b  bbb   lk  bhb   rq  bbb   bb  b    bbb  b   b"
        20 20 20 6C 6B 20
        20 62 68 62 20 20
        20 72 71 20 20 62
        62 62 20 20 20 62
        62 20 20 62 20 20
        20 20 62 62 62 20
        20 62 20 20 20 62
   5F02 62 20 20 20 20 62  1587 	.ascii	"b    bbbbbb    bbbbbbb        bhb        bbb    "
        62 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 62 20 20
        20 20 20 20 20 20
        62 68 62 20 20 20
        20 20 20 20 20 62
        62 62 20 20 20 20
   5F32 20 20 20 62 62 68  1588 	.ascii	"   bbh\0"
        00
   5F39                    1589 _level16:
                           1590 ; geometry:
   5F39 5E A2              1591 	.word	LC16
                           1592 ; start:
                           1593 ; x:
   5F3B 03                 1594 	.byte	3
                           1595 ; y:
   5F3C 0B                 1596 	.byte	11
                           1597 ; swatches_count:
   5F3D 03                 1598 	.byte	3
                           1599 ; swatches:
   5F3E 53 D8              1600 	.word	_swatch_16_0
   5F40 53 E4              1601 	.word	_swatch_16_1
   5F42 53 EC              1602 	.word	_swatch_16_2
                           1603 	.globl	_level17
   5F44                    1604 LC17:
   5F44 62 62 62 62 20 20  1605 	.ascii	"bbbb  bb  bbeb  bb  bbbb  bb    k   k     q   q "
        62 62 20 20 62 62
        65 62 20 20 62 62
        20 20 62 62 62 62
        20 20 62 62 20 20
        20 20 6B 20 20 20
        6B 20 20 20 20 20
        71 20 20 20 71 20
   5F74 20 20 20 62 62 62  1606 	.ascii	"   bbbbbbsbb bsbbbbbbb bbbbsbbbs   bbbbsbb   bbb"
        62 62 62 73 62 62
        20 62 73 62 62 62
        62 62 62 62 20 62
        62 62 62 73 62 62
        62 73 20 20 20 62
        62 62 62 73 62 62
        20 20 20 62 62 62
   5FA4 73 62 62 62 20 20  1607 	.ascii	"sbbb  bbbssbbb bbssbbbl bbbbbbbb  bbsbbbsb  bbhb"
        62 62 62 73 73 62
        62 62 20 62 62 73
        73 62 62 62 6C 20
        62 62 62 62 62 62
        62 62 20 20 62 62
        73 62 62 62 73 62
        20 20 62 62 68 62
   5FD4 20 20 20 20 20 20  1608 	.ascii	"      \0"
        00
   5FDB                    1609 _level17:
                           1610 ; geometry:
   5FDB 5F 44              1611 	.word	LC17
                           1612 ; start:
                           1613 ; x:
   5FDD 06                 1614 	.byte	6
                           1615 ; y:
   5FDE 01                 1616 	.byte	1
                           1617 ; swatches_count:
   5FDF 0D                 1618 	.byte	13
                           1619 ; swatches:
   5FE0 53 F4              1620 	.word	_swatch_17_0
   5FE2 53 FC              1621 	.word	_swatch_17_1
   5FE4 54 04              1622 	.word	_swatch_17_2
   5FE6 54 0C              1623 	.word	_swatch_17_3
   5FE8 54 14              1624 	.word	_swatch_17_4
   5FEA 54 1C              1625 	.word	_swatch_17_5
   5FEC 54 24              1626 	.word	_swatch_17_6
   5FEE 54 2C              1627 	.word	_swatch_17_7
   5FF0 54 34              1628 	.word	_swatch_17_8
   5FF2 54 3C              1629 	.word	_swatch_17_9
   5FF4 54 44              1630 	.word	_swatch_17_10
   5FF6 54 4C              1631 	.word	_swatch_17_11
   5FF8 54 54              1632 	.word	_swatch_17_12
                           1633 	.globl	_levels
   5FFA                    1634 _levels:
   5FFA 54 F1              1635 	.word	_level0
   5FFC 55 9B              1636 	.word	_level1
   5FFE 56 41              1637 	.word	_level2
   6000 56 E9              1638 	.word	_level3
   6002 57 8B              1639 	.word	_level4
   6004 58 33              1640 	.word	_level5
   6006 58 D3              1641 	.word	_level6
   6008 59 77              1642 	.word	_level7
   600A 5A 1D              1643 	.word	_level8
   600C 5A C3              1644 	.word	_level9
   600E 5B 65              1645 	.word	_level10
   6010 5C 07              1646 	.word	_level11
   6012 5C A9              1647 	.word	_level12
   6014 5D 49              1648 	.word	_level13
   6016 5D F1              1649 	.word	_level14
   6018 5E 93              1650 	.word	_level15
   601A 5F 39              1651 	.word	_level16
   601C 5F DB              1652 	.word	_level17
   601E                    1653 ___compound_literal.0:
                           1654 ; action:
   601E 03                 1655 	.byte	3
                           1656 ; position:
                           1657 ; x:
   601F 06                 1658 	.byte	6
                           1659 ; y:
   6020 07                 1660 	.byte	7
   6021                    1661 ___compound_literal.1:
                           1662 ; action:
   6021 04                 1663 	.byte	4
                           1664 ; position:
                           1665 ; x:
   6022 06                 1666 	.byte	6
                           1667 ; y:
   6023 05                 1668 	.byte	5
   6024                    1669 ___compound_literal.2:
                           1670 ; action:
   6024 03                 1671 	.byte	3
                           1672 ; position:
                           1673 ; x:
   6025 06                 1674 	.byte	6
                           1675 ; y:
   6026 02                 1676 	.byte	2
   6027                    1677 ___compound_literal.3:
                           1678 ; action:
   6027 04                 1679 	.byte	4
                           1680 ; position:
                           1681 ; x:
   6028 07                 1682 	.byte	7
                           1683 ; y:
   6029 01                 1684 	.byte	1
   602A                    1685 ___compound_literal.4:
                           1686 ; action:
   602A 03                 1687 	.byte	3
                           1688 ; position:
                           1689 ; x:
   602B 06                 1690 	.byte	6
                           1691 ; y:
   602C 00                 1692 	.byte	0
   602D                    1693 ___compound_literal.5:
                           1694 ; action:
   602D 04                 1695 	.byte	4
                           1696 ; position:
                           1697 ; x:
   602E 06                 1698 	.byte	6
                           1699 ; y:
   602F 02                 1700 	.byte	2
   6030                    1701 ___compound_literal.6:
                           1702 ; action:
   6030 01                 1703 	.byte	1
                           1704 ; position:
                           1705 ; x:
   6031 06                 1706 	.byte	6
                           1707 ; y:
   6032 03                 1708 	.byte	3
   6033                    1709 ___compound_literal.7:
                           1710 ; action:
   6033 01                 1711 	.byte	1
                           1712 ; position:
                           1713 ; x:
   6034 06                 1714 	.byte	6
                           1715 ; y:
   6035 04                 1716 	.byte	4
   6036                    1717 ___compound_literal.8:
                           1718 ; action:
   6036 01                 1719 	.byte	1
                           1720 ; position:
                           1721 ; x:
   6037 06                 1722 	.byte	6
                           1723 ; y:
   6038 08                 1724 	.byte	8
   6039                    1725 ___compound_literal.9:
                           1726 ; action:
   6039 01                 1727 	.byte	1
                           1728 ; position:
                           1729 ; x:
   603A 06                 1730 	.byte	6
                           1731 ; y:
   603B 09                 1732 	.byte	9
   603C                    1733 ___compound_literal.10:
                           1734 ; action:
   603C 03                 1735 	.byte	3
                           1736 ; position:
                           1737 ; x:
   603D 05                 1738 	.byte	5
                           1739 ; y:
   603E 01                 1740 	.byte	1
   603F                    1741 ___compound_literal.11:
                           1742 ; action:
   603F 04                 1743 	.byte	4
                           1744 ; position:
                           1745 ; x:
   6040 06                 1746 	.byte	6
                           1747 ; y:
   6041 00                 1748 	.byte	0
   6042                    1749 ___compound_literal.12:
                           1750 ; action:
   6042 03                 1751 	.byte	3
                           1752 ; position:
                           1753 ; x:
   6043 07                 1754 	.byte	7
                           1755 ; y:
   6044 01                 1756 	.byte	1
   6045                    1757 ___compound_literal.13:
                           1758 ; action:
   6045 04                 1759 	.byte	4
                           1760 ; position:
                           1761 ; x:
   6046 06                 1762 	.byte	6
                           1763 ; y:
   6047 00                 1764 	.byte	0
   6048                    1765 ___compound_literal.14:
                           1766 ; action:
   6048 02                 1767 	.byte	2
                           1768 ; position:
                           1769 ; x:
   6049 03                 1770 	.byte	3
                           1771 ; y:
   604A 06                 1772 	.byte	6
   604B                    1773 ___compound_literal.15:
                           1774 ; action:
   604B 01                 1775 	.byte	1
                           1776 ; position:
                           1777 ; x:
   604C 03                 1778 	.byte	3
                           1779 ; y:
   604D 06                 1780 	.byte	6
   604E                    1781 ___compound_literal.16:
                           1782 ; action:
   604E 01                 1783 	.byte	1
                           1784 ; position:
                           1785 ; x:
   604F 07                 1786 	.byte	7
                           1787 ; y:
   6050 07                 1788 	.byte	7
   6051                    1789 ___compound_literal.17:
                           1790 ; action:
   6051 00                 1791 	.byte	0
                           1792 ; position:
                           1793 ; x:
   6052 02                 1794 	.byte	2
                           1795 ; y:
   6053 08                 1796 	.byte	8
   6054                    1797 ___compound_literal.18:
                           1798 ; action:
   6054 01                 1799 	.byte	1
                           1800 ; position:
                           1801 ; x:
   6055 08                 1802 	.byte	8
                           1803 ; y:
   6056 09                 1804 	.byte	9
   6057                    1805 ___compound_literal.19:
                           1806 ; action:
   6057 02                 1807 	.byte	2
                           1808 ; position:
                           1809 ; x:
   6058 02                 1810 	.byte	2
                           1811 ; y:
   6059 08                 1812 	.byte	8
   605A                    1813 ___compound_literal.20:
                           1814 ; action:
   605A 01                 1815 	.byte	1
                           1816 ; position:
                           1817 ; x:
   605B 05                 1818 	.byte	5
                           1819 ; y:
   605C 08                 1820 	.byte	8
   605D                    1821 ___compound_literal.21:
                           1822 ; action:
   605D 01                 1823 	.byte	1
                           1824 ; position:
                           1825 ; x:
   605E 05                 1826 	.byte	5
                           1827 ; y:
   605F 09                 1828 	.byte	9
   6060                    1829 ___compound_literal.22:
                           1830 ; action:
   6060 02                 1831 	.byte	2
                           1832 ; position:
                           1833 ; x:
   6061 05                 1834 	.byte	5
                           1835 ; y:
   6062 0C                 1836 	.byte	12
   6063                    1837 ___compound_literal.23:
                           1838 ; action:
   6063 02                 1839 	.byte	2
                           1840 ; position:
                           1841 ; x:
   6064 05                 1842 	.byte	5
                           1843 ; y:
   6065 0D                 1844 	.byte	13
   6066                    1845 ___compound_literal.24:
                           1846 ; action:
   6066 02                 1847 	.byte	2
                           1848 ; position:
                           1849 ; x:
   6067 00                 1850 	.byte	0
                           1851 ; y:
   6068 01                 1852 	.byte	1
   6069                    1853 ___compound_literal.25:
                           1854 ; action:
   6069 02                 1855 	.byte	2
                           1856 ; position:
                           1857 ; x:
   606A 00                 1858 	.byte	0
                           1859 ; y:
   606B 02                 1860 	.byte	2
   606C                    1861 ___compound_literal.26:
                           1862 ; action:
   606C 02                 1863 	.byte	2
                           1864 ; position:
                           1865 ; x:
   606D 05                 1866 	.byte	5
                           1867 ; y:
   606E 08                 1868 	.byte	8
   606F                    1869 ___compound_literal.27:
                           1870 ; action:
   606F 02                 1871 	.byte	2
                           1872 ; position:
                           1873 ; x:
   6070 05                 1874 	.byte	5
                           1875 ; y:
   6071 09                 1876 	.byte	9
   6072                    1877 ___compound_literal.28:
                           1878 ; action:
   6072 02                 1879 	.byte	2
                           1880 ; position:
                           1881 ; x:
   6073 05                 1882 	.byte	5
                           1883 ; y:
   6074 0C                 1884 	.byte	12
   6075                    1885 ___compound_literal.29:
                           1886 ; action:
   6075 02                 1887 	.byte	2
                           1888 ; position:
                           1889 ; x:
   6076 05                 1890 	.byte	5
                           1891 ; y:
   6077 0D                 1892 	.byte	13
   6078                    1893 ___compound_literal.30:
                           1894 ; action:
   6078 02                 1895 	.byte	2
                           1896 ; position:
                           1897 ; x:
   6079 00                 1898 	.byte	0
                           1899 ; y:
   607A 01                 1900 	.byte	1
   607B                    1901 ___compound_literal.31:
                           1902 ; action:
   607B 02                 1903 	.byte	2
                           1904 ; position:
                           1905 ; x:
   607C 00                 1906 	.byte	0
                           1907 ; y:
   607D 02                 1908 	.byte	2
   607E                    1909 ___compound_literal.32:
                           1910 ; action:
   607E 01                 1911 	.byte	1
                           1912 ; position:
                           1913 ; x:
   607F 05                 1914 	.byte	5
                           1915 ; y:
   6080 0C                 1916 	.byte	12
   6081                    1917 ___compound_literal.33:
                           1918 ; action:
   6081 01                 1919 	.byte	1
                           1920 ; position:
                           1921 ; x:
   6082 05                 1922 	.byte	5
                           1923 ; y:
   6083 0D                 1924 	.byte	13
   6084                    1925 ___compound_literal.34:
                           1926 ; action:
   6084 01                 1927 	.byte	1
                           1928 ; position:
                           1929 ; x:
   6085 00                 1930 	.byte	0
                           1931 ; y:
   6086 01                 1932 	.byte	1
   6087                    1933 ___compound_literal.35:
                           1934 ; action:
   6087 01                 1935 	.byte	1
                           1936 ; position:
                           1937 ; x:
   6088 00                 1938 	.byte	0
                           1939 ; y:
   6089 02                 1940 	.byte	2
   608A                    1941 ___compound_literal.36:
                           1942 ; action:
   608A 00                 1943 	.byte	0
                           1944 ; position:
                           1945 ; x:
   608B 04                 1946 	.byte	4
                           1947 ; y:
   608C 05                 1948 	.byte	5
   608D                    1949 ___compound_literal.37:
                           1950 ; action:
   608D 00                 1951 	.byte	0
                           1952 ; position:
                           1953 ; x:
   608E 04                 1954 	.byte	4
                           1955 ; y:
   608F 07                 1956 	.byte	7
   6090                    1957 ___compound_literal.38:
                           1958 ; action:
   6090 00                 1959 	.byte	0
                           1960 ; position:
                           1961 ; x:
   6091 04                 1962 	.byte	4
                           1963 ; y:
   6092 08                 1964 	.byte	8
   6093                    1965 ___compound_literal.39:
                           1966 ; action:
   6093 02                 1967 	.byte	2
                           1968 ; position:
                           1969 ; x:
   6094 00                 1970 	.byte	0
                           1971 ; y:
   6095 02                 1972 	.byte	2
   6096                    1973 ___compound_literal.40:
                           1974 ; action:
   6096 02                 1975 	.byte	2
                           1976 ; position:
                           1977 ; x:
   6097 00                 1978 	.byte	0
                           1979 ; y:
   6098 03                 1980 	.byte	3
   6099                    1981 ___compound_literal.41:
                           1982 ; action:
   6099 01                 1983 	.byte	1
                           1984 ; position:
                           1985 ; x:
   609A 00                 1986 	.byte	0
                           1987 ; y:
   609B 02                 1988 	.byte	2
   609C                    1989 ___compound_literal.42:
                           1990 ; action:
   609C 01                 1991 	.byte	1
                           1992 ; position:
                           1993 ; x:
   609D 00                 1994 	.byte	0
                           1995 ; y:
   609E 03                 1996 	.byte	3
   609F                    1997 ___compound_literal.43:
                           1998 ; action:
   609F 02                 1999 	.byte	2
                           2000 ; position:
                           2001 ; x:
   60A0 08                 2002 	.byte	8
                           2003 ; y:
   60A1 05                 2004 	.byte	5
   60A2                    2005 ___compound_literal.44:
                           2006 ; action:
   60A2 02                 2007 	.byte	2
                           2008 ; position:
                           2009 ; x:
   60A3 08                 2010 	.byte	8
                           2011 ; y:
   60A4 06                 2012 	.byte	6
   60A5                    2013 ___compound_literal.45:
                           2014 ; action:
   60A5 02                 2015 	.byte	2
                           2016 ; position:
                           2017 ; x:
   60A6 08                 2018 	.byte	8
                           2019 ; y:
   60A7 05                 2020 	.byte	5
   60A8                    2021 ___compound_literal.46:
                           2022 ; action:
   60A8 02                 2023 	.byte	2
                           2024 ; position:
                           2025 ; x:
   60A9 08                 2026 	.byte	8
                           2027 ; y:
   60AA 06                 2028 	.byte	6
   60AB                    2029 ___compound_literal.47:
                           2030 ; action:
   60AB 03                 2031 	.byte	3
                           2032 ; position:
                           2033 ; x:
   60AC 08                 2034 	.byte	8
                           2035 ; y:
   60AD 0D                 2036 	.byte	13
   60AE                    2037 ___compound_literal.48:
                           2038 ; action:
   60AE 04                 2039 	.byte	4
                           2040 ; position:
                           2041 ; x:
   60AF 02                 2042 	.byte	2
                           2043 ; y:
   60B0 0D                 2044 	.byte	13
   60B1                    2045 ___compound_literal.49:
                           2046 ; action:
   60B1 02                 2047 	.byte	2
                           2048 ; position:
                           2049 ; x:
   60B2 08                 2050 	.byte	8
                           2051 ; y:
   60B3 05                 2052 	.byte	5
   60B4                    2053 ___compound_literal.50:
                           2054 ; action:
   60B4 02                 2055 	.byte	2
                           2056 ; position:
                           2057 ; x:
   60B5 08                 2058 	.byte	8
                           2059 ; y:
   60B6 06                 2060 	.byte	6
   60B7                    2061 ___compound_literal.51:
                           2062 ; action:
   60B7 00                 2063 	.byte	0
                           2064 ; position:
                           2065 ; x:
   60B8 03                 2066 	.byte	3
                           2067 ; y:
   60B9 0A                 2068 	.byte	10
   60BA                    2069 ___compound_literal.52:
                           2070 ; action:
   60BA 00                 2071 	.byte	0
                           2072 ; position:
                           2073 ; x:
   60BB 03                 2074 	.byte	3
                           2075 ; y:
   60BC 0B                 2076 	.byte	11
   60BD                    2077 ___compound_literal.53:
                           2078 ; action:
   60BD 00                 2079 	.byte	0
                           2080 ; position:
                           2081 ; x:
   60BE 08                 2082 	.byte	8
                           2083 ; y:
   60BF 0A                 2084 	.byte	10
   60C0                    2085 ___compound_literal.54:
                           2086 ; action:
   60C0 00                 2087 	.byte	0
                           2088 ; position:
                           2089 ; x:
   60C1 08                 2090 	.byte	8
                           2091 ; y:
   60C2 0B                 2092 	.byte	11
   60C3                    2093 ___compound_literal.55:
                           2094 ; action:
   60C3 00                 2095 	.byte	0
                           2096 ; position:
                           2097 ; x:
   60C4 00                 2098 	.byte	0
                           2099 ; y:
   60C5 03                 2100 	.byte	3
   60C6                    2101 ___compound_literal.56:
                           2102 ; action:
   60C6 00                 2103 	.byte	0
                           2104 ; position:
                           2105 ; x:
   60C7 02                 2106 	.byte	2
                           2107 ; y:
   60C8 05                 2108 	.byte	5
   60C9                    2109 ___compound_literal.57:
                           2110 ; action:
   60C9 02                 2111 	.byte	2
                           2112 ; position:
                           2113 ; x:
   60CA 02                 2114 	.byte	2
                           2115 ; y:
   60CB 03                 2116 	.byte	3
   60CC                    2117 ___compound_literal.58:
                           2118 ; action:
   60CC 02                 2119 	.byte	2
                           2120 ; position:
                           2121 ; x:
   60CD 06                 2122 	.byte	6
                           2123 ; y:
   60CE 0D                 2124 	.byte	13
   60CF                    2125 ___compound_literal.59:
                           2126 ; action:
   60CF 02                 2127 	.byte	2
                           2128 ; position:
                           2129 ; x:
   60D0 02                 2130 	.byte	2
                           2131 ; y:
   60D1 03                 2132 	.byte	3
   60D2                    2133 ___compound_literal.60:
                           2134 ; action:
   60D2 02                 2135 	.byte	2
                           2136 ; position:
                           2137 ; x:
   60D3 06                 2138 	.byte	6
                           2139 ; y:
   60D4 0D                 2140 	.byte	13
   60D5                    2141 ___compound_literal.61:
                           2142 ; action:
   60D5 00                 2143 	.byte	0
                           2144 ; position:
                           2145 ; x:
   60D6 06                 2146 	.byte	6
                           2147 ; y:
   60D7 0D                 2148 	.byte	13
   60D8                    2149 ___compound_literal.62:
                           2150 ; action:
   60D8 00                 2151 	.byte	0
                           2152 ; position:
                           2153 ; x:
   60D9 02                 2154 	.byte	2
                           2155 ; y:
   60DA 03                 2156 	.byte	3
   60DB                    2157 ___compound_literal.63:
                           2158 ; action:
   60DB 01                 2159 	.byte	1
                           2160 ; position:
                           2161 ; x:
   60DC 06                 2162 	.byte	6
                           2163 ; y:
   60DD 04                 2164 	.byte	4
   60DE                    2165 ___compound_literal.64:
                           2166 ; action:
   60DE 00                 2167 	.byte	0
                           2168 ; position:
                           2169 ; x:
   60DF 00                 2170 	.byte	0
                           2171 ; y:
   60E0 08                 2172 	.byte	8
   60E1                    2173 ___compound_literal.65:
                           2174 ; action:
   60E1 01                 2175 	.byte	1
                           2176 ; position:
                           2177 ; x:
   60E2 03                 2178 	.byte	3
                           2179 ; y:
   60E3 01                 2180 	.byte	1
   60E4                    2181 ___compound_literal.66:
                           2182 ; action:
   60E4 01                 2183 	.byte	1
                           2184 ; position:
                           2185 ; x:
   60E5 03                 2186 	.byte	3
                           2187 ; y:
   60E6 02                 2188 	.byte	2
   60E7                    2189 ___compound_literal.67:
                           2190 ; action:
   60E7 02                 2191 	.byte	2
                           2192 ; position:
                           2193 ; x:
   60E8 03                 2194 	.byte	3
                           2195 ; y:
   60E9 0E                 2196 	.byte	14
   60EA                    2197 ___compound_literal.68:
                           2198 ; action:
   60EA 02                 2199 	.byte	2
                           2200 ; position:
                           2201 ; x:
   60EB 07                 2202 	.byte	7
                           2203 ; y:
   60EC 0A                 2204 	.byte	10
   60ED                    2205 ___compound_literal.69:
                           2206 ; action:
   60ED 02                 2207 	.byte	2
                           2208 ; position:
                           2209 ; x:
   60EE 07                 2210 	.byte	7
                           2211 ; y:
   60EF 0B                 2212 	.byte	11
   60F0                    2213 ___compound_literal.70:
                           2214 ; action:
   60F0 01                 2215 	.byte	1
                           2216 ; position:
                           2217 ; x:
   60F1 06                 2218 	.byte	6
                           2219 ; y:
   60F2 00                 2220 	.byte	0
   60F3                    2221 ___compound_literal.71:
                           2222 ; action:
   60F3 02                 2223 	.byte	2
                           2224 ; position:
                           2225 ; x:
   60F4 03                 2226 	.byte	3
                           2227 ; y:
   60F5 01                 2228 	.byte	1
   60F6                    2229 ___compound_literal.72:
                           2230 ; action:
   60F6 02                 2231 	.byte	2
                           2232 ; position:
                           2233 ; x:
   60F7 03                 2234 	.byte	3
                           2235 ; y:
   60F8 02                 2236 	.byte	2
   60F9                    2237 ___compound_literal.73:
                           2238 ; action:
   60F9 03                 2239 	.byte	3
                           2240 ; position:
                           2241 ; x:
   60FA 02                 2242 	.byte	2
                           2243 ; y:
   60FB 0C                 2244 	.byte	12
   60FC                    2245 ___compound_literal.74:
                           2246 ; action:
   60FC 04                 2247 	.byte	4
                           2248 ; position:
                           2249 ; x:
   60FD 07                 2250 	.byte	7
                           2251 ; y:
   60FE 02                 2252 	.byte	2
   60FF                    2253 ___compound_literal.75:
                           2254 ; action:
   60FF 01                 2255 	.byte	1
                           2256 ; position:
                           2257 ; x:
   6100 06                 2258 	.byte	6
                           2259 ; y:
   6101 04                 2260 	.byte	4
   6102                    2261 ___compound_literal.76:
                           2262 ; action:
   6102 01                 2263 	.byte	1
                           2264 ; position:
                           2265 ; x:
   6103 06                 2266 	.byte	6
                           2267 ; y:
   6104 03                 2268 	.byte	3
   6105                    2269 ___compound_literal.77:
                           2270 ; action:
   6105 03                 2271 	.byte	3
                           2272 ; position:
                           2273 ; x:
   6106 02                 2274 	.byte	2
                           2275 ; y:
   6107 06                 2276 	.byte	6
   6108                    2277 ___compound_literal.78:
                           2278 ; action:
   6108 04                 2279 	.byte	4
                           2280 ; position:
                           2281 ; x:
   6109 02                 2282 	.byte	2
                           2283 ; y:
   610A 08                 2284 	.byte	8
   610B                    2285 ___compound_literal.79:
                           2286 ; action:
   610B 01                 2287 	.byte	1
                           2288 ; position:
                           2289 ; x:
   610C 01                 2290 	.byte	1
                           2291 ; y:
   610D 08                 2292 	.byte	8
   610E                    2293 ___compound_literal.80:
                           2294 ; action:
   610E 01                 2295 	.byte	1
                           2296 ; position:
                           2297 ; x:
   610F 07                 2298 	.byte	7
                           2299 ; y:
   6110 04                 2300 	.byte	4
   6111                    2301 ___compound_literal.81:
                           2302 ; action:
   6111 01                 2303 	.byte	1
                           2304 ; position:
                           2305 ; x:
   6112 02                 2306 	.byte	2
                           2307 ; y:
   6113 09                 2308 	.byte	9
   6114                    2309 ___compound_literal.82:
                           2310 ; action:
   6114 01                 2311 	.byte	1
                           2312 ; position:
                           2313 ; x:
   6115 02                 2314 	.byte	2
                           2315 ; y:
   6116 0A                 2316 	.byte	10
   6117                    2317 ___compound_literal.83:
                           2318 ; action:
   6117 00                 2319 	.byte	0
                           2320 ; position:
                           2321 ; x:
   6118 07                 2322 	.byte	7
                           2323 ; y:
   6119 0D                 2324 	.byte	13
   611A                    2325 ___compound_literal.84:
                           2326 ; action:
   611A 00                 2327 	.byte	0
                           2328 ; position:
                           2329 ; x:
   611B 06                 2330 	.byte	6
                           2331 ; y:
   611C 0D                 2332 	.byte	13
   611D                    2333 ___compound_literal.85:
                           2334 ; action:
   611D 00                 2335 	.byte	0
                           2336 ; position:
                           2337 ; x:
   611E 05                 2338 	.byte	5
                           2339 ; y:
   611F 08                 2340 	.byte	8
   6120                    2341 ___compound_literal.86:
                           2342 ; action:
   6120 00                 2343 	.byte	0
                           2344 ; position:
                           2345 ; x:
   6121 05                 2346 	.byte	5
                           2347 ; y:
   6122 09                 2348 	.byte	9
   6123                    2349 ___compound_literal.87:
                           2350 ; action:
   6123 01                 2351 	.byte	1
                           2352 ; position:
                           2353 ; x:
   6124 05                 2354 	.byte	5
                           2355 ; y:
   6125 08                 2356 	.byte	8
   6126                    2357 ___compound_literal.88:
                           2358 ; action:
   6126 01                 2359 	.byte	1
                           2360 ; position:
                           2361 ; x:
   6127 05                 2362 	.byte	5
                           2363 ; y:
   6128 09                 2364 	.byte	9
   6129                    2365 ___compound_literal.89:
                           2366 ; action:
   6129 01                 2367 	.byte	1
                           2368 ; position:
                           2369 ; x:
   612A 06                 2370 	.byte	6
                           2371 ; y:
   612B 07                 2372 	.byte	7
   612C                    2373 ___compound_literal.90:
                           2374 ; action:
   612C 02                 2375 	.byte	2
                           2376 ; position:
                           2377 ; x:
   612D 03                 2378 	.byte	3
                           2379 ; y:
   612E 04                 2380 	.byte	4
   612F                    2381 ___compound_literal.91:
                           2382 ; action:
   612F 02                 2383 	.byte	2
                           2384 ; position:
                           2385 ; x:
   6130 03                 2386 	.byte	3
                           2387 ; y:
   6131 05                 2388 	.byte	5
   6132                    2389 ___compound_literal.92:
                           2390 ; action:
   6132 03                 2391 	.byte	3
                           2392 ; position:
                           2393 ; x:
   6133 06                 2394 	.byte	6
                           2395 ; y:
   6134 0C                 2396 	.byte	12
   6135                    2397 ___compound_literal.93:
                           2398 ; action:
   6135 04                 2399 	.byte	4
                           2400 ; position:
                           2401 ; x:
   6136 04                 2402 	.byte	4
                           2403 ; y:
   6137 0A                 2404 	.byte	10
   6138                    2405 ___compound_literal.94:
                           2406 ; action:
   6138 02                 2407 	.byte	2
                           2408 ; position:
                           2409 ; x:
   6139 06                 2410 	.byte	6
                           2411 ; y:
   613A 02                 2412 	.byte	2
   613B                    2413 ___compound_literal.95:
                           2414 ; action:
   613B 02                 2415 	.byte	2
                           2416 ; position:
                           2417 ; x:
   613C 06                 2418 	.byte	6
                           2419 ; y:
   613D 03                 2420 	.byte	3
   613E                    2421 ___compound_literal.96:
                           2422 ; action:
   613E 01                 2423 	.byte	1
                           2424 ; position:
                           2425 ; x:
   613F 02                 2426 	.byte	2
                           2427 ; y:
   6140 09                 2428 	.byte	9
   6141                    2429 ___compound_literal.97:
                           2430 ; action:
   6141 01                 2431 	.byte	1
                           2432 ; position:
                           2433 ; x:
   6142 05                 2434 	.byte	5
                           2435 ; y:
   6143 03                 2436 	.byte	3
   6144                    2437 ___compound_literal.98:
                           2438 ; action:
   6144 02                 2439 	.byte	2
                           2440 ; position:
                           2441 ; x:
   6145 00                 2442 	.byte	0
                           2443 ; y:
   6146 06                 2444 	.byte	6
   6147                    2445 ___compound_literal.99:
                           2446 ; action:
   6147 02                 2447 	.byte	2
                           2448 ; position:
                           2449 ; x:
   6148 00                 2450 	.byte	0
                           2451 ; y:
   6149 09                 2452 	.byte	9
   614A                    2453 ___compound_literal.100:
                           2454 ; action:
   614A 02                 2455 	.byte	2
                           2456 ; position:
                           2457 ; x:
   614B 00                 2458 	.byte	0
                           2459 ; y:
   614C 06                 2460 	.byte	6
   614D                    2461 ___compound_literal.101:
                           2462 ; action:
   614D 02                 2463 	.byte	2
                           2464 ; position:
                           2465 ; x:
   614E 00                 2466 	.byte	0
                           2467 ; y:
   614F 09                 2468 	.byte	9
   6150                    2469 ___compound_literal.102:
                           2470 ; action:
   6150 03                 2471 	.byte	3
                           2472 ; position:
                           2473 ; x:
   6151 03                 2474 	.byte	3
                           2475 ; y:
   6152 0E                 2476 	.byte	14
   6153                    2477 ___compound_literal.103:
                           2478 ; action:
   6153 04                 2479 	.byte	4
                           2480 ; position:
                           2481 ; x:
   6154 00                 2482 	.byte	0
                           2483 ; y:
   6155 0C                 2484 	.byte	12
   6156                    2485 ___compound_literal.104:
                           2486 ; action:
   6156 02                 2487 	.byte	2
                           2488 ; position:
                           2489 ; x:
   6157 09                 2490 	.byte	9
                           2491 ; y:
   6158 04                 2492 	.byte	4
   6159                    2493 ___compound_literal.105:
                           2494 ; action:
   6159 02                 2495 	.byte	2
                           2496 ; position:
                           2497 ; x:
   615A 09                 2498 	.byte	9
                           2499 ; y:
   615B 03                 2500 	.byte	3
   615C                    2501 ___compound_literal.106:
                           2502 ; action:
   615C 02                 2503 	.byte	2
                           2504 ; position:
                           2505 ; x:
   615D 00                 2506 	.byte	0
                           2507 ; y:
   615E 08                 2508 	.byte	8
   615F                    2509 ___compound_literal.107:
                           2510 ; action:
   615F 02                 2511 	.byte	2
                           2512 ; position:
                           2513 ; x:
   6160 00                 2514 	.byte	0
                           2515 ; y:
   6161 09                 2516 	.byte	9
   6162                    2517 ___compound_literal.108:
                           2518 ; action:
   6162 01                 2519 	.byte	1
                           2520 ; position:
                           2521 ; x:
   6163 09                 2522 	.byte	9
                           2523 ; y:
   6164 0A                 2524 	.byte	10
   6165                    2525 ___compound_literal.109:
                           2526 ; action:
   6165 01                 2527 	.byte	1
                           2528 ; position:
                           2529 ; x:
   6166 09                 2530 	.byte	9
                           2531 ; y:
   6167 0B                 2532 	.byte	11
   6168                    2533 ___compound_literal.110:
                           2534 ; action:
   6168 02                 2535 	.byte	2
                           2536 ; position:
                           2537 ; x:
   6169 03                 2538 	.byte	3
                           2539 ; y:
   616A 0A                 2540 	.byte	10
   616B                    2541 ___compound_literal.111:
                           2542 ; action:
   616B 02                 2543 	.byte	2
                           2544 ; position:
                           2545 ; x:
   616C 03                 2546 	.byte	3
                           2547 ; y:
   616D 0B                 2548 	.byte	11
   616E                    2549 ___compound_literal.112:
                           2550 ; action:
   616E 01                 2551 	.byte	1
                           2552 ; position:
                           2553 ; x:
   616F 04                 2554 	.byte	4
                           2555 ; y:
   6170 05                 2556 	.byte	5
   6171                    2557 ___compound_literal.113:
                           2558 ; action:
   6171 01                 2559 	.byte	1
                           2560 ; position:
                           2561 ; x:
   6172 03                 2562 	.byte	3
                           2563 ; y:
   6173 05                 2564 	.byte	5
   6174                    2565 ___compound_literal.114:
                           2566 ; action:
   6174 01                 2567 	.byte	1
                           2568 ; position:
                           2569 ; x:
   6175 01                 2570 	.byte	1
                           2571 ; y:
   6176 03                 2572 	.byte	3
   6177                    2573 ___compound_literal.115:
                           2574 ; action:
   6177 01                 2575 	.byte	1
                           2576 ; position:
                           2577 ; x:
   6178 01                 2578 	.byte	1
                           2579 ; y:
   6179 04                 2580 	.byte	4
   617A                    2581 ___compound_literal.116:
                           2582 ; action:
   617A 02                 2583 	.byte	2
                           2584 ; position:
                           2585 ; x:
   617B 00                 2586 	.byte	0
                           2587 ; y:
   617C 0A                 2588 	.byte	10
   617D                    2589 ___compound_literal.117:
                           2590 ; action:
   617D 02                 2591 	.byte	2
                           2592 ; position:
                           2593 ; x:
   617E 00                 2594 	.byte	0
                           2595 ; y:
   617F 0B                 2596 	.byte	11
   6180                    2597 ___compound_literal.118:
                           2598 ; action:
   6180 01                 2599 	.byte	1
                           2600 ; position:
                           2601 ; x:
   6181 00                 2602 	.byte	0
                           2603 ; y:
   6182 03                 2604 	.byte	3
   6183                    2605 ___compound_literal.119:
                           2606 ; action:
   6183 01                 2607 	.byte	1
                           2608 ; position:
                           2609 ; x:
   6184 06                 2610 	.byte	6
                           2611 ; y:
   6185 01                 2612 	.byte	1
   6186                    2613 ___compound_literal.120:
                           2614 ; action:
   6186 01                 2615 	.byte	1
                           2616 ; position:
                           2617 ; x:
   6187 06                 2618 	.byte	6
                           2619 ; y:
   6188 02                 2620 	.byte	2
   6189                    2621 ___compound_literal.121:
                           2622 ; action:
   6189 01                 2623 	.byte	1
                           2624 ; position:
                           2625 ; x:
   618A 06                 2626 	.byte	6
                           2627 ; y:
   618B 0C                 2628 	.byte	12
   618C                    2629 ___compound_literal.122:
                           2630 ; action:
   618C 01                 2631 	.byte	1
                           2632 ; position:
                           2633 ; x:
   618D 06                 2634 	.byte	6
                           2635 ; y:
   618E 0D                 2636 	.byte	13
   618F                    2637 ___compound_literal.123:
                           2638 ; action:
   618F 02                 2639 	.byte	2
                           2640 ; position:
                           2641 ; x:
   6190 03                 2642 	.byte	3
                           2643 ; y:
   6191 0A                 2644 	.byte	10
   6192                    2645 ___compound_literal.124:
                           2646 ; action:
   6192 02                 2647 	.byte	2
                           2648 ; position:
                           2649 ; x:
   6193 03                 2650 	.byte	3
                           2651 ; y:
   6194 0B                 2652 	.byte	11
   6195                    2653 ___compound_literal.125:
                           2654 ; action:
   6195 02                 2655 	.byte	2
                           2656 ; position:
                           2657 ; x:
   6196 09                 2658 	.byte	9
                           2659 ; y:
   6197 03                 2660 	.byte	3
   6198                    2661 ___compound_literal.126:
                           2662 ; action:
   6198 02                 2663 	.byte	2
                           2664 ; position:
                           2665 ; x:
   6199 09                 2666 	.byte	9
                           2667 ; y:
   619A 04                 2668 	.byte	4
   619B                    2669 ___compound_literal.127:
                           2670 ; action:
   619B 02                 2671 	.byte	2
                           2672 ; position:
                           2673 ; x:
   619C 09                 2674 	.byte	9
                           2675 ; y:
   619D 0A                 2676 	.byte	10
   619E                    2677 ___compound_literal.128:
                           2678 ; action:
   619E 02                 2679 	.byte	2
                           2680 ; position:
                           2681 ; x:
   619F 09                 2682 	.byte	9
                           2683 ; y:
   61A0 0B                 2684 	.byte	11
   61A1                    2685 ___compound_literal.129:
                           2686 ; action:
   61A1 02                 2687 	.byte	2
                           2688 ; position:
                           2689 ; x:
   61A2 06                 2690 	.byte	6
                           2691 ; y:
   61A3 0A                 2692 	.byte	10
   61A4                    2693 ___compound_literal.130:
                           2694 ; action:
   61A4 02                 2695 	.byte	2
                           2696 ; position:
                           2697 ; x:
   61A5 06                 2698 	.byte	6
                           2699 ; y:
   61A6 0B                 2700 	.byte	11
   61A7                    2701 ___compound_literal.131:
                           2702 ; action:
   61A7 01                 2703 	.byte	1
                           2704 ; position:
                           2705 ; x:
   61A8 03                 2706 	.byte	3
                           2707 ; y:
   61A9 09                 2708 	.byte	9
   61AA                    2709 ___compound_literal.132:
                           2710 ; action:
   61AA 01                 2711 	.byte	1
                           2712 ; position:
                           2713 ; x:
   61AB 03                 2714 	.byte	3
                           2715 ; y:
   61AC 0C                 2716 	.byte	12
   61AD                    2717 ___compound_literal.133:
                           2718 ; action:
   61AD 01                 2719 	.byte	1
                           2720 ; position:
                           2721 ; x:
   61AE 06                 2722 	.byte	6
                           2723 ; y:
   61AF 0A                 2724 	.byte	10
   61B0                    2725 ___compound_literal.134:
                           2726 ; action:
   61B0 01                 2727 	.byte	1
                           2728 ; position:
                           2729 ; x:
   61B1 06                 2730 	.byte	6
                           2731 ; y:
   61B2 0B                 2732 	.byte	11
   61B3                    2733 ___compound_literal.135:
                           2734 ; action:
   61B3 00                 2735 	.byte	0
                           2736 ; position:
                           2737 ; x:
   61B4 02                 2738 	.byte	2
                           2739 ; y:
   61B5 0E                 2740 	.byte	14
   61B6                    2741 ___compound_literal.136:
                           2742 ; action:
   61B6 00                 2743 	.byte	0
                           2744 ; position:
                           2745 ; x:
   61B7 07                 2746 	.byte	7
                           2747 ; y:
   61B8 09                 2748 	.byte	9
   61B9                    2749 ___compound_literal.137:
                           2750 ; action:
   61B9 00                 2751 	.byte	0
                           2752 ; position:
                           2753 ; x:
   61BA 07                 2754 	.byte	7
                           2755 ; y:
   61BB 0A                 2756 	.byte	10
   61BC                    2757 ___compound_literal.138:
                           2758 ; action:
   61BC 02                 2759 	.byte	2
                           2760 ; position:
                           2761 ; x:
   61BD 07                 2762 	.byte	7
                           2763 ; y:
   61BE 04                 2764 	.byte	4
   61BF                    2765 ___compound_literal.139:
                           2766 ; action:
   61BF 02                 2767 	.byte	2
                           2768 ; position:
                           2769 ; x:
   61C0 07                 2770 	.byte	7
                           2771 ; y:
   61C1 05                 2772 	.byte	5
   61C2                    2773 ___compound_literal.140:
                           2774 ; action:
   61C2 02                 2775 	.byte	2
                           2776 ; position:
                           2777 ; x:
   61C3 07                 2778 	.byte	7
                           2779 ; y:
   61C4 09                 2780 	.byte	9
   61C5                    2781 ___compound_literal.141:
                           2782 ; action:
   61C5 02                 2783 	.byte	2
                           2784 ; position:
                           2785 ; x:
   61C6 07                 2786 	.byte	7
                           2787 ; y:
   61C7 0A                 2788 	.byte	10
   61C8                    2789 ___compound_literal.142:
                           2790 ; action:
   61C8 02                 2791 	.byte	2
                           2792 ; position:
                           2793 ; x:
   61C9 02                 2794 	.byte	2
                           2795 ; y:
   61CA 04                 2796 	.byte	4
   61CB                    2797 ___compound_literal.143:
                           2798 ; action:
   61CB 02                 2799 	.byte	2
                           2800 ; position:
                           2801 ; x:
   61CC 02                 2802 	.byte	2
                           2803 ; y:
   61CD 05                 2804 	.byte	5
   61CE                    2805 ___compound_literal.144:
                           2806 ; action:
   61CE 02                 2807 	.byte	2
                           2808 ; position:
                           2809 ; x:
   61CF 02                 2810 	.byte	2
                           2811 ; y:
   61D0 09                 2812 	.byte	9
   61D1                    2813 ___compound_literal.145:
                           2814 ; action:
   61D1 02                 2815 	.byte	2
                           2816 ; position:
                           2817 ; x:
   61D2 02                 2818 	.byte	2
                           2819 ; y:
   61D3 0A                 2820 	.byte	10
   61D4                    2821 ___compound_literal.146:
                           2822 ; action:
   61D4 02                 2823 	.byte	2
                           2824 ; position:
                           2825 ; x:
   61D5 07                 2826 	.byte	7
                           2827 ; y:
   61D6 04                 2828 	.byte	4
   61D7                    2829 ___compound_literal.147:
                           2830 ; action:
   61D7 02                 2831 	.byte	2
                           2832 ; position:
                           2833 ; x:
   61D8 07                 2834 	.byte	7
                           2835 ; y:
   61D9 05                 2836 	.byte	5
   61DA                    2837 ___compound_literal.148:
                           2838 ; action:
   61DA 02                 2839 	.byte	2
                           2840 ; position:
                           2841 ; x:
   61DB 07                 2842 	.byte	7
                           2843 ; y:
   61DC 09                 2844 	.byte	9
   61DD                    2845 ___compound_literal.149:
                           2846 ; action:
   61DD 02                 2847 	.byte	2
                           2848 ; position:
                           2849 ; x:
   61DE 07                 2850 	.byte	7
                           2851 ; y:
   61DF 0A                 2852 	.byte	10
   61E0                    2853 ___compound_literal.150:
                           2854 ; action:
   61E0 02                 2855 	.byte	2
                           2856 ; position:
                           2857 ; x:
   61E1 02                 2858 	.byte	2
                           2859 ; y:
   61E2 04                 2860 	.byte	4
   61E3                    2861 ___compound_literal.151:
                           2862 ; action:
   61E3 02                 2863 	.byte	2
                           2864 ; position:
                           2865 ; x:
   61E4 02                 2866 	.byte	2
                           2867 ; y:
   61E5 05                 2868 	.byte	5
   61E6                    2869 ___compound_literal.152:
                           2870 ; action:
   61E6 02                 2871 	.byte	2
                           2872 ; position:
                           2873 ; x:
   61E7 02                 2874 	.byte	2
                           2875 ; y:
   61E8 09                 2876 	.byte	9
   61E9                    2877 ___compound_literal.153:
                           2878 ; action:
   61E9 02                 2879 	.byte	2
                           2880 ; position:
                           2881 ; x:
   61EA 02                 2882 	.byte	2
                           2883 ; y:
   61EB 0A                 2884 	.byte	10
   61EC                    2885 ___compound_literal.154:
                           2886 ; action:
   61EC 01                 2887 	.byte	1
                           2888 ; position:
                           2889 ; x:
   61ED 07                 2890 	.byte	7
                           2891 ; y:
   61EE 0E                 2892 	.byte	14
   61EF                    2893 ___compound_literal.155:
                           2894 ; action:
   61EF 01                 2895 	.byte	1
                           2896 ; position:
                           2897 ; x:
   61F0 08                 2898 	.byte	8
                           2899 ; y:
   61F1 0E                 2900 	.byte	14
   61F2                    2901 ___compound_literal.156:
                           2902 ; action:
   61F2 01                 2903 	.byte	1
                           2904 ; position:
                           2905 ; x:
   61F3 09                 2906 	.byte	9
                           2907 ; y:
   61F4 0E                 2908 	.byte	14
   61F5                    2909 ___compound_literal.157:
                           2910 ; action:
   61F5 02                 2911 	.byte	2
                           2912 ; position:
                           2913 ; x:
   61F6 07                 2914 	.byte	7
                           2915 ; y:
   61F7 04                 2916 	.byte	4
   61F8                    2917 ___compound_literal.158:
                           2918 ; action:
   61F8 02                 2919 	.byte	2
                           2920 ; position:
                           2921 ; x:
   61F9 07                 2922 	.byte	7
                           2923 ; y:
   61FA 05                 2924 	.byte	5
   61FB                    2925 ___compound_literal.159:
                           2926 ; action:
   61FB 00                 2927 	.byte	0
                           2928 ; position:
                           2929 ; x:
   61FC 02                 2930 	.byte	2
                           2931 ; y:
   61FD 04                 2932 	.byte	4
   61FE                    2933 ___compound_literal.160:
                           2934 ; action:
   61FE 00                 2935 	.byte	0
                           2936 ; position:
                           2937 ; x:
   61FF 02                 2938 	.byte	2
                           2939 ; y:
   6200 05                 2940 	.byte	5
   6201                    2941 ___compound_literal.161:
                           2942 ; action:
   6201 00                 2943 	.byte	0
                           2944 ; position:
                           2945 ; x:
   6202 02                 2946 	.byte	2
                           2947 ; y:
   6203 03                 2948 	.byte	3
   6204                    2949 ___compound_literal.162:
                           2950 ; action:
   6204 00                 2951 	.byte	0
                           2952 ; position:
                           2953 ; x:
   6205 02                 2954 	.byte	2
                           2955 ; y:
   6206 04                 2956 	.byte	4
   6207                    2957 ___compound_literal.163:
                           2958 ; action:
   6207 00                 2959 	.byte	0
                           2960 ; position:
                           2961 ; x:
   6208 08                 2962 	.byte	8
                           2963 ; y:
   6209 05                 2964 	.byte	5
   620A                    2965 ___compound_literal.164:
                           2966 ; action:
   620A 00                 2967 	.byte	0
                           2968 ; position:
                           2969 ; x:
   620B 08                 2970 	.byte	8
                           2971 ; y:
   620C 06                 2972 	.byte	6
   620D                    2973 ___compound_literal.165:
                           2974 ; action:
   620D 00                 2975 	.byte	0
                           2976 ; position:
                           2977 ; x:
   620E 01                 2978 	.byte	1
                           2979 ; y:
   620F 03                 2980 	.byte	3
   6210                    2981 ___compound_literal.166:
                           2982 ; action:
   6210 00                 2983 	.byte	0
                           2984 ; position:
                           2985 ; x:
   6211 01                 2986 	.byte	1
                           2987 ; y:
   6212 04                 2988 	.byte	4
   6213                    2989 ___compound_literal.167:
                           2990 ; action:
   6213 00                 2991 	.byte	0
                           2992 ; position:
                           2993 ; x:
   6214 07                 2994 	.byte	7
                           2995 ; y:
   6215 05                 2996 	.byte	5
   6216                    2997 ___compound_literal.168:
                           2998 ; action:
   6216 00                 2999 	.byte	0
                           3000 ; position:
                           3001 ; x:
   6217 07                 3002 	.byte	7
                           3003 ; y:
   6218 06                 3004 	.byte	6
   6219                    3005 ___compound_literal.169:
                           3006 ; action:
   6219 02                 3007 	.byte	2
                           3008 ; position:
                           3009 ; x:
   621A 02                 3010 	.byte	2
                           3011 ; y:
   621B 03                 3012 	.byte	3
   621C                    3013 ___compound_literal.170:
                           3014 ; action:
   621C 02                 3015 	.byte	2
                           3016 ; position:
                           3017 ; x:
   621D 02                 3018 	.byte	2
                           3019 ; y:
   621E 04                 3020 	.byte	4
   621F                    3021 ___compound_literal.171:
                           3022 ; action:
   621F 02                 3023 	.byte	2
                           3024 ; position:
                           3025 ; x:
   6220 02                 3026 	.byte	2
                           3027 ; y:
   6221 03                 3028 	.byte	3
   6222                    3029 ___compound_literal.172:
                           3030 ; action:
   6222 02                 3031 	.byte	2
                           3032 ; position:
                           3033 ; x:
   6223 02                 3034 	.byte	2
                           3035 ; y:
   6224 04                 3036 	.byte	4
   6225                    3037 ___compound_literal.173:
                           3038 ; action:
   6225 02                 3039 	.byte	2
                           3040 ; position:
                           3041 ; x:
   6226 02                 3042 	.byte	2
                           3043 ; y:
   6227 03                 3044 	.byte	3
   6228                    3045 ___compound_literal.174:
                           3046 ; action:
   6228 02                 3047 	.byte	2
                           3048 ; position:
                           3049 ; x:
   6229 02                 3050 	.byte	2
                           3051 ; y:
   622A 04                 3052 	.byte	4
   622B                    3053 ___compound_literal.175:
                           3054 ; action:
   622B 02                 3055 	.byte	2
                           3056 ; position:
                           3057 ; x:
   622C 02                 3058 	.byte	2
                           3059 ; y:
   622D 03                 3060 	.byte	3
   622E                    3061 ___compound_literal.176:
                           3062 ; action:
   622E 02                 3063 	.byte	2
                           3064 ; position:
                           3065 ; x:
   622F 02                 3066 	.byte	2
                           3067 ; y:
   6230 04                 3068 	.byte	4
   6231                    3069 ___compound_literal.177:
                           3070 ; action:
   6231 02                 3071 	.byte	2
                           3072 ; position:
                           3073 ; x:
   6232 02                 3074 	.byte	2
                           3075 ; y:
   6233 03                 3076 	.byte	3
   6234                    3077 ___compound_literal.178:
                           3078 ; action:
   6234 02                 3079 	.byte	2
                           3080 ; position:
                           3081 ; x:
   6235 02                 3082 	.byte	2
                           3083 ; y:
   6236 04                 3084 	.byte	4
   6237                    3085 ___compound_literal.179:
                           3086 ; action:
   6237 02                 3087 	.byte	2
                           3088 ; position:
                           3089 ; x:
   6238 02                 3090 	.byte	2
                           3091 ; y:
   6239 03                 3092 	.byte	3
   623A                    3093 ___compound_literal.180:
                           3094 ; action:
   623A 02                 3095 	.byte	2
                           3096 ; position:
                           3097 ; x:
   623B 02                 3098 	.byte	2
                           3099 ; y:
   623C 04                 3100 	.byte	4
   623D                    3101 ___compound_literal.181:
                           3102 ; action:
   623D 02                 3103 	.byte	2
                           3104 ; position:
                           3105 ; x:
   623E 02                 3106 	.byte	2
                           3107 ; y:
   623F 03                 3108 	.byte	3
   6240                    3109 ___compound_literal.182:
                           3110 ; action:
   6240 02                 3111 	.byte	2
                           3112 ; position:
                           3113 ; x:
   6241 02                 3114 	.byte	2
                           3115 ; y:
   6242 04                 3116 	.byte	4
   6243                    3117 ___compound_literal.183:
                           3118 ; action:
   6243 02                 3119 	.byte	2
                           3120 ; position:
                           3121 ; x:
   6244 02                 3122 	.byte	2
                           3123 ; y:
   6245 03                 3124 	.byte	3
   6246                    3125 ___compound_literal.184:
                           3126 ; action:
   6246 02                 3127 	.byte	2
                           3128 ; position:
                           3129 ; x:
   6247 02                 3130 	.byte	2
                           3131 ; y:
   6248 04                 3132 	.byte	4
   6249                    3133 ___compound_literal.185:
                           3134 ; action:
   6249 02                 3135 	.byte	2
                           3136 ; position:
                           3137 ; x:
   624A 02                 3138 	.byte	2
                           3139 ; y:
   624B 03                 3140 	.byte	3
   624C                    3141 ___compound_literal.186:
                           3142 ; action:
   624C 02                 3143 	.byte	2
                           3144 ; position:
                           3145 ; x:
   624D 02                 3146 	.byte	2
                           3147 ; y:
   624E 04                 3148 	.byte	4
   624F                    3149 ___compound_literal.187:
                           3150 ; action:
   624F 02                 3151 	.byte	2
                           3152 ; position:
                           3153 ; x:
   6250 02                 3154 	.byte	2
                           3155 ; y:
   6251 03                 3156 	.byte	3
   6252                    3157 ___compound_literal.188:
                           3158 ; action:
   6252 02                 3159 	.byte	2
                           3160 ; position:
                           3161 ; x:
   6253 02                 3162 	.byte	2
                           3163 ; y:
   6254 04                 3164 	.byte	4
   6255                    3165 ___compound_literal.189:
                           3166 ; action:
   6255 02                 3167 	.byte	2
                           3168 ; position:
                           3169 ; x:
   6256 02                 3170 	.byte	2
                           3171 ; y:
   6257 03                 3172 	.byte	3
   6258                    3173 ___compound_literal.190:
                           3174 ; action:
   6258 02                 3175 	.byte	2
                           3176 ; position:
                           3177 ; x:
   6259 02                 3178 	.byte	2
                           3179 ; y:
   625A 04                 3180 	.byte	4
   625B                    3181 ___compound_literal.191:
                           3182 ; action:
   625B 02                 3183 	.byte	2
                           3184 ; position:
                           3185 ; x:
   625C 02                 3186 	.byte	2
                           3187 ; y:
   625D 03                 3188 	.byte	3
   625E                    3189 ___compound_literal.192:
                           3190 ; action:
   625E 02                 3191 	.byte	2
                           3192 ; position:
                           3193 ; x:
   625F 02                 3194 	.byte	2
                           3195 ; y:
   6260 04                 3196 	.byte	4
   6261                    3197 ___compound_literal.193:
                           3198 ; action:
   6261 01                 3199 	.byte	1
                           3200 ; position:
                           3201 ; x:
   6262 08                 3202 	.byte	8
                           3203 ; y:
   6263 0B                 3204 	.byte	11
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 LC0                02D7 R   |   2 LC1                0381 R
  2 LC10               094B R   |   2 LC11               09ED R
  2 LC12               0A8F R   |   2 LC13               0B2F R
  2 LC14               0BD7 R   |   2 LC15               0C79 R
  2 LC16               0D1F R   |   2 LC17               0DC1 R
  2 LC2                0427 R   |   2 LC3                04CF R
  2 LC4                0571 R   |   2 LC5                0619 R
  2 LC6                06B9 R   |   2 LC7                075D R
  2 LC8                0803 R   |   2 LC9                08A9 R
  2 ___compound_li     0E9B R   |   2 ___compound_li     0E9E R
  2 ___compound_li     0EB9 R   |   2 ___compound_li     0FC7 R
  2 ___compound_li     0FCA R   |   2 ___compound_li     0FCD R
  2 ___compound_li     0FD0 R   |   2 ___compound_li     0FD3 R
  2 ___compound_li     0FD6 R   |   2 ___compound_li     0FD9 R
  2 ___compound_li     0FDC R   |   2 ___compound_li     0FDF R
  2 ___compound_li     0FE2 R   |   2 ___compound_li     0EBC R
  2 ___compound_li     0FE5 R   |   2 ___compound_li     0FE8 R
  2 ___compound_li     0FEB R   |   2 ___compound_li     0FEE R
  2 ___compound_li     0FF1 R   |   2 ___compound_li     0FF4 R
  2 ___compound_li     0FF7 R   |   2 ___compound_li     0FFA R
  2 ___compound_li     0FFD R   |   2 ___compound_li     1000 R
  2 ___compound_li     0EBF R   |   2 ___compound_li     1003 R
  2 ___compound_li     1006 R   |   2 ___compound_li     1009 R
  2 ___compound_li     100C R   |   2 ___compound_li     100F R
  2 ___compound_li     1012 R   |   2 ___compound_li     1015 R
  2 ___compound_li     1018 R   |   2 ___compound_li     101B R
  2 ___compound_li     101E R   |   2 ___compound_li     0EC2 R
  2 ___compound_li     1021 R   |   2 ___compound_li     1024 R
  2 ___compound_li     1027 R   |   2 ___compound_li     102A R
  2 ___compound_li     102D R   |   2 ___compound_li     1030 R
  2 ___compound_li     1033 R   |   2 ___compound_li     1036 R
  2 ___compound_li     1039 R   |   2 ___compound_li     103C R
  2 ___compound_li     0EC5 R   |   2 ___compound_li     103F R
  2 ___compound_li     1042 R   |   2 ___compound_li     1045 R
  2 ___compound_li     1048 R   |   2 ___compound_li     104B R
  2 ___compound_li     104E R   |   2 ___compound_li     1051 R
  2 ___compound_li     1054 R   |   2 ___compound_li     1057 R
  2 ___compound_li     105A R   |   2 ___compound_li     0EC8 R
  2 ___compound_li     105D R   |   2 ___compound_li     1060 R
  2 ___compound_li     1063 R   |   2 ___compound_li     1066 R
  2 ___compound_li     1069 R   |   2 ___compound_li     106C R
  2 ___compound_li     106F R   |   2 ___compound_li     1072 R
  2 ___compound_li     1075 R   |   2 ___compound_li     1078 R
  2 ___compound_li     0ECB R   |   2 ___compound_li     107B R
  2 ___compound_li     107E R   |   2 ___compound_li     1081 R
  2 ___compound_li     1084 R   |   2 ___compound_li     1087 R
  2 ___compound_li     108A R   |   2 ___compound_li     108D R
  2 ___compound_li     1090 R   |   2 ___compound_li     1093 R
  2 ___compound_li     1096 R   |   2 ___compound_li     0ECE R
  2 ___compound_li     1099 R   |   2 ___compound_li     109C R
  2 ___compound_li     109F R   |   2 ___compound_li     10A2 R
  2 ___compound_li     10A5 R   |   2 ___compound_li     10A8 R
  2 ___compound_li     10AB R   |   2 ___compound_li     10AE R
  2 ___compound_li     10B1 R   |   2 ___compound_li     10B4 R
  2 ___compound_li     0ED1 R   |   2 ___compound_li     10B7 R
  2 ___compound_li     10BA R   |   2 ___compound_li     10BD R
  2 ___compound_li     10C0 R   |   2 ___compound_li     10C3 R
  2 ___compound_li     10C6 R   |   2 ___compound_li     10C9 R
  2 ___compound_li     10CC R   |   2 ___compound_li     10CF R
  2 ___compound_li     10D2 R   |   2 ___compound_li     0ED4 R
  2 ___compound_li     10D5 R   |   2 ___compound_li     10D8 R
  2 ___compound_li     10DB R   |   2 ___compound_li     10DE R
  2 ___compound_li     0EA1 R   |   2 ___compound_li     0ED7 R
  2 ___compound_li     0EDA R   |   2 ___compound_li     0EDD R
  2 ___compound_li     0EE0 R   |   2 ___compound_li     0EE3 R
  2 ___compound_li     0EE6 R   |   2 ___compound_li     0EE9 R
  2 ___compound_li     0EEC R   |   2 ___compound_li     0EEF R
  2 ___compound_li     0EF2 R   |   2 ___compound_li     0EA4 R
  2 ___compound_li     0EF5 R   |   2 ___compound_li     0EF8 R
  2 ___compound_li     0EFB R   |   2 ___compound_li     0EFE R
  2 ___compound_li     0F01 R   |   2 ___compound_li     0F04 R
  2 ___compound_li     0F07 R   |   2 ___compound_li     0F0A R
  2 ___compound_li     0F0D R   |   2 ___compound_li     0F10 R
  2 ___compound_li     0EA7 R   |   2 ___compound_li     0F13 R
  2 ___compound_li     0F16 R   |   2 ___compound_li     0F19 R
  2 ___compound_li     0F1C R   |   2 ___compound_li     0F1F R
  2 ___compound_li     0F22 R   |   2 ___compound_li     0F25 R
  2 ___compound_li     0F28 R   |   2 ___compound_li     0F2B R
  2 ___compound_li     0F2E R   |   2 ___compound_li     0EAA R
  2 ___compound_li     0F31 R   |   2 ___compound_li     0F34 R
  2 ___compound_li     0F37 R   |   2 ___compound_li     0F3A R
  2 ___compound_li     0F3D R   |   2 ___compound_li     0F40 R
  2 ___compound_li     0F43 R   |   2 ___compound_li     0F46 R
  2 ___compound_li     0F49 R   |   2 ___compound_li     0F4C R
  2 ___compound_li     0EAD R   |   2 ___compound_li     0F4F R
  2 ___compound_li     0F52 R   |   2 ___compound_li     0F55 R
  2 ___compound_li     0F58 R   |   2 ___compound_li     0F5B R
  2 ___compound_li     0F5E R   |   2 ___compound_li     0F61 R
  2 ___compound_li     0F64 R   |   2 ___compound_li     0F67 R
  2 ___compound_li     0F6A R   |   2 ___compound_li     0EB0 R
  2 ___compound_li     0F6D R   |   2 ___compound_li     0F70 R
  2 ___compound_li     0F73 R   |   2 ___compound_li     0F76 R
  2 ___compound_li     0F79 R   |   2 ___compound_li     0F7C R
  2 ___compound_li     0F7F R   |   2 ___compound_li     0F82 R
  2 ___compound_li     0F85 R   |   2 ___compound_li     0F88 R
  2 ___compound_li     0EB3 R   |   2 ___compound_li     0F8B R
  2 ___compound_li     0F8E R   |   2 ___compound_li     0F91 R
  2 ___compound_li     0F94 R   |   2 ___compound_li     0F97 R
  2 ___compound_li     0F9A R   |   2 ___compound_li     0F9D R
  2 ___compound_li     0FA0 R   |   2 ___compound_li     0FA3 R
  2 ___compound_li     0FA6 R   |   2 ___compound_li     0EB6 R
  2 ___compound_li     0FA9 R   |   2 ___compound_li     0FAC R
  2 ___compound_li     0FAF R   |   2 ___compound_li     0FB2 R
  2 ___compound_li     0FB5 R   |   2 ___compound_li     0FB8 R
  2 ___compound_li     0FBB R   |   2 ___compound_li     0FBE R
  2 ___compound_li     0FC1 R   |   2 ___compound_li     0FC4 R
  2 _level0            036E GR  |   2 _level1            0418 GR
  2 _level10           09E2 GR  |   2 _level11           0A84 GR
  2 _level12           0B26 GR  |   2 _level13           0BC6 GR
  2 _level14           0C6E GR  |   2 _level15           0D10 GR
  2 _level16           0DB6 GR  |   2 _level17           0E58 GR
  2 _level2            04BE GR  |   2 _level3            0566 GR
  2 _level4            0608 GR  |   2 _level5            06B0 GR
  2 _level6            0750 GR  |   2 _level7            07F4 GR
  2 _level8            089A GR  |   2 _level9            0940 GR
  2 _levelCount        0000 GR  |   2 _levelOffset       0001 GR
  2 _levels            0E77 GR  |   2 _nextBank          0002 GR
  2 _swatch_0_0        0003 GR  |   2 _swatch_0_1        000B GR
  2 _swatch_0_2        0013 GR  |   2 _swatch_0_3        001B GR
  2 _swatch_0_4        0023 GR  |   2 _swatch_0_5        002B GR
  2 _swatch_0_6        0033 GR  |   2 _swatch_10_0       0173 GR
  2 _swatch_10_1       017B GR  |   2 _swatch_10_2       0183 GR
  2 _swatch_11_0       018B GR  |   2 _swatch_11_1       0193 GR
  2 _swatch_11_2       0199 GR  |   2 _swatch_12_0       019F GR
  2 _swatch_12_1       01A7 GR  |   2 _swatch_13_0       01B3 GR
  2 _swatch_13_1       01BF GR  |   2 _swatch_13_2       01C7 GR
  2 _swatch_13_3       01D3 GR  |   2 _swatch_13_4       01D9 GR
  2 _swatch_13_5       01E1 GR  |   2 _swatch_14_0       01F5 GR
  2 _swatch_14_1       0201 GR  |   2 _swatch_14_2       0209 GR
  2 _swatch_15_0       020F GR  |   2 _swatch_15_1       0217 GR
  2 _swatch_15_2       022B GR  |   2 _swatch_15_3       023F GR
  2 _swatch_15_4       024D GR  |   2 _swatch_16_0       0255 GR
  2 _swatch_16_1       0261 GR  |   2 _swatch_16_2       0269 GR
  2 _swatch_17_0       0271 GR  |   2 _swatch_17_1       0279 GR
  2 _swatch_17_10      02C1 GR  |   2 _swatch_17_11      02C9 GR
  2 _swatch_17_12      02D1 GR  |   2 _swatch_17_2       0281 GR
  2 _swatch_17_3       0289 GR  |   2 _swatch_17_4       0291 GR
  2 _swatch_17_5       0299 GR  |   2 _swatch_17_6       02A1 GR
  2 _swatch_17_7       02A9 GR  |   2 _swatch_17_8       02B1 GR
  2 _swatch_17_9       02B9 GR  |   2 _swatch_1_0        003B GR
  2 _swatch_1_1        0041 GR  |   2 _swatch_1_2        0047 GR
  2 _swatch_1_3        004D GR  |   2 _swatch_1_4        0053 GR
  2 _swatch_2_0        005B GR  |   2 _swatch_2_1        0063 GR
  2 _swatch_2_2        006F GR  |   2 _swatch_2_3        0077 GR
  2 _swatch_2_4        0083 GR  |   2 _swatch_2_5        008F GR
  2 _swatch_3_0        0095 GR  |   2 _swatch_3_1        009D GR
  2 _swatch_3_2        00A5 GR  |   2 _swatch_4_0        00AD GR
  2 _swatch_4_1        00B5 GR  |   2 _swatch_4_2        00BD GR
  2 _swatch_4_3        00C5 GR  |   2 _swatch_4_4        00CD GR
  2 _swatch_4_5        00D5 GR  |   2 _swatch_5_0        00DD GR
  2 _swatch_5_1        00E3 GR  |   2 _swatch_6_0        00E9 GR
  2 _swatch_6_1        00F1 GR  |   2 _swatch_6_2        00F9 GR
  2 _swatch_6_3        00FF GR  |   2 _swatch_7_0        0105 GR
  2 _swatch_7_1        010B GR  |   2 _swatch_7_2        0115 GR
  2 _swatch_7_3        011F GR  |   2 _swatch_7_4        0129 GR
  2 _swatch_8_0        0131 GR  |   2 _swatch_8_1        0139 GR
  2 _swatch_8_2        0141 GR  |   2 _swatch_8_3        0147 GR
  2 _swatch_8_4        014D GR  |   2 _swatch_9_0        0155 GR
  2 _swatch_9_1        0161 GR  |   2 _swatch_9_2        0169 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size 10E1   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

