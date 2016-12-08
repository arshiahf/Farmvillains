var enemy = self
var player = argument0;

alert = true
var alertSpot = instance_create(player.x, player.y, alertPoint);
var alertPath = path_add();
mp_potential_path(alertPath, alertSpot.x, alertSpot.y, moveSpeed, 4, false)
path_start(alertPath, moveSpeed, 0, 0)
var duration = path_get_length(alertPath) / moveSpeed;
alertSpot.alarm[0] = duration
AlertAbove(duration);
alarm_set(5, duration);
