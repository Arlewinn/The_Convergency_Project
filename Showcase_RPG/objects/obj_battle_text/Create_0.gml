/// @description Insert description here
// You can write your code in this editor
text[0] = "Enemies appeared!";
text[1] = "What will you do?";
text[2] = "You attacked!";
text[3] = "Enemy attacked!";
text[4] = "You won!";
text[5] = "You lost!";


text_current = 0;
text_last = 5;
text_width = sprite_width - 4;
text_x = x+4;
text_y = y+4;
char_current = 1;
char_speed = 0.25;
text[text_current] = scr_battle_text(text[text_current], text_width);
