	db DEX_CHEEP ; pokedex id

	db  50,  75,  70,  60,  70
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 85 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/cheep.pic", 0, 1 ; sprite dimensions
	dw CheepPicFront, CheepPicBack

	db LEER, KICK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         PSYWAVE,      \
	     SUBSTITUTE,   HYDRO_PUMP
	; end

	db BANK(CheepPicFront)
	assert BANK(CheepPicFront) == BANK(CheepPicBack)
