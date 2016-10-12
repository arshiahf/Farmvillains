var cow = argument0;
var detect = argument1;
var alert = alertPoint;
var inst;
tempY = cow.y;
instance_create(cow.x, cow.y, alert);

with detect
{
    if distance_to_point(alert.x, alert.y) > 5
       {
        move_towards_point(alert.x, alert.y, 5);
        }
}

detect.image_angle = point_direction(detect.x, detect.y, cow.x, cow.y) - 90;
