var parent = object_get_parent(self.object_index)

if instance_exists(playerGeneric) and parent == playerGeneric
{
    room_persistent = false
}
else if parent == enemyGeneric
{
    global.enemiesAlerted--
}
