# cooldown before next step
scoreboard players remove #timer timer 1
execute if score #timer timer matches 3 at @e[tag=sr_next] run function sr:generation/clear_in_front
execute if score #timer timer matches ..0 if score #parts sr_distance matches 1.. as @e[tag=sr_next] at @s run function sr:generation/load_next
execute if score #timer timer matches ..0 if score #parts sr_distance matches 0 as @e[tag=sr_next] at @s run function sr:generation/load_last

# display progress
scoreboard players operation #tmp tmp = #totalparts sr_distance
scoreboard players operation #tmp tmp -= #parts sr_distance
title @a actionbar [{"text": "Generating... ","color": "#ff6600"},{"score": {"name": "#tmp","objective": "tmp"}},"/",{"score": {"name": "#totalparts","objective": "sr_distance"}}]