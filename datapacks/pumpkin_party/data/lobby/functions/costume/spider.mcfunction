tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:22,Unbreakable:1,display:{Name:'{"text":"Spider Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Spider Costume","italic":false}',color:5195068},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Spider Costume","italic":false}',color:3287846},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Spider Costume","italic":false}',color:2498587},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/spider
tag @s add ul_spider
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Spider"'}