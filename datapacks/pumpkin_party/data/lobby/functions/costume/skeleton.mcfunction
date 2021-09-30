tag @s remove costume_failed
item replace entity @s armor.head with minecraft:skeleton_skull{Unbreakable:1,display:{Name:'{"text":"Skeleton Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Skeleton Costume","italic":false}',color:12369084},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Skeleton Costume","italic":false}',color:10855845},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Skeleton Costume","italic":false}',color:9342350},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}


scoreboard players set @s costume 44
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Skeleton"'}