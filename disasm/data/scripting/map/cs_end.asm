
; ASM FILE data\scripting\map\cs_end.asm :
; 0x49058..0x494BC : End cutscene
EndCutscene:    mapLoad 20,19,33
                
                fadeOutB
                csc_end
                
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
