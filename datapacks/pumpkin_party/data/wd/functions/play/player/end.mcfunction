scoreboard players set #punish wd_timer 0
execute as @a[scores={wd_mistake=1..},limit=1] run scoreboard players set #punish wd_timer 1

# TODO: check if player didn't finish

scoreboard players set #wd_phase points 99

execute if score #punish wd_timer matches 1 run function wd:play/punish/start
execute if score #punish wd_timer matches 0 run schedule function wd:play/bridge_back/start 2t