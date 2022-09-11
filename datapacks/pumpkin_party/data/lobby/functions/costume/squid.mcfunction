tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:23,Unbreakable:1,display:{Name:'{"text":"Squid Costume","italic":false}',Lore:['{"text":"Blub blub blibl blub!"}','{"text":"Translation:"}','{"text":"\'Ello! nice to meet you!\'"}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Squid Costume","italic":false}',color:5533056,Lore:['{"text":"crustasion chestplate"}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Squid Costume","italic":false}',color:1189687,Lore:['{"text":"pacific pants"}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Squid Costume","italic":false}',color:1189687,Lore:['{"text":"blub boots"}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}


tag @s add ul_squid

scoreboard players set @s costume 23
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Squid"'}