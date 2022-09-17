tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:3328,Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:16514036},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:14671839},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:13158600},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/llama_white_decorated
tag @s add ul_llama_white_decorated
scoreboard players set @s[type=minecraft:armor_stand] const 300

scoreboard players set @s costume 3328
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"White - - Llama"'}