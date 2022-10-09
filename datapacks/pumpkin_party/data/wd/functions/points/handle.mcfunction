scoreboard players set @a wd_timer 0
scoreboard players set #rank tmp 1
scoreboard players set #max wd_points 10

scoreboard players operation #max wd_points > @a[team=wd_play] wd_points

tellraw @a [{"text": "\nWarden's Lair Results","color":"#ff6600"},"\n======================"]
function wd:points/calculate
execute as @a run scoreboard players operation @s points += @s wd_timer