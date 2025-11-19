CinnabarLabTradeRoom_Script:
	jp EnableAutoTextBoxDrawing

CinnabarLabTradeRoom_TextPointers:
	def_text_pointers
	dw_const CinnabarLabTradeRoomSuperNerdText, TEXT_CINNABARLABTRADEROOM_SUPER_NERD
	dw_const CinnabarLabTradeRoomGrampsText,    TEXT_CINNABARLABTRADEROOM_GRAMPS
	dw_const CinnabarLabTradeRoomBeautyText,    TEXT_CINNABARLABTRADEROOM_BEAUTY

CinnabarLabTradeRoomSuperNerdText:
	text_far _CinnabarLabTradeRoomSuperNerdText
	text_end

CinnabarLabTradeRoomGrampsText:
	CheckEvent EVENT_GOT_HITMONLEE
	jr z, .chose_Hitmonlee
	CheckEvent EVENT_GOT_HITMONCHAN
	jr z, .chose_Hitmonchan
	text_far _CinnabarLabTradeRoomNoHitmonYetText
	text_end

.chose_Hitmonlee
	text_asm
	ld a, TRADE_FOR_JACKIE
	ld [wWhichTrade], a
	jr CinnabarLabTradeRoomDoTrade

.chose_Hitmonchan
	text_asm
	ld a, TRADE_FOR_BRUCE
	ld [wWhichTrade], a
	jr CinnabarLabTradeRoomDoTrade

CinnabarLabTradeRoomBeautyText:
	text_asm
	ld a, TRADE_FOR_NORRIS
	ld [wWhichTrade], a
CinnabarLabTradeRoomDoTrade:
	predef DoInGameTradeDialogue
	jp TextScriptEnd
