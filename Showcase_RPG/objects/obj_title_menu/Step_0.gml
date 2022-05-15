//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
acc_key = keyboard_check_pressed(vk_space);

right_key = keyboard_check_pressed(vk_right);
left_key = keyboard_check_pressed(vk_left);

op_length = array_length(option[menu_level]);

//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};

//using the options

if left_key{
	//show_debug_message("left");
	if menu_level == 1 && pos == 3{
		if lang_num == 0 
		{
			lang_num = 3;
		}
		else {lang_num --}
		option[1, 3] = lang[lang_num];
	}
		
}

if right_key{
	//show_debug_message("right");
	if menu_level == 1 && pos == 3{
		if lang_num == 3 
		{
			lang_num = 0
		}
		else {lang_num ++}
		option[1, 3] = lang[lang_num];
	}
		
}

if acc_key {	
	var sml = menu_level;

	switch(menu_level){
	
		//main menu
		case 0:
			switch(pos){
			//start game
			case 0:
				if room == rm_title_test {room_goto(rm_labratory)};
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
				
				case 3:
					switch (lang_num)
					{
						case 0:
							if obj_polyglot._currLocale != "en-US"
							{
								change_lang("en-US");
								//obj_polyglot.setLocale("en-US");
								
							}
							if room == rm_title_test {menu_level = 0}
							else {instance_destroy()}
							break;
						case 1:
							if obj_polyglot._currLocale != "fr-FR"
							{
								change_lang("fr-FR");
								//obj_polyglot.setLocale("fr-FR");
								
							}
							if room == rm_title_test {menu_level = 0}
							else {instance_destroy()}
							break;
						case 2:
							if obj_polyglot._currLocale != "ja-JP"
							{
								change_lang("ja-JP");
								//obj_polyglot.setLocale("ja-JP");
								if room == rm_title_test {menu_level = 0}
								else {instance_destroy()}
								break;
							}
							if room == rm_title_test {menu_level = 0}
							else {instance_destroy()}
							break;
						case 3:
							if obj_polyglot._currLocale != "ko-KR"
							{
								change_lang("ko-KR");
								//obj_polyglot.setLocale("kr-KR");
								if room == rm_title_test {menu_level = 0}
								else {instance_destroy()}
								break;
							}
							if room == rm_title_test {menu_level = 0}
							else {instance_destroy()}
							break;
					}
					break;
			
				//back
				case 4: menu_level = 0; break;
			}
		}
	
	//correct option length
	if sml != menu_level {pos = 0}
	op_length = array_length(option[menu_level]);


}


