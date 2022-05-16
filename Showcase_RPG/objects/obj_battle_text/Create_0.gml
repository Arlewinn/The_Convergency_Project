/// @description Insert description here
// You can write your code in this editor
text[0] = str("btl_emy_appear");
text[1] = str("btl_your_turn");
text[2] = str("btl_target");
text[3] = str("btl_attack");
text[4] = str("btl_emy_atk");
text[5] = str("btl_win");
text[6] = str("btl_run");
text[7] = str("btl_emy_turn");
text[8] = str("btl_lose");

text_current = 0;
text_last = 8;
text_width = sprite_width - 4;
text_x = x+4;
text_y = y+4;
char_current = 1;
char_speed = 0.25;
text[text_current] = scr_battle_text(text[text_current], text_width);
