// Cowled Wizards interjections when investigating 

BEGIN ~dx#cowl~

EXTEND_BOTTOM CORNEIL 0
+ ~Global("TwistedLetterFound","GLOBAL",1) Global("BribedCowled","GLOBAL",0)~ + @3004 EXTERN CORNEIL DX#COR10 // Found interesting letter - not bribed
+ ~Global("TwistedLetterFound","GLOBAL",1) GlobalGT("BribedCowled","GLOBAL",0)~ + @3004 EXTERN CORNEIL DX#COR11 // Found interesting letter - bribed
+ ~Global("LaeralSpawned","GLOBAL",2) Global("ZallaSpawned","GLOBAL",0)~ + @3005 EXTERN CORNEIL DX#COR20 // Where is Zallanora? (not bribed)
+ ~Global("TwistedLetterFound2","GLOBAL",1) Global("ZallComing","GLOBAL",1) Global("ZallaSpawned","GLOBAL",0)~ + @3006 EXTERN CORNEIL DX#COR20 // Where is Zallanora? (bribed)
+ ~Global("TwistedLetterFound2","GLOBAL",1) GlobalLT("LaeralSpawned","GLOBAL",2)~ + @3007 EXTERN CORNEIL DX#COR50 // I am a bearer of bad news: it would seem that someone in your organization is up to no good. Have you ever heard of the Twisted Rune?
END

CHAIN CORNEIL DX#COR10
	@3010 // I care not for your ridiculous accusations. This parchment could have been faked. Let me guess, next you're going to ask for a discount on the casting license?
	EXIT

CHAIN CORNEIL DX#COR11
	@3011 // And? This parchment could easily have been forged. Domination over Amn? Are you serious? Get out of here.
	EXIT

CHAIN CORNEIL DX#COR20
	@3020 // Oh dear, one does not "find" someone such as Zallanora, she finds you.
	END
	++ @3021 EXTERN CORNEIL DX#COR30 // I have it on good authority that she's up to no good.
	+ ~Global("ZallaFlee","GLOBAL",1)~ + @3022 EXTERN CORNEIL DX#COR35 // She tried to kill me, and I think she's involved in a serious plot against the realm of Amn.

CHAIN CORNEIL DX#COR30
	@3030 // Is that so? And how come you stumbled upon such information?
	END
	++ @3031 EXTERN CORNEIL DX#COR32 // My... uh, own investigations.

CHAIN CORNEIL DX#COR32
	@3032 // Right. Just so you know, Zallanora is one of our highest-ranking enforcers, so here's my suggestion on this matter: stay away from her. You don't want to incur her wrath, believe me. Goodbye.
	EXIT

CHAIN CORNEIL DX#COR35
	@3035 // Kill you, huh? You are so bothersome, I can definitely see why. Now, I am a busy man, so I would ask that you leave me be.
	EXIT


CHAIN CORNEIL DX#COR50
	@3008 // No I haven't heard of them, and I care not for your accusations. Do you have any idea the number of people who barge in accusing us of this or that? Now stop wasting my time and make yourself useful.
	EXIT

EXTEND_BOTTOM HABREGA 0
+ ~Global("LaeralSpawned","GLOBAL",2) Global("ZallaSpawned","GLOBAL",0)~ + @3002 EXTERN HABREGA DX#HABRX // I'm looking for a certain Cowled Wizard named 'Zallanora'. Perhaps you know where I can find her?
END

CHAIN HABREGA DX#HABRX
	@3003 // I'm sorry, but I can't help you with that, my friend. Those Wizards can do pretty much anything they want around here. Perhaps the magistrate could help you. Good luck.
	EXIT

EXTEND_BOTTOM BYLANNA 5
+ ~Global("LaeralSpawned","GLOBAL",2) Global("ZallaSpawned","GLOBAL",0)~ + @3000 EXTERN BYLANNA DX#BYLAX // I'm looking for a certain Cowled Wizard named 'Zallanora'. Perhaps you know where I can find her?
END

CHAIN BYLANNA DX#BYLAX
	@3001 // You will have to speak with Corneil, their representative. I merely represent the Council here.
	EXIT