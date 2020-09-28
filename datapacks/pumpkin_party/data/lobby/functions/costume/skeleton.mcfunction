tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:skeleton_skull{Unbreakable:1,display:{Name:'{"text":"Skeleton Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Skeleton Costume","italic":false}',color:12369084},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Skeleton Costume","italic":false}',color:10855845},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Skeleton Costume","italic":false}',color:9342350},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Skeleton"'}