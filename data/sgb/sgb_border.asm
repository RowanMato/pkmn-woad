BorderPalettes:
IF DEF(_RED)
	INCBIN "gfx/sgb/red_border.tilemap"
ENDC
IF DEF(_BLUE)
	INCBIN "gfx/sgb/blue_border.tilemap"
ENDC
IF DEF(_GREEN)
	INCBIN "gfx/sgb/green_border.tilemap"
ENDC

	ds $100

IF DEF(_RED)
	RGB 30,29,29 ; PAL_SGB1
	RGB 25,22,25
	RGB 25,17,21
	RGB 24,14,12
ENDC
IF DEF(_BLUE)
	RGB 0,0,0 ; PAL_SGB1 (the first color is not defined, but if used, turns up as 30,29,29... o_O)
	RGB 10,17,26
	RGB 5,9,20
	RGB 16,20,27
ENDC
IF DEF(_GREEN)
	RGB 30,29,29 ; PAL_SGB1
	RGB 25,30,19
	RGB 18,25,12
	RGB 12,20,09
ENDC

	ds $18

IF DEF(_RED)
	RGB 30,29,29 ; PAL_SGB2
	RGB 22,31,16
	RGB 27,20,6
	RGB 15,15,15
ENDC
IF DEF(_BLUE)
	RGB 30,29,29 ; PAL_SGB2
	RGB 27,11,6
	RGB 5,9,20
	RGB 28,25,15
ENDC
IF DEF(_GREEN)
	RGB 30,29,29 ; PAL_SGB2
	RGB 16,19,29;blue
	RGB 25,20,07;brown
	RGB 13,15,16
ENDC

	ds $18

IF DEF(_RED)
	RGB 30,29,29 ; PAL_SGB3
	RGB 31,31,17
	RGB 18,21,29
	RGB 15,15,15
ENDC
IF DEF(_BLUE)
	RGB 30,29,29 ; PAL_SGB3
	RGB 12,15,11
	RGB 5,9,20
	RGB 14,22,17
ENDC
IF DEF(_GREEN)
	RGB 30,29,29 ; PAL_SGB3
	RGB 29,26,04;yellow
	RGB 29,18,19;red
	RGB 13,15,16
ENDC

	ds $18

SGBBorderGraphics:
IF DEF(_RED)
	INCBIN "gfx/sgb/red_border.2bpp"
ENDC
IF DEF(_BLUE)
	INCBIN "gfx/sgb/blue_border.2bpp"
ENDC
IF DEF(_GREEN)
	INCBIN "gfx/sgb/green_border.2bpp"
ENDC
