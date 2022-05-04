var hasKey = false;
var playerInventory = obj_player.inventory;

if (place_meeting(x + radius, y, obj_player)) || (place_meeting(x - radius, y, obj_player)) || (place_meeting(x, y + radius, obj_player)) || (place_meeting(x, y - radius, obj_player) ){
	for (i=0; i < array_length(playerInventory); i++)
	{
		if playerInventory[i] == keyItem {hasKey = true}
	}
	if (hasItem == true && hasKey == true)
		{
			show_debug_message("You unscreweed the drain and pulled out a  " + item);
			array_push(obj_player.inventory, item);
			hasItem = false;
		}
	else if (hasItem == true && hasKey == false) {show_debug_message("You can see something stuck in the drain.")}
	}
