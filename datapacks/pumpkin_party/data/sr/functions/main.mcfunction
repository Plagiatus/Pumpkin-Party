execute if score #sr_phase points matches 1 run function sr:generation/run
execute if score #sr_phase points matches 2 run function sr:run/cutscene
execute if score #sr_phase points matches 3 run function sr:run/running
execute if score #sr_phase points matches 4 run function sr:run/ending
execute if score #sr_phase points matches 5 run function sr:run/early_ending

# TODO: handle logging out/in players
execute if score #sr_phase points matches 1.. run effect give @a fire_resistance 1 0 true