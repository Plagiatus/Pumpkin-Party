# executed as spider if close to end

scoreboard players set #sr_phase points 4
scoreboard players set #sr_end sr_time 2000
scoreboard players operation #sr_end sr_time /= #speed sr_distance

scoreboard players operation #sr_goal sr_distance = #spiderX sr_distance
scoreboard players add #sr_goal sr_distance 200