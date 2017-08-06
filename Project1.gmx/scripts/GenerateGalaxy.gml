global.Galaxy_name = argument[0];
global.Galaxy_star_count = argument[1];
ini_open(global.Galaxy_name + '.ini');
ini_write_string('Galaxy', 'name', global.Galaxy_name);
ini_write_real('Galaxy', 'star_count', global.Galaxy_star_count);
for (i = 0; i < global.Galaxy_star_count; i++)
{
    ind = string(i);
    ini_write_real(ind, 'x', random(room_width) - room_width / 2);
    ini_write_real(ind, 'y', random(room_height) - room_height / 2);
    r = random(100);
    if (r < 25)
        sp = 'galaxy_star_red_sp';
    else
    if (r >= 25 && r < 50)
        sp = 'galaxy_star_yellow_sp';
    else
    if (r >= 50 && r < 75)
        sp = 'galaxy_star_purple_sp';
    else
        sp = 'galaxy_star_blue_sp';
    ini_write_string(ind, 'sprite', sp);
}
ini_close();
