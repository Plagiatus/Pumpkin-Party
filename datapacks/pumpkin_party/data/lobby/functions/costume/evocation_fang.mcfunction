tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:7,Unbreakable:1,display:{Name:'{"text":"Evocation Fang Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Evocation Fang Costume","italic":false}',color:6315866},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Evocation Fang Costume","italic":false}',color:5064000},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Evocation Fang Costume","italic":false}',color:3618612},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/evocation_fang
tag @s add ul_evocation_fang
scoreboard players set @s[type=minecraft:armor_stand] const 500
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Evocation Fang"'}