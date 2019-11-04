
; ASM FILE data\battles\entries\battle04\cs_afterbattle.asm :
; 0x498EE..0x49AB2 : Cutscene after battle 4
abcs_battle04:  textCursor $90F
                loadMapFadeIn 66,9,16
                loadMapEntities ce_49A6A
                setActscriptWait ALLY_IAN,eas_Init
                setPos ALLY_MEAD,14,21,DOWN
                setPos ALLY_PAIGE,12,21,DOWN
                setPos ALLY_HAWEL,13,22,DOWN
                setPos ALLY_KNUCKLES,11,22,DOWN
                fadeInB
                nod ALLY_IAN
                nextSingleText $0,ALLY_LEMON ; "Your battle strategy was{N}wonderful!  I praise you.{W1}"
                csWait 5
                setActscript ALLY_HAWEL,eas_461B6
                csWait 5
                setActscript ALLY_KNUCKLES,eas_461B6
                setActscript ALLY_MEAD,eas_Jump
                setActscriptWait ALLY_PAIGE,eas_Jump
                setActscript ALLY_MEAD,eas_Jump
                setActscriptWait ALLY_PAIGE,eas_Jump
                csWait 80
                setPos ALLY_LEMON,18,22,UP
                entityActionsWait ALLY_LEMON
                 moveUp 2
                endActions
                setFacing ALLY_LEMON,LEFT
                setFacing ALLY_IAN,RIGHT
                setFacing ALLY_MEAD,RIGHT
                setFacing ALLY_PAIGE,RIGHT
                setFacing ALLY_HAWEL,RIGHT
                setFacing ALLY_KNUCKLES,RIGHT
                nextSingleText $0,ALLY_LEMON ; "But, I can't let you escape.{W1}"
                customActscriptWait ALLY_LEMON
                 ac_setSpeed 64,64      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait ALLY_LEMON
                 moveLeft 4
                endActions
                setActscriptWait ALLY_IAN,eas_46172
                customActscriptWait ALLY_IAN
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setQuake 2
                playSound SFX_BATTLEFIELD_DEATH
                entityActionsWait ALLY_IAN
                 moveLeft 1
                endActions
                setQuake 0
                entityActionsWait ALLY_IAN
                 moveUp 1
                 moveRight 1
                endActions
                setActscript ALLY_IAN,eas_RotateRight
                setFacing ALLY_MEAD,UP
                setFacing ALLY_PAIGE,UP
                setFacing ALLY_HAWEL,UP
                setFacing ALLY_KNUCKLES,UP
                csWait 60
                setActscriptWait ALLY_IAN,eas_Init
                setFacing ALLY_IAN,DOWN
                customActscriptWait ALLY_IAN
                 ac_setAnimCounter $0   ;   
                 ac_setFlip $1          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait ALLY_LEMON
                 ac_setSpeed 32,32      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait ALLY_LEMON
                 moveRight 1
                endActions
                nextSingleText $0,ALLY_LEMON ; "That lad is their leader.{N}Take him!{W1}"
                entityActions 130
                 moveUp 1
                endActions
                entityActions 129
                 moveLeft 3
                endActions
                entityActionsWait 128
                 moveLeft 5
                 moveDown 1
                endActions
                setFacing 130,LEFT
                setFacing ALLY_LEMON,DOWN
                nextSingleText $0,ALLY_LEMON ; "Don't worry.  He has only{N}fainted.  Take them to Galam!{W1}"
                entityActionsWait ALLY_LEMON
                 moveRight 1
                 moveDown 1
                 moveRight 2
                endActions
                warp $11,$0,$0,$0
                csc_end
ce_49A6A:       mainEntity 13,20,DOWN
                entity 14,21,DOWN,ALLY_MEAD,eas_Init
                entity 12,21,DOWN,ALLY_PAIGE,eas_Init
                entity 13,22,DOWN,ALLY_HAWEL,eas_Init
                entity 11,22,DOWN,ALLY_KNUCKLES,eas_Init
                entity 63,63,UP,ALLY_LEMON,eas_Init
                entity 17,18,LEFT,MAPSPRITE_GALAM_ARCHER,eas_Init
                entity 17,19,LEFT,MAPSPRITE_GALAM_SOLDIER,eas_Init
                entity 17,21,LEFT,MAPSPRITE_GALAM_SOLDIER,eas_Init
                dc.w $FFFF
