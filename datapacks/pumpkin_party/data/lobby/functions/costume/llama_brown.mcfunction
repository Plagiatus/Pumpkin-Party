tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:66,Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:10183459},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:8869664},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:7818524},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/llama_brown
tag @s add ul_llama_brown
scoreboard players set @s[type=minecraft:armor_stand] const 300

scoreboard players set @s costume 66
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Brown - - Llama"'}