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

scoreboard players reset * bc_click