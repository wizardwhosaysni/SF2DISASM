
; ASM FILE data\maps\entries\map14\mapsetups\scripts_1.asm :
; 0x58F5C..0x58F9A : 
cs_58F5C:       moveNextToPlayer 129,DOWN
                textCursor $C84
                nextText $0,129         ; "Are you ready?{W1}"
                yesNo
                jumpIfFlagSet $59,cs_58F7E ; YES/NO prompt answer
                textCursor $C86
                nextSingleText $0,129   ; "I want to leave soon.{N}Finish your preparations.{W1}"
                csc_end
cs_58F7E:       nextSingleText $0,129   ; "The game will be suspended.{N}OK?"
                entityActions 129
                 moveDown 4
                endActions
                entityActionsWait ALLY_IAN
                 moveDown 4
                endActions
                warp $48,$1,$1,$3
                csc_end
