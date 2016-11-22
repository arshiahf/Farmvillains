var projectile = self;

if object_is_ancestor(object_get_parent(other.object_index), livingGeneric) and !object_is_ancestor(other.object_index, object_get_parent(projectile.shooter.object_index))
{
    other.life -= projectile.damage;
    instance_destroy();
}
else if object_get_parent(other.object_index) == collisionGeneric
{
    instance_destroy();
}
