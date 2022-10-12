tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:6508,Unbreakable:1,display:{Name:'{"text":"Illusioner Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Illusioner Costume","italic":false}',color:1267859},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Illusioner Costume","italic":false}',color:871294},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Illusioner Costume","italic":false}',color:7039851},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/illusioner
tag @s add ul_illusioner
scoreboard players set @s[type=minecraft:armor_stand] const 200

scoreboard players set @s costume 6508
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Illusioner"'}