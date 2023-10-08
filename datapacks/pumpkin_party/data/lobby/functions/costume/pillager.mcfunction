tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:6208,Unbreakable:1,display:{Name:'{"text":"Pillager Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Pillager Costume","italic":false}',color:4923175},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Pillager Costume","italic":false}',color:1976874},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Pillager Costume","italic":false}',color:6239777},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/pillager
tag @s add ul_pillager
scoreboard players set @s[type=minecraft:armor_stand] const 100

scoreboard players set @s costume 6208
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Pillager"'}