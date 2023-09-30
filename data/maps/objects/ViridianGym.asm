	object_const_def
	const VIRIDIANGYM_GIOVANNI
	const VIRIDIANGYM_COOLTRAINER_M
	const VIRIDIANGYM_COOLTRAINER_F
	const VIRIDIANGYM_GYM_GUIDE
	
ViridianGym_Object:
	db $0 ; border block

	def_warp_events
	warp_event  4, 13, LAST_MAP, 5
	warp_event  5, 13, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_YOUNGSTER, STAY, DOWN, TEXT_VIRIDIANGYM_YUJIROU, OPP_YUJIROU, 1
	object_event  3,  7, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_VIRIDIANGYM_YOUNGSTER, OPP_YOUNGSTER, 13
	object_event  5,  5, SPRITE_SUPER_NERD, STAY, LEFT, TEXT_VIRIDIANGYM_JR_TRAINER_M, OPP_JR_TRAINER_M, 1
	object_event  7, 10, SPRITE_GYM_GUIDE, STAY, DOWN, TEXT_VIRIDIANGYM_GYM_GUIDE

	def_warps_to VIRIDIAN_GYM
