var parent = object_get_parent(self.object_index)

if lifeLast > life
{
    if parent == enemyGeneric and !hostile
    {
        MakeHostile()
    }
    else if parent == neutralGeneric
    {
        var runPath = path_add()
        mp_potential_path(runPath, x + irandom_range(-100, 100), y + irandom_range(-100, 100), 2 * moveSpeed, 4, false)
        path_start(runPath, 2 * moveSpeed, 0, 0)
    }
}
