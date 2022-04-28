if place_meeting(x + 8, y, obj_player) == true && open = false && locked = false{
	image_speed = 1;
	open = true;
	}
	
else if place_meeting(x - 8, y, obj_player) == true && open = false && locked = false{
	image_speed = 1;
	open = true;
	}

else if place_meeting(x, y + 8, obj_player) == true && open = false && locked = false{
	image_speed = 1;
	open = true;
	}
	
else if place_meeting(x, y - 8, obj_player) == true && open = false && locked = false{
	image_speed = 1;
	open = true;
	}
