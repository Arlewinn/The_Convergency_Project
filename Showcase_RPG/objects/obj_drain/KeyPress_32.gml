var hasKey = false;
var playerInventory = obj_player.inventory;

if !instance_exists(obj_pauser){
if (place_meeting(x + radius, y, obj_player)) || (place_meeting(x - radius, y, obj_player)) || (place_meeting(x, y + radius, obj_player)) || (place_meeting(x, y - radius, obj_player) ){
	for (i=0; i < array_length(playerInventory); i++)
	{
		if playerInventory[i] == keyItem {hasKey = true}
	}
	if (hasItem == true && hasKey == true)
		{
			display_message_wrap([str("msg_drain_pickUp1"), str("msg_ItemReceived") + item_text], false);
			array_push(obj_player.inventory, item);
			hasItem = false;
		}
	else if (hasItem == true && hasKey == false) {display_message_wrap([str("msg_drain")], false)}
	}
}
