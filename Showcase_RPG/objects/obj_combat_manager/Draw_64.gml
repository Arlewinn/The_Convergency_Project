/// @description debugging
// You can write your code in this editor
draw_text(0,0, string(combatPhase));//debug: print combat phase

for (var i = 0; i < ds_list_size(global.units); i++){
	draw_text(0, 16+(i*16), string(global.units[|i]))//debug: print unit ids
}
