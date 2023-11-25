/// @description Insert description here
// You can write your code in this editor
var _xx = lengthdir_x(max_shoot_distance, shoot_dir);
var _yy =  lengthdir_y(max_shoot_distance, shoot_dir);
var _collision_obj = collision_line(x, y, x + _xx, y + _yy, all, true, true);

if (_collision_obj != noone) {
	var _dist = distance_to_object(_collision_obj);
	draw_line(x, y, x + lengthdir_x(_dist, shoot_dir), y + lengthdir_y(_dist, shoot_dir));
} else {
	draw_line(x, y, x + _xx, y + _yy);
}

draw_self()