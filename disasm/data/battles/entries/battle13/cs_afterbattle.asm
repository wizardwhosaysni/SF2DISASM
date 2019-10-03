
; ASM FILE data\battles\entries\battle13\cs_afterbattle.asm :
; 0x4ACF8..0x4ADA6 : Cutscene after battle 13
abcs_battle13:  textCursor $9BF
                playSound $FD
                loadMapFadeIn 13,11,8
                loadMapEntities ce_4AD96
                setActscriptWait ALLY_IAN,eas_Init
                setPos ALLY_RUBURAN,15,13,RIGHT
                customActscriptWait ALLY_JULIA
                 ac_setAnimCounter $0   ;   
                 ac_setFlip $1          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                playSound MUSIC_TOWN
                fadeInB
                csWait 50
                nextSingleText $0,ALLY_RUBURAN ; "{NAME;10}, are you OK?  {NAME;10}!{W1}"
                csWait 50
                setActscriptWait ALLY_JULIA,eas_Init
                setActscriptWait ALLY_JULIA,eas_Jump
                headshake ALLY_JULIA
                nextSingleText $C0,ALLY_JULIA ; "Squawk!  They knocked me{N}senseless.{W1}"
                csWait 5
                setActscript ALLY_JULIA,eas_461B6
                csWait 60
                nextText $C0,ALLY_JULIA  ; "Where are the devils?{N}{LEADER}, did you defeat{N}them?{W2}"
                setFacing ALLY_JULIA,UP
                nextSingleText $C0,ALLY_JULIA ; "Nobody in Bedoe can fight{N}like that.  Thank you.{W1}"
                setFacing ALLY_JULIA,LEFT
                nextSingleText $0,ALLY_RUBURAN ; "He's a great fighter.{N}Volcanon doesn't know how{N}good he is!{W1}"
                nextText $C0,ALLY_JULIA  ; "He'll learn.{W2}"
                nextSingleText $C0,ALLY_JULIA ; "Let's go see the KIDDOor and{N}get a raft!{W1}"
                setFacing ALLY_JULIA,UP
                nextSingleText $FF,255  ; "{CLEAR}{LEADER} decides to take{N}{NAME;10} the BDMN with him.{W1}{CLEAR}"
                setF $4B                ; JULIA is a follower
                warp $D,$10,$C,$3
                csc_end
ce_4AD96:       mainEntity 16,12,DOWN
                entity 16,13,DOWN,ALLY_JULIA,eas_Init
                dc.w $FFFF
