//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
acc_key = keyboard_check_pressed(vk_space);

op_length = array_length(option[menu_level]);

//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};

//using the options
if acc_key {	
	var sml = menu_level;

	switch(menu_level){
	
		//main menu
		case 0:
			switch(pos){
			//start game
			case 0:
				if room == rm_title_test {room_goto(rm_dungeon_b1)};
				else {instance_destroy()};
				break;
			//settings
			case 1: menu_level = 1; break;	
			//quit game
			case 2: game_end(); break;
			}
		//settings menu	
		case 1:
			switch(pos)
			{
				//widnow size
				case 0: break;
			
				//brightness
				case 1: break;
			
				//controls
				case 2: break;
			
				//back
				case 3: menu_level = 0; break;
			}
		}
	
	//correct option length
	if sml != menu_level {pos = 0}
	op_length = array_length(option[menu_level]);
}


