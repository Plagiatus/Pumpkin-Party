tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:367,Unbreakable:1,display:{Name:'{"text":"Evoker Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Evoker Costume","italic":false}',color:1973274},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Evoker Costume","italic":false}',color:4344910},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Evoker Costume","italic":false}',color:7039851},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/evoker
tag @s add ul_evoker

scoreboard players set @s costume 367
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Evoker"'}