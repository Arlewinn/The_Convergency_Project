#macro camera_width camera_get_view_width(view_camera[0])
#macro camera_height camera_get_view_height(view_camera[0])
#macro display_scale_x display_get_gui_width()
#macro display_scale_y display_get_gui_height()

#macro HP 0
#macro ATK 1
#macro SPD 2
#macro EXP 3
//#macro DEF 4
//#macro ACC 5

base[HP] = 10;
base[ATK] = 2;
base[SPD] = irandom_range(1, 10);
base[EXP] = 10;
//base[DEF] = 1;
//base[ACC] = 0.95;

current[HP] = base[@ HP];
current[ATK] = base[@ ATK];
current[SPD] = base[@ SPD];
current[EXP] = base[@ EXP];
//current[DEF] = base[@ DEF];
//current[ACC] = base[@ ACC];

target_x = 0;
target_y = 0;
target_rm = 0;

target_face = 0;

turn_finished = false;
attack_will_hit = false;
incoming_damage = 0;
hp_bar_width = sprite_get_width(spr_ui_hp);
hp_bar_height = sprite_get_height(spr_ui_hp);

function damage_unit(attack){
	var damage = attack;
	//var damage = attack - current[@DEF];
	current[@HP] -= max(0, damage);
}
