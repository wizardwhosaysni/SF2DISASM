
; ASM FILE data\maps\entries\map12\mapsetups\s6_initfunction.asm :
; 0x57D04..0x57E36 : 

; =============== S U B R O U T I N E =======================================

ms_map12_InitFunction:
                
                 
                chkFlg  $2D5            ; Set after telling Rohde that you're going to get the Caravan
                bne.s   byte_57D10      
                script  cs_57D22
byte_57D10:
                
                chkFlg  $206            ; Battle 18 completed
                beq.s   return_57D20
                move.w  #$80,d0 
                jsr     MoveEntityOutOfMap
return_57D20:
                
                rts

	; End of function ms_map12_InitFunction

cs_57D22:       textCursor $C7D
                cameraSpeed $30
                setActscriptWait ALLY_IAN,eas_Init
                setActscriptWait ALLY_RUBURAN,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                setPos ALLY_IAN,12,31,UP
                setPos ALLY_RUBURAN,13,31,UP
                setPos FOLLOWER_B,11,31,UP
                fadeInB
                entityActions ALLY_IAN
                 moveUp 5
                endActions
                entityActions ALLY_RUBURAN
                 moveUp 5
                endActions
                entityActionsWait FOLLOWER_B
                 moveUp 5
                endActions
                nextSingleText $0,128   ; "Stop!{W1}"
                csWait 10
                setActscript ALLY_IAN,eas_Jump
                setActscript ALLY_RUBURAN,eas_Jump
                setActscriptWait FOLLOWER_B,eas_Jump
                setActscript ALLY_IAN,eas_Jump
                setActscript ALLY_RUBURAN,eas_Jump
                setActscriptWait FOLLOWER_B,eas_Jump
                csWait 30
                csWait 5
                setActscript ALLY_IAN,eas_461B6
                csWait 5
                setActscript ALLY_RUBURAN,eas_461E4
                csWait 5
                setActscript FOLLOWER_B,eas_461B6
                csWait 80
                entityActionsWait ALLY_RUBURAN
                 moveUp 1
                endActions
                setFacing ALLY_IAN,UP
                setFacing FOLLOWER_B,UP
                nextSingleText $80,ALLY_RUBURAN ; "Who said that?{W1}"
                setCamDest 7,5
                nextSingleText $80,ALLY_RUBURAN ; "Wow, what a huge guy!{W1}"
                csWait 30
                nextSingleText $0,128   ; "Leave here!{N}I'll attack you if you don't!{W1}"
                setCamDest 7,21
                entityActionsWait ALLY_RUBURAN
                 moveDown 1
                endActions
                setFacing ALLY_IAN,RIGHT
                setFacing FOLLOWER_B,RIGHT
                setFacing ALLY_RUBURAN,LEFT
                nextText $80,ALLY_RUBURAN ; "Attack us?!  {LEADER},{N}let's get out of here!{W2}"
                nextSingleText $80,ALLY_RUBURAN ; "We don't want to fight him!{W1}"
                csWait 20
                nod ALLY_IAN
                nextSingleText $80,ALLY_RUBURAN ; "OK, hurry!{W1}"
                entityActions ALLY_IAN
                 moveDown 5
                endActions
                entityActions ALLY_RUBURAN
                 moveDown 5
                endActions
                entityActionsWait FOLLOWER_B
                 moveDown 5
                endActions
                warp $44,$37,$2C,$3
                csc_end
