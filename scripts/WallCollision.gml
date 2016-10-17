var obj = argument0;
var wall = argument1;

with obj
{
    // Moving down
    if vspeed > 0
    {
        if place_meeting(x, y + vspeed, wall)
        {
            while !place_meeting(x, y + 1, wall)
            {
                y++;
            }
            vspeed = 0;
        }
    }
    
    // Moving up
    
    if vspeed < 0
    {
        if place_meeting(x, y + vspeed, wall)
        {
            while !place_meeting(x, y - 1, wall)
            {
                y--;
            }
            vspeed = 0;
        }
    }
    
    // Moving right
    
    if hspeed > 0
    {
        if place_meeting(x + hspeed, y, wall)
        {
            while !place_meeting(x + 1, y, wall)
            {
                x++;
            }
            hspeed = 0;
        }
    }
    
    // Moving left
    
    if hspeed < 0
    {
        if place_meeting(x + hspeed, y, wall)
        {
            while !place_meeting(x - 1, y, wall)
            {
                x--;
            }
            hspeed = 0;
        }
    }
}
