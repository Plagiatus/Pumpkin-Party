tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:6,Unbreakable:1,display:{Name:'{"text":"Pufferfish Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Pufferfish Costume","italic":false}',color:14193946},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Pufferfish Costume","italic":false}',color:13804621},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Pufferfish Costume","italic":false}',color:16573884},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add small_puffer

tag @s add ul_pufferfish
scoreboard players set @s[type=minecraft:armor_stand] const 1000

scoreboard players set @s costume 6
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Pufferfish"'}