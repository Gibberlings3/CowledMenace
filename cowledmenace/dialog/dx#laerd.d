// Laeral Silverhand DIALOG
// Real Zallanora Argentresses DIALOG
// Shoon VII DIALOG
// Shoon VII (Lich) DIALOG
// Zallanora the Demilich DIALOG

BEGIN dx#laerd

// Coward party attack the kind lady

CHAIN IF ~Global("LaeralAttacked","GLOBAL",1) AreaCheck("AR0802")~ THEN dx#laerd attack1
	@655 // Really, <CHARNAME>? The answers we seek are right through this magical seal. I know better than to face you in combat though. The Goddess wouldn't have it, she's had enough of inter-deity turmoil. 
	// Have slightly less intense reactions here since she's literally just waiting on the other side of the seal
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2249 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // No! <CHARNAME>, what have you done?! Lady Blackstaff, this isn't-- Ugh!! This can't be happening!
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2248 // That's right, coward. Ye know ye be outmatched! Bah-ah! All bark, no bite this one!
	== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @2251 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // What are we doing? Openly attacking such a famous figure? Are you positively insane, <CHARNAME>? What do we possibly stand to gain from making her our enemy?
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2252 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // Minsc is confused, and although Boo is never confused... Boo is also confused! We liked the lady, now we hate the lady? Explain yourself!
	== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @2253 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // Even my marked dislike of mages can't offset this feeling I have currently that this is plain out wrong. This lady has done nothing to wrong us.
	== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @2258 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // This is a most disgraceful action, <CHARNAME>. You're lucky she is taking it in stride, or I might have joined her side.
	== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @2159 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // <CHARNAME>, this seems a bit... uncalled for?
	== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @2256 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // Did I space out again? We attacked the kind lady? Why?
	// Hexxat reply?
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2255 // I... I cannot believe it. You are putting me in an impossible position, <CHARNAME>. Understand, the Harpers have shaped who I am, and she is my superior within them. This is a profound betrayal. Just... leave me be. 
	== dx#laerd IF ~Or(7)
						InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)
						InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)
						InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)
						InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
						InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)
						InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)
						InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @658 // Seems like not all your companions agree with this random act of aggression either. Either way, I'll leave you to your disagreements.
// We put Viconia close to the bottom because IncrementVariable can lag by 1 or 2 == transition steps, and the above lines are all optional except Laeral's. This minimizes the risk it doesn't increment enough times to fire the dialog.
	== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) 
				   GlobalGT("DX#GoodNPC","GLOBAL",1)~ THEN @2257 // Ugh! What's wrong with you people? She did nought to assist us! We are perfectly capable of solving this ourselves. Weaklings...
	== dx#laerd @656 // I'll be waiting for you inside regardless, should you decide to be more agreeable.
	DO ~IncrementGlobal("LaeralAttacked","GLOBAL",1)
		ActionOverride("dx#laera",SpellNoDec(Myself,DRYAD_TELEPORT))~
	EXIT

CHAIN IF ~Global("LaeralAttacked","GLOBAL",1)~ THEN dx#laerd attack2
	@650 // Really, <CHARNAME>? I know better than to face you in combat. The Goddess wouldn't have it, she's had enough of inter-deity turmoil. Disappointingly, I will leave you to your business, whatever that is. 
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("LaeralSpawned","GLOBAL",1)~ THEN @2249 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // No! <CHARNAME>, what have you done?! Lady Blackstaff, this isn't-- Ugh!! This can't be happening!
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("LaeralSpawned","GLOBAL",1)~ THEN @2250 // Fleeing like the coward ye are huh, tramp? That's right, ye know ye be outmatched! Bah-ah! All bark, no bite this one!
	== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) Global("LaeralSpawned","GLOBAL",1)~ THEN @2251 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // What are we doing? Openly attacking such a famous figure? Are you positively insane, <CHARNAME>? What do we possibly stand to gain from making her our enemy?
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("LaeralSpawned","GLOBAL",1)~ THEN @2252 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // Minsc is confused, and although Boo is never confused... Boo is also confused! We liked the lady, now we hate the lady? Explain yourself!
	== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @2253 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // Even my marked dislike of mages can't offset this feeling I have currently that this is plain out wrong. This lady has done nothing to wrong us.
	== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) Global("LaeralSpawned","GLOBAL",1)~ THEN @2258 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // This is a most disgracious action, <CHARNAME>. You're lucky she is leaving peacefully, or I might have joined her side. 
	== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @2159 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // <CHARNAME>, this seems a bit... uncalled for?
	== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) Global("LaeralSpawned","GLOBAL",1)~ THEN @2256 DO ~IncrementGlobal("DX#GoodNPC","GLOBAL",1)~ // Did I space out again? We attacked the kind lady? Why?
	== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) Global("LaeralSpawned","GLOBAL",1)~ THEN @2254	// Only a fool would attack her. Greatness recognizes greatness. Even someone as grand as myself wouldn't dare attempting that. (For now...) (Yet I'm covertly glad she's leaving.)
	// Hexxat reply ?
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("LaeralSpawned","GLOBAL",1)~ THEN @2255 // I... I cannot believe it. You are putting me in an impossible position, <CHARNAME>. Understand, the Harpers have shaped who I am, and she is my superior within them. This is a profound betrayal. Just... leave me be. 
	== dx#laerd IF ~Global("LaeralSpawned","GLOBAL",1)
					Or(7)
						InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)
						InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)
						InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)
						InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
						InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)
						InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)
						InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @658 // Seems like not all your companions agree with this random act of aggression either. Either way, I'll leave you to your disagreements.
// We put Viconia close to the bottom because IncrementVariable can lag by 1 or 2 == transition steps, and the above lines are all optional except Laeral's if 1 good companion is there. This minimizes the risk it doesn't increment enough times to fire the dialog.
	== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) 
				   GlobalGT("DX#GoodNPC","GLOBAL",1)~ THEN @2257 // Ugh! What's wrong with you people? She did nought to assist us! We are perfectly capable of solving this ourselves. Weaklings...
	== dx#laerd @651 // Hopefully we meet again under more agreeable circumstances.
	DO ~IncrementGlobal("LaeralAttacked","GLOBAL",1)
		AddJournalEntry(@122,QUEST)
		ActionOverride("dx#laera",SpellNoDec(Myself,DRYAD_TELEPORT))~
	EXIT

	
//////////////////////////////////////////////////////////////////////////
// LAERAL - ATHKATLA - LOWER CRYPTS
//////////////////////////////////////////////////////////////////////////	


CHAIN IF ~NumTimesTalkedTo(0) AreaCheck("ar0802")~ THEN dx#laerd crypt
	@1100 // Finally, I found you! I knew you'd come here eventually. You are a hard one to track down, <CHARNAME>.
	== dx#laerd IF ~Global("LaeralKorgan","GLOBAL",2) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @884 // I am warning you in advance, dwarf; don't test my patience.
	== KORGANJ IF ~Global("LaeralKorgan","GLOBAL",2) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2109 // [grumbles] Durned witcheress... 
	== dx#laerd @1101 // I'm sorry I couldn't aid you when the Twisted Rune ambushed you. You'd been gone for a while, and I don't have eyes and ears everywhere. It is clear that they had you in their sight for a while.
	END
	++ @1105 EXTERN dx#laerd 1110 // They did. Only, no one bullies me anymore. The Twisted Rune learned that the hard way.
	++ @1106 EXTERN dx#laerd 1120 // It's all right. I can handle myself now, as you can see. I came here because of a hunch. Something tells me our meeting here isn't an accident.
	++ @1107 EXTERN dx#laerd 1120 // How come, of all places, you found me at the very bottom of a secret crypt under the Graveyard District of Athkatla?

CHAIN dx#laerd 1110
	@1110 // You did hit them hard, but an organization made of centuries-old members such as this one won't suddenly cease all operations.
	// Dorn: As long as they leave us alone, I'm game.
	== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @2110 // What remains for us to do, milady? As far as we know, there are no traces left of them in the region.
	== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @2111 // Well, they can go back in hiding for all I care. Or the Underdark. See how they fare against my kind.
	== dx#laerd IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @1112 // That's a concern for another day.
	== dx#laerd @1111 // Since you and I started meddling in the Twisted Rune's affairs, I've had time to think, ponder over this.
	END
	IF ~~ EXTERN dx#laerd 1125

CHAIN dx#laerd 1120
	@1120 // Oh but there is nothing random about it. It's been quite a while since you and I started meddling in the Twisted Rune's affairs, and I've had time to think, ponder over this.
	END
	IF ~~ EXTERN dx#laerd 1125

CHAIN dx#laerd 1125
	@1125 // Nothing about this Zallanora person made sense. How did such a young Elf without connections or training suddenly become so powerful? So I started digging.
	== dx#laerd @1126 // My divination spells returned naught but air... until she ambushed you. Unfortunately, I was late to the engagement, but I found her body. Finally I had something: strands of her hair. This would enable me to access her past.
	== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @2117	// Ewww... I could never, uh, do that. Utilize a dead body like that. *gag*
	== dx#laerd @1127 // It turns out she disappeared eleven years ago, on her way to Silverymoon, only to resurface a few years later in Amn as a lowly apprentice. Now she's an archmage of considerable power, and influence, a name not to be pronounced lightly within the Cowled Wizards.
	== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @2113 // Such an accelerated progress can only be made through unnatural means. There is foul play at work here, without a doubt.
	== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @2118 // This is sounding all too familiar, <CHARNAME>. Could it be that she stole someone else's power, like Irenicus did to us?
	== JAHEIRAJ IF ~!InParty("Imoen2") 	GlobalGT("Chapter","GLOBAL",5) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2132 // This is sounding all too familiar, <CHARNAME>. Could it be that she stole someone else's power, like Irenicus did to you and Imoen?
	== dx#laerd @1124 // Furthermore, and most bizarrely, it doesn't appear as if her spirit is quite entirely gone from this world, even though you killed her. But it's not really here either.
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2114 // What do you mean, here but not here, dead but not dead? Speak words we can all understand, lest... I be confused!
	== dx#laerd @1128 // I made inquiries with my connections and, with the help of a few spells, eventually found out that she accessed those very crypts. Numerous times. Clearly there was something of importance here. But I was missing one piece of the puzzle: the stone which you currently have in your possession. I suspected you would have it, hence why I have been searching for you.
	== dx#laerd @1129 // So, what say you, <CHARNAME>, is it finally time for answers?
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2116 // You better not back out of this, <CHARNAME>. This seems of vital importance.
	END
	++ @1140 EXTERN dx#laerd 1150 // Yes. Zallanora's stone is already activating. Shouldn't be too hard to find what it's used for around here.
	++ @1145 EXTERN dx#laerd 1155 // After all this trouble, and nearly dying like three times, I'm certainly not backing off now. What do you think we can expect?
	++ @1146 EXTERN dx#laerd 1150 // Being ambushed over and over was annoying enough, if I can put an end to it for good, all the better.

CHAIN dx#laerd 1150 
	@1150 // I've already scoured this room, the eastern wall is brimming with carefully concealed spells. I'll show you.
	DO ~MoveToPointNoInterrupt([1080.2080])
		Wait(2)
		DisplayStringHead(Myself,@1160)~ // Stand next to the wall.
	EXIT

CHAIN dx#laerd 1155
	@1155 // Anything, which is quite frightening. But whoever, or whatever we find inside, their backs will be against the wall. You're a hardy folk, Godchild, and, well, I'm not so bad myself! We cannot let such an opportunity pass.
	== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @2133 // Indeed we can't. I would make a pretty poor Knight of the Order of the Radiant Heart if I didn't pursue this. <CHARNAME>, surely you intend to see this to the end?
	END
	IF ~~ EXTERN dx#laerd 1150
	
	
//////////////////////////////////////////////////////////////////////////
// LAERAL SECOND MEETING
//////////////////////////////////////////////////////////////////////////	

CHAIN IF ~NumTimesTalkedTo(0) Global("LaeralSpawned","GLOBAL",1) !AreaCheck("DX#002")~ THEN dx#laerd 2ndtime
	@900 // We meet again, <CHARNAME>.
	== KORGANJ IF ~Global("LaeralKorgan","GLOBAL",1) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2099 // Ach! Again with that blasted highfalutin brat of a woman!
	== dx#laerd IF ~Global("LaeralKorgan","GLOBAL",1) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @880 // I see you still associate with that unsavory dwarf, Godchild. I sincerely hope he is worth the coin in brawn, because his value doesn't seem to rest in his wit.
	== KORGANJ IF ~Global("LaeralKorgan","GLOBAL",1) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2107 // That's it, ye've done it! One more dig out of yer ugly mouth and I be cleaving ye in half, tramp!
	== dx#laerd IF ~Global("LaeralKorgan","GLOBAL",1) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @881 // Try me. You cannot scare me with threats, goon. I'm no pushover. I've been dealing with asinine folks like you far longer than you've been breathing.
	== dx#laerd IF ~Global("LaeralKorgan","GLOBAL",1) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @882 // A word of warning: the unfiltered magic of the Goddess that I wield isn't quite like the magic you're used to. It's *especially* incisive and penetrative. It may prove too much for even a dwarf of your constitution to handle.
	== dx#laerd IF ~Global("LaeralKorgan","GLOBAL",1) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @883 // ... No? I thought so. Glad we're on the same page.
// Mazzy will laugh at Korgan, Anomen if Mazzy isn't there, Valygar if neither of them are there. The line doesn't fit any other companion.
	== MAZZYJ IF ~Global("LaeralKorgan","GLOBAL",1) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) IsValidForPartyDialogue("Mazzy")~ THEN @2108 // No serrated response from you, Korgan, only grumbling? Perhaps you realize the lady has got the bearing to back up her claim?
	== ANOMENJ IF ~!IsValidForPartyDialogue("Mazzy") Global("LaeralKorgan","GLOBAL",1) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) IsValidForPartyDialogue("Anomen")~ THEN @2108 // No serrated response from you, Korgan, only grumbling? Perhaps you realize the lady has got the bearing to back up her claim?
	== VALYGARJ IF ~!IsValidForPartyDialogue("Mazzy") !IsValidForPartyDialogue("Anomen") Global("LaeralKorgan","GLOBAL",1) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) IsValidForPartyDialogue("Valygar")~ THEN @2108 // No serrated response from you, Korgan, only grumbling? Perhaps you realize the lady has got the bearing to back up her claim?
	== dx#laerd IF ~Global("LaeralKorgan","GLOBAL",1) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @890 DO ~SetGlobal("LaeralKorgan","GLOBAL",2)~ // Back to the topic at hand.
	== dx#laerd @901 // While you were investigating on your own — and succeeding mightily at the task I might add — I have been monitoring the Twisted Rune and their associates.
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2130 // Our investigations haven't led us very far in terms of understanding what they are, Lady Blackstaff. Only where their enclaves are. Perhaps your own inquiries have been more fruitful than ours?
	== dx#laerd IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @885 // To a degree.
	== dx#laerd @902 // It would seem that their contact in the Cowled Wizards is an elf wizard who goes by the name 'Zallanora'. Does that name sound familiar to you? You've spent far more time in Athkatla than I have. She has a peculiar appearance, if my contacts are to be believed.
	END
	+ ~Global("ZallaFlee","GLOBAL",1)~ + @905 EXTERN dx#laerd 920 // That would be one of their leaders. I've already met and confronted her, but sadly, she fled the scene. She didn't leave any clues behind.
	+ ~Global("ZallaIntro","GLOBAL",1) GlobalLT("ZallaFlee","GLOBAL",1)~ + @906 EXTERN dx#laerd 940 // The name doesn't ring a bell. But I might have met her once, in the Graveyard District of Athkatla. A rude elf wizard who knew a lot about me. I will have to find some way to confront her.
	++ @904 EXTERN dx#laerd 960  // Might have met her, not sure. I've might quite a few Cowled Wizards. Very few of them were friendly. Maybe this needs a more aggressive approach.
	+ ~!Global("ZallaIntro","GLOBAL",1) GlobalLT("ZallaFlee","GLOBAL",1)~ + @907 EXTERN dx#laerd 960  // I don't think I've met her in the past. But the Cowled Wizards have representatives in Athkatla, I think I might be able to track her down.
	+ ~Global("ZallaFlee","GLOBAL",1) Global("BribedCowled","GLOBAL",1) AreaCheck("dx#001")~ + @908 EXTERN dx#laerd 910 // I... already knew that. I just faced her. Sadly, she fled the scene, and didn't leave any clues behind.

CHAIN dx#laerd 910
	@910 // So that means all of your enemies know about your involvement in their setbacks.
	== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @2100 // Another way to see it would be that we also know who our enemies are. The devil you know...
	END
	IF ~~ EXTERN dx#laerd 926 

CHAIN dx#laerd 920
	@920 // So she knows who you are? Then it's just a matter of time before your enemies piece together that you are the one responsible for all of their setbacks.
	== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @2105 // That's a frightening prospect indeed, milady. One we shall be prepared for as best as we can.
	== dx#laerd @921 // I don't want to sound like an alarmist, but your foes are ancient, resourceful, and powerful.
	END
	++ @923 EXTERN dx#laerd 925 // So what's the plan now? I'm running awfully short on leads in this case right now.

CHAIN dx#laerd 925
	@925 // I'm afraid I can't give you an easy answer here. But know this: The Twisted Rune are a cabal of liches. I know that much. And liches are very patient. You learn that from living for centuries, and I speak from experience on that.
	== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @2101 // Quite the smooth way to boast about oneself, if I've ever seen one. 
	END
	IF ~~ EXTERN dx#laerd 926

CHAIN dx#laerd 926
	@926 // After slaying their senior members, you should expect retribution. I don't know when, I don't know how, but when they strike, and they will... they will do so with the utmost certainty that they can bring you down.
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2119 // And ye're sayin' that as if it were a disbenefit?! Let 'em come and taste me steel!
	== NALIAJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @2131 // This dwarf will get us all killed.
	== dx#laerd @927 // I know it's not of much help but it took me years of work to track them, and now it really seems I've hit a wall. And this Zallanora gal only further adds to the mystery.
	== dx#laerd @928 // What I've learned in my long lifetime is that wizards as proficient as she is usually have a reputation preceding them. Or a teacher of renown and years of studies. Or the blessings of a god. In her case? Nothing significant.
	== dx#laerd @929 // I've never stumbled upon a complete unknown as powerful and influential as she seems to be. And yet, in elven years, she's barely of adult age. There is absolutely more to the story here, Godchild. Anything is possible.
	== EDWINJ IF ~Gender("Edwin",MALE) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2104 // Or... Or! (And take note, plebeians.) They are simply smarter. Better. Superior. Like me, for instance.
	== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @2102 // I'm not too worried, honorable Archmage. <CHARNAME> has aptly led us through every hurdle we've faced so far.
	== dx#laerd @930 // I'll let you know if I find anything. Please stay safe, <CHARNAME>.
	DO ~SetGlobal("LaeralSpawned","GLOBAL",2)
		SpellNoDec(Myself,DRYAD_TELEPORT)
		Wait(2)
		AddJournalEntry(@113,QUEST)~
	EXIT

CHAIN dx#laerd 940
	@940 // Really? That sounds surprising. I've done inquiries around, and investigated on her somewhat. And the results are troubling, to say the least.
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2103 // They are? How so?! Boo is dying to know! And Minsc as well, though... not as much as Boo!
	END
	IF ~~ EXTERN dx#laerd 945

CHAIN dx#laerd 945
	@945 // What I've learned in my long lifetime is that wizards as proficient as she is usually have a reputation preceding them. Or a teacher of renown, and years of studies. Or the blessings of a god. In her case? Nothing significant.
	== dx#laerd @946 // I've never stumbled upon a complete unknown as powerful and influential as she seems to be. And yet, in Elven years, she's barely of adult age. There is absolutely more to the story here, Godchild.
	== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2104 // Or... Or! (And take note, plebeians.) They are simply smarter. Better. Superior. Like me, for instance.
	== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @2102 // I'm not too worried, honorable Archmage. <CHARNAME> has aptly led us through every hurdle we've faced so far.
	== dx#laerd @947 // I'll let you know if I find anything. Please be on your guard if you do confront her, <CHARNAME>. Anything is possible.
	DO ~SetGlobal("LaeralSpawned","GLOBAL",2)
		SpellNoDec(Myself,DRYAD_TELEPORT)
		Wait(2)
		AddJournalEntry(@107,QUEST)~
	EXIT

CHAIN dx#laerd 960
	@960 // I know you can, but consider threading carefully here. This Zallanora gal only further adds to the mystery.
	== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @2106 // I'm not gonna need much convincing to assist you with investigating the Cowled Wizards, <CHARNAME>.
	END
	IF ~~ EXTERN dx#laerd 945



//////////////////////////////////////////////////////////////////////////
// LAERAL FIRST MEETING
//////////////////////////////////////////////////////////////////////////	


// For now the intros in both enclaves are the same, but the structure is there for different intros if I need it


CHAIN IF ~NumTimesTalkedTo(0) AreaCheck("DX#001")~ THEN dx#laerd umarintro
	@700 // What in the name of the Goddess happened here? One minute, a meeting was taking place — which I was spying on, mind you — and yet, in the following minute, such was the magical energy unleashed here that I felt it through my spell!
	== dx#laerd @701  // Tell me, who are you? You don't look like a Twisted Rune agent.
	END
	++ @706 EXTERN dx#laerd 730 // My name is <CHARNAME>. I got involved in this Twisted Rune mess and... I'm still not sure how exactly.
	++ @705 EXTERN dx#laerd 770 // How do you know I'm not a Twisted Rune agent?
	++ @704 EXTERN dx#laerd 730 // I'm <CHARNAME>. I stumbled upon this place, their enclave, and dealt with them my way.
	++ @707 EXTERN dx#laerd 711 // You first.

CHAIN IF ~NumTimesTalkedTo(0) AreaCheck("ar1008")~ THEN dx#laerd athintro
	@700 // What in the name of the Goddess happened here? One minute, a meeting was taking place — which I was spying on, mind you — and yet, in the following minute, such was the magical energy unleashed here that I felt it through my spell!
	== dx#laerd @701  // Tell me, who are you? You don't look like a Twisted Rune agent.
	END
	++ @706 EXTERN dx#laerd 730 // My name is <CHARNAME>. I got involved in this Twisted Rune mess and... I'm still not sure how exactly.
	++ @705 EXTERN dx#laerd 770 // How do you know I'm not a Twisted Rune agent?
	++ @704 EXTERN dx#laerd 730 // I'm <CHARNAME>. I stumbled upon this place, their enclave, and dealt with them my way.
	++ @707 EXTERN dx#laerd 711 // You first.

CHAIN dx#laerd 770 // How do you know I'm not a Twisted Rune agent?
	@770 // // The goddess Mystra is my guide. And she is telling me the influence of the Rune is not to be found within you. But I also sense some form of divine contact about you, so I have to ask again: who are you?
	END
	++ @703 EXTERN dx#laerd 730 // Alright. I'm <CHARNAME>. I stumbled upon this place, their enclave, and dealt with them my way.
	++ @706 EXTERN dx#laerd 730 // My name is <CHARNAME>. I got involved in this Twisted Rune mess and... I'm still not sure how exactly.
	++ @702 EXTERN dx#laerd 711 // The Goddess Mystra? Wait, are you who I think you are?

CHAIN dx#laerd 710
	@710 // Fair enough.
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2087 // She looks familiar, <CHARNAME>. I think I've seen her somewhere before...
	END
	IF ~~ EXTERN dx#laerd 711

CHAIN dx#laerd 711
	@711 // My name is Laeral Silverhand.
	END
	++ @712 EXTERN dx#laerd 720 // Wait, Laeral? THE Laeral Silverhand? One of the Seven Sisters?
	
CHAIN dx#laerd 720
	@720 // Yes, that would be me. I think the silver hair somewhat gives it away.
	DO ~SetName(@1005)~ // PC knows her name now and that she's one of the Seven Sisters
	END
	IF ~~ EXTERN dx#laerd 721

CHAIN dx#laerd 719
	@719 // Yes, I am. My name is Laeral Silverhand.
	DO ~SetName(@1005)~ // PC knows her name now and that she's one of the Seven Sisters
	END
	IF ~~ EXTERN dx#laerd 721
	
CHAIN dx#laerd 721
	@721 // I think the silver hair somewhat gives it away.
	== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @2095 // Even I, who hails from far-away lands, have heard of her. The Seven Sisters are pretty famous.
	== dx#laerd IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @718 // I see that my attempts at living a markedly more muted life lately have largely failed at addressing the matter of my reputation.
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2088 // L--Lady Blackstaff?! I... I am most honored to be in your presence. Is your arrival here made in official Harper capacity? If so, please state your command. Jaheira, Harper at your service.
	== dx#laerd IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @708 // That won't be necessary. This is simply my inquisitive nature at work, nothing more. Although... it is indeed reassuring to meet a member of the Harpers here. I believe this further reinforces that I'm on the right track.
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2089 // If one of the Seven Sisters is investigating this, it really is serious business then, <CHARNAME>!
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2079 // Seven? Seven bloody sisters?! Ha! Am I the only lad here who be thinkin' of...? Ye know... That's more than can fit on me lap!
	== dx#laerd IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @493 DO ~SetGlobal("LaeralKorgan","GLOBAL",1)~ // ...
	== dx#laerd IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @716 // You keep interesting company, <CHARNAME>.
	== HAERDAJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @2081 // Even I would think that inappropriate, Korgan. And I am always speaking my mind.
	== JAHEIRAJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2086 // Lady Blackstaff, please disregard anything this filthy dwarf says. Rest assured, he does not represent our party's views. He is... a drunk! Yes, a drunk. Must be.
	== MAZZYJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @2080 // *rolls her eyes* We're used to it. Please don't mind him, milady. Go on. 
	== dx#laerd IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @717 // So, as I was saying.
	== dx#laerd @715 // I have been investigating the Twisted Rune as I think a series of strange and seemingly unconnected events that have happened in the last, well, few decades might just be connected after all... to them.
	END
	+ ~IsValidForPartyDialogue("Edwin")~ + @722 EXTERN dx#laerd preedwin1 // How come one of the Seven Sisters got involved with the Twisted Rune? Have they ever acted against you?
	+ ~!IsValidForPartyDialogue("Edwin")~ + @722 EXTERN dx#laerd part2 // How come one of the Seven Sisters got involved with the Twisted Rune? Have they ever acted against you?
	++ @713 EXTERN dx#laerd 725  // Decades? Just how deep does this rabbit hole go?
	++ @714 EXTERN dx#laerd 726 // I see. So they've managed to piss even you off, huh?

CHAIN dx#laerd preedwin1
	@779 // I'll get to that in a minute.
	END
	IF ~~ EXTERN dx#laerd edwind

CHAIN dx#laerd 725
	@725 // I'm not sure. It's what I wanted to find out.
	END
	IF ~IsValidForPartyDialogue("Edwin")~ EXTERN dx#laerd edwind
	IF ~!IsValidForPartyDialogue("Edwin")~ EXTERN dx#laerd part2
	
CHAIN dx#laerd 726
	@726 // You put it rather bluntly, but yes that would be accurate.
	END
	IF ~IsValidForPartyDialogue("Edwin")~ EXTERN dx#laerd edwind
	IF ~!IsValidForPartyDialogue("Edwin")~ EXTERN dx#laerd part2

// Edwin shenanigans before Part 2

CHAIN dx#laerd edwind
	@780 // However, I am only noticing now, but you seem uncomfortable in my presence, mage. Are you of the Red Wizards of Thay by any chance? Their arcane imprint is all over you.
	== EDWINJ @2200 // (What an annoying, impossibly observant woman.) More or less. I had a falling out with them.
	== dx#laerd @781 // Then it better stay that way. You should know, the Red Wizards have made enemies of my sisters and I... and of my sister Alassra in particular.
	== EDWINJ @2207 // The great Edwin is beyond being a mere "Thayan". I care not for Thay. (And as if I would entertain such a ridiculous command...)
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2211 // You would do well to heed this warning, conjurer. It is not made lightly, believe me.
	== EDWINJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2212 // Jaheira, please. The adults are talking. (Can that halfwit druid not see the difference in skill and prowess between us?)
	== dx#laerd @788 // You might know her as 'The Simbul'. Her country has been under constant assault by the Zulkirs of Thay. You're lucky I am not her, or you would be naught but dust already. She does not take kindly to enemies of her kingdom, and would likely have made an example of your demise in a fit of rage.
	== EDWINJ @2214 // Ah yes, the Witch-Queen of Aglarond. Any wizard of Thay worth their salt has heard of her. We are told to fear her. I am well and above such absurdity, however.
	== dx#laerd @789 // How adorable of you to entertain the idea that you could survive my sister's wrath for even a brief moment. She's the most formidable spellcaster I know.
	== dx#laerd IF ~Gender("Edwin",FEMALE)~ THEN @782 // Now, what's actually even more curious about you, is the prototypical spell that's active on you. What an odd, unique signature.
	== EDWINJ IF ~Gender("Edwin",FEMALE)~ THEN @2201 // No! Why must this always happen to me? There is nothing to see here. Absolutely nothing!
	== dx#laerd IF ~Gender("Edwin",FEMALE)~ THEN @783 // If I were of the wagering inclination, I'd say it transformed you. Severely. Unwillingly. You seem uncomfortable. Do you perhaps look... not quite as you'd like?
	== EDWINJ IF ~Gender("Edwin",FEMALE)~ THEN @2202 // (Curses, it's worse than anticipated!) Leave me alone, woman!
	== HAERDAJ IF ~Gender("Edwin",FEMALE) InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @2210 // Edwin, your chucklesome antics never fail to entertain lately. I am taking notes, my friend! For a play, naturally.
	== AERIEJ IF ~Gender("Edwin",FEMALE) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @2208 // Edwin! You would let such a chance pass by? That's unlike you. She's a chosen of Mystra! If anyone can help, it's her!
	== EDWINJ IF ~Gender("Edwin",FEMALE) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @2209 // You suddenly care, Aerie? For pity's sake! My form only amuses you!
	== EDWINJ IF ~Gender("Edwin",FEMALE)~ THEN @493 //  ...
	== EDWINJ IF ~Gender("Edwin",FEMALE)~ THEN @2203 // Wait. (Should I demean myself so?)
	== EDWINJ IF ~Gender("Edwin",FEMALE)~ THEN @2204 // (I have to.) Per chance, would you know of a corrective spell? The Goddess of Magic is your patron deity, after all. 
	== dx#laerd IF ~Gender("Edwin",FEMALE)~ THEN @784 // That's assuming there is anything to correct, my child. Perhaps you are deserving of such a fate. But it is not for me to tell. 
	== EDWINJ IF ~Gender("Edwin",FEMALE)~ THEN @2205 // ("Child"? Is she so daring as to belittle me so openly? Me, the great Edwin?! Bah!) Then... Tell me who to implore! Your goddess? I can't keep on living like... this!
	== dx#laerd IF ~Gender("Edwin",FEMALE)~ THEN @785 // And it would be unfathomable to me to live in a mind as inflexible and full of strife as yours is. 
	== dx#laerd IF ~Gender("Edwin",FEMALE)~ THEN @786 // Regardless, that magic is Netherese in origin; it couldn't be further away from the traditional Weave of Mystra. I'm afraid neither I nor the Goddess can assist you.
	== EDWINJ IF ~Gender("Edwin",FEMALE)~ THEN @2206// (Oh I HATE this predicament! And this... place! And this body!) 
	== dx#laerd @787 // I reckon this is not the last I will hear of you, Red Wizard, despite all this. For now I'll simply tolerate your presence. Anyway, back to business.
	END
	IF ~~ EXTERN dx#laerd part2

// Elminster section

CHAIN dx#laerd 730 
	@730 //  Oh, I remember now. <CHARNAME>... The Bhaalspawn. Elminster talked a lot about you. He has a lot of faith in you.
	END
	++ @733 EXTERN dx#laerd 740 // Uhh... He has? The last time I saw him was quite a long time ago. He seemed to have an interest in my affairs for a while, then he disappeared.
	++ @734 EXTERN dx#laerd 740 // Yeah, about that... do you know what he wants with me?
	++ @732 EXTERN dx#laerd 710 // I don't care about this crazy old man. You still haven't told me who you are, and I'm growing suspicious.
	++ @735 EXTERN dx#laerd 711 // Wait, do I know you?

CHAIN dx#laerd 740 
	@740 // Elminster operates in cryptic ways, but he works for the greater good of all. He chose to follow your progress for a reason.
	END
	++ @743 EXTERN dx#laerd 760 // So if Elminster believes in me, as it seems he does, how can I speak with him?
	++ @741 EXTERN dx#laerd 750 // Lots of people follow my progress, apparently. To be honest, I'd rather be left alone, but ever since Gorion's murder, it was never a possibility for me.
	++ @742 EXTERN dx#laerd 710 // I see... so, who are you anyway?


CHAIN dx#laerd 750
	@750  // To be a major player in the game of the gods, is to be doomed never to be truly alone. Or anonymous.
	END
	++ @751 EXTERN dx#laerd 755 // Seems like you are speaking from experience.

CHAIN dx#laerd 755
	@755 // I am. Different gods though, and for totally different reasons.
	END
	++ @756 EXTERN dx#laerd 710 // You still haven't told me who you are, though I'm beginning to think I don't need to ask anymore.
	++ @757 EXTERN dx#laerd 719 // Are you... one of the Seven Sisters by any chance?

CHAIN dx#laerd 760
	@760 // You don't. I must trust his judgment here, as I've done so many times in the past. My guess is that he probably figured out all you needed was a little helping nudge in your darkest hours.
	== dx#laerd @761 // The results are that now, you have grown as a person... and in power, the scene here being a testament to that. I do hope his trust wasn't misplaced, however.
	END
	++ @762 EXTERN dx#laerd 710 // The Twisted Rune got what they deserved, but I still don't know what they want or why they're here. I could use some help with that, and would ask you for some, but I don't even know who you are?
	++ @763 EXTERN dx#laerd 710 // Enough about him. You still haven't told me who you are, and I'm growing suspicious.
	++ @765 EXTERN dx#laerd 719 // So you know Elminster... Are you one of the Seven Sisters by any chance?
	++ @764 EXTERN dx#laerd 710 // How about we skip to the part where you explain what the hell is going on here?


//////////////////////////////////////////////////////////////////////////
// LAERAL FIRST MEETING - PART 2
//////////////////////////////////////////////////////////////////////////


CHAIN dx#laerd part2
	@802 // I have been watching their every move for a while now. Although I missed a part of it, this meeting going on confirmed what I feared: that the Twisted Rune are active, and expanding.
	== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2213 // Oh please... Tell us something we don't know.
	== dx#laerd @803 // Then you appeared and just blasted them off to dust. While I can't approve of your methods, I suppose their deaths can hardly be seen as a negative in the long run.
	END
	++ @811 EXTERN dx#laerd 820 // Well, I'm afraid there's more to the story. Apparently they have a contact in the Cowled Wizards who is working with them. This is looking like quite the conspiracy.

CHAIN dx#laerd 820
	@820 // The Cowled Wizards? Hmm, this is far from ideal.
	== dx#laerd @821 // And from what I overheard, they seem to have plans for Baldur's gate too.
	== dx#laerd @822 // We can't let them act freely like this. I will look into their dealings in Baldur's Gate as it's closer to my position.
	== dx#laerd @823 // In the meantime, I suggest you continue with your investigation in the region. The Rune took a big hit when you stormed their place. No doubt they'll act in response. 
	== ANOMENJ IF ~!Alignment("Anomen",CHAOTIC_NEUTRAL) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2096 // Then we shall unearth every last one of their dealings and bring them to justice, milady.
	== ANOMENJ IF ~Alignment("Anomen",CHAOTIC_NEUTRAL) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @2155 // Then we shall brace ourselves for them. I am itching for a proper fight, with proper malefactors.
	== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @2129 // Say no more! The Order of the Radiant Heart will gladly oblige in this noble endeavor.
	== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @2097 // We can handle ourselves, human. We are not afraid of whatever retribution they might conjure.
	== dx#laerd @824 // Laeral: Do be careful, <CHARNAME>.
	END
	++ @827 EXTERN dx#laerd 840 // Yes, madam. Will do.
	++ @828 EXTERN dx#laerd 830 // Any ideas where I could look?
	++ @829 EXTERN dx#laerd 840 // I'd like to be the one to strike first instead of waiting for their reprisal. Did you find any clues while spying on them?
	
CHAIN dx#laerd 830
	@830 // I'm afraid you know more about Athkatla and the surrounding region than I do.
	END
	IF ~~ EXTERN dx#laerd 840
	
CHAIN dx#laerd 840
	@840 // They access these enclaves by using a special gem called a 'Rogue Stone', so having one with you at all times would be a good start. Besides that, they are a secretive organization, so their access points could be anywhere.
	
	// If in Athkatla Enclave and have had tanner letter at some point, mention Umar Hills. If in Umar Hills Enclave and have met Koshi, mention Athkatla enclave instead.
	== EDWINJ IF ~IsValidForPartyDialogue("Edwin") 
					AreaCheck("AR1008")
					Global("RuneEncounter1","GLOBAL",1)
					Global("MurdersSolved","GLOBAL",1)
					OR(2)
						PartyHasItem("misc6a")
						Global("CreateFaelMerchant","GLOBAL",1)~ THEN @2018 // Once again my superior and highly observant self (as well as my epic memory) should assist you inept fools.
	== EDWINJ IF ~IsValidForPartyDialogue("Edwin") 
					AreaCheck("AR1008")
					Global("RuneEncounter1","GLOBAL",1)
					Global("MurdersSolved","GLOBAL",1)
					OR(2)
						PartyHasItem("misc6a")
						Global("CreateFaelMerchant","GLOBAL",1)~ THEN @2022 // That mage from the Twisted Rune who ambushed us in the Bridge District... (I forgot his name... don't mention that.) He worked for the tanner. The tanner had a letter. The letter mentioned a contact in the Umar Hills. There. (As usual, I must do everything with these clowns.)
	== EDWINJ IF ~IsValidForPartyDialogue("Edwin") 
					AreaCheck("DX#001")
					OR(2)
						PartyHasItem("DX#KOSHI")
						Global("TwistedAmbush","GLOBAL",3)~ THEN @2018 // Once again my superior and highly observant self (as well as my epic memory) should assist you inept fools.
	== EDWINJ IF ~IsValidForPartyDialogue("Edwin") 
					AreaCheck("DX#001")
					OR(2)
						PartyHasItem("DX#KOSHI")
						Global("TwistedAmbush","GLOBAL",3)~ THEN @2023 // There was a letter in that rather uninviting compound in the Temple District. It said something about a Rogue Stone, and a strange building next to Delosar's Inn in the Bridge District. I think that qualifies as a "lead". (As usual, I must do everything with these clowns.)

	// If Edwin not in party, Jaheira takes over the role.
	== JAHEIRAJ IF ~!IsValidForPartyDialogue("Edwin")
					IsValidForPartyDialogue("Jaheira") 
					AreaCheck("AR1008")
					Global("RuneEncounter1","GLOBAL",1)
					Global("MurdersSolved","GLOBAL",1)
					OR(2)
						PartyHasItem("misc6a")
						Global("CreateFaelMerchant","GLOBAL",1)~ THEN @2020 // That mage from the Twisted Rune who ambushed us in the Bridge District... I forgot his name. He worked for the tanner, did he not? I recall the tanner had a letter mentioning a contact in the Umar Hills. We could investigate there.
	== JAHEIRAJ IF ~!IsValidForPartyDialogue("Edwin")
					IsValidForPartyDialogue("Jaheira") 
					AreaCheck("DX#001")
					OR(2)
						PartyHasItem("DX#KOSHI")
						Global("TwistedAmbush","GLOBAL",3)~ THEN @2021 // I recall there was a letter in that uninviting compound in the Temple District. It indeed said something about a Rogue Stone, and a strange building next to Delosar's Inn in the Bridge District. I think that's our best lead, <CHARNAME>.					

	// If Edwin AND Jaheira are not in party, Neera takes over the role.
	== NEERAJ IF   ~!IsValidForPartyDialogue("Edwin")
					!IsValidForPartyDialogue("Jaheira") 
					IsValidForPartyDialogue("Neera") 
					AreaCheck("AR1008")
					Global("RuneEncounter1","GLOBAL",1)
					Global("MurdersSolved","GLOBAL",1)
					OR(2)
						PartyHasItem("misc6a")
						Global("CreateFaelMerchant","GLOBAL",1)~ THEN @2020 // That mage from the Twisted Rune who ambushed us in the Bridge District... I forgot his name. He worked for the tanner, did he not? I recall the tanner had a letter mentioning a contact in the Umar Hills. We could investigate there.
	== NEERAJ IF   ~!IsValidForPartyDialogue("Edwin")
					!IsValidForPartyDialogue("Jaheira")
					IsValidForPartyDialogue("Neera")	
					AreaCheck("DX#001")
					OR(2)
						PartyHasItem("DX#KOSHI")
						Global("TwistedAmbush","GLOBAL",3)~ THEN @2021 // I recall there was a letter in that uninviting compound in the Temple District. It indeed said something about a Rogue Stone, and a strange building next to Delosar's Inn in the Bridge District. I think that's our best lead, <CHARNAME>.

	// If Edwin AND Jaheira AND Neera are not in party, Aerie takes over the role.
	== AERIEJ IF   ~!IsValidForPartyDialogue("Edwin")
					!IsValidForPartyDialogue("Jaheira") 
					!IsValidForPartyDialogue("Neera")
					IsValidForPartyDialogue("Aerie") 					
					AreaCheck("AR1008")
					Global("RuneEncounter1","GLOBAL",1)
					Global("MurdersSolved","GLOBAL",1)
					OR(2)
						PartyHasItem("misc6a")
						Global("CreateFaelMerchant","GLOBAL",1)~ THEN @2020 // That mage from the Twisted Rune who ambushed us in the Bridge District... I forgot his name. He worked for the tanner, did he not? I recall the tanner had a letter mentioning a contact in the Umar Hills. We could investigate there.
	== AERIEJ IF   ~!IsValidForPartyDialogue("Edwin")
					!IsValidForPartyDialogue("Jaheira")
					!IsValidForPartyDialogue("Neera")
					IsValidForPartyDialogue("Aerie") 
					AreaCheck("DX#001")
					OR(2)
						PartyHasItem("DX#KOSHI")
						Global("TwistedAmbush","GLOBAL",3)~ THEN @2021 // I recall there was a letter in that uninviting compound in the Temple District. It indeed said something about a Rogue Stone, and a strange building next to Delosar's Inn in the Bridge District. I think that's our best lead, <CHARNAME>.

	// If Edwin AND Jaheira AND Neera AND Aerie are not in party, Nalia takes over the role (last chance).
	== NALIAJ IF   ~!IsValidForPartyDialogue("Edwin")
					!IsValidForPartyDialogue("Jaheira") 
					!IsValidForPartyDialogue("Neera")
					!IsValidForPartyDialogue("Aerie")
					IsValidForPartyDialogue("Nalia")
					AreaCheck("AR1008")
					Global("RuneEncounter1","GLOBAL",1)
					Global("MurdersSolved","GLOBAL",1)
					OR(2)
						PartyHasItem("misc6a")
						Global("CreateFaelMerchant","GLOBAL",1)~ THEN @2020 // That mage from the Twisted Rune who ambushed us in the Bridge District... I forgot his name. He worked for the tanner, did he not? I recall the tanner had a letter mentioning a contact in the Umar Hills. We could investigate there.
	== NALIAJ IF   ~!IsValidForPartyDialogue("Edwin")
					!IsValidForPartyDialogue("Jaheira")
					!IsValidForPartyDialogue("Neera")
					!IsValidForPartyDialogue("Aerie")
					IsValidForPartyDialogue("Nalia")
					AreaCheck("DX#001")
					OR(2)
						PartyHasItem("DX#KOSHI")
						Global("TwistedAmbush","GLOBAL",3)~ THEN @2021 // I recall there was a letter in that uninviting compound in the Temple District. It indeed said something about a Rogue Stone, and a strange building next to Delosar's Inn in the Bridge District. I think that's our best lead, <CHARNAME>.
	END
	IF ~~ EXTERN dx#laerd 855

CHAIN dx#laerd 855
	@855 // I'll be in touch, hopefully with more information. It was great meeting you, <CHARNAME>. Elminster truly wasn't mistaken about you.
	DO ~SetGlobal("LaeralSpawned","GLOBAL",1)
		SpellNoDec(Myself,DRYAD_TELEPORT)
		Wait(2)
		AddJournalEntry(@104,QUEST)~
	EXIT



//////////////////////////////////////////////////////////////////////////
// SHOON VII DIALOG - PART ONE
//////////////////////////////////////////////////////////////////////////


BEGIN dx#shd

CHAIN IF ~NumTimesTalkedTo(0)~ THEN dx#shd 340
	@340 /*So you even found your way here. In my sanctum. To think I would end up in this state again after enduring against all odds. The gods are not without a sense of irony.*/
	DO ~SetGlobal("MetShoon","GLOBAL",1) Explore()~
	== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @2134 // This place sure is gloomy...
	== dx#laerd @341 // So you ARE hundreds of years old as I suspected!
	== dx#shd @342 // I see you've found powerful friends to assist you, Bhaalspawn. You are not without surprises of your own.
	== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @2135 // Now that we are in the evil foe's lair, let us strike it down for good and rid the realms of its evil.
	== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @2126 // Just how many of those crypts are there under Athkatla?
	== dx#demid @343 // I loooOOoOooOove to sing.... SING!!!
	== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @2125 // Oh dear! I didn't notice that floating skull in the corner over there. Sneaky! It scared me!
	== dx#shd @344 // Sadly, this is where your quest for revenge and meaning ends. I am but a harmless, although quite indestructible, spirit now.
	END 
	+ ~GlobalGT("LaeralAttacked","GLOBAL",0)~ + @346 EXTERN dx#laerd 1500 // I'm not sure what she's doing here either. (to Laeral) I thought I made my intentions pretty clear last time we met, tramp. What will it take for you to leave me alone?
	+ ~GlobalLT("LaeralAttacked","GLOBAL",1)~ + @345 EXTERN dx#shd 350 // What is this place? What the hell happened here?

CHAIN dx#laerd 1500
	@1500 // <CHARNAME>, can't you set aside your childish ways for one second? Let's see this through. Aren't you curious to know why you got ambushed, and who was behind it? This is a great opportunity to obtain answers.
	END
	++ @1505 EXTERN dx#laerd 1510 // I suppose you might have a point. But know this: I'm watching your every action. I do not trust you.
	++ @1520 EXTERN dx#laerd 1530 // Get out of my sight. Your presence annoys me to no end.
	
CHAIN dx#laerd 1510
	@1510 // I'm glad you are seeing reason if only for just a moment.
	// Jaheira: About time!
	=@1511 // So, ghost, what is this place? What happened here exactly?
	END
	IF ~~ EXTERN dx#shd 350
	
CHAIN dx#laerd 1530
	@493 // ...
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2262 // Ha! Ye finally get yer comeuppance now, wench!
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2261 // You are unbelievable, <CHARNAME>. Lady Blackstaff, plea--
	== dx#laerd @1530 // Fine. I will leave you to it then. For good this time. Goodbye.
	DO ~SetGlobal("DxEviLEnding","GLOBAL",1)
		ActionOverride("dx#laera",SpellNoDec(Myself,DRYAD_TELEPORT))
		Wait(2)
		ActionOverride("dx#shoon",StartDialogueNoSet(Player1))~ EXIT
		
CHAIN IF ~Global("DxEviLEnding","GLOBAL",1) !NumberOfTimesTalkedTo(0) Global("MetShoon","GLOBAL",1)~ THEN dx#shd greetevil
	@1540 // I certainly didn't expect you to expel the wench like this. That was quite the entertaining display. Regardless, you are of no concern to me. I no longer care about your mortal dealings. 
	END
	++ @1541 EXTERN dx#shd evilexposition // I'm not done with you. You still haven't explained who you really are, or what this place even is for.
	
CHAIN dx#shd evilexposition
	@350 // My name is Shoon, seventh of the name. The howling skull there is the real Zallanora. Well, a reflection of her. Perhaps there are still some alive today who would remember my name, and they'd shudder in terror should they hear it.
	= @1560 // I was once a great emperor, betrayed. Or so everyone thinks. I faked my own death and researched into lichdom, and eventually succeeded in my endeavor.
	== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @353 // Then what of the elf? What does she have to do with all this?
	== dx#shd @354 // The reason why I have been laying dormant for centuries is also the reason why you can't harm me, or her in fact.
	= @355 // Zallanora and her friends stumbled upon my domain on a fateful day. I had planned on consuming their souls to escape a... predicament I had gotten myself into. I was trapped inside the Tome of the Unicorn, a result of my delving into ancient arcane powers. A grave mistake.
	= @356 // I slaughtered them all where they stood, began drinking their souls, anticipating my salvation, but just at that moment, the Times of Troubles struck. Zallanora was still alive, somehow. The only one alive. I hadn't drank her soul yet... And we exchanged bodies.
	= @357 // Thus, began our curses. Hers, to be trapped within the Book, in my now-rotten form. Mine, to forever inhabit the frail body of a young elvish woman.
	END
	++ @365 EXTERN dx#shd 370 // Right, it must have been so, so terrible to be stuck in a young elven body.
	++ @366 EXTERN dx#shd 370 // A perfect storm of events indeed. What happened next?
	++ @367 EXTERN dx#shd 370 // This still doesn't explain why you did what you did.
	++ @368 EXTERN dx#shd 370 // Yeah yeah. Why don't you get to the part that's relevant to me?

CHAIN dx#shd 350
	@350 // My name is Shoon, seventh of the name. The howling skull there is the real Zallanora. Well, a reflection of her. Perhaps there are still some alive today who would remember my name, and they'd shudder in terror should they hear it.
	== dx#laerd @351 // Shoon... VII? The mad emperor? This can't be true, Shoon the Seventh has been dead for centuries.
	== dx#shd @352 // Ah, so you have heard stories of my deeds! I was once a great emperor indeed, betrayed. Or so everyone thinks. I faked my own death and researched into lichdom, and eventually succeeded in my endeavor.
	== dx#laerd @353 // Then what of the elf? What does she have to do with all this?
	== dx#shd @354 // The reason why I have been laying dormant for centuries is also the reason why you can't harm me, or her in fact.
	= @355 // Zallanora and her friends stumbled upon my domain on a fateful day. I had planned on consuming their souls to escape a... predicament I had gotten myself into. I was trapped inside the Tome of the Unicorn, a result of my delving into ancient arcane powers. A grave mistake.
	= @356 // I slaughtered them all where they stood, began drinking their souls, anticipating my salvation, but just at that moment, the Times of Troubles struck. Zallanora was still alive, somehow. The only one alive. I hadn't drank her soul yet... And we exchanged bodies.
	= @357 // Thus, began our curses. Hers, to be trapped within the Book, in my now-rotten form. Mine, to forever inhabit the frail body of a young elvish woman.
	END
	++ @365 EXTERN dx#shd 370 // Right, it must have been so, so terrible to be stuck in a young elven body.
	++ @366 EXTERN dx#shd 370 // A perfect storm of events indeed. What happened next?
	++ @367 EXTERN dx#shd 370 // This still doesn't explain why you did what you did.
	++ @368 EXTERN dx#shd 370 // Yeah yeah. Why don't you get to the part that's relevant to me?

CHAIN dx#shd 370
	@370 // It took me ten years to be able to properly control it. To shape magical energy with the same proficiency I was used to. And I was incredibly proficient, as you may have noticed from our battles.
	== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @2151 // So he was indeed trying to steal her soul. Why is it that every evil villain tries to do that?
	== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2136 // Yet clearly not proficient enough to match us. (To match me.)
	== dx#shd @371 // With a new body came new vigor. And ambition. I resumed my plans from centuries ago... to control all of the Sword Coast, in the shadows.
	= @372 // It turns out not much had changed with the world during my centuries of absence. Suitors would rush from all over to "teach" a young and overly eager female apprentice such as myself. Gaining influence among them was a laughingly easy task.
	= @373 // They were lining up. A new experience for me, as you surely suspect. Before long, I was climbing in the ranks without it looking out of place. I nearly had both the Cowled Wizards and Twisted Rune under my control, until you came along.
	== dx#laerd IF ~InMyArea("dx#laera")~ THEN @374 // You are disgusting, every bit as vile as the legends told. Why are you telling us this? What do you stand to gain?
	== IMOEN2J IF ~!InMyArea("dx#laera") InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @2127 // You are most disgusting and vile. Why are you telling us this? What do you stand to gain?
	== dx#shd @380 // Frankly, it is quite liberating to collapse the layers of lies and utter the truth... for once. Besides young Zallanora here who can't comprehend a word I tell her, you are the only beings in the realms who know of my story. I enjoyed that.
	== dx#shd @381 // But more than that, none of this matters to me now. You cannot kill my spirit any more than you can save her. I am cursed to remain in this state until the Tome's magic finally becomes weak enough for me to overpower it. Or an event like the Times of Troubles happens again and wipes out the Tome's power.
	== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @2115 // That's... quite the story. 
	== dx#shd IF ~InMyArea("dx#laera")~ THEN @382 // It could be centuries from now. Or millenia... I will then resume my project, carefully crafted from a near-eternity of planning. And neither of you will be able to stop it, for you will both be long dead by then. Yes, I will outlast even you, Laeral. I have outlived you and all of your sisters thus far.
	== dx#shd IF ~!InMyArea("dx#laera")~ THEN @1545 // It could be centuries from now. Or millenia... I will then resume my project, carefully crafted from a near-eternity of planning. And you will not be able to stop it, for you will be long dead by then.
	END
	+ ~InMyArea("dx#laera")~ + @384 EXTERN dx#shd 420 // Over my dead body. We'll think of something... won't we?
	++ @385 EXTERN dx#shd 420 // What if I just killed you, right here, right now?
	++ @386 EXTERN dx#shd 430 // Well then, good riddance if you ask me. I don't care what you do a thousand years from now to be honest.

CHAIN dx#shd 420
	@420 // I welcome you to try. I have tried myself. Hired adventurers to try. We are both impervious to all harm, a side effect, I suppose, of this predicament we are into through the Tome. Its binding curse also serves as a protective cocoon.
	== dx#shd @421 // The Tome's power is absolute, and cannot be reversed. Believe me, everyone who knows about the Tome know this.
	END
	++ @423 EXTERN dx#shd 426  // Then how was I able to kill you?
	
CHAIN dx#shd 430
	@430 // As you should. You still have a lifetime in front of you, a lifetime which doesn't involve me. Why should you care?
	END
	++ @385 EXTERN dx#shd 420 // What if I just killed you, right here, right now?

CHAIN dx#shd 426
	@426  // When we exchanged bodies, I was the one trapped into the book, while Zallanora was free. Thus, I became free, and she, trapped in the book. But our spirits are connected due to the Times of Troubles' meddling, none of us can leave the world of the living without the other. And as she is trapped in the book... I cannot leave, even now that my physical form is dead. And I can't form a new one.
	END
	IF ~!InMyArea("dx#laera")~ EXTERN dx#shd evilwall
	IF ~InMyArea("dx#laera")~ EXTERN dx#shd 427

CHAIN dx#shd evilwall
	@427 // Now I have a millenia to think, and ponder over my strategy when this curse eventually ends. I would say it's a great opportunity. I bid you farewell, Godchild, and good luck in your quest for personal significance. Your matters are no longer relevant to me.
	END
	++ @1561 EXTERN dx#shd evilwall2 // Wait, that's it? You're impervious to all harm and that's the extent of it?

	
CHAIN dx#shd evilwall2  				// End of "Chaotic Stupid" evil path. You get very little as nothing happened. Couldn't even get any of Shoon's treasures...
	@1565 // I'm afraid so. I care little for your fate.
	== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @2128 // Rightfully so. <CHARNAME>, let's leave this impotent ghost behind and get back to our business.
	== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @2150 // Wasn't that a bit... anticlimactic?
	== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @2152 // Fate will catch up to you, spirit. One cannot perform such evil deeds and remain unpunished forever. Nature has a way of correcting itself... on a long-enough timeline.
	== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @2264 // I feel like we took a wrong turn somewhere. Believe me, I'm a master at that.
	== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @2268 // I can't help but feel bad for this Zallanora gal, <CHARNAME>. Her soul's been stolen much like ours, y'know? Gosh, I wish there was something we could have done. Anything.
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2149 // You are most foolish, <CHARNAME>. I want you to know that.
	== dx#shd @1566 // What you do from now on is irrelevant to me. Farewell.
	DO ~SetGlobal("DxEviLEnding","GLOBAL",2)
		AddXPObject(Player1,10500) 
		AddXPObject(Player2,10500)
		AddXPObject(Player3,10500)
		AddXPObject(Player4,10500)
		AddXPObject(Player5,10500)
		AddXPObject(Player6,10500)
		AddJournalEntry(@120,QUEST_DONE)~
	EXIT

CHAIN dx#shd 427
	@427 // Now I have a millenia to think, and ponder over my strategy when this curse eventually ends. I would say it's a great opportunity. I bid you farewell, Godchild, and good luck in your quest for personal significance. Your matters are no longer relevant to me.
	== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @2128 // Rightfully so. <CHARNAME>, let's leave this impotent ghost behind and get back to our business.
	== dx#laerd @435 // Not so fast, your highness. You seem to have overlooked one detail in what looks like quite the impervious plan.
	== dx#laerd @440 // For all your cunning, there is something you haven't envisioned: I am a Chosen of Mystra, the goddess of magic herself, and among all her Chosen... I am the most proficient with magical items and artifacts.
	== dx#laerd @441 // This Tome of the Unicorn, I know of it, and I can feel its presence. It's right here, in your sarcophagus.
	== dx#laerd @442 // It is an object of immense power, its magic absolutely cannot be reversed. But the Tome in itself, not its magic, is not impervious to harm. You said it yourself — your plan is to overpower it eventually.
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2137 // What's this wench be blabberin' about, now? Object of immense power? And perhaps of immense wealth? I be listenin'!
	== dx#laerd @443 // As are all such artifacts, this Tome's magical power and integrity are imbued from the Weave, and I wield the Silver Fire of Mystra. If she lends me her will, I could perhaps destroy it, and thus, reverse its magic by virtue of it being destroyed.
	END
	IF ~~ EXTERN dx#shd 450

CHAIN dx#shd 450
	@450 // What madness is this? You would destroy an object of such inestimable value? What do you stand to gain from this?
	== dx#laerd @451 // Nothing tangible. I actually stand to lose on this. But I think the world will be better off without you. Permanently, this time.
	== dx#shd @452 // Impossible! You will not, you don't have the power to—
	== dx#laerd @453 // Oh but I think I do. And you said so yourself: you are quite harmless now, and thus... cannot stop us.
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2138 // <CHARNAME>, ye ain't gonna let 'er destroy this, err, book of the... durned horned horses? Whatever. Worth a fortune, I reckon! 
	== dx#shd @455 // Godchild, I have powerful treasures, ancient artifacts, which only I know the locations of. You have grown powerful now, perhaps even more than her. Assist me now and I shall make you richer and more powerful than you have ever imagined.
	END
	+~GlobalLT("LaeralAttacked","GLOBAL",1)~+ @460 EXTERN dx#shd 470 // Right. And turn on one of the Seven Sisters? No thanks.
	+~GlobalLT("LaeralAttacked","GLOBAL",1)~+ @461 EXTERN dx#shd 470 // Uh, let me think here. Who should I help, a lovely person who's legendary for being a fair and just archmage this past few centuries, and who's helped me thus far, or a tyrannical maniac who's tried to kill me?
	++ @462 EXTERN dx#shd 470 // I will not believe the lies of a cornered rat who, by his own volition, has lied, cheated, and murdered for centuries. If there's a way to destroy you, I'm all for it.
	++ @464 EXTERN dx#shd 470 // I care not for what you'll do in a thousand years to be honest, but at this point I have a personal beef with you. You're not getting out of this.
	++ @463 EXTERN dx#shd pleaseno // Wait, what kinds of riches are we talking about?

CHAIN dx#shd pleaseno
	@480 // I know the locations of the Living Gem, as well as a wish-granting blade, and—
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2139 // You can't possibly be considering this.
	== dx#laerd @481 // <CHARNAME>, Shoon VII is one of the most vile rulers to have ever lived. Evil incarnate. Surely you would not believe his lies? He has no intention of going through with his promises, and you know it.
	END
	++ @485 EXTERN dx#shd 470 // I was just toying with him. He's all yours.
	++ @486 EXTERN dx#shd 490 // To the contrary, I want what he's offering me. I will not let you destroy him.

CHAIN dx#shd 470
	@470 // Insolent wenches! Of course, Mystra's pupil... Why didn't I think of this?! I should have enslaved one of your sisters, Laeral, and forced her to free me! You would have regretted the day you were born, all of you! Her screams would have travelled through the Weave, to you, every day.
	== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @2140 // That's... so creepy.
	== dx#shd @471 // I promise you one thing, the both of you: Should I make it through this, an eternity of torment is what awaits you, and nothing else.
	== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @2141 // Yeah yeah, we've heard that one before. Many times.
	== dx#laerd @472 // Stand aside, <CHARNAME>. I shall begin the communion with the Goddess.
	== dx#laerd @473 // And for the record, your highness, none of my sisters can do this. But I'm quite relieved that those are but empty threats, because I know they wouldn't be, should you be walking the Realms.
	DO ~StartCutSceneMode()
		StartCutScene("dx#cut04")~
	EXIT
	
CHAIN dx#shd 490
	@490  // Yes, spoken like a true child of murder! Kill her, then I will deliver on my promises.
	END
	++ @491 EXTERN dx#shd 492 // You misunderstand. I want them now.
	
CHAIN dx#shd 492  // End of proper Evil path
	@492  // How dare you make such daring demands?! 
	== dx#laerd @487 // By the Goddess... You're being serious.
	== dx#shd @493 // ...
	== dx#shd @494 // ... Fine. You leave me little choice. The riches I spoke of, they are yours.
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2263 // Aye that be more like it! Ye manoeuvered that expertly, <CHARNAME>.
	== dx#laerd @496 // Well then, this was all for nothing. Meager riches for you and nothing else. Your greed sickens me, but I know better than to face you in combat. The Goddess wouldn't have it, she's had enough of inter-deity turmoil.
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2262 // Ha! Ye finally get yer comeuppance now, wench!
	== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @2156 // About time we get something out of this mess. Nice work, <CHARNAME>. I would have done the same.
	== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @2265 // <CHARNAME>... what have you done?
	== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @2266 // I... I don't feel so good. This feels wrong. What are we even doing?
	== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @2267 // I can't help but feel bad for this Zallanora gal, <CHARNAME>. Her soul's been stolen much like ours, y'know? Shouldn't we have at least tried to undo it? Gosh, I can't shake this feeling... that we had to do something here.
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2261 // You are unbelievable, <CHARNAME>. Lady Blackstaff, please, we can still--
	== dx#laerd @497 // Know that your decision today could cause the deaths of millions one day. But I guess you don't care, since it probably won't affect you.
	DO ~EraseJournalEntry(@120)
		AddJournalEntry(@121,QUEST_DONE)
		AddXPObject(Player1,54500) 
		AddXPObject(Player2,54500)
		AddXPObject(Player3,54500)
		AddXPObject(Player4,54500)
		AddXPObject(Player5,54500)
		AddXPObject(Player6,54500)
		GiveGoldForce(9356)
		GiveItemCreate("DX#LUCKB",Player1,2,2,2)  
		GiveItemCreate("ring41",Player1,0,0,0)  
		SetGlobal("LaeralSpawned","GLOBAL",10)
		SetGlobal("DxEviLEnding","GLOBAL",2)
		ActionOverride("dx#laera",SpellNoDec(Myself,DRYAD_TELEPORT))~ 
	EXIT
	

APPEND dx#shd

IF ~Global("LaeralSpawned","GLOBAL",10) Global("MetShoon","GLOBAL",1)~ greetevil2 
	SAY @397 /*Now that the wench is gone, you are of no concern to me. I care not about your mortal dealings. What I'm pondering over right now, is what I should do with an eternity to think.*/
	IF ~~ EXIT
END 

IF ~Global("MetShoon","GLOBAL",1)~ greet2 
	SAY @398 /*What would you do if you had an eternity to think? It is what I'm pondering over at this moment. You, however, should ponder over a much shorter timespan, like what you should do right now.*/
	IF ~~ EXIT
END 

END // This is an end to APPEND


BEGIN dx#shool

//////////////////////////////////////////////////////////////////////////
// SHOON VII DIALOG - PART TWO
//////////////////////////////////////////////////////////////////////////


CHAIN IF ~NumTimesTalkedTo(0) AreaCheck("DX#002")~ THEN dx#laerd 498
	@498 // It is done.
	== dx#rzall @507 // AAAAHHHHH! Help! My friends... they're all...
	== dx#shool @499 // The curse... it is lifted!
	END
	++ @500 EXTERN dx#laerd 501 // Uh... why are they both alive?

CHAIN dx#laerd 501
	@501 // I am... not sure.
	== dx#shool @502 // I yet live! I made a promise to the both of you, which I fully intend on keeping... Prepare to feel the full extent of my wrath!
	== dx#shool @503
	== dx#shool @504
	== dx#shool @505
	== dx#shool @506 
	DO ~Kill("dx#shool")
		CreateVisualEffectObject("SPFLSRIN","DX#SHOOL")
		SetGlobal("KilledShoon","GLOBAL",1)~
	EXIT


BEGIN dx#rzall
	
// Dialog after Shoon dies begins here

//////////////////////////////////////////////////////////////////////////
// REAL ZALLANORA
//////////////////////////////////////////////////////////////////////////

CHAIN IF ~NumTimesTalkedTo(0) AreaCheck("DX#002") Global("KilledShoon","GLOBAL",1)~ THEN dx#rzall oww
	@508 // Ooohh... Oww... My head...
	== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @2142 // The girl yet lives!
	== dx#laerd @509 // That was...
	END
	++ @511 EXTERN dx#laerd 512 // What happened? How is she alive and Shoon dead?

CHAIN dx#laerd 512
	@512 // I'm as shocked as you are, they should actually... both be dead, which I feared was going to happen. But there is some logic to it. After they switched bodies, Shoon died fighting you, while Zallanora, the true Zallanora trapped in Shoon's body, didn't.
	== dx#laerd @513 // So the only one who actually survived after the switch... is her. Perhaps that is why, when the switch was undone, she was spared? In an ironic twist of fate for Shoon, dying in Zallanora's body actually saved her soul.
	END
	++ @514 EXTERN dx#rzall 550 // She's not safe yet, at least not in these crypts.

CHAIN dx#rzall 550
	@550 // Wh... Where am I?
	== dx#laerd @551 // You're in Athkatla, in Amn. Well, in a hidden crypt below the city, and it's a miracle you're still alive. What is the last thing you remember?
	== dx#rzall @552 // Ath... Athkatla? Why am I here? What happened?
	END 
	++ @553 EXTERN dx#rzall 555 // That's, uh, a long story.
	
CHAIN dx#rzall 555
	@555 // All I can remember are... screams. And why do I feel so horrendously bad?
	END
	++ @560 EXTERN dx#rzall 561	 // Okay, let me try... Instead of dying a gruesome death when a centuries-old Lich Emperor tried to drain your soul after you stepped in his sanctuary uninvited, you instead switched bodies with him due to some ungodly luck that happens once in a thousand years. He then left your spirit to rot here while he planned on how exactly to overtake the Sword Coast with his newfound youthful body — yours!

CHAIN dx#rzall 561
	@561 // This is... Someone stole my body? Now that you mention it, I do remember something like that. Getting sucked out of my own body. It felt awful.
	== dx#laerd @562 // It does. I know how that feels... it's horrible.
	== dx#rzall @563 // Is it... over now? How... how did I get my body back? I have so many questions.
	END
	++ @565 EXTERN dx#rzall 580 // Yes, it is over. Not sure exactly how you got your body back, but it doesn't matter.
	++ @566 EXTERN dx#rzall 570 // You got your body back because the lady here destroyed the item that linked your soul with the Emperor's.
	++ @567 EXTERN dx#rzall 580 // Just be glad you're alive. It was a happy accident that you lived through this. You should thank Laeral here, she saved your life.
	
CHAIN dx#rzall 570
	@570 // Destroyed... what?
	END
	++ @571 EXTERN dx#rzall 580 // Nevermind that, it all worked out in the end.
	
CHAIN dx#rzall 580
	@579 // Oh, okay. I'll... take your word for it. Thank you in any case, for saving me.
	== dx#rzall @580 // What am I supposed to do now? How do I get home?
	== dx#laerd @581 // Well, I would recommend going as far as you can from Athkatla and the Cowled Wizards. Those that know "you" around here are not people you'd want to meet, ever.
	== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @2143 // And the Cowled Wizards are indeed vindictive, believe me on this.
	== dx#rzall @582 // But what about my family, and my friends?
	END
	++ @583 EXTERN dx#rzall 590 // I'm sorry to say this, but your friends are dead. He killed them. As for your family... hopefully they're alive, but I wouldn't count on it.
	++ @584 EXTERN dx#rzall 590 // Dead. The emperor killed them and drank their souls. As for your family... he probably offed them too to cover his tracks. Leaving no loose ends and all that.
	++ @585 EXTERN dx#rzall 591 // Look, you're lucky to be alive to begin with. If you want it to stay that way, you need to take precautions. The man who was in your body before wasn't exactly an angel.
	
CHAIN dx#rzall 590
	@590 // G-Gone? All of them? Just like that? *sob* No... how could he... wh-why?
	END
	IF ~~ EXTERN dx#rzall 600
	
CHAIN dx#rzall 591
	@591 // So they're...?
	== dx#laerd @595 // They're gone. Indeed they are. I am truly sorry, my child.
	END
	IF ~~ EXTERN dx#rzall 590
	
CHAIN dx#rzall 600
	@600 // I... Sorry... All right, let me get my bearings... I... How do I leave this place? What do I do now?
	END
	IF ~~ EXTERN dx#laerd 520

CHAIN dx#laerd 520
	@520 // I guess I could take you with me. After all, <CHARNAME>'s hectic adventuring life is the opposite of what you need right now. 
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2144 // Ever so gracious and generous you are, Lady Blackstaff. 
	== dx#laerd @521 // I have good ties with the Elves of Silverymoon. And I'm well established in Waterdeep. You'll be safe with me, you poor thing...
	END
	++ @525 EXTERN dx#rzall 610 // (Say nothing).
	++ @526 EXTERN dx#rzall 610 // That... makes a lot of sense.
	+ ~PartyGoldGT(2000)~ + @527 EXTERN dx#laerd 530 // Wait. Here's 2000 gold pieces. To help restart her life.
	
CHAIN dx#laerd 530
	@530 // That's most generous of you, <CHARNAME>. I will be sure to let many in Waterdeep know of your deeds. You truly live up to your reputation.
	END
	++ @535 EXTERN dx#rzall 615 // It's the least I could do.
	++ @536 EXTERN dx#rzall 615 // In a way, I have... sort of murdered her? Even if it wasn't really her? It was still her body. Regardless, I just felt I had to.
	
CHAIN dx#rzall 610
	@610 // Very well. I... I guess this is it then? Thank you, for... everything. Sorry, I'm still a bit in shock... and dizzy.
	== dx#laerd @625 // So, this is where we part ways, <CHARNAME>. Today, the world breathes a huge sigh of relief. Nobody knows about it, but we averted a possible catastrophe down the line.
	== dx#laerd @626 // Before I leave, I should tell you that I sensed another powerful magical aura emanating from the sarcophagus. No doubt in my mind that a powerful artifact rests in there. I think you should take it. I've had my fill of powerful artifacts for today.
	== dx#laerd @627 // The next time I see Elminster, I will be sure to recount our exploits! He once said that should Shoon VII be alive today, there would be no peace in our time. And now that I've met him, I would agree.
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2120 // I think ye should extract more from that silver wench, <CHARNAME>. We rendered her a service, conversely she's just about the only one present who's nae likely to be dead when it becomes relevant!
	== dx#laerd IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @628 // If riches are what you're after, dwarf, then I encourage you to help yourself to the content of the sarcophagus over there.
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2121 // Bah! Blasted Harpers, and ye as well <CHARNAME>, for yer infirmity!
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2145 // This has been a tremendous honor, My Lady. All thanks to your help, of course. <CHARNAME>, this was a job most well done.
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2146// And Korgan, you can go to the Nine Hells for all I care. That's all your selfish, morally-bankrupt husk of an individual deserves.
	== KORGANJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2147 // Ha ha! Yer finally starting to grow some bite on them barky teeth, ye half-wench?! I'd be proud of ye if I didn't despise ye so durned much.
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2148 // *sigh* One cannot win with this dipstick!
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2158 // Another good day of butt-kicking glory and villains laid to rest for good! 
	== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @2159 // Poor woman. What an unfortunate timing that brought this misfortune upon her! I'm glad we could help her and make things right in the end.
	== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @2157 // All's well that ends well, it would seem. This will make a fine base for my next story, my sparrows! Plenty dramatic, with lots of twists and turns, exactly the kind of tales I favor! All it was lacking in was romance... the sweeping kind, of course!
	== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @2160 // It feels good, <CHARNAME>. Knowing... we helped someone who's had a fate so similar to ours, y'know? Now it's our turn. I wonder if we'll able to get our souls back. The path ahead is tortuous, uncertain, and distinct, but... Yep, this gives me faith! I believe we can.
	== dx#laerd @630 // I suppose you'll be returning to Athkatla? This is goodbye then. Thank you for your assistance in this matter, and may we meet again under better circumstances.
	DO ~EraseJournalEntry(@120) 
		TakePartyItem("dx#wards")
		DestroyItem("dx#wards")
		AddXPObject(Player1,64500)
		AddXPObject(Player2,64500)
		AddXPObject(Player3,64500)
		AddXPObject(Player4,64500)
		AddXPObject(Player5,64500)
		AddXPObject(Player6,64500)
		AddJournalEntry(@150,QUEST_DONE)
		SetGlobal("LaeralSpawned","GLOBAL",10)
		CreateVisualEffectObject("SPDIMNDR","dx#rzall")
		PlaySound("PORTAL2")
		SpellNoDec(Myself,DRYAD_TELEPORT)~ 
	EXIT
	
CHAIN dx#rzall 615
	@615 // I... I'm speechless. I-I can't believe your kindness. One I will never forget. I guess this is it then? Thank you, for... everything. Sorry, I'm still a bit in shock... and dizzy.
	== dx#laerd @625 // So, this is where we part ways, <CHARNAME>. Today, the world breathes a huge sigh of relief. Nobody knows about it, but we averted a possible catastrophe down the line.
	== dx#laerd @626 // Before I leave, I should tell you that I sensed another powerful magical aura emanating from the sarcophagus. No doubt in my mind that a powerful artifact rests in there. I think you should take it. I've had my fill of powerful artifacts for today.
	== dx#laerd @627 // The next time I see Elminster, I will be sure to recount our exploits! He once said that should Shoon VII be alive today, there would be no peace in our time. And now that I've met him, I would agree.
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2122 // Ye be givin' up gold in the thousands, just like that, <CHARNAME>? For no reason?! Did me eyes miss a bloody welfare indication when I joined yon sissy group?!
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2123 // Ye be stoppin' such folly this instant, if I have anything t'say about it. Take the darn gold back, *and* ye should extract more from that silver wench, <CHARNAME>. We rendered her a service, conversely she's just about the only one present who's nae likely to be dead when it becomes relevant!
	== dx#laerd IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @628 // If riches are what you're after, dwarf, then I encourage you to help yourself to the content of the sarcophagus over there.
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2124 // Bah! Blasted Harpers, and ye as well <CHARNAME>, for yer piousness! I be sensin' a barf comin' up me belly. 
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @2145 // This has been a tremendous honor, My Lady. All thanks to your help, of course. <CHARNAME>, this was a job most well done.
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2146// And Korgan, you can go to the Nine Hells for all I care. That's all your selfish, morally-bankrupt husk of an individual deserves.
	== KORGANJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2147 // Ha ha! Yer finally starting to grow some bite on them barky teeth, ye half-wench?! I'd be proud of ye if I didn't despise ye so durned much.
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @2148 // *sigh* One cannot win with this dipstick!
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2158 // Another good day of butt-kicking glory and villains laid to rest for good! 
	== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @2159 // Poor woman. What an unfortunate timing that brought this misfortune upon her! I'm glad we could help her and make things right in the end.
	== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @2157 // All's well that ends well, it would seem. This will make a fine base for my next story, my sparrows! Plenty dramatic, with lots of twists and turns, exactly the kind of tales I favor! All it was lacking in was romance... the sweeping kind, of course!
	== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @2160 // It feels good, <CHARNAME>. Knowing... we helped someone who's had a fate so similar to ours, y'know? Now it's our turn. I wonder if we'll able to get our souls back. The path ahead is tortuous, uncertain, and distinct, but... Yep, this gives me faith! I believe we can.
	== dx#laerd @630 // I suppose you'll be returning to Athkatla? This is goodbye then. Thank you for your assistance in this matter, and may we meet again under better circumstances.
	DO ~EraseJournalEntry(@120) 
		TakePartyItem("dx#wards")
		DestroyItem("dx#wards")
		TakePartyGold(2000)
		ReputationInc(1)
		AddXPObject(Player1,84500)
		AddXPObject(Player2,84500)
		AddXPObject(Player3,84500)
		AddXPObject(Player4,84500)
		AddXPObject(Player5,84500)
		AddXPObject(Player6,84500)
		AddJournalEntry(@150,QUEST_DONE)
		SetGlobal("LaeralSpawned","GLOBAL",10)
		CreateVisualEffectObject("SPDIMNDR","dx#rzall")
		PlaySound("PORTAL2")
		SpellNoDec(Myself,DRYAD_TELEPORT)~ 
	EXIT
	

// Zallanora the Demilich DIALOG

BEGIN dx#demid

IF ~True()~ sing
	SAY @343	//@343 = ~I loooOOoOooOove to sing.... SING!!!~
	IF ~~ EXIT
END
