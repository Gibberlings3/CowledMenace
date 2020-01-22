// creator  : D:\Games\Baldur's Gate Enhanced Edition Trilogy\Baldur's Gate II Enhanced Edition\NearInfinity.jar (v2.1-20180205)
// game     : D:\Games\Baldur's Gate Enhanced Edition Trilogy\Baldur's Gate II Enhanced Edition
// resource : CSGAAL.DLG
// source   : Override\CSGAAL.DLG
// dialog   : Lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~CSGAAL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from: 
  SAY #20815 /* ~Listen to me, my brothers and sisters... heed my words. We have been chosen as the recipient of a most holy miracle, one that should neither be dismissed nor ignored!~ [GAAL07] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20816 /* ~I, Gaal... I, who have been stripped of my eyes most mercifully, have been shown the truth that has eluded the sighted! The gods that you worship are false gods, icons that serve to increase the wealth of churches and heathens! Listen to them not!~ [GAAL08] */
  IF ~~ THEN EXTERN ~CSCLERIC~ 0
END

IF ~~ THEN BEGIN 2 // from: 
  SAY #20818 /* ~Is it, priest? I ask all of you to question, for a moment, if what the priest says is true. Yes, his false god grants him power to fuel his spells, much as any wizard might possess.~ [GAAL09] */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #20823 /* ~I say that the churches lie to you! They claim their gods are present when they do nothing other than require your coin to fill their pockets!~ [GAAL13] */
  IF ~~ THEN EXTERN ~CSHECK1~ 0
END

IF ~~ THEN BEGIN 4 // from: 
  SAY #20827 /* ~Hmm. Is that so? Have they protected you from famine? Have they protected you from disease? Have they wrought harmony upon Faerûn?~ [GAAL14] */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20828 /* ~No, they have not! They lie and cloud your sight to gain your worship of their false images! I have stripped myself of their foul eyes, and I see what is the truth! The truth, I tell you!~ [GAAL15] */
  IF ~~ THEN EXTERN ~CSHECK2~ 0
END

IF ~~ THEN BEGIN 6 // from: 
  SAY #20832 /* ~I call on you to abandon your false gods! They have done nothing for you! Cast them aside and join me on the true path—join me in the calling of the true sight!~ [GAAL16] */
  IF ~~ THEN EXTERN ~CSHECK3~ 0
END

IF ~~ THEN BEGIN 7 // from: 
  SAY #20835 /* ~But there is a god! There is the true god! The Unseeing Eye is here amongst us. He offers the faithful a clarity of vision, the true path to the divine! He offers you protection and succor!~ [GAAL17] */
  IF ~~ THEN EXTERN ~CSCLERIC~ 2
END

IF ~~ THEN BEGIN 8 // from: 
  SAY #20842 /* ~No, my friends, you do not wish to "see." Forget what the years of lies have taught your eyes. You wish to "know"! You wish to "learn"! *These* are the truths that the Unseeing Eye can offer to you.~ [GAAL19] */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #20843 /* ~A truer gift that you'll not find amongst any of these other so-called deities. Come, witness the miracle of the truth! Come and behold the Unseeing Eye for yourself and see the true god that is present amongst us!~ [GAAL20] */
  IF ~~ THEN EXTERN ~CSCLERIC~ 3
END

IF ~~ THEN BEGIN 10 // from: 
  SAY #20847 /* ~Come, then! Those of you who wish to become the truly faithful, to witness the magnificence of the Unseeing Eye and the truth he brings... come with me!~ [GAAL21] */
  IF ~~ THEN EXTERN ~CSHECK3~ 1
END

IF ~~ THEN BEGIN 11 // from: 
  SAY #20851 /* ~Come, then, my faithful! Follow me!~ [GAAL22] */
  IF ~~ THEN DO ~SetGlobal("GaalSpoke","GLOBAL",1)
SetGlobal("GaalSpoke","AR0900",1)
SetGlobalTimer("Gaal","AR0900",TWELVE_HOURS)
~ UNSOLVED_JOURNAL #34386 /* ~A cult of the eyeless?

Some form of new religion or cult has been formed in the city, centered on a god called "the Unseeing Eye." A priest of some kind whose own eyes were missing spoke to a crowd, calling on them to shed their "false sight" and join in the worship of this new god. ~ */ EXIT
END
