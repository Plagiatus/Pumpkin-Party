tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:3217,Unbreakable:1,display:{Name:'{"text":"Piglin Brute Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Piglin Brute Costume","italic":false}',color:1710366},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with golden_leggings{Unbreakable:1,display:{Name:'{"text":"Piglin Brute Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Piglin Brute Costume","italic":false}',color:15245428},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/piglin_brute
tag @s add ul_piglin_brute

scoreboard players set @s costume 3217
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Piglin Brute"'}