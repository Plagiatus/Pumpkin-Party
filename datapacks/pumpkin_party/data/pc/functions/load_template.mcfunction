execute at @e[type=minecraft:marker,tag=pc_occupied] if score @s tmp = @e[type=minecraft:marker,distance=..1,limit=1,tag=pc_occupied] tmp run clone ~ ~ ~ ~ ~9 ~8 1000 80 1000
execute at @e[type=minecraft:marker,tag=pc_occupied] if score @s tmp = @e[type=minecraft:marker,distance=..1,limit=1,tag=pc_occupied] tmp run clone ~ ~ ~ ~9 ~ ~8 1000 80 1000

clone 1000 80 1000 1000 89 1008 ~-5 ~1 ~
clone 1000 80 1000 1009 80 1008 ~-1 ~-3 ~
fill ~ ~ ~ ~8 ~ ~8 smooth_red_sandstone replace air
