var obj = livingGeneric; //The object making the noise
var enemy = self; //The enemy detecting said object

var soundRadius = 25;

if collision_circle(enemy.x, enemy.y, obj.noiseLevel * soundRadius, livingGeneric, true, false)
{
    if object_get_parent(other.object_index) == neutralGeneric
    {
        MakeAlert(other);
    }
    else if object_get_parent(other.object_index) == playerGeneric
    {
        MakeHostile();
    }
}
else if collision_circle(enemy.x, enemy.y, obj.noiseLevel * soundRadius * 1.25, livingGeneric, true, false)
{
    if object_get_parent(other.object_index) == neutralGeneric or object_get_parent(other.object_index) == playerGeneric
    {
        MakeAlert(other);
    }
}
