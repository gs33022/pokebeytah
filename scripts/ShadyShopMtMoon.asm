ShadyShopMtMoon_Script:
	jp EnableAutoTextBoxDrawing
	
ShadyShopMtMoon_TextPointers:
	def_text_pointers
	dw_const ShadyShopMtMoonDealerText,        TEXT_SHADYSHOPMTMOON_DEALER
	
ShadyShopMtMoonDealerText:
	text_asm
	ld hl, .ShadyShopMtMoonDealerText
	call PrintText
	ld [wCurrentMenuItem], a
	ld [wListScrollOffset], a
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call WideYesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .choseNo
	ldh [hMoney], a
	ldh [hMoney + 2], a
	ld a, $5
	ldh [hMoney + 1], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, .NoMoneyText
	jr .printText
.enoughMoney
	lb bc, MAGIKARP, 5
	call GivePokemon
	jr nc, .done
	xor a
	ld [wPriceTemp], a
	ld [wPriceTemp + 2], a
	ld a, $5
	ld [wPriceTemp + 1], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	jr .done
.choseNo
	ld hl, .BackText
	jr .printText
.alreadyBoughtMagikarp
	ld hl, .ShadyShopMtMoonDealerText
.printText
	call PrintText
.done
	jp TextScriptEnd
	
.MonItemList:
	table_width 1, .MonItemList
	db NIDORAN_M
	db NIDORAN_F
	db PIDGEY
	db MAGIKARP
	db CATERPIE
	db JIGGLYPUFF
	db BELLSPROUT
	db CHEEP
	db -1 ; end
	assert_table_length NUM_BADGES +1

.ShadyShopMtMoonDealerText
	text_far _ShadyShopMtMoonDealerText
	text_end

.BackText
	text_far _ShadyShopMtMoonDealerBackText
	text_end

.NoMoneyText
	text_far _ShadyShopMtMoonDealerNoMoneyText
	text_end
	
.WhichMonTextPtr
	text_far .MonItemList
	text_end