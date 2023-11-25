/// @description Move with Gamepad or Keyboard + animate
// You can write your code in this editor
#region movement
	var xx = 0;
	var yy = 0;

	if gamepad_id > -1
	{
	    xx = gamepad_axis_value(gamepad_id, gp_axislh);
	    yy = gamepad_axis_value(gamepad_id, gp_axislv);
	    x += xx * 4;
	    y += yy * 4;
		
		var shoot_xx = gamepad_axis_value(gamepad_id, gp_axisrh);
		var shoot_yy = gamepad_axis_value(gamepad_id, gp_axisrv);
		shoot_dir = point_direction(x,y,x+shoot_xx,y+shoot_yy);
	} else {
		xx = keyboard_check(ord("D")) - keyboard_check(ord("A"))
		yy = keyboard_check(ord("S")) - keyboard_check(ord("W"))
		x += xx * 4;
		y += yy * 4;
		shoot_dir = point_direction(x,y,mouse_x,mouse_y);
	}
#endregion

#region animation
	if (abs((x - xprevious) + (y - yprevious)) = 0) {
		image_speed = 0;
		image_index = start_frame;
	} else {
		move_dir = point_direction(xprevious, yprevious, x, y);
		image_speed = .5
	
		if (image_index > start_frame + 8 or image_index < start_frame) { image_index = start_frame; }
	}

	if (move_dir >= 45 and move_dir < 135) // Up
	{ start_frame = 0; }
	else if (move_dir >= 135 and move_dir < 225) // Left
	{ start_frame = 9; }
	else if (move_dir >= 225 and move_dir < 315) // Down
	{ start_frame = 18; }
	else // Right
	{ start_frame = 27;}
#endregion

#region targeting

#endregion