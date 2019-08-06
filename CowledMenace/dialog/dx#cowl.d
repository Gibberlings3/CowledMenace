// Cowled Wizards interjections

BEGIN ~dx#cowl~

EXTEND_BOTTOM CORNEIL 0
+ ~Global("TwistedLetterFound","GLOBAL",1) Global("BribedCowled","GLOBAL",0)~ + @3004 EXTERN CORNEIL DX#COR10 // Found interesting letter - not bribed
+ ~Global("TwistedLetterFound","GLOBAL",1) GlobalGT("BribedCowled","GLOBAL",0)~ + @3004 EXTERN CORNEIL DX#COR11 // Found interesting letter - bribed
+ ~Global("LaeralSpawned","GLOBAL",2) Global("ZallaSpawned","GLOBAL",0)~ + @3005 EXTERN CORNEIL DX#COR20 // Where is Zallanora? (not bribed)
+ ~Global("TwistedLetterFound2","GLOBAL",1) Global("ZallComing","GLOBAL",1) Global("ZallaSpawned","GLOBAL",0)~ + @3006 EXTERN CORNEIL DX#COR20 // Where is Zallanora? (bribed)
+ ~Global("TwistedLetterFound2","GLOBAL",1) GlobalLT("LaeralSpawned","GLOBAL",2)~ + @3007 EXTERN CORNEIL DX#COR50 // Someone in the Cowled Wizards sucks
END

CHAIN CORNEIL DX#COR10
	@3010 // fuck off
	EXIT

CHAIN CORNEIL DX#COR11
	@3011 // fuck off
	EXIT

CHAIN CORNEIL DX#COR20
	@3020
	END
	++ @3021 EXTERN CORNEIL DX#COR30
	+ ~Global("ZallaFlee","GLOBAL",1)~ + @3022 EXTERN CORNEIL DX#COR35 // she tried to kill me

CHAIN CORNEIL DX#COR30
	@3030
	END
	++ @3031 EXTERN CORNEIL DX#COR32

CHAIN CORNEIL DX#COR32
	@3032
	EXIT

CHAIN CORNEIL DX#COR35
	@3035
	EXIT


CHAIN CORNEIL DX#COR50
	@3008 // fuck off
	EXIT

EXTEND_BOTTOM HABREGA 0
+ ~Global("LaeralSpawned","GLOBAL",2) Global("ZallaSpawned","GLOBAL",0)~ + @3002 EXTERN HABREGA DX#HABRX // Looking for Zallanora
END

CHAIN HABREGA DX#HABRX
	@3003 // can't help
	EXIT

EXTEND_BOTTOM BYLANNA 5
+ ~Global("LaeralSpawned","GLOBAL",2) Global("ZallaSpawned","GLOBAL",0)~ + @3000 EXTERN BYLANNA DX#BYLAX // Looking for Zallanora
END

CHAIN BYLANNA DX#BYLAX
	@3001 // can't help
	EXIT