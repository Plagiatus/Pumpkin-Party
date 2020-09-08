# check if turn around
execute as @s[tag=sg_left] at @s if block ~1 ~ ~ dirt run tag @s add sg_right
execute as @s[tag=sg_left] at @s if block ~1 ~ ~ dirt run tag @s remove sg_left
execute as @s[tag=sg_right] at @s if block ~-1 ~ ~ dirt run tag @s add sg_left
execute as @s[tag=sg_right] at @s if block ~-1 ~ ~ dirt run tag @s remove sg_right

# store motion
execute if entity @s[tag=sg_left] store result entity @s Motion[0] double 0.01 run scoreboard players get @s sg_speed
execute if entity @s[tag=sg_right] store result entity @s Motion[0] double -0.01 run scoreboard players get @s sg_speed