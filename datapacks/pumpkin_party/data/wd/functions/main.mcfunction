# 

execute if score #wd_phase points matches 1 run function wd:cutscene/main
execute if score #wd_phase points matches 2..9 run function wd:play/main

execute at @e[type=marker,tag=wd_warden] run particle crit ~ ~ ~ 1 0 0 0 10 force