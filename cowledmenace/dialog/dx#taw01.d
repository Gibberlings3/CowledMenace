// TanWiz01 DIALOG

BEGIN dx#taw01

IF ~AreaCheck("ar0906")~ guardedcompound1
	SAY @2010 // Fool, you think the Twisted Rune are not aware of your — wait, you're not Koshi. Who are you?
	++ @2011 + guardedcompoundfight // I'm <CHARNAME>, and if it's Koshi you're looking for, his body is upstairs.
END

IF ~~ guardedcompoundfight
	SAY @2013 // I do thank you for getting rid of Koshi, but your name is also on the list. My apologies, <CHARNAME>, but we do not take kindly to those who meddle into our affairs.
	IF ~~ DO ~SetGlobal("TwistedAmbush","GLOBAL",2)
			  Enemy()
			  CreateVisualEffect("SPROTECT",[1353.1170])
			  CreateVisualEffect("SPROTECT",[1526.1048])
			  CreateVisualEffect("SPROTECT",[1443.1233])
			  CreateVisualEffect("SPROTECT",[1615.1110])
			  CreateVisualEffect("SPDISPMA",[1353.1170])
			  CreateVisualEffect("SPDISPMA",[1526.1048])
			  CreateVisualEffect("SPDISPMA",[1443.1233])
			  CreateVisualEffect("SPDISPMA",[1615.1110])
			  SmallWait(7)
			  CreateCreature("icbone01",[1353.1170],N)
			  CreateCreature("icbone01",[1526.1048],W)
			  CreateCreature("MUMMY01",[1443.1233],N)
			  CreateCreature("MUMMY01",[1615.1110],W)~ EXIT
END

IF ~GlobalGT("RuneEncounter2","GLOBAL",4) 
	Global("DxInsaneSpawn","GLOBAL",0)
	Difficulty(HARDEST)~ ambushinsane
	SAY @2005 // <CHARNAME>, the Twisted Rune have put up a golden skull on your name. Whoever kills you gets to receive it. Prepare to die!
	IF ~~ DO ~CreateCreatureObjectEffect("TANTHF01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("SKELWA01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("vamver01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("dx#licht","SPDISPMA",Myself)
			  SetGlobal("DxInsaneSpawn","GLOBAL",1)~ EXIT
END

IF ~GlobalGT("RuneEncounter2","GLOBAL",2)~ ambush3plus
	SAY @2005 // <CHARNAME>, the Twisted Rune have put up a golden skull on your name. Whoever kills you gets to receive it. Prepare to die!
	IF ~~ DO ~CreateCreatureObjectEffect("TANTHF01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("SKELWA01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("vamver01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("vampim01","SPDISPMA",Myself)~ EXIT
END

IF ~Global("RuneEncounter2","GLOBAL",2)~ ambush2
	SAY @2005 // <CHARNAME>, the Twisted Rune have put up a golden skull on your name. Whoever kills you gets to receive it. Prepare to die!
	IF ~~ DO ~CreateCreatureObjectEffect("TANTHF01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("SKELWA01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("TANTHF01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("MUMMY01","SPDISPMA",Myself)~ EXIT
END

IF ~Global("RuneEncounter2","GLOBAL",1)~ ambush1
	SAY @2005 // <CHARNAME>, the Twisted Rune have put up a golden skull on your name. Whoever kills you gets to receive it. Prepare to die!
	IF ~~ DO ~CreateCreatureObjectEffect("TANTHF01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("GHAST01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("GHAST01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("MUMMY01","SPDISPMA",Myself)~ EXIT
END 