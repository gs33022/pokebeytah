IF DEF(_RED)
DefaultNamesPlayer:
	db   "NEW NAME"
	next "RED"
	next "ASH"
	next "JACK"
	db   "@"

DefaultNamesRival:
	db   "NEW NAME"
	next "BLUE"
	next "GARY"
	next "JOHN"
	db   "@"
	
DefaultNamesJunior:
	db   "NEW NAME"
	next "SATOSHI"
	next "QUENTIN"
	next "SHADOW"
	db   "@"
ENDC

IF DEF(_BLUE)
DefaultNamesPlayer:
	db   "NEW NAME"
	next "BLUE"
	next "GARY"
	next "JOHN"
	db   "@"

DefaultNamesRival:
	db   "NEW NAME"
	next "RED"
	next "ASH"
	next "JACK"
	db   "@"
	
DefaultNamesJunior:
	db   "NEW NAME"
	next "SATOSHI"
	next "QUENTIN"
	next "SHADOW"
	db   "@"
ENDC