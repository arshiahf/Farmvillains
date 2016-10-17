var inst;

var firer = self;
var target = argument0; // Plug in the name of whatever is shooting in the argument1 section of the script
var projectile = argument1; // Plug in the name of whatever projectile you're using in the argument2 section of the script
var projectileSpeed = argument2; // Plug in how fast you want the projectile to move
var adjust = argument3; // Image angle adjustment so the projectile looks to fire straight

var firerX = firer.x;
var firerY = firer.y;
var targetX = target.x;
var targetY = target.y;

inst = instance_create(firerX, firerY, projectile);
with (inst)
{
    shooter = firer.id
    move_towards_point(targetX, targetY, projectileSpeed);
    image_angle = direction + adjust; // The "90" is a degree angle adjustment so the picture faces the target. Adjust as necessary
}
