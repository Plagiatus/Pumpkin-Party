tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:26,Unbreakable:1,display:{Name:'{"text":"Arch Illager Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Arch Illager Costume","italic":false}',color:26},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Arch Illager Costume","italic":false}',color:26},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Arch Illager Costume","italic":false}',color:26},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/arch_illager
tag @s add ul_arch_illager

scoreboard players set @s costume 26
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"   Arch     Illager"',Small:1b}