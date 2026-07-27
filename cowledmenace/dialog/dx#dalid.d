
BEGIN dx#dalid // Dalina
BEGIN dx#lichd // Kartak Spellseer

CHAIN IF ~NumTimesTalkedTo(1) Global("ZallComing2","dx#001",1)~ THEN dx#dalid theyknow
	@267 	// Welcome, Zallanora. We were expecting you.
	== dx#zalla @268 	// Speak quickly, I have matters to attend to.
	== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @2076 // (whispering) <CHARNAME>, I recognize her. She was there when I... when Irenicus and I were taken to Spellhold.
	== dx#dalid @270 	// Not so fast. Intruders have found their way in here, intruders who have slain Shangalar the Black in Athkatla... right under your nose.
	== dx#zalla @304 	// Oh I know them. To think this... Bhaalspawn managed to destroy Shangalar is a repulsive thought. 
	== KORGANJ IF ~Global("ZallaIntro", "GLOBAL",1) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2085 // Oh I be recallin' who that blasted rude elf is. She's got it coming. 'It' being... me axe!
	== dx#zalla @306	// And yet, Runemaster, you would do well to go all out against <CHARNAME>. They are not to be trifled with. But it is time for consequences.
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2070 // More like you, evildoer, who will meet our wrath! Boo is shaking in anticipation of the glorious butt-kicking coming up!
	== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2083 // You have foolishly made enemies of the great Edwin Odesseiron. You will soon understand how bad of an idea that was.
	== ANOMENJ IF ~!Alignment("Anomen",CHAOTIC_NEUTRAL) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2082 // Finally, clear-cut foes to strike down in the name of Justice. It has been a full minute since the last, it seems!
	== ANOMENJ IF ~Alignment("Anomen",CHAOTIC_NEUTRAL) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2154 // You've chanced upon me at a time in my life when I wish to bash things mindlessly, villain, and finally I've a proper target for my rage!
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2075 // I doubt any would weep if Amn was free of the influence of such an evil organization.
	== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @2071 // *Roars viciously*
	== dx#zalla @305	// <CHARNAME>, today is the day you die.
	DO ~CreateCreatureObjectEffect("MAGE18Z","SPROTECT","dx#zalla")
		StartCutScene("dx#cut02")~
	EXIT

CHAIN IF ~NumTimesTalkedTo(1) GlobalLT("ZallComing2","dx#001",1)~ THEN dx#dalid theydont
	@267	// Welcome, Zallanora. We were expecting you.
	== dx#zalla @268 	// Speak quickly, I have matters to attend to.
	== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @2076 // (whispering) <CHARNAME>, I recognize her. She was there when I... when Irenicus and I were taken to Spellhold.
	== dx#dalid @269 	// Of course. In the meantime, however, it seems intruders have found their way in here. Will you join in on the fun before we get to business?
	== dx#zalla @302	// Oh I know them. The intruder is a Bhaalspawn, and an enterprising one at that.
	== KORGANJ IF ~Global("ZallaIntro", "GLOBAL",1) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2085 // Oh I be recallin' who that blasted rude elf is. She's got it coming. "It" being... me axe!	
	== dx#zalla @303 	// It would seem, <CHARNAME>, that you have finally meddled in affairs that you shouldn't have. Time for consequences.
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2070 // More like you, evildoer, who will meet our wrath! Boo is shaking in anticipation of the glorious butt-kicking coming up!
	== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2083 // You have foolishly made enemies of the great Edwin Odesseiron. You will soon understand how bad of an idea that was.
	== ANOMENJ IF ~!Alignment("Anomen",CHAOTIC_NEUTRAL) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2082 // Finally, clear-cut foes to strike down in the name of Justice. It has been a full minute since the last, it seems!
	== ANOMENJ IF ~Alignment("Anomen",CHAOTIC_NEUTRAL) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2154 // You've chanced upon me at a time in my life when I wish to bash things mindlessly, villain, and finally I've a proper target for my rage!
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2075 // I doubt any would weep if Amn was free of the influence of such an evil organization.
	== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @2071 // *Roars viciously*
	== dx#zalla @307	// Today is the day you die.
	DO ~CreateCreatureObjectEffect("MAGE18Z","SPROTECT","dx#zalla")
		StartCutScene("dx#cut02")~
	EXIT

// Introductions
CHAIN IF ~NumTimesTalkedTo(0)~ THEN dx#dalid d1intro
	@250 /*Our contact from Athkatla should be arriving shortly, Runemaster. I assure you, the resources of the Cowled Wizards will be of great assistance to--*/
	== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @2074 // Cowled Wizards... I shudder just hearing that now.
	== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @2073 // Drat, did I do something weird again and we ended up here as a result?
	== dx#lichd @251 /*At last, they seem to have come.*/
	== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @2084 // More shady dealings involving the Cowled Wizards. Why am I not surprised?
	== dx#dalid @252 /*Runemaster, this... is not the contact we're waiting for.*/
	== dx#lichd @253 // Indeed?
	== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @2090 // Am I the only one who thinks we might be in over our heads?
	== VICONIJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @2098 // Naturally. Always frightened, you are, and ever the coward.
	== dx#lichd @254 // You, mortal. You found yourself a key, and knew where to use it. Why is that?
	END
	+ ~!Global("BribedCowled","GLOBAL",1)~ + @255 EXTERN dx#lichd ldfight1 // I don't know. One second I was in the Umar Hills and now I'm here.
	+ ~!Global("BribedCowled","GLOBAL",1)~ + @261 EXTERN dx#lichd ldfight1 // Not sure what's going on exactly, but you seem up to no good. I cannot let such evil walk the realms.
	+ ~!Global("BribedCowled","GLOBAL",1) Global("ACH_TWISTED_VICTORY","GLOBAL",1)~ + @258 EXTERN dx#lichd ldfight2 // No idea really, this stone here keeps teleporting me around.
	+ ~!Global("BribedCowled","GLOBAL",1) Global("ACH_TWISTED_VICTORY","GLOBAL",1)~ + @260 EXTERN dx#lichd ldfight2 // So this is another enclave of yours? I know what you're up to. I am piecing it together. I came here to destroy you.
	+ ~Global("BribedCowled","GLOBAL",1) !Global("ZallaFlee","GLOBAL",1)~ + @255  EXTERN dx#lichd l2 // I don't know. One second I was in the Umar Hills and now I'm here.
	+ ~Global("BribedCowled","GLOBAL",1) !Global("ZallaFlee","GLOBAL",1)~ + @261  EXTERN dx#lichd l2 // Not sure what's going on exactly, but you seem up to no good. I cannot let such evil walk the realms.
	+ ~Global("BribedCowled","GLOBAL",1) Global("ACH_TWISTED_VICTORY","GLOBAL",1) !Global("ZallaFlee","GLOBAL",1)~ + @258 EXTERN dx#lichd l3 // No idea really, this stone here keeps teleporting me around.
	+ ~Global("BribedCowled","GLOBAL",1) Global("ACH_TWISTED_VICTORY","GLOBAL",1) !Global("ZallaFlee","GLOBAL",1)~ + @260 EXTERN dx#lichd l3 // So this is another enclave of yours? I know what you're up to. I am piecing it together. I came here to destroy you.
	+ ~Global("BribedCowled","GLOBAL",1) Global("ZallaFlee","GLOBAL",1)~ + @255  EXTERN dx#lichd ldfight1 // I don't know. One second I was in the Umar Hills and now I'm here.
	+ ~Global("BribedCowled","GLOBAL",1) Global("ZallaFlee","GLOBAL",1)~ + @261  EXTERN dx#lichd ldfight1 // Not sure what's going on exactly, but you seem up to no good. I cannot let such evil walk the realms.
	+ ~Global("BribedCowled","GLOBAL",1) Global("ACH_TWISTED_VICTORY","GLOBAL",1) Global("ZallaFlee","GLOBAL",1)~ + @258 EXTERN dx#lichd ldfight2 // No idea really, this stone here keeps teleporting me around.
	+ ~Global("BribedCowled","GLOBAL",1) Global("ACH_TWISTED_VICTORY","GLOBAL",1) Global("ZallaFlee","GLOBAL",1)~ + @260 EXTERN dx#lichd ldfight2 // So this is another enclave of yours? I know what you're up to. I am piecing it together. I came here to destroy you.

CHAIN dx#lichd ldfight1
	@256 // Whoever you are then, it is your unlucky day. Prepare to incur the wrath of the Twisted Rune.
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2070 // More like you, evildoer, who will meet our wrath! Boo is shaking in anticipation of the glorious butt-kicking coming up!
	== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2083 // You have foolishly made enemies of the great Edwin Odesseiron. You will soon understand how bad of an idea that was.
	== ANOMENJ IF ~!Alignment("Anomen",CHAOTIC_NEUTRAL) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2082 // Finally, clear-cut foes to strike down in the name of Justice. It has been a full minute since the last, it seems!
	== ANOMENJ IF ~Alignment("Anomen",CHAOTIC_NEUTRAL) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2154 // You've chanced upon me at a time in my life when I wish to bash things mindlessly, villain, and finally I've a proper target for my rage!
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2075 // I doubt any would weep if Amn was free of the influence of such an evil organization.
	== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @2071 // *Roars viciously*
	== dx#lichd @307 // Today is the day you die.
	DO ~ActionOverride("dx#lich1",Enemy())
		ActionOverride("dx#dalid",Enemy())
		ActionOverride("dx#mummy",Enemy())
		ActionOverride("dx#runea",Enemy())~ 
	EXIT

CHAIN dx#lichd ldfight2
	@259 // So you are the one responsible for the loss of our Athkatla enclave. The Rune shall not let this go unpunished.
	== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @2072 // And we'll gladly do it again.
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2070 // More like you, evildoer, who will meet our wrath! Boo is shaking in anticipation of the glorious butt-kicking coming up!
	== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2083 // You have foolishly made enemies of the great Edwin Odesseiron. You will soon understand how bad of an idea that was.
	== ANOMENJ IF ~!Alignment("Anomen",CHAOTIC_NEUTRAL) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2082 // Finally, clear-cut foes to strike down in the name of Justice. It has been a full minute since the last, it seems!
	== ANOMENJ IF ~Alignment("Anomen",CHAOTIC_NEUTRAL) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2154 // You've chanced upon me at a time in my life when I wish to bash things mindlessly, villain, and finally I've a proper target for my rage!
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2075 // I doubt any would weep if Amn was free of the influence of such an evil organization.
	== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @2071 // *Roars viciously*
	== dx#lichd @307 // Today is the day you die.
	DO ~ActionOverride("dx#lich1",Enemy())
		ActionOverride("dx#dalid",Enemy())
		ActionOverride("dx#mummy",Enemy())
		ActionOverride("dx#runea",Enemy())~ 
	EXIT

CHAIN dx#lichd l2
	@256  // Whoever you are then, it is your unlucky day. Prepare to incur the wrath of the Twisted Rune.
	== dx#lichd @257  // Wait, someone else is coming.
	DO ~SetGlobal("ZallComing","dx#001",1)
		StartCutSceneMode()
		StartCutScene("dx#cut01")~ 
	EXIT

CHAIN dx#lichd l3
	@259 // So you are the one responsible for the loss of our Athkatla enclave. The Rune shall not let this go unpunished.
	== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @2072 // And we'll gladly do it again.
	== dx#lichd @257 // Wait, someone else is coming.
	DO ~SetGlobal("ZallComing2","dx#001",1)
		SetGlobal("ZallComing","dx#001",1)
		StartCutSceneMode()
		StartCutScene("dx#cut01")~ 
	EXIT


