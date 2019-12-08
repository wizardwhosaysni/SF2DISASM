
; ASM FILE data\stats\allies\stats-sffcmd\allystats07-ruburan.asm :
; Ally stats 07 : Ruburan
AllyStats07:    forClass THIF
                hpGrowth 8, 42, LATE
                mpGrowth 0, 0, NONE
                atkGrowth 5, 45, LATE
                defGrowth 6, 38, LATE
                agiGrowth 6, 38, LATE
                spellList 
                    
                forClass NINJ
                hpGrowth 28, 90, LATE
                mpGrowth 0, 50, LINEAR
                atkGrowth 29, 53, LATE
                defGrowth 25, 82, LATE
                agiGrowth 25, 72, LATE
                spellList &
                    24, KATON, &
                    29, KATON|LV2, &
                    34, RAIJIN, &
                    39, RAIJIN|LV2, &
                    45, KATON|LV3, &
                    52, RAIJIN|LV3
                    
