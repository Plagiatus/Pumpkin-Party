scoreboard players set #wd_phase points 4
tp @e[type=marker,tag=wd_marker] -1000 11 1030

scoreboard players set #player_counter wd_timer 0
scoreboard players set @a wd_mistake 0
scoreboard players set @a wd_click 0
scoreboard players set @a wd_timer 0

title @a subtitle [{"text": ""}]

function wd:decoration/lights/audience