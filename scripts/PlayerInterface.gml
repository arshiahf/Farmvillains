var player = argument0;

// Methods for player input

var keyW = keyboard_check(ord('W'));
var keyA = keyboard_check(ord('A'));
var keyS = keyboard_check(ord('S'));
var keyD = keyboard_check(ord('D'));

var keyUp = keyboard_check(vk_up);
var keyLeft = keyboard_check(vk_left);
var keyDown = keyboard_check(vk_down);
var keyRight = keyboard_check(vk_right);

var gamePadUp = gamepad_button_check(0, gp_padu);
var gamePadLeft = gamepad_button_check(0, gp_padl);
var gamePadDown = gamepad_button_check(0, gp_padd);
var gamePadRight = gamepad_button_check(0, gp_padr);

// Gamepad deadzone

if gamepad_is_connected(0)
{
    gamepad_set_axis_deadzone(0, 0.05);
}

// Player movement rates

var moveSpeed = 5;
var moveSpeedSneaking = 3;

// Game functions for player input
with player
{
    // Non-sneaking movement keyboard

    if (keyS or keyDown or gamePadDown)
    {
        vspeed = moveSpeed;
    }
    if (keyW or keyUp or gamePadUp)
    {
        vspeed = -moveSpeed;
    }
    if ((keyW or keyUp or gamePadUp) and (keyS or keyDown or gamePadDown)) or (!keyW and !keyUp and !gamePadUp and !keyS and !keyDown and !gamePadDown)
    {
        vspeed = 0;
    }
    
    if (keyD or keyRight or gamePadRight)
    {
        hspeed = moveSpeed;
    }
    if (keyA or keyLeft or gamePadLeft)
    {
        hspeed = -moveSpeed;
    }
    if ((keyD or keyRight or gamePadRight) and (keyA or keyLeft or gamePadLeft)) or (!keyD and !keyRight and !gamePadRight and !keyA and !keyLeft and !gamePadLeft)
    {
        hspeed = 0
    }
}
