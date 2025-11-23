_MoonStoneSalesmanOfferText::
	text "I've collected a"
	line "bunch of rare"
	cont "rocks from inside"
	cont "MT.MOON."

	para "¥10000 for a"
	line "MOON STONE, eh?"
	done

_ReceivedMoonStoneText::
	text "<PLAYER> received"
	line "a @"
	text_ram wStringBuffer
	text "!@"
	text_end

_MoonStoneSalesmanDeclineText::
	text "Ah, more for me,"
	line "I suppose."
	done

_MoonStoneSalesmanNoRoomText::
	text "Oh? You have no"
	line "room for this."
	done

_MoonStoneSalesmanNoMoneyText::
	text "Heh? You're too"
	line "broke for this!"
	done

_Route4CooltrainerF1Text::
	text "Ouch! I tripped"
	line "over a rocky"
	cont "#MON, GEODUDE!"
	done

_Route4CooltrainerF2BattleText::
	text "I came to get my"
	line "mushroom #MON!"
	done

_Route4CooltrainerF2EndBattleText::
	text "Oh! My cute"
	line "mushroom #MON!"
	prompt

_Route4CooltrainerF2AfterBattleText::
	text "There might not"
	line "be any more"
	cont "mushrooms here."

	para "I think I got"
	line "them all."
	done

_Route4MtMoonSignText::
	text "MT.MOON"
	line "Tunnel Entrance"
	done

_Route4SignText::
	text "ROUTE 4"
	line "MT.MOON -"
	cont "CERULEAN CITY"
	done
