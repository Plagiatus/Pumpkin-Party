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

tellraw @a ["",{"text":"\nBrewing Contest","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nCollect ingredients to brew your potion.\nUse the map in the top left or look up for guidance!","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Brew the most potions.","color":"gold"}]
execute if score bc_difficulty settings matches 0 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Normal","color":"#84A887"}]
execute if score bc_difficulty settings matches 1 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Hard","color":"#AA8686"}]
execute if score bc_difficulty settings matches 2 run tellraw @a ["",{"text":"Difficulty: ","bold":true,"color":"#FF6600"},{"text":"Nightmare","color":"#AD5454"}]
tellraw @a ""

scoreboard players reset * bc_click

scoreboard players add @a bc_highscore 0
scoreboard players add #bc_highscore bc_highscore 0