
; ASM FILE code\specialscreens\title\graphics.asm :
; 0x1002BE..0x101EE0 : Title Screen Graphics
plt_TitleScreen:incbin "data/graphics/specialscreens/titlescreen/sffc-titlepalettes.bin"
TitleScreenTiles:
                incbin "data/graphics/specialscreens/titlescreen/sffc-titletiles.bin"
TitleScreenLayoutA:
                incbin "data/graphics/specialscreens/titlescreen/sffc-titlelayoutA.bin"
TitleScreenLayoutB:
                incbin "data/graphics/specialscreens/titlescreen/sffc-finalconflict-spritelayout.bin"
