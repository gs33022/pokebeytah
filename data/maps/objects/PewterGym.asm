	object_const_def
	const PEWTERGYM_BROCK
	const PEWTERGYM_HIKER
	const PEWTERGYM_HIKER2
	const PEWTERGYM_GYM_GUIDE

PewterGym_Object:
	db $0 ; border block

	def_warp_events
	warp_event  4, 13, LAST_MAP, 3
	warp_event  5, 13, LAST_MAP, 3

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_SUPER_NERD, STAY, DOWN, TEXT_PEWTERGYM_BROCK, OPP_BROCK, 1
	object_event  5,  8, SPRITE_HIKER, STAY, UP, TEXT_PEWTERGYM_HIKER, OPP_HIKER, 15
	object_event  5,  4, SPRITE_HIKER, STAY, DOWN, TEXT_PEWTERGYM_HIKER2, OPP_HIKER, 16
	object_event  3, 10, SPRITE_GYM_GUIDE, STAY, DOWN, TEXT_PEWTERGYM_GYM_GUIDE

	def_warps_to PEWTER_GYM
