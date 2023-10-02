	object_const_def
	const PEWTERCITY_COOLTRAINER_F
	const PEWTERCITY_COOLTRAINER_M
	const PEWTERCITY_SUPER_NERD1
	const PEWTERCITY_SUPER_NERD2
	const PEWTERCITY_YOUNGSTER

PewterCity_Object:
	db $a ; border block

	def_warp_events
	warp_event  6, 15, MUSEUM_1F, 1
	warp_event 24,  2, MUSEUM_1F, 3
	warp_event 16,  5, PEWTER_GYM, 1
	warp_event  5, 25, PEWTER_NIDORAN_HOUSE, 1
	warp_event 25, 15, PEWTER_MART, 1
	warp_event 15, 21, PEWTER_SPEECH_HOUSE, 1
	warp_event 29, 15, PEWTER_POKECENTER, 1

	def_bg_events
	bg_event 19, 29, TEXT_PEWTERCITY_TRAINER_TIPS
	bg_event 19, 16, TEXT_PEWTERCITY_POLICE_NOTICE_SIGN
	bg_event 26, 15, TEXT_PEWTERCITY_MART_SIGN
	bg_event 30, 15, TEXT_PEWTERCITY_POKECENTER_SIGN
	bg_event  7, 17, TEXT_PEWTERCITY_MUSEUM_SIGN
	bg_event 17,  7, TEXT_PEWTERCITY_GYM_SIGN
	bg_event 25, 23, TEXT_PEWTERCITY_SIGN

	def_object_events
	object_event 13, 14, SPRITE_COOLTRAINER_F, STAY, NONE, TEXT_PEWTERCITY_COOLTRAINER_F
	object_event 17, 25, SPRITE_COOLTRAINER_M, STAY, NONE, TEXT_PEWTERCITY_COOLTRAINER_M
	object_event 31, 26, SPRITE_SUPER_NERD, STAY, NONE, TEXT_PEWTERCITY_SUPER_NERD1
	object_event 15, 18, SPRITE_SUPER_NERD, WALK, LEFT_RIGHT, TEXT_PEWTERCITY_SUPER_NERD2
	object_event 35, 16, SPRITE_YOUNGSTER, STAY, DOWN, TEXT_PEWTERCITY_YOUNGSTER

	def_warps_to PEWTER_CITY
