execute as @a[scores={wd_click=1..}] at @s run function wd:play/player/check_click

execute if score #wd_music wd_timer matches 0 if score #on_beat wd_timer matches 1 run scoreboard players add #player_counter wd_timer 1

execute if score #player_counter wd_timer > #wd_total wd_timer run function wd:play/player/end
#TODO also end if no player left without a mistake

scoreboard players operation #actionbar wd_timer = #wd_total wd_timer
scoreboard players operation #actionbar wd_timer -= #player_counter wd_timer

execute if score #actionbar wd_timer matches 0 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎"}]
execute if score #actionbar wd_timer matches 1 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎"}]
execute if score #actionbar wd_timer matches 2 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎"}]
execute if score #actionbar wd_timer matches 3 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎"}]
execute if score #actionbar wd_timer matches 4 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 5 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 6 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 7 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 8 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 9 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 10 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 11 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 12 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 13 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 14 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 15 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 16 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 17 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 18 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 19 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎"}]
execute if score #actionbar wd_timer matches 20 run title @a[gamemode=adventure] actionbar [{"color":"#ff6600","text": "∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎∎"}]

#debug
# title @a actionbar [{"score":{"name": "#player_counter","objective": "wd_timer"}}, " ", {"score":{"name": "#wd_total","objective": "wd_timer"}}]