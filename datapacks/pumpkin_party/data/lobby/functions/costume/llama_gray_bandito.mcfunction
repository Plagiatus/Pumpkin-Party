tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:266,Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:15658718},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:14014149},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Llama Costume","italic":false}',color:11315876},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/llama_gray_bandito
tag @s add ul_llama_gray

scoreboard players set @s costume 266
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Gray Llama - - (El Bandito)"'}