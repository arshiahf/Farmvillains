if spotOn < array_length_1d(global.pSpot)
{
    var spotPath = path_add()
    mp_potential_path(spotPath, global.pSpot[abs(spotOn)].x, global.pSpot[abs(spotOn)].y, moveSpeed, 4, false)
    alarm[7] = path_get_length(spotPath) / moveSpeed
    homeX = global.pSpot[abs(spotOn)].x
    homeY = global.pSpot[abs(spotOn)].y
    spotOn++
    path_start(spotPath, moveSpeed, false, false)
}
else
{
    spotOn = -spotOn + 2
    var spotPath = path_add()
    mp_potential_path(spotPath, global.pSpot[abs(spotOn)].x, global.pSpot[abs(spotOn)].y, moveSpeed, 4, false)
    alarm[7] = path_get_length(spotPath) / moveSpeed
    homeX = global.pSpot[abs(spotOn)].x
    homeY = global.pSpot[abs(spotOn)].y
    spotOn++
    path_start(spotPath, moveSpeed, false, false)
}
