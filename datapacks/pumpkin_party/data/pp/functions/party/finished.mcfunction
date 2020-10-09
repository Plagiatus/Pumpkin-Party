function lobby:signs/reset_all

tellraw @a [{"text": "\nParty Results","color":"#ff6600","bold": true},"\n======================"]
tag @a add pp_high
scoreboard players set #rank tmp 1
function pp:party/leaderboard

execute as @a run scoreboard players operation @s candies += @s points
scoreboard players set @a points 0

scoreboard players set #games_to_play settings 0