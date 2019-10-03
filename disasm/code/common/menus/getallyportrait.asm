
; ASM FILE code\common\menus\getallyportrait.asm :
; 0x15736..0x15772 : Get ally portrait index function

; =============== S U B R O U T I N E =======================================

; In: D0 = ally or portrait index (depending on caller function)
; Out: D0 = adjusted portrait index

GetAllyPortrait:
                
                move.w  d1,-(sp)
                cmpi.b  #COM_ALLIES_NUM,d0
                bhi.w   @Done
                jsr     j_GetClass      
                cmpi.b  #CLASS_HERO,d1  ; stupid CMP mechanism for alternate portraits, need to improve that one day
                bne.s   @NotHero        ; HARDCODED promotion classes which trigger new portraits
                moveq   #PORTRAIT_IAN_PROMO,d0
@NotHero:
                
                cmpi.b  #CLASS_PHNX,d1
                bne.s   @NotPhnx
                moveq   #PORTRAIT_RUBURAN_PROMO,d0
@NotPhnx:
                
                cmpi.b  #CLASS_WFBR,d1
                bne.s   @NotWfbr
                moveq   #PORTRAIT_SYLVIA_PROMO,d0
@NotWfbr:
                
                cmpi.b  #CLASS_NINJ,d1
                bne.s   @NotNinj
                moveq   #PORTRAIT_SONETTE_PROMO,d0
@NotNinj:
                
                cmpi.b  #CLASS_MNST,d1
                bne.s   @Done
                moveq   #PORTRAIT_CYNTHIA_PROMO,d0
@Done:
                
                move.w  (sp)+,d1
                rts

	; End of function GetAllyPortrait

