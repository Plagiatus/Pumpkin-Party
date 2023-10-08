tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:6308,Unbreakable:1,display:{Name:'{"text":"Evoker Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Evoker Costume","italic":false}',color:1973274},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Evoker Costume","italic":false}',color:4344910},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Evoker Costume","italic":false}',color:7039851},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/evoker
tag @s add ul_evoker

scoreboard players set @s costume 6308
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Evoker"'}