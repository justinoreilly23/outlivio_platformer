/// @description Screenshake(magnitude, frames)
/// @arg magnitude sets the strength of the shake (radius in pixels)
/// @arg frames sets the lenght of shake in frames (60 = 1 second at 60fps

with (obj_playerCamera)
{
	if (argument0 > shake_remain)
	{
		shake_magnitude = argument0;
		shake_remain    = argument0
		shake_length	= argument1;
	}
}