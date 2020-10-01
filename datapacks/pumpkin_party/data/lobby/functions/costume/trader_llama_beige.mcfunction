tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:166,Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:16114360},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:15455134},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:14928533},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add ul_trader_llama_beige
scoreboard players set @s[type=minecraft:armor_stand] const 300
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Trader - - Llama "'}