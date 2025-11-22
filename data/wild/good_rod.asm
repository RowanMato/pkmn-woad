; Good rod encounters
; random choice of 2 good rod encounters
GoodRodMons:;UNUSED old vanilla data
	; level, species
	db 10, GOLDEEN
	db 10, POLIWAG
; This new data is based on the Super Rod.
GoodRodData:
	; map, fishing group
	dbw PALLET_TOWN,         .Good_SaltJelly
	dbw VIRIDIAN_CITY,       .Good_Fresh
	dbw CERULEAN_CITY,       .Good_Cottage
	dbw VERMILION_CITY,      .Good_Salt
	dbw CELADON_CITY,        .Good_Grime
	dbw FUCHSIA_CITY,        .Good_Fresh
	dbw CINNABAR_ISLAND,     .Good_Salt
	dbw ROUTE_4,             .Good_Cottage
	dbw ROUTE_6,             .Good_Fresh
	dbw ROUTE_10,            .Good_Fresh
	dbw ROUTE_11,            .Good_Fresh
	dbw ROUTE_12,            .Good_Salt
	dbw ROUTE_13,            .Good_Salt
	dbw ROUTE_17,            .Good_Salt
	dbw ROUTE_18,            .Good_Salt
	dbw ROUTE_19,            .Good_SaltJelly
	dbw ROUTE_20,            .Good_SaltJelly
	dbw ROUTE_21,            .Good_SaltJelly
	dbw ROUTE_22,            .Good_Fresh
	dbw ROUTE_23,            .Good_Fresh
	dbw ROUTE_24,            .Good_Fresh
	dbw ROUTE_25,            .Good_Fresh
	dbw CERULEAN_GYM,        .Good_Fresh
	dbw VERMILION_DOCK,      .Good_Salt
	dbw SEAFOAM_ISLANDS_B3F, .Good_Salt
	dbw SEAFOAM_ISLANDS_B4F, .Good_Salt
	dbw SAFARI_ZONE_EAST,    .Good_Fresh
	dbw SAFARI_ZONE_NORTH,   .Good_Fresh
	dbw SAFARI_ZONE_WEST,    .Good_Fresh
	dbw SAFARI_ZONE_CENTER,  .Good_Fresh
	dbw CERULEAN_CAVE_2F,    .Good_Fresh
	dbw CERULEAN_CAVE_B1F,   .Good_Fresh
	dbw CERULEAN_CAVE_1F,    .Good_Fresh
	db -1 ; end

; fishing groups
; number of monsters, followed by level/monster pairs

.Good_Fresh:
	db 4
	db 10, POLIWAG
	db 10, GOLDEEN
	db 15, POLIWAG
	db 15, GOLDEEN

.Good_Salt:
	db 4
	db 10, SHELLDER
	db 10, STARYU
	db 15, SHELLDER
	db 15, STARYU

.Good_SaltJelly:
	db 5
	db 10, SHELLDER
	db 10, STARYU
	db 15, SHELLDER
	db 15, STARYU
	db 15, TENTACOOL

.Good_Cottage:
	db 5
	db 10, POLIWAG
	db 10, GOLDEEN
	db 15, POLIWAG
	db 15, GOLDEEN
	db 15, KRABBY

.Good_Grime:
	db 5
	db 10, POLIWAG
	db 10, GOLDEEN
	db 15, POLIWAG
	db 15, GOLDEEN
	db 15, GRIMER
