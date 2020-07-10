
; ASM FILE data\graphics\battles\battlesprites\enemyidlebattlesprites.asm :
; 0x1FADD..0x1FAEA : Enemy Idle Battle Sprites
tbl_EnemyBattleSpriteIdleAnimate:
                dc.b ENEMYBATTLESPRITE_HYDRA                 ; IDs of enemy battle sprites which do not animate while idle
                dc.b ENEMYBATTLESPRITE_PYRO_HYDRA
                dc.b ENEMYBATTLESPRITE_HUNTER_GOBLIN
                dc.b ENEMYBATTLESPRITE_DARK_SNIPER
                dc.b ENEMYBATTLESPRITE_BRASS_LOADER
                dc.b ENEMYBATTLESPRITE_BRASS_GUNNER
                dc.b ENEMYBATTLESPRITE_DARK_MAGE
                dc.b ENEMYBATTLESPRITE_MASTER_MAGE
                dc.b ENEMYBATTLESPRITE_WITCH
                dc.b ENEMYBATTLESPRITE_HIGH_WITCH
                dc.b ENEMYBATTLESPRITE_PRIEST
                dc.b ENEMYBATTLESPRITE_HIGH_PRIEST
                dc.b ENEMYBATTLESPRITE_SHAMAN
                dc.b ENEMYBATTLESPRITE_DARK_SHAMAN
                dc.b ENEMYBATTLESPRITE_EVIL_STATUE
                dc.b $FF
