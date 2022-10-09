# check if player didn't finish
execute as @a if score @s wd_timer < #wd_total wd_timer run scoreboard players add @s wd_mistake 1

scoreboard players set #punish wd_timer 0
execute as @a[scores={wd_mistake=1..},limit=1] run scoreboard players set #punish wd_timer 1

scoreboard players set #wd_phase points 99

execute if score #punish wd_timer matches 1 run function wd:play/punish/start
execute if score #punish wd_timer matches 0 if score #wd_phase wd_phases < #total wd_phases run function wd:play/bridge_back/start
execute if score #punish wd_timer matches 0 if score #wd_phase wd_phases >= #total wd_phases run function wd:end_trigger