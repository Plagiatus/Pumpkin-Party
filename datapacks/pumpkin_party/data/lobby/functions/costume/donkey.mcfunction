tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:6430,Unbreakable:1,display:{Name:'{"text":"Donkey head Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Donkey head Costume","italic":false}',color:8416862},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Donkey head Costume","italic":false}',color:5391930},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Donkey head Costume","italic":false}',color:6513507},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/donkey
tag @s add ul_donkey

scoreboard players set @s costume 6430
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Donkey"'}