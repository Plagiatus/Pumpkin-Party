tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:267,Unbreakable:1,display:{Name:'{"text":"Vindicator Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Vindicator Costume","italic":false}',color:4923175},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Vindicator Costume","italic":false}',color:1976874},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Vindicator Costume","italic":false}',color:6239777},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add ul_pillager
scoreboard players set @s[type=minecraft:armor_stand] const 100
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Pillager"'}