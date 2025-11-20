; Yellow entry format:
;	db trainerclass, trainerid
;	repeat { db partymon location, partymon move, move id }
;	db 0

SpecialTrainerMoves:
	db BROCK, 1
	db 2, 3, BIDE ;Onix has bide in the third slot
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

	db LT_SURGE, 1
	db 3, 3, THUNDERBOLT ;Raichu has Thunderbolt in the third slot
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

	db KOGA, 1
	db 2, 2, TOXIC ;Muk has Toxic in the second slot
	db 4, 3, TOXIC ;Weezing has Toxic in the third slot
	db 0

	db BLAINE, 1
	db 4, 1, FIRE_BLAST ; Arcanine has Fire Blast in the first slot
	db 0

	db SABRINA, 1
	db 4, 3, PSYWAVE ; Alakazam has Psywave in the third slot
	db 0

	db GIOVANNI, 3
	db 5, 3, FISSURE ; Rhydon has Fissure in the third slot
	db 0

	db LORELEI, 1
	db 5, 3, BLIZZARD ; Lapras has Blizzard in the third slot
	db 0

	db BRUNO, 1
	db 5, 3, FISSURE ; Machamp has Fissure in the third slot
	db 0

	db AGATHA, 1
	db 5, 3, TOXIC ; Gengar 2 has Toxic in the third slot
	db 0

	db LANCE, 1
	db 5, 3, BARRIER ; Dragonite has Barrier in the third slot
	db 0

	db RIVAL2, 4 ; Wartortle Team
;	db 5, 1, TACKLE
;	db 5, 2, SAND_ATTACK
	db 5, 3, QUICK_ATTACK
	db 5, 4, SWIFT

	db RIVAL2, 5 ; Ivysaur Team
;	db 5, 1, TACKLE
;	db 5, 2, SAND_ATTACK
	db 5, 3, QUICK_ATTACK
	db 5, 4, SWIFT

	db RIVAL2, 6 ; Charmeleon Team
;	db 5, 1, TACKLE
;	db 5, 2, SAND_ATTACK
	db 5, 3, QUICK_ATTACK
	db 5, 4, SWIFT

	db RIVAL2, 7 ; Blastoise Team (Silph)
	db 4, 3, EMBER
	db 4, 4, SWIFT

	db RIVAL2, 8 ; Venusaur Team (Silph)
;	db 4, 3,
;	db 4, 4,

	db RIVAL2, 9 ; Charizard Team (Silph)
;	db 4, 3,
;	db 4, 4,

	db RIVAL2, 10 ; Blastoise Team (Route 22)
;	db 4, 1, FIRE_SPIN
	db 4, 2, SWIFT
	db 4, 3, EMBER
	db 4, 4, SAND_ATTACK

	db RIVAL2, 11 ; Venusaur Team (Route 22)
;	db 4, 1,
;	db 4, 2,
;	db 4, 3,
;	db 4, 4,

	db RIVAL2, 12 ; Charizard Team (Route 22)
;	db 4, 1,
;	db 4, 2,
;	db 4, 3,
;	db 4, 4,

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

	db -1 ; end
