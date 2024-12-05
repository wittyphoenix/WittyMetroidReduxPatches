The purpose of these patches is to shift Super Metroid Redux ever so slightly closer to vanilla Super Metroid so that it can confidently be recommended to first time players 
while maintaining the overall experience of the original game.

To apply these patches you first need to obtain a version of Super Metroid with the Super Metroid Redux patch applied. You can then apply these patches on top of that.

List of patches:

**Original Sand Physics**
  * What?
    * Super Metroid Redux includes several changes to the physics of the game which were carried over from the Project Base hack
    * This patch reverts the physics of sand pits back to the original Super Metroid
  * Why?
    * Without this patch it is possible to bypass the sand pits too early. This is a non-issue for experienced players,
      but will lead to confusion and frustration for new players
    * players can potentially enter Wrecked Ship from the back, which results in entering several rooms unpowered (not supposed to be possible)
    * the player may end up fighting Phantoon earlier than intended which will lead to frustration
  * How?
    * this patch changes 2 bits located at:
      * $0234B8
      * $0234BD
    * Redux values are 00 and 00 respectively
    * New values are C0 and 01 respectively

**Reduced Map Detail**
  * What?
    * Super Metroid Redux includes an improved map over the original. This patch removes or adjusts 2 of these changes:
      * Mini boss map markers
        * removed by this patch
      * colored doors:
        * doors are still visible in the patch, but coloring has been removed
  * Why?
    * Mini boss map markers:
      * Several mini bosses from the original game are intended to be surprises and are spoiled by the new markers
    * Colored doors:
      * Super metroid is designed to subtly encourage a specific path through the game
      * revealing door colors on the map can influence a player's decision making.
        * IE, seeing that an area does not have a yellow door and then choosing not to check that area when it in fact has power bomb blocks
  * How?
    * Modifying HUD and pause map tiles using tlp

**Potential future patches**
* Remove under water wall jump introduced by Project Base
  * Similar deal to the sand physics patch
* Make the 1 way green gate from Maridia to Brinstar stay open
  * This is an annoying little noob trap... very easy for a new player to forgot these gates close behind you. forces you to repeat a chunk of maridia if you forget.
* Set autorun to "Off" as the default
  * Redux has it "on" by default. significantly changes the pace of the game imo

**Credits**:

**Wittyphoenix** created the patches contained in this repo

**Original Super Metroid Redux credits are listed below:**

https://www.romhacking.net/hacks/4963/

Contributor	Type of contribution	Listed credit

ShadowOne333	Hacking	Main hacking and project

begrimed	Original Hacking	Project Base

Kejardon	Original Hacking	Control Freak

SadiztykFish (Scyzer)	Original Hacking	Original Item Circles & Item Sounds codes, and Save/Load hack

PHOSPHOTiDYL	Original Hacking	Item/Time Counters in Pause Menu and Others

sylandro	Original Hacking	Hard mode & Rewrite of Item Circles code

DC	Original Hacking	Original Map Patch for Super Metroid

PJBoy	Original Work	Super Metroid Disassembly and Kraid's graphics corruption fix after his fight

adamf	Original Hacking	Screw Attack Frozen Enemies and Save Refill codes

Smiley	Original Hacking	Help and debugging for Fixed Unlocked Tourian and New Item Circles code

Nodever2	Original Hacking	Bugfixes, Reserve Tanks bugfix and Tourian event flag fix

samsamcmoi	Original Hacking	Super Metroid Turbo hack, fixes to Control Freak tables and Introduction Skip

ocesse	Original Hacking	Super Metroid Redux Widescreen patch

Dmit Ryaz	Graphics	Samus Redesigned original patch

Benox50	Original Hacking	Pause map fix during Kraid's fight (caused by DC's Map patch)

HAM	Original Hacking	Suits Pickup fixes

Crashtour99	Original Hacking	Dual Suit hack

Starry_Melody	Graphics	Power Suit Samus graphics
