

; =============== S U B R O U T I N E =======================================

; bookreader suspend screen

BookReaderSuspend:
                
                 
                sndCom  MUSIC_PIANO_THEME
                bsr.w   InitBookReaderSuspendVIntFunctions
                move.w  #$1E,((BLINK_COUNTER-$1000000)).w
                move.w  #6,((word_FFB07C-$1000000)).w
                move.b  #$FF,((byte_FFB082-$1000000)).w
                txt     $F0             ; "That's it for today?{W2}{N}Yes, you had better take a{N}rest now.{N}Come back again.{W1}"
                clsTxt
                ;clr.b   ((byte_FFB082-$1000000)).w
                bsr.w   sub_7CDC
                jsr     j_SuspendGame
                move.w  #$258,d0
loc_7068:
                
                bsr.w   WaitForVInt
                btst    #7,((P1_INPUT-$1000000)).w
                dbne    d0,loc_7068
                sndCom  SOUND_COMMAND_FADE_OUT
                bsr.w   FadeOutToBlack
                trap    #VINT_FUNCTIONS
                dc.w VINTS_CLEAR
                bsr.w   DisableDisplayAndVInt
                move    #$2700,sr
                movea.l (InitStack).w,sp
                movea.l (p_Start).w,a0  
                jmp     (a0)

	; End of function BookReaderSuspend

