/// @description Pickup weapon

if ((keyboard_check_pressed(ord("E"))) && (pickupDelay < 0))
{
	pickupDelay = 20;
	
	if (other.hasWeapon)
	{	
		/*
		with (instance_create_layer(obj_player.x, obj_player.y, "Player", gunActive))
		{
			hasOwner = true;
			global.currentWeapon = self;
		}
		*/
		
		with (instance_create_layer(other.x, other.x, "Pickups", gunPickup))
		{
			weaponAttribute[WEAPON_ATTR.ammoStart] = gunActive.ammoInGun;
		}
		instance_destroy();
	}
	else
	{
		other.hasWeapon = true;
		other.currentWeapon = instance_create_layer(obj_player.x, obj_player.y, "Player", gunActive);
		
		with (other.currentWeapon)
		{
			hasOwner = true;
			owner = other.id;
		}
		instance_destroy();
	}
}