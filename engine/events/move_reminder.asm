MoveReminderText::
	text_asm
; Display the list of moves to the player.
	ld hl, MoveReminderGreetingText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .exit
	xor a
;	;charge 1000 money
;	ld [hMoney], a
;	ld [hMoney + 2], a
;	ld a, $0A
;	ld [hMoney + 1], a
;	call HasEnoughMoney
;	jr nc, .enoughMoney
;	; not enough money
;	ld hl, MoveReminderNotEnoughMoneyText
;	call PrintText
;	jp TextScriptEnd
;.enoughMoney
	ld hl, MoveReminderSaidYesText
	call PrintText
	; Select pokemon from party.
	call SaveScreenTilesToBuffer2
	xor a
	ld [wListScrollOffset], a
	ld [wPartyMenuTypeOrMessageID], a
	ld [wUpdateSpritesEnabled], a
	ld [wMenuItemToSwap], a
	call DisplayPartyMenu
	push af
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	call LoadGBPal
	pop af
	jp c, .exit
	ld a, [wWhichPokemon]
	ld b, a
	push bc
	ld hl, PrepareRelearnableMoveList
	ld b, Bank(PrepareRelearnableMoveList)
	call Bankswitch
	ld a, [wMoveBuffer]
	and a
	jr nz, .chooseMove
	pop bc
	ld hl, MoveReminderNoMovesText
	call PrintText
	jp TextScriptEnd
.chooseMove
	ld hl, MoveReminderWhichMoveText
	call PrintText
	xor a
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	ld a, MOVESLISTMENU
	ld [wListMenuID], a
	ld de, wMoveBuffer
	ld hl, wListPointer
	ld [hl], e
	inc hl
	ld [hl], d
	xor a
	ld [wPrintItemPrices], a ; don't print prices
	call DisplayListMenuID
	pop bc
	jr c, .exit  ; exit if player chose cancel
	push bc
	; Save the selected move id.
	ld a, [wCurListMenuItem]
	ld [wMoveNum], a
	ld [wTempByteValue],a
	call GetMoveName
	call CopyToStringBuffer ; copy name to wcf4b
	pop bc
	ld a, b
	ld [wWhichPokemon], a
	ld a, [wLetterPrintingDelayFlags]
	push af
	xor a
	ld [wLetterPrintingDelayFlags], a
	predef LearnMove
	pop af
	ld [wLetterPrintingDelayFlags], a
	ld a, b
;	and a
;	jr z, .exit
;	; Charge 1000 money
;	xor a
;	ld [wPriceTemp], a
;	ld [wPriceTemp + 2], a
;	ld a, $0A
;	ld [wPriceTemp + 1], a
;	ld hl, wPriceTemp + 2
;	ld de, wPlayerMoney + 2
;	ld c, $3
;	predef SubBCDPredef
;	ld hl, MoveReminderByeText
;	call PrintText
;	jp TextScriptEnd
.exit
	ld hl, MoveReminderByeText
	call PrintText
	jp TextScriptEnd


MoveReminderGreetingText::
	text_far _MoveReminderGreetingText
	text_end

MoveReminderSaidYesText::
	text_far _MoveReminderSaidYesText
	text_end

;MoveReminderNotEnoughMoneyText::
;	text_far _MoveReminderNotEnoughMoneyText
;	text_end

MoveReminderWhichMoveText::
	text_far _MoveReminderWhichMoveText
	text_end

MoveReminderByeText::
	text_far _MoveReminderByeText
	text_end

MoveReminderNoMovesText::
	text_far _MoveReminderNoMovesText
	text_end
