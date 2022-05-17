// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_message_wrap(words, text_animate = true, text_speed = 0.5, text_scale = 0.5, break_point = 18){
	if instance_exists(obj_polyglot)
	{
		var newWords = [];
		if obj_polyglot._currLocale == "ja-JP" || obj_polyglot._currLocale == "zh-TW"
		{
			for (i = 0; i < array_length(words); i++)
			{
				var place = 0;
				var sentence = words[i];
				for (a = 0; a < string_length(sentence); a++)
				{
					if (a%break_point) == 0
					{
						sentence = string_insert(" ", sentence, a);
					}
				}
				array_push(newWords, sentence);
			}
		display_message(newWords, text_animate, text_speed, text_scale);
		}
		else {display_message(words, text_animate, text_speed, text_scale);}
	}
	else {display_message(words, text_animate, text_speed, text_scale);}
}