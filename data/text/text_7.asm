_ItemUseText001::
	text "<PLAYER> used@"
	text_end

_ItemUseText002::
	text_ram wStringBuffer
	text "!"
	done

_GotOnBicycleText1::
	text "<PLAYER> got on the@"
	text_end

_GotOnBicycleText2::
	text_ram wStringBuffer
	text "!"
	prompt

_GotOffBicycleText1::
	text "<PLAYER> got off@"
	text_end

_GotOffBicycleText2::
	text "the @"
	text_ram wStringBuffer
	text "."
	prompt

_ThrewAwayItemText::
	text "Threw away"
	line "@"
	text_ram wNameBuffer
	text "."
	prompt

_IsItOKToTossItemText::
	text "Is it OK to toss"
	line "@"
	text_ram wStringBuffer
	text "?"
	prompt

_TooImportantToTossText::
	text "That's too impor-"
	line "tant to toss!"
	prompt

_AlreadyKnowsText::
	text_ram wNameBuffer
	text " knows"
	line "@"
	text_ram wStringBuffer
	text "!"
	prompt

_ConnectCableText::
	text "Okay, connect the"
	line "cable like so!"
	prompt

_TradedForText::
	text "<PLAYER> traded"
	line "@"
	text_ram wInGameTradeGiveMonName
	text " for"
	cont "@"
	text_ram wInGameTradeReceiveMonName
	text "!@"
	text_end

_WannaTrade1Text:: ; CASUAL
	text "I'm looking for"
	line "@"
	text_ram wInGameTradeGiveMonName
	text "! Wanna"

	para "trade one for"
	line "@"
	text_ram wInGameTradeReceiveMonName
	text "? "
	done

_NoTrade1Text:: ; CASUAL
	text "Awww!"
	line "Oh well..."
	done

_WrongMon1Text:: ; CASUAL
	text "What? That's not"
	line "@"
	text_ram wInGameTradeGiveMonName
	text "!"

	para "If you get one,"
	line "come back here!"
	done

_Thanks1Text:: ; CASUAL
	text "Hey thanks!"
	done

_AfterTrade1Text:: ; CASUAL
	text "Isn't my old"
	line "@"
	text_ram wInGameTradeReceiveMonName
	text " great?"
	done

_WannaTrade2Text:: ; EVOLUTION
	text "Hello there! Do"
	line "you want to trade"

	para "your @"
	text_ram wInGameTradeGiveMonName
	text_start
	line "for @"
	text_ram wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade2Text:: ; EVOLUTION
	text "Well, if you"
	line "don't want to..."
	done

_WrongMon2Text:: ; EVOLUTION
	text "Hmmm? This isn't"
	line "@"
	text_ram wInGameTradeGiveMonName
	text "."

	para "Think of me when"
	line "you get one."
	done

_Thanks2Text:: ; EVOLUTION
	text "Thanks!"
	done

_AfterTrade2Text:: ; EVOLUTION
	text "The @"
	text_ram wInGameTradeGiveMonName
	text " you"
	line "traded to me"

	para "went and evolved!"
	done

_WannaTrade3Text:: ; HAPPY
	text "Hi! Do you have"
	line "@"
	text_ram wInGameTradeGiveMonName
	text "?"

	para "Want to trade it"
	line "for @"
	text_ram wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade3Text:: ; HAPPY
	text "That's too bad."
	done

_WrongMon3Text:: ; HAPPY
	text "...This is no"
	line "@"
	text_ram wInGameTradeGiveMonName
	text "."

	para "If you get one,"
	line "trade it with me!"
	done

_Thanks3Text:: ; HAPPY
	text "Thanks pal!"
	done

_AfterTrade3Text:: ; HAPPY
	text "How is my old"
	line "@"
	text_ram wInGameTradeReceiveMonName
	text "?"

	para "My @"
	text_ram wInGameTradeGiveMonName
	text " is"
	line "doing great!"
	done

_WannaTrade4Text:: ; DAD
	text "My daughter wants"
	line "a @"
;	text "Hi! Do you have"
;	line "@"
	text_ram wInGameTradeGiveMonName
	text "."
	cont "Do you have one?"

	para "Will you trade it"
	line "for @"
	text_ram wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade4Text:: ; DAD
	text "Darn. Let me know"
	line "if you find one."
	done

_WrongMon4Text:: ; DAD
	text "No, no. She only"
	line "wants @"
	text_ram wInGameTradeGiveMonName
	text "."

	para "Let me know if"
	line "you find one."
	done

_Thanks4Text:: ; DAD
	text "Thanks pal!"

	para "My daughter will"
	line "be so happy!"
	done

_AfterTrade4Text:: ; DAD
	text "My daughter loves"
	line "her @"
	text_ram wInGameTradeReceiveMonName
	text "!"

	para "Thank you for"
	line "trading with me!"
	done

_WannaTrade5Text:: ; SAILOR
	text "Ahoy! Do you have"
	line "a @"
	text_ram wInGameTradeGiveMonName
	text "?"

;	para "I want to be tough"
;	line "like LT.SURGE!"

	para "I'll trade you a"
	line "@"
	text_ram wInGameTradeReceiveMonName
	text "for it."
	done

_NoTrade5Text:: ; SAILOR
	text "Ah, but I want to"
	line "be like LT.SURGE."
	done

_WrongMon5Text:: ; SAILOR
	text "No, that won't do."
	line "I'm looking for a"
	cont "@"
	text_ram wInGameTradeGiveMonName
	text "."
	done

_Thanks5Text:: ; SAILOR
	text "Thanks, kid!"

	para "Now I can beat"
	line "my crewmates!"
	done

_AfterTrade5Text:: ; SAILOR
	text "My mates don't"
	line "stand a chance"
	cont "against that"
	cont "@"
	text_ram wInGameTradeReceiveMonName
	text "!"

	para "I hope @"
	text_ram wInGameTradeGiveMonName
	text_start
	line "is doing well!"
	done

_WannaTrade6Text:: ; FISHER
	text "I'm a fishing fan!"

	para "Do you have a"
	line "@"
	text_ram wInGameTradeGiveMonName
	text "?"

	para "I'll give you my"
	line "@"
	text_ram wInGameTradeReceiveMonName
	text "for it."
	done

_NoTrade6Text:: ; FISHER
	text "Ah, I'll have go"
	line "fishing again."
	done

_WrongMon6Text:: ; FISHER
	text "Hey, that's no"
	line "@"
	text_ram wInGameTradeGiveMonName
	text "."
	done

_Thanks6Text:: ; FISHER
	text "Yes! I love this"
	line "@"
	text_ram wInGameTradeGiveMonName
	text "."
	done

_AfterTrade6Text:: ; FISHER
	text "@"
	text_ram wInGameTradeReceiveMonName
	line "is better than"
	cont "what I've been"
	cont "reeling in."

	para "My ol' @"
	text_ram wInGameTradeGiveMonName
	text_start
	line "is strong, eh?"
	done

_NothingToCutText::
	text "There isn't"
	line "anything to CUT!"
	prompt

_UsedCutText::
	text_ram wNameBuffer
	text " hacked"
	line "away with CUT!"
	prompt
