tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:1004,Unbreakable:1,display:{Name:'{"text":"Spider Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Spider Costume","italic":false}',color:5195068},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Spider Costume","italic":false}',color:3287846},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Spider Costume","italic":false}',color:2498587},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/spider
tag @s add ul_spider

scoreboard players set @s costume 1004
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Spider"'}