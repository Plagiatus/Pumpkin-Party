tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:5,Unbreakable:1,display:{Name:'{"text":"Enderman Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Enderman Costume","italic":false}',color:0},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Enderman Costume","italic":false}',color:1447446},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Enderman Costume","italic":false}',color:0},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/enderman
tag @s add ul_enderman
scoreboard players set @s[type=minecraft:armor_stand] const 300

scoreboard players set @s costume 5
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Enderman"'}