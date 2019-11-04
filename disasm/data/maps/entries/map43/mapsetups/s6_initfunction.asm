
; ASM FILE data\maps\entries\map43\mapsetups\s6_initfunction.asm :
; 0x540A6..0x54348 : 

; =============== S U B R O U T I N E =======================================

ms_map43_InitFunction:
                
                 
                script  cs_540C0
                setFlg  $264            ; Set after event at Hawel's house
                setFlg  $28A            ; Set after event at Hawel's house
                clrFlg  $48             ; KNUCKLES is a follower
                move.b  #$2B,((EGRESS_MAP_INDEX-$1000000)).w 
return_540BE:
                
                rts

	; End of function ms_map43_InitFunction

cs_540C0:       textCursor $32B
                setActscriptWait ALLY_IAN,eas_Init
                setActscriptWait ALLY_KNUCKLES,eas_Init
                setPos 128,7,4,DOWN
                setPos ALLY_IAN,6,11,UP
                setPos ALLY_KNUCKLES,5,11,UP
                customActscriptWait 128
                 ac_setAnimCounter $0   ;   
                 ac_setFlip $1          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                stopEntity 128
                reloadMap 0,4
                fadeInB
                csWait 50
                setFacing ALLY_IAN,LEFT
                setFacing ALLY_KNUCKLES,RIGHT
                csWait 30
                nextSingleText $0,ALLY_KNUCKLES ; "This is Hawel's house.{W1}"
                entityActionsWait ALLY_KNUCKLES
                 moveLeft 1
                 moveUp 1
                 eaWait 20
                endActions
                nextSingleText $0,ALLY_KNUCKLES ; "Sir Hawel!{N}Granseal friends are here!{W1}"
                csWait 70
                setFacing ALLY_KNUCKLES,RIGHT
                csWait 40
                nextSingleText $0,ALLY_KNUCKLES ; "Strange...{N}There's no answer.{W2}{N}Has he gone somewhere?{N}Well, why don't you wait{N}for him inside?{W1}"
                nod ALLY_IAN
                entityActionsWait ALLY_IAN
                 moveLeft 2
                endActions
                roofEvent 4,9
                stepEvent 4,9
                stepEvent 11,9
                entityActions ALLY_KNUCKLES
                 moveUp 3
                endActions
                entityActionsWait ALLY_IAN
                 moveUp 3
                endActions
                csWait 30
                customActscriptWait ALLY_KNUCKLES
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait ALLY_KNUCKLES
                 moveRight 1
                endActions
                setFacing ALLY_KNUCKLES,UP
                playSound $FE
                nextSingleText $0,ALLY_KNUCKLES ; "Wh...who are you?{N}Oh, Sir Hawel!{W1}"
                playSound MUSIC_ENEMY_ATTACK
                setCamDest 2,0
                setFacing 129,DOWN
                setFacing 130,DOWN
                nextSingleText $0,129   ; "Oops!  You came back early!{W1}"
                entityActionsWait ALLY_KNUCKLES
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_KNUCKLES ; "You!  What did you{N}do to Sir Hawel?!{W1}"
                csWait 30
                setFacing 129,RIGHT
                setFacing 130,LEFT
                csWait 30
                setFacing 129,DOWN
                setFacing 130,DOWN
                csWait 30
                setActscript 129,eas_Jump
                setActscriptWait 130,eas_Jump
                setActscript 129,eas_Jump
                setActscriptWait 130,eas_Jump
                customActscriptWait 129
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 130
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait ALLY_KNUCKLES,eas_Init
                entityActions 130
                 moveDown 2
                 moveRight 4
                 moveDown 5
                endActions
                entityActions 129
                 moveRight 1
                 moveDown 2
                 moveRight 4
                 moveDown 5
                endActions
                entityActionsWait ALLY_KNUCKLES
                 eaWait 20
                 faceRight 20
                 jumpUp 0
                 moveDown 1
                 moveRight 3
                endActions
                playSound SFX_BLO
                customActscriptWait ALLY_KNUCKLES
                 ac_setAnimCounter $0   ;   
                 ac_setFlip $1          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                hide 129
                hide 130
                csWait 60
                setActscriptWait ALLY_KNUCKLES,eas_Init
                entityActionsWait ALLY_KNUCKLES
                 moveRight 1
                endActions
                playSound $FD
                nextSingleText $0,128   ; "Ohhh...{NAME;4}....{W1}"
                entityActionsWait ALLY_KNUCKLES
                 moveLeft 1
                endActions
                setFacing ALLY_KNUCKLES,UP
                nextSingleText $0,ALLY_KNUCKLES ; "Sir...you're alive!{W1}"
                playSound MUSIC_SAD_THEME_1
                nextSingleText $0,128   ; "...It's no use running after{N}them....{W1}"
                entityActionsWait ALLY_KNUCKLES
                 moveLeft 1
                 moveUp 2
                endActions
                nextSingleText $0,ALLY_KNUCKLES ; "Are you OK, sir?{N}Why did they do such a{N}cruel thing?{W1}"
                nextSingleText $0,128   ; "They were Galam soldiers.{N}They demanded my notes on{N}Ground Seal.{W2}{N}They suddenly snatched at{N}them, and...(cough)...{W1}"
                shiver 128
                stopEntity 128
                entityActionsWait ALLY_IAN
                 moveRight 2
                 moveUp 3
                endActions
                setFacing ALLY_IAN,RIGHT
                setFacing ALLY_KNUCKLES,LEFT
                nextSingleText $0,ALLY_IAN ; "(Whisper)....{W1}"
                nextSingleText $0,128   ; "Who...is...it?{N}What...did he...say?{W1}"
                setFacing ALLY_KNUCKLES,UP
                nextSingleText $0,ALLY_KNUCKLES ; "He's {LEADER} from{N}Granseal.  He said that{N}Ground Seal has opened.{W1}{N}And a serious disaster{N}took place!{W1}{N}He came to see you for{N}more information.{W1}"
                shiver 128
                stopEntity 128
                nextSingleText $0,128   ; "What?!  The door opened?{N}Who broke the ancient{N}seal?! {W1}"
                nextSingleText $0,ALLY_KNUCKLES ; "Calm down, sir.{N}Why are you so excited?{W1}"
                nextSingleText $0,128   ; "(Cough, cough)...{NAME;4},{N}listen to me carefully.{N}Grans Island is lost!{W2}{N}That tower is the sacred{N}seal that confines a terrible{N}devil.{W2}{N}Two jewels...(cough)...{N}were...installed to...{W1}"
                shiver 128
                stopEntity 128
                nextSingleText $0,ALLY_KNUCKLES ; "Stop talking, or you'll die.{W1}"
                nextText $0,128         ; "I'm almost dead anyway...{N}(cough)...(cough)....{W2}"
                nextSingleText $0,128   ; "{NAME;4}, look for the jewels...{N}to seal...ancient...{W1}"
                playSound $FD
                shiver 128
                stopEntity 128
                setPosFlash 128,63,63,DOWN
                entityActionsWait ALLY_KNUCKLES
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_KNUCKLES ; "Sir!  Sir Hawel!{N}Don't leave me alone!{N}Oh, no...!{W1}"
                stopEntity ALLY_KNUCKLES
                csWait 60
                entityActionsWait ALLY_IAN
                 moveRight 1
                endActions
                setFacing ALLY_IAN,UP
                csWait 30
                startEntity ALLY_KNUCKLES
                setFacing ALLY_KNUCKLES,DOWN
                nextText $0,ALLY_KNUCKLES  ; "Sir Hawel passed away.{W2}{N}I'm going to seal the tower.{N}It's Sir Hawel's last wish.{W2}"
                nextSingleText $0,ALLY_KNUCKLES ; "{LEADER}, please!{N}His wish is related to{N}your mission, right?{W2}{N}Can you go with me and{N}seal the tower?{W1}"
                join 32772
                nextSingleText $0,ALLY_KNUCKLES ; "Now, let's go to the{N}Ancient Shrine!{W1}"
                followEntity ALLY_KNUCKLES,ALLY_IAN,2
                clearF $48              ; KNUCKLES is a follower
                setStoryFlag $4         ; Battle 4 unlocked
                csc_end
