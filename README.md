![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/gibberlings3/CowledMenace?include_prereleases)
![Platform](https://img.shields.io/static/v1?label=platform&message=windows%20%7C%20macos%20%7C%20linux&color=informational)
![License](https://img.shields.io/static/v1?label=license&message=CC-BY-NC-4.0&color=green)

# The Cowled Menace

**[A Gibberlings Three Mod](http://www.gibberlings3.net/)**

Someone has been working in the shadows, manipulating events on the Sword Coast to their advantage.

Unravel the mysteries of the Twisted Rune and investigate the Cowled Wizards in this Enhanced Edition Trilogy mod!

## Content Index

- [Compatibility](#compatibility)
- [Installation](#installation)
- [Components](#components)
- [Starting the Quest](#starting-the-quest)
- [Spoilers Section](#spoilers-section)
- [Thanks and Acknowledgements](#thanks-and-acknowledgements)
- [Tools Used in Creation](#tools-used-in-creation)
- [Copyright and Legal Information](#copyright-and-legal-information)
- [Version History](#version-history)

## Compatibility
**IMPORTANT**: This mod requires the mod [Enhanced Edition Trilogy](https://www.gibberlings3.net/forums/forum/195-enhanced-edition-trilogy/) by k4thos to be installed, as its content spans from Baldur's Gate 1 to Throne of Bhaal.

The optional components only require BG2 to be installed.

Although I am in need of testers for this, Cowled Menace should work with Sword Coast Stratagems (SCS). Install SCS before this mod.

In general, this mod should be installed after NPC mods and EET, but before Tweaks and EET_end.

## Installation

**Windows** </br> Cowled Menace is packaged and installed with WeiDU and is distributed as a self-extracting archive. To install, simply double-click the archive and follow the instructions on screen.

Alternatively the files can be extracted from the archive using WinRAR. If properly extracted, you should have a "**Cowled Menace**" folder and **setup-cowledmenace.exe** in your BG2 folder. To install, double-click **setup-cowledmenace.exe** and follow the instructions on screen.

Please run **setup-cowledmenace.exe** in your BG2 folder to reinstall, uninstall, or otherwise change components.

## Components

**Main Component - The Cowled Menace** *(Requires EET)*

This is where everything about the Quest mod is installed, from custom NPCs to new areas, new scripts, dialogs, and items. Refer to the Starting the Quest Section below if you want to know more about that. For those of you who are stuck or wish to get spoiled, there is a spoilers section down below as well.

The quest aims to bring closure to the unfinished Twisted Rune content in the Vanilla game by adding lots of it, as well as tie up some loose ends concerning the Cowled Wizards.


*(Optional)* **Appropriate Items for High-Level Spellcasters**

This component and all the next ones don't actually require EET. They will install on an unmodded game.

A level 14+ wizard running around with a nonmagical quarterstaff and 28 gold pieces makes no sense at all, especially if they teleported in expecting a fight since they would come prepared. This component aims to drastically increase the items worn and dropped by high-level spellcasters in Baldur's Gate 2, specifically targeting the ones who currently drop nothing, or close to nothing. The challenge level of these fights will increase as worn items will provide these spellcasters with various bonuses, but the rewards will be greater to compensate (better loot). The goal is that those encounters make sense.

For now this component only goes through the casters in Shadows of Amn. Throne of Bhaal will follow later. This component aims to give items to individual, distinct creatures, not those created by extraordinary circumstances (like clones). Killing the same enemy twice (Jon Irenicus, for example) will not yield double the rewards. Exception: Lich in the "Spawn Undead" script, as it's implied it's a separate lich each time, that was simply chilling there when you arrive.

Compatibility: This component is intended and calibrated for those who have Item Revisions, Spell Revisions, and/or Sword Coast Stratagems (SCS) installed. However, the items added to the creatures are either vanilla items, or vanilla items modified by those mods so it will still work in a vanilla install. Any new items added in this component are additions made by myself, and should therefore work on any install and (theoritically) not overwrite anything. A compatibility problem could arise if you have a mod installed that alters random treasure tables, since mine also does so.

Special Thanks to Roxanne on Gibberlings3


*(Optional)* **Mages cast Gate far from themselves.**

This component is aimed at vanilla installs and is quite simple: most casters able to cast Gate will now do so far from themselves to reduce the chance that the demon will be their next target (brilliant AI).


*(Optional)* **Use pre-EE Spell Deflection Globe** *(Requires EE)*

This component has 2 options to choose from. Either the old globe is added only to Spell Trap and the Staff of the Magi (recommended, to help distinguish it since it's so powerful), or to the following spells as well: Minor Spell Deflection, Spell Deflection, Spell Trap, and their Item versions.

## Starting the Quest

**Hooks**

There are a two different ways to start this quest. The first opportunity happens in Baldur's Gate -- I'll let you discover that on your own, although at this point, I don't think it's actually possible for a party of that level to progress into the quest due to the sheer difficulty. Feel free to experiment.

The second is the most obvious one: starting the Tanner quest in the Bridge district of Athkatla marks the first time you encounter the Twisted Rune and get involved in their business, even in the vanilla game. Following clues you receive from those engagements, as well as exploring around the Bridge and Temple Districts should help you progress.

Some of the encounters in this mod happen in different fashion depending on the order in which you progress through the quest, and the actors you have encountered (and in which order). One encounter in particular varies greatly in difficulty depending on choices you've made in the game, outside of this quest. I have restored unused lines by Shangalar in the vanilla game, which I was quite surprised to find. A word of warning: the Twisted Rune are a powerful and ancient organisation... come prepared. The storyline gets completed in Throne of Bhaal, it is not possible to finish the quest while still being in Shadows of Amn. Also, if you wish to experience the full content, I recommend against bribing the Cowled Wizards.

## Spoilers Section

[Detailed spoilers section](SPOILERS-SECTION.md) (read if you're stuck)

## Thanks and Acknowledgements 

Special Thanks to demivrgvs, Roxanne, kreso, DavidW, CamDawg, Nythrun & Miloch (area patching) and every helpful fellow on gibberlings3 forums!

Custom portrait by Wizards of the Coast LLC.

Huge thanks to [klatu](http://www.shsforums.net/files/file/1109-klatu-tweaks-and-fixes/), I based many of my code on his tweaks. Because the Cowled Wizards are heavily implicated in my mod, the main component installs a modified version of his "Appropriate XP Rewards for Cowled Enforcers" tweak. Many thanks also to the creators of the Infinity Engine Structure Description Project; and to Jon Hauglid, for Near Infinity.

And of course, thanks to k4thos for making the [Enhanced Edition Trilogy](https://www.gibberlings3.net/forums/forum/195-enhanced-edition-trilogy/).

### Tools Used in Creation

- [WeiDU](https://weidu.org/) by Wes Weimer and the bigg
- [DLTCEP](https://www.gibberlings3.net/files/file/900-dltcep/) by Avenger
- [Near Infinity](https://folk.idi.ntnu.no/joh/ni/) by Jon Olav Hauglid and devSin
- [IESDP](https://gibberlings3.github.io/iesdp/) maintained by igi

## Copyright and Legal Information

Cowled Menace is copyright © 2020 Maltodaxtrin/Daxtreme

You are allowed to submit [maintenance updates](MAINTENANCE-NOTICE.md) for this mod. This mod is additionally licensed under [CC-BY-NC-4.0](https://creativecommons.org/licenses/by-nc/4.0/).

This Modification is unofficial Fan Content permitted under the Fan Content Policy. Not approved/endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. ©Wizards of the Coast LLC. This mod is also not developed, supported, or endorsed by BioWare, Black Isle Studios, Interplay Entertainment Corp., Overhaul Games or Beamdog. All other trademarks and copyrights are property of their respective owners.

## Version History

0.2.1 BETA -- Adapted for G3 compatibility, added Linux and MacOs support.

0.2 BETA -- first official release.
