tag @s remove costume_failed
item replace entity @s armor.head with jack_o_lantern{Unbreakable:1,display:{Name:'{"text":"Jack o\'Lantern Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Jack o\'Lantern Costume","italic":false}',color:14912029},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Jack o\'Lantern Costume","italic":false}',color:10507787},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Jack o\'Lantern Costume","italic":false}',color:14912029},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}


scoreboard players set @s costume 42
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Jack o\'Lantern"'}