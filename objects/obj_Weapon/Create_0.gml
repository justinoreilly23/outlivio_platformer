/// @description Initialize and Set Variables

image_speed = 0; // Make sure the gun is idle
image_index = 0; // Make sure gun spawns on first sprite frame
image_xscale = 1;

controllerAngle = 0; // Aiming with a controller
hasOwner	= 0; // Tracks wether the gun is in use or not
canShoot = 0; // Prevents player from shooting while reloading or ammoInGun == 0
isShooting = 0; // Tracks player interaction with weapon

var ds_name = string_split(object_get_name(object_index), "_");
var parent = asset_get_index("obj_pickup_" + string(ds_name[| 2]));

totalEnumElements	= parent.weaponAttribute[WEAPON_ATTR.totalEnumElements];
gunActive			= parent.gunActive;
gunPickup			= parent.gunPickup;

firingDelay			= parent.weaponAttribute[WEAPON_ATTR.firingDelay];
firingDelayDefault  = parent.weaponAttribute[WEAPON_ATTR.firingDelayDefault];
recoil				= parent.weaponAttribute[WEAPON_ATTR.recoil];

xOffset				= parent.weaponAttribute[WEAPON_ATTR.xOffset];
yOffset				= parent.weaponAttribute[WEAPON_ATTR.yOffset];

triggerHandX		= parent.weaponAttribute[WEAPON_ATTR.triggerHandX];
triggerHandY		= parent.weaponAttribute[WEAPON_ATTR.triggerHandY];
gripHandX			= parent.weaponAttribute[WEAPON_ATTR.gripHandX];
gripHandY			= parent.weaponAttribute[WEAPON_ATTR.gripHandY];
gripHandType		= parent.weaponAttribute[WEAPON_ATTR.gripHandType];

ammoStart			= parent.weaponAttribute[WEAPON_ATTR.ammoStart];
ammoInGun			= parent.weaponAttribute[WEAPON_ATTR.ammoInGun];
ammoType			= parent.weaponAttribute[WEAPON_ATTR.ammoType];
maxAmmoInMag		= parent.weaponAttribute[WEAPON_ATTR.maxAmmoInMag];

minBulletDamage		= parent.weaponAttribute[WEAPON_ATTR.minBulletDamage];
maxBulletDamage		= parent.weaponAttribute[WEAPON_ATTR.maxBulletDamage];
	
sprayLow			= parent.weaponAttribute[WEAPON_ATTR.sprayLow];
sprayHigh			= parent.weaponAttribute[WEAPON_ATTR.sprayHigh];
	
ssMagnitude			= parent.weaponAttribute[WEAPON_ATTR.ssMagnitude];
ssFrames			= parent.weaponAttribute[WEAPON_ATTR.ssFrames];
	
sndShoot			= parent.weaponAttribute[WEAPON_ATTR.sndShoot];
sndCharge			= parent.weaponAttribute[WEAPON_ATTR.sndCharge];