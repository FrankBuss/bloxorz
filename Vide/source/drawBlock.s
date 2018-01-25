                    .area    .text 
; assumes intensity set
; assumes dp = d0
                    .setdp   0xd000,_DATA 
                    .globl   _drawFieldAsmScale 
_drawFieldAsmScale: 
                    pshs     y, u                         ; this is not really needed 
                    LDB      #0xCC                        ; do zero 
                    STB      *0xD00c                      ;/BLANK low and /ZERO low 
                    ldx      #0                           ; init offset 
                    lda      _moveScale                   ; load first known scale 
                    STA      *0xD004                      ; to T1 - next round this will be done "in draw" 
                    ldd      _moveTo                      ; load first move 
                    bra      startLoop                    ; and jump into the loop 

SdrawFieldLoop: 
                    nop                                   ; some delay necessary for correct zeroing! 
                    nop      
                    tfr      u,d                          ; load prepared next move y,x 
startLoop: 
                    STA      *0xD001                      ; Store Y in D/A register 
                    CLR      *0xD000                      ; Enable mux 
                    nop                                   ; short delay to "load" sh of y 
                    LDA      #0xCE                        ; Blank low, zero high -> disable zero mainly 
                    STA      *0xD00c 
;                    CLR      *0xD00a                      ; Clear shift regigster, if it isn't cleafed already there is someting wrong...
                    INC      *0xD000                      ; Disable mux 
                    STB      *0xD001                      ; Store X in D/A register 
                    CLR      *0xD005                      ; timer 1 count high, start timer 
; now we are moving - prepare stuff...
;
; first set t1 latch to next scale
                    lda      _lineScale,x 
                    STA      *0xD004                      ; t1 latch 
; we prepare u, so all we need is to store "u" to Via_b (as y)
                    ldb      _lineY1,x 
                    subb     _lineY0,x                    ; this is our "y" delta for next vector 
                    cmpa     #0x7f                        ; see if we are at maximum scale 
                    bhs      noDouble1                    ; if yes - leave it 
                    aslb                                  ; otherwise smaller scale means we can double the strength 
                    cmpa     #0x3a                        ; on really small scale 
                    bhs      noDouble1                    ; we can quadrupel 
                    aslb     
noDouble1: 
                    clra                                  ; this will set mux to enable - later 
                    tfr      d,u                          ; y value + portb = 0 
; y part of next vector is prepared - now we prepare the y part
; we prepare y, so all we need is to store "y" to Via_b (as x)
                    ldb      _lineX1,x 
                    subb     _lineX0,x                    ; this is our "x" delta for next vector 
                    lda      _lineScale,x                 ; fetch the current scale to compare again 
                    cmpa     #0x7f                        ; see if we are at maximum scale 
                    bhs      noDouble2                    ; if yes - leave it 
                    aslb                                  ; otherwise smaller scale means we can double the strength 
                    cmpa     #0x3a                        ; on really small scale 
                    bhs      noDouble2                    ; we can quadrupel 
                    aslb     
noDouble2: 
                    lda      #1                           ; this will set mux to disable 
                    tfr      d,y                          ; x value + portb = 1 
; we check if all lines are drawn - if so this is the last we draw it - and exit
                    leax     1,x                          ; x=x+1 
                    tfr      x,d                          ; this also leaves a = 0 
                    cmpb     _lineCount                   ; if we reached line count we will be done here 
                    beq      SdoLastDraw                  ; branch to draw last line 
                    LDB      #0x40                        ; otherwise wait for T1 to finish (moving) 
LF345_d1:           BITB     *0xD00D                      ;Wait for timer 1 
                    BEQ      LF345_d1 
; possibly some nops here!
; for mega correct placements
;   nop
;   nop
;   nop
;   nop
;   nop
;   nop
;   nop
;   nop
;   nop
; Start draw 
                    stu      *0xD000                      ; store y pos to port a, enable mux (reg b) and set mux to y 
                    ldb      #0xff                        ; delay and in the while load value for shift reg 
                    sty      *0xD000                      ; store x pos to port a, disable mux (reg b) 
                    stb      *0xD00a                      ; shiftreg = $ff > draw line , 4 cycles before timer -> white dot in the beginning 
                    STA      *0xD005                      ; a = 0; enable timer, cant be helped 
; now we have at least 0x20 cycles to "waste"
; make sure the cycles wasted are "constant" cycles, otherwise line
; will "flicker" at the end!
;
; prepare movement scale of next line
                    lda      _moveScale,x                 ; timer for next move (scale) 
                    STa      *0xD004                      ; set t1 latch for next move 
; prepare next moveTo's
                    tfr      x,d                          ; get line counter 
                    aslb                                  ; times two (moveTos ate words, not bytes) 
                    ldu      #_moveTo                     ; get base address 
                    ldu      b,u                          ; and load value at offset to u (u will be transfered to d) 
                    LDB      #0x40                        ; wait for line tofinish 
SWaitDrawEnd:       BITB     *0xD00D                      ; check timer 1 flag 
                    BEQ      SWaitDrawEnd                 ; 
                    nop                                   ; delay 6 cycles, so shiftreg comes to "rest" or ramp or whatever 
                    LDB      #0xCC                        ; go zero 
                    sta      *0xD00a                      ; a = 0; shiftreg = 0, drawing switched off 
; End draw 
                    STB      *0xD00c                      ; /BLANK low and /ZERO low, go zero 
                    jmp      SdrawFieldLoop               ; draw next line 

; draw the last line
; no "prep" needed here...
SdoLastDraw: 
                    LDB      #0x40                        ; wait for line tofinish 
SWaitMoveEnd2:      BITB     *0xD00D                      ; check timer 1 flag 
                    BEQ      SWaitMoveEnd2                ; 
; movement ist finished now
; start drawing!
                    stu      *0xD000                      ; store y pos to a, enable mux (reg b) and set mux to y 
                    LDB      #0x40                        ; delay and prepare bit compare
                    sty      *0xD000                      ; store x pos to a, disable mux (reg b) 
                    dec      *0xD00a                      ; shift reg is 0, if we dec, than shiftreg = $ff > draw line 
                    STA      *0xD005                      ; a = 0; enable timer 
SWaitDrawEnd2:      BITB     *0xD00D                      ; check timer 1 flag 
                    BEQ      SWaitDrawEnd2                ; 
                    nop      
                    nop      
                    sta      *0xD00a                      ; a = 0; 
                    puls     y, u                         ; this is not really needed 
                    rts      
