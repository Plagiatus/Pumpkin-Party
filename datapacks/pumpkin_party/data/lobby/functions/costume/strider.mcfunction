tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:10,Unbreakable:1,display:{Name:'{"text":"Strider Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Strider Costume","italic":false}',color:10827321},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Strider Costume","italic":false}',color:7087142},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Strider Costume","italic":false}',color:4668991},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add ul_strider
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Strider"'}