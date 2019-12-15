

bbcs_01:        
                
                setF $1C2+1
                loadMapFadeIn 1,6,8
                fadeInB
                yesNo
                executeSubroutine removeIanFromParty
                csc_end   
                
removeIanFromParty:
                moveq   #ALLY_IAN,d0  ; starting character
                jsr   LeaveForce
                rts