	db DEX_CACTORMOUS ; pokedex id

	db  85,  75, 85,  60, 90
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 50  ; catch rate
	db 170 ; base exp

	INCBIN "gfx/pokemon/front/cactormous.pic", 0, 1 ; sprite dimensions
	dw CactormousPicFront, CactormousPicBack

	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   \
	     CUT
	; end

	db BANK(CactormousPicFront)
	assert BANK(CactormousPicFront) == BANK(CactormousPicBack)
