// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_button(){
	obj_battle_text.text_current = 2;
	global.targeting = true;
	for(var i=0; i<ds_list_size(global.units); i++){
		var _inst = global.units[|i];
		if(_inst != global.selectedUnit){
			ds_list_add(global.targets, _inst);
		}
	}
	with(obj_combat_manager){
		event_user(0);
		event_user(1);
		event_user(2);
		event_user(0);
	}
}
function cancel_button(){
	obj_battle_text.text_current = 1;
	global.targeting = false;
	ds_list_clear(global.targets);
	with(obj_combat_manager){
		event_user(1);
		if(layer_get_visible(target_ui)){
			event_user(2);
		}
	}
}

function run_button(){
	with(obj_combat_manager){
		combatPhase = phase.lose;
	}
}
