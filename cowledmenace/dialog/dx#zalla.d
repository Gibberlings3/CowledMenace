// ZALLANORA DIALOG

BEGIN ~dx#zalla~

// Call reinforcements if PC engage in Graveyard

IF ~AreaCheck("ar0800")
	Allegiance(Myself,ENEMY)
	Global("ZallaReinforce","GLOBAL",0)~ zalla.reinforce
	SAY @295 // Hmpf— Picking a fight with me here... You really have no idea who you're facing, do you?
	= @296// Prepare to feel the wrath of the highest members of the Cowled Wizards, insect.
	IF ~~ DO ~SetGlobal("ZallaReinforce","GLOBAL",1)
			  CreateCreatureObjectDoor("MAGE16C",Myself,0,0,0)
			  CreateCreatureObjectDoor("COWENF3",Myself,0,0,0)
			  CreateCreatureObjectDoor("MAGE18A",Myself,0,0,0)
			  DisplayString(Myself,@413)
			  ApplySpell(Myself,CLERIC_HEAL)~ EXIT
END

// Flee if defeated in Graveyard

IF ~AreaCheck("ar0800")
	HPLT(Myself,40)
	!Global("ZallaFlee","GLOBAL",1)~ zalla.fleeGY
	SAY @300 // It seems the Cowled Wizards have underestimated you, Bhaalspawn. A costly mistake I shall not repeat in the future. The organization shall bother you no more.
	= @301 // Enjoy your new spellcasting liberties... while you still can.
	IF ~~ DO ~SetGlobal("CowledWarning","GLOBAL",8)
			  SpellNoDec(Myself,DRYAD_TELEPORT)
			  SetGlobal("ZallaFlee","GLOBAL",1)~ EXIT
END

// Flee if 1st time in Twisted Rune (license)

IF ~AreaCheck("dx#001")
	!Global("ZallaFlee","GLOBAL",1)~ zalla.fleeT
	SAY @297  // It seems I have underestimated you, Bhaalspawn. A costly mistake I shall not repeat in the future.
	= @298 // Pray we never meet again, for I shall be ready to destroy you.
	IF ~~ DO ~SpellNoDec(Myself,DRYAD_TELEPORT)
			  SetGlobal("ZallaFlee","GLOBAL",1)
			  Wait(2)
			  SetGlobal("ForceLeaveIfBug","LOCALS",1)~ EXIT
END

// Flee if 1st time in last wave of Cowled Enforcers

IF ~Global("CowledWarning","GLOBAL",7)
	Global("TSFired","GLOBAL",1)~ zalla.flee
	SAY @300 /* It seems the Cowled Wizards have underestimated you, Bhaalspawn. A costly mistake I shall not repeat in the future. The organization shall bother you no more. */
	= @301 /*Enjoy your new spellcasting liberties... while you still can.*/
	IF ~~ DO 
	~SetGlobal("CowledWarning","GLOBAL",8)
	SpellNoDec(Myself,DRYAD_TELEPORT)
	SetGlobal("ZallaFlee","GLOBAL",1)
	Wait(2)
	AddJournalEntry(@109,QUEST)~EXIT
END

// Intro in Cowled Wizards fight

IF ~Global("CowledWarning","GLOBAL",7)~ zalla.lastwave
	SAY @280 // <CHARNAME>, I was quite content with our mutual ignoring of one another, but I can't let you wreak havoc in my ranks like this. Time for consequences.
	IF ~~ DO ~Enemy()~ EXIT
END

// Small Teeth Pass

// Failsafe if bribed cowled wizards and cleared both Twisted Rune enclaves (Small Teeth Pass only, no Waukeen's Promenade)

IF ~!Global("ZallaFlee","GLOBAL",1) 
	AreaCheck("AR1700")~ zalla.failsafe  
	SAY @332 // <CHARNAME>, the Twisted Rune and I of the Cowled Wizards of Athkatla have elected that this insolence toward our interests shall end now. We will eradicate your divine soul from this Earth.
	IF ~~ DO ~Enemy()
			  CreateVisualEffect("SPROTECT",[3097.1333])
			  CreateVisualEffect("SPROTECT",[2872.1237])
			  CreateVisualEffect("SPROTECT",[3078.1190])
			  CreateVisualEffect("SPROTECT",[2950.1128])
			  CreateVisualEffect("SPROTECT",[3266.1170])
			  CreateVisualEffectObject("SPFLSRIN","dx#zalla")
			  CreateVisualEffectObject("SPPOWRRD","dx#zalla")
			  Wait(1)
			  ForceSpellRES("DX#WISHB",Myself)
			  ForceSpellRES("DX#WISHD",NearestEnemyOf(Myself))
			  ForceSpellRES("DX#WISHD",FarthestEnemyOf(Myself))
			  CreateVisualEffect("SPDISPMA",[3097.1333])
			  CreateVisualEffect("SPDISPMA",[2872.1237])
			  CreateVisualEffect("SPDISPMA",[3078.1190])
			  CreateVisualEffect("SPDISPMA",[2950.1128])
			  CreateVisualEffect("SPDISPMA",[3266.1170])
			  SmallWait(7)
			  CreateCreature("DX#LICHJ",[3097.1333],N)
			  CreateCreature("DX#RUNEE",[2872.1237],NE)
			  CreateCreature("GOLADA01",[3078.1190],N)  
			  CreateCreature("DBONEF01",[2950.1128],NE)
			  CreateCreature("MINDVA01",[3266.1170],NW)

~ EXIT  
END

// Main

IF ~AreaCheck("AR1700")~ zalla.tob
	SAY @330   //330 = ~We meet again, Child of Bhaal. The Twisted Rune and I have elected that this insolence toward our interests shall end now.~
	= @331	// 331 = ~I underestimated you last time, <CHARNAME>, but this time, I came prepared. We will eradicate your divine soul from this Earth.~
	IF ~~ DO ~Enemy()
			  CreateVisualEffect("SPROTECT",[3097.1333])
			  CreateVisualEffect("SPROTECT",[2872.1237])
			  CreateVisualEffect("SPROTECT",[3078.1190])
			  CreateVisualEffect("SPROTECT",[2950.1128])
			  CreateVisualEffect("SPROTECT",[3266.1170])
			  CreateVisualEffectObject("SPFLSRIN","dx#zalla")
			  CreateVisualEffectObject("SPPOWRRD","dx#zalla")
			  Wait(1)
			  ForceSpellRES("DX#WISHB",Myself)
			  ForceSpellRES("DX#WISHD",NearestEnemyOf(Myself))
			  ForceSpellRES("DX#WISHD",FarthestEnemyOf(Myself))
			  CreateVisualEffect("SPDISPMA",[3097.1333])
			  CreateVisualEffect("SPDISPMA",[2872.1237])
			  CreateVisualEffect("SPDISPMA",[3078.1190])
			  CreateVisualEffect("SPDISPMA",[2950.1128])
			  CreateVisualEffect("SPDISPMA",[3266.1170])
			  SmallWait(7)
			  CreateCreature("DX#LICHJ",[3097.1333],N)
			  CreateCreature("DX#RUNEE",[2872.1237],NE)
			  CreateCreature("GOLADA01",[3078.1190],N)  
			  CreateCreature("DBONEF01",[2950.1128],NE)
			  CreateCreature("MINDVA01",[3266.1170],NW)~ EXIT
END

// Waukeen's Promenade

IF ~AreaCheck("AR0700")~ zalla.tob2
	SAY @330   //330 = ~We meet again, Child of Bhaal. The Twisted Rune and I have elected that this insolence toward our interests shall end now.~
	= @331		// 331 = ~I underestimated you last time, <CHARNAME>, but this time, I came prepared. We will eradicate your divine soul from this Earth.~
	IF ~~ DO ~Enemy()
			  CreateVisualEffect("SPROTECT",[1938.1430])
			  CreateVisualEffect("SPROTECT",[1777.1740])
			  CreateVisualEffect("SPROTECT",[1954.1590])
			  CreateVisualEffect("SPROTECT",[1720.1452])
			  CreateVisualEffect("SPROTECT",[1541.1588])
			  CreateVisualEffectObject("SPFLSRIN","dx#zalla")
			  CreateVisualEffectObject("SPPOWRRD","dx#zalla")
			  Wait(1)
			  ForceSpellRES("DX#WISHB",Myself)
			  ForceSpellRES("DX#WISHD",NearestEnemyOf(Myself))
			  ForceSpellRES("DX#WISHD",FarthestEnemyOf(Myself))
			  CreateVisualEffect("SPDISPMA",[1938.1430])
			  CreateVisualEffect("SPDISPMA",[1777.1740])
			  CreateVisualEffect("SPDISPMA",[1954.1590])
			  CreateVisualEffect("SPDISPMA",[1720.1452])
			  CreateVisualEffect("SPDISPMA",[1541.1588])
			  SmallWait(7)
			  CreateCreature("DX#LICHJ",[1938.1430],S)
			  CreateCreature("DX#RUNEE",[1777.1740],N)
			  CreateCreature("GOLADA01",[1954.1590],S)
			  CreateCreature("DBONEF01",[1720.1452],SE)
			  CreateCreature("MINDVA01",[1541.1588],E)~ EXIT
END

IF ~GlobalLT("ZallaIntro", "GLOBAL",1)
	AreaCheck("AR0800")~ zalla.intro
	SAY @310 // Ah, I assume you've been approached to pick a side by now in this laughable 'guild war' that's going on.
	++ @311 /* I'm sorry, what? */ + zalla.1
	++ @312 /* Wait, you can cast spells in the city? How? */ + zalla.2
END

IF ~~ zalla.1
	SAY @313 /* Before you ask, no, I'm not going to tell you where your friends have been taken. I know who you are, Bhaalspawn, and your matters are of no concern to me. */ 
	++ @320 /* You're with the Cowled Wizards? How do you know about me? */ + zalla.2ndpart
END

IF ~~ zalla.2
	SAY @314 /* Here, anyone can, even you. The Graveyard District is quite far removed from our eyes... for the most part. */
	++ @315 /* Our? You're with the Cowled Wizards? */ + zalla.3
END

IF ~~ zalla.3
	SAY @316 /* I am. But before you ask, no, I'm not going to tell you where your friends have been taken. */
	= @317 /* I know who you are, Bhaalspawn, and your matters are of no concern to me. */
	++ @321 /* How do you know about me? */ + zalla.2ndpart
END

IF ~~ zalla.2ndpart
	SAY @322 /* Do you seriously think a mage of Jon Irenicus' caliber would go unnoticed here? I am well aware of his interest in you. */
	= @323 /* Know this, I would have dealt with this Irenicus myself had he persisted. Or anybody, in fact, should they become a nuisance. We are always watching. */
	IF ~~ DO ~AddJournalEntry(@99,QUEST)
			  SpellNoDec(Myself,DRYAD_TELEPORT)
			  SetGlobal("ZallaIntro", "GLOBAL",1)~EXIT
END

