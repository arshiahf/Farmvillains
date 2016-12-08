var distance = point_distance(x, y, mouse_x, mouse_y)

if distance < (30 * chargeSpeed) and !collision_line(x, y, mouse_x, mouse_y, collisionGeneric, true, true)
{
    var charge = path_add()
    mp_linear_path(charge, mouse_x, mouse_y, chargeSpeed, false)
    path_start(charge, chargeSpeed, 0, 0)
    fatigued = true
    alarm[0] = distance / chargeSpeed + room_speed * 4
}
