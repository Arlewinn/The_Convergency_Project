/// @description Insert description here
// You can write your code in this editor
switch(combatPhase){
	case phase.init:
		for (var i = 0; i < instance_number(obj_combat_spawn); i++){
			var spawner = instance_find(obj_combat_spawn, i);
			//var unit_1 = instance_create_layer(spawner.x, spawner.y, "Instances", obj_test_enemy);
			var unit = instance_create_depth(spawner.x, spawner.y, 0, obj_test_enemy);
			ds_list_add(global.units, unit);
		}
		combatPhase = phase.startTurn;
	break;
	
	case phase.startTurn:
		spd_sort(global.units);
		if(units_finished >= ds_list_size(global.units)){
			for(var i=0; i<ds_list_size(global.units); i++){
				with(global.units[|i]){
					turn_finished = false;
				}
			}
			units_finished = 0;
		}
		for (var i = 0; i < ds_list_size(global.units); i++){
			var inst = global.units[|i];
			if(inst.turn_finished == false){
				global.selectedUnit = inst;
				break;
			}
		}
		allow_input = true;
		combatPhase = phase.wait;
	break;
	
	case phase.wait:
		if(global.selectedUnit.turn_finished == true){
			units_finished++; 
			combatPhase = phase.process;
		}
	break;
	
	case phase.process:
		//if(process_finished == true){
			combatPhase = phase.checkFinish;
		//}
	break;
	
	case phase.checkFinish:
		process_finished = false;
		//if(keyboard_check_released(vk_space)){
			combatPhase = phase.endTurn;
		//}
		//if(keyboard_check_released(vk_enter)){
		//	combatPhase = phase.win;
		//}
		//if(keyboard_check_released(vk_control)){
		//	combatPhase = phase.lose;
		//}
	break;
	
	case phase.endTurn:
		selected_finished = false;
		global.selectedTargets = noone;
		combatPhase = phase.startTurn;
	break;
	
	case phase.win:
	break;
	
	case phase.lose:
	break;
}
