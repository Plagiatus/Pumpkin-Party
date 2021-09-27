tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:241,Unbreakable:1,display:{Name:'{"text":"Snow Fox Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Snow Fox Costume","italic":false}',color:15463144},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Snow Fox Costume","italic":false}',color:12045757},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Snow Fox Costume","italic":false}',color:3234655},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/snow_fox
tag @s add ul_snow_fox
scoreboard players set @s[type=minecraft:armor_stand] const 450

scoreboard players set @s costume 241
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Snow Fox"'}