	db DEX_WEIRDUCK ; pokedex id

	db  65,  62,  58,  68,  70
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 90 ; catch rate
	db 95 ; base exp

	INCBIN "gfx/pokemon/front/weirduck.pic", 0, 1 ; sprite dimensions
	dw WeirduckPicFront, WeirduckPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF,         STRENGTH
	; end

	db BANK(WeirduckPicFront)
	assert BANK(WeirduckPicFront) == BANK(WeirduckPicBack)
