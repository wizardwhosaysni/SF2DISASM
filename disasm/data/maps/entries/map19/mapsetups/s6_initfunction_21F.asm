
; ASM FILE data\maps\entries\map19\mapsetups\s6_initfunction_21F.asm :
; 0x62C9E..0x631EA : 

; =============== S U B R O U T I N E =======================================

ms_map19_flag21F_InitFunction:
                
                 
                chkFlg  $19             ; Shiela joined
                bne.s   byte_62CAE      
                move.w  #$19,d0
                jsr     MoveEntityOutOfMap
byte_62CAE:
                
                chkFlg  $8              ; KIDDO joined
                bne.s   byte_62CBE      
                move.w  #8,d0
                jsr     MoveEntityOutOfMap
byte_62CBE:
                
                chkFlg  $1B             ; Chaz joined
                bne.s   byte_62CCE
                move.w  #$1B,d0
                jsr     MoveEntityOutOfMap
byte_62CCE:
                
                script  cs_62D06
                chkFlg  $3D5
                beq.s   byte_62CFC
                chkFlg  $3D6
                bne.s   byte_62CF2
                script  cs_62D0E
                setFlg  $3D6
                move.b  #$FF,((FOLLOWERS_LIST-$1000000)).w
                bra.s   loc_62CFA
byte_62CF2:
                
                sndCom  MUSIC_TOWN
                jsr     (FadeInFromBlack).w
loc_62CFA:
                
                bra.s   return_62D04
byte_62CFC:
                
                sndCom  MUSIC_TOWN
                jsr     (FadeInFromBlack).w
return_62D04:
                
                rts

	; End of function ms_map19_flag21F_InitFunction

cs_62D06:       setSprite ALLY_ERIC,MAPSPRITE_NPC_ERIC
                csc_end
cs_62D0E:       textCursor $F7F
                setCameraEntity 129
                setPos 129,26,29,UP
                setPos ALLY_KNUCKLES,26,30,UP
                setPos ALLY_MEAD,26,30,UP
                setPos ALLY_HAWEL,26,30,UP
                setPos ALLY_PAIGE,26,30,UP
                followEntity ALLY_IAN,129,2
                followEntity ALLY_KNUCKLES,129,5
                followEntity ALLY_MEAD,129,6
                followEntity ALLY_HAWEL,ALLY_KNUCKLES,2
                followEntity ALLY_PAIGE,ALLY_MEAD,2
                csWait 10
                fadeInB
                entityActionsWait 129
                 moveUp 4
                 moveRight 3
                 moveUp 2
                endActions
                roofEvent 29,23
                entityActionsWait 129
                 moveUp 14
                endActions
                setActscriptWait ALLY_IAN,eas_Init
                setActscriptWait ALLY_MEAD,eas_Init
                setActscriptWait ALLY_HAWEL,eas_Init
                setActscriptWait ALLY_PAIGE,eas_Init
                setActscriptWait ALLY_KNUCKLES,eas_Init
                setCamDest 24,5
                csWait 40
                customActscriptWait 129
                 ac_setSpeed 16,16      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 129
                 moveUp 1
                endActions
                csWait 30
                nextSingleText $0,129   ; "King Granseal, {LEADER}{N}is here!{W1}"
                nod 128
                nextSingleText $80,128  ; "Please explain what is{N}happening.{W1}"
                csWait 10
                nod 129
                nextSingleText $0,129   ; "Yes, sir.{W1}"
                entityActionsWait 129
                 moveRight 1
                 faceDown 1
                endActions
                csWait 30
                nod 129
                setFacing ALLY_IAN,UP
                setFacing ALLY_MEAD,UP
                setFacing ALLY_HAWEL,UP
                setFacing ALLY_PAIGE,UP
                setFacing ALLY_KNUCKLES,UP
                setFacing ALLY_SONETTE,UP
                setFacing ALLY_RUBURAN,UP
                setFacing ALLY_JULIA,UP
                setFacing ALLY_SHEELA,UP
                setFacing ALLY_KIDDO,UP
                setFacing ALLY_HIGINS,UP
                setFacing ALLY_ERIC,UP
                setFacing ALLY_ZYNK,UP
                setFacing ALLY_CHAZ,UP
                csWait 10
                nextText $0,129         ; "Listen up!{W2}"
                nextText $0,129         ; "It took two years, but the{N}Princess finally recovered{N}from the poison.{W2}"
                nextSingleText $0,129   ; "But she's still sleeping.{N}We've decided to take{N}Mitula's advice.{W1}"
                setActscriptWait ALLY_RUBURAN,eas_Jump
                setActscriptWait ALLY_RUBURAN,eas_Jump
                nextSingleText $80,ALLY_RUBURAN ; "Mitula...you mean, somebody{N}gets to kiss her?{W1}"
                csWait 10
                shiver ALLY_MEAD
                csWait 10
                setFacing 129,UP
                csWait 40
                nod 128
                csWait 30
                nextSingleText $0,128   ; "Yes.{N}We feel this is the right{N}time.{W1}"
                csWait 30
                setFacing 129,DOWN
                nextSingleText $0,129   ; "And we need to decide which{N}one of you will kiss{N}Elis.{W1}"
                setFacing ALLY_RUBURAN,LEFT
                nextSingleText $80,ALLY_RUBURAN ; "We don't have to decide.{N}It's {LEADER}.{N}{NAME;10}, don't you agree?{W1}"
                setFacing ALLY_RUBURAN,DOWN
                csWait 20
                shiver ALLY_JULIA
                csWait 20
                nextText $80,ALLY_JULIA  ; "Ha, ha!  Yes, {NAME;7}!{W2}"
                csWait 10
                setFacing ALLY_JULIA,LEFT
                nextSingleText $80,ALLY_JULIA ; "I always thought {LEADER}{N}was the best choice!{W1}"
                entityActionsWait 129
                 moveRight 2
                 faceDown 1
                endActions
                setFacing ALLY_RUBURAN,UP
                setFacing ALLY_JULIA,UP
                nextSingleText $0,129   ; "Are you sure?{N}Anybody disagree?{W1}"
                setFacing ALLY_RUBURAN,DOWN
                csWait 60
                entityActionsWait 129
                 moveLeft 2
                 faceDown 1
                endActions
                setFacing ALLY_RUBURAN,UP
                nextSingleText $0,129   ; "Nobody?{W1}"
                csWait 30
                entityActionsWait 129
                 moveLeft 2
                 faceDown 1
                endActions
                setFacing ALLY_RUBURAN,DOWN
                setFacing ALLY_KNUCKLES,RIGHT
                setFacing ALLY_JULIA,UP
                setFacing ALLY_SHEELA,DOWN
                setFacing ALLY_KIDDO,DOWN
                setFacing ALLY_HIGINS,DOWN
                setFacing ALLY_ERIC,UP
                setFacing ALLY_IAN,DOWN
                csWait 40
                setCamDest 24,7
                csWait 5
                setActscript ALLY_HAWEL,eas_461B6
                csWait 100
                entityActionsWait ALLY_HAWEL
                 moveDown 1
                endActions
                setFacing ALLY_HAWEL,RIGHT
                shiver ALLY_HAWEL
                setFacing ALLY_MEAD,DOWN
                setFacing ALLY_PAIGE,DOWN
                setFacing ALLY_KNUCKLES,DOWN
                setFacing ALLY_SONETTE,RIGHT
                setFacing ALLY_JULIA,LEFT
                setFacing ALLY_SHEELA,RIGHT
                setFacing ALLY_KIDDO,RIGHT
                setFacing ALLY_HIGINS,LEFT
                setFacing ALLY_ERIC,RIGHT
                setFacing ALLY_ZYNK,RIGHT
                setFacing ALLY_CHAZ,LEFT
                setFacing ALLY_IAN,DOWN
                nextText $0,ALLY_HAWEL   ; "I understand what my friends{N}are saying, but...I love{N}her.{W2}"
                nextSingleText $0,ALLY_HAWEL ; "KIDDO I kiss her?{N}Somebody, say yes!{W1}"
                csWait 5
                setActscript ALLY_HAWEL,eas_461B6
                shiver ALLY_MEAD
                csWait 20
                setFacing ALLY_RUBURAN,DOWN
                setFacing ALLY_JULIA,UP
                csWait 20
                headshake ALLY_JULIA
                csWait 20
                entityActionsWait ALLY_RUBURAN
                 moveLeft 1
                 moveDown 2
                 faceLeft 1
                endActions
                setFacing ALLY_JULIA,LEFT
                setFacing ALLY_HAWEL,RIGHT
                nextSingleText $80,ALLY_RUBURAN ; "Sorry, but...I don't think{N}{NAME;3} is the right{N}choice.{W1}"
                shiver ALLY_HAWEL
                entityActionsWait ALLY_SONETTE
                 moveRight 1
                 moveDown 1
                 faceRight 1
                endActions
                setFacing ALLY_HAWEL,LEFT
                nextText $0,ALLY_SONETTE  ; "I understand {NAME;3}, but{N}she is a human.{W2}"
                nextSingleText $0,ALLY_SONETTE ; "A human is the best choice.{W1}"
                shiver ALLY_HAWEL
                jumpIfFlagClear $8,cs_62FB0 ; KIDDO joined
                entityActionsWait ALLY_KIDDO
                 moveDown 1
                 faceRight 1
                endActions
                nextSingleText $0,ALLY_KIDDO ; "{LEADER} is a human!{N}They will make a cute couple!{W1}"
                shiver ALLY_HAWEL
cs_62FB0:       textCursor $F93
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                 faceDown 1
                endActions
                entityActionsWait ALLY_HIGINS
                 moveLeft 1
                endActions
                setFacing ALLY_HAWEL,RIGHT
                nextText $80,ALLY_HIGINS ; "{LEADER} is a good lad{N}with the manner of a{N}knight!{W2}"
                nextSingleText $80,ALLY_HIGINS ; "I think he's the best{N}choice.{W1}"
                shiver ALLY_HAWEL
                csWait 30
                entityActionsWait 129
                 moveRight 2
                 moveDown 1
                endActions
                nextSingleText $0,129   ; "{NAME;1}, what do you{N}think?{W1}"
                shiver ALLY_MEAD
                setFacing ALLY_MEAD,UP
                setFacing ALLY_HAWEL,UP
                setFacing ALLY_PAIGE,UP
                setFacing ALLY_KNUCKLES,UP
                setFacing ALLY_RUBURAN,UP
                setFacing ALLY_HIGINS,UP
                setFacing ALLY_IAN,UP
                nextText $80,ALLY_MEAD ; "M...me?  Well...{W2}"
                shiver ALLY_MEAD
                nextText $80,ALLY_MEAD ; "I'm worried about her...{N}but...I...{W2}"
                setFacing ALLY_MEAD,LEFT
                csWait 30
                setFacing ALLY_MEAD,UP
                csWait 10
                nextSingleText $80,ALLY_MEAD ; "Yes, a good choice....{N}{LEADER} will make her...{N}...happy....{W1}"
                customActscriptWait ALLY_MEAD
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait ALLY_PAIGE
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions ALLY_MEAD
                 moveDown 1
                endActions
                entityActionsWait ALLY_PAIGE
                 moveLeft 1
                endActions
                setActscript ALLY_PAIGE,eas_RotateRight
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_KNUCKLES,DOWN
                setFacing ALLY_HAWEL,DOWN
                setFacing ALLY_RUBURAN,DOWN
                setFacing ALLY_HIGINS,DOWN
                entityActionsWait ALLY_MEAD
                 moveDown 8
                endActions
                hide ALLY_MEAD
                setActscriptWait ALLY_PAIGE,eas_Init
                startEntity ALLY_PAIGE
                setFacing ALLY_PAIGE,DOWN
                headshake ALLY_PAIGE
                csWait 30
                setCamDest 24,9
                entityActionsWait ALLY_PAIGE
                 moveDown 2
                endActions
                csWait 50
                nextSingleText $0,ALLY_PAIGE ; "Does she love {LEADER}?{N}I didn't know that.{W1}"
                setActscriptWait ALLY_KNUCKLES,eas_Jump
                setActscriptWait ALLY_KNUCKLES,eas_Jump
                entityActionsWait ALLY_KNUCKLES
                 moveDown 1
                 moveRight 2
                 moveDown 2
                 faceLeft 1
                endActions
                setFacing ALLY_PAIGE,RIGHT
                nextSingleText $80,ALLY_KNUCKLES ; "Stop!{N}I will go and comfort her.{W1}"
                setFacing ALLY_PAIGE,DOWN
                entityActions ALLY_KNUCKLES
                 moveDown 2
                endActions
                csWait 8
                setActscriptWait ALLY_PAIGE,eas_Jump
                setActscriptWait ALLY_PAIGE,eas_Jump
                nextSingleText $0,ALLY_PAIGE ; "{NAME;4}!{N}I'll go with you!{W1}"
                setFacing ALLY_KNUCKLES,UP
                nextSingleText $80,ALLY_KNUCKLES ; "Oh, c'mon.{N}She needs someone like me.{W1}"
                entityActionsWait ALLY_KNUCKLES
                 moveDown 5
                endActions
                hide ALLY_KNUCKLES
                csWait 30
                nextSingleText $0,ALLY_PAIGE ; "What does he mean?{N}I don't understand!{W1}"
                entityActionsWait ALLY_ERIC
                 moveRight 2
                 moveDown 1
                 moveRight 2
                 faceDown 1
                endActions
                nextSingleText $80,ALLY_ERIC ; "They remind me of when I{N}was young.{W1}"
                entityActionsWait ALLY_ZYNK
                 moveRight 3
                 moveDown 1
                 faceRight 1
                endActions
                nextSingleText $0,ALLY_ZYNK ; "{NAME;11}, you were young{N}once?{W1}"
                shiver ALLY_ZYNK
                setFacing ALLY_ERIC,LEFT
                setActscriptWait ALLY_ERIC,eas_Jump
                setActscriptWait ALLY_ERIC,eas_Jump
                nextSingleText $80,ALLY_ERIC ; "Be quiet, you bucket of bolts!{W1}"
                setCamDest 24,5
                entityActionsWait ALLY_JULIA
                 moveUp 1
                 moveLeft 2
                 faceUp 1
                endActions
                setFacing ALLY_HAWEL,UP
                setFacing ALLY_RUBURAN,UP
                setFacing ALLY_PAIGE,UP
                setFacing ALLY_JULIA,UP
                setFacing ALLY_ERIC,UP
                setFacing ALLY_ZYNK,UP
                setFacing ALLY_HIGINS,UP
                setFacing ALLY_IAN,UP
                nextText $80,ALLY_JULIA  ; "You heard everyone.{N}We think {LEADER} is the{N}right choice.{W2}"
                setFacing ALLY_JULIA,DOWN
                nextText $80,ALLY_JULIA  ; "{NAME;4} will take care{N}of {NAME;1}.{W2}"
                nod 129
                setFacing ALLY_JULIA,UP
                nextSingleText $80,ALLY_JULIA ; "Everything went as you{N}expected, huh?{W1}"
                shiver 129
                nextText $0,129         ; "You knew that?{N}{NAME;10}, you're smart.{W2}"
                nextText $0,129         ; "But I didn't know what{N}{NAME;1} or {NAME;3} would do.{W2}I didn't want to hurt their{N}feelings.{W1}"
                nextSingleText $0,129   ; "{LEADER}, I choose you.{W1}"
                customActscriptWait 128
                 ac_setSpeed 16,16      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 128
                 moveDown 1
                 moveRight 1
                 faceDown 1
                endActions
                setFacing 129,UP
                nextSingleText $80,128  ; "Now, {LEADER}.{N}Please go awaken her.{W1}"
                entityActionsWait 128
                 moveLeft 1
                 moveDown 1
                endActions
                nextSingleText $80,128  ; "The Minister is waiting{N}for you.{W1}"
                entityActionsWait 128
                 moveUp 2
                 faceDown 1
                endActions
                entityActionsWait 129
                 moveLeft 1
                 faceDown 1
                endActions
                nextSingleText $0,129   ; "Oh, {LEADER}!{N}I really respect you.{W2}"
                csc_end
