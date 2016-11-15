var obj = self; //The object making the noise
var enemy = enemyGeneric; //The enemy detecting said object

var soundRadius = 25;
var noiseObj = obj.noiseLevel * soundRadius
var distanceLiving = point_distance(obj.x, obj.y, enemy.x, enemy.y)

if distanceLiving <= noiseObj and object_get_parent(obj.object_index) != enemyGeneric
{
    if object_get_parent(obj.object_index) == neutralGeneric
    {
        with enemy
        {
            MakeAlert(obj);
        }
    }
    else if object_get_parent(obj.object_index) == playerGeneric
    {
        with enemy
        {
            MakeHostile();
        }
    }
}
