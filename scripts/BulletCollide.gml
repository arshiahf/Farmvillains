var projectile = argument0;
var collideTest = (object_get_parent(other) != (alertGeneric or enemyGeneric or projectileGeneric))

var projectileX1 = projectile.x - projectile.sprite_width / 2;
var projectileX2 = projectile.x + projectile.sprite_width / 2;
var projectileY1 = projectile.y - projectile.sprite_height / 2;
var projectileY2 = projectile.y - projectile.sprite_height / 2;
if collision_ellipse(projectileX1, projectileY1, projectileX2, projectileY2, collideTest, true, false)
{
    if (projectile.killsInanimate == true and other.isInanimate == true) or other.isInanimate == false
    {
        other.health -= projectile.damage;
    }
    instance_destroy();
}
