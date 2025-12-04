; super rod encounters
SuperRodData:
	; map, fishing group
	dbw PALLET_TOWN,         .Super_Pallet
	dbw VIRIDIAN_CITY,       .Super_Viridian
	dbw CERULEAN_CITY,       .Super_Cerulean
	dbw VERMILION_CITY,      .Super_Vermilion
	dbw CELADON_CITY,        .Super_Grime
	dbw FUCHSIA_CITY,        .Super_Gyarados
	dbw CINNABAR_ISLAND,     .Super_Cinnabar
	dbw ROUTE_4,             .Super_Cerulean
	dbw ROUTE_6,             .Super_Route6
	dbw ROUTE_10,            .Super_PowerPlant
	dbw ROUTE_11,            .Super_Vermilion
	dbw ROUTE_12,            .Super_West1
	dbw ROUTE_13,            .Super_West2
	dbw ROUTE_17,            .Super_Cycling
	dbw ROUTE_18,            .Super_Fuchsia
	dbw ROUTE_19,            .Super_Sea
	dbw ROUTE_20,            .Super_Sea
	dbw ROUTE_21,            .Super_Sea
	dbw ROUTE_22,            .Super_Viridian
	dbw ROUTE_23,            .Super_Indigo
	dbw ROUTE_24,            .Super_Cerulean
	dbw ROUTE_25,            .Super_Cottage
	dbw CERULEAN_GYM,        .Super_Misty
	dbw VERMILION_DOCK,      .Super_Dock
	dbw SEAFOAM_ISLANDS_B3F, .Super_Seafoam
	dbw SEAFOAM_ISLANDS_B4F, .Super_Seafoam
	dbw SAFARI_ZONE_EAST,    .Super_Safari
	dbw SAFARI_ZONE_NORTH,   .Super_Safari
	dbw SAFARI_ZONE_WEST,    .Super_Safari
	dbw SAFARI_ZONE_CENTER,  .Super_Safari
	dbw CERULEAN_CAVE_2F,    .Super_Dungeon
	dbw CERULEAN_CAVE_B1F,   .Super_Dungeon
	dbw CERULEAN_CAVE_1F,    .Super_Dungeon
	db -1 ; end

; fishing groups
; number of monsters, followed by level/monster pairs

.Super_Misty:
	db 4
	db 15, GOLDEEN
	db 15, POLIWAG
	db 15, HORSEA
	db 15, SEEL
	db 15, PSYDUCK
	db 15, KRABBY

.Super_Pallet:
	db 3
	db 10, POLIWAG
	db 15, STARYU
	db 20, TENTACOOL

.Super_Viridian:
	db 2
	db 15, POLIWAG
	db 25, POLIWHIRL

.Super_Cerulean:
	db 4
	db 15, GOLDEEN
	db 30, SEAKING
	db 20, PSYDUCK
	db 20, KRABBY

.Super_Vermilion:
	db 4
	db 20, SHELLDER
	db 25, KRABBY
	db 25, HORSEA
	db 20, TENTACOOL

.Super_Dock:
	db 4
	db 20, SHELLDER
	db 30, KINGLER
	db 30, SEADRA
	db 35, TENTACRUEL

.Super_Route6:
	db 1
	db 5, GOLDEEN

.Super_PowerPlant:
	db 5
	db 30, POLIWHIRL
	db 25, SLOWPOKE
	db 25, KRABBY
	db 25, HORSEA
	db 30, KINGLER

.Super_Cottage:
	db 3
	db 15, KRABBY
	db 20, KRABBY
	db 30, KINGLER

.Super_Indigo:
	db 4
	db 30, SEAKING
	db 30, POLIWHIRL
	db 35, KINGLER
	db 35, SEADRA

.Super_Fuchsia:
	db 3
	db 20, SHELLDER
	db 20, TENTACOOL
	db 20, KRABBY

.Super_Cycling:
	db 3
	db 20, SHELLDER
	db 20, TENTACOOL
	db 10, MAGIKARP

.Super_Sea:
	db 5
	db 20, STARYU
	db 25, STARYU
	db 20, TENTACOOL
	db 25, TENTACOOL
	db 35, TENTACRUEL

.Super_West1:
	db 3
	db 25, KRABBY
	db 25, HORSEA
	db 30, SEADRA

.Super_West2:
	db 4
	db 25, KRABBY
	db 25, HORSEA
	db 30, SEADRA
	db 15, TENTACOOL

.Super_Cinnabar:
	db 3
	db 25, STARYU
	db 25, KRABBY
	db 25, TENTACOOL

.Super_Dungeon:
	db 8
	db 35, SEAKING
	db 40, SEAKING
	db 35, SLOWBRO
	db 40, SLOWBRO
	db 35, KINGLER
	db 40, KINGLER
	db 40, SEADRA
	db 35, DRAGONAIR

.Super_Seafoam:
	db 8
	db 20, SHELLDER
	db 25, SHELLDER
	db 20, STARYU
	db 25, STARYU
	db 20, HORSEA
	db 25, HORSEA
	db 20, KRABBY
	db 30, KINGLER

.Super_Safari:
	db 8
	db 15, PSYDUCK
	db 20, PSYDUCK
	db 20, SLOWPOKE
	db 10, MAGIKARP
	db 15, MAGIKARP
	db 20, DRATINI
	db 25, DRATINI
	db 30, DRAGONAIR

.Super_Grime:
	db 5
	db 15, GOLDEEN
	db 30, POLIWHIRL
	db 25, SLOWPOKE
	db 25, GRIMER
	db 30, GRIMER

.Super_Gyarados:
	db 4
	db  5, MAGIKARP
	db 10, MAGIKARP
	db 15, MAGIKARP
	db 20, GYARADOS
