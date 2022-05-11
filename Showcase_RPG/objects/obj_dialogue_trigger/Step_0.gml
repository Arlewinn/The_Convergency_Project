if place_meeting(x, y, target){
	display_message(words, animate, text_speed)
	
	if event_ID == 1 
	{
		obj_monster.set_move_spd = 1
		with(obj_door) 
			{
			if door_ID == 4 {locked = false;}
			}
	}
	
	if event_ID == 2
	{
		var dialoge_trigger = instance_create_depth(obj_player.x + 30, obj_player.y, 0, obj_dialogue_trigger);
		dialoge_trigger.target = obj_monster;
		dialoge_trigger.words = ["BLARRRGUHHH", "Oh shit! It found me! I'm trapped!", "INTERCOM: Subject is instructed to proceed through the Morpheus Gate.", "EXCUSE ME?", "ITERCOM: ...Walk into the big energy ball looking thing."];
		dialoge_trigger.event_ID = 3;
		obj_monster.set_move_spd = 3;
		obj_monster.x = obj_player.x + 160;
		obj_monster.y = obj_player.y;
		with(obj_waypoint){instance_destroy()}
		instance_create_depth(obj_player.x, obj_player.y, 0, obj_waypoint);
	}
	
	if event_ID == 3
	{
		obj_monster.set_move_spd = 1;
		obj_player.face = RIGHT;
	}
	
	instance_destroy();
	}

