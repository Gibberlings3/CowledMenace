// creator  : D:\Games\Baldur's Gate Enhanced Edition Trilogy\Baldur's Gate II Enhanced Edition\NearInfinity.jar (v2.1-20180205)
// game     : D:\Games\Baldur's Gate Enhanced Edition Trilogy\Baldur's Gate II Enhanced Edition
// resource : TANWIZ1.DLG
// source   : Override\TANWIZ1.DLG
// dialog   : Lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~TANWIZ1~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MetTanWiz","GLOBAL",1)
~ THEN BEGIN 0 // from: 
  SAY #31282 /* ~No, you will have no victory here! Rejiek must work on! ~ */
  IF ~~ THEN REPLY #31285 /* ~What is this? You support this fiend?~ */ DO ~EraseJournalEntry(34247)
EraseJournalEntry(34249)
EraseJournalEntry(34265)
EraseJournalEntry(34266)
EraseJournalEntry(34267)
EraseJournalEntry(34269)
EraseJournalEntry(34271)
EraseJournalEntry(34276)
~ GOTO 1
  IF ~~ THEN REPLY #31286 /* ~Who are you? Why have you aligned yourself with this common murderer?~ */ DO ~EraseJournalEntry(34247)
EraseJournalEntry(34249)
EraseJournalEntry(34265)
EraseJournalEntry(34266)
EraseJournalEntry(34267)
EraseJournalEntry(34269)
EraseJournalEntry(34271)
EraseJournalEntry(34276)
~ GOTO 2
  IF ~~ THEN REPLY #31287 /* ~There will be no mercy for this villain or his allies!~ */ DO ~EraseJournalEntry(34247)
EraseJournalEntry(34249)
EraseJournalEntry(34265)
EraseJournalEntry(34266)
EraseJournalEntry(34267)
EraseJournalEntry(34269)
EraseJournalEntry(34271)
EraseJournalEntry(34276)
~ GOTO 3
  IF ~~ THEN REPLY #31290 /* ~We can surely come to an agreement. There has been enough death.~ */ DO ~EraseJournalEntry(34247)
EraseJournalEntry(34249)
EraseJournalEntry(34265)
EraseJournalEntry(34266)
EraseJournalEntry(34267)
EraseJournalEntry(34269)
EraseJournalEntry(34271)
EraseJournalEntry(34276)
~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #31293 /* ~He is chosen to work the gift and has escaped your reach. He will continue, and your skins will be the final touches! No talk! You will die here! Vellin Dahn does so command!~ */
  IF ~~ THEN DO ~Enemy()
~ UNSOLVED_JOURNAL #34287 /* ~Solve the "skinner" murders in the Bridge District

Rejiek was obviously responsible for the murders, according to his own words... and the wizard, Vellin Dahn, in the back of his shop was allied with him and spoke of a larger work that was being performed. I am unsure if this ends here or not, but the tanner has certainly escaped for now. The mage must have spirited him away.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #31297 /* ~There is nothing common here. The work will continue. You will not be allowed to stop what we wish to build! Vellin Dahn does command your death!~ */
  IF ~~ THEN DO ~Enemy()
~ UNSOLVED_JOURNAL #34287 /* ~Solve the "skinner" murders in the Bridge District

Rejiek was obviously responsible for the murders, according to his own words... and the wizard, Vellin Dahn, in the back of his shop was allied with him and spoke of a larger work that was being performed. I am unsure if this ends here or not, but the tanner has certainly escaped for now. The mage must have spirited him away.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #31298 /* ~And there will be no mercy for you. Yours is a grave crime, for you have interrupted the work! It must continue, and your skins shall be the means! Vellin Dahn does so command!~ */
  IF ~~ THEN DO ~Enemy()
~ UNSOLVED_JOURNAL #34287 /* ~Solve the "skinner" murders in the Bridge District

Rejiek was obviously responsible for the murders, according to his own words... and the wizard, Vellin Dahn, in the back of his shop was allied with him and spoke of a larger work that was being performed. I am unsure if this ends here or not, but the tanner has certainly escaped for now. The mage must have spirited him away.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #31299 /* ~No, there has not. There must be more, for the work must go on! You will die here, and your skins will further the work! Vellin Dahn does so command!~ */
  IF ~~ THEN DO ~Enemy()
~ UNSOLVED_JOURNAL #34287 /* ~Solve the "skinner" murders in the Bridge District

Rejiek was obviously responsible for the murders, according to his own words... and the wizard, Vellin Dahn, in the back of his shop was allied with him and spoke of a larger work that was being performed. I am unsure if this ends here or not, but the tanner has certainly escaped for now. The mage must have spirited him away.~ */ EXIT
END

IF ~  AreaCheck("ar0500")
~ THEN BEGIN 5 // from: 
  SAY #271705 /* ~So you are the one repeatedly meddling into the Rune's affairs. Last time, I had to leave with the tanner. Today, I get to kill you.~ */
  IF ~~ THEN DO ~DestroyItem("minhp1")
CreateCreature("tanthf01",[1500.3130],SW)
CreateCreature("tanthf01",[1100.3250],SE)
CreateCreatureDoor("icbone01",[1334.3190],SE)
CreateCreatureDoor("tanwiz02",[1410.3050],S)
Enemy()
~ EXIT
END
