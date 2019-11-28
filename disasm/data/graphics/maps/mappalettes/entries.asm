
; ASM FILE data\graphics\maps\mappalettes\entries.asm :
; 0x9494A..0x94B8A : Map palettes
pt_MapPalettes: dc.l MapPalette00
                dc.l MapPalette01
                dc.l MapPalette02
MapPalette00:   incbin "data/graphics/maps/mappalettes/sffc-mappalette00-base.bin"
MapPalette01:   incbin "data/graphics/maps/mappalettes/sffc-mappalette01-map00-shrine.bin"
MapPalette02:   incbin "data/graphics/maps/mappalettes/sffc-mappalette02-map03-bridge.bin"
