tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:41,Unbreakable:1,display:{Name:'{"text":"Wolf Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Wolf Costume","italic":false}',color:14539483},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Wolf Costume","italic":false}',color:13289416},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Wolf Costume","italic":false}',color:10459798},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/wolf
tag @s add ul_wolf
scoreboard players set @s[type=minecraft:armor_stand] const 300
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Wolf"'}