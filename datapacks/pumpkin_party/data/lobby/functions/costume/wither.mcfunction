tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:14,Unbreakable:1,display:{Name:'{"text":"Wither Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Wither Costume","italic":false}',color:14},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
#item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Wither Costume","italic":false}',color:1513239},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Wither Costume","italic":false}',color:2697513},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Wither Costume","italic":false}',color:3948865},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/wither
tag @s add ul_wither
scoreboard players set @s[type=minecraft:armor_stand] const 400

scoreboard players set @s costume 14
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Wither"'}