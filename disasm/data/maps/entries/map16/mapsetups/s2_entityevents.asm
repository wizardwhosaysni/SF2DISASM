
; ASM FILE data\maps\entries\map16\mapsetups\s2_entityevents.asm :
; 0x51E32..0x51EE4 : 
ms_map16_EntityEvents:
                msEntityEvent 148, DOWN, Map16_EntityEvent0-ms_map16_EntityEvents
                msDefaultEntityEvent Map16_DefaultEntityEvent-ms_map16_EntityEvents

; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent0:
                
                 
                txt     $360            ; "King Galam changed when the{N}messenger was found dead.{W2}"
                txt     $361            ; "He groaned and suddenly{N}opened his eyes!{W2}"
                txt     $362            ; "Terrible...so terrible!{N}His face was not human!{W2}"
                txt     $363            ; "I'm sorry!{N}Please forget about it!{W2}"
                txt     $364            ; "I don't want him to kill me!{W1}"
                rts

    ; End of function Map16_297_EntityEvent0


; =============== S U B R O U T I N E =======================================

Map16_EntityEvent0:
                
                jsr     j_ChurchMenuActions
                rts

    ; End of function Map16_EntityEvent0


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent2:
                
                 
                txt     $365            ; "We have many people to{N}send to the jail today.{N}Why?"
                rts

    ; End of function Map16_297_EntityEvent2


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent3:
                
                rts

    ; End of function Map16_297_EntityEvent3


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent4:
                
                 
                txt     $34C            ; "I saw them!  I saw them!{N}Many soldiers went through{N}the gate.{W2}"
                txt     $34D            ; "Where were they going?{N}To Granseal?{W2}"
                txt     $34E            ; "No way!  We are allies!{W1}"
                rts

    ; End of function Map16_297_EntityEvent4


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent5:
                
                 
                txt     $34F            ; "Are you tourists?{N}From Granseal!  They say{N}it's a nice place.{W1}"
                rts

    ; End of function Map16_297_EntityEvent5


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent6:
                
                 
                txt     $350            ; "The area north of Galam is{N}a wasteland.{W2}"
                txt     $351            ; "I heard that many monsters{N}are wandering around there.{W1}"
                rts

    ; End of function Map16_297_EntityEvent6


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent7:
                
                move.b  #1,((CURRENT_SHOP_INDEX-$1000000)).w
                jsr     j_ShopMenuActions
                rts

    ; End of function Map16_297_EntityEvent7


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent8:
                
                 
                txt     $352            ; "The priest is out now.{N}Since he decided to marry{N}{NAME;25}, he has been{W2}{N}neglectful of his duties.{W1}"
                rts

    ; End of function Map16_297_EntityEvent8


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent9:
                
                 
                txt     $353            ; "I like trees!!{W1}"
                rts

    ; End of function Map16_297_EntityEvent9


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent10:
                
                 
                txt     $354            ; "Young men like you are{N}not my guests.{N}Go away!{W1}"
                rts

    ; End of function Map16_297_EntityEvent10


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent11:
                
                 
                txt     $355            ; "(Hiccup)...I...I want to go{N}on a trip around the world.{W2}"
                txt     $356            ; "But...(hiccup), the north{N}gate of Galam won't open.{W2}"
                txt     $357            ; "I don't want to live my{N}entire life on such a small{N}island.{W1}"
                rts

    ; End of function Map16_297_EntityEvent11


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent12:
                
                 
                txt     $358            ; "Sorry, we never open this{N}gate.{W1}"
                rts

    ; End of function Map16_297_EntityEvent12


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent13:
                
                 
                txt     $359            ; "I heard the Princess of{N}Granseal is very beautiful.{W2}"
                txt     $35A            ; "I hope to see her someday.{W1}"
                rts

    ; End of function Map16_297_EntityEvent13


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent14:
                
                 
                txt     $35B            ; "I'm writing in my diary.{W2}"
                txt     $35C            ; "I'm writing about the day{N}"
                txt     $35D            ; "when the war between Galam{N}and Granseal took place.{W1}"
                txt     $35E            ; "A record must be kept.{W1}"
                rts

    ; End of function Map16_297_EntityEvent14


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent15:
                
                 
                txt     $35F            ; "I want to be a fine{N}soldier like {NAME;28}{N}when I grow up.{W1}"
                rts

    ; End of function Map16_297_EntityEvent15


; =============== S U B R O U T I N E =======================================

Map16_297_EntityEvent16:
                
                move.b  #$10,((CURRENT_SHOP_INDEX-$1000000)).w
                jsr     j_ShopMenuActions
                rts

    ; End of function Map16_297_EntityEvent16


; =============== S U B R O U T I N E =======================================

Map16_DefaultEntityEvent:
                
                rts

    ; End of function Map16_DefaultEntityEvent

