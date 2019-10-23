
; ASM FILE data\maps\entries\map09\mapsetups\s3_zoneevents.asm :
; 0x56856..0x5687A : 
ms_sffcmap30_ZoneEvents:
                ;msZoneEvent 4, 57, SffcMap30_ZoneEvent0-ms_sffcmap30_ZoneEvents
                ;msZoneEvent 4, 58, SffcMap30_ZoneEvent0-ms_sffcmap30_ZoneEvents
                ;msZoneEvent 4, 59, SffcMap30_ZoneEvent0-ms_sffcmap30_ZoneEvents
                msDefaultZoneEvent SffcMap30_DefaultZoneEvent-ms_sffcmap30_ZoneEvents

; =============== S U B R O U T I N E =======================================

SffcMap30_ZoneEvent0:
                
                 
                chkFlg  $2D6            ; Set after talking to the priest in upstairs Hassan
                bne.s   SffcMap30_return_56876
                ;script  cs_568F6
                setFlg  $2D6            ; Set after talking to the priest in upstairs Hassan
SffcMap30_return_56876:
                
                rts

	; End of function Map9_ZoneEvent0


; =============== S U B R O U T I N E =======================================

SffcMap30_DefaultZoneEvent:
                
                rts

	; End of function Map9_DefaultZoneEvent

