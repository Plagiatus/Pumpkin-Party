scoreboard players add @s tmp 1
scoreboard players operation @p pc_points = @s tmp 
execute unless score @s tmp > #pc_templates const run function pc:load_template
execute if score @s tmp > #pc_templates const run scoreboard players add @p pc_points 1 
execute as @p run function pc:reset_hotbar
playsound entity.player.levelup master @p