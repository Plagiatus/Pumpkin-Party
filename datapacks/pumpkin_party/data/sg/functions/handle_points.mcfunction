scoreboard players set @a sg_points_tmp 0
scoreboard players set #rank tmp 1
tellraw @a [{"text": "\nShooting Gallery Results","color":"#ff6600"},"\n======================"]
function sg:calculate_winner
execute as @a run scoreboard players operation @s points += @s sg_points_tmp