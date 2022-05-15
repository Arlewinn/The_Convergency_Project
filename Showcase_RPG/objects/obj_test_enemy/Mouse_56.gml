/// @description Insert description here
// You can write your code in this editor
if(global.selectedUnit == id){
	obj_battle_text.text_current = 4;
	global.selectedTargets = global.units[|0];
	turn_finished = true;
	attack_will_hit = true;
	incoming_damage = 0;
	global.selectedTargets.damage_unit(global.selectedUnit.current[@ATK]);
	obj_combat_manager.process_finished = true;
	//obj_combat_manager.allow_input = false;
}
