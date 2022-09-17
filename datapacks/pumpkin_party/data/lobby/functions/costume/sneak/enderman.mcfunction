tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:10005,Unbreakable:1,display:{Name:'{"text":"Enderman Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s sound_delay matches 0 run playsound entity.enderman.scream player @a ~ ~ ~ 0.75 1 1