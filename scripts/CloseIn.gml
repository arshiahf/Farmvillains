var player = playerGeneric;

if distance_to_point(player.x, player.y) > (mainGunDeathTimer * mainGunSpeed)
{
    var closePath = path_add()
    mp_potential_path(closePath, player.x, player.y, moveSpeed, 4, false)
    path_start(closePath, moveSpeed, 0, 0)
}
