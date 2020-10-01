tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:245,Unbreakable:1,display:{Name:'{"text":"Piglin Brute Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Piglin Brute Costume","italic":false}',color:1710366},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs golden_leggings{Unbreakable:1,display:{Name:'{"text":"Piglin Brute Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Piglin Brute Costume","italic":false}',color:15245428},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add ul_piglin_brute
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Piglin Brute"'}