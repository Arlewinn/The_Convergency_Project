if obj_player.checkpoint < 1 {instance_deactivate_object(obj_monster)}
if obj_player.checkpoint == 1
	{
	visible = false;
	alarm[0] = room_speed * 0.5;
	}
