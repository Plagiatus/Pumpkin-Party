tag @s remove costume_failed
item replace entity @s armor.head with minecraft:iron_nugget{CustomModelData:11009,Unbreakable:1,display:{Name:'{"text":"Slime Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s sound_delay matches 0 run playsound minecraft:entity.slime.squish player @a