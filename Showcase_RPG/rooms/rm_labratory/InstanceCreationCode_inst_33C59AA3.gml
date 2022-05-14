move_spd = 0;
if obj_player.checkpoint < 1 {instance_deactivate_object(obj_monster)}
else if obj_player.checkpoint == 1 && !reload {obj_monster.alarm[0] = room_speed * 2}
