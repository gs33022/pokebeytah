	object_const_def
	const SHADYSHOPMTMOON_DEALER

ShadyShopMtMoon_Object:
	db $0E ; border block

	def_warp_events
	warp_event  2,  7, ROUTE_4, 1
	warp_event  3,  7, ROUTE_4, 1

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_CLERK, STAY, RIGHT, TEXT_SHADYSHOPMTMOON_DEALER

	def_warps_to SHADY_SHOP_MT_MOON