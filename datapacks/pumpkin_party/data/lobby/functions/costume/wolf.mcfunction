tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:41,Unbreakable:1,display:{Name:'{"text":"Wolf Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Wolf Costume","italic":false}',color:14539483},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Wolf Costume","italic":false}',color:13289416},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Wolf Costume","italic":false}',color:10459798},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/wolf
tag @s add ul_wolf
scoreboard players set @s[type=minecraft:armor_stand] const 300

scoreboard players set @s costume 41
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Wolf"'}