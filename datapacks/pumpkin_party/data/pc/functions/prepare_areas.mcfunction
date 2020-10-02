#Start values
team join pc_play @a
scoreboard players set @e[tag=pc_arena_marker] tmp -1
tag @e[tag=pc_occupied] remove pc_occupied
scoreboard players set @a pc_points 0

#Assign arenas
execute as @r run function pc:assign_areas


#Select pumpkins for the round
scoreboard players set @e[type=minecraft:armor_stand,sort=random,tag=pc_marker] tmp 0 
execute as @e[type=minecraft:armor_stand,sort=random,tag=pc_marker] at @s run function pc:pick_motives

#Load in example pumpkin
execute at @e[type=minecraft:area_effect_cloud,tag=pc_occupied] run clone 932 73 1008 932 82 1016 ~-5 ~1 ~
execute at @e[type=minecraft:area_effect_cloud,tag=pc_occupied] run clone 933 73 1008 941 73 1016 ~ ~ ~

title @a[team=pc_play] title {"text":"Pumpkin Carving","color":"gold"}
scoreboard players set #pc_gamestate tmp 2