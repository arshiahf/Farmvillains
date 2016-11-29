var enemy = self
var player = argument0;

with enemy
{
    alert = true
    AlertAbove();
    var alertSpot = instance_create(player.x, player.y, alertPoint);
    Investigate(alertSpot);
    alarm_set(5, 80);
}
