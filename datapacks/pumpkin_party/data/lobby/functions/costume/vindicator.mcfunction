tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:6108,Unbreakable:1,display:{Name:'{"text":"Vindicator Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Vindicator Costume","italic":false}',color:4538685},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Vindicator Costume","italic":false}',color:2580065},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Vindicator Costume","italic":false}',color:2894119},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/vindicator
tag @s add ul_vindicator
scoreboard players set @s[type=minecraft:armor_stand] const 100

scoreboard players set @s costume 6108
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Vindicator"'}