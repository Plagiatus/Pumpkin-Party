tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:7727,Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',Lore:['{"text":"hmmm..."}']},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:11151914},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:2434341},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Villager Costume","italic":false}',color:13352103},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/villager_savanna_weaponsmith
tag @s add ul_villager_savanna_weaponsmith
scoreboard players set @s[type=minecraft:armor_stand] const 100

scoreboard players set @s costume 7727
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Savanna Weaponsmith"'}