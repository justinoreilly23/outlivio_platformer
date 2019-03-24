x = obj_player.x + xOffset;
y = obj_player.y + yOffset;

image_angle = point_direction(x, y, mouse_x, mouse_y);
	
if (obj_player.controller == 0)
{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
else
{
	var controllerh = gamepad_axis_value(0, gp_axisrh);
	var controllerv = gamepad_axis_value(0, gp_axisrv);
		
	if (abs(controllerh) > 0.2) || (abs(controllerv) > 0.2)
	{
		controllerAngle = point_direction(0, 0, controllerh, controllerv);
	}	
	image_angle = controllerAngle;
}


if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}

firingDelay--;
recoil = max(0, recoil - 1);

if ((mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb)))
{
	if (canShoot)
	{
		recoil = random_range(1, 10);
		firingDelay = firingDelayDefault;
		isShooting = true;
		ammoInGun--;

		ScreenShake(ssMagnitude, ssFrames);
		image_speed = 0;
	
		with (instance_create_layer(x, y, "Bullets", ammoType)) 
		{
			bulletDamage = random_range(other.minBulletDamage, other.maxBulletDamage);
			direction = other.image_angle + random_range(other.sprayLow, other.sprayHigh);
			image_angle = direction;
			audio_play_sound(other.sndShoot, 30, false);
		}
		
		if (audio_is_playing(sndShoot))
		{
			audio_sound_pitch(sndCharge, .5);
			audio_play_sound(sndCharge, 29, false);
		}
	}
} else isShooting = false;

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);