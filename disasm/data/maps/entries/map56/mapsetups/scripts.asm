
; ASM FILE data\maps\entries\map56\mapsetups\scripts.asm :
; 0x6150A..0x6153E : 
cs_6150A:       textCursor $E14
                faceEntity 128,ALLY_IAN
                nextSingleText $0,128   ; "Unbelievable!  You've{N}finally arrived.{W1}"
                faceEntity ALLY_IAN,128
                faceEntity ALLY_RUBURAN,128
                nextSingleText $0,ALLY_RUBURAN ; "Creed...I mean, Mr...{W1}"
                nextText $0,128         ; "That's OK, {NAME;7}.{N}I doubted you'd ever make{N}it here.{W2}"
                nextSingleText $0,128   ; "The enemies you've faced so{N}far were strong.{W1}"
                nextSingleText $0,ALLY_IAN ; "Yes, they were.{W1}"
                nextText $0,128         ; "Why am I here?  Is that your{N}question, {LEADER}?{W2}"
                nextText $0,128         ; "I wanted to help you.{W2}"
                csc_end
