MACRO npctrade
; give mon, get mon, dialog id, nickname
	db \1, \2, \3
	dname \4, NAME_LENGTH
ENDM

TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH
;					 GIVE MON,	 GET MON,		 Dialogue Set,							 Nickname
	npctrade BEEDRILL,   BELLSPROUT, TRADE_DIALOGSET_HAPPY,     "CUPPA" ; Gatehouse north of Viridian Forest
	npctrade PIKACHU, 	 MANKEY,   	 TRADE_DIALOGSET_DAD,     	"BRUISER" ;
	npctrade GRAVELER,   MR_MIME,    TRADE_DIALOGSET_CASUAL,    "MARCEL" ; ✓ Cerulean City, instead of Jynx
	npctrade NIDORAN_M,  NIDORAN_F,  TRADE_DIALOGSET_HAPPY,     "SPOT" ; ✓ Route 5 Tunnel, unchanged
	npctrade PSYDUCK,    FARFETCHD,  TRADE_DIALOGSET_HAPPY,     "DUX" ; ✓ Vermillion, as usual
	npctrade VULPIX,  	 TANGELA,    TRADE_DIALOGSET_CASUAL, 	 	"CRINKLES" ; ✓ Route 2, where the Mime was
	npctrade MAGNEMITE,  SEEL, 			 TRADE_DIALOGSET_SAILOR,    "LUCIA" ; SS Anne
	npctrade ONIX,   		 GLOOM,  		 TRADE_DIALOGSET_CASUAL,    "MOODY" ; ✓ Route 11 Gate 2F (near Vermillion Snorlax)
	npctrade CLEFAIRY,   PONYTA,     TRADE_DIALOGSET_CASUAL,   	"TOAST" ;
	npctrade GOLBAT,   	 LICKITUNG,  TRADE_DIALOGSET_CASUAL,   	"MARC" ;
	npctrade TANGELA,    PINSIR, 		 TRADE_DIALOGSET_HAPPY,     "TAJIRI" ; ✓ Route 18 Gate 2F (before Fucsia)
	npctrade SEAKING,		 SLOWBRO, 	 TRADE_DIALOGSET_FISHER, 		"TAITO" ; 
	npctrade KOFFING,    GRIMER,   	 TRADE_DIALOGSET_HAPPY,     "NORRIS" ; ✓ Cinnabar Labs
	npctrade MACHOKE,    HITMONLEE,  TRADE_DIALOGSET_EVOLUTION, "BRUCE" ; Cinnabar Labs, needs special handling
	npctrade MACHOKE,    HITMONCHAN, TRADE_DIALOGSET_EVOLUTION, "JACKIE" ; Cinnabar Labs, needs special handling
	npctrade MEW,    		 MEW, 			 TRADE_DIALOGSET_EVOLUTION, "MEW" ; unused
	assert_table_length NUM_NPC_TRADES

; CASUAL = 		"I'm looking for… Wanna trade one for…?" 	"Isn't my old… great?"
; EVOLUTION = "Hello there! Do you want to trade…?" 		"The… you traded to me went and evolved!"
; HAPPY = 		"Hi! Do you have…?" 											"How is my old…? My… is doing great!"
