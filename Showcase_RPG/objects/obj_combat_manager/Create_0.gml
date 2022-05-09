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
global.selectedUnit = noone;
global.units = ds_list_create();
