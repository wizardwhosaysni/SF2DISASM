
; ASM FILE data\stats\enemies\enemydefs.asm :
; 0x1B1A66..0x1B30EE : Enemy definitions
EnemyDefs:      ; spellPower     enum SpellPower : SPELLPOWER_*
; baseResistance enum Resistance : RESISTANCE_*
; baseProwess    enum Prowess : PROWESS_*
; items          enum Items : ITEM_*
; spells         enum Spells : SPELL_*
; moveType       enum MoveTypes : MOVETYPE_*
    
                unknownByte 0           ; OOZE
                spellPower REGULAR
                level 0
                maxHp 9
                maxMp 0
                baseAtk 9
                baseDef 6
                baseAgi 5
                baseMov 4
                baseResistance &
                    ICE_MAJOR|FIRE_WEAKNESS
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8224
                    
                unknownByte 4           ; GOBLIN
                spellPower REGULAR
                level 6
                maxHp 18
                maxMp 0
                baseAtk 14
                baseDef 13
                baseAgi 13
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    SHORT_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8224
                    
                unknownByte 12          ; ORC
                spellPower REGULAR
                level 17
                maxHp 30
                maxMp 0
                baseAtk 22
                baseDef 37
                baseAgi 27
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    STEEL_LANCE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8224
                    
                unknownByte 10          ; KRAKEN LEG
                spellPower REGULAR
                level 14
                maxHp 24
                maxMp 0
                baseAtk 31
                baseDef 26
                baseAgi 19
                baseMov 6
                baseResistance &
                    LIGHTNING_WEAKNESS|ICE_WEAKNESS|FIRE_MINOR
                baseProwess &
                    CRITICAL150_1IN4|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType AQUATIC
                unknownWord 8224
                    
                unknownByte 6           ; DARK DWARF
                spellPower REGULAR
                level 7
                maxHp 21
                maxMp 0
                baseAtk 18
                baseDef 17
                baseAgi 18
                baseMov 4
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    SHORT_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8224
                    
                unknownByte 5           ; GREEN OOZE
                spellPower REGULAR
                level 5
                maxHp 17
                maxMp 0
                baseAtk 18
                baseDef 12
                baseAgi 12
                baseMov 4
                baseResistance &
                    ICE_MAJOR|FIRE_WEAKNESS
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8224
                    
                unknownByte 20          ; WORM
                spellPower ENHANCED
                level 25
                maxHp 45
                maxMp 0
                baseAtk 60
                baseDef 40
                baseAgi 34
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL_POISON|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType STEALTH
                unknownWord 8192
                    
                unknownByte 22          ; ORC LORD
                spellPower ENHANCED
                level 27
                maxHp 46
                maxMp 13
                baseAtk 40
                baseDef 44
                baseAgi 37
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    HEAVY_LANCE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DISPEL, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8224
                    
                unknownByte 21          ; DARK KNIGHT
                spellPower ENHANCED
                level 27
                maxHp 50
                maxMp 0
                baseAtk 36
                baseDef 48
                baseAgi 40
                baseMov 7
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN4|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    CHROME_LANCE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType CENTAUR
                unknownWord 8192
                    
                unknownByte 7           ; HOBGOBLIN
                spellPower REGULAR
                level 9
                maxHp 21
                maxMp 0
                baseAtk 10
                baseDef 19
                baseAgi 19
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    MIDDLE_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8224
                    
                unknownByte 18          ; HELL SOLDIER
                spellPower ENHANCED
                level 23
                maxHp 35
                maxMp 17
                baseAtk 31
                baseDef 46
                baseAgi 34
                baseMov 4
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    LARGE_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    ATTACK, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8192
                    
                unknownByte 9           ; GOLEM
                spellPower REGULAR
                level 12
                maxHp 24
                maxMp 0
                baseAtk 28
                baseDef 24
                baseAgi 19
                baseMov 4
                baseResistance &
                    LIGHTNING_MINOR|ICE_MAJOR|FIRE_WEAKNESS|STATUS_IMMUNITY
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8224
                    
                unknownByte 17          ; SKELETON
                spellPower ENHANCED
                level 21
                maxHp 30
                maxMp 0
                baseAtk 26
                baseDef 40
                baseAgi 30
                baseMov 6
                baseResistance &
                    WIND_WEAKNESS|LIGHTNING_MINOR|ICE_MAJOR|FIRE_WEAKNESS|STATUS_IMMUNITY
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    BROAD_SWORD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8224
                    
                unknownByte 10          ; TENTACLE LEG
                spellPower REGULAR
                level 14
                maxHp 24
                maxMp 0
                baseAtk 31
                baseDef 26
                baseAgi 19
                baseMov 6
                baseResistance &
                    LIGHTNING_WEAKNESS|ICE_WEAKNESS|FIRE_MINOR
                baseProwess &
                    CRITICAL150_1IN4|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType AQUATIC
                unknownWord 8224
                    
                unknownByte 33          ; HYDRA
                spellPower ENHANCED
                level 39
                maxHp 70
                maxMp 0
                baseAtk 96
                baseDef 62
                baseAgi 50
                baseMov 4
                baseResistance &
                    ICE_WEAKNESS
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN8|COUNTER_1IN8
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType STEALTH
                unknownWord 8224
                    
                unknownByte 28          ; EXECUTOR
                spellPower ENHANCED
                level 33
                maxHp 64
                maxMp 0
                baseAtk 46
                baseDef 46
                baseAgi 45
                baseMov 6
                baseResistance &
                    WIND_MINOR|LIGHTNING_MINOR|STATUS_MINOR
                baseProwess &
                    CRITICAL_SILENCE|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    BATTLE_SWORD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8192
                    
                unknownByte 25          ; STONE GOLEM
                spellPower ENHANCED
                level 31
                maxHp 55
                maxMp 0
                baseAtk 76
                baseDef 51
                baseAgi 41
                baseMov 4
                baseResistance &
                    LIGHTNING_MINOR|ICE_MAJOR|FIRE_WEAKNESS|STATUS_IMMUNITY
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8224
                    
                unknownByte 27          ; SANDWORM
                spellPower ENHANCED
                level 32
                maxHp 58
                maxMp 0
                baseAtk 78
                baseDef 46
                baseAgi 43
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL_POISON|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType STEALTH
                unknownWord 8224
                    
                unknownByte 3           ; ARCH KNIGHT
                spellPower REGULAR
                level 3
                maxHp 16
                maxMp 0
                baseAtk 9
                baseDef 11
                baseAgi 12
                baseMov 7
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    SHORT_SPEAR|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType CENTAUR
                unknownWord 8224
                    
                unknownByte 17          ; SKULL WARRIOR
                spellPower ENHANCED
                level 21
                maxHp 30
                maxMp 0
                baseAtk 26
                baseDef 40
                baseAgi 30
                baseMov 6
                baseResistance &
                    WIND_WEAKNESS|LIGHTNING_MINOR|ICE_MAJOR|FIRE_WEAKNESS|STATUS_IMMUNITY
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    BROAD_SWORD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8224
                    
                unknownByte 37          ; PYROHYDRA
                spellPower ENHANCED
                level 44
                maxHp 80
                maxMp 0
                baseAtk 101
                baseDef 53
                baseAgi 55
                baseMov 4
                baseResistance &
                    ICE_WEAKNESS|FIRE_MAJOR
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN8|COUNTER_1IN8
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FLAME|LV3, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType STEALTH
                unknownWord 8192
                    
                unknownByte 30          ; DARK GENERAL
                spellPower ENHANCED
                level 35
                maxHp 58
                maxMp 0
                baseAtk 51
                baseDef 51
                baseAgi 44
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    ATLAS_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8192
                    
                unknownByte 35          ; REAPER
                spellPower ENHANCED
                level 41
                maxHp 82
                maxMp 31
                baseAtk 60
                baseDef 49
                baseAgi 57
                baseMov 6
                baseResistance &
                    STATUS_MAJOR
                baseProwess &
                    CRITICAL_MUDDLE|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    BATTLE_SWORD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    MUDDLE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8192
                    
                unknownByte 57          ; HUNTER GOBLIN
                spellPower REGULAR
                level 7
                maxHp 24
                maxMp 0
                baseAtk 8
                baseDef 12
                baseAgi 14
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    IRON_ARROW|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType STEALTH_ARCHER
                unknownWord 8208
                    
                unknownByte 59          ; KRAKEN ARM
                spellPower REGULAR
                level 16
                maxHp 30
                maxMp 0
                baseAtk 34
                baseDef 28
                baseAgi 22
                baseMov 6
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType AQUATIC
                unknownWord 8208
                    
                unknownByte 60          ; BRASS LOADER
                spellPower REGULAR
                level 17
                maxHp 33
                maxMp 0
                baseAtk 15
                baseDef 24
                baseAgi 23
                baseMov 4
                baseResistance &
                    LIGHTNING_WEAKNESS|STATUS_MINOR
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    STEEL_ARROW|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType BRASS_GUNNER
                unknownWord 8208
                    
                unknownByte 62          ; DARK SNIPER
                spellPower ENHANCED
                level 24
                maxHp 38
                maxMp 0
                baseAtk 11
                baseDef 37
                baseAgi 35
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    HYPER_CANNON|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType STEALTH_ARCHER
                unknownWord 8208
                    
                unknownByte 64          ; BOWRIDER
                spellPower ENHANCED
                level 33
                maxHp 61
                maxMp 0
                baseAtk 44
                baseDef 55
                baseAgi 44
                baseMov 7
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    HYPER_CANNON|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType CENTAUR_ARCHER
                unknownWord 8208
                    
                unknownByte 59          ; TENTACLE ARM
                spellPower REGULAR
                level 16
                maxHp 30
                maxMp 0
                baseAtk 34
                baseDef 28
                baseAgi 22
                baseMov 6
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType AQUATIC
                unknownWord 8208
                    
                unknownByte 65          ; BRASS GUNNER
                spellPower ENHANCED
                level 38
                maxHp 60
                maxMp 0
                baseAtk 48
                baseDef 56
                baseAgi 45
                baseMov 4
                baseResistance &
                    LIGHTNING_WEAKNESS|STATUS_MAJOR
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN16|COUNTER_1IN32
                items &
                    BUSTER_SHOT|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType BRASS_GUNNER
                unknownWord 8208
                    
                unknownByte 66          ; CANNON KNIGHT
                spellPower ENHANCED
                level 41
                maxHp 67
                maxMp 0
                baseAtk 59
                baseDef 57
                baseAgi 55
                baseMov 7
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN16|COUNTER_1IN32
                items &
                    BUSTER_SHOT|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType CENTAUR_ARCHER
                unknownWord 8208
                    
                unknownByte 40          ; GIANT BAT
                spellPower REGULAR
                level 0
                maxHp 11
                maxMp 0
                baseAtk 12
                baseDef 8
                baseAgi 8
                baseMov 6
                baseResistance &
                    WIND_WEAKNESS
                baseProwess &
                    CRITICAL_SLEEP|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType FLYING
                unknownWord 8192
                    
                unknownByte 0           ; DARK SMOKE
                spellPower REGULAR
                level 7
                maxHp 18
                maxMp 20
                baseAtk 18
                baseDef 13
                baseAgi 141
                baseMov 6
                baseResistance &
                    WIND_WEAKNESS|ICE_MAJOR|FIRE_WEAKNESS|STATUS_MAJOR
                baseProwess &
                    CRITICAL_SILENCE|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DISPEL, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType HOVERING
                unknownWord 0
                    
                unknownByte 41          ; VAMPIRE BAT
                spellPower REGULAR
                level 7
                maxHp 20
                maxMp 8
                baseAtk 21
                baseDef 16
                baseAgi 16
                baseMov 6
                baseResistance NONE
                baseProwess &
                    CRITICAL_POISON|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType FLYING
                unknownWord 8192
                    
                unknownByte 44          ; HARPY
                spellPower REGULAR
                level 17
                maxHp 32
                maxMp 10
                baseAtk 39
                baseDef 38
                baseAgi 29
                baseMov 7
                baseResistance &
                    WIND_WEAKNESS|FIRE_WEAKNESS
                baseProwess &
                    CRITICAL_POISON|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DISPEL, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType FLYING
                unknownWord 8240
                    
                unknownByte 50          ; MIST DEMON
                spellPower ENHANCED
                level 36
                maxHp 68
                maxMp 28
                baseAtk 80
                baseDef 41
                baseAgi 51
                baseMov 6
                baseResistance &
                    WIND_WEAKNESS|ICE_MAJOR|STATUS_MINOR
                baseProwess &
                    CRITICAL_SILENCE|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    MUDDLE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType HOVERING
                unknownWord 8208
                    
                unknownByte 43          ; GARGOYLE
                spellPower REGULAR
                level 15
                maxHp 29
                maxMp 0
                baseAtk 31
                baseDef 23
                baseAgi 21
                baseMov 6
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType FLYING
                unknownWord 8240
                    
                unknownByte 47          ; HARPY QUEEN
                spellPower ENHANCED
                level 27
                maxHp 53
                maxMp 20
                baseAtk 65
                baseDef 39
                baseAgi 43
                baseMov 7
                baseResistance &
                    WIND_WEAKNESS|FIRE_WEAKNESS
                baseProwess &
                    CRITICAL_SILENCE|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType FLYING
                unknownWord 8208
                    
                unknownByte 45          ; LESSER DEMON
                spellPower ENHANCED
                level 22
                maxHp 40
                maxMp 21
                baseAtk 49
                baseDef 37
                baseAgi 32
                baseMov 6
                baseResistance &
                    STATUS_MINOR
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE|LV3, &
                    BOOST|LV2, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType FLYING
                unknownWord 8240
                    
                unknownByte 52          ; DEMON
                spellPower ENHANCED
                level 40
                maxHp 75
                maxMp 38
                baseAtk 90
                baseDef 50
                baseAgi 55
                baseMov 6
                baseResistance &
                    LIGHTNING_WEAKNESS|FIRE_MINOR|STATUS_MAJOR
                baseProwess &
                    CRITICAL_MAGIC_DRAIN|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BOLT|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType FLYING
                unknownWord 8208
                    
                unknownByte 51          ; RED DRAGON
                spellPower ENHANCED
                level 38
                maxHp 66
                maxMp 0
                baseAtk 85
                baseDef 50
                baseAgi 53
                baseMov 6
                baseResistance &
                    ICE_MAJOR|FIRE_WEAKNESS
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    SNOW, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType FLYING
                unknownWord 8208
                    
                unknownByte 67          ; DARK MAGE
                spellPower REGULAR
                level 3
                maxHp 14
                maxMp 5
                baseAtk 8
                baseDef 9
                baseAgi 11
                baseMov 5
                baseResistance &
                    FIRE_MINOR
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    SHORT_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType MAGE
                unknownWord 8208
                    
                unknownByte 68          ; WITCH
                spellPower REGULAR
                level 7
                maxHp 21
                maxMp 10
                baseAtk 9
                baseDef 12
                baseAgi 15
                baseMov 6
                baseResistance &
                    ICE_MINOR
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    BRONZE_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType MAGE
                unknownWord 8208
                    
                unknownByte 69          ; MASTER MAGE
                spellPower REGULAR
                level 14
                maxHp 28
                maxMp 14
                baseAtk 11
                baseDef 18
                baseAgi 22
                baseMov 5
                baseResistance &
                    FIRE_MINOR
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    IRON_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType MAGE
                unknownWord 8208
                    
                unknownByte 70          ; HIGH WITCH
                spellPower REGULAR
                level 17
                maxHp 29
                maxMp 17
                baseAtk 19
                baseDef 31
                baseAgi 29
                baseMov 6
                baseResistance &
                    ICE_MINOR
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    POWER_STICK|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType MAGE
                unknownWord 8208
                    
                unknownByte 71          ; MISHAELA DOLL
                spellPower ENHANCED
                level 20
                maxHp 30
                maxMp 26
                baseAtk 25
                baseDef 36
                baseAgi 35
                baseMov 6
                baseResistance &
                    ICE_MINOR|STATUS_IMMUNITY
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    POWER_STICK|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType MAGE
                unknownWord 8208
                    
                unknownByte 76          ; PRIEST
                spellPower REGULAR
                level 3
                maxHp 15
                maxMp 7
                baseAtk 11
                baseDef 11
                baseAgi 13
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    SHORT_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    HEAL, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType HEALER
                unknownWord 12288
                    
                unknownByte 0           ; SHAMAN
                spellPower ENHANCED
                level 32
                maxHp 56
                maxMp 46
                baseAtk 45
                baseDef 42
                baseAgi 40
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL_MAGIC_DRAIN|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    WISH_STAFF|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    AURA|LV2, &
                    BLAST|LV3, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType HEALER
                unknownWord 12288
                    
                unknownByte 79          ; HIGH PRIEST
                spellPower REGULAR
                level 17
                maxHp 30
                maxMp 29
                baseAtk 20
                baseDef 31
                baseAgi 23
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    POWER_STICK|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    HEAL|LV3, &
                    BLAST|LV2, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType HEALER
                unknownWord 12288
                    
                unknownByte 0           ; DARK SHAMAN
                spellPower ENHANCED
                level 42
                maxHp 72
                maxMp 60
                baseAtk 64
                baseDef 54
                baseAgi 51
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL_SILENCE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    HOLY_STAFF|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    AURA|LV3, &
                    BLAST|LV4, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType HEALER
                unknownWord 12288
                    
                unknownByte 0           ; MAGUS
                spellPower ENHANCED
                level 70
                maxHp 180
                maxMp 120
                baseAtk 78
                baseDef 51
                baseAgi 191
                baseMov 6
                baseResistance &
                    WIND_MAJOR|LIGHTNING_MAJOR|ICE_MAJOR|FIRE_MAJOR|STATUS_IMMUNITY
                baseProwess &
                    CRITICAL125_1IN4|DOUBLE_1IN8|COUNTER_1IN8
                items &
                    FLAIL|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE|LV4, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType MAGE
                unknownWord 4096
                    
                unknownByte 0           ; EIKU
                spellPower ENHANCED
                level 50
                maxHp 99
                maxMp 0
                baseAtk 42
                baseDef 52
                baseAgi 186
                baseMov 6
                baseResistance &
                    WIND_MINOR|LIGHTNING_MINOR|ICE_MINOR|FIRE_MINOR|STATUS_IMMUNITY
                baseProwess &
                    CRITICAL125_1IN4|DOUBLE_1IN4|COUNTER_1IN4
                items &
                    IRON_BALL|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 4096
                    
                unknownByte 0           ; MISHAELA
                spellPower ENHANCED
                level 40
                maxHp 80
                maxMp 65
                baseAtk 73
                baseDef 50
                baseAgi 180
                baseMov 5
                baseResistance &
                    WIND_MINOR|LIGHTNING_MINOR|FIRE_MAJOR|STATUS_IMMUNITY
                baseProwess &
                    CRITICAL125_1IN4|DOUBLE_1IN8|COUNTER_1IN4
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BOLT|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType MAGE
                unknownWord 4096
                    
                unknownByte 0           ; LYNX
                spellPower ENHANCED
                level 80
                maxHp 200
                maxMp 160
                baseAtk 64
                baseDef 54
                baseAgi 195
                baseMov 6
                baseResistance &
                    WIND_MINOR|LIGHTNING_MINOR|ICE_MINOR|FIRE_MINOR|STATUS_IMMUNITY
                baseProwess &
                    CRITICAL_SLEEP|DOUBLE_1IN8|COUNTER_1IN4
                items &
                    COUNTER_SWORD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    ODDEYE, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType MAGE
                unknownWord 4096
                    
                unknownByte 0           ; MAX
                spellPower ENHANCED
                level 60
                maxHp 150
                maxMp 0
                baseAtk 42
                baseDef 59
                baseAgi 190
                baseMov 6
                baseResistance &
                    WIND_MINOR|LIGHTNING_MINOR|ICE_MINOR|FIRE_MINOR|STATUS_IMMUNITY
                baseProwess &
                    CRITICAL125_1IN4|DOUBLE_1IN4|COUNTER_1IN4
                items &
                    DARK_SWORD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 4096
                    
                unknownByte 0           ; EVIL STATUE
                spellPower ENHANCED
                level 40
                maxHp 62
                maxMp 0
                baseAtk 16
                baseDef 55
                baseAgi 44
                baseMov 0
                baseResistance &
                    ICE_MAJOR|FIRE_WEAKNESS|STATUS_IMMUNITY
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    LASER, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 4096
                    
                unknownByte 0           ; MISHAELA
                spellPower ENHANCED
                level 40
                maxHp 80
                maxMp 65
                baseAtk 73
                baseDef 50
                baseAgi 180
                baseMov 5
                baseResistance &
                    WIND_MINOR|LIGHTNING_MINOR|FIRE_MAJOR|STATUS_IMMUNITY
                baseProwess &
                    CRITICAL125_1IN4|DOUBLE_1IN8|COUNTER_1IN4
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BOLT|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType MAGE
                unknownWord 4096
                    
                unknownByte 0           ; DARKSOL'S RIGHT ARM
                spellPower ENHANCED
                level 99
                maxHp 500
                maxMp 180
                baseAtk 102
                baseDef 50
                baseAgi 203
                baseMov 0
                baseResistance &
                    STATUS_IMMUNITY
                baseProwess &
                    CRITICAL125_1IN4|DOUBLE_1IN4|COUNTER_1IN4
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DEMON|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 4096
                    
                unknownByte 0           ; DARKSOL'S LEFT ARM
                spellPower ENHANCED
                level 99
                maxHp 500
                maxMp 180
                baseAtk 102
                baseDef 50
                baseAgi 203
                baseMov 0
                baseResistance &
                    STATUS_IMMUNITY
                baseProwess &
                    CRITICAL125_1IN4|DOUBLE_1IN4|COUNTER_1IN4
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DEMON|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 4096
                    
                unknownByte 0           ; DARKSOL
                spellPower ENHANCED
                level 99
                maxHp 500
                maxMp 180
                baseAtk 102
                baseDef 50
                baseAgi 203
                baseMov 0
                baseResistance &
                    STATUS_IMMUNITY
                baseProwess &
                    CRITICAL125_1IN4|DOUBLE_1IN4|COUNTER_1IN4
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DEMON|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 4096
                    
                unknownByte 60          ; BRASS LOADER
                spellPower REGULAR
                level 17
                maxHp 33
                maxMp 0
                baseAtk 15
                baseDef 24
                baseAgi 23
                baseMov 4
                baseResistance &
                    LIGHTNING_WEAKNESS|STATUS_MINOR
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    STEEL_ARROW|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType BRASS_GUNNER
                unknownWord 8208
                    
                unknownByte 67          ; DARK MAGE
                spellPower REGULAR
                level 3
                maxHp 14
                maxMp 5
                baseAtk 8
                baseDef 9
                baseAgi 11
                baseMov 5
                baseResistance &
                    FIRE_MINOR
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    SHORT_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType MAGE
                unknownWord 8208
                    
                unknownByte 22          ; ORC LORD
                spellPower ENHANCED
                level 27
                maxHp 46
                maxMp 13
                baseAtk 40
                baseDef 44
                baseAgi 37
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    HEAVY_LANCE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DISPEL, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType REGULAR
                unknownWord 8224
                    
                unknownByte 64          ; BOWRIDER
                spellPower ENHANCED
                level 33
                maxHp 61
                maxMp 0
                baseAtk 44
                baseDef 55
                baseAgi 44
                baseMov 7
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    HYPER_CANNON|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType CENTAUR_ARCHER
                unknownWord 8208
                    
                unknownByte 69          ; MASTER MAGE
                spellPower REGULAR
                level 14
                maxHp 28
                maxMp 14
                baseAtk 11
                baseDef 18
                baseAgi 22
                baseMov 5
                baseResistance &
                    FIRE_MINOR
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    IRON_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType MAGE
                unknownWord 8208
                    
                unknownByte 0           ; SHAMAN
                spellPower ENHANCED
                level 32
                maxHp 56
                maxMp 46
                baseAtk 45
                baseDef 42
                baseAgi 40
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL_MAGIC_DRAIN|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    WISH_STAFF|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    AURA|LV2, &
                    BLAST|LV3, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType HEALER
                unknownWord 12288
                    
                unknownByte 64          ; BOWRIDER
                spellPower ENHANCED
                level 33
                maxHp 61
                maxMp 0
                baseAtk 44
                baseDef 55
                baseAgi 44
                baseMov 7
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    HYPER_CANNON|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType CENTAUR_ARCHER
                unknownWord 8208
                    
                unknownByte 0           ; SHAMAN
                spellPower ENHANCED
                level 32
                maxHp 56
                maxMp 46
                baseAtk 45
                baseDef 42
                baseAgi 40
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL_MAGIC_DRAIN|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    WISH_STAFF|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    AURA|LV2, &
                    BLAST|LV3, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType HEALER
                unknownWord 12288
                    
                unknownByte 47          ; HARPY QUEEN
                spellPower ENHANCED
                level 27
                maxHp 53
                maxMp 20
                baseAtk 65
                baseDef 39
                baseAgi 43
                baseMov 7
                baseResistance &
                    WIND_WEAKNESS|FIRE_WEAKNESS
                baseProwess &
                    CRITICAL_SILENCE|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType FLYING
                unknownWord 8208
                    
                unknownByte 79          ; HIGH PRIEST
                spellPower REGULAR
                level 17
                maxHp 30
                maxMp 29
                baseAtk 20
                baseDef 31
                baseAgi 23
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    POWER_STICK|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    HEAL|LV3, &
                    BLAST|LV2, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType HEALER
                unknownWord 12288
                    
                unknownByte 70          ; HIGH WITCH
                spellPower REGULAR
                level 17
                maxHp 29
                maxMp 17
                baseAtk 19
                baseDef 31
                baseAgi 29
                baseMov 6
                baseResistance &
                    ICE_MINOR
                baseProwess &
                    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    POWER_STICK|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType MAGE
                unknownWord 8208
                    
                unknownByte 66          ; CANNON KNIGHT
                spellPower ENHANCED
                level 41
                maxHp 67
                maxMp 0
                baseAtk 59
                baseDef 57
                baseAgi 55
                baseMov 7
                baseResistance NONE
                baseProwess &
                    CRITICAL150_1IN8|DOUBLE_1IN16|COUNTER_1IN32
                items &
                    BUSTER_SHOT|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType CENTAUR_ARCHER
                unknownWord 8208
                    
                unknownByte 0           ; DARK SHAMAN
                spellPower ENHANCED
                level 42
                maxHp 72
                maxMp 60
                baseAtk 64
                baseDef 54
                baseAgi 51
                baseMov 5
                baseResistance NONE
                baseProwess &
                    CRITICAL_SILENCE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    HOLY_STAFF|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    AURA|LV3, &
                    BLAST|LV4, &
                    NOTHING, &
                    NOTHING
                initialStatus 0
                moveType HEALER
                unknownWord 12288
                    
