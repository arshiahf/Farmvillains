var inst;

var firer = self;
//var target = argument0; // Plug in the name of whatever is shooting in the argument1 section of the script
var projectile = argument0; // Plug in the name of whatever projectile you're using in the argument2 section of the script
var projectileSpeed = argument1; // Plug in how fast you want the projectile to move
var adjust = argument2; // Image angle adjustment so the projectile looks to fire straight

var firerX = firer.x;
var firerY = firer.y;
var targetX = mouse_x;
var targetY = mouse_y;

inst = instance_create(firerX, firerY, projectile);
with (inst)
{
    shooter = firer.id
    move_towards_point(targetX, targetY, projectileSpeed);
    image_angle = direction + adjust; // The "90" is a degree angle adjustment so the picture faces the target. Adjust as necessary
}

sprite_index = cowShooting

firer.noiseLevel = 16
SoundProduce()
