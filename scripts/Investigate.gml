var enemy = self;
var alert = argument0;

path_end();
if distance_to_object(alert) > 5 and !hostile
{
    mp_potential_step(alert.x, alert.y, 3, false);
    alarm[10] = 1;
}
else
{
    alarm[10] = 0
}

LookAt(alert, enemy);
