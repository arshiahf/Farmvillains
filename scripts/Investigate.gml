var enemy = self;
var alert = argument0;

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

LookAt(alert, enemy);
