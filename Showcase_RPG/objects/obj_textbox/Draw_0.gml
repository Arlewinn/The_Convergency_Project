tbox_x = camera_get_view_x(view_camera[0]) + 50;
tbox_y = camera_get_view_y(view_camera[0]) + 144;

accept_key = keyboard_check_pressed(vk_space);

//setup
if setup == false 
	{
		
		setup = true;
		obj_player.frozen = true;
		draw_set_font(fnt_dialogue);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		
		//loopers
		page_num = array_length(words);
		for(var p = 0; p < page_num ; p++) 
			{
				//finding how many characters per page
				text_length[p] = string_length(words[p]);
			}
				
				//gets offset for textbox in case there is a characte portrait on screen
				//text_x_offset[p] = 44;
		
	}
	
	
//typing text

if draw_char < text_length[page]
	{
		
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[page]);
	
	}
	
	
//-------flip through pages-----------

if accept_key && !wait
	{
	if draw_char == text_length[page]
		{
		if page < page_num - 1
			{
				page++;
				draw_char = 0;
			}
		else
			{
			obj_player.frozen = false;
			instance_destroy();
			}
		}
		
	else
		{
		draw_char = text_length[page];
		}
		
	}

//-------------------draw the textbox----------------
txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);
//back of the textbox
draw_sprite_ext(txtb_spr, txtb_img, tbox_x, tbox_y, tbox_width/txtb_spr_w, tbox_height/txtb_spr_h, 0, c_white, 1);

//-----------------draw the text--------------------
var _drawtext = string_copy(words[page], 1, draw_char);
draw_text_ext_transformed(tbox_x + border, tbox_y + border, _drawtext, line_sep / text_scale, line_width / text_scale, text_scale, text_scale, 0);

//code that changes the wait variable so players can progress the text.
if wait {wait = false};
