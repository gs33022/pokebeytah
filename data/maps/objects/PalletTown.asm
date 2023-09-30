	object_const_def
	const PALLETTOWN_OAK
	const PALLETTOWN_GIRL
	const PALLETTOWN_FISHER

PalletTown_Object:
	db $b ; border block

	def_warp_events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE, 1
	warp_event 12, 11, OAKS_LAB, 2

	def_bg_events
	bg_event 15,  7, TEXT_PALLETTOWN_OAKSLAB_SIGN
	bg_event 13, 15, TEXT_PALLETTOWN_SIGN
	bg_event  7,  7, TEXT_PALLETTOWN_PLAYERSHOUSE_SIGN
	bg_event 11,  1, TEXT_PALLETTOWN_RIVALSHOUSE_SIGN

	def_object_events
	object_event  8,  5, SPRITE_OAK, STAY, UP, TEXT_PALLETTOWN_OAK
	object_event  5,  9, SPRITE_GIRL, WALK, ANY_DIR, TEXT_PALLETTOWN_GIRL
	object_event  9, 12, SPRITE_FISHER, WALK, ANY_DIR, TEXT_PALLETTOWN_FISHER

	def_warps_to PALLET_TOWN
