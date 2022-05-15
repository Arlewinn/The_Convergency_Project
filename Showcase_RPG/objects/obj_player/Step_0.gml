//Code for WASD controls
//right_key = keyboard_check(ord("D"));
//left_key = keyboard_check(ord("A"));
//up_key = keyboard_check(ord("W"));
//down_key = keyboard_check(ord("S"));

if(room != rm_battle){

	right_key = keyboard_check(vk_right);
	left_key = keyboard_check(vk_left);
	up_key = keyboard_check(vk_up);
	down_key = keyboard_check(vk_down);
	sprint_key = keyboard_check(vk_shift);
	
	global.last_room = room;
	global.player_x = x;
	global.player_y = y;
	if (instance_exists(obj_pauser))
		{
		move_spd = 0
		}
	else if (sprint_key == 1)
		{
		move_spd = 2.5
		sprite_set_speed(sprite_index, 8, spritespeed_framespersecond);
		}
	else if (frozen)
		{
		move_spd = 0;
		}
	else 
		{
		move_spd = 1;
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
	if place_meeting(x + xspd, y, obj_testWall) || place_meeting(x + xspd, y, obj_door)
		{
		xspd = 0;
		}
	if place_meeting(x, y + yspd, obj_testWall) || place_meeting(x, y + yspd, obj_door)
		{
		yspd = 0;
		}
	

	x += xspd;
	y += yspd;

	var rng = irandom(steps);
	if (rng = steps && steps < 800 && !instance_exists(obj_warp) && room != rm_labratory && room != rm_battle && room != rm_storage_room) {
	
		var inst = instance_create_depth(0, 0, -999, obj_warp);
		inst.target_x = x;
		inst.target_y = y;
		inst.target_rm = rm_battle;
		inst.target_face = DOWN;
		steps = 1000;
	} else {
		steps -= 1;
	}
	//animeate
	if xspd == 0 && yspd == 0
		{
		image_index = 0;
		}
	
	//depth
	depth = -bbox_bottom-2;
}
