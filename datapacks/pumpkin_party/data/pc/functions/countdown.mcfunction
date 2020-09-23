# Countdown at the start of the game
# @calledBy: pc:main
# @calls: pc:end_countdown
# @author: dragonmaster95

#Convert to seconds
scoreboard players operation #pc_start tmp = #pc_start timer
scoreboard players operation #pc_start tmp %= #20 const

execute if score #pc_start tmp matches 0 as @a at @s run playsound block.pumpkin.carve master @s ~ ~ ~ 1 2 


scoreboard players operation #pc_start tmp = #pc_start timer
scoreboard players operation #pc_start tmp /= #20 const


#Show remaining time till the game starts on the screen
#title @a times 0 50 0
title @a[team=pc_play] subtitle [{"text":"Start carving pumpkins in ","color":"gold"},{"color":"aqua","score":{"name":"#pc_start","objective":"tmp"}}]
#title @a[team=pc_play] title {"translate":"Pumpkin Carving","color":"gold"}

#Timer
scoreboard players remove #pc_start timer 1
execute if score #pc_start timer matches 0 run function pc:end_countdown