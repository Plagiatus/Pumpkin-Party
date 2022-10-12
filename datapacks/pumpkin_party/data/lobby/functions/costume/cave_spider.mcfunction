tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:1104,Unbreakable:1,display:{Name:'{"text":"Cave Spider Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Cave Spider Costume","italic":false}',color:11826},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Cave Spider Costume","italic":false}',color:727832},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Cave Spider Costume","italic":false}',color:6168},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/cave_spider
tag @s add ul_cave_spider

scoreboard players set @s costume 1104
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Cave Spider"'}