if (place_meeting(x + radius, y, obj_player) == true && open = false && locked = false) || (place_meeting(x - radius, y, obj_player) == true && open = false && locked = false) || (place_meeting(x, y + radius, obj_player) == true && open = false && locked = false) || (place_meeting(x, y - radius, obj_player) == true && open = false && locked = false) {
	image_speed = 1;
	open = true;
	}
