//determines if the game is paused
if (instance_exists(obj_pauser)){move_spd = 0}
	
//determines movement direction

if step_count == 0 {
	var move_direction = irandom(3);

	if move_direction == LEFT {xspd = -1 * move_spd}
	if move_direction == RIGHT {xspd = 1 * move_spd}
	if move_direction == DOWN {yspd = 1 * move_spd}
	if move_direction == UP {yspd = -1 * move_spd}
	step_count = 10;
	}
else {step_count --}

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

if xspd == 0 && yspd == 0
	{
	image_index = 0;
	}
	
//depth
depth = -bbox_bottom-2;
