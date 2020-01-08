
; ASM FILE data\battles\global\custombackgrounds.asm :
; 0x1FA8A..0x1FAB8 : Battle custom backgrounds table
CustomBackgrounds:
                dc.b $FF                ; One byte per battle entry : same background index for all battlefield, or $FF for background depending on map block.
                dc.b $07
                dc.b $08
                dc.b $FF
                dc.b $09
                dc.b $0A
                dc.b $0B
                dc.b $0A
                dc.b $0C
                dc.b $FF
                dc.b $08
                dc.b $0D
                dc.b $00
                dc.b $FF
                dc.b $0E
                dc.b $0F
                dc.b $10
                dc.b $FF
                dc.b $11
                dc.b $FF
                dc.b $12
                dc.b $13
                dc.b $13
                
                align 2
