/// @description debugging
// You can write your code in this editor
draw_text(0,0, "phase:" + string(combatPhase) + " target:" + string(global.selectedTargets));//debug: print combat phase

for (var i = 0; i < ds_list_size(global.units); i++){
	draw_text(0, 16+(i*16), string(global.units[|i])+ ", " + string(global.units[|i].current[HP]) + "/" + string(global.units[|i].base[HP]) + " " + string(global.units[|i].base[SPD]))//debug: print unit ids
}
