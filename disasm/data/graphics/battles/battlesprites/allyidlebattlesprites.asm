
; ASM FILE data\graphics\battles\battlesprites\allyidlebattlesprites.asm :
; 0x1FAD6..0x1FADD : Ally Idle Battle Sprites
tbl_AllyBattleSpriteIdleAnimate:
                ;dc.b 1                  ; IDs of ally battle sprites which do not animate while idle
                ;dc.b 4
                ;dc.b 15                 ; Removed entries just because I noticed a problem when extending EnemyBSpriteIdleAnimate.
                dc.b 21                  ; To investigate in order to add more ally entries if needed.
                dc.b 23
                dc.b 25
                dc.b $FF
