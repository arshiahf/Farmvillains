if place_meeting(x, y, stealth3)
{
    visibility = 3
    image_alpha = 0.25
}
else if place_meeting(x, y, stealth2)
{
    visibility = 2
    image_alpha = 0.5
}
else if place_meeting(x, y, stealth1)
{
    visibility = 1
    image_alpha = 0.75
}
else if !place_meeting(x, y, stealthGeneric)
{
    visibility = 0
    image_alpha = 1.0
}
