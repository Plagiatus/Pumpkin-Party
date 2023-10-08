tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:1111,Unbreakable:1,display:{Name:'{"text":"Golden Ghost Costume","italic":false}',Lore:['{"text":"Winner!"}']},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with minecraft:leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Golden Ghost Costume","italic":false}',color:14598713,Lore:['{"text":"Winner!"}']},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:127}
item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable:1,display:{Name:'{"text":"Golden Ghost Costume","italic":false}',color:14598713,Lore:['{"text":"Winner!"}']},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:127}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable:1,display:{Name:'{"text":"Golden Ghost Costume","italic":false}',color:14598713,Lore:['{"text":"Winner!"}']},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:127}

tag @s add ul_gold_ghost

scoreboard players set @s costume 1111
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Gold Ghost"'}