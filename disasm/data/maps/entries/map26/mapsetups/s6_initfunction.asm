
; ASM FILE data\maps\entries\map26\mapsetups\s6_initfunction.asm :
; 0x59DDC..0x59F20 : 

; =============== S U B R O U T I N E =======================================

ms_map26_InitFunction:
                
                 
                chkFlg  $30B            ; Set after the Cotton Balloon pops and you land in Floor World
                bne.s   byte_59DF2      
                script  cs_59E04
                setFlg  $30B            ; Set after the Cotton Balloon pops and you land in Floor World
                move.b  #$1A,((EGRESS_MAP_INDEX-$1000000)).w
byte_59DF2:
                
                chkFlg  $30C            ; Set after the man tries to lift the giant ring in Floor World
                beq.s   return_59E02
                move.w  #$81,d0 
                jsr     MoveEntityOutOfMap
return_59E02:
                
                rts

	; End of function ms_map26_InitFunction

cs_59E04:       textCursor $6CB
                setCameraEntity 65535
                reloadMap 21,8
                setActscriptWait ALLY_IAN,eas_Init
                setActscriptWait ALLY_RUBURAN,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                stopEntity ALLY_IAN
                stopEntity ALLY_RUBURAN
                stopEntity FOLLOWER_B
                customActscriptWait ALLY_IAN
                 ac_setSpeed 10,10      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait ALLY_RUBURAN
                 ac_setSpeed 10,10      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait FOLLOWER_B
                 ac_setSpeed 10,10      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 130
                 ac_setSpeed 10,10      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 131
                 ac_setSpeed 10,10      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 132
                 ac_setSpeed 10,10      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setPos ALLY_IAN,26,7,DOWN
                setPos ALLY_RUBURAN,27,6,DOWN
                setPos FOLLOWER_B,25,6,DOWN
                setPos 130,26,6,UP
                setPos 131,25,5,UP
                setPos 132,27,5,UP
                fadeInB
                entityActions ALLY_IAN
                 moveDown 7
                endActions
                entityActions ALLY_RUBURAN
                 moveDown 7
                endActions
                entityActions FOLLOWER_B
                 moveDown 7
                endActions
                entityActions 130
                 moveDown 7
                endActions
                entityActions 131
                 moveDown 7
                endActions
                entityActionsWait 132
                 moveDown 7
                endActions
                csWait 20
                startEntity ALLY_IAN
                startEntity ALLY_RUBURAN
                startEntity FOLLOWER_B
                csWait 40
                hide 130
                hide 131
                hide 132
                csWait 30
                nextSingleText $FF,255  ; "The Cotton Balloon popped.{W1}"
                followEntity ALLY_RUBURAN,ALLY_IAN,2
                followEntity FOLLOWER_B,ALLY_RUBURAN,2
                csc_end
