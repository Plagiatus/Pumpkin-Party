tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:68,Unbreakable:1,display:{Name:'{"text":"Brown Horse Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Brown Horse Costume","italic":false}',color:6760216},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Brown Horse Costume","italic":false}',color:3281675},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Brown Horse Costume","italic":false}',color:9005917},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/horse_brown
tag @s add ul_horse_brown

scoreboard players set @s costume 68
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Brown Horse"'}
