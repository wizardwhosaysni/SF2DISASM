
; GAME SECTION 11 :
; 0x130000..0x180000 : Enemy battle sprites
; FREE SPACE : 429 bytes.


p_pt_EnemyBattleSprites:
                dc.l pt_EnemyBattleSprites
                include "data\graphics\battles\battlesprites\enemies\entries.asm"    ; Enemy battle sprites
                align $180000
