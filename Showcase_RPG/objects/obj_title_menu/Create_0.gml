width = 220;
height = 180;

op_boarder = 10;
op_space = 30;

pos = 0;

text_scale = 0.5;

font = fnt_menu;

depth = -9999;

//start menu
option[0, 0] = str("start_start");
option[0, 1] = str("start_settings");
option[0, 2] = str("start_quit");

if room != rm_title_test {option[0, 0] = str("start_resume")}

//settings
lang = ["< English >", "< 日本語 >", "< 한국어 >"];
lang_num = 0;
if obj_polyglot._currLocale == "en-US" {lang_num = 0}
if obj_polyglot._currLocale == "ja-JP" {lang_num = 1}
if obj_polyglot._currLocale == "ko-KR" {lang_num = 2}


option[1, 0] = str("settings_windowSize");
option[1, 1] = str("settings_brightness");
option[1, 2] = str("settings_controls");
option[1, 3] = lang[lang_num];
option[1, 4] = str("settings_back");

op_length = 0;
menu_level = 0;

monster_move_speed = 0;
if instance_exists(obj_monster) {monster_move_speed = obj_monster.move_spd}
