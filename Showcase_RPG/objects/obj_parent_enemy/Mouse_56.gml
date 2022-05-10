/// @description Insert description here
// You can write your code in this editor
if(global.selectedUnit.id == id){
	
	for (var i=0; i<ds_list_size(global.units); i++){
		if(global.units[|i] != global.selectedUnit){
			global.selectedTargets = global.units[|i];
			break;
		}
	}
	turn_finished = true;
	attack_will_hit = true;
	//check_for_hit();
	incoming_damage = 0;
	global.selectedTargets.damage_unit(global.selectedUnit.current[@ATK]);
	
	//damage_unit(global.selectedUnit.current[@ATK]);
	process_finished = true;
	allow_input = false;
}
//if(global.selectedTargets.id == id){
	//damage_unit(global.selectedUnit.current[@ATK]);
	//incoming_damage = 0;
//}
if(current[@HP] <= 0){
	ds_list_delete(global.units, ds_list_find_index(global.units, id));
	instance_destroy();
}
