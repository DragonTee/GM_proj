{
with instance_create(room_width / 2 - cos(degtorad(global.battle_angle)) * global.battle_offset, room_height / 2 + sin(degtorad(global.battle_angle)) * global.battle_offset, PlayerShip)
{
    image_angle = global.battle_fleet1_angle;
}
ini_open('fleet.ini');
global.ship_count = ini_read_real('Fleet', 'ship_count', 0);
for(global.index = 1; global.index <= global.ship_count; global.index++)
{
    ind = string(global.index);
    global.ship_obj = asset_get_index(ini_read_string(ind, 'ship', 0));
    global.ship_x = ini_read_real(ind, 'x', 0);
    global.ship_y = ini_read_real(ind, 'y', 0);
    with instance_create(room_width / 2 - cos(degtorad(global.battle_angle)) * global.battle_offset + cos(degtorad(global.battle_fleet1_angle + 90)) * -global.ship_y + sin(degtorad(global.battle_fleet1_angle + 90)) * global.ship_x,
                         room_height / 2 + sin(degtorad(global.battle_angle)) * global.battle_offset - sin(degtorad(global.battle_fleet1_angle + 90)) * -global.ship_y + cos(degtorad(global.battle_fleet1_angle + 90)) * global.ship_x,
                         global.ship_obj){
        image_angle = global.battle_fleet1_angle;
    }
}
ini_close();
with instance_create(room_width / 2 + cos(degtorad(global.battle_angle)) * global.battle_offset, room_height / 2 - sin(degtorad(global.battle_angle)) * global.battle_offset, EnemyShip)
{
    image_angle = global.battle_fleet2_angle;
}
}