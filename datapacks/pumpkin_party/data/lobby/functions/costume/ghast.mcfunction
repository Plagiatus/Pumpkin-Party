tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:15,Unbreakable:1,display:{Name:'{"text":"Ghast Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Ghast Costume","italic":false}',color:15790320},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Ghast Costume","italic":false}',color:14539482},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Ghast Costume","italic":false}',color:14208204},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}


scoreboard players set @s costume 15
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Ghast"'}

fill 378 83 509 378 80 509 weeping_vines