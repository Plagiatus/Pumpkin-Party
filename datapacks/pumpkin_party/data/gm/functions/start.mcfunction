# Setup
# @calledBy: gm:main
# @author: dragonmaster95

#Setup players and teleport them
team join gm_play @a
tag @a add gm_play
gamemode adventure @a
tp @a -497 63 507

#Reset relevant scores
scoreboard players set #gm_start timer 219
scoreboard players reset * gm_points
scoreboard players set @a gm_points 1
scoreboard players set @a gm_id 0
scoreboard players set @a gm_alive 1
scoreboard players set #gm_gamestate gm_id 0
scoreboard objectives setdisplay sidebar

function pp:all_games/start

gamerule fallDamage false
tellraw @a ["",{"text":"\nGraveyard Mayhem","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nSupercharged zombies!?\nOne bite turns you into one of them!","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Don't get bitten until sunrise.","color":"gold"}]
execute if score gm_difficulty settings matches 0 run tellraw @a ["",{"text":"Normal Rules:","color":"#84A887","bold":true},{"text":"\n -1 or 2 zombies at the start."}]
execute if score gm_difficulty settings matches 1 run tellraw @a ["",{"text":"Hard Rules:","color":"#AA8686","bold":true},{"text":"\n -2 or 3 zombies at the start."}]
execute if score gm_difficulty settings matches 2 run tellraw @a ["",{"text":"Nightmare Rules:","color":"#AD5454","bold":true},{"text":"\n -4 or 5 zombies at the start."}]
title @a times 0 50 10

advancement grant @a only gm:minigame_play
execute store result score #gm_playerCount tmp if entity @a[tag=gm_play]
scoreboard players operation #gm_playerCount const = #gm_playercount tmp
scoreboard players set #gm_gamestate tmp 2

scoreboard players add @a gm_highscore 0
scoreboard players add #gm_highscore gm_highscore 0