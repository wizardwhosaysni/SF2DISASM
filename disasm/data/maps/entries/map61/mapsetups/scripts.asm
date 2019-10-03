
; ASM FILE data\maps\entries\map61\mapsetups\scripts.asm :
; 0x5C6CA..0x5C76A : 
cs_5C6CA:       textCursor $E3A
                setActscriptWait ALLY_RUBURAN,eas_Init
                setActscriptWait FOLLOWER_A,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                setDest ALLY_IAN,4,9
                setFacing ALLY_IAN,UP
                setDest ALLY_RUBURAN,6,9
                setFacing ALLY_RUBURAN,UP
                setCamDest 0,5
                setDest FOLLOWER_A,5,7
                setDest FOLLOWER_B,5,9
                setFacing FOLLOWER_B,UP
                setFacing FOLLOWER_A,DOWN
                nextSingleText $0,FOLLOWER_A ; "It's my job!{W1}"
                setFacing FOLLOWER_A,UP
                nextSingleText $0,FOLLOWER_A ; "Row...sham...bow!{W1}"
                entityFlashWhite FOLLOWER_A,$28
                playSound SFX_BATTLEFIELD_DEATH
                setQuake 2
                setBlocks 11,0,1,1,5,6
                csWait 30
                setQuake 0
                setFacing FOLLOWER_A,DOWN
                nextSingleText $0,FOLLOWER_A ; "OK, you go first!{W1}"
                setStoryFlag $F         ; Battle 15 unlocked
                followEntity ALLY_RUBURAN,ALLY_IAN,2
                followEntity FOLLOWER_B,ALLY_RUBURAN,2
                followEntity FOLLOWER_A,FOLLOWER_B,2
                csc_end
