
; ASM FILE data\scripting\map\cs_end.asm :
; 0x49058..0x494BC : End cutscene
EndCutscene:    mapLoad 20,19,33
                loadMapEntities ce_492CC
                setActscriptWait ALLY_IAN,eas_Init
                customActscriptWait ALLY_IAN
                 ac_setSpeed 20,20      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 128
                 ac_setSpeed 20,20      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 129
                 ac_setSpeed 20,20      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 130
                 ac_setSpeed 20,20      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 131
                 ac_setSpeed 20,20      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setSprite ALLY_ERIC,MAPSPRITE_NPC_ERIC
                fadeInB
                csWait 60
                setPos ALLY_IAN,25,35,RIGHT
                entityActionsWait ALLY_IAN
                 moveDownRight 1
                 moveRight 1
                endActions
                csWait 30
                entityActionsWait ALLY_IAN
                 moveDown 4
                endActions
                setFacing ALLY_IAN,LEFT
                entityActionsWait 128
                 moveRight 1
                endActions
                entityActionsWait 129
                 moveRight 1
                endActions
                csWait 60
                nod 128
                nod 129
                nod ALLY_IAN
                csWait 40
                entityActionsWait ALLY_IAN
                 moveUp 4
                endActions
                setFacing ALLY_IAN,LEFT
                csWait 80
                setPos 131,25,35,RIGHT
                entityActionsWait 131
                 moveDownRight 1
                endActions
                csWait 40
                nod ALLY_IAN
                csWait 60
                entityActions ALLY_IAN
                 moveDown 4
                endActions
                entityActionsWait 131
                 moveRight 1
                 moveDown 3
                endActions
                setFacing ALLY_IAN,LEFT
                setFacing 131,LEFT
                setActscript 128,eas_Jump
                setActscript 129,eas_Jump
                setActscriptWait 130,eas_Jump
                csWait 40
                setFacing 130,DOWN
                csWait 30
                setFacing 129,UP
                nod 130
                csWait 60
                setFacing 128,UP
                csWait 30
                setFacing 129,DOWN
                nod 128
                csWait 40
                setFacing 129,RIGHT
                csWait 20
                setFacing 128,RIGHT
                csWait 40
                setFacing ALLY_IAN,UP
                csWait 20
                setFacing 131,DOWN
                csWait 60
                setFacing ALLY_IAN,LEFT
                csWait 10
                setFacing 131,LEFT
                csWait 30
                entityActions ALLY_IAN
                 moveLeft 4
                endActions
                entityActionsWait 131
                 moveLeft 4
                endActions
                nod 129
                nod 131
                csWait 60
                setFacing 130,UP
                csWait 30
                setActscriptWait 130,eas_Jump
                csWait 30
                entityActionsWait 130
                 moveUp 1
                endActions
                setFacing 130,DOWN
                setPos ALLY_ERIC,23,37,DOWN
                entityActions ALLY_ERIC
                 moveDown 1
                 moveLeft 2
                 moveDown 2
                endActions
                csWait 20
                setPos ALLY_PAIGE,23,37,DOWN
                entityActions ALLY_PAIGE
                 moveDown 1
                 moveLeft 2
                 moveDown 1
                endActions
                csWait 20
                setPos ALLY_JULIA,23,37,DOWN
                entityActions ALLY_JULIA
                 moveDown 1
                 moveLeft 2
                endActions
                csWait 20
                setPos ALLY_HAWEL,23,37,DOWN
                entityActions ALLY_HAWEL
                 moveDown 1
                 moveLeft 1
                endActions
                csWait 20
                setPos ALLY_RUBURAN,23,37,DOWN
                entityActions ALLY_RUBURAN
                 moveDown 1
                endActions
                setFacing ALLY_ERIC,RIGHT
                csWait 10
                setFacing ALLY_PAIGE,RIGHT
                csWait 10
                setFacing ALLY_JULIA,DOWN
                csWait 10
                setFacing ALLY_HAWEL,DOWN
                setFacing ALLY_IAN,UP
                setFacing 131,UP
                csWait 30
                setFacing ALLY_IAN,LEFT
                setFacing 131,LEFT
                csWait 30
                setFacing ALLY_IAN,UP
                setFacing 131,UP
                csWait 40
                setActscript ALLY_ERIC,eas_Jump
                setActscript ALLY_PAIGE,eas_Jump
                setActscript ALLY_JULIA,eas_Jump
                setActscript ALLY_HAWEL,eas_Jump
                setActscript ALLY_RUBURAN,eas_Jump
                setFacing 131,LEFT
                nod 128
                setFacing ALLY_IAN,LEFT
                csWait 50
                nod ALLY_IAN
                setActscript ALLY_ERIC,eas_Jump
                setActscript ALLY_PAIGE,eas_Jump
                setActscript ALLY_JULIA,eas_Jump
                setActscript ALLY_HAWEL,eas_Jump
                setActscript ALLY_RUBURAN,eas_Jump
                fadeOutB
                csc_end
ce_492CC:       mainEntity 63,63,DOWN
                entity 63,63,DOWN,ALLY_ERIC,eas_Init
                entity 63,63,DOWN,ALLY_PAIGE,eas_Init
                entity 63,63,DOWN,ALLY_JULIA,eas_Init
                entity 63,63,DOWN,ALLY_HAWEL,eas_Init
                entity 63,63,DOWN,ALLY_RUBURAN,eas_Init
                entity 21,40,RIGHT,MAPSPRITE_ASTRAL,eas_Init
                entity 21,39,RIGHT,MAPSPRITE_GRANSEAL_KING,eas_Init
                entity 22,38,RIGHT,MAPSPRITE_MINISTER,eas_Init
                entity 63,63,DOWN,MAPSPRITE_ELIS,eas_Init
                dc.w $FFFF
dms_01:         faceEntity 134,ALLY_IAN
                addNewFollower ALLY_SONETTE
                addNewFollower ALLY_HAWEL
                addNewFollower ALLY_ZYNK
                followEntity ALLY_RUBURAN,ALLY_IAN,2
                moveEntityAboveAnother ALLY_IAN,ALLY_IAN
                csc_end
                setCameraEntity ALLY_IAN
                setActscript ALLY_IAN,eas_ControlledCharacter
cs_4934A:       entityFlashWhite ALLY_IAN,$B4
                jump cs_4934A
                csc_end
                textCursor $142
                csc15 ALLY_MEAD,$1,eas_ControlledCharacter
                showPortrait $0,ALLY_IAN
                setQuake 32770
                setQuake 16386
                loadMapFadeIn 0,13,13
                flashScreenWhite $3C
                csc_end
                flashScreenWhite $3C
                csc_end
                stopEntity ALLY_KNUCKLES
                csc15 ALLY_MEAD,$1,eas_493A2
                waitIdle ALLY_MEAD
                showPortrait $0,ALLY_IAN
                csWait 60
                startEntity ALLY_KNUCKLES
                hidePortrait
                csc_end
eas_493A2:       ac_set1Cb7 $FFFF
                 ac_set1Cb6 $FFFF
                 ac_set1Cb5 $FFFF
                 ac_setSpeed 32,32
                 ac_11 $0
                 ac_12 $FEFF
                 ac_13 $FEFF
                 ac_40
                 ac_02
                 ac_waitDest
                 ac_40
                 ac_wait 1
word_493CA:      ac_branch
                dc.w (eas_ControlledCharacter-word_493CA) & $FFFF
                dc.w 4                  ; 0004 SET TEXT INDEX 142
                dc.w $142
                dc.w $1E                ; 001E HIDE PORTRAIT
                dc.w $A                 ; 000A EXECUTE SUBROUTINE 493EC
                dc.l sub_493EC
                dc.w 1                  ; 0001 DISPLAY SINGLE TEXT BOX WITH VARS 0 4
                dc.w 0
                dc.w 4
                dc.w $14                ; 0014 SET ACTSCRIPT MANUAL 0
                dc.b 0
                dc.b 0
                dc.w 0                  ; 0000 WAIT value $1D
                dc.w $1D
                dc.w 0                  ; 0000 WAIT value $FFFF
                dc.w $FFFF

; =============== S U B R O U T I N E =======================================

sub_493EC:
                
                move.w  #$18A,d0        ; 018A={NAME} found{N}the {ITEM}.{D1}
                jsr     (DisplayText).l 
                moveq   #$78,d0 
                rts

	; End of function sub_493EC

                updateDefeatedAllies
                allyDefeated ALLY_RUBURAN
                allyDefeated ALLY_MEAD
                allyDefeated ALLY_PAIGE
                allyDefeated ALLY_CYNTHIA
                reviveAlly 128
                reviveAlly 150
                allyDefeated ALLY_HAWEL
                showPortrait $0,ALLY_IAN
                csc_end
                setCameraEntity 65535
                entityFlashWhite ALLY_IAN,$28
                hide ALLY_IAN
                setPos ALLY_CYNTHIA,13,23,DOWN
                entityFlashWhite ALLY_CYNTHIA,$28
                animEntityFX ALLY_CYNTHIA,7
                playSound MUSIC_PROMOTED_ATTACK_LOOP
                csc_end
                textCursor $18A
                showPortrait $0,ALLY_IAN
                nextTextVar $0,ALLY_IAN,$0,$3,$A ; "{NAME} found{N}the {ITEM}.{D1}"
                nextSingleTextVar $0,ALLY_IAN,$0,$4 ; "{NAME} received{N}the {ITEM}."
                dc.l $14001D            ; Unused cutscene with parsing mistake here and below, letting it unformatted.
                 ac_wait 32888          ;   
                 ac_setAnimSpeedX2 $4   ;   
                dc.w $142               ;   Unkown command : 142
                 ac_02                  ;   
                 ac_wait 0              ;   
                 ac_wait 65535          ;   
                 ac_setAnimCounter $501 ;   
                 ac_autoFacing $0       ;   
                 ac_11 $1               ;   
                 ac_setSpeed 0,32       ;   
                 ac_12 $0               ;   
                 ac_13 $FFFF            ;   
                 ac_moveRel 0,65535     ;   
                 ac_wait 5              ;   
                 ac_moveRel 0,1         ;   
                 ac_wait 5              ;   
                 ac_moveRel 0,0         ;   
                 ac_wait 5              ;   
                 ac_autoFacing $FFFF    ;   
word_494AC:      ac_branch              ;   
                dc.w (eas_Idle-word_494AC) & $FFFF
                ac_end
                showPortrait $0,ALLY_IAN
                csWait 60
                hidePortrait
                csc_end
