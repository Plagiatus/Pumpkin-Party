
execute if score #wd_phase points matches 99 run function wd:play/music
execute if score #wd_phase points matches 2..5 run function wd:play/music
execute if score #wd_phase points matches 3 run function wd:play/bridge/main
execute if score #wd_phase points matches 4 run function wd:play/player/main
execute if score #wd_phase points matches 5 run function wd:play/bridge_back/main
execute if score #wd_phase points matches 6 run function wd:play/punish/main

# anti itemdrop
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run data merge entity @s {PickupDelay:0}

# life display
title @a[scores={wd_lives=5}] actionbar [{"text": "❤❤❤❤❤", "color": "red"}]
title @a[scores={wd_lives=4}] actionbar [{"text": "❤❤❤❤", "color": "red"}]
title @a[scores={wd_lives=3}] actionbar [{"text": "❤❤❤", "color": "red"}]
title @a[scores={wd_lives=2}] actionbar [{"text": "❤❤", "color": "red"}]
title @a[scores={wd_lives=1}] actionbar [{"text": "❤", "color": "dark_red"}]

# check for game over
execute unless entity @a[team=wd_play] run function wd:end_trigger

# leaving players
execute as @a[scores={left_game=1..}] unless score @s game_id = #global game_id run function wd:player/too_late_join

# players that are out
tp @a[gamemode=spectator] -500 86 -6 facing -518 82 0