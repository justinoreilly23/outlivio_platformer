/// @desc Initialize

if (instance_exists(obj_player))
{
	if (!instance_exists(obj_transition)) instance_create_layer(x, y, "GUI", obj_transition);
	if (!instance_exists(obj_drawDepth)) instance_create_layer(x, y, "Depth", obj_drawDepth);
	if (!instance_exists(obj_shadows)) instance_create_layer(x, y, "Depth", obj_shadows);
	
	with (obj_player) 
	{
		if (!instance_exists(obj_playerCamera)) instance_create_layer(x, y, "Display", obj_playerCamera);
	}
}

/* GLOBALS */

enum PLAYER_INVENTORY
{

}


enum WEAPON_ATTR
{
	totalEnumElements,
	firingDelay,
	firingDelayDefault,
	recoil,
	xOffset,
	yOffset,
	triggerHandX,
	triggerHandY,
	gripHandX,
	gripHandY,
	gripHandType,
	ammoType,
	ammoStart,
	ammoInGun,
	maxAmmoInMag,
	minBulletDamage,
	maxBulletDamage,
	sprayLow,
	sprayHigh,
	ssMagnitude,
	ssFrames,
	sndShoot,
	sndCharge
}

enum HAND_TYPE
{
	gripping = obj_hand_verticalGrip,
	supporting = obj_hand_angledGrip,
	noone
}

enum BULLET_TYPE
{
	small = obj_Bullet_sm,
	medium = obj_Bullet_rifle,
	large = obj_Bullet_lg,
	shell = obj_Bullet_shotgun,
	xlarge = obj_Bullet_xl,
	noone
}

room_goto(rm_menu);