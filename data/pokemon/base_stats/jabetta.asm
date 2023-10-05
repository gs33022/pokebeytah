	db DEX_JABETTA ; pokedex id

	db  70,  85,  80,  65,  75
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 85 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/jabetta.pic", 0, 1 ; sprite dimensions
	dw JabettaPicFront, JabettaPicBack

	db WATER_GUN, KICK, PUNCH, DOUBLESLAP ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         PSYWAVE,      \
	     SUBSTITUTE,   HYDRO_PUMP,   STRENGTH
	; end

	db BANK(JabettaPicFront)
	assert BANK(JabettaPicFront) == BANK(JabettaPicBack)
