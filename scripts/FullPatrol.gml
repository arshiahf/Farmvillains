if spotOn < array_length_1d(global.pSpot)
{
    var spotPath = path_add()
    mp_potential_path(spotPath, global.pSpot[spotOn].x, global.pSpot[spotOn].y, moveSpeed, 4, false)
    alarm[7] = path_get_length(spotPath) / moveSpeed
    homeX = global.pSpot[spotOn].x
    homeY = global.pSpot[spotOn].y
    spotOn++
    path_start(spotPath, moveSpeed, false, false)
}
else
{
    spotOn = 0
    var spotPath = path_add()
    mp_potential_path(spotPath, global.pSpot[spotOn].x, global.pSpot[spotOn].y, moveSpeed, 4, false)
    alarm[7] = path_get_length(spotPath) / moveSpeed
    homeX = global.pSpot[spotOn].x
    homeY = global.pSpot[spotOn].y
    spotOn++
    path_start(spotPath, moveSpeed, false, false)
}
