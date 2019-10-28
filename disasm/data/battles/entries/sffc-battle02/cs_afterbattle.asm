
; ASM FILE data\battles\entries\battle01\cs_afterbattle.asm :
; 0x496DC..0x4980E : Cutscene after battle 1
abcs_battle02:  textCursor $901
                resetForceBattleStats
                loadMapFadeIn 1,2,0
                loadMapEntities ce_abcs_battle02
                setActscriptWait ALLY_IAN,eas_Init
                fadeInB
                csWait 40
                nextSingleText $0,128   ; "Well done, {LEADER}!{N}What should I do with this{N}devil?{W1}"
                setFacing 128,UP
                setF $193
                warp 2,5,5,DOWN
                csc_end        
ce_abcs_battle02:
                mainEntity 8,6,UP
                entity 7,6,RIGHT,MAPSPRITE_ASTRAL,eas_Init
                dc.w $FFFF       
