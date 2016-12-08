var inst

var firer = self
var target = argument0; // Plug in the name of whatever is shooting in the argument1 section of the script
var projectile = argument1 // What they're shooting
var spread = argument2; // How many projectiles will be on either side of the main one. 0 is one projectile
var adjust = argument3; // The maximum firing angle of any given shot

var firerX = firer.x;
var firerY = firer.y;
var targetX = target.x;
var targetY = target.y;

var i
for (i = 0; i <= spread; i += 1)
{
    if i != 0
    {
        var j
        for (j = -1; j < 2; j += 2)
        {
            inst = instance_create(firerX, firerY, projectile);
            with (inst)
            {
                shooter = firer.id
                shooterIndex = firer.object_index
                alarm[0] = firer.mainGunDeathTimer
                move_towards_point(targetX, targetY, firer.mainGunSpeed);
                direction = direction + j * adjust * i / spread
                inst.moveSpeed = firer.mainGunSpeed
            }
        }
    }
    else if i == 0
    {
        inst = instance_create(firerX, firerY, projectile);
        with (inst)
        {
            shooter = firer.id
            shooterIndex = firer.object_index
            alarm[0] = firer.mainGunDeathTimer
            move_towards_point(targetX, targetY, firer.mainGunSpeed);
            inst.moveSpeed = firer.mainGunSpeed
        }
    }
}
