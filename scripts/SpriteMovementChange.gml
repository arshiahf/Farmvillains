var obj = argument0;
var moving = argument1;
var standing = argument2;

with obj
{
    if abs(speed) > 0
    {
        sprite_index = moving;
    }
    else
    {
        sprite_index = standing;
    }
}
