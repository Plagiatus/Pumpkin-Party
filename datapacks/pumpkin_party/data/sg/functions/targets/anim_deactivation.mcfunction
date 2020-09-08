scoreboard players operation @s tmp = @s timer
scoreboard players operation @s tmp *= 18 const
scoreboard players operation @s tmp += 270 const

execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s tmp