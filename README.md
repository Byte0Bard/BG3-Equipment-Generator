# BG3-Equipment-Generator
 BG3 custom equipment and textures tool.

 In order to save a new preset profile, type a new name into the dropdown box next to the “Load Preset” button. When you click “Continue,” the program will create a save. 

 Right now, there is an incompatibility with tintable items and Transmog Enhanced. For some reason, the items do not re-equip and cannot be used after transmogging. Saving and reloading fixes this and lets you equip the items. I'm trying to find a solution. Thank you for your patience.

This is a program for getting custom armor with custom textures into BG3. If you have 3D models from Blender, or if you have models from other games you want to import, this is the tool! I have included a video as well as a PDF. Please let me know if I have anything wrong! Please let me know what works/doesn't work. I am still learning. Currently, it cannot automatically generate armor sets using in-game assets. If you follow Druu's Custom Armor Making Tutorial by Druundev (https://www.nexusmods.com/baldursgate3/mods/1409), get your meshes set up in Blender, and find the material UUIDs, you should be able to generate the files needed by putting in your new custom .GR2 and your material UUID.

By default, generated items are put in the tutorial chest. This can be changed by editing these files:
[YourMod]\Public\[YourMod]\Stats\Generated\Data\Armor.txt
[YourMod]\Public\[YourMod]\Stats\Generated\Data\Armor_MSK.txt
[YourMod]\Public\[YourMod]\Stats\Generated\Data\Objects.txt
[YourMod]\Public\[YourMod]\Stats\Generated\TreasureTable.txt

- Allows you to save presets. This way, if you need to go back and redo or change something, you can load up your preset. 
- Automatically converts images of type .png, .jpg, .tiff, .bmp, and .tga to the .dds format required for BG3. 
- Automatically combines icon images into one .dds so the icons will display correctly in the game.
- Automatically fills out .GR2 information like bounds and mesh data.
- Can handle tintable (dyeable) and non-tintable equipment.
- Can apply materials to individual objects within the .GR2 mesh file.
- Can input material UUIDs from the game.
- Can generate weapons, shields, underwear, camp clothing, instruments, and stats editing.
