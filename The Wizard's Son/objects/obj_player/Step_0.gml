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

half_width = sprite_width /2;
half_height = sprite_height/2;

x = clamp(x, half_width, room_width - half_width);
y = clamp(y, half_height, room_height - half_height);

// Flip sprite based on movement direction
if (h_input > 0) {
    facing = 1;
    image_xscale = 1;
}
else if (h_input < 0) {
    facing = -1;
    image_xscale = -1;
}

// Shoot magic by pressing space
if (keyboard_check_pressed(vk_space)) {
    var attack_x;

    if (facing == 1) {
        attack_x = bbox_right + 10;
    }
    else {
        attack_x = bbox_left - 10;
    }

    var attack = instance_create_layer(
        attack_x,
        y,
        "Instances",
        obj_attack
    );

    attack.direction = (facing == 1) ? 0 : 180;
    attack.speed = 10;
}

