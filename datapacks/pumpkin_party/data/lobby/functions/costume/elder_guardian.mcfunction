tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:1123,Unbreakable:1,display:{Name:'{"text":"Elder Guardian Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Elder Guardian Costume","italic":false}',color:11973281},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Elder Guardian Costume","italic":false}',color:7103826},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Elder Guardian Costume","italic":false}',color:5330045},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/elder_guardian
tag @s add ul_elder_guardian
scoreboard players set @s[type=minecraft:armor_stand] const 400

scoreboard players set @s costume 1123
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Elder Guardian"'}