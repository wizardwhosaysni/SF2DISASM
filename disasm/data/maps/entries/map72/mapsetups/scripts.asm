
; ASM FILE data\maps\entries\map72\mapsetups\scripts.asm :
; 0x4FFDA..0x50312 : 
cs_4FFDA:       textCursor $D0D
                newEntity ALLY_ERIC,63,63,UP,ALLY_ERIC
                newEntity 128,63,63,LEFT,MAPSPRITE_OBJECT4
                newEntity 129,63,63,LEFT,MAPSPRITE_EFFECT3
                setActscriptWait ALLY_RUBURAN,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                setActscriptWait FOLLOWER_A,eas_Init
                stopEntity 128
                stopEntity 129
                setActscriptWait 128,eas_46172
                setActscriptWait 129,eas_46172
                setCamDest 21,33
                setDest 32798,27,39
                setDest 32799,28,37
                setDest 32775,25,37
                setDest ALLY_IAN,26,37
                csWait 60
                setPos 128,27,36,LEFT
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                setFacing FOLLOWER_B,UP
                csWait 50
                setFacing FOLLOWER_B,DOWN
                nextSingleText $0,FOLLOWER_B ; "{NAME;11}, {NAME;11}!{W1}"
                nextSingleText $0,ALLY_ERIC ; "Yes?{W1}"
                setPos ALLY_ERIC,27,39,RIGHT
                setActscriptWait ALLY_ERIC,eas_4536C
                csWait 3
                setFacing ALLY_ERIC,UP
                nextText $0,FOLLOWER_B  ; "You know about devices like{N}this, right?{W2}"
                nextSingleText $0,FOLLOWER_B ; "{LEADER} has a cannon and{N}some dynamite here.  Can you{N}remove those rocks?{W1}"
                nextSingleText $0,ALLY_ERIC ; "Ah...OK, let me try.{W1}"
                entityActionsWait ALLY_ERIC
                 moveUp 1
                 moveLeft 2
                endActions
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_RUBURAN,DOWN
                setFacing ALLY_ERIC,UP
                nod ALLY_IAN
                nextSingleText $FF,255  ; "{NAME;11} gets the dynamite{N}from {LEADER}.{W1}"
                entityActionsWait ALLY_ERIC
                 moveRight 1
                 moveUp 1
                endActions
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                setFacing FOLLOWER_B,UP
                nextSingleText $0,ALLY_ERIC ; "Stand back.  Ready?{W1}"
                setCamDest 21,32
                setActscriptWait 128,eas_BumpDown
                setPos 129,27,35,LEFT
                customActscriptWait 129
                 ac_setSpeed 80,80      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 129
                 moveUp 2
                endActions
                setQuake 3
                setSprite 129,MAPSPRITE_FLAME1
                startEntity 129
                setActscript 129,eas_AnimSpeedx2
                playSound SFX_BATTLEFIELD_DEATH
                csWait 40
                setBlocks 0,0,1,2,27,33
                hide 129
                setQuake 0
                csWait 60
                entityActionsWait FOLLOWER_B
                 moveUp 1
                endActions
                nextSingleText $0,FOLLOWER_B ; "Perfect!  We can now go to{N}North Parmecia.{W1}"
                csWait 40
                setActscriptWait ALLY_ERIC,eas_Jump
                nextSingleText $0,ALLY_ERIC ; "Wow!  This cannon is great!{W1}"
                setFacing ALLY_RUBURAN,RIGHT
                setFacing ALLY_IAN,RIGHT
                setFacing FOLLOWER_B,LEFT
                setActscript ALLY_RUBURAN,eas_JumpLeft
                setActscript ALLY_IAN,eas_JumpLeft
                setActscriptWait FOLLOWER_B,eas_JumpRight
                setPos ALLY_ERIC,26,36,RIGHT
                csWait 25
                setPos ALLY_ERIC,27,37,UP
                csWait 25
                setPos ALLY_ERIC,28,36,LEFT
                csWait 25
                setPos ALLY_ERIC,27,37,UP
                csWait 25
                setPos ALLY_ERIC,26,36,RIGHT
                csWait 25
                setPos ALLY_ERIC,27,37,UP
                csWait 25
                nextSingleText $0,ALLY_ERIC ; "I can attend the battles{N}with this weapon.{W1}"
                setFacing ALLY_ERIC,LEFT
                nextText $0,ALLY_ERIC  ; "{LEADER}, do you need{N}this any more?{W2}"
                nextText $0,ALLY_ERIC  ; "KIDDO I use it?  Huh?{W2}"
                nextSingleText $0,ALLY_ERIC ; "Wow, now I can fight along{N}side you!{W1}"
                join ALLY_ERIC
                nextSingleText $0,ALLY_ERIC ; "Please call me when you{N}need my help.{W1}"
                setActscriptWait 128,eas_46172
                entityActions 128
                 moveDown 2
                endActions
                entityActionsWait ALLY_ERIC
                 moveDown 1
                endActions
                entityActions ALLY_ERIC
                 moveDown 1
                endActions
                csWait 3
                setActscript ALLY_ERIC,eas_452BA
                csWait 3
                entityActions 128
                 moveDown 1
                endActions
                csWait 3
                setActscript 128,eas_452BA
                csWait 3
                hide ALLY_ERIC
                hide 128
                entityActionsWait FOLLOWER_B
                 moveDown 1
                 moveLeft 2
                endActions
                nextSingleText $0,FOLLOWER_B ; "{NAME;11} is hooked.{N}Ha, ha!{W1}"
                setFacing FOLLOWER_B,DOWN
                nextSingleText $0,FOLLOWER_B ; "OK, {LEADER}.  Let's go{N}to North Parmecia!{W1}"
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_RUBURAN,DOWN
                setActscript ALLY_IAN,eas_Jump
                setActscriptWait ALLY_RUBURAN,eas_Jump
                followEntity FOLLOWER_A,ALLY_IAN,2
                followEntity ALLY_RUBURAN,FOLLOWER_A,1
                followEntity FOLLOWER_B,FOLLOWER_A,3
                setStoryFlag $19        ; Battle 25 unlocked
                csc_end
cs_5023E:       textCursor $D1D
                setActscriptWait ALLY_RUBURAN,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                setActscriptWait FOLLOWER_A,eas_Init
                setCamDest 21,33
                setDest 32798,27,39
                setDest 32799,28,37
                setDest 32775,25,37
                setDest ALLY_IAN,26,37
                waitIdle FOLLOWER_A
                waitIdle FOLLOWER_B
                waitIdle ALLY_RUBURAN
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                setFacing FOLLOWER_B,UP
                csWait 50
                setFacing ALLY_IAN,RIGHT
                csWait 30
                setFacing FOLLOWER_B,LEFT
                nod ALLY_IAN
                shiver FOLLOWER_B
                setFacing ALLY_RUBURAN,RIGHT
                csWait 20
                nextSingleText $0,FOLLOWER_B ; "What?!  You forgot to bring{N}the {ITEM} with you?{N}{LEADER}, are you serious?{W2}"
                stopEntity ALLY_IAN
                setSize ALLY_IAN,22
                csWait 10
                setSize ALLY_IAN,20
                csWait 10
                setSize ALLY_IAN,18
                entityActionsWait FOLLOWER_B
                 moveLeft 1
                endActions
                setActscriptWait FOLLOWER_B,eas_Jump
                setActscriptWait FOLLOWER_B,eas_Jump
                nextSingleText $0,FOLLOWER_B ; "You fool!  Go back and{N}bring it here!{W1}"
                setActscriptWait ALLY_IAN,eas_Init
                startEntity ALLY_IAN
                followEntity FOLLOWER_A,ALLY_IAN,2
                followEntity ALLY_RUBURAN,FOLLOWER_A,1
                followEntity FOLLOWER_B,FOLLOWER_A,3
                csc_end
