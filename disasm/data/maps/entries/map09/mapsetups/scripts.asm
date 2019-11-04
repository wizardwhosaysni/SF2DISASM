
; ASM FILE data\maps\entries\map09\mapsetups\scripts.asm :
; 0x568F6..0x56B84 : 
cs_568F6:       textCursor $55C
                setFacing ALLY_IAN,RIGHT
                csWait 20
                entityActionsWait 130
                 moveLeft 1
                 moveUp 1
                endActions
                setFacing 130,LEFT
                nextSingleText $C0,130  ; "Where are you from?{W1}"
                csWait 20
                setDest ALLY_RUBURAN,4,58
                setFacing ALLY_RUBURAN,RIGHT
                nextSingleText $0,ALLY_RUBURAN ; "{LEADER} came from{N}Grans Island.{W1}"
                customActscriptWait 130
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 130
                 moveLeft 1
                endActions
                nextSingleText $C0,130  ; "Then we could be related.{W1}"
                csWait 20
                setFacing ALLY_RUBURAN,UP
                csWait 20
                nextSingleText $0,ALLY_RUBURAN ; "What do you mean?{W1}"
                csWait 40
                setActscriptWait 130,eas_Init2
                setFacing 130,DOWN
                csWait 30
                setFacing 130,LEFT
                csWait 40
                entityActions 130
                 moveRight 1
                 moveDown 1
                endActions
                csWait 20
                entityActionsWait ALLY_IAN
                 moveRight 1
                endActions
                csWait 10
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_RUBURAN,RIGHT
                setFacing 130,LEFT
                nextText $C0,130        ; "Our ancestors came to{N}Parmecia to chase after{N}a soldier called Max.{W2}"
                nextText $C0,130        ; "They lost his trail at the{N}shore and then split into{N}two groups.{W2}"
                nextSingleText $C0,130  ; "One group went back to{N}Grans by way of Devil's Tail.{W1}"
                csWait 20
                nextSingleText $0,ALLY_RUBURAN ; "Hmmm...and what happened{N}to Max?{W1}"
                csWait 20
                nextText $C0,130        ; "He wasn't found in Parmecia,{N}so KIDDObe he went to Grans.{N}I'm not really sure.{W2}"
                nextSingleText $C0,130  ; "I think I'll take a nap{N}now.  Bye.{W1}"
                csWait 30
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                endActions
                setFacing ALLY_RUBURAN,RIGHT
                setFacing ALLY_IAN,LEFT
                followEntity ALLY_RUBURAN,ALLY_IAN,2
                csc_end
cs_569BC:       textCursor $566
                setDest ALLY_RUBURAN,15,57
                setFacing ALLY_RUBURAN,DOWN
                setFacing ALLY_IAN,DOWN
                nextText $C0,ALLY_ERIC ; "(Sniff)...(sniff)...I smell{N}something old....{W1}"
                setFacing ALLY_ERIC,UP
                nextSingleText $C0,ALLY_ERIC ; "That sword must be really{N}old.  Oh, my!{N}It's the Achilles Sword!{W2}"
                customActscriptWait ALLY_ERIC
                 ac_setSpeed 40,40      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait ALLY_IAN
                 ac_setSpeed 40,40      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait ALLY_IAN,eas_46172
                entityActions ALLY_ERIC
                 moveUp 1
                endActions
                csWait 3
                entityActionsWait ALLY_IAN
                 moveUp 1
                endActions
                nextText $C0,ALLY_ERIC ; "You're an adventurer, right?{N}Don't you need a vehicle?{N}Huh?{W2}"
                nextSingleText $C0,ALLY_ERIC ; "You can get the Ancient{N}Caravan with that sword!{W1}"
                setDest ALLY_RUBURAN,15,58
                setFacing ALLY_RUBURAN,RIGHT
                nextSingleText $0,ALLY_RUBURAN ; "You wouldn't listen to us{N}just a short time ago!{W1}"
                setFacing ALLY_ERIC,LEFT
                nextText $C0,ALLY_ERIC ; "I was busy and...{W1}"
                setFacing ALLY_ERIC,UP
                nextText $C0,ALLY_ERIC ; "Let me join you!{W2}"
                nextText $C0,ALLY_ERIC ; "I'm the only one who can{N}drive it!{W2}"
                nextText $C0,ALLY_ERIC ; "You are going to get the{N}Caravan, aren't you?!{W1}"
                yesNo
                jumpIfFlagSet $59,cs_56A82 ; YES/NO prompt answer
                customActscriptWait ALLY_ERIC
                 ac_setSpeed 10,10      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait ALLY_ERIC,eas_46172
                entityActionsWait ALLY_ERIC
                 moveDown 1
                endActions
cs_56A70:       textCursor $56F
                nextSingleText $C0,ALLY_ERIC ; "You don't know what you'll{N}be missing!{W1}"
                setFacing ALLY_ERIC,DOWN
                jump cs_56AD4
cs_56A82:       textCursor $572
                nextSingleText $C0,ALLY_ERIC ; "Great!  Good lad!{W1}"
                nextSingleText $FF,255  ; "{CLEAR}{LEADER} decides to take{N}Dr. {NAME;11} with him.{W1}{CLEAR}"
                setActscriptWait ALLY_ERIC,eas_Init
                setPriority ALLY_ERIC,$FFFF
                setPriority ALLY_IAN,$0
                setActscriptWait ALLY_ERIC,eas_Jump
                setActscript ALLY_ERIC,eas_Jump
                nextSingleText $C0,ALLY_ERIC ; "Let's go!{W1}"
                setPriority ALLY_IAN,$FFFF
                setF $2D5               ; Set after telling Rohde that you're going to get the Caravan
                setF $54                ; Rohde is a follower
                setStoryFlag $12        ; Battle 18 unlocked
                followEntity ALLY_ERIC,FOLLOWER_B,2
cs_56AD4:       setActscriptWait ALLY_IAN,eas_Init
                followEntity ALLY_RUBURAN,ALLY_IAN,2
                csc_end
cs_56AE6:       textCursor $570
                nextText $C0,ALLY_ERIC ; "You again?!{W1}"
                nextText $C0,ALLY_ERIC ; "You changed your mind?{N}Hmmm....{W1}"
                yesNo
                jumpIfFlagSet $59,cs_56A82 ; YES/NO prompt answer
                jump cs_56A70
cs_56B02:       textCursor $583
                setPriority ALLY_MINTO,$FFFF
                setPriority ALLY_IAN,$0
                nextText $0,ALLY_MINTO   ; "Are you the boy who killed{N}the legendary Kraken?{W2}"
                nextText $0,ALLY_MINTO   ; "I got to Hassan thanks to{N}you.{W2}"
                nextSingleText $0,ALLY_MINTO ; "I didn't know this was such a{N}dull town.{W1}"
                csWait 20
                setFacing ALLY_MINTO,UP
                csWait 30
                setActscriptWait ALLY_MINTO,eas_Jump
                csWait 20
                faceEntity ALLY_MINTO,ALLY_IAN
                nextSingleText $0,ALLY_MINTO ; "Wh...what's that?!{W1}"
                faceEntity ALLY_RUBURAN,ALLY_MINTO
                faceEntity ALLY_MINTO,ALLY_RUBURAN
                nextSingleText $C0,ALLY_RUBURAN ; "It's the Caravan...an ancient{N}vehicle found in the shrine.{W1}"
                csWait 20
                faceEntity ALLY_MINTO,ALLY_IAN
                nextText $0,ALLY_MINTO   ; "I love interesting{N}things like that!{W2}"
                nextText $0,ALLY_MINTO   ; "Wow!  You found it?!{W2}"
                nextSingleText $0,ALLY_MINTO ; "I want to go with you to{N}see some more interesting{N}things!{W1}"
                join ALLY_MINTO
                nextSingleText $0,ALLY_MINTO ; "Adventure!{N}Yo Ho!  Let's go!{W1}"
                setActscriptWait ALLY_MINTO,eas_Jump
                setActscriptWait ALLY_MINTO,eas_Jump
                csWait 20
                setPriority ALLY_IAN,$FFFF
                addNewFollower ALLY_MINTO
                csc_end
