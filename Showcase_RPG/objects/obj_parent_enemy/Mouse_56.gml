/// @description Insert description here
// You can write your code in this editor
if(global.selectedUnit.id == id and global.targeting){
	if(position_meeting(mouse_x, mouse_y, obj_parent_enemy)){
		obj_battle_text.text_current = 2;
		var unit = instance_position(mouse_x, mouse_y, obj_parent_enemy);
		if(unit != global.selectedUnit){
			global.selectedTargets = noone;
			
			global.selectedTargets = unit;
		}
		turn_finished = true;
		attack_will_hit = true;
		incoming_damage = 0;
		global.selectedTargets.damage_unit(global.selectedUnit.current[@ATK]);
		obj_combat_manager.process_finished = true;
		//obj_combat_manager.allow_input = false;
	}
	
	/*for (var i=0; i<ds_list_size(global.units); i++){
		if(global.units[|i] != global.selectedUnit){
			global.selectedTargets = global.units[|i];
			break;
		}
	}*/
	/*turn_finished = true;
	attack_will_hit = true;
	//check_for_hit();
	incoming_damage = 0;
	global.selectedTargets.damage_unit(global.selectedUnit.current[@ATK]);
	
	//damage_unit(global.selectedUnit.current[@ATK]);
	obj_combat_manager.process_finished = true;
	allow_input = false;*/
}
//if(global.selectedTargets.id == id){
	//damage_unit(global.selectedUnit.current[@ATK]);
	//incoming_damage = 0;
//}
if(current[@HP] <= 0){
	ds_list_delete(global.units, ds_list_find_index(global.units, id));
	instance_destroy();
}
