
; ASM FILE data\maps\entries.asm :
; 0x94B8A..0xC7ECC : Map entries
pt_MapData:     dc.l Map00
                dc.l Map01
                dc.l Map02
                dc.l Map03
                dc.l Map04
                dc.l Map05
                dc.l Map06
                dc.l Map07
                dc.l Map08
                dc.l Map09
                dc.l Map10
                dc.l Map11
                dc.l Map12
                dc.l Map13
                dc.l Map14
                dc.l Map15
                dc.l Map16
                dc.l Map17
                dc.l Map18
                dc.l Map19
                dc.l Map20
                dc.l Map21
                dc.l Map22
Map00:          include "data\maps\entries\sffc-map00\00-tilesets.asm"    ; 
                dc.l Map00s0_Blocks
                dc.l Map00s1_Layout
                dc.l Map00s2_Areas
                dc.l Map00s3_FlagEvents 
                dc.l Map00s4_StepEvents
                dc.l Map00s5_RoofEvents
                dc.l Map00s6_WarpEvents
                dc.l Map00s7_ChestItems
                dc.l Map00s8_OtherItems
                dc.l -1
Map00s2_Areas:  include "data\maps\entries\sffc-map00\2-areas.asm"    ; 
Map00s3_FlagEvents:include "data\maps\entries\sffc-map00\3-flag-events.asm"    ; 
Map00s4_StepEvents:include "data\maps\entries\sffc-map00\4-step-events.asm"    ; 
Map00s5_RoofEvents:include "data\maps\entries\sffc-map00\5-roof-events.asm"    ; 
Map00s6_WarpEvents:include "data\maps\entries\sffc-map00\6-warp-events.asm"    ; 
Map00s7_ChestItems:include "data\maps\entries\sffc-map00\7-chest-items.asm"    ; 
Map00s8_OtherItems:include "data\maps\entries\sffc-map00\8-other-items.asm"    ; 
Map00s0_Blocks: incbin "data/maps/entries/sffc-map00/0-blocks.bin"
Map00s1_Layout: incbin "data/maps/entries/sffc-map00/1-layout.bin"
Map00s9_Animations:include "data\maps\entries\sffc-map00\9-animations.asm"    ; 
Map01:          include "data\maps\entries\sffc-map01\00-tilesets.asm"    ; 
                dc.l Map01s0_Blocks
                dc.l Map01s1_Layout
                dc.l Map01s2_Areas
                dc.l Map01s3_FlagEvents 
                dc.l Map01s4_StepEvents
                dc.l Map01s5_RoofEvents
                dc.l Map01s6_WarpEvents
                dc.l Map01s7_ChestItems 
                dc.l Map01s8_OtherItems
                dc.l -1
Map01s2_Areas:  include "data\maps\entries\sffc-map01\2-areas.asm"    ; 
Map01s3_FlagEvents:include "data\maps\entries\sffc-map01\3-flag-events.asm"    ; 
Map01s4_StepEvents:include "data\maps\entries\sffc-map01\4-step-events.asm"    ; 
Map01s5_RoofEvents:include "data\maps\entries\sffc-map01\5-roof-events.asm"    ; 
Map01s6_WarpEvents:include "data\maps\entries\sffc-map01\6-warp-events.asm"    ; 
Map01s7_ChestItems:include "data\maps\entries\sffc-map01\7-chest-items.asm"    ; 
Map01s8_OtherItems:include "data\maps\entries\sffc-map01\8-other-items.asm"    ; 
Map01s0_Blocks: incbin "data/maps/entries/sffc-map01/0-blocks.bin"
Map01s1_Layout: incbin "data/maps/entries/sffc-map01/1-layout.bin"
Map01s9_Animations:include "data\maps\entries\sffc-map01\9-animations.asm"    ; 
Map02:          include "data\maps\entries\sffc-map02\00-tilesets.asm"    ; 
                dc.l Map02s0_Blocks
                dc.l Map02s1_Layout
                dc.l Map02s2_Areas
                dc.l Map02s3_FlagEvents 
                dc.l Map02s4_StepEvents
                dc.l Map02s5_RoofEvents
                dc.l Map02s6_WarpEvents
                dc.l Map02s7_ChestItems
                dc.l Map02s8_OtherItems
                dc.l -1
Map02s2_Areas:  include "data\maps\entries\sffc-map02\2-areas.asm"    ; 
Map02s3_FlagEvents:include "data\maps\entries\sffc-map02\3-flag-events.asm"    ; 
Map02s4_StepEvents:include "data\maps\entries\sffc-map02\4-step-events.asm"    ; 
Map02s5_RoofEvents:include "data\maps\entries\sffc-map02\5-roof-events.asm"    ; 
Map02s6_WarpEvents:include "data\maps\entries\sffc-map02\6-warp-events.asm"    ; 
Map02s7_ChestItems:include "data\maps\entries\sffc-map02\7-chest-items.asm"    ; 
Map02s8_OtherItems:include "data\maps\entries\sffc-map02\8-other-items.asm"    ; 
Map02s0_Blocks: incbin "data/maps/entries/sffc-map02/0-blocks.bin"
Map02s1_Layout: incbin "data/maps/entries/sffc-map02/1-layout.bin"
Map02s9_Animations:include "data\maps\entries\sffc-map02\9-animations.asm"    ; 
Map03:          include "data\maps\entries\sffc-map03\00-tilesets.asm"    ; 
                dc.l Map03s0_Blocks
                dc.l Map03s1_Layout
                dc.l Map03s2_Areas
                dc.l Map03s3_FlagEvents 
                dc.l Map03s4_StepEvents
                dc.l Map03s5_RoofEvents
                dc.l Map03s6_WarpEvents
                dc.l Map03s7_ChestItems
                dc.l Map03s8_OtherItems
                dc.l Map03s9_Animations
Map03s2_Areas:  include "data\maps\entries\sffc-map03\2-areas.asm"    ; 
Map03s3_FlagEvents:include "data\maps\entries\sffc-map03\3-flag-events.asm"    ; 
Map03s4_StepEvents:include "data\maps\entries\sffc-map03\4-step-events.asm"    ; 
Map03s5_RoofEvents:include "data\maps\entries\sffc-map03\5-roof-events.asm"    ; 
Map03s6_WarpEvents:include "data\maps\entries\sffc-map03\6-warp-events.asm"    ; 
Map03s7_ChestItems:include "data\maps\entries\sffc-map03\7-chest-items.asm"    ; 
Map03s8_OtherItems:include "data\maps\entries\sffc-map03\8-other-items.asm"    ; 
Map03s0_Blocks: incbin "data/maps/entries/sffc-map03/0-blocks.bin"
Map03s1_Layout: incbin "data/maps/entries/sffc-map03/1-layout.bin"
Map03s9_Animations:include "data\maps\entries\sffc-map03\9-animations.asm"    ; 
Map04:          include "data\maps\entries\sffc-map04\00-tilesets.asm"    ; 
                dc.l Map04s0_Blocks
                dc.l Map04s1_Layout
                dc.l Map04s2_Areas
                dc.l Map04s3_FlagEvents 
                dc.l Map04s4_StepEvents
                dc.l Map04s5_RoofEvents
                dc.l Map04s6_WarpEvents
                dc.l Map04s7_ChestItems
                dc.l Map04s8_OtherItems
                dc.l -1
Map04s2_Areas:  include "data\maps\entries\sffc-map04\2-areas.asm"    ; 
Map04s3_FlagEvents:include "data\maps\entries\sffc-map04\3-flag-events.asm"    ; 
Map04s4_StepEvents:include "data\maps\entries\sffc-map04\4-step-events.asm"    ; 
Map04s5_RoofEvents:include "data\maps\entries\sffc-map04\5-roof-events.asm"    ; 
Map04s6_WarpEvents:include "data\maps\entries\sffc-map04\6-warp-events.asm"    ; 
Map04s7_ChestItems:include "data\maps\entries\sffc-map04\7-chest-items.asm"    ; 
Map04s8_OtherItems:include "data\maps\entries\sffc-map04\8-other-items.asm"    ; 
Map04s0_Blocks: incbin "data/maps/entries/sffc-map04/0-blocks.bin"
Map04s1_Layout: incbin "data/maps/entries/sffc-map04/1-layout.bin"
Map04s9_Animations:include "data\maps\entries\sffc-map04\9-animations.asm"    ; 
Map05:          include "data\maps\entries\sffc-map05\00-tilesets.asm"    ; 
                dc.l Map05s0_Blocks
                dc.l Map05s1_Layout
                dc.l Map05s2_Areas
                dc.l Map05s3_FlagEvents 
                dc.l Map05s4_StepEvents
                dc.l Map05s5_RoofEvents
                dc.l Map05s6_WarpEvents
                dc.l Map05s7_ChestItems
                dc.l Map05s8_OtherItems
                dc.l -1
Map05s2_Areas:  include "data\maps\entries\sffc-map05\2-areas.asm"    ; 
Map05s3_FlagEvents:include "data\maps\entries\sffc-map05\3-flag-events.asm"    ; 
Map05s4_StepEvents:include "data\maps\entries\sffc-map05\4-step-events.asm"    ; 
Map05s5_RoofEvents:include "data\maps\entries\sffc-map05\5-roof-events.asm"    ; 
Map05s6_WarpEvents:include "data\maps\entries\sffc-map05\6-warp-events.asm"    ; 
Map05s7_ChestItems:include "data\maps\entries\sffc-map05\7-chest-items.asm"    ; 
Map05s8_OtherItems:include "data\maps\entries\sffc-map05\8-other-items.asm"    ; 
Map05s0_Blocks: incbin "data/maps/entries/sffc-map05/0-blocks.bin"
Map05s1_Layout: incbin "data/maps/entries/sffc-map05/1-layout.bin"
Map05s9_Animations:include "data\maps\entries\sffc-map05\9-animations.asm"    ; 
Map06:          include "data\maps\entries\sffc-map06\00-tilesets.asm"    ; 
                dc.l Map06s0_Blocks
                dc.l Map06s1_Layout
                dc.l Map06s2_Areas
                dc.l Map06s3_FlagEvents 
                dc.l Map06s4_StepEvents
                dc.l Map06s5_RoofEvents
                dc.l Map06s6_WarpEvents
                dc.l Map06s7_ChestItems
                dc.l Map06s8_OtherItems
                dc.l -1
Map06s2_Areas:  include "data\maps\entries\sffc-map06\2-areas.asm"    ; 
Map06s3_FlagEvents:include "data\maps\entries\sffc-map06\3-flag-events.asm"    ; 
Map06s4_StepEvents:include "data\maps\entries\sffc-map06\4-step-events.asm"    ; 
Map06s5_RoofEvents:include "data\maps\entries\sffc-map06\5-roof-events.asm"    ; 
Map06s6_WarpEvents:include "data\maps\entries\sffc-map06\6-warp-events.asm"    ; 
Map06s7_ChestItems:include "data\maps\entries\sffc-map06\7-chest-items.asm"    ; 
Map06s8_OtherItems:include "data\maps\entries\sffc-map06\8-other-items.asm"    ; 
Map06s0_Blocks: incbin "data/maps/entries/sffc-map06/0-blocks.bin"
Map06s1_Layout: incbin "data/maps/entries/sffc-map06/1-layout.bin"
Map06s9_Animations:include "data\maps\entries\sffc-map06\9-animations.asm"    ; 
Map07:          include "data\maps\entries\sffc-map07\00-tilesets.asm"    ; 
                dc.l Map07s0_Blocks
                dc.l Map07s1_Layout
                dc.l Map07s2_Areas
                dc.l Map07s3_FlagEvents 
                dc.l Map07s4_StepEvents
                dc.l Map07s5_RoofEvents
                dc.l Map07s6_WarpEvents
                dc.l Map07s7_ChestItems
                dc.l Map07s8_OtherItems
                dc.l -1
Map07s2_Areas:  include "data\maps\entries\sffc-map07\2-areas.asm"    ; 
Map07s3_FlagEvents:include "data\maps\entries\sffc-map07\3-flag-events.asm"    ; 
Map07s4_StepEvents:include "data\maps\entries\sffc-map07\4-step-events.asm"    ; 
Map07s5_RoofEvents:include "data\maps\entries\sffc-map07\5-roof-events.asm"    ; 
Map07s6_WarpEvents:include "data\maps\entries\sffc-map07\6-warp-events.asm"    ; 
Map07s7_ChestItems:include "data\maps\entries\sffc-map07\7-chest-items.asm"    ; 
Map07s8_OtherItems:include "data\maps\entries\sffc-map07\8-other-items.asm"    ; 
Map07s0_Blocks: incbin "data/maps/entries/sffc-map07/0-blocks.bin"
Map07s1_Layout: incbin "data/maps/entries/sffc-map07/1-layout.bin"
Map07s9_Animations:include "data\maps\entries\sffc-map07\9-animations.asm"    ; 
Map08:          include "data\maps\entries\sffc-map08\00-tilesets.asm"    ; 
                dc.l Map08s0_Blocks
                dc.l Map08s1_Layout
                dc.l Map08s2_Areas
                dc.l Map08s3_FlagEvents 
                dc.l Map08s4_StepEvents
                dc.l Map08s5_RoofEvents
                dc.l Map08s6_WarpEvents
                dc.l Map08s7_ChestItems
                dc.l Map08s8_OtherItems
                dc.l -1
Map08s2_Areas:  include "data\maps\entries\sffc-map08\2-areas.asm"    ; 
Map08s3_FlagEvents:include "data\maps\entries\sffc-map08\3-flag-events.asm"    ; 
Map08s4_StepEvents:include "data\maps\entries\sffc-map08\4-step-events.asm"    ; 
Map08s5_RoofEvents:include "data\maps\entries\sffc-map08\5-roof-events.asm"    ; 
Map08s6_WarpEvents:include "data\maps\entries\sffc-map08\6-warp-events.asm"    ; 
Map08s7_ChestItems:include "data\maps\entries\sffc-map08\7-chest-items.asm"    ; 
Map08s8_OtherItems:include "data\maps\entries\sffc-map08\8-other-items.asm"    ; 
Map08s0_Blocks: incbin "data/maps/entries/sffc-map08/0-blocks.bin"
Map08s1_Layout: incbin "data/maps/entries/sffc-map08/1-layout.bin"
Map08s9_Animations:include "data\maps\entries\sffc-map08\9-animations.asm"    ; 
Map09:          include "data\maps\entries\sffc-map09\00-tilesets.asm"    ; 
                dc.l Map09s0_Blocks
                dc.l Map09s1_Layout
                dc.l Map09s2_Areas
                dc.l Map09s3_FlagEvents 
                dc.l Map09s4_StepEvents
                dc.l Map09s5_RoofEvents
                dc.l Map09s6_WarpEvents
                dc.l Map09s7_ChestItems
                dc.l Map09s8_OtherItems
                dc.l -1
Map09s2_Areas:  include "data\maps\entries\sffc-map09\2-areas.asm"    ; 
Map09s3_FlagEvents:include "data\maps\entries\sffc-map09\3-flag-events.asm"    ; 
Map09s4_StepEvents:include "data\maps\entries\sffc-map09\4-step-events.asm"    ; 
Map09s5_RoofEvents:include "data\maps\entries\sffc-map09\5-roof-events.asm"    ; 
Map09s6_WarpEvents:include "data\maps\entries\sffc-map09\6-warp-events.asm"    ; 
Map09s7_ChestItems:include "data\maps\entries\sffc-map09\7-chest-items.asm"    ; 
Map09s8_OtherItems:include "data\maps\entries\sffc-map09\8-other-items.asm"    ; 
Map09s0_Blocks: incbin "data/maps/entries/sffc-map09/0-blocks.bin"
Map09s1_Layout: incbin "data/maps/entries/sffc-map09/1-layout.bin"
Map09s9_Animations:include "data\maps\entries\sffc-map09\9-animations.asm"    ; 
Map10:          include "data\maps\entries\sffc-map10\00-tilesets.asm"    ; 
                dc.l Map10s0_Blocks
                dc.l Map10s1_Layout
                dc.l Map10s2_Areas
                dc.l Map10s3_FlagEvents 
                dc.l Map10s4_StepEvents
                dc.l Map10s5_RoofEvents
                dc.l Map10s6_WarpEvents
                dc.l Map10s7_ChestItems
                dc.l Map10s8_OtherItems
                dc.l -1
Map10s2_Areas:  include "data\maps\entries\sffc-map10\2-areas.asm"    ; 
Map10s3_FlagEvents:include "data\maps\entries\sffc-map10\3-flag-events.asm"    ; 
Map10s4_StepEvents:include "data\maps\entries\sffc-map10\4-step-events.asm"    ; 
Map10s5_RoofEvents:include "data\maps\entries\sffc-map10\5-roof-events.asm"    ; 
Map10s6_WarpEvents:include "data\maps\entries\sffc-map10\6-warp-events.asm"    ; 
Map10s7_ChestItems:include "data\maps\entries\sffc-map10\7-chest-items.asm"    ; 
Map10s8_OtherItems:include "data\maps\entries\sffc-map10\8-other-items.asm"    ; 
Map10s0_Blocks: incbin "data/maps/entries/sffc-map10/0-blocks.bin"
Map10s1_Layout: incbin "data/maps/entries/sffc-map10/1-layout.bin"
Map10s9_Animations:include "data\maps\entries\sffc-map10\9-animations.asm"    ; 
Map11:          include "data\maps\entries\sffc-map11\00-tilesets.asm"    ; 
                dc.l Map11s0_Blocks
                dc.l Map11s1_Layout
                dc.l Map11s2_Areas
                dc.l Map11s3_FlagEvents 
                dc.l Map11s4_StepEvents
                dc.l Map11s5_RoofEvents
                dc.l Map11s6_WarpEvents
                dc.l Map11s7_ChestItems
                dc.l Map11s8_OtherItems
                dc.l -1
Map11s2_Areas:  include "data\maps\entries\sffc-map11\2-areas.asm"    ; 
Map11s3_FlagEvents:include "data\maps\entries\sffc-map11\3-flag-events.asm"    ; 
Map11s4_StepEvents:include "data\maps\entries\sffc-map11\4-step-events.asm"    ; 
Map11s5_RoofEvents:include "data\maps\entries\sffc-map11\5-roof-events.asm"    ; 
Map11s6_WarpEvents:include "data\maps\entries\sffc-map11\6-warp-events.asm"    ; 
Map11s7_ChestItems:include "data\maps\entries\sffc-map11\7-chest-items.asm"    ; 
Map11s8_OtherItems:include "data\maps\entries\sffc-map11\8-other-items.asm"    ; 
Map11s0_Blocks: incbin "data/maps/entries/sffc-map11/0-blocks.bin"
Map11s1_Layout: incbin "data/maps/entries/sffc-map11/1-layout.bin"
Map11s9_Animations:include "data\maps\entries\sffc-map11\9-animations.asm"    ; 
Map12:          include "data\maps\entries\sffc-map12\00-tilesets.asm"    ; 
                dc.l Map12s0_Blocks
                dc.l Map12s1_Layout
                dc.l Map12s2_Areas
                dc.l Map12s3_FlagEvents 
                dc.l Map12s4_StepEvents
                dc.l Map12s5_RoofEvents
                dc.l Map12s6_WarpEvents
                dc.l Map12s7_ChestItems
                dc.l Map12s8_OtherItems
                dc.l -1
Map12s2_Areas:  include "data\maps\entries\sffc-map12\2-areas.asm"    ; 
Map12s3_FlagEvents:include "data\maps\entries\sffc-map12\3-flag-events.asm"    ; 
Map12s4_StepEvents:include "data\maps\entries\sffc-map12\4-step-events.asm"    ; 
Map12s5_RoofEvents:include "data\maps\entries\sffc-map12\5-roof-events.asm"    ; 
Map12s6_WarpEvents:include "data\maps\entries\sffc-map12\6-warp-events.asm"    ; 
Map12s7_ChestItems:include "data\maps\entries\sffc-map12\7-chest-items.asm"    ; 
Map12s8_OtherItems:include "data\maps\entries\sffc-map12\8-other-items.asm"    ; 
Map12s0_Blocks: incbin "data/maps/entries/sffc-map12/0-blocks.bin"
Map12s1_Layout: incbin "data/maps/entries/sffc-map12/1-layout.bin"
Map12s9_Animations:include "data\maps\entries\sffc-map12\9-animations.asm"    ; 
Map13:          include "data\maps\entries\sffc-map13\00-tilesets.asm"    ; 
                dc.l Map13s0_Blocks
                dc.l Map13s1_Layout
                dc.l Map13s2_Areas
                dc.l Map13s3_FlagEvents 
                dc.l Map13s4_StepEvents
                dc.l Map13s5_RoofEvents
                dc.l Map13s6_WarpEvents
                dc.l Map13s7_ChestItems
                dc.l Map13s8_OtherItems
                dc.l -1
Map13s2_Areas:  include "data\maps\entries\sffc-map13\2-areas.asm"    ; 
Map13s3_FlagEvents:include "data\maps\entries\sffc-map13\3-flag-events.asm"    ; 
Map13s4_StepEvents:include "data\maps\entries\sffc-map13\4-step-events.asm"    ; 
Map13s5_RoofEvents:include "data\maps\entries\sffc-map13\5-roof-events.asm"    ; 
Map13s6_WarpEvents:include "data\maps\entries\sffc-map13\6-warp-events.asm"    ; 
Map13s7_ChestItems:include "data\maps\entries\sffc-map13\7-chest-items.asm"    ; 
Map13s8_OtherItems:include "data\maps\entries\sffc-map13\8-other-items.asm"    ; 
Map13s0_Blocks: incbin "data/maps/entries/sffc-map13/0-blocks.bin"
Map13s1_Layout: incbin "data/maps/entries/sffc-map13/1-layout.bin"
Map13s9_Animations:include "data\maps\entries\sffc-map13\9-animations.asm"    ; 
Map14:          include "data\maps\entries\sffc-map14\00-tilesets.asm"    ; 
                dc.l Map14s0_Blocks
                dc.l Map14s1_Layout
                dc.l Map14s2_Areas
                dc.l Map14s3_FlagEvents 
                dc.l Map14s4_StepEvents
                dc.l Map14s5_RoofEvents
                dc.l Map14s6_WarpEvents
                dc.l Map14s7_ChestItems
                dc.l Map14s8_OtherItems
                dc.l -1
Map14s2_Areas:  include "data\maps\entries\sffc-map14\2-areas.asm"    ; 
Map14s3_FlagEvents:include "data\maps\entries\sffc-map14\3-flag-events.asm"    ; 
Map14s4_StepEvents:include "data\maps\entries\sffc-map14\4-step-events.asm"    ; 
Map14s5_RoofEvents:include "data\maps\entries\sffc-map14\5-roof-events.asm"    ; 
Map14s6_WarpEvents:include "data\maps\entries\sffc-map14\6-warp-events.asm"    ; 
Map14s7_ChestItems:include "data\maps\entries\sffc-map14\7-chest-items.asm"    ; 
Map14s8_OtherItems:include "data\maps\entries\sffc-map14\8-other-items.asm"    ; 
Map14s0_Blocks: incbin "data/maps/entries/sffc-map14/0-blocks.bin"
Map14s1_Layout: incbin "data/maps/entries/sffc-map14/1-layout.bin"
Map14s9_Animations:include "data\maps\entries\sffc-map14\9-animations.asm"    ; 
Map15:          include "data\maps\entries\sffc-map15\00-tilesets.asm"    ; 
                dc.l Map15s0_Blocks
                dc.l Map15s1_Layout
                dc.l Map15s2_Areas
                dc.l Map15s3_FlagEvents 
                dc.l Map15s4_StepEvents
                dc.l Map15s5_RoofEvents
                dc.l Map15s6_WarpEvents
                dc.l Map15s7_ChestItems
                dc.l Map15s8_OtherItems
                dc.l -1
Map15s2_Areas:  include "data\maps\entries\sffc-map15\2-areas.asm"    ; 
Map15s3_FlagEvents:include "data\maps\entries\sffc-map15\3-flag-events.asm"    ; 
Map15s4_StepEvents:include "data\maps\entries\sffc-map15\4-step-events.asm"    ; 
Map15s5_RoofEvents:include "data\maps\entries\sffc-map15\5-roof-events.asm"    ; 
Map15s6_WarpEvents:include "data\maps\entries\sffc-map15\6-warp-events.asm"    ; 
Map15s7_ChestItems:include "data\maps\entries\sffc-map15\7-chest-items.asm"    ; 
Map15s8_OtherItems:include "data\maps\entries\sffc-map15\8-other-items.asm"    ; 
Map15s0_Blocks: incbin "data/maps/entries/sffc-map15/0-blocks.bin"
Map15s1_Layout: incbin "data/maps/entries/sffc-map15/1-layout.bin"
Map15s9_Animations:include "data\maps\entries\sffc-map15\9-animations.asm"    ; 
Map16:          include "data\maps\entries\sffc-map16\00-tilesets.asm"    ; 
                dc.l Map16s0_Blocks
                dc.l Map16s1_Layout
                dc.l Map16s2_Areas
                dc.l Map16s3_FlagEvents 
                dc.l Map16s4_StepEvents
                dc.l Map16s5_RoofEvents
                dc.l Map16s6_WarpEvents
                dc.l Map16s7_ChestItems
                dc.l Map16s8_OtherItems
                dc.l -1
Map16s2_Areas:  include "data\maps\entries\sffc-map16\2-areas.asm"    ; 
Map16s3_FlagEvents:include "data\maps\entries\sffc-map16\3-flag-events.asm"    ; 
Map16s4_StepEvents:include "data\maps\entries\sffc-map16\4-step-events.asm"    ; 
Map16s5_RoofEvents:include "data\maps\entries\sffc-map16\5-roof-events.asm"    ; 
Map16s6_WarpEvents:include "data\maps\entries\sffc-map16\6-warp-events.asm"    ; 
Map16s7_ChestItems:include "data\maps\entries\sffc-map16\7-chest-items.asm"    ; 
Map16s8_OtherItems:include "data\maps\entries\sffc-map16\8-other-items.asm"    ; 
Map16s0_Blocks: incbin "data/maps/entries/sffc-map16/0-blocks.bin"
Map16s1_Layout: incbin "data/maps/entries/sffc-map16/1-layout.bin"
Map16s9_Animations:include "data\maps\entries\sffc-map16\9-animations.asm"    ; 
Map17:          include "data\maps\entries\sffc-map17\00-tilesets.asm"    ; 
                dc.l Map17s0_Blocks
                dc.l Map17s1_Layout
                dc.l Map17s2_Areas
                dc.l Map17s3_FlagEvents 
                dc.l Map17s4_StepEvents
                dc.l Map17s5_RoofEvents
                dc.l Map17s6_WarpEvents
                dc.l Map17s7_ChestItems
                dc.l Map17s8_OtherItems
                dc.l -1
Map17s2_Areas:  include "data\maps\entries\sffc-map17\2-areas.asm"    ; 
Map17s3_FlagEvents:include "data\maps\entries\sffc-map17\3-flag-events.asm"    ; 
Map17s4_StepEvents:include "data\maps\entries\sffc-map17\4-step-events.asm"    ; 
Map17s5_RoofEvents:include "data\maps\entries\sffc-map17\5-roof-events.asm"    ; 
Map17s6_WarpEvents:include "data\maps\entries\sffc-map17\6-warp-events.asm"    ; 
Map17s7_ChestItems:include "data\maps\entries\sffc-map17\7-chest-items.asm"    ; 
Map17s8_OtherItems:include "data\maps\entries\sffc-map17\8-other-items.asm"    ; 
Map17s0_Blocks: incbin "data/maps/entries/sffc-map17/0-blocks.bin"
Map17s1_Layout: incbin "data/maps/entries/sffc-map17/1-layout.bin"
Map17s9_Animations:include "data\maps\entries\sffc-map17\9-animations.asm"    ; 
Map18:          include "data\maps\entries\sffc-map18\00-tilesets.asm"    ; 
                dc.l Map18s0_Blocks
                dc.l Map18s1_Layout
                dc.l Map18s2_Areas
                dc.l Map18s3_FlagEvents 
                dc.l Map18s4_StepEvents
                dc.l Map18s5_RoofEvents
                dc.l Map18s6_WarpEvents
                dc.l Map18s7_ChestItems
                dc.l Map18s8_OtherItems
                dc.l -1
Map18s2_Areas:  include "data\maps\entries\sffc-map18\2-areas.asm"    ; 
Map18s3_FlagEvents:include "data\maps\entries\sffc-map18\3-flag-events.asm"    ; 
Map18s4_StepEvents:include "data\maps\entries\sffc-map18\4-step-events.asm"    ; 
Map18s5_RoofEvents:include "data\maps\entries\sffc-map18\5-roof-events.asm"    ; 
Map18s6_WarpEvents:include "data\maps\entries\sffc-map18\6-warp-events.asm"    ; 
Map18s7_ChestItems:include "data\maps\entries\sffc-map18\7-chest-items.asm"    ; 
Map18s8_OtherItems:include "data\maps\entries\sffc-map18\8-other-items.asm"    ; 
Map18s0_Blocks: incbin "data/maps/entries/sffc-map18/0-blocks.bin"
Map18s1_Layout: incbin "data/maps/entries/sffc-map18/1-layout.bin"
Map18s9_Animations:include "data\maps\entries\sffc-map18\9-animations.asm"    ; 
Map19:          include "data\maps\entries\sffc-map19\00-tilesets.asm"    ; 
                dc.l Map19s0_Blocks
                dc.l Map19s1_Layout
                dc.l Map19s2_Areas
                dc.l Map19s3_FlagEvents 
                dc.l Map19s4_StepEvents
                dc.l Map19s5_RoofEvents
                dc.l Map19s6_WarpEvents
                dc.l Map19s7_ChestItems
                dc.l Map19s8_OtherItems
                dc.l -1
Map19s2_Areas:  include "data\maps\entries\sffc-map19\2-areas.asm"    ; 
Map19s3_FlagEvents:include "data\maps\entries\sffc-map19\3-flag-events.asm"    ; 
Map19s4_StepEvents:include "data\maps\entries\sffc-map19\4-step-events.asm"    ; 
Map19s5_RoofEvents:include "data\maps\entries\sffc-map19\5-roof-events.asm"    ; 
Map19s6_WarpEvents:include "data\maps\entries\sffc-map19\6-warp-events.asm"    ; 
Map19s7_ChestItems:include "data\maps\entries\sffc-map19\7-chest-items.asm"    ; 
Map19s8_OtherItems:include "data\maps\entries\sffc-map19\8-other-items.asm"    ; 
Map19s0_Blocks: incbin "data/maps/entries/sffc-map19/0-blocks.bin"
Map19s1_Layout: incbin "data/maps/entries/sffc-map19/1-layout.bin"
Map19s9_Animations:include "data\maps\entries\sffc-map19\9-animations.asm"    ; 
Map20:          include "data\maps\entries\sffc-map20\00-tilesets.asm"    ; 
                dc.l Map20s0_Blocks
                dc.l Map20s1_Layout
                dc.l Map20s2_Areas
                dc.l Map20s3_FlagEvents 
                dc.l Map20s4_StepEvents
                dc.l Map20s5_RoofEvents
                dc.l Map20s6_WarpEvents
                dc.l Map20s7_ChestItems
                dc.l Map20s8_OtherItems
                dc.l -1
Map20s2_Areas:  include "data\maps\entries\sffc-map20\2-areas.asm"    ; 
Map20s3_FlagEvents:include "data\maps\entries\sffc-map20\3-flag-events.asm"    ; 
Map20s4_StepEvents:include "data\maps\entries\sffc-map20\4-step-events.asm"    ; 
Map20s5_RoofEvents:include "data\maps\entries\sffc-map20\5-roof-events.asm"    ; 
Map20s6_WarpEvents:include "data\maps\entries\sffc-map20\6-warp-events.asm"    ; 
Map20s7_ChestItems:include "data\maps\entries\sffc-map20\7-chest-items.asm"    ; 
Map20s8_OtherItems:include "data\maps\entries\sffc-map20\8-other-items.asm"    ; 
Map20s0_Blocks: incbin "data/maps/entries/sffc-map20/0-blocks.bin"
Map20s1_Layout: incbin "data/maps/entries/sffc-map20/1-layout.bin"
Map20s9_Animations:include "data\maps\entries\sffc-map20\9-animations.asm"    ; 
Map21:          include "data\maps\entries\sffc-map21\00-tilesets.asm"    ; 
                dc.l Map21s0_Blocks
                dc.l Map21s1_Layout
                dc.l Map21s2_Areas
                dc.l Map21s3_FlagEvents 
                dc.l Map21s4_StepEvents
                dc.l Map21s5_RoofEvents
                dc.l Map21s6_WarpEvents
                dc.l Map21s7_ChestItems
                dc.l Map21s8_OtherItems
                dc.l -1
Map21s2_Areas:  include "data\maps\entries\sffc-map21\2-areas.asm"    ; 
Map21s3_FlagEvents:include "data\maps\entries\sffc-map21\3-flag-events.asm"    ; 
Map21s4_StepEvents:include "data\maps\entries\sffc-map21\4-step-events.asm"    ; 
Map21s5_RoofEvents:include "data\maps\entries\sffc-map21\5-roof-events.asm"    ; 
Map21s6_WarpEvents:include "data\maps\entries\sffc-map21\6-warp-events.asm"    ; 
Map21s7_ChestItems:include "data\maps\entries\sffc-map21\7-chest-items.asm"    ; 
Map21s8_OtherItems:include "data\maps\entries\sffc-map21\8-other-items.asm"    ; 
Map21s0_Blocks: incbin "data/maps/entries/sffc-map21/0-blocks.bin"
Map21s1_Layout: incbin "data/maps/entries/sffc-map21/1-layout.bin"
Map21s9_Animations:include "data\maps\entries\sffc-map21\9-animations.asm"    ; 
Map22:          include "data\maps\entries\sffc-map22\00-tilesets.asm"    ; 
                dc.l Map22s0_Blocks
                dc.l Map22s1_Layout
                dc.l Map22s2_Areas
                dc.l Map22s3_FlagEvents 
                dc.l Map22s4_StepEvents
                dc.l Map22s5_RoofEvents
                dc.l Map22s6_WarpEvents
                dc.l Map22s7_ChestItems
                dc.l Map22s8_OtherItems
                dc.l -1
Map22s2_Areas:  include "data\maps\entries\sffc-map22\2-areas.asm"    ; 
Map22s3_FlagEvents:include "data\maps\entries\sffc-map22\3-flag-events.asm"    ; 
Map22s4_StepEvents:include "data\maps\entries\sffc-map22\4-step-events.asm"    ; 
Map22s5_RoofEvents:include "data\maps\entries\sffc-map22\5-roof-events.asm"    ; 
Map22s6_WarpEvents:include "data\maps\entries\sffc-map22\6-warp-events.asm"    ; 
Map22s7_ChestItems:include "data\maps\entries\sffc-map22\7-chest-items.asm"    ; 
Map22s8_OtherItems:include "data\maps\entries\sffc-map22\8-other-items.asm"    ; 
Map22s0_Blocks: incbin "data/maps/entries/sffc-map22/0-blocks.bin"
Map22s1_Layout: incbin "data/maps/entries/sffc-map22/1-layout.bin"
Map22s9_Animations:include "data\maps\entries\sffc-map22\9-animations.asm"    ; 

