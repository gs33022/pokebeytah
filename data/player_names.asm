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
	next "YELLOW"
	next "HARRISON"
	next "JUNIOR"
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
	next "YELLOW"
	next "HARRISON"
	next "JUNIOR"
	db   "@"
ENDC