
; ASM FILE data\battles\entries\battle12\cs_battleend.asm :
; 0x4ACC8..0x4ACEC : Enemy defeated cutscene for battle 12
edcs_battle12:  textCursor $9BA
                cameraSpeed $20
                setCameraEntity 128
                nextSingleText $0,128   ; "How can you...defeat...{N}devils?{W1}"
                setCameraEntity ALLY_IAN
                nextText $0,128         ; "Ah!  You have the Jewel of{N}Evil around your neck.{W2}"
                nextSingleText $0,128   ; "It's you, {LEADER}.{N}We've been waiting for you.{W1}"
                setF $2CA               ; Set after winning the cliff battle outside Bedoe, before RUBURAN delivers lines
                csc_end
