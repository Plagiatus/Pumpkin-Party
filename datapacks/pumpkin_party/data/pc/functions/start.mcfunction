# Setup
# @calledBy: pc:main
# @author: dragonmaster95


#Teleport players to areas and mark them as occupied places (pc_occupied)
tp @a 1013 102 1000
effect give @a blindness 7 0 true
schedule function pc:prepare_areas 100t


scoreboard players set #pc_start timer 300
title @a reset
title @a times 0 100 0
title @a title {"text":"Loading...","color":"white"}
title @a subtitle {"text":"Check the chat","color":"gold"}

tellraw @a ["",{"text":"\nPumpkin Carving","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nCarve the pumpkin in front of you.\nUse the filler blocks to fix mistakes.","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Carve the most pumpkins.","color":"gold"}]
execute if score pc_difficulty settings matches 0 run tellraw @a ["",{"text":"Normal Rules: ","bold":true,"color":"#84A887"},{"text":"\n -Pumpkins are checked automatically.\n -Click the sign to reset your pumpkin canvas.","color":"gold"}]
execute if score pc_difficulty settings matches 1 run tellraw @a ["",{"text":"Hard Rules: ","bold":true,"color":"#AA8686"},{"text":"\n -Pumpkins are checked automatically.\n -Click the sign to reset your pumpkin canvas.","color":"gold"}]
execute if score pc_difficulty settings matches 2 run tellraw @a ["",{"text":"Nightmare Rules:","bold":true,"color":"#AD5454"},{"text":"\n -Click the sign to submit a pumpkin!\n -Filler blocks will not refresh!","color":"gold"}]

scoreboard players add @a pc_highscore 0
scoreboard players add #pc_highscore pc_highscore 0