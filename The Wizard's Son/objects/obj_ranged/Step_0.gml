half_width = sprite_width /2;
half_height = sprite_height/2;

x = clamp(x, half_width, room_width - half_width);
y = clamp(y, half_height, room_height - half_height);

shoot_timer--;

if (shoot_timer <= 0 && point_distance(x, y, obj_player.x, obj_player.y) < 30000) {
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    var bullet = instance_create_layer(x + lengthdir_x(128, dir), y + lengthdir_y(128, dir), "Instances", obj_enemyattack);
    bullet.direction = dir;
    bullet.image_angle = dir;
    bullet.speed = 6;

    shoot_timer = shoot_cooldown;
}
if (place_meeting(x, y, obj_player)) {
        obj_player.hp -= damage;
}