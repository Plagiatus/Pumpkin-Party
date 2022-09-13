execute as @a[scores={wd_click=1..}] run function wd:play/player/click

execute if score #wd_music wd_timer matches 0 if score #on_beat wd_timer matches 1 run scoreboard players add #player_counter wd_timer 1

execute if score #player_counter wd_timer > #wd_total wd_timer run function wd:play/player/end

#debug
title @a actionbar [{"score":{"name": "#player_counter","objective": "wd_timer"}}, " ", {"score":{"name": "#wd_total","objective": "wd_timer"}}]