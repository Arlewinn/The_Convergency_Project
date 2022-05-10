/// @description Insert description here
// You can write your code in this editor
draw_self();
if(draw_target){
	draw_sprite(spr_targeting, 0, x, y);
}

draw_text(x, y-16, string(id) + ", " + string(current[HP]) + "/" + string(base[HP])); //debug: print stats and id
