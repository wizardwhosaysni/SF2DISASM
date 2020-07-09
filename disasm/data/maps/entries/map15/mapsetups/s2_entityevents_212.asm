
; ASM FILE data\maps\entries\map15\mapsetups\s2_entityevents_212.asm :
; 0x5CF9E..0x5CFFA : 
ms_map15_flag212_EntityEvents:
                msEntityEvent 128, UP, (Map15_EntityEvent0-ms_map15_flag212_EntityEvents) & $FFFF
                msEntityEvent 129, UP, Map15_212_EntityEvent1-ms_map15_flag212_EntityEvents
                msEntityEvent 130, DOWN, Map15_212_EntityEvent2-ms_map15_flag212_EntityEvents
                msEntityEvent 131, UP, Map15_212_EntityEvent3-ms_map15_flag212_EntityEvents
                msEntityEvent 132, UP, Map15_212_EntityEvent4-ms_map15_flag212_EntityEvents
                msEntityEvent 133, DOWN, Map15_212_EntityEvent5-ms_map15_flag212_EntityEvents
                msEntityEvent 134, UP, Map15_212_EntityEvent6-ms_map15_flag212_EntityEvents
                msEntityEvent 135, UP, (Map15_EntityEvent9-ms_map15_flag212_EntityEvents) & $FFFF
                msEntityEvent 136, UP, (Map15_EntityEvent10-ms_map15_flag212_EntityEvents) & $FFFF
                msEntityEvent 137, DOWN, (Map15_EntityEvent11-ms_map15_flag212_EntityEvents) & $FFFF
                msDefaultEntityEvent (Map15_DefaultEntityEvent-ms_map15_flag212_EntityEvents) & $FFFF

; =============== S U B R O U T I N E =======================================

Map15_212_EntityEvent1:
                
                 
                txt     $7CD            ; "I heard that Zeon, the{N}legendary devil, is{N}approaching Parmecia.{W2}"
                txt     $7CE            ; "Will Tristan be attacked?{W1}"
                rts

    ; End of function Map15_212_EntityEvent1


; =============== S U B R O U T I N E =======================================

Map15_212_EntityEvent2:
                
                 
                txt     $7CF            ; "It's said that some devils{N}steal your spirit.{W2}"
                txt     $7D0            ; "If your spirit is stolen, you{N}become a vampire.{W1}"
                rts

    ; End of function Map15_212_EntityEvent2


; =============== S U B R O U T I N E =======================================

Map15_212_EntityEvent3:
                
                 
                txt     $7D1            ; "Have you seen a vampire?{W2}"
                txt     $7D2            ; "A vampire becomes a mortal{N}again if the devil is purged{N}from the body.{W1}"
                rts

    ; End of function Map15_212_EntityEvent3


; =============== S U B R O U T I N E =======================================

Map15_212_EntityEvent4:
                
                 
                txt     $7D3            ; "I did see a ship in the{N}western sky!{W1}"
                rts

    ; End of function Map15_212_EntityEvent4


; =============== S U B R O U T I N E =======================================

Map15_212_EntityEvent5:
                
                 
                txt     $7D4            ; "Thank you.  You saved Mitula{N}and Pacalon!{W1}"
                rts

    ; End of function Map15_212_EntityEvent5


; =============== S U B R O U T I N E =======================================

Map15_212_EntityEvent6:
                
                 
                txt     $7D5            ; "To keep the devils out,{N}Moun gate has been closed.{W1}"
                rts

    ; End of function Map15_212_EntityEvent6

