PocketMonsters_GFX:
	INCBIN "gfx/title/pocket_monsters.1bpp" ; 16 tiles
PocketMonsters_GFXEnd:

WorldAdventures_GFX:;unused
	INCBIN "gfx/title/world_adventures.1bpp" ; 16 tiles
WorldAdventures_GFXEnd:

Version_GFX:;unused
IF DEF(_RED)
	INCBIN "gfx/title/red_version.1bpp" ; 10 tiles
ENDC
IF DEF(_BLUE)
	INCBIN "gfx/title/blue_version.1bpp" ; 8 tiles
ENDC
IF DEF(_GREEN)
	INCBIN "gfx/title/blue_version.1bpp" ; 8 tiles
ENDC
Version_GFXEnd:
