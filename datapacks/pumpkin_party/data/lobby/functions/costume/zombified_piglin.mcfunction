tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:45,Unbreakable:1,display:{Name:'{"text":"Zombified Piglin Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Zombified Piglin Costume","italic":false}',color:15104371},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Zombified Piglin Costume","italic":false}',color:5976094},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Zombified Piglin Costume","italic":false}',color:15104371},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/zombified_piglin
tag @s add ul_zombified_piglin

scoreboard players set @s costume 45
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Zombified Piglin"'}