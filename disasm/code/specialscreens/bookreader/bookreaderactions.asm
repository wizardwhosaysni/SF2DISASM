

; =============== S U B R O U T I N E =======================================

BookReaderNew:
                
                 
                txt     $DE             ; "What should I call you?{W2}"
                move.b  (SAVE_FLAGS).l,d2
                andi.w  #3,d2
                eori.w  #3,d2
                lsl.w   #1,d2
                btst    #1,d2
                beq.s   loc_7424
                moveq   #1,d0
                bra.s   loc_7426
loc_7424:
                
                moveq   #2,d0
loc_7426:
                
                moveq   #1,d1
loc_7428:
                
                jsr     j_BookReaderMainMenu
                tst.w   d0
                bmi.s   byte_73C2       
                subq.w  #1,d0
                move.w  d0,((SAVE_SLOT_INDEX-$1000000)).w
                jsr     j_NewGame
                clsTxt
                clr.w   d0
                jsr     j_NameCharacter
                btst    #7,(SAVE_FLAGS).l ; "Game completed" bit
                beq.w   byte_7476       
                btst    #INPUT_A_START,((P1_INPUT-$1000000)).w
                beq.w   byte_7476       
                moveq   #1,d0
                moveq   #$1B,d7
loc_7464:
                
                jsr     j_NameCharacter
loc_746A:
                
                addq.w  #1,d0
                cmpi.w  #6,d0
                beq.s   loc_746A
                dbf     d7,loc_7464
byte_7476:
                
                txt     $DF             ; "{NAME;0}....{N}Nice name, huh?{W2}"
                bsr.w   CheatModeConfiguration
                txt     $E8             ; "I'll let you decide the{N}difficulty level at this time."
                clr.w   d0
                moveq   #3,d1
                moveq   #$F,d2
                jsr     j_BookReaderMainMenu
                tst.w   d0
                bpl.s   loc_7494
                clr.w   d0
loc_7494:
                
                btst    #0,d0
                beq.s   loc_749E
                setFlg  $4E             ; Difficulty bit 0
loc_749E:
                
                btst    #1,d0
                beq.s   loc_74A8        
                setFlg  $4F             ; Difficulty bit 1
loc_74A8:
                
                addi.w  #$E9,d0 ; HARDCODED text index for difficulty choice reactions
                bsr.w   DisplayText     
                txt     $E0             ; "Now, good luck!{N}You have no time to waste!{W1}"
loc_74B4:
                
                move.w  ((SAVE_SLOT_INDEX-$1000000)).w,d0
                move.b  #1,((CURRENT_MAP-$1000000)).w
                move.b  #0,((EGRESS_MAP_INDEX-$1000000)).w
                bsr.w   SaveGame
                disableSram
                clsTxt
                setFlg  $191
                move.b  #1,d0           ; HARDCODED new game starting map
                move.w  #8,d1 ; HARDCODED main entity starting X
                move.w  #8,d2           ; HARDCODED main entity starting Y
                move.w  #3,d3           ; HARDCODED main entity starting facing
                moveq   #1,d4
loc_74DE:
                
                bsr.w   FadeOutToBlack  ; added fade out to manage VDP layout glitch when game intro was played
                bra.w   MainLoop        

	; End of function BookReaderNew


; =============== S U B R O U T I N E =======================================

BookReaderLoad:
                
                 
                txt     $E1             ; "By the way, who are you?"
                move.b  (SAVE_FLAGS).l,d2
                andi.w  #3,d2
                lsl.w   #1,d2
                btst    #1,d2
                beq.s   loc_74FC
                moveq   #1,d0
                bra.s   loc_74FE
loc_74FC:
                
                moveq   #2,d0
loc_74FE:
                
                moveq   #2,d1
                jsr     j_BookReaderMainMenu
                tst.w   d0
                bmi.w   byte_73C2       
                subq.w  #1,d0
                move.w  d0,((SAVE_SLOT_INDEX-$1000000)).w
                bsr.w   LoadGame
                disableSram
                txt     $E2             ; "{NAME;0}, yes!  I knew it!{W2}"
                bsr.w   CheatModeConfiguration
                txt     $E0             ; "Now, good luck!{N}You have no time to waste!{W1}"
                clsTxt
                clr.b   ((DEACTIVATE_WINDOW_HIDING-$1000000)).w
                chkFlg  $58             ; checks if a game has been saved for copying purposes ? (or if saved from battle?)
                beq.s   loc_753A                
                jsr     j_BattleLoop
                bra.w   loc_75C8        
loc_753A:
                
                clr.w   d0
                move.b  ((CURRENT_MAP-$1000000)).w,d0
                jsr     GetSavePointForMap(pc)
                nop
                moveq   #$FFFFFFFF,d4
                bra.w   loc_75E0        

	; End of function BookReaderLoad


; =============== S U B R O U T I N E =======================================

BookReaderCopy:
                
                 
                txt     $E3             ; "Copy?  Really?"
                jsr     j_YesNoChoiceBox
                tst.w   d0
                bne.w   byte_73C2       
                move.b  (SAVE_FLAGS).l,d0
                andi.w  #3,d0
                subq.w  #1,d0
                bsr.w   CopySave
                txt     $E4             ; "Hee, hee!  It's done.{W2}"
                bra.w   byte_73C2       

	; End of function BookReaderCopy


; =============== S U B R O U T I N E =======================================

BookReaderDel:
                
                 
                txt     $E5             ; "Delete which one?"
                move.b  (SAVE_FLAGS).l,d2
                andi.w  #3,d2
                lsl.w   #1,d2
                btst    #1,d2
                beq.s   loc_758E
                moveq   #1,d0
                bra.s   loc_7590
loc_758E:
                
                moveq   #2,d0
loc_7590:
                
                moveq   #2,d1
                jsr     j_BookReaderMainMenu
                tst.w   d0
                bmi.w   byte_73C2       
                subq.w  #1,d0
                move.w  d0,((SAVE_SLOT_INDEX-$1000000)).w
                txt     $E6             ; "Delete?  Are you sure?"
                jsr     j_YesNoChoiceBox
                tst.w   d0
                bne.w   byte_73C2       
                move.w  ((SAVE_SLOT_INDEX-$1000000)).w,d0
                bsr.w   ClearSaveSlotFlag
                txt     $E7             ; "Hee, hee!  It's gone!{W2}"
                bra.w   byte_73C2       

	; End of function BookReaderDel

