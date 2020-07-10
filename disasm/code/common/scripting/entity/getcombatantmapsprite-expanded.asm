
; ASM FILE code\common\scripting\entity\getcombatantmapsprite-expanded.asm :
; Get combatant map sprite index functions -- included when patch Force_Members_Expansion is enabled


; =============== S U B R O U T I N E =======================================

; In: A6 = battle vars stack
; Out: D4 = map sprite index

GetCombatantMapSprite:
                move.w  d0,-(sp)
                move.w  -4(a6),d0
                tst.b   d0
                bmi.s   @Enemy
                bsr.s   GetAllyMapSprite
                bra.s   @Done
                
@Enemy:
                move.w  d1,-(sp)
                jsr     GetEnemyIndex
                clr.w   d4
                move.b  tbl_EnemyMapSprites(pc,d1.w),d4
                move.w  (sp)+,d1
                
@Done:
                move.w  (sp)+,d0
                rts

    ; End of function GetCombatantMapSprite

