/// @description Insert description here
// You can write your code in this editor
if(global.selectedUnit.id == id){
	turn_finished = true;
	attack_will_hit = true;
	//check_for_hit();
	damage_unit(global.selectedUnit.current[@ATK]);
}
