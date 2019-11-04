
; ASM FILE data\battles\entries\battle05\cs_battleend.asm :
; 0x49AB2..0x49B48 : Enemy defeated cutscene for battle 5
edcs_battle5:   textCursor $913
                stopEntity 128
                setFacing ALLY_IAN,UP
                setFacing ALLY_SONETTE,UP
                setActscriptWait ALLY_SONETTE,eas_Init
                setCamDest 12,0
                csWait 30
                shiver 128
                nextSingleText $0,128   ; "You, rat!  I threw you into{N}jail after I took your{N}jewels....{W1}"
                setActscriptWait ALLY_SONETTE,eas_Jump
                setActscriptWait ALLY_SONETTE,eas_Jump
                nextText $0,ALLY_SONETTE  ; "Hee, hee!  You expect a thief{N}to stay in jail?{W2}"
                nextSingleText $0,ALLY_SONETTE ; "Give me the jewels.{W1}"
                entityActionsWait ALLY_SONETTE
                 moveRight 1
                 moveUp 2
                endActions
                setFacing ALLY_SONETTE,LEFT
                csWait 30
                nextSingleText $FF,255  ; "{NAME;5} searched the tool{N}bag of the Galam Knight.{W1}"
                csWait 40
                setFacing ALLY_SONETTE,DOWN
                setActscriptWait ALLY_SONETTE,eas_Jump
                setActscript ALLY_SONETTE,eas_Jump
                nextSingleText $0,ALLY_SONETTE ; "Yes!  I found one!{W1}"
                nextSingleText $FF,255  ; "{NAME;5} has the Jewel{N}of Light.{W1}"
                setFacing ALLY_SONETTE,LEFT
                csWait 20
                setActscriptWait ALLY_SONETTE,eas_BumpLeft
                shiver 128
                nextSingleText $0,ALLY_SONETTE ; "Where is the other jewel?{W1}"
                shiver 128
                nextText $0,128         ; "K...King Galam...took it into{N}battle.{W2}"
                nextSingleText $0,128   ; "Take the jewel.  You won't{N}have it long.  We'll get it{N}back!{W1}"
                csc_end
