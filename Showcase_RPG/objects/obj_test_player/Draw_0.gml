//draw_self();
//draw_self();
if(draw_target){
	draw_sprite(spr_targeting, 0, x-32, y-32);
}

var name_displace = string_length(name) * 5

draw_text(x - name_displace, y - 90, name); //debug: print stats and id
draw_text(x + 50, y - 56, string(current[HP]) + "/" + string(base[HP]));
