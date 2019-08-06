// TANWIZ1 dialog

BEGIN ~dx#tand~

APPEND_EARLY ~tanwiz1~

IF ~AreaCheck("ar0500")~ ambush
	SAY @2000
	= @2001
	IF ~~ DO ~DestroyItem("minhp1")
			  CreateCreature("tanthf01",[1500.3130],SW)
			  CreateCreature("tanthf01",[1100.3250],SE)
			  CreateCreatureDoor("icbone01",[1334.3190],SE)
			  CreateCreatureDoor("tanwiz02",[1259.3077],S)
			  Enemy()~ EXIT
END

END

// Add journal stuff at the end