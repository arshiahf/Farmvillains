var bullet = argument0;
var target = argument1;
var healthLoss = argument2;

with bullet
{
    var bulletX1 = x - sprite_width / 2;
    var bulletX2 = x + sprite_width / 2;
    var bulletY1 = y - sprite_height / 2;
    var bulletY2 = y - sprite_height / 2;
    if collision_ellipse(bulletX1, bulletY1, bulletX2, bulletY2, playerGeneric, true, false)
    {
        target.health -= healthLoss;
        instance_destroy();
    }
}
