var obj = other; //The object making the noise
var enemy = self; //The enemy detecting said object

var soundRadius = 25;

with enemy
{
    if collision_circle(x, y, obj.noiseLevel * soundRadius, all, true, false)
    {
        if object_get_parent(obj.object_index) == neutralGeneric
        {
            MakeAlert(obj);
        }
        else if object_get_parent(obj.object_index) == playerGeneric
        {
            MakeHostile();
        }
    }
    else if collision_circle(x, y, obj.noiseLevel * soundRadius * 1.25, obj, true, false)
    {
        if object_get_parent(obj.object_index) == neutralGeneric or object_get_parent(obj.object_index) == playerGeneric
        {
            MakeAlert(obj);
        }
    }
}
