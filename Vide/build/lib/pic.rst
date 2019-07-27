                     D000     1 CNTRL = 0hd000	; ORB / IRB - Output Register B / Input Register B
                     D002     2 DCNTRL = 0hd002	; DDRB      - Data Direction Register B
                              3 
                              4 	.area .bss
   CAF4                       5 data: .blkb   1
   CAF5                       6 counter: .blkb   1
   CAF6                       7 bit_counter: .blkb   1
                              8  
                              9 	.area .text
                             10 
                             11 	.globl  _picWrite
   5B5C                      12 _picWrite:
   5B5C 34 1E         [ 9]   13 	pshs    d,dp,x
   5B5E F7 CA F4      [ 5]   14 	stb data
                             15 
   5B61 86 D0         [ 2]   16 	lda #0hd0		; setup direct page to 0xd000
   5B63 1F 8B         [ 6]   17 	tfr a, dp
                             18 
   5B65 8E 00 DF      [ 3]   19 	ldx #0xdf
   5B68 10 8E 00 9F   [ 4]   20 	ldy #0x9f
                             21 
                             22 	; start with low signal
   5B6C 86 DF         [ 2]   23 	lda #0xdf
   5B6E 97 02         [ 4]   24 	sta *DCNTRL	; PB6 direction = output
                             25 
   5B70 96 00         [ 4]   26 	lda *CNTRL
   5B72 84 BF         [ 2]   27 	anda #0xbf
   5B74 97 00         [ 4]   28 	sta *CNTRL
                             29 	
                             30 	; byte transfer starts with high signal
                             31 	; 1 bit needs 45 cycles (= 30 us)
                             32 	; bit 0 = 4 us high
                             33 	; bit 1 = 9.3 us high
   5B76 C6 08         [ 2]   34 	ldb #8
   5B78                      35 loop:
   5B78 B6 CA F4      [ 5]   36 	lda data
   5B7B 85 80         [ 2]   37 	bita #0x80
   5B7D 27 0E         [ 3]   38 	beq loop2
   5B7F 86 9F         [ 2]   39 	lda #0x9f
   5B81 97 02         [ 4]   40 	sta *DCNTRL	; PB6 direction = input
   5B83 12            [ 2]   41 	nop
   5B84 12            [ 2]   42 	nop
   5B85 12            [ 2]   43 	nop
   5B86 12            [ 2]   44 	nop
   5B87 86 DF         [ 2]   45 	lda #0xdf
   5B89 97 02         [ 4]   46 	sta *DCNTRL	; PB6 direction = output
   5B8B 20 0E         [ 3]   47 	bra loop3
   5B8D                      48 loop2:
   5B8D 86 9F         [ 2]   49 	lda #0x9f
   5B8F 97 02         [ 4]   50 	sta *DCNTRL	; PB6 direction = input
   5B91 86 DF         [ 2]   51 	lda #0xdf
   5B93 97 02         [ 4]   52 	sta *DCNTRL	; PB6 direction = output
   5B95 12            [ 2]   53 	nop
   5B96 12            [ 2]   54 	nop
   5B97 12            [ 2]   55 	nop
   5B98 12            [ 2]   56 	nop
   5B99 20 00         [ 3]   57 	bra loop3
   5B9B                      58 loop3:
   5B9B 78 CA F4      [ 7]   59 	lsl data
   5B9E 5A            [ 2]   60 	decb
   5B9F 26 D7         [ 3]   61 	bne loop
                             62 
                             63 ; wait a bit at the end of the transfer
   5BA1 C6 0A         [ 2]   64 	ldb #10
   5BA3                      65 loop4:
   5BA3 5A            [ 2]   66 	decb
   5BA4 26 FD         [ 3]   67 	bne loop4
                             68 
   5BA6 35 9E         [10]   69 	puls d,dp,x,pc       ; restore registers from stack and return
                             70 
                             71 
                             72 
                             73 
                             74 	.globl  _picRead
   5BA8                      75 _picRead:
   5BA8 34 1E         [ 9]   76 	pshs    d,dp,x
                             77 
   5BAA 86 D0         [ 2]   78 	lda #0hd0		; setup direct page to 0xd000
   5BAC 1F 8B         [ 6]   79 	tfr a, dp
                             80 
                             81 ; set PB6 to high
   5BAE 86 9F         [ 2]   82 	lda #0x9f
   5BB0 97 02         [ 4]   83 	sta *DCNTRL	; PB6 direction = input
                             84 
                             85 ; wait a bit until the signal settles
   5BB2 C6 0A         [ 2]   86 	ldb #10
   5BB4                      87 wh:
   5BB4 5A            [ 2]   88 	decb
   5BB5 26 FD         [ 3]   89 	bne wh
                             90 
   5BB7 86 08         [ 2]   91 	lda #8
   5BB9 B7 CA F6      [ 5]   92 	sta bit_counter
                             93 
                             94 ; wait until PB6 is set to low from the PIC
   5BBC 86 00         [ 2]   95 	lda #0
   5BBE B7 CA F4      [ 5]   96 	sta data
   5BC1 C6 40         [ 2]   97 	ldb #0h40
   5BC3                      98 wait_start:
   5BC3 4C            [ 2]   99 	inca
   5BC4 81 FF         [ 2]  100 	cmpa #255
   5BC6 27 37         [ 3]  101 	beq timeout
   5BC8 D5 00         [ 4]  102 	bitb *CNTRL
   5BCA 26 F7         [ 3]  103 	bne wait_start
                            104 
                            105 ; measure high time
   5BCC                     106 next_bit:
   5BCC 86 00         [ 2]  107 	lda #0
   5BCE B7 CA F5      [ 5]  108 	sta counter
   5BD1 C6 40         [ 2]  109 	ldb #0h40
   5BD3                     110 wait_start2:
   5BD3 4C            [ 2]  111 	inca
   5BD4 81 FF         [ 2]  112 	cmpa #255
   5BD6 27 27         [ 3]  113 	beq timeout
   5BD8 D5 00         [ 4]  114 	bitb *CNTRL
   5BDA 27 F7         [ 3]  115 	beq wait_start2
   5BDC 86 00         [ 2]  116 	lda #0
   5BDE                     117 wait_start3:
   5BDE 4C            [ 2]  118 	inca
   5BDF 81 FF         [ 2]  119 	cmpa #255
   5BE1 27 1C         [ 3]  120 	beq timeout
   5BE3 7C CA F5      [ 7]  121 	inc counter
   5BE6 D5 00         [ 4]  122 	bitb *CNTRL
   5BE8 26 F4         [ 3]  123 	bne wait_start3
                            124 
                            125 ; test if it was a 0 or 1 bit
   5BEA F6 CA F5      [ 5]  126 	ldb counter
   5BED B6 CA F4      [ 5]  127 	lda data
   5BF0 48            [ 2]  128 	asla
   5BF1 C1 09         [ 2]  129 	cmpb #9
   5BF3 2D 02         [ 3]  130 	blt less
   5BF5 8A 01         [ 2]  131 	ora #1
   5BF7                     132 less:
   5BF7 B7 CA F4      [ 5]  133 	sta data
                            134 
   5BFA 7A CA F6      [ 7]  135 	dec bit_counter
   5BFD 26 CD         [ 3]  136 	bne next_bit
                            137 
   5BFF                     138 timeout:
                            139 
                            140 ; return high time
   5BFF 35 1E         [ 9]  141 	puls d,dp,x       ; restore registers from stack
   5C01 F6 CA F4      [ 5]  142 	ldb data
   5C04 39            [ 5]  143 	rts
                            144 
                            145 
                            146 ; wait about 10 ms
                            147 	.globl  _delay10ms
   5C05                     148 _delay10ms:
   5C05 34 1E         [ 9]  149 	pshs    d,dp,x
                            150 
   5C07 86 0C         [ 2]  151     lda #12
   5C09 C6 00         [ 2]  152 d1:    ldb #0
   5C0B 5A            [ 2]  153 d2:    decb
   5C0C 26 FD         [ 3]  154     bne d2
   5C0E 4A            [ 2]  155     deca
   5C0F 26 F8         [ 3]  156     bne d1
                            157 
   5C11 35 9E         [10]  158 	puls d,dp,x,pc       ; restore registers from stack and return
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 A$pic$100          0068 GR  |   3 A$pic$101          006A GR
  3 A$pic$102          006C GR  |   3 A$pic$103          006E GR
  3 A$pic$107          0070 GR  |   3 A$pic$108          0072 GR
  3 A$pic$109          0075 GR  |   3 A$pic$111          0077 GR
  3 A$pic$112          0078 GR  |   3 A$pic$113          007A GR
  3 A$pic$114          007C GR  |   3 A$pic$115          007E GR
  3 A$pic$116          0080 GR  |   3 A$pic$118          0082 GR
  3 A$pic$119          0083 GR  |   3 A$pic$120          0085 GR
  3 A$pic$121          0087 GR  |   3 A$pic$122          008A GR
  3 A$pic$123          008C GR  |   3 A$pic$126          008E GR
  3 A$pic$127          0091 GR  |   3 A$pic$128          0094 GR
  3 A$pic$129          0095 GR  |   3 A$pic$13           0000 GR
  3 A$pic$130          0097 GR  |   3 A$pic$131          0099 GR
  3 A$pic$133          009B GR  |   3 A$pic$135          009E GR
  3 A$pic$136          00A1 GR  |   3 A$pic$14           0002 GR
  3 A$pic$141          00A3 GR  |   3 A$pic$142          00A5 GR
  3 A$pic$143          00A8 GR  |   3 A$pic$149          00A9 GR
  3 A$pic$151          00AB GR  |   3 A$pic$152          00AD GR
  3 A$pic$153          00AF GR  |   3 A$pic$154          00B0 GR
  3 A$pic$155          00B2 GR  |   3 A$pic$156          00B3 GR
  3 A$pic$158          00B5 GR  |   3 A$pic$16           0005 GR
  3 A$pic$17           0007 GR  |   3 A$pic$19           0009 GR
  3 A$pic$20           000C GR  |   3 A$pic$23           0010 GR
  3 A$pic$24           0012 GR  |   3 A$pic$26           0014 GR
  3 A$pic$27           0016 GR  |   3 A$pic$28           0018 GR
  3 A$pic$34           001A GR  |   3 A$pic$36           001C GR
  3 A$pic$37           001F GR  |   3 A$pic$38           0021 GR
  3 A$pic$39           0023 GR  |   3 A$pic$40           0025 GR
  3 A$pic$41           0027 GR  |   3 A$pic$42           0028 GR
  3 A$pic$43           0029 GR  |   3 A$pic$44           002A GR
  3 A$pic$45           002B GR  |   3 A$pic$46           002D GR
  3 A$pic$47           002F GR  |   3 A$pic$49           0031 GR
  3 A$pic$50           0033 GR  |   3 A$pic$51           0035 GR
  3 A$pic$52           0037 GR  |   3 A$pic$53           0039 GR
  3 A$pic$54           003A GR  |   3 A$pic$55           003B GR
  3 A$pic$56           003C GR  |   3 A$pic$57           003D GR
  3 A$pic$59           003F GR  |   3 A$pic$60           0042 GR
  3 A$pic$61           0043 GR  |   3 A$pic$64           0045 GR
  3 A$pic$66           0047 GR  |   3 A$pic$67           0048 GR
  3 A$pic$69           004A GR  |   3 A$pic$76           004C GR
  3 A$pic$78           004E GR  |   3 A$pic$79           0050 GR
  3 A$pic$82           0052 GR  |   3 A$pic$83           0054 GR
  3 A$pic$86           0056 GR  |   3 A$pic$88           0058 GR
  3 A$pic$89           0059 GR  |   3 A$pic$91           005B GR
  3 A$pic$92           005D GR  |   3 A$pic$95           0060 GR
  3 A$pic$96           0062 GR  |   3 A$pic$97           0065 GR
  3 A$pic$99           0067 GR  |     CNTRL          =   D000 
    DCNTRL         =   D002     |   3 _delay10ms         00A9 GR
  3 _picRead           004C GR  |   3 _picWrite          0000 GR
  2 bit_counter        0002 R   |   2 counter            0001 R
  3 d1                 00AD R   |   3 d2                 00AF R
  2 data               0000 R   |   3 less               009B R
  3 loop               001C R   |   3 loop2              0031 R
  3 loop3              003F R   |   3 loop4              0047 R
  3 next_bit           0070 R   |   3 timeout            00A3 R
  3 wait_start         0067 R   |   3 wait_start2        0077 R
  3 wait_start3        0082 R   |   3 wh                 0058 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .bss             size    3   flags    0
   3 .text            size   B7   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

