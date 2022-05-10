/// @description Insert description here
// You can write your code in this editor
if(btnState == button_state.active){
	if(MainFunc != noone and position_meeting(MOUSEGUI_X, MOUSEGUI_Y, id)){
		image_index = 1;
		if(HoverFunc != noone){
			script_execute(HoverFunc);
		}
		if(mouse_check_button(mb_left)){
			image_index = 2;
		}
		if(obj_combat_manager.allow_input && mouse_check_button_released(mb_left)){
			script_execute(MainFunc);
		}
	}else{
		image_index = 0;
	}
}
