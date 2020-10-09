tp @a 551 107 -498 -180 60
gamemode adventure @a
effect give @a invisibility 1 0 true
effect give @a weakness 1 0 true
gamerule doMobLoot true
gamerule doTileDrops true
scoreboard players set #bc_phase points 1

schedule function bc:actual_start 10t


execute if score bc_difficulty settings matches ..0 run scoreboard players set bc_difficulty settings 0
execute if score bc_difficulty settings matches 2.. run scoreboard players set bc_difficulty settings 2

tellraw @a ["",{"text":"\nBrewing Contest","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nCollect ingredients and brew the potion mentioned in your book.\nUse the map in the top left or look up for guidance!","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Brew the most potions.","color":"gold"}]
execute if score bc_difficulty settings matches 0 run tellraw @a ["",{"text":"Normal Rules:","color":"#84A887","bold":true},{"text":"\n -Ingredients can be mixed in any order!."}]
execute if score bc_difficulty settings matches 1 run tellraw @a ["",{"text":"Hard Rules:","color":"#AA8686","bold":true},{"text":"\n -Ingredients need to be mixed IN THE SPECIFIED ORDER!."}]
execute if score bc_difficulty settings matches 2 run tellraw @a ["",{"text":"Nightmare Rules:","color":"#AD5454","bold":true},{"text":"\n -Ingredients need to be mixed IN THE SPECIFIED ORDER!."}]


scoreboard players reset * bc_click

scoreboard players add @a bc_highscore 0
scoreboard players add #bc_highscore bc_highscore 0