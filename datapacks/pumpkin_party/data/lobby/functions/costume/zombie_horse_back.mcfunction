tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:669,Unbreakable:1,display:{Name:'{"text":"Zombie Horse Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Zombie Horse Costume","italic":false}',color:6987098},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Zombie Horse Costume","italic":false}',color:3235129},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Zombie Horse Costume","italic":false}',color:592133},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add ul_zombie_horse
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Zombie Horse"'}