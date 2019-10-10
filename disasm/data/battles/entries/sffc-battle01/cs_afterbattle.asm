
; ASM FILE data\battles\entries\battle01\cs_afterbattle.asm :
; 0x496DC..0x4980E : Cutscene after battle 1
abcs_battle01:  textCursor $901
                resetForceBattleStats
                loadMapFadeIn 0,2,0
                loadMapEntities ce_497F6
                setActscriptWait ALLY_IAN,eas_Init
                setPos ALLY_MEAD,8,7,UP
                setPos ALLY_PAIGE,8,8,UP
                fadeInB
                csWait 40
                nextSingleText $0,129   ; "Well done, {LEADER}!{N}What should I do with this{N}devil?{W1}"
                setFacing 129,UP
                setF $192
                warp 1,5,5,DOWN
                yesNo
                executeSubroutine reinsertIanIntoParty
                csc_end        
ce_497F6:       mainEntity 8,6,UP
                entity 7,4,DOWN,MAPSPRITE_MIST_DEMON,eas_Init
                entity 7,6,RIGHT,MAPSPRITE_ASTRAL,eas_Init
                dc.w $FFFF
                
reinsertIanIntoParty:
                moveq   #ALLY_IAN,d0  ; starting character
                jsr   JoinForce
                rts                
