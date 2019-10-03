
; ASM FILE data\battles\entries\battle04\cs_beforebattle.asm :
; 0x4981E..0x498EE : Cutscene before battle 4
bbcs_04:        textCursor $907
                loadMapFadeIn 66,1,5
                loadMapEntities ce_4989E
                setActscriptWait ALLY_IAN,eas_Init
                setPos ALLY_KNUCKLES,6,9,DOWN
                fadeInB
                setActscriptWait ALLY_KNUCKLES,eas_Jump
                nextSingleText $0,ALLY_KNUCKLES ; "Who are they?{W1}"
                setCamDest 7,13
                nextSingleText $0,ALLY_KNUCKLES ; "Galam soldiers!{W1}"
                nextSingleText $C0,ALLY_LEMON ; "Greetings, Granseal scum!{W1}"
                nextSingleText $0,ALLY_KNUCKLES ; "Why did you kill Sir{N}Hawel?  How could you be{N}so mean?{W1}"
                nextSingleText $C0,ALLY_LEMON ; "Ummm....{W1}"
                nextText $0,ALLY_KNUCKLES  ; "Answer me!{W1}"
                nextSingleText $0,ALLY_KNUCKLES ; "{LEADER}, we must{N}defeat them so we can learn{N}the truth!{W1}"
                setFacing ALLY_LEMON,DOWN
                csWait 30
                setFacing ALLY_LEMON,RIGHT
                setFacing 128,LEFT
                csWait 20
                nextSingleText $C0,ALLY_LEMON ; "Capture them alive!{W1}"
                nod 128
                entityActionsWait ALLY_LEMON
                 moveDown 1
                 moveRight 2
                 moveDown 2
                 moveRight 1
                 moveDown 1
                endActions
                entityActionsWait ALLY_LEMON
                 moveRight 2
                 moveDown 1
                endActions
                csc_end
ce_4989E:       mainEntity 5,9,DOWN
                entity 6,9,DOWN,ALLY_KNUCKLES,eas_Init
                entity 5,8,DOWN,ALLY_MEAD,eas_Init
                entity 5,7,DOWN,ALLY_PAIGE,eas_Init
                entity 6,8,DOWN,ALLY_HAWEL,eas_Init
                entity 13,17,UP,ALLY_LEMON,eas_Init
                entity 14,17,UP,MAPSPRITE_GALAM_ARCHER,eas_Init
                entity 11,18,UP,MAPSPRITE_GALAM_SOLDIER,eas_Init
                entity 12,18,UP,MAPSPRITE_GALAM_SOLDIER,eas_Init
                entity 14,16,UP,MAPSPRITE_GALAM_SOLDIER,eas_Init
                dc.w $FFFF
