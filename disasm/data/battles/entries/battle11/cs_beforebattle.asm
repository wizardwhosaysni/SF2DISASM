
; ASM FILE data\battles\entries\battle11\cs_beforebattle.asm :
; 0x4ABFE..0x4ACC8 : Cutscene before battle 11
bbcs_11:        textCursor $9B3
                setCameraEntity ALLY_IAN
                loadMapFadeIn 48,8,19
                loadMapEntities ce_4ACA0
                setActscriptWait ALLY_IAN,eas_Init
                setCameraEntity ALLY_IAN
                executeSubroutine sub_458E
                fadeInB
                playSound $FD
                entityActionsWait ALLY_RUBURAN
                 moveLeft 1
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_RUBURAN ; "You'll come to the foot of{N}Mt. Volcano through this{N}dark cave.{W2}"
                setFacing ALLY_RUBURAN,RIGHT
                setFacing ALLY_IAN,LEFT
                nextSingleText $0,ALLY_RUBURAN ; "But, I heard this cave is{N}home to a hobgoblin.{W1}"
                csWait 20
                nextSingleText $0,128   ; "Yes, it is!{W1}"
                playSound MUSIC_ENEMY_ATTACK
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                endActions
                csWait 5
                setActscript ALLY_IAN,eas_461B6
                csWait 5
                setActscript ALLY_RUBURAN,eas_461E4
                csWait 120
                setFacing ALLY_IAN,UP
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_RUBURAN ; "Wh...Who said that?{W1}"
                nextSingleText $0,128   ; "Me!  The hobgoblin!{W1}"
                cameraSpeed $20
                setCameraEntity 128
                nextSingleText $0,128   ; "Welcome to my home.{W2}"
                entityActionsWait 128
                 moveDown 1
                endActions
                nextSingleText $0,128   ; "Enjoy your visit because{N}you're not leaving!{W1}"
                playSound $FD
                csc_end
ce_4ACA0:       mainEntity 15,24,UP
                entity 15,25,UP,ALLY_RUBURAN,eas_Init
                entity 15,3,DOWN,MAPSPRITE_HOBGOBLIN,eas_Init
                entity 16,4,DOWN,MAPSPRITE_VAMPIRE_BAT,eas_Init
                entity 14,4,DOWN,MAPSPRITE_WITCH,eas_Init
                dc.w $FFFF
