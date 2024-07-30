// LAERAL SILVERHAND DIALOG

BEGIN dx#laerd
BEGIN dx#shool

CHAIN IF ~NumTimesTalkedTo(0) AreaCheck("DX#002")~ THEN dx#laerd 498
	@498
	== dx#rzall @507
	== dx#shool @499
	END
	++ @500 EXTERN dx#laerd 501

CHAIN dx#laerd 501
	@501
	== dx#shool @502
	== dx#shool @503
	== dx#shool @504
	== dx#shool @505
	== dx#shool @506
	DO ~Kill("dx#shool")
		CreateVisualEffectObject("SPFLSRIN","DX#SHOOL")
		SetGlobal("KilledShoon","GLOBAL",1)~
	EXIT

/*
CHAIN IF ~NumTimesTalkedTo(1) AreaCheck("DX#002")~ THEN dx#laerd 509
	@509
	END
	++ @511 EXTERN dx#laerd 512
	
CHAIN dx#laerd 512
	@512
	= @513
	END
	++ @514 EXTERN dx#laerd 520

CHAIN dx#laerd 520
	@520
	EXIT
	*/

CHAIN IF ~NumTimesTalkedTo(0) AreaCheck("ar0802")~ THEN dx#laerd crypt
	@1100 // Finally, I found you in the crypts!
	== dx#laerd @1101
	END
	++ @1105 EXTERN dx#laerd 1110
	++ @1106 EXTERN dx#laerd 1120
	++ @1107 EXTERN dx#laerd 1120

CHAIN dx#laerd 1110
	@1110
	== dx#laerd @1111
	END
	IF ~~ EXTERN dx#laerd 1125

CHAIN dx#laerd 1120
	@1120
	END
	IF ~~ EXTERN dx#laerd 1125

CHAIN dx#laerd 1125
	@1125
	== dx#laerd @1126
	== dx#laerd @1127
	== dx#laerd @1128
	== dx#laerd @1129
	END
	++ @1140 EXTERN dx#laerd 1150
	++ @1145 EXTERN dx#laerd 1155

CHAIN dx#laerd 1150 // Let's go in then.
	@1150
	DO ~MoveToPointNoInterrupt([1080.2080])
		Wait(2)
		DisplayString(Player1,@1160)~
	EXIT

CHAIN dx#laerd 1155
	@1155
	END
	IF ~~ EXTERN dx#laerd 1150

CHAIN IF ~NumTimesTalkedTo(0) Global("LaeralSpawned","GLOBAL",1) !AreaCheck("DX#002")~ THEN dx#laerd 2ndtime
	@900 // We meet again
	== dx#laerd @901
	== dx#laerd @902
	END
	+ ~Global("ZallaFlee","GLOBAL",1)~ + @905 EXTERN dx#laerd 920
	+ ~Global("ZallaIntro","GLOBAL",1) GlobalLT("ZallaFlee","GLOBAL",1)~ + @906 EXTERN dx#laerd 940
	++ @907 EXTERN dx#laerd 960
	+ ~Global("ZallaFlee","GLOBAL",1) Global("BribedCowled","GLOBAL",1) AreaCheck("bg0800")~ + @908 EXTERN dx#laerd 920

CHAIN dx#laerd 920
	@920
	END
	++ @923 EXTERN dx#laerd 925

CHAIN dx#laerd 925
	@925
	== dx#laerd @926
	== dx#laerd @927
	== dx#laerd @928
	== dx#laerd @929
	== dx#laerd @930
	DO ~SetGlobal("LaeralSpawned","GLOBAL",2)
		SpellNoDec(Myself,DRYAD_TELEPORT)
		Wait(2)
		AddJournalEntry(@107,QUEST)~
	EXIT

CHAIN dx#laerd 940
	@940
	END
	IF ~~ EXTERN dx#laerd 945

CHAIN dx#laerd 945
	@945
	== dx#laerd @946
	== dx#laerd @947
	DO ~SetGlobal("LaeralSpawned","GLOBAL",2)
		SpellNoDec(Myself,DRYAD_TELEPORT)
		Wait(2)
		AddJournalEntry(@107,QUEST)~
	EXIT

CHAIN dx#laerd 960
	@960
	END
	IF ~~ EXTERN dx#laerd 945

CHAIN IF ~NumTimesTalkedTo(0) AreaCheck("DX#001")~ THEN dx#laerd bgintro
	@700 // BG intro
	== dx#laerd @701  
	END
	++ @704 EXTERN dx#laerd 730
	++ @705 EXTERN dx#laerd 770

CHAIN IF ~NumTimesTalkedTo(0) AreaCheck("ar1008")~ THEN dx#laerd athintro
	@700 // Athkatla intro (for now, same as BG intro)
	== dx#laerd @701 
	END
	++ @704 EXTERN dx#laerd 730
	++ @705 EXTERN dx#laerd 770

CHAIN dx#laerd 710
	@710 // Fair enough
	END
	IF ~~ EXTERN dx#laerd 711

CHAIN dx#laerd 711
	@711 // My name is Laeral Silverhand
	END
	++ @712 EXTERN dx#laerd 720
	++ @713 EXTERN dx#laerd 725

CHAIN dx#laerd 720
	@720
	END
	++ @721 EXTERN dx#laerd part2

CHAIN dx#laerd 725
	@725
	END
	IF ~~ EXTERN dx#laerd part2

CHAIN dx#laerd 730 // I know who you are, Godchild.
	@730
	END
	++ @733 EXTERN dx#laerd 740
	++ @734 EXTERN dx#laerd 740
	++ @735 EXTERN dx#laerd 711

CHAIN dx#laerd 740 // Elminster
	@740
	END
	++ @741 EXTERN dx#laerd 750
	++ @742 EXTERN dx#laerd 710
	++ @743 EXTERN dx#laerd 760

CHAIN dx#laerd 750
	@750
	END
	++ @751 EXTERN dx#laerd 755

CHAIN dx#laerd 755
	@755
	END
	++ @756 EXTERN dx#laerd 711

CHAIN dx#laerd 760
	@760
	== dx#laerd @761
	END
	++ @762 EXTERN dx#laerd 710

CHAIN dx#laerd 770
	@770
	END
	++ @704 EXTERN dx#laerd 730

// Part 2

/*
CHAIN dx#laerd part2a
	@800
	== dx#laerd @801 
	END
	++ @811 EXTERN dx#laerd 840
	*/

CHAIN dx#laerd part2
	@802
	== dx#laerd @803
	END
	++ @811 EXTERN dx#laerd 840

CHAIN dx#laerd 840
	@840
	== dx#laerd @841
	END
	+ ~AreaCheck("AR1008") GlobalLT("SanSoDSkie","Global",7) GlobalGT("BD_Plot","Global",649)~ + @845 EXTERN dx#laerd 850
	+ ~AreaCheck("AR1008") GlobalLT("SanSoDSkie","Global",7) GlobalGT("BD_Plot","Global",649)~ + @846 EXTERN dx#laerd 850
	++ @847 EXTERN dx#laerd 855

CHAIN dx#laerd 850
	@850
	== dx#laerd @860
	DO ~SetGlobal("LaeralSpawned","GLOBAL",1)
		SetGlobal("DxOpenBGBridge","GLOBAL",1)
		SpellNoDec(Myself,DRYAD_TELEPORT)
		Wait(2)
		AddJournalEntry(@104,QUEST)~
	EXIT

CHAIN dx#laerd 855
	@855
	DO ~SetGlobal("LaeralSpawned","GLOBAL",1)
		SetGlobal("DxOpenBGBridge","GLOBAL",1)
		SpellNoDec(Myself,DRYAD_TELEPORT)
		Wait(2)
		AddJournalEntry(@104,QUEST)~
	EXIT

APPEND dx#laerd

IF ~Global("KilledShoon","GLOBAL",1) AreaCheck("ar4500")~ goodbye
	SAY @625
	= @626
	= @630
	IF ~~ DO ~EraseJournalEntry(@120) 
			  TakePartyItem("dx#wards")
			  DestroyItem("dx#wards")
			  AddJournalEntry(@150,QUEST_DONE)
			  ClearAllActions()
			  StartCutSceneMode()
			  Wait(1)
			  CreateVisualEffectObject("SPDIMNDR",Player1)
			  FadeToColor([20.0],0)
			  SpellNoDec(Myself,DRYAD_TELEPORT)
			  PlaySound("PORTAL2")
			  Wait(1) 
			  ActionOverride(Player1,LeaveAreaLUAPanic("AR0802","",[980.2000],NE))
			  ActionOverride(Player1,LeaveAreaLUA("AR0802","",[980.2000],NE))
			  ActionOverride(Player2,LeaveAreaLUA("AR0802","",[980.2000],NE))
			  ActionOverride(Player3,LeaveAreaLUA("AR0802","",[980.2000],NE))
			  ActionOverride(Player4,LeaveAreaLUA("AR0802","",[980.2000],NE))
			  ActionOverride(Player5,LeaveAreaLUA("AR0802","",[980.2000],NE))
			  ActionOverride(Player6,LeaveAreaLUA("AR0802","",[980.2000],NE))
			  MultiPlayerSync()
			  EndCutSceneMode()
			  FadeFromColor([20.0],0)~ EXIT
END

IF ~Global("KilledShoon","GLOBAL",1) AreaCheck("DX#002")~ greetcrypt 
	SAY @521 
	IF ~~ EXIT
END 

END // This is an end to APPEND


// SHOON VII DIALOG

BEGIN dx#shd

CHAIN IF ~NumTimesTalkedTo(0)~ THEN dx#shd 340
	@340 /*So you even found your way here. In my sanctum. To think I would endure against all odds for hundreds of years only to end up in this state. The gods are not without a sense of irony.*/
	DO ~SetGlobal("MetShoon","GLOBAL",1)~
	== dx#laerd @341
	== dx#shd @342
	== dx#demid @343
	== dx#shd @344
	END 
	++ @345 EXTERN dx#shd 350

CHAIN dx#shd 350
	@350
	== dx#laerd @351
	== dx#shd @352
	== dx#laerd @353
	== dx#shd @354
	== dx#shd @355
	== dx#shd @356
	== dx#shd @357
	END
	++ @365 EXTERN dx#shd 370

CHAIN dx#shd 370
	@370
	== dx#shd @371
	== dx#shd @372
	== dx#shd @373
	== dx#laerd @374
	== dx#shd @380
	== dx#shd @381
	== dx#shd @382
	END
	++ @385 EXTERN dx#shd 420
	++ @386 EXTERN dx#shd 430

CHAIN dx#shd 420
	@420
	== dx#shd @421
	END
	++ @423 EXTERN dx#shd 426

CHAIN dx#shd 426
	@426
	END
	IF ~~ EXTERN dx#shd 427

CHAIN dx#shd 427
	@427
	== dx#laerd @435
	== dx#laerd @440
	== dx#laerd @441
	== dx#laerd @442
	== dx#laerd @443
	END
	IF ~~ EXTERN dx#shd 450

CHAIN dx#shd 430
	@430
	END
	++ @385 EXTERN dx#shd 420

CHAIN dx#shd 450
	@450
	== dx#laerd @451
	== dx#shd @452
	== dx#laerd @453
	== dx#shd @455
	END
	++ @460 EXTERN dx#shd 470
	++ @461 EXTERN dx#shd 470
	++ @462 EXTERN dx#shd 470
	++ @463 EXTERN dx#shd pleaseno

CHAIN dx#shd pleaseno
	@480
	== dx#laerd @481
	END
	++ @485 EXTERN dx#shd 470
	++ @486 EXTERN dx#shd 490

CHAIN dx#shd 470
	@470
	== dx#shd @471
	== dx#laerd @472
	== dx#laerd @473
	DO ~StartCutSceneMode()
		StartCutScene("dx#cut04")~
	EXIT
	
CHAIN dx#shd 490
	@490
	END
	++ @491 EXTERN dx#shd 492
	
CHAIN dx#shd 492
	@492
	== dx#laerd @496 //End of Evil path
	== dx#laerd @497
	DO ~EraseJournalEntry(@120)
		AddJournalEntry(@121,QUEST_DONE)
		AddXPObject(Player1,34500)
		AddXPObject(Player2,34500)
		AddXPObject(Player3,34500)
		AddXPObject(Player4,34500)
		AddXPObject(Player5,34500)
		AddXPObject(Player6,34500)
		SetGlobal("LaeralSpawned","GLOBAL",10)
		ActionOverride("dx#laera",SpellNoDec(Myself,DRYAD_TELEPORT))~ 
	EXIT

APPEND dx#shd

IF ~Global("LaeralSpawned","GLOBAL",10) Global("MetShoon","GLOBAL",1)~ greetevil 
	SAY @397 /*Now that the wench is gone, you are of no concern to me. I care not about your mortal dealings. What I'm pondering over right now, is what I should do with an eternity to think.*/
	IF ~~ EXIT
END 

IF ~Global("MetShoon","GLOBAL",1)~ greet2 
	SAY @398 /*What would you do if you had an eternity to think? It is what I'm pondering over at this moment. You, however, should ponder over a much shorter timespan, like what you should do right now.*/
	IF ~~ EXIT
END 

END // This is an end to APPEND

// Real Zallanora DIALOG

BEGIN dx#rzall

CHAIN IF ~AreaCheck("AR4500")~ THEN dx#rzall survive
	@550 /*Wh... Where am I?*/
	END
	++ @551 EXTERN dx#rzall 552

CHAIN dx#rzall 552
	@552
	END
	++ @553 EXTERN dx#rzall 555
	++ @554 EXTERN dx#rzall 555

CHAIN dx#rzall 555
	@555
	END
	++ @560 EXTERN dx#rzall 561

CHAIN dx#rzall 561
	@561
	== dx#laerd @562
	== dx#rzall @563
	END
	++ @565 EXTERN dx#rzall 580
	++ @566 EXTERN dx#rzall 570
	++ @567 EXTERN dx#rzall 580

CHAIN dx#rzall 570
	@570
	END
	++ @571 EXTERN dx#rzall 580

CHAIN dx#rzall 580
	@580
	== dx#laerd @581
	== dx#rzall @582
	END
	++ @583 EXTERN dx#rzall 590
	++ @584 EXTERN dx#rzall 600

CHAIN dx#rzall 590
	@590
	END
	++ @584 EXTERN dx#rzall 600

CHAIN dx#rzall 600
	@600
	END
	++ @601 EXTERN dx#rzall 610
	+ ~PartyGoldGT(1999)~ + @602 EXTERN dx#rzall 611
	++ @603 EXTERN dx#rzall 610

CHAIN dx#rzall 610
	@610
	DO ~AddXPObject(Player1,64500)
		AddXPObject(Player2,64500)
		AddXPObject(Player3,64500)
		AddXPObject(Player4,64500)
		AddXPObject(Player5,64500)
		AddXPObject(Player6,64500)
		SetGlobal("LaeralSpawned","GLOBAL",10)
		ActionOverride(Player1,ForceSpell("dx#rzall",DRYAD_TELEPORT))~
	EXIT

// 		ActionOverride("DX#LAERA",StartDialogueNoSet(Player1))

CHAIN dx#rzall 611
	@611
	DO ~TakePartyGold(2000)
		AddXPObject(Player1,84500)
		AddXPObject(Player2,84500)
		AddXPObject(Player3,84500)
		AddXPObject(Player4,84500)
	    AddXPObject(Player5,84500)
		AddXPObject(Player6,84500)
		SetGlobal("LaeralSpawned","GLOBAL",10)
		ActionOverride(Player1,ForceSpell("dx#rzall",DRYAD_TELEPORT))~
	EXIT

CHAIN IF ~NumTimesTalkedTo(0) AreaCheck("DX#002") Global("KilledShoon","GLOBAL",1)~ THEN dx#rzall oww
	@508
	== dx#laerd @509
	END
	++ @511 EXTERN dx#rzall 510

CHAIN dx#rzall 510
	@510
	== dx#laerd @512
	END dx#laerd 513

	APPEND dx#laerd

	IF ~~ 513
	SAY @513
	++ @514 + 520
	END

	IF ~~ 520
	SAY @520
	IF ~~ EXIT
	END

	END

APPEND dx#rzall

IF ~NumTimesTalkedToGT(0) Global("KilledShoon","GLOBAL",1)~ stayingfaint
	SAY @531 /*(Zallanora is unconscious from exhaustion)*/
	++ @532 + pocketplane
	++ @533 + leavebody
END

IF ~~ leavebody
	SAY @534
	IF ~~ EXIT
END

IF ~~ pocketplane
	SAY @535
	IF ~~ DO ~ClearAllActions()
		StartCutSceneMode()
		CreateVisualEffectObject("SPDIMNDR",Player1)
		FadeToColor([20.0],0)
		SetGlobal("ZallPocket","GLOBAL",1)
		Wait(1)
		PlaySound("PORTAL2")
		Wait(2)
		ActionOverride(Player1,LeaveAreaLUAPanic("AR4500","",[1984.1288],NE))
		ActionOverride(Player1,LeaveAreaLUA("AR4500","",[2035.1315],NE))
		ActionOverride(Player2,LeaveAreaLUA("AR4500","",[1950.1250],NE))
		ActionOverride(Player3,LeaveAreaLUA("AR4500","",[2075.1345],NE))
		ActionOverride(Player4,LeaveAreaLUA("AR4500","",[1930.1215],NE))
		ActionOverride(Player5,LeaveAreaLUA("AR4500","",[1984.1250],NE))
		ActionOverride(Player6,LeaveAreaLUA("AR4500","",[1954.1288],NE))
		Wait(1)
		MultiPlayerSync()
		EndCutSceneMode()
		FadeFromColor([20.0],0)~ EXIT
END

END

// Zallanora the Demilich DIALOG

BEGIN dx#demid

IF ~True()~ sing
	SAY @343
	IF ~~ EXIT
END