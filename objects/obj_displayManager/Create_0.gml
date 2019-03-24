/// @description Display Properties
ideal_width=0;
ideal_height=275;
zoom=1;
max_zooom=1;
display_width=display_get_width();
display_height=display_get_height();

aspect_ratio=display_width/display_height;

ideal_width=round(ideal_height*aspect_ratio);
//ideal_height=round(ideal_width / aspect_ratio);

//Perfect Pixel Scaling
if(display_width mod ideal_width != 0)
{
  var d = round(display_width/ideal_width);
  ideal_width=display_width/d;
}
if(display_height mod ideal_height != 0)
{
  var d = round(display_height/ideal_height);
  ideal_height=display_height/d;
}

//Check for odd numbers
if(ideal_width & 1)
  ideal_width++;
if(ideal_height & 1)
  ideal_height++;
    
//Calculate Max Zoom
max_zoom=floor(display_width/ideal_width);  
  
window_set_size(ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);

camera = camera_create();
  
alarm[0]=1; //Sorry.  This line got left out of the tutorial vid.  This will center the window after the initial resizing.

/* -- Player Camera -- */

// Initialize
follow       = obj_player;
view_w_half  = camera_get_view_width(camera) * 0.5;
view_h_half  = camera_get_view_height(camera) * 0.5;
xTo			 = xstart;
yTo			 = ystart;

// Screen Shake
shake_length    = 0;
shake_magnitude = 0;
shake_remain    = 0;
buff			= 32;

room_goto_next();



