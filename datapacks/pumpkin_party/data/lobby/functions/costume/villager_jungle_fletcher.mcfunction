tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:270,Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',Lore:['{"text":"hmmm..."}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:15384639},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:6173730},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:12486764},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add ul_villager_jungle_fletcher
scoreboard players set @s[type=minecraft:armor_stand] const 100
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Jungle Fletcher"'}