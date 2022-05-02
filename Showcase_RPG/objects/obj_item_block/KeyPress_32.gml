
if place_meeting(x + 10, y, obj_player) 
	{
		show_debug_message("You got " + item.name);
		item.obtained = true;
	}

	
else if place_meeting(x - 10, y, obj_player) 
	{
		show_debug_message("You got " + item.name);
		item.obtained = true;
	}
else if place_meeting(x, y + 10, obj_player) 	
	{
		show_debug_message("You got " + item.name);
		item.obtained = true;
	}

	
else if place_meeting(x, y - 10, obj_player) 
	{
		show_debug_message("You got " + item.name);
		item.obtained = true;
	}
