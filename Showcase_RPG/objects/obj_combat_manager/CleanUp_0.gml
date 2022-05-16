/// @description Insert description here
// You can write your code in this editor
if(ds_exists(global.units, ds_type_list)){
	ds_list_destroy(global.units);
}
if instance_exists(obj_player) {obj_player.visible = true};
