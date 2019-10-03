
; ASM FILE data\battles\entries\battle18\cs_beforebattle.asm :
; 0x4B1D8..0x4B2F2 : Cutscene before battle 18
bbcs_18:        textCursor $9D8
                loadMapFadeIn 12,7,22
                loadMapEntities ce_4B2DA
                setActscriptWait ALLY_IAN,eas_Init
                setActscriptWait ALLY_RUBURAN,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                setActscriptWait ALLY_ERIC,eas_Init
                setPos ALLY_RUBURAN,13,33,UP
                setPos FOLLOWER_B,12,33,UP
                setPos ALLY_ERIC,11,33,UP
                stopEntity 129
                playSound MUSIC_SHRINE
                fadeInB
                cameraSpeed $40
                entityActions ALLY_IAN
                 moveUp 6
                endActions
                entityActions ALLY_RUBURAN
                 moveUp 6
                endActions
                entityActions ALLY_ERIC
                 moveUp 6
                endActions
                entityActionsWait FOLLOWER_B
                 moveUp 6
                endActions
                nextSingleText $0,128   ; "Stop!{W1}"
                csWait 5
                setActscript ALLY_IAN,eas_461B6
                csWait 5
                setActscript ALLY_RUBURAN,eas_461B6
                csWait 5
                setActscript ALLY_ERIC,eas_461E4
                csWait 5
                setActscript FOLLOWER_B,eas_461B6
                csWait 30
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                endActions
                nextSingleText $C0,ALLY_RUBURAN ; "Who IS that big guy?{W1}"
                entityActionsWait ALLY_ERIC
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_ERIC ; "Don't you know?{W1}"
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                setFacing FOLLOWER_B,UP
                csWait 30
                setCameraEntity 128
                nextSingleText $0,ALLY_ERIC ; "That's Taros.  The guardian of{N}this ancient shrine.{W1}"
                nextSingleText $0,128   ; "Again, stop right there, or{N}I'll attack you.{W1}"
                setCamDest 7,22
                setFacing ALLY_IAN,RIGHT
                setFacing ALLY_RUBURAN,LEFT
                setFacing ALLY_ERIC,RIGHT
                nextSingleText $C0,ALLY_RUBURAN ; "What should we do?{W1}"
                setFacing ALLY_IAN,LEFT
                nextSingleText $0,ALLY_ERIC ; "The Caravan is there, behind{N}him.  We must have it!{W1}"
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                setFacing ALLY_ERIC,UP
                nextSingleText $0,128   ; "Time's up!  Now we battle.{W1}"
                csc_end
ce_4B2DA:       mainEntity 12,32,UP
                entity 12,8,DOWN,MAPSPRITE_TAROS,eas_Init
                entity 12,5,DOWN,MAPSPRITE_CARAVAN,eas_Init
                dc.w $FFFF
