tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:669,Unbreakable:1,display:{Name:'{"text":"Zombie Horse Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Zombie Horse Costume","italic":false}',color:6987098},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Zombie Horse Costume","italic":false}',color:3235129},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Zombie Horse Costume","italic":false}',color:592133},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/zombie_horse
tag @s add ul_zombie_horse

scoreboard players set @s costume 669
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Zombie Horse"'}