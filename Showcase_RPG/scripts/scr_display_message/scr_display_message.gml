// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_message(words, text_animate = true, text_speed = 0.5){
	if !obj_player.frozen
	{
		var thisMessage = instance_create_depth(0,0,0,obj_textbox);
		thisMessage.words = words;
		if !text_animate {thisMessage.wait = false}
		thisMessage.text_speed = text_speed;
	}
}