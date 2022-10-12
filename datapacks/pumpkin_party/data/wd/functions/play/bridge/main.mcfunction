# if waiting and start of measure, stop waiting
execute if score #bridge_wait wd_timer matches 1 if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 0 run function wd:play/warden/reset_display
execute if score #bridge_wait wd_timer matches 1 if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 0 run scoreboard players set #bridge_wait wd_timer 0

title @a times 0 10 5

execute if score #bridge_wait wd_timer matches 0 if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 0 run title @a subtitle [{"text": "and"}]
execute if score #bridge_wait wd_timer matches 0 if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 2 run title @a subtitle [{"text": "now"}]
execute if score #bridge_wait wd_timer matches 0 if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 4 run title @a subtitle [{"text": "your"}]
execute if score #bridge_wait wd_timer matches 0 if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 6 run title @a subtitle [{"text": "turn"}]
execute if score #bridge_wait wd_timer matches 0 if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 7 run function wd:play/player/start

execute if score #bridge_wait wd_timer matches 0 if score #on_beat wd_timer matches 0 run title @a title [{"text": ""}]