tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:268,Unbreakable:1,display:{Name:'{"text":"Gray Horse Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Gray Horse Costume","italic":false}',color:5263440},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Gray Horse Costume","italic":false}',color:3750201},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Gray Horse Costume","italic":false}',color:6513507},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/horse_gray
tag @s add ul_horse_gray
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Gray Horse"'}