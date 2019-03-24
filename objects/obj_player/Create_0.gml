/// @description Initalize
var str = string_split(sprite_get_name(sprite_index), "_"); // converts to ds list
var spriteName = string(str[| 0]) + "_" + string(str[| 1]);
image_speed = 1;

/* Movement */
walkspd = 3;
vspd = 0;
hspd = walkspd;
hasControl = true;
controller = 0;

/* Weapon */
currentWeapon = false;
hasWeapon = false;

spriteDirection[0] = asset_get_index(spriteName);

/* Inventory */
// inventory[0] Guns

// inventory[1] Ammo

// inventory[2] Medecine

// inventory[3] Power Ups