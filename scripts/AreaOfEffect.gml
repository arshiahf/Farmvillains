var aoe = self
var aoeX = x
var aoeY = y

with livingGeneric
{
    var distance = point_distance(x, y, aoeX, aoeY)
    if distance < aoe.radius and object_get_parent(self.object_index) != object_get_parent(aoe.shooterIndex)
    {
        life -= (damage * ((radius - distance) / radius))
    }
}
