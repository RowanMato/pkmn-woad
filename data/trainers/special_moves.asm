; Yellow entry format:
;	db trainerclass, trainerid
;	repeat { db partymon location, partymon move, move id }
;	db 0

SpecialTrainerMoves:
	db BROCK, 1
	db 2, 3, BIDE ;Onix has bide in the third slot
	db 0

	db BROCK, 2 ; Rematch
	db 1, 1, FISSURE
	db 1, 2, ROCK_SLIDE
	db 1, 3, SCREECH
	db 1, 4, DIG
	db 2, 1, BLIZZARD
	db 2, 2, HYDRO_PUMP
	db 2, 3, REFLECT
	db 2, 4, TOXIC
	db 3, 1, BODY_SLAM
	db 3, 2, EARTHQUAKE
	db 3, 3, EXPLOSION
	db 3, 4, ROCK_SLIDE
	db 4, 1, DOUBLE_TEAM
	db 4, 2, ICE_BEAM
	db 4, 3, SLASH
	db 4, 4, SWORDS_DANCE
	db 5, 1, FLY
	db 5, 2, FIRE_BLAST
	db 5, 3, WHIRLWIND
	db 5, 4, HYPER_BEAM
	db 0

	db MISTY, 1 ; NOTE: STARYU has HARDEN added to Lv1 moves
;	db 1, 1, SCRATCH ;Psyduck
;	db 1, 2, TAIL_WHIP ;Psyduck
;	db 1, 3, DISABLE ;Psyduck
;	db 2, 1, TACKLE ;Staryu
;	db 2, 2, HARDEN ;Staryu
;	db 2, 3, WATER_GUN ;Staryu
;	db 2, 4, REOVER ;Staryu
	db 3, 1, HARDEN ;Starmie
	db 3, 2, TACKLE ;Starmie
	db 3, 3, BUBBLEBEAM ;Starmie has Bubblebeam in the third slot
	db 3, 4, NO_MOVE ;Starmie does not get Recover
	db 0

	db MISTY, 2 ; Rematch
	db 1, 1, DIG
	db 1, 2, DISABLE
	db 1, 3, ICE_BEAM
	db 1, 4, SURF
	db 2, 1, ACID_ARMOR
	db 2, 2, BUBBLEBEAM
	db 2, 3, TOXIC
	db 2, 4, BLIZZARD
	db 3, 1, SMOKESCREEN
	db 3, 2, TOXIC
	db 3, 3, BLIZZARD
	db 3, 4, HYDRO_PUMP
	db 4, 1, BLIZZARD
	db 4, 2, EARTHQUAKE
	db 4, 3, HYDRO_PUMP
	db 4, 4, HYPER_BEAM
	db 5, 1, BLIZZARD
	db 5, 2, PSYCHIC_M
	db 5, 3, THUNDER
	db 5, 4, SURF
	db 0

	db LT_SURGE, 1
	db 3, 3, THUNDERBOLT ;Raichu has Thunderbolt in the third slot
	db 0

	db LT_SURGE, 2 ; Rematch
	db 1, 1, EXPLOSION
	db 1, 2, NO_MOVE
	db 1, 3, NO_MOVE
	db 1, 4, NO_MOVE
	db 2, 1, REFLECT
	db 2, 2, SCREECH
	db 2, 3, THUNDER_WAVE
	db 2, 4, THUNDER
	db 3, 1, SAND_ATTACK
	db 3, 2, THUNDER
	db 3, 3, THUNDER_WAVE
	db 3, 4, DOUBLE_KICK
	db 4, 1, BODY_SLAM
	db 4, 2, FLASH
	db 4, 3, SUBMISSION
	db 4, 4, THUNDER
	db 5, 1, THUNDER
	db 5, 2, THUNDER_WAVE
	db 5, 3, HYPER_BEAM
	db 5, 4, PSYCHIC_M
	db 0

	db ERIKA, 1
;	db 1, 1, ACID ;Victreebel
;	db 1, 2, RAZOR_LEAF ;Victreebel
;	db 1, 3, WRAP ;Victreebel
;	db 1, 4, POISONPOWDER ;Victreebel
	db 2, 1, MEGA_DRAIN ;TANGELA has Mega Drain in the first slot
;	db 2, 2, STUN_SPORE ;TANGELA
;	db 2, 3, VINE_WHIP ;TANGELA
;	db 2, 4, BIND ;TANGELA
	db 3, 1, MEGA_DRAIN ;Vileplume has Mega Drain in the first slot
;	db 3, 2, STUN_SPORE ;Vileplume
;	db 3, 3, SLEEP_POWDER ;Vileplume
;	db 3, 4, ACID ;Vileplume
	db 0

	db ERIKA, 2 ; Rematch
	db 1, 1, PETAL_DANCE
	db 1, 2, SLEEP_POWDER
	db 1, 3, NO_MOVE
	db 1, 4, NO_MOVE
	db 2, 1, GROWTH
	db 2, 2, MEGA_DRAIN
	db 2, 3, VINE_WHIP
	db 2, 4, SUBSTITUTE
	db 3, 1, SUBSTITUTE
	db 3, 2, BODY_SLAM
	db 3, 3, BUBBLEBEAM
	db 3, 4, THUNDERBOLT
	db 4, 1, HYPER_BEAM
	db 4, 2, MEGA_DRAIN
	db 4, 3, RAZOR_LEAF
	db 4, 4, WRAP
	db 5, 1, HYPER_BEAM
	db 5, 2, LEECH_SEED
	db 5, 3, SOLARBEAM
	db 5, 4, TOXIC
	db 0

	db KOGA, 1
	db 2, 2, TOXIC ;Muk has Toxic in the second slot
	db 4, 3, TOXIC ;Weezing has Toxic in the third slot
	db 0

	db KOGA, 2 ; Rematch
	db 1, 1, CONFUSE_RAY
	db 1, 2, DOUBLE_TEAM
	db 1, 3, WING_ATTACK
	db 1, 4, SCREECH
	db 2, 1, ACID_ARMOR
	db 2, 2, DOUBLE_TEAM
	db 2, 3, MINIMIZE
	db 2, 4, TOXIC
	db 3, 1, PSYCHIC_M
	db 3, 2, SLEEP_POWDER
	db 3, 3, REFLECT
	db 3, 4, NO_MOVE
	db 4, 1, EXPLOSION
	db 4, 2, FIRE_BLAST
	db 4, 3, SLUDGE
	db 4, 4, THUNDER
	db 5, 1, DOUBLE_TEAM
	db 5, 2, SLASH
	db 5, 3, SWORDS_DANCE
	db 5, 4, WING_ATTACK
	db 0

	db BLAINE, 1
	db 4, 1, FIRE_BLAST ; Arcanine has Fire Blast in the first slot
	db 0

	db BLAINE, 2 ; Rematch
	db 1, 1, CONFUSE_RAY
	db 1, 2, FIRE_BLAST
	db 1, 3, REFLECT
	db 1, 4, SWIFT
	db 2, 1, DOUBLE_EDGE
	db 2, 2, DIG
	db 2, 3, FIRE_BLAST
	db 2, 4, NO_MOVE
	db 3, 1, FIRE_BLAST
	db 3, 2, FIRE_SPIN
	db 3, 3, DOUBLE_EDGE
	db 3, 4, HORN_DRILL
	db 4, 1, BODY_SLAM
	db 4, 2, HYPER_BEAM
	db 4, 3, FLAMETHROWER
	db 4, 4, SAND_ATTACK
	db 5, 1, FIRE_BLAST
	db 5, 2, CONFUSE_RAY
	db 5, 3, BODY_SLAM
	db 5, 4, PSYWAVE
	db 0

	db SABRINA, 1
	db 4, 3, PSYWAVE ; Alakazam has Psywave in the third slot
	db 0

	db SABRINA, 2 ; Rematch
	db 1, 1, BODY_SLAM
	db 1, 2, BLIZZARD
	db 1, 3, REST
	db 1, 4, METRONOME
	db 2, 1, DISABLE
	db 2, 2, DREAM_EATER
	db 2, 3, HYPNOSIS
	db 2, 4, THUNDER_WAVE
	db 3, 1, LIGHT_SCREEN
	db 3, 2, REFLECT
	db 3, 3, PSYCHIC_M
	db 3, 4, SUBSTITUTE
	db 4, 1, CONFUSE_RAY
	db 4, 2, PSYCHIC_M
	db 4, 3, THUNDERBOLT
	db 4, 4, EXPLOSION
	db 5, 1, PSYCHIC_M
	db 5, 2, REFLECT
	db 5, 3, NO_MOVE
	db 5, 4, NO_MOVE
	db 0

	db GIOVANNI, 3
	db 5, 3, FISSURE ; Rhydon has Fissure in the third slot
	db 0

	db GIOVANNI, 4 ; Rematch
	db 1, 1, BLIZZARD
	db 1, 2, EARTHQUAKE
	db 1, 3, FIRE_BLAST
	db 1, 4, SURF
	db 2, 1, BONEMERANG
	db 2, 2, HEADBUTT
	db 2, 3, EARTHQUAKE
	db 2, 4, BLIZZARD
	db 3, 1, BODY_SLAM
	db 3, 2, SUBMISSION
	db 3, 3, DIZZY_PUNCH
	db 3, 4, EARTHQUAKE
	db 4, 1, EARTHQUAKE
	db 4, 2, ROCK_SLIDE
	db 4, 3, HORN_DRILL
	db 4, 4, HYPER_BEAM
	db 5, 1, DOUBLE_EDGE
	db 5, 2, THUNDERBOLT
	db 5, 3, TOXIC
	db 5, 4, DOUBLE_TEAM
	db 0

	db LORELEI, 1
	db 5, 3, BLIZZARD ; Lapras has Blizzard in the third slot
	db 0

	db LORELEI, 2 ; Rematch
	db 1, 1, ICE_BEAM
	db 1, 2, BODY_SLAM
	db 1, 3, SURF
	db 1, 4, REST
	db 2, 1, BLIZZARD
	db 2, 2, CLAMP
	db 2, 3, EXPLOSION
	db 2, 4, REFLECT
	db 3, 1, BLIZZARD
	db 3, 2, LOVELY_KISS
	db 3, 3, METRONOME
	db 3, 4, PSYCHIC_M
	db 4, 1, FIRE_BLAST
	db 4, 2, AMNESIA
	db 4, 3, SURF
	db 4, 4, PSYCHIC_M
	db 5, 1, SURF
	db 5, 2, BLIZZARD
	db 5, 3, BODY_SLAM
	db 5, 4, CONFUSE_RAY
	db 0

	db BRUNO, 1
	db 5, 3, FISSURE ; Machamp has Fissure in the third slot
	db 0

	db BRUNO, 2 ; Rematch
	db 1, 1, DIG
	db 1, 2, BODY_SLAM
	db 1, 3, SUBMISSION
	db 1, 4, THUNDERBOLT
	db 2, 1, COMET_PUNCH
	db 2, 2, DOUBLE_EDGE
	db 2, 3, MEGA_PUNCH
	db 2, 4, SEISMIC_TOSS
	db 3, 1, JUMP_KICK
	db 3, 2, MEGA_KICK
	db 3, 3, ROLLING_KICK
	db 3, 4, SWIFT
	db 4, 1, SURF
	db 4, 2, HYPNOSIS
	db 4, 3, PSYCHIC_M
	db 4, 4, SUBMISSION
	db 5, 1, EARTHQUAKE
	db 5, 2, ROCK_SLIDE
	db 5, 3, SEISMIC_TOSS
	db 5, 4, METRONOME
	db 0

	db AGATHA, 1
	db 5, 3, TOXIC ; Gengar 2 has Toxic in the third slot
	db 0

	db AGATHA, 2 ; Rematch
	db 1, 1, DIG
	db 1, 2, DOUBLE_TEAM
	db 1, 3, MEGA_DRAIN
	db 1, 4, ROCK_SLIDE
	db 2, 1, SELFDESTRUCT
	db 2, 2, NO_MOVE
	db 2, 3, NO_MOVE
	db 2, 4, NO_MOVE
	db 3, 1, BLIZZARD
	db 3, 2, EARTHQUAKE
	db 3, 3, FIRE_BLAST
	db 3, 4, SURF
	db 4, 1, LICK
	db 4, 2, THUNDER
	db 4, 3, DISABLE
	db 4, 4, HYPER_BEAM
	db 5, 1, PSYCHIC_M
	db 5, 2, THUNDERBOLT
	db 5, 3, NIGHT_SHADE
	db 5, 4, HYPNOSIS
	db 0

	db LANCE, 1
	db 5, 3, BARRIER ; Dragonite has Barrier in the third slot
	db 0

	db LANCE, 2 ; Rematch
	db 1, 1, BLIZZARD
	db 1, 2, FIRE_BLAST
	db 1, 3, THUNDER
	db 1, 4, SURF
	db 2, 1, HYDRO_PUMP
	db 2, 2, HYPER_BEAM
	db 2, 3, NO_MOVE
	db 2, 4, NO_MOVE
	db 3, 1, ROCK_SLIDE
	db 3, 2, FLY
	db 3, 3, DOUBLE_EDGE
	db 3, 4, HYPER_BEAM
	db 4, 1, FIRE_BLAST
	db 4, 2, FLY
	db 4, 3, EARTHQUAKE
	db 4, 4, HYPER_BEAM
	db 5, 1, FLY
	db 5, 2, BLIZZARD
	db 5, 3, THUNDER
	db 5, 4, HYPER_BEAM
	db 0

	db RIVAL2, 4 ; Wartortle Team
;	db 5, 1, TACKLE
;	db 5, 2, SAND_ATTACK
	db 5, 3, QUICK_ATTACK
	db 5, 4, SWIFT
	db 0

	db RIVAL2, 5 ; Ivysaur Team
	db 5, 3, QUICK_ATTACK
	db 5, 4, SWIFT
	db 0

	db RIVAL2, 6 ; Charmeleon Team
	db 5, 3, QUICK_ATTACK
	db 5, 4, SWIFT
	db 0

	db RIVAL2, 7 ; Blastoise Team (Silph)
	db 4, 3, EMBER
	db 4, 4, SWIFT
	db 0

	db RIVAL2, 8 ; Venusaur Team (Silph)
	db 4, 3, SWIFT ; Vaporeon has Swift instead of Bite
	db 0

	db RIVAL2, 9 ; Charizard Team (Silph)
	db 4, 3, SWIFT ; Jolteon has Swift instead of Double Kick
	db 0

	db RIVAL2, 10 ; Blastoise Team (Route 22)
;	db 4, 1, FIRE_SPIN
	db 4, 2, SWIFT
	db 4, 3, EMBER
	db 4, 4, SAND_ATTACK
	db 0

	db RIVAL2, 11 ; Venusaur Team (Route 22)
	db 4, 2, WATER_GUN ; Vaporeon has Water Gun instead of Bite
	db 4, 4, SWIFT ; Vaporeon has Swift instead of Haze
	db 0

	db RIVAL2, 12 ; Charizard Team (Route 22)
	db 4, 2, SWIFT ; Jolteon has Swift instead of Double Kick
	db 0

; Champion Battle
	db RIVAL3, 1 ; Blastoise Team
	db 1, 3, SKY_ATTACK ; Pidgeot has Sky Attack in the third slot
;	db 5, 1, FLAMETHROWER
	db 5, 2, SWIFT
;	db 5, 3, FIRE_SPIN
	db 5, 4, SAND_ATTACK
	db 6, 3, BLIZZARD ; Blastoise has Blizzard in the third slot
	db 0

	db RIVAL3, 2 ; Venusaur Team
	db 1, 3, SKY_ATTACK ; Pidgeot has Sky Attack in the third slot
;	db 5, 1, HYDRO_PUMP
	db 5, 2, ICE_BEAM
	db 5, 3, SWIFT
	db 5, 4, SAND_ATTACK
	db 6, 3, MEGA_DRAIN ; Venusaur has Mega Drain in the third slot
	db 0

	db RIVAL3, 3 ; Charizard Team
	db 1, 3, SKY_ATTACK ; Pidgeot has Sky Attack in the third slot
	db 5, 1, THUNDERBOLT
;	db 5, 2, PIN_MISSILE
	db 5, 3, SAND_ATTACK
	db 5, 4, SWIFT
	db 6, 3, FIRE_BLAST ; Charizard has Fire Blast in the third slot
	db 0

	db RIVAL3, 4 ; Rematch FLAREON BLASTOISE
	db 1, 1, FLY
	db 1, 2, SAND_ATTACK
	db 1, 3, DOUBLE_EDGE
	db 1, 4, SWIFT
	db 2, 1, PSYCHIC_M
	db 2, 2, RECOVER
	db 2, 3, REFLECT
	db 2, 4, THUNDER_WAVE
	db 3, 1, BODY_SLAM
	db 3, 2, HYPER_BEAM
	db 3, 3, EARTHQUAKE
	db 3, 4, ROCK_SLIDE
	db 4, 1, HYPNOSIS
	db 4, 2, LEECH_SEED
	db 4, 3, PSYCHIC_M
	db 4, 4, SOLARBEAM
	db 5, 1, FLAMETHROWER
	db 5, 2, DOUBLE_EDGE
	db 5, 3, SAND_ATTACK
	db 5, 4, SWIFT
	db 6, 1, BLIZZARD
	db 6, 2, HYDRO_PUMP
	db 6, 3, EARTHQUAKE
	db 6, 4, HYPER_BEAM
	db 0

	db RIVAL3, 5 ; Rematch VAPOREON VENUSAUR
	db 1, 1, FLY
	db 1, 2, SAND_ATTACK
	db 1, 3, DOUBLE_EDGE
	db 1, 4, SWIFT
	db 2, 1, PSYCHIC_M
	db 2, 2, RECOVER
	db 2, 3, REFLECT
	db 2, 4, THUNDER_WAVE
	db 3, 1, BODY_SLAM
	db 3, 2, HYPER_BEAM
	db 3, 3, EARTHQUAKE
	db 3, 4, ROCK_SLIDE
	db 4, 1, FLAMETHROWER
	db 4, 2, BODY_SLAM
	db 4, 3, DIG
	db 4, 4, LEER
	db 5, 1, HYDRO_PUMP
	db 5, 2, SAND_ATTACK
	db 5, 3, SWIFT
	db 5, 4, BLIZZARD
	db 6, 1, MEGA_DRAIN
	db 6, 2, SOLARBEAM
	db 6, 3, BODY_SLAM
	db 6, 4, REST
	db 0

	db RIVAL3, 6 ; Rematch JOLTEON CHARIZARD
	db 1, 1, FLY
	db 1, 2, SAND_ATTACK
	db 1, 3, DOUBLE_EDGE
	db 1, 4, SWIFT
	db 2, 1, PSYCHIC_M
	db 2, 2, RECOVER
	db 2, 3, REFLECT
	db 2, 4, THUNDER_WAVE
	db 3, 1, BODY_SLAM
	db 3, 2, HYPER_BEAM
	db 3, 3, EARTHQUAKE
	db 3, 4, ROCK_SLIDE
	db 4, 1, HYDRO_PUMP
	db 4, 2, HYPER_BEAM
	db 4, 3, NO_MOVE
	db 4, 4, NO_MOVE
	db 5, 1, THUNDER
	db 5, 2, FLASH
	db 5, 3, SWIFT
	db 5, 4, THUNDER_WAVE
	db 6, 1, FLY
	db 6, 2, FIRE_BLAST
	db 6, 3, BODY_SLAM
	db 6, 4, EARTHQUAKE
	db 0

	db PROF_OAK, 1 ; VENUSAUR
	db 1, 1, ICE_BEAM
	db 1, 2, THUNDERBOLT
	db 1, 3, PSYCHIC_M
	db 1, 4, HYPER_BEAM
	db 2, 1, CRABHAMMER
	db 2, 2, DOUBLE_EDGE
	db 2, 3, SWORDS_DANCE
	db 2, 4, LEER
	db 3, 1, BIND
	db 3, 2, FOCUS_ENERGY
	db 3, 3, GUILLOTINE
	db 3, 4, SLASH
	db 4, 1, THUNDERBOLT
	db 4, 2, EARTHQUAKE
	db 4, 3, HYPER_BEAM
	db 4, 4, REST
	db 5, 1, MEGA_DRAIN
	db 5, 2, SOLARBEAM
	db 5, 3, BODY_SLAM
	db 5, 4, REST
	db 6, 1, BLIZZARD
	db 6, 2, FIRE_BLAST
	db 6, 3, EARTHQUAKE
	db 6, 4, PSYCHIC_M
	db 0

	db PROF_OAK, 2 ; CHARIZARD
	db 1, 1, ICE_BEAM
	db 1, 2, THUNDERBOLT
	db 1, 3, PSYCHIC_M
	db 1, 4, HYPER_BEAM
	db 2, 1, CRABHAMMER
	db 2, 2, DOUBLE_EDGE
	db 2, 3, SWORDS_DANCE
	db 2, 4, LEER
	db 3, 1, BIND
	db 3, 2, FOCUS_ENERGY
	db 3, 3, GUILLOTINE
	db 3, 4, SLASH
	db 4, 1, THUNDERBOLT
	db 4, 2, EARTHQUAKE
	db 4, 3, HYPER_BEAM
	db 4, 4, REST
	db 5, 1, FLY
	db 5, 2, FIRE_BLAST
	db 5, 3, BODY_SLAM
	db 5, 4, EARTHQUAKE
	db 6, 1, BLIZZARD
	db 6, 2, FIRE_BLAST
	db 6, 3, EARTHQUAKE
	db 6, 4, PSYCHIC_M
	db 0

	db PROF_OAK, 3 ; BLASTOISE
	db 1, 1, ICE_BEAM
	db 1, 2, THUNDERBOLT
	db 1, 3, PSYCHIC_M
	db 1, 4, HYPER_BEAM
	db 2, 1, CRABHAMMER
	db 2, 2, DOUBLE_EDGE
	db 2, 3, SWORDS_DANCE
	db 2, 4, LEER
	db 3, 1, BIND
	db 3, 2, FOCUS_ENERGY
	db 3, 3, GUILLOTINE
	db 3, 4, SLASH
	db 4, 1, THUNDERBOLT
	db 4, 2, EARTHQUAKE
	db 4, 3, HYPER_BEAM
	db 4, 4, REST
	db 5, 1, BLIZZARD
	db 5, 2, HYDRO_PUMP
	db 5, 3, EARTHQUAKE
	db 5, 4, HYPER_BEAM
	db 6, 1, BLIZZARD
	db 6, 2, FIRE_BLAST
	db 6, 3, EARTHQUAKE
	db 6, 4, PSYCHIC_M
	db 0

	db BILL, 1
	db 1, 1, SURF
	db 1, 2, HYPER_BEAM
	db 1, 3, REST
	db 1, 4, WRAP
	db 2, 1, BLIZZARD
	db 2, 2, THUNDER
	db 2, 3, THUNDER_WAVE
	db 2, 4, SOFTBOILED
	db 3, 1, BLIZZARD
	db 3, 2, FLY
	db 3, 3, BUBBLEBEAM
	db 3, 4, HYPER_BEAM
	db 4, 1, THUNDERBOLT
	db 4, 2, DRILL_PECK
	db 4, 3, THUNDER_WAVE
	db 4, 4, FLASH
	db 5, 1, FIRE_BLAST
	db 5, 2, FLY
	db 5, 3, HYPER_BEAM
	db 5, 4, DOUBLE_TEAM
	db 6, 1, AMNESIA
	db 6, 2, PSYCHIC_M
	db 6, 3, REST
	db 6, 4, THUNDER
	db 0

	db -1 ; end
