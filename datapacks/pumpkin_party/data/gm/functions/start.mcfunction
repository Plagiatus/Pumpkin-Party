#Run this function to put the selected players into the game and start it
team join ze_play @s
gamemode adventure @s
tp @s -497 63 507
tag @e[tag=ze_caught] remove ze_caught

scoreboard players set #ze_start timer 219
scoreboard players reset * ze_points
scoreboard players set @a ze_points 1
scoreboard players set @a ze_id 0
scoreboard players set #ze_gamestate ze_id 0

gamerule fallDamage false
tellraw @s ["",{"text":"Graveyard Mayhem","underlined":true,"bold":true,"color":"#FF6600"},{"text":"\nSupercharged zombies!?\nOne bite turns you into one of them!","color":"gold"},{"text":"\nGoal: ","bold":true,"color":"#FF6600"},{"text":"Don't get bitten till sunrise.","color":"gold"}]
title @s times 0 50 10

advancement grant @s only pumpkinparty:gm/minigame_play
execute store result score #ze_playerCount tmp if entity @a[team=ze_play]
scoreboard players set #ze_gamestate tmp 2
