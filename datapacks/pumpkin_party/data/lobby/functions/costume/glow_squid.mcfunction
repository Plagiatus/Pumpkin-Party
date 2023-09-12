tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:2124,Unbreakable:1,display:{Name:'{"text":"Glow Squid Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Glow Squid Costume","italic":false}',color:3318177,Lore:['{"text":"crustasion chestplate"}']},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Glow Squid Costume","italic":false}',color:1207662,Lore:['{"text":"pacific pants"}']},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Glow Squid Costume","italic":false}',color:10878924,Lore:['{"text":"blub boots"}']},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

tag @s add ul_glow_squid

scoreboard players set @s costume 2124
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Glow Squid"'}