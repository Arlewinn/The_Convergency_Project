/// @description Insert description here
// You can write your code in this editor
switch(combatPhase){
	case phase.init:
		layer_set_visible(target_ui, false);
		instance_deactivate_layer(target_ui);
		layer_set_visible(battle_ui, false);
		for (var i = 0; i < instance_number(obj_combat_spawn); i++){
			var spawner = instance_find(obj_combat_spawn, i);
			if(i == 0){
				var unit = instance_create_depth(spawner.x, spawner.y, 0, obj_test_player);
			} else {
				var unit = instance_create_depth(spawner.x, spawner.y, 0, obj_test_enemy);
			}
			ds_list_add(global.units, unit);
		}
		combatPhase = phase.startTurn;
	break;
	
	case phase.startTurn:
		//spd_sort(global.units);
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
		if(global.selectedUnit == global.units[|0]){
			obj_battle_text.text_current = 1;
		} else {
			obj_battle_text.text_current = 7;
		}
		
		if(!allow_input){
			allow_input = true;
			event_user(1);
		}
		combatPhase = phase.wait;
	break;
	
	case phase.wait:
		if(global.selectedUnit.turn_finished == true){
			units_finished++; 
			combatPhase = phase.process;
			event_user(0);
			layer_set_visible(target_ui, false);
			instance_deactivate_layer(target_ui);
			layer_set_visible(battle_ui, false);
			instance_deactivate_layer(battle_ui);
		}
	break;
	
	case phase.process:
		if(process_finished == true){
			combatPhase = phase.checkFinish;
			global.targeting = false;
			for(var i=0; i<ds_list_size(global.units); i++){
				with(global.units[|i]){
					draw_target = false;
				}
			}
		}
	break;
	
	case phase.checkFinish:
		process_finished = false;
		if(global.selectedTargets.current[@HP] <= 0){
			ds_list_delete(global.units, ds_list_find_index(global.units, global.selectedTargets.id));
			instance_destroy(global.selectedTargets.id);
		}
		if(ds_list_size(global.units) <= 1){
			combatPhase = phase.win;
		} else {
		//if(keyboard_check_released(vk_space)){
			combatPhase = phase.endTurn;
		//}
		}
		/*if(keyboard_check_released(vk_enter)){
			combatPhase = phase.win;
		}
		if(keyboard_check_released(vk_control)){
			combatPhase = phase.lose;
		}*/
	break;
	
	case phase.endTurn:
		selected_finished = false;
		global.selectedTargets = noone;
		ds_list_clear(global.targets);
		combatPhase = phase.startTurn;
	break;
	
	case phase.win:
		obj_battle_text.text_current = 5;
		if(!instance_exists(obj_warp)){
			var inst = instance_create_depth(0, 0, -999, obj_warp);
			inst.target_x = global.player_x;
			inst.target_y = global.player_y;
			inst.target_rm = global.last_room;
			inst.target_face = DOWN;
		}
	break;
	
	case phase.lose:
		obj_battle_text.text_current = 6;
		if(!instance_exists(obj_warp)){
			var inst = instance_create_depth(0, 0, -999, obj_warp);
			inst.target_x = global.player_x;
			inst.target_y = global.player_y;
			inst.target_rm = global.last_room;
			inst.target_face = DOWN;
		}
	break;
}
