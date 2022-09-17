tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:2106,Unbreakable:1,display:{Name:'{"text":"Phantom Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Phantom Costume","italic":false}',color:10912121},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Phantom Costume","italic":false}',color:2965334},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Phantom Costume","italic":false}',color:12827041},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/phantom
tag @s add ul_phantom

scoreboard players set @s costume 2106
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Phantom"'}