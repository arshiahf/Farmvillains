var inst;

var player = argument0; // Plug in the name of what's being shot at in the argument1 section of the script
var enemy = argument1; // Plug in the name of whatever is shooting in the argument2 section of the script
var bullet = argument2; // Plug in the name of whatever bullet you're using in the argument3 section of the script

var playerX = player.x;
var playerY = player.y;
var enemyX = enemy.x;
var enemyY = enemy.y;

inst = instance_create(enemyX, enemyY, bullet);
with (inst)
{
speed = 6;
direction = point_direction(enemyX, enemyY, playerX, playerY);
image_angle = direction - 90; // The "90" is a degree angle adjustment so the picture faces the target. Adjust as necessary
}
