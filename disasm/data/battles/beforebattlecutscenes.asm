
; ASM FILE data\battles\beforebattlecutscenes.asm :
; 0x47A88..0x47AE8 : Before battle cutscenes
rpt_BeforeBattleCutscenes:
                
                dc.w (ms_Empty-rpt_BeforeBattleCutscenes) & $FFFF
                dc.w bbcs_01-rpt_BeforeBattleCutscenes
                dc.w bbcs_02-rpt_BeforeBattleCutscenes
                dc.w bbcs_03-rpt_BeforeBattleCutscenes
