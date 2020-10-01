tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:170,Unbreakable:1,display:{Name:'{"text":"Wandering Trader Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Wandering Trader Costume","italic":false}',color:2901356},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Wandering Trader Costume","italic":false}',color:5781547},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Wandering Trader Costume","italic":false}',color:11893607},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add ul_wandering_trader
scoreboard players set @s[type=minecraft:armor_stand] const 200
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Wandering Trader"'}