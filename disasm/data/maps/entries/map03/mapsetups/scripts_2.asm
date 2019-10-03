
; ASM FILE data\maps\entries\map03\mapsetups\scripts_2.asm :
; 0x628C8..0x6299A : 
cs_628C8:       textCursor $F4B
                nextText $0,135         ; "I envy you.{N}I'm an old woman now.{W2}"
                nextSingleText $0,135   ; "Nobody kisses me anymore.{W1}"
                setDest ALLY_IAN,25,28
                setFacing ALLY_IAN,UP
                setDest 136,25,27
                setFacing 136,RIGHT
                setFacing 135,LEFT
                nextText $0,136         ; "You're wrong!{W2}"
                nextSingleText $0,136   ; "I'll kiss you!{W1}"
                csWait 10
                setActscriptWait 135,eas_Jump
                setActscriptWait 135,eas_Jump
                csc_end
cs_6290C:       hideText
                entityActionsWait 138
                 moveDown 1
                endActions
                setDest ALLY_IAN,42,10
                setDest ALLY_KNUCKLES,42,10
                setDest ALLY_MEAD,42,10
                setDest ALLY_HAWEL,42,10
                setDest ALLY_PAIGE,42,10
                followEntity ALLY_IAN,138,2
                followEntity ALLY_KNUCKLES,138,5
                followEntity ALLY_MEAD,138,6
                followEntity ALLY_HAWEL,ALLY_KNUCKLES,2
                followEntity ALLY_PAIGE,ALLY_MEAD,2
                entityActionsWait 138
                 moveDown 1
                 moveLeft 1
                 moveDown 1
                 moveDown 1
                 moveDown 1
                endActions
                entityActionsWait 138
                 moveDown 3
                 moveLeft 6
                 eaWait 10
                endActions
                entityActionsWait 138
                 moveUp 8
                 moveLeft 6
                 moveUp 2
                 eaWait 10
                 moveUp 6
                endActions
                warp $13,$1A,$1E,$1
                csc_end
