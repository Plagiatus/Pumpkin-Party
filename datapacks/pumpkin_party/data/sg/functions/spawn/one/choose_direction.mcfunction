execute store result score @s tmp run data get entity @s UUID[0] 1
scoreboard players operation @s tmp %= 2 const
tag @s[scores={tmp=1}] add sg_right
tag @s[scores={tmp=0}] add sg_left