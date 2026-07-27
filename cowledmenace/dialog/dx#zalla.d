// ZALLANORA DIALOG

BEGIN dx#zalla

// Call reinforcements if PC engage in Graveyard

CHAIN IF ~OR(2)
			AreaCheck("ar0800")
			AreaCheck("ar0069")
		  Allegiance(Myself,ENEMY)
		  Global("ZallaReinforce","GLOBAL",0)~ THEN dx#zalla 295
	@295	// Hmpf— Picking a fight with me here... You really have no idea who you're facing, do you?
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2055 // A swing of me axe ought to shut her up!
	== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @2069 // What are we doing? Openly attacking a stranger who hasn't wronged us?
	== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @2049 // This does not seem very wise, <CHARNAME>.
	== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @2057 // Uhh... are we sure this is a good idea?
	== dx#zalla @296	// I am Zallanora. Prepare to feel the wrath of the best of the Cowled Wizards, insect.
	DO ~SetGlobal("ZallaReinforce","GLOBAL",1)
		SetName(@1011)
		CreateCreatureObjectDoor("MAGE16C",Myself,0,0,0)
		CreateCreatureObjectDoor("COWENF3",Myself,0,0,0)
		CreateCreatureObjectDoor("MAGE18A",Myself,0,0,0)
		DisplayString(Myself,@413)
		ApplySpell(Myself,CLERIC_HEAL)~   // 413 = Contingency—Nether Rejuvenation
	EXIT

APPEND dx#zalla // We need to add an APPEND because we are switching from CHAIN to SAY

// Flee if defeated in Graveyard - no interjections possible because this is during a time stop.

IF ~OR(2)
		AreaCheck("ar0800")
		AreaCheck("ar0069")
	HPLT(Myself,40)
	!Global("ZallaFlee","GLOBAL",1)~ zalla.fleeGY
	SAY @300 // It seems the Cowled Wizards have underestimated you, Bhaalspawn. A costly mistake I shall not repeat in the future. The organization shall bother you no more.
	= @301 // Enjoy your new spellcasting liberties... while you still can.
	IF ~~ DO ~SetGlobal("CowledWarning","GLOBAL",8)
			  SpellNoDec(Myself,DRYAD_TELEPORT)
			  SetGlobal("ZallaFlee","GLOBAL",1)~ EXIT
END

// Flee if 1st time in Twisted Rune (license) - no interjections possible because this is during a time stop.

IF ~AreaCheck("dx#001")
	!Global("ZallaFlee","GLOBAL",1)~ zalla.fleeT
	SAY @297  // It seems I have underestimated you, Bhaalspawn. A costly mistake I shall not repeat in the future.
	= @298 // Pray we never meet again, for I shall be ready to destroy you.
	IF ~~ DO ~SpellNoDec(Myself,DRYAD_TELEPORT)
			  SetGlobal("ZallaFlee","GLOBAL",1)
			  Wait(2)
			  SetGlobal("ForceLeaveIfBug","LOCALS",1)~ EXIT
END

// Flee if 1st time in last wave of Cowled Enforcers - no interjections possible because this is during a time stop.

IF ~Global("CowledWarning","GLOBAL",7)
	Global("TSFired","GLOBAL",1)~ zalla.flee
	SAY @300 /* It seems the Cowled Wizards have underestimated you, Bhaalspawn. A costly mistake I shall not repeat in the future. The organization shall bother you no more. */
	= @301 /*Enjoy your new spellcasting liberties... while you still can.*/
	IF ~~ DO ~SetGlobal("CowledWarning","GLOBAL",8)
			  SpellNoDec(Myself,DRYAD_TELEPORT)
			  SetGlobal("ZallaFlee","GLOBAL",1)
			  Wait(2)
			  AddJournalEntry(@109,QUEST)~EXIT
END

END // This is the end of an APPEND

// Intro in Cowled Wizards fight (last wave)

CHAIN IF ~Global("CowledWarning","GLOBAL",7)~ THEN dx#zalla zalla.lastwave
	@280 // <CHARNAME>, I was quite content with our mutual ignoring of one another, but I can't let you wreak havoc in my ranks like this.
	== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @2112 // I guess I can consider this an opportunity to have my final revenge on those nefarious wizards. 
	== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @2077 // Wait, I have seen you before! <CHARNAME>, she was there when Irenicus and I were taken to Spellhold.
	== dx#zalla IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @281 // I see that girl managed to escape the asylum. Surprising. No matter, you will all die today regardless.
	== dx#zalla @282 // Time for consequences. 
	EXIT

// Final ambush - Failsafe if bribed cowled wizards AFTER clearing both Twisted Rune enclaves (Small Teeth Pass only, no Waukeen's Promenade)

CHAIN IF ~!Global("ZallaFlee","GLOBAL",1) 
		  Global("BribedCowled","GLOBAL",1)
		  AreaCheck("AR1700")
		  Global("ZallaSpawned","GLOBAL",1)~ THEN dx#zalla 332 
	@332 	// <CHARNAME>, the Twisted Rune and I of the Cowled Wizards of Athkatla have elected that this insolence toward our interests shall end now. 
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2058 // Bah! About bloody time if ye ask me!
	== dx#zalla @333 // We will eradicate your divine soul from the Realms.
	DO ~CreateVisualEffectObject("SPFLSRIN","dx#zalla")
		CreateVisualEffectObject("SPPOWRRD","dx#zalla")
		ForceSpellRES("DX#WISHB",Myself)
		ForceSpellRES("DX#WISHD",NearestEnemyOf(Myself))
		ForceSpellRES("DX#WISHD",FarthestEnemyOf(Myself))~ 
	EXIT  

// Default final ambush

CHAIN IF ~Global("ZallaSpawned","GLOBAL",1)
		  Or(2)
			AreaCheck("AR0700")
			AreaCheck("AR1700")~ THEN dx#zalla 330
	@330   				// We meet again, Child of Bhaal. The Twisted Rune and I have elected that this insolence toward our interests shall end now.
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2058 // Bah! About bloody time if ye ask me!
	== dx#zalla @331	// We underestimated you every step of the way, <CHARNAME>, but this time, we came prepared. We will eradicate your divine soul from the Realms.
	DO ~CreateVisualEffectObject("SPFLSRIN","dx#zalla")
		CreateVisualEffectObject("SPPOWRRD","dx#zalla")
		ForceSpellRES("DX#WISHB",Myself)
		ForceSpellRES("DX#WISHD",NearestEnemyOf(Myself))
		ForceSpellRES("DX#WISHD",FarthestEnemyOf(Myself))~ 
	EXIT
	
// Meeting in Graveyard

CHAIN IF ~GlobalLT("ZallaIntro", "GLOBAL",1)
	AreaCheck("AR0800")~ THEN dx#zalla 310
	@310 // Ah, I assume you've been approached to pick a side by now in this laughable 'guild war' that's going on.
	END
	++ @311 EXTERN dx#zalla 313 /* I'm sorry, what? */
	++ @312 EXTERN dx#zalla 314 /* Wait, you can cast spells in the city? How? */

CHAIN dx#zalla 313 /* I'm sorry, what? */
	@313 // While my colleagues are still quite oblivious to it, I have seen it for what it is: a masquerade. And before you ask, no, I'm not going to tell you where your friend has been taken.
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2052 // You would ignore us like so? Minsc and Boo demand you return Imoen to us this instant!
	== dx#zalla IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @318 // I shall do nothing of the sort. 
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2053 // I... This is unacceptable!
	== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2051 // I wasn't expecting anything from a member of the Cowled Wizards, yet I am still let down. 
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2050 // Ye know this rude lass, <CHARNAME>? Me axe's been ready to swing for a while, ye need only ask... 
	== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2056 // Shut it, dwarf. Nobody asked for your opinion.
	== KORGANJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2048// And ye should shut yer yap as well, ye charcoaled hag!
	== dx#zalla @317 // I know who you are, Bhaalspawn, and your matters are of no concern to me.
	END
	++ @320 EXTERN dx#zalla 322 /* You're with the Cowled Wizards? How do you know about me? */

CHAIN dx#zalla 322 /* How do you know about me? */
	@322 /* Do you seriously think a mage of Jon Irenicus' caliber would go unnoticed here? I am well aware of his interest in you, <PRO_GIRLBOY>. */
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2054 // We've only just arrived in this city, and yet she knows about you. I don't like this.
	== dx#zalla @323 /* Know this, I would have dealt with this Irenicus myself had he persisted. Or anybody, in fact, should they become a nuisance. We are always watching. */
	DO ~AddJournalEntry(@99,QUEST)
		SpellNoDec(Myself,DRYAD_TELEPORT)
		SetGlobal("ZallaIntro", "GLOBAL",1)~
	EXIT


CHAIN dx#zalla 314 /* Wait, you can cast spells in the city? How? */
	@314 /* Here, anyone can, even you. The Graveyard District is quite far removed from our eyes... for the most part. */
	END
	++ @315 EXTERN dx#zalla 316 /* Our? You're with the Cowled Wizards? */

CHAIN dx#zalla 316 /* Our? You're with the Cowled Wizards? */
	@316 /* I am. But before you ask, no, I'm not going to tell you where your friend has been taken.*/
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2052 // You would ignore us like so? Minsc and Boo demand you return Imoen to us this instant!
	== dx#zalla IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @318 // I shall do nothing of the sort. 
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2053 // I... This is unacceptable!
	== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2051 // I wasn't expecting anything from a member of the Cowled Wizards, yet I am still let down. 
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2050 // Ye know this rude lass, <CHARNAME>? Me axe's been ready to swing for a while, ye need only ask... 
	== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2056 // Shut it, dwarf. Nobody asked for your opinion.
	== KORGANJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2048// And ye should shut yer yap, ye charcoaled hag!
	== dx#zalla @317 // I know who you are, Bhaalspawn, and your matters are of no concern to me.
	END
	++ @321 EXTERN dx#zalla 322 /* How do you know about me? */


