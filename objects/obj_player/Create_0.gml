/// @description Init Gamepad
// You can write your code in this editor

gamepad_id = -1;
start_frame = 0;
move_dir = 0;
shoot_dir = 0;
image_speed = 0;
max_shoot_distance = 1000;

for (var i = 0; i < 12; i += 1;)
{
    if gamepad_is_connected(i)
    {
        gamepad_id = i;
        gamepad_set_axis_deadzone(gamepad_id, 0.2);

        break;
    }
}