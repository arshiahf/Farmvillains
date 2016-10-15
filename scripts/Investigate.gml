var enemy = argument0;
var alert = argument1;
var adjust = argument2;

with enemy
{
    path_end();
    if distance_to_object(alert) > 5
    {
        mp_potential_step(alert.x, alert.y, 5, false);
        alarm[10] = 1;
    }
    else
    {
        alarm[10] = 0
    }
}

LookAt(alert, enemy, adjust);
