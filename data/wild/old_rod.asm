; Old rod encounters
; Originally, the Old Rod just pulled Magikarp 100% of the time. This has been changed.
; This new data is based on the Super Rod.
OldRodData:
	; map, fishing group
	dbw PALLET_TOWN,         .Old_Salt
	dbw VIRIDIAN_CITY,       .Old_Fresh
	dbw CERULEAN_CITY,       .Old_Fresh
	dbw VERMILION_CITY,      .Old_Salt
	dbw CELADON_CITY,        .Old_Fresh
	dbw FUCHSIA_CITY,        .Old_Salt
	dbw CINNABAR_ISLAND,     .Old_Salt
	dbw ROUTE_4,             .Old_Fresh
	dbw ROUTE_6,             .Old_Fresh
	dbw ROUTE_10,            .Old_Fresh
	dbw ROUTE_11,            .Old_Fresh
	dbw ROUTE_12,            .Old_Salt
	dbw ROUTE_13,            .Old_Salt
	dbw ROUTE_17,            .Old_Salt
	dbw ROUTE_18,            .Old_Salt
	dbw ROUTE_19,            .Old_Salt
	dbw ROUTE_20,            .Old_Salt
	dbw ROUTE_21,            .Old_Salt
	dbw ROUTE_22,            .Old_Fresh
	dbw ROUTE_23,            .Old_Fresh
	dbw ROUTE_24,            .Old_Fresh
	dbw ROUTE_25,            .Old_Fresh
	dbw CERULEAN_GYM,        .Old_Fresh
	dbw VERMILION_DOCK,      .Old_Salt
	dbw SEAFOAM_ISLANDS_B3F, .Old_Salt
	dbw SEAFOAM_ISLANDS_B4F, .Old_Salt
	dbw SAFARI_ZONE_EAST,    .Old_Fresh
	dbw SAFARI_ZONE_NORTH,   .Old_Fresh
	dbw SAFARI_ZONE_WEST,    .Old_Fresh
	dbw SAFARI_ZONE_CENTER,  .Old_Fresh
	dbw CERULEAN_CAVE_2F,    .Old_Fresh
	dbw CERULEAN_CAVE_B1F,   .Old_Fresh
	dbw CERULEAN_CAVE_1F,    .Old_Fresh
	db -1 ; end

; fishing groups
; number of monsters, followed by level/monster pairs

.Old_Fresh:
	db 2
	db 5, MAGIKARP
	db 5, POLIWAG

.Old_Salt:
	db 2
	db 15, MAGIKARP
	db 15, KRABBY
