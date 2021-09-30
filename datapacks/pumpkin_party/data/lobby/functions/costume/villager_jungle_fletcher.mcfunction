tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:270,Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',Lore:['{"text":"hmmm..."}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:15384639},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:6173730},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:12486764},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/villager_jungle_fletcher
tag @s add ul_villager_jungle_fletcher
scoreboard players set @s[type=minecraft:armor_stand] const 100

scoreboard players set @s costume 270
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Jungle Fletcher"'}