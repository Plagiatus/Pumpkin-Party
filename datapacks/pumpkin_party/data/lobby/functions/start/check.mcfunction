execute if score #game_ongoing settings matches 0 if score @s lbb_game matches 1 run function bc:start
execute if score #game_ongoing settings matches 0 if score @s lbb_game matches 2 run function gm:start
execute if score #game_ongoing settings matches 0 if score @s lbb_game matches 3 run function pc:start
execute if score #game_ongoing settings matches 0 if score @s lbb_game matches 4 run function sg:start
execute if score #game_ongoing settings matches 0 if score @s lbb_game matches 5 run function sr:start
execute if score #game_ongoing settings matches 0 if score @s lbb_game matches 6 run function tot:start

execute if score #game_ongoing settings matches 0 if score @s lbb_game matches 99 run function lobby:start/party

scoreboard players set @s lbb_game 0 
execute as @a run trigger lbb_game set 0