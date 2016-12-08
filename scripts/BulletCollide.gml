var projectile = self;

if object_is_ancestor(object_get_parent(other.object_index), livingGeneric) and !object_is_ancestor(other.object_index, object_get_parent(projectile.shooterIndex))
{
    if object_get_parent(other.object_index) == playerGeneric
    {
        global.life -= projectile.damage
    }
    else
    {
        other.life -= projectile.damage;
    }
    instance_destroy();
}
else if object_get_parent(other.object_index) == collisionGeneric
{
    if other.x > x
    {
        x = x - 5
    }
    else if other.x < x
    {
        x = x + 5
    }
    noiseLevel = speed
    SoundProduce()
    instance_destroy();
}
