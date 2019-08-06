// creator  : D:\Games\Baldur's Gate Enhanced Edition Trilogy\Baldur's Gate II Enhanced Edition\NearInfinity.jar (v2.1-20180205)
// game     : D:\Games\Baldur's Gate Enhanced Edition Trilogy\Baldur's Gate II Enhanced Edition
// resource : CSCLERIC.DLG
// source   : Override\CSCLERIC.DLG
// dialog   : Lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~CSCLERIC~

IF ~~ THEN BEGIN 0 // from: 
  SAY #20817 /* ~Hold! You speak of blasphemy! The Morninglord Lathander has always shown his benevolence and power. His presence among us is unquestionable!~ [CSCLER01] */
  IF ~~ THEN EXTERN ~CSGAAL~ 2
END

IF ~~ THEN BEGIN 1 // from: 
  SAY #20830 /* ~Such words are a horrid affront to the gods! Surely you will pay for this!~ [CSCLER02] */
  IF ~~ THEN EXTERN ~CSSUPP1~ 0
END

IF ~~ THEN BEGIN 2 // from: 
  SAY #20837 /* ~Do not listen to him! He seeks to poison your minds!~ [CSCLER03] */
  IF ~~ THEN EXTERN ~CSSUPP1~ 1
END

IF ~~ THEN BEGIN 3 // from: 
  SAY #20844 /* ~No! Do not go with him!~ [CSCLER04] */
  IF ~~ THEN EXTERN ~CSSUPP3~ 1
END
