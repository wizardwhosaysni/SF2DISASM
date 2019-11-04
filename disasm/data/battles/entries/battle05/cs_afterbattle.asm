
; ASM FILE data\battles\entries\battle05\cs_afterbattle.asm :
; 0x49B48..0x49BCA : Cutscene after battle 5
abcs_battle05:  textCursor $91C
                setActscriptWait ALLY_SONETTE,eas_Init
                entityActionsWait ALLY_SONETTE
                 moveDown 1
                 moveLeft 2
                endActions
                setFacing ALLY_SONETTE,DOWN
                nextText $0,ALLY_SONETTE  ; "This is the Jewel of Light{N}that I stole from the shrine.{W2}"
                nextSingleText $0,ALLY_SONETTE ; "The other jewel is missing.{N}I'll give you this one now.{W1}"
                nextText $FF,255        ; "{LEADER} received the{N}Jewel of Light...{W2}{N}The jewel fused to{N}{LEADER}'s neck.{W1}"
                csWait 10
                setActscriptWait ALLY_SONETTE,eas_Jump
                setActscriptWait ALLY_SONETTE,eas_Jump
                nextText $0,ALLY_SONETTE  ; "{LEADER}, did you use{N}magic?{W2}"
                setF $180               ; Set after IAN obtains the jewel of light/evil... whichever it is
                csWait 30
                nextText $0,ALLY_SONETTE  ; "Ummm...I can't remove it!{N}Is it cursed?{W2}"
                setActscriptWait ALLY_SONETTE,eas_46172
                nextText $0,ALLY_SONETTE  ; "We'll go to the church{N}later to see if it's cursed.{N}At least we have it now.{W1}"
                nextText $0,ALLY_SONETTE  ; "The knight said that King{N}Galam took the other jewel{N}with him.{W2}"
                nextSingleText $0,ALLY_SONETTE ; "{LEADER}, I'll go to{N}Granseal with you.{W1}"
                join ALLY_SONETTE
                nextText $0,ALLY_SONETTE  ; "I have an obligation to find{N}the other jewel!{W2}"
                nextSingleText $0,ALLY_SONETTE ; "Let's go to Granseal!{W1}"
                clearF $49              ; SONETTE is a follower
                setStoryFlag $6         ; Battle 6 unlocked
                followEntity ALLY_SONETTE,ALLY_IAN,2
                warp $10,$10,$12,$3
                csc_end
