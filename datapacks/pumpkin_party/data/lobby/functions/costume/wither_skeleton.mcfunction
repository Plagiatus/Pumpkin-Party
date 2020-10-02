tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:wither_skeleton_skull{Unbreakable:1,display:{Name:'{"text":"Wither Skeleton Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Wither Skeleton Costume","italic":false}',color:3421236},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Wither Skeleton Costume","italic":false}',color:2697513},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Wither Skeleton Costume","italic":false}',color:1381653},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/wither_skeleton
tag @s add ul_wither_skeleton
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Wither Skeleton"'}