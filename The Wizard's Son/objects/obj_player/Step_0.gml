//Movement keys (either arrow keys or WASD)
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));



move_speed = 4;

h_input = key_right - key_left;
v_input = key_down - key_up;

h_speed = h_input * move_speed;
v_speed = v_input * move_speed;

x += h_speed;
y += v_speed;