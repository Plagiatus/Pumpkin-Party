tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:67,Unbreakable:1,display:{Name:'{"text":"Witch Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Witch Costume","italic":false}',color:3544920},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Witch Costume","italic":false}',color:4733991},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Witch Costume","italic":false}',color:8025975},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add ul_witch
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Witch"'}