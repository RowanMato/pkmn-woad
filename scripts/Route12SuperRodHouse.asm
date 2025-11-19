Route12SuperRodHouse_Script:
	jp EnableAutoTextBoxDrawing

Route12SuperRodHouse_TextPointers:
	def_text_pointers
	dw_const Route12SuperRodHouseFishingGuruText, TEXT_ROUTE12SUPERRODHOUSE_FISHING_GURU

Route12SuperRodHouseFishingGuruText:
	text_asm
	ld a, TRADE_FOR_TAITO
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd
