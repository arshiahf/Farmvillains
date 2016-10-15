var player = argument0;
var enemy = argument1;
var adjust = argument2;

with enemy
{
    if collision_circle(enemy.x, enemy.y, 144, player, true, true)
    {
        MakeAlert(self);
        var alert = instance_create(player.x, player.y, alertPoint);
        Investigate(self, alert, adjust);
        alarm_set(0, 80);
    }
}
