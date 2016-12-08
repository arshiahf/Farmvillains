if path_index != -1
{
    if other.x < x and other.y < y
    {
        with other
        {
            mp_potential_step(x - 40, y - 40, 20, false)
        }
    }
    else if other.x < x and other.y > y
    {
        with other
        {
            mp_potential_step(x - 40, y + 40, 20, false)
        }
    }
    else if other.x > x and other.y < y
    {
        with other
        {
            mp_potential_step(x + 40, y - 40, 20, false)
        }
    }
    else if other.x > x and other.y > y
    {
        with other
        {
            mp_potential_step(x + 40, y + 40, 20, false)
        }
    }
    if other.id != id
    {
        other.life -= damage
    }
}
