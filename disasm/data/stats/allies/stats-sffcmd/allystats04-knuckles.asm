
; ASM FILE data\stats\allies\stats-sffcmd\allystats04-knuckles.asm :
; Ally stats 04 : Knuckles
AllyStats04:    forClass MONK
                hpGrowth 11, 41, LINEAR
                mpGrowth 10, 42, EARLY
                atkGrowth 6, 26, LINEAR
                defGrowth 5, 25, LINEAR
                agiGrowth 5, 31, LINEAR
                spellList &
                    1, HEAL, &
                    4, DETOX, &
                    7, HEAL|LV2, &
                    10, BLAST, &
                    13, DETOX|LV2, &
                    16, BLAST|LV2, &
                    19, SLOW, &
                    22, HEAL|LV3, &
                    25, BLAST|LV3, &
                    29, SLOW|LV2, &
                    33, DETOX|LV3, &
                    36, BLAST|LV4, &
                    40, HEAL|LV4, &
                    45, DETOX|LV4
                    
                forClass MMNK
                hpGrowth 30, 84, LINEAR
                mpGrowth 23, 58, LINEAR
                atkGrowth 19, 50, LINEAR
                defGrowth 18, 69, LATE
                agiGrowth 22, 61, MIDDLE
                useFirstSpellList
                    
