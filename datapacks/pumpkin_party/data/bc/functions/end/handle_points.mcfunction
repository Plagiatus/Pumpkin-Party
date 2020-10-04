scoreboard players set @a bc_timer 0
scoreboard players set #rank tmp 1
scoreboard players set #max bc_points 5
execute if score bc_difficulty settings matches 1 run scoreboard players set #max bc_points 6
execute if score bc_difficulty settings matches 2 run scoreboard players set #max bc_points 7
scoreboard players operation #max bc_points > @a[team=bc_play,scores={bc_timer=0}] bc_points

tellraw @a [{"text": "\nBrewing Contest Results","color":"#ff6600"},"\n======================"]
function bc:end/calculate_winner
execute as @a run scoreboard players operation @s points += @s bc_timer