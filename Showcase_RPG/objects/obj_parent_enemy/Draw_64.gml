/// @description Insert description here
// You can write your code in this editor
/*var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var xx = (x-cx)*display_scale_x;
var yy = (y-cy)*display_scale_y;*/
var xx = x-32;
var yy = y-32;
var draw_hp = current[@ HP]/base[@ HP];

draw_sprite(spr_ui_hp, 0, xx, yy-20);
draw_sprite_part(spr_ui_hp, 1, 0, 0, hp_bar_width*draw_hp, hp_bar_height, xx, yy-20);
