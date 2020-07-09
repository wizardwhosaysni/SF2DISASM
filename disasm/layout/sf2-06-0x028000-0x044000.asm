
; GAME SECTION 06 :
; 0x028000..0x044000 : Fonts, Menu Tiles, Text Decoding Functions, SEGA Logo, Game Staff, Conf/Debug modes, End Kiss Sequence, Text Huffman Trees, Textbanks
; FREE SPACE : 6681 bytes.


p_pt_TextBanks: dc.l pt_TextBanks
j_InitDecoder:                
                jmp     InitDecoder(pc) 
j_HuffmanDecode:                
                jmp     HuffmanDecode(pc)
p_VariableWidthFont:
                dc.l VariableWidthFont
p_MainMenuTiles:dc.l MenuTiles_Uncompressed
p_MenuTiles_Item:
                dc.l MenuTiles_Item
p_MenuTiles_BattleField:
                dc.l MenuTiles_BattleField
p_Menutiles_Church:
                dc.l MenuTiles_Church
p_MenuTiles_Shop:
                dc.l MenuTiles_Shop
p_MenuTiles_Caravan:
                dc.l MenuTiles_Caravan
p_MenuTiles_Depot:
                dc.l MenuTiles_Depot
p_MenuTiles_YesNo:
                dc.l MenuTiles_YesNo
p_plt_WitchChoice:
                dc.l plt_WitchChoice
p_WitchBubbleAnimation:
                dc.l WitchBubbleAnimation
p_SpeechBalloonTiles:
                dc.l SpeechBalloonTiles
j_DisplaySegaLogo:                
                jmp     DisplaySegaLogo(pc)
p_GameStaff:    dc.l GameStaff
j_EndKissPictureSequence:                
                jmp     EndKissPictureSequence(pc)
j_LoadTitleScreenFont:                
                jmp     LoadTitleScreenFont(pc)
                include "code\specialscreens\segalogo\segalogo.asm"    ; SEGA logo functions
VariableWidthFont:
                incbin "data/graphics/tech/fonts/variablewidthfont.bin"
MenuTiles_Uncompressed:
                incbin "data/graphics/tech/menus/mainmenutiles.bin" ; uncompressed
MenuTiles_Item: incbin "data/graphics/tech/menus/menutilesitem.bin"
MenuTiles_BattleField:
                incbin "data/graphics/tech/menus/menutilesbattlefield.bin"
MenuTiles_Church:
                incbin "data/graphics/tech/menus/menutileschurch.bin"
MenuTiles_Shop: incbin "data/graphics/tech/menus/menutilesshop.bin"
MenuTiles_Caravan:
                incbin "data/graphics/tech/menus/menutilescaravan.bin"
MenuTiles_Depot:incbin "data/graphics/tech/menus/menutilesdepot.bin"
MenuTiles_YesNo:incbin "data/graphics/tech/menus/menutilesyesno.bin"
plt_WitchChoice:incbin "data/graphics/specialscreens/witchscreen/witchchoicepalette.bin"
WitchBubbleAnimation:
                incbin "data/graphics/specialscreens/witchscreen/witchbubbleanimation.bin"
SpeechBalloonTiles:
                incbin "data/graphics/specialscreens/witchscreen/speechballoontiles.bin"
                include "code\specialscreens\endkiss\endkissfunctions_0.asm"    ; End kiss function
                include "code\specialscreens\title\loadfont.asm"    ; Title screen font loading function
UnusedCloudTiles:
                incbin "data/graphics/tech/unusedcloudtiles.bin" ; no reference to that ? looks like compressed tiles but no idea of what they represent (32x8 tiles)
StaticWidthFont:incbin "data/graphics/tech/fonts/staticwidthfont.bin" 
                                                        ; used for title screen
TitleScreenPalettes:
                incbin "data/graphics/specialscreens/titlescreen/titlescreenpalettes.bin"
                include "code\common\scripting\text\decoding.asm"    ; Text decoding functions
TextBankTreeOffsets:
                incbin "data/scripting/text/huffmantreeoffsets.bin"
TextBankTreeData:
                incbin "data/scripting/text/huffmantrees.bin"
                include "data\scripting\text\entries.asm"    ; Textbank entries
                include "code\specialscreens\credits\gamestaff.asm"    ; Game Staff
                align $44000
