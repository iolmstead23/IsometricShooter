/// @description Update Zombie
// You can write your code in this editor


// chase the player
if (object_exists(obj_player) and distance_to_object(obj_player) < 250) {
	direction = (point_direction(x,y,obj_player.x,obj_player.y) div 45) * 45;
	speed = 1;
	state = "walk";
} else {
	speed = 0;
	state = "idle";
}