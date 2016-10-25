var projectile = self;

var projectileX1 = projectile.x - projectile.sprite_width / 2;
var projectileX2 = projectile.x + projectile.sprite_width / 2;
var projectileY1 = projectile.y - projectile.sprite_height / 2;
var projectileY2 = projectile.y - projectile.sprite_height / 2;
if collision_ellipse(projectileX1, projectileY1, projectileX2, projectileY2, all, true, false)
{    
    if object_is_ancestor(object_get_parent(other.object_index), livingGeneric) and !object_is_ancestor(other.object_index, object_get_parent(projectile.shooter.object_index))
    {
        other.life -= projectile.damage;
        instance_destroy();
    }
    else if object_get_parent(other.object_index) == collisionGeneric
    {
        instance_destroy();
    }
}
