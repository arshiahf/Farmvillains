var target = argument0; // Plug in the name of what's being looked at in the argument1 section of the script
var obj = argument1; // Plug in the name of whatever is looking in the argument2 section of the script

direct = point_direction(obj.x, obj.y, target.x, target.y) + obj.adjust;
obj.direction = direct;
obj.image_angle = direct;
