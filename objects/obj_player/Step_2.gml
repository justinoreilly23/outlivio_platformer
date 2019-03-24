/// @description Change sprite
if (hasWeapon)
{
	with (currentWeapon)
	{	
		// Left
		if ((image_angle > 150) && (image_angle < 210)) with (other) sprite_index = spriteDirection[3];
		// Right
		if ((image_angle > 330) || (image_angle < 30)) with (other) sprite_index = spriteDirection[4];
		// Up Left
		if ((image_angle > 90) && (image_angle < 150)) with (other) sprite_index = spriteDirection[5];
		// Up Right
		if ((image_angle > 30) && (image_angle < 90)) with (other) sprite_index = spriteDirection[6];
	}
}