// DALINA DIALOG
// Quand le dialog qui provoque une réaction du PC provient d'un autre NPC que celui qui a commencé la conversation, il faut renvoyer au state qu'on veut dans son dialog file.

BEGIN dx#dalid
BEGIN dx#lichd // Kartak Spellseer

CHAIN IF ~NumTimesTalkedTo(1) Global("ZallComing2","dx#001",1)~ THEN dx#dalid theyknow
	@267 	//@267 = ~Welcome, Zallanora, we were expecting you.~
	== dx#zalla @268 	// @268 = ~Speak quickly, I have matters to attend to.~
	== dx#dalid @270 	// @270 = ~Not so fast. Intruders have found their way in here, intruders who have slain Shangalar the Black in Athkatla... right under your nose.~
	== dx#zalla @304 	// @304 = ~Oh I know them. To think this... Bhaalspawn managed to destroy Shangalar is a repulsive thought. ~
	== dx#zalla @306	// And yet, Runemaster, you would do well to go all out against <CHARNAME>. They are not to be trifled with.
	== dx#zalla @305	// <CHARNAME>, today is the day you die.
	DO ~StartCutScene("dx#cut02")~
	EXIT

CHAIN IF ~NumTimesTalkedTo(1) GlobalLT("ZallComing2","dx#001",1)~ THEN dx#dalid theydont
	@267
	== dx#zalla @268 	// @268 = ~Speak quickly, I have matters to attend to.~
	== dx#dalid @269 	// @269 = ~Of course. In the meantime, however, it seems intruders have found their way in here. Will you join in on the fun before we get to business?~
	== dx#zalla @302	// @302 = ~Oh I know them. The intruder is a Bhaalspawn, and an enterprising one at that.~
	== dx#zalla @303 	// @303 = ~It would seem, <CHARNAME>, that you have finally meddled in affairs that you shouldn't have. Today is the day you die.~
	DO ~StartCutScene("dx#cut02")~
	EXIT

CHAIN IF ~NumTimesTalkedTo(0)~ THEN dx#dalid d1
	@250 /*Our contact from Athkatla should be arriving shortly, Runemaster. I assure you, the resources of the Cowled Wizards will be of great assistance to--*/
	== dx#lichd @251 /*At last, they seem to have come.*/
	== dx#dalid @252 /*Runemaster, this... is not the contact we're waiting for.*/
	END dx#lichd l1


	APPEND dx#lichd      // Compile lichd before dalid

	IF ~~ l1
		SAY @253 /*Indeed?*/
		= @254 /*You, mortal. You found yourself a key, and knew where to use it. Why is that?*/
		+ ~!Global("BribedCowled","GLOBAL",1)~ + @255 + ldfight1 /*~I don't know. One second I was in the Umar Hills and now I'm here.~ */
		+ ~!Global("BribedCowled","GLOBAL",1) Global("ACH_TWISTED_VICTORY","GLOBAL",1)~ + @258 + ldfight2  /*@258 = ~No idea really, this stone here keeps teleporting me around. The last time this happened, people like you got in my way. Let's just say it didn't go their way.~*/
		+ ~Global("BribedCowled","GLOBAL",1) GlobalLT("ZallStoneFound","GLOBAL",1)~ + @255 + l2 /*@255 = ~I don't know. One second I was in the Umar Hills and now I'm here.~*/
		+ ~Global("BribedCowled","GLOBAL",1) GlobalLT("ZallStoneFound","GLOBAL",1) Global("ACH_TWISTED_VICTORY","GLOBAL",1)~ + @258 + l3 /*No idea really, this stone here keeps teleporting me around. The last time this happened, someone like you got in my way. Let's just say it didn't go his way.*/
	END

	IF ~~ l2
		SAY @256  /*~Whoever you are then, it is your unlucky day. Prepare to incur the wrath of the Twisted Rune.~*/
		= @257  /*@257 = ~Wait, someone else is coming.~*/
		IF ~~ DO ~SetGlobal("ZallComing","dx#001",1)
				  StartCutSceneMode()
				  StartCutScene("dx#cut01")~ EXIT
	END

	IF ~~ l3
		SAY @259 // So you are the one responsible for the loss of our Athkatla enclave. The Rune shall not let this go unpunished.
		= @257 // Wait, someone else is coming.
		IF ~~ DO ~SetGlobal("ZallComing2","dx#001",1)
				  SetGlobal("ZallComing","dx#001",1)
				  StartCutSceneMode()
				  StartCutScene("dx#cut01")~ EXIT
	END

	IF ~~ ldfight1
		SAY @256 // Whoever you are then, it is your unlucky day. Prepare to incur the wrath of the Twisted Rune.
		IF ~~ DO ~Enemy()
				  ActionOverride("dx#dalid",Enemy())
				  ActionOverride("dx#mummy",Enemy())
				  ActionOverride("dx#runea",Enemy())~ EXIT
	END

	IF ~~ ldfight2
		SAY @259 // So you are the one responsible for the loss of our Athkatla enclave. The Rune shall not let this go unpunished.
		IF ~~ DO ~Enemy()
				  ActionOverride("dx#dalid",Enemy())
				  ActionOverride("dx#mummy",Enemy())
				  ActionOverride("dx#runea",Enemy())~ EXIT
	END

	END
