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
   3CC8                      33 _levelCount:
   3CC8 0F                   34 	.byte	15
                             35 	.globl _levelOffset
   3CC9                      36 _levelOffset:
   3CC9 01                   37 	.byte	1
                             38 	.globl _nextBank
   3CCA                      39 _nextBank:
   3CCA 01                   40 	.byte	1
                             41 	.globl _swatch_1_0
   3CCB                      42 _swatch_1_0:
                             43 ;  type:
   3CCB 01                   44 	.byte	1
                             45 ;  position:
                             46 ;  x:
   3CCC 07                   47 	.byte	7
                             48 ;  y:
   3CCD 08                   49 	.byte	8
                             50 ;  fields_count:
   3CCE 02                   51 	.byte	2
                             52 ;  fields:
   3CCF 46 F7                53 	.word	___compound_literal.0
   3CD1 46 FA                54 	.word	___compound_literal.1
                             55 	.globl _swatch_1_1
   3CD3                      56 _swatch_1_1:
                             57 ;  type:
   3CD3 00                   58 	.byte	0
                             59 ;  position:
                             60 ;  x:
   3CD4 06                   61 	.byte	6
                             62 ;  y:
   3CD5 02                   63 	.byte	2
                             64 ;  fields_count:
   3CD6 02                   65 	.byte	2
                             66 ;  fields:
   3CD7 46 FD                67 	.word	___compound_literal.2
   3CD9 47 00                68 	.word	___compound_literal.3
                             69 	.globl _swatch_4_0
   3CDB                      70 _swatch_4_0:
                             71 ;  type:
   3CDB 00                   72 	.byte	0
                             73 ;  position:
                             74 ;  x:
   3CDC 08                   75 	.byte	8
                             76 ;  y:
   3CDD 08                   77 	.byte	8
                             78 ;  fields_count:
   3CDE 02                   79 	.byte	2
                             80 ;  fields:
   3CDF 47 03                81 	.word	___compound_literal.4
   3CE1 47 06                82 	.word	___compound_literal.5
                             83 	.globl _swatch_4_1
   3CE3                      84 _swatch_4_1:
                             85 ;  type:
   3CE3 00                   86 	.byte	0
                             87 ;  position:
                             88 ;  x:
   3CE4 06                   89 	.byte	6
                             90 ;  y:
   3CE5 03                   91 	.byte	3
                             92 ;  fields_count:
   3CE6 02                   93 	.byte	2
                             94 ;  fields:
   3CE7 47 09                95 	.word	___compound_literal.6
   3CE9 47 0C                96 	.word	___compound_literal.7
                             97 	.globl _swatch_4_2
   3CEB                      98 _swatch_4_2:
                             99 ;  type:
   3CEB 00                  100 	.byte	0
                            101 ;  position:
                            102 ;  x:
   3CEC 04                  103 	.byte	4
                            104 ;  y:
   3CED 06                  105 	.byte	6
                            106 ;  fields_count:
   3CEE 02                  107 	.byte	2
                            108 ;  fields:
   3CEF 47 0F               109 	.word	___compound_literal.8
   3CF1 47 12               110 	.word	___compound_literal.9
                            111 	.globl _swatch_4_3
   3CF3                     112 _swatch_4_3:
                            113 ;  type:
   3CF3 00                  114 	.byte	0
                            115 ;  position:
                            116 ;  x:
   3CF4 03                  117 	.byte	3
                            118 ;  y:
   3CF5 0E                  119 	.byte	14
                            120 ;  fields_count:
   3CF6 02                  121 	.byte	2
                            122 ;  fields:
   3CF7 47 15               123 	.word	___compound_literal.10
   3CF9 47 18               124 	.word	___compound_literal.11
                            125 	.globl _swatch_6_0
   3CFB                     126 _swatch_6_0:
                            127 ;  type:
   3CFB 01                  128 	.byte	1
                            129 ;  position:
                            130 ;  x:
   3CFC 04                  131 	.byte	4
                            132 ;  y:
   3CFD 09                  133 	.byte	9
                            134 ;  fields_count:
   3CFE 01                  135 	.byte	1
                            136 ;  fields:
   3CFF 47 1B               137 	.word	___compound_literal.12
                            138 	.globl _swatch_7_0
   3D01                     139 _swatch_7_0:
                            140 ;  type:
   3D01 02                  141 	.byte	2
                            142 ;  position:
                            143 ;  x:
   3D02 05                  144 	.byte	5
                            145 ;  y:
   3D03 04                  146 	.byte	4
                            147 ;  fields_count:
   3D04 02                  148 	.byte	2
                            149 ;  fields:
   3D05 47 1E               150 	.word	___compound_literal.13
   3D07 47 21               151 	.word	___compound_literal.14
                            152 	.globl _swatch_8_0
   3D09                     153 _swatch_8_0:
                            154 ;  type:
   3D09 02                  155 	.byte	2
                            156 ;  position:
                            157 ;  x:
   3D0A 05                  158 	.byte	5
                            159 ;  y:
   3D0B 0D                  160 	.byte	13
                            161 ;  fields_count:
   3D0C 02                  162 	.byte	2
                            163 ;  fields:
   3D0D 47 24               164 	.word	___compound_literal.15
   3D0F 47 27               165 	.word	___compound_literal.16
                            166 	.globl _swatch_9_0
   3D11                     167 _swatch_9_0:
                            168 ;  type:
   3D11 02                  169 	.byte	2
                            170 ;  position:
                            171 ;  x:
   3D12 08                  172 	.byte	8
                            173 ;  y:
   3D13 0D                  174 	.byte	13
                            175 ;  fields_count:
   3D14 02                  176 	.byte	2
                            177 ;  fields:
   3D15 47 2A               178 	.word	___compound_literal.17
   3D17 47 2D               179 	.word	___compound_literal.18
                            180 	.globl _swatch_9_1
   3D19                     181 _swatch_9_1:
                            182 ;  type:
   3D19 00                  183 	.byte	0
                            184 ;  position:
                            185 ;  x:
   3D1A 00                  186 	.byte	0
                            187 ;  y:
   3D1B 06                  188 	.byte	6
                            189 ;  fields_count:
   3D1C 02                  190 	.byte	2
                            191 ;  fields:
   3D1D 47 30               192 	.word	___compound_literal.19
   3D1F 47 33               193 	.word	___compound_literal.20
                            194 	.globl _swatch_9_2
   3D21                     195 _swatch_9_2:
                            196 ;  type:
   3D21 01                  197 	.byte	1
                            198 ;  position:
                            199 ;  x:
   3D22 00                  200 	.byte	0
                            201 ;  y:
   3D23 0C                  202 	.byte	12
                            203 ;  fields_count:
   3D24 04                  204 	.byte	4
                            205 ;  fields:
   3D25 47 36               206 	.word	___compound_literal.21
   3D27 47 39               207 	.word	___compound_literal.22
   3D29 47 3C               208 	.word	___compound_literal.23
   3D2B 47 3F               209 	.word	___compound_literal.24
                            210 	.globl _swatch_10_0
   3D2D                     211 _swatch_10_0:
                            212 ;  type:
   3D2D 00                  213 	.byte	0
                            214 ;  position:
                            215 ;  x:
   3D2E 03                  216 	.byte	3
                            217 ;  y:
   3D2F 08                  218 	.byte	8
                            219 ;  fields_count:
   3D30 02                  220 	.byte	2
                            221 ;  fields:
   3D31 47 42               222 	.word	___compound_literal.25
   3D33 47 45               223 	.word	___compound_literal.26
                            224 	.globl _swatch_11_0
   3D35                     225 _swatch_11_0:
                            226 ;  type:
   3D35 01                  227 	.byte	1
                            228 ;  position:
                            229 ;  x:
   3D36 09                  230 	.byte	9
                            231 ;  y:
   3D37 0D                  232 	.byte	13
                            233 ;  fields_count:
   3D38 01                  234 	.byte	1
                            235 ;  fields:
   3D39 47 48               236 	.word	___compound_literal.27
                            237 	.globl _swatch_11_1
   3D3B                     238 _swatch_11_1:
                            239 ;  type:
   3D3B 01                  240 	.byte	1
                            241 ;  position:
                            242 ;  x:
   3D3C 07                  243 	.byte	7
                            244 ;  y:
   3D3D 07                  245 	.byte	7
                            246 ;  fields_count:
   3D3E 01                  247 	.byte	1
                            248 ;  fields:
   3D3F 47 4B               249 	.word	___compound_literal.28
                            250 	.globl _swatch_13_0
   3D41                     251 _swatch_13_0:
                            252 ;  type:
   3D41 01                  253 	.byte	1
                            254 ;  position:
                            255 ;  x:
   3D42 06                  256 	.byte	6
                            257 ;  y:
   3D43 0C                  258 	.byte	12
                            259 ;  fields_count:
   3D44 02                  260 	.byte	2
                            261 ;  fields:
   3D45 47 4E               262 	.word	___compound_literal.29
   3D47 47 51               263 	.word	___compound_literal.30
                            264 	.globl _swatch_13_1
   3D49                     265 _swatch_13_1:
                            266 ;  type:
   3D49 01                  267 	.byte	1
                            268 ;  position:
                            269 ;  x:
   3D4A 00                  270 	.byte	0
                            271 ;  y:
   3D4B 0D                  272 	.byte	13
                            273 ;  fields_count:
   3D4C 02                  274 	.byte	2
                            275 ;  fields:
   3D4D 47 54               276 	.word	___compound_literal.31
   3D4F 47 57               277 	.word	___compound_literal.32
                            278 	.globl _swatch_14_0
   3D51                     279 _swatch_14_0:
                            280 ;  type:
   3D51 01                  281 	.byte	1
                            282 ;  position:
                            283 ;  x:
   3D52 08                  284 	.byte	8
                            285 ;  y:
   3D53 0C                  286 	.byte	12
                            287 ;  fields_count:
   3D54 04                  288 	.byte	4
                            289 ;  fields:
   3D55 47 5A               290 	.word	___compound_literal.33
   3D57 47 5D               291 	.word	___compound_literal.34
   3D59 47 60               292 	.word	___compound_literal.35
   3D5B 47 63               293 	.word	___compound_literal.36
                            294 	.globl _swatch_14_1
   3D5D                     295 _swatch_14_1:
                            296 ;  type:
   3D5D 00                  297 	.byte	0
                            298 ;  position:
                            299 ;  x:
   3D5E 06                  300 	.byte	6
                            301 ;  y:
   3D5F 08                  302 	.byte	8
                            303 ;  fields_count:
   3D60 04                  304 	.byte	4
                            305 ;  fields:
   3D61 47 66               306 	.word	___compound_literal.37
   3D63 47 69               307 	.word	___compound_literal.38
   3D65 47 6C               308 	.word	___compound_literal.39
   3D67 47 6F               309 	.word	___compound_literal.40
                            310 	.globl _swatch_14_2
   3D69                     311 _swatch_14_2:
                            312 ;  type:
   3D69 02                  313 	.byte	2
                            314 ;  position:
                            315 ;  x:
   3D6A 04                  316 	.byte	4
                            317 ;  y:
   3D6B 07                  318 	.byte	7
                            319 ;  fields_count:
   3D6C 02                  320 	.byte	2
                            321 ;  fields:
   3D6D 47 72               322 	.word	___compound_literal.41
   3D6F 47 75               323 	.word	___compound_literal.42
                            324 	.globl _swatch_14_3
   3D71                     325 _swatch_14_3:
                            326 ;  type:
   3D71 00                  327 	.byte	0
                            328 ;  position:
                            329 ;  x:
   3D72 02                  330 	.byte	2
                            331 ;  y:
   3D73 0B                  332 	.byte	11
                            333 ;  fields_count:
   3D74 02                  334 	.byte	2
                            335 ;  fields:
   3D75 47 78               336 	.word	___compound_literal.43
   3D77 47 7B               337 	.word	___compound_literal.44
                            338 	.globl _swatch_14_4
   3D79                     339 _swatch_14_4:
                            340 ;  type:
   3D79 00                  341 	.byte	0
                            342 ;  position:
                            343 ;  x:
   3D7A 00                  344 	.byte	0
                            345 ;  y:
   3D7B 0B                  346 	.byte	11
                            347 ;  fields_count:
   3D7C 02                  348 	.byte	2
                            349 ;  fields:
   3D7D 47 7E               350 	.word	___compound_literal.45
   3D7F 47 81               351 	.word	___compound_literal.46
                            352 	.globl _level0
   3D81                     353 LC0:
   3D81 20 20 20 20 20 20   354 	.ascii "                         bbb      bbbb      bbbb"
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 62 62
        62 62 20 20 20 20
        20 20 62 62 62 62
   3DB1 20 20 20 20 20 20   355 	.ascii "      bbb       bbb      bbbb     bbbb      bebb"
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 62 62 62 62 20
        20 20 20 20 62 62
        62 62 20 20 20 20
        20 20 62 65 62 62
   3DE1 20 20 20 20 20 20   356 	.ascii "      bbbb       bb                             "
        62 62 62 62 20 20
        20 20 20 20 20 62
        62 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
   3E11 20 20 20 20 20 20   357 	.ascii "      \0"
        00
   3E18                     358 _level0:
                            359 ;  geometry:
   3E18 3D 81               360 	.word	LC0
                            361 ;  start:
                            362 ;  x:
   3E1A 06                  363 	.byte	6
                            364 ;  y:
   3E1B 03                  365 	.byte	3
                            366 ;  swatches_count:
   3E1C 00                  367 	.byte	0
                            368 	.globl _level1
   3E1D                     369 LC1:
   3E1D 20 20 20 62 62 62   370 	.ascii "   bbbbb     bbbbb     bbbsb     bbbbb      l   "
        62 62 20 20 20 20
        20 62 62 62 62 62
        20 20 20 20 20 62
        62 62 73 62 20 20
        20 20 20 62 62 62
        62 62 20 20 20 20
        20 20 6C 20 20 20
   3E4D 20 20 20 20 20 20   371 	.ascii "      r        bbbbbb    bbbbbb    bbbbhb    bbb"
        72 20 20 20 20 20
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 62 62 62 62
        62 20 20 20 20 62
        62 62 62 68 62 20
        20 20 20 62 62 62
   3E7D 62 62 62 20 20 20   372 	.ascii "bbb     l         r         bbbbb     bbbeb     "
        20 20 6C 20 20 20
        20 20 20 20 20 20
        72 20 20 20 20 20
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 62 62 62 65
        62 20 20 20 20 20
   3EAD 62 62 62 62 62 20   373 	.ascii "bbbbb \0"
        00
   3EB4                     374 _level1:
                            375 ;  geometry:
   3EB4 3E 1D               376 	.word	LC1
                            377 ;  start:
                            378 ;  x:
   3EB6 04                  379 	.byte	4
                            380 ;  y:
   3EB7 01                  381 	.byte	1
                            382 ;  swatches_count:
   3EB8 02                  383 	.byte	2
                            384 ;  swatches:
   3EB9 3C CB               385 	.word	_swatch_1_0
   3EBB 3C D3               386 	.word	_swatch_1_1
                            387 	.globl _level2
   3EBD                     388 LC2:
   3EBD 20 20 20 62 62 62   389 	.ascii "   bbbb      bbbb      bbbb      bbbb        b  "
        62 20 20 20 20 20
        20 62 62 62 62 20
        20 20 20 20 20 62
        62 62 62 20 20 20
        20 20 20 62 62 62
        62 20 20 20 20 20
        20 20 20 62 20 20
   3EED 20 20 20 20 20 20   390 	.ascii "       b         bbb       bbb       bbb        "
        20 62 20 20 20 20
        20 20 20 20 20 62
        62 62 20 20 20 20
        20 20 20 62 62 62
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 20 20
   3F1D 20 62 20 20 20 20   391 	.ascii " b         b     bbbbb    bbbbbb    bbeb      bb"
        20 20 20 20 20 62
        20 20 20 20 20 62
        62 62 62 62 20 20
        20 20 62 62 62 62
        62 62 20 20 20 20
        62 62 65 62 20 20
        20 20 20 20 62 62
   3F4D 62 62 20 20 20 20   392 	.ascii "bb    \0"
        00
   3F54                     393 _level2:
                            394 ;  geometry:
   3F54 3E BD               395 	.word	LC2
                            396 ;  start:
                            397 ;  x:
   3F56 04                  398 	.byte	4
                            399 ;  y:
   3F57 01                  400 	.byte	1
                            401 ;  swatches_count:
   3F58 00                  402 	.byte	0
                            403 	.globl _level3
   3F59                     404 LC3:
   3F59 20 20 62 62 62 62   405 	.ascii "  bbbbb     bbbbb     bbbbb         bff        f"
        62 20 20 20 20 20
        62 62 62 62 62 20
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 20 20 20 20
        62 66 66 20 20 20
        20 20 20 20 20 66
   3F89 66 20 62 62 62 62   406 	.ascii "f bbbb   ff bebb   ff bbbb   ff   bb   ff   ff  "
        20 20 20 66 66 20
        62 65 62 62 20 20
        20 66 66 20 62 62
        62 62 20 20 20 66
        66 20 20 20 62 62
        20 20 20 66 66 20
        20 20 66 66 20 20
   3FB9 62 66 66 20 66 66   407 	.ascii "bff ffffbbb   ffffbbb   fbff      ffff          "
        66 66 62 62 62 20
        20 20 66 66 66 66
        62 62 62 20 20 20
        66 62 66 66 20 20
        20 20 20 20 66 66
        66 66 20 20 20 20
        20 20 20 20 20 20
   3FE9 20 20 20 20 20 20   408 	.ascii "      \0"
        00
   3FF0                     409 _level3:
                            410 ;  geometry:
   3FF0 3F 59               411 	.word	LC3
                            412 ;  start:
                            413 ;  x:
   3FF2 03                  414 	.byte	3
                            415 ;  y:
   3FF3 01                  416 	.byte	1
                            417 ;  swatches_count:
   3FF4 00                  418 	.byte	0
                            419 	.globl _level4
   3FF5                     420 LC4:
   3FF5 62 62 62 20 20 20   421 	.ascii "bbb       beb  bbbb bbb  bbbb bb  bbsbb  b  bbbb"
        20 20 20 20 62 65
        62 20 20 62 62 62
        62 20 62 62 62 20
        20 62 62 62 62 20
        62 62 20 20 62 62
        73 62 62 20 20 62
        20 20 62 62 62 62
   4025 62 20 20 6B 20 20   422 	.ascii "b  k  b   k  q  s   q  b  b   b  b  k   s  b  q "
        62 20 20 20 6B 20
        20 71 20 20 73 20
        20 20 71 20 20 62
        20 20 62 20 20 20
        62 20 20 62 20 20
        6B 20 20 20 73 20
        20 62 20 20 71 20
   4055 20 20 62 20 20 62   423 	.ascii "  b  bbbb   b  bbbb   bb bbbb  bbb  bb   bbb  bs"
        62 62 62 20 20 20
        62 20 20 62 62 62
        62 20 20 20 62 62
        20 62 62 62 62 20
        20 62 62 62 20 20
        62 62 20 20 20 62
        62 62 20 20 62 73
   4085 20 20 20 62 62 62   424 	.ascii "   bbb\0"
        00
   408C                     425 _level4:
                            426 ;  geometry:
   408C 3F F5               427 	.word	LC4
                            428 ;  start:
                            429 ;  x:
   408E 08                  430 	.byte	8
                            431 ;  y:
   408F 0D                  432 	.byte	13
                            433 ;  swatches_count:
   4090 04                  434 	.byte	4
                            435 ;  swatches:
   4091 3C DB               436 	.word	_swatch_4_0
   4093 3C E3               437 	.word	_swatch_4_1
   4095 3C EB               438 	.word	_swatch_4_2
   4097 3C F3               439 	.word	_swatch_4_3
                            440 	.globl _level5
   4099                     441 LC5:
   4099 20 20 20 20 20 20   442 	.ascii "      b         b         b         b       bbb "
        62 20 20 20 20 20
        20 20 20 20 62 20
        20 20 20 20 20 20
        20 20 62 20 20 20
        20 20 20 20 20 20
        62 20 20 20 20 20
        20 20 62 62 62 20
   40C9 20 20 20 20 20 20   443 	.ascii "      bbbbbb bbbbb   bbbb      bbbb    bbbbbbb  "
        62 62 62 62 62 62
        20 62 62 62 62 62
        20 20 20 62 62 62
        62 20 20 20 20 20
        20 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 62 20 20
   40F9 20 62 62 62 20 62   444 	.ascii " bbb bbb   bbb     bbb      bbbb      beb       "
        62 62 20 20 20 62
        62 62 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 62 62
        62 62 20 20 20 20
        20 20 62 65 62 20
        20 20 20 20 20 20
   4129 62 62 62 20 20 20   445 	.ascii "bbb   \0"
        00
   4130                     446 _level5:
                            447 ;  geometry:
   4130 40 99               448 	.word	LC5
                            449 ;  start:
                            450 ;  x:
   4132 06                  451 	.byte	6
                            452 ;  y:
   4133 00                  453 	.byte	0
                            454 ;  swatches_count:
   4134 00                  455 	.byte	0
                            456 	.globl _level6
   4135                     457 LC6:
   4135 20 20 20 62 62 62   458 	.ascii "   bbbb     bbbbb    bbbbbb    bl  b     b   b  "
        62 20 20 20 20 20
        62 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 6C 20 20 62
        20 20 20 20 20 62
        20 20 20 62 20 20
   4165 20 20 20 62 20 20   459 	.ascii "   b   b     b   b     bbbbb       bbbbbb    bh "
        20 62 20 20 20 20
        20 62 20 20 20 62
        20 20 20 20 20 62
        62 62 62 62 20 20
        20 20 20 20 20 62
        62 62 62 62 62 20
        20 20 20 62 68 20
   4195 20 62 62 20 20 20   460 	.ascii " bb        bb       bbb    bbbb      bbeb      b"
        20 20 20 20 20 62
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 62 62 62
        62 20 20 20 20 20
        20 62 62 65 62 20
        20 20 20 20 20 62
   41C5 62 62 62 20 20 20   461 	.ascii "bbb   \0"
        00
   41CC                     462 _level6:
                            463 ;  geometry:
   41CC 41 35               464 	.word	LC6
                            465 ;  start:
                            466 ;  x:
   41CE 05                  467 	.byte	5
                            468 ;  y:
   41CF 01                  469 	.byte	1
                            470 ;  swatches_count:
   41D0 01                  471 	.byte	1
                            472 ;  swatches:
   41D1 3C FB               473 	.word	_swatch_6_0
                            474 	.globl _level7
   41D3                     475 LC7:
   41D3 20 20 20 20 62 62   476 	.ascii "    bbb       bbb       bbb       bbb       bvb "
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 76 62 20
   4203 20 20 20 20 20 20   477 	.ascii "      bbb                                  bbbbb"
        62 62 62 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 62 62 62 62 62
   4233 62 62 62 62 20 62   478 	.ascii "bbbb bbbbbbbbb bbbbbbbbb    bbb       beb       "
        62 62 62 62 62 62
        62 62 20 62 62 62
        62 62 62 62 62 62
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 65 62 20
        20 20 20 20 20 20
   4263 62 62 62 20 20 20   479 	.ascii "bbb   \0"
        00
   426A                     480 _level7:
                            481 ;  geometry:
   426A 41 D3               482 	.word	LC7
                            483 ;  start:
                            484 ;  x:
   426C 05                  485 	.byte	5
                            486 ;  y:
   426D 01                  487 	.byte	1
                            488 ;  swatches_count:
   426E 01                  489 	.byte	1
                            490 ;  swatches:
   426F 3D 01               491 	.word	_swatch_7_0
                            492 	.globl _level8
   4271                     493 LC8:
   4271 20 20 20 20 62 62   494 	.ascii "    bbb       bbb       bbb       bbb       b   "
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 20 20 20
   42A1 20 20 20 20 20 20   495 	.ascii "      b       bbb       bebbb     bbb         b "
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 65 62 62 62 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 20 20 62 20
   42D1 20 20 20 20 20 20   496 	.ascii "        b         bbb       bbb       bvb       "
        20 20 62 20 20 20
        20 20 20 20 20 20
        62 62 62 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 76 62 20
        20 20 20 20 20 20
   4301 62 62 62 20 20 20   497 	.ascii "bbb   \0"
        00
   4308                     498 _level8:
                            499 ;  geometry:
   4308 42 71               500 	.word	LC8
                            501 ;  start:
                            502 ;  x:
   430A 05                  503 	.byte	5
                            504 ;  y:
   430B 01                  505 	.byte	1
                            506 ;  swatches_count:
   430C 01                  507 	.byte	1
                            508 ;  swatches:
   430D 3D 09               509 	.word	_swatch_8_0
                            510 	.globl _level9
   430F                     511 LC9:
   430F 20 20 20 20 20 20   512 	.ascii "                 bbb       beb       bbb        "
        20 20 20 20 20 20
        20 20 20 20 20 62
        62 62 20 20 20 20
        20 20 20 62 65 62
        20 20 20 20 20 20
        20 62 62 62 20 20
        20 20 20 20 20 20
   433F 6C 20 62 62 20 20   513 	.ascii "l bb      r sb      b  b      l  b      r bb    "
        20 20 20 20 72 20
        73 62 20 20 20 20
        20 20 62 20 20 62
        20 20 20 20 20 20
        6C 20 20 62 20 20
        20 20 20 20 72 20
        62 62 20 20 20 20
   436F 20 62 62 62 62 20   514 	.ascii " bbbb     bbbbb     bbbbhbb  bbbbbbbbbbbllvb    "
        20 20 20 20 62 62
        62 62 62 20 20 20
        20 20 62 62 62 62
        68 62 62 20 20 62
        62 62 62 62 62 62
        62 62 62 62 6C 6C
        76 62 20 20 20 20
   439F 20 20 20 20 62 62   515 	.ascii "    bb\0"
        00
   43A6                     516 _level9:
                            517 ;  geometry:
   43A6 43 0F               518 	.word	LC9
                            519 ;  start:
                            520 ;  x:
   43A8 08                  521 	.byte	8
                            522 ;  y:
   43A9 0A                  523 	.byte	10
                            524 ;  swatches_count:
   43AA 03                  525 	.byte	3
                            526 ;  swatches:
   43AB 3D 11               527 	.word	_swatch_9_0
   43AD 3D 19               528 	.word	_swatch_9_1
   43AF 3D 21               529 	.word	_swatch_9_2
                            530 	.globl _level10
   43B1                     531 LC10:
   43B1 20 20 20 20 20 20   532 	.ascii "                        b         bbbbbb    b  b"
        20 20 20 20 20 20
        20 20 20 20 20 20
        20 20 20 20 20 20
        62 20 20 20 20 20
        20 20 20 20 62 62
        62 62 62 62 20 20
        20 20 62 20 20 62
   43E1 65 62 20 20 20 20   533 	.ascii "eb    b  bbb    b   kk bbbbbb    bbsbbb    bb   "
        62 20 20 62 62 62
        20 20 20 20 62 20
        20 20 6B 6B 20 62
        62 62 62 62 62 20
        20 20 20 62 62 73
        62 62 62 20 20 20
        20 62 62 20 20 20
   4411 62 20 20 20 62 62   534 	.ascii "b   bbb   b   bb  bbb   bb  bbb    bbbb         "
        62 20 20 20 62 20
        20 20 62 62 20 20
        62 62 62 20 20 20
        62 62 20 20 62 62
        62 20 20 20 20 62
        62 62 62 20 20 20
        20 20 20 20 20 20
   4441 20 20 20 20 20 20   535 	.ascii "      \0"
        00
   4448                     536 _level10:
                            537 ;  geometry:
   4448 43 B1               538 	.word	LC10
                            539 ;  start:
                            540 ;  x:
   444A 04                  541 	.byte	4
                            542 ;  y:
   444B 02                  543 	.byte	2
                            544 ;  swatches_count:
   444C 01                  545 	.byte	1
                            546 ;  swatches:
   444D 3D 2D               547 	.word	_swatch_10_0
                            548 	.globl _level11
   444F                     549 LC11:
   444F 20 20 20 20 20 20   550 	.ascii "            bb        bbb       bbb       bbbbb "
        20 20 20 20 20 20
        62 62 20 20 20 20
        20 20 20 20 62 62
        62 20 20 20 20 20
        20 20 62 62 62 20
        20 20 20 20 20 20
        62 62 62 62 62 20
   447F 20 20 20 20 20 20   551 	.ascii "      beb   bb  bbbbb bbb  lbhb bbb   bbb   b   "
        62 65 62 20 20 20
        62 62 20 20 62 62
        62 62 62 20 62 62
        62 20 20 6C 62 68
        62 20 62 62 62 20
        20 20 62 62 62 20
        20 20 62 20 20 20
   44AF 20 62 20 20 20 20   552 	.ascii " b    bbb  b    bbbbbbb    bbbbbb    bb  lbh    "
        62 62 62 20 20 62
        20 20 20 20 62 62
        62 62 62 62 62 20
        20 20 20 62 62 62
        62 62 62 20 20 20
        20 62 62 20 20 6C
        62 68 20 20 20 20
   44DF 20 20 20 20 20 20   553 	.ascii "      \0"
        00
   44E6                     554 _level11:
                            555 ;  geometry:
   44E6 44 4F               556 	.word	LC11
                            557 ;  start:
                            558 ;  x:
   44E8 03                  559 	.byte	3
                            560 ;  y:
   44E9 03                  561 	.byte	3
                            562 ;  swatches_count:
   44EA 02                  563 	.byte	2
                            564 ;  swatches:
   44EB 3D 35               565 	.word	_swatch_11_0
   44ED 3D 3B               566 	.word	_swatch_11_1
                            567 	.globl _level12
   44EF                     568 LC12:
   44EF 20 20 20 20 20 20   569 	.ascii "              bbbbbb    bbbbbb  bbbbb  bbbb  f  "
        20 20 20 20 20 20
        20 20 62 62 62 62
        62 62 20 20 20 20
        62 62 62 62 62 62
        20 20 62 62 62 62
        62 20 20 62 62 62
        62 20 20 66 20 20
   451F 20 66 62 62 62 20   570 	.ascii " fbbb  f   bbfffff   b fffbbb  b fbfbeb  bbfffbb"
        20 66 20 20 20 62
        62 66 66 66 66 66
        20 20 20 62 20 66
        66 66 62 62 62 20
        20 62 20 66 62 66
        62 65 62 20 20 62
        62 66 66 66 62 62
   454F 62 20 20 66 62 66   571 	.ascii "b  fbfff     b ffb    bb   bbbbbbb     bbbbb    "
        66 66 20 20 20 20
        20 62 20 66 66 62
        20 20 20 20 62 62
        20 20 20 62 62 62
        62 62 62 62 20 20
        20 20 20 62 62 62
        62 62 20 20 20 20
   457F 20 62 62 62 20 20   572 	.ascii " bbb  \0"
        00
   4586                     573 _level12:
                            574 ;  geometry:
   4586 44 EF               575 	.word	LC12
                            576 ;  start:
                            577 ;  x:
   4588 06                  578 	.byte	6
                            579 ;  y:
   4589 0D                  580 	.byte	13
                            581 ;  swatches_count:
   458A 00                  582 	.byte	0
                            583 	.globl _level13
   458B                     584 LC13:
   458B 20 20 62 62 62 62   585 	.ascii "  bbbbbb   bb   ll  bbb   rr  beb   bbb bbb   bb"
        62 62 20 20 20 62
        62 20 20 20 6C 6C
        20 20 62 62 62 20
        20 20 72 72 20 20
        62 65 62 20 20 20
        62 62 62 20 62 62
        62 20 20 20 62 62
   45BB 62 20 20 20 20 20   586 	.ascii "b       bbb        b         b  bbbb   bbbbbbb  "
        20 20 62 62 62 20
        20 20 20 20 20 20
        20 62 20 20 20 20
        20 20 20 20 20 62
        20 20 62 62 62 62
        20 20 20 62 62 62
        62 62 62 62 20 20
   45EB 20 62 62 62 62 62   587 	.ascii " bbbbbbb   bbbb  b   b  b  bbbhb  h  bbbbb      "
        62 62 20 20 20 62
        62 62 62 20 20 62
        20 20 20 62 20 20
        62 20 20 62 62 62
        68 62 20 20 68 20
        20 62 62 62 62 62
        20 20 20 20 20 20
   461B 20 20 20 20 20 20   588 	.ascii "      \0"
        00
   4622                     589 _level13:
                            590 ;  geometry:
   4622 45 8B               591 	.word	LC13
                            592 ;  start:
                            593 ;  x:
   4624 07                  594 	.byte	7
                            595 ;  y:
   4625 04                  596 	.byte	4
                            597 ;  swatches_count:
   4626 02                  598 	.byte	2
                            599 ;  swatches:
   4627 3D 41               600 	.word	_swatch_13_0
   4629 3D 49               601 	.word	_swatch_13_1
                            602 	.globl _level14
   462B                     603 LC14:
   462B 62 62 62 20 20 62   604 	.ascii "bbb  bbb  bbbbbbbb  bbb   bl   b    br   b    bb"
        62 62 20 20 62 62
        62 62 62 62 62 62
        20 20 62 62 62 20
        20 20 62 6C 20 20
        20 62 20 20 20 20
        62 72 20 20 20 62
        20 20 20 20 62 62
   465B 62 20 20 62 20 20   605 	.ascii "b  b      k bbb     q bbbbv  bbbbbb   sbbb k    "
        20 20 20 20 6B 20
        62 62 62 20 20 20
        20 20 71 20 62 62
        62 62 76 20 20 62
        62 62 62 62 62 20
        20 20 73 62 62 62
        20 6B 20 20 20 20
   468B 20 62 62 62 20 71   606 	.ascii " bbb q      l sbs     r beb    bhbbbb    bbb    "
        20 20 20 20 20 20
        6C 20 73 62 73 20
        20 20 20 20 72 20
        62 65 62 20 20 20
        20 62 68 62 62 62
        62 20 20 20 20 62
        62 62 20 20 20 20
   46BB 20 20 20 62 62 62   607 	.ascii "   bbb\0"
        00
   46C2                     608 _level14:
                            609 ;  geometry:
   46C2 46 2B               610 	.word	LC14
                            611 ;  start:
                            612 ;  x:
   46C4 01                  613 	.byte	1
                            614 ;  y:
   46C5 01                  615 	.byte	1
                            616 ;  swatches_count:
   46C6 05                  617 	.byte	5
                            618 ;  swatches:
   46C7 3D 51               619 	.word	_swatch_14_0
   46C9 3D 5D               620 	.word	_swatch_14_1
   46CB 3D 69               621 	.word	_swatch_14_2
   46CD 3D 71               622 	.word	_swatch_14_3
   46CF 3D 79               623 	.word	_swatch_14_4
                            624 	.globl _levels
   46D1                     625 _levels:
   46D1 3E 18               626 	.word	_level0
   46D3 3E B4               627 	.word	_level1
   46D5 3F 54               628 	.word	_level2
   46D7 3F F0               629 	.word	_level3
   46D9 40 8C               630 	.word	_level4
   46DB 41 30               631 	.word	_level5
   46DD 41 CC               632 	.word	_level6
   46DF 42 6A               633 	.word	_level7
   46E1 43 08               634 	.word	_level8
   46E3 43 A6               635 	.word	_level9
   46E5 44 48               636 	.word	_level10
   46E7 44 E6               637 	.word	_level11
   46E9 45 86               638 	.word	_level12
   46EB 46 22               639 	.word	_level13
   46ED 46 C2               640 	.word	_level14
                            641 	.globl _solutions
   46EF                     642 LC15:
   46EF 75 6C 6C 75 75 6C   643 	.ascii "ulluulu\0"
        75 00
                            644 	.area .data
   C884                     645 _solutions:
   C884 46 EF               646 	.word	LC15
                            647 	.area .text
   46F7                     648 ___compound_literal.0:
                            649 ;  action:
   46F7 00                  650 	.byte	0
                            651 ;  position:
                            652 ;  x:
   46F8 04                  653 	.byte	4
                            654 ;  y:
   46F9 0A                  655 	.byte	10
   46FA                     656 ___compound_literal.1:
                            657 ;  action:
   46FA 00                  658 	.byte	0
                            659 ;  position:
                            660 ;  x:
   46FB 04                  661 	.byte	4
                            662 ;  y:
   46FC 0B                  663 	.byte	11
   46FD                     664 ___compound_literal.2:
                            665 ;  action:
   46FD 00                  666 	.byte	0
                            667 ;  position:
                            668 ;  x:
   46FE 04                  669 	.byte	4
                            670 ;  y:
   46FF 04                  671 	.byte	4
   4700                     672 ___compound_literal.3:
                            673 ;  action:
   4700 00                  674 	.byte	0
                            675 ;  position:
                            676 ;  x:
   4701 04                  677 	.byte	4
                            678 ;  y:
   4702 05                  679 	.byte	5
   4703                     680 ___compound_literal.4:
                            681 ;  action:
   4703 00                  682 	.byte	0
                            683 ;  position:
                            684 ;  x:
   4704 08                  685 	.byte	8
                            686 ;  y:
   4705 06                  687 	.byte	6
   4706                     688 ___compound_literal.5:
                            689 ;  action:
   4706 00                  690 	.byte	0
                            691 ;  position:
                            692 ;  x:
   4707 08                  693 	.byte	8
                            694 ;  y:
   4708 05                  695 	.byte	5
   4709                     696 ___compound_literal.6:
                            697 ;  action:
   4709 01                  698 	.byte	1
                            699 ;  position:
                            700 ;  x:
   470A 01                  701 	.byte	1
                            702 ;  y:
   470B 05                  703 	.byte	5
   470C                     704 ___compound_literal.7:
                            705 ;  action:
   470C 01                  706 	.byte	1
                            707 ;  position:
                            708 ;  x:
   470D 01                  709 	.byte	1
                            710 ;  y:
   470E 06                  711 	.byte	6
   470F                     712 ___compound_literal.8:
                            713 ;  action:
   470F 02                  714 	.byte	2
                            715 ;  position:
                            716 ;  x:
   4710 01                  717 	.byte	1
                            718 ;  y:
   4711 05                  719 	.byte	5
   4712                     720 ___compound_literal.9:
                            721 ;  action:
   4712 02                  722 	.byte	2
                            723 ;  position:
                            724 ;  x:
   4713 01                  725 	.byte	1
                            726 ;  y:
   4714 06                  727 	.byte	6
   4715                     728 ___compound_literal.10:
                            729 ;  action:
   4715 00                  730 	.byte	0
                            731 ;  position:
                            732 ;  x:
   4716 01                  733 	.byte	1
                            734 ;  y:
   4717 05                  735 	.byte	5
   4718                     736 ___compound_literal.11:
                            737 ;  action:
   4718 00                  738 	.byte	0
                            739 ;  position:
                            740 ;  x:
   4719 01                  741 	.byte	1
                            742 ;  y:
   471A 06                  743 	.byte	6
   471B                     744 ___compound_literal.12:
                            745 ;  action:
   471B 00                  746 	.byte	0
                            747 ;  position:
                            748 ;  x:
   471C 02                  749 	.byte	2
                            750 ;  y:
   471D 03                  751 	.byte	3
   471E                     752 ___compound_literal.13:
                            753 ;  action:
   471E 03                  754 	.byte	3
                            755 ;  position:
                            756 ;  x:
   471F 08                  757 	.byte	8
                            758 ;  y:
   4720 0A                  759 	.byte	10
   4721                     760 ___compound_literal.14:
                            761 ;  action:
   4721 04                  762 	.byte	4
                            763 ;  position:
                            764 ;  x:
   4722 02                  765 	.byte	2
                            766 ;  y:
   4723 0A                  767 	.byte	10
   4724                     768 ___compound_literal.15:
                            769 ;  action:
   4724 03                  770 	.byte	3
                            771 ;  position:
                            772 ;  x:
   4725 05                  773 	.byte	5
                            774 ;  y:
   4726 0C                  775 	.byte	12
   4727                     776 ___compound_literal.16:
                            777 ;  action:
   4727 04                  778 	.byte	4
                            779 ;  position:
                            780 ;  x:
   4728 05                  781 	.byte	5
                            782 ;  y:
   4729 02                  783 	.byte	2
   472A                     784 ___compound_literal.17:
                            785 ;  action:
   472A 03                  786 	.byte	3
                            787 ;  position:
                            788 ;  x:
   472B 08                  789 	.byte	8
                            790 ;  y:
   472C 0D                  791 	.byte	13
   472D                     792 ___compound_literal.18:
                            793 ;  action:
   472D 04                  794 	.byte	4
                            795 ;  position:
                            796 ;  x:
   472E 08                  797 	.byte	8
                            798 ;  y:
   472F 0A                  799 	.byte	10
   4730                     800 ___compound_literal.19:
                            801 ;  action:
   4730 00                  802 	.byte	0
                            803 ;  position:
                            804 ;  x:
   4731 08                  805 	.byte	8
                            806 ;  y:
   4732 04                  807 	.byte	4
   4733                     808 ___compound_literal.20:
                            809 ;  action:
   4733 00                  810 	.byte	0
                            811 ;  position:
                            812 ;  x:
   4734 08                  813 	.byte	8
                            814 ;  y:
   4735 05                  815 	.byte	5
   4736                     816 ___compound_literal.21:
                            817 ;  action:
   4736 00                  818 	.byte	0
                            819 ;  position:
                            820 ;  x:
   4737 08                  821 	.byte	8
                            822 ;  y:
   4738 07                  823 	.byte	7
   4739                     824 ___compound_literal.22:
                            825 ;  action:
   4739 00                  826 	.byte	0
                            827 ;  position:
                            828 ;  x:
   473A 08                  829 	.byte	8
                            830 ;  y:
   473B 08                  831 	.byte	8
   473C                     832 ___compound_literal.23:
                            833 ;  action:
   473C 00                  834 	.byte	0
                            835 ;  position:
                            836 ;  x:
   473D 07                  837 	.byte	7
                            838 ;  y:
   473E 0D                  839 	.byte	13
   473F                     840 ___compound_literal.24:
                            841 ;  action:
   473F 00                  842 	.byte	0
                            843 ;  position:
                            844 ;  x:
   4740 06                  845 	.byte	6
                            846 ;  y:
   4741 0D                  847 	.byte	13
   4742                     848 ___compound_literal.25:
                            849 ;  action:
   4742 02                  850 	.byte	2
                            851 ;  position:
                            852 ;  x:
   4743 09                  853 	.byte	9
                            854 ;  y:
   4744 06                  855 	.byte	6
   4745                     856 ___compound_literal.26:
                            857 ;  action:
   4745 02                  858 	.byte	2
                            859 ;  position:
                            860 ;  x:
   4746 08                  861 	.byte	8
                            862 ;  y:
   4747 06                  863 	.byte	6
   4748                     864 ___compound_literal.27:
                            865 ;  action:
   4748 00                  866 	.byte	0
                            867 ;  position:
                            868 ;  x:
   4749 05                  869 	.byte	5
                            870 ;  y:
   474A 07                  871 	.byte	7
   474B                     872 ___compound_literal.28:
                            873 ;  action:
   474B 00                  874 	.byte	0
                            875 ;  position:
                            876 ;  x:
   474C 07                  877 	.byte	7
                            878 ;  y:
   474D 0D                  879 	.byte	13
   474E                     880 ___compound_literal.29:
                            881 ;  action:
   474E 00                  882 	.byte	0
                            883 ;  position:
                            884 ;  x:
   474F 07                  885 	.byte	7
                            886 ;  y:
   4750 01                  887 	.byte	1
   4751                     888 ___compound_literal.30:
                            889 ;  action:
   4751 00                  890 	.byte	0
                            891 ;  position:
                            892 ;  x:
   4752 07                  893 	.byte	7
                            894 ;  y:
   4753 02                  895 	.byte	2
   4754                     896 ___compound_literal.31:
                            897 ;  action:
   4754 00                  898 	.byte	0
                            899 ;  position:
                            900 ;  x:
   4755 06                  901 	.byte	6
                            902 ;  y:
   4756 01                  903 	.byte	1
   4757                     904 ___compound_literal.32:
                            905 ;  action:
   4757 00                  906 	.byte	0
                            907 ;  position:
                            908 ;  x:
   4758 06                  909 	.byte	6
                            910 ;  y:
   4759 02                  911 	.byte	2
   475A                     912 ___compound_literal.33:
                            913 ;  action:
   475A 00                  914 	.byte	0
                            915 ;  position:
                            916 ;  x:
   475B 07                  917 	.byte	7
                            918 ;  y:
   475C 02                  919 	.byte	2
   475D                     920 ___compound_literal.34:
                            921 ;  action:
   475D 00                  922 	.byte	0
                            923 ;  position:
                            924 ;  x:
   475E 07                  925 	.byte	7
                            926 ;  y:
   475F 03                  927 	.byte	3
   4760                     928 ___compound_literal.35:
                            929 ;  action:
   4760 00                  930 	.byte	0
                            931 ;  position:
                            932 ;  x:
   4761 08                  933 	.byte	8
                            934 ;  y:
   4762 05                  935 	.byte	5
   4763                     936 ___compound_literal.36:
                            937 ;  action:
   4763 00                  938 	.byte	0
                            939 ;  position:
                            940 ;  x:
   4764 08                  941 	.byte	8
                            942 ;  y:
   4765 06                  943 	.byte	6
   4766                     944 ___compound_literal.37:
                            945 ;  action:
   4766 00                  946 	.byte	0
                            947 ;  position:
                            948 ;  x:
   4767 08                  949 	.byte	8
                            950 ;  y:
   4768 05                  951 	.byte	5
   4769                     952 ___compound_literal.38:
                            953 ;  action:
   4769 00                  954 	.byte	0
                            955 ;  position:
                            956 ;  x:
   476A 08                  957 	.byte	8
                            958 ;  y:
   476B 06                  959 	.byte	6
   476C                     960 ___compound_literal.39:
                            961 ;  action:
   476C 00                  962 	.byte	0
                            963 ;  position:
                            964 ;  x:
   476D 08                  965 	.byte	8
                            966 ;  y:
   476E 0A                  967 	.byte	10
   476F                     968 ___compound_literal.40:
                            969 ;  action:
   476F 00                  970 	.byte	0
                            971 ;  position:
                            972 ;  x:
   4770 08                  973 	.byte	8
                            974 ;  y:
   4771 0B                  975 	.byte	11
   4772                     976 ___compound_literal.41:
                            977 ;  action:
   4772 03                  978 	.byte	3
                            979 ;  position:
                            980 ;  x:
   4773 08                  981 	.byte	8
                            982 ;  y:
   4774 0D                  983 	.byte	13
   4775                     984 ___compound_literal.42:
                            985 ;  action:
   4775 04                  986 	.byte	4
                            987 ;  position:
                            988 ;  x:
   4776 01                  989 	.byte	1
                            990 ;  y:
   4777 01                  991 	.byte	1
   4778                     992 ___compound_literal.43:
                            993 ;  action:
   4778 02                  994 	.byte	2
                            995 ;  position:
                            996 ;  x:
   4779 01                  997 	.byte	1
                            998 ;  y:
   477A 09                  999 	.byte	9
   477B                    1000 ___compound_literal.44:
                           1001 ;  action:
   477B 02                 1002 	.byte	2
                           1003 ;  position:
                           1004 ;  x:
   477C 01                 1005 	.byte	1
                           1006 ;  y:
   477D 0A                 1007 	.byte	10
   477E                    1008 ___compound_literal.45:
                           1009 ;  action:
   477E 02                 1010 	.byte	2
                           1011 ;  position:
                           1012 ;  x:
   477F 01                 1013 	.byte	1
                           1014 ;  y:
   4780 09                 1015 	.byte	9
   4781                    1016 ___compound_literal.46:
                           1017 ;  action:
   4781 02                 1018 	.byte	2
                           1019 ;  position:
                           1020 ;  x:
   4782 01                 1021 	.byte	1
                           1022 ;  y:
   4783 0A                 1023 	.byte	10
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

