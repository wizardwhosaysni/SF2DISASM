
; ASM FILE data\battles\entries\battle28\cs_beforebattle.asm :
; 0x4BE8C..0x4C07C : Cutscene before battle 28
bbcs_28:        textCursor $A65
                loadMapFadeIn 47,0,4
                loadMapEntities ce_4C03C
                setActscriptWait ALLY_IAN,eas_Init
                setActscriptWait ALLY_RUBURAN,eas_Init
                setPos ALLY_RUBURAN,0,9,RIGHT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,0,7,RIGHT
                stopEntity 129
                playSound MUSIC_BATTLE_THEME_3
                fadeInB
                cameraSpeed $30
                entityActions ALLY_IAN
                 moveRight 3
                endActions
                entityActions FOLLOWER_B
                 moveRight 3
                endActions
                entityActions ALLY_RUBURAN
                 moveRight 3
                endActions
                entityActionsWait 128
                 moveRight 3
                endActions
                csWait 40
                setActscriptWait FOLLOWER_B,eas_Jump
                entityActionsWait FOLLOWER_B
                 moveRight 2
                 moveDown 1
                endActions
                setFacing FOLLOWER_B,RIGHT
                nextSingleText $0,FOLLOWER_B ; "Wow, look at that?{W1}"
                setCamDest 7,11
                shiver 130
                playSound SFX_MONSTER_SCREAM
                csWait 30
                shiver 131
                playSound SFX_MONSTER_SCREAM
                csWait 40
                setCamDest 0,6
                entityActionsWait ALLY_RUBURAN
                 moveDown 1
                 moveRight 1
                endActions
                nextSingleText $0,ALLY_RUBURAN ; "Those monsters are eating{N}the bridge.{W1}"
                nextSingleText $0,129   ; "Help!  Help me!{W1}"
                setActscript ALLY_IAN,eas_Jump
                setActscript FOLLOWER_B,eas_Jump
                setActscriptWait ALLY_RUBURAN,eas_Jump
                entityActionsWait ALLY_IAN
                 moveDown 1
                 moveRight 1
                 moveDown 1
                endActions
                csWait 5
                setActscript ALLY_IAN,eas_461B6
                csWait 5
                setActscript ALLY_RUBURAN,eas_461E4
                csWait 100
                setActscriptWait FOLLOWER_B,eas_Jump
                customActscriptWait FOLLOWER_B
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions FOLLOWER_B
                 moveDown 2
                endActions
                csWait 10
                stopEntity ALLY_IAN
                customActscriptWait ALLY_IAN
                 ac_setSpeed 64,64      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setQuake 2
                playSound SFX_HIT_2
                entityActionsWait ALLY_IAN
                 moveDown 1
                endActions
                setFacing ALLY_IAN,UP
                customActscriptWait ALLY_IAN
                 ac_setAnimCounter $0   ;   
                 ac_setFlip $2          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                waitIdle FOLLOWER_B
                setFacing FOLLOWER_B,RIGHT
                setQuake 0
                nextText $0,FOLLOWER_B  ; "Look!{W2}"
                nextSingleText $0,FOLLOWER_B ; "She's stranded on the{N}bridge.{W1}"
                setFacing ALLY_RUBURAN,RIGHT
                shiver ALLY_IAN
                setCamDest 7,21
                nextSingleText $0,ALLY_RUBURAN ; "Get away from the bridge{N}before it falls into the{N}river!{W1}"
                nextText $0,129         ; "I sprained my ankle!{N}Please help me!{W2}"
                nextSingleText $0,129   ; "I can't stand up!{W1}"
                setCamDest 0,6
                setFacing FOLLOWER_B,DOWN
                setActscriptWait FOLLOWER_B,eas_Jump
                csWait 30
                setActscriptWait ALLY_IAN,eas_Init
                startEntity ALLY_IAN
                headshake ALLY_IAN
                nextSingleText $0,FOLLOWER_B ; "{LEADER}, defeat all the{N}monsters!  Hurry!{W1}"
                setActscript ALLY_RUBURAN,eas_Jump
                nod ALLY_IAN
                csc_end
ce_4C03C:       mainEntity 1,8,RIGHT
                entity 0,9,RIGHT,ALLY_RUBURAN,eas_Init
                entity 0,8,RIGHT,MAPSPRITE_CARAVAN,eas_Init
                entity 12,24,UP,MAPSPRITE_POSE3,eas_Init
                entity 13,13,LEFT,MAPSPRITE_WORM,eas_Init
                entity 12,17,UP,MAPSPRITE_WORM,eas_Init
                entity 11,22,DOWN,MAPSPRITE_WORM,eas_Init
                entity 11,25,RIGHT,MAPSPRITE_WORM,eas_Init
                dc.w $FFFF
