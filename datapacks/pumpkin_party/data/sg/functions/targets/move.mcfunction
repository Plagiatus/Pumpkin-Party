# check if turn around
execute as @s[tag=sg_left] at @s if block ~1 ~ ~ dirt run tag @s add sg_right
execute as @s[tag=sg_left] at @s if block ~1 ~ ~ dirt run tag @s remove sg_left
execute as @s[tag=sg_right] at @s if block ~-1 ~ ~ dirt run tag @s add sg_left
execute as @s[tag=sg_right] at @s if block ~-1 ~ ~ dirt run tag @s remove sg_right

# store motion
# execute if entity @s[tag=sg_left] store result entity @s Motion[0] double 0.01 run scoreboard players get @s sg_speed
# execute if entity @s[tag=sg_right] store result entity @s Motion[0] double -0.01 run scoreboard players get @s sg_speed

scoreboard players operation @s tmp = @s sg_speed

# tp entities
# 60 is the theoretical max
execute at @s run tp @s[tag=sg_left,scores={tmp=32..}] ~.32 ~ ~
scoreboard players remove @s[tag=sg_left,scores={tmp=32..}] tmp 32
execute at @s run tp @s[tag=sg_left,scores={tmp=16..}] ~.16 ~ ~
scoreboard players remove @s[tag=sg_left,scores={tmp=16..}] tmp 16
execute at @s run tp @s[tag=sg_left,scores={tmp=8..}] ~.08 ~ ~
scoreboard players remove @s[tag=sg_left,scores={tmp=8..}] tmp 8
execute at @s run tp @s[tag=sg_left,scores={tmp=4..}] ~.04 ~ ~
scoreboard players remove @s[tag=sg_left,scores={tmp=4..}] tmp 4
execute at @s run tp @s[tag=sg_left,scores={tmp=2..}] ~.02 ~ ~
scoreboard players remove @s[tag=sg_left,scores={tmp=2..}] tmp 2
execute at @s run tp @s[tag=sg_left,scores={tmp=1..}] ~.01 ~ ~
scoreboard players remove @s[tag=sg_left,scores={tmp=1..}] tmp 1


execute at @s run tp @s[tag=sg_right,scores={tmp=32..}] ~-.32 ~ ~
scoreboard players remove @s[tag=sg_right,scores={tmp=32..}] tmp 32
execute at @s run tp @s[tag=sg_right,scores={tmp=16..}] ~-.16 ~ ~
scoreboard players remove @s[tag=sg_right,scores={tmp=16..}] tmp 16
execute at @s run tp @s[tag=sg_right,scores={tmp=8..}] ~-.08 ~ ~
scoreboard players remove @s[tag=sg_right,scores={tmp=8..}] tmp 8
execute at @s run tp @s[tag=sg_right,scores={tmp=4..}] ~-.04 ~ ~
scoreboard players remove @s[tag=sg_right,scores={tmp=4..}] tmp 4
execute at @s run tp @s[tag=sg_right,scores={tmp=2..}] ~-.02 ~ ~
scoreboard players remove @s[tag=sg_right,scores={tmp=2..}] tmp 2
execute at @s run tp @s[tag=sg_right,scores={tmp=1..}] ~-.01 ~ ~
scoreboard players remove @s[tag=sg_right,scores={tmp=1..}] tmp 1