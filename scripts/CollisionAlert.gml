var player = argument0;
var enemy = argument1;

with enemy
{
    if collision_circle(enemy.x, enemy.y, 96, player, true, true)
    {
        MakeAlert(self);
        var alert = instance_create(player.x, player.y, alertPoint);
        Investigate(self, alert);
        alarm_set(5, 80);
    }
}
