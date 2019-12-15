

abcs_battle22:   
                loadMapFadeIn 22,6,8
                fadeInB
                setF $1F4+22
                setF $190+0
                yesNo
                sndCom  MUSIC_PIANO_THEME
                ;yesNo
                ;executeSubroutine PlayEndCredits
                ;yesNo
                
                ; currently freezing the game, to fix and obtain a clean game reset first.
                executeSubroutine abcs_battle22_EndGame
                csc_end                  
                
; =============== S U B R O U T I N E =======================================

abcs_battle22_EndGame:
                
                enableSram              
                bset    #7,(SAVE_FLAGS).l
                disableSram
                
                ; removed whitch end animation coming from EndGame function model
                
                moveq   #$78,d0 
                jsr     (Sleep).w       
                move.b  #1,((FADING_SETTING-$1000000)).w
                clr.w   ((FADING_TIMER-$1000000)).w
                clr.b   ((FADING_POINTER-$1000000)).w
                move.b  ((FADING_COUNTER_MAX-$1000000)).w,((FADING_COUNTER-$1000000)).w
                move.b  #2,((FADING_PALETTE_BITMAP-$1000000)).w
                move.w  #$12C,d0
                jsr     (Sleep).w       
                sndCom  SOUND_COMMAND_FADE_OUT
                move.w  #$2A30,d0       ; wait for 3 minutes
                jsr     (Sleep).w       
                txt     $1D1            ; "And more...{W1}"
                clsTxt
                move.b  #3,((FADING_COUNTER_MAX-$1000000)).w
                jsr     (FadeOutToBlack).w
                lea     (PALETTE_1_BASE).l,a0
                moveq   #$1F,d7
@loc_27C2C:
                
                clr.l   (a0)+
                dbf     d7,@loc_27C2C
                jsr     j_ClearEntities
                setFlg  $190            ; Battle 0 unlocked
                move.w  #$3F,d0 
                jsr     (CheckBattle).w 
                move.w  d7,d1
                jsr     BattleLoop      
                jsr     (FadeOutToWhite).w
                trap    #VINT_FUNCTIONS
                dc.w VINTS_CLEAR
                jsr     (DisableDisplayAndVInt).w
                move    #$2700,sr
                movea.l (InitStack).w,sp
                movea.l (p_Start).w,a0  
                jmp     (a0)            ; reset

	; End of function EndGame                 
