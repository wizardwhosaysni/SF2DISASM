
; ASM FILE data\stats\allies\stats-sffcmd\allystats06-cynthia.asm :
; Ally stats 06 : Cynthia
AllyStats06:    forClass PRST
                hpGrowth 5, 48, LINEAR
                mpGrowth 5, 56, LINEAR
                atkGrowth 5, 26, LINEAR
                defGrowth 6, 27, LINEAR
                agiGrowth 6, 29, LINEAR
                spellList &
                    1, HEAL, &
                    5, HEAL|LV2, &
                    8, BLAST, &
                    12, BOOST, &
                    16, BLAST|LV2, &
                    22, HEAL|LV3, &
                    26, BLAST|LV3, &
                    30, BOOST|LV2, &
                    33, AURA, &
                    37, BLAST|LV4, &
                    41, AURA|LV2, &
                    55, AURA|LV3, &
                    60, AURA|LV4
                    
                forClass VICR
                hpGrowth 33, 92, LATE
                mpGrowth 38, 91, MIDDLE
                atkGrowth 19, 23, MIDDLE
                defGrowth 20, 45, EARLYANDLATE
                agiGrowth 21, 62, LINEAR
                useFirstSpellList
                    
