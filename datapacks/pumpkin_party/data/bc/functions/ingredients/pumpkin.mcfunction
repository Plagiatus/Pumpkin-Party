scoreboard players set @s bc_timer 300

execute if block ~ ~ ~ pumpkin run tag @s add has_pumpkin
execute if entity @s[tag=!has_pumpkin] run setblock ~ ~ ~ pumpkin
execute if entity @s[tag=!has_pumpkin,tag=bc_south] run setblock ~ ~ ~-1 attached_pumpkin_stem[facing=south]
execute if entity @s[tag=!has_pumpkin,tag=bc_west] run setblock ~1 ~ ~ attached_pumpkin_stem[facing=west]
execute if entity @s[tag=!has_pumpkin,tag=bc_east] run setblock ~-1 ~ ~ attached_pumpkin_stem[facing=east]

tag @s remove has_pumpkin