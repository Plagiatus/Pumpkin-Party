tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:169,Unbreakable:1,display:{Name:'{"text":"White Horse Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"White Horse Costume","italic":false}',color:13553358},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"White Horse Costume","italic":false}',color:10855845},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"White Horse Costume","italic":false}',color:8282452},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/horse_white
tag @s add ul_horse_white

scoreboard players set @s costume 169
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"White Horse"'}