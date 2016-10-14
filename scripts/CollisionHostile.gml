var cow = argument0;
var detect = argument1;

with detect
{
    if collision_circle(detect.x, detect.y, 48, cow, true, true)
    {
        alarm_set(1, 10);
        alarm_set(3, 300);
        alarm_set(4, 1);
        alarm_set(5, 0);
        alarm_set(6, 0);
    }
}
