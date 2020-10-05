tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:344,Unbreakable:1,display:{Name:'{"text":"Sans Mask","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Sans Costume","italic":false}',color:4752330},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Sans Costume","italic":false}',color:0},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Sans Costume","italic":false}',color:16777215},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

scoreboard players set @s[scores={sound_delay=5..}] sound_delay 2
tag @s add ul_sans

scoreboard players set @s costume 344
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Sans"'}