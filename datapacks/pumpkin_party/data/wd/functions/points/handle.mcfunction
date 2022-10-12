scoreboard players set @a wd_timer 0
scoreboard players set #rank tmp 1
scoreboard players set #max wd_points 10

execute as @a run scoreboard players operation @s wd_points += @s wd_lives
execute if score wd_difficulty settings matches 0 as @a run scoreboard players operation @s wd_points -= #normal wd_lives
execute if score wd_difficulty settings matches 1 as @a run scoreboard players operation @s wd_points -= #hard wd_lives
execute if score wd_difficulty settings matches 2 as @a run scoreboard players operation @s wd_points -= #nightmare wd_lives

scoreboard players operation #max wd_points > @a[team=wd_play] wd_points

tellraw @a [{"text": "\nWarden's Lair Results","color":"#ff6600"},"\n======================"]
function wd:points/calculate
execute as @a run scoreboard players operation @s points += @s wd_timer