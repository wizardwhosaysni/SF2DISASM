
; ASM FILE data\battles\spritesetentries.asm :
; 0x1B30EE..0x1B6DB0 : Battle sprite sets
pt_BattleSpriteSets:
                dc.l BattleSpriteSet00  ; battle entity data
                dc.l BattleSpriteSet01
                dc.l BattleSpriteSet02
                dc.l BattleSpriteSet03
BattleSpriteSet00:
                incbin "data/battles/entries/sffc-battle01/spriteset.bin"
BattleSpriteSet01:
                incbin "data/battles/entries/sffc-battle01/spriteset.bin"
BattleSpriteSet02:
                incbin "data/battles/entries/sffc-battle02/spriteset.bin"
BattleSpriteSet03:
                incbin "data/battles/entries/sffc-battle03/spriteset.bin"
