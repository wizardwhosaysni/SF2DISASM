
; ASM FILE data\maps\entries\map20\mapsetups\scripts_2.asm :
; 0x633C4..0x6343C : 
cs_EndKiss:     hideText
                setCameraEntity 65535
                setFacing ALLY_IAN,RIGHT
                customActscriptWait ALLY_IAN
                 ac_setSpeed 8,8        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                csWait 30
                playSound MUSIC_ENDING
                entityActions ALLY_IAN
                 moveUpRight 1
                endActions
                csWait 10
                setActscriptWait ALLY_IAN,eas_461AA
                csWait 80
                entityActions ALLY_IAN
                 moveRight 1
                endActions
                csWait 10
                setActscriptWait ALLY_IAN,eas_461AA
                stopEntity ALLY_IAN
                csWait 50
                customActscriptWait ALLY_IAN
                 ac_setSpeed 4,4        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions ALLY_IAN
                 moveRight 1
                endActions
                csWait 16
                setActscriptWait ALLY_IAN,eas_461AA
                csWait 120
                executeSubroutine j_EndKiss
                csc_end
