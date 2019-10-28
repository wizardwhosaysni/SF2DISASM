
; ASM FILE data\battles\entries\battle01\cs_beforebattle.asm :
; 0x494BC..0x496DC : Cutscene before battle 1
bbcs_02:        textCursor $8F4
                loadMapFadeIn 1,2,10
                loadMapEntities ce_bbcs02
                setActscriptWait ALLY_IAN,eas_Init
                fadeInB
                setCamDest 2,8
                csWait 60
                setFacing 128,DOWN
                nextText $0,128         ; "There you are, {LEADER}.{N}Stay here.{W2}"
                setCameraEntity 128
                csc_end                    
 
ce_bbcs02:       mainEntity 7,16,UP
                entity 7,11,UP,MAPSPRITE_ASTRAL,eas_Init
                dc.w $FFFF