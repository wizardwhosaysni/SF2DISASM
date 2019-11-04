
; ASM FILE data\maps\entries\map17\mapsetups\scripts.asm :
; 0x52530..0x52A80 : 
cs_52530:       textCursor $385
                setCamDest 48,0
                setFacing ALLY_IAN,DOWN
                nextSingleText $C0,132  ; "What's wrong with the seal?{W1}"
                entityActionsWait ALLY_PAIGE
                 moveLeft 1
                endActions
                nextSingleText $C0,ALLY_PAIGE ; "Somebody broke the sacred{N}seal?{W1}"
                nextSingleText $0,ALLY_MEAD ; "We're not sure.{N}It seems that somebody{N}stole the two jewels.{W1}"
                setCamDest 43,0
                startEntity ALLY_SONETTE
                nextSingleText $0,ALLY_SONETTE ; "...ancient...shrine...{N}two...jewels...!{W1}"
                entityActionsWait 133
                 moveLeft 1
                endActions
                nextSingleText $0,133   ; "Oh, you woke up!{N}Are you OK?{W1}"
                setFacing ALLY_IAN,LEFT
                setFacing ALLY_PAIGE,LEFT
                setFacing ALLY_HAWEL,LEFT
                setFacing ALLY_MEAD,LEFT
                setFacing ALLY_KNUCKLES,LEFT
                setFacing 132,LEFT
                setFacing 133,LEFT
                entityActionsWait ALLY_SONETTE
                 moveRight 1
                endActions
                csWait 5
                setActscript ALLY_SONETTE,eas_461B6
                csWait 30
                nextSingleText $0,ALLY_SONETTE ; "Where...?{N}...I...why am I...?{W1}"
                setFacing ALLY_SONETTE,DOWN
                nextText $C0,132        ; "This is a jail in the{N}basement of Galam Castle.{W2}"
                nextSingleText $C0,132  ; "Say, you mustn't move yet!{W1}"
                headshake ALLY_SONETTE
                csWait 30
                nextSingleText $0,ALLY_SONETTE ; "Yes, I remember!{N}I was caught by Galam{N}soldiers.{W1}"
                setFacing 133,UP
                nextSingleText $0,133   ; "They took my jewels and{N}brought me here!{W1}"
                shiver ALLY_SONETTE
                nextSingleText $0,ALLY_SONETTE ; "They...they killed my{N}friends!{W1}"
                customActscriptWait ALLY_SONETTE
                 ac_setSpeed 14,14      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait ALLY_SONETTE
                 moveDown 1
                 eaWait 40
                 moveLeft 1
                 eaWait 40
                 moveDown 1
                endActions
                setFacing ALLY_SONETTE,UP
                customActscriptWait ALLY_SONETTE
                 ac_setAnimCounter $0   ;   
                 ac_setFlip $2          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                stopEntity ALLY_SONETTE
                setFacing 133,LEFT
                csWait 50
                nextSingleText $0,ALLY_SONETTE ; "Ouch!{N}I can hardly move.{W1}"
                entityActionsWait 133
                 moveLeft 1
                endActions
                nextSingleText $0,133   ; "Stay here for a while.{N}You need to rest.{W1}"
                csWait 20
                entityActionsWait 133
                 moveRight 2
                endActions
                setCamDest 47,0
                setFacing ALLY_MEAD,RIGHT
                setFacing 133,RIGHT
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_HAWEL,DOWN
                setFacing ALLY_KNUCKLES,DOWN
                setFacing 132,DOWN
                nextText $C0,132        ; "What were we talking{N}about?{W2}"
                nextSingleText $C0,132  ; "Oh, yes.  Why is King Galam{N}interested in Ground Seal?{W1}"
                nextSingleText $0,ALLY_MEAD ; "Is it related to the opened{N}door?{W1}"
                nextSingleText $0,ALLY_SONETTE ; "Hey!{W1}"
                customActscriptWait ALLY_SONETTE
                 ac_setAnimCounter $0   ;   
                 ac_setFlip $0          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setSprite ALLY_SONETTE,MAPSPRITE_POSE1
                csWait 20
                nextSingleText $0,ALLY_KNUCKLES ; "Does he want the jewels?{W1}"
                nextSingleText $0,ALLY_SONETTE ; "What?{W1}"
                shiver ALLY_SONETTE
                csWait 20
                nextSingleText $0,ALLY_HAWEL ; "The man that broke the seal{N}is to blame for everything!{W1}"
                nextSingleText $0,ALLY_SONETTE ; "Oh, no!{W1}"
                shiver ALLY_SONETTE
                entityActionsWait 133
                 moveLeft 1
                endActions
                nextSingleText $0,133   ; "Are you OK?{N}You know something?{W1}"
                nextSingleText $0,ALLY_SONETTE ; "Uhh...nope!{W1}"
                shiver ALLY_SONETTE
                nextText $0,ALLY_KNUCKLES  ; "We can't stay here!{W2}"
                setFacing ALLY_MEAD,RIGHT
                nextSingleText $0,ALLY_KNUCKLES ; "We must escape!{W1}"
                entityActionsWait 133
                 moveRight 1
                endActions
                nextText $0,ALLY_MEAD  ; "I know, but how can we{N}open that locked door?{W2}"
                nextSingleText $0,ALLY_MEAD ; "Oh, Galam is invading{N}Granseal while we're{N}sitting here!{W1}"
                setCamDest 43,0
                setActscriptWait ALLY_SONETTE,eas_Init
                startEntity ALLY_SONETTE
                setSprite ALLY_SONETTE,ALLY_SONETTE
                setActscriptWait ALLY_SONETTE,eas_Jump
                entityActionsWait ALLY_SONETTE
                 moveRight 1
                endActions
                nextSingleText $0,ALLY_SONETTE ; "I'll open the door for you!{W1}"
                setCameraEntity ALLY_SONETTE
                entityActionsWait 133
                 moveLeft 1
                endActions
                setFacing ALLY_MEAD,DOWN
                nextSingleText $0,133   ; "Oh, yes!  You're a thief and{N}you can open locked doors.{W1}"
                nextSingleText $0,ALLY_SONETTE ; "Yes, of course!{N}I'm the great thief, {NAME;5}!{W1}"
                entityActionsWait ALLY_SONETTE
                 moveLeft 1
                 moveDown 1
                endActions
                setFacing ALLY_SONETTE,DOWN
                nextSingleText $FF,255  ; "{NAME;5} sticks a short wire{N}into the keyhole.{W1}"
                playSound SFX_SECRET_PATH_ROCK
                setBlocks 48,7,1,1,48,8
                setBlocks 62,20,1,2,48,20
                textCursor $3A3
                entityActionsWait ALLY_SONETTE
                 moveDown 2
                 moveRight 9
                endActions
                setFacing ALLY_SONETTE,UP
                nextSingleText $FF,255  ; "{NAME;5} sticks a short wire{N}into the keyhole.{W1}"
                playSound SFX_SECRET_PATH_ROCK
                setBlocks 57,7,1,1,57,8
                setBlocks 62,20,1,2,57,20
                entityActionsWait ALLY_SONETTE
                 moveUp 2
                endActions
                nextSingleText $C0,ALLY_SONETTE ; "OK, it's done.{N}Hurry to your country and{N}save them!{W1}"
                entityActionsWait ALLY_PAIGE
                 moveRight 1
                endActions
                setFacing ALLY_PAIGE,DOWN
                nextText $0,ALLY_PAIGE ; "Thank you!{W2}"
                setFacing ALLY_PAIGE,LEFT
                nextSingleText $0,ALLY_PAIGE ; "{LEADER}, let's get back{N}to Granseal!{W1}"
                csWait 30
                setActscript ALLY_IAN,eas_Jump
                setActscript ALLY_HAWEL,eas_Jump
                setActscriptWait ALLY_KNUCKLES,eas_Jump
                setActscript ALLY_IAN,eas_Jump
                setActscript ALLY_HAWEL,eas_Jump
                setActscriptWait ALLY_KNUCKLES,eas_Jump
                csWait 30
                nextSingleText $0,ALLY_MEAD ; "Why are you being so nice{N}to us?  You don't know us.{W1}"
                shiver ALLY_SONETTE
                csWait 5
                setActscript ALLY_SONETTE,eas_461B6
                nextSingleText $C0,ALLY_SONETTE ; "Ah, that's because...{N}well...{W1}"
                csWait 20
                setFacing ALLY_SONETTE,UP
                setActscriptWait ALLY_SONETTE,eas_46172
                customActscriptWait ALLY_SONETTE
                 ac_setSpeed 10,10      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions ALLY_SONETTE
                 moveDown 2
                 moveLeft 1
                endActions
                entityActionsWait ALLY_MEAD
                 moveLeft 3
                 moveDown 4
                 moveRight 4
                endActions
                setFacing ALLY_SONETTE,LEFT
                nextSingleText $0,ALLY_MEAD ; "Is it...?{N}Are you the thief who broke{N}the seal?{W1}"
                shiver ALLY_SONETTE
                nextSingleText $C0,ALLY_SONETTE ; "I...ah...{W1}"
                entityActionsWait ALLY_MEAD
                 moveRight 3
                endActions
                nextText $0,ALLY_MEAD  ; "You are!{W2}"
                nextSingleText $0,ALLY_MEAD ; "Hey, you!{N}Do you know what you've done?{W1}"
                setActscript ALLY_MEAD,eas_BumpRight
                entityActionsWait ALLY_SONETTE
                 moveRight 1
                endActions
                nextSingleText $0,ALLY_MEAD ; "A big problem was created{N}because you stole the{N}jewels!{W1}"
                customActscriptWait ALLY_MEAD
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait ALLY_MEAD
                 moveRight 1
                endActions
                setActscript ALLY_MEAD,eas_BumpRight
                customActscriptWait ALLY_SONETTE
                 ac_setSpeed 14,14      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait ALLY_SONETTE
                 moveRight 1
                endActions
                customActscriptWait ALLY_SONETTE
                 ac_setSpeed 10,10      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait ALLY_SONETTE
                 moveRight 1
                endActions
                stopEntity ALLY_SONETTE
                setFacing ALLY_SONETTE,UP
                setSprite ALLY_SONETTE,MAPSPRITE_POSE1
                csWait 40
                nextText $0,ALLY_MEAD  ; "I know the thief {NAME;5}{N}always steals for poor{N}people, but you made a{W2}"
                nextText $0,ALLY_MEAD  ; "serious mistake this time!!{W2}"
                nextSingleText $0,ALLY_MEAD ; "All these disasters...{N}everything is YOUR fault!{W1}"
                nextSingleText $C0,ALLY_SONETTE ; "I didn't mean to...{W1}"
                entityActionsWait ALLY_MEAD
                 moveRight 1
                 moveUp 2
                 moveLeft 4
                endActions
                setFacing ALLY_MEAD,UP
                nextSingleText $0,ALLY_MEAD ; "That's enough!{N}{LEADER}, let's go!{W1}"
                followEntity ALLY_HAWEL,ALLY_IAN,2
                followEntity ALLY_KNUCKLES,ALLY_HAWEL,2
                followEntity ALLY_PAIGE,ALLY_KNUCKLES,2
                followEntity ALLY_MEAD,ALLY_PAIGE,2
                csc_end
cs_528CA:       entityActionsWait ALLY_IAN
                 moveRight 1
                endActions
                csc_end
cs_528D4:       textCursor $3B3
                nextSingleText $0,ALLY_SONETTE ; "Wait!{W1}"
                setCamDest 50,3
                csWait 30
                setActscriptWait ALLY_SONETTE,eas_Init
                startEntity ALLY_SONETTE
                setSprite ALLY_SONETTE,ALLY_SONETTE
                entityActionsWait ALLY_SONETTE
                 moveLeft 2
                endActions
                nextText $0,ALLY_SONETTE  ; "You'll be captured if you go{N}that way.{W2}"
                nextSingleText $0,ALLY_SONETTE ; "I know this castle very{N}well.  I know a short cut.{W1}"
                entityActionsWait ALLY_SONETTE
                 moveUp 4
                endActions
                csWait 30
                nextSingleText $FF,255  ; "{NAME;5} pulls up some tiles{N}with a short wire.{W1}"
                csWait 30
                playSound SFX_DOOR_OPEN
                setBlocks 63,2,1,1,57,4
                csWait 20
                entityActionsWait ALLY_SONETTE
                 moveRight 1
                 moveUp 1
                endActions
                setFacing ALLY_SONETTE,DOWN
                nextSingleText $0,ALLY_SONETTE ; "Now, go out through this{N}short cut!{W1}"
                csc_end
cs_52938:       textCursor $3B8
                entityActionsWait ALLY_SONETTE
                 moveDown 1
                endActions
                setFacing ALLY_SONETTE,LEFT
                setFacing ALLY_IAN,RIGHT
                nextText $0,ALLY_SONETTE  ; "You're right.  I did it.{W2}"
                nextText $0,ALLY_SONETTE  ; "But, I didn't know all this{N}would happen.{W2}"
                nextSingleText $0,ALLY_SONETTE ; "Please take me with you.{W1}"
                nextSingleText $FF,255  ; "{CLEAR}{LEADER} decides to take{N}{NAME;5} with him.{W1}{CLEAR}"
                setActscriptWait ALLY_SONETTE,eas_Jump
                setActscript ALLY_SONETTE,eas_Jump
                nextText $0,ALLY_SONETTE  ; "Thanks.  I promise to help{N}you.{W2}"
                nextSingleText $0,ALLY_SONETTE ; "This tunnel leads to the{N}kitchen.{N}We can escape safely.{W1}"
                entityActionsWait ALLY_IAN
                 moveUp 1
                endActions
                fadeOutB
                reloadMap 24,14
                setActscriptWait ALLY_MEAD,eas_Init
                setActscriptWait ALLY_PAIGE,eas_Init
                setActscriptWait ALLY_HAWEL,eas_Init
                setActscriptWait ALLY_KNUCKLES,eas_Init
                setActscriptWait ALLY_SONETTE,eas_Init
                hide ALLY_MEAD
                hide ALLY_PAIGE
                hide ALLY_HAWEL
                hide ALLY_KNUCKLES
                setPos ALLY_IAN,29,12,DOWN
                setPos ALLY_SONETTE,29,11,DOWN
                stopEntity ALLY_IAN
                stopEntity ALLY_SONETTE
                fadeInB
                customActscriptWait ALLY_IAN
                 ac_setSpeed 16,16      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait ALLY_SONETTE
                 ac_setSpeed 16,16      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscript ALLY_IAN,eas_RotateRight
                setActscript ALLY_SONETTE,eas_RotateRight
                setDest 32768,29,18
                setDest ALLY_SONETTE,29,17
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_SONETTE,DOWN
                startEntity ALLY_IAN
                startEntity ALLY_SONETTE
                setActscriptWait ALLY_IAN,eas_Init
                setActscriptWait ALLY_SONETTE,eas_Init
                followEntity ALLY_SONETTE,ALLY_IAN,2
                csc_end
cs_52A3C:       setActscriptWait ALLY_IAN,eas_Init
                setFacing 131,LEFT
                textCursor $3BE
                nextText $0,131         ; "Hey, it's noisy next door.{W2}"
                nextSingleText $0,131   ; "It sounds like...{N}Mr. {NAME;28} and the King{N}are arguing.{W1}"
                csWait 20
                setFacing 131,RIGHT
                nextText $0,131         ; "Who are you?{W2}"
                nextSingleText $0,131   ; "Now, I have to get back{N}to work.{W1}"
                csWait 20
                entityActionsWait ALLY_IAN
                 moveRight 1
                endActions
                setFacing ALLY_IAN,LEFT
                csWait 20
                entityActionsWait 131
                 moveRight 1
                 moveUp 1
                 moveRight 1
                endActions
                csc_end
