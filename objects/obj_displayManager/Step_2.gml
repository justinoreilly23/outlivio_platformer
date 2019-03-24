/// @description Insert description here

camera_set_view_size(view_camera[0], ideal_width, ideal_height);

// Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

// Keep camerea center inside room
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);

// Screen Shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1 / shake_length) * shake_magnitude));

camera_set_view_pos(view_camera[0], x - view_w_half, y - view_h_half);

//camera_set_view_pos(view_camera[0], room_width/2-camera_get_view_width(view_camera[0])/2,room_height/2-camera_get_view_height(view_camera[0])/2);