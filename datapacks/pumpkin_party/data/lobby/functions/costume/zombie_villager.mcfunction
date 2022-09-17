tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:3303,Unbreakable:1,display:{Name:'{"text":"Zombie Villager Costume","italic":false}',Lore:['{"text":"hmmm..."}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Zombie Villager Costume","italic":false}',color:7427149},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Zombie Villager Costume","italic":false}',color:6177334},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Zombie Villager Costume","italic":false}',color:8025975},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/zombie_villager
tag @s add ul_zombie_villager

scoreboard players set @s costume 3303
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Zombie Villager"'}