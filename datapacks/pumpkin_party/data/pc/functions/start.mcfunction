# Setup
# @calledBy: pc:main
# @author: dragonmaster95


#Teleport players to areas and mark them as occupied places (pc_occupied)
tp @a 1013 102 1000
schedule function pc:prepare_areas 20t


scoreboard players set #pc_start timer 100
title @a[team=pc_play] reset
title @a[team=pc_play] times 0 120 0
title @a[team=pc_play] title {"text":"Loading...","color":"white"}

tellraw @a ["",{"text":"\nPumpkin Carving","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nCarve the pumpkin in front of you.\nUse the filler blocks to fix mistakes!","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Carve the most pumpkins.","color":"gold"}]
execute if score gm_difficulty settings matches 0 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Normal","color":"#84A887"}]
execute if score gm_difficulty settings matches 1 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Hard","color":"#AA8686"}]
execute if score gm_difficulty settings matches 2 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Nightmare","color":"#AD5454"}]
tellraw @a "\n"