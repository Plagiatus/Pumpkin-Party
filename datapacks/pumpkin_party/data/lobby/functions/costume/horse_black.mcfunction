tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:368,Unbreakable:1,display:{Name:'{"text":"Black Horse Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Black Horse Costume","italic":false}',color:2040104},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Black Horse Costume","italic":false}',color:855826},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Black Horse Costume","italic":false}',color:6513507},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/horse_black
tag @s add ul_horse_black

scoreboard players set @s costume 368
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Black Horse"'}