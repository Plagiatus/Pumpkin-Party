tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:6,Unbreakable:1,display:{Name:'{"text":"Pufferfish Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Pufferfish Costume","italic":false}',color:14193946},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Pufferfish Costume","italic":false}',color:13804621},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Pufferfish Costume","italic":false}',color:16573884},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add small_puffer

advancement grant @s only lobby:unlocked/pufferfish
tag @s add ul_pufferfish
scoreboard players set @s[type=minecraft:armor_stand] const 1000

scoreboard players set @s costume 6
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Pufferfish"'}