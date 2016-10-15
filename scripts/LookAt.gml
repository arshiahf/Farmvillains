var target = argument0; // Plug in the name of what's being looked at in the argument1 section of the script
var obj = argument1; // Plug in the name of whatever is looking in the argument2 section of the script
var adjust = argument2; // Plug in how much you need to change the sprite for it to face the direction you want

obj.image_angle = point_direction(obj.x, obj.y, target.x, target.y) + adjust;
