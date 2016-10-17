var player = argument0;
var enemy = argument1;
var adjust = argument2;

var xSide = sqrt(sqr(144) - sqr(144 * cos(45)))
var yFront = sqrt(sqr(144) - sqr(144 * sin(45)))
var left = collision_line(enemy.x, enemy.y, -xSide, yFront, player, true, false)
var right = collision_line(enemy.x, enemy.y, xSide, yFront, player, true, false)
var front = collision_line(-xSide, yFront, xSide, yFront, player, true, false)

with enemy
{
/*
    if collision_circle(enemy.x, enemy.y, 144, player, true, true)
    {
        MakeAlert(self);
        var alert = instance_create(player.x, player.y, alertPoint);
        Investigate(self, alert, adjust);
        alarm_set(0, 80);
    }
*/    
    if left or right or front
    {
        MakeAlert(self);
        var alert = instance_create(player.x, player.y, alertPoint);
        Investigate(self, alert, adjust);
        alarm_set(0, 80);
    }
}
