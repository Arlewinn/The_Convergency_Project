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

function damage_unit(attack){
	var damage = attack;
	//var damage = attack - current[@DEF];
	current[@HP] -= max(0, damage);
}
