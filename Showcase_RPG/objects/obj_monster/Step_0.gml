//determines if the game is paused
if (instance_exists(obj_pauser)){move_spd = 0}
	
//determines movement direction

if step_count == 0 && move_spd > 0 {
	var move_direction = irandom(7);

	if move_direction == 0 {xspd = -1 * move_spd; yspd = 0 * move_spd}
	if move_direction == 1 {xspd = 1 * move_spd; yspd = 0 * move_spd}
	if move_direction == 2 {yspd = 1 * move_spd; xspd = 0 * move_spd}
	if move_direction == 3 {yspd = -1 * move_spd; xspd = 0 * move_spd}
	if move_direction == 4 {xspd = -1 * move_spd; yspd = 1 * move_spd}
	if move_direction == 5 {xspd = 1 * move_spd; yspd = 1 * move_spd}
	if move_direction == 6 {yspd = 1 * move_spd; xspd = 1 * move_spd}
	if move_direction == 7 {yspd = -1 * move_spd; xspd = 1 * move_spd}
	step_count = 100;
	}
else if move_spd == 0 {xspd = 0; yspd = 0; step_count = 0}
else {step_count --}

//set sprite6
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
	step_count = 0;
	}
if place_meeting(x, y + yspd, obj_testWall) == true
	{
	yspd = 0;
	step_count = 0;
	}
	

x += xspd;
y += yspd;

if xspd == 0 && yspd == 0
	{
	image_index = 0;
	}
	
//depth
depth = -bbox_bottom-2;

if place_meeting(x, y, obj_player) && !instance_exists(obj_warp)
	{
	var inst = instance_create_depth(0, 0, -999, obj_warp);
	inst.target_x = 0;
	inst.target_y = 0;
	inst.target_rm = rm_battle;
	inst.target_face = UP;
	}
