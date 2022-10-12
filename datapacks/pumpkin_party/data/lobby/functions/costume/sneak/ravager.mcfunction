tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:16608,Unbreakable:1,display:{Name:'{"text":"Ravager Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s sound_delay matches 0 run playsound entity.ravager.roar player @a ~ ~ ~
execute if score @s sound_delay matches 0 run particle cloud ~ ~0.35 ~ 0 0 0 0.15 10 force