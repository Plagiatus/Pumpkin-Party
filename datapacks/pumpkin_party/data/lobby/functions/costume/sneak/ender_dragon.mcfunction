tag @s remove costume_failed
item replace entity @s armor.head with iron_nugget{CustomModelData:12206,Unbreakable:1,display:{Name:'{"text":"Enderdragon Costume","italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score @s sound_delay matches 0 run playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~

execute as @s[y_rotation=-22.499..22.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 0.50 -0.50 1 0.5 0
execute as @s[y_rotation=-22.499..22.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 0.25 -0.55 1 0.5 0
execute as @s[y_rotation=-22.499..22.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 0.00 -0.60 1 0.5 0
execute as @s[y_rotation=-22.499..22.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -0.25 -0.55 1 0.5 0
execute as @s[y_rotation=-22.499..22.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -0.50 -0.50 1 0.5 0

execute as @s[y_rotation=22.501..67.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -0.50 -0.50 1.50 0.5 0
execute as @s[y_rotation=22.501..67.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -0.75 -0.55 1.25 0.5 0
execute as @s[y_rotation=22.501..67.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -1.00 -0.60 1.00 0.5 0
execute as @s[y_rotation=22.501..67.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -1.25 -0.55 0.75 0.5 0
execute as @s[y_rotation=22.501..67.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -1.50 -0.50 0.50 0.5 0

execute as @s[y_rotation=67.501..112.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -1 -0.50 -0.50 0.5 0
execute as @s[y_rotation=67.501..112.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -1 -0.55 -0.25 0.5 0
execute as @s[y_rotation=67.501..112.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -1 -0.60 0.00 0.5 0
execute as @s[y_rotation=67.501..112.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -1 -0.55 0.25 0.5 0
execute as @s[y_rotation=67.501..112.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -1 -0.50 0.50 0.5 0

execute as @s[y_rotation=102.501..157.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -1.50 -0.50 -0.50 0.5 0
execute as @s[y_rotation=102.501..157.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -1.25 -0.55 -0.75 0.5 0
execute as @s[y_rotation=102.501..157.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -1.00 -0.60 -1.00 0.5 0
execute as @s[y_rotation=102.501..157.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -0.25 -0.55 -1.25 0.5 0
execute as @s[y_rotation=102.501..157.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -0.50 -0.50 -1.50 0.5 0

execute as @s[y_rotation=147.501..202.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 0.50 -0.50 -1 0.5 0
execute as @s[y_rotation=147.501..202.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 0.25 -0.55 -1 0.5 0
execute as @s[y_rotation=147.501..202.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 0.00 -0.60 -1 0.5 0
execute as @s[y_rotation=147.501..202.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -0.25 -0.55 -1 0.5 0
execute as @s[y_rotation=147.501..202.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 -0.50 -0.50 -1 0.5 0

execute as @s[y_rotation=192.501..247.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 1.50 -0.50 -0.50 0.5 0
execute as @s[y_rotation=192.501..247.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 1.25 -0.55 -0.75 0.5 0
execute as @s[y_rotation=192.501..247.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 1.00 -0.60 -1.00 0.5 0
execute as @s[y_rotation=192.501..247.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 0.75 -0.55 -1.25 0.5 0
execute as @s[y_rotation=192.501..247.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 0.50 -0.50 -1.50 0.5 0

execute as @s[y_rotation=237.501..292.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 1 -0.50 0.50 0.5 0
execute as @s[y_rotation=237.501..292.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 1 -0.55 0.25 0.5 0
execute as @s[y_rotation=237.501..292.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 1 -0.60 0.00 0.5 0
execute as @s[y_rotation=237.501..292.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 1 -0.55 -0.25 0.5 0
execute as @s[y_rotation=237.501..292.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 1 -0.50 -0.50 0.5 0

execute as @s[y_rotation=292.501..347.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 1.50 -0.50 0.50 0.5 0
execute as @s[y_rotation=292.501..347.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 1.25 -0.55 0.75 0.5 0
execute as @s[y_rotation=292.501..347.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 1.00 -0.60 1.00 0.5 0
execute as @s[y_rotation=292.501..347.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 0.75 -0.55 1.25 0.5 0
execute as @s[y_rotation=292.501..347.5] anchored eyes run particle minecraft:dragon_breath ^ ^ ^0.75 0.50 -0.50 1.50 0.5 0