
; ASM FILE code\gameflow\special\debugmodebattleactions.asm :
; 0x9A9A..0x9B92 : Debug mode battle actions

; =============== S U B R O U T I N E =======================================

DebugModeActionSelect:
                
                movem.l d0-d3/a0,-(sp)
                lea     ((BATTLESCENE_ACTION_TYPE-$1000000)).w,a0
                moveq   #0,d0
                moveq   #0,d1
                moveq   #6,d2
                jsr     j_NumberPrompt
                cmpi.b  #$FF,d0
                beq.w   loc_9B3E
                move.w  d0,(a0)+
                add.w   d0,d0
                move.w  rjt_DebugModeBattleActions(pc,d0.w),d0
                jmp     rjt_DebugModeBattleActions(pc,d0.w)
rjt_DebugModeBattleActions:
                
                dc.w loc_9AD0-rjt_DebugModeBattleActions
                dc.w loc_9ADA-rjt_DebugModeBattleActions
                dc.w loc_9B06-rjt_DebugModeBattleActions
                dc.w loc_9B2C-rjt_DebugModeBattleActions
                dc.w loc_9B30-rjt_DebugModeBattleActions
                dc.w loc_9B34-rjt_DebugModeBattleActions
                dc.w loc_9B38-rjt_DebugModeBattleActions
loc_9AD0:
                
                bsr.w   DebugModeSelectTargetEnemy ; attack
                move.w  d0,(a0)+
                bra.w   loc_9B3E
loc_9ADA:
                
                moveq   #1,d0           ; use magic
                moveq   #1,d1
                moveq   #SPELLENTRY_LEVELS_NUMBER,d2
                jsr     j_NumberPrompt
                move.w  d0,d3
                subq.w  #1,d3
                lsl.w   #6,d3
                moveq   #0,d0
                moveq   #0,d1
                moveq   #$2A,d2 
                jsr     j_NumberPrompt
                add.w   d3,d0
                move.w  d0,(a0)+
                bsr.w   DebugModeSelectTargetEnemy
                move.w  d0,(a0)+
                bra.w   loc_9B3E
loc_9B06:
                
                moveq   #0,d0           ; use item
                moveq   #0,d1
                moveq   #$7F,d2 
                jsr     j_NumberPrompt
                move.w  d0,(a0)+
                bsr.w   DebugModeSelectTargetEnemy
                move.w  d0,(a0)+
                moveq   #0,d0
                moveq   #0,d1
                moveq   #3,d2
                jsr     j_NumberPrompt
                move.w  d0,(a0)+
                bra.w   loc_9B3E
loc_9B2C:
                
                bra.w   loc_9B3E
loc_9B30:
                
                bra.w   loc_9B3E
loc_9B34:
                
                bra.w   loc_9B3E
loc_9B38:
                
                move.b  #BATTLE_VERSUS_PRISM_FLOWERS,((CURRENT_BATTLE-$1000000)).w 
                                                        ; use prism laser
loc_9B3E:
                
                movem.l (sp)+,d0-d3/a0
                rts

    ; End of function DebugModeActionSelect


; =============== S U B R O U T I N E =======================================

DebugModeSelectTargetEnemy:
                
                move.l  #COMBATANT_ENEMIES_START,d0
                moveq   #0,d1
                move.w  #COMBATANT_ENEMIES_END,d2
                jsr     j_NumberPrompt
                rts

    ; End of function DebugModeSelectTargetEnemy


; =============== S U B R O U T I N E =======================================

DebugModeSelectHits:
                
                movem.l d0/a0-a6,-(sp)
                jsr     j_YesNoPrompt
                tst.w   d0
                seq     -BCSTACK_OFFSET_DEBUGDODGE(a2)
                jsr     j_YesNoPrompt
                tst.w   d0
                seq     -BCSTACK_OFFSET_DEBUGCRIT(a2)
                jsr     j_YesNoPrompt
                tst.w   d0
                seq     -BCSTACK_OFFSET_DEBUGDOUBLE(a2)
                jsr     j_YesNoPrompt
                tst.w   d0
                seq     -BCSTACK_OFFSET_DEBUGCOUNTER(a2)
                movem.l (sp)+,d0/a0-a6
                rts

    ; End of function DebugModeSelectHits

