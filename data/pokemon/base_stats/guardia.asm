	db DEX_GUARDIA ; pokedex id

	db  65,  90, 115, 55,  55
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 65 ; catch rate
	db 150 ; base exp

	INCBIN "gfx/pokemon/front/guardia.pic", 0, 1 ; sprite dimensions
	dw GuardiaPicFront, GuardiaPicBack

	db BONE_CLUB, GROWL, LEER, FOCUS_ENERGY ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         FIRE_BLAST,   SKULL_BASH,   REST,         SUBSTITUTE,   \
	     STRENGTH
	; end

	db BANK(GuardiaPicFront)
	assert BANK(GuardiaPicFront) == BANK(GuardiaPicBack)
