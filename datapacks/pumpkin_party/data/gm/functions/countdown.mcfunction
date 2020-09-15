scoreboard players operation #ze_start tmp = #ze_start timer
scoreboard players operation #ze_start tmp /= #20 const
title @a times 0 50 0
title @a subtitle [{"text":"The dead arise in: ","color":"gold"},{"color":"aqua","score":{"name":"#ze_start","objective":"tmp"}}]
title @a title {"text":"Graveyard Mayhem","bold":true,"color":"gold"}

scoreboard players remove #ze_start timer 1
time set 19200

execute if score #ze_start timer matches 0 run function gm:end_countdown