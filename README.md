![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/gibberlings3/CowledMenace?include_prereleases)
![Platform](https://img.shields.io/static/v1?label=platform&message=windows%20%7C%20macos%20%7C%20linux&color=informational)
![License](https://img.shields.io/static/v1?label=license&message=CC-BY-NC-4.0&color=green)

# The Cowled Menace - A Quest Expansion Mod

**[A Gibberlings Three Mod](http://www.gibberlings3.net/)**

Someone has been working in the shadows, manipulating events on the Sword Coast to their advantage.

Unravel the mysteries of the Twisted Rune and progress beyond fighting the last wave of Cowled Wizards in Athkatla in this mod for Baldur's Gate II

![Banner](https://media.invisioncic.com/u284679/monthly_2026_05/bece916831d509c3facaade143a7ae67.jpg.2cbc7751fd871af4b3df079fd5da3b01.jpg)

## Content Index

- [Starting the Quest](#starting-the-quest)
- [Compatibility](#compatibility)
- [Installation](#installation)
- [Components](#components)
- [Spoilers Section](#spoilers-section)
- [Thanks and Acknowledgements](#thanks-and-acknowledgements)
- [Tools Used in Creation](#tools-used-in-creation)
- [Copyright and Legal Information](#copyright-and-legal-information)
- [Version History](#version-history)

## Starting the Quest

**Hooks**

Starting the Tanner quest in the Bridge district of Athkatla usually marks the first time you encounter the Twisted Rune and get involved in their business, even in the vanilla game. Following clues you receive from those engagements, as well as exploring around the Bridge and Temple Districts should help you progress. Do not hesitate to get out of Athkatla if a clue leads there. Even a vanilla letter you thought was useless might not be useless anymore.

Some of the encounters in this mod happen in different fashion depending on the order in which you progress through the quest, and the actors you have encountered (and in which order). It's quite modular. The encounter in the new Enclave in particular varies greatly in difficulty depending on choices you've made in the game, outside of this quest. Another encounter depends on your difficulty slider. I have restored unused lines by Shangalar in the vanilla game too, which I was quite surprised to find. A word of warning: the Twisted Rune are a powerful and ancient organisation... come prepared.

In any case, don't forget to mess with and investigate the Cowled Wizards too, as this mod's name implies.

## Compatibility

Cowled Menace should be compatible with mostly everything, especially since in v2.0.0 I've changed the way the mod works. Very, very few vanilla assets are used or altered, and if they are, they were altered using maximum compatibility editing practices, as unobtrusive as possible.

Please note that Cowled Menace makes use of the vanilla NPC named "Zallanora" (MAGE18Z) a lot, therefore if another mod wishes to use her extensively, there might be a conflict. I have tried to account for it as much as possible (looking at you Unofficial Item Pack - more on that below), but I can't account for everything. If you are a mod author who made a mod using her or are planning to, please contact me so we can work something out. 

In general, Cowled Menace should be installed after NPC mods and EET's main component (if using EET), but before Tweaks mods, EET_end, and SCS. 

One exception: Cowled Menace must be installed **after** Unofficial Item Pack because it replaces the 'MAGE18Z' resource entirely which breaks my mod. 

### SCS

Cowled Menace is compatible with Sword Coast Stratagems (SCS) in the sense that SCS doesn't break things (I have tested it numerous times), but I am not sure if the fights are too easy or too hard with it installed.

If you want select Cowled Menace spellcasters to use HLA's and hurl planetars at you with SCS (I recommend it since they are indeed worthy of them lore-wise), I made a tweak for it located [here - Dax Tweaks](https://github.com/Maltodaxtrin/Dax-Tweaks#components). (Insane difficulty only and above). It's in a tweaks mod instead of Cowled Menace because it has to be installed after SCS (Cowled Menace is installed way before SCS: after NPC mods)

## Installation

**Windows** </br> Cowled Menace is packaged and installed with WeiDU and is distributed as a self-extracting archive. To install, simply double-click the archive and follow the instructions on screen.

Alternatively the files can be extracted from the archive using WinRAR. If properly extracted, you should have a "**cowledmenace**" folder and **setup-cowledmenace.exe** in your BG2 folder. To install, double-click **setup-cowledmenace.exe** and follow the instructions on screen.

Please run **setup-cowledmenace.exe** in your BG2 folder to reinstall, uninstall, or otherwise change components.

Cowled Menace is currently available in English, French, and Simplified Chinese (latest version), as well as Polish (v2.0.3)

## Components

**Main Component - The Cowled Menace**

This is where everything major about the mod is installed, from custom NPCs to new areas, new scripts, dialogs, and items. Refer to the Starting the Quest Section above if you want to know more about that. For those of you who are stuck or wish to get spoiled, there is a spoilers section as well.

The quest aims to tie up some loose ends concerning the Cowled Wizards and bring closure to the unfinished Twisted Rune content in the Vanilla game by adding lots of it, and a conclusion.

Note: This component also increases the XP provided by Cowled Wizards very much in the same way the "Appropriate XP Rewards for Cowled Enforcers" component from "klatu tweaks and Fixes" does it, as this mod deals with Cowled Wizards quite a bit. So it's unnecessary to install it separately as they do largely the same thing. For those who are unaware why this is needed, most Cowled Wizards in the base game give 120 xp when killed, which makes no sense as they are level 14+ spellcasters. This fix increases their xp reward to 6000. Very compatibility-friendly as it doesn't do anything else to those files except change the XP value. 

The other components below aren't technically required, but I recommend installing them anyway.

*(Optional)* **Difficulty add-on - The mod's antagonist can summon a Dark Planetar** (requires Main Component)

With this component active, the mod's villain will summon a Dark Planetar when they feel the time is right (not necessarily right away). Without this component, an undisclosed level 9 spell is cast instead. 

**Note for SCS**: this component doesn't actually do anything if you plan on installing SCS down the line, as SCS fully replaces the AI. To still have the mages of this mod hurl planetars at you with SCS, check out [my Tweaks mod](https://github.com/Maltodaxtrin/Dax-Tweaks) and install it after SCS.

*(Optional)* **Appropriate Rewards for High-Level Spellcasters (recommended)**

A level 14+ wizard awarding 120 xp and running around with a nonmagical quarterstaff and 28 gold pieces makes no sense at all, especially if they teleported in expecting a fight since they would come prepared. This component aims to increase the items worn and dropped by high-level spellcasters in Baldur's Gate 2, specifically targeting the ones who currently drop nothing, or close to nothing. The challenge level of these fights might increase as worn items will provide these spellcasters with various bonuses, but the rewards will be greater to compensate (better loot). The goal is that those encounters make sense.

This component aims to give items to individual, distinct creatures, not those created by extraordinary circumstances (like clones). Killing the same enemy twice (Jon Irenicus, for example) will not yield double the rewards. Exception: Lich in the "Spawn Undead" script, as it's implied it's a separate lich each time, that was simply chilling there when you arrive.

Compatibility: The items added to the creatures are either vanilla items, or vanilla items modified by Item Revisions or SCS down the line so it will still work whether on a vanilla install or with those mods installed. This mod alters random treasure tables, but only by adding to them dynamically. It is compatible with the Tweaks Anthology, SCS, and Item Randomiser components that do the same thing (tested). I merely add items to those affected NPC's, very compatibility-friendly.

**Full list of affected spellcasters**: 
```
COWENF1 - Male Mid-level Cowled Enforcer
COWENF2 - Male High-level Cowled Enforcer
COWENF3 - Female Mid-level Cowled Enforcer
COWENF4 - Female Mid-level Cowled Enforcer
MAGE18A - Female High-level Cowled Enforcer (Last wave)
MAGE16C - Female High-level Cowled Enforcer (Last wave)
MAGE18Z - Zallanora (Cowled Enforcer Boss, Last wave) - Different items if Cowled Menace is installed or not.
HLLAYEN - Layene (Twisted Rune)
HLSHANG - Shangalar (Twisted Rune)
HLSION - Sion (Guarded Compound)
FIRMAG01 - Conster (Firkraag Dungeon)
OBSHAL05 - Kayardi (Planar Sphere)
OBSHAL07 - Mogadish (Planar Sphere) (Cleric)
OBSHAL03 - Necre (Planar Sphere)
OBSHAL06 - Tabeila (Planar Sphere)
TOLMAG02 - Mage (Planar Sphere Ice and Fire Room)
TOLGER2 - Tolgerias
PPCOWLED - Perth the Adept (Brynnlaw)
HLLICH - Elemental Lich
HLSHADE - Shade Lich
GRVLCH01 - Crooked Crane Lich (City Gates)
UDTRAP04 - Alchra Diagott (Underdark Trap)
JARLICH - Deirex the Lich
LICH01 - Generic Lich from "Spawn Undead" script
AMLICH01 - Vongoethe (Amkethran - ToB)
DX#ZALLA - Zallanora (Another Zallanora for Cowled Menace - only if Cowled Menace main component is installed) Why another? Play through the mod and find out!
DX#RUNEW - Twisted Rune Mage (only if Cowled Menace main component is installed)
DX#DALID - Twisted Rune - Dalina (only if Cowled Menace main component is installed)
DX#LICH1 - Twisted Rune - Kartak Spellseer (only if Cowled Menace main component is installed)
DX#LICHJ - Twisted Rune - Jymahna (only if Cowled Menace main component is installed)
DX#LICHT - Twisted Rune Lich (only if Cowled Menace main component is installed)
DX#GRVMU - Ancient Mummy (Cleric) (only if DaxTweaks component adding this new enemy to the game is installed or will be installed down the line)
```

A huge majority of the added items assigned to them are pulled from random loot tables. All but Vongoethe are spellcasters in Shadows of Amn, as Throne of Bhaal already gives them at least a little something, so I deemed editing their drops to be unnecessary. Ascension goes a lot further for those who have it installed. 

Special Thanks to Roxanne on Gibberlings3 for some pointers on this one.

Note: This component also increases the XP provided by Cowled Wizards very much in the same way the main component above does, in case you don't want the core mod. Refer to the section just above for more info.

## Spoilers Section

[Detailed spoilers section](SPOILERS-SECTION.md) (read if you're stuck)

## Thanks and Acknowledgements 

Special Thanks to Mike1072, demivrgvs, Roxanne, kreso, DavidW, CamDawg, Nythrun & Miloch (area patching) and every helpful fellow on gibberlings3 forums!

Portrait of Laeral Silverhand by Wizards of the Coast LLC.

Huge thanks to [klatu](http://www.shsforums.net/files/file/1109-klatu-tweaks-and-fixes/), I based many of my code on his tweaks and learned a lot of coding from his mods. Because the Cowled Wizards are heavily implicated in my mod, the main component installs a modified version of his "Appropriate XP Rewards for Cowled Enforcers" tweak. Many thanks also to the creators of the Infinity Engine Structure Description Project; and to Jon Hauglid, for Near Infinity.

And of course, thanks to k4thos for making the [Enhanced Edition Trilogy](https://www.gibberlings3.net/forums/forum/195-enhanced-edition-trilogy/).

### Tools Used in Creation

- [WeiDU](https://weidu.org/) by Wes Weimer and the bigg
- [DLTCEP](https://www.gibberlings3.net/files/file/900-dltcep/) by Avenger
- [Near Infinity](https://folk.idi.ntnu.no/joh/ni/) by Jon Olav Hauglid and devSin
- [IESDP](https://gibberlings3.github.io/iesdp/) maintained by igi

## Copyright and Legal Information

Cowled Menace is copyright © 2026 Maltodaxtrin/Daxtreme

You are allowed to submit [maintenance updates](MAINTENANCE-NOTICE.md) for this mod. This mod is additionally licensed under [CC-BY-NC-4.0](https://creativecommons.org/licenses/by-nc/4.0/).

This Modification is unofficial Fan Content permitted under the Fan Content Policy. Not approved/endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. ©Wizards of the Coast LLC. This mod is also not developed, supported, or endorsed by BioWare, Black Isle Studios, Interplay Entertainment Corp., Overhaul Games or Beamdog. All other trademarks and copyrights are property of their respective owners.

## Version History

2.1.0 -- Major Update (Needs translation update)

- **Added around 150 lines of possible interjections for vanilla NPC's throughout the quest**. Every companion has at least 1 line (including Wilson!), although Korgan, Edwin, and Jaheira are the most represented.
- Reworked some of the dialogue at the same time, added new options and replies.
- Restored the original extended ending dialogue. Not sure why I cut it in the first place. ¯\\\_(ツ)_/¯
- The real Zallanora now has a simulacrum in the last wave of the Cowled Wizards in the form of the vanilla CRE file, re-purposed. This was added for better compatibility with other mods since the changes in v2.0.0, and also because it's cool as hell (thanks to jastey for the idea). The fight will now be harder as a result. The same is true for the Umar Hills Twisted Rune enclave when certain conditions are met.
- Further improved the rewards of the new Twisted Rune Enclave (added a powerful new helmet for divine spellcasters).
- Buffed the items received in the final encounter. 
- Encounters in general begin faster, to give you less time to cheese them. And they're harder. The final encounter is now instantaneous so it's harder to cheese. It is still possible. It is always possible to cheese in this game. But at least now you can't kill one actor before all others join in (thanks to rubyFeedback).
- Fixed some continuity errors.
- Minor script fixes.
- Minor bug fixes.
- Fixed various typos, thanks to visionok.
- Cleaned the code.
- Some minor modifications to the 2nd component, "Appropriate Items for High-Level Spellcasters". One spellcaster from ToB has been added to the list. The readme has been updated with a list of all affected spellcasters in the game. Additionally, the appropriate XP rewards for Cowled Wizard fix from the main component has also been added to that optional component, which has been renamed to "Appropriate Rewards for High-Level Spellcasters" since it now includes xp as well (cowled wizards only). That's in case you want only that upgrade and not the full Cowled Menace mod.
- Transferred the last 2 optional components over to my Tweaks mod. They were a bit random and there was no link between Cowled Menace and these components, and they are best used in a separate tweaks mod encompassing all my optional tweaks to the game. Suffice to say, I invite you to check out [my Tweaks mod](https://github.com/Maltodaxtrin/Dax-Tweaks) as they could be of interest to you.

2.0.3 -- Small fixes

- Fixed a bug where the mod's villain would appear again even after getting killed under a specific, uncommon set of circumstances (thanks to rubyFeedback).
- You are now required to clear all Twisted Rune enclaves before being able to reach the quest's conclusion, for continuity purposes.
- Fixed a minor missing visual effect in the final cutscene.
- Slightly extended the ambush timer making generic Rune ambushes a bit less frequent.
- Returning from the new enclave will return you back outside of the position going in (to prevent unwanted teleportation).
- Fixed typos.
- Updated the readme to include steps for SCS Insane players on how to add HLA's to this mod's spellcasters.

2.0.2 -- Small fix, translations

- Fixed a jarring dialogue jump in the ally's first meeting in the Enclave caused by a bad trigger
- Simplified Chinese translation updated to v2
- Polish translation updated to v2

2.0.1 -- Small Fix

- Fixed the optional component "Use pre-EE Spell Deflection Globe (EE only)". It's now working properly.

2.0.0 -- Major Update

- **Ported the mod to BG2EE** (specifically Shadows of Amn). I have tested it and it is still compatible with the Enhanced Edition Trilogy (during the SoA portion), but it doesn't require EET anymore. As such, the content that was in Amkethran previously is now found in late Shadows of Amn. Same for the content that was in BG1, which has been transferred to locations in SoA. Follow in-game clues/letters/journal entries to find them! And lastly, obviously, the ending of the quest no longer happens in the Pocket Plane, as that's exclusive to Throne of Bhaal. The entirety of the questline is self-contained in SoA now.
- All of the quest dialogue, journals, letters, scripts, locations, etc., have been adjusted to account for these changes.
- **Added many more Twisted Rune encounters** and better integration with vanilla questlines to try and build further upon the dropped threads for the Twisted Rune left by the original BG2 developers. Completing vanilla quests regarding the Rune will wake them up. You'll feel it more if you piss them off now. You might even regret it.
- Vastly upgraded the rewards of the evil ending (they were almost nonexistent, an oversight). 
- Major edits to the dialogue and scripts to add more lines, give players more choices, and improve the writing. Fixed broken triggers in some dialogue as well as missing lines, opening up more options.
- My mod is now finally compatible with mods such as Unofficial Item Pack due to a change in the way the mod operates. I no longer rely on MAGE18Z, which is a vanilla NPC, for anything, improving compatibility enormously. It is now highly, highly unlikely that another mod breaks mine, it would have to do some pretty crazy wide-ranging edits, like SCS does. SCS is unaffected by this change, however. Although it does edit my NPCs (and I want it to and properly arrange for it), SCS has never broken my mod, neither before, nor now, because my mod was made with SCS overwriting it after in mind.
- Fixed a dead-end scenario where you could no longer progress the quest if certain conditions were met (it was linked with paying Corneil for the spellcasting licence in Athkatla at the wrong time). Now you can (normally) never get stuck. Hopefully.
- I have tried to account for as many fringe scenarios as possible.
- It's not much but the difficulty slider now has a small impact on which spawns can happen at one point.
- Made small revisions so the mod is as lore-accurate as possible.
- Better reward in the new Enclave. 
- Cleaned up unused assets/scripts and fixed various minor bugs. 
- Added a French translation for 2.0.0. Removed Russian, schinese, polish, and italian translations while I wait for updates. Will update as/if they come in.

I consider this port to BG2EE to be the definitive version of the mod. Even if you are playing through the Enhanced Edition Trilogy, I would strongly recommend using this version instead. The content is better written, more streamlined and polished, there is more of it, and it has just superior implementation. The old EET version 1.0.4 was rough. The mod wasn't properly finished to be honest. It remains available for those who want to use it though, as it still works.

1.0.4 -- Translations (This is the last version that requires the Enhanced Edition Trilogy)

- Fixed typos in simplified Chinese translation (credits to Lewis Liu)
- Added Italian translation (threetimesdavey)
- Added polish translation (by my_summertime, SoM Membress, part of CoB Clan)

1.0.3 -- Translations

- Added Simplified Chinese translation (thanks to Lewis Liu)

1.0.2 -- Minor updates

- Fixed the player being stuck in the Pocket Plane at the end of the quest by automatically leaving the plane and going back to where you were. (if you want to go back to the Pocket Plane, feel free to do so) + added Russian translation for that part

1.0.1 -- Minor updates

- Added Russian translation (by Ulpian).
- Fixed Servant of Kartak's level that made it vulnerable to low-level Turn Undead.

1.0.0 -- First official release out of Beta

- Fixed Baldur's Gate Twisted Rune encounter not switching to enemy status in certain cheese situations where dialog couldn't happen. Fixed the same encounter not having any dialog in the beginning with SCS installed.
- Fixed a bug where you could endlessly repeat the last part of the quest to get massive amounts of experience when certain conditions were met.
- Evil players should have a proper (although still only partially satisfying) conclusion to the quest now.
- Improved Twisted Rune AI slightly compared to vanilla (they won't wait around in corner)
- Fixed a bug with the Twisted Rune ambush in the Guarded Compound not happening all the time. (If you have cleared the Twisted Rune enclave, they're still not gonna show though, that's intended)
- Fixed various weird behaviors with map region triggers.

0.2.1 BETA -- Adapted for G3 compatibility, added Linux and MacOs support.

0.2 BETA -- first official release.
