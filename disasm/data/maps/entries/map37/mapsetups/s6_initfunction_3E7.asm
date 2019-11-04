
; ASM FILE data\maps\entries\map37\mapsetups\s6_initfunction_3E7.asm :
; 0x5FAA4..0x5FB30 : 

; =============== S U B R O U T I N E =======================================

ms_map37_flag3E7_InitFunction:
                
                jsr     InitNazcaShipForceMembers
                chkFlg  $100            ; TEMP FLAG #00
                bne.s   return_5FABA
                script  cs_5FABC
                setFlg  $100            ; TEMP FLAG #00
return_5FABA:
                
                rts

	; End of function ms_map37_flag3E7_InitFunction

cs_5FABC:       textCursor $D1F
                reloadMap 6,6
                setPos ALLY_IAN,8,12,UP
                setPos ALLY_RUBURAN,13,12,UP
                setPos ALLY_ZYNK,10,10,DOWN
                setPos 128,10,11,UP
                stopEntity 128
                playSound MUSIC_STOP
                fadeInB
                nextText $80,ALLY_RUBURAN ; "Ouch!  Hey, {NAME;26}!{N}I like your wild driving!{W2}"
                nextSingleText $80,ALLY_RUBURAN ; "Where's Sir Astral?{W1}"
                setFacing ALLY_RUBURAN,RIGHT
                csWait 20
                setFacing ALLY_RUBURAN,LEFT
                csWait 20
                setFacing ALLY_RUBURAN,RIGHT
                csWait 20
                setFacing ALLY_RUBURAN,LEFT
                csWait 20
                shiver ALLY_RUBURAN
                nextSingleText $80,ALLY_RUBURAN ; "Oh, there he is!{W1}"
                setActscriptWait ALLY_RUBURAN,eas_Init
                entityActionsWait ALLY_RUBURAN
                 moveLeft 3
                 faceUp 1
                endActions
                nextSingleText $80,ALLY_RUBURAN ; "Sir Astral!  Are you OK?{W1}"
                setFacing ALLY_RUBURAN,LEFT
                nextSingleText $80,ALLY_RUBURAN ; "{LEADER}, come on!{W1}"
                csc_end
