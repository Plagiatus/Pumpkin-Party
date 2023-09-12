tag @s remove costume_failed
item replace entity @s armor.head with minecraft:brick{Unbreakable:1,display:{Name:'{"text":"Giant Spider Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1,display:{Name:'{"text":"Giant Spider Costume","italic":false}',color:0},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Giant Spider Costume","italic":false}',color:1447446},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Giant Spider Costume","italic":false}',color:0},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
title @s actionbar ["",{"text":"[INFO]","color":"gold"},{"text":" This is a lobby-only costume. You'll wear the normal spider costume during a minigame instead.","color":"none"}]

scoreboard players set @s costume 1204