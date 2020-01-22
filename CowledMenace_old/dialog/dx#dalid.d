// DALINA DIALOG
// Quand le dialog qui provoque une réaction du PC provient d'un autre NPC que celui qui a commencé la conversation, il faut renvoyer au state qu'on veut dans son dialog file.

BEGIN dx#dalid
BEGIN dx#lichd // Kartak Spellseer

CHAIN IF ~NumTimesTalkedTo(1) Global("ZallComing2","dx#001",1)~ THEN dx#dalid theyknow
	@267
	== dx#zalla @268
	== dx#dalid @270
	== dx#zalla @304
	== dx#zalla @303
	DO ~StartCutScene("dx#cut02")~
	EXIT

CHAIN IF ~NumTimesTalkedTo(1) GlobalLT("ZallComing2","dx#001",1)~ THEN dx#dalid theydont
	@267
	== dx#zalla @268
	== dx#dalid @269
	== dx#zalla @302
	== dx#zalla @303
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
		+ ~!Global("BribedCowled","GLOBAL",1)~ + @255 + ldfight1
		+ ~!Global("BribedCowled","GLOBAL",1) Global("ACH_TWISTED_VICTORY","GLOBAL",1)~ + @258 + ldfight2
		+ ~Global("BribedCowled","GLOBAL",1) GlobalLT("ZallStoneFound","GLOBAL",1)~ + @255 + l2 /*No idea. One second I was in Saradush and now I'm here.*/
		+ ~Global("BribedCowled","GLOBAL",1) GlobalLT("ZallStoneFound","GLOBAL",1) Global("ACH_TWISTED_VICTORY","GLOBAL",1)~ + @258 + l3 /*No idea really, this stone here keeps teleporting me around. The last time this happened, someone like you got in my way. Let's just say it didn't go his way.*/
	END

	IF ~~ l2
		SAY @256
		= @257
		IF ~~ DO ~SetGlobal("ZallComing","dx#001",1)
				  StartCutSceneMode()
				  StartCutScene("dx#cut01")~ EXIT
	END

	IF ~~ l3
		SAY @259
		= @257
		IF ~~ DO ~SetGlobal("ZallComing2","dx#001",1)
				  SetGlobal("ZallComing","dx#001",1)
				  StartCutSceneMode()
				  StartCutScene("dx#cut01")~ EXIT
	END

	IF ~~ ldfight1
		SAY @256
		IF ~~ DO ~Enemy()
				  ActionOverride("dx#dalid",Enemy())
				  ActionOverride("dx#mummy",Enemy())
				  ActionOverride("dx#runea",Enemy())~ EXIT
	END

	IF ~~ ldfight2
		SAY @259
		IF ~~ DO ~Enemy()
				  ActionOverride("dx#dalid",Enemy())
				  ActionOverride("dx#mummy",Enemy())
				  ActionOverride("dx#runea",Enemy())~ EXIT
	END

	END
