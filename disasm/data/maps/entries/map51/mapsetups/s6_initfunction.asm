
; ASM FILE data\maps\entries\map51\mapsetups\s6_initfunction.asm :
; 0x5C3CA..0x5C454 : 

; =============== S U B R O U T I N E =======================================

ms_map51_InitFunction:
                
                 
                chkFlg  $1D6            ; Set after you approach the pond to rescue Elric at the Harpy Pond
                bne.s   return_5C3D6
                script  cs_5C3D8
return_5C3D6:
                
                rts

	; End of function ms_map51_InitFunction

cs_5C3D8:       textCursor $9F6
                setActscriptWait FOLLOWER_B,eas_Init
                setActscriptWait ALLY_RUBURAN,eas_Init
                setPos ALLY_IAN,11,22,UP
                setPos FOLLOWER_B,10,22,UP
                setPos ALLY_RUBURAN,9,22,UP
                fadeInB
                entityActionsWait FOLLOWER_B
                 moveUp 2
                endActions
                csWait 5
                setActscript FOLLOWER_B,eas_461B6
                csWait 120
                setFacing FOLLOWER_B,UP
                nextSingleText $0,FOLLOWER_B ; "It's coming from this{N}direction.{W1}"
                entityActionsWait ALLY_RUBURAN
                 moveUp 2
                endActions
                nextSingleText $0,ALLY_RUBURAN ; "Look!  Over there!{W1}"
                setCamDest 2,2
                csWait 50
                nextSingleText $C0,ALLY_MORTON ; "Help me!{W1}"
                nextText $0,ALLY_RUBURAN  ; "An...elven boy?{N}He's stuck in the pond.{W2}"
                nextSingleText $0,ALLY_RUBURAN ; "He must be very tired.{N}Let's pull him out.{W1}"
                setCameraEntity ALLY_IAN
                followEntity ALLY_RUBURAN,ALLY_IAN,2
                followEntity FOLLOWER_B,ALLY_RUBURAN,2
                csc_end
                dc.b $FF
                dc.b $FF
