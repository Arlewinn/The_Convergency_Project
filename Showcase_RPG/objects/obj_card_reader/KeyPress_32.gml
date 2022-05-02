if place_meeting(x + 10, y, obj_player) && myKey.obtained
	{
		with(obj_lab_door){
			if(door_ID == other.targetDoor_ID)
				{
					locked = false;
				}
		}
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
	}
