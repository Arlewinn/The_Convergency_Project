var closest_waypoint = instance_nearest(x, y, obj_waypoint);
var player = instance_nearest(x, y, obj_player);

var waypoint_X = closest_waypoint.x;
var waypoint_Y = closest_waypoint.y;
var player_X = player.x;
var player_Y = player.y;

var play_closest_way = instance_nearest(player_X, player_Y, obj_waypoint);
var play_way_X = play_closest_way.x;
var play_way_Y = play_closest_way.y;

var player_distance = abs(x - player_X) + abs(y - player_Y);
var way_distance = abs(x - waypoint_X) + abs(y - waypoint_Y);
var play_way_distance = abs(x - play_way_X) + abs(y - play_way_Y);

if player_distance < way_distance
	{
	show_debug_message("ding ding");
	blocked = false;
	goal_x = player_X;
	goal_y = player_Y;
	}
else if play_way_distance < way_distance + 10
	{
	blocked = false;
	goal_x = play_way_X;
	goal_y = play_way_Y;
	with (obj_waypoint) {x = mem_x; y = mem_y}
	//waypoint_talley = 0;
	}
