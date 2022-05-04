var hasKey = false;
var playerInventory = obj_player.inventory;


if (place_meeting(x + 10, y, obj_player)) || (place_meeting(x - 10, y, obj_player)) || (place_meeting(x, y + 10, obj_player)) || (place_meeting(x, y - 10, obj_player))
	{
		for (i=0; i < array_length(playerInventory); i++)
		{
			if playerInventory[i] == myKey {hasKey = true}
		}
		with(obj_door){
			if(door_ID == other.targetDoor_ID) && hasKey{
				//show_debug_message("hooii");
				if (locked == true)
				{
					show_debug_message("Beep beep, door unlocked");
					locked = false;
				}
				else 
				{
					show_debug_message("Beep beep, door locked");
					locked = true;
				}
			}
		}
	}
	
else if (place_meeting(x + 10, y, obj_player)) || (place_meeting(x - 10, y, obj_player)) || (place_meeting(x, y + 10, obj_player)) || (place_meeting(x, y - 10, obj_player))
	{
		show_debug_message("*Buzzer* keycard not accepted");
	}
/*else if place_meeting(x - 10, y, obj_player) && myKey.obtained
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
