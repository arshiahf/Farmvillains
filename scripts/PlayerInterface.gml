var player = self;

// Methods for player input

var keyW = keyboard_check(ord('W'));
var keyA = keyboard_check(ord('A'));
var keyS = keyboard_check(ord('S'));
var keyD = keyboard_check(ord('D'));

var gamePadUp = gamepad_button_check(0, gp_padu);
var gamePadLeft = gamepad_button_check(0, gp_padl);
var gamePadDown = gamepad_button_check(0, gp_padd);
var gamePadRight = gamepad_button_check(0, gp_padr);

var alt = keyboard_check(vk_alt)
var ctrl = keyboard_check(vk_control)
var shift = keyboard_check(vk_shift)

var esc = keyboard_check(vk_escape)

// Gamepad deadzone
/*
if gamepad_is_connected(0)
{
    gamepad_set_axis_deadzone(0, 0.05);
}
*/
if instance_exists(player)
{
    // Player movement rates
    
    var moveSpeed = player.move;
    var moveSpeedSprint = player.moveSprint;
    var moveSpeedSneakingFast = player.moveSneakingFast;
    var moveSpeedSneakingSlow = player.moveSneakingSlow;
    
    // Game functions for player input
    with player
    {
        // Menu function
        
        if esc and room != pauseMenu and room != mainMenu
        {
            global.roomCurrent = room
            room_persistent = true
            room_goto(pauseMenu)
        }
    
        // Non-sneaking movement keyboard
    
        if (keyS or gamePadDown)
        {
            if alt
            {
                vspeed = moveSpeedSneakingSlow
            }
            else if ctrl
            {
                vspeed = moveSpeedSneakingFast
            }
            else if shift
            {
                vspeed = moveSpeedSprint
            }
            else
            {
                vspeed = moveSpeed;
            }
        }
        if (keyW or gamePadUp)
        {
            if alt
            {
                vspeed = -moveSpeedSneakingSlow
            }
            else if ctrl
            {
                vspeed = -moveSpeedSneakingFast
            }
            else if shift
            {
                vspeed = -moveSpeedSprint
            }
            else
            {
                vspeed = -moveSpeed;
            }
        }
        if ((keyW or gamePadUp) and (keyS or gamePadDown)) or (!keyW and !gamePadUp and !keyS and !gamePadDown)
        {
            vspeed = 0;
        }
        
        if (keyD or gamePadRight)
        {
            if alt
            {
                hspeed = moveSpeedSneakingSlow
            }
            else if ctrl
            {
                hspeed = moveSpeedSneakingFast
            }
            else if shift
            {
                hspeed = moveSpeedSprint
            }
            else
            {
                hspeed = moveSpeed;
            }
        }
        if (keyA or gamePadLeft)
        {
            if alt
            {
                hspeed = -moveSpeedSneakingSlow
            }
            else if ctrl
            {
                hspeed = -moveSpeedSneakingFast
            }
            else if shift
            {
                hspeed = -moveSpeedSprint
            }
            else
            {
                hspeed = -moveSpeed;
            }
        }
        if ((keyD or gamePadRight) and (keyA or gamePadLeft)) or (!keyD and !gamePadRight and !keyA and !gamePadLeft)
        {
            hspeed = 0
        }
    }
}
