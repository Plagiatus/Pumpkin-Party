# Setup
# @calledBy: gm:main
# @author: dragonmaster95

#Setup players and teleport them
team join ze_play @a
gamemode adventure @a
tp @a -497 63 507

#Reset relevant scores
scoreboard players set #ze_start timer 219
scoreboard players reset * ze_points
scoreboard players set @a ze_points 1
scoreboard players set @a ze_id 0
scoreboard players set #ze_gamestate ze_id 0

scoreboard players add #global game_id 1
scoreboard players operation @a game_id = #global game_id

gamerule fallDamage false
tellraw @a ["",{"text":"Graveyard Mayhem","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nSupercharged zombies!?\nOne bite turns you into one of them!","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Don't get bitten till sunrise.","color":"gold"}]
title @a times 0 50 10

advancement grant @a only pumpkinparty:gm/minigame_play
execute store result score #ze_playerCount tmp if entity @a[team=ze_play]
scoreboard players set #ze_gamestate tmp 2
