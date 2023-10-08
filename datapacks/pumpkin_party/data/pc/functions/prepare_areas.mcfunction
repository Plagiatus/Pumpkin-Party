#Start values
title @a times 0 300 0
team join pc_play @a
scoreboard players set @e[tag=pc_arena_marker] tmp -1
tag @e[tag=pc_occupied] remove pc_occupied
scoreboard players set @a pc_points 0

#Assign arenas
execute as @r run function pc:assign_areas
execute at @e[type=minecraft:area_effect_cloud,tag=pc_occupied] run fill ~ ~-3 ~ ~8 ~-3 ~8 smooth_red_sandstone

#Select pumpkins for the round
scoreboard players set @e[type=minecraft:marker,sort=random,tag=pc_marker] tmp 0 
execute as @e[type=minecraft:marker,sort=random,tag=pc_marker] at @s run function pc:pick_motives

#Load in example pumpkin
execute at @e[type=minecraft:area_effect_cloud,tag=pc_occupied] run clone 932 73 1008 932 82 1016 ~-5 ~1 ~
execute at @e[type=minecraft:area_effect_cloud,tag=pc_occupied] run clone 933 73 1008 941 73 1016 ~ ~ ~
execute if score pc_difficulty settings matches 0..1 at @e[type=minecraft:area_effect_cloud,tag=pc_occupied] run data modify block ~-1 ~1 ~4 front_text.messages[1] set value '{"color":"#FF6600","text":"Reset"}'
execute if score pc_difficulty settings matches 0..1 at @e[type=minecraft:area_effect_cloud,tag=pc_occupied] run data modify block ~-1 ~1 ~4 front_text.messages[2] set value '{"color":"#FF6600","text":"Pumpkin"}'
execute if score pc_difficulty settings matches 2 at @e[type=minecraft:area_effect_cloud,tag=pc_occupied] run data modify block ~-1 ~1 ~4 front_text.messages[1] set value '{"color":"#FF6600","text":"Test and load"}'
execute if score pc_difficulty settings matches 2 at @e[type=minecraft:area_effect_cloud,tag=pc_occupied] run data modify block ~-1 ~1 ~4 front_text.messages[2] set value '{"color":"#FF6600","text":"next pumpkin"}'
title @a[team=pc_play] title {"text":"Pumpkin Carving","color":"gold"}
scoreboard players set #pc_gamestate tmp 2