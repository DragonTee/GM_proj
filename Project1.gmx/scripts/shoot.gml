if (mouse_check_button(mb_left))
{
    with instance_create(x, y, bullet)
    {
        sp = 25 + random(5) - 2.5;
        motion_add(other.image_angle, sp);
    }
}