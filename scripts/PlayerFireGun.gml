var inst

var firer = self
var projectile = argument0; // What they're shooting
var spread = argument1; // How many projectiles will be on either side of the main one. 0 is one projectile
var adjust = argument2; // The maximum firing angle of any given shot

var firerX = firer.x;
var firerY = firer.y;
var targetX = mouse_x;
var targetY = mouse_y;

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
                event_perform(ev_user0, 0)
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
        }
    }
}
