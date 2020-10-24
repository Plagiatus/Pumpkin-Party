# cooldown before next step
scoreboard players remove #timer timer 1
execute if score #timer timer matches 3 at @a[tag=sr_generate,limit=1] at @e[tag=sr_next,limit=1,sort=nearest] run function sr:generation/clear_in_front
execute if score #timer timer matches ..0 if score #parts sr_distance matches 1.. at @a[tag=sr_generate,limit=1] as @e[tag=sr_next,limit=1,sort=nearest] at @s run function sr:generation/load_next
execute if score #timer timer matches ..0 if score #parts sr_distance matches 0 at @a[tag=sr_generate,limit=1] as @e[tag=sr_next,limit=1,sort=nearest] at @s run function sr:generation/load_last

# display progress
scoreboard players operation #tmp tmp = #totalparts sr_distance
scoreboard players operation #tmp tmp -= #parts sr_distance
title @a actionbar [{"text": "Generating... ","color": "#ff6600"},{"score": {"name": "#tmp","objective": "tmp"}},"/",{"score": {"name": "#totalparts","objective": "sr_distance"}}]

# check if generator player disappears and make a new one (see next section)

# check if generator stops working (spigot related)
scoreboard players add #failtimer timer 1
execute if score #failtimer timer matches 60.. run function sr:generation/restart