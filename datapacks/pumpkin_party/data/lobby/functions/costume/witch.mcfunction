tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:67,Unbreakable:1,display:{Name:'{"text":"Witch Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Witch Costume","italic":false}',color:3544920},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Witch Costume","italic":false}',color:4733991},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Witch Costume","italic":false}',color:8025975},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/witch
tag @s add ul_witch

scoreboard players set @s costume 67
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Witch"'}