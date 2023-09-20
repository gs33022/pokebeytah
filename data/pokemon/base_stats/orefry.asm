	db DEX_OREFRY ; pokedex id

	db  40,  50,  50,  52,  40
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 90 ; base exp

	INCBIN "gfx/pokemon/front/orefry.pic", 0, 1 ; sprite dimensions
	dw OrefryPicFront, OrefryPicBack

	db PECK, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   REST,         \
	     SUBSTITUTE,   SURF
	; end

	db BANK(OrefryPicFront)
	assert BANK(OrefryPicFront) == BANK(OrefryPicBack)
