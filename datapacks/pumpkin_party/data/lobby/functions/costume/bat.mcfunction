tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:2006,Unbreakable:1,display:{Name:'{"text":"Bat Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Bat Costume","italic":false}',color:5390368},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Bat Costume","italic":false}',color:3746840},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Bat Costume","italic":false}',color:2103304},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/bat
tag @s add ul_bat

scoreboard players set @s costume 2006
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Bat"'}