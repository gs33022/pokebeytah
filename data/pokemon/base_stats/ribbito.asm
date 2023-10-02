	db DEX_RIBBITO ; pokedex id

	db  70,  60,  50,  40,  50
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 90 ; catch rate
	db 70 ; base exp

	INCBIN "gfx/pokemon/front/ribbito.pic", 0, 1 ; sprite dimensions
	dw RibbitoPicFront, RibbitoPicBack

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

	db BANK(RibbitoPicFront)
	assert BANK(RibbitoPicFront) == BANK(RibbitoPicBack)

