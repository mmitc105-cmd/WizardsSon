half_width = sprite_width /2;
half_height = sprite_height/2;

x = clamp(x, half_width, room_width - half_width);
y = clamp(y, half_height, room_height - half_height);


if (back_timer > 0) {
    // retreating: move directly away from the player
    back_timer--;
    var away = point_direction(obj_player.x, obj_player.y, x, y);
    var nx = x + lengthdir_x(move_speed, away);
    var ny = y + lengthdir_y(move_speed, away);
	
	// don't back into walls
    if (!place_meeting(nx, y, obj_wall)) x = nx;
    if (!place_meeting(x, ny, obj_wall)) y = ny;
}
else {
    // chasing: walks toward the player and steers around solid objects
    mp_potential_step_object(obj_player.x, obj_player.y, move_speed, obj_wall);

    // close enough to count as a hit
    if (place_meeting(x, y, obj_player)) {
        obj_player.hp -= damage;   // variable
        back_timer = 30;      // about half a second at 60 fps
    }
}