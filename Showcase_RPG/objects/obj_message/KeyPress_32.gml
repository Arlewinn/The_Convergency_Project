if (place_meeting(x + radius, y, obj_player)) || (place_meeting(x - radius, y, obj_player)) || (place_meeting(x, y + radius, obj_player)) || (place_meeting(x, y - radius, obj_player) )
	if (showMessage){
		{
			display_message(words, animate_text, text_speed);
			if destroy_on_read {instance_destroy()}
		}
	}
