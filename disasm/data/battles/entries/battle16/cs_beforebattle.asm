
; ASM FILE data\battles\entries\battle16\cs_beforebattle.asm :
; 0x4AFBE..0x4B1BC : Cutscene before battle 16
bbcs_16:        textCursor $9D1
                loadMapFadeIn 49,9,10
                executeSubroutine csub_4B1CA
                loadMapEntities ce_4B15C
                setActscriptWait ALLY_IAN,eas_Init
                setBlocks 13,4,3,3,0,0
                setBlocks 31,4,3,3,13,4
                cloneEntity 129,130
                cloneEntity 131,132
                cloneEntity 131,133
                cloneEntity 131,134
                cloneEntity 131,135
                cloneEntity 131,136
                cloneEntity 131,137
                cloneEntity 131,138
                setActscriptWait ALLY_RUBURAN,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                setPos ALLY_RUBURAN,15,15,LEFT
                setPos FOLLOWER_B,13,14,DOWN
                fadeInB
                csWait 30
                csWait 5
                setActscript ALLY_IAN,eas_461B6
                csWait 5
                setActscript ALLY_RUBURAN,eas_461B6
                csWait 5
                setActscript FOLLOWER_B,eas_461B6
                csWait 120
                entityActionsWait ALLY_RUBURAN
                 moveRight 1
                endActions
                csWait 20
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_RUBURAN,DOWN
                setFacing FOLLOWER_B,DOWN
                nextSingleText $C0,ALLY_RUBURAN ; "Huh?  The raft stopped!{W1}"
                setFacing ALLY_IAN,LEFT
                setFacing ALLY_RUBURAN,LEFT
                setFacing FOLLOWER_B,RIGHT
                nextSingleText $0,FOLLOWER_B ; "Did the water stop flowing?{N}What's happening?{W1}"
                csWait 30
                setFacing ALLY_RUBURAN,UP
                csWait 30
                setActscriptWait ALLY_RUBURAN,eas_Jump
                setActscriptWait ALLY_RUBURAN,eas_Jump
                nextSingleText $C0,ALLY_RUBURAN ; "Wow!{D1}  What's that?{W1}"
                setFacing ALLY_IAN,UP
                setFacing FOLLOWER_B,UP
                csWait 20
                entityActionsWait ALLY_RUBURAN
                 moveUp 2
                endActions
                nextSingleText $C0,ALLY_RUBURAN ; "{LEADER}, look there!{W1}"
                setCamDest 9,0
                playSound SFX_BIG_DOOR_RUMBLE
                setQuake 32770
                playSound SFX_BIG_DOOR_RUMBLE
                csWait 30
                setActscriptWait 128,eas_46172
                customActscriptWait 128
                 ac_setSpeed 16,16      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setPos 128,14,5,DOWN
                entityActionsWait 128
                 moveUp 2
                endActions
                setBlocks 0,0,3,3,13,4
                setPos 129,12,4,DOWN
                setPos 130,16,4,DOWN
                playSound SFX_BIG_DOOR_RUMBLE
                animEntityFX 129,5
                setPos 131,13,2,DOWN
                setPos 132,15,2,DOWN
                setPos 133,17,3,DOWN
                setPos 134,11,4,DOWN
                setPos 135,12,5,DOWN
                setPos 136,13,5,DOWN
                setPos 137,16,5,DOWN
                setPos 138,14,6,DOWN
                animEntityFX 131,5
                setQuake 16386
                nextSingleText $C0,ALLY_RUBURAN ; "M...{D1}monster!{N}It appeared from the river!{W1}"
                nextText $0,FOLLOWER_B  ; "It must be the monster they{N}mentioned in Polca.{W2}"
                nextSingleText $0,FOLLOWER_B ; "Watch out!{W1}"
                csWait 60
                csc_end
ce_4B15C:       mainEntity 15,14,RIGHT
                entity 63,63,DOWN,MAPSPRITE_KRAKEN,eas_Init
                entity 63,63,DOWN,MAPSPRITE_KRAKEN_ARM,eas_Init
                entity 63,63,DOWN,MAPSPRITE_KRAKEN_ARM,eas_Init
                entity 63,63,DOWN,MAPSPRITE_KRAKEN_LEG,eas_Init
                entity 63,63,DOWN,MAPSPRITE_KRAKEN_LEG,eas_Init
                entity 63,63,DOWN,MAPSPRITE_KRAKEN_LEG,eas_Init
                entity 63,63,DOWN,MAPSPRITE_KRAKEN_LEG,eas_Init
                entity 63,63,DOWN,MAPSPRITE_KRAKEN_LEG,eas_Init
                entity 63,63,DOWN,MAPSPRITE_KRAKEN_LEG,eas_Init
                entity 63,63,DOWN,MAPSPRITE_KRAKEN_LEG,eas_Init
                entity 63,63,DOWN,MAPSPRITE_KRAKEN_LEG,eas_Init
                dc.w $FFFF
