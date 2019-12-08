
; ASM FILE data\stats\allies\promotions-sffcmd.asm :
; Promotion definitions table
Promotions:     
; promotionSection enum Classes : CLASS_*
; promotionItems   enum Items : ITEM_*
    
                promotionSection &      ; Regular base classes
                    SDMN, KNTE, WARR, MAGE, ACHR, MONK, PRST, THIF, BDMN, DGSD_BASE, SMRI_BASE, GDVL_BASE
                    
                promotionSection &      ; Regular promoted classes
                    HERO, PLDN, GLDT, WIZ, SNIP, MMNK, VICR, NINJ, BDBT, DGSD, SMRI, GDVL
                    
                promotionSection        ; Special base classes
                    ; NONE
                    
                promotionSection        ; Special promoted classes
                    ; NONE
                    
                promotionItems          ; Special promotion items
                    ; NONE
