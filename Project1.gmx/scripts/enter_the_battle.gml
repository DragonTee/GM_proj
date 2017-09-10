with instance_create(room_width / 2 - cos(degtorad(global.battle_angle)) * global.battle_offset, room_height / 2 + sin(degtorad(global.battle_angle)) * global.battle_offset, PlayerShip)
{
    image_angle = global.battle_fleet1_angle;
}
ini_open('fleet.ini');
global.ship_count = ini_read_real('Fleet', 'ship_count', 0);
ini_close();
for(global.index = 1; global.index <= global.ship_count; global.index++)
{
    ind = string(global.index);
    ini_open('fleet.ini');
    global.ship_obj = asset_get_index(ini_read_string(ind, 'ship', 0));
    global.ship_x = ini_read_real(ind, 'x', 0);
    global.ship_y = ini_read_real(ind, 'y', 0);
    global.ship_name = ini_read_string(ind, 'name', '0');
    ini_close();
    with instance_create(room_width / 2 - cos(degtorad(global.battle_angle)) * global.battle_offset + cos(degtorad(global.battle_fleet1_angle + 90)) * -global.ship_y + sin(degtorad(global.battle_fleet1_angle + 90)) * global.ship_x,
                         room_height / 2 + sin(degtorad(global.battle_angle)) * global.battle_offset - sin(degtorad(global.battle_fleet1_angle + 90)) * -global.ship_y + cos(degtorad(global.battle_fleet1_angle + 90)) * global.ship_x,
                         global.ship_obj){
        name = global.ship_name;
        name = global.ship_name;
        ini_open('Ships.ini');
        acc = ini_read_real(name, 'acceleration', 0.5);
        max_hp = ini_read_real(name, 'max_hp', 1);
        rotation_speed = ini_read_real(name, 'rotation_speed', 1);
        turret_ammount = ini_read_real(name, 'turret_ammount', 0);
        for (i = 0; i < turret_ammount; i++)
        {
            turret_name[i] = ini_read_string(name, 'turret_name[' + string(i) + ']', 'Turret');
            turret_x[i] = ini_read_real(name, 'turret_x[' + string(i) + ']', 0);
            turret_y[i] = ini_read_real(name, 'turret_y[' + string(i) + ']', 0);
        }
        ini_close();
        for (i = 0; i < turret_ammount; i++)
        {
        global.turret_parent = self.id;
        global.turret_name = turret_name[i];
        global.turret_x = turret_x[i];
        global.turret_y = turret_y[i];
        turret[i] = instance_create(x, y, Turret);
        }
        image_angle = global.battle_fleet1_angle;
    }
}
//with instance_create(room_width / 2 + cos(degtorad(global.battle_angle)) * global.battle_offset, room_height / 2 - sin(degtorad(global.battle_angle)) * global.battle_offset, EnemyShip)
//{
//    image_angle = global.battle_fleet2_angle;
//}

