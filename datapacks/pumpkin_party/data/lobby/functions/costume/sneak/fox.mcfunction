tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:12129,Unbreakable:1,display:{Name:'{"text":"Fox Costume","italic":false}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s sound_delay matches 0 run playsound minecraft:entity.fox.sleep player @a ~ ~ ~