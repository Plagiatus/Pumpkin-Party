tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:6608,Unbreakable:1,display:{Name:'{"text":"Ravager Costume","italic":false}'},HideFlags:127,SkullOwner:MHF_Ravager,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Ravager Costume","italic":false}',color:23},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Ravager Costume","italic":false}',color:23},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Ravager Costume","italic":false}',color:23},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

advancement grant @s only lobby:unlocked/ravager
tag @s add ul_ravager
scoreboard players set @s[type=minecraft:armor_stand] const 300

scoreboard players set @s costume 6608
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Ravager"'}
