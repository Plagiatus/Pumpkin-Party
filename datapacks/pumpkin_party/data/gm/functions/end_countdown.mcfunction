# Stops the countdown and starts the game
# @calledBy: gm:countdown
# @calls: gm:summon_zombie
# @author: dragonmaster95

#Remove title
title @a reset
title @a clear
scoreboard players set @a[team=gm_play] left_game 0

#Summon zombies depending on the player count
execute as @e[limit=1,type=armor_stand,name=gm_center,sort=random] at @s run function gm:summon_zombie
execute if score #gm_playerCount tmp matches ..3 as @e[limit=1,type=armor_stand,name=gm_center,sort=random] at @s run function gm:summon_zombie
effect give @e[type=zombie,tag=gm_new] levitation 1 1 true 

#Give relevant effects
effect give @a minecraft:instant_health 6 6 true
effect give @a minecraft:saturation 6 6 true
effect give @a minecraft:weakness 1200 100 true
scoreboard players operation @a game_id = #global game_id

#Change gamestate
scoreboard players set #gm_timer timer 1200
scoreboard players set #gm_gamestate tmp 3

#In case the player leaves midgame this value is gonna be used to calculate their points if the join back during the game
scoreboard players set @a timer 1200