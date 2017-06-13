{
with instance_create(room_width / 2 - cos(degtorad(global.battle_angle)) * global.battle_offset, room_height / 2 + sin(degtorad(global.battle_angle)) * global.battle_offset, PlayerShip)
{
    image_angle = global.battle_fleet1_angle;
}
with instance_create(room_width / 2 + cos(degtorad(global.battle_angle)) * global.battle_offset, room_height / 2 - sin(degtorad(global.battle_angle)) * global.battle_offset, EnemyShip)
{
    image_angle = global.battle_fleet2_angle;
}
}

