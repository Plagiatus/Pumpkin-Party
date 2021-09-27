tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:268,Unbreakable:1,display:{Name:'{"text":"Gray Horse Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Gray Horse Costume","italic":false}',color:5263440},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Gray Horse Costume","italic":false}',color:3750201},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Gray Horse Costume","italic":false}',color:6513507},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/horse_gray
tag @s add ul_horse_gray

scoreboard players set @s costume 268
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Gray Horse"'}