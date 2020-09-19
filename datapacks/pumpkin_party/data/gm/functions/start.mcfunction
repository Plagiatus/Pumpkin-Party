# Setup
# @calledBy: gm:main
# @author: dragonmaster95

#Setup players and teleport them
team join gm_play @a
gamemode adventure @a
tp @a -497 63 507

#Reset relevant scores
scoreboard players set #gm_start timer 219
scoreboard players reset * gm_points
scoreboard players set @a gm_points 1
scoreboard players set @a gm_id 0
scoreboard players set #gm_gamestate gm_id 0

function pp:all_games/start

gamerule fallDamage false
tellraw @a ["",{"text":"Graveyard Mayhem","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nSupercharged zombies!?\nOne bite turns you into one of them!","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Don't get bitten till sunrise.","color":"gold"}]
title @a times 0 50 10

advancement grant @a only gm:minigame_play
execute store result score #gm_playerCount tmp if entity @a[team=gm_play]
scoreboard players operation #gm_playerCount const = #gm_playercount tmp
scoreboard players set #gm_gamestate tmp 2
