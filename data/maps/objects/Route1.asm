	object_const_def
	const ROUTE1_YOUNGSTER1
	const ROUTE1_YOUNGSTER2

Route1_Object:
	db $b ; border block

	def_warp_events

	def_bg_events
	bg_event  7, 27, TEXT_ROUTE1_SIGN

	def_object_events
	object_event  6, 18, SPRITE_YOUNGSTER, WALK, UP_DOWN, TEXT_ROUTE1_YOUNGSTER1
	object_event  5,  0, SPRITE_YOUNGSTER, WALK, LEFT_RIGHT, TEXT_ROUTE1_YOUNGSTER2

	def_warps_to ROUTE_1

	; unused
	warp_to  4,  0, 4
