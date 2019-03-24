/// @description Keybinds / movement

// Idle
if ((!keyUp) && (!keyDown) && (!keyLeft) && (!keyRight))
{
	isMoving = false;
	walkspd = 0;
	sprite_index = spriteDirection[0];
	image_speed = 0;
	image_index = 0;
}

// Up
if (keyUp)
{
	isMoving = true;
	y -= vspd;
	sprite_index = spriteDirection[1];
	image_xscale = 1;
	image_speed = 1;
}
// Down
if (keyDown) 
{
	isMoving = true;
	y += vspd;
	sprite_index = spriteDirection[2];
	image_xscale = 1;
	image_speed = 1;
}
// Left
if (keyLeft) 
{
	isMoving = true;
	x -= hspd;
	sprite_index = spriteDirection[3];
	image_xscale = 1;
	image_speed = 1;
}
// Right
if (keyRight) 
{
	isMoving = true;
	x += hspd;
	sprite_index = spriteDirection[4];
	image_xscale = 1;
	image_speed = 1;
}

// Like to smash buttons?
if ((keyDown) && (keyLeft) && (keyRight)) sprite_index = spriteDirection[2];
// Up & Left
if ((keyUp) && (keyLeft)) sprite_index = spriteDirection[5];
// Up & Right
if ((keyUp) && (keyRight)) sprite_index = spriteDirection[6];
// Down & Left
if ((keyDown) && (keyLeft)) sprite_index = spriteDirection[7];
// Down & Right
if ((keyDown) && (keyRight)) sprite_index = spriteDirection[8];