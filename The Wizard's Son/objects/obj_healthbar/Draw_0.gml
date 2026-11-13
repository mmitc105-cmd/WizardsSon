if (instance_exists(player)) {

    var hp_percent = clamp(player.hp / player.max_hp, 0, 1);

    // Background (red)
    draw_set_color(c_red);
    draw_rectangle(
        x - bar_width / 2,
        y,
        x + bar_width / 2,
        y + bar_height,
        false
    );

    // Current health (green)
    draw_set_color(c_lime);
    draw_rectangle(
        x - bar_width / 2,
        y,
        x - bar_width / 2 + bar_width * hp_percent,
        y + bar_height,
        false
    );

    draw_set_color(c_white);
}