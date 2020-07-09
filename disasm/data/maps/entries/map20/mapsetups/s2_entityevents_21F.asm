
; ASM FILE data\maps\entries\map20\mapsetups\s2_entityevents_21F.asm :
; 0x63234..0x6329A : 
ms_map20_flag21F_EntityEvents:
                msEntityEvent 128, DOWN, Map20_21F_EntityEvent0-ms_map20_flag21F_EntityEvents
                msEntityEvent 129, RIGHT, Map20_21F_EntityEvent1-ms_map20_flag21F_EntityEvents
                msEntityEvent 130, UP, Map20_21F_EntityEvent2-ms_map20_flag21F_EntityEvents
                msEntityEvent 131, DOWN, Map20_21F_EntityEvent3-ms_map20_flag21F_EntityEvents
                msEntityEvent 132, DOWN, Map20_21F_EntityEvent4-ms_map20_flag21F_EntityEvents
                msEntityEvent 133, DOWN, Map20_21F_EntityEvent5-ms_map20_flag21F_EntityEvents
                msDefaultEntityEvent Map20_21F_DefaultEntityEvent-ms_map20_flag21F_EntityEvents

; =============== S U B R O U T I N E =======================================

Map20_21F_DefaultEntityEvent:
                
                rts

    ; End of function Map20_21F_DefaultEntityEvent


; =============== S U B R O U T I N E =======================================

Map20_21F_EntityEvent0:
                
                 
                chkFlg  $3D6
                bne.s   byte_63266      
                txt     $F66            ; "{LEADER}!{W2}"
                txt     $F67            ; "I'm waiting for Sir Astral.{W2}"
                txt     $F68            ; "{LEADER}, will you go{N}see him?{W1}"
                bra.s   return_6326E
byte_63266:
                
                txt     $FAA            ; "You shouldered quite a{N}burden for the kingdom.{W2}"
                txt     $FAB            ; "I'll be happy if you rule{N}this kingdom with Princess{N}Elis!{W1}"
return_6326E:
                
                rts

    ; End of function Map20_21F_EntityEvent0


; =============== S U B R O U T I N E =======================================

Map20_21F_EntityEvent1:
                
                moveq   #1,d0
                jsr     j_ClosePortraitEyes
                txt     $FAF            ; "Zzzzz....{W1}"
                rts

    ; End of function Map20_21F_EntityEvent1


; =============== S U B R O U T I N E =======================================

Map20_21F_EntityEvent2:
                
                 
                txt     $FB0            ; "I'm splitting firewood!{N}My back hurts!{W1}"
                rts

    ; End of function Map20_21F_EntityEvent2


; =============== S U B R O U T I N E =======================================

Map20_21F_EntityEvent3:
                
                 
                txt     $FB6            ; "This is the east tower.{N}I'm on watch.{W1}"
                rts

    ; End of function Map20_21F_EntityEvent3


; =============== S U B R O U T I N E =======================================

Map20_21F_EntityEvent4:
                
                 
                txt     $FB7            ; "What a view!{N}Parmecia is beautiful!{W1}"
                rts

    ; End of function Map20_21F_EntityEvent4


; =============== S U B R O U T I N E =======================================

Map20_21F_EntityEvent5:
                
                 
                txt     $FB8            ; "Yeeee!  Who are you!?{N}{LEADER}!{W2}"
                txt     $FB9            ; "I wouldn't have screamed{N}if I knew it was you.{W1}"
                rts

    ; End of function Map20_21F_EntityEvent5

