PrizeDifferentMenuPtrs:
; Which one of these is pulled is based on the Text ID of the BG Event calling it.
; Therefore, the BG Events need to be listed in this same order.
	dw PrizeMenuFossilGruntEntries,  PrizeMenuFossilGruntCost
	dw PrizeMenuMon1Entries, PrizeMenuMon1Cost
	dw PrizeMenuMon2Entries, PrizeMenuMon2Cost
	dw PrizeMenuTMsEntries,  PrizeMenuTMsCost
	dw PrizeMenuPostGameTMsEntries,  PrizeMenuPostGameTMsCost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	db ABRA
	db CLEFAIRY
	db DRATINI
	db "@"

PrizeMenuMon1Cost:
	bcd2 180
	bcd2 500
	bcd2 1200
	db "@"

PrizeMenuMon2Entries:
	db SCYTHER
	db EEVEE
	db PORYGON
	db "@"

PrizeMenuMon2Cost:
	bcd2 3200
	bcd2 4400
	bcd2 7777
	db "@"

PrizeMenuTMsEntries:
	db TM_DRAGON_RAGE
	db TM_HYPER_BEAM
	db TM_SUBSTITUTE
	db "@"

PrizeMenuTMsCost:
	bcd2 3300
	bcd2 5500
	bcd2 7700
	db "@"

PrizeMenuPostGameTMsEntries:
	db TM_DOUBLE_EDGE
	db TM_SELFDESTRUCT
	db TM_EXPLOSION
	db "@"

PrizeMenuPostGameTMsCost:
	bcd2 3000
	bcd2 6000
	bcd2 8000
	db "@"

PrizeMenuFossilGruntEntries:
	db HELIX_FOSSIL
	db DOME_FOSSIL
	db OLD_AMBER
	db "@"

PrizeMenuFossilGruntCost:
	bcd2 5000
	bcd2 5000
	bcd2 9000
	db "@"
