; TODO: .include "vectrex.i" doesn't work
VIA_port_a      =     0hD001   ;VIA port A data I/O register (handshaking)
VIA_port_b      =     0hD000   ;VIA port B data I/O register
Wait_Recal      =     0hF192   ;
Intensity_5F    =     0hF2A5   ;
Print_Str_d     =     0hF37A   ;
Vec_Snd_Shadow  =     0hC800   ;Shadow of sound chip registers (15 bytes)

;***************************************************************************
; CODE SECTION
;***************************************************************************

	.area .text

                    .setdp   0xd000,_DATA 
	
arkosPlayerString:
                    .ascii       "ARKOS PLAYER"             ; some game information
                    .db       0h80, 0                    ; end of game header 
	
	.globl  _musicInit
_musicInit:
	pshs    d,dp,x
 ldu #aks_song
 jsr    PLY_INIT 
	puls d,dp,x,pc       ; restore registers from stack and return
 
	.globl  _musicPlay
_musicPlay:
	pshs    d,dp,x
 jsr    PLY_PLAY   
 bsr do_ym_sound2

	puls d,dp,x,pc       ; restore registers from stack and return

	

	.globl  _player_test
_player_test:

 ldu #aks_song
 jsr    PLY_INIT 
 bra main
main: 
                    JSR      Wait_Recal           ; Vectrex BIOS recalibration 
                    JSR      Intensity_5F         ; Sets the intensity of the 
                                                  ; vector beam to 0h5f 
                    LDU      #arkosPlayerString  ; address of string 
                    LDA      #0h10                 ; Text position relative Y 
                    LDB      #0h50                ; Text position relative X 
                    JSR      Print_Str_d          ; Vectrex BIOS print routine 

 jsr    PLY_PLAY   
 bsr do_ym_sound2

                    BRA      main                 ; and repeat forever 

;***************************************************************************

do_ym_sound2:  
                                             ;#isfunction  
	lda #0hd0		; setup direct page to 0xd000
	tfr a, dp

; copy all shadows
                    lda      #13                          ; number of regs to copy (+1) 
                    ldx      #PLY_PSGREG0                 ; music players write here 
                    ldu      #Vec_Snd_Shadow              ; shadow of actual PSG 
next_reg_dsy: 
                    ldb      a, x 
                    cmpb     a, u 
                    beq      inc_reg_dsy 
; no put to psg
                    stb      a,u                          ; ensure shadow has copy 
; a = register
; b = value
                    STA      *VIA_port_a                  ;store register select byte 
                    LDA      #0h19                         ;sound BDIR on, BC1 on, mux off _ LATCH 
                    STA      *VIA_port_b 
                    LDA      #0h01                         ;sound BDIR off, BC1 off, mux off - INACTIVE 
                    STA      *VIA_port_b 
                    LDA      *VIA_port_a                  ;read sound chip status (?) 
                    STB      *VIA_port_a                  ;store data byte 
                    LDB      #0h11                         ;sound BDIR on, BC1 off, mux off - WRITE 
                    STB      *VIA_port_b 
                    LDB      #0h01                         ;sound BDIR off, BC1 off, mux off - INACTIVE 
                    STB      *VIA_port_b 
inc_reg_dsy: 
                    deca     
                    bpl      next_reg_dsy 

doneSound_2:
                    rts      
