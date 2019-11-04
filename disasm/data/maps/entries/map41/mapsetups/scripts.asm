
; ASM FILE data\maps\entries\map41\mapsetups\scripts.asm :
; 0x5F4B8..0x5F630 : 
cs_5F4B8:       setActscriptWait ALLY_IAN,eas_Init
                setActscriptWait ALLY_RUBURAN,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                csWait 40
                playSound SFX_BIG_DOOR_RUMBLE
                setQuake 3
                csWait 40
                playSound SFX_BIG_DOOR_RUMBLE
                csWait 5
                setActscript ALLY_IAN,eas_461B6
                csWait 5
                setActscript ALLY_RUBURAN,eas_461B6
                csWait 5
                setActscript FOLLOWER_B,eas_461B6
                playSound SFX_BIG_DOOR_RUMBLE
                csWait 40
                playSound SFX_BIG_DOOR_RUMBLE
                csWait 40
                playSound SFX_BIG_DOOR_RUMBLE
                csWait 40
                playSound SFX_BIG_DOOR_RUMBLE
                setBlocks 13,6,3,5,5,4
                playSound SFX_BLAST_SPELL
                flashScreenWhite $4
                playSound SFX_BIG_DOOR_RUMBLE
                setFacing ALLY_IAN,UP
                setFacing ALLY_RUBURAN,UP
                setFacing FOLLOWER_B,UP
                csWait 60
                setBlocks 13,0,3,5,5,4
                playSound SFX_BLAST_SPELL
                flashScreenWhite $4
                playSound SFX_BIG_DOOR_RUMBLE
                setQuake 16387
                csWait 40
                setActscript ALLY_IAN,eas_Jump
                setActscript ALLY_RUBURAN,eas_Jump
                setActscriptWait FOLLOWER_B,eas_Jump
                setActscript ALLY_IAN,eas_Jump
                setActscript ALLY_RUBURAN,eas_Jump
                setActscriptWait FOLLOWER_B,eas_Jump
                csWait 50
                followEntity ALLY_RUBURAN,ALLY_IAN,2
                followEntity FOLLOWER_B,ALLY_RUBURAN,2
                csc_end
cs_5F594:       newEntity ALLY_LEMON,6,15,UP,MAPSPRITE_TAROS
                textCursor $DB9
                nextSingleText $0,ALLY_LEMON ; "Sir Astral!  {LEADER}!{W1}"
                setDest FOLLOWER_B,6,10
                setFacing ALLY_IAN,DOWN
                setFacing ALLY_RUBURAN,DOWN
                setFacing FOLLOWER_B,DOWN
                setCamDest 1,6
                nextSingleText $0,ALLY_LEMON ; "{LEADER}, wait!{W1}"
                entityActionsWait ALLY_LEMON
                 moveUp 4
                endActions
                nextSingleText $0,ALLY_LEMON ; "KIDDO I join your force?{W1}"
                csWait 30
                setFacing FOLLOWER_B,UP
                csWait 30
                nextSingleText $80,FOLLOWER_B ; "Well...{W1}"
                setFacing FOLLOWER_B,DOWN
                nextText $0,ALLY_LEMON  ; "You can trust me.{N}I'm a born fighter.{W2}"
                nextText $0,ALLY_LEMON  ; "As you know, I want to die.{W2}"
                nextSingleText $0,ALLY_LEMON ; "I will die fighting for your{N}cause, if you let me.{W1}"
                csWait 40
                setFacing FOLLOWER_B,UP
                nextSingleText $80,FOLLOWER_B ; "He's a hero in Galam.{N}I think he should join us.{W1}"
                nod ALLY_RUBURAN
                nod ALLY_IAN
                setFacing FOLLOWER_B,DOWN
                csWait 20
                nod FOLLOWER_B
                nextSingleText $0,FOLLOWER_B ; "{NAME;28}, please come{N}with us.  You'll be a great{N}help.{W1}"
                join ALLY_LEMON
                setActscriptWait ALLY_LEMON,eas_Jump
                setActscriptWait ALLY_LEMON,eas_Jump
                nextSingleText $0,ALLY_LEMON ; "Oh, thank you!  I know I can{N}take the King of the Devils!{W1}"
                setFacing FOLLOWER_B,UP
                followEntity ALLY_LEMON,FOLLOWER_B,2
                csc_end
