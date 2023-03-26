                              1 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mint8
                              5 	.module	leveldata.enr.c
                              6 ;  GNU C (GCC) version 4.3.6 (gcc6809) (m6809-unknown-none)
                              7 ; 	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.2.
                              8 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
                              9 ;  options passed:  -O1 -fverbose-asm -W -Wall -Wextra -Wconversion -Werror
                             10 ;  -fomit-frame-pointer -mint8 -msoft-reg-count=0 -std=gnu99
                             11 ;  -fno-time-report -IC:\data\vide\C\PeerC\vectrex\include -D__RUM_INLINE=1
                             12 ;  -DOMMIT_FRAMEPOINTER=1
                             13 ;  C:\data\vide\..\bloxorz\Vide\source\leveldata.enr.c
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
                             30 ;  Compiler executable checksum: c38122f302f7072aed6a431d27122065
                             31 	.globl _levelCount
                             32 	.area .text
   4F43                      33 _levelCount:
   4F43 12                   34 	.byte	18
                             35 	.globl _levelOffset
   4F44                      36 _levelOffset:
   4F44 10                   37 	.byte	16
                             38 	.globl _nextBank
   4F45                      39 _nextBank:
   4F45 00                   40 	.byte	0	;skip space
                             41 	.globl _swatch_0_0
   4F46                      42 _swatch_0_0:
                             43 ;  type:
   4F46 02                   44 	.byte	2
                             45 ;  position:
                             46 ;  x:
   4F47 07                   47 	.byte	7
                             48 ;  y:
   4F48 01                   49 	.byte	1
                             50 ;  fields_count:
   4F49 02                   51 	.byte	2
                             52 ;  fields:
   4F4A 5D DE                53 	.word	___compound_literal.0
   4F4C 5D E1                54 	.word	___compound_literal.1
                             55 	.globl _swatch_0_1
   4F4E                      56 _swatch_0_1:
                             57 ;  type:
   4F4E 02                   58 	.byte	2
                             59 ;  position:
                             60 ;  x:
   4F4F 06                   61 	.byte	6
                             62 ;  y:
   4F50 00                   63 	.byte	0
                             64 ;  fields_count:
   4F51 02                   65 	.byte	2
                             66 ;  fields:
   4F52 5D E4                67 	.word	___compound_literal.2
   4F54 5D E7                68 	.word	___compound_literal.3
                             69 	.globl _swatch_0_2
   4F56                      70 _swatch_0_2:
                             71 ;  type:
   4F56 02                   72 	.byte	2
                             73 ;  position:
                             74 ;  x:
   4F57 06                   75 	.byte	6
                             76 ;  y:
   4F58 02                   77 	.byte	2
                             78 ;  fields_count:
   4F59 02                   79 	.byte	2
                             80 ;  fields:
   4F5A 5D EA                81 	.word	___compound_literal.4
   4F5C 5D ED                82 	.word	___compound_literal.5
                             83 	.globl _swatch_0_3
   4F5E                      84 _swatch_0_3:
                             85 ;  type:
   4F5E 01                   86 	.byte	1
                             87 ;  position:
                             88 ;  x:
   4F5F 06                   89 	.byte	6
                             90 ;  y:
   4F60 05                   91 	.byte	5
                             92 ;  fields_count:
   4F61 02                   93 	.byte	2
                             94 ;  fields:
   4F62 5D F0                95 	.word	___compound_literal.6
   4F64 5D F3                96 	.word	___compound_literal.7
                             97 	.globl _swatch_0_4
   4F66                      98 _swatch_0_4:
                             99 ;  type:
   4F66 01                  100 	.byte	1
                            101 ;  position:
                            102 ;  x:
   4F67 06                  103 	.byte	6
                            104 ;  y:
   4F68 06                  105 	.byte	6
                            106 ;  fields_count:
   4F69 02                  107 	.byte	2
                            108 ;  fields:
   4F6A 5D F6               109 	.word	___compound_literal.8
   4F6C 5D F9               110 	.word	___compound_literal.9
                            111 	.globl _swatch_0_5
   4F6E                     112 _swatch_0_5:
                            113 ;  type:
   4F6E 02                  114 	.byte	2
                            115 ;  position:
                            116 ;  x:
   4F6F 05                  117 	.byte	5
                            118 ;  y:
   4F70 01                  119 	.byte	1
                            120 ;  fields_count:
   4F71 02                  121 	.byte	2
                            122 ;  fields:
   4F72 5D FC               123 	.word	___compound_literal.10
   4F74 5D FF               124 	.word	___compound_literal.11
                            125 	.globl _swatch_0_6
   4F76                     126 _swatch_0_6:
                            127 ;  type:
   4F76 02                  128 	.byte	2
                            129 ;  position:
                            130 ;  x:
   4F77 01                  131 	.byte	1
                            132 ;  y:
   4F78 09                  133 	.byte	9
                            134 ;  fields_count:
   4F79 02                  135 	.byte	2
                            136 ;  fields:
   4F7A 5E 02               137 	.word	___compound_literal.12
   4F7C 5E 05               138 	.word	___compound_literal.13
                            139 	.globl _swatch_1_0
   4F7E                     140 _swatch_1_0:
                            141 ;  type:
   4F7E 01                  142 	.byte	1
                            143 ;  position:
                            144 ;  x:
   4F7F 06                  145 	.byte	6
                            146 ;  y:
   4F80 0C                  147 	.byte	12
                            148 ;  fields_count:
   4F81 01                  149 	.byte	1
                            150 ;  fields:
   4F82 5E 08               151 	.word	___compound_literal.14
                            152 	.globl _swatch_1_1
   4F84                     153 _swatch_1_1:
                            154 ;  type:
   4F84 01                  155 	.byte	1
                            156 ;  position:
                            157 ;  x:
   4F85 06                  158 	.byte	6
                            159 ;  y:
   4F86 0D                  160 	.byte	13
                            161 ;  fields_count:
   4F87 01                  162 	.byte	1
                            163 ;  fields:
   4F88 5E 0B               164 	.word	___compound_literal.15
                            165 	.globl _swatch_1_2
   4F8A                     166 _swatch_1_2:
                            167 ;  type:
   4F8A 01                  168 	.byte	1
                            169 ;  position:
                            170 ;  x:
   4F8B 03                  171 	.byte	3
                            172 ;  y:
   4F8C 0C                  173 	.byte	12
                            174 ;  fields_count:
   4F8D 01                  175 	.byte	1
                            176 ;  fields:
   4F8E 5E 0E               177 	.word	___compound_literal.16
                            178 	.globl _swatch_1_3
   4F90                     179 _swatch_1_3:
                            180 ;  type:
   4F90 00                  181 	.byte	0
                            182 ;  position:
                            183 ;  x:
   4F91 01                  184 	.byte	1
                            185 ;  y:
   4F92 01                  186 	.byte	1
                            187 ;  fields_count:
   4F93 01                  188 	.byte	1
                            189 ;  fields:
   4F94 5E 11               190 	.word	___compound_literal.17
                            191 	.globl _swatch_1_4
   4F96                     192 _swatch_1_4:
                            193 ;  type:
   4F96 01                  194 	.byte	1
                            195 ;  position:
                            196 ;  x:
   4F97 00                  197 	.byte	0
                            198 ;  y:
   4F98 0C                  199 	.byte	12
                            200 ;  fields_count:
   4F99 02                  201 	.byte	2
                            202 ;  fields:
   4F9A 5E 14               203 	.word	___compound_literal.18
   4F9C 5E 17               204 	.word	___compound_literal.19
                            205 	.globl _swatch_2_0
   4F9E                     206 _swatch_2_0:
                            207 ;  type:
   4F9E 00                  208 	.byte	0
                            209 ;  position:
                            210 ;  x:
   4F9F 08                  211 	.byte	8
                            212 ;  y:
   4FA0 07                  213 	.byte	7
                            214 ;  fields_count:
   4FA1 02                  215 	.byte	2
                            216 ;  fields:
   4FA2 5E 1A               217 	.word	___compound_literal.20
   4FA4 5E 1D               218 	.word	___compound_literal.21
                            219 	.globl _swatch_2_1
   4FA6                     220 _swatch_2_1:
                            221 ;  type:
   4FA6 00                  222 	.byte	0
                            223 ;  position:
                            224 ;  x:
   4FA7 07                  225 	.byte	7
                            226 ;  y:
   4FA8 02                  227 	.byte	2
                            228 ;  fields_count:
   4FA9 04                  229 	.byte	4
                            230 ;  fields:
   4FAA 5E 20               231 	.word	___compound_literal.22
   4FAC 5E 23               232 	.word	___compound_literal.23
   4FAE 5E 26               233 	.word	___compound_literal.24
   4FB0 5E 29               234 	.word	___compound_literal.25
                            235 	.globl _swatch_2_2
   4FB2                     236 _swatch_2_2:
                            237 ;  type:
   4FB2 00                  238 	.byte	0
                            239 ;  position:
                            240 ;  x:
   4FB3 05                  241 	.byte	5
                            242 ;  y:
   4FB4 01                  243 	.byte	1
                            244 ;  fields_count:
   4FB5 02                  245 	.byte	2
                            246 ;  fields:
   4FB6 5E 2C               247 	.word	___compound_literal.26
   4FB8 5E 2F               248 	.word	___compound_literal.27
                            249 	.globl _swatch_2_3
   4FBA                     250 _swatch_2_3:
                            251 ;  type:
   4FBA 00                  252 	.byte	0
                            253 ;  position:
                            254 ;  x:
   4FBB 03                  255 	.byte	3
                            256 ;  y:
   4FBC 02                  257 	.byte	2
                            258 ;  fields_count:
   4FBD 04                  259 	.byte	4
                            260 ;  fields:
   4FBE 5E 32               261 	.word	___compound_literal.28
   4FC0 5E 35               262 	.word	___compound_literal.29
   4FC2 5E 38               263 	.word	___compound_literal.30
   4FC4 5E 3B               264 	.word	___compound_literal.31
                            265 	.globl _swatch_2_4
   4FC6                     266 _swatch_2_4:
                            267 ;  type:
   4FC6 00                  268 	.byte	0
                            269 ;  position:
                            270 ;  x:
   4FC7 02                  271 	.byte	2
                            272 ;  y:
   4FC8 08                  273 	.byte	8
                            274 ;  fields_count:
   4FC9 04                  275 	.byte	4
                            276 ;  fields:
   4FCA 5E 3E               277 	.word	___compound_literal.32
   4FCC 5E 41               278 	.word	___compound_literal.33
   4FCE 5E 44               279 	.word	___compound_literal.34
   4FD0 5E 47               280 	.word	___compound_literal.35
                            281 	.globl _swatch_2_5
   4FD2                     282 _swatch_2_5:
                            283 ;  type:
   4FD2 01                  284 	.byte	1
                            285 ;  position:
                            286 ;  x:
   4FD3 00                  287 	.byte	0
                            288 ;  y:
   4FD4 03                  289 	.byte	3
                            290 ;  fields_count:
   4FD5 01                  291 	.byte	1
                            292 ;  fields:
   4FD6 5E 4A               293 	.word	___compound_literal.36
                            294 	.globl _swatch_3_0
   4FD8                     295 _swatch_3_0:
                            296 ;  type:
   4FD8 00                  297 	.byte	0
                            298 ;  position:
                            299 ;  x:
   4FD9 09                  300 	.byte	9
                            301 ;  y:
   4FDA 0A                  302 	.byte	10
                            303 ;  fields_count:
   4FDB 02                  304 	.byte	2
                            305 ;  fields:
   4FDC 5E 4D               306 	.word	___compound_literal.37
   4FDE 5E 50               307 	.word	___compound_literal.38
                            308 	.globl _swatch_3_1
   4FE0                     309 _swatch_3_1:
                            310 ;  type:
   4FE0 00                  311 	.byte	0
                            312 ;  position:
                            313 ;  x:
   4FE1 04                  314 	.byte	4
                            315 ;  y:
   4FE2 0A                  316 	.byte	10
                            317 ;  fields_count:
   4FE3 02                  318 	.byte	2
                            319 ;  fields:
   4FE4 5E 53               320 	.word	___compound_literal.39
   4FE6 5E 56               321 	.word	___compound_literal.40
                            322 	.globl _swatch_3_2
   4FE8                     323 _swatch_3_2:
                            324 ;  type:
   4FE8 00                  325 	.byte	0
                            326 ;  position:
                            327 ;  x:
   4FE9 00                  328 	.byte	0
                            329 ;  y:
   4FEA 0A                  330 	.byte	10
                            331 ;  fields_count:
   4FEB 02                  332 	.byte	2
                            333 ;  fields:
   4FEC 5E 59               334 	.word	___compound_literal.41
   4FEE 5E 5C               335 	.word	___compound_literal.42
                            336 	.globl _swatch_4_0
   4FF0                     337 _swatch_4_0:
                            338 ;  type:
   4FF0 00                  339 	.byte	0
                            340 ;  position:
                            341 ;  x:
   4FF1 07                  342 	.byte	7
                            343 ;  y:
   4FF2 07                  344 	.byte	7
                            345 ;  fields_count:
   4FF3 02                  346 	.byte	2
                            347 ;  fields:
   4FF4 5E 5F               348 	.word	___compound_literal.43
   4FF6 5E 62               349 	.word	___compound_literal.44
                            350 	.globl _swatch_4_1
   4FF8                     351 _swatch_4_1:
                            352 ;  type:
   4FF8 00                  353 	.byte	0
                            354 ;  position:
                            355 ;  x:
   4FF9 05                  356 	.byte	5
                            357 ;  y:
   4FFA 03                  358 	.byte	3
                            359 ;  fields_count:
   4FFB 02                  360 	.byte	2
                            361 ;  fields:
   4FFC 5E 65               362 	.word	___compound_literal.45
   4FFE 5E 68               363 	.word	___compound_literal.46
                            364 	.globl _swatch_4_2
   5000                     365 _swatch_4_2:
                            366 ;  type:
   5000 02                  367 	.byte	2
                            368 ;  position:
                            369 ;  x:
   5001 05                  370 	.byte	5
                            371 ;  y:
   5002 07                  372 	.byte	7
                            373 ;  fields_count:
   5003 02                  374 	.byte	2
                            375 ;  fields:
   5004 5E 6B               376 	.word	___compound_literal.47
   5006 5E 6E               377 	.word	___compound_literal.48
                            378 	.globl _swatch_4_3
   5008                     379 _swatch_4_3:
                            380 ;  type:
   5008 00                  381 	.byte	0
                            382 ;  position:
                            383 ;  x:
   5009 05                  384 	.byte	5
                            385 ;  y:
   500A 09                  386 	.byte	9
                            387 ;  fields_count:
   500B 02                  388 	.byte	2
                            389 ;  fields:
   500C 5E 71               390 	.word	___compound_literal.49
   500E 5E 74               391 	.word	___compound_literal.50
                            392 	.globl _swatch_4_4
   5010                     393 _swatch_4_4:
                            394 ;  type:
   5010 00                  395 	.byte	0
                            396 ;  position:
                            397 ;  x:
   5011 03                  398 	.byte	3
                            399 ;  y:
   5012 0C                  400 	.byte	12
                            401 ;  fields_count:
   5013 02                  402 	.byte	2
                            403 ;  fields:
   5014 5E 77               404 	.word	___compound_literal.51
   5016 5E 7A               405 	.word	___compound_literal.52
                            406 	.globl _swatch_4_5
   5018                     407 _swatch_4_5:
                            408 ;  type:
   5018 00                  409 	.byte	0
                            410 ;  position:
                            411 ;  x:
   5019 02                  412 	.byte	2
                            413 ;  y:
   501A 01                  414 	.byte	1
                            415 ;  fields_count:
   501B 02                  416 	.byte	2
                            417 ;  fields:
   501C 5E 7D               418 	.word	___compound_literal.53
   501E 5E 80               419 	.word	___compound_literal.54
                            420 	.globl _swatch_5_0
   5020                     421 _swatch_5_0:
                            422 ;  type:
   5020 01                  423 	.byte	1
                            424 ;  position:
                            425 ;  x:
   5021 04                  426 	.byte	4
                            427 ;  y:
   5022 08                  428 	.byte	8
                            429 ;  fields_count:
   5023 01                  430 	.byte	1
                            431 ;  fields:
   5024 5E 83               432 	.word	___compound_literal.55
                            433 	.globl _swatch_5_1
   5026                     434 _swatch_5_1:
                            435 ;  type:
   5026 01                  436 	.byte	1
                            437 ;  position:
                            438 ;  x:
   5027 03                  439 	.byte	3
                            440 ;  y:
   5028 08                  441 	.byte	8
                            442 ;  fields_count:
   5029 01                  443 	.byte	1
                            444 ;  fields:
   502A 5E 86               445 	.word	___compound_literal.56
                            446 	.globl _swatch_6_0
   502C                     447 _swatch_6_0:
                            448 ;  type:
   502C 00                  449 	.byte	0
                            450 ;  position:
                            451 ;  x:
   502D 07                  452 	.byte	7
                            453 ;  y:
   502E 07                  454 	.byte	7
                            455 ;  fields_count:
   502F 02                  456 	.byte	2
                            457 ;  fields:
   5030 5E 89               458 	.word	___compound_literal.57
   5032 5E 8C               459 	.word	___compound_literal.58
                            460 	.globl _swatch_6_1
   5034                     461 _swatch_6_1:
                            462 ;  type:
   5034 00                  463 	.byte	0
                            464 ;  position:
                            465 ;  x:
   5035 06                  466 	.byte	6
                            467 ;  y:
   5036 05                  468 	.byte	5
                            469 ;  fields_count:
   5037 02                  470 	.byte	2
                            471 ;  fields:
   5038 5E 8F               472 	.word	___compound_literal.59
   503A 5E 92               473 	.word	___compound_literal.60
                            474 	.globl _swatch_6_2
   503C                     475 _swatch_6_2:
                            476 ;  type:
   503C 01                  477 	.byte	1
                            478 ;  position:
                            479 ;  x:
   503D 00                  480 	.byte	0
                            481 ;  y:
   503E 03                  482 	.byte	3
                            483 ;  fields_count:
   503F 01                  484 	.byte	1
                            485 ;  fields:
   5040 5E 95               486 	.word	___compound_literal.61
                            487 	.globl _swatch_6_3
   5042                     488 _swatch_6_3:
                            489 ;  type:
   5042 01                  490 	.byte	1
                            491 ;  position:
                            492 ;  x:
   5043 00                  493 	.byte	0
                            494 ;  y:
   5044 0A                  495 	.byte	10
                            496 ;  fields_count:
   5045 01                  497 	.byte	1
                            498 ;  fields:
   5046 5E 98               499 	.word	___compound_literal.62
                            500 	.globl _swatch_7_0
   5048                     501 _swatch_7_0:
                            502 ;  type:
   5048 01                  503 	.byte	1
                            504 ;  position:
                            505 ;  x:
   5049 08                  506 	.byte	8
                            507 ;  y:
   504A 02                  508 	.byte	2
                            509 ;  fields_count:
   504B 01                  510 	.byte	1
                            511 ;  fields:
   504C 5E 9B               512 	.word	___compound_literal.63
                            513 	.globl _swatch_7_1
   504E                     514 _swatch_7_1:
                            515 ;  type:
   504E 00                  516 	.byte	0
                            517 ;  position:
                            518 ;  x:
   504F 08                  519 	.byte	8
                            520 ;  y:
   5050 0D                  521 	.byte	13
                            522 ;  fields_count:
   5051 03                  523 	.byte	3
                            524 ;  fields:
   5052 5E 9E               525 	.word	___compound_literal.64
   5054 5E A1               526 	.word	___compound_literal.65
   5056 5E A4               527 	.word	___compound_literal.66
                            528 	.globl _swatch_7_2
   5058                     529 _swatch_7_2:
                            530 ;  type:
   5058 00                  531 	.byte	0
                            532 ;  position:
                            533 ;  x:
   5059 06                  534 	.byte	6
                            535 ;  y:
   505A 0E                  536 	.byte	14
                            537 ;  fields_count:
   505B 03                  538 	.byte	3
                            539 ;  fields:
   505C 5E A7               540 	.word	___compound_literal.67
   505E 5E AA               541 	.word	___compound_literal.68
   5060 5E AD               542 	.word	___compound_literal.69
                            543 	.globl _swatch_7_3
   5062                     544 _swatch_7_3:
                            545 ;  type:
   5062 00                  546 	.byte	0
                            547 ;  position:
                            548 ;  x:
   5063 04                  549 	.byte	4
                            550 ;  y:
   5064 00                  551 	.byte	0
                            552 ;  fields_count:
   5065 03                  553 	.byte	3
                            554 ;  fields:
   5066 5E B0               555 	.word	___compound_literal.70
   5068 5E B3               556 	.word	___compound_literal.71
   506A 5E B6               557 	.word	___compound_literal.72
                            558 	.globl _swatch_7_4
   506C                     559 _swatch_7_4:
                            560 ;  type:
   506C 02                  561 	.byte	2
                            562 ;  position:
                            563 ;  x:
   506D 02                  564 	.byte	2
                            565 ;  y:
   506E 0C                  566 	.byte	12
                            567 ;  fields_count:
   506F 02                  568 	.byte	2
                            569 ;  fields:
   5070 5E B9               570 	.word	___compound_literal.73
   5072 5E BC               571 	.word	___compound_literal.74
                            572 	.globl _swatch_8_0
   5074                     573 _swatch_8_0:
                            574 ;  type:
   5074 01                  575 	.byte	1
                            576 ;  position:
                            577 ;  x:
   5075 07                  578 	.byte	7
                            579 ;  y:
   5076 0C                  580 	.byte	12
                            581 ;  fields_count:
   5077 02                  582 	.byte	2
                            583 ;  fields:
   5078 5E BF               584 	.word	___compound_literal.75
   507A 5E C2               585 	.word	___compound_literal.76
                            586 	.globl _swatch_8_1
   507C                     587 _swatch_8_1:
                            588 ;  type:
   507C 02                  589 	.byte	2
                            590 ;  position:
                            591 ;  x:
   507D 07                  592 	.byte	7
                            593 ;  y:
   507E 0E                  594 	.byte	14
                            595 ;  fields_count:
   507F 02                  596 	.byte	2
                            597 ;  fields:
   5080 5E C5               598 	.word	___compound_literal.77
   5082 5E C8               599 	.word	___compound_literal.78
                            600 	.globl _swatch_8_2
   5084                     601 _swatch_8_2:
                            602 ;  type:
   5084 01                  603 	.byte	1
                            604 ;  position:
                            605 ;  x:
   5085 06                  606 	.byte	6
                            607 ;  y:
   5086 06                  608 	.byte	6
                            609 ;  fields_count:
   5087 01                  610 	.byte	1
                            611 ;  fields:
   5088 5E CB               612 	.word	___compound_literal.79
                            613 	.globl _swatch_8_3
   508A                     614 _swatch_8_3:
                            615 ;  type:
   508A 01                  616 	.byte	1
                            617 ;  position:
                            618 ;  x:
   508B 05                  619 	.byte	5
                            620 ;  y:
   508C 01                  621 	.byte	1
                            622 ;  fields_count:
   508D 01                  623 	.byte	1
                            624 ;  fields:
   508E 5E CE               625 	.word	___compound_literal.80
                            626 	.globl _swatch_8_4
   5090                     627 _swatch_8_4:
                            628 ;  type:
   5090 01                  629 	.byte	1
                            630 ;  position:
                            631 ;  x:
   5091 01                  632 	.byte	1
                            633 ;  y:
   5092 06                  634 	.byte	6
                            635 ;  fields_count:
   5093 02                  636 	.byte	2
                            637 ;  fields:
   5094 5E D1               638 	.word	___compound_literal.81
   5096 5E D4               639 	.word	___compound_literal.82
                            640 	.globl _swatch_9_0
   5098                     641 _swatch_9_0:
                            642 ;  type:
   5098 00                  643 	.byte	0
                            644 ;  position:
                            645 ;  x:
   5099 07                  646 	.byte	7
                            647 ;  y:
   509A 04                  648 	.byte	4
                            649 ;  fields_count:
   509B 04                  650 	.byte	4
                            651 ;  fields:
   509C 5E D7               652 	.word	___compound_literal.83
   509E 5E DA               653 	.word	___compound_literal.84
   50A0 5E DD               654 	.word	___compound_literal.85
   50A2 5E E0               655 	.word	___compound_literal.86
                            656 	.globl _swatch_9_1
   50A4                     657 _swatch_9_1:
                            658 ;  type:
   50A4 01                  659 	.byte	1
                            660 ;  position:
                            661 ;  x:
   50A5 03                  662 	.byte	3
                            663 ;  y:
   50A6 02                  664 	.byte	2
                            665 ;  fields_count:
   50A7 02                  666 	.byte	2
                            667 ;  fields:
   50A8 5E E3               668 	.word	___compound_literal.87
   50AA 5E E6               669 	.word	___compound_literal.88
                            670 	.globl _swatch_9_2
   50AC                     671 _swatch_9_2:
                            672 ;  type:
   50AC 00                  673 	.byte	0
                            674 ;  position:
                            675 ;  x:
   50AD 01                  676 	.byte	1
                            677 ;  y:
   50AE 08                  678 	.byte	8
                            679 ;  fields_count:
   50AF 03                  680 	.byte	3
                            681 ;  fields:
   50B0 5E E9               682 	.word	___compound_literal.89
   50B2 5E EC               683 	.word	___compound_literal.90
   50B4 5E EF               684 	.word	___compound_literal.91
                            685 	.globl _swatch_10_0
   50B6                     686 _swatch_10_0:
                            687 ;  type:
   50B6 02                  688 	.byte	2
                            689 ;  position:
                            690 ;  x:
   50B7 09                  691 	.byte	9
                            692 ;  y:
   50B8 0D                  693 	.byte	13
                            694 ;  fields_count:
   50B9 02                  695 	.byte	2
                            696 ;  fields:
   50BA 5E F2               697 	.word	___compound_literal.92
   50BC 5E F5               698 	.word	___compound_literal.93
                            699 	.globl _swatch_10_1
   50BE                     700 _swatch_10_1:
                            701 ;  type:
   50BE 00                  702 	.byte	0
                            703 ;  position:
                            704 ;  x:
   50BF 08                  705 	.byte	8
                            706 ;  y:
   50C0 07                  707 	.byte	7
                            708 ;  fields_count:
   50C1 02                  709 	.byte	2
                            710 ;  fields:
   50C2 5E F8               711 	.word	___compound_literal.94
   50C4 5E FB               712 	.word	___compound_literal.95
                            713 	.globl _swatch_10_2
   50C6                     714 _swatch_10_2:
                            715 ;  type:
   50C6 01                  716 	.byte	1
                            717 ;  position:
                            718 ;  x:
   50C7 02                  719 	.byte	2
                            720 ;  y:
   50C8 01                  721 	.byte	1
                            722 ;  fields_count:
   50C9 02                  723 	.byte	2
                            724 ;  fields:
   50CA 5E FE               725 	.word	___compound_literal.96
   50CC 5F 01               726 	.word	___compound_literal.97
                            727 	.globl _swatch_11_0
   50CE                     728 _swatch_11_0:
                            729 ;  type:
   50CE 01                  730 	.byte	1
                            731 ;  position:
                            732 ;  x:
   50CF 06                  733 	.byte	6
                            734 ;  y:
   50D0 0D                  735 	.byte	13
                            736 ;  fields_count:
   50D1 02                  737 	.byte	2
                            738 ;  fields:
   50D2 5F 04               739 	.word	___compound_literal.98
   50D4 5F 07               740 	.word	___compound_literal.99
                            741 	.globl _swatch_11_1
   50D6                     742 _swatch_11_1:
                            743 ;  type:
   50D6 00                  744 	.byte	0
                            745 ;  position:
                            746 ;  x:
   50D7 04                  747 	.byte	4
                            748 ;  y:
   50D8 0C                  749 	.byte	12
                            750 ;  fields_count:
   50D9 01                  751 	.byte	1
                            752 ;  fields:
   50DA 5F 0A               753 	.word	___compound_literal.100
                            754 	.globl _swatch_11_2
   50DC                     755 _swatch_11_2:
                            756 ;  type:
   50DC 00                  757 	.byte	0
                            758 ;  position:
                            759 ;  x:
   50DD 04                  760 	.byte	4
                            761 ;  y:
   50DE 0D                  762 	.byte	13
                            763 ;  fields_count:
   50DF 01                  764 	.byte	1
                            765 ;  fields:
   50E0 5F 0D               766 	.word	___compound_literal.101
                            767 	.globl _swatch_12_0
   50E2                     768 _swatch_12_0:
                            769 ;  type:
   50E2 02                  770 	.byte	2
                            771 ;  position:
                            772 ;  x:
   50E3 04                  773 	.byte	4
                            774 ;  y:
   50E4 0B                  775 	.byte	11
                            776 ;  fields_count:
   50E5 02                  777 	.byte	2
                            778 ;  fields:
   50E6 5F 10               779 	.word	___compound_literal.102
   50E8 5F 13               780 	.word	___compound_literal.103
                            781 	.globl _swatch_12_1
   50EA                     782 _swatch_12_1:
                            783 ;  type:
   50EA 00                  784 	.byte	0
                            785 ;  position:
                            786 ;  x:
   50EB 02                  787 	.byte	2
                            788 ;  y:
   50EC 0B                  789 	.byte	11
                            790 ;  fields_count:
   50ED 04                  791 	.byte	4
                            792 ;  fields:
   50EE 5F 16               793 	.word	___compound_literal.104
   50F0 5F 19               794 	.word	___compound_literal.105
   50F2 5F 1C               795 	.word	___compound_literal.106
   50F4 5F 1F               796 	.word	___compound_literal.107
                            797 	.globl _swatch_13_0
   50F6                     798 _swatch_13_0:
                            799 ;  type:
   50F6 00                  800 	.byte	0
                            801 ;  position:
                            802 ;  x:
   50F7 09                  803 	.byte	9
                            804 ;  y:
   50F8 02                  805 	.byte	2
                            806 ;  fields_count:
   50F9 04                  807 	.byte	4
                            808 ;  fields:
   50FA 5F 22               809 	.word	___compound_literal.108
   50FC 5F 25               810 	.word	___compound_literal.109
   50FE 5F 28               811 	.word	___compound_literal.110
   5100 5F 2B               812 	.word	___compound_literal.111
                            813 	.globl _swatch_13_1
   5102                     814 _swatch_13_1:
                            815 ;  type:
   5102 01                  816 	.byte	1
                            817 ;  position:
                            818 ;  x:
   5103 09                  819 	.byte	9
                            820 ;  y:
   5104 0C                  821 	.byte	12
                            822 ;  fields_count:
   5105 02                  823 	.byte	2
                            824 ;  fields:
   5106 5F 2E               825 	.word	___compound_literal.112
   5108 5F 31               826 	.word	___compound_literal.113
                            827 	.globl _swatch_13_2
   510A                     828 _swatch_13_2:
                            829 ;  type:
   510A 01                  830 	.byte	1
                            831 ;  position:
                            832 ;  x:
   510B 06                  833 	.byte	6
                            834 ;  y:
   510C 00                  835 	.byte	0
                            836 ;  fields_count:
   510D 04                  837 	.byte	4
                            838 ;  fields:
   510E 5F 34               839 	.word	___compound_literal.114
   5110 5F 37               840 	.word	___compound_literal.115
   5112 5F 3A               841 	.word	___compound_literal.116
   5114 5F 3D               842 	.word	___compound_literal.117
                            843 	.globl _swatch_13_3
   5116                     844 _swatch_13_3:
                            845 ;  type:
   5116 01                  846 	.byte	1
                            847 ;  position:
                            848 ;  x:
   5117 06                  849 	.byte	6
                            850 ;  y:
   5118 0E                  851 	.byte	14
                            852 ;  fields_count:
   5119 01                  853 	.byte	1
                            854 ;  fields:
   511A 5F 40               855 	.word	___compound_literal.118
                            856 	.globl _swatch_13_4
   511C                     857 _swatch_13_4:
                            858 ;  type:
   511C 00                  859 	.byte	0
                            860 ;  position:
                            861 ;  x:
   511D 03                  862 	.byte	3
                            863 ;  y:
   511E 0C                  864 	.byte	12
                            865 ;  fields_count:
   511F 02                  866 	.byte	2
                            867 ;  fields:
   5120 5F 43               868 	.word	___compound_literal.119
   5122 5F 46               869 	.word	___compound_literal.120
                            870 	.globl _swatch_13_5
   5124                     871 _swatch_13_5:
                            872 ;  type:
   5124 00                  873 	.byte	0
                            874 ;  position:
                            875 ;  x:
   5125 00                  876 	.byte	0
                            877 ;  y:
   5126 0C                  878 	.byte	12
                            879 ;  fields_count:
   5127 08                  880 	.byte	8
                            881 ;  fields:
   5128 5F 49               882 	.word	___compound_literal.121
   512A 5F 4C               883 	.word	___compound_literal.122
   512C 5F 4F               884 	.word	___compound_literal.123
   512E 5F 52               885 	.word	___compound_literal.124
   5130 5F 55               886 	.word	___compound_literal.125
   5132 5F 58               887 	.word	___compound_literal.126
   5134 5F 5B               888 	.word	___compound_literal.127
   5136 5F 5E               889 	.word	___compound_literal.128
                            890 	.globl _swatch_14_0
   5138                     891 _swatch_14_0:
                            892 ;  type:
   5138 01                  893 	.byte	1
                            894 ;  position:
                            895 ;  x:
   5139 07                  896 	.byte	7
                            897 ;  y:
   513A 0E                  898 	.byte	14
                            899 ;  fields_count:
   513B 04                  900 	.byte	4
                            901 ;  fields:
   513C 5F 61               902 	.word	___compound_literal.129
   513E 5F 64               903 	.word	___compound_literal.130
   5140 5F 67               904 	.word	___compound_literal.131
   5142 5F 6A               905 	.word	___compound_literal.132
                            906 	.globl _swatch_14_1
   5144                     907 _swatch_14_1:
                            908 ;  type:
   5144 01                  909 	.byte	1
                            910 ;  position:
                            911 ;  x:
   5145 04                  912 	.byte	4
                            913 ;  y:
   5146 01                  914 	.byte	1
                            915 ;  fields_count:
   5147 02                  916 	.byte	2
                            917 ;  fields:
   5148 5F 6D               918 	.word	___compound_literal.133
   514A 5F 70               919 	.word	___compound_literal.134
                            920 	.globl _swatch_14_2
   514C                     921 _swatch_14_2:
                            922 ;  type:
   514C 01                  923 	.byte	1
                            924 ;  position:
                            925 ;  x:
   514D 02                  926 	.byte	2
                            927 ;  y:
   514E 0C                  928 	.byte	12
                            929 ;  fields_count:
   514F 01                  930 	.byte	1
                            931 ;  fields:
   5150 5F 73               932 	.word	___compound_literal.135
                            933 	.globl _swatch_15_0
   5152                     934 _swatch_15_0:
                            935 ;  type:
   5152 01                  936 	.byte	1
                            937 ;  position:
                            938 ;  x:
   5153 08                  939 	.byte	8
                            940 ;  y:
   5154 08                  941 	.byte	8
                            942 ;  fields_count:
   5155 02                  943 	.byte	2
                            944 ;  fields:
   5156 5F 76               945 	.word	___compound_literal.136
   5158 5F 79               946 	.word	___compound_literal.137
                            947 	.globl _swatch_15_1
   515A                     948 _swatch_15_1:
                            949 ;  type:
   515A 00                  950 	.byte	0
                            951 ;  position:
                            952 ;  x:
   515B 05                  953 	.byte	5
                            954 ;  y:
   515C 06                  955 	.byte	6
                            956 ;  fields_count:
   515D 08                  957 	.byte	8
                            958 ;  fields:
   515E 5F 7C               959 	.word	___compound_literal.138
   5160 5F 7F               960 	.word	___compound_literal.139
   5162 5F 82               961 	.word	___compound_literal.140
   5164 5F 85               962 	.word	___compound_literal.141
   5166 5F 88               963 	.word	___compound_literal.142
   5168 5F 8B               964 	.word	___compound_literal.143
   516A 5F 8E               965 	.word	___compound_literal.144
   516C 5F 91               966 	.word	___compound_literal.145
                            967 	.globl _swatch_15_2
   516E                     968 _swatch_15_2:
                            969 ;  type:
   516E 00                  970 	.byte	0
                            971 ;  position:
                            972 ;  x:
   516F 02                  973 	.byte	2
                            974 ;  y:
   5170 07                  975 	.byte	7
                            976 ;  fields_count:
   5171 08                  977 	.byte	8
                            978 ;  fields:
   5172 5F 94               979 	.word	___compound_literal.146
   5174 5F 97               980 	.word	___compound_literal.147
   5176 5F 9A               981 	.word	___compound_literal.148
   5178 5F 9D               982 	.word	___compound_literal.149
   517A 5F A0               983 	.word	___compound_literal.150
   517C 5F A3               984 	.word	___compound_literal.151
   517E 5F A6               985 	.word	___compound_literal.152
   5180 5F A9               986 	.word	___compound_literal.153
                            987 	.globl _swatch_15_3
   5182                     988 _swatch_15_3:
                            989 ;  type:
   5182 01                  990 	.byte	1
                            991 ;  position:
                            992 ;  x:
   5183 01                  993 	.byte	1
                            994 ;  y:
   5184 02                  995 	.byte	2
                            996 ;  fields_count:
   5185 05                  997 	.byte	5
                            998 ;  fields:
   5186 5F AC               999 	.word	___compound_literal.154
   5188 5F AF              1000 	.word	___compound_literal.155
   518A 5F B2              1001 	.word	___compound_literal.156
   518C 5F B5              1002 	.word	___compound_literal.157
   518E 5F B8              1003 	.word	___compound_literal.158
                           1004 	.globl _swatch_15_4
   5190                    1005 _swatch_15_4:
                           1006 ;  type:
   5190 01                 1007 	.byte	1
                           1008 ;  position:
                           1009 ;  x:
   5191 01                 1010 	.byte	1
                           1011 ;  y:
   5192 06                 1012 	.byte	6
                           1013 ;  fields_count:
   5193 02                 1014 	.byte	2
                           1015 ;  fields:
   5194 5F BB              1016 	.word	___compound_literal.159
   5196 5F BE              1017 	.word	___compound_literal.160
                           1018 	.globl _swatch_16_0
   5198                    1019 _swatch_16_0:
                           1020 ;  type:
   5198 01                 1021 	.byte	1
                           1022 ;  position:
                           1023 ;  x:
   5199 09                 1024 	.byte	9
                           1025 ;  y:
   519A 0E                 1026 	.byte	14
                           1027 ;  fields_count:
   519B 04                 1028 	.byte	4
                           1029 ;  fields:
   519C 5F C1              1030 	.word	___compound_literal.161
   519E 5F C4              1031 	.word	___compound_literal.162
   51A0 5F C7              1032 	.word	___compound_literal.163
   51A2 5F CA              1033 	.word	___compound_literal.164
                           1034 	.globl _swatch_16_1
   51A4                    1035 _swatch_16_1:
                           1036 ;  type:
   51A4 01                 1037 	.byte	1
                           1038 ;  position:
                           1039 ;  x:
   51A5 07                 1040 	.byte	7
                           1041 ;  y:
   51A6 0C                 1042 	.byte	12
                           1043 ;  fields_count:
   51A7 02                 1044 	.byte	2
                           1045 ;  fields:
   51A8 5F CD              1046 	.word	___compound_literal.165
   51AA 5F D0              1047 	.word	___compound_literal.166
                           1048 	.globl _swatch_16_2
   51AC                    1049 _swatch_16_2:
                           1050 ;  type:
   51AC 01                 1051 	.byte	1
                           1052 ;  position:
                           1053 ;  x:
   51AD 02                 1054 	.byte	2
                           1055 ;  y:
   51AE 06                 1056 	.byte	6
                           1057 ;  fields_count:
   51AF 02                 1058 	.byte	2
                           1059 ;  fields:
   51B0 5F D3              1060 	.word	___compound_literal.167
   51B2 5F D6              1061 	.word	___compound_literal.168
                           1062 	.globl _swatch_17_0
   51B4                    1063 _swatch_17_0:
                           1064 ;  type:
   51B4 00                 1065 	.byte	0
                           1066 ;  position:
                           1067 ;  x:
   51B5 09                 1068 	.byte	9
                           1069 ;  y:
   51B6 07                 1070 	.byte	7
                           1071 ;  fields_count:
   51B7 02                 1072 	.byte	2
                           1073 ;  fields:
   51B8 5F D9              1074 	.word	___compound_literal.169
   51BA 5F DC              1075 	.word	___compound_literal.170
                           1076 	.globl _swatch_17_1
   51BC                    1077 _swatch_17_1:
                           1078 ;  type:
   51BC 00                 1079 	.byte	0
                           1080 ;  position:
                           1081 ;  x:
   51BD 07                 1082 	.byte	7
                           1083 ;  y:
   51BE 05                 1084 	.byte	5
                           1085 ;  fields_count:
   51BF 02                 1086 	.byte	2
                           1087 ;  fields:
   51C0 5F DF              1088 	.word	___compound_literal.171
   51C2 5F E2              1089 	.word	___compound_literal.172
                           1090 	.globl _swatch_17_2
   51C4                    1091 _swatch_17_2:
                           1092 ;  type:
   51C4 00                 1093 	.byte	0
                           1094 ;  position:
                           1095 ;  x:
   51C5 07                 1096 	.byte	7
                           1097 ;  y:
   51C6 08                 1098 	.byte	8
                           1099 ;  fields_count:
   51C7 02                 1100 	.byte	2
                           1101 ;  fields:
   51C8 5F E5              1102 	.word	___compound_literal.173
   51CA 5F E8              1103 	.word	___compound_literal.174
                           1104 	.globl _swatch_17_3
   51CC                    1105 _swatch_17_3:
                           1106 ;  type:
   51CC 00                 1107 	.byte	0
                           1108 ;  position:
                           1109 ;  x:
   51CD 06                 1110 	.byte	6
                           1111 ;  y:
   51CE 09                 1112 	.byte	9
                           1113 ;  fields_count:
   51CF 02                 1114 	.byte	2
                           1115 ;  fields:
   51D0 5F EB              1116 	.word	___compound_literal.175
   51D2 5F EE              1117 	.word	___compound_literal.176
                           1118 	.globl _swatch_17_4
   51D4                    1119 _swatch_17_4:
                           1120 ;  type:
   51D4 00                 1121 	.byte	0
                           1122 ;  position:
                           1123 ;  x:
   51D5 06                 1124 	.byte	6
                           1125 ;  y:
   51D6 0A                 1126 	.byte	10
                           1127 ;  fields_count:
   51D7 02                 1128 	.byte	2
                           1129 ;  fields:
   51D8 5F F1              1130 	.word	___compound_literal.177
   51DA 5F F4              1131 	.word	___compound_literal.178
                           1132 	.globl _swatch_17_5
   51DC                    1133 _swatch_17_5:
                           1134 ;  type:
   51DC 00                 1135 	.byte	0
                           1136 ;  position:
                           1137 ;  x:
   51DD 06                 1138 	.byte	6
                           1139 ;  y:
   51DE 0D                 1140 	.byte	13
                           1141 ;  fields_count:
   51DF 02                 1142 	.byte	2
                           1143 ;  fields:
   51E0 5F F7              1144 	.word	___compound_literal.179
   51E2 5F FA              1145 	.word	___compound_literal.180
                           1146 	.globl _swatch_17_6
   51E4                    1147 _swatch_17_6:
                           1148 ;  type:
   51E4 00                 1149 	.byte	0
                           1150 ;  position:
                           1151 ;  x:
   51E5 05                 1152 	.byte	5
                           1153 ;  y:
   51E6 07                 1154 	.byte	7
                           1155 ;  fields_count:
   51E7 02                 1156 	.byte	2
                           1157 ;  fields:
   51E8 5F FD              1158 	.word	___compound_literal.181
   51EA 60 00              1159 	.word	___compound_literal.182
                           1160 	.globl _swatch_17_7
   51EC                    1161 _swatch_17_7:
                           1162 ;  type:
   51EC 00                 1163 	.byte	0
                           1164 ;  position:
                           1165 ;  x:
   51ED 05                 1166 	.byte	5
                           1167 ;  y:
   51EE 0A                 1168 	.byte	10
                           1169 ;  fields_count:
   51EF 02                 1170 	.byte	2
                           1171 ;  fields:
   51F0 60 03              1172 	.word	___compound_literal.183
   51F2 60 06              1173 	.word	___compound_literal.184
                           1174 	.globl _swatch_17_8
   51F4                    1175 _swatch_17_8:
                           1176 ;  type:
   51F4 00                 1177 	.byte	0
                           1178 ;  position:
                           1179 ;  x:
   51F5 04                 1180 	.byte	4
                           1181 ;  y:
   51F6 0B                 1182 	.byte	11
                           1183 ;  fields_count:
   51F7 02                 1184 	.byte	2
                           1185 ;  fields:
   51F8 60 09              1186 	.word	___compound_literal.185
   51FA 60 0C              1187 	.word	___compound_literal.186
                           1188 	.globl _swatch_17_9
   51FC                    1189 _swatch_17_9:
                           1190 ;  type:
   51FC 00                 1191 	.byte	0
                           1192 ;  position:
                           1193 ;  x:
   51FD 03                 1194 	.byte	3
                           1195 ;  y:
   51FE 0B                 1196 	.byte	11
                           1197 ;  fields_count:
   51FF 02                 1198 	.byte	2
                           1199 ;  fields:
   5200 60 0F              1200 	.word	___compound_literal.187
   5202 60 12              1201 	.word	___compound_literal.188
                           1202 	.globl _swatch_17_10
   5204                    1203 _swatch_17_10:
                           1204 ;  type:
   5204 00                 1205 	.byte	0
                           1206 ;  position:
                           1207 ;  x:
   5205 02                 1208 	.byte	2
                           1209 ;  y:
   5206 06                 1210 	.byte	6
                           1211 ;  fields_count:
   5207 02                 1212 	.byte	2
                           1213 ;  fields:
   5208 60 15              1214 	.word	___compound_literal.189
   520A 60 18              1215 	.word	___compound_literal.190
                           1216 	.globl _swatch_17_11
   520C                    1217 _swatch_17_11:
                           1218 ;  type:
   520C 00                 1219 	.byte	0
                           1220 ;  position:
                           1221 ;  x:
   520D 02                 1222 	.byte	2
                           1223 ;  y:
   520E 0D                 1224 	.byte	13
                           1225 ;  fields_count:
   520F 02                 1226 	.byte	2
                           1227 ;  fields:
   5210 60 1B              1228 	.word	___compound_literal.191
   5212 60 1E              1229 	.word	___compound_literal.192
                           1230 	.globl _swatch_17_12
   5214                    1231 _swatch_17_12:
                           1232 ;  type:
   5214 01                 1233 	.byte	1
                           1234 ;  position:
                           1235 ;  x:
   5215 02                 1236 	.byte	2
                           1237 ;  y:
   5216 0E                 1238 	.byte	14
                           1239 ;  fields_count:
   5217 01                 1240 	.byte	1
                           1241 ;  fields:
   5218 60 21              1242 	.word	___compound_literal.193
                           1243 	.globl _level0
   521A                    1244 LC0:
   521A 20 20 20 20 20 20  1245 	.ascii "      v        vbv  bbb   v   bbb   l   bbb   r "
        76 20 20 20 20 20
        20 20 20 76 62 76
        20 20 62 62 62 20
        20 20 76 20 20 20
        62 62 62 20 20 20
        6C 20 20 20 62 62
        62 20 20 20 72 20
   524A 20 20 20 62 20 20  1246 	.ascii "   b    h    b    h    b    b   bbb   l   bvb   "
        20 20 68 20 20 20
        20 62 20 20 20 20
        68 20 20 20 20 62
        20 20 20 20 62 20
        20 20 62 62 62 20
        20 20 6C 20 20 20
        62 76 62 20 20 20
   527A 72 20 20 20 62 62  1247 	.ascii "r   bbb  bbb       beb       bbb                "
        62 20 20 62 62 62
        20 20 20 20 20 20
        20 62 65 62 20 20
        20 20 20 20 20 62
        62 62 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
   52AA 20 20 20 20 20 20  1248 	.ascii "      \0"
        00
   52B1                    1249 _level0:
                           1250 ;  geometry:
   52B1 52 1A              1251 	.word	LC0
                           1252 ;  start:
                           1253 ;  x:
   52B3 01                 1254 	.byte	1
                           1255 ;  y:
   52B4 03                 1256 	.byte	3
                           1257 ;  swatches_count:
   52B5 07                 1258 	.byte	7
                           1259 ;  swatches:
   52B6 4F 46              1260 	.word	_swatch_0_0
   52B8 4F 4E              1261 	.word	_swatch_0_1
   52BA 4F 56              1262 	.word	_swatch_0_2
   52BC 4F 5E              1263 	.word	_swatch_0_3
   52BE 4F 66              1264 	.word	_swatch_0_4
   52C0 4F 6E              1265 	.word	_swatch_0_5
   52C2 4F 76              1266 	.word	_swatch_0_6
                           1267 	.globl _level1
   52C4                    1268 LC1:
   52C4 62 62 62 62 62 62  1269 	.ascii "bbbbbbbbbbbsbbbbbbbbbbbbbbbbbb  b     b   b     "
        62 62 62 62 62 73
        62 62 62 62 62 62
        62 62 62 62 62 62
        62 62 62 62 62 62
        20 20 62 20 20 20
        20 20 62 20 20 20
        62 20 20 20 20 20
   52F4 62 20 20 20 62 20  1270 	.ascii "b   b     b   br    b   bb   rb   lb   bb    b  "
        20 20 20 20 62 20
        20 20 62 72 20 20
        20 20 62 20 20 20
        62 62 20 20 20 72
        62 20 20 20 6C 62
        20 20 20 62 62 20
        20 20 20 62 20 20
   5324 20 62 6C 20 20 20  1271 	.ascii " bl    b   b  bbbb   b  hbbh  hbb       heb     "
        20 62 20 20 20 62
        20 20 62 62 62 62
        20 20 20 62 20 20
        68 62 62 68 20 20
        68 62 62 20 20 20
        20 20 20 20 68 65
        62 20 20 20 20 20
   5354 20 20 62 62 62 20  1272 	.ascii "  bbb \0"
        00
   535B                    1273 _level1:
                           1274 ;  geometry:
   535B 52 C4              1275 	.word	LC1
                           1276 ;  start:
                           1277 ;  x:
   535D 08                 1278 	.byte	8
                           1279 ;  y:
   535E 01                 1280 	.byte	1
                           1281 ;  swatches_count:
   535F 05                 1282 	.byte	5
                           1283 ;  swatches:
   5360 4F 7E              1284 	.word	_swatch_1_0
   5362 4F 84              1285 	.word	_swatch_1_1
   5364 4F 8A              1286 	.word	_swatch_1_2
   5366 4F 90              1287 	.word	_swatch_1_3
   5368 4F 96              1288 	.word	_swatch_1_4
                           1289 	.globl _level2
   536A                    1290 LC2:
   536A 62 62 62 62 62 62  1291 	.ascii "bbbbbbbb  l  bbsbb  r  sbbbs  h  bbbbb      bbb "
        62 62 20 20 6C 20
        20 62 62 73 62 62
        20 20 72 20 20 73
        62 62 62 73 20 20
        68 20 20 62 62 62
        62 62 20 20 20 20
        20 20 62 62 62 20
   539A 20 20 20 20 20 20  1292 	.ascii "      lb         b         bbbs   sbbl         r"
        6C 62 20 20 20 20
        20 20 20 20 20 62
        20 20 20 20 20 20
        20 20 20 62 62 62
        73 20 20 20 73 62
        62 6C 20 20 20 20
        20 20 20 20 20 72
   53CA 20 20 20 20 62 62  1293 	.ascii "    bb   b    bbb  b    bebbbl    bbb  r        "
        20 20 20 62 20 20
        20 20 62 62 62 20
        20 62 20 20 20 20
        62 65 62 62 62 6C
        20 20 20 20 62 62
        62 20 20 72 20 20
        20 20 20 20 20 20
   53FA 20 62 20 20 20 20  1294 	.ascii " b    \0"
        00
   5401                    1295 _level2:
                           1296 ;  geometry:
   5401 53 6A              1297 	.word	LC2
                           1298 ;  start:
                           1299 ;  x:
   5403 05                 1300 	.byte	5
                           1301 ;  y:
   5404 02                 1302 	.byte	2
                           1303 ;  swatches_count:
   5405 06                 1304 	.byte	6
                           1305 ;  swatches:
   5406 4F 9E              1306 	.word	_swatch_2_0
   5408 4F A6              1307 	.word	_swatch_2_1
   540A 4F B2              1308 	.word	_swatch_2_2
   540C 4F BA              1309 	.word	_swatch_2_3
   540E 4F C6              1310 	.word	_swatch_2_4
   5410 4F D2              1311 	.word	_swatch_2_5
                           1312 	.globl _level3
   5412                    1313 LC3:
   5412 20 20 62 62 62 20  1314 	.ascii "  bbb     bbbeb    bkbbbb    bq        bb       "
        20 20 20 20 62 62
        62 65 62 20 20 20
        20 62 6B 62 62 62
        62 20 20 20 20 62
        71 20 20 20 20 20
        20 20 20 62 62 20
        20 20 20 20 20 20
   5442 20 62 62 62 62 62  1315 	.ascii " bbbbbb  bbbbbbbb  bbbb   l    bb   r    bb   b "
        62 20 20 62 62 62
        62 62 62 62 62 20
        20 62 62 62 62 20
        20 20 6C 20 20 20
        20 62 62 20 20 20
        72 20 20 20 20 62
        62 20 20 20 62 20
   5472 20 20 20 62 73 20  1316 	.ascii "   bs   s    sb   b    bb   b    bb   bbbbbb    "
        20 20 73 20 20 20
        20 73 62 20 20 20
        62 20 20 20 20 62
        62 20 20 20 62 20
        20 20 20 62 62 20
        20 20 62 62 62 62
        62 62 20 20 20 20
   54A2 62 62 62 62 62 62  1317 	.ascii "bbbbbb\0"
        00
   54A9                    1318 _level3:
                           1319 ;  geometry:
   54A9 54 12              1320 	.word	LC3
                           1321 ;  start:
                           1322 ;  x:
   54AB 09                 1323 	.byte	9
                           1324 ;  y:
   54AC 01                 1325 	.byte	1
                           1326 ;  swatches_count:
   54AD 03                 1327 	.byte	3
                           1328 ;  swatches:
   54AE 4F D8              1329 	.word	_swatch_3_0
   54B0 4F E0              1330 	.word	_swatch_3_1
   54B2 4F E8              1331 	.word	_swatch_3_2
                           1332 	.globl _level4
   54B4                    1333 LC4:
   54B4 20 20 62 62 20 20  1334 	.ascii "  bb        sb         bbbbbb    bbsbbb     bbbb"
        20 20 20 20 20 20
        73 62 20 20 20 20
        20 20 20 20 20 62
        62 62 62 62 62 20
        20 20 20 62 62 73
        62 62 62 20 20 20
        20 20 62 62 62 62
   54E4 62 20 20 20 20 20  1335 	.ascii "b         k         q    bbvbsb    bbbbbb    bbs"
        20 20 20 20 6B 20
        20 20 20 20 20 20
        20 20 71 20 20 20
        20 62 62 76 62 73
        62 20 20 20 20 62
        62 62 62 62 62 20
        20 20 20 62 62 73
   5514 62 62 62 20 20 20  1336 	.ascii "bbb    l    l    r    r bbbs   bbbbebb   bbbbbbb"
        20 6C 20 20 20 20
        6C 20 20 20 20 72
        20 20 20 20 72 20
        62 62 62 73 20 20
        20 62 62 62 62 65
        62 62 20 20 20 62
        62 62 62 62 62 62
   5544 20 20 20 62 62 62  1337 	.ascii "   bbb\0"
        00
   554B                    1338 _level4:
                           1339 ;  geometry:
   554B 54 B4              1340 	.word	LC4
                           1341 ;  start:
                           1342 ;  x:
   554D 07                 1343 	.byte	7
                           1344 ;  y:
   554E 08                 1345 	.byte	8
                           1346 ;  swatches_count:
   554F 06                 1347 	.byte	6
                           1348 ;  swatches:
   5550 4F F0              1349 	.word	_swatch_4_0
   5552 4F F8              1350 	.word	_swatch_4_1
   5554 50 00              1351 	.word	_swatch_4_2
   5556 50 08              1352 	.word	_swatch_4_3
   5558 50 10              1353 	.word	_swatch_4_4
   555A 50 18              1354 	.word	_swatch_4_5
                           1355 	.globl _level5
   555C                    1356 LC5:
   555C 20 20 20 20 20 62  1357 	.ascii "     bbb      bbbb    bbbbb   rbb  bb   bbb   bb"
        62 62 20 20 20 20
        20 20 62 62 62 62
        20 20 20 20 62 62
        62 62 62 20 20 20
        72 62 62 20 20 62
        62 20 20 20 62 62
        62 20 20 20 62 62
   558C 20 20 62 62 6C 20  1358 	.ascii "  bbl   bb  b      b  b      bb bbbhhbbbbbbbbbb "
        20 20 62 62 20 20
        62 20 20 20 20 20
        20 62 20 20 62 20
        20 20 20 20 20 62
        62 20 62 62 62 68
        68 62 62 62 62 62
        62 62 62 62 62 20
   55BC 20 62 62 62 20 20  1359 	.ascii " bbb    b         b        bbb       beb       b"
        20 20 62 20 20 20
        20 20 20 20 20 20
        62 20 20 20 20 20
        20 20 20 62 62 62
        20 20 20 20 20 20
        20 62 65 62 20 20
        20 20 20 20 20 62
   55EC 62 62 20 20 20 20  1360 	.ascii "bb    \0"
        00
   55F3                    1361 _level5:
                           1362 ;  geometry:
   55F3 55 5C              1363 	.word	LC5
                           1364 ;  start:
                           1365 ;  x:
   55F5 06                 1366 	.byte	6
                           1367 ;  y:
   55F6 01                 1368 	.byte	1
                           1369 ;  swatches_count:
   55F7 02                 1370 	.byte	2
                           1371 ;  swatches:
   55F8 50 20              1372 	.word	_swatch_5_0
   55FA 50 26              1373 	.word	_swatch_5_1
                           1374 	.globl _level6
   55FC                    1375 LC6:
   55FC 20 20 20 20 20 20  1376 	.ascii "               bbb   bbbbbbb  hbl  bbb        bb"
        20 20 20 20 20 20
        20 20 20 62 62 62
        20 20 20 62 62 62
        62 62 62 62 20 20
        68 62 6C 20 20 62
        62 62 20 20 20 20
        20 20 20 20 62 62
   562C 62 20 20 20 20 20  1377 	.ascii "b       sbb        bbb       sbb      bbb       "
        20 20 73 62 62 20
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 20 73
        62 62 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
   565C 62 62 62 20 68 62  1378 	.ascii "bbb hbq  bbb   bbbbbbb       bbbbb      lbeb    "
        71 20 20 62 62 62
        20 20 20 62 62 62
        62 62 62 62 20 20
        20 20 20 20 20 62
        62 62 62 62 20 20
        20 20 20 20 6C 62
        65 62 20 20 20 20
   568C 20 20 20 62 62 62  1379 	.ascii "   bbb\0"
        00
   5693                    1380 _level6:
                           1381 ;  geometry:
   5693 55 FC              1382 	.word	LC6
                           1383 ;  start:
                           1384 ;  x:
   5695 06                 1385 	.byte	6
                           1386 ;  y:
   5696 02                 1387 	.byte	2
                           1388 ;  swatches_count:
   5697 04                 1389 	.byte	4
                           1390 ;  swatches:
   5698 50 2C              1391 	.word	_swatch_6_0
   569A 50 34              1392 	.word	_swatch_6_1
   569C 50 3C              1393 	.word	_swatch_6_2
   569E 50 42              1394 	.word	_swatch_6_3
                           1395 	.globl _level7
   56A0                    1396 LC7:
   56A0 20 20 20 62 73 62  1397 	.ascii "   bsbr      l  bbbb   r  bbhbbbbb  bbbbbbbbbbl "
        72 20 20 20 20 20
        20 6C 20 20 62 62
        62 62 20 20 20 72
        20 20 62 62 68 62
        62 62 62 62 20 20
        62 62 62 62 62 62
        62 62 62 62 6C 20
   56D0 20 20 62 62 62 62  1398 	.ascii "  bbbb      bfff      bffffbbb  lffffbeb   ffffb"
        20 20 20 20 20 20
        62 66 66 66 20 20
        20 20 20 20 62 66
        66 66 66 62 62 62
        20 20 6C 66 66 66
        66 62 65 62 20 20
        20 66 66 66 66 62
   5700 62 62 20 20 20 66  1399 	.ascii "bb   fff   k   bbb   q   bvb  bbbb bbb  bbsb   k"
        66 66 20 20 20 6B
        20 20 20 62 62 62
        20 20 20 71 20 20
        20 62 76 62 20 20
        62 62 62 62 20 62
        62 62 20 20 62 62
        73 62 20 20 20 6B
   5730 62 62 73 62 62 62  1400 	.ascii "bbsbbb\0"
        00
   5737                    1401 _level7:
                           1402 ;  geometry:
   5737 56 A0              1403 	.word	LC7
                           1404 ;  start:
                           1405 ;  x:
   5739 02                 1406 	.byte	2
                           1407 ;  y:
   573A 04                 1408 	.byte	4
                           1409 ;  swatches_count:
   573B 05                 1410 	.byte	5
                           1411 ;  swatches:
   573C 50 48              1412 	.word	_swatch_7_0
   573E 50 4E              1413 	.word	_swatch_7_1
   5740 50 58              1414 	.word	_swatch_7_2
   5742 50 62              1415 	.word	_swatch_7_3
   5744 50 6C              1416 	.word	_swatch_7_4
                           1417 	.globl _level8
   5746                    1418 LC8:
   5746 20 20 20 20 20 20  1419 	.ascii "            bbbh      bbbbb     bb  l      b  rr"
        20 20 20 20 20 20
        62 62 62 68 20 20
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 62 62 20 20
        6C 20 20 20 20 20
        20 62 20 20 72 72
   5776 20 20 20 20 20 62  1420 	.ascii "     bbbbb   hb  bhb   bb   bb   lb    b    l   "
        62 62 62 62 20 20
        20 68 62 20 20 62
        68 62 20 20 20 62
        62 20 20 20 62 62
        20 20 20 6C 62 20
        20 20 20 62 20 20
        20 20 6C 20 20 20
   57A6 20 62 20 20 20 20  1421 	.ascii " b    r    b   bbb  bbb  beb  bhb  bbbbbbbb     "
        72 20 20 20 20 62
        20 20 20 62 62 62
        20 20 62 62 62 20
        20 62 65 62 20 20
        62 68 62 20 20 62
        62 62 62 62 62 62
        62 20 20 20 20 20
   57D6 20 20 62 76 62 20  1422 	.ascii "  bvb \0"
        00
   57DD                    1423 _level8:
                           1424 ;  geometry:
   57DD 57 46              1425 	.word	LC8
                           1426 ;  start:
                           1427 ;  x:
   57DF 06                 1428 	.byte	6
                           1429 ;  y:
   57E0 02                 1430 	.byte	2
                           1431 ;  swatches_count:
   57E1 05                 1432 	.byte	5
                           1433 ;  swatches:
   57E2 50 74              1434 	.word	_swatch_8_0
   57E4 50 7C              1435 	.word	_swatch_8_1
   57E6 50 84              1436 	.word	_swatch_8_2
   57E8 50 8A              1437 	.word	_swatch_8_3
   57EA 50 90              1438 	.word	_swatch_8_4
                           1439 	.globl _level9
   57EC                    1440 LC9:
   57EC 20 62 62 62 20 20  1441 	.ascii " bbb       bbbb      kkhb  bbb   b  bbbb   k  bs"
        20 20 20 20 20 62
        62 62 62 20 20 20
        20 20 20 6B 6B 68
        62 20 20 62 62 62
        20 20 20 62 20 20
        62 62 62 62 20 20
        20 6B 20 20 62 73
   581C 62 20 20 20 20 71  1442 	.ascii "b    q  b    bbbbbb    bbbbbl    s   l     b   r"
        20 20 62 20 20 20
        20 62 62 62 62 62
        62 20 20 20 20 62
        62 62 62 62 6C 20
        20 20 20 73 20 20
        20 6C 20 20 20 20
        20 62 20 20 20 72
   584C 20 20 20 20 20 62  1443 	.ascii "     b   bbb  bbb  beb  bbb  bbb  bbb   ll      "
        20 20 20 62 62 62
        20 20 62 62 62 20
        20 62 65 62 20 20
        62 62 62 20 20 62
        62 62 20 20 62 62
        62 20 20 20 6C 6C
        20 20 20 20 20 20
   587C 20 20 20 20 20 20  1444 	.ascii "      \0"
        00
   5883                    1445 _level9:
                           1446 ;  geometry:
   5883 57 EC              1447 	.word	LC9
                           1448 ;  start:
                           1449 ;  x:
   5885 02                 1450 	.byte	2
                           1451 ;  y:
   5886 01                 1452 	.byte	1
                           1453 ;  swatches_count:
   5887 03                 1454 	.byte	3
                           1455 ;  swatches:
   5888 50 98              1456 	.word	_swatch_9_0
   588A 50 A4              1457 	.word	_swatch_9_1
   588C 50 AC              1458 	.word	_swatch_9_2
                           1459 	.globl _level10
   588E                    1460 LC10:
   588E 20 20 20 20 62 62  1461 	.ascii "    bbb     hbbbb       bbk        lq         bb"
        62 20 20 20 20 20
        68 62 62 62 62 20
        20 20 20 20 20 20
        62 62 6B 20 20 20
        20 20 20 20 20 6C
        71 20 20 20 20 20
        20 20 20 20 62 62
   58BE 20 20 20 20 20 20  1462 	.ascii "        bbbb bbbbbbbbb beb  bbsb bbb   bbb  l   "
        20 20 62 62 62 62
        20 62 62 62 62 62
        62 62 62 62 20 62
        65 62 20 20 62 62
        73 62 20 62 62 62
        20 20 20 62 62 62
        20 20 6C 20 20 20
   58EE 20 62 62 20 20 20  1463 	.ascii " bb     bbbbb      bb         b         bbbv    "
        20 20 62 62 62 62
        62 20 20 20 20 20
        20 62 62 20 20 20
        20 20 20 20 20 20
        62 20 20 20 20 20
        20 20 20 20 62 62
        62 76 20 20 20 20
   591E 20 20 20 20 20 20  1464 	.ascii "      \0"
        00
   5925                    1465 _level10:
                           1466 ;  geometry:
   5925 58 8E              1467 	.word	LC10
                           1468 ;  start:
                           1469 ;  x:
   5927 04                 1470 	.byte	4
                           1471 ;  y:
   5928 0A                 1472 	.byte	10
                           1473 ;  swatches_count:
   5929 03                 1474 	.byte	3
                           1475 ;  swatches:
   592A 50 B6              1476 	.word	_swatch_10_0
   592C 50 BE              1477 	.word	_swatch_10_1
   592E 50 C6              1478 	.word	_swatch_10_2
                           1479 	.globl _level11
   5930                    1480 LC11:
   5930 20 20 62 62 62 20  1481 	.ascii "  bbb  bbb  beb  bbb  bbb  bbb  ff    b   ff    "
        20 62 62 62 20 20
        62 65 62 20 20 62
        62 62 20 20 62 62
        62 20 20 62 62 62
        20 20 66 66 20 20
        20 20 62 20 20 20
        66 66 20 20 20 20
   5960 62 20 20 66 66 66  1482 	.ascii "b  ffff   b qffff   b bffff  bbbbffff  bbbkfffb "
        66 20 20 20 62 20
        71 66 66 66 66 20
        20 20 62 20 62 66
        66 66 66 20 20 62
        62 62 62 66 66 66
        66 20 20 62 62 62
        6B 66 66 66 62 20
   5990 20 20 62 62 20 66  1483 	.ascii "  bb ff     bb ff      b bbbsbb  b bbbsbhbbb bbb"
        66 20 20 20 20 20
        62 62 20 66 66 20
        20 20 20 20 20 62
        20 62 62 62 73 62
        62 20 20 62 20 62
        62 62 73 62 68 62
        62 62 20 62 62 62
   59C0 20 20 62 62 62 62  1484 	.ascii "  bbbb\0"
        00
   59C7                    1485 _level11:
                           1486 ;  geometry:
   59C7 59 30              1487 	.word	LC11
                           1488 ;  start:
                           1489 ;  x:
   59C9 08                 1490 	.byte	8
                           1491 ;  y:
   59CA 01                 1492 	.byte	1
                           1493 ;  swatches_count:
   59CB 03                 1494 	.byte	3
                           1495 ;  swatches:
   59CC 50 CE              1496 	.word	_swatch_11_0
   59CE 50 D6              1497 	.word	_swatch_11_1
   59D0 50 DC              1498 	.word	_swatch_11_2
                           1499 	.globl _level12
   59D2                    1500 LC12:
   59D2 20 20 20 20 66 66  1501 	.ascii "    ffff    bbbfffbbbbbeb  bbb  bbb    k  b     "
        66 66 20 20 20 20
        62 62 62 66 66 66
        62 62 62 62 62 65
        62 20 20 62 62 62
        20 20 62 62 62 20
        20 20 20 6B 20 20
        62 20 20 20 20 20
   5A02 20 71 62 62 62 20  1502 	.ascii " qbbb    bbbbbb    bbbb     bbb k    bbb  q   bb"
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 62 62 62 20
        20 20 20 20 62 62
        62 20 6B 20 20 20
        20 62 62 62 20 20
        71 20 20 20 62 62
   5A32 62 20 20 20 62 62  1503 	.ascii "b   bbbbbb    bbsbv     bbbb        bb        bb"
        62 62 62 62 20 20
        20 20 62 62 73 62
        76 20 20 20 20 20
        62 62 62 62 20 20
        20 20 20 20 20 20
        62 62 20 20 20 20
        20 20 20 20 62 62
   5A62 20 20 20 20 20 20  1504 	.ascii "      \0"
        00
   5A69                    1505 _level12:
                           1506 ;  geometry:
   5A69 59 D2              1507 	.word	LC12
                           1508 ;  start:
                           1509 ;  x:
   5A6B 07                 1510 	.byte	7
                           1511 ;  y:
   5A6C 02                 1512 	.byte	2
                           1513 ;  swatches_count:
   5A6D 02                 1514 	.byte	2
                           1515 ;  swatches:
   5A6E 50 E2              1516 	.word	_swatch_12_0
   5A70 50 EA              1517 	.word	_swatch_12_1
                           1518 	.globl _level13
   5A72                    1519 LC13:
   5A72 62 62 62 20 20 20  1520 	.ascii "bbb   h   beb   l   bbb   r  sll    b  k r    b "
        68 20 20 20 62 65
        62 20 20 20 6C 20
        20 20 62 62 62 20
        20 20 72 20 20 73
        6C 6C 20 20 20 20
        62 20 20 6B 20 72
        20 20 20 20 62 20
   5AA2 20 71 20 62 62 72  1521 	.ascii " q bbrrbbbbb  bbbbbb       bbb       bbb  bbbbbb"
        72 62 62 62 62 62
        20 20 62 62 62 62
        62 62 20 20 20 20
        20 20 20 62 62 62
        20 20 20 20 20 20
        20 62 62 62 20 20
        62 62 62 62 62 62
   5AD2 62 62 62 62 6B 20  1522 	.ascii "bbbbk  k  b  lq  q  b  rs  s  l  h      r       "
        20 6B 20 20 62 20
        20 6C 71 20 20 71
        20 20 62 20 20 72
        73 20 20 73 20 20
        6C 20 20 68 20 20
        20 20 20 20 72 20
        20 20 20 20 20 20
   5B02 20 20 68 20 20 20  1523 	.ascii "  h   \0"
        00
   5B09                    1524 _level13:
                           1525 ;  geometry:
   5B09 5A 72              1526 	.word	LC13
                           1527 ;  start:
                           1528 ;  x:
   5B0B 06                 1529 	.byte	6
                           1530 ;  y:
   5B0C 07                 1531 	.byte	7
                           1532 ;  swatches_count:
   5B0D 06                 1533 	.byte	6
                           1534 ;  swatches:
   5B0E 50 F6              1535 	.word	_swatch_13_0
   5B10 51 02              1536 	.word	_swatch_13_1
   5B12 51 0A              1537 	.word	_swatch_13_2
   5B14 51 16              1538 	.word	_swatch_13_3
   5B16 51 1C              1539 	.word	_swatch_13_4
   5B18 51 24              1540 	.word	_swatch_13_5
                           1541 	.globl _level14
   5B1A                    1542 LC14:
   5B1A 20 62 66 66 20 20  1543 	.ascii " bff      ffffh     bfffbb    ffbff  bbbfff    b"
        20 20 20 20 66 66
        66 66 68 20 20 20
        20 20 62 66 66 66
        62 62 20 20 20 20
        66 66 62 66 66 20
        20 62 62 62 66 66
        66 20 20 20 20 62
   5B4A 65 62 66 66 62 20  1544 	.ascii "ebffb    bbb ff     bb ffbfff  bffbbffb  ffffl  "
        20 20 20 62 62 62
        20 66 66 20 20 20
        20 20 62 62 20 66
        66 62 66 66 66 20
        20 62 66 66 62 62
        66 66 62 20 20 66
        66 66 66 6C 20 20
   5B7A 62 20 20 66 66 66  1545 	.ascii "b  fff    k  bff    q  bbbhr  bffb  bb  bbbb  lb"
        20 20 20 20 6B 20
        20 62 66 66 20 20
        20 20 71 20 20 62
        62 62 68 72 20 20
        62 66 66 62 20 20
        62 62 20 20 62 62
        62 62 20 20 6C 62
   5BAA 62 62 62 68 20 20  1546 	.ascii "bbbh  \0"
        00
   5BB1                    1547 _level14:
                           1548 ;  geometry:
   5BB1 5B 1A              1549 	.word	LC14
                           1550 ;  start:
                           1551 ;  x:
   5BB3 05                 1552 	.byte	5
                           1553 ;  y:
   5BB4 02                 1554 	.byte	2
                           1555 ;  swatches_count:
   5BB5 03                 1556 	.byte	3
                           1557 ;  swatches:
   5BB6 51 38              1558 	.word	_swatch_14_0
   5BB8 51 44              1559 	.word	_swatch_14_1
   5BBA 51 4C              1560 	.word	_swatch_14_2
                           1561 	.globl _level15
   5BBC                    1562 LC15:
   5BBC 71 71 71 20 20 20  1563 	.ascii "qqq       bbb  fbbb bhbbffbbb bbb  fbbb   l    k"
        20 20 20 20 62 62
        62 20 20 66 62 62
        62 20 62 68 62 62
        66 66 62 62 62 20
        62 62 62 20 20 66
        62 62 62 20 20 20
        6C 20 20 20 20 6B
   5BEC 20 20 20 20 72 20  1564 	.ascii "    r    q   hbbbsbb    sbbbbb    bbbbbbh   k   "
        20 20 20 71 20 20
        20 68 62 62 62 73
        62 62 20 20 20 20
        73 62 62 62 62 62
        20 20 20 20 62 62
        62 62 62 62 68 20
        20 20 6B 20 20 20
   5C1C 20 6C 20 20 20 20  1565 	.ascii " l    q    r   bbbf  bbb bbbffbbeb bbbf  bbb    "
        71 20 20 20 20 72
        20 20 20 62 62 62
        66 20 20 62 62 62
        20 62 62 62 66 66
        62 62 65 62 20 62
        62 62 66 20 20 62
        62 62 20 20 20 20
   5C4C 20 20 20 6C 6C 6C  1566 	.ascii "   lll\0"
        00
   5C53                    1567 _level15:
                           1568 ;  geometry:
   5C53 5B BC              1569 	.word	LC15
                           1570 ;  start:
                           1571 ;  x:
   5C55 02                 1572 	.byte	2
                           1573 ;  y:
   5C56 0C                 1574 	.byte	12
                           1575 ;  swatches_count:
   5C57 05                 1576 	.byte	5
                           1577 ;  swatches:
   5C58 51 52              1578 	.word	_swatch_15_0
   5C5A 51 5A              1579 	.word	_swatch_15_1
   5C5C 51 6E              1580 	.word	_swatch_15_2
   5C5E 51 82              1581 	.word	_swatch_15_3
   5C60 51 90              1582 	.word	_swatch_15_4
                           1583 	.globl _level16
   5C62                    1584 LC16:
   5C62 20 20 20 20 20 20  1585 	.ascii "           bb        bb  bbb   ll  bebb  rr  bbb"
        20 20 20 20 20 62
        62 20 20 20 20 20
        20 20 20 62 62 20
        20 62 62 62 20 20
        20 6C 6C 20 20 62
        65 62 62 20 20 72
        72 20 20 62 62 62
   5C92 62 20 20 62 62 62  1586 	.ascii "b  bbb   lk  bhb   rq  bbb   bb  b    bbb  b   b"
        20 20 20 6C 6B 20
        20 62 68 62 20 20
        20 72 71 20 20 62
        62 62 20 20 20 62
        62 20 20 62 20 20
        20 20 62 62 62 20
        20 62 20 20 20 62
   5CC2 62 20 20 20 20 62  1587 	.ascii "b    bbbbbb    bbbbbbb        bhb        bbb    "
        62 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 62 20 20
        20 20 20 20 20 20
        62 68 62 20 20 20
        20 20 20 20 20 62
        62 62 20 20 20 20
   5CF2 20 20 20 62 62 68  1588 	.ascii "   bbh\0"
        00
   5CF9                    1589 _level16:
                           1590 ;  geometry:
   5CF9 5C 62              1591 	.word	LC16
                           1592 ;  start:
                           1593 ;  x:
   5CFB 03                 1594 	.byte	3
                           1595 ;  y:
   5CFC 0B                 1596 	.byte	11
                           1597 ;  swatches_count:
   5CFD 03                 1598 	.byte	3
                           1599 ;  swatches:
   5CFE 51 98              1600 	.word	_swatch_16_0
   5D00 51 A4              1601 	.word	_swatch_16_1
   5D02 51 AC              1602 	.word	_swatch_16_2
                           1603 	.globl _level17
   5D04                    1604 LC17:
   5D04 62 62 62 62 20 20  1605 	.ascii "bbbb  bb  bbeb  bb  bbbb  bb    k   k     q   q "
        62 62 20 20 62 62
        65 62 20 20 62 62
        20 20 62 62 62 62
        20 20 62 62 20 20
        20 20 6B 20 20 20
        6B 20 20 20 20 20
        71 20 20 20 71 20
   5D34 20 20 20 62 62 62  1606 	.ascii "   bbbbbbsbb bsbbbbbbb bbbbsbbbs   bbbbsbb   bbb"
        62 62 62 73 62 62
        20 62 73 62 62 62
        62 62 62 62 20 62
        62 62 62 73 62 62
        62 73 20 20 20 62
        62 62 62 73 62 62
        20 20 20 62 62 62
   5D64 73 62 62 62 20 20  1607 	.ascii "sbbb  bbbssbbb bbssbbbl bbbbbbbb  bbsbbbsb  bbhb"
        62 62 62 73 73 62
        62 62 20 62 62 73
        73 62 62 62 6C 20
        62 62 62 62 62 62
        62 62 20 20 62 62
        73 62 62 62 73 62
        20 20 62 62 68 62
   5D94 20 20 20 20 20 20  1608 	.ascii "      \0"
        00
   5D9B                    1609 _level17:
                           1610 ;  geometry:
   5D9B 5D 04              1611 	.word	LC17
                           1612 ;  start:
                           1613 ;  x:
   5D9D 06                 1614 	.byte	6
                           1615 ;  y:
   5D9E 01                 1616 	.byte	1
                           1617 ;  swatches_count:
   5D9F 0D                 1618 	.byte	13
                           1619 ;  swatches:
   5DA0 51 B4              1620 	.word	_swatch_17_0
   5DA2 51 BC              1621 	.word	_swatch_17_1
   5DA4 51 C4              1622 	.word	_swatch_17_2
   5DA6 51 CC              1623 	.word	_swatch_17_3
   5DA8 51 D4              1624 	.word	_swatch_17_4
   5DAA 51 DC              1625 	.word	_swatch_17_5
   5DAC 51 E4              1626 	.word	_swatch_17_6
   5DAE 51 EC              1627 	.word	_swatch_17_7
   5DB0 51 F4              1628 	.word	_swatch_17_8
   5DB2 51 FC              1629 	.word	_swatch_17_9
   5DB4 52 04              1630 	.word	_swatch_17_10
   5DB6 52 0C              1631 	.word	_swatch_17_11
   5DB8 52 14              1632 	.word	_swatch_17_12
                           1633 	.globl _levels
   5DBA                    1634 _levels:
   5DBA 52 B1              1635 	.word	_level0
   5DBC 53 5B              1636 	.word	_level1
   5DBE 54 01              1637 	.word	_level2
   5DC0 54 A9              1638 	.word	_level3
   5DC2 55 4B              1639 	.word	_level4
   5DC4 55 F3              1640 	.word	_level5
   5DC6 56 93              1641 	.word	_level6
   5DC8 57 37              1642 	.word	_level7
   5DCA 57 DD              1643 	.word	_level8
   5DCC 58 83              1644 	.word	_level9
   5DCE 59 25              1645 	.word	_level10
   5DD0 59 C7              1646 	.word	_level11
   5DD2 5A 69              1647 	.word	_level12
   5DD4 5B 09              1648 	.word	_level13
   5DD6 5B B1              1649 	.word	_level14
   5DD8 5C 53              1650 	.word	_level15
   5DDA 5C F9              1651 	.word	_level16
   5DDC 5D 9B              1652 	.word	_level17
                           1653 	.globl _solutions
   5DDE                    1654 _solutions:
   5DDE                    1655 ___compound_literal.0:
                           1656 ;  action:
   5DDE 03                 1657 	.byte	3
                           1658 ;  position:
                           1659 ;  x:
   5DDF 06                 1660 	.byte	6
                           1661 ;  y:
   5DE0 07                 1662 	.byte	7
   5DE1                    1663 ___compound_literal.1:
                           1664 ;  action:
   5DE1 04                 1665 	.byte	4
                           1666 ;  position:
                           1667 ;  x:
   5DE2 06                 1668 	.byte	6
                           1669 ;  y:
   5DE3 05                 1670 	.byte	5
   5DE4                    1671 ___compound_literal.2:
                           1672 ;  action:
   5DE4 03                 1673 	.byte	3
                           1674 ;  position:
                           1675 ;  x:
   5DE5 06                 1676 	.byte	6
                           1677 ;  y:
   5DE6 02                 1678 	.byte	2
   5DE7                    1679 ___compound_literal.3:
                           1680 ;  action:
   5DE7 04                 1681 	.byte	4
                           1682 ;  position:
                           1683 ;  x:
   5DE8 07                 1684 	.byte	7
                           1685 ;  y:
   5DE9 01                 1686 	.byte	1
   5DEA                    1687 ___compound_literal.4:
                           1688 ;  action:
   5DEA 03                 1689 	.byte	3
                           1690 ;  position:
                           1691 ;  x:
   5DEB 06                 1692 	.byte	6
                           1693 ;  y:
   5DEC 00                 1694 	.byte	0
   5DED                    1695 ___compound_literal.5:
                           1696 ;  action:
   5DED 04                 1697 	.byte	4
                           1698 ;  position:
                           1699 ;  x:
   5DEE 06                 1700 	.byte	6
                           1701 ;  y:
   5DEF 02                 1702 	.byte	2
   5DF0                    1703 ___compound_literal.6:
                           1704 ;  action:
   5DF0 01                 1705 	.byte	1
                           1706 ;  position:
                           1707 ;  x:
   5DF1 06                 1708 	.byte	6
                           1709 ;  y:
   5DF2 03                 1710 	.byte	3
   5DF3                    1711 ___compound_literal.7:
                           1712 ;  action:
   5DF3 01                 1713 	.byte	1
                           1714 ;  position:
                           1715 ;  x:
   5DF4 06                 1716 	.byte	6
                           1717 ;  y:
   5DF5 04                 1718 	.byte	4
   5DF6                    1719 ___compound_literal.8:
                           1720 ;  action:
   5DF6 01                 1721 	.byte	1
                           1722 ;  position:
                           1723 ;  x:
   5DF7 06                 1724 	.byte	6
                           1725 ;  y:
   5DF8 08                 1726 	.byte	8
   5DF9                    1727 ___compound_literal.9:
                           1728 ;  action:
   5DF9 01                 1729 	.byte	1
                           1730 ;  position:
                           1731 ;  x:
   5DFA 06                 1732 	.byte	6
                           1733 ;  y:
   5DFB 09                 1734 	.byte	9
   5DFC                    1735 ___compound_literal.10:
                           1736 ;  action:
   5DFC 03                 1737 	.byte	3
                           1738 ;  position:
                           1739 ;  x:
   5DFD 05                 1740 	.byte	5
                           1741 ;  y:
   5DFE 01                 1742 	.byte	1
   5DFF                    1743 ___compound_literal.11:
                           1744 ;  action:
   5DFF 04                 1745 	.byte	4
                           1746 ;  position:
                           1747 ;  x:
   5E00 06                 1748 	.byte	6
                           1749 ;  y:
   5E01 00                 1750 	.byte	0
   5E02                    1751 ___compound_literal.12:
                           1752 ;  action:
   5E02 03                 1753 	.byte	3
                           1754 ;  position:
                           1755 ;  x:
   5E03 07                 1756 	.byte	7
                           1757 ;  y:
   5E04 01                 1758 	.byte	1
   5E05                    1759 ___compound_literal.13:
                           1760 ;  action:
   5E05 04                 1761 	.byte	4
                           1762 ;  position:
                           1763 ;  x:
   5E06 06                 1764 	.byte	6
                           1765 ;  y:
   5E07 00                 1766 	.byte	0
   5E08                    1767 ___compound_literal.14:
                           1768 ;  action:
   5E08 02                 1769 	.byte	2
                           1770 ;  position:
                           1771 ;  x:
   5E09 03                 1772 	.byte	3
                           1773 ;  y:
   5E0A 06                 1774 	.byte	6
   5E0B                    1775 ___compound_literal.15:
                           1776 ;  action:
   5E0B 01                 1777 	.byte	1
                           1778 ;  position:
                           1779 ;  x:
   5E0C 03                 1780 	.byte	3
                           1781 ;  y:
   5E0D 06                 1782 	.byte	6
   5E0E                    1783 ___compound_literal.16:
                           1784 ;  action:
   5E0E 01                 1785 	.byte	1
                           1786 ;  position:
                           1787 ;  x:
   5E0F 07                 1788 	.byte	7
                           1789 ;  y:
   5E10 07                 1790 	.byte	7
   5E11                    1791 ___compound_literal.17:
                           1792 ;  action:
   5E11 00                 1793 	.byte	0
                           1794 ;  position:
                           1795 ;  x:
   5E12 02                 1796 	.byte	2
                           1797 ;  y:
   5E13 08                 1798 	.byte	8
   5E14                    1799 ___compound_literal.18:
                           1800 ;  action:
   5E14 01                 1801 	.byte	1
                           1802 ;  position:
                           1803 ;  x:
   5E15 08                 1804 	.byte	8
                           1805 ;  y:
   5E16 09                 1806 	.byte	9
   5E17                    1807 ___compound_literal.19:
                           1808 ;  action:
   5E17 02                 1809 	.byte	2
                           1810 ;  position:
                           1811 ;  x:
   5E18 02                 1812 	.byte	2
                           1813 ;  y:
   5E19 08                 1814 	.byte	8
   5E1A                    1815 ___compound_literal.20:
                           1816 ;  action:
   5E1A 01                 1817 	.byte	1
                           1818 ;  position:
                           1819 ;  x:
   5E1B 05                 1820 	.byte	5
                           1821 ;  y:
   5E1C 08                 1822 	.byte	8
   5E1D                    1823 ___compound_literal.21:
                           1824 ;  action:
   5E1D 01                 1825 	.byte	1
                           1826 ;  position:
                           1827 ;  x:
   5E1E 05                 1828 	.byte	5
                           1829 ;  y:
   5E1F 09                 1830 	.byte	9
   5E20                    1831 ___compound_literal.22:
                           1832 ;  action:
   5E20 02                 1833 	.byte	2
                           1834 ;  position:
                           1835 ;  x:
   5E21 05                 1836 	.byte	5
                           1837 ;  y:
   5E22 0C                 1838 	.byte	12
   5E23                    1839 ___compound_literal.23:
                           1840 ;  action:
   5E23 02                 1841 	.byte	2
                           1842 ;  position:
                           1843 ;  x:
   5E24 05                 1844 	.byte	5
                           1845 ;  y:
   5E25 0D                 1846 	.byte	13
   5E26                    1847 ___compound_literal.24:
                           1848 ;  action:
   5E26 02                 1849 	.byte	2
                           1850 ;  position:
                           1851 ;  x:
   5E27 00                 1852 	.byte	0
                           1853 ;  y:
   5E28 01                 1854 	.byte	1
   5E29                    1855 ___compound_literal.25:
                           1856 ;  action:
   5E29 02                 1857 	.byte	2
                           1858 ;  position:
                           1859 ;  x:
   5E2A 00                 1860 	.byte	0
                           1861 ;  y:
   5E2B 02                 1862 	.byte	2
   5E2C                    1863 ___compound_literal.26:
                           1864 ;  action:
   5E2C 02                 1865 	.byte	2
                           1866 ;  position:
                           1867 ;  x:
   5E2D 05                 1868 	.byte	5
                           1869 ;  y:
   5E2E 08                 1870 	.byte	8
   5E2F                    1871 ___compound_literal.27:
                           1872 ;  action:
   5E2F 02                 1873 	.byte	2
                           1874 ;  position:
                           1875 ;  x:
   5E30 05                 1876 	.byte	5
                           1877 ;  y:
   5E31 09                 1878 	.byte	9
   5E32                    1879 ___compound_literal.28:
                           1880 ;  action:
   5E32 02                 1881 	.byte	2
                           1882 ;  position:
                           1883 ;  x:
   5E33 05                 1884 	.byte	5
                           1885 ;  y:
   5E34 0C                 1886 	.byte	12
   5E35                    1887 ___compound_literal.29:
                           1888 ;  action:
   5E35 02                 1889 	.byte	2
                           1890 ;  position:
                           1891 ;  x:
   5E36 05                 1892 	.byte	5
                           1893 ;  y:
   5E37 0D                 1894 	.byte	13
   5E38                    1895 ___compound_literal.30:
                           1896 ;  action:
   5E38 02                 1897 	.byte	2
                           1898 ;  position:
                           1899 ;  x:
   5E39 00                 1900 	.byte	0
                           1901 ;  y:
   5E3A 01                 1902 	.byte	1
   5E3B                    1903 ___compound_literal.31:
                           1904 ;  action:
   5E3B 02                 1905 	.byte	2
                           1906 ;  position:
                           1907 ;  x:
   5E3C 00                 1908 	.byte	0
                           1909 ;  y:
   5E3D 02                 1910 	.byte	2
   5E3E                    1911 ___compound_literal.32:
                           1912 ;  action:
   5E3E 01                 1913 	.byte	1
                           1914 ;  position:
                           1915 ;  x:
   5E3F 05                 1916 	.byte	5
                           1917 ;  y:
   5E40 0C                 1918 	.byte	12
   5E41                    1919 ___compound_literal.33:
                           1920 ;  action:
   5E41 01                 1921 	.byte	1
                           1922 ;  position:
                           1923 ;  x:
   5E42 05                 1924 	.byte	5
                           1925 ;  y:
   5E43 0D                 1926 	.byte	13
   5E44                    1927 ___compound_literal.34:
                           1928 ;  action:
   5E44 01                 1929 	.byte	1
                           1930 ;  position:
                           1931 ;  x:
   5E45 00                 1932 	.byte	0
                           1933 ;  y:
   5E46 01                 1934 	.byte	1
   5E47                    1935 ___compound_literal.35:
                           1936 ;  action:
   5E47 01                 1937 	.byte	1
                           1938 ;  position:
                           1939 ;  x:
   5E48 00                 1940 	.byte	0
                           1941 ;  y:
   5E49 02                 1942 	.byte	2
   5E4A                    1943 ___compound_literal.36:
                           1944 ;  action:
   5E4A 00                 1945 	.byte	0
                           1946 ;  position:
                           1947 ;  x:
   5E4B 04                 1948 	.byte	4
                           1949 ;  y:
   5E4C 05                 1950 	.byte	5
   5E4D                    1951 ___compound_literal.37:
                           1952 ;  action:
   5E4D 00                 1953 	.byte	0
                           1954 ;  position:
                           1955 ;  x:
   5E4E 04                 1956 	.byte	4
                           1957 ;  y:
   5E4F 07                 1958 	.byte	7
   5E50                    1959 ___compound_literal.38:
                           1960 ;  action:
   5E50 00                 1961 	.byte	0
                           1962 ;  position:
                           1963 ;  x:
   5E51 04                 1964 	.byte	4
                           1965 ;  y:
   5E52 08                 1966 	.byte	8
   5E53                    1967 ___compound_literal.39:
                           1968 ;  action:
   5E53 02                 1969 	.byte	2
                           1970 ;  position:
                           1971 ;  x:
   5E54 00                 1972 	.byte	0
                           1973 ;  y:
   5E55 02                 1974 	.byte	2
   5E56                    1975 ___compound_literal.40:
                           1976 ;  action:
   5E56 02                 1977 	.byte	2
                           1978 ;  position:
                           1979 ;  x:
   5E57 00                 1980 	.byte	0
                           1981 ;  y:
   5E58 03                 1982 	.byte	3
   5E59                    1983 ___compound_literal.41:
                           1984 ;  action:
   5E59 01                 1985 	.byte	1
                           1986 ;  position:
                           1987 ;  x:
   5E5A 00                 1988 	.byte	0
                           1989 ;  y:
   5E5B 02                 1990 	.byte	2
   5E5C                    1991 ___compound_literal.42:
                           1992 ;  action:
   5E5C 01                 1993 	.byte	1
                           1994 ;  position:
                           1995 ;  x:
   5E5D 00                 1996 	.byte	0
                           1997 ;  y:
   5E5E 03                 1998 	.byte	3
   5E5F                    1999 ___compound_literal.43:
                           2000 ;  action:
   5E5F 02                 2001 	.byte	2
                           2002 ;  position:
                           2003 ;  x:
   5E60 08                 2004 	.byte	8
                           2005 ;  y:
   5E61 05                 2006 	.byte	5
   5E62                    2007 ___compound_literal.44:
                           2008 ;  action:
   5E62 02                 2009 	.byte	2
                           2010 ;  position:
                           2011 ;  x:
   5E63 08                 2012 	.byte	8
                           2013 ;  y:
   5E64 06                 2014 	.byte	6
   5E65                    2015 ___compound_literal.45:
                           2016 ;  action:
   5E65 02                 2017 	.byte	2
                           2018 ;  position:
                           2019 ;  x:
   5E66 08                 2020 	.byte	8
                           2021 ;  y:
   5E67 05                 2022 	.byte	5
   5E68                    2023 ___compound_literal.46:
                           2024 ;  action:
   5E68 02                 2025 	.byte	2
                           2026 ;  position:
                           2027 ;  x:
   5E69 08                 2028 	.byte	8
                           2029 ;  y:
   5E6A 06                 2030 	.byte	6
   5E6B                    2031 ___compound_literal.47:
                           2032 ;  action:
   5E6B 03                 2033 	.byte	3
                           2034 ;  position:
                           2035 ;  x:
   5E6C 08                 2036 	.byte	8
                           2037 ;  y:
   5E6D 0D                 2038 	.byte	13
   5E6E                    2039 ___compound_literal.48:
                           2040 ;  action:
   5E6E 04                 2041 	.byte	4
                           2042 ;  position:
                           2043 ;  x:
   5E6F 02                 2044 	.byte	2
                           2045 ;  y:
   5E70 0D                 2046 	.byte	13
   5E71                    2047 ___compound_literal.49:
                           2048 ;  action:
   5E71 02                 2049 	.byte	2
                           2050 ;  position:
                           2051 ;  x:
   5E72 08                 2052 	.byte	8
                           2053 ;  y:
   5E73 05                 2054 	.byte	5
   5E74                    2055 ___compound_literal.50:
                           2056 ;  action:
   5E74 02                 2057 	.byte	2
                           2058 ;  position:
                           2059 ;  x:
   5E75 08                 2060 	.byte	8
                           2061 ;  y:
   5E76 06                 2062 	.byte	6
   5E77                    2063 ___compound_literal.51:
                           2064 ;  action:
   5E77 00                 2065 	.byte	0
                           2066 ;  position:
                           2067 ;  x:
   5E78 03                 2068 	.byte	3
                           2069 ;  y:
   5E79 0A                 2070 	.byte	10
   5E7A                    2071 ___compound_literal.52:
                           2072 ;  action:
   5E7A 00                 2073 	.byte	0
                           2074 ;  position:
                           2075 ;  x:
   5E7B 03                 2076 	.byte	3
                           2077 ;  y:
   5E7C 0B                 2078 	.byte	11
   5E7D                    2079 ___compound_literal.53:
                           2080 ;  action:
   5E7D 00                 2081 	.byte	0
                           2082 ;  position:
                           2083 ;  x:
   5E7E 08                 2084 	.byte	8
                           2085 ;  y:
   5E7F 0A                 2086 	.byte	10
   5E80                    2087 ___compound_literal.54:
                           2088 ;  action:
   5E80 00                 2089 	.byte	0
                           2090 ;  position:
                           2091 ;  x:
   5E81 08                 2092 	.byte	8
                           2093 ;  y:
   5E82 0B                 2094 	.byte	11
   5E83                    2095 ___compound_literal.55:
                           2096 ;  action:
   5E83 00                 2097 	.byte	0
                           2098 ;  position:
                           2099 ;  x:
   5E84 00                 2100 	.byte	0
                           2101 ;  y:
   5E85 03                 2102 	.byte	3
   5E86                    2103 ___compound_literal.56:
                           2104 ;  action:
   5E86 00                 2105 	.byte	0
                           2106 ;  position:
                           2107 ;  x:
   5E87 02                 2108 	.byte	2
                           2109 ;  y:
   5E88 05                 2110 	.byte	5
   5E89                    2111 ___compound_literal.57:
                           2112 ;  action:
   5E89 02                 2113 	.byte	2
                           2114 ;  position:
                           2115 ;  x:
   5E8A 02                 2116 	.byte	2
                           2117 ;  y:
   5E8B 03                 2118 	.byte	3
   5E8C                    2119 ___compound_literal.58:
                           2120 ;  action:
   5E8C 02                 2121 	.byte	2
                           2122 ;  position:
                           2123 ;  x:
   5E8D 06                 2124 	.byte	6
                           2125 ;  y:
   5E8E 0D                 2126 	.byte	13
   5E8F                    2127 ___compound_literal.59:
                           2128 ;  action:
   5E8F 02                 2129 	.byte	2
                           2130 ;  position:
                           2131 ;  x:
   5E90 02                 2132 	.byte	2
                           2133 ;  y:
   5E91 03                 2134 	.byte	3
   5E92                    2135 ___compound_literal.60:
                           2136 ;  action:
   5E92 02                 2137 	.byte	2
                           2138 ;  position:
                           2139 ;  x:
   5E93 06                 2140 	.byte	6
                           2141 ;  y:
   5E94 0D                 2142 	.byte	13
   5E95                    2143 ___compound_literal.61:
                           2144 ;  action:
   5E95 00                 2145 	.byte	0
                           2146 ;  position:
                           2147 ;  x:
   5E96 06                 2148 	.byte	6
                           2149 ;  y:
   5E97 0D                 2150 	.byte	13
   5E98                    2151 ___compound_literal.62:
                           2152 ;  action:
   5E98 00                 2153 	.byte	0
                           2154 ;  position:
                           2155 ;  x:
   5E99 02                 2156 	.byte	2
                           2157 ;  y:
   5E9A 03                 2158 	.byte	3
   5E9B                    2159 ___compound_literal.63:
                           2160 ;  action:
   5E9B 01                 2161 	.byte	1
                           2162 ;  position:
                           2163 ;  x:
   5E9C 06                 2164 	.byte	6
                           2165 ;  y:
   5E9D 04                 2166 	.byte	4
   5E9E                    2167 ___compound_literal.64:
                           2168 ;  action:
   5E9E 00                 2169 	.byte	0
                           2170 ;  position:
                           2171 ;  x:
   5E9F 00                 2172 	.byte	0
                           2173 ;  y:
   5EA0 08                 2174 	.byte	8
   5EA1                    2175 ___compound_literal.65:
                           2176 ;  action:
   5EA1 01                 2177 	.byte	1
                           2178 ;  position:
                           2179 ;  x:
   5EA2 03                 2180 	.byte	3
                           2181 ;  y:
   5EA3 01                 2182 	.byte	1
   5EA4                    2183 ___compound_literal.66:
                           2184 ;  action:
   5EA4 01                 2185 	.byte	1
                           2186 ;  position:
                           2187 ;  x:
   5EA5 03                 2188 	.byte	3
                           2189 ;  y:
   5EA6 02                 2190 	.byte	2
   5EA7                    2191 ___compound_literal.67:
                           2192 ;  action:
   5EA7 02                 2193 	.byte	2
                           2194 ;  position:
                           2195 ;  x:
   5EA8 03                 2196 	.byte	3
                           2197 ;  y:
   5EA9 0E                 2198 	.byte	14
   5EAA                    2199 ___compound_literal.68:
                           2200 ;  action:
   5EAA 02                 2201 	.byte	2
                           2202 ;  position:
                           2203 ;  x:
   5EAB 07                 2204 	.byte	7
                           2205 ;  y:
   5EAC 0A                 2206 	.byte	10
   5EAD                    2207 ___compound_literal.69:
                           2208 ;  action:
   5EAD 02                 2209 	.byte	2
                           2210 ;  position:
                           2211 ;  x:
   5EAE 07                 2212 	.byte	7
                           2213 ;  y:
   5EAF 0B                 2214 	.byte	11
   5EB0                    2215 ___compound_literal.70:
                           2216 ;  action:
   5EB0 01                 2217 	.byte	1
                           2218 ;  position:
                           2219 ;  x:
   5EB1 06                 2220 	.byte	6
                           2221 ;  y:
   5EB2 00                 2222 	.byte	0
   5EB3                    2223 ___compound_literal.71:
                           2224 ;  action:
   5EB3 02                 2225 	.byte	2
                           2226 ;  position:
                           2227 ;  x:
   5EB4 03                 2228 	.byte	3
                           2229 ;  y:
   5EB5 01                 2230 	.byte	1
   5EB6                    2231 ___compound_literal.72:
                           2232 ;  action:
   5EB6 02                 2233 	.byte	2
                           2234 ;  position:
                           2235 ;  x:
   5EB7 03                 2236 	.byte	3
                           2237 ;  y:
   5EB8 02                 2238 	.byte	2
   5EB9                    2239 ___compound_literal.73:
                           2240 ;  action:
   5EB9 03                 2241 	.byte	3
                           2242 ;  position:
                           2243 ;  x:
   5EBA 02                 2244 	.byte	2
                           2245 ;  y:
   5EBB 0C                 2246 	.byte	12
   5EBC                    2247 ___compound_literal.74:
                           2248 ;  action:
   5EBC 04                 2249 	.byte	4
                           2250 ;  position:
                           2251 ;  x:
   5EBD 07                 2252 	.byte	7
                           2253 ;  y:
   5EBE 02                 2254 	.byte	2
   5EBF                    2255 ___compound_literal.75:
                           2256 ;  action:
   5EBF 01                 2257 	.byte	1
                           2258 ;  position:
                           2259 ;  x:
   5EC0 06                 2260 	.byte	6
                           2261 ;  y:
   5EC1 04                 2262 	.byte	4
   5EC2                    2263 ___compound_literal.76:
                           2264 ;  action:
   5EC2 01                 2265 	.byte	1
                           2266 ;  position:
                           2267 ;  x:
   5EC3 06                 2268 	.byte	6
                           2269 ;  y:
   5EC4 03                 2270 	.byte	3
   5EC5                    2271 ___compound_literal.77:
                           2272 ;  action:
   5EC5 03                 2273 	.byte	3
                           2274 ;  position:
                           2275 ;  x:
   5EC6 02                 2276 	.byte	2
                           2277 ;  y:
   5EC7 06                 2278 	.byte	6
   5EC8                    2279 ___compound_literal.78:
                           2280 ;  action:
   5EC8 04                 2281 	.byte	4
                           2282 ;  position:
                           2283 ;  x:
   5EC9 02                 2284 	.byte	2
                           2285 ;  y:
   5ECA 08                 2286 	.byte	8
   5ECB                    2287 ___compound_literal.79:
                           2288 ;  action:
   5ECB 01                 2289 	.byte	1
                           2290 ;  position:
                           2291 ;  x:
   5ECC 01                 2292 	.byte	1
                           2293 ;  y:
   5ECD 08                 2294 	.byte	8
   5ECE                    2295 ___compound_literal.80:
                           2296 ;  action:
   5ECE 01                 2297 	.byte	1
                           2298 ;  position:
                           2299 ;  x:
   5ECF 07                 2300 	.byte	7
                           2301 ;  y:
   5ED0 04                 2302 	.byte	4
   5ED1                    2303 ___compound_literal.81:
                           2304 ;  action:
   5ED1 01                 2305 	.byte	1
                           2306 ;  position:
                           2307 ;  x:
   5ED2 02                 2308 	.byte	2
                           2309 ;  y:
   5ED3 09                 2310 	.byte	9
   5ED4                    2311 ___compound_literal.82:
                           2312 ;  action:
   5ED4 01                 2313 	.byte	1
                           2314 ;  position:
                           2315 ;  x:
   5ED5 02                 2316 	.byte	2
                           2317 ;  y:
   5ED6 0A                 2318 	.byte	10
   5ED7                    2319 ___compound_literal.83:
                           2320 ;  action:
   5ED7 00                 2321 	.byte	0
                           2322 ;  position:
                           2323 ;  x:
   5ED8 07                 2324 	.byte	7
                           2325 ;  y:
   5ED9 0D                 2326 	.byte	13
   5EDA                    2327 ___compound_literal.84:
                           2328 ;  action:
   5EDA 00                 2329 	.byte	0
                           2330 ;  position:
                           2331 ;  x:
   5EDB 06                 2332 	.byte	6
                           2333 ;  y:
   5EDC 0D                 2334 	.byte	13
   5EDD                    2335 ___compound_literal.85:
                           2336 ;  action:
   5EDD 00                 2337 	.byte	0
                           2338 ;  position:
                           2339 ;  x:
   5EDE 05                 2340 	.byte	5
                           2341 ;  y:
   5EDF 08                 2342 	.byte	8
   5EE0                    2343 ___compound_literal.86:
                           2344 ;  action:
   5EE0 00                 2345 	.byte	0
                           2346 ;  position:
                           2347 ;  x:
   5EE1 05                 2348 	.byte	5
                           2349 ;  y:
   5EE2 09                 2350 	.byte	9
   5EE3                    2351 ___compound_literal.87:
                           2352 ;  action:
   5EE3 01                 2353 	.byte	1
                           2354 ;  position:
                           2355 ;  x:
   5EE4 05                 2356 	.byte	5
                           2357 ;  y:
   5EE5 08                 2358 	.byte	8
   5EE6                    2359 ___compound_literal.88:
                           2360 ;  action:
   5EE6 01                 2361 	.byte	1
                           2362 ;  position:
                           2363 ;  x:
   5EE7 05                 2364 	.byte	5
                           2365 ;  y:
   5EE8 09                 2366 	.byte	9
   5EE9                    2367 ___compound_literal.89:
                           2368 ;  action:
   5EE9 01                 2369 	.byte	1
                           2370 ;  position:
                           2371 ;  x:
   5EEA 06                 2372 	.byte	6
                           2373 ;  y:
   5EEB 07                 2374 	.byte	7
   5EEC                    2375 ___compound_literal.90:
                           2376 ;  action:
   5EEC 02                 2377 	.byte	2
                           2378 ;  position:
                           2379 ;  x:
   5EED 03                 2380 	.byte	3
                           2381 ;  y:
   5EEE 04                 2382 	.byte	4
   5EEF                    2383 ___compound_literal.91:
                           2384 ;  action:
   5EEF 02                 2385 	.byte	2
                           2386 ;  position:
                           2387 ;  x:
   5EF0 03                 2388 	.byte	3
                           2389 ;  y:
   5EF1 05                 2390 	.byte	5
   5EF2                    2391 ___compound_literal.92:
                           2392 ;  action:
   5EF2 03                 2393 	.byte	3
                           2394 ;  position:
                           2395 ;  x:
   5EF3 06                 2396 	.byte	6
                           2397 ;  y:
   5EF4 0C                 2398 	.byte	12
   5EF5                    2399 ___compound_literal.93:
                           2400 ;  action:
   5EF5 04                 2401 	.byte	4
                           2402 ;  position:
                           2403 ;  x:
   5EF6 04                 2404 	.byte	4
                           2405 ;  y:
   5EF7 0A                 2406 	.byte	10
   5EF8                    2407 ___compound_literal.94:
                           2408 ;  action:
   5EF8 02                 2409 	.byte	2
                           2410 ;  position:
                           2411 ;  x:
   5EF9 06                 2412 	.byte	6
                           2413 ;  y:
   5EFA 02                 2414 	.byte	2
   5EFB                    2415 ___compound_literal.95:
                           2416 ;  action:
   5EFB 02                 2417 	.byte	2
                           2418 ;  position:
                           2419 ;  x:
   5EFC 06                 2420 	.byte	6
                           2421 ;  y:
   5EFD 03                 2422 	.byte	3
   5EFE                    2423 ___compound_literal.96:
                           2424 ;  action:
   5EFE 01                 2425 	.byte	1
                           2426 ;  position:
                           2427 ;  x:
   5EFF 02                 2428 	.byte	2
                           2429 ;  y:
   5F00 09                 2430 	.byte	9
   5F01                    2431 ___compound_literal.97:
                           2432 ;  action:
   5F01 01                 2433 	.byte	1
                           2434 ;  position:
                           2435 ;  x:
   5F02 05                 2436 	.byte	5
                           2437 ;  y:
   5F03 03                 2438 	.byte	3
   5F04                    2439 ___compound_literal.98:
                           2440 ;  action:
   5F04 02                 2441 	.byte	2
                           2442 ;  position:
                           2443 ;  x:
   5F05 00                 2444 	.byte	0
                           2445 ;  y:
   5F06 06                 2446 	.byte	6
   5F07                    2447 ___compound_literal.99:
                           2448 ;  action:
   5F07 02                 2449 	.byte	2
                           2450 ;  position:
                           2451 ;  x:
   5F08 00                 2452 	.byte	0
                           2453 ;  y:
   5F09 09                 2454 	.byte	9
   5F0A                    2455 ___compound_literal.100:
                           2456 ;  action:
   5F0A 02                 2457 	.byte	2
                           2458 ;  position:
                           2459 ;  x:
   5F0B 00                 2460 	.byte	0
                           2461 ;  y:
   5F0C 06                 2462 	.byte	6
   5F0D                    2463 ___compound_literal.101:
                           2464 ;  action:
   5F0D 02                 2465 	.byte	2
                           2466 ;  position:
                           2467 ;  x:
   5F0E 00                 2468 	.byte	0
                           2469 ;  y:
   5F0F 09                 2470 	.byte	9
   5F10                    2471 ___compound_literal.102:
                           2472 ;  action:
   5F10 03                 2473 	.byte	3
                           2474 ;  position:
                           2475 ;  x:
   5F11 03                 2476 	.byte	3
                           2477 ;  y:
   5F12 0E                 2478 	.byte	14
   5F13                    2479 ___compound_literal.103:
                           2480 ;  action:
   5F13 04                 2481 	.byte	4
                           2482 ;  position:
                           2483 ;  x:
   5F14 00                 2484 	.byte	0
                           2485 ;  y:
   5F15 0C                 2486 	.byte	12
   5F16                    2487 ___compound_literal.104:
                           2488 ;  action:
   5F16 02                 2489 	.byte	2
                           2490 ;  position:
                           2491 ;  x:
   5F17 09                 2492 	.byte	9
                           2493 ;  y:
   5F18 04                 2494 	.byte	4
   5F19                    2495 ___compound_literal.105:
                           2496 ;  action:
   5F19 02                 2497 	.byte	2
                           2498 ;  position:
                           2499 ;  x:
   5F1A 09                 2500 	.byte	9
                           2501 ;  y:
   5F1B 03                 2502 	.byte	3
   5F1C                    2503 ___compound_literal.106:
                           2504 ;  action:
   5F1C 02                 2505 	.byte	2
                           2506 ;  position:
                           2507 ;  x:
   5F1D 00                 2508 	.byte	0
                           2509 ;  y:
   5F1E 08                 2510 	.byte	8
   5F1F                    2511 ___compound_literal.107:
                           2512 ;  action:
   5F1F 02                 2513 	.byte	2
                           2514 ;  position:
                           2515 ;  x:
   5F20 00                 2516 	.byte	0
                           2517 ;  y:
   5F21 09                 2518 	.byte	9
   5F22                    2519 ___compound_literal.108:
                           2520 ;  action:
   5F22 01                 2521 	.byte	1
                           2522 ;  position:
                           2523 ;  x:
   5F23 09                 2524 	.byte	9
                           2525 ;  y:
   5F24 0A                 2526 	.byte	10
   5F25                    2527 ___compound_literal.109:
                           2528 ;  action:
   5F25 01                 2529 	.byte	1
                           2530 ;  position:
                           2531 ;  x:
   5F26 09                 2532 	.byte	9
                           2533 ;  y:
   5F27 0B                 2534 	.byte	11
   5F28                    2535 ___compound_literal.110:
                           2536 ;  action:
   5F28 02                 2537 	.byte	2
                           2538 ;  position:
                           2539 ;  x:
   5F29 03                 2540 	.byte	3
                           2541 ;  y:
   5F2A 0A                 2542 	.byte	10
   5F2B                    2543 ___compound_literal.111:
                           2544 ;  action:
   5F2B 02                 2545 	.byte	2
                           2546 ;  position:
                           2547 ;  x:
   5F2C 03                 2548 	.byte	3
                           2549 ;  y:
   5F2D 0B                 2550 	.byte	11
   5F2E                    2551 ___compound_literal.112:
                           2552 ;  action:
   5F2E 01                 2553 	.byte	1
                           2554 ;  position:
                           2555 ;  x:
   5F2F 04                 2556 	.byte	4
                           2557 ;  y:
   5F30 05                 2558 	.byte	5
   5F31                    2559 ___compound_literal.113:
                           2560 ;  action:
   5F31 01                 2561 	.byte	1
                           2562 ;  position:
                           2563 ;  x:
   5F32 03                 2564 	.byte	3
                           2565 ;  y:
   5F33 05                 2566 	.byte	5
   5F34                    2567 ___compound_literal.114:
                           2568 ;  action:
   5F34 01                 2569 	.byte	1
                           2570 ;  position:
                           2571 ;  x:
   5F35 01                 2572 	.byte	1
                           2573 ;  y:
   5F36 03                 2574 	.byte	3
   5F37                    2575 ___compound_literal.115:
                           2576 ;  action:
   5F37 01                 2577 	.byte	1
                           2578 ;  position:
                           2579 ;  x:
   5F38 01                 2580 	.byte	1
                           2581 ;  y:
   5F39 04                 2582 	.byte	4
   5F3A                    2583 ___compound_literal.116:
                           2584 ;  action:
   5F3A 02                 2585 	.byte	2
                           2586 ;  position:
                           2587 ;  x:
   5F3B 00                 2588 	.byte	0
                           2589 ;  y:
   5F3C 0A                 2590 	.byte	10
   5F3D                    2591 ___compound_literal.117:
                           2592 ;  action:
   5F3D 02                 2593 	.byte	2
                           2594 ;  position:
                           2595 ;  x:
   5F3E 00                 2596 	.byte	0
                           2597 ;  y:
   5F3F 0B                 2598 	.byte	11
   5F40                    2599 ___compound_literal.118:
                           2600 ;  action:
   5F40 01                 2601 	.byte	1
                           2602 ;  position:
                           2603 ;  x:
   5F41 00                 2604 	.byte	0
                           2605 ;  y:
   5F42 03                 2606 	.byte	3
   5F43                    2607 ___compound_literal.119:
                           2608 ;  action:
   5F43 01                 2609 	.byte	1
                           2610 ;  position:
                           2611 ;  x:
   5F44 06                 2612 	.byte	6
                           2613 ;  y:
   5F45 01                 2614 	.byte	1
   5F46                    2615 ___compound_literal.120:
                           2616 ;  action:
   5F46 01                 2617 	.byte	1
                           2618 ;  position:
                           2619 ;  x:
   5F47 06                 2620 	.byte	6
                           2621 ;  y:
   5F48 02                 2622 	.byte	2
   5F49                    2623 ___compound_literal.121:
                           2624 ;  action:
   5F49 01                 2625 	.byte	1
                           2626 ;  position:
                           2627 ;  x:
   5F4A 06                 2628 	.byte	6
                           2629 ;  y:
   5F4B 0C                 2630 	.byte	12
   5F4C                    2631 ___compound_literal.122:
                           2632 ;  action:
   5F4C 01                 2633 	.byte	1
                           2634 ;  position:
                           2635 ;  x:
   5F4D 06                 2636 	.byte	6
                           2637 ;  y:
   5F4E 0D                 2638 	.byte	13
   5F4F                    2639 ___compound_literal.123:
                           2640 ;  action:
   5F4F 02                 2641 	.byte	2
                           2642 ;  position:
                           2643 ;  x:
   5F50 03                 2644 	.byte	3
                           2645 ;  y:
   5F51 0A                 2646 	.byte	10
   5F52                    2647 ___compound_literal.124:
                           2648 ;  action:
   5F52 02                 2649 	.byte	2
                           2650 ;  position:
                           2651 ;  x:
   5F53 03                 2652 	.byte	3
                           2653 ;  y:
   5F54 0B                 2654 	.byte	11
   5F55                    2655 ___compound_literal.125:
                           2656 ;  action:
   5F55 02                 2657 	.byte	2
                           2658 ;  position:
                           2659 ;  x:
   5F56 09                 2660 	.byte	9
                           2661 ;  y:
   5F57 03                 2662 	.byte	3
   5F58                    2663 ___compound_literal.126:
                           2664 ;  action:
   5F58 02                 2665 	.byte	2
                           2666 ;  position:
                           2667 ;  x:
   5F59 09                 2668 	.byte	9
                           2669 ;  y:
   5F5A 04                 2670 	.byte	4
   5F5B                    2671 ___compound_literal.127:
                           2672 ;  action:
   5F5B 02                 2673 	.byte	2
                           2674 ;  position:
                           2675 ;  x:
   5F5C 09                 2676 	.byte	9
                           2677 ;  y:
   5F5D 0A                 2678 	.byte	10
   5F5E                    2679 ___compound_literal.128:
                           2680 ;  action:
   5F5E 02                 2681 	.byte	2
                           2682 ;  position:
                           2683 ;  x:
   5F5F 09                 2684 	.byte	9
                           2685 ;  y:
   5F60 0B                 2686 	.byte	11
   5F61                    2687 ___compound_literal.129:
                           2688 ;  action:
   5F61 02                 2689 	.byte	2
                           2690 ;  position:
                           2691 ;  x:
   5F62 06                 2692 	.byte	6
                           2693 ;  y:
   5F63 0A                 2694 	.byte	10
   5F64                    2695 ___compound_literal.130:
                           2696 ;  action:
   5F64 02                 2697 	.byte	2
                           2698 ;  position:
                           2699 ;  x:
   5F65 06                 2700 	.byte	6
                           2701 ;  y:
   5F66 0B                 2702 	.byte	11
   5F67                    2703 ___compound_literal.131:
                           2704 ;  action:
   5F67 01                 2705 	.byte	1
                           2706 ;  position:
                           2707 ;  x:
   5F68 03                 2708 	.byte	3
                           2709 ;  y:
   5F69 09                 2710 	.byte	9
   5F6A                    2711 ___compound_literal.132:
                           2712 ;  action:
   5F6A 01                 2713 	.byte	1
                           2714 ;  position:
                           2715 ;  x:
   5F6B 03                 2716 	.byte	3
                           2717 ;  y:
   5F6C 0C                 2718 	.byte	12
   5F6D                    2719 ___compound_literal.133:
                           2720 ;  action:
   5F6D 01                 2721 	.byte	1
                           2722 ;  position:
                           2723 ;  x:
   5F6E 06                 2724 	.byte	6
                           2725 ;  y:
   5F6F 0A                 2726 	.byte	10
   5F70                    2727 ___compound_literal.134:
                           2728 ;  action:
   5F70 01                 2729 	.byte	1
                           2730 ;  position:
                           2731 ;  x:
   5F71 06                 2732 	.byte	6
                           2733 ;  y:
   5F72 0B                 2734 	.byte	11
   5F73                    2735 ___compound_literal.135:
                           2736 ;  action:
   5F73 00                 2737 	.byte	0
                           2738 ;  position:
                           2739 ;  x:
   5F74 02                 2740 	.byte	2
                           2741 ;  y:
   5F75 0E                 2742 	.byte	14
   5F76                    2743 ___compound_literal.136:
                           2744 ;  action:
   5F76 00                 2745 	.byte	0
                           2746 ;  position:
                           2747 ;  x:
   5F77 07                 2748 	.byte	7
                           2749 ;  y:
   5F78 09                 2750 	.byte	9
   5F79                    2751 ___compound_literal.137:
                           2752 ;  action:
   5F79 00                 2753 	.byte	0
                           2754 ;  position:
                           2755 ;  x:
   5F7A 07                 2756 	.byte	7
                           2757 ;  y:
   5F7B 0A                 2758 	.byte	10
   5F7C                    2759 ___compound_literal.138:
                           2760 ;  action:
   5F7C 02                 2761 	.byte	2
                           2762 ;  position:
                           2763 ;  x:
   5F7D 07                 2764 	.byte	7
                           2765 ;  y:
   5F7E 04                 2766 	.byte	4
   5F7F                    2767 ___compound_literal.139:
                           2768 ;  action:
   5F7F 02                 2769 	.byte	2
                           2770 ;  position:
                           2771 ;  x:
   5F80 07                 2772 	.byte	7
                           2773 ;  y:
   5F81 05                 2774 	.byte	5
   5F82                    2775 ___compound_literal.140:
                           2776 ;  action:
   5F82 02                 2777 	.byte	2
                           2778 ;  position:
                           2779 ;  x:
   5F83 07                 2780 	.byte	7
                           2781 ;  y:
   5F84 09                 2782 	.byte	9
   5F85                    2783 ___compound_literal.141:
                           2784 ;  action:
   5F85 02                 2785 	.byte	2
                           2786 ;  position:
                           2787 ;  x:
   5F86 07                 2788 	.byte	7
                           2789 ;  y:
   5F87 0A                 2790 	.byte	10
   5F88                    2791 ___compound_literal.142:
                           2792 ;  action:
   5F88 02                 2793 	.byte	2
                           2794 ;  position:
                           2795 ;  x:
   5F89 02                 2796 	.byte	2
                           2797 ;  y:
   5F8A 04                 2798 	.byte	4
   5F8B                    2799 ___compound_literal.143:
                           2800 ;  action:
   5F8B 02                 2801 	.byte	2
                           2802 ;  position:
                           2803 ;  x:
   5F8C 02                 2804 	.byte	2
                           2805 ;  y:
   5F8D 05                 2806 	.byte	5
   5F8E                    2807 ___compound_literal.144:
                           2808 ;  action:
   5F8E 02                 2809 	.byte	2
                           2810 ;  position:
                           2811 ;  x:
   5F8F 02                 2812 	.byte	2
                           2813 ;  y:
   5F90 09                 2814 	.byte	9
   5F91                    2815 ___compound_literal.145:
                           2816 ;  action:
   5F91 02                 2817 	.byte	2
                           2818 ;  position:
                           2819 ;  x:
   5F92 02                 2820 	.byte	2
                           2821 ;  y:
   5F93 0A                 2822 	.byte	10
   5F94                    2823 ___compound_literal.146:
                           2824 ;  action:
   5F94 02                 2825 	.byte	2
                           2826 ;  position:
                           2827 ;  x:
   5F95 07                 2828 	.byte	7
                           2829 ;  y:
   5F96 04                 2830 	.byte	4
   5F97                    2831 ___compound_literal.147:
                           2832 ;  action:
   5F97 02                 2833 	.byte	2
                           2834 ;  position:
                           2835 ;  x:
   5F98 07                 2836 	.byte	7
                           2837 ;  y:
   5F99 05                 2838 	.byte	5
   5F9A                    2839 ___compound_literal.148:
                           2840 ;  action:
   5F9A 02                 2841 	.byte	2
                           2842 ;  position:
                           2843 ;  x:
   5F9B 07                 2844 	.byte	7
                           2845 ;  y:
   5F9C 09                 2846 	.byte	9
   5F9D                    2847 ___compound_literal.149:
                           2848 ;  action:
   5F9D 02                 2849 	.byte	2
                           2850 ;  position:
                           2851 ;  x:
   5F9E 07                 2852 	.byte	7
                           2853 ;  y:
   5F9F 0A                 2854 	.byte	10
   5FA0                    2855 ___compound_literal.150:
                           2856 ;  action:
   5FA0 02                 2857 	.byte	2
                           2858 ;  position:
                           2859 ;  x:
   5FA1 02                 2860 	.byte	2
                           2861 ;  y:
   5FA2 04                 2862 	.byte	4
   5FA3                    2863 ___compound_literal.151:
                           2864 ;  action:
   5FA3 02                 2865 	.byte	2
                           2866 ;  position:
                           2867 ;  x:
   5FA4 02                 2868 	.byte	2
                           2869 ;  y:
   5FA5 05                 2870 	.byte	5
   5FA6                    2871 ___compound_literal.152:
                           2872 ;  action:
   5FA6 02                 2873 	.byte	2
                           2874 ;  position:
                           2875 ;  x:
   5FA7 02                 2876 	.byte	2
                           2877 ;  y:
   5FA8 09                 2878 	.byte	9
   5FA9                    2879 ___compound_literal.153:
                           2880 ;  action:
   5FA9 02                 2881 	.byte	2
                           2882 ;  position:
                           2883 ;  x:
   5FAA 02                 2884 	.byte	2
                           2885 ;  y:
   5FAB 0A                 2886 	.byte	10
   5FAC                    2887 ___compound_literal.154:
                           2888 ;  action:
   5FAC 01                 2889 	.byte	1
                           2890 ;  position:
                           2891 ;  x:
   5FAD 07                 2892 	.byte	7
                           2893 ;  y:
   5FAE 0E                 2894 	.byte	14
   5FAF                    2895 ___compound_literal.155:
                           2896 ;  action:
   5FAF 01                 2897 	.byte	1
                           2898 ;  position:
                           2899 ;  x:
   5FB0 08                 2900 	.byte	8
                           2901 ;  y:
   5FB1 0E                 2902 	.byte	14
   5FB2                    2903 ___compound_literal.156:
                           2904 ;  action:
   5FB2 01                 2905 	.byte	1
                           2906 ;  position:
                           2907 ;  x:
   5FB3 09                 2908 	.byte	9
                           2909 ;  y:
   5FB4 0E                 2910 	.byte	14
   5FB5                    2911 ___compound_literal.157:
                           2912 ;  action:
   5FB5 02                 2913 	.byte	2
                           2914 ;  position:
                           2915 ;  x:
   5FB6 07                 2916 	.byte	7
                           2917 ;  y:
   5FB7 04                 2918 	.byte	4
   5FB8                    2919 ___compound_literal.158:
                           2920 ;  action:
   5FB8 02                 2921 	.byte	2
                           2922 ;  position:
                           2923 ;  x:
   5FB9 07                 2924 	.byte	7
                           2925 ;  y:
   5FBA 05                 2926 	.byte	5
   5FBB                    2927 ___compound_literal.159:
                           2928 ;  action:
   5FBB 00                 2929 	.byte	0
                           2930 ;  position:
                           2931 ;  x:
   5FBC 02                 2932 	.byte	2
                           2933 ;  y:
   5FBD 04                 2934 	.byte	4
   5FBE                    2935 ___compound_literal.160:
                           2936 ;  action:
   5FBE 00                 2937 	.byte	0
                           2938 ;  position:
                           2939 ;  x:
   5FBF 02                 2940 	.byte	2
                           2941 ;  y:
   5FC0 05                 2942 	.byte	5
   5FC1                    2943 ___compound_literal.161:
                           2944 ;  action:
   5FC1 00                 2945 	.byte	0
                           2946 ;  position:
                           2947 ;  x:
   5FC2 02                 2948 	.byte	2
                           2949 ;  y:
   5FC3 03                 2950 	.byte	3
   5FC4                    2951 ___compound_literal.162:
                           2952 ;  action:
   5FC4 00                 2953 	.byte	0
                           2954 ;  position:
                           2955 ;  x:
   5FC5 02                 2956 	.byte	2
                           2957 ;  y:
   5FC6 04                 2958 	.byte	4
   5FC7                    2959 ___compound_literal.163:
                           2960 ;  action:
   5FC7 00                 2961 	.byte	0
                           2962 ;  position:
                           2963 ;  x:
   5FC8 08                 2964 	.byte	8
                           2965 ;  y:
   5FC9 05                 2966 	.byte	5
   5FCA                    2967 ___compound_literal.164:
                           2968 ;  action:
   5FCA 00                 2969 	.byte	0
                           2970 ;  position:
                           2971 ;  x:
   5FCB 08                 2972 	.byte	8
                           2973 ;  y:
   5FCC 06                 2974 	.byte	6
   5FCD                    2975 ___compound_literal.165:
                           2976 ;  action:
   5FCD 00                 2977 	.byte	0
                           2978 ;  position:
                           2979 ;  x:
   5FCE 01                 2980 	.byte	1
                           2981 ;  y:
   5FCF 03                 2982 	.byte	3
   5FD0                    2983 ___compound_literal.166:
                           2984 ;  action:
   5FD0 00                 2985 	.byte	0
                           2986 ;  position:
                           2987 ;  x:
   5FD1 01                 2988 	.byte	1
                           2989 ;  y:
   5FD2 04                 2990 	.byte	4
   5FD3                    2991 ___compound_literal.167:
                           2992 ;  action:
   5FD3 00                 2993 	.byte	0
                           2994 ;  position:
                           2995 ;  x:
   5FD4 07                 2996 	.byte	7
                           2997 ;  y:
   5FD5 05                 2998 	.byte	5
   5FD6                    2999 ___compound_literal.168:
                           3000 ;  action:
   5FD6 00                 3001 	.byte	0
                           3002 ;  position:
                           3003 ;  x:
   5FD7 07                 3004 	.byte	7
                           3005 ;  y:
   5FD8 06                 3006 	.byte	6
   5FD9                    3007 ___compound_literal.169:
                           3008 ;  action:
   5FD9 02                 3009 	.byte	2
                           3010 ;  position:
                           3011 ;  x:
   5FDA 02                 3012 	.byte	2
                           3013 ;  y:
   5FDB 03                 3014 	.byte	3
   5FDC                    3015 ___compound_literal.170:
                           3016 ;  action:
   5FDC 02                 3017 	.byte	2
                           3018 ;  position:
                           3019 ;  x:
   5FDD 02                 3020 	.byte	2
                           3021 ;  y:
   5FDE 04                 3022 	.byte	4
   5FDF                    3023 ___compound_literal.171:
                           3024 ;  action:
   5FDF 02                 3025 	.byte	2
                           3026 ;  position:
                           3027 ;  x:
   5FE0 02                 3028 	.byte	2
                           3029 ;  y:
   5FE1 03                 3030 	.byte	3
   5FE2                    3031 ___compound_literal.172:
                           3032 ;  action:
   5FE2 02                 3033 	.byte	2
                           3034 ;  position:
                           3035 ;  x:
   5FE3 02                 3036 	.byte	2
                           3037 ;  y:
   5FE4 04                 3038 	.byte	4
   5FE5                    3039 ___compound_literal.173:
                           3040 ;  action:
   5FE5 02                 3041 	.byte	2
                           3042 ;  position:
                           3043 ;  x:
   5FE6 02                 3044 	.byte	2
                           3045 ;  y:
   5FE7 03                 3046 	.byte	3
   5FE8                    3047 ___compound_literal.174:
                           3048 ;  action:
   5FE8 02                 3049 	.byte	2
                           3050 ;  position:
                           3051 ;  x:
   5FE9 02                 3052 	.byte	2
                           3053 ;  y:
   5FEA 04                 3054 	.byte	4
   5FEB                    3055 ___compound_literal.175:
                           3056 ;  action:
   5FEB 02                 3057 	.byte	2
                           3058 ;  position:
                           3059 ;  x:
   5FEC 02                 3060 	.byte	2
                           3061 ;  y:
   5FED 03                 3062 	.byte	3
   5FEE                    3063 ___compound_literal.176:
                           3064 ;  action:
   5FEE 02                 3065 	.byte	2
                           3066 ;  position:
                           3067 ;  x:
   5FEF 02                 3068 	.byte	2
                           3069 ;  y:
   5FF0 04                 3070 	.byte	4
   5FF1                    3071 ___compound_literal.177:
                           3072 ;  action:
   5FF1 02                 3073 	.byte	2
                           3074 ;  position:
                           3075 ;  x:
   5FF2 02                 3076 	.byte	2
                           3077 ;  y:
   5FF3 03                 3078 	.byte	3
   5FF4                    3079 ___compound_literal.178:
                           3080 ;  action:
   5FF4 02                 3081 	.byte	2
                           3082 ;  position:
                           3083 ;  x:
   5FF5 02                 3084 	.byte	2
                           3085 ;  y:
   5FF6 04                 3086 	.byte	4
   5FF7                    3087 ___compound_literal.179:
                           3088 ;  action:
   5FF7 02                 3089 	.byte	2
                           3090 ;  position:
                           3091 ;  x:
   5FF8 02                 3092 	.byte	2
                           3093 ;  y:
   5FF9 03                 3094 	.byte	3
   5FFA                    3095 ___compound_literal.180:
                           3096 ;  action:
   5FFA 02                 3097 	.byte	2
                           3098 ;  position:
                           3099 ;  x:
   5FFB 02                 3100 	.byte	2
                           3101 ;  y:
   5FFC 04                 3102 	.byte	4
   5FFD                    3103 ___compound_literal.181:
                           3104 ;  action:
   5FFD 02                 3105 	.byte	2
                           3106 ;  position:
                           3107 ;  x:
   5FFE 02                 3108 	.byte	2
                           3109 ;  y:
   5FFF 03                 3110 	.byte	3
   6000                    3111 ___compound_literal.182:
                           3112 ;  action:
   6000 02                 3113 	.byte	2
                           3114 ;  position:
                           3115 ;  x:
   6001 02                 3116 	.byte	2
                           3117 ;  y:
   6002 04                 3118 	.byte	4
   6003                    3119 ___compound_literal.183:
                           3120 ;  action:
   6003 02                 3121 	.byte	2
                           3122 ;  position:
                           3123 ;  x:
   6004 02                 3124 	.byte	2
                           3125 ;  y:
   6005 03                 3126 	.byte	3
   6006                    3127 ___compound_literal.184:
                           3128 ;  action:
   6006 02                 3129 	.byte	2
                           3130 ;  position:
                           3131 ;  x:
   6007 02                 3132 	.byte	2
                           3133 ;  y:
   6008 04                 3134 	.byte	4
   6009                    3135 ___compound_literal.185:
                           3136 ;  action:
   6009 02                 3137 	.byte	2
                           3138 ;  position:
                           3139 ;  x:
   600A 02                 3140 	.byte	2
                           3141 ;  y:
   600B 03                 3142 	.byte	3
   600C                    3143 ___compound_literal.186:
                           3144 ;  action:
   600C 02                 3145 	.byte	2
                           3146 ;  position:
                           3147 ;  x:
   600D 02                 3148 	.byte	2
                           3149 ;  y:
   600E 04                 3150 	.byte	4
   600F                    3151 ___compound_literal.187:
                           3152 ;  action:
   600F 02                 3153 	.byte	2
                           3154 ;  position:
                           3155 ;  x:
   6010 02                 3156 	.byte	2
                           3157 ;  y:
   6011 03                 3158 	.byte	3
   6012                    3159 ___compound_literal.188:
                           3160 ;  action:
   6012 02                 3161 	.byte	2
                           3162 ;  position:
                           3163 ;  x:
   6013 02                 3164 	.byte	2
                           3165 ;  y:
   6014 04                 3166 	.byte	4
   6015                    3167 ___compound_literal.189:
                           3168 ;  action:
   6015 02                 3169 	.byte	2
                           3170 ;  position:
                           3171 ;  x:
   6016 02                 3172 	.byte	2
                           3173 ;  y:
   6017 03                 3174 	.byte	3
   6018                    3175 ___compound_literal.190:
                           3176 ;  action:
   6018 02                 3177 	.byte	2
                           3178 ;  position:
                           3179 ;  x:
   6019 02                 3180 	.byte	2
                           3181 ;  y:
   601A 04                 3182 	.byte	4
   601B                    3183 ___compound_literal.191:
                           3184 ;  action:
   601B 02                 3185 	.byte	2
                           3186 ;  position:
                           3187 ;  x:
   601C 02                 3188 	.byte	2
                           3189 ;  y:
   601D 03                 3190 	.byte	3
   601E                    3191 ___compound_literal.192:
                           3192 ;  action:
   601E 02                 3193 	.byte	2
                           3194 ;  position:
                           3195 ;  x:
   601F 02                 3196 	.byte	2
                           3197 ;  y:
   6020 04                 3198 	.byte	4
   6021                    3199 ___compound_literal.193:
                           3200 ;  action:
   6021 01                 3201 	.byte	1
                           3202 ;  position:
                           3203 ;  x:
   6022 08                 3204 	.byte	8
                           3205 ;  y:
   6023 0B                 3206 	.byte	11
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
  2 _solutions         0E9B GR  |   2 _swatch_0_0        0003 GR
  2 _swatch_0_1        000B GR  |   2 _swatch_0_2        0013 GR
  2 _swatch_0_3        001B GR  |   2 _swatch_0_4        0023 GR
  2 _swatch_0_5        002B GR  |   2 _swatch_0_6        0033 GR
  2 _swatch_10_0       0173 GR  |   2 _swatch_10_1       017B GR
  2 _swatch_10_2       0183 GR  |   2 _swatch_11_0       018B GR
  2 _swatch_11_1       0193 GR  |   2 _swatch_11_2       0199 GR
  2 _swatch_12_0       019F GR  |   2 _swatch_12_1       01A7 GR
  2 _swatch_13_0       01B3 GR  |   2 _swatch_13_1       01BF GR
  2 _swatch_13_2       01C7 GR  |   2 _swatch_13_3       01D3 GR
  2 _swatch_13_4       01D9 GR  |   2 _swatch_13_5       01E1 GR
  2 _swatch_14_0       01F5 GR  |   2 _swatch_14_1       0201 GR
  2 _swatch_14_2       0209 GR  |   2 _swatch_15_0       020F GR
  2 _swatch_15_1       0217 GR  |   2 _swatch_15_2       022B GR
  2 _swatch_15_3       023F GR  |   2 _swatch_15_4       024D GR
  2 _swatch_16_0       0255 GR  |   2 _swatch_16_1       0261 GR
  2 _swatch_16_2       0269 GR  |   2 _swatch_17_0       0271 GR
  2 _swatch_17_1       0279 GR  |   2 _swatch_17_10      02C1 GR
  2 _swatch_17_11      02C9 GR  |   2 _swatch_17_12      02D1 GR
  2 _swatch_17_2       0281 GR  |   2 _swatch_17_3       0289 GR
  2 _swatch_17_4       0291 GR  |   2 _swatch_17_5       0299 GR
  2 _swatch_17_6       02A1 GR  |   2 _swatch_17_7       02A9 GR
  2 _swatch_17_8       02B1 GR  |   2 _swatch_17_9       02B9 GR
  2 _swatch_1_0        003B GR  |   2 _swatch_1_1        0041 GR
  2 _swatch_1_2        0047 GR  |   2 _swatch_1_3        004D GR
  2 _swatch_1_4        0053 GR  |   2 _swatch_2_0        005B GR
  2 _swatch_2_1        0063 GR  |   2 _swatch_2_2        006F GR
  2 _swatch_2_3        0077 GR  |   2 _swatch_2_4        0083 GR
  2 _swatch_2_5        008F GR  |   2 _swatch_3_0        0095 GR
  2 _swatch_3_1        009D GR  |   2 _swatch_3_2        00A5 GR
  2 _swatch_4_0        00AD GR  |   2 _swatch_4_1        00B5 GR
  2 _swatch_4_2        00BD GR  |   2 _swatch_4_3        00C5 GR
  2 _swatch_4_4        00CD GR  |   2 _swatch_4_5        00D5 GR
  2 _swatch_5_0        00DD GR  |   2 _swatch_5_1        00E3 GR
  2 _swatch_6_0        00E9 GR  |   2 _swatch_6_1        00F1 GR
  2 _swatch_6_2        00F9 GR  |   2 _swatch_6_3        00FF GR
  2 _swatch_7_0        0105 GR  |   2 _swatch_7_1        010B GR
  2 _swatch_7_2        0115 GR  |   2 _swatch_7_3        011F GR
  2 _swatch_7_4        0129 GR  |   2 _swatch_8_0        0131 GR
  2 _swatch_8_1        0139 GR  |   2 _swatch_8_2        0141 GR
  2 _swatch_8_3        0147 GR  |   2 _swatch_8_4        014D GR
  2 _swatch_9_0        0155 GR  |   2 _swatch_9_1        0161 GR
  2 _swatch_9_2        0169 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size 10E1   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

