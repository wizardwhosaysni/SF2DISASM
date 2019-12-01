
; ASM FILE data\battles\afterbattlecutscenes.asm :
; 0x47CF4..0x47D54 : After battle cutscenes
rpt_AfterBattleCutscenes:
                
                dc.w abcs_battle01-rpt_AfterBattleCutscenes
                dc.w abcs_battle01-rpt_AfterBattleCutscenes
                dc.w abcs_battle02-rpt_AfterBattleCutscenes
                dc.w (ms_Empty-rpt_AfterBattleCutscenes) & $FFFF
