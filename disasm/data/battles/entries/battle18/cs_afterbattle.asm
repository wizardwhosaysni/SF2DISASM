
; ASM FILE data\battles\entries\battle18\cs_afterbattle.asm :
; 0x4B2F2..0x4B6CE : Cutscene after battle 18
abcs_battle18:  textCursor $9E0
                loadMapFadeIn 12,7,5
                loadMapEntities ce_4B6BE
                setActscriptWait ALLY_IAN,eas_Init
                setActscriptWait ALLY_RUBURAN,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                setActscriptWait ALLY_ERIC,eas_Init
                setPos ALLY_RUBURAN,13,9,UP
                setPos FOLLOWER_B,14,9,UP
                setPos ALLY_ERIC,5,9,RIGHT
                stopEntity 128
                fadeInB
                csWait 60
                nextSingleText $0,ALLY_ERIC ; "{LEADER}, you're much{N}stronger than I thought.{W1}"
                setFacing ALLY_IAN,LEFT
                setFacing ALLY_RUBURAN,LEFT
                setFacing FOLLOWER_B,LEFT
                csWait 30
                setCameraEntity ALLY_ERIC
                csWait 120
                entityActionsWait ALLY_ERIC
                 moveRight 6
                endActions
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                setFacing FOLLOWER_B,UP
                entityActionsWait ALLY_ERIC
                 moveUp 4
                endActions
                setFacing ALLY_ERIC,RIGHT
                setCameraEntity 65535
                setCamDest 7,1
                csWait 30
                setPos ALLY_ERIC,12,6,UP
                csWait 20
                setPos ALLY_ERIC,13,5,LEFT
                csWait 20
                setPos ALLY_ERIC,12,6,UP
                csWait 20
                setPos ALLY_ERIC,11,5,RIGHT
                csWait 20
                setPos ALLY_ERIC,12,6,UP
                csWait 20
                setPos ALLY_ERIC,13,5,LEFT
                csWait 20
                nextSingleText $0,ALLY_ERIC ; "It's so small.  I'll just{N}try to...get inside....{W1}"
                entityActions ALLY_ERIC
                 moveLeft 1
                endActions
                csWait 3
                setActscript ALLY_ERIC,eas_452BA
                csWait 3
                csWait 60
                startEntity 128
                csWait 30
                stopEntity 128
                csWait 60
                startEntity 128
                csWait 120
                setFacing 128,LEFT
                csWait 10
                setFacing 128,UP
                csWait 10
                setFacing 128,RIGHT
                csWait 10
                setFacing 128,DOWN
                csWait 10
                setFacing 128,LEFT
                csWait 10
                setFacing 128,UP
                csWait 10
                setFacing 128,RIGHT
                csWait 10
                setFacing 128,DOWN
                setActscript 128,eas_Jump
                csWait 10
                setPos ALLY_ERIC,63,63,DOWN
                customActscriptWait 128
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                playSound SFX_FALLING
                entityActions 128
                 moveDown 9
                endActions
                csWait 20
                customActscriptWait ALLY_IAN
                 ac_setSpeed 64,64      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait ALLY_IAN,eas_46172
                entityActions ALLY_IAN
                 moveLeft 1
                endActions
                setFacing ALLY_IAN,RIGHT
                setFacing ALLY_RUBURAN,LEFT
                setFacing FOLLOWER_B,LEFT
                csWait 60
                setCamDest 7,4
                setActscriptWait ALLY_IAN,eas_Init
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_RUBURAN,DOWN
                setFacing FOLLOWER_B,DOWN
                nextSingleText $0,ALLY_RUBURAN ; "Oh, he's gone!{W1}"
                csWait 60
                setFacing ALLY_IAN,RIGHT
                setFacing ALLY_RUBURAN,LEFT
                setFacing FOLLOWER_B,LEFT
                nextSingleText $0,ALLY_RUBURAN ; "I hope he comes back.{N}Did {NAME;11} lie to us?{W1}"
                csWait 30
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_RUBURAN,DOWN
                setFacing FOLLOWER_B,DOWN
                csWait 150
                setActscriptWait 128,eas_46172
                entityActions 128
                 moveUp 9
                endActions
                playSound SFX_FALLING
                csWait 20
                setFacing 128,LEFT
                setFacing FOLLOWER_B,LEFT
                csWait 20
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                csWait 10
                setFacing ALLY_IAN,LEFT
                setFacing ALLY_RUBURAN,RIGHT
                csWait 10
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_RUBURAN,DOWN
                csWait 10
                setFacing ALLY_IAN,RIGHT
                setFacing ALLY_RUBURAN,LEFT
                csWait 10
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                csWait 10
                setFacing ALLY_IAN,LEFT
                setFacing ALLY_RUBURAN,RIGHT
                csWait 10
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_RUBURAN,DOWN
                csWait 10
                setFacing ALLY_IAN,RIGHT
                setFacing ALLY_RUBURAN,LEFT
                csWait 10
                customActscriptWait ALLY_IAN
                 ac_setAnimCounter $0   ;   
                 ac_setFlip $1          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait ALLY_RUBURAN
                 ac_setAnimCounter $0   ;   
                 ac_setFlip $1          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                stopEntity ALLY_IAN
                stopEntity ALLY_RUBURAN
                csWait 30
                setFacing 128,DOWN
                csWait 60
                stopEntity 128
                setActscriptWait FOLLOWER_B,eas_BumpLeft
                setActscriptWait FOLLOWER_B,eas_BumpLeft
                csWait 30
                setPos ALLY_ERIC,12,5,RIGHT
                setActscriptWait ALLY_ERIC,eas_4536C
                csWait 3
                setActscriptWait ALLY_IAN,eas_Init
                setActscriptWait ALLY_RUBURAN,eas_Init
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                setFacing FOLLOWER_B,UP
                startEntity ALLY_IAN
                startEntity ALLY_RUBURAN
                entityActionsWait ALLY_ERIC
                 moveDown 3
                endActions
                nextSingleText $0,ALLY_ERIC ; "I never lie!{W1}"
                entityActionsWait ALLY_ERIC
                 moveLeft 2
                endActions
                setFacing ALLY_ERIC,DOWN
                nextSingleText $0,ALLY_ERIC ; "The Ancients were...how{N}should I say this...great!{W1}"
                entityActionsWait ALLY_ERIC
                 moveRight 1
                endActions
                setFacing ALLY_ERIC,UP
                nextSingleText $0,ALLY_ERIC ; "No wonder the Caravan is so{N}small.  It carries miniaturized{N}people and items.{W2}"
                entityActionsWait ALLY_ERIC
                 moveUp 2
                endActions
                setFacing ALLY_ERIC,DOWN
                nextSingleText $0,ALLY_ERIC ; "I can drive this excellent{N}vehicle.  KIDDO I go with you{N}as a driver?{W1}"
                csWait 30
                nextSingleText $FF,255  ; "{NAME;11} the historian{N}tags along with the force.{W1}"
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_RUBURAN ; "You're kidding, right?{W1}"
                entityActionsWait ALLY_RUBURAN
                 moveDown 1
                endActions
                setFacing ALLY_RUBURAN,LEFT
                setFacing ALLY_IAN,RIGHT
                setFacing FOLLOWER_B,LEFT
                nextSingleText $0,ALLY_RUBURAN ; "Well, at least we can bring{N}a lot of soldiers with us.{W1}"
                entityActionsWait ALLY_ERIC
                 moveDown 1
                endActions
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                setFacing FOLLOWER_B,UP
                nextSingleText $0,ALLY_ERIC ; "But soldiers in the Caravan{N}cannot enter battle 'cause{N}they've been miniaturized.{W1}"
                nextSingleText $0,ALLY_RUBURAN ; "We'll just have to see.{W1}"
                setFacing ALLY_IAN,RIGHT
                setFacing ALLY_RUBURAN,LEFT
                setFacing FOLLOWER_B,LEFT
                nextSingleText $0,ALLY_RUBURAN ; "Humph.  I don't like this guy.{W1}"
                entityActionsWait ALLY_ERIC
                 moveUp 1
                endActions
                setFacing ALLY_ERIC,DOWN
                csWait 20
                setActscriptWait ALLY_ERIC,eas_Jump
                setActscriptWait ALLY_ERIC,eas_Jump
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                setFacing FOLLOWER_B,UP
                nextSingleText $0,ALLY_ERIC ; "I wonder what adventures{N}we'll find with this Caravan!{W1}"
                csWait 30
                entityActions ALLY_ERIC
                 moveUp 1
                endActions
                csWait 3
                setActscript ALLY_ERIC,eas_452BA
                csWait 3
                csWait 60
                startEntity 128
                setPos ALLY_ERIC,63,63,DOWN
                csWait 60
                setActscriptWait 128,eas_Init
                entityActions 128
                 moveDown 9
                endActions
                csWait 30
                setFacing ALLY_IAN,RIGHT
                setFacing ALLY_RUBURAN,LEFT
                setFacing FOLLOWER_B,LEFT
                csWait 10
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_RUBURAN,DOWN
                setFacing FOLLOWER_B,DOWN
                csWait 180
                setF $41                ; Caravan is unlocked
                clearF $54              ; Rohde is a follower
                csc_end
ce_4B6BE:       mainEntity 12,9,UP
                entity 12,5,DOWN,MAPSPRITE_CARAVAN,eas_Init
                dc.w $FFFF
