tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:1109,Unbreakable:1,display:{Name:'{"text":"Magma Cube Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Magma Cube Costume","italic":false}',color:3342336},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Magma Cube Costume","italic":false}',color:1835008},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Magma Cube Costume","italic":false}',color:3342336},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/magma_cube
tag @s add ul_magma_cube

scoreboard players set @s costume 1109
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Magma Cube"'}