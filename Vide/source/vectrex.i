;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; this file contains includes for vectrex BIOS functions and variables      ;
; it was written by Bruce Tomlin, slighte changed by Malban                 ;
; ported to *.s syntax by Frank Buss                                        ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Vec_Snd_Shadow  =     0hC800   ;Shadow of sound chip registers (15 bytes)
Vec_Btn_State   =     0hC80F   ;Current state of all joystick buttons
Vec_Prev_Btns   =     0hC810   ;Previous state of all joystick buttons
Vec_Buttons     =     0hC811   ;Current toggle state of all buttons
Vec_Button_1_1  =     0hC812   ;Current toggle state of stick 1 button 1
Vec_Button_1_2  =     0hC813   ;Current toggle state of stick 1 button 2
Vec_Button_1_3  =     0hC814   ;Current toggle state of stick 1 button 3
Vec_Button_1_4  =     0hC815   ;Current toggle state of stick 1 button 4
Vec_Button_2_1  =     0hC816   ;Current toggle state of stick 2 button 1
Vec_Button_2_2  =     0hC817   ;Current toggle state of stick 2 button 2
Vec_Button_2_3  =     0hC818   ;Current toggle state of stick 2 button 3
Vec_Button_2_4  =     0hC819   ;Current toggle state of stick 2 button 4
Vec_Joy_Resltn  =     0hC81A   ;Joystick A/D resolution (0h80=min 0h00=max)
Vec_Joy_1_X     =     0hC81B   ;Joystick 1 left/right
Vec_Joy_1_Y     =     0hC81C   ;Joystick 1 up/down
Vec_Joy_2_X     =     0hC81D   ;Joystick 2 left/right
Vec_Joy_2_Y     =     0hC81E   ;Joystick 2 up/down
Vec_Joy_Mux     =     0hC81F   ;Joystick enable/mux flags (4 bytes)
Vec_Joy_Mux_1_X =     0hC81F   ;Joystick 1 X enable/mux flag (=1)
Vec_Joy_Mux_1_Y =     0hC820   ;Joystick 1 Y enable/mux flag (=3)
Vec_Joy_Mux_2_X =     0hC821   ;Joystick 2 X enable/mux flag (=5)
Vec_Joy_Mux_2_Y =     0hC822   ;Joystick 2 Y enable/mux flag (=7)
Vec_Misc_Count  =     0hC823   ;Misc counter/flag byte, zero when not in use
Vec_0Ref_Enable =     0hC824   ;Check0Ref enable flag
Vec_Loop_Count  =     0hC825   ;Loop counter word (incremented in Wait_Recal)
Vec_Brightness  =     0hC827   ;Default brightness
Vec_Dot_Dwell   =     0hC828   ;Dot dwell time?
Vec_Pattern     =     0hC829   ;Dot pattern (bits)
Vec_Text_HW     =     0hC82A   ;Default text height and width
Vec_Text_Height =     0hC82A   ;Default text height
Vec_Text_Width  =     0hC82B   ;Default text width
Vec_Str_Ptr     =     0hC82C   ;Temporary string pointer for Print_Str
Vec_Counters    =     0hC82E   ;Six bytes of counters
Vec_Counter_1   =     0hC82E   ;First  counter byte
Vec_Counter_2   =     0hC82F   ;Second counter byte
Vec_Counter_3   =     0hC830   ;Third  counter byte
Vec_Counter_4   =     0hC831   ;Fourth counter byte
Vec_Counter_5   =     0hC832   ;Fifth  counter byte
Vec_Counter_6   =     0hC833   ;Sixth  counter byte
Vec_RiseRun_Tmp =     0hC834   ;Temp storage word for rise/run
Vec_Angle       =     0hC836   ;Angle for rise/run and rotation calculations
Vec_Run_Index   =     0hC837   ;Index pair for run
*                       0hC839   ;Pointer to copyright string during startup
Vec_Rise_Index  =     0hC839   ;Index pair for rise
*                       0hC83B   ;High score cold-start flag (=0 if valid)
Vec_RiseRun_Len =     0hC83B   ;length for rise/run
*                       0hC83C   ;temp byte
Vec_Rfrsh       =     0hC83D   ;Refresh time (divided by 1.5MHz)
Vec_Rfrsh_lo    =     0hC83D   ;Refresh time low byte
Vec_Rfrsh_hi    =     0hC83E   ;Refresh time high byte
Vec_Music_Work  =     0hC83F   ;Music work buffer (14 bytes, backwards?)
Vec_Music_Wk_A  =     0hC842   ;        register 10
*                       0hC843   ;        register 9
*                       0hC844   ;        register 8
Vec_Music_Wk_7  =     0hC845   ;        register 7
Vec_Music_Wk_6  =     0hC846   ;        register 6
Vec_Music_Wk_5  =     0hC847   ;        register 5
*                       0hC848   ;        register 4
*                       0hC849   ;        register 3
*                       0hC84A   ;        register 2
Vec_Music_Wk_1  =     0hC84B   ;        register 1
*                       0hC84C   ;        register 0
Vec_Freq_Table  =     0hC84D   ;Pointer to note-to-frequency table (normally 0hFC8D)
Vec_Max_Players =     0hC84F   ;Maximum number of players for Select_Game
Vec_Max_Games   =     0hC850   ;Maximum number of games for Select_Game
Vec_ADSR_Table  =     0hC84F   ;Storage for first music header word (ADSR table)
Vec_Twang_Table =     0hC851   ;Storage for second music header word ('twang' table)
Vec_Music_Ptr   =     0hC853   ;Music data pointer
Vec_Expl_ChanA  =     0hC853   ;Used by Explosion_Snd - bit for first channel used?
Vec_Expl_Chans  =     0hC854   ;Used by Explosion_Snd - bits for all channels used?
Vec_Music_Chan  =     0hC855   ;Current sound channel number for Init_Music
Vec_Music_Flag  =     0hC856   ;Music active flag (0h00=off 0h01=start 0h80=on)
Vec_Duration    =     0hC857   ;Duration counter for Init_Music
Vec_Music_Twang =     0hC858   ;3 word 'twang' table used by Init_Music
Vec_Expl_1      =     0hC858   ;Four bytes copied from Explosion_Snd's U-reg parameters
Vec_Expl_2      =     0hC859   ;
Vec_Expl_3      =     0hC85A   ;
Vec_Expl_4      =     0hC85B   ;
Vec_Expl_Chan   =     0hC85C   ;Used by Explosion_Snd - channel number in use?
Vec_Expl_ChanB  =     0hC85D   ;Used by Explosion_Snd - bit for second channel used?
Vec_ADSR_Timers =     0hC85E   ;ADSR timers for each sound channel (3 bytes)
Vec_Music_Freq  =     0hC861   ;Storage for base frequency of each channel (3 words)
*                       0hC85E   ;Scratch 'score' storage for Display_Option (7 bytes)
Vec_Expl_Flag   =     0hC867   ;Explosion_Snd initialization flag?
*               0hC868...0hC876   ;Unused?
Vec_Expl_Timer  =     0hC877   ;Used by Explosion_Snd
*                       0hC878   ;Unused?
Vec_Num_Players =     0hC879   ;Number of players selected in Select_Game
Vec_Num_Game    =     0hC87A   ;Game number selected in Select_Game
Vec_Seed_Ptr    =     0hC87B   ;Pointer to 3-byte random number seed (=0hC87D)
Vec_Random_Seed =     0hC87D   ;Default 3-byte random number seed
                                ;
*    0hC880 - 0hCBEA is user RAM  ;
                                ;
Vec_Default_Stk =     0hCBEA   ;Default top-of-stack
Vec_High_Score  =     0hCBEB   ;High score storage (7 bytes)
Vec_SWI3_Vector =     0hCBF2   ;SWI2/SWI3 interrupt vector (3 bytes)
Vec_SWI2_Vector =     0hCBF2   ;SWI2/SWI3 interrupt vector (3 bytes)
Vec_FIRQ_Vector =     0hCBF5   ;FIRQ interrupt vector (3 bytes)
Vec_IRQ_Vector  =     0hCBF8   ;IRQ interrupt vector (3 bytes)
Vec_SWI_Vector  =     0hCBFB   ;SWI/NMI interrupt vector (3 bytes)
Vec_NMI_Vector  =     0hCBFB   ;SWI/NMI interrupt vector (3 bytes)
Vec_Cold_Flag   =     0hCBFE   ;Cold start flag (warm start if = 0h7321)
                                ;
VIA_port_b      =     0hD000   ;VIA port B data I/O register
*       0 sample/hold (0=enable  mux 1=disable mux)
*       1 mux sel 0
*       2 mux sel 1
*       3 sound BC1
*       4 sound BDIR
*       5 comparator input
*       6 external device (slot pin 35) initialized to input
*       7 /RAMP
VIA_port_a      =     0hD001   ;VIA port A data I/O register (handshaking)
VIA_DDR_b       =     0hD002   ;VIA port B data direction register (0=input 1=output)
VIA_DDR_a       =     0hD003   ;VIA port A data direction register (0=input 1=output)
VIA_t1_cnt_lo   =     0hD004   ;VIA timer 1 count register lo (scale factor)
VIA_t1_cnt_hi   =     0hD005   ;VIA timer 1 count register hi
VIA_t1_lch_lo   =     0hD006   ;VIA timer 1 latch register lo
VIA_t1_lch_hi   =     0hD007   ;VIA timer 1 latch register hi
VIA_t2_lo       =     0hD008   ;VIA timer 2 count/latch register lo (refresh)
VIA_t2_hi       =     0hD009   ;VIA timer 2 count/latch register hi
VIA_shift_reg   =     0hD00A   ;VIA shift register
VIA_aux_cntl    =     0hD00B   ;VIA auxiliary control register
*       0 PA latch enable
*       1 PB latch enable
*       2 \                     110=output to CB2 under control of phase 2 clock
*       3  > shift register control     (110 is the only mode used by the Vectrex ROM)
*       4 /
*       5 0=t2 one shot                 1=t2 free running
*       6 0=t1 one shot                 1=t1 free running
*       7 0=t1 disable PB7 output       1=t1 enable PB7 output
VIA_cntl        =     0hD00C   ;VIA control register
*       0 CA1 control     CA1 -> SW7    0=IRQ on low 1=IRQ on high
*       1 \
*       2  > CA2 control  CA2 -> /ZERO  110=low 111=high
*       3 /
*       4 CB1 control     CB1 -> NC     0=IRQ on low 1=IRQ on high
*       5 \
*       6  > CB2 control  CB2 -> /BLANK 110=low 111=high
*       7 /
VIA_int_flags   =     0hD00D   ;VIA interrupt flags register
*               bit                             cleared by
*       0 CA2 interrupt flag            reading or writing port A I/O
*       1 CA1 interrupt flag            reading or writing port A I/O
*       2 shift register interrupt flag reading or writing shift register
*       3 CB2 interrupt flag            reading or writing port B I/O
*       4 CB1 interrupt flag            reading or writing port A I/O
*       5 timer 2 interrupt flag        read t2 low or write t2 high
*       6 timer 1 interrupt flag        read t1 count low or write t1 high
*       7 IRQ status flag               write logic 0 to IER or IFR bit
VIA_int_enable  =     0hD00E   ;VIA interrupt enable register
*       0 CA2 interrupt enable
*       1 CA1 interrupt enable
*       2 shift register interrupt enable
*       3 CB2 interrupt enable
*       4 CB1 interrupt enable
*       5 timer 2 interrupt enable
*       6 timer 1 interrupt enable
*       7 IER set/clear control
VIA_port_a_nohs =     0hD00F   ;VIA port A data I/O register (no handshaking)

Cold_Start      =     0hF000   ;
Warm_Start      =     0hF06C   ;
Init_VIA        =     0hF14C   ;
Init_OS_RAM     =     0hF164   ;
Init_OS         =     0hF18B   ;
Wait_Recal      =     0hF192   ;
Set_Refresh     =     0hF1A2   ;
DP_to_D0        =     0hF1AA   ;
DP_to_C8        =     0hF1AF   ;
Read_Btns_Mask  =     0hF1B4   ;
Read_Btns       =     0hF1BA   ;
Joy_Analog      =     0hF1F5   ;
Joy_Digital     =     0hF1F8   ;
Sound_Byte      =     0hF256   ;
Sound_Byte_x    =     0hF259   ;
Sound_Byte_raw  =     0hF25B   ;
Clear_Sound     =     0hF272   ;
Sound_Bytes     =     0hF27D   ;
Sound_Bytes_x   =     0hF284   ;
Do_Sound        =     0hF289   ;
Do_Sound_x      =     0hF28C   ;
Intensity_1F    =     0hF29D   ;
Intensity_3F    =     0hF2A1   ;
Intensity_5F    =     0hF2A5   ;
Intensity_7F    =     0hF2A9   ;
Intensity_a     =     0hF2AB   ;
Dot_ix_b        =     0hF2BE   ;
Dot_ix          =     0hF2C1   ;
Dot_d           =     0hF2C3   ;
Dot_here        =     0hF2C5   ;
Dot_List        =     0hF2D5   ;
Dot_List_Reset  =     0hF2DE   ;
Recalibrate     =     0hF2E6   ;
Moveto_x_7F     =     0hF2F2   ;
Moveto_d_7F     =     0hF2FC   ;
Moveto_ix_FF    =     0hF308   ;
Moveto_ix_7F    =     0hF30C   ;
Moveto_ix_a     =     0hF30E   ;
Moveto_ix       =     0hF310   ;
Moveto_d        =     0hF312   ;
Reset0Ref_D0    =     0hF34A   ;
Check0Ref       =     0hF34F   ;
Reset0Ref       =     0hF354   ;
Reset_Pen       =     0hF35B   ;
Reset0Int       =     0hF36B   ;
Print_Str_hwyx  =     0hF373   ;
Print_Str_yx    =     0hF378   ;
Print_Str_d     =     0hF37A   ;
Print_List_hw   =     0hF385   ;
Print_List      =     0hF38A   ;
Print_List_chk  =     0hF38C   ;
Print_Ships_x   =     0hF391   ;
Print_Ships     =     0hF393   ;
Mov_Draw_VLc_a  =     0hF3AD   ;count y x y x ...
Mov_Draw_VL_b   =     0hF3B1   ;y x y x ...
Mov_Draw_VLcs   =     0hF3B5   ;count scale y x y x ...
Mov_Draw_VL_ab  =     0hF3B7   ;y x y x ...
Mov_Draw_VL_a   =     0hF3B9   ;y x y x ...
Mov_Draw_VL     =     0hF3BC   ;y x y x ...
Mov_Draw_VL_d   =     0hF3BE   ;y x y x ...
Draw_VLc        =     0hF3CE   ;count y x y x ...
Draw_VL_b       =     0hF3D2   ;y x y x ...
Draw_VLcs       =     0hF3D6   ;count scale y x y x ...
Draw_VL_ab      =     0hF3D8   ;y x y x ...
Draw_VL_a       =     0hF3DA   ;y x y x ...
Draw_VL         =     0hF3DD   ;y x y x ...
Draw_Line_d     =     0hF3DF   ;y x y x ...
Draw_VLp_FF     =     0hF404   ;pattern y x pattern y x ... 0h01
Draw_VLp_7F     =     0hF408   ;pattern y x pattern y x ... 0h01
Draw_VLp_scale  =     0hF40C   ;scale pattern y x pattern y x ... 0h01
Draw_VLp_b      =     0hF40E   ;pattern y x pattern y x ... 0h01
Draw_VLp        =     0hF410   ;pattern y x pattern y x ... 0h01
Draw_Pat_VL_a   =     0hF434   ;y x y x ...
Draw_Pat_VL     =     0hF437   ;y x y x ...
Draw_Pat_VL_d   =     0hF439   ;y x y x ...
Draw_VL_mode    =     0hF46E   ;mode y x mode y x ... 0h01
Print_Str       =     0hF495   ;
Random_3        =     0hF511   ;
Random          =     0hF517   ;
Init_Music_Buf  =     0hF533   ;
Clear_x_b       =     0hF53F   ;
Clear_C8_RAM    =     0hF542   ;never used by GCE carts?
Clear_x_256     =     0hF545   ;
Clear_x_d       =     0hF548   ;
Clear_x_b_80    =     0hF550   ;
Clear_x_b_a     =     0hF552   ;
Dec_3_Counters  =     0hF55A   ;
Dec_6_Counters  =     0hF55E   ;
Dec_Counters    =     0hF563   ;
Delay_3         =     0hF56D   ;30 cycles
Delay_2         =     0hF571   ;25 cycles
Delay_1         =     0hF575   ;20 cycles
Delay_0         =     0hF579   ;12 cycles
Delay_b         =     0hF57A   ;5*B + 10 cycles
Delay_RTS       =     0hF57D   ;5 cycles
Bitmask_a       =     0hF57E   ;
Abs_a_b         =     0hF584   ;
Abs_b           =     0hF58B   ;
Rise_Run_Angle  =     0hF593   ;
Get_Rise_Idx    =     0hF5D9   ;
Get_Run_Idx     =     0hF5DB   ;
Get_Rise_Run    =     0hF5EF   ;
Rise_Run_X      =     0hF5FF   ;
Rise_Run_Y      =     0hF601   ;
Rise_Run_Len    =     0hF603   ;
Rot_VL_ab       =     0hF610   ;
Rot_VL          =     0hF616   ;
Rot_VL_Mode_a   =     0hF61F   ;
Rot_VL_Mode     =     0hF62B   ;
Rot_VL_dft      =     0hF637   ;
Xform_Run_a     =     0hF65B   ;
Xform_Run       =     0hF65D   ;
Xform_Rise_a    =     0hF661   ;
Xform_Rise      =     0hF663   ;
Move_Mem_a_1    =     0hF67F   ;
Move_Mem_a      =     0hF683   ;
Init_Music_chk  =     0hF687   ;
Init_Music      =     0hF68D   ;
Init_Music_x    =     0hF692   ;
Select_Game     =     0hF7A9   ;
Clear_Score     =     0hF84F   ;
Add_Score_a     =     0hF85E   ;
Add_Score_d     =     0hF87C   ;
Strip_Zeros     =     0hF8B7   ;
Compare_Score   =     0hF8C7   ;
New_High_Score  =     0hF8D8   ;
Obj_Will_Hit_u  =     0hF8E5   ;
Obj_Will_Hit    =     0hF8F3   ;
Obj_Hit         =     0hF8FF   ;
Explosion_Snd   =     0hF92E   ;
Draw_Grid_VL    =     0hFF9F   ;
                                ;
music1  = 0hFD0D               ;
music2  = 0hFD1D               ;
music3  = 0hFD81               ;
music4  = 0hFDD3               ;
music5  = 0hFE38               ;
music6  = 0hFE76               ;
music7  = 0hFEC6               ;
music8  = 0hFEF8               ;
music9  = 0hFF26               ;
musica  = 0hFF44               ;
musicb  = 0hFF62               ;
musicc  = 0hFF7A               ;
musicd  = 0hFF8F               ;
Char_Table = 0hF9F4
Char_Table_End = 0hFBD4

