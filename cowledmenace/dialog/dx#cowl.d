// Cowled Wizards interjections in Council Building when investigating 

BEGIN ~dx#cowl~

EXTEND_BOTTOM CORNEIL 0
+ ~Global("TwistedLetterFound","GLOBAL",1) Global("BribedCowled","GLOBAL",0) Global("DX#COR10","LOCALS",0)~ + @3004 EXTERN CORNEIL DX#COR10 // (not bribed) I found this letter here implicating your organization
+ ~Global("TwistedLetterFound","GLOBAL",1) GlobalGT("BribedCowled","GLOBAL",0) Global("DX#COR10","LOCALS",0)~ + @3004 EXTERN CORNEIL DX#COR11 // (bribed) I found this letter here implicating your organization
+ ~Global("LaeralSpawned","GLOBAL",2) Global("ZallaSpawned","GLOBAL",0) Global("DX#COR20","LOCALS",0)~ + @3005 EXTERN CORNEIL DX#COR20 // (not bribed) Do you know where I could find a Cowled Wizard going by the name 'Zallanora'?
+ ~Global("TwistedLetterFound2","GLOBAL",1) Global("ZallComing","GLOBAL",1) Global("ZallaSpawned","GLOBAL",0) Global("DX#COR20","LOCALS",0)~ + @3006 EXTERN CORNEIL DX#COR20 // (bribed) Do you know where I could find a Cowled Wizard going by the name 'Zallanora'?
+ ~Global("TwistedLetterFound2","GLOBAL",1) GlobalLT("LaeralSpawned","GLOBAL",2) Global("DX#COR50","LOCALS",0)~ + @3007 EXTERN CORNEIL DX#COR50 // I am a bearer of bad news: it would seem that someone in your organization is up to no good. Have you ever heard of the Twisted Rune?
END

CHAIN CORNEIL DX#COR10
	@3010 // I care not for your ridiculous accusations. This parchment could have been faked. Let me guess, next you're going to ask for a discount on the casting license?
	DO ~SetGlobal("DX#COR10","LOCALS",1)~
	EXIT

CHAIN CORNEIL DX#COR11
	@3011 // And? This parchment could easily have been forged. Domination over Amn? Are you serious? Get out of here.
	DO ~SetGlobal("DX#COR10","LOCALS",1)~
	EXIT

CHAIN CORNEIL DX#COR20
	@3020 // Oh dear, one does not "find" someone such as Zallanora, she finds you.
	DO ~SetGlobal("DX#COR20","LOCALS",1)~
	== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2062 // Ohhh, sounding ominous are we? Does he mean to scare us off or something?
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2063 // You know what else she might find? Me bloody axe, sittin' right in yer guts if ye keep this up!
	== ANOMENJ IF ~Alignment("Anomen",CHAOTIC_NEUTRAL) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2153 // Keep hiding behind your powerful organization, wizard, like the coward you are.
	== ANOMENJ IF ~!Alignment("Anomen",CHAOTIC_NEUTRAL) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2064 // Justice knows no bounds, wizard, even to those who would hide behind powerful organizations such as yours to escape its reach.
	== CORNEIL @3023 // You are owed neither an explanation nor information. Now please leave.
	END
	++ @3021 EXTERN CORNEIL DX#COR30 // I have it on good authority that she's up to no good.
	+ ~Global("ZallaFlee","GLOBAL",1)~ + @3022 EXTERN CORNEIL DX#COR35 // She tried to kill me, and I think she's involved in a serious plot against the realm of Amn.

CHAIN CORNEIL DX#COR30
	@3030 // Is that so? And how come you stumbled upon such information?
	END
	++ @3031 EXTERN CORNEIL DX#COR32 // My... uh, own investigations.

CHAIN CORNEIL DX#COR32
	@3032 // Right. Just so you know, Zallanora is our highest-ranking enforcer, so here's my suggestion on this matter: stay away from her. You don't want to incur her wrath, believe me. Goodbye.
	== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @2060 // Hmph, those wizards act all high and mighty, but they wouldn't last a day in my city.
	== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @2091 // I can sense a bit of agitation in him. Just how influential is that woman within the Cowled Wizards? 
	EXIT

CHAIN CORNEIL DX#COR35
	@3035 // Kill you, huh? You are so bothersome, I can definitely see why.
	== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @2078 // ... That kind of comment certainly doesn't help the Cowled Wizards' favorability.
	== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @2092 // Not a good outlook for bureaucracy. 
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2059 // Here's an idea me brain just came up with: bashing his head in. Ye in, <CHARNAME>? 
	== CORNEIL IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3036 // Are this dwarf's threats credible? Because they don't look like they are.
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2065 // What are ye implying ye spellchucker? Ye think I'd ne'er spill yer guts on the ground?!
	== HAERDAJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @2066 // Oh, we're doing public displays of aggression now? Exciting!
	== NALIAJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @2067// Can we all just calm down for a second?
	== CORNEIL IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3037 // Open threats, here in this office? You are certainly as uncivilized as could be ascertained from your foul appearance, dwarf. 
	== CORNEIL @3033 // Just so you know, Zallanora is our highest-ranking enforcer, so here's my suggestion on this matter: stay away from her. You don't want to incur her wrath, believe me. Goodbye.
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2068 // Bah! Coward mages, the lot of 'em. As bloody usual.
	EXIT

CHAIN CORNEIL DX#COR50
	@3008 // No I haven't heard of them, and I care not for your accusations. Do you have any idea the number of people who barge in accusing us of this or that? Now stop wasting my time and make yourself useful.
	DO ~SetGlobal("DX#COR50","LOCALS",1)~
	== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @2061 // ... And just when I thought I couldn't dislike those wizards any more than I currently do. 
	== JANJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @2093 // Ha! Such a reaction reminds me of a time when my second cousin--
	== VALYGARJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @2094// Not another one of your stories, gnome. This isn't the time.
	EXIT

EXTEND_BOTTOM HABREGA 0
+ ~Global("LaeralSpawned","GLOBAL",2) Global("ZallaSpawned","GLOBAL",0)~ + @3002 EXTERN HABREGA DX#HABRX // I'm looking for a certain Cowled Wizard named 'Zallanora'. Perhaps you know where I can find her?
END

CHAIN HABREGA DX#HABRX
	@3003 // I'm sorry, but I can't help you with that. Those Wizards can do pretty much anything they want around here. Perhaps the magistrate could help you. Good luck.
	EXIT

EXTEND_BOTTOM BYLANNA 5
+ ~Global("LaeralSpawned","GLOBAL",2) Global("ZallaSpawned","GLOBAL",0)~ + @3000 EXTERN BYLANNA DX#BYLAX // I'm looking for a certain Cowled Wizard named 'Zallanora'. Perhaps you know where I can find her?
END

CHAIN BYLANNA DX#BYLAX
	@3001 // You will have to speak with Corneil, their representative. I merely represent the Council here.
	EXIT 