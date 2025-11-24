	object_const_def
	const_export VERMILIONDOCK_MEW

VermilionDock_Object:
	db $f ; border block

	def_warp_events
	warp_event 14,  0, LAST_MAP, 6
	warp_event 14,  2, SS_ANNE_1F, 2

	def_bg_events
;	bg_event 20, 0, TEXT_VERMILIONDOCK_MEW1
;	bg_event 21, 0, TEXT_VERMILIONDOCK_MEW2

	def_object_events
	object_event 21,  0, SPRITE_FAIRY, STAY, DOWN, TEXT_VERMILIONDOCK_MEW, MEW, 50

	def_warps_to VERMILION_DOCK
