ViridianForestNorthGate_Script:
	jp EnableAutoTextBoxDrawing

ViridianForestNorthGate_TextPointers:
	def_text_pointers
	dw_const ViridianForestNorthGateSuperNerdText, TEXT_VIRIDIANFORESTNORTHGATE_SUPER_NERD
	dw_const ViridianForestNorthGateGrampsText,    TEXT_VIRIDIANFORESTNORTHGATE_GRAMPS
	dw_const ViridianForestNorthGateTradeText,    TEXT_VIRIDIANFORESTNORTHGATE_TRADE

ViridianForestNorthGateSuperNerdText:
	text_far _ViridianForestNorthGateSuperNerdText
	text_end

ViridianForestNorthGateGrampsText:
	text_far _ViridianForestNorthGateGrampsText
	text_end

ViridianForestNorthGateTradeText:
	text_asm
	ld a, TRADE_FOR_CUPPA
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd
