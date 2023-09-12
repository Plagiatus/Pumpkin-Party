tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:6008,Unbreakable:1,display:{Name:'{"text":"Witch Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Witch Costume","italic":false}',color:3544920},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Witch Costume","italic":false}',color:4733991},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Witch Costume","italic":false}',color:8025975},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/witch
tag @s add ul_witch

scoreboard players set @s costume 6008
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Witch"'}