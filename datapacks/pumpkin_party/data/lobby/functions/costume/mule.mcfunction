tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:6530,Unbreakable:1,display:{Name:'{"text":"Mule Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Mule Costume","italic":false}',color:3677975},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Mule Costume","italic":false}',color:4466457},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Mule Costume","italic":false}',color:6513507},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/mule
tag @s add ul_mule

scoreboard players set @s costume 6530
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Mule"'}