//determines if the game is paused
if (instance_exists(obj_pauser)){
	move_spd = 0
	}
else  {move_spd = set_move_spd}
//determines movement direction

if blocked && instance_exists(obj_waypoint)
{
	var waypoint = instance_nearest(x, y, obj_waypoint);
	goal_x = waypoint.x;
	goal_y = waypoint.y;
}

else {
	goal_x = obj_player.x;
	goal_y = obj_player.y;
}

/*else {
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
}*/

//move towards goal

//set sprite
mask_index = sprite[DOWN];

//if place_meeting(x, y, obj_door) {move_spd = 0.1}
//else if  !place_meeting(x, y, obj_door) {move_spd = 1}

if x < goal_x {xspd = 1 * move_spd}
if x > goal_x {xspd = -1 * move_spd}
if x <= goal_x + 5 && x >= goal_x - 5 {xspd = 0}
if y < goal_y {yspd = 1 * move_spd}
if y >goal_y {yspd = -1 * move_spd}
if y <= goal_y + 5 && y >= goal_y - 5 {yspd = 0}

if place_meeting(x + xspd, y, obj_testWall) || place_meeting(x + xspd, y, obj_door) && blocked == false
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_testWall) || place_meeting(x, y + yspd, obj_door) && blocked == false
	{
	yspd = 0;
	}


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

mask_index = sprite[DOWN];
sprite_index = sprite[face];

//collisions code
/*if place_meeting(x, y, obj_waypoint)
	{
	show_debug_message("unblocked");
	blocked = false;
	}*/

//execute movement
x += xspd;
y += yspd;

if place_meeting(x + xspd, y , obj_player) && !instance_exists(obj_warp)
	{

	var inst = instance_create_depth(0, 0, -999, obj_warp);
	inst.target_x = 0;
	inst.target_y = 0;
	inst.target_rm = rm_battle;
	inst.target_face = UP;
	}

if xspd == 0 && yspd == 0 && blocked = false && place_meeting(x, y, obj_door) == false
	{
	image_index = 0;
	blocked = true;
	//with (obj_waypoint) {x = mem_x; y = mem_y}
	//waypoint_talley = 0;
	}

else if xspd == 0 && yspd == 0 && blocked = true && place_meeting(x, y, obj_door) == false
	{
	image_index = 0;
	blocked = false;
	with (obj_waypoint) {x = mem_x; y = mem_y}
	waypoint_talley = 1;
	}
	
//depth
depth = -bbox_bottom-2;
