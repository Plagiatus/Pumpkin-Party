tag @s remove costume_failed
replaceitem entity @s armor.head creeper_head{Unbreakable:1,display:{Name:'{"text":"Creeper Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Creeper Costume","italic":false}',color:5229629},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Creeper Costume","italic":false}',color:9754510},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Creeper Costume","italic":false}',color:1854485},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Creeper"'}