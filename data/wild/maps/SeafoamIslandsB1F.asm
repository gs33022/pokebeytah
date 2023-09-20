SeafoamIslandsB1FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 30, STARYU ; RIBBITO
	db 27, CHEEP
	db 32, SHELLDER
	db 32, SEADRA
	db 28, SLOWPOKE
	db 30, SEEL
	db 30, CHEEP
	db 28, SEEL
	db 38, JYNX
	db 37, JYNX
ENDC
IF DEF(_BLUE)
	db 30, SHELLDER
	db 30, KRABBY
	db 32, STARYU
	db 32, KRABBY
	db 28, PSYDUCK
	db 30, SEEL
	db 30, PSYDUCK
	db 28, SEEL
	db 38, DEWGONG
	db 37, KINGLER
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
