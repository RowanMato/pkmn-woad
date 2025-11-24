VermilionDock_Script:
	call EnableAutoTextBoxDrawing

	ld hl, VermilionDockTrainerHeaders
	ld de, VermilionDock_ScriptPointers
	ld a, [wVermilionDockCurScript]
	call ExecuteCurMapScriptInTable
	ld [wVermilionDockCurScript], a
	ret

VermilionDock_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_VERMILIONDOCK_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_VERMILIONDOCK_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_VERMILIONDOCK_END_BATTLE

VermilionDock_TextPointers:
	def_text_pointers
	dw_const VermilionDockMewText, 		TEXT_VERMILIONDOCK_MEW
	dw_const VermilionDockUnusedText, TEXT_VERMILIONDOCK_UNUSED

VermilionDockTrainerHeaders:
	def_trainers
MewTrainerHeader:
	trainer EVENT_BEAT_MEW, 0, VermilionDockMewBattleText, VermilionDockMewBattleText, VermilionDockMewBattleText
	db -1 ; end

MewInitBattleScript:
	call TalkToTrainer
	ld a, [wCurMapScript]
	ld [wPowerPlantCurScript], a
	jp TextScriptEnd

VermilionDockUnusedText:
	text_far _VermilionDockUnusedText
	text_end

VermilionDockMewText:
	text_asm
	ld hl, MewTrainerHeader
	jr MewInitBattleScript

VermilionDockMewBattleText:
	text_far _VermilionDockMewBattleText
	text_asm
	ld a, MEW
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
