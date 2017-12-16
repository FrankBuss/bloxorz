# 1 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/cartridge.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/cartridge.c"
# 16 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/cartridge.c"
# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vectrex.h" 1




       



# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_ram.h" 1





       
# 10 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vectrex.h" 2
# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rom.h" 1





       
# 11 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vectrex.h" 2
# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 1




       



# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_sub.h" 1





       



# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/asm.h" 1




       
# 1 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/mc6809.h" 1




       



struct mc6809_t
{
 union
 {
  struct {
   unsigned int A;
   unsigned int B;
  };
  long unsigned int D;
 };
 long unsigned int X;
 long unsigned int Y;
 long unsigned int U;
};


extern struct mc6809_t _mc6809;
# 7 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/asm.h" 2
# 11 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_sub.h" 2
# 10 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h" 2
# 56 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Wait_Recal(void) { { asm volatile( "jsr " "0xF192" "; " "Vec_Sub_FRWAIT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }

static inline __attribute__((always_inline)) void Recalibrate(void) { { asm volatile( "jsr " "0xF2E6" "; " "Vec_Sub_DEFLOK" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Reset0Ref_D0(void) { { asm volatile( "jsr " "0xF34A" "; " "Vec_Sub_DZERO" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Check0Ref(void) { { asm volatile( "jsr " "0xF34F" "; " "Vec_Sub_CZERO" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Reset0Ref(void) { { asm volatile( "jsr " "0xF354" "; " "Vec_Sub_ZEROIT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Reset_Pen(void) { { asm volatile( "jsr " "0xF35B" "; " "Vec_Sub_ACTGND" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Reset0Int(void) { { asm volatile( "jsr " "0xF36B" "; " "Vec_Sub_ZERO" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 78 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Dec_3_Counters(void) { { asm volatile( "jsr " "0xF55A" "; " "Vec_Sub_D2TMR" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Dec_6_Counters(void) { { asm volatile( "jsr " "0xF55E" "; " "Vec_Sub_DECTMR" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Dec_Counters(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF563" "; " "Vec_Sub_DEKCNT" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }







static inline __attribute__((always_inline)) void DP_to_D0(void) { { asm volatile( "jsr " "0xF1AA" "; " "Vec_Sub_DPIO" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void DP_to_C8(void) { { asm volatile( "jsr " "0xF1AF" "; " "Vec_Sub_DPRAM" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 106 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Delay_3(void) { { asm volatile( "jsr " "0xF56D" "; " "Vec_Sub_DEL38" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Delay_2(void) { { asm volatile( "jsr " "0xF571" "; " "Vec_Sub_DEL33" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Delay_1(void) { { asm volatile( "jsr " "0xF575" "; " "Vec_Sub_DEL28" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Delay_0(void) { { asm volatile( "jsr " "0xF579" "; " "Vec_Sub_DEL20" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Delay_b(volatile unsigned int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "ldb %[B]\n\t" "jsr " "0xF57A" "; " "Vec_Sub_DEL" "\n\t" :: [B] "m" (b) : "s", "memory", "cc", "dp", "b"); }; }
static inline __attribute__((always_inline)) void Delay_RTS(void) { { asm volatile( "jsr " "0xF57D" "; " "Vec_Sub_DEL13" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 123 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Dot_ix_b(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF2BE" "; " "Vec_Sub_DOTTIM" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Dot_ix(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF2C1" "; " "Vec_Sub_DOTX" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Dot_d(volatile int a, volatile int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF2C3" "; " "Vec_Sub_DOTAB" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "d"); }; }
static inline __attribute__((always_inline)) void Dot_dd(volatile long int d) { { ((void)sizeof(char[1 - 2*!!(sizeof(d) != 2)]));; asm volatile( "ldd %[D]\n\t" "jsr " "0xF2C3" "; " "Vec_Sub_DOTAB" "\n\t" :: [D] "r" (d) : "s", "memory", "cc", "dp", "a", "b"); }; }
static inline __attribute__((always_inline)) void Dot_here(void) { { asm volatile( "jsr " "0xF2C5" "; " "Vec_Sub_DOT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Dot_List(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF2D5" "; " "Vec_Sub_DIFDOT" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Dot_List_Reset(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF2DE" "; " "Vec_Sub_DOTPAK" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
# 149 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Print_Str_hwyx(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF373" "; " "Vec_Sub_RSTSIZ" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Print_Str_yx(const void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF378" "; " "Vec_Sub_RSTPOS" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Print_Str_d(volatile int a, volatile int b, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldu %[U]\n\t" "jsr " "0xF37A" "; " "Vec_Sub_MSSPOS" "\n\t" :: [A] "m" (a), [B] "m" (b), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "b", "d"); }; }
static inline __attribute__((always_inline)) void Print_Str_dd(volatile long int d, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(d) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldd %[D]\n\t" "ldu %[U]\n\t" "jsr " "0xF37A" "; " "Vec_Sub_MSSPOSD" "\n\t" :: [D] "m" (d), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "b", "d"); }; }
static inline __attribute__((always_inline)) void Print_List_hw(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF385" "; " "Vec_Sub_TXTSIZ" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Print_List(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF38A" "; " "Vec_Sub_TXTPSX" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Print_List_chk(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF38C" "; " "Vec_Sub_TXTPOS" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Print_Ships_x(volatile unsigned int a, volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF391" "; " "Vec_Sub_SHIPX" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Print_Ships(volatile unsigned int a, volatile unsigned int b, volatile unsigned long int x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF393" "; " "Vec_Sub_DSHIP" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Print_Str(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF495" "; " "Vec_Sub_RASTER" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Print_MRast(void) { { asm volatile( "jsr " "0xF498" "; " "Vec_Sub_MRASTR" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 196 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL_a(volatile unsigned int a, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "jsr " "0xF434" "; " "Vec_Sub_DSHDF" "\n\t" :: [A] "m" (a), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "d", "x"); }; }
static inline __attribute__((always_inline)) void Draw_Pat_VL(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF437" "; " "Vec_Sub_DASHDF" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }

static inline __attribute__((always_inline)) void Draw_Line_d(volatile int a, volatile int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF3DF" "; " "Vec_Sub_DIFFAB" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "x", "d"); }; }
static inline __attribute__((always_inline)) void Draw_VLc(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF3CE" "; " "Vec_Sub_DIFFAX" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VL_ab(volatile unsigned int a, volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF3D8" "; " "Vec_Sub_TDIFFY" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Draw_VL(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF3DD" "; " "Vec_Sub_DIFFY" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VLcs(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF3D6" "; " "Vec_Sub_DIFLST" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VL_b(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF3D2" "; " "Vec_Sub_DIFTIM" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Draw_VL_a(volatile unsigned int a, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "jsr " "0xF3DA" "; " "Vec_Sub_LDIFFY" "\n\t" :: [A] "m" (a), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "d", "x"); }; }
# 223 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Mov_Draw_VLc_a(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF3AD" "; " "Vec_Sub_DUFFAX" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Mov_Draw_VL_b(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF3B1" "; " "Vec_Sub_DUFTIM" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Mov_Draw_VLcs(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF3B5" "; " "Vec_Sub_DUFLST" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Mov_Draw_VL_ab(volatile unsigned int a, volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF3B7" "; " "Vec_Sub_TDUFFY" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Mov_Draw_VL_a(volatile unsigned int a, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "jsr " "0xF3B9" "; " "Vec_Sub_LDUFFY" "\n\t" :: [A] "m" (a), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "d", "x"); }; }
static inline __attribute__((always_inline)) void Mov_Draw_VL(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF3BC" "; " "Vec_Sub_DUFFY" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Mov_Draw_VL_d(volatile int a, volatile int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF3BE" "; " "Vec_Sub_DUFFAB" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "d"); }; }
# 259 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Draw_VL_mode(volatile const void* x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF46E" "; " "Vec_Sub_DASHY3" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VLp_7F(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF408" "; " "Vec_Sub_PACK1X" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VLp_FF(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF404" "; " "Vec_Sub_PACK2X" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VLp_b(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF40E" "; " "Vec_Sub_PACB" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Draw_VLp(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF410" "; " "Vec_Sub_PACKET" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Draw_VLp_scale(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF40C" "; " "Vec_Sub_PACXX" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Rot_VL_Mode_a(volatile unsigned int a, void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF61F" "; " "Vec_Sub_POTATA" "\n\t" :: [A] "m" (a), [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "x"); }; }
static inline __attribute__((always_inline)) void Rot_VL_Pack(void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF622" "; " "Vec_Sub_POTATE" "\n\t" :: [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "x"); }; }
# 299 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) unsigned int Random_3(void) { return ({ asm volatile( "jsr " "0xF511" "; " "Vec_Sub_RAND3" "\n\t" "sta %[A]; return a\n\t" : [A] "=m" (_mc6809.A) : : "s", "memory", "cc", "dp"); _mc6809.A; }); }
static inline __attribute__((always_inline)) unsigned int Random(void) { return ({ asm volatile( "jsr " "0xF517" "; " "Vec_Sub_RANDOM" "\n\t" "sta %[A]; return a\n\t" : [A] "=m" (_mc6809.A) : : "s", "memory", "cc", "dp"); _mc6809.A; }); }

static inline __attribute__((always_inline)) unsigned int Bitmask_a(volatile unsigned int a) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "lda %[A]\n\t" "jsr " "0xF57E" "; " "Vec_Sub_BITE" "\n\t" "sta %[R]; return a\n\t" : [R] "=m" (_mc6809.A) : [A] "m" (a) : "s", "memory", "cc", "dp", "a", "d"); _mc6809.A; }); }

static inline __attribute__((always_inline)) long unsigned int Abs_a_b(volatile int a, volatile int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF584" "; " "Vec_Sub_ABSVAL" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "a", "b", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) unsigned int Abs_b(volatile int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "ldb %[B]\n\t" "jsr " "0xF58B" "; " "Vec_Sub_AOK" "\n\t" "stb %[R]; return b\n\t" : [R] "=m" (_mc6809.B) : [B] "m" (b) : "s", "memory", "cc", "dp", "b", "d"); _mc6809.B; }); }

static inline __attribute__((always_inline)) long unsigned int Rise_Run_Angle(volatile int a, volatile int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF593" "; " "Vec_Sub_COMPAS" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "a", "b", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) long unsigned int Get_Rise_Idx(volatile int a) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "lda %[A]\n\t" "jsr " "0xF5D9" "; " "Vec_Sub_COSGET" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a) : "s", "memory", "cc", "dp", "a", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) int Xform_Sin(volatile int a) { return (int) ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "lda %[A]\n\t" "jsr " "0xF5D8" "; " "Vec_Sub_SINGET" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a) : "s", "memory", "cc", "dp", "a", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) long unsigned int Get_Rise_Run(void) { return ({ asm volatile( "jsr " "0xF5EF" "; " "Vec_Sub_SINCOS" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : : "s", "memory", "cc", "dp"); _mc6809.D; }); }

static inline __attribute__((always_inline)) int Xform_Run_a(volatile int a) { return (int) ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "lda %[A]\n\t" "jsr " "0xF65B" "; " "Vec_Sub_RSINA" "\n\t" "sta %[R]; return a\n\t" : [R] "=m" (_mc6809.A) : [A] "m" (a) : "s", "memory", "cc", "dp", "a", "d"); _mc6809.A; }); }
static inline __attribute__((always_inline)) int Xform_Run(void) { return (int) ({ asm volatile( "jsr " "0xF65D" "; " "Vec_Sub_RSIN" "\n\t" "sta %[A]; return a\n\t" : [A] "=m" (_mc6809.A) : : "s", "memory", "cc", "dp"); _mc6809.A; }); }
static inline __attribute__((always_inline)) int Xform_Rise_a(volatile int a) { return (int) ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "lda %[A]\n\t" "jsr " "0xF661" "; " "Vec_Sub_RCOSA" "\n\t" "sta %[R]; return a\n\t" : [R] "=m" (_mc6809.A) : [A] "m" (a) : "s", "memory", "cc", "dp", "a", "d"); _mc6809.A; }); }
static inline __attribute__((always_inline)) int Xform_Rise(void) { return (int) ({ asm volatile( "jsr " "0xF663" "; " "Vec_Sub_RCOS" "\n\t" "sta %[A]; return a\n\t" : [A] "=m" (_mc6809.A) : : "s", "memory", "cc", "dp"); _mc6809.A; }); }
# 325 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Clear_x_b(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF53F" "; " "Vec_Sub_BCLR" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Clear_C8_RAM(void) { { asm volatile( "jsr " "0xF542" "; " "Vec_Sub_CLREX" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Clear_x_256(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF545" "; " "Vec_Sub_CLR256" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Clear_x_d(volatile long unsigned int d, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(d) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldd %[D]\n\t" "ldx %[X]\n\t" "jsr " "0xF548" "; " "Vec_Sub_CLRBLK" "\n\t" :: [D] "m" (d), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }







static inline __attribute__((always_inline)) void Move_Mem_a_1(volatile unsigned int a, void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF67F" "; " "Vec_Sub_BLKMV1" "\n\t" :: [A] "m" (a), [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "x"); }; }
static inline __attribute__((always_inline)) void Move_Mem_a(volatile unsigned int a, void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF683" "; " "Vec_Sub_BLKMOV" "\n\t" :: [A] "m" (a), [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "x"); }; }







static inline __attribute__((always_inline)) void Clear_x_b_80(volatile int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF550" "; " "Vec_Sub_CLR80" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Clear_x_b_a(volatile unsigned int a, volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF552" "; " "Vec_Sub_BLKFIL" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
# 356 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Read_Btns_Mask(volatile unsigned int a) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "tfr %[A],a\t; #VIDE_CHANGE_B_TO_A# \n\t" "jsr " "0xF1B4" "; " "Vec_Sub_DBNCE" "\n\t" :: [A] "r" (a) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Read_Btns(void) { { asm volatile( "jsr " "0xF1BA" "; " "Vec_Sub_INPUT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Joy_Analog(void) { { asm volatile( "jsr " "0xF1F5" "; " "Vec_Sub_JOYSTK" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Joy_Digital(void) { { asm volatile( "jsr " "0xF1F8" "; " "Vec_Sub_JOYBIT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 404 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Select_Game(volatile unsigned int a, volatile unsigned int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF7A9" "; " "Vec_Sub_SELOPT" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "d"); }; }
static inline __attribute__((always_inline)) void Display_Option(volatile unsigned int a, void* volatile y) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; asm volatile( "lda %[A]\n\t" "ldy %[Y]\n\t" "jsr " "0xF835" "; " "Vec_Sub_DISOPT" "\n\t" :: [A] "m" (a), [Y] "m" (y) : "s", "memory", "cc", "dp", "a", "d", "y"); }; }
# 417 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Reset(void) { { asm volatile( "jsr " "0xF000" "; " "Vec_Sub_POWER" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Init_VIA(void) { { asm volatile( "jsr " "0xF14C" "; " "Vec_Sub_INTPIA" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Init_OS_RAM(void) { { asm volatile( "jsr " "0xF164" "; " "Vec_Sub_INTMSC" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Init_OS(void) { { asm volatile( "jsr " "0xF18B" "; " "Vec_Sub_INTALL" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Init_Music_Buf(void) { { asm volatile( "jsr " "0xF533" "; " "Vec_Sub_INTREQ" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 445 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Clear_Score(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF84F" "; " "Vec_Sub_SCLR" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Add_Score_a(volatile unsigned int a, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldx %[X]\n\t" "jsr " "0xF85E" "; " "Vec_Sub_BYTADD" "\n\t" :: [A] "m" (a), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "d", "x"); }; }
static inline __attribute__((always_inline)) void Add_Score_d(volatile long unsigned int d, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(d) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldd %[D]\n\t" "ldx %[X]\n\t" "jsr " "0xF87C" "; " "Vec_Sub_SCRADD" "\n\t" :: [D] "m" (d), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }

static inline __attribute__((always_inline)) unsigned int Compare_Score(void* volatile x, void* volatile u) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF8C7" "; " "Vec_Sub_WINNER" "\n\t" "sta %[A]; return a\n\t" : [A] "=m" (_mc6809.A) : [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "x"); _mc6809.A; }); }
static inline __attribute__((always_inline)) void New_High_Score(void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF8D8" "; " "Vec_Sub_HISCR" "\n\t" :: [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "x"); }; }
# 469 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Sound_Byte(volatile unsigned int a, volatile unsigned int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF256" "; " "Vec_Sub_PSGX" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "d"); }; }
static inline __attribute__((always_inline)) void Sound_Byte_x(volatile unsigned int a, volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF259" "; " "Vec_Sub_PSG" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Clear_Sound(void) { { asm volatile( "jsr " "0xF272" "; " "Vec_Sub_INITPSG" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Sound_Bytes(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF27D" "; " "Vec_Sub_PSGLUP" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Sound_Bytes_x(void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF284" "; " "Vec_Sub_PSGULP" "\n\t" :: [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "x"); }; }
static inline __attribute__((always_inline)) void Do_Sound(void) { { asm volatile( "jsr " "0xF289" "; " "Vec_Sub_REQOUT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }

static inline __attribute__((always_inline)) void Init_Music_chk(volatile const void* u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF687" "; " "Vec_Sub_REPLAY" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Init_Music(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF68D" "; " "Vec_Sub_SPLAY" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Init_Music_a(void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF690" "; " "Vec_Sub_SOPLAY" "\n\t" :: [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "x"); }; }
static inline __attribute__((always_inline)) void Init_Music_x(void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF692" "; " "Vec_Sub_YOPLAY" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Stop_Sound(void) { { asm volatile( "jsr " "0xF742" "; " "Vec_Sub_XPLAY" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Explosion_Snd(volatile const void* u) { { ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldu %[U]\n\t" "jsr " "0xF92E" "; " "Vec_Sub_AXE" "\n\t" :: [U] "g" (u) : "memory","d", "x","y","cc"); }; }
static inline __attribute__((always_inline)) void Set_Amp(volatile unsigned int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "ldb %[B]\n\t" "jsr " "0xF9CA" "; " "Vec_Sub_LOUDIN" "\n\t" :: [B] "m" (b) : "s", "memory", "cc", "dp", "b"); }; }
# 523 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Moveto_x_7F(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF2F2" "; " "Vec_Sub_POSWID" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Moveto_d_7F(volatile int a, volatile int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF2FC" "; " "Vec_Sub_POSITD" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "d"); }; }
static inline __attribute__((always_inline)) void Moveto_dd_7F(volatile long int d) { { ((void)sizeof(char[1 - 2*!!(sizeof(d) != 2)]));; asm volatile( "ldd %[D]\n\t" "jsr " "0xF2FC" "; " "Vec_Sub_POSITD" "\n\t" :: [D] "r" (d) : "s", "memory", "cc", "dp", "a", "b"); }; }
static inline __attribute__((always_inline)) void Moveto_ix_FF(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF308" "; " "Vec_Sub_POSIT2" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Moveto_ix_7F(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF30C" "; " "Vec_Sub_POSIT1" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Moveto_ix_b(volatile unsigned int b, void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "jsr " "0xF30E" "; " "Vec_Sub_POSITB" "\n\t" :: [B] "g" (b), [X] "g" (x) : "s", "memory", "cc", "dp", "d" ); }; }
static inline __attribute__((always_inline)) void Moveto_ix(void* volatile x) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; asm volatile( "jsr " "0xF310" "; " "Vec_Sub_POSITX" "\n\t" :: [X] "r" (x) : "s", "memory", "cc", "dp"); }; }
static inline __attribute__((always_inline)) void Moveto_d(volatile int a, volatile int b) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF312" "; " "Vec_Sub_POSITN" "\n\t" :: [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "d"); }; }
static inline __attribute__((always_inline)) void Moveto_dd(volatile long int d) { { ((void)sizeof(char[1 - 2*!!(sizeof(d) != 2)]));; asm volatile( "ldd %[D]\n\t" "jsr " "0xF312" "; " "Vec_Sub_POSITN" "\n\t" :: [D] "r" (d) : "s", "memory", "cc", "dp", "a", "b"); }; }
# 542 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Intensity_1F(void) { { asm volatile( "jsr " "0xF29D" "; " "Vec_Sub_INT1Q" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Intensity_3F(void) { { asm volatile( "jsr " "0xF2A1" "; " "Vec_Sub_INT2Q" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Intensity_5F(void) { { asm volatile( "jsr " "0xF2A5" "; " "Vec_Sub_INT3Q" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Intensity_7F(void) { { asm volatile( "jsr " "0xF2A9" "; " "Vec_Sub_INTMAX" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Intensity_a(volatile unsigned int a) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "tfr %[A],a\t; #VIDE_CHANGE_B_TO_A# \n\t" "jsr " "0xF2AB" "; " "Vec_Sub_INTENS" "\n\t" :: [A] "r" (a) : "s", "memory", "cc", "dp"); }; }
# 555 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) unsigned int Obj_Will_Hit_u(volatile int a, volatile int b, volatile long int x, volatile long int y, volatile long int u) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "ldy %[Y]\n\t" "ldu %[U]\n\t" "jsr " "0xF8E5" "; " "Vec_Sub_OFF1BX" "\n\t" "lda #0\n\t" "adca #0\n\t" "sta %[R]; return carry\n\t" : [R] "=m" (_mc6809.A) : [A] "m" (a), [B] "m" (b), [X] "m" (x), [Y] "m" (y), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "b", "d", "x", "y"); _mc6809.A; }); }
static inline __attribute__((always_inline)) unsigned int Obj_Will_Hit(volatile int a, volatile int b, volatile long int x, volatile long int y, volatile long int* u) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "ldy %[Y]\n\t" "ldu %[U]\n\t" "jsr " "0xF8F3" "; " "Vec_Sub_OFF2BX" "\n\t" "lda #0\n\t" "adca #0\n\t" "sta %[R]; return carry\n\t" : [R] "=m" (_mc6809.A) : [A] "m" (a), [B] "m" (b), [X] "m" (x), [Y] "m" (y), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "b", "d", "x", "y"); _mc6809.A; }); }
static inline __attribute__((always_inline)) unsigned int Obj_Hit(volatile int a, volatile int b, volatile long int x, volatile long int y) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "ldy %[Y]\n\t" "jsr " "0xF8FF" "; " "Vec_Sub_BXTEST" "\n\t" "lda #0\n\t" "adca #0\n\t" "sta %[R]; return carry\n\t" : [R] "=m" (_mc6809.A) : [A] "m" (a), [B] "m" (b), [X] "m" (x), [Y] "m" (y) : "s", "memory", "cc", "dp", "a", "b", "d", "x", "y"); _mc6809.A; }); }
# 571 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_X(volatile int a, volatile int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF5FF" "; " "Vec_Sub_LROT90" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "a", "b", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) long unsigned int Rise_Run_Y(volatile int a, volatile int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xF601" "; " "Vec_Sub_LNROT" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "a", "b", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) int Rise_Run_Len(volatile int a) { return (int) ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; asm volatile( "lda %[A]\n\t" "jsr " "0xF603" "; " "Vec_Sub_ALNROT" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : [A] "m" (a) : "s", "memory", "cc", "dp", "a", "d"); _mc6809.D; }); }
static inline __attribute__((always_inline)) void Rot_VL_ab(volatile unsigned int a, volatile unsigned int b, void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF610" "; " "Vec_Sub_DROT" "\n\t" :: [A] "m" (a), [B] "m" (b), [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "a", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Rot_VL_Diff(volatile unsigned int b, void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF613" "; " "Vec_Sub_BDROT" "\n\t" :: [B] "m" (b), [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "b", "d", "x"); }; }
static inline __attribute__((always_inline)) void Rot_VL(void* volatile x, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldx %[X]\n\t" "ldu %[U]\n\t" "jsr " "0xF616" "; " "Vec_Sub_ADROT" "\n\t" :: [X] "m" (x), [U] "m" (u) : "s", "memory", "cc", "dp", "x"); }; }
# 625 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vec_rum.h"
static inline __attribute__((always_inline)) void Dot_y(volatile long int y) { { ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; asm volatile( "ldy %[Y]\n\t" "jsr " "0xEA5D" "; " "Vec_Sub_ADOT" "\n\t" :: [Y] "m" (y) : "s", "memory", "cc", "dp", "y"); }; }
static inline __attribute__((always_inline)) void Dot_py(void* volatile y) { { ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; asm volatile( "ldy %[Y]\n\t" "jsr " "0xEA6D" "; " "Vec_Sub_DDOT" "\n\t" :: [Y] "m" (y) : "s", "memory", "cc", "dp", "y"); }; }

static inline __attribute__((always_inline)) void Draw_Pack(volatile unsigned int b, void* volatile x, volatile long int y) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "ldy %[Y]\n\t" "jsr " "0xEA7F" "; " "Vec_Sub_APACK" "\n\t" :: [B] "m" (b), [X] "m" (x), [Y] "m" (y) : "s", "memory", "cc", "dp", "b", "d", "x", "y"); }; }
static inline __attribute__((always_inline)) void Draw_Pack_py(volatile unsigned int b, void* volatile x, void* volatile y) { { ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(x) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; asm volatile( "ldb %[B]\n\t" "ldx %[X]\n\t" "ldy %[Y]\n\t" "jsr " "0xEA8D" "; " "Vec_Sub_DPACK" "\n\t" :: [B] "m" (b), [X] "m" (x), [Y] "m" (y) : "s", "memory", "cc", "dp", "b", "d", "x", "y"); }; }

static inline __attribute__((always_inline)) void Print_Msg(void* volatile y, void* volatile u) { { ((void)sizeof(char[1 - 2*!!(sizeof(y) != 2)]));; ((void)sizeof(char[1 - 2*!!(sizeof(u) != 2)]));; asm volatile( "ldy %[Y]\n\t" "ldu %[U]\n\t" "jsr " "0xEAA8" "; " "Vec_Sub_ASMESS" "\n\t" :: [Y] "m" (y), [U] "m" (u) : "s", "memory", "cc", "dp", "y"); }; }
static inline __attribute__((always_inline)) unsigned int Rnd_Cone(void) { return ({ asm volatile( "jsr " "0xEA3E" "; " "Vec_Sub_CONE" "\n\t" "stb %[B]; return b\n\t" : [B] "=m" (_mc6809.B) : : "s", "memory", "cc", "dp"); _mc6809.B; }); }

static inline __attribute__((always_inline)) long unsigned int Displ8_xy(volatile unsigned int a, volatile unsigned int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xE7B5" "; " "Vec_Sub_MLTY8" "\n\t" "stx %[X]; return x\n\t" : [X] "=m" (_mc6809.X) : [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "a", "b", "d"); _mc6809.X; }); }
static inline __attribute__((always_inline)) long unsigned int Displ16_xy(volatile unsigned int a, volatile unsigned int b) { return ({ ((void)sizeof(char[1 - 2*!!(sizeof(a) != 1)]));; ((void)sizeof(char[1 - 2*!!(sizeof(b) != 1)]));; asm volatile( "lda %[A]\n\t" "ldb %[B]\n\t" "jsr " "0xE7D2" "; " "Vec_Sub_MLTY16" "\n\t" "stx %[X]; return x\n\t" : [X] "=m" (_mc6809.X) : [A] "m" (a), [B] "m" (b) : "s", "memory", "cc", "dp", "a", "b", "d"); _mc6809.X; }); }

static inline __attribute__((always_inline)) long unsigned int Ranpos(void) { return ({ asm volatile( "jsr " "0xE98A" "; " "Vec_Sub_RANPOS" "\n\t" "std %[D]; return d\n\t" : [D] "=m" (_mc6809.D) : : "s", "memory", "cc", "dp"); _mc6809.D; }); }
static inline __attribute__((always_inline)) void Draw_Scores() { { asm volatile( "jsr " "0xEACF" "; " "Vec_Sub_SCRBTH" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Draw_Score() { { asm volatile( "jsr " "0xEAB4" "; " "Vec_Sub_SCRMES" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
static inline __attribute__((always_inline)) void Wait_Bound() { { asm volatile( "jsr " "0xEAF0" "; " "Vec_Sub_WAIT" "\n\t" :: : "s", "memory", "cc", "dp","d"); }; }
# 12 "/home/frank/Downloads/Vide2.0_RC14/C/PeerC/vectrex/include.nf/vectrex.h" 2
# 17 "/home/frank/Downloads/Vide2.0_RC14/projects/Bloxorz/source/cartridge.c" 2




struct cartridge_t
{
 char copyright[11];
 const void* music;
 signed int title_height;
 unsigned int title_width;
 int title_y;
 int title_x;
 char title[];
};




const struct cartridge_t game_header __attribute__((section(".cartridge"), used)) =
{
 .copyright = "g GCE 2018\x80",
 .music = &*((const unsigned int* const) 0xFD0D),
 .title_height = -8,
 .title_width = 80,
 .title_y = -16,
 .title_x = -72,
 .title = "BLOXORZ\x80"
};
