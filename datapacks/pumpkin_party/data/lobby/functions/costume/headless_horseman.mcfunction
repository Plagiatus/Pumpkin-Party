tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:2110,Unbreakable:1,display:{Name:'{"text":"Headless Horseman Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Headless Horseman Costume","italic":false}',color:3420207},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Headless Horseman Costume","italic":false}',color:3942685},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Headless Horseman Costume","italic":false}',color:854795},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/headless_horseman
tag @s add ul_headless_horseman

scoreboard players set @s costume 2110
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Headless Horseman"'}