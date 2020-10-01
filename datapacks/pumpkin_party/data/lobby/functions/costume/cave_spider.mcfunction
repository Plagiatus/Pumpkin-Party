tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:122,Unbreakable:1,display:{Name:'{"text":"Cave Spider Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Cave Spider Costume","italic":false}',color:11826},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Cave Spider Costume","italic":false}',color:727832},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Cave Spider Costume","italic":false}',color:6168},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add ul_cave_spider
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Cave Spider"'}