
; ASM FILE data\battles\battleendcutscenes.asm :
; 0x47BE8..0x47C48 : Enemy defeated cutscenes
rpt_EnemyDefeatedCutscenes:
                dc.w (ms_Empty-rpt_EnemyDefeatedCutscenes) & $FFFF
                dc.w (ms_Empty-rpt_EnemyDefeatedCutscenes) & $FFFF
                dc.w (ms_Empty-rpt_EnemyDefeatedCutscenes) & $FFFF
                dc.w (ms_Empty-rpt_EnemyDefeatedCutscenes) & $FFFF
                ; keeping example : dc.w edcs_battle5-rpt_EnemyDefeatedCutscenes
