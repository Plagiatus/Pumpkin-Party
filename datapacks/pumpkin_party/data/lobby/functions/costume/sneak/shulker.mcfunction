tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:10007,Unbreakable:1,display:{Name:'{"text":"Shulker Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
playsound minecraft:entity.shulker.open player @a ~ ~ ~
execute if score @s sound_delay matches 0 run playsound minecraft:entity.shulker.ambient player @a ~ ~ ~