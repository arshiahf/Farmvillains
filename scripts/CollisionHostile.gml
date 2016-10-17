var player = argument0;
var enemy = argument1;

var xSide = sqrt(sqr(72) - sqr(72 * cos(45)));
var yFront = sqrt(sqr(72) - sqr(72 * sin(45)));
var left = collision_line(enemy.x, enemy.y, -xSide, yFront, player, true, false);
var right = collision_line(enemy.x, enemy.y, xSide, yFront, player, true, false);
var front = collision_line(-xSide, yFront, xSide, yFront, player, true, false);

with enemy
{
/*
    if collision_circle(enemy.x, enemy.y, 72, player, true, true)
    {
        alarm[0] = 0
        alarm[1] = 0
        alarm[2] = 300;
        alarm[3] = 10;
        alarm[4] = 1;
        alarm[10] = 0;
    }
*/

    if left or right or front
    {
        alarm[0] = 0
        alarm[1] = 0
        alarm[2] = 300;
        alarm[3] = 10;
        alarm[4] = 1;
        alarm[10] = 0;
    }
}
