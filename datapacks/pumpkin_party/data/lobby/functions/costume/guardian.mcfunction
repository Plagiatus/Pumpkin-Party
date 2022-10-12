tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:1023,Unbreakable:1,display:{Name:'{"text":"Guardian Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Guardian Costume","italic":false}',color:6719872},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Guardian Costume","italic":false}',color:3761490},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Guardian Costume","italic":false}',color:14578218},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/guardian
tag @s add ul_guardian
scoreboard players set @s[type=minecraft:armor_stand] const 200

scoreboard players set @s costume 1023
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Guardian"'}