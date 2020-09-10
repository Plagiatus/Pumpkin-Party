execute store result score @s sg_speed run data get entity @s UUID[0] 1
scoreboard players operation @s sg_speed %= 20 const

execute as @s[tag=sg_skeleton] run scoreboard players add @s sg_speed 4
execute as @s[tag=sg_ghost] run scoreboard players add @s sg_speed 4
execute as @s[tag=sg_zombie] run scoreboard players add @s sg_speed 4
execute as @s[tag=sg_spider] run scoreboard players add @s sg_speed 4
execute as @s[tag=sg_witch] run scoreboard players add @s sg_speed 10
execute as @s[tag=sg_illager] run scoreboard players add @s sg_speed 14
execute as @s[tag=sg_golden_ghost] run scoreboard players add @s sg_speed 20
execute as @s[tag=sg_villager] run scoreboard players add @s sg_speed 4
execute as @s[tag=sg_cat] run scoreboard players add @s sg_speed 10