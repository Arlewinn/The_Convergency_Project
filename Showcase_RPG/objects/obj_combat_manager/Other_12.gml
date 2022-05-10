/// @description Insert description here
// You can write your code in this editor
if(layer_get_visible(target_ui)){
	layer_set_visible(target_ui, false);
	instance_deactivate_layer(target_ui);
} else {
	layer_set_visible(target_ui, true);
	instance_activate_layer(target_ui);
}
