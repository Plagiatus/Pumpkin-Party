tag @s remove costume_failed
replaceitem entity @s armor.head minecraft:iron_nugget{CustomModelData:4,Unbreakable:1,display:{Name:'{"text":"Squid Costume","italic":false}',Lore:['{"text":"Blub blub blibl blub!"}','{"text":"Translation:"}','{"text":"\'Ello! nice to meet you!\'"}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Squid Costume","italic":false}',color:5533056,Lore:['{"text":"crustasion chestplate"}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Squid Costume","italic":false}',color:1189687,Lore:['{"text":"pacific pants"}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Squid Costume","italic":false}',color:1189687,Lore:['{"text":"blub boots"}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}


tag @s add ul_squid

scoreboard players set @s costume 4
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Squid"'}