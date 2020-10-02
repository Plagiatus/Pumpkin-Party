tag @s remove costume_failed
replaceitem entity @s armor.head iron_nugget{CustomModelData:343,Unbreakable:1,display:{Name:'{"text":"Zombie Villager Costume","italic":false}',Lore:['{"text":"hmmm..."}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Zombie Villager Costume","italic":false}',color:7427149},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Zombie Villager Costume","italic":false}',color:6177334},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Zombie Villager Costume","italic":false}',color:8025975},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/zombie_villager
tag @s add ul_zombie_villager
execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Zombie Villager"'}