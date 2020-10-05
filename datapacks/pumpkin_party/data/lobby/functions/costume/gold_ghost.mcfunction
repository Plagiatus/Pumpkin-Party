tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:121,Unbreakable:1,display:{Name:'{"text":"Golden Ghost Costume","italic":false}',Lore:['{"text":"Winner!"}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Golden Ghost Costume","italic":false}',color:14598713,Lore:['{"text":"Winner!"}']},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:63}
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1,display:{Name:'{"text":"Golden Ghost Costume","italic":false}',color:14598713,Lore:['{"text":"Winner!"}']},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:63}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1,display:{Name:'{"text":"Golden Ghost Costume","italic":false}',color:14598713,Lore:['{"text":"Winner!"}']},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:63}

tag @s add ul_gold_ghost

scoreboard players set @s costume 121
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Gold Ghost"'}