tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:142,Unbreakable:1,display:{Name:'{"text":"Headless Horseman Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Headless Horseman Costume","italic":false}',color:3420207},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Headless Horseman Costume","italic":false}',color:3942685},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Headless Horseman Costume","italic":false}',color:854795},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/headless_horseman
tag @s add ul_headless_horseman
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Headless Horseman"'}