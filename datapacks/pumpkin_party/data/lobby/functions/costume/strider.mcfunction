tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:10,Unbreakable:1,display:{Name:'{"text":"Strider Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Strider Costume","italic":false}',color:10827321},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Strider Costume","italic":false}',color:7087142},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Strider Costume","italic":false}',color:4668991},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/strider
tag @s add ul_strider

scoreboard players set @s costume 10
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Strider"'}