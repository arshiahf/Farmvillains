if life <= 0
{
    if object_get_parent(self.object_index) == enemyGeneric and self.alert == true
    {
        global.enemiesAlerted--
    }
    instance_destroy()
}
