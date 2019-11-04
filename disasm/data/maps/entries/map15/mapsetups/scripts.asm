
; ASM FILE data\maps\entries\map15\mapsetups\scripts.asm :
; 0x5D04E..0x5D1CA : 
cs_5D04E:       textCursor $7D6
                setFacing ALLY_IAN,RIGHT
                setDest ALLY_RUBURAN,24,17
                setFacing ALLY_RUBURAN,RIGHT
                setPos ALLY_SKREECH,31,33,UP
                csWait 1
                setCamDest 26,22
                setActscriptWait ALLY_IAN,eas_Init
                setActscriptWait ALLY_RUBURAN,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                setPos ALLY_RUBURAN,24,17,RIGHT
                setPos FOLLOWER_B,24,16,RIGHT
                setPos ALLY_IAN,24,18,RIGHT
                fly ALLY_SKREECH,$FFFF
                entityActions ALLY_SKREECH
                 moveUp 8
                endActions
                csWait 60
                setCamDest 26,20
                entityActions ALLY_SKREECH
                 moveLeft 3
                endActions
                setCamDest 20,20
                entityActions ALLY_SKREECH
                 moveUp 10
                endActions
                setCamDest 20,10
                entityActions ALLY_SKREECH
                 moveRight 4
                endActions
                setCamDest 27,10
                entityActions ALLY_SKREECH
                 moveDown 5
                endActions
                setCamDest 27,15
                entityActions ALLY_SKREECH
                 moveLeft 19
                endActions
                setCamDest 9,15
                entityActions ALLY_SKREECH
                 moveUp 10
                endActions
                setCamDest 9,5
                entityActions ALLY_SKREECH
                 moveRight 13
                endActions
                setCamDest 20,5
                entityActions ALLY_SKREECH
                 moveDown 7
                endActions
                setCamDest 20,12
                csWait 60
                setDest ALLY_SKREECH,26,18
                setFacing ALLY_SKREECH,LEFT
                nextSingleText $80,ALLY_SKREECH ; "Excuse me, are you{N}{LEADER} of Granseal?{W1}"
                entityActionsWait ALLY_RUBURAN
                 moveRight 2
                endActions
                setFacing ALLY_RUBURAN,DOWN
                setFacing ALLY_SKREECH,UP
                nextSingleText $0,ALLY_RUBURAN ; "Yes, he's {LEADER},{N}but who are you?{W1}"
                nextSingleText $80,ALLY_SKREECH ; "I'm {NAME;20} of Bedoe.{W1}"
                shiver ALLY_RUBURAN
                nextSingleText $0,ALLY_RUBURAN ; "Bedoe?{W1}"
                nextSingleText $80,ALLY_SKREECH ; "{LEADER} saved my life{N}there.{W1}"
                setActscriptWait ALLY_RUBURAN,eas_Jump
                setActscriptWait ALLY_RUBURAN,eas_Jump
                nextText $0,ALLY_RUBURAN  ; "{LEADER} saved...{W2}"
                nextSingleText $0,ALLY_RUBURAN ; "Oh, yes!  I remember!{W1}"
                nextText $80,ALLY_SKREECH ; "You remember me?{W2}"
                nextSingleText $80,ALLY_SKREECH ; "Let me thank you.{N}KIDDO I go with you?{W1}"
                entityActionsWait ALLY_RUBURAN
                 moveLeft 1
                 moveDown 1
                 faceRight 40
                endActions
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                 moveRight 1
                 faceDown 40
                endActions
                entityActionsWait ALLY_RUBURAN
                 moveLeft 1
                 moveDown 1
                 faceRight 40
                endActions
                setFacing ALLY_SKREECH,LEFT
                nextSingleText $0,ALLY_RUBURAN ; "You grew up quickly, huh?{W1}"
                nextSingleText $80,ALLY_SKREECH ; "Yeah, I learned how to fight.{W1}"
                join ALLY_SKREECH
                followEntity ALLY_RUBURAN,ALLY_IAN,2
                followEntity FOLLOWER_B,ALLY_RUBURAN,2
                followEntity ALLY_SKREECH,ALLY_IAN,5
                fly ALLY_SKREECH,$0
                csc_end
