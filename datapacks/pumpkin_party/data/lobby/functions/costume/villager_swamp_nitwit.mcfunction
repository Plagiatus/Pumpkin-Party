tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:7527,Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',Lore:['{"text":"hmmm..."}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:5192290},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:4809261},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:2302755},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/villager_swamp_nitwit
tag @s add ul_villager_swamp_nitwit
scoreboard players set @s[type=minecraft:armor_stand] const 100

scoreboard players set @s costume 7527
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Swamp Villager"'}