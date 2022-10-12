tag @s remove costume_failed
item replace entity @s armor.head with air
item replace entity @s[type=armor_stand] armor.head with barrier
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Remove costume"'}
tag @s remove has_costume