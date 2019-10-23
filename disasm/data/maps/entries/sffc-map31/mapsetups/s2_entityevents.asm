
; ASM FILE data\maps\entries\map09\mapsetups\s2_entityevents.asm :
; 0x56722..0x56856 : 
ms_sffcmap31_EntityEvents:
                msEntityEvent 128, UP, Sffcmap31_EntityEvent5-ms_sffcmap31_EntityEvents
                msEntityEvent 129, UP, Sffcmap31_EntityEvent6-ms_sffcmap31_EntityEvents
                msEntityEvent 130, DOWN, Sffcmap31_EntityEvent7-ms_sffcmap31_EntityEvents
                msDefaultEntityEvent Sffcmap31_DefaultEntityEvent-ms_sffcmap31_EntityEvents

; =============== S U B R O U T I N E =======================================

Sffcmap31_EntityEvent5:
                move.b  #0,((CURRENT_SHOP_INDEX-$1000000)).w
                jsr     j_ShopActions
                rts

	; End of function Map9_EntityEvent5


; =============== S U B R O U T I N E =======================================

Sffcmap31_EntityEvent6:
                
                move.b  #$20,((CURRENT_SHOP_INDEX-$1000000)).w
                jsr     j_ShopActions
                rts

	; End of function Map9_EntityEvent6


; =============== S U B R O U T I N E =======================================

Sffcmap31_EntityEvent7:
                
                jsr     j_ChurchActions
                rts

	; End of function Map9_EntityEvent7


; =============== S U B R O U T I N E =======================================

Sffcmap31_DefaultEntityEvent:
                
                txt 3
                rts

	; End of function Map9_DefaultEntityEvent

