# KHPCStatInventoryModifier
This is a mod for Kingdom Hearts Final Mix for PC that allows easy editing of stats, inventory, abilities, and more with an input text file.

## How to Install
1. Click the green "Code" button in the top-right and download as a zip file.
2. Unzip the file (right-click > Extract All)
3. Download LuaFrontend here: https://github.com/TopazTK/LuaFrontend/releases
4. Drag and drop the contents of KHPCStatInventoryModifier into LuaFrontend/scripts/kh1gl

## How to Run the Mod (after installing)
1. Launch Kingdom Hearts HD 1.5 + 2.5 ReMIX, then start Kingdom Hearts Final Mix
2. Start a new game or load the save where you want to modify your stats and inventory
3. Double-click LuaFrontend.exe in your LuaFrontend folder
4. Under Games, make sure "Kingdom Hearts [GL]" is selected. Check the box next to KHPCStatInventoryModifier.
5. From the top-left, click Engine > Start Engine.  Messages will appear in a LuaEngine Console window that confirm your stats have changed.  Enjoy!

## How to Modify Your Stats Using this Mod
Open input.txt in any text editor.  By default, this file comes with all currently supported settings maxed out/unlocked.

* If a line begins with the '#' character, it is a comment, meaning it won't be read by the mod.
* If you do not want the mod to change a certain value, add the '#' character to the front of the line.  For example, if you do not want the mod to change Sora's level, the line would look like this: `#level = 99`.
* To change the value of a stat, simply edit the number to the right of the equal sign (=).  For example, if you wanted to change your max HP to be 1, the line would look like this: `hp = 1`.
* Some settings only take one of two values: "true" or "false".  Anything else will be equivalent to "false".

All accepted settings are listed below:

Keyword | Possible Values | Notes
--------|-----------------|------
level|0-99
hp|0-99|Note that the total stat is still affected by your early game choices.
mp|0-99|Note that at a certain point, you stop gaining more MP bars but MP continues to affect magic strength.
ap|0-99
strength|0-99|Note that the total stat is still affected by your early game choices.
defense|0-99|Note that the total stat is still affected by your early game choices.
equipmentSlots|0-8
itemSlots|0-8
magicUnlocked|true, false|Setting this to "true" will unlock all base magic. Note that the tutorial will still prohibit you from using magic early on.
allWeapons|true, false|Setting this to "true" will give you 1 of each weapon including Donald and Goofy weapons.
allAbilities|true, false|Setting this to "true" will give Sora one of each ability including shared abilities.
allItems|true, false|Setting this to "true" will give you 99 of each item EXCLUDING key/story items. Obtaining key items too early can cause softlocks.
munny|0-99999

## Challenges

### Magic Build
Play on Proud mode with EXP Zero enabled
```
mp = 99
magicUnlocked = true
```

### Strength Build
Play on Proud mode with EXP Zero enabled
```
strength = 99
allAbilities = true
```

### Glass Jaw Build
```
level = 99
hp = 2
mp = 99
ap = 99
strength = 99
defense = 1
allAbilities = true
```
Enable Second Chance.

### Ability Strategizing Build
```
ap = 10
allAbilities = true
```
Enable EXP Zero. Select your abilities carefully.