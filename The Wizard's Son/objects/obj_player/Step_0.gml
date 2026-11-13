// Movement keys
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));

move_speed = 4;

h_input = key_right - key_left;
v_input = key_down - key_up;

// Normalize diagonal movement
var length = point_distance(0, 0, h_input, v_input);

var move_x = 0;
var move_y = 0;

if (length > 0) {
    move_x = (h_input / length) * move_speed;
    move_y = (v_input / length) * move_speed;
}

// Horizontal collision
if (!place_meeting(x + move_x, y, obj_wall) &&
    !place_meeting(x + move_x, y, obj_melee)) {
    x += move_x;
}

// Vertical collision
if (!place_meeting(x, y + move_y, obj_wall) &&
    !place_meeting(x, y + move_y, obj_melee)) {
    y += move_y;
}

half_width = sprite_width /2;
half_height = sprite_height/2;

x = clamp(x, half_width, room_width - half_width);
y = clamp(y, half_height, room_height - half_height);

// Update facing direction based on movement
if (h_input != 0 || v_input != 0) {
    facing = point_direction(0, 0, h_input, v_input);
}

// Flip sprite based on horizontal movement
if (h_input > 0) {
    image_xscale = 1;
}
else if (h_input < 0) {
    image_xscale = -1;
}

// Shoot magic by pressing space
if (keyboard_check_pressed(vk_space)) {

    var spawn_distance = 40;

    var attack_x = x + lengthdir_x(spawn_distance, facing);
    var attack_y = y + lengthdir_y(spawn_distance, facing);

    var attack = instance_create_layer(
        attack_x,
        attack_y,
        "Instances",
        obj_attack
    );

    attack.direction = facing;
    attack.speed = 10;
}


if (keyboard_check(vk_alt) and keyboard_check_pressed(ord("E"))){
	
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_melee);
}