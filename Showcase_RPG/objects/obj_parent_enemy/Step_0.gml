if place_meeting(x, y, obj_player) && !instance_exists(obj_warp)
	{
	var inst = instance_create_depth(0, 0, -999, obj_warp);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
	inst.target_face = target_face;
	}
	
if((global.targeting) and global.selectedUnit != id){
	if(position_meeting(mouse_x, mouse_y, id)){
		draw_target = true;
	} else {
		draw_target = false;
	}
}
