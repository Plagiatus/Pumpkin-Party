tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:1008,Unbreakable:1,display:{Name:'{"text":"Enderman Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Enderman Costume","italic":false}',color:0},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Enderman Costume","italic":false}',color:1447446},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Enderman Costume","italic":false}',color:0},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s sound_delay matches 0 run playsound entity.enderman.scream player @a ~ ~ ~ 0.75 1 1