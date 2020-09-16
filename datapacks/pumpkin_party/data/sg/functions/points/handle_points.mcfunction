scoreboard players set @a sg_points_tmp 0
scoreboard players set #rank tmp 1
scoreboard players set #max sg_points 60
scoreboard players operation #max sg_points > @a[team=sg_play,scores={sg_points_tmp=0}] sg_points

tellraw @a [{"text": "\nShooting Gallery Results","color":"#ff6600"},"\n======================"]
function sg:points/calculate_winner
execute as @a run scoreboard players operation @s points += @s sg_points_tmp