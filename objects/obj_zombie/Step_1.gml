/// @description Update Zombie Begin
// You can write your code in this editor

// update zombie sprite based upon state
switch (state) {
	
	case ("idle"):
		sprite_index = spr_zombie_idle;
		max_frames = 3;
		image_speed = .05;
	break;
	
	case ("walk"):
		sprite_index = spr_zombie_walk;
		max_frames = 7;
		image_speed = .1;
	break;
}

switch (direction div 45) {
	case(0): start_frame = 5 * max_frames; break; // Right
	case(1): start_frame = 4 * max_frames; break; // Up Right
	case(2): start_frame = 3 * max_frames; break; // Up
	case(3): start_frame = 2 * max_frames; break; // Up Left
	case(4): start_frame = 1 * max_frames; break; // Left
	case(5): start_frame = 0 * max_frames; break; // Down Left
	case(6): start_frame = 7 * max_frames; break; // Down
	case(7): start_frame = 6 * max_frames; break; // Down Right
}

// cap the animation
if (image_index > start_frame + max_frames or image_index < start_frame)
{ image_index = start_frame; }