tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:2,Unbreakable:1,display:{Name:'{"text":"Blaze Costume","italic":false}'},HideFlags:63,SkullOwner:MHF_Blaze,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Blaze Costume","italic":false}',color:16775239},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Blaze Costume","italic":false}',color:16560663},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Blaze Costume","italic":false}',color:9122817},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

execute if entity @s[type=minecraft:armor_stand] run data merge entity @s {CustomName:'"Blaze"'}