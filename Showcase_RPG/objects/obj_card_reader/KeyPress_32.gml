var hasKey = false;
var playerInventory = obj_player.inventory;


if (place_meeting(x + 10, y, obj_player)) || (place_meeting(x - 10, y, obj_player)) || (place_meeting(x, y + 10, obj_player)) || (place_meeting(x, y - 10, obj_player))
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
					display_message(["*BEEP BOOP* you unlocked the door."]);
					locked = false;
				}
				else 
				{
					display_message(["*BEEP BOOP* you locked the door."]);
					locked = true;
				}
			}
			else if (door_ID == other.targetDoor_ID) && hasKey == false {display_message(["*BUZZER* keycard not accepted."]);}
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
