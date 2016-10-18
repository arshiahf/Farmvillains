var alert = argument0;
var obj = argument1;

with alert
{
    if instance_exists(alert)
    {
        x = obj.x;
        y = obj.y - obj.sprite_height / 2 - 10;
        obj.alarm[11] = 1;
    }
    else
    {
        obj.alarm[11] = 0;
    }
}
