tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:2,Unbreakable:1,display:{Name:'{"text":"Blaze Costume","italic":false}'},HideFlags:63,SkullOwner:MHF_Blaze,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Blaze Costume","italic":false}',color:16775239},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Blaze Costume","italic":false}',color:16560663},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Blaze Costume","italic":false}',color:9122817},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}


scoreboard players set @s costume 2
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Blaze"'}
