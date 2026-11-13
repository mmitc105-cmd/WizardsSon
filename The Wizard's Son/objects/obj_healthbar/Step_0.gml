if (instance_exists(player)) {
    x = player.x;
    y = player.bbox_bottom + bar_offset;
}
else {
    instance_destroy();
}