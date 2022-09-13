
execute if score #wd_phase points matches 99 run function wd:play/music
execute if score #wd_phase points matches 2..5 run function wd:play/music
execute if score #wd_phase points matches 3 run function wd:play/bridge/main
execute if score #wd_phase points matches 4 run function wd:play/player/main
execute if score #wd_phase points matches 5 run function wd:play/bridge_back/main
execute if score #wd_phase points matches 6 run function wd:play/punish/main


# TODO check for game over