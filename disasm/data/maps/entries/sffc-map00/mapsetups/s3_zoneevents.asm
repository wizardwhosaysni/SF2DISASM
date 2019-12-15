
ms_sffcmap00_ZoneEvents:
                msZoneEvent $FF, 1, SffcMap00_ZoneEvent0-ms_sffcmap00_ZoneEvents
                msDefaultZoneEvent SffcMap00_DefaultZoneEvent-ms_sffcmap00_ZoneEvents

; =============== S U B R O U T I N E =======================================

SffcMap00_ZoneEvent0:
                
                script  cs_CampExit
                
                rts

	; End of function Map00_ZoneEvent0


; =============== S U B R O U T I N E =======================================

SffcMap00_DefaultZoneEvent:
                
                rts

	; End of function Map9_DefaultZoneEvent
	
	
cs_CampExit:
		setCameraEntity -1
    entityActions 1
      moveUp 3
    endActions
    playSound $59
    csWait 20
    ;playSound $FD
    ;fadeOutB
		jumpIfFlagSet $1F4+21,cs_CampExit_Battle22
		jumpIfFlagSet $1F4+20,cs_CampExit_Battle21
		jumpIfFlagSet $1F4+19,cs_CampExit_Battle20
		jumpIfFlagSet $1F4+18,cs_CampExit_Battle19
		jumpIfFlagSet $1F4+17,cs_CampExit_Battle18
		jumpIfFlagSet $1F4+16,cs_CampExit_Battle17
		jumpIfFlagSet $1F4+15,cs_CampExit_Battle16
		jumpIfFlagSet $1F4+14,cs_CampExit_Battle15
		jumpIfFlagSet $1F4+13,cs_CampExit_Battle14
		jumpIfFlagSet $1F4+12,cs_CampExit_Battle13
		jumpIfFlagSet $1F4+11,cs_CampExit_Battle12
		jumpIfFlagSet $1F4+10,cs_CampExit_Battle11
		jumpIfFlagSet $1F4+09,cs_CampExit_Battle10
		jumpIfFlagSet $1F4+08,cs_CampExit_Battle09
		jumpIfFlagSet $1F4+07,cs_CampExit_Battle08
		jumpIfFlagSet $1F4+06,cs_CampExit_Battle07
		jumpIfFlagSet $1F4+05,cs_CampExit_Battle06
		jumpIfFlagSet $1F4+04,cs_CampExit_Battle05
		jumpIfFlagSet $1F4+03,cs_CampExit_Battle04
		jumpIfFlagSet $1F4+02,cs_CampExit_Battle03
		jumpIfFlagSet $1F4+01,cs_CampExit_Battle02
    warp 1,3,6,DOWN
    csc_end
   
cs_CampExit_Battle22:
    warp 22,5,5,DOWN
    csc_end
cs_CampExit_Battle21:
    warp 21,5,5,DOWN
    csc_end    		   
cs_CampExit_Battle20:
    warp 20,5,5,DOWN
    csc_end
cs_CampExit_Battle19:
    warp 19,5,5,DOWN
    csc_end
cs_CampExit_Battle18:
    warp 18,5,5,DOWN
    csc_end    		   
cs_CampExit_Battle17:
    warp 17,5,5,DOWN
    csc_end
cs_CampExit_Battle16:
    warp 16,5,5,DOWN
    csc_end
cs_CampExit_Battle15:
    warp 15,5,5,DOWN
    csc_end    		   
cs_CampExit_Battle14:
    warp 14,5,5,DOWN
    csc_end
cs_CampExit_Battle13:
    warp 13,5,5,DOWN
    csc_end
cs_CampExit_Battle12:
    warp 12,5,5,DOWN
    csc_end    		   
cs_CampExit_Battle11:
    warp 11,5,5,DOWN
    csc_end
cs_CampExit_Battle10:
    warp 10,5,5,DOWN
    csc_end
cs_CampExit_Battle09:
    warp 09,5,5,DOWN
    csc_end    		   
cs_CampExit_Battle08:
    warp 08,5,5,DOWN
    csc_end
cs_CampExit_Battle07:
    warp 07,5,5,DOWN
    csc_end
cs_CampExit_Battle06:
    warp 06,5,5,DOWN
    csc_end    		   
cs_CampExit_Battle05:
    warp 05,5,5,DOWN
    csc_end
cs_CampExit_Battle04:
    warp 04,5,5,DOWN
    csc_end
cs_CampExit_Battle03:
    warp 03,5,5,DOWN
    csc_end    		   
cs_CampExit_Battle02:
    warp 02,5,5,DOWN
    csc_end
  

