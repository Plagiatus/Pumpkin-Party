tag @s remove costume_failed
replaceitem entity @s armor.head jack_o_lantern{Unbreakable:1,display:{Name:'{"text":"Jack o\'Lantern Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Jack o\'Lantern Costume","italic":false}',color:14912029},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1,display:{Name:'{"text":"Jack o\'Lantern Costume","italic":false}',color:10507787},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1,display:{Name:'{"text":"Jack o\'Lantern Costume","italic":false}',color:14912029},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}


scoreboard players set @s costume 42
data merge entity @s[type=minecraft:armor_stand] {CustomName:'"Jack o\'Lantern"'}