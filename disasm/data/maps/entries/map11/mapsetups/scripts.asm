
; ASM FILE data\maps\entries\map11\mapsetups\scripts.asm :
; 0x57AAA..0x57CCC : 
cs_57AAA:       textCursor $C4F
                setActscriptWait ALLY_RUBURAN,eas_Init
                setDest ALLY_IAN,39,11
                entityActionsWait ALLY_IAN
                 moveLeft 1
                endActions
                setCameraEntity ALLY_RUBURAN
                setDest ALLY_RUBURAN,39,11
                setFacing ALLY_RUBURAN,UP
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                endActions
                entityActionsWait ALLY_IAN
                 moveRight 1
                endActions
                setFacing ALLY_IAN,UP
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_RUBURAN ; "God Volcanon!{N}I'm back!{W1}"
                setCamDest 34,3
                csWait 120
                nextSingleText $0,128   ; "Welcome back, {NAME;7}.{N}You look well.{W1}"
                nextSingleText $0,ALLY_RUBURAN ; "Yes, I am!  This trip{N}was very interesting.{W1}"
                nextSingleText $0,128   ; "That's good.{W2}"
                nextSingleText $0,128   ; "What made it interesting?{W1}"
                nod ALLY_RUBURAN
                csWait 30
                nextSingleText $0,ALLY_RUBURAN ; "I met a lot people that live{N}on the ground.{W2}"
                nextSingleText $0,ALLY_RUBURAN ; "They help each other.{N}I made some friends.{W1}"
                nextSingleText $0,128   ; "Wonderful.  It must've been{N}a good experience for you.{W1}"
                nod ALLY_RUBURAN
                setCamDest 34,5
                csWait 30
                nextSingleText $0,ALLY_RUBURAN ; "I've brought a friend.{W1}"
                setFacing ALLY_RUBURAN,DOWN
                entityActionsWait ALLY_IAN
                 moveRight 1
                endActions
                setFacing ALLY_IAN,UP
                entityActionsWait ALLY_RUBURAN
                 moveDown 2
                endActions
                setFacing ALLY_RUBURAN,RIGHT
                entityActionsWait ALLY_RUBURAN
                 moveLeft 1
                endActions
                setFacing ALLY_RUBURAN,UP
                entityActionsWait ALLY_IAN
                 moveLeft 1
                endActions
                setFacing ALLY_IAN,UP
                nextSingleText $0,ALLY_RUBURAN ; "This is {LEADER}.{N}He's from Granseal.{W1}"
                setCamDest 34,2
                playSound SFX_BIG_DOOR_RUMBLE
                setQuake 2
                csWait 90
                setQuake 0
                nextSingleText $0,128   ; "Granseal!{W1}"
                nextSingleText $0,128   ; "People of Grans Island{N}caused a serious, deadly{N}problem for the world!{W1}"
                playSound SFX_BIG_DOOR_RUMBLE
                setQuake 3
                csWait 90
                setQuake 0
                setCamDest 34,6
                csWait 5
                setActscript ALLY_RUBURAN,eas_461B6
                csWait 120
                setFacing ALLY_RUBURAN,UP
                nextSingleText $0,ALLY_RUBURAN ; "Volcanon?{W1}"
                setCamDest 34,2
                nextSingleText $0,128   ; "They awakened Zeon, the{N}legendary devil!{W2}"
                nextSingleText $0,128   ; "I've been protecting all the{N}ground-dwelling people.{W2}"
                nextSingleText $0,128   ; "I can't forgive them for{N}this!{W1}"
                playSound SFX_BIG_DOOR_RUMBLE
                setQuake 4
                csWait 90
                setQuake 0
                setCamDest 34,5
                entityActionsWait ALLY_IAN
                 moveRight 1
                endActions
                entityActionsWait ALLY_RUBURAN
                 moveRight 1
                endActions
                setFacing ALLY_IAN,UP
                entityActionsWait ALLY_RUBURAN
                 moveUp 3
                endActions
                nextSingleText $0,ALLY_RUBURAN ; "Volcanon, please calm down!{W2}"
                nextSingleText $0,ALLY_RUBURAN ; "{LEADER} is not the person{N}who did it!{W1}"
                setCamDest 34,3
                nextSingleText $0,128   ; "Everybody who lives on the{N}ground is responsibile.{W2}"
                nextSingleText $0,128   ; "They have to solve this by{N}themselves.{W1}"
                nextSingleText $0,ALLY_RUBURAN ; "What should {LEADER} do?{W1}"
                nextSingleText $0,128   ; "My protection ceases now!{W2}"
                nextSingleText $0,128   ; "He must face the devils on{N}his own.{W1}"
                playSound SFX_BIG_DOOR_RUMBLE
                setQuake 4
                csWait 90
                setQuake 0
                setActscriptWait ALLY_RUBURAN,eas_46172
                entityActionsWait ALLY_RUBURAN
                 moveDown 1
                endActions
                setActscriptWait ALLY_RUBURAN,eas_Init
                nextSingleText $0,ALLY_RUBURAN ; "But...{W2}"
                nextSingleText $0,ALLY_RUBURAN ; "Even the greater devils{N}are as strong as you!{W1}"
                nextSingleText $0,128   ; "If all the humans are{N}annihilated, that's OK.{N}It's their destiny.{W2}"
                playSound SFX_BIG_DOOR_RUMBLE
                setQuake 4
                csWait 90
                setQuake 0
                nextSingleText $0,128   ; "I want them to show me{N}courage.{W2}"
                nextSingleText $0,128   ; "They must reseal the devil{N}again.{W1}"
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_RUBURAN ; "Then, please give some{N}advice to {LEADER}.{W1}"
                nextSingleText $0,128   ; "{LEADER}, believe in the{N}power of the jewel.{W2}"
                entityActionsWait ALLY_IAN
                 moveLeft 1
                endActions
                entityActionsWait ALLY_IAN
                 moveUp 2
                endActions
                nextSingleText $0,128   ; "It belongs to both the{N}light and the darkness.{W2}"
                nextSingleText $0,128   ; "It shows its true power{N}when the light and the{N}darkness are as one.{W2}"
                nextSingleText $0,128   ; "You KIDDO go now.  I don't{N}want to see anybody until{N}Zeon is defeated.{W1}"
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_RUBURAN ; "Volcanon!{W1}"
                csWait 30
                setActscriptWait ALLY_RUBURAN,eas_Jump
                setActscriptWait ALLY_RUBURAN,eas_Jump
                csWait 30
                entityActionsWait ALLY_RUBURAN
                 moveDown 1
                endActions
                nextSingleText $0,ALLY_RUBURAN ; "{LEADER}, we'll defeat{N}that devil by ourselves!{W1}"
                nextSingleText $0,ALLY_RUBURAN ; "I didn't know he was such a{N}cold-hearted god.{W2}"
                nextSingleText $0,ALLY_RUBURAN ; "OK, I'll help you!  I'll{N}go with you to reseal the{N}devil!{W1}"
                join ALLY_RUBURAN
                joinForceAI ALLY_RUBURAN,$0 ; 0054 JOIN FORCE WITH AI
                followEntity ALLY_RUBURAN,ALLY_IAN,2
                csc_end
