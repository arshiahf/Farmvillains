var bullet = argument0;
var healthLoss = argument1;
var collide = (object_get_parent(other) != (enemyGeneric or projectileGeneric or alertGeneric))

var bulletX1 = bullet.x - bullet.sprite_width / 2;
var bulletX2 = bullet.x + bullet.sprite_width / 2;
var bulletY1 = bullet.y - bullet.sprite_height / 2;
var bulletY2 = bullet.y - bullet.sprite_height / 2;
if collision_ellipse(bulletX1, bulletY1, bulletX2, bulletY2, collide, true, false)
{
    //if object_get_parent(temp) != (enemyGeneric or projectileGeneric or alertGeneric)
    //{
        if object_get_parent(other) == (playerGeneric or neutralGeneric)
        {
            other.health -= healthLoss;
        }
        instance_destroy();
    //}
}
