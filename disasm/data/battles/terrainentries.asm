
; ASM FILE data\battles\terrainentries.asm :
; 0x1AD104..0x1B120A : Battle terrain data
pt_BattleTerrainData:
                dc.l BattleTerrain00
                dc.l BattleTerrain01
                dc.l BattleTerrain02
                dc.l BattleTerrain03
BattleTerrain00:incbin "data/battles/entries/sffc-battle01/terrain.bin"
BattleTerrain01:incbin "data/battles/entries/sffc-battle01/terrain.bin"
BattleTerrain02:incbin "data/battles/entries/sffc-battle02/terrain.bin"
BattleTerrain03:incbin "data/battles/entries/sffc-battle03/terrain.bin"
