execute if blocks 949 89 980 957 89 988 ~ ~-3 ~ all run advancement grant @p[gamemode=adventure,team=pc_play] only pc:sssss

scoreboard players add @s tmp 1
scoreboard players operation @p[gamemode=adventure,team=pc_play] pc_points = @s tmp 
execute unless score @s tmp > #pc_templates const run function pc:load_template
execute if score @s tmp > #pc_templates const run scoreboard players add @p[gamemode=adventure,team=pc_play] pc_points 1 
execute if score pc_difficulty settings matches 0..1 as @p[gamemode=adventure,team=pc_play] run function pc:reset_hotbar
playsound entity.player.levelup master @p