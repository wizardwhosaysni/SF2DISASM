
; ASM FILE data\battles\entries\battle01\cs_beforebattle.asm :
; 0x494BC..0x496DC : Cutscene before battle 1
bbcs_01:        textCursor $8F4
                loadMapFadeIn 0,2,10
                loadMapEntities ce_49694
                setActscriptWait ALLY_IAN,eas_Init
                setPos ALLY_MEAD,8,17,UP
                setPos ALLY_PAIGE,7,17,UP
                setActscriptWait ALLY_MEAD,eas_Init
                fadeInB
                setCamDest 2,8
                csWait 60
                setFacing 135,DOWN
                nextText $0,135         ; "There you are, {LEADER}.{N}Stay here.{W2}"
                nextSingleText $0,135   ; "I'll take a look inside the{N}tower.{W1}"
                setCameraEntity 135
                executeSubroutine removeIanFromParty
                csc_end                    
 
ce_49694:       mainEntity 7,16,UP
                entity 63,63,DOWN,MAPSPRITE_MIST_DEMON,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GIZMO,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GIZMO,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GIZMO,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GIZMO,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GIZMO,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GIZMO,eas_Init
                entity 7,11,UP,MAPSPRITE_ASTRAL,eas_Init
                dc.w $FFFF

removeIanFromParty:
                moveq   #ALLY_IAN,d0  ; starting character
                jsr   LeaveForce
                rts