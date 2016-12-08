var backPath = path_add()
mp_potential_path(backPath, homeX, homeY, moveSpeed / 2, 10, false)
path_start(backPath, moveSpeed / 2, path_action_stop, 0)
alarm[7] = path_get_length(backPath) / (moveSpeed / 2) + 5
