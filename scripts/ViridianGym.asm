ViridianGym_Script:
	ld hl, wCurrentMapScriptFlags
	call nz, .LoadNames
	pop hl
	bit 6, [hl]
	res 6, [hl]
	call EnableAutoTextBoxDrawing
	ld hl, ViridianGymTrainerHeaders
	ld de, ViridianGym_ScriptPointers
	ld a, [wViridianGymCurScript]
	call ExecuteCurMapScriptInTable
	ld [wViridianGymCurScript], a
	ret

.LoadNames:
	ld hl, .CityName
	ld de, .LeaderName
	jp LoadGymLeaderAndCityName

.CityName:
	db "VIRIDIAN CITY@"

.LeaderName:
	db "DOUG@"

ViridianGymResetScripts:
	xor a
	ld [wJoyIgnore], a
	ld [wViridianGymCurScript], a
	ld [wCurMapScript], a
	ret

ViridianGym_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_VIRIDIANGYM_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_VIRIDIANGYM_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_VIRIDIANGYM_END_BATTLE
	dw_const ViridanGymBrockPostBattle,             SCRIPT_VIRIDIANGYM_BROCK_POST_BATTLE

ViridanGymBrockPostBattle:
	ld a, [wIsInBattle]
	cp $ff
	jp z, ViridianGymResetScripts
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
; fallthrough
ViridianGymScriptReceiveTM34:
	ld a, TEXT_VIRIDIANGYM_BROCK_WAIT_TAKE_THIS
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_BROCK
	lb bc, TM_BIDE, 1
	call GiveItem
	jr nc, .BagFull
	ld a, TEXT_VIRIDIANGYM_RECEIVED_TM34
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_GOT_TM34
	jr .gymVictory
.BagFull
	ld a, TEXT_VIRIDIANGYM_TM34_NO_ROOM
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
.gymVictory
	ld hl, wObtainedBadges
	set BIT_BOULDERBADGE, [hl]
	ld hl, wBeatGymFlags
	set BIT_BOULDERBADGE, [hl]

	ld a, HS_GYM_GUY
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_ROUTE_22_RIVAL_1
	ld [wMissableObjectIndex], a
	predef HideObject

	ResetEvents EVENT_1ST_ROUTE22_RIVAL_BATTLE, EVENT_ROUTE22_RIVAL_WANTS_BATTLE

	; deactivate gym trainers
	SetEvent EVENT_BEAT_VIRIDIAN_GYM_TRAINER_0
	SetEvent EVENT_BEAT_VIRIDIAN_GYM_TRAINER_1

	jp ViridianGymResetScripts

ViridianGym_TextPointers:
	def_text_pointers
	dw_const ViridianGymDougText,              TEXT_VIRIDIANGYM_YUJIROU
	dw_const ViridianGymYoungsterText,         TEXT_VIRIDIANGYM_YOUNGSTER
	dw_const ViridianGymJrTrainerMText,        TEXT_VIRIDIANGYM_JR_TRAINER_M
	dw_const ViridianGymGuideText,             TEXT_VIRIDIANGYM_GYM_GUIDE
	dw_const ViridianGymBrockWaitTakeThisText, TEXT_VIRIDIANGYM_BROCK_WAIT_TAKE_THIS
	dw_const ViridianGymReceivedTM34Text,      TEXT_VIRIDIANGYM_RECEIVED_TM34
	dw_const ViridianGymTM34NoRoomText,        TEXT_VIRIDIANGYM_TM34_NO_ROOM

ViridianGymTrainerHeaders:
	def_trainers 2
ViridianGymTrainerHeader0:
	trainer EVENT_BEAT_VIRIDIAN_GYM_TRAINER_0, 1, ViridianGymYoungsterBattleText, ViridianGymYoungsterEndBattleText, ViridianGymYoungsterAfterBattleText
ViridianGymTrainerHeader1:
	trainer EVENT_BEAT_VIRIDIAN_GYM_TRAINER_1, 1, ViridianGymJrTrainerMBattleText, ViridianGymJrTrainerMEndBattleText, ViridianGymJrTrainerMAfterBattleText
	db -1 ; end

ViridianGymDougText:
	text_asm
	CheckEvent EVENT_BEAT_BROCK
	jr z, .beforeBeat
	CheckEventReuseA EVENT_GOT_TM34
	jr nz, .afterBeat
	call z, ViridianGymScriptReceiveTM34
	call DisableWaitingAfterTextDisplay
	jr .done
.afterBeat
	ld hl, .PostBattleAdviceText
	call PrintText
	jr .done
.beforeBeat
	ld hl, .PreBattleText
	call PrintText
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, ViridianGymBrockReceivedBoulderBadgeText
	ld de, ViridianGymBrockReceivedBoulderBadgeText
	call SaveEndBattleTextPointers
	ldh a, [hSpriteIndex]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $1
	ld [wGymLeaderNo], a
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_VIRIDIANGYM_BROCK_POST_BATTLE
	ld [wViridianGymCurScript], a
	ld [wCurMapScript], a
.done
	jp TextScriptEnd

.PreBattleText:
	text_far _ViridianGymBrockPreBattleText
	text_end

.PostBattleAdviceText:
	text_far _ViridianGymBrockPostBattleAdviceText
	text_end

ViridianGymBrockWaitTakeThisText:
	text_far _ViridianGymBrockWaitTakeThisText
	text_end

ViridianGymReceivedTM34Text:
	text_far _ViridianGymReceivedTM34Text
	sound_get_item_1
	text_far _TM39ExplanationText
	text_end

ViridianGymTM34NoRoomText:
	text_far _ViridianGymTM34NoRoomText
	text_end

ViridianGymBrockReceivedBoulderBadgeText:
	text_far _ViridianGymBrockReceivedBoulderBadgeText
	sound_level_up ; probably supposed to play SFX_GET_ITEM_1 but the wrong music bank is loaded
	text_far _ViridianGymBrockBoulderBadgeInfoText ; Text to tell that the flash technique can be used
	text_end

ViridianGymYoungsterText:
	text_asm
	ld hl, ViridianGymTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

ViridianGymYoungsterBattleText:
	text_far _ViridianGymYoungsterBattleText
	text_end

ViridianGymYoungsterEndBattleText:
	text_far _ViridianGymYoungsterEndBattleText
	text_end

ViridianGymYoungsterAfterBattleText:
	text_far _ViridianGymYoungsterAfterBattleText
	text_end
	
ViridianGymJrTrainerMText:
	text_asm
	ld hl, ViridianGymTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

ViridianGymJrTrainerMBattleText:
	text_far _ViridianGymJrTrainerMBattleText
	text_end

ViridianGymJrTrainerMEndBattleText:
	text_far _ViridianGymJrTrainerMEndBattleText
	text_end

ViridianGymJrTrainerMAfterBattleText:
	text_far _ViridianGymJrTrainerMAfterBattleText
	text_end
	
ViridianGymGuideText:
	text_asm
	ld a, [wBeatGymFlags]
	bit BIT_BOULDERBADGE, a
	jr nz, .afterBeat
	ld hl, ViridianGymGuidePreAdviceText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .ViridianGymGuideBeginAdviceText
	ld hl, ViridianGymGuideBeginAdviceText
	call PrintText
	jr .ViridianGymGuideAdviceText
.ViridianGymGuideBeginAdviceText
	ld hl, ViridianGymGuideFreeServiceText
	call PrintText
.ViridianGymGuideAdviceText
	ld hl, ViridianGymGuideAdviceText
	call PrintText
	jr .done
.afterBeat
	ld hl, ViridianGymGuidePostBattleText
	call PrintText
.done
	jp TextScriptEnd

ViridianGymGuidePreAdviceText:
	text_far _ViridianGymGuidePreAdviceText
	text_end

ViridianGymGuideBeginAdviceText:
	text_far _ViridianGymGuideBeginAdviceText
	text_end

ViridianGymGuideAdviceText:
	text_far _ViridianGymGuideAdviceText
	text_end

ViridianGymGuideFreeServiceText:
	text_far _ViridianGymGuideFreeServiceText
	text_end

ViridianGymGuidePostBattleText:
	text_far _ViridianGymGuidePostBattleText
	text_end