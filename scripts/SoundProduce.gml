var obj = self; //The object making the noise

var noise = noiseLevel * soundRadius

if instance_exists(livingGeneric)
{
    var i
    for (i = 0; i < instance_number(enemyGeneric); i += 1)
    {
        enemy = instance_find(enemyGeneric, i)
        var distanceLiving = point_distance(x, y, enemy.x, enemy.y)
        
        if distanceLiving <= noise and object_get_parent(object_index) != enemyGeneric
        {
            if (object_get_parent(object_index) == neutralGeneric or object_get_parent(object_index) == playerGeneric or object_get_parent(object_index) == projectileGeneric) and !enemy.alert
            {
                with enemy
                {
                    MakeAlert(obj);
                }
            }
        }
    }
}
