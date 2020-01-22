// creator  : D:\Games\Baldur's Gate Enhanced Edition Trilogy\Baldur's Gate II Enhanced Edition\NearInfinity.jar (v2.1-20180205)
// game     : D:\Games\Baldur's Gate Enhanced Edition Trilogy\Baldur's Gate II Enhanced Edition
// resource : COWENF2.DLG
// source   : Override\COWENF2.DLG
// dialog   : Lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~COWENF2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  Global("CowledWarning","GLOBAL",0)
~ THEN BEGIN 0 // from: 
  SAY #26566 /* ~The practice of magic without a license is forbidden in the city of Athkatla. You shall receive one warning only. Further spellcasting will result in your death.~ */
  IF ~  Global("ToldByEnforcer","GLOBAL",1)
~ THEN DO ~DialogueInterrupt(FALSE)
SetGlobal("CowledWarning","GLOBAL",1)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("ToldByEnforcer","GLOBAL",0)
~ THEN REPLY #61420 /* ~But I have seen others casting spells without repercussion! Why am I being singled out?!~ */ DO ~SetGlobal("ToldByEnforcer","GLOBAL",1)
~ GOTO 3
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  GlobalGT("CowledWarning","GLOBAL",0)
GlobalLT("CowledWarning","GLOBAL",6)
~ THEN BEGIN 1 // from: 
  SAY #26567 /* ~You are unlicensed! This is an unsanctioned use of magical energy! You have been warned.~ */
  IF ~~ THEN DO ~IncrementGlobal("CowledWarning","GLOBAL",1)
CreateCreatureObject("COWENF1",Myself,0,0,0)
CreateCreatureObject("COWENF4",Myself,0,0,0)
CreateCreatureObject("COWENF3",Myself,0,0,0)
Enemy()
~ EXIT
END

IF WEIGHT #0 ~  Global("CowledWarning","GLOBAL",6)
~ THEN BEGIN 2 // from: 
  SAY #45811 /* ~Your transgressions against the Cowled Wizards have come to an end. Prepare to feel the wrath of the highest members of our order.~ */
  IF ~~ THEN DO ~IncrementGlobal("CowledWarning","GLOBAL",1)
CreateCreatureObject("MAGE16C",Myself,0,0,0)
CreateCreatureObject("MAGE18A",Myself,0,0,0)
CreateCreatureObject("MAGE18Z",Myself,0,0,0)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #61421 /* ~As I said, those who are not Cowled Wizards or are without a proper, approved license may not practice magic in this city.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61422 /* ~Licenses are subject to the approval of the Cowled Wizards, providing you are a responsible and sane practitioner. Seek a representative of ours in the Council of Six building in the Government District, if you wish.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #61423 /* ~Continue to use magic without approval, and you will be labeled a deviant and dealt with appropriately. Fail to heed this warning at your own peril.~ */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
SetGlobal("CowledWarning","GLOBAL",1)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END
