execute if score #wd_phase points matches 99 run function wd:play/music
execute if score #wd_phase points matches 2..5 run function wd:play/music
execute if score #wd_phase points matches 3 run function wd:play/bridge/main
execute if score #wd_phase points matches 4 run function wd:play/player/main
execute if score #wd_phase points matches 5 run function wd:play/bridge_back/main
execute if score #wd_phase points matches 6 run function wd:play/punish/main

# anti itemdrop
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run data merge entity @s {PickupDelay:0}

#visual block stuff 
# function wd:decoration/main

# life display
execute unless score #wd_phase points matches 4 run title @a[scores={wd_lives=5}] actionbar [{"text": "❤❤❤❤❤", "color": "red"},{"text": " Round "},{"score":{"name": "#wd_phase", "objective": "wd_phases"}},{"text": "/"},{"score":{"name": "#total", "objective": "wd_phases"}}]
execute unless score #wd_phase points matches 4 run title @a[scores={wd_lives=4}] actionbar [{"text": "❤❤❤❤", "color": "red"},{"text": " Round "},{"score":{"name": "#wd_phase", "objective": "wd_phases"}},{"text": "/"},{"score":{"name": "#total", "objective": "wd_phases"}}]
execute unless score #wd_phase points matches 4 run title @a[scores={wd_lives=3}] actionbar [{"text": "❤❤❤", "color": "red"},{"text": " Round "},{"score":{"name": "#wd_phase", "objective": "wd_phases"}},{"text": "/"},{"score":{"name": "#total", "objective": "wd_phases"}}]
execute unless score #wd_phase points matches 4 run title @a[scores={wd_lives=2}] actionbar [{"text": "❤❤", "color": "red"},{"text": " Round "},{"score":{"name": "#wd_phase", "objective": "wd_phases"}},{"text": "/"},{"score":{"name": "#total", "objective": "wd_phases"}}]
execute unless score #wd_phase points matches 4 run title @a[scores={wd_lives=1}] actionbar [{"text": "❤", "color": "dark_red"},{"text": " Round "},{"score":{"name": "#wd_phase", "objective": "wd_phases"}},{"text": "/"},{"score":{"name": "#total", "objective": "wd_phases"}}]

# item displays
scoreboard players add @e[type=item_display,tag=wd.overhead] wd_timer 1
execute as @e[type=item_display,tag=wd.overhead,scores={wd_timer=2}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{translation:[0f,1f,0f]}}
kill @e[type=item_display,tag=wd.overhead,scores={wd_timer=5}]

# check for game over
execute if score #wd_phase points matches 2..5 unless entity @a[tag=!wd_spectator] run function wd:end_trigger

# leaving players
execute as @a[scores={left_game=1..}] unless score @s game_id = #global game_id run function wd:player/too_late_join

# players that are out
execute as @a[tag=wd_spectator] at @s run function wd:play/player/spectator