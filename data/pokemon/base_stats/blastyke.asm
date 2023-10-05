	db DEX_BLASTYKE ; pokedex id

	db  69,  73, 80,  68,  75
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 150 ; base exp

	INCBIN "gfx/pokemon/front/blastyke.pic", 0, 1 ; sprite dimensions
	dw BlastykePicFront, BlastykePicBack

	db TACKLE, TAIL_WHIP, BUBBLE, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   \
		 HYDRO_PUMP
	; end

	db BANK(BlastykePicFront)
	assert BANK(BlastykePicFront) == BANK(BlastykePicBack)
