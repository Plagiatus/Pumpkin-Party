# Countdown at the start of the game
# @calledBy: gm:main
# @calls: gm:end_countdown
# @author: dragonmaster95

#Convert to seconds
scoreboard players operation #ze_start tmp = #ze_start timer
scoreboard players operation #ze_start tmp /= #20 const

#Show remaining time till the game starts on the screen
title @a times 0 50 0
title @a subtitle [{"text":"The dead arise in: ","color":"gold"},{"color":"aqua","score":{"name":"#ze_start","objective":"tmp"}}]
title @a title {"text":"Graveyard Mayhem","bold":true,"color":"gold"}

#Timer
scoreboard players remove #ze_start timer 1
time set 19200
execute if score #ze_start timer matches 0 run function gm:end_countdown