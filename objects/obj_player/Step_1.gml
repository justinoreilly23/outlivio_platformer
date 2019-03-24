/// @desc Collisions

if place_meeting(x, y + vspd, obj_wall)
{
      while !place_meeting(x, y + sign(vspd), obj_wall)
      {
           y += sign(vspd);
      }
vspd = 0;
}
y += vspd;

// Increase gravity
if vspd < 12
   vspd += 0.1;
else vspd = 12;