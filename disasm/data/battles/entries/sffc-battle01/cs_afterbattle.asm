

abcs_battle01:  
                loadMapFadeIn 1,6,8
                fadeInB
                setF $1F4+1
                setF $190+2
                warp 2,6,8,DOWN
                yesNo
                executeSubroutine reinsertIanIntoParty
                csc_end      
                
reinsertIanIntoParty:
                moveq   #ALLY_IAN,d0  ; starting character
                jsr   JoinForce
                rts                
