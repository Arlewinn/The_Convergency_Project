if obj_monster.waypoint_talley < 3 && obj_monster.blocked
	{
	obj_monster.waypoint_talley ++
	};

else if obj_monster.waypoint_talley >= 3 && obj_monster.blocked{
	with (obj_waypoint)
		{
		x = mem_x;
		y = mem_y;
		}
		obj_monster.waypoint_talley = 0;
		obj_monster.blocked = false;
		show_debug_message(obj_monster.waypoint_talley);
	}
	
var newWaypoint = instance_create_depth(0,0, 0, obj_waypoint);
newWaypoint.mem_x = x;
newWaypoint.mem_y = y;
instance_destroy();
show_debug_message(obj_monster.waypoint_talley);
obj_monster.alarm[1] = room_speed * 0.1;
