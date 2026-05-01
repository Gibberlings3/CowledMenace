// LAERAL SILVERHAND DIALOG

BEGIN dx#laerd

// Coward PCs attack the kind lady

CHAIN IF ~Global("LaeralAttacked","GLOBAL",1) AreaCheck("AR0802") !Global("DxEviLEnding","GLOBAL",1)~ THEN dx#laerd attack1
	@488 // Really, <CHARNAME>? The answers we seek are right through this magical seal. I know better than to face you in combat though. The Goddess wouldn't have it, she's had enough of inter-deity turmoil. I'll be waiting for you inside regardless, should you decide to be more agreeable.
	DO ~SetGlobal("DxEviLEnding","GLOBAL",1)
		ActionOverride("dx#laera",SpellNoDec(Myself,DRYAD_TELEPORT))~
	EXIT

CHAIN IF ~Global("LaeralAttacked","GLOBAL",1) !Global("DxEviLEnding","GLOBAL",1)~ THEN dx#laerd attack2
	@495 // Really, <CHARNAME>? I know better than to face you in combat. The Goddess wouldn't have it, she's had enough of inter-deity turmoil. Disappointingly, I will leave you to your business, whatever that is. Hopefully we meet again under more agreeable circumstances.
	DO ~AddJournalEntry(@122,QUEST)
		SetGlobal("DxEviLEnding","GLOBAL",1)
		ActionOverride("dx#laera",SpellNoDec(Myself,DRYAD_TELEPORT))~
	EXIT
	
//////////////////////////////////////////////////////////////////////////
// LAERAL - ATHKATLA - LOWER CRYPTS
//////////////////////////////////////////////////////////////////////////	



CHAIN IF ~NumTimesTalkedTo(0) AreaCheck("ar0802")~ THEN dx#laerd crypt
	@1100 // Finally, I found you! I knew you'd come here eventually. You are a hard one to track down, <CHARNAME>.
	== dx#laerd @1101 // I'm sorry I couldn't aid you when the Twisted Rune ambushed you. You'd been gone for a while, and I don't have eyes and ears everywhere. It is clear that they had you in their sight for a while.
	END
	++ @1105 EXTERN dx#laerd 1110 // They did. Only, no one pushes me around anymore. The Twisted Rune learned that the hard way.
	++ @1106 EXTERN dx#laerd 1120 // It's all right. I can handle myself now, as you can see. I came here because of a hunch. Something tells me our meeting here isn't an accident.
	++ @1107 EXTERN dx#laerd 1120 // How come, of all places, you found me at the very bottom of a secret crypt under the Graveyard District of Athkatla?

CHAIN dx#laerd 1110
	@1110 // You did hit them hard, but an organization made of centuries-old members such as this one won't suddenly cease all operations.
	== dx#laerd @1111 // Since you and I started meddling in the Twisted Rune's affairs, I've had time to think, ponder over this.
	END
	IF ~~ EXTERN dx#laerd 1125

CHAIN dx#laerd 1120
	@1120 // Oh but there is nothing random about it. It's been quite a while since you and I started meddling in the Twisted Rune's affairs, and I've had time to think, ponder over this.
	END
	IF ~~ EXTERN dx#laerd 1125

CHAIN dx#laerd 1125
	@1125 // Nothing about this Zallanora person made sense. How did such a young Elf without connections or training become so powerful? So I started digging.
	== dx#laerd @1126 // My divination spells returned naught but air... until she ambushed you. Unfortunately, I was late to the engagement, but I found her body. Finally I had something: strands of her hair. This would enable me to access her past.
	== dx#laerd @1127 // It turns out she disappeared decades ago, on her way to Silverymoon, only to resurface ten years later in Amn as an apprentice. Now a few years later, she's an archmage of considerable power, and influence, a name not to be pronounced lightly within the Cowled Wizards.
	== dx#laerd @1128 // I made inquiries with my connections and, with the help of a few spells, eventually found out that she accessed those very crypts. Numerous times. Clearly there was something of importance here. But I was missing one piece of the puzzle: the stone which you currently have in your possession. I suspected you would have it, hence why I have been searching for you.
	== dx#laerd @1129 // So, what say you, <CHARNAME>, is it finally time for answers?
	END
	++ @1140 EXTERN dx#laerd 1150 // Yes. Zallanora's stone is already activating. Shouldn't be too hard to find what it's used for around here.
	++ @1145 EXTERN dx#laerd 1155 // After all this trouble, and nearly dying like three times, I'm certainly not backing off now. What do you think we can expect?

CHAIN dx#laerd 1150 
	@1150 // I've already scoured this room, the eastern wall is brimming with carefully concealed spells. I'll show you.
	DO ~MoveToPointNoInterrupt([1080.2080])
		Wait(2)
		DisplayStringHead(Myself,@1160)~
	EXIT

CHAIN dx#laerd 1155
	@1155 // Anything, which is quite frightening. But whoever, or whatever we find inside, their backs will be against the wall. You're a hardy folk, Godchild, and, well, I'm not so bad myself! We cannot let such an opportunity pass.
	END
	IF ~~ EXTERN dx#laerd 1150
	
	
//////////////////////////////////////////////////////////////////////////
// LAERAL SECOND MEETING - TWISTED RUNE ENCLAVE
//////////////////////////////////////////////////////////////////////////	

CHAIN IF ~NumTimesTalkedTo(0) Global("LaeralSpawned","GLOBAL",1) !AreaCheck("DX#002")~ THEN dx#laerd 2ndtime
	@900 // We meet again, <CHARNAME>.
	== dx#laerd @901 // While you were investigating on your own — and succeeding mightily at the task I might add — I have been monitoring the Twisted Rune and their associates.
	== dx#laerd @902 // It would seem that their contact in the Cowled Wizards is an elf wizard who goes by the name 'Zallanora'. Does that name sound familar to you? You've spent far more time in Athkatla than I have.
	END
	+ ~Global("ZallaFlee","GLOBAL",1)~ + @905 EXTERN dx#laerd 920 // That would be one of their leaders. I've already met and confronted her, but sadly, she fled the scene. She didn't leave any clues behind.
	+ ~Global("ZallaIntro","GLOBAL",1) GlobalLT("ZallaFlee","GLOBAL",1)~ + @906 EXTERN dx#laerd 940 // The name doesn't ring a bell. But I might have met her once, in the Graveyard District of Athkatla. A rude elf wizard who knew a lot about me. I will have to find some way to confront her.
	++ @904 EXTERN dx#laerd 960  // Might have met her, not sure. I've might quite a few Cowled Wizards. Very few of them were friendly. Maybe this needs a more aggressive approach.
	++ @907 EXTERN dx#laerd 960  // I don't think I've met her in the past. But the Cowled Wizards have representatives in Athkatla, I think I might be able to track her down.
	+ ~Global("ZallaFlee","GLOBAL",1) Global("BribedCowled","GLOBAL",1) AreaCheck("dx#001")~ + @908 EXTERN dx#laerd 910 // I... already knew that. I literally just faced her. Sadly, she fled the scene, and didn't leave any clues behind.

CHAIN dx#laerd 910
	@910 // So that means all of your enemies know about your involvement in their setbacks.
	END
	IF ~~ EXTERN dx#laerd 926 

CHAIN dx#laerd 920
	@920 // So she knows who you are? Then it's just a matter of time before your enemies piece together that you are the one responsible for all of their setbacks.
	END
	++ @923 EXTERN dx#laerd 925 // So what's the plan now? I'm running awfully short on leads in this case right now.

CHAIN dx#laerd 925
	@925 // I'm afraid I can't give you an easy answer here. But know this: The Twisted Rune are a cabal of liches. I know that much. And liches are very patient. You learn that from living for centuries, and I speak from experience on that.
	END
	IF ~~ EXTERN dx#laerd 926

CHAIN dx#laerd 926
	@926 // After slaying their senior members, you should expect retribution. I don't know when, I don't know how, but when they strike, and they will... they will do so with the utmost certainty that they can bring you down.
	== dx#laerd @927 // I know it's not of much help but it took me years of work to track them, and now it really seems I've hit a wall. And this Zallanora gal only further adds to the mystery.
	== dx#laerd @928 // What I've learned in my long lifetime is that wizards as proficient as she is usually have a reputation preceding them. Or a teacher of renown, and years of studies. Or the blessings of a god. In her case? Nothing significant.
	== dx#laerd @929 // I've never stumbled upon a complete unknown as powerful and influential as she seems to be. And yet, in elven years, she's barely of adult age. There is absolutely more to the story here, Godchild. Anything is possible.
	== dx#laerd @930 // I'll let you know if I find anything. Please stay safe, <CHARNAME>.
	DO ~SetGlobal("LaeralSpawned","GLOBAL",2)
		SpellNoDec(Myself,DRYAD_TELEPORT)
		Wait(2)
		AddJournalEntry(@107,QUEST)~
	EXIT

CHAIN dx#laerd 940
	@940 // Really? That sounds surprising. I've done inquiries around, and investigated on her somewhat. And the results are troubling, to say the least.
	END
	IF ~~ EXTERN dx#laerd 945

CHAIN dx#laerd 945
	@945 // What I've learned in my long lifetime is that wizards as proficient as she is usually have a reputation preceding them. Or a teacher of renown, and years of studies. Or the blessings of a god. In her case? Nothing significant.
	== dx#laerd @946 // I've never stumbled upon a complete unknown as powerful and influential as she seems to be. And yet, in Elven years, she's barely of adult age. There is absolutely more to the story here, Godchild.
	== dx#laerd @947 // I'll let you know if I find anything. Please be on your guard if you do confront her, <CHARNAME>. Anything is possible.
	DO ~SetGlobal("LaeralSpawned","GLOBAL",2)
		SpellNoDec(Myself,DRYAD_TELEPORT)
		Wait(2)
		AddJournalEntry(@107,QUEST)~
	EXIT

CHAIN dx#laerd 960
	@960 // I know you can, but consider threading carefully here. This Zallanora gal only further adds to the mystery.
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
	@700 // What in the name of the Goddess happened here? One minute, a meeting was taking place — which I was spying on, mind you — and yet, in the following minute, such was the magical energy unleashed here that I felt it through my spell!)
	== dx#laerd @701  // Tell me, who are you? You don't look like a Twisted Rune agent.
	END
	++ @706 EXTERN dx#laerd 730 // My name is <CHARNAME>. I got involved in this Twisted Rune mess and... I'm still not sure how exactly.
	++ @705 EXTERN dx#laerd 770 // How do you know I'm not a Twisted Rune agent?
	++ @704 EXTERN dx#laerd 730 // I'm <CHARNAME>. I stumbled upon this place, their enclave, and dealt with them my way.
	++ @707 EXTERN dx#laerd 711 // You first.

CHAIN dx#laerd 709
	@709 // Yes. I thought the silver hair would give it away, but I guess it doesn't ring a bell to you.
	END
	IF ~~ EXTERN dx#laerd 711

CHAIN dx#laerd 710
	@710 // Fair enough.
	END
	IF ~~ EXTERN dx#laerd 711

CHAIN dx#laerd 711
	@711 // My name is Laeral Silverhand.
	DO ~SetName(@1005)~ // PC knows her name now
	== dx#laerd @715 // I have been investigating the Twisted Rune as I think a series of strange and seemingly unconnected events that have happened in the last, well, few centuries might just be connected after all... to them.
	END
	++ @712 EXTERN dx#laerd 720 // Wait, Laeral? THE Laeral Silverhand? From Waterdeep?
	++ @713 EXTERN dx#laerd 725 // Centuries? Just how deep does this rabbit hole go?
	++ @714 EXTERN dx#laerd part2 // I see. So they've managed to piss even you off, huh?

CHAIN dx#laerd 719
	@719 // Yes, I am. My name is Laeral Silverhand..
	DO ~SetName(@1005)~ // PC knows her name now
	== dx#laerd @715 // I have been investigating the Twisted Rune as I think a series of strange and seemingly unconnected events that have happened in the last, well, few centuries might just be connected after all... to them.
	END
	++ @722 EXTERN dx#laerd part2 // The silver hair kinda gives it away. How come one of the Seven Sisters got involved with the Twisted Rune? Have they ever acted against you?
	++ @713 EXTERN dx#laerd 725  // Centuries? Just how deep does this rabbit hole go?
	++ @714 EXTERN dx#laerd part2 // I see. So they've managed to piss even you off, huh?

CHAIN dx#laerd 720
	@720 // Yes, that would be me.
	END
	++ @721 EXTERN dx#laerd part2 // Of course, now that you mention it, the silver hair kinda gives it away. How come one of the Seven Sisters got involved with the Twisted Rune? Have they ever acted against you?

CHAIN dx#laerd 725
	@725 // I'm not sure. It's what I wanted to find out.
	END
	IF ~~ EXTERN dx#laerd part2

CHAIN dx#laerd 730 
	@730 //  Oh, I remember now. <CHARNAME>... The bhaalspawn. Elminster talked a lot about you. He has a lot of faith in you.
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

CHAIN dx#laerd 770
	@770 // // The goddess Mystra is my guide. And she is telling me the influence of the Rune is not to be found within you. But I also sense some form of divine contact about you, so I have to ask again: who are you?
	END
	++ @703 EXTERN dx#laerd 730 // Alright. I'm <CHARNAME>. I stumbled upon this place, their enclave, and dealt with them my way.
	++ @706 EXTERN dx#laerd 730 // My name is <CHARNAME>. I got involved in this Twisted Rune mess and... I'm still not sure how exactly.
	++ @702 EXTERN dx#laerd 711 // The Goddess Mystra? Wait, are you who I think you are?


//////////////////////////////////////////////////////////////////////////
// LAERAL FIRST MEETING - PART 2
//////////////////////////////////////////////////////////////////////////


CHAIN dx#laerd part2
	@802 // I have been watching their every move for a while now. Although I missed a part of it, this meeting going on confirmed what I feared: that the Twisted Rune are active, and expanding.
	== dx#laerd @803 // Then you appeared and just blasted them off to dust. While I can't approve of your methods, I suppose their deaths can hardly be seen as a negative in the long run.
	END
	++ @811 EXTERN dx#laerd 840 // Well, I'm afraid there's more to the story. Apparently they have a contact in the Cowled Wizards who is working with them. This is looking like quite the conspiracy.

CHAIN dx#laerd 820
	@820 // The Cowled Wizards? Hmm, this is far from ideal.
	== dx#laerd @821 // And from what I overheard, they seem to have plans for Baldur's gate too.
	== dx#laerd @822 // We can't let them act freely like this. I will look into their dealings in Baldur's Gate as it's closer to my position.
	== dx#laerd @823 // In the meantime, I suggest you continue with your investigation in the region. The Rune took a big hit when you stormed their place. No doubt they'll act in response. Do be careful.
	END
	++ @827 EXTERN dx#laerd 840 // Yes, madam. Will do.
	++ @828 EXTERN dx#laerd 830 // Any ideas where I could look?
	
CHAIN dx#laerd 830
	@830 // I'm afraid you know more about Athkatla and the surrounding region than I do. They access these enclaves by using a special gem called a 'Rogue Stone', so having one with you at all times would be a good start. Besides that, they are a secretive organization, so their access point could be anywhere.
	END
	IF ~~ EXTERN dx#laerd 855
	
CHAIN dx#laerd 840
	@840 // They access these enclaves by using a special gem called a 'Rogue Stone', so having one with you at all times would be a good start. Besides that, they are a secretive organization, so their access point could be anywhere.
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

// Dialog without Laeral being present goes here

// ... nothing yet

// Dialog with Laeral being present begins here

CHAIN IF ~NumTimesTalkedTo(0)~ THEN dx#shd 340
	@340 /*So you even found your way here. In my sanctum. To think I would endure against all odds for hundreds of years only to end up in this state. The gods are not without a sense of irony.*/
	DO ~SetGlobal("MetShoon","GLOBAL",1) Explore()~
	== dx#laerd @341 // So you ARE hundreds of years old as I suspected!
	== dx#shd @342 // I see you've found powerful friends to assist you, Bhaalspawn. You are not without surprises of your own.
	== dx#demid @343 // I loooOOoOooOove to sing.... SING!!!
	== dx#shd @344 // Sadly, this is where your quest for revenge and meaning ends. I am but a harmless, although quite indestructible, spirit now.
	END 
	++ @345 EXTERN dx#shd 350 // What is this place? What the hell happened here?

CHAIN dx#shd 350
	@350 // My name is Shoon, seventh of the name. The howling skull there is the real Zallanora. Well, a reflection of her. Perhaps there are still some alive today who would remember my name, and they'd shudder in terror should they hear it.
	== dx#laerd @351 // Shoon... VII? The mad emperor? This can't be true, Shoon the Seventh has been dead for centuries.
	== dx#shd @352 // Ah, so you have heard stories of my deeds! I was once a great emperor indeed, betrayed. Or so everyone thinks. I faked my own death and researched into lichdom, and eventually succeeded in my endeavor.
	== dx#laerd @353 // Then what of the elf? What does she have to do with all this?
	== dx#shd @354 // The reason why I have been laying dormant for centuries is also the reason why you can't harm me, or her in fact.
	== dx#shd @355 // Zallanora and her friends stumbled upon my domain on a fateful day. I had planned on consuming their souls to escape a... predicament I had gotten myself into. I was trapped inside the Tome of the Unicorn, a result of my delving into ancient arcane powers. A grave mistake.
	== dx#shd @356 // I slaughtered them all where they stood, drank their souls, anticipating my salvation, but just at that moment, the Times of Troubles struck. Zallanora was still alive, somehow. The only one alive... and we exchanged bodies.
	== dx#shd @357 // Thus, began our curses. Hers, to be trapped within the Book, in my now-rotten form. Mine, to forever inhabit the frail body of a young elvish woman.
	END
	++ @365 EXTERN dx#shd 370 // Right, it must have been so, so terrible to be stuck in a young elven body.

CHAIN dx#shd 370
	@370 // It took me ten years to be able to properly control it. To shape magical energy with the same proficiency I was used to. And I was incredibly proficient, as you may have noticed from our battles.
	== dx#shd @371 // With a new body came new vigor. And ambition. I resumed my plans from centuries ago... to control all of the Sword Coast, in the shadows.
	== dx#shd @372 // It turns out not much had changed with the world during my centuries of absence. Suitors would rush from all over to "teach" a young and overly eager female apprentice such as myself. Gaining influence among them was a laughingly easy task.
	== dx#shd @373 // They were lining up. A new experience for me, as you surely suspect. Without long, I was climbing in the ranks without it looking out of place. I nearly had both the Cowled Wizards and Twisted Rune under my control, until you came along.
	== dx#laerd @374 // You are disgusting, every bit as vile as the legends told. Why are you telling us this? What do you stand to gain?
	== dx#shd @380 // Frankly, it is quite liberating to collapse the layers of lies and utter the truth... for once. Besides young Zallanora here who can't comprehend a word I tell her, you are the only beings in the realms who know of my story. I enjoyed that.
	== dx#shd @381 // But more than that, none of this matters to me now. You cannot kill my spirit any more than you can save her. I am cursed to remain in this state until the Tome's magic finally becomes weak enough for me to overpower it. Or an event like the Times of Troubles happens again and wipes out the tome's power.
	== dx#shd @382 // It could be centuries from now. Or millenia... I will then resume my project, carefully crafted from a near-eternity of planning. And neither of you will be able to stop it, for you will both be long dead by now. Yes, I will outlast even you, Laeral. I have outlived you and all of your sisters thus far.
	END
	++ @385 EXTERN dx#shd 420 // What if I just killed you, right here, right now?
	++ @386 EXTERN dx#shd 430 // Well then, good riddance if you ask me. I don't care what you do a thousand years from now to be honest.     

CHAIN dx#shd 420
	@420 // I welcome you to try. I have tried myself. Hired adventurers to try. We are both impervious to all harm, a side effect, I suppose, of this predicament we are into through the Tome. Its binding curse also serves as a protective cocoon.
	== dx#shd @421 // The Tome's power is absolute, and cannot be reversed. Believe me, everyone who knows about the Tome know this.
	END
	++ @423 EXTERN dx#shd 426  // Then why was I able to kill you?

CHAIN dx#shd 426
	@426  // When we exchanged bodies, I was the one trapped into the book, while Zallanora was free. Thus, I became free, and she, trapped in the book. But our spirits are connected due to the Times of Troubles' meddling, none of us can leave the world of the living without the other. And as she is trapped in the book... I cannot leave, even now that my physical form is dead. And I can't form a new one.
	END
	IF ~~ EXTERN dx#shd 427

CHAIN dx#shd 427
	@427 // Now I have a millenia to think, and ponder over my strategy when this curse eventually ends. I would say it's a great opportunity. I bid you farewell, Godchild, and good luck in your quest for personal significance. Your matters are no longer relevant to me.
	== dx#laerd @435 // Not so fast, your highness. You seem to have overlooked one detail in what looks like quite the impervious plan.
	== dx#laerd @440 // For all your cunning, there is something you haven't envisioned: I am a Chosen of Mystra, the goddess of magic herself, and among all her Chosen... I am the most proficient with magical items and artifacts.
	== dx#laerd @441 // This Tome of the Unicorn, I know of it, and I can feel its presence. It's right here, in your sarcophagus.
	== dx#laerd @442 // It is an object of gigantic power, its magic absolutely can't be reversed. But the Tome in itself, not its magic, is not impervious to harm. You said it yourself — your plan is to overpower it eventually.
	== dx#laerd @443 // As are all such artifacts, this Tome's magical power is imbued from the Weave, and I wield the Silver Fire of Mystra. If she lends me her will, I could perhaps destroy the tome, and thus, reverse its magic by virtue of it being destroyed.
	END
	IF ~~ EXTERN dx#shd 450

CHAIN dx#shd 430
	@430 // As you should. You still have a lifetime in front of you, a lifetime which doesn't involve me. Why should you care?
	END
	++ @385 EXTERN dx#shd 420 // What if I just killed you, right here, right now?

CHAIN dx#shd 450
	@450 // What madness is this? You would destroy an object of such inestimable value? What do you stand to gain from this?
	== dx#laerd @451 // Nothing tangible. I actually stand to lose on this. But I think the world will be better off without you. Permanently, this time.
	== dx#shd @452 // Impossible! You will not, you don't have the power to—
	== dx#laerd @453 // Oh but I think I do. And you said so yourself: you are quite harmless now, and thus... cannot stop us.
	== dx#shd @455 // <CHARNAME>, I have powerful treasures, ancient artifacts, which only I know the locations of. You have grown powerful now, perhaps even more than her. Assist me now and I shall make you richer and more powerful than you have ever imagined.
	END
	++ @460 EXTERN dx#shd 470 // Right. And turn on one of the Seven Sisters? No thanks.
	++ @461 EXTERN dx#shd 470 // Uh, let think here. Who should I help, a lovely person who's legendary for being a fair and just ruler this past few centuries, and who's helped me thus far, or a tyrannical maniac who's tried to kill me twice?
	++ @462 EXTERN dx#shd 470 // I will not believe the lies of a cornered rat who, by his own volition, has lied, cheated, and murdered for centuries. If there's a way to destroy you, I'm all for it.
	++ @463 EXTERN dx#shd pleaseno // Wait, what kinds of riches are we talking about?

CHAIN dx#shd pleaseno
	@480 // I know the locations of the Living Gem, as well as a wish-granting blade, and—
	== dx#laerd @481 // <CHARNAME>, Shoon VII is one of the most vile rulers to have ever lived in the Realms. Evil incarnate. Surely you would not believe his lies? He has no intention of going through with his promises, and you know it.
	END
	++ @485 EXTERN dx#shd 470 // I was just toying with him. He's all yours.
	++ @486 EXTERN dx#shd 490 // To the contrary, I want what he's offering me. I will not let you destroy him.

CHAIN dx#shd 470
	@470 // Insolent wenches! Of course, Mystra's pupil... Why didn't I think of this?! I should have enslaved one of your sisters, Laeral, and forced her to free me! You would have regretted the day you were born, all of you! Her screams would have travelled through the Weave, to you, every day.
	== dx#shd @471 // I promise you one thing, the both of you: Should I make it through this, an eternity of torment is what awaits you, and nothing else.
	== dx#laerd @472 // Stand aside, <CHARNAME>. I shall begin the communion with the Goddess.
	== dx#laerd @473 // And for the record, your highness, none of my sisters can do this. But I'm quite relieved that those are but empty threats, because I know they wouldn't be, should you be walking the Realms.
	DO ~StartCutSceneMode()
		StartCutScene("dx#cut04")~
	EXIT
	
CHAIN dx#shd 490
	@490  // Yes, spoken like a true child of murder! Kill her, then I will deliver on my promises.
	END
	++ @491 EXTERN dx#shd 492 // You misunderstand. I want them now.
	
CHAIN dx#shd 492  // End of Evil path
	@492  // How dare you make such daring demands?! 
	== dx#laerd @487 // By the Goddess... You're being serious.
	== dx#shd @493 // ...
	== dx#shd @494 // ... Fine. You leave me little choice. The riches I spoke of, they are yours.
	== dx#laerd @496 // Well then, this was all for nothing. Meager riches for you and nothing else. Your greed sickens me, but I know better than to face you in combat. The Goddess wouldn't have it, she's had enough of inter-deity turmoil. 
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
		SetGlobal("DxEviLEnding","GLOBAL",1)
		ActionOverride("dx#laera",SpellNoDec(Myself,DRYAD_TELEPORT))~ 
	EXIT
	


APPEND dx#shd

IF ~Global("LaeralSpawned","GLOBAL",10) Global("MetShoon","GLOBAL",1)~ greetevil 
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
	== dx#laerd @509 // That was...
	END
	++ @511 EXTERN dx#rzall 510 // What happened? How is she alive and Shoon dead?

CHAIN dx#rzall 510
	@510 // (Zallanora faints from shock and exhaustion)
	== dx#laerd @512 // I'm as shocked as you are, they should actually... both be dead, which I feared was going to happen. But there is some logic to it. After they switched bodies, Shoon died fighting you, while Zallanora, the true Zallanora trapped in Shoon's body, didn't.
	END dx#laerd 513

	APPEND dx#laerd

	IF ~~ 513
	SAY @513 // So the only one who actually survived after the switch... is her. Perhaps that is why, when the switch was undone, she was spared? In an ironic twist of fate for Shoon, dying in Zallanora's body actually saved her soul.
	++ @514 + 520 // She's not safe yet, at least not in these crypts.
	END

	IF ~~ 520
	SAY @520 // Indeed. I guess I could take her with me. After all, your hectic adventuring life is the opposite of what she needs right now. All her family and friends are long gone. Poor thing.
	= @521 // I have good ties with the Elves of Silverymoon, where she hails from. And I'm well established in Waterdeep. She'll be safe with me..
	++ @525 + 625default // (Say nothing).
	++ @526 + 625default // That... makes a lot of sense.
	+ ~PartyGoldGT(2000)~ + @527 + 530 // Wait. Here's 2000 gold pieces. To help restart her life.
	END
	
	IF ~~ 530
	SAY @530 // That's very generous of you, <CHARNAME>. I will be sure to let her know, along with many others in Waterdeep in fact, of your deeds. You truly live up to your reputation.
	++ @535 + 625gold // It's the least I could do.
	++ @536 + 625gold // In a way, I have... sort of murdered her? Even if it wasn't really her? It was still her body. Regardless, I just felt I had to.
	END
	
	IF ~~ 625default
	SAY @625 // So, this is where we part ways, <CHARNAME>. Today, the world breathes a huge sigh of relief. Nobody knows about it, but we avoided a possible catastrophe down the line.
	= @626 // Before I leave, I should tell you that I sensed another powerful magical aura emanating from the sarcophagus. No doubt in my mind that a powerful artifact rests in there. I think you should take it. I've had my fill of powerful artifacts for today.
	= @627 // The next time I see Elminster, I will be sure to recount our exploits! He once said that should Shoon VII be alive today, there would be no peace in our time. And now that I've met him, I would agree.
	= @630 // I suppose you'll be returning to Athkatla? This is goodbye then. Thank you for your assistance in this matter, and may we meet again under better circumstances.
	IF ~~ DO ~EraseJournalEntry(@120) 
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
			  SpellNoDec(Myself,DRYAD_TELEPORT)		~ EXIT
	END
	
	IF ~~ 625gold
	SAY @625 // So, this is where we part ways, <CHARNAME>. Today, the world breathes a huge sigh of relief. Nobody knows about it, but we avoided a possible catastrophe down the line.
	= @626 // Before I leave, I should tell you that I sensed another powerful magical aura emanating from the sarcophagus. No doubt in my mind that a powerful artifact rests in there. I think you should take it. I've had my fill of powerful artifacts for today.
	= @627 // The next time I see Elminster, I will be sure to recount our exploits! He once said that should Shoon VII be alive today, there would be no peace in our time. And now that I've met him, I would agree.
	= @630 // I suppose you'll be returning to Athkatla? This is goodbye then. Thank you for your assistance in this matter, and may we meet again under better circumstances.
	IF ~~ DO ~EraseJournalEntry(@120) 
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
			  SpellNoDec(Myself,DRYAD_TELEPORT)   ~ EXIT
	END
	
	END // This is the end of an APPEND


// Zallanora the Demilich DIALOG

BEGIN dx#demid

IF ~True()~ sing
	SAY @343	//@343 = ~I loooOOoOooOove to sing.... SING!!!~
	IF ~~ EXIT
END
