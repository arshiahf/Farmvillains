var alert = argument0;
var obj = argument1;

with alert
{
    if instance_exists(alert) and instance_exists(obj)
    {
        x = obj.x;
        y = obj.y - obj.sprite_height / 2 - 10;
        obj.alarm[11] = 1;
    }
    else if !instance_exists(alert) and instance_exists(obj)
    {
        obj.alarm[11] = 0;
    }
    else if !instance_exists(obj) and instance_exists(alert)
    {
        with alert
        {
            instance_destroy()
        }
    }
}
