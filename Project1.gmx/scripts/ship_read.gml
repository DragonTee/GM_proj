global.ship_index = global.index;
ind = string(global.index);
global.ship_obj = ini_read_string(ind, ship, 0);
global.ship_x = ini_read_real(ind, x, 0);
global.ship_y = ini_read_real(ind, y, 0);
