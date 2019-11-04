
; ASM FILE data\maps\entries\map14\mapsetups\scripts_2.asm :
; 0x58FA4..0x592E0 : 
cs_58FA4:       textCursor $8D6
                reloadMap 8,7
                loadMapEntities ce_59270
                setActscriptWait ALLY_IAN,eas_Init
                csWait 1
                setPriority ALLY_IAN,$0
                setPriority 130,$0
                setPriority 133,$FFFF
                fadeInB
                customActscript 129
                 ac_wait 1200           ;   
                 ac_moveRel 1,0         ;   
                 ac_waitDest            ;   
                 ac_moveRel 0,1         ;   
                 ac_waitDest            ;   
                 ac_wait 600            ;   
                 ac_moveRel 0,65529     ;   
                 ac_waitDest            ;   
                 ac_jump eas_Idle       ;   
                ac_end
                nextSingleText $0,128   ; "Somebody, take that plank{N}from him!{W1}"
                setFacing 128,RIGHT
                csWait 30
                setFacing 128,LEFT
                csWait 30
                setFacing 128,RIGHT
                csWait 30
                setFacing 130,LEFT
                nextSingleText $0,130   ; "I got it!{W1}"
                entityActionsWait 130
                 moveLeft 2
                endActions
                entityActions 128
                 moveLeft 2
                endActions
                entityActionsWait 130
                 moveUp 1
                endActions
                entityActionsWait 130
                 moveLeft 1
                endActions
                setFacing 128,RIGHT
                setFacing 130,UP
                nextSingleText $0,130   ; "Thank you, boy!{W1}"
                setFacing 130,DOWN
                csWait 30
                entityActions 132
                 moveDown 1
                endActions
                entityActions 133
                 moveDown 1
                endActions
                entityActionsWait 134
                 moveDown 1
                endActions
                nextSingleText $FF,255  ; "{LEADER} hands over{N}the plank.{W1}"
                csWait 30
                nextSingleText $0,130   ; "We need a lot of planks{N}for our new town!{W1}"
                entityActions 130
                 moveDown 7
                endActions
                entityActions 132
                 moveDown 7
                endActions
                entityActions 133
                 moveDown 7
                endActions
                entityActionsWait 134
                 moveDown 7
                endActions
                hide 130
                hide 132
                hide 133
                hide 134
                entityActionsWait 128
                 moveRight 2
                endActions
                entityActionsWait 128
                 moveUp 1
                endActions
                nextText $0,128         ; "We can't go back to {N}Granseal without a ship...{W2}"
                nextSingleText $0,128   ; "There's no Granseal on{N}Grans Island now...{N}I know that, but...{W1}"
                csWait 60
                nextSingleText $0,131   ; "Somebody, help!{W1}"
                customActscriptWait 131
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 131
                 moveUp 6
                endActions
                setActscriptWait 131,eas_Init
                setFacing 128,DOWN
                nod 131
                nod 131
                stopEntity 131
                entityActionsWait 128
                 moveDown 1
                endActions
                nextSingleText $0,128   ; "What's wrong?{W1}"
                csWait 30
                startEntity 131
                nextText $0,131         ; "One of my friends has not{N}returned from North Cliff.{W2}"
                nextSingleText $0,131   ; "He KIDDO be in trouble.{W1}"
                nextSingleText $0,128   ; "This isn't good.{W1}"
                setFacing 128,LEFT
                csWait 30
                setFacing 128,RIGHT
                csWait 30
                setFacing 128,UP
                csWait 30
                nextText $0,128         ; "{LEADER}, did you{N}hear that?{W2}"
cs_59122:       textCursor $8E3
                nextText $0,128         ; "Would you go to North{N}Cliff and check on his{N}friend?{D1}"
                yesNo
                jumpIfFlagSet $59,cs_59142 ; YES/NO prompt answer
                nextText $0,128         ; "What did you say?{N}I didn't hear you.{W2}"
                nextText $0,128         ; "OK, once again!{W1}"
                jump cs_59122
cs_59142:       textCursor $8E6
                nextText $0,128         ; "Oh, you're so brave!{W2}"
                nextSingleText $0,128   ; "Hey, he's going with you!{W1}"
                entityActionsWait 128
                 moveLeft 1
                endActions
                setFacing 128,RIGHT
                textCursor $8E8
                entityActionsWait 131
                 moveUp 2
                endActions
                nextText $0,131         ; "{LEADER}, thank you!{W2}"
                nextSingleText $0,131   ; "I'll show you to North Cliff.{N}Follow me.{W1}"
                csWait 30
                entityActions 131
                 moveDown 4
                endActions
                entityActions ALLY_IAN
                 moveDown 4
                endActions
                entityActionsWait ALLY_HAWEL
                 moveUp 5
                endActions
                setFacing ALLY_IAN,LEFT
                setFacing ALLY_HAWEL,RIGHT
                setCamDest 8,10
                nextSingleText $0,ALLY_HAWEL ; "{LEADER}, wait.  Wait!{W1}"
                csWait 30
                nextSingleText $0,ALLY_MEAD ; "Hey, you're all wet.{W1}"
                setPos ALLY_KNUCKLES,13,10,DOWN
                setPos ALLY_PAIGE,13,9,DOWN
                setPos ALLY_SONETTE,13,8,DOWN
                setPos ALLY_MEAD,13,7,DOWN
                setPos ALLY_CYNTHIA,13,6,DOWN
                entityActions ALLY_KNUCKLES
                 moveDown 4
                 moveRight 1
                 moveDown 1
                endActions
                entityActions ALLY_PAIGE
                 moveDown 5
                 moveRight 1
                endActions
                entityActions ALLY_SONETTE
                 moveDown 6
                 moveLeft 1
                endActions
                entityActions ALLY_MEAD
                 moveDown 7
                endActions
                entityActionsWait ALLY_CYNTHIA
                 moveDown 7
                endActions
                setFacing ALLY_SONETTE,DOWN
                setFacing ALLY_MEAD,DOWN
                setFacing ALLY_CYNTHIA,DOWN
                setFacing ALLY_PAIGE,DOWN
                setFacing ALLY_KNUCKLES,LEFT
                setFacing ALLY_IAN,UP
                setFacing 131,UP
                setFacing 128,DOWN
                nextSingleText $0,ALLY_MEAD ; "Are you leaving?{N}Say it isn't so!{W1}"
                nextSingleText $0,ALLY_KNUCKLES ; "I think it's too dangerous{N}out there alone.{W1}"
                nextText $0,131         ; "And...{W2}"
                nextSingleText $0,131   ; "It would be safer if we came{N}along.  Let's go.{W1}"
                csWait 60
                setCameraEntity 65535
                entityActions 131
                 moveDown 7
                endActions
                entityActions ALLY_IAN
                 moveDown 7
                endActions
                entityActions ALLY_MEAD
                 moveDown 7
                endActions
                entityActions ALLY_PAIGE
                 moveDown 7
                endActions
                entityActions ALLY_HAWEL
                 moveDown 7
                endActions
                entityActions ALLY_KNUCKLES
                 moveDown 7
                endActions
                entityActions ALLY_SONETTE
                 moveDown 7
                endActions
                entityActionsWait ALLY_CYNTHIA
                 moveDown 7
                endActions
                setStoryFlag $8         ; Battle 8 unlocked
                warp $48,$1,$1,$3
                csc_end
ce_59270:       mainEntity 13,11,DOWN
                entity 12,20,UP,ALLY_HAWEL,eas_Init
                entity 14,20,UP,ALLY_SONETTE,eas_Init
                entity 14,21,UP,ALLY_MEAD,eas_Init
                entity 14,22,UP,ALLY_CYNTHIA,eas_Init
                entity 14,23,UP,ALLY_PAIGE,eas_Init
                entity 14,24,UP,ALLY_KNUCKLES,eas_Init
                entity 13,13,UP,MAPSPRITE_SAILOR,eas_Init
                entity 9,13,LEFT,MAPSPRITE_MAN2,eas_Init
                entity 16,13,RIGHT,MAPSPRITE_MAN1,eas_Init
                entity 13,20,UP,MAPSPRITE_WORKER,eas_Init
                entity 12,11,RIGHT,MAPSPRITE_OBJECT2,eas_Init3
                entity 13,11,DOWN,MAPSPRITE_OBJECT2,eas_Init3
                entity 14,11,LEFT,MAPSPRITE_OBJECT2,eas_Init3
                dc.w $FFFF
