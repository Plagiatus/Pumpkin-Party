tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:3128,Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:16114360},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:15455134},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:14928533},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/trader_llama_beige
tag @s add ul_trader_llama_beige
scoreboard players set @s[type=minecraft:armor_stand] const 200

scoreboard players set @s costume 3128
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Trader - - Llama "'}