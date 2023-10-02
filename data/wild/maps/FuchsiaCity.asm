FuchsiaCityWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 22, NIDORAN_M
	db 25, RHYHORN
	db 22, EXEGGCUTE
	db 24, PARAS
	db 31, TANGELA
	db 25, SCYTHER
	db 31, TAUROS
	db 30, PINSIR
	db 23, CHANSEY
ENDC
IF DEF(_BLUE)
	db 22, NIDORAN_M
	db 25, RHYHORN
	db 22, EXEGGCUTE
	db 24, TANGELA
	db 31, NIDORINA
	db 25, KANGASKHAN
	db 31, SCYTHER
	db 30, PINSIR
	db 23, TAUROS
ENDC
	db 23, CHANSEY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
