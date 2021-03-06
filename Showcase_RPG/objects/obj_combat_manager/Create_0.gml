/// @description Insert description here
// You can write your code in this editor
randomize();

enum phase{
	init,
	startTurn,
	wait,
	process,
	checkFinish,
	endTurn,
	win,
	lose
}

combatPhase = phase.init;
units_finished = 0;
selected_finished = false;
process_finished = false;
allow_input = false;
global.selectedUnit = noone;
global.units = ds_list_create();
global.selectedTargets = noone;
global.targeting = false;
global.targets = ds_list_create();

battle_ui = layer_get_id("BattleUI");
target_ui = layer_get_id("TargetUI");

if instance_exists(obj_player) {obj_player.visible = false;}

