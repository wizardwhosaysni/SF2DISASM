
; ASM FILE data\battles\entries\battle20\cs_afterbattle.asm :
; 0x4B6CE..0x4B790 : Cutscene after battle 20
abcs_battle20:  textCursor $A06
                loadMapFadeIn 51,2,6
                loadMapEntities ce_4B780
                setActscriptWait ALLY_IAN,eas_Init
                setActscriptWait ALLY_RUBURAN,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                setPos ALLY_RUBURAN,5,10,UP
                setPos FOLLOWER_B,7,10,UP
                fadeInB
                nextText $0,ALLY_MORTON  ; "I'm {NAME;13}, an archer.{N}I had no idea how dangerous{N}this pond was.{W2}"
                nextSingleText $0,ALLY_MORTON ; "You saved my life.{N}Thank you.{W1}"
                nextText $C0,ALLY_RUBURAN ; "You should thank Oddler.{W2}"
                nextSingleText $C0,ALLY_RUBURAN ; "He heard your cry for help{N}and brought us here.{W1}"
                setFacing ALLY_RUBURAN,RIGHT
                csWait 5
                setActscript FOLLOWER_B,eas_461B6
                csWait 120
                setFacing FOLLOWER_B,UP
                nextSingleText $C0,FOLLOWER_B ; "Oh well, it was nothing.{W1}"
                setFacing ALLY_RUBURAN,UP
                nextText $0,ALLY_MORTON  ; "An elf always returns a{N}favor.{W2}"
                nextSingleText $0,ALLY_MORTON ; "Please, let me help you.{W1}"
                setFacing ALLY_RUBURAN,RIGHT
                setFacing ALLY_IAN,LEFT
                nextSingleText $C0,ALLY_RUBURAN ; "{LEADER}, looks like{N}we've found another friend.{W1}"
                entityActionsWait ALLY_MORTON
                 moveDown 1
                endActions
                nextSingleText $0,ALLY_MORTON ; "Oh, thank you!{W1}"
                setFacing ALLY_IAN,UP
                nod ALLY_IAN
                join ALLY_MORTON
                setFacing ALLY_RUBURAN,UP
                nextSingleText $C0,ALLY_RUBURAN ; "Now, let's go see Mr. Creed!{W1}"
                followEntity ALLY_RUBURAN,ALLY_IAN,2
                followEntity FOLLOWER_B,ALLY_RUBURAN,2
                followEntity ALLY_MORTON,FOLLOWER_B,2
                csc_end
ce_4B780:       mainEntity 6,10,UP
                entity 6,8,DOWN,ALLY_MORTON,eas_Init
                dc.w $FFFF
