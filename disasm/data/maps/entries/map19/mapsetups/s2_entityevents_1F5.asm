
; ASM FILE data\maps\entries\map19\mapsetups\s2_entityevents_1F5.asm :
; 0x52F60..0x52F90 : 
ms_map19_flag1F5_EntityEvents:
                msEntityEvent 128, UP, Map19_1F5_EntityEvent0-ms_map19_flag1F5_EntityEvents
                msEntityEvent 129, DOWN, Map19_1F5_EntityEvent1-ms_map19_flag1F5_EntityEvents
                msEntityEvent 130, DOWN, Map19_1F5_EntityEvent2-ms_map19_flag1F5_EntityEvents
                msDefaultEntityEvent (Map19_DefaultEntityEvent-ms_map19_flag1F5_EntityEvents) & $FFFF

; =============== S U B R O U T I N E =======================================

Map19_1F5_EntityEvent0:
                
                 
                chkFlg  $100            ; TEMP FLAG #00
                bne.s   byte_52F7E      
                txt     $249            ; "Well, boy.  Did you hear a{N}strange noise?{W2}"
                setFlg  $100            ; TEMP FLAG #00
byte_52F7E:
                
                txt     $24A            ; "I don't know why, but{N}everybody ignores my{N}questions....{W1}"
                rts

    ; End of function Map19_1F5_EntityEvent0


; =============== S U B R O U T I N E =======================================

Map19_1F5_EntityEvent1:
                
                 
                txt     $247            ; "The Minister ordered me{N}to stand here.{N}What's happening upstairs?{W1}"
                rts

    ; End of function Map19_1F5_EntityEvent1


; =============== S U B R O U T I N E =======================================

Map19_1F5_EntityEvent2:
                
                 
                txt     $248            ; "By the Minister's order,{N}I cannot let you pass.{N}Sorry!{W1}"
                rts

    ; End of function Map19_1F5_EntityEvent2

