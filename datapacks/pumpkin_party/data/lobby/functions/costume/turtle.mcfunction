tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:2224,Unbreakable:1,display:{Name:'{"text":"Turtle Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Turtle Costume","italic":false}',color:24},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Turtle Costume","italic":false}',color:24},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Turtle Costume","italic":false}',color:24},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/turtle
tag @s add ul_turtle

scoreboard players set @s costume 2224
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Turtle"'}