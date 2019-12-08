
; ASM FILE data\stats\allies\stats-sffcmd\allystats12-minto.asm :
; Ally stats 12 : Minto
AllyStats12:    forClass WIZ
                hpGrowth 21, 69, LINEAR
                mpGrowth 40, 80, LINEAR
                atkGrowth 16, 30, EARLYANDLATE
                defGrowth 19, 57, EARLY
                agiGrowth 24, 66, LINEAR
                spellList &
                    1, BLAZE, &
                    5, FREEZE, &
                    11, BLAZE|LV2, &
                    22, FREEZE|LV2, &
                    25, SLEEP, &
                    28, BOLT, &
                    31, FREEZE|LV3, &
                    35, BOLT|LV2, &
                    38, FREEZE|LV4, &
                    51, BLAZE|LV3, &
                    54, BOLT|LV3, &
                    56, BLAZE|LV4, &
                    60, BOLT|LV4
                    
