// TanWiz01 DIALOG

BEGIN dx#taw01

IF ~AreaCheck("ar0906")~ guardedcompound1
	SAY @2010
	++ @2011 + guardedcompoundfight
END

IF ~~ guardedcompoundfight
	SAY @2013
	IF ~~ DO ~SetGlobal("TwistedAmbush","GLOBAL",2)
			  Enemy()
			  CreateVisualEffect("SPROTECT",[1353.1170])
			  CreateVisualEffect("SPROTECT",[1526.1048])
			  CreateVisualEffect("SPROTECT",[1443.1233])
			  CreateVisualEffect("SPROTECT",[1615.1110])
			  Wait(1)
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

IF ~GlobalGT("RuneEncounter2","GLOBAL",2)~ ambush3plus
	SAY @2005
	IF ~~ DO ~CreateCreatureObjectEffect("TANTHF01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("SKELWA01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("vamver01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("vampim01","SPDISPMA",Myself)~ EXIT
END

IF ~Global("RuneEncounter2","GLOBAL",2)~ ambush2
	SAY @2005
	IF ~~ DO ~CreateCreatureObjectEffect("TANTHF01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("SKELWA01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("TANTHF01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("MUMMY01","SPDISPMA",Myself)~ EXIT
END

IF ~Global("RuneEncounter2","GLOBAL",1)~ ambush1
	SAY @2005
	IF ~~ DO ~CreateCreatureObjectEffect("TANTHF01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("GHAST01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("GHAST01","SPDISPMA",Myself)
			  CreateCreatureObjectEffect("MUMMY01","SPDISPMA",Myself)~ EXIT
END