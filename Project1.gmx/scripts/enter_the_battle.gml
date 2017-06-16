{
with instance_create(room_width / 2 - cos(degtorad(global.battle_angle)) * global.battle_offset, room_height / 2 + sin(degtorad(global.battle_angle)) * global.battle_offset, PlayerShip)
{
    image_angle = global.battle_fleet1_angle;
}
global.fleet_save = file_text_open_read(working_directory + "fleet.save");
if (global.fleet_save != -1)
{
while (!file_text_eof(global.fleet_save))
{
    ship_read();
}
}
show_message(working_directory);
file_text_close(global.fleet_save);
with instance_create(room_width / 2 + cos(degtorad(global.battle_angle)) * global.battle_offset, room_height / 2 - sin(degtorad(global.battle_angle)) * global.battle_offset, EnemyShip)
{
    image_angle = global.battle_fleet2_angle;
}
}
