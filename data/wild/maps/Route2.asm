Route2WildMons:
	def_grass_wildmons 25 ; encounter rate
	db  4, WEEDLE
	db  4, CATERPIE
	db  4, RATTATA
	db  5, WEEDLE
	db  5, CATERPIE
IF DEF(_RED)
	db  4, PIDGEY
	db  5, RATTATA
	db  3, PSYDUCK
	db  5, PIDGEY
	db  4, PSYDUCK
ENDC
IF DEF(_BLUE)
	db  4, PIDGEY
	db  5, RATTATA
	db  3, PSYDUCK
	db  5, PIDGEY
	db  4, PSYDUCK
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
