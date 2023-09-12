tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:6408,Unbreakable:1,display:{Name:'{"text":"Evocation Fang Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Evocation Fang Costume","italic":false}',color:6315866},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Evocation Fang Costume","italic":false}',color:5064000},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Evocation Fang Costume","italic":false}',color:3618612},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/evocation_fang
tag @s add ul_evocation_fang
scoreboard players set @s[type=minecraft:armor_stand] const 300

scoreboard players set @s costume 6408
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Evocation Fang"'}