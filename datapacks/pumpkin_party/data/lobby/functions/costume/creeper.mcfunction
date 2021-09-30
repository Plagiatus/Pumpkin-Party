tag @s remove costume_failed
item replace entity @s armor.head with creeper_head{Unbreakable:1,display:{Name:'{"text":"Creeper Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Creeper Costume","italic":false}',color:5229629},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Creeper Costume","italic":false}',color:9754510},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Creeper Costume","italic":false}',color:1854485},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}


scoreboard players set @s costume 1
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Creeper"'}