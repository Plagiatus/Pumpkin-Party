tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:141,Unbreakable:1,display:{Name:'{"text":"Fox Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Fox Costume","italic":false}',color:13396256},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Fox Costume","italic":false}',color:11555106},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Fox Costume","italic":false}',color:5652276},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/fox
tag @s add ul_fox
scoreboard players set @s[type=minecraft:armor_stand] const 400

scoreboard players set @s costume 141
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Fox"'}