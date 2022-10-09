scoreboard players operation #tmp wd_timer = #cutscene wd_timer
scoreboard players operation #tmp wd_timer %= 40 const

execute if score #tmp wd_timer matches 0 run playsound entity.warden.heartbeat hostile @a -1000 69 1016 1 1 1