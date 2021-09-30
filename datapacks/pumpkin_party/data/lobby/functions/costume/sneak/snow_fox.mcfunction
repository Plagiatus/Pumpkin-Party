tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:1241,Unbreakable:1,display:{Name:'{"text":"Snow Fox Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{Name:'{"text":"Snow Fox Costume","italic":false}',color:15463144},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'{"text":"Snow Fox Costume","italic":false}',color:12045757},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{Name:'{"text":"Snow Fox Costume","italic":false}',color:3234655},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s sound_delay matches 0 run playsound minecraft:entity.fox.sleep player @a ~ ~ ~