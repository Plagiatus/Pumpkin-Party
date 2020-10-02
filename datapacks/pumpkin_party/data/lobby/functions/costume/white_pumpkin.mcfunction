tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:242,Unbreakable:1,display:{Name:'{"text":"White Pumpkin Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"White Pumpkin Costume","italic":false}',color:3362627},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"White Pumpkin Costume","italic":false}',color:2107168},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"White Pumpkin Costume","italic":false}',color:2429443},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/white_pumpkin
tag @s add ul_white_pumpkin
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"White Pumpkin"'}