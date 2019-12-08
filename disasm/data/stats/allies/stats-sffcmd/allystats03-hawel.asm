
; ASM FILE data\stats\allies\stats-sffcmd\allystats03-hawel.asm :
; Ally stats 03 : Hawel
AllyStats03:    forClass MAGE
                hpGrowth 10, 34, LINEAR
                mpGrowth 7, 54, EARLY
                atkGrowth 4, 18, LINEAR
                defGrowth 4, 26, LINEAR
                agiGrowth 6, 42, LINEAR
                spellList &
                    1, BLAZE, &
                    5, BLAZE|LV2, &
                    9, MUDDLE, &
                    13, DISPEL, &
                    18, DESOUL, &
                    22, BLAZE|LV3, &
                    25, MUDDLE|LV2, &
                    29, DESOUL|LV2, &
                    35, BLAZE|LV4
                    
                forClass WIZ
                hpGrowth 26, 77, LATE
                mpGrowth 40, 83, LINEAR
                atkGrowth 13, 28, LINEAR
                defGrowth 18, 57, LINEAR
                agiGrowth 29, 83, EARLYANDLATE
                useFirstSpellList
                    
