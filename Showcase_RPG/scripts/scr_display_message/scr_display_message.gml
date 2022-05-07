// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_message(words){
	if !obj_player.frozen
	{
		var thisMessage = instance_create_depth(0,0,0,obj_textbox);
		thisMessage.words[0] = words[0];
	}
}