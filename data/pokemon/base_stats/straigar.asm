	db DEX_STRAIGAR ; pokedex id

	db  65,  80,  65,  70,  35
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 90 ; catch rate
	db 150 ; base exp

	INCBIN "gfx/pokemon/front/straigar.pic", 0, 1 ; sprite dimensions
	dw StraigarPicFront, StraigarPicBack

	db THUNDERSHOCK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  PAY_DAY,      SUBMISSION,   SEISMIC_TOSS, RAGE,         \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, \
	     SUBSTITUTE,   STRENGTH,     FLASH

	db BANK (StraigarPicFront)
	assert BANK(StraigarPicFront) == BANK(StraigarPicBack)
