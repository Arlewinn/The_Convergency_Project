//Code for WASD controls
//right_key = keyboard_check(ord("D"));
//left_key = keyboard_check(ord("A"));
//up_key = keyboard_check(ord("W"));
//down_key = keyboard_check(ord("S"));


right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
sprint_key = keyboard_check(vk_shift);
menu_key = keyboard_check(vk_escape);

if menu_key == 1{instance_create_depth(0,0,-999,obj_title_menu)}

if (instance_exists(obj_pauser))
	{
	move_spd = 0
	}
else if (sprint_key == 1)
	{
	move_spd = 3
	sprite_set_speed(sprite_index, 8, spritespeed_framespersecond);
	}
else 
	{
	move_spd = 9
	sprite_set_speed(sprite_index, 4, spritespeed_framespersecond);
	}

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//set sprite
mask_index = sprite[DOWN];

if yspd == 0{
	if xspd > 0 {face = RIGHT}
	if xspd < 0 {face = LEFT}
	}

if xspd > 0 && face == LEFT {face = RIGHT}
if xspd < 0 && face == RIGHT {face = LEFT}

if xspd == 0{
	if yspd > 0 {face = DOWN}
	if yspd < 0 {face = UP}
	}

if yspd > 0 && face == UP {face = DOWN}
if yspd < 0 && face == DOWN {face = UP}

sprite_index = sprite[face];

//collisions code
if place_meeting(x + xspd, y, obj_testWall) == true
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_testWall) == true
	{
	yspd = 0;
	}

x += xspd;
y += yspd;

//animeate
if xspd == 0 && yspd == 0
	{
	image_index = 0;
	}
	
//depth
depth = -bbox_bottom;
