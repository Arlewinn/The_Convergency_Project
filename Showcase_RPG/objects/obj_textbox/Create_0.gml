depth = -99999;

//textbox params
tbox_width = 180;
tbox_height = 50;
border = 8;
line_sep = 12;
line_width = (tbox_width - border * 2) ;
txtb_spr = spr_textbox;
txtb_img = 0;
txtb_img_spd = 6/60;

//the text
page_num = 0;
page = 0;
//words[0] = "";
words[0] = "In a hole in the ground, lived a hobbit.";
//text[1] = "DEFAULT TEXT DEFAULT TEXT DEFAULT TEXT DEFAULT TEXT DEFAULT TEXT DEFAULT TEXT DEFAULT TEXT DEFAULT TEXT DEFAULT TEXT DEFAULT TEXT";
//text[2] = "テクスト　テクスト　テクスト　テクスト　テクスト　テクスト　テクスト　テクスト　テクスト　テクスト　テクスト　テクスト　テクスト　テクスト　テクスト";
text_length[0] = string_length(words[0]);
draw_char = 0;
text_speed = 0.5;
text_scale = 0.5;

setup = false;

//font params
font = fnt_dialogue;

//variable so that the player interacting with the object doesn't skip the text animation automatically
wait = true;
