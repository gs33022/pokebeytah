	object_const_def
	const VIRIDIANGYM_GIOVANNI
	const VIRIDIANGYM_COOLTRAINER_M
	const VIRIDIANGYM_GYM_GUIDE
	
ViridianGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 13, LAST_MAP, 5
	warp_event  5, 13, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_GIOVANNI, STAY, DOWN, TEXT_VIRIDIANGYM_YUJIROU, OPP_GIOVANNI, 3
	object_event  0, 10, SPRITE_COOLTRAINER_M, STAY, DOWN, TEXT_VIRIDIANGYM_COOLTRAINER_M, OPP_COOLTRAINER_M, 9
	object_event  7,  6, SPRITE_GYM_GUIDE, STAY, DOWN, TEXT_VIRIDIANGYM_GYM_GUIDE

	def_warps_to VIRIDIAN_GYM
