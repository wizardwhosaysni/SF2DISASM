
; ASM FILE data\maps\entries.asm :
; 0x94B8A..0xC7ECC : Map entries
pt_MapData:     dc.l Map00
                dc.l Map01
                dc.l Map02
                dc.l Map03
                dc.l Map04
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map30
                dc.l Map31
                dc.l Map32
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
                dc.l Map00
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
;Map00s9_Animations:include "data\maps\entries\sffc-map00\9-animations.asm"    ; 
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
;Map01s9_Animations:include "data\maps\entries\map01\9-animations.asm"    ; 
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
                dc.l Map02s9_Animations
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
                dc.l Map04s9_Animations
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

; no map entries for indexes 22-29

Map30:          include "data\maps\entries\sffc-map30\00-tilesets.asm"    ; 
                dc.l Map30s0_Blocks
                dc.l Map30s1_Layout
                dc.l Map30s2_Areas
                dc.l Map30s3_FlagEvents 
                dc.l Map30s4_StepEvents
                dc.l Map30s5_RoofEvents
                dc.l Map30s6_WarpEvents
                dc.l Map30s7_ChestItems
                dc.l Map30s8_OtherItems
                dc.l -1
Map30s2_Areas:  include "data\maps\entries\sffc-map30\2-areas.asm"    ; 
Map30s3_FlagEvents:include "data\maps\entries\sffc-map30\3-flag-events.asm"    ; 
Map30s4_StepEvents:include "data\maps\entries\sffc-map30\4-step-events.asm"    ; 
Map30s5_RoofEvents:include "data\maps\entries\sffc-map30\5-roof-events.asm"    ; 
Map30s6_WarpEvents:include "data\maps\entries\sffc-map30\6-warp-events.asm"    ; 
Map30s7_ChestItems:include "data\maps\entries\sffc-map30\7-chest-items.asm"    ; 
Map30s8_OtherItems:include "data\maps\entries\sffc-map30\8-other-items.asm"    ; 
Map30s0_Blocks: incbin "data/maps/entries/sffc-map30/0-blocks.bin"
Map30s1_Layout: incbin "data/maps/entries/sffc-map30/1-layout.bin"
Map31:          include "data\maps\entries\sffc-map31\00-tilesets.asm"    ; 
                dc.l Map31s0_Blocks
                dc.l Map31s1_Layout
                dc.l Map31s2_Areas
                dc.l Map31s3_FlagEvents 
                dc.l Map31s4_StepEvents
                dc.l Map31s5_RoofEvents
                dc.l Map31s6_WarpEvents
                dc.l Map31s7_ChestItems
                dc.l Map31s8_OtherItems
                dc.l $FFFFFFFF
Map31s2_Areas:  include "data\maps\entries\sffc-map31\2-areas.asm"    ; 
Map31s3_FlagEvents:include "data\maps\entries\sffc-map31\3-flag-events.asm"    ; 
Map31s4_StepEvents:include "data\maps\entries\sffc-map31\4-step-events.asm"    ; 
Map31s5_RoofEvents:include "data\maps\entries\sffc-map31\5-roof-events.asm"    ; 
Map31s6_WarpEvents:include "data\maps\entries\sffc-map31\6-warp-events.asm"    ; 
Map31s7_ChestItems:include "data\maps\entries\sffc-map31\7-chest-items.asm"    ; 
Map31s8_OtherItems:include "data\maps\entries\sffc-map31\8-other-items.asm"    ; 
Map31s0_Blocks: incbin "data/maps/entries/sffc-map31/0-blocks.bin"
Map31s1_Layout: incbin "data/maps/entries/sffc-map31/1-layout.bin"
Map32:          include "data\maps\entries\sffc-map32\00-tilesets.asm"    ; 
                dc.l Map32s0_Blocks
                dc.l Map32s1_Layout
                dc.l Map32s2_Areas
                dc.l Map32s3_FlagEvents
                dc.l Map32s4_StepEvents
                dc.l Map32s5_RoofEvents
                dc.l Map32s6_WarpEvents
                dc.l Map32s7_ChestItems
                dc.l Map32s8_OtherItems
                dc.l $FFFFFFFF
Map32s2_Areas:  include "data\maps\entries\sffc-map32\2-areas.asm"    ; 
Map32s3_FlagEvents:include "data\maps\entries\sffc-map32\3-flag-events.asm"    ; 
Map32s4_StepEvents:include "data\maps\entries\sffc-map32\4-step-events.asm"    ; 
Map32s5_RoofEvents:include "data\maps\entries\sffc-map32\5-roof-events.asm"    ; 
Map32s6_WarpEvents:include "data\maps\entries\sffc-map32\6-warp-events.asm"    ; 
Map32s7_ChestItems:include "data\maps\entries\sffc-map32\7-chest-items.asm"    ; 
Map32s8_OtherItems:include "data\maps\entries\sffc-map32\8-other-items.asm"    ; 
Map32s0_Blocks: incbin "data/maps/entries/sffc-map32/0-blocks.bin"
Map32s1_Layout: incbin "data/maps/entries/sffc-map32/1-layout.bin"
