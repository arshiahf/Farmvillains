if instance_exists(playerGeneric)
{
    var player = playerGeneric
    var playerDir = point_direction(x, y, player.x, player.y)
    var dir = direction
    var upper = 180
    var lower = -180
    var rotSpeed = 2
    
    var dirDiff = playerDir - dir
    var newDir = (dirDiff - lower) mod (upper - lower)
    
    if newDir < 0
    {
        newDir = newDir + upper
    }
    else
    {
        newDir = newDir + lower
    }
    
    direction = dir + max(min(newDir, rotSpeed), -rotSpeed)
}
