
function pp:all_games/start

tp @a -1000 65 987 180 0

scoreboard players set #wd_phase points 1
scoreboard players set #cutscene wd_timer -10
scoreboard players set #wd_music wd_timer 0
scoreboard players set #decoration wd_timer 0
scoreboard players set #wd_music_counter wd_timer 1
scoreboard players set #wd_count wd_timer 0
scoreboard players set #wd_total wd_timer 0

scoreboard players set #wd_phase wd_phases 0

scoreboard players reset * wd_click

scoreboard objectives setdisplay sidebar

execute if score wd_difficulty settings matches 0 run scoreboard players operation @a wd_lives = #normal wd_lives
execute if score wd_difficulty settings matches 1 run scoreboard players operation @a wd_lives = #hard wd_lives
execute if score wd_difficulty settings matches 2 run scoreboard players operation @a wd_lives = #nightmare wd_lives

execute if score wd_difficulty settings matches 0 run scoreboard players operation #delay wd_timer = #normal wd_timer
execute if score wd_difficulty settings matches 1 run scoreboard players operation #delay wd_timer = #hard wd_timer
execute if score wd_difficulty settings matches 2 run scoreboard players operation #delay wd_timer = #nightmare wd_timer

execute if score wd_difficulty settings matches 0 run scoreboard players operation #total wd_phases = #normal wd_phases
execute if score wd_difficulty settings matches 1 run scoreboard players operation #total wd_phases = #hard wd_phases
execute if score wd_difficulty settings matches 2 run scoreboard players operation #total wd_phases = #nightmare wd_phases

team join wd_play @a

scoreboard players add @a wd_highscore 0
scoreboard players add #wd_highscore wd_highscore 0