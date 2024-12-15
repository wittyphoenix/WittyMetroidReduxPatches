The purpose of these patches is to shift Super Metroid Redux ever so slightly closer to vanilla Super Metroid so that it can confidently be recommended to first time players 
while maintaining the overall experience of the original game.

To apply these patches you first need to obtain a version of Super Metroid with the Super Metroid Redux patch applied. You can then apply these patches on top of that.

List of patches:

**Super Metroid Dedux**
 * What?
   * This is the only patch in this repo that can be applied on a vanilla super metroid rom
   * This patch is just a quick way to apply Redux + a number of optional patches, including mine
   * My recommended way to play Super Metroid for new players
   * This patch includes Redux, all the optional patches available from Redux that revert things closer to Super Metroid, and all the patches in this repo.
   * Differences vs base redux:
     * Original Speed Boost
     * Original X Ray scope
     * Original Elevator Speed
     * Original Beam cool down
     * Original Demos
     * Original Sand Physics
     * Original Underwater Waljump
     * No mini boss markers
     * No door colors on map (but doors are still there, unlike original Super Metroid)
     * Red Gate patch (details below)
     * Original default button mapping
     * Revert Smooth Landing (it's a good feature, but unfortunately is buggy. see below)
       
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
    * this patch changes 2 values located at:
      * $0234B8
      * $0234BD
    * Redux values are 00 and 00 respectively
    * New values are C0 and 01 respectively

**Revert Under Water Walljump**
  * What?
    * Super Metroid Redux includes several changes to the physics of the game which were carried over from the Project Base hack
    * This patch reverts the physics of under water walljumps back to the original Super Metroid
  * Why?
    * Without this patch it is possible to navigate through Maridia early using very basic wall jump skills
    * New players are likely to learn wall jump prior to wrecked ship, and could therefore end up deep in maridia earlier than intended
    * while cool for experienced players, this would confuse new players and cause potential issues
    * players can potentially enter Wrecked Ship from the back, which results in entering several rooms unpowered (not supposed to be possible)
    * the player may end up fighting Phantoon earlier than intended which will lead to frustration
  * How?
    * this patch changes 2 values located at:
      * $081ED3 - dictates underwater walljump for default samus
      * $081EDF - dictates underwater walljump for high jump boots
    * Value changed from 02 to 00

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

**Red Gate**
  * What?
    * Replaces the Green Gate from Maridia to Brinstar with a Red Gate that will stay open once activated
  * Why?
    * The existing gate closes once you enter a different room, which is a common noob trap. Especially because there is a tempting save point right next to the gate
    * The new gate allows this passage to be used indefinitely once the player activates the gate
    * Made the gate red so that it is more obvious to the player that this gate will behave differently
  * How?
    * Added Single-Use gate PLMs using the "Single-Use Gates" patch from Oi27
      * https://metroidconstruction.com/resource.php?id=706
      * Used free space at $84F110 for this ASM
    * Changed room 7A322 to reference the new PLMs using SMILE RF
   
**Vanilla Button Mapping**
  * What?
    * Sets the face buttons back to the original default mapping. Also sets auto-run to off by default
  * Why?
    * Movement is too quick with run constantly enabled
    * default button mapping makes more sense for manually using the run button
  * How?
    * Apply VanillaButtonMapping.ASM using ASAR

**Revert Smooth Landing**
  * What?
    * Remove the feature from project base which allows you to maintain your speed / momentum when landing from a jump
  * Why?
    * This feature has a bugged interaction with the moving spiked platforms in Wrecked Ship and Lower Norfair.
    * If you land on these platforms and the smooth landing code triggers, you will partially clip through and take ig damage from the spikes
  * How?
    * Revert changes documented here: https://github.com/ShadowOne333/Super-Metroid-Redux/blob/master/code/Smooth%20Landing/Smooth%20Landing.asm


**Credits**:

**Wittyphoenix** - created the patches contained in this repo

**ShadowOne333** - created Super Metroid Redux

**GoodLuckTrying** - created separate IPS patches for boss icons and door color changes

**Oi27** - wrote the ASM code for the new gate PLMs - https://metroidconstruction.com/resource.php?id=706

**Original Super Metroid Redux credits are listed below:**

(https://github.com/ShadowOne333/Super-Metroid-Redux)

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
