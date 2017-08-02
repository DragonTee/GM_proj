global.Galaxy_name = argument[0];
global.Galaxy_star_count = argument[1];
ini_open(global.Galaxy_name + '.ini');
ini_write_string('Galaxy', 'name', global.Galaxy_name);
ini_write_real('Galaxy', 'star_count', global.Galaxy_star_count);
for (i = 0; i < global.Galaxy_star_count; i++)
{
    ind = string(i);
    ini_write_real(ind, 'x', random(800) - 400);
    ini_write_real(ind, 'y', random(800) - 400);
}
ini_close();
