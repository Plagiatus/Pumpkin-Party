scoreboard players add #wd_music wd_timer 1

execute if score #wd_music wd_timer >= #delay wd_timer run scoreboard players add #wd_music_counter wd_timer 1
execute if score #wd_music wd_timer >= #delay wd_timer run scoreboard players set #wd_music wd_timer 0
execute if score #wd_music_counter wd_timer matches 8 run scoreboard players set #wd_music_counter wd_timer 0

# actual beat
execute if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 0..8 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1.7
execute if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 0 as @a at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 1 1
execute if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 2 as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ 1 1
execute if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 4 as @a at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 1 1
execute if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 6 as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ 1 1
execute if score #wd_music wd_timer matches 0 if score #wd_music_counter wd_timer matches 7 as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ 1 1

# debug
# title @a actionbar [{"score":{"name": "#wd_music","objective": "wd_timer"}}, " ", {"score":{"name": "#wd_music_counter","objective": "wd_timer"}}]

# check if main beat to display warden
scoreboard players operation #on_beat wd_timer = #wd_music_counter wd_timer
scoreboard players operation #on_beat wd_timer %= 2 const

execute if score #on_beat wd_timer matches 0 if score #wd_music wd_timer matches 0 if score #wd_phase points matches 2 as @e[type=marker,tag=wd_warden] at @s run function wd:play/warden/warden

# visual stuff on the beat
execute if score #on_beat wd_timer matches 0 if score #wd_music wd_timer matches 0 run function wd:decoration/main