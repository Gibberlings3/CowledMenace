// ZALLANORA DIALOG

BEGIN ~dx#zalla~

// Flee if PC cheeses in Graveyard

IF ~AreaCheck("ar0800")
	HPLT(Myself,40)
	!Global("ZallaFlee","GLOBAL",1)~ zalla.fleeGY
	SAY @300
	= @301 
	IF ~~ DO ~SetGlobal("CowledWarning","GLOBAL",8)
			  SpellNoDec(Myself,DRYAD_TELEPORT)
			  SetGlobal("ZallaFlee","GLOBAL",1)~ EXIT
END

// Flee if 1st time in Twisted Rune (license)

IF ~AreaCheck("dx#001")
	!Global("ZallaFlee","GLOBAL",1)~ zalla.fleeT
	SAY @297 
	= @298 
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
	SAY @280 // So we meet again, <CHARNAME>. I was quite content with our mutual ignoring of one another, but I can't let you wreak havoc in my ranks like this. Time for consequences.
	IF ~~ DO ~Enemy()~ EXIT
END

// Amkethran

IF ~AreaCheck("AR5500")~ zalla.tob
	SAY @330
	= @331
	IF ~~ DO ~Enemy()
			  CreateVisualEffect("SPROTECT",[177.2429])
			  CreateVisualEffect("SPROTECT",[548.2444])
			  CreateVisualEffect("SPROTECT",[230.2288])
			  CreateVisualEffect("SPROTECT",[380.2530])
			  CreateVisualEffect("SPROTECT",[576.2550])
			  Wait(1)
			  CreateVisualEffect("SPDISPMA",[177.2429])
			  CreateVisualEffect("SPDISPMA",[548.2444])
			  CreateVisualEffect("SPDISPMA",[230.2288])
			  CreateVisualEffect("SPDISPMA",[380.2530])
			  CreateVisualEffect("SPDISPMA",[576.2550])
			  SmallWait(7)
			  CreateCreature("DX#LICHJ",[177.2429],E)
			  CreateCreature("DX#RUNEE",[548.2444],W)
			  CreateCreature("GOLADA01",[230.2288],S)
			  CreateCreature("DBONEF01",[380.2530],N)
			  CreateCreature("MINDVA01",[576.2550],N)~ EXIT
END

IF ~GlobalLT("ZallaIntro", "GLOBAL",1)
	AreaCheck("AR0800")~ zalla.intro
	SAY @310 /* Here comes the new star of the moment.*/
	++ @311 /* What? */ + zalla.1
	++ @312 /* Wait, you can cast spells in the city? How? */ + zalla.2
END

IF ~~ zalla.1
	SAY @313 /* Before you ask, no, I'm not going to tell you where your friends have been taken. I know who you are, Bhaalspawn, and your matters are of no concern to me. */ 
	++ @320 /* How do you know about me? */ + zalla.2ndpart
END

IF ~~ zalla.2
	SAY @314 /* Here, anyone can, even you. The Graveyard District is quite far removed from our eyes... for the most part. */
	++ @315 /* Our? You're with the Cowled Wizards? */ + zalla.3
END

IF ~~ zalla.3
	SAY @316 /* I am. But before you ask, no, I'm not going to tell you where your friends have been taken. */
	= @317 /* I know who you are, Bhaalspawn, and your matters are of no concern to me. */
	++ @320 /* How do you know about me? */ + zalla.2ndpart
END

IF ~~ zalla.2ndpart
	SAY @322 /* Do you seriously think a mage of Jon's caliber would go unnoticed here? I am well aware of his intentions concerning you. */
	= @323 /* Know this, I would have dealt with this Irenicus myself if he kept pushing. And I will do the same to you if you cause trouble in my ranks. */
	IF ~~ DO ~SpellNoDec(Myself,DRYAD_TELEPORT)
			  SetGlobal("ZallaIntro", "GLOBAL",1)~EXIT
END