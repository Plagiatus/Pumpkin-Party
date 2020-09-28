tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:3,Unbreakable:1,display:{Name:'{"text":"Wither Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Wither Costume","italic":false}',color:1513239},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Wither Costume","italic":false}',color:2697513},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Wither Costume","italic":false}',color:3948865},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add ul_wither
scoreboard players set @s[type=minecraft:armor_stand] const 400
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Wither"'}