tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:1007,Unbreakable:1,display:{Name:'{"text":"Evocation Fang Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Evocation Fang Costume","italic":false}',color:6315866},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Evocation Fang Costume","italic":false}',color:5064000},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Evocation Fang Costume","italic":false}',color:3618612},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s sound_delay matches 0 run playsound entity.evoker_fangs.attack player @a ~ ~ ~