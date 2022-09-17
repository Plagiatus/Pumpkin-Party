tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:7027,Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',Lore:['{"text":"hmmm..."}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:7427149},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:6177334},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:8025975},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/villager_plains_farmer
tag @s add ul_villager_plains_farmer
scoreboard players set @s[type=minecraft:armor_stand] const 100

scoreboard players set @s costume 7027
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Plains Farmer"'}