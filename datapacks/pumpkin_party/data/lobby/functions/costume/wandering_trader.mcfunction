tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:7127,Unbreakable:1,display:{Name:'{"text":"Wandering Trader Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Wandering Trader Costume","italic":false}',color:2901356},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Wandering Trader Costume","italic":false}',color:5781547},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Wandering Trader Costume","italic":false}',color:11893607},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/wandering_trader
tag @s add ul_wandering_trader
scoreboard players set @s[type=minecraft:armor_stand] const 200

scoreboard players set @s costume 7127
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Wandering Trader"'}