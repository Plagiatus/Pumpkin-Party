tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:141,Unbreakable:1,display:{Name:'{"text":"Fox Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Fox Costume","italic":false}',color:13396256},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Fox Costume","italic":false}',color:11555106},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Fox Costume","italic":false}',color:5652276},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/fox
tag @s add ul_fox
scoreboard players set @s[type=minecraft:armor_stand] const 400
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Fox"'}