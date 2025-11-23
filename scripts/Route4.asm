Route4_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route4TrainerHeaders
	ld de, Route4_ScriptPointers
	ld a, [wRoute4CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute4CurScript], a
	ret

Route4_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE4_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE4_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE4_END_BATTLE

Route4_TextPointers:
	def_text_pointers
	dw_const Route4CooltrainerF1Text, 			TEXT_ROUTE4_COOLTRAINER_F1
	dw_const Route4CooltrainerF2Text, 			TEXT_ROUTE4_COOLTRAINER_F2
	dw_const PickUpItemText,          			TEXT_ROUTE4_TM_WHIRLWIND
	dw_const Route4MoonStoneSalesmanText,   TEXT_ROUTE4_MOON_STONE_SALESMAN
	dw_const PokeCenterSignText,      			TEXT_ROUTE4_POKECENTER_SIGN
	dw_const Route4MtMoonSignText,    			TEXT_ROUTE4_MT_MOON_SIGN
	dw_const Route4SignText,          			TEXT_ROUTE4_SIGN

Route4TrainerHeaders:
	def_trainers 2
Route4TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_4_TRAINER_0, 3, Route4CooltrainerF2BattleText, Route4CooltrainerF2EndBattleText, Route4CooltrainerF2AfterBattleText
	db -1 ; end

Route4CooltrainerF1Text:
	text_far _Route4CooltrainerF1Text
	text_end

Route4CooltrainerF2Text:
	text_asm
	ld hl, Route4TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route4CooltrainerF2BattleText:
	text_far _Route4CooltrainerF2BattleText
	text_end

Route4CooltrainerF2EndBattleText:
	text_far _Route4CooltrainerF2EndBattleText
	text_end

Route4CooltrainerF2AfterBattleText:
	text_far _Route4CooltrainerF2AfterBattleText
	text_end

Route4MoonStoneSalesmanText:
	text_asm
	ld hl, .IGotADealText
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .choseNo
	ld a, $01 ; set a to 01
	ldh [hMoney], a ; 01 XX XX
	xor a ; set a to 0
	ldh [hMoney + 2], a ; 01 00 XX
	ldh [hMoney + 2], a ; 01 00 00
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, .NoMoneyText
	jr .printText
.enoughMoney
	lb bc, MOON_STONE, 1
	call GiveItem
	jr nc, .bag_full
	xor a
	ld a, $01
	ld [wPriceTemp], a
	xor a
	ld [wPriceTemp + 2], a
	ld [wPriceTemp + 2], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	lb bc, MOON_STONE, 1
	ld hl, .ReceivedMoonStoneText
	jr .printText
.bag_full
	ld hl, .NoRoomText
	jr .printText
.choseNo
	ld hl, .NoText
.printText
	call PrintText
.done
	jp TextScriptEnd

.IGotADealText
	text_far _MoonStoneSalesmanOfferText
	text_end

.ReceivedMoonStoneText
	text_far _ReceivedMoonStoneText
	sound_get_item_1
	text_end

.NoText
	text_far _MoonStoneSalesmanDeclineText
	text_end

.NoRoomText
	text_far _MoonStoneSalesmanNoRoomText
	text_end

.NoMoneyText
	text_far _MoonStoneSalesmanNoMoneyText
	text_end

Route4MtMoonSignText:
	text_far _Route4MtMoonSignText
	text_end

Route4SignText:
	text_far _Route4SignText
	text_end
