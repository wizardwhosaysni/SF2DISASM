
; ASM FILE data\battles\global\battleneutralentities.asm :
; 0x448C4..0x4497A : Battle entities which are not force members or enemies
BattleNeutralEntities:
                dc.w 1                  ; [Battle][X][Y][Facing][Sprite][ActScript]
                ;dc.b 7
                ;dc.b 4
                ;dc.b 3
                ;dc.b $72
                ;dc.l eas_Standing
                ;dc.b 7                  ; Then Sir Astral [X][Y][Facing][Sprite][ActScript]
                ;dc.b 6
                ;dc.b 1
                ;dc.b $D1
                ;dc.l eas_Standing
                dc.b 12                  ; Caravan
                dc.b 5
                dc.b DOWN
                dc.b 62
                dc.l eas_Motionless
                dc.w $FFFF              ; FFFF to say "end of definition for this battle"
                dc.l $FFFFFFFF
