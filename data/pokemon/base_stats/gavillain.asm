	db DEX_GAVILLAIN ; pokedex id

	db  100, 95, 85,  55,  50
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 75 ; catch rate
	db 124 ; base exp

	INCBIN "gfx/pokemon/front/gavillain.pic", 0, 1 ; sprite dimensions
	dw GavillainPicFront, GavillainPicBack

	db BITE, LEER, MUD_SLAP, FOCUS_ENERGY ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         FIRE_BLAST,   SKULL_BASH,   REST,         SUBSTITUTE,   \
	     STRENGTH
	; end

	db BANK(GavillainPicFront)
	assert BANK(GavillainPicFront) == BANK(GavillainPicBack)