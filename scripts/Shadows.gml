if place_meeting(x, y, stealth3)
{
    visibility = baseVisibility + 3
    image_alpha = 0.25
}
else if place_meeting(x, y, stealth2)
{
    visibility = baseVisibility + 2
    image_alpha = 0.5
}
else if place_meeting(x, y, stealth1)
{
    visibility = baseVisibility + 1
    image_alpha = 0.75
}
else if !place_meeting(x, y, stealthGeneric)
{
    visibility = baseVisibility
    image_alpha = 1.0
}
