
; ASM FILE data\stats\allies\stats-sffcmd\allystats13-morton.asm :
; Ally stats 13 : Morton
AllyStats13:    forClass MMNK
                hpGrowth 29, 79, LINEAR
                mpGrowth 31, 65, LINEAR
                atkGrowth 19, 36, LINEAR
                defGrowth 19, 61, EARLYANDLATE
                agiGrowth 21, 62, LINEAR
                spellList &
                    1, HEAL, &
                    5, HEAL|LV2, &
                    7, BLAST, &
                    11, MUDDLE, &
                    18, BLAST|LV2, &
                    20, BOOST, &
                    36, MUDDLE|LV2, &
                    38, BLAST|LV3, &
                    41, HEAL|LV3, &
                    44, BOOST|LV2, &
                    47, BLAST|LV4, &
                    51, HEAL|LV4
                    
