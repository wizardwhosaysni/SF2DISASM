
; ASM FILE data\maps\entries\map09\mapsetups\s6_initfunction.asm :
; 0x568C4..0x568F6 : 

; =============== S U B R O U T I N E =======================================

ms_map9_InitFunction:
                
                 
                chkFlg  $206            ; Battle 18 completed
                bne.s   byte_568D4      
                move.w  #$89,d0 
                jsr     MoveEntityOutOfMap
byte_568D4:
                
                chkFlg  $41             ; Caravan is unlocked
                beq.s   byte_568E4      
                move.w  #$B,d0
                jsr     MoveEntityOutOfMap
byte_568E4:
                
                chkFlg  $C              ; Rick joined
                beq.s   return_568F4
                move.w  #$C,d0
                jsr     MoveEntityOutOfMap
return_568F4:
                
                rts

    ; End of function ms_map9_InitFunction

