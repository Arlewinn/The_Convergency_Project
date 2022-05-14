var hasKey = false;
var playerInventory = obj_player.inventory;

if !instance_exists(obj_pauser){
	if (place_meeting(x + radius, y, obj_player)) || (place_meeting(x - radius, y, obj_player)) || (place_meeting(x, y + radius, obj_player)) || (place_meeting(x, y - radius, obj_player))
		{
			for (i=0; i < array_length(playerInventory); i++)
			{
				if playerInventory[i] == myKey {hasKey = true}
			}
			with(obj_door){
				if(door_ID == other.targetDoor_ID) && hasKey && obj_player.frozen = false{
					//show_debug_message("hooii");
					if (locked == true)
					{
						display_message([str("msg_door_unlocked")], false);
						locked = false;
					}
					else 
					{
						display_message([str("msg_door_locked")], false);
						locked = true;
					}
				}
				else if (door_ID == other.targetDoor_ID) && hasKey == false {display_message([str("msg_keycard-not-accepted")], false);}
			}
		}
}
	
/*else if (place_meeting(x + 10, y, obj_player)) || (place_meeting(x - 10, y, obj_player)) || (place_meeting(x, y + 10, obj_player)) || (place_meeting(x, y - 10, obj_player))
	{
		show_debug_message("*Buzzer* keycard not accepted");
	}
else if place_meeting(x - 10, y, obj_player) && myKey.obtained
	{
		with(obj_lab_door){
			if(door_ID == other.targetDoor_ID)
				{
					locked = false;
				}
		}
	}
else if place_meeting(x, y + 10, obj_player) && myKey.obtained
	{
		with(obj_lab_door){
			if(door_ID == other.targetDoor_ID)
				{
					locked = false;
				}
		}
	}

	
else if place_meeting(x, y - 10, obj_player) && myKey.obtained
	{
		with(obj_lab_door){
			if(door_ID == other.targetDoor_ID)
				{
					locked = false;
				}
		}
	}*/
