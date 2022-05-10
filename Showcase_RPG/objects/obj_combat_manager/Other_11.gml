/// @description Insert description here
// You can write your code in this editor
if(layer_get_visible(battle_ui)){
	layer_set_visible(battle_ui, false);
	instance_deactivate_layer(battle_ui);
} else {
	layer_set_visible(battle_ui, true);
	instance_activate_layer(battle_ui);
}
