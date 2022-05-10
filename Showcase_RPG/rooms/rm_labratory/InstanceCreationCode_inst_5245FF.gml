visible = false;
if obj_player.checkpoint < 1 {instance_deactivate_object(obj_monster)}
if obj_player.checkpoint == 1
	{
	alarm[0] = room_speed * 2;
	}
