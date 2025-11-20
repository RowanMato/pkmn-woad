	object_const_def
	const_export GAMECORNERPRIZEROOM_BALDING_GUY
	const_export GAMECORNERPRIZEROOM_GAMBLER
	const_export GAMECORNERPRIZEROOM_GRUNT_BLOCK
	const_export GAMECORNERPRIZEROOM_FOSSIL_ROCKET

GameCornerPrizeRoom_Object:
	db $f ; border block

	def_warp_events
	warp_event  4,  7, LAST_MAP, 10
	warp_event  5,  7, LAST_MAP, 10

	def_bg_events
	bg_event  2,  2, TEXT_GAMECORNERPRIZEROOM_PRIZE_VENDOR_1;1
	bg_event  4,  2, TEXT_GAMECORNERPRIZEROOM_PRIZE_VENDOR_2;2
	bg_event  6,  2, TEXT_GAMECORNERPRIZEROOM_PRIZE_VENDOR_3;right price, but odd click glitch
	bg_event  8,  2, TEXT_GAMECORNERPRIZEROOM_PRIZE_VENDOR_4;right price, but odd click glitch

	def_object_events
	object_event  7,  3, SPRITE_BALDING_GUY, STAY, NONE, TEXT_GAMECORNERPRIZEROOM_BALDING_GUY
	object_event  1,  4, SPRITE_GAMBLER, WALK, LEFT_RIGHT, TEXT_GAMECORNERPRIZEROOM_GAMBLER
	object_event  8,  3, SPRITE_ROCKET, STAY, UP, TEXT_GAMECORNERPRIZEROOM_GRUNT_BLOCK
	object_event  9,  5, SPRITE_ROCKET, STAY, NONE, TEXT_GAMECORNERPRIZEROOM_FOSSIL_ROCKET;Mon names by mistake

	def_warps_to GAME_CORNER_PRIZE_ROOM
