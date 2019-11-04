
      align   2
p_IntroText:   dc.l   IntroText

; =============== S U B R O U T I N E =======================================

PlayTextIntro:
      
      jmp     *+4(pc)
      trap    #VINT_FUNCTIONS
      dc.w VINTS_CLEAR
      jsr     (WaitForVInt).w
      jsr     (DisableDisplayAndVInt).w
      jsr     (ClearVsramAndSprites).w
      jsr     (EnableDisplayAndInterrupts).w
      jsr     (InitDisplay).w
      jsr   ScrollingTextClearPalette2
      jsr     (DisableDisplayAndVInt).w
      jsr   LoadEndCreditsFont
      lea     (PLANE_B_LAYOUT).l,a1
      move.w  #$27C0,d1
      moveq   #7,d7
ptiloc_1:
      moveq   #5,d6
ptiloc_2:
      move.w  d1,(a1)+
      addq.w  #1,d1
      dbf     d6,ptiloc_2
      addq.w  #2,d1
      lea     $34(a1),a1
      dbf     d7,ptiloc_1
      lea     (PLANE_B_LAYOUT).l,a0
      lea     ($E000).l,a1
      move.w  #$400,d0
      moveq   #2,d1
      jsr     (ApplyImmediateVramDMA).w   
      trap    #VINT_FUNCTIONS
      dc.w VINTS_CLEAR
      jsr     (EnableDisplayAndInterrupts).w
      clr.w   d6
      jsr     (UpdateForegroundHScrollData).w
      jsr     (UpdateForegroundVScrollData).w
      jsr     (UpdateBackgroundHScrollData).w
      jsr     (UpdateBackgroundVScrollData).w
      jsr     (EnableDMAQueueProcessing).w
      jsr     (FadeInFromBlack).w
      move.l  (p_IntroText).l,((CONFMODE_AND_CREDITS_SEQUENCE_POINTER-$1000000)).w
      trap    #VINT_FUNCTIONS
      dc.w VINTS_ADD
      dc.l VInt_ScrollingText

ptiloc_4:
      movea.l ((CONFMODE_AND_CREDITS_SEQUENCE_POINTER-$1000000)).w,a0
      cmpi.b  #$FF,(a0)
      bne.s   ptiloc_4
      jsr   ScrollingTextClearPalette2
      move.w  #$B4,d0
      jsr     (Sleep).w       
      jsr     (FadeOutToBlack).w
      move.w  #$78,d0
      jsr     (Sleep).w       
      rts

   ; End of function PlayTextIntro


IntroText:   incbin "data/scripting/sffc-introtext.bin"
      align   2
