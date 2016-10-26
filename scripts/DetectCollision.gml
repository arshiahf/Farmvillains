// Declare primary variables
var player = playerGeneric;
var enemy = self;

with enemy
{
    // Check if a collision object is in the way
    if !collision_line(enemy.x, enemy.y, player.x, player.y, collisionGeneric, true, true)
    {
        // Set sight cone
        var coneLeft = image_angle + 60;
        if coneLeft > 359
        {
            coneLeft =  coneLeft - 359;
        }
        
        var coneRight = image_angle - 60;
        if coneRight < 0
        {
            coneRight = coneRight + 359;
        }
        
        // Get angle to player
        {
            var anglePlayer = point_direction(x, y, player.x, player.y);
        }
        
        // Check if player is in cone
        var inCone
        if coneRight > coneLeft
        {
            if anglePlayer <= coneLeft or anglePlayer >= coneRight
            {
                inCone = true;
            }
            else
            {
                inCone = false;
            }
        }
        
        // If player is in cone
        if inCone
        {
            //Check distance to player
            var distancePlayer = point_distance(enemy.x, enemy.y, player.x, player.y)
            
            // Check distance against player visibility
            if player.visibility == 3
            {
                if distancePlayer <= hostile3
                {
                    MakeHostile()
                }
                else if distancePlayer <= alert3
                {
                    MakeAlert(player)
                }
            }
            else if player.visibility == 2
            {
                if distancePlayer <= hostile2
                {
                    MakeHostile()
                }
                else if distancePlayer <= alert2
                {
                    MakeAlert(player)
                }
            }
            else if player.visibility == 1
            {
                if distancePlayer <= hostile1
                {
                    MakeHostile()
                }
                else if distancePlayer <= alert1
                {
                    MakeAlert(player)
                }
            }
            else
            {
                if distancePlayer <= hostile0
                {
                    MakeHostile()
                }
                else if distancePlayer <= alert0
                {
                    MakeAlert(player)
                }
            }
        }
    }
}
