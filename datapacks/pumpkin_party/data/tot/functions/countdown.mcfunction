# Countdown at the start of the game
# @calledBy: tot:main
# @calls: tot:end_countdown
# @author: dragonmaster95

scoreboard players operation #tot_start tmp = #tot_start timer
scoreboard players operation #tot_start tmp /= #20 const
scoreboard players remove #tot_start timer 1
title @a[team=tot_play] subtitle {"translate":"Doors open in %s","color":"white","with":[{"color":"dark_purple","score":{"name":"#tot_start","objective":"tmp"}}]}

execute if score #tot_start timer matches 0 run function tot:end_countdown