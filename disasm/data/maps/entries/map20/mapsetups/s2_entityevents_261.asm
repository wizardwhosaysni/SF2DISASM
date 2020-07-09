
; ASM FILE data\maps\entries\map20\mapsetups\s2_entityevents_261.asm :
; 0x538B4..0x53928 : 
ms_map20_flag261_EntityEvents:
                msEntityEvent 128, RIGHT, Map20_261_EntityEvent0-ms_map20_flag261_EntityEvents
                msEntityEvent 129, DOWN, Map20_261_EntityEvent1-ms_map20_flag261_EntityEvents
                msEntityEvent 130, DOWN, Map20_261_EntityEvent2-ms_map20_flag261_EntityEvents
                msEntityEvent 132, DOWN, Map20_261_EntityEvent3-ms_map20_flag261_EntityEvents
                msEntityEvent 133, DOWN, Map20_261_EntityEvent4-ms_map20_flag261_EntityEvents
                msEntityEvent 134, DOWN, Map20_261_EntityEvent5-ms_map20_flag261_EntityEvents
                msEntityEvent 135, DOWN, Map20_261_EntityEvent6-ms_map20_flag261_EntityEvents
                msDefaultEntityEvent (Map20_DefaultEntityEvent-ms_map20_flag261_EntityEvents) & $FFFF

; =============== S U B R O U T I N E =======================================

Map20_261_EntityEvent0:
                
                 
                txt     $256            ; "Sir Astral is sleeping{N}in the King's bedroom.{N}Don't worry!{W1}"
                rts

    ; End of function Map20_261_EntityEvent0


; =============== S U B R O U T I N E =======================================

Map20_261_EntityEvent1:
                
                 
                chkFlg  $101            ; TEMP FLAG #01
                bne.s   byte_538E8      
                txt     $259            ; "Thank you, {LEADER}.{N}You've saved the King's{N}life.{W2}{N}I heard that you are going{N}to Yeel.{W2}{N}I'll take care of Sir Astral{N}for you.{W2}"
                setFlg  $101            ; TEMP FLAG #01
byte_538E8:
                
                txt     $25A            ; "Please be careful.{W1}"
                rts

    ; End of function Map20_261_EntityEvent1


; =============== S U B R O U T I N E =======================================

Map20_261_EntityEvent2:
                
                 
                chkFlg  $102            ; TEMP FLAG #02
                bne.s   byte_538FC      
                txt     $25B            ; "Are you going to see{N}Mr. Hawel?{W2}"
                setFlg  $102            ; TEMP FLAG #02
byte_538FC:
                
                txt     $25C            ; "I wouldn't let you go alone{N}if I weren't...{W2}{N}I trust you, son.{W1}"
                rts

    ; End of function Map20_261_EntityEvent2


; =============== S U B R O U T I N E =======================================

Map20_261_EntityEvent4:
                
                 
                chkFlg  $104            ; TEMP FLAG #04
                bne.s   byte_53910      
                txt     $25D            ; "Princess Elis has not rested{N}since the King collapsed.{W2}"
                setFlg  $104            ; TEMP FLAG #04
byte_53910:
                
                txt     $25E            ; "I understand her reasoning,{N}but she might get sick, too.{W1}"
                rts

    ; End of function Map20_261_EntityEvent4


; =============== S U B R O U T I N E =======================================

Map20_261_EntityEvent3:
                
                 
                txt     $236            ; "This east tower was built{N}in order to watch for{N}invaders.{W1}"
                rts

    ; End of function Map20_261_EntityEvent3


; =============== S U B R O U T I N E =======================================

Map20_261_EntityEvent5:
                
                 
                txt     $25F            ; "She has been shrivering like{N}this since she came back{N}from the King's room.{W2}{N}She won't work.{W1}"
                rts

    ; End of function Map20_261_EntityEvent5


; =============== S U B R O U T I N E =======================================

Map20_261_EntityEvent6:
                
                 
                txt     $260            ; "I...I've never seen such a{N}horrible face....{W2}{N}I can't tell anybody.{N}They wouldn't believe me.{W1}"
                rts

    ; End of function Map20_261_EntityEvent6

