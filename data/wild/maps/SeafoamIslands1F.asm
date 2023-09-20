SeafoamIslands1FWildMons:
	def_grass_wildmons 15 ; encounter rate
	db 30, STARYU
IF DEF(_RED)
	db 30, KRABBY
	db 32, SEADRA
	db 30, KRABBY
	db 28, CHEEP
	db 21, BITTYBAT
	db 29, ZUBAT
	db 28, PSYDUCK ; RIBBITO
	db 28, WEIRDUCK
	db 38, JYNX
ENDC
IF DEF(_BLUE)
	db 30, PSYDUCK
	db 30, STARYU
	db 30, KRABBY
	db 28, KRABBY
	db 21, BITTYBAT
	db 29, ZUBAT
	db 28, SLOWPOKE
	db 28, STARYU
	db 38, SLOWBRO
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
