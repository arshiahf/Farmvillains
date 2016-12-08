if instance_exists(playerGeneric)
{
    var player = playerGeneric
    
    var missilePath = path_add()
    mp_potential_path(missilePath, player.x, player.y, moveSpeed, 2, false)
    path_start(missilePath, moveSpeed, 0, 0)
}
