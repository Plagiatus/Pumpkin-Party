
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

tellraw @a ["",{"text":"\nWarden's Lair","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nRepeat the prompts by rightclicking the items in your inventory at the right time to not anger the warden.","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Repeat the sounds in the correct order.\n","color":"gold"},{"text":"The warden is mostly concerned with the order, not the timing.","color":"gray"}]
execute if score wd_difficulty settings matches 0 run tellraw @a ["",{"text":"Normal Rules:","color":"#84A887","bold":true},{"text":"\n - "},{"score":{"name": "#normal", "objective": "wd_lives"}}, " Lives",{"text":"\n - "},{"score":{"name": "#normal", "objective": "wd_phases"}}, " Rounds\n - Speed: Slow"]
execute if score wd_difficulty settings matches 1 run tellraw @a ["",{"text":"Hard Rules:","color":"#AA8686","bold":true},{"text":"\n - "},{"score":{"name": "#hard", "objective": "wd_lives"}}, " Lives",{"text":"\n - "},{"score":{"name": "#hard", "objective": "wd_phases"}}, " Rounds\n - Speed: Normal"]
execute if score wd_difficulty settings matches 2 run tellraw @a ["",{"text":"Nightmare Rules:","color":"#AD5454","bold":true},{"text":"\n - "},{"score":{"name": "#nightmare", "objective": "wd_lives"}}, " Lives",{"text":"\n - "},{"score":{"name": "#nightmare", "objective": "wd_phases"}}, " Rounds\n - Speed: Fast"]