tag @s add pc_occupied
execute at @e[type=minecraft:area_effect_cloud,tag=pc_arena_marker,tag=!pc_occupied,sort=random,limit=1] run tp @s ~10 ~1 ~4 90 -5
execute at @s positioned ~-10 ~-1 ~-4 run tag @e[type=minecraft:area_effect_cloud,distance=..1] add pc_occupied
execute as @r[tag=!pc_occupied] run function pc:assign_areas