if (place_meeting(x + radius, y, obj_player)) || (place_meeting(x - radius, y, obj_player)) || (place_meeting(x, y + radius, obj_player)) || (place_meeting(x, y - radius, obj_player) )
	if (showMessage) && !instance_exists(obj_pauser){
		{
			display_message_wrap(words, animate_text, text_speed, text_scale, text_break_point);
			if destroy_on_read {instance_destroy()}
		}
	}
