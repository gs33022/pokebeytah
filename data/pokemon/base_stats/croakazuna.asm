	db DEX_CROAKOZUNA ; pokedex id

	db  90,  80,  55,  60,  70
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 50 ; catch rate
	db 130 ; base exp

	INCBIN "gfx/pokemon/front/croakazuna.pic", 0, 1 ; sprite dimensions
	dw CroakazunaPicFront, CroakazunaPicBack

	db PUNCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         PSYWAVE,      \
	     SUBSTITUTE,   SURF
	; end

	db BANK(CroakazunaPicFront)
	assert BANK(CroakazunaPicFront) == BANK(CroakazunaPicBack)
