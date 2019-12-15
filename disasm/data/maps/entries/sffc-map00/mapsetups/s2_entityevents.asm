
ms_sffcmap00_EntityEvents:
                msEntityEvent 128, UP, SffcMap00_EntityEvent0-ms_sffcmap00_EntityEvents
                msEntityEvent 129, UP, SffcMap00_EntityEvent1-ms_sffcmap00_EntityEvents
                msEntityEvent 130, DOWN, SffcMap00_EntityEvent2-ms_sffcmap00_EntityEvents
                msDefaultEntityEvent SffcMap00_DefaultEntityEvent-ms_sffcmap00_EntityEvents

; =============== S U B R O U T I N E =======================================

SffcMap00_EntityEvent0:
                ; currently set a new shop every 2 battles, to refine when shop detail will be defined
                move.b  #0,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+1
                beq.s   @shop 
                move.b  #1,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+3
                beq.s   @shop 
                move.b  #2,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+5
                beq.s   @shop 
                move.b  #3,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+7
                beq.s   @shop 
                move.b  #4,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+9
                beq.s   @shop 
                move.b  #5,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+11
                beq.s   @shop 
                move.b  #6,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+13
                beq.s   @shop 
                move.b  #7,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+15
                beq.s   @shop 
                move.b  #8,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+17
                beq.s   @shop 
                move.b  #9,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+19
                beq.s   @shop 
                move.b  #10,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+21
                beq.s   @shop 
                move.b  #11,((CURRENT_SHOP_INDEX-$1000000)).w
@shop:              
                jsr     j_ShopActions
                rts

	; End of function Map00_EntityEvent0


; =============== S U B R O U T I N E =======================================

SffcMap00_EntityEvent1:
                ; currently set a new shop every 2 battles, to refine when shop detail will be defined
                move.b  #20,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+1
                beq.s   @shop 
                move.b  #21,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+3
                beq.s   @shop 
                move.b  #22,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+5
                beq.s   @shop 
                move.b  #23,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+7
                beq.s   @shop 
                move.b  #24,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+9
                beq.s   @shop 
                move.b  #25,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+11
                beq.s   @shop 
                move.b  #26,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+13
                beq.s   @shop 
                move.b  #27,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+15
                beq.s   @shop 
                move.b  #28,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+17
                beq.s   @shop 
                move.b  #29,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+19
                beq.s   @shop 
                move.b  #30,((CURRENT_SHOP_INDEX-$1000000)).w
                chkFlg  $1F4+21
                beq.s   @shop 
                move.b  #31,((CURRENT_SHOP_INDEX-$1000000)).w
@shop:              
                jsr     j_ShopActions
                rts

	; End of function Map00_EntityEvent1


; =============== S U B R O U T I N E =======================================

SffcMap00_EntityEvent2:
                
                jsr     j_ChurchActions
                rts

	; End of function Map00_EntityEvent2


; =============== S U B R O U T I N E =======================================

SffcMap00_DefaultEntityEvent:
                
                txt 3
                rts

	; End of function Map00_DefaultEntityEvent

