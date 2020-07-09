
; ASM FILE data\maps\entries\map14\mapsetups\s2_entityevents.asm :
; 0x58EBA..0x58F0E : 
ms_map14_EntityEvents:
                msEntityEvent 1, UP, Map14_EntityEvent0-ms_map14_EntityEvents
                msEntityEvent 2, RIGHT, Map14_EntityEvent1-ms_map14_EntityEvents
                msEntityEvent 4, UP, Map14_EntityEvent2-ms_map14_EntityEvents
                msEntityEvent 5, UP, Map14_EntityEvent3-ms_map14_EntityEvents
                msEntityEvent 6, UP, Map14_EntityEvent4-ms_map14_EntityEvents
                msEntityEvent 128, UP, Map14_EntityEvent5-ms_map14_EntityEvents
                msEntityEvent 129, DOWN, Map14_EntityEvent6-ms_map14_EntityEvents
                msEntityEvent 130, UP, Map14_EntityEvent7-ms_map14_EntityEvents
                msDefaultEntityEvent Map14_DefaultEntityEvent-ms_map14_EntityEvents

; =============== S U B R O U T I N E =======================================

Map14_EntityEvent0:
                
                 
                txt     $8CD            ; "That's OK.  {NAME;3} needed{N}a bath anyway.{W1}"
Map14_DefaultEntityEvent:
                
                rts

    ; End of function Map14_EntityEvent0


; =============== S U B R O U T I N E =======================================

Map14_EntityEvent1:
                
                 
                txt     $8CF            ; "I can't talk now!{N}I'm working!{W1}"
                rts

    ; End of function Map14_EntityEvent1


; =============== S U B R O U T I N E =======================================

Map14_EntityEvent2:
                
                 
                txt     $8CE            ; "{LEADER}, bring that plank{N}above deck.{W1}"
                rts

    ; End of function Map14_EntityEvent2


; =============== S U B R O U T I N E =======================================

Map14_EntityEvent3:
                
                 
                txt     $8D0            ; "Boy, I sure hope {NAME;3}{N}can swim....{W1}"
                rts

    ; End of function Map14_EntityEvent3


; =============== S U B R O U T I N E =======================================

Map14_EntityEvent4:
                
                 
                txt     $8D1            ; "What can I do to help?{W1}"
                rts

    ; End of function Map14_EntityEvent4


; =============== S U B R O U T I N E =======================================

Map14_EntityEvent5:
                
                 
                txt     $8D2            ; "Our home town will be{N}reborn!{W1}"
                rts

    ; End of function Map14_EntityEvent5


; =============== S U B R O U T I N E =======================================

Map14_EntityEvent6:
                
                 
                txt     $8D3            ; "They're mining granite for{N}our town at North Cliff.{W1}"
                rts

    ; End of function Map14_EntityEvent6


; =============== S U B R O U T I N E =======================================

Map14_EntityEvent7:
                
                 
                txt     $8D4            ; "You had better bring up that{N}plank!{W1}"
                rts

    ; End of function Map14_EntityEvent7

