
; ASM FILE data\maps\mapsetups.asm :
; 0x4F6E2..0x4FA70 : Map setups table
MapSetups:      
                ; TODO : map03 (bridge) entry similar to oddeye battle for bridge damage depending on battle progress.
                msMap 30, ms_sffcmap30
                msMapEnd
                msMap 31, ms_sffcmap31
                msMapEnd
                msMap 32, ms_sffcmap32
                msMapEnd
                msEnd
