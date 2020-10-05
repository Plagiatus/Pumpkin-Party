# Stops the countdown and starts the game
# @calledBy: gm:countdown
# @calls: gm:summon_zombie
# @author: dragonmaster95

#Remove title
title @a reset
title @a clear
scoreboard players set @a[tag=gm_play] left_game 0
scoreboard objectives setdisplay sidebar gm_alive

#Summon zombies depending on the player count
execute as @e[limit=1,type=minecraft:armor_stand,tag=gm_center,sort=random] at @s run function gm:summon_zombie
execute if score #gm_playerCount tmp matches ..3 as @e[limit=1,type=minecraft:armor_stand,tag=gm_center,sort=random] at @s run function gm:summon_zombie
execute if score gm_difficulty settings matches 1.. as @e[limit=1,type=minecraft:armor_stand,tag=gm_center,sort=random] at @s run function gm:summon_zombie
execute if score gm_difficulty settings matches 2.. as @e[limit=1,type=minecraft:armor_stand,tag=gm_center,sort=random] at @s run function gm:summon_zombie
effect give @e[type=zombie,tag=gm_new] levitation 1 1 true 

#Give relevant effects
effect give @a minecraft:instant_health 6 6 true
effect give @a minecraft:saturation 6 6 true
effect give @a minecraft:weakness 99999 100 true
scoreboard players operation @a game_id = #global game_id

#Change gamestate
execute if score gm_difficulty settings matches 0 run scoreboard players set #gm_maxTime const 1200
execute if score gm_difficulty settings matches 1 run scoreboard players set #gm_maxTime const 1600
execute if score gm_difficulty settings matches 2 run scoreboard players set #gm_maxTime const 2400

scoreboard players operation #gm_timer timer = #gm_maxTime const
scoreboard players set #gm_gamestate tmp 3

#In case the player leaves midgame this value is gonna be used to calculate their points if they join back during the game
scoreboard players operation @a timer = #gm_maxTime const