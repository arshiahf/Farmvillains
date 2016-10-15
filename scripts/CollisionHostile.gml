var player = argument0;
var enemy = argument1;

with enemy
{
    if collision_circle(enemy.x, enemy.y, 48, player, true, true)
    {
        alarm[0] = 0
        alarm[1] = 0
        alarm[2] = 300;
        alarm[3] = 10;
        alarm[4] = 1;
    }
}
