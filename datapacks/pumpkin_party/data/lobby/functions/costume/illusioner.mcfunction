tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:467,Unbreakable:1,display:{Name:'{"text":"Illusioner Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Illusioner Costume","italic":false}',color:1267859},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Illusioner Costume","italic":false}',color:871294},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Illusioner Costume","italic":false}',color:7039851},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/illusioner
tag @s add ul_illusioner
scoreboard players set @s[type=minecraft:armor_stand] const 200

scoreboard players set @s costume 467
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Illusioner"'}