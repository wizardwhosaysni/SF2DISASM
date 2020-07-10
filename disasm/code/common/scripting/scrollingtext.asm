; =============== S U B R O U T I N E =======================================

PlayScrollingText:
      
      jmp     *+4(pc)
      trap    #VINT_FUNCTIONS
      dc.w VINTS_CLEAR
      jsr     (WaitForVInt).w
      jsr     (DisableDisplayAndInterrupts).w
      jsr     (ClearVsramAndSprites).w
      jsr     (EnableDisplayAndInterrupts).w
      jsr     (InitDisplay).w
      jsr   ScrollingTextClearPalette2
      jsr     (DisableDisplayAndInterrupts).w
      jsr   LoadEndCreditsFont
      lea     (PLANE_B_LAYOUT).l,a1
      move.w  #$27C0,d1
      moveq   #7,d7
pstloc_1:
      moveq   #5,d6
pstloc_2:
      move.w  d1,(a1)+
      addq.w  #1,d1
      dbf     d6,pstloc_2
      addq.w  #2,d1
      lea     $34(a1),a1
      dbf     d7,pstloc_1
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

pstloc_3:
      movea.l ((CONFMODE_AND_CREDITS_SEQUENCE_POINTER-$1000000)).w,a0
      cmpi.b  #$FF,(a0)
      bne.s   pstloc_3
      jsr   ScrollingTextClearPalette2
      move.w  #$B4,d0
      jsr     (Sleep).w       
      jsr     (FadeOutToBlack).w
      move.w  #$78,d0
      jsr     (Sleep).w       
      rts

   ; End of function PlayScrollingText


; =============== S U B R O U T I N E =======================================

ScrollingTextClearPalette2:
      
      lea     (PALLETE_2_BASE).l,a0
      clr.l   (a0)+
      clr.l   (a0)+
      clr.l   (a0)+
      clr.l   (a0)+
      clr.l   (a0)+
      clr.l   (a0)+
      clr.l   (a0)+
      clr.l   (a0)+
      rts

   ; End of function ClearPalette2


; =============== S U B R O U T I N E =======================================

VInt_ScrollingText:
      
      btst    #0,((FRAME_COUNTER-$1000000)).w
      bne.s   vistloc_1
      subq.w  #1,(HORIZONTAL_SCROLL_DATA+2).l
      jsr     (UpdateVDPHScrollData).w
vistloc_1:
      movea.l ((CONFMODE_AND_CREDITS_SEQUENCE_POINTER-$1000000)).w,a0
      cmpi.b  #$FF,(a0)
      beq.s   vistloc_3
      move.b  ((FRAME_COUNTER-$1000000)).w,d0
      andi.b  #1,d0
      bne.s   vistloc_3
      move.w  (VERTICAL_SCROLL_DATA).l,d0
      andi.w  #$F,d0
      bne.s   vistloc_2
      jsr   stsub_1AC22E
vistloc_2:
      addq.w  #1,(VERTICAL_SCROLL_DATA).l
vistloc_3:
      jsr     (UpdateVDPHScrollData).w
      jsr     (UpdateVDPVScrollData).w
      jsr     (EnableDMAQueueProcessing).w
      rts

   ; End of function VInt_EndCredits


; =============== S U B R O U T I N E =======================================

stsub_1AC22E:
      move.b  (a0)+,d1
      lea     (PLANE_A_MAP_LAYOUT).l,a1
      move.w  (VERTICAL_SCROLL_DATA).l,d0
      lsr.w   #3,d0
      addi.w  #$1C,d0
      andi.w  #$1F,d0
      lsl.w   #6,d0
      adda.w  d0,a1
      movem.l d7/a1,-(sp)
      moveq   #$1F,d7
stloc_1AC250:
      clr.l   (a1)+
      dbf     d7,stloc_1AC250
      movem.l (sp)+,d7/a1
      tst.b   d1
      beq.s   stloc_1AC280
      lsl.w   #1,d1
      adda.w  d1,a1
stloc_1AC262:
      clr.w   d1
      move.b  (a0)+,d1
      beq.w   stloc_1AC280
      subi.w  #$20,d1
      lsl.w   #1,d1
      ori.w   #$C100,d1
      move.w  d1,(a1)
      addq.w  #1,d1
      move.w  d1,$40(a1)
      addq.l  #2,a1
      bra.s   stloc_1AC262
stloc_1AC280:
      move.l  a0,((CONFMODE_AND_CREDITS_SEQUENCE_POINTER-$1000000)).w
      lea     (PLANE_A_MAP_LAYOUT).l,a0
      lea     ($C000).l,a1
      move.w  #$400,d0
      moveq   #2,d1
      jsr     (ApplyVIntVramDMA).w   
      rts

   ; End of function stsub_1AC22E