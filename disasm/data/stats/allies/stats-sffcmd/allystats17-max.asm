
; ASM FILE data\stats\allies\stats-sffcmd\allystats17-max.asm :
; Ally stats 17 : Max
AllyStats17:    forClass HERO
                hpGrowth 42, 102, LINEAR
                mpGrowth 14, 23, EARLY
                atkGrowth 28, 57, LINEAR
                defGrowth 25, 93, LINEAR
                agiGrowth 24, 57, EARLYANDLATE
                spellList &
                    1, EGRESS, &
                    22, BOLT, &
                    31, BOLT|LV2, &
                    42, BOLT|LV3, &
                    51, BOLT|LV4
                    
