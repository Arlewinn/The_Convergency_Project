if !instance_exists(obj_pauser){
if (place_meeting(x + radius, y, obj_player)) || (place_meeting(x - radius, y, obj_player)) || (place_meeting(x, y + radius, obj_player)) || (place_meeting(x, y - radius, obj_player) )
	{
		if show_text{display_message([str("msg_ItemReceived") + item_text], false);}
		array_push(obj_player.inventory, item);
		instance_destroy();
		//show_debug_message(obj_player.inventory);
	}
}

	
/*else if place_meeting(x - 10, y, obj_player) 
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
	}*/
