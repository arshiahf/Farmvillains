var enemy = self
var player = argument0;

with enemy
{
    alert = true
    AlertAbove();
    var alert = instance_create(player.x, player.y, alertPoint);
    Investigate(alert);
    alarm_set(5, 80);
}
