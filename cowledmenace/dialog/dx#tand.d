// TANWIZ1 dialog

BEGIN ~dx#tand~

APPEND_EARLY ~tanwiz1~

IF ~AreaCheck("ar0500")~ ambush
	SAY @2000 // So you are the one repeatedly meddling into the Rune's affairs. Your involvement with the tanner put me in quite the predicament.
	= @2001 // Today, either I kill you, or I die. So die you will!
	IF ~~ DO ~DestroyItem("minhp1")
			  CreateCreature("tanthf01",[1500.3130],SW)
			  CreateCreature("tanthf01",[1100.3250],SE)
			  CreateCreatureDoor("icbone01",[1334.3190],SE)
			  CreateCreatureDoor("tanwiz02",[1259.3077],S)
			  Enemy()~ EXIT
END

END

// Add journal stuff at the end