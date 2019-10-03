
; ASM FILE data\maps\entries\map72\mapsetups\s6_initfunction.asm :
; 0x4FF2E..0x4FFDA : 

; =============== S U B R O U T I N E =======================================

ms_map72_InitFunction:
                
                 
                chkFlg  $2CC            ; Set after your raft-giving conversation with the KIDDOor in Polca
                beq.s   return_4FF40
                chkFlg  $A              ; JULIA joined
                bne.s   return_4FF40
                script  cs_4FF5A
return_4FF40:
                
                rts

	; End of function ms_map72_InitFunction

                resetMap
                reloadMap 0,0
                playSound MUSIC_SAD_THEME_3
                fadeInB
                textCursor $F0
                nextSingleText $0,ALLY_IAN ; "That's it for today?{W2}{N}Yes, you had better take a{N}rest now.{N}Come back again.{W1}"
                csc_end
cs_4FF5A:       textCursor $614
                newEntity ALLY_JULIA,43,47,DOWN,MAPSPRITE_TAROS
                csWait 1
                setPos ALLY_IAN,45,47,LEFT
                setPos ALLY_RUBURAN,44,47,DOWN
                setPos ALLY_JULIA,43,47,DOWN
                setPos FOLLOWER_B,45,48,LEFT
                playSound MUSIC_MAIN_THEME
                fadeInB
                csWait 40
                nextSingleText $0,ALLY_JULIA ; "Now, let's go to Devil's Tail{N}to see Creed!{W1}"
                setActscriptWait ALLY_JULIA,eas_Jump
                setActscriptWait ALLY_JULIA,eas_Jump
                csWait 30
                setFacing ALLY_RUBURAN,LEFT
                setFacing ALLY_JULIA,RIGHT
                nextSingleText $C0,ALLY_RUBURAN ; "It sounds like {NAME;10} is{N}going with us.{W1}"
                nextText $0,ALLY_JULIA   ; "I am.  I want to fight with{N}{LEADER}.{W2}"
                nextSingleText $0,ALLY_JULIA ; "This might be exciting!{W1}"
                join ALLY_JULIA
                setFacing ALLY_RUBURAN,RIGHT
                nextSingleText $C0,ALLY_RUBURAN ; "I didn't know you were such{N}an adventurer!{W1}"
                setFacing ALLY_RUBURAN,LEFT
                nextSingleText $0,ALLY_JULIA ; "Alright!{N}Wow!  Let's go!{W1}"
                csWait 30
                entityActionsWait ALLY_JULIA
                 moveDown 1
                endActions
                hide ALLY_JULIA
                setStoryFlag $10        ; Battle 16 unlocked
                csc_end
