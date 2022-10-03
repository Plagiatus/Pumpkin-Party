tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:3017,Unbreakable:1,display:{Name:'{"text":"Zombified Piglin Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Zombified Piglin Costume","italic":false}',color:15104371},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Zombified Piglin Costume","italic":false}',color:5976094},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Zombified Piglin Costume","italic":false}',color:15104371},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/zombified_piglin
tag @s add ul_zombified_piglin

scoreboard players set @s costume 3017
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Zombified Piglin"'}