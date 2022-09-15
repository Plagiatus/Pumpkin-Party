scoreboard players set #wd_phase points 6

# reset music timer
scoreboard players set #wd_music wd_timer 0
scoreboard players set #wd_music_counter wd_timer 7
execute as @a at @s run playsound minecraft:custom.record_scratch master @s ~ ~ ~ 1 1

# TODO change to proper cutscene
schedule function wd:play/punish/cutscene 2s