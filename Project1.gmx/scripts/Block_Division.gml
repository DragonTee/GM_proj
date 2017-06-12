{
if place_meeting(x, y, check) 
{
    instance_destroy();
    if (xsize >= 4 || ysize >= 4)
    {
        with instance_create(x, y, Block_obj) 
        {
            xsize = other.xsize/2
            ysize = other.ysize/2
            image_xscale = xsize/32
            image_yscale = ysize/32
            Block_Division()
        };
        with instance_create(x + xsize/2, y, Block_obj) 
        {
            xsize = other.xsize/2
            ysize = other.ysize/2
            image_xscale = xsize/32
            image_yscale = ysize/32
            Block_Division()
        };
        with instance_create(x, y + ysize/2, Block_obj) 
        {
            xsize = other.xsize/2
            ysize = other.ysize/2
            image_xscale = xsize/32
            image_yscale = ysize/32
            Block_Division()
        };
        with instance_create(x + xsize/2, y + ysize/2, Block_obj) 
        {
            xsize = other.xsize/2
            ysize = other.ysize/2
            image_xscale = xsize/32
            image_yscale = ysize/32
            Block_Division()
        };
    }
}
}