tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:3117,Unbreakable:1,display:{Name:'{"text":"Piglin Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Piglin Costume","italic":false}',color:7026980},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Piglin Costume","italic":false}',color:15245428},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Piglin Costume","italic":false}',color:2170396},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/piglin
tag @s add ul_piglin
scoreboard players set @s[type=minecraft:armor_stand] const 300

scoreboard players set @s costume 3117
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Piglin"'}