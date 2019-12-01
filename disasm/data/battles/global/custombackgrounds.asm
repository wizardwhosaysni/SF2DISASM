
; ASM FILE data\battles\global\custombackgrounds.asm :
; 0x1FA8A..0x1FAB8 : Battle custom backgrounds table
CustomBackgrounds:
                dc.b $F                ; One byte per battle entry : same background index for all battlefield, or $FF for background depending on map block.
                dc.b $F
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                
                align 2
