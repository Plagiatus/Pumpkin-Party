tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:2210,Unbreakable:1,display:{Name:'{"text":"White Pumpkin Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"White Pumpkin Costume","italic":false}',color:3362627},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"White Pumpkin Costume","italic":false}',color:2107168},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"White Pumpkin Costume","italic":false}',color:2429443},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/white_pumpkin
tag @s add ul_white_pumpkin

scoreboard players set @s costume 2210
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"White Pumpkin"'}