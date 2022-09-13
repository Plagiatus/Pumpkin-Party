scoreboard players add #cutscene wd_timer 1

execute if score #cutscene wd_timer matches 10 run tp @a -507 80 0 90 -12
execute if score #cutscene wd_timer matches 10 run function wd:play/bridge_back/start