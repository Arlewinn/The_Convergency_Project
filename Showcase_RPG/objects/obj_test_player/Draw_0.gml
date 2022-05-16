if(draw_target){
	draw_sprite(spr_targeting, 0, x-32, y-32);
}

draw_text(x - 30, y - 100, name); //debug: print stats and id
draw_text(x - 30, y - 100, name + ", " + string(current[HP]) + "/" + string(base[HP]));
