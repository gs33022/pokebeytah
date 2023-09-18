	db DEX_NIDOREIGN ; pokedex id

	db  65,  67,  62,  60,  55
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 75 ; catch rate
	db 135 ; base exp

	INCBIN "gfx/pokemon/front/nidoreign.pic", 0, 1 ; sprite dimensions
	dw NidoreignPicFront, NidoreignPicBack

	db GROWL, TACKLE, SCRATCH, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   STRENGTH      \
	; end

	db BANK(NidoreignPicFront)
	assert BANK(NidoreignPicFront) == BANK(NidoreignPicBack)