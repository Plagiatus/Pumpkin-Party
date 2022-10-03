tag @s remove costume_failed
item replace entity @s armor.head with minecraft:wither_skeleton_skull{Unbreakable:1,display:{Name:'{"text":"Wither Skeleton Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Wither Skeleton Costume","italic":false}',color:3421236},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Wither Skeleton Costume","italic":false}',color:2697513},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Wither Skeleton Costume","italic":false}',color:1381653},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/wither_skeleton
tag @s add ul_wither_skeleton

scoreboard players set @s costume 3201
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Wither Skeleton"'}