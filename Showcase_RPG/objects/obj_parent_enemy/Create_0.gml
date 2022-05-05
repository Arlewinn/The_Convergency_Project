#macro HP 0
#macro ATK 1
#macro SPD 2
#macro EXP 3

base[HP] = 10;
base[ATK] = 1;
base[SPD] = 1; //for random speed: irandom_range(1, 10);
base[EXP] = 10;

current[HP] = base[@ HP];
current[ATK] = base[@ ATK];
current[SPD] = base[@ SPD];
current[EXP] = base[@ EXP];

target_x = 0;
target_y = 0;
target_rm = 0;

target_face = 0;

turn_finished = false;
