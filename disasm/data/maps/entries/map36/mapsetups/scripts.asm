
; ASM FILE data\maps\entries\map36\mapsetups\scripts.asm :
; 0x5DA28..0x5DAE4 : 
cs_5DA28:       textCursor $CFB
                faceEntity ALLY_RUBURAN,131
                faceEntity FOLLOWER_B,131
                nextText $0,ALLY_FRAYJA ; "You defeated Zalbard and{N}saved Mitula.{W2}"
                nextText $0,ALLY_FRAYJA ; "You are trustworthy{N}soldiers, so...would you{N}do me a favor?{W2}"
                nextSingleText $0,ALLY_FRAYJA ; "Please go to Moun with me.{W1}"
                nextSingleText $0,FOLLOWER_B ; "What are you going to do{N}there?{W1}"
                nextText $0,ALLY_FRAYJA ; "I believe there are{N}survivors in Moun.{W2}"
                nextSingleText $0,ALLY_FRAYJA ; "I would like to save them.{W1}"
                nextText $0,ALLY_RUBURAN  ; "We have to go through Moun{N}to get to Nazka, right?{W2}"
                nextSingleText $0,ALLY_RUBURAN ; "{LEADER}, let's go{N}together.{W1}"
                nextSingleText $0,ALLY_FRAYJA ; "Alright.{W1}"
                nextSingleText $FF,255  ; "{LEADER} decides to take{N}{NAME;22} with him.{W1}"
                nextSingleText $0,ALLY_FRAYJA ; "Thank you very much.{W1}"
                followEntity ALLY_FRAYJA,FOLLOWER_B,2
                setStoryFlag $1F        ; Battle 31 unlocked
                setStoryFlag $21        ; Battle 33 unlocked
                setStoryFlag $22        ; Battle 34 unlocked
                csc_end
cs_5DA7A:       setCameraEntity 131
                setDest ALLY_IAN,4,23
                setFacing ALLY_IAN,UP
                entityActionsWait 131
                 moveRight 2
                endActions
                entityActionsWait 131
                 moveDown 1
                endActions
                setFacing ALLY_IAN,RIGHT
                csWait 60
                customActscriptWait 131
                 ac_setSpeed 16,16      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 131
                 moveRight 2
                endActions
                headshake 131
                shiver 131
                csWait 120
                shiver 131
                customActscriptWait 131
                 ac_setSpeed 8,8        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 131
                 moveRight 1
                endActions
                shiver 131
                csc_end
