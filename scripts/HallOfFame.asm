HallOfFame_Script:
	call EnableAutoTextBoxDrawing
	ld hl, HallOfFame_ScriptPointers
	ld a, [wHallOfFameCurScript]
	jp CallFunctionInTable

HallofFameRoomClearScripts: ; unreferenced
	xor a
	ld [wJoyIgnore], a
	ld [wHallOfFameCurScript], a
	ret

HallOfFame_ScriptPointers:
	def_script_pointers
	dw_const HallOfFameDefaultScript,            SCRIPT_HALLOFFAME_DEFAULT
	dw_const HallOfFameOakCongratulationsScript, SCRIPT_HALLOFFAME_OAK_CONGRATULATIONS
	dw_const HallOfFameResetEventsAndSaveScript, SCRIPT_HALLOFFAME_RESET_EVENTS_AND_SAVE
	dw_const HallOfFameNoopScript,               SCRIPT_HALLOFFAME_NOOP

HallOfFameNoopScript:
	ret

HallOfFameResetEventsAndSaveScript:
	callfar CGBSetCPU1xSpeed
	call Delay3
	ld a, [wLetterPrintingDelayFlags]
	push af
	xor a
	ld [wJoyIgnore], a
	predef HallOfFamePC
	pop af
	ld [wLetterPrintingDelayFlags], a
	ld hl, wStatusFlags7
	res BIT_NO_MAP_MUSIC, [hl]
	ASSERT wStatusFlags7 + 1 == wElite4Flags
	inc hl
	set BIT_UNUSED_BEAT_ELITE_4, [hl] ; unused
	xor a ; SCRIPT_*_DEFAULT
	ld hl, wLoreleisRoomCurScript
	ld [hli], a ; wLoreleisRoomCurScript
	ld [hli], a ; wBrunosRoomCurScript
	ld [hl], a ; wAgathasRoomCurScript
	ld [wLancesRoomCurScript], a
	ld [wHallOfFameCurScript], a
	; Elite 4 events
	ResetEventRange INDIGO_PLATEAU_EVENTS_START, INDIGO_PLATEAU_EVENTS_END, 1
	xor a
	ld [wHallOfFameCurScript], a
	ld a, PALLET_TOWN
	ld [wLastBlackoutMap], a
	farcall SaveGameData
	ld b, 5
.delayLoop
	ld c, 600 / 5
	call DelayFrames
	dec b
	jr nz, .delayLoop
	call WaitForTextScrollButtonPress
	jp Init

HallOfFameDefaultScript:
	ld a, PAD_BUTTONS | PAD_CTRL_PAD
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, HallOfFameEntryMovement
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_HALLOFFAME_OAK_CONGRATULATIONS
	ld [wHallOfFameCurScript], a
	ret

HallOfFameEntryMovement:
	db PAD_UP, 5
	db -1 ; end

HallOfFameOakCongratulationsScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, HALLOFFAME_OAK
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3
	xor a
	ld [wJoyIgnore], a
	inc a ; PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, TEXT_HALLOFFAME_OAK
	ldh [hTextID], a
	call DisplayTextID
	call CheckE4R2
	jr nc, .notR2text
	ld a, TEXT_HALLOFFAME_OAK_R2
	ldh [hTextID], a
	call DisplayTextID
.notR2text
	ld a, PAD_BUTTONS | PAD_CTRL_PAD
	ld [wJoyIgnore], a
	; Open Unknown Dungeon
	ld a, HS_CERULEAN_CAVE_GUY
	ld [wMissableObjectIndex], a
	predef HideObject
	; Open post-game TM Shops
	ld a, HS_CELADON_MART_3F_COUNTER
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_CELADON_MART_3F_GOOD_TMS
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_CERULEAN_BADGE_HOUSE_TM_SHOP
	ld [wMissableObjectIndex], a
	predef ShowObject
	; Show Giovanni in his Gym again, for rematches
	ld a, HS_VIRIDIAN_GYM_GIOVANNI
	ld [wMissableObjectIndex], a
	predef ShowObject
	; Set primary E4 beaten flag
	SetEvent EVENT_PLAYER_IS_CHAMPION
	; Check if this is R2, and if so
	; set that as beaten, plus allow
	; Oak to be battled.
	call CheckE4R2
	jp nc, .notR2
	SetEvent EVENT_BEAT_E4_R2
	SetEvent EVENT_CAN_BATTLE_OAK
;	; Try to respawn failed legendaries
;	; If the legend isn't marked as Owned in the Dex, it'll respawn
;	ld hl, wPokedexOwned
;	ld c, DEX_ARTICUNO - 1
;	ld b, FLAG_TEST
;	predef FlagActionPredef
;	ld a, c
;	and a
;	jr nz, .ArticunoCaught
;.NoArticuno:
;	ld a, HS_ARTICUNO
;	ld [wMissableObjectIndex], a
;	predef ShowObject
;	ResetEvent EVENT_BEAT_ARTICUNO
;.ArticunoCaught:
;
;	ld hl, wPokedexOwned
;	ld c, DEX_MEW - 1
;	ld b, FLAG_TEST
;	predef FlagActionPredef
;	ld a, c
;	and a
;	jr nz, .MewCaught
;.NoMew:
;	ld a, HS_MEW
;	ld [wMissableObjectIndex], a
;	predef ShowObject
;	ResetEvent EVENT_BEAT_MEW
;.MewCaught:
;
;	ld hl, wPokedexOwned
;	ld c, DEX_ZAPDOS - 1
;	ld b, FLAG_TEST
;	predef FlagActionPredef
;	ld a, c
;	and a
;	jr nz, .ZapdosCaught
;.NoZapdos:
;	ld a, HS_ZAPDOS
;	ld [wMissableObjectIndex], a
;	predef ShowObject
;	ResetEvent EVENT_BEAT_ZAPDOS
;.ZapdosCaught:
;
;	ld hl, wPokedexOwned
;	ld c, DEX_MOLTRES - 1
;	ld b, FLAG_TEST
;	predef FlagActionPredef
;	ld a, c
;	and a
;	jr nz, .MoltresCaught
;.NoMoltres:
;	ld a, HS_MOLTRES
;	ld [wMissableObjectIndex], a
;	predef ShowObject
;	ResetEvent EVENT_BEAT_MOLTRES
;.MoltresCaught:
;
;	ld hl, wPokedexOwned
;	ld c, DEX_MEWTWO - 1
;	ld b, FLAG_TEST
;	predef FlagActionPredef
;	ld a, c
;	and a
;	jr nz, .MewtwoCaught
;.NoMewtwo:
;	ld a, HS_MEWTWO
;	ld [wMissableObjectIndex], a
;	predef ShowObject
;	ResetEvent EVENT_BEAT_MEWTWO
;.MewtwoCaught:
;
.notR2
	ld a, SCRIPT_HALLOFFAME_RESET_EVENTS_AND_SAVE
	ld [wHallOfFameCurScript], a
	ret

HallOfFame_TextPointers:
	def_text_pointers
	dw_const HallOfFameOakText, TEXT_HALLOFFAME_OAK
	dw_const HallOfFameOakTextR2, TEXT_HALLOFFAME_OAK_R2

HallOfFameOakText:
	text_far _HallOfFameOakText
	text_end

HallOfFameOakTextR2:
	text_far _HallOfFameOakTextR2
	text_end
