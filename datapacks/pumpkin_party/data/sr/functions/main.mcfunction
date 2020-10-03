execute if score #sr_phase points matches 1 run function sr:generation/run
execute if score #sr_phase points matches 2 run function sr:run/cutscene
execute if score #sr_phase points matches 3 run function sr:run/running
execute if score #sr_phase points matches 4 run function sr:run/ending
execute if score #sr_phase points matches 5 run function sr:run/early_ending
execute if score #sr_phase points matches 6 run function sr:run/outrun

# handle logging out/in players
execute if score #sr_phase points matches 1..2 as @a[scores={left_game=1..}] unless score @s game_id = #global game_id run function sr:player/late_join
execute if score #sr_phase points matches 3.. as @a[scores={left_game=1..}] unless score @s game_id = #global game_id run function sr:player/too_late_join
execute if score #sr_phase points matches 3.. as @a[scores={left_game=1..}] if score @s game_id = #global game_id run function sr:run/caught
execute if score #sr_phase points matches 3.. as @a[scores={left_game=1..}] if score @s game_id = #global game_id run function pp:all_games/reset_player

# give needed effects
execute if score #sr_phase points matches 1.. run effect give @a fire_resistance 1 0 true