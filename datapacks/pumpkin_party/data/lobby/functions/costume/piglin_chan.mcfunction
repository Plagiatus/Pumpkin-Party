tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:3217,Unbreakable:1,display:{Name:'{"text":"Piglin Chan Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Piglin Chan Costume","italic":false}',color:7026980},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Piglin Chan Costume","italic":false}',color:15245428},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Piglin Chan Costume","italic":false}',color:2170396},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/piglin_chan
tag @s add ul_piglin_chan

scoreboard players set @s costume 3217
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Piglin Chan"'}